@interface TIStickerCandidateGenerator
+ (TIStickerCandidateGenerator)sharedInstance;
- (CGImage)_scaledImageForStickerImage:(CGImage *)image cellHeight:(double)height;
- (CGImage)getRetainedCachedStickerImageForIdentifier:(id)identifier;
- (TIStickerCandidateGenerator)init;
- (id)_ckAttributionInfoFromSticker:(id)sticker;
- (id)_generateKeyboardCandidatesForStickers:(id)stickers withQuery:(id)query withRenderTraits:(id)traits;
- (id)keyboardStickerWithIdentifier:(id)identifier roles:(id)roles;
- (id)stickersForStickerIdentifiers:(id)identifiers roles:(id)roles;
- (void)_clearSpotlightCaches;
- (void)_generateStickerCandidatesForGenerativeEmojiSearchableQueries:(id)queries withRenderTraits:(id)traits shouldAppend:(BOOL)append language:(id)language completionHandler:(id)handler;
- (void)_purgeStickerImageCache;
- (void)cacheStickerImage:(CGImage *)image forIdentifier:(id)identifier;
- (void)clearCache;
- (void)createContext;
- (void)dealloc;
- (void)generateStickerCandidatesForTaxonomySearchableQueries:(id)queries generativeEmojiSearchableQueries:(id)searchableQueries withRenderTraits:(id)traits shouldAppend:(BOOL)append language:(id)language completionHandler:(id)handler;
@end

@implementation TIStickerCandidateGenerator

- (id)_generateKeyboardCandidatesForStickers:(id)stickers withQuery:(id)query withRenderTraits:(id)traits
{
  v64 = *MEMORY[0x277D85DE8];
  stickersCopy = stickers;
  queryCopy = query;
  traitsCopy = traits;
  array = [MEMORY[0x277CBEB18] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = stickersCopy;
  v49 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v49)
  {
    v48 = *v55;
    v9 = MEMORY[0x277D85CD0];
    while (2)
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v55 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v54 + 1) + 8 * i);
        v12 = TIStickerCandidateGeneratorOSLogFacility();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v35 = MEMORY[0x277CCACA8];
          identifier = [v11 identifier];
          v37 = [v35 stringWithFormat:@"%s Setting up candidate for sticker %@.", "-[TIStickerCandidateGenerator _generateKeyboardCandidatesForStickers:withQuery:withRenderTraits:]", identifier];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v37;
          _os_log_debug_impl(&dword_22CA55000, v12, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }

        representations = [v11 representations];
        firstObject = [representations firstObject];

        if (firstObject)
        {
          *&buf = 0;
          *(&buf + 1) = &buf;
          v61 = 0x2020000000;
          identifier2 = [firstObject identifier];
          v16 = [(TIStickerCandidateGenerator *)self getRetainedCachedStickerImageForIdentifier:identifier2];

          v62 = v16;
          if (!*(*(&buf + 1) + 24))
          {
            data = [firstObject data];
            v18 = CGImageSourceCreateWithData(data, 0);

            ImageAtIndex = CGImageSourceCreateImageAtIndex(v18, 0, 0);
            if (v18)
            {
              CFRelease(v18);
            }

            if (ImageAtIndex)
            {
              [traitsCopy singleCellHeight];
              v21 = v20;
              [traitsCopy screenScale];
              v23 = [(TIStickerCandidateGenerator *)self _scaledImageForStickerImage:ImageAtIndex cellHeight:fmax(v21 * v22, 1.0)];
              *(*(&buf + 1) + 24) = v23;
              identifier3 = [firstObject identifier];
              [(TIStickerCandidateGenerator *)self cacheStickerImage:v23 forIdentifier:identifier3];

              CGImageRelease(ImageAtIndex);
            }
          }

          v50 = 0;
          v51 = &v50;
          v52 = 0x2020000000;
          v53 = 0;
          TIDispatchSync();
          if (!*(v51 + 6))
          {
            TIDispatchSync();

            if (!*(v51 + 6))
            {
              CGImageRelease(*(*(&buf + 1) + 24));
              v41 = TIStickerCandidateGeneratorOSLogFacility();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s SlotID is still 0 after recreating remote context", "-[TIStickerCandidateGenerator _generateKeyboardCandidatesForStickers:withQuery:withRenderTraits:]"];
                *v58 = 138412290;
                v59 = v43;
                _os_log_error_impl(&dword_22CA55000, v41, OS_LOG_TYPE_ERROR, "%@", v58, 0xCu);
              }

              _Block_object_dispose(&v50, 8);
              _Block_object_dispose(&buf, 8);

              goto LABEL_25;
            }
          }

          TIDispatchSync();

          CGImageRelease(*(*(&buf + 1) + 24));
          v25 = MEMORY[0x277D6F3D8];
          v26 = *(v51 + 6);
          identifier4 = [v11 identifier];
          v28 = [v25 secureCandidateWithCandidate:&stru_283FDFAF8 forInput:queryCopy slotID:v26 customInfoType:4096 stickerIdentifier:identifier4];

          selfCopy = self;
          objc_sync_enter(selfCopy);
          v30 = +[TIAppAutofillManager sharedInstance];
          secureCandidateRenderer = [v30 secureCandidateRenderer];
          identifier5 = [v11 identifier];
          v33 = [secureCandidateRenderer updateCachedCandidate:v28 withStickerIdentifier:identifier5];

          objc_sync_exit(selfCopy);
          [array addObject:v28];
          v34 = TIStickerCandidateGeneratorOSLogFacility();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v38 = MEMORY[0x277CCACA8];
            identifier6 = [v11 identifier];
            v40 = [v38 stringWithFormat:@"%s Submitting sticker %@.", "-[TIStickerCandidateGenerator _generateKeyboardCandidatesForStickers:withQuery:withRenderTraits:]", identifier6];
            *v58 = 138412290;
            v59 = v40;
            _os_log_debug_impl(&dword_22CA55000, v34, OS_LOG_TYPE_DEBUG, "%@", v58, 0xCu);
          }

          _Block_object_dispose(&v50, 8);
          _Block_object_dispose(&buf, 8);
        }
      }

      v49 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
      if (v49)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  return array;
}

