

// foreach ou for (les 2 ne marchent pas)

slides.forEach(function () {
    creerBulletPoint();
  });

for (let i = 0; i < slides.length; i++) { 
    creerBulletPoint ();
    };
    


 // ca marche !

 let dots = document.querySelector(".dots");

 function creerBulletPoint () {
	let html = `<div class="dot"></div>`;
	dots.innerHTML = html;
	};
}
creerBulletPoint();

let bulletSlide = document.querySelector(".dot");
bulletSlide.addEventListener("click", function () {
	bulletSlide.classList.add("dot_selected");
});
