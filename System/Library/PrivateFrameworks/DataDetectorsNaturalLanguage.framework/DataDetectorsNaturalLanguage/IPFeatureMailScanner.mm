@interface IPFeatureMailScanner
- (BOOL)isBannedSender:(id)sender;
- (double)confidenceForEvent:(id)event baseConfidence:(double)confidence;
- (id)emailParticipantNames;
- (id)featuresForTextString:(id)string inMessageUnit:(id)unit;
- (void)doSynchronousScanWithCompletionHandler:(id)handler;
- (void)enrichEvents:(id)events messageUnits:(id)units dateInSubject:(id)subject dataFeatures:(id)features;
- (void)processScanOfMessageUnit:(id)unit;
- (void)resetScanState;
- (void)scanEventsInMessageUnits:(id)units synchronously:(BOOL)synchronously completionHandler:(id)handler;
@end

@implementation IPFeatureMailScanner

- (id)featuresForTextString:(id)string inMessageUnit:(id)unit
{
  v74[1] = *MEMORY[0x277D85DE8];
  unitCopy = unit;
  originalMessage = [unitCopy originalMessage];
  subject = [originalMessage subject];

  dataDetectorsFeatureExtractor = [objc_opt_class() dataDetectorsFeatureExtractor];
  v74[0] = dataDetectorsFeatureExtractor;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:1];
  v10 = [(IPFeatureScanner *)self featuresForTextString:subject inMessageUnit:unitCopy extractors:v9 context:0];
  [(IPFeatureMailScanner *)self setSubjectDataDetectorsFeatures:v10];

  v72 = @"IPFeatureExtractorContextDataDetectorsFeatures";
  subjectDataDetectorsFeatures = [(IPFeatureMailScanner *)self subjectDataDetectorsFeatures];
  v73 = subjectDataDetectorsFeatures;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];

  sentenceFeatureExtractor = [objc_opt_class() sentenceFeatureExtractor];
  v71 = sentenceFeatureExtractor;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
  v54 = subject;
  v52 = v12;
  v53 = [(IPFeatureScanner *)self featuresForTextString:subject inMessageUnit:unitCopy extractors:v14 context:v12];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  subjectDataDetectorsFeatures2 = [(IPFeatureMailScanner *)self subjectDataDetectorsFeatures];
  v16 = [subjectDataDetectorsFeatures2 countByEnumeratingWithState:&v59 objects:v70 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v60;
    v19 = MEMORY[0x277CBEC38];
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v60 != v18)
        {
          objc_enumerationMutation(subjectDataDetectorsFeatures2);
        }

        contextDictionary = [*(*(&v59 + 1) + 8 * i) contextDictionary];
        [contextDictionary setObject:v19 forKeyedSubscript:@"extractedInSubject"];
      }

      v17 = [subjectDataDetectorsFeatures2 countByEnumeratingWithState:&v59 objects:v70 count:16];
    }

    while (v17);
  }

  text = [unitCopy text];
  dataDetectorsFeatureExtractor2 = [objc_opt_class() dataDetectorsFeatureExtractor];
  v69 = dataDetectorsFeatureExtractor2;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
  v25 = [(IPFeatureScanner *)self featuresForTextString:text inMessageUnit:unitCopy extractors:v24 context:0];

  v67[1] = @"IPFeatureExtractorContextDataDetectorsFeatures";
  v68[0] = v53;
  v67[0] = @"IPFeatureExtractorPreviousFeatureSentences";
  v26 = [(IPFeatureScanner *)self _sortedFeaturesByRange:v25];
  v68[1] = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];

  text2 = [unitCopy text];
  sentenceFeatureExtractor2 = [objc_opt_class() sentenceFeatureExtractor];
  v66 = sentenceFeatureExtractor2;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
  v50 = v27;
  v31 = [(IPFeatureScanner *)self featuresForTextString:text2 inMessageUnit:unitCopy extractors:v30 context:v27];

  v48 = v31;
  v32 = [v31 mutableCopy];
  v33 = v32;
  if (v25)
  {
    [v32 addObjectsFromArray:v25];
  }

  v49 = v33;
  v51 = v25;
  keywordFeatureExtractor = [objc_opt_class() keywordFeatureExtractor];
  v65 = keywordFeatureExtractor;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
  v36 = [(IPFeatureScanner *)self featuresForTextString:v54 inMessageUnit:unitCopy extractors:v35 context:0];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v37 = v36;
  v38 = [v37 countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v56;
    v41 = MEMORY[0x277CBEC38];
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v56 != v40)
        {
          objc_enumerationMutation(v37);
        }

        contextDictionary2 = [*(*(&v55 + 1) + 8 * j) contextDictionary];
        [contextDictionary2 setObject:v41 forKeyedSubscript:@"IPFeatureKeywordContextExtractedFromSubject"];
      }

      v39 = [v37 countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v39);
  }

  lowercaseTextTruncated = [unitCopy lowercaseTextTruncated];
  v63 = keywordFeatureExtractor;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
  v46 = [(IPFeatureScanner *)self featuresForTextString:lowercaseTextTruncated inMessageUnit:unitCopy extractors:v45 context:0];

  if (v37)
  {
    [v49 addObjectsFromArray:v37];
  }

  if (v46)
  {
    [v49 addObjectsFromArray:v46];
  }

  return v49;
}

- (void)scanEventsInMessageUnits:(id)units synchronously:(BOOL)synchronously completionHandler:(id)handler
{
  synchronouslyCopy = synchronously;
  v27 = *MEMORY[0x277D85DE8];
  unitsCopy = units;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(IPFeatureMailScanner *)selfCopy resetScanState];
  objc_sync_exit(selfCopy);

  v11 = [(IPFeatureScanner *)selfCopy setBodyMessageUnits:unitsCopy];
  if (IPDebuggingModeEnabled_once != -1)
  {
    [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
  }

  if (IPDebuggingModeEnabled_sEnabled == 1)
  {
    v13 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging(v11, v12);
      v13 = _IPLogHandle;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = unitsCopy;
      _os_log_impl(&dword_2485E4000, v13, OS_LOG_TYPE_INFO, "Start with message units: %@ #FeatureManager", &buf, 0xCu);
    }
  }

  if ([unitsCopy count])
  {
    if ([objc_opt_class() isNaturalLanguageEventDetectionEnabled])
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v23 = 0x3032000000;
      v24 = __Block_byref_object_copy_;
      v25 = __Block_byref_object_dispose_;
      firstObject = [unitsCopy firstObject];
      originalMessage = [firstObject originalMessage];

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __81__IPFeatureMailScanner_scanEventsInMessageUnits_synchronously_completionHandler___block_invoke;
      v19[3] = &unk_278F22DD0;
      v19[4] = selfCopy;
      v20 = handlerCopy;
      p_buf = &buf;
      v15 = MEMORY[0x24C1D4200](v19);
      v16 = v15;
      if (synchronouslyCopy)
      {
        (*(v15 + 16))(v15);
      }

      else
      {
        v18 = dispatch_get_global_queue(17, 0);
        dispatch_async(v18, v16);
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      [(IPFeatureScanner *)selfCopy setResultType:-1];
      (*(handlerCopy + 2))(handlerCopy, 0, [(IPFeatureScanner *)selfCopy resultType]);
    }
  }

  else
  {
    [(IPFeatureScanner *)selfCopy setResultType:0];
    resultType = [(IPFeatureScanner *)selfCopy resultType];
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8], resultType);
  }
}

