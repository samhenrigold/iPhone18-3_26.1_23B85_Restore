@interface PGFingerprintVersionHelper
+ (id)_assetPrintFeatureExtractorForAssetPrintType:(int64_t)type transformers:(id)transformers error:(id *)error;
+ (id)_clipprintFeatureExtractorInstance;
+ (id)_featureExtractor:(id)extractor withTransformers:(id)transformers parentFeatureExtractorName:(id)name;
+ (id)_featureExtractors:(id)extractors withTransformers:(id)transformers;
+ (id)_featureExtractors:(id)extractors withTransformers:(id)transformers parentFeatureExtractorName:(id)name;
+ (id)_generateErrorWithErrorCode:(int64_t)code errorMessage:(id)message underlyingError:(id)error;
+ (id)_multiModalFeatureExtractorForMutliModalType:(int64_t)type assetFeatureExtractor:(id)extractor personaVectorFeatureExtractor:(id)featureExtractor graph:(id)graph transformers:(id)transformers error:(id *)error;
+ (id)_personaVectorFeatureExtractorForPersonaVectorType:(int64_t)type fetchOptionPropertySet:(id)set graph:(id)graph transformers:(id)transformers error:(id *)error;
+ (id)_sceneprintFeatureExtractorInstance;
+ (id)featureExtractorForFingerprintVersion:(int64_t)version withGraph:(id)graph withTransformers:(id)transformers error:(id *)error;
+ (id)fetchOptionPropertySetForFingerprintVersion:(int64_t)version;
+ (id)nameForFingerprintVersion:(int64_t)version;
+ (int64_t)fingerprintVersionForName:(id)name;
+ (void)resetPreCalculatedFeatures;
@end

@implementation PGFingerprintVersionHelper

+ (id)_clipprintFeatureExtractorInstance
{
  v2 = objc_alloc_init(PGFeatureExtractorCLIPprint);

  return v2;
}

+ (id)_sceneprintFeatureExtractorInstance
{
  v2 = objc_alloc_init(PGFeatureExtractorSceneprint);

  return v2;
}

+ (id)_generateErrorWithErrorCode:(int64_t)code errorMessage:(id)message underlyingError:(id)error
{
  errorCopy = error;
  v8 = MEMORY[0x277CBEB38];
  messageCopy = message;
  v10 = objc_alloc_init(v8);
  [v10 setObject:messageCopy forKey:*MEMORY[0x277CCA450]];

  if (errorCopy)
  {
    [v10 setObject:errorCopy forKey:*MEMORY[0x277CCA7E8]];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotosGraph.PGFingerprintVersion" code:code userInfo:v10];

  return v11;
}

+ (id)_featureExtractor:(id)extractor withTransformers:(id)transformers parentFeatureExtractorName:(id)name
{
  extractorCopy = extractor;
  transformersCopy = transformers;
  nameCopy = name;
  name = [extractorCopy name];
  if (nameCopy)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", nameCopy, name];

    name = v11;
  }

  if (transformersCopy && ([transformersCopy featureTransformersForFeatureExtractorName:name], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v13, (isKindOfClass & 1) == 0))
  {
    v17 = [transformersCopy featureTransformersForFeatureExtractorName:name];
    v15 = [[PGSequentialFeatureExtractor alloc] initWithFeatureExtractor:extractorCopy featureTransformers:v17];
  }

  else
  {
    v15 = extractorCopy;
  }

  return v15;
}

