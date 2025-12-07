@interface FCUserVector
- (FCUserVector)init;
- (FCUserVector)initWithWhitelistURL:(id)l modelURL:(id)rL personalizationTreatment:(id)treatment bundleChannelIDs:(id)ds bundleChannelIDsVersion:(id)version subscriptionController:(id)controller sportsTagIDs:(id)iDs;
- (id)bundleSubscribedVector;
- (id)computePersonalizationVectorWithAggregateStore:(id)store personalizationTreatment:(id)treatment tagRanker:(id)ranker options:(int64_t)options;
- (id)computePersonalizationVectorWithAggregateVectorProvider:(id)provider personalizationTreatment:(id)treatment tagRanker:(id)ranker options:(int64_t)options;
- (id)findVector:(id)vector closestToBins:(id)bins;
- (id)subscribedBundleChannelIDs;
- (id)subscribedSportsTagsWithPersonalizationTreatment:(id)treatment tagRanker:(id)ranker;
@end

@implementation FCUserVector

- (FCUserVector)initWithWhitelistURL:(id)l modelURL:(id)rL personalizationTreatment:(id)treatment bundleChannelIDs:(id)ds bundleChannelIDsVersion:(id)version subscriptionController:(id)controller sportsTagIDs:(id)iDs
{
  lCopy = l;
  rLCopy = rL;
  treatmentCopy = treatment;
  dsCopy = ds;
  versionCopy = version;
  controllerCopy = controller;
  iDsCopy = iDs;
  v26.receiver = self;
  v26.super_class = FCUserVector;
  v18 = [(FCUserVector *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_whitelistURL, l);
    objc_storeStrong(&v19->_modelURL, rL);
    objc_storeStrong(&v19->_personalizationTreatment, treatment);
    objc_storeStrong(&v19->_bundleChannelIDs, ds);
    objc_storeStrong(&v19->_bundleChannelIDsVersion, version);
    objc_storeStrong(&v19->_subscriptionController, controller);
    objc_storeStrong(&v19->_sportsTagIDs, iDs);
  }

  return v19;
}

