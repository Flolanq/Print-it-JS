const slides = [
	{
		"image":"slide1.jpg",
		"tagLine":"Impressions tous formats <span>en boutique et en ligne</span>"
	},
	{
		"image":"slide2.jpg",
		"tagLine":"Tirages haute définition grand format <span>pour vos bureaux et events</span>"

	},
	{
		"image":"slide3.jpg",
		"tagLine":"Grand choix de couleurs <span>de CMJN aux pantones</span>"

	},
	{
		"image":"slide4.png",
		"tagLine":"Autocollants <span>avec découpe laser sur mesure</span>"

	}
]
let indexSlideActive = 0;
let arrowLeft = document.querySelector("#banner .arrow_left");
let arrowRight = document.querySelector("#banner .arrow_right");

arrowLeft.addEventListener("click", function () {
	if (indexSlideActive == 0) { 
		indexSlideActive = slides.length-1;
	}
	else {
		indexSlideActive--;
	}
	carrouselUpdate (slides[indexSlideActive].image, slides[indexSlideActive].tagLine);
});

arrowRight.addEventListener("click", function () {
	if (indexSlideActive == slides.length-1) { 
		indexSlideActive = 0;
	}
	else {
		indexSlideActive++;
	}
	carrouselUpdate (slides[indexSlideActive].image, slides[indexSlideActive].tagLine);

});

function carrouselUpdate (image, tagLine) {
	let imageSlide = document.querySelector('#banner .banner-img');
	let tagLineSlide = document.querySelector('#banner p');
	let dotList = document.querySelectorAll('.dot');
	dotList.forEach(function (dot) {
		dot.classList.remove('dot_selected');
	});
	dotList[indexSlideActive].classList.add('dot_selected');
	tagLineSlide.innerHTML = tagLine;
	imageSlide.src = "./assets/images/slideshow/"+image;
}


// pas bien compris lignes 57, 61, 65 :

document.addEventListener("DOMContentLoaded", function () {
	const Points = document.querySelector('.dots');
	
	// Création des points en fonction du nombre d'éléments dans le carrousel (Points = parent, Point = enfant)
	slides.forEach(function (slide, index) {
	const Point = document.createElement('div');
	Point.classList.add('dot');
	
	if (index === 0) {
		Point.classList.add('dot_selected');
	}
	
	Points.appendChild(Point);
	});
});
	