void __81__IPFeatureMailScanner_scanEventsInMessageUnits_synchronously_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  [*(a1 + 32) doSynchronousScanWithCompletionHandler:*(a1 + 40)];
  objc_sync_exit(v2);

  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)doSynchronousScanWithCompletionHandler:(id)handler
{
  v199[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  dataDetectorsFeatureExtractor = [objc_opt_class() dataDetectorsFeatureExtractor];
  v199[0] = dataDetectorsFeatureExtractor;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v199 count:1];

  bodyMessageUnits = [(IPFeatureScanner *)self bodyMessageUnits];
  firstObject = [bodyMessageUnits firstObject];

  originalMessage = [firstObject originalMessage];
  subject = [originalMessage subject];

  originalMessage2 = [firstObject originalMessage];
  sender = [originalMessage2 sender];

  originalMessage3 = [firstObject originalMessage];
  dateSent = [originalMessage3 dateSent];

  v15 = [(IPFeatureScanner *)self subjectEventVocabularyRejectionKeyword:subject];
  if (!v15)
  {
    if ([(IPFeatureMailScanner *)self isBannedSender:sender])
    {
      v22 = [(IPFeatureScanner *)self setResultType:-40];
      v24 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging(v22, v23);
        v24 = _IPLogHandle;
      }

      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
      if (v25)
      {
        *buf = 0;
        _os_log_impl(&dword_2485E4000, v24, OS_LOG_TYPE_INFO, "Skipping message unit because sender is banned #FeatureManager", buf, 2u);
      }

      if (IPDebuggingModeEnabled_once != -1)
      {
        [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
      }

      if (IPDebuggingModeEnabled_sEnabled == 1)
      {
        v27 = _IPLogHandle;
        if (!_IPLogHandle)
        {
          IPInitLogging(v25, v26);
          v27 = _IPLogHandle;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = v27;
          email = [sender email];
          *buf = 138412290;
          v198 = email;
          _os_log_impl(&dword_2485E4000, v28, OS_LOG_TYPE_INFO, "Banned sender: %@ #FeatureManager", buf, 0xCu);

          v15 = 0;
        }
      }

      goto LABEL_25;
    }

    v169 = handlerCopy;
    [(IPFeatureMailScanner *)self setSubjectDataDetectorsFeatures:MEMORY[0x277CBEBF8]];
    v163 = [(IPFeatureScanner *)self subjectEventVocabularyIgnoreDateKeyword:subject];
    if (!v163)
    {
      v31 = [(IPFeatureScanner *)self featuresForTextString:subject inMessageUnit:firstObject extractors:v6 context:0];
      [(IPFeatureMailScanner *)self setSubjectDataDetectorsFeatures:v31];
    }

    v168 = v6;
    [(IPFeatureMailScanner *)self setDateInSubjectFeatureData:0];
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    subjectDataDetectorsFeatures = [(IPFeatureMailScanner *)self subjectDataDetectorsFeatures];
    reverseObjectEnumerator = [subjectDataDetectorsFeatures reverseObjectEnumerator];

    v34 = [reverseObjectEnumerator countByEnumeratingWithState:&v188 objects:v196 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v189;
      while (2)
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v189 != v36)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v38 = *(*(&v188 + 1) + 8 * i);
          if (![v38 type] || objc_msgSend(v38, "type") == 1)
          {
            [(IPFeatureMailScanner *)self setDateInSubjectFeatureData:v38];
            [(IPFeatureMailScanner *)self setSubjectContainsDate:1];
            goto LABEL_40;
          }
        }

        v35 = [reverseObjectEnumerator countByEnumeratingWithState:&v188 objects:v196 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }
    }

