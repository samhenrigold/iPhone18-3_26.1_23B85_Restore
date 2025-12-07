@interface PXStoryRecipeClipMotionStyleProvider
- ($F9F23640EB60BD624986C393629F2534)nextMotionInfoForDisplayAssetCount:(SEL)count displayAssets:(int64_t)assets excluding:(id)excluding;
- ($F9F23640EB60BD624986C393629F2534)nextMotionInfoForModuleExcludingMomentMotion:(SEL)motion previousModuleMotion:(int64_t)moduleMotion displayAssets:(int64_t)assets;
- ($F9F23640EB60BD624986C393629F2534)updatedMotionForPortraitAspectAsset:(SEL)asset motionInfo:(id)info;
- (PXStoryRecipeClipMotionStyleProvider)init;
- (PXStoryRecipeClipMotionStyleProvider)initWithConfiguration:(id)configuration colorGradeCategory:(id)category songPace:(int64_t)pace randomNumberGenerator:(id)generator storyConfiguration:(id)storyConfiguration;
- (int64_t)_nextMotionStyleForDisplayAssetCount:(int64_t)count excluding:(id)excluding;
- (void)provideMotionStylesForMomentClipRange:(_NSRange)range withClipCatalog:(id)catalog usingBlock:(id)block;
@end

@implementation PXStoryRecipeClipMotionStyleProvider

- (void)provideMotionStylesForMomentClipRange:(_NSRange)range withClipCatalog:(id)catalog usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  catalogCopy = catalog;
  blockCopy = block;
  v10 = +[PXStorySettings sharedInstance];
  autoEditRotateMotionMax = [v10 autoEditRotateMotionMax];

  v63[0] = 0uLL;
  v62 = 0uLL;
  v46 = length;
  v47 = location;
  v61 = 0uLL;
  v11 = __CFADD__(length - 1, location);
  v12 = length - 1 + location;
  if (v11)
  {
    goto LABEL_3;
  }

  v45 = a2;
  v13 = 0;
  v48 = 0;
  v52 = 0;
  v14 = v47;
  do
  {
    v15 = [catalogCopy clipAtIndex:v14];
    displayAssets = [v15 displayAssets];
    v17 = [displayAssets count];

    if (v17 == 3)
    {
      v18 = v48;
      if ((v48 - 1) < 3)
      {
        v19 = &v61;
        goto LABEL_20;
      }

      displayAssets2 = [v15 displayAssets];
      objc_msgSend_nextMotionInfoForDisplayAssetCount_displayAssets_(self);
      v18 = *v60;
      v61 = *&v60[8];
      v19 = &v61;
      v48 = *v60;
    }

    else if (v17 == 2)
    {
      if ((v13 - 1) < 3)
      {
        v19 = &v62;
        v18 = v13;
        goto LABEL_20;
      }

      displayAssets2 = [v15 displayAssets];
      objc_msgSend_nextMotionInfoForDisplayAssetCount_displayAssets_(self);
      v18 = *v60;
      v62 = *&v60[8];
      v19 = &v62;
      v13 = *v60;
    }

    else
    {
      v18 = v52;
      if (v17 != 1)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        displayAssets3 = [v15 displayAssets];
        [currentHandler handleFailureInMethod:v45 object:self file:@"PXStoryRecipeClipMotionStyleProvider.m" lineNumber:295 description:{@"Invalid number of display assets (%ld) in clip", objc_msgSend(displayAssets3, "count")}];

        abort();
      }

      if ((v52 - 1) < 3)
      {
        v19 = v63;
        goto LABEL_20;
      }

      if ([PXStoryRecipeClipUtilities canRotate1UpClipsInRange:v47 clipCatalog:v46 maxAdjacent1Ups:catalogCopy, autoEditRotateMotionMax])
      {
        displayAssets2 = [v15 displayAssets];
        objc_msgSend_nextMotionInfoForDisplayAssetCount_displayAssets_(self);
        v18 = *v60;
        v63[0] = *&v60[8];
      }

      else
      {
        displayAssets2 = [v15 displayAssets];
        v21 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F1909A00];
        objc_msgSend_nextMotionInfoForDisplayAssetCount_displayAssets_excluding_(self);
        v18 = *v60;
        v63[0] = *&v60[8];
      }

      v19 = v63;
      v52 = v18;
    }