void __97__TIStickerCandidateGenerator__generateKeyboardCandidatesForStickers_withQuery_withRenderTraits___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  *(*(*(a1 + 40) + 8) + 24) = [v2 createSlot];
}

void __97__TIStickerCandidateGenerator__generateKeyboardCandidatesForStickers_withQuery_withRenderTraits___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) createContext];
  v2 = [*(a1 + 32) context];
  *(*(*(a1 + 40) + 8) + 24) = [v2 createSlot];
}

void __97__TIStickerCandidateGenerator__generateKeyboardCandidatesForStickers_withQuery_withRenderTraits___block_invoke_152(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  [v2 setObject:*(*(*(a1 + 40) + 8) + 24) forSlot:*(*(*(a1 + 48) + 8) + 24)];

  v3 = +[TIKeyboardSecureTouchManager sharedInstance];
  [v3 registerSlotID:*(*(*(a1 + 48) + 8) + 24)];
}

- (CGImage)_scaledImageForStickerImage:(CGImage *)image cellHeight:(double)height
{
  Width = CGImageGetWidth(image);
  v7 = ceil(height * 0.5);
  v8 = ceil(v7 / CGImageGetHeight(image) * Width);
  ColorSpace = CGImageGetColorSpace(image);
  v10 = CGBitmapContextCreate(0, height, height, 8uLL, 0, ColorSpace, 2u);
  CGContextSetInterpolationQuality(v10, kCGInterpolationHigh);
  v13.origin.x = floor((height - v8) * 0.5);
  v13.origin.y = floor((height - v7) * 0.5);
  v13.size.width = v8;
  v13.size.height = v7;
  CGContextDrawImage(v10, v13, image);
  Image = CGBitmapContextCreateImage(v10);
  CGContextRelease(v10);
  return Image;
}