LABEL_40:
    v167 = firstObject;

    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    bodyMessageUnits2 = [(IPFeatureScanner *)self bodyMessageUnits];
    v40 = [bodyMessageUnits2 countByEnumeratingWithState:&v184 objects:v195 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v185;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v185 != v42)
          {
            objc_enumerationMutation(bodyMessageUnits2);
          }

          v44 = *(*(&v184 + 1) + 8 * j);
          v45 = objc_autoreleasePoolPush();
          [(IPFeatureMailScanner *)self processScanOfMessageUnit:v44];
          objc_autoreleasePoolPop(v45);
        }

        v41 = [bodyMessageUnits2 countByEnumeratingWithState:&v184 objects:v195 count:16];
      }

      while (v41);
    }

    v48 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging(v46, v47);
      v48 = _IPLogHandle;
    }

    v49 = v48;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      detectedEvents = [(IPFeatureScanner *)self detectedEvents];
      v51 = [detectedEvents count];
      *buf = 134217984;
      v198 = v51;
      _os_log_impl(&dword_2485E4000, v49, OS_LOG_TYPE_INFO, "%lu detected events #FeatureManager", buf, 0xCu);
    }

    if (IPDebuggingModeEnabled_once != -1)
    {
      [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
    }

    if (IPDebuggingModeEnabled_sEnabled == 1)
    {
      v54 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging(v52, v53);
        v54 = _IPLogHandle;
      }

      v55 = v54;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        detectedEvents2 = [(IPFeatureScanner *)self detectedEvents];
        v57 = [detectedEvents2 valueForKey:@"ipsos_betterDescription"];
        *buf = 138412290;
        v198 = v57;
        _os_log_impl(&dword_2485E4000, v55, OS_LOG_TYPE_INFO, "Detected Events: %@ #FeatureManager", buf, 0xCu);
      }
    }

    detectedEvents3 = [(IPFeatureScanner *)self detectedEvents];
    v59 = [detectedEvents3 count];

    if (v59 >= 0xA)
    {
      v62 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging(v60, v61);
        v62 = _IPLogHandle;
      }

      v63 = v62;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        detectedEvents4 = [(IPFeatureScanner *)self detectedEvents];
        v65 = [detectedEvents4 count];
        *buf = 134217984;
        v198 = v65;
        _os_log_impl(&dword_2485E4000, v63, OS_LOG_TYPE_INFO, "Too many UNSTITCHED dates. (%lu)  Skipping. #FeatureManager", buf, 0xCu);
      }

      [(IPFeatureScanner *)self setResultType:-12];
      detectedEvents5 = [(IPFeatureScanner *)self detectedEvents];
      [detectedEvents5 removeAllObjects];
    }

    detectedEvents6 = [(IPFeatureScanner *)self detectedEvents];
    v68 = [(IPFeatureScanner *)self stitchedEventsFromEvents:detectedEvents6];
    [(IPFeatureScanner *)self setStitchedEvents:v68];

    if (IPDebuggingModeEnabled_once != -1)
    {
      [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
    }

    if (IPDebuggingModeEnabled_sEnabled == 1)
    {
      v71 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging(v69, v70);
        v71 = _IPLogHandle;
      }

      v72 = v71;
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        stitchedEvents = [(IPFeatureScanner *)self stitchedEvents];
        v74 = [stitchedEvents valueForKey:@"ipsos_betterDescription"];
        *buf = 138412290;
        v198 = v74;
        _os_log_impl(&dword_2485E4000, v72, OS_LOG_TYPE_INFO, "Stitched Events: %@ #FeatureManager", buf, 0xCu);
      }
    }

    stitchedEvents2 = [(IPFeatureScanner *)self stitchedEvents];
    v76 = [stitchedEvents2 count];

    if (v76 >= 3)
    {
      v79 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging(v77, v78);
        v79 = _IPLogHandle;
      }

      v80 = v79;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
      {
        stitchedEvents3 = [(IPFeatureScanner *)self stitchedEvents];
        v82 = [stitchedEvents3 count];
        *buf = 134217984;
        v198 = v82;
        _os_log_impl(&dword_2485E4000, v80, OS_LOG_TYPE_INFO, "Too many STITCHED dates. (%lu)  Skipping. #FeatureManager", buf, 0xCu);
      }

      [(IPFeatureScanner *)self setResultType:-12];
      [(IPFeatureScanner *)self setStitchedEvents:MEMORY[0x277CBEBF8]];
    }

    if ([(IPFeatureMailScanner *)self subjectContainsDate])
    {
      dateInSubjectFeatureData = [(IPFeatureMailScanner *)self dateInSubjectFeatureData];
      value = [dateInSubjectFeatureData value];
    }

    else
    {
      value = 0;
    }

    stitchedEvents4 = [(IPFeatureScanner *)self stitchedEvents];
    bodyMessageUnits3 = [(IPFeatureScanner *)self bodyMessageUnits];
    bodyDataDetectorsFeatures = [(IPFeatureScanner *)self bodyDataDetectorsFeatures];
    [(IPFeatureMailScanner *)self enrichEvents:stitchedEvents4 messageUnits:bodyMessageUnits3 dateInSubject:value dataFeatures:bodyDataDetectorsFeatures];

    if (IPDebuggingModeEnabled_once != -1)
    {
      [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
    }

    if (IPDebuggingModeEnabled_sEnabled == 1)
    {
      v90 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging(v88, v89);
        v90 = _IPLogHandle;
      }

      v91 = v90;
      if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
      {
        stitchedEvents5 = [(IPFeatureScanner *)self stitchedEvents];
        v93 = [stitchedEvents5 valueForKey:@"ipsos_betterDescription"];
        *buf = 138412290;
        v198 = v93;
        _os_log_impl(&dword_2485E4000, v91, OS_LOG_TYPE_INFO, "Enriched Events based on Event Type: %@ #FeatureManager", buf, 0xCu);
      }
    }

    v162 = value;
    v164 = dateSent;
    v165 = sender;
    v166 = subject;
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    selfCopy = self;
    stitchedEvents6 = [(IPFeatureScanner *)self stitchedEvents];
    v95 = [stitchedEvents6 countByEnumeratingWithState:&v180 objects:v194 count:16];
    if (v95)
    {
      v96 = v95;
      v97 = 0;
      v98 = *v181;
      v99 = 1;
      v170 = stitchedEvents6;
      do
      {
        for (k = 0; k != v96; ++k)
        {
          if (*v181 != v98)
          {
            objc_enumerationMutation(stitchedEvents6);
          }

          v101 = *(*(&v180 + 1) + 8 * k);
          location = [v101 location];

          if (!location)
          {
            if (v99)
            {
              v178 = 0u;
              v179 = 0u;
              v176 = 0u;
              v177 = 0u;
              subjectDataDetectorsFeatures2 = [(IPFeatureMailScanner *)selfCopy subjectDataDetectorsFeatures];
              reverseObjectEnumerator2 = [subjectDataDetectorsFeatures2 reverseObjectEnumerator];

              v105 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v176 objects:v193 count:16];
              if (v105)
              {
                v106 = v105;
                v107 = *v177;
                while (2)
                {
                  for (m = 0; m != v106; ++m)
                  {
                    if (*v177 != v107)
                    {
                      objc_enumerationMutation(reverseObjectEnumerator2);
                    }

                    v109 = *(*(&v176 + 1) + 8 * m);
                    if ([v109 type] == 3 || objc_msgSend(v109, "type") == 7 || objc_msgSend(v109, "type") == 12 || objc_msgSend(v109, "type") == 13)
                    {
                      v110 = [(IPFeatureScanner *)selfCopy cleanedStringForFeatureData:v109];

                      v97 = v110;
                      goto LABEL_110;
                    }
                  }

                  v106 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v176 objects:v193 count:16];
                  if (v106)
                  {
                    continue;
                  }

                  break;
                }

LABEL_110:
                stitchedEvents6 = v170;
              }
            }

            [v101 setLocation:v97];
            v99 = 0;
          }
        }

        v96 = [stitchedEvents6 countByEnumeratingWithState:&v180 objects:v194 count:16];
      }

      while (v96);
    }

    else
    {
      v97 = 0;
    }

    v160 = v97;

    stitchedEvents7 = [(IPFeatureScanner *)selfCopy stitchedEvents];
    [(IPFeatureScanner *)selfCopy adjustTimeForEvents:stitchedEvents7];

    stitchedEvents8 = [(IPFeatureScanner *)selfCopy stitchedEvents];
    [(IPFeatureScanner *)selfCopy confidenceForEvents:stitchedEvents8];

    stitchedEvents9 = [(IPFeatureScanner *)selfCopy stitchedEvents];
    dateSent = v164;
    v114 = [(IPFeatureScanner *)selfCopy filteredEventsForDetectedEvents:stitchedEvents9 referenceDate:v164];
    [(IPFeatureScanner *)selfCopy setFilteredDetectedEvents:v114];

    v117 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging(v115, v116);
      v117 = _IPLogHandle;
    }

    v118 = v117;
    sender = v165;
    subject = v166;
    if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
    {
      filteredDetectedEvents = [(IPFeatureScanner *)selfCopy filteredDetectedEvents];
      v120 = [filteredDetectedEvents count];
      *buf = 134217984;
      v198 = v120;
      _os_log_impl(&dword_2485E4000, v118, OS_LOG_TYPE_INFO, "%lu detected events after filtering #FeatureManager", buf, 0xCu);
    }

    if (IPDebuggingModeEnabled_once != -1)
    {
      [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
    }

    if (IPDebuggingModeEnabled_sEnabled == 1)
    {
      v123 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging(v121, v122);
        v123 = _IPLogHandle;
      }

      v124 = v123;
      if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
      {
        filteredDetectedEvents2 = [(IPFeatureScanner *)selfCopy filteredDetectedEvents];
        v126 = [filteredDetectedEvents2 valueForKey:@"ipsos_betterDescription"];
        *buf = 138412290;
        v198 = v126;
        _os_log_impl(&dword_2485E4000, v124, OS_LOG_TYPE_INFO, "Filtered Events: %@ #FeatureManager", buf, 0xCu);
      }
    }

    filteredDetectedEvents3 = [(IPFeatureScanner *)selfCopy filteredDetectedEvents];
    [(IPFeatureScanner *)selfCopy normalizedEvents:filteredDetectedEvents3];

    extractedNotesStrings = [(IPFeatureScanner *)selfCopy extractedNotesStrings];
    subjectDataDetectorsFeatures3 = [(IPFeatureMailScanner *)selfCopy subjectDataDetectorsFeatures];
    v130 = [(IPFeatureScanner *)selfCopy notesStringsFromDataFeatures:subjectDataDetectorsFeatures3];
    [extractedNotesStrings addObjectsFromArray:v130];

    extractedNotesStrings2 = [(IPFeatureScanner *)selfCopy extractedNotesStrings];
    v132 = [extractedNotesStrings2 count];

    if (v132)
    {
      extractedNotesStrings3 = [(IPFeatureScanner *)selfCopy extractedNotesStrings];
      allObjects = [extractedNotesStrings3 allObjects];
      v135 = [allObjects _pas_componentsJoinedByString:@"\n"];

      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      filteredDetectedEvents4 = [(IPFeatureScanner *)selfCopy filteredDetectedEvents];
      v137 = [filteredDetectedEvents4 countByEnumeratingWithState:&v172 objects:v192 count:16];
      if (v137)
      {
        v138 = v137;
        v139 = *v173;
        do
        {
          for (n = 0; n != v138; ++n)
          {
            if (*v173 != v139)
            {
              objc_enumerationMutation(filteredDetectedEvents4);
            }

            [*(*(&v172 + 1) + 8 * n) setNotes:v135];
          }

          v138 = [filteredDetectedEvents4 countByEnumeratingWithState:&v172 objects:v192 count:16];
        }

        while (v138);
      }
    }

    filteredDetectedEvents5 = [(IPFeatureScanner *)selfCopy filteredDetectedEvents];
    v142 = [filteredDetectedEvents5 count];

    if (v142 == 1)
    {
      [(IPFeatureScanner *)selfCopy setResultType:1];
      filteredDetectedEvents6 = [(IPFeatureScanner *)selfCopy filteredDetectedEvents];
      handlerCopy = v169;
      (v169)[2](v169, filteredDetectedEvents6, [(IPFeatureScanner *)selfCopy resultType]);

      firstObject = v167;
      v6 = v168;
LABEL_140:
      v15 = 0;
LABEL_154:

      goto LABEL_26;
    }

    filteredDetectedEvents7 = [(IPFeatureScanner *)selfCopy filteredDetectedEvents];
    v145 = [filteredDetectedEvents7 count];

    v6 = v168;
    handlerCopy = v169;
    firstObject = v167;
    if (v145 < 3)
    {
      filteredDetectedEvents8 = [(IPFeatureScanner *)selfCopy filteredDetectedEvents];
      v153 = [filteredDetectedEvents8 count];

      if (v153 < 2)
      {
        resultType = [(IPFeatureScanner *)selfCopy resultType];
        v169[2](v169, MEMORY[0x277CBEBF8], resultType);
        goto LABEL_140;
      }

      v156 = _IPLogHandle;
      v15 = 0;
      if (!_IPLogHandle)
      {
        IPInitLogging(v154, v155);
        v156 = _IPLogHandle;
      }

      v157 = v156;
      if (os_log_type_enabled(v157, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2485E4000, v157, OS_LOG_TYPE_INFO, "Bailing out because more than 1 EVENT are detected #FeatureManager", buf, 2u);
      }

      v150 = selfCopy;
      v151 = -68;
    }

    else
    {
      v148 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging(v146, v147);
        v148 = _IPLogHandle;
      }

      v149 = v148;
      v15 = 0;
      if (os_log_type_enabled(v149, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2485E4000, v149, OS_LOG_TYPE_INFO, "Bailing out because more than 3 EVENTS are detected #FeatureManager", buf, 2u);
      }

      v150 = selfCopy;
      v151 = 2;
    }

    [(IPFeatureScanner *)v150 setResultType:v151];
    resultType2 = [(IPFeatureScanner *)selfCopy resultType];
    v169[2](v169, MEMORY[0x277CBEBF8], resultType2);
    goto LABEL_154;
  }

  v16 = [(IPFeatureScanner *)self setResultType:-50];
  v18 = _IPLogHandle;
  if (!_IPLogHandle)
  {
    IPInitLogging(v16, v17);
    v18 = _IPLogHandle;
  }

  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
  if (v19)
  {
    *buf = 0;
    _os_log_impl(&dword_2485E4000, v18, OS_LOG_TYPE_INFO, "Found REJECTION keyword in SUBJECT #FeatureManager", buf, 2u);
  }

  if (IPDebuggingModeEnabled_once != -1)
  {
    [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
  }

  if (IPDebuggingModeEnabled_sEnabled == 1)
  {
    v21 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging(v19, v20);
      v21 = _IPLogHandle;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v198 = v15;
      _os_log_impl(&dword_2485E4000, v21, OS_LOG_TYPE_INFO, "Subject rejection keyword: %@ #FeatureManager", buf, 0xCu);
    }
  }

