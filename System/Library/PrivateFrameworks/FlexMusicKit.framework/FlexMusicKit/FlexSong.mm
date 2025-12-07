@interface FlexSong
+ (BOOL)_transitionIsPossibleFromSegment:(id)segment toSegment:(id)toSegment forBodyClipPlaylist:(id)playlist;
+ (id)loadSongInFolderWithPath:(id)path;
+ (id)numberToString:(int64_t)string;
+ (id)outroInfoForClipPlaylist:(id)playlist;
+ (int64_t)_durationInSamplesToReserveForOutroSegment:(id)segment withOptions:(id)options;
+ (int64_t)_findEarlyFadeStartOffsetInSamplesForOutroSegment:(id)segment withOptions:(id)options;
+ (int64_t)_findMaxLengthInSamplesToReserveForOutroSegment:(id)segment withOptions:(id)options;
+ (int64_t)_findMinLengthInSamplesForEarlyFadeOutForOutroSegment:(id)segment withOptions:(id)options;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)naturalDuration;
- (BOOL)_addBodySegmentsForAssemblyList:(id)list forDuration:(int64_t)duration unusedDuration:(int64_t *)unusedDuration testingContext:(id)context timedOut:(BOOL *)out;
- (BOOL)_addIntroSegmentsToAssemblyList:(id)list forDuration:(int64_t)duration testingContext:(id)context;
- (BOOL)_addOutroSegmentsToAssemblyList:(id)list forDuration:(int64_t)duration allowTrim:(BOOL)trim testingContext:(id)context;
- (BOOL)_addSegment:(id)segment withDuration:(int64_t)duration toAssemblyList:(id)list timeRemaining:(int64_t)remaining reusedSegment:(id *)reusedSegment indexofNewSegment:(int64_t *)newSegment;
- (BOOL)_buildIntroAndOutroOnlySegmentAssemblyList:(id)list forDuration:(int64_t)duration testingContext:(id)context;
- (BOOL)_buildSegmentAssemblyList:(id)list forDuration:(int64_t)duration withOptions:(id)options testingContext:(id)context;
- (BOOL)_rebuildBodySegmentsInAssemblyList:(id)list forDuration:(int64_t)duration unusedDuration:(int64_t *)unusedDuration testingContext:(id)context;
- (BOOL)_removeUnpermittedTransitionsInAssemblyList:(id)list final:(BOOL)final testingContext:(id)context removedIndexes:(id)indexes conflictList:(id)conflictList;
- (BOOL)_updateTransitionBodySegmentsForAssemblyList:(id)list usingNewSegment:(id)segment indexOfNewTransitionSegment:(id)transitionSegment;
- (BOOL)_validateAuthoringIssuesInRendition:(id)rendition failureReason:(id *)reason;
- (BOOL)_validateStructureForRendition:(id)rendition failureReason:(id *)reason;
- (BOOL)_validateTransitionsInRendition:(id)rendition failureReason:(id *)reason;
- (BOOL)_verifyAssetsForSegment:(id)segment withFailureReason:(id *)reason;
- (BOOL)verifyAssetsWithFailureReason:(id *)reason;
- (BOOL)verifyRendition:(id)rendition forDuration:(id *)duration failureReason:(id *)reason;
- (FlexSong)initWithDictionary:(id)dictionary assets:(id)assets;
- (FlexSong)initWithUID:(id)d songName:(id)name artistName:(id)artistName tagIDs:(id)ds keywords:(id)keywords weightedKeywords:(id)weightedKeywords hidden:(BOOL)hidden sampleRate:(int64_t)self0 mainSegments:(id)self1 crossFadeSegments:(id)self2 assets:(id)self3 audioFileExtension:(id)self4 audioEncoderPresetName:(id)self5 metadataVersion:(int64_t)self6 customOptions:(id)self7;
- (id)_cacheObjectForKey:(id)key;
- (id)_clipPlaylistForDuration:(id *)duration withOptions:(id)options testingContext:(id)context;
- (id)_fullSongLoopedClipPlaylistForDuration:(id *)duration withOptions:(id)options testingContext:(id)context;
- (id)_longestSegmentForType:(unint64_t)type;
- (id)_longestSegmentsForType:(unint64_t)type;
- (id)_naturalDurationAssemblyList;
- (id)_segmentsForIndex:(unint64_t)index andType:(unint64_t)type;
- (id)_segmentsforType:(unint64_t)type;
- (id)_shortestSegmentForType:(unint64_t)type;
- (id)_shortestSegmentsForType:(unint64_t)type;
- (id)_transitionSegmentForSegmentInfo:(id)info toSegmentInfo:(id)segmentInfo fromBarIndex:(int64_t)index inSegmentList:(id)list;
- (id)analysisData;
- (id)description;
- (id)encodeAsDictionary;
- (id)initCommonWithUID:(id)d songName:(id)name artistName:(id)artistName tagIDs:(id)ds keywords:(id)keywords weightedKeywords:(id)weightedKeywords hidden:(BOOL)hidden sampleRate:(int64_t)self0 mainSegments:(id)self1 crossFadeSegments:(id)self2 audioFileExtension:(id)self3 audioEncoderPresetName:(id)self4 metadataVersion:(int64_t)self5 customOptions:(id)self6;
- (id)renditionForDuration:(id *)duration withOptions:(id)options testingContext:(id)context;
- (id)timedMetadataItemsWithIdentifier:(id)identifier forRendition:(id)rendition;
- (int64_t)_actualOutroDurationForAssemblyList:(id)list currentDuration:(int64_t)duration;
- (int64_t)_maxIntroDuration;
- (int64_t)_maxOutroDuration;
- (int64_t)_minBodySegmentDuration;
- (int64_t)_minIntroDuration;
- (int64_t)_minOutroDuration;
- (int64_t)_minimumPermittedIntroAndOutroDuration;
- (int64_t)_sampleDurationOfClipPlaylist:(id)playlist;
- (int64_t)_samplesForDuration:(id *)duration;
- (unint64_t)_highestIndexForSegmentType:(unint64_t)type;
- (void)_destroyCache;
- (void)_loadAnalysisData;
- (void)_populateCache;
- (void)_removeSegmentInfo:(id)info fromAssemblyList:(id)list;
- (void)_sequenceBodySegmentList:(id)list forIndexes:(id)indexes;
- (void)_setupInitialAssets:(id)assets;
@end

@implementation FlexSong

- (id)initCommonWithUID:(id)d songName:(id)name artistName:(id)artistName tagIDs:(id)ds keywords:(id)keywords weightedKeywords:(id)weightedKeywords hidden:(BOOL)hidden sampleRate:(int64_t)self0 mainSegments:(id)self1 crossFadeSegments:(id)self2 audioFileExtension:(id)self3 audioEncoderPresetName:(id)self4 metadataVersion:(int64_t)self5 customOptions:(id)self6
{
  dCopy = d;
  nameCopy = name;
  artistNameCopy = artistName;
  dsCopy = ds;
  keywordsCopy = keywords;
  weightedKeywordsCopy = weightedKeywords;
  segmentsCopy = segments;
  fadeSegmentsCopy = fadeSegments;
  extensionCopy = extension;
  presetNameCopy = presetName;
  optionsCopy = options;
  v29 = dsCopy;
  if (!dsCopy)
  {
    v29 = objc_msgSend_set(MEMORY[0x277CBEB98], v24, v25, v26, v27);
  }

  v30 = keywordsCopy;
  if (!keywordsCopy)
  {
    v30 = objc_msgSend_set(MEMORY[0x277CBEB98], v24, v25, v26, v27);
  }

  v31 = weightedKeywordsCopy;
  if (!weightedKeywordsCopy)
  {
    v31 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v24, v25, v26, v27);
  }

  v47.receiver = self;
  v47.super_class = FlexSong;
  v32 = [(FlexSongBackend *)&v47 initWithUID:dCopy songName:nameCopy artistName:artistNameCopy tagIDs:v29 keywords:v30 weightedKeywords:v31 hidden:hidden recalled:presetNameCopy audioEncoderPresetName:version metadataVersion:@"LG" songFormat:rate sampleRate:optionsCopy customOptions:?];
  if (weightedKeywordsCopy)
  {
    if (keywordsCopy)
    {
      goto LABEL_9;
    }

LABEL_15:

    if (dsCopy)
    {
      goto LABEL_10;
    }

LABEL_16:

    goto LABEL_10;
  }

  if (!keywordsCopy)
  {
    goto LABEL_15;
  }

LABEL_9:
  if (!dsCopy)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v32)
  {
    objc_storeStrong(v32 + 19, extension);
    v37 = MEMORY[0x277CC0898];
    *(v32 + 120) = *MEMORY[0x277CC0898];
    *(v32 + 17) = *(v37 + 16);
    if (segmentsCopy)
    {
      objc_msgSend__cacheSegmentsByType(v32, v33, v34, v35, v36);
    }
  }

  return v32;
}

- (FlexSong)initWithUID:(id)d songName:(id)name artistName:(id)artistName tagIDs:(id)ds keywords:(id)keywords weightedKeywords:(id)weightedKeywords hidden:(BOOL)hidden sampleRate:(int64_t)self0 mainSegments:(id)self1 crossFadeSegments:(id)self2 assets:(id)self3 audioFileExtension:(id)self4 audioEncoderPresetName:(id)self5 metadataVersion:(int64_t)self6 customOptions:(id)self7
{
  assetsCopy = assets;
  inited = objc_msgSend_initCommonWithUID_songName_artistName_tagIDs_keywords_weightedKeywords_hidden_sampleRate_mainSegments_crossFadeSegments_audioFileExtension_audioEncoderPresetName_metadataVersion_customOptions_(self, v23, d, name, artistName, ds, keywords, weightedKeywords, hidden, rate, segments, fadeSegments, extension, presetName, version, options);
  v28 = inited;
  if (inited)
  {
    objc_msgSend__setupInitialAssets_(inited, v25, assetsCopy, v26, v27);
  }

  return v28;
}

- (FlexSong)initWithDictionary:(id)dictionary assets:(id)assets
{
  dictionaryCopy = dictionary;
  assetsCopy = assets;
  v65 = objc_msgSend_objectForKey_(dictionaryCopy, v6, @"uuid", v7, v8);
  v64 = objc_msgSend_objectForKey_(dictionaryCopy, v9, @"songName", v10, v11);
  v63 = objc_msgSend_objectForKey_(dictionaryCopy, v12, @"artistName", v13, v14);
  v18 = objc_msgSend_objectForKey_(dictionaryCopy, v15, @"sampleRate", v16, v17);
  v23 = objc_msgSend_intValue(v18, v19, v20, v21, v22);

  v27 = objc_msgSend_objectForKey_(dictionaryCopy, v24, @"tagIDs", v25, v26);
  v32 = objc_msgSend_firstObject(v27, v28, v29, v30, v31);

  if (v32)
  {
    v36 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v33, v27, v34, v35);
  }

  else
  {
    v36 = 0;
  }

  v37 = objc_msgSend_objectForKey_(dictionaryCopy, v33, @"audioEncoderPresetName", v34, v35);
  v41 = objc_msgSend_objectForKey_(dictionaryCopy, v38, @"audioFileExtension", v39, v40);
  v45 = objc_msgSend_objectForKey_(dictionaryCopy, v42, @"customOptions", v43, v44);
  v49 = objc_msgSend_objectForKey_(dictionaryCopy, v46, @"crossFadeSegments", v47, v48);
  v50 = objc_opt_class();
  v53 = objc_msgSend_decodeItemsInArray_asClass_(FlexUtilities, v51, v49, v50, v52);
  inited = objc_msgSend_initCommonWithUID_songName_artistName_tagIDs_keywords_weightedKeywords_hidden_sampleRate_mainSegments_crossFadeSegments_audioFileExtension_audioEncoderPresetName_metadataVersion_customOptions_(self, v54, v65, v64, v63, v36, 0, 0, 0, v23, 0, v53, v41, v37, 0, v45);
  v59 = inited;
  if (inited)
  {
    objc_msgSend__setupInitialAssets_(inited, v56, assetsCopy, v57, v58);
  }

  return v59;
}

- (void)_setupInitialAssets:(id)assets
{
  objc_msgSend_updateAssets_(self, a2, assets, v3, v4);
  v9 = objc_msgSend_existingAssetWithID_(self, v6, @"FMSongBundleAssetID", v7, v8);
  v31 = v9;
  if (v9)
  {
    v18 = objc_msgSend_localURL(v9, v10, v11, v12, v13);
    if (v18)
    {
      v19 = objc_msgSend_audioFileExtension(self, v14, v15, v16, v17);
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = @"m4a";
      }

      v21 = [FlexSongAssetProvider_V2 alloc];
      v26 = objc_msgSend_path(v18, v22, v23, v24, v25);
      v29 = objc_msgSend_initWithFolderPath_audioFileExtension_(v21, v27, v26, v20, v28);
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  assetProvider = self->_assetProvider;
  self->_assetProvider = v29;
}

- (void)_loadAnalysisData
{
  v90 = *MEMORY[0x277D85DE8];
  v76 = objc_opt_new();
  selfCopy = self;
  v79 = objc_msgSend_existingAssetWithID_(self, v3, @"FMSongBundleAssetID", v4, v5);
  v77 = objc_msgSend_localURL(v79, v6, v7, v8, v9);
  v14 = objc_msgSend_path(v77, v10, v11, v12, v13);
  v18 = objc_msgSend_stringByAppendingPathComponent_(v14, v15, @"ANALYSIS", v16, v17);

  v75 = v18;
  v22 = objc_msgSend_stringByAppendingPathComponent_(v18, v19, @"ONSET", v20, v21);
  v27 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v23, v24, v25, v26);
  v30 = objc_msgSend_contentsOfDirectoryAtPath_error_(v27, v28, v22, 0, v29);

  v80 = objc_opt_new();
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = v30;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v85, v89, 16);
  if (v32)
  {
    v36 = v32;
    v37 = *v86;
    v81 = *v86;
    do
    {
      v38 = 0;
      v82 = v36;
      do
      {
        if (*v86 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v85 + 1) + 8 * v38);
        v40 = objc_msgSend_stringByAppendingPathComponent_(v22, v33, v39, v34, v35);
        v84 = 0;
        v42 = objc_msgSend_stringWithContentsOfFile_encoding_error_(MEMORY[0x277CCACA8], v41, v40, 4, &v84);
        v46 = v84;
        if (!v46)
        {
          v47 = v22;
          v48 = objc_msgSend_componentsSeparatedByString_(v42, v43, @"\n", v44, v45);
          v53 = objc_msgSend_mutableCopy(v48, v49, v50, v51, v52);

          v57 = objc_msgSend_indexesOfObjectsPassingTest_(v53, v54, &unk_285EA0510, v55, v56);
          objc_msgSend_removeObjectsAtIndexes_(v53, v58, v57, v59, v60);
          v65 = objc_msgSend_stringByDeletingPathExtension(v39, v61, v62, v63, v64);
          v68 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v65, v66, @"_onset", &stru_285EA09B0, v67);

          if (v53)
          {
            v71 = v68 == 0;
          }

          else
          {
            v71 = 1;
          }

          if (!v71)
          {
            objc_msgSend_setObject_forKey_(v80, v69, v53, v68, v70);
          }

          v22 = v47;
          v37 = v81;
          v36 = v82;
        }

        ++v38;
      }

      while (v36 != v38);
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v85, v89, 16);
    }

    while (v36);
  }

  objc_msgSend_setObject_forKey_(v76, v72, v80, @"onsets", v73);
  analysisData = selfCopy->_analysisData;
  selfCopy->_analysisData = v76;
}

- (id)analysisData
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_analysisData)
  {
    objc_msgSend__loadAnalysisData(selfCopy, v3, v4, v5, v6);
  }

  objc_sync_exit(selfCopy);

  analysisData = selfCopy->_analysisData;

  return analysisData;
}

- (id)encodeAsDictionary
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
  v11 = objc_msgSend_uid(self, v7, v8, v9, v10);
  objc_msgSend_setValue_forKey_(v6, v12, v11, @"uuid", v13);

  v18 = objc_msgSend_songName(self, v14, v15, v16, v17);
  objc_msgSend_setValue_forKey_(v6, v19, v18, @"songName", v20);

  v25 = objc_msgSend_artistName(self, v21, v22, v23, v24);
  objc_msgSend_setValue_forKey_(v6, v26, v25, @"artistName", v27);

  v28 = MEMORY[0x277CCABB0];
  v33 = objc_msgSend_sampleRate(self, v29, v30, v31, v32);
  v37 = objc_msgSend_numberWithInteger_(v28, v34, v33, v35, v36);
  objc_msgSend_setValue_forKey_(v6, v38, v37, @"sampleRate", v39);

  v44 = objc_msgSend__decodedMainSegmentsFromCache(self, v40, v41, v42, v43);
  v48 = objc_msgSend_encodeItemsInArray_(FlexUtilities, v45, v44, v46, v47);
  objc_msgSend__destroyCache(self, v49, v50, v51, v52);
  if (v48)
  {
    objc_msgSend_setValue_forKey_(v6, v53, v48, @"mainSegments", v56);
  }

  v57 = objc_msgSend_tagIDs(self, v53, v54, v55, v56);
  v62 = objc_msgSend_anyObject(v57, v58, v59, v60, v61);

  if (v62)
  {
    v67 = objc_msgSend_tagIDs(self, v63, v64, v65, v66);
    v72 = objc_msgSend_allObjects(v67, v68, v69, v70, v71);
    objc_msgSend_setValue_forKey_(v6, v73, v72, @"tagIDs", v74);
  }

  v75 = objc_msgSend_assetProvider(self, v63, v64, v65, v66);
  v80 = objc_msgSend_audioFileExtension(v75, v76, v77, v78, v79);

  if (v80)
  {
    objc_msgSend_setValue_forKey_(v6, v81, v80, @"audioFileExtension", v84);
  }

  v88 = objc_msgSend_audioEncoderPresetName(self, v81, v82, v83, v84);
  if (v88)
  {
    objc_msgSend_setValue_forKey_(v6, v85, v88, @"audioEncoderPresetName", v87);
  }

  v89 = objc_msgSend_existingAssetWithID_(self, v85, @"FMSongBundleAssetID", v86, v87);
  v94 = v89;
  if (v89)
  {
    v95 = MEMORY[0x277CCABB0];
    v96 = objc_msgSend_contentVersion(v89, v90, v91, v92, v93);
    v100 = objc_msgSend_numberWithInteger_(v95, v97, v96, v98, v99);
    objc_msgSend_setValue_forKey_(v6, v101, v100, @"contentVersion", v102);

    v103 = MEMORY[0x277CCABB0];
    v108 = objc_msgSend_compatibilityVersion(v94, v104, v105, v106, v107);
    v112 = objc_msgSend_numberWithInteger_(v103, v109, v108, v110, v111);
    objc_msgSend_setValue_forKey_(v6, v113, v112, @"compatibilityVersion", v114);
  }

  v117 = objc_msgSend_customOptions(self, v90, v91, v92, v93);
  if (v117)
  {
    objc_msgSend_setValue_forKey_(v6, v115, v117, @"customOptions", v116);
  }

  return v6;
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_songName(self, a2, v2, v3, v4);
  v12 = objc_msgSend_artistName(self, v8, v9, v10, v11);
  v16 = objc_msgSend_stringWithFormat_(v6, v13, @"%@ by %@", v14, v15, v7, v12);

  return v16;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumDuration
{
  v8 = 6 * objc_msgSend_sampleRate(self, a3, v3, v4, v5);
  v13 = objc_msgSend_sampleRate(self, v9, v10, v11, v12);

  return CMTimeMake(retstr, v8, v13);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)naturalDuration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_cachedNaturalDuration = &selfCopy->_cachedNaturalDuration;
  if ((selfCopy->_cachedNaturalDuration.flags & 1) == 0)
  {
    v10 = objc_msgSend__naturalDurationAssemblyList(selfCopy, v5, v6, v7, v8);
    v14 = objc_msgSend__sampleDurationOfClipPlaylist_(selfCopy, v11, v10, v12, v13);

    v19 = objc_msgSend_sampleRate(selfCopy, v15, v16, v17, v18);
    CMTimeMake(&v22, 9600 * vcvtpd_s64_f64(v14 / 9600.0), v19);
    v20 = *&v22.value;
    selfCopy->_cachedNaturalDuration.epoch = v22.epoch;
    *&p_cachedNaturalDuration->value = v20;
  }

  objc_sync_exit(selfCopy);

  *&retstr->var0 = *&p_cachedNaturalDuration->value;
  retstr->var3 = selfCopy->_cachedNaturalDuration.epoch;
  return result;
}

- (void)_populateCache
{
  v3 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_existingAssetWithID_(self, v4, @"FMSongBundleAssetID", v5, v6);
  v12 = objc_msgSend_localURL(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_path(v12, v13, v14, v15, v16);
  v21 = objc_msgSend_stringByAppendingPathComponent_(v17, v18, @"metadata.smm", v19, v20);

  v25 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x277CBEA90], v22, v21, v23, v24);
  v43 = 0;
  v27 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x277CCAAA0], v26, v25, 0, &v43);
  v31 = v43;
  if (!v31)
  {
    v32 = objc_msgSend_objectForKey_(v27, v28, @"mainSegments", v29, v30);
    v33 = objc_opt_class();
    v36 = objc_msgSend_decodeItemsInArray_asClass_(FlexUtilities, v34, v32, v33, v35);
    objc_msgSend_setObject_forKey_(self->_segmentCache, v37, v27, @"metadataDict", v38);
    objc_msgSend_setObject_forKey_(self->_segmentCache, v39, v36, @"decodedMainSegments", v40);
    objc_msgSend_setObject_forKey_(self->_segmentCache, v41, v32, @"mainSegments", v42);
  }

  objc_autoreleasePoolPop(v3);
}

- (id)_cacheObjectForKey:(id)key
{
  keyCopy = key;
  segmentCache = self->_segmentCache;
  if (!segmentCache)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = self->_segmentCache;
    self->_segmentCache = v9;

    objc_msgSend__populateCache(self, v11, v12, v13, v14);
    segmentCache = self->_segmentCache;
  }

  v19 = objc_msgSend_objectForKey_(segmentCache, v4, keyCopy, v5, v6);
  if (!v19)
  {
    objc_msgSend__populateCache(self, v15, v16, v17, v18);
    v19 = objc_msgSend_objectForKey_(self->_segmentCache, v20, keyCopy, v21, v22);
  }

  return v19;
}

- (void)_destroyCache
{
  objc_msgSend_removeAllObjects(self->_segmentCache, a2, v2, v3, v4);
  segmentCache = self->_segmentCache;
  self->_segmentCache = 0;
}

- (id)_segmentsforType:(unint64_t)type
{
  v11 = objc_msgSend__metadataDictFromCache(self, a2, type, v3, v4);
  if (!v11)
  {
    v12 = FlexLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B7E5000, v12, OS_LOG_TYPE_DEFAULT, "flex: missing metadataDict!", buf, 2u);
    }
  }

  v15 = objc_msgSend__decodedMainSegmentsFromCache(self, v7, v8, v9, v10);
  if (!v15)
  {
    v16 = FlexLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_24B7E5000, v16, OS_LOG_TYPE_DEFAULT, "flex: missing decodedMainSegments!", v19, 2u);
    }
  }

  if (type - 1 > 3)
  {
    v17 = 0;
  }

  else
  {
    v17 = objc_msgSend_segmentsWithType_inSegments_(FlexSegment, v13, type, v15, v14);
  }

  return v17;
}

- (id)_segmentsForIndex:(unint64_t)index andType:(unint64_t)type
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend__segmentsforType_(self, a2, type, type, v4);
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9, v10);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = v6;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v30, v34, 16);
  if (v14)
  {
    v19 = v14;
    v20 = *v31;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v12);
        }

        v22 = *(*(&v30 + 1) + 8 * i);
        v23 = objc_msgSend_nameIndex(v22, v15, v16, v17, v18, v30);
        v28 = objc_msgSend_integerValue(v23, v24, v25, v26, v27);

        if (v28 == index)
        {
          objc_msgSend_addObject_(v11, v15, v22, v17, v18);
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v30, v34, 16);
    }

    while (v19);
  }

  return v11;
}

- (id)_shortestSegmentsForType:(unint64_t)type
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, type, v3, v4);
  v13 = objc_msgSend__highestIndexForSegmentType_(self, v8, type, v9, v10);
  v14 = 0;
  do
  {
    v15 = objc_msgSend__segmentsForIndex_andType_(self, v11, v14, type, v12);
    v19 = objc_msgSend__sortFlexSegmentsShortestToLongest_(self, v16, v15, v17, v18);

    if (objc_msgSend_count(v19, v20, v21, v22, v23))
    {
      v28 = objc_msgSend_firstObject(v19, v24, v25, v26, v27);
      objc_msgSend_addObject_(v7, v29, v28, v30, v31);
    }

    ++v14;
  }

  while (v14 <= v13);
  if (type == 2)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v33 = objc_msgSend__segmentsforType_(self, v11, 2, v32, v12, 0);
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v45, v49, 16);
    if (v35)
    {
      v40 = v35;
      v41 = *v46;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v46 != v41)
          {
            objc_enumerationMutation(v33);
          }

          v43 = *(*(&v45 + 1) + 8 * i);
          if (objc_msgSend_sliceable(v43, v36, v37, v38, v39))
          {
            objc_msgSend_addObject_(v7, v36, v43, v38, v39);
          }
        }

        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v45, v49, 16);
      }

      while (v40);
    }
  }

  return v7;
}

- (id)_shortestSegmentForType:(unint64_t)type
{
  v6 = objc_msgSend__shortestSegmentsForType_(self, a2, type, v3, v4);
  v10 = objc_msgSend__sortFlexSegmentsShortestToLongest_(self, v7, v6, v8, v9);

  v15 = objc_msgSend_firstObject(v10, v11, v12, v13, v14);

  return v15;
}

- (id)_longestSegmentsForType:(unint64_t)type
{
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, type, v3, v4);
  v13 = objc_msgSend__highestIndexForSegmentType_(self, v8, type, v9, v10);
  v14 = 0;
  do
  {
    v15 = objc_msgSend__segmentsForIndex_andType_(self, v11, v14, type, v12);
    v19 = objc_msgSend__sortFlexSegmentsShortestToLongest_(self, v16, v15, v17, v18);

    if (objc_msgSend_count(v19, v20, v21, v22, v23))
    {
      v28 = objc_msgSend_lastObject(v19, v24, v25, v26, v27);
      objc_msgSend_addObject_(v7, v29, v28, v30, v31);
    }

    ++v14;
  }

  while (v14 <= v13);

  return v7;
}

- (id)_longestSegmentForType:(unint64_t)type
{
  v6 = objc_msgSend__segmentsforType_(self, a2, type, v3, v4);
  v10 = objc_msgSend__sortFlexSegmentsShortestToLongest_(self, v7, v6, v8, v9);

  v15 = objc_msgSend_lastObject(v10, v11, v12, v13, v14);

  return v15;
}

