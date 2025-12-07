@interface PLKColorBoxes
+ (id)_mergeColor:(void *)color withColor:(double)withColor firstWeight:(double)weight secondWeight:;
+ (id)colorBoxesForAverageColor:(id)color contrast:(double)contrast;
+ (id)colorBoxesForImage:(id)image;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToColorBoxes:(id)boxes;
- (PLKColorBoxes)initWithCoder:(id)coder;
- (UIColor)averageColor;
- (double)imageSize;
- (double)luma;
- (double)lumaInRect:(CGRect)rect;
- (double)rectForColorBoxAtRow:(uint64_t)row col:;
- (double)saturation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initWithColorBoxes:(uint64_t)boxes size:(uint64_t)size rowCount:(uint64_t)count columnCount:(char)columnCount totalContrast8:(char)contrast8 totalSaturation8:(uint64_t)saturation8 imageSize:(double)imageSize downsampledBoxSize:(double)self0 effectiveDownsampleFactor:(uint64_t)self1 pixelHeight:(uint64_t)self2 pixelWidth:(uint64_t)self3;
- (uint64_t)colorBoxAtRow:(uint64_t)row col:;
- (uint64_t)colorBoxesRowMajor;
- (uint64_t)columnCount;
- (uint64_t)downsampledBoxSize;
- (uint64_t)effectiveDownsampleFactor;
- (uint64_t)pixelHeight;
- (uint64_t)pixelWidth;
- (uint64_t)rowCount;
- (uint64_t)setTotalSaturation8:(uint64_t)result;
- (uint64_t)size;
- (uint64_t)totalContrast8;
- (uint64_t)totalSaturation8;
- (uint64_t)version;
- (unint64_t)hash;
- (void)_calculateMissingSaturationDataIfNeeded;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLKColorBoxes

