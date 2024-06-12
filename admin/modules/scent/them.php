<div class="row" style="margin-bottom: 10px;">
    <div class="col d-flex" style="justify-content: space-between; align-items: flex-end;">
        <h3>
            Thêm mùi hương
        </h3>
        <a href="index.php?action=scent&query=scent_list" class="btn btn-outline-dark btn-fw">
            <i class="mdi mdi-reply"></i>
            Quay lại
        </a>
    </div>
</div>
<div class="row">
    <div class="col-lg-8 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="card-content">
                    <form method="POST" action="modules/scent/xuly.php" enctype="multipart/form-data">
                        <div class="input-item form-group">
                            <label for="title" class="d-block">Tên mùi hương</label>
                            <input type="text" name="scent_name" class="d-block form-control" value="" placeholder="Nhập vào tên mùi hương">
                        </div>
                        <button type="submit" name="scent_add" class="btn btn-primary btn-icon-text mg-t-16">
                            <i class="ti-file btn-icon-prepend"></i>
                            Thêm
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>