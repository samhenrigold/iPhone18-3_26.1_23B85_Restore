@interface CESRSpeechItemRanker_AppIntentsIndexedEntity
+ (BOOL)_isEntityAllowListed:(id)listed bundleId:(id)id appEntityConfig:(id)config;
+ (BOOL)_shouldAcceptEntity:(id)entity bundleId:(id)id appEntityConfig:(id)config entityTypes:(id)types numEntitiesRejected:(unint64_t *)rejected numEmptyDisplayRepresentations:(unint64_t *)representations;
+ (id)_itemCountsFromSetDict:(id)dict appEntityConfig:(id)config numDonatingFirstPartyApps:(unint64_t *)apps numDonatingThirdPartyApps:(unint64_t *)partyApps totalNumEntitiesPresent:(unint64_t *)present itemCountSum:(unint64_t *)sum;
+ (id)_transformedItemCountsFromItemCounts:(id)counts transformationFunction:(unint64_t)function transformationFunctionAlpha:(double)alpha transformedCountSum:(double *)sum;
+ (unint64_t)_bundleQuotaFromAllocationStrategy:(unint64_t)strategy remainingQuota:(unint64_t)quota numBundles:(unint64_t)bundles transformedRelativeSize:(double)size;
+ (void)_logAppEntitiesEnumeratedWithTotalNumEntitiesPresent:(unint64_t)present numTotalAccepted:(unint64_t)accepted numTotalRankedAccepted:(unint64_t)rankedAccepted numTotalUnrankedAccepted:(unint64_t)unrankedAccepted numDonatingFirstPartyApps:(unint64_t)apps numDonatingThirdPartyApps:(unint64_t)partyApps;
+ (void)_logAppEntityPartitionEnumeratedWithSourceBundleId:(id)id numEntitiesPresent:(unint64_t)present numDistinctEntityTypes:(unint64_t)types numEmptyTitleDisplayRepresentations:(unint64_t)representations numRankedEntitiesAccepted:(unint64_t)accepted numUnrankedEntitiesAccepted:(unint64_t)entitiesAccepted numEntitiesRejected:(unint64_t)rejected calculatedQuota:(unint64_t)self0;
- (BOOL)addSet:(id)set;
- (BOOL)enumerateRankedItemsWithError:(id *)error usingBlock:(id)block;
- (CESRSpeechItemRanker_AppIntentsIndexedEntity)initWithInstance:(id)instance speechProfileSite:(id)site categoryGroup:(id)group;
- (id)getActivatedCodepathIds;
@end

@implementation CESRSpeechItemRanker_AppIntentsIndexedEntity

