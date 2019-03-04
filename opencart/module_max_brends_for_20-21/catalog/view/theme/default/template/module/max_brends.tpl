<div class="max_brends">
    <div class="row">
        <div class="col-xs-12 max_brends-content">
            <?php if($heading_title) { ?><h3><?php echo $heading_title; ?></h3><?php } ?>
            <?php if($html) { ?><p><?php echo $html; ?></p><?php } ?>
        </div>
		<?php if($manufacturers) { ?>
		<ul class="max_brends_list" id="max_brends-id_<?php echo $module; ?>">
		<?php if($carousel==1) { ?>
        <?php foreach ($manufacturers as $manufacturer) { ?>
		    <li class="max_brends_list-item item">
			    <div class="max_brends_list-item-inner">
			        <a class="max_brends_list-item_link" href="<?php echo $manufacturer['href']; ?>" title="<?php echo $manufacturer['name']; ?>">
					    <?php if($manufacturer['thumb']) { ?>
				        <div class="max_brends_list-item-inner_img">
						    <img src="<?php echo $manufacturer['thumb']; ?>" class="max_brends_list-item-inner_image" alt="<?php echo $manufacturer['name']; ?>">
						</div>
						<?php } ?>
						<div class="max_brends_list-item-inner_text"><?php echo $manufacturer['name']; ?></div>
				    </a>
				</div>
			</li>
        <?php } ?>
		<?php } else { ?>
		<?php foreach ($manufacturers as $manufacturer) { ?>
		    <li class="max_brends_list-item col-lg-2 col-md-3 col-sm-4 col-xs-6 no-carousel">
			    <div class="max_brends_list-item-inner">
			        <a class="max_brends_list-item_link" href="<?php echo $manufacturer['href']; ?>" title="<?php echo $manufacturer['name']; ?>">
					    <?php if($manufacturer['thumb']) { ?>
				        <div class="max_brends_list-item-inner_img">
						    <img src="<?php echo $manufacturer['thumb']; ?>" class="max_brends_list-item-inner_image" alt="<?php echo $manufacturer['name']; ?>">
						</div>
						<?php } ?>
						<div class="max_brends_list-item-inner_text"><?php echo $manufacturer['name']; ?></div>
				    </a>
				</div>
			</li>
        <?php } ?>
		
		<?php } ?>
        </ul>
<?php if($carousel==1) { ?>		
<script type="text/javascript"><!--
$('#max_brends-id_<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 5000,
	navigation: true,
	navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
	pagination: true
});
--></script>
<?php } ?>
	   <?php } ?>
    </div>
</div>
<style>
.max_brends {
    display: inline-block;
    width: 100%;
    clear: both;
    color: #343131;
}
.max_brends .owl-controls .owl-page.active span {
    background: rgba(0, 0, 0, 0.9);
}
.max_brends .owl-controls .owl-page span {
    display: block;
    width: 19px;
    height: 5px;
    background: rgb(253, 12, 12);
    border-radius: 0;
    box-shadow: inset 0 0 3px rgba(0,0,0,0.3);
}
.max_brends  .owl-carousel .owl-buttons div i {
    font-size: 25px;
    margin: -20px 0 0;
}
.max_brends_list {
    padding: 0 0 0 0;
    margin: 0 0 0 0;
    list-style: none;
    background: #fff;
    border: none;
    box-shadow: none;
    clear: both;
}
.max_brends_list .owl-wrapper-outer {
    border: none !important;
    border-radius: none !important;
    box-shadow: none !important;
}
.max_brends_list-item.item {
}
.max_brends_list-item-inner {
    border: 1px solid #ccc;
    margin: 0 5px 15px 5px;
    padding: 10px;
    box-shadow: 0px 0px 6px 0px #d8d8d8;	
}
.max_brends_list .no-carousel .max_brends_list-item-inner{
    display: inline-block;
    width: 100%;
    min-height: 200px;
    border: 1px solid #ccc;
    margin: 0 0 15px 0 ;
    padding: 10px;
    box-shadow: 0px 0px 6px 0px #d8d8d8;
}
.max_brends_list-item-inner:hover {
box-shadow: 0px 0px 6px 2px #d8d8d8;
}
.max_brends_list-item-inner_text {
    text-align: center;
    text-transform: uppercase;
    font-weight: 600;
    padding: 5px 0px;
}
.max_brends_list-item_link {
    color: #4e4c4c;
}
.max_brends_list-item-inner_img {
    padding: 5px;
    margin: 0 auto;
    display: block;
    overflow: hidden;
}
.max_brends_list-item-inner_image {
    display: block;
    margin: 0 auto;
    max-width: 100%;
	-moz-transition: all 0.3s ease-out;
    -o-transition: all 0.3s ease-out;
   -webkit-transition: all 0.3s ease-out;
}
.max_brends_list-item-inner:hover .max_brends_list-item-inner_image{
 -webkit-transform: scale(1.05);
 -moz-transform: scale(1.05);
 -o-transform: scale(1.05);
}
.max_brends_list .owl-pagination {
    text-align: center;
    top: -5px;
    position: relative;
}
</style>
