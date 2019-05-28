(function () {
	window.onload = function () {
		var tabs = document.querySelectorAll(".container>div>div>ul>li>[data-click=tab]");
		var divs = document.querySelectorAll("#wind_content>ul");
		for (var i = 0; i < tabs.length; i++) {
			tabs[i].index = i;
			tabs[i].onclick = function () {
				for (var i = 0; i < tabs.length; i++) {
					tabs[i].classList.remove("active");
					divs[i].style.display = "none";
				}
				this.classList.add("active");
				divs[this.index].style.display = "block";
			}
		}
	}
})()