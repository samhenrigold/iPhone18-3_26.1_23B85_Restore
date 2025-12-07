@interface PASSimpleICUTransform
@end

@implementation PASSimpleICUTransform

void ___PASSimpleICUTransform_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) length];
  v3 = 2 * v2;
  v4 = v3 | 1;
  memptr = 0;
  v12 = 0;
  if ((v3 | 1) > 0x200)
  {
    v8 = malloc_type_posix_memalign(&memptr, 8uLL, v3, 0x1000040BDFB0063uLL);
    LOBYTE(v12) = 0;
    if (v8)
    {
      v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v9);
    }

    v5 = memptr;
  }

  else
  {
    v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v5, v3 | 1);
  }

  if (v2 << 32)
  {
    v6 = 0;
    if (v2 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v2;
    }

    do
    {
      *&v5[2 * v6] = [*(a1 + 32) characterAtIndex:v6];
      ++v6;
    }

    while (v7 != v6);
  }

  *(*(*(a1 + 40) + 8) + 24) = utrans_openU();
  if (v4 >= 0x201)
  {
    free(v5);
  }
}

@end