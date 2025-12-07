@interface OSABinaryImageCatalog
+ (BOOL)isApplePath:(id)path orBundle:(id)bundle;
- (BOOL)isAddressInTargetedCache:(unint64_t)cache;
- (OSABinaryImageCatalog)init;
- (id)reportUsedImages;
- (id)reportUsedImagesFullInfoUsingBlock:(id)block;
- (id)searchFrame:(unint64_t)frame in:(id)in regions:(id)regions result:(id *)result;
- (unint64_t)markImageAsUsed:(id)used from:(int)from;
- (void)setKernelCache:(unsigned __int8)cache[16] address:(unint64_t)address size:(unint64_t)size;
- (void)setRootedCacheLibs:(dyld_uuid_info_64 *)libs count:(unsigned int)count;
- (void)targetSharedCache:(unsigned __int8)cache[16] withSlide:(unint64_t)slide atBaseAddress:(unint64_t)address;
@end

@implementation OSABinaryImageCatalog

- (OSABinaryImageCatalog)init
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = OSABinaryImageCatalog;
  v2 = [(OSABinaryImageCatalog *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    used_segments = v2->_used_segments;
    v2->_used_segments = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    kernel_segments = v2->_kernel_segments;
    v2->_kernel_segments = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    kernel_text_exec_segments = v2->_kernel_text_exec_segments;
    v2->_kernel_text_exec_segments = v7;

    v9 = objc_opt_new();
    shared_segments = v2->_shared_segments;
    v2->_shared_segments = v9;

    array = [MEMORY[0x1E695DF70] array];
    notes = v2->_notes;
    v2->_notes = array;

    array2 = [MEMORY[0x1E695DF70] array];
    exclave_shared_caches = v2->_exclave_shared_caches;
    v2->_exclave_shared_caches = array2;

    memset(uu, 0, sizeof(uu));
    uuid_clear(uu);
    v15 = [[OSABinaryImageSegment alloc] initWithAddress:0 size:0 for:uu];
    absolute_segment = v2->_absolute_segment;
    v2->_absolute_segment = v15;

    if (init_onceToken != -1)
    {
      [OSABinaryImageCatalog init];
    }
  }

  return v2;
}

uint64_t __29__OSABinaryImageCatalog_init__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.ReportCrash.stackshot.sharedCacheLoader", 0);
  v1 = _sharedCacheLoaderQueue;
  _sharedCacheLoaderQueue = v0;

  _shared_caches = [MEMORY[0x1E695DF90] dictionary];

  return MEMORY[0x1EEE66BB8]();
}

- (void)setKernelCache:(unsigned __int8)cache[16] address:(unint64_t)address size:(unint64_t)size
{
  self->_kernel_cache_segment = [[OSABinaryImageSegment alloc] initWithAddress:address size:0x40000000 for:cache];

  MEMORY[0x1EEE66BB8]();
}

- (void)setRootedCacheLibs:(dyld_uuid_info_64 *)libs count:(unsigned int)count
{
  LODWORD(v4) = count;
  array = [MEMORY[0x1E695DF70] array];
  rootedCacheLibs = self->_rootedCacheLibs;
  self->_rootedCacheLibs = array;

  if (v4)
  {
    v4 = v4;
    imageUUID = libs->imageUUID;
    do
    {
      if (!uuid_is_null(imageUUID))
      {
        [(NSMutableArray *)self->_rootedCacheLibs addImage:imageUUID address:*(imageUUID - 1) size:0];
      }

      imageUUID += 24;
      --v4;
    }

    while (v4);
  }

  v10 = self->_rootedCacheLibs;

  [(NSMutableArray *)v10 sortByAddressAndSetInferredSizes];
}

- (unint64_t)markImageAsUsed:(id)used from:(int)from
{
  v4 = *&from;
  usedCopy = used;
  if ([usedCopy source] && objc_msgSend(usedCopy, "source") != 106)
  {
    used_index = [usedCopy used_index];
  }

  else
  {
    [usedCopy setSource:v4];
    used_index = [(NSMutableArray *)self->_used_segments count];
    [usedCopy setUsed_index:used_index];
    [(NSMutableArray *)self->_used_segments addObject:usedCopy];
  }

  return used_index;
}