- (id)stickersForStickerIdentifiers:(id)identifiers roles:(id)roles
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D681D8];
  rolesCopy = roles;
  identifiersCopy = identifiers;
  v8 = objc_alloc_init(v5);
  v15 = 0;
  v9 = [v8 stickersWithIdentifiers:identifiersCopy roles:rolesCopy error:&v15];

  v10 = v15;
  if (v10)
  {
    v11 = TIStickerCandidateGeneratorOSLogFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Error returned from Stickers %@.", "-[TIStickerCandidateGenerator stickersForStickerIdentifiers:roles:]", v10];
      *buf = 138412290;
      v17 = v14;
      _os_log_error_impl(&dword_22CA55000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  return v12;
}

- (id)_ckAttributionInfoFromSticker:(id)sticker
{
  stickerCopy = sticker;
  if (objc_opt_respondsToSelector())
  {
    attributionInfo = [stickerCopy attributionInfo];
    v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    adamID = [attributionInfo adamID];
    [v5 setObject:adamID forKeyedSubscript:@"adam-id"];

    bundleIdentifier = [attributionInfo bundleIdentifier];
    [v5 setObject:bundleIdentifier forKeyedSubscript:@"bundle-id"];

    name = [attributionInfo name];
    [v5 setObject:name forKeyedSubscript:@"name"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)keyboardStickerWithIdentifier:(id)identifier roles:(id)roles
{
  v75[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  rolesCopy = roles;
  v75[0] = identifierCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:1];
  v9 = [(TIStickerCandidateGenerator *)self stickersForStickerIdentifiers:v8 roles:rolesCopy];

  if ([v9 count])
  {
    v10 = objc_alloc_init(MEMORY[0x277D681D8]);
    v71 = 0;
    [v10 touchStickerWithIdentifier:identifierCopy error:&v71];
    v11 = v71;
    if (v11)
    {
      v12 = TIStickerCandidateGeneratorOSLogFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Error returned from touching sticker with identifier %@: %@.", "-[TIStickerCandidateGenerator keyboardStickerWithIdentifier:roles:]", identifierCopy, v11];
        *buf = 138412290;
        v74 = v55;
        _os_log_error_impl(&dword_22CA55000, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v13 = 0;
    }

    else
    {
      selfCopy = self;
      v58 = v10;
      v59 = v9;
      v60 = rolesCopy;
      v61 = identifierCopy;
      firstObject = [v9 firstObject];
      array = [MEMORY[0x277CBEB18] array];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v63 = firstObject;
      obj = [firstObject representations];
      v15 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v68;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v68 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v67 + 1) + 8 * i);
            v20 = objc_alloc(MEMORY[0x277D6F4A0]);
            data = [v19 data];
            v22 = [v19 uti];
            role = [v19 role];
            [v19 size];
            v25 = v24;
            v27 = v26;
            effect = [v19 effect];
            v29 = [effect description];
            isEqualToString = objc_msgSend_isEqualToString_(v29);

            if (isEqualToString)
            {
              v31 = 0;
            }

            else
            {
              v32 = [effect description];
              v33 = objc_msgSend_isEqualToString_(v32);

              if (v33)
              {
                v31 = 1;
              }

              else
              {
                v34 = [effect description];
                v35 = objc_msgSend_isEqualToString_(v34);

                if (v35)
                {
                  v31 = 2;
                }

                else
                {
                  v36 = [effect description];
                  v37 = objc_msgSend_isEqualToString_(v36);

                  if (v37)
                  {
                    v31 = 3;
                  }

                  else
                  {
                    v38 = [effect description];
                    v39 = objc_msgSend_isEqualToString_(v38);

                    if (v39)
                    {
                      v31 = 4;
                    }

                    else
                    {
                      v31 = 0;
                    }
                  }
                }
              }
            }

            v40 = [v20 initWithData:data uti:v22 role:role size:v31 effect:{v25, v27}];
            [array addObject:v40];
          }

          v16 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
        }

        while (v16);
      }

      if (objc_opt_respondsToSelector())
      {
        obja = [v63 performSelector:sel_effectType];
      }

      else
      {
        obja = -1;
      }

      if (objc_opt_respondsToSelector())
      {
        metadata = [v63 metadata];
      }

      else
      {
        metadata = 0;
      }

      identifierCopy = v61;
      if (objc_opt_respondsToSelector())
      {
        searchText = [v63 searchText];
      }

      else
      {
        searchText = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        [v63 accessibilityName];
      }

      v43 = [(TIStickerCandidateGenerator *)selfCopy _ckAttributionInfoFromSticker:v63];
      v44 = v43;
      v45 = MEMORY[0x277CBEC10];
      if (v43)
      {
        v45 = v43;
      }

      v46 = v45;

      v47 = objc_alloc(MEMORY[0x277D6F498]);
      identifier = [v63 identifier];
      name = [v63 name];
      externalURI = [v63 externalURI];
      accessibilityName = [v63 accessibilityName];
      accessibilityName2 = [v63 accessibilityName];
      v56 = searchText;
      v62 = searchText;
      v53 = metadata;
      v13 = [v47 initWithIdentifier:identifier representations:array effectType:obja name:name externalURI:externalURI accessibilityLabel:accessibilityName metadata:metadata attributionInfo:v46 searchText:v56 accessibilityName:accessibilityName2];

      v12 = v63;
      v9 = v59;
      rolesCopy = v60;
      v11 = 0;
      v10 = v58;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)createContext
{
  v11[5] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBED28];
  v4 = *MEMORY[0x277CDA100];
  v10[0] = *MEMORY[0x277CDA118];
  v10[1] = v4;
  v5 = *MEMORY[0x277CBED10];
  v11[0] = v3;
  v11[1] = v5;
  v6 = *MEMORY[0x277CDA110];
  v10[2] = *MEMORY[0x277CDA108];
  v10[3] = v6;
  v11[2] = v3;
  v11[3] = v3;
  v10[4] = *MEMORY[0x277CDA0E8];
  v11[4] = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];
  v8 = [MEMORY[0x277CD9E38] remoteContextWithOptions:v7];
  context = self->_context;
  self->_context = v8;
}

