@interface CISampler
+ (CISampler)samplerWithImage:(CIImage *)im;
+ (CISampler)samplerWithImage:(CIImage *)im keysAndValues:(id)key0;
+ (CISampler)samplerWithImage:(CIImage *)im options:(NSDictionary *)dict;
- (CGRect)extent;
- (CIFilterShape)definition;
- (CISampler)init;
- (CISampler)initWithImage:(CIImage *)im options:(NSDictionary *)dict;
- (id)_initWithImage:(id)image key0:(id)key0 vargs:(char *)vargs;
- (id)debugDescription;
- (id)description;
- (id)opaqueShape;
- (void)dealloc;
- (void)init;
@end

@implementation CISampler

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {
    if (priv[22] > 0x3FFu)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __20__CISampler_dealloc__block_invoke_2;
      v5[3] = &__block_descriptor_40_e5_v8__0l;
      v5[4] = priv;
      CI::Object::performDeferredRoot(v5);
    }

    else
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __20__CISampler_dealloc__block_invoke;
      v6[3] = &__block_descriptor_40_e5_v8__0l;
      v6[4] = priv;
      CI::Object::performDeferred(v6);
    }
  }

  v4.receiver = self;
  v4.super_class = CISampler;
  [(CISampler *)&v4 dealloc];
}

void __20__CISampler_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CI::Object::unref(v1);
  }
}

void __20__CISampler_dealloc__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CI::Object::unref(v1);
  }
}

- (CISampler)init
{
  v3 = ci_logger_api(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(CISampler *)v3 init];
  }

  return 0;
}

- (id)_initWithImage:(id)image key0:(id)key0 vargs:(char *)vargs
{
  v30 = *MEMORY[0x1E69E9840];
  vargsCopy = vargs;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (key0)
  {
    *&v9 = 138543362;
    v24 = v9;
    do
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        v17 = ci_logger_api(isKindOfClass, v11);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [CISampler _initWithImage:v26 key0:v17 vargs:?];
        }

        goto LABEL_13;
      }

      v12 = vargsCopy;
      vargsCopy += 8;
      v13 = *v12;
      if (*v12)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || (v14 = CFGetTypeID(v13), TypeID = CGColorSpaceGetTypeID(), v14 == TypeID))
        {
          [dictionary setValue:v13 forKey:{key0, v24}];
        }

        else
        {
          v21 = ci_logger_api(TypeID, v16);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = v24;
            key0Copy2 = key0;
            v19 = v21;
            v20 = "CISampler value for key '%{public}@' must be a NSObject or a CGColorSpaceRef. Skipping.";
            goto LABEL_16;
          }
        }
      }

      else
      {
        v18 = ci_logger_api(isKindOfClass, v11);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = v24;
          key0Copy2 = key0;
          v19 = v18;
          v20 = "CISampler value for key '%{public}@' is nil. Skipping.";
LABEL_16:
          _os_log_error_impl(&dword_19CC36000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
        }
      }

LABEL_13:
      v22 = vargsCopy;
      vargsCopy += 8;
      key0 = *v22;
    }

    while (*v22);
  }

  return [(CISampler *)self initWithImage:image options:dictionary, v24];
}