- (FCUserVector)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCUserVector init]";
    v10 = 2080;
    v11 = "FCUserVector.m";
    v12 = 1024;
    v13 = 66;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCUserVector init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)computePersonalizationVectorWithAggregateVectorProvider:(id)provider personalizationTreatment:(id)treatment tagRanker:(id)ranker options:(int64_t)options
{
  optionsCopy = options;
  v107 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  treatmentCopy = treatment;
  rankerCopy = ranker;
  v13 = objc_alloc_init(MEMORY[0x1E69B7060]);
  if ((optionsCopy & 1) == 0)
  {
    goto LABEL_33;
  }

  v87 = rankerCopy;
  v14 = objc_alloc_init(MEMORY[0x1E695FEB0]);
  [v14 setComputeUnits:0];
  v15 = MEMORY[0x1E695FE90];
  modelURL = [(FCUserVector *)self modelURL];
  v103 = 0;
  v17 = [v15 compileModelAtURL:modelURL error:&v103];
  v18 = v103;

  v19 = [FCUserVectorModel alloc];
  if (v17)
  {
    v102 = v18;
    v20 = &v102;
    v21 = [(FCUserVectorModel *)v19 initWithContentsOfURL:v17 configuration:v14 error:&v102];
  }

  else
  {
    v101 = v18;
    v20 = &v101;
    v21 = [(FCUserVectorModel *)v19 initWithConfiguration:v14 error:&v101];
  }

  v22 = v21;
  v88 = v17;
  v23 = *v20;

  v86 = v14;
  if (v22)
  {
    v82 = v22;
    v83 = providerCopy;
    v85 = v22;
    model = [v85 model];
    modelDescription = [model modelDescription];
    metadata = [modelDescription metadata];
    v27 = [metadata fc_safeObjectForKey:*MEMORY[0x1E695FDB0]];
    v84 = [v27 fc_safeObjectForKey:@"version"];

    v28 = MEMORY[0x1E695DEF0];
    whitelistURL = [(FCUserVector *)self whitelistURL];
    v30 = [v28 dataWithContentsOfURL:whitelistURL];

    v81 = v30;
    if (v30)
    {
      v80 = optionsCopy;
      v97 = v23;
      v31 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v30 options:4 error:&v97];
      v32 = v97;

      providerCopy = v83;
      if (v31)
      {
        v78 = v32;
        v33 = v31;
        v34 = [v33 fc_safeObjectForKey:@"tagIds"];
        [v33 fc_safeObjectForKey:@"bins"];
        v77 = v76 = v33;
        v35 = [v33 fc_safeObjectForKey:@"version"];
        v36 = v35;
        v74 = v35;
        v75 = v34;
        if (v88 && ![v35 isEqualToString:v84])
        {
          v55 = 0;
          v62 = 0;
          rankerCopy = v87;
          v22 = v82;
        }

        else
        {
          v72 = v31;
          v73 = treatmentCopy;
          v37 = [v83 aggregateVectorForTags:v34];
          v38 = FCPersonalizationLog;
          if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            *&buf[4] = v36;
            v105 = 2112;
            v106 = v37;
            _os_log_debug_impl(&dword_1B63EF000, v38, OS_LOG_TYPE_DEBUG, "Created user aggregate input with whitelist version %@ and vector %@.", buf, 0x16u);
          }

          model2 = [v85 model];
          modelDescription2 = [model2 modelDescription];
          inputDescriptionsByName = [modelDescription2 inputDescriptionsByName];
          v42 = [inputDescriptionsByName objectForKeyedSubscript:@"aggregates"];
          multiArrayConstraint = [v42 multiArrayConstraint];
          shape = [multiArrayConstraint shape];

          v45 = [v37 count];
          firstObject = [shape firstObject];
          LODWORD(modelDescription2) = [firstObject intValue];

          if (v45 == modelDescription2)
          {
            v71 = shape;
            v47 = [objc_alloc(MEMORY[0x1E695FED0]) initWithShape:shape dataType:65600 error:0];
            v22 = v82;
            if ([v37 count])
            {
              v48 = 0;
              do
              {
                v49 = [v37 objectAtIndexedSubscript:v48];
                [v47 setObject:v49 atIndexedSubscript:v48];

                ++v48;
              }

              while ([v37 count] > v48);
            }

            v50 = [[FCUserVectorModelInput alloc] initWithAggregates:v47];
            v91 = v78;
            v51 = [v85 predictionFromFeatures:v50 error:&v91];
            v52 = v91;

            v79 = v51;
            v53 = [v51 featureValueForName:@"user_vector"];
            multiArrayValue = [v53 multiArrayValue];

            v55 = multiArrayValue != 0;
            v70 = multiArrayValue;
            if (multiArrayValue)
            {
              v69 = v50;
              v56 = [(FCUserVector *)self findVector:multiArrayValue closestToBins:v77];
              data = [MEMORY[0x1E695DF88] data];
              if ([v56 count])
              {
                v58 = 0;
                do
                {
                  v59 = [v56 objectAtIndex:v58];
                  [v59 doubleValue];
                  v61 = v60;

                  *buf = v61;
                  [data appendBytes:buf length:8];
                  ++v58;
                }

                while ([v56 count] > v58);
              }

              [v13 setPersonalizationVector:data];
              [v13 setVersion:v84];

              v22 = v82;
              v50 = v69;
            }

            else
            {
              v89[0] = MEMORY[0x1E69E9820];
              v89[1] = 3221225472;
              v89[2] = __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_37;
              v89[3] = &unk_1E7C3FD98;
              v90 = v52;
              __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_37(v89);
              objc_claimAutoreleasedReturnValue();
              v56 = v90;
            }

            v62 = 0;
            v78 = v52;
            treatmentCopy = v73;
            rankerCopy = v87;
            shape = v71;
          }

          else
          {
            v92[0] = MEMORY[0x1E69E9820];
            v92[1] = 3221225472;
            v92[2] = __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_34;
            v92[3] = &unk_1E7C3FDC0;
            v93 = shape;
            v94 = v37;
            v62 = __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_34(v92);

            v55 = 0;
            v47 = v93;
            treatmentCopy = v73;
            rankerCopy = v87;
            v22 = v82;
          }

          providerCopy = v83;
          v31 = v72;
        }

        v64 = v76;
        v23 = v78;
      }

      else
      {
        v95[0] = MEMORY[0x1E69E9820];
        v95[1] = 3221225472;
        v95[2] = __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_32;
        v95[3] = &unk_1E7C3FD98;
        v23 = v32;
        v96 = v23;
        v62 = __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_32(v95);
        v55 = 0;
        v64 = v96;
        rankerCopy = v87;
        v22 = v82;
      }

      optionsCopy = v80;
    }

    else
    {
      v98[0] = MEMORY[0x1E69E9820];
      v98[1] = 3221225472;
      v98[2] = __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_30;
      v98[3] = &unk_1E7C3FD98;
      v98[4] = self;
      v62 = __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_30(v98);
      v55 = 0;
      v22 = v82;
      providerCopy = v83;
      rankerCopy = v87;
    }

    v63 = v85;
  }

  else
  {
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke;
    v99[3] = &unk_1E7C3FD98;
    v23 = v23;
    v100 = v23;
    v62 = __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke(v99);
    v55 = 0;
    v63 = v100;
    rankerCopy = v87;
  }

  if (v55)
  {
LABEL_33:
    if ((optionsCopy & 2) != 0)
    {
      bundleSubscribedVector = [(FCUserVector *)self bundleSubscribedVector];
      [v13 setBundleSubscribedVector:bundleSubscribedVector];

      bundleChannelIDsVersion = [(FCUserVector *)self bundleChannelIDsVersion];
      [v13 setBundleSubscribedVectorVersion:bundleChannelIDsVersion];
    }

    v67 = [(FCUserVector *)self subscribedSportsTagsWithPersonalizationTreatment:treatmentCopy tagRanker:rankerCopy];
    [v13 setSportsFavoritesVector:v67];

    v62 = v13;
  }

  return v62;
}

