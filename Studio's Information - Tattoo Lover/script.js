document.getElementById('next').onclick = function(){
    const widthItem = document.querySelector('.item').offsetWidth;
    document.getElementById('rateList').scrollLeft += widthItem;
}
document.getElementById('prev').onclick = function(){
    const widthItem = document.querySelector('.item').offsetWidth;
    document.getElementById('rateList').scrollLeft -= widthItem;
}
function drop() {
    var divs = document.getElementById("subnav-content-id");
    divs.classList.toggle("show");
  }

  function popup_img() {
    var blur = document.getElementById("blur");
    blur.classList.toggle("active");
    var popup = document.getElementById("popup-img");
    popup.classList.toggle("active");
  }

  function create_tr(table_id) {
    let table_body = document.getElementById(table_id);

    if (table_body.childElementCount < 4) {
      first_tr = table_body.firstElementChild;
      /*duplicate hàng đầu tiên*/
      tr_clone = first_tr.cloneNode(true);
      /*Nối thêm 1 hàng*/
      table_body.append(tr_clone);
    }
  }

  function remove_tr(This) {
    if (This.closest("tbody").childElementCount == 1) {
      alert("Bạn không thể xóa dòng này");
    } else {
      This.closest("tr").remove();
    }
  }
