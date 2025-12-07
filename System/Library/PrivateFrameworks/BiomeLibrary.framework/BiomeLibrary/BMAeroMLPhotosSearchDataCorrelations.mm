@interface BMAeroMLPhotosSearchDataCorrelations
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAeroMLPhotosSearchDataCorrelations)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMAeroMLPhotosSearchDataCorrelations)initWithSearchSessionUUID:(id)d uiSurface:(int)surface matchedPeopleRatio:(id)ratio matchedLocationRatio:(id)locationRatio matchedSceneRatio:(id)sceneRatio matchedSceneConfidence:(id)confidence matchedSceneBoundingBox:(id)box matchedOCRCharacterRatio:(id)self0 matchedOCRImportance:(id)self1 matchedFieldsCount:(id)self2 L1Score:(id)self3 freshness:(id)self4 favorited:(id)self5 aestheticScore:(id)self6 curationScore:(id)self7 hasEverClickInLastWeek:(id)self8 hasEverClickInLastMonth:(id)self9 hasEverShareInLastWeek:(id)lastWeek hasEverShareInLastMonth:(id)lastMonth clickCountInLastWeekNormalizedAcrossItems:(id)items clickCountInLastMonthNormalizedAcrossItems:(id)acrossItems shareCountInLastWeekNormalizedAcrossItems:(id)normalizedAcrossItems shareCountInLastMonthNormalizedAcrossItems:(id)monthNormalizedAcrossItems clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:(id)weekNormalizedAcrossItems clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:(id)lastMonthNormalizedAcrossItems clickCountGivenLocationInLastWeekNormalizedAcrossItems:(id)lastWeekNormalizedAcrossItems clickCountGivenLocationInLastMonthNormalizedAcrossItems:(id)inLastMonthNormalizedAcrossItems clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems:(id)d0 clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems:(id)d1 clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:(id)d2 clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:(id)d3 clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:(id)d4 clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:(id)d5 clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:(id)d6 clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:(id)d7 shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:(id)d8 shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:(id)d9 shareCountGivenLocationInLastWeekNormalizedAcrossItems:(id)surface0 shareCountGivenLocationInLastMonthNormalizedAcrossItems:(id)surface1 shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems:(id)surface2 shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems:(id)surface3 shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:(id)surface4 shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:(id)surface5 shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:(id)surface6 shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:(id)surface7 shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:(id)surface8 shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:(id)surface9 clipScore:(id)ratio0 correlationMetricVersion:(id)ratio1 correlationMetricWindowInDays:(id)ratio2;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAeroMLPhotosSearchDataCorrelations

