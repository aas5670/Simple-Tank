void keyPressed(){
if(key == 'a' || key == 'A'){ 
  keys[0] = true; 
} 

if(key == 'd' || key == 'D'){ 
  keys[1] = true; 
}
  
if(key == ENTER){
  keys[2] =true ;}}
  

////PLAYING KEYS WHEN RELEASED////
void keyReleased(){
if(key == 'a' || key == 'A'){ 
  keys[0] = false; } 

if(key == 'd' || key == 'D'){ 
  keys[1] = false; }

if(key == ENTER){
  keys[2] = false;}}