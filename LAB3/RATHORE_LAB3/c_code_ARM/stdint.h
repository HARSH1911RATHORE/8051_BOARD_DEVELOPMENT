
#ifndef _STDINT_H_
#define _STDINT_H_

#include <_stdint40.h>
#if __has_include(<sys/stdint.h>)
#include <sys/stdint.h>
#else
/* 7.18.1.1 Exact-width integer types */

#if defined(__MSP430__) || defined(__TMS320C55X_PLUS_BYTE__)
    typedef   signed char    int8_t;
    typedef unsigned char   uint8_t;
    typedef          int    int16_t;
    typedef unsigned int   uint16_t;
    typedef          long   int32_t;
    typedef unsigned long  uint32_t;
#elif defined(_TMS320C5XX) || defined(__TMS320C55X__)
    typedef          int    int16_t;
    typedef unsigned int   uint16_t;
    typedef          long   int32_t;
    typedef unsigned long  uint32_t;
#elif defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__ARP32__) || \
      defined(__PRU__)    || defined(__C7000__)
    typedef   signed char   int8_t;
    typedef unsigned char  uint8_t;
    typedef          short  int16_t;
    typedef unsigned short uint16_t;
    typedef          int    int32_t;
    typedef unsigned int   uint32_t;
#elif defined (__TMS320C2000__)
#if defined(__TMS320C28XX_CLA__)
    typedef          short  int16_t;
    typedef unsigned short uint16_t;
    typedef          int    int32_t;
    typedef unsigned int   uint32_t;
#else
    typedef          int    int16_t;
    typedef unsigned int   uint16_t;
    typedef          long   int32_t;
    typedef unsigned long  uint32_t;
#endif
#endif

#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__ARP32__) || \
    defined(__MSP430__) || defined(__PRU__)    || defined(__C7000__)
    typedef          long long  int64_t;
    typedef unsigned long long uint64_t;
#elif defined(__TMS320C2000__)
#if defined(__TMS320C28X__) || \
    (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
    typedef          long long  int64_t;
    typedef unsigned long long uint64_t;
#endif
#endif

/* 7.18.1.2 Minimum-width integer types */

#if defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__MSP430__) || \
    defined(__TMS320C55X_PLUS_BYTE__)          || defined(__ARP32__)  || \
    defined(__PRU__)    || defined(__C7000__)
    typedef  int8_t   int_least8_t;
    typedef uint8_t  uint_least8_t;
#elif defined(__TMS320C2000__) || defined(_TMS320C5XX) || defined(__TMS320C55X__)
    typedef  int16_t  int_least8_t;
    typedef uint16_t uint_least8_t;
#endif

    typedef  int16_t  int_least16_t;
    typedef uint16_t uint_least16_t;
    typedef  int32_t  int_least32_t;
    typedef uint32_t uint_least32_t;

#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__C7000__) || \
    defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)
    typedef  int64_t  int_least64_t;
    typedef uint64_t uint_least64_t;
#elif defined(__TMS320C2000__)
#if defined(__TMS320C28X__) || \
    (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
    typedef  int64_t  int_least64_t;
    typedef uint64_t uint_least64_t;
#else
/* sorry, [u]int_least64_t not implemented for C27X, CLA */
#endif
#elif defined(_TMS320C5XX) || defined(__TMS320C55X__)
/* sorry, [u]int_least64_t not implemented for C54x, C55x */
#endif

/* 7.18.1.3 Fastest minimum-width integer types */

#if defined(_TMS320C5XX) || defined(__TMS320C55X__)  || defined(__MSP430__)
    typedef  int16_t  int_fast8_t;
    typedef uint16_t uint_fast8_t;
    typedef  int16_t  int_fast16_t;
    typedef uint16_t uint_fast16_t;
#elif defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__ARP32__) || \
      defined(__PRU__)    || defined(__C7000__)
    typedef  int32_t  int_fast8_t;
    typedef uint32_t uint_fast8_t;
    typedef  int32_t  int_fast16_t;
    typedef uint32_t uint_fast16_t;
#elif defined (__TMS320C2000__)
#if defined(__TMS320C28XX_CLA__)
    typedef  int32_t  int_fast8_t;
    typedef uint32_t uint_fast8_t;
    typedef  int32_t  int_fast16_t;
    typedef uint32_t uint_fast16_t;
#else
    typedef  int16_t  int_fast8_t;
    typedef uint16_t uint_fast8_t;
    typedef  int16_t  int_fast16_t;
    typedef uint16_t uint_fast16_t;
#endif
#endif

    typedef  int32_t  int_fast32_t;
    typedef uint32_t uint_fast32_t;

#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__C7000__) || \
    defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)
    typedef  int64_t  int_fast64_t;
    typedef uint64_t uint_fast64_t;
