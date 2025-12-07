@interface CKPackageDirectoryTable
+ (id)dbProperties;
+ (id)objectClassesForProperty:(id)property;
- (id)extendExpirationOfPackage:(id)package forReference:(id)reference;
- (id)fetchSignatureAndVerificationKey:(id)key;
- (id)finishInitializing;
- (id)packageInfoForNewPackageWithID:(id)d error:(id *)error;
- (id)removeExpiredPackages;
- (id)updateAssetTransferOptions:(id)options;
- (id)updateBoundaryKey:(id)key;
- (id)updatePackageReference:(id)reference;
- (id)updateSignatureAndVerificationKey:(id)key;
@end

@implementation CKPackageDirectoryTable

+ (id)dbProperties
{
  v5[7] = *MEMORY[0x1E69E9840];
  v4[0] = @"packageID";
  v4[1] = @"signature";
  v5[0] = &unk_1EFA84FD8;
  v5[1] = &unk_1EFA84FF0;
  v4[2] = @"verificationKey";
  v4[3] = @"packageReference";
  v5[2] = &unk_1EFA84FF0;
  v5[3] = &unk_1EFA85008;
  v4[4] = @"assetTransferOptions";
  v4[5] = @"boundaryKey";
  v5[4] = &unk_1EFA85008;
  v5[5] = &unk_1EFA84FF0;
  v4[6] = @"expirationDate";
  v5[6] = &unk_1EFA85020;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v5, v4, 7);

  return v2;
}

+ (id)objectClassesForProperty:(id)property
{
  propertyCopy = property;
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___CKPackageDirectoryTable;
  v5 = objc_msgSendSuper2(&v11, sel_objectClassesForProperty_, propertyCopy);
  if ((objc_msgSend_isEqualToString_(propertyCopy, v6, @"assetTransferOptions") & 1) != 0 || objc_msgSend_isEqualToString_(propertyCopy, v7, @"packageReference"))
  {
    v8 = objc_opt_class();
    objc_msgSend_addObject_(v5, v9, v8);
  }

  return v5;
}

- (id)finishInitializing
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_tableGroup(self, a2, v2);
  isFirstInstanceSinceBoot = objc_msgSend_isFirstInstanceSinceBoot(v4, v5, v6);

  if (isFirstInstanceSinceBoot)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = objc_msgSend_db(self, v9, v10);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1885226C8;
    v23[3] = &unk_1E70BC1C8;
    v12 = v8;
    v24 = v12;
    objc_msgSend_enumerateGroupEntriesInDatabase_block_(CKSQLitePackage, v13, v11, v23);

    if (objc_msgSend_count(v12, v14, v15))
    {
      v22 = 0;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_188522720;
      v20[3] = &unk_1E70BC1F0;
      v21 = v12;
      objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v16, 0, 0, &v22, v20);
      v17 = v22;
      if (v17)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v18 = ck_log_facility_package;
        if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v26 = v17;
          _os_log_error_impl(&dword_1883EA000, v18, OS_LOG_TYPE_ERROR, "Failed to remove dangling package info entries: %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)packageInfoForNewPackageWithID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = objc_alloc_init(CKPackageInfo);
  objc_msgSend_setPackageID_(v7, v8, dCopy);

  v11 = objc_msgSend_date(MEMORY[0x1E695DF00], v9, v10);
  objc_msgSend_setExpirationDate_(v7, v12, v11);

  v14 = objc_msgSend_insertObject_(self, v13, v7);
  v15 = v14;
  if (v14)
  {
    if (error)
    {
      v16 = v14;
      *error = v15;
    }

    v7 = 0;
  }

  return v7;
}

- (id)removeExpiredPackages
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = @"EXP_DATE";
  v4 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, v2);
  v16[0] = v4;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v16, &v15, 1);

  v12 = 0;
  v8 = objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v7, v6, 0, &v12, &unk_1EFA2E508);
  v9 = v12;
  if (v8)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_package;
    if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v14 = v8;
      _os_log_fault_impl(&dword_1883EA000, v10, OS_LOG_TYPE_FAULT, "Deleted %llu expired package info entries", buf, 0xCu);
    }
  }

  return v9;
}

- (id)extendExpirationOfPackage:(id)package forReference:(id)reference
{
  v29[1] = *MEMORY[0x1E69E9840];
  packageCopy = package;
  v11 = objc_msgSend_expirationDate(reference, v7, v8);
  if (v11)
  {
    v12 = objc_msgSend_expirationDate(packageCopy, v9, v10);
    v15 = objc_msgSend_laterDate_(v11, v13, v12);
    if (v15 == v11)
    {
      v29[0] = @"expirationDate";
      v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v29, 1);
      objc_msgSend_setExpirationDate_(packageCopy, v18, v11);
      v27[0] = @"PACKAGE_ID";
      v21 = objc_msgSend_packageID(packageCopy, v19, v20);
      v27[1] = @"EXP_DATE";
      v28[0] = v21;
      v28[1] = v11;
      v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v22, v28, v27, 2);

      v26 = 0;
      objc_msgSend_setProperties_valuesToStore_inEntriesMatching_label_error_predicate_(self, v24, v17, packageCopy, v23, off_1EA90EB80, &v26, &unk_1EFA2E528);
      v16 = v26;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)updatePackageReference:(id)reference
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = @"packageReference";
  v4 = MEMORY[0x1E695DEC8];
  referenceCopy = reference;
  v7 = objc_msgSend_arrayWithObjects_count_(v4, v6, &v11, 1);
  v9 = objc_msgSend_updateProperties_usingObject_label_(self, v8, v7, referenceCopy, 0, v11, v12);

  return v9;
}

- (id)updateAssetTransferOptions:(id)options
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = @"assetTransferOptions";
  v4 = MEMORY[0x1E695DEC8];
  optionsCopy = options;
  v7 = objc_msgSend_arrayWithObjects_count_(v4, v6, &v11, 1);
  v9 = objc_msgSend_updateProperties_usingObject_label_(self, v8, v7, optionsCopy, 0, v11, v12);

  return v9;
}

- (id)updateBoundaryKey:(id)key
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = @"boundaryKey";
  v4 = MEMORY[0x1E695DEC8];
  keyCopy = key;
  v7 = objc_msgSend_arrayWithObjects_count_(v4, v6, &v11, 1);
  v9 = objc_msgSend_updateProperties_usingObject_label_(self, v8, v7, keyCopy, 0, v11, v12);

  return v9;
}

- (id)updateSignatureAndVerificationKey:(id)key
{
  v11[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"signature";
  v11[1] = @"verificationKey";
  v4 = MEMORY[0x1E695DEC8];
  keyCopy = key;
  v7 = objc_msgSend_arrayWithObjects_count_(v4, v6, v11, 2);
  v9 = objc_msgSend_updateProperties_usingObject_label_(self, v8, v7, keyCopy, 0);

  return v9;
}

- (id)fetchSignatureAndVerificationKey:(id)key
{
  v11[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"signature";
  v11[1] = @"verificationKey";
  v4 = MEMORY[0x1E695DEC8];
  keyCopy = key;
  v7 = objc_msgSend_arrayWithObjects_count_(v4, v6, v11, 2);
  v9 = objc_msgSend_fetchProperties_inObject_label_(self, v8, v7, keyCopy, 0);

  return v9;
}

@end