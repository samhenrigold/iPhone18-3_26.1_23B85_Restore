@interface QLDiskCacheQueryEnumerator
- (QLDiskCacheQueryEnumerator)initWithDiskCache:(id)cache thumbnailRequests:(id)requests;
- (id)nextThumbnailRequestWithThumbnailData:(id *)data;
- (void)_cleanUpValues;
- (void)_createNewCacheIndexDatabaseEnumerator;
- (void)_findThumbnailRequestsToProcess;
- (void)dealloc;
- (void)moveThumbnailRequestsFromBeingProcessedToSameRequestIfTheyMatch:(id)match;
@end

@implementation QLDiskCacheQueryEnumerator

- (void)_createNewCacheIndexDatabaseEnumerator
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  generatorRequests = self->_generatorRequests;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __68__QLDiskCacheQueryEnumerator__createNewCacheIndexDatabaseEnumerator__block_invoke;
  v12 = &unk_279ADD4B0;
  selfCopy = self;
  v5 = v3;
  v14 = v5;
  [(NSDictionary *)generatorRequests enumerateKeysAndObjectsUsingBlock:&v9];
  if ([v5 count])
  {
    indexDatabase = [(QLDiskCache *)self->super._diskCache indexDatabase];
    v7 = [indexDatabase queryCacheForFileRequests:v5];
    cacheIndexDatabaseEnumerator = self->_cacheIndexDatabaseEnumerator;
    self->_cacheIndexDatabaseEnumerator = v7;
  }
}

void __68__QLDiskCacheQueryEnumerator__createNewCacheIndexDatabaseEnumerator__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  *a4 = 0;
  v8 = [v7 mutableCopy];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v10)
  {
    v11 = v10;
    v41 = v6;
    v42 = v8;
    v46 = 0;
    v12 = 0;
    v13 = *v48;
    do
    {
      v14 = 0;
      v43 = v11;
      do
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v47 + 1) + 8 * v14);
        v16 = [v15 request];
        if (!v12)
        {
          v17 = [v15 request];
          v18 = [v17 fileIdentifier];
          v12 = [v18 fileIdentifier];

          v19 = [*(a1 + 32) generatorRequestBeingProcessed];
          [v19 setObject:v42 forKeyedSubscript:v12];
        }

        if (([v15 cancelled] & 1) == 0)
        {
          v45 = v12;
          v20 = v13;
          v21 = v46;
          if (!v46)
          {
            v22 = [v16 fileIdentifier];
            v23 = [v22 version];

            v24 = [QLCacheIndexFileRequest alloc];
            v25 = [v16 fileIdentifier];
            v26 = [v25 fileIdentifier];
            v21 = [(QLCacheIndexFileRequest *)v24 initWithFileIdentifier:v26 version:v23];
          }

          [objc_opt_class() _expectedThumbnailSizeForRequest:v16];
          v28 = v27;
          [v16 minimumDimension];
          v30 = v29;
          [v16 scale];
          *&v30 = v30 * v31;
          v32 = [v16 iconMode];
          v33 = [v15 needsLowQualityThumbnailGeneration];
          v34 = [v15 badgeType];
          v35 = [v16 iconVariant];
          v36 = [v16 interpolationQuality];
          v37 = [v16 externalThumbnailGeneratorDataHash];
          v46 = v21;
          *&v38 = v28;
          LODWORD(v39) = LODWORD(v30);
          [(QLCacheIndexFileRequest *)v21 appendSize:v32 minimumSize:v33 withIconMode:v34 lowQuality:v35 badgeType:v36 iconVariant:v37 interpolationQuality:v38 externalGeneratorDataHash:v39];
          v13 = v20;
          v12 = v45;
          v11 = v43;
        }

        ++v14;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v11);

    v40 = v46;
    if (v46)
    {
      [*(a1 + 40) setObject:v46 forKey:v12];
      v8 = v42;
      [v42 sortUsingSelector:sel_compare_];
      v6 = v41;
    }

    else
    {
      v6 = v41;
      v8 = v42;
    }
  }

  else
  {

    v12 = 0;
    v40 = 0;
  }
}

