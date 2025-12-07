@interface CIImageProcessorKernel
+ (BOOL)processWithInputs:(NSArray *)inputs arguments:(NSDictionary *)arguments output:(id)output error:(NSError *)error;
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments outputs:(id)outputs error:(id *)error;
+ (CIImage)applyWithExtent:(CGRect)extent inputs:(NSArray *)inputs arguments:(NSDictionary *)args error:(NSError *)error;
+ (NSArray)roiTileArrayForInput:(int)input arguments:(NSDictionary *)arguments outputRect:(CGRect)outputRect;
+ (id)applyWithExtents:(id)extents inputs:(id)inputs arguments:(id)arguments error:(id *)error;
+ (id)logDescription:(id)description;
+ (int)_call_formatForInputAtIndex:(int)index arguments:(id)arguments;
+ (int)_call_outputFormatWithArguments:(id)arguments;
+ (unint64_t)_digestForArgs:(id)args;
@end

@implementation CIImageProcessorKernel

+ (BOOL)processWithInputs:(NSArray *)inputs arguments:(NSDictionary *)arguments output:(id)output error:(NSError *)error
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = [v6 exceptionWithName:v7 reason:objc_msgSend(v8 userInfo:{"stringWithFormat:", @"%s must be overridden in %@ class", "+[CIImageProcessorKernel processWithInputs:arguments:output:error:]", NSStringFromClass(v9)), 0}];
  objc_exception_throw(v10);
}

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments outputs:(id)outputs error:(id *)error
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = [v6 exceptionWithName:v7 reason:objc_msgSend(v8 userInfo:{"stringWithFormat:", @"%s must be overridden in %@ class", "+[CIImageProcessorKernel processWithInputs:arguments:outputs:error:]", NSStringFromClass(v9)), 0}];
  objc_exception_throw(v10);
}

+ (NSArray)roiTileArrayForInput:(int)input arguments:(NSDictionary *)arguments outputRect:(CGRect)outputRect
{
  v6[1] = *MEMORY[0x1E69E9840];
  [self roiForInput:*&input arguments:arguments outputRect:{outputRect.origin.x, outputRect.origin.y, outputRect.size.width, outputRect.size.height}];
  v6[0] = [CIVector vectorWithCGRect:?];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
}

+ (id)logDescription:(id)description
{
  v3 = objc_opt_class();

  return NSStringFromClass(v3);
}

+ (unint64_t)_digestForArgs:(id)args
{
  v6 = 0;
  XXH64_reset(v5, 0);
  if (args && (digestAdd(v5, args, &v6), v6))
  {
    return 0;
  }

  else
  {
    return XXH64_digest(v5);
  }
}

+ (int)_call_formatForInputAtIndex:(int)index arguments:(id)arguments
{
  v5 = *&index;
  v6 = [objc_opt_class() methodForSelector:sel_formatForInputAtIndex_arguments_];
  v7 = [CIImageProcessorKernel methodForSelector:sel_formatForInputAtIndex_arguments_];
  v8 = objc_opt_class();
  if (v6 == v7)
  {

    return [v8 formatForInputAtIndex:v5];
  }

  else
  {

    return [v8 formatForInputAtIndex:v5 arguments:arguments];
  }
}

+ (int)_call_outputFormatWithArguments:(id)arguments
{
  v4 = [objc_opt_class() methodForSelector:sel_outputFormatWithArguments_];
  v5 = [CIImageProcessorKernel methodForSelector:sel_outputFormatWithArguments_];
  v6 = objc_opt_class();
  if (v4 == v5)
  {

    return [v6 outputFormat];
  }

  else
  {

    return [v6 outputFormatWithArguments:arguments];
  }
}