+ (id)_featureExtractors:(id)extractors withTransformers:(id)transformers parentFeatureExtractorName:(id)name
{
  v24 = *MEMORY[0x277D85DE8];
  extractorsCopy = extractors;
  transformersCopy = transformers;
  nameCopy = name;
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(extractorsCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = extractorsCopy;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [self _featureExtractor:*(*(&v19 + 1) + 8 * i) withTransformers:transformersCopy parentFeatureExtractorName:{nameCopy, v19}];
        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v11;
}

+ (id)_featureExtractors:(id)extractors withTransformers:(id)transformers
{
  extractorsCopy = extractors;
  v7 = extractorsCopy;
  if (transformers)
  {
    v8 = [self _featureExtractors:extractorsCopy withTransformers:transformers parentFeatureExtractorName:0];
  }

  else
  {
    v8 = extractorsCopy;
  }

  v9 = v8;

  return v9;
}

+ (id)_personaVectorFeatureExtractorForPersonaVectorType:(int64_t)type fetchOptionPropertySet:(id)set graph:(id)graph transformers:(id)transformers error:(id *)error
{
  v189[18] = *MEMORY[0x277D85DE8];
  setCopy = set;
  graphCopy = graph;
  transformersCopy = transformers;
  if (type > 1)
  {
    if (type == 2)
    {
      selfCopy = self;
      if (graphCopy)
      {
        v176 = [[PGMeaningFeatureExtractor alloc] initWithVersion:1 error:error];
        v189[0] = v176;
        v172 = [[PGInvariantFamilyFeatureExtractor alloc] initWithError:error];
        v189[1] = v172;
        v168 = [[PGInvariantCoworkerFeatureExtractor alloc] initWithError:error];
        v189[2] = v168;
        v164 = [[PGInvariantPartnerFeatureExtractor alloc] initWithError:error];
        v189[3] = v164;
        v160 = [[PGPublicEventCategoryFeatureExtractor alloc] initWithVersion:1 error:error];
        v189[4] = v160;
        v156 = [[PGBusinessCategoryFeatureExtractor alloc] initWithVersion:1 error:error];
        v189[5] = v156;
        v152 = [[PGInvariantPetFeatureExtractor alloc] initWithVersion:1 error:error];
        v189[6] = v152;
        v148 = [[PGBabyFeatureExtractor alloc] initWithError:error];
        v189[7] = v148;
        v144 = [[PGSceneFeatureExtractor alloc] initWithVersion:1 error:error];
        v189[8] = v144;
        v42 = [[PGMyHomeFeatureExtractor alloc] initWithError:error];
        v189[9] = v42;
        v179 = setCopy;
        v43 = [[PGMyWorkFeatureExtractor alloc] initWithError:error];
        v189[10] = v43;
        v183 = transformersCopy;
        v44 = [[PGMobilityFeatureExtractor alloc] initWithError:error];
        v189[11] = v44;
        v45 = [[PGPartOfDayFeatureExtractor alloc] initWithError:error];
        v189[12] = v45;
        v46 = [[PGSeasonFeatureExtractor alloc] initWithError:error];
        v189[13] = v46;
        v47 = [[PGWeekendFeatureExtractor alloc] initWithError:error];
        v189[14] = v47;
        v48 = [[PGWeekdayFeatureExtractor alloc] initWithError:error];
        v189[15] = v48;
        v185 = graphCopy;
        v49 = [[PGPOIFeatureExtractor alloc] initWithVersion:1 error:error];
        v189[16] = v49;
        v50 = [[PGROIFeatureExtractor alloc] initWithError:error];
        v189[17] = v50;
        v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v189 count:18];

        v98 = [selfCopy _featureExtractors:v51 withTransformers:v183 parentFeatureExtractorName:@"PersonaVector"];

        v177 = objc_alloc_init(PGFeatureExtractorCartesianLocation);
        v188[0] = v177;
        v173 = objc_alloc_init(PGFeatureExtractorExposureScore);
        v188[1] = v173;
        v169 = objc_alloc_init(PGFeatureExtractorFaceCountScore);
        v188[2] = v169;
        v165 = objc_alloc_init(PGFeatureExtractorActivityScore);
        v188[3] = v165;
        v161 = objc_alloc_init(PGFeatureExtractorVideoScore);
        v188[4] = v161;
        v157 = objc_alloc_init(PGFeatureExtractorBlurrinessScore);
        v188[5] = v157;
        v153 = objc_alloc_init(PGFeatureExtractorAudioClassification);
        v188[6] = v153;
        v149 = objc_alloc_init(PGFeatureExtractorIsFavoriteScore);
        v188[7] = v149;
        v145 = objc_alloc_init(PGFeatureExtractorHasAdjustmentsScore);
        v188[8] = v145;
        v141 = objc_alloc_init(PGFeatureExtractorDurationInSecond);
        v188[9] = v141;
        v138 = objc_alloc_init(PGFeatureExtractorImageAspectRatio);
        v188[10] = v138;
        v135 = objc_alloc_init(PGFeatureExtractorIsScreenRecording);
        v188[11] = v135;
        v132 = objc_alloc_init(PGFeatureExtractorPlayCount);
        v188[12] = v132;
        v130 = objc_alloc_init(PGFeatureExtractorShareCount);
        v188[13] = v130;
        v128 = objc_alloc_init(PGFeatureExtractorViewCount);
        v188[14] = v128;
        v126 = objc_alloc_init(PGFeatureExtractorAutoplaySuggestionScore);
        v188[15] = v126;
        v124 = objc_alloc_init(PGFeatureExtractorTastefullyBlurredScore);
        v188[16] = v124;
        v122 = objc_alloc_init(PGFeatureExtractorFailureScore);
        v188[17] = v122;
        v120 = objc_alloc_init(PGFeatureExtractorAestheticScore);
        v188[18] = v120;
        v118 = objc_alloc_init(PGFeatureExtractorPleasantLightingScore);
        v188[19] = v118;
        v116 = objc_alloc_init(PGFeatureExtractorWellFramedSubjectScore);
        v188[20] = v116;
        v114 = objc_alloc_init(PGFeatureExtractorWellChosenSubjectScore);
        v188[21] = v114;
        v112 = objc_alloc_init(PGFeatureExtractorWellTimedShotScore);
        v188[22] = v112;
        v110 = objc_alloc_init(PGFeatureExtractorSharplyFocusedSubjectScore);
        v188[23] = v110;
        v108 = objc_alloc_init(PGFeatureExtractorHarmoniousColorScore);
        v188[24] = v108;
        v106 = objc_alloc_init(PGFeatureExtractorPleasantReflectionsScore);
        v188[25] = v106;
        v104 = objc_alloc_init(PGFeatureExtractorLivelyColorScore);
        v188[26] = v104;
        v102 = objc_alloc_init(PGFeatureExtractorPleasantSymmetryScore);
        v188[27] = v102;
        v100 = objc_alloc_init(PGFeatureExtractorPleasantPatternScore);
        v188[28] = v100;
        v96 = objc_alloc_init(PGFeatureExtractorImmersivenessScore);
        v188[29] = v96;
        v94 = objc_alloc_init(PGFeatureExtractorPleasantPerspectiveScore);
        v188[30] = v94;
        v92 = objc_alloc_init(PGFeatureExtractorPleasantPostProcessingScore);
        v188[31] = v92;
        v90 = objc_alloc_init(PGFeatureExtractorNoiseScore);
        v188[32] = v90;
        v88 = objc_alloc_init(PGFeatureExtractorPleasantCompositionScore);
        v188[33] = v88;
        v86 = objc_alloc_init(PGFeatureExtractorInterestingSubjectScore);
        v188[34] = v86;
        v84 = objc_alloc_init(PGFeatureExtractorIntrusiveObjectPresenceScore);
        v188[35] = v84;
        v80 = objc_alloc_init(PGFeatureExtractorPleasantCameraTiltScore);
        v188[36] = v80;
        v78 = objc_alloc_init(PGFeatureExtractorLowLightScore);
        v188[37] = v78;
        v76 = objc_alloc_init(PGFeatureExtractorAssetPlaybackStyle);
        v188[38] = v76;
        v74 = objc_alloc_init(PGFeatureExtractorAssetMediaType);
        v188[39] = v74;
        v72 = objc_alloc_init(PGFeatureExtractorAssetMediaSubtype);
        v188[40] = v72;
        v70 = objc_alloc_init(PGFeatureExtractorAssetBurstSelectionType);
        v188[41] = v70;
        v52 = objc_alloc_init(PGFeatureExtractorAssetSourceType);
        v188[42] = v52;
        v53 = objc_alloc_init(PGFeatureExtractorAssetResolution);
        v188[43] = v53;
        v54 = objc_alloc_init(PGFeatureExtractorAssetFormat);
        v188[44] = v54;
        v55 = objc_alloc_init(PGFeatureExtractorAssetImportSource);
        v188[45] = v55;
        v56 = objc_alloc_init(PGFeatureExtractorStandardAspectRatio);
        v188[46] = v56;
        v57 = objc_alloc_init(PGFeatureExtractorLocale);
        v188[47] = v57;
        v58 = objc_alloc_init(PGFeatureExtractorTaboo);
        v188[48] = v58;
        v59 = objc_alloc_init(PGFeatureExtractorPotentialLandmark);
        v188[49] = v59;
        v60 = [PGFeatureExtractorGraphRelations alloc];
        v61 = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"GraphRelations" featureExtractors:v98];
        v62 = [(PGFeatureExtractorGraphRelations *)v60 initWithGraph:v185 featureExtractor:v61];
        v188[50] = v62;
        v82 = [MEMORY[0x277CBEA60] arrayWithObjects:v188 count:51];

        setCopy = v179;
        transformersCopy = v183;

        v63 = [selfCopy _featureExtractors:v82 withTransformers:v183 parentFeatureExtractorName:@"PersonaVector"];

        v64 = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"PersonaVectorMultiModal-V1.0" featureExtractors:v63];
        v65 = [[PGFeatureExtractorPhotoLibraryAverage alloc] initWithAssetFeatureExtractor:v64 assetFetchOptionPropertySet:v179];
        transformers = [[PGFeatureExtractorAssetPhotoLibrary alloc] initWithPhotoLibraryFeatureExtractor:v65];

        graphCopy = v185;
        v40 = v98;
        goto LABEL_12;
      }

      if (error)
      {
        selfCopy5 = self;
        goto LABEL_17;
      }
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_19;
      }

      if (graphCopy)
      {
        v174 = [[PGMeaningFeatureExtractor alloc] initWithVersion:1 error:error];
        v187[0] = v174;
        v170 = [[PGPeopleFeatureExtractor alloc] initWithGraph:graphCopy error:error];
        v187[1] = v170;
        v166 = [[PGInvariantFamilyFeatureExtractor alloc] initWithError:error];
        v187[2] = v166;
        v162 = [[PGInvariantCoworkerFeatureExtractor alloc] initWithError:error];
        v187[3] = v162;
        v158 = [[PGInvariantPartnerFeatureExtractor alloc] initWithError:error];
        v187[4] = v158;
        v154 = [[PGPublicEventCategoryFeatureExtractor alloc] initWithVersion:1 error:error];
        v187[5] = v154;
        v150 = [[PGBusinessCategoryFeatureExtractor alloc] initWithVersion:1 error:error];
        v187[6] = v150;
        v146 = [[PGInvariantPetFeatureExtractor alloc] initWithVersion:1 error:error];
        v187[7] = v146;
        v142 = [[PGBabyFeatureExtractor alloc] initWithError:error];
        v187[8] = v142;
        v139 = [[PGSceneFeatureExtractor alloc] initWithVersion:1 error:error];
        v187[9] = v139;
        v136 = [[PGFrequentLocationFeatureExtractor alloc] initWithGraph:graphCopy error:error];
        v187[10] = v136;
        v182 = transformersCopy;
        v133 = [[PGMyHomeFeatureExtractor alloc] initWithError:error];
        v187[11] = v133;
        v16 = [[PGMyWorkFeatureExtractor alloc] initWithError:error];
        v187[12] = v16;
        v17 = [[PGMobilityFeatureExtractor alloc] initWithError:error];
        v187[13] = v17;
        v18 = [[PGPartOfDayFeatureExtractor alloc] initWithError:error];
        v187[14] = v18;
        v19 = [[PGSeasonFeatureExtractor alloc] initWithError:error];
        v187[15] = v19;
        v178 = setCopy;
        v20 = [[PGWeekendFeatureExtractor alloc] initWithError:error];
        v187[16] = v20;
        selfCopy3 = self;
        selfCopy4 = self;
        v22 = [[PGWeekdayFeatureExtractor alloc] initWithError:error];
        v187[17] = v22;
        v184 = graphCopy;
        v23 = [[PGPOIFeatureExtractor alloc] initWithVersion:1 error:error];
        v187[18] = v23;
        v24 = [[PGROIFeatureExtractor alloc] initWithError:error];
        v187[19] = v24;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:20];

        v95 = [selfCopy3 _featureExtractors:v25 withTransformers:v182 parentFeatureExtractorName:@"PersonaVector"];

        v175 = objc_alloc_init(PGFeatureExtractorCartesianLocation);
        v186[0] = v175;
        v171 = [[PGFeatureExtractorFrequentPeople alloc] initWithNumberOfFrequentPeopleToExtract:25];
        v186[1] = v171;
        v167 = objc_alloc_init(PGFeatureExtractorExposureScore);
        v186[2] = v167;
        v163 = objc_alloc_init(PGFeatureExtractorFaceCountScore);
        v186[3] = v163;
        v159 = objc_alloc_init(PGFeatureExtractorActivityScore);
        v186[4] = v159;
        v155 = objc_alloc_init(PGFeatureExtractorVideoScore);
        v186[5] = v155;
        v151 = objc_alloc_init(PGFeatureExtractorBlurrinessScore);
        v186[6] = v151;
        v147 = objc_alloc_init(PGFeatureExtractorAudioClassification);
        v186[7] = v147;
        v143 = objc_alloc_init(PGFeatureExtractorIsFavoriteScore);
        v186[8] = v143;
        v140 = objc_alloc_init(PGFeatureExtractorHasAdjustmentsScore);
        v186[9] = v140;
        v137 = objc_alloc_init(PGFeatureExtractorDurationInSecond);
        v186[10] = v137;
        v134 = objc_alloc_init(PGFeatureExtractorImageAspectRatio);
        v186[11] = v134;
        v131 = objc_alloc_init(PGFeatureExtractorIsScreenRecording);
        v186[12] = v131;
        v129 = objc_alloc_init(PGFeatureExtractorPlayCount);
        v186[13] = v129;
        v127 = objc_alloc_init(PGFeatureExtractorShareCount);
        v186[14] = v127;
        v125 = objc_alloc_init(PGFeatureExtractorViewCount);
        v186[15] = v125;
        v123 = objc_alloc_init(PGFeatureExtractorAutoplaySuggestionScore);
        v186[16] = v123;
        v121 = objc_alloc_init(PGFeatureExtractorTastefullyBlurredScore);
        v186[17] = v121;
        v119 = objc_alloc_init(PGFeatureExtractorFailureScore);
        v186[18] = v119;
        v117 = objc_alloc_init(PGFeatureExtractorAestheticScore);
        v186[19] = v117;
        v115 = objc_alloc_init(PGFeatureExtractorPleasantLightingScore);
        v186[20] = v115;
        v113 = objc_alloc_init(PGFeatureExtractorWellFramedSubjectScore);
        v186[21] = v113;
        v111 = objc_alloc_init(PGFeatureExtractorWellChosenSubjectScore);
        v186[22] = v111;
        v109 = objc_alloc_init(PGFeatureExtractorWellTimedShotScore);
        v186[23] = v109;
        v107 = objc_alloc_init(PGFeatureExtractorSharplyFocusedSubjectScore);
        v186[24] = v107;
        v105 = objc_alloc_init(PGFeatureExtractorHarmoniousColorScore);
        v186[25] = v105;
        v103 = objc_alloc_init(PGFeatureExtractorPleasantReflectionsScore);
        v186[26] = v103;
        v101 = objc_alloc_init(PGFeatureExtractorLivelyColorScore);
        v186[27] = v101;
        v99 = objc_alloc_init(PGFeatureExtractorPleasantSymmetryScore);
        v186[28] = v99;
        v97 = objc_alloc_init(PGFeatureExtractorPleasantPatternScore);
        v186[29] = v97;
        v93 = objc_alloc_init(PGFeatureExtractorImmersivenessScore);
        v186[30] = v93;
        v91 = objc_alloc_init(PGFeatureExtractorPleasantPerspectiveScore);
        v186[31] = v91;
        v89 = objc_alloc_init(PGFeatureExtractorPleasantPostProcessingScore);
        v186[32] = v89;
        v87 = objc_alloc_init(PGFeatureExtractorNoiseScore);
        v186[33] = v87;
        v85 = objc_alloc_init(PGFeatureExtractorPleasantCompositionScore);
        v186[34] = v85;
        v83 = objc_alloc_init(PGFeatureExtractorInterestingSubjectScore);
        v186[35] = v83;
        v81 = objc_alloc_init(PGFeatureExtractorIntrusiveObjectPresenceScore);
        v186[36] = v81;
        v77 = objc_alloc_init(PGFeatureExtractorPleasantCameraTiltScore);
        v186[37] = v77;
        v75 = objc_alloc_init(PGFeatureExtractorLowLightScore);
        v186[38] = v75;
        v73 = objc_alloc_init(PGFeatureExtractorAssetPlaybackStyle);
        v186[39] = v73;
        v71 = objc_alloc_init(PGFeatureExtractorAssetMediaType);
        v186[40] = v71;
        v69 = objc_alloc_init(PGFeatureExtractorAssetMediaSubtype);
        v186[41] = v69;
        v68 = objc_alloc_init(PGFeatureExtractorAssetBurstSelectionType);
        v186[42] = v68;
        v26 = objc_alloc_init(PGFeatureExtractorAssetSourceType);
        v186[43] = v26;
        v27 = objc_alloc_init(PGFeatureExtractorAssetResolution);
        v186[44] = v27;
        v28 = objc_alloc_init(PGFeatureExtractorAssetFormat);
        v186[45] = v28;
        v29 = objc_alloc_init(PGFeatureExtractorAssetImportSource);
        v186[46] = v29;
        v30 = objc_alloc_init(PGFeatureExtractorStandardAspectRatio);
        v186[47] = v30;
        v31 = objc_alloc_init(PGFeatureExtractorLocale);
        v186[48] = v31;
        v32 = objc_alloc_init(PGFeatureExtractorTaboo);
        v186[49] = v32;
        v33 = objc_alloc_init(PGFeatureExtractorPotentialLandmark);
        v186[50] = v33;
        v34 = [PGFeatureExtractorGraphRelations alloc];
        v35 = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"GraphRelations" featureExtractors:v95];
        v36 = [(PGFeatureExtractorGraphRelations *)v34 initWithGraph:v184 featureExtractor:v35];
        v186[51] = v36;
        v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v186 count:52];

        transformersCopy = v182;
        setCopy = v178;

        v37 = [selfCopy4 _featureExtractors:v79 withTransformers:v182 parentFeatureExtractorName:@"PersonaVector"];

        v38 = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"PersonaVectorLibrarySpecificMultiModal-V1.0" featureExtractors:v37];
        v39 = [[PGFeatureExtractorPhotoLibraryAverage alloc] initWithAssetFeatureExtractor:v38 assetFetchOptionPropertySet:v178];
        transformers = [[PGFeatureExtractorAssetPhotoLibrary alloc] initWithPhotoLibraryFeatureExtractor:v39];

        graphCopy = v184;
        v40 = v95;
