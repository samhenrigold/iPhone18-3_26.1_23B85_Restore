@interface CKSQLiteTOCTable
+ (id)dbProperties;
- (BOOL)migrateEntryDataFromTable:(id)table entry:(id)entry toEntry:(id)toEntry addedProperties:(id)properties;
- (id)_tocEntriesWithGroupID:(id)d error:(id *)error label:(_CKSQLiteCompiledStatementLabel *)label properties:(id)properties;
- (id)addEntryForTable:(id)table;
- (id)setSchema:(id)schema forTable:(id)table;
- (id)tocEntriesWithGroupID:(id)d error:(id *)error;
- (id)tocEntryWithGroupID:(id)d logicalTableName:(id)name error:(id *)error;
@end

@implementation CKSQLiteTOCTable

+ (id)dbProperties
{
  v5[8] = *MEMORY[0x1E69E9840];
  v4[0] = CKSQLiteTOCTableEntryTableIDPropertyName;
  v4[1] = CKSQLiteTOCTableEntryLogicalTablePropertyName;
  v5[0] = &unk_1EFA85500;
  v5[1] = &unk_1EFA85548;
  v4[2] = CKSQLiteTOCTableEntryDbTablePropertyName;
  v4[3] = CKSQLiteTOCTableEntryGroupIDPropertyName;
  v5[2] = &unk_1EFA85560;
  v5[3] = &unk_1EFA85578;
  v4[4] = CKSQLiteTOCTableEntrySchemaPropertyName;
  v4[5] = CKSQLiteTOCTableEntryDbVersionPropertyName;
  v5[4] = &unk_1EFA85590;
  v5[5] = &unk_1EFA855A8;
  v4[6] = CKSQLiteTOCTableEntryCreatingClassName;
  v4[7] = CKSQLiteTOCTableEntryPropertyDataName;
  v5[6] = &unk_1EFA85548;
  v5[7] = &unk_1EFA855C0;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v5, v4, 8);

  return v2;
}

- (BOOL)migrateEntryDataFromTable:(id)table entry:(id)entry toEntry:(id)toEntry addedProperties:(id)properties
{
  tableCopy = table;
  entryCopy = entry;
  toEntryCopy = toEntry;
  propertiesCopy = properties;
  v14 = objc_opt_class();
  v16 = objc_msgSend_propertyInfo_(v14, v15, CKSQLiteTOCTableEntryCreatingClassName);
  v18 = objc_msgSend_valueForProperty_propertyInfo_inObject_(tableCopy, v17, CKSQLiteTOCTableEntryCreatingClassName, v16, entryCopy);
  v19 = NSClassFromString(v18);
  if (v19 && (v20 = v19, v21 = objc_opt_class(), (objc_msgSend_isSubclassOfClass_(v20, v22, v21) & 1) != 0))
  {
    v23 = 0;
  }

  else
  {
    v25.receiver = self;
    v25.super_class = CKSQLiteTOCTable;
    v23 = [(CKSQLiteTable *)&v25 migrateEntryDataFromTable:tableCopy entry:entryCopy toEntry:toEntryCopy addedProperties:propertiesCopy];
  }

  return v23;
}

- (id)addEntryForTable:(id)table
{
  v97[1] = *MEMORY[0x1E69E9840];
  tableCopy = table;
  v7 = objc_msgSend_tableGroup(self, v5, v6);
  isMigrationTOC = objc_msgSend_isMigrationTOC(v7, v8, v9);

  v13 = objc_msgSend_tableGroup(tableCopy, v11, v12);
  hasFlag = objc_msgSend_hasFlag_(v13, v14, 1);
  if (isMigrationTOC && (hasFlag & 1) != 0)
  {
    v17 = v13;
    v96[0] = CKSQLiteTOCTableEntryLogicalTablePropertyName;
    v96[1] = CKSQLiteTOCTableEntryDbTablePropertyName;
    v96[2] = CKSQLiteTOCTableEntryGroupIDPropertyName;
    v96[3] = CKSQLiteTOCTableEntrySchemaPropertyName;
    v96[4] = CKSQLiteTOCTableEntryDbVersionPropertyName;
    v96[5] = CKSQLiteTOCTableEntryCreatingClassName;
    v96[6] = CKSQLiteTOCTableEntryPropertyDataName;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v16, v96, 7);
    v20 = objc_msgSend_componentsJoinedByString_(v18, v19, @",");
    v23 = objc_msgSend_dbTableName(self, v21, v22);
    v24 = MEMORY[0x1E696AEC0];
    v25 = objc_opt_class();
    v28 = objc_msgSend_dbTableName(v25, v26, v27);
    v29 = CKSQLiteTOCTableEntryDbTablePropertyName;
    v30 = objc_opt_class();
    v33 = objc_msgSend_dbTableName(v30, v31, v32);
    v95 = v20;
    v35 = objc_msgSend_stringWithFormat_(v24, v34, @"INSERT INTO '%@' (%@) SELECT %@ FROM '%@' WHERE %@='%@'", v23, v20, v20, v28, v29, v33);

    v38 = objc_msgSend_db(self, v36, v37);
    v40 = objc_msgSend_executeSQL_(v38, v39, v35);
    if (v40)
    {
      v43 = v40;
      v13 = v17;
      v44 = v20;
LABEL_14:

      goto LABEL_15;
    }

    v75 = objc_msgSend_db(self, v41, v42);
    InsertRowID = objc_msgSend_lastInsertRowID(v75, v76, v77);

    v94 = MEMORY[0x1E696AEC0];
    v79 = CKSQLiteTOCTableEntryGroupIDPropertyName;
    v82 = objc_msgSend_groupID(v17, v80, v81);
    v83 = CKSQLiteTOCTableEntryTableIDPropertyName;
    v85 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v84, InsertRowID);
    v87 = objc_msgSend_stringWithFormat_(v94, v86, @"UPDATE '%@' SET %@ = %@ WHERE %@ = %@", v23, v79, v82, v83, v85);

    v13 = v17;
    v43 = objc_msgSend_executeSQL_(v38, v88, v87);
    v44 = v95;
