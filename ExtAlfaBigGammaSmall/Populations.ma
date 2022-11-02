[top]
components : populations

[populations]
type : cell
dim : (64,64)
border : notwrapped
delay : transport
neighbors : 		  	  	  populations(-1,0) 
neighbors : populations(0,-1) populations(0,0)	populations(0,1) 
neighbors : 		  	  	  populations(1,0)
initialvalue : 0
initialCellsValue : Populations.val
localtransition : acciones
defaultdelaytime : 100

[acciones]
%Caso central
rule : {if(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,-1)+(0,1)+(1,0)+(-1,0)+(-1)*(4*(0,0))))<0,
			0,
			if(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,-1)+(0,1)+(1,0)+(-1,0)+(-1)*(4*(0,0))))>200,
				200,
				trunc((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,-1)+(0,1)+(1,0)+(-1,0)+(-1)*(4*(0,0))))
			   )
		  )
		}
		 100
		{cellpos(0)>0 and cellpos(1)>0 and cellpos(0)<63 and cellpos(1)<63}
%
%-------------------------------------------------------------------------------------------
%
%Caso borde superior central
rule : {if(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,-1)+(0,1)+(1,0)+ (-1)*(4*(0,0))))<0,
			0,
			if(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,-1)+(0,1)+(1,0)+(-1)*(4*(0,0))))>200,
				200,
				trunc(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,-1)+(0,1)+(1,0)+(-1)*(4*(0,0)))))
			   )
		  )
	 }
	  100
	 {cellpos(0)=0 and cellpos(1)>0 and cellpos(1)<63}
%
%-------------------------------------------------------------------------------------------
%
%Caso borde inferior central
rule : {if(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,-1)+(0,1)+(-1,0)+(-1)*(4*(0,0))))<0,
			0,
			if(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,-1)+(0,1)+(-1,0)+(-1)*(4*(0,0))))>200,
				200,
				trunc(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,-1)+(0,1)+(-1,0)+(-1)*(4*(0,0)))))
			   )
		   )
	    }
	     100
	    {cellpos(0)=63 and cellpos(1)>0 and cellpos(1)<63}
%
%-------------------------------------------------------------------------------------------
%
%Caso borde izquierdo central
rule : {if(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,1)+(1,0)+(-1,0)+(-1)*(4*(0,0))))<0,
			0,
			if(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,1)+(1,0)+(-1,0)+(-1)*(4*(0,0))))>200,
			    200,
			    trunc(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,1)+(1,0)+(-1,0)+(-1)*(4*(0,0)))))
			   )
		  )
		}
		 100
        {cellpos(0)>0 and cellpos(0)<63 and cellpos(1)=0}
%
%-------------------------------------------------------------------------------------------
%
%Caso borde derecho central
rule : {if(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,-1)+(1,0)+(-1,0)+(-1)*(4*(0,0))))<0,
			0,
			if(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,-1)+(1,0)+(-1,0)+(-1)*(4*(0,0))))>200,
				200,
				trunc(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,-1)+(1,0)+(-1,0)+(-1)*(4*(0,0)))))
			   )
		   )
		}
		 100
		{cellpos(0)>0 and cellpos(0)<63 and cellpos(1)=63}
%
%-------------------------------------------------------------------------------------------
%
%Caso esquina superior izquierda
rule : {if(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,1)+(1,0)+(-1)*(4*(0,0))))<0,
			0,
			if(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,1)+(1,0)+(-1)*(4*(0,0))))>200,
				200,
				trunc(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,1)+(1,0)+(-1)*(4*(0,0)))))
		      )
		   )
	   }	
	    100
	   {cellpos(0)=0 and cellpos(1)=0}
%
%-------------------------------------------------------------------------------------------
%
%Caso esquina superior derecha
rule : {if(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,-1)+(1,0)+(-1)*(4*(0,0))))<0,
			0,
			if(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,-1)+(1,0)+(-1)*(4*(0,0))))>200,
				200,
				trunc(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,-1)+(1,0)+(-1)*(4*(0,0)))))
			   )
		   )
		}
		 100
		{cellpos(0)=0 and cellpos(1)=63}
%
%-------------------------------------------------------------------------------------------
%
%Caso esquina inferior izquierda
rule : {if(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,1)+(-1,0)+(-1)*(4*(0,0))))<0,
			0,
			if(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,1)+(-1,0)+(-1)*(4*(0,0))))>200,
				200,
				trunc(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,1)+(-1,0)+(-1)*(4*(0,0)))))
			   )
		   )
		}
		 100
		{cellpos(0)=63 and cellpos(1)=0}
%
%-------------------------------------------------------------------------------------------
%
%Caso esquina inferior derecha
rule : {if(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,-1)+(-1,0)+(-1)*(4*(0,0))))<0,
			0,
			if(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,-1)+(-1,0)+(-1)*(4*(0,0))))>200,
				200,
				trunc(((0,0)+(0.05)*(0,0)+(-0.00525)*power((0,0),2)+(0.18)*((0,-1)+(-1,0)+(-1)*(4*(0,0)))))
			   )
		   )
		}
		 100		
		{cellpos(0)=63 and cellpos(1)=63}
%
%-------------------------------------------------------------------------------------------
%
%Regla por defecto
rule : 0 100 {t}
%
%-------------------------------------------------------------------------------------------
%-------------------------------------------------------------------------------------------
%