uint64_t __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 138543362;
    v6 = v4;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Error in creating user vector model: %{public}@", &v5, 0xCu);
  }

  return 0;
}

uint64_t __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_30(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 whitelistURL];
    v7 = 138412290;
    v8 = v6;
    _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "Failed to get data from fileURL: %@", &v7, 0xCu);
  }

  return 0;
}

uint64_t __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_32(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Failed to serialize whitelist data: %@", &v5, 0xCu);
  }

  return 0;
}

uint64_t __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_34(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 firstObject];
    v6 = [v5 intValue];
    v7 = [*(a1 + 40) count];
    v9 = 134218240;
    v10 = v6;
    v11 = 2048;
    v12 = v7;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "Model metadata shape %lu does not match tag list count %lu, not submitting vector.", &v9, 0x16u);
  }

  return 0;
}

uint64_t __115__FCUserVector_computePersonalizationVectorWithAggregateVectorProvider_personalizationTreatment_tagRanker_options___block_invoke_37(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Error when performing prediction using user vector model: %@", &v5, 0xCu);
  }

  return 0;
}

- (id)computePersonalizationVectorWithAggregateStore:(id)store personalizationTreatment:(id)treatment tagRanker:(id)ranker options:(int64_t)options
{
  optionsCopy = options;
  v138 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  treatmentCopy = treatment;
  rankerCopy = ranker;
  v13 = objc_alloc_init(MEMORY[0x1E69B7060]);
  if ((optionsCopy & 1) == 0)
  {
    LODWORD(multiArrayValue) = 0;
LABEL_41:
    if ((optionsCopy & 2) != 0)
    {
      bundleSubscribedVector = [(FCUserVector *)self bundleSubscribedVector];
      [v13 setBundleSubscribedVector:bundleSubscribedVector];
      [(FCUserVector *)self bundleChannelIDsVersion];
      v82 = v81 = rankerCopy;
      [v13 setBundleSubscribedVectorVersion:v82];

      rankerCopy = v81;
      v79 = bundleSubscribedVector != 0;
    }

    else
    {
      v79 = 0;
    }

    v83 = [(FCUserVector *)self subscribedSportsTagsWithPersonalizationTreatment:treatmentCopy tagRanker:rankerCopy];
    [v13 setSportsFavoritesVector:v83];
    if (((multiArrayValue | v79) & 1) != 0 || v83)
    {
      v76 = v13;
    }

    else
    {
      v84 = FCPersonalizationLog;
      if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B63EF000, v84, OS_LOG_TYPE_DEFAULT, "Returning no user vector, since it would be empty", buf, 2u);
      }

      v76 = 0;
    }

    goto LABEL_51;
  }

  v107 = optionsCopy;
  v15 = objc_alloc_init(MEMORY[0x1E695FEB0]);
  [v15 setComputeUnits:0];
  v16 = MEMORY[0x1E695FE90];
  modelURL = [(FCUserVector *)self modelURL];
  v133 = 0;
  v18 = [v16 compileModelAtURL:modelURL error:&v133];
  v19 = v133;

  v20 = [FCUserVectorModel alloc];
  if (v18)
  {
    v132 = v19;
    v21 = &v132;
    v22 = [(FCUserVectorModel *)v20 initWithContentsOfURL:v18 configuration:v15 error:&v132];
  }

  else
  {
    v131 = v19;
    v21 = &v131;
    v22 = [(FCUserVectorModel *)v20 initWithConfiguration:v15 error:&v131];
  }

  multiArrayValue = v22;
  v108 = v18;
  v23 = *v21;

  v105 = multiArrayValue;
  v106 = v15;
  if (multiArrayValue)
  {
    v104 = treatmentCopy;
    v103 = multiArrayValue;
    model = [v103 model];
    modelDescription = [model modelDescription];
    metadata = [modelDescription metadata];
    v27 = [metadata fc_safeObjectForKey:*MEMORY[0x1E695FDB0]];
    v102 = [v27 fc_safeObjectForKey:@"version"];

    v28 = MEMORY[0x1E695DEF0];
    whitelistURL = [(FCUserVector *)self whitelistURL];
    multiArrayValue = [v28 dataWithContentsOfURL:whitelistURL];

    v101 = multiArrayValue;
    if (multiArrayValue)
    {
      v100 = storeCopy;
      v127 = v23;
      v30 = [MEMORY[0x1E696ACB0] JSONObjectWithData:multiArrayValue options:4 error:&v127];
      v31 = v127;

      treatmentCopy = v104;
      if (v30)
      {
        v98 = v31;
        v32 = v30;
        v33 = [v32 fc_safeObjectForKey:@"tagIds"];
        v97 = [v32 fc_safeObjectForKey:@"bins"];
        v95 = v32;
        v34 = [v32 fc_safeObjectForKey:@"version"];
        v94 = v33;
        v96 = v34;
        if (v108 && ![v34 isEqualToString:v102])
        {
          v69 = 0;
          LODWORD(multiArrayValue) = 0;
          v76 = 0;
          optionsCopy = v107;
        }

        else
        {
          v92 = v30;
          v93 = rankerCopy;
          v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v121 = 0u;
          v122 = 0u;
          v123 = 0u;
          v124 = 0u;
          v36 = v33;
          v37 = [v36 countByEnumeratingWithState:&v121 objects:v137 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v122;
            do
            {
              for (i = 0; i != v38; ++i)
              {
                if (*v122 != v39)
                {
                  objc_enumerationMutation(v36);
                }

                v41 = *(*(&v121 + 1) + 8 * i);
                v42 = [[FCTagIDFeature alloc] initWithTagID:v41];
                [v35 setObject:v42 forKeyedSubscript:v41];
              }

              v38 = [v36 countByEnumeratingWithState:&v121 objects:v137 count:16];
            }

            while (v38);
          }

          v43 = [v100 baselineAggregateWithConfigurableValues:v104];
          allValues = [v35 allValues];
          v45 = [v100 aggregatesForFeatures:allValues];

          personalizationTreatment = [(FCUserVector *)self personalizationTreatment];
          defaultScoringConfig = [personalizationTreatment defaultScoringConfig];
          [defaultScoringConfig decayFactor];
          v49 = v48;

          [v43 personalizationValueWithBaseline:0 decayRate:v49];
          v51 = v50;
          v115[0] = MEMORY[0x1E69E9820];
          v115[1] = 3221225472;
          v115[2] = __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_2;
          v115[3] = &unk_1E7C3FDE8;
          v90 = v45;
          v116 = v90;
          v52 = v35;
          v117 = v52;
          v89 = v43;
          v118 = v89;
          v119 = v49;
          v120 = v51;
          v53 = [v36 fc_arrayByTransformingWithBlock:v115];
          v54 = FCPersonalizationLog;
          if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            *&buf[4] = v96;
            v135 = 2112;
            v136 = v53;
            _os_log_debug_impl(&dword_1B63EF000, v54, OS_LOG_TYPE_DEBUG, "Created user aggregate input with whitelist version %@ and vector %@.", buf, 0x16u);
          }

          model2 = [v103 model];
          modelDescription2 = [model2 modelDescription];
          inputDescriptionsByName = [modelDescription2 inputDescriptionsByName];
          v58 = [inputDescriptionsByName objectForKeyedSubscript:@"aggregates"];
          multiArrayConstraint = [v58 multiArrayConstraint];
          shape = [multiArrayConstraint shape];

          v61 = [v53 count];
          firstObject = [shape firstObject];
          LODWORD(inputDescriptionsByName) = [firstObject intValue];

          v91 = v52;
          if (v61 == inputDescriptionsByName)
          {
            v88 = shape;
            v63 = [objc_alloc(MEMORY[0x1E695FED0]) initWithShape:shape dataType:65600 error:0];
            optionsCopy = v107;
            if ([v53 count])
            {
              v64 = 0;
              do
              {
                v65 = [v53 objectAtIndexedSubscript:v64];
                [v63 setObject:v65 atIndexedSubscript:v64];

                ++v64;
              }

              while ([v53 count] > v64);
            }

            v111 = v98;
            v87 = [[FCUserVectorModelInput alloc] initWithAggregates:v63];
            v66 = [v103 predictionFromFeatures:? error:?];
            v67 = v98;

            v99 = v66;
            v68 = [v66 featureValueForName:@"user_vector"];
            multiArrayValue = [v68 multiArrayValue];

            v69 = multiArrayValue != 0;
            v86 = multiArrayValue;
            if (multiArrayValue)
            {
              v70 = [(FCUserVector *)self findVector:multiArrayValue closestToBins:v97];
              data = [MEMORY[0x1E695DF88] data];
              if ([v70 count])
              {
                v72 = 0;
                do
                {
                  v73 = [v70 objectAtIndex:v72];
                  [v73 doubleValue];
                  v75 = v74;

                  *buf = v75;
                  [data appendBytes:buf length:8];
                  ++v72;
                }

                while ([v70 count] > v72);
              }

              [v13 setPersonalizationVector:data];
              [v13 setVersion:v102];
              LODWORD(multiArrayValue) = data != 0;

              optionsCopy = v107;
            }

            else
            {
              v109[0] = MEMORY[0x1E69E9820];
              v109[1] = 3221225472;
              v109[2] = __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_49;
              v109[3] = &unk_1E7C3FD98;
              v110 = v67;
              __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_49(v109);
              objc_claimAutoreleasedReturnValue();
              v70 = v110;
            }

            v76 = 0;
            v98 = v67;
            rankerCopy = v93;
            shape = v88;
          }

          else
          {
            v112[0] = MEMORY[0x1E69E9820];
            v112[1] = 3221225472;
            v112[2] = __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_48;
            v112[3] = &unk_1E7C3FDC0;
            v113 = shape;
            v114 = v53;
            v76 = __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_48(v112);

            v69 = 0;
            LODWORD(multiArrayValue) = 0;
            v63 = v113;
            rankerCopy = v93;
            optionsCopy = v107;
          }

          treatmentCopy = v104;
          v30 = v92;
        }

        v78 = v95;
        v23 = v98;
      }

      else
      {
        v125[0] = MEMORY[0x1E69E9820];
        v125[1] = 3221225472;
        v125[2] = __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_40;
        v125[3] = &unk_1E7C3FD98;
        v23 = v31;
        v126 = v23;
        v76 = __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_40(v125);
        v69 = 0;
        LODWORD(multiArrayValue) = 0;
        v78 = v126;
        optionsCopy = v107;
      }

      storeCopy = v100;
    }

    else
    {
      v128[0] = MEMORY[0x1E69E9820];
      v128[1] = 3221225472;
      v128[2] = __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_39;
      v128[3] = &unk_1E7C3FD98;
      v128[4] = self;
      v76 = __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_39(v128);
      v69 = 0;
      treatmentCopy = v104;
      optionsCopy = v107;
    }

    v77 = v103;
  }

  else
  {
    v129[0] = MEMORY[0x1E69E9820];
    v129[1] = 3221225472;
    v129[2] = __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke;
    v129[3] = &unk_1E7C3FD98;
    v23 = v23;
    v130 = v23;
    v76 = __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke(v129);
    v69 = 0;
    v77 = v130;
    optionsCopy = v107;
  }

  if (v69)
  {
    goto LABEL_41;
  }