+ (id)columns
{
  v54[50] = *MEMORY[0x1E69E9840];
  v52 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"searchSessionUUID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v53 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uiSurface" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v51 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedPeopleRatio" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v50 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedLocationRatio" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v49 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedSceneRatio" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v48 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedSceneConfidence" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:0];
  v47 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedSceneBoundingBox" dataType:1 requestOnly:0 fieldNumber:7 protoDataType:0 convertedType:0];
  v46 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedOCRCharacterRatio" dataType:1 requestOnly:0 fieldNumber:8 protoDataType:0 convertedType:0];
  v45 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedOCRImportance" dataType:1 requestOnly:0 fieldNumber:9 protoDataType:0 convertedType:0];
  v44 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedFieldsCount" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v43 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"L1Score" dataType:1 requestOnly:0 fieldNumber:11 protoDataType:0 convertedType:0];
  v42 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"freshness" dataType:1 requestOnly:0 fieldNumber:12 protoDataType:0 convertedType:0];
  v41 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"favorited" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v40 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"aestheticScore" dataType:1 requestOnly:0 fieldNumber:14 protoDataType:0 convertedType:0];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"curationScore" dataType:1 requestOnly:0 fieldNumber:15 protoDataType:0 convertedType:0];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasEverClickInLastWeek" dataType:1 requestOnly:0 fieldNumber:16 protoDataType:0 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasEverClickInLastMonth" dataType:1 requestOnly:0 fieldNumber:17 protoDataType:0 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasEverShareInLastWeek" dataType:1 requestOnly:0 fieldNumber:18 protoDataType:0 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasEverShareInLastMonth" dataType:1 requestOnly:0 fieldNumber:19 protoDataType:0 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:20 protoDataType:0 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:21 protoDataType:0 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:22 protoDataType:0 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:23 protoDataType:0 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:24 protoDataType:0 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:25 protoDataType:0 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenLocationInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:26 protoDataType:0 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenLocationInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:27 protoDataType:0 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:28 protoDataType:0 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:29 protoDataType:0 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:30 protoDataType:0 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:31 protoDataType:0 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:32 protoDataType:0 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:33 protoDataType:0 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:34 protoDataType:0 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:35 protoDataType:0 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:36 protoDataType:0 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:37 protoDataType:0 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenLocationInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:38 protoDataType:0 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenLocationInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:39 protoDataType:0 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:40 protoDataType:0 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:41 protoDataType:0 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:42 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:43 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:44 protoDataType:0 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:45 protoDataType:0 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:46 protoDataType:0 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:47 protoDataType:0 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clipScore" dataType:1 requestOnly:0 fieldNumber:48 protoDataType:0 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"correlationMetricVersion" dataType:0 requestOnly:0 fieldNumber:49 protoDataType:4 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"correlationMetricWindowInDays" dataType:0 requestOnly:0 fieldNumber:50 protoDataType:4 convertedType:0];
  v54[0] = v52;
  v54[1] = v53;
  v54[2] = v51;
  v54[3] = v50;
  v54[4] = v49;
  v54[5] = v48;
  v54[6] = v47;
  v54[7] = v46;
  v54[8] = v45;
  v54[9] = v44;
  v54[10] = v43;
  v54[11] = v42;
  v54[12] = v41;
  v54[13] = v40;
  v54[14] = v39;
  v54[15] = v38;
  v54[16] = v37;
  v54[17] = v36;
  v54[18] = v35;
  v54[19] = v34;
  v54[20] = v33;
  v54[21] = v32;
  v54[22] = v31;
  v54[23] = v30;
  v54[24] = v29;
  v54[25] = v28;
  v54[26] = v27;
  v54[27] = v26;
  v54[28] = v25;
  v54[29] = v24;
  v54[30] = v23;
  v54[31] = v22;
  v54[32] = v21;
  v54[33] = v20;
  v54[34] = v19;
  v54[35] = v18;
  v54[36] = v17;
  v54[37] = v16;
  v54[38] = v15;
  v54[39] = v14;
  v54[40] = v2;
  v54[41] = v3;
  v54[42] = v4;
  v54[43] = v5;
  v54[44] = v6;
  v54[45] = v7;
  v54[46] = v8;
  v54[47] = v9;
  v54[48] = v13;
  v54[49] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:50];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    searchSessionUUID = [(BMAeroMLPhotosSearchDataCorrelations *)self searchSessionUUID];
    searchSessionUUID2 = [v5 searchSessionUUID];
    v8 = searchSessionUUID2;
    if (searchSessionUUID == searchSessionUUID2)
    {
    }

    else
    {
      searchSessionUUID3 = [(BMAeroMLPhotosSearchDataCorrelations *)self searchSessionUUID];
      searchSessionUUID4 = [v5 searchSessionUUID];
      v11 = [searchSessionUUID3 isEqual:searchSessionUUID4];

      if (!v11)
      {
        goto LABEL_248;
      }
    }

    uiSurface = [(BMAeroMLPhotosSearchDataCorrelations *)self uiSurface];
    if (uiSurface == [v5 uiSurface])
    {
      if (!-[BMAeroMLPhotosSearchDataCorrelations hasMatchedPeopleRatio](self, "hasMatchedPeopleRatio") && ![v5 hasMatchedPeopleRatio] || -[BMAeroMLPhotosSearchDataCorrelations hasMatchedPeopleRatio](self, "hasMatchedPeopleRatio") && objc_msgSend(v5, "hasMatchedPeopleRatio") && (-[BMAeroMLPhotosSearchDataCorrelations matchedPeopleRatio](self, "matchedPeopleRatio"), v15 = v14, objc_msgSend(v5, "matchedPeopleRatio"), v15 == v16))
      {
        if (!-[BMAeroMLPhotosSearchDataCorrelations hasMatchedLocationRatio](self, "hasMatchedLocationRatio") && ![v5 hasMatchedLocationRatio] || -[BMAeroMLPhotosSearchDataCorrelations hasMatchedLocationRatio](self, "hasMatchedLocationRatio") && objc_msgSend(v5, "hasMatchedLocationRatio") && (-[BMAeroMLPhotosSearchDataCorrelations matchedLocationRatio](self, "matchedLocationRatio"), v18 = v17, objc_msgSend(v5, "matchedLocationRatio"), v18 == v19))
        {
          if (!-[BMAeroMLPhotosSearchDataCorrelations hasMatchedSceneRatio](self, "hasMatchedSceneRatio") && ![v5 hasMatchedSceneRatio] || -[BMAeroMLPhotosSearchDataCorrelations hasMatchedSceneRatio](self, "hasMatchedSceneRatio") && objc_msgSend(v5, "hasMatchedSceneRatio") && (-[BMAeroMLPhotosSearchDataCorrelations matchedSceneRatio](self, "matchedSceneRatio"), v21 = v20, objc_msgSend(v5, "matchedSceneRatio"), v21 == v22))
          {
            if (!-[BMAeroMLPhotosSearchDataCorrelations hasMatchedSceneConfidence](self, "hasMatchedSceneConfidence") && ![v5 hasMatchedSceneConfidence] || -[BMAeroMLPhotosSearchDataCorrelations hasMatchedSceneConfidence](self, "hasMatchedSceneConfidence") && objc_msgSend(v5, "hasMatchedSceneConfidence") && (-[BMAeroMLPhotosSearchDataCorrelations matchedSceneConfidence](self, "matchedSceneConfidence"), v24 = v23, objc_msgSend(v5, "matchedSceneConfidence"), v24 == v25))
            {
              if (!-[BMAeroMLPhotosSearchDataCorrelations hasMatchedSceneBoundingBox](self, "hasMatchedSceneBoundingBox") && ![v5 hasMatchedSceneBoundingBox] || -[BMAeroMLPhotosSearchDataCorrelations hasMatchedSceneBoundingBox](self, "hasMatchedSceneBoundingBox") && objc_msgSend(v5, "hasMatchedSceneBoundingBox") && (-[BMAeroMLPhotosSearchDataCorrelations matchedSceneBoundingBox](self, "matchedSceneBoundingBox"), v27 = v26, objc_msgSend(v5, "matchedSceneBoundingBox"), v27 == v28))
              {
                if (!-[BMAeroMLPhotosSearchDataCorrelations hasMatchedOCRCharacterRatio](self, "hasMatchedOCRCharacterRatio") && ![v5 hasMatchedOCRCharacterRatio] || -[BMAeroMLPhotosSearchDataCorrelations hasMatchedOCRCharacterRatio](self, "hasMatchedOCRCharacterRatio") && objc_msgSend(v5, "hasMatchedOCRCharacterRatio") && (-[BMAeroMLPhotosSearchDataCorrelations matchedOCRCharacterRatio](self, "matchedOCRCharacterRatio"), v30 = v29, objc_msgSend(v5, "matchedOCRCharacterRatio"), v30 == v31))
                {
                  if (!-[BMAeroMLPhotosSearchDataCorrelations hasMatchedOCRImportance](self, "hasMatchedOCRImportance") && ![v5 hasMatchedOCRImportance] || -[BMAeroMLPhotosSearchDataCorrelations hasMatchedOCRImportance](self, "hasMatchedOCRImportance") && objc_msgSend(v5, "hasMatchedOCRImportance") && (-[BMAeroMLPhotosSearchDataCorrelations matchedOCRImportance](self, "matchedOCRImportance"), v33 = v32, objc_msgSend(v5, "matchedOCRImportance"), v33 == v34))
                  {
                    if (!-[BMAeroMLPhotosSearchDataCorrelations hasMatchedFieldsCount](self, "hasMatchedFieldsCount") && ![v5 hasMatchedFieldsCount] || -[BMAeroMLPhotosSearchDataCorrelations hasMatchedFieldsCount](self, "hasMatchedFieldsCount") && objc_msgSend(v5, "hasMatchedFieldsCount") && (v35 = -[BMAeroMLPhotosSearchDataCorrelations matchedFieldsCount](self, "matchedFieldsCount"), v35 == objc_msgSend(v5, "matchedFieldsCount")))
                    {
                      if (!-[BMAeroMLPhotosSearchDataCorrelations hasL1Score](self, "hasL1Score") && ![v5 hasL1Score] || -[BMAeroMLPhotosSearchDataCorrelations hasL1Score](self, "hasL1Score") && objc_msgSend(v5, "hasL1Score") && (-[BMAeroMLPhotosSearchDataCorrelations L1Score](self, "L1Score"), v37 = v36, objc_msgSend(v5, "L1Score"), v37 == v38))
                      {
                        if (!-[BMAeroMLPhotosSearchDataCorrelations hasFreshness](self, "hasFreshness") && ![v5 hasFreshness] || -[BMAeroMLPhotosSearchDataCorrelations hasFreshness](self, "hasFreshness") && objc_msgSend(v5, "hasFreshness") && (-[BMAeroMLPhotosSearchDataCorrelations freshness](self, "freshness"), v40 = v39, objc_msgSend(v5, "freshness"), v40 == v41))
                        {
                          if (!-[BMAeroMLPhotosSearchDataCorrelations hasFavorited](self, "hasFavorited") && ![v5 hasFavorited] || -[BMAeroMLPhotosSearchDataCorrelations hasFavorited](self, "hasFavorited") && objc_msgSend(v5, "hasFavorited") && (v42 = -[BMAeroMLPhotosSearchDataCorrelations favorited](self, "favorited"), v42 == objc_msgSend(v5, "favorited")))
                          {
                            if (!-[BMAeroMLPhotosSearchDataCorrelations hasAestheticScore](self, "hasAestheticScore") && ![v5 hasAestheticScore] || -[BMAeroMLPhotosSearchDataCorrelations hasAestheticScore](self, "hasAestheticScore") && objc_msgSend(v5, "hasAestheticScore") && (-[BMAeroMLPhotosSearchDataCorrelations aestheticScore](self, "aestheticScore"), v44 = v43, objc_msgSend(v5, "aestheticScore"), v44 == v45))
                            {
                              if (!-[BMAeroMLPhotosSearchDataCorrelations hasCurationScore](self, "hasCurationScore") && ![v5 hasCurationScore] || -[BMAeroMLPhotosSearchDataCorrelations hasCurationScore](self, "hasCurationScore") && objc_msgSend(v5, "hasCurationScore") && (-[BMAeroMLPhotosSearchDataCorrelations curationScore](self, "curationScore"), v47 = v46, objc_msgSend(v5, "curationScore"), v47 == v48))
                              {
                                if (!-[BMAeroMLPhotosSearchDataCorrelations hasHasEverClickInLastWeek](self, "hasHasEverClickInLastWeek") && ![v5 hasHasEverClickInLastWeek] || -[BMAeroMLPhotosSearchDataCorrelations hasHasEverClickInLastWeek](self, "hasHasEverClickInLastWeek") && objc_msgSend(v5, "hasHasEverClickInLastWeek") && (-[BMAeroMLPhotosSearchDataCorrelations hasEverClickInLastWeek](self, "hasEverClickInLastWeek"), v50 = v49, objc_msgSend(v5, "hasEverClickInLastWeek"), v50 == v51))
                                {
                                  if (!-[BMAeroMLPhotosSearchDataCorrelations hasHasEverClickInLastMonth](self, "hasHasEverClickInLastMonth") && ![v5 hasHasEverClickInLastMonth] || -[BMAeroMLPhotosSearchDataCorrelations hasHasEverClickInLastMonth](self, "hasHasEverClickInLastMonth") && objc_msgSend(v5, "hasHasEverClickInLastMonth") && (-[BMAeroMLPhotosSearchDataCorrelations hasEverClickInLastMonth](self, "hasEverClickInLastMonth"), v53 = v52, objc_msgSend(v5, "hasEverClickInLastMonth"), v53 == v54))
                                  {
                                    if (!-[BMAeroMLPhotosSearchDataCorrelations hasHasEverShareInLastWeek](self, "hasHasEverShareInLastWeek") && ![v5 hasHasEverShareInLastWeek] || -[BMAeroMLPhotosSearchDataCorrelations hasHasEverShareInLastWeek](self, "hasHasEverShareInLastWeek") && objc_msgSend(v5, "hasHasEverShareInLastWeek") && (-[BMAeroMLPhotosSearchDataCorrelations hasEverShareInLastWeek](self, "hasEverShareInLastWeek"), v56 = v55, objc_msgSend(v5, "hasEverShareInLastWeek"), v56 == v57))
                                    {
                                      if (!-[BMAeroMLPhotosSearchDataCorrelations hasHasEverShareInLastMonth](self, "hasHasEverShareInLastMonth") && ![v5 hasHasEverShareInLastMonth] || -[BMAeroMLPhotosSearchDataCorrelations hasHasEverShareInLastMonth](self, "hasHasEverShareInLastMonth") && objc_msgSend(v5, "hasHasEverShareInLastMonth") && (-[BMAeroMLPhotosSearchDataCorrelations hasEverShareInLastMonth](self, "hasEverShareInLastMonth"), v59 = v58, objc_msgSend(v5, "hasEverShareInLastMonth"), v59 == v60))
                                      {
                                        if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountInLastWeekNormalizedAcrossItems](self, "hasClickCountInLastWeekNormalizedAcrossItems") && ![v5 hasClickCountInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountInLastWeekNormalizedAcrossItems](self, "hasClickCountInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountInLastWeekNormalizedAcrossItems](self, "clickCountInLastWeekNormalizedAcrossItems"), v62 = v61, objc_msgSend(v5, "clickCountInLastWeekNormalizedAcrossItems"), v62 == v63))
                                        {
                                          if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountInLastMonthNormalizedAcrossItems](self, "hasClickCountInLastMonthNormalizedAcrossItems") && ![v5 hasClickCountInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountInLastMonthNormalizedAcrossItems](self, "hasClickCountInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountInLastMonthNormalizedAcrossItems](self, "clickCountInLastMonthNormalizedAcrossItems"), v65 = v64, objc_msgSend(v5, "clickCountInLastMonthNormalizedAcrossItems"), v65 == v66))
                                          {
                                            if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountInLastWeekNormalizedAcrossItems](self, "hasShareCountInLastWeekNormalizedAcrossItems") && ![v5 hasShareCountInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountInLastWeekNormalizedAcrossItems](self, "hasShareCountInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountInLastWeekNormalizedAcrossItems](self, "shareCountInLastWeekNormalizedAcrossItems"), v68 = v67, objc_msgSend(v5, "shareCountInLastWeekNormalizedAcrossItems"), v68 == v69))
                                            {
                                              if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountInLastMonthNormalizedAcrossItems](self, "hasShareCountInLastMonthNormalizedAcrossItems") && ![v5 hasShareCountInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountInLastMonthNormalizedAcrossItems](self, "hasShareCountInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountInLastMonthNormalizedAcrossItems](self, "shareCountInLastMonthNormalizedAcrossItems"), v71 = v70, objc_msgSend(v5, "shareCountInLastMonthNormalizedAcrossItems"), v71 == v72))
                                              {
                                                if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems") && ![v5 hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems](self, "clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"), v74 = v73, objc_msgSend(v5, "clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"), v74 == v75))
                                                {
                                                  if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems") && ![v5 hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems](self, "clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"), v77 = v76, objc_msgSend(v5, "clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"), v77 == v78))
                                                  {
                                                    if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenLocationInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenLocationInLastWeekNormalizedAcrossItems") && ![v5 hasClickCountGivenLocationInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenLocationInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenLocationInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenLocationInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenLocationInLastWeekNormalizedAcrossItems](self, "clickCountGivenLocationInLastWeekNormalizedAcrossItems"), v80 = v79, objc_msgSend(v5, "clickCountGivenLocationInLastWeekNormalizedAcrossItems"), v80 == v81))
                                                    {
                                                      if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenLocationInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenLocationInLastMonthNormalizedAcrossItems") && ![v5 hasClickCountGivenLocationInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenLocationInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenLocationInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenLocationInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenLocationInLastMonthNormalizedAcrossItems](self, "clickCountGivenLocationInLastMonthNormalizedAcrossItems"), v83 = v82, objc_msgSend(v5, "clickCountGivenLocationInLastMonthNormalizedAcrossItems"), v83 == v84))
                                                      {
                                                        if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems](self, "clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems"), v86 = v85, objc_msgSend(v5, "clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems"), v86 == v87))
                                                        {
                                                          if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems](self, "clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems"), v89 = v88, objc_msgSend(v5, "clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems"), v89 == v90))
                                                          {
                                                            if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems](self, "clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"), v92 = v91, objc_msgSend(v5, "clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"), v92 == v93))
                                                            {
                                                              if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems](self, "clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"), v95 = v94, objc_msgSend(v5, "clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"), v95 == v96))
                                                              {
                                                                if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems](self, "clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"), v98 = v97, objc_msgSend(v5, "clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"), v98 == v99))
                                                                {
                                                                  if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems](self, "clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"), v101 = v100, objc_msgSend(v5, "clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"), v101 == v102))
                                                                  {
                                                                    if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems](self, "clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"), v104 = v103, objc_msgSend(v5, "clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"), v104 == v105))
                                                                    {
                                                                      if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems](self, "clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"), v107 = v106, objc_msgSend(v5, "clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"), v107 == v108))
                                                                      {
                                                                        if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems") && ![v5 hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems](self, "shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"), v110 = v109, objc_msgSend(v5, "shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"), v110 == v111))
                                                                        {
                                                                          if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems") && ![v5 hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems](self, "shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"), v113 = v112, objc_msgSend(v5, "shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"), v113 == v114))
                                                                          {
                                                                            if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenLocationInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenLocationInLastWeekNormalizedAcrossItems") && ![v5 hasShareCountGivenLocationInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenLocationInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenLocationInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenLocationInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenLocationInLastWeekNormalizedAcrossItems](self, "shareCountGivenLocationInLastWeekNormalizedAcrossItems"), v116 = v115, objc_msgSend(v5, "shareCountGivenLocationInLastWeekNormalizedAcrossItems"), v116 == v117))
                                                                            {
                                                                              if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenLocationInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenLocationInLastMonthNormalizedAcrossItems") && ![v5 hasShareCountGivenLocationInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenLocationInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenLocationInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenLocationInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenLocationInLastMonthNormalizedAcrossItems](self, "shareCountGivenLocationInLastMonthNormalizedAcrossItems"), v119 = v118, objc_msgSend(v5, "shareCountGivenLocationInLastMonthNormalizedAcrossItems"), v119 == v120))
                                                                              {
                                                                                if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems](self, "shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems"), v122 = v121, objc_msgSend(v5, "shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems"), v122 == v123))
                                                                                {
                                                                                  if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems](self, "shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems"), v125 = v124, objc_msgSend(v5, "shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems"), v125 == v126))
                                                                                  {
                                                                                    if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems](self, "shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"), v128 = v127, objc_msgSend(v5, "shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"), v128 == v129))
                                                                                    {
                                                                                      if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems](self, "shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"), v131 = v130, objc_msgSend(v5, "shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"), v131 == v132))
                                                                                      {
                                                                                        if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems](self, "shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"), v134 = v133, objc_msgSend(v5, "shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"), v134 == v135))
                                                                                        {
                                                                                          if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems](self, "shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"), v137 = v136, objc_msgSend(v5, "shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"), v137 == v138))
                                                                                          {
                                                                                            if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems](self, "shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"), v140 = v139, objc_msgSend(v5, "shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"), v140 == v141))
                                                                                            {
                                                                                              if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems](self, "shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"), v143 = v142, objc_msgSend(v5, "shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"), v143 == v144))
                                                                                              {
                                                                                                if (!-[BMAeroMLPhotosSearchDataCorrelations hasClipScore](self, "hasClipScore") && ![v5 hasClipScore] || -[BMAeroMLPhotosSearchDataCorrelations hasClipScore](self, "hasClipScore") && objc_msgSend(v5, "hasClipScore") && (-[BMAeroMLPhotosSearchDataCorrelations clipScore](self, "clipScore"), v146 = v145, objc_msgSend(v5, "clipScore"), v146 == v147))
                                                                                                {
                                                                                                  if (!-[BMAeroMLPhotosSearchDataCorrelations hasCorrelationMetricVersion](self, "hasCorrelationMetricVersion") && ![v5 hasCorrelationMetricVersion] || -[BMAeroMLPhotosSearchDataCorrelations hasCorrelationMetricVersion](self, "hasCorrelationMetricVersion") && objc_msgSend(v5, "hasCorrelationMetricVersion") && (v148 = -[BMAeroMLPhotosSearchDataCorrelations correlationMetricVersion](self, "correlationMetricVersion"), v148 == objc_msgSend(v5, "correlationMetricVersion")))
                                                                                                  {
                                                                                                    if (!-[BMAeroMLPhotosSearchDataCorrelations hasCorrelationMetricWindowInDays](self, "hasCorrelationMetricWindowInDays") && ![v5 hasCorrelationMetricWindowInDays])
                                                                                                    {
                                                                                                      v12 = 1;
                                                                                                      goto LABEL_249;
                                                                                                    }

                                                                                                    if (-[BMAeroMLPhotosSearchDataCorrelations hasCorrelationMetricWindowInDays](self, "hasCorrelationMetricWindowInDays") && [v5 hasCorrelationMetricWindowInDays])
                                                                                                    {
                                                                                                      correlationMetricWindowInDays = [(BMAeroMLPhotosSearchDataCorrelations *)self correlationMetricWindowInDays];
                                                                                                      v12 = correlationMetricWindowInDays == [v5 correlationMetricWindowInDays];
LABEL_249:

                                                                                                      goto LABEL_250;
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_248:
    v12 = 0;
    goto LABEL_249;
  }

  v12 = 0;
LABEL_250:

  return v12;
}

- (id)jsonDictionary
{
  v248[50] = *MEMORY[0x1E69E9840];
  searchSessionUUID = [(BMAeroMLPhotosSearchDataCorrelations *)self searchSessionUUID];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAeroMLPhotosSearchDataCorrelations uiSurface](self, "uiSurface")}];
  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasMatchedPeopleRatio]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self matchedPeopleRatio], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedPeopleRatio];
    v6 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedPeopleRatio];
    v7 = [v6 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasMatchedLocationRatio]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self matchedLocationRatio], fabs(v8) == INFINITY))
  {
    v10 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedLocationRatio];
    v9 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedLocationRatio];
    v10 = [v9 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasMatchedSceneRatio]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneRatio], fabs(v11) == INFINITY))
  {
    v13 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneRatio];
    v12 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneRatio];
    v13 = [v12 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasMatchedSceneConfidence]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneConfidence], fabs(v14) == INFINITY))
  {
    v204 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneConfidence];
    v15 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneConfidence];
    v204 = [v15 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasMatchedSceneBoundingBox]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneBoundingBox], fabs(v16) == INFINITY))
  {
    v18 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneBoundingBox];
    v17 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneBoundingBox];
    v18 = [v17 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasMatchedOCRCharacterRatio]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self matchedOCRCharacterRatio], fabs(v19) == INFINITY))
  {
    v246 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedOCRCharacterRatio];
    v20 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedOCRCharacterRatio];
    v246 = [v20 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasMatchedOCRImportance]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self matchedOCRImportance], fabs(v21) == INFINITY))
  {
    v245 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedOCRImportance];
    v22 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedOCRImportance];
    v245 = [v22 numberWithDouble:?];
  }

  if ([(BMAeroMLPhotosSearchDataCorrelations *)self hasMatchedFieldsCount])
  {
    v244 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchDataCorrelations matchedFieldsCount](self, "matchedFieldsCount")}];
  }

  else
  {
    v244 = 0;
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasL1Score]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self L1Score], fabs(v23) == INFINITY))
  {
    v243 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self L1Score];
    v24 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self L1Score];
    v243 = [v24 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasFreshness]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self freshness], fabs(v25) == INFINITY))
  {
    v242 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self freshness];
    v26 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self freshness];
    v242 = [v26 numberWithDouble:?];
  }

  if ([(BMAeroMLPhotosSearchDataCorrelations *)self hasFavorited])
  {
    v241 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchDataCorrelations favorited](self, "favorited")}];
  }

  else
  {
    v241 = 0;
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasAestheticScore]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self aestheticScore], fabs(v27) == INFINITY))
  {
    v240 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self aestheticScore];
    v28 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self aestheticScore];
    v240 = [v28 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasCurationScore]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self curationScore], fabs(v29) == INFINITY))
  {
    v239 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self curationScore];
    v30 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self curationScore];
    v239 = [v30 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasHasEverClickInLastWeek]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self hasEverClickInLastWeek], fabs(v31) == INFINITY))
  {
    v238 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverClickInLastWeek];
    v32 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverClickInLastWeek];
    v238 = [v32 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasHasEverClickInLastMonth]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self hasEverClickInLastMonth], fabs(v33) == INFINITY))
  {
    v237 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverClickInLastMonth];
    v34 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverClickInLastMonth];
    v237 = [v34 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasHasEverShareInLastWeek]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self hasEverShareInLastWeek], fabs(v35) == INFINITY))
  {
    v236 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverShareInLastWeek];
    v36 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverShareInLastWeek];
    v236 = [v36 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasHasEverShareInLastMonth]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self hasEverShareInLastMonth], fabs(v37) == INFINITY))
  {
    v235 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverShareInLastMonth];
    v38 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverShareInLastMonth];
    v235 = [v38 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountInLastWeekNormalizedAcrossItems], fabs(v39) == INFINITY))
  {
    v234 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountInLastWeekNormalizedAcrossItems];
    v40 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountInLastWeekNormalizedAcrossItems];
    v234 = [v40 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountInLastMonthNormalizedAcrossItems], fabs(v41) == INFINITY))
  {
    v233 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountInLastMonthNormalizedAcrossItems];
    v42 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountInLastMonthNormalizedAcrossItems];
    v233 = [v42 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountInLastWeekNormalizedAcrossItems], fabs(v43) == INFINITY))
  {
    v232 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountInLastWeekNormalizedAcrossItems];
    v44 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountInLastWeekNormalizedAcrossItems];
    v232 = [v44 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountInLastMonthNormalizedAcrossItems], fabs(v45) == INFINITY))
  {
    v231 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountInLastMonthNormalizedAcrossItems];
    v46 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountInLastMonthNormalizedAcrossItems];
    v231 = [v46 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems], fabs(v47) == INFINITY))
  {
    v230 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
    v48 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
    v230 = [v48 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems], fabs(v49) == INFINITY))
  {
    v229 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
    v50 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
    v229 = [v50 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenLocationInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenLocationInLastWeekNormalizedAcrossItems], fabs(v51) == INFINITY))
  {
    v228 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenLocationInLastWeekNormalizedAcrossItems];
    v52 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenLocationInLastWeekNormalizedAcrossItems];
    v228 = [v52 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenLocationInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenLocationInLastMonthNormalizedAcrossItems], fabs(v53) == INFINITY))
  {
    v227 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenLocationInLastMonthNormalizedAcrossItems];
    v54 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenLocationInLastMonthNormalizedAcrossItems];
    v227 = [v54 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems], fabs(v55) == INFINITY))
  {
    v226 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
    v56 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
    v226 = [v56 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems], fabs(v57) == INFINITY))
  {
    v225 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
    v58 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
    v225 = [v58 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems], fabs(v59) == INFINITY))
  {
    v224 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems];
    v60 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems];
    v224 = [v60 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems], fabs(v61) == INFINITY))
  {
    v223 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems];
    v62 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems];
    v223 = [v62 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems], fabs(v63) == INFINITY))
  {
    v222 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
    v64 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
    v222 = [v64 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems], fabs(v65) == INFINITY))
  {
    v221 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
    v66 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
    v221 = [v66 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems], fabs(v67) == INFINITY))
  {
    v220 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
    v68 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
    v220 = [v68 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems], fabs(v69) == INFINITY))
  {
    v219 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
    v70 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
    v219 = [v70 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems], fabs(v71) == INFINITY))
  {
    v218 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
    v72 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
    v218 = [v72 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems], fabs(v73) == INFINITY))
  {
    v217 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
    v74 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
    v217 = [v74 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenLocationInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenLocationInLastWeekNormalizedAcrossItems], fabs(v75) == INFINITY))
  {
    v216 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenLocationInLastWeekNormalizedAcrossItems];
    v76 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenLocationInLastWeekNormalizedAcrossItems];
    v216 = [v76 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenLocationInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenLocationInLastMonthNormalizedAcrossItems], fabs(v77) == INFINITY))
  {
    v215 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenLocationInLastMonthNormalizedAcrossItems];
    v78 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenLocationInLastMonthNormalizedAcrossItems];
    v215 = [v78 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems], fabs(v79) == INFINITY))
  {
    v214 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
    v80 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
    v214 = [v80 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems], fabs(v81) == INFINITY))
  {
    v213 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
    v82 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
    v213 = [v82 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems], fabs(v83) == INFINITY))
  {
    v212 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems];
    v84 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems];
    v212 = [v84 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems], fabs(v85) == INFINITY))
  {
    v211 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems];
    v86 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems];
    v211 = [v86 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems], fabs(v87) == INFINITY))
  {
    v210 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
    v88 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
    v210 = [v88 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems], fabs(v89) == INFINITY))
  {
    v209 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
    v90 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
    v209 = [v90 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems], fabs(v91) == INFINITY))
  {
    v208 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
    v92 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
    v208 = [v92 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems], fabs(v93) == INFINITY))
  {
    v207 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
    v94 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
    v207 = [v94 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClipScore]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clipScore], fabs(v95) == INFINITY))
  {
    v206 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clipScore];
    v96 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clipScore];
    v206 = [v96 numberWithDouble:?];
  }

  if ([(BMAeroMLPhotosSearchDataCorrelations *)self hasCorrelationMetricVersion])
  {
    v205 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchDataCorrelations correlationMetricVersion](self, "correlationMetricVersion")}];
  }

  else
  {
    v205 = 0;
  }

  if ([(BMAeroMLPhotosSearchDataCorrelations *)self hasCorrelationMetricWindowInDays])
  {
    v97 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchDataCorrelations correlationMetricWindowInDays](self, "correlationMetricWindowInDays")}];
  }

  else
  {
    v97 = 0;
  }

  v247[0] = @"searchSessionUUID";
  null = searchSessionUUID;
  if (!searchSessionUUID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v196 = null;
  v248[0] = null;
  v247[1] = @"uiSurface";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v195 = null2;
  v248[1] = null2;
  v247[2] = @"matchedPeopleRatio";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v194 = null3;
  v248[2] = null3;
  v247[3] = @"matchedLocationRatio";
  null4 = v10;
  if (!v10)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v193 = null4;
  v248[3] = null4;
  v247[4] = @"matchedSceneRatio";
  null5 = v13;
  if (!v13)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v192 = null5;
  v248[4] = null5;
  v247[5] = @"matchedSceneConfidence";
  null6 = v204;
  if (!v204)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v191 = null6;
  v248[5] = null6;
  v247[6] = @"matchedSceneBoundingBox";
  null7 = v18;
  if (!v18)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v190 = null7;
  v248[6] = null7;
  v247[7] = @"matchedOCRCharacterRatio";
  null8 = v246;
  if (!v246)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v248[7] = null8;
  v247[8] = @"matchedOCRImportance";
  null9 = v245;
  if (!v245)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v248[8] = null9;
  v247[9] = @"matchedFieldsCount";
  null10 = v244;
  if (!v244)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v187 = null10;
  v248[9] = null10;
  v247[10] = @"L1Score";
  null11 = v243;
  if (!v243)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v109 = v10;
  v199 = null11;
  v248[10] = null11;
  v247[11] = @"freshness";
  null12 = v242;
  if (!v242)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v111 = searchSessionUUID;
  v198 = null12;
  v248[11] = null12;
  v247[12] = @"favorited";
  null13 = v241;
  if (!v241)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v113 = null13;
  v248[12] = null13;
  v247[13] = @"aestheticScore";
  null14 = v240;
  if (!v240)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v186 = null14;
  v248[13] = null14;
  v247[14] = @"curationScore";
  null15 = v239;
  if (!v239)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v185 = null15;
  v248[14] = null15;
  v247[15] = @"hasEverClickInLastWeek";
  null16 = v238;
  if (!v238)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v184 = null16;
  v248[15] = null16;
  v247[16] = @"hasEverClickInLastMonth";
  null17 = v237;
  if (!v237)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v183 = null17;
  v248[16] = null17;
  v247[17] = @"hasEverShareInLastWeek";
  null18 = v236;
  if (!v236)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v182 = null18;
  v248[17] = null18;
  v247[18] = @"hasEverShareInLastMonth";
  null19 = v235;
  if (!v235)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v181 = null19;
  v248[18] = null19;
  v247[19] = @"clickCountInLastWeekNormalizedAcrossItems";
  null20 = v234;
  if (!v234)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v180 = null20;
  v248[19] = null20;
  v247[20] = @"clickCountInLastMonthNormalizedAcrossItems";
  null21 = v233;
  if (!v233)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v179 = null21;
  v248[20] = null21;
  v247[21] = @"shareCountInLastWeekNormalizedAcrossItems";
  null22 = v232;
  if (!v232)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v178 = null22;
  v248[21] = null22;
  v247[22] = @"shareCountInLastMonthNormalizedAcrossItems";
  null23 = v231;
  if (!v231)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v177 = null23;
  v248[22] = null23;
  v247[23] = @"clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems";
  null24 = v230;
  if (!v230)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v176 = null24;
  v248[23] = null24;
  v247[24] = @"clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems";
  null25 = v229;
  if (!v229)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v175 = null25;
  v248[24] = null25;
  v247[25] = @"clickCountGivenLocationInLastWeekNormalizedAcrossItems";
  null26 = v228;
  if (!v228)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v174 = null26;
  v248[25] = null26;
  v247[26] = @"clickCountGivenLocationInLastMonthNormalizedAcrossItems";
  null27 = v227;
  if (!v227)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v173 = null27;
  v248[26] = null27;
  v247[27] = @"clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems";
  null28 = v226;
  if (!v226)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v172 = null28;
  v248[27] = null28;
  v247[28] = @"clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems";
  null29 = v225;
  if (!v225)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v171 = null29;
  v248[28] = null29;
  v247[29] = @"clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems";
  null30 = v224;
  if (!v224)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v170 = null30;
  v248[29] = null30;
  v247[30] = @"clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems";
  null31 = v223;
  if (!v223)
  {
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v169 = null31;
  v248[30] = null31;
  v247[31] = @"clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems";
  null32 = v222;
  if (!v222)
  {
    null32 = [MEMORY[0x1E695DFB0] null];
  }

  v168 = null32;
  v248[31] = null32;
  v247[32] = @"clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems";
  null33 = v221;
  if (!v221)
  {
    null33 = [MEMORY[0x1E695DFB0] null];
  }

  v167 = null33;
  v248[32] = null33;
  v247[33] = @"clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems";
  null34 = v220;
  if (!v220)
  {
    null34 = [MEMORY[0x1E695DFB0] null];
  }

  v166 = null34;
  v248[33] = null34;
  v247[34] = @"clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems";
  null35 = v219;
  if (!v219)
  {
    null35 = [MEMORY[0x1E695DFB0] null];
  }

  v165 = null35;
  v248[34] = null35;
  v247[35] = @"shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems";
  null36 = v218;
  if (!v218)
  {
    null36 = [MEMORY[0x1E695DFB0] null];
  }

  v164 = null36;
  v248[35] = null36;
  v247[36] = @"shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems";
  null37 = v217;
  if (!v217)
  {
    null37 = [MEMORY[0x1E695DFB0] null];
  }

  v163 = null37;
  v248[36] = null37;
  v247[37] = @"shareCountGivenLocationInLastWeekNormalizedAcrossItems";
  null38 = v216;
  if (!v216)
  {
    null38 = [MEMORY[0x1E695DFB0] null];
  }

  v162 = null38;
  v248[37] = null38;
  v247[38] = @"shareCountGivenLocationInLastMonthNormalizedAcrossItems";
  null39 = v215;
  if (!v215)
  {
    null39 = [MEMORY[0x1E695DFB0] null];
  }

  v161 = null39;
  v248[38] = null39;
  v247[39] = @"shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems";
  null40 = v214;
  if (!v214)
  {
    null40 = [MEMORY[0x1E695DFB0] null];
  }

  v160 = null40;
  v248[39] = null40;
  v247[40] = @"shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems";
  null41 = v213;
  if (!v213)
  {
    null41 = [MEMORY[0x1E695DFB0] null];
  }

  v202 = v7;
  v159 = null41;
  v248[40] = null41;
  v247[41] = @"shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems";
  null42 = v212;
  if (!v212)
  {
    null42 = [MEMORY[0x1E695DFB0] null];
  }

  v201 = v18;
  v158 = null42;
  v248[41] = null42;
  v247[42] = @"shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems";
  null43 = v211;
  if (!v211)
  {
    null43 = [MEMORY[0x1E695DFB0] null];
  }

  v188 = null9;
  v157 = null43;
  v248[42] = null43;
  v247[43] = @"shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems";
  null44 = v210;
  if (!v210)
  {
    null44 = [MEMORY[0x1E695DFB0] null];
  }

  v155 = null44;
  v248[43] = null44;
  v247[44] = @"shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems";
  null45 = v209;
  if (!v209)
  {
    null45 = [MEMORY[0x1E695DFB0] null];
  }

  v200 = v4;
  v248[44] = null45;
  v247[45] = @"shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems";
  null46 = v208;
  if (!v208)
  {
    null46 = [MEMORY[0x1E695DFB0] null];
  }

  v203 = v97;
  v248[45] = null46;
  v247[46] = @"shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems";
  null47 = v207;
  if (!v207)
  {
    null47 = [MEMORY[0x1E695DFB0] null];
  }

  v189 = null8;
  v148 = v109;
  v248[46] = null47;
  v247[47] = @"clipScore";
  null48 = v206;
  if (!v206)
  {
    null48 = [MEMORY[0x1E695DFB0] null];
  }

  v150 = v111;
  v248[47] = null48;
  v247[48] = @"correlationMetricVersion";
  null49 = v205;
  if (!v205)
  {
    null49 = [MEMORY[0x1E695DFB0] null];
  }

  v248[48] = null49;
  v247[49] = @"correlationMetricWindowInDays";
  null50 = v203;
  if (!v203)
  {
    null50 = [MEMORY[0x1E695DFB0] null];
  }

  v248[49] = null50;
  v197 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v248 forKeys:v247 count:{50, v155}];
  if (!v203)
  {
  }

  v153 = v113;
  if (!v205)
  {

    v153 = v113;
  }

  if (!v206)
  {

    v153 = v113;
  }

  if (!v207)
  {

    v153 = v113;
  }

  if (!v208)
  {

    v153 = v113;
  }

  if (!v209)
  {

    v153 = v113;
  }

  if (!v210)
  {

    v153 = v113;
  }

  if (!v211)
  {

    v153 = v113;
  }

  if (!v212)
  {

    v153 = v113;
  }

  if (!v213)
  {

    v153 = v113;
  }

  if (!v214)
  {

    v153 = v113;
  }

  if (!v215)
  {

    v153 = v113;
  }

  if (!v216)
  {

    v153 = v113;
  }

  if (!v217)
  {

    v153 = v113;
  }

  if (!v218)
  {

    v153 = v113;
  }

  if (!v219)
  {

    v153 = v113;
  }

  if (!v220)
  {

    v153 = v113;
  }

  if (!v221)
  {

    v153 = v113;
  }

  if (!v222)
  {

    v153 = v113;
  }

  if (!v223)
  {

    v153 = v113;
  }

  if (!v224)
  {

    v153 = v113;
  }

  if (!v225)
  {

    v153 = v113;
  }

  if (!v226)
  {

    v153 = v113;
  }

  if (!v227)
  {

    v153 = v113;
  }

  if (!v228)
  {

    v153 = v113;
  }

  if (!v229)
  {

    v153 = v113;
  }

  if (!v230)
  {

    v153 = v113;
  }

  if (!v231)
  {

    v153 = v113;
  }

  if (!v232)
  {

    v153 = v113;
  }

  if (!v233)
  {

    v153 = v113;
  }

  if (!v234)
  {

    v153 = v113;
  }

  if (!v235)
  {

    v153 = v113;
  }

  if (!v236)
  {

    v153 = v113;
  }

  if (!v237)
  {

    v153 = v113;
  }

  if (!v238)
  {

    v153 = v113;
  }

  if (!v239)
  {

    v153 = v113;
  }

  if (!v240)
  {

    v153 = v113;
  }

  if (!v241)
  {
  }

  if (!v242)
  {
  }

  if (!v243)
  {
  }

  if (!v244)
  {
  }

  if (!v245)
  {
  }

  if (v246)
  {
    if (v201)
    {
      goto LABEL_375;
    }
  }

  else
  {

    if (v201)
    {
LABEL_375:
      if (v204)
      {
        goto LABEL_376;
      }

      goto LABEL_386;
    }
  }

  if (v204)
  {
LABEL_376:
    if (v13)
    {
      goto LABEL_377;
    }

    goto LABEL_387;
  }

LABEL_386:

  if (v13)
  {
LABEL_377:
    if (v148)
    {
      goto LABEL_378;
    }

    goto LABEL_388;
  }

LABEL_387:

  if (v148)
  {
LABEL_378:
    if (v202)
    {
      goto LABEL_379;
    }

    goto LABEL_389;
  }

LABEL_388:

  if (v202)
  {
LABEL_379:
    if (v200)
    {
      goto LABEL_380;
    }

LABEL_390:

    if (v150)
    {
      goto LABEL_381;
    }

    goto LABEL_391;
  }

LABEL_389:

  if (!v200)
  {
    goto LABEL_390;
  }

LABEL_380:
  if (v150)
  {
    goto LABEL_381;
  }

LABEL_391:

LABEL_381:

  return v197;
}