+ (id)colorBoxesForImage:(id)image
{
  v115 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  v4 = imageCopy;
  if (!imageCopy || ((v5 = [imageCopy size], v8 = v6, v9 = v7, v6 == *MEMORY[0x277CBF3A8]) ? (v10 = v7 == *(MEMORY[0x277CBF3A8] + 8)) : (v10 = 0), v10 || (v6 <= 4.0 || v7 <= 4.0 ? (v11 = 1) : (v11 = 4), (v12 = vcvtpd_u64_f64(v6 / v11), v6 <= 4.0 || v7 <= 4.0) ? (v13 = 16) : (v13 = 4), (v14 = vcvtpd_u64_f64(v7 / v11), v12) ? (v15 = v14 == 0) : (v15 = 1), v15)))
  {
    v16 = 0;
    goto LABEL_18;
  }

  if (v6 > 4.0 && v7 > 4.0)
  {
    v18 = 2;
  }

  else
  {
    v18 = 4;
  }

  if (((v13 - 1) & v14) != 0)
  {
    v19 = (v14 >> v18) + 1;
  }

  else
  {
    v19 = v14 >> v18;
  }

  v103 = v18;
  if (((v13 - 1) & v12) != 0)
  {
    v20 = (v12 >> v18) + 1;
  }

  else
  {
    v20 = v12 >> v18;
  }

  if (is_mul_ok(v19, v20))
  {
    v105 = v19 * v20;
    v100 = malloc_type_calloc(v19 * v20, 5uLL, 0x1000040957D8CC4uLL);
    if (v100)
    {
      v102 = v13;
      [v4 scale];
      v22 = v14;
      [v4 scale];
      plk_wrappedIOSurface = [v4 plk_wrappedIOSurface];
      v24 = 0.0;
      v21 = [v4 plk_cropImageWithRect:? outputSize:? canUseIOSurface:?];

      v96 = v14;
      AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
      space = CGColorSpaceCreateDeviceRGB();
      v25 = CGBitmapContextCreate(0, v12, v14, 8uLL, AlignedBytesPerRow, space, 0x4001u);
      CGContextSetInterpolationQuality(v25, kCGInterpolationLow);
      plk_CGImageBackedImage = [v21 plk_CGImageBackedImage];
      cGImage = [plk_CGImageBackedImage CGImage];
      v117.origin.x = 0.0;
      v117.origin.y = 0.0;
      v117.size.width = v12;
      v117.size.height = v22;
      CGContextDrawImage(v25, v117, cGImage);

      c = v25;
      Data = CGBitmapContextGetData(v25);
      v108 = v20;
      if (v19)
      {
        v98 = 0;
        v99 = v12;
        v90 = v21;
        v91 = v11;
        v97 = v19;
        v92 = v4;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v95 = Data + 1;
        v36 = AlignedBytesPerRow;
        do
        {
          if (v20)
          {
            v109 = 0;
            v37 = v98 << v103;
            if ((v98 << v103) + v102 >= v96)
            {
              v38 = v96 - (v98 << v103);
            }

            else
            {
              v38 = v102;
            }

            v39 = v38 + v37;
            v107 = v98 * v20;
            v101 = &v95[v36 * v37];
            do
            {
              if (v37 >= v39)
              {
                v41 = 0;
                v60 = 0.0;
                v61 = 0.0;
                v62 = 0.0;
                v63 = 0.0;
                v64 = 0.0;
                v65 = 0.0;
              }

              else
              {
                v40 = v37;
                v41 = 0;
                v42 = 0;
                v43 = 0;
                v44 = 0;
                v45 = 0;
                v46 = 0;
                v47 = 0;
                v48 = v109 << v103;
                if ((v109 << v103) + v102 >= v99)
                {
                  v49 = v99 - (v109 << v103);
                }

                else
                {
                  v49 = v102;
                }

                v50 = &v101[4 * v48];
                v51 = v40;
                do
                {
                  if (v48 < v49 + v48)
                  {
                    v41 += v49;
                    v52 = v50;
                    v53 = v49;
                    do
                    {
                      v54 = *(v52 - 1);
                      v47 += v54;
                      v55 = *v52;
                      v46 += v55;
                      v56 = v52[1];
                      v45 += v56;
                      v57 = (v54 * v54);
                      v44 += v57;
                      v58 = (v55 * v55);
                      v43 += v58;
                      v59 = (v56 * v56);
                      v42 += v59;
                      v29 += v54;
                      v30 += v55;
                      v35 += v56;
                      v34 += v57;
                      v33 += v58;
                      v32 += v59;
                      v52 += 4;
                      --v53;
                    }

                    while (v53);
                    v31 += v49;
                  }

                  ++v51;
                  v50 += v36;
                }

                while (v51 != v39);
                v60 = v47;
                v61 = v46;
                v62 = v45;
                v63 = v44;
                v64 = v43;
                v65 = v42;
              }

              v66 = contrast(v41, v60, v61, v62, v63, v64, v65);
              if (v109 + v107 >= v105)
              {
                v78 = PLKLogCommon(v66);
                if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218752;
                  *&buf[4] = v109 + v107;
                  *&buf[12] = 2048;
                  *&buf[14] = v98;
                  v111 = 2048;
                  v112 = v109;
                  v113 = 2048;
                  v114 = v108;
                  _os_log_error_impl(&dword_21E5D5000, v78, OS_LOG_TYPE_ERROR, "Bad box index '%lu' from row %lu column %lu and column count %lu", buf, 0x2Au);
                }
              }

              else
              {
                v104 = v66;
                v67.f64[0] = v60;
                v68.f64[0] = v63;
                v69 = saturation(v41, v67, v61, v62, v68, v64, v65);
                v70 = 1.0 / v41;
                v71 = llround(v70 * v62);
                v72 = v71 & ~(v71 >> 63);
                if (v72 >= 255)
                {
                  LOBYTE(v72) = -1;
                }

                v73 = llround(v70 * v61);
                v74 = v73 & ~(v73 >> 63);
                if (v74 >= 255)
                {
                  LOBYTE(v74) = -1;
                }

                v75 = llround(v70 * v60);
                v76 = v75 & ~(v75 >> 63);
                if (v76 >= 255)
                {
                  LOBYTE(v76) = -1;
                }

                v77 = &v100[5 * v109 + 5 * v107];
                *v77 = v76;
                v77[1] = v74;
                v77[2] = v72;
                v77[3] = v104;
                v77[4] = v69;
              }

              v20 = v108;
              ++v109;
              v36 = AlignedBytesPerRow;
              v37 = v98 << v103;
            }

            while (v109 != v108);
          }

          ++v98;
        }

        while (v98 != v97);
        v79 = v29;
        v80 = v30;
        v24 = v35;
        v81 = v34;
        v82 = v33;
        v83 = v32;
        v4 = v92;
        v19 = v97;
        v21 = v90;
        v11 = v91;
        v12 = v99;
      }

      else
      {
        v31 = 0;
        v81 = 0.0;
        v82 = 0.0;
        v83 = 0.0;
        v80 = 0.0;
        v79 = 0.0;
      }

      v84 = contrast(v31, v79, v80, v24, v81, v82, v83);
      v85.f64[0] = v79;
      v86.f64[0] = v81;
      v87 = saturation(v31, v85, v80, v24, v86, v82, v83);
      CGContextRelease(c);
      CGColorSpaceRelease(space);
      v88 = [PLKColorBoxes alloc];
      if (v88)
      {
        *buf = v88;
        *&buf[8] = PLKColorBoxes;
        v89 = objc_msgSendSuper2(buf, sel_init);
        v16 = v89;
        if (v89)
        {
          *(v89 + 10) = v100;
          *(v89 + 11) = v19;
          *(v89 + 12) = v108;
          v89[40] = v84;
          v89[41] = v87;
          *(v89 + 1) = v8;
          *(v89 + 2) = v9;
          *(v89 + 6) = v102;
          *(v89 + 7) = v11;
          *(v89 + 8) = v96;
          *(v89 + 9) = v12;
          *(v89 + 104) = xmmword_21E5F3D80;
          v89[24] = 1;
        }

        goto LABEL_74;
      }
    }

    else
    {
      v21 = PLKLogCommon(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        +[PLKColorBoxes colorBoxesForImage:];
      }
    }
  }

  else
  {
    v21 = PLKLogCommon(v5);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[PLKColorBoxes colorBoxesForImage:];
    }
  }

  v16 = 0;
