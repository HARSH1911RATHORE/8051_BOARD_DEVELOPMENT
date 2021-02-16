
#ifndef __bool_true_false_are_defined
#define	__bool_true_false_are_defined	1

#ifndef __cplusplus

#define	false	0
#define	true	1

#define	bool	_Bool
#if __TI_STRICT_ANSI_MODE__ && 199901L > __STDC_VERSION__
typedef unsigned char _Bool;
#endif

#endif /* !__cplusplus */
#endif /* __bool_true_false_are_defined */
