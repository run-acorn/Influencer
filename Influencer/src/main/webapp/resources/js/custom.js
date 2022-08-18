
function file_upload(id) {
         $('.input-file').click();
         console.log("파일업로드 버튼을 눌렀어!");
}



// 사진 첨부 모달 창 

function modal(id) {
    var zIndex =500;
    var modal = document.getElementById(id);

    // 모달 div 레이어 
    var bg = document.createElement('div');
    bg.setStyle({
        position: 'fixed',
        zIndex: zIndex,
        left: '0px',
        top: '0px',
        width: '100%',
        height: '100%',
        overflow: 'auto',
        
        // 레이어 색깔
        backgroundColor: 'rgba(0,0,0,0.4)'
    });
    document.body.append(bg);

    // 닫기 처리 버튼
    modal.querySelector('.modal_close_btn').addEventListener('click', function() {
        bg.remove();
        modal.style.display = 'none';
    });

    modal.setStyle({
        position: 'fixed',
        display: 'block',
        boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

        // 아래 레이어 보다 사진 앞으로 보이게 
        zIndex: zIndex +1,

        // div center 정렬
        top: '50%',
        left: '50%',
        transform: 'translate(-50%, -50%)',
        msTransform: 'translate(-50%, -50%)',
        webkitTransform: 'translate(-50%, -50%)',
        width: '50%'
    });
}

// Element 에 style 한번에 오브젝트로 설정하는 함수 추가
Element.prototype.setStyle = function(styles) {
    for (var k in styles) this.style[k] = styles[k];
    return this;
};

document.getElementById('popup_open_btn').addEventListener('click', function() {
    // 모달창 띄우기
    modal('my_modal');
});


// 파일 업로드 부분 js 

function DropFile(dropAreaId, fileListId) {
  let dropArea = document.getElementById(dropAreaId);
  let fileList = document.getElementById(fileListId);

  function preventDefaults(e) {
    e.preventDefault();
    e.stopPropagation();
  }

  function highlight(e) {
    preventDefaults(e);
    dropArea.classList.add("highlight");
  }

  function unhighlight(e) {
    preventDefaults(e);
    dropArea.classList.remove("highlight");
  }

  function handleDrop(e) {
    unhighlight(e);
    let dt = e.dataTransfer;
    let files = dt.files;

    handleFiles(files);

    const fileList = document.getElementById(fileListId);
    if (fileList) {
      fileList.scrollTo({ top: fileList.scrollHeight });
    }
  }

  function handleFiles(files) {
    files = [...files];
    // files.forEach(uploadFile);
    files.forEach(previewFile);
  }

  function previewFile(file) {
    console.log(file);
    renderFile(file);
  }

  function renderFile(file) {
    let reader = new FileReader();
    reader.readAsDataURL(file);
    reader.onloadend = function () {
      let img = dropArea.getElementsByClassName("preview")[0];
      img.src = reader.result;
      img.style.display = "block";
    };
  }
// 드랍시 선 변경 되는 부분 
  dropArea.addEventListener("dragenter", highlight, false);
  dropArea.addEventListener("dragover", highlight, false);
  dropArea.addEventListener("dragleave", unhighlight, false);
  dropArea.addEventListener("drop", handleDrop, false);

  return {
    handleFiles
    
  };
}

const dropFile = new DropFile("drop-file", "files");




<!-- 로그인 모달 창 -->

function modal2(id) {
    var zIndex = 500;
    var modal2 = document.getElementById(id);

    // 모달 div 레이어 
    var bg = document.createElement('div');
    bg.setStyle({
        position: 'fixed',
        zIndex: zIndex,
        left: '0px',
        top: '0px',
        width: '100%',
        height: '100%',
        overflow: 'auto',
        
        // 레이어 색깔
        backgroundColor: 'rgba(0,0,0,0.4)'
    });
    document.body.append(bg);

    // 모달 닫기 버튼
    modal2.querySelector('.modal_close_btn').addEventListener('click', function() {
        bg.remove();
        modal2.style.display = 'none';
    });

    modal2.setStyle({
        position: 'fixed',
        display: 'block',
        boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

        // 아래 레이어 보다 한칸 위에 보이기
        zIndex: zIndex + 1,

        // div center 정렬
        top: '50%',
        left: '50%',
        transform: 'translate(-50%, -50%)',
        msTransform: 'translate(-50%, -50%)',
        webkitTransform: 'translate(-50%, -50%)',
        height: '42%'
    });
}



document.getElementById('logbtn').addEventListener('click', function() {
    // 모달창 띄우기
    modal2('Login_Modal');
});



// 회원가입 모달창  


function modal3(id) {
    var zIndex = 500;
    var modal3 = document.getElementById(id);

    // 모달 div 레이어 
    var bg = document.createElement('div');
    bg.setStyle({
        position: 'fixed',
        zIndex: zIndex,
        left: '0px',
        top: '0px',
        width: '100%',
        height: '100%',
        overflow: 'auto',
        
        // 레이어 색깔
        backgroundColor: 'rgba(0,0,0,0.4)'
    });
    document.body.append(bg);

    // 모달 닫기 버튼
    modal3.querySelector('.modal_close_btn').addEventListener('click', function() {
        bg.remove();
        modal3.style.display = 'none';
    });

    modal3.setStyle({
        position: 'fixed',
        display: 'block',
        boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

        // 아래 레이어 보다 한칸 위에 보이기
        zIndex: zIndex + 1,

        // div center 정렬
        top: '50%',
        left: '50%',
        transform: 'translate(-50%, -50%)',
        msTransform: 'translate(-50%, -50%)',
        webkitTransform: 'translate(-50%, -50%)',
        height: '70%'
    });
}



document.getElementById('joinbtn').addEventListener('click', function() {
    // 모달창 띄우기
    modal3('joinModal');
});



