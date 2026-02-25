setup = function() {
    size(400, 400);    
};

draw = function() {
    background(255,255,255,150);
    fill(0, 250, 68);

    if(mousePressed && mouseY < 200){
    fill(255, 0, 0);
    }

    rect(0, 0, 400, 200);  

    fill(0, 0, 0);
    textSize(30);
    text("Press me!", 145, 115);
    text("Click Here", 145, 300);

    if(mouseY > 200 && mousePressed){
        stroke(0);
        fill(random(255), random(255), random(255));
        rect(0, 0, 400, 400);
    }
    
    

    if(mousePressed){
        labelCanvas();

    }
};

var labelCanvas = function(){
    fill(150)
    textSize(20);
    text("y = 200", 10, 220);

    strokeWeight(5);
    stroke(150);
    for(var i = 0; i < 450; i += 40){
        line(i, 200, i+20, 200);
    }
}