- (void)targetSharedCache:(unsigned __int8)cache[16] withSlide:(unint64_t)slide atBaseAddress:(unint64_t)address
{
  v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:cache];
  v10 = [(NSMutableDictionary *)self->_shared_segments objectForKeyedSubscript:v9];
  targeted_cache = self->_targeted_cache;
  self->_targeted_cache = v10;

  self->_targeted_slide = slide;
  if (!self->_targeted_cache)
  {
    v12 = _sharedCacheLoaderQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__OSABinaryImageCatalog_targetSharedCache_withSlide_atBaseAddress___block_invoke;
    block[3] = &unk_1E7A27C20;
    cacheCopy = cache;
    addressCopy = address;
    slideCopy = slide;
    v14 = v9;
    selfCopy = self;
    dispatch_sync(v12, block);
  }
}

void __67__OSABinaryImageCatalog_targetSharedCache_withSlide_atBaseAddress___block_invoke(uint64_t a1)
{
  v2 = [_shared_caches objectForKeyedSubscript:*(a1 + 32)];
  if (!v2)
  {
    if (!uuid_is_null(*(a1 + 48)))
    {
      v9 = [[OSASymbolInfo alloc] initWithSharedCache:*(a1 + 48) atBaseAddress:*(a1 + 56) - *(a1 + 64)];
      if (v9)
      {
        v15 = v9;
        [_shared_caches setObject:v9 forKeyedSubscript:*(a1 + 32)];
        v2 = v15;
        goto LABEL_2;
      }

      v10 = *(*(a1 + 40) + 88);
      v11 = MEMORY[0x1E696AEC0];
      v12 = [*(a1 + 32) UUIDString];
      v13 = [v11 stringWithFormat:@"unable to instantiate shared cache %@", v12];
      [v10 addObject:v13];
    }

    v14 = 0;
    goto LABEL_6;
  }

LABEL_2:
  v14 = v2;
  v3 = [MEMORY[0x1E695DFB0] null];
  v4 = [v14 isEqual:v3];

  if ((v4 & 1) == 0)
  {
    v5 = [[OSABinaryImageSegment alloc] initWithSymbol:v14 source:0];
    v6 = *(a1 + 40);
    v7 = *(v6 + 48);
    *(v6 + 48) = v5;

    [*(*(a1 + 40) + 64) setObject:v5 forKeyedSubscript:*(a1 + 32)];
    goto LABEL_7;
  }

LABEL_6:
  v8 = [MEMORY[0x1E695DFB0] null];
  [*(*(a1 + 40) + 64) setObject:v8 forKeyedSubscript:*(a1 + 32)];

LABEL_7:
}