LABEL_74:

LABEL_18:

  return v16;
}

+ (id)colorBoxesForAverageColor:(id)color contrast:(double)contrast
{
  v49 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  v8 = colorCopy;
  if (colorCopy)
  {
    v41 = 0.0;
    v42 = 0.0;
    v39 = 0;
    v40 = 0.0;
    v9 = [colorCopy getRed:? green:? blue:? alpha:?];
    if (v9)
    {
      v10 = 0.0;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __52__PLKColorBoxes_colorBoxesForAverageColor_contrast___block_invoke;
      v35[3] = &unk_27835B890;
      v11 = v8;
      v36 = v11;
      v37 = a2;
      selfCopy = self;
      v12 = MEMORY[0x223D5FAC0](v35);
      v13 = (v12)[2](v12, @"red", v42 * 255.0);
      v14 = (v12)[2](v12, @"green", v41 * 255.0);
      v15 = (v12)[2](v12, @"blue", v40 * 255.0);
      v16 = (v12)[2](v12, @"contrast", fmin(fmax(contrast, 0.0), 1.0) * 255.0);
      v17 = fmax(v42, fmax(v41, v40));
      if (v17 > 0.0)
      {
        v10 = (v17 - fmin(v42, fmin(v41, v40))) / v17 * 255.0;
      }

      v18 = (v12)[2](v12, @"saturation", v10);
      v19 = malloc_type_calloc(1uLL, 5uLL, 0x1000040957D8CC4uLL);
      if (v19)
      {
        v20 = v19;
        *v19 = v13;
        v19[1] = v14;
        v19[2] = v15;
        v19[3] = v16;
        v19[4] = v18;
        v21 = PLKLogCommon(v19);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.receiver) = 67110144;
          HIDWORD(buf.receiver) = v13;
          LOWORD(buf.super_class) = 1024;
          *(&buf.super_class + 2) = v14;
          HIWORD(buf.super_class) = 1024;
          v44 = v15;
          v45 = 1024;
          v46 = v16;
          v47 = 1024;
          v48 = v18;
          _os_log_impl(&dword_21E5D5000, v21, OS_LOG_TYPE_INFO, "Created color boxes for solid color (R:%d G:%d B:%d C:%d S:%d)", &buf, 0x20u);
        }

        v22 = [PLKColorBoxes alloc];
        if (v22)
        {
          buf.receiver = v22;
          buf.super_class = PLKColorBoxes;
          v23 = objc_msgSendSuper2(&buf, sel_init);
          v24 = v23;
          if (v23)
          {
            *(v23 + 10) = v20;
            *(v23 + 88) = vdupq_n_s64(1uLL);
            v23[40] = v16;
            v23[41] = v18;
            __asm { FMOV            V0.2D, #16.0 }

            *(v23 + 8) = _Q0;
            *(v23 + 3) = xmmword_21E5F3D90;
            *(v23 + 4) = vdupq_n_s64(0x10uLL);
            *(v23 + 104) = xmmword_21E5F3D80;
            v23[24] = 1;
          }
        }

        else
        {
          v24 = 0;
        }

        v30 = v11;
        v31 = v24[4];
        v24[4] = v30;
      }

      else
      {
        v31 = PLKLogCommon(0);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          +[PLKColorBoxes colorBoxesForAverageColor:contrast:];
        }

        v24 = 0;
      }

      v33 = v36;
    }

    else
    {
      v33 = PLKLogCommon(v9);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        +[PLKColorBoxes colorBoxesForAverageColor:contrast:];
      }

      v24 = 0;
    }
  }

  else
  {
    v32 = PLKLogCommon(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      +[PLKColorBoxes colorBoxesForAverageColor:contrast:];
    }

    v24 = 0;
  }

  return v24;
}

