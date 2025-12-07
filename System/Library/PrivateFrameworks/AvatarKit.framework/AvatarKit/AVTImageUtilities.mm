@interface AVTImageUtilities
+ (UIEdgeInsets)_transparencyInsetsForUInt8AlphaContext:(CGContext *)context requiringFullOpacity:(BOOL)opacity;
+ (UIEdgeInsets)transparencyInsetsForImage:(CGImage *)image imageRect:(CGRect)rect requiringFullOpacity:(BOOL)opacity;
+ (UIEdgeInsets)transparencyInsetsForImage:(CGImage *)image requiringFullOpacity:(BOOL)opacity;
+ (id)trimmedImageByTrimmingTransparentPixelsFromImage:(id)image requiringFullOpacity:(BOOL)opacity;
+ (void)cropImageWhitespace:(CGImage *)whitespace outsideRect:(CGRect)rect insideRect:(CGRect)insideRect resultBlock:(id)block;
+ (void)posterWithStickerImage:(CGImage *)image posterSize:(CGSize)size minimumHorizontalMargin:(float)margin thumbnailRect:(CGRect)rect allowsExtraTallContent:(BOOL)content expectsExtraTallContent:(BOOL)tallContent resultBlock:(id)block;
@end

@implementation AVTImageUtilities

+ (void)cropImageWhitespace:(CGImage *)whitespace outsideRect:(CGRect)rect insideRect:(CGRect)insideRect resultBlock:(id)block
{
  height = insideRect.size.height;
  width = insideRect.size.width;
  y = insideRect.origin.y;
  x = insideRect.origin.x;
  v10 = rect.size.height;
  v11 = rect.size.width;
  v12 = rect.origin.y;
  v13 = rect.origin.x;
  blockCopy = block;
  v16 = CGImageGetWidth(whitespace);
  v17 = CGImageGetHeight(whitespace);
  [AVTImageUtilities transparencyInsetsForImage:"transparencyInsetsForImage:requiringFullOpacity:" requiringFullOpacity:?];
  v19 = v18;
  v30.origin.x = v20;
  v22 = v16 - v20 - v21;
  v30.size.height = v17 - v19 - v23;
  v30.origin.y = v19;
  v30.size.width = v22;
  v33.origin.x = v13;
  v33.origin.y = v12;
  v33.size.width = v11;
  v33.size.height = v10;
  v31 = CGRectUnion(v30, v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v32 = CGRectIntersection(v31, v34);
  v24 = v32.origin.x;
  v25 = v32.origin.y;
  v26 = v32.size.width;
  v27 = v32.size.height;
  v28 = CGImageCreateWithImageInRect(whitespace, v32);
  blockCopy[2](blockCopy, v28, v24, v25, v26, v27);

  CGImageRelease(v28);
}

+ (void)posterWithStickerImage:(CGImage *)image posterSize:(CGSize)size minimumHorizontalMargin:(float)margin thumbnailRect:(CGRect)rect allowsExtraTallContent:(BOOL)content expectsExtraTallContent:(BOOL)tallContent resultBlock:(id)block
{
  tallContentCopy = tallContent;
  contentCopy = content;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = size.height;
  v51 = size.width;
  blockCopy = block;
  v18 = CGImageGetWidth(image);
  v19 = CGImageGetHeight(image);
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  v20 = v19 - CGRectGetMaxY(v53);
  [AVTImageUtilities transparencyInsetsForImage:"transparencyInsetsForImage:requiringFullOpacity:" requiringFullOpacity:?];
  v23 = v22;
  v24 = v20 > v21;
  if (contentCopy)
  {
    v25 = v21;
  }

  else
  {
    v25 = v20;
  }

  v26 = v24 && tallContentCopy;
  if (v24 && tallContentCopy)
  {
    v27 = v25;
  }

  else
  {
    v27 = v21;
  }

  [AVTImageUtilities transparencyInsetsForImage:"transparencyInsetsForImage:imageRect:requiringFullOpacity:" imageRect:? requiringFullOpacity:?];
  v29 = v28;
  v31 = v18 - v28 - v30;
  v32 = v19 - v23 - v27;
  v33 = v15;
  if (v26)
  {
    v34 = !contentCopy;
  }

  else
  {
    v34 = 1;
  }

  v50 = v31;
  if (v34)
  {
    v41 = v51;
    v35 = (v51 - (margin + margin)) / v31;
    v36 = v15 / v32;
    v37 = v33 - v32 * v35;
    if (v15 / v32 <= v35)
    {
      v37 = 0.0;
      v35 = v15 / v32;
    }

    if (tallContentCopy)
    {
      v40 = 0.0;
    }

    else
    {
      v40 = v37;
    }

    if (tallContentCopy)
    {
      v39 = v36;
    }

    else
    {
      v39 = v35;
    }
  }

  else
  {
    v38 = v32 / (v19 - v23 - v20);
    v33 = (v33 * v38);
    v39 = v15 / v32 * v38;
    v40 = 0.0;
    v41 = v51;
  }

  BitsPerComponent = CGImageGetBitsPerComponent(image);
  v43 = (CGImageGetBitsPerPixel(image) >> 3) * v41;
  v44 = malloc_type_calloc(v33, v43, 0xF53F3A29uLL);
  ColorSpace = CGImageGetColorSpace(image);
  BitmapInfo = CGImageGetBitmapInfo(image);
  v47 = CGBitmapContextCreate(v44, v41, v33, BitsPerComponent, v43, ColorSpace, BitmapInfo);
  v54.size.width = v39 * v18;
  v54.size.height = v39 * v19;
  v54.origin.x = (v41 - v50 * v39) * 0.5 - v29 * v39;
  v54.origin.y = v40 - (v19 - (v23 + v32)) * v39;
  CGContextDrawImage(v47, v54, image);
  Image = CGBitmapContextCreateImage(v47);
  blockCopy[2](blockCopy, Image, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));

  CGImageRelease(Image);
  CGContextRelease(v47);

  free(v44);
}

