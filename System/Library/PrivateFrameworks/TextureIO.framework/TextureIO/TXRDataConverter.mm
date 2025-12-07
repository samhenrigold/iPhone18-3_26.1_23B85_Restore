@interface TXRDataConverter
+ (id)newImageFromSourceImage:(id)image newPixelFormat:(unint64_t)format bufferAllocator:(id)allocator multiplyAlpha:(BOOL)alpha gammaDegamma:(BOOL)degamma error:(id *)error;
+ (id)newPixelFormatSetForCGImage:(CGImage *)image displayGamut:(unint64_t)gamut options:(id)options;
@end

@implementation TXRDataConverter

+ (id)newImageFromSourceImage:(id)image newPixelFormat:(unint64_t)format bufferAllocator:(id)allocator multiplyAlpha:(BOOL)alpha gammaDegamma:(BOOL)degamma error:(id *)error
{
  degammaCopy = degamma;
  alphaCopy = alpha;
  imageCopy = image;
  allocatorCopy = allocator;
  if (alphaCopy)
  {
    pixelFormat = [imageCopy pixelFormat];
    alphaCopy = 1;
    if (pixelFormat > 129)
    {
      if (((pixelFormat - 130) > 0x35 || ((1 << (pixelFormat + 126)) & 0x30003C00C0003FLL) == 0) && (pixelFormat - 552) >= 2)
      {
        goto LABEL_91;
      }
    }

    else if (((pixelFormat - 65) > 0x3C || ((1 << (pixelFormat - 65)) & 0x1C07A000060183E1) == 0) && (pixelFormat > 0x2B || ((1 << pixelFormat) & 0xE0000000002) == 0))
    {
LABEL_91:
      alphaCopy = 0;
    }
  }

  if (format - 130 < 0xE && ((0x3C3Fu >> (format + 126)) & 1) != 0)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    LOBYTE(v15) = 1;
    if (format - 150 >= 4 && (format & 0xFFFFFFFFFFFFFFF8) != 0xA0)
    {
      if (format - 170 >= 0x31)
      {
        LOBYTE(v15) = 0;
      }

      else
      {
        v15 = 0x1FF7C7FDF3F55uLL >> (format + 86);
      }
    }
  }

  pixelFormat2 = [imageCopy pixelFormat];
  v112 = allocatorCopy;
  formatCopy = format;
  v115 = imageCopy;
  v99 = alphaCopy;
  v100 = degammaCopy;
  v101 = v15;
  if (((pixelFormat2 - 130) > 0xD || ((1 << (pixelFormat2 + 126)) & 0x3C3F) == 0) && (pixelFormat2 - 150) >= 4 && (pixelFormat2 & 0xFFFFFFFFFFFFFFF8) != 0xA0 && ((pixelFormat2 - 170) > 0x30 || ((1 << (pixelFormat2 + 86)) & 0x1FF7C7FDF3F55) == 0))
  {
    v18 = imageCopy;
    goto LABEL_36;
  }

  v17 = imageCopy;
  v18 = v17;
  v19 = format & 0xFFFFFFFFFFFFFFFELL;
  if ((format & 0xFFFFFFFFFFFFFFFELL) == 0x46)
  {
    v20 = at_texel_format_rgba8_unorm;
    goto LABEL_28;
  }

  switch(v19)
  {
    case 0x50uLL:
      v20 = at_texel_format_bgra8_unorm;
LABEL_28:
      formatCopy2 = format;
      goto LABEL_29;
    case 0xAuLL:
      v20 = at_texel_format_l8_unorm;
      goto LABEL_28;
    case 0x1EuLL:
      v20 = at_texel_format_la8_unorm;
      goto LABEL_28;
  }

  if (isGammaEncoded([(TXRImageIndependent *)v17 pixelFormat]))
  {
    formatCopy2 = 71;
  }

  else
  {
    formatCopy2 = 70;
  }

  v20 = at_texel_format_rgba8_unorm;