LABEL_20:
    v55 = *v19;
    v22 = blockCopy[2];
    *v60 = v18;
    *&v60[8] = v55;
    v22(blockCopy, v60, v14);

    ++v14;
  }

  while (v14 <= v12);
  v23 = 0;
  v24 = v47;
  do
  {
    v25 = v24 + 1;
    v26 = [catalogCopy clipAtIndex:v24];
    displayAssets4 = [v26 displayAssets];
    v28 = [displayAssets4 count];

    if (v28 == 1)
    {
      [v26 moduleInfo];
      if (v29)
      {
        v49 = v23;
        v30 = [catalogCopy clipAtIndex:v24];
        moduleInfo = [v30 moduleInfo];
        v25 = v24;
        v32 = v52;
        while (1)
        {
          moduleInfo2 = [v30 moduleInfo];
          if (v25 > v12 || moduleInfo2 != moduleInfo)
          {
            break;
          }

          if (++v25 <= v12)
          {
            v34 = [catalogCopy clipAtIndex:v25];
          }

          else
          {
            v34 = 0;
          }

          [v34 moduleInfo];
          v30 = v34;
          if (v35)
          {
            goto LABEL_33;
          }
        }

        v34 = v30;
LABEL_33:
        if ((v52 - 1) >= 3)
        {
          if ([PXStoryRecipeClipUtilities canRotate1UpClipsInRange:v24 clipCatalog:v25 - v24 maxAdjacent1Ups:catalogCopy, autoEditRotateMotionMax])
          {
            displayAssets5 = [v26 displayAssets];
            objc_msgSend_nextMotionInfoForDisplayAssetCount_displayAssets_(self);
            v32 = *v60;
            v63[0] = *&v60[8];
          }

          else
          {
            displayAssets5 = [v26 displayAssets];
            v37 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F1909A00];
            objc_msgSend_nextMotionInfoForDisplayAssetCount_displayAssets_excluding_(self);
            v53 = *v60;
            v63[0] = *&v60[8];

            v32 = v53;
          }
        }

        v52 = v32;
        if (![PXStoryRecipeClipUtilities canRotate1UpClipsInRange:v24 clipCatalog:v25 - v24 maxAdjacent1Ups:catalogCopy, autoEditRotateMotionMax]&& (v49 - 1) <= 2 && v24 != v47 && v49 != 3 && v32 != 3)
        {
          v40 = [catalogCopy clipAtIndex:v24 - 1];
          displayAssets6 = [v40 displayAssets];
          v42 = [displayAssets6 count];

          if (v42 <= 1)
          {
            if (v40)
            {
              objc_msgSend_motionInfo(v40);
            }

            else
            {
              v57 = 0;
              v58 = 0;
              v59 = 0;
            }
          }
        }

        memset(v60, 0, sizeof(v60));
        displayAssets7 = [v26 displayAssets];
        objc_msgSend_nextMotionInfoForModuleExcludingMomentMotion_previousModuleMotion_displayAssets_(self);

        if (v25 > v24)
        {
          do
          {
            v39 = blockCopy[2];
            v55 = *v60;
            v56 = *&v60[16];
            v39(blockCopy, &v55, v24++);
          }

          while (v25 != v24);
        }

        v23 = *v60;
      }
    }

    v24 = v25;
  }

  while (v25 <= v12);
LABEL_3:
}

- ($F9F23640EB60BD624986C393629F2534)nextMotionInfoForModuleExcludingMomentMotion:(SEL)motion previousModuleMotion:(int64_t)moduleMotion displayAssets:(int64_t)assets
{
  v10 = a6;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3810000000;
  v23 = &unk_1A561E057;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __120__PXStoryRecipeClipMotionStyleProvider_nextMotionInfoForModuleExcludingMomentMotion_previousModuleMotion_displayAssets___block_invoke;
  aBlock[3] = &unk_1E772E270;
  v19 = &v20;
  aBlock[4] = self;
  v11 = v10;
  v18 = v11;
  v12 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __120__PXStoryRecipeClipMotionStyleProvider_nextMotionInfoForModuleExcludingMomentMotion_previousModuleMotion_displayAssets___block_invoke_3;
  v16[3] = &unk_1E772E298;
  v16[4] = &v20;
  v13 = _Block_copy(v16);
  v12[2](v12, moduleMotion, assets);
  if ((v13[2](v13) & 1) == 0)
  {
    v12[2](v12, moduleMotion, 0);
  }

  if ((v13[2](v13) & 1) == 0)
  {
    v12[2](v12, 0, 0);
  }

  v14 = v21;
  *&retstr->var0 = *(v21 + 2);
  retstr->var1.var0.var1 = v14[6];

  _Block_object_dispose(&v20, 8);
  return result;
}

