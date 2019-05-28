(function () {
  //1.查找触发事件的元素
  //查找id为tab下的li下的data-click属性为tab的所有按钮元素
  var tabs = document.querySelectorAll("ul#tab>li>[data-click=tab]");
  var lis = document.querySelectorAll("ul#tab>li");
  //2.绑定事件处理函数
  //定义全局变量，用于递增zIindex的值
  var zIindex = 10;
  //遍历tabs中每个按钮
  for (var tab of tabs) {
    //遍历每一个按钮，就要为其绑定单击事件
    tab.onmouseenter = function () {
      var tab = this;//<a>
      var li = tab.parentNode;
      //获得当前 a对应div的 id (已经提前保存在当前 [data-div])
      var id = tab.getAttribute("data-div");  //getAttribute
      //用 id 查找当前a对应的下面内容区的 div
      var div = document.getElementById(id);
      if (tab = id) {
        li.className = "active";
        //4修改元素
        //修改当前a对应div的z-index属性
        div.style.zIndex = zIindex;//z-index 中的 - 与js中的减号冲突
        //修改之后，必须将本次的z-index+1,保证下次的值高于本次
        zIindex++;
      } else { li.className = "" }
    }
  }
})()  