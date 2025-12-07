_anonymous_namespace_ *re::DynamicArray<re::KeyValuePair<int,re::DynamicArray<unsigned int>>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::KeyValuePair<int,re::DynamicArray<unsigned int>>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::KeyValuePair<int,re::DynamicArray<unsigned int>>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::KeyValuePair<int,re::DynamicArray<unsigned int>>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::KeyValuePair<int,re::DynamicArray<unsigned int>>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v17, v19);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v18, v20);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 48 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v11[5] = 0;
          v11[2] = 0;
          v11[3] = 0;
          v11[1] = 0;
          *(v11 + 8) = 0;
          v12 = *(v8 + 8);
          v13 = *(v8 + 16);
          v14 = v8 + 8;
          v11[1] = v12;
          v11[2] = v13;
          *v14 = 0;
          *(v14 + 8) = 0;
          v15 = v11[3];
          v11[3] = *(v14 + 16);
          *(v14 + 16) = v15;
          v16 = v11[5];
          v11[5] = *(v14 + 32);
          *(v14 + 32) = v16;
          ++*(v14 + 24);
          ++*(v11 + 8);
          re::DynamicArray<unsigned long>::deinit(v14);
          v11 += 6;
          v8 = v14 + 40;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::createCGImagePtrFromCGImageSource(uint64_t a1@<X0>, CGImageSource *a2@<X1>, uint64_t a3@<X3>, size_t a4@<X4>, uint64_t a5@<X8>)
{
  v96 = *MEMORY[0x1E69E9840];
  v73 = 0;
  v74 = 0;
  v10 = [MEMORY[0x1E695DF90] dictionary];
  [v10 setValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E696E0A8]];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:*(a3 + 44)];
  [v10 setValue:v11 forKey:*MEMORY[0x1E696E0A0]];

  [v10 setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E696E008]];
  if ((*(a1 + 21) & 1) == 0)
  {
    [v10 setValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E696E138]];
    [v10 setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E696E038]];
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(a2, a4, v10);
  if (ImageAtIndex || (ImageAtIndex = CGImageSourceCreateImageAtIndex(a2, a4, 0)) != 0)
  {
    v13 = ImageAtIndex;
    v14 = CGImageSourceCopyPropertiesAtIndex(a2, a4, 0);
    v15 = v14;
    if (!v14)
    {
      v44 = *re::pipelineLogObjects(0);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_ERROR, "Failed to retrieve image properties from a CGImageSource during texture creation", buf, 2u);
      }

      *(a5 + 48) = 0;
      *(a5 + 16) = 0u;
      *(a5 + 32) = 0u;
      *a5 = 0u;
      *(a5 + 56) = CGColorSpaceGetNumberOfComponents(0);
      *(a5 + 64) = CGColorSpaceGetModel(0);
      *(a5 + 72) = 0;
      *(a5 + 80) = 0;
      *(a5 + 104) = 0;
      goto LABEL_55;
    }

    v67 = a5;
    v16 = [(__CFDictionary *)v14 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
    v17 = [(__CFDictionary *)v15 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
    v69 = v16;
    v18 = [v16 unsignedIntegerValue];
    v68 = v17;
    v19 = [v17 unsignedIntegerValue];
    v20 = *(a3 + 16);
    if (v20 <= 1)
    {
      v20 = 1;
    }

    if (*(a3 + 8) == 1)
    {
      LODWORD(v21) = v20;
    }

    else
    {
      LODWORD(v21) = 1;
    }

    v22 = v21;
    v23 = re::internal::downsampleFactorToFitDeviceLimits(a1, 2, v18, v19, 0);
    if (v23 <= v21)
    {
      v21 = v21;
    }

    else
    {
      v21 = v23;
    }

    v65 = v18;
    v66 = v19;
    if (v21 >= 2)
    {
      v25 = v23;
      v64 = v15;
      v26 = [v10 mutableCopy];
      v27 = [MEMORY[0x1E696AD98] numberWithInt:v21];
      [v26 setObject:v27 forKey:*MEMORY[0x1E696E0F8]];

      if (v25 > v22)
      {
        v29 = *re::pipelineLogObjects(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218752;
          *&buf[4] = v65;
          *&buf[12] = 2048;
          *&buf[14] = v19;
          *&buf[22] = 2048;
          *&buf[24] = v74;
          *v88 = 2048;
          *&v88[2] = v73;
          _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "Downsampling imported image to match device limits, from %zux%zu image to %zux%zu", buf, 0x2Au);
        }
      }

      v10 = v26;
      v15 = v64;
    }

    if ((*(a3 + 56) - 3) <= 1 && !*(a3 + 64))
    {
      ColorSpace = CGImageGetColorSpace(v13);
      Model = CGColorSpaceGetModel(ColorSpace);
      if (Model <= kCGColorSpaceModelRGB)
      {
        v33 = Model;
        if (!re::internal::colorSpaceIsExtendedOrHDR(ColorSpace, v32))
        {
          v34 = [(__CFDictionary *)v15 objectForKeyedSubscript:*MEMORY[0x1E696DEF0]];
          if (v34)
          {
          }

          else
          {
            v54 = [(__CFDictionary *)v15 objectForKeyedSubscript:*MEMORY[0x1E696DDF0]];
            v55 = [v54 BOOLValue];
            v56 = [v54 BOOLValue];
            if (*(a1 + 16) == 1)
            {
              v57 = v56;
              if (v33)
              {
                v58 = 4;
              }

              else
              {
                v58 = 1;
              }

              if (*(a1 + 19))
              {
                v59 = *(a1 + 20);
              }

              else
              {
                v59 = 0;
              }

              CGColorSpaceNameForGamut = re::ColorHelpers::getCGColorSpaceNameForGamut(v58, v55 ^ 1u, v57, v59);
            }

            else
            {
              v61 = MEMORY[0x1E695F1C0];
              if (v33 == kCGColorSpaceModelMonochrome)
              {
                v61 = MEMORY[0x1E695F128];
              }

              CGColorSpaceNameForGamut = *v61;
            }

            v62 = *(a3 + 16);
            *buf = *a3;
            *&buf[16] = v62;
            *v88 = *(a3 + 32);
            *&v88[12] = *(a3 + 44);
            v89 = *(a3 + 64);
            v90 = *(a3 + 72);
            LODWORD(v91) = *(a3 + 88);
            re::FixedArray<short>::FixedArray(&v92, (a3 + 96));
            v95 = *(a3 + 120);
            objc_storeStrong(&v89, CGColorSpaceNameForGamut);
            v63 = CGImageRetain(v13);
            CGImageRefWithColorSpace = re::createCGImageRefWithColorSpace(a1, v63, buf, 0);
            if (v92 != 0.0)
            {
              if (v93)
              {
                (*(**&v92 + 40))();
                v93 = 0;
                v94 = 0;
              }

              v92 = 0.0;
            }

            if (CGImageRefWithColorSpace)
            {
LABEL_26:
              CGImageRelease(v13);
              CGImagePtr::CGImagePtr(buf, CGImageRefWithColorSpace);
              if (v21 >= 2)
              {
                v46 = *&buf[8];
                v45 = *&buf[16];
                v47 = v73;
                v48 = v74;
                if (*&buf[8] > v74 || *&buf[16] > v73)
                {
                  v49 = *re::pipelineLogObjects(v37);
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                  {
                    *v75 = 134219264;
                    v76 = v65;
                    v77 = 2048;
                    v78 = v66;
                    v79 = 2048;
                    v80 = v48;
                    v81 = 2048;
                    v82 = v47;
                    v83 = 2048;
                    v84 = v46;
                    v85 = 2048;
                    v86 = v45;
                    _os_log_debug_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_DEBUG, "Performing requested downsampling of %zux%zu image to %zux%zu (since Image I/O only downsampled to %zux%zu)", v75, 0x3Eu);
                  }

                  v50 = CGImageCreateByScaling();
                  if (v50)
                  {
                    v51 = v50;
                    CGImagePtr::CGImagePtr(image, 0);
                    CGImagePtr::swap(image, buf);
                    CGImageRelease(image[0]);
                    image[0] = 0;

                    CGColorSpaceRelease(space);
                    space = 0;
                    CGImagePtr::CGImagePtr(v67, v51);
LABEL_54:
                    CGImageRelease(*buf);
                    *buf = 0;

                    CGColorSpaceRelease(*&v88[16]);
LABEL_55:

                    goto LABEL_56;
                  }

                  v53 = *re::pipelineLogObjects(0);
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                  {
                    *v75 = 134218240;
                    v76 = v48;
                    v77 = 2048;
                    v78 = v47;
                    _os_log_error_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_ERROR, "Failed to scale source image to %zux%zu during texture creation, ignoring downsampling", v75, 0x16u);
                  }
                }
              }

              else if (*(a3 + 120) == 1)
              {
                v38 = [(__CFDictionary *)v15 objectForKeyedSubscript:*MEMORY[0x1E696DF28]];
                if (v38)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v39 = [v38 objectForKeyedSubscript:*MEMORY[0x1E696DF78]];
                    v40 = [v38 objectForKeyedSubscript:*MEMORY[0x1E696DF70]];
                    v41 = v40;
                    if (v39)
                    {
                      if (v40)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v42 = [v39 unsignedIntegerValue];
                            v43 = [v41 unsignedIntegerValue];
                            if ((BYTE8(v90) & 1) == 0)
                            {
                              BYTE8(v90) = 1;
                            }

                            v91 = v42;
                            v92 = v43;
                          }
                        }
                      }
                    }
                  }
                }
              }

              CGImagePtr::CGImagePtr(v67, buf);
              goto LABEL_54;
            }
          }
        }
      }
    }

    v35 = CGImageRetain(v13);
    CGImageRefWithColorSpace = re::createCGImageRefWithColorSpace(a1, v35, a3, 0);
    goto LABEL_26;
  }

  v52 = *re::pipelineLogObjects(0);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_ERROR, "Failed to create an image from a CGImageSource during texture creation", buf, 2u);
  }

  *(a5 + 48) = 0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  *(a5 + 56) = CGColorSpaceGetNumberOfComponents(0);
  *(a5 + 64) = CGColorSpaceGetModel(0);
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 104) = 0;
LABEL_56:
}

unint64_t re::anonymous namespace::getCGDownsampledImageSize(unint64_t this, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  if ((a3 ^ (a3 - 1)) <= a3 - 1)
  {
    v6 = (a3 - 1) | ((a3 - 1) >> 1) | (((a3 - 1) | ((a3 - 1) >> 1)) >> 2);
    v7 = v6 | (v6 >> 4) | ((v6 | (v6 >> 4)) >> 8);
    a3 = (v7 | (v7 >> 16) | ((v7 | (v7 >> 16)) >> 32)) + 1;
  }

  v8 = this / a3;
  if (this / a3 <= 1)
  {
    v8 = 1;
  }

  *a4 = v8;
  v9 = a2 / a3;
  if (a2 / a3 <= 1)
  {
    v9 = 1;
  }

  *a5 = v9;
  return this;
}

BOOL re::internal::colorSpaceIsExtendedOrHDR(re::internal *this, CGColorSpace *a2)
{
  if (CGColorSpaceUsesExtendedRange(this) || CGColorSpaceIsPQBased(this))
  {
    return 1;
  }

  return CGColorSpaceIsHLGBased(this);
}

const re::ImportGraphicsContext *re::createCGImageRefWithColorSpace(re *this, const re::ImportGraphicsContext *a2, CGImage *a3, const re::TextureFromImageOptions *a4)
{
  v4 = a4;
  v46 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 8);
  v9 = v8;
  if (!v8)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v10 = CGColorSpaceCreateWithName(v8);
  if (!v10)
  {
    v15 = *re::pipelineLogObjects(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      *buf = 136315138;
      CStringPtr = CFStringGetCStringPtr(v8, 0x8000100u);
      _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "Invalid colorSpaceNameOverride: %s", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v11 = v10;
  if (*(this + 16) == 1 && (*(a3 + 14) - 3) <= 1)
  {
    ColorSpace = CGImageGetColorSpace(a2);
    if ((CGColorSpaceEqualToColorSpace() & 1) == 0)
    {
      CopyWithColorSpace = CGImageCreateCopyWithColorSpace(a2, v11);
      if (CopyWithColorSpace)
      {
        v14 = CopyWithColorSpace;
        CGImageRelease(a2);
        a2 = v14;
      }

      else
      {
        Name = CGColorSpaceGetName(ColorSpace);
        v33 = CFStringGetCStringPtr(Name, 0x8000100u);
        v34 = CFStringGetCStringPtr(v8, 0x8000100u);
        v35 = *re::pipelineLogObjects(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          CStringPtr = v33;
          v40 = 2080;
          v41 = v34;
          _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "Failed to create CGImage from Source ColorSpace: %s to Override ColorSpace: %s", buf, 0x16u);
        }
      }
    }
  }

LABEL_11:
  CGColorSpaceRelease(v11);
  if (v4)
  {
    Width = CGImageGetWidth(a2);
    Height = CGImageGetHeight(a2);
    v36 = 0;
    v37 = 0;
    v19 = *(a3 + 2) == 1 ? *(a3 + 4) : 1;
    v20 = v19;
    v21 = re::internal::downsampleFactorToFitDeviceLimits(this, 2, 0, 0, 0);
    v23 = v21 <= v19 ? v19 : v21;
    if (v23 >= 2)
    {
      v24 = v21;
      v26 = v36;
      v27 = v37;
      if (Width > v37 || Height > v36)
      {
        v28 = *re::pipelineLogObjects(CGDownsampledImageSize);
        if (v24 <= v20)
        {
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218752;
            CStringPtr = Width;
            v40 = 2048;
            v41 = Height;
            v42 = 2048;
            v43 = v27;
            v44 = 2048;
            v45 = v26;
            _os_log_debug_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEBUG, "Performing requested downsampling of %zux%zu image to %zux%zu", buf, 0x2Au);
          }
        }

        else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218752;
          CStringPtr = Width;
          v40 = 2048;
          v41 = Height;
          v42 = 2048;
          v43 = v27;
          v44 = 2048;
          v45 = v26;
          _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "Downsampling imported image to match device limits, from %zux%zu image to %zux%zu", buf, 0x2Au);
        }

        v29 = CGImageCreateByScaling();
        if (!v29)
        {
          v30 = *re::pipelineLogObjects(0);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            CStringPtr = v27;
            v40 = 2048;
            v41 = v26;
            _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "Failed to scale source image to %zux%zu during texture creation, ignoring downsampling", buf, 0x16u);
          }
        }

        CGImageRelease(a2);
        return v29;
      }
    }
  }

  return a2;
}

void re::createTextureFromCGImagePtr(uint64_t a1@<X0>, id *a2@<X1>, id *a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, re::Allocator *a6@<X5>, CGColorSpaceRef *a7@<X6>, unint64_t *a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, unsigned int *a10, uint64_t a11)
{
  v15 = a5;
  if (*(a5 + 28))
  {
    v21 = a1;
    v19 = x8_0;
    re::logTextureCompressionInfo("createTextureFromCGImagePtr", *a3, (a5 + 28));
    v15 = a5;
    a1 = v21;
    x8_0 = v19;
  }
}

void re::anonymous namespace::createTextureWithImageUsingVImage(uint64_t a1@<X0>, unint64_t a2@<X1>, id *a3@<X2>, id *a4@<X3>, const char *a5@<X4>, uint64_t a6@<X5>, re::Allocator *a7@<X6>, CGColorSpaceRef *a8@<X7>, uint64_t a9@<X8>, unint64_t *a10, uint64_t a11, unsigned int *a12, uint64_t a13)
{
  v16 = a4;
  v501 = *MEMORY[0x1E69E9840];
  if (a2 >= 2)
  {
    *&v460[32] = 0;
    memset(v460, 0, 28);
    re::DynamicArray<float *>::setCapacity(v460, a2);
    v21 = *&v460[16];
    v22 = a1;
    v23 = a2;
    do
    {
      if (v21 >= *&v460[8])
      {
        re::DynamicArray<float *>::growCapacity(v460, v21 + 1);
        v21 = *&v460[16];
      }

      v24 = *a1;
      a1 += 112;
      *(*&v460[32] + 8 * v21++) = v24;
      *&v460[16] = v21;
      ++*&v460[24];
      --v23;
    }

    while (v23);
    v16 = a4;
    v26 = re::internal::ensureImageArrayConsistency(*&v460[32], v21, [*a4 textureType], image);
    if ((image[0] & 1) == 0)
    {
      v30 = "(no label)";
      if (a5)
      {
        v30 = a5;
      }

      if (image[2])
      {
        v31 = image[3];
      }

      else
      {
        v31 = (&image[2] + 1);
      }

      re::DynamicString::format(buf, "Assembling texture '%s' from image array: %s", v25, v30, v31);
      re::DynamicString::DynamicString(v402, buf);
      *a9 = 0;
      v32 = v402[3];
      *(a9 + 8) = v402[0];
      *(a9 + 32) = v32;
      *(a9 + 16) = *&v402[1];
      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      if (image[0] & 1) == 0 && image[1] && (image[2])
      {
        (*(*image[1] + 40))();
      }

      if (*v460 && *&v460[32])
      {
        (*(**v460 + 40))();
      }

      return;
    }

    if (*v460 && *&v460[32])
    {
      (*(**v460 + 40))(v26);
    }

    a1 = v22;
  }

  v442 = vmovn_s64(*(a1 + 24));
  space = *(a1 + 48);
  v444 = *(a1 + 72);
  v445 = 0;
  memset(v446, 0, sizeof(v446));
  v369 = *(a6 + 72);
  v374 = *(a6 + 80);
  v376 = *(a6 + 84);
  v402[0] = 0;
  v382 = a3;
  v27 = a9;
  if ([*v16 textureType] == 7)
  {
    [*v16 pixelFormat];
    memset(v460, 0, 56);
    MTLPixelFormatGetInfoForDevice();
    if ((*&v460[8] & 0x400) != 0)
    {
      *v460 = [*v16 copy];
      NS::SharedPtr<MTL::Texture>::operator=(v402, v460);
      if (*v460)
      {
      }

      isHDR = re::isHDR([*v16 pixelFormat]);
      v29 = *v16;
      if (isHDR)
      {
        [v29 setPixelFormat_];
      }

      else
      {
        [v29 pixelFormat];
        memset(v460, 0, 56);
        MTLPixelFormatGetInfoForDevice();
        if ((*&v460[8] & 0x800) != 0)
        {
          v33 = 71;
        }

        else
        {
          v33 = 70;
        }

        [*v16 setPixelFormat_];
      }

      [*v16 setStorageMode_];
    }
  }

  v358 = a2;
  v34 = &selRef_isLimitedRenderAsset;
  v35 = [*v16 pixelFormat];
  memset(v460, 0, 56);
  InfoForDevice = MTLPixelFormatGetInfoForDevice();
  if ((v460[8] & 1) == 0)
  {
    v37 = *re::pipelineLogObjects(InfoForDevice);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      LODWORD(image[0]) = 67109120;
      HIDWORD(image[0]) = v35;
      _os_log_error_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_ERROR, "Invalid pixel format %u during texture creation", image, 8u);
    }

    v429 = 0;
    v430 = 0;
    *&v431.bitmapInfo = unk_1E30FFC08;
LABEL_45:
    v433 = 0;
    *&v431.renderingIntent = 0;
    v432 = 0;
    v434 = -1;
    v441 = 0;
    v435 = 0;
    v436 = 0;
    v437 = 0u;
    v438 = 0u;
    v439 = 0;
    goto LABEL_46;
  }

  v482 = 0;
  v481 = 0u;
  memset(image, 0, sizeof(image));
  v38 = MTLPixelFormatGetInfoForDevice();
  if ((image[1] & 1) == 0)
  {
    v39 = *re::pipelineLogObjects(v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v280 = v39;
      Name = MTLPixelFormatGetName();
      *buf = 136446210;
      *&buf[4] = Name;
      _os_log_error_impl(&dword_1E1C61000, v280, OS_LOG_TYPE_ERROR, "Pixel format %{public}s is not supported by this MTLDevice", buf, 0xCu);
    }

    v429 = 0;
    v430 = 0;
    *&v431.bitmapInfo = unk_1E30FFC08;
    goto LABEL_45;
  }

  v52 = *(a6 + 20);
  if (v52 == 3)
  {
    v53 = a6;
    v357 = 0;
    v351 = [*v16 mipmapLevelCount] > 1;
  }

  else if (v52 || [*v16 mipmapLevelCount] < 2)
  {
    v53 = a6;
    v351 = 0;
    v357 = 0;
  }

  else
  {
    v53 = a6;
    v351 = (image[1] & 0x14) != 20;
    v357 = (image[1] & 0x14) == 20;
  }

  v362 = *a12;
  v360 = [*v16 swizzle];
  v349 = *a12;
  if ((BYTE1(image[1]) & 4) == 0)
  {
    v55 = v54;
    v56 = v351;
    v57 = !v351;
    if (v54)
    {
      v57 = 1;
    }

    a6 = v53;
    if ((v57 & 1) == 0)
    {
      v58 = *re::pipelineLogObjects(v54);
      v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
      v56 = 0;
      if (v59)
      {
        v60 = v58;
        v61 = MTLPixelFormatGetName();
        *buf = 136446210;
        *&buf[4] = v61;
        _os_log_impl(&dword_1E1C61000, v60, OS_LOG_TYPE_DEFAULT, "Pixel format %{public}s does not have a matching vImageScale variant required for mipmap generation on CPU.                              Texture won't have any mipmaps.", buf, 0xCu);

        v56 = 0;
      }
    }

    LOBYTE(v429) = 0;
    HIBYTE(v429) = v357;
    v430 = v56;
    LODWORD(v437) = 0;
    *(&v437 + 4) = 0;
    v435 = 0;
    v436 = 0;
    HIDWORD(v437) = v55;
    *&v438 = v369;
    *(&v438 + 1) = __PAIR64__(v376, v374);
    v439 = v362 != v360;
    if (v362 != v360)
    {
      v440 = v349;
    }

    v441 = v402[0];
    v34 = &selRef_isLimitedRenderAsset;
    goto LABEL_46;
  }

  v62 = [*v16 &selRef_resourceWithResourcePath_];
  v353 = v53;
  v63 = *(v53 + 12);
  Model = CGColorSpaceGetModel(space);
  v65 = Model != kCGColorSpaceModelMonochrome;
  v356 = a1;
  if (v63 != 2)
  {
    v66 = a8;
    if (v63 != 1)
    {
      if (v63)
      {
        v63 = 0;
        v347 = 0;
        v67 = 0;
        v68 = 0x2000;
        goto LABEL_521;
      }

      goto LABEL_501;
    }

LABEL_519:
    v68 = 8194;
    v347 = 1;
    v67 = 1;
    goto LABEL_520;
  }

  v263 = v444 & 0x1F;
  v66 = a8;
  if (v263 > 7)
  {
LABEL_614:
    v347 = 0;
    v67 = 0;
    if (Model)
    {
      v63 = 5;
    }

    else
    {
      v63 = 0;
    }

    if (Model)
    {
      v68 = 8198;
    }

    else
    {
      v68 = 0x2000;
    }

    goto LABEL_521;
  }

  v63 = 1;
  if (((1 << v263) & 0x98) == 0)
  {
    if (((1 << v263) & 6) != 0)
    {
      goto LABEL_519;
    }

    goto LABEL_614;
  }

LABEL_501:
  v347 = 0;
  v67 = 1;
  v68 = 8196;
  v63 = 3;
LABEL_520:
  v65 = 1;
