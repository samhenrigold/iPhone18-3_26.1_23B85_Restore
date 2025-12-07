@interface CKPackageTableBase
- (id)entryWithIndex:(unint64_t)index error:(id *)error;
- (id)fetchEntryBatchWithStartingIndex:(unint64_t)index error:(id *)error;
- (id)finishInitializing;
- (id)insertObject:(id)object;
@end

@implementation CKPackageTableBase

- (id)finishInitializing
{
  v4 = objc_msgSend_tableGroup(self, a2, v2);
  isNew = objc_msgSend_isNew(v4, v5, v6);

  if (isNew)
  {
    v10 = 0;
    self->_nextIndex = 0;
  }

  else
  {
    v11 = objc_msgSend_primaryKey(self, v8, v9);
    v18 = 0;
    v13 = objc_msgSend_maximumValueOfProperty_label_error_(self, v12, v11, 0, &v18);
    v10 = v18;

    if (v13)
    {
      v16 = objc_msgSend_unsignedLongLongValue(v13, v14, v15) + 1;
    }

    else
    {
      v16 = 0;
    }

    self->_nextIndex = v16;
  }

  return v10;
}

- (id)insertObject:(id)object
{
  objectCopy = object;
  v7 = objc_msgSend_primaryKey(self, v5, v6);
  v8 = objc_opt_class();
  v10 = objc_msgSend_propertyInfo_(v8, v9, v7);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_18851F928;
  v16[3] = &unk_1E70BC070;
  v16[4] = self;
  v17 = v7;
  v19 = v10;
  v18 = objectCopy;
  v11 = objectCopy;
  v12 = v7;
  v14 = objc_msgSend_performInTransaction_(self, v13, v16);

  return v14;
}

- (id)entryWithIndex:(unint64_t)index error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  v22 = @"ENTRYINDEX";
  v6 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, index);
  v23[0] = v6;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v23, &v22, 1);

  v11 = objc_msgSend_primaryKey(self, v9, v10);
  v21 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_18851FC58;
  v19[3] = &unk_1E70BC098;
  v12 = v11;
  v20 = v12;
  v14 = objc_msgSend_entryWithValues_label_error_setupBlock_(self, v13, v8, off_1EA90EAC0, &v21, v19);
  v15 = v21;
  v16 = v15;
  if (v15)
  {
    if (error)
    {
      v17 = v15;
      *error = v16;
    }

    v14 = 0;
  }

  return v14;
}

- (id)fetchEntryBatchWithStartingIndex:(unint64_t)index error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1883ED844;
  v24 = sub_1883EF578;
  v25 = 0;
  v26 = @"STARTINDEX";
  v6 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, index);
  v27[0] = v6;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v27, &v26, 1);

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_18851FEB8;
  v17[3] = &unk_1E70BC0C0;
  v17[4] = self;
  v9 = v8;
  v18 = v9;
  v19 = &v20;
  v11 = objc_msgSend_performInTransaction_(self, v10, v17);
  v12 = v11;
  if (error && v11)
  {
    v13 = v11;
    *error = v12;
    v14 = v21[5];
    v21[5] = 0;
  }

  v15 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v15;
}

@end