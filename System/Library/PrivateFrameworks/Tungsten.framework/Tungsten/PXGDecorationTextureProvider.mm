@interface PXGDecorationTextureProvider
- (PXGDecorationTextureProvider)initWithBadgeDrawingHelper:(id)helper;
- (PXGViewSource)overlayViewSource;
- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range geometries:(id *)geometries styles:(id *)styles infos:(id *)infos inLayout:(id)layout;
- (void)_requestTextureForDecorationInfo:(PXGDecorationBadgeInfo *)info drawingHelper:(id)helper solidColorOverlay:(id)overlay debugDecoration:(id)decoration targetSize:(CGSize)size cornerRadius:(id)radius screenScale:(double)scale requestID:(int)self0 viewEnvironment:(id)self1 userInterfaceDirection:(unint64_t)self2;
- (void)_requestViewTextureForDecorationInfo:(PXGDecorationBadgeInfo *)info customViewClass:(Class)class userData:(id)data decorationOptions:(unint64_t)options requestID:(int)d;
@end

@implementation PXGDecorationTextureProvider

- (PXGViewSource)overlayViewSource
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayViewSource);

  return WeakRetained;
}

- (void)_requestViewTextureForDecorationInfo:(PXGDecorationBadgeInfo *)info customViewClass:(Class)class userData:(id)data decorationOptions:(unint64_t)options requestID:(int)d
{
  v7 = *&d;
  dataCopy = data;
  if ([(PXGTextureProvider *)self isRequestActive:v7])
  {
    if (info->var0)
    {
      v12 = [[PXGDecorationViewPayload alloc] initWithDecorationOptions:options viewClass:class userData:dataCopy];
      [(PXGTextureProvider *)self providePayload:v12 forRequestID:v7];
    }

    else
    {
      [(PXGTextureProvider *)self provideNothingForRequestID:v7];
    }
  }
}

