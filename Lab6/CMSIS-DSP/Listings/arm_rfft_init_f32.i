#line 1 "src\\TransformFunctions\\arm_rfft_init_f32.c"






































 


#line 1 ".\\inc\\arm_math.h"






































 



















































































































 




 








 









 



 






































































 



 



 



 


 






 



 





#line 1 ".\\inc\\core_cm4.h"
 







 

























 
























 




 


 

 













#line 110 ".\\inc\\core_cm4.h"



 
#line 125 ".\\inc\\core_cm4.h"

#line 186 ".\\inc\\core_cm4.h"

#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 188 ".\\inc\\core_cm4.h"
#line 1 ".\\inc\\core_cmInstr.h"
 







 

























 






 



 


 









 







 







 






 








 







 







 









 









 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 

__attribute__((section(".revsh_text"))) static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}










 










 











 









 









 









 











 











 











 







 










 










 









 









 

__attribute__((section(".rrx_text"))) static __inline __asm uint32_t __RRX(uint32_t value)
{
  rrx r0, r0
  bx lr
}









 









 









 









 









 









 





#line 877 ".\\inc\\core_cmInstr.h"

   

#line 189 ".\\inc\\core_cm4.h"
#line 1 ".\\inc\\core_cmFunc.h"
 







 

























 






 



 


 





 
 






 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}







 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}







 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}







 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}







 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}







 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}







 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}







 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}







 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}







 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}







 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}








 







 








 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}







 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xff);
}







 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}







 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1);
}











 
static __inline uint32_t __get_FPSCR(void)
{

  register uint32_t __regfpscr         __asm("fpscr");
  return(__regfpscr);



}







 
static __inline void __set_FPSCR(uint32_t fpscr)
{

  register uint32_t __regfpscr         __asm("fpscr");
  __regfpscr = (fpscr);

}




#line 634 ".\\inc\\core_cmFunc.h"

 

#line 190 ".\\inc\\core_cm4.h"
#line 1 ".\\inc\\core_cmSimd.h"
 







 

























 
















 


 



 


 
#line 122 ".\\inc\\core_cmSimd.h"











#line 689 ".\\inc\\core_cmSimd.h"

 






#line 191 ".\\inc\\core_cm4.h"







#line 290 ".\\inc\\arm_math.h"
#line 301 ".\\inc\\arm_math.h"

#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 304 ".\\inc\\arm_math.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"




 





 












 






   









 






#line 61 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

#line 75 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"







   




 















 
#line 112 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"











 





extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_dcmp4(double  , double  );
extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_fcmp4(float  , float  );
    




 

extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassifyf(float  );
extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassify(double  );
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinitef(float __x)
{
    return (((*(unsigned *)&(__x)) >> 23) & 0xff) != 0xff;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinite(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff) != 0x7ff;
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinff(float __x)
{
    return ((*(unsigned *)&(__x)) << 1) == 0xff000000;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinf(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) << 1) == 0xffe00000) && ((*(unsigned *)&(__x)) == 0);
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreaterf(float __x, float __y)
{
    unsigned __f = __ARM_fcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreater(double __x, double __y)
{
    unsigned __f = __ARM_dcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
    


 

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnanf(float __x)
{
    return (0x7f800000 - ((*(unsigned *)&(__x)) & 0x7fffffff)) >> 31;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnan(double __x)
{
    unsigned __xf = (*(1 + (unsigned *)&(__x))) | (((*(unsigned *)&(__x)) == 0) ? 0 : 1);
    return (0x7ff00000 - (__xf & 0x7fffffff)) >> 31;
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormalf(float __x)
{
    unsigned __xe = ((*(unsigned *)&(__x)) >> 23) & 0xff;
    return (__xe != 0xff) && (__xe != 0);
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormal(double __x)
{
    unsigned __xe = ((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff;
    return (__xe != 0x7ff) && (__xe != 0);
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbitf(float __x)
{
    return (*(unsigned *)&(__x)) >> 31;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbit(double __x)
{
    return (*(1 + (unsigned *)&(__x))) >> 31;
}
     
     








#line 230 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"







   
  typedef float float_t;
  typedef double double_t;
#line 251 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"



extern const int math_errhandling;
#line 261 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

extern __declspec(__nothrow) double acos(double  );
    
    
    
extern __declspec(__nothrow) double asin(double  );
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double atan(double  );
    
    

extern __declspec(__nothrow) double atan2(double  , double  );
    
    
    
    

extern __declspec(__nothrow) double cos(double  );
    
    
    
    
extern __declspec(__nothrow) double sin(double  );
    
    
    
    

extern void __use_accurate_range_reduction(void);
    
    

extern __declspec(__nothrow) double tan(double  );
    
    
    
    

extern __declspec(__nothrow) double cosh(double  );
    
    
    
    
extern __declspec(__nothrow) double sinh(double  );
    
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double tanh(double  );
    
    

extern __declspec(__nothrow) double exp(double  );
    
    
    
    
    

extern __declspec(__nothrow) double frexp(double  , int *  ) __attribute__((__nonnull__(2)));
    
    
    
    
    
    

extern __declspec(__nothrow) double ldexp(double  , int  );
    
    
    
    
extern __declspec(__nothrow) double log(double  );
    
    
    
    
    
extern __declspec(__nothrow) double log10(double  );
    
    
    
extern __declspec(__nothrow) double modf(double  , double *  ) __attribute__((__nonnull__(2)));
    
    
    
    

extern __declspec(__nothrow) double pow(double  , double  );
    
    
    
    
    
    
extern __declspec(__nothrow) double sqrt(double  );
    
    
    




    inline double _sqrt(double __x) { return sqrt(__x); }


    inline float _sqrtf(float __x) { return __sqrtf(__x); }



    



 

extern __declspec(__nothrow) __attribute__((const)) double ceil(double  );
    
    
extern __declspec(__nothrow) __attribute__((const)) double fabs(double  );
    
    

extern __declspec(__nothrow) __attribute__((const)) double floor(double  );
    
    

extern __declspec(__nothrow) double fmod(double  , double  );
    
    
    
    
    

    









 



extern __declspec(__nothrow) double acosh(double  );
    

 
extern __declspec(__nothrow) double asinh(double  );
    

 
extern __declspec(__nothrow) double atanh(double  );
    

 
extern __declspec(__nothrow) double cbrt(double  );
    

 
inline __declspec(__nothrow) __attribute__((const)) double copysign(double __x, double __y)
    

 
{
    (*(1 + (unsigned *)&(__x))) = ((*(1 + (unsigned *)&(__x))) & 0x7fffffff) | ((*(1 + (unsigned *)&(__y))) & 0x80000000);
    return __x;
}
inline __declspec(__nothrow) __attribute__((const)) float copysignf(float __x, float __y)
    

 
{
    (*(unsigned *)&(__x)) = ((*(unsigned *)&(__x)) & 0x7fffffff) | ((*(unsigned *)&(__y)) & 0x80000000);
    return __x;
}
extern __declspec(__nothrow) double erf(double  );
    

 
extern __declspec(__nothrow) double erfc(double  );
    

 
extern __declspec(__nothrow) double expm1(double  );
    

 



    

 






#line 479 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"


extern __declspec(__nothrow) double hypot(double  , double  );
    




 
extern __declspec(__nothrow) int ilogb(double  );
    

 
extern __declspec(__nothrow) int ilogbf(float  );
    

 
extern __declspec(__nothrow) int ilogbl(long double  );
    

 







    

 





    



 





    



 





    

 





    



 





    



 





    



 





    

 





    

 





    


 

extern __declspec(__nothrow) double lgamma (double  );
    


 
extern __declspec(__nothrow) double log1p(double  );
    

 
extern __declspec(__nothrow) double logb(double  );
    

 
extern __declspec(__nothrow) float logbf(float  );
    

 
extern __declspec(__nothrow) long double logbl(long double  );
    

 
extern __declspec(__nothrow) double nextafter(double  , double  );
    


 
extern __declspec(__nothrow) float nextafterf(float  , float  );
    


 
extern __declspec(__nothrow) long double nextafterl(long double  , long double  );
    


 
extern __declspec(__nothrow) double nexttoward(double  , long double  );
    


 
extern __declspec(__nothrow) float nexttowardf(float  , long double  );
    


 
extern __declspec(__nothrow) long double nexttowardl(long double  , long double  );
    


 
extern __declspec(__nothrow) double remainder(double  , double  );
    

 
extern __declspec(__nothrow) __attribute__((const)) double rint(double  );
    

 
extern __declspec(__nothrow) double scalbln(double  , long int  );
    

 
extern __declspec(__nothrow) float scalblnf(float  , long int  );
    

 
extern __declspec(__nothrow) long double scalblnl(long double  , long int  );
    

 
extern __declspec(__nothrow) double scalbn(double  , int  );
    

 
extern __declspec(__nothrow) float scalbnf(float  , int  );
    

 
extern __declspec(__nothrow) long double scalbnl(long double  , int  );
    

 




    

 



 
extern __declspec(__nothrow) __attribute__((const)) float _fabsf(float);  
inline __declspec(__nothrow) __attribute__((const)) float fabsf(float __f) { return _fabsf(__f); }
extern __declspec(__nothrow) float sinf(float  );
extern __declspec(__nothrow) float cosf(float  );
extern __declspec(__nothrow) float tanf(float  );
extern __declspec(__nothrow) float acosf(float  );
extern __declspec(__nothrow) float asinf(float  );
extern __declspec(__nothrow) float atanf(float  );
extern __declspec(__nothrow) float atan2f(float  , float  );
extern __declspec(__nothrow) float sinhf(float  );
extern __declspec(__nothrow) float coshf(float  );
extern __declspec(__nothrow) float tanhf(float  );
extern __declspec(__nothrow) float expf(float  );
extern __declspec(__nothrow) float logf(float  );
extern __declspec(__nothrow) float log10f(float  );
extern __declspec(__nothrow) float powf(float  , float  );
extern __declspec(__nothrow) float sqrtf(float  );
extern __declspec(__nothrow) float ldexpf(float  , int  );
extern __declspec(__nothrow) float frexpf(float  , int *  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) __attribute__((const)) float ceilf(float  );
extern __declspec(__nothrow) __attribute__((const)) float floorf(float  );
extern __declspec(__nothrow) float fmodf(float  , float  );
extern __declspec(__nothrow) float modff(float  , float *  ) __attribute__((__nonnull__(2)));

 
 













 
__declspec(__nothrow) long double acosl(long double );
__declspec(__nothrow) long double asinl(long double );
__declspec(__nothrow) long double atanl(long double );
__declspec(__nothrow) long double atan2l(long double , long double );
__declspec(__nothrow) long double ceill(long double );
__declspec(__nothrow) long double cosl(long double );
__declspec(__nothrow) long double coshl(long double );
__declspec(__nothrow) long double expl(long double );
__declspec(__nothrow) long double fabsl(long double );
__declspec(__nothrow) long double floorl(long double );
__declspec(__nothrow) long double fmodl(long double , long double );
__declspec(__nothrow) long double frexpl(long double , int* ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double ldexpl(long double , int );
__declspec(__nothrow) long double logl(long double );
__declspec(__nothrow) long double log10l(long double );
__declspec(__nothrow) long double modfl(long double  , long double *  ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double powl(long double , long double );
__declspec(__nothrow) long double sinl(long double );
__declspec(__nothrow) long double sinhl(long double );
__declspec(__nothrow) long double sqrtl(long double );
__declspec(__nothrow) long double tanl(long double );
__declspec(__nothrow) long double tanhl(long double );





 
extern __declspec(__nothrow) float acoshf(float  );
__declspec(__nothrow) long double acoshl(long double );
extern __declspec(__nothrow) float asinhf(float  );
__declspec(__nothrow) long double asinhl(long double );
extern __declspec(__nothrow) float atanhf(float  );
__declspec(__nothrow) long double atanhl(long double );
__declspec(__nothrow) long double copysignl(long double , long double );
extern __declspec(__nothrow) float cbrtf(float  );
__declspec(__nothrow) long double cbrtl(long double );
extern __declspec(__nothrow) float erff(float  );
__declspec(__nothrow) long double erfl(long double );
extern __declspec(__nothrow) float erfcf(float  );
__declspec(__nothrow) long double erfcl(long double );
extern __declspec(__nothrow) float expm1f(float  );
__declspec(__nothrow) long double expm1l(long double );
extern __declspec(__nothrow) float log1pf(float  );
__declspec(__nothrow) long double log1pl(long double );
extern __declspec(__nothrow) float hypotf(float  , float  );
__declspec(__nothrow) long double hypotl(long double , long double );
extern __declspec(__nothrow) float lgammaf(float  );
__declspec(__nothrow) long double lgammal(long double );
extern __declspec(__nothrow) float remainderf(float  , float  );
__declspec(__nothrow) long double remainderl(long double , long double );
extern __declspec(__nothrow) float rintf(float  );
__declspec(__nothrow) long double rintl(long double );






 
extern __declspec(__nothrow) double exp2(double  );  
extern __declspec(__nothrow) float exp2f(float  );
__declspec(__nothrow) long double exp2l(long double );
extern __declspec(__nothrow) double fdim(double  , double  );
extern __declspec(__nothrow) float fdimf(float  , float  );
__declspec(__nothrow) long double fdiml(long double , long double );
#line 803 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"
extern __declspec(__nothrow) double fma(double  , double  , double  );
extern __declspec(__nothrow) float fmaf(float  , float  , float  );

inline __declspec(__nothrow) long double fmal(long double __x, long double __y, long double __z)     { return (long double)fma((double)__x, (double)__y, (double)__z); }


extern __declspec(__nothrow) __attribute__((const)) double fmax(double  , double  );
extern __declspec(__nothrow) __attribute__((const)) float fmaxf(float  , float  );
__declspec(__nothrow) long double fmaxl(long double , long double );
extern __declspec(__nothrow) __attribute__((const)) double fmin(double  , double  );
extern __declspec(__nothrow) __attribute__((const)) float fminf(float  , float  );
__declspec(__nothrow) long double fminl(long double , long double );
extern __declspec(__nothrow) double log2(double  );  
extern __declspec(__nothrow) float log2f(float  );
__declspec(__nothrow) long double log2l(long double );
extern __declspec(__nothrow) long lrint(double  );
extern __declspec(__nothrow) long lrintf(float  );

inline __declspec(__nothrow) long lrintl(long double __x)     { return lrint((double)__x); }


extern __declspec(__nothrow) long long llrint(double  );
extern __declspec(__nothrow) long long llrintf(float  );

inline __declspec(__nothrow) long long llrintl(long double __x)     { return llrint((double)__x); }


extern __declspec(__nothrow) long lround(double  );
extern __declspec(__nothrow) long lroundf(float  );

inline __declspec(__nothrow) long lroundl(long double __x)     { return lround((double)__x); }


extern __declspec(__nothrow) long long llround(double  );
extern __declspec(__nothrow) long long llroundf(float  );

inline __declspec(__nothrow) long long llroundl(long double __x)     { return llround((double)__x); }


extern __declspec(__nothrow) __attribute__((const)) double nan(const char * );
extern __declspec(__nothrow) __attribute__((const)) float nanf(const char * );

inline __declspec(__nothrow) __attribute__((const)) long double nanl(const char *__t)     { return (long double)nan(__t); }
#line 856 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"
extern __declspec(__nothrow) __attribute__((const)) double nearbyint(double  );
extern __declspec(__nothrow) __attribute__((const)) float nearbyintf(float  );
__declspec(__nothrow) long double nearbyintl(long double );
extern  double remquo(double  , double  , int * );
extern  float remquof(float  , float  , int * );

inline long double remquol(long double __x, long double __y, int *__q)     { return (long double)remquo((double)__x, (double)__y, __q); }


extern __declspec(__nothrow) __attribute__((const)) double round(double  );
extern __declspec(__nothrow) __attribute__((const)) float roundf(float  );
__declspec(__nothrow) long double roundl(long double );
extern __declspec(__nothrow) double tgamma(double  );  
extern __declspec(__nothrow) float tgammaf(float  );
__declspec(__nothrow) long double tgammal(long double );
extern __declspec(__nothrow) __attribute__((const)) double trunc(double  );
extern __declspec(__nothrow) __attribute__((const)) float truncf(float  );
__declspec(__nothrow) long double truncl(long double );






#line 896 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

#line 1087 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"











#line 1317 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"





 
#line 305 ".\\inc\\arm_math.h"






  

 

#line 321 ".\\inc\\arm_math.h"

  

 

#line 333 ".\\inc\\arm_math.h"

  

 
   
   


  

 
#line 353 ".\\inc\\arm_math.h"

  

 

  typedef enum
  {
    ARM_MATH_SUCCESS = 0,                 
    ARM_MATH_ARGUMENT_ERROR = -1,         
    ARM_MATH_LENGTH_ERROR = -2,           
    ARM_MATH_SIZE_MISMATCH = -3,          
    ARM_MATH_NANINF = -4,                 
    ARM_MATH_SINGULAR = -5,               
    ARM_MATH_TEST_FAILURE = -6            
  } arm_status;

  

 
  typedef int8_t q7_t;

  

 
  typedef int16_t q15_t;

  

 
  typedef int32_t q31_t;

  

 
  typedef int64_t q63_t;

  

 
  typedef float float32_t;

  

 
  typedef double float64_t;

  

 
#line 417 ".\\inc\\arm_math.h"








#line 435 ".\\inc\\arm_math.h"


   

 


#line 454 ".\\inc\\arm_math.h"


  

 
  static __inline q31_t clip_q63_to_q31(
  q63_t x)
  {
    return ((q31_t) (x >> 32) != ((q31_t) x >> 31)) ?
      ((0x7FFFFFFF ^ ((q31_t) (x >> 63)))) : (q31_t) x;
  }

  

 
  static __inline q15_t clip_q63_to_q15(
  q63_t x)
  {
    return ((q31_t) (x >> 32) != ((q31_t) x >> 31)) ?
      ((0x7FFF ^ ((q15_t) (x >> 63)))) : (q15_t) (x >> 15);
  }

  

 
  static __inline q7_t clip_q31_to_q7(
  q31_t x)
  {
    return ((q31_t) (x >> 24) != ((q31_t) x >> 23)) ?
      ((0x7F ^ ((q7_t) (x >> 31)))) : (q7_t) x;
  }

  

 
  static __inline q15_t clip_q31_to_q15(
  q31_t x)
  {
    return ((q31_t) (x >> 16) != ((q31_t) x >> 15)) ?
      ((0x7FFF ^ ((q15_t) (x >> 31)))) : (q15_t) x;
  }

  

 

  static __inline q63_t mult32x64(
  q63_t x,
  q31_t y)
  {
    return ((((q63_t) (x & 0x00000000FFFFFFFF) * y) >> 32) +
            (((q63_t) (x >> 32) * y)));
  }






#line 536 ".\\inc\\arm_math.h"

  

 

  static __inline uint32_t arm_recip_q31(
  q31_t in,
  q31_t * dst,
  q31_t * pRecipTable)
  {

    uint32_t out, tempVal;
    uint32_t index, i;
    uint32_t signBits;

    if(in > 0)
    {
      signBits = __clz(in) - 1;
    }
    else
    {
      signBits = __clz(-in) - 1;
    }

     
    in = in << signBits;

     
    index = (uint32_t) (in >> 24u);
    index = (index & 0x0000003F);

     
    out = pRecipTable[index];

     
     
    for (i = 0u; i < 2u; i++)
    {
      tempVal = (q31_t) (((q63_t) in * out) >> 31u);
      tempVal = 0x7FFFFFFF - tempVal;
       
      
      out = (q31_t) clip_q63_to_q31(((q63_t) out * tempVal) >> 30u);
    }

     
    *dst = out;

     
    return (signBits + 1u);

  }

  

 
  static __inline uint32_t arm_recip_q15(
  q15_t in,
  q15_t * dst,
  q15_t * pRecipTable)
  {

    uint32_t out = 0, tempVal = 0;
    uint32_t index = 0, i = 0;
    uint32_t signBits = 0;

    if(in > 0)
    {
      signBits = __clz(in) - 17;
    }
    else
    {
      signBits = __clz(-in) - 17;
    }

     
    in = in << signBits;

     
    index = in >> 8;
    index = (index & 0x0000003F);

     
    out = pRecipTable[index];

     
     
    for (i = 0; i < 2; i++)
    {
      tempVal = (q15_t) (((q31_t) in * out) >> 15);
      tempVal = 0x7FFF - tempVal;
       
      out = (q15_t) (((q31_t) out * tempVal) >> 14);
    }

     
    *dst = out;

     
    return (signBits + 1);

  }


  

 
#line 682 ".\\inc\\arm_math.h"



  

 
#line 1065 ".\\inc\\arm_math.h"


  

 
  typedef struct
  {
    uint16_t numTaps;         
    q7_t *pState;             
    q7_t *pCoeffs;            
  } arm_fir_instance_q7;

  

 
  typedef struct
  {
    uint16_t numTaps;          
    q15_t *pState;             
    q15_t *pCoeffs;            
  } arm_fir_instance_q15;

  

 
  typedef struct
  {
    uint16_t numTaps;          
    q31_t *pState;             
    q31_t *pCoeffs;            
  } arm_fir_instance_q31;

  

 
  typedef struct
  {
    uint16_t numTaps;      
    float32_t *pState;     
    float32_t *pCoeffs;    
  } arm_fir_instance_f32;


  






 
  void arm_fir_q7(
  const arm_fir_instance_q7 * S,
  q7_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);


  







 
  void arm_fir_init_q7(
  arm_fir_instance_q7 * S,
  uint16_t numTaps,
  q7_t * pCoeffs,
  q7_t * pState,
  uint32_t blockSize);


  






 
  void arm_fir_q15(
  const arm_fir_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  






 
  void arm_fir_fast_q15(
  const arm_fir_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  








 

  arm_status arm_fir_init_q15(
  arm_fir_instance_q15 * S,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  uint32_t blockSize);

  






 
  void arm_fir_q31(
  const arm_fir_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  






 
  void arm_fir_fast_q31(
  const arm_fir_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  







 
  void arm_fir_init_q31(
  arm_fir_instance_q31 * S,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  uint32_t blockSize);

  






 
  void arm_fir_f32(
  const arm_fir_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  







 
  void arm_fir_init_f32(
  arm_fir_instance_f32 * S,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  uint32_t blockSize);


  

 
  typedef struct
  {
    int8_t numStages;          
    q15_t *pState;             
    q15_t *pCoeffs;            
    int8_t postShift;          

  } arm_biquad_casd_df1_inst_q15;


  

 
  typedef struct
  {
    uint32_t numStages;       
    q31_t *pState;            
    q31_t *pCoeffs;           
    uint8_t postShift;        

  } arm_biquad_casd_df1_inst_q31;

  

 
  typedef struct
  {
    uint32_t numStages;          
    float32_t *pState;           
    float32_t *pCoeffs;          


  } arm_biquad_casd_df1_inst_f32;



  






 

  void arm_biquad_cascade_df1_q15(
  const arm_biquad_casd_df1_inst_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  







 

  void arm_biquad_cascade_df1_init_q15(
  arm_biquad_casd_df1_inst_q15 * S,
  uint8_t numStages,
  q15_t * pCoeffs,
  q15_t * pState,
  int8_t postShift);


  






 

  void arm_biquad_cascade_df1_fast_q15(
  const arm_biquad_casd_df1_inst_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


  






 

  void arm_biquad_cascade_df1_q31(
  const arm_biquad_casd_df1_inst_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  






 

  void arm_biquad_cascade_df1_fast_q31(
  const arm_biquad_casd_df1_inst_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  







 

  void arm_biquad_cascade_df1_init_q31(
  arm_biquad_casd_df1_inst_q31 * S,
  uint8_t numStages,
  q31_t * pCoeffs,
  q31_t * pState,
  int8_t postShift);

  






 

  void arm_biquad_cascade_df1_f32(
  const arm_biquad_casd_df1_inst_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  






 

  void arm_biquad_cascade_df1_init_f32(
  arm_biquad_casd_df1_inst_f32 * S,
  uint8_t numStages,
  float32_t * pCoeffs,
  float32_t * pState);


  

 

  typedef struct
  {
    uint16_t numRows;      
    uint16_t numCols;      
    float32_t *pData;      
  } arm_matrix_instance_f32;


  

 

  typedef struct
  {
    uint16_t numRows;      
    uint16_t numCols;      
    float64_t *pData;      
  } arm_matrix_instance_f64;

  

 

  typedef struct
  {
    uint16_t numRows;      
    uint16_t numCols;      
    q15_t *pData;          

  } arm_matrix_instance_q15;

  

 

  typedef struct
  {
    uint16_t numRows;      
    uint16_t numCols;      
    q31_t *pData;          

  } arm_matrix_instance_q31;



  






 

  arm_status arm_mat_add_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
  arm_matrix_instance_f32 * pDst);

  






 

  arm_status arm_mat_add_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst);

  






 

  arm_status arm_mat_add_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);

  






 

  arm_status arm_mat_cmplx_mult_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
  arm_matrix_instance_f32 * pDst);

  






 

  arm_status arm_mat_cmplx_mult_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst,
  q15_t * pScratch);

  






 

  arm_status arm_mat_cmplx_mult_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);


  





 

  arm_status arm_mat_trans_f32(
  const arm_matrix_instance_f32 * pSrc,
  arm_matrix_instance_f32 * pDst);


  





 

  arm_status arm_mat_trans_q15(
  const arm_matrix_instance_q15 * pSrc,
  arm_matrix_instance_q15 * pDst);

  





 

  arm_status arm_mat_trans_q31(
  const arm_matrix_instance_q31 * pSrc,
  arm_matrix_instance_q31 * pDst);


  






 

  arm_status arm_mat_mult_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
  arm_matrix_instance_f32 * pDst);

  







 

  arm_status arm_mat_mult_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst,
  q15_t * pState);

  







 

  arm_status arm_mat_mult_fast_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst,
  q15_t * pState);

  






 

  arm_status arm_mat_mult_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);

  






 

  arm_status arm_mat_mult_fast_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);


  






 

  arm_status arm_mat_sub_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
  arm_matrix_instance_f32 * pDst);

  






 

  arm_status arm_mat_sub_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst);

  






 

  arm_status arm_mat_sub_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);

  






 

  arm_status arm_mat_scale_f32(
  const arm_matrix_instance_f32 * pSrc,
  float32_t scale,
  arm_matrix_instance_f32 * pDst);

  







 

  arm_status arm_mat_scale_q15(
  const arm_matrix_instance_q15 * pSrc,
  q15_t scaleFract,
  int32_t shift,
  arm_matrix_instance_q15 * pDst);

  







 

  arm_status arm_mat_scale_q31(
  const arm_matrix_instance_q31 * pSrc,
  q31_t scaleFract,
  int32_t shift,
  arm_matrix_instance_q31 * pDst);


  






 

  void arm_mat_init_q31(
  arm_matrix_instance_q31 * S,
  uint16_t nRows,
  uint16_t nColumns,
  q31_t * pData);

  






 

  void arm_mat_init_q15(
  arm_matrix_instance_q15 * S,
  uint16_t nRows,
  uint16_t nColumns,
  q15_t * pData);

  






 

  void arm_mat_init_f32(
  arm_matrix_instance_f32 * S,
  uint16_t nRows,
  uint16_t nColumns,
  float32_t * pData);



  

 
  typedef struct
  {
    q15_t A0;     




    q31_t A1;            

    q15_t state[3];        
    q15_t Kp;            
    q15_t Ki;            
    q15_t Kd;            
  } arm_pid_instance_q15;

  

 
  typedef struct
  {
    q31_t A0;             
    q31_t A1;             
    q31_t A2;             
    q31_t state[3];       
    q31_t Kp;             
    q31_t Ki;             
    q31_t Kd;             

  } arm_pid_instance_q31;

  

 
  typedef struct
  {
    float32_t A0;           
    float32_t A1;           
    float32_t A2;           
    float32_t state[3];     
    float32_t Kp;                
    float32_t Ki;                
    float32_t Kd;                
  } arm_pid_instance_f32;



  




 
  void arm_pid_init_f32(
  arm_pid_instance_f32 * S,
  int32_t resetStateFlag);

  



 
  void arm_pid_reset_f32(
  arm_pid_instance_f32 * S);


  




 
  void arm_pid_init_q31(
  arm_pid_instance_q31 * S,
  int32_t resetStateFlag);


  



 

  void arm_pid_reset_q31(
  arm_pid_instance_q31 * S);

  




 
  void arm_pid_init_q15(
  arm_pid_instance_q15 * S,
  int32_t resetStateFlag);

  



 
  void arm_pid_reset_q15(
  arm_pid_instance_q15 * S);


  

 
  typedef struct
  {
    uint32_t nValues;            
    float32_t x1;                
    float32_t xSpacing;          
    float32_t *pYData;           
  } arm_linear_interp_instance_f32;

  

 

  typedef struct
  {
    uint16_t numRows;    
    uint16_t numCols;    
    float32_t *pData;    
  } arm_bilinear_interp_instance_f32;

   

 

  typedef struct
  {
    uint16_t numRows;    
    uint16_t numCols;    
    q31_t *pData;        
  } arm_bilinear_interp_instance_q31;

   

 

  typedef struct
  {
    uint16_t numRows;    
    uint16_t numCols;    
    q15_t *pData;        
  } arm_bilinear_interp_instance_q15;

   

 

  typedef struct
  {
    uint16_t numRows;    
    uint16_t numCols;    
    q7_t *pData;                 
  } arm_bilinear_interp_instance_q7;


  






 

  void arm_mult_q7(
  q7_t * pSrcA,
  q7_t * pSrcB,
  q7_t * pDst,
  uint32_t blockSize);

  






 

  void arm_mult_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  q15_t * pDst,
  uint32_t blockSize);

  






 

  void arm_mult_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  q31_t * pDst,
  uint32_t blockSize);

  






 

  void arm_mult_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  float32_t * pDst,
  uint32_t blockSize);






  

 

  typedef struct
  {
    uint16_t fftLen;                  
    uint8_t ifftFlag;                 
    uint8_t bitReverseFlag;           
    q15_t *pTwiddle;                      
    uint16_t *pBitRevTable;           
    uint16_t twidCoefModifier;        
    uint16_t bitRevFactor;            
  } arm_cfft_radix2_instance_q15;

 
  arm_status arm_cfft_radix2_init_q15(
  arm_cfft_radix2_instance_q15 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

 
  void arm_cfft_radix2_q15(
  const arm_cfft_radix2_instance_q15 * S,
  q15_t * pSrc);



  

 

  typedef struct
  {
    uint16_t fftLen;                  
    uint8_t ifftFlag;                 
    uint8_t bitReverseFlag;           
    q15_t *pTwiddle;                  
    uint16_t *pBitRevTable;           
    uint16_t twidCoefModifier;        
    uint16_t bitRevFactor;            
  } arm_cfft_radix4_instance_q15;

 
  arm_status arm_cfft_radix4_init_q15(
  arm_cfft_radix4_instance_q15 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

 
  void arm_cfft_radix4_q15(
  const arm_cfft_radix4_instance_q15 * S,
  q15_t * pSrc);

  

 

  typedef struct
  {
    uint16_t fftLen;                  
    uint8_t ifftFlag;                 
    uint8_t bitReverseFlag;           
    q31_t *pTwiddle;                      
    uint16_t *pBitRevTable;           
    uint16_t twidCoefModifier;        
    uint16_t bitRevFactor;            
  } arm_cfft_radix2_instance_q31;

 
  arm_status arm_cfft_radix2_init_q31(
  arm_cfft_radix2_instance_q31 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

 
  void arm_cfft_radix2_q31(
  const arm_cfft_radix2_instance_q31 * S,
  q31_t * pSrc);

  

 

  typedef struct
  {
    uint16_t fftLen;                  
    uint8_t ifftFlag;                 
    uint8_t bitReverseFlag;           
    q31_t *pTwiddle;                  
    uint16_t *pBitRevTable;           
    uint16_t twidCoefModifier;        
    uint16_t bitRevFactor;            
  } arm_cfft_radix4_instance_q31;

 
  void arm_cfft_radix4_q31(
  const arm_cfft_radix4_instance_q31 * S,
  q31_t * pSrc);

 
  arm_status arm_cfft_radix4_init_q31(
  arm_cfft_radix4_instance_q31 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

  

 

  typedef struct
  {
    uint16_t fftLen;                    
    uint8_t ifftFlag;                   
    uint8_t bitReverseFlag;             
    float32_t *pTwiddle;                
    uint16_t *pBitRevTable;             
    uint16_t twidCoefModifier;          
    uint16_t bitRevFactor;              
    float32_t onebyfftLen;                  
  } arm_cfft_radix2_instance_f32;

 
  arm_status arm_cfft_radix2_init_f32(
  arm_cfft_radix2_instance_f32 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

 
  void arm_cfft_radix2_f32(
  const arm_cfft_radix2_instance_f32 * S,
  float32_t * pSrc);

  

 

  typedef struct
  {
    uint16_t fftLen;                    
    uint8_t ifftFlag;                   
    uint8_t bitReverseFlag;             
    float32_t *pTwiddle;                
    uint16_t *pBitRevTable;             
    uint16_t twidCoefModifier;          
    uint16_t bitRevFactor;              
    float32_t onebyfftLen;                  
  } arm_cfft_radix4_instance_f32;

 
  arm_status arm_cfft_radix4_init_f32(
  arm_cfft_radix4_instance_f32 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

 
  void arm_cfft_radix4_f32(
  const arm_cfft_radix4_instance_f32 * S,
  float32_t * pSrc);

  

 

  typedef struct
  {
    uint16_t fftLen;                    
    const q15_t *pTwiddle;              
    const uint16_t *pBitRevTable;       
    uint16_t bitRevLength;              
  } arm_cfft_instance_q15;

void arm_cfft_q15( 
    const arm_cfft_instance_q15 * S, 
    q15_t * p1,
    uint8_t ifftFlag,
    uint8_t bitReverseFlag);  

  

 

  typedef struct
  {
    uint16_t fftLen;                    
    const q31_t *pTwiddle;              
    const uint16_t *pBitRevTable;       
    uint16_t bitRevLength;              
  } arm_cfft_instance_q31;

void arm_cfft_q31( 
    const arm_cfft_instance_q31 * S, 
    q31_t * p1,
    uint8_t ifftFlag,
    uint8_t bitReverseFlag);  
  
  

 

  typedef struct
  {
    uint16_t fftLen;                    
    const float32_t *pTwiddle;          
    const uint16_t *pBitRevTable;       
    uint16_t bitRevLength;              
  } arm_cfft_instance_f32;

  void arm_cfft_f32(
  const arm_cfft_instance_f32 * S,
  float32_t * p1,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

  

 

  typedef struct
  {
    uint32_t fftLenReal;                       
    uint8_t ifftFlagR;                         
    uint8_t bitReverseFlagR;                   
    uint32_t twidCoefRModifier;                
    q15_t *pTwiddleAReal;                      
    q15_t *pTwiddleBReal;                      
    const arm_cfft_instance_q15 *pCfft;        
  } arm_rfft_instance_q15;

  arm_status arm_rfft_init_q15(
  arm_rfft_instance_q15 * S,
  uint32_t fftLenReal,
  uint32_t ifftFlagR,
  uint32_t bitReverseFlag);

  void arm_rfft_q15(
  const arm_rfft_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst);

  

 

  typedef struct
  {
    uint32_t fftLenReal;                         
    uint8_t ifftFlagR;                           
    uint8_t bitReverseFlagR;                     
    uint32_t twidCoefRModifier;                  
    q31_t *pTwiddleAReal;                        
    q31_t *pTwiddleBReal;                        
    const arm_cfft_instance_q31 *pCfft;          
  } arm_rfft_instance_q31;

  arm_status arm_rfft_init_q31(
  arm_rfft_instance_q31 * S,
  uint32_t fftLenReal,
  uint32_t ifftFlagR,
  uint32_t bitReverseFlag);

  void arm_rfft_q31(
  const arm_rfft_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst);

  

 

  typedef struct
  {
    uint32_t fftLenReal;                         
    uint16_t fftLenBy2;                          
    uint8_t ifftFlagR;                           
    uint8_t bitReverseFlagR;                     
    uint32_t twidCoefRModifier;                      
    float32_t *pTwiddleAReal;                    
    float32_t *pTwiddleBReal;                    
    arm_cfft_radix4_instance_f32 *pCfft;         
  } arm_rfft_instance_f32;

  arm_status arm_rfft_init_f32(
  arm_rfft_instance_f32 * S,
  arm_cfft_radix4_instance_f32 * S_CFFT,
  uint32_t fftLenReal,
  uint32_t ifftFlagR,
  uint32_t bitReverseFlag);

  void arm_rfft_f32(
  const arm_rfft_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst);

  

 

typedef struct
  {
    arm_cfft_instance_f32 Sint;       
    uint16_t fftLenRFFT;                         
	float32_t * pTwiddleRFFT;					 
  } arm_rfft_fast_instance_f32 ;

arm_status arm_rfft_fast_init_f32 (
	arm_rfft_fast_instance_f32 * S,
	uint16_t fftLen);

void arm_rfft_fast_f32(
  arm_rfft_fast_instance_f32 * S,
  float32_t * p, float32_t * pOut,
  uint8_t ifftFlag);

  

 

  typedef struct
  {
    uint16_t N;                          
    uint16_t Nby2;                       
    float32_t normalize;                 
    float32_t *pTwiddle;                 
    float32_t *pCosFactor;               
    arm_rfft_instance_f32 *pRfft;         
    arm_cfft_radix4_instance_f32 *pCfft;  
  } arm_dct4_instance_f32;

  








 

  arm_status arm_dct4_init_f32(
  arm_dct4_instance_f32 * S,
  arm_rfft_instance_f32 * S_RFFT,
  arm_cfft_radix4_instance_f32 * S_CFFT,
  uint16_t N,
  uint16_t Nby2,
  float32_t normalize);

  





 

  void arm_dct4_f32(
  const arm_dct4_instance_f32 * S,
  float32_t * pState,
  float32_t * pInlineBuffer);

  

 

  typedef struct
  {
    uint16_t N;                          
    uint16_t Nby2;                       
    q31_t normalize;                     
    q31_t *pTwiddle;                     
    q31_t *pCosFactor;                   
    arm_rfft_instance_q31 *pRfft;         
    arm_cfft_radix4_instance_q31 *pCfft;  
  } arm_dct4_instance_q31;

  








 

  arm_status arm_dct4_init_q31(
  arm_dct4_instance_q31 * S,
  arm_rfft_instance_q31 * S_RFFT,
  arm_cfft_radix4_instance_q31 * S_CFFT,
  uint16_t N,
  uint16_t Nby2,
  q31_t normalize);

  





 

  void arm_dct4_q31(
  const arm_dct4_instance_q31 * S,
  q31_t * pState,
  q31_t * pInlineBuffer);

  

 

  typedef struct
  {
    uint16_t N;                          
    uint16_t Nby2;                       
    q15_t normalize;                     
    q15_t *pTwiddle;                     
    q15_t *pCosFactor;                   
    arm_rfft_instance_q15 *pRfft;         
    arm_cfft_radix4_instance_q15 *pCfft;  
  } arm_dct4_instance_q15;

  








 

  arm_status arm_dct4_init_q15(
  arm_dct4_instance_q15 * S,
  arm_rfft_instance_q15 * S_RFFT,
  arm_cfft_radix4_instance_q15 * S_CFFT,
  uint16_t N,
  uint16_t Nby2,
  q15_t normalize);

  





 

  void arm_dct4_q15(
  const arm_dct4_instance_q15 * S,
  q15_t * pState,
  q15_t * pInlineBuffer);

  






 

  void arm_add_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  float32_t * pDst,
  uint32_t blockSize);

  






 

  void arm_add_q7(
  q7_t * pSrcA,
  q7_t * pSrcB,
  q7_t * pDst,
  uint32_t blockSize);

  






 

  void arm_add_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  q15_t * pDst,
  uint32_t blockSize);

  






 

  void arm_add_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  q31_t * pDst,
  uint32_t blockSize);

  






 

  void arm_sub_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  float32_t * pDst,
  uint32_t blockSize);

  






 

  void arm_sub_q7(
  q7_t * pSrcA,
  q7_t * pSrcB,
  q7_t * pDst,
  uint32_t blockSize);

  






 

  void arm_sub_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  q15_t * pDst,
  uint32_t blockSize);

  






 

  void arm_sub_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  q31_t * pDst,
  uint32_t blockSize);

  






 

  void arm_scale_f32(
  float32_t * pSrc,
  float32_t scale,
  float32_t * pDst,
  uint32_t blockSize);

  







 

  void arm_scale_q7(
  q7_t * pSrc,
  q7_t scaleFract,
  int8_t shift,
  q7_t * pDst,
  uint32_t blockSize);

  







 

  void arm_scale_q15(
  q15_t * pSrc,
  q15_t scaleFract,
  int8_t shift,
  q15_t * pDst,
  uint32_t blockSize);

  







 

  void arm_scale_q31(
  q31_t * pSrc,
  q31_t scaleFract,
  int8_t shift,
  q31_t * pDst,
  uint32_t blockSize);

  





 

  void arm_abs_q7(
  q7_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);

  





 

  void arm_abs_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  





 

  void arm_abs_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  





 

  void arm_abs_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  






 

  void arm_dot_prod_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  uint32_t blockSize,
  float32_t * result);

  






 

  void arm_dot_prod_q7(
  q7_t * pSrcA,
  q7_t * pSrcB,
  uint32_t blockSize,
  q31_t * result);

  






 

  void arm_dot_prod_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  uint32_t blockSize,
  q63_t * result);

  






 

  void arm_dot_prod_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  uint32_t blockSize,
  q63_t * result);

  






 

  void arm_shift_q7(
  q7_t * pSrc,
  int8_t shiftBits,
  q7_t * pDst,
  uint32_t blockSize);

  






 

  void arm_shift_q15(
  q15_t * pSrc,
  int8_t shiftBits,
  q15_t * pDst,
  uint32_t blockSize);

  






 

  void arm_shift_q31(
  q31_t * pSrc,
  int8_t shiftBits,
  q31_t * pDst,
  uint32_t blockSize);

  






 

  void arm_offset_f32(
  float32_t * pSrc,
  float32_t offset,
  float32_t * pDst,
  uint32_t blockSize);

  






 

  void arm_offset_q7(
  q7_t * pSrc,
  q7_t offset,
  q7_t * pDst,
  uint32_t blockSize);

  






 

  void arm_offset_q15(
  q15_t * pSrc,
  q15_t offset,
  q15_t * pDst,
  uint32_t blockSize);

  






 

  void arm_offset_q31(
  q31_t * pSrc,
  q31_t offset,
  q31_t * pDst,
  uint32_t blockSize);

  





 

  void arm_negate_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  





 

  void arm_negate_q7(
  q7_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);

  





 

  void arm_negate_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  





 

  void arm_negate_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);
  





 
  void arm_copy_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  





 
  void arm_copy_q7(
  q7_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);

  





 
  void arm_copy_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  





 
  void arm_copy_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);
  





 
  void arm_fill_f32(
  float32_t value,
  float32_t * pDst,
  uint32_t blockSize);

  





 
  void arm_fill_q7(
  q7_t value,
  q7_t * pDst,
  uint32_t blockSize);

  





 
  void arm_fill_q15(
  q15_t value,
  q15_t * pDst,
  uint32_t blockSize);

  





 
  void arm_fill_q31(
  q31_t value,
  q31_t * pDst,
  uint32_t blockSize);









 

  void arm_conv_f32(
  float32_t * pSrcA,
  uint32_t srcALen,
  float32_t * pSrcB,
  uint32_t srcBLen,
  float32_t * pDst);


  









 


  void arm_conv_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  q15_t * pScratch1,
  q15_t * pScratch2);










 

  void arm_conv_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst);

  







 

  void arm_conv_fast_q15(
			  q15_t * pSrcA,
			 uint32_t srcALen,
			  q15_t * pSrcB,
			 uint32_t srcBLen,
			 q15_t * pDst);

  









 

  void arm_conv_fast_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  q15_t * pScratch1,
  q15_t * pScratch2);



  







 

  void arm_conv_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst);

  







 

  void arm_conv_fast_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst);


    









 

  void arm_conv_opt_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst,
  q15_t * pScratch1,
  q15_t * pScratch2);



  







 

  void arm_conv_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst);


  









 

  arm_status arm_conv_partial_f32(
  float32_t * pSrcA,
  uint32_t srcALen,
  float32_t * pSrcB,
  uint32_t srcBLen,
  float32_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);

    











 

  arm_status arm_conv_partial_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints,
  q15_t * pScratch1,
  q15_t * pScratch2);












 

  arm_status arm_conv_partial_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);

  









 

  arm_status arm_conv_partial_fast_q15(
				        q15_t * pSrcA,
				       uint32_t srcALen,
				        q15_t * pSrcB,
				       uint32_t srcBLen,
				       q15_t * pDst,
				       uint32_t firstIndex,
				       uint32_t numPoints);


  











 

  arm_status arm_conv_partial_fast_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints,
  q15_t * pScratch1,
  q15_t * pScratch2);


  









 

  arm_status arm_conv_partial_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);


  









 

  arm_status arm_conv_partial_fast_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);


  











 

  arm_status arm_conv_partial_opt_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints,
  q15_t * pScratch1,
  q15_t * pScratch2);












 

  arm_status arm_conv_partial_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);



  

 

  typedef struct
  {
    uint8_t M;                       
    uint16_t numTaps;                
    q15_t *pCoeffs;                   
    q15_t *pState;                    
  } arm_fir_decimate_instance_q15;

  

 

  typedef struct
  {
    uint8_t M;                   
    uint16_t numTaps;            
    q31_t *pCoeffs;               
    q31_t *pState;                

  } arm_fir_decimate_instance_q31;

  

 

  typedef struct
  {
    uint8_t M;                           
    uint16_t numTaps;                    
    float32_t *pCoeffs;                   
    float32_t *pState;                    

  } arm_fir_decimate_instance_f32;



  






 

  void arm_fir_decimate_f32(
  const arm_fir_decimate_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  









 

  arm_status arm_fir_decimate_init_f32(
  arm_fir_decimate_instance_f32 * S,
  uint16_t numTaps,
  uint8_t M,
  float32_t * pCoeffs,
  float32_t * pState,
  uint32_t blockSize);

  






 

  void arm_fir_decimate_q15(
  const arm_fir_decimate_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  






 

  void arm_fir_decimate_fast_q15(
  const arm_fir_decimate_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);



  









 

  arm_status arm_fir_decimate_init_q15(
  arm_fir_decimate_instance_q15 * S,
  uint16_t numTaps,
  uint8_t M,
  q15_t * pCoeffs,
  q15_t * pState,
  uint32_t blockSize);

  






 

  void arm_fir_decimate_q31(
  const arm_fir_decimate_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  






 

  void arm_fir_decimate_fast_q31(
  arm_fir_decimate_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  









 

  arm_status arm_fir_decimate_init_q31(
  arm_fir_decimate_instance_q31 * S,
  uint16_t numTaps,
  uint8_t M,
  q31_t * pCoeffs,
  q31_t * pState,
  uint32_t blockSize);



  

 

  typedef struct
  {
    uint8_t L;                       
    uint16_t phaseLength;            
    q15_t *pCoeffs;                  
    q15_t *pState;                   
  } arm_fir_interpolate_instance_q15;

  

 

  typedef struct
  {
    uint8_t L;                       
    uint16_t phaseLength;            
    q31_t *pCoeffs;                   
    q31_t *pState;                    
  } arm_fir_interpolate_instance_q31;

  

 

  typedef struct
  {
    uint8_t L;                      
    uint16_t phaseLength;           
    float32_t *pCoeffs;              
    float32_t *pState;               
  } arm_fir_interpolate_instance_f32;


  






 

  void arm_fir_interpolate_q15(
  const arm_fir_interpolate_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


  









 

  arm_status arm_fir_interpolate_init_q15(
  arm_fir_interpolate_instance_q15 * S,
  uint8_t L,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  uint32_t blockSize);

  






 

  void arm_fir_interpolate_q31(
  const arm_fir_interpolate_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  









 

  arm_status arm_fir_interpolate_init_q31(
  arm_fir_interpolate_instance_q31 * S,
  uint8_t L,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  uint32_t blockSize);


  






 

  void arm_fir_interpolate_f32(
  const arm_fir_interpolate_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  









 

  arm_status arm_fir_interpolate_init_f32(
  arm_fir_interpolate_instance_f32 * S,
  uint8_t L,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  uint32_t blockSize);

  

 

  typedef struct
  {
    uint8_t numStages;        
    q63_t *pState;            
    q31_t *pCoeffs;           
    uint8_t postShift;        

  } arm_biquad_cas_df1_32x64_ins_q31;


  





 

  void arm_biquad_cas_df1_32x64_q31(
  const arm_biquad_cas_df1_32x64_ins_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  






 

  void arm_biquad_cas_df1_32x64_init_q31(
  arm_biquad_cas_df1_32x64_ins_q31 * S,
  uint8_t numStages,
  q31_t * pCoeffs,
  q63_t * pState,
  uint8_t postShift);



  

 

  typedef struct
  {
    uint8_t numStages;          
    float32_t *pState;          
    float32_t *pCoeffs;         
  } arm_biquad_cascade_df2T_instance_f32;



  

 

  typedef struct
  {
    uint8_t numStages;          
    float32_t *pState;          
    float32_t *pCoeffs;         
  } arm_biquad_cascade_stereo_df2T_instance_f32;



  

 

  typedef struct
  {
    uint8_t numStages;          
    float64_t *pState;          
    float64_t *pCoeffs;         
  } arm_biquad_cascade_df2T_instance_f64;


  






 

  void arm_biquad_cascade_df2T_f32(
  const arm_biquad_cascade_df2T_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  






 

  void arm_biquad_cascade_stereo_df2T_f32(
  const arm_biquad_cascade_stereo_df2T_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  






 

  void arm_biquad_cascade_df2T_f64(
  const arm_biquad_cascade_df2T_instance_f64 * S,
  float64_t * pSrc,
  float64_t * pDst,
  uint32_t blockSize);


  






 

  void arm_biquad_cascade_df2T_init_f32(
  arm_biquad_cascade_df2T_instance_f32 * S,
  uint8_t numStages,
  float32_t * pCoeffs,
  float32_t * pState);


  






 

  void arm_biquad_cascade_stereo_df2T_init_f32(
  arm_biquad_cascade_stereo_df2T_instance_f32 * S,
  uint8_t numStages,
  float32_t * pCoeffs,
  float32_t * pState);


  






 

  void arm_biquad_cascade_df2T_init_f64(
  arm_biquad_cascade_df2T_instance_f64 * S,
  uint8_t numStages,
  float64_t * pCoeffs,
  float64_t * pState);



  

 

  typedef struct
  {
    uint16_t numStages;                           
    q15_t *pState;                                
    q15_t *pCoeffs;                               
  } arm_fir_lattice_instance_q15;

  

 

  typedef struct
  {
    uint16_t numStages;                           
    q31_t *pState;                                
    q31_t *pCoeffs;                               
  } arm_fir_lattice_instance_q31;

  

 

  typedef struct
  {
    uint16_t numStages;                   
    float32_t *pState;                    
    float32_t *pCoeffs;                   
  } arm_fir_lattice_instance_f32;

  






 

  void arm_fir_lattice_init_q15(
  arm_fir_lattice_instance_q15 * S,
  uint16_t numStages,
  q15_t * pCoeffs,
  q15_t * pState);


  






 
  void arm_fir_lattice_q15(
  const arm_fir_lattice_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  






 

  void arm_fir_lattice_init_q31(
  arm_fir_lattice_instance_q31 * S,
  uint16_t numStages,
  q31_t * pCoeffs,
  q31_t * pState);


  






 

  void arm_fir_lattice_q31(
  const arm_fir_lattice_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);








 

  void arm_fir_lattice_init_f32(
  arm_fir_lattice_instance_f32 * S,
  uint16_t numStages,
  float32_t * pCoeffs,
  float32_t * pState);

  






 

  void arm_fir_lattice_f32(
  const arm_fir_lattice_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  

 
  typedef struct
  {
    uint16_t numStages;                          
    q15_t *pState;                               
    q15_t *pkCoeffs;                             
    q15_t *pvCoeffs;                             
  } arm_iir_lattice_instance_q15;

  

 
  typedef struct
  {
    uint16_t numStages;                          
    q31_t *pState;                               
    q31_t *pkCoeffs;                             
    q31_t *pvCoeffs;                             
  } arm_iir_lattice_instance_q31;

  

 
  typedef struct
  {
    uint16_t numStages;                          
    float32_t *pState;                           
    float32_t *pkCoeffs;                         
    float32_t *pvCoeffs;                         
  } arm_iir_lattice_instance_f32;

  






 

  void arm_iir_lattice_f32(
  const arm_iir_lattice_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  








 

  void arm_iir_lattice_init_f32(
  arm_iir_lattice_instance_f32 * S,
  uint16_t numStages,
  float32_t * pkCoeffs,
  float32_t * pvCoeffs,
  float32_t * pState,
  uint32_t blockSize);


  






 

  void arm_iir_lattice_q31(
  const arm_iir_lattice_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  








 

  void arm_iir_lattice_init_q31(
  arm_iir_lattice_instance_q31 * S,
  uint16_t numStages,
  q31_t * pkCoeffs,
  q31_t * pvCoeffs,
  q31_t * pState,
  uint32_t blockSize);


  






 

  void arm_iir_lattice_q15(
  const arm_iir_lattice_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);











 

  void arm_iir_lattice_init_q15(
  arm_iir_lattice_instance_q15 * S,
  uint16_t numStages,
  q15_t * pkCoeffs,
  q15_t * pvCoeffs,
  q15_t * pState,
  uint32_t blockSize);

  

 

  typedef struct
  {
    uint16_t numTaps;     
    float32_t *pState;    
    float32_t *pCoeffs;   
    float32_t mu;         
  } arm_lms_instance_f32;

  








 

  void arm_lms_f32(
  const arm_lms_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pRef,
  float32_t * pOut,
  float32_t * pErr,
  uint32_t blockSize);

  








 

  void arm_lms_init_f32(
  arm_lms_instance_f32 * S,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  float32_t mu,
  uint32_t blockSize);

  

 

  typedef struct
  {
    uint16_t numTaps;     
    q15_t *pState;        
    q15_t *pCoeffs;       
    q15_t mu;             
    uint32_t postShift;   
  } arm_lms_instance_q15;


  









 

  void arm_lms_init_q15(
  arm_lms_instance_q15 * S,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  q15_t mu,
  uint32_t blockSize,
  uint32_t postShift);

  








 

  void arm_lms_q15(
  const arm_lms_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pRef,
  q15_t * pOut,
  q15_t * pErr,
  uint32_t blockSize);


  

 

  typedef struct
  {
    uint16_t numTaps;     
    q31_t *pState;        
    q31_t *pCoeffs;       
    q31_t mu;             
    uint32_t postShift;   

  } arm_lms_instance_q31;

  








 

  void arm_lms_q31(
  const arm_lms_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pRef,
  q31_t * pOut,
  q31_t * pErr,
  uint32_t blockSize);

  









 

  void arm_lms_init_q31(
  arm_lms_instance_q31 * S,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  q31_t mu,
  uint32_t blockSize,
  uint32_t postShift);

  

 

  typedef struct
  {
    uint16_t numTaps;      
    float32_t *pState;     
    float32_t *pCoeffs;    
    float32_t mu;         
    float32_t energy;     
    float32_t x0;         
  } arm_lms_norm_instance_f32;

  








 

  void arm_lms_norm_f32(
  arm_lms_norm_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pRef,
  float32_t * pOut,
  float32_t * pErr,
  uint32_t blockSize);

  








 

  void arm_lms_norm_init_f32(
  arm_lms_norm_instance_f32 * S,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  float32_t mu,
  uint32_t blockSize);


  

 
  typedef struct
  {
    uint16_t numTaps;      
    q31_t *pState;         
    q31_t *pCoeffs;        
    q31_t mu;              
    uint8_t postShift;     
    q31_t *recipTable;     
    q31_t energy;          
    q31_t x0;              
  } arm_lms_norm_instance_q31;

  








 

  void arm_lms_norm_q31(
  arm_lms_norm_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pRef,
  q31_t * pOut,
  q31_t * pErr,
  uint32_t blockSize);

  









 

  void arm_lms_norm_init_q31(
  arm_lms_norm_instance_q31 * S,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  q31_t mu,
  uint32_t blockSize,
  uint8_t postShift);

  

 

  typedef struct
  {
    uint16_t numTaps;     
    q15_t *pState;         
    q15_t *pCoeffs;        
    q15_t mu;             
    uint8_t postShift;    
    q15_t *recipTable;    
    q15_t energy;         
    q15_t x0;             
  } arm_lms_norm_instance_q15;

  








 

  void arm_lms_norm_q15(
  arm_lms_norm_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pRef,
  q15_t * pOut,
  q15_t * pErr,
  uint32_t blockSize);


  









 

  void arm_lms_norm_init_q15(
  arm_lms_norm_instance_q15 * S,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  q15_t mu,
  uint32_t blockSize,
  uint8_t postShift);

  







 

  void arm_correlate_f32(
  float32_t * pSrcA,
  uint32_t srcALen,
  float32_t * pSrcB,
  uint32_t srcBLen,
  float32_t * pDst);


   








 
  void arm_correlate_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  q15_t * pScratch);


  







 

  void arm_correlate_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst);

  







 

  void arm_correlate_fast_q15(
			       q15_t * pSrcA,
			      uint32_t srcALen,
			       q15_t * pSrcB,
			      uint32_t srcBLen,
			      q15_t * pDst);



  








 

  void arm_correlate_fast_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  q15_t * pScratch);

  







 

  void arm_correlate_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst);

  







 

  void arm_correlate_fast_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst);



 









 

  void arm_correlate_opt_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst,
  q15_t * pScratch1,
  q15_t * pScratch2);


  







 

  void arm_correlate_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst);


  

 
  typedef struct
  {
    uint16_t numTaps;              
    uint16_t stateIndex;           
    float32_t *pState;             
    float32_t *pCoeffs;            
    uint16_t maxDelay;             
    int32_t *pTapDelay;            
  } arm_fir_sparse_instance_f32;

  

 

  typedef struct
  {
    uint16_t numTaps;              
    uint16_t stateIndex;           
    q31_t *pState;                 
    q31_t *pCoeffs;                
    uint16_t maxDelay;             
    int32_t *pTapDelay;            
  } arm_fir_sparse_instance_q31;

  

 

  typedef struct
  {
    uint16_t numTaps;              
    uint16_t stateIndex;           
    q15_t *pState;                 
    q15_t *pCoeffs;                
    uint16_t maxDelay;             
    int32_t *pTapDelay;            
  } arm_fir_sparse_instance_q15;

  

 

  typedef struct
  {
    uint16_t numTaps;              
    uint16_t stateIndex;           
    q7_t *pState;                  
    q7_t *pCoeffs;                 
    uint16_t maxDelay;             
    int32_t *pTapDelay;            
  } arm_fir_sparse_instance_q7;

  







 

  void arm_fir_sparse_f32(
  arm_fir_sparse_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  float32_t * pScratchIn,
  uint32_t blockSize);

  









 

  void arm_fir_sparse_init_f32(
  arm_fir_sparse_instance_f32 * S,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  int32_t * pTapDelay,
  uint16_t maxDelay,
  uint32_t blockSize);

  







 

  void arm_fir_sparse_q31(
  arm_fir_sparse_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  q31_t * pScratchIn,
  uint32_t blockSize);

  









 

  void arm_fir_sparse_init_q31(
  arm_fir_sparse_instance_q31 * S,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  int32_t * pTapDelay,
  uint16_t maxDelay,
  uint32_t blockSize);

  








 

  void arm_fir_sparse_q15(
  arm_fir_sparse_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  q15_t * pScratchIn,
  q31_t * pScratchOut,
  uint32_t blockSize);


  









 

  void arm_fir_sparse_init_q15(
  arm_fir_sparse_instance_q15 * S,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  int32_t * pTapDelay,
  uint16_t maxDelay,
  uint32_t blockSize);

  








 

  void arm_fir_sparse_q7(
  arm_fir_sparse_instance_q7 * S,
  q7_t * pSrc,
  q7_t * pDst,
  q7_t * pScratchIn,
  q31_t * pScratchOut,
  uint32_t blockSize);

  









 

  void arm_fir_sparse_init_q7(
  arm_fir_sparse_instance_q7 * S,
  uint16_t numTaps,
  q7_t * pCoeffs,
  q7_t * pState,
  int32_t * pTapDelay,
  uint16_t maxDelay,
  uint32_t blockSize);


  





 

  void arm_sin_cos_f32(
  float32_t theta,
  float32_t * pSinVal,
  float32_t * pCcosVal);

  





 

  void arm_sin_cos_q31(
  q31_t theta,
  q31_t * pSinVal,
  q31_t * pCosVal);


  





 

  void arm_cmplx_conj_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t numSamples);

  





 

  void arm_cmplx_conj_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t numSamples);

  





 

  void arm_cmplx_conj_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t numSamples);



  





 

  void arm_cmplx_mag_squared_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t numSamples);

  





 

  void arm_cmplx_mag_squared_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t numSamples);

  





 

  void arm_cmplx_mag_squared_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t numSamples);


 

 

  






















































 

  


 

  




 

  static __inline float32_t arm_pid_f32
  (
  arm_pid_instance_f32 * S,
  float32_t in)
  {
    float32_t out;

     
    out = (S->A0 * in) +
      (S->A1 * S->state[0]) + (S->A2 * S->state[1]) + (S->state[2]);

     
    S->state[1] = S->state[0];
    S->state[0] = in;
    S->state[2] = out;

     
    return (out);

  }

  












 

  static __inline q31_t arm_pid_q31(
  arm_pid_instance_q31 * S,
  q31_t in)
  {
    q63_t acc;
    q31_t out;

     
    acc = (q63_t) S->A0 * in;

     
    acc += (q63_t) S->A1 * S->state[0];

     
    acc += (q63_t) S->A2 * S->state[1];

     
    out = (q31_t) (acc >> 31u);

     
    out += S->state[2];

     
    S->state[1] = S->state[0];
    S->state[0] = in;
    S->state[2] = out;

     
    return (out);

  }

  













 

  static __inline q15_t arm_pid_q15(
  arm_pid_instance_q15 * S,
  q15_t in)
  {
    q63_t acc;
    q15_t out;


    int32_t __packed *vstate;

     

     
    acc = (q31_t) __smuad(S->A0, in);

     
    vstate = ((int32_t __packed *)(S->state));
    acc = __smlald(S->A1, (q31_t) *vstate, acc);

#line 5199 ".\\inc\\arm_math.h"

     
    acc += (q31_t) S->state[2] << 15;

     
    out = (q15_t) (__ssat((acc >> 15), 16));

     
    S->state[1] = S->state[0];
    S->state[0] = in;
    S->state[2] = out;

     
    return (out);

  }

  

 


  





 

  arm_status arm_mat_inverse_f32(
  const arm_matrix_instance_f32 * src,
  arm_matrix_instance_f32 * dst);


  





 

  arm_status arm_mat_inverse_f64(
  const arm_matrix_instance_f64 * src,
  arm_matrix_instance_f64 * dst);



  

 


  



















 

  


 

  







 

  static __inline void arm_clarke_f32(
  float32_t Ia,
  float32_t Ib,
  float32_t * pIalpha,
  float32_t * pIbeta)
  {
     
    *pIalpha = Ia;

     
    *pIbeta =
      ((float32_t) 0.57735026919 * Ia + (float32_t) 1.15470053838 * Ib);

  }

  












 

  static __inline void arm_clarke_q31(
  q31_t Ia,
  q31_t Ib,
  q31_t * pIalpha,
  q31_t * pIbeta)
  {
    q31_t product1, product2;                     

     
    *pIalpha = Ia;

     
    product1 = (q31_t) (((q63_t) Ia * 0x24F34E8B) >> 30);

     
    product2 = (q31_t) (((q63_t) Ib * 0x49E69D16) >> 30);

     
    *pIbeta = __qadd(product1, product2);
  }

  

 

  





 
  void arm_q7_to_q31(
  q7_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);




  

 

  













 

  


 

   






 


  static __inline void arm_inv_clarke_f32(
  float32_t Ialpha,
  float32_t Ibeta,
  float32_t * pIa,
  float32_t * pIb)
  {
     
    *pIa = Ialpha;

     
    *pIb = -0.5 * Ialpha + (float32_t) 0.8660254039 *Ibeta;

  }

  












 

  static __inline void arm_inv_clarke_q31(
  q31_t Ialpha,
  q31_t Ibeta,
  q31_t * pIa,
  q31_t * pIb)
  {
    q31_t product1, product2;                     

     
    *pIa = Ialpha;

     
    product1 = (q31_t) (((q63_t) (Ialpha) * (0x40000000)) >> 31);

     
    product2 = (q31_t) (((q63_t) (Ibeta) * (0x6ED9EBA1)) >> 31);

     
    *pIb = __qsub(product2, product1);

  }

  

 

  





 
  void arm_q7_to_q15(
  q7_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);



  

 

  





















 

  


 

  











 

  static __inline void arm_park_f32(
  float32_t Ialpha,
  float32_t Ibeta,
  float32_t * pId,
  float32_t * pIq,
  float32_t sinVal,
  float32_t cosVal)
  {
     
    *pId = Ialpha * cosVal + Ibeta * sinVal;

     
    *pIq = -Ialpha * sinVal + Ibeta * cosVal;

  }

  














 


  static __inline void arm_park_q31(
  q31_t Ialpha,
  q31_t Ibeta,
  q31_t * pId,
  q31_t * pIq,
  q31_t sinVal,
  q31_t cosVal)
  {
    q31_t product1, product2;                     
    q31_t product3, product4;                     

     
    product1 = (q31_t) (((q63_t) (Ialpha) * (cosVal)) >> 31);

     
    product2 = (q31_t) (((q63_t) (Ibeta) * (sinVal)) >> 31);


     
    product3 = (q31_t) (((q63_t) (Ialpha) * (sinVal)) >> 31);

     
    product4 = (q31_t) (((q63_t) (Ibeta) * (cosVal)) >> 31);

     
    *pId = __qadd(product1, product2);

     
    *pIq = __qsub(product4, product3);
  }

  

 

  





 
  void arm_q7_to_float(
  q7_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  

 

  














 

  


 

   








 

  static __inline void arm_inv_park_f32(
  float32_t Id,
  float32_t Iq,
  float32_t * pIalpha,
  float32_t * pIbeta,
  float32_t sinVal,
  float32_t cosVal)
  {
     
    *pIalpha = Id * cosVal - Iq * sinVal;

     
    *pIbeta = Id * sinVal + Iq * cosVal;

  }


  














 


  static __inline void arm_inv_park_q31(
  q31_t Id,
  q31_t Iq,
  q31_t * pIalpha,
  q31_t * pIbeta,
  q31_t sinVal,
  q31_t cosVal)
  {
    q31_t product1, product2;                     
    q31_t product3, product4;                     

     
    product1 = (q31_t) (((q63_t) (Id) * (cosVal)) >> 31);

     
    product2 = (q31_t) (((q63_t) (Iq) * (sinVal)) >> 31);


     
    product3 = (q31_t) (((q63_t) (Id) * (sinVal)) >> 31);

     
    product4 = (q31_t) (((q63_t) (Iq) * (cosVal)) >> 31);

     
    *pIalpha = __qsub(product1, product2);

     
    *pIbeta = __qadd(product4, product3);

  }

  

 


  





 
  void arm_q31_to_float(
  q31_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  

 

  





























 

  


 

  





 

  static __inline float32_t arm_linear_interp_f32(
  arm_linear_interp_instance_f32 * S,
  float32_t x)
  {

    float32_t y;
    float32_t x0, x1;                             
    float32_t y0, y1;                             
    float32_t xSpacing = S->xSpacing;             
    int32_t i;                                    
    float32_t *pYData = S->pYData;                

     
    i = (int32_t) ((x - S->x1) / xSpacing);

    if(i < 0)
    {
       
      y = pYData[0];
    }
    else if((uint32_t)i >= S->nValues)
    {
       
      y = pYData[S->nValues - 1];
    }
    else
    {
       
      x0 = S->x1 + i * xSpacing;
      x1 = S->x1 + (i + 1) * xSpacing;

       
      y0 = pYData[i];
      y1 = pYData[i + 1];

       
      y = y0 + (x - x0) * ((y1 - y0) / (x1 - x0));

    }

     
    return (y);
  }

   











 


  static __inline q31_t arm_linear_interp_q31(
  q31_t * pYData,
  q31_t x,
  uint32_t nValues)
  {
    q31_t y;                                      
    q31_t y0, y1;                                 
    q31_t fract;                                  
    int32_t index;                                

     
     
     
    index = ((x & 0xFFF00000) >> 20);

    if(index >= (int32_t)(nValues - 1))
    {
      return (pYData[nValues - 1]);
    }
    else if(index < 0)
    {
      return (pYData[0]);
    }
    else
    {

       
       
      fract = (x & 0x000FFFFF) << 11;

       
      y0 = pYData[index];
      y1 = pYData[index + 1u];

       
      y = ((q31_t) ((q63_t) y0 * (0x7FFFFFFF - fract) >> 32));

       
      y += ((q31_t) (((q63_t) y1 * fract) >> 32));

       
      return (y << 1u);

    }

  }

  











 


  static __inline q15_t arm_linear_interp_q15(
  q15_t * pYData,
  q31_t x,
  uint32_t nValues)
  {
    q63_t y;                                      
    q15_t y0, y1;                                 
    q31_t fract;                                  
    int32_t index;                                

     
     
     
    index = ((x & 0xFFF00000) >> 20u);

    if(index >= (int32_t)(nValues - 1))
    {
      return (pYData[nValues - 1]);
    }
    else if(index < 0)
    {
      return (pYData[0]);
    }
    else
    {
       
       
      fract = (x & 0x000FFFFF);

       
      y0 = pYData[index];
      y1 = pYData[index + 1u];

       
      y = ((q63_t) y0 * (0xFFFFF - fract));

       
      y += ((q63_t) y1 * (fract));

       
      return (y >> 20);
    }


  }

  










 


  static __inline q7_t arm_linear_interp_q7(
  q7_t * pYData,
  q31_t x,
  uint32_t nValues)
  {
    q31_t y;                                      
    q7_t y0, y1;                                  
    q31_t fract;                                  
    uint32_t index;                               

     
     
     
    if (x < 0)
    {
      return (pYData[0]);
    }
    index = (x >> 20) & 0xfff;


    if(index >= (nValues - 1))
    {
      return (pYData[nValues - 1]);
    }
    else
    {

       
       
      fract = (x & 0x000FFFFF);

       
      y0 = pYData[index];
      y1 = pYData[index + 1u];

       
      y = ((y0 * (0xFFFFF - fract)));

       
      y += (y1 * fract);

       
      return (y >> 20u);

    }

  }
  

 

  



 

  float32_t arm_sin_f32(
  float32_t x);

  



 

  q31_t arm_sin_q31(
  q31_t x);

  



 

  q15_t arm_sin_q15(
  q15_t x);

  



 

  float32_t arm_cos_f32(
  float32_t x);

  



 

  q31_t arm_cos_q31(
  q31_t x);

  



 

  q15_t arm_cos_q15(
  q15_t x);


  

 


  

















 


  


 

  





 

  static __inline arm_status arm_sqrt_f32(
  float32_t in,
  float32_t * pOut)
  {
    if(in > 0)
    {



      *pOut = __sqrtf(in);




      return (ARM_MATH_SUCCESS);
    }
    else
    {
      *pOut = 0.0f;
      return (ARM_MATH_ARGUMENT_ERROR);
    }

  }


  





 
  arm_status arm_sqrt_q31(
  q31_t in,
  q31_t * pOut);

  





 
  arm_status arm_sqrt_q15(
  q15_t in,
  q15_t * pOut);

  

 






  

 

  static __inline void arm_circularWrite_f32(
  int32_t * circBuffer,
  int32_t L,
  uint16_t * writeOffset,
  int32_t bufferInc,
  const int32_t * src,
  int32_t srcInc,
  uint32_t blockSize)
  {
    uint32_t i = 0u;
    int32_t wOffset;

    
 
    wOffset = *writeOffset;

     
    i = blockSize;

    while(i > 0u)
    {
       
      circBuffer[wOffset] = *src;

       
      src += srcInc;

       
      wOffset += bufferInc;
      if(wOffset >= L)
        wOffset -= L;

       
      i--;
    }

     
    *writeOffset = wOffset;
  }



  

 
  static __inline void arm_circularRead_f32(
  int32_t * circBuffer,
  int32_t L,
  int32_t * readOffset,
  int32_t bufferInc,
  int32_t * dst,
  int32_t * dst_base,
  int32_t dst_length,
  int32_t dstInc,
  uint32_t blockSize)
  {
    uint32_t i = 0u;
    int32_t rOffset, dst_end;

    
 
    rOffset = *readOffset;
    dst_end = (int32_t) (dst_base + dst_length);

     
    i = blockSize;

    while(i > 0u)
    {
       
      *dst = circBuffer[rOffset];

       
      dst += dstInc;

      if(dst == (int32_t *) dst_end)
      {
        dst = dst_base;
      }

       
      rOffset += bufferInc;

      if(rOffset >= L)
      {
        rOffset -= L;
      }

       
      i--;
    }

     
    *readOffset = rOffset;
  }

  

 

  static __inline void arm_circularWrite_q15(
  q15_t * circBuffer,
  int32_t L,
  uint16_t * writeOffset,
  int32_t bufferInc,
  const q15_t * src,
  int32_t srcInc,
  uint32_t blockSize)
  {
    uint32_t i = 0u;
    int32_t wOffset;

    
 
    wOffset = *writeOffset;

     
    i = blockSize;

    while(i > 0u)
    {
       
      circBuffer[wOffset] = *src;

       
      src += srcInc;

       
      wOffset += bufferInc;
      if(wOffset >= L)
        wOffset -= L;

       
      i--;
    }

     
    *writeOffset = wOffset;
  }



  

 
  static __inline void arm_circularRead_q15(
  q15_t * circBuffer,
  int32_t L,
  int32_t * readOffset,
  int32_t bufferInc,
  q15_t * dst,
  q15_t * dst_base,
  int32_t dst_length,
  int32_t dstInc,
  uint32_t blockSize)
  {
    uint32_t i = 0;
    int32_t rOffset, dst_end;

    
 
    rOffset = *readOffset;

    dst_end = (int32_t) (dst_base + dst_length);

     
    i = blockSize;

    while(i > 0u)
    {
       
      *dst = circBuffer[rOffset];

       
      dst += dstInc;

      if(dst == (q15_t *) dst_end)
      {
        dst = dst_base;
      }

       
      rOffset += bufferInc;

      if(rOffset >= L)
      {
        rOffset -= L;
      }

       
      i--;
    }

     
    *readOffset = rOffset;
  }


  

 

  static __inline void arm_circularWrite_q7(
  q7_t * circBuffer,
  int32_t L,
  uint16_t * writeOffset,
  int32_t bufferInc,
  const q7_t * src,
  int32_t srcInc,
  uint32_t blockSize)
  {
    uint32_t i = 0u;
    int32_t wOffset;

    
 
    wOffset = *writeOffset;

     
    i = blockSize;

    while(i > 0u)
    {
       
      circBuffer[wOffset] = *src;

       
      src += srcInc;

       
      wOffset += bufferInc;
      if(wOffset >= L)
        wOffset -= L;

       
      i--;
    }

     
    *writeOffset = wOffset;
  }



  

 
  static __inline void arm_circularRead_q7(
  q7_t * circBuffer,
  int32_t L,
  int32_t * readOffset,
  int32_t bufferInc,
  q7_t * dst,
  q7_t * dst_base,
  int32_t dst_length,
  int32_t dstInc,
  uint32_t blockSize)
  {
    uint32_t i = 0;
    int32_t rOffset, dst_end;

    
 
    rOffset = *readOffset;

    dst_end = (int32_t) (dst_base + dst_length);

     
    i = blockSize;

    while(i > 0u)
    {
       
      *dst = circBuffer[rOffset];

       
      dst += dstInc;

      if(dst == (q7_t *) dst_end)
      {
        dst = dst_base;
      }

       
      rOffset += bufferInc;

      if(rOffset >= L)
      {
        rOffset -= L;
      }

       
      i--;
    }

     
    *readOffset = rOffset;
  }


  





 

  void arm_power_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q63_t * pResult);

  





 

  void arm_power_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);

  





 

  void arm_power_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q63_t * pResult);

  





 

  void arm_power_q7(
  q7_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);

  





 

  void arm_mean_q7(
  q7_t * pSrc,
  uint32_t blockSize,
  q7_t * pResult);

  





 
  void arm_mean_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult);

  





 
  void arm_mean_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);

  





 
  void arm_mean_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);

  





 

  void arm_var_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);

  





 

  void arm_var_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);

  





 

  void arm_var_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult);

  





 

  void arm_rms_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);

  





 

  void arm_rms_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);

  





 

  void arm_rms_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult);

  





 

  void arm_std_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);

  





 

  void arm_std_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);

  





 

  void arm_std_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult);

  





 

  void arm_cmplx_mag_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t numSamples);

  





 

  void arm_cmplx_mag_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t numSamples);

  





 

  void arm_cmplx_mag_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t numSamples);

  







 

  void arm_cmplx_dot_prod_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  uint32_t numSamples,
  q31_t * realResult,
  q31_t * imagResult);

  







 

  void arm_cmplx_dot_prod_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  uint32_t numSamples,
  q63_t * realResult,
  q63_t * imagResult);

  







 

  void arm_cmplx_dot_prod_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  uint32_t numSamples,
  float32_t * realResult,
  float32_t * imagResult);

  






 

  void arm_cmplx_mult_real_q15(
  q15_t * pSrcCmplx,
  q15_t * pSrcReal,
  q15_t * pCmplxDst,
  uint32_t numSamples);

  






 

  void arm_cmplx_mult_real_q31(
  q31_t * pSrcCmplx,
  q31_t * pSrcReal,
  q31_t * pCmplxDst,
  uint32_t numSamples);

  






 

  void arm_cmplx_mult_real_f32(
  float32_t * pSrcCmplx,
  float32_t * pSrcReal,
  float32_t * pCmplxDst,
  uint32_t numSamples);

  






 

  void arm_min_q7(
  q7_t * pSrc,
  uint32_t blockSize,
  q7_t * result,
  uint32_t * index);

  






 

  void arm_min_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult,
  uint32_t * pIndex);

  






 
  void arm_min_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult,
  uint32_t * pIndex);

  






 

  void arm_min_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult,
  uint32_t * pIndex);








 

  void arm_max_q7(
  q7_t * pSrc,
  uint32_t blockSize,
  q7_t * pResult,
  uint32_t * pIndex);








 

  void arm_max_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult,
  uint32_t * pIndex);








 

  void arm_max_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult,
  uint32_t * pIndex);








 

  void arm_max_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult,
  uint32_t * pIndex);

  






 

  void arm_cmplx_mult_cmplx_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  q15_t * pDst,
  uint32_t numSamples);

  






 

  void arm_cmplx_mult_cmplx_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  q31_t * pDst,
  uint32_t numSamples);

  






 

  void arm_cmplx_mult_cmplx_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  float32_t * pDst,
  uint32_t numSamples);

  





 
  void arm_float_to_q31(
  float32_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  





 
  void arm_float_to_q15(
  float32_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  





 
  void arm_float_to_q7(
  float32_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);


  





 
  void arm_q31_to_q15(
  q31_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  





 
  void arm_q31_to_q7(
  q31_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);

  





 
  void arm_q15_to_float(
  q15_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  





 
  void arm_q15_to_q31(
  q15_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  





 
  void arm_q15_to_q7(
  q15_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);


  

 

  

















































 

  


 

  






 


  static __inline float32_t arm_bilinear_interp_f32(
  const arm_bilinear_interp_instance_f32 * S,
  float32_t X,
  float32_t Y)
  {
    float32_t out;
    float32_t f00, f01, f10, f11;
    float32_t *pData = S->pData;
    int32_t xIndex, yIndex, index;
    float32_t xdiff, ydiff;
    float32_t b1, b2, b3, b4;

    xIndex = (int32_t) X;
    yIndex = (int32_t) Y;

     
     
    if(xIndex < 0 || xIndex > (S->numRows - 1) || yIndex < 0
       || yIndex > (S->numCols - 1))
    {
      return (0);
    }

     
    index = (xIndex - 1) + (yIndex - 1) * S->numCols;


     
    f00 = pData[index];
    f01 = pData[index + 1];

     
    index = (xIndex - 1) + (yIndex) * S->numCols;


     
    f10 = pData[index];
    f11 = pData[index + 1];

     
    b1 = f00;
    b2 = f01 - f00;
    b3 = f10 - f00;
    b4 = f00 - f01 - f10 + f11;

     
    xdiff = X - xIndex;

     
    ydiff = Y - yIndex;

     
    out = b1 + b2 * xdiff + b3 * ydiff + b4 * xdiff * ydiff;

     
    return (out);

  }

  






 

  static __inline q31_t arm_bilinear_interp_q31(
  arm_bilinear_interp_instance_q31 * S,
  q31_t X,
  q31_t Y)
  {
    q31_t out;                                    
    q31_t acc = 0;                                
    q31_t xfract, yfract;                         
    q31_t x1, x2, y1, y2;                         
    int32_t rI, cI;                               
    q31_t *pYData = S->pData;                     
    uint32_t nCols = S->numCols;                  


     
     
     
    rI = ((X & 0xFFF00000) >> 20u);

     
     
     
    cI = ((Y & 0xFFF00000) >> 20u);

     
     
    if(rI < 0 || rI > (S->numRows - 1) || cI < 0 || cI > (S->numCols - 1))
    {
      return (0);
    }

     
     
    xfract = (X & 0x000FFFFF) << 11u;

     
    x1 = pYData[(rI) + nCols * (cI)];
    x2 = pYData[(rI) + nCols * (cI) + 1u];

     
     
    yfract = (Y & 0x000FFFFF) << 11u;

     
    y1 = pYData[(rI) + nCols * (cI + 1)];
    y2 = pYData[(rI) + nCols * (cI + 1) + 1u];

     
    out = ((q31_t) (((q63_t) x1 * (0x7FFFFFFF - xfract)) >> 32));
    acc = ((q31_t) (((q63_t) out * (0x7FFFFFFF - yfract)) >> 32));

     
    out = ((q31_t) ((q63_t) x2 * (0x7FFFFFFF - yfract) >> 32));
    acc += ((q31_t) ((q63_t) out * (xfract) >> 32));

     
    out = ((q31_t) ((q63_t) y1 * (0x7FFFFFFF - xfract) >> 32));
    acc += ((q31_t) ((q63_t) out * (yfract) >> 32));

     
    out = ((q31_t) ((q63_t) y2 * (xfract) >> 32));
    acc += ((q31_t) ((q63_t) out * (yfract) >> 32));

     
    return (acc << 2u);

  }

  





 

  static __inline q15_t arm_bilinear_interp_q15(
  arm_bilinear_interp_instance_q15 * S,
  q31_t X,
  q31_t Y)
  {
    q63_t acc = 0;                                
    q31_t out;                                    
    q15_t x1, x2, y1, y2;                         
    q31_t xfract, yfract;                         
    int32_t rI, cI;                               
    q15_t *pYData = S->pData;                     
    uint32_t nCols = S->numCols;                  

     
     
     
    rI = ((X & 0xFFF00000) >> 20);

     
     
     
    cI = ((Y & 0xFFF00000) >> 20);

     
     
    if(rI < 0 || rI > (S->numRows - 1) || cI < 0 || cI > (S->numCols - 1))
    {
      return (0);
    }

     
     
    xfract = (X & 0x000FFFFF);

     
    x1 = pYData[(rI) + nCols * (cI)];
    x2 = pYData[(rI) + nCols * (cI) + 1u];


     
     
    yfract = (Y & 0x000FFFFF);

     
    y1 = pYData[(rI) + nCols * (cI + 1)];
    y2 = pYData[(rI) + nCols * (cI + 1) + 1u];

     

     
     
    out = (q31_t) (((q63_t) x1 * (0xFFFFF - xfract)) >> 4u);
    acc = ((q63_t) out * (0xFFFFF - yfract));

     
    out = (q31_t) (((q63_t) x2 * (0xFFFFF - yfract)) >> 4u);
    acc += ((q63_t) out * (xfract));

     
    out = (q31_t) (((q63_t) y1 * (0xFFFFF - xfract)) >> 4u);
    acc += ((q63_t) out * (yfract));

     
    out = (q31_t) (((q63_t) y2 * (xfract)) >> 4u);
    acc += ((q63_t) out * (yfract));

     
     
    return (acc >> 36);

  }

  





 

  static __inline q7_t arm_bilinear_interp_q7(
  arm_bilinear_interp_instance_q7 * S,
  q31_t X,
  q31_t Y)
  {
    q63_t acc = 0;                                
    q31_t out;                                    
    q31_t xfract, yfract;                         
    q7_t x1, x2, y1, y2;                          
    int32_t rI, cI;                               
    q7_t *pYData = S->pData;                      
    uint32_t nCols = S->numCols;                  

     
     
     
    rI = ((X & 0xFFF00000) >> 20);

     
     
     
    cI = ((Y & 0xFFF00000) >> 20);

     
     
    if(rI < 0 || rI > (S->numRows - 1) || cI < 0 || cI > (S->numCols - 1))
    {
      return (0);
    }

     
     
    xfract = (X & 0x000FFFFF);

     
    x1 = pYData[(rI) + nCols * (cI)];
    x2 = pYData[(rI) + nCols * (cI) + 1u];


     
     
    yfract = (Y & 0x000FFFFF);

     
    y1 = pYData[(rI) + nCols * (cI + 1)];
    y2 = pYData[(rI) + nCols * (cI + 1) + 1u];

     
    out = ((x1 * (0xFFFFF - xfract)));
    acc = (((q63_t) out * (0xFFFFF - yfract)));

     
    out = ((x2 * (0xFFFFF - yfract)));
    acc += (((q63_t) out * (xfract)));

     
    out = ((y1 * (0xFFFFF - xfract)));
    acc += (((q63_t) out * (yfract)));

     
    out = ((y2 * (yfract)));
    acc += (((q63_t) out * (xfract)));

     
    return (acc >> 40);

  }

  

 
   





























#line 7469 ".\\inc\\arm_math.h"


#line 7477 ".\\inc\\arm_math.h"







#line 7526 ".\\inc\\arm_math.h"

extern void arm_bitreversal_32(
    uint32_t * pSrc,
    const uint16_t bitRevLen,
    const uint16_t * pBitRevTable);














 
#line 43 "src\\TransformFunctions\\arm_rfft_init_f32.c"



 




 











 



static const float32_t realCoefA[8192] = {
  0.500000000000000f, -0.500000000000000f, 0.499616503715515f,
    -0.499999850988388f,
  0.499233007431030f, -0.499999403953552f, 0.498849511146545f,
    -0.499998688697815f,
  0.498466014862061f, -0.499997645616531f, 0.498082518577576f,
    -0.499996334314346f,
  0.497699022293091f, -0.499994695186615f, 0.497315555810928f,
    -0.499992787837982f,
  0.496932059526443f, -0.499990582466125f, 0.496548563241959f,
    -0.499988079071045f,
  0.496165096759796f, -0.499985307455063f, 0.495781600475311f,
    -0.499982208013535f,
  0.495398133993149f, -0.499978810548782f, 0.495014637708664f,
    -0.499975144863129f,
  0.494631171226501f, -0.499971181154251f, 0.494247704744339f,
    -0.499966919422150f,
  0.493864238262177f, -0.499962359666824f, 0.493480771780014f,
    -0.499957501888275f,
  0.493097305297852f, -0.499952346086502f, 0.492713838815689f,
    -0.499946922063828f,
  0.492330402135849f, -0.499941170215607f, 0.491946935653687f,
    -0.499935150146484f,
  0.491563498973846f, -0.499928832054138f, 0.491180062294006f,
    -0.499922215938568f,
  0.490796625614166f, -0.499915301799774f, 0.490413218736649f,
    -0.499908089637756f,
  0.490029782056808f, -0.499900579452515f, 0.489646375179291f,
    -0.499892801046371f,
  0.489262968301773f, -0.499884694814682f, 0.488879561424255f,
    -0.499876320362091f,
  0.488496154546738f, -0.499867647886276f, 0.488112777471542f,
    -0.499858677387238f,
  0.487729400396347f, -0.499849408864975f, 0.487346023321152f,
    -0.499839842319489f,
  0.486962646245956f, -0.499830007553101f, 0.486579269170761f,
    -0.499819844961166f,
  0.486195921897888f, -0.499809414148331f, 0.485812574625015f,
    -0.499798685312271f,
  0.485429257154465f, -0.499787658452988f, 0.485045909881592f,
    -0.499776333570480f,
  0.484662592411041f, -0.499764710664749f, 0.484279274940491f,
    -0.499752789735794f,
  0.483895987272263f, -0.499740600585938f, 0.483512699604034f,
    -0.499728083610535f,
  0.483129411935806f, -0.499715298414230f, 0.482746154069901f,
    -0.499702215194702f,
  0.482362866401672f, -0.499688833951950f, 0.481979638338089f,
    -0.499675154685974f,
  0.481596380472183f, -0.499661177396774f, 0.481213152408600f,
    -0.499646931886673f,
  0.480829954147339f, -0.499632388353348f, 0.480446726083755f,
    -0.499617516994476f,
  0.480063527822495f, -0.499602377414703f, 0.479680359363556f,
    -0.499586939811707f,
  0.479297190904617f, -0.499571204185486f, 0.478914022445679f,
    -0.499555170536041f,
  0.478530883789063f, -0.499538868665695f, 0.478147745132446f,
    -0.499522238969803f,
  0.477764606475830f, -0.499505341053009f, 0.477381497621536f,
    -0.499488145112991f,
  0.476998418569565f, -0.499470651149750f, 0.476615339517593f,
    -0.499452859163284f,
  0.476232260465622f, -0.499434769153595f, 0.475849211215973f,
    -0.499416410923004f,
  0.475466161966324f, -0.499397724866867f, 0.475083142518997f,
    -0.499378770589828f,
  0.474700123071671f, -0.499359518289566f, 0.474317133426666f,
    -0.499339967966080f,
  0.473934143781662f, -0.499320119619370f, 0.473551183938980f,
    -0.499299973249435f,
  0.473168224096298f, -0.499279528856277f, 0.472785294055939f,
    -0.499258816242218f,
  0.472402364015579f, -0.499237775802612f, 0.472019463777542f,
    -0.499216467142105f,
  0.471636593341827f, -0.499194860458374f, 0.471253722906113f,
    -0.499172955751419f,
  0.470870882272720f, -0.499150782823563f, 0.470488041639328f,
    -0.499128282070160f,
  0.470105201005936f, -0.499105513095856f, 0.469722419977188f,
    -0.499082416296005f,
  0.469339638948441f, -0.499059051275253f, 0.468956857919693f,
    -0.499035388231277f,
  0.468574106693268f, -0.499011427164078f, 0.468191385269165f,
    -0.498987197875977f,
  0.467808693647385f, -0.498962640762329f, 0.467426002025604f,
    -0.498937815427780f,
  0.467043310403824f, -0.498912662267685f, 0.466660678386688f,
    -0.498887240886688f,
  0.466278046369553f, -0.498861521482468f, 0.465895414352417f,
    -0.498835533857346f,
  0.465512841939926f, -0.498809218406677f, 0.465130269527435f,
    -0.498782604932785f,
  0.464747726917267f, -0.498755723237991f, 0.464365184307098f,
    -0.498728543519974f,
  0.463982671499252f, -0.498701065778732f, 0.463600188493729f,
    -0.498673290014267f,
  0.463217705488205f, -0.498645216226578f, 0.462835282087326f,
    -0.498616874217987f,
  0.462452858686447f, -0.498588204383850f, 0.462070435285568f,
    -0.498559266328812f,
  0.461688071489334f, -0.498530030250549f, 0.461305707693100f,
    -0.498500496149063f,
  0.460923373699188f, -0.498470664024353f, 0.460541069507599f,
    -0.498440563678741f,
  0.460158795118332f, -0.498410135507584f, 0.459776520729065f,
    -0.498379439115524f,
  0.459394276142120f, -0.498348444700241f, 0.459012061357498f,
    -0.498317152261734f,
  0.458629876375198f, -0.498285561800003f, 0.458247691392899f,
    -0.498253703117371f,
  0.457865566015244f, -0.498221516609192f, 0.457483440637589f,
    -0.498189061880112f,
  0.457101345062256f, -0.498156309127808f, 0.456719279289246f,
    -0.498123258352280f,
  0.456337243318558f, -0.498089909553528f, 0.455955207347870f,
    -0.498056292533875f,
  0.455573230981827f, -0.498022347688675f, 0.455191254615784f,
    -0.497988134622574f,
  0.454809308052063f, -0.497953623533249f, 0.454427421092987f,
    -0.497918814420700f,
  0.454045534133911f, -0.497883707284927f, 0.453663676977158f,
    -0.497848302125931f,
  0.453281819820404f, -0.497812628746033f, 0.452900022268295f,
    -0.497776657342911f,
  0.452518254518509f, -0.497740387916565f, 0.452136516571045f,
    -0.497703820466995f,
  0.451754778623581f, -0.497666954994202f, 0.451373100280762f,
    -0.497629791498184f,
  0.450991421937943f, -0.497592359781265f, 0.450609803199768f,
    -0.497554630041122f,
  0.450228184461594f, -0.497516602277756f, 0.449846625328064f,
    -0.497478276491165f,
  0.449465066194534f, -0.497439652681351f, 0.449083566665649f,
    -0.497400760650635f,
  0.448702067136765f, -0.497361570596695f, 0.448320597410202f,
    -0.497322082519531f,
  0.447939187288284f, -0.497282296419144f, 0.447557777166367f,
    -0.497242212295532f,
  0.447176426649094f, -0.497201830148697f, 0.446795076131821f,
    -0.497161179780960f,
  0.446413785219193f, -0.497120231389999f, 0.446032524108887f,
    -0.497078984975815f,
  0.445651292800903f, -0.497037440538406f, 0.445270061492920f,
    -0.496995598077774f,
  0.444888889789581f, -0.496953487396240f, 0.444507747888565f,
    -0.496911078691483f,
  0.444126635789871f, -0.496868371963501f, 0.443745553493500f,
    -0.496825367212296f,
  0.443364530801773f, -0.496782064437866f, 0.442983508110046f,
    -0.496738493442535f,
  0.442602545022964f, -0.496694594621658f, 0.442221581935883f,
    -0.496650427579880f,
  0.441840678453445f, -0.496605962514877f, 0.441459804773331f,
    -0.496561229228973f,
  0.441078960895538f, -0.496516168117523f, 0.440698176622391f,
    -0.496470838785172f,
  0.440317392349243f, -0.496425211429596f, 0.439936667680740f,
    -0.496379286050797f,
  0.439555943012238f, -0.496333062648773f, 0.439175277948380f,
    -0.496286571025848f,
  0.438794672489166f, -0.496239781379700f, 0.438414067029953f,
    -0.496192663908005f,
  0.438033521175385f, -0.496145308017731f, 0.437653005123138f,
    -0.496097624301910f,
  0.437272518873215f, -0.496049642562866f, 0.436892062425613f,
    -0.496001392602921f,
  0.436511665582657f, -0.495952844619751f, 0.436131268739700f,
    -0.495903998613358f,
  0.435750931501389f, -0.495854884386063f, 0.435370653867722f,
    -0.495805442333221f,
  0.434990376234055f, -0.495755732059479f, 0.434610158205032f,
    -0.495705723762512f,
  0.434229999780655f, -0.495655417442322f, 0.433849841356277f,
    -0.495604842901230f,
  0.433469742536545f, -0.495553970336914f, 0.433089673519135f,
    -0.495502769947052f,
  0.432709634304047f, -0.495451331138611f, 0.432329654693604f,
    -0.495399564504623f,
  0.431949704885483f, -0.495347499847412f, 0.431569814682007f,
    -0.495295166969299f,
  0.431189924478531f, -0.495242536067963f, 0.430810123682022f,
    -0.495189607143402f,
  0.430430322885513f, -0.495136409997940f, 0.430050581693649f,
    -0.495082914829254f,
  0.429670870304108f, -0.495029091835022f, 0.429291218519211f,
    -0.494975030422211f,
  0.428911596536636f, -0.494920641183853f, 0.428532034158707f,
    -0.494865983724594f,
  0.428152471780777f, -0.494810998439789f, 0.427772998809814f,
    -0.494755744934082f,
  0.427393525838852f, -0.494700223207474f, 0.427014142274857f,
    -0.494644373655319f,
  0.426634758710861f, -0.494588255882263f, 0.426255434751511f,
    -0.494531840085983f,
  0.425876170396805f, -0.494475126266479f, 0.425496935844421f,
    -0.494418144226074f,
  0.425117731094360f, -0.494360834360123f, 0.424738585948944f,
    -0.494303256273270f,
  0.424359470605850f, -0.494245409965515f, 0.423980414867401f,
    -0.494187235832214f,
  0.423601418733597f, -0.494128793478012f, 0.423222452402115f,
    -0.494070053100586f,
  0.422843515872955f, -0.494011014699936f, 0.422464638948441f,
    -0.493951678276062f,
  0.422085791826248f, -0.493892073631287f, 0.421707004308701f,
    -0.493832170963287f,
  0.421328276395798f, -0.493771970272064f, 0.420949578285217f,
    -0.493711471557617f,
  0.420570939779282f, -0.493650704622269f, 0.420192331075668f,
    -0.493589639663696f,
  0.419813781976700f, -0.493528276681900f, 0.419435262680054f,
    -0.493466645479202f,
  0.419056802988052f, -0.493404686450958f, 0.418678402900696f,
    -0.493342459201813f,
  0.418300032615662f, -0.493279963731766f, 0.417921721935272f,
    -0.493217140436172f,
  0.417543441057205f, -0.493154048919678f, 0.417165219783783f,
    -0.493090659379959f,
  0.416787058115005f, -0.493026971817017f, 0.416408926248550f,
    -0.492963016033173f,
  0.416030853986740f, -0.492898762226105f, 0.415652841329575f,
    -0.492834210395813f,
  0.415274858474731f, -0.492769360542297f, 0.414896935224533f,
    -0.492704242467880f,
  0.414519041776657f, -0.492638826370239f, 0.414141237735748f,
    -0.492573112249374f,
  0.413763463497162f, -0.492507129907608f, 0.413385748863220f,
    -0.492440819740295f,
  0.413008064031601f, -0.492374241352081f, 0.412630438804626f,
    -0.492307394742966f,
  0.412252873182297f, -0.492240220308304f, 0.411875367164612f,
    -0.492172777652740f,
  0.411497890949249f, -0.492105036973953f, 0.411120474338531f,
    -0.492037028074265f,
  0.410743117332459f, -0.491968721151352f, 0.410365819931030f,
    -0.491900116205215f,
  0.409988552331924f, -0.491831213235855f, 0.409611344337463f,
    -0.491762012243271f,
  0.409234195947647f, -0.491692543029785f, 0.408857107162476f,
    -0.491622805595398f,
  0.408480048179626f, -0.491552740335464f, 0.408103078603745f,
    -0.491482406854630f,
  0.407726138830185f, -0.491411775350571f, 0.407349258661270f,
    -0.491340845823288f,
  0.406972438097000f, -0.491269648075104f, 0.406595647335052f,
    -0.491198152303696f,
  0.406218945980072f, -0.491126358509064f, 0.405842274427414f,
    -0.491054296493530f,
  0.405465662479401f, -0.490981936454773f, 0.405089110136032f,
    -0.490909278392792f,
  0.404712617397308f, -0.490836352109909f, 0.404336184263229f,
    -0.490763127803802f,
  0.403959810733795f, -0.490689605474472f, 0.403583467006683f,
    -0.490615785121918f,
  0.403207212686539f, -0.490541696548462f, 0.402830988168716f,
    -0.490467309951782f,
  0.402454853057861f, -0.490392625331879f, 0.402078747749329f,
    -0.490317672491074f,
  0.401702702045441f, -0.490242421627045f, 0.401326715946198f,
    -0.490166902542114f,
  0.400950789451599f, -0.490091055631638f, 0.400574922561646f,
    -0.490014940500259f,
  0.400199115276337f, -0.489938557147980f, 0.399823367595673f,
    -0.489861875772476f,
  0.399447679519653f, -0.489784896373749f, 0.399072051048279f,
    -0.489707618951797f,
  0.398696482181549f, -0.489630073308945f, 0.398320972919464f,
    -0.489552229642868f,
  0.397945523262024f, -0.489474087953568f, 0.397570133209229f,
    -0.489395678043365f,
  0.397194802761078f, -0.489316970109940f, 0.396819531917572f,
    -0.489237964153290f,
  0.396444320678711f, -0.489158689975739f, 0.396069169044495f,
    -0.489079117774963f,
  0.395694077014923f, -0.488999247550964f, 0.395319044589996f,
    -0.488919109106064f,
  0.394944071769714f, -0.488838672637939f, 0.394569188356400f,
    -0.488757967948914f,
  0.394194334745407f, -0.488676935434341f, 0.393819570541382f,
    -0.488595664501190f,
  0.393444836139679f, -0.488514065742493f, 0.393070191144943f,
    -0.488432198762894f,
  0.392695605754852f, -0.488350033760071f, 0.392321079969406f,
    -0.488267600536346f,
  0.391946613788605f, -0.488184869289398f, 0.391572207212448f,
    -0.488101840019226f,
  0.391197860240936f, -0.488018542528152f, 0.390823602676392f,
    -0.487934947013855f,
  0.390449374914169f, -0.487851053476334f, 0.390075236558914f,
    -0.487766891717911f,
  0.389701157808304f, -0.487682431936264f, 0.389327138662338f,
    -0.487597703933716f,
  0.388953179121017f, -0.487512677907944f, 0.388579308986664f,
    -0.487427353858948f,
  0.388205498456955f, -0.487341761589050f, 0.387831717729568f,
    -0.487255871295929f,
  0.387458056211472f, -0.487169682979584f, 0.387084424495697f,
    -0.487083226442337f,
  0.386710882186890f, -0.486996471881866f, 0.386337369680405f,
    -0.486909449100494f,
  0.385963946580887f, -0.486822128295898f, 0.385590612888336f,
    -0.486734509468079f,
  0.385217308998108f, -0.486646622419357f, 0.384844094514847f,
    -0.486558437347412f,
  0.384470939636230f, -0.486469984054565f, 0.384097874164581f,
    -0.486381232738495f,
  0.383724838495255f, -0.486292183399200f, 0.383351892232895f,
    -0.486202865839005f,
  0.382979035377502f, -0.486113250255585f, 0.382606208324432f,
    -0.486023366451263f,
  0.382233470678329f, -0.485933154821396f, 0.381860792636871f,
    -0.485842704772949f,
  0.381488204002380f, -0.485751956701279f, 0.381115674972534f,
    -0.485660910606384f,
  0.380743205547333f, -0.485569566488266f, 0.380370795726776f,
    -0.485477954149246f,
  0.379998475313187f, -0.485386073589325f, 0.379626244306564f,
    -0.485293895006180f,
  0.379254043102264f, -0.485201418399811f, 0.378881961107254f,
    -0.485108673572540f,
  0.378509908914566f, -0.485015630722046f, 0.378137946128845f,
    -0.484922289848328f,
  0.377766042947769f, -0.484828680753708f, 0.377394229173660f,
    -0.484734803438187f,
  0.377022475004196f, -0.484640628099442f, 0.376650810241699f,
    -0.484546154737473f,
  0.376279205083847f, -0.484451413154602f, 0.375907659530640f,
    -0.484356373548508f,
  0.375536203384399f, -0.484261035919189f, 0.375164806842804f,
    -0.484165430068970f,
  0.374793499708176f, -0.484069555997849f, 0.374422252178192f,
    -0.483973383903503f,
  0.374051094055176f, -0.483876913785934f, 0.373679995536804f,
    -0.483780175447464f,
  0.373308986425400f, -0.483683139085770f, 0.372938036918640f,
    -0.483585834503174f,
  0.372567176818848f, -0.483488231897354f, 0.372196376323700f,
    -0.483390361070633f,
  0.371825665235519f, -0.483292192220688f, 0.371455013751984f,
    -0.483193725347519f,
  0.371084451675415f, -0.483094990253448f, 0.370713949203491f,
    -0.482995986938477f,
  0.370343536138535f, -0.482896685600281f, 0.369973212480545f,
    -0.482797086238861f,
  0.369602948427200f, -0.482697218656540f, 0.369232743978500f,
    -0.482597053050995f,
  0.368862658739090f, -0.482496619224548f, 0.368492603302002f,
    -0.482395917177200f,
  0.368122667074203f, -0.482294887304306f, 0.367752790451050f,
    -0.482193619012833f,
  0.367382973432541f, -0.482092022895813f, 0.367013275623322f,
    -0.481990188360214f,
  0.366643607616425f, -0.481888025999069f, 0.366274058818817f,
    -0.481785595417023f,
  0.365904569625854f, -0.481682896614075f, 0.365535169839859f,
    -0.481579899787903f,
  0.365165829658508f, -0.481476634740829f, 0.364796578884125f,
    -0.481373071670532f,
  0.364427417516708f, -0.481269240379334f, 0.364058345556259f,
    -0.481165111064911f,
  0.363689333200455f, -0.481060713529587f, 0.363320380449295f,
    -0.480956017971039f,
  0.362951546907425f, -0.480851024389267f, 0.362582772970200f,
    -0.480745792388916f,
  0.362214088439941f, -0.480640232563019f, 0.361845493316650f,
    -0.480534434318542f,
  0.361476957798004f, -0.480428308248520f, 0.361108511686325f,
    -0.480321943759918f,
  0.360740154981613f, -0.480215251445770f, 0.360371887683868f,
    -0.480108320713043f,
  0.360003679990768f, -0.480001062154770f, 0.359635561704636f,
    -0.479893565177917f,
  0.359267532825470f, -0.479785770177841f, 0.358899593353271f,
    -0.479677677154541f,
  0.358531713485718f, -0.479569315910339f, 0.358163923025131f,
    -0.479460656642914f,
  0.357796221971512f, -0.479351729154587f, 0.357428610324860f,
    -0.479242533445358f,
  0.357061088085175f, -0.479133039712906f, 0.356693625450134f,
    -0.479023247957230f,
  0.356326282024384f, -0.478913217782974f, 0.355958998203278f,
    -0.478802859783173f,
  0.355591803789139f, -0.478692263364792f, 0.355224698781967f,
    -0.478581339120865f,
  0.354857653379440f, -0.478470176458359f, 0.354490727186203f,
    -0.478358715772629f,
  0.354123860597610f, -0.478246957063675f, 0.353757113218308f,
    -0.478134930133820f,
  0.353390425443649f, -0.478022634983063f, 0.353023827075958f,
    -0.477910041809082f,
  0.352657318115234f, -0.477797180414200f, 0.352290898561478f,
    -0.477684020996094f,
  0.351924568414688f, -0.477570593357086f, 0.351558297872543f,
    -0.477456867694855f,
  0.351192146539688f, -0.477342873811722f, 0.350826084613800f,
    -0.477228611707687f,
  0.350460082292557f, -0.477114051580429f, 0.350094199180603f,
    -0.476999223232269f,
  0.349728375673294f, -0.476884096860886f, 0.349362671375275f,
    -0.476768702268600f,
  0.348997026681900f, -0.476653009653091f, 0.348631471395493f,
    -0.476537048816681f,
  0.348266035318375f, -0.476420819759369f, 0.347900658845901f,
    -0.476304292678833f,
  0.347535371780396f, -0.476187497377396f, 0.347170203924179f,
    -0.476070433855057f,
  0.346805095672607f, -0.475953072309494f, 0.346440106630325f,
    -0.475835442543030f,
  0.346075177192688f, -0.475717514753342f, 0.345710366964340f,
    -0.475599318742752f,
  0.345345616340637f, -0.475480824708939f, 0.344980984926224f,
    -0.475362062454224f,
  0.344616413116455f, -0.475243031978607f, 0.344251960515976f,
    -0.475123733282089f,
  0.343887597322464f, -0.475004136562347f, 0.343523323535919f,
    -0.474884241819382f,
  0.343159139156342f, -0.474764078855515f, 0.342795044183731f,
    -0.474643647670746f,
  0.342431038618088f, -0.474522948265076f, 0.342067122459412f,
    -0.474401950836182f,
  0.341703325510025f, -0.474280685186386f, 0.341339588165283f,
    -0.474159121513367f,
  0.340975970029831f, -0.474037289619446f, 0.340612411499023f,
    -0.473915189504623f,
  0.340248972177505f, -0.473792791366577f, 0.339885622262955f,
    -0.473670125007629f,
  0.339522391557693f, -0.473547190427780f, 0.339159220457077f,
    -0.473423957824707f,
  0.338796168565750f, -0.473300457000732f, 0.338433176279068f,
    -0.473176687955856f,
  0.338070303201675f, -0.473052620887756f, 0.337707549333572f,
    -0.472928285598755f,
  0.337344855070114f, -0.472803652286530f, 0.336982280015945f,
    -0.472678780555725f,
  0.336619764566422f, -0.472553610801697f, 0.336257368326187f,
    -0.472428143024445f,
  0.335895091295242f, -0.472302407026291f, 0.335532873868942f,
    -0.472176402807236f,
  0.335170775651932f, -0.472050130367279f, 0.334808766841888f,
    -0.471923559904099f,
  0.334446847438812f, -0.471796721220016f, 0.334085017442703f,
    -0.471669614315033f,
  0.333723306655884f, -0.471542209386826f, 0.333361685276031f,
    -0.471414536237717f,
  0.333000183105469f, -0.471286594867706f, 0.332638740539551f,
    -0.471158385276794f,
  0.332277417182922f, -0.471029877662659f, 0.331916213035584f,
    -0.470901101827621f,
  0.331555068492889f, -0.470772027969360f, 0.331194043159485f,
    -0.470642685890198f,
  0.330833107233047f, -0.470513075590134f, 0.330472290515900f,
    -0.470383197069168f,
  0.330111563205719f, -0.470253020524979f, 0.329750925302505f,
    -0.470122605562210f,
  0.329390406608582f, -0.469991862773895f, 0.329029977321625f,
    -0.469860881567001f,
  0.328669637441635f, -0.469729602336884f, 0.328309416770935f,
    -0.469598054885864f,
  0.327949285507202f, -0.469466239213943f, 0.327589273452759f,
    -0.469334155321121f,
  0.327229350805283f, -0.469201773405075f, 0.326869517564774f,
    -0.469069123268127f,
  0.326509803533554f, -0.468936175107956f, 0.326150178909302f,
    -0.468802988529205f,
  0.325790673494339f, -0.468669503927231f, 0.325431257486343f,
    -0.468535751104355f,
  0.325071930885315f, -0.468401730060577f, 0.324712723493576f,
    -0.468267410993576f,
  0.324353635311127f, -0.468132823705673f, 0.323994606733322f,
    -0.467997968196869f,
  0.323635727167130f, -0.467862844467163f, 0.323276937007904f,
    -0.467727422714233f,
  0.322918236255646f, -0.467591762542725f, 0.322559654712677f,
    -0.467455804347992f,
  0.322201162576675f, -0.467319577932358f, 0.321842789649963f,
    -0.467183053493500f,
  0.321484506130219f, -0.467046260833740f, 0.321126341819763f,
    -0.466909229755402f,
  0.320768296718597f, -0.466771900653839f, 0.320410341024399f,
    -0.466634273529053f,
  0.320052474737167f, -0.466496407985687f, 0.319694727659225f,
    -0.466358244419098f,
  0.319337099790573f, -0.466219812631607f, 0.318979561328888f,
    -0.466081112623215f,
  0.318622142076492f, -0.465942144393921f, 0.318264812231064f,
    -0.465802878141403f,
  0.317907601594925f, -0.465663343667984f, 0.317550510168076f,
    -0.465523540973663f,
  0.317193508148193f, -0.465383470058441f, 0.316836595535278f,
    -0.465243130922318f,
  0.316479831933975f, -0.465102523565292f, 0.316123157739639f,
    -0.464961618185043f,
  0.315766572952271f, -0.464820444583893f, 0.315410137176514f,
    -0.464679002761841f,
  0.315053790807724f, -0.464537292718887f, 0.314697533845901f,
    -0.464395314455032f,
  0.314341396093369f, -0.464253038167953f, 0.313985377550125f,
    -0.464110493659973f,
  0.313629478216171f, -0.463967710733414f, 0.313273668289185f,
    -0.463824629783630f,
  0.312917977571487f, -0.463681250810623f, 0.312562376260757f,
    -0.463537633419037f,
  0.312206923961639f, -0.463393747806549f, 0.311851561069489f,
    -0.463249564170837f,
  0.311496287584305f, -0.463105112314224f, 0.311141163110733f,
    -0.462960392236710f,
  0.310786128044128f, -0.462815403938293f, 0.310431212186813f,
    -0.462670147418976f,
  0.310076385736465f, -0.462524622678757f, 0.309721708297729f,
    -0.462378799915314f,
  0.309367120265961f, -0.462232738733292f, 0.309012651443481f,
    -0.462086379528046f,
  0.308658272027969f, -0.461939752101898f, 0.308304041624069f,
    -0.461792886257172f,
  0.307949900627136f, -0.461645722389221f, 0.307595878839493f,
    -0.461498260498047f,
  0.307241976261139f, -0.461350560188293f, 0.306888192892075f,
    -0.461202591657639f,
  0.306534498929977f, -0.461054325103760f, 0.306180924177170f,
    -0.460905820131302f,
  0.305827468633652f, -0.460757017135620f, 0.305474132299423f,
    -0.460607945919037f,
  0.305120915174484f, -0.460458606481552f, 0.304767817258835f,
    -0.460309028625488f,
  0.304414808750153f, -0.460159152746201f, 0.304061919450760f,
    -0.460008978843689f,
  0.303709149360657f, -0.459858566522598f, 0.303356528282166f,
    -0.459707885980606f,
  0.303003966808319f, -0.459556937217712f, 0.302651554346085f,
    -0.459405690431595f,
  0.302299261093140f, -0.459254205226898f, 0.301947087049484f,
    -0.459102421998978f,
  0.301595002412796f, -0.458950400352478f, 0.301243066787720f,
    -0.458798080682755f,
  0.300891220569611f, -0.458645492792130f, 0.300539493560791f,
    -0.458492636680603f,
  0.300187885761261f, -0.458339542150497f, 0.299836426973343f,
    -0.458186149597168f,
  0.299485057592392f, -0.458032488822937f, 0.299133807420731f,
    -0.457878559827805f,
  0.298782676458359f, -0.457724362611771f, 0.298431664705276f,
    -0.457569897174835f,
  0.298080772161484f, -0.457415163516998f, 0.297729998826981f,
    -0.457260161638260f,
  0.297379344701767f, -0.457104891538620f, 0.297028809785843f,
    -0.456949323415756f,
  0.296678394079208f, -0.456793516874313f, 0.296328097581863f,
    -0.456637442111969f,
  0.295977920293808f, -0.456481099128723f, 0.295627862215042f,
    -0.456324487924576f,
  0.295277923345566f, -0.456167578697205f, 0.294928103685379f,
    -0.456010431051254f,
  0.294578403234482f, -0.455853015184402f, 0.294228851795197f,
    -0.455695331096649f,
  0.293879389762878f, -0.455537378787994f, 0.293530046939850f,
    -0.455379128456116f,
  0.293180853128433f, -0.455220639705658f, 0.292831748723984f,
    -0.455061882734299f,
  0.292482793331146f, -0.454902857542038f, 0.292133957147598f,
    -0.454743564128876f,
  0.291785210371017f, -0.454584002494812f, 0.291436612606049f,
    -0.454424172639847f,
  0.291088134050369f, -0.454264044761658f, 0.290739774703979f,
    -0.454103678464890f,
  0.290391564369202f, -0.453943043947220f, 0.290043443441391f,
    -0.453782171010971f,
  0.289695471525192f, -0.453621000051498f, 0.289347589015961f,
    -0.453459560871124f,
  0.288999855518341f, -0.453297853469849f, 0.288652241230011f,
    -0.453135877847672f,
  0.288304775953293f, -0.452973634004593f, 0.287957400083542f,
    -0.452811151742935f,
  0.287610173225403f, -0.452648371458054f, 0.287263035774231f,
    -0.452485352754593f,
  0.286916047334671f, -0.452322036027908f, 0.286569178104401f,
    -0.452158480882645f,
  0.286222457885742f, -0.451994657516479f, 0.285875827074051f,
    -0.451830536127090f,
  0.285529345273972f, -0.451666176319122f, 0.285182982683182f,
    -0.451501548290253f,
  0.284836769104004f, -0.451336652040482f, 0.284490644931793f,
    -0.451171487569809f,
  0.284144669771194f, -0.451006084680557f, 0.283798813819885f,
    -0.450840383768082f,
  0.283453077077866f, -0.450674414634705f, 0.283107489347458f,
    -0.450508207082748f,
  0.282762020826340f, -0.450341701507568f, 0.282416671514511f,
    -0.450174957513809f,
  0.282071471214294f, -0.450007945299149f, 0.281726360321045f,
    -0.449840664863586f,
  0.281381398439407f, -0.449673116207123f, 0.281036585569382f,
    -0.449505299329758f,
  0.280691891908646f, -0.449337244033813f, 0.280347317457199f,
    -0.449168890714645f,
  0.280002862215042f, -0.449000298976898f, 0.279658555984497f,
    -0.448831409215927f,
  0.279314368963242f, -0.448662281036377f, 0.278970301151276f,
    -0.448492884635925f,
  0.278626382350922f, -0.448323249816895f, 0.278282582759857f,
    -0.448153316974640f,
  0.277938932180405f, -0.447983115911484f, 0.277595400810242f,
    -0.447812676429749f,
  0.277251988649368f, -0.447641968727112f, 0.276908725500107f,
    -0.447470992803574f,
  0.276565581560135f, -0.447299748659134f, 0.276222556829453f,
    -0.447128236293793f,
  0.275879681110382f, -0.446956485509872f, 0.275536954402924f,
    -0.446784436702728f,
  0.275194346904755f, -0.446612149477005f, 0.274851858615875f,
    -0.446439594030380f,
  0.274509519338608f, -0.446266770362854f, 0.274167299270630f,
    -0.446093708276749f,
  0.273825198411942f, -0.445920348167419f, 0.273483246564865f,
    -0.445746749639511f,
  0.273141443729401f, -0.445572882890701f, 0.272799760103226f,
    -0.445398747920990f,
  0.272458195686340f, -0.445224374532700f, 0.272116780281067f,
    -0.445049703121185f,
  0.271775513887405f, -0.444874793291092f, 0.271434366703033f,
    -0.444699615240097f,
  0.271093338727951f, -0.444524168968201f, 0.270752459764481f,
    -0.444348484277725f,
  0.270411729812622f, -0.444172531366348f, 0.270071119070053f,
    -0.443996280431747f,
  0.269730657339096f, -0.443819820880890f, 0.269390314817429f,
    -0.443643063306808f,
  0.269050091505051f, -0.443466067314148f, 0.268710047006607f,
    -0.443288803100586f,
  0.268370121717453f, -0.443111270666122f, 0.268030315637589f,
    -0.442933470010757f,
  0.267690658569336f, -0.442755430936813f, 0.267351150512695f,
    -0.442577123641968f,
  0.267011761665344f, -0.442398548126221f, 0.266672492027283f,
    -0.442219734191895f,
  0.266333401203156f, -0.442040622234344f, 0.265994429588318f,
    -0.441861271858215f,
  0.265655577182770f, -0.441681683063507f, 0.265316903591156f,
    -0.441501796245575f,
  0.264978319406509f, -0.441321671009064f, 0.264639914035797f,
    -0.441141277551651f,
  0.264301627874374f, -0.440960645675659f, 0.263963490724564f,
    -0.440779715776443f,
  0.263625472784042f, -0.440598547458649f, 0.263287603855133f,
    -0.440417140722275f,
  0.262949883937836f, -0.440235435962677f, 0.262612313032150f,
    -0.440053492784500f,
  0.262274861335754f, -0.439871311187744f, 0.261937558650970f,
    -0.439688831567764f,
  0.261600375175476f, -0.439506113529205f, 0.261263370513916f,
    -0.439323127269745f,
  0.260926485061646f, -0.439139902591705f, 0.260589718818665f,
    -0.438956409692764f,
  0.260253131389618f, -0.438772648572922f, 0.259916663169861f,
    -0.438588619232178f,
  0.259580343961716f, -0.438404351472855f, 0.259244143962860f,
    -0.438219845294952f,
  0.258908122777939f, -0.438035041093826f, 0.258572220802307f,
    -0.437849998474121f,
  0.258236467838287f, -0.437664687633514f, 0.257900834083557f,
    -0.437479138374329f,
  0.257565379142761f, -0.437293320894241f, 0.257230043411255f,
    -0.437107264995575f,
  0.256894856691360f, -0.436920911073685f, 0.256559818983078f,
    -0.436734348535538f,
  0.256224930286407f, -0.436547487974167f, 0.255890160799026f,
    -0.436360388994217f,
  0.255555540323257f, -0.436173021793365f, 0.255221068859100f,
    -0.435985416173935f,
  0.254886746406555f, -0.435797542333603f, 0.254552572965622f,
    -0.435609430074692f,
  0.254218548536301f, -0.435421019792557f, 0.253884643316269f,
    -0.435232400894165f,
  0.253550916910172f, -0.435043483972549f, 0.253217309713364f,
    -0.434854328632355f,
  0.252883851528168f, -0.434664934873581f, 0.252550542354584f,
    -0.434475272893906f,
  0.252217382192612f, -0.434285342693329f, 0.251884341239929f,
    -0.434095174074173f,
  0.251551479101181f, -0.433904737234116f, 0.251218736171722f,
    -0.433714061975479f,
  0.250886172056198f, -0.433523118495941f, 0.250553727149963f,
    -0.433331936597824f,
  0.250221431255341f, -0.433140486478806f, 0.249889299273491f,
    -0.432948768138886f,
  0.249557301402092f, -0.432756811380386f, 0.249225467443466f,
    -0.432564586400986f,
  0.248893767595291f, -0.432372123003006f, 0.248562216758728f,
    -0.432179391384125f,
  0.248230814933777f, -0.431986421346664f, 0.247899547219276f,
    -0.431793183088303f,
  0.247568443417549f, -0.431599706411362f, 0.247237488627434f,
    -0.431405961513519f,
  0.246906682848930f, -0.431211978197098f, 0.246576011180878f,
    -0.431017726659775f,
  0.246245503425598f, -0.430823236703873f, 0.245915144681931f,
    -0.430628478527069f,
  0.245584934949875f, -0.430433481931686f, 0.245254859328270f,
    -0.430238217115402f,
  0.244924947619438f, -0.430042684078217f, 0.244595184922218f,
    -0.429846942424774f,
  0.244265571236610f, -0.429650902748108f, 0.243936106562614f,
    -0.429454624652863f,
  0.243606805801392f, -0.429258108139038f, 0.243277639150620f,
    -0.429061323404312f,
  0.242948621511459f, -0.428864300251007f, 0.242619767785072f,
    -0.428667008876801f,
  0.242291063070297f, -0.428469479084015f, 0.241962507367134f,
    -0.428271710872650f,
  0.241634100675583f, -0.428073674440384f, 0.241305842995644f,
    -0.427875369787216f,
  0.240977749228477f, -0.427676826715469f, 0.240649804472923f,
    -0.427478045225143f,
  0.240322008728981f, -0.427278995513916f, 0.239994361996651f,
    -0.427079707384110f,
  0.239666879177094f, -0.426880151033401f, 0.239339530467987f,
    -0.426680356264114f,
  0.239012360572815f, -0.426480293273926f, 0.238685324788094f,
    -0.426279991865158f,
  0.238358452916145f, -0.426079452037811f, 0.238031730055809f,
    -0.425878643989563f,
  0.237705156207085f, -0.425677597522736f, 0.237378746271133f,
    -0.425476282835007f,
  0.237052485346794f, -0.425274729728699f, 0.236726388335228f,
    -0.425072938203812f,
  0.236400425434113f, -0.424870878458023f, 0.236074641346931f,
    -0.424668580293655f,
  0.235749006271362f, -0.424466013908386f, 0.235423520207405f,
    -0.424263238906860f,
  0.235098183155060f, -0.424060165882111f, 0.234773010015488f,
    -0.423856884241104f,
  0.234448000788689f, -0.423653304576874f, 0.234123140573502f,
    -0.423449516296387f,
  0.233798429369926f, -0.423245459794998f, 0.233473882079124f,
    -0.423041164875031f,
  0.233149498701096f, -0.422836631536484f, 0.232825264334679f,
    -0.422631829977036f,
  0.232501193881035f, -0.422426789999008f, 0.232177272439003f,
    -0.422221481800079f,
  0.231853514909744f, -0.422015935182571f, 0.231529906392097f,
    -0.421810150146484f,
  0.231206461787224f, -0.421604126691818f, 0.230883181095123f,
    -0.421397835016251f,
  0.230560049414635f, -0.421191304922104f, 0.230237081646919f,
    -0.420984506607056f,
  0.229914262890816f, -0.420777499675751f, 0.229591608047485f,
    -0.420570224523544f,
  0.229269117116928f, -0.420362681150436f, 0.228946775197983f,
    -0.420154929161072f,
  0.228624612092972f, -0.419946908950806f, 0.228302597999573f,
    -0.419738620519638f,
  0.227980732917786f, -0.419530123472214f, 0.227659046649933f,
    -0.419321358203888f,
  0.227337509393692f, -0.419112354516983f, 0.227016136050224f,
    -0.418903112411499f,
  0.226694911718369f, -0.418693602085114f, 0.226373866200447f,
    -0.418483853340149f,
  0.226052969694138f, -0.418273866176605f, 0.225732237100601f,
    -0.418063640594482f,
  0.225411668419838f, -0.417853146791458f, 0.225091263651848f,
    -0.417642414569855f,
  0.224771007895470f, -0.417431443929672f, 0.224450930953026f,
    -0.417220205068588f,
  0.224131003022194f, -0.417008757591248f, 0.223811239004135f,
    -0.416797041893005f,
  0.223491653800011f, -0.416585087776184f, 0.223172217607498f,
    -0.416372895240784f,
  0.222852945327759f, -0.416160434484482f, 0.222533836960793f,
    -0.415947735309601f,
  0.222214877605438f, -0.415734797716141f, 0.221896097064018f,
    -0.415521621704102f,
  0.221577480435371f, -0.415308207273483f, 0.221259027719498f,
    -0.415094524621964f,
  0.220940738916397f, -0.414880603551865f, 0.220622614026070f,
    -0.414666473865509f,
  0.220304638147354f, -0.414452046155930f, 0.219986841082573f,
    -0.414237409830093f,
  0.219669207930565f, -0.414022535085678f, 0.219351738691330f,
    -0.413807392120361f,
  0.219034433364868f, -0.413592010736465f, 0.218717306852341f,
    -0.413376390933990f,
  0.218400329351425f, -0.413160532712936f, 0.218083515763283f,
    -0.412944436073303f,
  0.217766880989075f, -0.412728071212769f, 0.217450410127640f,
    -0.412511497735977f,
  0.217134088277817f, -0.412294656038284f, 0.216817945241928f,
    -0.412077575922012f,
  0.216501981019974f, -0.411860257387161f, 0.216186165809631f,
    -0.411642700433731f,
  0.215870529413223f, -0.411424905061722f, 0.215555042028427f,
    -0.411206841468811f,
  0.215239733457565f, -0.410988569259644f, 0.214924603700638f,
    -0.410770028829575f,
  0.214609622955322f, -0.410551249980927f, 0.214294821023941f,
    -0.410332232713699f,
  0.213980183005333f, -0.410112977027893f, 0.213665723800659f,
    -0.409893482923508f,
  0.213351413607597f, -0.409673750400543f, 0.213037282228470f,
    -0.409453779459000f,
  0.212723329663277f, -0.409233570098877f, 0.212409526109695f,
    -0.409013092517853f,
  0.212095901370049f, -0.408792406320572f, 0.211782455444336f,
    -0.408571451902390f,
  0.211469158530235f, -0.408350288867950f, 0.211156040430069f,
    -0.408128857612610f,
  0.210843101143837f, -0.407907217741013f, 0.210530325770378f,
    -0.407685309648514f,
  0.210217714309692f, -0.407463163137436f, 0.209905281662941f,
    -0.407240778207779f,
  0.209593027830124f, -0.407018154859543f, 0.209280923008919f,
    -0.406795293092728f,
  0.208969011902809f, -0.406572192907333f, 0.208657249808311f,
    -0.406348884105682f,
  0.208345666527748f, -0.406125307083130f, 0.208034262061119f,
    -0.405901491641998f,
  0.207723021507263f, -0.405677437782288f, 0.207411959767342f,
    -0.405453115701675f,
  0.207101076841354f, -0.405228585004807f, 0.206790357828140f,
    -0.405003815889359f,
  0.206479802727699f, -0.404778808355331f, 0.206169426441193f,
    -0.404553562402725f,
  0.205859228968620f, -0.404328078031540f, 0.205549195408821f,
    -0.404102355241776f,
  0.205239340662956f, -0.403876423835754f, 0.204929664731026f,
    -0.403650224208832f,
  0.204620152711868f, -0.403423786163330f, 0.204310819506645f,
    -0.403197109699249f,
  0.204001650214195f, -0.402970194816589f, 0.203692659735680f,
    -0.402743041515350f,
  0.203383848071098f, -0.402515679597855f, 0.203075215220451f,
    -0.402288049459457f,
  0.202766746282578f, -0.402060180902481f, 0.202458456158638f,
    -0.401832103729248f,
  0.202150344848633f, -0.401603758335114f, 0.201842412352562f,
    -0.401375204324722f,
  0.201534643769264f, -0.401146411895752f, 0.201227053999901f,
    -0.400917351245880f,
  0.200919643044472f, -0.400688081979752f, 0.200612410902977f,
    -0.400458574295044f,
  0.200305357575417f, -0.400228828191757f, 0.199998468160629f,
    -0.399998843669891f,
  0.199691757559776f, -0.399768620729446f, 0.199385225772858f,
    -0.399538189172745f,
  0.199078872799873f, -0.399307489395142f, 0.198772698640823f,
    -0.399076581001282f,
  0.198466703295708f, -0.398845434188843f, 0.198160871863365f,
    -0.398614019155502f,
  0.197855234146118f, -0.398382395505905f, 0.197549775242805f,
    -0.398150533437729f,
  0.197244480252266f, -0.397918462753296f, 0.196939364075661f,
    -0.397686123847961f,
  0.196634441614151f, -0.397453576326370f, 0.196329683065414f,
    -0.397220760583878f,
  0.196025103330612f, -0.396987736225128f, 0.195720717310905f,
    -0.396754473447800f,
  0.195416495203972f, -0.396520972251892f, 0.195112451910973f,
    -0.396287262439728f,
  0.194808602333069f, -0.396053284406662f, 0.194504916667938f,
    -0.395819097757339f,
  0.194201424717903f, -0.395584672689438f, 0.193898096680641f,
    -0.395350009202957f,
  0.193594962358475f, -0.395115107297897f, 0.193292006850243f,
    -0.394879996776581f,
  0.192989215254784f, -0.394644618034363f, 0.192686617374420f,
    -0.394409030675888f,
  0.192384198307991f, -0.394173204898834f, 0.192081972956657f,
    -0.393937170505524f,
  0.191779911518097f, -0.393700867891312f, 0.191478043794632f,
    -0.393464356660843f,
  0.191176339983940f, -0.393227607011795f, 0.190874829888344f,
    -0.392990618944168f,
  0.190573498606682f, -0.392753422260284f, 0.190272361040115f,
    -0.392515957355499f,
  0.189971387386322f, -0.392278283834457f, 0.189670607447624f,
    -0.392040401697159f,
  0.189370006322861f, -0.391802251338959f, 0.189069598913193f,
    -0.391563892364502f,
  0.188769355416298f, -0.391325294971466f, 0.188469305634499f,
    -0.391086459159851f,
  0.188169434666634f, -0.390847414731979f, 0.187869757413864f,
    -0.390608131885529f,
  0.187570258975029f, -0.390368610620499f, 0.187270939350128f,
    -0.390128880739212f,
  0.186971798539162f, -0.389888882637024f, 0.186672851443291f,
    -0.389648675918579f,
  0.186374098062515f, -0.389408260583878f, 0.186075508594513f,
    -0.389167606830597f,
  0.185777112841606f, -0.388926714658737f, 0.185478910803795f,
    -0.388685584068298f,
  0.185180887579918f, -0.388444244861603f, 0.184883043169975f,
    -0.388202667236328f,
  0.184585392475128f, -0.387960851192474f, 0.184287920594215f,
    -0.387718826532364f,
  0.183990627527237f, -0.387476563453674f, 0.183693528175354f,
    -0.387234061956406f,
  0.183396622538567f, -0.386991351842880f, 0.183099895715714f,
    -0.386748403310776f,
  0.182803362607956f, -0.386505216360092f, 0.182507008314133f,
    -0.386261820793152f,
  0.182210832834244f, -0.386018186807632f, 0.181914865970612f,
    -0.385774344205856f,
  0.181619063019753f, -0.385530263185501f, 0.181323468685150f,
    -0.385285943746567f,
  0.181028053164482f, -0.385041415691376f, 0.180732816457748f,
    -0.384796649217606f,
  0.180437773466110f, -0.384551674127579f, 0.180142924189568f,
    -0.384306460618973f,
  0.179848253726959f, -0.384061008691788f, 0.179553776979446f,
    -0.383815348148346f,
  0.179259493947029f, -0.383569449186325f, 0.178965389728546f,
    -0.383323341608047f,
  0.178671479225159f, -0.383076995611191f, 0.178377762436867f,
    -0.382830440998077f,
  0.178084224462509f, -0.382583618164063f, 0.177790880203247f,
    -0.382336616516113f,
  0.177497729659081f, -0.382089376449585f, 0.177204772830009f,
    -0.381841897964478f,
  0.176911994814873f, -0.381594210863113f, 0.176619410514832f,
    -0.381346285343170f,
  0.176327019929886f, -0.381098151206970f, 0.176034808158875f,
    -0.380849778652191f,
  0.175742805004120f, -0.380601197481155f, 0.175450980663300f,
    -0.380352377891541f,
  0.175159350037575f, -0.380103349685669f, 0.174867913126946f,
    -0.379854083061218f,
  0.174576655030251f, -0.379604607820511f, 0.174285605549812f,
    -0.379354894161224f,
  0.173994734883308f, -0.379104942083359f, 0.173704057931900f,
    -0.378854811191559f,
  0.173413574695587f, -0.378604412078857f, 0.173123285174370f,
    -0.378353834152222f,
  0.172833189368248f, -0.378102988004684f, 0.172543287277222f,
    -0.377851963043213f,
  0.172253578901291f, -0.377600699663162f, 0.171964049339294f,
    -0.377349197864532f,
  0.171674728393555f, -0.377097487449646f, 0.171385586261749f,
    -0.376845568418503f,
  0.171096652746201f, -0.376593410968781f, 0.170807912945747f,
    -0.376341015100479f,
  0.170519351959229f, -0.376088410615921f, 0.170230999588966f,
    -0.375835597515106f,
  0.169942826032639f, -0.375582575798035f, 0.169654861092567f,
    -0.375329315662384f,
  0.169367074966431f, -0.375075817108154f, 0.169079497456551f,
    -0.374822109937668f,
  0.168792113661766f, -0.374568194150925f, 0.168504923582077f,
    -0.374314039945602f,
  0.168217927217484f, -0.374059677124023f, 0.167931124567986f,
    -0.373805105686188f,
  0.167644515633583f, -0.373550295829773f, 0.167358100414276f,
    -0.373295277357101f,
  0.167071878910065f, -0.373040050268173f, 0.166785866022110f,
    -0.372784584760666f,
  0.166500031948090f, -0.372528880834579f, 0.166214406490326f,
    -0.372272998094559f,
  0.165928974747658f, -0.372016876935959f, 0.165643751621246f,
    -0.371760547161102f,
  0.165358707308769f, -0.371503978967667f, 0.165073871612549f,
    -0.371247202157974f,
  0.164789214730263f, -0.370990216732025f, 0.164504766464233f,
    -0.370732992887497f,
  0.164220526814461f, -0.370475560426712f, 0.163936465978622f,
    -0.370217919349670f,
  0.163652613759041f, -0.369960039854050f, 0.163368955254555f,
    -0.369701951742172f,
  0.163085505366325f, -0.369443655014038f, 0.162802234292030f,
    -0.369185149669647f,
  0.162519171833992f, -0.368926405906677f, 0.162236317992210f,
    -0.368667453527451f,
  0.161953642964363f, -0.368408292531967f, 0.161671176552773f,
    -0.368148893117905f,
  0.161388918757439f, -0.367889285087585f, 0.161106839776039f,
    -0.367629468441010f,
  0.160824984312058f, -0.367369443178177f, 0.160543307662010f,
    -0.367109179496765f,
  0.160261839628220f, -0.366848707199097f, 0.159980565309525f,
    -0.366588026285172f,
  0.159699499607086f, -0.366327136754990f, 0.159418627619743f,
    -0.366066008806229f,
  0.159137964248657f, -0.365804702043533f, 0.158857494592667f,
    -0.365543156862259f,
  0.158577233552933f, -0.365281373262405f, 0.158297166228294f,
    -0.365019410848618f,
  0.158017292618752f, -0.364757210016251f, 0.157737627625465f,
    -0.364494800567627f,
  0.157458171248436f, -0.364232182502747f, 0.157178908586502f,
    -0.363969355821610f,
  0.156899839639664f, -0.363706320524216f, 0.156620979309082f,
    -0.363443046808243f,
  0.156342327594757f, -0.363179564476013f, 0.156063869595528f,
    -0.362915903329849f,
  0.155785620212555f, -0.362651973962784f, 0.155507579445839f,
    -0.362387865781784f,
  0.155229732394218f, -0.362123548984528f, 0.154952079057693f,
    -0.361858993768692f,
  0.154674649238586f, -0.361594229936600f, 0.154397398233414f,
    -0.361329287290573f,
  0.154120370745659f, -0.361064106225967f, 0.153843536973000f,
    -0.360798716545105f,
  0.153566911816597f, -0.360533088445663f, 0.153290495276451f,
    -0.360267281532288f,
  0.153014272451401f, -0.360001266002655f, 0.152738258242607f,
    -0.359735012054443f,
  0.152462437748909f, -0.359468549489975f, 0.152186840772629f,
    -0.359201908111572f,
  0.151911437511444f, -0.358935028314590f, 0.151636242866516f,
    -0.358667939901352f,
  0.151361241936684f, -0.358400642871857f, 0.151086464524269f,
    -0.358133137226105f,
  0.150811880826950f, -0.357865422964096f, 0.150537505745888f,
    -0.357597470283508f,
  0.150263324379921f, -0.357329338788986f, 0.149989366531372f,
    -0.357060998678207f,
  0.149715602397919f, -0.356792420148849f, 0.149442046880722f,
    -0.356523662805557f,
  0.149168699979782f, -0.356254696846008f, 0.148895561695099f,
    -0.355985492467880f,
  0.148622632026672f, -0.355716109275818f, 0.148349896073341f,
    -0.355446487665176f,
  0.148077383637428f, -0.355176687240601f, 0.147805064916611f,
    -0.354906648397446f,
  0.147532954812050f, -0.354636400938034f, 0.147261068224907f,
    -0.354365974664688f,
  0.146989375352860f, -0.354095309972763f, 0.146717891097069f,
    -0.353824466466904f,
  0.146446615457535f, -0.353553384542465f, 0.146175548434258f,
    -0.353282123804092f,
  0.145904675126076f, -0.353010624647141f, 0.145634025335312f,
    -0.352738946676254f,
  0.145363584160805f, -0.352467030286789f, 0.145093351602554f,
    -0.352194935083389f,
  0.144823327660561f, -0.351922631263733f, 0.144553512334824f,
    -0.351650089025497f,
  0.144283905625343f, -0.351377367973328f, 0.144014507532120f,
    -0.351104438304901f,
  0.143745318055153f, -0.350831300020218f, 0.143476337194443f,
    -0.350557953119278f,
  0.143207564949989f, -0.350284397602081f, 0.142939001321793f,
    -0.350010633468628f,
  0.142670661211014f, -0.349736660718918f, 0.142402514815331f,
    -0.349462509155273f,
  0.142134591937065f, -0.349188119173050f, 0.141866862773895f,
    -0.348913550376892f,
  0.141599357128143f, -0.348638743162155f, 0.141332060098648f,
    -0.348363757133484f,
  0.141064971685410f, -0.348088562488556f, 0.140798106789589f,
    -0.347813159227371f,
  0.140531435608864f, -0.347537547349930f, 0.140264987945557f,
    -0.347261756658554f,
  0.139998748898506f, -0.346985727548599f, 0.139732718467712f,
    -0.346709519624710f,
  0.139466896653175f, -0.346433073282242f, 0.139201298356056f,
    -0.346156448125839f,
  0.138935908675194f, -0.345879614353180f, 0.138670727610588f,
    -0.345602601766586f,
  0.138405755162239f, -0.345325350761414f, 0.138141006231308f,
    -0.345047920942307f,
  0.137876465916634f, -0.344770282506943f, 0.137612134218216f,
    -0.344492435455322f,
  0.137348011136055f, -0.344214379787445f, 0.137084111571312f,
    -0.343936115503311f,
  0.136820420622826f, -0.343657672405243f, 0.136556953191757f,
    -0.343379020690918f,
  0.136293679475784f, -0.343100160360336f, 0.136030644178391f,
    -0.342821091413498f,
  0.135767802596092f, -0.342541843652725f, 0.135505184531212f,
    -0.342262357473373f,
  0.135242775082588f, -0.341982692480087f, 0.134980589151382f,
    -0.341702848672867f,
  0.134718611836433f, -0.341422766447067f, 0.134456858038902f,
    -0.341142505407333f,
  0.134195312857628f, -0.340862035751343f, 0.133933976292610f,
    -0.340581357479095f,
  0.133672863245010f, -0.340300500392914f, 0.133411958813667f,
    -0.340019434690475f,
  0.133151277899742f, -0.339738160371780f, 0.132890805602074f,
    -0.339456677436829f,
  0.132630556821823f, -0.339175015687943f, 0.132370531558990f,
    -0.338893145322800f,
  0.132110700011253f, -0.338611096143723f, 0.131851106882095f,
    -0.338328808546066f,
  0.131591722369194f, -0.338046342134476f, 0.131332546472549f,
    -0.337763696908951f,
  0.131073594093323f, -0.337480813264847f, 0.130814850330353f,
    -0.337197750806808f,
  0.130556344985962f, -0.336914509534836f, 0.130298033356667f,
    -0.336631029844284f,
  0.130039945244789f, -0.336347371339798f, 0.129782080650330f,
    -0.336063534021378f,
  0.129524439573288f, -0.335779488086700f, 0.129267007112503f,
    -0.335495233535767f,
  0.129009798169136f, -0.335210770368576f, 0.128752797842026f,
    -0.334926128387451f,
  0.128496021032333f, -0.334641307592392f, 0.128239467740059f,
    -0.334356248378754f,
  0.127983123064041f, -0.334071010351181f, 0.127727001905441f,
    -0.333785593509674f,
  0.127471104264259f, -0.333499968051910f, 0.127215430140495f,
    -0.333214133977890f,
  0.126959964632988f, -0.332928121089935f, 0.126704722642899f,
    -0.332641899585724f,
  0.126449704170227f, -0.332355499267578f, 0.126194894313812f,
    -0.332068890333176f,
  0.125940307974815f, -0.331782072782516f, 0.125685945153236f,
    -0.331495076417923f,
  0.125431805849075f, -0.331207901239395f, 0.125177875161171f,
    -0.330920487642288f,
  0.124924175441265f, -0.330632925033569f, 0.124670691788197f,
    -0.330345153808594f,
  0.124417431652546f, -0.330057173967361f, 0.124164395034313f,
    -0.329769015312195f,
  0.123911574482918f, -0.329480648040771f, 0.123658977448940f,
    -0.329192101955414f,
  0.123406603932381f, -0.328903347253799f, 0.123154446482658f,
    -0.328614413738251f,
  0.122902512550354f, -0.328325271606445f, 0.122650802135468f,
    -0.328035950660706f,
  0.122399315237999f, -0.327746421098709f, 0.122148044407368f,
    -0.327456712722778f,
  0.121896997094154f, -0.327166795730591f, 0.121646173298359f,
    -0.326876699924469f,
  0.121395580470562f, -0.326586425304413f, 0.121145196259022f,
    -0.326295942068100f,
  0.120895043015480f, -0.326005280017853f, 0.120645113289356f,
    -0.325714409351349f,
  0.120395407080650f, -0.325423330068588f, 0.120145916938782f,
    -0.325132101774216f,
  0.119896657764912f, -0.324840664863586f, 0.119647622108459f,
    -0.324549019336700f,
  0.119398809969425f, -0.324257194995880f, 0.119150213897228f,
    -0.323965191841125f,
  0.118901848793030f, -0.323672980070114f, 0.118653707206249f,
    -0.323380589485168f,
  0.118405789136887f, -0.323088020086288f, 0.118158094584942f,
    -0.322795242071152f,
  0.117910631000996f, -0.322502255439758f, 0.117663383483887f,
    -0.322209119796753f,
  0.117416366934776f, -0.321915775537491f, 0.117169573903084f,
    -0.321622252464294f,
  0.116923004388809f, -0.321328520774841f, 0.116676658391953f,
    -0.321034610271454f,
  0.116430543363094f, -0.320740520954132f, 0.116184651851654f,
    -0.320446223020554f,
  0.115938983857632f, -0.320151746273041f, 0.115693546831608f,
    -0.319857090711594f,
  0.115448333323002f, -0.319562226533890f, 0.115203343331814f,
    -0.319267183542252f,
  0.114958584308624f, -0.318971961736679f, 0.114714048802853f,
    -0.318676531314850f,
  0.114469736814499f, -0.318380922079086f, 0.114225655794144f,
    -0.318085134029388f,
  0.113981798291206f, -0.317789167165756f, 0.113738171756268f,
    -0.317492991685867f,
  0.113494776189327f, -0.317196637392044f, 0.113251596689224f,
    -0.316900104284287f,
  0.113008655607700f, -0.316603392362595f, 0.112765938043594f,
    -0.316306471824646f,
  0.112523443996906f, -0.316009372472763f, 0.112281180918217f,
    -0.315712094306946f,
  0.112039148807526f, -0.315414607524872f, 0.111797347664833f,
    -0.315116971731186f,
  0.111555770039558f, -0.314819127321243f, 0.111314415931702f,
    -0.314521104097366f,
  0.111073300242424f, -0.314222872257233f, 0.110832408070564f,
    -0.313924491405487f,
  0.110591746866703f, -0.313625901937485f, 0.110351309180260f,
    -0.313327133655548f,
  0.110111102461815f, -0.313028186559677f, 0.109871134161949f,
    -0.312729060649872f,
  0.109631389379501f, -0.312429755926132f, 0.109391868114471f,
    -0.312130242586136f,
  0.109152585268021f, -0.311830550432205f, 0.108913525938988f,
    -0.311530679464340f,
  0.108674705028534f, -0.311230629682541f, 0.108436107635498f,
    -0.310930401086807f,
  0.108197741210461f, -0.310629993677139f, 0.107959605753422f,
    -0.310329377651215f,
  0.107721701264381f, -0.310028612613678f, 0.107484027743340f,
    -0.309727638959885f,
  0.107246585190296f, -0.309426486492157f, 0.107009373605251f,
    -0.309125155210495f,
  0.106772392988205f, -0.308823645114899f, 0.106535643339157f,
    -0.308521956205368f,
  0.106299124658108f, -0.308220088481903f, 0.106062836945057f,
    -0.307918041944504f,
  0.105826787650585f, -0.307615786790848f, 0.105590961873531f,
    -0.307313382625580f,
  0.105355374515057f, -0.307010769844055f, 0.105120018124580f,
    -0.306708008050919f,
  0.104884892702103f, -0.306405037641525f, 0.104649998247623f,
    -0.306101888418198f,
  0.104415334761143f, -0.305798590183258f, 0.104180909693241f,
    -0.305495083332062f,
  0.103946708142757f, -0.305191397666931f, 0.103712752461433f,
    -0.304887533187866f,
  0.103479020297527f, -0.304583519697189f, 0.103245526552200f,
    -0.304279297590256f,
  0.103012263774872f, -0.303974896669388f, 0.102779231965542f,
    -0.303670316934586f,
  0.102546438574791f, -0.303365558385849f, 0.102313876152039f,
    -0.303060621023178f,
  0.102081544697285f, -0.302755534648895f, 0.101849451661110f,
    -0.302450239658356f,
  0.101617597043514f, -0.302144765853882f, 0.101385973393917f,
    -0.301839113235474f,
  0.101154580712318f, -0.301533311605453f, 0.100923426449299f,
    -0.301227301359177f,
  0.100692503154278f, -0.300921112298965f, 0.100461818277836f,
    -0.300614774227142f,
  0.100231364369392f, -0.300308227539063f, 0.100001148879528f,
    -0.300001531839371f,
  0.099771171808243f, -0.299694657325745f, 0.099541425704956f,
    -0.299387603998184f,
  0.099311910569668f, -0.299080342054367f, 0.099082641303539f,
    -0.298772931098938f,
  0.098853603005409f, -0.298465341329575f, 0.098624803125858f,
    -0.298157602548599f,
  0.098396234214306f, -0.297849655151367f, 0.098167903721333f,
    -0.297541528940201f,
  0.097939811646938f, -0.297233253717422f, 0.097711957991123f,
    -0.296924799680710f,
  0.097484335303307f, -0.296616137027740f, 0.097256951034069f,
    -0.296307325363159f,
  0.097029805183411f, -0.295998334884644f, 0.096802897751331f,
    -0.295689195394516f,
  0.096576221287251f, -0.295379847288132f, 0.096349790692329f,
    -0.295070350170136f,
  0.096123591065407f, -0.294760644435883f, 0.095897629857063f,
    -0.294450789690018f,
  0.095671907067299f, -0.294140785932541f, 0.095446422696114f,
    -0.293830573558807f,
  0.095221176743507f, -0.293520182371140f, 0.094996169209480f,
    -0.293209642171860f,
  0.094771400094032f, -0.292898923158646f, 0.094546869397163f,
    -0.292588025331497f,
  0.094322577118874f, -0.292276978492737f, 0.094098523259163f,
    -0.291965723037720f,
  0.093874707818031f, -0.291654318571091f, 0.093651130795479f,
    -0.291342735290527f,
  0.093427792191505f, -0.291031002998352f, 0.093204692006111f,
    -0.290719062089920f,
  0.092981837689877f, -0.290406972169876f, 0.092759214341640f,
    -0.290094703435898f,
  0.092536836862564f, -0.289782285690308f, 0.092314697802067f,
    -0.289469659328461f,
  0.092092797160149f, -0.289156883955002f, 0.091871134936810f,
    -0.288843959569931f,
  0.091649711132050f, -0.288530826568604f, 0.091428533196449f,
    -0.288217544555664f,
  0.091207593679428f, -0.287904083728790f, 0.090986892580986f,
    -0.287590473890305f,
  0.090766437351704f, -0.287276685237885f, 0.090546220541000f,
    -0.286962717771530f,
  0.090326242148876f, -0.286648571491241f, 0.090106502175331f,
    -0.286334276199341f,
  0.089887008070946f, -0.286019802093506f, 0.089667752385139f,
    -0.285705178976059f,
  0.089448742568493f, -0.285390377044678f, 0.089229971170425f,
    -0.285075396299362f,
  0.089011445641518f, -0.284760266542435f, 0.088793158531189f,
    -0.284444957971573f,
  0.088575109839439f, -0.284129470586777f, 0.088357307016850f,
    -0.283813834190369f,
  0.088139742612839f, -0.283498018980026f, 0.087922424077988f,
    -0.283182054758072f,
  0.087705351412296f, -0.282865911722183f, 0.087488517165184f,
    -0.282549589872360f,
  0.087271921336651f, -0.282233119010925f, 0.087055571377277f,
    -0.281916469335556f,
  0.086839467287064f, -0.281599670648575f, 0.086623609066010f,
    -0.281282693147659f,
  0.086407989263535f, -0.280965566635132f, 0.086192607879639f,
    -0.280648261308670f,
  0.085977479815483f, -0.280330777168274f, 0.085762590169907f,
    -0.280013144016266f,
  0.085547938942909f, -0.279695361852646f, 0.085333541035652f,
    -0.279377400875092f,
  0.085119381546974f, -0.279059261083603f, 0.084905467927456f,
    -0.278740972280502f,
  0.084691800177097f, -0.278422504663467f, 0.084478378295898f,
    -0.278103888034821f,
  0.084265194833279f, -0.277785122394562f, 0.084052257239819f,
    -0.277466177940369f,
  0.083839565515518f, -0.277147054672241f, 0.083627119660378f,
    -0.276827782392502f,
  0.083414919674397f, -0.276508361101151f, 0.083202958106995f,
    -0.276188760995865f,
  0.082991249859333f, -0.275868982076645f, 0.082779780030251f,
    -0.275549083948135f,
  0.082568563520908f, -0.275228977203369f, 0.082357585430145f,
    -0.274908751249313f,
  0.082146860659122f, -0.274588316679001f, 0.081936374306679f,
    -0.274267762899399f,
  0.081726133823395f, -0.273947030305862f, 0.081516146659851f,
    -0.273626148700714f,
  0.081306397914886f, -0.273305088281631f, 0.081096902489662f,
    -0.272983878850937f,
  0.080887645483017f, -0.272662490606308f, 0.080678641796112f,
    -0.272340953350067f,
  0.080469883978367f, -0.272019267082214f, 0.080261372029781f,
    -0.271697402000427f,
  0.080053105950356f, -0.271375387907028f, 0.079845085740089f,
    -0.271053224802017f,
  0.079637311398983f, -0.270730882883072f, 0.079429790377617f,
    -0.270408391952515f,
  0.079222507774830f, -0.270085722208023f, 0.079015478491783f,
    -0.269762933254242f,
  0.078808702528477f, -0.269439965486526f, 0.078602164983749f,
    -0.269116818904877f,
  0.078395880758762f, -0.268793523311615f, 0.078189842402935f,
    -0.268470078706741f,
  0.077984049916267f, -0.268146485090256f, 0.077778510749340f,
    -0.267822742462158f,
  0.077573217451572f, -0.267498821020126f, 0.077368170022964f,
    -0.267174720764160f,
  0.077163375914097f, -0.266850501298904f, 0.076958827674389f,
    -0.266526103019714f,
  0.076754532754421f, -0.266201555728912f, 0.076550483703613f,
    -0.265876859426498f,
  0.076346680521965f, -0.265552014112473f, 0.076143130660057f,
    -0.265226989984512f,
  0.075939826667309f, -0.264901816844940f, 0.075736775994301f,
    -0.264576494693756f,
  0.075533971190453f, -0.264250993728638f, 0.075331419706345f,
    -0.263925373554230f,
  0.075129114091396f, -0.263599574565887f, 0.074927061796188f,
    -0.263273626565933f,
  0.074725262820721f, -0.262947499752045f, 0.074523709714413f,
    -0.262621253728867f,
  0.074322402477264f, -0.262294828891754f, 0.074121348559856f,
    -0.261968284845352f,
  0.073920547962189f, -0.261641561985016f, 0.073720000684261f,
    -0.261314690113068f,
  0.073519699275494f, -0.260987639427185f, 0.073319651186466f,
    -0.260660469532013f,
  0.073119848966599f, -0.260333120822906f, 0.072920300066471f,
    -0.260005623102188f,
  0.072721004486084f, -0.259678006172180f, 0.072521962225437f,
    -0.259350210428238f,
  0.072323165833950f, -0.259022265672684f, 0.072124622762203f,
    -0.258694142103195f,
  0.071926333010197f, -0.258365899324417f, 0.071728296577930f,
    -0.258037507534027f,
  0.071530513465405f, -0.257708936929703f, 0.071332976222038f,
    -0.257380217313766f,
  0.071135692298412f, -0.257051378488541f, 0.070938661694527f,
    -0.256722360849380f,
  0.070741884410381f, -0.256393194198608f, 0.070545360445976f,
    -0.256063878536224f,
  0.070349089801311f, -0.255734413862228f, 0.070153072476387f,
    -0.255404800176620f,
  0.069957308471203f, -0.255075037479401f, 0.069761790335178f,
    -0.254745125770569f,
  0.069566532969475f, -0.254415065050125f, 0.069371521472931f,
    -0.254084855318069f,
  0.069176770746708f, -0.253754496574402f, 0.068982265889645f,
    -0.253423988819122f,
  0.068788021802902f, -0.253093332052231f, 0.068594031035900f,
    -0.252762526273727f,
  0.068400286138058f, -0.252431541681290f, 0.068206802010536f,
    -0.252100437879562f,
  0.068013571202755f, -0.251769185066223f, 0.067820593714714f,
    -0.251437783241272f,
  0.067627869546413f, -0.251106232404709f, 0.067435398697853f,
    -0.250774532556534f,
  0.067243188619614f, -0.250442683696747f, 0.067051224410534f,
    -0.250110685825348f,
  0.066859520971775f, -0.249778553843498f, 0.066668070852757f,
    -0.249446272850037f,
  0.066476874053478f, -0.249113827943802f, 0.066285938024521f,
    -0.248781248927116f,
  0.066095255315304f, -0.248448520898819f, 0.065904818475246f,
    -0.248115643858910f,
  0.065714649856091f, -0.247782632708550f, 0.065524727106094f,
    -0.247449472546577f,
  0.065335065126419f, -0.247116148471832f, 0.065145656466484f,
    -0.246782705187798f,
  0.064956501126289f, -0.246449097990990f, 0.064767606556416f,
    -0.246115356683731f,
  0.064578965306282f, -0.245781451463699f, 0.064390584826469f,
    -0.245447427034378f,
  0.064202457666397f, -0.245113238692284f, 0.064014583826065f,
    -0.244778916239738f,
  0.063826970756054f, -0.244444444775581f, 0.063639611005783f,
    -0.244109839200974f,
  0.063452512025833f, -0.243775084614754f, 0.063265666365623f,
    -0.243440181016922f,
  0.063079081475735f, -0.243105143308640f, 0.062892749905586f,
    -0.242769956588745f,
  0.062706671655178f, -0.242434620857239f, 0.062520854175091f,
    -0.242099151015282f,
  0.062335297465324f, -0.241763532161713f, 0.062149997800589f,
    -0.241427779197693f,
  0.061964951455593f, -0.241091892123222f, 0.061780165880919f,
    -0.240755841135979f,
  0.061595637351274f, -0.240419670939446f, 0.061411365866661f,
    -0.240083336830139f,
  0.061227355152369f, -0.239746883511543f, 0.061043601483107f,
    -0.239410281181335f,
  0.060860104858875f, -0.239073529839516f, 0.060676865279675f,
    -0.238736644387245f,
  0.060493886470795f, -0.238399609923363f, 0.060311164706945f,
    -0.238062441349030f,
  0.060128703713417f, -0.237725138664246f, 0.059946499764919f,
    -0.237387686967850f,
  0.059764556586742f, -0.237050101161003f, 0.059582870453596f,
    -0.236712381243706f,
  0.059401445090771f, -0.236374512314796f, 0.059220276772976f,
    -0.236036509275436f,
  0.059039369225502f, -0.235698372125626f, 0.058858718723059f,
    -0.235360085964203f,
  0.058678328990936f, -0.235021665692329f, 0.058498200029135f,
    -0.234683111310005f,
  0.058318331837654f, -0.234344407916069f, 0.058138720691204f,
    -0.234005570411682f,
  0.057959370315075f, -0.233666598796844f, 0.057780280709267f,
    -0.233327493071556f,
  0.057601451873779f, -0.232988253235817f, 0.057422880083323f,
    -0.232648864388466f,
  0.057244572788477f, -0.232309341430664f, 0.057066522538662f,
    -0.231969684362412f,
  0.056888736784458f, -0.231629893183708f, 0.056711208075285f,
    -0.231289967894554f,
  0.056533940136433f, -0.230949893593788f, 0.056356932967901f,
    -0.230609700083733f,
  0.056180190294981f, -0.230269357562065f, 0.056003704667091f,
    -0.229928880929947f,
  0.055827483534813f, -0.229588270187378f, 0.055651523172855f,
    -0.229247525334358f,
  0.055475823581219f, -0.228906646370888f, 0.055300384759903f,
    -0.228565633296967f,
  0.055125206708908f, -0.228224486112595f, 0.054950293153524f,
    -0.227883204817772f,
  0.054775636643171f, -0.227541789412498f, 0.054601248353720f,
    -0.227200239896774f,
  0.054427117109299f, -0.226858556270599f, 0.054253250360489f,
    -0.226516738533974f,
  0.054079644382000f, -0.226174786686897f, 0.053906302899122f,
    -0.225832715630531f,
  0.053733222186565f, -0.225490495562553f, 0.053560405969620f,
    -0.225148141384125f,
  0.053387850522995f, -0.224805667996407f, 0.053215555846691f,
    -0.224463045597076f,
  0.053043525665998f, -0.224120303988457f, 0.052871759980917f,
    -0.223777428269386f,
  0.052700258791447f, -0.223434418439865f, 0.052529018372297f,
    -0.223091274499893f,
  0.052358038723469f, -0.222748011350632f, 0.052187327295542f,
    -0.222404599189758f,
  0.052016876637936f, -0.222061067819595f, 0.051846686750650f,
    -0.221717402338982f,
  0.051676765084267f, -0.221373617649078f, 0.051507104188204f,
    -0.221029683947563f,
  0.051337707787752f, -0.220685631036758f, 0.051168579608202f,
    -0.220341444015503f,
  0.050999708473682f, -0.219997137784958f, 0.050831105560064f,
    -0.219652697443962f,
  0.050662767142057f, -0.219308122992516f, 0.050494693219662f,
    -0.218963414430618f,
  0.050326880067587f, -0.218618586659431f, 0.050159335136414f,
    -0.218273624777794f,
  0.049992054700851f, -0.217928543686867f, 0.049825038760900f,
    -0.217583328485489f,
  0.049658283591270f, -0.217237979173660f, 0.049491796642542f,
    -0.216892510652542f,
  0.049325577914715f, -0.216546908020973f, 0.049159619957209f,
    -0.216201186180115f,
  0.048993926495314f, -0.215855330228806f, 0.048828501254320f,
    -0.215509355068207f,
  0.048663340508938f, -0.215163245797157f, 0.048498444259167f,
    -0.214817002415657f,
  0.048333816230297f, -0.214470639824867f, 0.048169452697039f,
    -0.214124158024788f,
  0.048005353659391f, -0.213777542114258f, 0.047841522842646f,
    -0.213430806994438f,
  0.047677956521511f, -0.213083937764168f, 0.047514654695988f,
    -0.212736949324608f,
  0.047351621091366f, -0.212389841675758f, 0.047188851982355f,
    -0.212042599916458f,
  0.047026351094246f, -0.211695238947868f, 0.046864114701748f,
    -0.211347743868828f,
  0.046702146530151f, -0.211000129580498f, 0.046540446579456f,
    -0.210652396082878f,
  0.046379011124372f, -0.210304543375969f, 0.046217843890190f,
    -0.209956556558609f,
  0.046056941151619f, -0.209608450531960f, 0.045896306633949f,
    -0.209260210394859f,
  0.045735940337181f, -0.208911851048470f, 0.045575842261314f,
    -0.208563387393951f,
  0.045416008681059f, -0.208214774727821f, 0.045256443321705f,
    -0.207866057753563f,
  0.045097146183252f, -0.207517206668854f, 0.044938117265701f,
    -0.207168251276016f,
  0.044779352843761f, -0.206819161772728f, 0.044620860368013f,
    -0.206469938158989f,
  0.044462632387877f, -0.206120610237122f, 0.044304672628641f,
    -0.205771163105965f,
  0.044146984815598f, -0.205421581864357f, 0.043989561498165f,
    -0.205071896314621f,
  0.043832406401634f, -0.204722076654434f, 0.043675523251295f,
    -0.204372137784958f,
  0.043518904596567f, -0.204022079706192f, 0.043362557888031f,
    -0.203671902418137f,
  0.043206475675106f, -0.203321605920792f, 0.043050665408373f,
    -0.202971190214157f,
  0.042895123362541f, -0.202620655298233f, 0.042739849537611f,
    -0.202270001173019f,
  0.042584843933582f, -0.201919227838516f, 0.042430106550455f,
    -0.201568335294724f,
  0.042275641113520f, -0.201217323541641f, 0.042121443897486f,
    -0.200866192579269f,
  0.041967518627644f, -0.200514942407608f, 0.041813857853413f,
    -0.200163587927818f,
  0.041660469025373f, -0.199812099337578f, 0.041507352143526f,
    -0.199460506439209f,
  0.041354499757290f, -0.199108779430389f, 0.041201923042536f,
    -0.198756948113441f,
  0.041049610823393f, -0.198404997587204f, 0.040897574275732f,
    -0.198052927851677f,
  0.040745802223682f, -0.197700738906860f, 0.040594302117825f,
    -0.197348430752754f,
  0.040443073958158f, -0.196996018290520f, 0.040292114019394f,
    -0.196643486618996f,
  0.040141426026821f, -0.196290835738182f, 0.039991009980440f,
    -0.195938065648079f,
  0.039840862154961f, -0.195585191249847f, 0.039690986275673f,
    -0.195232197642326f,
  0.039541378617287f, -0.194879084825516f, 0.039392042905092f,
    -0.194525867700577f,
  0.039242979139090f, -0.194172516465187f, 0.039094187319279f,
    -0.193819075822830f,
  0.038945667445660f, -0.193465501070023f, 0.038797415792942f,
    -0.193111822009087f,
  0.038649436086416f, -0.192758023738861f, 0.038501728326082f,
    -0.192404121160507f,
  0.038354292511940f, -0.192050099372864f, 0.038207128643990f,
    -0.191695958375931f,
  0.038060232996941f, -0.191341713070869f, 0.037913613021374f,
    -0.190987363457680f,
  0.037767261266708f, -0.190632879734039f, 0.037621185183525f,
    -0.190278306603432f,
  0.037475381046534f, -0.189923599362373f, 0.037329845130444f,
    -0.189568802714348f,
  0.037184584885836f, -0.189213871955872f, 0.037039596587420f,
    -0.188858851790428f,
  0.036894880235195f, -0.188503712415695f, 0.036750435829163f,
    -0.188148453831673f,
  0.036606263369322f, -0.187793090939522f, 0.036462362855673f,
    -0.187437608838081f,
  0.036318738013506f, -0.187082037329674f, 0.036175385117531f,
    -0.186726331710815f,
  0.036032304167747f, -0.186370536684990f, 0.035889495164156f,
    -0.186014622449875f,
  0.035746958106756f, -0.185658603906631f, 0.035604696720839f,
    -0.185302466154099f,
  0.035462711006403f, -0.184946224093437f, 0.035320993512869f,
    -0.184589877724648f,
  0.035179551690817f, -0.184233412146568f, 0.035038381814957f,
    -0.183876842260361f,
  0.034897487610579f, -0.183520168066025f, 0.034756865352392f,
    -0.183163389563560f,
  0.034616518765688f, -0.182806491851807f, 0.034476444125175f,
    -0.182449504733086f,
  0.034336645156145f, -0.182092398405075f, 0.034197118133307f,
    -0.181735187768936f,
  0.034057866781950f, -0.181377857923508f, 0.033918887376785f,
    -0.181020438671112f,
  0.033780183643103f, -0.180662900209427f, 0.033641755580902f,
    -0.180305257439613f,
  0.033503599464893f, -0.179947525262833f, 0.033365719020367f,
    -0.179589673876762f,
  0.033228114247322f, -0.179231703281403f, 0.033090781420469f,
    -0.178873643279076f,
  0.032953724265099f, -0.178515478968620f, 0.032816942781210f,
    -0.178157210350037f,
  0.032680433243513f, -0.177798837423325f, 0.032544203102589f,
    -0.177440345287323f,
  0.032408244907856f, -0.177081763744354f, 0.032272562384605f,
    -0.176723077893257f,
  0.032137155532837f, -0.176364272832870f, 0.032002024352551f,
    -0.176005378365517f,
  0.031867165118456f, -0.175646379590034f, 0.031732585281134f,
    -0.175287276506424f,
  0.031598277390003f, -0.174928069114685f, 0.031464248895645f,
    -0.174568757414818f,
  0.031330492347479f, -0.174209341406822f, 0.031197015196085f,
    -0.173849821090698f,
  0.031063811853528f, -0.173490211367607f, 0.030930884182453f,
    -0.173130482435226f,
  0.030798232182860f, -0.172770664095879f, 0.030665857717395f,
    -0.172410741448402f,
  0.030533758923411f, -0.172050714492798f, 0.030401935800910f,
    -0.171690583229065f,
  0.030270388349891f, -0.171330362558365f, 0.030139118432999f,
    -0.170970037579536f,
  0.030008124187589f, -0.170609608292580f, 0.029877405613661f,
    -0.170249074697495f,
  0.029746964573860f, -0.169888436794281f, 0.029616801068187f,
    -0.169527709484100f,
  0.029486913233995f, -0.169166877865791f, 0.029357301071286f,
    -0.168805956840515f,
  0.029227968305349f, -0.168444931507111f, 0.029098909348249f,
    -0.168083801865578f,
  0.028970129787922f, -0.167722567915916f, 0.028841627761722f,
    -0.167361244559288f,
  0.028713401407003f, -0.166999831795692f, 0.028585452586412f,
    -0.166638299822807f,
  0.028457781299949f, -0.166276678442955f, 0.028330387547612f,
    -0.165914967656136f,
  0.028203271329403f, -0.165553152561188f, 0.028076432645321f,
    -0.165191248059273f,
  0.027949871495366f, -0.164829224348068f, 0.027823587879539f,
    -0.164467126131058f,
  0.027697581797838f, -0.164104923605919f, 0.027571853250265f,
    -0.163742616772652f,
  0.027446404099464f, -0.163380220532417f, 0.027321230620146f,
    -0.163017734885216f,
  0.027196336537600f, -0.162655144929886f, 0.027071721851826f,
    -0.162292465567589f,
  0.026947384700179f, -0.161929681897163f, 0.026823325082660f,
    -0.161566808819771f,
  0.026699542999268f, -0.161203846335411f, 0.026576040312648f,
    -0.160840779542923f,
  0.026452817022800f, -0.160477623343468f, 0.026329871267080f,
    -0.160114362835884f,
  0.026207204908133f, -0.159751012921333f, 0.026084816083312f,
    -0.159387573599815f,
  0.025962706655264f, -0.159024044871330f, 0.025840876623988f,
    -0.158660411834717f,
  0.025719324126840f, -0.158296689391136f, 0.025598052889109f,
    -0.157932877540588f,
  0.025477059185505f, -0.157568961381912f, 0.025356344878674f,
    -0.157204970717430f,
  0.025235909968615f, -0.156840875744820f, 0.025115754455328f,
    -0.156476691365242f,
  0.024995878338814f, -0.156112402677536f, 0.024876279756427f,
    -0.155748039484024f,
  0.024756962433457f, -0.155383571982384f, 0.024637924507260f,
    -0.155019029974937f,
  0.024519165977836f, -0.154654383659363f, 0.024400688707829f,
    -0.154289647936821f,
  0.024282488971949f, -0.153924822807312f, 0.024164570495486f,
    -0.153559908270836f,
  0.024046931415796f, -0.153194904327393f, 0.023929571732879f,
    -0.152829796075821f,
  0.023812493309379f, -0.152464613318443f, 0.023695694282651f,
    -0.152099341154099f,
  0.023579176515341f, -0.151733979582787f, 0.023462938144803f,
    -0.151368513703346f,
  0.023346979171038f, -0.151002973318100f, 0.023231301456690f,
    -0.150637343525887f,
  0.023115905001760f, -0.150271624326706f, 0.023000787943602f,
    -0.149905815720558f,
  0.022885952144861f, -0.149539917707443f, 0.022771397605538f,
    -0.149173930287361f,
  0.022657122462988f, -0.148807853460312f, 0.022543128579855f,
    -0.148441687226295f,
  0.022429415956140f, -0.148075446486473f, 0.022315984591842f,
    -0.147709101438522f,
  0.022202832624316f, -0.147342681884766f, 0.022089963778853f,
    -0.146976172924042f,
  0.021977374330163f, -0.146609574556351f, 0.021865066140890f,
    -0.146242901682854f,
  0.021753041073680f, -0.145876124501228f, 0.021641295403242f,
    -0.145509272813797f,
  0.021529832854867f, -0.145142331719399f, 0.021418649703264f,
    -0.144775316119194f,
  0.021307749673724f, -0.144408211112022f, 0.021197130903602f,
    -0.144041016697884f,
  0.021086793392897f, -0.143673732876778f, 0.020976737141609f,
    -0.143306359648705f,
  0.020866964012384f, -0.142938911914825f, 0.020757472142577f,
    -0.142571389675140f,
  0.020648263394833f, -0.142203763127327f, 0.020539334043860f,
    -0.141836062073708f,
  0.020430689677596f, -0.141468286514282f, 0.020322324708104f,
    -0.141100421547890f,
  0.020214242860675f, -0.140732467174530f, 0.020106444135308f,
    -0.140364438295364f,
  0.019998926669359f, -0.139996320009232f, 0.019891692325473f,
    -0.139628127217293f,
  0.019784741103649f, -0.139259845018387f, 0.019678071141243f,
    -0.138891488313675f,
  0.019571684300900f, -0.138523042201996f, 0.019465578719974f,
    -0.138154521584511f,
  0.019359756261110f, -0.137785911560059f, 0.019254218786955f,
    -0.137417227029800f,
  0.019148962572217f, -0.137048453092575f, 0.019043987616897f,
    -0.136679604649544f,
  0.018939297646284f, -0.136310681700706f, 0.018834890797734f,
    -0.135941669344902f,
  0.018730765208602f, -0.135572582483292f, 0.018626924604177f,
    -0.135203406214714f,
  0.018523367121816f, -0.134834155440331f, 0.018420090898871f,
    -0.134464830160141f,
  0.018317099660635f, -0.134095430374146f, 0.018214391544461f,
    -0.133725941181183f,
  0.018111966550350f, -0.133356377482414f, 0.018009826540947f,
    -0.132986739277840f,
  0.017907967790961f, -0.132617011666298f, 0.017806394025683f,
    -0.132247209548950f,
  0.017705103382468f, -0.131877332925797f, 0.017604095861316f,
    -0.131507381796837f,
  0.017503373324871f, -0.131137356162071f, 0.017402933910489f,
    -0.130767241120338f,
  0.017302779480815f, -0.130397051572800f, 0.017202908173203f,
    -0.130026802420616f,
  0.017103319987655f, -0.129656463861465f, 0.017004016786814f,
    -0.129286035895348f,
  0.016904998570681f, -0.128915548324585f, 0.016806263476610f,
    -0.128544986248016f,
  0.016707813367248f, -0.128174334764481f, 0.016609646379948f,
    -0.127803623676300f,
  0.016511764377356f, -0.127432823181152f, 0.016414167359471f,
    -0.127061963081360f,
  0.016316853463650f, -0.126691013574600f, 0.016219824552536f,
    -0.126320004463196f,
  0.016123080626130f, -0.125948905944824f, 0.016026621684432f,
    -0.125577747821808f,
  0.015930447727442f, -0.125206500291824f, 0.015834558755159f,
    -0.124835193157196f,
  0.015738952904940f, -0.124463804066181f, 0.015643632039428f,
    -0.124092340469360f,
  0.015548598021269f, -0.123720809817314f, 0.015453847125173f,
    -0.123349204659462f,
  0.015359382145107f, -0.122977524995804f, 0.015265202149749f,
    -0.122605770826340f,
  0.015171307139099f, -0.122233949601650f, 0.015077698044479f,
    -0.121862053871155f,
  0.014984373003244f, -0.121490091085434f, 0.014891333878040f,
    -0.121118053793907f,
  0.014798580668867f, -0.120745941996574f, 0.014706112444401f,
    -0.120373763144016f,
  0.014613929204643f, -0.120001509785652f, 0.014522032812238f,
    -0.119629189372063f,
  0.014430420473218f, -0.119256794452667f, 0.014339094981551f,
    -0.118884332478046f,
  0.014248054474592f, -0.118511803448200f, 0.014157299883664f,
    -0.118139199912548f,
  0.014066831208766f, -0.117766529321671f, 0.013976648449898f,
    -0.117393791675568f,
  0.013886751607060f, -0.117020979523659f, 0.013797140680254f,
    -0.116648100316525f,
  0.013707815669477f, -0.116275154054165f, 0.013618776574731f,
    -0.115902140736580f,
  0.013530024327338f, -0.115529052913189f, 0.013441557064652f,
    -0.115155905485153f,
  0.013353376649320f, -0.114782683551311f, 0.013265483081341f,
    -0.114409394562244f,
  0.013177875429392f, -0.114036038517952f, 0.013090553693473f,
    -0.113662622869015f,
  0.013003518804908f, -0.113289132714272f, 0.012916770763695f,
    -0.112915575504303f,
  0.012830308638513f, -0.112541958689690f, 0.012744133360684f,
    -0.112168267369270f,
  0.012658244930208f, -0.111794516444206f, 0.012572642415762f,
    -0.111420698463917f,
  0.012487327679992f, -0.111046813428402f, 0.012402298860252f,
    -0.110672861337662f,
  0.012317557819188f, -0.110298842191696f, 0.012233102694154f,
    -0.109924763441086f,
  0.012148935347795f, -0.109550617635250f, 0.012065053917468f,
    -0.109176412224770f,
  0.011981460265815f, -0.108802139759064f, 0.011898153461516f,
    -0.108427800238132f,
  0.011815134435892f, -0.108053401112556f, 0.011732402257621f,
    -0.107678934931755f,
  0.011649956926703f, -0.107304409146309f, 0.011567799374461f,
    -0.106929816305637f,
  0.011485928669572f, -0.106555156409740f, 0.011404345743358f,
    -0.106180444359779f,
  0.011323049664497f, -0.105805665254593f, 0.011242041364312f,
    -0.105430819094181f,
  0.011161320842803f, -0.105055920779705f, 0.011080888099968f,
    -0.104680955410004f,
  0.011000742204487f, -0.104305922985077f, 0.010920885019004f,
    -0.103930838406086f,
  0.010841314680874f, -0.103555686771870f, 0.010762032121420f,
    -0.103180475533009f,
  0.010683037340641f, -0.102805204689503f, 0.010604331269860f,
    -0.102429874241352f,
  0.010525912046432f, -0.102054484188557f, 0.010447781533003f,
    -0.101679034531116f,
  0.010369938798249f, -0.101303517818451f, 0.010292383842170f,
    -0.100927948951721f,
  0.010215117596090f, -0.100552320480347f, 0.010138138197362f,
    -0.100176624953747f,
  0.010061448439956f, -0.099800877273083f, 0.009985045529902f,
    -0.099425069987774f,
  0.009908932261169f, -0.099049203097820f, 0.009833106771111f,
    -0.098673284053802f,
  0.009757569059730f, -0.098297297954559f, 0.009682320058346f,
    -0.097921259701252f,
  0.009607359766960f, -0.097545161843300f, 0.009532688185573f,
    -0.097169004380703f,
  0.009458304382861f, -0.096792794764042f, 0.009384209290147f,
    -0.096416525542736f,
  0.009310402907431f, -0.096040196716785f, 0.009236886166036f,
    -0.095663815736771f,
  0.009163657203317f, -0.095287375152111f, 0.009090716950595f,
    -0.094910882413387f,
  0.009018065407872f, -0.094534330070019f, 0.008945702575147f,
    -0.094157725572586f,
  0.008873629383743f, -0.093781061470509f, 0.008801844902337f,
    -0.093404345214367f,
  0.008730349130929f, -0.093027576804161f, 0.008659142069519f,
    -0.092650748789310f,
  0.008588224649429f, -0.092273868620396f, 0.008517595939338f,
    -0.091896936297417f,
  0.008447255939245f, -0.091519944369793f, 0.008377205580473f,
    -0.091142900288105f,
  0.008307444863021f, -0.090765804052353f, 0.008237972855568f,
    -0.090388655662537f,
  0.008168790489435f, -0.090011447668076f, 0.008099896833301f,
    -0.089634194970131f,
  0.008031292818487f, -0.089256882667542f, 0.007962978444993f,
    -0.088879525661469f,
  0.007894953712821f, -0.088502109050751f, 0.007827218621969f,
    -0.088124647736549f,
  0.007759772241116f, -0.087747126817703f, 0.007692615967244f,
    -0.087369553744793f,
  0.007625748869032f, -0.086991935968399f, 0.007559171877801f,
    -0.086614266037941f,
  0.007492884527892f, -0.086236543953419f, 0.007426886819303f,
    -0.085858769714832f,
  0.007361178752035f, -0.085480943322182f, 0.007295760791749f,
    -0.085103072226048f,
  0.007230632472783f, -0.084725148975849f, 0.007165793795139f,
    -0.084347173571587f,
  0.007101245224476f, -0.083969146013260f, 0.007036986760795f,
    -0.083591073751450f,
  0.006973018404096f, -0.083212949335575f, 0.006909339688718f,
    -0.082834780216217f,
  0.006845951545984f, -0.082456558942795f, 0.006782853044569f,
    -0.082078292965889f,
  0.006720044650137f, -0.081699974834919f, 0.006657526828349f,
    -0.081321612000465f,
  0.006595299113542f, -0.080943197011948f, 0.006533361505717f,
    -0.080564737319946f,
  0.006471714470536f, -0.080186225473881f, 0.006410357542336f,
    -0.079807676374912f,
  0.006349290721118f, -0.079429075121880f, 0.006288514938205f,
    -0.079050421714783f,
  0.006228029262275f, -0.078671731054783f, 0.006167833693326f,
    -0.078292988240719f,
  0.006107929162681f, -0.077914200723171f, 0.006048315204680f,
    -0.077535368502140f,
  0.005988991353661f, -0.077156484127045f, 0.005929958540946f,
    -0.076777562499046f,
  0.005871216300875f, -0.076398596167564f, 0.005812764633447f,
    -0.076019577682018f,
  0.005754603538662f, -0.075640521943569f, 0.005696733482182f,
    -0.075261414051056f,
  0.005639153998345f, -0.074882268905640f, 0.005581865552813f,
    -0.074503071606159f,
  0.005524867679924f, -0.074123837053776f, 0.005468160845339f,
    -0.073744557797909f,
  0.005411745049059f, -0.073365233838558f, 0.005355620291084f,
    -0.072985872626305f,
  0.005299786105752f, -0.072606459259987f, 0.005244242958724f,
    -0.072227008640766f,
  0.005188991315663f, -0.071847513318062f, 0.005134030245245f,
    -0.071467980742455f,
  0.005079360678792f, -0.071088403463364f, 0.005024982150644f,
    -0.070708781480789f,
  0.004970894660801f, -0.070329122245312f, 0.004917098674923f,
    -0.069949418306351f,
  0.004863593727350f, -0.069569669663906f, 0.004810380283743f,
    -0.069189883768559f,
  0.004757457878441f, -0.068810060620308f, 0.004704826977104f,
    -0.068430192768574f,
  0.004652487114072f, -0.068050287663937f, 0.004600439220667f,
    -0.067670337855816f,
  0.004548682365566f, -0.067290350794792f, 0.004497217014432f,
    -0.066910326480865f,
  0.004446043167263f, -0.066530264914036f, 0.004395160824060f,
    -0.066150158643723f,
  0.004344569984823f, -0.065770015120506f, 0.004294271115214f,
    -0.065389834344387f,
  0.004244263283908f, -0.065009608864784f, 0.004194547422230f,
    -0.064629353582859f,
  0.004145123064518f, -0.064249053597450f, 0.004095990676433f,
    -0.063868723809719f,
  0.004047149792314f, -0.063488349318504f, 0.003998600877821f,
    -0.063107937574387f,
  0.003950343467295f, -0.062727488577366f, 0.003902378026396f,
    -0.062347009778023f,
  0.003854704322293f, -0.061966486275196f, 0.003807322587818f,
    -0.061585929244757f,
  0.003760232590139f, -0.061205338686705f, 0.003713434794918f,
    -0.060824707150459f,
  0.003666928736493f, -0.060444042086601f, 0.003620714880526f,
    -0.060063343495131f,
  0.003574792761356f, -0.059682607650757f, 0.003529162844643f,
    -0.059301838278770f,
  0.003483824897557f, -0.058921031653881f, 0.003438779152930f,
    -0.058540191501379f,
  0.003394025377929f, -0.058159314095974f, 0.003349563805386f,
    -0.057778406888247f,
  0.003305394435301f, -0.057397462427616f, 0.003261517267674f,
    -0.057016488164663f,
  0.003217932302505f, -0.056635476648808f, 0.003174639539793f,
    -0.056254431605339f,
  0.003131638979539f, -0.055873356759548f, 0.003088930854574f,
    -0.055492244660854f,
  0.003046514932066f, -0.055111102759838f, 0.003004391444847f,
    -0.054729927331209f,
  0.002962560392916f, -0.054348722100258f, 0.002921021543443f,
    -0.053967483341694f,
  0.002879775362089f, -0.053586211055517f, 0.002838821383193f,
    -0.053204908967018f,
  0.002798160072416f, -0.052823577076197f, 0.002757790964097f,
    -0.052442211657763f,
  0.002717714523897f, -0.052060816437006f, 0.002677930751815f,
    -0.051679391413927f,
  0.002638439415023f, -0.051297932863235f, 0.002599240746349f,
    -0.050916448235512f,
  0.002560334512964f, -0.050534930080175f, 0.002521721180528f,
    -0.050153385847807f,
  0.002483400283381f, -0.049771808087826f, 0.002445372054353f,
    -0.049390204250813f,
  0.002407636726275f, -0.049008570611477f, 0.002370193833485f,
    -0.048626907169819f,
  0.002333043841645f, -0.048245213925838f, 0.002296186750755f,
    -0.047863494604826f,
  0.002259622327983f, -0.047481749206781f, 0.002223350573331f,
    -0.047099970281124f,
  0.002187371719629f, -0.046718169003725f, 0.002151685766876f,
    -0.046336337924004f,
  0.002116292715073f, -0.045954477041960f, 0.002081192564219f,
    -0.045572593808174f,
  0.002046385314316f, -0.045190680772066f, 0.002011870965362f,
    -0.044808741658926f,
  0.001977649517357f, -0.044426776468754f, 0.001943721086718f,
    -0.044044785201550f,
  0.001910085673444f, -0.043662767857313f, 0.001876743277535f,
    -0.043280724436045f,
  0.001843693898991f, -0.042898654937744f, 0.001810937537812f,
    -0.042516563087702f,
  0.001778474310413f, -0.042134445160627f, 0.001746304216795f,
    -0.041752301156521f,
  0.001714427140541f, -0.041370131075382f, 0.001682843198068f,
    -0.040987938642502f,
  0.001651552389376f, -0.040605723857880f, 0.001620554830879f,
    -0.040223482996225f,
  0.001589850406162f, -0.039841219782829f, 0.001559439115226f,
    -0.039458930492401f,
  0.001529321074486f, -0.039076622575521f, 0.001499496400356f,
    -0.038694288581610f,
  0.001469964860007f, -0.038311932235956f, 0.001440726569854f,
    -0.037929553538561f,
  0.001411781646311f, -0.037547148764133f, 0.001383129972965f,
    -0.037164725363255f,
  0.001354771666229f, -0.036782283335924f, 0.001326706726104f,
    -0.036399815231562f,
  0.001298935036175f, -0.036017324775457f, 0.001271456829272f,
    -0.035634815692902f,
  0.001244271872565f, -0.035252287983894f, 0.001217380515300f,
    -0.034869734197855f,
  0.001190782408230f, -0.034487165510654f, 0.001164477784187f,
    -0.034104570746422f,
  0.001138466643170f, -0.033721961081028f, 0.001112748985179f,
    -0.033339329063892f,
  0.001087324810214f, -0.032956674695015f, 0.001062194118276f,
    -0.032574005424976f,
  0.001037356909364f, -0.032191313803196f, 0.001012813183479f,
    -0.031808607280254f,
  0.000988563057035f, -0.031425878405571f, 0.000964606530033f,
    -0.031043132767081f,
  0.000940943544265f, -0.030660368502140f, 0.000917574157938f,
    -0.030277585610747f,
  0.000894498312846f, -0.029894785955548f, 0.000871716125403f,
    -0.029511967673898f,
  0.000849227537401f, -0.029129132628441f, 0.000827032607049f,
    -0.028746278956532f,
  0.000805131276138f, -0.028363410383463f, 0.000783523661084f,
    -0.027980525046587f,
  0.000762209703680f, -0.027597622945905f, 0.000741189462133f,
    -0.027214704081416f,
  0.000720462878235f, -0.026831768453121f, 0.000700030010194f,
    -0.026448817923665f,
  0.000679890916217f, -0.026065852493048f, 0.000660045538098f,
    -0.025682870298624f,
  0.000640493875835f, -0.025299875065684f, 0.000621235987637f,
    -0.024916863068938f,
  0.000602271873504f, -0.024533838033676f, 0.000583601591643f,
    -0.024150796234608f,
  0.000565225025639f, -0.023767741397023f, 0.000547142291907f,
    -0.023384673520923f,
  0.000529353390448f, -0.023001590743661f, 0.000511858321261f,
    -0.022618494927883f,
  0.000494657084346f, -0.022235386073589f, 0.000477749679703f,
    -0.021852264180779f,
  0.000461136136437f, -0.021469129249454f, 0.000444816454547f,
    -0.021085981279612f,
  0.000428790634032f, -0.020702820271254f, 0.000413058703998f,
    -0.020319648087025f,
  0.000397620693548f, -0.019936462864280f, 0.000382476573577f,
    -0.019553268328309f,
  0.000367626344087f, -0.019170060753822f, 0.000353070063284f,
    -0.018786842003465f,
  0.000338807702065f, -0.018403612077236f, 0.000324839289533f,
    -0.018020370975137f,
  0.000311164796585f, -0.017637118697166f, 0.000297784281429f,
    -0.017253857105970f,
  0.000284697714960f, -0.016870586201549f, 0.000271905126283f,
    -0.016487304121256f,
  0.000259406515397f, -0.016104012727737f, 0.000247201882303f,
    -0.015720712020993f,
  0.000235291256104f, -0.015337402001023f, 0.000223674607696f,
    -0.014954082667828f,
  0.000212351980736f, -0.014570754021406f, 0.000201323360670f,
    -0.014187417924404f,
  0.000190588747500f, -0.013804072514176f, 0.000180148170330f,
    -0.013420719653368f,
  0.000170001629158f, -0.013037359341979f, 0.000160149123985f,
    -0.012653990648687f,
  0.000150590654812f, -0.012270614504814f, 0.000141326236189f,
    -0.011887230910361f,
  0.000132355868118f, -0.011503840796649f, 0.000123679565149f,
    -0.011120444163680f,
  0.000115297327284f, -0.010737040080130f, 0.000107209154521f,
    -0.010353630408645f,
  0.000099415054137f, -0.009970214217901f, 0.000091915040684f,
    -0.009586792439222f,
  0.000084709099610f, -0.009203365072608f, 0.000077797252743f,
    -0.008819932118058f,
  0.000071179500083f, -0.008436493575573f, 0.000064855834353f,
    -0.008053051307797f,
  0.000058826273744f, -0.007669602986425f, 0.000053090810979f,
    -0.007286150939763f,
  0.000047649456974f, -0.006902694236487f, 0.000042502211727f,
    -0.006519233807921f,
  0.000037649078877f, -0.006135769188404f, 0.000033090062061f,
    -0.005752300843596f,
  0.000028825161280f, -0.005368829704821f, 0.000024854381991f,
    -0.004985354840755f,
  0.000021177724193f, -0.004601877182722f, 0.000017795191525f,
    -0.004218397196382f,
  0.000014706784896f, -0.003834914416075f, 0.000011912506125f,
    -0.003451429307461f,
  0.000009412358850f, -0.003067942336202f, 0.000007206342616f,
    -0.002684453502297f,
  0.000005294459243f, -0.002300963038579f, 0.000003676709639f,
    -0.001917471294291f,
  0.000002353095169f, -0.001533978385851f, 0.000001323616516f,
    -0.001150484546088f,
  0.000000588274133f, -0.000766990066040f, 0.000000147068562f,
    -0.000383495149435f,
  0.000000000000000f, -0.000000000000023f, 0.000000147068562f,
    0.000383495149435f,
  0.000000588274133f, 0.000766990066040f, 0.000001323616516f,
    0.001150484546088f,
  0.000002353095169f, 0.001533978385851f, 0.000003676709639f,
    0.001917471294291f,
  0.000005294459243f, 0.002300963038579f, 0.000007206342616f,
    0.002684453502297f,
  0.000009412358850f, 0.003067942336202f, 0.000011912506125f,
    0.003451429307461f,
  0.000014706784896f, 0.003834914416075f, 0.000017795191525f,
    0.004218397196382f,
  0.000021177724193f, 0.004601877182722f, 0.000024854381991f,
    0.004985354840755f,
  0.000028825161280f, 0.005368829704821f, 0.000033090062061f,
    0.005752300843596f,
  0.000037649078877f, 0.006135769188404f, 0.000042502211727f,
    0.006519233807921f,
  0.000047649456974f, 0.006902694236487f, 0.000053090810979f,
    0.007286150939763f,
  0.000058826273744f, 0.007669602986425f, 0.000064855834353f,
    0.008053051307797f,
  0.000071179500083f, 0.008436493575573f, 0.000077797252743f,
    0.008819932118058f,
  0.000084709099610f, 0.009203365072608f, 0.000091915040684f,
    0.009586792439222f,
  0.000099415054137f, 0.009970214217901f, 0.000107209154521f,
    0.010353630408645f,
  0.000115297327284f, 0.010737040080130f, 0.000123679565149f,
    0.011120444163680f,
  0.000132355868118f, 0.011503840796649f, 0.000141326236189f,
    0.011887230910361f,
  0.000150590654812f, 0.012270614504814f, 0.000160149123985f,
    0.012653990648687f,
  0.000170001629158f, 0.013037359341979f, 0.000180148170330f,
    0.013420719653368f,
  0.000190588747500f, 0.013804072514176f, 0.000201323360670f,
    0.014187417924404f,
  0.000212351980736f, 0.014570754021406f, 0.000223674607696f,
    0.014954082667828f,
  0.000235291256104f, 0.015337402001023f, 0.000247201882303f,
    0.015720712020993f,
  0.000259406515397f, 0.016104012727737f, 0.000271905126283f,
    0.016487304121256f,
  0.000284697714960f, 0.016870586201549f, 0.000297784281429f,
    0.017253857105970f,
  0.000311164796585f, 0.017637118697166f, 0.000324839289533f,
    0.018020370975137f,
  0.000338807702065f, 0.018403612077236f, 0.000353070063284f,
    0.018786842003465f,
  0.000367626344087f, 0.019170060753822f, 0.000382476573577f,
    0.019553268328309f,
  0.000397620693548f, 0.019936462864280f, 0.000413058703998f,
    0.020319648087025f,
  0.000428790634032f, 0.020702820271254f, 0.000444816454547f,
    0.021085981279612f,
  0.000461136136437f, 0.021469129249454f, 0.000477749679703f,
    0.021852264180779f,
  0.000494657084346f, 0.022235386073589f, 0.000511858321261f,
    0.022618494927883f,
  0.000529353390448f, 0.023001590743661f, 0.000547142291907f,
    0.023384673520923f,
  0.000565225025639f, 0.023767741397023f, 0.000583601591643f,
    0.024150796234608f,
  0.000602271873504f, 0.024533838033676f, 0.000621235987637f,
    0.024916863068938f,
  0.000640493875835f, 0.025299875065684f, 0.000660045538098f,
    0.025682870298624f,
  0.000679890916217f, 0.026065852493048f, 0.000700030010194f,
    0.026448817923665f,
  0.000720462878235f, 0.026831768453121f, 0.000741189462133f,
    0.027214704081416f,
  0.000762209703680f, 0.027597622945905f, 0.000783523661084f,
    0.027980525046587f,
  0.000805131276138f, 0.028363410383463f, 0.000827032607049f,
    0.028746278956532f,
  0.000849227537401f, 0.029129132628441f, 0.000871716125403f,
    0.029511967673898f,
  0.000894498312846f, 0.029894785955548f, 0.000917574157938f,
    0.030277585610747f,
  0.000940943544265f, 0.030660368502140f, 0.000964606530033f,
    0.031043132767081f,
  0.000988563057035f, 0.031425878405571f, 0.001012813183479f,
    0.031808607280254f,
  0.001037356909364f, 0.032191313803196f, 0.001062194118276f,
    0.032574005424976f,
  0.001087324810214f, 0.032956674695015f, 0.001112748985179f,
    0.033339329063892f,
  0.001138466643170f, 0.033721961081028f, 0.001164477784187f,
    0.034104570746422f,
  0.001190782408230f, 0.034487165510654f, 0.001217380515300f,
    0.034869734197855f,
  0.001244271872565f, 0.035252287983894f, 0.001271456829272f,
    0.035634815692902f,
  0.001298935036175f, 0.036017324775457f, 0.001326706726104f,
    0.036399815231562f,
  0.001354771666229f, 0.036782283335924f, 0.001383129972965f,
    0.037164725363255f,
  0.001411781646311f, 0.037547148764133f, 0.001440726569854f,
    0.037929553538561f,
  0.001469964860007f, 0.038311932235956f, 0.001499496400356f,
    0.038694288581610f,
  0.001529321074486f, 0.039076622575521f, 0.001559439115226f,
    0.039458930492401f,
  0.001589850406162f, 0.039841219782829f, 0.001620554830879f,
    0.040223482996225f,
  0.001651552389376f, 0.040605723857880f, 0.001682843198068f,
    0.040987938642502f,
  0.001714427140541f, 0.041370131075382f, 0.001746304216795f,
    0.041752301156521f,
  0.001778474310413f, 0.042134445160627f, 0.001810937537812f,
    0.042516563087702f,
  0.001843693898991f, 0.042898654937744f, 0.001876743277535f,
    0.043280724436045f,
  0.001910085673444f, 0.043662767857313f, 0.001943721086718f,
    0.044044785201550f,
  0.001977649517357f, 0.044426776468754f, 0.002011870965362f,
    0.044808741658926f,
  0.002046385314316f, 0.045190680772066f, 0.002081192564219f,
    0.045572593808174f,
  0.002116292715073f, 0.045954477041960f, 0.002151685766876f,
    0.046336337924004f,
  0.002187371719629f, 0.046718169003725f, 0.002223350573331f,
    0.047099970281124f,
  0.002259622327983f, 0.047481749206781f, 0.002296186750755f,
    0.047863494604826f,
  0.002333043841645f, 0.048245213925838f, 0.002370193833485f,
    0.048626907169819f,
  0.002407636726275f, 0.049008570611477f, 0.002445372054353f,
    0.049390204250813f,
  0.002483400283381f, 0.049771808087826f, 0.002521721180528f,
    0.050153385847807f,
  0.002560334512964f, 0.050534930080175f, 0.002599240746349f,
    0.050916448235512f,
  0.002638439415023f, 0.051297932863235f, 0.002677930751815f,
    0.051679391413927f,
  0.002717714523897f, 0.052060816437006f, 0.002757790964097f,
    0.052442211657763f,
  0.002798160072416f, 0.052823577076197f, 0.002838821383193f,
    0.053204908967018f,
  0.002879775362089f, 0.053586211055517f, 0.002921021543443f,
    0.053967483341694f,
  0.002962560392916f, 0.054348722100258f, 0.003004391444847f,
    0.054729927331209f,
  0.003046514932066f, 0.055111102759838f, 0.003088930854574f,
    0.055492244660854f,
  0.003131638979539f, 0.055873356759548f, 0.003174639539793f,
    0.056254431605339f,
  0.003217932302505f, 0.056635476648808f, 0.003261517267674f,
    0.057016488164663f,
  0.003305394435301f, 0.057397462427616f, 0.003349563805386f,
    0.057778406888247f,
  0.003394025377929f, 0.058159314095974f, 0.003438779152930f,
    0.058540191501379f,
  0.003483824897557f, 0.058921031653881f, 0.003529162844643f,
    0.059301838278770f,
  0.003574792761356f, 0.059682607650757f, 0.003620714880526f,
    0.060063343495131f,
  0.003666928736493f, 0.060444042086601f, 0.003713434794918f,
    0.060824707150459f,
  0.003760232590139f, 0.061205338686705f, 0.003807322587818f,
    0.061585929244757f,
  0.003854704322293f, 0.061966486275196f, 0.003902378026396f,
    0.062347009778023f,
  0.003950343467295f, 0.062727488577366f, 0.003998600877821f,
    0.063107937574387f,
  0.004047149792314f, 0.063488349318504f, 0.004095990676433f,
    0.063868723809719f,
  0.004145123064518f, 0.064249053597450f, 0.004194547422230f,
    0.064629353582859f,
  0.004244263283908f, 0.065009608864784f, 0.004294271115214f,
    0.065389834344387f,
  0.004344569984823f, 0.065770015120506f, 0.004395160824060f,
    0.066150158643723f,
  0.004446043167263f, 0.066530264914036f, 0.004497217014432f,
    0.066910326480865f,
  0.004548682365566f, 0.067290350794792f, 0.004600439220667f,
    0.067670337855816f,
  0.004652487114072f, 0.068050287663937f, 0.004704826977104f,
    0.068430192768574f,
  0.004757457878441f, 0.068810060620308f, 0.004810380283743f,
    0.069189883768559f,
  0.004863593727350f, 0.069569669663906f, 0.004917098674923f,
    0.069949418306351f,
  0.004970894660801f, 0.070329122245312f, 0.005024982150644f,
    0.070708781480789f,
  0.005079360678792f, 0.071088403463364f, 0.005134030245245f,
    0.071467980742455f,
  0.005188991315663f, 0.071847513318062f, 0.005244242958724f,
    0.072227008640766f,
  0.005299786105752f, 0.072606459259987f, 0.005355620291084f,
    0.072985872626305f,
  0.005411745049059f, 0.073365233838558f, 0.005468160845339f,
    0.073744557797909f,
  0.005524867679924f, 0.074123837053776f, 0.005581865552813f,
    0.074503071606159f,
  0.005639153998345f, 0.074882268905640f, 0.005696733482182f,
    0.075261414051056f,
  0.005754603538662f, 0.075640521943569f, 0.005812764633447f,
    0.076019577682018f,
  0.005871216300875f, 0.076398596167564f, 0.005929958540946f,
    0.076777562499046f,
  0.005988991353661f, 0.077156484127045f, 0.006048315204680f,
    0.077535368502140f,
  0.006107929162681f, 0.077914200723171f, 0.006167833693326f,
    0.078292988240719f,
  0.006228029262275f, 0.078671731054783f, 0.006288514938205f,
    0.079050421714783f,
  0.006349290721118f, 0.079429075121880f, 0.006410357542336f,
    0.079807676374912f,
  0.006471714470536f, 0.080186225473881f, 0.006533361505717f,
    0.080564737319946f,
  0.006595299113542f, 0.080943197011948f, 0.006657526828349f,
    0.081321612000465f,
  0.006720044650137f, 0.081699974834919f, 0.006782853044569f,
    0.082078292965889f,
  0.006845951545984f, 0.082456558942795f, 0.006909339688718f,
    0.082834780216217f,
  0.006973018404096f, 0.083212949335575f, 0.007036986760795f,
    0.083591073751450f,
  0.007101245224476f, 0.083969146013260f, 0.007165793795139f,
    0.084347173571587f,
  0.007230632472783f, 0.084725148975849f, 0.007295760791749f,
    0.085103072226048f,
  0.007361178752035f, 0.085480943322182f, 0.007426886819303f,
    0.085858769714832f,
  0.007492884527892f, 0.086236543953419f, 0.007559171877801f,
    0.086614266037941f,
  0.007625748869032f, 0.086991935968399f, 0.007692615967244f,
    0.087369553744793f,
  0.007759772241116f, 0.087747126817703f, 0.007827218621969f,
    0.088124647736549f,
  0.007894953712821f, 0.088502109050751f, 0.007962978444993f,
    0.088879525661469f,
  0.008031292818487f, 0.089256882667542f, 0.008099896833301f,
    0.089634194970131f,
  0.008168790489435f, 0.090011447668076f, 0.008237972855568f,
    0.090388655662537f,
  0.008307444863021f, 0.090765804052353f, 0.008377205580473f,
    0.091142900288105f,
  0.008447255939245f, 0.091519944369793f, 0.008517595939338f,
    0.091896936297417f,
  0.008588224649429f, 0.092273868620396f, 0.008659142069519f,
    0.092650748789310f,
  0.008730349130929f, 0.093027576804161f, 0.008801844902337f,
    0.093404345214367f,
  0.008873629383743f, 0.093781061470509f, 0.008945702575147f,
    0.094157725572586f,
  0.009018065407872f, 0.094534330070019f, 0.009090716950595f,
    0.094910882413387f,
  0.009163657203317f, 0.095287375152111f, 0.009236886166036f,
    0.095663815736771f,
  0.009310402907431f, 0.096040196716785f, 0.009384209290147f,
    0.096416525542736f,
  0.009458304382861f, 0.096792794764042f, 0.009532688185573f,
    0.097169004380703f,
  0.009607359766960f, 0.097545161843300f, 0.009682320058346f,
    0.097921259701252f,
  0.009757569059730f, 0.098297297954559f, 0.009833106771111f,
    0.098673284053802f,
  0.009908932261169f, 0.099049203097820f, 0.009985045529902f,
    0.099425069987774f,
  0.010061448439956f, 0.099800877273083f, 0.010138138197362f,
    0.100176624953747f,
  0.010215117596090f, 0.100552320480347f, 0.010292383842170f,
    0.100927948951721f,
  0.010369938798249f, 0.101303517818451f, 0.010447781533003f,
    0.101679034531116f,
  0.010525912046432f, 0.102054484188557f, 0.010604331269860f,
    0.102429874241352f,
  0.010683037340641f, 0.102805204689503f, 0.010762032121420f,
    0.103180475533009f,
  0.010841314680874f, 0.103555686771870f, 0.010920885019004f,
    0.103930838406086f,
  0.011000742204487f, 0.104305922985077f, 0.011080888099968f,
    0.104680955410004f,
  0.011161320842803f, 0.105055920779705f, 0.011242041364312f,
    0.105430819094181f,
  0.011323049664497f, 0.105805665254593f, 0.011404345743358f,
    0.106180444359779f,
  0.011485928669572f, 0.106555156409740f, 0.011567799374461f,
    0.106929816305637f,
  0.011649956926703f, 0.107304409146309f, 0.011732402257621f,
    0.107678934931755f,
  0.011815134435892f, 0.108053401112556f, 0.011898153461516f,
    0.108427800238132f,
  0.011981460265815f, 0.108802139759064f, 0.012065053917468f,
    0.109176412224770f,
  0.012148935347795f, 0.109550617635250f, 0.012233102694154f,
    0.109924763441086f,
  0.012317557819188f, 0.110298842191696f, 0.012402298860252f,
    0.110672861337662f,
  0.012487327679992f, 0.111046813428402f, 0.012572642415762f,
    0.111420698463917f,
  0.012658244930208f, 0.111794516444206f, 0.012744133360684f,
    0.112168267369270f,
  0.012830308638513f, 0.112541958689690f, 0.012916770763695f,
    0.112915575504303f,
  0.013003518804908f, 0.113289132714272f, 0.013090553693473f,
    0.113662622869015f,
  0.013177875429392f, 0.114036038517952f, 0.013265483081341f,
    0.114409394562244f,
  0.013353376649320f, 0.114782683551311f, 0.013441557064652f,
    0.115155905485153f,
  0.013530024327338f, 0.115529052913189f, 0.013618776574731f,
    0.115902140736580f,
  0.013707815669477f, 0.116275154054165f, 0.013797140680254f,
    0.116648100316525f,
  0.013886751607060f, 0.117020979523659f, 0.013976648449898f,
    0.117393791675568f,
  0.014066831208766f, 0.117766529321671f, 0.014157299883664f,
    0.118139199912548f,
  0.014248054474592f, 0.118511803448200f, 0.014339094981551f,
    0.118884332478046f,
  0.014430420473218f, 0.119256794452667f, 0.014522032812238f,
    0.119629189372063f,
  0.014613929204643f, 0.120001509785652f, 0.014706112444401f,
    0.120373763144016f,
  0.014798580668867f, 0.120745941996574f, 0.014891333878040f,
    0.121118053793907f,
  0.014984373003244f, 0.121490091085434f, 0.015077698044479f,
    0.121862053871155f,
  0.015171307139099f, 0.122233949601650f, 0.015265202149749f,
    0.122605770826340f,
  0.015359382145107f, 0.122977524995804f, 0.015453847125173f,
    0.123349204659462f,
  0.015548598021269f, 0.123720809817314f, 0.015643632039428f,
    0.124092340469360f,
  0.015738952904940f, 0.124463804066181f, 0.015834558755159f,
    0.124835193157196f,
  0.015930447727442f, 0.125206500291824f, 0.016026621684432f,
    0.125577747821808f,
  0.016123080626130f, 0.125948905944824f, 0.016219824552536f,
    0.126320004463196f,
  0.016316853463650f, 0.126691013574600f, 0.016414167359471f,
    0.127061963081360f,
  0.016511764377356f, 0.127432823181152f, 0.016609646379948f,
    0.127803623676300f,
  0.016707813367248f, 0.128174334764481f, 0.016806263476610f,
    0.128544986248016f,
  0.016904998570681f, 0.128915548324585f, 0.017004016786814f,
    0.129286035895348f,
  0.017103319987655f, 0.129656463861465f, 0.017202908173203f,
    0.130026802420616f,
  0.017302779480815f, 0.130397051572800f, 0.017402933910489f,
    0.130767241120338f,
  0.017503373324871f, 0.131137356162071f, 0.017604095861316f,
    0.131507381796837f,
  0.017705103382468f, 0.131877332925797f, 0.017806394025683f,
    0.132247209548950f,
  0.017907967790961f, 0.132617011666298f, 0.018009826540947f,
    0.132986739277840f,
  0.018111966550350f, 0.133356377482414f, 0.018214391544461f,
    0.133725941181183f,
  0.018317099660635f, 0.134095430374146f, 0.018420090898871f,
    0.134464830160141f,
  0.018523367121816f, 0.134834155440331f, 0.018626924604177f,
    0.135203406214714f,
  0.018730765208602f, 0.135572582483292f, 0.018834890797734f,
    0.135941669344902f,
  0.018939297646284f, 0.136310681700706f, 0.019043987616897f,
    0.136679604649544f,
  0.019148962572217f, 0.137048453092575f, 0.019254218786955f,
    0.137417227029800f,
  0.019359756261110f, 0.137785911560059f, 0.019465578719974f,
    0.138154521584511f,
  0.019571684300900f, 0.138523042201996f, 0.019678071141243f,
    0.138891488313675f,
  0.019784741103649f, 0.139259845018387f, 0.019891692325473f,
    0.139628127217293f,
  0.019998926669359f, 0.139996320009232f, 0.020106444135308f,
    0.140364438295364f,
  0.020214242860675f, 0.140732467174530f, 0.020322324708104f,
    0.141100421547890f,
  0.020430689677596f, 0.141468286514282f, 0.020539334043860f,
    0.141836062073708f,
  0.020648263394833f, 0.142203763127327f, 0.020757472142577f,
    0.142571389675140f,
  0.020866964012384f, 0.142938911914825f, 0.020976737141609f,
    0.143306359648705f,
  0.021086793392897f, 0.143673732876778f, 0.021197130903602f,
    0.144041016697884f,
  0.021307749673724f, 0.144408211112022f, 0.021418649703264f,
    0.144775316119194f,
  0.021529832854867f, 0.145142331719399f, 0.021641295403242f,
    0.145509272813797f,
  0.021753041073680f, 0.145876124501228f, 0.021865066140890f,
    0.146242901682854f,
  0.021977374330163f, 0.146609574556351f, 0.022089963778853f,
    0.146976172924042f,
  0.022202832624316f, 0.147342681884766f, 0.022315984591842f,
    0.147709101438522f,
  0.022429415956140f, 0.148075446486473f, 0.022543128579855f,
    0.148441687226295f,
  0.022657122462988f, 0.148807853460312f, 0.022771397605538f,
    0.149173930287361f,
  0.022885952144861f, 0.149539917707443f, 0.023000787943602f,
    0.149905815720558f,
  0.023115905001760f, 0.150271624326706f, 0.023231301456690f,
    0.150637343525887f,
  0.023346979171038f, 0.151002973318100f, 0.023462938144803f,
    0.151368513703346f,
  0.023579176515341f, 0.151733979582787f, 0.023695694282651f,
    0.152099341154099f,
  0.023812493309379f, 0.152464613318443f, 0.023929571732879f,
    0.152829796075821f,
  0.024046931415796f, 0.153194904327393f, 0.024164570495486f,
    0.153559908270836f,
  0.024282488971949f, 0.153924822807312f, 0.024400688707829f,
    0.154289647936821f,
  0.024519165977836f, 0.154654383659363f, 0.024637924507260f,
    0.155019029974937f,
  0.024756962433457f, 0.155383571982384f, 0.024876279756427f,
    0.155748039484024f,
  0.024995878338814f, 0.156112402677536f, 0.025115754455328f,
    0.156476691365242f,
  0.025235909968615f, 0.156840875744820f, 0.025356344878674f,
    0.157204970717430f,
  0.025477059185505f, 0.157568961381912f, 0.025598052889109f,
    0.157932877540588f,
  0.025719324126840f, 0.158296689391136f, 0.025840876623988f,
    0.158660411834717f,
  0.025962706655264f, 0.159024044871330f, 0.026084816083312f,
    0.159387573599815f,
  0.026207204908133f, 0.159751012921333f, 0.026329871267080f,
    0.160114362835884f,
  0.026452817022800f, 0.160477623343468f, 0.026576040312648f,
    0.160840779542923f,
  0.026699542999268f, 0.161203846335411f, 0.026823325082660f,
    0.161566808819771f,
  0.026947384700179f, 0.161929681897163f, 0.027071721851826f,
    0.162292465567589f,
  0.027196336537600f, 0.162655144929886f, 0.027321230620146f,
    0.163017734885216f,
  0.027446404099464f, 0.163380220532417f, 0.027571853250265f,
    0.163742616772652f,
  0.027697581797838f, 0.164104923605919f, 0.027823587879539f,
    0.164467126131058f,
  0.027949871495366f, 0.164829224348068f, 0.028076432645321f,
    0.165191248059273f,
  0.028203271329403f, 0.165553152561188f, 0.028330387547612f,
    0.165914967656136f,
  0.028457781299949f, 0.166276678442955f, 0.028585452586412f,
    0.166638299822807f,
  0.028713401407003f, 0.166999831795692f, 0.028841627761722f,
    0.167361244559288f,
  0.028970129787922f, 0.167722567915916f, 0.029098909348249f,
    0.168083801865578f,
  0.029227968305349f, 0.168444931507111f, 0.029357301071286f,
    0.168805956840515f,
  0.029486913233995f, 0.169166877865791f, 0.029616801068187f,
    0.169527709484100f,
  0.029746964573860f, 0.169888436794281f, 0.029877405613661f,
    0.170249074697495f,
  0.030008124187589f, 0.170609608292580f, 0.030139118432999f,
    0.170970037579536f,
  0.030270388349891f, 0.171330362558365f, 0.030401935800910f,
    0.171690583229065f,
  0.030533758923411f, 0.172050714492798f, 0.030665857717395f,
    0.172410741448402f,
  0.030798232182860f, 0.172770664095879f, 0.030930884182453f,
    0.173130482435226f,
  0.031063811853528f, 0.173490211367607f, 0.031197015196085f,
    0.173849821090698f,
  0.031330492347479f, 0.174209341406822f, 0.031464248895645f,
    0.174568757414818f,
  0.031598277390003f, 0.174928069114685f, 0.031732585281134f,
    0.175287276506424f,
  0.031867165118456f, 0.175646379590034f, 0.032002024352551f,
    0.176005378365517f,
  0.032137155532837f, 0.176364272832870f, 0.032272562384605f,
    0.176723077893257f,
  0.032408244907856f, 0.177081763744354f, 0.032544203102589f,
    0.177440345287323f,
  0.032680433243513f, 0.177798837423325f, 0.032816942781210f,
    0.178157210350037f,
  0.032953724265099f, 0.178515478968620f, 0.033090781420469f,
    0.178873643279076f,
  0.033228114247322f, 0.179231703281403f, 0.033365719020367f,
    0.179589673876762f,
  0.033503599464893f, 0.179947525262833f, 0.033641755580902f,
    0.180305257439613f,
  0.033780183643103f, 0.180662900209427f, 0.033918887376785f,
    0.181020438671112f,
  0.034057866781950f, 0.181377857923508f, 0.034197118133307f,
    0.181735187768936f,
  0.034336645156145f, 0.182092398405075f, 0.034476444125175f,
    0.182449504733086f,
  0.034616518765688f, 0.182806491851807f, 0.034756865352392f,
    0.183163389563560f,
  0.034897487610579f, 0.183520168066025f, 0.035038381814957f,
    0.183876842260361f,
  0.035179551690817f, 0.184233412146568f, 0.035320993512869f,
    0.184589877724648f,
  0.035462711006403f, 0.184946224093437f, 0.035604696720839f,
    0.185302466154099f,
  0.035746958106756f, 0.185658603906631f, 0.035889495164156f,
    0.186014622449875f,
  0.036032304167747f, 0.186370536684990f, 0.036175385117531f,
    0.186726331710815f,
  0.036318738013506f, 0.187082037329674f, 0.036462362855673f,
    0.187437608838081f,
  0.036606263369322f, 0.187793090939522f, 0.036750435829163f,
    0.188148453831673f,
  0.036894880235195f, 0.188503712415695f, 0.037039596587420f,
    0.188858851790428f,
  0.037184584885836f, 0.189213871955872f, 0.037329845130444f,
    0.189568802714348f,
  0.037475381046534f, 0.189923599362373f, 0.037621185183525f,
    0.190278306603432f,
  0.037767261266708f, 0.190632879734039f, 0.037913613021374f,
    0.190987363457680f,
  0.038060232996941f, 0.191341713070869f, 0.038207128643990f,
    0.191695958375931f,
  0.038354292511940f, 0.192050099372864f, 0.038501728326082f,
    0.192404121160507f,
  0.038649436086416f, 0.192758023738861f, 0.038797415792942f,
    0.193111822009087f,
  0.038945667445660f, 0.193465501070023f, 0.039094187319279f,
    0.193819075822830f,
  0.039242979139090f, 0.194172516465187f, 0.039392042905092f,
    0.194525867700577f,
  0.039541378617287f, 0.194879084825516f, 0.039690986275673f,
    0.195232197642326f,
  0.039840862154961f, 0.195585191249847f, 0.039991009980440f,
    0.195938065648079f,
  0.040141426026821f, 0.196290835738182f, 0.040292114019394f,
    0.196643486618996f,
  0.040443073958158f, 0.196996018290520f, 0.040594302117825f,
    0.197348430752754f,
  0.040745802223682f, 0.197700738906860f, 0.040897574275732f,
    0.198052927851677f,
  0.041049610823393f, 0.198404997587204f, 0.041201923042536f,
    0.198756948113441f,
  0.041354499757290f, 0.199108779430389f, 0.041507352143526f,
    0.199460506439209f,
  0.041660469025373f, 0.199812099337578f, 0.041813857853413f,
    0.200163587927818f,
  0.041967518627644f, 0.200514942407608f, 0.042121443897486f,
    0.200866192579269f,
  0.042275641113520f, 0.201217323541641f, 0.042430106550455f,
    0.201568335294724f,
  0.042584843933582f, 0.201919227838516f, 0.042739849537611f,
    0.202270001173019f,
  0.042895123362541f, 0.202620655298233f, 0.043050665408373f,
    0.202971190214157f,
  0.043206475675106f, 0.203321605920792f, 0.043362557888031f,
    0.203671902418137f,
  0.043518904596567f, 0.204022079706192f, 0.043675523251295f,
    0.204372137784958f,
  0.043832406401634f, 0.204722076654434f, 0.043989561498165f,
    0.205071896314621f,
  0.044146984815598f, 0.205421581864357f, 0.044304672628641f,
    0.205771163105965f,
  0.044462632387877f, 0.206120610237122f, 0.044620860368013f,
    0.206469938158989f,
  0.044779352843761f, 0.206819161772728f, 0.044938117265701f,
    0.207168251276016f,
  0.045097146183252f, 0.207517206668854f, 0.045256443321705f,
    0.207866057753563f,
  0.045416008681059f, 0.208214774727821f, 0.045575842261314f,
    0.208563387393951f,
  0.045735940337181f, 0.208911851048470f, 0.045896306633949f,
    0.209260210394859f,
  0.046056941151619f, 0.209608450531960f, 0.046217843890190f,
    0.209956556558609f,
  0.046379011124372f, 0.210304543375969f, 0.046540446579456f,
    0.210652396082878f,
  0.046702146530151f, 0.211000129580498f, 0.046864114701748f,
    0.211347743868828f,
  0.047026351094246f, 0.211695238947868f, 0.047188851982355f,
    0.212042599916458f,
  0.047351621091366f, 0.212389841675758f, 0.047514654695988f,
    0.212736949324608f,
  0.047677956521511f, 0.213083937764168f, 0.047841522842646f,
    0.213430806994438f,
  0.048005353659391f, 0.213777542114258f, 0.048169452697039f,
    0.214124158024788f,
  0.048333816230297f, 0.214470639824867f, 0.048498444259167f,
    0.214817002415657f,
  0.048663340508938f, 0.215163245797157f, 0.048828501254320f,
    0.215509355068207f,
  0.048993926495314f, 0.215855330228806f, 0.049159619957209f,
    0.216201186180115f,
  0.049325577914715f, 0.216546908020973f, 0.049491796642542f,
    0.216892510652542f,
  0.049658283591270f, 0.217237979173660f, 0.049825038760900f,
    0.217583328485489f,
  0.049992054700851f, 0.217928543686867f, 0.050159335136414f,
    0.218273624777794f,
  0.050326880067587f, 0.218618586659431f, 0.050494693219662f,
    0.218963414430618f,
  0.050662767142057f, 0.219308122992516f, 0.050831105560064f,
    0.219652697443962f,
  0.050999708473682f, 0.219997137784958f, 0.051168579608202f,
    0.220341444015503f,
  0.051337707787752f, 0.220685631036758f, 0.051507104188204f,
    0.221029683947563f,
  0.051676765084267f, 0.221373617649078f, 0.051846686750650f,
    0.221717402338982f,
  0.052016876637936f, 0.222061067819595f, 0.052187327295542f,
    0.222404599189758f,
  0.052358038723469f, 0.222748011350632f, 0.052529018372297f,
    0.223091274499893f,
  0.052700258791447f, 0.223434418439865f, 0.052871759980917f,
    0.223777428269386f,
  0.053043525665998f, 0.224120303988457f, 0.053215555846691f,
    0.224463045597076f,
  0.053387850522995f, 0.224805667996407f, 0.053560405969620f,
    0.225148141384125f,
  0.053733222186565f, 0.225490495562553f, 0.053906302899122f,
    0.225832715630531f,
  0.054079644382000f, 0.226174786686897f, 0.054253250360489f,
    0.226516738533974f,
  0.054427117109299f, 0.226858556270599f, 0.054601248353720f,
    0.227200239896774f,
  0.054775636643171f, 0.227541789412498f, 0.054950293153524f,
    0.227883204817772f,
  0.055125206708908f, 0.228224486112595f, 0.055300384759903f,
    0.228565633296967f,
  0.055475823581219f, 0.228906646370888f, 0.055651523172855f,
    0.229247525334358f,
  0.055827483534813f, 0.229588270187378f, 0.056003704667091f,
    0.229928880929947f,
  0.056180190294981f, 0.230269357562065f, 0.056356932967901f,
    0.230609700083733f,
  0.056533940136433f, 0.230949893593788f, 0.056711208075285f,
    0.231289967894554f,
  0.056888736784458f, 0.231629893183708f, 0.057066522538662f,
    0.231969684362412f,
  0.057244572788477f, 0.232309341430664f, 0.057422880083323f,
    0.232648864388466f,
  0.057601451873779f, 0.232988253235817f, 0.057780280709267f,
    0.233327493071556f,
  0.057959370315075f, 0.233666598796844f, 0.058138720691204f,
    0.234005570411682f,
  0.058318331837654f, 0.234344407916069f, 0.058498200029135f,
    0.234683111310005f,
  0.058678328990936f, 0.235021665692329f, 0.058858718723059f,
    0.235360085964203f,
  0.059039369225502f, 0.235698372125626f, 0.059220276772976f,
    0.236036509275436f,
  0.059401445090771f, 0.236374512314796f, 0.059582870453596f,
    0.236712381243706f,
  0.059764556586742f, 0.237050101161003f, 0.059946499764919f,
    0.237387686967850f,
  0.060128703713417f, 0.237725138664246f, 0.060311164706945f,
    0.238062441349030f,
  0.060493886470795f, 0.238399609923363f, 0.060676865279675f,
    0.238736644387245f,
  0.060860104858875f, 0.239073529839516f, 0.061043601483107f,
    0.239410281181335f,
  0.061227355152369f, 0.239746883511543f, 0.061411365866661f,
    0.240083336830139f,
  0.061595637351274f, 0.240419670939446f, 0.061780165880919f,
    0.240755841135979f,
  0.061964951455593f, 0.241091892123222f, 0.062149997800589f,
    0.241427779197693f,
  0.062335297465324f, 0.241763532161713f, 0.062520854175091f,
    0.242099151015282f,
  0.062706671655178f, 0.242434620857239f, 0.062892749905586f,
    0.242769956588745f,
  0.063079081475735f, 0.243105143308640f, 0.063265666365623f,
    0.243440181016922f,
  0.063452512025833f, 0.243775084614754f, 0.063639611005783f,
    0.244109839200974f,
  0.063826970756054f, 0.244444444775581f, 0.064014583826065f,
    0.244778916239738f,
  0.064202457666397f, 0.245113238692284f, 0.064390584826469f,
    0.245447427034378f,
  0.064578965306282f, 0.245781451463699f, 0.064767606556416f,
    0.246115356683731f,
  0.064956501126289f, 0.246449097990990f, 0.065145656466484f,
    0.246782705187798f,
  0.065335065126419f, 0.247116148471832f, 0.065524727106094f,
    0.247449472546577f,
  0.065714649856091f, 0.247782632708550f, 0.065904818475246f,
    0.248115643858910f,
  0.066095255315304f, 0.248448520898819f, 0.066285938024521f,
    0.248781248927116f,
  0.066476874053478f, 0.249113827943802f, 0.066668070852757f,
    0.249446272850037f,
  0.066859520971775f, 0.249778553843498f, 0.067051224410534f,
    0.250110685825348f,
  0.067243188619614f, 0.250442683696747f, 0.067435398697853f,
    0.250774532556534f,
  0.067627869546413f, 0.251106232404709f, 0.067820593714714f,
    0.251437783241272f,
  0.068013571202755f, 0.251769185066223f, 0.068206802010536f,
    0.252100437879562f,
  0.068400286138058f, 0.252431541681290f, 0.068594031035900f,
    0.252762526273727f,
  0.068788021802902f, 0.253093332052231f, 0.068982265889645f,
    0.253423988819122f,
  0.069176770746708f, 0.253754496574402f, 0.069371521472931f,
    0.254084855318069f,
  0.069566532969475f, 0.254415065050125f, 0.069761790335178f,
    0.254745125770569f,
  0.069957308471203f, 0.255075037479401f, 0.070153072476387f,
    0.255404800176620f,
  0.070349089801311f, 0.255734413862228f, 0.070545360445976f,
    0.256063878536224f,
  0.070741884410381f, 0.256393194198608f, 0.070938661694527f,
    0.256722360849380f,
  0.071135692298412f, 0.257051378488541f, 0.071332976222038f,
    0.257380217313766f,
  0.071530513465405f, 0.257708936929703f, 0.071728296577930f,
    0.258037507534027f,
  0.071926333010197f, 0.258365899324417f, 0.072124622762203f,
    0.258694142103195f,
  0.072323165833950f, 0.259022265672684f, 0.072521962225437f,
    0.259350210428238f,
  0.072721004486084f, 0.259678006172180f, 0.072920300066471f,
    0.260005623102188f,
  0.073119848966599f, 0.260333120822906f, 0.073319651186466f,
    0.260660469532013f,
  0.073519699275494f, 0.260987639427185f, 0.073720000684261f,
    0.261314690113068f,
  0.073920547962189f, 0.261641561985016f, 0.074121348559856f,
    0.261968284845352f,
  0.074322402477264f, 0.262294828891754f, 0.074523709714413f,
    0.262621253728867f,
  0.074725262820721f, 0.262947499752045f, 0.074927061796188f,
    0.263273626565933f,
  0.075129114091396f, 0.263599574565887f, 0.075331419706345f,
    0.263925373554230f,
  0.075533971190453f, 0.264250993728638f, 0.075736775994301f,
    0.264576494693756f,
  0.075939826667309f, 0.264901816844940f, 0.076143130660057f,
    0.265226989984512f,
  0.076346680521965f, 0.265552014112473f, 0.076550483703613f,
    0.265876859426498f,
  0.076754532754421f, 0.266201555728912f, 0.076958827674389f,
    0.266526103019714f,
  0.077163375914097f, 0.266850501298904f, 0.077368170022964f,
    0.267174720764160f,
  0.077573217451572f, 0.267498821020126f, 0.077778510749340f,
    0.267822742462158f,
  0.077984049916267f, 0.268146485090256f, 0.078189842402935f,
    0.268470078706741f,
  0.078395880758762f, 0.268793523311615f, 0.078602164983749f,
    0.269116818904877f,
  0.078808702528477f, 0.269439965486526f, 0.079015478491783f,
    0.269762933254242f,
  0.079222507774830f, 0.270085722208023f, 0.079429790377617f,
    0.270408391952515f,
  0.079637311398983f, 0.270730882883072f, 0.079845085740089f,
    0.271053224802017f,
  0.080053105950356f, 0.271375387907028f, 0.080261372029781f,
    0.271697402000427f,
  0.080469883978367f, 0.272019267082214f, 0.080678641796112f,
    0.272340953350067f,
  0.080887645483017f, 0.272662490606308f, 0.081096902489662f,
    0.272983878850937f,
  0.081306397914886f, 0.273305088281631f, 0.081516146659851f,
    0.273626148700714f,
  0.081726133823395f, 0.273947030305862f, 0.081936374306679f,
    0.274267762899399f,
  0.082146860659122f, 0.274588316679001f, 0.082357585430145f,
    0.274908751249313f,
  0.082568563520908f, 0.275228977203369f, 0.082779780030251f,
    0.275549083948135f,
  0.082991249859333f, 0.275868982076645f, 0.083202958106995f,
    0.276188760995865f,
  0.083414919674397f, 0.276508361101151f, 0.083627119660378f,
    0.276827782392502f,
  0.083839565515518f, 0.277147054672241f, 0.084052257239819f,
    0.277466177940369f,
  0.084265194833279f, 0.277785122394562f, 0.084478378295898f,
    0.278103888034821f,
  0.084691800177097f, 0.278422504663467f, 0.084905467927456f,
    0.278740972280502f,
  0.085119381546974f, 0.279059261083603f, 0.085333541035652f,
    0.279377400875092f,
  0.085547938942909f, 0.279695361852646f, 0.085762590169907f,
    0.280013144016266f,
  0.085977479815483f, 0.280330777168274f, 0.086192607879639f,
    0.280648261308670f,
  0.086407989263535f, 0.280965566635132f, 0.086623609066010f,
    0.281282693147659f,
  0.086839467287064f, 0.281599670648575f, 0.087055571377277f,
    0.281916469335556f,
  0.087271921336651f, 0.282233119010925f, 0.087488517165184f,
    0.282549589872360f,
  0.087705351412296f, 0.282865911722183f, 0.087922424077988f,
    0.283182054758072f,
  0.088139742612839f, 0.283498018980026f, 0.088357307016850f,
    0.283813834190369f,
  0.088575109839439f, 0.284129470586777f, 0.088793158531189f,
    0.284444957971573f,
  0.089011445641518f, 0.284760266542435f, 0.089229971170425f,
    0.285075396299362f,
  0.089448742568493f, 0.285390377044678f, 0.089667752385139f,
    0.285705178976059f,
  0.089887008070946f, 0.286019802093506f, 0.090106502175331f,
    0.286334276199341f,
  0.090326242148876f, 0.286648571491241f, 0.090546220541000f,
    0.286962717771530f,
  0.090766437351704f, 0.287276685237885f, 0.090986892580986f,
    0.287590473890305f,
  0.091207593679428f, 0.287904083728790f, 0.091428533196449f,
    0.288217544555664f,
  0.091649711132050f, 0.288530826568604f, 0.091871134936810f,
    0.288843959569931f,
  0.092092797160149f, 0.289156883955002f, 0.092314697802067f,
    0.289469659328461f,
  0.092536836862564f, 0.289782285690308f, 0.092759214341640f,
    0.290094703435898f,
  0.092981837689877f, 0.290406972169876f, 0.093204692006111f,
    0.290719062089920f,
  0.093427792191505f, 0.291031002998352f, 0.093651130795479f,
    0.291342735290527f,
  0.093874707818031f, 0.291654318571091f, 0.094098523259163f,
    0.291965723037720f,
  0.094322577118874f, 0.292276978492737f, 0.094546869397163f,
    0.292588025331497f,
  0.094771400094032f, 0.292898923158646f, 0.094996169209480f,
    0.293209642171860f,
  0.095221176743507f, 0.293520182371140f, 0.095446422696114f,
    0.293830573558807f,
  0.095671907067299f, 0.294140785932541f, 0.095897629857063f,
    0.294450789690018f,
  0.096123591065407f, 0.294760644435883f, 0.096349790692329f,
    0.295070350170136f,
  0.096576221287251f, 0.295379847288132f, 0.096802897751331f,
    0.295689195394516f,
  0.097029805183411f, 0.295998334884644f, 0.097256951034069f,
    0.296307325363159f,
  0.097484335303307f, 0.296616137027740f, 0.097711957991123f,
    0.296924799680710f,
  0.097939811646938f, 0.297233253717422f, 0.098167903721333f,
    0.297541528940201f,
  0.098396234214306f, 0.297849655151367f, 0.098624803125858f,
    0.298157602548599f,
  0.098853603005409f, 0.298465341329575f, 0.099082641303539f,
    0.298772931098938f,
  0.099311910569668f, 0.299080342054367f, 0.099541425704956f,
    0.299387603998184f,
  0.099771171808243f, 0.299694657325745f, 0.100001148879528f,
    0.300001531839371f,
  0.100231364369392f, 0.300308227539063f, 0.100461818277836f,
    0.300614774227142f,
  0.100692503154278f, 0.300921112298965f, 0.100923426449299f,
    0.301227301359177f,
  0.101154580712318f, 0.301533311605453f, 0.101385973393917f,
    0.301839113235474f,
  0.101617597043514f, 0.302144765853882f, 0.101849451661110f,
    0.302450239658356f,
  0.102081544697285f, 0.302755534648895f, 0.102313876152039f,
    0.303060621023178f,
  0.102546438574791f, 0.303365558385849f, 0.102779231965542f,
    0.303670316934586f,
  0.103012263774872f, 0.303974896669388f, 0.103245526552200f,
    0.304279297590256f,
  0.103479020297527f, 0.304583519697189f, 0.103712752461433f,
    0.304887533187866f,
  0.103946708142757f, 0.305191397666931f, 0.104180909693241f,
    0.305495083332062f,
  0.104415334761143f, 0.305798590183258f, 0.104649998247623f,
    0.306101888418198f,
  0.104884892702103f, 0.306405037641525f, 0.105120018124580f,
    0.306708008050919f,
  0.105355374515057f, 0.307010769844055f, 0.105590961873531f,
    0.307313382625580f,
  0.105826787650585f, 0.307615786790848f, 0.106062836945057f,
    0.307918041944504f,
  0.106299124658108f, 0.308220088481903f, 0.106535643339157f,
    0.308521956205368f,
  0.106772392988205f, 0.308823645114899f, 0.107009373605251f,
    0.309125155210495f,
  0.107246585190296f, 0.309426486492157f, 0.107484027743340f,
    0.309727638959885f,
  0.107721701264381f, 0.310028612613678f, 0.107959605753422f,
    0.310329377651215f,
  0.108197741210461f, 0.310629993677139f, 0.108436107635498f,
    0.310930401086807f,
  0.108674705028534f, 0.311230629682541f, 0.108913525938988f,
    0.311530679464340f,
  0.109152585268021f, 0.311830550432205f, 0.109391868114471f,
    0.312130242586136f,
  0.109631389379501f, 0.312429755926132f, 0.109871134161949f,
    0.312729060649872f,
  0.110111102461815f, 0.313028186559677f, 0.110351309180260f,
    0.313327133655548f,
  0.110591746866703f, 0.313625901937485f, 0.110832408070564f,
    0.313924491405487f,
  0.111073300242424f, 0.314222872257233f, 0.111314415931702f,
    0.314521104097366f,
  0.111555770039558f, 0.314819127321243f, 0.111797347664833f,
    0.315116971731186f,
  0.112039148807526f, 0.315414607524872f, 0.112281180918217f,
    0.315712094306946f,
  0.112523443996906f, 0.316009372472763f, 0.112765938043594f,
    0.316306471824646f,
  0.113008655607700f, 0.316603392362595f, 0.113251596689224f,
    0.316900104284287f,
  0.113494776189327f, 0.317196637392044f, 0.113738171756268f,
    0.317492991685867f,
  0.113981798291206f, 0.317789167165756f, 0.114225655794144f,
    0.318085134029388f,
  0.114469736814499f, 0.318380922079086f, 0.114714048802853f,
    0.318676531314850f,
  0.114958584308624f, 0.318971961736679f, 0.115203343331814f,
    0.319267183542252f,
  0.115448333323002f, 0.319562226533890f, 0.115693546831608f,
    0.319857090711594f,
  0.115938983857632f, 0.320151746273041f, 0.116184651851654f,
    0.320446223020554f,
  0.116430543363094f, 0.320740520954132f, 0.116676658391953f,
    0.321034610271454f,
  0.116923004388809f, 0.321328520774841f, 0.117169573903084f,
    0.321622252464294f,
  0.117416366934776f, 0.321915775537491f, 0.117663383483887f,
    0.322209119796753f,
  0.117910631000996f, 0.322502255439758f, 0.118158094584942f,
    0.322795242071152f,
  0.118405789136887f, 0.323088020086288f, 0.118653707206249f,
    0.323380589485168f,
  0.118901848793030f, 0.323672980070114f, 0.119150213897228f,
    0.323965191841125f,
  0.119398809969425f, 0.324257194995880f, 0.119647622108459f,
    0.324549019336700f,
  0.119896657764912f, 0.324840664863586f, 0.120145916938782f,
    0.325132101774216f,
  0.120395407080650f, 0.325423330068588f, 0.120645113289356f,
    0.325714409351349f,
  0.120895043015480f, 0.326005280017853f, 0.121145196259022f,
    0.326295942068100f,
  0.121395580470562f, 0.326586425304413f, 0.121646173298359f,
    0.326876699924469f,
  0.121896997094154f, 0.327166795730591f, 0.122148044407368f,
    0.327456712722778f,
  0.122399315237999f, 0.327746421098709f, 0.122650802135468f,
    0.328035950660706f,
  0.122902512550354f, 0.328325271606445f, 0.123154446482658f,
    0.328614413738251f,
  0.123406603932381f, 0.328903347253799f, 0.123658977448940f,
    0.329192101955414f,
  0.123911574482918f, 0.329480648040771f, 0.124164395034313f,
    0.329769015312195f,
  0.124417431652546f, 0.330057173967361f, 0.124670691788197f,
    0.330345153808594f,
  0.124924175441265f, 0.330632925033569f, 0.125177875161171f,
    0.330920487642288f,
  0.125431805849075f, 0.331207901239395f, 0.125685945153236f,
    0.331495076417923f,
  0.125940307974815f, 0.331782072782516f, 0.126194894313812f,
    0.332068890333176f,
  0.126449704170227f, 0.332355499267578f, 0.126704722642899f,
    0.332641899585724f,
  0.126959964632988f, 0.332928121089935f, 0.127215430140495f,
    0.333214133977890f,
  0.127471104264259f, 0.333499968051910f, 0.127727001905441f,
    0.333785593509674f,
  0.127983123064041f, 0.334071010351181f, 0.128239467740059f,
    0.334356248378754f,
  0.128496021032333f, 0.334641307592392f, 0.128752797842026f,
    0.334926128387451f,
  0.129009798169136f, 0.335210770368576f, 0.129267007112503f,
    0.335495233535767f,
  0.129524439573288f, 0.335779488086700f, 0.129782080650330f,
    0.336063534021378f,
  0.130039945244789f, 0.336347371339798f, 0.130298033356667f,
    0.336631029844284f,
  0.130556344985962f, 0.336914509534836f, 0.130814850330353f,
    0.337197750806808f,
  0.131073594093323f, 0.337480813264847f, 0.131332546472549f,
    0.337763696908951f,
  0.131591722369194f, 0.338046342134476f, 0.131851106882095f,
    0.338328808546066f,
  0.132110700011253f, 0.338611096143723f, 0.132370531558990f,
    0.338893145322800f,
  0.132630556821823f, 0.339175015687943f, 0.132890805602074f,
    0.339456677436829f,
  0.133151277899742f, 0.339738160371780f, 0.133411958813667f,
    0.340019434690475f,
  0.133672863245010f, 0.340300500392914f, 0.133933976292610f,
    0.340581357479095f,
  0.134195312857628f, 0.340862035751343f, 0.134456858038902f,
    0.341142505407333f,
  0.134718611836433f, 0.341422766447067f, 0.134980589151382f,
    0.341702848672867f,
  0.135242775082588f, 0.341982692480087f, 0.135505184531212f,
    0.342262357473373f,
  0.135767802596092f, 0.342541843652725f, 0.136030644178391f,
    0.342821091413498f,
  0.136293679475784f, 0.343100160360336f, 0.136556953191757f,
    0.343379020690918f,
  0.136820420622826f, 0.343657672405243f, 0.137084111571312f,
    0.343936115503311f,
  0.137348011136055f, 0.344214379787445f, 0.137612134218216f,
    0.344492435455322f,
  0.137876465916634f, 0.344770282506943f, 0.138141006231308f,
    0.345047920942307f,
  0.138405755162239f, 0.345325350761414f, 0.138670727610588f,
    0.345602601766586f,
  0.138935908675194f, 0.345879614353180f, 0.139201298356056f,
    0.346156448125839f,
  0.139466896653175f, 0.346433073282242f, 0.139732718467712f,
    0.346709519624710f,
  0.139998748898506f, 0.346985727548599f, 0.140264987945557f,
    0.347261756658554f,
  0.140531435608864f, 0.347537547349930f, 0.140798106789589f,
    0.347813159227371f,
  0.141064971685410f, 0.348088562488556f, 0.141332060098648f,
    0.348363757133484f,
  0.141599357128143f, 0.348638743162155f, 0.141866862773895f,
    0.348913550376892f,
  0.142134591937065f, 0.349188119173050f, 0.142402514815331f,
    0.349462509155273f,
  0.142670661211014f, 0.349736660718918f, 0.142939001321793f,
    0.350010633468628f,
  0.143207564949989f, 0.350284397602081f, 0.143476337194443f,
    0.350557953119278f,
  0.143745318055153f, 0.350831300020218f, 0.144014507532120f,
    0.351104438304901f,
  0.144283905625343f, 0.351377367973328f, 0.144553512334824f,
    0.351650089025497f,
  0.144823327660561f, 0.351922631263733f, 0.145093351602554f,
    0.352194935083389f,
  0.145363584160805f, 0.352467030286789f, 0.145634025335312f,
    0.352738946676254f,
  0.145904675126076f, 0.353010624647141f, 0.146175548434258f,
    0.353282123804092f,
  0.146446615457535f, 0.353553384542465f, 0.146717891097069f,
    0.353824466466904f,
  0.146989375352860f, 0.354095309972763f, 0.147261068224907f,
    0.354365974664688f,
  0.147532954812050f, 0.354636400938034f, 0.147805064916611f,
    0.354906648397446f,
  0.148077383637428f, 0.355176687240601f, 0.148349896073341f,
    0.355446487665176f,
  0.148622632026672f, 0.355716109275818f, 0.148895561695099f,
    0.355985492467880f,
  0.149168699979782f, 0.356254696846008f, 0.149442046880722f,
    0.356523662805557f,
  0.149715602397919f, 0.356792420148849f, 0.149989366531372f,
    0.357060998678207f,
  0.150263324379921f, 0.357329338788986f, 0.150537505745888f,
    0.357597470283508f,
  0.150811880826950f, 0.357865422964096f, 0.151086464524269f,
    0.358133137226105f,
  0.151361241936684f, 0.358400642871857f, 0.151636242866516f,
    0.358667939901352f,
  0.151911437511444f, 0.358935028314590f, 0.152186840772629f,
    0.359201908111572f,
  0.152462437748909f, 0.359468549489975f, 0.152738258242607f,
    0.359735012054443f,
  0.153014272451401f, 0.360001266002655f, 0.153290495276451f,
    0.360267281532288f,
  0.153566911816597f, 0.360533088445663f, 0.153843536973000f,
    0.360798716545105f,
  0.154120370745659f, 0.361064106225967f, 0.154397398233414f,
    0.361329287290573f,
  0.154674649238586f, 0.361594229936600f, 0.154952079057693f,
    0.361858993768692f,
  0.155229732394218f, 0.362123548984528f, 0.155507579445839f,
    0.362387865781784f,
  0.155785620212555f, 0.362651973962784f, 0.156063869595528f,
    0.362915903329849f,
  0.156342327594757f, 0.363179564476013f, 0.156620979309082f,
    0.363443046808243f,
  0.156899839639664f, 0.363706320524216f, 0.157178908586502f,
    0.363969355821610f,
  0.157458171248436f, 0.364232182502747f, 0.157737627625465f,
    0.364494800567627f,
  0.158017292618752f, 0.364757210016251f, 0.158297166228294f,
    0.365019410848618f,
  0.158577233552933f, 0.365281373262405f, 0.158857494592667f,
    0.365543156862259f,
  0.159137964248657f, 0.365804702043533f, 0.159418627619743f,
    0.366066008806229f,
  0.159699499607086f, 0.366327136754990f, 0.159980565309525f,
    0.366588026285172f,
  0.160261839628220f, 0.366848707199097f, 0.160543307662010f,
    0.367109179496765f,
  0.160824984312058f, 0.367369443178177f, 0.161106839776039f,
    0.367629468441010f,
  0.161388918757439f, 0.367889285087585f, 0.161671176552773f,
    0.368148893117905f,
  0.161953642964363f, 0.368408292531967f, 0.162236317992210f,
    0.368667453527451f,
  0.162519171833992f, 0.368926405906677f, 0.162802234292030f,
    0.369185149669647f,
  0.163085505366325f, 0.369443655014038f, 0.163368955254555f,
    0.369701951742172f,
  0.163652613759041f, 0.369960039854050f, 0.163936465978622f,
    0.370217919349670f,
  0.164220526814461f, 0.370475560426712f, 0.164504766464233f,
    0.370732992887497f,
  0.164789214730263f, 0.370990216732025f, 0.165073871612549f,
    0.371247202157974f,
  0.165358707308769f, 0.371503978967667f, 0.165643751621246f,
    0.371760547161102f,
  0.165928974747658f, 0.372016876935959f, 0.166214406490326f,
    0.372272998094559f,
  0.166500031948090f, 0.372528880834579f, 0.166785866022110f,
    0.372784584760666f,
  0.167071878910065f, 0.373040050268173f, 0.167358100414276f,
    0.373295277357101f,
  0.167644515633583f, 0.373550295829773f, 0.167931124567986f,
    0.373805105686188f,
  0.168217927217484f, 0.374059677124023f, 0.168504923582077f,
    0.374314039945602f,
  0.168792113661766f, 0.374568194150925f, 0.169079497456551f,
    0.374822109937668f,
  0.169367074966431f, 0.375075817108154f, 0.169654861092567f,
    0.375329315662384f,
  0.169942826032639f, 0.375582575798035f, 0.170230999588966f,
    0.375835597515106f,
  0.170519351959229f, 0.376088410615921f, 0.170807912945747f,
    0.376341015100479f,
  0.171096652746201f, 0.376593410968781f, 0.171385586261749f,
    0.376845568418503f,
  0.171674728393555f, 0.377097487449646f, 0.171964049339294f,
    0.377349197864532f,
  0.172253578901291f, 0.377600699663162f, 0.172543287277222f,
    0.377851963043213f,
  0.172833189368248f, 0.378102988004684f, 0.173123285174370f,
    0.378353834152222f,
  0.173413574695587f, 0.378604412078857f, 0.173704057931900f,
    0.378854811191559f,
  0.173994734883308f, 0.379104942083359f, 0.174285605549812f,
    0.379354894161224f,
  0.174576655030251f, 0.379604607820511f, 0.174867913126946f,
    0.379854083061218f,
  0.175159350037575f, 0.380103349685669f, 0.175450980663300f,
    0.380352377891541f,
  0.175742805004120f, 0.380601197481155f, 0.176034808158875f,
    0.380849778652191f,
  0.176327019929886f, 0.381098151206970f, 0.176619410514832f,
    0.381346285343170f,
  0.176911994814873f, 0.381594210863113f, 0.177204772830009f,
    0.381841897964478f,
  0.177497729659081f, 0.382089376449585f, 0.177790880203247f,
    0.382336616516113f,
  0.178084224462509f, 0.382583618164063f, 0.178377762436867f,
    0.382830440998077f,
  0.178671479225159f, 0.383076995611191f, 0.178965389728546f,
    0.383323341608047f,
  0.179259493947029f, 0.383569449186325f, 0.179553776979446f,
    0.383815348148346f,
  0.179848253726959f, 0.384061008691788f, 0.180142924189568f,
    0.384306460618973f,
  0.180437773466110f, 0.384551674127579f, 0.180732816457748f,
    0.384796649217606f,
  0.181028053164482f, 0.385041415691376f, 0.181323468685150f,
    0.385285943746567f,
  0.181619063019753f, 0.385530263185501f, 0.181914865970612f,
    0.385774344205856f,
  0.182210832834244f, 0.386018186807632f, 0.182507008314133f,
    0.386261820793152f,
  0.182803362607956f, 0.386505216360092f, 0.183099895715714f,
    0.386748403310776f,
  0.183396622538567f, 0.386991351842880f, 0.183693528175354f,
    0.387234061956406f,
  0.183990627527237f, 0.387476563453674f, 0.184287920594215f,
    0.387718826532364f,
  0.184585392475128f, 0.387960851192474f, 0.184883043169975f,
    0.388202667236328f,
  0.185180887579918f, 0.388444244861603f, 0.185478910803795f,
    0.388685584068298f,
  0.185777112841606f, 0.388926714658737f, 0.186075508594513f,
    0.389167606830597f,
  0.186374098062515f, 0.389408260583878f, 0.186672851443291f,
    0.389648675918579f,
  0.186971798539162f, 0.389888882637024f, 0.187270939350128f,
    0.390128880739212f,
  0.187570258975029f, 0.390368610620499f, 0.187869757413864f,
    0.390608131885529f,
  0.188169434666634f, 0.390847414731979f, 0.188469305634499f,
    0.391086459159851f,
  0.188769355416298f, 0.391325294971466f, 0.189069598913193f,
    0.391563892364502f,
  0.189370006322861f, 0.391802251338959f, 0.189670607447624f,
    0.392040401697159f,
  0.189971387386322f, 0.392278283834457f, 0.190272361040115f,
    0.392515957355499f,
  0.190573498606682f, 0.392753422260284f, 0.190874829888344f,
    0.392990618944168f,
  0.191176339983940f, 0.393227607011795f, 0.191478043794632f,
    0.393464356660843f,
  0.191779911518097f, 0.393700867891312f, 0.192081972956657f,
    0.393937170505524f,
  0.192384198307991f, 0.394173204898834f, 0.192686617374420f,
    0.394409030675888f,
  0.192989215254784f, 0.394644618034363f, 0.193292006850243f,
    0.394879996776581f,
  0.193594962358475f, 0.395115107297897f, 0.193898096680641f,
    0.395350009202957f,
  0.194201424717903f, 0.395584672689438f, 0.194504916667938f,
    0.395819097757339f,
  0.194808602333069f, 0.396053284406662f, 0.195112451910973f,
    0.396287262439728f,
  0.195416495203972f, 0.396520972251892f, 0.195720717310905f,
    0.396754473447800f,
  0.196025103330612f, 0.396987736225128f, 0.196329683065414f,
    0.397220760583878f,
  0.196634441614151f, 0.397453576326370f, 0.196939364075661f,
    0.397686123847961f,
  0.197244480252266f, 0.397918462753296f, 0.197549775242805f,
    0.398150533437729f,
  0.197855234146118f, 0.398382395505905f, 0.198160871863365f,
    0.398614019155502f,
  0.198466703295708f, 0.398845434188843f, 0.198772698640823f,
    0.399076581001282f,
  0.199078872799873f, 0.399307489395142f, 0.199385225772858f,
    0.399538189172745f,
  0.199691757559776f, 0.399768620729446f, 0.199998468160629f,
    0.399998843669891f,
  0.200305357575417f, 0.400228828191757f, 0.200612410902977f,
    0.400458574295044f,
  0.200919643044472f, 0.400688081979752f, 0.201227053999901f,
    0.400917351245880f,
  0.201534643769264f, 0.401146411895752f, 0.201842412352562f,
    0.401375204324722f,
  0.202150344848633f, 0.401603758335114f, 0.202458456158638f,
    0.401832103729248f,
  0.202766746282578f, 0.402060180902481f, 0.203075215220451f,
    0.402288049459457f,
  0.203383848071098f, 0.402515679597855f, 0.203692659735680f,
    0.402743041515350f,
  0.204001650214195f, 0.402970194816589f, 0.204310819506645f,
    0.403197109699249f,
  0.204620152711868f, 0.403423786163330f, 0.204929664731026f,
    0.403650224208832f,
  0.205239340662956f, 0.403876423835754f, 0.205549195408821f,
    0.404102355241776f,
  0.205859228968620f, 0.404328078031540f, 0.206169426441193f,
    0.404553562402725f,
  0.206479802727699f, 0.404778808355331f, 0.206790357828140f,
    0.405003815889359f,
  0.207101076841354f, 0.405228585004807f, 0.207411959767342f,
    0.405453115701675f,
  0.207723021507263f, 0.405677437782288f, 0.208034262061119f,
    0.405901491641998f,
  0.208345666527748f, 0.406125307083130f, 0.208657249808311f,
    0.406348884105682f,
  0.208969011902809f, 0.406572192907333f, 0.209280923008919f,
    0.406795293092728f,
  0.209593027830124f, 0.407018154859543f, 0.209905281662941f,
    0.407240778207779f,
  0.210217714309692f, 0.407463163137436f, 0.210530325770378f,
    0.407685309648514f,
  0.210843101143837f, 0.407907217741013f, 0.211156040430069f,
    0.408128857612610f,
  0.211469158530235f, 0.408350288867950f, 0.211782455444336f,
    0.408571451902390f,
  0.212095901370049f, 0.408792406320572f, 0.212409526109695f,
    0.409013092517853f,
  0.212723329663277f, 0.409233570098877f, 0.213037282228470f,
    0.409453779459000f,
  0.213351413607597f, 0.409673750400543f, 0.213665723800659f,
    0.409893482923508f,
  0.213980183005333f, 0.410112977027893f, 0.214294821023941f,
    0.410332232713699f,
  0.214609622955322f, 0.410551249980927f, 0.214924603700638f,
    0.410770028829575f,
  0.215239733457565f, 0.410988569259644f, 0.215555042028427f,
    0.411206841468811f,
  0.215870529413223f, 0.411424905061722f, 0.216186165809631f,
    0.411642700433731f,
  0.216501981019974f, 0.411860257387161f, 0.216817945241928f,
    0.412077575922012f,
  0.217134088277817f, 0.412294656038284f, 0.217450410127640f,
    0.412511497735977f,
  0.217766880989075f, 0.412728071212769f, 0.218083515763283f,
    0.412944436073303f,
  0.218400329351425f, 0.413160532712936f, 0.218717306852341f,
    0.413376390933990f,
  0.219034433364868f, 0.413592010736465f, 0.219351738691330f,
    0.413807392120361f,
  0.219669207930565f, 0.414022535085678f, 0.219986841082573f,
    0.414237409830093f,
  0.220304638147354f, 0.414452046155930f, 0.220622614026070f,
    0.414666473865509f,
  0.220940738916397f, 0.414880603551865f, 0.221259027719498f,
    0.415094524621964f,
  0.221577480435371f, 0.415308207273483f, 0.221896097064018f,
    0.415521621704102f,
  0.222214877605438f, 0.415734797716141f, 0.222533836960793f,
    0.415947735309601f,
  0.222852945327759f, 0.416160434484482f, 0.223172217607498f,
    0.416372895240784f,
  0.223491653800011f, 0.416585087776184f, 0.223811239004135f,
    0.416797041893005f,
  0.224131003022194f, 0.417008757591248f, 0.224450930953026f,
    0.417220205068588f,
  0.224771007895470f, 0.417431443929672f, 0.225091263651848f,
    0.417642414569855f,
  0.225411668419838f, 0.417853146791458f, 0.225732237100601f,
    0.418063640594482f,
  0.226052969694138f, 0.418273866176605f, 0.226373866200447f,
    0.418483853340149f,
  0.226694911718369f, 0.418693602085114f, 0.227016136050224f,
    0.418903112411499f,
  0.227337509393692f, 0.419112354516983f, 0.227659046649933f,
    0.419321358203888f,
  0.227980732917786f, 0.419530123472214f, 0.228302597999573f,
    0.419738620519638f,
  0.228624612092972f, 0.419946908950806f, 0.228946775197983f,
    0.420154929161072f,
  0.229269117116928f, 0.420362681150436f, 0.229591608047485f,
    0.420570224523544f,
  0.229914262890816f, 0.420777499675751f, 0.230237081646919f,
    0.420984506607056f,
  0.230560049414635f, 0.421191304922104f, 0.230883181095123f,
    0.421397835016251f,
  0.231206461787224f, 0.421604126691818f, 0.231529906392097f,
    0.421810150146484f,
  0.231853514909744f, 0.422015935182571f, 0.232177272439003f,
    0.422221481800079f,
  0.232501193881035f, 0.422426789999008f, 0.232825264334679f,
    0.422631829977036f,
  0.233149498701096f, 0.422836631536484f, 0.233473882079124f,
    0.423041164875031f,
  0.233798429369926f, 0.423245459794998f, 0.234123140573502f,
    0.423449516296387f,
  0.234448000788689f, 0.423653304576874f, 0.234773010015488f,
    0.423856884241104f,
  0.235098183155060f, 0.424060165882111f, 0.235423520207405f,
    0.424263238906860f,
  0.235749006271362f, 0.424466013908386f, 0.236074641346931f,
    0.424668580293655f,
  0.236400425434113f, 0.424870878458023f, 0.236726388335228f,
    0.425072938203812f,
  0.237052485346794f, 0.425274729728699f, 0.237378746271133f,
    0.425476282835007f,
  0.237705156207085f, 0.425677597522736f, 0.238031730055809f,
    0.425878643989563f,
  0.238358452916145f, 0.426079452037811f, 0.238685324788094f,
    0.426279991865158f,
  0.239012360572815f, 0.426480293273926f, 0.239339530467987f,
    0.426680356264114f,
  0.239666879177094f, 0.426880151033401f, 0.239994361996651f,
    0.427079707384110f,
  0.240322008728981f, 0.427278995513916f, 0.240649804472923f,
    0.427478045225143f,
  0.240977749228477f, 0.427676826715469f, 0.241305842995644f,
    0.427875369787216f,
  0.241634100675583f, 0.428073674440384f, 0.241962507367134f,
    0.428271710872650f,
  0.242291063070297f, 0.428469479084015f, 0.242619767785072f,
    0.428667008876801f,
  0.242948621511459f, 0.428864300251007f, 0.243277639150620f,
    0.429061323404312f,
  0.243606805801392f, 0.429258108139038f, 0.243936106562614f,
    0.429454624652863f,
  0.244265571236610f, 0.429650902748108f, 0.244595184922218f,
    0.429846942424774f,
  0.244924947619438f, 0.430042684078217f, 0.245254859328270f,
    0.430238217115402f,
  0.245584934949875f, 0.430433481931686f, 0.245915144681931f,
    0.430628478527069f,
  0.246245503425598f, 0.430823236703873f, 0.246576011180878f,
    0.431017726659775f,
  0.246906682848930f, 0.431211978197098f, 0.247237488627434f,
    0.431405961513519f,
  0.247568443417549f, 0.431599706411362f, 0.247899547219276f,
    0.431793183088303f,
  0.248230814933777f, 0.431986421346664f, 0.248562216758728f,
    0.432179391384125f,
  0.248893767595291f, 0.432372123003006f, 0.249225467443466f,
    0.432564586400986f,
  0.249557301402092f, 0.432756811380386f, 0.249889299273491f,
    0.432948768138886f,
  0.250221431255341f, 0.433140486478806f, 0.250553727149963f,
    0.433331936597824f,
  0.250886172056198f, 0.433523118495941f, 0.251218736171722f,
    0.433714061975479f,
  0.251551479101181f, 0.433904737234116f, 0.251884341239929f,
    0.434095174074173f,
  0.252217382192612f, 0.434285342693329f, 0.252550542354584f,
    0.434475272893906f,
  0.252883851528168f, 0.434664934873581f, 0.253217309713364f,
    0.434854328632355f,
  0.253550916910172f, 0.435043483972549f, 0.253884643316269f,
    0.435232400894165f,
  0.254218548536301f, 0.435421019792557f, 0.254552572965622f,
    0.435609430074692f,
  0.254886746406555f, 0.435797542333603f, 0.255221068859100f,
    0.435985416173935f,
  0.255555540323257f, 0.436173021793365f, 0.255890160799026f,
    0.436360388994217f,
  0.256224930286407f, 0.436547487974167f, 0.256559818983078f,
    0.436734348535538f,
  0.256894856691360f, 0.436920911073685f, 0.257230043411255f,
    0.437107264995575f,
  0.257565379142761f, 0.437293320894241f, 0.257900834083557f,
    0.437479138374329f,
  0.258236467838287f, 0.437664687633514f, 0.258572220802307f,
    0.437849998474121f,
  0.258908122777939f, 0.438035041093826f, 0.259244143962860f,
    0.438219845294952f,
  0.259580343961716f, 0.438404351472855f, 0.259916663169861f,
    0.438588619232178f,
  0.260253131389618f, 0.438772648572922f, 0.260589718818665f,
    0.438956409692764f,
  0.260926485061646f, 0.439139902591705f, 0.261263370513916f,
    0.439323127269745f,
  0.261600375175476f, 0.439506113529205f, 0.261937558650970f,
    0.439688831567764f,
  0.262274861335754f, 0.439871311187744f, 0.262612313032150f,
    0.440053492784500f,
  0.262949883937836f, 0.440235435962677f, 0.263287603855133f,
    0.440417140722275f,
  0.263625472784042f, 0.440598547458649f, 0.263963490724564f,
    0.440779715776443f,
  0.264301627874374f, 0.440960645675659f, 0.264639914035797f,
    0.441141277551651f,
  0.264978319406509f, 0.441321671009064f, 0.265316903591156f,
    0.441501796245575f,
  0.265655577182770f, 0.441681683063507f, 0.265994429588318f,
    0.441861271858215f,
  0.266333401203156f, 0.442040622234344f, 0.266672492027283f,
    0.442219734191895f,
  0.267011761665344f, 0.442398548126221f, 0.267351150512695f,
    0.442577123641968f,
  0.267690658569336f, 0.442755430936813f, 0.268030315637589f,
    0.442933470010757f,
  0.268370121717453f, 0.443111270666122f, 0.268710047006607f,
    0.443288803100586f,
  0.269050091505051f, 0.443466067314148f, 0.269390314817429f,
    0.443643063306808f,
  0.269730657339096f, 0.443819820880890f, 0.270071119070053f,
    0.443996280431747f,
  0.270411729812622f, 0.444172531366348f, 0.270752459764481f,
    0.444348484277725f,
  0.271093338727951f, 0.444524168968201f, 0.271434366703033f,
    0.444699615240097f,
  0.271775513887405f, 0.444874793291092f, 0.272116780281067f,
    0.445049703121185f,
  0.272458195686340f, 0.445224374532700f, 0.272799760103226f,
    0.445398747920990f,
  0.273141443729401f, 0.445572882890701f, 0.273483246564865f,
    0.445746749639511f,
  0.273825198411942f, 0.445920348167419f, 0.274167299270630f,
    0.446093708276749f,
  0.274509519338608f, 0.446266770362854f, 0.274851858615875f,
    0.446439594030380f,
  0.275194346904755f, 0.446612149477005f, 0.275536954402924f,
    0.446784436702728f,
  0.275879681110382f, 0.446956485509872f, 0.276222556829453f,
    0.447128236293793f,
  0.276565581560135f, 0.447299748659134f, 0.276908725500107f,
    0.447470992803574f,
  0.277251988649368f, 0.447641968727112f, 0.277595400810242f,
    0.447812676429749f,
  0.277938932180405f, 0.447983115911484f, 0.278282582759857f,
    0.448153316974640f,
  0.278626382350922f, 0.448323249816895f, 0.278970301151276f,
    0.448492884635925f,
  0.279314368963242f, 0.448662281036377f, 0.279658555984497f,
    0.448831409215927f,
  0.280002862215042f, 0.449000298976898f, 0.280347317457199f,
    0.449168890714645f,
  0.280691891908646f, 0.449337244033813f, 0.281036585569382f,
    0.449505299329758f,
  0.281381398439407f, 0.449673116207123f, 0.281726360321045f,
    0.449840664863586f,
  0.282071471214294f, 0.450007945299149f, 0.282416671514511f,
    0.450174957513809f,
  0.282762020826340f, 0.450341701507568f, 0.283107489347458f,
    0.450508207082748f,
  0.283453077077866f, 0.450674414634705f, 0.283798813819885f,
    0.450840383768082f,
  0.284144669771194f, 0.451006084680557f, 0.284490644931793f,
    0.451171487569809f,
  0.284836769104004f, 0.451336652040482f, 0.285182982683182f,
    0.451501548290253f,
  0.285529345273972f, 0.451666176319122f, 0.285875827074051f,
    0.451830536127090f,
  0.286222457885742f, 0.451994657516479f, 0.286569178104401f,
    0.452158480882645f,
  0.286916047334671f, 0.452322036027908f, 0.287263035774231f,
    0.452485352754593f,
  0.287610173225403f, 0.452648371458054f, 0.287957400083542f,
    0.452811151742935f,
  0.288304775953293f, 0.452973634004593f, 0.288652241230011f,
    0.453135877847672f,
  0.288999855518341f, 0.453297853469849f, 0.289347589015961f,
    0.453459560871124f,
  0.289695471525192f, 0.453621000051498f, 0.290043443441391f,
    0.453782171010971f,
  0.290391564369202f, 0.453943043947220f, 0.290739774703979f,
    0.454103678464890f,
  0.291088134050369f, 0.454264044761658f, 0.291436612606049f,
    0.454424172639847f,
  0.291785210371017f, 0.454584002494812f, 0.292133957147598f,
    0.454743564128876f,
  0.292482793331146f, 0.454902857542038f, 0.292831748723984f,
    0.455061882734299f,
  0.293180853128433f, 0.455220639705658f, 0.293530046939850f,
    0.455379128456116f,
  0.293879389762878f, 0.455537378787994f, 0.294228851795197f,
    0.455695331096649f,
  0.294578403234482f, 0.455853015184402f, 0.294928103685379f,
    0.456010431051254f,
  0.295277923345566f, 0.456167578697205f, 0.295627862215042f,
    0.456324487924576f,
  0.295977920293808f, 0.456481099128723f, 0.296328097581863f,
    0.456637442111969f,
  0.296678394079208f, 0.456793516874313f, 0.297028809785843f,
    0.456949323415756f,
  0.297379344701767f, 0.457104891538620f, 0.297729998826981f,
    0.457260161638260f,
  0.298080772161484f, 0.457415163516998f, 0.298431664705276f,
    0.457569897174835f,
  0.298782676458359f, 0.457724362611771f, 0.299133807420731f,
    0.457878559827805f,
  0.299485057592392f, 0.458032488822937f, 0.299836426973343f,
    0.458186149597168f,
  0.300187885761261f, 0.458339542150497f, 0.300539493560791f,
    0.458492636680603f,
  0.300891220569611f, 0.458645492792130f, 0.301243066787720f,
    0.458798080682755f,
  0.301595002412796f, 0.458950400352478f, 0.301947087049484f,
    0.459102421998978f,
  0.302299261093140f, 0.459254205226898f, 0.302651554346085f,
    0.459405690431595f,
  0.303003966808319f, 0.459556937217712f, 0.303356528282166f,
    0.459707885980606f,
  0.303709149360657f, 0.459858566522598f, 0.304061919450760f,
    0.460008978843689f,
  0.304414808750153f, 0.460159152746201f, 0.304767817258835f,
    0.460309028625488f,
  0.305120915174484f, 0.460458606481552f, 0.305474132299423f,
    0.460607945919037f,
  0.305827468633652f, 0.460757017135620f, 0.306180924177170f,
    0.460905820131302f,
  0.306534498929977f, 0.461054325103760f, 0.306888192892075f,
    0.461202591657639f,
  0.307241976261139f, 0.461350560188293f, 0.307595878839493f,
    0.461498260498047f,
  0.307949900627136f, 0.461645722389221f, 0.308304041624069f,
    0.461792886257172f,
  0.308658272027969f, 0.461939752101898f, 0.309012651443481f,
    0.462086379528046f,
  0.309367120265961f, 0.462232738733292f, 0.309721708297729f,
    0.462378799915314f,
  0.310076385736465f, 0.462524622678757f, 0.310431212186813f,
    0.462670147418976f,
  0.310786128044128f, 0.462815403938293f, 0.311141163110733f,
    0.462960392236710f,
  0.311496287584305f, 0.463105112314224f, 0.311851561069489f,
    0.463249564170837f,
  0.312206923961639f, 0.463393747806549f, 0.312562376260757f,
    0.463537633419037f,
  0.312917977571487f, 0.463681250810623f, 0.313273668289185f,
    0.463824629783630f,
  0.313629478216171f, 0.463967710733414f, 0.313985377550125f,
    0.464110493659973f,
  0.314341396093369f, 0.464253038167953f, 0.314697533845901f,
    0.464395314455032f,
  0.315053790807724f, 0.464537292718887f, 0.315410137176514f,
    0.464679002761841f,
  0.315766572952271f, 0.464820444583893f, 0.316123157739639f,
    0.464961618185043f,
  0.316479831933975f, 0.465102523565292f, 0.316836595535278f,
    0.465243130922318f,
  0.317193508148193f, 0.465383470058441f, 0.317550510168076f,
    0.465523540973663f,
  0.317907601594925f, 0.465663343667984f, 0.318264812231064f,
    0.465802878141403f,
  0.318622142076492f, 0.465942144393921f, 0.318979561328888f,
    0.466081112623215f,
  0.319337099790573f, 0.466219812631607f, 0.319694727659225f,
    0.466358244419098f,
  0.320052474737167f, 0.466496407985687f, 0.320410341024399f,
    0.466634273529053f,
  0.320768296718597f, 0.466771900653839f, 0.321126341819763f,
    0.466909229755402f,
  0.321484506130219f, 0.467046260833740f, 0.321842789649963f,
    0.467183053493500f,
  0.322201162576675f, 0.467319577932358f, 0.322559654712677f,
    0.467455804347992f,
  0.322918236255646f, 0.467591762542725f, 0.323276937007904f,
    0.467727422714233f,
  0.323635727167130f, 0.467862844467163f, 0.323994606733322f,
    0.467997968196869f,
  0.324353635311127f, 0.468132823705673f, 0.324712723493576f,
    0.468267410993576f,
  0.325071930885315f, 0.468401730060577f, 0.325431257486343f,
    0.468535751104355f,
  0.325790673494339f, 0.468669503927231f, 0.326150178909302f,
    0.468802988529205f,
  0.326509803533554f, 0.468936175107956f, 0.326869517564774f,
    0.469069123268127f,
  0.327229350805283f, 0.469201773405075f, 0.327589273452759f,
    0.469334155321121f,
  0.327949285507202f, 0.469466239213943f, 0.328309416770935f,
    0.469598054885864f,
  0.328669637441635f, 0.469729602336884f, 0.329029977321625f,
    0.469860881567001f,
  0.329390406608582f, 0.469991862773895f, 0.329750925302505f,
    0.470122605562210f,
  0.330111563205719f, 0.470253020524979f, 0.330472290515900f,
    0.470383197069168f,
  0.330833107233047f, 0.470513075590134f, 0.331194043159485f,
    0.470642685890198f,
  0.331555068492889f, 0.470772027969360f, 0.331916213035584f,
    0.470901101827621f,
  0.332277417182922f, 0.471029877662659f, 0.332638740539551f,
    0.471158385276794f,
  0.333000183105469f, 0.471286594867706f, 0.333361685276031f,
    0.471414536237717f,
  0.333723306655884f, 0.471542209386826f, 0.334085017442703f,
    0.471669614315033f,
  0.334446847438812f, 0.471796721220016f, 0.334808766841888f,
    0.471923559904099f,
  0.335170775651932f, 0.472050130367279f, 0.335532873868942f,
    0.472176402807236f,
  0.335895091295242f, 0.472302407026291f, 0.336257368326187f,
    0.472428143024445f,
  0.336619764566422f, 0.472553610801697f, 0.336982280015945f,
    0.472678780555725f,
  0.337344855070114f, 0.472803652286530f, 0.337707549333572f,
    0.472928285598755f,
  0.338070303201675f, 0.473052620887756f, 0.338433176279068f,
    0.473176687955856f,
  0.338796168565750f, 0.473300457000732f, 0.339159220457077f,
    0.473423957824707f,
  0.339522391557693f, 0.473547190427780f, 0.339885622262955f,
    0.473670125007629f,
  0.340248972177505f, 0.473792791366577f, 0.340612411499023f,
    0.473915189504623f,
  0.340975970029831f, 0.474037289619446f, 0.341339588165283f,
    0.474159121513367f,
  0.341703325510025f, 0.474280685186386f, 0.342067122459412f,
    0.474401950836182f,
  0.342431038618088f, 0.474522948265076f, 0.342795044183731f,
    0.474643647670746f,
  0.343159139156342f, 0.474764078855515f, 0.343523323535919f,
    0.474884241819382f,
  0.343887597322464f, 0.475004136562347f, 0.344251960515976f,
    0.475123733282089f,
  0.344616413116455f, 0.475243031978607f, 0.344980984926224f,
    0.475362062454224f,
  0.345345616340637f, 0.475480824708939f, 0.345710366964340f,
    0.475599318742752f,
  0.346075177192688f, 0.475717514753342f, 0.346440106630325f,
    0.475835442543030f,
  0.346805095672607f, 0.475953072309494f, 0.347170203924179f,
    0.476070433855057f,
  0.347535371780396f, 0.476187497377396f, 0.347900658845901f,
    0.476304292678833f,
  0.348266035318375f, 0.476420819759369f, 0.348631471395493f,
    0.476537048816681f,
  0.348997026681900f, 0.476653009653091f, 0.349362671375275f,
    0.476768702268600f,
  0.349728375673294f, 0.476884096860886f, 0.350094199180603f,
    0.476999223232269f,
  0.350460082292557f, 0.477114051580429f, 0.350826084613800f,
    0.477228611707687f,
  0.351192146539688f, 0.477342873811722f, 0.351558297872543f,
    0.477456867694855f,
  0.351924568414688f, 0.477570593357086f, 0.352290898561478f,
    0.477684020996094f,
  0.352657318115234f, 0.477797180414200f, 0.353023827075958f,
    0.477910041809082f,
  0.353390425443649f, 0.478022634983063f, 0.353757113218308f,
    0.478134930133820f,
  0.354123860597610f, 0.478246957063675f, 0.354490727186203f,
    0.478358715772629f,
  0.354857653379440f, 0.478470176458359f, 0.355224698781967f,
    0.478581339120865f,
  0.355591803789139f, 0.478692263364792f, 0.355958998203278f,
    0.478802859783173f,
  0.356326282024384f, 0.478913217782974f, 0.356693625450134f,
    0.479023247957230f,
  0.357061088085175f, 0.479133039712906f, 0.357428610324860f,
    0.479242533445358f,
  0.357796221971512f, 0.479351729154587f, 0.358163923025131f,
    0.479460656642914f,
  0.358531713485718f, 0.479569315910339f, 0.358899593353271f,
    0.479677677154541f,
  0.359267532825470f, 0.479785770177841f, 0.359635561704636f,
    0.479893565177917f,
  0.360003679990768f, 0.480001062154770f, 0.360371887683868f,
    0.480108320713043f,
  0.360740154981613f, 0.480215251445770f, 0.361108511686325f,
    0.480321943759918f,
  0.361476957798004f, 0.480428308248520f, 0.361845493316650f,
    0.480534434318542f,
  0.362214088439941f, 0.480640232563019f, 0.362582772970200f,
    0.480745792388916f,
  0.362951546907425f, 0.480851024389267f, 0.363320380449295f,
    0.480956017971039f,
  0.363689333200455f, 0.481060713529587f, 0.364058345556259f,
    0.481165111064911f,
  0.364427417516708f, 0.481269240379334f, 0.364796578884125f,
    0.481373071670532f,
  0.365165829658508f, 0.481476634740829f, 0.365535169839859f,
    0.481579899787903f,
  0.365904569625854f, 0.481682896614075f, 0.366274058818817f,
    0.481785595417023f,
  0.366643607616425f, 0.481888025999069f, 0.367013275623322f,
    0.481990188360214f,
  0.367382973432541f, 0.482092022895813f, 0.367752790451050f,
    0.482193619012833f,
  0.368122667074203f, 0.482294887304306f, 0.368492603302002f,
    0.482395917177200f,
  0.368862658739090f, 0.482496619224548f, 0.369232743978500f,
    0.482597053050995f,
  0.369602948427200f, 0.482697218656540f, 0.369973212480545f,
    0.482797086238861f,
  0.370343536138535f, 0.482896685600281f, 0.370713949203491f,
    0.482995986938477f,
  0.371084451675415f, 0.483094990253448f, 0.371455013751984f,
    0.483193725347519f,
  0.371825665235519f, 0.483292192220688f, 0.372196376323700f,
    0.483390361070633f,
  0.372567176818848f, 0.483488231897354f, 0.372938036918640f,
    0.483585834503174f,
  0.373308986425400f, 0.483683139085770f, 0.373679995536804f,
    0.483780175447464f,
  0.374051094055176f, 0.483876913785934f, 0.374422252178192f,
    0.483973383903503f,
  0.374793499708176f, 0.484069555997849f, 0.375164806842804f,
    0.484165430068970f,
  0.375536203384399f, 0.484261035919189f, 0.375907659530640f,
    0.484356373548508f,
  0.376279205083847f, 0.484451413154602f, 0.376650810241699f,
    0.484546154737473f,
  0.377022475004196f, 0.484640628099442f, 0.377394229173660f,
    0.484734803438187f,
  0.377766042947769f, 0.484828680753708f, 0.378137946128845f,
    0.484922289848328f,
  0.378509908914566f, 0.485015630722046f, 0.378881961107254f,
    0.485108673572540f,
  0.379254043102264f, 0.485201418399811f, 0.379626244306564f,
    0.485293895006180f,
  0.379998475313187f, 0.485386073589325f, 0.380370795726776f,
    0.485477954149246f,
  0.380743205547333f, 0.485569566488266f, 0.381115674972534f,
    0.485660910606384f,
  0.381488204002380f, 0.485751956701279f, 0.381860792636871f,
    0.485842704772949f,
  0.382233470678329f, 0.485933154821396f, 0.382606208324432f,
    0.486023366451263f,
  0.382979035377502f, 0.486113250255585f, 0.383351892232895f,
    0.486202865839005f,
  0.383724838495255f, 0.486292183399200f, 0.384097874164581f,
    0.486381232738495f,
  0.384470939636230f, 0.486469984054565f, 0.384844094514847f,
    0.486558437347412f,
  0.385217308998108f, 0.486646622419357f, 0.385590612888336f,
    0.486734509468079f,
  0.385963946580887f, 0.486822128295898f, 0.386337369680405f,
    0.486909449100494f,
  0.386710882186890f, 0.486996471881866f, 0.387084424495697f,
    0.487083226442337f,
  0.387458056211472f, 0.487169682979584f, 0.387831717729568f,
    0.487255871295929f,
  0.388205498456955f, 0.487341761589050f, 0.388579308986664f,
    0.487427353858948f,
  0.388953179121017f, 0.487512677907944f, 0.389327138662338f,
    0.487597703933716f,
  0.389701157808304f, 0.487682431936264f, 0.390075236558914f,
    0.487766891717911f,
  0.390449374914169f, 0.487851053476334f, 0.390823602676392f,
    0.487934947013855f,
  0.391197860240936f, 0.488018542528152f, 0.391572207212448f,
    0.488101840019226f,
  0.391946613788605f, 0.488184869289398f, 0.392321079969406f,
    0.488267600536346f,
  0.392695605754852f, 0.488350033760071f, 0.393070191144943f,
    0.488432198762894f,
  0.393444836139679f, 0.488514065742493f, 0.393819570541382f,
    0.488595664501190f,
  0.394194334745407f, 0.488676935434341f, 0.394569188356400f,
    0.488757967948914f,
  0.394944071769714f, 0.488838672637939f, 0.395319044589996f,
    0.488919109106064f,
  0.395694077014923f, 0.488999247550964f, 0.396069169044495f,
    0.489079117774963f,
  0.396444320678711f, 0.489158689975739f, 0.396819531917572f,
    0.489237964153290f,
  0.397194802761078f, 0.489316970109940f, 0.397570133209229f,
    0.489395678043365f,
  0.397945523262024f, 0.489474087953568f, 0.398320972919464f,
    0.489552229642868f,
  0.398696482181549f, 0.489630073308945f, 0.399072051048279f,
    0.489707618951797f,
  0.399447679519653f, 0.489784896373749f, 0.399823367595673f,
    0.489861875772476f,
  0.400199115276337f, 0.489938557147980f, 0.400574922561646f,
    0.490014940500259f,
  0.400950789451599f, 0.490091055631638f, 0.401326715946198f,
    0.490166902542114f,
  0.401702702045441f, 0.490242421627045f, 0.402078747749329f,
    0.490317672491074f,
  0.402454853057861f, 0.490392625331879f, 0.402830988168716f,
    0.490467309951782f,
  0.403207212686539f, 0.490541696548462f, 0.403583467006683f,
    0.490615785121918f,
  0.403959810733795f, 0.490689605474472f, 0.404336184263229f,
    0.490763127803802f,
  0.404712617397308f, 0.490836352109909f, 0.405089110136032f,
    0.490909278392792f,
  0.405465662479401f, 0.490981936454773f, 0.405842274427414f,
    0.491054296493530f,
  0.406218945980072f, 0.491126358509064f, 0.406595647335052f,
    0.491198152303696f,
  0.406972438097000f, 0.491269648075104f, 0.407349258661270f,
    0.491340845823288f,
  0.407726138830185f, 0.491411775350571f, 0.408103078603745f,
    0.491482406854630f,
  0.408480048179626f, 0.491552740335464f, 0.408857107162476f,
    0.491622805595398f,
  0.409234195947647f, 0.491692543029785f, 0.409611344337463f,
    0.491762012243271f,
  0.409988552331924f, 0.491831213235855f, 0.410365819931030f,
    0.491900116205215f,
  0.410743117332459f, 0.491968721151352f, 0.411120474338531f,
    0.492037028074265f,
  0.411497890949249f, 0.492105036973953f, 0.411875367164612f,
    0.492172777652740f,
  0.412252873182297f, 0.492240220308304f, 0.412630438804626f,
    0.492307394742966f,
  0.413008064031601f, 0.492374241352081f, 0.413385748863220f,
    0.492440819740295f,
  0.413763463497162f, 0.492507129907608f, 0.414141237735748f,
    0.492573112249374f,
  0.414519041776657f, 0.492638826370239f, 0.414896935224533f,
    0.492704242467880f,
  0.415274858474731f, 0.492769360542297f, 0.415652841329575f,
    0.492834210395813f,
  0.416030853986740f, 0.492898762226105f, 0.416408926248550f,
    0.492963016033173f,
  0.416787058115005f, 0.493026971817017f, 0.417165219783783f,
    0.493090659379959f,
  0.417543441057205f, 0.493154048919678f, 0.417921721935272f,
    0.493217140436172f,
  0.418300032615662f, 0.493279963731766f, 0.418678402900696f,
    0.493342459201813f,
  0.419056802988052f, 0.493404686450958f, 0.419435262680054f,
    0.493466645479202f,
  0.419813781976700f, 0.493528276681900f, 0.420192331075668f,
    0.493589639663696f,
  0.420570939779282f, 0.493650704622269f, 0.420949578285217f,
    0.493711471557617f,
  0.421328276395798f, 0.493771970272064f, 0.421707004308701f,
    0.493832170963287f,
  0.422085791826248f, 0.493892073631287f, 0.422464638948441f,
    0.493951678276062f,
  0.422843515872955f, 0.494011014699936f, 0.423222452402115f,
    0.494070053100586f,
  0.423601418733597f, 0.494128793478012f, 0.423980414867401f,
    0.494187235832214f,
  0.424359470605850f, 0.494245409965515f, 0.424738585948944f,
    0.494303256273270f,
  0.425117731094360f, 0.494360834360123f, 0.425496935844421f,
    0.494418144226074f,
  0.425876170396805f, 0.494475126266479f, 0.426255434751511f,
    0.494531840085983f,
  0.426634758710861f, 0.494588255882263f, 0.427014142274857f,
    0.494644373655319f,
  0.427393525838852f, 0.494700223207474f, 0.427772998809814f,
    0.494755744934082f,
  0.428152471780777f, 0.494810998439789f, 0.428532034158707f,
    0.494865983724594f,
  0.428911596536636f, 0.494920641183853f, 0.429291218519211f,
    0.494975030422211f,
  0.429670870304108f, 0.495029091835022f, 0.430050581693649f,
    0.495082914829254f,
  0.430430322885513f, 0.495136409997940f, 0.430810123682022f,
    0.495189607143402f,
  0.431189924478531f, 0.495242536067963f, 0.431569814682007f,
    0.495295166969299f,
  0.431949704885483f, 0.495347499847412f, 0.432329654693604f,
    0.495399564504623f,
  0.432709634304047f, 0.495451331138611f, 0.433089673519135f,
    0.495502769947052f,
  0.433469742536545f, 0.495553970336914f, 0.433849841356277f,
    0.495604842901230f,
  0.434229999780655f, 0.495655417442322f, 0.434610158205032f,
    0.495705723762512f,
  0.434990376234055f, 0.495755732059479f, 0.435370653867722f,
    0.495805442333221f,
  0.435750931501389f, 0.495854884386063f, 0.436131268739700f,
    0.495903998613358f,
  0.436511665582657f, 0.495952844619751f, 0.436892062425613f,
    0.496001392602921f,
  0.437272518873215f, 0.496049642562866f, 0.437653005123138f,
    0.496097624301910f,
  0.438033521175385f, 0.496145308017731f, 0.438414067029953f,
    0.496192663908005f,
  0.438794672489166f, 0.496239781379700f, 0.439175277948380f,
    0.496286571025848f,
  0.439555943012238f, 0.496333062648773f, 0.439936667680740f,
    0.496379286050797f,
  0.440317392349243f, 0.496425211429596f, 0.440698176622391f,
    0.496470838785172f,
  0.441078960895538f, 0.496516168117523f, 0.441459804773331f,
    0.496561229228973f,
  0.441840678453445f, 0.496605962514877f, 0.442221581935883f,
    0.496650427579880f,
  0.442602545022964f, 0.496694594621658f, 0.442983508110046f,
    0.496738493442535f,
  0.443364530801773f, 0.496782064437866f, 0.443745553493500f,
    0.496825367212296f,
  0.444126635789871f, 0.496868371963501f, 0.444507747888565f,
    0.496911078691483f,
  0.444888889789581f, 0.496953487396240f, 0.445270061492920f,
    0.496995598077774f,
  0.445651292800903f, 0.497037440538406f, 0.446032524108887f,
    0.497078984975815f,
  0.446413785219193f, 0.497120231389999f, 0.446795076131821f,
    0.497161179780960f,
  0.447176426649094f, 0.497201830148697f, 0.447557777166367f,
    0.497242212295532f,
  0.447939187288284f, 0.497282296419144f, 0.448320597410202f,
    0.497322082519531f,
  0.448702067136765f, 0.497361570596695f, 0.449083566665649f,
    0.497400760650635f,
  0.449465066194534f, 0.497439652681351f, 0.449846625328064f,
    0.497478276491165f,
  0.450228184461594f, 0.497516602277756f, 0.450609803199768f,
    0.497554630041122f,
  0.450991421937943f, 0.497592359781265f, 0.451373100280762f,
    0.497629791498184f,
  0.451754778623581f, 0.497666954994202f, 0.452136516571045f,
    0.497703820466995f,
  0.452518254518509f, 0.497740387916565f, 0.452900022268295f,
    0.497776657342911f,
  0.453281819820404f, 0.497812628746033f, 0.453663676977158f,
    0.497848302125931f,
  0.454045534133911f, 0.497883707284927f, 0.454427421092987f,
    0.497918814420700f,
  0.454809308052063f, 0.497953623533249f, 0.455191254615784f,
    0.497988134622574f,
  0.455573230981827f, 0.498022347688675f, 0.455955207347870f,
    0.498056292533875f,
  0.456337243318558f, 0.498089909553528f, 0.456719279289246f,
    0.498123258352280f,
  0.457101345062256f, 0.498156309127808f, 0.457483440637589f,
    0.498189061880112f,
  0.457865566015244f, 0.498221516609192f, 0.458247691392899f,
    0.498253703117371f,
  0.458629876375198f, 0.498285561800003f, 0.459012061357498f,
    0.498317152261734f,
  0.459394276142120f, 0.498348444700241f, 0.459776520729065f,
    0.498379439115524f,
  0.460158795118332f, 0.498410135507584f, 0.460541069507599f,
    0.498440563678741f,
  0.460923373699188f, 0.498470664024353f, 0.461305707693100f,
    0.498500496149063f,
  0.461688071489334f, 0.498530030250549f, 0.462070435285568f,
    0.498559266328812f,
  0.462452858686447f, 0.498588204383850f, 0.462835282087326f,
    0.498616874217987f,
  0.463217705488205f, 0.498645216226578f, 0.463600188493729f,
    0.498673290014267f,
  0.463982671499252f, 0.498701065778732f, 0.464365184307098f,
    0.498728543519974f,
  0.464747726917267f, 0.498755723237991f, 0.465130269527435f,
    0.498782604932785f,
  0.465512841939926f, 0.498809218406677f, 0.465895414352417f,
    0.498835533857346f,
  0.466278046369553f, 0.498861521482468f, 0.466660678386688f,
    0.498887240886688f,
  0.467043310403824f, 0.498912662267685f, 0.467426002025604f,
    0.498937815427780f,
  0.467808693647385f, 0.498962640762329f, 0.468191385269165f,
    0.498987197875977f,
  0.468574106693268f, 0.499011427164078f, 0.468956857919693f,
    0.499035388231277f,
  0.469339638948441f, 0.499059051275253f, 0.469722419977188f,
    0.499082416296005f,
  0.470105201005936f, 0.499105513095856f, 0.470488041639328f,
    0.499128282070160f,
  0.470870882272720f, 0.499150782823563f, 0.471253722906113f,
    0.499172955751419f,
  0.471636593341827f, 0.499194860458374f, 0.472019463777542f,
    0.499216467142105f,
  0.472402364015579f, 0.499237775802612f, 0.472785294055939f,
    0.499258816242218f,
  0.473168224096298f, 0.499279528856277f, 0.473551183938980f,
    0.499299973249435f,
  0.473934143781662f, 0.499320119619370f, 0.474317133426666f,
    0.499339967966080f,
  0.474700123071671f, 0.499359518289566f, 0.475083142518997f,
    0.499378770589828f,
  0.475466161966324f, 0.499397724866867f, 0.475849211215973f,
    0.499416410923004f,
  0.476232260465622f, 0.499434769153595f, 0.476615339517593f,
    0.499452859163284f,
  0.476998418569565f, 0.499470651149750f, 0.477381497621536f,
    0.499488145112991f,
  0.477764606475830f, 0.499505341053009f, 0.478147745132446f,
    0.499522238969803f,
  0.478530883789063f, 0.499538868665695f, 0.478914022445679f,
    0.499555170536041f,
  0.479297190904617f, 0.499571204185486f, 0.479680359363556f,
    0.499586939811707f,
  0.480063527822495f, 0.499602377414703f, 0.480446726083755f,
    0.499617516994476f,
  0.480829954147339f, 0.499632388353348f, 0.481213152408600f,
    0.499646931886673f,
  0.481596380472183f, 0.499661177396774f, 0.481979638338089f,
    0.499675154685974f,
  0.482362866401672f, 0.499688833951950f, 0.482746154069901f,
    0.499702215194702f,
  0.483129411935806f, 0.499715298414230f, 0.483512699604034f,
    0.499728083610535f,
  0.483895987272263f, 0.499740600585938f, 0.484279274940491f,
    0.499752789735794f,
  0.484662592411041f, 0.499764710664749f, 0.485045909881592f,
    0.499776333570480f,
  0.485429257154465f, 0.499787658452988f, 0.485812574625015f,
    0.499798685312271f,
  0.486195921897888f, 0.499809414148331f, 0.486579269170761f,
    0.499819844961166f,
  0.486962646245956f, 0.499830007553101f, 0.487346023321152f,
    0.499839842319489f,
  0.487729400396347f, 0.499849408864975f, 0.488112777471542f,
    0.499858677387238f,
  0.488496154546738f, 0.499867647886276f, 0.488879561424255f,
    0.499876320362091f,
  0.489262968301773f, 0.499884694814682f, 0.489646375179291f,
    0.499892801046371f,
  0.490029782056808f, 0.499900579452515f, 0.490413218736649f,
    0.499908089637756f,
  0.490796625614166f, 0.499915301799774f, 0.491180062294006f,
    0.499922215938568f,
  0.491563498973846f, 0.499928832054138f, 0.491946935653687f,
    0.499935150146484f,
  0.492330402135849f, 0.499941170215607f, 0.492713838815689f,
    0.499946922063828f,
  0.493097305297852f, 0.499952346086502f, 0.493480771780014f,
    0.499957501888275f,
  0.493864238262177f, 0.499962359666824f, 0.494247704744339f,
    0.499966919422150f,
  0.494631171226501f, 0.499971181154251f, 0.495014637708664f,
    0.499975144863129f,
  0.495398133993149f, 0.499978810548782f, 0.495781600475311f,
    0.499982208013535f,
  0.496165096759796f, 0.499985307455063f, 0.496548563241959f,
    0.499988079071045f,
  0.496932059526443f, 0.499990582466125f, 0.497315555810928f,
    0.499992787837982f,
  0.497699022293091f, 0.499994695186615f, 0.498082518577576f,
    0.499996334314346f,
  0.498466014862061f, 0.499997645616531f, 0.498849511146545f,
    0.499998688697815f,
  0.499233007431030f, 0.499999403953552f, 0.499616503715515f,
    0.499999850988388f,
};













 
static const float32_t realCoefB[8192] = {
  0.500000000000000f, 0.500000000000000f, 0.500383496284485f,
    0.499999850988388f,
  0.500766992568970f, 0.499999403953552f, 0.501150488853455f,
    0.499998688697815f,
  0.501533985137939f, 0.499997645616531f, 0.501917481422424f,
    0.499996334314346f,
  0.502300977706909f, 0.499994695186615f, 0.502684473991394f,
    0.499992787837982f,
  0.503067970275879f, 0.499990582466125f, 0.503451406955719f,
    0.499988079071045f,
  0.503834903240204f, 0.499985307455063f, 0.504218399524689f,
    0.499982208013535f,
  0.504601895809174f, 0.499978810548782f, 0.504985332489014f,
    0.499975144863129f,
  0.505368828773499f, 0.499971181154251f, 0.505752325057983f,
    0.499966919422150f,
  0.506135761737823f, 0.499962359666824f, 0.506519258022308f,
    0.499957501888275f,
  0.506902694702148f, 0.499952346086502f, 0.507286131381989f,
    0.499946922063828f,
  0.507669627666473f, 0.499941170215607f, 0.508053064346313f,
    0.499935150146484f,
  0.508436501026154f, 0.499928832054138f, 0.508819937705994f,
    0.499922215938568f,
  0.509203374385834f, 0.499915301799774f, 0.509586811065674f,
    0.499908089637756f,
  0.509970188140869f, 0.499900579452515f, 0.510353624820709f,
    0.499892801046371f,
  0.510737061500549f, 0.499884694814682f, 0.511120438575745f,
    0.499876320362091f,
  0.511503815650940f, 0.499867647886276f, 0.511887252330780f,
    0.499858677387238f,
  0.512270629405975f, 0.499849408864975f, 0.512654006481171f,
    0.499839842319489f,
  0.513037383556366f, 0.499830007553101f, 0.513420701026917f,
    0.499819844961166f,
  0.513804078102112f, 0.499809414148331f, 0.514187395572662f,
    0.499798685312271f,
  0.514570772647858f, 0.499787658452988f, 0.514954090118408f,
    0.499776333570480f,
  0.515337407588959f, 0.499764710664749f, 0.515720725059509f,
    0.499752789735794f,
  0.516103982925415f, 0.499740600585938f, 0.516487300395966f,
    0.499728083610535f,
  0.516870558261871f, 0.499715298414230f, 0.517253875732422f,
    0.499702215194702f,
  0.517637133598328f, 0.499688833951950f, 0.518020391464233f,
    0.499675154685974f,
  0.518403589725494f, 0.499661177396774f, 0.518786847591400f,
    0.499646931886673f,
  0.519170045852661f, 0.499632388353348f, 0.519553244113922f,
    0.499617516994476f,
  0.519936442375183f, 0.499602377414703f, 0.520319640636444f,
    0.499586939811707f,
  0.520702838897705f, 0.499571204185486f, 0.521085977554321f,
    0.499555170536041f,
  0.521469116210938f, 0.499538868665695f, 0.521852254867554f,
    0.499522238969803f,
  0.522235393524170f, 0.499505341053009f, 0.522618472576141f,
    0.499488145112991f,
  0.523001611232758f, 0.499470651149750f, 0.523384690284729f,
    0.499452859163284f,
  0.523767769336700f, 0.499434769153595f, 0.524150788784027f,
    0.499416410923004f,
  0.524533808231354f, 0.499397724866867f, 0.524916887283325f,
    0.499378770589828f,
  0.525299847126007f, 0.499359518289566f, 0.525682866573334f,
    0.499339967966080f,
  0.526065826416016f, 0.499320119619370f, 0.526448845863342f,
    0.499299973249435f,
  0.526831746101379f, 0.499279528856277f, 0.527214705944061f,
    0.499258816242218f,
  0.527597606182098f, 0.499237775802612f, 0.527980506420136f,
    0.499216467142105f,
  0.528363406658173f, 0.499194860458374f, 0.528746306896210f,
    0.499172955751419f,
  0.529129147529602f, 0.499150782823563f, 0.529511988162994f,
    0.499128282070160f,
  0.529894769191742f, 0.499105513095856f, 0.530277609825134f,
    0.499082416296005f,
  0.530660390853882f, 0.499059051275253f, 0.531043112277985f,
    0.499035388231277f,
  0.531425893306732f, 0.499011427164078f, 0.531808614730835f,
    0.498987197875977f,
  0.532191336154938f, 0.498962640762329f, 0.532573997974396f,
    0.498937815427780f,
  0.532956659793854f, 0.498912662267685f, 0.533339321613312f,
    0.498887240886688f,
  0.533721983432770f, 0.498861521482468f, 0.534104585647583f,
    0.498835533857346f,
  0.534487187862396f, 0.498809218406677f, 0.534869730472565f,
    0.498782604932785f,
  0.535252273082733f, 0.498755723237991f, 0.535634815692902f,
    0.498728543519974f,
  0.536017298698425f, 0.498701065778732f, 0.536399841308594f,
    0.498673290014267f,
  0.536782264709473f, 0.498645216226578f, 0.537164747714996f,
    0.498616874217987f,
  0.537547171115875f, 0.498588204383850f, 0.537929534912109f,
    0.498559266328812f,
  0.538311958312988f, 0.498530030250549f, 0.538694262504578f,
    0.498500496149063f,
  0.539076626300812f, 0.498470664024353f, 0.539458930492401f,
    0.498440563678741f,
  0.539841234683990f, 0.498410135507584f, 0.540223479270935f,
    0.498379439115524f,
  0.540605723857880f, 0.498348444700241f, 0.540987968444824f,
    0.498317152261734f,
  0.541370153427124f, 0.498285561800003f, 0.541752278804779f,
    0.498253703117371f,
  0.542134463787079f, 0.498221516609192f, 0.542516589164734f,
    0.498189061880112f,
  0.542898654937744f, 0.498156309127808f, 0.543280720710754f,
    0.498123258352280f,
  0.543662786483765f, 0.498089909553528f, 0.544044792652130f,
    0.498056292533875f,
  0.544426798820496f, 0.498022347688675f, 0.544808745384216f,
    0.497988134622574f,
  0.545190691947937f, 0.497953623533249f, 0.545572578907013f,
    0.497918814420700f,
  0.545954465866089f, 0.497883707284927f, 0.546336352825165f,
    0.497848302125931f,
  0.546718180179596f, 0.497812628746033f, 0.547099947929382f,
    0.497776657342911f,
  0.547481775283813f, 0.497740387916565f, 0.547863483428955f,
    0.497703820466995f,
  0.548245191574097f, 0.497666954994202f, 0.548626899719238f,
    0.497629791498184f,
  0.549008548259735f, 0.497592359781265f, 0.549390196800232f,
    0.497554630041122f,
  0.549771785736084f, 0.497516602277756f, 0.550153374671936f,
    0.497478276491165f,
  0.550534904003143f, 0.497439652681351f, 0.550916433334351f,
    0.497400760650635f,
  0.551297962665558f, 0.497361570596695f, 0.551679372787476f,
    0.497322082519531f,
  0.552060842514038f, 0.497282296419144f, 0.552442193031311f,
    0.497242212295532f,
  0.552823603153229f, 0.497201830148697f, 0.553204894065857f,
    0.497161179780960f,
  0.553586184978485f, 0.497120231389999f, 0.553967475891113f,
    0.497078984975815f,
  0.554348707199097f, 0.497037440538406f, 0.554729938507080f,
    0.496995598077774f,
  0.555111110210419f, 0.496953487396240f, 0.555492222309113f,
    0.496911078691483f,
  0.555873334407806f, 0.496868371963501f, 0.556254446506500f,
    0.496825367212296f,
  0.556635499000549f, 0.496782064437866f, 0.557016491889954f,
    0.496738493442535f,
  0.557397484779358f, 0.496694594621658f, 0.557778418064117f,
    0.496650427579880f,
  0.558159291744232f, 0.496605962514877f, 0.558540165424347f,
    0.496561229228973f,
  0.558921039104462f, 0.496516168117523f, 0.559301853179932f,
    0.496470838785172f,
  0.559682607650757f, 0.496425211429596f, 0.560063362121582f,
    0.496379286050797f,
  0.560444056987762f, 0.496333062648773f, 0.560824692249298f,
    0.496286571025848f,
  0.561205327510834f, 0.496239781379700f, 0.561585903167725f,
    0.496192663908005f,
  0.561966478824615f, 0.496145308017731f, 0.562346994876862f,
    0.496097624301910f,
  0.562727510929108f, 0.496049642562866f, 0.563107967376709f,
    0.496001392602921f,
  0.563488364219666f, 0.495952844619751f, 0.563868701457977f,
    0.495903998613358f,
  0.564249038696289f, 0.495854884386063f, 0.564629375934601f,
    0.495805442333221f,
  0.565009593963623f, 0.495755732059479f, 0.565389811992645f,
    0.495705723762512f,
  0.565770030021667f, 0.495655417442322f, 0.566150128841400f,
    0.495604842901230f,
  0.566530287265778f, 0.495553970336914f, 0.566910326480865f,
    0.495502769947052f,
  0.567290365695953f, 0.495451331138611f, 0.567670345306396f,
    0.495399564504623f,
  0.568050265312195f, 0.495347499847412f, 0.568430185317993f,
    0.495295166969299f,
  0.568810045719147f, 0.495242536067963f, 0.569189906120300f,
    0.495189607143402f,
  0.569569647312164f, 0.495136409997940f, 0.569949388504028f,
    0.495082914829254f,
  0.570329129695892f, 0.495029091835022f, 0.570708811283112f,
    0.494975030422211f,
  0.571088373661041f, 0.494920641183853f, 0.571467995643616f,
    0.494865983724594f,
  0.571847498416901f, 0.494810998439789f, 0.572227001190186f,
    0.494755744934082f,
  0.572606444358826f, 0.494700223207474f, 0.572985887527466f,
    0.494644373655319f,
  0.573365211486816f, 0.494588255882263f, 0.573744535446167f,
    0.494531840085983f,
  0.574123859405518f, 0.494475126266479f, 0.574503064155579f,
    0.494418144226074f,
  0.574882268905640f, 0.494360834360123f, 0.575261414051056f,
    0.494303256273270f,
  0.575640499591827f, 0.494245409965515f, 0.576019585132599f,
    0.494187235832214f,
  0.576398611068726f, 0.494128793478012f, 0.576777577400208f,
    0.494070053100586f,
  0.577156484127045f, 0.494011014699936f, 0.577535390853882f,
    0.493951678276062f,
  0.577914178371429f, 0.493892073631287f, 0.578292965888977f,
    0.493832170963287f,
  0.578671753406525f, 0.493771970272064f, 0.579050421714783f,
    0.493711471557617f,
  0.579429090023041f, 0.493650704622269f, 0.579807698726654f,
    0.493589639663696f,
  0.580186247825623f, 0.493528276681900f, 0.580564737319946f,
    0.493466645479202f,
  0.580943167209625f, 0.493404686450958f, 0.581321597099304f,
    0.493342459201813f,
  0.581699967384338f, 0.493279963731766f, 0.582078278064728f,
    0.493217140436172f,
  0.582456588745117f, 0.493154048919678f, 0.582834780216217f,
    0.493090659379959f,
  0.583212971687317f, 0.493026971817017f, 0.583591103553772f,
    0.492963016033173f,
  0.583969175815582f, 0.492898762226105f, 0.584347188472748f,
    0.492834210395813f,
  0.584725141525269f, 0.492769360542297f, 0.585103094577789f,
    0.492704242467880f,
  0.585480928421021f, 0.492638826370239f, 0.585858762264252f,
    0.492573112249374f,
  0.586236536502838f, 0.492507129907608f, 0.586614251136780f,
    0.492440819740295f,
  0.586991965770721f, 0.492374241352081f, 0.587369561195374f,
    0.492307394742966f,
  0.587747097015381f, 0.492240220308304f, 0.588124632835388f,
    0.492172777652740f,
  0.588502109050751f, 0.492105036973953f, 0.588879525661469f,
    0.492037028074265f,
  0.589256882667542f, 0.491968721151352f, 0.589634180068970f,
    0.491900116205215f,
  0.590011477470398f, 0.491831213235855f, 0.590388655662537f,
    0.491762012243271f,
  0.590765833854675f, 0.491692543029785f, 0.591142892837524f,
    0.491622805595398f,
  0.591519951820374f, 0.491552740335464f, 0.591896951198578f,
    0.491482406854630f,
  0.592273890972137f, 0.491411775350571f, 0.592650771141052f,
    0.491340845823288f,
  0.593027591705322f, 0.491269648075104f, 0.593404352664948f,
    0.491198152303696f,
  0.593781054019928f, 0.491126358509064f, 0.594157755374908f,
    0.491054296493530f,
  0.594534337520599f, 0.490981936454773f, 0.594910860061646f,
    0.490909278392792f,
  0.595287382602692f, 0.490836352109909f, 0.595663845539093f,
    0.490763127803802f,
  0.596040189266205f, 0.490689605474472f, 0.596416532993317f,
    0.490615785121918f,
  0.596792817115784f, 0.490541696548462f, 0.597168982028961f,
    0.490467309951782f,
  0.597545146942139f, 0.490392625331879f, 0.597921252250671f,
    0.490317672491074f,
  0.598297297954559f, 0.490242421627045f, 0.598673284053802f,
    0.490166902542114f,
  0.599049210548401f, 0.490091055631638f, 0.599425077438354f,
    0.490014940500259f,
  0.599800884723663f, 0.489938557147980f, 0.600176632404327f,
    0.489861875772476f,
  0.600552320480347f, 0.489784896373749f, 0.600927948951721f,
    0.489707618951797f,
  0.601303517818451f, 0.489630073308945f, 0.601679027080536f,
    0.489552229642868f,
  0.602054476737976f, 0.489474087953568f, 0.602429866790771f,
    0.489395678043365f,
  0.602805197238922f, 0.489316970109940f, 0.603180468082428f,
    0.489237964153290f,
  0.603555679321289f, 0.489158689975739f, 0.603930830955505f,
    0.489079117774963f,
  0.604305922985077f, 0.488999247550964f, 0.604680955410004f,
    0.488919109106064f,
  0.605055928230286f, 0.488838672637939f, 0.605430841445923f,
    0.488757967948914f,
  0.605805635452271f, 0.488676935434341f, 0.606180429458618f,
    0.488595664501190f,
  0.606555163860321f, 0.488514065742493f, 0.606929838657379f,
    0.488432198762894f,
  0.607304394245148f, 0.488350033760071f, 0.607678949832916f,
    0.488267600536346f,
  0.608053386211395f, 0.488184869289398f, 0.608427822589874f,
    0.488101840019226f,
  0.608802139759064f, 0.488018542528152f, 0.609176397323608f,
    0.487934947013855f,
  0.609550595283508f, 0.487851053476334f, 0.609924793243408f,
    0.487766891717911f,
  0.610298871994019f, 0.487682431936264f, 0.610672831535339f,
    0.487597703933716f,
  0.611046791076660f, 0.487512677907944f, 0.611420691013336f,
    0.487427353858948f,
  0.611794531345367f, 0.487341761589050f, 0.612168252468109f,
    0.487255871295929f,
  0.612541973590851f, 0.487169682979584f, 0.612915575504303f,
    0.487083226442337f,
  0.613289117813110f, 0.486996471881866f, 0.613662600517273f,
    0.486909449100494f,
  0.614036023616791f, 0.486822128295898f, 0.614409387111664f,
    0.486734509468079f,
  0.614782691001892f, 0.486646622419357f, 0.615155875682831f,
    0.486558437347412f,
  0.615529060363770f, 0.486469984054565f, 0.615902125835419f,
    0.486381232738495f,
  0.616275131702423f, 0.486292183399200f, 0.616648077964783f,
    0.486202865839005f,
  0.617020964622498f, 0.486113250255585f, 0.617393791675568f,
    0.486023366451263f,
  0.617766559123993f, 0.485933154821396f, 0.618139207363129f,
    0.485842704772949f,
  0.618511795997620f, 0.485751956701279f, 0.618884325027466f,
    0.485660910606384f,
  0.619256794452667f, 0.485569566488266f, 0.619629204273224f,
    0.485477954149246f,
  0.620001494884491f, 0.485386073589325f, 0.620373785495758f,
    0.485293895006180f,
  0.620745956897736f, 0.485201418399811f, 0.621118068695068f,
    0.485108673572540f,
  0.621490061283112f, 0.485015630722046f, 0.621862053871155f,
    0.484922289848328f,
  0.622233927249908f, 0.484828680753708f, 0.622605800628662f,
    0.484734803438187f,
  0.622977554798126f, 0.484640628099442f, 0.623349189758301f,
    0.484546154737473f,
  0.623720824718475f, 0.484451413154602f, 0.624092340469360f,
    0.484356373548508f,
  0.624463796615601f, 0.484261035919189f, 0.624835193157196f,
    0.484165430068970f,
  0.625206530094147f, 0.484069555997849f, 0.625577747821808f,
    0.483973383903503f,
  0.625948905944824f, 0.483876913785934f, 0.626320004463196f,
    0.483780175447464f,
  0.626691043376923f, 0.483683139085770f, 0.627061963081360f,
    0.483585834503174f,
  0.627432823181152f, 0.483488231897354f, 0.627803623676300f,
    0.483390361070633f,
  0.628174364566803f, 0.483292192220688f, 0.628544986248016f,
    0.483193725347519f,
  0.628915548324585f, 0.483094990253448f, 0.629286050796509f,
    0.482995986938477f,
  0.629656434059143f, 0.482896685600281f, 0.630026817321777f,
    0.482797086238861f,
  0.630397081375122f, 0.482697218656540f, 0.630767226219177f,
    0.482597053050995f,
  0.631137371063232f, 0.482496619224548f, 0.631507396697998f,
    0.482395917177200f,
  0.631877362728119f, 0.482294887304306f, 0.632247209548950f,
    0.482193619012833f,
  0.632616996765137f, 0.482092022895813f, 0.632986724376678f,
    0.481990188360214f,
  0.633356392383575f, 0.481888025999069f, 0.633725941181183f,
    0.481785595417023f,
  0.634095430374146f, 0.481682896614075f, 0.634464859962463f,
    0.481579899787903f,
  0.634834170341492f, 0.481476634740829f, 0.635203421115875f,
    0.481373071670532f,
  0.635572552680969f, 0.481269240379334f, 0.635941684246063f,
    0.481165111064911f,
  0.636310696601868f, 0.481060713529587f, 0.636679589748383f,
    0.480956017971039f,
  0.637048482894897f, 0.480851024389267f, 0.637417197227478f,
    0.480745792388916f,
  0.637785911560059f, 0.480640232563019f, 0.638154506683350f,
    0.480534434318542f,
  0.638523042201996f, 0.480428308248520f, 0.638891458511353f,
    0.480321943759918f,
  0.639259815216064f, 0.480215251445770f, 0.639628112316132f,
    0.480108320713043f,
  0.639996349811554f, 0.480001062154770f, 0.640364408493042f,
    0.479893565177917f,
  0.640732467174530f, 0.479785770177841f, 0.641100406646729f,
    0.479677677154541f,
  0.641468286514282f, 0.479569315910339f, 0.641836047172546f,
    0.479460656642914f,
  0.642203748226166f, 0.479351729154587f, 0.642571389675140f,
    0.479242533445358f,
  0.642938911914825f, 0.479133039712906f, 0.643306374549866f,
    0.479023247957230f,
  0.643673717975616f, 0.478913217782974f, 0.644041001796722f,
    0.478802859783173f,
  0.644408226013184f, 0.478692263364792f, 0.644775331020355f,
    0.478581339120865f,
  0.645142316818237f, 0.478470176458359f, 0.645509302616119f,
    0.478358715772629f,
  0.645876109600067f, 0.478246957063675f, 0.646242916584015f,
    0.478134930133820f,
  0.646609604358673f, 0.478022634983063f, 0.646976172924042f,
    0.477910041809082f,
  0.647342681884766f, 0.477797180414200f, 0.647709131240845f,
    0.477684020996094f,
  0.648075461387634f, 0.477570593357086f, 0.648441672325134f,
    0.477456867694855f,
  0.648807883262634f, 0.477342873811722f, 0.649173915386200f,
    0.477228611707687f,
  0.649539887905121f, 0.477114051580429f, 0.649905800819397f,
    0.476999223232269f,
  0.650271594524384f, 0.476884096860886f, 0.650637328624725f,
    0.476768702268600f,
  0.651003003120422f, 0.476653009653091f, 0.651368498802185f,
    0.476537048816681f,
  0.651733994483948f, 0.476420819759369f, 0.652099311351776f,
    0.476304292678833f,
  0.652464628219604f, 0.476187497377396f, 0.652829825878143f,
    0.476070433855057f,
  0.653194904327393f, 0.475953072309494f, 0.653559923171997f,
    0.475835442543030f,
  0.653924822807312f, 0.475717514753342f, 0.654289662837982f,
    0.475599318742752f,
  0.654654383659363f, 0.475480824708939f, 0.655019044876099f,
    0.475362062454224f,
  0.655383586883545f, 0.475243031978607f, 0.655748009681702f,
    0.475123733282089f,
  0.656112432479858f, 0.475004136562347f, 0.656476676464081f,
    0.474884241819382f,
  0.656840860843658f, 0.474764078855515f, 0.657204985618591f,
    0.474643647670746f,
  0.657568991184235f, 0.474522948265076f, 0.657932877540588f,
    0.474401950836182f,
  0.658296704292297f, 0.474280685186386f, 0.658660411834717f,
    0.474159121513367f,
  0.659024059772491f, 0.474037289619446f, 0.659387588500977f,
    0.473915189504623f,
  0.659750998020172f, 0.473792791366577f, 0.660114347934723f,
    0.473670125007629f,
  0.660477638244629f, 0.473547190427780f, 0.660840749740601f,
    0.473423957824707f,
  0.661203861236572f, 0.473300457000732f, 0.661566793918610f,
    0.473176687955856f,
  0.661929666996002f, 0.473052620887756f, 0.662292480468750f,
    0.472928285598755f,
  0.662655174732208f, 0.472803652286530f, 0.663017749786377f,
    0.472678780555725f,
  0.663380205631256f, 0.472553610801697f, 0.663742601871490f,
    0.472428143024445f,
  0.664104938507080f, 0.472302407026291f, 0.664467096328735f,
    0.472176402807236f,
  0.664829254150391f, 0.472050130367279f, 0.665191233158112f,
    0.471923559904099f,
  0.665553152561188f, 0.471796721220016f, 0.665914952754974f,
    0.471669614315033f,
  0.666276693344116f, 0.471542209386826f, 0.666638314723969f,
    0.471414536237717f,
  0.666999816894531f, 0.471286594867706f, 0.667361259460449f,
    0.471158385276794f,
  0.667722582817078f, 0.471029877662659f, 0.668083786964417f,
    0.470901101827621f,
  0.668444931507111f, 0.470772027969360f, 0.668805956840515f,
    0.470642685890198f,
  0.669166862964630f, 0.470513075590134f, 0.669527709484100f,
    0.470383197069168f,
  0.669888436794281f, 0.470253020524979f, 0.670249044895172f,
    0.470122605562210f,
  0.670609593391418f, 0.469991862773895f, 0.670970022678375f,
    0.469860881567001f,
  0.671330332756042f, 0.469729602336884f, 0.671690583229065f,
    0.469598054885864f,
  0.672050714492798f, 0.469466239213943f, 0.672410726547241f,
    0.469334155321121f,
  0.672770678997040f, 0.469201773405075f, 0.673130512237549f,
    0.469069123268127f,
  0.673490226268768f, 0.468936175107956f, 0.673849821090698f,
    0.468802988529205f,
  0.674209356307983f, 0.468669503927231f, 0.674568772315979f,
    0.468535751104355f,
  0.674928069114685f, 0.468401730060577f, 0.675287246704102f,
    0.468267410993576f,
  0.675646364688873f, 0.468132823705673f, 0.676005363464355f,
    0.467997968196869f,
  0.676364302635193f, 0.467862844467163f, 0.676723062992096f,
    0.467727422714233f,
  0.677081763744354f, 0.467591762542725f, 0.677440345287323f,
    0.467455804347992f,
  0.677798807621002f, 0.467319577932358f, 0.678157210350037f,
    0.467183053493500f,
  0.678515493869781f, 0.467046260833740f, 0.678873658180237f,
    0.466909229755402f,
  0.679231703281403f, 0.466771900653839f, 0.679589688777924f,
    0.466634273529053f,
  0.679947495460510f, 0.466496407985687f, 0.680305242538452f,
    0.466358244419098f,
  0.680662930011749f, 0.466219812631607f, 0.681020438671112f,
    0.466081112623215f,
  0.681377887725830f, 0.465942144393921f, 0.681735157966614f,
    0.465802878141403f,
  0.682092368602753f, 0.465663343667984f, 0.682449519634247f,
    0.465523540973663f,
  0.682806491851807f, 0.465383470058441f, 0.683163404464722f,
    0.465243130922318f,
  0.683520197868347f, 0.465102523565292f, 0.683876872062683f,
    0.464961618185043f,
  0.684233427047729f, 0.464820444583893f, 0.684589862823486f,
    0.464679002761841f,
  0.684946238994598f, 0.464537292718887f, 0.685302436351776f,
    0.464395314455032f,
  0.685658574104309f, 0.464253038167953f, 0.686014592647552f,
    0.464110493659973f,
  0.686370551586151f, 0.463967710733414f, 0.686726331710815f,
    0.463824629783630f,
  0.687082052230835f, 0.463681250810623f, 0.687437593936920f,
    0.463537633419037f,
  0.687793076038361f, 0.463393747806549f, 0.688148438930511f,
    0.463249564170837f,
  0.688503682613373f, 0.463105112314224f, 0.688858866691589f,
    0.462960392236710f,
  0.689213871955872f, 0.462815403938293f, 0.689568817615509f,
    0.462670147418976f,
  0.689923584461212f, 0.462524622678757f, 0.690278291702271f,
    0.462378799915314f,
  0.690632879734039f, 0.462232738733292f, 0.690987348556519f,
    0.462086379528046f,
  0.691341698169708f, 0.461939752101898f, 0.691695988178253f,
    0.461792886257172f,
  0.692050099372864f, 0.461645722389221f, 0.692404091358185f,
    0.461498260498047f,
  0.692758023738861f, 0.461350560188293f, 0.693111836910248f,
    0.461202591657639f,
  0.693465530872345f, 0.461054325103760f, 0.693819046020508f,
    0.460905820131302f,
  0.694172501564026f, 0.460757017135620f, 0.694525837898254f,
    0.460607945919037f,
  0.694879114627838f, 0.460458606481552f, 0.695232212543488f,
    0.460309028625488f,
  0.695585191249847f, 0.460159152746201f, 0.695938050746918f,
    0.460008978843689f,
  0.696290850639343f, 0.459858566522598f, 0.696643471717834f,
    0.459707885980606f,
  0.696996033191681f, 0.459556937217712f, 0.697348415851593f,
    0.459405690431595f,
  0.697700738906860f, 0.459254205226898f, 0.698052942752838f,
    0.459102421998978f,
  0.698404967784882f, 0.458950400352478f, 0.698756933212280f,
    0.458798080682755f,
  0.699108779430389f, 0.458645492792130f, 0.699460506439209f,
    0.458492636680603f,
  0.699812114238739f, 0.458339542150497f, 0.700163602828979f,
    0.458186149597168f,
  0.700514972209930f, 0.458032488822937f, 0.700866222381592f,
    0.457878559827805f,
  0.701217353343964f, 0.457724362611771f, 0.701568365097046f,
    0.457569897174835f,
  0.701919257640839f, 0.457415163516998f, 0.702270030975342f,
    0.457260161638260f,
  0.702620685100555f, 0.457104891538620f, 0.702971220016479f,
    0.456949323415756f,
  0.703321635723114f, 0.456793516874313f, 0.703671932220459f,
    0.456637442111969f,
  0.704022109508514f, 0.456481099128723f, 0.704372167587280f,
    0.456324487924576f,
  0.704722046852112f, 0.456167578697205f, 0.705071866512299f,
    0.456010431051254f,
  0.705421566963196f, 0.455853015184402f, 0.705771148204803f,
    0.455695331096649f,
  0.706120610237122f, 0.455537378787994f, 0.706469953060150f,
    0.455379128456116f,
  0.706819176673889f, 0.455220639705658f, 0.707168221473694f,
    0.455061882734299f,
  0.707517206668854f, 0.454902857542038f, 0.707866072654724f,
    0.454743564128876f,
  0.708214759826660f, 0.454584002494812f, 0.708563387393951f,
    0.454424172639847f,
  0.708911836147308f, 0.454264044761658f, 0.709260225296021f,
    0.454103678464890f,
  0.709608435630798f, 0.453943043947220f, 0.709956526756287f,
    0.453782171010971f,
  0.710304558277130f, 0.453621000051498f, 0.710652410984039f,
    0.453459560871124f,
  0.711000144481659f, 0.453297853469849f, 0.711347758769989f,
    0.453135877847672f,
  0.711695253849030f, 0.452973634004593f, 0.712042629718781f,
    0.452811151742935f,
  0.712389826774597f, 0.452648371458054f, 0.712736964225769f,
    0.452485352754593f,
  0.713083922863007f, 0.452322036027908f, 0.713430821895599f,
    0.452158480882645f,
  0.713777542114258f, 0.451994657516479f, 0.714124143123627f,
    0.451830536127090f,
  0.714470624923706f, 0.451666176319122f, 0.714816987514496f,
    0.451501548290253f,
  0.715163230895996f, 0.451336652040482f, 0.715509355068207f,
    0.451171487569809f,
  0.715855300426483f, 0.451006084680557f, 0.716201186180115f,
    0.450840383768082f,
  0.716546893119812f, 0.450674414634705f, 0.716892480850220f,
    0.450508207082748f,
  0.717238008975983f, 0.450341701507568f, 0.717583298683167f,
    0.450174957513809f,
  0.717928528785706f, 0.450007945299149f, 0.718273639678955f,
    0.449840664863586f,
  0.718618571758270f, 0.449673116207123f, 0.718963444232941f,
    0.449505299329758f,
  0.719308137893677f, 0.449337244033813f, 0.719652712345123f,
    0.449168890714645f,
  0.719997107982636f, 0.449000298976898f, 0.720341444015503f,
    0.448831409215927f,
  0.720685660839081f, 0.448662281036377f, 0.721029698848724f,
    0.448492884635925f,
  0.721373617649078f, 0.448323249816895f, 0.721717417240143f,
    0.448153316974640f,
  0.722061097621918f, 0.447983115911484f, 0.722404599189758f,
    0.447812676429749f,
  0.722747981548309f, 0.447641968727112f, 0.723091304302216f,
    0.447470992803574f,
  0.723434448242188f, 0.447299748659134f, 0.723777413368225f,
    0.447128236293793f,
  0.724120318889618f, 0.446956485509872f, 0.724463045597076f,
    0.446784436702728f,
  0.724805653095245f, 0.446612149477005f, 0.725148141384125f,
    0.446439594030380f,
  0.725490510463715f, 0.446266770362854f, 0.725832700729370f,
    0.446093708276749f,
  0.726174771785736f, 0.445920348167419f, 0.726516723632813f,
    0.445746749639511f,
  0.726858556270599f, 0.445572882890701f, 0.727200269699097f,
    0.445398747920990f,
  0.727541804313660f, 0.445224374532700f, 0.727883219718933f,
    0.445049703121185f,
  0.728224515914917f, 0.444874793291092f, 0.728565633296967f,
    0.444699615240097f,
  0.728906631469727f, 0.444524168968201f, 0.729247510433197f,
    0.444348484277725f,
  0.729588270187378f, 0.444172531366348f, 0.729928910732269f,
    0.443996280431747f,
  0.730269372463226f, 0.443819820880890f, 0.730609714984894f,
    0.443643063306808f,
  0.730949878692627f, 0.443466067314148f, 0.731289982795715f,
    0.443288803100586f,
  0.731629908084869f, 0.443111270666122f, 0.731969714164734f,
    0.442933470010757f,
  0.732309341430664f, 0.442755430936813f, 0.732648849487305f,
    0.442577123641968f,
  0.732988238334656f, 0.442398548126221f, 0.733327507972717f,
    0.442219734191895f,
  0.733666598796844f, 0.442040622234344f, 0.734005570411682f,
    0.441861271858215f,
  0.734344422817230f, 0.441681683063507f, 0.734683096408844f,
    0.441501796245575f,
  0.735021650791168f, 0.441321671009064f, 0.735360085964203f,
    0.441141277551651f,
  0.735698342323303f, 0.440960645675659f, 0.736036539077759f,
    0.440779715776443f,
  0.736374497413635f, 0.440598547458649f, 0.736712396144867f,
    0.440417140722275f,
  0.737050116062164f, 0.440235435962677f, 0.737387716770172f,
    0.440053492784500f,
  0.737725138664246f, 0.439871311187744f, 0.738062441349030f,
    0.439688831567764f,
  0.738399624824524f, 0.439506113529205f, 0.738736629486084f,
    0.439323127269745f,
  0.739073514938354f, 0.439139902591705f, 0.739410281181335f,
    0.438956409692764f,
  0.739746868610382f, 0.438772648572922f, 0.740083336830139f,
    0.438588619232178f,
  0.740419685840607f, 0.438404351472855f, 0.740755856037140f,
    0.438219845294952f,
  0.741091907024384f, 0.438035041093826f, 0.741427779197693f,
    0.437849998474121f,
  0.741763532161713f, 0.437664687633514f, 0.742099165916443f,
    0.437479138374329f,
  0.742434620857239f, 0.437293320894241f, 0.742769956588745f,
    0.437107264995575f,
  0.743105113506317f, 0.436920911073685f, 0.743440151214600f,
    0.436734348535538f,
  0.743775069713593f, 0.436547487974167f, 0.744109809398651f,
    0.436360388994217f,
  0.744444429874420f, 0.436173021793365f, 0.744778931140900f,
    0.435985416173935f,
  0.745113253593445f, 0.435797542333603f, 0.745447397232056f,
    0.435609430074692f,
  0.745781481266022f, 0.435421019792557f, 0.746115326881409f,
    0.435232400894165f,
  0.746449112892151f, 0.435043483972549f, 0.746782720088959f,
    0.434854328632355f,
  0.747116148471832f, 0.434664934873581f, 0.747449457645416f,
    0.434475272893906f,
  0.747782647609711f, 0.434285342693329f, 0.748115658760071f,
    0.434095174074173f,
  0.748448550701141f, 0.433904737234116f, 0.748781263828278f,
    0.433714061975479f,
  0.749113857746124f, 0.433523118495941f, 0.749446272850037f,
    0.433331936597824f,
  0.749778568744659f, 0.433140486478806f, 0.750110685825348f,
    0.432948768138886f,
  0.750442683696747f, 0.432756811380386f, 0.750774562358856f,
    0.432564586400986f,
  0.751106262207031f, 0.432372123003006f, 0.751437783241272f,
    0.432179391384125f,
  0.751769185066223f, 0.431986421346664f, 0.752100467681885f,
    0.431793183088303f,
  0.752431571483612f, 0.431599706411362f, 0.752762496471405f,
    0.431405961513519f,
  0.753093302249908f, 0.431211978197098f, 0.753423988819122f,
    0.431017726659775f,
  0.753754496574402f, 0.430823236703873f, 0.754084885120392f,
    0.430628478527069f,
  0.754415094852448f, 0.430433481931686f, 0.754745125770569f,
    0.430238217115402f,
  0.755075037479401f, 0.430042684078217f, 0.755404829978943f,
    0.429846942424774f,
  0.755734443664551f, 0.429650902748108f, 0.756063878536224f,
    0.429454624652863f,
  0.756393194198608f, 0.429258108139038f, 0.756722390651703f,
    0.429061323404312f,
  0.757051348686218f, 0.428864300251007f, 0.757380247116089f,
    0.428667008876801f,
  0.757708966732025f, 0.428469479084015f, 0.758037507534027f,
    0.428271710872650f,
  0.758365929126740f, 0.428073674440384f, 0.758694171905518f,
    0.427875369787216f,
  0.759022235870361f, 0.427676826715469f, 0.759350180625916f,
    0.427478045225143f,
  0.759678006172180f, 0.427278995513916f, 0.760005652904511f,
    0.427079707384110f,
  0.760333120822906f, 0.426880151033401f, 0.760660469532013f,
    0.426680356264114f,
  0.760987639427185f, 0.426480293273926f, 0.761314690113068f,
    0.426279991865158f,
  0.761641561985016f, 0.426079452037811f, 0.761968255043030f,
    0.425878643989563f,
  0.762294828891754f, 0.425677597522736f, 0.762621283531189f,
    0.425476282835007f,
  0.762947499752045f, 0.425274729728699f, 0.763273596763611f,
    0.425072938203812f,
  0.763599574565887f, 0.424870878458023f, 0.763925373554230f,
    0.424668580293655f,
  0.764250993728638f, 0.424466013908386f, 0.764576494693756f,
    0.424263238906860f,
  0.764901816844940f, 0.424060165882111f, 0.765226960182190f,
    0.423856884241104f,
  0.765551984310150f, 0.423653304576874f, 0.765876889228821f,
    0.423449516296387f,
  0.766201555728912f, 0.423245459794998f, 0.766526103019714f,
    0.423041164875031f,
  0.766850471496582f, 0.422836631536484f, 0.767174720764160f,
    0.422631829977036f,
  0.767498791217804f, 0.422426789999008f, 0.767822742462158f,
    0.422221481800079f,
  0.768146514892578f, 0.422015935182571f, 0.768470108509064f,
    0.421810150146484f,
  0.768793523311615f, 0.421604126691818f, 0.769116818904877f,
    0.421397835016251f,
  0.769439935684204f, 0.421191304922104f, 0.769762933254242f,
    0.420984506607056f,
  0.770085752010345f, 0.420777499675751f, 0.770408391952515f,
    0.420570224523544f,
  0.770730912685394f, 0.420362681150436f, 0.771053194999695f,
    0.420154929161072f,
  0.771375417709351f, 0.419946908950806f, 0.771697402000427f,
    0.419738620519638f,
  0.772019267082214f, 0.419530123472214f, 0.772340953350067f,
    0.419321358203888f,
  0.772662520408630f, 0.419112354516983f, 0.772983849048615f,
    0.418903112411499f,
  0.773305058479309f, 0.418693602085114f, 0.773626148700714f,
    0.418483853340149f,
  0.773947000503540f, 0.418273866176605f, 0.774267733097076f,
    0.418063640594482f,
  0.774588346481323f, 0.417853146791458f, 0.774908721446991f,
    0.417642414569855f,
  0.775228977203369f, 0.417431443929672f, 0.775549054145813f,
    0.417220205068588f,
  0.775869011878967f, 0.417008757591248f, 0.776188731193542f,
    0.416797041893005f,
  0.776508331298828f, 0.416585087776184f, 0.776827812194824f,
    0.416372895240784f,
  0.777147054672241f, 0.416160434484482f, 0.777466177940369f,
    0.415947735309601f,
  0.777785122394562f, 0.415734797716141f, 0.778103888034821f,
    0.415521621704102f,
  0.778422534465790f, 0.415308207273483f, 0.778741002082825f,
    0.415094524621964f,
  0.779059290885925f, 0.414880603551865f, 0.779377400875092f,
    0.414666473865509f,
  0.779695332050323f, 0.414452046155930f, 0.780013144016266f,
    0.414237409830093f,
  0.780330777168274f, 0.414022535085678f, 0.780648231506348f,
    0.413807392120361f,
  0.780965566635132f, 0.413592010736465f, 0.781282722949982f,
    0.413376390933990f,
  0.781599700450897f, 0.413160532712936f, 0.781916499137878f,
    0.412944436073303f,
  0.782233119010925f, 0.412728071212769f, 0.782549619674683f,
    0.412511497735977f,
  0.782865881919861f, 0.412294656038284f, 0.783182024955750f,
    0.412077575922012f,
  0.783498048782349f, 0.411860257387161f, 0.783813834190369f,
    0.411642700433731f,
  0.784129500389099f, 0.411424905061722f, 0.784444928169250f,
    0.411206841468811f,
  0.784760236740112f, 0.410988569259644f, 0.785075426101685f,
    0.410770028829575f,
  0.785390377044678f, 0.410551249980927f, 0.785705149173737f,
    0.410332232713699f,
  0.786019802093506f, 0.410112977027893f, 0.786334276199341f,
    0.409893482923508f,
  0.786648571491241f, 0.409673750400543f, 0.786962687969208f,
    0.409453779459000f,
  0.787276685237885f, 0.409233570098877f, 0.787590444087982f,
    0.409013092517853f,
  0.787904083728790f, 0.408792406320572f, 0.788217544555664f,
    0.408571451902390f,
  0.788530826568604f, 0.408350288867950f, 0.788843929767609f,
    0.408128857612610f,
  0.789156913757324f, 0.407907217741013f, 0.789469659328461f,
    0.407685309648514f,
  0.789782285690308f, 0.407463163137436f, 0.790094733238220f,
    0.407240778207779f,
  0.790407001972198f, 0.407018154859543f, 0.790719091892242f,
    0.406795293092728f,
  0.791031002998352f, 0.406572192907333f, 0.791342735290527f,
    0.406348884105682f,
  0.791654348373413f, 0.406125307083130f, 0.791965723037720f,
    0.405901491641998f,
  0.792276978492737f, 0.405677437782288f, 0.792588055133820f,
    0.405453115701675f,
  0.792898952960968f, 0.405228585004807f, 0.793209671974182f,
    0.405003815889359f,
  0.793520212173462f, 0.404778808355331f, 0.793830573558807f,
    0.404553562402725f,
  0.794140756130219f, 0.404328078031540f, 0.794450819492340f,
    0.404102355241776f,
  0.794760644435883f, 0.403876423835754f, 0.795070350170136f,
    0.403650224208832f,
  0.795379877090454f, 0.403423786163330f, 0.795689165592194f,
    0.403197109699249f,
  0.795998334884644f, 0.402970194816589f, 0.796307325363159f,
    0.402743041515350f,
  0.796616137027740f, 0.402515679597855f, 0.796924769878387f,
    0.402288049459457f,
  0.797233223915100f, 0.402060180902481f, 0.797541558742523f,
    0.401832103729248f,
  0.797849655151367f, 0.401603758335114f, 0.798157572746277f,
    0.401375204324722f,
  0.798465371131897f, 0.401146411895752f, 0.798772931098938f,
    0.400917351245880f,
  0.799080371856689f, 0.400688081979752f, 0.799387574195862f,
    0.400458574295044f,
  0.799694657325745f, 0.400228828191757f, 0.800001561641693f,
    0.399998843669891f,
  0.800308227539063f, 0.399768620729446f, 0.800614774227142f,
    0.399538189172745f,
  0.800921142101288f, 0.399307489395142f, 0.801227271556854f,
    0.399076581001282f,
  0.801533281803131f, 0.398845434188843f, 0.801839113235474f,
    0.398614019155502f,
  0.802144765853882f, 0.398382395505905f, 0.802450239658356f,
    0.398150533437729f,
  0.802755534648895f, 0.397918462753296f, 0.803060650825500f,
    0.397686123847961f,
  0.803365588188171f, 0.397453576326370f, 0.803670346736908f,
    0.397220760583878f,
  0.803974866867065f, 0.396987736225128f, 0.804279267787933f,
    0.396754473447800f,
  0.804583489894867f, 0.396520972251892f, 0.804887533187866f,
    0.396287262439728f,
  0.805191397666931f, 0.396053284406662f, 0.805495083332062f,
    0.395819097757339f,
  0.805798590183258f, 0.395584672689438f, 0.806101918220520f,
    0.395350009202957f,
  0.806405067443848f, 0.395115107297897f, 0.806707978248596f,
    0.394879996776581f,
  0.807010769844055f, 0.394644618034363f, 0.807313382625580f,
    0.394409030675888f,
  0.807615816593170f, 0.394173204898834f, 0.807918012142181f,
    0.393937170505524f,
  0.808220088481903f, 0.393700867891312f, 0.808521986007690f,
    0.393464356660843f,
  0.808823645114899f, 0.393227607011795f, 0.809125185012817f,
    0.392990618944168f,
  0.809426486492157f, 0.392753422260284f, 0.809727668762207f,
    0.392515957355499f,
  0.810028612613678f, 0.392278283834457f, 0.810329377651215f,
    0.392040401697159f,
  0.810629963874817f, 0.391802251338959f, 0.810930430889130f,
    0.391563892364502f,
  0.811230659484863f, 0.391325294971466f, 0.811530709266663f,
    0.391086459159851f,
  0.811830580234528f, 0.390847414731979f, 0.812130272388458f,
    0.390608131885529f,
  0.812429726123810f, 0.390368610620499f, 0.812729060649872f,
    0.390128880739212f,
  0.813028216362000f, 0.389888882637024f, 0.813327133655548f,
    0.389648675918579f,
  0.813625931739807f, 0.389408260583878f, 0.813924491405487f,
    0.389167606830597f,
  0.814222872257233f, 0.388926714658737f, 0.814521074295044f,
    0.388685584068298f,
  0.814819097518921f, 0.388444244861603f, 0.815116941928864f,
    0.388202667236328f,
  0.815414607524872f, 0.387960851192474f, 0.815712094306946f,
    0.387718826532364f,
  0.816009342670441f, 0.387476563453674f, 0.816306471824646f,
    0.387234061956406f,
  0.816603362560272f, 0.386991351842880f, 0.816900074481964f,
    0.386748403310776f,
  0.817196667194366f, 0.386505216360092f, 0.817493021488190f,
    0.386261820793152f,
  0.817789137363434f, 0.386018186807632f, 0.818085134029388f,
    0.385774344205856f,
  0.818380951881409f, 0.385530263185501f, 0.818676531314850f,
    0.385285943746567f,
  0.818971931934357f, 0.385041415691376f, 0.819267153739929f,
    0.384796649217606f,
  0.819562196731567f, 0.384551674127579f, 0.819857060909271f,
    0.384306460618973f,
  0.820151746273041f, 0.384061008691788f, 0.820446193218231f,
    0.383815348148346f,
  0.820740520954132f, 0.383569449186325f, 0.821034610271454f,
    0.383323341608047f,
  0.821328520774841f, 0.383076995611191f, 0.821622252464294f,
    0.382830440998077f,
  0.821915745735168f, 0.382583618164063f, 0.822209119796753f,
    0.382336616516113f,
  0.822502255439758f, 0.382089376449585f, 0.822795212268829f,
    0.381841897964478f,
  0.823087990283966f, 0.381594210863113f, 0.823380589485168f,
    0.381346285343170f,
  0.823673009872437f, 0.381098151206970f, 0.823965191841125f,
    0.380849778652191f,
  0.824257194995880f, 0.380601197481155f, 0.824549019336700f,
    0.380352377891541f,
  0.824840664863586f, 0.380103349685669f, 0.825132071971893f,
    0.379854083061218f,
  0.825423359870911f, 0.379604607820511f, 0.825714409351349f,
    0.379354894161224f,
  0.826005280017853f, 0.379104942083359f, 0.826295912265778f,
    0.378854811191559f,
  0.826586425304413f, 0.378604412078857f, 0.826876699924469f,
    0.378353834152222f,
  0.827166795730591f, 0.378102988004684f, 0.827456712722778f,
    0.377851963043213f,
  0.827746450901031f, 0.377600699663162f, 0.828035950660706f,
    0.377349197864532f,
  0.828325271606445f, 0.377097487449646f, 0.828614413738251f,
    0.376845568418503f,
  0.828903317451477f, 0.376593410968781f, 0.829192101955414f,
    0.376341015100479f,
  0.829480648040771f, 0.376088410615921f, 0.829769015312195f,
    0.375835597515106f,
  0.830057144165039f, 0.375582575798035f, 0.830345153808594f,
    0.375329315662384f,
  0.830632925033569f, 0.375075817108154f, 0.830920517444611f,
    0.374822109937668f,
  0.831207871437073f, 0.374568194150925f, 0.831495106220245f,
    0.374314039945602f,
  0.831782102584839f, 0.374059677124023f, 0.832068860530853f,
    0.373805105686188f,
  0.832355499267578f, 0.373550295829773f, 0.832641899585724f,
    0.373295277357101f,
  0.832928121089935f, 0.373040050268173f, 0.833214163780212f,
    0.372784584760666f,
  0.833499968051910f, 0.372528880834579f, 0.833785593509674f,
    0.372272998094559f,
  0.834071040153503f, 0.372016876935959f, 0.834356248378754f,
    0.371760547161102f,
  0.834641277790070f, 0.371503978967667f, 0.834926128387451f,
    0.371247202157974f,
  0.835210800170898f, 0.370990216732025f, 0.835495233535767f,
    0.370732992887497f,
  0.835779488086700f, 0.370475560426712f, 0.836063504219055f,
    0.370217919349670f,
  0.836347401142120f, 0.369960039854050f, 0.836631059646606f,
    0.369701951742172f,
  0.836914479732513f, 0.369443655014038f, 0.837197780609131f,
    0.369185149669647f,
  0.837480843067169f, 0.368926405906677f, 0.837763667106628f,
    0.368667453527451f,
  0.838046371936798f, 0.368408292531967f, 0.838328838348389f,
    0.368148893117905f,
  0.838611066341400f, 0.367889285087585f, 0.838893175125122f,
    0.367629468441010f,
  0.839175045490265f, 0.367369443178177f, 0.839456677436829f,
    0.367109179496765f,
  0.839738130569458f, 0.366848707199097f, 0.840019404888153f,
    0.366588026285172f,
  0.840300500392914f, 0.366327136754990f, 0.840581357479095f,
    0.366066008806229f,
  0.840862035751343f, 0.365804702043533f, 0.841142535209656f,
    0.365543156862259f,
  0.841422796249390f, 0.365281373262405f, 0.841702818870544f,
    0.365019410848618f,
  0.841982722282410f, 0.364757210016251f, 0.842262387275696f,
    0.364494800567627f,
  0.842541813850403f, 0.364232182502747f, 0.842821121215820f,
    0.363969355821610f,
  0.843100130558014f, 0.363706320524216f, 0.843379020690918f,
    0.363443046808243f,
  0.843657672405243f, 0.363179564476013f, 0.843936145305634f,
    0.362915903329849f,
  0.844214379787445f, 0.362651973962784f, 0.844492435455322f,
    0.362387865781784f,
  0.844770252704620f, 0.362123548984528f, 0.845047891139984f,
    0.361858993768692f,
  0.845325350761414f, 0.361594229936600f, 0.845602571964264f,
    0.361329287290573f,
  0.845879614353180f, 0.361064106225967f, 0.846156477928162f,
    0.360798716545105f,
  0.846433103084564f, 0.360533088445663f, 0.846709489822388f,
    0.360267281532288f,
  0.846985757350922f, 0.360001266002655f, 0.847261726856232f,
    0.359735012054443f,
  0.847537577152252f, 0.359468549489975f, 0.847813189029694f,
    0.359201908111572f,
  0.848088562488556f, 0.358935028314590f, 0.848363757133484f,
    0.358667939901352f,
  0.848638772964478f, 0.358400642871857f, 0.848913550376892f,
    0.358133137226105f,
  0.849188148975372f, 0.357865422964096f, 0.849462509155273f,
    0.357597470283508f,
  0.849736690521240f, 0.357329338788986f, 0.850010633468628f,
    0.357060998678207f,
  0.850284397602081f, 0.356792420148849f, 0.850557923316956f,
    0.356523662805557f,
  0.850831270217896f, 0.356254696846008f, 0.851104438304901f,
    0.355985492467880f,
  0.851377367973328f, 0.355716109275818f, 0.851650118827820f,
    0.355446487665176f,
  0.851922631263733f, 0.355176687240601f, 0.852194905281067f,
    0.354906648397446f,
  0.852467060089111f, 0.354636400938034f, 0.852738916873932f,
    0.354365974664688f,
  0.853010654449463f, 0.354095309972763f, 0.853282094001770f,
    0.353824466466904f,
  0.853553414344788f, 0.353553384542465f, 0.853824436664581f,
    0.353282123804092f,
  0.854095339775085f, 0.353010624647141f, 0.854365944862366f,
    0.352738946676254f,
  0.854636430740356f, 0.352467030286789f, 0.854906618595123f,
    0.352194935083389f,
  0.855176687240601f, 0.351922631263733f, 0.855446517467499f,
    0.351650089025497f,
  0.855716109275818f, 0.351377367973328f, 0.855985522270203f,
    0.351104438304901f,
  0.856254696846008f, 0.350831300020218f, 0.856523692607880f,
    0.350557953119278f,
  0.856792449951172f, 0.350284397602081f, 0.857060968875885f,
    0.350010633468628f,
  0.857329368591309f, 0.349736660718918f, 0.857597470283508f,
    0.349462509155273f,
  0.857865393161774f, 0.349188119173050f, 0.858133137226105f,
    0.348913550376892f,
  0.858400642871857f, 0.348638743162155f, 0.858667910099030f,
    0.348363757133484f,
  0.858934998512268f, 0.348088562488556f, 0.859201908111572f,
    0.347813159227371f,
  0.859468579292297f, 0.347537547349930f, 0.859735012054443f,
    0.347261756658554f,
  0.860001266002655f, 0.346985727548599f, 0.860267281532288f,
    0.346709519624710f,
  0.860533118247986f, 0.346433073282242f, 0.860798716545105f,
    0.346156448125839f,
  0.861064076423645f, 0.345879614353180f, 0.861329257488251f,
    0.345602601766586f,
  0.861594259738922f, 0.345325350761414f, 0.861859023571014f,
    0.345047920942307f,
  0.862123548984528f, 0.344770282506943f, 0.862387895584106f,
    0.344492435455322f,
  0.862652003765106f, 0.344214379787445f, 0.862915873527527f,
    0.343936115503311f,
  0.863179564476013f, 0.343657672405243f, 0.863443076610565f,
    0.343379020690918f,
  0.863706290721893f, 0.343100160360336f, 0.863969385623932f,
    0.342821091413498f,
  0.864232182502747f, 0.342541843652725f, 0.864494800567627f,
    0.342262357473373f,
  0.864757239818573f, 0.341982692480087f, 0.865019381046295f,
    0.341702848672867f,
  0.865281403064728f, 0.341422766447067f, 0.865543127059937f,
    0.341142505407333f,
  0.865804672241211f, 0.340862035751343f, 0.866066038608551f,
    0.340581357479095f,
  0.866327106952667f, 0.340300500392914f, 0.866588056087494f,
    0.340019434690475f,
  0.866848707199097f, 0.339738160371780f, 0.867109179496765f,
    0.339456677436829f,
  0.867369413375854f, 0.339175015687943f, 0.867629468441010f,
    0.338893145322800f,
  0.867889285087585f, 0.338611096143723f, 0.868148922920227f,
    0.338328808546066f,
  0.868408262729645f, 0.338046342134476f, 0.868667483329773f,
    0.337763696908951f,
  0.868926405906677f, 0.337480813264847f, 0.869185149669647f,
    0.337197750806808f,
  0.869443655014038f, 0.336914509534836f, 0.869701981544495f,
    0.336631029844284f,
  0.869960069656372f, 0.336347371339798f, 0.870217919349670f,
    0.336063534021378f,
  0.870475590229034f, 0.335779488086700f, 0.870733022689819f,
    0.335495233535767f,
  0.870990216732025f, 0.335210770368576f, 0.871247172355652f,
    0.334926128387451f,
  0.871503949165344f, 0.334641307592392f, 0.871760547161102f,
    0.334356248378754f,
  0.872016847133636f, 0.334071010351181f, 0.872272968292236f,
    0.333785593509674f,
  0.872528910636902f, 0.333499968051910f, 0.872784554958344f,
    0.333214133977890f,
  0.873040020465851f, 0.332928121089935f, 0.873295307159424f,
    0.332641899585724f,
  0.873550295829773f, 0.332355499267578f, 0.873805105686188f,
    0.332068890333176f,
  0.874059677124023f, 0.331782072782516f, 0.874314069747925f,
    0.331495076417923f,
  0.874568223953247f, 0.331207901239395f, 0.874822139739990f,
    0.330920487642288f,
  0.875075817108154f, 0.330632925033569f, 0.875329315662384f,
    0.330345153808594f,
  0.875582575798035f, 0.330057173967361f, 0.875835597515106f,
    0.329769015312195f,
  0.876088440418243f, 0.329480648040771f, 0.876341044902802f,
    0.329192101955414f,
  0.876593410968781f, 0.328903347253799f, 0.876845538616180f,
    0.328614413738251f,
  0.877097487449646f, 0.328325271606445f, 0.877349197864532f,
    0.328035950660706f,
  0.877600669860840f, 0.327746421098709f, 0.877851963043213f,
    0.327456712722778f,
  0.878103017807007f, 0.327166795730591f, 0.878353834152222f,
    0.326876699924469f,
  0.878604412078857f, 0.326586425304413f, 0.878854811191559f,
    0.326295942068100f,
  0.879104971885681f, 0.326005280017853f, 0.879354894161224f,
    0.325714409351349f,
  0.879604578018188f, 0.325423330068588f, 0.879854083061218f,
    0.325132101774216f,
  0.880103349685669f, 0.324840664863586f, 0.880352377891541f,
    0.324549019336700f,
  0.880601167678833f, 0.324257194995880f, 0.880849778652191f,
    0.323965191841125f,
  0.881098151206970f, 0.323672980070114f, 0.881346285343170f,
    0.323380589485168f,
  0.881594181060791f, 0.323088020086288f, 0.881841897964478f,
    0.322795242071152f,
  0.882089376449585f, 0.322502255439758f, 0.882336616516113f,
    0.322209119796753f,
  0.882583618164063f, 0.321915775537491f, 0.882830440998077f,
    0.321622252464294f,
  0.883076965808868f, 0.321328520774841f, 0.883323311805725f,
    0.321034610271454f,
  0.883569478988647f, 0.320740520954132f, 0.883815348148346f,
    0.320446223020554f,
  0.884061038494110f, 0.320151746273041f, 0.884306430816650f,
    0.319857090711594f,
  0.884551644325256f, 0.319562226533890f, 0.884796679019928f,
    0.319267183542252f,
  0.885041415691376f, 0.318971961736679f, 0.885285973548889f,
    0.318676531314850f,
  0.885530233383179f, 0.318380922079086f, 0.885774314403534f,
    0.318085134029388f,
  0.886018216609955f, 0.317789167165756f, 0.886261820793152f,
    0.317492991685867f,
  0.886505246162415f, 0.317196637392044f, 0.886748373508453f,
    0.316900104284287f,
  0.886991322040558f, 0.316603392362595f, 0.887234091758728f,
    0.316306471824646f,
  0.887476563453674f, 0.316009372472763f, 0.887718796730042f,
    0.315712094306946f,
  0.887960851192474f, 0.315414607524872f, 0.888202667236328f,
    0.315116971731186f,
  0.888444244861603f, 0.314819127321243f, 0.888685584068298f,
    0.314521104097366f,
  0.888926684856415f, 0.314222872257233f, 0.889167606830597f,
    0.313924491405487f,
  0.889408230781555f, 0.313625901937485f, 0.889648675918579f,
    0.313327133655548f,
  0.889888882637024f, 0.313028186559677f, 0.890128850936890f,
    0.312729060649872f,
  0.890368640422821f, 0.312429755926132f, 0.890608131885529f,
    0.312130242586136f,
  0.890847444534302f, 0.311830550432205f, 0.891086459159851f,
    0.311530679464340f,
  0.891325294971466f, 0.311230629682541f, 0.891563892364502f,
    0.310930401086807f,
  0.891802251338959f, 0.310629993677139f, 0.892040371894836f,
    0.310329377651215f,
  0.892278313636780f, 0.310028612613678f, 0.892515957355499f,
    0.309727638959885f,
  0.892753422260284f, 0.309426486492157f, 0.892990648746490f,
    0.309125155210495f,
  0.893227577209473f, 0.308823645114899f, 0.893464326858521f,
    0.308521956205368f,
  0.893700897693634f, 0.308220088481903f, 0.893937170505524f,
    0.307918041944504f,
  0.894173204898834f, 0.307615786790848f, 0.894409060478210f,
    0.307313382625580f,
  0.894644618034363f, 0.307010769844055f, 0.894879996776581f,
    0.306708008050919f,
  0.895115137100220f, 0.306405037641525f, 0.895349979400635f,
    0.306101888418198f,
  0.895584642887115f, 0.305798590183258f, 0.895819067955017f,
    0.305495083332062f,
  0.896053314208984f, 0.305191397666931f, 0.896287262439728f,
    0.304887533187866f,
  0.896520972251892f, 0.304583519697189f, 0.896754503250122f,
    0.304279297590256f,
  0.896987736225128f, 0.303974896669388f, 0.897220790386200f,
    0.303670316934586f,
  0.897453546524048f, 0.303365558385849f, 0.897686123847961f,
    0.303060621023178f,
  0.897918462753296f, 0.302755534648895f, 0.898150563240051f,
    0.302450239658356f,
  0.898382425308228f, 0.302144765853882f, 0.898614048957825f,
    0.301839113235474f,
  0.898845434188843f, 0.301533311605453f, 0.899076581001282f,
    0.301227301359177f,
  0.899307489395142f, 0.300921112298965f, 0.899538159370422f,
    0.300614774227142f,
  0.899768650531769f, 0.300308227539063f, 0.899998843669891f,
    0.300001531839371f,
  0.900228857994080f, 0.299694657325745f, 0.900458574295044f,
    0.299387603998184f,
  0.900688111782074f, 0.299080342054367f, 0.900917351245880f,
    0.298772931098938f,
  0.901146411895752f, 0.298465341329575f, 0.901375174522400f,
    0.298157602548599f,
  0.901603758335114f, 0.297849655151367f, 0.901832103729248f,
    0.297541528940201f,
  0.902060210704803f, 0.297233253717422f, 0.902288019657135f,
    0.296924799680710f,
  0.902515649795532f, 0.296616137027740f, 0.902743041515350f,
    0.296307325363159f,
  0.902970194816589f, 0.295998334884644f, 0.903197109699249f,
    0.295689195394516f,
  0.903423786163330f, 0.295379847288132f, 0.903650224208832f,
    0.295070350170136f,
  0.903876423835754f, 0.294760644435883f, 0.904102385044098f,
    0.294450789690018f,
  0.904328107833862f, 0.294140785932541f, 0.904553592205048f,
    0.293830573558807f,
  0.904778838157654f, 0.293520182371140f, 0.905003845691681f,
    0.293209642171860f,
  0.905228614807129f, 0.292898923158646f, 0.905453145503998f,
    0.292588025331497f,
  0.905677437782288f, 0.292276978492737f, 0.905901491641998f,
    0.291965723037720f,
  0.906125307083130f, 0.291654318571091f, 0.906348884105682f,
    0.291342735290527f,
  0.906572222709656f, 0.291031002998352f, 0.906795322895050f,
    0.290719062089920f,
  0.907018184661865f, 0.290406972169876f, 0.907240808010101f,
    0.290094703435898f,
  0.907463192939758f, 0.289782285690308f, 0.907685279846191f,
    0.289469659328461f,
  0.907907187938690f, 0.289156883955002f, 0.908128857612610f,
    0.288843959569931f,
  0.908350288867950f, 0.288530826568604f, 0.908571481704712f,
    0.288217544555664f,
  0.908792436122894f, 0.287904083728790f, 0.909013092517853f,
    0.287590473890305f,
  0.909233570098877f, 0.287276685237885f, 0.909453809261322f,
    0.286962717771530f,
  0.909673750400543f, 0.286648571491241f, 0.909893512725830f,
    0.286334276199341f,
  0.910112977027893f, 0.286019802093506f, 0.910332262516022f,
    0.285705178976059f,
  0.910551249980927f, 0.285390377044678f, 0.910769999027252f,
    0.285075396299362f,
  0.910988569259644f, 0.284760266542435f, 0.911206841468811f,
    0.284444957971573f,
  0.911424875259399f, 0.284129470586777f, 0.911642670631409f,
    0.283813834190369f,
  0.911860227584839f, 0.283498018980026f, 0.912077546119690f,
    0.283182054758072f,
  0.912294626235962f, 0.282865911722183f, 0.912511467933655f,
    0.282549589872360f,
  0.912728071212769f, 0.282233119010925f, 0.912944436073303f,
    0.281916469335556f,
  0.913160502910614f, 0.281599670648575f, 0.913376390933990f,
    0.281282693147659f,
  0.913592040538788f, 0.280965566635132f, 0.913807392120361f,
    0.280648261308670f,
  0.914022505283356f, 0.280330777168274f, 0.914237439632416f,
    0.280013144016266f,
  0.914452075958252f, 0.279695361852646f, 0.914666473865509f,
    0.279377400875092f,
  0.914880633354187f, 0.279059261083603f, 0.915094554424286f,
    0.278740972280502f,
  0.915308177471161f, 0.278422504663467f, 0.915521621704102f,
    0.278103888034821f,
  0.915734827518463f, 0.277785122394562f, 0.915947735309601f,
    0.277466177940369f,
  0.916160404682159f, 0.277147054672241f, 0.916372895240784f,
    0.276827782392502f,
  0.916585087776184f, 0.276508361101151f, 0.916797041893005f,
    0.276188760995865f,
  0.917008757591248f, 0.275868982076645f, 0.917220234870911f,
    0.275549083948135f,
  0.917431414127350f, 0.275228977203369f, 0.917642414569855f,
    0.274908751249313f,
  0.917853116989136f, 0.274588316679001f, 0.918063640594482f,
    0.274267762899399f,
  0.918273866176605f, 0.273947030305862f, 0.918483853340149f,
    0.273626148700714f,
  0.918693602085114f, 0.273305088281631f, 0.918903112411499f,
    0.272983878850937f,
  0.919112324714661f, 0.272662490606308f, 0.919321358203888f,
    0.272340953350067f,
  0.919530093669891f, 0.272019267082214f, 0.919738650321960f,
    0.271697402000427f,
  0.919946908950806f, 0.271375387907028f, 0.920154929161072f,
    0.271053224802017f,
  0.920362710952759f, 0.270730882883072f, 0.920570194721222f,
    0.270408391952515f,
  0.920777499675751f, 0.270085722208023f, 0.920984506607056f,
    0.269762933254242f,
  0.921191275119781f, 0.269439965486526f, 0.921397805213928f,
    0.269116818904877f,
  0.921604096889496f, 0.268793523311615f, 0.921810150146484f,
    0.268470078706741f,
  0.922015964984894f, 0.268146485090256f, 0.922221481800079f,
    0.267822742462158f,
  0.922426760196686f, 0.267498821020126f, 0.922631800174713f,
    0.267174720764160f,
  0.922836601734161f, 0.266850501298904f, 0.923041164875031f,
    0.266526103019714f,
  0.923245489597321f, 0.266201555728912f, 0.923449516296387f,
    0.265876859426498f,
  0.923653304576874f, 0.265552014112473f, 0.923856854438782f,
    0.265226989984512f,
  0.924060165882111f, 0.264901816844940f, 0.924263238906860f,
    0.264576494693756f,
  0.924466013908386f, 0.264250993728638f, 0.924668610095978f,
    0.263925373554230f,
  0.924870908260345f, 0.263599574565887f, 0.925072908401489f,
    0.263273626565933f,
  0.925274729728699f, 0.262947499752045f, 0.925476312637329f,
    0.262621253728867f,
  0.925677597522736f, 0.262294828891754f, 0.925878643989563f,
    0.261968284845352f,
  0.926079452037811f, 0.261641561985016f, 0.926280021667480f,
    0.261314690113068f,
  0.926480293273926f, 0.260987639427185f, 0.926680326461792f,
    0.260660469532013f,
  0.926880121231079f, 0.260333120822906f, 0.927079677581787f,
    0.260005623102188f,
  0.927278995513916f, 0.259678006172180f, 0.927478015422821f,
    0.259350210428238f,
  0.927676856517792f, 0.259022265672684f, 0.927875399589539f,
    0.258694142103195f,
  0.928073644638062f, 0.258365899324417f, 0.928271710872650f,
    0.258037507534027f,
  0.928469479084015f, 0.257708936929703f, 0.928667008876801f,
    0.257380217313766f,
  0.928864300251007f, 0.257051378488541f, 0.929061353206635f,
    0.256722360849380f,
  0.929258108139038f, 0.256393194198608f, 0.929454624652863f,
    0.256063878536224f,
  0.929650902748108f, 0.255734413862228f, 0.929846942424774f,
    0.255404800176620f,
  0.930042684078217f, 0.255075037479401f, 0.930238187313080f,
    0.254745125770569f,
  0.930433452129364f, 0.254415065050125f, 0.930628478527069f,
    0.254084855318069f,
  0.930823206901550f, 0.253754496574402f, 0.931017756462097f,
    0.253423988819122f,
  0.931211948394775f, 0.253093332052231f, 0.931405961513519f,
    0.252762526273727f,
  0.931599736213684f, 0.252431541681290f, 0.931793212890625f,
    0.252100437879562f,
  0.931986451148987f, 0.251769185066223f, 0.932179391384125f,
    0.251437783241272f,
  0.932372152805328f, 0.251106232404709f, 0.932564616203308f,
    0.250774532556534f,
  0.932756841182709f, 0.250442683696747f, 0.932948768138886f,
    0.250110685825348f,
  0.933140456676483f, 0.249778553843498f, 0.933331906795502f,
    0.249446272850037f,
  0.933523118495941f, 0.249113827943802f, 0.933714091777802f,
    0.248781248927116f,
  0.933904767036438f, 0.248448520898819f, 0.934095203876495f,
    0.248115643858910f,
  0.934285342693329f, 0.247782632708550f, 0.934475243091583f,
    0.247449472546577f,
  0.934664964675903f, 0.247116148471832f, 0.934854328632355f,
    0.246782705187798f,
  0.935043513774872f, 0.246449097990990f, 0.935232400894165f,
    0.246115356683731f,
  0.935421049594879f, 0.245781451463699f, 0.935609400272369f,
    0.245447427034378f,
  0.935797572135925f, 0.245113238692284f, 0.935985386371613f,
    0.244778916239738f,
  0.936173021793365f, 0.244444444775581f, 0.936360359191895f,
    0.244109839200974f,
  0.936547517776489f, 0.243775084614754f, 0.936734318733215f,
    0.243440181016922f,
  0.936920940876007f, 0.243105143308640f, 0.937107264995575f,
    0.242769956588745f,
  0.937293350696564f, 0.242434620857239f, 0.937479138374329f,
    0.242099151015282f,
  0.937664687633514f, 0.241763532161713f, 0.937849998474121f,
    0.241427779197693f,
  0.938035070896149f, 0.241091892123222f, 0.938219845294952f,
    0.240755841135979f,
  0.938404381275177f, 0.240419670939446f, 0.938588619232178f,
    0.240083336830139f,
  0.938772618770599f, 0.239746883511543f, 0.938956379890442f,
    0.239410281181335f,
  0.939139902591705f, 0.239073529839516f, 0.939323127269745f,
    0.238736644387245f,
  0.939506113529205f, 0.238399609923363f, 0.939688861370087f,
    0.238062441349030f,
  0.939871311187744f, 0.237725138664246f, 0.940053522586823f,
    0.237387686967850f,
  0.940235435962677f, 0.237050101161003f, 0.940417110919952f,
    0.236712381243706f,
  0.940598547458649f, 0.236374512314796f, 0.940779745578766f,
    0.236036509275436f,
  0.940960645675659f, 0.235698372125626f, 0.941141307353973f,
    0.235360085964203f,
  0.941321671009064f, 0.235021665692329f, 0.941501796245575f,
    0.234683111310005f,
  0.941681683063507f, 0.234344407916069f, 0.941861271858215f,
    0.234005570411682f,
  0.942040622234344f, 0.233666598796844f, 0.942219734191895f,
    0.233327493071556f,
  0.942398548126221f, 0.232988253235817f, 0.942577123641968f,
    0.232648864388466f,
  0.942755401134491f, 0.232309341430664f, 0.942933499813080f,
    0.231969684362412f,
  0.943111240863800f, 0.231629893183708f, 0.943288803100586f,
    0.231289967894554f,
  0.943466067314148f, 0.230949893593788f, 0.943643093109131f,
    0.230609700083733f,
  0.943819820880890f, 0.230269357562065f, 0.943996310234070f,
    0.229928880929947f,
  0.944172501564026f, 0.229588270187378f, 0.944348454475403f,
    0.229247525334358f,
  0.944524168968201f, 0.228906646370888f, 0.944699645042419f,
    0.228565633296967f,
  0.944874763488770f, 0.228224486112595f, 0.945049703121185f,
    0.227883204817772f,
  0.945224344730377f, 0.227541789412498f, 0.945398747920990f,
    0.227200239896774f,
  0.945572853088379f, 0.226858556270599f, 0.945746779441834f,
    0.226516738533974f,
  0.945920348167419f, 0.226174786686897f, 0.946093678474426f,
    0.225832715630531f,
  0.946266770362854f, 0.225490495562553f, 0.946439623832703f,
    0.225148141384125f,
  0.946612179279327f, 0.224805667996407f, 0.946784436702728f,
    0.224463045597076f,
  0.946956455707550f, 0.224120303988457f, 0.947128236293793f,
    0.223777428269386f,
  0.947299718856812f, 0.223434418439865f, 0.947470963001251f,
    0.223091274499893f,
  0.947641968727112f, 0.222748011350632f, 0.947812676429749f,
    0.222404599189758f,
  0.947983145713806f, 0.222061067819595f, 0.948153316974640f,
    0.221717402338982f,
  0.948323249816895f, 0.221373617649078f, 0.948492884635925f,
    0.221029683947563f,
  0.948662281036377f, 0.220685631036758f, 0.948831439018250f,
    0.220341444015503f,
  0.949000298976898f, 0.219997137784958f, 0.949168920516968f,
    0.219652697443962f,
  0.949337244033813f, 0.219308122992516f, 0.949505329132080f,
    0.218963414430618f,
  0.949673116207123f, 0.218618586659431f, 0.949840664863586f,
    0.218273624777794f,
  0.950007975101471f, 0.217928543686867f, 0.950174987316132f,
    0.217583328485489f,
  0.950341701507568f, 0.217237979173660f, 0.950508177280426f,
    0.216892510652542f,
  0.950674414634705f, 0.216546908020973f, 0.950840353965759f,
    0.216201186180115f,
  0.951006054878235f, 0.215855330228806f, 0.951171517372131f,
    0.215509355068207f,
  0.951336681842804f, 0.215163245797157f, 0.951501548290253f,
    0.214817002415657f,
  0.951666176319122f, 0.214470639824867f, 0.951830565929413f,
    0.214124158024788f,
  0.951994657516479f, 0.213777542114258f, 0.952158451080322f,
    0.213430806994438f,
  0.952322065830231f, 0.213083937764168f, 0.952485322952271f,
    0.212736949324608f,
  0.952648401260376f, 0.212389841675758f, 0.952811121940613f,
    0.212042599916458f,
  0.952973663806915f, 0.211695238947868f, 0.953135907649994f,
    0.211347743868828f,
  0.953297853469849f, 0.211000129580498f, 0.953459560871124f,
    0.210652396082878f,
  0.953620970249176f, 0.210304543375969f, 0.953782141208649f,
    0.209956556558609f,
  0.953943073749542f, 0.209608450531960f, 0.954103708267212f,
    0.209260210394859f,
  0.954264044761658f, 0.208911851048470f, 0.954424142837524f,
    0.208563387393951f,
  0.954584002494812f, 0.208214774727821f, 0.954743564128876f,
    0.207866057753563f,
  0.954902827739716f, 0.207517206668854f, 0.955061912536621f,
    0.207168251276016f,
  0.955220639705658f, 0.206819161772728f, 0.955379128456116f,
    0.206469938158989f,
  0.955537378787994f, 0.206120610237122f, 0.955695331096649f,
    0.205771163105965f,
  0.955853044986725f, 0.205421581864357f, 0.956010460853577f,
    0.205071896314621f,
  0.956167578697205f, 0.204722076654434f, 0.956324458122253f,
    0.204372137784958f,
  0.956481099128723f, 0.204022079706192f, 0.956637442111969f,
    0.203671902418137f,
  0.956793546676636f, 0.203321605920792f, 0.956949353218079f,
    0.202971190214157f,
  0.957104861736298f, 0.202620655298233f, 0.957260131835938f,
    0.202270001173019f,
  0.957415163516998f, 0.201919227838516f, 0.957569897174835f,
    0.201568335294724f,
  0.957724332809448f, 0.201217323541641f, 0.957878530025482f,
    0.200866192579269f,
  0.958032488822937f, 0.200514942407608f, 0.958186149597168f,
    0.200163587927818f,
  0.958339512348175f, 0.199812099337578f, 0.958492636680603f,
    0.199460506439209f,
  0.958645522594452f, 0.199108779430389f, 0.958798050880432f,
    0.198756948113441f,
  0.958950400352478f, 0.198404997587204f, 0.959102451801300f,
    0.198052927851677f,
  0.959254205226898f, 0.197700738906860f, 0.959405720233917f,
    0.197348430752754f,
  0.959556937217712f, 0.196996018290520f, 0.959707856178284f,
    0.196643486618996f,
  0.959858596324921f, 0.196290835738182f, 0.960008978843689f,
    0.195938065648079f,
  0.960159122943878f, 0.195585191249847f, 0.960309028625488f,
    0.195232197642326f,
  0.960458636283875f, 0.194879084825516f, 0.960607945919037f,
    0.194525867700577f,
  0.960757017135620f, 0.194172516465187f, 0.960905790328979f,
    0.193819075822830f,
  0.961054325103760f, 0.193465501070023f, 0.961202561855316f,
    0.193111822009087f,
  0.961350560188293f, 0.192758023738861f, 0.961498260498047f,
    0.192404121160507f,
  0.961645722389221f, 0.192050099372864f, 0.961792886257172f,
    0.191695958375931f,
  0.961939752101898f, 0.191341713070869f, 0.962086379528046f,
    0.190987363457680f,
  0.962232708930969f, 0.190632879734039f, 0.962378799915314f,
    0.190278306603432f,
  0.962524592876434f, 0.189923599362373f, 0.962670147418976f,
    0.189568802714348f,
  0.962815403938293f, 0.189213871955872f, 0.962960422039032f,
    0.188858851790428f,
  0.963105142116547f, 0.188503712415695f, 0.963249564170837f,
    0.188148453831673f,
  0.963393747806549f, 0.187793090939522f, 0.963537633419037f,
    0.187437608838081f,
  0.963681280612946f, 0.187082037329674f, 0.963824629783630f,
    0.186726331710815f,
  0.963967680931091f, 0.186370536684990f, 0.964110493659973f,
    0.186014622449875f,
  0.964253067970276f, 0.185658603906631f, 0.964395284652710f,
    0.185302466154099f,
  0.964537262916565f, 0.184946224093437f, 0.964679002761841f,
    0.184589877724648f,
  0.964820444583893f, 0.184233412146568f, 0.964961588382721f,
    0.183876842260361f,
  0.965102493762970f, 0.183520168066025f, 0.965243160724640f,
    0.183163389563560f,
  0.965383470058441f, 0.182806491851807f, 0.965523540973663f,
    0.182449504733086f,
  0.965663373470306f, 0.182092398405075f, 0.965802907943726f,
    0.181735187768936f,
  0.965942144393921f, 0.181377857923508f, 0.966081082820892f,
    0.181020438671112f,
  0.966219842433929f, 0.180662900209427f, 0.966358244419098f,
    0.180305257439613f,
  0.966496407985687f, 0.179947525262833f, 0.966634273529053f,
    0.179589673876762f,
  0.966771900653839f, 0.179231703281403f, 0.966909229755402f,
    0.178873643279076f,
  0.967046260833740f, 0.178515478968620f, 0.967183053493500f,
    0.178157210350037f,
  0.967319548130035f, 0.177798837423325f, 0.967455804347992f,
    0.177440345287323f,
  0.967591762542725f, 0.177081763744354f, 0.967727422714233f,
    0.176723077893257f,
  0.967862844467163f, 0.176364272832870f, 0.967997968196869f,
    0.176005378365517f,
  0.968132853507996f, 0.175646379590034f, 0.968267440795898f,
    0.175287276506424f,
  0.968401730060577f, 0.174928069114685f, 0.968535780906677f,
    0.174568757414818f,
  0.968669533729553f, 0.174209341406822f, 0.968802988529205f,
    0.173849821090698f,
  0.968936204910278f, 0.173490211367607f, 0.969069123268127f,
    0.173130482435226f,
  0.969201743602753f, 0.172770664095879f, 0.969334125518799f,
    0.172410741448402f,
  0.969466269016266f, 0.172050714492798f, 0.969598054885864f,
    0.171690583229065f,
  0.969729602336884f, 0.171330362558365f, 0.969860911369324f,
    0.170970037579536f,
  0.969991862773895f, 0.170609608292580f, 0.970122575759888f,
    0.170249074697495f,
  0.970253050327301f, 0.169888436794281f, 0.970383226871490f,
    0.169527709484100f,
  0.970513105392456f, 0.169166877865791f, 0.970642685890198f,
    0.168805956840515f,
  0.970772027969360f, 0.168444931507111f, 0.970901072025299f,
    0.168083801865578f,
  0.971029877662659f, 0.167722567915916f, 0.971158385276794f,
    0.167361244559288f,
  0.971286594867706f, 0.166999831795692f, 0.971414566040039f,
    0.166638299822807f,
  0.971542239189148f, 0.166276678442955f, 0.971669614315033f,
    0.165914967656136f,
  0.971796751022339f, 0.165553152561188f, 0.971923589706421f,
    0.165191248059273f,
  0.972050130367279f, 0.164829224348068f, 0.972176432609558f,
    0.164467126131058f,
  0.972302436828613f, 0.164104923605919f, 0.972428143024445f,
    0.163742616772652f,
  0.972553610801697f, 0.163380220532417f, 0.972678780555725f,
    0.163017734885216f,
  0.972803652286530f, 0.162655144929886f, 0.972928285598755f,
    0.162292465567589f,
  0.973052620887756f, 0.161929681897163f, 0.973176658153534f,
    0.161566808819771f,
  0.973300457000732f, 0.161203846335411f, 0.973423957824707f,
    0.160840779542923f,
  0.973547160625458f, 0.160477623343468f, 0.973670125007629f,
    0.160114362835884f,
  0.973792791366577f, 0.159751012921333f, 0.973915159702301f,
    0.159387573599815f,
  0.974037289619446f, 0.159024044871330f, 0.974159121513367f,
    0.158660411834717f,
  0.974280655384064f, 0.158296689391136f, 0.974401950836182f,
    0.157932877540588f,
  0.974522948265076f, 0.157568961381912f, 0.974643647670746f,
    0.157204970717430f,
  0.974764108657837f, 0.156840875744820f, 0.974884271621704f,
    0.156476691365242f,
  0.975004136562347f, 0.156112402677536f, 0.975123703479767f,
    0.155748039484024f,
  0.975243031978607f, 0.155383571982384f, 0.975362062454224f,
    0.155019029974937f,
  0.975480854511261f, 0.154654383659363f, 0.975599288940430f,
    0.154289647936821f,
  0.975717484951019f, 0.153924822807312f, 0.975835442543030f,
    0.153559908270836f,
  0.975953042507172f, 0.153194904327393f, 0.976070404052734f,
    0.152829796075821f,
  0.976187527179718f, 0.152464613318443f, 0.976304292678833f,
    0.152099341154099f,
  0.976420819759369f, 0.151733979582787f, 0.976537048816681f,
    0.151368513703346f,
  0.976653039455414f, 0.151002973318100f, 0.976768672466278f,
    0.150637343525887f,
  0.976884067058563f, 0.150271624326706f, 0.976999223232269f,
    0.149905815720558f,
  0.977114021778107f, 0.149539917707443f, 0.977228581905365f,
    0.149173930287361f,
  0.977342903614044f, 0.148807853460312f, 0.977456867694855f,
    0.148441687226295f,
  0.977570593357086f, 0.148075446486473f, 0.977684020996094f,
    0.147709101438522f,
  0.977797150611877f, 0.147342681884766f, 0.977910041809082f,
    0.146976172924042f,
  0.978022634983063f, 0.146609574556351f, 0.978134930133820f,
    0.146242901682854f,
  0.978246986865997f, 0.145876124501228f, 0.978358685970306f,
    0.145509272813797f,
  0.978470146656036f, 0.145142331719399f, 0.978581368923187f,
    0.144775316119194f,
  0.978692233562469f, 0.144408211112022f, 0.978802859783173f,
    0.144041016697884f,
  0.978913187980652f, 0.143673732876778f, 0.979023277759552f,
    0.143306359648705f,
  0.979133009910584f, 0.142938911914825f, 0.979242503643036f,
    0.142571389675140f,
  0.979351758956909f, 0.142203763127327f, 0.979460656642914f,
    0.141836062073708f,
  0.979569315910339f, 0.141468286514282f, 0.979677677154541f,
    0.141100421547890f,
  0.979785740375519f, 0.140732467174530f, 0.979893565177917f,
    0.140364438295364f,
  0.980001091957092f, 0.139996320009232f, 0.980108320713043f,
    0.139628127217293f,
  0.980215251445770f, 0.139259845018387f, 0.980321943759918f,
    0.138891488313675f,
  0.980428338050842f, 0.138523042201996f, 0.980534434318542f,
    0.138154521584511f,
  0.980640232563019f, 0.137785911560059f, 0.980745792388916f,
    0.137417227029800f,
  0.980851054191589f, 0.137048453092575f, 0.980956017971039f,
    0.136679604649544f,
  0.981060683727264f, 0.136310681700706f, 0.981165111064911f,
    0.135941669344902f,
  0.981269240379334f, 0.135572582483292f, 0.981373071670532f,
    0.135203406214714f,
  0.981476604938507f, 0.134834155440331f, 0.981579899787903f,
    0.134464830160141f,
  0.981682896614075f, 0.134095430374146f, 0.981785595417023f,
    0.133725941181183f,
  0.981888055801392f, 0.133356377482414f, 0.981990158557892f,
    0.132986739277840f,
  0.982092022895813f, 0.132617011666298f, 0.982193589210510f,
    0.132247209548950f,
  0.982294917106628f, 0.131877332925797f, 0.982395887374878f,
    0.131507381796837f,
  0.982496619224548f, 0.131137356162071f, 0.982597053050995f,
    0.130767241120338f,
  0.982697248458862f, 0.130397051572800f, 0.982797086238861f,
    0.130026802420616f,
  0.982896685600281f, 0.129656463861465f, 0.982995986938477f,
    0.129286035895348f,
  0.983094990253448f, 0.128915548324585f, 0.983193755149841f,
    0.128544986248016f,
  0.983292162418365f, 0.128174334764481f, 0.983390331268311f,
    0.127803623676300f,
  0.983488261699677f, 0.127432823181152f, 0.983585834503174f,
    0.127061963081360f,
  0.983683168888092f, 0.126691013574600f, 0.983780145645142f,
    0.126320004463196f,
  0.983876943588257f, 0.125948905944824f, 0.983973383903503f,
    0.125577747821808f,
  0.984069526195526f, 0.125206500291824f, 0.984165430068970f,
    0.124835193157196f,
  0.984261035919189f, 0.124463804066181f, 0.984356343746185f,
    0.124092340469360f,
  0.984451413154602f, 0.123720809817314f, 0.984546124935150f,
    0.123349204659462f,
  0.984640598297119f, 0.122977524995804f, 0.984734773635864f,
    0.122605770826340f,
  0.984828710556030f, 0.122233949601650f, 0.984922289848328f,
    0.121862053871155f,
  0.985015630722046f, 0.121490091085434f, 0.985108673572540f,
    0.121118053793907f,
  0.985201418399811f, 0.120745941996574f, 0.985293865203857f,
    0.120373763144016f,
  0.985386073589325f, 0.120001509785652f, 0.985477983951569f,
    0.119629189372063f,
  0.985569596290588f, 0.119256794452667f, 0.985660910606384f,
    0.118884332478046f,
  0.985751926898956f, 0.118511803448200f, 0.985842704772949f,
    0.118139199912548f,
  0.985933184623718f, 0.117766529321671f, 0.986023366451263f,
    0.117393791675568f,
  0.986113250255585f, 0.117020979523659f, 0.986202836036682f,
    0.116648100316525f,
  0.986292183399200f, 0.116275154054165f, 0.986381232738495f,
    0.115902140736580f,
  0.986469984054565f, 0.115529052913189f, 0.986558437347412f,
    0.115155905485153f,
  0.986646652221680f, 0.114782683551311f, 0.986734509468079f,
    0.114409394562244f,
  0.986822128295898f, 0.114036038517952f, 0.986909449100494f,
    0.113662622869015f,
  0.986996471881866f, 0.113289132714272f, 0.987083256244659f,
    0.112915575504303f,
  0.987169682979584f, 0.112541958689690f, 0.987255871295929f,
    0.112168267369270f,
  0.987341761589050f, 0.111794516444206f, 0.987427353858948f,
    0.111420698463917f,
  0.987512648105621f, 0.111046813428402f, 0.987597703933716f,
    0.110672861337662f,
  0.987682461738586f, 0.110298842191696f, 0.987766921520233f,
    0.109924763441086f,
  0.987851083278656f, 0.109550617635250f, 0.987934947013855f,
    0.109176412224770f,
  0.988018512725830f, 0.108802139759064f, 0.988101840019226f,
    0.108427800238132f,
  0.988184869289398f, 0.108053401112556f, 0.988267600536346f,
    0.107678934931755f,
  0.988350033760071f, 0.107304409146309f, 0.988432228565216f,
    0.106929816305637f,
  0.988514065742493f, 0.106555156409740f, 0.988595664501190f,
    0.106180444359779f,
  0.988676965236664f, 0.105805665254593f, 0.988757967948914f,
    0.105430819094181f,
  0.988838672637939f, 0.105055920779705f, 0.988919138908386f,
    0.104680955410004f,
  0.988999247550964f, 0.104305922985077f, 0.989079117774963f,
    0.103930838406086f,
  0.989158689975739f, 0.103555686771870f, 0.989237964153290f,
    0.103180475533009f,
  0.989316940307617f, 0.102805204689503f, 0.989395678043365f,
    0.102429874241352f,
  0.989474058151245f, 0.102054484188557f, 0.989552199840546f,
    0.101679034531116f,
  0.989630043506622f, 0.101303517818451f, 0.989707589149475f,
    0.100927948951721f,
  0.989784896373749f, 0.100552320480347f, 0.989861845970154f,
    0.100176624953747f,
  0.989938557147980f, 0.099800877273083f, 0.990014970302582f,
    0.099425069987774f,
  0.990091085433960f, 0.099049203097820f, 0.990166902542114f,
    0.098673284053802f,
  0.990242421627045f, 0.098297297954559f, 0.990317702293396f,
    0.097921259701252f,
  0.990392625331879f, 0.097545161843300f, 0.990467309951782f,
    0.097169004380703f,
  0.990541696548462f, 0.096792794764042f, 0.990615785121918f,
    0.096416525542736f,
  0.990689575672150f, 0.096040196716785f, 0.990763127803802f,
    0.095663815736771f,
  0.990836322307587f, 0.095287375152111f, 0.990909278392792f,
    0.094910882413387f,
  0.990981936454773f, 0.094534330070019f, 0.991054296493530f,
    0.094157725572586f,
  0.991126358509064f, 0.093781061470509f, 0.991198182106018f,
    0.093404345214367f,
  0.991269648075104f, 0.093027576804161f, 0.991340875625610f,
    0.092650748789310f,
  0.991411805152893f, 0.092273868620396f, 0.991482377052307f,
    0.091896936297417f,
  0.991552770137787f, 0.091519944369793f, 0.991622805595398f,
    0.091142900288105f,
  0.991692543029785f, 0.090765804052353f, 0.991762042045593f,
    0.090388655662537f,
  0.991831183433533f, 0.090011447668076f, 0.991900086402893f,
    0.089634194970131f,
  0.991968691349030f, 0.089256882667542f, 0.992036998271942f,
    0.088879525661469f,
  0.992105066776276f, 0.088502109050751f, 0.992172777652740f,
    0.088124647736549f,
  0.992240250110626f, 0.087747126817703f, 0.992307364940643f,
    0.087369553744793f,
  0.992374241352081f, 0.086991935968399f, 0.992440819740295f,
    0.086614266037941f,
  0.992507100105286f, 0.086236543953419f, 0.992573142051697f,
    0.085858769714832f,
  0.992638826370239f, 0.085480943322182f, 0.992704212665558f,
    0.085103072226048f,
  0.992769360542297f, 0.084725148975849f, 0.992834210395813f,
    0.084347173571587f,
  0.992898762226105f, 0.083969146013260f, 0.992963016033173f,
    0.083591073751450f,
  0.993026971817017f, 0.083212949335575f, 0.993090689182281f,
    0.082834780216217f,
  0.993154048919678f, 0.082456558942795f, 0.993217170238495f,
    0.082078292965889f,
  0.993279933929443f, 0.081699974834919f, 0.993342459201813f,
    0.081321612000465f,
  0.993404686450958f, 0.080943197011948f, 0.993466615676880f,
    0.080564737319946f,
  0.993528306484222f, 0.080186225473881f, 0.993589639663696f,
    0.079807676374912f,
  0.993650734424591f, 0.079429075121880f, 0.993711471557617f,
    0.079050421714783f,
  0.993771970272064f, 0.078671731054783f, 0.993832170963287f,
    0.078292988240719f,
  0.993892073631287f, 0.077914200723171f, 0.993951678276062f,
    0.077535368502140f,
  0.994010984897614f, 0.077156484127045f, 0.994070053100586f,
    0.076777562499046f,
  0.994128763675690f, 0.076398596167564f, 0.994187235832214f,
    0.076019577682018f,
  0.994245409965515f, 0.075640521943569f, 0.994303286075592f,
    0.075261414051056f,
  0.994360864162445f, 0.074882268905640f, 0.994418144226074f,
    0.074503071606159f,
  0.994475126266479f, 0.074123837053776f, 0.994531810283661f,
    0.073744557797909f,
  0.994588255882263f, 0.073365233838558f, 0.994644403457642f,
    0.072985872626305f,
  0.994700193405151f, 0.072606459259987f, 0.994755744934082f,
    0.072227008640766f,
  0.994810998439789f, 0.071847513318062f, 0.994865953922272f,
    0.071467980742455f,
  0.994920611381531f, 0.071088403463364f, 0.994975030422211f,
    0.070708781480789f,
  0.995029091835022f, 0.070329122245312f, 0.995082914829254f,
    0.069949418306351f,
  0.995136380195618f, 0.069569669663906f, 0.995189607143402f,
    0.069189883768559f,
  0.995242536067963f, 0.068810060620308f, 0.995295166969299f,
    0.068430192768574f,
  0.995347499847412f, 0.068050287663937f, 0.995399534702301f,
    0.067670337855816f,
  0.995451331138611f, 0.067290350794792f, 0.995502769947052f,
    0.066910326480865f,
  0.995553970336914f, 0.066530264914036f, 0.995604813098907f,
    0.066150158643723f,
  0.995655417442322f, 0.065770015120506f, 0.995705723762512f,
    0.065389834344387f,
  0.995755732059479f, 0.065009608864784f, 0.995805442333221f,
    0.064629353582859f,
  0.995854854583740f, 0.064249053597450f, 0.995904028415680f,
    0.063868723809719f,
  0.995952844619751f, 0.063488349318504f, 0.996001422405243f,
    0.063107937574387f,
  0.996049642562866f, 0.062727488577366f, 0.996097624301910f,
    0.062347009778023f,
  0.996145308017731f, 0.061966486275196f, 0.996192693710327f,
    0.061585929244757f,
  0.996239781379700f, 0.061205338686705f, 0.996286571025848f,
    0.060824707150459f,
  0.996333062648773f, 0.060444042086601f, 0.996379256248474f,
    0.060063343495131f,
  0.996425211429596f, 0.059682607650757f, 0.996470808982849f,
    0.059301838278770f,
  0.996516168117523f, 0.058921031653881f, 0.996561229228973f,
    0.058540191501379f,
  0.996605992317200f, 0.058159314095974f, 0.996650457382202f,
    0.057778406888247f,
  0.996694624423981f, 0.057397462427616f, 0.996738493442535f,
    0.057016488164663f,
  0.996782064437866f, 0.056635476648808f, 0.996825337409973f,
    0.056254431605339f,
  0.996868371963501f, 0.055873356759548f, 0.996911048889160f,
    0.055492244660854f,
  0.996953487396240f, 0.055111102759838f, 0.996995627880096f,
    0.054729927331209f,
  0.997037410736084f, 0.054348722100258f, 0.997078955173492f,
    0.053967483341694f,
  0.997120201587677f, 0.053586211055517f, 0.997161149978638f,
    0.053204908967018f,
  0.997201859951019f, 0.052823577076197f, 0.997242212295532f,
    0.052442211657763f,
  0.997282266616821f, 0.052060816437006f, 0.997322082519531f,
    0.051679391413927f,
  0.997361540794373f, 0.051297932863235f, 0.997400760650635f,
    0.050916448235512f,
  0.997439682483673f, 0.050534930080175f, 0.997478306293488f,
    0.050153385847807f,
  0.997516572475433f, 0.049771808087826f, 0.997554600238800f,
    0.049390204250813f,
  0.997592389583588f, 0.049008570611477f, 0.997629821300507f,
    0.048626907169819f,
  0.997666954994202f, 0.048245213925838f, 0.997703790664673f,
    0.047863494604826f,
  0.997740387916565f, 0.047481749206781f, 0.997776627540588f,
    0.047099970281124f,
  0.997812628746033f, 0.046718169003725f, 0.997848331928253f,
    0.046336337924004f,
  0.997883677482605f, 0.045954477041960f, 0.997918784618378f,
    0.045572593808174f,
  0.997953593730927f, 0.045190680772066f, 0.997988104820251f,
    0.044808741658926f,
  0.998022377490997f, 0.044426776468754f, 0.998056292533875f,
    0.044044785201550f,
  0.998089909553528f, 0.043662767857313f, 0.998123228549957f,
    0.043280724436045f,
  0.998156309127808f, 0.042898654937744f, 0.998189091682434f,
    0.042516563087702f,
  0.998221516609192f, 0.042134445160627f, 0.998253703117371f,
    0.041752301156521f,
  0.998285591602325f, 0.041370131075382f, 0.998317182064056f,
    0.040987938642502f,
  0.998348474502563f, 0.040605723857880f, 0.998379468917847f,
    0.040223482996225f,
  0.998410165309906f, 0.039841219782829f, 0.998440563678741f,
    0.039458930492401f,
  0.998470664024353f, 0.039076622575521f, 0.998500525951386f,
    0.038694288581610f,
  0.998530030250549f, 0.038311932235956f, 0.998559296131134f,
    0.037929553538561f,
  0.998588204383850f, 0.037547148764133f, 0.998616874217987f,
    0.037164725363255f,
  0.998645246028900f, 0.036782283335924f, 0.998673319816589f,
    0.036399815231562f,
  0.998701035976410f, 0.036017324775457f, 0.998728513717651f,
    0.035634815692902f,
  0.998755753040314f, 0.035252287983894f, 0.998782634735107f,
    0.034869734197855f,
  0.998809218406677f, 0.034487165510654f, 0.998835504055023f,
    0.034104570746422f,
  0.998861551284790f, 0.033721961081028f, 0.998887240886688f,
    0.033339329063892f,
  0.998912692070007f, 0.032956674695015f, 0.998937785625458f,
    0.032574005424976f,
  0.998962640762329f, 0.032191313803196f, 0.998987197875977f,
    0.031808607280254f,
  0.999011456966400f, 0.031425878405571f, 0.999035418033600f,
    0.031043132767081f,
  0.999059081077576f, 0.030660368502140f, 0.999082446098328f,
    0.030277585610747f,
  0.999105513095856f, 0.029894785955548f, 0.999128282070160f,
    0.029511967673898f,
  0.999150753021240f, 0.029129132628441f, 0.999172985553741f,
    0.028746278956532f,
  0.999194860458374f, 0.028363410383463f, 0.999216496944427f,
    0.027980525046587f,
  0.999237775802612f, 0.027597622945905f, 0.999258816242218f,
    0.027214704081416f,
  0.999279558658600f, 0.026831768453121f, 0.999299943447113f,
    0.026448817923665f,
  0.999320089817047f, 0.026065852493048f, 0.999339938163757f,
    0.025682870298624f,
  0.999359488487244f, 0.025299875065684f, 0.999378740787506f,
    0.024916863068938f,
  0.999397754669189f, 0.024533838033676f, 0.999416410923004f,
    0.024150796234608f,
  0.999434769153595f, 0.023767741397023f, 0.999452829360962f,
    0.023384673520923f,
  0.999470651149750f, 0.023001590743661f, 0.999488115310669f,
    0.022618494927883f,
  0.999505341053009f, 0.022235386073589f, 0.999522268772125f,
    0.021852264180779f,
  0.999538838863373f, 0.021469129249454f, 0.999555170536041f,
    0.021085981279612f,
  0.999571204185486f, 0.020702820271254f, 0.999586939811707f,
    0.020319648087025f,
  0.999602377414703f, 0.019936462864280f, 0.999617516994476f,
    0.019553268328309f,
  0.999632358551025f, 0.019170060753822f, 0.999646902084351f,
    0.018786842003465f,
  0.999661207199097f, 0.018403612077236f, 0.999675154685974f,
    0.018020370975137f,
  0.999688863754272f, 0.017637118697166f, 0.999702215194702f,
    0.017253857105970f,
  0.999715328216553f, 0.016870586201549f, 0.999728083610535f,
    0.016487304121256f,
  0.999740600585938f, 0.016104012727737f, 0.999752819538116f,
    0.015720712020993f,
  0.999764680862427f, 0.015337402001023f, 0.999776303768158f,
    0.014954082667828f,
  0.999787628650665f, 0.014570754021406f, 0.999798655509949f,
    0.014187417924404f,
  0.999809384346008f, 0.013804072514176f, 0.999819874763489f,
    0.013420719653368f,
  0.999830007553101f, 0.013037359341979f, 0.999839842319489f,
    0.012653990648687f,
  0.999849438667297f, 0.012270614504814f, 0.999858677387238f,
    0.011887230910361f,
  0.999867618083954f, 0.011503840796649f, 0.999876320362091f,
    0.011120444163680f,
  0.999884724617004f, 0.010737040080130f, 0.999892771244049f,
    0.010353630408645f,
  0.999900579452515f, 0.009970214217901f, 0.999908089637756f,
    0.009586792439222f,
  0.999915301799774f, 0.009203365072608f, 0.999922215938568f,
    0.008819932118058f,
  0.999928832054138f, 0.008436493575573f, 0.999935150146484f,
    0.008053051307797f,
  0.999941170215607f, 0.007669602986425f, 0.999946892261505f,
    0.007286150939763f,
  0.999952375888824f, 0.006902694236487f, 0.999957501888275f,
    0.006519233807921f,
  0.999962329864502f, 0.006135769188404f, 0.999966919422150f,
    0.005752300843596f,
  0.999971151351929f, 0.005368829704821f, 0.999975144863129f,
    0.004985354840755f,
  0.999978840351105f, 0.004601877182722f, 0.999982178211212f,
    0.004218397196382f,
  0.999985277652740f, 0.003834914416075f, 0.999988079071045f,
    0.003451429307461f,
  0.999990582466125f, 0.003067942336202f, 0.999992787837982f,
    0.002684453502297f,
  0.999994695186615f, 0.002300963038579f, 0.999996304512024f,
    0.001917471294291f,
  0.999997675418854f, 0.001533978385851f, 0.999998688697815f,
    0.001150484546088f,
  0.999999403953552f, 0.000766990066040f, 0.999999880790710f,
    0.000383495149435f,
  1.000000000000000f, 0.000000000000023f, 0.999999880790710f,
    -0.000383495149435f,
  0.999999403953552f, -0.000766990066040f, 0.999998688697815f,
    -0.001150484546088f,
  0.999997675418854f, -0.001533978385851f, 0.999996304512024f,
    -0.001917471294291f,
  0.999994695186615f, -0.002300963038579f, 0.999992787837982f,
    -0.002684453502297f,
  0.999990582466125f, -0.003067942336202f, 0.999988079071045f,
    -0.003451429307461f,
  0.999985277652740f, -0.003834914416075f, 0.999982178211212f,
    -0.004218397196382f,
  0.999978840351105f, -0.004601877182722f, 0.999975144863129f,
    -0.004985354840755f,
  0.999971151351929f, -0.005368829704821f, 0.999966919422150f,
    -0.005752300843596f,
  0.999962329864502f, -0.006135769188404f, 0.999957501888275f,
    -0.006519233807921f,
  0.999952375888824f, -0.006902694236487f, 0.999946892261505f,
    -0.007286150939763f,
  0.999941170215607f, -0.007669602986425f, 0.999935150146484f,
    -0.008053051307797f,
  0.999928832054138f, -0.008436493575573f, 0.999922215938568f,
    -0.008819932118058f,
  0.999915301799774f, -0.009203365072608f, 0.999908089637756f,
    -0.009586792439222f,
  0.999900579452515f, -0.009970214217901f, 0.999892771244049f,
    -0.010353630408645f,
  0.999884724617004f, -0.010737040080130f, 0.999876320362091f,
    -0.011120444163680f,
  0.999867618083954f, -0.011503840796649f, 0.999858677387238f,
    -0.011887230910361f,
  0.999849438667297f, -0.012270614504814f, 0.999839842319489f,
    -0.012653990648687f,
  0.999830007553101f, -0.013037359341979f, 0.999819874763489f,
    -0.013420719653368f,
  0.999809384346008f, -0.013804072514176f, 0.999798655509949f,
    -0.014187417924404f,
  0.999787628650665f, -0.014570754021406f, 0.999776303768158f,
    -0.014954082667828f,
  0.999764680862427f, -0.015337402001023f, 0.999752819538116f,
    -0.015720712020993f,
  0.999740600585938f, -0.016104012727737f, 0.999728083610535f,
    -0.016487304121256f,
  0.999715328216553f, -0.016870586201549f, 0.999702215194702f,
    -0.017253857105970f,
  0.999688863754272f, -0.017637118697166f, 0.999675154685974f,
    -0.018020370975137f,
  0.999661207199097f, -0.018403612077236f, 0.999646902084351f,
    -0.018786842003465f,
  0.999632358551025f, -0.019170060753822f, 0.999617516994476f,
    -0.019553268328309f,
  0.999602377414703f, -0.019936462864280f, 0.999586939811707f,
    -0.020319648087025f,
  0.999571204185486f, -0.020702820271254f, 0.999555170536041f,
    -0.021085981279612f,
  0.999538838863373f, -0.021469129249454f, 0.999522268772125f,
    -0.021852264180779f,
  0.999505341053009f, -0.022235386073589f, 0.999488115310669f,
    -0.022618494927883f,
  0.999470651149750f, -0.023001590743661f, 0.999452829360962f,
    -0.023384673520923f,
  0.999434769153595f, -0.023767741397023f, 0.999416410923004f,
    -0.024150796234608f,
  0.999397754669189f, -0.024533838033676f, 0.999378740787506f,
    -0.024916863068938f,
  0.999359488487244f, -0.025299875065684f, 0.999339938163757f,
    -0.025682870298624f,
  0.999320089817047f, -0.026065852493048f, 0.999299943447113f,
    -0.026448817923665f,
  0.999279558658600f, -0.026831768453121f, 0.999258816242218f,
    -0.027214704081416f,
  0.999237775802612f, -0.027597622945905f, 0.999216496944427f,
    -0.027980525046587f,
  0.999194860458374f, -0.028363410383463f, 0.999172985553741f,
    -0.028746278956532f,
  0.999150753021240f, -0.029129132628441f, 0.999128282070160f,
    -0.029511967673898f,
  0.999105513095856f, -0.029894785955548f, 0.999082446098328f,
    -0.030277585610747f,
  0.999059081077576f, -0.030660368502140f, 0.999035418033600f,
    -0.031043132767081f,
  0.999011456966400f, -0.031425878405571f, 0.998987197875977f,
    -0.031808607280254f,
  0.998962640762329f, -0.032191313803196f, 0.998937785625458f,
    -0.032574005424976f,
  0.998912692070007f, -0.032956674695015f, 0.998887240886688f,
    -0.033339329063892f,
  0.998861551284790f, -0.033721961081028f, 0.998835504055023f,
    -0.034104570746422f,
  0.998809218406677f, -0.034487165510654f, 0.998782634735107f,
    -0.034869734197855f,
  0.998755753040314f, -0.035252287983894f, 0.998728513717651f,
    -0.035634815692902f,
  0.998701035976410f, -0.036017324775457f, 0.998673319816589f,
    -0.036399815231562f,
  0.998645246028900f, -0.036782283335924f, 0.998616874217987f,
    -0.037164725363255f,
  0.998588204383850f, -0.037547148764133f, 0.998559296131134f,
    -0.037929553538561f,
  0.998530030250549f, -0.038311932235956f, 0.998500525951386f,
    -0.038694288581610f,
  0.998470664024353f, -0.039076622575521f, 0.998440563678741f,
    -0.039458930492401f,
  0.998410165309906f, -0.039841219782829f, 0.998379468917847f,
    -0.040223482996225f,
  0.998348474502563f, -0.040605723857880f, 0.998317182064056f,
    -0.040987938642502f,
  0.998285591602325f, -0.041370131075382f, 0.998253703117371f,
    -0.041752301156521f,
  0.998221516609192f, -0.042134445160627f, 0.998189091682434f,
    -0.042516563087702f,
  0.998156309127808f, -0.042898654937744f, 0.998123228549957f,
    -0.043280724436045f,
  0.998089909553528f, -0.043662767857313f, 0.998056292533875f,
    -0.044044785201550f,
  0.998022377490997f, -0.044426776468754f, 0.997988104820251f,
    -0.044808741658926f,
  0.997953593730927f, -0.045190680772066f, 0.997918784618378f,
    -0.045572593808174f,
  0.997883677482605f, -0.045954477041960f, 0.997848331928253f,
    -0.046336337924004f,
  0.997812628746033f, -0.046718169003725f, 0.997776627540588f,
    -0.047099970281124f,
  0.997740387916565f, -0.047481749206781f, 0.997703790664673f,
    -0.047863494604826f,
  0.997666954994202f, -0.048245213925838f, 0.997629821300507f,
    -0.048626907169819f,
  0.997592389583588f, -0.049008570611477f, 0.997554600238800f,
    -0.049390204250813f,
  0.997516572475433f, -0.049771808087826f, 0.997478306293488f,
    -0.050153385847807f,
  0.997439682483673f, -0.050534930080175f, 0.997400760650635f,
    -0.050916448235512f,
  0.997361540794373f, -0.051297932863235f, 0.997322082519531f,
    -0.051679391413927f,
  0.997282266616821f, -0.052060816437006f, 0.997242212295532f,
    -0.052442211657763f,
  0.997201859951019f, -0.052823577076197f, 0.997161149978638f,
    -0.053204908967018f,
  0.997120201587677f, -0.053586211055517f, 0.997078955173492f,
    -0.053967483341694f,
  0.997037410736084f, -0.054348722100258f, 0.996995627880096f,
    -0.054729927331209f,
  0.996953487396240f, -0.055111102759838f, 0.996911048889160f,
    -0.055492244660854f,
  0.996868371963501f, -0.055873356759548f, 0.996825337409973f,
    -0.056254431605339f,
  0.996782064437866f, -0.056635476648808f, 0.996738493442535f,
    -0.057016488164663f,
  0.996694624423981f, -0.057397462427616f, 0.996650457382202f,
    -0.057778406888247f,
  0.996605992317200f, -0.058159314095974f, 0.996561229228973f,
    -0.058540191501379f,
  0.996516168117523f, -0.058921031653881f, 0.996470808982849f,
    -0.059301838278770f,
  0.996425211429596f, -0.059682607650757f, 0.996379256248474f,
    -0.060063343495131f,
  0.996333062648773f, -0.060444042086601f, 0.996286571025848f,
    -0.060824707150459f,
  0.996239781379700f, -0.061205338686705f, 0.996192693710327f,
    -0.061585929244757f,
  0.996145308017731f, -0.061966486275196f, 0.996097624301910f,
    -0.062347009778023f,
  0.996049642562866f, -0.062727488577366f, 0.996001422405243f,
    -0.063107937574387f,
  0.995952844619751f, -0.063488349318504f, 0.995904028415680f,
    -0.063868723809719f,
  0.995854854583740f, -0.064249053597450f, 0.995805442333221f,
    -0.064629353582859f,
  0.995755732059479f, -0.065009608864784f, 0.995705723762512f,
    -0.065389834344387f,
  0.995655417442322f, -0.065770015120506f, 0.995604813098907f,
    -0.066150158643723f,
  0.995553970336914f, -0.066530264914036f, 0.995502769947052f,
    -0.066910326480865f,
  0.995451331138611f, -0.067290350794792f, 0.995399534702301f,
    -0.067670337855816f,
  0.995347499847412f, -0.068050287663937f, 0.995295166969299f,
    -0.068430192768574f,
  0.995242536067963f, -0.068810060620308f, 0.995189607143402f,
    -0.069189883768559f,
  0.995136380195618f, -0.069569669663906f, 0.995082914829254f,
    -0.069949418306351f,
  0.995029091835022f, -0.070329122245312f, 0.994975030422211f,
    -0.070708781480789f,
  0.994920611381531f, -0.071088403463364f, 0.994865953922272f,
    -0.071467980742455f,
  0.994810998439789f, -0.071847513318062f, 0.994755744934082f,
    -0.072227008640766f,
  0.994700193405151f, -0.072606459259987f, 0.994644403457642f,
    -0.072985872626305f,
  0.994588255882263f, -0.073365233838558f, 0.994531810283661f,
    -0.073744557797909f,
  0.994475126266479f, -0.074123837053776f, 0.994418144226074f,
    -0.074503071606159f,
  0.994360864162445f, -0.074882268905640f, 0.994303286075592f,
    -0.075261414051056f,
  0.994245409965515f, -0.075640521943569f, 0.994187235832214f,
    -0.076019577682018f,
  0.994128763675690f, -0.076398596167564f, 0.994070053100586f,
    -0.076777562499046f,
  0.994010984897614f, -0.077156484127045f, 0.993951678276062f,
    -0.077535368502140f,
  0.993892073631287f, -0.077914200723171f, 0.993832170963287f,
    -0.078292988240719f,
  0.993771970272064f, -0.078671731054783f, 0.993711471557617f,
    -0.079050421714783f,
  0.993650734424591f, -0.079429075121880f, 0.993589639663696f,
    -0.079807676374912f,
  0.993528306484222f, -0.080186225473881f, 0.993466615676880f,
    -0.080564737319946f,
  0.993404686450958f, -0.080943197011948f, 0.993342459201813f,
    -0.081321612000465f,
  0.993279933929443f, -0.081699974834919f, 0.993217170238495f,
    -0.082078292965889f,
  0.993154048919678f, -0.082456558942795f, 0.993090689182281f,
    -0.082834780216217f,
  0.993026971817017f, -0.083212949335575f, 0.992963016033173f,
    -0.083591073751450f,
  0.992898762226105f, -0.083969146013260f, 0.992834210395813f,
    -0.084347173571587f,
  0.992769360542297f, -0.084725148975849f, 0.992704212665558f,
    -0.085103072226048f,
  0.992638826370239f, -0.085480943322182f, 0.992573142051697f,
    -0.085858769714832f,
  0.992507100105286f, -0.086236543953419f, 0.992440819740295f,
    -0.086614266037941f,
  0.992374241352081f, -0.086991935968399f, 0.992307364940643f,
    -0.087369553744793f,
  0.992240250110626f, -0.087747126817703f, 0.992172777652740f,
    -0.088124647736549f,
  0.992105066776276f, -0.088502109050751f, 0.992036998271942f,
    -0.088879525661469f,
  0.991968691349030f, -0.089256882667542f, 0.991900086402893f,
    -0.089634194970131f,
  0.991831183433533f, -0.090011447668076f, 0.991762042045593f,
    -0.090388655662537f,
  0.991692543029785f, -0.090765804052353f, 0.991622805595398f,
    -0.091142900288105f,
  0.991552770137787f, -0.091519944369793f, 0.991482377052307f,
    -0.091896936297417f,
  0.991411805152893f, -0.092273868620396f, 0.991340875625610f,
    -0.092650748789310f,
  0.991269648075104f, -0.093027576804161f, 0.991198182106018f,
    -0.093404345214367f,
  0.991126358509064f, -0.093781061470509f, 0.991054296493530f,
    -0.094157725572586f,
  0.990981936454773f, -0.094534330070019f, 0.990909278392792f,
    -0.094910882413387f,
  0.990836322307587f, -0.095287375152111f, 0.990763127803802f,
    -0.095663815736771f,
  0.990689575672150f, -0.096040196716785f, 0.990615785121918f,
    -0.096416525542736f,
  0.990541696548462f, -0.096792794764042f, 0.990467309951782f,
    -0.097169004380703f,
  0.990392625331879f, -0.097545161843300f, 0.990317702293396f,
    -0.097921259701252f,
  0.990242421627045f, -0.098297297954559f, 0.990166902542114f,
    -0.098673284053802f,
  0.990091085433960f, -0.099049203097820f, 0.990014970302582f,
    -0.099425069987774f,
  0.989938557147980f, -0.099800877273083f, 0.989861845970154f,
    -0.100176624953747f,
  0.989784896373749f, -0.100552320480347f, 0.989707589149475f,
    -0.100927948951721f,
  0.989630043506622f, -0.101303517818451f, 0.989552199840546f,
    -0.101679034531116f,
  0.989474058151245f, -0.102054484188557f, 0.989395678043365f,
    -0.102429874241352f,
  0.989316940307617f, -0.102805204689503f, 0.989237964153290f,
    -0.103180475533009f,
  0.989158689975739f, -0.103555686771870f, 0.989079117774963f,
    -0.103930838406086f,
  0.988999247550964f, -0.104305922985077f, 0.988919138908386f,
    -0.104680955410004f,
  0.988838672637939f, -0.105055920779705f, 0.988757967948914f,
    -0.105430819094181f,
  0.988676965236664f, -0.105805665254593f, 0.988595664501190f,
    -0.106180444359779f,
  0.988514065742493f, -0.106555156409740f, 0.988432228565216f,
    -0.106929816305637f,
  0.988350033760071f, -0.107304409146309f, 0.988267600536346f,
    -0.107678934931755f,
  0.988184869289398f, -0.108053401112556f, 0.988101840019226f,
    -0.108427800238132f,
  0.988018512725830f, -0.108802139759064f, 0.987934947013855f,
    -0.109176412224770f,
  0.987851083278656f, -0.109550617635250f, 0.987766921520233f,
    -0.109924763441086f,
  0.987682461738586f, -0.110298842191696f, 0.987597703933716f,
    -0.110672861337662f,
  0.987512648105621f, -0.111046813428402f, 0.987427353858948f,
    -0.111420698463917f,
  0.987341761589050f, -0.111794516444206f, 0.987255871295929f,
    -0.112168267369270f,
  0.987169682979584f, -0.112541958689690f, 0.987083256244659f,
    -0.112915575504303f,
  0.986996471881866f, -0.113289132714272f, 0.986909449100494f,
    -0.113662622869015f,
  0.986822128295898f, -0.114036038517952f, 0.986734509468079f,
    -0.114409394562244f,
  0.986646652221680f, -0.114782683551311f, 0.986558437347412f,
    -0.115155905485153f,
  0.986469984054565f, -0.115529052913189f, 0.986381232738495f,
    -0.115902140736580f,
  0.986292183399200f, -0.116275154054165f, 0.986202836036682f,
    -0.116648100316525f,
  0.986113250255585f, -0.117020979523659f, 0.986023366451263f,
    -0.117393791675568f,
  0.985933184623718f, -0.117766529321671f, 0.985842704772949f,
    -0.118139199912548f,
  0.985751926898956f, -0.118511803448200f, 0.985660910606384f,
    -0.118884332478046f,
  0.985569596290588f, -0.119256794452667f, 0.985477983951569f,
    -0.119629189372063f,
  0.985386073589325f, -0.120001509785652f, 0.985293865203857f,
    -0.120373763144016f,
  0.985201418399811f, -0.120745941996574f, 0.985108673572540f,
    -0.121118053793907f,
  0.985015630722046f, -0.121490091085434f, 0.984922289848328f,
    -0.121862053871155f,
  0.984828710556030f, -0.122233949601650f, 0.984734773635864f,
    -0.122605770826340f,
  0.984640598297119f, -0.122977524995804f, 0.984546124935150f,
    -0.123349204659462f,
  0.984451413154602f, -0.123720809817314f, 0.984356343746185f,
    -0.124092340469360f,
  0.984261035919189f, -0.124463804066181f, 0.984165430068970f,
    -0.124835193157196f,
  0.984069526195526f, -0.125206500291824f, 0.983973383903503f,
    -0.125577747821808f,
  0.983876943588257f, -0.125948905944824f, 0.983780145645142f,
    -0.126320004463196f,
  0.983683168888092f, -0.126691013574600f, 0.983585834503174f,
    -0.127061963081360f,
  0.983488261699677f, -0.127432823181152f, 0.983390331268311f,
    -0.127803623676300f,
  0.983292162418365f, -0.128174334764481f, 0.983193755149841f,
    -0.128544986248016f,
  0.983094990253448f, -0.128915548324585f, 0.982995986938477f,
    -0.129286035895348f,
  0.982896685600281f, -0.129656463861465f, 0.982797086238861f,
    -0.130026802420616f,
  0.982697248458862f, -0.130397051572800f, 0.982597053050995f,
    -0.130767241120338f,
  0.982496619224548f, -0.131137356162071f, 0.982395887374878f,
    -0.131507381796837f,
  0.982294917106628f, -0.131877332925797f, 0.982193589210510f,
    -0.132247209548950f,
  0.982092022895813f, -0.132617011666298f, 0.981990158557892f,
    -0.132986739277840f,
  0.981888055801392f, -0.133356377482414f, 0.981785595417023f,
    -0.133725941181183f,
  0.981682896614075f, -0.134095430374146f, 0.981579899787903f,
    -0.134464830160141f,
  0.981476604938507f, -0.134834155440331f, 0.981373071670532f,
    -0.135203406214714f,
  0.981269240379334f, -0.135572582483292f, 0.981165111064911f,
    -0.135941669344902f,
  0.981060683727264f, -0.136310681700706f, 0.980956017971039f,
    -0.136679604649544f,
  0.980851054191589f, -0.137048453092575f, 0.980745792388916f,
    -0.137417227029800f,
  0.980640232563019f, -0.137785911560059f, 0.980534434318542f,
    -0.138154521584511f,
  0.980428338050842f, -0.138523042201996f, 0.980321943759918f,
    -0.138891488313675f,
  0.980215251445770f, -0.139259845018387f, 0.980108320713043f,
    -0.139628127217293f,
  0.980001091957092f, -0.139996320009232f, 0.979893565177917f,
    -0.140364438295364f,
  0.979785740375519f, -0.140732467174530f, 0.979677677154541f,
    -0.141100421547890f,
  0.979569315910339f, -0.141468286514282f, 0.979460656642914f,
    -0.141836062073708f,
  0.979351758956909f, -0.142203763127327f, 0.979242503643036f,
    -0.142571389675140f,
  0.979133009910584f, -0.142938911914825f, 0.979023277759552f,
    -0.143306359648705f,
  0.978913187980652f, -0.143673732876778f, 0.978802859783173f,
    -0.144041016697884f,
  0.978692233562469f, -0.144408211112022f, 0.978581368923187f,
    -0.144775316119194f,
  0.978470146656036f, -0.145142331719399f, 0.978358685970306f,
    -0.145509272813797f,
  0.978246986865997f, -0.145876124501228f, 0.978134930133820f,
    -0.146242901682854f,
  0.978022634983063f, -0.146609574556351f, 0.977910041809082f,
    -0.146976172924042f,
  0.977797150611877f, -0.147342681884766f, 0.977684020996094f,
    -0.147709101438522f,
  0.977570593357086f, -0.148075446486473f, 0.977456867694855f,
    -0.148441687226295f,
  0.977342903614044f, -0.148807853460312f, 0.977228581905365f,
    -0.149173930287361f,
  0.977114021778107f, -0.149539917707443f, 0.976999223232269f,
    -0.149905815720558f,
  0.976884067058563f, -0.150271624326706f, 0.976768672466278f,
    -0.150637343525887f,
  0.976653039455414f, -0.151002973318100f, 0.976537048816681f,
    -0.151368513703346f,
  0.976420819759369f, -0.151733979582787f, 0.976304292678833f,
    -0.152099341154099f,
  0.976187527179718f, -0.152464613318443f, 0.976070404052734f,
    -0.152829796075821f,
  0.975953042507172f, -0.153194904327393f, 0.975835442543030f,
    -0.153559908270836f,
  0.975717484951019f, -0.153924822807312f, 0.975599288940430f,
    -0.154289647936821f,
  0.975480854511261f, -0.154654383659363f, 0.975362062454224f,
    -0.155019029974937f,
  0.975243031978607f, -0.155383571982384f, 0.975123703479767f,
    -0.155748039484024f,
  0.975004136562347f, -0.156112402677536f, 0.974884271621704f,
    -0.156476691365242f,
  0.974764108657837f, -0.156840875744820f, 0.974643647670746f,
    -0.157204970717430f,
  0.974522948265076f, -0.157568961381912f, 0.974401950836182f,
    -0.157932877540588f,
  0.974280655384064f, -0.158296689391136f, 0.974159121513367f,
    -0.158660411834717f,
  0.974037289619446f, -0.159024044871330f, 0.973915159702301f,
    -0.159387573599815f,
  0.973792791366577f, -0.159751012921333f, 0.973670125007629f,
    -0.160114362835884f,
  0.973547160625458f, -0.160477623343468f, 0.973423957824707f,
    -0.160840779542923f,
  0.973300457000732f, -0.161203846335411f, 0.973176658153534f,
    -0.161566808819771f,
  0.973052620887756f, -0.161929681897163f, 0.972928285598755f,
    -0.162292465567589f,
  0.972803652286530f, -0.162655144929886f, 0.972678780555725f,
    -0.163017734885216f,
  0.972553610801697f, -0.163380220532417f, 0.972428143024445f,
    -0.163742616772652f,
  0.972302436828613f, -0.164104923605919f, 0.972176432609558f,
    -0.164467126131058f,
  0.972050130367279f, -0.164829224348068f, 0.971923589706421f,
    -0.165191248059273f,
  0.971796751022339f, -0.165553152561188f, 0.971669614315033f,
    -0.165914967656136f,
  0.971542239189148f, -0.166276678442955f, 0.971414566040039f,
    -0.166638299822807f,
  0.971286594867706f, -0.166999831795692f, 0.971158385276794f,
    -0.167361244559288f,
  0.971029877662659f, -0.167722567915916f, 0.970901072025299f,
    -0.168083801865578f,
  0.970772027969360f, -0.168444931507111f, 0.970642685890198f,
    -0.168805956840515f,
  0.970513105392456f, -0.169166877865791f, 0.970383226871490f,
    -0.169527709484100f,
  0.970253050327301f, -0.169888436794281f, 0.970122575759888f,
    -0.170249074697495f,
  0.969991862773895f, -0.170609608292580f, 0.969860911369324f,
    -0.170970037579536f,
  0.969729602336884f, -0.171330362558365f, 0.969598054885864f,
    -0.171690583229065f,
  0.969466269016266f, -0.172050714492798f, 0.969334125518799f,
    -0.172410741448402f,
  0.969201743602753f, -0.172770664095879f, 0.969069123268127f,
    -0.173130482435226f,
  0.968936204910278f, -0.173490211367607f, 0.968802988529205f,
    -0.173849821090698f,
  0.968669533729553f, -0.174209341406822f, 0.968535780906677f,
    -0.174568757414818f,
  0.968401730060577f, -0.174928069114685f, 0.968267440795898f,
    -0.175287276506424f,
  0.968132853507996f, -0.175646379590034f, 0.967997968196869f,
    -0.176005378365517f,
  0.967862844467163f, -0.176364272832870f, 0.967727422714233f,
    -0.176723077893257f,
  0.967591762542725f, -0.177081763744354f, 0.967455804347992f,
    -0.177440345287323f,
  0.967319548130035f, -0.177798837423325f, 0.967183053493500f,
    -0.178157210350037f,
  0.967046260833740f, -0.178515478968620f, 0.966909229755402f,
    -0.178873643279076f,
  0.966771900653839f, -0.179231703281403f, 0.966634273529053f,
    -0.179589673876762f,
  0.966496407985687f, -0.179947525262833f, 0.966358244419098f,
    -0.180305257439613f,
  0.966219842433929f, -0.180662900209427f, 0.966081082820892f,
    -0.181020438671112f,
  0.965942144393921f, -0.181377857923508f, 0.965802907943726f,
    -0.181735187768936f,
  0.965663373470306f, -0.182092398405075f, 0.965523540973663f,
    -0.182449504733086f,
  0.965383470058441f, -0.182806491851807f, 0.965243160724640f,
    -0.183163389563560f,
  0.965102493762970f, -0.183520168066025f, 0.964961588382721f,
    -0.183876842260361f,
  0.964820444583893f, -0.184233412146568f, 0.964679002761841f,
    -0.184589877724648f,
  0.964537262916565f, -0.184946224093437f, 0.964395284652710f,
    -0.185302466154099f,
  0.964253067970276f, -0.185658603906631f, 0.964110493659973f,
    -0.186014622449875f,
  0.963967680931091f, -0.186370536684990f, 0.963824629783630f,
    -0.186726331710815f,
  0.963681280612946f, -0.187082037329674f, 0.963537633419037f,
    -0.187437608838081f,
  0.963393747806549f, -0.187793090939522f, 0.963249564170837f,
    -0.188148453831673f,
  0.963105142116547f, -0.188503712415695f, 0.962960422039032f,
    -0.188858851790428f,
  0.962815403938293f, -0.189213871955872f, 0.962670147418976f,
    -0.189568802714348f,
  0.962524592876434f, -0.189923599362373f, 0.962378799915314f,
    -0.190278306603432f,
  0.962232708930969f, -0.190632879734039f, 0.962086379528046f,
    -0.190987363457680f,
  0.961939752101898f, -0.191341713070869f, 0.961792886257172f,
    -0.191695958375931f,
  0.961645722389221f, -0.192050099372864f, 0.961498260498047f,
    -0.192404121160507f,
  0.961350560188293f, -0.192758023738861f, 0.961202561855316f,
    -0.193111822009087f,
  0.961054325103760f, -0.193465501070023f, 0.960905790328979f,
    -0.193819075822830f,
  0.960757017135620f, -0.194172516465187f, 0.960607945919037f,
    -0.194525867700577f,
  0.960458636283875f, -0.194879084825516f, 0.960309028625488f,
    -0.195232197642326f,
  0.960159122943878f, -0.195585191249847f, 0.960008978843689f,
    -0.195938065648079f,
  0.959858596324921f, -0.196290835738182f, 0.959707856178284f,
    -0.196643486618996f,
  0.959556937217712f, -0.196996018290520f, 0.959405720233917f,
    -0.197348430752754f,
  0.959254205226898f, -0.197700738906860f, 0.959102451801300f,
    -0.198052927851677f,
  0.958950400352478f, -0.198404997587204f, 0.958798050880432f,
    -0.198756948113441f,
  0.958645522594452f, -0.199108779430389f, 0.958492636680603f,
    -0.199460506439209f,
  0.958339512348175f, -0.199812099337578f, 0.958186149597168f,
    -0.200163587927818f,
  0.958032488822937f, -0.200514942407608f, 0.957878530025482f,
    -0.200866192579269f,
  0.957724332809448f, -0.201217323541641f, 0.957569897174835f,
    -0.201568335294724f,
  0.957415163516998f, -0.201919227838516f, 0.957260131835938f,
    -0.202270001173019f,
  0.957104861736298f, -0.202620655298233f, 0.956949353218079f,
    -0.202971190214157f,
  0.956793546676636f, -0.203321605920792f, 0.956637442111969f,
    -0.203671902418137f,
  0.956481099128723f, -0.204022079706192f, 0.956324458122253f,
    -0.204372137784958f,
  0.956167578697205f, -0.204722076654434f, 0.956010460853577f,
    -0.205071896314621f,
  0.955853044986725f, -0.205421581864357f, 0.955695331096649f,
    -0.205771163105965f,
  0.955537378787994f, -0.206120610237122f, 0.955379128456116f,
    -0.206469938158989f,
  0.955220639705658f, -0.206819161772728f, 0.955061912536621f,
    -0.207168251276016f,
  0.954902827739716f, -0.207517206668854f, 0.954743564128876f,
    -0.207866057753563f,
  0.954584002494812f, -0.208214774727821f, 0.954424142837524f,
    -0.208563387393951f,
  0.954264044761658f, -0.208911851048470f, 0.954103708267212f,
    -0.209260210394859f,
  0.953943073749542f, -0.209608450531960f, 0.953782141208649f,
    -0.209956556558609f,
  0.953620970249176f, -0.210304543375969f, 0.953459560871124f,
    -0.210652396082878f,
  0.953297853469849f, -0.211000129580498f, 0.953135907649994f,
    -0.211347743868828f,
  0.952973663806915f, -0.211695238947868f, 0.952811121940613f,
    -0.212042599916458f,
  0.952648401260376f, -0.212389841675758f, 0.952485322952271f,
    -0.212736949324608f,
  0.952322065830231f, -0.213083937764168f, 0.952158451080322f,
    -0.213430806994438f,
  0.951994657516479f, -0.213777542114258f, 0.951830565929413f,
    -0.214124158024788f,
  0.951666176319122f, -0.214470639824867f, 0.951501548290253f,
    -0.214817002415657f,
  0.951336681842804f, -0.215163245797157f, 0.951171517372131f,
    -0.215509355068207f,
  0.951006054878235f, -0.215855330228806f, 0.950840353965759f,
    -0.216201186180115f,
  0.950674414634705f, -0.216546908020973f, 0.950508177280426f,
    -0.216892510652542f,
  0.950341701507568f, -0.217237979173660f, 0.950174987316132f,
    -0.217583328485489f,
  0.950007975101471f, -0.217928543686867f, 0.949840664863586f,
    -0.218273624777794f,
  0.949673116207123f, -0.218618586659431f, 0.949505329132080f,
    -0.218963414430618f,
  0.949337244033813f, -0.219308122992516f, 0.949168920516968f,
    -0.219652697443962f,
  0.949000298976898f, -0.219997137784958f, 0.948831439018250f,
    -0.220341444015503f,
  0.948662281036377f, -0.220685631036758f, 0.948492884635925f,
    -0.221029683947563f,
  0.948323249816895f, -0.221373617649078f, 0.948153316974640f,
    -0.221717402338982f,
  0.947983145713806f, -0.222061067819595f, 0.947812676429749f,
    -0.222404599189758f,
  0.947641968727112f, -0.222748011350632f, 0.947470963001251f,
    -0.223091274499893f,
  0.947299718856812f, -0.223434418439865f, 0.947128236293793f,
    -0.223777428269386f,
  0.946956455707550f, -0.224120303988457f, 0.946784436702728f,
    -0.224463045597076f,
  0.946612179279327f, -0.224805667996407f, 0.946439623832703f,
    -0.225148141384125f,
  0.946266770362854f, -0.225490495562553f, 0.946093678474426f,
    -0.225832715630531f,
  0.945920348167419f, -0.226174786686897f, 0.945746779441834f,
    -0.226516738533974f,
  0.945572853088379f, -0.226858556270599f, 0.945398747920990f,
    -0.227200239896774f,
  0.945224344730377f, -0.227541789412498f, 0.945049703121185f,
    -0.227883204817772f,
  0.944874763488770f, -0.228224486112595f, 0.944699645042419f,
    -0.228565633296967f,
  0.944524168968201f, -0.228906646370888f, 0.944348454475403f,
    -0.229247525334358f,
  0.944172501564026f, -0.229588270187378f, 0.943996310234070f,
    -0.229928880929947f,
  0.943819820880890f, -0.230269357562065f, 0.943643093109131f,
    -0.230609700083733f,
  0.943466067314148f, -0.230949893593788f, 0.943288803100586f,
    -0.231289967894554f,
  0.943111240863800f, -0.231629893183708f, 0.942933499813080f,
    -0.231969684362412f,
  0.942755401134491f, -0.232309341430664f, 0.942577123641968f,
    -0.232648864388466f,
  0.942398548126221f, -0.232988253235817f, 0.942219734191895f,
    -0.233327493071556f,
  0.942040622234344f, -0.233666598796844f, 0.941861271858215f,
    -0.234005570411682f,
  0.941681683063507f, -0.234344407916069f, 0.941501796245575f,
    -0.234683111310005f,
  0.941321671009064f, -0.235021665692329f, 0.941141307353973f,
    -0.235360085964203f,
  0.940960645675659f, -0.235698372125626f, 0.940779745578766f,
    -0.236036509275436f,
  0.940598547458649f, -0.236374512314796f, 0.940417110919952f,
    -0.236712381243706f,
  0.940235435962677f, -0.237050101161003f, 0.940053522586823f,
    -0.237387686967850f,
  0.939871311187744f, -0.237725138664246f, 0.939688861370087f,
    -0.238062441349030f,
  0.939506113529205f, -0.238399609923363f, 0.939323127269745f,
    -0.238736644387245f,
  0.939139902591705f, -0.239073529839516f, 0.938956379890442f,
    -0.239410281181335f,
  0.938772618770599f, -0.239746883511543f, 0.938588619232178f,
    -0.240083336830139f,
  0.938404381275177f, -0.240419670939446f, 0.938219845294952f,
    -0.240755841135979f,
  0.938035070896149f, -0.241091892123222f, 0.937849998474121f,
    -0.241427779197693f,
  0.937664687633514f, -0.241763532161713f, 0.937479138374329f,
    -0.242099151015282f,
  0.937293350696564f, -0.242434620857239f, 0.937107264995575f,
    -0.242769956588745f,
  0.936920940876007f, -0.243105143308640f, 0.936734318733215f,
    -0.243440181016922f,
  0.936547517776489f, -0.243775084614754f, 0.936360359191895f,
    -0.244109839200974f,
  0.936173021793365f, -0.244444444775581f, 0.935985386371613f,
    -0.244778916239738f,
  0.935797572135925f, -0.245113238692284f, 0.935609400272369f,
    -0.245447427034378f,
  0.935421049594879f, -0.245781451463699f, 0.935232400894165f,
    -0.246115356683731f,
  0.935043513774872f, -0.246449097990990f, 0.934854328632355f,
    -0.246782705187798f,
  0.934664964675903f, -0.247116148471832f, 0.934475243091583f,
    -0.247449472546577f,
  0.934285342693329f, -0.247782632708550f, 0.934095203876495f,
    -0.248115643858910f,
  0.933904767036438f, -0.248448520898819f, 0.933714091777802f,
    -0.248781248927116f,
  0.933523118495941f, -0.249113827943802f, 0.933331906795502f,
    -0.249446272850037f,
  0.933140456676483f, -0.249778553843498f, 0.932948768138886f,
    -0.250110685825348f,
  0.932756841182709f, -0.250442683696747f, 0.932564616203308f,
    -0.250774532556534f,
  0.932372152805328f, -0.251106232404709f, 0.932179391384125f,
    -0.251437783241272f,
  0.931986451148987f, -0.251769185066223f, 0.931793212890625f,
    -0.252100437879562f,
  0.931599736213684f, -0.252431541681290f, 0.931405961513519f,
    -0.252762526273727f,
  0.931211948394775f, -0.253093332052231f, 0.931017756462097f,
    -0.253423988819122f,
  0.930823206901550f, -0.253754496574402f, 0.930628478527069f,
    -0.254084855318069f,
  0.930433452129364f, -0.254415065050125f, 0.930238187313080f,
    -0.254745125770569f,
  0.930042684078217f, -0.255075037479401f, 0.929846942424774f,
    -0.255404800176620f,
  0.929650902748108f, -0.255734413862228f, 0.929454624652863f,
    -0.256063878536224f,
  0.929258108139038f, -0.256393194198608f, 0.929061353206635f,
    -0.256722360849380f,
  0.928864300251007f, -0.257051378488541f, 0.928667008876801f,
    -0.257380217313766f,
  0.928469479084015f, -0.257708936929703f, 0.928271710872650f,
    -0.258037507534027f,
  0.928073644638062f, -0.258365899324417f, 0.927875399589539f,
    -0.258694142103195f,
  0.927676856517792f, -0.259022265672684f, 0.927478015422821f,
    -0.259350210428238f,
  0.927278995513916f, -0.259678006172180f, 0.927079677581787f,
    -0.260005623102188f,
  0.926880121231079f, -0.260333120822906f, 0.926680326461792f,
    -0.260660469532013f,
  0.926480293273926f, -0.260987639427185f, 0.926280021667480f,
    -0.261314690113068f,
  0.926079452037811f, -0.261641561985016f, 0.925878643989563f,
    -0.261968284845352f,
  0.925677597522736f, -0.262294828891754f, 0.925476312637329f,
    -0.262621253728867f,
  0.925274729728699f, -0.262947499752045f, 0.925072908401489f,
    -0.263273626565933f,
  0.924870908260345f, -0.263599574565887f, 0.924668610095978f,
    -0.263925373554230f,
  0.924466013908386f, -0.264250993728638f, 0.924263238906860f,
    -0.264576494693756f,
  0.924060165882111f, -0.264901816844940f, 0.923856854438782f,
    -0.265226989984512f,
  0.923653304576874f, -0.265552014112473f, 0.923449516296387f,
    -0.265876859426498f,
  0.923245489597321f, -0.266201555728912f, 0.923041164875031f,
    -0.266526103019714f,
  0.922836601734161f, -0.266850501298904f, 0.922631800174713f,
    -0.267174720764160f,
  0.922426760196686f, -0.267498821020126f, 0.922221481800079f,
    -0.267822742462158f,
  0.922015964984894f, -0.268146485090256f, 0.921810150146484f,
    -0.268470078706741f,
  0.921604096889496f, -0.268793523311615f, 0.921397805213928f,
    -0.269116818904877f,
  0.921191275119781f, -0.269439965486526f, 0.920984506607056f,
    -0.269762933254242f,
  0.920777499675751f, -0.270085722208023f, 0.920570194721222f,
    -0.270408391952515f,
  0.920362710952759f, -0.270730882883072f, 0.920154929161072f,
    -0.271053224802017f,
  0.919946908950806f, -0.271375387907028f, 0.919738650321960f,
    -0.271697402000427f,
  0.919530093669891f, -0.272019267082214f, 0.919321358203888f,
    -0.272340953350067f,
  0.919112324714661f, -0.272662490606308f, 0.918903112411499f,
    -0.272983878850937f,
  0.918693602085114f, -0.273305088281631f, 0.918483853340149f,
    -0.273626148700714f,
  0.918273866176605f, -0.273947030305862f, 0.918063640594482f,
    -0.274267762899399f,
  0.917853116989136f, -0.274588316679001f, 0.917642414569855f,
    -0.274908751249313f,
  0.917431414127350f, -0.275228977203369f, 0.917220234870911f,
    -0.275549083948135f,
  0.917008757591248f, -0.275868982076645f, 0.916797041893005f,
    -0.276188760995865f,
  0.916585087776184f, -0.276508361101151f, 0.916372895240784f,
    -0.276827782392502f,
  0.916160404682159f, -0.277147054672241f, 0.915947735309601f,
    -0.277466177940369f,
  0.915734827518463f, -0.277785122394562f, 0.915521621704102f,
    -0.278103888034821f,
  0.915308177471161f, -0.278422504663467f, 0.915094554424286f,
    -0.278740972280502f,
  0.914880633354187f, -0.279059261083603f, 0.914666473865509f,
    -0.279377400875092f,
  0.914452075958252f, -0.279695361852646f, 0.914237439632416f,
    -0.280013144016266f,
  0.914022505283356f, -0.280330777168274f, 0.913807392120361f,
    -0.280648261308670f,
  0.913592040538788f, -0.280965566635132f, 0.913376390933990f,
    -0.281282693147659f,
  0.913160502910614f, -0.281599670648575f, 0.912944436073303f,
    -0.281916469335556f,
  0.912728071212769f, -0.282233119010925f, 0.912511467933655f,
    -0.282549589872360f,
  0.912294626235962f, -0.282865911722183f, 0.912077546119690f,
    -0.283182054758072f,
  0.911860227584839f, -0.283498018980026f, 0.911642670631409f,
    -0.283813834190369f,
  0.911424875259399f, -0.284129470586777f, 0.911206841468811f,
    -0.284444957971573f,
  0.910988569259644f, -0.284760266542435f, 0.910769999027252f,
    -0.285075396299362f,
  0.910551249980927f, -0.285390377044678f, 0.910332262516022f,
    -0.285705178976059f,
  0.910112977027893f, -0.286019802093506f, 0.909893512725830f,
    -0.286334276199341f,
  0.909673750400543f, -0.286648571491241f, 0.909453809261322f,
    -0.286962717771530f,
  0.909233570098877f, -0.287276685237885f, 0.909013092517853f,
    -0.287590473890305f,
  0.908792436122894f, -0.287904083728790f, 0.908571481704712f,
    -0.288217544555664f,
  0.908350288867950f, -0.288530826568604f, 0.908128857612610f,
    -0.288843959569931f,
  0.907907187938690f, -0.289156883955002f, 0.907685279846191f,
    -0.289469659328461f,
  0.907463192939758f, -0.289782285690308f, 0.907240808010101f,
    -0.290094703435898f,
  0.907018184661865f, -0.290406972169876f, 0.906795322895050f,
    -0.290719062089920f,
  0.906572222709656f, -0.291031002998352f, 0.906348884105682f,
    -0.291342735290527f,
  0.906125307083130f, -0.291654318571091f, 0.905901491641998f,
    -0.291965723037720f,
  0.905677437782288f, -0.292276978492737f, 0.905453145503998f,
    -0.292588025331497f,
  0.905228614807129f, -0.292898923158646f, 0.905003845691681f,
    -0.293209642171860f,
  0.904778838157654f, -0.293520182371140f, 0.904553592205048f,
    -0.293830573558807f,
  0.904328107833862f, -0.294140785932541f, 0.904102385044098f,
    -0.294450789690018f,
  0.903876423835754f, -0.294760644435883f, 0.903650224208832f,
    -0.295070350170136f,
  0.903423786163330f, -0.295379847288132f, 0.903197109699249f,
    -0.295689195394516f,
  0.902970194816589f, -0.295998334884644f, 0.902743041515350f,
    -0.296307325363159f,
  0.902515649795532f, -0.296616137027740f, 0.902288019657135f,
    -0.296924799680710f,
  0.902060210704803f, -0.297233253717422f, 0.901832103729248f,
    -0.297541528940201f,
  0.901603758335114f, -0.297849655151367f, 0.901375174522400f,
    -0.298157602548599f,
  0.901146411895752f, -0.298465341329575f, 0.900917351245880f,
    -0.298772931098938f,
  0.900688111782074f, -0.299080342054367f, 0.900458574295044f,
    -0.299387603998184f,
  0.900228857994080f, -0.299694657325745f, 0.899998843669891f,
    -0.300001531839371f,
  0.899768650531769f, -0.300308227539063f, 0.899538159370422f,
    -0.300614774227142f,
  0.899307489395142f, -0.300921112298965f, 0.899076581001282f,
    -0.301227301359177f,
  0.898845434188843f, -0.301533311605453f, 0.898614048957825f,
    -0.301839113235474f,
  0.898382425308228f, -0.302144765853882f, 0.898150563240051f,
    -0.302450239658356f,
  0.897918462753296f, -0.302755534648895f, 0.897686123847961f,
    -0.303060621023178f,
  0.897453546524048f, -0.303365558385849f, 0.897220790386200f,
    -0.303670316934586f,
  0.896987736225128f, -0.303974896669388f, 0.896754503250122f,
    -0.304279297590256f,
  0.896520972251892f, -0.304583519697189f, 0.896287262439728f,
    -0.304887533187866f,
  0.896053314208984f, -0.305191397666931f, 0.895819067955017f,
    -0.305495083332062f,
  0.895584642887115f, -0.305798590183258f, 0.895349979400635f,
    -0.306101888418198f,
  0.895115137100220f, -0.306405037641525f, 0.894879996776581f,
    -0.306708008050919f,
  0.894644618034363f, -0.307010769844055f, 0.894409060478210f,
    -0.307313382625580f,
  0.894173204898834f, -0.307615786790848f, 0.893937170505524f,
    -0.307918041944504f,
  0.893700897693634f, -0.308220088481903f, 0.893464326858521f,
    -0.308521956205368f,
  0.893227577209473f, -0.308823645114899f, 0.892990648746490f,
    -0.309125155210495f,
  0.892753422260284f, -0.309426486492157f, 0.892515957355499f,
    -0.309727638959885f,
  0.892278313636780f, -0.310028612613678f, 0.892040371894836f,
    -0.310329377651215f,
  0.891802251338959f, -0.310629993677139f, 0.891563892364502f,
    -0.310930401086807f,
  0.891325294971466f, -0.311230629682541f, 0.891086459159851f,
    -0.311530679464340f,
  0.890847444534302f, -0.311830550432205f, 0.890608131885529f,
    -0.312130242586136f,
  0.890368640422821f, -0.312429755926132f, 0.890128850936890f,
    -0.312729060649872f,
  0.889888882637024f, -0.313028186559677f, 0.889648675918579f,
    -0.313327133655548f,
  0.889408230781555f, -0.313625901937485f, 0.889167606830597f,
    -0.313924491405487f,
  0.888926684856415f, -0.314222872257233f, 0.888685584068298f,
    -0.314521104097366f,
  0.888444244861603f, -0.314819127321243f, 0.888202667236328f,
    -0.315116971731186f,
  0.887960851192474f, -0.315414607524872f, 0.887718796730042f,
    -0.315712094306946f,
  0.887476563453674f, -0.316009372472763f, 0.887234091758728f,
    -0.316306471824646f,
  0.886991322040558f, -0.316603392362595f, 0.886748373508453f,
    -0.316900104284287f,
  0.886505246162415f, -0.317196637392044f, 0.886261820793152f,
    -0.317492991685867f,
  0.886018216609955f, -0.317789167165756f, 0.885774314403534f,
    -0.318085134029388f,
  0.885530233383179f, -0.318380922079086f, 0.885285973548889f,
    -0.318676531314850f,
  0.885041415691376f, -0.318971961736679f, 0.884796679019928f,
    -0.319267183542252f,
  0.884551644325256f, -0.319562226533890f, 0.884306430816650f,
    -0.319857090711594f,
  0.884061038494110f, -0.320151746273041f, 0.883815348148346f,
    -0.320446223020554f,
  0.883569478988647f, -0.320740520954132f, 0.883323311805725f,
    -0.321034610271454f,
  0.883076965808868f, -0.321328520774841f, 0.882830440998077f,
    -0.321622252464294f,
  0.882583618164063f, -0.321915775537491f, 0.882336616516113f,
    -0.322209119796753f,
  0.882089376449585f, -0.322502255439758f, 0.881841897964478f,
    -0.322795242071152f,
  0.881594181060791f, -0.323088020086288f, 0.881346285343170f,
    -0.323380589485168f,
  0.881098151206970f, -0.323672980070114f, 0.880849778652191f,
    -0.323965191841125f,
  0.880601167678833f, -0.324257194995880f, 0.880352377891541f,
    -0.324549019336700f,
  0.880103349685669f, -0.324840664863586f, 0.879854083061218f,
    -0.325132101774216f,
  0.879604578018188f, -0.325423330068588f, 0.879354894161224f,
    -0.325714409351349f,
  0.879104971885681f, -0.326005280017853f, 0.878854811191559f,
    -0.326295942068100f,
  0.878604412078857f, -0.326586425304413f, 0.878353834152222f,
    -0.326876699924469f,
  0.878103017807007f, -0.327166795730591f, 0.877851963043213f,
    -0.327456712722778f,
  0.877600669860840f, -0.327746421098709f, 0.877349197864532f,
    -0.328035950660706f,
  0.877097487449646f, -0.328325271606445f, 0.876845538616180f,
    -0.328614413738251f,
  0.876593410968781f, -0.328903347253799f, 0.876341044902802f,
    -0.329192101955414f,
  0.876088440418243f, -0.329480648040771f, 0.875835597515106f,
    -0.329769015312195f,
  0.875582575798035f, -0.330057173967361f, 0.875329315662384f,
    -0.330345153808594f,
  0.875075817108154f, -0.330632925033569f, 0.874822139739990f,
    -0.330920487642288f,
  0.874568223953247f, -0.331207901239395f, 0.874314069747925f,
    -0.331495076417923f,
  0.874059677124023f, -0.331782072782516f, 0.873805105686188f,
    -0.332068890333176f,
  0.873550295829773f, -0.332355499267578f, 0.873295307159424f,
    -0.332641899585724f,
  0.873040020465851f, -0.332928121089935f, 0.872784554958344f,
    -0.333214133977890f,
  0.872528910636902f, -0.333499968051910f, 0.872272968292236f,
    -0.333785593509674f,
  0.872016847133636f, -0.334071010351181f, 0.871760547161102f,
    -0.334356248378754f,
  0.871503949165344f, -0.334641307592392f, 0.871247172355652f,
    -0.334926128387451f,
  0.870990216732025f, -0.335210770368576f, 0.870733022689819f,
    -0.335495233535767f,
  0.870475590229034f, -0.335779488086700f, 0.870217919349670f,
    -0.336063534021378f,
  0.869960069656372f, -0.336347371339798f, 0.869701981544495f,
    -0.336631029844284f,
  0.869443655014038f, -0.336914509534836f, 0.869185149669647f,
    -0.337197750806808f,
  0.868926405906677f, -0.337480813264847f, 0.868667483329773f,
    -0.337763696908951f,
  0.868408262729645f, -0.338046342134476f, 0.868148922920227f,
    -0.338328808546066f,
  0.867889285087585f, -0.338611096143723f, 0.867629468441010f,
    -0.338893145322800f,
  0.867369413375854f, -0.339175015687943f, 0.867109179496765f,
    -0.339456677436829f,
  0.866848707199097f, -0.339738160371780f, 0.866588056087494f,
    -0.340019434690475f,
  0.866327106952667f, -0.340300500392914f, 0.866066038608551f,
    -0.340581357479095f,
  0.865804672241211f, -0.340862035751343f, 0.865543127059937f,
    -0.341142505407333f,
  0.865281403064728f, -0.341422766447067f, 0.865019381046295f,
    -0.341702848672867f,
  0.864757239818573f, -0.341982692480087f, 0.864494800567627f,
    -0.342262357473373f,
  0.864232182502747f, -0.342541843652725f, 0.863969385623932f,
    -0.342821091413498f,
  0.863706290721893f, -0.343100160360336f, 0.863443076610565f,
    -0.343379020690918f,
  0.863179564476013f, -0.343657672405243f, 0.862915873527527f,
    -0.343936115503311f,
  0.862652003765106f, -0.344214379787445f, 0.862387895584106f,
    -0.344492435455322f,
  0.862123548984528f, -0.344770282506943f, 0.861859023571014f,
    -0.345047920942307f,
  0.861594259738922f, -0.345325350761414f, 0.861329257488251f,
    -0.345602601766586f,
  0.861064076423645f, -0.345879614353180f, 0.860798716545105f,
    -0.346156448125839f,
  0.860533118247986f, -0.346433073282242f, 0.860267281532288f,
    -0.346709519624710f,
  0.860001266002655f, -0.346985727548599f, 0.859735012054443f,
    -0.347261756658554f,
  0.859468579292297f, -0.347537547349930f, 0.859201908111572f,
    -0.347813159227371f,
  0.858934998512268f, -0.348088562488556f, 0.858667910099030f,
    -0.348363757133484f,
  0.858400642871857f, -0.348638743162155f, 0.858133137226105f,
    -0.348913550376892f,
  0.857865393161774f, -0.349188119173050f, 0.857597470283508f,
    -0.349462509155273f,
  0.857329368591309f, -0.349736660718918f, 0.857060968875885f,
    -0.350010633468628f,
  0.856792449951172f, -0.350284397602081f, 0.856523692607880f,
    -0.350557953119278f,
  0.856254696846008f, -0.350831300020218f, 0.855985522270203f,
    -0.351104438304901f,
  0.855716109275818f, -0.351377367973328f, 0.855446517467499f,
    -0.351650089025497f,
  0.855176687240601f, -0.351922631263733f, 0.854906618595123f,
    -0.352194935083389f,
  0.854636430740356f, -0.352467030286789f, 0.854365944862366f,
    -0.352738946676254f,
  0.854095339775085f, -0.353010624647141f, 0.853824436664581f,
    -0.353282123804092f,
  0.853553414344788f, -0.353553384542465f, 0.853282094001770f,
    -0.353824466466904f,
  0.853010654449463f, -0.354095309972763f, 0.852738916873932f,
    -0.354365974664688f,
  0.852467060089111f, -0.354636400938034f, 0.852194905281067f,
    -0.354906648397446f,
  0.851922631263733f, -0.355176687240601f, 0.851650118827820f,
    -0.355446487665176f,
  0.851377367973328f, -0.355716109275818f, 0.851104438304901f,
    -0.355985492467880f,
  0.850831270217896f, -0.356254696846008f, 0.850557923316956f,
    -0.356523662805557f,
  0.850284397602081f, -0.356792420148849f, 0.850010633468628f,
    -0.357060998678207f,
  0.849736690521240f, -0.357329338788986f, 0.849462509155273f,
    -0.357597470283508f,
  0.849188148975372f, -0.357865422964096f, 0.848913550376892f,
    -0.358133137226105f,
  0.848638772964478f, -0.358400642871857f, 0.848363757133484f,
    -0.358667939901352f,
  0.848088562488556f, -0.358935028314590f, 0.847813189029694f,
    -0.359201908111572f,
  0.847537577152252f, -0.359468549489975f, 0.847261726856232f,
    -0.359735012054443f,
  0.846985757350922f, -0.360001266002655f, 0.846709489822388f,
    -0.360267281532288f,
  0.846433103084564f, -0.360533088445663f, 0.846156477928162f,
    -0.360798716545105f,
  0.845879614353180f, -0.361064106225967f, 0.845602571964264f,
    -0.361329287290573f,
  0.845325350761414f, -0.361594229936600f, 0.845047891139984f,
    -0.361858993768692f,
  0.844770252704620f, -0.362123548984528f, 0.844492435455322f,
    -0.362387865781784f,
  0.844214379787445f, -0.362651973962784f, 0.843936145305634f,
    -0.362915903329849f,
  0.843657672405243f, -0.363179564476013f, 0.843379020690918f,
    -0.363443046808243f,
  0.843100130558014f, -0.363706320524216f, 0.842821121215820f,
    -0.363969355821610f,
  0.842541813850403f, -0.364232182502747f, 0.842262387275696f,
    -0.364494800567627f,
  0.841982722282410f, -0.364757210016251f, 0.841702818870544f,
    -0.365019410848618f,
  0.841422796249390f, -0.365281373262405f, 0.841142535209656f,
    -0.365543156862259f,
  0.840862035751343f, -0.365804702043533f, 0.840581357479095f,
    -0.366066008806229f,
  0.840300500392914f, -0.366327136754990f, 0.840019404888153f,
    -0.366588026285172f,
  0.839738130569458f, -0.366848707199097f, 0.839456677436829f,
    -0.367109179496765f,
  0.839175045490265f, -0.367369443178177f, 0.838893175125122f,
    -0.367629468441010f,
  0.838611066341400f, -0.367889285087585f, 0.838328838348389f,
    -0.368148893117905f,
  0.838046371936798f, -0.368408292531967f, 0.837763667106628f,
    -0.368667453527451f,
  0.837480843067169f, -0.368926405906677f, 0.837197780609131f,
    -0.369185149669647f,
  0.836914479732513f, -0.369443655014038f, 0.836631059646606f,
    -0.369701951742172f,
  0.836347401142120f, -0.369960039854050f, 0.836063504219055f,
    -0.370217919349670f,
  0.835779488086700f, -0.370475560426712f, 0.835495233535767f,
    -0.370732992887497f,
  0.835210800170898f, -0.370990216732025f, 0.834926128387451f,
    -0.371247202157974f,
  0.834641277790070f, -0.371503978967667f, 0.834356248378754f,
    -0.371760547161102f,
  0.834071040153503f, -0.372016876935959f, 0.833785593509674f,
    -0.372272998094559f,
  0.833499968051910f, -0.372528880834579f, 0.833214163780212f,
    -0.372784584760666f,
  0.832928121089935f, -0.373040050268173f, 0.832641899585724f,
    -0.373295277357101f,
  0.832355499267578f, -0.373550295829773f, 0.832068860530853f,
    -0.373805105686188f,
  0.831782102584839f, -0.374059677124023f, 0.831495106220245f,
    -0.374314039945602f,
  0.831207871437073f, -0.374568194150925f, 0.830920517444611f,
    -0.374822109937668f,
  0.830632925033569f, -0.375075817108154f, 0.830345153808594f,
    -0.375329315662384f,
  0.830057144165039f, -0.375582575798035f, 0.829769015312195f,
    -0.375835597515106f,
  0.829480648040771f, -0.376088410615921f, 0.829192101955414f,
    -0.376341015100479f,
  0.828903317451477f, -0.376593410968781f, 0.828614413738251f,
    -0.376845568418503f,
  0.828325271606445f, -0.377097487449646f, 0.828035950660706f,
    -0.377349197864532f,
  0.827746450901031f, -0.377600699663162f, 0.827456712722778f,
    -0.377851963043213f,
  0.827166795730591f, -0.378102988004684f, 0.826876699924469f,
    -0.378353834152222f,
  0.826586425304413f, -0.378604412078857f, 0.826295912265778f,
    -0.378854811191559f,
  0.826005280017853f, -0.379104942083359f, 0.825714409351349f,
    -0.379354894161224f,
  0.825423359870911f, -0.379604607820511f, 0.825132071971893f,
    -0.379854083061218f,
  0.824840664863586f, -0.380103349685669f, 0.824549019336700f,
    -0.380352377891541f,
  0.824257194995880f, -0.380601197481155f, 0.823965191841125f,
    -0.380849778652191f,
  0.823673009872437f, -0.381098151206970f, 0.823380589485168f,
    -0.381346285343170f,
  0.823087990283966f, -0.381594210863113f, 0.822795212268829f,
    -0.381841897964478f,
  0.822502255439758f, -0.382089376449585f, 0.822209119796753f,
    -0.382336616516113f,
  0.821915745735168f, -0.382583618164063f, 0.821622252464294f,
    -0.382830440998077f,
  0.821328520774841f, -0.383076995611191f, 0.821034610271454f,
    -0.383323341608047f,
  0.820740520954132f, -0.383569449186325f, 0.820446193218231f,
    -0.383815348148346f,
  0.820151746273041f, -0.384061008691788f, 0.819857060909271f,
    -0.384306460618973f,
  0.819562196731567f, -0.384551674127579f, 0.819267153739929f,
    -0.384796649217606f,
  0.818971931934357f, -0.385041415691376f, 0.818676531314850f,
    -0.385285943746567f,
  0.818380951881409f, -0.385530263185501f, 0.818085134029388f,
    -0.385774344205856f,
  0.817789137363434f, -0.386018186807632f, 0.817493021488190f,
    -0.386261820793152f,
  0.817196667194366f, -0.386505216360092f, 0.816900074481964f,
    -0.386748403310776f,
  0.816603362560272f, -0.386991351842880f, 0.816306471824646f,
    -0.387234061956406f,
  0.816009342670441f, -0.387476563453674f, 0.815712094306946f,
    -0.387718826532364f,
  0.815414607524872f, -0.387960851192474f, 0.815116941928864f,
    -0.388202667236328f,
  0.814819097518921f, -0.388444244861603f, 0.814521074295044f,
    -0.388685584068298f,
  0.814222872257233f, -0.388926714658737f, 0.813924491405487f,
    -0.389167606830597f,
  0.813625931739807f, -0.389408260583878f, 0.813327133655548f,
    -0.389648675918579f,
  0.813028216362000f, -0.389888882637024f, 0.812729060649872f,
    -0.390128880739212f,
  0.812429726123810f, -0.390368610620499f, 0.812130272388458f,
    -0.390608131885529f,
  0.811830580234528f, -0.390847414731979f, 0.811530709266663f,
    -0.391086459159851f,
  0.811230659484863f, -0.391325294971466f, 0.810930430889130f,
    -0.391563892364502f,
  0.810629963874817f, -0.391802251338959f, 0.810329377651215f,
    -0.392040401697159f,
  0.810028612613678f, -0.392278283834457f, 0.809727668762207f,
    -0.392515957355499f,
  0.809426486492157f, -0.392753422260284f, 0.809125185012817f,
    -0.392990618944168f,
  0.808823645114899f, -0.393227607011795f, 0.808521986007690f,
    -0.393464356660843f,
  0.808220088481903f, -0.393700867891312f, 0.807918012142181f,
    -0.393937170505524f,
  0.807615816593170f, -0.394173204898834f, 0.807313382625580f,
    -0.394409030675888f,
  0.807010769844055f, -0.394644618034363f, 0.806707978248596f,
    -0.394879996776581f,
  0.806405067443848f, -0.395115107297897f, 0.806101918220520f,
    -0.395350009202957f,
  0.805798590183258f, -0.395584672689438f, 0.805495083332062f,
    -0.395819097757339f,
  0.805191397666931f, -0.396053284406662f, 0.804887533187866f,
    -0.396287262439728f,
  0.804583489894867f, -0.396520972251892f, 0.804279267787933f,
    -0.396754473447800f,
  0.803974866867065f, -0.396987736225128f, 0.803670346736908f,
    -0.397220760583878f,
  0.803365588188171f, -0.397453576326370f, 0.803060650825500f,
    -0.397686123847961f,
  0.802755534648895f, -0.397918462753296f, 0.802450239658356f,
    -0.398150533437729f,
  0.802144765853882f, -0.398382395505905f, 0.801839113235474f,
    -0.398614019155502f,
  0.801533281803131f, -0.398845434188843f, 0.801227271556854f,
    -0.399076581001282f,
  0.800921142101288f, -0.399307489395142f, 0.800614774227142f,
    -0.399538189172745f,
  0.800308227539063f, -0.399768620729446f, 0.800001561641693f,
    -0.399998843669891f,
  0.799694657325745f, -0.400228828191757f, 0.799387574195862f,
    -0.400458574295044f,
  0.799080371856689f, -0.400688081979752f, 0.798772931098938f,
    -0.400917351245880f,
  0.798465371131897f, -0.401146411895752f, 0.798157572746277f,
    -0.401375204324722f,
  0.797849655151367f, -0.401603758335114f, 0.797541558742523f,
    -0.401832103729248f,
  0.797233223915100f, -0.402060180902481f, 0.796924769878387f,
    -0.402288049459457f,
  0.796616137027740f, -0.402515679597855f, 0.796307325363159f,
    -0.402743041515350f,
  0.795998334884644f, -0.402970194816589f, 0.795689165592194f,
    -0.403197109699249f,
  0.795379877090454f, -0.403423786163330f, 0.795070350170136f,
    -0.403650224208832f,
  0.794760644435883f, -0.403876423835754f, 0.794450819492340f,
    -0.404102355241776f,
  0.794140756130219f, -0.404328078031540f, 0.793830573558807f,
    -0.404553562402725f,
  0.793520212173462f, -0.404778808355331f, 0.793209671974182f,
    -0.405003815889359f,
  0.792898952960968f, -0.405228585004807f, 0.792588055133820f,
    -0.405453115701675f,
  0.792276978492737f, -0.405677437782288f, 0.791965723037720f,
    -0.405901491641998f,
  0.791654348373413f, -0.406125307083130f, 0.791342735290527f,
    -0.406348884105682f,
  0.791031002998352f, -0.406572192907333f, 0.790719091892242f,
    -0.406795293092728f,
  0.790407001972198f, -0.407018154859543f, 0.790094733238220f,
    -0.407240778207779f,
  0.789782285690308f, -0.407463163137436f, 0.789469659328461f,
    -0.407685309648514f,
  0.789156913757324f, -0.407907217741013f, 0.788843929767609f,
    -0.408128857612610f,
  0.788530826568604f, -0.408350288867950f, 0.788217544555664f,
    -0.408571451902390f,
  0.787904083728790f, -0.408792406320572f, 0.787590444087982f,
    -0.409013092517853f,
  0.787276685237885f, -0.409233570098877f, 0.786962687969208f,
    -0.409453779459000f,
  0.786648571491241f, -0.409673750400543f, 0.786334276199341f,
    -0.409893482923508f,
  0.786019802093506f, -0.410112977027893f, 0.785705149173737f,
    -0.410332232713699f,
  0.785390377044678f, -0.410551249980927f, 0.785075426101685f,
    -0.410770028829575f,
  0.784760236740112f, -0.410988569259644f, 0.784444928169250f,
    -0.411206841468811f,
  0.784129500389099f, -0.411424905061722f, 0.783813834190369f,
    -0.411642700433731f,
  0.783498048782349f, -0.411860257387161f, 0.783182024955750f,
    -0.412077575922012f,
  0.782865881919861f, -0.412294656038284f, 0.782549619674683f,
    -0.412511497735977f,
  0.782233119010925f, -0.412728071212769f, 0.781916499137878f,
    -0.412944436073303f,
  0.781599700450897f, -0.413160532712936f, 0.781282722949982f,
    -0.413376390933990f,
  0.780965566635132f, -0.413592010736465f, 0.780648231506348f,
    -0.413807392120361f,
  0.780330777168274f, -0.414022535085678f, 0.780013144016266f,
    -0.414237409830093f,
  0.779695332050323f, -0.414452046155930f, 0.779377400875092f,
    -0.414666473865509f,
  0.779059290885925f, -0.414880603551865f, 0.778741002082825f,
    -0.415094524621964f,
  0.778422534465790f, -0.415308207273483f, 0.778103888034821f,
    -0.415521621704102f,
  0.777785122394562f, -0.415734797716141f, 0.777466177940369f,
    -0.415947735309601f,
  0.777147054672241f, -0.416160434484482f, 0.776827812194824f,
    -0.416372895240784f,
  0.776508331298828f, -0.416585087776184f, 0.776188731193542f,
    -0.416797041893005f,
  0.775869011878967f, -0.417008757591248f, 0.775549054145813f,
    -0.417220205068588f,
  0.775228977203369f, -0.417431443929672f, 0.774908721446991f,
    -0.417642414569855f,
  0.774588346481323f, -0.417853146791458f, 0.774267733097076f,
    -0.418063640594482f,
  0.773947000503540f, -0.418273866176605f, 0.773626148700714f,
    -0.418483853340149f,
  0.773305058479309f, -0.418693602085114f, 0.772983849048615f,
    -0.418903112411499f,
  0.772662520408630f, -0.419112354516983f, 0.772340953350067f,
    -0.419321358203888f,
  0.772019267082214f, -0.419530123472214f, 0.771697402000427f,
    -0.419738620519638f,
  0.771375417709351f, -0.419946908950806f, 0.771053194999695f,
    -0.420154929161072f,
  0.770730912685394f, -0.420362681150436f, 0.770408391952515f,
    -0.420570224523544f,
  0.770085752010345f, -0.420777499675751f, 0.769762933254242f,
    -0.420984506607056f,
  0.769439935684204f, -0.421191304922104f, 0.769116818904877f,
    -0.421397835016251f,
  0.768793523311615f, -0.421604126691818f, 0.768470108509064f,
    -0.421810150146484f,
  0.768146514892578f, -0.422015935182571f, 0.767822742462158f,
    -0.422221481800079f,
  0.767498791217804f, -0.422426789999008f, 0.767174720764160f,
    -0.422631829977036f,
  0.766850471496582f, -0.422836631536484f, 0.766526103019714f,
    -0.423041164875031f,
  0.766201555728912f, -0.423245459794998f, 0.765876889228821f,
    -0.423449516296387f,
  0.765551984310150f, -0.423653304576874f, 0.765226960182190f,
    -0.423856884241104f,
  0.764901816844940f, -0.424060165882111f, 0.764576494693756f,
    -0.424263238906860f,
  0.764250993728638f, -0.424466013908386f, 0.763925373554230f,
    -0.424668580293655f,
  0.763599574565887f, -0.424870878458023f, 0.763273596763611f,
    -0.425072938203812f,
  0.762947499752045f, -0.425274729728699f, 0.762621283531189f,
    -0.425476282835007f,
  0.762294828891754f, -0.425677597522736f, 0.761968255043030f,
    -0.425878643989563f,
  0.761641561985016f, -0.426079452037811f, 0.761314690113068f,
    -0.426279991865158f,
  0.760987639427185f, -0.426480293273926f, 0.760660469532013f,
    -0.426680356264114f,
  0.760333120822906f, -0.426880151033401f, 0.760005652904511f,
    -0.427079707384110f,
  0.759678006172180f, -0.427278995513916f, 0.759350180625916f,
    -0.427478045225143f,
  0.759022235870361f, -0.427676826715469f, 0.758694171905518f,
    -0.427875369787216f,
  0.758365929126740f, -0.428073674440384f, 0.758037507534027f,
    -0.428271710872650f,
  0.757708966732025f, -0.428469479084015f, 0.757380247116089f,
    -0.428667008876801f,
  0.757051348686218f, -0.428864300251007f, 0.756722390651703f,
    -0.429061323404312f,
  0.756393194198608f, -0.429258108139038f, 0.756063878536224f,
    -0.429454624652863f,
  0.755734443664551f, -0.429650902748108f, 0.755404829978943f,
    -0.429846942424774f,
  0.755075037479401f, -0.430042684078217f, 0.754745125770569f,
    -0.430238217115402f,
  0.754415094852448f, -0.430433481931686f, 0.754084885120392f,
    -0.430628478527069f,
  0.753754496574402f, -0.430823236703873f, 0.753423988819122f,
    -0.431017726659775f,
  0.753093302249908f, -0.431211978197098f, 0.752762496471405f,
    -0.431405961513519f,
  0.752431571483612f, -0.431599706411362f, 0.752100467681885f,
    -0.431793183088303f,
  0.751769185066223f, -0.431986421346664f, 0.751437783241272f,
    -0.432179391384125f,
  0.751106262207031f, -0.432372123003006f, 0.750774562358856f,
    -0.432564586400986f,
  0.750442683696747f, -0.432756811380386f, 0.750110685825348f,
    -0.432948768138886f,
  0.749778568744659f, -0.433140486478806f, 0.749446272850037f,
    -0.433331936597824f,
  0.749113857746124f, -0.433523118495941f, 0.748781263828278f,
    -0.433714061975479f,
  0.748448550701141f, -0.433904737234116f, 0.748115658760071f,
    -0.434095174074173f,
  0.747782647609711f, -0.434285342693329f, 0.747449457645416f,
    -0.434475272893906f,
  0.747116148471832f, -0.434664934873581f, 0.746782720088959f,
    -0.434854328632355f,
  0.746449112892151f, -0.435043483972549f, 0.746115326881409f,
    -0.435232400894165f,
  0.745781481266022f, -0.435421019792557f, 0.745447397232056f,
    -0.435609430074692f,
  0.745113253593445f, -0.435797542333603f, 0.744778931140900f,
    -0.435985416173935f,
  0.744444429874420f, -0.436173021793365f, 0.744109809398651f,
    -0.436360388994217f,
  0.743775069713593f, -0.436547487974167f, 0.743440151214600f,
    -0.436734348535538f,
  0.743105113506317f, -0.436920911073685f, 0.742769956588745f,
    -0.437107264995575f,
  0.742434620857239f, -0.437293320894241f, 0.742099165916443f,
    -0.437479138374329f,
  0.741763532161713f, -0.437664687633514f, 0.741427779197693f,
    -0.437849998474121f,
  0.741091907024384f, -0.438035041093826f, 0.740755856037140f,
    -0.438219845294952f,
  0.740419685840607f, -0.438404351472855f, 0.740083336830139f,
    -0.438588619232178f,
  0.739746868610382f, -0.438772648572922f, 0.739410281181335f,
    -0.438956409692764f,
  0.739073514938354f, -0.439139902591705f, 0.738736629486084f,
    -0.439323127269745f,
  0.738399624824524f, -0.439506113529205f, 0.738062441349030f,
    -0.439688831567764f,
  0.737725138664246f, -0.439871311187744f, 0.737387716770172f,
    -0.440053492784500f,
  0.737050116062164f, -0.440235435962677f, 0.736712396144867f,
    -0.440417140722275f,
  0.736374497413635f, -0.440598547458649f, 0.736036539077759f,
    -0.440779715776443f,
  0.735698342323303f, -0.440960645675659f, 0.735360085964203f,
    -0.441141277551651f,
  0.735021650791168f, -0.441321671009064f, 0.734683096408844f,
    -0.441501796245575f,
  0.734344422817230f, -0.441681683063507f, 0.734005570411682f,
    -0.441861271858215f,
  0.733666598796844f, -0.442040622234344f, 0.733327507972717f,
    -0.442219734191895f,
  0.732988238334656f, -0.442398548126221f, 0.732648849487305f,
    -0.442577123641968f,
  0.732309341430664f, -0.442755430936813f, 0.731969714164734f,
    -0.442933470010757f,
  0.731629908084869f, -0.443111270666122f, 0.731289982795715f,
    -0.443288803100586f,
  0.730949878692627f, -0.443466067314148f, 0.730609714984894f,
    -0.443643063306808f,
  0.730269372463226f, -0.443819820880890f, 0.729928910732269f,
    -0.443996280431747f,
  0.729588270187378f, -0.444172531366348f, 0.729247510433197f,
    -0.444348484277725f,
  0.728906631469727f, -0.444524168968201f, 0.728565633296967f,
    -0.444699615240097f,
  0.728224515914917f, -0.444874793291092f, 0.727883219718933f,
    -0.445049703121185f,
  0.727541804313660f, -0.445224374532700f, 0.727200269699097f,
    -0.445398747920990f,
  0.726858556270599f, -0.445572882890701f, 0.726516723632813f,
    -0.445746749639511f,
  0.726174771785736f, -0.445920348167419f, 0.725832700729370f,
    -0.446093708276749f,
  0.725490510463715f, -0.446266770362854f, 0.725148141384125f,
    -0.446439594030380f,
  0.724805653095245f, -0.446612149477005f, 0.724463045597076f,
    -0.446784436702728f,
  0.724120318889618f, -0.446956485509872f, 0.723777413368225f,
    -0.447128236293793f,
  0.723434448242188f, -0.447299748659134f, 0.723091304302216f,
    -0.447470992803574f,
  0.722747981548309f, -0.447641968727112f, 0.722404599189758f,
    -0.447812676429749f,
  0.722061097621918f, -0.447983115911484f, 0.721717417240143f,
    -0.448153316974640f,
  0.721373617649078f, -0.448323249816895f, 0.721029698848724f,
    -0.448492884635925f,
  0.720685660839081f, -0.448662281036377f, 0.720341444015503f,
    -0.448831409215927f,
  0.719997107982636f, -0.449000298976898f, 0.719652712345123f,
    -0.449168890714645f,
  0.719308137893677f, -0.449337244033813f, 0.718963444232941f,
    -0.449505299329758f,
  0.718618571758270f, -0.449673116207123f, 0.718273639678955f,
    -0.449840664863586f,
  0.717928528785706f, -0.450007945299149f, 0.717583298683167f,
    -0.450174957513809f,
  0.717238008975983f, -0.450341701507568f, 0.716892480850220f,
    -0.450508207082748f,
  0.716546893119812f, -0.450674414634705f, 0.716201186180115f,
    -0.450840383768082f,
  0.715855300426483f, -0.451006084680557f, 0.715509355068207f,
    -0.451171487569809f,
  0.715163230895996f, -0.451336652040482f, 0.714816987514496f,
    -0.451501548290253f,
  0.714470624923706f, -0.451666176319122f, 0.714124143123627f,
    -0.451830536127090f,
  0.713777542114258f, -0.451994657516479f, 0.713430821895599f,
    -0.452158480882645f,
  0.713083922863007f, -0.452322036027908f, 0.712736964225769f,
    -0.452485352754593f,
  0.712389826774597f, -0.452648371458054f, 0.712042629718781f,
    -0.452811151742935f,
  0.711695253849030f, -0.452973634004593f, 0.711347758769989f,
    -0.453135877847672f,
  0.711000144481659f, -0.453297853469849f, 0.710652410984039f,
    -0.453459560871124f,
  0.710304558277130f, -0.453621000051498f, 0.709956526756287f,
    -0.453782171010971f,
  0.709608435630798f, -0.453943043947220f, 0.709260225296021f,
    -0.454103678464890f,
  0.708911836147308f, -0.454264044761658f, 0.708563387393951f,
    -0.454424172639847f,
  0.708214759826660f, -0.454584002494812f, 0.707866072654724f,
    -0.454743564128876f,
  0.707517206668854f, -0.454902857542038f, 0.707168221473694f,
    -0.455061882734299f,
  0.706819176673889f, -0.455220639705658f, 0.706469953060150f,
    -0.455379128456116f,
  0.706120610237122f, -0.455537378787994f, 0.705771148204803f,
    -0.455695331096649f,
  0.705421566963196f, -0.455853015184402f, 0.705071866512299f,
    -0.456010431051254f,
  0.704722046852112f, -0.456167578697205f, 0.704372167587280f,
    -0.456324487924576f,
  0.704022109508514f, -0.456481099128723f, 0.703671932220459f,
    -0.456637442111969f,
  0.703321635723114f, -0.456793516874313f, 0.702971220016479f,
    -0.456949323415756f,
  0.702620685100555f, -0.457104891538620f, 0.702270030975342f,
    -0.457260161638260f,
  0.701919257640839f, -0.457415163516998f, 0.701568365097046f,
    -0.457569897174835f,
  0.701217353343964f, -0.457724362611771f, 0.700866222381592f,
    -0.457878559827805f,
  0.700514972209930f, -0.458032488822937f, 0.700163602828979f,
    -0.458186149597168f,
  0.699812114238739f, -0.458339542150497f, 0.699460506439209f,
    -0.458492636680603f,
  0.699108779430389f, -0.458645492792130f, 0.698756933212280f,
    -0.458798080682755f,
  0.698404967784882f, -0.458950400352478f, 0.698052942752838f,
    -0.459102421998978f,
  0.697700738906860f, -0.459254205226898f, 0.697348415851593f,
    -0.459405690431595f,
  0.696996033191681f, -0.459556937217712f, 0.696643471717834f,
    -0.459707885980606f,
  0.696290850639343f, -0.459858566522598f, 0.695938050746918f,
    -0.460008978843689f,
  0.695585191249847f, -0.460159152746201f, 0.695232212543488f,
    -0.460309028625488f,
  0.694879114627838f, -0.460458606481552f, 0.694525837898254f,
    -0.460607945919037f,
  0.694172501564026f, -0.460757017135620f, 0.693819046020508f,
    -0.460905820131302f,
  0.693465530872345f, -0.461054325103760f, 0.693111836910248f,
    -0.461202591657639f,
  0.692758023738861f, -0.461350560188293f, 0.692404091358185f,
    -0.461498260498047f,
  0.692050099372864f, -0.461645722389221f, 0.691695988178253f,
    -0.461792886257172f,
  0.691341698169708f, -0.461939752101898f, 0.690987348556519f,
    -0.462086379528046f,
  0.690632879734039f, -0.462232738733292f, 0.690278291702271f,
    -0.462378799915314f,
  0.689923584461212f, -0.462524622678757f, 0.689568817615509f,
    -0.462670147418976f,
  0.689213871955872f, -0.462815403938293f, 0.688858866691589f,
    -0.462960392236710f,
  0.688503682613373f, -0.463105112314224f, 0.688148438930511f,
    -0.463249564170837f,
  0.687793076038361f, -0.463393747806549f, 0.687437593936920f,
    -0.463537633419037f,
  0.687082052230835f, -0.463681250810623f, 0.686726331710815f,
    -0.463824629783630f,
  0.686370551586151f, -0.463967710733414f, 0.686014592647552f,
    -0.464110493659973f,
  0.685658574104309f, -0.464253038167953f, 0.685302436351776f,
    -0.464395314455032f,
  0.684946238994598f, -0.464537292718887f, 0.684589862823486f,
    -0.464679002761841f,
  0.684233427047729f, -0.464820444583893f, 0.683876872062683f,
    -0.464961618185043f,
  0.683520197868347f, -0.465102523565292f, 0.683163404464722f,
    -0.465243130922318f,
  0.682806491851807f, -0.465383470058441f, 0.682449519634247f,
    -0.465523540973663f,
  0.682092368602753f, -0.465663343667984f, 0.681735157966614f,
    -0.465802878141403f,
  0.681377887725830f, -0.465942144393921f, 0.681020438671112f,
    -0.466081112623215f,
  0.680662930011749f, -0.466219812631607f, 0.680305242538452f,
    -0.466358244419098f,
  0.679947495460510f, -0.466496407985687f, 0.679589688777924f,
    -0.466634273529053f,
  0.679231703281403f, -0.466771900653839f, 0.678873658180237f,
    -0.466909229755402f,
  0.678515493869781f, -0.467046260833740f, 0.678157210350037f,
    -0.467183053493500f,
  0.677798807621002f, -0.467319577932358f, 0.677440345287323f,
    -0.467455804347992f,
  0.677081763744354f, -0.467591762542725f, 0.676723062992096f,
    -0.467727422714233f,
  0.676364302635193f, -0.467862844467163f, 0.676005363464355f,
    -0.467997968196869f,
  0.675646364688873f, -0.468132823705673f, 0.675287246704102f,
    -0.468267410993576f,
  0.674928069114685f, -0.468401730060577f, 0.674568772315979f,
    -0.468535751104355f,
  0.674209356307983f, -0.468669503927231f, 0.673849821090698f,
    -0.468802988529205f,
  0.673490226268768f, -0.468936175107956f, 0.673130512237549f,
    -0.469069123268127f,
  0.672770678997040f, -0.469201773405075f, 0.672410726547241f,
    -0.469334155321121f,
  0.672050714492798f, -0.469466239213943f, 0.671690583229065f,
    -0.469598054885864f,
  0.671330332756042f, -0.469729602336884f, 0.670970022678375f,
    -0.469860881567001f,
  0.670609593391418f, -0.469991862773895f, 0.670249044895172f,
    -0.470122605562210f,
  0.669888436794281f, -0.470253020524979f, 0.669527709484100f,
    -0.470383197069168f,
  0.669166862964630f, -0.470513075590134f, 0.668805956840515f,
    -0.470642685890198f,
  0.668444931507111f, -0.470772027969360f, 0.668083786964417f,
    -0.470901101827621f,
  0.667722582817078f, -0.471029877662659f, 0.667361259460449f,
    -0.471158385276794f,
  0.666999816894531f, -0.471286594867706f, 0.666638314723969f,
    -0.471414536237717f,
  0.666276693344116f, -0.471542209386826f, 0.665914952754974f,
    -0.471669614315033f,
  0.665553152561188f, -0.471796721220016f, 0.665191233158112f,
    -0.471923559904099f,
  0.664829254150391f, -0.472050130367279f, 0.664467096328735f,
    -0.472176402807236f,
  0.664104938507080f, -0.472302407026291f, 0.663742601871490f,
    -0.472428143024445f,
  0.663380205631256f, -0.472553610801697f, 0.663017749786377f,
    -0.472678780555725f,
  0.662655174732208f, -0.472803652286530f, 0.662292480468750f,
    -0.472928285598755f,
  0.661929666996002f, -0.473052620887756f, 0.661566793918610f,
    -0.473176687955856f,
  0.661203861236572f, -0.473300457000732f, 0.660840749740601f,
    -0.473423957824707f,
  0.660477638244629f, -0.473547190427780f, 0.660114347934723f,
    -0.473670125007629f,
  0.659750998020172f, -0.473792791366577f, 0.659387588500977f,
    -0.473915189504623f,
  0.659024059772491f, -0.474037289619446f, 0.658660411834717f,
    -0.474159121513367f,
  0.658296704292297f, -0.474280685186386f, 0.657932877540588f,
    -0.474401950836182f,
  0.657568991184235f, -0.474522948265076f, 0.657204985618591f,
    -0.474643647670746f,
  0.656840860843658f, -0.474764078855515f, 0.656476676464081f,
    -0.474884241819382f,
  0.656112432479858f, -0.475004136562347f, 0.655748009681702f,
    -0.475123733282089f,
  0.655383586883545f, -0.475243031978607f, 0.655019044876099f,
    -0.475362062454224f,
  0.654654383659363f, -0.475480824708939f, 0.654289662837982f,
    -0.475599318742752f,
  0.653924822807312f, -0.475717514753342f, 0.653559923171997f,
    -0.475835442543030f,
  0.653194904327393f, -0.475953072309494f, 0.652829825878143f,
    -0.476070433855057f,
  0.652464628219604f, -0.476187497377396f, 0.652099311351776f,
    -0.476304292678833f,
  0.651733994483948f, -0.476420819759369f, 0.651368498802185f,
    -0.476537048816681f,
  0.651003003120422f, -0.476653009653091f, 0.650637328624725f,
    -0.476768702268600f,
  0.650271594524384f, -0.476884096860886f, 0.649905800819397f,
    -0.476999223232269f,
  0.649539887905121f, -0.477114051580429f, 0.649173915386200f,
    -0.477228611707687f,
  0.648807883262634f, -0.477342873811722f, 0.648441672325134f,
    -0.477456867694855f,
  0.648075461387634f, -0.477570593357086f, 0.647709131240845f,
    -0.477684020996094f,
  0.647342681884766f, -0.477797180414200f, 0.646976172924042f,
    -0.477910041809082f,
  0.646609604358673f, -0.478022634983063f, 0.646242916584015f,
    -0.478134930133820f,
  0.645876109600067f, -0.478246957063675f, 0.645509302616119f,
    -0.478358715772629f,
  0.645142316818237f, -0.478470176458359f, 0.644775331020355f,
    -0.478581339120865f,
  0.644408226013184f, -0.478692263364792f, 0.644041001796722f,
    -0.478802859783173f,
  0.643673717975616f, -0.478913217782974f, 0.643306374549866f,
    -0.479023247957230f,
  0.642938911914825f, -0.479133039712906f, 0.642571389675140f,
    -0.479242533445358f,
  0.642203748226166f, -0.479351729154587f, 0.641836047172546f,
    -0.479460656642914f,
  0.641468286514282f, -0.479569315910339f, 0.641100406646729f,
    -0.479677677154541f,
  0.640732467174530f, -0.479785770177841f, 0.640364408493042f,
    -0.479893565177917f,
  0.639996349811554f, -0.480001062154770f, 0.639628112316132f,
    -0.480108320713043f,
  0.639259815216064f, -0.480215251445770f, 0.638891458511353f,
    -0.480321943759918f,
  0.638523042201996f, -0.480428308248520f, 0.638154506683350f,
    -0.480534434318542f,
  0.637785911560059f, -0.480640232563019f, 0.637417197227478f,
    -0.480745792388916f,
  0.637048482894897f, -0.480851024389267f, 0.636679589748383f,
    -0.480956017971039f,
  0.636310696601868f, -0.481060713529587f, 0.635941684246063f,
    -0.481165111064911f,
  0.635572552680969f, -0.481269240379334f, 0.635203421115875f,
    -0.481373071670532f,
  0.634834170341492f, -0.481476634740829f, 0.634464859962463f,
    -0.481579899787903f,
  0.634095430374146f, -0.481682896614075f, 0.633725941181183f,
    -0.481785595417023f,
  0.633356392383575f, -0.481888025999069f, 0.632986724376678f,
    -0.481990188360214f,
  0.632616996765137f, -0.482092022895813f, 0.632247209548950f,
    -0.482193619012833f,
  0.631877362728119f, -0.482294887304306f, 0.631507396697998f,
    -0.482395917177200f,
  0.631137371063232f, -0.482496619224548f, 0.630767226219177f,
    -0.482597053050995f,
  0.630397081375122f, -0.482697218656540f, 0.630026817321777f,
    -0.482797086238861f,
  0.629656434059143f, -0.482896685600281f, 0.629286050796509f,
    -0.482995986938477f,
  0.628915548324585f, -0.483094990253448f, 0.628544986248016f,
    -0.483193725347519f,
  0.628174364566803f, -0.483292192220688f, 0.627803623676300f,
    -0.483390361070633f,
  0.627432823181152f, -0.483488231897354f, 0.627061963081360f,
    -0.483585834503174f,
  0.626691043376923f, -0.483683139085770f, 0.626320004463196f,
    -0.483780175447464f,
  0.625948905944824f, -0.483876913785934f, 0.625577747821808f,
    -0.483973383903503f,
  0.625206530094147f, -0.484069555997849f, 0.624835193157196f,
    -0.484165430068970f,
  0.624463796615601f, -0.484261035919189f, 0.624092340469360f,
    -0.484356373548508f,
  0.623720824718475f, -0.484451413154602f, 0.623349189758301f,
    -0.484546154737473f,
  0.622977554798126f, -0.484640628099442f, 0.622605800628662f,
    -0.484734803438187f,
  0.622233927249908f, -0.484828680753708f, 0.621862053871155f,
    -0.484922289848328f,
  0.621490061283112f, -0.485015630722046f, 0.621118068695068f,
    -0.485108673572540f,
  0.620745956897736f, -0.485201418399811f, 0.620373785495758f,
    -0.485293895006180f,
  0.620001494884491f, -0.485386073589325f, 0.619629204273224f,
    -0.485477954149246f,
  0.619256794452667f, -0.485569566488266f, 0.618884325027466f,
    -0.485660910606384f,
  0.618511795997620f, -0.485751956701279f, 0.618139207363129f,
    -0.485842704772949f,
  0.617766559123993f, -0.485933154821396f, 0.617393791675568f,
    -0.486023366451263f,
  0.617020964622498f, -0.486113250255585f, 0.616648077964783f,
    -0.486202865839005f,
  0.616275131702423f, -0.486292183399200f, 0.615902125835419f,
    -0.486381232738495f,
  0.615529060363770f, -0.486469984054565f, 0.615155875682831f,
    -0.486558437347412f,
  0.614782691001892f, -0.486646622419357f, 0.614409387111664f,
    -0.486734509468079f,
  0.614036023616791f, -0.486822128295898f, 0.613662600517273f,
    -0.486909449100494f,
  0.613289117813110f, -0.486996471881866f, 0.612915575504303f,
    -0.487083226442337f,
  0.612541973590851f, -0.487169682979584f, 0.612168252468109f,
    -0.487255871295929f,
  0.611794531345367f, -0.487341761589050f, 0.611420691013336f,
    -0.487427353858948f,
  0.611046791076660f, -0.487512677907944f, 0.610672831535339f,
    -0.487597703933716f,
  0.610298871994019f, -0.487682431936264f, 0.609924793243408f,
    -0.487766891717911f,
  0.609550595283508f, -0.487851053476334f, 0.609176397323608f,
    -0.487934947013855f,
  0.608802139759064f, -0.488018542528152f, 0.608427822589874f,
    -0.488101840019226f,
  0.608053386211395f, -0.488184869289398f, 0.607678949832916f,
    -0.488267600536346f,
  0.607304394245148f, -0.488350033760071f, 0.606929838657379f,
    -0.488432198762894f,
  0.606555163860321f, -0.488514065742493f, 0.606180429458618f,
    -0.488595664501190f,
  0.605805635452271f, -0.488676935434341f, 0.605430841445923f,
    -0.488757967948914f,
  0.605055928230286f, -0.488838672637939f, 0.604680955410004f,
    -0.488919109106064f,
  0.604305922985077f, -0.488999247550964f, 0.603930830955505f,
    -0.489079117774963f,
  0.603555679321289f, -0.489158689975739f, 0.603180468082428f,
    -0.489237964153290f,
  0.602805197238922f, -0.489316970109940f, 0.602429866790771f,
    -0.489395678043365f,
  0.602054476737976f, -0.489474087953568f, 0.601679027080536f,
    -0.489552229642868f,
  0.601303517818451f, -0.489630073308945f, 0.600927948951721f,
    -0.489707618951797f,
  0.600552320480347f, -0.489784896373749f, 0.600176632404327f,
    -0.489861875772476f,
  0.599800884723663f, -0.489938557147980f, 0.599425077438354f,
    -0.490014940500259f,
  0.599049210548401f, -0.490091055631638f, 0.598673284053802f,
    -0.490166902542114f,
  0.598297297954559f, -0.490242421627045f, 0.597921252250671f,
    -0.490317672491074f,
  0.597545146942139f, -0.490392625331879f, 0.597168982028961f,
    -0.490467309951782f,
  0.596792817115784f, -0.490541696548462f, 0.596416532993317f,
    -0.490615785121918f,
  0.596040189266205f, -0.490689605474472f, 0.595663845539093f,
    -0.490763127803802f,
  0.595287382602692f, -0.490836352109909f, 0.594910860061646f,
    -0.490909278392792f,
  0.594534337520599f, -0.490981936454773f, 0.594157755374908f,
    -0.491054296493530f,
  0.593781054019928f, -0.491126358509064f, 0.593404352664948f,
    -0.491198152303696f,
  0.593027591705322f, -0.491269648075104f, 0.592650771141052f,
    -0.491340845823288f,
  0.592273890972137f, -0.491411775350571f, 0.591896951198578f,
    -0.491482406854630f,
  0.591519951820374f, -0.491552740335464f, 0.591142892837524f,
    -0.491622805595398f,
  0.590765833854675f, -0.491692543029785f, 0.590388655662537f,
    -0.491762012243271f,
  0.590011477470398f, -0.491831213235855f, 0.589634180068970f,
    -0.491900116205215f,
  0.589256882667542f, -0.491968721151352f, 0.588879525661469f,
    -0.492037028074265f,
  0.588502109050751f, -0.492105036973953f, 0.588124632835388f,
    -0.492172777652740f,
  0.587747097015381f, -0.492240220308304f, 0.587369561195374f,
    -0.492307394742966f,
  0.586991965770721f, -0.492374241352081f, 0.586614251136780f,
    -0.492440819740295f,
  0.586236536502838f, -0.492507129907608f, 0.585858762264252f,
    -0.492573112249374f,
  0.585480928421021f, -0.492638826370239f, 0.585103094577789f,
    -0.492704242467880f,
  0.584725141525269f, -0.492769360542297f, 0.584347188472748f,
    -0.492834210395813f,
  0.583969175815582f, -0.492898762226105f, 0.583591103553772f,
    -0.492963016033173f,
  0.583212971687317f, -0.493026971817017f, 0.582834780216217f,
    -0.493090659379959f,
  0.582456588745117f, -0.493154048919678f, 0.582078278064728f,
    -0.493217140436172f,
  0.581699967384338f, -0.493279963731766f, 0.581321597099304f,
    -0.493342459201813f,
  0.580943167209625f, -0.493404686450958f, 0.580564737319946f,
    -0.493466645479202f,
  0.580186247825623f, -0.493528276681900f, 0.579807698726654f,
    -0.493589639663696f,
  0.579429090023041f, -0.493650704622269f, 0.579050421714783f,
    -0.493711471557617f,
  0.578671753406525f, -0.493771970272064f, 0.578292965888977f,
    -0.493832170963287f,
  0.577914178371429f, -0.493892073631287f, 0.577535390853882f,
    -0.493951678276062f,
  0.577156484127045f, -0.494011014699936f, 0.576777577400208f,
    -0.494070053100586f,
  0.576398611068726f, -0.494128793478012f, 0.576019585132599f,
    -0.494187235832214f,
  0.575640499591827f, -0.494245409965515f, 0.575261414051056f,
    -0.494303256273270f,
  0.574882268905640f, -0.494360834360123f, 0.574503064155579f,
    -0.494418144226074f,
  0.574123859405518f, -0.494475126266479f, 0.573744535446167f,
    -0.494531840085983f,
  0.573365211486816f, -0.494588255882263f, 0.572985887527466f,
    -0.494644373655319f,
  0.572606444358826f, -0.494700223207474f, 0.572227001190186f,
    -0.494755744934082f,
  0.571847498416901f, -0.494810998439789f, 0.571467995643616f,
    -0.494865983724594f,
  0.571088373661041f, -0.494920641183853f, 0.570708811283112f,
    -0.494975030422211f,
  0.570329129695892f, -0.495029091835022f, 0.569949388504028f,
    -0.495082914829254f,
  0.569569647312164f, -0.495136409997940f, 0.569189906120300f,
    -0.495189607143402f,
  0.568810045719147f, -0.495242536067963f, 0.568430185317993f,
    -0.495295166969299f,
  0.568050265312195f, -0.495347499847412f, 0.567670345306396f,
    -0.495399564504623f,
  0.567290365695953f, -0.495451331138611f, 0.566910326480865f,
    -0.495502769947052f,
  0.566530287265778f, -0.495553970336914f, 0.566150128841400f,
    -0.495604842901230f,
  0.565770030021667f, -0.495655417442322f, 0.565389811992645f,
    -0.495705723762512f,
  0.565009593963623f, -0.495755732059479f, 0.564629375934601f,
    -0.495805442333221f,
  0.564249038696289f, -0.495854884386063f, 0.563868701457977f,
    -0.495903998613358f,
  0.563488364219666f, -0.495952844619751f, 0.563107967376709f,
    -0.496001392602921f,
  0.562727510929108f, -0.496049642562866f, 0.562346994876862f,
    -0.496097624301910f,
  0.561966478824615f, -0.496145308017731f, 0.561585903167725f,
    -0.496192663908005f,
  0.561205327510834f, -0.496239781379700f, 0.560824692249298f,
    -0.496286571025848f,
  0.560444056987762f, -0.496333062648773f, 0.560063362121582f,
    -0.496379286050797f,
  0.559682607650757f, -0.496425211429596f, 0.559301853179932f,
    -0.496470838785172f,
  0.558921039104462f, -0.496516168117523f, 0.558540165424347f,
    -0.496561229228973f,
  0.558159291744232f, -0.496605962514877f, 0.557778418064117f,
    -0.496650427579880f,
  0.557397484779358f, -0.496694594621658f, 0.557016491889954f,
    -0.496738493442535f,
  0.556635499000549f, -0.496782064437866f, 0.556254446506500f,
    -0.496825367212296f,
  0.555873334407806f, -0.496868371963501f, 0.555492222309113f,
    -0.496911078691483f,
  0.555111110210419f, -0.496953487396240f, 0.554729938507080f,
    -0.496995598077774f,
  0.554348707199097f, -0.497037440538406f, 0.553967475891113f,
    -0.497078984975815f,
  0.553586184978485f, -0.497120231389999f, 0.553204894065857f,
    -0.497161179780960f,
  0.552823603153229f, -0.497201830148697f, 0.552442193031311f,
    -0.497242212295532f,
  0.552060842514038f, -0.497282296419144f, 0.551679372787476f,
    -0.497322082519531f,
  0.551297962665558f, -0.497361570596695f, 0.550916433334351f,
    -0.497400760650635f,
  0.550534904003143f, -0.497439652681351f, 0.550153374671936f,
    -0.497478276491165f,
  0.549771785736084f, -0.497516602277756f, 0.549390196800232f,
    -0.497554630041122f,
  0.549008548259735f, -0.497592359781265f, 0.548626899719238f,
    -0.497629791498184f,
  0.548245191574097f, -0.497666954994202f, 0.547863483428955f,
    -0.497703820466995f,
  0.547481775283813f, -0.497740387916565f, 0.547099947929382f,
    -0.497776657342911f,
  0.546718180179596f, -0.497812628746033f, 0.546336352825165f,
    -0.497848302125931f,
  0.545954465866089f, -0.497883707284927f, 0.545572578907013f,
    -0.497918814420700f,
  0.545190691947937f, -0.497953623533249f, 0.544808745384216f,
    -0.497988134622574f,
  0.544426798820496f, -0.498022347688675f, 0.544044792652130f,
    -0.498056292533875f,
  0.543662786483765f, -0.498089909553528f, 0.543280720710754f,
    -0.498123258352280f,
  0.542898654937744f, -0.498156309127808f, 0.542516589164734f,
    -0.498189061880112f,
  0.542134463787079f, -0.498221516609192f, 0.541752278804779f,
    -0.498253703117371f,
  0.541370153427124f, -0.498285561800003f, 0.540987968444824f,
    -0.498317152261734f,
  0.540605723857880f, -0.498348444700241f, 0.540223479270935f,
    -0.498379439115524f,
  0.539841234683990f, -0.498410135507584f, 0.539458930492401f,
    -0.498440563678741f,
  0.539076626300812f, -0.498470664024353f, 0.538694262504578f,
    -0.498500496149063f,
  0.538311958312988f, -0.498530030250549f, 0.537929534912109f,
    -0.498559266328812f,
  0.537547171115875f, -0.498588204383850f, 0.537164747714996f,
    -0.498616874217987f,
  0.536782264709473f, -0.498645216226578f, 0.536399841308594f,
    -0.498673290014267f,
  0.536017298698425f, -0.498701065778732f, 0.535634815692902f,
    -0.498728543519974f,
  0.535252273082733f, -0.498755723237991f, 0.534869730472565f,
    -0.498782604932785f,
  0.534487187862396f, -0.498809218406677f, 0.534104585647583f,
    -0.498835533857346f,
  0.533721983432770f, -0.498861521482468f, 0.533339321613312f,
    -0.498887240886688f,
  0.532956659793854f, -0.498912662267685f, 0.532573997974396f,
    -0.498937815427780f,
  0.532191336154938f, -0.498962640762329f, 0.531808614730835f,
    -0.498987197875977f,
  0.531425893306732f, -0.499011427164078f, 0.531043112277985f,
    -0.499035388231277f,
  0.530660390853882f, -0.499059051275253f, 0.530277609825134f,
    -0.499082416296005f,
  0.529894769191742f, -0.499105513095856f, 0.529511988162994f,
    -0.499128282070160f,
  0.529129147529602f, -0.499150782823563f, 0.528746306896210f,
    -0.499172955751419f,
  0.528363406658173f, -0.499194860458374f, 0.527980506420136f,
    -0.499216467142105f,
  0.527597606182098f, -0.499237775802612f, 0.527214705944061f,
    -0.499258816242218f,
  0.526831746101379f, -0.499279528856277f, 0.526448845863342f,
    -0.499299973249435f,
  0.526065826416016f, -0.499320119619370f, 0.525682866573334f,
    -0.499339967966080f,
  0.525299847126007f, -0.499359518289566f, 0.524916887283325f,
    -0.499378770589828f,
  0.524533808231354f, -0.499397724866867f, 0.524150788784027f,
    -0.499416410923004f,
  0.523767769336700f, -0.499434769153595f, 0.523384690284729f,
    -0.499452859163284f,
  0.523001611232758f, -0.499470651149750f, 0.522618472576141f,
    -0.499488145112991f,
  0.522235393524170f, -0.499505341053009f, 0.521852254867554f,
    -0.499522238969803f,
  0.521469116210938f, -0.499538868665695f, 0.521085977554321f,
    -0.499555170536041f,
  0.520702838897705f, -0.499571204185486f, 0.520319640636444f,
    -0.499586939811707f,
  0.519936442375183f, -0.499602377414703f, 0.519553244113922f,
    -0.499617516994476f,
  0.519170045852661f, -0.499632388353348f, 0.518786847591400f,
    -0.499646931886673f,
  0.518403589725494f, -0.499661177396774f, 0.518020391464233f,
    -0.499675154685974f,
  0.517637133598328f, -0.499688833951950f, 0.517253875732422f,
    -0.499702215194702f,
  0.516870558261871f, -0.499715298414230f, 0.516487300395966f,
    -0.499728083610535f,
  0.516103982925415f, -0.499740600585938f, 0.515720725059509f,
    -0.499752789735794f,
  0.515337407588959f, -0.499764710664749f, 0.514954090118408f,
    -0.499776333570480f,
  0.514570772647858f, -0.499787658452988f, 0.514187395572662f,
    -0.499798685312271f,
  0.513804078102112f, -0.499809414148331f, 0.513420701026917f,
    -0.499819844961166f,
  0.513037383556366f, -0.499830007553101f, 0.512654006481171f,
    -0.499839842319489f,
  0.512270629405975f, -0.499849408864975f, 0.511887252330780f,
    -0.499858677387238f,
  0.511503815650940f, -0.499867647886276f, 0.511120438575745f,
    -0.499876320362091f,
  0.510737061500549f, -0.499884694814682f, 0.510353624820709f,
    -0.499892801046371f,
  0.509970188140869f, -0.499900579452515f, 0.509586811065674f,
    -0.499908089637756f,
  0.509203374385834f, -0.499915301799774f, 0.508819937705994f,
    -0.499922215938568f,
  0.508436501026154f, -0.499928832054138f, 0.508053064346313f,
    -0.499935150146484f,
  0.507669627666473f, -0.499941170215607f, 0.507286131381989f,
    -0.499946922063828f,
  0.506902694702148f, -0.499952346086502f, 0.506519258022308f,
    -0.499957501888275f,
  0.506135761737823f, -0.499962359666824f, 0.505752325057983f,
    -0.499966919422150f,
  0.505368828773499f, -0.499971181154251f, 0.504985332489014f,
    -0.499975144863129f,
  0.504601895809174f, -0.499978810548782f, 0.504218399524689f,
    -0.499982208013535f,
  0.503834903240204f, -0.499985307455063f, 0.503451406955719f,
    -0.499988079071045f,
  0.503067970275879f, -0.499990582466125f, 0.502684473991394f,
    -0.499992787837982f,
  0.502300977706909f, -0.499994695186615f, 0.501917481422424f,
    -0.499996334314346f,
  0.501533985137939f, -0.499997645616531f, 0.501150488853455f,
    -0.499998688697815f,
  0.500766992568970f, -0.499999403953552f, 0.500383496284485f,
    -0.499999850988388f,
};

























 

arm_status arm_rfft_init_f32(
  arm_rfft_instance_f32 * S,
  arm_cfft_radix4_instance_f32 * S_CFFT,
  uint32_t fftLenReal,
  uint32_t ifftFlagR,
  uint32_t bitReverseFlag)
{

   
  arm_status status = ARM_MATH_SUCCESS;

   
  S->fftLenReal = (uint16_t) fftLenReal;

   
  S->fftLenBy2 = (uint16_t) fftLenReal / 2u;

   
  S->pTwiddleAReal = (float32_t *) realCoefA;

   
  S->pTwiddleBReal = (float32_t *) realCoefB;

   
  S->ifftFlagR = (uint8_t) ifftFlagR;

   
  S->bitReverseFlagR = (uint8_t) bitReverseFlag;

   
  switch (S->fftLenReal)
  {
     
  case 8192u:
    S->twidCoefRModifier = 1u;
    break;
  case 2048u:
    S->twidCoefRModifier = 4u;
    break;
  case 512u:
    S->twidCoefRModifier = 16u;
    break;
  case 128u:
    S->twidCoefRModifier = 64u;
    break;
  default:
     
    status = ARM_MATH_ARGUMENT_ERROR;
    break;
  }

   
  S->pCfft = S_CFFT;

  if(S->ifftFlagR)
  {
     
    arm_cfft_radix4_init_f32(S->pCfft, S->fftLenBy2, 1u, 0u);
  }
  else
  {
     
    arm_cfft_radix4_init_f32(S->pCfft, S->fftLenBy2, 0u, 0u);
  }

   
  return (status);

}

  

 
