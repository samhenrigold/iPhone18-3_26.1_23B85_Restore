@interface PGPhotosChallengeHolidayAlgorithmWrapper
- (PGPhotosChallengeHolidayAlgorithmWrapper)initWithEvaluationContext:(id)context;
- (id)debugInformationForHolidayName:(id)name assetUUID:(id)d;
- (unsigned)predictedQuestionStateForAssetUUID:(id)d holidayName:(id)name;
@end

@implementation PGPhotosChallengeHolidayAlgorithmWrapper

- (id)debugInformationForHolidayName:(id)name assetUUID:(id)d
{
  v95 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dCopy = d;
  infoNode = [(PGGraph *)self->_graph infoNode];
  locale = [infoNode locale];
  if (locale)
  {
    v10 = [objc_alloc(MEMORY[0x277D276D8]) initWithLocale:locale];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    eventRules = [v10 eventRules];
    v12 = [eventRules countByEnumeratingWithState:&v87 objects:v94 count:16];
    if (v12)
    {
      v13 = v12;
      v83 = v10;
      v84 = locale;
      v85 = infoNode;
      v82 = dCopy;
      v14 = *v88;
      v15 = MEMORY[0x277CBEC10];
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v88 != v14)
        {
          objc_enumerationMutation(eventRules);
        }

        v17 = *(*(&v87 + 1) + 8 * v16);
        name = [v17 name];
        v19 = [name isEqualToString:nameCopy];

        if (v19)
        {
          break;
        }

        if (v13 == ++v16)
        {
          v13 = [eventRules countByEnumeratingWithState:&v87 objects:v94 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          v20 = eventRules;
          dCopy = v82;
          v10 = v83;
          locale = v84;
          infoNode = v85;
          goto LABEL_31;
        }
      }

      v20 = v17;

      if (!v20)
      {
        v15 = MEMORY[0x277CBEC10];
        dCopy = v82;
        v10 = v83;
        locale = v84;
        infoNode = v85;
        goto LABEL_32;
      }

      librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
      v22 = MEMORY[0x277CD97A8];
      dCopy = v82;
      v93 = v82;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v93 count:1];
      v24 = [v22 fetchAssetsWithUUIDs:v23 options:librarySpecificFetchOptions];
      firstObject = [v24 firstObject];

      v26 = firstObject;
      v10 = v83;
      if (firstObject)
      {
        v27 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:firstObject withType:3 options:librarySpecificFetchOptions];
        firstObject2 = [v27 firstObject];

        v80 = firstObject2;
        if (firstObject2)
        {
          v81 = [(PGGraph *)self->_graph momentNodeForMoment:firstObject2];
          if (v81)
          {
            collection = [v81 collection];
            [collection sceneNodes];
            v30 = v72 = v26;
            [v30 sceneNames];
            v31 = v73 = librarySpecificFetchOptions;
            allObjects = [v31 allObjects];

            v79 = [allObjects componentsJoinedByString:{@", "}];
            collection2 = [v81 collection];
            addressNodes = [collection2 addressNodes];
            countryNodes = [addressNodes countryNodes];
            names = [countryNodes names];

            v78 = [names componentsJoinedByString:{@", "}];
            countryCode = [v84 countryCode];
            requiredTraits = [v20 requiredTraits];
            defaultScenesWithImportanceString = [requiredTraits defaultScenesWithImportanceString];

            v86 = 0;
            v68 = [MEMORY[0x277CCAAA0] dataWithJSONObject:defaultScenesWithImportanceString options:0 error:&v86];
            v69 = v86;
            v77 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v68 encoding:4];
            explicitlySupportedCountryCodes = [v20 explicitlySupportedCountryCodes];
            v76 = [explicitlySupportedCountryCodes componentsJoinedByString:{@", "}];
            v37 = [PGGraphIngestHolidayProcessorHelper keyboardLanguageCodesForInfoNode:v85 holidayService:v83];
            v65 = [v37 componentsJoinedByString:{@", "}];
            v38 = objc_alloc_init(PGGraphIngestHolidayProcessorHelper);
            v75 = [(PGGraphIngestHolidayProcessorHelper *)v38 holidayCalendarEventRuleTraitsForMomentNode:v81];
            v58 = [(PGGraphIngestHolidayProcessorHelper *)v38 momentTraitsMatchesHolidayTraits:v20 momentNode:v81 loggingConnection:MEMORY[0x277D86220]];
            collection3 = [v81 collection];
            dateNodes = [collection3 dateNodes];
            anyNode = [dateNodes anyNode];
            localDate = [anyNode localDate];

            v61 = objc_alloc_init(PGHolidayClassifier);
            v62 = v38;
            v66 = names;
            v63 = v37;
            [(PGGraphIngestHolidayProcessorHelper *)v38 dateScoreForEventRule:v20 localeCountryCode:countryCode momentCountryCodes:names keyboardLanguageCodes:v37 momentDate:localDate];
            v43 = v42;
            [(PGGraphIngestHolidayProcessorHelper *)v38 sceneScoreForEventRule:v20 localeCountryCode:countryCode momentCountryCodes:names keyboardLanguageCodes:v37 momentNode:v81];
            v45 = v44;
            [(PGGraphIngestHolidayProcessorHelper *)v38 locationScoreForEventRule:v20 localeCountryCode:countryCode momentCountryCodes:names keyboardLanguageCodes:v37];
            v47 = v46;
            v48 = [(PGHolidayClassifier *)v61 isCelebratingForDateScore:v43 sceneScore:v45 locationScore:v46];
            v91[0] = @"momentSceneNames";
            v91[1] = @"momentCountryCodes";
            v92[0] = v79;
            v92[1] = v78;
            v92[2] = countryCode;
            v91[2] = @"localeCountryCode";
            v91[3] = @"momentTraits";
            v49 = [v75 description];
            v60 = v49;
            if (v58)
            {
              v50 = @"YES";
            }

            else
            {
              v50 = @"NO";
            }

            v92[3] = v49;
            v92[4] = v50;
            v91[4] = @"allRequiredRulesApplyForMomentNode";
            v91[5] = @"holidaySceneCriteria";
            v92[5] = v77;
            v92[6] = v76;
            v91[6] = @"holidayCriteriaSupportedCountryCodes";
            v91[7] = @"isCelebrating";
            if (v48)
            {
              v51 = @"YES";
            }

            else
            {
              v51 = @"NO";
            }

            v92[7] = v51;
            v91[8] = @"dateScore";
            v59 = [MEMORY[0x277CCABB0] numberWithDouble:v43];
            stringValue = [v59 stringValue];
            v92[8] = stringValue;
            v91[9] = @"sceneScore";
            v53 = [MEMORY[0x277CCABB0] numberWithDouble:v45];
            stringValue2 = [v53 stringValue];
            v92[9] = stringValue2;
            v91[10] = @"locationScore";
            v55 = [MEMORY[0x277CCABB0] numberWithDouble:v47];
            stringValue3 = [v55 stringValue];
            v91[11] = @"keyboardLanguageCodes";
            v92[10] = stringValue3;
            v92[11] = v65;
            v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:12];

            librarySpecificFetchOptions = v73;
            v26 = v72;

            v10 = v83;
          }

          else
          {
            v15 = MEMORY[0x277CBEC10];
          }
        }

        else
        {
          v15 = MEMORY[0x277CBEC10];
        }

        locale = v84;
        infoNode = v85;
      }

      else
      {
        v15 = MEMORY[0x277CBEC10];
        locale = v84;
        infoNode = v85;
      }
    }

    else
    {
      v15 = MEMORY[0x277CBEC10];
      v20 = eventRules;
    }

