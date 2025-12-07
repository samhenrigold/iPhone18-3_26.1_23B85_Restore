@interface CSUSearchableKnowledgeObjectStore
- (BOOL)countEntries:(unint64_t *)entries error:(id *)error;
- (BOOL)deleteAllEntities:(id *)entities;
- (BOOL)deleteEntityForIdentifier:(unint64_t)identifier idType:(signed __int16)type error:(id *)error;
- (BOOL)fetchMetadataToMemory:(id *)memory;
- (BOOL)initDB:(id)b atURL:(id)l error:(id *)error;
- (BOOL)saveDatabase:(id)database error:(id *)error;
- (BOOL)saveMetadataToStore:(id *)store;
- (BOOL)setTaxonomyVersion:(int)version error:(id *)error;
- (BOOL)storeEntity:(id)entity uniqueIdWriteback:(unint64_t *)writeback error:(id *)error;
- (id)entityForIdentifier:(unint64_t)identifier idType:(signed __int16)type error:(id *)error;
- (id)entityForIdentifier:(unint64_t)identifier idType:(signed __int16)type locale:(id)locale error:(id *)error;
- (id)fetchEntitiesWithPredicate:(id)predicate error:(id *)error;
- (id)getDbObjectByIdentifier:(unint64_t)identifier idType:(signed __int16)type context:(id)context error:(id *)error;
- (id)getStore:(id *)store;
- (id)initDB:(id)b atPath:(id)path error:(id *)error;
- (id)initDB:(id)b error:(id *)error;
- (id)initExistingDB:(id)b atPath:(id)path error:(id *)error;
- (id)initExistingDB:(id)b error:(id *)error;
- (int)getTaxonomyVersion:(id *)version;
@end

@implementation CSUSearchableKnowledgeObjectStore

- (id)initDB:(id)b atPath:(id)path error:(id *)error
{
  bCopy = b;
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = CSUSearchableKnowledgeObjectStore;
  v12 = [(CSUSearchableKnowledgeObjectStore *)&v17 init];
  if (v12)
  {
    v13 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v10, pathCopy, 1, v11);
    if (objc_msgSend_initDB_atURL_error_(v12, v14, bCopy, v13, error))
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)initExistingDB:(id)b atPath:(id)path error:(id *)error
{
  v40[1] = *MEMORY[0x1E69E9840];
  bCopy = b;
  pathCopy = path;
  if (pathCopy)
  {
    v34.receiver = self;
    v34.super_class = CSUSearchableKnowledgeObjectStore;
    v15 = [(CSUSearchableKnowledgeObjectStore *)&v34 init];
    if (v15)
    {
      v16 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v11, v12, v13, v14);
      if (objc_msgSend_fileExistsAtPath_(v16, v17, pathCopy, v18, v19))
      {
        v24 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v20, pathCopy, v21, v22);
        if (v24)
        {
          if (objc_msgSend_initDB_atURL_error_(v15, v23, bCopy, v24, error))
          {
            v25 = v15;
            goto LABEL_17;
          }
        }

        else if (error)
        {
          v30 = MEMORY[0x1E696ABC0];
          v35 = *MEMORY[0x1E696A578];
          v36 = @"Invalid path. Failed to create fileUrl from path.";
          v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v23, &v36, &v35, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v30, v32, @"com.apple.coresceneunderstanding", 15, v31);
        }

        v25 = 0;
        goto LABEL_17;
      }

      if (!error)
      {
        v25 = 0;
LABEL_18:
        self = v15;
        goto LABEL_19;
      }

      v28 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696A578];
      v38 = @"File does not exist.";
      v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v20, &v38, &v37, 1);
      objc_msgSend_errorWithDomain_code_userInfo_(v28, v29, @"com.apple.coresceneunderstanding", 15, v24);
      *error = v25 = 0;
LABEL_17:

      goto LABEL_18;
    }

    self = 0;
  }

  else if (error)
  {
    v26 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A578];
    v40[0] = @"File path is empty.";
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v40, &v39, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v26, v27, @"com.apple.coresceneunderstanding", 15, v16);
    *error = v25 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v25 = 0;
LABEL_20:

  return v25;
}

- (id)initExistingDB:(id)b error:(id *)error
{
  v7 = objc_msgSend_stringByAppendingPathComponent_(b, a2, @"CSUTaxonomy.sqlite", error, v4);
  inited = objc_msgSend_initExistingDB_atPath_error_(self, v8, @"CSUTaxonomy", v7, error);

  return inited;
}