+ (CIImage)applyWithExtent:(CGRect)extent inputs:(NSArray *)inputs arguments:(NSDictionary *)args error:(NSError *)error
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  v52[1] = *MEMORY[0x1E69E9840];
  v13 = NSSelectorFromString(&cfstr_Processwithinp.isa);
  v14 = [objc_opt_class() methodForSelector:v13];
  v15 = [CIImageProcessorKernel methodForSelector:v13];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  if (v14 == v15 || v16 == v17)
  {
    v37 = MEMORY[0x1E695DF30];
    v38 = *MEMORY[0x1E695D940];
    v39 = MEMORY[0x1E696AEC0];
    v40 = objc_opt_class();
    v41 = [v37 exceptionWithName:v38 reason:objc_msgSend(v39 userInfo:{"stringWithFormat:", @"%s must be overridden in %@ class", "+[CIImageProcessorKernel applyWithExtent:inputs:arguments:error:]", NSStringFromClass(v40)), 0}];
    objc_exception_throw(v41);
  }

  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  if (CGRectIsEmpty(v54))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    v42 = error;
    skipFormatChecks = [objc_opt_class() skipFormatChecks];
    v21 = [(NSArray *)inputs count];
    v22 = [self _call_outputFormatWithArguments:args];
    v24 = CI::format_modernize(v22, "+[CIImageProcessorKernel applyWithExtent:inputs:arguments:error:]", v23);
    v25 = v24;
    if (skipFormatChecks & 1) != 0 || !v24 || (CI::ProcessorImage::format_is_supported(v24, 0))
    {
      if (!v25 || v25 == 266)
      {
        [objc_opt_class() allowSRGBTranferFuntionOnOutput];
      }

      if (v25 != 261 && v25 != 2053 && v25 != 2309)
      {
        [objc_opt_class() outputIsOpaque];
      }

      if (![self _digestForArgs:args])
      {
        v27 = ci_logger_performance(0, v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = objc_opt_class();
          *buf = 136446466;
          v48 = "+[CIImageProcessorKernel applyWithExtent:inputs:arguments:error:]";
          v49 = 2114;
          v50 = NSStringFromClass(v28);
          _os_log_impl(&dword_19CC36000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s each object in arguments dictionary be an NSArray, NSDictionary, NSNumber, NSValue, NSData, NSString, NSNull, CIVector, CIColor, CIImage, CGImageRef or CGColorSpaceRef for CoreImage to cache optimally (%{public}@).", buf, 0x16u);
        }
      }

      if (!v21)
      {
LABEL_33:
        [objc_opt_class() methodForSelector:sel_roiTileArrayForInput_arguments_outputRect_];
        [CIImageProcessorKernel methodForSelector:sel_roiTileArrayForInput_arguments_outputRect_];
        if (v21)
        {
          operator new();
        }

        [objc_opt_class() logDescription:args];
        [objc_opt_class() onlyUsesMetal];
        operator new();
      }

      v43 = malloc_type_calloc(4uLL, v21, 0x100004052888210uLL);
      v29 = malloc_type_calloc(1uLL, v21, 0x100004077774924uLL);
      v30 = 0;
      v31 = 0;
      while (1)
      {
        v32 = [self _call_formatForInputAtIndex:v31 arguments:args];
        v34 = CI::format_modernize(v32, "+[CIImageProcessorKernel applyWithExtent:inputs:arguments:error:]", v33);
        v35 = v34;
        v43[v30] = v34;
        v36 = v34 ? skipFormatChecks : 1;
        if ((v36 & 1) == 0 && (CI::ProcessorImage::format_is_supported(v34, 1) & 1) == 0)
        {
          break;
        }

        v29[v30] = 0;
        if (!v35 || v35 == 266)
        {
          v29[v30] = [objc_opt_class() allowSRGBTranferFuntionOnInputAtIndex:v31];
        }

        v30 = (v31 + 1);
        v31 = v30;
        if (v21 <= v30)
        {
          goto LABEL_33;
        }
      }

      if (v42)
      {
        v45 = @"CINonLocalizedDescriptionKey";
        v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputFormat for image %d must be 0, %s.", v31, "R8, Rh, Rf, BGRA8, RGBAh, RGBAf"];
        *v42 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIImageProcessorKernel" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v46, &v45, 1)}];
      }

      free(v43);
      if (v29)
      {
        free(v29);
      }
    }

    else if (v42)
    {
      v51 = @"CINonLocalizedDescriptionKey";
      v52[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"outputFormat must be 0, %s.", "R8, Rh, Rf, BGRA8, RGBAh, RGBAf"];
      *v42 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIImageProcessorKernel" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v52, &v51, 1)}];
    }

    return 0;
  }
}

