@interface SCWZoneSnapshot
- (BOOL)isEqualToSnapshot:(id)snapshot;
- (SCWZoneSnapshot)initWithZoneSchema:(id)schema records:(id)records;
- (id)descriptionOfContents;
- (id)recordOfType:(id)type passingTest:(id)test;
- (id)recordWithName:(id)name;
- (id)recordsOfType:(id)type;
@end

@implementation SCWZoneSnapshot

- (id)descriptionOfContents
{
  v43 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E695DF70] array];
  v29 = v28 = self;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(SCWZoneSnapshot *)self records];
  v30 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v30)
  {
    v27 = *v38;
    do
    {
      v3 = 0;
      do
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v3;
        v4 = *(*(&v37 + 1) + 8 * v3);
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        recordID = [v4 recordID];
        recordName = [recordID recordName];
        [dictionary setObject:recordName forKeyedSubscript:@"recordName"];

        recordChangeTag = [v4 recordChangeTag];
        [dictionary setObject:recordChangeTag forKeyedSubscript:@"changeTag"];

        creationDate = [v4 creationDate];
        [dictionary setObject:creationDate forKeyedSubscript:@"creationDate"];

        modificationDate = [v4 modificationDate];
        [dictionary setObject:modificationDate forKeyedSubscript:@"modificationDate"];

        zoneSchema = [(SCWZoneSnapshot *)v28 zoneSchema];
        recordType = [v4 recordType];
        v13 = [zoneSchema schemaForRecordType:recordType];

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = v13;
        fieldSchemas = [v13 fieldSchemas];
        v15 = [fieldSchemas countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v34;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v34 != v17)
              {
                objc_enumerationMutation(fieldSchemas);
              }

              v19 = *(*(&v33 + 1) + 8 * i);
              if ([v19 isEncrypted])
              {
                [v4 encryptedValues];
              }

              else
              {
                [v4 valuesByKey];
              }
              v20 = ;
              name = [v19 name];
              v22 = [v20 objectForKeyedSubscript:name];

              if (v22)
              {
                name2 = [v19 name];
                [dictionary setObject:v22 forKeyedSubscript:name2];
              }
            }

            v16 = [fieldSchemas countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v16);
        }

        [v29 addObject:dictionary];
        v3 = v32 + 1;
      }

      while (v32 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v30);
  }

  v24 = [v29 description];

  return v24;
}

- (SCWZoneSnapshot)initWithZoneSchema:(id)schema records:(id)records
{
  schemaCopy = schema;
  recordsCopy = records;
  v14.receiver = self;
  v14.super_class = SCWZoneSnapshot;
  v9 = [(SCWZoneSnapshot *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zoneSchema, schema);
    if (recordsCopy)
    {
      v11 = [recordsCopy copy];
    }

    else
    {
      v11 = MEMORY[0x1E695E0F0];
    }

    records = v10->_records;
    v10->_records = v11;
  }

  return v10;
}

- (BOOL)isEqualToSnapshot:(id)snapshot
{
  v43 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  records = [(SCWZoneSnapshot *)self records];
  v6 = [records scw_dictionaryWithKeyBlock:&__block_literal_global_3];

  records2 = [snapshotCopy records];
  v8 = [records2 scw_dictionaryWithKeyBlock:&__block_literal_global_2];

  v9 = [v6 count];
  if (v9 == [v8 count])
  {
    v10 = MEMORY[0x1E695DFD8];
    allKeys = [v6 allKeys];
    v12 = [v10 setWithArray:allKeys];

    v13 = MEMORY[0x1E695DFD8];
    allKeys2 = [v8 allKeys];
    v15 = [v13 setWithArray:allKeys2];

    if ([v12 isEqualToSet:v15])
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v16 = v6;
      v17 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v17)
      {
        v18 = v17;
        v36 = snapshotCopy;
        v37 = *v39;
        v34 = v15;
        v35 = v12;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v39 != v37)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v38 + 1) + 8 * i);
            v21 = [v16 objectForKeyedSubscript:{v20, v34, v35, v36}];
            v22 = [v8 objectForKeyedSubscript:v20];
            v23 = MEMORY[0x1E69E58C0];
            recordChangeTag = [v21 recordChangeTag];
            recordChangeTag2 = [v22 recordChangeTag];
            LODWORD(v23) = [v23 scw_object:recordChangeTag isEqualToObject:recordChangeTag2];

            if (!v23 || ([v21 valuesByKey], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "valuesByKey"), v27 = objc_claimAutoreleasedReturnValue(), v28 = __37__SCWZoneSnapshot_isEqualToSnapshot___block_invoke_6(v27, v26, v27), v27, v26, !v28) || (objc_msgSend(v21, "encryptedValues"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "encryptedValues"), v30 = objc_claimAutoreleasedReturnValue(), v31 = __37__SCWZoneSnapshot_isEqualToSnapshot___block_invoke_6(v30, v29, v30), v30, v29, !v31))
            {

              v32 = 0;
              v12 = v35;
              snapshotCopy = v36;
              v15 = v34;
              goto LABEL_18;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
          v32 = 1;
          v12 = v35;
          snapshotCopy = v36;
          v15 = v34;
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v32 = 1;
      }

