@interface FCPersonalizationFeature
+ (id)featureForIdentifier:(char)identifier allowFreeValued:;
+ (id)featureFromTagID:(id)d;
+ (id)featuresFromIssue:(id)issue;
+ (id)featuresFromPersonalizingItem:(id)item personalizationTreatment:(id)treatment;
+ (id)featuresFromTag:(id)tag;
+ (id)featuresFromTodayPersonalizationEvent:(id)event;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)initWithIdentifier:(void *)identifier;
@end

@implementation FCPersonalizationFeature

+ (id)featuresFromIssue:(id)issue
{
  issueCopy = issue;
  v4 = objc_opt_new();
  sourceChannel = [issueCopy sourceChannel];
  identifier = [sourceChannel identifier];

  topicTagIDs = [issueCopy topicTagIDs];

  if (identifier && topicTagIDs)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __46__FCPersonalizationFeature_featuresFromIssue___block_invoke;
    v19[3] = &unk_1E7C3CA58;
    v20 = identifier;
    v8 = [topicTagIDs fc_arrayByTransformingWithBlock:v19];
    [v4 addObjectsFromArray:v8];
  }

  v9 = MEMORY[0x1E695DEC8];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__FCPersonalizationFeature_featuresFromIssue___block_invoke_2;
  v16[3] = &unk_1E7C3B110;
  v17 = identifier;
  v18 = topicTagIDs;
  v10 = topicTagIDs;
  v11 = identifier;
  v12 = [v9 fc_array:v16];
  v13 = [v12 fc_arrayByTransformingWithBlock:&__block_literal_global_58_2];
  [v4 addObjectsFromArray:v13];

  v14 = [v4 copy];

  return v14;
}

FCPublisherTopicFeature *__46__FCPersonalizationFeature_featuresFromIssue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[FCPublisherTopicFeature alloc] initWithPublisherTagID:*(a1 + 32) topicTagID:v3];

  return v4;
}

void __46__FCPersonalizationFeature_featuresFromIssue___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 fc_safelyAddObject:v3];
  [v4 fc_safelyAddObjectsFromArray:*(a1 + 40)];
}

FCTagIDFeature *__46__FCPersonalizationFeature_featuresFromIssue___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FCTagIDFeature alloc] initWithTagID:v2];

  return v3;
}

+ (id)featuresFromTodayPersonalizationEvent:(id)event
{
  eventCopy = event;
  v4 = MEMORY[0x1E695DEC8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__FCPersonalizationFeature_featuresFromTodayPersonalizationEvent___block_invoke;
  v8[3] = &unk_1E7C36D40;
  v9 = eventCopy;
  v5 = eventCopy;
  v6 = [v4 fc_array:v8];

  return v6;
}

void __66__FCPersonalizationFeature_featuresFromTodayPersonalizationEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) headlinePublisher];
  v5 = [*(a1 + 32) personalizationSectionFeatureId];
  v6 = [*(a1 + 32) headlineTopics];
  v7 = [v6 fc_arrayByTransformingWithBlock:&__block_literal_global_62_1];

  if (v4)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __66__FCPersonalizationFeature_featuresFromTodayPersonalizationEvent___block_invoke_3;
    v20[3] = &unk_1E7C3CA58;
    v21 = v4;
    v9 = [v7 fc_arrayByTransformingWithBlock:v20];
    [v3 addObjectsFromArray:v9];
  }

  if ([*(a1 + 32) action] == 3 || objc_msgSend(*(a1 + 32), "action") == 4 || objc_msgSend(*(a1 + 32), "action") == 5 || objc_msgSend(*(a1 + 32), "action") == 6)
  {
    v10 = +[FCHeadlineFeatureArticleWithVideoContent articleWithVideoContentFeature];
    [v3 addObject:v10];
  }

  if (v5)
  {
    v11 = [FCPersonalizationFeature featureForFreeValuedIdentifier:v5];
    [v3 addObject:v11];
  }

  v12 = MEMORY[0x1E695DEC8];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__FCPersonalizationFeature_featuresFromTodayPersonalizationEvent___block_invoke_4;
  v17[3] = &unk_1E7C3B110;
  v18 = v4;
  v19 = v7;
  v13 = v7;
  v14 = v4;
  v15 = [v12 fc_array:v17];
  v16 = [v15 fc_arrayByTransformingWithBlock:&__block_literal_global_66_2];
  [v3 addObjectsFromArray:v16];
}