- (id)initDB:(id)b error:(id *)error
{
  v7 = objc_msgSend_stringByAppendingPathComponent_(b, a2, @"CSUTaxonomy.sqlite", error, v4);
  inited = objc_msgSend_initDB_atPath_error_(self, v8, @"CSUTaxonomy", v7, error);

  return inited;
}

- (id)getStore:(id *)store
{
  v6 = objc_msgSend_persistentContainer(self, a2, store, v3, v4);
  v11 = objc_msgSend_persistentStoreCoordinator(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_persistentStores(v11, v12, v13, v14, v15);
  v21 = objc_msgSend_firstObject(v16, v17, v18, v19, v20);

  if (v21)
  {
    v25 = v21;
  }

  else if (store)
  {
    *store = objc_msgSend_errorForDatabase_(CSUError, v22, @"Failed to load persistent store", v23, v24);
  }

  return v21;
}

- (BOOL)fetchMetadataToMemory:(id *)memory
{
  v5 = objc_msgSend_getStore_(self, a2, memory, v3, v4);
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_metadata(v5, v6, v7, v8, v9);
    v16 = objc_msgSend_mutableCopy(v11, v12, v13, v14, v15);
    v17 = qword_1ED44E2F8;
    qword_1ED44E2F8 = v16;

    if (!qword_1ED44E2F8)
    {
      v22 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v18, v19, v20, v21);
      v23 = qword_1ED44E2F8;
      qword_1ED44E2F8 = v22;
    }
  }

  return v10 != 0;
}

- (BOOL)saveMetadataToStore:(id *)store
{
  v5 = objc_msgSend_getStore_(self, a2, store, v3, v4);
  v9 = v5;
  if (v5)
  {
    objc_msgSend_setMetadata_(v5, v6, qword_1ED44E2F8, v7, v8);
  }

  return v9 != 0;
}

- (BOOL)initDB:(id)b atURL:(id)l error:(id *)error
{
  v72[1] = *MEMORY[0x1E69E9840];
  bCopy = b;
  lCopy = l;
  v10 = MEMORY[0x1E696AAE8];
  v11 = objc_opt_class();
  v15 = objc_msgSend_bundleForClass_(v10, v12, v11, v13, v14);
  v21 = objc_msgSend_URLForResource_withExtension_(v15, v16, @"CSUSearchableObjectKnowledgeStorage", @"momd", v17);
  if (v21)
  {
    v22 = objc_alloc(MEMORY[0x1E695D638]);
    v29 = objc_msgSend_initWithContentsOfURL_(v22, v23, v21, v24, v25);
    if (v29)
    {
      v30 = objc_msgSend_persistentContainerWithName_managedObjectModel_(MEMORY[0x1E695D688], v26, bCopy, v29, v28);
      objc_msgSend_setPersistentContainer_(self, v31, v30, v32, v33);

      v34 = objc_alloc(MEMORY[0x1E695D6C8]);
      v38 = objc_msgSend_initWithURL_(v34, v35, lCopy, v36, v37);
      v72[0] = v38;
      v41 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v39, v72, 1, v40);
      v46 = objc_msgSend_persistentContainer(self, v42, v43, v44, v45);
      objc_msgSend_setPersistentStoreDescriptions_(v46, v47, v41, v48, v49);

      v66 = 0;
      v67 = &v66;
      v68 = 0x3032000000;
      v69 = sub_1AC08514C;
      v70 = sub_1AC08515C;
      v71 = 0;
      v50 = dispatch_semaphore_create(0);
      v55 = objc_msgSend_persistentContainer(self, v51, v52, v53, v54);
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = sub_1AC085164;
      v63[3] = &unk_1E7967EF0;
      v65 = &v66;
      v56 = v50;
      v64 = v56;
      objc_msgSend_loadPersistentStoresWithCompletionHandler_(v55, v57, v63, v58, v59);

      dispatch_semaphore_wait(v56, 0xFFFFFFFFFFFFFFFFLL);
      v60 = v67[5];
      v61 = v60 == 0;
      if (error && v60)
      {
        *error = v60;
      }

      _Block_object_dispose(&v66, 8);
    }

    else if (error)
    {
      objc_msgSend_errorForDatabase_(CSUError, v26, @"Failed to load model from url", v27, v28);
      *error = v61 = 0;
    }

    else
    {
      v61 = 0;
    }
  }

  else if (error)
  {
    objc_msgSend_errorForDatabase_(CSUError, v18, @"Error getting modelURL", v19, v20);
    *error = v61 = 0;
  }

  else
  {
    v61 = 0;
  }

  return v61;
}