LABEL_521:
  v368 = v16;
  v346 = v67;
  if (v442.i32[0] >= 9u && re::isHDR(v62))
  {
    if (v67)
    {
      v284 = 9;
    }

    else
    {
      v284 = 5;
    }

    if (v65)
    {
      v285 = 10;
    }

    else
    {
      v285 = 9;
    }

    v345 = v285;
    v286 = 16;
    if (v65)
    {
      v287 = 64;
    }

    else
    {
      v287 = 16;
    }

    if (!v65)
    {
      v284 = 2;
    }

    v343 = v284;
    v348 = v63 | 0x1100;
  }

  else
  {
    v286 = 8;
    if (v65)
    {
      v288 = v444 & 0x7000;
      if (v67)
      {
        v289 = 6;
      }

      else
      {
        v289 = 3;
      }

      if (v288 == 0x2000)
      {
        v63 = v68;
      }

      v348 = v63;
      if (v288 == 0x2000)
      {
        v290 = 8;
      }

      else
      {
        v290 = v289;
      }

      v343 = v290;
      v345 = 5;
      v287 = 32;
    }

    else
    {
      v348 = v63;
      v343 = 1;
      v287 = 8;
      v345 = 1;
    }
  }

  v291 = *v66;
  v292 = v446[1];
  v293 = CGColorSpaceRetain(*v66);
  v294 = v66[1];
  v295 = *(v66 + 4);
  ASTCDefaultMode = re::getASTCDefaultMode(v35);
  ASTCBlockSize = re::getASTCBlockSize(v35);
  if (ASTCBlockSize)
  {
    v298 = *(v353 + 40);
    LOBYTE(v429) = 1;
    HIBYTE(v429) = v357;
    v430 = v351;
    v431.bitsPerComponent = v286;
    v431.bitsPerPixel = v287;
    v431.colorSpace = v291;
    v431.bitmapInfo = v348;
    v431.version = 0;
    v431.decode = 0;
    *&v431.renderingIntent = v292;
    v432 = v293;
    v433 = v294;
    v434 = v295;
    v435 = __PAIR64__(ASTCDefaultMode, ASTCBlockSize);
    v436 = v347 & v346;
    LODWORD(v437) = v298;
    *(&v437 + 4) = v343;
    HIDWORD(v437) = v345;
    *&v438 = v369;
    *(&v438 + 1) = __PAIR64__(v376, v374);
    v439 = v362 != v360;
    if (v362 != v360)
    {
      v440 = v349;
    }

    v293 = 0;
    v441 = v402[0];
    a6 = v353;
    a1 = v356;
    v16 = v368;
  }

  else
  {
    v299 = *re::pipelineLogObjects(ASTCBlockSize);
    a1 = v356;
    if (os_log_type_enabled(v299, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = image[0];
      _os_log_error_impl(&dword_1E1C61000, v299, OS_LOG_TYPE_ERROR, "Invalid pixel format for ASTC compression: %{public}s", buf, 0xCu);
    }

    v429 = 0;
    v430 = 0;
    *&v431.bitmapInfo = unk_1E30FFC08;
    v433 = 0;
    *&v431.renderingIntent = 0;
    v432 = 0;
    v434 = -1;
    v441 = 0;
    v435 = 0;
    v436 = 0;
    v437 = 0u;
    v438 = 0u;
    v439 = 0;
    a6 = v353;
    v16 = v368;
  }

  v34 = &selRef_isLimitedRenderAsset;
  CGColorSpaceRelease(v293);
  v27 = a9;
LABEL_46:
  v40 = v402[0];
  if (v402[0])
  {
  }

  if (v431.version)
  {
    v41 = *v460;
    v42 = *&v460[16];
    v43 = *&v460[24];
    *v27 = 0;
    *(v27 + 8) = v41;
    *(v27 + 24) = v42;
    *(v27 + 32) = v43;
LABEL_636:
    if (v441)
    {

      v441 = 0;
    }

    CGColorSpaceRelease(v432);
    return;
  }

  memset(v425, 0, 24);
  v426 = 0u;
  memset(v427, 0, 28);
  v428 = 0uLL;
  v424 = (v430 | (8 * v429) | (2 * HIBYTE(v429)));
  if (CGColorSpaceEqualToColorSpace())
  {
    v44 = 0;
  }

  else
  {
    v44 = 16;
  }

  v424 = v424 & 0xFFEF | v44;
  *(&v428 + 1) = CGImageGetUTType(*a1);
  if ((*(a6 + 56) - 3) <= 1 && *a8)
  {
    v45 = CGColorSpaceGetName(*a8);
    v46 = *(&v426 + 1);
    *(&v426 + 1) = v45;
  }

  v355 = a1;
  memset(v423, 0, sizeof(v423));
  if (*v382 && ([*v16 storageMode] == 2 || (v429 & 0x100) != 0 || v429 == 1))
  {
    re::internal::BlitCommandQueue::init(v423, v382, &re::internal::textureUploadQueueName(void)::queueName);
  }

  v47 = [*v16 width];
  v48 = [*v16 height];
  v50 = [*v16 depth];
  if (*v382)
  {
    if ([*v16 textureType] == 7)
    {
      v51 = 2048;
    }

    else if (([(os_unfair_lock_s *)*v382 supportsFamily:1003]& 1) != 0)
    {
      v51 = 0x4000;
    }

    else
    {
      v69 = [(os_unfair_lock_s *)*v382 supportsFamily:2002];
      v51 = 0x2000;
      if (v69)
      {
        v51 = 0x4000;
      }
    }

    v72 = v47 > v51 || v48 > v51 || v50 > v51;
    if ([*v16 textureType] == 3)
    {
      if ([*v16 arrayLength] <= 0x800 && !v72)
      {
        goto LABEL_98;
      }

LABEL_237:
      re::DynamicString::format(v460, "Bad dimensions as GPU family doesnt support textures of following resolution: (%zu, %zu, %zu) ", v73, v47, v48, v50);
      re::DynamicString::DynamicString(image, v460);
      *v27 = 0;
      v138 = image[3];
      *(v27 + 8) = image[0];
      *(v27 + 32) = v138;
      *(v27 + 16) = *&image[1];
      if (*v460 && (v460[8] & 1) != 0)
      {
        (*(**v460 + 40))();
      }

LABEL_630:
      re::internal::BlitCommandQueue::~BlitCommandQueue(v423, v137);
      if (v427[0])
      {
        if (v428)
        {
          (*(*v427[0] + 40))();
        }

        *&v428 = 0;
        memset(v427, 0, 24);
        ++LODWORD(v427[3]);
      }

      if (v426)
      {
      }

      goto LABEL_636;
    }

    if (v72)
    {
      goto LABEL_237;
    }
  }

LABEL_98:
  v367 = v16;
  v363 = a13;
  v74 = *a10;
  if (*a10 <= a10[1])
  {
    v74 = a10[1];
  }

  v75 = a10[2];
  if (v74 > v75)
  {
    v75 = v74;
  }

  if (v47 <= v48)
  {
    v76 = v48;
  }

  else
  {
    v76 = v47;
  }

  if (v76 <= v50)
  {
    v76 = v50;
  }

  v77 = 64 - __clz(v75);
  v78 = v77 - 1;
  if (v75)
  {
    v79 = ~(-1 << (v77 - 1));
  }

  else
  {
    v79 = 0;
  }

  if (!v75)
  {
    v78 = 0;
  }

  if ((v79 & v75) != 0)
  {
    v80 = v77;
  }

  else
  {
    v80 = v78;
  }

  v81 = 64 - __clz(v76);
  v82 = v81 - 1;
  if (v76)
  {
    v83 = ~(-1 << (v81 - 1));
  }

  else
  {
    v83 = 0;
  }

  if (!v76)
  {
    v82 = 0;
  }

  if ((v83 & v76) != 0)
  {
    v84 = v81;
  }

  else
  {
    v84 = v82;
  }

  v361 = v84 - v80;
  v85 = *v382;
  v422 = 0;
  if (v429 == 1 && v85 && !v441)
  {
    v87 = a5;
    if (*(a6 + 120) == 1)
    {
      v88 = *re::pipelineLogObjects(v86);
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        *v460 = 0;
        _os_log_impl(&dword_1E1C61000, v88, OS_LOG_TYPE_DEFAULT, "'reduceMemoryPeak' option ignored when loading image with compression options", v460, 2u);
      }
    }

    *v447 = 0;
    v416 = 0;
    LOBYTE(v419) = 0;
    memset(v420, 0, sizeof(v420));
    v418 = 0;
    v417 = 8;
    v421 = dispatch_get_global_queue(21, 0);
    if (v358)
    {
      v89 = 0;
      v90 = v382;
      v91 = "(no label)";
      if (a5)
      {
        v91 = a5;
      }

      v373 = v91;
      v92 = v361;
      contexta = (v361 + 1);
      while (1)
      {
        image[0] = *v90;
        memset(&image[1], 0, 24);
        LODWORD(v481) = 1;
        *(&v481 + 1) = 0;
        v482 = 0;
        v492 = 0;
        v493 = 0;
        v491.f64[1] = 0.0;
        v494 = 0;
        v498 = 0;
        v495 = 0;
        v496 = 0;
        v497 = 0;
        v390[0] = 0;
        width = v467.width;
        height = v467.height;
        if (!HIDWORD(v469))
        {
          break;
        }

        v96 = *re::pipelineLogObjects(v93);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
        {
          *v460 = 0;
          _os_log_error_impl(&dword_1E1C61000, v96, OS_LOG_TYPE_ERROR, "Failed to create image buffer during texture creation", v460, 2u);
        }

        v98 = 0;
        v99 = *v460;
        v100 = *&v460[16];
        v101 = *&v460[24];
        *v27 = 0;
        *(v27 + 8) = v99;
        *(v27 + 24) = v100;
        *(v27 + 32) = v101;
LABEL_167:
        CGColorSpaceRelease(v479);
        v111 = v478;
        v479 = 0;
        v478 = 0;
        if (v111)
        {
          free(v111);
        }

        if (v476)
        {
          CGImageBlockSetRelease();
        }

        if (!v98)
        {
          goto LABEL_624;
        }

        if (!v89)
        {
          if (*(a6 + 52) == 1)
          {
            re::mtl::Device::makeSharedTexture(v460, *v367, v382);
            NS::SharedPtr<MTL::Texture>::operator=(&v422, v460);
            if (*v460)
            {
            }

            if (!v422)
            {
              v309 = [*v367 width];
              v336 = [*v367 height];
              re::DynamicString::format(v460, "Failed to allocate shared texture with dimensions %zu x %zu", v310, v309, v336);
LABEL_621:
              re::DynamicString::DynamicString(buf, v460);
              *v27 = 0;
              v313 = v449;
              *(v27 + 8) = *buf;
              *(v27 + 32) = v313;
              *(v27 + 16) = *&buf[8];
              if (*v460 && (v460[8] & 1) != 0)
              {
                (*(**v460 + 40))();
              }

LABEL_624:
              re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(image);
LABEL_625:
              if (*&v420[1])
              {
                astcenc_context_free(*&v420[1]);
                *&v420[1] = 0;
              }

              goto LABEL_628;
            }
          }

          else
          {
            re::mtl::Device::makeTexture(v460, *v367, v382);
            NS::SharedPtr<MTL::Texture>::operator=(&v422, v460);
            if (*v460)
            {
            }

            if (!v422)
            {
              v311 = [*v367 width];
              v337 = [*v367 height];
              re::DynamicString::format(v460, "Failed to allocate texture with dimensions %zu x %zu", v312, v311, v337);
              goto LABEL_621;
            }
          }
        }

        v112 = re::internal::BlitCommandQueue::blitCommandEncoder(v423);
        v401[0] = 0;
        re::internal::TextureInMetalBuffers::replaceTextureSlice(image, &v422, v92, v89, v112, v401);
        if (v430 || HIBYTE(v429) == 1)
        {
          re::internal::BlitCommandQueue::commit(v423);
          re::internal::BlitCommandQueue::waitUntilCompleted(v460, v423);
          if ((v460[0] & 1) == 0)
          {
            v114 = *re::pipelineLogObjects(v113);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
            {
              v134 = &v460[17];
              if (v460[16])
              {
                v134 = *&v460[24];
              }

              *buf = 136315394;
              *&buf[4] = v373;
              *&buf[12] = 2080;
              *&buf[14] = v134;
            }

            if (v460[0] & 1) == 0 && *&v460[8] && (v460[16])
            {
              (*(**&v460[8] + 40))();
            }
          }
        }

        re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(image);
        if (v430)
        {
          v115 = [*v367 mipmapLevelCount];
          if ([*v367 textureType] == 7)
          {
            v116 = *re::pipelineLogObjects(7);
            if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
            {
              *v460 = 0;
              _os_log_error_impl(&dword_1E1C61000, v116, OS_LOG_TYPE_ERROR, "Mipmaps generation is not supported for compressed 3D textures (rdar://118713689)", v460, 2u);
            }
          }

          else
          {
            v117 = v361 + 1;
            if (contexta < v115)
            {
              do
              {
                if (v117 > contexta)
                {
                  if (width >> v117 <= 1)
                  {
                    v118 = 1;
                  }

                  else
                  {
                    v118 = width >> v117;
                  }

                  if (height >> v117 <= 1)
                  {
                    v119 = 1;
                  }

                  else
                  {
                    v119 = height >> v117;
                  }

                  operator new();
                }

                v121 = v460[0];
                if (v460[0])
                {
                  v122 = re::internal::BlitCommandQueue::blitCommandEncoder(v423);
                  v400[0] = 0;
                  re::internal::TextureInMetalBuffers::replaceTextureSlice(&v460[8], &v422, v117, v89, v122, v400);
                }

                else
                {
                  v123 = &v460[17];
                  if (v460[16])
                  {
                    v123 = *&v460[24];
                  }

                  re::DynamicString::format(image, "Failed to compress mipmap %zu image buffer during texture creation: %s", v120, v117, v123);
                  re::DynamicString::DynamicString(buf, image);
                  *v27 = 0;
                  v124 = v449;
                  *(v27 + 8) = *buf;
                  *(v27 + 32) = v124;
                  *(v27 + 16) = *&buf[8];
                  if (image[0] && (image[1] & 1) != 0)
                  {
                    (*(*image[0] + 40))();
                  }
                }

                if (v460[0] == 1)
                {
                  re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v460[8]);
                }

                else if (*&v460[8] && (v460[16] & 1) != 0)
                {
                  (*(**&v460[8] + 40))();
                }

                if (!v121)
                {
                  goto LABEL_625;
                }
              }

              while (v115 != ++v117);
            }
          }
        }

        v34 = &selRef_isLimitedRenderAsset;
        if (HIBYTE(v429) == 1)
        {
          v125 = objc_autoreleasePoolPush();
          v126 = v422;
          v127 = [v422 arrayLength];
          if ([v126 textureType] - 5 >= 2)
          {
            v128 = v127;
          }

          else
          {
            v128 = 6 * v127;
          }

          v129 = v422;
          v130 = [v422 pixelFormat];
          v131 = [v129 newTextureViewWithPixelFormat:v130 textureType:objc_msgSend(v422 levels:sel_textureType) slices:v361, a11, 0, v128];
          v132 = re::internal::BlitCommandQueue::blitCommandEncoder(v423);
          re::mtl::BlitCommandEncoder::generateMipmaps(v132, v131);
          if (v131)
          {
          }

          objc_autoreleasePoolPop(v125);
          v34 = &selRef_isLimitedRenderAsset;
        }

        re::internal::BlitCommandQueue::commit(v423);
        re::internal::BlitCommandQueue::waitUntilCompleted(v460, v423);
        if ((v460[0] & 1) == 0)
        {
          v282 = *re::pipelineLogObjects(v133);
          if (os_log_type_enabled(v282, OS_LOG_TYPE_ERROR))
          {
            if (v460[16])
            {
              v320 = *&v460[24];
            }

            else
            {
              v320 = &v460[17];
            }

            LODWORD(image[0]) = 136315394;
            *(image + 4) = v373;
            WORD2(image[1]) = 2080;
            *(&image[1] + 6) = v320;
          }

          re::DynamicString::DynamicString(image, &v460[8]);
          *v27 = 0;
          v283 = image[3];
          *(v27 + 8) = image[0];
          *(v27 + 32) = v283;
          *(v27 + 16) = *&image[1];
          if (v460[0] & 1) == 0 && *&v460[8] && (v460[16])
          {
            (*(**&v460[8] + 40))(*&v460[8], *&v460[24]);
          }

          goto LABEL_625;
        }

        ++v89;
        v90 = v382;
        v92 = v361;
        if (v89 == v358)
        {
          v87 = a5;
          if (*&v420[1])
          {
            astcenc_context_free(*&v420[1]);
            *&v420[1] = 0;
          }

          goto LABEL_556;
        }
      }

      if ((v460[0] & 1) == 0)
      {
        v103 = *re::pipelineLogObjects(v102);
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v103, OS_LOG_TYPE_ERROR, "Failed to compress image buffer during texture creation", buf, 2u);
        }

        v98 = 0;
        v105 = *buf;
        v108 = *&buf[16];
        v109 = v449;
        *v27 = 0;
        *(v27 + 8) = v105;
        *(v27 + 24) = v108;
        *(v27 + 32) = v109;
        goto LABEL_162;
      }

      memset(v402, 0, sizeof(v402));
      v403 = 1;
      v404 = 0;
      v405 = 0;
      v409 = 0;
      v410 = 0;
      *(&v408 + 1) = 0;
      v411 = 0;
      v415 = 0;
      v412 = 0;
      v413 = 0;
      v414 = 0;
      re::Result<re::internal::TextureInMetalBuffers,re::DynamicString>::swapValue(buf, v460, v402);
      re::ObjCObject::operator=(image, buf);
      image[1] = *&buf[8];
      re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::operator=(&image[2], &buf[16]);
      re::DynamicArray<BOOL>::operator=(&v491.f64[1], &v454);
      v496 = v455;
      v497 = v456;
      if (v498)
      {
        if ((v457 & 1) == 0)
        {
          v498 = 0;
          goto LABEL_148;
        }
      }

      else
      {
        if ((v457 & 1) == 0)
        {
          goto LABEL_148;
        }

        v498 = 1;
      }

      v499 = v458;
      v500 = v459;
LABEL_148:
      re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(buf);
      re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v402);
      if (v430)
      {
        if (width >> 1 <= 1)
        {
          v106 = 1;
        }

        else
        {
          v106 = width >> 1;
        }

        if (height >> 1 <= 1)
        {
          v107 = 1;
        }

        else
        {
          v107 = height >> 1;
        }

        operator new();
      }

      if (v363)
      {
        if (v89 != v358 - 1)
        {
LABEL_161:
          v98 = 1;
LABEL_162:
          if (v460[0] == 1)
          {
            re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v460[8]);
          }

          else if (*&v460[8] && (v460[16] & 1) != 0)
          {
            (*(**&v460[8] + 40))();
          }

          goto LABEL_167;
        }

        v110 = *(v363 + 24);
        if (!v110)
        {
          goto LABEL_668;
        }

        (*(*v110 + 48))(v110);
      }

      v363 = 0;
      goto LABEL_161;
    }

LABEL_556:

LABEL_557:
    if (v441)
    {
      *v460 = v422;
      *&v460[8] = 0;
      re::internal::synchronizeTextureMipmaps(v460, v300);
      if (*&v460[8] != -1)
      {
        (off_1F5D0BE10[*&v460[8]])(image, v460);
      }

      *buf = re::getASTCBlockSize([v441 v34[204]]);
      *&buf[4] = re::getASTCDefaultMode([v441 v34[204]]);
      buf[8] = 0;
      *&buf[12] = 0;
      if (*(a6 + 24) == 4)
      {
        *&buf[12] = *(a6 + 40);
      }

      image[0] = v422;
      LODWORD(image[1]) = 0;
      re::createCompressedTextureData(image, *(a6 + 56), buf, v382, &v441, 0, v460);
      if (LODWORD(image[1]) != -1)
      {
        v301 = (off_1F5D0BE10[LODWORD(image[1])])(v402, image);
      }

      if (v460[0])
      {
        if (*&v460[16])
        {
          goto LABEL_669;
        }

        NS::SharedPtr<MTL::Buffer>::operator=(&v422, &v460[8]);
        v424 |= 8u;
      }

      else
      {
        v302 = *re::pipelineLogObjects(v301);
        if (os_log_type_enabled(v302, OS_LOG_TYPE_DEFAULT))
        {
          v303 = "(no label)";
          if (v87)
          {
            v303 = v87;
          }

          if (v460[16])
          {
            v304 = *&v460[24];
          }

          else
          {
            v304 = &v460[17];
          }

          LODWORD(image[0]) = 136315394;
          *(image + 4) = v303;
          WORD2(image[1]) = 2080;
          *(&image[1] + 6) = v304;
        }
      }

      v262 = re::Result<re::TextureData,re::DynamicString>::~Result(v460);
    }

    if (v439)
    {
      if (v429 == 1)
      {
        v424 |= 4u;
        v305 = *re::pipelineLogObjects(v262);
        if (os_log_type_enabled(v305, OS_LOG_TYPE_DEFAULT))
        {
          *v460 = 0;
          _os_log_impl(&dword_1E1C61000, v305, OS_LOG_TYPE_DEFAULT, "Compression + swizzle is not supported if device doesn't support swizzle: will uncompress.", v460, 2u);
        }
      }

      re::internal::createRepackedTexture(v382, &v422, v440, v460);
      NS::SharedPtr<MTL::Texture>::operator=(&v422, v460);
      if (*v460)
      {
      }
    }

    *v460 = v422;
    *&v460[8] = 0;
    re::TextureImportData::ImportReport::SourceInfo::setFromTexture(v425, v460);
    if (*&v460[8] != -1)
    {
      (off_1F5D0BE10[*&v460[8]])(image, v460);
    }

    image[0] = v422;
    LODWORD(image[1]) = 0;
    v460[0] = 0;
    *&v460[8] = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(v460, image);
    *&v460[16] = v424;
    *&v460[24] = *v425;
    *&v460[36] = *&v425[12];
    v306 = v426;
    v426 = 0u;
    *&v460[56] = v306;
    *&v460[72] = v427[0];
    memset(v427, 0, 24);
    *&v460[80] = *&v427[1];
    ++LODWORD(v427[3]);
    *&v460[96] = 1;
    v307 = v428;
    *&v428 = 0;
    *&v460[104] = v307;
    if (LODWORD(image[1]) != -1)
    {
      (off_1F5D0BE10[LODWORD(image[1])])(buf, image);
    }

    if (*&v460[8])
    {
      if (*&v460[8] != 1)
      {
        goto LABEL_669;
      }

      if (!*(*v460 + 48))
      {
        goto LABEL_596;
      }

      v308 = (*v460 + 24);
    }

    else
    {
      v308 = v460;
    }

    if (v87 && *v308 && *v87)
    {
      re::TextureData::setLabel(v460, v87);
    }

LABEL_596:
    re::Ok<re::TextureImportData &,re::TextureImportData>(v460, image);
    re::Result<re::TextureImportData,re::DynamicString>::Result(v27, image);
    if (v485)
    {
      if (v489)
      {
        (*(*v485 + 40))();
      }

      v489 = 0;
      v486 = 0;
      v487 = 0;
      v485 = 0;
      ++v488;
    }

    if (v483)
    {

      v483 = 0;
    }

    if (LODWORD(image[1]) != -1)
    {
      (off_1F5D0BE10[LODWORD(image[1])])(buf, image);
    }

    if (*&v460[72])
    {
      if (*&v460[104])
      {
        (*(**&v460[72] + 40))();
      }

      *&v460[104] = 0;
      memset(&v460[72], 0, 24);
      ++*&v460[96];
    }

    if (*&v460[56])
    {

      *&v460[56] = 0;
    }

    if (*&v460[8] != -1)
    {
      (off_1F5D0BE10[*&v460[8]])(image, v460);
    }

LABEL_628:
    if (v422)
    {
    }

    goto LABEL_630;
  }

  *&v420[1] = 0;
  v418 = 0;
  v416 = 0;
  v417 = 0;
  v419 = 0;
  v354 = a6;
  if (*(a6 + 120) != 1)
  {
    goto LABEL_243;
  }

  if (!v85 || v430)
  {
    v135 = *re::pipelineLogObjects(v86);
    if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
    {
      *v460 = 0;
      v136 = "Loading with lower memory peak: not supported if loading without Metal";
      goto LABEL_242;
    }
  }

  else if ((*(a6 + 24) - 3) > 1)
  {
    if (*(a6 + 72))
    {
      v135 = *re::pipelineLogObjects(v86);
      if (!os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_243;
      }

      *v460 = 0;
      v136 = "Loading with lower memory peak: not supported with image dimension override options";
      goto LABEL_242;
    }

    v264 = *(v355 + 104);
    if (v264)
    {
      v265 = re::UTTypes::HEIC(v264);
      v266 = CFStringCompare(v264, v265, 0);
      if (v266)
      {
        v267 = re::UTTypes::AVIF(v266);
        v268 = CFStringCompare(v264, v267, 0);
        if (v268)
        {
          v269 = re::UTTypes::JPEG(v268);
          v270 = CFStringCompare(v264, v269, 0);
          if (v270)
          {
            v271 = *re::pipelineLogObjects(v270);
            if (os_log_type_enabled(v271, OS_LOG_TYPE_DEFAULT))
            {
              *v460 = 0;
              _os_log_impl(&dword_1E1C61000, v271, OS_LOG_TYPE_DEFAULT, "For formats other than heic, jpg and avif, loading with lower memory peak can increase processing time with fewer memory benefits.", v460, 2u);
            }
          }
        }
      }
    }

    v272 = *(v355 + 8);
    v273 = *(v355 + 16);
    if (v273 * v272 >= 0x80000)
    {
      v139 = a13;
      if (*(v355 + 80))
      {
        v274 = v272;
        v276 = *(v355 + 88);
        v275 = *(v355 + 96);
        v277 = vcvtpd_u64_f64(v272 / v276);
        v278 = v273;
        v279 = vcvtpd_u64_f64(v273 / v275);
        if (v279 * v277 < 2)
        {
          v370 = 0;
          v371 = 1;
          goto LABEL_244;
        }

        v318 = 1;
        do
        {
          v319 = v318;
          if (v279)
          {
            if ((v277 & 1) != 0 && (v277 < 2 || v277 <= v279))
            {
              v279 >>= v279 > 1;
            }

            else
            {
              v277 >>= 1;
            }
          }

          else
          {
            v279 >>= 1;
          }

          v318 = 0;
        }

        while ((v319 & 1) != 0);
        v14 = v276 * v277;
        v13 = v275 * v279;
      }

      else
      {
        v274 = v272;
        v314 = 1;
        v315 = *(v355 + 16);
        do
        {
          v316 = v314;
          v317 = v272 > v315;
          v315 >>= v272 <= v315;
          v272 >>= v317;
          v314 = 0;
        }

        while ((v316 & 1) != 0);
        v14 = v272;
        v13 = v315;
        v278 = v273;
      }

      v371 = vcvtpd_u64_f64(v274 / v14) * vcvtpd_u64_f64(v278 / v13);
      if (v371 >= 2)
      {
        v424 |= 0x200u;
      }

      v370 = 1;
      goto LABEL_244;
    }
  }

  else
  {
    v135 = *re::pipelineLogObjects(v86);
    if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
    {
      *v460 = 0;
      v136 = "Loading with lower memory peak: not supported with ASTC compression options";
LABEL_242:
      _os_log_impl(&dword_1E1C61000, v135, OS_LOG_TYPE_DEFAULT, v136, v460, 2u);
    }
  }

LABEL_243:
  v370 = 0;
  v371 = 1;
  v139 = a13;
LABEL_244:
  if (!v358)
  {
LABEL_497:
    v262 = re::DynamicArray<re::internal::TextureInMetalBuffers>::deinit(&v416);
    v87 = a5;
    a6 = v354;
    goto LABEL_557;
  }

  v342 = 0;
  v377 = 0;
  v140 = "(no label)";
  if (a5)
  {
    v140 = a5;
  }

  v340 = v140;
  v352 = v361 + 1;
  v341 = ~v84 + v80;
  v350 = v85;
  while (!v371)
  {
LABEL_496:
    if (++v377 == v358)
    {
      goto LABEL_497;
    }
  }

  v141 = 0;
  v375 = (v355 + 112 * v377);
  while (1)
  {
    contextb = objc_autoreleasePoolPush();
    if ((v370 & 1) == 0)
    {
      v364 = vcvtq_f64_u64(*(v375 + 8));
      CGImagePtr::CGImagePtr(image, v375);
      v490 = 0uLL;
      v491 = v364;
      CGImagePtr::CGImagePtr(v460, image);
      *&v460[112] = v490;
      *&v460[128] = v491;
      buf[0] = 1;
      CGImagePtr::CGImagePtr(&buf[8], v460);
      v453 = *&v460[112];
      v454 = *&v460[128];
      CGImageRelease(*v460);
      *v460 = 0;

      CGColorSpaceRelease(*&v460[48]);
      *&v460[48] = 0;
      CGImageRelease(image[0]);
      image[0] = 0;

      v154 = v482;
      goto LABEL_260;
    }

    v142 = *(v375 + 1);
    v143 = vcvtpd_u64_f64(v142 / v14);
    v144 = *(v375 + 2);
    v145 = vcvtpd_u64_f64(v144 / v13);
    v146 = v14 * (v141 % v143);
    v147 = v13 * (v141 / v143);
    v148 = v142 - v146;
    v149 = v146;
    v150 = v147;
    if (v141 % v143 == v143 - 1)
    {
      v151 = v148;
    }

    else
    {
      v151 = v14;
    }

    if (v141 / v143 == v145 - 1)
    {
      v152 = (v144 - v147);
    }

    else
    {
      v152 = v13;
    }

    v502.origin.x = v146;
    v502.origin.y = v147;
    v502.size.width = v151;
    v502.size.height = v152;
    v153 = CGImageCreateWithImageInRect(*v375, v502);
    if (v153)
    {
      CGImagePtr::CGImagePtr(v402, v153);
      CGImagePtr::CGImagePtr(image, v402);
      *&v490 = v149;
      *(&v490 + 1) = v150;
      v491.f64[0] = v151;
      v491.f64[1] = v152;
      CGImagePtr::CGImagePtr(v460, image);
      *&v460[112] = v490;
      *&v460[128] = v491;
      buf[0] = 1;
      CGImagePtr::CGImagePtr(&buf[8], v460);
      v453 = *&v460[112];
      v454 = *&v460[128];
      CGImageRelease(*v460);
      *v460 = 0;

      CGColorSpaceRelease(*&v460[48]);
      *&v460[48] = 0;
      CGImageRelease(image[0]);
      image[0] = 0;

      CGColorSpaceRelease(v482);
      v482 = 0;
      CGImageRelease(v402[0]);
      v402[0] = 0;

      v154 = v405;
LABEL_260:
      CGColorSpaceRelease(v154);
      goto LABEL_261;
    }

    buf[0] = 0;
    *&buf[8] = *v460;
    v449 = *&v460[16];
    *&v450 = *&v460[24];
LABEL_261:
    if (buf[0])
    {
      break;
    }

    v165 = *re::pipelineLogObjects(v155);
    if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
    {
      v176 = &buf[17];
      if (buf[16])
      {
        v176 = v449;
      }

      *v460 = 136315138;
      *&v460[4] = v176;
    }

    re::DynamicString::DynamicString(v460, &buf[8]);
    v161 = 0;
    *v27 = 0;
    v166 = *&v460[24];
    *(v27 + 8) = *v460;
    *(v27 + 32) = v166;
    *(v27 + 16) = *&v460[8];
LABEL_485:
    if (buf[0] == 1)
    {
      CGImageRelease(*&buf[8]);
      *&buf[8] = 0;

      CGColorSpaceRelease(v451);
    }

    else if (*&buf[8] && (buf[16] & 1) != 0)
    {
      (*(**&buf[8] + 40))();
    }

    objc_autoreleasePoolPop(contextb);
    if ((v161 & 1) == 0)
    {
      re::DynamicArray<re::internal::TextureInMetalBuffers>::deinit(&v416);
      goto LABEL_628;
    }

    if (++v141 == v371)
    {
      goto LABEL_496;
    }
  }

  v469 = 0;
  v468 = 0u;
  memset(&v467, 0, sizeof(v467));
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(0);
  LODWORD(v471) = CGColorSpaceGetModel(0);
  LODWORD(v472) = 0;
  LOBYTE(v473) = 0;
  v476 = 0;
  CGImagePtr::CGImagePtr(v460, &v467);
  memset(&v460[112], 0, 32);
  CGImagePtr::CGImagePtr(v402, &buf[8]);
  v407 = v453;
  v408 = v454;
  CGImagePtr::CGImagePtr(image, v460);
  CGImagePtr::swap(image, &buf[8]);
  CGImageRelease(image[0]);
  image[0] = 0;

  CGColorSpaceRelease(v482);
  v453 = *&v460[112];
  v454 = *&v460[128];
  CGImageRelease(*v460);
  *v460 = 0;

  CGColorSpaceRelease(*&v460[48]);
  *&v460[48] = 0;
  CGImageRelease(v467.data);
  v467.data = 0;

  CGColorSpaceRelease(v469);
  v156 = v377 == v358 - 1 && v141 == v371 - 1;
  v157 = !v156;
  if (v156)
  {
    CGImagePtr::CGImagePtr(v397, 0);
    CGImagePtr::swap(v397, v375);
    CGImageRelease(v397[0]);
    v397[0] = 0;

    CGColorSpaceRelease(v398);
    v398 = 0;
  }

  v396 = 0;
  if (HIDWORD(v482))
  {
    v159 = *re::pipelineLogObjects(v158);
    if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
    {
      *v460 = 0;
      _os_log_error_impl(&dword_1E1C61000, v159, OS_LOG_TYPE_ERROR, "Failed to create image buffer during texture creation", v460, 2u);
    }

    v161 = 0;
    v162 = *v460;
    v163 = *&v460[16];
    v164 = *&v460[24];
    *v27 = 0;
    *(v27 + 8) = v162;
    *(v27 + 24) = v163;
    *(v27 + 32) = v164;
    goto LABEL_480;
  }

  v167 = v396;
  if (v85)
  {
    v168 = image[3];
    if (([(os_unfair_lock_s *)*v382 supportsFamily:1003]& 1) != 0)
    {
      v169 = 0x4000;
    }

    else
    {
      v170 = [(os_unfair_lock_s *)*v382 supportsFamily:2002];
      v169 = 0x4000;
      if (!v170)
      {
        v169 = 0x2000;
      }
    }

    v171 = v169 * DWORD1(v481);
    if (v168 > v171 >> 3)
    {
      v172 = (image[2] * DWORD1(v481) + 7) >> 3;
      if (v172 <= v171 >> 3)
      {
        if (v167)
        {
          v365 = v139;
          if (image[1] >= 2)
          {
            v173 = v168;
            v174 = (image[2] * DWORD1(v481) + 7) >> 3;
            v175 = 1;
            do
            {
              memmove(image[0] + v174, image[0] + v173, v172);
              ++v175;
              v174 += v172;
              v173 += v168;
            }

            while (v175 < image[1]);
          }

          image[3] = v172;
          v34 = &selRef_isLimitedRenderAsset;
          v139 = v365;
          v85 = v350;
          goto LABEL_308;
        }

        memset(v447, 0, 32);
        v177 = MEMORY[0x1E6908310](v447, image[1]);
        if (v177)
        {
          v178 = v177;
          v179 = v139;
          v180 = *re::pipelineLogObjects(v177);
          if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
          {
            *v460 = 134217984;
            *&v460[4] = v178;
            _os_log_error_impl(&dword_1E1C61000, v180, OS_LOG_TYPE_ERROR, "Failed to allocate an image buffer to pack to maximum allowed row bytes (vImage error: %zd)", v460, 0xCu);
          }

          re::DynamicString::format(v460, "Failed to allocate an image buffer to pack to maximum allowed row bytes (vImage error: %zd)", v181, v178);
          v182 = *&v460[16];
          v183 = *v460;
          v184 = v460[8];
          LOBYTE(v467.data) = 0;
          v467.rowBytes = *&v460[16];
          *&v468 = *&v460[24];
          v467.height = *v460;
          v467.width = *&v460[8];
          re::DynamicString::DynamicString(v460, &v467.height);
          *a9 = 0;
          v185 = *&v460[24];
          *(a9 + 8) = *v460;
          *(a9 + 32) = v185;
          *(a9 + 16) = *&v460[8];
          if (v183 && (v184 & 1) != 0)
          {
            (*(*v183 + 40))(v183, v182);
          }

          v161 = 0;
          v139 = v179;
          v27 = a9;
LABEL_471:
          v85 = v350;
          goto LABEL_480;
        }

        v366 = v139;
        *&v447[24] = v172;
        if (image[1])
        {
          v186 = 0;
          v187 = 0;
          v188 = 0;
          do
          {
            memcpy((v187 + *v447), image[0] + v186, v172);
            v188 = (v188 + 1);
            v187 += v172;
            v186 += v168;
          }

          while (v188 < image[1]);
        }

        CGColorSpaceRelease(*v461);
        v189 = *&v460[144];
        *v461 = 0;
        *&v460[144] = 0;
        if (v189)
        {
          free(v189);
        }

        v139 = v366;
        v85 = v350;
        if (*&v460[104])
        {
          CGImageBlockSetRelease();
        }

        v34 = &selRef_isLimitedRenderAsset;
        v27 = a9;
      }
    }
  }

