@interface _PSHistogramFeatures
+ (id)computeFactorNameForFeature:(id)feature;
+ (id)conditionedProbabilityAcrossAllBucketsWithCandidates:(id)candidates featureName:(int)name predictionContext:(id)context histogramFeatureData:(id)data histogramSmoothingParameterK:(id)k histogramSmoothingParameterV:(id)v;
+ (id)conditionedProbabilityAcrossAllCandidatesWithCandidates:(id)candidates featureName:(int)name predictionContext:(id)context histogramFeatureData:(id)data histogramSmoothingParameterK:(id)k histogramSmoothingParameterV:(id)v;
+ (id)fetchBucketNamesFromPredictionContextForFeatureName:(int)name predictionContext:(id)context;
+ (id)fetchIntervalStringForFeatureName:(int)name;
+ (id)hasEverInBucketWithCandidates:(id)candidates featureName:(int)name predictionContext:(id)context histogramFeatureData:(id)data;
+ (int)bucketCounttimeIntervalForFeatureName:(int)name;
+ (int)virtualFeatureToDurableFeatureSourceMapping:(int)mapping;
@end

@implementation _PSHistogramFeatures

+ (id)conditionedProbabilityAcrossAllBucketsWithCandidates:(id)candidates featureName:(int)name predictionContext:(id)context histogramFeatureData:(id)data histogramSmoothingParameterK:(id)k histogramSmoothingParameterV:(id)v
{
  v12 = *&name;
  v75 = *MEMORY[0x1E69E9840];
  candidatesCopy = candidates;
  contextCopy = context;
  dataCopy = data;
  kCopy = k;
  vCopy = v;
  if ([candidatesCopy count])
  {
    v15 = objc_opt_new();
    [_PSHistogramFeatures virtualFeatureToDurableFeatureSourceMapping:v12];
    v16 = BMMLSEDurableFeatureStorefeatureNameAsString();
    v62 = [_PSHistogramFeatures computeFactorNameForFeature:v16];

    v61 = [_PSHistogramFeatures fetchIntervalStringForFeatureName:v12];
    v53 = [_PSHistogramFeatures fetchBucketNamesFromPredictionContextForFeatureName:v12 predictionContext:contextCopy];
    if ([v53 count])
    {
      v50 = candidatesCopy;
      v51 = v15;
      v49 = contextCopy;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      obj = candidatesCopy;
      v17 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v70;
        v52 = *v70;
        do
        {
          v20 = 0;
          v56 = v18;
          do
          {
            if (*v70 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v69 + 1) + 8 * v20);
            v22 = objc_autoreleasePoolPush();
            if ([v21 hasCandidateIdentifier])
            {
              v64 = v21;
              v58 = v22;
              v67 = 0u;
              v68 = 0u;
              v65 = 0u;
              v66 = 0u;
              v60 = v53;
              v23 = [v60 countByEnumeratingWithState:&v65 objects:v73 count:16];
              v59 = v20;
              if (v23)
              {
                v24 = v23;
                v25 = 0;
                v26 = *v66;
                do
                {
                  for (i = 0; i != v24; ++i)
                  {
                    if (*v66 != v26)
                    {
                      objc_enumerationMutation(v60);
                    }

                    v28 = *(*(&v65 + 1) + 8 * i);
                    cache = [dataCopy cache];
                    candidateIdentifier = [v64 candidateIdentifier];
                    v31 = [cache objectForKeyedSubscript:candidateIdentifier];
                    v32 = [v31 objectForKeyedSubscript:v62];
                    v33 = [v32 objectForKeyedSubscript:v61];
                    v34 = [v33 objectForKeyedSubscript:v28];
                    v35 = v34;
                    if (!v34)
                    {
                      v34 = &unk_1F2D8BD30;
                    }

                    v25 += [v34 intValue];
                  }

                  v24 = [v60 countByEnumeratingWithState:&v65 objects:v73 count:16];
                }

                while (v24);
              }

              else
              {
                v25 = 0;
              }

              bucketSums = [dataCopy bucketSums];
              candidateIdentifier2 = [v64 candidateIdentifier];
              v38 = [bucketSums objectForKeyedSubscript:candidateIdentifier2];
              v39 = [v38 objectForKeyedSubscript:v62];
              v40 = [v39 objectForKeyedSubscript:v61];
              v41 = v40;
              if (!v40)
              {
                v40 = &unk_1F2D8BD30;
              }

              intValue = [v40 intValue];

              intValue2 = [kCopy intValue];
              intValue3 = [kCopy intValue];
              v45 = intValue + [vCopy intValue] * intValue3;
              v19 = v52;
              v18 = v56;
              v22 = v58;
              v20 = v59;
              if (v45 >= 1)
              {
                v46 = [MEMORY[0x1E696AD98] numberWithDouble:(intValue2 + v25) / v45];
                [v51 addFeatureWithIntValue:0 doubleValue:v46 stringValue:0 BOOLValue:0 timeBucket:0 forKey:v64];
              }
            }

            objc_autoreleasePoolPop(v22);
            ++v20;
          }

          while (v20 != v18);
          v18 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
        }

        while (v18);
      }

      v15 = v51;
      v47 = v51;
      contextCopy = v49;
      candidatesCopy = v50;
    }

    else
    {
      v47 = MEMORY[0x1E695E0F8];
    }
  }

  else
  {
    v47 = MEMORY[0x1E695E0F8];
  }

  return v47;
}

