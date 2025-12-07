@interface GDRankedPersonEntityTags
- (GDRankedPersonEntityTags)initWithIDValue:(int64_t)value scoredPersonEntityTags:(id)tags entityRelevanceInferenceEventId:(int64_t)id;
- (NSArray)scoredPersonEntityTags;
@end

@implementation GDRankedPersonEntityTags

- (NSArray)scoredPersonEntityTags
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  scoredPersonEntityTags = [(GDScoreRankedPersonEntityTagsInner *)self->inner scoredPersonEntityTags];
  v5 = [scoredPersonEntityTags countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(scoredPersonEntityTags);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [GDScoredPersonEntityTagType alloc];
        gdTag = [v9 gdTag];
        [v9 score];
        v12 = [(GDScoredPersonEntityTagType *)v10 initWithTag:gdTag score:?];
        [v3 addObject:v12];
      }

      v6 = [scoredPersonEntityTags countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (GDRankedPersonEntityTags)initWithIDValue:(int64_t)value scoredPersonEntityTags:(id)tags entityRelevanceInferenceEventId:(int64_t)id
{
  v29 = *MEMORY[0x1E69E9840];
  tagsCopy = tags;
  v27.receiver = self;
  v27.super_class = GDRankedPersonEntityTags;
  v8 = [(GDRankedPersonEntityTags *)&v27 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(tagsCopy, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = tagsCopy;
    v10 = tagsCopy;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [GDScoredPersonEntityTagInner alloc];
          v17 = [v15 tag];
          [v15 score];
          v18 = [(GDScoredPersonEntityTagInner *)v16 initWithGdTag:v17 score:0 inferenceEventIdValue:?];
          [v9 addObject:v18];
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v12);
    }

    v19 = [[GDScoreRankedPersonEntityTagsInner alloc] initWithIdValue:value scoredPersonEntityTags:v9 inferenceEventIdValue:0];
    inner = v8->inner;
    v8->inner = v19;

    tagsCopy = v22;
  }

  return v8;
}

@end