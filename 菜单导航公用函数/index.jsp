<%@page pageEncoding="UTF-8" %>
<html>
<head>
    <script src="resources/jquery-3.4.1.min.js"  type="text/javascript"></script>
</head>
<body>
<h2>Hello World!这是一个maven demo</h2>
<div>
   <ul id="menu">
       <li>
           <a href="#">一级菜单1</a>
           <ul>
               <li>
                   <a href="#">二级级菜单1</a>
                   <ul>
                       <li>
                           <a href="#">三级菜单1</a>
                           <ul>
                               <li><a href="#">四级菜单1</a></li>
                               <li><a href="#">四级菜单2</a></li>
                               <li><a href="#">四级菜单3</a></li>
                               <li>
                                   <a href="#">四级菜单4</a>
                                   <ul>
                                        <li><a href="#">五级菜单1</a></li>
                                        <li><a href="#">五级菜单2</a></li>
                                        <li><a href="#">五级菜单3</a></li>
                                   </ul>
                               </li>
                           </ul>
                       </li>
                       <li><a href="#">三级菜单2</a></li>
                       <li><a href="#">三级菜单3</a></li>
                   </ul>
               </li>
               <li><a href="#">二级级菜单2</a></li>
               <li>
                   <a href="#">二级级菜单3</a>
                   <ul>
                       <li>
                           <a href="#">三级菜单1</a>
                           <ul>
                               <li><a href="#">四级菜单1</a></li>
                               <li><a href="#">四级菜单2</a></li>
                               <li><a href="#">四级菜单3</a></li>
                               <li><a href="#">四级菜单4</a></li>
                           </ul>
                       </li>
                       <li><a href="#">三级菜单2</a></li>
                       <li><a href="#">三级菜单3</a></li>
                   </ul>
               </li>
           </ul>
       </li>
       <li><a href="#">一级菜单1</a></li>
       <li><a href="#">一级菜单1</a></li>
       <li>
           <a href="#">一级菜单1</a>
           <ul>
               <li>
                   <a href="#">二级级菜单1</a>
                   <ul>
                       <li>
                           <a href="#">三级菜单1</a>
                           <ul>
                               <li><a href="#">四级菜单1</a></li>
                               <li><a href="#">四级菜单2</a></li>
                               <li><a href="#">四级菜单3</a></li>
                               <li>
                                   <a href="#">四级菜单4</a>
                                   <ul>
                                       <li><a href="#">五级菜单1</a></li>
                                       <li><a href="#">五级菜单2</a></li>
                                       <li><a href="#">五级菜单3</a></li>
                                   </ul>
                               </li>
                           </ul>
                       </li>
                       <li><a href="#">三级菜单2</a></li>
                       <li><a href="#">三级菜单3</a></li>
                   </ul>
               </li>
               <li><a href="#">二级级菜单2</a></li>
               <li>
                   <a href="#">二级级菜单3</a>
                   <ul>
                       <li>
                           <a href="#">三级菜单1</a>
                           <ul>
                               <li><a href="#">四级菜单1</a></li>
                               <li><a href="#">四级菜单2</a></li>
                               <li><a href="#">四级菜单3</a></li>
                               <li><a href="#">四级菜单4</a></li>
                           </ul>
                       </li>
                       <li><a href="#">三级菜单2</a></li>
                       <li><a href="#">三级菜单3</a></li>
                   </ul>
               </li>
           </ul>
       </li>
   </ul>
 </div>
</body>
<script type="text/javascript">
    $(function(){
        // 默认关闭所有的下级菜单
        $('#menu ul').css('display','none');
        // 添加菜单单击事件
        $('#menu a').click(function(){
            // 隐藏同级菜单下的所有子级菜单
            $(this).parent('li').siblings('li').find('ul').css('display','none');
            // 给当前菜单设置显示或者隐藏
            $(this).siblings('ul').toggle();
            // 若当前菜单下存在下级菜单 则进行隐藏
            $(this).siblings('ul').find('ul').css('display','none');
        });
    });
</script>
</html>