LABEL_308:
  if (v157 & 1 | (v139 == 0 || !v167))
  {
    if (v85)
    {
      goto LABEL_310;
    }

LABEL_326:
    v395 = *v367;
    if (v429 == 1)
    {
      *v460 = [*v367 copy];
      NS::SharedPtr<MTL::Texture>::operator=(&v395, v460);
      if (*v460)
      {
      }

      if (SDWORD1(v437) <= 5)
      {
        if (DWORD1(v437) != 1)
        {
          if (DWORD1(v437) == 2)
          {
            v201 = 25;
            goto LABEL_385;
          }

LABEL_379:
          v201 = 0;
          goto LABEL_385;
        }

        v219 = HIDWORD(v435) == 2;
        v220 = 10;
LABEL_382:
        if (v219)
        {
          v201 = v220 + 1;
        }

        else
        {
          v201 = v220;
        }

        goto LABEL_385;
      }

      if (DWORD1(v437) == 6)
      {
        v219 = HIDWORD(v435) == 2;
        v220 = 70;
        goto LABEL_382;
      }

      if (DWORD1(v437) != 9)
      {
        goto LABEL_379;
      }

      v201 = 115;
LABEL_385:
      [v395 setPixelFormat_];
    }

    *&v447[32] = 0;
    memset(v447, 0, 28);
    if (!v221)
    {
      v223 = *v460;
      v224 = *&v460[16];
      v225 = *&v460[24];
      *v27 = 0;
      *(v27 + 8) = v223;
      *(v27 + 24) = v224;
      *(v27 + 32) = v225;
      goto LABEL_452;
    }

    v222 = v395;
    v394 = v222;
    re::CPUTexture::Data::addMipAndFixAlignment(v447, &v394, image[0], image[1] * image[3]);
    if (v222)
    {

      v394 = 0;
    }

    if (v430)
    {
      v467.data = 0;
      if (v352 < [*v367 mipmapLevelCount])
      {
      }

      v27 = a9;
      v85 = v350;
    }

    else
    {
      [*v367 setMipmapLevelCount_];
    }

    re::make::shared::object<re::CPUTexture,NS::SharedPtr<MTL::TextureDescriptor> &,re::CPUTexture::Data>(&v395, v447, &v393);
    if (v429 == 1)
    {
      re::internal::createCompressedCPUTextureData(v393, SDWORD1(v437), SDWORD2(v437), v367, &v435, v361, v460);
      if (v460[0])
      {
        v424 |= 8u;
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v393, *&v460[8]);
        re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(v460);
        goto LABEL_398;
      }

      v229 = &v460[17];
      if (v460[16])
      {
        v229 = *&v460[24];
      }

      re::DynamicString::format(&v467, "Failed to compress image buffer during texture creation: %s", v226, v229);
      re::DynamicString::DynamicString(v390, &v467);
      *v27 = 0;
      *(v27 + 8) = *v390;
      *(v27 + 32) = v392;
      *(v27 + 16) = v391;
      if (v467.data && (v467.height & 1) != 0)
      {
        (*(*v467.data + 40))();
      }

      re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(v460);
LABEL_430:
      if (v393)
      {
      }

LABEL_452:
      re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v447);
      if (v395)
      {
      }

LABEL_479:
      v161 = 0;
      goto LABEL_480;
    }

LABEL_398:
    v227 = v393;
    if (*(v393 + 6) && a5 && *(v393 + 3) && *a5)
    {
      re::CPUTexture::setLabel(v393, a5);
      v227 = v393;
      v467.data = v393;
      if (!v393)
      {
        goto LABEL_406;
      }
    }

    else
    {
      v467.data = v393;
    }

    v228 = v227 + 8;
LABEL_406:
    LODWORD(v467.height) = 1;
    re::TextureImportData::TextureImportData(v460, &v467, &v424);
    if (LODWORD(v467.height) != -1)
    {
      (off_1F5D0BE10[LODWORD(v467.height)])(v390, &v467);
    }

    re::Ok<re::TextureImportData &,re::TextureImportData>(v460, &v467);
    re::Result<re::TextureImportData,re::DynamicString>::Result(v27, &v467);
    if (v472)
    {
      if (v476)
      {
        (*(*v472 + 40))();
      }

      v476 = 0;
      v473 = 0;
      v474 = 0;
      v472 = 0;
      ++v475;
    }

    if (NumberOfComponents)
    {

      NumberOfComponents = 0;
    }

    if (LODWORD(v467.height) != -1)
    {
      (off_1F5D0BE10[LODWORD(v467.height)])(v390, &v467);
    }

    if (*&v460[72])
    {
      if (*&v460[104])
      {
        (*(**&v460[72] + 40))();
      }

      *&v460[104] = 0;
      memset(&v460[72], 0, 24);
      ++*&v460[96];
    }

    if (*&v460[56])
    {

      *&v460[56] = 0;
    }

    if (*&v460[8] != -1)
    {
      (off_1F5D0BE10[*&v460[8]])(&v467, v460);
    }

    goto LABEL_430;
  }

  v200 = *(v139 + 24);
  if (!v200)
  {
    goto LABEL_668;
  }

  (*(*v200 + 48))(v200);
  v139 = 0;
  if (!v85)
  {
    goto LABEL_326;
  }

LABEL_310:
  v190 = [*v367 mipmapLevelCount];
  if ((*(v354 + 52) & 1) == 0 && [*v367 storageMode] != 2)
  {
    if (!(v141 | v377))
    {
      re::mtl::Device::makeTexture(v460, *v367, v382);
      NS::SharedPtr<MTL::Texture>::operator=(&v422, v460);
      if (*v460)
      {
      }

      if (!v422)
      {
        v242 = [*v367 width];
        v243 = [*v367 height];
        re::DynamicString::format(v460, "Failed to allocate texture with dimensions %zu x %zu", v244, v242, v243);
        re::DynamicString::DynamicString(&v467, v460);
        *v27 = 0;
        rowBytes = v467.rowBytes;
        *(v27 + 8) = v467.data;
        *(v27 + 32) = rowBytes;
        *(v27 + 16) = *&v467.height;
        if (*v460 && (v460[8] & 1) != 0)
        {
          (*(**v460 + 40))();
        }

        v161 = 0;
        v34 = &selRef_isLimitedRenderAsset;
        v85 = v350;
        goto LABEL_480;
      }
    }

    memset(v447, 0, 24);
    v383[0] = 1;
    v384 = v407;
    v385 = v408;
    {
      v214 = [*v367 width];
      v215 = [*v367 height];
      re::DynamicString::format(v460, "Failed to allocate buffer for texture with dimensions %zu x %zu", v216, v214, v215);
      re::DynamicString::DynamicString(&v467, v460);
      *v27 = 0;
      v218 = v467.rowBytes;
      *(v27 + 8) = v467.data;
      *(v27 + 32) = v218;
      *(v27 + 16) = *&v467.height;
      if (*v460 && (v460[8] & 1) != 0)
      {
        (*(**v460 + 40))();
      }

      v34 = &selRef_isLimitedRenderAsset;
      v85 = v350;
      re::internal::BlitCommandQueue::~BlitCommandQueue(v447, v217);
      goto LABEL_479;
    }

    if (v430)
    {
      *v390 = 0;
      if (v352 < v190)
      {
      }
    }

    re::internal::BlitCommandQueue::~BlitCommandQueue(v447, v212);
    v34 = &selRef_isLimitedRenderAsset;
    if (!(v157 & 1 | ((v429 & 0x100) == 0)))
    {
      goto LABEL_458;
    }

    v85 = v350;
    if (v342)
    {
LABEL_465:
      re::internal::BlitCommandQueue::commit(v423);
      re::internal::BlitCommandQueue::waitUntilCompleted(v460, v423);
      if ((v460[0] & 1) == 0)
      {
        v258 = *re::pipelineLogObjects(v252);
        if (os_log_type_enabled(v258, OS_LOG_TYPE_ERROR))
        {
          v261 = &v460[17];
          if (v460[16])
          {
            v261 = *&v460[24];
          }

          LODWORD(v467.data) = 136315394;
          *(&v467.data + 4) = v340;
          WORD2(v467.height) = 2080;
          *(&v467.height + 6) = v261;
        }

        re::DynamicString::DynamicString(&v467, &v460[8]);
        *v27 = 0;
        v259 = v467.rowBytes;
        *(v27 + 8) = v467.data;
        *(v27 + 32) = v259;
        *(v27 + 16) = *&v467.height;
        if (v460[0] & 1) == 0 && *&v460[8] && (v460[16])
        {
          (*(**&v460[8] + 40))();
        }

        v161 = 0;
        v342 = 1;
        goto LABEL_480;
      }
    }

    if (*(v354 + 120) == 1)
    {
      v253 = v139;
      v254 = v418;
      v418 = 0;
      if (v254)
      {
        v255 = *&v420[1];
        v256 = 224 * v254;
        do
        {
          re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v255);
          v255 = (v257 + 224);
          v256 -= 224;
        }

        while (v256);
      }

      v342 = 0;
      ++v419;
      v161 = 1;
      v139 = v253;
      goto LABEL_471;
    }

    v342 = 0;
    v161 = 1;
LABEL_480:
    CGColorSpaceRelease(v493);
    v260 = v492;
    v493 = 0;
    v492 = 0;
    if (v260)
    {
      free(v260);
    }

    if (v489)
    {
      CGImageBlockSetRelease();
    }

    CGImageRelease(v402[0]);
    v402[0] = 0;

    CGColorSpaceRelease(v405);
    goto LABEL_485;
  }

  v344 = v141 | v377;
  if (v417 < v190)
  {
    re::DynamicArray<re::internal::TextureInMetalBuffers>::setCapacity(&v416, v190);
  }

  *v460 = *v382;
  memset(&v460[8], 0, 24);
  *&v460[32] = 1;
  *&v460[40] = 0;
  *&v460[48] = 0;
  *&v460[144] = 0;
  *v461 = 0;
  *&v460[136] = 0;
  *&v461[8] = 0;
  v464 = 0;
  *&v461[16] = 0;
  v462 = 0;
  v463 = 0;
  v191 = v418;
  v192 = v361 + 1;
  if (v418 >= v352)
  {
    if (v418 > v352)
    {
      v193 = v139;
      v202 = 224 * (v361 + 1);
      do
      {
        re::internal::TextureInMetalBuffers::~TextureInMetalBuffers((*&v420[1] + v202));
        ++v192;
        v202 += 224;
      }

      while (v192 < v418);
      goto LABEL_336;
    }
  }

  else
  {
    if (v417 < v352)
    {
      re::DynamicArray<re::internal::TextureInMetalBuffers>::setCapacity(&v416, v352);
      v191 = v418;
    }

    v193 = v139;
    if (v191 < v352)
    {
      v194 = v341 + v191;
      v195 = 224 * v191;
      do
      {
        v196 = *&v420[1] + v195;
        *v196 = *v460;
        *(v196 + 8) = *&v460[8];
        re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(v196 + 16, &v460[16]);
        re::DynamicArray<BOOL>::DynamicArray(v196 + 136, &v460[136]);
        v197 = v462;
        *(v196 + 184) = v463;
        *(v196 + 176) = v197;
        LODWORD(v197) = v464;
        *(v196 + 192) = v464;
        if (v197 == 1)
        {
          v198 = v465;
          *(v196 + 216) = v466;
          *(v196 + 200) = v198;
        }

        v195 += 224;
      }

      while (!__CFADD__(v194++, 1));
    }

LABEL_336:
    v418 = v361 + 1;
    ++v419;
    v139 = v193;
    v27 = a9;
  }

  re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v460);
  if (image[1])
  {
    v203 = image[3] * (image[1] - 1) + ((image[2] * DWORD1(v481) + 7) >> 3);
  }

  else
  {
    v203 = 0;
  }

  v467.data = &unk_1F5D0A468;
  LOBYTE(v467.height) = 0;
  v467.width = image[0];
  v467.rowBytes = v203;
  re::FixedArrayInputStream::FixedArrayInputStream(&v468, image[0], v203, -1);
  if (image[1])
  {
    v204 = image[3] * (image[1] - 1) + ((image[2] * DWORD1(v481) + 7) >> 3);
  }

  else
  {
    v204 = 0;
  }

  *v460 = image[2];
  *&v460[8] = image[1];
  *&v460[16] = 1;
  *&v447[8] = 0;
  *&v447[16] = 0;
  *v447 = &v447[8];
  v205 = re::internal::TextureInMetalBuffers::allocate(*&v420[1] + 224 * v418 - 224, v204, image[3], 1uLL, &v467, v460, 1uLL, v447);
  std::__tree<unsigned long long>::destroy(v447, *&v447[8]);
  if ((v205 & 1) == 0)
  {
    v209 = *v460;
    v210 = *&v460[16];
    v211 = *&v460[24];
    *v27 = 0;
    *(v27 + 8) = v209;
    *(v27 + 24) = v210;
    *(v27 + 32) = v211;
    goto LABEL_359;
  }

  if (v430)
  {
    v395 = 0;
    if (v352 < v190)
    {
    }
  }

  *&v461[8] = 0u;
  memset(v460, 0, 48);
  *&v460[48] = unk_1E30FFC08;
  memset(&v460[64], 0, 88);
  *v461 = 0u;
  *&v461[16] = -1;
  CGColorSpaceRelease(*v461);
  v207 = *&v460[144];
  *v461 = 0;
  *&v460[144] = 0;
  if (v207)
  {
    free(v207);
  }

  if (*&v460[104])
  {
    CGImageBlockSetRelease();
  }

  if (v139)
  {
    v208 = v157;
  }

  else
  {
    v208 = 1;
  }

  if (v208)
  {
    if (v344)
    {
      goto LABEL_436;
    }

LABEL_370:
    if (*(v354 + 52) == 1)
    {
      re::mtl::Device::makeSharedTexture(v460, *v367, v382);
    }

    else
    {
      re::mtl::Device::makeTexture(v460, *v367, v382);
    }

    NS::SharedPtr<MTL::Texture>::operator=(&v422, v460);
    if (*v460)
    {
    }

    if (v422)
    {
LABEL_436:
      v230 = v139;
      v231 = v418;
      v232 = v361;
      if (v418 <= v361)
      {
        goto LABEL_664;
      }

      v233 = *&v420[1] + 224 * v361;
      v234 = re::internal::BlitCommandQueue::blitCommandEncoder(v423);
      v387[0] = 1;
      v388 = v407;
      v389 = v408;
      re::internal::TextureInMetalBuffers::replaceTextureSlice(v233, &v422, v361, v377, v234, v387);
      if (v430 && v352 < v190)
      {
        v235 = 224 * (v361 + 1);
        v231 = (v361 + 1);
        while (1)
        {
          v236 = v418;
          if (v418 <= v231)
          {
            break;
          }

          v232 = *&v420[1];
          v237 = re::internal::BlitCommandQueue::blitCommandEncoder(v423);
          v386[0] = 0;
          re::internal::TextureInMetalBuffers::replaceTextureSlice(v232 + v235, &v422, v361, v377, v237, v386);
          ++v231;
          v235 += 224;
          if (v190 == v231)
          {
            goto LABEL_442;
          }
        }

        *v390 = 0;
        memset(v460, 0, 80);
        v321 = MEMORY[0x1E69E9C10];
        v322 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v447 = 136315906;
        *&v447[4] = "operator[]";
        *&v447[12] = 1024;
        if (v322)
        {
          v323 = 3;
        }

        else
        {
          v323 = 2;
        }

        *&v447[14] = 789;
        *&v447[18] = 2048;
        *&v447[20] = v231;
        *&v447[28] = 2048;
        *&v447[30] = v236;
        _os_log_send_and_compose_impl(v323, v390, v460, 80, &dword_1E1C61000, v321, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v447, 38, v338, v339);
        _os_crash_msg();
        __break(1u);
LABEL_664:
        *v390 = 0;
        memset(v460, 0, 80);
        v324 = MEMORY[0x1E69E9C10];
        v325 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v447 = 136315906;
        *&v447[4] = "operator[]";
        *&v447[12] = 1024;
        if (v325)
        {
          v326 = 3;
        }

        else
        {
          v326 = 2;
        }

        *&v447[14] = 789;
        *&v447[18] = 2048;
        *&v447[20] = v232;
        *&v447[28] = 2048;
        *&v447[30] = v231;
        _os_log_send_and_compose_impl(v326, v390, v460, 80, &dword_1E1C61000, v324, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v447, 38, v338, v339);
        _os_crash_msg();
        __break(1u);
      }

LABEL_442:
      v467.data = &unk_1F5D0A468;
      re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(&v468);
      v139 = v230;
      v27 = a9;
      v34 = &selRef_isLimitedRenderAsset;
      v85 = v350;
      if (v157 & 1 | ((v429 & 0x100) == 0))
      {
        goto LABEL_465;
      }

LABEL_458:
      if ([v422 textureType] == 5 || objc_msgSend(v422, sel_textureType) == 3)
      {
        v246 = v358;
      }

      else
      {
        v246 = 1;
      }

      v247 = v422;
      v248 = [v422 v34[204]];
      v249 = [v247 newTextureViewWithPixelFormat:v248 textureType:objc_msgSend(v422 levels:sel_textureType) slices:v361, a11, 0, v246];
      v250 = objc_autoreleasePoolPush();
      v251 = re::internal::BlitCommandQueue::blitCommandEncoder(v423);
      re::mtl::BlitCommandEncoder::generateMipmaps(v251, v249);
      objc_autoreleasePoolPop(v250);
      if (v249)
      {
      }

      v85 = v350;
      goto LABEL_465;
    }

    v238 = [*v367 width];
    v239 = [*v367 height];
    re::DynamicString::format(v460, "Failed to allocate shared texture with dimensions %zu x %zu", v240, v238, v239);
    re::DynamicString::DynamicString(v447, v460);
    *v27 = 0;
    v241 = *&v447[24];
    *(v27 + 8) = *v447;
    *(v27 + 32) = v241;
    *(v27 + 16) = *&v447[8];
    if (*v460 && (v460[8] & 1) != 0)
    {
      (*(**v460 + 40))();
    }

LABEL_359:
    v34 = &selRef_isLimitedRenderAsset;
    v85 = v350;
    v467.data = &unk_1F5D0A468;
    re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(&v468);
    goto LABEL_479;
  }

  v213 = *(v139 + 24);
  if (v213)
  {
    (*(*v213 + 48))(v213);
    v139 = 0;
    if (!v344)
    {
      goto LABEL_370;
    }

    goto LABEL_436;
  }

LABEL_668:
  std::__throw_bad_function_call[abi:nn200100]();
LABEL_669:
  v327 = std::__throw_bad_variant_access[abi:nn200100]();
  re::createTextureFromCGImagePtrs(v327, v328, v329, v330, v331, v332, v333, v334, v335, a10, a11, a12, a13);
}

void re::createTextureFromCGImagePtrs(uint64_t a1@<X0>, unint64_t a2@<X1>, id *a3@<X2>, id *a4@<X3>, const char *a5@<X4>, uint64_t a6@<X5>, re::Allocator *a7@<X6>, CGColorSpaceRef *a8@<X7>, uint64_t a9@<X8>, unint64_t *a10, uint64_t a11, unsigned int *a12, uint64_t a13)
{
  if (*(a6 + 28))
  {
    v20 = a1;
    v21 = a2;
    v15 = a8;
    v16 = a7;
    v17 = a5;
    v19 = a9;
    v18 = a4;
    re::logTextureCompressionInfo("createTextureFromCGImagePtrs", *a4, (a6 + 28));
    a4 = v18;
    a9 = v19;
    a1 = v20;
    a2 = v21;
    a5 = v17;
    a7 = v16;
    a8 = v15;
  }
}

CGColorSpaceRef re::getDestinationColorSpace@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, id *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  [*a3 pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  [*a3 pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  if (*(a1 + 24) > 8uLL || (v11 = *(a1 + 48)) != 0 && re::internal::colorSpaceIsExtendedOrHDR(v11, v10))
  {
    isHDR = 1;
  }

  else
  {
    isHDR = re::isHDR([*a3 pixelFormat]);
  }

  if ((*(a4 + 56) - 3) <= 1)
  {
    if (a2[16] == 1)
    {
      if (a2[19])
      {
        v13 = a2[20];
      }

      else
      {
        v13 = 0;
      }

      CGColorSpaceNameForGamut = re::ColorHelpers::getCGColorSpaceNameForGamut(0, 0, isHDR, v13);
    }

    else
    {
      CGColorSpaceNameForGamut = *MEMORY[0x1E695F128];
    }

    v21 = CGColorSpaceCreateWithName(CGColorSpaceNameForGamut);
    BaseColorSpace = v21;
    if (a2[16] == 1)
    {
      if (CGColorSpaceEqualToColorSpace())
      {
        goto LABEL_31;
      }
    }

    else
    {
      Model = CGColorSpaceGetModel(v21);
      if (CGColorSpaceGetModel(*(a1 + 48)) == Model)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_30;
  }

  v15 = *(a1 + 48);
  v16 = CGColorSpaceGetModel(v15);
  v18 = v16;
  if (v16 == kCGColorSpaceModelIndexed)
  {
    BaseColorSpace = CGColorSpaceGetBaseColorSpace(*(a1 + 48));
    v20 = CGColorSpaceGetModel(BaseColorSpace);
    CFRetain(BaseColorSpace);
    v15 = BaseColorSpace;
  }

  else
  {
    BaseColorSpace = 0;
    v20 = v16;
  }

  if (v20)
  {
    ColorSpaceTransferFunction = re::getColorSpaceTransferFunction(v15, v17);
    v24 = MEMORY[0x1E695F0F8];
    if ((ColorSpaceTransferFunction & 1) == 0)
    {
      v24 = MEMORY[0x1E695F0E0];
    }

    v25 = MEMORY[0x1E695F1A0];
    if ((ColorSpaceTransferFunction & 1) == 0)
    {
      v25 = MEMORY[0x1E695F128];
    }

    if (!isHDR)
    {
      v24 = v25;
    }

    BaseColorSpace = CGColorSpaceCreateWithName(*v24);
    goto LABEL_30;
  }

  if (v18 == kCGColorSpaceModelIndexed)
  {
LABEL_30:
    *a5 = BaseColorSpace;
    *(a5 + 8) = CGColorSpaceGetNumberOfComponents(BaseColorSpace);
    result = CGColorSpaceGetModel(BaseColorSpace);
    *(a5 + 16) = result;
    return result;
  }

LABEL_31:
  CGColorSpaceRelease(BaseColorSpace);
  result = CGColorSpaceRetain(*(a1 + 48));
  v27 = *(a1 + 56);
  *a5 = result;
  *(a5 + 8) = v27;
  *(a5 + 16) = *(a1 + 64);
  return result;
}

const __CFString *re::getColorSpaceTransferFunction(re *this, CGColorSpace *a2)
{
  BaseColorSpace = this;
  if (CGColorSpaceGetModel(this) == kCGColorSpaceModelIndexed)
  {
    BaseColorSpace = CGColorSpaceGetBaseColorSpace(BaseColorSpace);
  }

  result = CGColorSpaceGetName(BaseColorSpace);
  if (result)
  {
    v5 = result;
    if (re::colorSpaceNameHasSRGBTransfer(result, v4))
    {
      return 2;
    }

    else
    {
      return re::colorSpaceNameHasLinearTransfer(v5, v6);
    }
  }

  return result;
}

void re::createTextureDescriptorForCGImagePtr(uint64_t a1@<X0>, id *a2@<X1>, id *a3@<X2>, re::internal *a4@<X3>, int a5@<W4>, unint64_t *a6@<X5>, void *a7@<X6>, unsigned int *a8@<X7>, id *a9@<X8>)
{
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v63 = v16;
  v62 = v17;
  if (a5)
  {
    if (*(a4 + 2) == 1)
    {
      v18 = *(a4 + 4);
      if (v18 >= 2)
      {
      }
    }
  }

  [*a3 pixelFormat];
  BitsPerComponent = CGImageGetBitsPerComponent(*a1);
  DestinationTransferFunctionFromOptions = re::internal::getDestinationTransferFunctionFromOptions(a4, *(a1 + 48), (BitsPerComponent > 8));
  if (DestinationTransferFunctionFromOptions)
  {
    v21 = DestinationTransferFunctionFromOptions == 2;
  }

  else
  {
    v21 = (*(a4 + 14) - 3) < 2;
  }

  if (*a2)
  {
    v60 = [*a2 supportsTextureSwizzle];
  }

  else
  {
    v60 = 1;
  }

  v22 = *(a1 + 48);
  BaseColorSpace = CGColorSpaceGetBaseColorSpace(v22);
  if (!BaseColorSpace)
  {
    BaseColorSpace = v22;
  }

  NumberOfComponents = CGColorSpaceGetNumberOfComponents(BaseColorSpace);
  v26 = *(a4 + 1);
  if (v26 == 1)
  {
    v59 = 0;
    v27 = 1;
  }

  else
  {
    v27 = NumberOfComponents;
    if (v26 == 2)
    {
      if (!((NumberOfComponents != 1) | v60 & 1))
      {
        v27 = 3;
      }

      v59 = (NumberOfComponents != 1) ^ ((NumberOfComponents != 1) | v60);
    }

    else
    {
      if (v26 == 3)
      {
        re::internal::assertLog(4, v25, "assertion failure: '%s' (%s:line %i) Semantics should have been applied at this point", "!Unreachable code", "createTextureDescriptorForCGImagePtr", 3811);
        _os_crash("assertion failure: (!Unreachable code) Semantics should have been applied at this point");
        __break(1u);
        return;
      }

      v59 = 0;
    }
  }

  if (*a4 != 1)
  {
    v58 = a2;
    v57 = a8;
    if (*a4)
    {
      v37 = 0;
      goto LABEL_60;
    }

    v28 = *(a4 + 14);
    if (CGImageGetBitsPerComponent(*a1) > 8)
    {
      goto LABEL_32;
    }

    v30 = *(a1 + 48);
    if (v30)
    {
      IsExtendedOrHDR = re::internal::colorSpaceIsExtendedOrHDR(v30, v29);
      v32 = !v21;
      if (v21)
      {
        v33 = 71;
      }

      else
      {
        v33 = 10;
      }

      if (v32)
      {
        v34 = 70;
      }

      else
      {
        v34 = 71;
      }

      if (IsExtendedOrHDR)
      {
LABEL_32:
        v34 = 115;
        v33 = 25;
        v35 = 25;
LABEL_53:
        AlphaInfo = CGImageGetAlphaInfo(*a1);
        if (((v28 != 2) & (AlphaInfo < 8) & (0x9Eu >> AlphaInfo)) != 0)
        {
          v37 = v34;
        }

        else
        {
          v37 = v33;
        }

        if (v27 != 1)
        {
          v37 = v34;
        }

        if (AlphaInfo == kCGImageAlphaOnly)
        {
          v37 = v35;
        }

LABEL_60:
        v42 = v37;
        v43 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v37 width:v63 height:v62 mipmapped:*(a4 + 5) != 2];
        v44 = [v43 width];
        v45 = [v43 height];
        v46 = [v43 depth];
        v47 = v46;
        if (a6)
        {
          *a6 = v44;
          a6[1] = v45;
          a6[2] = v46;
        }

        if (a7)
        {
          *a7 = [v43 mipmapLevelCount];
        }

        v48 = [*a3 copy];
        *a9 = v48;
        [v48 setTextureType_];
        [v48 setWidth_];
        [v48 setHeight_];
        [v48 setDepth_];
        [v48 setArrayLength_];
        [v48 setPixelFormat_];
        [v48 setMipmapLevelCount_];
        [v48 setSampleCount_];
        if (*(a4 + 19))
        {
          [v48 setHeight_];
        }

        if (*(a4 + 18))
        {
          [v48 setWidth_];
        }

        if (*(a4 + 20))
        {
          [v48 setDepth_];
        }

        if (*(a4 + 21))
        {
          [v48 setMipmapLevelCount_];
        }

        v49 = [*a3 swizzle];
        v50 = BYTE1(v49);
        v51 = v49;
        v52 = BYTE2(v49);
        v53 = HIBYTE(v49);
        if (v59)
        {
          if (v49 - 2 < 3)
          {
            v51 = 2;
          }

          if (BYTE1(v49) - 2 < 3)
          {
            v50 = 2;
          }

          if (BYTE2(v49) - 2 < 3)
          {
            v52 = 2;
          }

          if ((HIBYTE(v49) - 2) < 3u)
          {
            v53 = 2;
          }
        }

        if (v60 && dyld_program_sdk_at_least())
        {
          v54 = (v53 << 24) | (v52 << 16) | (v50 << 8) | v51;
          if (((v54 != 84148994) & ~v59) != 0)
          {
            goto LABEL_89;
          }

          v55 = CGImageGetAlphaInfo(*a1);
          if (v55 - 1 >= 4 && v55 != kCGImageAlphaOnly && ([v48 usage] & 6) == 0)
          {
            v53 = 1;
          }
        }

        v54 = (v52 << 16) | (v53 << 24) | (v50 << 8) | v51;
        if (v54 == 84148994)
        {
LABEL_95:
          if (re::internal::textureMightNeedPixelFormatViewUsage(v58, [v48 pixelFormat], *(a4 + 14)))
          {
            [v48 setUsage_];
          }

          re::internal::applyCompressionOptionsToTextureDescriptor(v58, a4, 1, 0, a9);

          return;
        }

LABEL_89:
        if (v57)
        {
          *v57 = v54;
        }

        if (v60)
        {
          v56 = v54;
        }

        else
        {
          v56 = 84148994;
        }

        [v48 setSwizzle_];
        goto LABEL_95;
      }
    }

    else
    {
      v40 = !v21;
      if (v21)
      {
        v33 = 71;
      }

      else
      {
        v33 = 10;
      }

      if (v40)
      {
        v34 = 70;
      }

      else
      {
        v34 = 71;
      }
    }

    v35 = 1;
    goto LABEL_53;
  }

  v36 = [*a3 pixelFormat];
  if (v36)
  {
    v37 = v36;
    v58 = a2;
    v38 = *(a4 + 14);
    v57 = a8;
    if (v38 == 3)
    {
      if (v36 != 10)
      {
        goto LABEL_60;
      }
    }

    else if (v36 != 10 || v38 != 4)
    {
      goto LABEL_60;
    }

    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    *buf = 0u;
    MTLPixelFormatGetInfoForDevice();
    if (buf[8])
    {
      v37 = 11;
    }

    else
    {
      v37 = 25;
    }

    goto LABEL_60;
  }

  v39 = *re::pipelineLogObjects(v36);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_ERROR, "Invalid pixel format in texture descriptor", buf, 2u);
  }

  *a9 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
}