+ (id)conditionedProbabilityAcrossAllCandidatesWithCandidates:(id)candidates featureName:(int)name predictionContext:(id)context histogramFeatureData:(id)data histogramSmoothingParameterK:(id)k histogramSmoothingParameterV:(id)v
{
  v12 = *&name;
  v71 = *MEMORY[0x1E69E9840];
  candidatesCopy = candidates;
  contextCopy = context;
  dataCopy = data;
  kCopy = k;
  vCopy = v;
  if ([candidatesCopy count])
  {
    v43 = objc_opt_new();
    [_PSHistogramFeatures virtualFeatureToDurableFeatureSourceMapping:v12];
    v15 = BMMLSEDurableFeatureStorefeatureNameAsString();
    v53 = [_PSHistogramFeatures computeFactorNameForFeature:v15];

    v52 = [_PSHistogramFeatures fetchIntervalStringForFeatureName:v12];
    v45 = [_PSHistogramFeatures fetchBucketNamesFromPredictionContextForFeatureName:v12 predictionContext:contextCopy];
    if ([v45 count])
    {
      v42 = candidatesCopy;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      obj = candidatesCopy;
      v16 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v66;
        v44 = *v66;
        do
        {
          v19 = 0;
          v48 = v17;
          do
          {
            if (*v66 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v56 = *(*(&v65 + 1) + 8 * v19);
            if ([v56 hasCandidateIdentifier])
            {
              v50 = v19;
              v63 = 0u;
              v64 = 0u;
              v61 = 0u;
              v62 = 0u;
              v51 = v45;
              v57 = [v51 countByEnumeratingWithState:&v61 objects:v69 count:16];
              if (v57)
              {
                v60 = 0;
                v20 = 0;
                v55 = *v62;
                do
                {
                  for (i = 0; i != v57; ++i)
                  {
                    v59 = v20;
                    if (*v62 != v55)
                    {
                      objc_enumerationMutation(v51);
                    }

                    v22 = *(*(&v61 + 1) + 8 * i);
                    v58 = v22;
                    cache = [dataCopy cache];
                    candidateIdentifier = [v56 candidateIdentifier];
                    v25 = [cache objectForKeyedSubscript:candidateIdentifier];
                    v26 = [v25 objectForKeyedSubscript:v53];
                    v27 = [v26 objectForKeyedSubscript:v52];
                    v28 = [v27 objectForKeyedSubscript:v22];
                    v29 = v28;
                    if (!v28)
                    {
                      v28 = &unk_1F2D8BD30;
                    }

                    v60 += [v28 intValue];

                    candidateTimeIntervalSums = [dataCopy candidateTimeIntervalSums];
                    v31 = [candidateTimeIntervalSums objectForKeyedSubscript:v53];
                    v32 = [v31 objectForKeyedSubscript:v58];
                    v33 = [v32 objectForKeyedSubscript:v52];
                    v34 = v33;
                    if (!v33)
                    {
                      v33 = &unk_1F2D8BD30;
                    }

                    v20 = [v33 intValue] + v59;
                  }

                  v57 = [v51 countByEnumeratingWithState:&v61 objects:v69 count:16];
                }

                while (v57);
              }

              else
              {
                v60 = 0;
                v20 = 0;
              }

              intValue = [kCopy intValue];
              intValue2 = [kCopy intValue];
              v37 = v20 + [vCopy intValue] * intValue2;
              v18 = v44;
              v17 = v48;
              v19 = v50;
              if (v37 >= 1)
              {
                v38 = [MEMORY[0x1E696AD98] numberWithDouble:(intValue + v60) / v37];
                [v43 addFeatureWithIntValue:0 doubleValue:v38 stringValue:0 BOOLValue:0 timeBucket:0 forKey:v56];
              }
            }

            ++v19;
          }

          while (v19 != v17);
          v17 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
        }

        while (v17);
      }

      v39 = v43;
      v40 = v43;
      candidatesCopy = v42;
    }

    else
    {
      v40 = MEMORY[0x1E695E0F8];
      v39 = v43;
    }
  }

  else
  {
    v40 = MEMORY[0x1E695E0F8];
  }

  return v40;
}

