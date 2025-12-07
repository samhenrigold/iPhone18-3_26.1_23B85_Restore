@interface REMTemplateSectionsDataView
- (REMTemplateSectionsDataView)initWithStore:(id)store;
- (id)fetchTemplateSectionWithObjectID:(id)d error:(id *)error;
- (id)fetchTemplateSectionsInTemplate:(id)template error:(id *)error;
- (id)fetchTemplateSectionsWithObjectIDs:(id)ds error:(id *)error;
- (id)fetchTemplateSectionsWithTemplateObjectID:(id)d error:(id *)error;
- (id)templateSectionsFromTemplateStorages:(id)storages templateSectionStorages:(id)sectionStorages store:(id)store;
@end

@implementation REMTemplateSectionsDataView

- (REMTemplateSectionsDataView)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = REMTemplateSectionsDataView;
  v6 = [(REMTemplateSectionsDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (id)fetchTemplateSectionsWithTemplateObjectID:(id)d error:(id *)error
{
  dCopy = d;
  if (dCopy)
  {
    v8 = [[REMTemplateSectionsDataViewInvocation_fetchTemplateSectionsInTemplate alloc] initWithParentTemplateObjectID:dCopy];
    store = [(REMTemplateSectionsDataView *)self store];
    v10 = [store resultFromPerformingInvocation:v8 error:error];

    v11 = objc_opt_class();
    v12 = REMDynamicCast(v11, v10);
    templateStorages = [v12 templateStorages];
    templateSectionStorages = [v12 templateSectionStorages];
    store2 = [(REMTemplateSectionsDataView *)self store];
    v16 = [(REMTemplateSectionsDataView *)self templateSectionsFromTemplateStorages:templateStorages templateSectionStorages:templateSectionStorages store:store2];
  }

  else
  {
    v17 = +[REMLogStore read];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [REMTemplateSectionsDataView fetchTemplateSectionsWithTemplateObjectID:a2 error:?];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "templateObjectID");
    v16 = 0;
  }

  return v16;
}

- (id)fetchTemplateSectionsInTemplate:(id)template error:(id *)error
{
  objectID = [template objectID];
  v7 = [(REMTemplateSectionsDataView *)self fetchTemplateSectionsWithTemplateObjectID:objectID error:error];

  return v7;
}

- (id)fetchTemplateSectionsWithObjectIDs:(id)ds error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v8 = dsCopy;
  if (dsCopy)
  {
    if ([dsCopy count])
    {
      v9 = [[REMTemplateSectionsDataViewInvocation_fetchByObjectIDs alloc] initWithObjectIDs:v8];
      store = [(REMTemplateSectionsDataView *)self store];
      v11 = [store resultFromPerformingInvocation:v9 error:error];

      v12 = objc_opt_class();
      v13 = REMDynamicCast(v12, v11);
      templateStorages = [v13 templateStorages];
      templateSectionStorages = [v13 templateSectionStorages];
      store2 = [(REMTemplateSectionsDataView *)self store];
      v17 = [(REMTemplateSectionsDataView *)self templateSectionsFromTemplateStorages:templateStorages templateSectionStorages:templateSectionStorages store:store2];

      if (v17)
      {
        v28 = v11;
        v29 = v9;
        v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v17, "count")}];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v19 = v17;
        v20 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v31;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v31 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v30 + 1) + 8 * i);
              objectID = [v24 objectID];
              [v18 setObject:v24 forKeyedSubscript:objectID];
            }

            v21 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v21);
        }

        v11 = v28;
        v9 = v29;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = MEMORY[0x1E695E0F8];
    }
  }

  else
  {
    v26 = +[REMLogStore read];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      [REMTemplateSectionsDataView fetchTemplateSectionsWithObjectIDs:a2 error:?];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "objectIDs");
    v18 = 0;
  }

  return v18;
}

- (id)fetchTemplateSectionWithObjectID:(id)d error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v8 = dCopy;
  if (dCopy)
  {
    v15[0] = dCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v10 = [(REMTemplateSectionsDataView *)self fetchTemplateSectionsWithObjectIDs:v9 error:error];

    if (v10)
    {
      v11 = [v10 objectForKeyedSubscript:v8];
      if (v11)
      {
LABEL_12:

        goto LABEL_13;
      }

      v12 = +[REMLogStore read];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [REMTemplateSectionsDataView fetchTemplateSectionWithObjectID:v8 error:v12];
      }

      if (error)
      {
        [REMError noSuchObjectErrorWithObjectID:v8];
        *error = v11 = 0;
        goto LABEL_12;
      }
    }

    v11 = 0;
    goto LABEL_12;
  }

  v13 = +[REMLogStore read];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [REMTemplateSectionsDataView fetchTemplateSectionWithObjectID:a2 error:?];
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
  v11 = 0;
LABEL_13:

  return v11;
}

- (id)templateSectionsFromTemplateStorages:(id)storages templateSectionStorages:(id)sectionStorages store:(id)store
{
  v40 = *MEMORY[0x1E69E9840];
  storagesCopy = storages;
  sectionStoragesCopy = sectionStorages;
  storeCopy = store;
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(storagesCopy, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = storagesCopy;
  v11 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = [[REMTemplate alloc] initWithStore:storeCopy storage:*(*(&v34 + 1) + 8 * i)];
        objectID = [(REMTemplate *)v15 objectID];
        [v10 setObject:v15 forKeyedSubscript:objectID];
      }

      v12 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v12);
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(sectionStoragesCopy, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v28 = sectionStoragesCopy;
  v18 = [v28 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v31;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v28);
        }

        v22 = *(*(&v30 + 1) + 8 * j);
        parentTemplateID = [v22 parentTemplateID];

        if (!parentTemplateID)
        {
          NSLog(&cfstr_SIsUnexpectedl.isa, "templateSectionStorage.parentTemplateID");
        }

        parentTemplateID2 = [v22 parentTemplateID];
        v25 = [v10 objectForKeyedSubscript:parentTemplateID2];
        v26 = [[REMTemplateSection alloc] initWithStore:storeCopy parentTemplate:v25 storage:v22];
        [v17 addObject:v26];
      }

      v19 = [v28 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v19);
  }

  return v17;
}

- (void)fetchTemplateSectionsWithTemplateObjectID:(uint64_t)a1 error:(const char *)a2 .cold.1(uint64_t a1, const char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  v7 = [v3 stringWithFormat:@"%@.%@", v5, v6];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v8, v9, "[%{public}@] Passing in nil '%s'", v10, v11, v12, v13, v14, v15);
}

- (void)fetchTemplateSectionsWithObjectIDs:(uint64_t)a1 error:(const char *)a2 .cold.1(uint64_t a1, const char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  v7 = [v3 stringWithFormat:@"%@.%@", v5, v6];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v8, v9, "[%{public}@] Passing in nil '%s'", v10, v11, v12, v13, v14, v15);
}

- (void)fetchTemplateSectionWithObjectID:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "REMTemplateSectionsDataView: Requested to fetch non-existent templateSection {objectID: %{public}@}", &v2, 0xCu);
}

- (void)fetchTemplateSectionWithObjectID:(uint64_t)a1 error:(const char *)a2 .cold.2(uint64_t a1, const char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  v7 = [v3 stringWithFormat:@"%@.%@", v5, v6];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v8, v9, "[%{public}@] Passing in nil '%s'", v10, v11, v12, v13, v14, v15);
}

@end