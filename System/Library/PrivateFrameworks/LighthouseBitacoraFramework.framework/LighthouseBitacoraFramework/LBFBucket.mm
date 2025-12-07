@interface LBFBucket
- (LBFBucket)initWithInterval:(id)interval endTimestamp:(id)timestamp index:(unint64_t)index;
- (id)flattenEvents;
@end

@implementation LBFBucket

- (LBFBucket)initWithInterval:(id)interval endTimestamp:(id)timestamp index:(unint64_t)index
{
  intervalCopy = interval;
  timestampCopy = timestamp;
  v16.receiver = self;
  v16.super_class = LBFBucket;
  v11 = [(LBFBucket *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_startTime, interval);
    objc_storeStrong(&v12->_endTime, timestamp);
    v12->_bucketIndex = index;
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    eventTree = v12->_eventTree;
    v12->_eventTree = v13;
  }

  return v12;
}

- (id)flattenEvents
{
  v61 = *MEMORY[0x277D85DE8];
  v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = objc_msgSend_allKeys(self->_eventTree, v2, 0, v3);
  v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, v5, &v55, v60, 16);
  if (v49)
  {
    v46 = *v56;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v56 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v50 = *(*(&v55 + 1) + 8 * i);
        v9 = objc_msgSend_objectForKey_(self->_eventTree, v6, v7, v50);
        v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v13 = objc_msgSend_deploymentEventsHolders(v9, v11, 0, v12);
        v17 = objc_msgSend_allKeys(v13, v14, v16, v15);

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, v19, &v51, v59, 16);
        if (v20)
        {
          v24 = v20;
          v25 = *v52;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v52 != v25)
              {
                objc_enumerationMutation(v17);
              }

              v27 = *(*(&v51 + 1) + 8 * j);
              v28 = objc_msgSend_deploymentEventsHolders(v9, v21, v23, v22);
              v31 = objc_msgSend_objectForKey_(v28, v29, v30, v27);

              v35 = objc_msgSend_getSortedEvents(v31, v32, v34, v33);
              objc_msgSend_setObject_forKey_(v10, v36, v37, v35, v27);
            }

            v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v21, v23, &v51, v59, 16);
          }

          while (v24);
        }

        objc_msgSend_setObject_forKey_(v48, v38, v39, v10, v50);
      }

      v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, v7, &v55, v60, 16);
    }

    while (v49);
  }

  v43 = objc_msgSend_copy(v48, v40, v42, v41);

  return v43;
}

@end