@interface CKPackageItemTable
+ (id)dbProperties;
- (id)copyItemsFromPackage:(id)package itemTable:(id)table;
- (id)enumerateItemsInSection:(unint64_t)section withBlock:(id)block;
- (id)resetSectionPlanning;
- (id)updateItem:(id)item withSignature:(id)signature size:(unint64_t)size paddedSize:(unint64_t)paddedSize itemID:(unint64_t)d sectionIndex:(id)index;
- (id)updateItemsAtIndexes:(id)indexes fileURLs:(id)ls;
- (unint64_t)paddedSizeOfSectionAtIndex:(unint64_t)index error:(id *)error;
- (unint64_t)sizeOfSectionAtIndex:(unint64_t)index error:(id *)error;
@end

@implementation CKPackageItemTable

+ (id)dbProperties
{
  v5[12] = *MEMORY[0x1E69E9840];
  v4[0] = @"packageItemID";
  v4[1] = @"itemID";
  v5[0] = &unk_1EFA84F30;
  v5[1] = &unk_1EFA84F60;
  v4[2] = @"fileURL";
  v4[3] = @"signature";
  v5[2] = &unk_1EFA84F78;
  v5[3] = &unk_1EFA84F48;
  v4[4] = @"deviceID";
  v4[5] = @"fileID";
  v5[4] = &unk_1EFA84F90;
  v5[5] = &unk_1EFA84F90;
  v4[6] = @"generationID";
  v4[7] = @"size";
  v5[6] = &unk_1EFA84F90;
  v5[7] = &unk_1EFA84F60;
  v4[8] = @"paddedSize";
  v4[9] = @"offset";
  v5[8] = &unk_1EFA84F60;
  v5[9] = &unk_1EFA84F60;
  v4[10] = @"sectionIndex";
  v4[11] = @"itemTypeHint";
  v5[10] = &unk_1EFA84FA8;
  v5[11] = &unk_1EFA84FC0;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v5, v4, 12);

  return v2;
}

- (id)resetSectionPlanning
{
  v11[5] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(CKPackageItem);
  v11[0] = @"signature";
  v11[1] = @"itemID";
  v11[2] = @"size";
  v11[3] = @"paddedSize";
  v11[4] = @"sectionIndex";
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v11, 5);
  v10 = 0;
  objc_msgSend_setProperties_valuesToStore_inEntriesMatching_label_error_predicate_(self, v6, v5, v3, 0, 0, &v10, 0);
  v7 = v10;
  v8 = v10;

  return v7;
}

- (unint64_t)sizeOfSectionAtIndex:(unint64_t)index error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = @"SECTION";
  v6 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, index);
  v13[0] = v6;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v13, &v12, 1);

  v10 = objc_msgSend_sumOfProperty_inEntriesMatching_label_error_predicate_(self, v9, @"size", v8, off_1EA90EB08, error, &unk_1EFA2E4A8);
  return v10;
}

- (unint64_t)paddedSizeOfSectionAtIndex:(unint64_t)index error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = @"SECTION";
  v6 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, index);
  v13[0] = v6;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v13, &v12, 1);

  v10 = objc_msgSend_sumOfProperty_inEntriesMatching_label_error_predicate_(self, v9, @"paddedSize", v8, off_1EA90EB20, error, &unk_1EFA2E4C8);
  return v10;
}

- (id)updateItem:(id)item withSignature:(id)signature size:(unint64_t)size paddedSize:(unint64_t)paddedSize itemID:(unint64_t)d sectionIndex:(id)index
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = @"signature";
  v29 = @"size";
  v30 = @"paddedSize";
  v31 = @"itemID";
  v32 = @"sectionIndex";
  v14 = MEMORY[0x1E695DEC8];
  indexCopy = index;
  signatureCopy = signature;
  itemCopy = item;
  v19 = objc_msgSend_arrayWithObjects_count_(v14, v18, &v28, 5);
  objc_msgSend_setSignature_(itemCopy, v20, signatureCopy, v28, v29, v30, v31, v32, v33);

  objc_msgSend_setSize_(itemCopy, v21, size);
  objc_msgSend_setPaddedSize_(itemCopy, v22, paddedSize);
  objc_msgSend_setItemID_(itemCopy, v23, d);
  objc_msgSend_setSectionIndex_(itemCopy, v24, indexCopy);

  v26 = objc_msgSend_updateProperties_usingObject_label_(self, v25, v19, itemCopy, off_1EA90EB38);

  return v26;
}

- (id)updateItemsAtIndexes:(id)indexes fileURLs:(id)ls
{
  v25[1] = *MEMORY[0x1E69E9840];
  indexesCopy = indexes;
  lsCopy = ls;
  v25[0] = @"fileURL";
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v25, 1);
  v12 = objc_msgSend_count(indexesCopy, v10, v11);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_188520890;
  v19[3] = &unk_1E70BC108;
  v23 = v9;
  v24 = v12;
  v20 = indexesCopy;
  v21 = lsCopy;
  selfCopy = self;
  v13 = v9;
  v14 = lsCopy;
  v15 = indexesCopy;
  v17 = objc_msgSend_performInTransaction_(self, v16, v19);

  return v17;
}

- (id)enumerateItemsInSection:(unint64_t)section withBlock:(id)block
{
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_188520A38;
  v11[3] = &unk_1E70BC150;
  v12 = blockCopy;
  sectionCopy = section;
  v11[4] = self;
  v7 = blockCopy;
  v9 = objc_msgSend_performInTransaction_(self, v8, v11);

  return v9;
}

- (id)copyItemsFromPackage:(id)package itemTable:(id)table
{
  tableCopy = table;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_188520CC4;
  v10[3] = &unk_1E70BC178;
  v11 = tableCopy;
  selfCopy = self;
  v6 = tableCopy;
  v8 = objc_msgSend_performTransaction_(self, v7, v10);

  return v8;
}

@end