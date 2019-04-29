<?php require view('static/header')?>

<section class="jumbotron text-center">
    <div class="container">
        <h1 class="jumbotron-heading"><?=setting('welcome_title')?></h1>
        <p class="lead text-muted">
            <?=setting('welcome_text')?>
        </p>
        <p>
            <a href="#" class="btn btn-primary my-2">Blog'a Gözat</a>
            <a href="#" class="btn btn-secondary my-2">İletişime Geç</a>
        </p>
    </div>
</section>
<div class="container">
    <div class="row pb-2">
        <div class="col-md-12">
            <h4 class="pb-3">Neler yapıyorum?</h4>
        </div>
        <div class="col-md col-12 pb-3">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><?= setting('first-head') ?></h5>
                    <h6 class="card-subtitle mb-2 text-muted"><?= setting('first-place') ?></h6>
                    <p class="card-text"><?= setting('first_desc') ?></p>
                    <a href="#" class="btn btn-sm btn-danger"><?= setting('first_button') ?><i class="fa fa-angle-right"></i></a>
                </div>
            </div>
        </div>
        <div class="col-md col-12 pb-3">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><?= setting('second-head') ?></h5>
                    <h6 class="card-subtitle mb-2 text-muted"><?= setting('second-place') ?></h6>
                    <p class="card-text"><?= setting('second_desc') ?></p>
                    <a href="#" class="btn btn-sm btn-primary "><?= setting('second_button') ?><i class="fa fa-angle-right"></i></a>
                </div>
            </div>
        </div>
        <div class="col-md col-12 pb-3">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><?= setting('third-head') ?></h5>
                    <h6 class="card-subtitle mb-2 text-muted"><?= setting('third-place') ?></h6>
                    <p class="card-text"><?= setting('third_desc') ?></p>
                    <a href="#" class="btn btn-sm btn-dark"><?= setting('third_button') ?> <i class="fa fa-angle-right"></i></a>
                </div>
            </div>
        </div>
    </div>
</div>

<?php require view('static/footer')?>
