//author is Erik de Zeeuw
#include "hwlib.hpp"

extern "C" void uart_put_char( char c ){
   hwlib::cout << c;
}

extern "C" void print_asciz( const char * s );
   //while( *s != '\0'){
      //uart_put_char( *s );
      //++s;
   //}


extern "C" void application();
   //print_asciz( "Hello world\n" );	
//}

int main( void ){	
   
   namespace target = hwlib::target;   
    
      // wait for the PC console to start
   hwlib::wait_ms( 2000 );

   application();
}