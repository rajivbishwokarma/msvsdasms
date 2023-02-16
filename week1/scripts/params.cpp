#include <iostream>
#include <string>
#include <cmath>
using namespace std;

/*
    l: channel length of the MOSFET in the layout
    w: channel width of the MOSFET in the layout
    nf: number of fingers of the MOSFET in the layout
    m: number of parallel MOSFETs in the layout
    ad: drain diffusion area of the MOSFET in the layout
    as: source diffusion area of the MOSFET in the layout
    pd: drain contact area of the MOSFET in the layout
    ps: source contact area of the MOSFET in the layout
    nrd: number of contacts to the drain of the MOSFET in the layout
    nrs: number of contacts to the source of the MOSFET in the layout
 */

int main() {
    long double const scale_factor=100000;

    long double L=150e-9, W= 10.5e-7, nf=10, m=3;
    long double ad, as, pd, ps, nrd, nrs;
    
    ad = ((int)((nf+1)/2)) * W/nf * 0.29;
    as = ((int)((nf+2)/2)) * W/nf * 0.29;
    pd = (2 * ((int)((nf+1)/2))) * (W/nf + 0.29);
    ps = (2 * ((int)((nf+2)/2))) * (W/nf + 0.29);
    nrd = 0.29 / W;
    nrs = 0.29 / W;

    cout << "ad: " << ad << endl
         << "as: " << as << endl
         << "pd: " << pd << endl
         << "ps: " << ps << endl;


    string nmos_sky = "M9 Y E net5 GND sky130_fd_pr__nfet_01v8 L=" + to_string(L) + " W=" + to_string(W) + " ad=" + to_string(ad) + " as=" + to_string(as) + " nf=10 m=3";
    string pmos_sky = "M1 net1 A vdd vdd sky130_fd_pr__pfet_01v8 L=" + to_string(L) + " W=" + to_string(W) + " ad=" + to_string(ad) + " as=" + to_string(as) + " nf=10 m=3";

    cout << pmos_sky << endl;
    cout << nmos_sky << endl;

    return 0;
}