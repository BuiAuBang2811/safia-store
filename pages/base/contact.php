<?php
if (isset($_POST['customer_add'])) {
    $customer_name = $_POST['customer_name'];
    $customer_phone = $_POST['customer_phone'];
    $customer_email = $_POST['customer_email'];
    $customer_address = $_POST['customer_address'];

    $sql_insert_customer = "INSERT INTO customer(customer_name, customer_email, customer_phone, customer_address)
        VALUE('" . $customer_name . "','" . $customer_email . "','" . $customer_phone . "','" . $customer_address . "')";
    $query_insert_customer = mysqli_query($mysqli, $sql_insert_customer);
}
?>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.2230068715367!2d105.78879117432122!3d20.983695989326634!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135accf2e9eb3c7%3A0xa27256bd5b3abab5!2zMTAgxJDGsOG7nW5nIFRy4bqnbiBQaMO6LCBQLiBN4buZIExhbywgSMOgIMSQw7RuZywgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1716179421620!5m2!1svi!2s" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>
<!-- start contact -->
<section class="contact pd-top">
    <div class="container">
        <div class="contact__container">
            <h1 class="contact__heading h2">Liên hệ</h1>
            <h3 class="contact__title h4">Thời gian làm việc</h3>
            <div class="contact__infomation">
                <p>Thứ 2 – Thứ 6: 09:00 am – 09:30pm</p>
                <p>Thứ 7: 10:00am – 11:00pm</p>
                <p>Chủ nhật: 08:00am – 10:00pm</p>
            </div>
            <div class="contact__form pd-section">
                <form action="" method="POST">
                    <div class="row contact__input--double">
                        <div class="col" style="--w-lg: 6">
                            <div class="contact__input">
                                <input class="w-100 btn" type="text" name="customer_name" placeholder="Tên khách hàng" />
                            </div>
                        </div>
                        <div class="col" style="--w-lg: 6;">
                            <div class="contact__input">
                                <input class="w-100 btn" type="email" name="customer_email" placeholder="Email" />
                            </div>
                        </div>
                        <div class="col" style="--w-lg: 12;">
                            <div class="contact__input">
                                <input class="w-100 btn" type="text" name="customer_phone" placeholder="Số điện thoại" />
                            </div>
                        </div>
                        <div class="col" style="--w-lg: 12;">
                            <div class="contact__textarea w-100 h-100">
                                <textarea class="w-100 h-100 btn" name="customer_address" id="" cols="30" rows="10" placeholder="Địa chỉ"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <button class="btn contact__btn" name="customer_add" type="submit">
                                Gửi
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<!-- end contact -->