#elif defined(__TMS320C2000__)
#if defined(__TMS320C28X__) || \
    (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
    typedef  int64_t  int_fast64_t;
    typedef uint64_t uint_fast64_t;
#else
/* sorry, [u]int_fast64_t not implemented for C27X, CLA */
#endif
#elif defined(_TMS320C5XX) || defined(__TMS320C55X__)
/* sorry, [u]int_fast64_t not implemented for C54x, C55x */
#endif

/* 7.18.1.4 Integer types capable of holding object pointers */
#if defined(_TMS320C5XX) || defined(__TMS320C55X__)        || \
    (defined(__MSP430__) && defined(__LARGE_CODE_MODEL__)) || \
    defined(__C7000__)
    typedef          long intptr_t;
    typedef unsigned long uintptr_t;
#elif defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__MSP430__) || \
      defined(__ARP32__)  || defined(__PRU__)
    typedef          int intptr_t;
    typedef unsigned int uintptr_t;
#elif defined(__TMS320C2000__)
#if defined(__TMS320C28XX_CLA__)
    typedef          short intptr_t;
    typedef unsigned short uintptr_t;
#else
    typedef          long intptr_t;
    typedef unsigned long uintptr_t;
#endif
#endif

/* 7.18.1.5 Greatest-width integer types */
#if defined(__TMS320C55X__) || defined(__ARM_ARCH) || defined(_TMS320C6X) || \
    defined(__ARP32__)      || defined(__MSP430__) || defined(__PRU__)    || \
    defined(__C7000__)
    typedef          long long intmax_t;
    typedef unsigned long long uintmax_t;
#elif defined(_TMS320C5XX)
    typedef          long intmax_t;
    typedef unsigned long uintmax_t;
#elif defined(__TMS320C2000__)
#if defined(__TMS320C28X__) || \
    (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
    typedef          long long intmax_t;
    typedef unsigned long long uintmax_t;
#else /* C27X or CLA */
    typedef          long intmax_t;
    typedef unsigned long uintmax_t;
#endif
#endif

/*
   According to footnotes in the 1999 C standard, "C++ implementations
   should define these macros only when __STDC_LIMIT_MACROS is defined
   before <stdint.h> is included."
*/
#if !defined(__cplusplus) || defined(__STDC_LIMIT_MACROS)

/* 7.18.2 Limits of specified width integer types */

#if defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__MSP430__) || \
    defined(__TMS320C55X_PLUS_BYTE__)          || defined(__ARP32__)  || \
    defined(__PRU__)    || defined(__C7000__)
    #define  INT8_MAX   0x7f
    #define  INT8_MIN   (-INT8_MAX-1)
    #define UINT8_MAX   0xff
#endif

    #define  INT16_MAX  0x7fff
    #define  INT16_MIN  (-INT16_MAX-1)
    #define UINT16_MAX  0xffff

    #define  INT32_MAX  0x7fffffff
    #define  INT32_MIN  (-INT32_MAX-1)
    #define UINT32_MAX  0xffffffff

#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__C7000__) || \
    defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)
    #define  INT64_MAX  0x7fffffffffffffff
    #define  INT64_MIN  (-INT64_MAX-1)
    #define UINT64_MAX  0xffffffffffffffff
#elif defined(__TMS320C2000__)
#if defined(__TMS320C28X__) || \
    (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
    #define  INT64_MAX  0x7fffffffffffffff
    #define  INT64_MIN  (-INT64_MAX-1)
    #define UINT64_MAX  0xffffffffffffffff
#endif
#endif

#if defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__MSP430__) || \
    defined(__TMS320C55X_PLUS_BYTE__)          || defined(__ARP32__)  || \
    defined(__PRU__)    || defined(__C7000__)
    #define  INT_LEAST8_MAX   (INT8_MAX)
    #define  INT_LEAST8_MIN   (INT8_MIN)
    #define UINT_LEAST8_MAX   (UINT8_MAX)
#elif defined(__TMS320C2000__) || defined(_TMS320C5XX) || defined(__TMS320C55X__)
    #define  INT_LEAST8_MAX   (INT16_MAX)
    #define  INT_LEAST8_MIN   (INT16_MIN)
    #define UINT_LEAST8_MAX   (UINT16_MAX)
#endif

    #define  INT_LEAST16_MAX  (INT16_MAX)
    #define  INT_LEAST16_MIN  (INT16_MIN)
    #define UINT_LEAST16_MAX  (UINT16_MAX)
    #define  INT_LEAST32_MAX  (INT32_MAX)
    #define  INT_LEAST32_MIN  (INT32_MIN)
    #define UINT_LEAST32_MAX  (UINT32_MAX)

#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__C7000__) || \
    defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)
    #define  INT_LEAST64_MAX  (INT64_MAX)
    #define  INT_LEAST64_MIN  (INT64_MIN)
    #define UINT_LEAST64_MAX  (UINT64_MAX)
#elif defined(__TMS320C2000__)
#if defined(__TMS320C28X__) || \
    (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
    #define  INT_LEAST64_MAX  (INT64_MAX)
    #define  INT_LEAST64_MIN  (INT64_MIN)
    #define UINT_LEAST64_MAX  (UINT64_MAX)
#endif
#endif

#if defined(_TMS320C5XX) || defined(__TMS320C55X__)
    #define  INT_FAST8_MAX   (INT16_MAX)
    #define  INT_FAST8_MIN   (INT16_MIN)
    #define UINT_FAST8_MAX   (UINT16_MAX)
    #define  INT_FAST16_MAX  (INT16_MAX)
    #define  INT_FAST16_MIN  (INT16_MIN)
    #define UINT_FAST16_MAX  (UINT16_MAX)
#elif defined(_TMS320C6X) || defined(__ARM_ARCH) || defined(__ARP32__) || \
      defined(__PRU__)    || defined(__C7000__)
    #define  INT_FAST8_MAX   (INT32_MAX)
    #define  INT_FAST8_MIN   (INT32_MIN)
    #define UINT_FAST8_MAX   (UINT32_MAX)
    #define  INT_FAST16_MAX  (INT32_MAX)
    #define  INT_FAST16_MIN  (INT32_MIN)
    #define UINT_FAST16_MAX  (UINT32_MAX)
#elif defined(__MSP430__)
    #define  INT_FAST8_MAX    (INT16_MAX)
    #define  INT_FAST8_MIN    (INT16_MIN)
    #define  UINT_FAST8_MAX   (UINT16_MAX)
    #define  INT_FAST16_MAX   (INT16_MAX)
    #define  INT_FAST16_MIN   (INT16_MIN)
    #define  UINT_FAST16_MAX  (UINT16_MAX)
#elif defined (__TMS320C2000__)
#if defined(__TMS320C28XX_CLA__)
    #define  INT_FAST8_MAX   (INT32_MAX)
    #define  INT_FAST8_MIN   (INT32_MIN)
    #define UINT_FAST8_MAX   (UINT32_MAX)
    #define  INT_FAST16_MAX  (INT32_MAX)
    #define  INT_FAST16_MIN  (INT32_MIN)
    #define UINT_FAST16_MAX  (UINT32_MAX)
#else
    #define  INT_FAST8_MAX   (INT16_MAX)
    #define  INT_FAST8_MIN   (INT16_MIN)
    #define UINT_FAST8_MAX   (UINT16_MAX)
    #define  INT_FAST16_MAX  (INT16_MAX)
    #define  INT_FAST16_MIN  (INT16_MIN)
    #define UINT_FAST16_MAX  (UINT16_MAX)
#endif
#endif

    #define  INT_FAST32_MAX  (INT32_MAX)
    #define  INT_FAST32_MIN  (INT32_MIN)
    #define UINT_FAST32_MAX  (UINT32_MAX)

#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__C7000__) || \
    defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)
    #define  INT_FAST64_MAX  (INT64_MAX)
    #define  INT_FAST64_MIN  (INT64_MIN)
    #define UINT_FAST64_MAX  (UINT64_MAX)
#elif defined(__TMS320C2000__)
#if defined(__TMS320C28X__) || \
    (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
    #define  INT_FAST64_MAX  (INT64_MAX)
    #define  INT_FAST64_MIN  (INT64_MIN)
    #define UINT_FAST64_MAX  (UINT64_MAX)
#endif
#endif

#if defined(__MSP430__) && !defined(__LARGE_CODE_MODEL__)
    #define INTPTR_MAX   (INT16_MAX)
    #define INTPTR_MIN   (INT16_MIN)
    #define UINTPTR_MAX  (UINT16_MAX)
#elif defined(__C7000__)
    #define INTPTR_MAX   (INT64_MAX)
    #define INTPTR_MIN   (INT64_MIN)
    #define UINTPTR_MAX  (UINT64_MAX)
#else
    #define INTPTR_MAX   (INT32_MAX)
    #define INTPTR_MIN   (INT32_MIN)
    #define UINTPTR_MAX  (UINT32_MAX)
#endif

#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__C7000__) || \
    defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)
    #define INTMAX_MIN   (INT64_MIN)
    #define INTMAX_MAX   (INT64_MAX)
    #define UINTMAX_MAX  (UINT64_MAX)
#elif defined(_TMS320C5XX)
    #define INTMAX_MIN   (INT32_MIN)
    #define INTMAX_MAX   (INT32_MAX)
    #define UINTMAX_MAX  (UINT32_MAX)
#elif defined(__TMS320C2000__)
#if defined(__TMS320C28X__) || \
    (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
    #define INTMAX_MIN   (INT64_MIN)
    #define INTMAX_MAX   (INT64_MAX)
    #define UINTMAX_MAX  (UINT64_MAX)
#else
    #define INTMAX_MIN   (INT32_MIN)
    #define INTMAX_MAX   (INT32_MAX)
    #define UINTMAX_MAX  (UINT32_MAX)
#endif
#endif

/* 7.18.3 Limits of other integer types */

#if defined(_TMS320C5XX) || defined(__TMS320C55X__) || \
    (defined(__MSP430__) && !defined(__LONG_PTRDIFF_T__))
    #define PTRDIFF_MAX (INT16_MAX)
    #define PTRDIFF_MIN (INT16_MIN)
#elif defined(__TMS320C2000__) || defined(__MSP430__) || \
      (defined(_TMS320C6X) && !defined(__C6X_MIGRATION__)) || \
      defined(__ARM_ARCH)      || defined(__ARP32__) || defined(__PRU__)
    #define PTRDIFF_MAX (INT32_MAX)
    #define PTRDIFF_MIN (INT32_MIN)
#elif defined(__C7000__)
    #define PTRDIFF_MAX (INT64_MAX)
    #define PTRDIFF_MIN (INT64_MIN)
#endif

#if defined(_TMS320C5XX) || defined(__TMS320C55X__) || defined(__MSP430__)
    #define SIG_ATOMIC_MIN (INT16_MIN)
    #define SIG_ATOMIC_MAX (INT16_MAX)
#elif defined(__TMS320C2000__) || defined(_TMS320C6X) || defined(__C7000__) || \
      defined(__ARM_ARCH)      || defined(__ARP32__)  || defined(__PRU__)
    #define SIG_ATOMIC_MIN (INT32_MIN)
    #define SIG_ATOMIC_MAX (INT32_MAX)
#endif

#if defined(_TMS320C5XX) || defined(__TMS320C55X__) || \
    (defined(__MSP430__) && !defined(__LONG_PTRDIFF_T__))
    #define SIZE_MAX (UINT16_MAX)
#elif defined(__TMS320C2000__) || defined(__MSP430__) || \
      (defined(_TMS320C6X) && !defined(__C6X_MIGRATION__)) || \
      defined(__ARM_ARCH)      || defined(__ARP32__)  || defined(__PRU__)
    #define SIZE_MAX (UINT32_MAX)
#elif defined(__C7000__)
    #define SIZE_MAX (UINT64_MAX)
#endif

#ifndef WCHAR_MAX
#if !defined(__TI_WCHAR_T_BITS__) || __TI_WCHAR_T_BITS__ == 16
#define WCHAR_MAX 0xffffu
#else
#define WCHAR_MAX 0xffffffffu
#endif
#endif

#ifndef WCHAR_MIN
#define WCHAR_MIN 0
#endif

#if defined(_TMS320C5XX) || defined(__TMS320C55X__) || defined(__MSP430__)
    #define WINT_MIN (INT16_MIN)
    #define WINT_MAX (INT16_MAX)
#elif defined(__TMS320C2000__) || defined(_TMS320C6X) || defined(__C7000__) || \
      defined(__ARM_ARCH)      || defined(__ARP32__)  || defined(__PRU__)
    #define WINT_MIN (INT32_MIN)
    #define WINT_MAX (INT32_MAX)
#endif

/* 7.18.4.1 Macros for minimum-width integer constants */

/*
   There is a defect report filed against the C99 standard concerning how
   the (U)INTN_C macros should be implemented.  Please refer to --
   http://wwwold.dkuug.dk/JTC1/SC22/WG14/www/docs/dr_209.htm
   for more information.  These macros are implemented according to the
   suggestion given at this web site.
*/

    #define  INT8_C(value)  ((int_least8_t)(value))
    #define UINT8_C(value)  ((uint_least8_t)(value))
    #define  INT16_C(value) ((int_least16_t)(value))
    #define UINT16_C(value) ((uint_least16_t)(value))
    #define  INT32_C(value) ((int_least32_t)(value))
    #define UINT32_C(value) ((uint_least32_t)(value))

#if defined(__ARM_ARCH) || defined(_TMS320C6X) || defined(__C7000__) || \
    defined(__ARP32__)  || defined(__MSP430__) || defined(__PRU__)
    #define  INT64_C(value) ((int_least64_t)(value))
    #define UINT64_C(value) ((uint_least64_t)(value))
#elif defined(__TMS320C2000__)
#if defined(__TMS320C28X__) || \
    (defined(__TMS320C28XX_CLA__) && defined(__TI_EABI__))
    #define  INT64_C(value) ((int_least64_t)(value))
    #define UINT64_C(value) ((uint_least64_t)(value))
#endif
#endif

/* 7.18.4.2 Macros for greatest-width integer constants */

    #define  INTMAX_C(value) ((intmax_t)(value))
    #define UINTMAX_C(value) ((uintmax_t)(value))

#endif /* !defined(__cplusplus) || defined(__STDC_LIMIT_MACROS) */
#endif
#endif /* _STDINT_H_ */