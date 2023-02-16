#include <iostream>
using namespace std;

class fn_out{
    private:
        int a, b, c, d, e, f, fn;
    public:
        fn_out(int a, int b, int c, int d, int e, int f){
            this->a = a;
            this->b = b;
            this->c = c;
            this->d = d;
            this->e = e;
            this->f = f;
        }
        
        void set_a(int a){ this->a = a; }
        void set_b(int b){ this->b = b; }
        void set_c(int c){ this->c = c; }
        void set_d(int d){ this->d = d; }
        void set_e(int e){ this->e = e; }
        void set_f(int f){ this->f = f; }

        int calculate_fn(int a, int b, int c, int d, int e, int f){
            // Fn = [(B + D) . (A + C) + (E . F)]'
            int bd, ac, ef;
            int fn;

            // Fn = [(B + D) . (A + C) + (E . F)]'  
            bd = b || d; // or(b, d) = b | d;
            ac = c || a; // or(c, a) = c | a;
            ef = e && f; // and(e, f) = e & f;
            fn = bd && ac || ef; // or(and(bd, ac), ef) = bd & ac | ef;
            fn = ~fn; // not(fn) = ~fn;
            
            return fn;
        }

        void print_fn(int fn){
            cout << "Fn = " << fn << endl;
        }

        void get_fn(){
            fn = calculate_fn(a, b, c, d, e, f);
            print_fn(fn);
        }

};

int main(){
    fn_out fn(1, 1, 1, 1, 1, 1);
    fn.get_fn();

    return 0;
}