void re::createTextureDescriptorForCGImageSource(CGImageSource *a1@<X0>, uint64_t a2@<X1>, id *a3@<X2>, re::internal *a4@<X3>, unint64_t *a5@<X4>, void *a6@<X5>, int a7@<W6>, id *a8@<X8>)
{
  v16 = [MEMORY[0x1E695DF90] dictionary];
  [v16 setValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E696E0A8]];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:*(a4 + 44)];
  [v16 setValue:v17 forKey:*MEMORY[0x1E696E0A0]];

  [v16 setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E696E008]];
  if ((*(a2 + 21) & 1) == 0)
  {
    [v16 setValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E696E138]];
    [v16 setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E696E038]];
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, 0, v16);
  if (ImageAtIndex)
  {
    goto LABEL_6;
  }

  v19 = CGImageSourceCreateImageAtIndex(a1, 0, 0);
  if (v19)
  {
    ImageAtIndex = v19;
LABEL_6:
    CGImagePtr::CGImagePtr(image, ImageAtIndex);
    re::createTextureDescriptorForCGImagePtr(image, a2, a3, a4, a7, a5, a6, 0, a8);
    CGImageRelease(image[0]);
    image[0] = 0;

    CGColorSpaceRelease(image[6]);
    goto LABEL_7;
  }

  v20 = *re::pipelineLogObjects(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    LOWORD(image[0]) = 0;
    _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "Failed to create an image from a CGImageSource", image, 2u);
  }

  *a8 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
LABEL_7:
}

void re::copyTextureBytesToASTCCompression(id *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, re::DynamicString *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v11 = a4;
  v52 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8))
  {
    v19 = a2;
    v20 = a5;
    v21 = a6;
    v22 = a7;
    v17 = &unk_1F5D0BF18;
    v18 = &unk_1F5D0BF70;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    LODWORD(v26) = 0;
    v27 = 0u;
    memset(v28, 0, sizeof(v28));
    std::__function::__value_func<re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::__value_func[abi:nn200100](v50, a10);
    re::copyTextureBytesToASTCCompression(a9, &v17, a3, v11, a8, v50);
    std::__function::__value_func<re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::~__value_func[abi:nn200100](v50);
    v17 = &unk_1F5D0BF18;
    v18 = &unk_1F5D0BF70;
    if (v23)
    {
      if (v27)
      {
        (*(*v23 + 40))();
      }
    }
  }

  else
  {
    v19 = a2;
    v20 = a5;
    v21 = a6;
    v22 = a7;
    v17 = &unk_1F5D0BE30;
    v18 = &unk_1F5D0BE88;
    v15 = *a1;
    v23 = &unk_1F5D0BDD0;
    v24 = v15;
    v25 = v24;
    v26 = 0;
    v27 = 0u;
    LODWORD(v28[0]) = 1;
    *(v28 + 8) = 0u;
    v29 = 0;
    v30 = 0u;
    v31 = 0;
    v34 = 0;
    v32 = 0u;
    v33 = 0;

    v35 = a1;
    v16 = *a1;
    v39 = 0u;
    v38[0] = v16;
    v38[1] = 0;
    v40 = 1;
    v41 = 0u;
    v43 = 0u;
    v42 = 0;
    v44 = 0;
    v47 = 0;
    v45 = 0u;
    v46 = 0;
    v48 = 0u;
    v49 = 0;
    v36 = 0u;
    v37 = 0u;
    std::__function::__value_func<re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::__value_func[abi:nn200100](v51, a10);
    re::copyTextureBytesToASTCCompression(a9, &v17, a3, v11, a8, v51);
    std::__function::__value_func<re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::~__value_func[abi:nn200100](v51);
    v17 = &unk_1F5D0BE30;
    v18 = &unk_1F5D0BE88;
    re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v38);
    v23 = &unk_1F5D0BDD0;
    re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v25);
  }
}

void *re::copyTextureBytesToASTCCompression(uint64_t a1, uint64_t a2, __int128 *a3, int a4, re::DynamicString *a5, uint64_t a6)
{
  re::TextureData::pixelFormat(*(a2 + 16));
  v13 = v12;
  v14 = re::TextureData::swizzle(*(a2 + 16));
  v15 = (v14 & 0xFF00) == 0x500 || HIBYTE(v14) == 5;
  v17 = (v14 & 0xFF0000) == 0x50000 || v14 == 5 || v15;
  v18 = re::MTLToASTCPixelFormat(v13, v17);
  if (!v18)
  {
    result = re::DynamicString::format(&v44, "Unsupported metal format for ASTC compression: %d", v19, v13);
    v27 = v44;
    v28 = v45;
    *a1 = 0;
    *(a1 + 8) = v27;
    *(a1 + 24) = v28;
    return result;
  }

  v20 = v18;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  MTLPixelFormatGetInfoForDevice();
  v21 = re::TextureData::width(*(a2 + 16));
  if (v21 >> *(a2 + 24) <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21 >> *(a2 + 24);
  }

  v23 = re::TextureData::height(*(a2 + 16)) >> *(a2 + 24);
  if (v23 <= 1)
  {
    v23 = 1;
  }

  memset(v43, 0, sizeof(v43));
  v34 = v22;
  *&v35 = v23;
  *(&v35 + 1) = 1;
  (*(*a2 + 24))(&v40, a2, &v34, v43);
  if (v40)
  {
    v37 = *a3;
    v38 = v20;
    v39 = a4;
    v24 = (*(*a2 + 32))(a2);
    if (v34 == 1)
    {
      v25 = *(a6 + 24);
      if (!v25)
      {
        v29 = std::__throw_bad_function_call[abi:nn200100]();
        return re::colorSpaceNameHasSRGBTransfer(v29, v30);
      }

      result = (*(*v25 + 48))(v25, a2 + 8);
    }

    else
    {
      re::DynamicString::DynamicString(&v31, &v35);
      *a1 = 0;
      *(a1 + 8) = v31;
      *(a1 + 32) = v33;
      *(a1 + 16) = v32;
      result = v35;
      if (v35 && (BYTE8(v35) & 1) != 0)
      {
        result = (*(*v35 + 40))();
      }
    }
  }

  else
  {
    result = re::DynamicString::DynamicString(&v34, &v41);
    *a1 = 0;
    *(a1 + 8) = v34;
    *(a1 + 32) = v36;
    *(a1 + 16) = v35;
  }

  if ((v40 & 1) == 0)
  {
    result = v41;
    if (v41)
    {
      if (v42)
      {
        return (*(*v41 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::getLinearColorSpaceNameFromSRGB(const __CFString *this, const __CFString *a2)
{
  if (CFStringCompare(this, *MEMORY[0x1E695F0B8], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F198];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F0D8], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F0F0];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F1C0], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F1B0];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F110], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F108];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F120], 0) == kCFCompareEqualTo || CFStringCompare(this, *MEMORY[0x1E695F128], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F1A0];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F0E0], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F0F8];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F150], 0) == kCFCompareEqualTo || CFStringCompare(this, *MEMORY[0x1E695F168], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F1A8];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F0E8], 0))
  {
    return 0;
  }

  else
  {
    return *MEMORY[0x1E695F100];
  }
}

uint64_t re::getSRGBColorSpaceNameFromLinear(const __CFString *this, const __CFString *a2)
{
  if (CFStringCompare(this, *MEMORY[0x1E695F198], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F0B8];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F0F0], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F0D8];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F1B0], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F1C0];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F108], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F110];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F1A0], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F128];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F0F8], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F0E0];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F1A8], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F150];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F100], 0))
  {
    return 0;
  }

  else
  {
    return *MEMORY[0x1E695F0E8];
  }
}

void re::decompressCPUTexture(uint64_t *__return_ptr a1@<X8>, re *this@<X0>)
{
  v65 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  re::TextureData::pixelFormat(this);
  MTLPixelFormatGetInfoForDevice();
  re::TextureData::pixelFormat(this);
  v5 = at_block_format_bc1;
  if (v4 <= 499)
  {
    switch(v4)
    {
      case 0:
      case 1:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 20:
      case 22:
      case 23:
      case 24:
      case 25:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 40:
      case 41:
      case 42:
      case 43:
      case 53:
      case 54:
      case 55:
      case 60:
      case 62:
      case 63:
      case 64:
      case 65:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 80:
      case 81:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 103:
      case 104:
      case 105:
      case 110:
      case 112:
      case 113:
      case 114:
      case 115:
      case 123:
      case 124:
      case 125:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 166:
      case 167:
      case 170:
      case 172:
      case 174:
      case 176:
      case 178:
      case 179:
      case 180:
      case 181:
      case 182:
      case 183:
      case 240:
      case 241:
      case 250:
      case 252:
      case 253:
      case 255:
      case 260:
      case 261:
      case 262:
        goto LABEL_9;
      case 132:
      case 133:
        v5 = at_block_format_bc2;
        goto LABEL_43;
      case 134:
      case 135:
        v5 = at_block_format_bc3;
        goto LABEL_43;
      case 140:
      case 141:
      case 142:
      case 143:
        v5 = at_block_format_bc5;
        goto LABEL_43;
      case 150:
      case 151:
      case 152:
      case 153:
        v5 = at_block_format_bc6;
        goto LABEL_43;
      case 186:
      case 204:
        v5 = at_block_format_astc_4x4_ldr;
        goto LABEL_43;
      case 187:
      case 205:
        v5 = at_block_format_astc_5x4_ldr;
        goto LABEL_43;
      case 188:
      case 206:
        v5 = at_block_format_astc_5x5_ldr;
        goto LABEL_43;
      case 189:
      case 207:
        v5 = at_block_format_astc_6x5_ldr;
        goto LABEL_43;
      case 190:
      case 208:
        v5 = at_block_format_astc_6x6_ldr;
        goto LABEL_43;
      case 192:
      case 210:
        v5 = at_block_format_astc_8x5_ldr;
        goto LABEL_43;
      case 193:
      case 211:
        v5 = at_block_format_astc_8x6_ldr;
        goto LABEL_43;
      case 194:
      case 212:
        v5 = at_block_format_astc_8x8_ldr;
        goto LABEL_43;
      case 195:
      case 213:
        v5 = at_block_format_astc_10x5_ldr;
        goto LABEL_43;
      case 196:
      case 214:
        v5 = at_block_format_astc_10x6_ldr;
        goto LABEL_43;
      case 197:
      case 215:
        v5 = at_block_format_astc_10x8_ldr;
        goto LABEL_43;
      case 198:
      case 216:
        v5 = at_block_format_astc_10x10_ldr;
        goto LABEL_43;
      case 199:
      case 217:
        v5 = at_block_format_astc_12x10_ldr;
        goto LABEL_43;
      case 200:
      case 218:
        v5 = at_block_format_astc_12x12_ldr;
        goto LABEL_43;
      case 222:
        v5 = at_block_format_astc_4x4_hdr;
        goto LABEL_43;
      case 223:
        v5 = at_block_format_astc_5x4_hdr;
        goto LABEL_43;
      case 224:
        v5 = at_block_format_astc_5x5_hdr;
        goto LABEL_43;
      case 225:
        v5 = at_block_format_astc_6x5_hdr;
        goto LABEL_43;
      case 226:
        v5 = at_block_format_astc_6x6_hdr;
        goto LABEL_43;
      case 228:
        v5 = at_block_format_astc_8x5_hdr;
        goto LABEL_43;
      case 229:
        v5 = at_block_format_astc_8x6_hdr;
        goto LABEL_43;
      case 230:
        v5 = at_block_format_astc_8x8_hdr;
        goto LABEL_43;
      case 231:
        v5 = at_block_format_astc_10x5_hdr;
        goto LABEL_43;
      case 232:
        v5 = at_block_format_astc_10x6_hdr;
        goto LABEL_43;
      case 233:
        v5 = at_block_format_astc_10x8_hdr;
        goto LABEL_43;
      case 234:
        v5 = at_block_format_astc_10x10_hdr;
        goto LABEL_43;
      case 235:
        v5 = at_block_format_astc_12x10_hdr;
        goto LABEL_43;
      case 236:
        v5 = at_block_format_astc_12x12_hdr;
        goto LABEL_43;
      default:
        goto LABEL_43;
    }
  }

  if ((v4 - 520) <= 0x31 && ((1 << (v4 - 8)) & 0x3FC0FDFF007FFLL) != 0 || (v4 - 500) < 0xB || (v4 - 588) <= 0x29 && ((1 << (v4 - 76)) & 0x30003F80001) != 0)
  {
LABEL_9:
    v6 = *re::pipelineLogObjects(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = v50;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Failed to decompress unsupported format %{public}s", buf, 0xCu);
    }

    *a1 = 0;
    *(a1 + 2) = 0;
  }

  else
  {
LABEL_43:
    v39 = a1;
    if (*(this + 2) == 1)
    {
      v7 = *this;
      v49 = 0;
      v46[1] = 0;
      v47 = 0;
      v46[0] = 0;
      v48 = 0;
      re::TextureData::mipmapLevelCount(this);
      v9 = v8;
      re::DynamicArray<re::DynamicArray<float>>::resize(v46, v8);
      re::TextureData::pixelFormat(this);
      isHDR = re::isHDR(v10);
      v12 = 70;
      if ((WORD4(v50) & 0x800) != 0)
      {
        v12 = 71;
      }

      v13 = isHDR == 0;
      if (isHDR)
      {
        v14 = at_texel_format_rgba16_float;
      }

      else
      {
        v14 = at_texel_format_rgba8_unorm;
      }

      if (!v13)
      {
        v12 = 115;
      }

      v42 = v12;
      v15 = at_encoder_create(v14, at_alpha_not_premultiplied, v5, at_alpha_not_premultiplied, 0);
      FaceOrArrayLength = re::internal::getFaceOrArrayLength(this, v16);
      v40 = v9;
      if (v9)
      {
        v18 = 0;
        v41 = FaceOrArrayLength;
        while (1)
        {
          v45 = 0;
          v44 = 0u;
          memset(v43, 0, sizeof(v43));
          re::TextureData::width(this);
          re::TextureData::height(this);
          re::TextureData::depth(this);
          MTLGetTextureLevelInfoForDeviceWithOptions();
          if (re::TextureData::textureType(this) == 7)
          {
            v19 = v56;
          }

          else
          {
            v19 = v41;
          }

          v20 = *(v7 + 48);
          if (v20 <= v18)
          {
            *v54 = 0;
            v63 = 0u;
            v64 = 0u;
            memset(dest, 0, sizeof(dest));
            v30 = MEMORY[0x1E69E9C10];
            v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *src = 136315906;
            *&src[4] = "operator[]";
            *&src[12] = 1024;
            if (v31)
            {
              v32 = 3;
            }

            else
            {
              v32 = 2;
            }

            *&src[14] = 797;
            *&src[18] = 2048;
            *&src[20] = v18;
            v60 = 2048;
            v61 = v20;
            _os_log_send_and_compose_impl(v32, v54, dest, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", src, 38, v39, v40);
            _os_crash_msg();
            __break(1u);
LABEL_78:
            *v54 = 0;
            v63 = 0u;
            v64 = 0u;
            memset(dest, 0, sizeof(dest));
            v33 = MEMORY[0x1E69E9C10];
            v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *src = 136315906;
            *&src[4] = "operator[]";
            *&src[12] = 1024;
            if (v34)
            {
              v35 = 3;
            }

            else
            {
              v35 = 2;
            }

            *&src[14] = 789;
            *&src[18] = 2048;
            *&src[20] = v18;
            v60 = 2048;
            v61 = v20;
            _os_log_send_and_compose_impl(v35, v54, dest, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", src, 38, v39, v40);
            _os_crash_msg();
            __break(1u);
          }

          v21 = *(v7 + 64) + 40 * v18;
          if (*(v21 + 16))
          {
            v20 = v47;
            if (v47 <= v18)
            {
              goto LABEL_78;
            }

            v22 = v49 + 40 * v18;
            re::DynamicArray<BOOL>::resize(v22, *(&v44 + 1) * v19);
            if (v19)
            {
              break;
            }
          }

LABEL_63:
          if (++v18 == v40)
          {
            goto LABEL_64;
          }
        }

        v23 = 0;
        while (1)
        {
          memset(dest, 0, 40);
          *dest = *(v22 + 32) + *(&v44 + 1) * v23;
          *&dest[8] = vmovn_s64(*buf);
          *&dest[16] = 1;
          *&dest[24] = v44;
          *&src[8] = 0;
          *&src[16] = 0;
          *src = 0;
          *src = *(v21 + 32) + v58 * v23;
          *&src[8] = v57;
          v24 = at_encoder_decompress_texels(v15, src, dest, at_flags_default);
          if (v24)
          {
            break;
          }

          if (v19 == ++v23)
          {
            goto LABEL_63;
          }
        }

        v28 = v24;
        v29 = *re::pipelineLogObjects(v24);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *v54 = 134217984;
          *&v54[4] = v28;
          _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "Encoder failed (error: %ld) during texture creation", v54, 0xCu);
        }

        *v39 = 0;
        *(v39 + 2) = 0;
      }

      else
      {
LABEL_64:
        *buf = [*(v7 + 24) copy];
        [*buf setPixelFormat_];
        re::make::shared::object<re::CPUTexture,NS::SharedPtr<MTL::TextureDescriptor> &,re::CPUTexture::Data>(buf, v46, v43);
        v25 = *&v43[0];
        *v39 = *&v43[0];
        if (v25)
        {
          v26 = (v25 + 8);
          v27 = *&v43[0];
          *(v39 + 2) = 1;
          if (v27)
          {
          }
        }

        else
        {
          *(v39 + 2) = 1;
        }

        if (*buf)
        {
        }
      }

      re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v46);
    }

    else
    {
      v36 = std::__throw_bad_variant_access[abi:nn200100]();
      re::convertCPUTextureColorSpace(v36, v37, v38);
    }
  }
}

void re::convertCPUTextureColorSpace(int a1@<W0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v6 = a2[8];
  if (v6 && (v11 = 0, (re::ColorHelpers::getColorGamutFromCGColorSpaceName(v6, &v11) & 1) != 0) && v11 != a1)
  {
    re::TextureData::pixelFormat(a2);
    CGColorSpaceNameForPixelFormat = re::ColorHelpers::getCGColorSpaceNameForPixelFormat(v7, a1);
    v8 = CGColorSpaceCreateWithName(CGColorSpaceNameForPixelFormat);
    v9 = v8;
    if (v8)
    {
      v13[0] = &unk_1F5D0BFF8;
      v13[1] = &v9;
      v13[3] = v13;
      v12[0] = &unk_1F5D0C088;
      v12[1] = &CGColorSpaceNameForPixelFormat;
      v12[3] = v12;
      re::convertCPUTexture(a2, v13, v12, a3);
      std::__function::__value_func<void ()(re::TextureImportData::ImportReport &)>::~__value_func[abi:nn200100](v12);
      v8 = v9;
    }

    else
    {
      *(a3 + 16) &= 0xFC00u;
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 24) = 0;
      *(a3 + 56) = 0u;
      *(a3 + 72) = 0u;
      *(a3 + 84) = 0u;
      *(a3 + 104) = 0;
      *(a3 + 112) = 0;
    }

    CGColorSpaceRelease(v8);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) &= 0xFC00u;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 24) = 0;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 84) = 0u;
    *(a3 + 104) = 0;
    *(a3 + 112) = 0;
  }
}

void re::convertCPUTexture(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v119 = *MEMORY[0x1E69E9840];
  v8 = a1[8];
  v9 = v8;
  v96 = 0;
  v95 = 0u;
  memset(v94, 0, sizeof(v94));
  re::TextureData::pixelFormat(a1);
  MTLPixelFormatGetInfoForDevice();
  v92 = 0;
  v93 = 0;
  if (*(a1 + 2) != 1)
  {
    goto LABEL_78;
  }

  v10 = *a1;
  v61 = a3;
  if (v8)
  {
    v8 = CGColorSpaceCreateWithName(v8);
  }

  if (v95 == 4)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  v12 = [*(v10 + 24) pixelFormat];
  __src[0] = v8;
  __src[1] = CGColorSpaceGetNumberOfComponents(v8);
  LODWORD(v99) = CGColorSpaceGetModel(v8);
  CGColorSpaceRelease(v8);
  v84 = space;
  v85 = CGColorSpaceRetain(v89);
  v86 = v90;
  v87 = v91;
  re::TextureData::pixelFormat(a1);
  v83 = v13;
  v14 = *(a2 + 24);
  if (!v14)
  {
    goto LABEL_77;
  }

  (*(*v14 + 48))(v14, &space, &v84, &v83);
  v15 = *(v10 + 48);
  v63 = (v10 + 24);
  FaceOrArrayLength = re::internal::getFaceOrArrayLength((v10 + 24));
  v82 = 0;
  v79[1] = 0;
  v80 = 0;
  v79[0] = 0;
  v81 = 0;
  v62 = v15;
  v17 = re::DynamicArray<re::DynamicArray<float>>::resize(v79, v15);
  v71 = *(a1 + 8);
  v72[0] = *(a1 + 3);
  *(v72 + 12) = *(a1 + 36);
  v18 = a1[7];
  v73 = v18;
  if (v18)
  {
    v19 = (v18 + 8);
  }

  v74 = a1[8];
  re::DynamicArray<short>::DynamicArray(v75, a1 + 9);
  v78 = a1[14];
  v70 = *v63;
  v21 = v83;
  re::TextureData::pixelFormat(a1);
  if (v21 != v22)
  {
    __src[0] = [v70 copy];
    NS::SharedPtr<MTL::Texture>::operator=(&v70, __src);
    if (__src[0])
    {
    }

    [v70 setPixelFormat_];
  }

  v60 = v8;
  if (v62)
  {
    v23 = 0;
    v24 = FaceOrArrayLength;
    v25 = &selRef_setOwnerWithIdentity_;
    v26 = &selRef_childNodes;
    v27 = &selRef_setOwnerWithIdentity_;
    v58 = v24;
    v59 = v10;
    do
    {
      v28 = *(v10 + 48);
      if (v28 <= v23)
      {
        goto LABEL_69;
      }

      v29 = *(v10 + 64);
      v30 = [*(v10 + 24) v25[339]] >> v23;
      if (v30 <= 1)
      {
        v30 = 1;
      }

      v69 = v30;
      v31 = [*(v10 + 24) v26[322]];
      if (v31 >> v23 <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = v31 >> v23;
      }

      if ([*(v10 + 24) v27[250]] == 7)
      {
        v33 = [*v63 depth];
        if (v33 >> v23 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v33 >> v23;
        }
      }

      v68 = v29 + 40 * v23;
      v34 = *(v68 + 16);
      v67 = v103;
      v28 = v80;
      if (v80 <= v23)
      {
        goto LABEL_73;
      }

      v35 = v103;
      __n = v103 * v32;
      v66 = v34 / v24;
      re::DynamicArray<BOOL>::resize(v82 + 40 * v23, v103 * v32 * v24);
      v36 = 0;
      if (v24 <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = v24;
      }

      v65 = v37;
      do
      {
        v28 = v80;
        if (v80 <= v23)
        {
          v97 = 0;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          *__src = 0u;
          v49 = MEMORY[0x1E69E9C10];
          v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v112 = 136315906;
          *&v112[4] = "operator[]";
          v113 = 1024;
          if (v50)
          {
            v51 = 3;
          }

          else
          {
            v51 = 2;
          }

          v114 = 789;
          v115 = 2048;
          v116 = v23;
          v117 = 2048;
          v118 = v28;
          _os_log_send_and_compose_impl(v51, &v97, __src, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v112, 38, v58, v59);
          _os_crash_msg();
          __break(1u);
LABEL_69:
          v97 = 0;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          *__src = 0u;
          v52 = MEMORY[0x1E69E9C10];
          v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v112 = 136315906;
          *&v112[4] = "operator[]";
          v113 = 1024;
          if (v53)
          {
            v54 = 3;
          }

          else
          {
            v54 = 2;
          }

          v114 = 797;
          v115 = 2048;
          v116 = v23;
          v117 = 2048;
          v118 = v28;
          _os_log_send_and_compose_impl(v54, &v97, __src, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v112, 38, v58, v59);
          _os_crash_msg();
          __break(1u);
LABEL_73:
          v97 = 0;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          *__src = 0u;
          v55 = MEMORY[0x1E69E9C10];
          v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v112 = 136315906;
          *&v112[4] = "operator[]";
          v113 = 1024;
          if (v56)
          {
            v57 = 3;
          }

          else
          {
            v57 = 2;
          }

          v114 = 789;
          v115 = 2048;
          v116 = v23;
          v117 = 2048;
          v118 = v28;
          _os_log_send_and_compose_impl(v57, &v97, __src, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v112, 38, v58, v59);
          _os_crash_msg();
          __break(1u);
LABEL_77:
          std::__throw_bad_function_call[abi:nn200100]();
LABEL_78:
          std::__throw_bad_variant_access[abi:nn200100]();
        }

        v38 = *(v68 + 32);
        v39 = *(v82 + 40 * v23 + 32);
        v112[0] = 0;
        __src[0] = (v38 + v36 * v66);
        __src[1] = v32;
        *&v99 = v69;
        *(&v99 + 1) = v67;
        v100 = *&space.bitsPerComponent;
        v101 = *&space.bitmapInfo;
        v103 = 0;
        v102 = *&space.renderingIntent;
        v104 = v69;
        v105 = v32;
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v40 = CGColorSpaceRetain(space.colorSpace);
        v109 = v40;
        NumberOfComponents = CGColorSpaceGetNumberOfComponents(v40);
        Model = CGColorSpaceGetModel(v40);
        if (v41)
        {
          v42 = (v39 + v36 * __n);
          v43 = __src[0];
          if (*(&v99 + 1) == v35)
          {
            memcpy(v42, __src[0], __n);
          }

          else
          {
            v44 = v32;
            do
            {
              memcpy(v42, v43, v35);
              v43 += *(&v99 + 1);
              v42 += v35;
              --v44;
            }

            while (v44);
          }
        }

        else
        {
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) &= 0xFC00u;
          *(a4 + 32) = 0;
          *(a4 + 40) = 0;
          *(a4 + 24) = 0;
          *(a4 + 56) = 0u;
          *(a4 + 72) = 0u;
          *(a4 + 84) = 0u;
          *(a4 + 104) = 0;
          *(a4 + 112) = 0;
        }

        CGColorSpaceRelease(v109);
        v45 = *(&v108 + 1);
        v109 = 0;
        *(&v108 + 1) = 0;
        if (v45)
        {
          free(v45);
        }

        if (v106)
        {
          CGImageBlockSetRelease();
        }

        if ((v41 & 1) == 0)
        {
          goto LABEL_54;
        }

        ++v36;
      }

      while (v36 != v65);
      ++v23;
      v24 = v58;
      v10 = v59;
      v25 = &selRef_setOwnerWithIdentity_;
      v26 = &selRef_childNodes;
      v27 = &selRef_setOwnerWithIdentity_;
    }

    while (v23 != v62);
  }

  re::make::shared::object<re::CPUTexture,NS::SharedPtr<MTL::TextureDescriptor> &,re::CPUTexture::Data>(&v70, v79, v112);
  __src[0] = *v112;
  if (*v112)
  {
    v46 = (*v112 + 8);
    LODWORD(__src[1]) = 1;
    v47 = v61;
    if (*v112)
    {
    }
  }

  else
  {
    LODWORD(__src[1]) = 1;
    v47 = v61;
  }

  re::TextureImportData::ImportReport::SourceInfo::setFromTexture(v72, __src);
  v48 = *(v47 + 24);
  if (!v48)
  {
    goto LABEL_77;
  }

  (*(*v48 + 48))(v48, &v71);
  re::TextureImportData::TextureImportData(a4, __src, &v71);
  if (v60)
  {
    CGColorSpaceRelease(v60);
  }

  if (LODWORD(__src[1]) != -1)
  {
    (off_1F5D0BE10[LODWORD(__src[1])])(v112, __src);
  }

