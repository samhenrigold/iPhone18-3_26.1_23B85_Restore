@interface AVTCompositorPipeline
- (AVTCompositorPipeline)initWithFunction:(id)function;
- (void)compositeTexture:(id)texture forMemoji:(id)memoji considerSkin:(BOOL)skin componentsToConsider:(unint64_t)consider computeCommandHandler:(id)handler blitCommandHandler:(id)commandHandler completionHandler:(id)completionHandler helper:(id)self0 helperTokens:(id)self1;
@end

@implementation AVTCompositorPipeline

- (AVTCompositorPipeline)initWithFunction:(id)function
{
  v76 = *MEMORY[0x1E69E9840];
  functionCopy = function;
  v75.receiver = self;
  v75.super_class = AVTCompositorPipeline;
  v58 = [(AVTCompositorPipeline *)&v75 init];
  if (v58)
  {
    if (!functionCopy)
    {
      [AVTCompositorPipeline initWithFunction:];
    }

    device = [functionCopy device];
    v6 = objc_alloc_init(MEMORY[0x1E6974038]);
    [v6 setComputeFunction:?];
    name = [functionCopy name];
    [v6 setLabel:?];

    v73 = 0;
    v74 = 0;
    v55 = v6;
    v56 = device;
    v8 = [device newComputePipelineStateWithDescriptor:? options:? reflection:? error:?];
    v9 = 0;
    v10 = 0;
    pipelineState = v58->_pipelineState;
    v58->_pipelineState = v8;

    if (!v58->_pipelineState)
    {
      v13 = avt_default_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(AVTCompositorPipeline *)functionCopy initWithFunction:v10, v13];
      }
    }

    v53 = v10;
    v57 = functionCopy;
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v54 = v9;
    arguments = [v9 arguments];
    v16 = [arguments countByEnumeratingWithState:? objects:? count:?];
    v17 = v58;
    if (v16)
    {
      v18 = v16;
      v19 = *v70;
      v59 = arguments;
      do
      {
        for (i = 0; i != v18; i = (i + 1))
        {
          if (*v70 != v19)
          {
            objc_enumerationMutation(arguments);
          }

          v21 = *(*(&v69 + 1) + 8 * i);
          name2 = [v21 name];
          v23 = [name2 isEqualToString:?];

          if (!v23)
          {
            name3 = [v21 name];
            v25 = [name3 isEqualToString:?];

            if (v25)
            {
              if ([v21 type])
              {
                [AVTCompositorPipeline initWithFunction:];
              }

              if ([v21 bufferDataType] != 6)
              {
                [AVTCompositorPipeline initWithFunction:];
              }

              v17->_isAffectedBySkin = 1;
              v68[0] = MEMORY[0x1E69E9820];
              v68[1] = 3221225472;
              v68[2] = __42__AVTCompositorPipeline_initWithFunction___block_invoke;
              v68[3] = &unk_1E7F47C50;
              v68[4] = v21;
              v26 = v68;
LABEL_23:
              v29 = MEMORY[0x1BFB0EC20](v26);
              [v14 addObject:?];

              continue;
            }

            name4 = [v21 name];
            v28 = [name4 isEqualToString:?];

            if (v28)
            {
              if ([v21 type] != 2)
              {
                [AVTCompositorPipeline initWithFunction:];
              }

              v67[0] = MEMORY[0x1E69E9820];
              v67[1] = 3221225472;
              v67[2] = __42__AVTCompositorPipeline_initWithFunction___block_invoke_2;
              v67[3] = &unk_1E7F47C50;
              v67[4] = v21;
              v26 = v67;
              goto LABEL_23;
            }

            v30 = v14;
            name5 = [v21 name];
            v32 = [name5 componentsSeparatedByString:?];

            v33 = [v32 count];
            v34 = [v32 objectAtIndexedSubscript:?];
            v35 = AVTComponentTypeFromString(v34);

            if (v35 == 42)
            {
              [AVTCompositorPipeline initWithFunction:];
            }

            v17->_affectingComponentsMask |= 1 << v35;
            if (v33 == 3)
            {
              if ([v21 type] != 2)
              {
                [AVTCompositorPipeline initWithFunction:];
              }

              v43 = [v32 objectAtIndexedSubscript:?];
              if (([v43 isEqualToString:?] & 1) == 0)
              {
                [AVTCompositorPipeline initWithFunction:];
              }

              v44 = [v32 objectAtIndexedSubscript:?];
              v60[0] = MEMORY[0x1E69E9820];
              v60[1] = 3221225472;
              v60[2] = __42__AVTCompositorPipeline_initWithFunction___block_invoke_6;
              v60[3] = &unk_1E7F47CC8;
              v62 = v21;
              v63 = v35;
              v61 = v44;
              v45 = v44;
              v46 = MEMORY[0x1BFB0EC20](v60);
              v14 = v30;
              [v30 addObject:?];
            }

            else
            {
              if (v33 != 2)
              {
                if (v33 != 1)
                {
                  [AVTCompositorPipeline initWithFunction:];
                }

                if ([v21 type] != 2)
                {
                  [AVTCompositorPipeline initWithFunction:];
                }

                v66[0] = MEMORY[0x1E69E9820];
                v66[1] = 3221225472;
                v66[2] = __42__AVTCompositorPipeline_initWithFunction___block_invoke_3;
                v66[3] = &unk_1E7F47C78;
                v66[4] = v21;
                v66[5] = v35;
                v36 = MEMORY[0x1BFB0EC20](v66);
                v14 = v30;
                [v30 addObject:?];

                goto LABEL_45;
              }

              v37 = [v32 objectAtIndexedSubscript:?];
              if ([v37 hasPrefix:?])
              {
                if ([v21 type])
                {
                  [AVTCompositorPipeline initWithFunction:];
                }

                if ([v21 bufferDataType] != 6)
                {
                  [AVTCompositorPipeline initWithFunction:];
                }

                [@"color" length];
                v38 = [v37 substringFromIndex:?];
                integerValue = [v38 integerValue];

                v40 = [v32 objectAtIndexedSubscript:?];
                v41 = AVTPresetCategoryFromString(v40);

                if (v41 == 40)
                {
                  [AVTCompositorPipeline initWithFunction:];
                }

                v42 = v65;
                v65[0] = MEMORY[0x1E69E9820];
                v65[1] = 3221225472;
                v65[2] = __42__AVTCompositorPipeline_initWithFunction___block_invoke_4;
                v65[3] = &unk_1E7F47CA0;
                v65[5] = v41;
                v65[6] = integerValue - 1;
              }

              else
              {
                if (![v37 isEqualToString:?])
                {
                  [AVTCompositorPipeline initWithFunction:];
                }

                if ([v21 type])
                {
                  [AVTCompositorPipeline initWithFunction:];
                }

                if ([v21 bufferDataType] != 1)
                {
                  [AVTCompositorPipeline initWithFunction:];
                }

                v47 = [v32 objectAtIndexedSubscript:?];
                v48 = AVTPresetCategoryFromString(v47);

                if (v48 == 40)
                {
                  [AVTCompositorPipeline initWithFunction:];
                }

                v42 = v64;
                v64[0] = MEMORY[0x1E69E9820];
                v64[1] = 3221225472;
                v64[2] = __42__AVTCompositorPipeline_initWithFunction___block_invoke_5;
                v64[3] = &unk_1E7F47C78;
                v64[5] = v35;
              }

              v42[4] = v21;
              v49 = MEMORY[0x1BFB0EC20]();
              v14 = v30;
              [v30 addObject:?];
            }

            v17 = v58;
LABEL_45:

            arguments = v59;
            continue;
          }

          if ([v21 type] != 2)
          {
            [AVTCompositorPipeline initWithFunction:];
          }

          if ([v21 index])
          {
            [AVTCompositorPipeline initWithFunction:];
          }
        }

        v18 = [arguments countByEnumeratingWithState:? objects:? count:?];
      }

      while (v18);
    }

    v50 = [v14 copy];
    bindings = v17->_bindings;
    v17->_bindings = v50;

    functionCopy = v57;
  }

  return v58;
}

