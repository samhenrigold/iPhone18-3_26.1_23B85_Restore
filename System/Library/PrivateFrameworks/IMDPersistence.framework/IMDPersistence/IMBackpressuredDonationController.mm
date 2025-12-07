@interface IMBackpressuredDonationController
- (IMBackpressuredDonationController)initWithDonationCount:(int64_t)count maxBackpressureSize:(int64_t)size donationBlock:(id)block;
- (id)_popDonationsUpToCount:(int64_t)count;
- (void)_deferItems:(id)items;
- (void)_donateItems:(id)items completionBlock:(id)block;
- (void)_finishedDonatingItems:(id)items;
- (void)_leaveGroupsForItems:(id)items;
- (void)_registerGroup:(id)group forItem:(id)item;
- (void)donateItems:(id)items completionBlock:(id)block;
@end

@implementation IMBackpressuredDonationController

- (IMBackpressuredDonationController)initWithDonationCount:(int64_t)count maxBackpressureSize:(int64_t)size donationBlock:(id)block
{
  blockCopy = block;
  v24.receiver = self;
  v24.super_class = IMBackpressuredDonationController;
  v9 = [(IMBackpressuredDonationController *)&v24 init];
  v10 = v9;
  if (v9)
  {
    if (count <= 1)
    {
      countCopy = 1;
    }

    else
    {
      countCopy = count;
    }

    v9->_donationCount = countCopy;
    v9->_maxBackpressureSize = size;
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.IMDPersistence.BackpressuredDonation", v12);
    queue = v10->_queue;
    v10->_queue = v13;

    v15 = _Block_copy(blockCopy);
    donationBlock = v10->_donationBlock;
    v10->_donationBlock = v15;

    v10->_donationInProgress = 0;
    v17 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    pendingDonations = v10->_pendingDonations;
    v10->_pendingDonations = v17;

    v19 = objc_alloc(MEMORY[0x1E696AD18]);
    v21 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v19, v20, 0, 0, 0);
    pendingGroups = v10->_pendingGroups;
    v10->_pendingGroups = v21;
  }

  return v10;
}

- (id)_popDonationsUpToCount:(int64_t)count
{
  countCopy = count;
  v6 = objc_msgSend_queue(self, a2, count, v3);
  dispatch_assert_queue_V2(v6);

  v10 = objc_msgSend_pendingDonations(self, v7, v8, v9);
  if (objc_msgSend_count(v10, v11, v12, v13) <= countCopy)
  {
    v17 = objc_msgSend_pendingDonations(self, v14, v15, v16);
    countCopy = objc_msgSend_count(v17, v18, v19, v20);
  }

  v24 = objc_msgSend_pendingDonations(self, v21, v22, v23);
  v28 = objc_msgSend_array(v24, v25, v26, v27);
  v30 = objc_msgSend_subarrayWithRange_(v28, v29, 0, countCopy);

  v32 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v31, 0, countCopy);
  v36 = objc_msgSend_pendingDonations(self, v33, v34, v35);
  objc_msgSend_removeObjectsAtIndexes_(v36, v37, v32, v38);

  return v30;
}

- (void)_finishedDonatingItems:(id)items
{
  v50 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v8 = objc_msgSend_queue(self, v5, v6, v7);
  dispatch_assert_queue_V2(v8);

  v9 = IMCoreDuetLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 134217984;
    v47 = objc_msgSend_count(itemsCopy, v10, v11, v12);
    _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_DEFAULT, "Finished donating %llu interactions", &v46, 0xCu);
  }

  objc_msgSend_setDonationInProgress_(self, v13, 0, v14);
  objc_msgSend__leaveGroupsForItems_(self, v15, itemsCopy, v16);
  v20 = objc_msgSend_pendingDonations(self, v17, v18, v19);
  v24 = objc_msgSend_count(v20, v21, v22, v23);

  if (v24)
  {
    v28 = objc_msgSend_pendingDonations(self, v25, v26, v27);
    v32 = objc_msgSend_count(v28, v29, v30, v31);

    v36 = objc_msgSend_donationCount(self, v33, v34, v35);
    v39 = objc_msgSend__popDonationsUpToCount_(self, v37, v36, v38);
    v40 = IMCoreDuetLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v44 = objc_msgSend_count(v39, v41, v42, v43);
      v46 = 134218240;
      v47 = v32;
      v48 = 2048;
      v49 = v44;
      _os_log_impl(&dword_1B7AD5000, v40, OS_LOG_TYPE_DEFAULT, "There are %llu interactions waiting to be donated, going to donate %llu more", &v46, 0x16u);
    }

    objc_msgSend__donateItems_completionBlock_(self, v45, v39, 0);
  }
}