- (BOOL)enumerateRankedItemsWithError:(id *)error usingBlock:(id)block
{
  v166 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  allocationStrategy = [(CESRAppEntityConfig *)self->_appEntityConfig allocationStrategy];
  proportionTransformationFunction = [(CESRAppEntityConfig *)self->_appEntityConfig proportionTransformationFunction];
  [(CESRAppEntityConfig *)self->_appEntityConfig proportionTransformationAlpha];
  v7 = v6;
  interactionStoreRankingEnabled = [(CESRAppEntityConfig *)self->_appEntityConfig interactionStoreRankingEnabled];
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v86 = [CESRSpeechItemRanker_AppIntentsIndexedEntity _itemCountsFromSetDict:self->_setDict appEntityConfig:self->_appEntityConfig numDonatingFirstPartyApps:&v133 numDonatingThirdPartyApps:&v132 totalNumEntitiesPresent:&v134 itemCountSum:&v131];
  v130 = 0.0;
  v85 = [CESRSpeechItemRanker_AppIntentsIndexedEntity _transformedItemCountsFromItemCounts:v86 transformationFunction:proportionTransformationFunction transformationFunctionAlpha:&v130 transformedCountSum:v7];
  v8 = [v86 keysSortedByValueUsingComparator:&__block_literal_global_381];
  v9 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [v8 count];
    sets = [(CESRSpeechItemRanker_AppIntentsIndexedEntity *)self sets];
    v13 = [sets count];
    overallAppEntityLimit = [(CESRAppEntityConfig *)self->_appEntityConfig overallAppEntityLimit];
    *buf = 136315906;
    v136 = "[CESRSpeechItemRanker_AppIntentsIndexedEntity enumerateRankedItemsWithError:usingBlock:]";
    v137 = 2048;
    v138 = v11;
    v139 = 2048;
    v140 = v13;
    v141 = 2048;
    v142 = overallAppEntityLimit;
    _os_log_impl(&dword_225EEB000, v10, OS_LOG_TYPE_INFO, "%s Enumerating %lu of %lu total AppIntentsIndexEntity sets with overall limit of %lu entities", buf, 0x2Au);

    v9 = *MEMORY[0x277CEF0E8];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v136 = "[CESRSpeechItemRanker_AppIntentsIndexedEntity enumerateRankedItemsWithError:usingBlock:]";
    v137 = 2112;
    v138 = v86;
    _os_log_debug_impl(&dword_225EEB000, v9, OS_LOG_TYPE_DEBUG, "%s App Entity item counts from supported bundleIds:\n%@", buf, 0x16u);
    v9 = *MEMORY[0x277CEF0E8];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v136 = "[CESRSpeechItemRanker_AppIntentsIndexedEntity enumerateRankedItemsWithError:usingBlock:]";
    v137 = 2112;
    v138 = v85;
    _os_log_debug_impl(&dword_225EEB000, v9, OS_LOG_TYPE_DEBUG, "%s Transformed App Entity counts from supported bundleIds:\n%@", buf, 0x16u);
  }

  overallAppEntityLimit2 = [(CESRAppEntityConfig *)self->_appEntityConfig overallAppEntityLimit];
  v88 = [v8 count];
  v15 = v131;
  v16 = *MEMORY[0x277CEF0E8];
  v17 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG);
  if (v15 <= overallAppEntityLimit2)
  {
    if (v17)
    {
      v65 = v16;
      v66 = CESRAppEntityAllocationStrategyEnumAsString(allocationStrategy);
      *buf = 136315906;
      v136 = "[CESRSpeechItemRanker_AppIntentsIndexedEntity enumerateRankedItemsWithError:usingBlock:]";
      v137 = 2048;
      v138 = v15;
      v139 = 2048;
      v140 = overallAppEntityLimit2;
      v141 = 2112;
      v142 = v66;
      _os_log_debug_impl(&dword_225EEB000, v65, OS_LOG_TYPE_DEBUG, "%s Selecting In-Order allocation strategy given we can ingest all %lu items, which is less than the %lu limit. (Previously was CESRAppEntityAllocationStrategy=%@", buf, 0x2Au);
    }

    allocationStrategy = 1;
  }

  else if (v17)
  {
    v18 = v16;
    v19 = CESRAppEntityAllocationStrategyEnumAsString(allocationStrategy);
    *buf = 136315394;
    v136 = "[CESRSpeechItemRanker_AppIntentsIndexedEntity enumerateRankedItemsWithError:usingBlock:]";
    v137 = 2112;
    v138 = v19;
    _os_log_debug_impl(&dword_225EEB000, v18, OS_LOG_TYPE_DEBUG, "%s Using CESRAppEntityAllocationStrategy=%@ defined from config.", buf, 0x16u);
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  obj = v8;
  v83 = [obj countByEnumeratingWithState:&v126 objects:v165 count:16];
  if (v83)
  {
    v79 = 0;
    v80 = 0;
    v82 = 0;
    v74 = *v127;
    v20 = &selRef__endTransaction;
    selfCopy = self;
    while (2)
    {
      v89 = 0;
      v77 = v20[324];
      do
      {
        if (*v127 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v126 + 1) + 8 * v89);
        v122 = 0;
        v123 = &v122;
        v124 = 0x2020000000;
        v125 = 0;
        v118 = 0;
        v119 = &v118;
        v120 = 0x2020000000;
        v121 = 0;
        v114 = 0;
        v115 = &v114;
        v116 = 0x2020000000;
        v117 = 0;
        v108 = 0;
        v109 = &v108;
        v110 = 0x3032000000;
        v111 = __Block_byref_object_copy__388;
        v112 = __Block_byref_object_dispose__389;
        v113 = [MEMORY[0x277CBEB58] set];
        v102 = 0;
        v103 = &v102;
        v104 = 0x3032000000;
        v105 = __Block_byref_object_copy__388;
        v106 = __Block_byref_object_dispose__389;
        array = [MEMORY[0x277CBEB18] array];
        v91 = [(NSMutableDictionary *)self->_setDict objectForKey:v21];
        v22 = [v86 objectForKeyedSubscript:v21];
        unsignedIntegerValue = [v22 unsignedIntegerValue];
        v24 = v131;

        v25 = [v85 objectForKeyedSubscript:v21];
        [v25 doubleValue];
        v27 = v26;
        v28 = v130;

        v29 = v27 / v28;
        v30 = [CESRSpeechItemRanker_AppIntentsIndexedEntity _bundleQuotaFromAllocationStrategy:allocationStrategy remainingQuota:overallAppEntityLimit2 numBundles:v88 transformedRelativeSize:v29];
        v31 = [(CESRAppEntityConfig *)self->_appEntityConfig limitForBundleId:v21];
        v32 = v31;
        if (v31)
        {
          intValue = [v31 intValue];
          v34 = intValue;
          if (v30 >= intValue)
          {
            v30 = intValue;
          }

          v35 = *MEMORY[0x277CEF0E8];
          if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v136 = "[CESRSpeechItemRanker_AppIntentsIndexedEntity enumerateRankedItemsWithError:usingBlock:]";
            v137 = 2048;
            v138 = v34;
            v139 = 2112;
            v140 = v21;
            _os_log_debug_impl(&dword_225EEB000, v35, OS_LOG_TYPE_DEBUG, "%s App Entity Config specifies entity limit of %lu for app=%@", buf, 0x20u);
          }
        }

        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = __89__CESRSpeechItemRanker_AppIntentsIndexedEntity_enumerateRankedItemsWithError_usingBlock___block_invoke_23;
        v93[3] = &unk_27857F370;
        v93[4] = v21;
        v93[5] = self;
        v95 = &v108;
        v96 = &v118;
        v97 = &v122;
        v98 = &v114;
        v101 = interactionStoreRankingEnabled;
        v99 = &v102;
        v100 = v30;
        v36 = blockCopy;
        v94 = v36;
        v92.receiver = self;
        v92.super_class = CESRSpeechItemRanker_AppIntentsIndexedEntity;
        v90 = objc_msgSendSuper2(&v92, v77, v91, error, v93);
        if (v90)
        {
          v37 = 0;
          v38 = unsignedIntegerValue / v24;
          while (v37 < [v103[5] count] && v37 < v30 - v115[3])
          {
            v39 = [v103[5] objectAtIndex:v37];
            (*(blockCopy + 2))(v36, v39, v21, 0, 0);

            ++v37;
          }

          v40 = [v86 objectForKeyedSubscript:v21];
          unsignedIntValue = [v40 unsignedIntValue];
          v42 = [v109[5] count];
          v43 = v123[3];
          v44 = v115[3];
          v45 = [v103[5] count];
          [CESRSpeechItemRanker_AppIntentsIndexedEntity _logAppEntityPartitionEnumeratedWithSourceBundleId:v21 numEntitiesPresent:unsignedIntValue numDistinctEntityTypes:v42 numEmptyTitleDisplayRepresentations:v43 numRankedEntitiesAccepted:v44 numUnrankedEntitiesAccepted:v45 numEntitiesRejected:v119[3] calculatedQuota:v30];

          self = selfCopy;
          v20 = &selRef__endTransaction;
          v46 = [v103[5] count];
          v47 = v115[3];
          v48 = [v85 objectForKeyedSubscript:v21];
          [v48 floatValue];
          v130 = v130 - v49;

          v50 = v115[3];
          v51 = [v103[5] count];
          v52 = v47 + v46;
          overallAppEntityLimit2 -= v52;
          v53 = *MEMORY[0x277CEF0E8];
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            v72 = [v86 objectForKeyedSubscript:v21];
            unsignedLongValue = [v72 unsignedLongValue];
            v71 = [v85 objectForKeyedSubscript:v21];
            [v71 doubleValue];
            v55 = v54;
            v56 = v130;
            v67 = v119[3];
            v68 = v123[3];
            v69 = v115[3];
            v57 = [v103[5] count];
            v58 = [v109[5] count];
            *buf = 136318722;
            v136 = "[CESRSpeechItemRanker_AppIntentsIndexedEntity enumerateRankedItemsWithError:usingBlock:]";
            v137 = 2112;
            v138 = v21;
            v139 = 2048;
            v140 = unsignedLongValue;
            v141 = 2048;
            v142 = v55;
            v143 = 2048;
            v144 = v56;
            v145 = 2048;
            v146 = v30;
            v147 = 2048;
            v148 = v68;
            v149 = 2048;
            v150 = v67;
            v151 = 2048;
            v152 = v52;
            v153 = 2048;
            v154 = v69;
            v155 = 2048;
            v156 = v57;
            v157 = 2048;
            v158 = overallAppEntityLimit2;
            v159 = 2048;
            v160 = v38;
            v161 = 2048;
            v162 = v29;
            v163 = 2048;
            v164 = v58;
            _os_log_debug_impl(&dword_225EEB000, v53, OS_LOG_TYPE_DEBUG, "%s Finished processing set for app=%@: setSize=%lu, transformedSetSize=%f, transformedSum=%f bundleQuota=%lu, numEmptyDisplayRepresentations=%lu, numEntitiesRejected=%lu, numEntitiesAccepted=%lu (numRankedAccepted=%lu, numUnrankedAccepted=%lu), remainingQuota=%lu, relativeSize=%f, transformedRelativeSize=%f, numDistinctEntityTypes=%lu", buf, 0x98u);

            self = selfCopy;
            v20 = &selRef__endTransaction;
          }

          v79 += v50;
          v80 += v51;
          v82 += v52;
        }

        else
        {
          self = selfCopy;
          v20 = &selRef__endTransaction;
        }

        _Block_object_dispose(&v102, 8);
        _Block_object_dispose(&v108, 8);

        _Block_object_dispose(&v114, 8);
        _Block_object_dispose(&v118, 8);
        _Block_object_dispose(&v122, 8);
        if (!v90)
        {

          v59 = 0;
          goto LABEL_41;
        }

        --v88;
        ++v89;
      }

      while (v89 != v83);
      v83 = [obj countByEnumeratingWithState:&v126 objects:v165 count:16];
      if (v83)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v79 = 0;
    v80 = 0;
    v82 = 0;
  }

  v60 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    appEntityConfig = self->_appEntityConfig;
    v62 = v60;
    overallAppEntityLimit3 = [(CESRAppEntityConfig *)appEntityConfig overallAppEntityLimit];
    *buf = 136315906;
    v136 = "[CESRSpeechItemRanker_AppIntentsIndexedEntity enumerateRankedItemsWithError:usingBlock:]";
    v137 = 2048;
    v138 = overallAppEntityLimit3;
    v139 = 2048;
    v140 = v82;
    v141 = 2048;
    v142 = overallAppEntityLimit2;
    _os_log_impl(&dword_225EEB000, v62, OS_LOG_TYPE_INFO, "%s Finished processing all App Entity sets: appEntityLimit=%lu, totalNumEntitiesAccepted=%lu remainingQuota=%lu", buf, 0x2Au);
  }

  [CESRSpeechItemRanker_AppIntentsIndexedEntity _logAppEntitiesEnumeratedWithTotalNumEntitiesPresent:v134 numTotalAccepted:v82 numTotalRankedAccepted:v79 numTotalUnrankedAccepted:v80 numDonatingFirstPartyApps:v133 numDonatingThirdPartyApps:v132];
  self->_numTotalEnrolled = v82;
  v59 = 1;
