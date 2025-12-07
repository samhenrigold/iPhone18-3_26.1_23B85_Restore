@interface GDEntityTaggingService
- (GDEntityTaggingService)initWithConfig:(id)config error:(id *)error;
- (id)entitiesForTag:(int64_t)tag options:(id)options error:(id *)error;
- (id)entitiesForTags:(id)tags options:(id)options error:(id *)error;
- (id)entityTagsForIdentifier:(id)identifier options:(id)options error:(id *)error;
- (id)entityTagsForIdentifiers:(id)identifiers options:(id)options error:(id *)error;
- (void)recordDirectFeedbackWithGradedTrue:(id)true gradedFalse:(id)false ignored:(id)ignored neverPresented:(id)presented error:(id *)error;
- (void)recordStatefulFeedback:(id)feedback error:(id *)error;
@end

@implementation GDEntityTaggingService

- (void)recordStatefulFeedback:(id)feedback error:(id *)error
{
  feedbackCopy = feedback;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1ABAB0F34;
  v13 = sub_1ABAB27A0;
  v14 = 0;
  inner = self->inner;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1ABEE1F1C;
  v8[3] = &unk_1E79628C8;
  v8[4] = &v9;
  [(GDEntityTaggingServiceInner *)inner recordStatefulFeedbackWithFeedback:feedbackCopy error:v8];
  if (error)
  {
    *error = v10[5];
  }

  _Block_object_dispose(&v9, 8);
}

- (void)recordDirectFeedbackWithGradedTrue:(id)true gradedFalse:(id)false ignored:(id)ignored neverPresented:(id)presented error:(id *)error
{
  trueCopy = true;
  falseCopy = false;
  ignoredCopy = ignored;
  presentedCopy = presented;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1ABAB0F34;
  v22 = sub_1ABAB27A0;
  v23 = 0;
  inner = self->inner;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1ABEE2084;
  v17[3] = &unk_1E79628C8;
  v17[4] = &v18;
  [(GDEntityTaggingServiceInner *)inner recordDirectFeedbackWithGradedTrue:trueCopy gradedFalse:falseCopy ignored:ignoredCopy neverPresented:presentedCopy error:v17];
  if (error)
  {
    *error = v19[5];
  }

  _Block_object_dispose(&v18, 8);
}

- (id)entitiesForTags:(id)tags options:(id)options error:(id *)error
{
  v74[1] = *MEMORY[0x1E69E9840];
  tagsCopy = tags;
  optionsCopy = options;
  v9 = optionsCopy;
  if (self->inner)
  {
    v10 = [GDPersonEntityTaggingOptionsInner alloc];
    v36 = v9;
    tagThresholds = [v9 tagThresholds];
    v12 = [(GDPersonEntityTaggingOptionsInner *)v10 initWithTagNameThresholds:tagThresholds];

    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = sub_1ABAB0F34;
    v67 = sub_1ABAB27A0;
    v68 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x3032000000;
    v60 = sub_1ABAB0F34;
    v61 = sub_1ABAB27A0;
    v62 = 0;
    v13 = dispatch_semaphore_create(0);
    inner = self->inner;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = sub_1ABEE2664;
    v53[3] = &unk_1E7961EF8;
    v55 = &v63;
    v56 = &v57;
    v15 = v13;
    v54 = v15;
    v37 = v12;
    [(GDEntityTaggingServiceInner *)inner personEntitiesFor:tagsCopy options:v12 completionHandler:v53];
    v16 = v15;
    v17 = dispatch_time(0, 5000000000);
    v18 = dispatch_semaphore_wait(v16, v17);
    v35 = v16;

    if (v18)
    {
      if (error)
      {
        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v71 = *MEMORY[0x1E696A578];
        v72 = @"Timed out waiting for EntityTaggingService to return.";
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:{1, v16}];
        *error = [v19 initWithDomain:@"GDErrorDomain" code:14 userInfo:v20];
      }
    }

    else
    {
      if (v64[5])
      {
        v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        obj = v64[5];
        v41 = [obj countByEnumeratingWithState:&v49 objects:v70 count:{16, v16}];
        if (v41)
        {
          v40 = *v50;
          do
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v50 != v40)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v49 + 1) + 8 * i);
              v24 = [v64[5] objectForKey:v23];
              v43 = v23;
              v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              scoredEntities = [v24 scoredEntities];
              v27 = [scoredEntities countByEnumeratingWithState:&v45 objects:v69 count:16];
              if (v27)
              {
                v28 = *v46;
                do
                {
                  for (j = 0; j != v27; ++j)
                  {
                    if (*v46 != v28)
                    {
                      objc_enumerationMutation(scoredEntities);
                    }

                    v30 = *(*(&v45 + 1) + 8 * j);
                    v31 = [GDScoredPersonEntity alloc];
                    idValue = [v30 idValue];
                    [v30 score];
                    v33 = [(GDScoredPersonEntity *)v31 initWithIDValue:idValue score:?];
                    [v25 addObject:v33];
                  }

                  v27 = [scoredEntities countByEnumeratingWithState:&v45 objects:v69 count:16];
                }

                while (v27);
              }

              v34 = -[GDRankedEntityTagPersons initWithTag:scoredEntities:entityRelevanceInferenceEventId:]([GDRankedEntityTagPersons alloc], "initWithTag:scoredEntities:entityRelevanceInferenceEventId:", [v24 gdTag], v25, objc_msgSend(v24, "inferenceEventIdValue"));
              [v42 setObject:v34 forKeyedSubscript:v43];
            }

            v41 = [obj countByEnumeratingWithState:&v49 objects:v70 count:16];
          }

          while (v41);
        }

        goto LABEL_6;
      }

      if (error)
      {
        v42 = 0;
        *error = v58[5];
        goto LABEL_6;
      }
    }

    v42 = 0;
