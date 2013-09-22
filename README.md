STypes: create and handle in one line!
======

package of basic Action Script classes based on A3 Signal package

Syntax
----------
convert this
<pre><code>
  var dataGrid:DataGrid = new DataGrid();
  
  dataGrid.editable = true;
  dataGrid.x = 10;
  dataGrid.y = 10;
  dataGrid.width = 100;
  dataGrid.height = 200;
  
  dataGrid.addEventListener(Event.CHANGE , dataGridOnChange);
  dataGrid.addEventListener(ComponentEvent.RESIZE , dataGridOnResize);
</code></pre>

to this!

<pre><code>
var sDataGrid:SDataGrid = SDataGrid(null,
  {editable:true, x:10, y:10, width:100, height:200},
  {change:dataGridOnChange , resize:dataGridOnResize}
);
</code></pre>