LABEL_51:

  return v76;
}

uint64_t __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 138543362;
    v6 = v4;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Error in creating user vector model: %{public}@", &v5, 0xCu);
  }

  return 0;
}

uint64_t __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_39(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 whitelistURL];
    v7 = 138412290;
    v8 = v6;
    _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "Failed to get data from fileURL: %@", &v7, 0xCu);
  }

  return 0;
}

uint64_t __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_40(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Failed to serialize whitelist data: %@", &v5, 0xCu);
  }

  return 0;
}

id __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) objectForKeyedSubscript:a2];
  v5 = [v3 fc_safeObjectForKey:v4];

  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    [v5 personalizationValueWithBaseline:*(a1 + 48) decayRate:*(a1 + 56)];
    v8 = [v6 numberWithDouble:v7 - *(a1 + 64)];
  }

  else
  {
    v8 = &unk_1F2E71B88;
  }

  return v8;
}

uint64_t __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_48(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 firstObject];
    v6 = [v5 intValue];
    v7 = [*(a1 + 40) count];
    v9 = 134218240;
    v10 = v6;
    v11 = 2048;
    v12 = v7;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "Model metadata shape %lu does not match tag list count %lu, not submitting vector.", &v9, 0x16u);
  }

  return 0;
}

uint64_t __106__FCUserVector_computePersonalizationVectorWithAggregateStore_personalizationTreatment_tagRanker_options___block_invoke_49(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Error when performing prediction using user vector model: %@", &v5, 0xCu);
  }

  return 0;
}

