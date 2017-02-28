private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	drawBranches(320,380,100,3*Math.PI/2);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1= angle-branchAngle;
	double angle2= angle+branchAngle;
	branchLength*=fractionLength;
	int endX1 = (int)(x-branchLength*Math.cos(angle1));
	int endY1 = (int)(y+branchLength*Math.sin(angle1));
	int endX2 = (int)(x+branchLength*Math.cos(angle1));
	int endY2 = (int)(y+branchLength*Math.sin(angle1));
	line (x, y, endX1, endY1);
	line (x, y, endX2, endY2);
	if (branchLength>smallestBranch)
	{
		drawBranches(endX1,endY1,branchLength,1.5*Math.PI);
		drawBranches(endX2,endY2,branchLength,1.5*Math.PI);
	}

} 