- (CGImage)getRetainedCachedStickerImageForIdentifier:(id)identifier
{
  stickerToThumbnailLock = self->_stickerToThumbnailLock;
  identifierCopy = identifier;
  [(NSLock *)stickerToThumbnailLock lock];
  v6 = [(NSMutableDictionary *)self->_stickerToThumbnail objectForKey:identifierCopy];

  if (v6)
  {
    CGImageRetain(v6);
  }

  [(NSLock *)self->_stickerToThumbnailLock unlock];
  return v6;
}

- (void)cacheStickerImage:(CGImage *)image forIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (image && identifierCopy)
  {
    [(NSLock *)self->_stickerToThumbnailLock lock];
    [(NSMutableDictionary *)self->_stickerToThumbnail setObject:image forKey:v7];
    [(NSLock *)self->_stickerToThumbnailLock unlock];
  }

  else
  {
    v8 = TIStickerCandidateGeneratorOSLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Could not cache sticker image sticker image ref (%p) and/or identifier (%@) were nil.", "-[TIStickerCandidateGenerator cacheStickerImage:forIdentifier:]", image, v7];;
      *buf = 138412290;
      v11 = v9;
      _os_log_error_impl(&dword_22CA55000, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }
}

- (void)_purgeStickerImageCache
{
  [(NSLock *)self->_stickerToThumbnailLock lock];
  [(NSMutableDictionary *)self->_stickerToThumbnail removeAllObjects];
  stickerToThumbnailLock = self->_stickerToThumbnailLock;

  [(NSLock *)stickerToThumbnailLock unlock];
}

- (void)clearCache
{
  [(TIStickerCandidateGenerator *)self _purgeStickerImageCache];
  v3 = +[TIKeyboardSecureTouchManager sharedInstance];
  [v3 clearRegistrations];

  context = self->_context;
  self->_context = 0;
}

- (void)_clearSpotlightCaches
{
  [(NSCache *)self->_queryToUUID removeAllObjects];
  negativeQueryStrings = self->_negativeQueryStrings;

  [(NSCache *)negativeQueryStrings removeAllObjects];
}

