<h2><?php echo $title; ?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open_multipart('posts/create'); ?>
    <div class="form-group">
        <label for="">Title</label>
        <input type="text" class="form-control" name="title" placeholder="Add Title">
    </div>
    <div class="form-group">
        <label for="">Body</label>
        <textarea id="body" name="body" class="form-control" placeholder="Add Body"></textarea>
    </div>
    <div class="form-group">
        <label for="">Categories</label>
        <select class="form-control" name="category_id">
            <option></option>
            <?php foreach($categories as $category) : ?>
                <option value="<?php echo $category['id']; ?>"><?php echo $category['name']; ?></option>
            <?php endforeach; ?>
        </select>
    </div>
    <div class="form-group">
        <label for="">Upload Image</label>
        <input type="file" name="userfile" size="20">
    </div>
    <button type="submit" class="btn btn-default">Add Post</button>
</form>