LABEL_54:
  if (v70)
  {
  }

  if (v75[0])
  {
    if (v77)
    {
      (*(*v75[0] + 40))();
    }

    v77 = 0;
    memset(v75, 0, sizeof(v75));
    ++v76;
  }

  if (v73)
  {
  }

  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v79);
  CGColorSpaceRelease(v85);
  CGColorSpaceRelease(v89);
  if (v93 != -1)
  {
    (off_1F5D0BE10[v93])(__src, &v92);
  }
}

uint64_t std::function<void ()(re::anonymous namespace::vImageFormatStorage &,re::anonymous namespace::vImageFormatStorage &,re::mtl::PixelFormat &)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void re::convertCPUTextureToFloat(__CFString **this, const re::TextureImportData *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = a2;
  re::TextureData::pixelFormat(this);
  v5 = v4;
  v19 = v4;
  v17 = 0;
  space = 0;
  v16 = 0;
  v6 = this[8];
  v7 = v6;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  MTLPixelFormatGetInfoForDevice();
  if (v6)
  {
    goto LABEL_14;
  }

  ComponentCount = re::getComponentCount(v5);
  isHDR = re::isHDR(v5);
  v10 = MEMORY[0x1E695F0F0];
  v11 = MEMORY[0x1E695F0F8];
  if (ComponentCount > 2)
  {
    if (isHDR)
    {
      v13 = *MEMORY[0x1E695F0F0];
LABEL_10:
      if (re::getComponentCount(v5) >= 3)
      {
        v14 = v10;
      }

      else
      {
        v14 = v11;
      }

      v15 = *v14;
      space = CGColorSpaceCreateWithName(v13);
      v17 = CGColorSpaceCreateWithName(v15);
LABEL_14:
      operator new();
    }

    v12 = MEMORY[0x1E695F198];
  }

  else
  {
    v12 = MEMORY[0x1E695F1A0];
    if (isHDR)
    {
      v12 = MEMORY[0x1E695F0F8];
    }
  }

  v13 = *v12;
  goto LABEL_10;
}

void re::convertFloatCPUTextureTo8Unorm_sRGB(__CFString **this)
{
  v14 = *MEMORY[0x1E69E9840];
  re::TextureData::pixelFormat(this);
  v4 = v3;
  v13 = v3;
  v5 = this[8];
  v6 = v5;
  if (!v5)
  {
    if (re::getComponentCount(v4) > 2)
    {
      v7 = MEMORY[0x1E695F198];
    }

    else
    {
      v7 = MEMORY[0x1E695F1A0];
    }

    v5 = *v7;
  }

  v10 = 1;
  re::ColorHelpers::getColorGamutFromCGColorSpaceName(v5, &v10);
  if (re::getComponentCount(v4) >= 3)
  {
    if (v10 - 1 > 2)
    {
      v8 = MEMORY[0x1E695F1C0];
    }

    else
    {
      v8 = qword_1E8721630[(v10 - 1)];
    }
  }

  else
  {
    v8 = MEMORY[0x1E695F128];
  }

  v9 = *v8;
  space = CGColorSpaceCreateWithName(v5);
  v11 = CGColorSpaceCreateWithName(v9);
  operator new();
}

void re::convertForMetalEmulationIfNeeded(uint64_t *__return_ptr a1@<X8>, re *this@<X0>)
{
  re::TextureData::pixelFormat(this);
  MTLPixelFormatGetInfoForDevice();
  MTLPixelFormatGetInfoForDevice();
  *a1 = 0;
}

void re::encodeTextureSliceToImageData(uint64_t *__return_ptr a1@<X8>, id *this@<X0>, const re::ImportGraphicsContext *a3@<X1>, const __CFString *a4@<X2>, const __CFString *a5@<X3>, const __CFString *a6@<X4>, float a7@<S0>, unint64_t a8@<X5>, uint64_t a9@<X6>, uint64_t a10@<X7>, unint64_t a11)
{
  v14 = a6;
  v16 = a3;
  v138 = *MEMORY[0x1E69E9840];
  valuePtr = a7;
  re::TextureData::pixelFormat(a3);
  v20 = v19;
  isASTCPixelFormat = re::isASTCPixelFormat(v19);
  if ((v20 - 10) > 0x3D || ((1 << (v20 - 10)) & 0x3000000000000003) == 0)
  {
    if (!isASTCPixelFormat || (isASTCPixelFormat = re::isHDR(v20), isASTCPixelFormat))
    {
      v26 = "Unsupported pixel format";
LABEL_41:
      v41 = v97;
      v42 = v98;
      v43 = v99;
      *a1 = 0;
      *(a1 + 1) = v41;
      a1[3] = v42;
      a1[4] = v43;
      return;
    }

    if (a5)
    {
      v117 = 0;
      v118 = 0;
      goto LABEL_5;
    }

LABEL_40:
    v26 = "Unspecified image format";
    goto LABEL_41;
  }

  if (!a5)
  {
    goto LABEL_40;
  }

  v117 = 0;
  v118 = 0;
  if (!isASTCPixelFormat)
  {
    v95 = v14;
    goto LABEL_29;
  }

LABEL_5:
  p_location = &location;
  re::createTextureSlice(v16, a8, a9, &location, decode, shouldInterpolate, v93);
  v95 = v14;
  if (v104)
  {
    if (v104 != 1)
    {
      goto LABEL_97;
    }

    if (!*(location + 6))
    {
      goto LABEL_20;
    }

    p_location = (location + 24);
  }

  if (*p_location)
  {
    re::decompressTexture(this, &location, &v97, decodea, shouldInterpolatea, v93);
    v24 = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v117, &v97);
    if (DWORD2(v97) != -1)
    {
      v24 = (off_1F5D0BE10[DWORD2(v97)])(v132, &v97);
    }

    if (v118)
    {
      if (v118 != 1)
      {
        goto LABEL_97;
      }

      if (!*(v117 + 48))
      {
LABEL_24:
        v27 = 0;
        a9 = 0;
        a8 = 0;
        goto LABEL_25;
      }

      v25 = (v117 + 24);
    }

    else
    {
      v25 = &v117;
    }

    if (*v25)
    {
      a9 = 0;
      a8 = 0;
      v27 = 1;
      v16 = &v117;
      goto LABEL_26;
    }

    goto LABEL_24;
  }

LABEL_20:
  v27 = 0;
LABEL_25:
  v28 = v97;
  v29 = v98;
  v30 = v99;
  *a1 = 0;
  *(a1 + 1) = v28;
  a1[3] = v29;
  a1[4] = v30;
LABEL_26:
  if (v104 != -1)
  {
    (off_1F5D0BE10[v104])(&v97, &location);
  }

  if (!v27)
  {
    goto LABEL_90;
  }

LABEL_29:
  type = a5;
  location = *this;
  v104 = 0;
  v105[0] = 0;
  v105[1] = 0;
  v106 = 1;
  v107 = 0;
  v108 = 0;
  memset(v109, 0, sizeof(v109));
  v110 = 0;
  v114 = 0;
  v111 = 0;
  v112 = 0;
  v113 = 0;
  v101 = 0;
  bytesPerRow = 0uLL;
  ComponentCount = re::getComponentCount(v20);
  v32 = re::TextureData::width(v16);
  v33 = re::TextureData::height(v16);
  v34 = *(v16 + 2);
  if (v34 == 1)
  {
    v36 = *v16;
    bytesPerRow = v100;
    v37 = *(v36 + 48);
    if (v37 <= a8)
    {
      v120 = 0;
      memset(v132, 0, 80);
      v79 = MEMORY[0x1E69E9C10];
      v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v121 = 136315906;
      *&v121[4] = "operator[]";
      *&v121[12] = 1024;
      if (v80)
      {
        v81 = 3;
      }

      else
      {
        v81 = 2;
      }

      *&v121[14] = 797;
      *&v121[18] = 2048;
      *&v121[20] = a8;
      *&v121[28] = 2048;
      *&v121[30] = v37;
      _os_log_send_and_compose_impl(v81, &v120, v132, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v121, 38, v93, type);
      _os_crash_msg();
      __break(1u);
    }

    v38 = v100 * v33;
    v39 = (*(*(v36 + 64) + 40 * a8 + 32) + v100 * v33 * (a9 + a10));
    goto LABEL_54;
  }

  if (v34)
  {
LABEL_97:
    v82 = std::__throw_bad_variant_access[abi:nn200100]();
    re::internal::copyTextureSliceToBuffer(v82, v83, v84, v85, v86, v87, v88);
    return;
  }

  *&bytesPerRow = v32 * ComponentCount;
  *(&bytesPerRow + 1) = v32 * ComponentCount * v32;
  re::internal::copyTextureSliceToBuffer(&v97, this, v16, &v101, a8, a9, a10);
  v35 = v97;
  if ((v97 & 1) == 0)
  {
    re::DynamicString::DynamicString(v132, (&v97 + 8));
    v38 = 0;
    v39 = 0;
    *a1 = 0;
    v40 = *(&v132[1] + 1);
    a1[1] = *&v132[0];
    a1[4] = v40;
    *(a1 + 1) = *(v132 + 8);
    goto LABEL_48;
  }

  memset(v121, 0, 32);
  *&v121[32] = 1;
  v123 = 0;
  v122 = 0;
  v126 = 0;
  v124 = 0;
  v125 = 0;
  v127 = 0;
  v131 = 0;
  v129 = 0;
  v128 = 0;
  v130 = 0;
  re::Result<re::internal::TextureInMetalBuffers,re::DynamicString>::swapValue(v132, &v97, v121);
  re::ObjCObject::operator=(&location, v132);
  v104 = *(&v132[0] + 1);
  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::operator=(v105, &v132[1]);
  re::DynamicArray<BOOL>::operator=(v109, v133);
  v112 = v133[5];
  v113 = v134;
  if ((v114 & 1) == 0)
  {
    if ((v135 & 1) == 0)
    {
      goto LABEL_45;
    }

    v114 = 1;
LABEL_44:
    v115 = v136;
    v116 = v137;
    goto LABEL_45;
  }

  if (v135)
  {
    goto LABEL_44;
  }

  v114 = 0;
LABEL_45:
  re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v132);
  re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v121);
  if ((v114 & 1) == 0)
  {
    re::internal::TextureInMetalBuffers::createTextureData(&location, 0);
  }

  v38 = *(&v115 + 1);
  v39 = v116;
LABEL_48:
  if (v97 == 1)
  {
    re::internal::TextureInMetalBuffers::~TextureInMetalBuffers((&v97 + 8));
  }

  else if (*(&v97 + 1) && (v98 & 1) != 0)
  {
    (*(**(&v97 + 1) + 40))();
  }

  if ((v35 & 1) == 0)
  {
    goto LABEL_89;
  }

LABEL_54:
  v44 = a4;
  if (!a4)
  {
    v45 = MEMORY[0x1E695F1A0];
    if (ComponentCount != 1)
    {
      v45 = MEMORY[0x1E695F198];
    }

    v44 = *v45;
  }

  v46 = CGColorSpaceCreateWithName(v44);
  if (ComponentCount == 4 && re::TextureData::swizzle(v16) >> 24 != 1 && v33)
  {
    v47 = 0;
    v48 = 3;
    while (1)
    {
      v49 = 4 * v32;
      v50 = v48;
      if (4 * v32)
      {
        break;
      }

LABEL_65:
      ++v47;
      v48 += bytesPerRow;
      if (v47 == v33)
      {
        goto LABEL_66;
      }
    }

    while (v39[v50] == 255)
    {
      v50 += 4;
      v49 -= 4;
      if (!v49)
      {
        goto LABEL_65;
      }
    }

    v51 = CGDataProviderCreateWithData(0, v39, v38, 0);
    v52 = 3;
  }

  else
  {
LABEL_66:
    v51 = CGDataProviderCreateWithData(0, v39, v38, 0);
    if (ComponentCount == 1)
    {
      v52 = 0;
    }

    else
    {
      v52 = 5;
    }
  }

  v53 = CGImageCreate(v32, v33, 8uLL, 8 * ComponentCount, bytesPerRow, v46, v52, v51, 0, 0, kCGRenderingIntentDefault);
  if (v53)
  {
    v54 = v53;
    Mutable = CFDataCreateMutable(0, 0);
    if (Mutable)
    {
      v56 = Mutable;
      v57 = *MEMORY[0x1E695E480];
      v58 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v58)
      {
        v59 = v58;
        v60 = CFNumberCreate(v57, kCFNumberFloatType, &valuePtr);
        CFDictionaryAddValue(v59, *MEMORY[0x1E696D338], v60);
        if (v95)
        {
          v61 = 875704422;
        }

        else
        {
          v61 = 875836518;
        }

        LODWORD(v132[0]) = v61;
        v62 = CFNumberCreate(v57, kCFNumberSInt32Type, v132);
        CFDictionaryAddValue(v59, *MEMORY[0x1E696E148], v62);
        v63 = CGImageDestinationCreateWithData(v56, type, 1uLL, 0);
        if (v63)
        {
          v64 = v63;
          CGImageDestinationAddImage(v63, v54, v59);
          v65 = CGImageDestinationFinalize(v64);
          if (v65)
          {
            *a1 = 1;
            a1[1] = v56;
          }

          else
          {
            v76 = v97;
            v77 = v98;
            v78 = v99;
            *a1 = 0;
            *(a1 + 1) = v76;
            a1[3] = v77;
            a1[4] = v78;
          }

          CFRelease(v64);
        }

        else
        {
          v73 = v97;
          v74 = v98;
          v75 = v99;
          *a1 = 0;
          *(a1 + 1) = v73;
          a1[3] = v74;
          a1[4] = v75;
        }

        CFRelease(v60);
        CFRelease(v62);
        CFRelease(v59);
        goto LABEL_87;
      }

      v69 = "Failed to create an optiosn dictionary";
    }

    else
    {
      v69 = "Failed to encode texture as an image.";
    }

    v70 = v97;
    v71 = v98;
    v72 = v99;
    *a1 = 0;
    *(a1 + 1) = v70;
    a1[3] = v71;
    a1[4] = v72;
LABEL_87:
    CFRelease(v54);
    goto LABEL_88;
  }

  v66 = v97;
  v67 = v98;
  v68 = v99;
  *a1 = 0;
  *(a1 + 1) = v66;
  a1[3] = v67;
  a1[4] = v68;
LABEL_88:
  CFRelease(v51);
  CGColorSpaceRelease(v46);
LABEL_89:
  re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&location);
LABEL_90:
  if (v118 != -1)
  {
    (off_1F5D0BE10[v118])(&v97, &v117);
  }
}

void re::internal::copyTextureSliceToBuffer(uint64_t a1, id *a2, id *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    a6 = a7;
  }

  v32 = a6;
  v20[0] = *a2;
  memset(&v20[1], 0, 24);
  v21 = 1;
  v22 = 0;
  v23 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v19 = *(a4 + 8);
  re::internal::TextureInMetalBuffers::copyTextureSliceToBuffer(v20, a2, a3, a5, &v32, &v19, v16);
  if (v16[0])
  {
    re::Ok<re::internal::TextureInMetalBuffers,re::internal::TextureInMetalBuffers>(&v13, v20);
    re::Result<re::internal::TextureInMetalBuffers,re::DynamicString>::Result(a1, &v13);
    re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v13);
  }

  else
  {
    re::DynamicString::DynamicString(&v13, &v17);
    *a1 = 0;
    *(a1 + 8) = v13;
    *(a1 + 32) = v15;
    *(a1 + 16) = v14;
  }

  if (v16[0] & 1) == 0 && v17 && (v18)
  {
    (*(*v17 + 40))();
  }

  re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v20);
}

__n128 re::Result<re::internal::TextureInMetalBuffers,re::DynamicString>::swapValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a2 + 8);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  *a1 = v7;
  *(a1 + 8) = v8;
  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(a1 + 16, (a2 + 24));
  re::DynamicArray<BOOL>::DynamicArray(a1 + 136, (a2 + 144));
  *(a1 + 176) = *(a2 + 184);
  *(a1 + 184) = *(a2 + 192);
  v9 = *(a2 + 200);
  *(a1 + 192) = v9;
  if (v9 == 1)
  {
    *(a1 + 200) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 224);
  }

  re::ObjCObject::operator=(v6, a3);
  *(a2 + 16) = *(a3 + 8);
  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::operator=(a2 + 24, (a3 + 16));
  re::DynamicArray<BOOL>::operator=(a2 + 144, (a3 + 136));
  v11 = *(a3 + 176);
  *(a2 + 192) = *(a3 + 184);
  *(a2 + 184) = v11;
  if (*(a2 + 200))
  {
    if ((*(a3 + 192) & 1) == 0)
    {
      *(a2 + 200) = 0;
      return result;
    }
  }

  else
  {
    if ((*(a3 + 192) & 1) == 0)
    {
      return result;
    }

    *(a2 + 200) = 1;
  }

  result = *(a3 + 200);
  *(a2 + 224) = *(a3 + 216);
  *(a2 + 208) = result;
  return result;
}

uint64_t *re::generateCPUTextureMipmaps@<X0>(uint64_t *__return_ptr a1@<X8>, id *this@<X0>)
{
  v86 = *MEMORY[0x1E69E9840];
  v4 = this + 3;
  if (!v5)
  {
    v10 = [*v4 pixelFormat];
    result = re::DynamicString::format(v70, "Unsupported scaling for pixel format %d", v11, v10);
    goto LABEL_5;
  }

  v6 = v5;
  v7 = [*v4 textureType];
  if (v7 == 7)
  {
LABEL_5:
    v12 = *v70;
    v13 = v71[0];
    v14 = v71[1];
    *a1 = 0;
    *(a1 + 1) = v12;
    a1[3] = v13;
    a1[4] = v14;
    return result;
  }

  FaceOrArrayLength = re::internal::getFaceOrArrayLength(this, v8);
  memset(v54, 0, sizeof(v54));
  v56 = unk_1E30FFC08;
  v57 = 0;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = -1;
  ComponentCount = re::getComponentCount([this[3] pixelFormat]);
  v53 = 0;
  BytesPerPixel = re::getBytesPerPixel(&v53, [this[3] pixelFormat]);
  LODWORD(v55) = 8 * BytesPerPixel / ComponentCount;
  DWORD1(v55) = 8 * BytesPerPixel;
  if (ComponentCount == 4)
  {
    v18 = 3;
  }

  else
  {
    v18 = 0;
  }

  LODWORD(v56) = v18;
  LODWORD(v43) = re::isHDR([this[3] pixelFormat]);
  if (v43)
  {
    if (v55 == 16)
    {
      v19 = 4096;
    }

    else
    {
      v19 = 0x2000;
    }

    LODWORD(v56) = v56 | v19 | 0x100;
  }

  if (this[6] < 2)
  {
LABEL_34:
    v33 = 1;
    goto LABEL_36;
  }

  HIDWORD(v43) = *a1;
  v20 = 1;
  v44 = a1[1];
  v45 = a1[3];
  v46 = a1[2];
  v47 = a1[4];
  while (1)
  {
    v22 = this[6];
    if (v22 <= v20 - 1)
    {
      a1[3] = v45;
      a1[4] = v47;
      a1[1] = v44;
      a1[2] = v46;
      *a1 = BYTE4(v43);
      *v79 = 0;
      v73 = 0u;
      v74 = 0u;
      *v71 = 0u;
      v72 = 0u;
      *v70 = 0u;
      a1 = MEMORY[0x1E69E9C10];
      v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v69[0]) = 136315906;
      *(v69 + 4) = "operator[]";
      WORD6(v69[0]) = 1024;
      if (v35)
      {
        v36 = 3;
      }

      else
      {
        v36 = 2;
      }

      *(v69 + 14) = 797;
      WORD1(v69[1]) = 2048;
      *(&v69[1] + 4) = v20 - 1;
      WORD6(v69[1]) = 2048;
      *(&v69[1] + 14) = v22;
      _os_log_send_and_compose_impl(v36, v79, v70, 80, &dword_1E1C61000, a1, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v69, 38, v42, v43);
      _os_crash_msg();
      __break(1u);
LABEL_45:
      a1[3] = v45;
      a1[4] = v47;
      a1[1] = v44;
      a1[2] = v46;
      *a1 = BYTE4(v43);
      *v79 = 0;
      v73 = 0u;
      v74 = 0u;
      *v71 = 0u;
      v72 = 0u;
      *v70 = 0u;
      a1 = MEMORY[0x1E69E9C10];
      v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v69[0]) = 136315906;
      *(v69 + 4) = "operator[]";
      WORD6(v69[0]) = 1024;
      if (v37)
      {
        v38 = 3;
      }

      else
      {
        v38 = 2;
      }

      *(v69 + 14) = 797;
      WORD1(v69[1]) = 2048;
      *(&v69[1] + 4) = v20;
      WORD6(v69[1]) = 2048;
      *(&v69[1] + 14) = v22;
      _os_log_send_and_compose_impl(v38, v79, v70, 80, &dword_1E1C61000, a1, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v69, 38, v42, v43);
      _os_crash_msg();
      __break(1u);
LABEL_49:
      a1[3] = v45;
      a1[4] = v47;
      a1[1] = v44;
      a1[2] = v46;
      *a1 = BYTE4(v43);
      v68 = 0;
      memset(v69, 0, 80);
      v39 = MEMORY[0x1E69E9C10];
      v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v79 = 136315906;
      *&v79[4] = "operator[]";
      v80 = 1024;
      if (v40)
      {
        v41 = 3;
      }

      else
      {
        v41 = 2;
      }

      v81 = 797;
      v82 = 2048;
      v83 = v20;
      v84 = 2048;
      v85 = v22;
      _os_log_send_and_compose_impl(v41, &v68, v69, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v79, 38, v42, v43);
      _os_crash_msg();
      __break(1u);
    }

    if (v22 <= v20)
    {
      goto LABEL_45;
    }

    v23 = this[8];
    v24 = &v23[5 * v20 - 5];
    v25 = *(v24 + 4);
    v26 = v23[5 * v20 + 4];
    *(v54 + 8) = vextq_s8(v65[0], v65[0], 8uLL);
    *(&v54[1] + 1) = v66;
    if (v43)
    {
      v49.i32[0] = v66;
      v49.i32[1] = DWORD2(v66);
      MetalEmulation::wrapTextureMip(this[3], (v20 - 1), &v49, v25, *(v24 + 2), v70);
      v48.i32[0] = v51;
      v48.i32[1] = DWORD2(v51);
      v22 = this[6];
      if (v22 <= v20)
      {
        goto LABEL_49;
      }

      v27.n128_f64[0] = MetalEmulation::wrapTextureMip(this[3], v20, &v48, v26, *(this[8] + 5 * v20 + 2), v69);
      MetalEmulation::computeMip(v70, v69, v27);
      goto LABEL_32;
    }

    if (FaceOrArrayLength)
    {
      break;
    }

LABEL_32:
    v65[4] = v50[4];
    v66 = v51;
    v67 = v52;
    v65[0] = v50[0];
    v65[1] = v50[1];
    v65[2] = v50[2];
    v65[3] = v50[3];
    if (++v20 >= this[6])
    {
      a1[3] = v45;
      a1[4] = v47;
      a1[1] = v44;
      a1[2] = v46;
      goto LABEL_34;
    }
  }

  v28 = 0;
  while (1)
  {
    *&v54[0] = v25;
    v29 = v50[0];
    v31 = v70[0];
    if (v70[0])
    {
      re::CPUTexture::setSliceAndFixAlignment(this, v20, v28, v70[0], v71[1]);
      v25 += *(&v66 + 1);
    }

    else
    {
      HIDWORD(v43) = 0;
      v44 = *&v69[0];
      v45 = *&v69[1];
      v46 = *(&v69[0] + 1);
      v47 = *(&v69[1] + 1);
    }

    CGColorSpaceRelease(space);
    v32 = v77;
    space = 0;
    v77 = 0;
    if (v32)
    {
      free(v32);
    }

    v21 = v75;
    if (v75)
    {
      v21 = CGImageBlockSetRelease();
    }

    if (!v31)
    {
      break;
    }

    if (FaceOrArrayLength == ++v28)
    {
      goto LABEL_32;
    }
  }

  a1[3] = v45;
  a1[4] = v47;
  a1[1] = v44;
  a1[2] = v46;
  v33 = BYTE4(v43);
LABEL_36:
  *a1 = v33;
  CGColorSpaceRelease(v63);
  v34 = *(&v62 + 1);
  *(&v62 + 1) = 0;
  *&v63 = 0;
  if (v34)
  {
    free(v34);
  }

  result = v60;
  if (v60)
  {
    return CGImageBlockSetRelease();
  }

  return result;
}

uint64_t re::anonymous namespace::determineScaleVariantFromPixelFormat(int a1)
{
  result = 1;
  if (a1 > 499)
  {
    v3 = a1 - 8;
    if ((a1 - 520) <= 0x31)
    {
      if (((1 << v3) & 0x3FC0CDFF007FFLL) != 0)
      {
        return 0;
      }

      if (((1 << v3) & 0x300000000) != 0)
      {
        return 13;
      }
    }

    if ((a1 - 500) >= 0xB)
    {
      v4 = a1 - 588;
      if (v4 > 0x29 || ((1 << v4) & 0x30003F80001) == 0)
      {
        return result;
      }
    }

    return 0;
  }

  switch(a1)
  {
    case 0:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 40:
    case 41:
    case 42:
    case 43:
    case 53:
    case 54:
    case 60:
    case 62:
    case 63:
    case 64:
    case 65:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 103:
    case 104:
    case 105:
    case 123:
    case 124:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 140:
    case 141:
    case 142:
    case 143:
    case 150:
    case 151:
    case 152:
    case 153:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 170:
    case 172:
    case 174:
    case 176:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
    case 240:
    case 241:
    case 250:
    case 252:
    case 253:
    case 255:
    case 260:
    case 261:
    case 262:
      return 0;
    case 20:
    case 23:
      result = 3;
      break;
    case 22:
    case 24:
      result = 2;
      break;
    case 25:
      result = 9;
      break;
    case 55:
      result = 4;
      break;
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 80:
    case 81:
      result = 5;
      break;
    case 110:
    case 113:
      result = 6;
      break;
    case 112:
    case 114:
      result = 7;
      break;
    case 115:
      result = 10;
      break;
    case 125:
      result = 8;
      break;
    default:
      return result;
  }

  return result;
}