- (BMAeroMLPhotosSearchDataCorrelations)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v684[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v583 = [dictionaryCopy objectForKeyedSubscript:@"searchSessionUUID"];
  if (!v583 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v581 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v581 = v583;
LABEL_4:
    v584 = [dictionaryCopy objectForKeyedSubscript:@"uiSurface"];
    if (!v584 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v579 = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v579 = v584;
LABEL_15:

LABEL_16:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"matchedPeopleRatio"];
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        errorCopy2 = error;
        v12 = 0;
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy2 = error;
        v12 = v10;
LABEL_19:
        v13 = [dictionaryCopy objectForKeyedSubscript:@"matchedLocationRatio"];
        if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v576 = v13;
          v577 = 0;
          goto LABEL_22;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v576 = v13;
          v577 = v13;
LABEL_22:
          v580 = [dictionaryCopy objectForKeyedSubscript:@"matchedSceneRatio"];
          if (!v580 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v578 = 0;
            goto LABEL_25;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v578 = v580;
LABEL_25:
            v14 = [dictionaryCopy objectForKeyedSubscript:@"matchedSceneConfidence"];
            v575 = v14;
            if (!v14 || (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v16 = 0;
              goto LABEL_28;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = v15;
LABEL_28:
              v17 = [dictionaryCopy objectForKeyedSubscript:@"matchedSceneBoundingBox"];
              v565 = v17;
              if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v532 = 0;
LABEL_31:
                v19 = [dictionaryCopy objectForKeyedSubscript:@"matchedOCRCharacterRatio"];
                v564 = v19;
                if (v19 && (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v21 = errorCopy2;
                    if (!errorCopy2)
                    {
                      v8 = 0;
                      v94 = v576;
                      v30 = v12;
                      errorCopy2 = v577;
LABEL_471:
                      v120 = v532;
                      goto LABEL_472;
                    }

                    v135 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v537 = v10;
                    v136 = *MEMORY[0x1E698F240];
                    v669 = *MEMORY[0x1E696A578];
                    v137 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v382 = objc_opt_class();
                    v138 = v137;
                    errorCopy2 = v577;
                    v30 = v12;
                    v24 = [v138 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v382, @"matchedOCRCharacterRatio"];
                    v670 = v24;
                    v139 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v670 forKeys:&v669 count:1];
                    v140 = v136;
                    v10 = v537;
                    v531 = v139;
                    v8 = 0;
                    *v21 = [v135 initWithDomain:v140 code:2 userInfo:?];
                    v21 = 0;
                    v94 = v576;
                    goto LABEL_470;
                  }

                  v21 = v20;
                }

                else
                {
                  v21 = 0;
                }

                v22 = [dictionaryCopy objectForKeyedSubscript:@"matchedOCRImportance"];
                v531 = v22;
                if (!v22 || (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v24 = 0;
                  goto LABEL_37;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v24 = v23;
LABEL_37:
                  v25 = [dictionaryCopy objectForKeyedSubscript:@"matchedFieldsCount"];
                  v526 = v21;
                  v529 = v25;
                  if (!v25 || (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v521 = 0;
                    goto LABEL_40;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v521 = v26;
LABEL_40:
                    v27 = [dictionaryCopy objectForKeyedSubscript:@"L1Score"];
                    v520 = v24;
                    v527 = v27;
                    if (!v27 || (v28 = v27, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v524 = 0;
                      goto LABEL_43;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v524 = v28;
LABEL_43:
                      v29 = [dictionaryCopy objectForKeyedSubscript:@"freshness"];
                      v30 = v12;
                      if (!v29 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v31 = 0;
                        goto LABEL_46;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v31 = v29;
LABEL_46:
                        v32 = [dictionaryCopy objectForKeyedSubscript:@"favorited"];
                        v516 = v16;
                        v514 = v29;
                        v517 = v31;
                        v519 = v32;
                        if (!v32 || (v33 = v32, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v518 = 0;
LABEL_49:
                          v522 = [dictionaryCopy objectForKeyedSubscript:@"aestheticScore"];
                          if (v522 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                          {
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              if (!errorCopy2)
                              {
                                v515 = 0;
                                v8 = 0;
                                v94 = v576;
                                errorCopy2 = v577;
LABEL_464:
                                v144 = v521;
                                goto LABEL_465;
                              }

                              v174 = errorCopy2;
                              v175 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v571 = dictionaryCopy;
                              v176 = *MEMORY[0x1E698F240];
                              v657 = *MEMORY[0x1E696A578];
                              v177 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v388 = objc_opt_class();
                              v178 = v177;
                              errorCopy2 = v577;
                              v512 = [v178 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v388, @"aestheticScore"];
                              v658 = v512;
                              v179 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v658 forKeys:&v657 count:1];
                              v180 = v176;
                              dictionaryCopy = v571;
                              v513 = v179;
                              v515 = 0;
                              v8 = 0;
                              *v174 = [v175 initWithDomain:v180 code:2 userInfo:?];
                              v94 = v576;
                              goto LABEL_463;
                            }

                            v515 = v522;
                          }

                          else
                          {
                            v515 = 0;
                          }

                          v34 = [dictionaryCopy objectForKeyedSubscript:@"curationScore"];
                          v513 = v34;
                          if (!v34 || (v35 = v34, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v512 = 0;
                            goto LABEL_55;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v512 = v35;
LABEL_55:
                            v36 = [dictionaryCopy objectForKeyedSubscript:@"hasEverClickInLastWeek"];
                            v511 = v36;
                            if (!v36 || (v37 = v36, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v38 = 0;
                              goto LABEL_58;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v38 = v37;
LABEL_58:
                              v39 = [dictionaryCopy objectForKeyedSubscript:@"hasEverClickInLastMonth"];
                              if (!v39 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v509 = 0;
                                goto LABEL_61;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v509 = v39;
LABEL_61:
                                v40 = [dictionaryCopy objectForKeyedSubscript:@"hasEverShareInLastWeek"];
                                v508 = v40;
                                if (!v40 || (v41 = v40, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v506 = 0;
                                  goto LABEL_64;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v506 = v41;
LABEL_64:
                                  v42 = [dictionaryCopy objectForKeyedSubscript:@"hasEverShareInLastMonth"];
                                  v505 = v42;
                                  if (!v42 || (v43 = v42, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v503 = 0;
                                    goto LABEL_67;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v503 = v43;
LABEL_67:
                                    v44 = [dictionaryCopy objectForKeyedSubscript:@"clickCountInLastWeekNormalizedAcrossItems"];
                                    v502 = v44;
                                    if (!v44 || (v45 = v44, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v500 = 0;
                                      goto LABEL_70;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v500 = v45;
LABEL_70:
                                      v46 = [dictionaryCopy objectForKeyedSubscript:@"clickCountInLastMonthNormalizedAcrossItems"];
                                      v499 = v46;
                                      if (!v46 || (v47 = v46, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v497 = 0;
                                        goto LABEL_73;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v497 = v47;
LABEL_73:
                                        v48 = [dictionaryCopy objectForKeyedSubscript:@"shareCountInLastWeekNormalizedAcrossItems"];
                                        v496 = v48;
                                        if (!v48 || (v49 = v48, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v494 = 0;
                                          goto LABEL_76;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v494 = v49;
LABEL_76:
                                          v50 = [dictionaryCopy objectForKeyedSubscript:@"shareCountInLastMonthNormalizedAcrossItems"];
                                          v493 = v50;
                                          if (!v50 || (v51 = v50, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v491 = 0;
                                            goto LABEL_79;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v491 = v51;
LABEL_79:
                                            v52 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"];
                                            v490 = v52;
                                            if (!v52 || (v53 = v52, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v488 = 0;
                                              goto LABEL_82;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v488 = v53;
LABEL_82:
                                              v54 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"];
                                              v487 = v54;
                                              if (!v54 || (v55 = v54, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v485 = 0;
                                                goto LABEL_85;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v485 = v55;
LABEL_85:
                                                v56 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenLocationInLastWeekNormalizedAcrossItems"];
                                                v484 = v56;
                                                if (!v56 || (v57 = v56, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v482 = 0;
                                                  goto LABEL_88;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v482 = v57;
LABEL_88:
                                                  v58 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenLocationInLastMonthNormalizedAcrossItems"];
                                                  v462 = v58;
                                                  if (!v58 || (v59 = v58, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v461 = 0;
                                                    goto LABEL_91;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v461 = v59;
LABEL_91:
                                                    v60 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems"];
                                                    v460 = v60;
                                                    if (!v60 || (v61 = v60, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v459 = 0;
                                                      goto LABEL_94;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v459 = v61;
LABEL_94:
                                                      v62 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems"];
                                                      v458 = v62;
                                                      if (!v62 || (v63 = v62, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v457 = 0;
                                                        goto LABEL_97;
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v457 = v63;
LABEL_97:
                                                        v64 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"];
                                                        v456 = v64;
                                                        if (!v64 || (v65 = v64, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                        {
                                                          v455 = 0;
                                                          goto LABEL_100;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v455 = v65;
LABEL_100:
                                                          v66 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"];
                                                          v454 = v66;
                                                          if (!v66 || (v67 = v66, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                          {
                                                            v453 = 0;
                                                            goto LABEL_103;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v453 = v67;
LABEL_103:
                                                            v68 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"];
                                                            v452 = v68;
                                                            if (!v68 || (v69 = v68, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                            {
                                                              v451 = 0;
                                                              goto LABEL_106;
                                                            }

                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v451 = v69;
LABEL_106:
                                                              v70 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"];
                                                              v450 = v70;
                                                              if (!v70 || (v71 = v70, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                              {
                                                                v449 = 0;
                                                                goto LABEL_109;
                                                              }

                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v449 = v71;
LABEL_109:
                                                                v72 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"];
                                                                v448 = v72;
                                                                if (!v72 || (v73 = v72, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                {
                                                                  v447 = 0;
                                                                  goto LABEL_112;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v447 = v73;
LABEL_112:
                                                                  v74 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"];
                                                                  v445 = v74;
                                                                  if (!v74 || (v75 = v74, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                  {
                                                                    v444 = 0;
LABEL_115:
                                                                    v76 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"];
                                                                    v442 = v76;
                                                                    if (v76 && (v77 = v76, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                    {
                                                                      objc_opt_class();
                                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                      {
                                                                        if (!errorCopy2)
                                                                        {
                                                                          v443 = 0;
                                                                          v8 = 0;
                                                                          v94 = v576;
                                                                          errorCopy2 = v577;
LABEL_441:
                                                                          v316 = v442;
                                                                          goto LABEL_442;
                                                                        }

                                                                        v318 = errorCopy2;
                                                                        v474 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v558 = v10;
                                                                        v319 = *MEMORY[0x1E698F240];
                                                                        v613 = *MEMORY[0x1E696A578];
                                                                        v320 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                        v410 = objc_opt_class();
                                                                        v321 = v320;
                                                                        errorCopy2 = v577;
                                                                        v441 = [v321 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v410, @"shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"];
                                                                        v614 = v441;
                                                                        v322 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v614 forKeys:&v613 count:1];
                                                                        v323 = v319;
                                                                        v10 = v558;
                                                                        v446 = v322;
                                                                        v443 = 0;
                                                                        v8 = 0;
                                                                        *v318 = [v474 initWithDomain:v323 code:2 userInfo:?];
                                                                        v94 = v576;
                                                                        goto LABEL_387;
                                                                      }

                                                                      v443 = v77;
                                                                    }

                                                                    else
                                                                    {
                                                                      v443 = 0;
                                                                    }

                                                                    v446 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"];
                                                                    if (!v446 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                    {
                                                                      v441 = 0;
                                                                      goto LABEL_121;
                                                                    }

                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v441 = v446;
LABEL_121:
                                                                      v78 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenLocationInLastWeekNormalizedAcrossItems"];
                                                                      v439 = v78;
                                                                      if (!v78 || (v79 = v78, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                      {
                                                                        v440 = 0;
                                                                        goto LABEL_124;
                                                                      }

                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        v440 = v79;
LABEL_124:
                                                                        v80 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenLocationInLastMonthNormalizedAcrossItems"];
                                                                        v437 = v80;
                                                                        if (!v80 || (v81 = v80, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                        {
                                                                          v438 = 0;
                                                                          goto LABEL_127;
                                                                        }

                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          v438 = v81;
LABEL_127:
                                                                          v82 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems"];
                                                                          v435 = v82;
                                                                          if (!v82 || (v83 = v82, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                          {
                                                                            v436 = 0;
                                                                            goto LABEL_130;
                                                                          }

                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            v436 = v83;
LABEL_130:
                                                                            v84 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems"];
                                                                            v434 = v84;
                                                                            if (!v84 || (v85 = v84, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                            {
                                                                              v533 = 0;
LABEL_133:
                                                                              v86 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"];
                                                                              v432 = v86;
                                                                              if (v86 && (v87 = v86, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                              {
                                                                                objc_opt_class();
                                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                {
                                                                                  v480 = v30;
                                                                                  if (!errorCopy2)
                                                                                  {
                                                                                    v433 = 0;
                                                                                    v8 = 0;
                                                                                    v94 = v576;
                                                                                    errorCopy2 = v577;
LABEL_434:
                                                                                    v346 = v533;
                                                                                    goto LABEL_435;
                                                                                  }

                                                                                  v574 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                  v355 = *MEMORY[0x1E698F240];
                                                                                  v601 = *MEMORY[0x1E696A578];
                                                                                  v95 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"];
                                                                                  v602 = v95;
                                                                                  v431 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v602 forKeys:&v601 count:1];
                                                                                  v433 = 0;
                                                                                  v8 = 0;
                                                                                  *errorCopy2 = [v574 initWithDomain:v355 code:2 userInfo:?];
                                                                                  goto LABEL_418;
                                                                                }

                                                                                v433 = v87;
                                                                              }

                                                                              else
                                                                              {
                                                                                v433 = 0;
                                                                              }

                                                                              v88 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"];
                                                                              v431 = v88;
                                                                              if (!v88 || (v89 = v88, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                              {
                                                                                v427 = 0;
                                                                                goto LABEL_139;
                                                                              }

                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v427 = v89;
LABEL_139:
                                                                                v429 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"];
                                                                                if (!v429 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                {
                                                                                  v430 = 0;
                                                                                  goto LABEL_142;
                                                                                }

                                                                                objc_opt_class();
                                                                                if (objc_opt_isKindOfClass())
                                                                                {
                                                                                  v430 = v429;
LABEL_142:
                                                                                  v90 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"];
                                                                                  v426 = v90;
                                                                                  if (!v90 || (v91 = v90, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                  {
                                                                                    v428 = 0;
                                                                                    goto LABEL_145;
                                                                                  }

                                                                                  objc_opt_class();
                                                                                  if (objc_opt_isKindOfClass())
                                                                                  {
                                                                                    v428 = v91;
LABEL_145:
                                                                                    v424 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"];
                                                                                    if (!v424 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                    {
                                                                                      v425 = 0;
                                                                                      goto LABEL_148;
                                                                                    }

                                                                                    objc_opt_class();
                                                                                    if (objc_opt_isKindOfClass())
                                                                                    {
                                                                                      v425 = v424;
LABEL_148:
                                                                                      v422 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"];
                                                                                      if (!v422 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                      {
                                                                                        v423 = 0;
                                                                                        goto LABEL_151;
                                                                                      }

                                                                                      objc_opt_class();
                                                                                      if (objc_opt_isKindOfClass())
                                                                                      {
                                                                                        v423 = v422;
LABEL_151:
                                                                                        v420 = [dictionaryCopy objectForKeyedSubscript:@"clipScore"];
                                                                                        if (!v420 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                        {
                                                                                          v421 = 0;
                                                                                          goto LABEL_154;
                                                                                        }

                                                                                        objc_opt_class();
                                                                                        if (objc_opt_isKindOfClass())
                                                                                        {
                                                                                          v421 = v420;
LABEL_154:
                                                                                          v419 = [dictionaryCopy objectForKeyedSubscript:@"correlationMetricVersion"];
                                                                                          if (!v419 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                          {
                                                                                            v463 = 0;
                                                                                            goto LABEL_157;
                                                                                          }

                                                                                          objc_opt_class();
                                                                                          if (objc_opt_isKindOfClass())
                                                                                          {
                                                                                            v463 = v419;
LABEL_157:
                                                                                            v92 = [dictionaryCopy objectForKeyedSubscript:@"correlationMetricWindowInDays"];
                                                                                            v417 = v92;
                                                                                            if (!v92 || (v93 = v92, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                            {
                                                                                              v418 = 0;
LABEL_160:
                                                                                              v94 = v576;
                                                                                              errorCopy2 = v577;
                                                                                              v95 = v427;
                                                                                              v8 = objc_retainAutoreleasedReturnValue( -[BMAeroMLPhotosSearchDataCorrelations initWithSearchSessionUUID:uiSurface:matchedPeopleRatio:matchedLocationRatio:matchedSceneRatio:matchedSceneConfidence:matchedSceneBoundingBox:matchedOCRCharacterRatio:matchedOCRImportance:matchedFieldsCount:L1Score:freshness:favorited:aestheticScore:curationScore:hasEverClickInLastWeek:hasEverClickInLastMonth:hasEverShareInLastWeek:hasEverShareInLastMonth:clickCountInLastWeekNormalizedAcrossItems:clickCountInLastMonthNormalizedAcrossItems:shareCountInLastWeekNormalizedAcrossItems:shareCountInLastMonthNormalizedAcrossItems:clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:clickCountGivenLocationInLastWeekNormalizedAcrossItems:clickCountGivenLocationInLastMonthNormalizedAcrossItems:clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems:clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems:clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:shareCountGivenLocationInLastWeekNormalizedAcrossItems:shareCountGivenLocationInLastMonthNormalizedAcrossItems:shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems:shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems:shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:clipScore:correlationMetricVersion:correlationMetricWindowInDays:]( self,  "initWithSearchSessionUUID:uiSurface:matchedPeopleRatio:matchedLocationRatio:matchedSceneRatio:matchedSceneConfidence:matchedSceneBoundingBox:matchedOCRCharacterRatio:matchedOCRImportance:matchedFieldsCount:L1Score:freshness:favorited:aestheticScore:curationScore:hasEverClickInLastWeek:hasEverClickInLastMonth:hasEverShareInLastWeek:hasEverShareInLastMonth:clickCountInLastWeekNormalizedAcrossItems:clickCountInLastMonthNormalizedAcrossItems:shareCountInLastWeekNormalizedAcrossItems:shareCountInLastMonthNormalizedAcrossItems:clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:clickCountGivenLocationInLastWeekNormalizedAcrossItems:clickCountGivenLocationInLastMonthNormalizedAcrossItems:clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems:clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems:clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:shareCountGivenLocationInLastWeekNormalizedAcrossItems:shareCountGivenLocationInLastMonthNormalizedAcrossItems:shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems:shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems:shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:clipScore:correlationMetricVersion:correlationMetricWindowInDays:",  v581,  [v579 intValue],  v30,  v577,  v578,  v516,  v532,  v526,  v520,  v521,  v524,  v31,  v518,  v515,  v512,  v38,  v509,  v506,  v503,  v500,  v497,  v494,  v491,  v488,  v485,  v482,  v461,  v459,  v457,  v455,  v453,  v451,  v449,  v447,  v444,  v443,  v441,  v440,  v438,  v436,  v533,  v433,  v427,  v430,  v428,  v425,
                                                                                                       v423,
                                                                                                       v421,
                                                                                                       v463,
                                                                                                       v418));
                                                                                              self = v8;
LABEL_426:

LABEL_427:
LABEL_428:

LABEL_429:
LABEL_430:

LABEL_431:
                                                                                              goto LABEL_432;
                                                                                            }

                                                                                            objc_opt_class();
                                                                                            if (objc_opt_isKindOfClass())
                                                                                            {
                                                                                              v418 = v93;
                                                                                              goto LABEL_160;
                                                                                            }

                                                                                            v416 = v38;
                                                                                            v373 = v10;
                                                                                            if (errorCopy2)
                                                                                            {
                                                                                              v374 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                              v375 = *MEMORY[0x1E698F240];
                                                                                              v585 = *MEMORY[0x1E696A578];
                                                                                              v376 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"correlationMetricWindowInDays"];
                                                                                              v586 = v376;
                                                                                              v377 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v586 forKeys:&v585 count:1];
                                                                                              *errorCopy2 = [v374 initWithDomain:v375 code:2 userInfo:v377];
                                                                                            }

                                                                                            v418 = 0;
                                                                                            v8 = 0;
                                                                                            v10 = v373;
LABEL_425:
                                                                                            v94 = v576;
                                                                                            errorCopy2 = v577;
                                                                                            v38 = v416;
                                                                                            v95 = v427;
                                                                                            goto LABEL_426;
                                                                                          }

                                                                                          v416 = v38;
                                                                                          if (errorCopy2)
                                                                                          {
                                                                                            v370 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                            v371 = *MEMORY[0x1E698F240];
                                                                                            v587 = *MEMORY[0x1E696A578];
                                                                                            v418 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"correlationMetricVersion"];
                                                                                            v588 = v418;
                                                                                            v417 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v588 forKeys:&v587 count:1];
                                                                                            v372 = [v370 initWithDomain:v371 code:2 userInfo:?];
                                                                                            v463 = 0;
                                                                                            v8 = 0;
                                                                                            *errorCopy2 = v372;
                                                                                            goto LABEL_425;
                                                                                          }

                                                                                          v463 = 0;
                                                                                          v8 = 0;
LABEL_489:
                                                                                          v94 = v576;
                                                                                          errorCopy2 = v577;
                                                                                          v38 = v416;
                                                                                          v95 = v427;
                                                                                          goto LABEL_427;
                                                                                        }

                                                                                        v416 = v38;
                                                                                        if (errorCopy2)
                                                                                        {
                                                                                          v367 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                          v368 = *MEMORY[0x1E698F240];
                                                                                          v589 = *MEMORY[0x1E696A578];
                                                                                          v463 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"clipScore"];
                                                                                          v590 = v463;
                                                                                          v419 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v590 forKeys:&v589 count:1];
                                                                                          v369 = [v367 initWithDomain:v368 code:2 userInfo:?];
                                                                                          v421 = 0;
                                                                                          v8 = 0;
                                                                                          *errorCopy2 = v369;
                                                                                          goto LABEL_489;
                                                                                        }

                                                                                        v421 = 0;
                                                                                        v8 = 0;
                                                                                        v94 = v576;
                                                                                        errorCopy2 = v577;
LABEL_487:
                                                                                        v95 = v427;
                                                                                        goto LABEL_428;
                                                                                      }

                                                                                      v481 = v30;
                                                                                      if (errorCopy2)
                                                                                      {
                                                                                        v365 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v366 = *MEMORY[0x1E698F240];
                                                                                        v591 = *MEMORY[0x1E696A578];
                                                                                        v421 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"];
                                                                                        v592 = v421;
                                                                                        v420 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v592 forKeys:&v591 count:1];
                                                                                        v423 = 0;
                                                                                        v8 = 0;
                                                                                        *errorCopy2 = [v365 initWithDomain:v366 code:2 userInfo:?];
                                                                                        v30 = v481;
                                                                                        v94 = v576;
                                                                                        errorCopy2 = v577;
                                                                                        goto LABEL_487;
                                                                                      }

                                                                                      v423 = 0;
                                                                                      v8 = 0;
LABEL_485:
                                                                                      v30 = v481;
                                                                                      v94 = v576;
                                                                                      errorCopy2 = v577;
                                                                                      v95 = v427;
                                                                                      goto LABEL_429;
                                                                                    }

                                                                                    v481 = v30;
                                                                                    if (errorCopy2)
                                                                                    {
                                                                                      v363 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                      v364 = *MEMORY[0x1E698F240];
                                                                                      v593 = *MEMORY[0x1E696A578];
                                                                                      v423 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"];
                                                                                      v594 = v423;
                                                                                      v422 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v594 forKeys:&v593 count:1];
                                                                                      v425 = 0;
                                                                                      v8 = 0;
                                                                                      *errorCopy2 = [v363 initWithDomain:v364 code:2 userInfo:?];
                                                                                      goto LABEL_485;
                                                                                    }

                                                                                    v425 = 0;
                                                                                    v8 = 0;
LABEL_483:
                                                                                    v30 = v481;
                                                                                    v94 = v576;
                                                                                    errorCopy2 = v577;
                                                                                    v95 = v427;
                                                                                    goto LABEL_430;
                                                                                  }

                                                                                  v481 = v30;
                                                                                  if (errorCopy2)
                                                                                  {
                                                                                    v361 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                    v362 = *MEMORY[0x1E698F240];
                                                                                    v595 = *MEMORY[0x1E696A578];
                                                                                    v425 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"];
                                                                                    v596 = v425;
                                                                                    v424 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v596 forKeys:&v595 count:1];
                                                                                    v428 = 0;
                                                                                    v8 = 0;
                                                                                    *errorCopy2 = [v361 initWithDomain:v362 code:2 userInfo:?];
                                                                                    goto LABEL_483;
                                                                                  }

                                                                                  v428 = 0;
                                                                                  v8 = 0;
LABEL_481:
                                                                                  v30 = v481;
                                                                                  v94 = v576;
                                                                                  errorCopy2 = v577;
                                                                                  v95 = v427;
                                                                                  goto LABEL_431;
                                                                                }

                                                                                v481 = v30;
                                                                                if (errorCopy2)
                                                                                {
                                                                                  v359 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                  v360 = *MEMORY[0x1E698F240];
                                                                                  v597 = *MEMORY[0x1E696A578];
                                                                                  v428 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"];
                                                                                  v598 = v428;
                                                                                  v426 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v598 forKeys:&v597 count:1];
                                                                                  v430 = 0;
                                                                                  v8 = 0;
                                                                                  *errorCopy2 = [v359 initWithDomain:v360 code:2 userInfo:?];
                                                                                  goto LABEL_481;
                                                                                }

                                                                                v430 = 0;
                                                                                v8 = 0;
                                                                                v94 = v576;
                                                                                errorCopy2 = v577;
                                                                                v95 = v427;
LABEL_432:

                                                                                goto LABEL_433;
                                                                              }

                                                                              v480 = v30;
                                                                              if (errorCopy2)
                                                                              {
                                                                                v356 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v357 = *MEMORY[0x1E698F240];
                                                                                v599 = *MEMORY[0x1E696A578];
                                                                                v430 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"];
                                                                                v600 = v430;
                                                                                v429 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v600 forKeys:&v599 count:1];
                                                                                v358 = [v356 initWithDomain:v357 code:2 userInfo:?];
                                                                                v95 = 0;
                                                                                v8 = 0;
                                                                                *errorCopy2 = v358;
                                                                                v30 = v480;
                                                                                v94 = v576;
                                                                                errorCopy2 = v577;
                                                                                goto LABEL_432;
                                                                              }

                                                                              v95 = 0;
                                                                              v8 = 0;
LABEL_418:
                                                                              v30 = v480;
                                                                              v94 = v576;
                                                                              errorCopy2 = v577;
LABEL_433:

                                                                              goto LABEL_434;
                                                                            }

                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              v533 = v85;
                                                                              goto LABEL_133;
                                                                            }

                                                                            if (errorCopy2)
                                                                            {
                                                                              v349 = errorCopy2;
                                                                              v479 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v563 = v10;
                                                                              v350 = *MEMORY[0x1E698F240];
                                                                              v603 = *MEMORY[0x1E696A578];
                                                                              v351 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                              v415 = objc_opt_class();
                                                                              v352 = v351;
                                                                              errorCopy2 = v577;
                                                                              v433 = [v352 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v415, @"shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems"];
                                                                              v604 = v433;
                                                                              v353 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v604 forKeys:&v603 count:1];
                                                                              v354 = v350;
                                                                              v10 = v563;
                                                                              v432 = v353;
                                                                              v346 = 0;
                                                                              v8 = 0;
                                                                              *v349 = [v479 initWithDomain:v354 code:2 userInfo:?];
                                                                              v94 = v576;
                                                                              v31 = v517;
LABEL_435:

                                                                              goto LABEL_436;
                                                                            }

                                                                            v346 = 0;
                                                                            v8 = 0;
                                                                            v94 = v576;
                                                                            errorCopy2 = v577;
LABEL_411:
                                                                            v31 = v517;
LABEL_436:

                                                                            goto LABEL_437;
                                                                          }

                                                                          if (errorCopy2)
                                                                          {
                                                                            v342 = errorCopy2;
                                                                            v478 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v562 = v10;
                                                                            v343 = *MEMORY[0x1E698F240];
                                                                            v605 = *MEMORY[0x1E696A578];
                                                                            v344 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                            v414 = objc_opt_class();
                                                                            v345 = v344;
                                                                            errorCopy2 = v577;
                                                                            v346 = [v345 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v414, @"shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems"];
                                                                            v606 = v346;
                                                                            v347 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v606 forKeys:&v605 count:1];
                                                                            v348 = v343;
                                                                            v10 = v562;
                                                                            v434 = v347;
                                                                            v436 = 0;
                                                                            v8 = 0;
                                                                            *v342 = [v478 initWithDomain:v348 code:2 userInfo:?];
                                                                            v94 = v576;
                                                                            goto LABEL_411;
                                                                          }

                                                                          v436 = 0;
                                                                          v8 = 0;
                                                                          v94 = v576;
                                                                          errorCopy2 = v577;
LABEL_405:
                                                                          v31 = v517;
LABEL_437:

                                                                          goto LABEL_438;
                                                                        }

                                                                        if (errorCopy2)
                                                                        {
                                                                          v336 = errorCopy2;
                                                                          v477 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v561 = v10;
                                                                          v337 = *MEMORY[0x1E698F240];
                                                                          v607 = *MEMORY[0x1E696A578];
                                                                          v338 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                          v413 = objc_opt_class();
                                                                          v339 = v338;
                                                                          errorCopy2 = v577;
                                                                          v436 = [v339 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v413, @"shareCountGivenLocationInLastMonthNormalizedAcrossItems"];
                                                                          v608 = v436;
                                                                          v340 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v608 forKeys:&v607 count:1];
                                                                          v341 = v337;
                                                                          v10 = v561;
                                                                          v435 = v340;
                                                                          v438 = 0;
                                                                          v8 = 0;
                                                                          *v336 = [v477 initWithDomain:v341 code:2 userInfo:?];
                                                                          v94 = v576;
                                                                          goto LABEL_405;
                                                                        }

                                                                        v438 = 0;
                                                                        v8 = 0;
                                                                        v94 = v576;
                                                                        errorCopy2 = v577;
LABEL_399:
                                                                        v31 = v517;
LABEL_438:

                                                                        goto LABEL_439;
                                                                      }

                                                                      if (errorCopy2)
                                                                      {
                                                                        v330 = errorCopy2;
                                                                        v476 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v560 = v10;
                                                                        v331 = *MEMORY[0x1E698F240];
                                                                        v609 = *MEMORY[0x1E696A578];
                                                                        v332 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                        v412 = objc_opt_class();
                                                                        v333 = v332;
                                                                        errorCopy2 = v577;
                                                                        v438 = [v333 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v412, @"shareCountGivenLocationInLastWeekNormalizedAcrossItems"];
                                                                        v610 = v438;
                                                                        v334 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v610 forKeys:&v609 count:1];
                                                                        v335 = v331;
                                                                        v10 = v560;
                                                                        v437 = v334;
                                                                        v440 = 0;
                                                                        v8 = 0;
                                                                        *v330 = [v476 initWithDomain:v335 code:2 userInfo:?];
                                                                        v94 = v576;
                                                                        goto LABEL_399;
                                                                      }

                                                                      v440 = 0;
                                                                      v8 = 0;
                                                                      v94 = v576;
                                                                      errorCopy2 = v577;
LABEL_393:
                                                                      v31 = v517;
LABEL_439:

                                                                      goto LABEL_440;
                                                                    }

                                                                    if (errorCopy2)
                                                                    {
                                                                      v324 = errorCopy2;
                                                                      v475 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                      v559 = v10;
                                                                      v325 = *MEMORY[0x1E698F240];
                                                                      v611 = *MEMORY[0x1E696A578];
                                                                      v326 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                      v411 = objc_opt_class();
                                                                      v327 = v326;
                                                                      errorCopy2 = v577;
                                                                      v440 = [v327 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v411, @"shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"];
                                                                      v612 = v440;
                                                                      v328 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v612 forKeys:&v611 count:1];
                                                                      v329 = v325;
                                                                      v10 = v559;
                                                                      v439 = v328;
                                                                      v441 = 0;
                                                                      v8 = 0;
                                                                      *v324 = [v475 initWithDomain:v329 code:2 userInfo:?];
                                                                      v94 = v576;
                                                                      goto LABEL_393;
                                                                    }

                                                                    v441 = 0;
                                                                    v8 = 0;
                                                                    v94 = v576;
                                                                    errorCopy2 = v577;
LABEL_387:
                                                                    v31 = v517;
LABEL_440:

                                                                    goto LABEL_441;
                                                                  }

                                                                  objc_opt_class();
                                                                  if (objc_opt_isKindOfClass())
                                                                  {
                                                                    v444 = v75;
                                                                    goto LABEL_115;
                                                                  }

                                                                  if (errorCopy2)
                                                                  {
                                                                    v312 = errorCopy2;
                                                                    v473 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v557 = v10;
                                                                    v313 = *MEMORY[0x1E698F240];
                                                                    v615 = *MEMORY[0x1E696A578];
                                                                    v314 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                    v409 = objc_opt_class();
                                                                    v315 = v314;
                                                                    errorCopy2 = v577;
                                                                    v443 = [v315 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v409, @"clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"];
                                                                    v616 = v443;
                                                                    v316 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v616 forKeys:&v615 count:1];
                                                                    v317 = v313;
                                                                    v10 = v557;
                                                                    v444 = 0;
                                                                    v8 = 0;
                                                                    *v312 = [v473 initWithDomain:v317 code:2 userInfo:v316];
                                                                    v94 = v576;
                                                                    v31 = v517;
LABEL_442:

                                                                    goto LABEL_443;
                                                                  }

                                                                  v444 = 0;
                                                                  v8 = 0;
                                                                  v94 = v576;
                                                                  errorCopy2 = v577;
LABEL_376:
                                                                  v31 = v517;
LABEL_443:

                                                                  goto LABEL_444;
                                                                }

                                                                if (errorCopy2)
                                                                {
                                                                  v306 = errorCopy2;
                                                                  v472 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v556 = v10;
                                                                  v307 = *MEMORY[0x1E698F240];
                                                                  v617 = *MEMORY[0x1E696A578];
                                                                  v308 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                  v408 = objc_opt_class();
                                                                  v309 = v308;
                                                                  errorCopy2 = v577;
                                                                  v444 = [v309 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v408, @"clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"];
                                                                  v618 = v444;
                                                                  v310 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v618 forKeys:&v617 count:1];
                                                                  v311 = v307;
                                                                  v10 = v556;
                                                                  v445 = v310;
                                                                  v447 = 0;
                                                                  v8 = 0;
                                                                  *v306 = [v472 initWithDomain:v311 code:2 userInfo:?];
                                                                  v94 = v576;
                                                                  goto LABEL_376;
                                                                }

                                                                v447 = 0;
                                                                v8 = 0;
                                                                v94 = v576;
                                                                errorCopy2 = v577;
LABEL_370:
                                                                v31 = v517;
LABEL_444:

                                                                goto LABEL_445;
                                                              }

                                                              if (errorCopy2)
                                                              {
                                                                v300 = errorCopy2;
                                                                v471 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v555 = v10;
                                                                v301 = *MEMORY[0x1E698F240];
                                                                v619 = *MEMORY[0x1E696A578];
                                                                v302 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                v407 = objc_opt_class();
                                                                v303 = v302;
                                                                errorCopy2 = v577;
                                                                v447 = [v303 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v407, @"clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"];
                                                                v620 = v447;
                                                                v304 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v620 forKeys:&v619 count:1];
                                                                v305 = v301;
                                                                v10 = v555;
                                                                v448 = v304;
                                                                v449 = 0;
                                                                v8 = 0;
                                                                *v300 = [v471 initWithDomain:v305 code:2 userInfo:?];
                                                                v94 = v576;
                                                                goto LABEL_370;
                                                              }

                                                              v449 = 0;
                                                              v8 = 0;
                                                              v94 = v576;
                                                              errorCopy2 = v577;
LABEL_364:
                                                              v31 = v517;
LABEL_445:

                                                              goto LABEL_446;
                                                            }

                                                            if (errorCopy2)
                                                            {
                                                              v294 = errorCopy2;
                                                              v470 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v554 = v10;
                                                              v295 = *MEMORY[0x1E698F240];
                                                              v621 = *MEMORY[0x1E696A578];
                                                              v296 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                              v406 = objc_opt_class();
                                                              v297 = v296;
                                                              errorCopy2 = v577;
                                                              v449 = [v297 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v406, @"clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"];
                                                              v622 = v449;
                                                              v298 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v622 forKeys:&v621 count:1];
                                                              v299 = v295;
                                                              v10 = v554;
                                                              v450 = v298;
                                                              v451 = 0;
                                                              v8 = 0;
                                                              *v294 = [v470 initWithDomain:v299 code:2 userInfo:?];
                                                              v94 = v576;
                                                              goto LABEL_364;
                                                            }

                                                            v451 = 0;
                                                            v8 = 0;
                                                            v94 = v576;
                                                            errorCopy2 = v577;
LABEL_358:
                                                            v31 = v517;
LABEL_446:

                                                            goto LABEL_447;
                                                          }

                                                          if (errorCopy2)
                                                          {
                                                            v288 = errorCopy2;
                                                            v469 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v553 = v10;
                                                            v289 = *MEMORY[0x1E698F240];
                                                            v623 = *MEMORY[0x1E696A578];
                                                            v290 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                            v405 = objc_opt_class();
                                                            v291 = v290;
                                                            errorCopy2 = v577;
                                                            v451 = [v291 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v405, @"clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"];
                                                            v624 = v451;
                                                            v292 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v624 forKeys:&v623 count:1];
                                                            v293 = v289;
                                                            v10 = v553;
                                                            v452 = v292;
                                                            v453 = 0;
                                                            v8 = 0;
                                                            *v288 = [v469 initWithDomain:v293 code:2 userInfo:?];
                                                            v94 = v576;
                                                            goto LABEL_358;
                                                          }

                                                          v453 = 0;
                                                          v8 = 0;
                                                          v94 = v576;
                                                          errorCopy2 = v577;
LABEL_352:
                                                          v31 = v517;
LABEL_447:

                                                          goto LABEL_448;
                                                        }

                                                        if (errorCopy2)
                                                        {
                                                          v282 = errorCopy2;
                                                          v468 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v552 = v10;
                                                          v283 = *MEMORY[0x1E698F240];
                                                          v625 = *MEMORY[0x1E696A578];
                                                          v284 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                          v404 = objc_opt_class();
                                                          v285 = v284;
                                                          errorCopy2 = v577;
                                                          v453 = [v285 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v404, @"clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"];
                                                          v626 = v453;
                                                          v286 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v626 forKeys:&v625 count:1];
                                                          v287 = v283;
                                                          v10 = v552;
                                                          v454 = v286;
                                                          v455 = 0;
                                                          v8 = 0;
                                                          *v282 = [v468 initWithDomain:v287 code:2 userInfo:?];
                                                          v94 = v576;
                                                          goto LABEL_352;
                                                        }

                                                        v455 = 0;
                                                        v8 = 0;
                                                        v94 = v576;
                                                        errorCopy2 = v577;
LABEL_346:
                                                        v31 = v517;
LABEL_448:

                                                        goto LABEL_449;
                                                      }

                                                      if (errorCopy2)
                                                      {
                                                        v276 = errorCopy2;
                                                        v467 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v551 = v10;
                                                        v277 = *MEMORY[0x1E698F240];
                                                        v627 = *MEMORY[0x1E696A578];
                                                        v278 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                        v403 = objc_opt_class();
                                                        v279 = v278;
                                                        errorCopy2 = v577;
                                                        v455 = [v279 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v403, @"clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems"];
                                                        v628 = v455;
                                                        v280 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v628 forKeys:&v627 count:1];
                                                        v281 = v277;
                                                        v10 = v551;
                                                        v456 = v280;
                                                        v457 = 0;
                                                        v8 = 0;
                                                        *v276 = [v467 initWithDomain:v281 code:2 userInfo:?];
                                                        v94 = v576;
                                                        goto LABEL_346;
                                                      }

                                                      v457 = 0;
                                                      v8 = 0;
                                                      v94 = v576;
                                                      errorCopy2 = v577;
LABEL_340:
                                                      v31 = v517;
LABEL_449:

                                                      goto LABEL_450;
                                                    }

                                                    if (errorCopy2)
                                                    {
                                                      v270 = errorCopy2;
                                                      v466 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v550 = v10;
                                                      v271 = *MEMORY[0x1E698F240];
                                                      v629 = *MEMORY[0x1E696A578];
                                                      v272 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                      v402 = objc_opt_class();
                                                      v273 = v272;
                                                      errorCopy2 = v577;
                                                      v457 = [v273 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v402, @"clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems"];
                                                      v630 = v457;
                                                      v274 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v630 forKeys:&v629 count:1];
                                                      v275 = v271;
                                                      v10 = v550;
                                                      v458 = v274;
                                                      v459 = 0;
                                                      v8 = 0;
                                                      *v270 = [v466 initWithDomain:v275 code:2 userInfo:?];
                                                      v94 = v576;
                                                      goto LABEL_340;
                                                    }

                                                    v459 = 0;
                                                    v8 = 0;
                                                    v94 = v576;
                                                    errorCopy2 = v577;
LABEL_334:
                                                    v31 = v517;
LABEL_450:

                                                    goto LABEL_451;
                                                  }

                                                  if (errorCopy2)
                                                  {
                                                    v264 = errorCopy2;
                                                    v465 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v549 = v10;
                                                    v265 = *MEMORY[0x1E698F240];
                                                    v631 = *MEMORY[0x1E696A578];
                                                    v266 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                    v401 = objc_opt_class();
                                                    v267 = v266;
                                                    errorCopy2 = v577;
                                                    v459 = [v267 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v401, @"clickCountGivenLocationInLastMonthNormalizedAcrossItems"];
                                                    v632 = v459;
                                                    v268 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v632 forKeys:&v631 count:1];
                                                    v269 = v265;
                                                    v10 = v549;
                                                    v460 = v268;
                                                    v461 = 0;
                                                    v8 = 0;
                                                    *v264 = [v465 initWithDomain:v269 code:2 userInfo:?];
                                                    v94 = v576;
                                                    goto LABEL_334;
                                                  }

                                                  v461 = 0;
                                                  v8 = 0;
                                                  v94 = v576;
                                                  errorCopy2 = v577;
LABEL_328:
                                                  v31 = v517;
LABEL_451:

                                                  goto LABEL_452;
                                                }

                                                if (errorCopy2)
                                                {
                                                  v257 = errorCopy2;
                                                  v483 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v548 = v10;
                                                  v258 = *MEMORY[0x1E698F240];
                                                  v633 = *MEMORY[0x1E696A578];
                                                  v259 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                  v400 = objc_opt_class();
                                                  v260 = v259;
                                                  errorCopy2 = v577;
                                                  v461 = [v260 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v400, @"clickCountGivenLocationInLastWeekNormalizedAcrossItems"];
                                                  v634 = v461;
                                                  v261 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v634 forKeys:&v633 count:1];
                                                  v262 = v258;
                                                  v10 = v548;
                                                  v462 = v261;
                                                  v263 = [v483 initWithDomain:v262 code:2 userInfo:?];
                                                  v482 = 0;
                                                  v8 = 0;
                                                  *v257 = v263;
                                                  v94 = v576;
                                                  goto LABEL_328;
                                                }

                                                v482 = 0;
                                                v8 = 0;
                                                v94 = v576;
                                                errorCopy2 = v577;
LABEL_322:
                                                v31 = v517;
LABEL_452:

                                                goto LABEL_453;
                                              }

                                              if (errorCopy2)
                                              {
                                                v250 = errorCopy2;
                                                v486 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v547 = v10;
                                                v251 = *MEMORY[0x1E698F240];
                                                v635 = *MEMORY[0x1E696A578];
                                                v252 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                v399 = objc_opt_class();
                                                v253 = v252;
                                                errorCopy2 = v577;
                                                v482 = [v253 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v399, @"clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"];
                                                v636 = v482;
                                                v254 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v636 forKeys:&v635 count:1];
                                                v255 = v251;
                                                v10 = v547;
                                                v484 = v254;
                                                v256 = [v486 initWithDomain:v255 code:2 userInfo:?];
                                                v485 = 0;
                                                v8 = 0;
                                                *v250 = v256;
                                                v94 = v576;
                                                goto LABEL_322;
                                              }

                                              v485 = 0;
                                              v8 = 0;
                                              v94 = v576;
                                              errorCopy2 = v577;
LABEL_316:
                                              v31 = v517;
LABEL_453:

                                              goto LABEL_454;
                                            }

                                            if (errorCopy2)
                                            {
                                              v243 = errorCopy2;
                                              v489 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v546 = v10;
                                              v244 = *MEMORY[0x1E698F240];
                                              v637 = *MEMORY[0x1E696A578];
                                              v245 = objc_alloc(MEMORY[0x1E696AEC0]);
                                              v398 = objc_opt_class();
                                              v246 = v245;
                                              errorCopy2 = v577;
                                              v485 = [v246 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v398, @"clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"];
                                              v638 = v485;
                                              v247 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v638 forKeys:&v637 count:1];
                                              v248 = v244;
                                              v10 = v546;
                                              v487 = v247;
                                              v249 = [v489 initWithDomain:v248 code:2 userInfo:?];
                                              v488 = 0;
                                              v8 = 0;
                                              *v243 = v249;
                                              v94 = v576;
                                              goto LABEL_316;
                                            }

                                            v488 = 0;
                                            v8 = 0;
                                            v94 = v576;
                                            errorCopy2 = v577;
LABEL_310:
                                            v31 = v517;
LABEL_454:

                                            goto LABEL_455;
                                          }

                                          if (errorCopy2)
                                          {
                                            v236 = errorCopy2;
                                            v492 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v545 = v10;
                                            v237 = *MEMORY[0x1E698F240];
                                            v639 = *MEMORY[0x1E696A578];
                                            v238 = objc_alloc(MEMORY[0x1E696AEC0]);
                                            v397 = objc_opt_class();
                                            v239 = v238;
                                            errorCopy2 = v577;
                                            v488 = [v239 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v397, @"shareCountInLastMonthNormalizedAcrossItems"];
                                            v640 = v488;
                                            v240 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v640 forKeys:&v639 count:1];
                                            v241 = v237;
                                            v10 = v545;
                                            v490 = v240;
                                            v242 = [v492 initWithDomain:v241 code:2 userInfo:?];
                                            v491 = 0;
                                            v8 = 0;
                                            *v236 = v242;
                                            v94 = v576;
                                            goto LABEL_310;
                                          }

                                          v491 = 0;
                                          v8 = 0;
                                          v94 = v576;
                                          errorCopy2 = v577;
LABEL_304:
                                          v31 = v517;
LABEL_455:

                                          goto LABEL_456;
                                        }

                                        if (errorCopy2)
                                        {
                                          v229 = errorCopy2;
                                          v495 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v544 = v10;
                                          v230 = *MEMORY[0x1E698F240];
                                          v641 = *MEMORY[0x1E696A578];
                                          v231 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v396 = objc_opt_class();
                                          v232 = v231;
                                          errorCopy2 = v577;
                                          v491 = [v232 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v396, @"shareCountInLastWeekNormalizedAcrossItems"];
                                          v642 = v491;
                                          v233 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v642 forKeys:&v641 count:1];
                                          v234 = v230;
                                          v10 = v544;
                                          v493 = v233;
                                          v235 = [v495 initWithDomain:v234 code:2 userInfo:?];
                                          v494 = 0;
                                          v8 = 0;
                                          *v229 = v235;
                                          v94 = v576;
                                          goto LABEL_304;
                                        }

                                        v494 = 0;
                                        v8 = 0;
                                        v94 = v576;
                                        errorCopy2 = v577;
LABEL_298:
                                        v31 = v517;
LABEL_456:

                                        goto LABEL_457;
                                      }

                                      if (errorCopy2)
                                      {
                                        v222 = errorCopy2;
                                        v498 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v543 = v10;
                                        v223 = *MEMORY[0x1E698F240];
                                        v643 = *MEMORY[0x1E696A578];
                                        v224 = objc_alloc(MEMORY[0x1E696AEC0]);
                                        v395 = objc_opt_class();
                                        v225 = v224;
                                        errorCopy2 = v577;
                                        v494 = [v225 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v395, @"clickCountInLastMonthNormalizedAcrossItems"];
                                        v644 = v494;
                                        v226 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v644 forKeys:&v643 count:1];
                                        v227 = v223;
                                        v10 = v543;
                                        v496 = v226;
                                        v228 = [v498 initWithDomain:v227 code:2 userInfo:?];
                                        v497 = 0;
                                        v8 = 0;
                                        *v222 = v228;
                                        v94 = v576;
                                        goto LABEL_298;
                                      }

                                      v497 = 0;
                                      v8 = 0;
                                      v94 = v576;
                                      errorCopy2 = v577;
LABEL_292:
                                      v31 = v517;
LABEL_457:

                                      goto LABEL_458;
                                    }

                                    if (errorCopy2)
                                    {
                                      v215 = errorCopy2;
                                      v501 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v542 = v10;
                                      v216 = *MEMORY[0x1E698F240];
                                      v645 = *MEMORY[0x1E696A578];
                                      v217 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v394 = objc_opt_class();
                                      v218 = v217;
                                      errorCopy2 = v577;
                                      v497 = [v218 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v394, @"clickCountInLastWeekNormalizedAcrossItems"];
                                      v646 = v497;
                                      v219 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v646 forKeys:&v645 count:1];
                                      v220 = v216;
                                      v10 = v542;
                                      v499 = v219;
                                      v221 = [v501 initWithDomain:v220 code:2 userInfo:?];
                                      v500 = 0;
                                      v8 = 0;
                                      *v215 = v221;
                                      v94 = v576;
                                      goto LABEL_292;
                                    }

                                    v500 = 0;
                                    v8 = 0;
                                    v94 = v576;
                                    errorCopy2 = v577;
LABEL_286:
                                    v31 = v517;
LABEL_458:

                                    goto LABEL_459;
                                  }

                                  if (errorCopy2)
                                  {
                                    v208 = errorCopy2;
                                    v504 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v541 = v10;
                                    v209 = *MEMORY[0x1E698F240];
                                    v647 = *MEMORY[0x1E696A578];
                                    v210 = objc_alloc(MEMORY[0x1E696AEC0]);
                                    v393 = objc_opt_class();
                                    v211 = v210;
                                    errorCopy2 = v577;
                                    v500 = [v211 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v393, @"hasEverShareInLastMonth"];
                                    v648 = v500;
                                    v212 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v648 forKeys:&v647 count:1];
                                    v213 = v209;
                                    v10 = v541;
                                    v502 = v212;
                                    v214 = [v504 initWithDomain:v213 code:2 userInfo:?];
                                    v503 = 0;
                                    v8 = 0;
                                    *v208 = v214;
                                    v94 = v576;
                                    goto LABEL_286;
                                  }

                                  v503 = 0;
                                  v8 = 0;
                                  v94 = v576;
                                  errorCopy2 = v577;
LABEL_280:
                                  v31 = v517;
LABEL_459:

                                  goto LABEL_460;
                                }

                                if (errorCopy2)
                                {
                                  v201 = errorCopy2;
                                  v507 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v540 = v10;
                                  v202 = *MEMORY[0x1E698F240];
                                  v649 = *MEMORY[0x1E696A578];
                                  v203 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v392 = objc_opt_class();
                                  v204 = v203;
                                  errorCopy2 = v577;
                                  v503 = [v204 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v392, @"hasEverShareInLastWeek"];
                                  v650 = v503;
                                  v205 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v650 forKeys:&v649 count:1];
                                  v206 = v202;
                                  v10 = v540;
                                  v505 = v205;
                                  v207 = [v507 initWithDomain:v206 code:2 userInfo:?];
                                  v506 = 0;
                                  v8 = 0;
                                  *v201 = v207;
                                  v94 = v576;
                                  goto LABEL_280;
                                }

                                v506 = 0;
                                v8 = 0;
                                v94 = v576;
                                errorCopy2 = v577;
LABEL_274:
                                v31 = v517;
LABEL_460:

                                goto LABEL_461;
                              }

                              if (errorCopy2)
                              {
                                v194 = errorCopy2;
                                v510 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v539 = v10;
                                v195 = *MEMORY[0x1E698F240];
                                v651 = *MEMORY[0x1E696A578];
                                v196 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v391 = objc_opt_class();
                                v197 = v196;
                                errorCopy2 = v577;
                                v506 = [v197 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v391, @"hasEverClickInLastMonth"];
                                v652 = v506;
                                v198 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v652 forKeys:&v651 count:1];
                                v199 = v195;
                                v10 = v539;
                                v508 = v198;
                                v200 = [v510 initWithDomain:v199 code:2 userInfo:?];
                                v509 = 0;
                                v8 = 0;
                                *v194 = v200;
                                v94 = v576;
                                goto LABEL_274;
                              }

                              v509 = 0;
                              v8 = 0;
                              v94 = v576;
                              errorCopy2 = v577;
LABEL_268:
                              v31 = v517;
LABEL_461:

                              goto LABEL_462;
                            }

                            if (errorCopy2)
                            {
                              v188 = errorCopy2;
                              v189 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v573 = dictionaryCopy;
                              v190 = *MEMORY[0x1E698F240];
                              v653 = *MEMORY[0x1E696A578];
                              v191 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v390 = objc_opt_class();
                              v192 = v191;
                              errorCopy2 = v577;
                              v509 = [v192 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v390, @"hasEverClickInLastWeek"];
                              v654 = v509;
                              v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v654 forKeys:&v653 count:1];
                              v193 = v190;
                              dictionaryCopy = v573;
                              v38 = 0;
                              v8 = 0;
                              *v188 = [v189 initWithDomain:v193 code:2 userInfo:v39];
                              v94 = v576;
                              goto LABEL_268;
                            }

                            v38 = 0;
                            v8 = 0;
                            v94 = v576;
                            errorCopy2 = v577;
LABEL_462:

                            v29 = v514;
                            goto LABEL_463;
                          }

                          if (errorCopy2)
                          {
                            v181 = errorCopy2;
                            v182 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v572 = dictionaryCopy;
                            v183 = *MEMORY[0x1E698F240];
                            v655 = *MEMORY[0x1E696A578];
                            v184 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v389 = objc_opt_class();
                            v185 = v184;
                            errorCopy2 = v577;
                            v38 = [v185 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v389, @"curationScore"];
                            v656 = v38;
                            v186 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v656 forKeys:&v655 count:1];
                            v187 = v183;
                            dictionaryCopy = v572;
                            v511 = v186;
                            v512 = 0;
                            v8 = 0;
                            *v181 = [v182 initWithDomain:v187 code:2 userInfo:?];
                            v94 = v576;
                            goto LABEL_462;
                          }

                          v512 = 0;
                          v8 = 0;
                          v94 = v576;
                          errorCopy2 = v577;
LABEL_463:

                          goto LABEL_464;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v518 = v33;
                          goto LABEL_49;
                        }

                        if (errorCopy2)
                        {
                          v167 = errorCopy2;
                          v168 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v570 = dictionaryCopy;
                          v169 = *MEMORY[0x1E698F240];
                          v659 = *MEMORY[0x1E696A578];
                          v170 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v387 = objc_opt_class();
                          v171 = v170;
                          v144 = v521;
                          errorCopy2 = v577;
                          v515 = [v171 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v387, @"favorited"];
                          v660 = v515;
                          v172 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v660 forKeys:&v659 count:1];
                          v173 = v169;
                          dictionaryCopy = v570;
                          v522 = v172;
                          v518 = 0;
                          v8 = 0;
                          *v167 = [v168 initWithDomain:v173 code:2 userInfo:?];
                          v94 = v576;
                          v31 = v517;
LABEL_465:

                          v16 = v516;
                          goto LABEL_466;
                        }

                        v518 = 0;
                        v8 = 0;
                        v94 = v576;
                        errorCopy2 = v577;
                        v144 = v521;
LABEL_466:

                        goto LABEL_467;
                      }

                      v31 = errorCopy2;
                      if (errorCopy2)
                      {
                        v523 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v569 = dictionaryCopy;
                        v162 = *MEMORY[0x1E698F240];
                        v661 = *MEMORY[0x1E696A578];
                        v464 = v12;
                        v163 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v386 = objc_opt_class();
                        v164 = v163;
                        v144 = v521;
                        errorCopy2 = v577;
                        v30 = v464;
                        v518 = [v164 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v386, @"freshness"];
                        v662 = v518;
                        v165 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v662 forKeys:&v661 count:1];
                        v166 = v162;
                        dictionaryCopy = v569;
                        v519 = v165;
                        v8 = 0;
                        *v31 = [v523 initWithDomain:v166 code:2 userInfo:?];
                        v31 = 0;
                        v94 = v576;
                        goto LABEL_466;
                      }

                      v8 = 0;
                      v94 = v576;
                      errorCopy2 = v577;
                      v144 = v521;
LABEL_467:

                      v24 = v520;
                      goto LABEL_468;
                    }

                    if (errorCopy2)
                    {
                      v155 = errorCopy2;
                      v525 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v568 = dictionaryCopy;
                      v156 = *MEMORY[0x1E698F240];
                      v663 = *MEMORY[0x1E696A578];
                      v157 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v385 = objc_opt_class();
                      v158 = v157;
                      errorCopy2 = v577;
                      v30 = v12;
                      v144 = v521;
                      v159 = [v158 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v385, @"L1Score"];
                      v664 = v159;
                      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v664 forKeys:&v663 count:1];
                      v160 = v156;
                      dictionaryCopy = v568;
                      v161 = [v525 initWithDomain:v160 code:2 userInfo:v29];
                      v524 = 0;
                      v8 = 0;
                      *v155 = v161;
                      v31 = v159;
                      v94 = v576;
                      goto LABEL_467;
                    }

                    v524 = 0;
                    v8 = 0;
                    v94 = v576;
                    v30 = v12;
                    errorCopy2 = v577;
                    v144 = v521;
LABEL_468:

                    v21 = v526;
                    goto LABEL_469;
                  }

                  if (errorCopy2)
                  {
                    v148 = errorCopy2;
                    v528 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v567 = dictionaryCopy;
                    v149 = *MEMORY[0x1E698F240];
                    v665 = *MEMORY[0x1E696A578];
                    v150 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v384 = objc_opt_class();
                    v151 = v150;
                    errorCopy2 = v577;
                    v524 = [v151 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v384, @"matchedFieldsCount"];
                    v666 = v524;
                    v152 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v666 forKeys:&v665 count:1];
                    v153 = v528;
                    v154 = v149;
                    dictionaryCopy = v567;
                    v527 = v152;
                    v8 = 0;
                    *v148 = [v153 initWithDomain:v154 code:2 userInfo:?];
                    v30 = v12;
                    v144 = 0;
                    v94 = v576;
                    goto LABEL_468;
                  }

                  v8 = 0;
                  v94 = v576;
                  v30 = v12;
                  v144 = 0;
                  errorCopy2 = v577;
LABEL_469:

                  goto LABEL_470;
                }

                v24 = errorCopy2;
                if (errorCopy2)
                {
                  v530 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v538 = v10;
                  v141 = *MEMORY[0x1E698F240];
                  v667 = *MEMORY[0x1E696A578];
                  v142 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v383 = objc_opt_class();
                  v143 = v142;
                  errorCopy2 = v577;
                  v30 = v12;
                  v144 = [v143 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v383, @"matchedOCRImportance"];
                  v668 = v144;
                  v145 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v668 forKeys:&v667 count:1];
                  v146 = v530;
                  v147 = v141;
                  v10 = v538;
                  v529 = v145;
                  v8 = 0;
                  *v24 = [v146 initWithDomain:v147 code:2 userInfo:?];
                  v24 = 0;
                  v94 = v576;
                  goto LABEL_469;
                }

                v8 = 0;
                v94 = v576;
                v30 = v12;
                errorCopy2 = v577;
LABEL_470:

                goto LABEL_471;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v532 = v18;
                goto LABEL_31;
              }

              if (errorCopy2)
              {
                v127 = errorCopy2;
                v128 = objc_alloc(MEMORY[0x1E696ABC0]);
                v536 = v10;
                v129 = *MEMORY[0x1E698F240];
                v671 = *MEMORY[0x1E696A578];
                v130 = objc_alloc(MEMORY[0x1E696AEC0]);
                v381 = objc_opt_class();
                v131 = v130;
                errorCopy2 = v577;
                v30 = v12;
                v132 = [v131 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v381, @"matchedSceneBoundingBox"];
                v672 = v132;
                v133 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v672 forKeys:&v671 count:1];
                v134 = v129;
                v10 = v536;
                v564 = v133;
                v120 = 0;
                v8 = 0;
                *v127 = [v128 initWithDomain:v134 code:2 userInfo:?];
                v21 = v132;
                v94 = v576;
LABEL_472:

                goto LABEL_473;
              }

              v120 = 0;
              v8 = 0;
              v94 = v576;
              v30 = v12;
              errorCopy2 = v577;
LABEL_473:

              goto LABEL_474;
            }

            if (errorCopy2)
            {
              v115 = errorCopy2;
              v116 = objc_alloc(MEMORY[0x1E696ABC0]);
              v535 = v10;
              v117 = *MEMORY[0x1E698F240];
              v673 = *MEMORY[0x1E696A578];
              v118 = objc_alloc(MEMORY[0x1E696AEC0]);
              v380 = objc_opt_class();
              v119 = v118;
              errorCopy2 = v577;
              v30 = v12;
              v120 = [v119 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v380, @"matchedSceneConfidence"];
              v674 = v120;
              v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v674 forKeys:&v673 count:1];
              v122 = v117;
              v10 = v535;
              v565 = v121;
              v16 = 0;
              v8 = 0;
              *v115 = [v116 initWithDomain:v122 code:2 userInfo:?];
              v94 = v576;
              goto LABEL_473;
            }

            v16 = 0;
            v8 = 0;
            v94 = v576;
            v30 = v12;
            errorCopy2 = v577;
LABEL_474:

            goto LABEL_475;
          }

          v30 = v12;
          if (errorCopy2)
          {
            v108 = objc_alloc(MEMORY[0x1E696ABC0]);
            v534 = v10;
            v109 = *MEMORY[0x1E698F240];
            v675 = *MEMORY[0x1E696A578];
            v110 = errorCopy2;
            v111 = objc_alloc(MEMORY[0x1E696AEC0]);
            v379 = objc_opt_class();
            v112 = v111;
            errorCopy2 = v577;
            v16 = [v112 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v379, @"matchedSceneRatio"];
            v676 = v16;
            v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v676 forKeys:&v675 count:1];
            v114 = v109;
            v10 = v534;
            v575 = v113;
            v578 = 0;
            v8 = 0;
            *v110 = [v108 initWithDomain:v114 code:2 userInfo:?];
            v94 = v576;
            goto LABEL_474;
          }

          v578 = 0;
          v8 = 0;
          v94 = v576;
          errorCopy2 = v577;