- (unint64_t)_highestIndexForSegmentType:(unint64_t)type
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend__segmentsforType_(self, a2, type, v3, v4);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v32, v36, 16);
  if (v7)
  {
    v12 = v7;
    v13 = 0;
    v14 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v5);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        v17 = objc_msgSend_nameIndex(v16, v8, v9, v10, v11);
        if (objc_msgSend_integerValue(v17, v18, v19, v20, v21) > v13)
        {
          v26 = objc_msgSend_nameIndex(v16, v22, v23, v24, v25);
          v13 = objc_msgSend_integerValue(v26, v27, v28, v29, v30);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v32, v36, 16);
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_transitionSegmentForSegmentInfo:(id)info toSegmentInfo:(id)segmentInfo fromBarIndex:(int64_t)index inSegmentList:(id)list
{
  v86 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  segmentInfoCopy = segmentInfo;
  listCopy = list;
  v16 = objc_msgSend_indexOfObject_(listCopy, v13, infoCopy, v14, v15);
  if (v16 == 0x7FFFFFFFFFFFFFFFLL || (v21 = v16, v16 >= objc_msgSend_count(listCopy, v17, v18, v19, v20) - 1))
  {
    v30 = 0;
  }

  else
  {
    v80 = segmentInfoCopy;
    if (segmentInfoCopy)
    {
      v25 = segmentInfoCopy;
    }

    else
    {
      v25 = objc_msgSend_objectAtIndexedSubscript_(listCopy, v22, v21 + 1, v23, v24);
    }

    v31 = v25;
    v32 = objc_msgSend_segment(infoCopy, v26, v27, v28, v29);
    v79 = v31;
    v37 = objc_msgSend_segment(v31, v33, v34, v35, v36);
    v42 = objc_msgSend_name(v37, v38, v39, v40, v41);
    v45 = objc_msgSend_transitionToSegmentNamed_fromBarIndex_(v32, v43, v42, index, v44);

    v50 = objc_msgSend_transitionSegmentName(v45, v46, v47, v48, v49);

    if (v50)
    {
      v77 = listCopy;
      v78 = infoCopy;
      v54 = objc_msgSend__segmentsforType_(self, v51, 3, v52, v53);
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v81, v85, 16);
      if (v56)
      {
        v61 = v56;
        v30 = 0;
        v62 = *v82;
        do
        {
          for (i = 0; i != v61; ++i)
          {
            if (*v82 != v62)
            {
              objc_enumerationMutation(v54);
            }

            v64 = *(*(&v81 + 1) + 8 * i);
            v65 = objc_msgSend_name(v64, v57, v58, v59, v60);
            v70 = objc_msgSend_transitionSegmentName(v45, v66, v67, v68, v69);
            isEqualToString = objc_msgSend_isEqualToString_(v65, v71, v70, v72, v73);

            if (isEqualToString)
            {
              v75 = v64;

              v30 = v75;
            }
          }

          v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v57, &v81, v85, 16);
        }

        while (v61);
      }

      else
      {
        v30 = 0;
      }

      listCopy = v77;
      infoCopy = v78;
    }

    else
    {
      v30 = 0;
    }

    segmentInfoCopy = v80;
  }

  return v30;
}

- (int64_t)_sampleDurationOfClipPlaylist:(id)playlist
{
  v20 = *MEMORY[0x277D85DE8];
  playlistCopy = playlist;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(playlistCopy, v4, &v15, v19, 16);
  if (v5)
  {
    v10 = v5;
    v11 = 0;
    v12 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(playlistCopy);
        }

        v11 += objc_msgSend_duration(*(*(&v15 + 1) + 8 * i), v6, v7, v8, v9);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(playlistCopy, v6, &v15, v19, 16);
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)_minBodySegmentDuration
{
  v4 = objc_msgSend__shortestSegmentForType_(self, a2, 2, v2, v3);
  v9 = objc_msgSend_sampleCount(v4, v5, v6, v7, v8);

  return v9;
}

- (int64_t)_maxIntroDuration
{
  v4 = objc_msgSend__longestSegmentForType_(self, a2, 1, v2, v3);
  v9 = objc_msgSend_sampleCount(v4, v5, v6, v7, v8);

  return v9;
}

- (int64_t)_minIntroDuration
{
  v4 = objc_msgSend__shortestSegmentForType_(self, a2, 1, v2, v3);
  v9 = objc_msgSend_sampleCount(v4, v5, v6, v7, v8);

  return v9;
}

- (int64_t)_maxOutroDuration
{
  v4 = objc_msgSend__longestSegmentForType_(self, a2, 4, v2, v3);
  v9 = objc_msgSend_sampleCount(v4, v5, v6, v7, v8);

  return v9;
}

- (int64_t)_minOutroDuration
{
  v4 = objc_msgSend__shortestSegmentForType_(self, a2, 4, v2, v3);
  v9 = objc_msgSend_sampleCount(v4, v5, v6, v7, v8);

  return v9;
}

- (int64_t)_actualOutroDurationForAssemblyList:(id)list currentDuration:(int64_t)duration
{
  v70 = *MEMORY[0x277D85DE8];
  listCopy = list;
  if (objc_msgSend_indexOfObjectPassingTest_(listCopy, v7, &unk_285EA0550, v8, v9) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = FlexLogForCategory(1uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_24B80E518(v13);
    }

    v14 = 0;
  }

  else
  {
    v15 = objc_msgSend__segmentsforType_(self, v10, 4, v11, v12);
    if (objc_msgSend_count(v15, v16, v17, v18, v19) == 1)
    {
      v13 = objc_msgSend_lastObject(v15, v20, v21, v22, v23);
      v28 = objc_msgSend_sampleCount(v13, v24, v25, v26, v27);
    }

    else
    {
      v67[0] = 0;
      v67[1] = v67;
      v67[2] = 0x3032000000;
      v67[3] = sub_24B80429C;
      v67[4] = sub_24B8042AC;
      v68 = objc_msgSend_lastObject(listCopy, v20, v21, v22, v23);
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = sub_24B8042B4;
      v66[3] = &unk_27900F3E0;
      v66[4] = v67;
      v32 = objc_msgSend_indexesOfObjectsPassingTest_(v15, v29, v66, v30, v31);
      v36 = objc_msgSend_objectsAtIndexes_(v15, v33, v32, v34, v35);
      v61 = v32;
      if (objc_msgSend_count(v36, v37, v38, v39, v40) == 1)
      {
        v13 = objc_msgSend_firstObject(v36, v41, v42, v43, v44);
      }

      else
      {
        objc_msgSend__sortFlexSegmentsShortestToLongest_(self, v41, v36, v43, v44);
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v45 = v63 = 0u;
        v13 = 0;
        v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v62, v69, 16);
        if (v51)
        {
          v52 = *v63;
          while (2)
          {
            v53 = 0;
            v54 = v13;
            do
            {
              if (*v63 != v52)
              {
                objc_enumerationMutation(v45);
              }

              v55 = *(*(&v62 + 1) + 8 * v53);
              if (objc_msgSend_sampleCount(v55, v47, v48, v49, v50) > duration)
              {
                v13 = v54;
                goto LABEL_19;
              }

              v13 = v55;

              ++v53;
              v54 = v13;
            }

            while (v51 != v53);
            v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v47, &v62, v69, 16);
            if (v51)
            {
              continue;
            }

            break;
          }
        }

LABEL_19:
      }

      _Block_object_dispose(v67, 8);
      v28 = objc_msgSend_sampleCount(v13, v56, v57, v58, v59);
    }

    v14 = v28;
  }

  return v14;
}

- (int64_t)_minimumPermittedIntroAndOutroDuration
{
  v44 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = objc_msgSend__shortestSegmentsForType_(self, a2, 1, v2, v3);
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v38, v43, 16);
  if (v33)
  {
    v31 = *v39;
    v8 = -1;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v11 = objc_msgSend__shortestSegmentsForType_(self, v5, 4, v6, v7);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v34, v42, 16);
        if (v13)
        {
          v15 = v13;
          v16 = *v35;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v35 != v16)
              {
                objc_enumerationMutation(v11);
              }

              v18 = *(*(&v34 + 1) + 8 * j);
              if (objc_msgSend_canTransitionFromSegment_toSegment_fromBarIndex_checkIfPrevented_(FlexSegment, v14, v10, v18, 0, 1))
              {
                v22 = objc_msgSend_sampleCount(v10, v14, v19, v20, v21);
                v27 = objc_msgSend_sampleCount(v18, v23, v24, v25, v26);
                if (v27 + v22 >= v8)
                {
                  v28 = v8;
                }

                else
                {
                  v28 = v27 + v22;
                }

                if (v8 == -1)
                {
                  v8 = v27 + v22;
                }

                else
                {
                  v8 = v28;
                }
              }
            }

            v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v34, v42, 16);
          }

          while (v15);
        }
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v38, v43, 16);
    }

    while (v33);
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

+ (id)numberToString:(int64_t)string
{
  if (qword_28151B380 != -1)
  {
    sub_24B80E55C();
  }

  if (string > 0x63)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%ld", v3, v4, string);
  }

  else
  {
    objc_msgSend_objectAtIndexedSubscript_(qword_28151B378, a2, string, v3, v4);
  }
  v6 = ;

  return v6;
}

- (id)_naturalDurationAssemblyList
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  objc_msgSend__segmentsforType_(self, v4, 2, v5, v6);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v58 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v55, v59, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v56;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v56 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v55 + 1) + 8 * i);
        v14 = objc_alloc_init(FlexSegmentAssemblyInfo);
        objc_msgSend_setSegment_(v14, v15, v13, v16, v17);
        v22 = objc_msgSend_assetProvider(self, v18, v19, v20, v21);
        v26 = objc_msgSend_urlToAudioForSegment_(v22, v23, v13, v24, v25);
        objc_msgSend_setUrl_(v14, v27, v26, v28, v29);

        v34 = objc_msgSend_sampleCount(v13, v30, v31, v32, v33);
        objc_msgSend_setDuration_(v14, v35, v34, v36, v37);
        v42 = objc_msgSend_bars(v13, v38, v39, v40, v41);
        objc_msgSend_setBarsUsed_(v14, v43, v42, v44, v45);
        objc_msgSend_addObject_(v3, v46, v14, v47, v48);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v49, &v55, v59, 16);
    }

    while (v10);
  }

  if (objc_msgSend__updateTransitionBodySegmentsForAssemblyList_usingNewSegment_indexOfNewTransitionSegment_(self, v9, v3, 0, 0))
  {
    memset(&v54, 0, sizeof(v54));
    CMTimeMakeWithSeconds(&v54, 30.0, 48000);
    if (objc_msgSend__addOutroSegmentsToAssemblyList_forDuration_allowTrim_testingContext_(self, v50, v3, v54.value, 0, 0))
    {
      objc_msgSend__addIntroSegmentsToAssemblyList_forDuration_testingContext_(self, v51, v3, v54.value, 0);
    }
  }

  return v3;
}

- (void)_sequenceBodySegmentList:(id)list forIndexes:(id)indexes
{
  v406 = *MEMORY[0x277D85DE8];
  listCopy = list;
  indexesCopy = indexes;
  if (objc_msgSend_count(listCopy, v7, v8, v9, v10) >= 2)
  {
    v342 = objc_msgSend__highestIndexForSegmentType_(self, v11, 2, v12, v13);
    v21 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v14, v15, v16, v17);
    v22 = 0;
    v344 = listCopy;
    v349 = v21;
    while (1)
    {
      v23 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v18, v22, v19, v20);
      v27 = objc_msgSend_containsObject_(indexesCopy, v24, v23, v25, v26);

      if ((v27 & 1) == 0)
      {
        v111 = v22;
        v363 = objc_msgSend_numberToString_(FlexSong, v28, v22, v30, v31);
        v354 = objc_msgSend_array(MEMORY[0x277CBEB18], v112, v113, v114, v115);
        v395 = 0u;
        v396 = 0u;
        v397 = 0u;
        v398 = 0u;
        v116 = listCopy;
        v118 = objc_msgSend_countByEnumeratingWithState_objects_count_(v116, v117, &v395, v405, 16);
        if (v118)
        {
          v123 = v118;
          LOBYTE(isEqualToString) = 0;
          v125 = *v396;
          do
          {
            v126 = 0;
            v127 = isEqualToString;
            do
            {
              if (*v396 != v125)
              {
                objc_enumerationMutation(v116);
              }

              v128 = *(*(&v395 + 1) + 8 * v126);
              v129 = objc_msgSend_segment(v128, v119, v120, v121, v122);
              v134 = objc_msgSend_nameIndex(v129, v130, v131, v132, v133);
              isEqualToString = objc_msgSend_isEqualToString_(v134, v135, v363, v136, v137);

              if (isEqualToString)
              {
                objc_msgSend_addObject_(v354, v119, v128, v121, v122);
                v21 = v349;
              }

              else
              {
                v21 = v349;
                if (v127)
                {
                  goto LABEL_37;
                }
              }

              ++v126;
              v127 = isEqualToString;
            }

            while (v123 != v126);
            v123 = objc_msgSend_countByEnumeratingWithState_objects_count_(v116, v119, &v395, v405, 16);
          }

          while (v123);
        }

LABEL_37:

        if (objc_msgSend_count(v354, v138, v139, v140, v141))
        {
          objc_msgSend_setObject_forKey_(v21, v142, v354, v363, v143);
        }

        listCopy = v344;
        v144 = v342;
        v145 = v111;
        goto LABEL_94;
      }

      v355 = v22;
      v363 = objc_msgSend_array(MEMORY[0x277CBEB18], v28, v29, v30, v31);
      v354 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v32, v33, v34, v35);
      v391 = 0u;
      v392 = 0u;
      v393 = 0u;
      v394 = 0u;
      v36 = listCopy;
      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v391, v404, 16);
      if (v38)
      {
        v43 = v38;
        v44 = *v392;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v392 != v44)
            {
              objc_enumerationMutation(v36);
            }

            v46 = *(*(&v391 + 1) + 8 * i);
            v47 = objc_msgSend_segment(v46, v39, v40, v41, v42);
            v52 = objc_msgSend_nameIndex(v47, v48, v49, v50, v51);

            v56 = objc_msgSend_numberToString_(FlexSong, v53, v355, v54, v55);
            if (objc_msgSend_isEqualToString_(v52, v57, v56, v58, v59))
            {
              objc_msgSend_addObject_(v363, v60, v46, v61, v62);
              v67 = objc_msgSend_segment(v46, v63, v64, v65, v66);
              v72 = objc_msgSend_nameSuffix(v67, v68, v69, v70, v71);

              v76 = objc_msgSend_objectForKeyedSubscript_(v354, v73, v72, v74, v75);

              if (v76)
              {
                v80 = objc_msgSend_objectForKeyedSubscript_(v354, v77, v72, v78, v79);
                v81 = MEMORY[0x277CCABB0];
                v86 = objc_msgSend_intValue(v80, v82, v83, v84, v85);
                v90 = objc_msgSend_numberWithInt_(v81, v87, (v86 + 1), v88, v89);
              }

              else
              {
                v90 = &unk_285EA87F0;
              }

              objc_msgSend_setObject_forKey_(v354, v77, v90, v72, v79);
            }
          }

          v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v391, v404, 16);
        }

        while (v43);
      }

      v389 = 0u;
      v390 = 0u;
      v387 = 0u;
      v388 = 0u;
      v95 = objc_msgSend_allKeys(v354, v91, v92, v93, v94);
      v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v96, &v387, v403, 16);
      if (v97)
      {
        v101 = v97;
        v356 = 0;
        v102 = 0;
        v103 = *v388;
        do
        {
          for (j = 0; j != v101; ++j)
          {
            if (*v388 != v103)
            {
              objc_enumerationMutation(v95);
            }

            v105 = *(*(&v387 + 1) + 8 * j);
            if (objc_msgSend_localizedCaseInsensitiveContainsString_(v105, v98, @"to", v99, v100))
            {
              v106 = v105;

              v102 = 1;
              v356 = v106;
            }
          }

          v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v98, &v387, v403, 16);
        }

        while (v101);

        v110 = v356;
        if (v356)
        {
          objc_msgSend_removeObjectForKey_(v354, v107, v356, v108, v109);
          goto LABEL_42;
        }
      }

      else
      {

        v102 = 0;
      }

      v356 = 0;
LABEL_42:
      v345 = objc_msgSend_array(MEMORY[0x277CBEB18], v107, v110, v108, v109);
      v346 = v102;
      if (v102)
      {
        v386[0] = MEMORY[0x277D85DD0];
        v386[1] = 3221225472;
        v386[2] = sub_24B80557C;
        v386[3] = &unk_27900F400;
        v386[4] = v355;
        v150 = objc_msgSend_indexesOfObjectsPassingTest_(v36, v146, v386, v148, v149);
        v154 = objc_msgSend_objectsAtIndexes_(v36, v151, v150, v152, v153);
        objc_msgSend_addObjectsFromArray_(v345, v155, v154, v156, v157);

        v384 = 0u;
        v385 = 0u;
        v382 = 0u;
        v383 = 0u;
        v158 = v345;
        v160 = objc_msgSend_countByEnumeratingWithState_objects_count_(v158, v159, &v382, v402, 16);
        if (v160)
        {
          v164 = v160;
          v165 = *v383;
          do
          {
            for (k = 0; k != v164; ++k)
            {
              if (*v383 != v165)
              {
                objc_enumerationMutation(v158);
              }

              objc_msgSend_removeObject_(v363, v161, *(*(&v382 + 1) + 8 * k), v162, v163);
            }

            v164 = objc_msgSend_countByEnumeratingWithState_objects_count_(v158, v161, &v382, v402, 16);
          }

          while (v164);
        }
      }

      v358 = objc_msgSend_array(MEMORY[0x277CBEB18], v146, v147, v148, v149);
      v350 = objc_msgSend_count(v363, v167, v168, v169, v170);
      v364 = 0;
      v175 = 1;
      do
      {
        if (!objc_msgSend_count(v363, v171, v172, v173, v174) || v364 >= v350)
        {
          break;
        }

        v352 = v175;
        v177 = objc_msgSend_allKeys(v354, v171, v176, v173, v174);
        v181 = objc_msgSend_sortedArrayUsingSelector_(v177, v178, sel_localizedCaseInsensitiveCompare_, v179, v180);

        v380 = 0u;
        v381 = 0u;
        v378 = 0u;
        v379 = 0u;
        obj = v181;
        v361 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v182, &v378, v401, 16);
        if (v361)
        {
          v359 = *v379;
          do
          {
            for (m = 0; m != v361; ++m)
            {
              if (*v379 != v359)
              {
                objc_enumerationMutation(obj);
              }

              v184 = *(*(&v378 + 1) + 8 * m);
              v374 = 0u;
              v375 = 0u;
              v376 = 0u;
              v377 = 0u;
              v185 = v363;
              v187 = objc_msgSend_countByEnumeratingWithState_objects_count_(v185, v186, &v374, v400, 16);
              if (!v187)
              {
LABEL_67:
                v206 = 0;
                goto LABEL_69;
              }

              v192 = v187;
              v193 = *v375;
LABEL_61:
              v194 = 0;
              while (1)
              {
                if (*v375 != v193)
                {
                  objc_enumerationMutation(v185);
                }

                v195 = *(*(&v374 + 1) + 8 * v194);
                v196 = objc_msgSend_segment(v195, v188, v189, v190, v191);
                v201 = objc_msgSend_nameSuffix(v196, v197, v198, v199, v200);
                v205 = objc_msgSend_isEqualToString_(v201, v202, v184, v203, v204);

                if (v205)
                {
                  break;
                }

                if (v192 == ++v194)
                {
                  v192 = objc_msgSend_countByEnumeratingWithState_objects_count_(v185, v188, &v374, v400, 16);
                  if (!v192)
                  {
                    goto LABEL_67;
                  }

                  goto LABEL_61;
                }
              }

              objc_msgSend_addObject_(v358, v188, v195, v190, v191);
              v206 = v195;
              ++v364;
LABEL_69:

              objc_msgSend_removeObject_(v185, v207, v206, v208, v209);
            }

            v361 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v210, &v378, v401, 16);
          }

          while (v361);
        }

        v175 = v352 + 1;
      }

      while (v352 != 1000);
      listCopy = v344;
      v211 = v345;
      v21 = v349;
      v212 = 0x27900E000;
      if ((v346 & (v345 != 0)) != 1)
      {
        goto LABEL_93;
      }

      v372 = 0u;
      v373 = 0u;
      v370 = 0u;
      v371 = 0u;
      v213 = v345;
      v365 = objc_msgSend_countByEnumeratingWithState_objects_count_(v213, v214, &v370, v399, 16);
      if (!v365)
      {
        goto LABEL_92;
      }

      v219 = *v371;
      v347 = *v371;
      v348 = v213;
      do
      {
        for (n = 0; n != v365; ++n)
        {
          if (*v371 != v219)
          {
            objc_enumerationMutation(v213);
          }

          v221 = *(*(&v370 + 1) + 8 * n);
          v222 = objc_msgSend_segment(v221, v215, v216, v217, v218);
          v227 = objc_msgSend_nameSuffix(v222, v223, v224, v225, v226);

          v232 = objc_msgSend_segment(v221, v228, v229, v230, v231);
          v237 = objc_msgSend_nameIndex(v232, v233, v234, v235, v236);

          v242 = objc_msgSend_lowercaseString(v227, v238, v239, v240, v241);
          v247 = objc_msgSend_lowercaseString(@"to", v243, v244, v245, v246);
          if (objc_msgSend_hasPrefix_(v242, v248, v247, v249, v250))
          {
            v255 = v237;
            v256 = objc_msgSend_count(v213, v251, v252, v253, v254);

            v261 = v256 == 1;
            v237 = v255;
            if (v261)
            {
              objc_msgSend_addObject_(v358, v257, v221, v259, v260);
              goto LABEL_89;
            }
          }

          else
          {
          }

          v212 = 0x27900E000;
          if (objc_msgSend_length(v227, v257, v258, v259, v260) < 2)
          {
            goto LABEL_90;
          }

          v265 = objc_msgSend_substringToIndex_(v227, v262, 1, v263, v264);
          v269 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v266, @"%@%@", v267, v268, v237, v265);
          v366[0] = MEMORY[0x277D85DD0];
          v366[1] = 3221225472;
          v366[2] = sub_24B805624;
          v366[3] = &unk_27900F428;
          v270 = v358;
          v367 = v270;
          v362 = v269;
          v368 = v362;
          v369 = v221;
          v274 = objc_msgSend_indexOfObjectPassingTest_(v270, v271, v366, v272, v273);
          if (v274 < objc_msgSend_count(v270, v275, v276, v277, v278) - 1)
          {
            v360 = v237;
            v353 = objc_msgSend_objectAtIndexedSubscript_(v270, v279, v274 + 1, v280, v281);
            v286 = objc_msgSend_segment(v353, v282, v283, v284, v285);
            v290 = objc_msgSend_componentsSeparatedByString_(v227, v287, @"to", v288, v289);
            v351 = objc_msgSend_lastObject(v290, v291, v292, v293, v294);

            v299 = objc_msgSend_name(v286, v295, v296, v297, v298);
            v304 = objc_msgSend_namePrefix(v286, v300, v301, v302, v303);
            v307 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v299, v305, v304, &stru_285EA09B0, v306);

            v312 = objc_msgSend_nameStem(v286, v308, v309, v310, v311);
            v315 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v307, v313, v312, &stru_285EA09B0, v314);

            if (objc_msgSend_isEqualToString_(v351, v316, v315, v317, v318))
            {
              objc_msgSend_insertObject_atIndex_(v270, v319, v221, v274 + 1, v320);
            }

            v213 = v348;
            v21 = v349;
            v219 = v347;
            v237 = v360;
          }

LABEL_89:
          v212 = 0x27900E000uLL;
LABEL_90:
        }

        v365 = objc_msgSend_countByEnumeratingWithState_objects_count_(v213, v215, &v370, v399, 16);
      }

      while (v365);
LABEL_92:

      listCopy = v344;
      v211 = v345;
LABEL_93:
      v145 = v355;
      v321 = objc_msgSend_numberToString_(*(v212 + 1752), v171, v355, v173, v174);
      objc_msgSend_setObject_forKey_(v21, v322, v358, v321, v323);

      v144 = v342;
LABEL_94:

      v22 = v145 + 1;
      if (v145 + 1 > v144)
      {
        v328 = objc_msgSend_array(MEMORY[0x277CBEB18], v18, v324, v19, v20);
        v329 = -1;
        do
        {
          v330 = objc_msgSend_numberToString_(FlexSong, v325, ++v329, v326, v327);
          v334 = objc_msgSend_objectForKeyedSubscript_(v21, v331, v330, v332, v333);
          objc_msgSend_addObjectsFromArray_(v328, v335, v334, v336, v337);
        }

        while (v329 < v342);
        listCopy = v344;
        objc_msgSend_removeAllObjects(v344, v325, v338, v326, v327);
        objc_msgSend_addObjectsFromArray_(v344, v339, v328, v340, v341);

        break;
      }
    }
  }
}

- (BOOL)_addSegment:(id)segment withDuration:(int64_t)duration toAssemblyList:(id)list timeRemaining:(int64_t)remaining reusedSegment:(id *)reusedSegment indexofNewSegment:(int64_t *)newSegment
{
  v194 = *MEMORY[0x277D85DE8];
  segmentCopy = segment;
  listCopy = list;
  v18 = listCopy;
  if (segmentCopy && duration && listCopy)
  {
    v19 = objc_msgSend_assetProvider(self, v14, v15, v16, v17);
    v23 = objc_msgSend_urlToAudioForSegment_(v19, v20, segmentCopy, v21, v22);

    if (!v23)
    {
      v94 = 0;
LABEL_47:

      goto LABEL_48;
    }

    reusedSegmentCopy = reusedSegment;
    v28 = 0;
    v29 = 1;
    do
    {
      v30 = v29;
      if (v28 > duration)
      {
        break;
      }

      if (objc_msgSend_bars(segmentCopy, v24, v25, v26, v27) <= v29)
      {
        break;
      }

      v28 += objc_msgSend_barDurationForBarIndex_(segmentCopy, v24, v30 - 1, v26, v27);
      v29 = v30 + 1;
    }

    while (v28 < duration);
    if (objc_msgSend_sliceable(segmentCopy, v24, v25, v26, v27))
    {
      v178 = v23;
      newSegmentCopy = newSegment;
      v190[0] = MEMORY[0x277D85DD0];
      v190[1] = 3221225472;
      v190[2] = sub_24B805E38;
      v190[3] = &unk_27900F450;
      v191 = segmentCopy;
      v34 = objc_msgSend_indexesOfObjectsPassingTest_(v18, v31, v190, v32, v33);
      objc_msgSend_objectsAtIndexes_(v18, v35, v34, v36, v37);
      v186 = 0u;
      v187 = 0u;
      v188 = 0u;
      obj = v189 = 0u;
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v186, v193, 16);
      if (v39)
      {
        v44 = v39;
        v175 = v34;
        durationCopy = duration;
        v177 = segmentCopy;
        v185 = *v187;
        v181 = v18;
        while (2)
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v187 != v185)
            {
              objc_enumerationMutation(obj);
            }

            v46 = *(*(&v186 + 1) + 8 * i);
            v47 = objc_msgSend_barsUsed(v46, v40, v41, v42, v43, v175, durationCopy);
            v52 = objc_msgSend_segment(v46, v48, v49, v50, v51);
            v57 = objc_msgSend_bars(v52, v53, v54, v55, v56);

            v62 = objc_msgSend_barsUsed(v46, v58, v59, v60, v61);
            v67 = objc_msgSend_segment(v46, v63, v64, v65, v66);
            v72 = objc_msgSend_bars(v67, v68, v69, v70, v71);

            if (v47 != v57 && v62 + v30 <= v72)
            {
              if (objc_msgSend_barsUsed(v46, v40, v41, v42, v43) <= -v30)
              {
                v79 = 0;
              }

              else
              {
                v78 = 0;
                v79 = 0;
                do
                {
                  v80 = objc_msgSend_segment(v46, v74, v75, v76, v77);
                  v79 += objc_msgSend_barDurationForBarIndex_(v80, v81, v78, v82, v83);

                  ++v78;
                }

                while (objc_msgSend_barsUsed(v46, v84, v85, v86, v87) + v30 > v78);
              }

              objc_msgSend__sampleDurationOfClipPlaylist_(self, v74, v181, v76, v77);
              if (v79 - objc_msgSend_duration(v46, v88, v89, v90, v91) <= remaining)
              {
                v111 = objc_msgSend_barsUsed(v46, v40, v41, v42, v43);
                objc_msgSend_setBarsUsed_(v46, v112, v111 + v30, v113, v114);
                v93 = v46;
                objc_msgSend_setDuration_(v93, v115, v79, v116, v117);
                if (reusedSegmentCopy)
                {
                  *reusedSegmentCopy = objc_msgSend_segment(v93, v118, v119, v120, v121);
                }

                v18 = v181;
                newSegment = newSegmentCopy;
                *newSegmentCopy = objc_msgSend_indexOfObject_(v181, v118, v93, v120, v121);
                v92 = 1;
                segmentCopy = v177;
                goto LABEL_38;
              }
            }
          }

          v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v186, v193, 16);
          if (v44)
          {
            continue;
          }

          break;
        }

        v92 = 0;
        v93 = 0;
        segmentCopy = v177;
        v18 = v181;
        newSegment = newSegmentCopy;
