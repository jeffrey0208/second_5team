<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
    <title>Ȩ������</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <!--<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.8.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.3.min.js"></script>-->
    <script src="script/script.js"></script>

<style>
body { font: 17px 'Nanum Gothic', sans-serif; }
ul { width: 700px; }
li { list-style: none; }
</style>
</head>
<body>
<ul class="bxslider">
      <li><a href="#"><img src="http://img1.daumcdn.net/thumb/R1920x0/?fname=http%3A%2F%2Fcfile4.uf.tistory.com%2Fimage%2F99C7143A5BEE75FB3092D4" alt="" title="�̹���1"></a></li>
      <li><a href="#"><img src="http://img1.daumcdn.net/thumb/R1920x0/?fname=http%3A%2F%2Fcfile10.uf.tistory.com%2Fimage%2F99C7223A5BEE75FB303A8E" alt="" title="�̹���2"></a></li>
      <li><a href="#"><img src="http://img1.daumcdn.net/thumb/R1920x0/?fname=http%3A%2F%2Fcfile7.uf.tistory.com%2Fimage%2F9982093A5BEE75FC259992" alt="" title="�̹���3"></a></li>
  </ul>
  
<script type="text/javascript">
$(document).ready(function () {
    $('.bxslider').bxSlider({
        auto: true, // �ڵ����� �ִϸ��̼� ����
        speed: 500,  // �ִϸ��̼� �ӵ�
        pause: 5000,  // �ִϸ��̼� ���� �ð� (1000�� 1��)
        mode: 'horizontal', // �����̵� ��� ('fade', 'horizontal', 'vertical' �� ����)
        autoControls: true, // ���� �� ������ư ������
        pager: true, // ������ ǥ�� ������
        captions: true, // �̹��� ���� �ؽ�Ʈ�� ���� �� ����
    });
});
</script>
</body>
</html>