- (void)_findThumbnailRequestsToProcess
{
  v44 = *MEMORY[0x277D85DE8];
  fileIdentifier = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator fileIdentifier];

  if (fileIdentifier || (v5 = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator nextThumbnailInfo], self->_valueFound = v5, v5))
  {
    if (![(NSMutableArray *)self->_sameGeneratorRequests count])
    {
      *&v6 = 138413058;
      v33 = v6;
      do
      {
        if (!self->_valueFound)
        {
          return;
        }

        if (self->_fileIdentifier)
        {
          fileIdentifier2 = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator fileIdentifier];
          if (fileIdentifier2)
          {
            fileIdentifier = self->_fileIdentifier;
            fileIdentifier3 = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator fileIdentifier];
            if (![(QLCacheFileIdentifier *)fileIdentifier isEqual:fileIdentifier3]|| (iconMode = self->_iconMode, iconMode != [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator iconMode]) || (badgeType = self->_badgeType, badgeType != [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator badgeType]) || (iconVariant = self->_iconVariant, iconVariant != [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator iconVariant]) || (interpolationQuality = self->_interpolationQuality, interpolationQuality != [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator interpolationQuality]) || (externalGeneratorDataHash = self->_externalGeneratorDataHash, externalGeneratorDataHash != [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator externalGeneratorDataHash]))
            {

LABEL_20:
              v35[0] = MEMORY[0x277D85DD0];
              v35[1] = 3221225472;
              v35[2] = __61__QLDiskCacheQueryEnumerator__findThumbnailRequestsToProcess__block_invoke;
              v35[3] = &unk_279ADD4D8;
              v35[4] = self;
              [(QLDiskCacheQueryEnumerator *)self moveThumbnailRequestsFromBeingProcessedToSameRequestIfTheyMatch:v35, v33];
              goto LABEL_21;
            }
          }

          fileIdentifier4 = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator fileIdentifier];

          if (fileIdentifier2)
          {
          }

          if (!fileIdentifier4)
          {
            goto LABEL_20;
          }
        }

LABEL_21:
        fileIdentifier5 = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator fileIdentifier];
        if (fileIdentifier5)
        {

LABEL_24:
          if (![(NSMutableArray *)self->_sameGeneratorRequests count])
          {
            [(QLDiskCacheQueryEnumerator *)self _cleanUpValues];
            self->_cacheId = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator cacheId];
            fileIdentifier6 = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator fileIdentifier];
            v17 = self->_fileIdentifier;
            self->_fileIdentifier = fileIdentifier6;

            self->_iconMode = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator iconMode]!= 0;
            self->_iconVariant = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator iconVariant];
            self->_interpolationQuality = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator interpolationQuality];
            [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator size];
            self->_size = v18;
            bitmapFormat = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator bitmapFormat];
            bitmapFormat = self->_bitmapFormat;
            self->_bitmapFormat = bitmapFormat;

            bitmapDataBlobInfo = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator bitmapDataBlobInfo];
            bitmapDataBlobInfo = self->_bitmapDataBlobInfo;
            self->_bitmapDataBlobInfo = bitmapDataBlobInfo;

            metadataBlobInfo = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator metadataBlobInfo];
            metadataBlobInfo = self->_metadataBlobInfo;
            self->_metadataBlobInfo = metadataBlobInfo;

            metadata = self->_metadata;
            self->_metadata = 0;

            bitmapData = self->_bitmapData;
            self->_bitmapData = 0;

            self->_badgeType = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator badgeType];
            self->_externalGeneratorDataHash = [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator externalGeneratorDataHash];
            self->_flavor = 0;
            v27 = *(MEMORY[0x277CBF3A0] + 16);
            self->_contentRect.origin = *MEMORY[0x277CBF3A0];
            self->_contentRect.size = v27;
            v28 = _log_5();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v29 = self->_fileIdentifier;
              v30 = self->_badgeType;
              v31 = @"NO";
              if (self->_iconMode)
              {
                v31 = @"YES";
              }

              size = self->_size;
              *buf = v33;
              v37 = v29;
              v38 = 2112;
              v39 = v31;
              v40 = 2048;
              v41 = v30;
              v42 = 2048;
              v43 = size;
              _os_log_debug_impl(&dword_2615D3000, v28, OS_LOG_TYPE_DEBUG, "processing from database %@ icon mode %@ badgeType %lu size %.1f", buf, 0x2Au);
            }

            v34[0] = MEMORY[0x277D85DD0];
            v34[1] = 3221225472;
            v34[2] = __61__QLDiskCacheQueryEnumerator__findThumbnailRequestsToProcess__block_invoke_22;
            v34[3] = &unk_279ADD4D8;
            v34[4] = self;
            [(QLDiskCacheQueryEnumerator *)self moveThumbnailRequestsFromBeingProcessedToSameRequestIfTheyMatch:v34];
            [(QLCacheIndexDatabaseQueryEnumerator *)self->_cacheIndexDatabaseEnumerator nextThumbnailInfo];
          }

          continue;
        }

        if ([(NSMutableArray *)self->_sameGeneratorRequests count])
        {
          goto LABEL_24;
        }

        [(QLDiskCacheQueryEnumerator *)self _cleanUpValues];
        self->_valueFound = 0;
      }

      while (![(NSMutableArray *)self->_sameGeneratorRequests count]);
    }
  }
}