+ (UIEdgeInsets)_transparencyInsetsForUInt8AlphaContext:(CGContext *)context requiringFullOpacity:(BOOL)opacity
{
  opacityCopy = opacity;
  Width = CGBitmapContextGetWidth(context);
  Height = CGBitmapContextGetHeight(context);
  Data = CGBitmapContextGetData(context);
  v9 = malloc_type_calloc(Height, 2uLL, 0x1000040BDFB0063uLL);
  v10 = malloc_type_calloc(Width, 2uLL, 0x1000040BDFB0063uLL);
  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      v12 = Data;
      v13 = Width;
      v14 = v10;
      if (Width)
      {
        while (1)
        {
          v16 = *v12++;
          v15 = v16;
          if (opacityCopy)
          {
            break;
          }

          if (v15)
          {
            goto LABEL_8;
          }

LABEL_9:
          ++v14;
          if (!--v13)
          {
            goto LABEL_10;
          }
        }

        if (v15 != 255)
        {
          goto LABEL_9;
        }

LABEL_8:
        ++v9[i];
        ++*v14;
        goto LABEL_9;
      }

LABEL_10:
      Data += Width;
    }

    v17 = 0;
    v18 = *MEMORY[0x1E69DDCE0];
    v19 = *(MEMORY[0x1E69DDCE0] + 8);
    v20 = *(MEMORY[0x1E69DDCE0] + 16);
    v21 = *(MEMORY[0x1E69DDCE0] + 24);
    while (!v9[v17])
    {
      if (Height == ++v17)
      {
        goto LABEL_18;
      }
    }

    v18 = v17;
LABEL_18:
    v22 = 0;
    while (!v9[Height - 1 + v22])
    {
      if (-Height == --v22)
      {
        if (Width)
        {
          goto LABEL_24;
        }

        goto LABEL_34;
      }
    }

    v20 = -v22;
    if (!Width)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v18 = *MEMORY[0x1E69DDCE0];
    v19 = *(MEMORY[0x1E69DDCE0] + 8);
    v20 = *(MEMORY[0x1E69DDCE0] + 16);
    v21 = *(MEMORY[0x1E69DDCE0] + 24);
    if (!Width)
    {
      goto LABEL_34;
    }
  }