void __120__PXStoryRecipeClipMotionStyleProvider_nextMotionInfoForModuleExcludingMomentMotion_previousModuleMotion_displayAssets___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __120__PXStoryRecipeClipMotionStyleProvider_nextMotionInfoForModuleExcludingMomentMotion_previousModuleMotion_displayAssets___block_invoke_2;
  aBlock[3] = &unk_1E7748D18;
  v13 = v6;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  v8[2](v8, a2);
  v8[2](v8, a3);
  objc_msgSend_nextMotionInfoForDisplayAssetCount_displayAssets_excluding_(*(a1 + 32));
  v9 = *(*(a1 + 48) + 8);
  *(v9 + 32) = v10;
  *(v9 + 48) = v11;
}

void __120__PXStoryRecipeClipMotionStyleProvider_nextMotionInfoForModuleExcludingMomentMotion_previousModuleMotion_displayAssets___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    [v2 addObject:v3];
  }
}

- ($F9F23640EB60BD624986C393629F2534)updatedMotionForPortraitAspectAsset:(SEL)asset motionInfo:(id)info
{
  infoCopy = info;
  storyConfiguration = [(PXStoryRecipeClipMotionStyleProvider *)self storyConfiguration];
  if ([storyConfiguration forcePanUpOrDownInOneUpKenBurnsWithPortraitAspectAsset])
  {
    [infoCopy aspectRatio];
    PXAspectRatioIsPortrait();
  }

  *&retstr->var0 = *&a5->var0;
  retstr->var1.var0.var1 = a5->var1.var0.var1;

  return result;
}

- ($F9F23640EB60BD624986C393629F2534)nextMotionInfoForDisplayAssetCount:(SEL)count displayAssets:(int64_t)assets excluding:(id)excluding
{
  excludingCopy = excluding;
  v12 = a6;
  retstr->var1.var0.var0 = 0;
  retstr->var1.var0.var1 = 0;
  retstr->var0 = 0;
  storyConfiguration = [(PXStoryRecipeClipMotionStyleProvider *)self storyConfiguration];
  disabledClipMotionStyles = [storyConfiguration disabledClipMotionStyles];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__8016;
  v32 = __Block_byref_object_dispose__8017;
  v33 = [v12 mutableCopy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__PXStoryRecipeClipMotionStyleProvider_nextMotionInfoForDisplayAssetCount_displayAssets_excluding___block_invoke;
  aBlock[3] = &unk_1E772E248;
  aBlock[4] = &v28;
  aBlock[5] = disabledClipMotionStyles;
  v15 = _Block_copy(aBlock);
  v15[2](v15, 1, 1);
  v15[2](v15, 2, 2);
  v15[2](v15, 4, 3);
  v16 = [(PXStoryRecipeClipMotionStyleProvider *)self _nextMotionStyleForDisplayAssetCount:assets excluding:v29[5]];
  retstr->var0 = v16;
  if (v16 == 3)
  {
    goto LABEL_11;
  }

  if (v16 != 2)
  {
    if (v16 != 1)
    {
      goto LABEL_18;
    }

    if (assets == 2)
    {
      if ([(PFRandomNumberGenerator *)self->_randomNumberGenerator nextUnsignedIntegerLessThan:3]>= 3)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:count object:self file:@"PXStoryRecipeClipMotionStyleProvider.m" lineNumber:133 description:@"Impossible case"];

        abort();
      }
    }

    else if (assets != 3)
    {
      v17 = 1;
LABEL_16:
      retstr->var1.var0.var0 = v17;
      forcedKenBurnsScaleDirection = 2;
      v22 = 16;
      goto LABEL_17;
    }

    v23 = [(PFRandomNumberGenerator *)self->_randomNumberGenerator nextUnsignedIntegerLessThan:2];
    v17 = 3;
    if (v23)
    {
      v17 = 4;
    }

    goto LABEL_16;
  }

  forcedKenBurnsScaleDirection = [storyConfiguration forcedKenBurnsScaleDirection];
  if (!forcedKenBurnsScaleDirection)
  {
    keyAssetKenBurnsScaleDirection = [storyConfiguration keyAssetKenBurnsScaleDirection];
    if (assets != 1 || (forcedKenBurnsScaleDirection = keyAssetKenBurnsScaleDirection) == 0 || ([excludingCopy firstObject], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(storyConfiguration, "keyAsset"), v21 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v20, "isEqual:", v21), v21, v20, (v26 & 1) == 0))
    {
LABEL_11:
      forcedKenBurnsScaleDirection = [(PFRandomNumberGenerator *)self->_randomNumberGenerator nextUnsignedIntegerLessThan:2]+ 1;
    }
  }

  v22 = 8;