void __65__CIImageProcessorKernel_applyWithExtent_inputs_arguments_error___block_invoke(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v14 = objc_autoreleasePoolPush();
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v15 = [objc_opt_class() roiTileArrayForInput:a2 arguments:*(a1 + 40) outputRect:{a4, a5, a6, a7}];
  for (i = 0; [v15 count] > i; ++i)
  {
    [objc_msgSend(v15 objectAtIndexedSubscript:{i, 0, 0, 0, 0), "CGRectValue"}];
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v22 = v19;
    v23 = v20;
    std::vector<CGRect>::push_back[abi:nn200100](a3, &v21);
  }

  objc_autoreleasePoolPop(v14);
}

void __65__CIImageProcessorKernel_applyWithExtent_inputs_arguments_error___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, unsigned __int8 a14, int a15, void *a16, CI::TileTask *a17)
{
  v84 = *MEMORY[0x1E69E9840];
  v24 = objc_autoreleasePoolPush();
  v75 = [[CIImageProcessorOutput alloc] initWithSurface:a7 texture:a8 digest:a13 allowSRGB:a14 bounds:*(a1 + 72) onlyMetal:a16 context:a9 tileTask:a10, a11, a12, a17];
  if (*(a1 + 64) <= 1uLL)
  {
    v25 = 1;
  }

  else
  {
    v25 = *(a1 + 64);
  }

  std::vector<std::vector<IRect>>::vector[abi:nn200100](v80, v25);
  if (*(a1 + 64))
  {
    v26 = 0;
    v27 = 0;
    do
    {
      (*(*(a1 + 56) + 16))(__p, a9, a10, a11, a12);
      v28 = (v80[0] + v26);
      v29 = *(v80[0] + v26);
      if (v29)
      {
        v28[1] = v29;
        operator delete(v29);
        *v28 = 0;
        v28[1] = 0;
        v28[2] = 0;
      }

      *v28 = *__p;
      v28[2] = v83;
      ++v27;
      v30 = *(a1 + 64);
      v26 += 24;
    }

    while (v30 > v27);
  }

  else
  {
    v30 = 0;
  }

  v68 = v24;
  v32 = *v80[0];
  v31 = *(v80[0] + 8);
  v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:v30];
  v74 = v33;
  if (*(a1 + 64))
  {
    v35 = 0;
    v36 = (v31 - v32) >> 5;
    v37 = 1;
    do
    {
      std::vector<CGRect>::vector[abi:nn200100](__p, (v80[0] + 24 * v35));
      v85 = CGRectInset(*(__p[0] + a15), 0.001, 0.001);
      v86 = CGRectIntegral(v85);
      x = v86.origin.x;
      y = v86.origin.y;
      width = v86.size.width;
      height = v86.size.height;
      if (CGRectIsNull(v86))
      {
        v42 = 0;
        v43 = 0;
        v44 = 0x7FFFFFFF;
        v45 = 0x7FFFFFFF;
      }

      else
      {
        v87.origin.x = x;
        v87.origin.y = y;
        v87.size.width = width;
        v87.size.height = height;
        if (CGRectIsInfinite(v87))
        {
          v44 = -2147483647;
          v42 = 0xFFFFFFFFLL;
          v43 = 0xFFFFFFFFLL;
          v45 = -2147483647;
        }

        else
        {
          v88.origin.x = x;
          v88.origin.y = y;
          v88.size.width = width;
          v88.size.height = height;
          v89 = CGRectInset(v88, 0.000001, 0.000001);
          v90 = CGRectIntegral(v89);
          v45 = v90.origin.x;
          v44 = v90.origin.y;
          v43 = v90.size.width;
          v42 = v90.size.height;
        }
      }

      v91 = CGRectInset(*(*a5 + 32 * v35), 0.001, 0.001);
      v92 = CGRectIntegral(v91);
      v46 = v92.origin.x;
      v47 = v92.origin.y;
      v48 = v92.size.width;
      v49 = v92.size.height;
      if (CGRectIsNull(v92))
      {
        v50 = 0;
        v51 = 0;
        v52 = 0x7FFFFFFF;
        v53 = 0x7FFFFFFF;
      }

      else
      {
        v93.origin.x = v46;
        v93.origin.y = v47;
        v93.size.width = v48;
        v93.size.height = v49;
        if (CGRectIsInfinite(v93))
        {
          v52 = -2147483647;
          v50 = 0xFFFFFFFFLL;
          v51 = 0xFFFFFFFFLL;
          v53 = -2147483647;
        }

        else
        {
          v94.origin.x = v46;
          v94.origin.y = v47;
          v94.size.width = v48;
          v94.size.height = v49;
          v95 = CGRectInset(v94, 0.000001, 0.000001);
          v96 = CGRectIntegral(v95);
          v53 = v96.origin.x;
          v52 = v96.origin.y;
          v51 = v96.size.width;
          v50 = v96.size.height;
        }
      }

      cf[0] = __PAIR64__(v44, v45);
      cf[1] = v43;
      cf[2] = v42;
      v76[0] = v53;
      v76[1] = v52;
      v77 = v51;
      v78 = v50;
      if (v45 == v53 && v44 == v52 && v43 == v51 && v42 == v50)
      {
        v54 = 0;
      }

      else
      {
        v54 = *(a1 + 73);
      }

      [v74 addObject:{createTileInput(v75, a15, v36, cf, v76, *(*a2 + 8 * v35), *(*a3 + 8 * v35), *(*a4 + 8 * v35), (*(*a6 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v35)) != 0, *(a1 + 72), a16, v54 & 1)}];
      v33 = __p[0];
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v35 = v37;
    }

    while (*(a1 + 64) > v37++);
  }

  v56 = ci_signpost_log_render(v33, v34);
  v57 = (*(*a16 + 280))(a16) << 32;
  if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
  {
    v58 = *(a1 + 32);
    LODWORD(__p[0]) = 138543362;
    *(__p + 4) = v58;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v56, OS_SIGNPOST_INTERVAL_BEGIN, v57, "processor_process", "%{public}@", __p, 0xCu);
  }

  v59 = (*(*a16 + 280))(a16);
  TimerBase::TimerBase(__p, v59, 0, "processor_process", 0);
  cf[0] = 0;
  [objc_opt_class() processWithInputs:v74 arguments:*(a1 + 48) output:v75 error:cf];
  v60 = cf[0];
  if (cf[0])
  {
    CI::TileTask::setCommandBufferError(a17, cf[0]);
  }

  _ZZZ65__CIImageProcessorKernel_applyWithExtent_inputs_arguments_error__EUb1_EN13SignpostTimerD1Ev(__p, v60);
  v63 = ci_signpost_log_render(v61, v62);
  v64 = (*(*a16 + 280))(a16) << 32;
  if (v64 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
  {
    v65 = *(a1 + 32);
    LODWORD(__p[0]) = 138543362;
    *(__p + 4) = v65;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v63, OS_SIGNPOST_INTERVAL_BEGIN, v64, "processor_postprocess", "%{public}@", __p, 0xCu);
  }

  v66 = (*(*a16 + 280))(a16);
  TimerBase::TimerBase(__p, v66, 0, "processor_postprocess", 0);
  v81 = v75;
  post_process(v74, [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1], a16);
  _ZZZ65__CIImageProcessorKernel_applyWithExtent_inputs_arguments_error__EUb1_EN13SignpostTimerD1E_0v(__p, v67);
  __p[0] = v80;
  std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](__p);
  objc_autoreleasePoolPop(v68);
}