LABEL_41:

  return v59;
}

- (BOOL)addSet:(id)set
{
  setCopy = set;
  v5 = setCopy;
  if (self->_appEntityIngestionEnabled && [setCopy itemType] == 47341)
  {
    setDict = self->_setDict;
    v7 = [v5 descriptorWithKey:*MEMORY[0x277CF9498]];
    value = [v7 value];
    [(NSMutableDictionary *)setDict setObject:v5 forKey:value];

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)getActivatedCodepathIds
{
  if (self->_numTotalEnrolled)
  {
    [(NSMutableSet *)self->_codepathIds addObject:@"d410c25f-be26-42d1-a48b-90486d3d0503"];
    numTotalEnrolled = self->_numTotalEnrolled;
  }

  else
  {
    numTotalEnrolled = 0;
  }

  if (numTotalEnrolled >= [(CESRAppEntityConfig *)self->_appEntityConfig overallAppEntityLimit])
  {
    [(NSMutableSet *)self->_codepathIds addObject:@"7864a108-4619-4805-baf3-7640729d0c98"];
  }

  if (self->_didLoadConfigFromTrial)
  {
    [(NSMutableSet *)self->_codepathIds addObject:@"d52e8465-38bb-4ffe-81e9-56fe013a4075"];
  }

  codepathIds = self->_codepathIds;

  return codepathIds;
}

- (CESRSpeechItemRanker_AppIntentsIndexedEntity)initWithInstance:(id)instance speechProfileSite:(id)site categoryGroup:(id)group
{
  v14.receiver = self;
  v14.super_class = CESRSpeechItemRanker_AppIntentsIndexedEntity;
  v5 = [(CESRSpeechItemRanker *)&v14 initWithInstance:instance speechProfileSite:site categoryGroup:group];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    setDict = v5->_setDict;
    v5->_setDict = v6;

    v8 = objc_alloc_init(CESRSpeechProfileConfig);
    appEntityConfig = [(CESRSpeechProfileConfig *)v8 appEntityConfig];
    appEntityConfig = v5->_appEntityConfig;
    v5->_appEntityConfig = appEntityConfig;

    v5->_appEntityIngestionEnabled = +[CESRSpeechItemRanker_AppIntentsIndexedEntity _appEntityIngestionEnabledForFeatureFlagStatus:overallAppEntityLimit:](CESRSpeechItemRanker_AppIntentsIndexedEntity, "_appEntityIngestionEnabledForFeatureFlagStatus:overallAppEntityLimit:", +[CESRSpeechProfileBuilder appEntityFeatureFlagEnabled], [(CESRAppEntityConfig *)v5->_appEntityConfig overallAppEntityLimit]);
    v11 = [MEMORY[0x277CBEB58] set];
    codepathIds = v5->_codepathIds;
    v5->_codepathIds = v11;

    v5->_didLoadConfigFromTrial = [(CESRSpeechProfileConfig *)v8 loadedFromTrial];
  }

  return v5;
}