void re::anonymous namespace::scaleImageBufferUsingVImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, vImage_Error a5, uint64_t a6)
{
  v28 = *MEMORY[0x1E69E9840];
  memset(&v21, 0, sizeof(v21));
  v10 = MEMORY[0x1E6908310](&v21, a4, a3, *(a2 + 36), 0);
  if (v10)
  {
    v11 = v10;
    v12 = *re::pipelineLogObjects(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      width = v11;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Failed to allocate an image buffer during texture creation (vImage error: %zd)", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v14 = v13;
  if (v13 < 0)
  {
    v20 = *re::pipelineLogObjects(v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      width = v14;
      _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "Failed to get temp buffer size for image scaling during texture creation (vImage error: %zd)", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (v13)
  {
    v15 = *re::pipelineLogObjects(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      width = v21.width;
      v24 = 2048;
      height = v21.height;
      v26 = 2048;
      v27 = v14;
      _os_log_debug_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEBUG, "Image scaling to %lux%lu requires %zd bytes of temp buffer", buf, 0x20u);
    }
  }

  v16 = (*(*a6 + 32))(a6, v14, *MEMORY[0x1E69E9AC8]);
  if (v17)
  {
    v18 = v17;
    v19 = *re::pipelineLogObjects(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      width = v18;
      _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Failed to scale image during texture creation (vImage error: %zd)", buf, 0xCu);
    }

    (*(*a6 + 40))(a6, v16);
LABEL_14:
    free(v21.data);
LABEL_15:
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 160) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 48) = unk_1E30FFC08;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 168) = -1;
    return;
  }

  (*(*a6 + 40))(a6, v16);
}

void re::anonymous namespace::vImageBufferStorage::~vImageBufferStorage(re::_anonymous_namespace_::vImageBufferStorage *this)
{
  CGColorSpaceRelease(*(this + 19));
  v2 = *(this + 18);
  *(this + 18) = 0;
  *(this + 19) = 0;
  if (v2)
  {
    free(v2);
  }

  if (*(this + 13))
  {
    CGImageBlockSetRelease();
    *(this + 13) = 0;
    *(this + 15) = 0;
  }
}

uint64_t re::internal::createCompressedCPUTextureData@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, id *a4@<X3>, int *a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v73 = *MEMORY[0x1E69E9840];
  v64 = 0;
  v61[1] = 0;
  v62 = 0;
  v61[0] = 0;
  v63 = 0;
  v58 = 0;
  memset(v59, 0, sizeof(v59));
  v57[2] = 0;
  v57[0] = 0;
  v57[1] = 8;
  v60 = dispatch_get_global_queue(21, 0);
  v51 = a5;
  v54 = *a5;
  v55 = a2;
  v56 = a3;
  v14 = [*a4 mipmapLevelCount];
  LODWORD(v15) = re::internal::getFaceOrArrayLength(a4);
  re::DynamicArray<re::DynamicArray<float>>::resize(v61, v14);
  if (v14 <= a6)
  {
LABEL_23:
    re::make::shared::object<re::CPUTexture,NS::SharedPtr<MTL::TextureDescriptor> &,re::CPUTexture::Data>(a4, v61, (a7 + 8));
    *a7 = 1;
  }

  else
  {
    v16 = &selRef_setOwnerWithIdentity_;
    v17 = &selRef_setOwnerWithIdentity_;
    v15 = v15;
    v49 = v14;
    v50 = a7;
    v48 = v15;
LABEL_3:
    v18 = *(a1 + 48);
    if (v18 <= a6)
    {
      goto LABEL_38;
    }

    v19 = *(a1 + 64);
    if ([*a4 v16[250]] == 7)
    {
      v20 = [*a4 depth];
      if (v20 >> a6 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v20 >> a6;
      }
    }

    v21 = v19 + 40 * a6;
    v22 = *(v21 + 16);
    v23 = [*a4 v17[339]] >> a6;
    if (v23 <= 1)
    {
      v23 = 1;
    }

    v53.width = v23;
    v24 = [*a4 height] >> a6;
    if (v24 <= 1)
    {
      v24 = 1;
    }

    v53.height = v24;
    v25 = a1;
    v53.rowBytes = v71;
    a1 = v62;
    if (v62 <= a6)
    {
      goto LABEL_42;
    }

    height = v53.height;
    v27 = re::blockToSize(*v51);
    v28 = (v64 + 40 * a6);
    v29 = v15 * ((height + HIDWORD(v27) - 1) / HIDWORD(v27)) * ((v53.width + LODWORD(v27) - 1) / LODWORD(v27));
    if (v28[1] < 16 * v29)
    {
      re::DynamicArray<BOOL>::setCapacity(v28, 16 * v29);
    }

    v30 = 0;
    if (v15 <= 1)
    {
      a1 = 1;
    }

    else
    {
      a1 = v15;
    }

    v18 = v22 / v15;
    while (1)
    {
      v53.data = (*(v21 + 32) + v30 * v18);
      v31 = v62;
      if (v62 <= a6)
      {
        v65 = 0;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v66 = 0u;
        v38 = MEMORY[0x1E69E9C10];
        v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v72 = 136315906;
        *&v72[4] = "operator[]";
        *&v72[12] = 1024;
        if (v39)
        {
          v40 = 3;
        }

        else
        {
          v40 = 2;
        }

        *&v72[14] = 789;
        *&v72[18] = 2048;
        *&v72[20] = a6;
        *&v72[28] = 2048;
        *&v72[30] = v31;
        _os_log_send_and_compose_impl(v40, &v65, &v66, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38, v47, v48);
        _os_crash_msg();
        __break(1u);
LABEL_38:
        v53.data = 0;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v66 = 0u;
        v41 = MEMORY[0x1E69E9C10];
        v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v72 = 136315906;
        *&v72[4] = "operator[]";
        *&v72[12] = 1024;
        if (v42)
        {
          v43 = 3;
        }

        else
        {
          v43 = 2;
        }

        *&v72[14] = 797;
        *&v72[18] = 2048;
        *&v72[20] = a6;
        *&v72[28] = 2048;
        *&v72[30] = v18;
        _os_log_send_and_compose_impl(v43, &v53, &v66, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38, v47, v48);
        _os_crash_msg();
        __break(1u);
LABEL_42:
        v52[0] = 0;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v66 = 0u;
        v44 = MEMORY[0x1E69E9C10];
        v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v72 = 136315906;
        *&v72[4] = "operator[]";
        *&v72[12] = 1024;
        if (v45)
        {
          v46 = 3;
        }

        else
        {
          v46 = 2;
        }

        *&v72[14] = 789;
        *&v72[18] = 2048;
        *&v72[20] = a6;
        *&v72[28] = 2048;
        *&v72[30] = a1;
        _os_log_send_and_compose_impl(v46, v52, &v66, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v72, 38, v47, v48);
        _os_crash_msg();
        __break(1u);
      }

      v52[0] = &unk_1F5D0BFB8;
      v52[1] = v64 + 40 * a6;
      v52[2] = 0;
      if ((v66 & 1) == 0)
      {
        break;
      }

      ++v30;
      if (!--a1)
      {
        ++a6;
        a7 = v50;
        a1 = v25;
        v16 = &selRef_setOwnerWithIdentity_;
        v17 = &selRef_setOwnerWithIdentity_;
        v15 = v48;
        if (a6 == v49)
        {
          goto LABEL_23;
        }

        goto LABEL_3;
      }
    }

    if (v67)
    {
      v33 = *(&v67 + 1);
    }

    else
    {
      v33 = &v67 + 1;
    }

    re::DynamicString::format(v72, "Failed to compress image buffer during texture creation: %s", v32, v33);
    v34 = *v72;
    v35 = *&v72[16];
    v36 = *&v72[24];
    *v50 = 0;
    *(v50 + 8) = v34;
    *(v50 + 24) = v35;
    *(v50 + 32) = v36;
    if (v66 & 1) == 0 && *(&v66 + 1) && (v67)
    {
      (*(**(&v66 + 1) + 40))();
    }
  }

  if (*&v59[4])
  {
    astcenc_context_free(*&v59[4]);
    *&v59[4] = 0;
  }

  return re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v61);
}

void re::anonymous namespace::compressTextureWithImageBuffer(uint64_t a1, uint64_t a2, const vImage_Buffer *a3, uint64_t a4, re::DynamicString *a5)
{
  v41 = 0;
  memset(v42, 0, sizeof(v42));
  v40[2] = 0;
  v40[0] = 0;
  v40[1] = 8;
  v43 = dispatch_get_global_queue(21, 0);
  if (a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = v40;
  }

  re::ASTCCompressor::initializeContext(v10, a4, *(a4 + 16), *(a4 + 20), v36);
  if ((v36[0] & 1) == 0)
  {
    if (v38)
    {
      v23 = *&v39[7];
    }

    else
    {
      v23 = v39;
    }

    re::DynamicString::format(&v33, "Encoder failed during texture creation: %s", v11, v23);
    goto LABEL_16;
  }

  height = a3->height;
  width = a3->width;
  if (a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = v40;
  }

  v15 = re::blockToSize(*(v14 + 4));
  v16 = 16 * ((width + LODWORD(v15) - 1) / LODWORD(v15));
  v17 = (height + HIDWORD(v15) - 1) / HIDWORD(v15) * v16;
  v18.n128_f64[0] = re::blockToSize(*a4);
  v19 = (**a2)(a2, v17, v16, v18.n128_u32[1], width | (height << 32), 1, v18);
  if ((v19 & 1) == 0)
  {
LABEL_16:
    v24 = v33;
    v25 = v34;
    v26 = v35;
    *a1 = 0;
    *(a1 + 8) = v24;
    *(a1 + 24) = v25;
    *(a1 + 32) = v26;
    goto LABEL_17;
  }

  v20 = (*(*a2 + 8))(a2);
  re::ASTCCompressor::compress(v10, a3, v20, &v33);
  if (v33)
  {
    (*(*a2 + 16))(a2);
    v22 = 1;
  }

  else
  {
    if (v34)
    {
      v27 = v35;
    }

    else
    {
      v27 = &v34 + 1;
    }

    re::DynamicString::format(&v30, "Encoder failed during texture creation: %s", v21, v27);
    v22 = 0;
    v28 = v31;
    v29 = v32;
    *(a1 + 8) = v30;
    *(a1 + 24) = v28;
    *(a1 + 32) = v29;
  }

  *a1 = v22;
  if (v33 & 1) == 0 && *(&v33 + 1) && (v34)
  {
    (*(**(&v33 + 1) + 40))();
  }

LABEL_17:
  if (v36[0] & 1) == 0 && v37 && (v38)
  {
    (*(*v37 + 40))();
  }

  if (*&v42[4])
  {
    astcenc_context_free(*&v42[4]);
    *&v42[4] = 0;
  }
}

__n128 re::Ok<re::internal::TextureInMetalBuffers,re::internal::TextureInMetalBuffers>(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(a1 + 16, (a2 + 16));
  re::DynamicArray<BOOL>::DynamicArray(a1 + 136, (a2 + 136));
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  v7 = *(a2 + 192);
  *(a1 + 192) = v7;
  if (v7 == 1)
  {
    result = *(a2 + 200);
    *(a1 + 200) = result;
    *(a1 + 216) = *(a2 + 216);
  }

  return result;
}

uint64_t re::Result<re::internal::TextureInMetalBuffers,re::DynamicString>::Result(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  v4 = *a2;
  v5 = *(a2 + 8);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(a1 + 24, (a2 + 16));
  re::DynamicArray<BOOL>::DynamicArray(a1 + 144, (a2 + 136));
  v6 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 184);
  *(a1 + 184) = v6;
  LODWORD(v6) = *(a2 + 192);
  *(a1 + 200) = v6;
  if (v6 == 1)
  {
    v7 = *(a2 + 200);
    *(a1 + 224) = *(a2 + 216);
    *(a1 + 208) = v7;
  }

  return a1;
}

void re::anonymous namespace::logFormatConversionInfo(re::_anonymous_namespace_ *this, const vImage_CGImageFormat *a2, const vImage_CGImageFormat *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6908320](this, a2, a3);
  if (!v5)
  {
    v6 = *re::pipelineLogObjects(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(this + 1);
      v9 = *this;
      v8 = *(this + 1);
      v10 = *(this + 4);
      colorSpace = a2->colorSpace;
      bitsPerComponent = a2->bitsPerComponent;
      bitsPerPixel = a2->bitsPerPixel;
      bitmapInfo = a2->bitmapInfo;
      v15 = 138414082;
      v16 = v7;
      v17 = 1024;
      v18 = v8;
      v19 = 1024;
      v20 = v9;
      v21 = 1024;
      v22 = v10;
      v23 = 2112;
      v24 = colorSpace;
      v25 = 1024;
      v26 = bitsPerPixel;
      v27 = 1024;
      v28 = bitsPerComponent;
      v29 = 1024;
      v30 = bitmapInfo;
      _os_log_debug_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEBUG, "Format conversion required on texture import:\n     Source format: %@, %u bpp, %u bpc, 0x%08x info\nDestination format: %@, %u bpp, %u bpc, 0x%08x info", &v15, 0x3Au);
    }
  }
}

uint64_t re::anonymous namespace::createBufferWithImageUsingVImage(re::_anonymous_namespace_ *this, CGImagePtr *a2, const vImage_CGImageFormat *a3, re::Allocator *a4, BOOL *a5, re::TextureImportData::ImportReport *a6)
{
  v78 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    *a5 = 0;
  }

  else
  {
    v12 = *re::pipelineLogObjects(this);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      *v66 = 0;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Failed to create buffer from image due to invalid image", v66, 2u);
    }

    v14 = *a2;
    *a5 = 0;
    if (!v14)
    {
      v15 = *re::pipelineLogObjects(v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Failed to create buffer from image due to invalid image", buf, 2u);
      }
    }
  }

  v16 = objc_autoreleasePoolPush();
  if (CGImageGetImageProvider())
  {
    v65 = v16;
    v73 = *MEMORY[0x1E695F298];
    v74 = MEMORY[0x1E695E118];
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    v18 = CGImageProviderCopyImageBlockSetWithOptions();
    if (v18 || (v18 = CGImageProviderCopyImageBlockSetWithOptions()) != 0)
    {
      v19 = v18;
      Count = CGImageBlockSetGetCount();
      if (Count == 1)
      {
        v63 = a3;
        v64 = a4;
        BitmapInfo = CGImageProviderGetBitmapInfo();
        ComponentType = CGImageBlockSetGetComponentType();
        ColorSpace = CGImageBlockSetGetColorSpace();
        PixelSize = CGImageBlockSetGetPixelSize();
        memset(v66, 0, sizeof(v66));
        if (ComponentType >= 7)
        {
          re::internal::assertLog(4, v25, "assertion failure: '%s' (%s:line %i) ", "0 <= componentType && componentType < countOf(kImageProviderComponentTypes)", "imageProviderComponentType", 832);
          _os_crash("assertion failure: (0 <= componentType && componentType < countOf(kImageProviderComponentTypes)) ");
          __break(1u);
        }

        v26 = PixelSize;
        if (v27[4] == 1)
        {
          LODWORD(v67) = *(v27 + 2);
          DWORD1(v67) = 8 * PixelSize;
          *(&v67 + 1) = ColorSpace;
          *v68 = BitmapInfo;
          *&v68[12] = 0;
          *&v68[4] = 0;
        }

        else
        {
          v37 = *re::pipelineLogObjects(PixelSize);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = ComponentType;
            _os_log_error_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_ERROR, "Unsupported CGImageComponentType %d during texture creation", buf, 8u);
          }

          *v68 = unk_1E30FFC08;
          *&v68[16] = 0;
        }

        memset(&v68[24], 0, 32);
        *&v69 = v19;
        DWORD2(v69) = ComponentType;
        *&v70 = ColorSpace;
        *(&v70 + 1) = v26;
        v71 = 0u;
        *space_8 = 0u;
        *&space_8[16] = -1;
        CGImageBlockSetGetImageBlock();
        CGImageBlockSetGetSize();
        v39 = v38;
        v41 = v40;
        Data = CGImageBlockGetData();
        BytesPerRow = CGImageBlockGetBytesPerRow();
        *v66 = Data;
        *&v66[8] = v41;
        *&v66[16] = v39;
        *&v66[24] = BytesPerRow;
        CGImageBlockGetRect();
        *&v68[24] = v44;
        *&v68[32] = v45;
        *&v68[40] = v46;
        *&v68[48] = v47;
        CGImagePtr::CGImagePtr(buf, 0);
        CGImagePtr::swap(v48, a2);
        CGImageRelease(*buf);
        *buf = 0;

        CGColorSpaceRelease(v76);
        v76 = 0;
        a3 = v63;
        a4 = v64;
        goto LABEL_31;
      }

      v35 = *re::pipelineLogObjects(Count);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_ERROR, "Failed to create a single image block from a CGImageProvider during texture creation", buf, 2u);
      }

      CGImageBlockSetRelease();
    }

    else
    {
      v49 = *re::pipelineLogObjects(0);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_ERROR, "Failed to create an image from a CGImageProvider during texture creation", buf, 2u);
      }
    }

    *&space_8[8] = 0u;
    memset(v66, 0, sizeof(v66));
    *v68 = unk_1E30FFC08;
    memset(&v68[16], 0, 40);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    *space_8 = 0u;
    *&space_8[16] = -1;
LABEL_31:
    v16 = v65;
LABEL_32:

    goto LABEL_33;
  }

  DataProvider = CGImageGetDataProvider(*a2);
  if (DataProvider)
  {
    v29 = CGDataProviderCopyData(DataProvider);
    v17 = v29;
    if (v29)
    {
      v30 = v29;
      *v66 = [(__CFData *)v30 bytes];
      v31 = *(a2 + 6);
      *&v66[24] = *(a2 + 5);
      *&v67 = vmovn_s64(*(a2 + 24));
      *(&v67 + 1) = v31;
      *v68 = *(a2 + 18);
      *&v68[4] = 0uLL;
      *&v68[24] = 0;
      *&v68[32] = 0;
      v32 = *(a2 + 8);
      *&v66[8] = vextq_s8(v32, v32, 8uLL);
      *&v68[40] = vcvtq_f64_u64(v32);
      v69 = 0u;
      v70 = 0u;
      v71 = v30;
      v33 = CGColorSpaceRetain(v31);
      *space_8 = v33;
      *&space_8[8] = CGColorSpaceGetNumberOfComponents(v33);
      *&space_8[16] = CGColorSpaceGetModel(v33);
      CGImagePtr::CGImagePtr(buf, 0);
      CGImagePtr::swap(v34, a2);
      CGImageRelease(*buf);
      *buf = 0;

      CGColorSpaceRelease(v76);
      v76 = 0;
    }

    else
    {
      v62 = *re::pipelineLogObjects(0);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v62, OS_LOG_TYPE_ERROR, "Failed to create an image from a CGDataProvider during texture creation", buf, 2u);
      }

      *&space_8[8] = 0u;
      memset(v66, 0, sizeof(v66));
      *v68 = unk_1E30FFC08;
      memset(&v68[16], 0, 40);
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      *space_8 = 0u;
      *&space_8[16] = -1;
    }

    goto LABEL_32;
  }

  v36 = *re::pipelineLogObjects(0);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "Failed to create a texture because it is not backed by an image or data provider", buf, 2u);
  }

  *&space_8[8] = 0u;
  memset(v66, 0, sizeof(v66));
  *v68 = unk_1E30FFC08;
  memset(&v68[16], 0, 40);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  *space_8 = 0u;
  *&space_8[16] = -1;
LABEL_33:
  objc_autoreleasePoolPop(v16);
  if (*&v68[4])
  {
    v51 = *re::pipelineLogObjects(v50);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_ERROR, "Failed to create buffer from image during texture creation", buf, 2u);
    }
  }

  {
    v52 = *&v68[32];
    *(this + 4) = *&v68[16];
    *(this + 5) = v52;
    v53 = *&v66[16];
    *this = *v66;
    *(this + 1) = v53;
    v54 = *v68;
    *(this + 2) = v67;
    *(this + 3) = v54;
    v55 = v69;
    *(this + 12) = *&v68[48];
    *(this + 13) = v55;
    *(this + 28) = DWORD2(v69);
    v56 = *(&v70 + 1);
    *(this + 15) = v70;
    *(this + 16) = v56;
    *&v69 = 0;
    *&v70 = 0;
    v57 = v71;
    v71 = 0uLL;
    *(this + 136) = v57;
    v58 = *&space_8[8];
    *(this + 19) = *space_8;
    *(this + 20) = v58;
    *space_8 = 0;
    *&space_8[8] = 0;
    v59 = *&space_8[16];
    *&space_8[16] = -1;
    goto LABEL_39;
  }

  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 3) = unk_1E30FFC08;
  *(this + 8) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  v59 = -1;
LABEL_39:
  *(this + 42) = v59;
  CGColorSpaceRelease(*space_8);
  v60 = *(&v71 + 1);
  *(&v71 + 1) = 0;
  *space_8 = 0;
  if (v60)
  {
    free(v60);
  }

  result = v69;
  if (v69)
  {
    return CGImageBlockSetRelease();
  }

  return result;
}

void re::anonymous namespace::compressTextureWithImageBuffer(uint64_t a1, void *a2, const vImage_Buffer *a3, uint64_t a4, re::DynamicString *a5)
{
  v23 = &unk_1F5D0BDD0;
  v24 = a2;
  v25 = v24;
  v26 = 0;
  v27[1] = 0;
  v27[0] = 0;
  v28 = 1;
  v30 = 0;
  v29 = 0;
  memset(v31, 0, sizeof(v31));
  v32 = 0;
  v36 = 0;
  v34 = 0;
  v33 = 0;
  v35 = 0;

  if (v20 == 1)
  {
    v10[0] = v25;
    v10[1] = v26;
    re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(&v11, v27);
    re::DynamicArray<BOOL>::DynamicArray(v12, v31);
    v12[5] = v34;
    v13 = v35;
    v14 = v36;
    if (v36 == 1)
    {
      v15 = v37;
      v16 = v38;
    }

    re::Ok<re::internal::TextureInMetalBuffers,re::internal::TextureInMetalBuffers>(&v17, v10);
    re::Result<re::internal::TextureInMetalBuffers,re::DynamicString>::Result(a1, &v17);
    re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v17);
    re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v10);
  }

  else
  {
    re::DynamicString::DynamicString(&v17, &v21);
    *a1 = 0;
    v9 = v19;
    *(a1 + 8) = v17;
    *(a1 + 32) = v9;
    *(a1 + 16) = v18;
    if (v21 && (v22 & 1) != 0)
    {
      (*(*v21 + 40))();
    }
  }

  v23 = &unk_1F5D0BDD0;
  re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v25);
}

BOOL re::anonymous namespace::adjustBufferLinePaddingAndKTXConformance(re *a1)
{
  v1 = *(a1 + 3);
  v2 = *(a1 + 2) * *(a1 + 9) + 7;
  if (v2 >> 3 == v1)
  {
    return 1;
  }

  if (v2 >> 3 < v1)
  {
    v4 = 4;
    if (v2 >> 3 > 4)
    {
      v4 = v2 >> 3;
    }

    if ((v2 & 0x18) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = v2 >> 3;
    }

    if (*(a1 + 1) >= 2uLL)
    {
      v6 = *a1;
      v7 = (*a1 + v1);
      v8 = 1;
      do
      {
        v6 += v5;
        memmove(v6, v7, v5);
        ++v8;
        v7 += v1;
      }

      while (v8 < *(a1 + 1));
    }

    *(a1 + 3) = v5;
    return 1;
  }

  v10 = *re::pipelineLogObjects(a1);
  result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v11[0] = 0;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Failed to adjust buffer to alignment requirements", v11, 2u);
    return 0;
  }

  return result;
}

void re::anonymous namespace::generateMipmapLevelOnCPU(uint64_t *a1, uint64_t a2, vImage_Error a3, id *a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v18 = *MEMORY[0x1E69E9840];
  v12 = [*a4 width];
  if (v12 >> v6 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12 >> v6;
  }

  v14 = [*a4 height];
  if (v14 >> v6 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14 >> v6;
  }

  if (*a1)
  {
    v16 = *a1;
  }

  else
  {
    v16 = a2;
  }

  operator new();
}

uint64_t re::anonymous namespace::vImageBufferStorage::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 48) = v6;
  if (a1 != a2)
  {
    if (*(a1 + 104))
    {
      CGImageBlockSetRelease();
      *(a1 + 104) = 0;
      *(a1 + 120) = 0;
    }

    *(a1 + 104) = *(a2 + 13);
    *(a1 + 112) = *(a2 + 28);
    v9 = *(a2 + 16);
    *(a1 + 120) = *(a2 + 15);
    *(a1 + 128) = v9;
    *(a2 + 13) = 0;
    *(a2 + 15) = 0;
  }

  v10 = *(a2 + 17);
  *(a2 + 17) = 0;
  v11 = *(a1 + 136);
  *(a1 + 136) = v10;

  v12 = *(a2 + 18);
  *(a2 + 18) = 0;
  v13 = *(a1 + 144);
  *(a1 + 144) = v12;
  if (v13)
  {
    free(v13);
  }

  v14 = *(a2 + 19);
  v15 = *(a2 + 20);
  v16 = *(a2 + 42);
  *(a2 + 42) = -1;
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  v17 = *(a1 + 152);
  *(a1 + 152) = v14;
  *(a1 + 160) = v15;
  *(a1 + 168) = v16;
  CGColorSpaceRelease(v17);
  return a1;
}

uint64_t re::anonymous namespace::replaceTextureSliceWithBuffer(id *a1, uint64_t a2, unint64_t a3, uint64_t a4, id *a5, uint64_t a6)
{
  if ([*a1 storageMode] == 2)
  {
    v44 = [*a1 device];
    v45 = 0;
    v46 = 0;
    v47 = 0;
    LODWORD(v48) = 1;
    v49 = 0;
    v50 = 0;
    v52 = 0;
    v53 = 0;
    v51 = 0;
    v54 = 0;
    v58 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;

    v12 = *a4;
    v13 = *(a4 + 8);
    if (v13)
    {
      v14 = *(a4 + 24) * (v13 - 1) + ((*(a4 + 16) * *(a4 + 36) + 7) >> 3);
    }

    else
    {
      v14 = 0;
    }

    v39 = &unk_1F5D0A468;
    v40 = 0;
    v41 = v12;
    v42 = v14;
    re::FixedArrayInputStream::FixedArrayInputStream(v43, v12, v14, -1);
    v25 = *(a4 + 8);
    if (v25)
    {
      v27 = *(a4 + 16);
      v26 = *(a4 + 24);
      v28 = v26 * (v25 - 1) + ((v27 * *(a4 + 36) + 7) >> 3);
    }

    else
    {
      v28 = 0;
      v27 = *(a4 + 16);
      v26 = *(a4 + 24);
    }

    v38[0] = v27;
    v38[1] = v25;
    v38[2] = 1;
    v37[0] = 0;
    v37[1] = 0;
    v36 = v37;
    v29 = re::internal::TextureInMetalBuffers::allocate(&v44, v28, v26, 1uLL, &v39, v38, 1uLL, &v36);
    std::__tree<unsigned long long>::destroy(&v36, v37[0]);
    if (v29)
    {
      v30 = re::internal::BlitCommandQueue::blitCommandEncoder(a5);
      v33[0] = *a6;
      if (v33[0] == 1)
      {
        v31 = *(a6 + 24);
        v34 = *(a6 + 8);
        v35 = v31;
      }

      re::internal::TextureInMetalBuffers::replaceTextureSlice(&v44, a1, a2, a3, v30, v33);
      v39 = &unk_1F5D0A468;
      re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v43);
      re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v44);
      return 1;
    }

    else
    {
      v39 = &unk_1F5D0A468;
      re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v43);
      re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v44);
      return 0;
    }
  }

  else
  {
    v15 = *(a4 + 24);
    if (*a6 == 1)
    {
      v16 = *(a6 + 16);
      v17 = *(a6 + 8);
      v18 = v16;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v19 = [*a1 textureType];
    v20 = *(a4 + 8);
    v21 = *(a4 + 16);
    v22 = *a1;
    v23 = *a4;
    v44 = v17;
    v45 = v18;
    if (v19 == 7)
    {
      v46 = a3;
      v47 = v21;
      v24 = 1;
      v48 = v20;
      v49 = 1;
      [v22 replaceRegion:&v44 mipmapLevel:a2 slice:0 withBytes:v23 bytesPerRow:v15 bytesPerImage:0];
    }

    else
    {
      v46 = 0;
      v47 = v21;
      v48 = v20;
      v49 = 1;
      [v22 replaceRegion:&v44 mipmapLevel:a2 slice:a3 withBytes:v23 bytesPerRow:v15 bytesPerImage:0];
      return 1;
    }
  }

  return v24;
}