LABEL_6:

    _Block_object_dispose(&v57, 8);
    _Block_object_dispose(&v63, 8);

LABEL_9:
    v9 = v36;
    goto LABEL_10;
  }

  if (error)
  {
    v36 = optionsCopy;
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v73 = *MEMORY[0x1E696A578];
    v74[0] = @"Error when initializing EntityTaggingService.";
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:&v73 count:1];
    v42 = 0;
    *error = [v21 initWithDomain:@"GDErrorDomain" code:1 userInfo:v37];
    goto LABEL_9;
  }

  v42 = 0;
LABEL_10:

  return v42;
}

- (id)entityTagsForIdentifiers:(id)identifiers options:(id)options error:(id *)error
{
  v74[1] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  optionsCopy = options;
  v9 = optionsCopy;
  if (self->inner)
  {
    v10 = [GDPersonEntityTaggingOptionsInner alloc];
    v36 = v9;
    tagThresholds = [v9 tagThresholds];
    v12 = [(GDPersonEntityTaggingOptionsInner *)v10 initWithTagNameThresholds:tagThresholds];

    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = sub_1ABAB0F34;
    v67 = sub_1ABAB27A0;
    v68 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x3032000000;
    v60 = sub_1ABAB0F34;
    v61 = sub_1ABAB27A0;
    v62 = 0;
    v13 = dispatch_semaphore_create(0);
    inner = self->inner;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = sub_1ABEE2CD0;
    v53[3] = &unk_1E7961EF8;
    v55 = &v63;
    v56 = &v57;
    v15 = v13;
    v54 = v15;
    v37 = v12;
    [(GDEntityTaggingServiceInner *)inner peopleEntityTagsFor:identifiersCopy options:v12 completionHandler:v53];
    v16 = v15;
    v17 = dispatch_time(0, 5000000000);
    v18 = dispatch_semaphore_wait(v16, v17);
    v35 = v16;

    if (v18)
    {
      if (error)
      {
        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v71 = *MEMORY[0x1E696A578];
        v72 = @"Timed out waiting for EntityTaggingService to return.";
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:{1, v16}];
        *error = [v19 initWithDomain:@"GDErrorDomain" code:14 userInfo:v20];
      }
    }

    else
    {
      if (v64[5])
      {
        v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        obj = v64[5];
        v41 = [obj countByEnumeratingWithState:&v49 objects:v70 count:{16, v16}];
        if (v41)
        {
          v40 = *v50;
          do
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v50 != v40)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v49 + 1) + 8 * i);
              v24 = [v64[5] objectForKey:v23];
              v43 = v23;
              v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              scoredPersonEntityTags = [v24 scoredPersonEntityTags];
              v27 = [scoredPersonEntityTags countByEnumeratingWithState:&v45 objects:v69 count:16];
              if (v27)
              {
                v28 = *v46;
                do
                {
                  for (j = 0; j != v27; ++j)
                  {
                    if (*v46 != v28)
                    {
                      objc_enumerationMutation(scoredPersonEntityTags);
                    }

                    v30 = *(*(&v45 + 1) + 8 * j);
                    v31 = [GDScoredPersonEntityTagType alloc];
                    gdTag = [v30 gdTag];
                    [v30 score];
                    v33 = [(GDScoredPersonEntityTagType *)v31 initWithTag:gdTag score:?];
                    [v25 addObject:v33];
                  }

                  v27 = [scoredPersonEntityTags countByEnumeratingWithState:&v45 objects:v69 count:16];
                }

                while (v27);
              }

              v34 = -[GDRankedPersonEntityTags initWithIDValue:scoredPersonEntityTags:entityRelevanceInferenceEventId:]([GDRankedPersonEntityTags alloc], "initWithIDValue:scoredPersonEntityTags:entityRelevanceInferenceEventId:", [v24 idValue], v25, objc_msgSend(v24, "inferenceEventIdValue"));
              [v42 setObject:v34 forKeyedSubscript:v43];
            }

            v41 = [obj countByEnumeratingWithState:&v49 objects:v70 count:16];
          }

          while (v41);
        }

        goto LABEL_6;
      }

      if (error)
      {
        v42 = 0;
        *error = v58[5];
        goto LABEL_6;
      }
    }

    v42 = 0;
