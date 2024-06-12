<?php
$sql_scent_edit = "SELECT * FROM scent WHERE scent_id = '$_GET[scent_id]' LIMIT 1";
$query_scent_edit = mysqli_query($mysqli, $sql_scent_edit);
?>
<div class="row" style="margin-bottom: 10px;">
    <div class="col d-flex" style="justify-content: space-between; align-items: flex-end;">
        <h3>
            Sửa mùi hương
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
                    <form method="POST" action="modules/scent/xuly.php?scent_id=<?php echo $_GET['scent_id'] ?>" enctype="multipart/form-data">
                        <?php
                        while ($item = mysqli_fetch_array($query_scent_edit)) {
                        ?>
                            <div class="input-item form-group">
                                <label for="title" class="d-block">Tên mùi hương</label>
                                <input type="text" name="scent_name" class="form-control" value="<?php echo $item['scent_name'] ?>" placeholder="collection name">
                            </div>
                            <button type="submit" name="scent_edit" class="btn btn-primary btn-icon-text">
                                <i class="ti-file btn-icon-prepend"></i>
                                Sửa
                            </button>
                        <?php
                        }
                        ?>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>