LABEL_475:

          goto LABEL_476;
        }

        v94 = v13;
        if (errorCopy2)
        {
          v102 = errorCopy2;
          v566 = dictionaryCopy;
          v103 = v10;
          v104 = objc_alloc(MEMORY[0x1E696ABC0]);
          v105 = *MEMORY[0x1E698F240];
          v677 = *MEMORY[0x1E696A578];
          v30 = v12;
          v578 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"matchedLocationRatio"];
          v678 = v578;
          v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v678 forKeys:&v677 count:1];
          v107 = v104;
          v10 = v103;
          dictionaryCopy = v566;
          v580 = v106;
          errorCopy2 = 0;
          v8 = 0;
          *v102 = [v107 initWithDomain:v105 code:2 userInfo:v106];
          goto LABEL_475;
        }

        v8 = 0;
        v30 = v12;
LABEL_476:

        goto LABEL_477;
      }

      if (error)
      {
        v96 = v10;
        v97 = objc_alloc(MEMORY[0x1E696ABC0]);
        v98 = *MEMORY[0x1E698F240];
        v679 = *MEMORY[0x1E696A578];
        v99 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"matchedPeopleRatio"];
        v680 = v99;
        v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v680 forKeys:&v679 count:1];
        v100 = v97;
        v10 = v96;
        v101 = v98;
        errorCopy2 = v99;
        v30 = 0;
        v8 = 0;
        *error = [v100 initWithDomain:v101 code:2 userInfo:v94];
        goto LABEL_476;
      }

      v30 = 0;
      v8 = 0;