LABEL_6:

    _Block_object_dispose(&v57, 8);
    _Block_object_dispose(&v63, 8);

LABEL_9:
    v9 = v36;
    goto LABEL_10;
  }

  if (error)
  {
    v36 = optionsCopy;
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v73 = *MEMORY[0x1E696A578];
    v74[0] = @"Error when initializing EntityTaggingService.";
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:&v73 count:1];
    v42 = 0;
    *error = [v21 initWithDomain:@"GDErrorDomain" code:1 userInfo:v37];
    goto LABEL_9;
  }

  v42 = 0;
LABEL_10:

  return v42;
}

- (id)entitiesForTag:(int64_t)tag options:(id)options error:(id *)error
{
  v61[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v9 = optionsCopy;
  if (self->inner)
  {
    v10 = [GDPersonEntityTaggingOptionsInner alloc];
    v35 = v9;
    tagThresholds = [v9 tagThresholds];
    v12 = [(GDPersonEntityTaggingOptionsInner *)v10 initWithTagNameThresholds:tagThresholds];

    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = sub_1ABAB0F34;
    v55 = sub_1ABAB27A0;
    v56 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = sub_1ABAB0F34;
    v49 = sub_1ABAB27A0;
    v50 = 0;
    v13 = dispatch_semaphore_create(0);
    inner = self->inner;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_1ABEE3234;
    v41[3] = &unk_1E7961ED0;
    v43 = &v51;
    v44 = &v45;
    v15 = v13;
    v42 = v15;
    v36 = v12;
    [(GDEntityTaggingServiceInner *)inner entitiesForTagWithGdEntityTagType:tag options:v12 completionHandler:v41];
    v16 = v15;
    v17 = dispatch_time(0, 5000000000);
    v18 = dispatch_semaphore_wait(v16, v17);

    if (v18)
    {
      if (error)
      {
        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v58 = *MEMORY[0x1E696A578];
        v59 = @"Timed out waiting for EntityTaggingService to return.";
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        *error = [v19 initWithDomain:@"GDErrorDomain" code:14 userInfo:v20];
      }
    }

    else
    {
      if (v52[5])
      {
        v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        scoredEntities = [v52[5] scoredEntities];
        v25 = [scoredEntities countByEnumeratingWithState:&v37 objects:v57 count:16];
        if (v25)
        {
          v26 = *v38;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v38 != v26)
              {
                objc_enumerationMutation(scoredEntities);
              }

              v28 = *(*(&v37 + 1) + 8 * i);
              v29 = [GDScoredPersonEntity alloc];
              idValue = [v28 idValue];
              [v28 score];
              v31 = [(GDScoredPersonEntity *)v29 initWithIDValue:idValue score:?];
              [v23 addObject:v31];
            }

            v25 = [scoredEntities countByEnumeratingWithState:&v37 objects:v57 count:16];
          }

          while (v25);
        }

        v32 = [GDRankedEntityTagPersons alloc];
        gdTag = [v52[5] gdTag];
        v21 = -[GDRankedEntityTagPersons initWithTag:scoredEntities:entityRelevanceInferenceEventId:](v32, "initWithTag:scoredEntities:entityRelevanceInferenceEventId:", gdTag, v23, [v52[5] inferenceEventIdValue]);

        goto LABEL_20;
      }

      if (error)
      {
        v21 = 0;
        *error = v46[5];
        goto LABEL_20;
      }
    }

    v21 = 0;
