<img class="masthead-avatar mb-4" src="img/avataaars.svg" alt="">
<h6>INGENIERÍA DE SISTEMAS E INGENIERÍA INFORMÁTICA</h6>
<div class="row d-flex justify-content-center">
    <div class="col-1"></div>
    <div class="col-5"><input placeholder="INGRESAR CI" id="ci"  class="form-control" type="text"></div>
    <div class="col-5"><button class="btn btn-success" id="botton"><i class="fas fa-check"></i>VERIFICAR</button></div>
    <div class="col-1"></div>
</div>
<div class="divider-custom divider-light">
    <div class="divider-custom-line"></div>
    <div class="divider-custom-icon">
        <i class="fas fa-star"></i>
    </div>
    <div class="divider-custom-line"></div>
</div>
<p class="masthead-subheading font-weight-light mb-0">Graphic Artist - Web Designer - Illustrator</p>
<script !src="">
    window.onload=function (e) {
        $('#botton').click(function (e) {
            $.ajax({
                url:'Welcome/verificar',
                type:'POST',
                data:'ci='+$('#ci').val(),
                success:function (e) {
                    if (e==''){
                        window.location="<?=base_url()?>Main/index/"+$('#ci').val();
                    }else{
                        toastr.warning(e);
                    }
                }
            });
            e.preventDefault();
        });

    }
</script>