LABEL_12:

        goto LABEL_19;
      }

      if (error)
      {
        selfCopy5 = self;
LABEL_17:
        [selfCopy5 _generateErrorWithErrorCode:0 errorMessage:@"Requested fingerprint version requires a valid PGGraph object." underlyingError:0];
        *error = transformers = 0;
        goto LABEL_19;
      }
    }

    transformers = 0;
    goto LABEL_19;
  }

  if (type)
  {
    if (type == 1)
    {
      v15 = objc_alloc_init(PGFeatureExtractorPCAPrint);
      transformers = [self _featureExtractor:v15 withTransformers:transformersCopy];
    }
  }

  else
  {
    v41 = objc_alloc(MEMORY[0x277D22C30]);
    transformers = [v41 initWithName:&stru_2843F5C58 featureExtractors:MEMORY[0x277CBEBF8]];
  }

LABEL_19:

  return transformers;
}

+ (id)_multiModalFeatureExtractorForMutliModalType:(int64_t)type assetFeatureExtractor:(id)extractor personaVectorFeatureExtractor:(id)featureExtractor graph:(id)graph transformers:(id)transformers error:(id *)error
{
  v380[2] = *MEMORY[0x277D85DE8];
  extractorCopy = extractor;
  featureExtractorCopy = featureExtractor;
  graphCopy = graph;
  transformersCopy = transformers;
  if (type <= 2)
  {
    switch(type)
    {
      case 0:
        v70 = objc_alloc(MEMORY[0x277D22C30]);
        v380[0] = extractorCopy;
        v380[1] = featureExtractorCopy;
        v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v380 count:2];
        transformers = [v70 initWithName:&stru_2843F5C58 featureExtractors:v71];

        goto LABEL_28;
      case 1:
        selfCopy6 = self;
        if (!graphCopy)
        {
          goto LABEL_25;
        }

        v348 = [[PGMeaningFeatureExtractor alloc] initWithVersion:1 error:error];
        v379[0] = v348;
        v341 = [[PGInvariantFamilyFeatureExtractor alloc] initWithError:error];
        v379[1] = v341;
        v333 = [[PGInvariantCoworkerFeatureExtractor alloc] initWithError:error];
        v379[2] = v333;
        v325 = [[PGInvariantPartnerFeatureExtractor alloc] initWithError:error];
        v379[3] = v325;
        v317 = [[PGPublicEventCategoryFeatureExtractor alloc] initWithVersion:1 error:error];
        v379[4] = v317;
        v310 = [[PGBusinessCategoryFeatureExtractor alloc] initWithVersion:1 error:error];
        v379[5] = v310;
        v303 = [[PGInvariantPetFeatureExtractor alloc] initWithVersion:1 error:error];
        v379[6] = v303;
        v296 = [[PGBabyFeatureExtractor alloc] initWithError:error];
        v379[7] = v296;
        v289 = [[PGSceneFeatureExtractor alloc] initWithVersion:1 error:error];
        v379[8] = v289;
        v112 = [[PGMyHomeFeatureExtractor alloc] initWithError:error];
        v379[9] = v112;
        v113 = [[PGMyWorkFeatureExtractor alloc] initWithError:error];
        v379[10] = v113;
        v114 = [[PGMobilityFeatureExtractor alloc] initWithError:error];
        v379[11] = v114;
        v359 = featureExtractorCopy;
        v115 = [[PGPartOfDayFeatureExtractor alloc] initWithError:error];
        v379[12] = v115;
        v116 = [[PGSeasonFeatureExtractor alloc] initWithError:error];
        v379[13] = v116;
        v117 = [[PGWeekendFeatureExtractor alloc] initWithError:error];
        v379[14] = v117;
        v353 = graphCopy;
        v118 = [[PGWeekdayFeatureExtractor alloc] initWithError:error];
        v379[15] = v118;
        v365 = transformersCopy;
        v119 = [[PGPOIFeatureExtractor alloc] initWithVersion:1 error:error];
        v379[16] = v119;
        v120 = [[PGROIFeatureExtractor alloc] initWithError:error];
        v379[17] = v120;
        v121 = [MEMORY[0x277CBEA60] arrayWithObjects:v379 count:18];

        v345 = [selfCopy6 _featureExtractors:v121 withTransformers:v365];

        v122 = objc_alloc_init(PGFeatureExtractorFaceSize);
        v378[0] = v122;
        v123 = objc_alloc_init(PGFeatureExtractorFaceQuality);
        v378[1] = v123;
        v124 = objc_alloc_init(PGFeatureExtractorFaceSmileType);
        v378[2] = v124;
        v125 = objc_alloc_init(PGFeatureExtractorFaceEyesState);
        v378[3] = v125;
        v126 = objc_alloc_init(PGFeatureExtractorFaceAgeType);
        v378[4] = v126;
        v127 = [MEMORY[0x277CBEA60] arrayWithObjects:v378 count:5];

        v185 = [selfCopy6 _featureExtractors:v127 withTransformers:v365];

        v377[0] = extractorCopy;
        v342 = objc_alloc_init(PGFeatureExtractorCartesianLocation);
        v377[1] = v342;
        v334 = [[PGFeatureExtractorFrequentPeople alloc] initWithNumberOfFrequentPeopleToExtract:25];
        v377[2] = v334;
        v326 = objc_alloc_init(PGFeatureExtractorExposureScore);
        v377[3] = v326;
        v318 = objc_alloc_init(PGFeatureExtractorFaceCountScore);
        v377[4] = v318;
        v311 = objc_alloc_init(PGFeatureExtractorActivityScore);
        v377[5] = v311;
        v304 = objc_alloc_init(PGFeatureExtractorVideoScore);
        v377[6] = v304;
        v297 = objc_alloc_init(PGFeatureExtractorBlurrinessScore);
        v377[7] = v297;
        v290 = objc_alloc_init(PGFeatureExtractorAudioClassification);
        v377[8] = v290;
        v283 = objc_alloc_init(PGFeatureExtractorIsFavoriteScore);
        v377[9] = v283;
        v277 = objc_alloc_init(PGFeatureExtractorHasAdjustmentsScore);
        v377[10] = v277;
        v271 = objc_alloc_init(PGFeatureExtractorDurationInSecond);
        v377[11] = v271;
        v266 = objc_alloc_init(PGFeatureExtractorImageAspectRatio);
        v377[12] = v266;
        v261 = objc_alloc_init(PGFeatureExtractorIsScreenRecording);
        v377[13] = v261;
        v256 = objc_alloc_init(PGFeatureExtractorPlayCount);
        v377[14] = v256;
        v251 = objc_alloc_init(PGFeatureExtractorShareCount);
        v377[15] = v251;
        v246 = objc_alloc_init(PGFeatureExtractorViewCount);
        v377[16] = v246;
        v242 = objc_alloc_init(PGFeatureExtractorAutoplaySuggestionScore);
        v377[17] = v242;
        v238 = objc_alloc_init(PGFeatureExtractorTastefullyBlurredScore);
        v377[18] = v238;
        v234 = objc_alloc_init(PGFeatureExtractorFailureScore);
        v377[19] = v234;
        v231 = objc_alloc_init(PGFeatureExtractorAestheticScore);
        v377[20] = v231;
        v228 = objc_alloc_init(PGFeatureExtractorPleasantLightingScore);
        v377[21] = v228;
        v225 = objc_alloc_init(PGFeatureExtractorWellFramedSubjectScore);
        v377[22] = v225;
        v222 = objc_alloc_init(PGFeatureExtractorWellChosenSubjectScore);
        v377[23] = v222;
        v219 = objc_alloc_init(PGFeatureExtractorWellTimedShotScore);
        v377[24] = v219;
        v216 = objc_alloc_init(PGFeatureExtractorSharplyFocusedSubjectScore);
        v377[25] = v216;
        v213 = objc_alloc_init(PGFeatureExtractorHarmoniousColorScore);
        v377[26] = v213;
        v210 = objc_alloc_init(PGFeatureExtractorPleasantReflectionsScore);
        v377[27] = v210;
        v207 = objc_alloc_init(PGFeatureExtractorLivelyColorScore);
        v377[28] = v207;
        v204 = objc_alloc_init(PGFeatureExtractorPleasantSymmetryScore);
        v377[29] = v204;
        v201 = objc_alloc_init(PGFeatureExtractorPleasantPatternScore);
        v377[30] = v201;
        v198 = objc_alloc_init(PGFeatureExtractorImmersivenessScore);
        v377[31] = v198;
        v195 = objc_alloc_init(PGFeatureExtractorPleasantPerspectiveScore);
        v377[32] = v195;
        v192 = objc_alloc_init(PGFeatureExtractorPleasantPostProcessingScore);
        v377[33] = v192;
        v189 = objc_alloc_init(PGFeatureExtractorNoiseScore);
        v377[34] = v189;
        v184 = objc_alloc_init(PGFeatureExtractorPleasantCompositionScore);
        v377[35] = v184;
        v181 = objc_alloc_init(PGFeatureExtractorInterestingSubjectScore);
        v377[36] = v181;
        v178 = objc_alloc_init(PGFeatureExtractorIntrusiveObjectPresenceScore);
        v377[37] = v178;
        v175 = objc_alloc_init(PGFeatureExtractorPleasantCameraTiltScore);
        v377[38] = v175;
        v172 = objc_alloc_init(PGFeatureExtractorLowLightScore);
        v377[39] = v172;
        v169 = objc_alloc_init(PGFeatureExtractorAssetPlaybackStyle);
        v377[40] = v169;
        v166 = objc_alloc_init(PGFeatureExtractorAssetMediaType);
        v377[41] = v166;
        v160 = objc_alloc_init(PGFeatureExtractorAssetMediaSubtype);
        v377[42] = v160;
        v157 = objc_alloc_init(PGFeatureExtractorAssetBurstSelectionType);
        v377[43] = v157;
        v154 = objc_alloc_init(PGFeatureExtractorAssetSourceType);
        v377[44] = v154;
        v151 = objc_alloc_init(PGFeatureExtractorAssetResolution);
        v377[45] = v151;
        v148 = objc_alloc_init(PGFeatureExtractorAssetFormat);
        v377[46] = v148;
        v145 = objc_alloc_init(PGFeatureExtractorAssetImportSource);
        v377[47] = v145;
        v128 = objc_alloc_init(PGFeatureExtractorStandardAspectRatio);
        v377[48] = v128;
        v129 = objc_alloc_init(PGFeatureExtractorLocale);
        v377[49] = v129;
        v130 = objc_alloc_init(PGFeatureExtractorTaboo);
        v377[50] = v130;
        v131 = objc_alloc_init(PGFeatureExtractorPotentialLandmark);
        v377[51] = v131;
        v132 = [PGFeatureExtractorAssetPhotoLibrary alloc];
        v133 = objc_alloc_init(PGFeatureExtractorPhotoLibrarySize);
        v134 = [(PGFeatureExtractorAssetPhotoLibrary *)v132 initWithPhotoLibraryFeatureExtractor:v133];
        v377[52] = v134;
        v377[53] = v359;
        v135 = [PGFeatureExtractorFacesFromAssetAverage alloc];
        v136 = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"FacesAverage" featureExtractors:v185];
        v137 = [(PGFeatureExtractorFacesFromAssetAverage *)v135 initWithFaceFeatureExtractor:v136 name:@"FacesAverage"];
        v377[54] = v137;
        v138 = [PGFeatureExtractorGraphRelations alloc];
        v139 = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"GraphRelations" featureExtractors:v345];
        v140 = [(PGFeatureExtractorGraphRelations *)v138 initWithGraph:v353 featureExtractor:v139];
        v377[55] = v140;
        v163 = [MEMORY[0x277CBEA60] arrayWithObjects:v377 count:56];

        featureExtractorCopy = v359;
        transformersCopy = v365;

        graphCopy = v353;
        v58 = [selfCopy6 _featureExtractors:v163 withTransformers:v365];

        v59 = objc_alloc(MEMORY[0x277D22C30]);
        v60 = @"MultiModal-V1.0";
        break;
      case 2:
        selfCopy6 = self;
        if (!graphCopy)
        {
          goto LABEL_25;
        }

        v344 = [[PGMeaningFeatureExtractor alloc] initWithVersion:1 error:error];
        v376[0] = v344;
        v336 = [[PGPeopleFeatureExtractor alloc] initWithGraph:graphCopy error:error];
        v376[1] = v336;
        v328 = [[PGInvariantFamilyFeatureExtractor alloc] initWithError:error];
        v376[2] = v328;
        v320 = [[PGInvariantCoworkerFeatureExtractor alloc] initWithError:error];
        v376[3] = v320;
        v312 = [[PGInvariantPartnerFeatureExtractor alloc] initWithError:error];
        v376[4] = v312;
        v305 = [[PGPublicEventCategoryFeatureExtractor alloc] initWithVersion:1 error:error];
        v376[5] = v305;
        v298 = [[PGBusinessCategoryFeatureExtractor alloc] initWithVersion:1 error:error];
        v376[6] = v298;
        v291 = [[PGInvariantPetFeatureExtractor alloc] initWithVersion:1 error:error];
        v376[7] = v291;
        v284 = [[PGBabyFeatureExtractor alloc] initWithError:error];
        v376[8] = v284;
        v278 = [[PGSceneFeatureExtractor alloc] initWithVersion:1 error:error];
        v376[9] = v278;
        v272 = [[PGFrequentLocationFeatureExtractor alloc] initWithGraph:graphCopy error:error];
        v376[10] = v272;
        v29 = [[PGMyHomeFeatureExtractor alloc] initWithError:error];
        v376[11] = v29;
        v30 = [[PGMyWorkFeatureExtractor alloc] initWithError:error];
        v376[12] = v30;
        v31 = [[PGMobilityFeatureExtractor alloc] initWithError:error];
        v376[13] = v31;
        v355 = featureExtractorCopy;
        v32 = [[PGPartOfDayFeatureExtractor alloc] initWithError:error];
        v376[14] = v32;
        v350 = graphCopy;
        v33 = [[PGSeasonFeatureExtractor alloc] initWithError:error];
        v376[15] = v33;
        v34 = [[PGWeekendFeatureExtractor alloc] initWithError:error];
        v376[16] = v34;
        v35 = [[PGWeekdayFeatureExtractor alloc] initWithError:error];
        v376[17] = v35;
        v361 = transformersCopy;
        v36 = [[PGPOIFeatureExtractor alloc] initWithVersion:1 error:error];
        v376[18] = v36;
        v37 = [[PGROIFeatureExtractor alloc] initWithError:error];
        v376[19] = v37;
        v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v376 count:20];

        v345 = [selfCopy6 _featureExtractors:v38 withTransformers:v361];

        v39 = objc_alloc_init(PGFeatureExtractorFaceSize);
        v375[0] = v39;
        v40 = objc_alloc_init(PGFeatureExtractorFaceQuality);
        v375[1] = v40;
        v41 = objc_alloc_init(PGFeatureExtractorFaceSmileType);
        v375[2] = v41;
        v42 = objc_alloc_init(PGFeatureExtractorFaceEyesState);
        v375[3] = v42;
        v43 = objc_alloc_init(PGFeatureExtractorFaceAgeType);
        v375[4] = v43;
        v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v375 count:5];

        v185 = [selfCopy6 _featureExtractors:v44 withTransformers:v361];

        v374[0] = extractorCopy;
        v337 = objc_alloc_init(PGFeatureExtractorCartesianLocation);
        v374[1] = v337;
        v329 = [[PGFeatureExtractorFrequentPeople alloc] initWithNumberOfFrequentPeopleToExtract:25];
        v374[2] = v329;
        v321 = objc_alloc_init(PGFeatureExtractorExposureScore);
        v374[3] = v321;
        v313 = objc_alloc_init(PGFeatureExtractorFaceCountScore);
        v374[4] = v313;
        v306 = objc_alloc_init(PGFeatureExtractorActivityScore);
        v374[5] = v306;
        v299 = objc_alloc_init(PGFeatureExtractorVideoScore);
        v374[6] = v299;
        v292 = objc_alloc_init(PGFeatureExtractorBlurrinessScore);
        v374[7] = v292;
        v285 = objc_alloc_init(PGFeatureExtractorAudioClassification);
        v374[8] = v285;
        v279 = objc_alloc_init(PGFeatureExtractorIsFavoriteScore);
        v374[9] = v279;
        v273 = objc_alloc_init(PGFeatureExtractorHasAdjustmentsScore);
        v374[10] = v273;
        v267 = objc_alloc_init(PGFeatureExtractorDurationInSecond);
        v374[11] = v267;
        v262 = objc_alloc_init(PGFeatureExtractorImageAspectRatio);
        v374[12] = v262;
        v257 = objc_alloc_init(PGFeatureExtractorIsScreenRecording);
        v374[13] = v257;
        v252 = objc_alloc_init(PGFeatureExtractorPlayCount);
        v374[14] = v252;
        v247 = objc_alloc_init(PGFeatureExtractorShareCount);
        v374[15] = v247;
        v243 = objc_alloc_init(PGFeatureExtractorViewCount);
        v374[16] = v243;
        v239 = objc_alloc_init(PGFeatureExtractorAutoplaySuggestionScore);
        v374[17] = v239;
        v235 = objc_alloc_init(PGFeatureExtractorTastefullyBlurredScore);
        v374[18] = v235;
        v232 = objc_alloc_init(PGFeatureExtractorFailureScore);
        v374[19] = v232;
        v229 = objc_alloc_init(PGFeatureExtractorAestheticScore);
        v374[20] = v229;
        v226 = objc_alloc_init(PGFeatureExtractorPleasantLightingScore);
        v374[21] = v226;
        v223 = objc_alloc_init(PGFeatureExtractorWellFramedSubjectScore);
        v374[22] = v223;
        v220 = objc_alloc_init(PGFeatureExtractorWellChosenSubjectScore);
        v374[23] = v220;
        v217 = objc_alloc_init(PGFeatureExtractorWellTimedShotScore);
        v374[24] = v217;
        v214 = objc_alloc_init(PGFeatureExtractorSharplyFocusedSubjectScore);
        v374[25] = v214;
        v211 = objc_alloc_init(PGFeatureExtractorHarmoniousColorScore);
        v374[26] = v211;
        v208 = objc_alloc_init(PGFeatureExtractorPleasantReflectionsScore);
        v374[27] = v208;
        v205 = objc_alloc_init(PGFeatureExtractorLivelyColorScore);
        v374[28] = v205;
        v202 = objc_alloc_init(PGFeatureExtractorPleasantSymmetryScore);
        v374[29] = v202;
        v199 = objc_alloc_init(PGFeatureExtractorPleasantPatternScore);
        v374[30] = v199;
        v196 = objc_alloc_init(PGFeatureExtractorImmersivenessScore);
        v374[31] = v196;
        v193 = objc_alloc_init(PGFeatureExtractorPleasantPerspectiveScore);
        v374[32] = v193;
        v190 = objc_alloc_init(PGFeatureExtractorPleasantPostProcessingScore);
        v374[33] = v190;
        v187 = objc_alloc_init(PGFeatureExtractorNoiseScore);
        v374[34] = v187;
        v182 = objc_alloc_init(PGFeatureExtractorPleasantCompositionScore);
        v374[35] = v182;
        v179 = objc_alloc_init(PGFeatureExtractorInterestingSubjectScore);
        v374[36] = v179;
        v176 = objc_alloc_init(PGFeatureExtractorIntrusiveObjectPresenceScore);
        v374[37] = v176;
        v173 = objc_alloc_init(PGFeatureExtractorPleasantCameraTiltScore);
        v374[38] = v173;
        v170 = objc_alloc_init(PGFeatureExtractorLowLightScore);
        v374[39] = v170;
        v167 = objc_alloc_init(PGFeatureExtractorAssetPlaybackStyle);
        v374[40] = v167;
        v164 = objc_alloc_init(PGFeatureExtractorAssetMediaType);
        v374[41] = v164;
        v158 = objc_alloc_init(PGFeatureExtractorAssetMediaSubtype);
        v374[42] = v158;
        v155 = objc_alloc_init(PGFeatureExtractorAssetBurstSelectionType);
        v374[43] = v155;
        v152 = objc_alloc_init(PGFeatureExtractorAssetSourceType);
        v374[44] = v152;
        v149 = objc_alloc_init(PGFeatureExtractorAssetResolution);
        v374[45] = v149;
        v146 = objc_alloc_init(PGFeatureExtractorAssetFormat);
        v374[46] = v146;
        v143 = objc_alloc_init(PGFeatureExtractorAssetImportSource);
        v374[47] = v143;
        v45 = objc_alloc_init(PGFeatureExtractorStandardAspectRatio);
        v374[48] = v45;
        v46 = objc_alloc_init(PGFeatureExtractorLocale);
        v374[49] = v46;
        v47 = objc_alloc_init(PGFeatureExtractorTaboo);
        v374[50] = v47;
        v48 = objc_alloc_init(PGFeatureExtractorPotentialLandmark);
        v374[51] = v48;
        v49 = [PGFeatureExtractorAssetPhotoLibrary alloc];
        v50 = objc_alloc_init(PGFeatureExtractorPhotoLibrarySize);
        v51 = [(PGFeatureExtractorAssetPhotoLibrary *)v49 initWithPhotoLibraryFeatureExtractor:v50];
        v374[52] = v51;
        v374[53] = v355;
        v52 = [PGFeatureExtractorFacesFromAssetAverage alloc];
        v53 = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"FacesAverage" featureExtractors:v185];
        v54 = [(PGFeatureExtractorFacesFromAssetAverage *)v52 initWithFaceFeatureExtractor:v53 name:@"FacesAverage"];
        v374[54] = v54;
        v55 = [PGFeatureExtractorGraphRelations alloc];
        v56 = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"GraphRelations" featureExtractors:v345];
        v57 = [(PGFeatureExtractorGraphRelations *)v55 initWithGraph:v350 featureExtractor:v56];
        v374[55] = v57;
        v161 = [MEMORY[0x277CBEA60] arrayWithObjects:v374 count:56];

        featureExtractorCopy = v355;
        transformersCopy = v361;

        graphCopy = v350;
        v58 = [selfCopy6 _featureExtractors:v161 withTransformers:v361];

        v59 = objc_alloc(MEMORY[0x277D22C30]);
        v60 = @"LibrarySpecific-MultiModal-V1.0";
        break;
      default:
        goto LABEL_28;
    }

    transformers = [v59 initWithName:v60 featureExtractors:v58];

    v102 = v185;
    goto LABEL_24;
  }

  if (type > 4)
  {
    if (type == 5)
    {
      selfCopy6 = self;
      if (graphCopy)
      {
        v103 = [[PGMeaningFeatureExtractor alloc] initWithVersion:2 error:error];
        v369[0] = v103;
        v104 = [[PGMyHomeFeatureExtractor alloc] initWithError:error];
        v369[1] = v104;
        v364 = transformersCopy;
        v105 = [[PGMyWorkFeatureExtractor alloc] initWithError:error];
        v369[2] = v105;
        v358 = featureExtractorCopy;
        v106 = [[PGSocialGroupFeatureExtractor alloc] initWithError:error];
        v369[3] = v106;
        v107 = [[PGROIFeatureExtractor alloc] initWithError:error];
        v369[4] = v107;
        v108 = [[PGInfrequentCountryFeatureExtractor alloc] initWithVersion:1 graph:graphCopy error:error];
        v369[5] = v108;
        v109 = [[PGInfrequentCityFeatureExtractor alloc] initWithVersion:1 graph:graphCopy error:error];
        v369[6] = v109;
        v110 = graphCopy;
        v111 = objc_alloc_init(PGFeatureExtractorMomentNodeSpecialPOI);
        v369[7] = v111;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v369 count:8];

        graphCopy = v110;
        featureExtractorCopy = v358;

        transformersCopy = v364;
        v26 = [selfCopy6 _featureExtractors:v25 withTransformers:v364];
        v27 = objc_alloc(MEMORY[0x277D22C30]);
        v28 = @"MultiModal-MomentNode-Music-V2.0";
        goto LABEL_20;
      }
    }

    else
    {
      if (type != 6)
      {
        goto LABEL_28;
      }

      selfCopy6 = self;
      if (graphCopy)
      {
        v362 = [[PGMeaningMemoryNodeFeatureExtractor alloc] initWithVersion:2 error:error];
        v368[0] = v362;
        v351 = [[PGInvariantFamilyMemoryNodeFeatureExtractor alloc] initWithError:error];
        v368[1] = v351;
        v346 = [[PGInvariantCoworkerMemoryNodeFeatureExtractor alloc] initWithError:error];
        v368[2] = v346;
        v338 = [[PGInvariantPartnerMemoryNodeFeatureExtractor alloc] initWithError:error];
        v368[3] = v338;
        v330 = [[PGInvariantPartnerBiologicalSexMaleMemoryNodeFeatureExtractor alloc] initWithError:error];
        v368[4] = v330;
        v322 = [[PGInvariantPartnerBiologicalSexFemaleMemoryNodeFeatureExtractor alloc] initWithError:error];
        v368[5] = v322;
        v314 = [[PGInvariantPetMemoryNodeFeatureExtractor alloc] initWithVersion:2 error:error];
        v368[6] = v314;
        v307 = [[PGBabyMemoryNodeFeatureExtractor alloc] initWithError:error];
        v368[7] = v307;
        v300 = [[PGInvariantMotherMemoryNodeFeatureExtractor alloc] initWithError:error];
        v368[8] = v300;
        v293 = [[PGInvariantFatherMemoryNodeFeatureExtractor alloc] initWithError:error];
        v368[9] = v293;
        v286 = [[PGInvariantDaughterMemoryNodeFeatureExtractor alloc] initWithError:error];
        v368[10] = v286;
        v280 = [[PGInvariantSonMemoryNodeFeatureExtractor alloc] initWithError:error];
        v368[11] = v280;
        v274 = [[PGInvariantSisterMemoryNodeFeatureExtractor alloc] initWithError:error];
        v368[12] = v274;
        v268 = [[PGInvariantBrotherMemoryNodeFeatureExtractor alloc] initWithError:error];
        v368[13] = v268;
        v263 = [[PGInvariantMyFriendMemoryNodeFeatureExtractor alloc] initWithError:error];
        v368[14] = v263;
        v258 = [[PGChildMemoryNodeFeatureExtractor alloc] initWithError:error];
        v368[15] = v258;
        v253 = [[PGSocialGroupMemoryNodeFeatureExtractor alloc] initWithError:error];
        v368[16] = v253;
        v248 = [[PGOverTheYearsMemoryNodeFeatureExtractor alloc] initWithVersion:1 error:error];
        v368[17] = v248;
        v61 = [[PGCelebratedHolidayMemoryNodeFeatureExtractor alloc] initWithVersion:1 error:error];
        v368[18] = v61;
        v356 = featureExtractorCopy;
        v62 = [[PGSceneMemoryNodeFeatureExtractor alloc] initWithVersion:4 error:error];
        v368[19] = v62;
        v63 = [[PGROIMemoryNodeFeatureExtractor alloc] initWithError:error];
        v368[20] = v63;
        v64 = [[PGCityMemoryNodeFeatureExtractor alloc] initWithVersion:1 error:error];
        v368[21] = v64;
        v65 = graphCopy;
        v66 = [[PGCountryMemoryNodeFeatureExtractor alloc] initWithVersion:1 graph:graphCopy error:error];
        v368[22] = v66;
        v67 = [[PGAOIMemoryNodeFeatureExtractor alloc] initWithError:error];
        v368[23] = v67;
        v68 = transformersCopy;
        v69 = [[PGAudioMemoryNodeFeatureExtractor alloc] initWithVersion:1 error:error];
        v368[24] = v69;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v368 count:25];

        transformersCopy = v68;
        graphCopy = v65;

        featureExtractorCopy = v356;
        v26 = [selfCopy6 _featureExtractors:v25 withTransformers:v68];
        v27 = objc_alloc(MEMORY[0x277D22C30]);
        v28 = @"MultiModal-MemoryNode-Music-V1.0";
        goto LABEL_20;
      }
    }

    goto LABEL_25;
  }

  if (type != 3)
  {
    selfCopy6 = self;
    if (graphCopy)
    {
      v360 = [[PGMeaningFeatureExtractor alloc] initWithVersion:2 error:error];
      v370[0] = v360;
      v354 = [[PGPersonActivityMeaningFeatureExtractor alloc] initWithVersion:1 error:error];
      v370[1] = v354;
      v349 = [[PGInvariantFamilyFeatureExtractor alloc] initWithError:error];
      v370[2] = v349;
      v343 = [[PGSocialGroupFeatureExtractor alloc] initWithError:error];
      v370[3] = v343;
      v335 = [[PGInvariantPetFeatureExtractor alloc] initWithVersion:2 error:error];
      v370[4] = v335;
      v327 = [[PGSceneFeatureExtractor alloc] initWithVersion:4 error:error];
      v370[5] = v327;
      v319 = [[PGMyHomeFeatureExtractor alloc] initWithError:error];
      v370[6] = v319;
      v17 = [[PGMyWorkFeatureExtractor alloc] initWithError:error];
      v370[7] = v17;
      v18 = [[PGROIFeatureExtractor alloc] initWithError:error];
      v370[8] = v18;
      v19 = [[PGInfrequentCountryFeatureExtractor alloc] initWithVersion:1 graph:graphCopy error:error];
      v370[9] = v19;
      v20 = [[PGInfrequentCityFeatureExtractor alloc] initWithVersion:1 graph:graphCopy error:error];
      v370[10] = v20;
      v21 = transformersCopy;
      v22 = [[PGCelebratedHolidayFeatureExtractor alloc] initWithVersion:1 error:error];
      v370[11] = v22;
      v23 = featureExtractorCopy;
      v24 = objc_alloc_init(PGFeatureExtractorMomentNodeSpecialPOI);
      v370[12] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v370 count:13];

      featureExtractorCopy = v23;
      transformersCopy = v21;

      v26 = [selfCopy6 _featureExtractors:v25 withTransformers:v21];
      v27 = objc_alloc(MEMORY[0x277D22C30]);
      v28 = @"MultiModal-MomentNode-Music-V1.0";
LABEL_20:
      transformers = [v27 initWithName:v28 featureExtractors:v26];

      goto LABEL_28;
    }

    goto LABEL_25;
  }

  selfCopy6 = self;
  if (graphCopy)
  {
    v347 = [[PGMeaningFeatureExtractor alloc] initWithVersion:2 error:error];
    v373[0] = v347;
    v339 = [[PGPersonActivityMeaningFeatureExtractor alloc] initWithVersion:1 error:error];
    v373[1] = v339;
    v331 = [[PGInvariantFamilyFeatureExtractor alloc] initWithError:error];
    v373[2] = v331;
    v323 = [[PGInvariantCoworkerFeatureExtractor alloc] initWithError:error];
    v373[3] = v323;
    v315 = [[PGInvariantPartnerFeatureExtractor alloc] initWithError:error];
    v373[4] = v315;
    v308 = [[PGInvariantBrotherFeatureExtractor alloc] initWithError:error];
    v373[5] = v308;
    v301 = [[PGInvariantSisterFeatureExtractor alloc] initWithError:error];
    v373[6] = v301;
    v294 = [[PGInvariantMotherFeatureExtractor alloc] initWithError:error];
    v373[7] = v294;
    v287 = [[PGInvariantFatherFeatureExtractor alloc] initWithError:error];
    v373[8] = v287;
    v281 = [[PGInvariantSonFeatureExtractor alloc] initWithError:error];
    v373[9] = v281;
    v275 = [[PGInvariantDaughterFeatureExtractor alloc] initWithError:error];
    v373[10] = v275;
    v269 = [[PGPublicEventCategoryFeatureExtractor alloc] initWithVersion:2 error:error];
    v373[11] = v269;
    v264 = [[PGBusinessCategoryFeatureExtractor alloc] initWithVersion:2 error:error];
    v373[12] = v264;
    v259 = [[PGInvariantPetFeatureExtractor alloc] initWithVersion:2 error:error];
    v373[13] = v259;
    v254 = [[PGBabyFeatureExtractor alloc] initWithError:error];
    v373[14] = v254;
    v249 = [[PGSceneFeatureExtractor alloc] initWithVersion:2 error:error];
    v373[15] = v249;
    v244 = [[PGMyHomeFeatureExtractor alloc] initWithError:error];
    v373[16] = v244;
    v240 = [[PGMyWorkFeatureExtractor alloc] initWithError:error];
    v373[17] = v240;
    v236 = [[PGMobilityFeatureExtractor alloc] initWithError:error];
    v373[18] = v236;
    v72 = [[PGPartOfDayFeatureExtractor alloc] initWithError:error];
    v373[19] = v72;
    v73 = [[PGSeasonFeatureExtractor alloc] initWithError:error];
    v373[20] = v73;
    v74 = [[PGWeekendFeatureExtractor alloc] initWithError:error];
    v373[21] = v74;
    v357 = featureExtractorCopy;
    v75 = [[PGWeekdayFeatureExtractor alloc] initWithError:error];
    v373[22] = v75;
    v76 = [[PGPOIFeatureExtractor alloc] initWithVersion:2 error:error];
    v373[23] = v76;
    v77 = [[PGROIFeatureExtractor alloc] initWithError:error];
    v373[24] = v77;
    v78 = [[PGInfrequentCountryFeatureExtractor alloc] initWithVersion:1 graph:graphCopy error:error];
    v373[25] = v78;
    v363 = transformersCopy;
    v79 = [[PGCityFeatureExtractor alloc] initWithVersion:1 error:error];
    v373[26] = v79;
    v352 = graphCopy;
    v80 = [[PGCelebratedHolidayFeatureExtractor alloc] initWithVersion:1 error:error];
    v373[27] = v80;
    v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v373 count:28];

    v345 = [selfCopy6 _featureExtractors:v81 withTransformers:v363];

    v82 = objc_alloc_init(PGFeatureExtractorFaceSize);
    v372[0] = v82;
    v83 = objc_alloc_init(PGFeatureExtractorFaceQuality);
    v372[1] = v83;
    v84 = objc_alloc_init(PGFeatureExtractorFaceSmileType);
    v372[2] = v84;
    v85 = objc_alloc_init(PGFeatureExtractorFaceEyesState);
    v372[3] = v85;
    v86 = objc_alloc_init(PGFeatureExtractorFaceAgeType);
    v372[4] = v86;
    v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v372 count:5];

    v183 = [selfCopy6 _featureExtractors:v87 withTransformers:v363];

    v371[0] = extractorCopy;
    v340 = objc_alloc_init(PGFeatureExtractorCartesianLocation);
    v371[1] = v340;
    v332 = [[PGFeatureExtractorFrequentPeople alloc] initWithNumberOfFrequentPeopleToExtract:25];
    v371[2] = v332;
    v324 = objc_alloc_init(PGFeatureExtractorExposureScore);
    v371[3] = v324;
    v316 = objc_alloc_init(PGFeatureExtractorFaceCountScore);
    v371[4] = v316;
    v309 = objc_alloc_init(PGFeatureExtractorActivityScore);
    v371[5] = v309;
    v302 = objc_alloc_init(PGFeatureExtractorVideoScore);
    v371[6] = v302;
    v295 = objc_alloc_init(PGFeatureExtractorBlurrinessScore);
    v371[7] = v295;
    v288 = objc_alloc_init(PGFeatureExtractorAudioClassification);
    v371[8] = v288;
    v282 = objc_alloc_init(PGFeatureExtractorIsFavoriteScore);
    v371[9] = v282;
    v276 = objc_alloc_init(PGFeatureExtractorHasAdjustmentsScore);
    v371[10] = v276;
    v270 = objc_alloc_init(PGFeatureExtractorDurationInSecond);
    v371[11] = v270;
    v265 = objc_alloc_init(PGFeatureExtractorImageAspectRatio);
    v371[12] = v265;
    v260 = objc_alloc_init(PGFeatureExtractorIsScreenRecording);
    v371[13] = v260;
    v255 = objc_alloc_init(PGFeatureExtractorPlayCount);
    v371[14] = v255;
    v250 = objc_alloc_init(PGFeatureExtractorShareCount);
    v371[15] = v250;
    v245 = objc_alloc_init(PGFeatureExtractorViewCount);
    v371[16] = v245;
    v241 = objc_alloc_init(PGFeatureExtractorAutoplaySuggestionScore);
    v371[17] = v241;
    v237 = objc_alloc_init(PGFeatureExtractorTastefullyBlurredScore);
    v371[18] = v237;
    v233 = objc_alloc_init(PGFeatureExtractorFailureScore);
    v371[19] = v233;
    v230 = objc_alloc_init(PGFeatureExtractorAestheticScore);
    v371[20] = v230;
    v227 = objc_alloc_init(PGFeatureExtractorPleasantLightingScore);
    v371[21] = v227;
    v224 = objc_alloc_init(PGFeatureExtractorWellFramedSubjectScore);
    v371[22] = v224;
    v221 = objc_alloc_init(PGFeatureExtractorWellChosenSubjectScore);
    v371[23] = v221;
    v218 = objc_alloc_init(PGFeatureExtractorWellTimedShotScore);
    v371[24] = v218;
    v215 = objc_alloc_init(PGFeatureExtractorSharplyFocusedSubjectScore);
    v371[25] = v215;
    v212 = objc_alloc_init(PGFeatureExtractorHarmoniousColorScore);
    v371[26] = v212;
    v209 = objc_alloc_init(PGFeatureExtractorPleasantReflectionsScore);
    v371[27] = v209;
    v206 = objc_alloc_init(PGFeatureExtractorLivelyColorScore);
    v371[28] = v206;
    v203 = objc_alloc_init(PGFeatureExtractorPleasantSymmetryScore);
    v371[29] = v203;
    v200 = objc_alloc_init(PGFeatureExtractorPleasantPatternScore);
    v371[30] = v200;
    v197 = objc_alloc_init(PGFeatureExtractorImmersivenessScore);
    v371[31] = v197;
    v194 = objc_alloc_init(PGFeatureExtractorPleasantPerspectiveScore);
    v371[32] = v194;
    v191 = objc_alloc_init(PGFeatureExtractorPleasantPostProcessingScore);
    v371[33] = v191;
    v188 = objc_alloc_init(PGFeatureExtractorNoiseScore);
    v371[34] = v188;
    v186 = objc_alloc_init(PGFeatureExtractorPleasantCompositionScore);
    v371[35] = v186;
    v180 = objc_alloc_init(PGFeatureExtractorInterestingSubjectScore);
    v371[36] = v180;
    v177 = objc_alloc_init(PGFeatureExtractorIntrusiveObjectPresenceScore);
    v371[37] = v177;
    v174 = objc_alloc_init(PGFeatureExtractorPleasantCameraTiltScore);
    v371[38] = v174;
    v171 = objc_alloc_init(PGFeatureExtractorLowLightScore);
    v371[39] = v171;
    v168 = objc_alloc_init(PGFeatureExtractorAssetPlaybackStyle);
    v371[40] = v168;
    v165 = objc_alloc_init(PGFeatureExtractorAssetMediaType);
    v371[41] = v165;
    v162 = objc_alloc_init(PGFeatureExtractorAssetMediaSubtype);
    v371[42] = v162;
    v156 = objc_alloc_init(PGFeatureExtractorAssetBurstSelectionType);
    v371[43] = v156;
    v153 = objc_alloc_init(PGFeatureExtractorAssetSourceType);
    v371[44] = v153;
    v150 = objc_alloc_init(PGFeatureExtractorAssetResolution);
    v371[45] = v150;
    v147 = objc_alloc_init(PGFeatureExtractorAssetFormat);
    v371[46] = v147;
    v144 = objc_alloc_init(PGFeatureExtractorAssetImportSource);
    v371[47] = v144;
    v142 = objc_alloc_init(PGFeatureExtractorStandardAspectRatio);
    v371[48] = v142;
    v88 = objc_alloc_init(PGFeatureExtractorLocale);
    v371[49] = v88;
    v89 = objc_alloc_init(PGFeatureExtractorTaboo);
    v371[50] = v89;
    v90 = objc_alloc_init(PGFeatureExtractorPotentialLandmark);
    v371[51] = v90;
    v91 = [PGFeatureExtractorAssetPhotoLibrary alloc];
    v92 = objc_alloc_init(PGFeatureExtractorPhotoLibrarySize);
    v93 = [(PGFeatureExtractorAssetPhotoLibrary *)v91 initWithPhotoLibraryFeatureExtractor:v92];
    v371[52] = v93;
    v94 = [[PGFeatureExtractorAssetSpecialPOI alloc] initWithGraph:v352];
    v371[53] = v94;
    v95 = [PGFeatureExtractorFacesFromAssetAverage alloc];
    v96 = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"FacesAverage" featureExtractors:v183];
    v97 = [(PGFeatureExtractorFacesFromAssetAverage *)v95 initWithFaceFeatureExtractor:v96 name:@"FacesAverage"];
    v371[54] = v97;
    v98 = [PGFeatureExtractorGraphRelations alloc];
    v99 = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"GraphRelations" featureExtractors:v345];
    v100 = [(PGFeatureExtractorGraphRelations *)v98 initWithGraph:v352 featureExtractor:v99];
    v371[55] = v100;
    v371[56] = v357;
    v159 = [MEMORY[0x277CBEA60] arrayWithObjects:v371 count:57];

    graphCopy = v352;
    featureExtractorCopy = v357;

    transformersCopy = v363;
    v101 = [selfCopy6 _featureExtractors:v159 withTransformers:v363];

    transformers = [objc_alloc(MEMORY[0x277D22C30]) initWithName:@"MultiModal-V2.0" featureExtractors:v101];
    v102 = v183;
