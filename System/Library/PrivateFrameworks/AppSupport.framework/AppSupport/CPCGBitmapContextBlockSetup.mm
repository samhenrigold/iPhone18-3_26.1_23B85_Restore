@interface CPCGBitmapContextBlockSetup
@end

@implementation CPCGBitmapContextBlockSetup

uint64_t ____CPCGBitmapContextBlockSetup_block_invoke(void *a1)
{
  v2 = *(*(a1[4] + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(*(a1[5] + 8) + 24);
  if (v3)
  {
    free(v3);
  }

  v4 = *(*(a1[6] + 8) + 24);
  if (v4)
  {
    CGColorSpaceRelease(*v4);
    CGColorSpaceRelease(*(*(*(a1[6] + 8) + 24) + 8));
    free(*(*(a1[6] + 8) + 24));
  }

  return 1;
}

uint64_t ____CPCGBitmapContextBlockSetup_block_invoke_2(uint64_t a1, uint64_t a2, CGImageRef image, CFErrorRef *a4)
{
  if (*(a1 + 88) == 1 && (CGImageGetColorSpace(image), (CGColorSpaceEqualToColorSpace() & 1) == 0))
  {
    if (a4)
    {
      v20 = @"CPBitmapErrorDomain";
      v21 = "Mismatched colorSpaces";
      v22 = a4;
      v23 = 7;
LABEL_15:
      __CPBitmapSetErrorIfNecessary(v22, v20, v23, v21);
    }
  }

  else
  {
    v8 = *(a1 + 56);
    if (!v8)
    {
      return 1;
    }

    v9 = 0;
    v10 = 0;
    v11 = *(a1 + 64);
    while (1)
    {
      v12 = v8 - v10;
      v13 = v12 >= v11 ? v11 : v12;
      v25.origin.y = v10;
      v14 = *(a1 + 72);
      v15 = (v11 - v13);
      v25.origin.x = 0.0;
      v25.size.width = v14;
      v25.size.height = v13;
      v16 = CGImageCreateWithImageInRect(image, v25);
      bzero(*(*(*(a1 + 40) + 8) + 24), *(a1 + 80));
      v26.origin.x = 0.0;
      v26.origin.y = v15;
      v26.size.width = v14;
      v26.size.height = v13;
      CGContextDrawImage(*(*(*(a1 + 48) + 8) + 24), v26, v16);
      CGImageRelease(v16);
      v17 = *(*(*(a1 + 32) + 8) + 24);
      v18 = *(v17 + 32) * v13;
      if (pwrite(*(a2 + 24), *(*(*(a1 + 40) + 8) + 24), v18, v9 + *(v17 + 40) * *(a2 + 88)) == -1)
      {
        break;
      }

      v9 += v18;
      v8 = *(a1 + 56);
      v11 = *(a1 + 64);
      v10 += v11;
      if (v10 >= v8)
      {
        return 1;
      }
    }

    if (a4)
    {
      v24 = *MEMORY[0x1E695E640];
      v23 = *__error();
      v21 = "Could not write bitmap to disk";
      v22 = a4;
      v20 = v24;
      goto LABEL_15;
    }
  }

  return 0;
}

@end