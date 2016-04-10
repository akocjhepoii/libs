/**************************************************************************
 * The author of this software is David R. Hanson.
 *
 * Copyright (c) 1994,1995,1996,1997 by David R. Hanson. All Rights Reserved.
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose, subject to the provisions described below, without fee is
 * hereby granted, provided that this entire notice is included in all
 * copies of any software that is or includes a copy or modification of
 * this software and in all copies of the supporting documentation for
 * such software.
 *
 * THIS SOFTWARE IS BEING PROVIDED "AS IS", WITHOUT ANY EXPRESS OR IMPLIED
 * WARRANTY. IN PARTICULAR, THE AUTHOR DOES MAKE ANY REPRESENTATION OR
 * WARRANTY OF ANY KIND CONCERNING THE MERCHANTABILITY OF THIS SOFTWARE OR
 * ITS FITNESS FOR ANY PARTICULAR PURPOSE.
 *
 * David Hanson / drh@microsoft.com /
 * http://www.research.microsoft.com/~drh/
 * $Id: arrayrep.h,v 1.1 2005/03/01 00:06:25 jeffreyphillips Exp $
 **************************************************************************/

#ifndef ARRAYREP_INCLUDED
#define ARRAYREP_INCLUDED
#define T Array_T
struct T {
	int length;
	int size;
	char *array;
};
extern void ArrayRep_init(T array, int length,
	int size, void *ary);
#undef T
#endif