- (void)_generateStickerCandidatesForGenerativeEmojiSearchableQueries:(id)queries withRenderTraits:(id)traits shouldAppend:(BOOL)append language:(id)language completionHandler:(id)handler
{
  v100[1] = *MEMORY[0x277D85DE8];
  traitsCopy = traits;
  languageCopy = language;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __150__TIStickerCandidateGenerator__generateStickerCandidatesForGenerativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke;
  aBlock[3] = &unk_278731E78;
  aBlock[4] = self;
  appendCopy = append;
  v49 = traitsCopy;
  v95 = v49;
  v15 = handlerCopy;
  v96 = v15;
  queriesCopy = queries;
  v52 = _Block_copy(aBlock);
  reverseObjectEnumerator = [queriesCopy reverseObjectEnumerator];

  allObjects = [reverseObjectEnumerator allObjects];

  emptySuggestion = [MEMORY[0x277CC34D8] emptySuggestion];
  v19 = [MEMORY[0x277CC3508] userQueryContextWithCurrentSuggestion:?];
  v50 = languageCopy;
  [v19 setKeyboardLanguage:languageCopy];
  [v19 setBundleIDs:&unk_28400BA30];
  [v19 setFetchAttributes:&unk_28400BA48];
  [v19 setMaxSuggestionCount:50];
  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = __Block_byref_object_copy__13855;
  v92 = __Block_byref_object_dispose__13856;
  v93 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy__13855;
  v86 = __Block_byref_object_dispose__13856;
  v87 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__13855;
  v80 = __Block_byref_object_dispose__13856;
  v81 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71 = 0;
  v72 = &v71;
  v73 = 0x2810000000;
  v74 = "";
  v75 = 0;
  v51 = dispatch_group_create();
  if ([allObjects count])
  {
    v20 = 0;
    v46 = v19;
    v47 = v15;
    while (1)
    {
      v21 = [allObjects objectAtIndex:v20];
      if ([v21 length] < 3)
      {
        goto LABEL_28;
      }

      v22 = [v89[5] length];
      if (v22 > [v21 length])
      {
        goto LABEL_28;
      }

      if ([v21 isStopWord])
      {
        break;
      }

      normalizedQueryString = [v21 normalizedQueryString];
      v24 = [(NSCache *)self->_negativeQueryStrings objectForKey:normalizedQueryString];
      null = [MEMORY[0x277CBEB68] null];

      if (v24 == null)
      {

LABEL_28:
        goto LABEL_29;
      }

      v26 = [(NSCache *)self->_queryToUUID objectForKey:normalizedQueryString];
      if (v26)
      {
        v27 = v26;
        os_unfair_lock_lock(v72 + 8);
        v28 = v89[5];
        v89[5] = v21;
        v29 = v21;

        [v83[5] addObjectsFromArray:v27];
        os_unfair_lock_unlock(v72 + 8);

        goto LABEL_10;
      }

      v30 = [v19 copy];
      v31 = _createFilterQueryForQueryString_onceToken;
      v32 = normalizedQueryString;
      if (v31 != -1)
      {
        dispatch_once(&_createFilterQueryForQueryString_onceToken, &__block_literal_global_222);
      }

      if (_createFilterQueryForQueryString___shouldUseTokenizedFilterQuery)
      {
        v33 = @"(searchText == %@cdwt) || (captionText == %@cdwt) || (kMDItemPhotosSceneClassificationLabels == %@cwd || kMDItemPhotosSceneClassificationSynonyms == %@cwd)";
      }

      else
      {
        v33 = @"(searchText == %@cdw) || (captionText == %@cdwt) || (kMDItemPhotosSceneClassificationLabels == %@cwd || kMDItemPhotosSceneClassificationSynonyms == %@cwd)";
      }

      v34 = [MEMORY[0x277CCACA8] stringWithFormat:v33, v32, v32, v32, v32];

      v100[0] = v34;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:1];
      [v30 setFilterQueries:v35];

      v36 = [objc_alloc(MEMORY[0x277CC3500]) initWithUserQueryString:v32 userQueryContext:v30];
      v69[0] = 0;
      v69[1] = v69;
      v69[2] = 0x3032000000;
      v69[3] = __Block_byref_object_copy__13855;
      v69[4] = __Block_byref_object_dispose__13856;
      v70 = 0;
      v67[0] = 0;
      v67[1] = v67;
      v67[2] = 0x3032000000;
      v67[3] = __Block_byref_object_copy__13855;
      v67[4] = __Block_byref_object_dispose__13856;
      v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __150__TIStickerCandidateGenerator__generateStickerCandidatesForGenerativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_95;
      v60[3] = &unk_278731EC0;
      v63 = v67;
      v60[4] = self;
      v37 = v32;
      v61 = v37;
      v64 = &v71;
      v38 = v21;
      v62 = v38;
      v65 = &v88;
      v66 = &v76;
      [v36 setFoundItemsHandler:v60];
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __150__TIStickerCandidateGenerator__generateStickerCandidatesForGenerativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_2;
      v59[3] = &unk_278731EE8;
      v59[4] = v69;
      [v36 setFoundSuggestionsHandler:v59];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __150__TIStickerCandidateGenerator__generateStickerCandidatesForGenerativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_3;
      v53[3] = &unk_278731F10;
      v56 = &v76;
      v53[4] = self;
      v39 = v37;
      v54 = v39;
      v57 = &v71;
      v58 = &v82;
      v40 = v51;
      v55 = v40;
      [v36 setCompletionHandler:v53];
      dispatch_group_enter(v40);
      [v36 start];
      v41 = dispatch_time(0, 200000000);
      if (dispatch_group_wait(v40, v41))
      {
        v42 = TIStickerCandidateGeneratorOSLogFacility();
        v15 = v47;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Genmoji: Timeout before genmoji search could finish.", "-[TIStickerCandidateGenerator _generateStickerCandidatesForGenerativeEmojiSearchableQueries:withRenderTraits:shouldAppend:language:completionHandler:]"];
          *buf = 138412290;
          v99 = v44;
          _os_log_debug_impl(&dword_22CA55000, v42, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        (*(v47 + 2))(v47, 0, 0);
        v43 = 1;
      }

      else
      {
        v15 = v47;
        if ([v77[5] count])
        {
          os_unfair_lock_lock(v72 + 8);
          [v77[5] removeAllObjects];
          os_unfair_lock_unlock(v72 + 8);
          v43 = 0;
        }

        else
        {
          v43 = 2;
        }
      }

      v19 = v46;

      _Block_object_dispose(v67, 8);
      _Block_object_dispose(v69, 8);

      if (v43)
      {
        if (v43 != 2)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

LABEL_11:
      if ([allObjects count] <= ++v20)
      {
        goto LABEL_29;
      }
    }

    normalizedQueryString = v21;
LABEL_10:

    goto LABEL_11;
  }

LABEL_29:
  os_unfair_lock_lock(v72 + 8);
  v45 = [v83[5] copy];
  v52[2](v52, v45, v89[5]);

  os_unfair_lock_unlock(v72 + 8);
LABEL_30:

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v76, 8);

  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v88, 8);
}

