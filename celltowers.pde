Table table;

void setup() {
  
  table = loadTable("celltowersbig.csv", "header");

  println(table.getRowCount() + " total rows in table"); 

  for (TableRow row : table.rows()) {
    
    
    int id = row.getInt("id");
    String lon = row.getString("lon");
    String lat = row.getString("lat");
    
    println("CID:"+id+"\nLon:"+lon+"\nLat:"+lat+"\n"); 
  }
  
}