- (id)subscribedBundleChannelIDs
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  bundleChannelIDs = [(FCUserVector *)self bundleChannelIDs];
  v5 = [bundleChannelIDs countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(bundleChannelIDs);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        subscriptionController = [(FCUserVector *)self subscriptionController];
        v11 = [subscriptionController subscriptionForTagID:v9];

        if (v11)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [bundleChannelIDs countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];

  return v12;
}

- (id)bundleSubscribedVector
{
  v3 = *MEMORY[0x1E695E480];
  bundleChannelIDs = [(FCUserVector *)self bundleChannelIDs];
  Mutable = CFBitVectorCreateMutable(v3, [bundleChannelIDs count]);

  bundleChannelIDs2 = [(FCUserVector *)self bundleChannelIDs];
  CFBitVectorSetCount(Mutable, [bundleChannelIDs2 count]);

  subscribedBundleChannelIDs = [(FCUserVector *)self subscribedBundleChannelIDs];
  bundleChannelIDs3 = [(FCUserVector *)self bundleChannelIDs];
  v9 = [bundleChannelIDs3 count];

  if (v9)
  {
    v10 = 0;
    do
    {
      bundleChannelIDs4 = [(FCUserVector *)self bundleChannelIDs];
      v12 = [bundleChannelIDs4 objectAtIndex:v10];

      if (v12)
      {
        v13 = [subscribedBundleChannelIDs containsObject:v12];
      }

      else
      {
        v13 = 0;
      }

      CFBitVectorSetBitAtIndex(Mutable, v10, v13);

      ++v10;
      bundleChannelIDs5 = [(FCUserVector *)self bundleChannelIDs];
      v15 = [bundleChannelIDs5 count];
    }

    while (v15 > v10);
  }

  Count = CFBitVectorGetCount(Mutable);
  v17 = Count + 7;
  if (Count < -7)
  {
    v17 = Count + 14;
  }

  v18 = [MEMORY[0x1E695DF88] dataWithLength:v17 >> 3];
  v19 = CFBitVectorGetCount(Mutable);
  mutableBytes = [v18 mutableBytes];
  v23.location = 0;
  v23.length = v19;
  CFBitVectorGetBits(Mutable, v23, mutableBytes);

  return v18;
}