+ (void)_logAppEntityPartitionEnumeratedWithSourceBundleId:(id)id numEntitiesPresent:(unint64_t)present numDistinctEntityTypes:(unint64_t)types numEmptyTitleDisplayRepresentations:(unint64_t)representations numRankedEntitiesAccepted:(unint64_t)accepted numUnrankedEntitiesAccepted:(unint64_t)entitiesAccepted numEntitiesRejected:(unint64_t)rejected calculatedQuota:(unint64_t)self0
{
  v35 = *MEMORY[0x277D85DE8];
  v15 = MEMORY[0x277CBEB38];
  idCopy = id;
  dictionary = [v15 dictionary];
  [dictionary setObject:idCopy forKeyedSubscript:@"source_bundle_id"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:present];
  [dictionary setObject:v18 forKeyedSubscript:@"num_entities_present"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:types];
  [dictionary setObject:v19 forKeyedSubscript:@"num_distinct_entity_types"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:representations];
  [dictionary setObject:v20 forKeyedSubscript:@"num_empty_title_display_representations"];

  accepted = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:entitiesAccepted + accepted];
  [dictionary setObject:accepted forKeyedSubscript:@"num_entities_accepted"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:accepted];
  [dictionary setObject:v22 forKeyedSubscript:@"num_ranked_entities_accepted"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:entitiesAccepted];
  [dictionary setObject:v23 forKeyedSubscript:@"num_unranked_entities_accepted"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:rejected];
  [dictionary setObject:v24 forKeyedSubscript:@"num_entities_rejected"];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:quota];
  [dictionary setObject:v25 forKeyedSubscript:@"calculated_quota"];

  v26 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v30 = "+[CESRSpeechItemRanker_AppIntentsIndexedEntity _logAppEntityPartitionEnumeratedWithSourceBundleId:numEntitiesPresent:numDistinctEntityTypes:numEmptyTitleDisplayRepresentations:numRankedEntitiesAccepted:numUnrankedEntitiesAccepted:numEntitiesRejected:calculatedQuota:]";
    v31 = 2112;
    v32 = @"com.apple.siri.asr.speechprofile.AppEntityPartitionEnumerated";
    v33 = 2112;
    v34 = dictionary;
    _os_log_debug_impl(&dword_225EEB000, v26, OS_LOG_TYPE_DEBUG, "%s Emitting CoreAnalytics event %@ : %@", buf, 0x20u);
  }

  v28 = dictionary;
  v27 = dictionary;
  AnalyticsSendEventLazy();
}