LABEL_24:

    goto LABEL_28;
  }

LABEL_25:
  if (error)
  {
    [selfCopy6 _generateErrorWithErrorCode:0 errorMessage:@"Requested fingerprint version requires a valid PGGraph object." underlyingError:0];
    *error = transformers = 0;
  }

  else
  {
    transformers = 0;
  }

LABEL_28:

  return transformers;
}

+ (id)_assetPrintFeatureExtractorForAssetPrintType:(int64_t)type transformers:(id)transformers error:(id *)error
{
  transformersCopy = transformers;
  if (type > 1)
  {
    if (type == 2)
    {
      _clipprintFeatureExtractorInstance = objc_alloc_init(PGFeatureExtractorPCAPrint);
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_11;
      }

      _clipprintFeatureExtractorInstance = [self _clipprintFeatureExtractorInstance];
    }
  }

  else
  {
    if (!type)
    {
      v10 = objc_alloc(MEMORY[0x277D22C30]);
      v5 = [v10 initWithName:&stru_2843F5C58 featureExtractors:MEMORY[0x277CBEBF8]];
      goto LABEL_11;
    }

    if (type != 1)
    {
      goto LABEL_11;
    }

    _clipprintFeatureExtractorInstance = [self _sceneprintFeatureExtractorInstance];
  }

  v11 = _clipprintFeatureExtractorInstance;
  v5 = [self _featureExtractor:_clipprintFeatureExtractorInstance withTransformers:transformersCopy];

