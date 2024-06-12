<!-- <div class="slider-frame">
    <div class="slide-images">
        <div class="img-container">
            <img src="./assets/images/banner/image_banner.jpg">
        </div>
        <div class="img-container">
            <img src="./assets/images/banner/image-banner-1.webp">
        </div>
        <div class="img-container">
            <img src="./assets/images/banner/image-banner-1.webp">
        </div>
    </div>
</div> -->
<div class="slider-banner">
    <div class="mySlides banner__box d-flex p-relative banner__medium w-100">
        <div class="image__banner image__item p-absolute" style="--w: 12">
            <img class="w-100 h-100 d-block object-fit-cover" src="./assets/images/banner/banner-nen2.png" alt="banner1" />
        </div>
        <div class="banner__overlay p-absolute"></div>

        <div class="container d-flex content__middle-left">
            <div class="banner__content text-left hidden__content">
                <h2 class="banner__heading h1">SAFIA STORE</h2>
                <span class="banner__description">
                    Món quà tinh ý cho người chân quý
                </span>
                <a href="index.php?page=products" class="btn banner__btn">Xem ngay</a>
            </div>
        </div>
    </div>
    <div class="mySlides banner__box d-flex p-relative banner__medium w-100">
        <div class="image__banner image__item p-absolute" style="--w: 12">
            <img class="w-100 h-100 d-block object-fit-cover" src="./assets/images/banner/banner-nen1.jpg" alt="banner1" />
        </div>
        <div class="banner__overlay p-absolute"></div>

        <div class="container d-flex content__middle-center">
            <div class="banner__content text-center hidden__content">
                <h2 class="banner__heading h1">SAFIA STORE</h2>
                <span class="banner__description">
                    Món quà tinh ý cho người chân quý
                </span>
                <a href="index.php?page=products" class="btn banner__btn">Xem ngay</a>
            </div>
        </div>
    </div>
    <div class="mySlides banner__box d-flex p-relative banner__medium w-100">
        <div class="image__banner image__item p-absolute" style="--w: 12">
            <img class="w-100 h-100 d-block object-fit-cover" src="./assets/images/banner/banner-nen.png" alt="banner1" />
        </div>
        <div class="banner__overlay p-absolute"></div>

        <div class="container d-flex content__middle-right">
            <div class="banner__content text-right hidden__content">
                <h2 class="banner__heading h1">SAFIA STORE</h2>
                <span class="banner__description">
                    Món quà tinh ý cho người chân quý
                </span>
                <a href="index.php?page=products" class="btn banner__btn">Xem ngay</a>
            </div>
        </div>
    </div>
</div>

<script>
    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++) {
            x[i].classList.remove("active");
        }
        myIndex++;
        if (myIndex > x.length) {
            myIndex = 1;
        }
        x[myIndex - 1].classList.add("active");
        setTimeout(carousel, 3000); // Change image every 2 seconds
    }
</script>