+ (void)_logAppEntitiesEnumeratedWithTotalNumEntitiesPresent:(unint64_t)present numTotalAccepted:(unint64_t)accepted numTotalRankedAccepted:(unint64_t)rankedAccepted numTotalUnrankedAccepted:(unint64_t)unrankedAccepted numDonatingFirstPartyApps:(unint64_t)apps numDonatingThirdPartyApps:(unint64_t)partyApps
{
  v30 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:present];
  [dictionary setObject:v15 forKeyedSubscript:@"total_num_entities_present"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:accepted];
  [dictionary setObject:v16 forKeyedSubscript:@"total_num_entities_accepted"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:rankedAccepted];
  [dictionary setObject:v17 forKeyedSubscript:@"total_num_ranked_entities_accepted"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unrankedAccepted];
  [dictionary setObject:v18 forKeyedSubscript:@"total_num_unranked_entities_accepted"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:apps];
  [dictionary setObject:v19 forKeyedSubscript:@"num_donating_first_party_apps"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:partyApps];
  [dictionary setObject:v20 forKeyedSubscript:@"num_donating_third_party_apps"];

  v21 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v25 = "+[CESRSpeechItemRanker_AppIntentsIndexedEntity _logAppEntitiesEnumeratedWithTotalNumEntitiesPresent:numTotalAccepted:numTotalRankedAccepted:numTotalUnrankedAccepted:numDonatingFirstPartyApps:numDonatingThirdPartyApps:]";
    v26 = 2112;
    v27 = @"com.apple.siri.asr.speechprofile.AppEntitiesEnumerated";
    v28 = 2112;
    v29 = dictionary;
    _os_log_debug_impl(&dword_225EEB000, v21, OS_LOG_TYPE_DEBUG, "%s Emitting CoreAnalytics event %@ : %@", buf, 0x20u);
  }

  v23 = dictionary;
  v22 = dictionary;
  AnalyticsSendEventLazy();
}