- (void)_requestTextureForDecorationInfo:(PXGDecorationBadgeInfo *)info drawingHelper:(id)helper solidColorOverlay:(id)overlay debugDecoration:(id)decoration targetSize:(CGSize)size cornerRadius:(id)radius screenScale:(double)scale requestID:(int)self0 viewEnvironment:(id)self1 userInterfaceDirection:(unint64_t)self2
{
  v16 = *&radius.var0.var1[2];
  v17 = *&radius.var0.var0.var0;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = LODWORD(scale);
  height = size.height;
  width = size.width;
  helperCopy = helper;
  overlayCopy = overlay;
  decorationCopy = decoration;
  v32 = v16;
  if ([(PXGTextureProvider *)self isRequestActive:v17])
  {
    if (info->var0)
    {
      IsZero = PXPixelSizeAreaIsZero();
      if (decorationCopy || (IsZero & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (decorationCopy)
    {
LABEL_5:
      v38 = *&info->var2;
      v60[0] = *&info->var0;
      v60[1] = v38;
      v60[2] = *&info->var4;
      LODWORD(v33) = v22;
      LODWORD(v34) = v21;
      LODWORD(v35) = v20;
      LODWORD(v36) = v19;
      v39 = [helperCopy cacheKeyForDecorationInfo:v60 solidColorOverlay:overlayCopy debugDecoration:decorationCopy targetSize:v32 cornerRadius:*&d screenScale:width viewEnvironment:height userInterfaceDirection:{v33, v34, v35, v36, v18}];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __198__PXGDecorationTextureProvider__requestTextureForDecorationInfo_drawingHelper_solidColorOverlay_debugDecoration_targetSize_cornerRadius_screenScale_requestID_viewEnvironment_userInterfaceDirection___block_invoke;
      v44[3] = &unk_2782AC5D8;
      v49 = width;
      v50 = height;
      v45 = helperCopy;
      v40 = *&info->var2;
      v51 = *&info->var0;
      v52 = v40;
      v53 = *&info->var4;
      v46 = overlayCopy;
      v47 = decorationCopy;
      v56 = v22;
      v57 = v21;
      v58 = v20;
      v59 = v19;
      v54 = v18;
      v48 = v32;
      v55 = *&d;
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __198__PXGDecorationTextureProvider__requestTextureForDecorationInfo_drawingHelper_solidColorOverlay_debugDecoration_targetSize_cornerRadius_screenScale_requestID_viewEnvironment_userInterfaceDirection___block_invoke_3;
      v41[3] = &unk_2782AC600;
      v43 = 0;
      v41[4] = self;
      v42 = v17;
      [(PXGCGImageTextureProvider *)self requestCGImageWithCacheKey:v39 imageProvider:v44 resultHandler:v41];

      goto LABEL_8;
    }

    [(PXGTextureProvider *)self provideNothingForRequestID:v17];
  }

LABEL_8:
}

uint64_t __198__PXGDecorationTextureProvider__requestTextureForDecorationInfo_drawingHelper_solidColorOverlay_debugDecoration_targetSize_cornerRadius_screenScale_requestID_viewEnvironment_userInterfaceDirection___block_invoke(id *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v10 = v7;
  v11 = v6;
  v8 = PXCreateCGImageWithDrawBlock();

  return v8;
}

uint64_t __198__PXGDecorationTextureProvider__requestTextureForDecorationInfo_drawingHelper_solidColorOverlay_debugDecoration_targetSize_cornerRadius_screenScale_requestID_viewEnvironment_userInterfaceDirection___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = 0;
  v12 = 0;
  v13 = 0;
  v2 = *(a1 + 44);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = xmmword_21AE2D320;
  v7 = v2;
  v10 = 1065353216;
  v11 = 0;
  return [v3 provideCGImage:a2 options:&v6 forRequestID:v4];
}

uint64_t __198__PXGDecorationTextureProvider__requestTextureForDecorationInfo_drawingHelper_solidColorOverlay_debugDecoration_targetSize_cornerRadius_screenScale_requestID_viewEnvironment_userInterfaceDirection___block_invoke_2(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v6 = a6;
  v7 = a5;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a1 + 112);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 120);
  v16 = *(a1 + 80);
  v19[0] = *(a1 + 64);
  v19[1] = v16;
  v20 = *(a1 + 96);
  HIDWORD(v17) = DWORD1(v20);
  LODWORD(v17) = *(a1 + 128);
  LODWORD(v16) = *(a1 + 132);
  LODWORD(a5) = *(a1 + 136);
  LODWORD(a6) = *(a1 + 140);
  return [v11 drawWithDecorationInfo:v19 solidColorOverlay:v10 debugDecoration:v13 cornerRadius:a2 context:v14 viewport:v15 screenScale:v17 viewEnvironment:*&v16 userInterfaceDirection:{a5, a6, a3, a4, v7, v6, v12}];
}

- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range geometries:(id *)geometries styles:(id *)styles infos:(id *)infos inLayout:(id)layout
{
  v192 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v186.receiver = self;
  v186.super_class = PXGDecorationTextureProvider;
  infosCopy = infos;
  v67 = [(PXGTextureProvider *)&v186 requestTexturesForSpritesInRange:range geometries:geometries styles:styles infos:infos inLayout:layoutCopy];
  v65 = v13;
  v97 = layoutCopy;
  numberOfDecoratingSpritesPerDecoratedSprite = [v97 numberOfDecoratingSpritesPerDecoratedSprite];
  if (numberOfDecoratingSpritesPerDecoratedSprite)
  {
    decoratedLayout = [v97 decoratedLayout];
    displayAssetSource = [decoratedLayout displayAssetSource];
    v94 = HIDWORD(*&range);
    v95 = [displayAssetSource displayAssetFetchResultForSpritesInRange:(range.location / numberOfDecoratingSpritesPerDecoratedSprite) | (((range.location + range.length - 1) / numberOfDecoratingSpritesPerDecoratedSprite - range.location / numberOfDecoratingSpritesPerDecoratedSprite + 1) << 32) inLayout:decoratedLayout];

    assetBadgeDecorationSource = [v97 assetBadgeDecorationSource];
    assetProgressDecorationSource = [v97 assetProgressDecorationSource];
    selectionDecorationSource = [v97 selectionDecorationSource];
    highlightDecorationSource = [v97 highlightDecorationSource];
    solidColorOverlayDecorationSource = [v97 solidColorOverlayDecorationSource];
    dragDecorationSource = [v97 dragDecorationSource];
    queuea = [v97 debugDecorationSource];
    viewDecorationSource = [v97 viewDecorationSource];
    overlayViewSource = [(PXGDecorationTextureProvider *)self overlayViewSource];
    v84 = [selectionDecorationSource selectedSpriteIndexesInLayout:decoratedLayout];
    v83 = [highlightDecorationSource highlightedSpriteIndexesInLayout:decoratedLayout];
    v81 = [dragDecorationSource draggingSpriteIndexesInLayout:decoratedLayout];
    v78 = [solidColorOverlayDecorationSource solidColorOverlayForLayout:decoratedLayout];
    debugDecorationIndex = [v97 debugDecorationIndex];
    v73 = objc_opt_respondsToSelector();
    v71 = objc_opt_respondsToSelector();
    v182 = 0;
    v183 = &v182;
    v184 = 0x2020000000;
    v185 = -1;
    *buf = 0;
    *&v188 = buf;
    *(&v188 + 1) = 0x4010000000;
    v189 = "";
    v190 = 0u;
    v191 = 0u;
    v176 = 0;
    v177 = &v176;
    v178 = 0x3032000000;
    v179 = __Block_byref_object_copy__19254;
    v180 = __Block_byref_object_dispose__19255;
    v181 = 0;
    v175[0] = MEMORY[0x277D85DD0];
    v175[1] = 3221225472;
    v175[2] = __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke;
    v175[3] = &unk_2782AC4C0;
    v175[4] = &v176;
    v18 = MEMORY[0x21CEE40A0](v175);
    v174[0] = 0;
    v174[1] = v174;
    v174[2] = 0x2020000000;
    v174[3] = 0x7FFFFFFFFFFFFFFFLL;
    v170 = 0;
    v171 = &v170;
    v172 = 0x2020000000;
    v173 = 0;
    v166 = 0;
    v167 = &v166;
    v168 = 0x2020000000;
    v169 = 0;
    v162 = 0;
    v163 = &v162;
    v164 = 0x2020000000;
    v165 = 0;
    v160[0] = 0;
    v160[1] = v160;
    v160[2] = 0x3032000000;
    v160[3] = __Block_byref_object_copy__19254;
    v160[4] = __Block_byref_object_dispose__19255;
    v161 = 0;
    v142[0] = MEMORY[0x277D85DD0];
    v142[1] = 3221225472;
    v142[2] = __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_2;
    v142[3] = &unk_2782AC4E8;
    v153 = &v182;
    v74 = v95;
    v143 = v74;
    v92 = assetBadgeDecorationSource;
    v144 = v92;
    v154 = buf;
    v93 = decoratedLayout;
    v145 = v93;
    v58 = assetProgressDecorationSource;
    v146 = v58;
    v64 = v18;
    v152 = v64;
    v155 = v160;
    v60 = queuea;
    v147 = v60;
    v156 = v174;
    v59 = selectionDecorationSource;
    v148 = v59;
    v157 = &v170;
    v61 = v84;
    v149 = v61;
    v158 = &v166;
    v62 = v83;
    v150 = v62;
    v159 = &v162;
    v63 = v81;
    v151 = v63;
    v90 = MEMORY[0x21CEE40A0](v142);
    objc_initWeak(&location, self);
    queue = [(PXGTextureProvider *)self requestQueue];
    [v97 displayScale];
    v20 = v19;
    [v97 textureScale];
    v22 = v21;
    viewEnvironment = [v97 viewEnvironment];
    userInterfaceDirection = [v97 userInterfaceDirection];
    decorationSizeClass = [v97 decorationSizeClass];
    badgeDrawingHelper = [(PXGDecorationTextureProvider *)self badgeDrawingHelper];
    if (HIDWORD(*&range))
    {
      v23 = v20 * v22;
      v24 = viewDecorationSource;
      if (overlayViewSource)
      {
        v24 = overlayViewSource;
      }

      v75 = v24;
      v72 = v71 & (v74 != 0);
      v25 = v67;
      do
      {
        v26 = (infosCopy + 40 * range.location);
        v27 = v26[1];
        v28 = [v97 decoratingTypeForSpriteIndex:range];
        v90[2](v90, range.location / numberOfDecoratingSpritesPerDecoratedSprite);
        v139 = 0u;
        v140 = 0u;
        v138 = 0u;
        if (badgeDrawingHelper)
        {
          v29 = *(v163 + 24);
          v30 = *(v167 + 24);
          v31 = *(v188 + 48);
          v136 = *(v188 + 32);
          v137 = v31;
          BYTE1(v57) = v29;
          LOBYTE(v57) = v30;
          objc_msgSend_decorationSpriteInfoForDecoratedSpriteIndex_decorationType_decoratingLayout_assetDecorationInfo_overallSelectionOrder_isItemSelected_isItemHighlighted_isItemDragged_(badgeDrawingHelper, v57);
        }

        spriteDataStore = [v93 spriteDataStore];
        v33 = spriteDataStore;
        styles = [spriteDataStore styles];
        v136 = *(styles + 160 * *(v183 + 6) + 36);

        *(&v138 + 1) = decorationSizeClass;
        if (v26->i8[0] == 1)
        {
          v35 = viewDecorationSource;
          if (v28 == 3)
          {
            v35 = v75;
          }

          v36 = v35;
          v37 = [v36 viewClassForSpriteAtIndex:range inLayout:v97];
          if (v37)
          {
            captionDecorationSource = [v97 captionDecorationSource];
            v38 = [captionDecorationSource wantsCaptionDecorationsInLayout:v93];
            v39 = [v92 wantsInteractiveFavoriteBadgesInLayout:v93];
            v40 = [v92 wantsFileSizeBadgesInLayout:v93];
            v41 = *(v171 + 24);
            v42 = [v92 hidesTopLeadingBadgesInLayout:v93];
            v43 = v38;
            if (v39)
            {
              v43 = v38 | 2;
            }

            if (v40)
            {
              v43 |= 8uLL;
            }

            if (v41)
            {
              v43 |= 4uLL;
            }

            if (v42)
            {
              v44 = v43 | 0x20;
            }

            else
            {
              v44 = v43;
            }

            if (v72)
            {
              v45 = [v74 objectAtIndex:*(v183 + 6)];
              v46 = [v92 wantsSensitiveWarningBadgesInLayout:v93];
              if (v45)
              {
                v47 = v46;
              }

              else
              {
                v47 = 0;
              }

              if (v47 == 1)
              {
                objc_msgSend_assetDecorationInfoForAsset_atSpriteIndex_inLayout_(v92);
                v48 = v188;
                v49 = v135;
                *(v188 + 32) = v134;
                *(v48 + 48) = v49;
                v44 |= (2 * *(v48 + 32)) & 0x40;
              }
            }

            if (v73)
            {
              v50 = [v74 objectAtIndex:*(v183 + 6)];
              if (v50 && [v92 shouldShowSavedToLibraryBadgeForAsset:v50 inLayout:v97])
              {
                v44 |= 0x10uLL;
              }
            }

            v51 = [v36 viewUserDataForSpriteAtIndex:range inLayout:v97];
            v52 = [v51 copyWithZone:0];

            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_3;
            block[3] = &unk_2782AC510;
            v126 = v52;
            v53 = v52;
            objc_copyWeak(&v127, &location);
            v128 = v138;
            v129 = v139;
            v130 = v140;
            v131 = v37;
            v132 = v44;
            v133 = v25;
            dispatch_async(queue, block);
            objc_destroyWeak(&v127);
          }

          else if ([PXGAssetDecorationView wantsDecorationViewForConfiguration:v177[5]])
          {
            v119[0] = MEMORY[0x277D85DD0];
            v119[1] = 3221225472;
            v119[2] = __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_4;
            v119[3] = &unk_2782AC538;
            objc_copyWeak(&v120, &location);
            v121 = v138;
            v122 = v139;
            v123 = v140;
            v119[4] = &v176;
            v124 = v25;
            dispatch_async(queue, v119);
            objc_destroyWeak(&v120);
          }

          else
          {
            *&v138 = 0;
            v113[0] = MEMORY[0x277D85DD0];
            v113[1] = 3221225472;
            v113[2] = __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_5;
            v113[3] = &unk_2782AC560;
            objc_copyWeak(&v114, &location);
            v115 = v138;
            v116 = v139;
            v117 = v140;
            v118 = v25;
            dispatch_async(queue, v113);
            objc_destroyWeak(&v114);
          }
        }

        else
        {
          v98[0] = MEMORY[0x277D85DD0];
          v98[1] = 3221225472;
          v98[2] = __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_6;
          v98[3] = &unk_2782AC588;
          v102 = v160;
          v103[1] = v28;
          v110 = debugDecorationIndex;
          objc_copyWeak(v103, &location);
          v104 = v138;
          v105 = v139;
          v106 = v140;
          v99 = badgeDrawingHelper;
          v100 = v78;
          v107 = vcvtq_f64_f32(v27);
          v111 = v136;
          v108 = v23;
          v112 = v25;
          v101 = viewEnvironment;
          v109 = userInterfaceDirection;
          dispatch_async(queue, v98);

          objc_destroyWeak(v103);
        }

        ++v25;
        range = (range.location + 1);
        --v94;
      }

      while (v94);
    }

    objc_destroyWeak(&location);
    _Block_object_dispose(v160, 8);

    _Block_object_dispose(&v162, 8);
    _Block_object_dispose(&v166, 8);
    _Block_object_dispose(&v170, 8);
    _Block_object_dispose(v174, 8);

    _Block_object_dispose(&v176, 8);
    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v182, 8);

    v54 = v93;
  }

  else
  {
    v54 = PXAssertGetLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109378;
      LOWORD(v188) = 2112;
      *(&v188 + 2) = v97;
      _os_log_fault_impl(&dword_21AD38000, v54, OS_LOG_TYPE_FAULT, "unexpected numberOfDecoratingSpritesPerDecoratedSprite %i for decoratingLayout %@, failing gracefully", buf, 0x12u);
    }
  }

  v55 = v67;
  v56 = v65;
  result.length = v56;
  result.location = v55;
  return result;
}