FCPublisherTopicFeature *__66__FCPersonalizationFeature_featuresFromTodayPersonalizationEvent___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[FCPublisherTopicFeature alloc] initWithPublisherTagID:*(a1 + 32) topicTagID:v3];

  return v4;
}

void __66__FCPersonalizationFeature_featuresFromTodayPersonalizationEvent___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 fc_safelyAddObject:v3];
  [v4 fc_safelyAddObjectsFromArray:*(a1 + 40)];
}

FCTagIDFeature *__66__FCPersonalizationFeature_featuresFromTodayPersonalizationEvent___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FCTagIDFeature alloc] initWithTagID:v2];

  return v3;
}

+ (id)featuresFromPersonalizingItem:(id)item personalizationTreatment:(id)treatment
{
  v37 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  treatmentCopy = treatment;
  array = [MEMORY[0x1E695DF70] array];
  publisherID = [itemCopy publisherID];
  if (publisherID)
  {
    v8 = [[FCTagIDFeature alloc] initWithTagID:publisherID];
    [array addObject:v8];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = itemCopy;
  topicIDs = [itemCopy topicIDs];
  v10 = [topicIDs countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(topicIDs);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = [[FCTagIDFeature alloc] initWithTagID:v14];
        [array addObject:v15];

        if (publisherID)
        {
          v16 = [[FCPublisherTopicFeature alloc] initWithPublisherTagID:publisherID topicTagID:v14];
          [array addObject:v16];
        }
      }

      v11 = [topicIDs countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v11);
  }

  if ([v31 isANF])
  {
    +[FCHeadlineFeatureArticleTypeFlint articleTypeFlintFeature];
  }

  else
  {
    +[FCHeadlineFeatureArticleTypeNonFlint articleTypeNonFlintFeature];
  }
  v17 = ;
  [array addObject:v17];

  v18 = objc_opt_respondsToSelector();
  if (treatmentCopy && (v18 & 1) != 0 && [v31 bodyTextLength] >= 1)
  {
    bodyTextLength = [v31 bodyTextLength];
    [treatmentCopy articleLengthMediumThreshold];
    if (bodyTextLength <= v20)
    {
      v23 = +[FCArticleLengthFeature shortLengthFeature];
    }

    else
    {
      bodyTextLength2 = [v31 bodyTextLength];
      [treatmentCopy articleLengthLongThreshold];
      if (bodyTextLength2 <= v22)
      {
        +[FCArticleLengthFeature mediumLengthFeature];
      }

      else
      {
        +[FCArticleLengthFeature longLengthFeature];
      }
      v23 = ;
    }

    v24 = v23;
    [array addObject:v23];
  }

  if (publisherID && [v31 isPaid])
  {
    v25 = [[FCPublisherPremiumFeature alloc] initWithTagID:publisherID];
    [array addObject:v25];
  }

  if ([v31 hasVideo])
  {
    v26 = +[FCHeadlineFeatureArticleWithVideoContent articleWithVideoContentFeature];
    [array addObject:v26];
  }

  if (objc_opt_respondsToSelector())
  {
    iAdCategories = [v31 iAdCategories];
    v28 = [iAdCategories fc_arrayByTransformingWithBlock:&__block_literal_global_75_2];
    [array addObjectsFromArray:v28];
  }

  return array;
}

FCAdCategoryFeature *__83__FCPersonalizationFeature_featuresFromPersonalizingItem_personalizationTreatment___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FCAdCategoryFeature alloc] initWithTagID:v2];

  return v3;
}

+ (id)featuresFromTag:(id)tag
{
  tagCopy = tag;
  v4 = objc_opt_new();
  v5 = [FCTagIDFeature alloc];
  identifier = [tagCopy identifier];

  v7 = [(FCTagIDFeature *)v5 initWithTagID:identifier];
  [v4 fc_safelyAddObject:v7];

  v8 = [v4 copy];

  return v8;
}

FCTagIDFeature *__47__FCPersonalizationFeature_featuresFromTagIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FCTagIDFeature alloc] initWithTagID:v2];

  return v3;
}

+ (id)featureFromTagID:(id)d
{
  v11 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v4 = MEMORY[0x1E695DEC8];
  dCopy2 = d;
  v6 = [v4 arrayWithObjects:&dCopy count:1];

  v7 = [self featuresFromTagIDs:{v6, dCopy, v11}];
  firstObject = [v7 firstObject];

  return firstObject;
}