LABEL_477:

      goto LABEL_478;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v584;
      v579 = [MEMORY[0x1E696AD98] numberWithInt:BMAeroMLPhotosSearchDataCorrelationsUISurfaceTypeFromString(v9)];

      goto LABEL_15;
    }

    if (error)
    {
      v123 = objc_alloc(MEMORY[0x1E696ABC0]);
      v124 = *MEMORY[0x1E698F240];
      v681 = *MEMORY[0x1E696A578];
      v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"uiSurface"];
      v682 = v30;
      v125 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v682 forKeys:&v681 count:1];
      v126 = v124;
      v10 = v125;
      v579 = 0;
      v8 = 0;
      *error = [v123 initWithDomain:v126 code:2 userInfo:?];
      goto LABEL_477;
    }

    v579 = 0;
    v8 = 0;
LABEL_478:

    goto LABEL_479;
  }

  if (error)
  {
    v6 = objc_alloc(MEMORY[0x1E696ABC0]);
    v7 = *MEMORY[0x1E698F240];
    v683 = *MEMORY[0x1E696A578];
    v579 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"searchSessionUUID"];
    v684[0] = v579;
    v584 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v684 forKeys:&v683 count:1];
    v581 = 0;
    v8 = 0;
    *error = [v6 initWithDomain:v7 code:2 userInfo:?];
    goto LABEL_478;
  }

  v581 = 0;
  v8 = 0;