LABEL_31:

LABEL_32:
  }

  else
  {
    v15 = MEMORY[0x277CBEC10];
  }

  return v15;
}

- (unsigned)predictedQuestionStateForAssetUUID:(id)d holidayName:(id)name
{
  v42[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v9 = MEMORY[0x277CD97A8];
  v42[0] = dCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  v11 = [v9 fetchAssetsWithUUIDs:v10 options:librarySpecificFetchOptions];
  firstObject = [v11 firstObject];

  if (firstObject)
  {
    v13 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:firstObject withType:3 options:librarySpecificFetchOptions];
    firstObject2 = [v13 firstObject];

    if (firstObject2)
    {
      v15 = [(PGGraph *)self->_graph momentNodeForMoment:firstObject2];
      v16 = v15;
      if (v15)
      {
        localStartDate = [v15 localStartDate];
        localEndDate = [v16 localEndDate];
        v19 = localEndDate;
        v20 = 1;
        if (localStartDate && localEndDate)
        {
          infoNode = [(PGGraph *)self->_graph infoNode];
          locale = [infoNode locale];
          if (locale)
          {
            v26 = objc_alloc_init(PGGraphIngestHolidayProcessorHelper);
            v28 = [objc_alloc(MEMORY[0x277D276D8]) initWithLocale:locale];
            v25 = [PGGraphIngestHolidayProcessorHelper keyboardLanguageCodesForInfoNode:infoNode holidayService:v28];
            v38 = 0;
            v39 = &v38;
            v40 = 0x2020000000;
            v41 = 3;
            v21 = [MEMORY[0x277CBEB98] setWithObject:nameCopy];
            v31[0] = MEMORY[0x277D85DD0];
            v31[1] = 3221225472;
            v31[2] = __91__PGPhotosChallengeHolidayAlgorithmWrapper_predictedQuestionStateForAssetUUID_holidayName___block_invoke;
            v31[3] = &unk_278880528;
            v24 = v26;
            v32 = v24;
            v33 = locale;
            v27 = v25;
            v34 = v27;
            selfCopy = self;
            v36 = v16;
            v37 = &v38;
            [v28 enumerateEventRulesWithNames:v21 betweenLocalDate:localStartDate andLocalDate:v19 usingBlock:v31];
            v22 = v21;
            v20 = *(v39 + 12);

            _Block_object_dispose(&v38, 8);
          }
        }
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

void __91__PGPhotosChallengeHolidayAlgorithmWrapper_predictedQuestionStateForAssetUUID_holidayName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = [v6 countryCode];
  v9 = [v5 momentsCelebratingRule:v14 localDates:v7 userCountryCode:v8 keyboardLanguageCodes:*(a1 + 48) graph:*(*(a1 + 56) + 8) loggingConnection:MEMORY[0x277D86220]];

  v10 = [v9 positivelyClassifiedMomentNodes];
  LODWORD(v8) = [v10 containsObject:*(a1 + 64)];

  if (v8)
  {
    goto LABEL_2;
  }

  v11 = [v9 negativelyClassifiedMomentNodes];
  if (([v11 containsObject:*(a1 + 64)] & 1) == 0)
  {
    goto LABEL_8;
  }

  v12 = [*(a1 + 40) countryCode];
  if (([v14 backfillForCountryCode:v12] & 1) == 0)
  {

LABEL_8:
    goto LABEL_9;
  }

  v13 = [*(a1 + 64) isInterestingForMemories];

  if (v13)
  {
LABEL_2:
    *(*(*(a1 + 72) + 8) + 24) = 2;
  }

LABEL_9:
}

- (PGPhotosChallengeHolidayAlgorithmWrapper)initWithEvaluationContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = PGPhotosChallengeHolidayAlgorithmWrapper;
  v5 = [(PGPhotosChallengeHolidayAlgorithmWrapper *)&v11 init];
  if (v5)
  {
    graph = [contextCopy graph];
    graph = v5->_graph;
    v5->_graph = graph;

    photoLibrary = [contextCopy photoLibrary];
    photoLibrary = v5->_photoLibrary;
    v5->_photoLibrary = photoLibrary;
  }

  return v5;
}

@end