LABEL_20:

    _Block_object_dispose(&v45, 8);
    _Block_object_dispose(&v51, 8);

    goto LABEL_21;
  }

  if (!error)
  {
    v21 = 0;
    goto LABEL_22;
  }

  v35 = optionsCopy;
  v22 = objc_alloc(MEMORY[0x1E696ABC0]);
  v60 = *MEMORY[0x1E696A578];
  v61[0] = @"Error when initializing EntityTaggingService.";
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
  v21 = 0;
  *error = [v22 initWithDomain:@"GDErrorDomain" code:1 userInfo:v36];
LABEL_21:

  v9 = v35;
LABEL_22:

  return v21;
}

- (id)entityTagsForIdentifier:(id)identifier options:(id)options error:(id *)error
{
  v63[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  optionsCopy = options;
  v37 = optionsCopy;
  if (self->inner)
  {
    v9 = optionsCopy;
    v10 = [GDPersonEntityTaggingOptionsInner alloc];
    tagThresholds = [v9 tagThresholds];
    v12 = [(GDPersonEntityTaggingOptionsInner *)v10 initWithTagNameThresholds:tagThresholds];

    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = sub_1ABAB0F34;
    v57 = sub_1ABAB27A0;
    v58 = 0;
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = sub_1ABAB0F34;
    v51 = sub_1ABAB27A0;
    v52 = 0;
    v13 = dispatch_semaphore_create(0);
    inner = self->inner;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = sub_1ABEE37A4;
    v43[3] = &unk_1E7961EA8;
    v45 = &v53;
    v46 = &v47;
    v15 = v13;
    v44 = v15;
    v35 = v12;
    [(GDEntityTaggingServiceInner *)inner personEntityTagsFor:identifierCopy options:v12 completionHandler:v43];
    v16 = v15;
    v17 = dispatch_time(0, 5000000000);
    v18 = dispatch_semaphore_wait(v16, v17);

    if (v18)
    {
      if (error)
      {
        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v60 = *MEMORY[0x1E696A578];
        v61 = @"Timed out waiting for EntityTaggingService to return.";
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        *error = [v19 initWithDomain:@"GDErrorDomain" code:14 userInfo:v20];
      }
    }

    else
    {
      if (v54[5])
      {
        v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        scoredPersonEntityTags = [v54[5] scoredPersonEntityTags];
        v25 = [scoredPersonEntityTags countByEnumeratingWithState:&v39 objects:v59 count:16];
        if (v25)
        {
          v26 = *v40;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v40 != v26)
              {
                objc_enumerationMutation(scoredPersonEntityTags);
              }

              v28 = *(*(&v39 + 1) + 8 * i);
              v29 = [GDScoredPersonEntityTagType alloc];
              gdTag = [v28 gdTag];
              [v28 score];
              v31 = [(GDScoredPersonEntityTagType *)v29 initWithTag:gdTag score:?];
              [v23 addObject:v31];
            }

            v25 = [scoredPersonEntityTags countByEnumeratingWithState:&v39 objects:v59 count:16];
          }

          while (v25);
        }

        v32 = [GDRankedPersonEntityTags alloc];
        idValue = [v54[5] idValue];
        v21 = -[GDRankedPersonEntityTags initWithIDValue:scoredPersonEntityTags:entityRelevanceInferenceEventId:](v32, "initWithIDValue:scoredPersonEntityTags:entityRelevanceInferenceEventId:", idValue, v23, [v54[5] inferenceEventIdValue]);

        goto LABEL_20;
      }

      if (error)
      {
        v21 = 0;
        *error = v48[5];
LABEL_20:

        _Block_object_dispose(&v47, 8);
        _Block_object_dispose(&v53, 8);

        goto LABEL_22;
      }
    }

    v21 = 0;
    goto LABEL_20;
  }

  if (error)
  {
    v22 = objc_alloc(MEMORY[0x1E696ABC0]);
    v62 = *MEMORY[0x1E696A578];
    v63[0] = @"Error when initializing EntityTaggingService.";
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
    v21 = 0;
    *error = [v22 initWithDomain:@"GDErrorDomain" code:1 userInfo:v36];
  }

  else
  {
    v21 = 0;
  }

LABEL_22:

  return v21;
}

- (GDEntityTaggingService)initWithConfig:(id)config error:(id *)error
{
  v10.receiver = self;
  v10.super_class = GDEntityTaggingService;
  v5 = [(GDEntityTaggingService *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(GDEntityTagConfigurationInner);
    v7 = [[GDEntityTaggingServiceInner alloc] initWithEtConfig:v6 error:error];
    inner = v5->inner;
    v5->inner = v7;
  }

  return v5;
}

@end