+ (BOOL)_isEntityAllowListed:(id)listed bundleId:(id)id appEntityConfig:(id)config
{
  v26 = *MEMORY[0x277D85DE8];
  listedCopy = listed;
  idCopy = id;
  configCopy = config;
  if ([CESRUtilities isFirstPartyBundleId:idCopy])
  {
    typeIdentifier = [listedCopy typeIdentifier];
    v11 = [configCopy appEntityMappingForBundleId:idCopy appEntityName:typeIdentifier];
    v12 = v11 != 0;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    assistantDefinedSchemas = [listedCopy assistantDefinedSchemas];
    v14 = [assistantDefinedSchemas countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(assistantDefinedSchemas);
          }

          [*(*(&v21 + 1) + 8 * i) type];
          v18 = CCAssistantSchemaTypeAsString();
          v19 = [configCopy isAssistantSchemaTypeSupported:v18];

          if (v19)
          {

            v12 = 1;
            goto LABEL_13;
          }
        }

        v15 = [assistantDefinedSchemas countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
  }

LABEL_13:

  return v12;
}

+ (BOOL)_shouldAcceptEntity:(id)entity bundleId:(id)id appEntityConfig:(id)config entityTypes:(id)types numEntitiesRejected:(unint64_t *)rejected numEmptyDisplayRepresentations:(unint64_t *)representations
{
  entityCopy = entity;
  typesCopy = types;
  if ([CESRSpeechItemRanker_AppIntentsIndexedEntity _isEntityAllowListed:entityCopy bundleId:id appEntityConfig:config])
  {
    displayRepresentation = [entityCopy displayRepresentation];
    title = [displayRepresentation title];

    v17 = [title length];
    v18 = v17 != 0;
    if (v17)
    {
      typeIdentifier = [entityCopy typeIdentifier];
      [typesCopy addObject:typeIdentifier];
    }

    else if (representations)
    {
      ++*representations;
    }
  }

  else
  {
    v18 = 0;
    if (rejected)
    {
      ++*rejected;
    }
  }

  return v18;
}