id __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (!v2)
  {
    v3 = objc_alloc_init(PXGAssetDecorationViewConfiguration);
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(*(a1 + 32) + 8) + 40);
  }

  return v2;
}

void *__98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_2(void *result, int a2)
{
  v2 = *(*(result + 14) + 8);
  if (*(v2 + 24) != a2)
  {
    v3 = result;
    *(v2 + 24) = a2;
    v4 = *(*(*(result + 14) + 8) + 24);
    if ([*(result + 4) count] > v4)
    {
      v5 = [v3[4] objectAtIndex:*(*(v3[14] + 1) + 24)];
      v6 = v3[5];
      if (v6)
      {
        objc_msgSend_assetDecorationInfoForAsset_atSpriteIndex_inLayout_(v6);
        v7 = *(v3[15] + 1);
        *(v7 + 32) = v17;
        *(v7 + 48) = v18;
      }

      v8 = v3[7];
      if (v8)
      {
        v9 = [v8 loadStatusForAsset:v5 atSpriteIndex:*(*(v3[14] + 1) + 24) inLayout:v3[6]];
        v10 = (*(v3[13] + 2))();
        [v10 setLoadStatus:v9];
      }

      v11 = [v3[8] debugDecorationAtSpriteIndex:*(*(v3[14] + 1) + 24) asset:v5 inLayout:v3[6]];
      v12 = [v11 copy];
      v13 = *(v3[16] + 1);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    v15 = v3[9];
    if (v15)
    {
      v16 = [v15 overallSelectionOrderAtSpriteIndex:*(*(v3[14] + 1) + 24) inLayout:v3[6]];
    }

    else
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *(*(v3[17] + 1) + 24) = v16;
    *(*(v3[18] + 1) + 24) = [v3[10] containsIndex:*(*(v3[14] + 1) + 24)];
    *(*(v3[19] + 1) + 24) = [v3[11] containsIndex:*(*(v3[14] + 1) + 24)];
    result = [v3[12] containsIndex:*(*(v3[14] + 1) + 24)];
    *(*(v3[20] + 1) + 24) = result;
  }

  return result;
}

void __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_3(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) prepareForRender];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(a1 + 112);
  v7 = *(a1 + 64);
  v8[0] = *(a1 + 48);
  v8[1] = v7;
  v8[2] = *(a1 + 80);
  [WeakRetained _requestViewTextureForDecorationInfo:v8 customViewClass:v4 userData:v3 decorationOptions:v5 requestID:v6];
}