- (BOOL)isAddressInTargetedCache:(unint64_t)cache
{
  targeted_slide = self->_targeted_slide;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v6 = cache - targeted_slide;
  symbolInfo = [(OSABinaryImageSegment *)self->_targeted_cache symbolInfo];
  if (v6 >= [symbolInfo start])
  {
    symbolInfo2 = [(OSABinaryImageSegment *)self->_targeted_cache symbolInfo];
    start = [symbolInfo2 start];
    symbolInfo3 = [(OSABinaryImageSegment *)self->_targeted_cache symbolInfo];
    v8 = v6 < [symbolInfo3 size] + start;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)searchFrame:(unint64_t)frame in:(id)in regions:(id)regions result:(id *)result
{
  v70[2] = *MEMORY[0x1E69E9840];
  inCopy = in;
  regionsCopy = regions;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__6;
  v66 = __Block_byref_object_dispose__6;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__6;
  v60 = __Block_byref_object_dispose__6;
  v61 = 0;
  kernel_cache_segment = self->_kernel_cache_segment;
  if (kernel_cache_segment)
  {
    symbolInfo = [(OSABinaryImageSegment *)kernel_cache_segment symbolInfo];
    v14 = [symbolInfo start] > frame;

    if (!v14)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[OSABinaryImageCatalog markImageAsUsed:from:](self, "markImageAsUsed:from:", self->_kernel_cache_segment, 85)}];
      v70[0] = v15;
      v16 = MEMORY[0x1E696AD98];
      symbolInfo2 = [(OSABinaryImageSegment *)self->_kernel_cache_segment symbolInfo];
      v18 = [v16 numberWithUnsignedLongLong:{frame - objc_msgSend(symbolInfo2, "start")}];
      v70[1] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
      v20 = [v19 copy];
      v21 = v63[5];
      v63[5] = v20;

      objc_storeStrong(v57 + 5, self->_kernel_cache_segment);
    }
  }

  v22 = v63[5];
  if (!v22)
  {
    v23 = self->_kernel_segments;
    if ([(NSMutableArray *)self->_kernel_text_exec_segments count])
    {
      v24 = self->_kernel_text_exec_segments;

      v25 = 84;
      v23 = v24;
    }

    else
    {
      v25 = 75;
    }

    v26 = [(NSMutableArray *)v23 count];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __55__OSABinaryImageCatalog_searchFrame_in_regions_result___block_invoke;
    v54[3] = &unk_1E7A27C48;
    v54[4] = self;
    v54[5] = &v62;
    v55 = v25;
    v54[6] = &v56;
    v54[7] = frame;
    [(NSMutableArray *)v23 indexOfObject:&unk_1F241EB00 inSortedRange:0 options:v26 usingComparator:256, v54];
    if (v63[5])
    {
      goto LABEL_23;
    }

    v27 = frame - self->_targeted_slide;
    if ([(NSMutableArray *)self->_rootedCacheLibs count])
    {
      rootedCacheLibs = self->_rootedCacheLibs;
      v29 = [(NSMutableArray *)rootedCacheLibs count];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __55__OSABinaryImageCatalog_searchFrame_in_regions_result___block_invoke_2;
      v53[3] = &unk_1E7A27C70;
      v53[4] = self;
      v53[5] = &v62;
      v53[6] = &v56;
      v53[7] = v27;
      [(NSMutableArray *)rootedCacheLibs indexOfObject:&unk_1F241EB00 inSortedRange:0 options:v29 usingComparator:256, v53];
    }

    if (v63[5])
    {
      goto LABEL_23;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      symbolInfo3 = [(OSABinaryImageSegment *)self->_targeted_cache symbolInfo];
      if (v27 >= [symbolInfo3 start])
      {
        symbolInfo4 = [(OSABinaryImageSegment *)self->_targeted_cache symbolInfo];
        start = [symbolInfo4 start];
        symbolInfo5 = [(OSABinaryImageSegment *)self->_targeted_cache symbolInfo];
        LODWORD(start) = v27 < [symbolInfo5 size] + start;

        if (!start)
        {
          goto LABEL_17;
        }

        v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[OSABinaryImageCatalog markImageAsUsed:from:](self, "markImageAsUsed:from:", self->_targeted_cache, 83)}];
        v69[0] = v33;
        v34 = MEMORY[0x1E696AD98];
        symbolInfo6 = [(OSABinaryImageSegment *)self->_targeted_cache symbolInfo];
        v36 = [v34 numberWithUnsignedLongLong:{v27 - objc_msgSend(symbolInfo6, "start")}];
        v69[1] = v36;
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
        v38 = [v37 copy];
        v39 = v63[5];
        v63[5] = v38;

        v40 = v57;
        v41 = self->_targeted_cache;
        symbolInfo3 = v40[5];
        v40[5] = v41;
      }
    }