- (void)_cleanUpValues
{
  fileIdentifier = self->_fileIdentifier;
  self->_fileIdentifier = 0;

  self->_size = 0.0;
  bitmapDataBlobInfo = self->_bitmapDataBlobInfo;
  self->_bitmapDataBlobInfo = 0;

  metadataBlobInfo = self->_metadataBlobInfo;
  self->_metadataBlobInfo = 0;

  self->_badgeType = 0;
  self->_externalGeneratorDataHash = 0;
}

BOOL __61__QLDiskCacheQueryEnumerator__findThumbnailRequestsToProcess__block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 request];
  [objc_opt_class() _expectedThumbnailSizeForRequest:v4];
  v6 = v5;
  v7 = [*(a1 + 32) iconMode];
  if (v7 != [v4 iconMode])
  {
    goto LABEL_11;
  }

  v8 = [*(a1 + 32) badgeType];
  if (v8 != [v3 badgeType])
  {
    goto LABEL_11;
  }

  v9 = [*(a1 + 32) iconVariant];
  if (v9 != [v4 iconVariant])
  {
    goto LABEL_11;
  }

  v10 = [*(a1 + 32) interpolationQuality];
  if (v10 != [v4 interpolationQuality])
  {
    goto LABEL_11;
  }

  v11 = [*(a1 + 32) externalGeneratorDataHash];
  if (v11 != [v4 externalThumbnailGeneratorDataHash])
  {
    goto LABEL_11;
  }

  [*(a1 + 32) size];
  if (v6 != v12)
  {
    [*(a1 + 32) size];
    if (v6 < v14 && [v3 needsLowQualityThumbnailGeneration])
    {
      v15 = [*(a1 + 32) bitmapDataBlobInfo];
      v13 = [v15 length] != 0;

      goto LABEL_12;
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v13 = 1;
LABEL_12:

  return v13;
}

- (void)dealloc
{
  [(QLDiskCacheQueryEnumerator *)self _cleanUpValues];
  v3.receiver = self;
  v3.super_class = QLDiskCacheQueryEnumerator;
  [(QLDiskCacheQueryEnumerator *)&v3 dealloc];
}

- (QLDiskCacheQueryEnumerator)initWithDiskCache:(id)cache thumbnailRequests:(id)requests
{
  requestsCopy = requests;
  v8 = [(QLDiskCacheEnumerator *)self initWithDiskCache:cache];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_generatorRequests, requests);
    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(requestsCopy, "count")}];
    generatorRequestBeingProcessed = v9->_generatorRequestBeingProcessed;
    v9->_generatorRequestBeingProcessed = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sameGeneratorRequests = v9->_sameGeneratorRequests;
    v9->_sameGeneratorRequests = v12;

    generatorRequest = v9->_generatorRequest;
    v9->_generatorRequest = 0;

    v15 = objc_alloc_init(QLCacheBlobInfo);
    bitmapDataBlobInfo = v9->_bitmapDataBlobInfo;
    v9->_bitmapDataBlobInfo = v15;

    v17 = objc_alloc_init(QLCacheBlobInfo);
    metadataBlobInfo = v9->_metadataBlobInfo;
    v9->_metadataBlobInfo = v17;

    v9->_valueFound = 1;
    [(QLDiskCacheQueryEnumerator *)v9 _createNewCacheIndexDatabaseEnumerator];
  }

  return v9;
}