+ (id)applyWithExtents:(id)extents inputs:(id)inputs arguments:(id)arguments error:(id *)error
{
  v78[1] = *MEMORY[0x1E69E9840];
  v9 = NSSelectorFromString(&cfstr_Processwithinp_0.isa);
  v10 = [self methodForSelector:v9];
  v11 = [CIImageProcessorKernel methodForSelector:v9];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  if (v10 == v11 || v12 == v13)
  {
    v51 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%s must be overridden in %@ class", "+[CIImageProcessorKernel applyWithExtents:inputs:arguments:error:]", NSStringFromClass(self)), 0}];
    objc_exception_throw(v51);
  }

  v15 = [extents count];
  if (v15)
  {
    if (v15 < 5)
    {
      v52 = v15;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v18 = [extents countByEnumeratingWithState:&v58 objects:v76 count:16];
      if (v18)
      {
        v19 = *v59;
LABEL_12:
        v20 = 0;
        while (1)
        {
          if (*v59 != v19)
          {
            objc_enumerationMutation(extents);
          }

          v21 = *(*(&v58 + 1) + 8 * v20);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v21 count] != 4)
          {
            break;
          }

          [v21 CGRectValue];
          x = v79.origin.x;
          y = v79.origin.y;
          width = v79.size.width;
          height = v79.size.height;
          if (CGRectIsInfinite(v79) || (v80.origin.x = x, v80.origin.y = y, v80.size.width = width, v80.size.height = height, CGRectIsEmpty(v80)) || (v81.origin.x = x, v81.origin.y = y, v81.size.width = width, v81.size.height = height, CGRectIsEmpty(v81)))
          {
            if (!error)
            {
              return 0;
            }

            v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"extents objects must be finite, integral, and not empty."];
            v72 = @"CINonLocalizedDescriptionKey";
            v73 = v39;
            v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIImageProcessorKernel" code:5 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v73, &v72, 1)}];
            goto LABEL_43;
          }

          if (v18 == ++v20)
          {
            v18 = [extents countByEnumeratingWithState:&v58 objects:v76 count:16];
            if (v18)
            {
              goto LABEL_12;
            }

            goto LABEL_22;
          }
        }

        if (!error)
        {
          return 0;
        }

        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"extents objects must be CIVectors of length 4."];
        v74 = @"CINonLocalizedDescriptionKey";
        v75 = v40;
        v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIImageProcessorKernel" code:5 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v75, &v74, 1)}];
        goto LABEL_43;
      }