- (void)_deferItems:(id)items
{
  v97 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v8 = objc_msgSend_queue(self, v5, v6, v7);
  dispatch_assert_queue_V2(v8);

  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = sub_1B7B82708;
  v94[3] = &unk_1E7CBB260;
  v94[4] = self;
  v11 = objc_msgSend_predicateWithBlock_(MEMORY[0x1E696AE18], v9, v94, v10);
  v14 = objc_msgSend_filteredArrayUsingPredicate_(itemsCopy, v12, v11, v13);

  if (objc_msgSend_count(v14, v15, v16, v17))
  {
    v21 = objc_msgSend_count(v14, v18, v19, v20);
    if (v21 > objc_msgSend_maxBackpressureSize(self, v22, v23, v24))
    {
      v28 = objc_msgSend_count(v14, v25, v26, v27);
      v32 = objc_msgSend_maxBackpressureSize(self, v29, v30, v31);
      v34 = objc_msgSend_subarrayWithRange_(v14, v33, 0, v28 - v32);
      objc_msgSend__leaveGroupsForItems_(self, v35, v34, v36);
      v40 = objc_msgSend_count(v14, v37, v38, v39);
      v44 = v40 - objc_msgSend_maxBackpressureSize(self, v41, v42, v43);
      v48 = objc_msgSend_maxBackpressureSize(self, v45, v46, v47);
      v50 = objc_msgSend_subarrayWithRange_(v14, v49, v44, v48);

      v14 = v50;
    }

    v51 = objc_msgSend_pendingDonations(self, v25, v26, v27);
    v55 = objc_msgSend_count(v51, v52, v53, v54);
    v59 = objc_msgSend_count(v14, v56, v57, v58) + v55;

    v65 = v59 - objc_msgSend_maxBackpressureSize(self, v60, v61, v62);
    if (v65 >= 1)
    {
      v66 = IMCoreDuetLogHandle();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v96 = v65;
        _os_log_impl(&dword_1B7AD5000, v66, OS_LOG_TYPE_DEFAULT, "Too many items queued for donation, purging first %llu to make room", buf, 0xCu);
      }

      v70 = objc_msgSend_pendingDonations(self, v67, v68, v69);
      v74 = objc_msgSend_array(v70, v71, v72, v73);
      v76 = objc_msgSend_subarrayWithRange_(v74, v75, 0, v65);

      objc_msgSend__leaveGroupsForItems_(self, v77, v76, v78);
      v80 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v79, 0, v65);
      v84 = objc_msgSend_pendingDonations(self, v81, v82, v83);
      objc_msgSend_removeObjectsAtIndexes_(v84, v85, v80, v86);
    }

    v87 = objc_msgSend_orderedSetWithArray_(MEMORY[0x1E695DFB8], v63, v14, v64);
    v91 = objc_msgSend_pendingDonations(self, v88, v89, v90);
    objc_msgSend_unionOrderedSet_(v91, v92, v87, v93);
  }
}