- (CISampler)initWithImage:(CIImage *)im options:(NSDictionary *)dict
{
  v48 = *MEMORY[0x1E69E9840];
  if (!im)
  {
LABEL_44:

    return 0;
  }

  imageByClampingToExtent = im;
  [-[NSDictionary valueForKey:](dict valueForKey:{@"blur", "doubleValue"}];
  v8 = fmax(v7, 0.0);
  if (v8 > 0.0)
  {
    v9 = [(NSDictionary *)dict valueForKey:@"blur_format"];
    if (v9)
    {
      v11 = ci_logger_api(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        *&buf[4] = "[CISampler initWithImage:options:]";
        _os_log_impl(&dword_19CC36000, v11, OS_LOG_TYPE_INFO, "%{public}s ignoring kCISamplerBlurFormat because it is not supported.", buf, 0xCu);
      }
    }

    imageByClampingToExtent = [(CIImage *)imageByClampingToExtent imageByApplyingGaussianBlurWithSigma:v8];
  }

  v12 = [(NSDictionary *)dict valueForKey:@"wrap_mode"];
  if (v12)
  {
    v13 = v12;
    if ([v12 isEqual:@"clamp"])
    {
      [(CIImage *)imageByClampingToExtent extent];
      if (!CGRectIsInfinite(v49))
      {
        imageByClampingToExtent = [(CIImage *)imageByClampingToExtent imageByClampingToExtent];
      }
    }

    if ([v13 isEqual:@"periodic"])
    {
      [(CIImage *)imageByClampingToExtent extent];
      IsInfinite = CGRectIsInfinite(v50);
      if (!IsInfinite)
      {
        v16 = ci_logger_api(IsInfinite, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 136446210;
          *&buf[4] = "[CISampler initWithImage:options:]";
          _os_log_impl(&dword_19CC36000, v16, OS_LOG_TYPE_INFO, "%{public}s ignoring kCISamplerWrapPeriodic because it is not supported.", buf, 0xCu);
        }
      }
    }
  }

  v17 = [(NSDictionary *)dict valueForKey:@"filter_mode"];
  if (v17)
  {
    v18 = v17;
    if ([v17 isEqual:@"nearest"])
    {
      imageBySamplingNearest = [(CIImage *)imageByClampingToExtent imageBySamplingNearest];
LABEL_18:
      imageByClampingToExtent = imageBySamplingNearest;
      goto LABEL_22;
    }

    if (([v18 isEqual:@"point"] & 1) == 0 && objc_msgSend(v18, "isEqual:", @"linear"))
    {
      imageBySamplingNearest = [(CIImage *)imageByClampingToExtent imageBySamplingLinear];
      goto LABEL_18;
    }
  }

LABEL_22:
  v20 = [(NSDictionary *)dict valueForKey:@"affine_matrix"];
  if (!v20)
  {
    goto LABEL_35;
  }

  v21 = v20;
  v22 = *(MEMORY[0x1E695EFD0] + 16);
  v43 = *MEMORY[0x1E695EFD0];
  v44 = v22;
  v45 = *(MEMORY[0x1E695EFD0] + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objCType = [v21 objCType];
    if (!strcmp(objCType, "{CGAffineTransform=dddddd}") || (isKindOfClass = strcmp(objCType, "{?=dddddd}"), !isKindOfClass))
    {
      [v21 getValue:&v43 size:48];
LABEL_29:
      *buf = v43;
      *&buf[16] = v44;
      v47 = v45;
      imageByClampingToExtent = [(CIImage *)imageByClampingToExtent imageByApplyingTransform:buf, v43];
      goto LABEL_35;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = 0u;
      memset(buf, 0, sizeof(buf));
      objc_msgSend_transformStruct(v21);
      v43 = *buf;
      v44 = *&buf[16];
      v45 = v47;
      goto LABEL_29;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      isKindOfClass = [v21 count];
      if (isKindOfClass == 6)
      {
        [objc_msgSend(v21 objectAtIndex:{0), "doubleValue"}];
        *&v43 = v26;
        [objc_msgSend(v21 objectAtIndex:{1), "doubleValue"}];
        *(&v43 + 1) = v27;
        [objc_msgSend(v21 objectAtIndex:{2), "doubleValue"}];
        *&v44 = v28;
        [objc_msgSend(v21 objectAtIndex:{3), "doubleValue"}];
        *(&v44 + 1) = v29;
        [objc_msgSend(v21 objectAtIndex:{4), "doubleValue"}];
        *&v45 = v30;
        [objc_msgSend(v21 objectAtIndex:{5), "doubleValue"}];
        *(&v45 + 1) = v31;
        goto LABEL_29;
      }
    }
  }

  v32 = ci_logger_api(isKindOfClass, v25);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = [v21 description];
    *buf = 136446466;
    *&buf[4] = "[CISampler initWithImage:options:]";
    *&buf[12] = 2114;
    *&buf[14] = v33;
    _os_log_impl(&dword_19CC36000, v32, OS_LOG_TYPE_INFO, "%{public}s ignoring kCISamplerAffineMatrix value because it is not a valid object '%{public}@'.", buf, 0x16u);
  }

LABEL_35:
  v34 = [(NSDictionary *)dict valueForKey:@"color_space", v43];
  if (v34)
  {
    v36 = v34;
    is_RGB_and_supports_output = CI::ColorSpace_is_RGB_and_supports_output(v34, v35);
    if (is_RGB_and_supports_output)
    {
      imageByClampingToExtent = [(CIImage *)imageByClampingToExtent imageByColorMatchingWorkingSpaceToColorSpace:v36];
    }

    else
    {
      v39 = ci_logger_api(is_RGB_and_supports_output, v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        *&buf[4] = "[CISampler initWithImage:options:]";
        _os_log_impl(&dword_19CC36000, v39, OS_LOG_TYPE_INFO, "%{public}s ignoring kCISamplerColorSpace value because it is not an RGB CGColorSpaceRef that supports output.", buf, 0xCu);
      }
    }
  }

  if (!imageByClampingToExtent)
  {
    goto LABEL_44;
  }

  _internalRepresentation = [(CIImage *)imageByClampingToExtent _internalRepresentation];
  v41 = _internalRepresentation;
  if (_internalRepresentation)
  {
    CI::Object::ref(_internalRepresentation);
  }

  self->_priv = v41;
  return self;
}