LABEL_17:
    if (!v63[5])
    {
      exclave_shared_caches = self->_exclave_shared_caches;
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __55__OSABinaryImageCatalog_searchFrame_in_regions_result___block_invoke_3;
      v52[3] = &unk_1E7A27C98;
      v52[4] = self;
      v52[5] = &v62;
      v52[6] = &v56;
      v52[7] = frame;
      [(NSMutableArray *)exclave_shared_caches enumerateObjectsUsingBlock:v52];
      if (!v63[5])
      {
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __55__OSABinaryImageCatalog_searchFrame_in_regions_result___block_invoke_4;
        v51[3] = &unk_1E7A27CC0;
        v51[4] = self;
        v51[5] = &v62;
        v51[6] = &v56;
        v51[7] = frame;
        [inCopy indexOfObjectPassingTest:v51];
      }

      if (!v63[5])
      {
        v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[OSABinaryImageCatalog markImageAsUsed:from:](self, "markImageAsUsed:from:", self->_absolute_segment, 65)}];
        v68[0] = v43;
        v44 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:frame];
        v68[1] = v44;
        v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
        v46 = v63[5];
        v63[5] = v45;

        if (regionsCopy)
        {
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __55__OSABinaryImageCatalog_searchFrame_in_regions_result___block_invoke_5;
          v50[3] = &unk_1E7A27CE8;
          v50[4] = &v56;
          v50[5] = frame;
          [regionsCopy indexOfObjectPassingTest:v50];
        }
      }
    }

LABEL_23:
    if (result)
    {
      *result = v57[5];
    }

    v22 = v63[5];
  }

  v47 = v22;
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);

  return v47;
}

uint64_t __55__OSABinaryImageCatalog_searchFrame_in_regions_result___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;
  v9 = *(a1 + 56);
  v10 = [v8 symbolInfo];
  if (v9 >= [v10 start])
  {
    v11 = *(a1 + 56);
    v12 = [v8 symbolInfo];
    v13 = [v12 start];
    v14 = [v8 symbolInfo];
    v15 = [v14 size] + v13;

    if (v11 < v15)
    {
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "markImageAsUsed:from:", v8, *(a1 + 64))}];
      v29[0] = v16;
      v17 = MEMORY[0x1E696AD98];
      v18 = *(a1 + 56);
      v19 = [v8 symbolInfo];
      v20 = [v17 numberWithUnsignedLongLong:{v18 - objc_msgSend(v19, "start")}];
      v29[1] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
      v22 = [v21 copy];
      v23 = *(*(a1 + 40) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
    }
  }

  else
  {
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v25 = 0;
  }

  else
  {
    v26 = [v8 symbolInfo];
    if ((isKindOfClass ^ ([v26 start] >= *(a1 + 56))))
    {
      v25 = -1;
    }

    else
    {
      v25 = 1;
    }
  }

  return v25;
}

uint64_t __55__OSABinaryImageCatalog_searchFrame_in_regions_result___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;
  v9 = *(a1 + 56);
  v10 = [v8 symbolInfo];
  if (v9 >= [v10 start])
  {
    v11 = *(a1 + 56);
    v12 = [v8 symbolInfo];
    v13 = [v12 start];
    v14 = [v8 symbolInfo];
    v15 = [v14 size] + v13;

    if (v11 < v15)
    {
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "markImageAsUsed:from:", v8, 67)}];
      v29[0] = v16;
      v17 = MEMORY[0x1E696AD98];
      v18 = *(a1 + 56);
      v19 = [v8 symbolInfo];
      v20 = [v17 numberWithUnsignedLongLong:{v18 - objc_msgSend(v19, "start")}];
      v29[1] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
      v22 = [v21 copy];
      v23 = *(*(a1 + 40) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
    }
  }

  else
  {
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v25 = 0;
  }

  else
  {
    v26 = [v8 symbolInfo];
    if ((isKindOfClass ^ ([v26 start] >= *(a1 + 56))))
    {
      v25 = -1;
    }

    else
    {
      v25 = 1;
    }
  }

  return v25;
}