void __150__TIStickerCandidateGenerator__generateStickerCandidatesForGenerativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = *(*(a1 + 32) + 16);
    v8 = [v6 normalizedQueryString];
    [v7 setObject:v5 forKey:v8 cost:{objc_msgSend(v5, "count")}];

    if (*(a1 + 56))
    {
      v9 = &stru_283FDFAF8;
    }

    else
    {
      v9 = [v6 queryString];
    }

    v11 = *(a1 + 32);
    v18[0] = @"com.apple.stickers.role.keyboard";
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v13 = [v11 stickersForStickerIdentifiers:v5 roles:v12];

    v14 = [*(a1 + 32) _generateKeyboardCandidatesForStickers:v13 withQuery:v9 withRenderTraits:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10 = TIStickerCandidateGeneratorOSLogFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Genmoji: No sticker suggestions have been received.", "-[TIStickerCandidateGenerator _generateStickerCandidatesForGenerativeEmojiSearchableQueries:withRenderTraits:shouldAppend:language:completionHandler:]_block_invoke"];
      *buf = 138412290;
      v17 = v15;
      _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __150__TIStickerCandidateGenerator__generateStickerCandidatesForGenerativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_95(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = TIStickerCandidateGeneratorOSLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Genmoji: CoreSpotlight returned %lu items.", "-[TIStickerCandidateGenerator _generateStickerCandidatesForGenerativeEmojiSearchableQueries:withRenderTraits:shouldAppend:language:completionHandler:]_block_invoke", objc_msgSend(v3, "count")];
      *buf = 138412290;
      v23 = v15;
      _os_log_debug_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v16 = v3;
    v5 = [v3 sortedArrayUsingComparator:&__block_literal_global_102];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v17 + 1) + 8 * v9) attributeSet];
          v11 = [v10 attributeDictionary];
          v12 = [v11 objectForKey:@"stickerIdentifier"];

          v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v12];
          if (v13)
          {
            [*(*(*(a1 + 56) + 8) + 40) addObject:v13];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [*(*(a1 + 32) + 16) setObject:*(a1 + 40) forKey:*(*(*(a1 + 56) + 8) + 40)];
    os_unfair_lock_lock((*(*(a1 + 64) + 8) + 32));
    v14 = [*(a1 + 48) length];
    if (v14 > [*(*(*(a1 + 72) + 8) + 40) length])
    {
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(a1 + 48));
      [*(*(*(a1 + 80) + 8) + 40) addObjectsFromArray:*(*(*(a1 + 56) + 8) + 40)];
    }

    os_unfair_lock_unlock((*(*(a1 + 64) + 8) + 32));

    v3 = v16;
  }
}