LABEL_479:

  return v8;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAeroMLPhotosSearchDataCorrelations *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_searchSessionUUID)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_hasMatchedPeopleRatio)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasMatchedLocationRatio)
  {
    PBDataWriterWriteDoubleField();
  }

  v4 = toCopy;
  if (self->_hasMatchedSceneRatio)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasMatchedSceneConfidence)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasMatchedSceneBoundingBox)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasMatchedOCRCharacterRatio)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasMatchedOCRImportance)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasMatchedFieldsCount)
  {
    PBDataWriterWriteUint32Field();
    v4 = toCopy;
  }

  if (self->_hasL1Score)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasFreshness)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasFavorited)
  {
    PBDataWriterWriteBOOLField();
    v4 = toCopy;
  }

  if (self->_hasAestheticScore)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasCurationScore)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasHasEverClickInLastWeek)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasHasEverClickInLastMonth)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasHasEverShareInLastWeek)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasHasEverShareInLastMonth)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasClickCountInLastWeekNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasClickCountInLastMonthNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasShareCountInLastWeekNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasShareCountInLastMonthNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasClickCountGivenLocationInLastWeekNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasClickCountGivenLocationInLastMonthNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasShareCountGivenLocationInLastWeekNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasShareCountGivenLocationInLastMonthNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasClipScore)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }

  if (self->_hasCorrelationMetricVersion)
  {
    PBDataWriterWriteUint32Field();
    v4 = toCopy;
  }

  if (self->_hasCorrelationMetricWindowInDays)
  {
    PBDataWriterWriteUint32Field();
    v4 = toCopy;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v9.receiver = self;
  v9.super_class = BMAeroMLPhotosSearchDataCorrelations;
  v5 = [(BMEventBase *)&v9 init];
  v6 = v5;
  if (v5 && !BMAeroMLPhotosSearchDataCorrelationsReadFrom(v5, fromCopy))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (NSString)description
{
  v62 = objc_alloc(MEMORY[0x1E696AEC0]);
  searchSessionUUID = [(BMAeroMLPhotosSearchDataCorrelations *)self searchSessionUUID];
  v99 = BMAeroMLPhotosSearchDataCorrelationsUISurfaceTypeAsString([(BMAeroMLPhotosSearchDataCorrelations *)self uiSurface]);
  v3 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self matchedPeopleRatio];
  v98 = [v3 numberWithDouble:?];
  v4 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self matchedLocationRatio];
  v97 = [v4 numberWithDouble:?];
  v5 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneRatio];
  v93 = [v5 numberWithDouble:?];
  v6 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneConfidence];
  v95 = [v6 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneBoundingBox];
  v94 = [v7 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self matchedOCRCharacterRatio];
  v92 = [v8 numberWithDouble:?];
  v9 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self matchedOCRImportance];
  v89 = [v9 numberWithDouble:?];
  v91 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchDataCorrelations matchedFieldsCount](self, "matchedFieldsCount")}];
  v10 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self L1Score];
  v88 = [v10 numberWithDouble:?];
  v11 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self freshness];
  v90 = [v11 numberWithDouble:?];
  v85 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchDataCorrelations favorited](self, "favorited")}];
  v12 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self aestheticScore];
  v87 = [v12 numberWithDouble:?];
  v13 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self curationScore];
  v84 = [v13 numberWithDouble:?];
  v14 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverClickInLastWeek];
  v82 = [v14 numberWithDouble:?];
  v15 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverClickInLastMonth];
  v86 = [v15 numberWithDouble:?];
  v16 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverShareInLastWeek];
  v83 = [v16 numberWithDouble:?];
  v17 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverShareInLastMonth];
  v79 = [v17 numberWithDouble:?];
  v18 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountInLastWeekNormalizedAcrossItems];
  v81 = [v18 numberWithDouble:?];
  v19 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountInLastMonthNormalizedAcrossItems];
  v78 = [v19 numberWithDouble:?];
  v20 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountInLastWeekNormalizedAcrossItems];
  v76 = [v20 numberWithDouble:?];
  v21 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountInLastMonthNormalizedAcrossItems];
  v80 = [v21 numberWithDouble:?];
  v22 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
  v75 = [v22 numberWithDouble:?];
  v23 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
  v77 = [v23 numberWithDouble:?];
  v24 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenLocationInLastWeekNormalizedAcrossItems];
  v74 = [v24 numberWithDouble:?];
  v25 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenLocationInLastMonthNormalizedAcrossItems];
  v72 = [v25 numberWithDouble:?];
  v26 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
  v73 = [v26 numberWithDouble:?];
  v27 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
  v70 = [v27 numberWithDouble:?];
  v28 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems];
  v61 = [v28 numberWithDouble:?];
  v29 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems];
  v71 = [v29 numberWithDouble:?];
  v30 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
  v60 = [v30 numberWithDouble:?];
  v31 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
  v69 = [v31 numberWithDouble:?];
  v32 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
  v68 = [v32 numberWithDouble:?];
  v33 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
  v67 = [v33 numberWithDouble:?];
  v34 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
  v59 = [v34 numberWithDouble:?];
  v35 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
  v66 = [v35 numberWithDouble:?];
  v36 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenLocationInLastWeekNormalizedAcrossItems];
  v58 = [v36 numberWithDouble:?];
  v37 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenLocationInLastMonthNormalizedAcrossItems];
  v65 = [v37 numberWithDouble:?];
  v38 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
  v64 = [v38 numberWithDouble:?];
  v39 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
  v56 = [v39 numberWithDouble:?];
  v40 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems];
  v55 = [v40 numberWithDouble:?];
  v41 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems];
  v57 = [v41 numberWithDouble:?];
  v42 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
  v54 = [v42 numberWithDouble:?];
  v43 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
  v53 = [v43 numberWithDouble:?];
  v44 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
  v45 = [v44 numberWithDouble:?];
  v46 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
  v47 = [v46 numberWithDouble:?];
  v48 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clipScore];
  v49 = [v48 numberWithDouble:?];
  v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchDataCorrelations correlationMetricVersion](self, "correlationMetricVersion")}];
  v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchDataCorrelations correlationMetricWindowInDays](self, "correlationMetricWindowInDays")}];
  v63 = [v62 initWithFormat:@"BMAeroMLPhotosSearchDataCorrelations with searchSessionUUID: %@, uiSurface: %@, matchedPeopleRatio: %@, matchedLocationRatio: %@, matchedSceneRatio: %@, matchedSceneConfidence: %@, matchedSceneBoundingBox: %@, matchedOCRCharacterRatio: %@, matchedOCRImportance: %@, matchedFieldsCount: %@, L1Score: %@, freshness: %@, favorited: %@, aestheticScore: %@, curationScore: %@, hasEverClickInLastWeek: %@, hasEverClickInLastMonth: %@, hasEverShareInLastWeek: %@, hasEverShareInLastMonth: %@, clickCountInLastWeekNormalizedAcrossItems: %@, clickCountInLastMonthNormalizedAcrossItems: %@, shareCountInLastWeekNormalizedAcrossItems: %@, shareCountInLastMonthNormalizedAcrossItems: %@, clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems: %@, clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems: %@, clickCountGivenLocationInLastWeekNormalizedAcrossItems: %@, clickCountGivenLocationInLastMonthNormalizedAcrossItems: %@, clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems: %@, clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems: %@, clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems: %@, clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems: %@, clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems: %@, clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems: %@, clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems: %@, clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems: %@, shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems: %@, shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems: %@, shareCountGivenLocationInLastWeekNormalizedAcrossItems: %@, shareCountGivenLocationInLastMonthNormalizedAcrossItems: %@, shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems: %@, shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems: %@, shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems: %@, shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems: %@, shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems: %@, shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems: %@, shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems: %@, shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems: %@, clipScore: %@, correlationMetricVersion: %@, correlationMetricWindowInDays: %@", searchSessionUUID, v99, v98, v97, v93, v95, v94, v92, v89, v91, v88, v90, v85, v87, v84, v82, v86, v83, v79, v81, v78, v76, v80, v75, v77, v74, v72, v73, v70, v61, v71, v60, v69, v68, v67, v59, v66, v58, v65, v64, v56, v55, v57, v54, v53, v45, v47, v49, v50, v51];

  return v63;
}