- (void)moveThumbnailRequestsFromBeingProcessedToSameRequestIfTheyMatch:(id)match
{
  matchCopy = match;
  v5 = [(NSMutableDictionary *)self->_generatorRequestBeingProcessed objectForKeyedSubscript:self->_fileIdentifier];
  if (v5)
  {
    v6 = _log_5();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(QLDiskCacheQueryEnumerator *)&self->_fileIdentifier moveThumbnailRequestsFromBeingProcessedToSameRequestIfTheyMatch:v6];
    }

    v7 = [v5 count];
    if (v7 >= 1)
    {
      v8 = 0;
      do
      {
        v9 = [v5 objectAtIndexedSubscript:v8];
        if (matchCopy[2](matchCopy, v9))
        {
          [(NSMutableArray *)self->_sameGeneratorRequests addObject:v9];
          [v5 removeObjectAtIndex:v8];
          --v7;
        }

        else
        {
          ++v8;
        }
      }

      while (v8 < v7);
    }

    if (!v7)
    {
      [(NSMutableDictionary *)self->_generatorRequestBeingProcessed setObject:0 forKeyedSubscript:self->_fileIdentifier];
    }
  }
}

BOOL __61__QLDiskCacheQueryEnumerator__findThumbnailRequestsToProcess__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 request];
  v5 = [*(a1 + 32) iconMode];
  if (v5 == [v4 iconMode] && objc_msgSend(v3, "needsLowQualityThumbnailGeneration") && (objc_msgSend(*(a1 + 32), "size"), objc_msgSend(v4, "minimumDimension"), objc_msgSend(v4, "maximumPixelSize"), QLSThumbnailSizeIsSufficientForLowQuality()) && (v6 = objc_msgSend(*(a1 + 32), "badgeType"), v6 == objc_msgSend(v3, "badgeType")) && (v7 = objc_msgSend(*(a1 + 32), "iconVariant"), v7 == objc_msgSend(v4, "iconVariant")) && (v8 = objc_msgSend(*(a1 + 32), "interpolationQuality"), v8 == objc_msgSend(v4, "interpolationQuality")))
  {
    v9 = [*(a1 + 32) bitmapDataBlobInfo];
    if ([v9 length])
    {
      v10 = [*(a1 + 32) externalGeneratorDataHash];
      v11 = v10 == [v4 externalThumbnailGeneratorDataHash];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)nextThumbnailRequestWithThumbnailData:(id *)data
{
  v73 = *MEMORY[0x277D85DE8];
  generatorRequest = self->_generatorRequest;
  if (generatorRequest)
  {
    self->_generatorRequest = 0;
  }

  if (self->_valueFound && ![(NSMutableArray *)self->_sameGeneratorRequests count])
  {
    if ([(NSMutableDictionary *)self->_generatorRequestBeingProcessed count])
    {
      [(QLDiskCacheQueryEnumerator *)self _findThumbnailRequestsToProcess];
      if (![(NSMutableArray *)self->_sameGeneratorRequests count])
      {
        generatorRequestBeingProcessed = self->_generatorRequestBeingProcessed;
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __68__QLDiskCacheQueryEnumerator_nextThumbnailRequestWithThumbnailData___block_invoke;
        v62[3] = &unk_279ADD500;
        v62[4] = self;
        [(NSMutableDictionary *)generatorRequestBeingProcessed enumerateKeysAndObjectsUsingBlock:v62];
        [(NSMutableDictionary *)self->_generatorRequestBeingProcessed removeAllObjects];
      }
    }
  }

  if ([(NSMutableArray *)self->_sameGeneratorRequests count])
  {
    lastObject = [(NSMutableArray *)self->_sameGeneratorRequests lastObject];
    v7 = self->_generatorRequest;
    self->_generatorRequest = lastObject;

    [(NSMutableArray *)self->_sameGeneratorRequests removeLastObject];
  }

  thumbnailData = self->_thumbnailData;
  self->_thumbnailData = 0;

  v9 = self->_generatorRequest;
  if (v9)
  {
    if (![(QLTGeneratorThumbnailRequest *)v9 cancelled]&& self->_valueFound)
    {
      if (-[QLCacheBlobInfo length](self->_bitmapDataBlobInfo, "length") || (v10 = self->_size, v11 = objc_opt_class(), -[QLTGeneratorThumbnailRequest request](self->_generatorRequest, "request"), v12 = objc_claimAutoreleasedReturnValue(), [v11 _expectedThumbnailSizeForRequest:v12], v14 = v13, v12, v14 <= v10))
      {
        if ([(QLCacheBlobInfo *)self->_bitmapDataBlobInfo length])
        {
          if (!self->_bitmapData && [(QLCacheBlobInfo *)self->_bitmapDataBlobInfo length])
          {
            blobDatabase = [(QLDiskCache *)self->super._diskCache blobDatabase];
            v16 = [blobDatabase copyBlobWithInfo:self->_bitmapDataBlobInfo];
            bitmapData = self->_bitmapData;
            self->_bitmapData = v16;
          }

          if (!self->_metadata && [(QLCacheBlobInfo *)self->_metadataBlobInfo length])
          {
            blobDatabase2 = [(QLDiskCache *)self->super._diskCache blobDatabase];
            v19 = [blobDatabase2 copyBlobWithInfo:self->_metadataBlobInfo];
            metadata = self->_metadata;
            self->_metadata = v19;
          }

          v21 = _log_5();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            fileIdentifier = self->_fileIdentifier;
            location = [(QLCacheBlobInfo *)self->_bitmapDataBlobInfo location];
            v57 = [(QLCacheBlobInfo *)self->_bitmapDataBlobInfo length];
            location2 = [(QLCacheBlobInfo *)self->_metadataBlobInfo location];
            v23 = [(QLCacheBlobInfo *)self->_metadataBlobInfo length];
            *buf = 138413314;
            v64 = fileIdentifier;
            v65 = 2048;
            v66 = location;
            v67 = 2048;
            v68 = v57;
            v69 = 2048;
            v70 = location2;
            v71 = 2048;
            v72 = v23;
            _os_log_impl(&dword_2615D3000, v21, OS_LOG_TYPE_INFO, "data for %@ thumbnail location : %llu length : %llu contentRect location : %llu length : %llu", buf, 0x34u);
          }

          if (!self->_metadata && [(QLCacheBlobInfo *)self->_metadataBlobInfo length])
          {
            request = _log_5();
            if (os_log_type_enabled(request, OS_LOG_TYPE_INFO))
            {
              bytes = [(NSData *)self->_metadata bytes];
              v49 = [(QLCacheBlobInfo *)self->_metadataBlobInfo length];
              v50 = self->_bitmapData;
              v51 = [(QLCacheBlobInfo *)self->_bitmapDataBlobInfo length];
              *buf = 134218752;
              v64 = bytes;
              v65 = 2048;
              v66 = v49;
              v67 = 2048;
              v68 = v50;
              v69 = 2048;
              v70 = v51;
              v52 = "We can't get the plist buffer, so we will pretend we don't have this thumbnail plist %p length %llu bitmap data %p length %llu";
LABEL_41:
              _os_log_impl(&dword_2615D3000, request, OS_LOG_TYPE_INFO, v52, buf, 0x2Au);
              goto LABEL_31;
            }

            goto LABEL_31;
          }

          if (!self->_bitmapData && [(QLCacheBlobInfo *)self->_bitmapDataBlobInfo length])
          {
            request = _log_5();
            if (os_log_type_enabled(request, OS_LOG_TYPE_INFO))
            {
              bytes2 = [(NSData *)self->_metadata bytes];
              v54 = [(QLCacheBlobInfo *)self->_metadataBlobInfo length];
              bytes3 = [(NSData *)self->_bitmapData bytes];
              v56 = [(QLCacheBlobInfo *)self->_bitmapDataBlobInfo length];
              *buf = 134218752;
              v64 = bytes2;
              v65 = 2048;
              v66 = v54;
              v67 = 2048;
              v68 = bytes3;
              v69 = 2048;
              v70 = v56;
              v52 = "We can't get the bitmap data, so we will pretend we don't have this thumbnail plist %p length %llu bitmap data %p length %llu";
              goto LABEL_41;
            }

LABEL_31:

            goto LABEL_32;
          }

          v24 = [QLCacheThumbnailData alloc];
          cacheId = self->_cacheId;
          v61 = v24;
          request = [(QLTGeneratorThumbnailRequest *)self->_generatorRequest request];
          size = self->_size;
          bitmapFormat = self->_bitmapFormat;
          v28 = self->_bitmapData;
          v29 = self->_metadata;
          flavor = self->_flavor;
          badgeType = [(QLTGeneratorThumbnailRequest *)self->_generatorRequest badgeType];
          *&v32 = size;
          v33 = [(QLCacheThumbnailData *)v61 initWithCacheId:cacheId thumbnailRequest:request size:bitmapFormat bitmapFormat:v28 bitmapData:v29 metadata:flavor flavor:v32 contentRect:self->_contentRect.origin.x badgeType:self->_contentRect.origin.y, self->_contentRect.size.width, self->_contentRect.size.height, badgeType];
        }

        else
        {
          v35 = _log_5();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = self->_fileIdentifier;
            v37 = objc_opt_class();
            request2 = [(QLTGeneratorThumbnailRequest *)self->_generatorRequest request];
            [v37 _expectedThumbnailSizeForRequest:request2];
            *buf = 138412546;
            v64 = v36;
            v65 = 2048;
            v66 = v39;
            _os_log_impl(&dword_2615D3000, v35, OS_LOG_TYPE_INFO, "no data for %@ %f", buf, 0x16u);
          }

          v40 = [QLCacheThumbnailData alloc];
          v41 = self->_cacheId;
          request = [(QLTGeneratorThumbnailRequest *)self->_generatorRequest request];
          v42 = self->_size;
          badgeType2 = [(QLTGeneratorThumbnailRequest *)self->_generatorRequest badgeType];
          *&v44 = v42;
          v33 = [(QLCacheThumbnailData *)v40 initWithCacheId:v41 thumbnailRequest:request size:badgeType2 badgeType:v44];
        }

        v45 = self->_thumbnailData;
        self->_thumbnailData = v33;

        goto LABEL_31;
      }
    }
  }

LABEL_32:
  *data = self->_thumbnailData;
  v46 = self->_generatorRequest;

  return v46;
}

void __68__QLDiskCacheQueryEnumerator_nextThumbnailRequestWithThumbnailData___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v3 sameGeneratorRequests];
  [v5 addObjectsFromArray:v4];
}

- (double)moveThumbnailRequestsFromBeingProcessedToSameRequestIfTheyMatch:(os_log_t)log .cold.1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = @"NO";
  v4 = *a1;
  v5 = *(a2 + 88);
  if (*(a2 + 65))
  {
    v3 = @"YES";
  }

  v6 = *(a2 + 112);
  v8 = 138413058;
  v9 = v4;
  v10 = 2112;
  v11 = v3;
  v12 = 2048;
  v13 = v5;
  v14 = 2048;
  v15 = v6;
  _os_log_debug_impl(&dword_2615D3000, log, OS_LOG_TYPE_DEBUG, "make sure we are done with %@ icon mode %@ badge type %lu size %.1f", &v8, 0x2Au);
  return result;
}

@end