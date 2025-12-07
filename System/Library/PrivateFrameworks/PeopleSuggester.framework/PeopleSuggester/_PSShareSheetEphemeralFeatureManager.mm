@interface _PSShareSheetEphemeralFeatureManager
- (_PSShareSheetEphemeralFeatureManager)initWithContext:(id)context candidates:(id)candidates caches:(id)caches store:(id)store;
- (id)callFeatureFunctionWithFeature:(int)feature histogramFeatureData:(id)data;
- (id)computeFeaturesWithHistogramFeatures:(id)features;
- (id)loadPSConfig;
- (void)setCandidates:(id)candidates;
- (void)setContext:(id)context;
- (void)setFeatureManagerProperties;
@end

@implementation _PSShareSheetEphemeralFeatureManager

- (_PSShareSheetEphemeralFeatureManager)initWithContext:(id)context candidates:(id)candidates caches:(id)caches store:(id)store
{
  contextCopy = context;
  candidatesCopy = candidates;
  cachesCopy = caches;
  storeCopy = store;
  v18.receiver = self;
  v18.super_class = _PSShareSheetEphemeralFeatureManager;
  v15 = [(_PSShareSheetEphemeralFeatureManager *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_context, context);
    objc_storeStrong(&v16->_candidates, candidates);
    objc_storeStrong(&v16->_caches, caches);
    objc_storeStrong(&v16->_store, store);
    v16->_lock._os_unfair_lock_opaque = 0;
    os_unfair_lock_lock(&v16->_lock);
    [(_PSShareSheetEphemeralFeatureManager *)v16 setFeatureManagerProperties];
    os_unfair_lock_unlock(&v16->_lock);
  }

  return v16;
}

- (id)loadPSConfig
{
  v2 = +[_PSConfig defaultConfig];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = v4;

  return v4;
}

- (void)setFeatureManagerProperties
{
  v35 = *MEMORY[0x1E69E9840];
  loadPSConfig = [(_PSShareSheetEphemeralFeatureManager *)self loadPSConfig];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [loadPSConfig objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = objc_opt_new();
    v8 = [v6 objectForKeyedSubscript:@"featureList"];
    v9 = v8;
    v10 = MEMORY[0x1E695E0F0];
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        v16 = 0;
        do
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [MEMORY[0x1E696AD98] numberWithInt:{BMMLSEVirtualFeatureStoreFeaturefeatureNameFromString(), v30}];
          [(NSSet *)v7 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v14);
    }

    features = self->_features;
    self->_features = v7;
    v19 = v7;

    v20 = MEMORY[0x1E696AD98];
    v21 = [v6 objectForKeyedSubscript:@"histogramFeatureSmoothingK"];
    [v21 doubleValue];
    if (v22 == 0.0)
    {
      v22 = 1.0;
    }

    v23 = [v20 numberWithDouble:{v22, v30}];
    histogramSmoothingParameterK = self->_histogramSmoothingParameterK;
    self->_histogramSmoothingParameterK = v23;

    v25 = MEMORY[0x1E696AD98];
    v26 = [v6 objectForKeyedSubscript:@"histogramFeatureSmoothingV"];
    [v26 doubleValue];
    if (v27 == 0.0)
    {
      v27 = 10.0;
    }

    v28 = [v25 numberWithDouble:v27];
    histogramSmoothingParameterV = self->_histogramSmoothingParameterV;
    self->_histogramSmoothingParameterV = v28;
  }
}

