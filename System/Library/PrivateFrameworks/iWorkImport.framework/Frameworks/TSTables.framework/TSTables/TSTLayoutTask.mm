@interface TSTLayoutTask
- (TSTLayoutEngine)layoutEngine;
- (TSTLayoutTask)initWithLayoutEngine:(id)engine;
- (TSTLayoutTask)initWithLayoutTask:(id)task;
- (id)copyWithZone:(_NSZone *)zone;
- (void)enumerateCellStatesUsingBlock:(id)block;
- (void)writeToLayoutEngineCaches:(id)caches;
@end

@implementation TSTLayoutTask

- (TSTLayoutTask)initWithLayoutEngine:(id)engine
{
  engineCopy = engine;
  v10.receiver = self;
  v10.super_class = TSTLayoutTask;
  v5 = [(TSTLayoutTask *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_layoutEngine, engineCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cellStatesToLayout = v6->_cellStatesToLayout;
    v6->_cellStatesToLayout = v7;
  }

  return v6;
}

- (TSTLayoutTask)initWithLayoutTask:(id)task
{
  taskCopy = task;
  v20.receiver = self;
  v20.super_class = TSTLayoutTask;
  v8 = [(TSTLayoutTask *)&v20 init];
  if (v8)
  {
    v9 = objc_msgSend_layoutEngine(taskCopy, v5, v6, v7);
    objc_storeWeak(&v8->_layoutEngine, v9);

    v13 = objc_msgSend_cellStatesToLayout(taskCopy, v10, v11, v12);
    v17 = objc_msgSend_copy(v13, v14, v15, v16);
    cellStatesToLayout = v8->_cellStatesToLayout;
    v8->_cellStatesToLayout = v17;
  }

  return v8;
}

- (void)enumerateCellStatesUsingBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_cellStatesToLayout;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v11, v16, 16);
  if (v7)
  {
    v8 = *v12;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v5);
      }

      blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v9), &v15);
      if (v15)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v10, &v11, v16, 16);
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)writeToLayoutEngineCaches:(id)caches
{
  cachesCopy = caches;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = objc_msgSend_generateWidthHeightCollection(cachesCopy, v7, v8, v9);
  cellStatesToLayout = self->_cellStatesToLayout;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_2213ECB74;
  v30[3] = &unk_278464908;
  v12 = v6;
  v31 = v12;
  selfCopy = self;
  v13 = v10;
  v33 = v13;
  objc_msgSend_enumerateObjectsUsingBlock_(cellStatesToLayout, v14, v30, v15);
  WeakRetained = objc_loadWeakRetained(&self->_layoutEngine);
  v20 = objc_msgSend_dupContentCache(WeakRetained, v17, v18, v19);
  objc_msgSend_addEntriesFromDictionary_(v20, v21, v5, v22);

  v23 = objc_loadWeakRetained(&self->_layoutEngine);
  v27 = objc_msgSend_cellIDToWPColumnCache(v23, v24, v25, v26);
  objc_msgSend_addEntriesFromDictionary_(v27, v28, v12, v29);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);

  return MEMORY[0x2821F9670](v8, sel_initWithLayoutTask_, self, v9);
}

- (TSTLayoutEngine)layoutEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutEngine);

  return WeakRetained;
}

@end