LABEL_25:
  resultType3 = [(IPFeatureScanner *)self resultType];
  handlerCopy[2](handlerCopy, MEMORY[0x277CBEBF8], resultType3);
LABEL_26:
}

- (void)processScanOfMessageUnit:(id)unit
{
  v139[1] = *MEMORY[0x277D85DE8];
  unitCopy = unit;
  dataDetectorsFeatureExtractor = [objc_opt_class() dataDetectorsFeatureExtractor];
  v139[0] = dataDetectorsFeatureExtractor;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v139 count:1];

  originalMessage = [unitCopy originalMessage];
  lowercaseSubject = [originalMessage lowercaseSubject];

  originalMessage2 = [unitCopy originalMessage];
  dateSent = [originalMessage2 dateSent];

  if ([(IPFeatureScanner *)self shouldReplaceSendDateWithCurrentDate])
  {
    date = [MEMORY[0x277CBEAA8] date];

    dateSent = date;
  }

  dateInSubjectFeatureData = [(IPFeatureMailScanner *)self dateInSubjectFeatureData];

  if (dateInSubjectFeatureData)
  {
    v137 = @"IPFeatureExtractorDetectedDateInSubjectFeatureData";
    dateInSubjectFeatureData2 = [(IPFeatureMailScanner *)self dateInSubjectFeatureData];
    v138 = dateInSubjectFeatureData2;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
  }

  else
  {
    v14 = 0;
  }

  text = [unitCopy text];
  v109 = v6;
  v16 = [(IPFeatureScanner *)self featuresForTextString:text inMessageUnit:unitCopy extractors:v6 context:v14];

  if (-[IPFeatureScanner countOfFeaturesContainDateInTheFuture:messageUnitSentDate:](self, "countOfFeaturesContainDateInTheFuture:messageUnitSentDate:", v16, dateSent) || (-[IPFeatureMailScanner subjectDataDetectorsFeatures](self, "subjectDataDetectorsFeatures"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 count], v20, !v21))
  {
    v17 = [v16 copy];
    v19 = v17;
  }

  else
  {
    subjectDataDetectorsFeatures = [(IPFeatureMailScanner *)self subjectDataDetectorsFeatures];
    v19 = [subjectDataDetectorsFeatures mutableCopy];

    v17 = [v19 addObjectsFromArray:v16];
  }

  if (IPDebuggingModeEnabled_once != -1)
  {
    [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
  }

  if (IPDebuggingModeEnabled_sEnabled == 1)
  {
    v23 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging(v17, v18);
      v23 = _IPLogHandle;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v136 = v19;
      _os_log_impl(&dword_2485E4000, v23, OS_LOG_TYPE_INFO, "Data Detectors Features:\n%@ #FeatureManager", buf, 0xCu);
    }
  }

  v24 = [(IPFeatureScanner *)self countOfFeaturesContainDateInTheFuture:v19 messageUnitSentDate:dateSent];
  if (!v24)
  {
    v28 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging(0, v25);
      v28 = _IPLogHandle;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2485E4000, v28, OS_LOG_TYPE_INFO, "No date in the future detected. Skipping. #FeatureManager", buf, 2u);
    }

    [(IPFeatureScanner *)self setResultType:-10];
    goto LABEL_29;
  }

  v26 = v24;
  if (v24 < 0xA)
  {
    v108 = v16;
    v30 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateSent sinceDate:-10800.0];
    v31 = [(IPFeatureScanner *)self dataFeatures:v19 containDateOlderThan:v30 preciseTimeOnly:1];
    if (v31)
    {
      v33 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging(v31, v32);
        v33 = _IPLogHandle;
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2485E4000, v33, OS_LOG_TYPE_INFO, "Contains a date in the past with precise time. Skipping. #FeatureManager", buf, 2u);
      }

      [(IPFeatureScanner *)self setResultType:-110];
    }

    else
    {
      v34 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateSent sinceDate:-31536000.0];

      v35 = [(IPFeatureScanner *)self dataFeatures:v19 containDateOlderThan:v34 preciseTimeOnly:0];
      if (!v35)
      {
        v102 = v34;
        v103 = v14;
        v105 = v19;
        v133 = @"IPFeatureExtractorContextDataDetectorsFeatures";
        subjectDataDetectorsFeatures2 = [(IPFeatureMailScanner *)self subjectDataDetectorsFeatures];
        v134 = subjectDataDetectorsFeatures2;
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v134 forKeys:&v133 count:1];

        bodyMessageUnits = [(IPFeatureScanner *)self bodyMessageUnits];
        firstObject = [bodyMessageUnits firstObject];
        sentenceFeatureExtractor = [objc_opt_class() sentenceFeatureExtractor];
        v132 = sentenceFeatureExtractor;
        v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v132 count:1];
        v106 = lowercaseSubject;
        v101 = v39;
        v107 = [(IPFeatureScanner *)self featuresForTextString:lowercaseSubject inMessageUnit:firstObject extractors:v43 context:v39];

        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        subjectDataDetectorsFeatures3 = [(IPFeatureMailScanner *)self subjectDataDetectorsFeatures];
        v45 = [subjectDataDetectorsFeatures3 countByEnumeratingWithState:&v118 objects:v131 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v119;
          v48 = MEMORY[0x277CBEC38];
          do
          {
            for (i = 0; i != v46; ++i)
            {
              if (*v119 != v47)
              {
                objc_enumerationMutation(subjectDataDetectorsFeatures3);
              }

              contextDictionary = [*(*(&v118 + 1) + 8 * i) contextDictionary];
              [contextDictionary setObject:v48 forKeyedSubscript:@"extractedInSubject"];
            }

            v46 = [subjectDataDetectorsFeatures3 countByEnumeratingWithState:&v118 objects:v131 count:16];
          }

          while (v46);
        }

        v130[0] = v107;
        v129[0] = @"IPFeatureExtractorPreviousFeatureSentences";
        v129[1] = @"IPFeatureExtractorContextDataDetectorsFeatures";
        v51 = [(IPFeatureScanner *)self _sortedFeaturesByRange:v108];
        v130[1] = v51;
        v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:2];

        text2 = [unitCopy text];
        sentenceFeatureExtractor2 = [objc_opt_class() sentenceFeatureExtractor];
        v128 = sentenceFeatureExtractor2;
        v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v128 count:1];
        v100 = v52;
        v56 = [(IPFeatureScanner *)self featuresForTextString:text2 inMessageUnit:unitCopy extractors:v55 context:v52];

        v104 = v56;
        if ([v56 count])
        {
          v58 = MEMORY[0x277CBEC38];
          keywordFeatureExtractor = [objc_opt_class() keywordFeatureExtractor];
          v127 = keywordFeatureExtractor;
          v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v127 count:1];
          v125 = @"IPFeatureExtractorContextSubject";
          v126 = v58;
          v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
          v61 = [(IPFeatureScanner *)self featuresForTextString:v106 inMessageUnit:unitCopy extractors:v59 context:v60];

          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v62 = v61;
          v63 = [v62 countByEnumeratingWithState:&v114 objects:v124 count:16];
          if (v63)
          {
            v64 = v63;
            v65 = *v115;
            v66 = MEMORY[0x277CBEC38];
            do
            {
              for (j = 0; j != v64; ++j)
              {
                if (*v115 != v65)
                {
                  objc_enumerationMutation(v62);
                }

                contextDictionary2 = [*(*(&v114 + 1) + 8 * j) contextDictionary];
                [contextDictionary2 setObject:v66 forKeyedSubscript:@"IPFeatureKeywordContextExtractedFromSubject"];
              }

              v64 = [v62 countByEnumeratingWithState:&v114 objects:v124 count:16];
            }

            while (v64);
          }

          lowercaseTextTruncated = [unitCopy lowercaseTextTruncated];
          v123 = keywordFeatureExtractor;
          v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v123 count:1];
          v71 = [(IPFeatureScanner *)self featuresForTextString:lowercaseTextTruncated inMessageUnit:unitCopy extractors:v70 context:0];

          v72 = [v104 mutableCopy];
          if (v105)
          {
            v73 = [(IPFeatureScanner *)self _sortedFeaturesByRange:v105];
            [v72 addObjectsFromArray:v73];
          }

          if (v62)
          {
            [v72 addObjectsFromArray:v62];
          }

          if (v71)
          {
            [v72 addObjectsFromArray:v71];
          }

          [unitCopy setFeatures:v72];
          lowercaseSubject = v106;
          if (v105)
          {
            bodyDataDetectorsFeatures = [(IPFeatureScanner *)self bodyDataDetectorsFeatures];
            [bodyDataDetectorsFeatures addObjectsFromArray:v105];
          }

          if (v62)
          {
            subjectKeywordFeatures = [(IPFeatureMailScanner *)self subjectKeywordFeatures];
            [subjectKeywordFeatures addObjectsFromArray:v62];
          }

          if (v71)
          {
            bodyKeywordFeatures = [(IPFeatureScanner *)self bodyKeywordFeatures];
            [bodyKeywordFeatures addObjectsFromArray:v71];
          }

          [(IPFeatureScanner *)self augmentDetectedDatesWithEndDates:v105];
          v77 = [(IPFeatureScanner *)self _sortedFeaturesByRange:v72];
          bodyAllFeatures = [(IPFeatureScanner *)self bodyAllFeatures];
          [bodyAllFeatures addObjectsFromArray:v77];

          v98 = v71;
          if (IPDebuggingModeEnabled_once != -1)
          {
            [IPFeatureScanner isEventProposalOrConfirmationFromFeatures:fromFeatureAtIndex:messageUnit:eventIsTenseDependent:extractedFromSubject:extractedPolarity:polarityInfluencedByIpsosPlistRef:];
          }

          if (IPDebuggingModeEnabled_sEnabled == 1)
          {
            v81 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging(v79, v80);
              v81 = _IPLogHandle;
            }

            if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v136 = v77;
              _os_log_impl(&dword_2485E4000, v81, OS_LOG_TYPE_INFO, "Feature detection result:\n--> Unit Features:\n%@ #FeatureManager", buf, 0xCu);
            }
          }

          v97 = v72;
          v82 = [(IPFeatureScanner *)self analyzeFeatures:v77 messageUnit:unitCopy, v77];
          [(IPFeatureScanner *)self setDetectedEvents:v82];

          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          detectedEvents = [(IPFeatureScanner *)self detectedEvents];
          v84 = [detectedEvents countByEnumeratingWithState:&v110 objects:v122 count:16];
          if (v84)
          {
            v85 = v84;
            v86 = *v111;
            do
            {
              for (k = 0; k != v85; ++k)
              {
                if (*v111 != v86)
                {
                  objc_enumerationMutation(detectedEvents);
                }

                [*(*(&v110 + 1) + 8 * k) setIpsos_eventAttributes:{objc_msgSend(*(*(&v110 + 1) + 8 * k), "ipsos_eventAttributes") | 2}];
              }

              v85 = [detectedEvents countByEnumeratingWithState:&v110 objects:v122 count:16];
            }

            while (v85);
          }

          extractedNotesStrings = [(IPFeatureScanner *)self extractedNotesStrings];
          v89 = [extractedNotesStrings count];

          if (!v89)
          {
            extractedNotesStrings2 = [(IPFeatureScanner *)self extractedNotesStrings];
            subjectDataDetectorsFeatures4 = [(IPFeatureMailScanner *)self subjectDataDetectorsFeatures];
            v92 = [(IPFeatureScanner *)self notesStringsFromDataFeatures:subjectDataDetectorsFeatures4];
            [extractedNotesStrings2 addObjectsFromArray:v92];
          }

          v29 = v109;
          v30 = v102;
          v14 = v103;
          v19 = v105;
        }

        else
        {
          v93 = _IPLogHandle;
          v29 = v109;
          lowercaseSubject = v106;
          if (!_IPLogHandle)
          {
            IPInitLogging(0, v57);
            v93 = _IPLogHandle;
          }

          v30 = v102;
          v14 = v103;
          v19 = v105;
          if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
          {
            v94 = v93;
            bestLanguageID = [unitCopy bestLanguageID];
            *buf = 138412290;
            v136 = bestLanguageID;
            _os_log_impl(&dword_2485E4000, v94, OS_LOG_TYPE_INFO, "No sentence polarity extracted. No sentence or no LSTM assets available for language identifier %@ #FeatureManager", buf, 0xCu);
          }

          [(IPFeatureScanner *)self setResultType:-13];
        }

        goto LABEL_93;
      }

      v37 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging(v35, v36);
        v37 = _IPLogHandle;
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2485E4000, v37, OS_LOG_TYPE_INFO, "Contains a date in the far past. Skipping. #FeatureManager", buf, 2u);
      }

      [(IPFeatureScanner *)self setResultType:-11];
      v30 = v34;
    }

    v29 = v109;