uint64_t __52__PLKColorBoxes_colorBoxesForAverageColor_contrast___block_invoke(uint64_t a1, void *a2, double a3)
{
  v3 = llround(a3);
  if (v3 >= 0x100)
  {
    __52__PLKColorBoxes_colorBoxesForAverageColor_contrast___block_invoke_cold_1(a1, a2, v3);
  }

  if ((v3 & ~(v3 >> 63)) >= 255)
  {
    return 255;
  }

  else
  {
    return v3 & ~(v3 >> 63);
  }
}

- (UIColor)averageColor
{
  averageColor = self->_averageColor;
  if (!averageColor)
  {
    v4 = PLKAverageColorFromColorBoxes(self, *MEMORY[0x277CBF390], *(MEMORY[0x277CBF390] + 8), *(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24), 0.0);
    v5 = self->_averageColor;
    self->_averageColor = v4;

    averageColor = self->_averageColor;
  }

  v6 = averageColor;

  return v6;
}

- (double)saturation
{
  if (self->_version <= 1 && !self->_saturationCalculated)
  {
    [(PLKColorBoxes *)self _calculateMissingSaturationDataIfNeeded:v2];
  }

  LOBYTE(v2.f64[0]) = self->_totalSaturation8;
  v2.f64[0] = *&v2.f64[0] / 255.0;
  return v2.f64[0];
}

- (double)luma
{
  averageColor = [(PLKColorBoxes *)self averageColor];
  [averageColor _luminance];
  v4 = v3;

  return v4;
}