LABEL_13:

    goto LABEL_14;
  }

  v18 = objc_alloc_init(CKSQLiteTOCTableEntry);
  v44 = objc_msgSend_logicalTableName(tableCopy, v45, v46);
  objc_msgSend_setLogicalTableName_(v18, v47, v44);
  v23 = objc_msgSend_dbTableName(tableCopy, v48, v49);
  if (v23)
  {
    objc_msgSend_setDbTableName_(v18, v50, v23);
  }

  v52 = objc_msgSend_groupID(v13, v50, v51);
  objc_msgSend_setGroupID_(v18, v53, v52);

  v54 = objc_opt_class();
  v55 = MEMORY[0x1E696AD98];
  v58 = objc_msgSend_dbVersion(v54, v56, v57);
  v60 = objc_msgSend_numberWithUnsignedInteger_(v55, v59, v58);
  objc_msgSend_setDbVersion_(v18, v61, v60);

  v62 = NSStringFromClass(v54);
  objc_msgSend_setCreatingClass_(v18, v63, v62);

  v66 = objc_msgSend_flattenedDBProperties(v54, v64, v65);
  objc_msgSend_setPropertyData_(v18, v67, v66);

  v69 = objc_msgSend_insertObject_(self, v68, v18);
  if (v69)
  {
    v43 = v69;
    goto LABEL_16;
  }

  v35 = objc_msgSend_tableID(v18, v70, v71);
  objc_msgSend_setTableID_(tableCopy, v72, v35);
  if (!v23)
  {
    v38 = objc_msgSend_stringValue(v35, v73, v74);
    objc_msgSend_setDbTableName_(v18, v89, v38);
    objc_msgSend_setDbTableName_(tableCopy, v90, v38);
    v97[0] = CKSQLiteTOCTableEntryDbTablePropertyName;
    v87 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v91, v97, 1);
    v43 = objc_msgSend_updateProperties_usingObject_label_(self, v92, v87, v18, off_1EA9111C0);
    goto LABEL_13;
  }

  v43 = 0;
LABEL_15:

LABEL_16:

  return v43;
}

- (id)setSchema:(id)schema forTable:(id)table
{
  v19[1] = *MEMORY[0x1E69E9840];
  tableCopy = table;
  schemaCopy = schema;
  v8 = objc_alloc_init(CKSQLiteTOCTableEntry);
  v11 = objc_msgSend_tableID(tableCopy, v9, v10);

  objc_msgSend_setTableID_(v8, v12, v11);
  objc_msgSend_setSchema_(v8, v13, schemaCopy);

  v19[0] = CKSQLiteTOCTableEntrySchemaPropertyName;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v19, 1);
  v17 = objc_msgSend_updateProperties_usingObject_label_(self, v16, v15, v8, off_1EA9111D8);

  return v17;
}

- (id)_tocEntriesWithGroupID:(id)d error:(id *)error label:(_CKSQLiteCompiledStatementLabel *)label properties:(id)properties
{
  v34[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  propertiesCopy = properties;
  v33 = @"ID";
  v34[0] = dCopy;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v34, &v33, 1);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1883EE22C;
  v31 = sub_1883EF7BC;
  v32 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1886922DC;
  v22[3] = &unk_1E70C16A8;
  v22[4] = self;
  v14 = v13;
  v23 = v14;
  labelCopy = label;
  v15 = propertiesCopy;
  v24 = v15;
  v25 = &v27;
  v17 = objc_msgSend_performInTransaction_(self, v16, v22);
  v18 = v17;
  if (error && v17)
  {
    v19 = v17;
    *error = v18;
  }

  v20 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v20;
}

- (id)tocEntriesWithGroupID:(id)d error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = CKSQLiteTOCTableEntryLogicalTablePropertyName;
  v14 = CKSQLiteTOCTableEntryDbTablePropertyName;
  v15 = CKSQLiteTOCTableEntryTableIDPropertyName;
  v6 = MEMORY[0x1E695DEC8];
  dCopy = d;
  v9 = objc_msgSend_arrayWithObjects_count_(v6, v8, &v13, 3);
  v11 = objc_msgSend__tocEntriesWithGroupID_error_label_properties_(self, v10, dCopy, error, off_1EA9111F0, v9, v13, v14, v15, v16);

  return v11;
}

- (id)tocEntryWithGroupID:(id)d logicalTableName:(id)name error:(id *)error
{
  v29[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  nameCopy = name;
  v28[0] = @"ID";
  v28[1] = @"NAME";
  v29[0] = dCopy;
  v29[1] = nameCopy;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, v29, v28, 2);
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1883EE22C;
  v26 = sub_1883EF7BC;
  v27 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_18869272C;
  v19[3] = &unk_1E70BC0C0;
  v19[4] = self;
  v12 = v11;
  v20 = v12;
  v21 = &v22;
  v14 = objc_msgSend_performInTransaction_(self, v13, v19);
  v15 = v14;
  if (error && v14)
  {
    v16 = v14;
    *error = v15;
  }

  v17 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v17;
}

@end