LABEL_24:
  v23 = 0;
  while (!v10[v23])
  {
    if (Width == ++v23)
    {
      goto LABEL_29;
    }
  }

  v19 = v23;
LABEL_29:
  v24 = 0;
  while (!v10[Width - 1 + v24])
  {
    if (-Width == --v24)
    {
      goto LABEL_34;
    }
  }

  v21 = -v24;
LABEL_34:
  free(v10);
  free(v9);
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  result.right = v28;
  result.bottom = v27;
  result.left = v26;
  result.top = v25;
  return result;
}

+ (UIEdgeInsets)transparencyInsetsForImage:(CGImage *)image requiringFullOpacity:(BOOL)opacity
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v8 = malloc_type_calloc(Height * Width, 1uLL, 0x100004077774924uLL);
  v9 = CGBitmapContextCreate(v8, Width, Height, 8uLL, Width, 0, 7u);
  v22.size.width = Width;
  v22.size.height = Height;
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  CGContextDrawImage(v9, v22, image);
  [self _transparencyInsetsForUInt8AlphaContext:? requiringFullOpacity:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  CGContextRelease(v9);
  free(v8);
  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

+ (UIEdgeInsets)transparencyInsetsForImage:(CGImage *)image imageRect:(CGRect)rect requiringFullOpacity:(BOOL)opacity
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11 = CGImageGetWidth(image);
  v12 = CGImageGetHeight(image);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v13 = CGRectGetWidth(v39);
  v14 = v11;
  if (v13 > v11)
  {
    v13 = v11;
  }

  v15 = v13;
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v16 = CGRectGetHeight(v40);
  v17 = v12;
  if (v16 > v12)
  {
    v16 = v12;
  }

  v18 = v16;
  v19 = malloc_type_calloc(v16 * v15, 1uLL, 0x100004077774924uLL);
  v20 = CGBitmapContextCreate(v19, v15, v18, 8uLL, v15, 0, 7u);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  v21 = -CGRectGetMinX(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v43.origin.y = -(v17 - CGRectGetMaxY(v42));
  v43.origin.x = v21;
  v43.size.width = v14;
  v43.size.height = v17;
  CGContextDrawImage(v20, v43, image);
  [self _transparencyInsetsForUInt8AlphaContext:? requiringFullOpacity:?];
  v23 = v22;
  v25 = v24;
  v38 = v26;
  v28 = v27;
  CGContextRelease(v20);
  free(v19);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v29 = v25 + CGRectGetMinX(v44);
  v30 = CGImageGetWidth(image);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v31 = v28 + v30 - CGRectGetMaxX(v45);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v32 = v23 + CGRectGetMinY(v46);
  v33 = CGImageGetHeight(image);
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v34 = v38 + v33 - CGRectGetMaxY(v47);
  v35 = v32;
  v36 = v29;
  v37 = v31;
  result.right = v37;
  result.bottom = v34;
  result.left = v36;
  result.top = v35;
  return result;
}

+ (id)trimmedImageByTrimmingTransparentPixelsFromImage:(id)image requiringFullOpacity:(BOOL)opacity
{
  imageCopy = image;
  [imageCopy size];
  if (v6 >= 2.0 && ([imageCopy size], v7 >= 2.0))
  {
    cGImage = [imageCopy CGImage];
    Width = CGImageGetWidth(cGImage);
    Height = CGImageGetHeight(cGImage);
    [imageCopy scale];
    [self transparencyInsetsForImage:? requiringFullOpacity:?];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v8 = imageCopy;
    if (v14 != 0.0 || v18 != 0.0 || v16 != 0.0 || v20 != 0.0)
    {
      v25.origin.x = v16 + 0.0;
      v25.origin.y = v14 + 0.0;
      v25.size.width = Width - (v16 + v20);
      v25.size.height = Height - (v14 + v18);
      v21 = CGImageCreateWithImageInRect(cGImage, v25);
      v22 = MEMORY[0x1E69DCAB8];
      [v8 imageOrientation];
      v23 = [v22 imageWithCGImage:? scale:? orientation:?];

      CGImageRelease(v21);
      v8 = v23;
    }
  }

  else
  {
    v8 = imageCopy;
  }

  return v8;
}

@end