- (double)lumaInRect:(CGRect)rect
{
  v3 = [(PLKColorBoxes *)self averageColorInRect:?];
  [v3 _luminance];
  v5 = v4;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = 5 * self->_rowCount * self->_columnCount;
  v5 = malloc_type_malloc(v4, 0x1000040957D8CC4uLL);
  if (v5)
  {
    v6 = v5;
    memcpy(v5, self->_colorBoxesRowMajor, v4);
    columnCount = self->_columnCount;
    size = self->_size;
    rowCount = self->_rowCount;
    totalContrast8 = self->_totalContrast8;
    totalSaturation8 = self->_totalSaturation8;
    width = self->_imageSize.width;
    height = self->_imageSize.height;
    v16 = *&self->_downsampledBoxSize;
    v17 = *&self->_pixelHeight;
    result = [PLKColorBoxes alloc];
    if (result)
    {
      v18.receiver = result;
      v18.super_class = PLKColorBoxes;
      result = [(PLKColorBoxes *)&v18 init];
      if (result)
      {
        *(result + 10) = v6;
        *(result + 11) = rowCount;
        *(result + 12) = columnCount;
        *(result + 13) = size;
        *(result + 40) = totalContrast8;
        *(result + 41) = totalSaturation8;
        *(result + 1) = width;
        *(result + 2) = height;
        *(result + 3) = v16;
        *(result + 4) = v17;
        *(result + 14) = 2;
        *(result + 24) = 1;
      }
    }
  }

  else
  {
    v15 = PLKLogCommon(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PLKColorBoxes copyWithZone:];
    }

    return 0;
  }

  return result;
}

- (PLKColorBoxes)initWithCoder:(id)coder
{
  v31 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = PLKColorBoxes;
  v5 = [(PLKColorBoxes *)&v28 init];
  if (v5)
  {
    [coderCopy decodeCGSizeForKey:?];
    v5->_imageSize.width = v6;
    v5->_imageSize.height = v7;
    v5->_downsampledBoxSize = [coderCopy decodeIntegerForKey:?];
    v5->_effectiveDownsampleFactor = [coderCopy decodeIntegerForKey:?];
    v5->_pixelHeight = [coderCopy decodeIntegerForKey:?];
    v5->_pixelWidth = [coderCopy decodeIntegerForKey:?];
    v5->_rowCount = [coderCopy decodeIntegerForKey:?];
    v5->_columnCount = [coderCopy decodeIntegerForKey:?];
    v5->_size = [coderCopy decodeIntegerForKey:?];
    v5->_totalContrast8 = [coderCopy decodeIntForKey:?];
    v8 = [coderCopy containsValueForKey:?];
    if (v8)
    {
      version = [coderCopy decodeIntegerForKey:?];
      v5->_version = version;
    }

    else
    {
      v5->_version = 1;
      v10 = PLKLogCommon(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_21E5D5000, v10, OS_LOG_TYPE_INFO, "Decoding legacy PLKColorBoxes without version info, assuming version 1", buf, 2u);
      }

      version = v5->_version;
    }

    if (version < 2)
    {
      v5->_totalSaturation8 = 0;
      v5->_saturationCalculated = 0;
      v11 = PLKLogCommon(version);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_21E5D5000, v11, OS_LOG_TYPE_INFO, "Legacy PLKColorBoxes detected, saturation data will be calculated on demand", buf, 2u);
      }
    }

    else
    {
      v5->_totalSaturation8 = [coderCopy decodeIntForKey:?];
      v5->_saturationCalculated = 1;
    }

    __n = 0;
    v12 = [coderCopy decodeBytesForKey:? returnedLength:?];
    if (!v12)
    {
      v21 = PLKLogCommon(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [PLKColorBoxes initWithCoder:];
      }

      goto LABEL_39;
    }

    v13 = v12;
    v14 = v5->_columnCount * v5->_rowCount;
    v15 = v5->_version;
    if (v15 != 2)
    {
      if (v15 == 1)
      {
        if (__n == 4 * v14)
        {
          v16 = malloc_type_calloc(v5->_columnCount * v5->_rowCount, 5uLL, 0x1000040957D8CC4uLL);
          if (v16)
          {
            if (v14)
            {
              p_var4 = &v16->var4;
              v18 = v14;
              do
              {
                v19 = *v13++;
                *(p_var4 - 1) = v19;
                *p_var4 = 0;
                p_var4 += 5;
                --v18;
              }

              while (v18);
            }

            v5->_colorBoxesRowMajor = v16;
            v20 = PLKLogCommon(v16);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v30 = v14;
              _os_log_impl(&dword_21E5D5000, v20, OS_LOG_TYPE_INFO, "Successfully converted %lu legacy color boxes to current format", buf, 0xCu);
            }

            goto LABEL_28;
          }

          v21 = PLKLogCommon(0);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [PLKColorBoxes initWithCoder:];
          }
        }

        else
        {
          v21 = PLKLogCommon(v12);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [PLKColorBoxes initWithCoder:];
          }
        }
      }

      else
      {
        v21 = PLKLogCommon(v12);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [(PLKColorBoxes *)&v5->_version initWithCoder:v21];
        }
      }