- (void)setCandidates:(id)candidates
{
  candidatesCopy = candidates;
  os_unfair_lock_lock(&self->_lock);
  candidates = self->_candidates;
  self->_candidates = candidatesCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  context = self->_context;
  self->_context = contextCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)computeFeaturesWithHistogramFeatures:(id)features
{
  featuresCopy = features;
  v5 = objc_opt_new();
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSSet *)self->_features allObjects];
  v7 = objc_alloc(MEMORY[0x1E695DF20]);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __77___PSShareSheetEphemeralFeatureManager_computeFeaturesWithHistogramFeatures___block_invoke;
  v18[3] = &unk_1E7C27188;
  v18[4] = self;
  v19 = featuresCopy;
  v8 = featuresCopy;
  v9 = [allObjects _pas_mappedArrayWithTransform:v18];
  v10 = [allObjects _pas_mappedArrayWithTransform:&__block_literal_global_48];
  v11 = [v7 initWithObjects:v9 forKeys:v10];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77___PSShareSheetEphemeralFeatureManager_computeFeaturesWithHistogramFeatures___block_invoke_3;
  v16[3] = &unk_1E7C260F0;
  v12 = v5;
  v17 = v12;
  [v11 enumerateKeysAndObjectsUsingBlock:v16];
  os_unfair_lock_unlock(&self->_lock);
  v13 = v17;
  v14 = v12;

  return v12;
}