LABEL_93:

    v16 = v108;
    goto LABEL_94;
  }

  v27 = _IPLogHandle;
  if (!_IPLogHandle)
  {
    IPInitLogging(v24, v25);
    v27 = _IPLogHandle;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v136 = v26;
    _os_log_impl(&dword_2485E4000, v27, OS_LOG_TYPE_INFO, "Too many DETECTED dates in the future detected. (%lu)  Skipping. #FeatureManager", buf, 0xCu);
  }

  [(IPFeatureScanner *)self setResultType:-12];
LABEL_29:
  v29 = v109;
LABEL_94:
}

- (void)enrichEvents:(id)events messageUnits:(id)units dateInSubject:(id)subject dataFeatures:(id)features
{
  v107 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  unitsCopy = units;
  subjectCopy = subject;
  featuresCopy = features;
  if ([eventsCopy count])
  {
    v90 = [(IPFeatureScanner *)self movieTitlesFromDataFeatures:featuresCopy];
    v86 = [(IPFeatureScanner *)self sportTeamNamesFromDataFeatures:featuresCopy];
    v85 = [(IPFeatureScanner *)self artisNamesFromDataFeatures:featuresCopy];
    v84 = [(IPFeatureScanner *)self restaurantAndBarPOINamesFromDataFeatures:featuresCopy];
    selfCopy = self;
    v82 = featuresCopy;
    v12 = [(IPFeatureScanner *)self entertainmentPOINamesFromDataFeatures:featuresCopy];
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v83 = eventsCopy;
    obj = eventsCopy;
    v92 = [obj countByEnumeratingWithState:&v102 objects:v106 count:16];
    if (!v92)
    {
      goto LABEL_83;
    }

    v91 = *v103;
    v13 = 0x278F22000uLL;
    v89 = v12;
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v103 != v91)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v102 + 1) + 8 * v14);
        v16 = *(v13 + 2472);
        ipsos_messageUnit = [v15 ipsos_messageUnit];
        ipsos_messageUnit2 = [v15 ipsos_messageUnit];
        keywordFeatures = [ipsos_messageUnit2 keywordFeatures];
        ipsos_dataFeatures = [v15 ipsos_dataFeatures];
        v21 = [v16 eventClassificationTypeFromMessageUnit:ipsos_messageUnit keywordFeatures:keywordFeatures datafeatures:ipsos_dataFeatures];
        [v15 setIpsos_eventClassificationType:v21];

        ipsos_eventClassificationType = [v15 ipsos_eventClassificationType];
        v23 = ipsos_eventClassificationType;
        if (ipsos_eventClassificationType && ![ipsos_eventClassificationType isFairlyGeneric])
        {
          goto LABEL_21;
        }

        firstObject = [unitsCopy firstObject];
        bestLanguageID = [firstObject bestLanguageID];

        if ([v90 count])
        {
          v26 = [*(v13 + 2472) eventTypeForMoviesAndLanguageID:bestLanguageID];
        }

        else if ([v86 count])
        {
          v26 = [*(v13 + 2472) eventTypeForSportAndLanguageID:bestLanguageID];
        }

        else if ([v85 count])
        {
          v26 = [*(v13 + 2472) eventTypeForCultureAndLanguageID:bestLanguageID];
        }

        else if ([v84 count])
        {
          v26 = [*(v13 + 2472) eventTypeForMealsAndLanguageID:bestLanguageID];
        }

        else
        {
          if (![v12 count])
          {
            goto LABEL_20;
          }

          v26 = [*(v13 + 2472) eventTypeForEntertainmentAndLanguageID:bestLanguageID];
        }

        v27 = v26;

        v23 = v27;