- (void)_donateItems:(id)items completionBlock:(id)block
{
  v96 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  blockCopy = block;
  if (blockCopy)
  {
    v11 = dispatch_group_create();
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v12 = itemsCopy;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v85, v95, 16);
    if (v14)
    {
      v16 = v14;
      v17 = *v86;
      do
      {
        v18 = 0;
        do
        {
          if (*v86 != v17)
          {
            objc_enumerationMutation(v12);
          }

          objc_msgSend__registerGroup_forItem_(self, v15, v11, *(*(&v85 + 1) + 8 * v18++));
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v85, v95, 16);
      }

      while (v16);
    }

    v20 = IMDIndexingClientRequestQueue(v19);
    dispatch_group_notify(v11, v20, blockCopy);
  }

  if (objc_msgSend_count(itemsCopy, v7, v8, v9))
  {
    if (objc_msgSend_donationInProgress(self, v21, v22, v23))
    {
      v27 = IMCoreDuetLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v31 = objc_msgSend_count(itemsCopy, v28, v29, v30);
        *buf = 134217984;
        v90 = v31;
        _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_DEFAULT, "Donation is in progress, deferring donation of %llu interactions", buf, 0xCu);
      }

      objc_msgSend__deferItems_(self, v32, itemsCopy, v33);
    }

    else
    {
      v34 = objc_msgSend_count(itemsCopy, v24, v25, v26);
      if (v34 > objc_msgSend_donationCount(self, v35, v36, v37))
      {
        v41 = objc_msgSend_donationCount(self, v38, v39, v40);
        v45 = objc_msgSend_count(itemsCopy, v42, v43, v44);
        v49 = objc_msgSend_donationCount(self, v46, v47, v48);
        v51 = objc_msgSend_subarrayWithRange_(itemsCopy, v50, v41, v45 - v49);
        v52 = IMCoreDuetLogHandle();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v56 = objc_msgSend_count(itemsCopy, v53, v54, v55);
          v60 = objc_msgSend_donationCount(self, v57, v58, v59);
          v64 = objc_msgSend_count(v51, v61, v62, v63);
          *buf = 134218496;
          v90 = v56;
          v91 = 2048;
          v92 = v60;
          v93 = 2048;
          v94 = v64;
          _os_log_impl(&dword_1B7AD5000, v52, OS_LOG_TYPE_DEFAULT, "Received a request to index too many items (%llu > %llu), deferring %llu", buf, 0x20u);
        }

        objc_msgSend__deferItems_(self, v65, v51, v66);
        v70 = objc_msgSend_donationCount(self, v67, v68, v69);
        v72 = objc_msgSend_subarrayWithRange_(itemsCopy, v71, 0, v70);

        itemsCopy = v72;
      }

      objc_msgSend__beganDonatingItems(self, v38, v39, v40);
      v73 = IMCoreDuetLogHandle();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v77 = objc_msgSend_count(itemsCopy, v74, v75, v76);
        *buf = 134217984;
        v90 = v77;
        _os_log_impl(&dword_1B7AD5000, v73, OS_LOG_TYPE_DEFAULT, "Going to donate %llu interactions", buf, 0xCu);
      }

      v81 = objc_msgSend_donationBlock(self, v78, v79, v80);
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = sub_1B7B82B24;
      v82[3] = &unk_1E7CBB288;
      itemsCopy = itemsCopy;
      v83 = itemsCopy;
      selfCopy = self;
      (v81)[2](v81, itemsCopy, v82);
    }
  }
}

- (void)donateItems:(id)items completionBlock:(id)block
{
  itemsCopy = items;
  blockCopy = block;
  v11 = objc_msgSend_queue(self, v8, v9, v10);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B82D7C;
  block[3] = &unk_1E7CB71C0;
  block[4] = self;
  v15 = itemsCopy;
  v16 = blockCopy;
  v12 = blockCopy;
  v13 = itemsCopy;
  dispatch_async(v11, block);
}

- (void)_registerGroup:(id)group forItem:(id)item
{
  itemCopy = item;
  groupCopy = group;
  v10 = objc_msgSend_queue(self, v7, v8, v9);
  dispatch_assert_queue_V2(v10);

  v14 = objc_msgSend_pendingGroups(self, v11, v12, v13);
  v17 = objc_msgSend_objectForKey_(v14, v15, itemCopy, v16);

  if (!v17)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = objc_msgSend_pendingGroups(self, v18, v19, v20);
    objc_msgSend_setObject_forKey_(v21, v22, v17, itemCopy);
  }

  dispatch_group_enter(groupCopy);
  objc_msgSend_addObject_(v17, v23, groupCopy, v24);
}

- (void)_leaveGroupsForItems:(id)items
{
  v49 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v8 = objc_msgSend_queue(self, v5, v6, v7);
  dispatch_assert_queue_V2(v8);

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v10 = itemsCopy;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v43, v48, 16);
  if (v12)
  {
    v16 = v12;
    v17 = *v44;
    do
    {
      v18 = 0;
      do
      {
        if (*v44 != v17)
        {
          objc_enumerationMutation(v10);
        }

        v19 = *(*(&v43 + 1) + 8 * v18);
        v20 = objc_msgSend_pendingGroups(self, v13, v14, v15);
        v23 = objc_msgSend_objectForKey_(v20, v21, v19, v22);

        if (v23)
        {
          objc_msgSend_addObjectsFromArray_(v9, v24, v23, v25);
          v29 = objc_msgSend_pendingGroups(self, v26, v27, v28);
          objc_msgSend_removeObjectForKey_(v29, v30, v19, v31);
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v43, v48, 16);
    }

    while (v16);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v32 = v9;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v39, v47, 16);
  if (v34)
  {
    v35 = v34;
    v36 = *v40;
    do
    {
      v37 = 0;
      do
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(v32);
        }

        dispatch_group_leave(*(*(&v39 + 1) + 8 * v37++));
      }

      while (v35 != v37);
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v38, &v39, v47, 16);
    }

    while (v35);
  }
}

@end