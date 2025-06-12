#include <stdio.h>
#include <math.h>

#define N 20

int main() {
    double vs[2][20];
           vs[0][0] = 1.0; // v0 = (1,0)
           vs[1][0] = 0.0;
          
           vs[0][1] = 0.0; // v1 = (1,0)
           vs[1][1] = 1.0;
    
    double tmp[2][N];

    int NV = 2; // Number of vertices
    double x, y, norm;
    for (int h=0; h<NV; h+=2) {
        tmp[0][h  ] = vs[0][h  ]; tmp[1][h  ] = vs[1][h];
        tmp[0][h+2] = vs[0][h+1]; tmp[1][h+2] = vs[1][h+1];
        
        x = (vs[0][h  ] + vs[0][h+1])/2.0;
        y = (vs[1][h  ] + vs[1][h+1])/2.0;
        
        norm = sqrt( (x*x) + (y*y) );
        
        if (norm>0) { tmp[0][h+1] = (x/norm); tmp[1][h+1] = (y/norm); }

    }//end-for-h
    NV = (2*NV) - 1;
    
    for (int k=0; k<NV; k++) {
        printf("\n%5d %5f\t %5f", k, tmp[0][k], tmp[1][k]);
    }
    // Agora você tem que transferir o conteudo do vetor tmp para o vetor vs e voltar para o for-h

  return(0);
}//end-main

/*
    0 1.000000	 0.000000
    1 0.707107	 0.707107
    2 0.000000	 1.000000 
*/