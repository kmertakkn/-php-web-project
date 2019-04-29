<div class="container">
    <div class="row">
        <div class="col-md-12">
            <footer class="pt-4 my-md-5 pt-md-5 border-top">
                <div class="row">
                    <div class="col-12 col-md">
                        <img class="mb-2" src="http://kadirmertakkan.com/wp-content/uploads/2018/12/icon-kma.png" alt=""
                             width="100" height="100">
                        <small class="d-block mb-3 text-muted"><?='<br>'?>©Copyright 2019</small>
                    </div>
                    <div class="col-12 col-md">
                        <h5>Features</h5>
                        <ul class="list-unstyled text-small">
                            <li><a class="text-muted" href="#">Cool stuff</a></li>
                            <li><a class="text-muted" href="#">Random feature</a></li>
                            <li><a class="text-muted" href="#">Team feature</a></li>
                            <li><a class="text-muted" href="#">Stuff for developers</a></li>
                            <li><a class="text-muted" href="#">Another one</a></li>
                            <li><a class="text-muted" href="#">Last time</a></li>
                        </ul>
                    </div>
                    <div class="col-12 col-md pr-5">
                        <h5>Hakkımda</h5>
                        <p class="small">
                            <?=setting('about')?>
                        </p>
                    </div>
                    <div class="col-12 col-md">
                        <h5>Sosyal Medya</h5>
                        <ul class="list-unstyled text-small">
                            <?php foreach (menu(5) as $key => $menu): ?>
                                <li>
                                    <a class="text-muted" href="<?=$menu['url']?>">
                                        <?=htmlspecialchars_decode($menu['title'])?>
                                    </a>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                </div>
            </footer>
        </div>
    </div>
</div>

</body>
</html>