- (id)getDbObjectByIdentifier:(unint64_t)identifier idType:(signed __int16)type context:(id)context error:(id *)error
{
  typeCopy = type;
  contextCopy = context;
  UniqueDbId_idType = objc_msgSend_getUniqueDbId_idType_(CSUSearchableKnowledgeDBObject, v10, identifier, typeCopy, v11);
  v16 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x1E695D5E0], v13, @"CSUSearchableKnowledgeDBObject", v14, v15);
  v20 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v17, @"dbUniqueId == %lld", v18, v19, UniqueDbId_idType);
  objc_msgSend_setPredicate_(v16, v21, v20, v22, v23);
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_1AC08514C;
  v55 = sub_1AC08515C;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_1AC08514C;
  v49 = sub_1AC08515C;
  v50 = 0;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = sub_1AC0854A4;
  v40[3] = &unk_1E7967F18;
  v43 = &v45;
  v24 = contextCopy;
  v41 = v24;
  v25 = v16;
  v42 = v25;
  v44 = &v51;
  objc_msgSend_performBlockAndWait_(v24, v26, v40, v27, v28);
  v33 = v46[5];
  if (v33)
  {
    if (objc_msgSend_count(v33, v29, v30, v31, v32))
    {
      v38 = objc_msgSend_firstObject(v46[5], v34, v35, v36, v37);
      goto LABEL_7;
    }
  }

  else if (error)
  {
    v38 = 0;
    *error = v52[5];
    goto LABEL_7;
  }

  v38 = 0;
LABEL_7:

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);

  return v38;
}

- (BOOL)saveDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1AC08514C;
  v28 = sub_1AC08515C;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (byte_1EB54A598 == 1)
  {
    objc_msgSend_saveMetadataToStore_(self, v6, error, v7, v8);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1AC0856C4;
  v16[3] = &unk_1E7967F40;
  v10 = databaseCopy;
  v17 = v10;
  v18 = &v20;
  v19 = &v24;
  objc_msgSend_performBlockAndWait_(v10, v11, v16, v12, v13);
  v14 = *(v21 + 24);
  if (v14)
  {
    byte_1EB54A598 = 0;
  }

  else if (error)
  {
    *error = v25[5];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v14;
}

- (id)fetchEntitiesWithPredicate:(id)predicate error:(id *)error
{
  v89 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v49 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x1E695D5E0], v5, @"CSUSearchableKnowledgeDBObject", v6, v7);
  objc_msgSend_setPredicate_(v49, v8, predicateCopy, v9, v10);
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = sub_1AC08514C;
  v86 = sub_1AC08515C;
  v87 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = sub_1AC08514C;
  v80 = sub_1AC08515C;
  v81 = 0;
  v15 = objc_msgSend_persistentContainer(self, v11, v12, v13, v14);
  v20 = objc_msgSend_newBackgroundContext(v15, v16, v17, v18, v19);

  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = sub_1AC085C90;
  v71[3] = &unk_1E7967F18;
  v74 = &v76;
  v72 = v20;
  v21 = v49;
  v73 = v21;
  v75 = &v82;
  v52 = v72;
  objc_msgSend_performBlockAndWait_(v72, v22, v71, v23, v24);
  v47 = v21;
  if (v77[5])
  {
    v29 = objc_msgSend_array(MEMORY[0x1E695DF70], v25, v26, v27, v28);
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v77[5];
    v53 = v29;
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v67, v88, 16);
    if (v34)
    {
      v35 = *v68;
LABEL_4:
      v36 = 0;
      while (1)
      {
        if (*v68 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v67 + 1) + 8 * v36);
        v61 = 0;
        v62 = &v61;
        v63 = 0x3032000000;
        v64 = sub_1AC08514C;
        v65 = sub_1AC08515C;
        v66 = 0;
        v55 = 0;
        v56 = &v55;
        v57 = 0x3032000000;
        v58 = sub_1AC08514C;
        v59 = sub_1AC08515C;
        v60 = 0;
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = sub_1AC085D08;
        v54[3] = &unk_1E7967F40;
        v54[4] = v37;
        v54[5] = &v61;
        v54[6] = &v55;
        objc_msgSend_performBlockAndWait_(v52, v31, v54, v32, v33);
        v41 = v62[5];
        if (v41)
        {
          objc_msgSend_addObject_(v53, v38, v62[5], v39, v40);
        }

        else
        {
          if (error)
          {
            *error = v56[5];
          }

          v53 = 0;
        }

        _Block_object_dispose(&v55, 8);

        _Block_object_dispose(&v61, 8);
        if (!v41)
        {
          break;
        }

        if (v34 == ++v36)
        {
          v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v67, v88, 16);
          if (v34)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v45 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DEC8], v42, v53, v43, v44);
  }

  else
  {
    v45 = 0;
    if (error)
    {
      *error = v83[5];
    }
  }

  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v82, 8);

  return v45;
}