void __42__AVTCompositorPipeline_initWithFunction___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = [a4 skinColor];
  *&v8 = AVTGetColorComponents(v7);
  v9 = v8;

  v10 = v9;
  [*(a1 + 32) index];
  [v6 setBytes:? length:? atIndex:?];
}

void __42__AVTCompositorPipeline_initWithFunction___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a3;
  v10 = a2;
  v11 = +[AVTResourceLocator sharedResourceLocator];
  v12 = [AVTResourceLocator pathForMemojiResource:v11 ofType:? inDirectory:? isDirectory:?];

  v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:? isDirectory:?];
  v14 = [v9 cachedTextureWithURL:? token:? didFallbackToDefaultTexture:?];

  v15 = 0;
  if (v15)
  {
    [v8 addObject:?];
  }

  [*(a1 + 32) index];
  [v10 setTexture:? atIndex:?];
}

void __42__AVTCompositorPipeline_initWithFunction___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = [a4 componentInstanceForType:?];
  v13 = [v12 assetImage];
  if (v13)
  {
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:? isDirectory:?];
    v15 = [v10 cachedTextureWithURL:? token:? didFallbackToDefaultTexture:?];
    v16 = 0;

    if (v16)
    {
      [v11 addObject:?];
    }

    [*(a1 + 32) index];
    [v9 setTexture:? atIndex:?];
  }

  else
  {
    [*(a1 + 32) index];
    [v9 setTexture:? atIndex:?];
  }
}

void __42__AVTCompositorPipeline_initWithFunction___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = [a4 colorPresetForCategory:? colorIndex:?];
  v8 = [v7 baseColor];
  AVTGetColorComponents(v8);

  [*(a1 + 32) index];
  [v6 setBytes:? length:? atIndex:?];
}