void re::anonymous namespace::cgFormatForTextureDestination(uint64_t a1, int a2, uint64_t *a3, char a4, int a5, uint64_t a6, int a7)
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = 8 * *(a3 + 6);
  v11 = *(a3 + 32);
  v12 = v10 / v11;
  v13 = a4 & 0x1F;
  switch(a7)
  {
    case 2:
      if (--v13 < 6)
      {
        v14 = dword_1E3100418[v13];
        v15 = &unk_1E3100430;
        goto LABEL_9;
      }

      goto LABEL_10;
    case 1:
      v16 = 2;
      v14 = 1;
      goto LABEL_12;
    case 0:
      if (v13 < 7)
      {
        v14 = dword_1E31003E0[a4 & 0x1F];
        v15 = &unk_1E31003FC;
LABEL_9:
        v16 = v15[v13];
        goto LABEL_12;
      }

LABEL_10:
      v16 = 4;
      v14 = 3;
      goto LABEL_12;
  }

  v14 = 0;
  v16 = 0;
LABEL_12:
  if (v12 > 7)
  {
    if (v12 == 16)
    {
      v18 = 4096;
    }

    else
    {
      v18 = 0x2000;
    }

    if (v12 == 8)
    {
      v17 = 0;
    }

    else
    {
      v17 = v18;
    }
  }

  else if (v10 == 16)
  {
    v17 = 4096;
  }

  else
  {
    v17 = 0x2000;
  }

  v19 = 0;
  if (a2 <= 499)
  {
    switch(a2)
    {
      case 0:
      case 92:
      case 93:
      case 94:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 140:
      case 141:
      case 142:
      case 143:
      case 150:
      case 151:
      case 152:
      case 153:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 166:
      case 167:
      case 170:
      case 172:
      case 174:
      case 176:
      case 178:
      case 179:
      case 180:
      case 181:
      case 182:
      case 183:
      case 186:
      case 187:
      case 188:
      case 189:
      case 190:
      case 192:
      case 193:
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 222:
      case 223:
      case 224:
      case 225:
      case 226:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 240:
      case 241:
      case 250:
      case 252:
      case 253:
      case 255:
      case 260:
      case 261:
      case 262:
        goto LABEL_33;
      case 1:
        v19 = 7;
        goto LABEL_44;
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 20:
      case 22:
      case 23:
      case 24:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 53:
      case 54:
      case 60:
      case 62:
      case 63:
      case 64:
      case 103:
      case 104:
        v19 = v17;
        goto LABEL_44;
      case 25:
      case 55:
      case 65:
      case 105:
        v19 = v17 | 0x100;
        goto LABEL_44;
      case 40:
        v19 = 4096;
        goto LABEL_44;
      case 41:
      case 42:
        v19 = 4099;
        goto LABEL_44;
      case 43:
        v19 = v16 | 0x1000;
        goto LABEL_44;
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 90:
      case 91:
      case 110:
      case 112:
      case 113:
      case 114:
      case 123:
      case 124:
        v19 = v17 | v14;
        goto LABEL_44;
      case 80:
      case 81:
        goto LABEL_38;
      case 115:
      case 125:
        v19 = v14 | v17 | 0x100;
        goto LABEL_44;
      default:
        goto LABEL_44;
    }
  }

  v20 = a2 - 8;
  if ((a2 - 520) <= 0x31)
  {
    if (((1 << v20) & 0x3FC00DFF007FFLL) != 0)
    {
LABEL_33:
      v21 = *re::pipelineLogObjects(a1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = *a3;
        v30 = 136446210;
        v31 = v23;
        _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "No CG image format corresponds to pixel format %{public}s", &v30, 0xCu);
      }

      *(a1 + 16) = unk_1E30FFC08;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = 0;
      v22 = -1;
      goto LABEL_53;
    }

    if (((1 << v20) & 0x300000000) != 0)
    {
LABEL_38:
      v19 = v16 | 0x2000;
      goto LABEL_44;
    }

    if (((1 << v20) & 0xC00000000) != 0)
    {
      v19 = 0x2000;
      goto LABEL_44;
    }
  }

  if ((a2 - 500) < 0xB || (a2 - 588) <= 0x29 && ((1 << (a2 - 76)) & 0x30003F80001) != 0)
  {
    goto LABEL_33;
  }

LABEL_44:
  v24 = *a6;
  v26 = (v19 & 0x1F) == 0 && *(a6 + 8) == 1 && v11 == 2;
  v27 = v19 | 3;
  if (!v26)
  {
    v27 = v19;
  }

  *a1 = v12;
  *(a1 + 4) = v10;
  *(a1 + 8) = v24;
  *(a1 + 16) = v27;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a5;
  *(a1 + 36) = 0;
  v28 = CGColorSpaceRetain(v24);
  v29 = *(a6 + 8);
  *(a1 + 40) = v28;
  *(a1 + 48) = v29;
  v22 = *(a6 + 16);
LABEL_53:
  *(a1 + 56) = v22;
}

uint64_t re::anonymous namespace::convertBufferToFormat(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4, _WORD *a5)
{
  v74 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 3);
  *&srcFormat.bitsPerComponent = *(a1 + 2);
  *&srcFormat.bitmapInfo = v10;
  *&srcFormat.renderingIntent = a1[8];
  *a4 = 0;
  if ((srcFormat.bitmapInfo & 0x70000) != 0)
  {
    v11 = *a2;
    if (*a2 == 8 || v11 == 16 && (*(a2 + 17) & 1) != 0)
    {
      v16 = 4 * v11;
      memset(&dest, 0, sizeof(dest));
      v17 = MEMORY[0x1E6908310](&dest, a1[1], a1[2], 4 * v11, 0);
      if (v17)
      {
        v18 = v17;
        v19 = *re::pipelineLogObjects(v17);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v18;
          v20 = "Failed to allocate an image buffer during texture creation (vImage error: %zd)";
LABEL_43:
          _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, v20, &buf, 0xCu);
        }

        return 0;
      }

      *permuteMap = 50462976;
      v21 = srcFormat.bitmapInfo & 0x30000;
      if (*a2 == 16)
      {
        if (v21)
        {
          v22 = vImageConvert_XRGB2101010ToARGB16F(a1, 1.0, &dest, 0, 1023, permuteMap, 0x10u);
        }

        else
        {
          v22 = vImageConvert_ARGB2101010ToARGB16F(a1, &dest, 0, 1023, permuteMap, 0x10u);
        }
      }

      else if (v21)
      {
        v22 = vImageConvert_XRGB2101010ToARGB8888(a1, 1u, &dest, 0, 1023, permuteMap, 0x10u);
      }

      else
      {
        v22 = vImageConvert_ARGB2101010ToARGB8888(a1, &dest, 0, 1023, permuteMap, 0x10u);
      }

      v23 = v22;
      if (v22)
      {
        v24 = *re::pipelineLogObjects(v22);
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
LABEL_87:
          free(dest.data);
          return 0;
        }

        LODWORD(buf) = 134217984;
        *(&buf + 4) = v23;
        v25 = "Failed to convert image from 10 bits to float16 during texture creation (vImage error: %zd)";
LABEL_91:
        _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, v25, &buf, 0xCu);
        goto LABEL_87;
      }

      srcFormat.bitsPerComponent = *a2;
      srcFormat.bitsPerPixel = v16;
      srcFormat.bitmapInfo = *(a2 + 16) & 0x7F00 | srcFormat.bitmapInfo & 0x1F;
      CGColorSpaceRelease(space);
      v26 = v72;
      v72 = 0;
      space = 0;
      if (v26)
      {
        free(v26);
      }

      if (v70)
      {
        CGImageBlockSetRelease();
      }

      *a5 |= 0x40u;
      *a4 = 1;
    }

    else
    {
      v12 = *re::pipelineLogObjects(a1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *a2;
        v13 = *(a2 + 4);
        v15 = *(a2 + 16);
        LODWORD(buf) = 67109632;
        DWORD1(buf) = v13;
        WORD4(buf) = 1024;
        *(&buf + 10) = v14;
        HIWORD(buf) = 1024;
        v69 = v15;
        _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Unhandled conversion from a 10 bit image to destination format: %u bpp, %u bpc, 0x%08x info", &buf, 0x14u);
      }
    }
  }

  if (MEMORY[0x1E6908320](&srcFormat, a2))
  {
    return 1;
  }

  if (srcFormat.bitsPerPixel != *(a2 + 4) || srcFormat.bitmapInfo != *(a2 + 16) || srcFormat.bitsPerComponent != *a2)
  {
    *a5 |= 0x40u;
  }

  *permuteMap = 0;
  v28 = vImageConverter_CreateWithCGImageFormat(&srcFormat, a2, 0, 0, permuteMap);
  if (v28)
  {
    v29 = v28;
    goto LABEL_33;
  }

  v34 = CGColorConversionInfoCreate(srcFormat.colorSpace, *(a2 + 8));
  if (!v34 || (v35 = v34, v29 = vImageConverter_CreateWithCGColorConversionInfo(v34, &srcFormat, a2, 0, 0, permuteMap), CFRelease(v35), !v29))
  {
    v19 = *re::pipelineLogObjects(v34);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = *permuteMap;
      v20 = "Failed to create an image converter during texture creation (vImage error: %zd)";
      goto LABEL_43;
    }

    return 0;
  }

LABEL_33:
  if (vImageConverter_GetNumberOfSourceBuffers(v29) != 1)
  {
    re::internal::assertLog(4, v30, "assertion failure: '%s' (%s:line %i) ", "vImageConverter_GetNumberOfSourceBuffers(converter) == 1", "convertBufferToFormat", 2834);
    _os_crash("assertion failure: (vImageConverter_GetNumberOfSourceBuffers(converter) == 1) ");
    __break(1u);
LABEL_95:
    re::internal::assertLog(4, v31, "assertion failure: '%s' (%s:line %i) ", "vImageConverter_GetNumberOfDestinationBuffers(converter) == 1", "convertBufferToFormat", 2835);
    _os_crash("assertion failure: (vImageConverter_GetNumberOfDestinationBuffers(converter) == 1) ");
    __break(1u);
  }

  if (vImageConverter_GetNumberOfDestinationBuffers(v29) != 1)
  {
    goto LABEL_95;
  }

  memset(&dest, 0, sizeof(dest));
  v32 = MEMORY[0x1E6908310](&dest, a1[1], a1[2], *(a2 + 4), 0);
  *permuteMap = v32;
  if (v32)
  {
    v33 = *re::pipelineLogObjects(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = *permuteMap;
      _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "Failed to allocate an image buffer during texture creation (vImage error: %zd)", &buf, 0xCu);
    }

    vImageConverter_Release(v29);
    return 0;
  }

  v63 = a3;
  if (srcFormat.bitsPerComponent == 16 && (srcFormat.bitmapInfo & 0x100) != 0 && srcFormat.colorSpace != *(a2 + 8))
  {
    v36 = a1[1];
    if (v36)
    {
      v37 = 0;
      v38 = 0;
      v39 = a1[2] * (srcFormat.bitsPerPixel >> 4);
      v40 = *a1;
      v41 = v39 & 0xFFFFFFFFFFFFFFF8;
      v42.i64[0] = 0x8400840084008400;
      v42.i64[1] = 0x8400840084008400;
      while (!v37)
      {
        v46 = 0uLL;
        if (v39 >= 8)
        {
          v47 = (2 * v39) & 0xFFFFFFFFFFFFFFF0;
          v48 = v40;
          do
          {
            v49 = *v48++;
            v46 = vmaxnmq_f16(v46, v49);
            v47 -= 16;
          }

          while (v47);
        }

        v50 = 0;
        do
        {
          v64 = v46;
          v51 = *(&v64 & 0xFFFFFFFFFFFFFFF1 | (2 * (v50 & 7)));
        }

        while (v51 != COERCE_SHORT_FLOAT(31744) && v50++ != 7);
        v53 = v39 & 0xFFFFFFFFFFFFFFF8;
        if (v41 == v39)
        {
LABEL_69:
          if (v51 != COERCE_SHORT_FLOAT(31744))
          {
            goto LABEL_71;
          }
        }

        else
        {
          while (*&v40->i16[v53] != COERCE_SHORT_FLOAT(31744))
          {
            if (++v53 >= v39)
            {
              goto LABEL_69;
            }
          }
        }

        v37 = *a1;
        v54 = a1[3] * v36;
        v55 = (*(*v63 + 32))(v63, v54, 16);
        *a1 = v55;
        memcpy(v55, v37, v54);
        v42.i64[0] = 0x8400840084008400;
        v42.i64[1] = 0x8400840084008400;
        v40 = (*a1 + a1[3] * v38);
LABEL_72:
        v36 = a1[1];
        if (v38 >= v36)
        {
          goto LABEL_75;
        }
      }

      v43 = (2 * v39) & 0xFFFFFFFFFFFFFFF0;
      v44 = v40;
      if (v39 >= 8)
      {
        do
        {
          *v44 = vminnmq_f16(*v44, v42);
          ++v44;
          v43 -= 16;
        }

        while (v43);
      }

      v45 = v39 & 0xFFFFFFFFFFFFFFF8;
      if (v41 != v39)
      {
        do
        {
          if (*&v40->i16[v45] == COERCE_SHORT_FLOAT(31744))
          {
            v40->i16[v45] = 31743;
          }

          ++v45;
        }

        while (v45 < v39);
      }

LABEL_71:
      ++v38;
      v40 = (v40 + a1[3]);
      goto LABEL_72;
    }
  }

  v37 = 0;
LABEL_75:
  v56 = vImageConvert_AnyToAny(v29, a1, &dest, 0, 0x90u);
  v57 = v56;
  if (v56 < 0)
  {
    v61 = *re::pipelineLogObjects(v56);
    v58 = v63;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v57;
      _os_log_error_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_ERROR, "Failed to prepare image converter during texture creation (vImage error: %zd)", &buf, 0xCu);
      if (!v37)
      {
        goto LABEL_84;
      }
    }

    else if (!v37)
    {
      goto LABEL_84;
    }

LABEL_83:
    (*(*v58 + 40))(v58, *a1);
    *a1 = v37;
    goto LABEL_84;
  }

  v58 = v63;
  if (v56)
  {
    v59 = *re::pipelineLogObjects(v56);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v57;
      _os_log_debug_impl(&dword_1E1C61000, v59, OS_LOG_TYPE_DEBUG, "Format conversion requires %zd bytes of temp buffer", &buf, 0xCu);
    }
  }

  v60 = (*(*v63 + 32))(v63, v57, *MEMORY[0x1E69E9AC8]);
  *permuteMap = vImageConvert_AnyToAny(v29, a1, &dest, v60, 0x10u);
  (*(*v63 + 40))(v63, v60);
  if (v37)
  {
    goto LABEL_83;
  }

LABEL_84:
  vImageConverter_Release(v29);
  if (v57 < 0)
  {
    return 0;
  }

  if (*permuteMap)
  {
    v24 = *re::pipelineLogObjects(v62);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    LODWORD(buf) = 134217984;
    *(&buf + 4) = *permuteMap;
    v25 = "Failed to convert image during texture creation (vImage error: %zd)";
    goto LABEL_91;
  }

  result = 1;
  *a4 = 1;
  return result;
}

uint64_t re::anonymous namespace::vImageBufferStorage::vImageBufferStorage(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v6 = *a3;
  v7 = a3[1];
  *(a1 + 64) = *(a3 + 4);
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  v8 = vcvtq_f64_u64(*(a2 + 8));
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = vextq_s8(v8, v8, 8uLL);
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  v9 = CGColorSpaceRetain(*(a3 + 1));
  *(a1 + 152) = v9;
  *(a1 + 160) = CGColorSpaceGetNumberOfComponents(v9);
  *(a1 + 168) = CGColorSpaceGetModel(v9);
  v10 = *(a1 + 144);
  *(a1 + 144) = *a2;
  if (v10)
  {
    free(v10);
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  return a1;
}

uint64_t re::anonymous namespace::DeviceOutputAllocator::outputAllocate(re::_anonymous_namespace_::DeviceOutputAllocator *this, uint64_t a2, unint64_t a3, unint64_t a4, at_size_t a5)
{
  z = a5.z;
  v6 = *&a5.x;
  v15 = *(this + 1);
  v16 = @"compressTextureWithImageBuffer staging buffer";
  v17[0] = 0;
  v17[1] = 0;
  v18 = 1;
  v19 = 0;
  v20 = 0;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  CFRetain(@"compressTextureWithImageBuffer staging buffer");
  re::ObjCObject::operator=(this + 2, &v15);
  *(this + 3) = @"compressTextureWithImageBuffer staging buffer";
  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::operator=(this + 32, v17);
  re::DynamicArray<BOOL>::operator=(this + 152, v21);
  *(this + 24) = v24;
  *(this + 100) = v25;
  if ((*(this + 208) & 1) == 0)
  {
    if ((v26 & 1) == 0)
    {
      goto LABEL_7;
    }

    *(this + 208) = 1;
LABEL_6:
    *(this + 216) = v27;
    *(this + 29) = v28;
    goto LABEL_7;
  }

  if (v26)
  {
    goto LABEL_6;
  }

  *(this + 208) = 0;
LABEL_7:
  re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v15);
  v15 = v6;
  v16 = HIDWORD(v6);
  v17[0] = z;
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v11 = re::internal::TextureInMetalBuffers::allocate(this + 16, a2, a3, a4, 0, &v15, 1uLL, &v13);
  std::__tree<unsigned long long>::destroy(&v13, v14[0]);
  return v11;
}

uint64_t re::anonymous namespace::DeviceOutputAllocator::outputBuffer(re::_anonymous_namespace_::DeviceOutputAllocator *this)
{
  if ((*(this + 208) & 1) == 0)
  {
    re::internal::TextureInMetalBuffers::createTextureData((this + 16), 1);
  }

  return *(this + 29);
}

uint64_t *std::unique_ptr<re::anonymous namespace::vImageBufferStorage>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    CGColorSpaceRelease(*(v2 + 152));
    v3 = *(v2 + 144);
    *(v2 + 144) = 0;
    *(v2 + 152) = 0;
    if (v3)
    {
      free(v3);
    }

    if (*(v2 + 104))
    {
      CGImageBlockSetRelease();
      *(v2 + 104) = 0;
      *(v2 + 120) = 0;
    }

    JUMPOUT(0x1E6906520);
  }

  return result;
}

uint64_t re::anonymous namespace::MetalCompression::outputBuffer(re::_anonymous_namespace_::MetalCompression *this)
{
  if ((*(this + 256) & 1) == 0)
  {
    re::internal::TextureInMetalBuffers::createTextureData((this + 64), 1);
  }

  return *(this + 35);
}

void re::anonymous namespace::MetalCompression::updateSource(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  *(a1 + 568) = *(a3 + 2);
  *(a1 + 552) = v6;
  v7 = *(a1 + 16);
  if (*(v7 + 8))
  {
    v14 = std::__throw_bad_variant_access[abi:nn200100]();
    return;
  }

  re::internal::copyTextureSliceToBuffer(v35, *(a1 + 288), v7, a3, *(a1 + 24), *(a1 + 32), *(a1 + 40));
  if (v35[0])
  {
    memset(v15, 0, sizeof(v15));
    v16 = 1;
    v17 = 0;
    v18 = 0;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v22 = 0;
    v26 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    re::Result<re::internal::TextureInMetalBuffers,re::DynamicString>::swapValue(&v27, v35, v15);
    re::ObjCObject::operator=((a1 + 328), &v27);
    *(a1 + 336) = v28;
    re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::operator=(a1 + 344, &v28 + 1);
    re::DynamicArray<BOOL>::operator=(a1 + 464, v30);
    *(a1 + 504) = v30[5];
    *(a1 + 512) = v31;
    if (*(a1 + 520))
    {
      if ((v32 & 1) == 0)
      {
        *(a1 + 520) = 0;
LABEL_10:
        re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v27);
        re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v15);
        if ((*(a1 + 520) & 1) == 0)
        {
          re::internal::TextureInMetalBuffers::createTextureData((a1 + 328), 1);
        }

        v12 = *a2;
        v11 = a2[1];
        v13 = *(a1 + 560);
        *(a1 + 296) = *(a1 + 544);
        *(a1 + 304) = v11;
        *(a1 + 312) = v12;
        *(a1 + 320) = v13;
        *a4 = 1;
        goto LABEL_13;
      }
    }

    else
    {
      if ((v32 & 1) == 0)
      {
        goto LABEL_10;
      }

      *(a1 + 520) = 1;
    }

    *(a1 + 528) = v33;
    *(a1 + 544) = v34;
    goto LABEL_10;
  }

  re::DynamicString::DynamicString(&v27, &v36);
  *a4 = 0;
  v10 = v29;
  *(a4 + 8) = v27;
  *(a4 + 32) = v10;
  *(a4 + 16) = v28;
LABEL_13:
  if (v35[0] == 1)
  {
    re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v36);
  }

  else if (v36)
  {
    if (v37)
    {
      (*(*v36 + 40))();
    }
  }
}

__n128 re::anonymous namespace::MetalCompression::backingMetalBuffer@<Q0>(re::_anonymous_namespace_::MetalCompression *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 8);
  v5 = *(this + 9);
  *a2 = v4;
  *(a2 + 8) = v5;
  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(a2 + 16, this + 10);
  re::DynamicArray<BOOL>::DynamicArray(a2 + 136, this + 25);
  *(a2 + 176) = *(this + 30);
  *(a2 + 184) = *(this + 124);
  v7 = *(this + 256);
  *(a2 + 192) = v7;
  if (v7 == 1)
  {
    *(a2 + 216) = *(this + 35);
    result = *(this + 264);
    *(a2 + 200) = result;
  }

  return result;
}

BOOL re::anonymous namespace::MetalCompression::isValid(re::_anonymous_namespace_::MetalCompression *this)
{
  if ((*(this + 256) & 1) == 0)
  {
    re::internal::TextureInMetalBuffers::createTextureData((this + 64), 1);
  }

  return *(this + 35) != 0;
}

uint64_t re::anonymous namespace::MetalCompression::length(re::_anonymous_namespace_::MetalCompression *this)
{
  if ((*(this + 256) & 1) == 0)
  {
    re::internal::TextureInMetalBuffers::createTextureData((this + 64), 1);
  }

  return *(this + 34);
}

BOOL non-virtual thunk tore::anonymous namespace::MetalCompression::isValid(uint64_t a1)
{
  if ((*(a1 + 248) & 1) == 0)
  {
    re::internal::TextureInMetalBuffers::createTextureData((a1 + 56), 1);
  }

  return *(a1 + 272) != 0;
}

uint64_t non-virtual thunk tore::anonymous namespace::MetalCompression::length(uint64_t a1)
{
  if ((*(a1 + 248) & 1) == 0)
  {
    re::internal::TextureInMetalBuffers::createTextureData((a1 + 56), 1);
  }

  return *(a1 + 264);
}

__n128 non-virtual thunk tore::anonymous namespace::MetalCompression::backingMetalBuffer@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *a2 = v4;
  *(a2 + 8) = v5;
  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(a2 + 16, (a1 + 72));
  re::DynamicArray<BOOL>::DynamicArray(a2 + 136, (a1 + 192));
  *(a2 + 176) = *(a1 + 232);
  *(a2 + 184) = *(a1 + 240);
  v7 = *(a1 + 248);
  *(a2 + 192) = v7;
  if (v7 == 1)
  {
    result = *(a1 + 256);
    *(a2 + 200) = result;
    *(a2 + 216) = *(a1 + 272);
  }

  return result;
}

void re::anonymous namespace::BaseCompressionSource::backingMetalBuffer(uint64_t a1@<X8>)
{
  *(a1 + 32) = 1;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 192) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
}

void non-virtual thunk tore::anonymous namespace::BaseCompressionSource::backingMetalBuffer(uint64_t a1@<X8>)
{
  *(a1 + 32) = 1;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 192) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
}

int8x16_t re::anonymous namespace::CPUCompression::updateSource@<Q0>(uint64_t a1@<X0>, int8x16_t *a2@<X1>, __int128 *a3@<X2>, _BYTE *a4@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  *(a1 + 136) = *(a3 + 2);
  *(a1 + 120) = v6;
  v7 = *(a1 + 16);
  if (*(v7 + 2) != 1)
  {
    goto LABEL_8;
  }

  v8 = *(a1 + 24);
  v9 = *(*v7 + 48);
  if (v9 <= v8)
  {
    v17 = 0;
    memset(v26, 0, sizeof(v26));
    v14 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 797;
    v22 = 2048;
    v23 = v8;
    v24 = 2048;
    v25 = v9;
    _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  v11 = *(*(*v7 + 64) + 40 * v8 + 32) + a2->i64[1] * *(a3 + 1) * (*(a1 + 32) + *(a1 + 40));
  re::TextureData::textureType(v7);
  v12 = *(a1 + 128);
  *(a1 + 88) = v11;
  result = vextq_s8(*a2, *a2, 8uLL);
  *(a1 + 96) = result;
  *(a1 + 112) = v12;
  *a4 = 1;
  return result;
}

uint64_t re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::copy(a1, a2);
        v5 = *(a1 + 16);
LABEL_16:
        *(a1 + 16) = v5 + 2;
        return a1;
      }

      v7 = *(a1 + 8);
      *(a1 + 8) = 0;
      v5 = *(a1 + 16);
      if (v5)
      {
        v8 = (a1 + 24);
        if (!v7)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v8 = *(a1 + 32);
        if (!v7)
        {
          goto LABEL_16;
        }
      }

      v9 = 96 * v7;
      do
      {
        if (*v8)
        {

          *v8 = 0;
        }

        v8 += 12;
        v9 -= 96;
      }

      while (v9);
      v5 = *(a1 + 16);
      goto LABEL_16;
    }

    if (v4)
    {
      v6 = a2[1];
      *a1 = v4;
      re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::setCapacity(a1, v6);
      *(a1 + 16) += 2;
      re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::copy(a1, a2);
    }
  }

  return a1;
}

vImage_Error re::anonymous namespace::doVImageScale(vImage_Error result, vImage_Buffer *src, const vImage_Buffer *a3, void *tempBuffer, uint64_t flags)
{
  switch(result)
  {
    case 0:
      re::internal::assertLog(4, src, a3, tempBuffer, flags, "assertion failure: '%s' (%s:line %i) Invalid vImageScale_* variant", "!Unreachable code", "doVImageScale", 3241, v5, v6);
      result = _os_crash("assertion failure: (!Unreachable code) Invalid vImageScale_* variant");
      __break(1u);
      break;
    case 1:

      result = vImageScale_Planar8(src, a3, tempBuffer, flags);
      break;
    case 2:

      result = vImageScale_Planar16S(src, a3, tempBuffer, flags);
      break;
    case 3:

      result = vImageScale_Planar16U(src, a3, tempBuffer, flags);
      break;
    case 4:

      result = vImageScale_PlanarF(src, a3, tempBuffer, flags);
      break;
    case 5:

      result = vImageScale_ARGB8888(src, a3, tempBuffer, flags);
      break;
    case 6:

      result = vImageScale_ARGB16U(src, a3, tempBuffer, flags);
      break;
    case 7:

      result = vImageScale_ARGB16S(src, a3, tempBuffer, flags);
      break;
    case 8:

      result = vImageScale_ARGBFFFF(src, a3, tempBuffer, flags);
      break;
    case 9:

      result = vImageScale_Planar16F(src, a3, tempBuffer, flags);
      break;
    case 10:

      result = vImageScale_ARGB16F(src, a3, tempBuffer, flags);
      break;
    case 11:

      result = vImageScale_CbCr8(src, a3, tempBuffer, flags);
      break;
    case 12:

      result = vImageScale_CbCr16U(src, a3, tempBuffer, flags);
      break;
    case 13:

      result = vImageScale_XRGB2101010W(src, a3, tempBuffer, flags);
      break;
    default:
      return result;
  }

  return result;
}

BOOL re::anonymous namespace::BasicAppendingOutputAllocator::outputAllocate(re::_anonymous_namespace_::BasicAppendingOutputAllocator *this, uint64_t a2, unint64_t a3, unint64_t a4, at_size_t a5)
{
  v6 = *(this + 1);
  v7 = *(v6 + 16);
  v8 = v7 + a2;
  re::DynamicArray<BOOL>::resize(v6, v7 + a2);
  v9 = *(this + 1);
  *(this + 2) = *(v9 + 32) + v7;
  return *(v9 + 16) == v8;
}