LABEL_38:
        v23 = v178;
        v34 = v175;
        duration = durationCopy;
      }

      else
      {
        v92 = 0;
        v93 = 0;
      }

      if (v92)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v93 = 0;
    }

    v122 = v93;
    v93 = objc_alloc_init(FlexSegmentAssemblyInfo);

    objc_msgSend_setSegment_(v93, v123, segmentCopy, v124, v125);
    objc_msgSend_setUrl_(v93, v126, v23, v127, v128);
    objc_msgSend_setDuration_(v93, v129, duration, v130, v131);
    objc_msgSend_setBarsUsed_(v93, v132, v30, v133, v134);
    if (objc_msgSend_type(segmentCopy, v135, v136, v137, v138) == 2 || objc_msgSend_type(segmentCopy, v139, v140, v141, v142) == 3)
    {
      objc_msgSend_addObject_(v18, v139, v93, v141, v142);
      v144 = MEMORY[0x277CCABB0];
      v149 = objc_msgSend_nameIndex(segmentCopy, v145, v146, v147, v148);
      v154 = objc_msgSend_integerValue(v149, v150, v151, v152, v153);
      v158 = objc_msgSend_numberWithInteger_(v144, v155, v154, v156, v157);
      v192 = v158;
      v161 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v159, &v192, 1, v160);
      objc_msgSend__sequenceBodySegmentList_forIndexes_(self, v162, v18, v161, v163);
    }

    else if (objc_msgSend_type(segmentCopy, v139, v143, v141, v142) == 1)
    {
      objc_msgSend_insertObject_atIndex_(v18, v168, v93, 0, v171);
    }

    else
    {
      if (objc_msgSend_type(segmentCopy, v168, v169, v170, v171) != 4)
      {
        v94 = 0;
        goto LABEL_46;
      }

      objc_msgSend_addObject_(v18, v172, v93, v173, v174);
    }

    *newSegment = objc_msgSend_indexOfObject_(v18, v164, v93, v165, v166);
LABEL_45:
    v94 = 1;
LABEL_46:

    goto LABEL_47;
  }

  v94 = 0;
  if (!segmentCopy && duration && listCopy)
  {
    v95 = objc_alloc_init(FlexSegmentAssemblyInfo);
    objc_msgSend_setSegment_(v95, v96, 0, v97, v98);
    objc_msgSend_setUrl_(v95, v99, 0, v100, v101);
    objc_msgSend_setDuration_(v95, v102, duration, v103, v104);
    v94 = 1;
    objc_msgSend_setBarsUsed_(v95, v105, 1, v106, v107);
    objc_msgSend_addObject_(v18, v108, v95, v109, v110);
  }

LABEL_48:

  return v94;
}

- (void)_removeSegmentInfo:(id)info fromAssemblyList:(id)list
{
  if (info)
  {
    objc_msgSend_removeObject_(list, a2, info, list, v4);
  }
}

- (BOOL)_updateTransitionBodySegmentsForAssemblyList:(id)list usingNewSegment:(id)segment indexOfNewTransitionSegment:(id)transitionSegment
{
  v265 = *MEMORY[0x277D85DE8];
  listCopy = list;
  segmentCopy = segment;
  transitionSegmentCopy = transitionSegment;
  if (!objc_msgSend_count(listCopy, v10, v11, v12, v13))
  {
    v33 = 1;
    v231 = transitionSegmentCopy;
    goto LABEL_68;
  }

  v240 = segmentCopy;
  v18 = objc_msgSend_set(MEMORY[0x277CBEB58], v14, v15, v16, v17);
  v23 = objc_msgSend_set(MEMORY[0x277CBEB58], v19, v20, v21, v22);
  v32 = objc_msgSend_set(MEMORY[0x277CBEB58], v24, v25, v26, v27);
  v243 = 0;
  v33 = 1;
  v244 = v23;
  v245 = v18;
  do
  {
LABEL_3:
    objc_msgSend_removeAllObjects(v23, v28, v29, v30, v31);
    objc_msgSend_removeAllObjects(v18, v34, v35, v36, v37);
    if (!objc_msgSend_count(listCopy, v38, v39, v40, v41))
    {
      goto LABEL_27;
    }

    v46 = 0;
    while (1)
    {
      v47 = objc_msgSend_objectAtIndexedSubscript_(listCopy, v42, v46, v44, v45);
      v48 = (v46 + 1);
      if ((v46 + 1) < objc_msgSend_count(listCopy, v49, v50, v51, v52))
      {
        break;
      }

      if (v48 != objc_msgSend_count(listCopy, v53, v54, v55, v56))
      {
        goto LABEL_25;
      }

      v102 = objc_msgSend_segment(v47, v98, v99, v100, v101);
      v107 = objc_msgSend_type(v102, v103, v104, v105, v106);

      if (v107 == 3)
      {
        objc_msgSend_addObject_(v245, v108, v47, v109, v110);
      }

LABEL_22:

      v46 = v48;
      if (v48 >= objc_msgSend_count(listCopy, v167, v168, v169, v170))
      {
        goto LABEL_26;
      }
    }

    v246 = v46 + 1;
    v57 = objc_msgSend_objectAtIndexedSubscript_(listCopy, v53, (v46 + 1), v55, v56);
    v62 = objc_msgSend_segment(v47, v58, v59, v60, v61);
    v248 = v57;
    objc_msgSend_segment(v57, v63, v64, v65, v66);
    v68 = v67 = v47;
    v73 = objc_msgSend_name(v68, v69, v70, v71, v72);
    v78 = objc_msgSend_barsUsed(v67, v74, v75, v76, v77);
    v81 = objc_msgSend_transitionToSegmentNamed_fromBarIndex_(v62, v79, v73, v78 - 1, v80);

    v247 = v81;
    v86 = objc_msgSend_transitionSegmentName(v81, v82, v83, v84, v85);

    if (!v86)
    {
      v111 = objc_msgSend_segment(v67, v87, v88, v89, v90);
      v116 = objc_msgSend_type(v111, v112, v113, v114, v115);

      v47 = v67;
      v92 = v248;
      if (v116 != 3)
      {
LABEL_21:

        v48 = v246;
        goto LABEL_22;
      }

      if (v46)
      {
        v46 = objc_msgSend_objectAtIndexedSubscript_(listCopy, v117, (v46 - 1), v119, v120);
        objc_msgSend_segment(v46, v121, v122, v123, v124);
      }

      else
      {
        objc_msgSend_segment(0, v117, v118, v119, v120);
      }
      v125 = ;
      v130 = objc_msgSend_segment(v248, v126, v127, v128, v129);
      v135 = objc_msgSend_name(v130, v131, v132, v133, v134);
      v140 = objc_msgSend_barsUsed(v46, v136, v137, v138, v139);
      v143 = objc_msgSend_transitionToSegmentNamed_fromBarIndex_(v125, v141, v135, v140 - 1, v142);

      v148 = objc_msgSend_transitionSegmentName(v143, v144, v145, v146, v147);

      v47 = v67;
      if (!v148 || (objc_msgSend_transitionSegmentName(v143, v149, v150, v151, v152), v153 = objc_claimAutoreleasedReturnValue(), objc_msgSend_segment(v67, v154, v155, v156, v157), v158 = objc_claimAutoreleasedReturnValue(), objc_msgSend_name(v158, v159, v160, v161, v162), v163 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v153, v164, v163, v165, v166), v163, v47 = v67, v158, v153, (isEqualToString & 1) == 0))
      {
        objc_msgSend_addObject_(v245, v149, v47, v151, v152);
      }

      v92 = v248;
LABEL_20:

      goto LABEL_21;
    }

    v91 = objc_msgSend_barsUsed(v67, v87, v88, v89, v90);
    v92 = v248;
    v94 = objc_msgSend__transitionSegmentForSegmentInfo_toSegmentInfo_fromBarIndex_inSegmentList_(self, v93, v67, v248, v91 - 1, listCopy);
    v47 = v67;
    if (v94)
    {
      v46 = v94;
      objc_msgSend_addObject_(v244, v95, v94, v96, v97);
      goto LABEL_20;
    }

    v33 = 0;
LABEL_25:

LABEL_26:
    v23 = v244;
    v18 = v245;
LABEL_27:
    if (objc_msgSend_count(v23, v42, v43, v44, v45))
    {
      v260 = 0u;
      v261 = 0u;
      v258 = 0u;
      v259 = 0u;
      v175 = v23;
      v177 = objc_msgSend_countByEnumeratingWithState_objects_count_(v175, v176, &v258, v264, 16);
      if (v177)
      {
        v182 = v177;
        v183 = *v259;
        do
        {
          for (i = 0; i != v182; ++i)
          {
            if (*v259 != v183)
            {
              objc_enumerationMutation(v175);
            }

            v185 = objc_msgSend_copy(*(*(&v258 + 1) + 8 * i), v178, v179, v180, v181);
            v257 = 0x7FFFFFFFFFFFFFFFLL;
            v190 = objc_msgSend_sampleCount(v185, v186, v187, v188, v189);
            v192 = objc_msgSend__addSegment_withDuration_toAssemblyList_indexOfNewSegment_(self, v191, v185, v190, listCopy, &v257);
            v33 = v192;
            if (v192)
            {
              v196 = v257 == 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v196 = 1;
            }

            if (!v196)
            {
              v200 = objc_msgSend_objectAtIndex_(listCopy, v193, v257, v194, v195);
              if (v200)
              {
                objc_msgSend_addObject_(v32, v197, v200, v198, v199);
              }
            }
          }

          v182 = objc_msgSend_countByEnumeratingWithState_objects_count_(v175, v178, &v258, v264, 16);
        }

        while (v182);
        v23 = v244;
        v18 = v245;
      }
    }

    if (objc_msgSend_count(v18, v171, v172, v173, v174))
    {
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v205 = v18;
      v207 = objc_msgSend_countByEnumeratingWithState_objects_count_(v205, v206, &v253, v263, 16);
      if (v207)
      {
        v210 = v207;
        v211 = *v254;
        do
        {
          for (j = 0; j != v210; ++j)
          {
            if (*v254 != v211)
            {
              objc_enumerationMutation(v205);
            }

            v213 = *(*(&v253 + 1) + 8 * j);
            objc_msgSend__removeSegmentInfo_fromAssemblyList_(self, v208, v213, listCopy, v209);
            if (objc_msgSend_containsObject_(v32, v214, v213, v215, v216))
            {
              objc_msgSend_removeObject_(v32, v208, v213, v217, v209);
            }
          }

          v210 = objc_msgSend_countByEnumeratingWithState_objects_count_(v205, v208, &v253, v263, 16);
        }

        while (v210);
      }

      v18 = v245;
    }

    if (v243 == 10)
    {
      break;
    }

    ++v243;
    v218 = objc_msgSend_anyObject(v23, v201, v202, v203, v204);
    if (v218)
    {

      goto LABEL_3;
    }

    v223 = objc_msgSend_anyObject(v18, v219, v220, v221, v222);
  }

  while (v223);
  v224 = v18;
  v251 = 0u;
  v252 = 0u;
  v249 = 0u;
  v250 = 0u;
  v225 = v32;
  v227 = objc_msgSend_countByEnumeratingWithState_objects_count_(v225, v226, &v249, v262, 16);
  segmentCopy = v240;
  v231 = transitionSegmentCopy;
  if (v227)
  {
    v232 = v227;
    v233 = *v250;
    do
    {
      for (k = 0; k != v232; ++k)
      {
        if (*v250 != v233)
        {
          objc_enumerationMutation(v225);
        }

        v235 = objc_msgSend_indexOfObject_(listCopy, v228, *(*(&v249 + 1) + 8 * k), v229, v230);
        objc_msgSend_addIndex_(transitionSegmentCopy, v236, v235, v237, v238);
      }

      v232 = objc_msgSend_countByEnumeratingWithState_objects_count_(v225, v228, &v249, v262, 16);
    }

    while (v232);
  }

LABEL_68:
  return v33 & 1;
}

- (BOOL)_removeUnpermittedTransitionsInAssemblyList:(id)list final:(BOOL)final testingContext:(id)context removedIndexes:(id)indexes conflictList:(id)conflictList
{
  finalCopy = final;
  v471 = *MEMORY[0x277D85DE8];
  listCopy = list;
  contextCopy = context;
  indexesCopy = indexes;
  conflictListCopy = conflictList;
  v21 = objc_msgSend_array(MEMORY[0x277CBEB18], v13, v14, v15, v16);
  v22 = 0;
  v23 = 0;
  v458 = indexesCopy;
  v441 = v21;
  do
  {
    v440 = v23;
    if (v23)
    {
      break;
    }

    v442 = v22;
    v24 = objc_msgSend_count(listCopy, v17, v18, v19, v20);
    if (!v24)
    {
      goto LABEL_79;
    }

    v29 = v24;
    v30 = 0;
    v449 = v24 - 1;
    v31 = 1;
    v443 = v24;
    while (1)
    {
      v32 = objc_msgSend_objectAtIndexedSubscript_(listCopy, v25, v30, v27, v28);
      v37 = objc_msgSend_segment(v32, v33, v34, v35, v36);
      v42 = objc_msgSend_type(v37, v38, v39, v40, v41);

      if (v42 != 3)
      {
        break;
      }

LABEL_37:

      ++v30;
      ++v31;
      if (v30 == v29)
      {
        goto LABEL_79;
      }
    }

    v451 = v30;
    v453 = v31;
    if (v30 >= v449)
    {
      v55 = 0;
      v446 = 0;
      if (v30 != v449)
      {
LABEL_36:

        v31 = v453;
        goto LABEL_37;
      }

LABEL_24:
      v459 = v32;
      v108 = objc_msgSend__segmentsforType_(self, v43, 4, v44, v45);
      v465 = 0u;
      v466 = 0u;
      v467 = 0u;
      v468 = 0u;
      obja = v108;
      v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v109, &v465, v470, 16);
      if (v110)
      {
        v115 = v110;
        v116 = *v466;
LABEL_26:
        v117 = 0;
        while (1)
        {
          if (*v466 != v116)
          {
            objc_enumerationMutation(obja);
          }

          v118 = *(*(&v465 + 1) + 8 * v117);
          v119 = objc_msgSend_segment(v459, v111, v112, v113, v114);
          v124 = objc_msgSend_name(v118, v120, v121, v122, v123);
          v129 = objc_msgSend_barsUsed(v459, v125, v126, v127, v128);
          v132 = objc_msgSend_transitionToSegmentNamed_fromBarIndex_(v119, v130, v124, v129 - 1, v131);

          indexesCopy = v458;
          if (!v132)
          {
            break;
          }

          v137 = objc_msgSend_prevented(v132, v133, v134, v135, v136);

          if (!v137)
          {
            break;
          }

          if (v115 == ++v117)
          {
            v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v111, &v465, v470, 16);
            if (v115)
            {
              goto LABEL_26;
            }

            v444 = v459;
            v272 = objc_msgSend_removedConflicts(contextCopy, v268, v269, v270, v271);
            v273 = MEMORY[0x277CCACA8];
            v278 = objc_msgSend_segment(v444, v274, v275, v276, v277);
            v283 = objc_msgSend_name(v278, v279, v280, v281, v282);
            v287 = objc_msgSend_stringWithFormat_(v273, v284, @"supply an outro for %@", v285, v286, v283);
            objc_msgSend_addObject_(v272, v288, v287, v289, v290);

            v291 = MEMORY[0x277CCACA8];
            v32 = v459;
            indexesCopy = v458;
            v296 = objc_msgSend_segment(v444, v292, v293, v294, v295);
            v301 = objc_msgSend_name(v296, v297, v298, v299, v300);
            v305 = objc_msgSend_stringWithFormat_(v291, v302, @"supply an outro for %@", v303, v304, v301);
            objc_msgSend_addObject_(conflictListCopy, v306, v305, v307, v308);

            v309 = v444;
            if (v444)
            {
              goto LABEL_77;
            }

            goto LABEL_40;
          }
        }
      }

      v32 = v459;
      v29 = v443;
      v30 = v451;
      goto LABEL_36;
    }

    v46 = objc_msgSend_objectAtIndexedSubscript_(listCopy, v43, v30 + 1, v44, v45);
    obj = objc_msgSend_segment(v46, v47, v48, v49, v50);
    v54 = v453;
    while (1)
    {
      v55 = objc_msgSend_objectAtIndexedSubscript_(listCopy, v51, v54, v52, v53);
      v60 = objc_msgSend_segment(v55, v56, v57, v58, v59);
      v65 = objc_msgSend_type(v60, v61, v62, v63, v64);

      if (v65 == 2)
      {
        break;
      }

      if (v29 == ++v54)
      {
        v55 = v46;
        goto LABEL_14;
      }
    }

    v71 = objc_msgSend_segment(v55, v66, v67, v68, v69);

    obj = v71;
LABEL_14:
    v72 = objc_msgSend_segment(v32, v51, v70, v52, v53);
    v77 = objc_msgSend_sliceable(v72, v73, v74, v75, v76);

    if (v77)
    {
      v82 = objc_msgSend_barsUsed(v32, v78, v79, v80, v81) - 1;
    }

    else
    {
      v82 = 0;
    }

    v83 = objc_msgSend_lastObject(listCopy, v78, v79, v80, v81);

    v447 = objc_msgSend_type(obj, v84, v85, v86, v87);
    v92 = objc_msgSend_segment(v32, v88, v89, v90, v91);
    v97 = objc_msgSend_name(obj, v93, v94, v95, v96);
    v100 = objc_msgSend_transitionToSegmentNamed_fromBarIndex_(v92, v98, v97, v82, v99);

    if (v447 != 3 || v55 != v83)
    {
      v105 = objc_msgSend_prevented(v100, v101, v102, v103, v104);
      v106 = v105;
      if (v105)
      {
        v107 = v55;
      }

      else
      {
        v107 = 0;
      }

      v446 = v107;

      v30 = v451;
      if (v451 != v449 || (v106 & 1) != 0)
      {
        if (v106)
        {
          goto LABEL_40;
        }

        goto LABEL_36;
      }

      goto LABEL_24;
    }

    v446 = v55;
LABEL_40:
    v138 = v446;
    v142 = objc_msgSend__segmentsforType_(self, v139, 2, v140, v141);
    v146 = objc_msgSend_indexesOfObjectsPassingTest_(v142, v143, &unk_285EA0590, v144, v145);
    v150 = objc_msgSend_objectsAtIndexes_(v142, v147, v146, v148, v149);
    v452 = v146;
    v454 = v142;
    v450 = v150;
    if (objc_msgSend_count(v150, v151, v152, v153, v154) == 1)
    {
      v159 = objc_msgSend_firstObject(v150, v155, v156, v157, v158);
      v164 = objc_msgSend_name(v159, v160, v161, v162, v163);
      v169 = objc_msgSend_segment(v32, v165, v166, v167, v168);
      objc_msgSend_name(v169, v170, v171, v172, v173);
      v175 = v174 = v32;
      isEqualToString = objc_msgSend_isEqualToString_(v164, v176, v175, v177, v178);

      v32 = v174;
      indexesCopy = v458;
    }

    else
    {
      isEqualToString = 0;
    }

    objb = v138;
    v460 = v32;
    v179 = objc_msgSend_segment(v32, v155, v156, v157, v158);
    v184 = objc_msgSend_name(v179, v180, v181, v182, v183);
    v189 = objc_msgSend_segment(v138, v185, v186, v187, v188);
    v194 = objc_msgSend_name(v189, v190, v191, v192, v193);
    v198 = objc_msgSend_isEqualToString_(v184, v195, v194, v196, v197);

    v199 = v138;
    v32 = v460;
    if (!v198)
    {
      goto LABEL_70;
    }

    v204 = objc_msgSend_segment(v460, v200, v201, v202, v203);
    if (objc_msgSend_sliceable(v204, v205, v206, v207, v208))
    {
      v213 = objc_msgSend_barsUsed(v460, v209, v210, v211, v212);
      v218 = objc_msgSend_segment(v460, v214, v215, v216, v217);
      v223 = v213 != objc_msgSend_bars(v218, v219, v220, v221, v222);
    }

    else
    {
      v223 = 0;
    }

    v228 = objc_msgSend_segment(v199, v224, v225, v226, v227);
    if (objc_msgSend_sliceable(v228, v229, v230, v231, v232))
    {
      v237 = objc_msgSend_barsUsed(v199, v233, v234, v235, v236);
      v242 = objc_msgSend_segment(v199, v238, v239, v240, v241);
      v247 = objc_msgSend_bars(v242, v243, v244, v245, v246);

      v248 = v237 != v247;
      if (v237 != v247 && v223)
      {
        v250 = objc_msgSend_barsUsed(v460, v200, v201, v202, v203);
        v255 = objc_msgSend_barsUsed(v199, v251, v252, v253, v254);
        v260 = v460;
        v261 = v250 < v255;
        v32 = v460;
        indexesCopy = v458;
        if (v261)
        {
          goto LABEL_69;
        }

        v262 = objc_msgSend_barsUsed(v460, v256, v257, v258, v259);
        v267 = objc_msgSend_barsUsed(v199, v263, v264, v265, v266);
        v260 = v199;
        v261 = v262 <= v267;
        v32 = v460;
        if (!v261)
        {
          goto LABEL_69;
        }

        goto LABEL_70;
      }
    }

    else
    {

      v248 = 0;
    }

    v32 = v460;
    if (!v223 && !v248)
    {
      goto LABEL_70;
    }

    if (isEqualToString)
    {
      v260 = v223 ? v199 : v460;
    }

    else
    {
      if (v223)
      {
        v260 = v460;
      }

      else
      {
        v260 = v199;
      }

      if (!finalCopy)
      {
        v260 = v460;
      }
    }

LABEL_69:
    v309 = v260;
    if (!v309)
    {
LABEL_70:
      v313 = objc_msgSend_segment(v32, v200, v201, v202, v203);
      v318 = objc_msgSend_priority(v313, v314, v315, v316, v317);
      v323 = objc_msgSend_segment(v199, v319, v320, v321, v322);
      v261 = v318 <= objc_msgSend_priority(v323, v324, v325, v326, v327);
      v32 = v460;
      if (v261)
      {
        v328 = v460;
      }

      else
      {
        v328 = v199;
      }

      v309 = v328;
    }

    v329 = objc_msgSend_segment(v199, v200, v201, v202, v203);
    v334 = objc_msgSend_type(v329, v330, v331, v332, v333);

    if (v334 != 3)
    {
      v339 = objc_msgSend_removedConflicts(contextCopy, v335, v336, v337, v338);
      v340 = MEMORY[0x277CCACA8];
      v345 = objc_msgSend_segment(v32, v341, v342, v343, v344);
      v350 = objc_msgSend_name(v345, v346, v347, v348, v349);
      objc_msgSend_segment(v55, v351, v352, v353, v354);
      v355 = v445 = v309;
      v360 = objc_msgSend_name(v355, v356, v357, v358, v359);
      v364 = objc_msgSend_stringWithFormat_(v340, v361, @"%@ -> %@", v362, v363, v350, v360);
      objc_msgSend_addObject_(v339, v365, v364, v366, v367);

      v199 = objb;
      v368 = MEMORY[0x277CCACA8];
      v373 = objc_msgSend_segment(v460, v369, v370, v371, v372);
      v378 = objc_msgSend_name(v373, v374, v375, v376, v377);
      v383 = objc_msgSend_segment(v55, v379, v380, v381, v382);
      v388 = objc_msgSend_name(v383, v384, v385, v386, v387);
      v392 = objc_msgSend_stringWithFormat_(v368, v389, @"%@ -> %@", v390, v391, v378, v388);
      objc_msgSend_addObject_(conflictListCopy, v393, v392, v394, v395);

      v32 = v460;
      v309 = v445;
    }

    if (v309)
    {
LABEL_77:
      objc_msgSend_addObject_(v441, v310, v309, v311, v312);
    }

LABEL_79:
    v21 = v441;
    if (objc_msgSend_count(v441, v25, v26, v27, v28))
    {
      v463 = 0u;
      v464 = 0u;
      v461 = 0u;
      v462 = 0u;
      v400 = v441;
      v402 = objc_msgSend_countByEnumeratingWithState_objects_count_(v400, v401, &v461, v469, 16);
      if (v402)
      {
        v405 = v402;
        v406 = *v462;
        do
        {
          for (i = 0; i != v405; ++i)
          {
            if (*v462 != v406)
            {
              objc_enumerationMutation(v400);
            }

            v408 = *(*(&v461 + 1) + 8 * i);
            objc_msgSend__removeSegmentInfo_fromAssemblyList_(self, v403, v408, listCopy, v404);
            v409 = MEMORY[0x277CCABB0];
            v414 = objc_msgSend_segment(v408, v410, v411, v412, v413);
            v419 = objc_msgSend_nameIndex(v414, v415, v416, v417, v418);
            v424 = objc_msgSend_integerValue(v419, v420, v421, v422, v423);
            v428 = objc_msgSend_numberWithInteger_(v409, v425, v424, v426, v427);
            objc_msgSend_addObject_(indexesCopy, v429, v428, v430, v431);
          }

          v405 = objc_msgSend_countByEnumeratingWithState_objects_count_(v400, v403, &v461, v469, 16);
        }

        while (v405);
      }

      objc_msgSend_removeAllObjects(v400, v432, v433, v434, v435);
      v23 = 0;
      v21 = v441;
    }

    else
    {
      v23 = objc_msgSend_count(v441, v396, v397, v398, v399) == 0;
    }

    v22 = v442 + 1;
  }

  while (v442 != 100);
  objc_msgSend_addObject_(conflictListCopy, v17, @"-", v19, v20);

  return v440;
}