LABEL_20:
        [v15 setIpsos_eventClassificationType:v23];

        if (!v23)
        {
          goto LABEL_67;
        }

LABEL_21:
        isAllDay = [v15 isAllDay];
        ipsos_allDayPreferred = [v15 ipsos_allDayPreferred];
        ipsos_disableTimeAdjustment = [v15 ipsos_disableTimeAdjustment];
        ipsos_isTimeApproximate = [v15 ipsos_isTimeApproximate];
        ipsos_isEndTimeApproximate = [v15 ipsos_isEndTimeApproximate];
        startDate = [v15 startDate];
        endDate = [v15 endDate];
        v33 = endDate;
        if (isAllDay)
        {
          [endDate timeIntervalSinceDate:startDate];
          v35 = fabs(v34) > 86400.0;
        }

        else
        {
          v36 = [v23 adjustedEventClassificationTypeWithStartDate:startDate];

          [v15 setIpsos_eventClassificationType:v36];
          v35 = 0;
          v23 = v36;
        }

        if (([v23 defaultStartingTimeHour] & 0x80000000) != 0)
        {
          v44 = 0;
          v48 = selfCopy;
        }

        else
        {
          v94 = ipsos_allDayPreferred;
          v37 = ipsos_isEndTimeApproximate;
          v38 = v33;
          v39 = MEMORY[0x277CBEAA8];
          v40 = isAllDay;
          v41 = 3600 * [v23 defaultStartingTimeHour];
          v42 = (v41 + 60 * [v23 defaultStartingTimeMinutes]);
          v43 = [(IPFeatureScanner *)selfCopy normalizedAllDayDateFromDate:startDate];
          v44 = [v39 dateWithTimeInterval:v43 sinceDate:v42];

          isAllDay = v40;
          v45 = 0;
          if (!((v44 == 0) | v40 & 1) && ((ipsos_isTimeApproximate ^ 1) & 1) == 0)
          {
            [v44 timeIntervalSinceDate:startDate];
            v45 = fabs(v46) <= 5400.0;
          }

          v47 = ipsos_disableTimeAdjustment;
          if (!v44)
          {
            v47 = 1;
          }

          v33 = v38;
          if (v47)
          {
            v48 = selfCopy;
            ipsos_isEndTimeApproximate = v37;
          }

          else
          {
            v49 = v45 | ~(v94 | ~isAllDay | v35);
            v48 = selfCopy;
            ipsos_isEndTimeApproximate = v37;
            if (v49)
            {
              v50 = v44;

              ipsos_isTimeApproximate = 1;
              [v15 setIpsos_usesDefaultClassificationTypeStartTime:1];
              v44 = v50;

              isAllDay = 0;
              v33 = v44;
              startDate = v44;
            }
          }
        }

        if (v33 == startDate)
        {
          v51 = 1;
        }

        else
        {
          v51 = ipsos_isEndTimeApproximate;
        }

        v97 = isAllDay;
        v95 = v44;
        if (!isAllDay && v51)
        {
          [v23 defaultDuration];
          if (v52 <= 0.0)
          {
            if ([(IPFeatureScanner *)v48 isDateAroundNoon:startDate])
            {
              v55 = startDate;
              v56 = 3600.0;
            }

            else
            {
              v55 = startDate;
              v56 = 7200.0;
            }

            v54 = [v55 dateByAddingTimeInterval:v56];
          }

          else
          {
            v53 = MEMORY[0x277CBEAA8];
            [v23 defaultDuration];
            v54 = [v53 dateWithTimeInterval:startDate sinceDate:?];
          }

          v57 = v54;

          v33 = v57;
        }

        v101 = 0;
        v58 = [unitsCopy objectAtIndexedSubscript:0];
        originalMessage = [v58 originalMessage];

        bodyMessageUnits = [(IPFeatureScanner *)v48 bodyMessageUnits];
        subject = [originalMessage subject];
        v62 = [v23 adjustedEventTitleForMessageUnits:bodyMessageUnits subject:subject dateInSubject:subjectCopy eventStartDate:startDate isGeneratedFromSubject:&v101];

        defaultTitle = [v23 defaultTitle];
        LODWORD(subject) = [defaultTitle isEqualToString:v62];

        v100 = 0;
        if (subject)
        {
          if ([v23 isSportRelated])
          {
            v64 = selfCopy;
            v65 = v62;
            v66 = v86;
LABEL_57:
            v68 = [(IPFeatureScanner *)v64 decoratedTitle:v65 withSubtitles:v66];

LABEL_58:
            firstObject2 = 0;
            v62 = v68;
            goto LABEL_59;
          }

          if ([v23 isMovieRelated] && v90)
          {
            v64 = selfCopy;
            v65 = v62;
            v66 = v90;
            goto LABEL_57;
          }

          if ([v23 isCultureRelated] && objc_msgSend(v85, "count"))
          {
            v64 = selfCopy;
            v65 = v62;
            v66 = v85;
            goto LABEL_57;
          }

          if ([v23 isMealRelated] && objc_msgSend(v84, "count"))
          {
            v74 = selfCopy;
            v75 = v62;
            v76 = v84;
LABEL_78:
            v80 = [(IPFeatureScanner *)v74 decoratedTitle:v75 withSubtitles:v76];

            if ([v76 count] == 1)
            {
              firstObject2 = [v76 firstObject];
            }

            else
            {
              firstObject2 = 0;
            }

            v62 = v80;
            goto LABEL_59;
          }

          if (![v62 length] && objc_msgSend(v89, "count"))
          {
            v74 = selfCopy;
            v75 = v62;
            v76 = v89;
            goto LABEL_78;
          }

          isGroupConversation = [originalMessage isGroupConversation];
          firstObject2 = 0;
          if ([v23 prefersTitleSenderDecoration] && (isGroupConversation & 1) == 0)
          {
            sender = [originalMessage sender];
            recipients = [originalMessage recipients];
            v68 = -[IPFeatureScanner decoratedTitleFromEventType:title:sender:recipients:isSent:isTitleSenderDecorated:](selfCopy, "decoratedTitleFromEventType:title:sender:recipients:isSent:isTitleSenderDecorated:", v23, v62, sender, recipients, [originalMessage isSent], &v100);

            goto LABEL_58;
          }
        }

        else
        {
          firstObject2 = 0;
        }