+ (id)hasEverInBucketWithCandidates:(id)candidates featureName:(int)name predictionContext:(id)context histogramFeatureData:(id)data
{
  v8 = *&name;
  v54 = *MEMORY[0x1E69E9840];
  candidatesCopy = candidates;
  contextCopy = context;
  dataCopy = data;
  if ([candidatesCopy count])
  {
    v12 = objc_opt_new();
    [_PSHistogramFeatures virtualFeatureToDurableFeatureSourceMapping:v8];
    v13 = BMMLSEDurableFeatureStorefeatureNameAsString();
    v43 = [_PSHistogramFeatures computeFactorNameForFeature:v13];

    bucketHasEver = [dataCopy bucketHasEver];
    v39 = [_PSHistogramFeatures fetchBucketNamesFromPredictionContextForFeatureName:v8 predictionContext:contextCopy];
    if ([v39 count])
    {
      v34 = dataCopy;
      v35 = contextCopy;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v36 = candidatesCopy;
      obj = candidatesCopy;
      v15 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v49;
        v37 = *v49;
        v38 = v12;
        do
        {
          v18 = 0;
          v40 = v16;
          do
          {
            if (*v49 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v48 + 1) + 8 * v18);
            if ([v19 hasCandidateIdentifier])
            {
              v42 = v18;
              v46 = 0u;
              v47 = 0u;
              v44 = 0u;
              v45 = 0u;
              v20 = v39;
              v21 = [v20 countByEnumeratingWithState:&v44 objects:v52 count:16];
              if (v21)
              {
                v22 = v21;
                LOBYTE(v23) = 0;
                v24 = *v45;
                do
                {
                  for (i = 0; i != v22; ++i)
                  {
                    if (*v45 != v24)
                    {
                      objc_enumerationMutation(v20);
                    }

                    if (v23)
                    {
                      v23 = 1;
                    }

                    else
                    {
                      v26 = *(*(&v44 + 1) + 8 * i);
                      candidateIdentifier = [v19 candidateIdentifier];
                      v28 = [bucketHasEver objectForKeyedSubscript:candidateIdentifier];
                      v29 = [v28 objectForKeyedSubscript:v43];
                      v30 = [v29 objectForKeyedSubscript:v26];
                      v23 = v30 != 0;
                    }
                  }

                  v22 = [v20 countByEnumeratingWithState:&v44 objects:v52 count:16];
                }

                while (v22);
              }

              else
              {
                v23 = 0;
              }

              v31 = [MEMORY[0x1E696AD98] numberWithBool:v23];
              v12 = v38;
              [v38 addFeatureWithIntValue:0 doubleValue:0 stringValue:0 BOOLValue:v31 timeBucket:0 forKey:v19];

              v17 = v37;
              v16 = v40;
              v18 = v42;
            }

            ++v18;
          }

          while (v18 != v16);
          v16 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
        }

        while (v16);
      }

      v32 = v12;
      contextCopy = v35;
      candidatesCopy = v36;
      dataCopy = v34;
    }

    else
    {
      v32 = MEMORY[0x1E695E0F8];
    }
  }

  else
  {
    v32 = MEMORY[0x1E695E0F8];
  }

  return v32;
}