LABEL_11:

  return v5;
}

+ (void)resetPreCalculatedFeatures
{
  +[PGFeatureExtractorPhotoLibraryAverage resetPreCalculatedFeatureVector];

  +[PGFeatureExtractorPhotoLibrarySize resetPreCalculatedPhotoLibrarySize];
}

+ (id)fetchOptionPropertySetForFingerprintVersion:(int64_t)version
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = version + 55;
  if ((version - 201) <= 0x1C)
  {
    if (((1 << v3) & 0x11003FFC) != 0)
    {
      goto LABEL_11;
    }

    if (((1 << v3) & 3) != 0)
    {
      goto LABEL_17;
    }
  }

  if (version > 0x19)
  {
    goto LABEL_3;
  }

  if (((1 << version) & 0x200F7F8) != 0)
  {
LABEL_11:
    v6 = *MEMORY[0x277CD9A80];
    v13 = *MEMORY[0x277CD9B18];
    v14 = v6;
    v7 = *MEMORY[0x277CD9AD0];
    v15 = *MEMORY[0x277CD9B28];
    v16 = v7;
    v8 = *MEMORY[0x277CD9AB0];
    v17 = *MEMORY[0x277CD9A60];
    v18 = v8;
    v9 = MEMORY[0x277CBEA60];
    v10 = &v13;
    v11 = 6;
LABEL_12:
    v4 = [v9 arrayWithObjects:v10 count:{v11, v13, v14, v15, v16, v17, v18, v19, v20}];
    goto LABEL_13;
  }

  if (((1 << version) & 6) != 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  v4 = 0;
  v5 = version - 101;
  if ((version - 101) > 0x18)
  {
    goto LABEL_13;
  }

  if (((1 << v5) & 0x1003FFC) != 0)
  {
    goto LABEL_11;
  }

  if (((1 << v5) & 3) != 0)
  {
LABEL_17:
    v19 = *MEMORY[0x277CD9B18];
    v9 = MEMORY[0x277CBEA60];
    v10 = &v19;
    v11 = 1;
    goto LABEL_12;
  }

LABEL_13:

  return v4;
}