LABEL_22:
      array = [MEMORY[0x1E695DF70] array];
      v27 = v52;
      do
      {
        [array addObject:{+[CIImage emptyImage](CIImage, "emptyImage")}];
        --v27;
      }

      while (v27);
      if (![self _digestForArgs:arguments])
      {
        v29 = ci_logger_performance(0, v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = NSStringFromClass(self);
          *buf = 136446466;
          *&buf[4] = "+[CIImageProcessorKernel applyWithExtents:inputs:arguments:error:]";
          *&buf[12] = 2114;
          *&buf[14] = v30;
          _os_log_impl(&dword_19CC36000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s each object in arguments dictionary be an NSArray, NSDictionary, NSNumber, NSValue, NSData, NSString, NSNull, CIVector, CIColor, CIImage, CGImageRef or CGColorSpaceRef for CoreImage to cache optimally (%{public}@).", buf, 0x16u);
        }
      }

      v31 = [inputs count];
      if (!v31)
      {
        v41 = 0;
        v69[0] = 0;
        v69[1] = 0;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        memset(buf, 0, sizeof(buf));
        v42 = &buf[16];
        v57 = 0;
        do
        {
          [objc_msgSend(extents objectAtIndexedSubscript:{v41), "CGRectValue"}];
          *(v42 - 2) = v43;
          *(v42 - 1) = v44;
          *v42 = v45;
          *(v42 + 1) = v46;
          *(&v57 + v41 + 4) = [self allowSRGBTranferFuntionOnOutput];
          v47 = [self outputFormatAtIndex:v41 arguments:arguments];
          *(v69 + v41) = v47;
          if (CI::format_has_alpha(v47))
          {
            outputIsOpaque = [self outputIsOpaque];
          }

          else
          {
            outputIsOpaque = 1;
          }

          *(&v57 + v41++) = outputIsOpaque;
          v42 += 32;
        }

        while ((v52 & 7) != v41);
        [self logDescription:arguments];
        [objc_opt_class() methodForSelector:sel_roiTileArrayForInput_arguments_outputRect_];
        [CIImageProcessorKernel methodForSelector:sel_roiTileArrayForInput_arguments_outputRect_];
        [objc_opt_class() onlyUsesMetal];
        operator new();
      }

      v54 = malloc_type_calloc(4uLL, v31, 0x100004052888210uLL);
      v55 = malloc_type_calloc(1uLL, v31, 0x100004077774924uLL);
      v32 = 0;
      v33 = 0;
      while (1)
      {
        v34 = [self _call_formatForInputAtIndex:v33 arguments:arguments];
        v36 = CI::format_modernize(v34, "+[CIImageProcessorKernel applyWithExtents:inputs:arguments:error:]", v35);
        v54[v32] = v36;
        skipFormatChecks = [self skipFormatChecks];
        v38 = v36 ? skipFormatChecks : 1;
        if ((v38 & 1) == 0 && (CI::ProcessorImage::format_is_supported(v36, 1) & 1) == 0)
        {
          break;
        }

        v55[v32] = 0;
        if (!v36 || v36 == 266)
        {
          v55[v32] = [self allowSRGBTranferFuntionOnInputAtIndex:v33];
        }

        v32 = (v33 + 1);
        v33 = v32;
        if (v31 <= v32)
        {
          operator new();
        }
      }

      if (error)
      {
        v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputFormat for image %d must be 0, %s.", v33, "R8, Rh, Rf, BGRA8, RGBAh, RGBAf"];
        v70 = @"CINonLocalizedDescriptionKey";
        v71 = v49;
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIImageProcessorKernel" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v71, &v70, 1)}];
      }

      free(v54);
      if (v55)
      {
        free(v55);
      }
    }

    else if (error)
    {
      v77 = @"CINonLocalizedDescriptionKey";
      v78[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"The number of extents is too large."];
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIImageProcessorKernel" code:4 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v78, &v77, 1)}];
LABEL_43:
      v17 = 0;
      *error = v16;
      return v17;
    }

    return 0;
  }

  return MEMORY[0x1E695E0F0];
}