- (BOOL)storeEntity:(id)entity uniqueIdWriteback:(unint64_t *)writeback error:(id *)error
{
  entityCopy = entity;
  v13 = objc_msgSend_persistentContainer(self, v9, v10, v11, v12);
  v18 = objc_msgSend_newBackgroundContext(v13, v14, v15, v16, v17);

  v23 = objc_msgSend_qid(entityCopy, v19, v20, v21, v22);
  v28 = objc_msgSend_idType(entityCopy, v24, v25, v26, v27);
  v30 = objc_msgSend_getDbObjectByIdentifier_idType_context_error_(self, v29, v23, v28, v18, error);
  v34 = v30;
  if (v30)
  {
    objc_msgSend_copyFromEntity_(v30, v31, entityCopy, v32, v33);
  }

  else
  {
    v37 = objc_msgSend_insertNewObjectForEntityForName_inManagedObjectContext_(MEMORY[0x1E695D5B8], v31, @"CSUSearchableKnowledgeDBObject", v18, v33);
    objc_msgSend_copyFromEntity_(v37, v38, entityCopy, v39, v40);
  }

  v45 = objc_msgSend_saveDatabase_error_(self, v35, v18, error, v36);
  v46 = v45 ^ 1;
  if (!writeback)
  {
    v46 = 1;
  }

  if ((v46 & 1) == 0)
  {
    v47 = objc_msgSend_qid(entityCopy, v41, v42, v43, v44);
    v52 = objc_msgSend_idType(entityCopy, v48, v49, v50, v51);
    *writeback = objc_msgSend_getUniqueDbId_idType_(CSUSearchableKnowledgeDBObject, v53, v47, v52, v54);
  }

  return v45;
}

- (id)entityForIdentifier:(unint64_t)identifier idType:(signed __int16)type locale:(id)locale error:(id *)error
{
  v6 = objc_msgSend_entityForIdentifier_idType_error_(self, a2, identifier, type, error);

  return v6;
}

- (id)entityForIdentifier:(unint64_t)identifier idType:(signed __int16)type error:(id *)error
{
  typeCopy = type;
  v9 = objc_msgSend_persistentContainer(self, a2, identifier, type, error);
  v14 = objc_msgSend_newBackgroundContext(v9, v10, v11, v12, v13);

  v16 = objc_msgSend_getDbObjectByIdentifier_idType_context_error_(self, v15, identifier, typeCopy, v14, error);
  v17 = v16;
  if (v16)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = sub_1AC08514C;
    v38 = sub_1AC08515C;
    v39 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_1AC08514C;
    v32 = sub_1AC08515C;
    v33 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1AC086190;
    v24[3] = &unk_1E7967F40;
    v25 = v16;
    v26 = &v34;
    v27 = &v28;
    objc_msgSend_performBlockAndWait_(v14, v18, v24, v19, v20);
    v21 = v35[5];
    if (v21)
    {
      v22 = v21;
    }

    else if (error)
    {
      *error = v29[5];
    }

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)deleteEntityForIdentifier:(unint64_t)identifier idType:(signed __int16)type error:(id *)error
{
  typeCopy = type;
  v9 = objc_msgSend_persistentContainer(self, a2, identifier, type, error);
  v14 = objc_msgSend_newBackgroundContext(v9, v10, v11, v12, v13);

  v16 = objc_msgSend_getDbObjectByIdentifier_idType_context_error_(self, v15, identifier, typeCopy, v14, error);
  if (v16)
  {
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = sub_1AC086368;
    v28 = &unk_1E7967F68;
    v17 = v14;
    v29 = v17;
    v30 = v16;
    objc_msgSend_performBlockAndWait_(v17, v18, &v25, v19, v20);
    v23 = objc_msgSend_saveDatabase_error_(self, v21, v17, error, v22, v25, v26, v27, v28);
  }

  else
  {
    v23 = 1;
  }

  return v23;
}

