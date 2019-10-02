<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Multiplicacion de Matrices</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <script>

      function generarMatrizA(){
            var celda;
            n=0;
            x = document.getElementById("col");
            col= x.value;
            y = document.getElementById("fil");
            fil= y.value;
            var tabla = document.getElementById("matrizA")
            for(k=0;k<fil;k++){
                var nuevaFila =  tabla.insertRow(-1);
                for(j=0;j<col+2;j++){
                    if(j< col){
                    nombre ="cel"+n+"-"+j;
                    var    celda = nuevaFila.insertCell(-1);
                    xx1="<input type =\"text\" id=\"";
                    xx1= xx1+ nombre;
                    xx1 = xx1+"\"size = 3>\n";
                    celda.innerHTML = xx1;
                    n++;
                    }
                    else{
                       var  celda = nuevaFila.insertCell(-1);
                        
                    }
                        
                }
            }          
            
        }
       
        
      function generarMatrizB(){
            var celda;
            n=0;
            x = document.getElementById("col2");
            col= x.value;
            y = document.getElementById("fil2");
            fil= y.value;
            var tabla = document.getElementById("matrizB")
            for(k=0;k<fil;k++){
                var nuevaFila =  tabla.insertRow(-1);
                for(j=0;j<col+2;j++){
                    if(j< col){
                    nombre ="celd"+n+"-"+j;
                    var    celda = nuevaFila.insertCell(-1);
                    xx1="<input type =\"text\" id=\"";
                    xx1= xx1+ nombre;
                    xx1 = xx1+"\"size = 3>\n";
                    celda.innerHTML = xx1;
                    n++;
                    }
                    else{
                       var  celda = nuevaFila.insertCell(-1);
                        
                    }
                        
                }
            }          
            
        }
      function multiplicarMatrices(){
            x = document.getElementById("col");
            P= x.value;
            y = document.getElementById("fil");
            N= y.value;
            z = document.getElementById("col2");
            M= x.value;
            y = document.getElementById("fil2");
            W= y.value;
            
            n=0;
            var arr = new Array();
            for(a=0;a<N;a++){
                
                for(b=0;b<P;b++){
                    arr[a,b] =  0; 
                    nombre = "cel"+n+"-"+b;
                    celda = document.getElementById(nombre);
                    valor = celda.value;
                   
                    arr[a,b]= valor;
                    alert (arr[a,b]);
                    n++;
                }
            }
            n=0;
            var brr = new Array();
            for(a=0;a<N;a++){
                
                for(b=0;b<P;b++){
                    brr[a,b] =  0; 
                    nombre = "celd"+n+"-"+b;
                    celda = document.getElementById(nombre);
                    valor = celda.value;
                   
                    brr[a,b]= valor;
                   
                    n++;
                }
            }
            R = new Array();
            fila =0;
            colum=0;
            contador=1;
            if(P==W){
                
               var tabla = document.getElementById("matrizResultado")
               for(i=0;i<N;i++){
                contador =contador +4;
                fila=i;
                   for(k=0;k<P;k++){
                       contador = contador+7;
                       colum=k;
                       R[i,k]=0;
                       for(j=0;j<M;j++){
                           contador= contador+13;
                           R[i,k]= R[i,k] +arr[i,k] * brr[k,j];
                           
                            
                       }
                       
                       
                   }
                  
                   
               }
               contador = contador +1;
               var celda;
               var tabla = document.getElementById("matrizResultado")
                for(k=0;k<=fila;k++){
                    var nuevaFila =  tabla.insertRow(-1);
                    for(j=0;j<=colum;j++){
                        if(j<=colum){
                    var    celda = nuevaFila.insertCell(-1);
                    xx1="<input type =\"text\" value=\"";
                    xx1= xx1+ R[k,j];
                    xx1 = xx1+"\"size = 3>\n";
                    celda.innerHTML = xx1;
                    
                        }
                     else{
                        var  celda = nuevaFila.insertCell(-1);
                        
                        }
                        
                    }
                }          
               
            }
            else{
                alert("No se puede multiplicar");
            }
            x = document.getElementById("C");
            formula = ((((13*M)+7)*P)+4)*N +2 
            x.innerHTML="La formula es: " + formula + " Y Contador = " + contador;
      }
    </script>
    <body>
        <div>Matriz A
            <label>Columnas</label>
            <input id="col" type="text" >
            <label>Filas</label>
            <input id="fil" type="text">
            <input value="Generar "type="button" onclick="generarMatrizA();">
            <table id="matrizA"></table>
        </div>
         <div>Matriz B
            <label>Columnas</label>
            <input id="col2" type="text">
            <label>Filas</label>
            <input id="fil2" type="text">
            <input value="Generar "type="button" onclick="generarMatrizB();">
            <table id="matrizB"></table>
        </div>
         <div>Resultado
             <input value="Multiplicar "type="button" onclick="multiplicarMatrices();">
            <table id="matrizResultado"></table>
            <div id="C"></div>
            <div id="F"></div>
        </div>
        
    </body>
</html>