+ (id)fetchBucketNamesFromPredictionContextForFeatureName:(int)name predictionContext:(id)context
{
  v99 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = objc_opt_new();
  switch(name)
  {
    case 524:
    case 525:
    case 526:
    case 527:
    case 528:
    case 529:
    case 530:
    case 531:
    case 532:
    case 533:
    case 644:
      suggestionDate = [contextCopy suggestionDate];

      if (suggestionDate)
      {
        currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
        suggestionDate2 = [contextCopy suggestionDate];
        suggestionDate4 = [currentCalendar components:96 fromDate:suggestionDate2];

        hour = [suggestionDate4 hour];
        goto LABEL_33;
      }

      goto LABEL_81;
    case 534:
    case 535:
    case 536:
    case 537:
    case 538:
    case 539:
    case 540:
    case 541:
    case 542:
    case 543:
    case 645:
      suggestionDate3 = [contextCopy suggestionDate];

      if (suggestionDate3)
      {
        currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
        v59 = MEMORY[0x1E696AD98];
        suggestionDate4 = [contextCopy suggestionDate];
        v31 = [v59 numberWithBool:{objc_msgSend(currentCalendar, "isDateInWeekend:", suggestionDate4)}];
        goto LABEL_79;
      }

      goto LABEL_81;
    case 544:
    case 545:
    case 546:
    case 547:
    case 548:
    case 549:
    case 550:
    case 551:
    case 552:
    case 553:
    case 646:
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      currentCalendar = [contextCopy locationUUIDs];
      v53 = [currentCalendar countByEnumeratingWithState:&v64 objects:v92 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v65;
        do
        {
          for (i = 0; i != v54; ++i)
          {
            if (*v65 != v55)
            {
              objc_enumerationMutation(currentCalendar);
            }

            if (*(*(&v64 + 1) + 8 * i))
            {
              [v6 addObject:?];
            }
          }

          v54 = [currentCalendar countByEnumeratingWithState:&v64 objects:v92 count:16];
        }

        while (v54);
      }

      break;
    case 554:
    case 555:
    case 556:
    case 557:
    case 558:
    case 559:
    case 560:
    case 561:
    case 562:
    case 563:
    case 647:
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      currentCalendar = [contextCopy attachments];
      v43 = [currentCalendar countByEnumeratingWithState:&v88 objects:v98 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v89;
        do
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v89 != v45)
            {
              objc_enumerationMutation(currentCalendar);
            }

            v47 = *(*(&v88 + 1) + 8 * j);
            v84 = 0u;
            v85 = 0u;
            v86 = 0u;
            v87 = 0u;
            peopleInPhoto = [v47 peopleInPhoto];
            v49 = [peopleInPhoto countByEnumeratingWithState:&v84 objects:v97 count:16];
            if (v49)
            {
              v50 = v49;
              v51 = *v85;
              do
              {
                for (k = 0; k != v50; ++k)
                {
                  if (*v85 != v51)
                  {
                    objc_enumerationMutation(peopleInPhoto);
                  }

                  if (*(*(&v84 + 1) + 8 * k))
                  {
                    [v6 addObject:?];
                  }
                }

                v50 = [peopleInPhoto countByEnumeratingWithState:&v84 objects:v97 count:16];
              }

              while (v50);
            }
          }

          v44 = [currentCalendar countByEnumeratingWithState:&v88 objects:v98 count:16];
        }

        while (v44);
      }

      break;
    case 564:
    case 565:
    case 566:
    case 567:
    case 568:
    case 569:
    case 570:
    case 571:
    case 572:
    case 573:
    case 648:
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      currentCalendar = [contextCopy attachments];
      v32 = [currentCalendar countByEnumeratingWithState:&v68 objects:v93 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v69;
        do
        {
          for (m = 0; m != v33; ++m)
          {
            if (*v69 != v34)
            {
              objc_enumerationMutation(currentCalendar);
            }

            v36 = *(*(&v68 + 1) + 8 * m);
            contentURL = [v36 contentURL];

            if (contentURL)
            {
              contentURL2 = [v36 contentURL];
              baseURL = [contentURL2 baseURL];
              absoluteString = [baseURL absoluteString];

              contentURL3 = [v36 contentURL];
              absoluteString2 = [contentURL3 absoluteString];

              if (absoluteString)
              {
                [v6 addObject:absoluteString];
              }

              if (absoluteString2)
              {
                [v6 addObject:absoluteString2];
              }
            }
          }

          v33 = [currentCalendar countByEnumeratingWithState:&v68 objects:v93 count:16];
        }

        while (v33);
      }

      break;
    case 574:
    case 575:
    case 576:
    case 577:
    case 578:
    case 579:
    case 580:
    case 581:
    case 582:
    case 583:
    case 649:
      bundleID = [contextCopy bundleID];

      if (!bundleID)
      {
        goto LABEL_81;
      }

      currentCalendar = [contextCopy bundleID];
      [v6 addObject:currentCalendar];
      break;
    case 604:
    case 605:
    case 606:
    case 607:
    case 608:
    case 609:
    case 610:
    case 611:
    case 612:
    case 613:
    case 652:
      suggestionDate5 = [contextCopy suggestionDate];

      if (!suggestionDate5)
      {
        goto LABEL_81;
      }

      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      suggestionDate6 = [contextCopy suggestionDate];
      suggestionDate4 = [currentCalendar components:512 fromDate:suggestionDate6];

      hour = [suggestionDate4 weekday];
