@interface TSTLayoutTask
- (TSTLayoutTask)initWithMasterLayout:(id)layout;
- (void)dealloc;
- (void)flushToGlobalCaches;
@end

@implementation TSTLayoutTask

- (TSTLayoutTask)initWithMasterLayout:(id)layout
{
  v7.receiver = self;
  v7.super_class = TSTLayoutTask;
  v4 = [(TSTLayoutTask *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mMasterLayout = layout;
    v4->mCellStatesToLayout = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v5;
}

- (void)dealloc
{
  self->mCellStatesToLayout = 0;
  v3.receiver = self;
  v3.super_class = TSTLayoutTask;
  [(TSTLayoutTask *)&v3 dealloc];
}

- (void)flushToGlobalCaches
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mCellStatesToLayout = self->mCellStatesToLayout;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__TSTLayoutTask_flushToGlobalCaches__block_invoke;
  v6[3] = &unk_279D4AC78;
  v6[4] = self;
  v6[5] = v3;
  v6[6] = v4;
  [(NSMutableArray *)mCellStatesToLayout enumerateObjectsUsingBlock:v6];
  [(TSUConcurrentCache *)[(TSTMasterLayout *)self->mMasterLayout dupContentCache] addEntriesFromDictionary:v3];

  [(TSUConcurrentCache *)[(TSTMasterLayout *)self->mMasterLayout cellIDToWPColumnCache] addEntriesFromDictionary:v4];
}

void *__36__TSTLayoutTask_flushToGlobalCaches__block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = TSUDynamicCast();
  v4 = [v3 modelCellID];
  v5 = [v3 mergedRange];
  result = [v3 wpColumn];
  if (result)
  {
    v7 = result;
    if ([v3 keyVal] && (objc_msgSend(v3, "layoutCacheFlags") & 2) != 0 && ((objc_msgSend(objc_msgSend(*(*(a1 + 32) + 8), "tableInfo"), "editingCellID") ^ v4) & 0xFFFFFF) != 0)
    {
      [*(a1 + 40) setObject:v7 forKey:{objc_msgSend(v3, "keyVal")}];
    }

    if ([v3 hasContent] && (objc_msgSend(v3, "layoutCacheFlags") & 1) != 0 && !objc_msgSend(v3, "verticalAlignment"))
    {
      HIDWORD(v8) = v4;
      LODWORD(v8) = v4;
      [*(a1 + 48) setObject:v7 forKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", (v8 >> 16) & 0xFFFF00FF)}];
    }

    result = [v3 inDynamicLayout];
    if ((result & 1) == 0)
    {
      result = [v3 cellPropsRowHeight];
      if (result)
      {
        if (v5 == 0xFFFF || (v5 & 0xFF0000) == 0xFF0000 || !HIWORD(v5) || (v5 & 0xFFFF00000000) == 0)
        {
          v23 = v25;
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __36__TSTLayoutTask_flushToGlobalCaches__block_invoke_3;
          v25[3] = &unk_279D47708;
          v24 = *(a1 + 32);
          v25[4] = v3;
          v25[5] = v24;
        }

        else
        {
          v9 = TSTMasterLayoutSizeOfTextInColumn([v3 wpColumn]);
          v11 = v10;
          [v3 paddingInsets];
          v13 = v12;
          v15 = v14;
          v17 = v16;
          v19 = v18;
          v20 = [v3 cell];
          v22 = v20 && *(v20 + 9) << 8 == 1536 && (v21 = [v3 cell]) != 0 && *(v21 + 104) == 263;
          v23 = v26;
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __36__TSTLayoutTask_flushToGlobalCaches__block_invoke_2;
          v26[3] = &unk_279D4AC50;
          v24 = *(a1 + 32);
          v26[4] = v24;
          v26[11] = v5;
          *&v26[5] = v9;
          v26[6] = v11;
          v26[7] = v13;
          v26[8] = v15;
          v26[9] = v17;
          v26[10] = v19;
          v27 = v22;
        }

        return [objc_msgSend(*(v24 + 8) "whCacheQueue")];
      }
    }
  }

  return result;
}

uint64_t __36__TSTLayoutTask_flushToGlobalCaches__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) mergeRanges];
  v3 = *(a1 + 88);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = *(a1 + 96);

  return [v2 addRange:v3 andSize:v10 andPaddingInsets:v4 andIsCheckbox:{v5, v6, v7, v8, v9}];
}

uint64_t __36__TSTLayoutTask_flushToGlobalCaches__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) modelCellID];
  v3 = TSTMasterLayoutSizeOfTextInColumn([*(a1 + 32) wpColumn]);
  v5 = v4;
  v6 = [*(a1 + 32) cell];
  if (v6 && *(v6 + 9) << 8 == 1536)
  {
    [*(a1 + 32) cell];
  }

  if (v5 <= 0.0)
  {
    v13 = [*(*(a1 + 40) + 8) widthHeightCache];

    return [v13 resetFitHeightForCellID:v2];
  }

  else
  {
    [*(a1 + 32) paddingInsets];
    v8 = v7;
    [*(a1 + 32) paddingInsets];
    v10 = v5 + v8 + v9;
    v11 = [*(*(a1 + 40) + 8) widthHeightCache];

    return [v11 setFitHeight:v2 forCellID:v10];
  }
}

@end