void __66__CIImageProcessorKernel_applyWithExtents_inputs_arguments_error___block_invoke(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v14 = objc_autoreleasePoolPush();
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v15 = [*(a1 + 32) roiTileArrayForInput:a2 arguments:*(a1 + 40) outputRect:{a4, a5, a6, a7}];
  for (i = 0; [v15 count] > i; ++i)
  {
    [objc_msgSend(v15 objectAtIndexedSubscript:{i, 0, 0, 0, 0), "CGRectValue"}];
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v22 = v19;
    v23 = v20;
    std::vector<CGRect>::push_back[abi:nn200100](a3, &v21);
  }

  objc_autoreleasePoolPop(v14);
}

void __66__CIImageProcessorKernel_applyWithExtents_inputs_arguments_error___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unsigned int a7, uint64_t *a8, uint64_t *a9, uint64_t a10, double *a11, unsigned __int8 *a12, int a13, void *a14, CI::TileTask *a15)
{
  v93 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:a7];
  if (a7 >= 1)
  {
    v19 = a7;
    v20 = a11 + 2;
    do
    {
      v22 = [CIImageProcessorOutput alloc];
      v24 = *a8++;
      v23 = v24;
      v26 = *a9++;
      v25 = v26;
      LODWORD(v26) = *a12++;
      v27 = *(v20 - 2);
      v28 = *(v20 - 1);
      v29 = *v20;
      v30 = v20[1];
      v20 += 4;
      [v17 addObject:{-[CIImageProcessorOutput initWithSurface:texture:digest:allowSRGB:bounds:onlyMetal:context:tileTask:](v22, "initWithSurface:texture:digest:allowSRGB:bounds:onlyMetal:context:tileTask:", v23, v25, a10, v26, *(a1 + 72), a14, v27, v28, v29, v30, a15)}];
      --v19;
    }

    while (v19);
  }

  if (*(a1 + 64) <= 1uLL)
  {
    v31 = 1;
  }

  else
  {
    v31 = *(a1 + 64);
  }

  std::vector<std::vector<IRect>>::vector[abi:nn200100](v90, v31);
  v32 = a1;
  if (*(a1 + 64))
  {
    v33 = 0;
    v34 = 0;
    do
    {
      (*(*(a1 + 56) + 16))(__p, *a11, a11[1], a11[2], a11[3]);
      v35 = (v90[0] + v33);
      v36 = *(v90[0] + v33);
      if (v36)
      {
        v35[1] = v36;
        operator delete(v36);
        *v35 = 0;
        v35[1] = 0;
        v35[2] = 0;
      }

      *v35 = *__p;
      v35[2] = v92;
      ++v34;
      v37 = *(a1 + 64);
      v33 += 24;
    }

    while (v37 > v34);
  }

  else
  {
    v37 = 0;
  }

  v39 = *v90[0];
  v38 = *(v90[0] + 8);
  v40 = [MEMORY[0x1E695DF70] arrayWithCapacity:v37];
  v83 = v40;
  if (*(a1 + 64))
  {
    v42 = 0;
    v77 = (v38 - v39) >> 5;
    v43 = 1;
    v84 = v17;
    do
    {
      std::vector<CGRect>::vector[abi:nn200100](__p, (v90[0] + 24 * v42));
      v94 = CGRectInset(*(__p[0] + a13), 0.001, 0.001);
      v95 = CGRectIntegral(v94);
      x = v95.origin.x;
      y = v95.origin.y;
      width = v95.size.width;
      height = v95.size.height;
      if (CGRectIsNull(v95))
      {
        v48 = 0;
        v49 = 0;
        v50 = 0x7FFFFFFF;
        v51 = 0x7FFFFFFF;
      }

      else
      {
        v96.origin.x = x;
        v96.origin.y = y;
        v96.size.width = width;
        v96.size.height = height;
        if (CGRectIsInfinite(v96))
        {
          v50 = -2147483647;
          v48 = 0xFFFFFFFFLL;
          v49 = 0xFFFFFFFFLL;
          v51 = -2147483647;
        }

        else
        {
          v97.origin.x = x;
          v97.origin.y = y;
          v97.size.width = width;
          v97.size.height = height;
          v98 = CGRectInset(v97, 0.000001, 0.000001);
          v99 = CGRectIntegral(v98);
          v51 = v99.origin.x;
          v50 = v99.origin.y;
          v49 = v99.size.width;
          v48 = v99.size.height;
        }
      }

      v100 = CGRectInset(*(*a5 + 32 * v42), 0.001, 0.001);
      v101 = CGRectIntegral(v100);
      v52 = v101.origin.x;
      v53 = v101.origin.y;
      v54 = v101.size.width;
      v55 = v101.size.height;
      if (CGRectIsNull(v101))
      {
        v56 = 0;
        v57 = 0;
        v58 = 0x7FFFFFFF;
        v59 = 0x7FFFFFFF;
      }

      else
      {
        v102.origin.x = v52;
        v102.origin.y = v53;
        v102.size.width = v54;
        v102.size.height = v55;
        if (CGRectIsInfinite(v102))
        {
          v58 = -2147483647;
          v56 = 0xFFFFFFFFLL;
          v57 = 0xFFFFFFFFLL;
          v59 = -2147483647;
        }

        else
        {
          v103.origin.x = v52;
          v103.origin.y = v53;
          v103.size.width = v54;
          v103.size.height = v55;
          v104 = CGRectInset(v103, 0.000001, 0.000001);
          v105 = CGRectIntegral(v104);
          v59 = v105.origin.x;
          v58 = v105.origin.y;
          v57 = v105.size.width;
          v56 = v105.size.height;
        }
      }

      v60 = [v84 objectAtIndexedSubscript:v42];
      cf[0] = __PAIR64__(v50, v51);
      cf[1] = v49;
      cf[2] = v48;
      v86[0] = v59;
      v86[1] = v58;
      v87 = v57;
      v88 = v56;
      if (v51 == v59 && v50 == v58 && v49 == v57 && v48 == v56)
      {
        v61 = 0;
        v62 = a1;
      }

      else
      {
        v62 = a1;
        v61 = *(a1 + 73);
      }

      [v83 addObject:{createTileInput(v60, a13, v77, cf, v86, *(*a2 + 8 * v42), *(*a3 + 8 * v42), *(*a4 + 8 * v42), (*(*a6 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v42)) != 0, *(v62 + 72), a14, v61 & 1)}];
      v40 = __p[0];
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v42 = v43;
      v32 = a1;
      v63 = *(a1 + 64) > v43++;
      v17 = v84;
    }

    while (v63);
  }

  v64 = ci_signpost_log_render(v40, v41);
  v65 = (*(*a14 + 280))(a14) << 32;
  if (v65 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
  {
    v66 = *(v32 + 32);
    LODWORD(__p[0]) = 138543362;
    *(__p + 4) = v66;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v64, OS_SIGNPOST_INTERVAL_BEGIN, v65, "processor_process", "%{public}@", __p, 0xCu);
  }

  v67 = (*(*a14 + 280))(a14);
  TimerBase::TimerBase(__p, v67, 0, "processor_process", 0);
  cf[0] = 0;
  [objc_opt_class() processWithInputs:v83 arguments:*(v32 + 48) outputs:v17 error:cf];
  v68 = cf[0];
  if (cf[0])
  {
    CI::TileTask::setCommandBufferError(a15, cf[0]);
  }

  _ZZZ66__CIImageProcessorKernel_applyWithExtents_inputs_arguments_error__EUb2_EN13SignpostTimerD1Ev(__p, v68);
  v71 = ci_signpost_log_render(v69, v70);
  v72 = (*(*a14 + 280))(a14) << 32;
  if (v72 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
  {
    v73 = *(v32 + 32);
    LODWORD(__p[0]) = 138543362;
    *(__p + 4) = v73;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v71, OS_SIGNPOST_INTERVAL_BEGIN, v72, "processor_postprocess", "%{public}@", __p, 0xCu);
  }

  v74 = (*(*a14 + 280))(a14);
  TimerBase::TimerBase(__p, v74, 0, "processor_postprocess", 0);
  post_process(v83, v17, a14);
  _ZZZ66__CIImageProcessorKernel_applyWithExtents_inputs_arguments_error__EUb2_EN13SignpostTimerD1E_0v(__p, v75);
  __p[0] = v90;
  std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](__p);
  objc_autoreleasePoolPop(context);
}

@end