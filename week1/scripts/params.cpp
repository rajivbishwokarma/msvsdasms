#include <iostream>
#include <string>
#include <cmath>
using namespace std;


class MOS{
    private:
        string parameters;


};

int main() {
    int L=150000u, W=1e+06u, nf=10, m=1;
    int ad, as, pd, ps, nrd, nrs;
    
    ad = ((int)((nf+1)/2)) * W/nf * 0.29;
    as = ((int)((nf+2)/2)) * W/nf * 0.29;
    pd = (2 * ((int)((nf+1)/2))) * (W/nf + 0.29);
    ps = (2 * ((int)((nf+2)/2))) * (W/nf + 0.29);
    nrd = 0.29 / W;
    nrs = 0.29 / W;



    return 0;
}