LABEL_59:
        [v15 setAllDay:v97];
        [v15 setStartDate:startDate];
        [v15 setEndDate:v33];
        [v15 setIpsos_isTimeApproximate:ipsos_isTimeApproximate];
        [v15 setTitle:v62];
        if ([v62 length])
        {
          v69 = v101;
          ipsos_eventAttributes = [v15 ipsos_eventAttributes];
          v71 = 2048;
          if (v69)
          {
            v71 = 1024;
          }

          [v15 setIpsos_eventAttributes:ipsos_eventAttributes | v71];
          if (v100 == 1)
          {
            [v15 setIpsos_eventAttributes:{objc_msgSend(v15, "ipsos_eventAttributes") | 0x1000}];
          }
        }

        location = [v15 location];
        v73 = [location length];

        if (!v73)
        {
          [v15 setLocation:firstObject2];
        }

        v12 = v89;
        v13 = 0x278F22000;
LABEL_67:
        ++v14;
      }

      while (v92 != v14);
      v81 = [obj countByEnumeratingWithState:&v102 objects:v106 count:16];
      v92 = v81;
      if (!v81)
      {
LABEL_83:

        featuresCopy = v82;
        eventsCopy = v83;
        break;
      }
    }
  }
}

- (BOOL)isBannedSender:(id)sender
{
  email = [sender email];
  if ([email length])
  {
    if ([email hasPrefix:@"receipts."] & 1) != 0 || (objc_msgSend(email, "hasPrefix:", @"receipts@") & 1) != 0 || (objc_msgSend(email, "hasPrefix:", @"info@") & 1) != 0 || (objc_msgSend(email, "hasPrefix:", @"news@") & 1) != 0 || (objc_msgSend(email, "containsString:", @"_news@") & 1) != 0 || (objc_msgSend(email, "hasPrefix:", @"noreply@") & 1) != 0 || (objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@@%@", @"radar", @"apple.com"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(email, "hasPrefix:", v4), v4, (v5) || (objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@.%@@%@", @"travel", @"res", @"apple.com"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(email, "hasPrefix:", v6), v6, (v7))
    {
      v8 = 1;
    }

    else
    {
      v8 = [email containsString:@"newsletter"];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)resetScanState
{
  [(IPFeatureMailScanner *)self setSubjectContainsDate:0];
  v3 = MEMORY[0x277CBEBF8];
  [(IPFeatureMailScanner *)self setSubjectDataDetectorsFeatures:MEMORY[0x277CBEBF8]];
  [(IPFeatureMailScanner *)self setDateInSubjectFeatureData:0];
  [(IPFeatureMailScanner *)self setSubjectSentenceFeatures:v3];
  v4 = objc_opt_new();
  [(IPFeatureMailScanner *)self setSubjectKeywordFeatures:v4];

  v5 = objc_opt_new();
  [(IPFeatureMailScanner *)self setSubjectAndBodyDataDetectorsFeatures:v5];

  v6.receiver = self;
  v6.super_class = IPFeatureMailScanner;
  [(IPFeatureScanner *)&v6 resetScanState];
}

- (double)confidenceForEvent:(id)event baseConfidence:(double)confidence
{
  v57 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  bodyMessageUnits = [(IPFeatureScanner *)self bodyMessageUnits];
  firstObject = [bodyMessageUnits firstObject];
  originalMessage = [firstObject originalMessage];

  if ([eventCopy isAllDay])
  {
    v9 = 0.95;
  }

  else if ([eventCopy ipsos_usesDefaultClassificationTypeStartTime])
  {
    v9 = 0.8;
  }

  else if ([eventCopy ipsos_isTimeApproximate])
  {
    v9 = 0.8;
  }

  else
  {
    v9 = 1.0;
  }

  if ([eventCopy ipsos_isDateTimeTenseDependent])
  {
    v10 = v9 * 0.8;
  }

  else
  {
    v10 = v9;
  }

  if ([eventCopy ipsos_timeNeedsMeridianGuess])
  {
    v10 = v10 * 0.9;
  }

  if ([eventCopy ipsos_isEventTimeOnlyAndReferrengingToSentDate])
  {
    v10 = v10 * 0.75;
  }

  detectedEvents = [(IPFeatureScanner *)self detectedEvents];
  v12 = [detectedEvents count];

  if (v12 < 5)
  {
    detectedEvents2 = [(IPFeatureScanner *)self detectedEvents];
    v14 = [detectedEvents2 count];

    if (v14 < 4)
    {
      detectedEvents3 = [(IPFeatureScanner *)self detectedEvents];
      v16 = [detectedEvents3 count];

      if (v16 > 2)
      {
        v10 = v10 * 0.95;
      }
    }

    else
    {
      v10 = v10 * 0.9;
    }
  }

  else
  {
    v10 = v10 * 0.7;
  }

  stitchedEvents = [(IPFeatureScanner *)self stitchedEvents];
  v18 = [stitchedEvents count];

  if (v18 < 4)
  {
    stitchedEvents2 = [(IPFeatureScanner *)self stitchedEvents];
    v21 = [stitchedEvents2 count];

    if (v21 < 3)
    {
      stitchedEvents3 = [(IPFeatureScanner *)self stitchedEvents];
      v23 = [stitchedEvents3 count];

      if (v23 <= 1)
      {
        v19 = v10;
      }

      else
      {
        v19 = v10 * 0.9;
      }
    }

    else
    {
      v19 = v10 * 0.8;
    }
  }

  else
  {
    v19 = v10 * 0.7;
  }

  bodyKeywordFeatures = [(IPFeatureScanner *)self bodyKeywordFeatures];
  v25 = [bodyKeywordFeatures count];

  if (v25 <= 5)
  {
    v26 = v19;
  }

  else
  {
    v26 = v19 * 0.9;
  }

  bodyKeywordFeatures2 = [(IPFeatureScanner *)self bodyKeywordFeatures];
  v28 = [bodyKeywordFeatures2 count];

  if (v28 >= 4)
  {
    v29 = 1.15;
LABEL_35:
    v26 = v26 * v29;
    goto LABEL_38;
  }

  bodyKeywordFeatures3 = [(IPFeatureScanner *)self bodyKeywordFeatures];
  v31 = [bodyKeywordFeatures3 count];

  if (v31 >= 3)
  {
    v29 = 1.1;
    goto LABEL_35;
  }

  bodyKeywordFeatures4 = [(IPFeatureScanner *)self bodyKeywordFeatures];
  v33 = [bodyKeywordFeatures4 count];

  if (v33 > 1)
  {
    v26 = v26 * 1.05;
  }

LABEL_38:
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  ipsos_dataFeatures = [eventCopy ipsos_dataFeatures];
  v35 = [ipsos_dataFeatures countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v53;
    v38 = 0.0;
    v39 = 0.0;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v53 != v37)
        {
          objc_enumerationMutation(ipsos_dataFeatures);
        }

        contextDictionary = [*(*(&v52 + 1) + 8 * i) contextDictionary];
        v42 = [contextDictionary objectForKeyedSubscript:@"polarityProbability"];

        if (v42)
        {
          [v42 doubleValue];
          if (v43 > 0.001)
          {
            v38 = v38 + 1.0;
            v39 = v39 + v43;
          }
        }
      }

      v36 = [ipsos_dataFeatures countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v36);

    if (v38 > 0.0)
    {
      v26 = v26 * ((1.0 - v39 / v38) * -0.5 + 1.0);
    }
  }

  else
  {
  }

  type = [originalMessage type];
  v45 = IPMessageTypeEmail;

  if (type == v45)
  {
    ipsos_messageUnit = [eventCopy ipsos_messageUnit];
    originalMessage2 = [ipsos_messageUnit originalMessage];
    isReply = [originalMessage2 isReply];

    if (isReply)
    {
      v26 = v26 * 0.85;
    }

    if ([originalMessage messageUnitsTextLength] > 0xFA0)
    {
      v26 = v26 * 0.5;
    }
  }

  title = [eventCopy title];
  v50 = [title length];

  if (!v50)
  {
    v26 = v26 * 0.85;
  }

  return v26;
}

- (id)emailParticipantNames
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  messageSenderName = [(IPFeatureScanner *)self messageSenderName];
  if ([messageSenderName length])
  {
    [v3 addObject:messageSenderName];
  }

  bodyMessageUnits = [(IPFeatureScanner *)self bodyMessageUnits];
  firstObject = [bodyMessageUnits firstObject];
  originalMessage = [firstObject originalMessage];

  recipients = [originalMessage recipients];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [recipients countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(recipients);
        }

        displayableName = [*(*(&v15 + 1) + 8 * i) displayableName];
        if ([displayableName length])
        {
          [v3 addObject:displayableName];
        }
      }

      v10 = [recipients countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v3;
}

@end