void __55__OSABinaryImageCatalog_searchFrame_in_regions_result___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = *(a1 + 56);
  v9 = [v7 symbolInfo];
  if (v8 >= [v9 start])
  {
    v10 = *(a1 + 56);
    v11 = [v7 symbolInfo];
    v12 = [v11 start];
    v13 = [v7 symbolInfo];
    v14 = [v13 size] + v12;

    if (v10 < v14)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "markImageAsUsed:from:", v7, 83)}];
      v24[0] = v15;
      v16 = MEMORY[0x1E696AD98];
      v17 = *(a1 + 56);
      v18 = [v7 symbolInfo];
      v19 = [v16 numberWithUnsignedLongLong:{v17 - objc_msgSend(v18, "start")}];
      v24[1] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
      v21 = [v20 copy];
      v22 = *(*(a1 + 40) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      *a4 = 1;
    }
  }

  else
  {
  }
}

BOOL __55__OSABinaryImageCatalog_searchFrame_in_regions_result___block_invoke_4(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a1[7];
  v9 = [v7 symbolInfo];
  if (v8 >= [v9 start])
  {
    v10 = a1[7];
    v11 = [v7 symbolInfo];
    v12 = [v11 start];
    v13 = [v7 symbolInfo];
    v14 = [v13 size] + v12;

    if (v10 < v14)
    {
      v15 = [v7 source];
      v16 = a1[4];
      if (v15 == 106)
      {
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v16, "markImageAsUsed:from:", v7, 74)}];
        v30[0] = v17;
        v18 = v30;
      }

      else
      {
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v16, "markImageAsUsed:from:", v7, 80)}];
        v29 = v17;
        v18 = &v29;
      }

      v19 = MEMORY[0x1E696AD98];
      v20 = a1[7];
      v21 = [v7 symbolInfo];
      v22 = [v19 numberWithUnsignedLongLong:{v20 - objc_msgSend(v21, "start")}];
      v18[1] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
      v24 = [v23 copy];
      v25 = *(a1[5] + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;

      objc_storeStrong((*(a1[6] + 8) + 40), a2);
      *a4 = 1;
    }
  }

  else
  {
  }

  v27 = *(*(a1[5] + 8) + 40) != 0;

  return v27;
}

BOOL __55__OSABinaryImageCatalog_searchFrame_in_regions_result___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 40);
  v9 = [v7 symbolInfo];
  if (v8 >= [v9 start])
  {
    v10 = *(a1 + 40);
    v11 = [v7 symbolInfo];
    v12 = [v11 start];
    v13 = [v7 symbolInfo];
    v14 = [v13 size] + v12;

    if (v10 < v14)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a4 = 1;
    }
  }

  else
  {
  }

  v15 = *(*(*(a1 + 32) + 8) + 40) != 0;

  return v15;
}

- (id)reportUsedImages
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_used_segments, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_used_segments;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        details = [*(*(&v11 + 1) + 8 * i) details];
        [v3 addObject:details];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)reportUsedImagesFullInfoUsingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_used_segments, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_used_segments;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        full_details = [*(*(&v13 + 1) + 8 * i) full_details];
        if (blockCopy)
        {
          blockCopy[2](blockCopy, full_details);
        }

        [v5 addObject:full_details];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (BOOL)isApplePath:(id)path orBundle:(id)bundle
{
  pathCopy = path;
  bundleCopy = bundle;
  if ([pathCopy hasPrefix:@"/System"] & 1) != 0 || (objc_msgSend(pathCopy, "hasPrefix:", @"/usr/lib") & 1) != 0 || (objc_msgSend(pathCopy, "hasPrefix:", @"/usr/bin") & 1) != 0 || (objc_msgSend(pathCopy, "hasPrefix:", @"/usr/sbin") & 1) != 0 || (objc_msgSend(pathCopy, "hasPrefix:", @"/bin") & 1) != 0 || (objc_msgSend(pathCopy, "hasPrefix:", @"/sbin") & 1) != 0 || (objc_msgSend(bundleCopy, "hasPrefix:", @"com.apple.") & 1) != 0 || (objc_msgSend(bundleCopy, "hasPrefix:", @"commpage") & 1) != 0 || (objc_msgSend(bundleCopy, "isEqualToString:", @"Ozone"))
  {
    v7 = 1;
  }

  else
  {
    v7 = [bundleCopy isEqualToString:@"Motion"];
  }

  return v7;
}

@end