+ (id)featureForIdentifier:(char)identifier allowFreeValued:
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_self();
  if ([v4 hasPrefix:@"f0"])
  {
    v5 = +[FCBaselineFeature baselineFeature];
LABEL_18:
    v7 = v5;
    goto LABEL_19;
  }

  if ([v4 hasPrefix:@"f1"])
  {
    v5 = +[FCHeadlineFeatureArticleTypeFlint articleTypeFlintFeature];
    goto LABEL_18;
  }

  if ([v4 hasPrefix:@"f7"])
  {
LABEL_6:
    v5 = +[FCHeadlineFeatureArticleWithVideoContent articleWithVideoContentFeature];
    goto LABEL_18;
  }

  if ([v4 hasPrefix:@"f2"])
  {
    v5 = +[FCHeadlineFeatureArticleTypeNonFlint articleTypeNonFlintFeature];
    goto LABEL_18;
  }

  if ([v4 hasPrefix:@"f3"])
  {
    v6 = FCTagIDFeature;
LABEL_17:
    v5 = [[v6 alloc] initWithPersonalizationIdentifier:v4];
    goto LABEL_18;
  }

  if ([v4 hasPrefix:@"f4"])
  {
    v6 = FCPublisherTopicFeature;
    goto LABEL_17;
  }

  if ([v4 hasPrefix:@"f5"])
  {
    v6 = FCPublisherPremiumFeature;
    goto LABEL_17;
  }

  if ([v4 hasPrefix:@"f6"])
  {
    v6 = FCGroupTypeFeature;
    goto LABEL_17;
  }

  if ([v4 hasPrefix:@"f7"])
  {
    goto LABEL_6;
  }

  if ([v4 hasPrefix:@"f8"])
  {
    v5 = [[FCTodayWidgetSectionIDFeature alloc] initWithPersonalizationIdentifier:v4];
    goto LABEL_18;
  }

  if ([v4 hasPrefix:@"f9"])
  {
    v6 = FCPublisherVideoContentFeature;
    goto LABEL_17;
  }

  if ([v4 hasPrefix:@"fa0"])
  {
    v6 = FCArticleLengthFeature;
    goto LABEL_17;
  }

  if ([v4 hasPrefix:@"fa1"])
  {
    v6 = FCAdCategoryFeature;
    goto LABEL_17;
  }

  if (v4 && (identifier & 1) != 0)
  {
    v5 = [[FCPersonalizationFeature alloc] initWithIdentifier:v4];
    goto LABEL_18;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The identifier %@ didn't map to any headline features", v4];
    *buf = 136315906;
    v12 = "+[FCPersonalizationFeature featureForIdentifier:allowFreeValued:]";
    v13 = 2080;
    v14 = "FCPersonalizationFeature.m";
    v15 = 1024;
    v16 = 330;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v9 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_error_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_ERROR, "The identifier %{public}@ didn't map to any headline features", buf, 0xCu);
  }

  v7 = 0;
LABEL_19:

  return v7;
}

- (void)initWithIdentifier:(void *)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (identifier)
  {
    if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "identifier"];
      *buf = 136315906;
      v11 = "[FCPersonalizationFeature initWithIdentifier:]";
      v12 = 2080;
      v13 = "FCPersonalizationFeature.m";
      v14 = 1024;
      v15 = 357;
      v16 = 2114;
      v17 = v8;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v9.receiver = identifier;
    v9.super_class = FCPersonalizationFeature;
    identifier = objc_msgSendSuper2(&v9, sel_init);
    if (identifier)
    {
      v5 = [v4 copy];
      v6 = identifier[2];
      identifier[2] = v5;
    }
  }

  return identifier;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  personalizationIdentifier = [(FCPersonalizationFeature *)self personalizationIdentifier];
  v7 = [v3 stringWithFormat:@"FCPersonalizationFeature with type %@ and personalizationIdentifier %@", v5, personalizationIdentifier];

  return v7;
}

- (unint64_t)hash
{
  personalizationIdentifier = [(FCPersonalizationFeature *)self personalizationIdentifier];

  return [(NSString *)personalizationIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  personalizationIdentifier = [(FCPersonalizationFeature *)self personalizationIdentifier];
  personalizationIdentifier2 = [equal personalizationIdentifier];

  return [(NSString *)personalizationIdentifier isEqual:personalizationIdentifier2];
}

@end