LABEL_39:

      v25 = 0;
      goto LABEL_40;
    }

    v22 = 5 * v14;
    if (__n != v22)
    {
      v21 = PLKLogCommon(v12);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [PLKColorBoxes initWithCoder:];
      }

      goto LABEL_39;
    }

    v23 = malloc_type_malloc(v22, 0x1000040957D8CC4uLL);
    if (!v23)
    {
      v21 = PLKLogCommon(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [PLKColorBoxes initWithCoder:];
      }

      goto LABEL_39;
    }

    v24 = v23;
    memcpy(v23, v13, __n);
    v5->_colorBoxesRowMajor = v24;
  }

LABEL_28:
  v25 = v5;
LABEL_40:

  return v25;
}

- (void)dealloc
{
  colorBoxesRowMajor = self->_colorBoxesRowMajor;
  if (colorBoxesRowMajor)
  {
    free(colorBoxesRowMajor);
  }

  v4.receiver = self;
  v4.super_class = PLKColorBoxes;
  [(PLKColorBoxes *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeCGSize:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeInt:? forKey:?];
  [coderCopy encodeInt:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeBytes:? length:? forKey:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(PLKColorBoxes *)self isEqualToColorBoxes:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToColorBoxes:(id)boxes
{
  boxesCopy = boxes;
  if (self == boxesCopy)
  {
    goto LABEL_22;
  }

  if (!boxesCopy || self->_size != boxesCopy->_size || (rowCount = self->_rowCount, rowCount != boxesCopy->_rowCount) || (columnCount = self->_columnCount, columnCount != boxesCopy->_columnCount) || self->_totalContrast8 != boxesCopy->_totalContrast8 || self->_totalSaturation8 != boxesCopy->_totalSaturation8 || self->_version != boxesCopy->_version)
  {
LABEL_21:
    v7 = 0;
    goto LABEL_23;
  }

  v7 = 0;
  if (self->_imageSize.width == boxesCopy->_imageSize.width)
  {
    v8 = *&boxesCopy->_imageSize.height;
    height = self->_imageSize.height;
    if (height == *&v8)
    {
      if (self->_downsampledBoxSize == boxesCopy->_downsampledBoxSize && self->_effectiveDownsampleFactor == boxesCopy->_effectiveDownsampleFactor && self->_pixelHeight == boxesCopy->_pixelHeight && self->_pixelWidth == boxesCopy->_pixelWidth)
      {
        v10 = columnCount * rowCount;
        if (v10)
        {
          p_var1 = &boxesCopy->_colorBoxesRowMajor->var1;
          v12 = &self->_colorBoxesRowMajor->var1;
          v7 = 1;
          while (*(v12 - 1) == *(p_var1 - 1))
          {
            v8.i32[0] = *v12;
            LODWORD(height) = *p_var1;
            *&height = vmovl_u8(*&height).u64[0] & 0xFF00FF00FF00FFLL;
            v8 = vceq_s16((vmovl_u8(v8).u64[0] & 0xFF00FF00FF00FFLL), *&height);
            if ((vminv_u16(v8) & 1) == 0)
            {
              break;
            }

            p_var1 += 5;
            v12 += 5;
            if (!--v10)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_21;
        }

LABEL_22:
        v7 = 1;
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

LABEL_23:

  return v7;
}

- (unint64_t)hash
{
  columnCount = self->_columnCount;
  rowCount = self->_rowCount;
  v4 = rowCount - self->_size + 32 * self->_size;
  v5 = self->_totalContrast8 - (columnCount - v4 + 32 * v4) + 32 * (columnCount - v4 + 32 * v4);
  v6 = (self->_imageSize.width * 100.0) - (self->_totalSaturation8 - v5 + 32 * v5) + 32 * (self->_totalSaturation8 - v5 + 32 * v5);
  v7 = (self->_imageSize.height * 100.0) - v6 + 32 * v6;
  v8 = columnCount * rowCount;
  v9 = columnCount * rowCount / 0xA;
  if (v9 <= 1)
  {
    v9 = 1;
  }

  if (v8)
  {
    v10 = 0;
    p_var2 = &self->_colorBoxesRowMajor->var2;
    do
    {
      v12 = *(p_var2 - 2) - v7 + 32 * v7;
      v13 = *(p_var2 - 1) - v12 + 32 * v12;
      v7 = *p_var2 - v13 + 32 * v13;
      v10 += v9;
      p_var2 += 5 * v9;
    }

    while (v10 < v8);
  }

  v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
  return v14 ^ (v14 >> 31);
}

+ (id)_mergeColor:(void *)color withColor:(double)withColor firstWeight:(double)weight secondWeight:
{
  v6 = a2;
  colorCopy = color;
  objc_opt_self();
  if (!(v6 | colorCopy))
  {
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    goto LABEL_16;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  if (colorCopy)
  {
    v8 = [v6 getRed:0 green:? blue:? alpha:?];
    if (v8)
    {
      v9 = [colorCopy getRed:? green:? blue:? alpha:?];
      if (v9)
      {
        systemGrayColor = [MEMORY[0x277D75348] colorWithRed:? green:? blue:? alpha:?];
        goto LABEL_16;
      }

      v12 = PLKLogCommon(v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[PLKColorBoxes _mergeColor:withColor:firstWeight:secondWeight:];
      }

      goto LABEL_15;
    }

    v11 = PLKLogCommon(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[PLKColorBoxes _mergeColor:withColor:firstWeight:secondWeight:];
    }

LABEL_11:
    systemGrayColor = colorCopy;
    goto LABEL_16;
  }

LABEL_15:
  systemGrayColor = v6;
LABEL_16:
  v13 = systemGrayColor;

  return v13;
}

- (id)description
{
  v2 = [MEMORY[0x277CF0C00] builderWithObject:?];
  v3 = [v2 appendPointer:? withName:?];
  v4 = [v2 appendInteger:? withName:?];
  v5 = [v2 appendInteger:? withName:?];
  v6 = [v2 appendInteger:? withName:?];
  v7 = [v2 appendInteger:? withName:?];
  v8 = [v2 appendInteger:? withName:?];
  v9 = [v2 appendInteger:? withName:?];
  build = [v2 build];

  return build;
}

- (id)initWithColorBoxes:(uint64_t)boxes size:(uint64_t)size rowCount:(uint64_t)count columnCount:(char)columnCount totalContrast8:(char)contrast8 totalSaturation8:(uint64_t)saturation8 imageSize:(double)imageSize downsampledBoxSize:(double)self0 effectiveDownsampleFactor:(uint64_t)self1 pixelHeight:(uint64_t)self2 pixelWidth:(uint64_t)self3
{
  if (result)
  {
    v22.receiver = result;
    v22.super_class = PLKColorBoxes;
    result = objc_msgSendSuper2(&v22, sel_init);
    if (result)
    {
      *(result + 10) = a2;
      *(result + 11) = size;
      *(result + 12) = count;
      *(result + 13) = boxes;
      *(result + 40) = columnCount;
      *(result + 41) = contrast8;
      *(result + 1) = imageSize;
      *(result + 2) = boxSize;
      *(result + 6) = saturation8;
      *(result + 7) = factor;
      *(result + 8) = height;
      *(result + 9) = width;
      *(result + 14) = 2;
      *(result + 24) = 1;
    }
  }

  return result;
}

- (void)_calculateMissingSaturationDataIfNeeded
{
  if (self)
  {
    selfCopy = self;
    if ((*(self + 24) & 1) == 0)
    {
      v6 = 0;
      v7 = *(self + 96) * *(self + 88);
      if (v7)
      {
        v8 = (*(self + 80) + 2);
        v9 = *(self + 96) * *(self + 88);
        do
        {
          LOBYTE(a2.f64[0]) = *(v8 - 2);
          a2.f64[0] = *&a2.f64[0];
          LOBYTE(a3) = *(v8 - 1);
          LOBYTE(a4) = *v8;
          a5.f64[0] = a2.f64[0] * a2.f64[0];
          self = saturation(1uLL, a2, *&a3, *&a4, a5, *&a3 * *&a3, *&a4 * *&a4);
          v8[2] = self;
          v6 += self;
          v8 += 5;
          --v9;
        }

        while (v9);
      }

      *(selfCopy + 41) = v6 / v7;
      *(selfCopy + 24) = 1;
      v10 = PLKLogCommon(self);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_21E5D5000, v10, OS_LOG_TYPE_INFO, "Calculated approximate saturation data for legacy color boxes", v11, 2u);
      }
    }
  }
}

- (double)rectForColorBoxAtRow:(uint64_t)row col:
{
  if (self)
  {
    return (*(self + 56) * *(self + 48) * row);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)colorBoxAtRow:(uint64_t)row col:
{
  if (result)
  {
    return *(result + 80) + 5 * row + 5 * *(result + 96) * a2;
  }

  return result;
}

- (uint64_t)size
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

- (uint64_t)rowCount
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

- (uint64_t)columnCount
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

- (uint64_t)totalContrast8
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)totalSaturation8
{
  if (result)
  {
    return *(result + 41);
  }

  return result;
}

- (uint64_t)version
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

- (double)imageSize
{
  if (self)
  {
    return *(self + 8);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)downsampledBoxSize
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)effectiveDownsampleFactor
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)pixelHeight
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (uint64_t)pixelWidth
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (uint64_t)colorBoxesRowMajor
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (uint64_t)setTotalSaturation8:(uint64_t)result
{
  if (result)
  {
    *(result + 41) = a2;
  }

  return result;
}

void __52__PLKColorBoxes_colorBoxesForAverageColor_contrast___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCACA8];
  v7 = *(a1 + 32);
  v8 = v7;
  v9 = a2;
  ColorSpace = CGColorGetColorSpace([v7 CGColor]);
  v11 = [v6 stringWithFormat:v9, a3, v7, CGColorSpaceGetName(ColorSpace)];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v12 = NSStringFromSelector(*(a1 + 40));
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = *(a1 + 48);
    *buf = 138544642;
    v17 = v12;
    v18 = 2114;
    v19 = v14;
    v20 = 2048;
    v21 = v15;
    v22 = 2114;
    v23 = @"PLKColorBoxes.m";
    v24 = 1024;
    v25 = 447;
    v26 = 2114;
    v27 = v11;
    _os_log_fault_impl(&dword_21E5D5000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }
}

- (void)initWithCoder:(uint64_t *)a1 .cold.5(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_21E5D5000, a2, OS_LOG_TYPE_ERROR, "Unsupported PLKColorBoxes version: %ld", &v3, 0xCu);
}

@end