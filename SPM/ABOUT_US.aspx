<%@ Page Title="" Language="C#" MasterPageFile="~/INDEX1.master" AutoEventWireup="true" CodeFile="ABOUT_US.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   

        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/demo-switch.css" />
        <script>document.documentElement.className = 'js';</script>
   
	<body class="demo-switch loading">
		
		<main>
			
			
			<div class="content">
            <header class="content__header">
                <br />
                <br />
                <br />
                <h2 class="content__title">self made</h2>
            </header>
          
            <nav class="menu">
                <a class="menu__item menu__item--current" href="#slide-1"><span>Prof.Revathi</span>HOD</a>
                <a class="menu__item" href="#slide-3">Prasanna<span>Costume Design</span></a>
                <a class="menu__item" href="#slide-4">Pradeep Sharma <span>Programmer</span></a>
            </nav>
        </div>
		</main>
		<script src="js/imagesloaded.pkgd.min.js"></script>
		<script src="js/anime.min.js"></script>
		<script src="js/main.js"></script>
		<script>
            {
                imagesLoaded(document.body, { background: true }, () => document.body.classList.remove('loading'));

                const menuItems = Array.from(document.querySelectorAll('.menu > .menu__item'));

                const piecesObj = new Pieces(document.querySelector('.slideshow > .pieces'), {
                    pieces: { rows: 14, columns: 12 },
                    delay: [0, 40],
                    hasTilt: true,
                    tilt: {
                        maxRotationX: -1,
                        maxRotationY: -1,
                        maxTranslationX: -5,
                        maxTranslationY: -2
                    }
                });

                let isAnimating = false;
                let current = 0;

                const openImage = (ev, item, pos) => {
                    ev.preventDefault();
                    if (isAnimating || current === pos) {
                        return false;
                    }
                    isAnimating = true;
                    menuItems[current].classList.remove('menu__item--current');
                    current = pos;
                    menuItems[current].classList.add('menu__item--current');
                    const imgsrc = item.dataset.image;

                    piecesObj.animate({
                        duration: 200,
                        easing: 'easeOutQuad',
                        delay: (t, i, l) => {
                            return parseInt(t.dataset.row) * parseInt(t.dataset.delay);
                        },
                        translateX: (t, i) => {
                            return anime.random(-50, 50) + 'px';
                        },
                        translateY: (t, i) => {
                            return anime.random(-800, -200) + 'px';
                        },
                        rotateZ: (t, i) => {
                            return anime.random(-45, 45) + 'deg';
                        },
                        opacity: 0,
                        complete: () => {
                            piecesObj.setImage(imgsrc);

                            piecesObj.animate({
                                duration: 500,
                                easing: [0.3, 1, 0.3, 1],
                                delay: (t, i, l) => {
                                    return parseInt(t.dataset.row) * parseInt(t.dataset.delay);
                                },
                                translateX: 0,
                                translateY: () => {
                                    return [anime.random(200, 800) + 'px', '0px'];
                                },
                                rotateZ: 0,
                                opacity: {
                                    value: 1,
                                    duration: 500,
                                    easing: 'linear'
                                },
                                complete: () => {
                                    isAnimating = false;
                                }
                            });
                        }
                    });
                };

                menuItems.forEach((item, pos) => item.addEventListener('click', (ev) => openImage(ev, item, pos)));
            }
		</script>
	
</asp:Content>