- (BOOL)_addBodySegmentsForAssemblyList:(id)list forDuration:(int64_t)duration unusedDuration:(int64_t *)unusedDuration testingContext:(id)context timedOut:(BOOL *)out
{
  v429 = *MEMORY[0x277D85DE8];
  listCopy = list;
  contextCopy = context;
  v15 = objc_msgSend__segmentsforType_(self, v12, 2, v13, v14);
  v382 = objc_msgSend_sortedArrayUsingComparator_(v15, v16, &unk_285EA05B0, v17, v18);
  updated = objc_msgSend_count(v382, v19, v20, v21, v22) != 0;
  v26 = objc_msgSend__sortFlexSegmentsShortestToLongest_(self, v23, v15, v24, v25);
  v381 = objc_msgSend_firstObject(v26, v27, v28, v29, v30);

  objc_msgSend_indexesOfObjectsPassingTest_(v15, v31, &unk_285EA05D0, v32, v33);
  v377 = v393 = v15;
  objc_msgSend_objectsAtIndexes_(v15, v34, v377, v35, v36);
  v422 = 0u;
  v423 = 0u;
  v424 = 0u;
  v37 = v425 = 0u;
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v422, v428, 16);
  selfCopy = self;
  obj = v37;
  if (v39)
  {
    v44 = v39;
    v45 = *v423;
    v46 = -1;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v423 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v48 = *(*(&v422 + 1) + 8 * i);
        if (objc_msgSend_bars(v48, v40, v41, v42, v43) >= 2)
        {
          v49 = 0;
          do
          {
            v50 = objc_msgSend_barDurationForBarIndex_(v48, v40, v49, v42, v43);
            if (v50 >= v46)
            {
              v55 = v46;
            }

            else
            {
              v55 = v50;
            }

            if (v46 == -1)
            {
              v46 = v50;
            }

            else
            {
              v46 = v55;
            }

            ++v49;
          }

          while (objc_msgSend_bars(v48, v51, v52, v53, v54) - 1 > v49);
        }
      }

      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v422, v428, 16);
    }

    while (v44);

    self = selfCopy;
    if (v46 != -1 && v46 < objc_msgSend_sampleCount(v381, v56, v57, v58, v59))
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v46 = objc_msgSend_sampleCount(v381, v56, v57, v58, v59);
LABEL_22:
  *out = 0;
  v404 = objc_msgSend_array(MEMORY[0x277CBEB18], v56, v57, v58, v59);
  v391 = objc_msgSend_array(MEMORY[0x277CBEB18], v60, v61, v62, v63);
  v383 = 0;
  v68 = 0;
  v380 = duration + 1;
  durationCopy = duration;
  durationCopy2 = duration;
  v392 = contextCopy;
  v390 = listCopy;
  do
  {
    v385 = v68;
    if ((updated & 1) == 0 || v46 > durationCopy)
    {
      goto LABEL_142;
    }

    context = objc_autoreleasePoolPush();
    if (objc_msgSend_count(v391, v70, v71, v72, v73))
    {
      v78 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v74, v391, v76, v77);
      objc_msgSend_addObject_(v404, v79, v78, v80, v81);
    }

    objc_msgSend_removeAllObjects(v391, v74, v75, v76, v77);
    v395 = objc_msgSend_lastObject(v404, v82, v83, v84, v85);
    v90 = objc_msgSend_count(v404, v86, v87, v88, v89);
    v94 = v90 - 2;
    if (v90 - 2 >= 0)
    {
      v95 = v90 - 1;
      v406 = durationCopy;
      while (1)
      {
        v96 = objc_msgSend_objectAtIndexedSubscript_(v404, v91, v94, v92, v93);
        if (objc_msgSend_isEqualToArray_(v96, v97, v395, v98, v99))
        {
          v104 = objc_msgSend_array(MEMORY[0x277CBEB18], v100, v101, v102, v103);
          for (j = objc_msgSend_count(v404, v105, v106, v107, v108) - 1; j > v94; --j)
          {
            v114 = objc_msgSend_objectAtIndexedSubscript_(v404, v109, j, v111, v112);
            objc_msgSend_addObject_(v104, v115, v114, v116, v117);
          }

          v122 = v94 - objc_msgSend_count(v104, v109, v110, v111, v112) + 1;
          if (v122 >= 0)
          {
            v126 = objc_msgSend_array(MEMORY[0x277CBEB18], v118, v119, v120, v121);
            v127 = v95;
            if (v94 >= v122)
            {
              do
              {
                v128 = objc_msgSend_objectAtIndexedSubscript_(v404, v123, --v127, v124, v125);
                objc_msgSend_addObject_(v126, v129, v128, v130, v131);
              }

              while (v127 > v122);
            }

            isEqualToArray = objc_msgSend_isEqualToArray_(v126, v123, v104, v124, v125);

            listCopy = v390;
            if (isEqualToArray)
            {
              ++v383;

              contextCopy = v392;
              self = selfCopy;
              durationCopy = v406;
              break;
            }
          }

          contextCopy = v392;
          durationCopy = v406;
        }

        --v95;
        v266 = v94-- <= 0;
        if (v266)
        {
          self = selfCopy;
          break;
        }
      }
    }

    v420 = 0u;
    v421 = 0u;
    v418 = 0u;
    v419 = 0u;
    v133 = v382;
    v403 = objc_msgSend_countByEnumeratingWithState_objects_count_(v133, v134, &v418, v427, 16);
    if (!v403)
    {
      v389 = 0;
      updated = 1;
      goto LABEL_138;
    }

    v389 = 0;
    v400 = *v419;
    updated = 1;
    v405 = v133;
    do
    {
      v139 = 0;
      do
      {
        if (*v419 != v400)
        {
          objc_enumerationMutation(v133);
        }

        v409 = v139;
        v140 = *(*(&v418 + 1) + 8 * v139);
        v141 = objc_msgSend_sampleCount(v140, v135, v136, v137, v138);
        v146 = objc_msgSend_name(v140, v142, v143, v144, v145);
        v150 = objc_msgSend_containsString_(v146, v147, @"drm_", v148, v149);

        if (v150)
        {
          v398 = v141;
          v155 = contextCopy;
          v407 = durationCopy;
          v156 = objc_msgSend_lastObject(listCopy, v151, v152, v153, v154);
          v161 = objc_msgSend_lastObject(v393, v157, v158, v159, v160);
          v401 = objc_msgSend_firstObject(v393, v162, v163, v164, v165);
          v166 = v156;
          v171 = objc_msgSend_segment(v156, v167, v168, v169, v170);
          v176 = objc_msgSend_nameSuffix(v171, v172, v173, v174, v175);
          v181 = objc_msgSend_nameSuffix(v140, v177, v178, v179, v180);
          v184 = objc_msgSend_compare_options_(v176, v182, v181, 1, v183);

          if (v184 == -1)
          {
            v219 = 0;
            v133 = v405;
            durationCopy = v407;
            contextCopy = v155;
          }

          else
          {
            durationCopy = v407;
            contextCopy = v155;
            if (objc_msgSend_count(listCopy, v185, v186, v187, v188))
            {
              v141 = v398;
              if (v184)
              {
                if (v184 == 1)
                {
                  v388 = objc_msgSend_segment(v166, v189, v190, v191, v192);
                  v197 = objc_msgSend_name(v388, v193, v194, v195, v196);
                  v386 = objc_msgSend_name(v161, v198, v199, v200, v201);
                  v387 = v197;
                  if (objc_msgSend_isEqualToString_(v197, v202, v386, v203, v204))
                  {
                    v209 = objc_msgSend_name(v140, v205, v206, v207, v208);
                    v214 = objc_msgSend_name(v401, v210, v211, v212, v213);
                    isEqualToString = objc_msgSend_isEqualToString_(v209, v215, v214, v216, v217);

                    v219 = isEqualToString ^ 1;
                    durationCopy = v407;
                  }

                  else
                  {
                    v219 = 1;
                  }

                  v133 = v405;

                  goto LABEL_63;
                }

                v219 = 0;
              }

              else
              {
                v219 = 1;
              }

              v133 = v405;
LABEL_63:

              goto LABEL_64;
            }

            v219 = 0;
            v133 = v405;
          }

          v141 = v398;
          goto LABEL_63;
        }

        v219 = 0;
        v133 = v405;
LABEL_64:
        if (v141 <= durationCopy && (v219 & 1) == 0)
        {
          v221 = objc_msgSend_sampleCount(v140, v151, v152, v153, v154);
LABEL_67:
          v416 = 0;
          v417 = 0x7FFFFFFFFFFFFFFFLL;
          self = selfCopy;
          v222 = durationCopy;
          v223 = objc_msgSend__addSegment_withDuration_toAssemblyList_timeRemaining_reusedSegment_indexofNewSegment_(selfCopy, v220, v140, v221, listCopy, durationCopy, &v416, &v417);
          v224 = v416;
          if (!v223)
          {
            v228 = 0;
            v262 = v409;
            goto LABEL_125;
          }

          v408 = v224;
          v228 = objc_msgSend_objectAtIndex_(listCopy, v225, v417, v226, v227);
          v415[0] = MEMORY[0x277D85DD0];
          v415[1] = 3221225472;
          v415[2] = sub_24B807E94;
          v415[3] = &unk_27900F498;
          v415[4] = v140;
          v232 = objc_msgSend_indexOfObjectPassingTest_(v133, v229, v415, v230, v231);
          if (v232 == 0x7FFFFFFFFFFFFFFFLL)
          {

            updated = 0;
LABEL_137:

            durationCopy = v222;
            goto LABEL_138;
          }

          v237 = v232;
          if (v232 < objc_msgSend_count(v133, v233, v234, v235, v236) - 1)
          {
            objc_msgSend_objectAtIndexedSubscript_(v133, v238, v237 + 1, v239, v240);
          }

          else
          {
            objc_msgSend_objectAtIndexedSubscript_(v133, v238, 0, v239, v240);
          }
          v241 = ;
          v246 = v222 - objc_msgSend_sampleCount(v140, v242, v243, v244, v245);
          v402 = v241;
          if (v246 <= objc_msgSend_sampleCount(v241, v247, v248, v249, v250))
          {
            v251 = objc_opt_new();
            v274 = objc_msgSend__removeUnpermittedTransitionsInAssemblyList_final_testingContext_removedIndexes_conflictList_(selfCopy, v273, listCopy, 0, contextCopy, v251, v391);
            if (objc_msgSend_count(v251, v275, v276, v277, v278))
            {
              v283 = objc_msgSend_allObjects(v251, v279, v280, v281, v282);
              objc_msgSend__sequenceBodySegmentList_forIndexes_(selfCopy, v284, listCopy, v283, v285);
            }

            if (objc_msgSend_indexOfObject_(listCopy, v279, v228, v281, v282) != 0x7FFFFFFFFFFFFFFFLL)
            {

              if (v274)
              {
                goto LABEL_73;
              }

              v262 = v409;
              v261 = v402;
              goto LABEL_124;
            }

            v290 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v286, v287, v288, v289);
            objc_msgSend__updateTransitionBodySegmentsForAssemblyList_usingNewSegment_indexOfNewTransitionSegment_(selfCopy, v291, listCopy, 0, v290);
            v222 = durationCopy2 - objc_msgSend__sampleDurationOfClipPlaylist_(selfCopy, v292, listCopy, v293, v294);
            if (v222 < 0)
            {
              v299 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v295, v296, v297, v298);
              Index = objc_msgSend_firstIndex(v290, v300, v301, v302, v303);
              if (Index != 0x7FFFFFFFFFFFFFFFLL)
              {
                for (k = Index; k != 0x7FFFFFFFFFFFFFFFLL; k = objc_msgSend_indexGreaterThanIndex_(v290, v310, k, v311, v312))
                {
                  if (k + 1 <= (objc_msgSend_count(listCopy, v305, v306, v307, v308) - 1))
                  {
                    objc_msgSend_addIndex_(v299, v310, k + 1, v311, v312);
                  }
                }
              }

              objc_msgSend_addIndexes_(v299, v305, v290, v307, v308);
              objc_msgSend_removeObjectsAtIndexes_(listCopy, v313, v299, v314, v315);
              self = selfCopy;
              v222 = durationCopy2 - objc_msgSend__sampleDurationOfClipPlaylist_(selfCopy, v316, listCopy, v317, v318);
            }

LABEL_121:
          }

          else
          {
LABEL_73:
            v251 = objc_opt_new();
            if (objc_msgSend__updateTransitionBodySegmentsForAssemblyList_usingNewSegment_indexOfNewTransitionSegment_(selfCopy, v252, listCopy, v140, v251))
            {
              v399 = v251;
              v260 = durationCopy2 - objc_msgSend__sampleDurationOfClipPlaylist_(selfCopy, v253, listCopy, v254, v255);
              if (v260 >= 0)
              {
                self = selfCopy;
LABEL_76:
                v261 = v402;
                v222 = durationCopy2 - objc_msgSend__sampleDurationOfClipPlaylist_(self, v256, listCopy, v258, v259);
                v389 = 1;
                updated = 1;
                v262 = v409;
                v251 = v399;
LABEL_123:

LABEL_124:
                v133 = v405;
                v224 = v408;
LABEL_125:

                goto LABEL_126;
              }

              if (objc_msgSend_sliceable(v140, v256, v257, v258, v259) && objc_msgSend_barsUsed(v228, v319, v320, v321, v322) >= 2)
              {
                v323 = objc_msgSend_barsUsed(v228, v319, v320, v321, v322);
                while (1)
                {
                  v266 = v323-- <= 1;
                  if (v266)
                  {
                    break;
                  }

                  v324 = contextCopy;
                  v325 = 0;
                  v326 = 0;
                  do
                  {
                    v327 = objc_msgSend_segment(v228, v319, v320, v321, v322);
                    v326 += objc_msgSend_barDurationForBarIndex_(v327, v328, v325, v329, v330);

                    ++v325;
                  }

                  while (v323 != v325);
                  contextCopy = v324;
                  if (v260 - v326 + objc_msgSend_duration(v228, v319, v320, v321, v322) >= 1)
                  {
                    objc_msgSend_setBarsUsed_(v228, v319, v323, v321, v322);
                    objc_msgSend_setDuration_(v228, v331, v326, v332, v333);
                    self = selfCopy;
                    v46 = v380 - objc_msgSend__sampleDurationOfClipPlaylist_(selfCopy, v334, listCopy, v335, v336);
                    goto LABEL_76;
                  }
                }
              }

              v251 = v399;
              if (objc_msgSend_count(v399, v319, v320, v321, v322))
              {
                v340 = objc_msgSend_objectsAtIndexes_(listCopy, v337, v399, v338, v339);
                objc_msgSend__removeSegmentInfo_fromAssemblyList_(selfCopy, v341, v228, listCopy, v342);
                v413 = 0u;
                v414 = 0u;
                v411 = 0u;
                v412 = 0u;
                v290 = v340;
                v344 = objc_msgSend_countByEnumeratingWithState_objects_count_(v290, v343, &v411, v426, 16);
                if (v344)
                {
                  v347 = v344;
                  v348 = *v412;
                  do
                  {
                    for (m = 0; m != v347; ++m)
                    {
                      if (*v412 != v348)
                      {
                        objc_enumerationMutation(v290);
                      }

                      objc_msgSend__removeSegmentInfo_fromAssemblyList_(selfCopy, v345, *(*(&v411 + 1) + 8 * m), listCopy, v346);
                    }

                    v347 = objc_msgSend_countByEnumeratingWithState_objects_count_(v290, v345, &v411, v426, 16);
                  }

                  while (v347);
                }

                self = selfCopy;
                objc_msgSend__updateTransitionBodySegmentsForAssemblyList_usingNewSegment_indexOfNewTransitionSegment_(selfCopy, v350, listCopy, 0, 0);
                v222 = durationCopy2 - objc_msgSend__sampleDurationOfClipPlaylist_(selfCopy, v351, listCopy, v352, v353);
                goto LABEL_121;
              }

              self = selfCopy;
              objc_msgSend__removeSegmentInfo_fromAssemblyList_(selfCopy, v337, v228, listCopy, v339);
            }
          }

          v262 = v409;
          v261 = v402;
          goto LABEL_123;
        }

        if (objc_msgSend_sliceable(v140, v151, v152, v153, v154))
        {
          v265 = v219 == 1;
        }

        else
        {
          v265 = 1;
        }

        v266 = v265 || durationCopy < 1;
        if (!v266)
        {
          v267 = 0;
          v268 = 0;
          v269 = 0;
          while (objc_msgSend_bars(v140, v220, v263, v221, v264) > v267)
          {
            v272 = objc_msgSend_barDurationForBarIndex_(v140, v220, v267, v270, v271);
            v221 = v272 + v268;
            if (v272 + v268 > durationCopy)
            {
              break;
            }

            ++v267;
            v269 = 1;
            v268 += v272;
            if (v221 >= durationCopy)
            {
              goto LABEL_67;
            }
          }

          v221 = v268;
          if (v269)
          {
            goto LABEL_67;
          }
        }

        v222 = durationCopy;
        v228 = 0;
        v262 = v409;
        self = selfCopy;
LABEL_126:
        if (v222 < v46)
        {
          objc_msgSend__removeUnpermittedTransitionsInAssemblyList_final_testingContext_removedIndexes_(self, v220, listCopy, 1, contextCopy, 0);
          updated = objc_msgSend__updateTransitionBodySegmentsForAssemblyList_usingNewSegment_indexOfNewTransitionSegment_(self, v354, listCopy, 0, 0);
          v360 = durationCopy2 - objc_msgSend__sampleDurationOfClipPlaylist_(self, v355, listCopy, v356, v357);
          if (v360 < 0)
          {
            objc_msgSend__removeSegmentInfo_fromAssemblyList_(self, v358, v228, listCopy, v359);
            objc_msgSend__updateTransitionBodySegmentsForAssemblyList_usingNewSegment_indexOfNewTransitionSegment_(self, v361, listCopy, 0, 0);
            objc_msgSend__removeUnpermittedTransitionsInAssemblyList_final_testingContext_removedIndexes_(self, v362, listCopy, 1, contextCopy, 0);
            v360 = durationCopy2 - objc_msgSend__sampleDurationOfClipPlaylist_(self, v363, listCopy, v364, v365);
          }

          v222 = v360;
          if (v360 < v46)
          {
            goto LABEL_137;
          }
        }

        v139 = v262 + 1;
        durationCopy = v222;
      }

      while (v139 != v403);
      v366 = objc_msgSend_countByEnumeratingWithState_objects_count_(v133, v135, &v418, v427, 16);
      v403 = v366;
    }

    while (v366);
LABEL_138:

    objc_autoreleasePoolPop(context);
    duration = durationCopy2;
    if (v383 > 1)
    {
      break;
    }

    v68 = v385 + 1;
  }

  while ((v389 & 1) != 0);
  if (v383 >= 2)
  {
    *out = 1;
    objc_msgSend__removeUnpermittedTransitionsInAssemblyList_final_testingContext_removedIndexes_(self, v64, listCopy, 1, contextCopy, 0);
    objc_msgSend__updateTransitionBodySegmentsForAssemblyList_usingNewSegment_indexOfNewTransitionSegment_(self, v367, listCopy, 0, 0);
  }

LABEL_142:
  if (objc_msgSend_maxPassesToFit(contextCopy, v64, v65, v66, v67) >= v385)
  {
    v372 = objc_msgSend_maxPassesToFit(contextCopy, v368, v369, v370, v371);
  }

  else
  {
    v372 = v385;
  }

  objc_msgSend_setMaxPassesToFit_(contextCopy, v368, v372, v370, v371);
  *unusedDuration = duration - objc_msgSend__sampleDurationOfClipPlaylist_(self, v373, listCopy, v374, v375);

  return updated & 1;
}

- (BOOL)_addIntroSegmentsToAssemblyList:(id)list forDuration:(int64_t)duration testingContext:(id)context
{
  v48 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v11 = objc_msgSend__segmentsforType_(self, v8, 1, v9, v10);
  objc_msgSend_sortedArrayUsingComparator_(v11, v12, &unk_285EA05F0, v13, v14);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v15 = v46 = 0u;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v43, v47, 16);
  if (v17)
  {
    v22 = v17;
    v41 = v11;
    v23 = *v44;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v44 != v23)
        {
          objc_enumerationMutation(v15);
        }

        v25 = *(*(&v43 + 1) + 8 * i);
        if (objc_msgSend_sampleCount(v25, v18, v19, v20, v21) <= duration)
        {
          v26 = objc_msgSend_firstObject(listCopy, v18, v19, v20, v21);
          v31 = objc_msgSend_segment(v26, v27, v28, v29, v30);

          if (!v31 || (objc_msgSend_canTransitionFromSegment_toSegment_fromBarIndex_checkIfPrevented_(FlexSegment, v32, v25, v31, 0, 1) & 1) != 0)
          {
            v33 = v25;

            if (v33)
            {
              v42 = 0x7FFFFFFFFFFFFFFFLL;
              v38 = objc_msgSend_sampleCount(v33, v34, v35, v36, v37);
              objc_msgSend__addSegment_withDuration_toAssemblyList_indexOfNewSegment_(self, v39, v33, v38, listCopy, &v42);
            }

            goto LABEL_15;
          }
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v43, v47, 16);
      if (v22)
      {
        continue;
      }

      break;
    }

    v33 = 0;
LABEL_15:
    v11 = v41;
  }

  else
  {

    v33 = 0;
  }

  return 1;
}

- (BOOL)_addOutroSegmentsToAssemblyList:(id)list forDuration:(int64_t)duration allowTrim:(BOOL)trim testingContext:(id)context
{
  trimCopy = trim;
  v115 = *MEMORY[0x277D85DE8];
  listCopy = list;
  contextCopy = context;
  v13 = objc_msgSend__segmentsforType_(self, v10, 4, v11, v12);
  if (objc_msgSend_count(v13, v14, v15, v16, v17))
  {
    if (objc_msgSend_count(v13, v18, v19, v20, v21) == 1)
    {
      v26 = objc_msgSend_firstObject(v13, v22, v23, v24, v25);
      v31 = v26;
      if (trimCopy || objc_msgSend_sampleCount(v26, v27, v28, v29, v30) <= duration)
      {
        v32 = objc_msgSend_lastObject(v13, v27, v28, v29, v30);
        v33 = 1;
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }
    }

    else
    {
      if (objc_msgSend_count(listCopy, v22, v23, v24, v25))
      {
        v111[0] = 0;
        v111[1] = v111;
        v111[2] = 0x3032000000;
        v111[3] = sub_24B80429C;
        v111[4] = sub_24B8042AC;
        v112 = objc_msgSend_lastObject(listCopy, v35, v36, v37, v38);
        v110[0] = MEMORY[0x277D85DD0];
        v110[1] = 3221225472;
        v110[2] = sub_24B808634;
        v110[3] = &unk_27900F3E0;
        v110[4] = v111;
        v42 = objc_msgSend_indexesOfObjectsPassingTest_(v13, v39, v110, v40, v41);
        v46 = objc_msgSend_objectsAtIndexes_(v13, v43, v42, v44, v45);
        v99 = v42;
        if (objc_msgSend_count(v46, v47, v48, v49, v50) == 1)
        {
          v32 = objc_msgSend_firstObject(v46, v51, v52, v53, v54);
        }

        else
        {
          v98 = v46;
          objc_msgSend__sortFlexSegmentsShortestToLongest_(self, v51, v46, v53, v54);
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v79 = v107 = 0u;
          v32 = 0;
          v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v80, &v106, v114, 16);
          if (v85)
          {
            v86 = *v107;
            while (2)
            {
              v87 = 0;
              v88 = v32;
              do
              {
                if (*v107 != v86)
                {
                  objc_enumerationMutation(v79);
                }

                v89 = *(*(&v106 + 1) + 8 * v87);
                if (objc_msgSend_sampleCount(v89, v81, v82, v83, v84) > duration)
                {
                  if (!trimCopy || v88 && objc_msgSend_sampleCount(v88, v90, v91, v92, v93) >= duration)
                  {
                    v32 = v88;
                  }

                  else
                  {
                    v32 = v89;
                  }

                  goto LABEL_41;
                }

                v32 = v89;

                ++v87;
                v88 = v32;
              }

              while (v85 != v87);
              v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v81, &v106, v114, 16);
              if (v85)
              {
                continue;
              }

              break;
            }
          }

LABEL_41:

          v46 = v98;
        }

        _Block_object_dispose(v111, 8);
      }

      else
      {
        v59 = objc_msgSend__segmentsforType_(self, v35, 4, v37, v38);
        v63 = objc_msgSend__sortFlexSegmentsShortestToLongest_(self, v60, v59, v61, v62);

        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v64 = v63;
        v32 = 0;
        v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, &v102, v113, 16);
        if (v70)
        {
          v71 = *v103;
          while (2)
          {
            v72 = 0;
            v73 = v32;
            do
            {
              if (*v103 != v71)
              {
                objc_enumerationMutation(v64);
              }

              v74 = *(*(&v102 + 1) + 8 * v72);
              if (objc_msgSend_sampleCount(v74, v66, v67, v68, v69) > duration)
              {
                if (!trimCopy || v73 && objc_msgSend_sampleCount(v73, v75, v76, v77, v78) >= duration)
                {
                  v32 = v73;
                }

                else
                {
                  v32 = v74;
                }

                goto LABEL_39;
              }

              v32 = v74;

              ++v72;
              v73 = v32;
            }

            while (v70 != v72);
            v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v66, &v102, v113, 16);
            if (v70)
            {
              continue;
            }

            break;
          }
        }

LABEL_39:
      }

      v33 = 1;
    }

    v34 = v32 != 0;
    if (v33 && v32)
    {
      v94 = objc_msgSend_sampleCount(v32, v55, v56, v57, v58);
      if (v94 >= duration)
      {
        durationCopy = duration;
      }

      else
      {
        durationCopy = v94;
      }

      v111[0] = 0x7FFFFFFFFFFFFFFFLL;
      LOBYTE(v33) = objc_msgSend__addSegment_withDuration_toAssemblyList_indexOfNewSegment_(self, v95, v32, durationCopy, listCopy, v111);
      v34 = 1;
    }
  }

  else
  {
    v34 = 0;
    v32 = 0;
    LOBYTE(v33) = 0;
  }

  return v34 & v33;
}

- (BOOL)_rebuildBodySegmentsInAssemblyList:(id)list forDuration:(int64_t)duration unusedDuration:(int64_t *)unusedDuration testingContext:(id)context
{
  contextCopy = context;
  listCopy = list;
  objc_msgSend_removeAllObjects(listCopy, v12, v13, v14, v15);
  v18 = 0;
  LOBYTE(unusedDuration) = objc_msgSend__addBodySegmentsForAssemblyList_forDuration_unusedDuration_testingContext_timedOut_(self, v16, listCopy, duration, unusedDuration, contextCopy, &v18);

  return unusedDuration;
}

