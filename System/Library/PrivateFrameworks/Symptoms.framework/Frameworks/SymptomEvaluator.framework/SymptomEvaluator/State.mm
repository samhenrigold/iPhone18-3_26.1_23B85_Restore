@interface State
+ (id)createStateWithLabel:(id)label rank:(unint64_t)rank entryCellPreds:(id)preds entryWiFiPreds:(id)fiPreds;
- (id)_initStateWithLabel:(id)label rank:(unint64_t)rank entryCellPreds:(id)preds entryWiFiPreds:(id)fiPreds;
- (void)dealloc;
@end

@implementation State

+ (id)createStateWithLabel:(id)label rank:(unint64_t)rank entryCellPreds:(id)preds entryWiFiPreds:(id)fiPreds
{
  fiPredsCopy = fiPreds;
  predsCopy = preds;
  labelCopy = label;
  v12 = [[State alloc] _initStateWithLabel:labelCopy rank:rank entryCellPreds:predsCopy entryWiFiPreds:fiPredsCopy];

  return v12;
}

- (id)_initStateWithLabel:(id)label rank:(unint64_t)rank entryCellPreds:(id)preds entryWiFiPreds:(id)fiPreds
{
  v55 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  predsCopy = preds;
  fiPredsCopy = fiPreds;
  v49.receiver = self;
  v49.super_class = State;
  v14 = [(State *)&v49 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_label, label);
    v15->_rank = rank;
    objc_storeStrong(&v15->_entryCellPreds, preds);
    objc_storeStrong(&v15->_entryWiFiPreds, fiPreds);
    v16 = objc_alloc_init(StopWatch);
    sojournTime = v15->_sojournTime;
    v15->_sojournTime = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    allValues = [(NSDictionary *)v15->_entryCellPreds allValues];
    v20 = [allValues countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v46;
      do
      {
        v23 = 0;
        do
        {
          if (*v46 != v22)
          {
            objc_enumerationMutation(allValues);
          }

          v24 = [*(*(&v45 + 1) + 8 * v23) description];
          [v18 addObject:v24];

          ++v23;
        }

        while (v21 != v23);
        v21 = [allValues countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v21);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    allValues2 = [(NSDictionary *)v15->_entryWiFiPreds allValues];
    v26 = [allValues2 countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v42;
      do
      {
        v29 = 0;
        do
        {
          if (*v42 != v28)
          {
            objc_enumerationMutation(allValues2);
          }

          v30 = [*(*(&v41 + 1) + 8 * v29) description];
          [v18 addObject:v30];

          ++v29;
        }

        while (v27 != v29);
        v27 = [allValues2 countByEnumeratingWithState:&v41 objects:v53 count:16];
      }

      while (v27);
    }

    v31 = [v18 componentsJoinedByString:{@", "}];
    uTF8String = [v31 UTF8String];
    v33 = strlen(uTF8String);
    if (CC_SHA256(uTF8String, v33, md))
    {
      v34 = [MEMORY[0x277CBEA90] dataWithBytes:md length:32];
      v35 = MEMORY[0x277CBEB18];
      v36 = [v34 description];
      v37 = [v35 arrayWithObjects:{v36, 0}];
      digest = v15->_digest;
      v15->_digest = v37;
    }

    else
    {
      v39 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v51 = uTF8String;
        _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_ERROR, "Failed to create state digest: %p", buf, 0xCu);
      }
    }
  }

  return v15;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
  {
    label = self->_label;
    *buf = 138412290;
    v7 = label;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "CFSM dealloc'd state: %@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = State;
  [(State *)&v5 dealloc];
}

@end