void __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_opt_class();
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = *(a1 + 96);
  v6 = *(a1 + 64);
  v7[0] = *(a1 + 48);
  v7[1] = v6;
  v7[2] = *(a1 + 80);
  [WeakRetained _requestViewTextureForDecorationInfo:v7 customViewClass:v3 userData:v4 decorationOptions:0 requestID:v5];
}

void __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 88);
  v4 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v4;
  v5[2] = *(a1 + 72);
  [WeakRetained _requestViewTextureForDecorationInfo:v5 customViewClass:0 userData:0 decorationOptions:0 requestID:v3];
}

void __98__PXGDecorationTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_6(uint64_t a1)
{
  v2 = *(*(*(a1 + 56) + 8) + 40);
  if (v2 && *(a1 + 72) == *(a1 + 160))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 180);
  v8 = *(a1 + 48);
  v9 = *(a1 + 152);
  v10 = *(a1 + 96);
  v15[0] = *(a1 + 80);
  v15[1] = v10;
  v15[2] = *(a1 + 112);
  LODWORD(v11) = *(a1 + 164);
  LODWORD(v12) = *(a1 + 168);
  LODWORD(v13) = *(a1 + 172);
  LODWORD(v14) = *(a1 + 176);
  [WeakRetained _requestTextureForDecorationInfo:v15 drawingHelper:v5 solidColorOverlay:v6 debugDecoration:v3 targetSize:v7 cornerRadius:v8 screenScale:*(a1 + 128) requestID:*(a1 + 136) viewEnvironment:v11 userInterfaceDirection:{v12, v13, v14, *(a1 + 144), v9}];
}

- (PXGDecorationTextureProvider)initWithBadgeDrawingHelper:(id)helper
{
  helperCopy = helper;
  v8.receiver = self;
  v8.super_class = PXGDecorationTextureProvider;
  v5 = [(PXGCGImageTextureProvider *)&v8 init];
  if (v5)
  {
    v6 = helperCopy;
    if (!helperCopy)
    {
      v6 = objc_alloc_init(PXGDecorationDefaultBadgeDrawingHelper);
    }

    objc_storeStrong(&v5->_badgeDrawingHelper, v6);
    if (!helperCopy)
    {
    }
  }

  return v5;
}

@end