- (BOOL)deleteAllEntities:(id *)entities
{
  v7 = objc_msgSend_fetchRequest(CSUSearchableKnowledgeDBObject, a2, entities, v3, v4);
  v8 = objc_alloc(MEMORY[0x1E695D538]);
  Request = objc_msgSend_initWithFetchRequest_(v8, v9, v7, v10, v11);
  v17 = objc_msgSend_persistentContainer(self, v13, v14, v15, v16);
  v22 = objc_msgSend_newBackgroundContext(v17, v18, v19, v20, v21);

  v33 = 0;
  v25 = objc_msgSend_executeRequest_error_(v22, v23, Request, &v33, v24);
  v26 = v33;
  v29 = v26;
  if (v26)
  {
    if (entities)
    {
      v30 = v26;
      v31 = 0;
      *entities = v29;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = objc_msgSend_saveDatabase_error_(self, v27, v22, entities, v28);
  }

  return v31;
}

- (BOOL)countEntries:(unint64_t *)entries error:(id *)error
{
  v8 = objc_msgSend_fetchRequest(CSUSearchableKnowledgeDBObject, a2, entries, error, v4);
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1AC08514C;
  v40 = sub_1AC08515C;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v13 = objc_msgSend_persistentContainer(self, v9, v10, v11, v12);
  v18 = objc_msgSend_newBackgroundContext(v13, v14, v15, v16, v17);

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1AC0866A4;
  v27[3] = &unk_1E7967F18;
  v30 = &v32;
  v19 = v18;
  v28 = v19;
  v20 = v8;
  v29 = v20;
  v31 = &v36;
  objc_msgSend_performBlockAndWait_(v19, v21, v27, v22, v23);
  *entries = v33[3];
  v24 = v37[5];
  if (error && v24)
  {
    v24 = v24;
    *error = v24;
  }

  v25 = v24 == 0;

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v25;
}

- (int)getTaxonomyVersion:(id *)version
{
  v6 = qword_1ED44E2F8;
  if (!qword_1ED44E2F8)
  {
    if (!objc_msgSend_fetchMetadataToMemory_(self, a2, version, v3, v4))
    {
      return 0;
    }

    v6 = qword_1ED44E2F8;
  }

  v7 = objc_msgSend_objectForKeyedSubscript_(v6, a2, @"TaxonomyVersion", v3, v4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = objc_msgSend_integerValue(v7, v8, v9, v10, v11);

    return v12;
  }

  else
  {

    return 0;
  }
}

- (BOOL)setTaxonomyVersion:(int)version error:(id *)error
{
  errorCopy = error;
  v6 = *&version;
  v51[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED44E2F8 || (objc_msgSend_fetchMetadataToMemory_(self, a2, error, error, v4) & 1) == 0)
  {
    v8 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], a2, v6, error, v4);
    v12 = objc_msgSend_objectForKeyedSubscript_(qword_1ED44E2F8, v9, @"TaxonomyVersion", v10, v11);
    v17 = objc_msgSend_intValue(v12, v13, v14, v15, v16);

    if (v17 <= v6)
    {
      v31 = objc_msgSend_objectForKeyedSubscript_(qword_1ED44E2F8, v18, @"TaxonomyVersion", v19, v20);

      if (v31 == v8)
      {
        LOBYTE(errorCopy) = 1;
        goto LABEL_12;
      }

      objc_msgSend_setObject_forKeyedSubscript_(qword_1ED44E2F8, v32, v8, @"TaxonomyVersion", v33);
      if (!objc_msgSend_saveMetadataToStore_(self, v34, errorCopy, v35, v36))
      {
        goto LABEL_10;
      }

      byte_1EB54A598 = 1;
      v41 = objc_msgSend_persistentContainer(self, v37, v38, v39, v40);
      v46 = objc_msgSend_newBackgroundContext(v41, v42, v43, v44, v45);

      LOBYTE(errorCopy) = objc_msgSend_saveDatabase_error_(self, v47, v46, errorCopy, v48);
    }

    else if (errorCopy)
    {
      v21 = MEMORY[0x1E696AEC0];
      v22 = objc_msgSend_objectForKeyedSubscript_(qword_1ED44E2F8, v18, @"TaxonomyVersion", v19, v20);
      v26 = objc_msgSend_stringWithFormat_(v21, v23, @"Setting version is too old. Already on %@, but setting to %d", v24, v25, v22, v6);

      v27 = MEMORY[0x1E696ABC0];
      v50 = *MEMORY[0x1E696A578];
      v51[0] = v26;
      v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v28, v51, &v50, 1);
      *errorCopy = objc_msgSend_errorWithDomain_code_userInfo_(v27, v30, @"com.apple.coresceneunderstanding", 17, v29);

LABEL_10:
      LOBYTE(errorCopy) = 0;
    }

LABEL_12:

    return errorCopy;
  }

  LOBYTE(errorCopy) = 0;
  return errorCopy;
}

@end