+ (CISampler)samplerWithImage:(CIImage *)im
{
  if (!im)
  {
    return 0;
  }

  v3 = [[CISampler alloc] initWithImage:im];

  return v3;
}

+ (CISampler)samplerWithImage:(CIImage *)im keysAndValues:(id)key0
{
  va_start(va, key0);
  if (im)
  {
    return [[CISampler alloc] _initWithImage:im key0:key0 vargs:va];
  }

  else
  {
    return 0;
  }
}

+ (CISampler)samplerWithImage:(CIImage *)im options:(NSDictionary *)dict
{
  if (!im)
  {
    return 0;
  }

  v4 = [[CISampler alloc] initWithImage:im options:dict];

  return v4;
}

- (CIFilterShape)definition
{
  [(CISampler *)self extent];

  return [CIFilterShape shapeWithRect:?];
}

- (id)opaqueShape
{
  priv = self->_priv;
  if ((*(*priv + 128))(priv, a2) != 1 && (*(*priv + 128))(priv) != -1)
  {
    return 0;
  }

  return [(CISampler *)self definition];
}

- (CGRect)extent
{
  (*(*self->_priv + 88))();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)description
{
  [(CISampler *)self extent];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  if (CGRectIsInfinite(v12))
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<CISampler: %p extent [infinite]>", self, v8, v9, v10, v11];
  }

  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  if (CGRectIsEmpty(v13))
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<CISampler: %p extent [empty]>", self, v8, v9, v10, v11];
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<CISampler: %p extent [%g %g %g %g]>", self, *&x, *&y, *&width, *&height];
  }
}

- (id)debugDescription
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __29__CISampler_debugDescription__block_invoke;
  v3[3] = &unk_1E75C1EE0;
  v3[4] = self;
  return stream_to_string(v3);
}

size_t __29__CISampler_debugDescription__block_invoke(uint64_t a1, FILE *a2)
{
  fprintf(a2, "<CISampler: %p>\n", *(a1 + 32));
  CI::Image::print_graph(*(*(a1 + 32) + 8), a2);

  return fwrite("\n\n", 2uLL, 1uLL, a2);
}

- (void)init
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "[CISampler init]";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s init is not a valid initializer for CISampler", &v1, 0xCu);
}

- (void)_initWithImage:(uint8_t *)buf key0:(_BYTE *)a2 vargs:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "CISampler option key must be a NSString. Skipping.", buf, 2u);
}

@end