+ (unint64_t)_bundleQuotaFromAllocationStrategy:(unint64_t)strategy remainingQuota:(unint64_t)quota numBundles:(unint64_t)bundles transformedRelativeSize:(double)size
{
  if (!bundles)
  {
    return 0;
  }

  result = quota;
  if (strategy != 1)
  {
    if (strategy == 2)
    {
      return quota / bundles;
    }

    else
    {
      return (quota * size);
    }
  }

  return result;
}

+ (id)_transformedItemCountsFromItemCounts:(id)counts transformationFunction:(unint64_t)function transformationFunctionAlpha:(double)alpha transformedCountSum:(double *)sum
{
  v30 = *MEMORY[0x277D85DE8];
  countsCopy = counts;
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(countsCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  allKeys = [countsCopy allKeys];
  v11 = [allKeys countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(allKeys);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [countsCopy objectForKeyedSubscript:v16];
        unsignedIntValue = [v17 unsignedIntValue];

        if (unsignedIntValue)
        {
          v19 = unsignedIntValue;
          if (function >= 2)
          {
            v20 = unsignedIntValue;
            if (function == 2)
            {
              v21 = log(v20);
            }

            else
            {
              v21 = pow(v20, alpha);
            }

            v19 = v21;
          }

          v22 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
          [v9 setObject:v22 forKey:v16];

          v14 = v14 + v19;
        }
      }

      v12 = [allKeys countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 0.0;
  }

  if (sum)
  {
    *sum = v14;
  }

  return v9;
}

+ (id)_itemCountsFromSetDict:(id)dict appEntityConfig:(id)config numDonatingFirstPartyApps:(unint64_t *)apps numDonatingThirdPartyApps:(unint64_t *)partyApps totalNumEntitiesPresent:(unint64_t *)present itemCountSum:(unint64_t *)sum
{
  appsCopy = apps;
  v45 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  configCopy = config;
  v31 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(dictCopy, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = dictCopy;
  v35 = [v10 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (!v35)
  {
    v32 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_19;
  }

  v32 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v34 = *v37;
  do
  {
    v14 = 0;
    do
    {
      if (*v37 != v34)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v36 + 1) + 8 * v14);
      appsCopy = [CESRUtilities isFirstPartyBundleId:v15, appsCopy];
      v17 = [v10 objectForKey:v15];
      v18 = [v17 changePublisherWithUseCase:@"SpeechProfile"];
      sharedItemCount = [v18 sharedItemCount];

      if (!sharedItemCount)
      {
        v21 = *MEMORY[0x277CEF0E8];
        if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_12;
        }

        *buf = 136315394;
        v41 = "+[CESRSpeechItemRanker_AppIntentsIndexedEntity _itemCountsFromSetDict:appEntityConfig:numDonatingFirstPartyApps:numDonatingThirdPartyApps:totalNumEntitiesPresent:itemCountSum:]";
        v42 = 2112;
        v43 = v15;
        v22 = v21;
        v23 = "%s Skipping app=%@ because the set is empty";
        goto LABEL_15;
      }

      if ([configCopy isBundleIdSupported:v15])
      {
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sharedItemCount];
        [v31 setObject:v20 forKey:v15];

        v32 += sharedItemCount;
        goto LABEL_12;
      }

      v24 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v41 = "+[CESRSpeechItemRanker_AppIntentsIndexedEntity _itemCountsFromSetDict:appEntityConfig:numDonatingFirstPartyApps:numDonatingThirdPartyApps:totalNumEntitiesPresent:itemCountSum:]";
        v42 = 2112;
        v43 = v15;
        v22 = v24;
        v23 = "%s Skipping app=%@ because it is either not supported or deny-listed";
LABEL_15:
        _os_log_debug_impl(&dword_225EEB000, v22, OS_LOG_TYPE_DEBUG, v23, buf, 0x16u);
      }

LABEL_12:
      v12 += !appsCopy;
      v13 += appsCopy;
      v11 += sharedItemCount;

      ++v14;
    }

    while (v35 != v14);
    v25 = [v10 countByEnumeratingWithState:&v36 objects:v44 count:16];
    v35 = v25;
  }

  while (v25);
LABEL_19:

  if (appsCopy)
  {
    *appsCopy = v13;
  }

  if (partyApps)
  {
    *partyApps = v12;
  }

  if (present)
  {
    *present = v11;
  }

  if (sum)
  {
    *sum = v32;
  }

  return v31;
}

@end