LABEL_18:
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

uint64_t __37__SCWZoneSnapshot_isEqualToSnapshot___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x1E695DFD8];
  v7 = [v4 changedKeys];
  v8 = [v6 setWithArray:v7];

  v9 = MEMORY[0x1E695DFD8];
  v10 = [v5 changedKeys];
  v11 = [v9 setWithArray:v10];

  if ([v8 isEqualToSet:v11])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v23 = v11;
      v24 = v8;
      v15 = *v26;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          v18 = [v4 objectForKey:{v17, v23, v24, v25}];
          v19 = [v5 objectForKey:v17];
          v20 = [MEMORY[0x1E69E58C0] scw_object:v18 isEqualToObject:v19];

          if (!v20)
          {
            v21 = 0;
            goto LABEL_13;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v21 = 1;
LABEL_13:
      v11 = v23;
      v8 = v24;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)recordsOfType:(id)type
{
  typeCopy = type;
  records = [(SCWZoneSnapshot *)self records];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __33__SCWZoneSnapshot_recordsOfType___block_invoke;
  v11[3] = &unk_1E85E3DE8;
  v12 = typeCopy;
  v6 = typeCopy;
  v7 = [records indexesOfObjectsPassingTest:v11];

  records2 = [(SCWZoneSnapshot *)self records];
  v9 = [records2 objectsAtIndexes:v7];

  return v9;
}

uint64_t __33__SCWZoneSnapshot_recordsOfType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recordType];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)recordOfType:(id)type passingTest:(id)test
{
  typeCopy = type;
  testCopy = test;
  records = [(SCWZoneSnapshot *)self records];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __44__SCWZoneSnapshot_recordOfType_passingTest___block_invoke;
  v18 = &unk_1E85E4210;
  v19 = typeCopy;
  v20 = testCopy;
  v9 = testCopy;
  v10 = typeCopy;
  v11 = [records indexOfObjectPassingTest:&v15];

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v13 = [(SCWZoneSnapshot *)self records:v15];
    v12 = [v13 objectAtIndex:v11];
  }

  return v12;
}

uint64_t __44__SCWZoneSnapshot_recordOfType_passingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordType];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)recordWithName:(id)name
{
  v4 = MEMORY[0x1E695BA70];
  nameCopy = name;
  v6 = [v4 alloc];
  zoneSchema = [(SCWZoneSnapshot *)self zoneSchema];
  zoneID = [zoneSchema zoneID];
  v9 = [v6 initWithRecordName:nameCopy zoneID:zoneID];

  records = [(SCWZoneSnapshot *)self records];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __34__SCWZoneSnapshot_recordWithName___block_invoke;
  v16[3] = &unk_1E85E3DE8;
  v11 = v9;
  v17 = v11;
  v12 = [records indexOfObjectPassingTest:v16];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    records2 = [(SCWZoneSnapshot *)self records];
    v13 = [records2 objectAtIndex:v12];
  }

  return v13;
}

uint64_t __34__SCWZoneSnapshot_recordWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

@end