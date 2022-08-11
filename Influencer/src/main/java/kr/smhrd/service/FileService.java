package kr.smhrd.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;


import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Service
public class FileService {

	public Map upload(MultipartHttpServletRequest multipart, String path) {

		// 1. multipart안에서 데이터를 하나씩 꺼내와서 정제
		Enumeration<String> data = multipart.getParameterNames();
		
		Map map = new HashMap();
		// HashMap의 부모인 Map은 인터페이스라 객체생성이 불가능해서 HashMap형으로 객체 생성 후  Map형으로 업캐스팅해서 써야한다.  
		
		// 2. data안에는 parametername값들이 하나씩 들어가 있을 거다
		// hasMoreElements() : 읽어올 요소가 남아있는지 확인. 있으면 true, 없으면 false. Iterator의 hasNext()와 같음
		while(data.hasMoreElements()) {
			String key = data.nextElement();   // name,  nextElement() : 다음 요소를 읽어 옴. Iterator의 next()와 같음
			String value = multipart.getParameter(key);   // name의  value값
			
			map.put(key, value);
		}
		
		// input type = "text" / "password"를   위한 코드
		///////////////////////////////////////////////////////////
		
		// 3. file 들도 하나씩 가져와서 정제하는 작업
		Iterator<String> it = multipart.getFileNames();
		List<String> list = new ArrayList<String>(); // 파일 이름을 저장할 변수
		
		while(it.hasNext()) {
			
			// 파일 명칭 하나씩 가져오기  ex) file1, file2, file3
			String fileName = it.next();
			// 실제 파일을 multipart로 부터 꺼내오기   -->  name값에 대응하는 value 꺼내오기
			MultipartFile realFile = multipart.getFile(fileName);
			// list에 저장할 수 있게 String 형식으로 변환
			String f = realFile.getOriginalFilename();
			list.add(f); // --> result.jsp에 보내주기 위해서 저장하는 중
			
			// 파일 업로드
			File file = new File(path+"\\"+f);
			
			// 파일이 존재하는지 여부
			if(realFile.getSize() != 0) {
				try {
					realFile.transferTo(file);
					
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		
		map.put("fileList", list);
		
		// 파일에 대한 정보 + input태그안에 들어있는 정보가 한번에 담겨져있는 자료
		return map;
		
		
		
	}
	
	
}
