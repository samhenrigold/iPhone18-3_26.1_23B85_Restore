@interface PGCelebrationOverTimeMemoryTitleGenerator
- (PGCelebrationOverTimeMemoryTitleGenerator)initWithMomentNodes:(id)nodes titleGenerationContext:(id)context;
- (id)_celebrationSubtitle;
- (id)_celebrationTitle;
- (void)_generateTitleAndSubtitleWithResult:(id)result;
@end

@implementation PGCelebrationOverTimeMemoryTitleGenerator

- (id)_celebrationSubtitle
{
  v2 = objc_alloc_init(PGTimeTitleOptions);
  [(PGTimeTitleOptions *)v2 setAllowedFormats:16];
  v3 = [PGTimeTitleUtility timeTitleWithOptions:v2];
  v4 = [PGTitle titleWithString:v3 category:5];

  return v4;
}

- (id)_celebrationTitle
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__36094;
  v19 = __Block_byref_object_dispose__36095;
  v20 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  momentNodes = [(PGTitleGenerator *)self momentNodes];
  v3 = [momentNodes countByEnumeratingWithState:&v11 objects:v21 count:16];
  if (v3)
  {
    v4 = *v12;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v12 != v4)
      {
        objc_enumerationMutation(momentNodes);
      }

      v6 = *(*(&v11 + 1) + 8 * v5);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __62__PGCelebrationOverTimeMemoryTitleGenerator__celebrationTitle__block_invoke;
      v10[3] = &unk_278885C70;
      v10[4] = &v15;
      [v6 enumerateCelebratedHolidayNodesUsingBlock:v10];
      if ([v16[5] length])
      {
        break;
      }

      if (v3 == ++v5)
      {
        v3 = [momentNodes countByEnumeratingWithState:&v11 objects:v21 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v7 = v16[5];
  if (v7)
  {
    v8 = [PGTitle titleWithString:v7 category:5];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __62__PGCelebrationOverTimeMemoryTitleGenerator__celebrationTitle__block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v5 = [a2 name];
  if (v5)
  {
    v10 = v5;
    v6 = [MEMORY[0x277D276C8] localizedNameForName:v5];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [*(*(*(a1 + 32) + 8) + 40) length];
    v5 = v10;
    *a3 = v9 != 0;
  }
}

- (void)_generateTitleAndSubtitleWithResult:(id)result
{
  resultCopy = result;
  _celebrationTitle = [(PGCelebrationOverTimeMemoryTitleGenerator *)self _celebrationTitle];
  _celebrationSubtitle = [(PGCelebrationOverTimeMemoryTitleGenerator *)self _celebrationSubtitle];
  if (resultCopy)
  {
    resultCopy[2](resultCopy, _celebrationTitle, _celebrationSubtitle);
  }
}

- (PGCelebrationOverTimeMemoryTitleGenerator)initWithMomentNodes:(id)nodes titleGenerationContext:(id)context
{
  v5.receiver = self;
  v5.super_class = PGCelebrationOverTimeMemoryTitleGenerator;
  return [(PGTitleGenerator *)&v5 initWithMomentNodes:nodes referenceDateInterval:0 keyAsset:0 curatedAssetCollection:0 assetCollection:0 type:0 titleGenerationContext:context];
}

@end