- (id)callFeatureFunctionWithFeature:(int)feature histogramFeatureData:(id)data
{
  v4 = *&feature;
  dataCopy = data;
  v7 = MEMORY[0x1E695E0F8];
  if (v4 <= 345)
  {
    if (v4 <= 340)
    {
      if (v4 == 328)
      {
        v8 = [_PSDeviceStateFeatures isInMeetingWithCandidates:self->_candidates caches:self->_caches];
      }

      else
      {
        if (v4 == 329)
        {
          candidates = self->_candidates;
          caches = self->_caches;
          store = self->_store;
          v12 = 0;
        }

        else
        {
          if (v4 != 330)
          {
            goto LABEL_43;
          }

          candidates = self->_candidates;
          caches = self->_caches;
          store = self->_store;
          v12 = 1;
        }

        v8 = [_PSDeviceStateFeatures isInCallWithCandidates:candidates facetimeRequest:v12 caches:caches store:store];
      }

      goto LABEL_42;
    }

    if (v4 <= 342)
    {
      if (v4 == 341)
      {
        [_PSContentFeatures utiTypesFromPredictionContext:self->_context candidates:self->_candidates];
      }

      else
      {
        [_PSContentFeatures sourceAppFromPredictionContext:self->_context candidates:self->_candidates];
      }
      v8 = ;
      goto LABEL_42;
    }

    if (v4 == 343)
    {
      context = self->_context;
      v14 = self->_candidates;
      v15 = 0;
    }

    else
    {
      if (v4 != 344)
      {
        goto LABEL_43;
      }

      context = self->_context;
      v14 = self->_candidates;
      v15 = 1;
    }
  }

  else
  {
    switch(v4)
    {
      case 507:
        v16 = self->_candidates;
        v17 = self->_caches;
        v18 = &unk_1F2D8C678;
        goto LABEL_37;
      case 508:
        v16 = self->_candidates;
        v17 = self->_caches;
        v18 = &unk_1F2D8C690;
        goto LABEL_37;
      case 509:
        v16 = self->_candidates;
        v17 = self->_caches;
        v18 = &unk_1F2D8C6A8;
        goto LABEL_37;
      case 510:
        v16 = self->_candidates;
        v17 = self->_caches;
        v18 = &unk_1F2D8C6C0;
        goto LABEL_37;
      case 511:
        v16 = self->_candidates;
        v17 = self->_caches;
        v18 = &unk_1F2D8C780;
        goto LABEL_37;
      case 512:
        v16 = self->_candidates;
        v17 = self->_caches;
        v18 = &unk_1F2D8C6D8;
        goto LABEL_37;
      case 513:
        v16 = self->_candidates;
        v17 = self->_caches;
        v18 = &unk_1F2D8C708;
        goto LABEL_40;
      case 514:
        v16 = self->_candidates;
        v17 = self->_caches;
        v18 = &unk_1F2D8C720;
        goto LABEL_40;
      case 515:
        v16 = self->_candidates;
        v17 = self->_caches;
        v18 = &unk_1F2D8C750;
        goto LABEL_40;
      case 516:
        v16 = self->_candidates;
        v17 = self->_caches;
        v18 = &unk_1F2D8C738;
LABEL_37:
        v19 = 0;
        goto LABEL_41;
      case 517:
        v16 = self->_candidates;
        v17 = self->_caches;
        v18 = &unk_1F2D8C768;
        goto LABEL_40;
      case 518:
        v16 = self->_candidates;
        v17 = self->_caches;
        v18 = &unk_1F2D8C6F0;
LABEL_40:
        v19 = 1;
LABEL_41:
        v8 = [_PSLastCommunicatedFeatures lastCommunicationFromCandidates:v16 direction:v19 mechanisms:v18 caches:v17];
        goto LABEL_42;
      case 519:
      case 520:
      case 521:
      case 522:
      case 523:
      case 584:
      case 585:
      case 586:
      case 587:
      case 588:
      case 589:
      case 590:
      case 591:
      case 592:
      case 593:
      case 594:
      case 595:
      case 596:
      case 597:
      case 598:
      case 599:
      case 600:
      case 601:
      case 602:
      case 603:
      case 624:
      case 625:
      case 626:
      case 627:
      case 628:
      case 629:
      case 630:
      case 631:
      case 632:
      case 633:
        goto LABEL_43;
      case 524:
      case 526:
      case 528:
      case 530:
      case 532:
      case 534:
      case 536:
      case 538:
      case 540:
      case 542:
      case 544:
      case 546:
      case 548:
      case 550:
      case 552:
      case 554:
      case 556:
      case 558:
      case 560:
      case 562:
      case 564:
      case 566:
      case 568:
      case 570:
      case 572:
      case 574:
      case 576:
      case 578:
      case 580:
      case 582:
      case 604:
      case 606:
      case 608:
      case 610:
      case 612:
      case 614:
      case 616:
      case 618:
      case 620:
      case 622:
      case 634:
      case 636:
      case 638:
      case 640:
      case 642:
        v8 = [_PSHistogramFeatures conditionedProbabilityAcrossAllBucketsWithCandidates:self->_candidates featureName:v4 predictionContext:self->_context histogramFeatureData:dataCopy histogramSmoothingParameterK:self->_histogramSmoothingParameterK histogramSmoothingParameterV:self->_histogramSmoothingParameterV];
        goto LABEL_42;
      case 525:
      case 527:
      case 529:
      case 531:
      case 533:
      case 535:
      case 537:
      case 539:
      case 541:
      case 543:
      case 545:
      case 547:
      case 549:
      case 551:
      case 553:
      case 555:
      case 557:
      case 559:
      case 561:
      case 563:
      case 565:
      case 567:
      case 569:
      case 571:
      case 573:
      case 575:
      case 577:
      case 579:
      case 581:
      case 583:
      case 605:
      case 607:
      case 609:
      case 611:
      case 613:
      case 615:
      case 617:
      case 619:
      case 621:
      case 623:
      case 635:
      case 637:
      case 639:
      case 641:
      case 643:
        v8 = [_PSHistogramFeatures conditionedProbabilityAcrossAllCandidatesWithCandidates:self->_candidates featureName:v4 predictionContext:self->_context histogramFeatureData:dataCopy histogramSmoothingParameterK:self->_histogramSmoothingParameterK histogramSmoothingParameterV:self->_histogramSmoothingParameterV];
        goto LABEL_42;
      case 644:
      case 645:
      case 646:
      case 647:
      case 648:
      case 649:
      case 650:
      case 651:
      case 652:
      case 653:
      case 654:
      case 655:
        v8 = [_PSHistogramFeatures hasEverInBucketWithCandidates:self->_candidates featureName:v4 predictionContext:self->_context histogramFeatureData:dataCopy];
        goto LABEL_42;
      default:
        if (v4 == 346)
        {
          v8 = [_PSContentFeatures urlTopLevelDomainFromPredictionContext:self->_context candidates:self->_candidates];
          goto LABEL_42;
        }

        if (v4 != 349)
        {
          goto LABEL_43;
        }

        context = self->_context;
        v14 = self->_candidates;
        v15 = 3;
        break;
    }
  }

  v8 = [_PSContentFeatures numberOfContentFromPredictionContext:context contentType:v15 candidates:v14];
LABEL_42:
  v7 = v8;
LABEL_43:

  return v7;
}

@end