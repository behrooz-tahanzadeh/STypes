#STypes: create and handle in one line!
> [Behrooz Tahanzadeh](http://b-tz.com)<br/>
> sep 2013

package of basic Action Script classes based on A3 Signal package.


##Syntax

convert this
```ActionScript
  var dataGrid:DataGrid = new DataGrid();
  
  dataGrid.editable = true;
  dataGrid.x = 10;
  dataGrid.y = 10;
  dataGrid.width = 100;
  dataGrid.height = 200;
  
  dataGrid.addEventListener(Event.CHANGE , dataGridOnChange);
  dataGrid.addEventListener(ComponentEvent.RESIZE , dataGridOnResize);
```
to this!
```ActionScript
var sDataGrid:SDataGrid = SDataGrid(null,
  {editable:true, x:10, y:10, width:100, height:200},
  {change:dataGridOnChange , resize:dataGridOnResize}
);
```


