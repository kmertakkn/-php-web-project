<?php require admin_view('static/header') ?>

    <div class="box-container">
        <div class="box" id="div-0">
            <h3>Admin Paneline Hoş Geldiniz!</h3>
            <div class="box-content">
                <p>
                    Admin panelinden gerekli ayarlamaları güncelleyebilir ve yeni ayarlar ekleyebilirsiniz.
                </p>
            </div>
        </div>
    </div>

    <div class="box-container container-25">
        <div class="box" id="div-1">
            <h3>
                Hızlı Taslak
            </h3>
            <div class="box-content">
                <form action="" class="form">
                    <ul>
                        <li>
                            <input type="text" id="input" placeholder="Başlık">
                        </li>
                        <li>
                            <textarea name="" id="" cols="30" rows="5" placeholder="Aklınızda ne var?"></textarea>
                        </li>
                        <li>
                            <button type="submit">Taslak olarak kaydet</button>
                        </li>
                    </ul>
                </form>
            </div>
        </div>
    </div>

    <div class="box-container container-50">
        <div class="box" id="div-2">
            <h3>
                Aktivite
            </h3>
            <div class="box-content">
                <div class="inside">
                    <div id="activity-widget"><div class="no-activity"><p>Henüz etkinlik yok!</p></div></div></div>
            </div>
        </div>
    </div>

    <div class="box-container container-25">
        <div class="box" id="div-3">
            <h3>
                Etkinlikler ve Haberler
            </h3>
            <div class="box-content">
                <form action="" class="form">
                    <ul>
                        <li>
                            <div class="inside">
                                <div id="activity-widget"><div class="no-activity"><p>Yakınında başlayacak bir etkinliğe katıl.</p></div></div></div>
                        </li>
                        <li>
                            <button type="submit">Etkinliğe Katıl</button>
                        </li>
                    </ul>
                </form>
            </div>
        </div>
    </div>

<?php require admin_view('static/footer') ?>