LABEL_17:
  *(&retstr->var0 + v22) = forcedKenBurnsScaleDirection;
LABEL_18:
  if (assets == 1)
  {
    [excludingCopy firstObject];
    [objc_claimAutoreleasedReturnValue() aspectRatio];
    PXAspectRatioIsPortrait();
  }

  _Block_object_dispose(&v28, 8);
  return result;
}

void __99__PXStoryRecipeClipMotionStyleProvider_nextMotionInfoForDisplayAssetCount_displayAssets_excluding___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & ~*(a1 + 40)) == 0)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    if (!v6)
    {
      v7 = [MEMORY[0x1E695DFA8] set];
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 32) + 8) + 40);
    }

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v6 addObject:v10];
  }
}

- (int64_t)_nextMotionStyleForDisplayAssetCount:(int64_t)count excluding:(id)excluding
{
  excludingCopy = excluding;
  if ((count - 1) >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRecipeClipMotionStyleProvider.m" lineNumber:71 description:{@"Unsupported display asset count: %ld", count}];

    abort();
  }

  v8 = excludingCopy;
  v9 = *(&self->super.isa + count);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__PXStoryRecipeClipMotionStyleProvider__nextMotionStyleForDisplayAssetCount_excluding___block_invoke;
  v15[3] = &unk_1E7746258;
  v16 = v8;
  v10 = v8;
  v11 = [v9 nextValuePassingTest:v15];
  integerValue = [v11 integerValue];

  return integerValue;
}

- (PXStoryRecipeClipMotionStyleProvider)initWithConfiguration:(id)configuration colorGradeCategory:(id)category songPace:(int64_t)pace randomNumberGenerator:(id)generator storyConfiguration:(id)storyConfiguration
{
  configurationCopy = configuration;
  categoryCopy = category;
  generatorCopy = generator;
  storyConfigurationCopy = storyConfiguration;
  v32.receiver = self;
  v32.super_class = PXStoryRecipeClipMotionStyleProvider;
  v17 = [(PXStoryRecipeClipMotionStyleProvider *)&v32 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_configuration, configuration);
    objc_storeStrong(&v18->_storyConfiguration, storyConfiguration);
    objc_storeStrong(&v18->_randomNumberGenerator, generator);
    motionStyleTable = [(PFStoryAutoEditConfiguration *)v18->_configuration motionStyleTable];
    v31 = [motionStyleTable motionStylesForColorGrade:categoryCopy songPace:pace];

    v20 = [objc_alloc(MEMORY[0x1E69C08A8]) initWithValueCounts:v31 randomNumberGenerator:generatorCopy fallbackValue:&unk_1F19099E8];
    frequencyTable = v18->_frequencyTable;
    v18->_frequencyTable = v20;

    diptychMotionStyleTable = [(PFStoryAutoEditConfiguration *)v18->_configuration diptychMotionStyleTable];
    v23 = [diptychMotionStyleTable motionStylesForColorGrade:categoryCopy songPace:pace];

    v24 = [objc_alloc(MEMORY[0x1E69C08A8]) initWithValueCounts:v23 randomNumberGenerator:generatorCopy fallbackValue:&unk_1F19099E8];
    diptychFrequencyTable = v18->_diptychFrequencyTable;
    v18->_diptychFrequencyTable = v24;

    triptychMotionStyleTable = [(PFStoryAutoEditConfiguration *)v18->_configuration triptychMotionStyleTable];
    v27 = [triptychMotionStyleTable motionStylesForColorGrade:categoryCopy songPace:pace];

    v28 = [objc_alloc(MEMORY[0x1E69C08A8]) initWithValueCounts:v27 randomNumberGenerator:generatorCopy fallbackValue:&unk_1F19099E8];
    triptychFrequencyTable = v18->_triptychFrequencyTable;
    v18->_triptychFrequencyTable = v28;
  }

  return v18;
}

- (PXStoryRecipeClipMotionStyleProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRecipeClipMotionStyleProvider.m" lineNumber:31 description:{@"%s is not available as initializer", "-[PXStoryRecipeClipMotionStyleProvider init]"}];

  abort();
}

@end