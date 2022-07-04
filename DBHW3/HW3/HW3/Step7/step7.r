##install.packages("leaflet")

library("leaflet")

m<-leaflet()

m <- addTiles(m)

## hmm - VB! 
m <- addCircleMarkers(m, lng=-118.2867361, lat=34.0327028,label="Home", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.286353, lat=34.0237,label="Cinematics", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.283211, lat=34.0223,label="Generations", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.285133, lat=34.025264,label="Village", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.2846, lat=34.020614,label="Y Triumphant", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.2874665, lat=34.0202222,label="Hahn Plaza", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.289017, lat=34.020431,label="Epstein Plaza", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.284064, lat=34.020358,label="Doheny", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.286719, lat=34.018761,label="Hoose", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.287728, lat=34.019244,label="Helen Topping", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.288575, lat=34.019558,label="S and E", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.284119, lat=34.021069,label="Int and PA", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.283058, lat=34.021592,label="Leavy", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="red")


m
