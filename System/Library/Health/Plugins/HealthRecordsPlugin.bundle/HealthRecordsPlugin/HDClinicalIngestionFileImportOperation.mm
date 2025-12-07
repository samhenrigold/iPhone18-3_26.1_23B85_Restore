@interface HDClinicalIngestionFileImportOperation
- (HDClinicalIngestionFileImportOperation)initWithFileHandle:(id)handle;
- (void)main;
@end

@implementation HDClinicalIngestionFileImportOperation

- (HDClinicalIngestionFileImportOperation)initWithFileHandle:(id)handle
{
  handleCopy = handle;
  v8.receiver = self;
  v8.super_class = HDClinicalIngestionFileImportOperation;
  v5 = [(HDClinicalIngestionFileImportOperation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HDClinicalIngestionFileImportOperation *)v5 setFileHandle:handleCopy];
  }

  return v6;
}

- (void)main
{
  selfCopy = self;
  fileHandle = self->_fileHandle;
  _HKInitializeLogging();
  v4 = HKLogHealthRecords;
  if (fileHandle)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [(HDClinicalIngestionFileImportOperation *)selfCopy debugDescription];
      *buf = 138543362;
      v66 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ file import beginning", buf, 0xCu);
    }

    readDataToEndOfFile = [(NSFileHandle *)selfCopy->_fileHandle readDataToEndOfFile];
    if (readDataToEndOfFile)
    {
      v62 = 0;
      v8 = [NSJSONSerialization hk_JSONObjectFromFHIRData:readDataToEndOfFile options:0 error:&v62];
      v9 = v62;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    objc_opt_class();
    v61 = v9;
    v10 = HKSafeObject();
    v11 = v9;

    if (v10)
    {
      v12 = +[NSMutableArray array];
      v13 = [v10 objectForKeyedSubscript:@"resourceType"];
      v48 = v13;
      if (v13)
      {
        if ([v13 isEqualToString:@"Bundle"])
        {
          v14 = v10;
        }

        else
        {
          v73 = @"resource";
          v74 = v10;
          v36 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];
          [v12 addObject:v36];

          v14 = 0;
        }
      }

      else
      {
        v46 = v11;
        v47 = readDataToEndOfFile;
        v49 = selfCopy;
        v15 = [v10 objectForKey:@"resources"];
        objc_opt_class();
        v45 = v15;
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = v8;
        }

        v17 = v16;

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v44 = v17;
        obj = [v17 allValues];
        v18 = [obj countByEnumeratingWithState:&v57 objects:v72 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v58;
          do
          {
            v21 = 0;
            v50 = v19;
            do
            {
              if (*v58 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v57 + 1) + 8 * v21);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v23 = v20;
                v55 = 0u;
                v56 = 0u;
                v53 = 0u;
                v54 = 0u;
                v24 = v22;
                v25 = [v24 countByEnumeratingWithState:&v53 objects:v71 count:16];
                if (v25)
                {
                  v26 = v25;
                  v27 = *v54;
                  do
                  {
                    for (i = 0; i != v26; i = i + 1)
                    {
                      if (*v54 != v27)
                      {
                        objc_enumerationMutation(v24);
                      }

                      v29 = *(*(&v53 + 1) + 8 * i);
                      v69 = @"resource";
                      v70 = v29;
                      v30 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
                      [v12 addObject:v30];
                    }

                    v26 = [v24 countByEnumeratingWithState:&v53 objects:v71 count:16];
                  }

                  while (v26);
                }

                v20 = v23;
                v19 = v50;
              }

              else
              {
                _HKInitializeLogging();
                v31 = HKLogHealthRecords;
                if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
                {
                  v32 = v31;
                  v33 = [(HDClinicalIngestionFileImportOperation *)v49 debugDescription];
                  v34 = objc_opt_class();
                  *buf = 138543618;
                  v66 = v33;
                  v67 = 2114;
                  v68 = v34;
                  v35 = v34;
                  _os_log_error_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%{public}@ invalid resource object array: %{public}@", buf, 0x16u);
                }
              }

              v21 = v21 + 1;
            }

            while (v21 != v19);
            v19 = [obj countByEnumeratingWithState:&v57 objects:v72 count:16];
          }

          while (v19);
        }

        v14 = 0;
        v8 = v44;
        selfCopy = v49;
        v11 = v46;
        readDataToEndOfFile = v47;
      }

      _HKInitializeLogging();
      v37 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v37;
        v39 = [(HDClinicalIngestionFileImportOperation *)selfCopy debugDescription];
        v40 = [v12 count];
        *buf = 138543618;
        v66 = v39;
        v67 = 2048;
        v68 = v40;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ found %ld resources in file", buf, 0x16u);
      }

      if (!v14 && v12)
      {
        v63[0] = @"resourceType";
        v63[1] = @"entry";
        v64[0] = @"Bundle";
        v64[1] = v12;
        v14 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:2];
      }

      if (v14)
      {
        v52 = v11;
        v41 = [NSJSONSerialization dataWithJSONObject:v14 options:0 error:&v52];
        v42 = v52;

        v11 = v42;
      }

      else
      {
        v41 = 0;
      }

      [(HDClinicalIngestionFileImportOperation *)selfCopy setDocumentData:v41];
      documentData = [(HDClinicalIngestionFileImportOperation *)selfCopy documentData];

      if (!documentData)
      {
        [(HDClinicalIngestionFileImportOperation *)selfCopy setOperationError:v11];
      }
    }

    else
    {
      [(HDClinicalIngestionFileImportOperation *)selfCopy setOperationError:v11];
    }
  }

  else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A5FA8(v4, selfCopy);
  }
}

@end