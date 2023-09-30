/* config/config.h.  Generated from config.h.in by configure.  */
/* config/config.h.in.  Generated from configure.ac by autoheader.  */

/* Include pthread support for binary relocation? */
/* #undef BR_PTHREAD */

/* Use binary relocation? */
/* #undef ENABLE_BINRELOC */

/* Define to dummy `main' function (if any) required to link to the Fortran
   libraries. */
/* #undef FC_DUMMY_MAIN */

/* Define if F77 and FC dummy `main' functions are identical. */
/* #undef FC_DUMMY_MAIN_EQ_F77 */

/* Define to a macro mangling the given C identifier (in lower and upper
   case), which must not contain underscores, for linking with Fortran. */
#define FC_FUNC(name,NAME) name ## _

/* As FC_FUNC, but for C identifiers containing underscores. */
#define FC_FUNC_(name,NAME) name ## _

/* Define to 1 if you have the <dlfcn.h> header file. */
#define HAVE_DLFCN_H 1

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H 1

/* Define to 1 if you have the `pthread' library (-lpthread). */
/* #undef HAVE_LIBPTHREAD */

/* Define to 1 if you have the <memory.h> header file. */
#define HAVE_MEMORY_H 1

/* Define to 1 if you have the <stdint.h> header file. */
#define HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#define HAVE_STDLIB_H 1

/* Define to 1 if you have the <strings.h> header file. */
#define HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#define HAVE_STRING_H 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#define HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#define HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <unistd.h> header file. */
#define HAVE_UNISTD_H 1

/* "Has LHAPDF been built in low memory mode?" */
/* #undef LHAPDF_LOWMEM */

/* "Max number of concurrent PDF sets" */
#define LHAPDF_NMXSET "3"

/* "LHAPDF version string" */
#define LHAPDF_VERSION "5.9.1"

/* Define to the sub-directory in which libtool stores uninstalled libraries.
   */
#define LT_OBJDIR ".libs/"

/* Name of package */
#define PACKAGE "lhapdf"

/* Define to the address where bug reports for this package should be sent. */
#define PACKAGE_BUGREPORT "lhapdf@projects.hepforge.org"

/* Define to the full name of this package. */
#define PACKAGE_NAME "LHAPDF"

/* Define to the full name and version of this package. */
#define PACKAGE_STRING "LHAPDF 5.9.1"

/* Define to the one symbol short name of this package. */
#define PACKAGE_TARNAME "lhapdf"

/* Define to the version of this package. */
#define PACKAGE_VERSION "5.9.1"

/* Define to 1 if you have the ANSI C header files. */
#define STDC_HEADERS 1

/* Version number of package */
#define VERSION "5.9.1"
