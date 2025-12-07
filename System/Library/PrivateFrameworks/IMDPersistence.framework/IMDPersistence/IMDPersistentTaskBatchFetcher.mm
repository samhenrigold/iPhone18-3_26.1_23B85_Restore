@interface IMDPersistentTaskBatchFetcher
- (id)nextBatchWithSize:(unint64_t)size;
@end

@implementation IMDPersistentTaskBatchFetcher

- (id)nextBatchWithSize:(unint64_t)size
{
  v61[2] = *MEMORY[0x1E69E9840];
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_1B7AE1964;
  v58 = sub_1B7AE24B8;
  v59 = 0;
  v5 = objc_alloc(MEMORY[0x1E696AEB0]);
  v7 = objc_msgSend_initWithKey_ascending_(v5, v6, @"r", 1);
  v8 = MEMORY[0x1E696AE18];
  RowID = objc_msgSend_lastRowID(self, v9, v10, v11);
  v15 = objc_msgSend_predicateWithFormat_(v8, v13, @"%K > %lld", v14, @"r", RowID);
  v19 = objc_msgSend_predicate(self, v16, v17, v18);
  LOBYTE(v8) = v19 == 0;

  if (v8)
  {
    v29 = v15;
  }

  else
  {
    v23 = MEMORY[0x1E696AB28];
    v61[0] = v15;
    v24 = objc_msgSend_predicate(self, v20, v21, v22);
    v61[1] = v24;
    v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v25, v61, 2);
    v29 = objc_msgSend_andPredicateWithSubpredicates_(v23, v27, v26, v28);
  }

  v33 = objc_msgSend_synchronousPTaskQueryProvider(IMDPersistenceService, v30, v31, v32);
  v60 = v7;
  v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v34, &v60, 1);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = sub_1B7B43FCC;
  v53[3] = &unk_1E7CB6860;
  v53[4] = &v54;
  objc_msgSend_loadPTasksWithPredicate_sortDescriptors_limit_completionBlock_(v33, v36, v29, v35, size, v53);

  if (objc_msgSend_count(v55[5], v37, v38, v39))
  {
    v43 = objc_msgSend_lastObject(v55[5], v40, v41, v42);
    v47 = objc_msgSend_rowID(v43, v44, v45, v46);
    objc_msgSend_setLastRowID_(self, v48, v47, v49);
  }

  v50 = v55[5];
  if (!v50)
  {
    v50 = MEMORY[0x1E695E0F0];
  }

  v51 = v50;

  _Block_object_dispose(&v54, 8);

  return v51;
}

@end