- (BMAeroMLPhotosSearchDataCorrelations)initWithSearchSessionUUID:(id)d uiSurface:(int)surface matchedPeopleRatio:(id)ratio matchedLocationRatio:(id)locationRatio matchedSceneRatio:(id)sceneRatio matchedSceneConfidence:(id)confidence matchedSceneBoundingBox:(id)box matchedOCRCharacterRatio:(id)self0 matchedOCRImportance:(id)self1 matchedFieldsCount:(id)self2 L1Score:(id)self3 freshness:(id)self4 favorited:(id)self5 aestheticScore:(id)self6 curationScore:(id)self7 hasEverClickInLastWeek:(id)self8 hasEverClickInLastMonth:(id)self9 hasEverShareInLastWeek:(id)lastWeek hasEverShareInLastMonth:(id)lastMonth clickCountInLastWeekNormalizedAcrossItems:(id)items clickCountInLastMonthNormalizedAcrossItems:(id)acrossItems shareCountInLastWeekNormalizedAcrossItems:(id)normalizedAcrossItems shareCountInLastMonthNormalizedAcrossItems:(id)monthNormalizedAcrossItems clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:(id)weekNormalizedAcrossItems clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:(id)lastMonthNormalizedAcrossItems clickCountGivenLocationInLastWeekNormalizedAcrossItems:(id)lastWeekNormalizedAcrossItems clickCountGivenLocationInLastMonthNormalizedAcrossItems:(id)inLastMonthNormalizedAcrossItems clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems:(id)d0 clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems:(id)d1 clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:(id)d2 clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:(id)d3 clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:(id)d4 clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:(id)d5 clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:(id)d6 clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:(id)d7 shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:(id)d8 shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:(id)d9 shareCountGivenLocationInLastWeekNormalizedAcrossItems:(id)surface0 shareCountGivenLocationInLastMonthNormalizedAcrossItems:(id)surface1 shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems:(id)surface2 shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems:(id)surface3 shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:(id)surface4 shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:(id)surface5 shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:(id)surface6 shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:(id)surface7 shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:(id)surface8 shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:(id)surface9 clipScore:(id)ratio0 correlationMetricVersion:(id)ratio1 correlationMetricWindowInDays:(id)ratio2
{
  dCopy = d;
  ratioCopy = ratio;
  locationRatioCopy = locationRatio;
  sceneRatioCopy = sceneRatio;
  confidenceCopy = confidence;
  boxCopy = box;
  characterRatioCopy = characterRatio;
  importanceCopy = importance;
  countCopy = count;
  scoreCopy = score;
  freshnessCopy = freshness;
  favoritedCopy = favorited;
  aestheticScoreCopy = aestheticScore;
  curationScoreCopy = curationScore;
  weekCopy = week;
  monthCopy = month;
  lastWeekCopy = lastWeek;
  lastMonthCopy = lastMonth;
  itemsCopy = items;
  acrossItemsCopy = acrossItems;
  normalizedAcrossItemsCopy = normalizedAcrossItems;
  monthNormalizedAcrossItemsCopy = monthNormalizedAcrossItems;
  weekNormalizedAcrossItemsCopy = weekNormalizedAcrossItems;
  lastMonthNormalizedAcrossItemsCopy = lastMonthNormalizedAcrossItems;
  lastWeekNormalizedAcrossItemsCopy = lastWeekNormalizedAcrossItems;
  inLastMonthNormalizedAcrossItemsCopy = inLastMonthNormalizedAcrossItems;
  inLastWeekNormalizedAcrossItemsCopy = inLastWeekNormalizedAcrossItems;
  categoryInLastMonthNormalizedAcrossItemsCopy = categoryInLastMonthNormalizedAcrossItems;
  categoryInLastWeekNormalizedAcrossItemsCopy = categoryInLastWeekNormalizedAcrossItems;
  recencyCategoryInLastMonthNormalizedAcrossItemsCopy = recencyCategoryInLastMonthNormalizedAcrossItems;
  sceneCategoryInLastWeekNormalizedAcrossItemsCopy = sceneCategoryInLastWeekNormalizedAcrossItems;
  sceneCategoryInLastMonthNormalizedAcrossItemsCopy = sceneCategoryInLastMonthNormalizedAcrossItems;
  countCategoryInLastWeekNormalizedAcrossItemsCopy = countCategoryInLastWeekNormalizedAcrossItems;
  countCategoryInLastMonthNormalizedAcrossItemsCopy = countCategoryInLastMonthNormalizedAcrossItems;
  dayInLastWeekNormalizedAcrossItemsCopy = dayInLastWeekNormalizedAcrossItems;
  dayInLastMonthNormalizedAcrossItemsCopy = dayInLastMonthNormalizedAcrossItems;
  locationInLastWeekNormalizedAcrossItemsCopy = locationInLastWeekNormalizedAcrossItems;
  locationInLastMonthNormalizedAcrossItemsCopy = locationInLastMonthNormalizedAcrossItems;
  dayCategoryInLastWeekNormalizedAcrossItemsCopy = dayCategoryInLastWeekNormalizedAcrossItems;
  dayCategoryInLastMonthNormalizedAcrossItemsCopy = dayCategoryInLastMonthNormalizedAcrossItems;
  recencyCategoryInLastWeekNormalizedAcrossItemsCopy = recencyCategoryInLastWeekNormalizedAcrossItems;
  givenRecencyCategoryInLastMonthNormalizedAcrossItemsCopy = givenRecencyCategoryInLastMonthNormalizedAcrossItems;
  givenSceneCategoryInLastWeekNormalizedAcrossItemsCopy = givenSceneCategoryInLastWeekNormalizedAcrossItems;
  givenSceneCategoryInLastMonthNormalizedAcrossItemsCopy = givenSceneCategoryInLastMonthNormalizedAcrossItems;
  faceCountCategoryInLastWeekNormalizedAcrossItemsCopy = faceCountCategoryInLastWeekNormalizedAcrossItems;
  faceCountCategoryInLastMonthNormalizedAcrossItemsCopy = faceCountCategoryInLastMonthNormalizedAcrossItems;
  clipScoreCopy = clipScore;
  versionCopy = version;
  daysCopy = days;
  v158.receiver = self;
  v158.super_class = BMAeroMLPhotosSearchDataCorrelations;
  v63 = [(BMEventBase *)&v158 init];

  if (v63)
  {
    v63->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v63->_searchSessionUUID, d);
    v63->_uiSurface = surface;
    if (ratioCopy)
    {
      v63->_hasMatchedPeopleRatio = 1;
      [ratioCopy doubleValue];
    }

    else
    {
      v63->_hasMatchedPeopleRatio = 0;
      v64 = -1.0;
    }

    v63->_matchedPeopleRatio = v64;
    if (locationRatioCopy)
    {
      v63->_hasMatchedLocationRatio = 1;
      [locationRatioCopy doubleValue];
    }

    else
    {
      v63->_hasMatchedLocationRatio = 0;
      v65 = -1.0;
    }

    v63->_matchedLocationRatio = v65;
    if (sceneRatioCopy)
    {
      v63->_hasMatchedSceneRatio = 1;
      [sceneRatioCopy doubleValue];
    }

    else
    {
      v63->_hasMatchedSceneRatio = 0;
      v66 = -1.0;
    }

    v63->_matchedSceneRatio = v66;
    if (confidenceCopy)
    {
      v63->_hasMatchedSceneConfidence = 1;
      [confidenceCopy doubleValue];
    }

    else
    {
      v63->_hasMatchedSceneConfidence = 0;
      v67 = -1.0;
    }

    v63->_matchedSceneConfidence = v67;
    if (boxCopy)
    {
      v63->_hasMatchedSceneBoundingBox = 1;
      [boxCopy doubleValue];
    }

    else
    {
      v63->_hasMatchedSceneBoundingBox = 0;
      v68 = -1.0;
    }

    v63->_matchedSceneBoundingBox = v68;
    if (characterRatioCopy)
    {
      v63->_hasMatchedOCRCharacterRatio = 1;
      [characterRatioCopy doubleValue];
    }

    else
    {
      v63->_hasMatchedOCRCharacterRatio = 0;
      v69 = -1.0;
    }

    v63->_matchedOCRCharacterRatio = v69;
    if (importanceCopy)
    {
      v63->_hasMatchedOCRImportance = 1;
      [importanceCopy doubleValue];
    }

    else
    {
      v63->_hasMatchedOCRImportance = 0;
      v70 = -1.0;
    }

    v63->_matchedOCRImportance = v70;
    unsignedIntValue = countCopy;
    if (countCopy)
    {
      v63->_hasMatchedFieldsCount = 1;
      unsignedIntValue = [countCopy unsignedIntValue];
    }

    else
    {
      v63->_hasMatchedFieldsCount = 0;
    }

    v63->_matchedFieldsCount = unsignedIntValue;
    if (scoreCopy)
    {
      v63->_hasL1Score = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v63->_hasL1Score = 0;
      v72 = -1.0;
    }

    v63->_L1Score = v72;
    if (freshnessCopy)
    {
      v63->_hasFreshness = 1;
      [freshnessCopy doubleValue];
    }

    else
    {
      v63->_hasFreshness = 0;
      v73 = -1.0;
    }

    v63->_freshness = v73;
    if (favoritedCopy)
    {
      v63->_hasFavorited = 1;
      v63->_favorited = [favoritedCopy BOOLValue];
    }

    else
    {
      v63->_hasFavorited = 0;
      v63->_favorited = 0;
    }

    if (aestheticScoreCopy)
    {
      v63->_hasAestheticScore = 1;
      [aestheticScoreCopy doubleValue];
    }

    else
    {
      v63->_hasAestheticScore = 0;
      v74 = -1.0;
    }

    v63->_aestheticScore = v74;
    if (curationScoreCopy)
    {
      v63->_hasCurationScore = 1;
      [curationScoreCopy doubleValue];
    }

    else
    {
      v63->_hasCurationScore = 0;
      v75 = -1.0;
    }

    v63->_curationScore = v75;
    if (weekCopy)
    {
      v63->_hasHasEverClickInLastWeek = 1;
      [weekCopy doubleValue];
    }

    else
    {
      v63->_hasHasEverClickInLastWeek = 0;
      v76 = -1.0;
    }

    v63->_hasEverClickInLastWeek = v76;
    if (monthCopy)
    {
      v63->_hasHasEverClickInLastMonth = 1;
      [monthCopy doubleValue];
    }

    else
    {
      v63->_hasHasEverClickInLastMonth = 0;
      v77 = -1.0;
    }

    v63->_hasEverClickInLastMonth = v77;
    if (lastWeekCopy)
    {
      v63->_hasHasEverShareInLastWeek = 1;
      [lastWeekCopy doubleValue];
    }

    else
    {
      v63->_hasHasEverShareInLastWeek = 0;
      v78 = -1.0;
    }

    v63->_hasEverShareInLastWeek = v78;
    if (lastMonthCopy)
    {
      v63->_hasHasEverShareInLastMonth = 1;
      [lastMonthCopy doubleValue];
    }

    else
    {
      v63->_hasHasEverShareInLastMonth = 0;
      v79 = -1.0;
    }

    v63->_hasEverShareInLastMonth = v79;
    if (itemsCopy)
    {
      v63->_hasClickCountInLastWeekNormalizedAcrossItems = 1;
      [itemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountInLastWeekNormalizedAcrossItems = 0;
      v80 = -1.0;
    }

    v63->_clickCountInLastWeekNormalizedAcrossItems = v80;
    if (acrossItemsCopy)
    {
      v63->_hasClickCountInLastMonthNormalizedAcrossItems = 1;
      [acrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountInLastMonthNormalizedAcrossItems = 0;
      v81 = -1.0;
    }

    v63->_clickCountInLastMonthNormalizedAcrossItems = v81;
    if (normalizedAcrossItemsCopy)
    {
      v63->_hasShareCountInLastWeekNormalizedAcrossItems = 1;
      [normalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountInLastWeekNormalizedAcrossItems = 0;
      v82 = -1.0;
    }

    v63->_shareCountInLastWeekNormalizedAcrossItems = v82;
    if (monthNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountInLastMonthNormalizedAcrossItems = 1;
      [monthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountInLastMonthNormalizedAcrossItems = 0;
      v83 = -1.0;
    }

    v63->_shareCountInLastMonthNormalizedAcrossItems = v83;
    if (weekNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = 1;
      [weekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = 0;
      v84 = -1.0;
    }

    v63->_clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = v84;
    if (lastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = 1;
      [lastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = 0;
      v85 = -1.0;
    }

    v63->_clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = v85;
    if (lastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenLocationInLastWeekNormalizedAcrossItems = 1;
      [lastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenLocationInLastWeekNormalizedAcrossItems = 0;
      v86 = -1.0;
    }

    v63->_clickCountGivenLocationInLastWeekNormalizedAcrossItems = v86;
    if (inLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenLocationInLastMonthNormalizedAcrossItems = 1;
      [inLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenLocationInLastMonthNormalizedAcrossItems = 0;
      v87 = -1.0;
    }

    v63->_clickCountGivenLocationInLastMonthNormalizedAcrossItems = v87;
    if (inLastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems = 1;
      [inLastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems = 0;
      v88 = -1.0;
    }

    v63->_clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems = v88;
    if (categoryInLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems = 1;
      [categoryInLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems = 0;
      v89 = -1.0;
    }

    v63->_clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems = v89;
    if (categoryInLastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = 1;
      [categoryInLastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = 0;
      v90 = -1.0;
    }

    v63->_clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = v90;
    if (recencyCategoryInLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = 1;
      [recencyCategoryInLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = 0;
      v91 = -1.0;
    }

    v63->_clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = v91;
    if (sceneCategoryInLastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = 1;
      [sceneCategoryInLastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = 0;
      v92 = -1.0;
    }

    v63->_clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = v92;
    if (sceneCategoryInLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = 1;
      [sceneCategoryInLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = 0;
      v93 = -1.0;
    }

    v63->_clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = v93;
    if (countCategoryInLastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = 1;
      [countCategoryInLastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = 0;
      v94 = -1.0;
    }

    v63->_clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = v94;
    if (countCategoryInLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = 1;
      [countCategoryInLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = 0;
      v95 = -1.0;
    }

    v63->_clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = v95;
    if (dayInLastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = 1;
      [dayInLastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = 0;
      v96 = -1.0;
    }

    v63->_shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = v96;
    if (dayInLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = 1;
      [dayInLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = 0;
      v97 = -1.0;
    }

    v63->_shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = v97;
    if (locationInLastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenLocationInLastWeekNormalizedAcrossItems = 1;
      [locationInLastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenLocationInLastWeekNormalizedAcrossItems = 0;
      v98 = -1.0;
    }

    v63->_shareCountGivenLocationInLastWeekNormalizedAcrossItems = v98;
    if (locationInLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenLocationInLastMonthNormalizedAcrossItems = 1;
      [locationInLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenLocationInLastMonthNormalizedAcrossItems = 0;
      v99 = -1.0;
    }

    v63->_shareCountGivenLocationInLastMonthNormalizedAcrossItems = v99;
    if (dayCategoryInLastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems = 1;
      [dayCategoryInLastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems = 0;
      v100 = -1.0;
    }

    v63->_shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems = v100;
    if (dayCategoryInLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems = 1;
      [dayCategoryInLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems = 0;
      v101 = -1.0;
    }

    v63->_shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems = v101;
    if (recencyCategoryInLastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = 1;
      [recencyCategoryInLastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = 0;
      v102 = -1.0;
    }

    v63->_shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = v102;
    if (givenRecencyCategoryInLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = 1;
      [givenRecencyCategoryInLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = 0;
      v103 = -1.0;
    }

    v63->_shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = v103;
    if (givenSceneCategoryInLastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = 1;
      [givenSceneCategoryInLastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = 0;
      v104 = -1.0;
    }

    v63->_shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = v104;
    if (givenSceneCategoryInLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = 1;
      [givenSceneCategoryInLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = 0;
      v105 = -1.0;
    }

    v63->_shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = v105;
    if (faceCountCategoryInLastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = 1;
      [faceCountCategoryInLastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = 0;
      v106 = -1.0;
    }

    v63->_shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = v106;
    if (faceCountCategoryInLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = 1;
      [faceCountCategoryInLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = 0;
      v107 = -1.0;
    }

    v63->_shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = v107;
    if (clipScoreCopy)
    {
      v63->_hasClipScore = 1;
      [clipScoreCopy doubleValue];
    }

    else
    {
      v63->_hasClipScore = 0;
      v108 = -1.0;
    }

    v63->_clipScore = v108;
    if (versionCopy)
    {
      v63->_hasCorrelationMetricVersion = 1;
      unsignedIntValue2 = [versionCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v63->_hasCorrelationMetricVersion = 0;
    }

    v63->_correlationMetricVersion = unsignedIntValue2;
    if (daysCopy)
    {
      v63->_hasCorrelationMetricWindowInDays = 1;
      unsignedIntValue3 = [daysCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue3 = 0;
      v63->_hasCorrelationMetricWindowInDays = 0;
    }

    v63->_correlationMetricWindowInDays = unsignedIntValue3;
  }

  v111 = v63;

  return v111;
}

+ (id)protoFields
{
  v54[50] = *MEMORY[0x1E69E9840];
  v53 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"searchSessionUUID" number:1 type:13 subMessageClass:0];
  v54[0] = v53;
  v52 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uiSurface" number:2 type:4 subMessageClass:0];
  v54[1] = v52;
  v51 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedPeopleRatio" number:3 type:0 subMessageClass:0];
  v54[2] = v51;
  v50 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedLocationRatio" number:4 type:0 subMessageClass:0];
  v54[3] = v50;
  v49 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedSceneRatio" number:5 type:0 subMessageClass:0];
  v54[4] = v49;
  v48 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedSceneConfidence" number:6 type:0 subMessageClass:0];
  v54[5] = v48;
  v47 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedSceneBoundingBox" number:7 type:0 subMessageClass:0];
  v54[6] = v47;
  v46 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedOCRCharacterRatio" number:8 type:0 subMessageClass:0];
  v54[7] = v46;
  v45 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedOCRImportance" number:9 type:0 subMessageClass:0];
  v54[8] = v45;
  v44 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedFieldsCount" number:10 type:4 subMessageClass:0];
  v54[9] = v44;
  v43 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"L1Score" number:11 type:0 subMessageClass:0];
  v54[10] = v43;
  v42 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"freshness" number:12 type:0 subMessageClass:0];
  v54[11] = v42;
  v41 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"favorited" number:13 type:12 subMessageClass:0];
  v54[12] = v41;
  v40 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"aestheticScore" number:14 type:0 subMessageClass:0];
  v54[13] = v40;
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"curationScore" number:15 type:0 subMessageClass:0];
  v54[14] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasEverClickInLastWeek" number:16 type:0 subMessageClass:0];
  v54[15] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasEverClickInLastMonth" number:17 type:0 subMessageClass:0];
  v54[16] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasEverShareInLastWeek" number:18 type:0 subMessageClass:0];
  v54[17] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasEverShareInLastMonth" number:19 type:0 subMessageClass:0];
  v54[18] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountInLastWeekNormalizedAcrossItems" number:20 type:0 subMessageClass:0];
  v54[19] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountInLastMonthNormalizedAcrossItems" number:21 type:0 subMessageClass:0];
  v54[20] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountInLastWeekNormalizedAcrossItems" number:22 type:0 subMessageClass:0];
  v54[21] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountInLastMonthNormalizedAcrossItems" number:23 type:0 subMessageClass:0];
  v54[22] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems" number:24 type:0 subMessageClass:0];
  v54[23] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems" number:25 type:0 subMessageClass:0];
  v54[24] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenLocationInLastWeekNormalizedAcrossItems" number:26 type:0 subMessageClass:0];
  v54[25] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenLocationInLastMonthNormalizedAcrossItems" number:27 type:0 subMessageClass:0];
  v54[26] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems" number:28 type:0 subMessageClass:0];
  v54[27] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems" number:29 type:0 subMessageClass:0];
  v54[28] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems" number:30 type:0 subMessageClass:0];
  v54[29] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems" number:31 type:0 subMessageClass:0];
  v54[30] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems" number:32 type:0 subMessageClass:0];
  v54[31] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems" number:33 type:0 subMessageClass:0];
  v54[32] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems" number:34 type:0 subMessageClass:0];
  v54[33] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems" number:35 type:0 subMessageClass:0];
  v54[34] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems" number:36 type:0 subMessageClass:0];
  v54[35] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems" number:37 type:0 subMessageClass:0];
  v54[36] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenLocationInLastWeekNormalizedAcrossItems" number:38 type:0 subMessageClass:0];
  v54[37] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenLocationInLastMonthNormalizedAcrossItems" number:39 type:0 subMessageClass:0];
  v54[38] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems" number:40 type:0 subMessageClass:0];
  v54[39] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems" number:41 type:0 subMessageClass:0];
  v54[40] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems" number:42 type:0 subMessageClass:0];
  v54[41] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems" number:43 type:0 subMessageClass:0];
  v54[42] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems" number:44 type:0 subMessageClass:0];
  v54[43] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems" number:45 type:0 subMessageClass:0];
  v54[44] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems" number:46 type:0 subMessageClass:0];
  v54[45] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems" number:47 type:0 subMessageClass:0];
  v54[46] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clipScore" number:48 type:0 subMessageClass:0];
  v54[47] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"correlationMetricVersion" number:49 type:4 subMessageClass:0];
  v54[48] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"correlationMetricWindowInDays" number:50 type:4 subMessageClass:0];
  v54[49] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:50];

  return v13;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMAeroMLPhotosSearchDataCorrelations alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[17] = 0;
    }
  }

  return v4;
}

@end