- (BOOL)_buildIntroAndOutroOnlySegmentAssemblyList:(id)list forDuration:(int64_t)duration testingContext:(id)context
{
  listCopy = list;
  contextCopy = context;
  v14 = 0;
  if (objc_msgSend__addOutroSegmentsToAssemblyList_forDuration_allowTrim_testingContext_(self, v10, listCopy, duration, 0, contextCopy))
  {
    v15 = objc_msgSend__sampleDurationOfClipPlaylist_(self, v11, listCopy, v12, v13);
    v14 = objc_msgSend__addIntroSegmentsToAssemblyList_forDuration_testingContext_(self, v16, listCopy, duration - v15, contextCopy);
  }

  return v14;
}

+ (int64_t)_findMaxLengthInSamplesToReserveForOutroSegment:(id)segment withOptions:(id)options
{
  segmentCopy = segment;
  optionsCopy = options;
  v10 = objc_msgSend_objectForKey_(optionsCopy, v7, @"OutroCanBeShortened", v8, v9);
  v15 = objc_msgSend_BOOLValue(v10, v11, v12, v13, v14);

  if (v15)
  {
    v19 = objc_msgSend_objectForKey_(optionsCopy, v16, @"MaxOutroLengthToReserve", v17, v18);
    v24 = v19;
    if (v19 && (objc_msgSend_floatValue(v19, v20, v21, v22, v23), v29 >= 0.0))
    {
      v30 = (v29 * objc_msgSend_sampleRate(segmentCopy, v25, v26, v27, v28));
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

+ (int64_t)_findMinLengthInSamplesForEarlyFadeOutForOutroSegment:(id)segment withOptions:(id)options
{
  segmentCopy = segment;
  optionsCopy = options;
  v11 = objc_msgSend_sampleRate(segmentCopy, v7, v8, v9, v10);
  v15 = objc_msgSend_objectForKey_(optionsCopy, v12, @"MinLengthForEarlyFade", v13, v14);

  if (v15)
  {
    objc_msgSend_floatValue(v15, v16, v17, v18, v19);
    if (v24 > 0.0)
    {
      v11 = (v24 * objc_msgSend_sampleRate(segmentCopy, v20, v21, v22, v23));
    }
  }

  return v11;
}

+ (int64_t)_findEarlyFadeStartOffsetInSamplesForOutroSegment:(id)segment withOptions:(id)options
{
  segmentCopy = segment;
  optionsCopy = options;
  v10 = objc_msgSend_objectForKey_(optionsCopy, v7, @"IgnoreEarlyFadeMarker", v8, v9);
  v15 = objc_msgSend_BOOLValue(v10, v11, v12, v13, v14);

  if ((v15 & 1) == 0)
  {
    v20 = objc_msgSend_markers(segmentCopy, v16, v17, v18, v19);
    v24 = objc_msgSend_objectForKey_(v20, v21, @"OUTRO_EARLY_FADE", v22, v23);

    if (v24)
    {
      v29 = objc_msgSend_integerValue(v24, v25, v26, v27, v28);
      if ((v29 & 0x8000000000000000) == 0)
      {
        v34 = v29;
        if (v29 < objc_msgSend_sampleCount(segmentCopy, v30, v31, v32, v33))
        {
          goto LABEL_19;
        }
      }
    }
  }

  v35 = objc_msgSend_objectForKey_(optionsCopy, v16, @"IgnoreStingerMarkerForShortening", v18, v19);
  v40 = objc_msgSend_BOOLValue(v35, v36, v37, v38, v39);

  if (v40)
  {
    v45 = 0;
  }

  else
  {
    v46 = objc_msgSend_markers(segmentCopy, v41, v42, v43, v44);
    v50 = objc_msgSend_objectForKey_(v46, v47, @"OUTRO_STINGER", v48, v49);

    if (!v50 || (v55 = objc_msgSend_integerValue(v50, v51, v52, v53, v54), v55 < 0))
    {
      v45 = 0;
    }

    else
    {
      v45 = v55;
      if (v55 >= objc_msgSend_sampleCount(segmentCopy, v56, v57, v58, v59))
      {
        v45 = 0;
      }
    }
  }

  v60 = objc_msgSend_sampleRate(segmentCopy, v41, v42, v43, v44) / 2;
  v64 = objc_msgSend_objectForKey_(optionsCopy, v61, @"DefaultEarlyFadeStartFromStinger", v62, v63);
  v24 = v64;
  if (v64)
  {
    objc_msgSend_floatValue(v64, v65, v66, v67, v68);
    if (v73 >= 0.0)
    {
      v60 = (v73 * objc_msgSend_sampleRate(segmentCopy, v69, v70, v71, v72));
    }
  }

  v34 = v60 + v45;
LABEL_19:

  return v34;
}

+ (int64_t)_durationInSamplesToReserveForOutroSegment:(id)segment withOptions:(id)options
{
  segmentCopy = segment;
  optionsCopy = options;
  v11 = objc_msgSend_sampleCount(segmentCopy, v7, v8, v9, v10);
  v15 = objc_msgSend_objectForKey_(optionsCopy, v12, @"OutroCanBeShortened", v13, v14);
  v20 = objc_msgSend_BOOLValue(v15, v16, v17, v18, v19);

  if (v20)
  {
    MaxLengthInSamplesToReserveForOutroSegment_withOptions = objc_msgSend__findMaxLengthInSamplesToReserveForOutroSegment_withOptions_(FlexSong, v21, segmentCopy, optionsCopy, v22);
    if (v11 >= MaxLengthInSamplesToReserveForOutroSegment_withOptions)
    {
      v26 = MaxLengthInSamplesToReserveForOutroSegment_withOptions;
    }

    else
    {
      v26 = v11;
    }

    if (MaxLengthInSamplesToReserveForOutroSegment_withOptions <= 0)
    {
      EarlyFadeStartOffsetInSamplesForOutroSegment_withOptions = objc_msgSend__findEarlyFadeStartOffsetInSamplesForOutroSegment_withOptions_(FlexSong, v24, segmentCopy, optionsCopy, v25);
      MinLengthInSamplesForEarlyFadeOutForOutroSegment_withOptions = objc_msgSend__findMinLengthInSamplesForEarlyFadeOutForOutroSegment_withOptions_(FlexSong, v28, segmentCopy, optionsCopy, v29);
      if (MinLengthInSamplesForEarlyFadeOutForOutroSegment_withOptions + EarlyFadeStartOffsetInSamplesForOutroSegment_withOptions < v11)
      {
        v11 = MinLengthInSamplesForEarlyFadeOutForOutroSegment_withOptions + EarlyFadeStartOffsetInSamplesForOutroSegment_withOptions;
      }
    }

    else
    {
      v11 = v26;
    }
  }

  return v11;
}

- (BOOL)_buildSegmentAssemblyList:(id)list forDuration:(int64_t)duration withOptions:(id)options testingContext:(id)context
{
  v144 = *MEMORY[0x277D85DE8];
  listCopy = list;
  optionsCopy = options;
  contextCopy = context;
  v13 = 9600 * (duration / 9600);
  if (v13 >= objc_msgSend__minOutroDuration(self, v14, v15, v16, v17))
  {
    objc_msgSend_naturalDuration(self, v18, v19, v20, v21);
    if (v142[0] == duration)
    {
      v26 = objc_msgSend__naturalDurationAssemblyList(self, v22, v23, v24, v25);
      objc_msgSend_addObjectsFromArray_(listCopy, v27, v26, v28, v29);

      goto LABEL_4;
    }

    v35 = objc_msgSend_objectForKey_(optionsCopy, v22, @"OutroCanBeShortened", v24, v25);
    v40 = objc_msgSend_BOOLValue(v35, v36, v37, v38, v39);

    v135 = 9600 * (duration / 9600);
    v134 = v40;
    if (v40)
    {
      v133 = contextCopy;
      v45 = objc_msgSend__segmentsforType_(self, v41, 4, v43, v44);
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v138, v143, 16);
      if (v47)
      {
        v50 = v47;
        v51 = 0;
        v52 = *v139;
        do
        {
          for (i = 0; i != v50; ++i)
          {
            if (*v139 != v52)
            {
              objc_enumerationMutation(v45);
            }

            v54 = objc_msgSend__durationInSamplesToReserveForOutroSegment_withOptions_(FlexSong, v48, *(*(&v138 + 1) + 8 * i), optionsCopy, v49);
            if (v54 > v51)
            {
              v51 = v54;
            }
          }

          v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v48, &v138, v143, 16);
        }

        while (v50);
      }

      else
      {
        v51 = 0;
      }

      contextCopy = v133;
      v13 = 9600 * (duration / 9600);
    }

    else
    {
      v51 = objc_msgSend__maxOutroDuration(self, v41, v42, v43, v44);
    }

    v58 = v13 - v51;
    v137 = 0;
    v136 = 0;
    if (v13 - v51 < 1)
    {
      v60 = 0;
      v61 = 0;
      v59 = 0;
    }

    else
    {
      v59 = objc_msgSend__addBodySegmentsForAssemblyList_forDuration_unusedDuration_testingContext_timedOut_(self, v55, listCopy, v58, &v137, contextCopy, &v136);
      v60 = v137;
      v61 = v136;
    }

    if ((v61 & 1) != 0 || v60 > 192000)
    {
      v62 = -v51 - 48000 + v135;
      v63 = 6;
      do
      {
        objc_msgSend_removeAllObjects(listCopy, v55, v56, v58, v57);
        v59 = objc_msgSend__addBodySegmentsForAssemblyList_forDuration_unusedDuration_testingContext_timedOut_(self, v64, listCopy, v62, &v137, contextCopy, &v136);
        if (!--v63)
        {
          break;
        }

        v62 -= 48000;
      }

      while ((v136 & 1) != 0 || v137 > 192000);
    }

    if (objc_msgSend_count(listCopy, v55, v56, v58, v57))
    {
      if (!v59)
      {
        goto LABEL_33;
      }

      v68 = objc_msgSend__sampleDurationOfClipPlaylist_(self, v65, listCopy, v66, v67);
      if ((objc_msgSend__addOutroSegmentsToAssemblyList_forDuration_allowTrim_testingContext_(self, v69, listCopy, v135 - v68, v134, contextCopy) & 1) == 0)
      {
        goto LABEL_33;
      }

      v73 = objc_msgSend__sampleDurationOfClipPlaylist_(self, v70, listCopy, v71, v72);
      if (!objc_msgSend__addIntroSegmentsToAssemblyList_forDuration_testingContext_(self, v74, listCopy, v135 - v73, contextCopy))
      {
        goto LABEL_33;
      }
    }

    else if ((objc_msgSend__buildIntroAndOutroOnlySegmentAssemblyList_forDuration_testingContext_(self, v65, listCopy, v135, contextCopy) & 1) == 0)
    {
LABEL_33:
      v34 = 0;
      goto LABEL_44;
    }

    v78 = objc_msgSend__sampleDurationOfClipPlaylist_(self, v75, listCopy, v76, v77);
    v32 = duration <= v78;
    v33 = duration - v78;
    if (!v32)
    {
      if (!v134)
      {
        goto LABEL_5;
      }

      v81 = objc_msgSend_outroInfoForClipPlaylist_(FlexSong, v31, listCopy, v79, v80);
      v86 = v81;
      if (!v81 || (v87 = objc_msgSend_offset(v81, v82, v83, v84, v85), v92 = contextCopy, v93 = objc_msgSend_duration(v86, v88, v89, v90, v91) + v87, objc_msgSend_segment(v86, v94, v95, v96, v97), v98 = objc_claimAutoreleasedReturnValue(), v103 = objc_msgSend_sampleCount(v98, v99, v100, v101, v102), v98, v32 = v93 < v103, contextCopy = v92, !v32))
      {

        goto LABEL_5;
      }

      v108 = objc_msgSend_segment(v86, v104, v105, v106, v107);
      v113 = objc_msgSend_sampleCount(v108, v109, v110, v111, v112);
      v118 = objc_msgSend_offset(v86, v114, v115, v116, v117);
      v123 = v113 - (v118 + objc_msgSend_duration(v86, v119, v120, v121, v122));

      if (v123 >= v33)
      {
        v123 = v33;
      }

      v128 = objc_msgSend_duration(v86, v124, v125, v126, v127);
      objc_msgSend_setDuration_(v86, v129, v128 + v123, v130, v131);
      v33 -= v123;
      contextCopy = v92;

      if (v33 >= 1)
      {
        goto LABEL_5;
      }
    }

LABEL_43:
    v34 = 1;
    goto LABEL_44;
  }

LABEL_4:
  v30 = objc_msgSend__sampleDurationOfClipPlaylist_(self, v18, listCopy, v20, v21);
  v32 = duration <= v30;
  v33 = duration - v30;
  if (v32)
  {
    goto LABEL_43;
  }

LABEL_5:
  v137 = 0x7FFFFFFFFFFFFFFFLL;
  v34 = objc_msgSend__addSegment_withDuration_toAssemblyList_indexOfNewSegment_(self, v31, 0, v33, listCopy, &v137);
LABEL_44:

  return v34;
}

- (id)_fullSongLoopedClipPlaylistForDuration:(id *)duration withOptions:(id)options testingContext:(id)context
{
  v136[2] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  contextCopy = context;
  objc_msgSend_setSequencingLongSong_(contextCopy, v9, 1, v10, v11);
  v16 = objc_msgSend_sampleRate(self, v12, v13, v14, v15);
  time = *duration;
  CMTimeConvertScale(&v134, &time, v16, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  value = v134.value;
  v18 = objc_opt_new();
  v19 = objc_opt_new();
  v20 = objc_opt_new();
  memset(&time, 0, sizeof(time));
  objc_msgSend_naturalDuration(self, v21, v22, v23, v24);
  v129 = value;
  v25 = time.value;
  v26 = value / time.value;
  v27 = vcvtmd_s64_f64(v26);
  v28 = (v26 - v27) * 1.5;
  v135[0] = @"IgnoreStingerMarkerForShortening";
  v135[1] = @"IgnoreEarlyFadeMarker";
  v136[0] = MEMORY[0x277CBEC38];
  v136[1] = MEMORY[0x277CBEC38];
  v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v136, v135, 2);
  v35 = 0;
  v130 = v20;
  if (v27 >= 2)
  {
    v128 = v18;
    v35 = 0;
    v36 = v27 - 1;
    do
    {
      v37 = v35;
      v42 = v34;
      if (v36 == 1 && v28 < 0.25)
      {
        v43 = optionsCopy;

        v42 = v43;
      }

      v44 = objc_msgSend_sampleRate(self, v38, v39, v40, v41);
      CMTimeMake(&v132, v25, v44);
      v35 = objc_msgSend__clipPlaylistForDuration_withOptions_testingContext_(self, v45, &v132, v42, contextCopy);

      objc_msgSend_addObjectsFromArray_(v19, v46, v35, v47, v48);
      --v36;
    }

    while (v36);
    v52 = objc_msgSend_indexesOfObjectsPassingTest_(v19, v49, &unk_285EA0610, v50, v51);
    v56 = objc_msgSend_objectsAtIndexes_(v19, v53, v52, v54, v55);
    objc_msgSend_removeObjectsAtIndexes_(v19, v57, v52, v58, v59);
    objc_msgSend__sampleDurationOfClipPlaylist_(self, v60, v56, v61, v62);

    v18 = v128;
    v20 = v130;
  }

  if (v28 < 0.25)
  {
    v102 = v129 - objc_msgSend__sampleDurationOfClipPlaylist_(self, v30, v19, v32, v33);
    v107 = objc_msgSend_sampleRate(self, v103, v104, v105, v106);
    CMTimeMake(&v132, v102, v107);
    v101 = objc_msgSend__clipPlaylistForDuration_withOptions_testingContext_(self, v108, &v132, v34, contextCopy);

    objc_msgSend_addObjectsFromArray_(v20, v109, v101, v110, v111);
    v72 = objc_msgSend_indexesOfObjectsPassingTest_(v20, v112, &unk_285EA0630, v113, v114);
    v97 = objc_msgSend_objectsAtIndexes_(v20, v115, v72, v116, v117);
    objc_msgSend_removeObjectsAtIndexes_(v20, v118, v72, v119, v120);
    objc_msgSend_addObjectsFromArray_(v18, v121, v20, v122, v123);
    objc_msgSend_addObjectsFromArray_(v18, v124, v19, v125, v126);
    v76 = v97;
    v95 = optionsCopy;
  }

  else
  {
    v63 = objc_msgSend_sampleRate(self, v30, v31, v32, v33);
    CMTimeMake(&v132, v25, v63);
    v65 = objc_msgSend__clipPlaylistForDuration_withOptions_testingContext_(self, v64, &v132, v34, contextCopy);

    objc_msgSend_addObjectsFromArray_(v18, v66, v65, v67, v68);
    v72 = objc_msgSend_indexesOfObjectsPassingTest_(v18, v69, &unk_285EA0650, v70, v71);
    v76 = objc_msgSend_objectsAtIndexes_(v18, v73, v72, v74, v75);
    objc_msgSend_removeObjectsAtIndexes_(v18, v77, v72, v78, v79);
    objc_msgSend__sampleDurationOfClipPlaylist_(self, v80, v76, v81, v82);
    objc_msgSend_addObjectsFromArray_(v18, v83, v19, v84, v85);
    v89 = v129 - objc_msgSend__sampleDurationOfClipPlaylist_(self, v86, v18, v87, v88);
    v94 = objc_msgSend_sampleRate(self, v90, v91, v92, v93);
    CMTimeMake(&v132, v89, v94);
    v95 = optionsCopy;
    v97 = objc_msgSend__clipPlaylistForDuration_withOptions_testingContext_(self, v96, &v132, optionsCopy, contextCopy);

    v20 = v130;
    v101 = v97;
  }

  objc_msgSend_addObjectsFromArray_(v18, v98, v97, v99, v100);

  return v18;
}

- (id)renditionForDuration:(id *)duration withOptions:(id)options testingContext:(id)context
{
  v102 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  contextCopy = context;
  v10 = FlexLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    time = *duration;
    Seconds = CMTimeGetSeconds(&time);
    LODWORD(time.value) = 134217984;
    *(&time.value + 4) = Seconds;
    _os_log_impl(&dword_24B7E5000, v10, OS_LOG_TYPE_DEFAULT, "flex: Requesting legacy format rendition for duration %.2f", &time, 0xCu);
  }

  v12 = optionsCopy;
  v17 = objc_msgSend_customOptions(self, v13, v14, v15, v16);

  v22 = v12;
  if (v17)
  {
    durationCopy = duration;
    v91 = contextCopy;
    v92 = objc_msgSend_mutableCopy(v12, v18, v19, v20, v21);
    selfCopy = self;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v27 = objc_msgSend_customOptions(self, v23, v24, v25, v26);
    v32 = objc_msgSend_allKeys(v27, v28, v29, v30, v31);

    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v96, v100, 16);
    if (v34)
    {
      v38 = v34;
      v39 = *v97;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v97 != v39)
          {
            objc_enumerationMutation(v32);
          }

          if (objc_msgSend_isEqualToString_(*(*(&v96 + 1) + 8 * i), v35, @"OutroCanBeShortened", v36, v37))
          {
            objc_msgSend_objectForKeyedSubscript_(v12, v35, @"OutroCanBeShortened", v36, v37);
            v42 = v41 = v12;
            v47 = objc_msgSend_BOOLValue(v42, v43, v44, v45, v46);

            v52 = objc_msgSend_customOptions(selfCopy, v48, v49, v50, v51);
            v56 = objc_msgSend_objectForKeyedSubscript_(v52, v53, @"OutroCanBeShortened", v54, v55);
            v61 = objc_msgSend_BOOLValue(v56, v57, v58, v59, v60);

            v12 = v41;
            v65 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v62, v47 & v61, v63, v64);
            objc_msgSend_setObject_forKey_(v92, v66, v65, @"OutroCanBeShortened", v67);
          }
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v96, v100, 16);
      }

      while (v38);
    }

    v22 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v68, v92, v69, v70);

    duration = durationCopy;
    contextCopy = v91;
    self = selfCopy;
  }

  memset(&time, 0, sizeof(time));
  objc_msgSend_naturalDuration(self, v18, v19, v20, v21);
  CMTimeMultiplyByFloat64(&time, &time1, 1.5);
  time1 = *duration;
  time2 = time;
  if (CMTimeCompare(&time1, &time2) < 0 || (objc_msgSend_objectForKeyedSubscript_(v22, v71, @"LoopSongForLongDurations", v72, v73), v74 = objc_claimAutoreleasedReturnValue(), v79 = objc_msgSend_BOOLValue(v74, v75, v76, v77, v78), v74, !v79))
  {
    time1 = *duration;
    v80 = objc_msgSend__clipPlaylistForDuration_withOptions_testingContext_(self, v71, &time1, v22, contextCopy);
  }

  else
  {
    time1 = *duration;
    v80 = objc_msgSend__fullSongLoopedClipPlaylistForDuration_withOptions_testingContext_(self, v71, &time1, v22, contextCopy);
  }

  v81 = v80;
  if (v80)
  {
    v82 = [FlexLegacySongRendition alloc];
    v84 = objc_msgSend_initWithSong_segments_withOptions_(v82, v83, self, v81, v22);
    objc_msgSend__destroyCache(self, v85, v86, v87, v88);
  }

  else
  {
    v84 = 0;
  }

  return v84;
}

- (id)_clipPlaylistForDuration:(id *)duration withOptions:(id)options testingContext:(id)context
{
  optionsCopy = options;
  contextCopy = context;
  if ((duration->var2 & 1) != 0 && (time1 = *duration, time2 = **&MEMORY[0x277CC08F0], CMTimeCompare(&time1, &time2)))
  {
    v14 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11, v12, v13);
    v19 = objc_msgSend_sampleRate(self, v15, v16, v17, v18);
    time1 = *duration;
    CMTimeConvertScale(&v22, &time1, v19, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    objc_msgSend__buildSegmentAssemblyList_forDuration_withOptions_testingContext_(self, v20, v14, v22.value, optionsCopy, contextCopy);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_validateStructureForRendition:(id)rendition failureReason:(id *)reason
{
  v408 = *MEMORY[0x277D85DE8];
  renditionCopy = rendition;
  v11 = objc_msgSend_segments(renditionCopy, v7, v8, v9, v10);
  v16 = objc_msgSend_firstObject(v11, v12, v13, v14, v15);
  v383 = v16 != 0;

  if (!v16)
  {
    *reason = @"empty playlist!";
  }

  reasonCopy = reason;
  v21 = objc_msgSend_duration(renditionCopy, v17, v18, v19, v20);
  objc_msgSend_naturalDuration(self, v22, v23, v24, v25);
  v386 = renditionCopy;
  selfCopy = self;
  if (v21 == v404)
  {
    v382 = v16;
    v26 = objc_opt_new();
    obj = objc_msgSend__segmentsforType_(self, v27, 2, v28, v29);
    objc_msgSend_addObjectsFromArray_(v26, v30, obj, v31, v32);
    v402 = 0u;
    v403 = 0u;
    v400 = 0u;
    v401 = 0u;
    v37 = objc_msgSend__naturalDurationAssemblyList(self, v33, v34, v35, v36);
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v400, v407, 16);
    if (v39)
    {
      v44 = v39;
      v45 = *v401;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v401 != v45)
          {
            objc_enumerationMutation(v37);
          }

          v47 = *(*(&v400 + 1) + 8 * i);
          v48 = objc_msgSend_segment(v47, v40, v41, v42, v43);
          v53 = objc_msgSend_type(v48, v49, v50, v51, v52);

          if (v53 == 2)
          {
            v399[0] = MEMORY[0x277D85DD0];
            v399[1] = 3221225472;
            v399[2] = sub_24B80A7A0;
            v399[3] = &unk_27900F498;
            v399[4] = v47;
            v54 = objc_msgSend_indexOfObjectPassingTest_(v26, v40, v399, v42, v43);
            if (v54 == 0x7FFFFFFFFFFFFFFFLL)
            {

LABEL_41:
              v142 = 0;
              v141 = v386;
              *reasonCopy = @"invalid default duration playlist. there's a bug in the sequencer";
              goto LABEL_86;
            }

            objc_msgSend_removeObjectAtIndex_(v26, v55, v54, v56, v57);
          }
        }

        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v400, v407, 16);
      }

      while (v44);
    }

    if (!v382 || objc_msgSend_count(v26, v58, v59, v60, v61))
    {
      goto LABEL_41;
    }
  }

  v26 = objc_opt_new();
  v395 = 0u;
  v396 = 0u;
  v397 = 0u;
  v398 = 0u;
  v66 = objc_msgSend_segments(renditionCopy, v62, v63, v64, v65);
  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, &v395, v406, 16);
  if (!v68)
  {
    goto LABEL_34;
  }

  v73 = v68;
  v74 = *v396;
  do
  {
    v75 = 0;
    do
    {
      if (*v396 != v74)
      {
        objc_enumerationMutation(v66);
      }

      v76 = *(*(&v395 + 1) + 8 * v75);
      v77 = objc_msgSend_segment(v76, v69, v70, v71, v72);
      if (objc_msgSend_type(v77, v78, v79, v80, v81) == 1)
      {
        goto LABEL_27;
      }

      v86 = objc_msgSend_segment(v76, v82, v83, v84, v85);
      if (objc_msgSend_type(v86, v87, v88, v89, v90) == 2)
      {
        goto LABEL_26;
      }

      v95 = objc_msgSend_segment(v76, v91, v92, v93, v94);
      if (objc_msgSend_type(v95, v96, v97, v98, v99) == 4)
      {

LABEL_26:
LABEL_27:

LABEL_28:
        objc_msgSend_addObject_(v26, v69, v76, v71, v72);
        goto LABEL_29;
      }

      v104 = objc_msgSend_segment(v76, v100, v101, v102, v103);

      if (!v104)
      {
        goto LABEL_28;
      }

LABEL_29:
      ++v75;
    }

    while (v73 != v75);
    v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v69, &v395, v406, 16);
    v73 = v105;
  }

  while (v105);
LABEL_34:

  if (objc_msgSend_count(v26, v106, v107, v108, v109) == 1)
  {
    v114 = objc_msgSend_lastObject(v26, v110, v111, v112, v113);
    v119 = objc_msgSend_segment(v114, v115, v116, v117, v118);

    if (!v119)
    {
      v143 = objc_msgSend_lastObject(v26, v110, v111, v112, v113);
      v148 = objc_msgSend_duration(v143, v144, v145, v146, v147);
      if (v148 > objc_msgSend__minOutroDuration(selfCopy, v149, v150, v151, v152))
      {
        v157 = MEMORY[0x277CCACA8];
        v158 = objc_msgSend_sampleRate(selfCopy, v153, v154, v155, v156);
        objc_msgSend_stringWithFormat_(v157, v159, @"excessive silence: %fs - check allowed transitions, priorities and which segments are sliceable.", v160, v161, (v148 / v158));
        *reasonCopy = v383 = 0;
      }

      goto LABEL_45;
    }
  }

  if (objc_msgSend_count(v26, v110, v111, v112, v113) != 1 || (objc_msgSend_lastObject(v26, v120, v121, v122, v123), v124 = objc_claimAutoreleasedReturnValue(), objc_msgSend_segment(v124, v125, v126, v127, v128), v129 = objc_claimAutoreleasedReturnValue(), v129, v124, !v129))
  {
LABEL_45:
    v141 = v386;
    goto LABEL_46;
  }

  v130 = objc_msgSend_lastObject(v26, v120, v121, v122, v123);
  v135 = objc_msgSend_segment(v130, v131, v132, v133, v134);
  v140 = objc_msgSend_type(v135, v136, v137, v138, v139);

  v141 = v386;
  if (v140 == 4)
  {
    v142 = 1;
    goto LABEL_87;
  }

