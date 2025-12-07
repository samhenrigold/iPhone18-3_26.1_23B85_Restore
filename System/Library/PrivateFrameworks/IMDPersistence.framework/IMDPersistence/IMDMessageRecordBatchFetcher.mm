@interface IMDMessageRecordBatchFetcher
- (IMDMessageRecordBatchFetcher)initWithAssociatedChatGUID:(id)d sortAscending:(BOOL)ascending;
- (IMDMessageRecordBatchFetcher)initWithChatPredicate:(id)predicate sortAscending:(BOOL)ascending;
- (id)_rowIDPredicate;
- (id)nextBatchWithSize:(unint64_t)size;
@end

@implementation IMDMessageRecordBatchFetcher

- (id)_rowIDPredicate
{
  if (objc_msgSend_lastRowID(self, a2, v2, v3) == -1)
  {
    v16 = 0;
  }

  else
  {
    v8 = objc_msgSend_sortAscending(self, v5, v6, v7);
    v9 = MEMORY[0x1E696AE18];
    RowID = objc_msgSend_lastRowID(self, v10, v11, v12);
    if (v8)
    {
      objc_msgSend_predicateWithFormat_(v9, v14, @"%K > %lld", v15, @"rowID", RowID);
    }

    else
    {
      objc_msgSend_predicateWithFormat_(v9, v14, @"%K < %lld", v15, @"rowID", RowID);
    }
    v16 = ;
  }

  return v16;
}

- (IMDMessageRecordBatchFetcher)initWithChatPredicate:(id)predicate sortAscending:(BOOL)ascending
{
  predicateCopy = predicate;
  v11.receiver = self;
  v11.super_class = IMDMessageRecordBatchFetcher;
  v8 = [(IMDRecordBatchFetcher *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_chatPredicate, predicate);
    v9->_sortAscending = ascending;
  }

  return v9;
}

- (IMDMessageRecordBatchFetcher)initWithAssociatedChatGUID:(id)d sortAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  dCopy = d;
  if (dCopy)
  {
    v9 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v6, @"%K = %@", v7, *MEMORY[0x1E69A6B70], dCopy);
  }

  else
  {
    v9 = 0;
  }

  associatedChatGUID = self->_associatedChatGUID;
  self->_associatedChatGUID = dCopy;

  v12 = objc_msgSend_initWithChatPredicate_sortAscending_(self, v11, v9, ascendingCopy);
  return v12;
}

- (id)nextBatchWithSize:(unint64_t)size
{
  v79[2] = *MEMORY[0x1E69E9840];
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = sub_1B7AE18C4;
  v75 = sub_1B7AE2458;
  v76 = 0;
  v5 = objc_alloc(MEMORY[0x1E696AEB0]);
  v9 = objc_msgSend_sortAscending(self, v6, v7, v8);
  v11 = objc_msgSend_initWithKey_ascending_(v5, v10, @"rowID", v9);
  v15 = objc_msgSend__rowIDPredicate(self, v12, v13, v14);
  v19 = objc_msgSend_predicate(self, v16, v17, v18);
  v20 = v19 == 0;

  if (v20)
  {
    v34 = v15;
  }

  else
  {
    if (v15)
    {
      v24 = MEMORY[0x1E696AB28];
      v79[0] = v15;
      v25 = objc_msgSend_predicate(self, v21, v22, v23);
      v79[1] = v25;
      v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v26, v79, 2);
      v30 = objc_msgSend_andPredicateWithSubpredicates_(v24, v28, v27, v29);

      goto LABEL_7;
    }

    v34 = objc_msgSend_predicate(self, v21, v22, v23);
  }

  v30 = v34;
LABEL_7:
  v35 = objc_msgSend_chatPredicate(self, v31, v32, v33);

  objc_msgSend_synchronousDatabase(IMDDatabase, v36, v37, v38);
  if (v35)
    v39 = {;
    v78 = v11;
    v41 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v40, &v78, 1);
    v45 = objc_msgSend_chatPredicate(self, v42, v43, v44);
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = sub_1B7B08264;
    v70[3] = &unk_1E7CB6860;
    v70[4] = &v71;
    objc_msgSend_fetchMessageRecordsFilteredUsingPredicate_sortedUsingDescriptors_inChatsFilteredUsingPredicate_limit_completionHandler_(v39, v46, v30, v41, v45, size, v70);
  }

  else
    v39 = {;
    v77 = v11;
    v41 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v47, &v77, 1);
    v51 = objc_msgSend_parentedOnly(self, v48, v49, v50);
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = sub_1B7B08274;
    v69[3] = &unk_1E7CB6860;
    v69[4] = &v71;
    objc_msgSend_fetchMessageRecordsFilteredUsingPredicate_sortedUsingDescriptors_parentedOnly_limit_completionHandler_(v39, v52, v30, v41, v51, size, v69);
  }

  if (objc_msgSend_count(v72[5], v53, v54, v55))
  {
    v59 = objc_msgSend_lastObject(v72[5], v56, v57, v58);
    v63 = objc_msgSend_rowID(v59, v60, v61, v62);
    objc_msgSend_setLastRowID_(self, v64, v63, v65);
  }

  v66 = v72[5];
  if (!v66)
  {
    v66 = MEMORY[0x1E695E0F0];
  }

  v67 = v66;

  _Block_object_dispose(&v71, 8);

  return v67;
}

@end