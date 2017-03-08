{% if page.print %}
  <div style="width:240px;height:24px;background:red;"></div>
  <script src="{{config.root}}js/jquery.printarea.js"></script>
  <script>
    $(function(){
      var print = $('<a class="print-resume"><span class="fa fa-print"></span>打印预览</a>').on('click', function(){
        console.log('print resume');
        $('#content').printArea({
            popTitle: '李燚 - 低级前端搬砖工程师 - 简历'
        });
      });
      var dPDF = $('<a class="download-resume" href="https://coding.net/api/share/download/0e1b4b49-c20c-48a9-9f54-31d927034941" target="_self" style="color:#8cb588">下载</a>');
      $("#sidebar").after(dPDF).after(print);
    })
  </script>
{% endif %}