import processing.pdf.*;

Table table;

void setup() {
  
  //size(600,380);
  size(600,380, PDF, "craters.pdf");
  
  table = loadTable("craters.csv", "header");

  println(table.getRowCount() + " total rows in table"); 

   translate(300,200);
  for (TableRow row : table.rows()) {
    
    
    //int id = row.getInt("");
    String name = row.getString("name");
    int lon = row.getInt("lon");
    int lat = row.getInt("lat");
    int size = row.getInt("size");
    //println("lon:"+lon+"\nLat:"+lat+"\n"); 
    
    //println(lat+lon);
 
    ellipse(lat*1.5,lon*1.5,size/8,size/8);
  }
  
    exit();
}