void __150__TIStickerCandidateGenerator__generateStickerCandidatesForGenerativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = TIStickerCandidateGeneratorOSLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Genmoji: Error returned from CoreSpotlight %@.", "-[TIStickerCandidateGenerator _generateStickerCandidatesForGenerativeEmojiSearchableQueries:withRenderTraits:shouldAppend:language:completionHandler:]_block_invoke_3", v3];
      *buf = 138412290;
      v12 = v10;
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  if ([*(*(*(a1 + 56) + 8) + 40) count])
  {
    os_unfair_lock_lock((*(*(a1 + 64) + 8) + 32));
    v5 = [*(*(*(a1 + 56) + 8) + 40) mutableCopy];
    v6 = *(*(a1 + 72) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    os_unfair_lock_unlock((*(*(a1 + 64) + 8) + 32));
  }

  else
  {
    v8 = *(*(a1 + 32) + 24);
    v9 = [MEMORY[0x277CBEB68] null];
    [v8 setObject:v9 forKey:*(a1 + 40)];
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __150__TIStickerCandidateGenerator__generateStickerCandidatesForGenerativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_99(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 attributeSet];
  v7 = [v6 lastUsedDate];
  v8 = [v5 attributeSet];

  if (v7)
  {
    [v8 lastUsedDate];
  }

  else
  {
    [v8 contentCreationDate];
  }
  v9 = ;

  v10 = [v4 attributeSet];
  v11 = [v10 lastUsedDate];
  v12 = [v4 attributeSet];
  v13 = v12;
  if (v11)
  {
    [v12 lastUsedDate];
  }

  else
  {
    [v12 contentCreationDate];
  }
  v14 = ;

  [v9 timeIntervalSinceReferenceDate];
  v16 = v15;
  [v14 timeIntervalSinceReferenceDate];
  if (v16 > v17)
  {
    v18 = -1;
  }

  else
  {
    v18 = v16 < v17;
  }

  return v18;
}

- (void)generateStickerCandidatesForTaxonomySearchableQueries:(id)queries generativeEmojiSearchableQueries:(id)searchableQueries withRenderTraits:(id)traits shouldAppend:(BOOL)append language:(id)language completionHandler:(id)handler
{
  queriesCopy = queries;
  searchableQueriesCopy = searchableQueries;
  traitsCopy = traits;
  languageCopy = language;
  handlerCopy = handler;
  if (TIGetShowStickersValue_onceToken != -1)
  {
    dispatch_once(&TIGetShowStickersValue_onceToken, &__block_literal_global_211);
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v19 = [mEMORY[0x277D6F470] valueForPreferenceKey:@"ShowStickers"];

  LOBYTE(mEMORY[0x277D6F470]) = [v19 BOOLValue];
  if (mEMORY[0x277D6F470])
  {
    v20 = TIStickerCandidateGeneratorOSLogFacility();
    v21 = os_signpost_id_generate(v20);

    v22 = TIStickerCandidateGeneratorOSLogFacility();
    v23 = v22;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "Generate Stickers", &unk_22CCA4FEF, buf, 2u);
    }

    *buf = 0;
    v42 = buf;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__13855;
    v45 = __Block_byref_object_dispose__13856;
    v46 = MEMORY[0x277CBEBF8];
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x3032000000;
    v39[3] = __Block_byref_object_copy__13855;
    v39[4] = __Block_byref_object_dispose__13856;
    v40 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__13855;
    v37 = __Block_byref_object_dispose__13856;
    v38 = dispatch_group_create();
    if (_os_feature_enabled_impl() & 1) != 0 || (_os_feature_enabled_impl())
    {
      if (!searchableQueriesCopy)
      {
LABEL_16:
        backgroundOperationQueue = [(TIStickerCandidateGenerator *)self backgroundOperationQueue];
        v29 = handlerCopy;
        v24 = handlerCopy;
        TIDispatchAsync();

        _Block_object_dispose(&v33, 8);
        _Block_object_dispose(v39, 8);

        _Block_object_dispose(buf, 8);
        v25 = v46;
        goto LABEL_17;
      }
    }

    else
    {
      v26 = _os_feature_enabled_impl();
      if (!searchableQueriesCopy || (v26 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    if ([searchableQueriesCopy count])
    {
      dispatch_group_enter(v34[5]);
      backgroundOperationQueue2 = [(TIStickerCandidateGenerator *)self backgroundOperationQueue];
      v30 = searchableQueriesCopy;
      v31 = traitsCopy;
      v32 = languageCopy;
      TIDispatchAsync();
    }

    goto LABEL_16;
  }

  v47 = MEMORY[0x277D85DD0];
  v48 = 3221225472;
  v49 = __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke;
  v50 = &unk_2787338C0;
  v51 = handlerCopy;
  v24 = handlerCopy;
  TIDispatchAsync();
  v25 = v51;
LABEL_17:
}

uint64_t __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_55(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 88);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_2;
  v7[3] = &unk_278731D88;
  v8 = *(a1 + 64);
  v9 = *(a1 + 80);
  return [v2 _generateStickerCandidatesForGenerativeEmojiSearchableQueries:v1 withRenderTraits:v4 shouldAppend:v3 language:v5 completionHandler:v7];
}

void __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_3(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = dispatch_time(0, 200000000);
  if (dispatch_group_wait(*(*(*(a1 + 40) + 8) + 40), v2))
  {
    v3 = TIStickerCandidateGeneratorOSLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Top level completion handler timed out for stickers search", "-[TIStickerCandidateGenerator generateStickerCandidatesForTaxonomySearchableQueries:generativeEmojiSearchableQueries:withRenderTraits:shouldAppend:language:completionHandler:]_block_invoke_3"];
      *buf = 138412290;
      v32 = v14;
      _os_log_error_impl(&dword_22CA55000, v3, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_61;
    v28 = &unk_278731DD8;
    v4 = *(a1 + 32);
    v5 = *(a1 + 56);
    v29 = v4;
    v30 = v5;
    TIDispatchAsync();
    v6 = v29;
  }

  else if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "count")}];
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v9 = *(*(*(a1 + 48) + 8) + 40);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_65;
    v16[3] = &unk_278731E00;
    v17 = v8;
    v10 = v7;
    v18 = v10;
    v6 = v8;
    [v9 enumerateObjectsUsingBlock:v16];
    v15 = *(a1 + 32);
    v11 = v10;
    TIDispatchAsync();
  }

  else
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_62;
    v22 = &unk_278731DD8;
    v12 = *(a1 + 32);
    v13 = *(a1 + 56);
    v23 = v12;
    v24 = v13;
    TIDispatchAsync();
    v6 = v23;
  }
}