+ (id)featureExtractorForFingerprintVersion:(int64_t)version withGraph:(id)graph withTransformers:(id)transformers error:(id *)error
{
  graphCopy = graph;
  transformersCopy = transformers;
  v12 = 0;
  if (!(!v14 & v13))
  {
    v16 = 0;
    v17 = 0;
    switch(version)
    {
      case 201:
        goto LABEL_9;
      case 202:
        goto LABEL_17;
      case 203:
        goto LABEL_15;
      case 204:
        goto LABEL_18;
      case 205:
        goto LABEL_20;
      case 206:
        goto LABEL_14;
      case 207:
        goto LABEL_23;
      case 208:
        goto LABEL_13;
      case 209:
        goto LABEL_12;
      case 210:
        goto LABEL_11;
      case 211:
        goto LABEL_10;
      case 212:
        goto LABEL_26;
      case 213:
        goto LABEL_22;
      case 214:
        goto LABEL_27;
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
        goto LABEL_30;
      case 225:
        goto LABEL_16;
      case 226:
        v12 = 0;
        v17 = 0;
        v16 = 4;
        goto LABEL_30;
      case 227:
        v12 = 0;
        v17 = 0;
        v16 = 5;
        goto LABEL_30;
      case 228:
        v12 = 0;
        v17 = 0;
        v16 = 6;
        goto LABEL_30;
      case 229:
        v12 = 0;
        v16 = 0;
        v17 = 3;
        goto LABEL_30;
      default:
        JUMPOUT(0);
    }
  }

  v16 = 0;
  v17 = 0;
  switch(version)
  {
    case 0:
      if (error)
      {
        [self _generateErrorWithErrorCode:2 errorMessage:@"Cannot produce feature extractor for PGFingerprintVersionUnknown." underlyingError:0];
        *error = v15 = 0;
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_42;
    case 1:
LABEL_9:
      v12 = 0;
      v16 = 0;
      goto LABEL_29;
    case 2:
LABEL_17:
      v12 = 0;
      v16 = 0;
      goto LABEL_25;
    case 3:
LABEL_15:
      v12 = 0;
      goto LABEL_24;
    case 4:
LABEL_18:
      v12 = 0;
      v17 = 1;
      goto LABEL_19;
    case 5:
LABEL_20:
      v12 = 0;
      v17 = 2;
      goto LABEL_21;
    case 6:
LABEL_14:
      v12 = 0;
      goto LABEL_28;
    case 7:
LABEL_23:
      v12 = 1;
LABEL_24:
      v16 = 1;
      goto LABEL_25;
    case 8:
LABEL_13:
      v16 = 1;
      v12 = 2;
      goto LABEL_25;
    case 9:
LABEL_12:
      v16 = 2;
      v12 = 1;
LABEL_25:
      v17 = 1;
      break;
    case 10:
LABEL_11:
      v17 = 1;
      v12 = 2;
LABEL_19:
      v16 = 2;
      break;
    case 11:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
      break;
    case 12:
LABEL_10:
      v17 = 2;
      v12 = 1;
LABEL_21:
      v16 = 1;
      break;
    case 13:
LABEL_26:
      v16 = 1;
      v12 = 2;
      goto LABEL_29;
    case 14:
LABEL_22:
      v16 = 2;
      v12 = 1;
      goto LABEL_29;
    case 15:
LABEL_27:
      v12 = 2;
LABEL_28:
      v16 = 2;
LABEL_29:
      v17 = 2;
      break;
    case 25:
LABEL_16:
      v12 = 0;
      v17 = 2;
      v16 = 3;
      break;
    default:
      v16 = 0;
      v17 = 0;
      switch(version)
      {
        case 'e':
          goto LABEL_9;
        case 'f':
          goto LABEL_17;
        case 'g':
          goto LABEL_15;
        case 'h':
          goto LABEL_18;
        case 'i':
          goto LABEL_20;
        case 'j':
          goto LABEL_14;
        case 'k':
          goto LABEL_23;
        case 'l':
          goto LABEL_13;
        case 'm':
          goto LABEL_12;
        case 'n':
          goto LABEL_11;
        case 'o':
          goto LABEL_10;
        case 'p':
          goto LABEL_26;
        case 'q':
          goto LABEL_22;
        case 'r':
          goto LABEL_27;
        case '}':
          goto LABEL_16;
        default:
          goto LABEL_30;
      }
  }

LABEL_30:
  v18 = [self _assetPrintFeatureExtractorForAssetPrintType:v17 transformers:transformersCopy error:error];
  if (v18)
  {
    v19 = [self fetchOptionPropertySetForFingerprintVersion:version];
    v20 = [self _personaVectorFeatureExtractorForPersonaVectorType:v12 fetchOptionPropertySet:v19 graph:graphCopy transformers:transformersCopy error:error];
    if (v20)
    {
      v15 = [self _multiModalFeatureExtractorForMutliModalType:v16 assetFeatureExtractor:v18 personaVectorFeatureExtractor:v20 graph:graphCopy transformers:transformersCopy error:error];
      if (v15)
      {
        if ([self isMomentNodeFingerprintVersion:version])
        {
          v21 = [self _featureExtractor:v15 withTransformers:transformersCopy];

          v15 = v21;
        }

        if (([self isMomentFingerprintVersion:version] & 1) != 0 || objc_msgSend(self, "isMemoryFingerprintVersion:", version))
        {
          v22 = [self nameForFingerprintVersion:version];
          v23 = [[PGFeatureExtractorAssetCollectionAverage alloc] initWithAssetFeatureExtractor:v15 assetFetchOptionPropertySet:v19 name:v22];
          v24 = [self _featureExtractor:v23 withTransformers:transformersCopy];

          v15 = v24;
        }
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_42:

  return v15;
}

+ (int64_t)fingerprintVersionForName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    if ([@"sceneprint-pca-256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 1;
    }

    else if ([@"sceneprint-2048_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 2;
    }

    else if ([@"Asset-Scene2048-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 3;
    }

    else if ([@"Asset-Scene2048-LibrarySpecific-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 4;
    }

    else if ([@"Asset-ScenePCA256-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 5;
    }

    else if ([@"Asset-ScenePCA256-LibrarySpecific-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 6;
    }

    else if ([@"moment-average-sceneprint-pca-256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 101;
    }

    else if ([@"moment-average-sceneprint-2048_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 102;
    }

    else if ([@"MomentAverage-Scene2048-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 103;
    }

    else if ([@"MomentAverage-Scene2048-LibrarySpecific-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 104;
    }

    else if ([@"MomentAverage-ScenePCA256-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 105;
    }

    else if ([@"MomentAverage-ScenePCA256-LibrarySpecific-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 106;
    }

    else if ([@"memory-average-sceneprint-pca-256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 201;
    }

    else if ([@"memory-average-sceneprint-2048_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 202;
    }

    else if ([@"MemoryAverage-Scene2048-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 203;
    }

    else if ([@"MemoryAverage-Scene2048-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 204;
    }

    else if ([@"MemoryAverage-ScenePCA256-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 205;
    }

    else if ([@"MemoryAverage-ScenePCA256-MultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 206;
    }

    else if ([@"Asset-Scene2048-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 7;
    }

    else if ([@"Asset-Scene2048-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 8;
    }

    else if ([@"Asset-Scene2048-LibrarySpecific-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 9;
    }

    else if ([@"Asset-Scene2048-LibrarySpecific-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 10;
    }

    else if ([@"Asset-ScenePCA256-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 12;
    }

    else if ([@"Asset-ScenePCA256-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 13;
    }

    else if ([@"Asset-ScenePCA256-LibrarySpecific-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 14;
    }

    else if ([@"Asset-ScenePCA256-LibrarySpecific-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 15;
    }

    else if ([@"MomentAverage-Scene2048-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 107;
    }

    else if ([@"MomentAverage-Scene2048-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 108;
    }

    else if ([@"MomentAverage-Scene2048-LibrarySpecific-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 109;
    }

    else if ([@"MomentAverage-Scene2048-LibrarySpecific-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 110;
    }

    else if ([@"MomentAverage-ScenePCA256-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 111;
    }

    else if ([@"MomentAverage-ScenePCA256-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 112;
    }

    else if ([@"MomentAverage-ScenePCA256-LibrarySpecific-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 113;
    }

    else if ([@"MomentAverage-ScenePCA256-LibrarySpecific-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 114;
    }

    else if ([@"MemoryAverage-Scene2048-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 207;
    }

    else if ([@"MemoryAverage-Scene2048-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 208;
    }

    else if ([@"MemoryAverage-Scene2048-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 209;
    }

    else if ([@"MemoryAverage-Scene2048-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 210;
    }

    else if ([@"MemoryAverage-ScenePCA256-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 211;
    }

    else if ([@"MemoryAverage-ScenePCA256-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 212;
    }

    else if ([@"MemoryAverage-ScenePCA256-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 213;
    }

    else if ([@"MemoryAverage-ScenePCA256-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 214;
    }

    else if ([@"Asset-ScenePCA256-MultiModal-V2.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 25;
    }

    else if ([@"MomentAverage-ScenePCA256-MultiModal-V2.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 125;
    }

    else if ([@"MemoryAverage-ScenePCA256-MultiModal-V2.0_DEPRECATED" isEqualToString:nameCopy])
    {
      v4 = 225;
    }

    else if ([@"MomentNode-MultiModalMusic-V1.0" isEqualToString:nameCopy])
    {
      v4 = 226;
    }

    else if ([@"MomentNode-MultiModalMusic-V2.0" isEqualToString:nameCopy])
    {
      v4 = 227;
    }

    else if ([@"sceneprint-clip-768" isEqualToString:nameCopy])
    {
      v4 = 229;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)nameForFingerprintVersion:(int64_t)version
{
  result = 0;
  if (!v4 & v3)
  {
    switch(version)
    {
      case 1:
        result = @"sceneprint-pca-256_DEPRECATED";
        break;
      case 2:
        result = @"sceneprint-2048_DEPRECATED";
        break;
      case 3:
        result = @"Asset-Scene2048-MultiModal-V1.0_DEPRECATED";
        break;
      case 4:
        result = @"Asset-Scene2048-LibrarySpecific-MultiModal-V1.0_DEPRECATED";
        break;
      case 5:
        result = @"Asset-ScenePCA256-MultiModal-V1.0_DEPRECATED";
        break;
      case 6:
        result = @"Asset-ScenePCA256-LibrarySpecific-MultiModal-V1.0_DEPRECATED";
        break;
      case 7:
        result = @"Asset-Scene2048-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED";
        break;
      case 8:
        result = @"Asset-Scene2048-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED";
        break;
      case 9:
        result = @"Asset-Scene2048-LibrarySpecific-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED";
        break;
      case 10:
        result = @"Asset-Scene2048-LibrarySpecific-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED";
        break;
      case 11:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
        return result;
      case 12:
        result = @"Asset-ScenePCA256-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED";
        break;
      case 13:
        result = @"Asset-ScenePCA256-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED";
        break;
      case 14:
        result = @"Asset-ScenePCA256-LibrarySpecific-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED";
        break;
      case 15:
        result = @"Asset-ScenePCA256-LibrarySpecific-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED";
        break;
      case 25:
        result = @"Asset-ScenePCA256-MultiModal-V2.0_DEPRECATED";
        break;
      default:
        switch(version)
        {
          case 'e':
            result = @"moment-average-sceneprint-pca-256_DEPRECATED";
            break;
          case 'f':
            result = @"moment-average-sceneprint-2048_DEPRECATED";
            break;
          case 'g':
            result = @"MomentAverage-Scene2048-MultiModal-V1.0_DEPRECATED";
            break;
          case 'h':
            result = @"MomentAverage-Scene2048-LibrarySpecific-MultiModal-V1.0_DEPRECATED";
            break;
          case 'i':
            result = @"MomentAverage-ScenePCA256-MultiModal-V1.0_DEPRECATED";
            break;
          case 'j':
            result = @"MomentAverage-ScenePCA256-LibrarySpecific-MultiModal-V1.0_DEPRECATED";
            break;
          case 'k':
            result = @"MomentAverage-Scene2048-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED";
            break;
          case 'l':
            result = @"MomentAverage-Scene2048-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED";
            break;
          case 'm':
            result = @"MomentAverage-Scene2048-LibrarySpecific-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED";
            break;
          case 'n':
            result = @"MomentAverage-Scene2048-LibrarySpecific-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED";
            break;
          case 'o':
            result = @"MomentAverage-ScenePCA256-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED";
            break;
          case 'p':
            result = @"MomentAverage-ScenePCA256-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED";
            break;
          case 'q':
            result = @"MomentAverage-ScenePCA256-LibrarySpecific-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED";
            break;
          case 'r':
            result = @"MomentAverage-ScenePCA256-LibrarySpecific-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED";
            break;
          case '}':
            result = @"MomentAverage-ScenePCA256-MultiModal-V2.0_DEPRECATED";
            break;
          default:
            return result;
        }

        break;
    }
  }

  else
  {
    switch(version)
    {
      case 201:
        result = @"memory-average-sceneprint-pca-256_DEPRECATED";
        break;
      case 202:
        result = @"memory-average-sceneprint-2048_DEPRECATED";
        break;
      case 203:
      case 204:
        result = @"MemoryAverage-Scene2048-MultiModal-V1.0_DEPRECATED";
        break;
      case 205:
      case 206:
        result = @"MemoryAverage-ScenePCA256-MultiModal-V1.0_DEPRECATED";
        break;
      case 207:
      case 209:
        result = @"MemoryAverage-Scene2048-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED";
        break;
      case 208:
      case 210:
        result = @"MemoryAverage-Scene2048-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED";
        break;
      case 211:
      case 213:
        result = @"MemoryAverage-ScenePCA256-MultiModal-V1.0-PersonaVectorPCA256_DEPRECATED";
        break;
      case 212:
      case 214:
        result = @"MemoryAverage-ScenePCA256-MultiModal-V1.0-PersonaVectorMultiModal-V1.0_DEPRECATED";
        break;
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
        return result;
      case 225:
        result = @"MemoryAverage-ScenePCA256-MultiModal-V2.0_DEPRECATED";
        break;
      case 226:
        result = @"MomentNode-MultiModalMusic-V1.0";
        break;
      case 227:
        result = @"MomentNode-MultiModalMusic-V2.0";
        break;
      case 228:
        result = @"MemoryNode-MultiModalMusic-V1.0";
        break;
      case 229:
        result = @"sceneprint-clip-768";
        break;
      default:
        JUMPOUT(0);
    }
  }

  return result;
}

@end