LABEL_46:
  v393 = 0u;
  v394 = 0u;
  v391 = 0u;
  v392 = 0u;
  obj = objc_msgSend_segments(v141, v120, v121, v122, v123);
  v163 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v162, &v391, v405, 16);
  v168 = @"No outro segments\n";
  v169 = @"No intro segments\n";
  if (!v163)
  {
    v173 = 0;
    v174 = 0;
    v199 = 0;
    goto LABEL_70;
  }

  v170 = v163;
  v171 = 0;
  v172 = 0;
  v173 = 0;
  v174 = 0;
  v175 = 0;
  v176 = *v392;
  while (2)
  {
    v177 = 0;
    while (2)
    {
      if (*v392 != v176)
      {
        objc_enumerationMutation(obj);
      }

      v178 = objc_msgSend_segment(*(*(&v391 + 1) + 8 * v177), v164, v165, v166, v167);
      if (objc_msgSend_type(v178, v179, v180, v181, v182) == 1)
      {
        v173 = v171 == 0;
        if ((objc_msgSend_sliceable(v178, v183, v184, v185, v186) & 1) == 0)
        {
          ++v171;
          goto LABEL_62;
        }

        v235 = @"Intro Segments cannot be marked as sliceable";
LABEL_84:
        v142 = 0;
        v141 = v386;
        *reasonCopy = v235;
        goto LABEL_85;
      }

      if (objc_msgSend_type(v178, v183, v184, v185, v186) == 4)
      {
        v174 = v172 == 0;
        if (objc_msgSend_sliceable(v178, v187, v188, v189, v190))
        {
          v235 = @"Outro Segments cannot be marked as sliceable";
          goto LABEL_84;
        }

        ++v172;
      }

      else if (objc_msgSend_type(v178, v187, v188, v189, v190) == 3)
      {
        if (objc_msgSend_sliceable(v178, v191, v192, v193, v194))
        {
          v235 = @"Transitions cannot be marked as sliceable";
          goto LABEL_84;
        }
      }

      else if (objc_msgSend_type(v178, v191, v192, v193, v194) == 2)
      {
        objc_msgSend_sliceable(v178, v195, v196, v197, v198);
        v175 = 1;
      }

LABEL_62:

      if (v170 != ++v177)
      {
        continue;
      }

      break;
    }

    v170 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v164, &v391, v405, 16);
    if (v170)
    {
      continue;
    }

    break;
  }

  v169 = @"No intro segments\n";
  if (v171)
  {
    v169 = @"Too many intros added\n";
  }

  v168 = @"No outro segments\n";
  if (v172)
  {
    v168 = @"Too many outros added\n";
  }

  v199 = v175;
  v141 = v386;