LABEL_33:
      v31 = [MEMORY[0x1E696AD98] numberWithInteger:hour];
LABEL_79:
      v60 = v31;
      stringValue = [v31 stringValue];
      [v6 addObject:stringValue];

      break;
    case 614:
    case 615:
    case 616:
    case 617:
    case 618:
    case 619:
    case 620:
    case 621:
    case 622:
    case 623:
    case 653:
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      currentCalendar = [contextCopy attachments];
      v19 = [currentCalendar countByEnumeratingWithState:&v80 objects:v96 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v81;
        do
        {
          for (n = 0; n != v20; ++n)
          {
            if (*v81 != v21)
            {
              objc_enumerationMutation(currentCalendar);
            }

            v23 = *(*(&v80 + 1) + 8 * n);
            v76 = 0u;
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            photoSceneDescriptors = [v23 photoSceneDescriptors];
            v25 = [photoSceneDescriptors countByEnumeratingWithState:&v76 objects:v95 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v77;
              do
              {
                for (ii = 0; ii != v26; ++ii)
                {
                  if (*v77 != v27)
                  {
                    objc_enumerationMutation(photoSceneDescriptors);
                  }

                  if (*(*(&v76 + 1) + 8 * ii))
                  {
                    [v6 addObject:?];
                  }
                }

                v26 = [photoSceneDescriptors countByEnumeratingWithState:&v76 objects:v95 count:16];
              }

              while (v26);
            }
          }

          v20 = [currentCalendar countByEnumeratingWithState:&v80 objects:v96 count:16];
        }

        while (v20);
      }

      break;
    case 634:
    case 635:
    case 636:
    case 637:
    case 638:
    case 639:
    case 640:
    case 641:
    case 642:
    case 643:
    case 655:
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      currentCalendar = [contextCopy attachments];
      v12 = [currentCalendar countByEnumeratingWithState:&v72 objects:v94 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v73;
        do
        {
          for (jj = 0; jj != v13; ++jj)
          {
            if (*v73 != v14)
            {
              objc_enumerationMutation(currentCalendar);
            }

            v16 = *(*(&v72 + 1) + 8 * jj);
            v17 = [v16 UTI];

            if (v17)
            {
              v18 = [v16 UTI];
              [v6 addObject:v18];
            }
          }

          v13 = [currentCalendar countByEnumeratingWithState:&v72 objects:v94 count:16];
        }

        while (v13);
      }

      break;
    default:
      goto LABEL_81;
  }

LABEL_81:
  allObjects = [v6 allObjects];

  return allObjects;
}

+ (id)fetchIntervalStringForFeatureName:(int)name
{
  [self bucketCounttimeIntervalForFeatureName:*&name];

  return BMMLSEDurableFeatureStoreFeatureValueHistogramBucketCounttimeIntervalAsString();
}

+ (int)bucketCounttimeIntervalForFeatureName:(int)name
{
  if ((name - 524) > 0x77)
  {
    return 0;
  }

  else
  {
    return dword_1B5FCAA40[name - 524];
  }
}

+ (int)virtualFeatureToDurableFeatureSourceMapping:(int)mapping
{
  if ((mapping - 524) > 0x83)
  {
    return 0;
  }

  else
  {
    return dword_1B5FCAC20[mapping - 524];
  }
}

+ (id)computeFactorNameForFeature:(id)feature
{
  featureCopy = feature;
  v4 = [featureCopy componentsSeparatedByString:@"SortedDescending"];
  if ([v4 count] == 2)
  {
    v5 = [featureCopy componentsSeparatedByString:@"SortedDescending"];
    v6 = [v5 objectAtIndexedSubscript:1];

    v7 = [v6 componentsSeparatedByString:@"ShareEventList"];
    v8 = [v7 objectAtIndexedSubscript:0];
  }

  else
  {
    v8 = @"Unknown";
  }

  v9 = [(__CFString *)v8 componentsSeparatedByString:@"Photo"];

  if ([v9 count] == 2)
  {
    v10 = [v9 objectAtIndexedSubscript:1];

    v8 = v10;
  }

  return v8;
}

@end