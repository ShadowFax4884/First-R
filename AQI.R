function(PXCoordinate , PYCoordainate){
  PXCoordinate = raster_c_n[,1]
  PYCoordainate = raster_c_n[,2]
  for(i in 1:length(raster_c_n))
    raster_c_n$AQI = 0.6038167 -  0.2261052 * max(0, 0.7256622 -  raster_c_n[i,1])
  -  1.388227 * max(0, raster_c_n[i,1] - 0.7256622) -  0.1073042 * max(0, 0.5787466 -      raster_c_n[i,2])
  - 11.54024 * max(0,      raster_c_n[i,2] - 0.5787466)
  +  72.52541 * max(0,      raster_c_n[i,1] - 0.7425863) * max(0,      raster_c_n[i,2] - 0.5787466)
}