void __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_61(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = TIStickerCandidateGeneratorOSLogFacility();
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_22CA55000, v3, OS_SIGNPOST_INTERVAL_END, v4, "Generate Stickers", &unk_22CCA4FEF, v5, 2u);
  }
}

void __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_62(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = TIStickerCandidateGeneratorOSLogFacility();
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_22CA55000, v3, OS_SIGNPOST_INTERVAL_END, v4, "Generate Stickers", &unk_22CCA4FEF, v5, 2u);
  }
}

void __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_65(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 stickerIdentifier];
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    [*(a1 + 40) addObject:v4];
    [*(a1 + 32) addObject:v3];
  }
}

void __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_2_67(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) copy];
  (*(v2 + 16))(v2, v3);

  v4 = TIStickerCandidateGeneratorOSLogFacility();
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_22CA55000, v5, OS_SIGNPOST_INTERVAL_END, v6, "Generate Stickers", &unk_22CCA4FEF, v7, 2u);
  }
}

void __175__TIStickerCandidateGenerator_generateStickerCandidatesForTaxonomySearchableQueries_generativeEmojiSearchableQueries_withRenderTraits_shouldAppend_language_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(a1[4] + 8) + 40), a3);
  v9 = a3;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_group_leave(*(*(a1[6] + 8) + 40));
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, 0, 0);
  v4.receiver = self;
  v4.super_class = TIStickerCandidateGenerator;
  [(TIStickerCandidateGenerator *)&v4 dealloc];
}

- (TIStickerCandidateGenerator)init
{
  v18.receiver = self;
  v18.super_class = TIStickerCandidateGenerator;
  v2 = [(TIStickerCandidateGenerator *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.TextInput.TIStickerCandidateGenerator.bgQueue", v3);
    backgroundOperationQueue = v2->_backgroundOperationQueue;
    v2->_backgroundOperationQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEA78]);
    queryToUUID = v2->_queryToUUID;
    v2->_queryToUUID = v6;

    [(NSCache *)v2->_queryToUUID setCountLimit:100];
    v8 = objc_alloc_init(MEMORY[0x277CBEA78]);
    negativeQueryStrings = v2->_negativeQueryStrings;
    v2->_negativeQueryStrings = v8;

    [(NSCache *)v2->_negativeQueryStrings setCountLimit:250];
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    stickerToThumbnail = v2->_stickerToThumbnail;
    v2->_stickerToThumbnail = v10;

    v12 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    stickerToThumbnailLock = v2->_stickerToThumbnailLock;
    v2->_stickerToThumbnailLock = v12;

    v14 = objc_alloc_init(TISceneTaxonomyGenerator);
    sceneTaxonomyGenerator = v2->_sceneTaxonomyGenerator;
    v2->_sceneTaxonomyGenerator = v14;

    [(TIStickerCandidateGenerator *)v2 createContext];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _stickersAddedOrDeletedNotificationCallback, @"com.apple.stickers.addedOrDeleted", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

+ (TIStickerCandidateGenerator)sharedInstance
{
  if (sharedInstance_onceToken_13947 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_13947, &__block_literal_global_13948);
  }

  v3 = sharedInstance___stickerCandidateGenerator;

  return v3;
}

uint64_t __45__TIStickerCandidateGenerator_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(TIStickerCandidateGenerator);
  v1 = sharedInstance___stickerCandidateGenerator;
  sharedInstance___stickerCandidateGenerator = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end