LABEL_70:

  if (!v383)
  {
    v142 = 0;
    goto LABEL_87;
  }

  v204 = objc_msgSend_duration(v141, v200, v201, v202, v203);
  obj = objc_msgSend_lastObject(v26, v205, v206, v207, v208);
  v213 = objc_msgSend_segment(obj, v209, v210, v211, v212);

  if (!v213)
  {
    v204 -= objc_msgSend_duration(obj, v214, v215, v216, v217);
  }

  if (v204 < objc_msgSend__minOutroDuration(selfCopy, v214, v215, v216, v217))
  {
    if (v173)
    {
      v178 = objc_msgSend_stringByAppendingString_(&stru_285EA09B0, v218, @"intro added when we should have silence\n", v220, v221);
      goto LABEL_90;
    }

    if ((v174 | v199))
    {
      v178 = &stru_285EA09B0;
LABEL_90:
      if (v174)
      {
        v237 = objc_msgSend_stringByAppendingString_(v178, v218, @"outro added when we should have silence\n", v220, v221);

        v178 = v237;
      }

      if (v199)
      {
        v238 = objc_msgSend_stringByAppendingString_(v178, v218, @"body added when we should have silence\n", v220, v221);
        goto LABEL_106;
      }
    }

    else
    {
      v178 = objc_msgSend_firstObject(v26, v218, v219, v220, v221);
      v287 = objc_msgSend_segment(v178, v283, v284, v285, v286);
      if (v287)
      {

        v238 = &stru_285EA09B0;
LABEL_106:

        v178 = v238;
      }

      else
      {
        v361 = objc_msgSend_count(v26, v288, v289, v290, v291);

        if (v361 == 1)
        {
          v142 = 1;
          goto LABEL_86;
        }

        v178 = &stru_285EA09B0;
      }
    }

    v292 = objc_msgSend_firstObject(v26, v218, v219, v220, v221);
    v297 = objc_msgSend_segment(v292, v293, v294, v295, v296);

    if (v297)
    {
      v302 = objc_msgSend_stringByAppendingString_(v178, v298, @"unexpected first object - should be nil segment\n", v300, v301);

      v178 = v302;
    }

    if (objc_msgSend_count(v26, v298, v299, v300, v301) != 1)
    {
      objc_msgSend_stringByAppendingString_(v178, v303, @"too many playlist items - there's a bug in the playback sequencing algorithm \n", v304, v305);
      goto LABEL_111;
    }

LABEL_112:
    v307 = v178;
    v142 = 0;
    *reasonCopy = v178;
    goto LABEL_85;
  }

  if (objc_msgSend_count(v26, v218, v219, v220, v221) == 2)
  {
    v226 = objc_msgSend_lastObject(v26, v222, v223, v224, v225);
    v231 = objc_msgSend_segment(v226, v227, v228, v229, v230);

    if (v231)
    {
      v142 = (v199 | v173) & v174;
      if ((v142 & 1) == 0)
      {
        if (v173)
        {
          v178 = &stru_285EA09B0;
        }

        else
        {
          v178 = objc_msgSend_stringByAppendingString_(&stru_285EA09B0, v232, @"intro expected but not found\n", v233, v234);
        }

        if (!v174)
        {
          v362 = objc_msgSend_stringByAppendingString_(v178, v232, @"outro expected but not found\n", v233, v234);

          v178 = v362;
        }

        if ((v199 & 1) == 0)
        {
          goto LABEL_112;
        }

        objc_msgSend_stringByAppendingString_(v178, v232, @"body added when we should have only intro and outro segments\n", v233, v234);
        v306 = LABEL_111:;

        v178 = v306;
        goto LABEL_112;
      }
    }

    else
    {
      v142 = v174 & (v199 ^ 1);
      if ((v142 & 1) == 0)
      {
        if (v174)
        {
          v178 = &stru_285EA09B0;
        }

        else
        {
          v178 = objc_msgSend_stringByAppendingString_(&stru_285EA09B0, v232, @"outro expected but not found\n", v233, v234);
        }

        if ((v199 & 1) == 0)
        {
          goto LABEL_112;
        }

        objc_msgSend_stringByAppendingString_(v178, v232, @"body added when we should have only outro and silent segments\n", v233, v234);
        goto LABEL_111;
      }
    }

LABEL_158:
    v178 = &stru_285EA09B0;
    goto LABEL_85;
  }

  if (objc_msgSend_count(v26, v222, v223, v224, v225) == 3)
  {
    if ((v199 | v173) & v174)
    {
      v243 = objc_msgSend_count(v26, v239, v240, v241, v242);
      if (v243 - 1 >= 1)
      {
        v247 = v243;
        v178 = &stru_285EA09B0;
        while (1)
        {
          v248 = objc_msgSend_objectAtIndexedSubscript_(v26, v244, --v247, v245, v246);
          v253 = objc_msgSend_segment(v248, v249, v250, v251, v252);

          if (v253)
          {
            v258 = objc_msgSend_segment(v248, v254, v255, v256, v257);
            v263 = objc_msgSend_type(v258, v259, v260, v261, v262);

            if (v263 == 4)
            {
              goto LABEL_156;
            }

            v268 = objc_msgSend_segment(v248, v264, v265, v266, v267);
            if (objc_msgSend_type(v268, v269, v270, v271, v272) == 2)
            {
              goto LABEL_159;
            }

            v277 = objc_msgSend_segment(v248, v273, v274, v275, v276);
            v282 = objc_msgSend_type(v277, v278, v279, v280, v281);

            if (v282 == 1)
            {
              goto LABEL_160;
            }
          }

          v142 = 1;
          if (v247 <= 1)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_157;
    }

    if (v173)
    {
      v178 = &stru_285EA09B0;
    }

    else
    {
      v178 = objc_msgSend_stringByAppendingString_(&stru_285EA09B0, v239, @"intro expected but not found\n", v241, v242);
    }

    if (!v174)
    {
      v363 = objc_msgSend_stringByAppendingString_(v178, v239, @"outro expected but not found\n", v241, v242);

      v178 = v363;
    }

    if (v199)
    {
      objc_msgSend_stringByAppendingString_(v178, v239, @"body added when we should have only intro and outro segments\n", v241, v242);
      goto LABEL_148;
    }

    goto LABEL_149;
  }

  v308 = objc_msgSend_options(v141, v239, v240, v241, v242);
  v312 = objc_msgSend_objectForKey_(v308, v309, @"LoopSongForLongDurations", v310, v311);
  v317 = objc_msgSend_BOOLValue(v312, v313, v314, v315, v316);

  if (!v317 || (memset(&v390, 0, sizeof(v390)), objc_msgSend_naturalDuration(selfCopy, v239, v240, v241, v242), CMTimeMultiplyByFloat64(&v390, &time, 1.5), v322 = objc_msgSend_duration(v141, v318, v319, v320, v321), CMTimeMake(&time, v322, 48000), time2 = v390, CMTimeCompare(&time, &time2) < 0))
  {
    if ((v174 & v199 & 1) == 0)
    {
      if (v173)
      {
        v178 = &stru_285EA09B0;
      }

      else
      {
        v178 = objc_msgSend_stringByAppendingString_(&stru_285EA09B0, v239, v169, v241, v242);
      }

      if (!v174)
      {
        v364 = objc_msgSend_stringByAppendingString_(v178, v239, v168, v241, v242);

        v178 = v364;
      }

      if ((v199 & 1) == 0)
      {
        objc_msgSend_stringByAppendingString_(v178, v239, @"expected a body segment\n", v241, v242);
        v365 = LABEL_148:;

        v178 = v365;
      }

LABEL_149:
      if (objc_msgSend_count(v26, v239, v240, v241, v242) != 1)
      {
        goto LABEL_112;
      }

      v370 = objc_msgSend_firstObject(v26, v366, v367, v368, v369);
      v375 = objc_msgSend_segment(v370, v371, v372, v373, v374);

      if (v375)
      {
        goto LABEL_112;
      }

      objc_msgSend_stringByAppendingString_(v178, v376, @"There is a bug in the smart song or playback sequencing algorithm!\n", v377, v378);
      goto LABEL_111;
    }
  }

  v323 = objc_msgSend_count(v26, v239, v240, v241, v242);
  if (v323 - 1 < 1)
  {
LABEL_157:
    v142 = 1;
    goto LABEL_158;
  }

  v327 = v323;
  v178 = &stru_285EA09B0;
  while (2)
  {
    v248 = objc_msgSend_objectAtIndexedSubscript_(v26, v324, --v327, v325, v326);
    v332 = objc_msgSend_segment(v248, v328, v329, v330, v331);

    if (!v332)
    {
LABEL_127:

      v142 = 1;
      if (v327 <= 1)
      {
        goto LABEL_85;
      }

      continue;
    }

    break;
  }

  v337 = objc_msgSend_segment(v248, v333, v334, v335, v336);
  v342 = objc_msgSend_type(v337, v338, v339, v340, v341);

  if (v342 == 4)
  {
LABEL_156:

    goto LABEL_157;
  }

  v268 = objc_msgSend_segment(v248, v343, v344, v345, v346);
  if (objc_msgSend_type(v268, v347, v348, v349, v350) != 2)
  {
    v355 = objc_msgSend_segment(v248, v351, v352, v353, v354);
    v360 = objc_msgSend_type(v355, v356, v357, v358, v359);

    if (v360 == 1)
    {
      goto LABEL_160;
    }

    goto LABEL_127;
  }

LABEL_159:

LABEL_160:
  v178 = &stru_285EA09B0;
  objc_msgSend_stringByAppendingString_(&stru_285EA09B0, v379, @"Outro segment is not after all Intro & Body segments", v380, v381);
  *reasonCopy = v142 = 0;
LABEL_85:

LABEL_86:
LABEL_87:

  return v142 & 1;
}

+ (id)outroInfoForClipPlaylist:(id)playlist
{
  playlistCopy = playlist;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_24B80429C;
  v13 = sub_24B8042AC;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_24B80A924;
  v8[3] = &unk_27900F4C0;
  v8[4] = &v9;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(playlistCopy, v4, 2, v8, v5);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (BOOL)_validateTransitionsInRendition:(id)rendition failureReason:(id *)reason
{
  renditionCopy = rendition;
  v9 = objc_msgSend_segments(renditionCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_count(v9, v10, v11, v12, v13);

  if (v14 >= 3)
  {
    v20 = objc_msgSend_segments(renditionCopy, v15, v16, v17, v18);
    v408 = objc_msgSend_outroInfoForClipPlaylist_(FlexSong, v21, v20, v22, v23);

    v28 = 0;
    v415 = v14 - 1;
    v29 = v14 - 2;
    v30 = 1;
    v411 = 1;
    v409 = v14;
    while (1)
    {
      v31 = objc_msgSend_segments(renditionCopy, v24, v25, v26, v27);
      v35 = objc_msgSend_objectAtIndexedSubscript_(v31, v32, v28, v33, v34);

      v40 = objc_msgSend_segment(v35, v36, v37, v38, v39);
      v45 = v40;
      if (!v40)
      {
        goto LABEL_25;
      }

      if (objc_msgSend_type(v40, v41, v42, v43, v44) != 2)
      {
        break;
      }

      if (v28 >= v415)
      {
        v61 = 0;
        objc_msgSend_name(0, v46, v47, v48, v49);
      }

      else
      {
        v419 = v45;
        v50 = v35;
        v51 = v30;
        while (1)
        {
          v52 = objc_msgSend_segments(renditionCopy, v46, v47, v48, v49);
          v56 = objc_msgSend_objectAtIndexedSubscript_(v52, v53, v51, v54, v55);

          v61 = objc_msgSend_segment(v56, v57, v58, v59, v60);
          if (objc_msgSend_type(v61, v62, v63, v64, v65) == 2 || objc_msgSend_type(v61, v66, v67, v68, v69) == 4)
          {
            break;
          }

          if (v14 == ++v51)
          {
            v61 = 0;
            goto LABEL_34;
          }
        }

LABEL_34:
        v35 = v50;
        v45 = v419;
        objc_msgSend_name(v61, v46, v47, v48, v49);
      }
      v151 = ;
      v418 = v35;
      v156 = objc_msgSend_barsUsed(v35, v152, v153, v154, v155);
      v159 = objc_msgSend_transitionToSegmentNamed_fromBarIndex_(v45, v157, v151, v156 - 1, v158);

      v416 = v159;
      v164 = objc_msgSend_prevented(v159, v160, v161, v162, v163);
      if (v61)
      {
        if (v164)
        {
          v169 = objc_msgSend_nameIndex(v45, v165, v166, v167, v168);
          v174 = objc_msgSend_nameIndex(v61, v170, v171, v172, v173);
          isEqualToString = objc_msgSend_isEqualToString_(v169, v175, v174, v176, v177);

          if (isEqualToString)
          {
            v179 = objc_msgSend_nameSuffix(v45, v165, v166, v167, v168);
            if (v179)
            {
              v180 = v179;
              v181 = objc_msgSend_nameSuffix(v61, v165, v166, v167, v168);

              if (v181)
              {
                v182 = objc_msgSend_nameSuffix(v45, v165, v166, v167, v168);
                v187 = objc_msgSend_nameSuffix(v61, v183, v184, v185, v186);
                v190 = objc_msgSend_compare_options_(v182, v188, v187, 1, v189);

                if (v190)
                {
                  if (v190 == -1)
                  {
                    v191 = objc_msgSend_nameSuffix(v45, v165, v166, v167, v168);
                    v195 = objc_msgSend_characterAtIndex_(v191, v192, 0, v193, v194);

                    v200 = objc_msgSend_nameSuffix(v61, v196, v197, v198, v199);
                    v204 = objc_msgSend_characterAtIndex_(v200, v201, 0, v202, v203);

                    if (v204 - v195 == 1)
                    {
                      v205 = objc_msgSend_name(v61, v165, v166, v167, v168);
                      v209 = objc_msgSend_linkedPerBarTransitionsToSegmentNamed_(v45, v206, v205, v207, v208);

                      if (v209)
                      {
                        v214 = objc_msgSend_bars(v61, v210, v211, v212, v213) - 1;
                      }

                      else
                      {
                        v214 = 0;
                      }

                      v35 = v418;
                      if (v214 < objc_msgSend_bars(v61, v210, v211, v212, v213))
                      {
                        while ((objc_msgSend_canTransitionFromSegment_toSegment_fromBarIndex_checkIfPrevented_(FlexSegment, v366, v45, v61, v214, 1) & 1) == 0)
                        {
                          if (++v214 >= objc_msgSend_bars(v61, v370, v371, v372, v373))
                          {
                            goto LABEL_88;
                          }
                        }

                        v411 = 1;
                        goto LABEL_74;
                      }

LABEL_88:
                      v249 = objc_msgSend_song(renditionCopy, v366, v367, v368, v369);
                      v378 = objc_msgSend_uid(v249, v374, v375, v376, v377);
                      if (objc_msgSend_isEqualToString_(v378, v379, @"89EE9F2B-CEB7-4B06-8388-D12A7BFF78A8", v380, v381))
                      {

                        v411 = 1;
                        goto LABEL_73;
                      }

                      v407 = objc_msgSend_song(renditionCopy, v382, v383, v384, v385);
                      v390 = objc_msgSend_uid(v407, v386, v387, v388, v389);
                      v414 = objc_msgSend_isEqualToString_(v390, v391, @"0B84454E-B24A-44BC-9068-F88B899EDD2F", v392, v393);

                      if (v414)
                      {
                        v411 = 1;
                        v35 = v418;
                        goto LABEL_74;
                      }

                      v398 = MEMORY[0x277CCACA8];
                      v249 = objc_msgSend_name(v45, v394, v395, v396, v397);
                      v254 = objc_msgSend_name(v61, v399, v400, v401, v402);
                      objc_msgSend_stringWithFormat_(v398, v403, @"transition from %@ to %@ should be permitted but is not. successive segments in the clipPlaylist should transition into another.", v404, v405, v249, v254);
                      *reason = LABEL_55:;

                      v411 = 0;
LABEL_58:
                      v35 = v418;
                      goto LABEL_73;
                    }
                  }
                }

                else
                {
                  v225 = objc_msgSend_segments(renditionCopy, v165, v166, v167, v168);
                  v424[0] = MEMORY[0x277D85DD0];
                  v424[1] = 3221225472;
                  v424[2] = sub_24B80B550;
                  v424[3] = &unk_27900F450;
                  v226 = v45;
                  v425 = v226;
                  v230 = objc_msgSend_indexesOfObjectsPassingTest_(v225, v227, v424, v228, v229);

                  if (objc_msgSend_sliceable(v61, v231, v232, v233, v234))
                  {
                    objc_msgSend_count(v230, v235, v236, v237, v238);
                  }

                  else
                  {
                    v348 = objc_msgSend_sliceable(v226, v235, v236, v237, v238);
                    if (objc_msgSend_count(v230, v349, v350, v351, v352) && !v348)
                    {
                      v413 = MEMORY[0x277CCACA8];
                      v357 = objc_msgSend_name(v226, v353, v354, v355, v356);
                      v362 = objc_msgSend_name(v61, v358, v359, v360, v361);
                      *reason = objc_msgSend_stringWithFormat_(v413, v363, @"transition from %@ to %@ should not occur. there is a problem with the playback sequencing algorithm.", v364, v365, v357, v362);

                      v411 = 0;
                      v249 = v425;
                      goto LABEL_58;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v239 = v416;
      if (objc_msgSend_fadeOut(v416, v165, v166, v167, v168) < 1 || (objc_msgSend_prevented(v416, v240, v241, v242, v243) & 1) != 0)
      {
        if (objc_msgSend_fadeOut(v416, v240, v241, v242, v243) >= 1 && objc_msgSend_prevented(v416, v244, v245, v246, v247))
        {
          v248 = MEMORY[0x277CCACA8];
          v249 = objc_msgSend_name(v45, v244, v245, v246, v247);
          v254 = objc_msgSend_name(v61, v250, v251, v252, v253);
          objc_msgSend_stringWithFormat_(v248, v255, @"transition sequenced from %@ to %@ but not allowed. algorithm bug? ", v256, v257, v249, v254);
          goto LABEL_55;
        }
      }

      else
      {
        v258 = objc_msgSend_segments(renditionCopy, v240, v241, v242, v243);
        v249 = objc_msgSend_objectAtIndexedSubscript_(v258, v259, v28 + 1, v260, v261);

        v266 = objc_msgSend_segment(v249, v262, v263, v264, v265);
        v271 = objc_msgSend_type(v266, v267, v268, v269, v270);

        if (v271 == 5)
        {
          v411 = 0;
          *reason = @"there should be no crossfade segments when using real-time crossfades.";
          goto LABEL_58;
        }

        v239 = v416;
      }

      v272 = objc_msgSend_transitionSegmentName(v239, v244, v245, v246, v247);

      if (v272)
      {
        v421 = v45;
        if (v28 + 1 >= v415)
        {
LABEL_65:
          v249 = 0;
        }

        else
        {
          v277 = 0;
          while (1)
          {
            v278 = objc_msgSend_segments(renditionCopy, v273, v274, v275, v276);
            v249 = objc_msgSend_objectAtIndexedSubscript_(v278, v279, v30 + v277, v280, v281);

            v286 = objc_msgSend_segment(v249, v282, v283, v284, v285);
            v291 = objc_msgSend_type(v286, v287, v288, v289, v290);

            if (v291 == 3)
            {
              break;
            }

            if (v29 == ++v277)
            {
              goto LABEL_65;
            }
          }
        }

        v292 = objc_msgSend_segment(v249, v273, v274, v275, v276);
        v297 = objc_msgSend_type(v292, v293, v294, v295, v296);

        if (v297 != 3)
        {
          v321 = MEMORY[0x277CCACA8];
          v322 = objc_msgSend_name(v421, v298, v299, v300, v301);
          v327 = objc_msgSend_name(v61, v323, v324, v325, v326);
          *reason = objc_msgSend_stringWithFormat_(v321, v328, @"transition segment specified for %@ to %@ but not found", v329, v330, v322, v327);
          goto LABEL_72;
        }

        v302 = objc_msgSend_segment(v249, v298, v299, v300, v301);
        v307 = objc_msgSend_name(v302, v303, v304, v305, v306);
        v312 = objc_msgSend_transitionSegmentName(v416, v308, v309, v310, v311);
        v316 = objc_msgSend_isEqualToString_(v307, v313, v312, v314, v315);

        if ((v316 & 1) == 0)
        {
          v412 = MEMORY[0x277CCACA8];
          v322 = objc_msgSend_name(v421, v317, v318, v319, v320);
          v327 = objc_msgSend_name(v61, v331, v332, v333, v334);
          v339 = objc_msgSend_segment(v249, v335, v336, v337, v338);
          v344 = objc_msgSend_name(v339, v340, v341, v342, v343);
          *reason = objc_msgSend_stringWithFormat_(v412, v345, @"transition segment specified for %@ to %@ but incorrect segment %@ was found instead. playback sequencing algorithm issue?", v346, v347, v322, v327, v344);

LABEL_72:
          v411 = 0;
          v14 = v409;
          v35 = v418;
          v45 = v421;
LABEL_73:

LABEL_74:
LABEL_75:
          v138 = 1;
          goto LABEL_76;
        }

        v14 = v409;
        v45 = v421;
        v239 = v416;
      }

      v138 = 0;
      v35 = v418;
LABEL_76:

LABEL_77:
      if ((v138 & 1) == 0)
      {
        ++v28;
        --v29;
        ++v30;
        if (v28 != v14)
        {
          continue;
        }
      }

      v19 = v411;
      goto LABEL_95;
    }

    if (objc_msgSend_type(v45, v46, v47, v48, v49) == 3)
    {
      v417 = v35;
      v420 = v45;
      if ((v28 - 1) < 0)
      {
LABEL_17:
        v75 = 0;
      }

      else
      {
        v70 = v28;
        while (1)
        {
          --v70;
          v71 = objc_msgSend_segments(renditionCopy, v41, v42, v43, v44);
          v75 = objc_msgSend_objectAtIndexedSubscript_(v71, v72, v70, v73, v74);

          v80 = objc_msgSend_segment(v75, v76, v77, v78, v79);
          v85 = objc_msgSend_type(v80, v81, v82, v83, v84);

          if (v85 == 2)
          {
            break;
          }

          if (v70 <= 0)
          {
            goto LABEL_17;
          }
        }
      }

      v86 = v28 + 1;
      if (v28 + 1 >= v415)
      {
LABEL_22:
        v61 = 0;
      }

      else
      {
        v87 = v29;
        while (1)
        {
          v88 = objc_msgSend_segments(renditionCopy, v41, v42, v43, v44);
          v61 = objc_msgSend_objectAtIndexedSubscript_(v88, v89, v86, v90, v91);

          v96 = objc_msgSend_segment(v61, v92, v93, v94, v95);
          v101 = objc_msgSend_type(v96, v97, v98, v99, v100);

          if (v101 == 2)
          {
            break;
          }

          ++v86;
          if (!--v87)
          {
            goto LABEL_22;
          }
        }
      }

      v102 = objc_msgSend_segment(v75, v41, v42, v43, v44);
      v107 = objc_msgSend_segment(v61, v103, v104, v105, v106);
      v112 = objc_msgSend_name(v107, v108, v109, v110, v111);
      v117 = objc_msgSend_barsUsed(v417, v113, v114, v115, v116);
      v120 = objc_msgSend_transitionToSegmentNamed_fromBarIndex_(v102, v118, v112, v117 - 1, v119);

      v125 = objc_msgSend_transitionSegmentName(v120, v121, v122, v123, v124);
      v130 = objc_msgSend_name(v420, v126, v127, v128, v129);
      LODWORD(v112) = objc_msgSend_isEqualToString_(v125, v131, v130, v132, v133);

      if (v112)
      {

        v138 = 0;
      }

      else
      {
        v215 = MEMORY[0x277CCACA8];
        v216 = objc_msgSend_segment(v75, v134, v135, v136, v137);
        v221 = objc_msgSend_name(v216, v217, v218, v219, v220);
        *reason = objc_msgSend_stringWithFormat_(v215, v222, @"incorrect transition segment found after %@. Bug in sequencing algorithm", v223, v224, v221);

        v411 = 0;
        v138 = 1;
      }

      v14 = v409;
      v35 = v417;
      v45 = v420;
      goto LABEL_76;
    }

LABEL_25:
    v139 = v45;
    v140 = objc_msgSend_segments(renditionCopy, v41, v42, v43, v44);
    v145 = objc_msgSend_lastObject(v140, v141, v142, v143, v144);

    if (v35 != v145)
    {
      v138 = 0;
      v45 = v139;
      goto LABEL_77;
    }

    v45 = v139;
    if (v35 == v408 || (objc_msgSend_segment(v35, v146, v147, v148, v149), v150 = objc_claimAutoreleasedReturnValue(), v150, !v150))
    {
      v138 = 1;
      v411 = 1;
      goto LABEL_77;
    }

    v138 = 1;
    v61 = FlexLogForCategory(1uLL);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      sub_24B80E570(&buf, v423, v61);
      v411 = 0;
      goto LABEL_75;
    }

    v411 = 0;
    goto LABEL_76;
  }

  v19 = 1;
LABEL_95:

  return v19 & 1;
}

+ (BOOL)_transitionIsPossibleFromSegment:(id)segment toSegment:(id)toSegment forBodyClipPlaylist:(id)playlist
{
  segmentCopy = segment;
  toSegmentCopy = toSegment;
  playlistCopy = playlist;
  v13 = objc_msgSend_sortedArrayUsingComparator_(playlistCopy, v10, &unk_285EA0670, v11, v12);
  v17 = objc_msgSend_indexOfObject_(v13, v14, segmentCopy, v15, v16);
  v21 = objc_msgSend_indexOfObject_(v13, v18, toSegmentCopy, v19, v20);
  v26 = objc_msgSend_array(MEMORY[0x277CBEB18], v22, v23, v24, v25);
  v30 = 0;
  if (v17 != 0x7FFFFFFFFFFFFFFFLL && v21 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v100 = playlistCopy;
    if (v17 >= v21)
    {
      if (v17 > v21)
      {
        v66 = v26;
        v67 = v17 - 1;
        while (1)
        {
          v68 = v67 - 1;
          if (v67 < 1)
          {
            break;
          }

          v69 = objc_msgSend_objectAtIndexedSubscript_(v13, v27, v67, v28, v29);
          v74 = objc_msgSend_name(segmentCopy, v70, v71, v72, v73);
          v79 = objc_msgSend_name(v69, v75, v76, v77, v78);
          v82 = objc_msgSend_compare_options_(v74, v80, v79, 65, v81);

          v87 = objc_msgSend_name(toSegmentCopy, v83, v84, v85, v86);
          v92 = objc_msgSend_name(v69, v88, v89, v90, v91);
          v95 = objc_msgSend_compare_options_(v87, v93, v92, 65, v94);

          v67 = v68;
          if (v82 == -1)
          {
            v67 = v68;
            if (v95 == 1)
            {
              v64 = 0;
              v65 = v66;
              goto LABEL_21;
            }
          }
        }

        v65 = v66;
        v26 = v66;
      }

      else
      {
        v65 = v26;
      }

      objc_msgSend_addObject_(v26, v27, toSegmentCopy, v28, v29);
      v64 = 1;
    }

    else
    {
      v101 = v26;
      v31 = 0;
      v32 = v17 + 1;
      do
      {
        v33 = objc_msgSend_objectAtIndexedSubscript_(v13, v27, v32, v28, v29);
        v38 = objc_msgSend_name(segmentCopy, v34, v35, v36, v37);
        v43 = objc_msgSend_name(v33, v39, v40, v41, v42);
        v46 = objc_msgSend_compare_options_(v38, v44, v43, 65, v45);

        if (v46 == -1)
        {
          if (!v31)
          {
            v31 = v33;
          }

          v51 = objc_msgSend_name(v31, v47, v48, v49, v50);
          v56 = objc_msgSend_name(v33, v52, v53, v54, v55);
          v59 = objc_msgSend_compare_options_(v51, v57, v56, 65, v58);

          if (v59 <= 1)
          {
            v60 = v33;

            objc_msgSend_addObject_(v101, v61, v60, v62, v63);
            v31 = v60;
          }
        }

        ++v32;
      }

      while (v32 <= v21);

      v64 = 1;
      v65 = v101;
    }

LABEL_21:
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = sub_24B80B9C0;
    v102[3] = &unk_27900F498;
    v103 = toSegmentCopy;
    if (objc_msgSend_indexOfObjectPassingTest_(v65, v96, v102, v97, v98) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v30 = 0;
    }

    else
    {
      v30 = v64;
    }

    playlistCopy = v100;
    v26 = v65;
  }

  return v30;
}

- (BOOL)_validateAuthoringIssuesInRendition:(id)rendition failureReason:(id *)reason
{
  v167 = *MEMORY[0x277D85DE8];
  renditionCopy = rendition;
  v10 = objc_msgSend_segments(renditionCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_firstObject(v10, v11, v12, v13, v14);
  v16 = v15 != 0;

  if (!v15)
  {
    *reason = @"empty playlist!";
  }

  v21 = objc_msgSend_segments(renditionCopy, v17, v18, v19, v20);
  v26 = objc_msgSend_firstObject(v21, v22, v23, v24, v25);

  v31 = objc_msgSend_segment(v26, v27, v28, v29, v30);
  v36 = v31;
  if (v31)
  {
    v37 = objc_msgSend_sampleRate(v31, v32, v33, v34, v35);
  }

  else
  {
    v37 = -1;
  }

  v38 = objc_msgSend_segments(renditionCopy, v32, v33, v34, v35);
  v43 = objc_msgSend_count(v38, v39, v40, v41, v42);

  if (v36 || v43 != 1)
  {
    v159 = v26;
    v160 = renditionCopy;
    reasonCopy = reason;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v48 = objc_msgSend_segments(renditionCopy, v44, v45, v46, v47);
    v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v162, v166, 16);
    if (!v50)
    {
      goto LABEL_45;
    }

    v55 = v50;
    v56 = *v163;
    while (1)
    {
      v57 = 0;
      do
      {
        if (*v163 != v56)
        {
          objc_enumerationMutation(v48);
        }

        v58 = objc_msgSend_segment(*(*(&v162 + 1) + 8 * v57), v51, v52, v53, v54);
        v63 = v58;
        if (!v58)
        {
          goto LABEL_33;
        }

        if (objc_msgSend_samplesPerBar(v58, v59, v60, v61, v62) == -1)
        {
          v68 = objc_msgSend_customBarMarkers(v63, v64, v65, v66, v67);
          v73 = objc_msgSend_count(v68, v69, v70, v71, v72);

          if (!v73)
          {
            v147 = MEMORY[0x277CCACA8];
            v155 = objc_msgSend_name(v63, v74, v75, v76, v77);
            objc_msgSend_stringWithFormat_(v147, v148, @"samplesPerBar is -1, customBarMarkers.count should be > 0 please fix %@", v149, v150, v155);
            goto LABEL_44;
          }

          v78 = objc_msgSend_customBarMarkers(v63, v74, v75, v76, v77);
          v83 = objc_msgSend_count(v78, v79, v80, v81, v82);
          v88 = objc_msgSend_bars(v63, v84, v85, v86, v87);

          if (v83 != v88)
          {
            v151 = MEMORY[0x277CCACA8];
            v155 = objc_msgSend_name(v63, v89, v90, v91, v92);
            v158 = v155;
            v156 = @"samplesPerBar is -1, customBarMarkers.count should equal segment.bars please fix %@";
            goto LABEL_43;
          }

          v93 = objc_msgSend_customBarMarkers(v63, v89, v90, v91, v92);
          v98 = objc_msgSend_count(v93, v94, v95, v96, v97);

          if (v98)
          {
            v103 = 0;
            while (1)
            {
              v104 = objc_msgSend_barDurationForBarIndex_(v63, v99, v103, v101, v102);
              if (v104 >= objc_msgSend_sampleCount(v63, v105, v106, v107, v108))
              {
                break;
              }

              ++v103;
              v113 = objc_msgSend_customBarMarkers(v63, v109, v110, v111, v112);
              v118 = objc_msgSend_count(v113, v114, v115, v116, v117);

              if (v103 >= v118)
              {
                goto LABEL_27;
              }
            }

            v141 = MEMORY[0x277CCACA8];
            v142 = objc_msgSend_name(v63, v109, v110, v111, v112);
            *reasonCopy = objc_msgSend_stringWithFormat_(v141, v143, @"custom barDuration should be less than sampleCount. please fix %@", v144, v145, v142);

            v16 = 0;
            goto LABEL_33;
          }

          goto LABEL_27;
        }

        if (objc_msgSend_bars(v63, v64, v65, v66, v67) >= 2)
        {
          v123 = objc_msgSend_samplesPerBar(v63, v119, v120, v121, v122);
          if (v123 >= objc_msgSend_sampleCount(v63, v124, v125, v126, v127))
          {
            v151 = MEMORY[0x277CCACA8];
            v155 = objc_msgSend_name(v63, v99, v100, v101, v102);
            v158 = v155;
            v156 = @"samplesPerBar should be less than sampleCount if we have more than one bar. please fix %@";
            goto LABEL_43;
          }

LABEL_27:
          v16 = 1;
          goto LABEL_28;
        }

        if (objc_msgSend_bars(v63, v119, v120, v121, v122) == 1)
        {
          v132 = objc_msgSend_samplesPerBar(v63, v128, v129, v130, v131);
          if (v132 != objc_msgSend_sampleCount(v63, v133, v134, v135, v136))
          {
            v151 = MEMORY[0x277CCACA8];
            v155 = objc_msgSend_name(v63, v99, v100, v101, v102);
            v158 = v155;
            v156 = @"samplesPerBar should equal sampleCount if we only have one bar. please fix %@";
LABEL_43:
            objc_msgSend_stringWithFormat_(v151, v152, v156, v153, v154, v158);
            *reasonCopy = LABEL_44:;

            v16 = 0;
            goto LABEL_45;
          }

          goto LABEL_27;
        }

        if (!objc_msgSend_bars(v63, v128, v129, v130, v131))
        {
          v151 = MEMORY[0x277CCACA8];
          v155 = objc_msgSend_name(v63, v99, v100, v101, v102);
          v158 = v155;
          v156 = @"samplesPerBar should not be 0. please fix %@";
          goto LABEL_43;
        }

LABEL_28:
        if (v16 && v37 >= 1)
        {
          if (objc_msgSend_sampleRate(v63, v99, v100, v101, v102) != v37)
          {
            v151 = MEMORY[0x277CCACA8];
            v155 = objc_msgSend_name(v63, v137, v138, v139, v140);
            v158 = v155;
            v156 = @"sample rates must be the same for all segments. please fix %@";
            goto LABEL_43;
          }

          v16 = 1;
        }

LABEL_33:

        ++v57;
      }

      while (v57 != v55);
      v146 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v51, &v162, v166, 16);
      v55 = v146;
      if (!v146)
      {
LABEL_45:

        v26 = v159;
        renditionCopy = v160;
        break;
      }
    }
  }

  return v16;
}

- (int64_t)_samplesForDuration:(id *)duration
{
  v6 = objc_msgSend_sampleRate(self, a2, duration, v3, v4);
  v8 = *duration;
  CMTimeConvertScale(&v9, &v8, v6, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  return v9.value;
}

- (BOOL)verifyRendition:(id)rendition forDuration:(id *)duration failureReason:(id *)reason
{
  renditionCopy = rendition;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = renditionCopy;
    v58.receiver = self;
    v58.super_class = FlexSong;
    v56 = *&duration->var0;
    var3 = duration->var3;
    if (![(FlexSongBackend *)&v58 verifyRendition:v9 forDuration:&v56 failureReason:reason])
    {
      goto LABEL_9;
    }

    v14 = objc_msgSend_segments(v9, v10, v11, v12, v13);

    if (!v14)
    {
      v36 = 0;
      *reason = @"no playlist! The playback algorithm could not generate a playlist for this duration or there is an issue with the authoring tool";
      goto LABEL_12;
    }

    v56 = *&duration->var0;
    var3 = duration->var3;
    v18 = objc_msgSend__samplesForDuration_(self, v15, &v56, v16, v17);
    v23 = objc_msgSend_segments(v9, v19, v20, v21, v22);
    v27 = objc_msgSend__sampleDurationOfClipPlaylist_(self, v24, v23, v25, v26);

    if (v18 != v27)
    {
      v45 = MEMORY[0x277CCACA8];
      v46 = v18 / objc_msgSend_sampleRate(self, v28, v29, v30, v31);
      v51 = objc_msgSend_sampleRate(self, v47, v48, v49, v50);
      objc_msgSend_stringWithFormat_(v45, v52, @"expected duration (%.2fs, %lld) does not match duration (%.2fs, %lld) of clipPlaylist! Possibly no valid intro or outro valid for this duration?", v53, v54, *&v46, v18, v27 / v51, v27);
      *reason = v36 = 0;
      goto LABEL_12;
    }

    if (objc_msgSend__validateAuthoringIssuesInRendition_failureReason_(self, v28, v9, reason, v31) && objc_msgSend__validateStructureForRendition_failureReason_(self, v32, v9, reason, v33))
    {
      v36 = objc_msgSend__validateTransitionsInRendition_failureReason_(self, v34, v9, reason, v35);
    }

    else
    {
LABEL_9:
      v36 = 0;
    }

LABEL_12:

    goto LABEL_13;
  }

  v37 = MEMORY[0x277CCACA8];
  v38 = objc_opt_class();
  v39 = NSStringFromClass(v38);
  v40 = objc_opt_class();
  v41 = NSStringFromClass(v40);
  *reason = objc_msgSend_stringWithFormat_(v37, v42, @"Expected a %@ class but found a %@", v43, v44, v39, v41);

  v36 = 0;
LABEL_13:

  return v36;
}

- (BOOL)_verifyAssetsForSegment:(id)segment withFailureReason:(id *)reason
{
  v179[1] = *MEMORY[0x277D85DE8];
  segmentCopy = segment;
  if (segmentCopy)
  {
    v11 = objc_msgSend_assetProvider(self, v6, v7, v8, v9);
    v15 = objc_msgSend_urlToAudioForSegment_(v11, v12, segmentCopy, v13, v14);

    if (v15)
    {
      v175 = 0;
      v20 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v16, v17, v18, v19);
      v25 = objc_msgSend_path(v15, v21, v22, v23, v24);
      isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v20, v26, v25, &v175, v27);
      v29 = v175;

      if (isDirectory && (v29 & 1) == 0)
      {
        v34 = objc_msgSend_path(v15, v30, v31, v32, v33);
        v38 = objc_msgSend_readInfoFromAudioFileAtPath_(FlexSegment, v35, v34, v36, v37);

        if (v38)
        {
          v43 = objc_msgSend_sampleRate(segmentCopy, v39, v40, v41, v42);
          if (v43 == objc_msgSend_sampleRate(v38, v44, v45, v46, v47))
          {
            v52 = objc_msgSend_sampleCount(segmentCopy, v48, v49, v50, v51);
            if (v52 == objc_msgSend_sampleCount(v38, v53, v54, v55, v56))
            {
              goto LABEL_12;
            }

            v61 = objc_msgSend_sampleCount(segmentCopy, v57, v58, v59, v60);
            if (v61 == objc_msgSend_sampleCount(v38, v62, v63, v64, v65) - 1)
            {
              v70 = FlexLogForCategory(1uLL);
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
              {
                sub_24B80E5B0(v15, segmentCopy, v70, v71, v72);
              }

LABEL_12:
              v73 = MEMORY[0x277CE6650];
              v178 = *MEMORY[0x277CE6240];
              v179[0] = MEMORY[0x277CBEC38];
              v74 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v57, v179, &v178, 1);
              v77 = objc_msgSend_URLAssetWithURL_options_(v73, v75, v15, v74, v76);

              v78 = dispatch_semaphore_create(0);
              v173[0] = MEMORY[0x277D85DD0];
              v173[1] = 3221225472;
              v173[2] = sub_24B80C72C;
              v173[3] = &unk_27900E970;
              v79 = v78;
              v174 = v79;
              objc_msgSend_loadValuesAsynchronouslyForKeys_completionHandler_(v77, v80, &unk_285EA8748, v173, v81);
              v82 = dispatch_time(0, 20000000000);
              if (dispatch_semaphore_wait(v79, v82))
              {
                if (reason)
                {
                  v87 = MEMORY[0x277CCACA8];
                  v88 = objc_msgSend_lastPathComponent(v15, v83, v84, v85, v86);
                  *reason = objc_msgSend_stringWithFormat_(v87, v89, @"Timed out waiting for %@ to load", v90, v91, v88);
                }

                goto LABEL_15;
              }

              memset(&v172, 0, sizeof(v172));
              if (v77)
              {
                objc_msgSend_duration(v77, v83, v84, v85, v86);
              }

              else
              {
                memset(&time, 0, sizeof(time));
              }

              v133 = objc_msgSend_sampleRate(segmentCopy, v83, v84, v85, v86);
              v92 = 1;
              CMTimeConvertScale(&v172, &time, v133, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
              v138 = objc_msgSend_sampleCount(segmentCopy, v134, v135, v136, v137);
              if (v138 == v172.value)
              {
                goto LABEL_40;
              }

              v143 = objc_msgSend_sampleCount(segmentCopy, v139, v140, v141, v142);
              v92 = v143 == v172.value - 1;
              if (v143 == v172.value - 1)
              {
                v148 = FlexLogForCategory(1uLL);
                if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
                {
                  v153 = objc_msgSend_lastPathComponent(v15, v149, v150, v151, v152);
                  value = v172.value;
                  v159 = objc_msgSend_sampleCount(segmentCopy, v155, v156, v157, v158);
                  LODWORD(time.value) = 138412802;
                  *(&time.value + 4) = v153;
                  LOWORD(time.flags) = 2048;
                  *(&time.flags + 2) = value;
                  HIWORD(time.epoch) = 2048;
                  v177 = v159;
                  _os_log_debug_impl(&dword_24B7E5000, v148, OS_LOG_TYPE_DEBUG, "%@: asset.duration %lld is 1 sample longer than segment.sampleCount %lld", &time, 0x20u);
                }
              }

              else
              {
                if (!reason)
                {
LABEL_15:
                  v92 = 0;
LABEL_40:

                  goto LABEL_41;
                }

                v160 = MEMORY[0x277CCACA8];
                v148 = objc_msgSend_lastPathComponent(v15, v144, v145, v146, v147);
                v161 = v172.value;
                v166 = objc_msgSend_sampleCount(segmentCopy, v162, v163, v164, v165);
                *reason = objc_msgSend_stringWithFormat_(v160, v167, @"%@: asset.duration (%lld) does not match segment.sampleCount (%lld)", v168, v169, v148, v161, v166);
              }

              goto LABEL_40;
            }

            if (reason)
            {
              v120 = MEMORY[0x277CCACA8];
              v77 = objc_msgSend_lastPathComponent(v15, v66, v67, v68, v69);
              v125 = objc_msgSend_sampleCount(v38, v121, v122, v123, v124);
              v171 = objc_msgSend_sampleCount(segmentCopy, v126, v127, v128, v129);
              objc_msgSend_stringWithFormat_(v120, v130, @"%@: kExtAudioFileProperty_FileLengthFrames (%lld) does not match segment.sampleCount (%lld)", v131, v132, v77, v125, v171);
              goto LABEL_26;
            }

            goto LABEL_31;
          }

          if (reason)
          {
            v106 = MEMORY[0x277CCACA8];
            v107 = objc_msgSend_sampleRate(v38, v48, v49, v50, v51);
            v112 = objc_msgSend_sampleRate(segmentCopy, v108, v109, v110, v111);
            v77 = objc_msgSend_lastPathComponent(v15, v113, v114, v115, v116);
            objc_msgSend_stringWithFormat_(v106, v117, @"audio file sample rate (%ld) does not match sample rate (%ld) of %@", v118, v119, v107, v112, v77);
            goto LABEL_26;
          }
        }

        else if (reason)
        {
          v102 = MEMORY[0x277CCACA8];
          v77 = objc_msgSend_path(v15, v39, v40, v41, v42);
          objc_msgSend_stringWithFormat_(v102, v103, @"could not read info for audio file: %@", v104, v105, v77);
LABEL_26:
          *reason = v92 = 0;
LABEL_41:

          goto LABEL_42;
        }

LABEL_31:
        v92 = 0;
        goto LABEL_42;
      }

      if (reason)
      {
        v98 = MEMORY[0x277CCACA8];
        v38 = objc_msgSend_name(segmentCopy, v30, v31, v32, v33);
        objc_msgSend_stringWithFormat_(v98, v99, @"audio file does not exist for segment %@", v100, v101, v38);
        *reason = v92 = 0;
LABEL_42:

        goto LABEL_43;
      }
    }

    else if (reason)
    {
      v93 = MEMORY[0x277CCACA8];
      v94 = objc_msgSend_name(segmentCopy, v16, v17, v18, v19);
      *reason = objc_msgSend_stringWithFormat_(v93, v95, @"could not determine url for segment %@", v96, v97, v94);
    }

    v92 = 0;
LABEL_43:

    goto LABEL_44;
  }

  v92 = 1;
LABEL_44:

  return v92;
}

- (BOOL)verifyAssetsWithFailureReason:(id *)reason
{
  v35 = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend__metadataDictFromCache(self, a2, reason, v3, v4);
  if (!v11)
  {
    v12 = FlexLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B7E5000, v12, OS_LOG_TYPE_DEFAULT, "flex: missing metadataDict!", buf, 2u);
    }
  }

  v17 = objc_msgSend__decodedMainSegmentsFromCache(self, v7, v8, v9, v10);
  if (!v17)
  {
    v18 = FlexLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B7E5000, v18, OS_LOG_TYPE_DEFAULT, "flex: missing decodedMainSegments!", buf, 2u);
    }
  }

  objc_msgSend__destroyCache(self, v13, v14, v15, v16);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = v17;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v29, v34, 16);
  if (v21)
  {
    v24 = v21;
    v25 = *v30;
    while (2)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(v19);
        }

        if (!objc_msgSend__verifyAssetsForSegment_withFailureReason_(self, v22, *(*(&v29 + 1) + 8 * i), reason, v23, v29))
        {
          v27 = 0;
          goto LABEL_19;
        }
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v29, v34, 16);
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  v27 = 1;
LABEL_19:

  return v27;
}

- (id)timedMetadataItemsWithIdentifier:(id)identifier forRendition:(id)rendition
{
  v724 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  renditionCopy = rendition;
  objc_opt_class();
  v635 = renditionCopy;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v401 = MEMORY[0x277CBEBF8];
    goto LABEL_160;
  }

  v636 = renditionCopy;
  v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9, v10, v11);
  v645 = identifierCopy;
  selfCopy = self;
  v680 = v12;
  if ((objc_msgSend_isEqualToString_(identifierCopy, v13, @"FMTimedMetadataIdentifierSection", v14, v15) & 1) != 0 || objc_msgSend_isEqualToString_(identifierCopy, v16, @"FMTimedMetadataIdentifierSegment", v17, v18))
  {
    isEqualToString = objc_msgSend_isEqualToString_(identifierCopy, v16, @"FMTimedMetadataIdentifierSection", v17, v18);
    v24 = objc_msgSend_segments(v636, v20, v21, v22, v23);
    v639 = objc_msgSend_lastObject(v24, v25, v26, v27, v28);

    v712 = 0u;
    v713 = 0u;
    v710 = 0u;
    v711 = 0u;
    v33 = objc_msgSend_segments(v636, v29, v30, v31, v32);
    v641 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v710, v723, 16);
    if (!v641)
    {
      goto LABEL_116;
    }

    v648 = 0;
    v39 = 0;
    v40 = 0;
    v640 = *v711;
    if (isEqualToString)
    {
      v41 = @"SILENCE";
    }

    else
    {
      v41 = @"silence";
    }

    v637 = v41;
    v42 = 0x27900E000uLL;
    v646 = isEqualToString;
    obj = v33;
    while (1)
    {
      v43 = 0;
      v44 = v39;
      do
      {
        if (*v711 != v640)
        {
          objc_enumerationMutation(obj);
        }

        v45 = *(*(&v710 + 1) + 8 * v43);
        v46 = objc_msgSend_segment(v45, v35, v36, v37, v38);
        v51 = v46;
        v658 = v44;
        v676 = v45;
        if (!v46)
        {
          v61 = v637;
          if (isEqualToString)
          {
            v66 = 0;
            v67 = 0;
            v672 = 0;
            v68 = 0;
            v652 = 0;
            v655 = 0;
            v650 = 0;
            v662 = 0;
            v69 = @"SILENCE";
            v665 = @"SILENCE";
            v667 = 0;
          }

          else
          {
            v650 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v62, 1, v64, v65);
            v652 = 0;
            v66 = 0;
            v67 = 0;
            v672 = 0;
            v68 = 0;
            v655 = 0;
            v662 = 0;
            v665 = @"SILENCE";
            v667 = 0;
            v69 = @"silence";
          }

          v669 = v69;
          goto LABEL_52;
        }

        if (objc_msgSend_type(v46, v47, v48, v49, v50) == 1 || objc_msgSend_type(v51, v52, v53, v54, v55) == 4 || objc_msgSend_type(v51, v52, v53, v54, v55) == 3)
        {
          if (isEqualToString)
          {
            v56 = *(v42 + 1728);
            v57 = objc_msgSend_type(v51, v52, v53, v54, v55);
            objc_msgSend_longLabelForSegmentType_(v56, v58, v57, v59, v60);
          }

          else
          {
            objc_msgSend_name(v51, v52, v53, v54, v55);
          }
          v669 = ;

          v70 = *(v42 + 1728);
          v75 = objc_msgSend_type(v51, v71, v72, v73, v74);
          v665 = objc_msgSend_longLabelForSegmentType_(v70, v76, v75, v77, v78);
          if (objc_msgSend_type(v51, v79, v80, v81, v82) == 4)
          {
            v87 = objc_msgSend_offset(v45, v83, v84, v85, v86);
            v88 = v45;
            v89 = v87;
            v94 = objc_msgSend_duration(v88, v90, v91, v92, v93);
            v99 = objc_msgSend_sampleCount(v51, v95, v96, v97, v98);
            v104 = objc_msgSend_markers(v51, v100, v101, v102, v103);
            v108 = objc_msgSend_objectForKey_(v104, v105, @"OUTRO_STINGER", v106, v107);

            if (!v108 || (v113 = objc_msgSend_integerValue(v108, v109, v110, v111, v112), v113 < 0))
            {
              v115 = 0;
            }

            else
            {
              v114 = v113;
              if (v113 >= objc_msgSend_sampleCount(v51, v109, v110, v111, v112))
              {
                v115 = 0;
              }

              else
              {
                v115 = v114;
              }
            }

            v116 = v94 + v89;
            v117 = v40 - objc_msgSend_offset(v676, v109, v110, v111, v112);
            v667 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v118, v117 + v115, v119, v120);
            if (v116 >= v99)
            {
              v672 = 0;
              self = selfCopy;
              isEqualToString = v646;
            }

            else
            {
              v125 = objc_msgSend_options(v636, v121, v122, v123, v124);
              MaxLengthInSamplesToReserveForOutroSegment_withOptions = objc_msgSend__findMaxLengthInSamplesToReserveForOutroSegment_withOptions_(FlexSong, v126, v51, v125, v127);

              v135 = objc_msgSend_options(v636, v129, v130, v131, v132);
              if (MaxLengthInSamplesToReserveForOutroSegment_withOptions < 1)
              {
                EarlyFadeStartOffsetInSamplesForOutroSegment_withOptions = objc_msgSend__findEarlyFadeStartOffsetInSamplesForOutroSegment_withOptions_(FlexSong, v133, v51, v135, v134);
              }

              else
              {
                MinLengthInSamplesForEarlyFadeOutForOutroSegment_withOptions = objc_msgSend__findMinLengthInSamplesForEarlyFadeOutForOutroSegment_withOptions_(FlexSong, v133, v51, v135, v134);

                v141 = objc_msgSend_offset(v676, v137, v138, v139, v140);
                EarlyFadeStartOffsetInSamplesForOutroSegment_withOptions = v141 - MinLengthInSamplesForEarlyFadeOutForOutroSegment_withOptions + objc_msgSend_duration(v676, v142, v143, v144, v145);
              }

              v175 = EarlyFadeStartOffsetInSamplesForOutroSegment_withOptions & ~(EarlyFadeStartOffsetInSamplesForOutroSegment_withOptions >> 63);
              v672 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v146, v175 + v117, v147, v148);
              isEqualToString = v646;
              if (v115 >= v175)
              {
                v179 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v176, v117, v177, v178);

                v667 = v179;
              }

              self = selfCopy;
            }

            v45 = v676;
          }

          else
          {
            v672 = 0;
            v667 = 0;
          }

          v652 = 0;
          v655 = 0;
          v662 = 0;
        }

        else
        {
          if (objc_msgSend_type(v51, v52, v53, v54, v55) != 2)
          {
            objc_msgSend_type(v51, v150, v151, v152, v153);
LABEL_109:
            v669 = 0;
            v672 = 0;
            v665 = 0;
            v667 = 0;
            v652 = 0;
            v655 = 0;
            v662 = 0;
            v180 = 0;
            goto LABEL_46;
          }

          if (isEqualToString)
          {
            v154 = objc_msgSend_nameIndex(v51, v150, v151, v152, v153);

            if (v154 == v648)
            {
              goto LABEL_109;
            }

            v156 = MEMORY[0x277CCACA8];
            v157 = *(v42 + 1728);
            v158 = objc_msgSend_type(v51, v83, v155, v85, v86);
            v162 = objc_msgSend_longLabelForSegmentType_(v157, v159, v158, v160, v161);
            v167 = objc_msgSend_nameIndex(v51, v163, v164, v165, v166);
            v669 = objc_msgSend_stringWithFormat_(v156, v168, @"%@ %@", v169, v170, v162, v167);

            isEqualToString = v646;
          }

          else
          {
            v669 = objc_msgSend_name(v51, v150, v151, v152, v153);
          }

          v289 = *(v42 + 1728);
          v290 = objc_msgSend_type(v51, v171, v172, v173, v174);
          v665 = objc_msgSend_longLabelForSegmentType_(v289, v291, v290, v292, v293);
          v294 = MEMORY[0x277CCABB0];
          v299 = objc_msgSend_nameIndex(v51, v295, v296, v297, v298);
          v304 = objc_msgSend_intValue(v299, v300, v301, v302, v303);
          v662 = objc_msgSend_numberWithInt_(v294, v305, v304, v306, v307);

          v308 = MEMORY[0x277CCABB0];
          v45 = v676;
          v313 = objc_msgSend_barsUsed(v676, v309, v310, v311, v312);
          v655 = objc_msgSend_numberWithInteger_(v308, v314, v313, v315, v316);
          if (isEqualToString)
          {
            v672 = 0;
            v667 = 0;
            v652 = 0;
          }

          else
          {
            v652 = objc_msgSend_nameSuffix(v51, v83, v317, v85, v86);
            v672 = 0;
            v667 = 0;
          }
        }

        v180 = 1;
