{% if page.print %}
  <script src="{{config.root}}js/jquery.printarea.js"></script>
  <script>
    $(function(){
      var print = $('<a class="resume"><span class="fa fa-print"></span>打印预览</a>').on('click', function(){
        console.log('print resume');
        $('#content').printArea({
            popTitle: '李燚 - 低级前端搬砖工程师 - 简历'
        });
      });
      var dPDF = $('<a class="resume" href="{{ config.downloadurl }}" target="_self"><span class="fa-cloud-download fa"></span>下载</a>');
      $("#footer").after($("<div class='pdresume back-to-top back-to-top-on'></div>").append(print).append(dPDF));
    })
  </script>
{% endif %}