- (id)subscribedSportsTagsWithPersonalizationTreatment:(id)treatment tagRanker:(id)ranker
{
  treatmentCopy = treatment;
  rankerCopy = ranker;
  sportsTagIDs = [(FCUserVector *)self sportsTagIDs];
  v9 = [sportsTagIDs count];

  if (v9)
  {
    sportsTagIDs2 = [(FCUserVector *)self sportsTagIDs];
    array = [sportsTagIDs2 array];

    if ([treatmentCopy personalizesSportsTagsInUserVector])
    {
      v12 = [rankerCopy rankTagIDsDescending:array];

      array = v12;
    }

    v13 = [array fc_subarrayWithMaxCount:50];
    v14 = [v13 componentsJoinedByString:{@", "}];
    v15 = [v14 dataUsingEncoding:4];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)findVector:(id)vector closestToBins:(id)bins
{
  v23 = *MEMORY[0x1E69E9840];
  vectorCopy = vector;
  binsCopy = bins;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([vectorCopy count] >= 1)
  {
    v8 = 0;
    do
    {
      v9 = MEMORY[0x1E696AD98];
      v10 = [vectorCopy objectAtIndexedSubscript:v8];
      [v10 doubleValue];
      v11 = [v9 numberWithDouble:?];
      [v7 addObject:v11];

      ++v8;
    }

    while ([vectorCopy count] > v8);
  }

  v12 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v22 = v7;
    _os_log_debug_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEBUG, "Computed user vector with vector %@.", buf, 0xCu);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __41__FCUserVector_findVector_closestToBins___block_invoke;
  v19[3] = &unk_1E7C3B2C0;
  v13 = v7;
  v20 = v13;
  v14 = [binsCopy fc_arrayByTransformingWithBlock:v19];
  v15 = [v14 valueForKeyPath:@"@max.self"];
  v16 = [binsCopy objectAtIndexedSubscript:{objc_msgSend(v14, "indexOfObject:", v15)}];

  v17 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v22 = v16;
    _os_log_debug_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEBUG, "Selected bin with vector %@.", buf, 0xCu);
  }

  return v16;
}

uint64_t __41__FCUserVector_findVector_closestToBins___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  [a2 fc_cosineDistanceToArray:*(a1 + 32)];

  return [v2 numberWithDouble:?];
}

@end