LABEL_46:
        v67 = objc_msgSend_metadataValueForKey_(v51, v83, @"PeakValue", v85, v86);
        v66 = objc_msgSend_metadataValueForKey_(v51, v181, @"Loudness", v182, v183);
        if (!v180)
        {
          v68 = 0;
          v650 = 0;
          goto LABEL_101;
        }

        if (isEqualToString)
        {
          v68 = 0;
          v650 = 0;
        }

        else
        {
          v184 = MEMORY[0x277CCABB0];
          v185 = objc_msgSend_priority(v51, v62, v63, v64, v65);
          v650 = objc_msgSend_numberWithInteger_(v184, v186, v185, v187, v188);
          v193 = objc_msgSend_analysisData(self, v189, v190, v191, v192);
          v197 = objc_msgSend_objectForKeyedSubscript_(v193, v194, @"energy", v195, v196);
          v68 = objc_msgSend_objectForKey_(v197, v198, v669, v199, v200);

          isEqualToString = v646;
        }

        v44 = v658;
LABEL_52:
        v201 = v40;
        if (v44)
        {
          v201 = v40 - objc_msgSend_duration(v44, v62, v63, v64, v65);
        }

        memset(&rhs, 0, sizeof(rhs));
        if (v676 == v639)
        {
          v206 = objc_msgSend_duration(v676, v62, v63, v64, v65);
          if (v44)
          {
            v206 += objc_msgSend_duration(v44, v202, v203, v204, v205);
          }

          v207 = objc_msgSend_sampleRate(self, v202, v203, v204, v205);
          CMTimeMake(&rhs, v206, v207);
          isEqualToString = v646;
        }

        else
        {
          rhs = **&MEMORY[0x277CC08F0];
        }

        memset(&v708, 0, sizeof(v708));
        v208 = objc_msgSend_sampleRate(self, v62, v63, v64, v65);
        CMTimeMake(&start.start, v201, v208);
        duration = rhs;
        CMTimeRangeMake(&v708, &start.start, &duration);
        v213 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v209, v210, v211, v212);
        v217 = v213;
        if (isEqualToString)
        {
          if (v665)
          {
            objc_msgSend_setObject_forKey_(v213, v214, v665, @"SectionType", v216);
          }

          if (v662)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v662, @"BodyNumber", v216);
          }

          if (v667)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v667, @"OutroStinger", v216);
          }

          if (v672)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v672, @"OutroEarlyFade", v216);
          }
        }

        else
        {
          if (v665)
          {
            objc_msgSend_setObject_forKey_(v213, v214, v665, @"SegmentType", v216);
          }

          if (v650)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v650, @"Priority", v216);
          }

          if (v662)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v662, @"BodyNumber", v216);
          }

          if (v652)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v652, @"BodyLetter", v216);
          }

          if (v655)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v655, @"BarsUsed", v216);
          }

          if (v68)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v68, @"Energy", v216);
          }

          v218 = v667;
          if (v667)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v667, @"OutroStinger", v216);
          }

          if (v672)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v672, @"OutroEarlyFade", v216);
          }

          if (v44)
          {
            v219 = objc_msgSend_segment(v44, v214, v218, v215, v216);
            v223 = objc_msgSend_metadataValueForKey_(v219, v220, @"PeakValue", v221, v222);

            v228 = objc_msgSend_segment(v44, v224, v225, v226, v227);
            v232 = objc_msgSend_metadataValueForKey_(v228, v229, @"Loudness", v230, v231);

            if (v223)
            {
              if (v67)
              {
                v237 = v67;
                objc_msgSend_doubleValue(v223, v233, v234, v235, v236);
                v239 = v238;
                objc_msgSend_doubleValue(v67, v240, v241, v242, v243);
                if (v239 > v244)
                {
                  v67 = v223;
                }
              }

              else
              {
                v67 = v223;
              }
            }

            if (v232)
            {
              if (v66)
              {
                objc_msgSend_doubleValue(v232, v233, v234, v235, v236);
                v246 = v245;
                v251 = objc_msgSend_duration(v658, v247, v248, v249, v250);
                objc_msgSend_doubleValue(v66, v252, v253, v254, v255);
                v257 = v256;
                v262 = objc_msgSend_duration(v676, v258, v259, v260, v261);
                v267 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v263, v264, v265, v266, (v257 * v262 + v246 * v251) / (v262 + v251));

                v66 = v267;
              }

              else
              {
                v66 = v232;
              }
            }

            self = selfCopy;
          }

          if (v67)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v67, @"PeakValue", v216);
          }

          if (v66)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v66, @"Loudness", v216);
          }
        }

        v268 = [FMTimedMetadataItem alloc];
        v272 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v269, v217, v270, v271);
        start = v708;
        v274 = objc_msgSend_initWithIdentifier_name_timeRange_values_(v268, v273, v645, v669, &start, v272);

        objc_msgSend_addObject_(v680, v275, v274, v276, v277);
        if (!v51)
        {

          v648 = 0;
          v283 = 0;
          isEqualToString = v646;
          v284 = v676;
          goto LABEL_106;
        }

        isEqualToString = v646;
        v45 = v676;
LABEL_101:
        v278 = objc_msgSend_nameIndex(v51, v62, v63, v64, v65);

        if (objc_msgSend_type(v51, v279, v280, v281, v282) == 5)
        {
          v283 = v45;
        }

        else
        {
          v283 = 0;
        }

        v648 = v278;
        v284 = v45;
LABEL_106:
        v39 = v283;

        v40 += objc_msgSend_duration(v284, v285, v286, v287, v288);
        ++v43;
        v44 = v39;
        v42 = 0x27900E000;
      }

      while (v641 != v43);
      v33 = obj;
      v318 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v710, v723, 16);
      v641 = v318;
      if (!v318)
      {

        identifierCopy = v645;
        v12 = v680;
        goto LABEL_116;
      }
    }
  }

  if (objc_msgSend_isEqualToString_(identifierCopy, v16, @"FMTimedMetadataIdentifierBar", v17, v18))
  {
    v704 = 0u;
    v705 = 0u;
    v702 = 0u;
    v703 = 0u;
    v639 = objc_msgSend_segments(v636, v482, v483, v484, v485);
    v656 = objc_msgSend_countByEnumeratingWithState_objects_count_(v639, v486, &v702, v722, 16);
    if (v656)
    {
      v33 = 0;
      v674 = 0;
      v653 = *v703;
      while (1)
      {
        v491 = 0;
        v492 = v33;
        do
        {
          if (*v703 != v653)
          {
            objc_enumerationMutation(v639);
          }

          v493 = *(*(&v702 + 1) + 8 * v491);
          v498 = objc_msgSend_segment(v493, v487, v488, v489, v490);
          v499 = v674;
          if (!v498)
          {
            v510 = 0;
            goto LABEL_194;
          }

          v664 = v491;
          v500 = v674;
          if (v492)
          {
            v500 = v674 - objc_msgSend_duration(v492, v494, v495, v496, v497);
          }

          v660 = v492;
          v677 = objc_msgSend_duration(v493, v494, v495, v496, v497);
          if (objc_msgSend_type(v498, v501, v502, v503, v504) == 2 || objc_msgSend_type(v498, v505, v506, v507, v508) == 3 || objc_msgSend_type(v498, v505, v506, v507, v508) == 4)
          {
            if (objc_msgSend_type(v498, v505, v506, v507, v508) == 4)
            {
              v509 = 1;
LABEL_179:
              v511 = 0;
              v512 = 0;
              do
              {
                v513 = objc_msgSend_offset(v493, v505, v506, v507, v508);
                if (objc_msgSend_type(v498, v514, v515, v516, v517) == 4)
                {
                  v522 = 1;
                }

                else
                {
                  v522 = objc_msgSend_beatsPerBar(v498, v518, v519, v520, v521);
                }

                v523 = v512 - v513;
                v524 = v512 - v513 + v499;
                if (v524 >= v500 && v523 < v677)
                {
                  memset(&v708, 0, sizeof(v708));
                  v526 = objc_msgSend_sampleRate(self, v518, v519, v520, v521);
                  CMTimeMake(&start.start, v524, v526);
                  rhs = **&MEMORY[0x277CC08F0];
                  CMTimeRangeMake(&v708, &start.start, &rhs);
                  v527 = MEMORY[0x277CCACA8];
                  v532 = objc_msgSend_name(v498, v528, v529, v530, v531);
                  v536 = objc_msgSend_stringWithFormat_(v527, v533, @"%@ BarIndex %d", v534, v535, v532, v511);

                  v720[0] = @"BarIndex";
                  v540 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v537, v511, v538, v539);
                  v721[0] = v540;
                  v720[1] = @"BeatsPerBar";
                  v544 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v541, v522, v542, v543);
                  v721[1] = v544;
                  v546 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v545, v721, v720, 2);

                  v547 = [FMTimedMetadataItem alloc];
                  start = v708;
                  v549 = objc_msgSend_initWithIdentifier_name_timeRange_values_(v547, v548, @"FMTimedMetadataIdentifierBar", v536, &start, v546);
                  objc_msgSend_addObject_(v680, v550, v549, v551, v552);

                  v499 = v674;
                  self = selfCopy;
                }

                v512 += objc_msgSend_barDurationForBarIndex_(v498, v518, v511++, v520, v521);
              }

              while (v509 != v511);
              goto LABEL_190;
            }

            v509 = objc_msgSend_bars(v498, v505, v506, v507, v508);
            if (v509 >= 1)
            {
              goto LABEL_179;
            }
          }

LABEL_190:
          if (objc_msgSend_type(v498, v505, v506, v507, v508) == 5)
          {
            v510 = v493;
          }

          else
          {
            v510 = 0;
          }

          identifierCopy = v645;
          v12 = v680;
          v492 = v660;
          v491 = v664;
LABEL_194:
          v33 = v510;

          v674 += objc_msgSend_duration(v493, v553, v554, v555, v556);
          ++v491;
          v492 = v33;
        }

        while (v491 != v656);
        v656 = objc_msgSend_countByEnumeratingWithState_objects_count_(v639, v487, &v702, v722, 16);
        if (!v656)
        {
          goto LABEL_116;
        }
      }
    }
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(identifierCopy, v482, @"FMTimedMetadataIdentifierBeat", v484, v485))
    {
      goto LABEL_118;
    }

    v700 = 0u;
    v701 = 0u;
    v698 = 0u;
    v699 = 0u;
    v639 = objc_msgSend_segments(v636, v319, v557, v320, v321);
    v643 = objc_msgSend_countByEnumeratingWithState_objects_count_(v639, v558, &v698, v719, 16);
    if (v643)
    {
      v33 = 0;
      v563 = 0;
      v642 = *v699;
      while (1)
      {
        v564 = 0;
        v647 = v33;
        do
        {
          if (*v699 != v642)
          {
            objc_enumerationMutation(v639);
          }

          v565 = *(*(&v698 + 1) + 8 * v564);
          v566 = objc_msgSend_segment(v565, v559, v560, v561, v562);
          v571 = v566;
          if (v566)
          {
            v644 = v564;
            if (objc_msgSend_beatsPerBar(v566, v567, v568, v569, v570) >= 1)
            {
              v576 = v563;
              if (v647)
              {
                v576 = v563 - objc_msgSend_duration(v647, v572, v573, v574, v575);
              }

              v577 = objc_msgSend_duration(v565, v572, v573, v574, v575);
              if (objc_msgSend_type(v571, v578, v579, v580, v581) == 2 || objc_msgSend_type(v571, v572, v573, v574, v575) == 3 || objc_msgSend_type(v571, v572, v573, v574, v575) == 4)
              {
                if (objc_msgSend_type(v571, v572, v573, v574, v575) == 4)
                {
                  v654 = 1;
LABEL_214:
                  v583 = 0;
                  v661 = 0;
                  v678 = v577 + v563;
                  v649 = v565;
                  v651 = v563;
                  while (2)
                  {
                    v584 = objc_msgSend_offset(v565, v572, v573, v574, v575);
                    if (objc_msgSend_type(v571, v585, v586, v587, v588) == 4)
                    {
                      v593 = objc_msgSend_barDurationForBarIndex_(v571, v589, v583, v591, v592);
                      v657 = v593;
                      v594 = 1;
LABEL_219:
                      v599 = 0;
                      v600 = v661 + v563 - v584;
                      v671 = v583;
                      v675 = v593;
                      do
                      {
                        if (v600 >= v576 && v600 < v678)
                        {
                          memset(&v708, 0, sizeof(v708));
                          v601 = objc_msgSend_sampleRate(selfCopy, v572, v573, v574, v575);
                          CMTimeMake(&start.start, v600, v601);
                          rhs = **&MEMORY[0x277CC08F0];
                          CMTimeRangeMake(&v708, &start.start, &rhs);
                          v602 = MEMORY[0x277CCACA8];
                          objc_msgSend_name(v571, v603, v604, v605, v606);
                          v608 = v607 = v576;
                          v612 = objc_msgSend_stringWithFormat_(v602, v609, @"%@ BarIndex %d BeatIndex %d", v610, v611, v608, v671, v599);

                          v717[0] = @"BarIndex";
                          v616 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v613, v583, v614, v615);
                          v718[0] = v616;
                          v717[1] = @"BeatIndex";
                          v620 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v617, v599, v618, v619);
                          v718[1] = v620;
                          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v621, v718, v717, 2);
                          v622 = v583;
                          v624 = v623 = v571;

                          v625 = [FMTimedMetadataItem alloc];
                          start = v708;
                          v627 = objc_msgSend_initWithIdentifier_name_timeRange_values_(v625, v626, @"FMTimedMetadataIdentifierBeat", v612, &start, v624);
                          objc_msgSend_addObject_(v680, v628, v627, v629, v630);

                          v576 = v607;
                          v571 = v623;
                          v583 = v622;

                          v593 = v675;
                        }

                        ++v599;
                        v600 += v593;
                      }

                      while (v594 != v599);
                      v12 = v680;
                      v565 = v649;
                      v563 = v651;
                      v598 = v657;
                    }

                    else
                    {
                      v594 = objc_msgSend_beatsPerBar(v571, v589, v590, v591, v592);
                      v598 = objc_msgSend_barDurationForBarIndex_(v571, v595, v583, v596, v597);
                      if (v594 >= 1)
                      {
                        v657 = v598;
                        v593 = v598 / v594;
                        goto LABEL_219;
                      }
                    }

                    v661 += v598;
                    if (++v583 == v654)
                    {
                      goto LABEL_226;
                    }

                    continue;
                  }
                }

                v654 = objc_msgSend_bars(v571, v572, v573, v574, v575);
                if (v654 >= 1)
                {
                  goto LABEL_214;
                }
              }
            }

LABEL_226:
            if (objc_msgSend_type(v571, v572, v573, v574, v575) == 5)
            {
              v582 = v565;
            }

            else
            {
              v582 = 0;
            }

            v564 = v644;
            identifierCopy = v645;
          }

          else
          {
            v582 = 0;
          }

          v33 = v582;

          v563 += objc_msgSend_duration(v565, v631, v632, v633, v634);
          ++v564;
          v647 = v33;
        }

        while (v564 != v643);
        v643 = objc_msgSend_countByEnumeratingWithState_objects_count_(v639, v559, &v698, v719, 16);
        if (!v643)
        {
LABEL_116:

          break;
        }
      }
    }
  }

LABEL_118:
  if (objc_msgSend_isEqualToString_(identifierCopy, v319, @"FMTimedMetadataIdentifierOnset", v320, v321))
  {
    v696 = 0u;
    v697 = 0u;
    v694 = 0u;
    v695 = 0u;
    v666 = objc_msgSend_segments(v636, v322, v323, v324, v325);
    v327 = objc_msgSend_countByEnumeratingWithState_objects_count_(v666, v326, &v694, v716, 16);
    if (v327)
    {
      v332 = v327;
      v333 = 0;
      v334 = *v695;
      v335 = MEMORY[0x277CC08F0];
      v336 = MEMORY[0x277CBEC10];
      v659 = *v695;
      do
      {
        v337 = 0;
        v663 = v332;
        do
        {
          if (*v695 != v334)
          {
            objc_enumerationMutation(v666);
          }

          v338 = *(*(&v694 + 1) + 8 * v337);
          v339 = objc_msgSend_segment(v338, v328, v329, v330, v331);
          if (objc_msgSend_type(v339, v340, v341, v342, v343) == 2)
          {
            v668 = v338;
            v673 = v337;
            v348 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_analysisData, v344, @"onsets", v346, v347);
            v670 = v339;
            v353 = objc_msgSend_name(v339, v349, v350, v351, v352);
            v357 = objc_msgSend_objectForKey_(v348, v354, v353, v355, v356);

            v692 = 0u;
            v693 = 0u;
            v690 = 0u;
            v691 = 0u;
            v358 = v357;
            v360 = objc_msgSend_countByEnumeratingWithState_objects_count_(v358, v359, &v690, v715, 16);
            if (v360)
            {
              v365 = v360;
              v366 = *v691;
              do
              {
                for (i = 0; i != v365; ++i)
                {
                  if (*v691 != v366)
                  {
                    objc_enumerationMutation(v358);
                  }

                  v368 = *(*(&v690 + 1) + 8 * i);
                  memset(&rhs, 0, sizeof(rhs));
                  v369 = objc_msgSend_sampleRate(selfCopy, v361, v362, v363, v364);
                  CMTimeMake(&rhs, v333, v369);
                  v708.start = rhs;
                  Seconds = CMTimeGetSeconds(&v708.start);
                  objc_msgSend_floatValue(v368, v371, v372, v373, v374);
                  memset(&v708, 0, sizeof(v708));
                  v376 = (v375 + Seconds);
                  v381 = objc_msgSend_sampleRate(selfCopy, v377, v378, v379, v380);
                  CMTimeMakeWithSeconds(&start.start, v376, v381);
                  duration = *v335;
                  CMTimeRangeMake(&v708, &start.start, &duration);
                  v382 = [FMTimedMetadataItem alloc];
                  v386 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v383, @"onset @ %f", v384, v385, *&v376);
                  start = v708;
                  v388 = objc_msgSend_initWithIdentifier_name_timeRange_values_(v382, v387, @"FMTimedMetadataIdentifierOnset", v386, &start, v336);

                  objc_msgSend_addObject_(v680, v389, v388, v390, v391);
                }

                v365 = objc_msgSend_countByEnumeratingWithState_objects_count_(v358, v361, &v690, v715, 16);
              }

              while (v365);
            }

            identifierCopy = v645;
            v334 = v659;
            v332 = v663;
            v339 = v670;
            v337 = v673;
            v338 = v668;
          }

          v333 += objc_msgSend_duration(v338, v344, v345, v346, v347);

          ++v337;
        }

        while (v337 != v332);
        v332 = objc_msgSend_countByEnumeratingWithState_objects_count_(v666, v328, &v694, v716, 16);
      }

      while (v332);
    }

    v12 = v680;
    v396 = objc_msgSend_count(v680, v392, v393, v394, v395);
  }

  else
  {
    if (objc_msgSend_isEqualToString_(identifierCopy, v322, @"FMTimedMetadataIdentifierLoopPoints", v324, v325))
    {
      v688 = 0u;
      v689 = 0u;
      v686 = 0u;
      v687 = 0u;
      v406 = objc_msgSend_segments(v636, v402, v403, v404, v405);
      v408 = objc_msgSend_countByEnumeratingWithState_objects_count_(v406, v407, &v686, v714, 16);
      if (v408)
      {
        v413 = v408;
        v414 = 0;
        v415 = *v687;
        v416 = MEMORY[0x277CC08F0];
        do
        {
          for (j = 0; j != v413; ++j)
          {
            if (*v687 != v415)
            {
              objc_enumerationMutation(v406);
            }

            v418 = *(*(&v686 + 1) + 8 * j);
            v419 = objc_msgSend_segment(v418, v409, v410, v411, v412);
            if (objc_msgSend_type(v419, v420, v421, v422, v423) == 4)
            {
              memset(&rhs, 0, sizeof(rhs));
              v428 = objc_msgSend_duration(v418, v424, v425, v426, v427);
              v433 = objc_msgSend_sampleRate(selfCopy, v429, v430, v431, v432);
              CMTimeMake(&rhs, v428, v433);
              memset(&duration, 0, sizeof(duration));
              v438 = objc_msgSend_sampleRate(selfCopy, v434, v435, v436, v437);
              CMTimeMake(&duration, v414, v438);
              memset(&v685, 0, sizeof(v685));
              v708.start = duration;
              start.start = rhs;
              CMTimeAdd(&v685, &v708.start, &start.start);
              v708.start = v685;
              v439 = CMTimeGetSeconds(&v708.start);
              memset(&v708, 0, sizeof(v708));
              v440 = v439;
              v445 = objc_msgSend_sampleRate(selfCopy, v441, v442, v443, v444);
              CMTimeMakeWithSeconds(&start.start, v440, v445);
              v684 = *v416;
              CMTimeRangeMake(&v708, &start.start, &v684);
              v446 = [FMTimedMetadataItem alloc];
              v450 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v447, @"loop point @ %f", v448, v449, *&v440);
              start = v708;
              v452 = objc_msgSend_initWithIdentifier_name_timeRange_values_(v446, v451, @"FMTimedMetadataIdentifierOnset", v450, &start, MEMORY[0x277CBEC10]);

              objc_msgSend_addObject_(v680, v453, v452, v454, v455);
            }

            v414 += objc_msgSend_duration(v418, v424, v425, v426, v427);
          }

          v413 = objc_msgSend_countByEnumeratingWithState_objects_count_(v406, v409, &v686, v714, 16);
        }

        while (v413);
      }

      v12 = v680;
      objc_msgSend_removeLastObject(v680, v456, v457, v458, v459);
      identifierCopy = v645;
    }

    v396 = objc_msgSend_count(v12, v402, v403, v404, v405);
  }

  if (v396 && objc_msgSend_count(v12, v397, v398, v399, v400) != 1)
  {
    v463 = 0;
    do
    {
      v464 = objc_msgSend_objectAtIndex_(v12, v460, v463, v461, v462);
      v468 = objc_msgSend_objectAtIndex_(v12, v465, ++v463, v466, v467);
      v473 = v468;
      memset(&v708, 0, 24);
      if (v468)
      {
        objc_msgSend_timeRange(v468, v469, v470, v471, v472);
      }

      else
      {
        *&v683 = 0;
        v682 = 0u;
      }

      *&start.start.value = v682;
      start.start.epoch = v683;
      if (v464)
      {
        objc_msgSend_timeRange(v464, v469, v470, v471, v472);
      }

      else
      {
        memset(&v681, 0, sizeof(v681));
      }

      rhs = v681;
      CMTimeSubtract(&v708.start, &start.start, &rhs);
      *&start.start.value = *&v708.start.value;
      start.start.epoch = v708.start.epoch;
      objc_msgSend_adjustDurationTo_(v464, v474, &start, v475, v476);
    }

    while (v463 < objc_msgSend_count(v12, v477, v478, v479, v480) - 1);
  }

  v401 = v12;

LABEL_160:

  return v401;
}

+ (id)loadSongInFolderWithPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v18 = 0;
    v8 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v3, v4, v5, v6);
    isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v8, v9, pathCopy, &v18, v10);
    v12 = v18;

    v16 = 0;
    if (isDirectory && (v12 & 1) != 0)
    {
      v16 = objc_msgSend_songAtPath_(FlexSongMetaDataReader_V2, v13, pathCopy, v14, v15);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end