LABEL_29:
  if ([(TXRImageIndependent *)v18 pixelFormat]== 204 || [(TXRImageIndependent *)v18 pixelFormat]== 186)
  {
    v22 = at_block_format_astc_4x4_ldr;
  }

  else
  {
    if ([(TXRImageIndependent *)v18 pixelFormat]!= 212 && [(TXRImageIndependent *)v18 pixelFormat]!= 194)
    {
      if (error)
      {
        _newTXRErrorWithCodeAndErrorString(0, @"Cannot decompress from specified format");
        *error = v40 = 0;
      }

      else
      {
        v40 = 0;
      }

      goto LABEL_75;
    }

    v22 = at_block_format_astc_8x8_ldr;
  }

  buffer = [(TXRImage *)v18 buffer];
  v23 = [buffer map];
  src.blocks = [v23 bytes];
  src.rowBytes = [(TXRImage *)v18 bytesPerRow];
  src.sliceBytes = [(TXRImage *)v18 bytesPerImage];
  [(TXRImageIndependent *)v18 dimensions];
  MemoryLayout = getMemoryLayout(formatCopy2, v24, v25);
  v28 = v27;
  [(TXRImageIndependent *)v18 dimensions];
  v109 = v29;
  [(TXRImageIndependent *)v18 dimensions];
  v108 = v30;
  [(TXRImageIndependent *)v18 dimensions];
  v105 = v31;
  [(TXRImageIndependent *)v18 dimensions];
  v33 = [allocatorCopy newBufferWithLength:v28 * v32];
  v34 = [v33 map];
  *(&dest.validSize + 3) = 0;
  dest.texels = [v34 bytes];
  *&dest.validSize.x = __PAIR64__(v108, v109);
  dest.validSize.z = v105;
  dest.rowBytes = MemoryLayout;
  dest.sliceBytes = v28;
  v35 = at_encoder_create(v20, at_alpha_not_premultiplied, v22, at_alpha_not_premultiplied, 0);
  if (!v35)
  {
    +[TXRDataConverter newImageFromSourceImage:newPixelFormat:bufferAllocator:multiplyAlpha:gammaDegamma:error:];
  }

  v36 = v35;
  at_encoder_decompress_texels(v35, &src, &dest, at_flags_default);
  v37 = [TXRImageIndependent alloc];
  [(TXRImageIndependent *)v18 dimensions];
  v39 = [(TXRImageIndependent *)v37 initWithDimensions:formatCopy2 pixelFormat:[(TXRImageIndependent *)v18 alphaInfo] alphaInfo:MemoryLayout bytesPerRow:v28 bytesPerImage:v33 buffer:0 offset:v38];

  format = formatCopy;
  if (formatCopy2 != formatCopy)
  {

    v18 = v39;
    imageCopy = v115;
    allocatorCopy = v112;
    LOBYTE(v15) = v101;
LABEL_36:
    formatCopy11 = format;
    if (v15)
    {
      formatCopy11 = format;
      if ([(TXRImageIndependent *)v18 pixelFormat]!= 70)
      {
        formatCopy11 = format;
        if ([(TXRImageIndependent *)v18 pixelFormat]!= 80)
        {
          formatCopy11 = format;
          if ([(TXRImageIndependent *)v18 pixelFormat]!= 30)
          {
            formatCopy11 = format;
            if ([(TXRImageIndependent *)v18 pixelFormat]!= 10)
            {
              formatCopy11 = format;
              if ([(TXRImageIndependent *)v18 pixelFormat]!= 71)
              {
                formatCopy11 = format;
                if ([(TXRImageIndependent *)v18 pixelFormat]!= 81)
                {
                  formatCopy11 = format;
                  if ([(TXRImageIndependent *)v18 pixelFormat]!= 31)
                  {
                    formatCopy11 = format;
                    if ([(TXRImageIndependent *)v18 pixelFormat]!= 11)
                    {
                      if (isGammaEncoded(format))
                      {
                        formatCopy11 = 71;
                      }

                      else
                      {
                        formatCopy11 = 70;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    [imageCopy dimensions];
    v44 = getMemoryLayout(formatCopy11, v42, v43);
    v46 = v45;
    [imageCopy dimensions];
    v48 = [allocatorCopy newBufferWithLength:v46 * v47];
    v49 = [TXRImageIndependent alloc];
    [imageCopy dimensions];
    v51 = -[TXRImageIndependent initWithDimensions:pixelFormat:alphaInfo:bytesPerRow:bytesPerImage:buffer:offset:](v49, "initWithDimensions:pixelFormat:alphaInfo:bytesPerRow:bytesPerImage:buffer:offset:", formatCopy11, [imageCopy alphaInfo], v44, v46, v48, 0, v50);
    v107 = v48;
    if ((v15 & (formatCopy11 == format)) == 0)
    {
      v104 = formatCopy11;
      v103 = [v48 map];
      bytes = [v103 bytes];
      buffer2 = [(TXRImage *)v18 buffer];
      v54 = [buffer2 map];

      v97 = v54;
      bytes2 = [v54 bytes];
      v56 = imageCopy;
      v57 = bytes;
      [v56 dimensions];
      if ((fastConvert(v99, v100, [(TXRImageIndependent *)v51 pixelFormat], [(TXRImage *)v51 bytesPerRow], [(TXRImage *)v51 bytesPerImage], bytes, [(TXRImageIndependent *)v18 pixelFormat], [(TXRImage *)v18 bytesPerRow], [(TXRImage *)v18 bytesPerImage], bytes2) & 1) == 0)
      {
        [v115 dimensions];
        v96 = v58;
        pixelFormat3 = [(TXRImageIndependent *)v51 pixelFormat];
        bytesPerRow = [(TXRImage *)v51 bytesPerRow];
        bytesPerImage = [(TXRImage *)v51 bytesPerImage];
        pixelFormat4 = [(TXRImageIndependent *)v18 pixelFormat];
        bytesPerRow2 = [(TXRImage *)v18 bytesPerRow];
        bytesPerImage2 = [(TXRImage *)v18 bytesPerImage];
        slowConvert(v99, v100, pixelFormat3, bytesPerRow, bytesPerImage, v57, pixelFormat4, bytesPerRow2, v96, v65, v66, v67, bytesPerImage2, bytes2);
      }

      imageCopy = v115;
      allocatorCopy = v112;
      format = formatCopy;
      LOBYTE(v15) = v101;
      v48 = v107;
      formatCopy11 = v104;
    }

    if ((v15 & 1) == 0)
    {
      v40 = v51;
LABEL_74:

      goto LABEL_75;
    }

    if (formatCopy11 == format)
    {
      v68 = allocatorCopy;
      v69 = v51;
      v70 = v18;
    }

    else
    {
      [imageCopy dimensions];
      v73 = getMemoryLayout(format, v71, v72);
      v75 = v74;
      [imageCopy dimensions];
      v68 = allocatorCopy;
      v77 = v51;
      v78 = [allocatorCopy newBufferWithLength:v75 * v76];
      v79 = [TXRImageIndependent alloc];
      [imageCopy dimensions];
      v110 = v80;
      alphaInfo = [imageCopy alphaInfo];
      v82 = v79;
      format = formatCopy;
      v69 = [(TXRImageIndependent *)v82 initWithDimensions:formatCopy pixelFormat:alphaInfo alphaInfo:v73 bytesPerRow:v75 bytesPerImage:v78 buffer:0 offset:v110];
      v70 = v77;

      v51 = v77;
    }

    if ([(TXRImageIndependent *)v70 pixelFormat]== 70 || [(TXRImageIndependent *)v70 pixelFormat]== 71)
    {
      v83 = at_texel_format_rgba8_unorm;
    }

    else if ([(TXRImageIndependent *)v70 pixelFormat]== 80 || [(TXRImageIndependent *)v70 pixelFormat]== 81)
    {
      v83 = at_texel_format_bgra8_unorm;
    }

    else if ([(TXRImageIndependent *)v70 pixelFormat]== 30 || [(TXRImageIndependent *)v70 pixelFormat]== 31)
    {
      v83 = at_texel_format_la8_unorm;
    }

    else
    {
      if ([(TXRImageIndependent *)v70 pixelFormat]!= 10 && [(TXRImageIndependent *)v70 pixelFormat]!= 11)
      {
        +[TXRDataConverter newImageFromSourceImage:newPixelFormat:bufferAllocator:multiplyAlpha:gammaDegamma:error:];
      }

      v83 = at_texel_format_l8_unorm;
    }

    v84 = at_block_format_astc_4x4_ldr;
    if (format > 203)
    {
      if (format == 204)
      {
        goto LABEL_71;
      }

      if (format != 212)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (format == 186)
      {
        goto LABEL_71;
      }

      if (format != 194)
      {
LABEL_66:
        if ((format & 0xFFFFFFFFFFFFFFFELL) != 0x98)
        {
          if (error)
          {
            _newTXRErrorWithCodeAndErrorString(0, @"Cannot compress to specified format");
            *error = v40 = 0;
          }

          else
          {
            v40 = 0;
          }

LABEL_73:

          allocatorCopy = v68;
          v48 = v107;
          goto LABEL_74;
        }

        v84 = at_block_format_bc7;
LABEL_71:
        v85 = v51;
        v86 = at_encoder_create(v83, at_alpha_not_premultiplied, v84, at_alpha_not_premultiplied, 0);
        if (!v86)
        {
          +[TXRDataConverter newImageFromSourceImage:newPixelFormat:bufferAllocator:multiplyAlpha:gammaDegamma:error:];
        }

        v87 = v86;
        buffer3 = [(TXRImage *)v70 buffer];
        v89 = [buffer3 map];

        [imageCopy dimensions];
        v114 = v90;
        [imageCopy dimensions];
        v111 = v91;
        [imageCopy dimensions];
        v106 = v92;
        memset(&dest.validSize.z, 0, 24);
        dest.texels = [v89 bytes];
        *&dest.validSize.x = __PAIR64__(v111, v114);
        dest.validSize.z = v106;
        dest.rowBytes = [(TXRImage *)v70 bytesPerRow];
        dest.sliceBytes = [(TXRImage *)v70 bytesPerImage];
        buffer4 = [(TXRImage *)v69 buffer];
        v94 = [buffer4 map];

        src.blocks = [v94 bytes];
        src.rowBytes = [(TXRImage *)v69 bytesPerRow];
        src.sliceBytes = [(TXRImage *)v69 bytesPerImage];
        at_encoder_compress_texels(v87, &dest, &src, 2.0e-15, at_flags_default);
        v40 = v69;

        v51 = v85;
        goto LABEL_73;
      }
    }

    v84 = at_block_format_astc_8x8_ldr;
    goto LABEL_71;
  }

  v18 = v39;

  v40 = v18;
  imageCopy = v115;
  allocatorCopy = v112;
LABEL_75:

  return v40;
}

+ (id)newPixelFormatSetForCGImage:(CGImage *)image displayGamut:(unint64_t)gamut options:(id)options
{
  v7 = MEMORY[0x277CBEB40];
  optionsCopy = options;
  v9 = objc_alloc_init(v7);
  v10 = [TXRParserImageIO determineColorSpaceClass:image displayGamut:gamut options:optionsCopy];

  BitsPerPixel = CGImageGetBitsPerPixel(image);
  v12 = CGImageGetBitmapInfo(image) & 0x1F;
  if (v10 < 2)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:204];
    [v9 addObject:v17];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:152];
    [v9 addObject:v18];

    if (BitsPerPixel != 8)
    {
      v15 = MEMORY[0x277CCABB0];
      v16 = 70;
      goto LABEL_15;
    }

    v15 = MEMORY[0x277CCABB0];
    if (v12 != 7)
    {
      v16 = 10;
LABEL_15:
      v21 = [v15 numberWithUnsignedInteger:v16];
      [v9 addObject:v21];

      return v9;
    }

LABEL_12:
    v16 = 1;
    goto LABEL_15;
  }

  if (v10 == 2)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:186];
    [v9 addObject:v19];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:153];
    [v9 addObject:v20];

    v15 = MEMORY[0x277CCABB0];
    if (v12 != 7)
    {
      v16 = 71;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v10 == 3)
  {
    if (v12 == 7)
    {
      v13 = 1;
    }

    else
    {
      v13 = 555;
    }

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
    [v9 addObject:v14];

    v15 = MEMORY[0x277CCABB0];
    v16 = 115;
    goto LABEL_15;
  }

  return v9;
}

@end