uint64_t std::__function::__value_func<re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<re::convertCPUTextureColorSpace(re::ColorGamut,re::TextureImportData const&)::$_0,std::allocator<re::convertCPUTextureColorSpace(re::ColorGamut,re::TextureImportData const&)::$_0>,void ()(re::anonymous namespace::vImageFormatStorage &,re::anonymous namespace::vImageFormatStorage &,re::mtl::PixelFormat &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D0BFF8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<re::convertCPUTextureColorSpace(re::ColorGamut,re::TextureImportData const&)::$_0,std::allocator<re::convertCPUTextureColorSpace(re::ColorGamut,re::TextureImportData const&)::$_0>,void ()(re::anonymous namespace::vImageFormatStorage &,re::anonymous namespace::vImageFormatStorage &,re::mtl::PixelFormat &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = **(a1 + 8);
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(v5);
  Model = CGColorSpaceGetModel(v5);
  v8 = *(a3 + 40);
  *(a3 + 40) = v5;
  *(a3 + 48) = NumberOfComponents;
  *(a3 + 56) = Model;
  CGColorSpaceRelease(v8);
  *(a3 + 8) = **(a1 + 8);
}

uint64_t std::__function::__func<re::convertCPUTextureColorSpace(re::ColorGamut,re::TextureImportData const&)::$_0,std::allocator<re::convertCPUTextureColorSpace(re::ColorGamut,re::TextureImportData const&)::$_0>,void ()(re::anonymous namespace::vImageFormatStorage &,re::anonymous namespace::vImageFormatStorage &,re::mtl::PixelFormat &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<re::convertCPUTextureColorSpace(re::ColorGamut,re::TextureImportData const&)::$_1,std::allocator<re::convertCPUTextureColorSpace(re::ColorGamut,re::TextureImportData const&)::$_1>,void ()(re::TextureImportData::ImportReport &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D0C088;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::convertCPUTextureColorSpace(re::ColorGamut,re::TextureImportData const&)::$_1,std::allocator<re::convertCPUTextureColorSpace(re::ColorGamut,re::TextureImportData const&)::$_1>,void ()(re::TextureImportData::ImportReport &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::TextureImportData::ImportReport &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 std::__function::__func<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_0,std::allocator<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_0>,void ()(re::anonymous namespace::vImageFormatStorage &,re::anonymous namespace::vImageFormatStorage &,re::mtl::PixelFormat &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0C118;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_0,std::allocator<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_0>,void ()(re::anonymous namespace::vImageFormatStorage &,re::anonymous namespace::vImageFormatStorage &,re::mtl::PixelFormat &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  ComponentCount = re::getComponentCount(**(a1 + 8));
  v9 = *(a1 + 24);
  v10 = **(a1 + 16);
  *a3 = v10;
  *(a3 + 4) = v10 * ComponentCount;
  if (v10 == 16)
  {
    v11 = 4352;
  }

  else
  {
    v11 = 8448;
  }

  *(a3 + 16) = *(a3 + 16) & 0xFFFFCFFF | v11;
  if (v10 == 16)
  {
    v12 = 65;
  }

  else
  {
    v12 = 105;
  }

  if (v10 == 16)
  {
    v13 = 115;
  }

  else
  {
    v13 = 125;
  }

  if (v10 == 16)
  {
    v14 = 25;
  }

  else
  {
    v14 = 55;
  }

  if (ComponentCount != 1)
  {
    v14 = v13;
  }

  if (ComponentCount == 2)
  {
    v14 = v12;
  }

  *a4 = v14;
  v15 = *v9;
  if (*v9)
  {
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(*v9);
    Model = CGColorSpaceGetModel(v15);
    v18 = *(a2 + 40);
    *(a2 + 40) = v15;
    *(a2 + 48) = NumberOfComponents;
    *(a2 + 56) = Model;
    CGColorSpaceRelease(v18);
    v19 = *(a1 + 32);
    *(a2 + 8) = **(a1 + 24);
    v20 = *v19;
    v21 = CGColorSpaceGetNumberOfComponents(*v19);
    v22 = CGColorSpaceGetModel(v20);
    v23 = *(a3 + 40);
    *(a3 + 40) = v20;
    *(a3 + 48) = v21;
    *(a3 + 56) = v22;
    CGColorSpaceRelease(v23);
    *(a3 + 8) = **(a1 + 32);
  }
}

uint64_t std::__function::__func<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_0,std::allocator<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_0>,void ()(re::anonymous namespace::vImageFormatStorage &,re::anonymous namespace::vImageFormatStorage &,re::mtl::PixelFormat &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_1,std::allocator<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_1>,void ()(re::TextureImportData::ImportReport &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D0C198;
  a2[1] = v2;
  return result;
}

void std::__function::__func<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_1,std::allocator<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_1>,void ()(re::TextureImportData::ImportReport &)>::operator()(uint64_t a1, id *this)
{
  v2 = *this;
  *this |= 0x40u;
  if (**(a1 + 8))
  {
    *this = v2 | 0x50;
    re::TextureImportData::ImportReport::setColorSpace(this, **(a1 + 8));
  }
}

uint64_t std::__function::__func<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_1,std::allocator<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_1>,void ()(re::TextureImportData::ImportReport &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_0,std::allocator<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_0>,void ()(re::anonymous namespace::vImageFormatStorage &,re::anonymous namespace::vImageFormatStorage &,re::mtl::PixelFormat &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0C218;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_0,std::allocator<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_0>,void ()(re::anonymous namespace::vImageFormatStorage &,re::anonymous namespace::vImageFormatStorage &,re::mtl::PixelFormat &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  ComponentCount = re::getComponentCount(**(a1 + 8));
  *a3 = 8;
  *(a3 + 4) = 8 * ComponentCount;
  if (re::getComponentCount(**(a1 + 8)) == 1)
  {
    v9 = 11;
  }

  else
  {
    v9 = 71;
  }

  *a4 = v9;
  *(a3 + 16) &= 0xFFFFCEFF;
  v10 = *(a1 + 16);
  v11 = *v10;
  if (*v10)
  {
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(*v10);
    Model = CGColorSpaceGetModel(v11);
    v14 = *(a2 + 40);
    *(a2 + 40) = v11;
    *(a2 + 48) = NumberOfComponents;
    *(a2 + 56) = Model;
    CGColorSpaceRelease(v14);
    v15 = *(a1 + 24);
    *(a2 + 8) = **(a1 + 16);
    v16 = *v15;
    v17 = CGColorSpaceGetNumberOfComponents(*v15);
    v18 = CGColorSpaceGetModel(v16);
    v19 = *(a3 + 40);
    *(a3 + 40) = v16;
    *(a3 + 48) = v17;
    *(a3 + 56) = v18;
    CGColorSpaceRelease(v19);
    *(a3 + 8) = **(a1 + 24);
  }
}

uint64_t std::__function::__func<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_0,std::allocator<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_0>,void ()(re::anonymous namespace::vImageFormatStorage &,re::anonymous namespace::vImageFormatStorage &,re::mtl::PixelFormat &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_1,std::allocator<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_1>,void ()(re::TextureImportData::ImportReport &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D0C298;
  a2[1] = v2;
  return result;
}

void std::__function::__func<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_1,std::allocator<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_1>,void ()(re::TextureImportData::ImportReport &)>::operator()(uint64_t a1, id *this)
{
  *this |= 0x10u;
  re::TextureImportData::ImportReport::setColorSpace(this, **(a1 + 8));
  *this |= 0x40u;
}

uint64_t std::__function::__func<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_1,std::allocator<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_1>,void ()(re::TextureImportData::ImportReport &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::addPropertyToGeomModelDescriptor(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, const char *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v12 = a1;
  v68 = a2;
  v13 = a3;
  v14 = [v12 type];
  v15 = *MEMORY[0x1E69DEDC0];

  if (v14 == v15)
  {
    v31 = 8;
LABEL_9:
    v32 = 8;
    goto LABEL_15;
  }

  v16 = [v12 type];
  v17 = *MEMORY[0x1E69DEDD0];

  if (v16 == v17)
  {
    v31 = 11;
    v32 = 12;
    goto LABEL_15;
  }

  v18 = [v12 type];
  v19 = *MEMORY[0x1E69DEDD8];

  if (v18 == v19)
  {
    v31 = 10;
    v32 = 16;
    goto LABEL_15;
  }

  v20 = [v12 type];
  v21 = *MEMORY[0x1E69DEDE8];

  if (v20 == v21)
  {
    v31 = 6;
    v32 = 4;
    goto LABEL_15;
  }

  v22 = [v12 type];
  v23 = *MEMORY[0x1E69DEDB0];

  if (v22 == v23)
  {
    v31 = 7;
    goto LABEL_9;
  }

  v24 = [v12 type];
  v25 = *MEMORY[0x1E69DEDF8];

  if (v24 == v25)
  {
    v32 = 4;
    v31 = 4;
LABEL_15:
    v33 = [v12 metadataWithKey:@"elementSize"];
    v34 = v33;
    v66 = a4;
    if (v33)
    {
      v35 = [v33 intValue] == 1;
    }

    else
    {
      v35 = 1;
    }

    v36 = 4;
    if (!a6 && v35)
    {
      v37 = v31;
      v38 = v13;
      v39 = [v12 metadataWithKey:@"interpolation"];
      v40 = v39;
      if (v39)
      {
        v41 = [v39 stringValue];

        v38 = v41;
      }

      if ([v38 isEqualToString:@"vertex"] & 1) != 0 || (objc_msgSend(v38, "isEqualToString:", @"varying"))
      {
        v36 = 1;
      }

      else if ([v38 isEqualToString:@"faceVarying"])
      {
        v36 = 3;
      }

      else if ([v38 isEqualToString:@"constant"])
      {
        v36 = 0;
      }

      else if ([v38 isEqualToString:@"uniform"])
      {
        v36 = 2;
      }

      else
      {
        v36 = 4;
      }

      v31 = v37;
    }

    v42 = v13;
    v43 = [v12 data];
    v44 = [v43 dataNoCopy];
    v45 = [v44 copy];

    if (!v43 || !v45)
    {
      v49 = "No values specified for attribute.";
      goto LABEL_31;
    }

    v47 = [v45 length];
    v48 = [v43 arraySize];
    if (v47 < v48 * v32)
    {
      v49 = "Skipping attribute because the value buffer is malformed.";
LABEL_31:
      v50 = v76;
      v51 = v77;
      v52 = v78;
      *a7 = 0;
      *(a7 + 8) = 100;
      *(a7 + 16) = re::AssetErrorCategory(void)::instance;
      *(a7 + 24) = v50;
      *(a7 + 40) = v51;
      *(a7 + 48) = v52;
      v30 = v68;
LABEL_53:

      v13 = v42;
      goto LABEL_54;
    }

    *&v76 = v45;
    BYTE8(v76) = v31;
    v77 = [v43 arraySize];
    v78 = 0;
    v79 = v32;
    v30 = v68;
    v53 = [v68 data];
    v54 = [v53 dataNoCopy];
    v65 = [v54 copy];

    v71 = 0;
    v72 = -1;
    v74 = 0;
    v75 = 0;
    v73 = 0;
    if (v68 && v53)
    {
      v56 = [v65 length];
      v57 = [v53 arraySize];
      if (v56 < 4 * v57)
      {
        v58 = v69;
        v59 = v70;
        *a7 = 0;
        *(a7 + 8) = 100;
        *(a7 + 16) = re::AssetErrorCategory(void)::instance;
        *(a7 + 24) = v58;
        *(a7 + 40) = v59;
        v60 = v65;
LABEL_52:

        goto LABEL_53;
      }

      v73 = [v53 arraySize];
      v75 = 4;
      v72 = 5;
      v55 = re::ObjCObject::operator=(&v71, v65);
    }

    v61 = a5;
    if (!a5)
    {
      v64 = [v12 name];
      v63 = [v64 stringValue];
      v55 = [v63 UTF8String];
      v61 = v55;
    }

    if (v53)
    {
      v62 = &v71;
    }

    else
    {
      v62 = 0;
    }

    re::GeomModelDescriptor::setAttribute(v66, &v69, v36, &v76, v62, a7);
    v60 = v65;
    if (v69)
    {
      if (BYTE8(v69))
      {
        (*(*v69 + 40))();
      }

      v69 = 0u;
      v70 = 0u;
    }

    if (!a5)
    {
    }

    goto LABEL_52;
  }

  v27 = v76;
  v28 = v77;
  v29 = v78;
  *a7 = 0;
  *(a7 + 8) = 100;
  *(a7 + 16) = re::AssetErrorCategory(void)::instance;
  *(a7 + 24) = v27;
  *(a7 + 40) = v28;
  *(a7 + 48) = v29;
  v30 = v68;
LABEL_54:
}

void re::addPropertyToGeomModelDescriptorHelper(uint64_t a1, void *a2, void *a3, void *a4, void *a5, const char *a6, int a7)
{
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v16 = [v14 name];
  v17 = [v16 stringValue];
  v19 = [v17 stringByAppendingString:@":indices"];

  v18 = [v15 property:v19];

  re::addPropertyToGeomModelDescriptor(v14, v18, v13, a5, a6, a7, a1);
}

id re::primaryUVSetForMesh(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 property:@"primvars:st"];
  v3 = v2;
  v4 = MEMORY[0x1E69DEDC0];
  if (v2 && ([v2 type], v5 = objc_claimAutoreleasedReturnValue(), v6 = *v4, v5, v5 == v6))
  {
    v15 = v3;
  }

  else
  {
    v20 = v1;
    [v1 properties];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v24 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v22;
      v12 = *MEMORY[0x1E69DEEC0];
      v13 = *v4;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v15 = [v7 objectForKey:*(*(&v21 + 1) + 8 * i)];
          v16 = [v15 role];

          if (v16 == v12)
          {

            goto LABEL_17;
          }

          v17 = [v15 type];

          if (v17 == v13)
          {
            v18 = v15;

            v10 = v18;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 0;
    }

    v10 = v10;
    v15 = v10;
LABEL_17:

    v1 = v20;
  }

  return v15;
}

void re::addSkeletonBindingsAsAttributesToModelDescriptor(_anonymous_namespace_ *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v148 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 inheritedProperty:@"primvars:skel:jointWeights"];
  v9 = [v7 inheritedProperty:@"primvars:skel:jointIndices"];
  if (v8)
  {
    v10 = [v8 data];
    v11 = v10;
    if (v10 && v9)
    {
      v12 = [v9 data];

      if (v12)
      {
        v13 = [v8 metadataWithKey:@"elementSize"];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 intValue];
        }

        else
        {
          v15 = 1;
        }

        v94 = v15;
        v96 = v15;
        v16 = *(a1 + 2) * v15;
        v17 = [v8 data];
        v18 = [v17 dataNoCopy];
        if ([v18 length] < 4 * v16)
        {

LABEL_131:
          goto LABEL_132;
        }

        v92 = v14;
        v93 = a4;
        v90 = a3;
        v91 = a1;
        v19 = [v9 data];
        v20 = [v19 dataNoCopy];
        v21 = [v20 length];

        if (v21 < 4 * v16)
        {
          goto LABEL_131;
        }

        v22 = [v9 metadataWithKey:@"elementSize"];
        v23 = v22;
        v24 = v22 ? [v22 intValue] : 1;

        if (v24 != v96)
        {
          goto LABEL_131;
        }

        v25 = [v8 metadataWithKey:@"interpolation"];
        v26 = [v25 stringValue];
        v27 = [v26 isEqualToString:@"constant"];

        v28 = [v9 metadataWithKey:@"interpolation"];
        v29 = [v28 stringValue];
        v30 = [v29 isEqualToString:@"constant"];

        if ((v27 & 1) == 0)
        {
          v31 = [v8 data];
          v32 = [v31 arraySize];

          if (v32 != v16)
          {
            goto LABEL_131;
          }
        }

        if ((v30 & 1) == 0)
        {
          v33 = [v9 data];
          v34 = [v33 arraySize];

          if (v34 != v16)
          {
            goto LABEL_131;
          }
        }

        if (v27)
        {
          v87 = v30;
          v86 = [v8 data];
          v85 = [v86 dataNoCopy];
          v35 = [v85 bytes];
          v132 = 0;
          v131 = 0;
          v133 = 0;
          if (v16)
          {
            v37 = 0;
            v38 = 0;
            v39 = 4 * v96;
            do
            {
              v40 = v132;
              if (v132 <= v38)
              {
                goto LABEL_137;
              }

              v36 = memcpy((v133 + v37), v35, v39);
              v38 += v96;
              v37 += v39;
            }

            while (v38 < v16);
          }

          v113 = v133;
          v114 = v132;
          *v145 = 0;
          *&v145[8] = 0;
          v40 = v91;
          re::GeomModelDescriptor::setAttribute<float,unsigned int>(v91, &v137, 4, &v113, v145, v128);
          if ((v128[0] & 1) == 0 && v129)
          {
            if (BYTE8(v129))
            {
              (*(*v129 + 40))();
            }

            v130 = 0u;
            v129 = 0u;
          }

          v30 = v87;
          if (*&v137.f64[0] && (LOBYTE(v137.f64[1]) & 1) != 0)
          {
            (*(**&v137.f64[0] + 40))();
          }

          if (v131 && v132)
          {
            (*(*v131 + 40))();
          }
        }

        else
        {
          v40 = v91;
          re::addPropertyToGeomModelDescriptorHelper(v134, v7, v8, @"constant", v91, "skinnedAnimationWeights", 1);
          if ((v134[0] & 1) == 0 && v135)
          {
            if (BYTE8(v135))
            {
              (*(*v135 + 40))();
            }

            v136 = 0u;
            v135 = 0u;
          }
        }

        if (v30)
        {
          v88 = [v9 data];
          v86 = [v88 dataNoCopy];
          v35 = [v86 bytes];
          v132 = 0;
          v131 = 0;
          v133 = 0;
          if (v16)
          {
            v42 = 0;
            v38 = 0;
            v43 = 4 * v96;
            while (1)
            {
              v40 = v132;
              if (v132 <= v38)
              {
                break;
              }

              v41 = memcpy((v133 + v42), v35, v43);
              v38 += v96;
              v42 += v43;
              if (v38 >= v16)
              {
                goto LABEL_47;
              }
            }

LABEL_141:
            v113 = 0;
            v140 = 0u;
            v141 = 0u;
            v138 = 0u;
            v139 = 0u;
            v137 = 0u;
            v76 = MEMORY[0x1E69E9C10];
            v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v145 = 136315906;
            *&v145[4] = "operator[]";
            *&v145[12] = 1024;
            if (v77)
            {
              v78 = 3;
            }

            else
            {
              v78 = 2;
            }

            *&v145[14] = 468;
            *&v145[18] = 2048;
            *&v145[20] = v38;
            v146 = 2048;
            v147 = v40;
            _os_log_send_and_compose_impl(v78, &v113, &v137, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v145, 38, v85, v86);
            _os_crash_msg();
            __break(1u);
LABEL_145:
            v108 = 0;
            v140 = 0u;
            v141 = 0u;
            v138 = 0u;
            v139 = 0u;
            v137 = 0u;
            v79 = MEMORY[0x1E69E9C10];
            v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v145 = 136315906;
            *&v145[4] = "operator[]";
            *&v145[12] = 1024;
            if (v80)
            {
              v81 = 3;
            }

            else
            {
              v81 = 2;
            }

            *&v145[14] = 468;
            *&v145[18] = 2048;
            *&v145[20] = v14;
            v146 = 2048;
            v147 = v35;
            _os_log_send_and_compose_impl(v81, &v108, &v137, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v145, 38, v85, v86);
            _os_crash_msg();
            __break(1u);
LABEL_149:
            v108 = 0;
            v140 = 0u;
            v141 = 0u;
            v138 = 0u;
            v139 = 0u;
            v137 = 0u;
            v82 = MEMORY[0x1E69E9C10];
            v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v145 = 136315906;
            *&v145[4] = "operator[]";
            *&v145[12] = 1024;
            if (v83)
            {
              v84 = 3;
            }

            else
            {
              v84 = 2;
            }

            *&v145[14] = 468;
            *&v145[18] = 2048;
            *&v145[20] = v14;
            v146 = 2048;
            v147 = v35;
            _os_log_send_and_compose_impl(v84, &v108, &v137, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v145, 38, v85, v86);
            _os_crash_msg();
            __break(1u);
          }

LABEL_47:
          v113 = v133;
          v114 = v132;
          *v145 = 0;
          *&v145[8] = 0;
          v40 = v91;
          re::GeomModelDescriptor::setAttribute<int,unsigned int>(v91, &v137, 4, &v113, v145, v122);
          v44 = v94;
          if ((v122[0] & 1) == 0 && v123)
          {
            if (BYTE8(v123))
            {
              (*(*v123 + 40))();
            }

            v124 = 0u;
            v123 = 0u;
          }

          if (*&v137.f64[0] && (LOBYTE(v137.f64[1]) & 1) != 0)
          {
            (*(**&v137.f64[0] + 40))();
          }

          if (v131 && v132)
          {
            (*(*v131 + 40))();
          }
        }

        else
        {
          re::addPropertyToGeomModelDescriptorHelper(v125, v7, v9, @"constant", v40, "skinnedAnimationJointIndices", 1);
          v44 = v94;
          if ((v125[0] & 1) == 0)
          {
            v45 = v126;
            if (v126)
            {
              if (BYTE8(v126))
              {
                v45 = (*(*v126 + 40))();
              }

              v127 = 0u;
              v126 = 0u;
            }
          }
        }

        v35 = *(v40 + 2);
        v132 = 0;
        v131 = 0;
        v133 = 0;
        if (!v35)
        {
LABEL_68:
          v113 = v133;
          v114 = v132;
          *v145 = 0;
          *&v145[8] = 0;
          re::GeomModelDescriptor::setAttribute<int,unsigned int>(v40, &v137, 4, &v113, v145, v119);
          if ((v119[0] & 1) == 0 && v120)
          {
            if (BYTE8(v120))
            {
              (*(*v120 + 40))();
            }

            v121 = 0u;
            v120 = 0u;
          }

          if (*&v137.f64[0] && (LOBYTE(v137.f64[1]) & 1) != 0)
          {
            (*(**&v137.f64[0] + 40))();
          }

          if (v131 && v132)
          {
            (*(*v131 + 40))();
          }

          v50 = [v7 inheritedProperty:@"primvars:skel:geomBindTransform"];
          v132 = 0;
          v131 = 0;
          v133 = 0;
          if (v50 && ([(_anonymous_namespace_ *)v50 data], v51 = objc_claimAutoreleasedReturnValue(), v51, v51))
          {
            v143 = 0u;
            v144 = 0u;
            v141 = 0u;
            v142 = 0u;
            v139 = 0u;
            v140 = 0u;
            v137 = 0u;
            v138 = 0u;
            objc_msgSend_double4x4Value(v50);
            v97 = vcvt_hight_f32_f64(vcvt_f32_f64(v137), v138);
            *_ZN2re10FixedArrayIDv4_fEixEm(v132, v133, 0) = v97;
            v98 = vcvt_hight_f32_f64(vcvt_f32_f64(v139), v140);
            *_ZN2re10FixedArrayIDv4_fEixEm(v132, v133, 1uLL) = v98;
            v99 = vcvt_hight_f32_f64(vcvt_f32_f64(v141), v142);
            *_ZN2re10FixedArrayIDv4_fEixEm(v132, v133, 2uLL) = v99;
            v100 = vcvt_hight_f32_f64(vcvt_f32_f64(v143), v144);
          }

          else
          {
            v52 = MEMORY[0x1E69E9B18];
            v101 = *MEMORY[0x1E69E9B18];
            *_ZN2re10FixedArrayIDv4_fEixEm(v132, v133, 0) = v101;
            v102 = v52[1];
            *_ZN2re10FixedArrayIDv4_fEixEm(v132, v133, 1uLL) = v102;
            v103 = v52[2];
            *_ZN2re10FixedArrayIDv4_fEixEm(v132, v133, 2uLL) = v103;
            v100 = v52[3];
          }

          v53 = _ZN2re10FixedArrayIDv4_fEixEm(v132, v133, 3uLL);
          *v53 = v100;
          v113 = v133;
          v114 = v132;
          *v145 = 0;
          *&v145[8] = 0;
          _ZN2re19GeomModelDescriptor12setAttributeIDv4_fjEENS_6ResultINS_4UnitENS_13DetailedErrorEEERKNS_13DynamicStringENS_17GeomAttributeRateERKNS_5SliceIT_EERKNSB_IT0_EE(v40, &v137, 4, &v113, v145, v116);
          if ((v116[0] & 1) == 0 && v117)
          {
            if (BYTE8(v117))
            {
              (*(*v117 + 40))();
            }

            v118 = 0u;
            v117 = 0u;
          }

          if (*&v137.f64[0] && (LOBYTE(v137.f64[1]) & 1) != 0)
          {
            (*(**&v137.f64[0] + 40))();
          }

          v54 = [v7 property:@"skel:joints"];
          v55 = v54;
          if (v54)
          {
            v56 = [v54 data];

            if (v56)
            {
              v95 = v50;
              v89 = v55;
              v57 = [v55 stringArray];
              v58 = [v57 count];
              v113 = 0;
              v114 = 0;
              v115 = 0;
              v59 = v58;
              v104 = v59;
              if (v59)
              {
                v14 = 0;
                do
                {
                  v61 = [v57 objectAtIndexedSubscript:v14];
                  v62 = [v61 UTF8String];
                  v63 = [v57 objectAtIndexedSubscript:v14];
                  v64 = [v63 length];
                  *v145 = 0;
                  *&v145[8] = &str_67;
                  v65 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v93 + 112, v145, (0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v145 >> 31) ^ (*v145 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v145 >> 31) ^ (*v145 >> 1))) >> 27))) ^ ((0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v145 >> 31) ^ (*v145 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v145 >> 31) ^ (*v145 >> 1))) >> 27))) >> 31), &v137);
                  v66 = HIDWORD(v137.f64[1]);
                  v67 = *(v93 + 128);
                  if (v145[0])
                  {
                    if (v145[0])
                    {
                    }
                  }

                  *v145 = 0;
                  *&v145[8] = &str_67;

                  v35 = v114;
                  if (v66 == 0x7FFFFFFF)
                  {
                    if (v114 <= v14)
                    {
                      goto LABEL_145;
                    }

                    *(v115 + 4 * v14) = v14;
                  }

                  else
                  {
                    if (v114 <= v14)
                    {
                      goto LABEL_149;
                    }

                    *(v115 + 4 * v14) = *(v67 + 32 * v66 + 24);
                  }

                  ++v14;
                }

                while (v104 != v14);
              }

              v108 = v115;
              v109 = v114;
              *v145 = 0;
              *&v145[8] = 0;
              v40 = v91;
              re::GeomModelDescriptor::setAttribute<int,unsigned int>(v91, &v137, 4, &v108, v145, v110);
              if ((v110[0] & 1) == 0 && v111)
              {
                if (BYTE8(v111))
                {
                  (*(*v111 + 40))();
                }

                v112 = 0u;
                v111 = 0u;
              }

              if (*&v137.f64[0] && (LOBYTE(v137.f64[1]) & 1) != 0)
              {
                (*(**&v137.f64[0] + 40))();
              }

              v14 = v92;
              if (v113 && v114)
              {
                (*(*v113 + 40))();
              }

              v50 = v95;
              v55 = v89;
            }
          }

          memset(v145, 0, 24);
          v68 = *(v90 + 8) >> 1;
          v69 = memcpy(*&v145[16], *v90, *(v90 + 8));
          *(*&v145[16] + *(v90 + 8)) = 0;
          v108 = *&v145[16];
          v109 = *&v145[8];
          v113 = 0;
          v114 = 0;
          re::GeomModelDescriptor::setAttribute<unsigned short,unsigned int>(v40, &v137, 4, &v108, &v113, v105);
          if ((v105[0] & 1) == 0 && v106)
          {
            if (BYTE8(v106))
            {
              (*(*v106 + 40))();
            }

            v107 = 0u;
            v106 = 0u;
          }

          if (*&v137.f64[0] && (LOBYTE(v137.f64[1]) & 1) != 0)
          {
            (*(**&v137.f64[0] + 40))();
          }

          if (*v145 && *&v145[8])
          {
            (*(**v145 + 40))();
          }

          if (v131 && v132)
          {
            (*(*v131 + 40))();
          }

          goto LABEL_131;
        }

        v47 = 0;
        v38 = v132;
        v48 = v133;
        v49 = v44;
        while (v38 != v47)
        {
          *(v48 + 4 * v47) = v49;
          v49 += v44;
          if (v35 == ++v47)
          {
            goto LABEL_68;
          }
        }

        v113 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        v70 = MEMORY[0x1E69E9C10];
        v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v145 = 136315906;
        *&v145[4] = "operator[]";
        *&v145[12] = 1024;
        if (v71)
        {
          v72 = 3;
        }

        else
        {
          v72 = 2;
        }

        *&v145[14] = 468;
        *&v145[18] = 2048;
        *&v145[20] = v38;
        v146 = 2048;
        v147 = v38;
        _os_log_send_and_compose_impl(v72, &v113, &v137, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v145, 38, v85, v86);
        _os_crash_msg();
        __break(1u);
LABEL_137:
        v113 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        v73 = MEMORY[0x1E69E9C10];
        v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v145 = 136315906;
        *&v145[4] = "operator[]";
        *&v145[12] = 1024;
        if (v74)
        {
          v75 = 3;
        }

        else
        {
          v75 = 2;
        }

        *&v145[14] = 468;
        *&v145[18] = 2048;
        *&v145[20] = v38;
        v146 = 2048;
        v147 = v40;
        _os_log_send_and_compose_impl(v75, &v113, &v137, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v145, 38, v85, v86);
        _os_crash_msg();
        __break(1u);
        goto LABEL_141;
      }
    }

    else
    {
    }
  }

LABEL_132:
}