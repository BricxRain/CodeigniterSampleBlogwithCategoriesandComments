<h2><?php echo $title; ?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open('posts/update'); ?>
    <input type="hidden" name="id" value="<?php echo $post['id']; ?>">
    <div class="form-group">
        <label for="">Title</label>
        <input value="<?php echo $post['title']; ?>" type="text" class="form-control" name="title" placeholder="Add Title">
    </div>
    <div class="form-group">
        <label for="">Body</label>
        <textarea id="body" name="body" class="form-control" placeholder="Add Body"><?php echo $post['body']; ?></textarea>
    </div>
    <div class="form-group">
        <label for="">Categories</label>
        <select class="form-control" name="category_id">
            <?php foreach($categories as $category) : ?>
                <option value="<?php echo $category['id']; ?>"><?php echo $category['name']; ?></option>
            <?php endforeach; ?>
        </select>
    </div>
    <button type="submit" class="btn btn-primary">Update Post</button>
</form>