void __42__AVTCompositorPipeline_initWithFunction___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = [a4 componentInstanceForType:?];
  v8 = 0u;
  v9 = 0u;
  if (v7)
  {
    [&v8 uvRemappingInfo];
  }

  else
  {
    *(&v8 + 1) = 1065353216;
    v9 = 0x3F80000000000000uLL;
  }

  [*(a1 + 32) index];
  [v6 setBytes:? length:? atIndex:?];
}

void __42__AVTCompositorPipeline_initWithFunction___block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = [a4 componentInstanceForType:?];
  v13 = [v12 assetImageWithLayerNamed:?];
  if (v13)
  {
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:? isDirectory:?];
    v15 = [v10 cachedTextureWithURL:? token:? didFallbackToDefaultTexture:?];
    v16 = 0;

    if (v16)
    {
      [v11 addObject:?];
    }

    [*(a1 + 40) index];
    [v9 setTexture:? atIndex:?];
  }

  else
  {
    [*(a1 + 40) index];
    [v9 setTexture:? atIndex:?];
  }
}

- (void)compositeTexture:(id)texture forMemoji:(id)memoji considerSkin:(BOOL)skin componentsToConsider:(unint64_t)consider computeCommandHandler:(id)handler blitCommandHandler:(id)commandHandler completionHandler:(id)completionHandler helper:(id)self0 helperTokens:(id)self1
{
  textureCopy = texture;
  memojiCopy = memoji;
  handlerCopy = handler;
  commandHandlerCopy = commandHandler;
  completionHandlerCopy = completionHandler;
  helperCopy = helper;
  tokensCopy = tokens;
  if (self->_isAffectedBySkin && skin || (self->_affectingComponentsMask & consider) != 0 || self->_shouldCompositeAgainDueToGPUError)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __165__AVTCompositorPipeline_compositeTexture_forMemoji_considerSkin_componentsToConsider_computeCommandHandler_blitCommandHandler_completionHandler_helper_helperTokens___block_invoke;
    v30[3] = &unk_1E7F47CF0;
    v30[4] = self;
    v31 = helperCopy;
    v32 = memojiCopy;
    v33 = tokensCopy;
    v24 = textureCopy;
    v34 = v24;
    handlerCopy[2](handlerCopy, v30);
    if ([v24 mipmapLevelCount] >= 2)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __165__AVTCompositorPipeline_compositeTexture_forMemoji_considerSkin_componentsToConsider_computeCommandHandler_blitCommandHandler_completionHandler_helper_helperTokens___block_invoke_2;
      v28[3] = &unk_1E7F47D18;
      v29 = v24;
      commandHandlerCopy[2](commandHandlerCopy, v28);
    }

    objc_initWeak(&location, self);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __165__AVTCompositorPipeline_compositeTexture_forMemoji_considerSkin_componentsToConsider_computeCommandHandler_blitCommandHandler_completionHandler_helper_helperTokens___block_invoke_3;
    v25[3] = &unk_1E7F47D40;
    objc_copyWeak(&v26, &location);
    completionHandlerCopy[2](completionHandlerCopy, v25);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

void __165__AVTCompositorPipeline_compositeTexture_forMemoji_considerSkin_componentsToConsider_computeCommandHandler_blitCommandHandler_completionHandler_helper_helperTokens___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 32) threadExecutionWidth];
  v5 = [*(*(a1 + 32) + 32) maxTotalThreadsPerThreadgroup];
  v6 = *(*(a1 + 32) + 24);
  v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0];
    do
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(8 * i) + 16))();
      }

      v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v8);
  }

  [v3 setComputePipelineState:?];
  [v3 setTexture:? atIndex:?];
  v11 = [v3 device];
  v12 = AVTMTLDeviceSupportsNonUniformThreadgroupSize(v11);

  if (v12)
  {
    [v3 dispatchThreads:v4 threadsPerThreadgroup:{v5 / v4, 1, objc_msgSend(*(a1 + 64), "width"), objc_msgSend(*(a1 + 64), "height"), 1, 0}];
  }

  else
  {
    v13 = [*(a1 + 64) width];
    if (v4 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v4;
    }

    v15 = [*(a1 + 64) height];
    if (v4 >= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v4;
    }

    do
    {
      v17 = v16;
      v18 = v16 * v14;
      v16 >>= 1;
    }

    while (v18 > v5);
    [v3 dispatchThreadgroups:v14 threadsPerThreadgroup:{v17, 1, (objc_msgSend(*(a1 + 64), "width") + v14 - 1) / v14, (objc_msgSend(*(a1 + 64), "height") + v17 - 1) / v17, 1, 0}];
  }
}

void __165__AVTCompositorPipeline_compositeTexture_forMemoji_considerSkin_componentsToConsider_computeCommandHandler_blitCommandHandler_completionHandler_helper_helperTokens___block_invoke_3(uint64_t a1, void *a2)
{
  if ([a2 status] != 4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      WeakRetained[9] = 1;
    }
  }
}

- (void)initWithFunction:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 name];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1BB472000, a3, OS_LOG_TYPE_ERROR, "Error: Error compiling '%@' kernel function: %@", &v6, 0x16u);
}

@end