@interface APDatabaseRow
- (APDatabaseManager)manager;
- (APDatabaseRow)initWithTable:(id)table;
- (BOOL)deleteFromDB;
- (BOOL)isDataObjectEqual:(id)equal;
- (BOOL)save;
- (NSString)description;
- (id)_allowedCodingClasses;
- (id)dictionaryFromBlobForColumnName:(id)name;
- (id)initAsNewObjectWithTable:(id)table;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)valueForColumnName:(id)name;
- (int64_t)typeForColumnName:(id)name;
- (void)_createColumns;
- (void)forwardInvocation:(id)invocation;
- (void)setDictionary:(id)dictionary forBlobColumnName:(id)name;
- (void)setValue:(id)value forColumnName:(id)name;
@end

@implementation APDatabaseRow

- (APDatabaseManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (APDatabaseRow)initWithTable:(id)table
{
  tableCopy = table;
  v20.receiver = self;
  v20.super_class = APDatabaseRow;
  v5 = [(APDatabaseRow *)&v20 init];
  v9 = v5;
  if (v5)
  {
    v5->_isNewObject = 0;
    v10 = objc_msgSend_tableName(tableCopy, v6, v7, v8);
    tableName = v9->_tableName;
    v9->_tableName = v10;

    v15 = objc_msgSend_manager(tableCopy, v12, v13, v14);
    objc_storeWeak(&v9->_manager, v15);

    objc_msgSend__createColumns(v9, v16, v17, v18);
  }

  return v9;
}

- (id)initAsNewObjectWithTable:(id)table
{
  tableCopy = table;
  v20.receiver = self;
  v20.super_class = APDatabaseRow;
  v5 = [(APDatabaseRow *)&v20 init];
  v9 = v5;
  if (v5)
  {
    v5->_isNewObject = 1;
    v10 = objc_msgSend_tableName(tableCopy, v6, v7, v8);
    tableName = v9->_tableName;
    v9->_tableName = v10;

    v15 = objc_msgSend_manager(tableCopy, v12, v13, v14);
    objc_storeWeak(&v9->_manager, v15);

    objc_msgSend__createColumns(v9, v16, v17, v18);
  }

  return v9;
}

- (BOOL)save
{
  v140 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_manager(self, a2, v2, v3);
  if (v8)
  {
    v9 = objc_msgSend_columns(self, v5, v6, v7);
    v13 = objc_msgSend_allValues(v9, v10, v11, v12);

    LOBYTE(v9) = objc_msgSend_isNewObject(self, v14, v15, v16);
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = v18;
    if (v9)
    {
      v125 = v18;
      v126 = v17;
      v123 = v8;
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v128 = 0u;
      v129 = 0u;
      v130 = 0u;
      v131 = 0u;
      v121 = v13;
      v21 = v13;
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v128, v136, 16);
      if (v23)
      {
        v27 = v23;
        v28 = *v129;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v129 != v28)
            {
              objc_enumerationMutation(v21);
            }

            v30 = *(*(&v128 + 1) + 8 * i);
            v31 = objc_msgSend_readOnlyColumns(self, v24, v25, v26);
            v35 = objc_msgSend_name(v30, v32, v33, v34);
            v38 = objc_msgSend_containsObject_(v31, v36, v35, v37);

            if ((v38 & 1) == 0)
            {
              v39 = objc_msgSend_name(v30, v24, v25, v26);
              objc_msgSend_addObject_(v126, v40, v39, v41);

              objc_msgSend_addObject_(v125, v42, @"?", v43);
              objc_msgSend_addObject_(v20, v44, v30, v45);
            }
          }

          v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v128, v136, 16);
        }

        while (v27);
      }

      v46 = MEMORY[0x1E696AEC0];
      v50 = objc_msgSend_tableName(self, v47, v48, v49);
      v53 = objc_msgSend_componentsJoinedByString_(v126, v51, @", ", v52);
      v19 = v125;
      v56 = objc_msgSend_componentsJoinedByString_(v125, v54, @", ", v55);
      v59 = objc_msgSend_stringWithFormat_(v46, v57, @"INSERT INTO %@ (%@) VALUES (%@)", v58, v50, v53, v56);

      v60 = v126;
      v8 = v123;
      inserted = objc_msgSend_executeInsertQuery_withParameters_(v123, v61, v59, v20);
      v65 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v63, inserted, v64);
      objc_msgSend_setValue_forColumnName_(self, v66, v65, @"rowid");

      objc_msgSend_setIsNewObject_(self, v67, 0, v68);
      v69 = inserted != -1;
      v13 = v121;
      goto LABEL_34;
    }

    v72 = v17;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v73 = v13;
    v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v74, &v132, v137, 16);
    if (v75)
    {
      v79 = v75;
      v127 = v17;
      v80 = v19;
      v122 = v13;
      v124 = v8;
      v20 = 0;
      v81 = *v133;
      do
      {
        for (j = 0; j != v79; ++j)
        {
          if (*v133 != v81)
          {
            objc_enumerationMutation(v73);
          }

          v83 = *(*(&v132 + 1) + 8 * j);
          v84 = objc_msgSend_name(v83, v76, v77, v78);
          isEqualToString = objc_msgSend_isEqualToString_(v84, v85, @"rowid", v86);

          if (isEqualToString)
          {
            v91 = v83;

            v20 = v91;
          }

          else
          {
            v92 = MEMORY[0x1E696AEC0];
            v93 = objc_msgSend_name(v83, v88, v89, v90);
            v96 = objc_msgSend_stringWithFormat_(v92, v94, @"%@=?", v95, v93);
            objc_msgSend_addObject_(v127, v97, v96, v98);

            objc_msgSend_addObject_(v80, v99, v83, v100);
          }
        }

        v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v76, &v132, v137, 16);
      }

      while (v79);

      v19 = v80;
      if (v20)
      {
        v104 = objc_msgSend_value(v20, v101, v102, v103);

        v13 = v122;
        v8 = v124;
        v60 = v127;
        if (v104)
        {
          objc_msgSend_addObject_(v80, v105, v20, v106);
          v107 = MEMORY[0x1E696AEC0];
          v111 = objc_msgSend_tableName(self, v108, v109, v110);
          v114 = objc_msgSend_componentsJoinedByString_(v127, v112, @", ", v113);
          v59 = objc_msgSend_stringWithFormat_(v107, v115, @"UPDATE %@ SET %@ WHERE rowId=?", v116, v111, v114);

          v69 = objc_msgSend_executeQuery_withParameters_(v124, v117, v59, v19);
LABEL_34:

          goto LABEL_35;
        }
      }

      else
      {
        v13 = v122;
        v8 = v124;
        v60 = v127;
      }
    }

    else
    {

      v20 = 0;
      v60 = v72;
    }

    v59 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v118 = objc_opt_class();
      *buf = 138477827;
      v139 = v118;
      v119 = v118;
      _os_log_impl(&dword_1BADC1000, v59, OS_LOG_TYPE_ERROR, "[%{private}@]: RowId is nil when trying to update row.", buf, 0xCu);
    }

    v69 = 0;
    goto LABEL_34;
  }

  v13 = APLogForCategory(0xCuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v70 = objc_opt_class();
    *buf = 138477827;
    v139 = v70;
    v71 = v70;
    _os_log_impl(&dword_1BADC1000, v13, OS_LOG_TYPE_ERROR, "[%{private}@]: Database manager is nil when trying to save row.", buf, 0xCu);
  }

  v69 = 0;
LABEL_35:

  return v69;
}

- (BOOL)deleteFromDB
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_manager(self, a2, v2, v3);
  if (!v8)
  {
    v13 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v39 = objc_opt_class();
      v14 = v39;
      _os_log_impl(&dword_1BADC1000, v13, OS_LOG_TYPE_ERROR, "[%{private}@]: Database manager is nil when trying to delete row.", buf, 0xCu);
    }

    v12 = 0;
    goto LABEL_13;
  }

  if ((objc_msgSend_isNewObject(self, v5, v6, v7) & 1) == 0)
  {
    v15 = objc_msgSend_columns(self, v9, v10, v11);
    v13 = objc_msgSend_objectForKey_(v15, v16, @"rowid", v17);

    v21 = objc_msgSend_value(v13, v18, v19, v20);

    if (v21)
    {
      v25 = MEMORY[0x1E696AEC0];
      v26 = objc_msgSend_tableName(self, v22, v23, v24);
      v29 = objc_msgSend_stringWithFormat_(v25, v27, @"DELETE FROM %@ WHERE rowid = ?", v28, v26);

      v37 = v13;
      v31 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v30, &v37, 1);
      v12 = objc_msgSend_executeQuery_withParameters_(v8, v32, v29, v31);

      objc_msgSend_setIsNewObject_(self, v33, 1, v34);
    }

    else
    {
      v29 = APLogForCategory(0xCuLL);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v39 = objc_opt_class();
        v35 = v39;
        _os_log_impl(&dword_1BADC1000, v29, OS_LOG_TYPE_ERROR, "[%{private}@]: Error - Can't delete from DB rowId is nill.", buf, 0xCu);
      }

      v12 = 0;
    }

LABEL_13:
    goto LABEL_14;
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (BOOL)isDataObjectEqual:(id)equal
{
  v135 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v126 = objc_msgSend_columns(self, v4, v5, v6);
  objc_msgSend_allKeys(v126, v7, v8, v9);
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v10 = v131 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v128, v134, 16);
  if (!v12)
  {
    goto LABEL_41;
  }

  v15 = v12;
  v16 = *v129;
  do
  {
    v17 = 0;
    do
    {
      if (*v129 != v16)
      {
        objc_enumerationMutation(v10);
      }

      v18 = *(*(&v128 + 1) + 8 * v17);
      if ((objc_msgSend_isEqualToString_(v18, v13, @"rowid", v14) & 1) == 0)
      {
        v19 = objc_msgSend_objectForKey_(v126, v13, v18, v14);
        v23 = objc_msgSend_columns(equalCopy, v20, v21, v22);
        v26 = objc_msgSend_objectForKey_(v23, v24, v18, v25);

        v30 = objc_msgSend_value(v19, v27, v28, v29);
        if (!v30)
        {
          v37 = objc_msgSend_value(v26, v31, v32, v33);

          if (v37)
          {
            goto LABEL_10;
          }

          goto LABEL_30;
        }

LABEL_10:
        v38 = objc_msgSend_value(v19, v34, v35, v36);
        if (v38)
        {
          v42 = v38;
          v43 = objc_msgSend_value(v26, v39, v40, v41);

          if (!v43)
          {
            goto LABEL_46;
          }
        }

        v44 = objc_msgSend_value(v19, v39, v40, v41);
        if (v44)
        {
        }

        else
        {
          v51 = objc_msgSend_value(v26, v45, v46, v47);

          if (v51)
          {
            goto LABEL_46;
          }
        }

        v52 = objc_msgSend_type(v19, v48, v49, v50);
        if (v52 > 3)
        {
          if (v52 <= 5)
          {
            if (v52 == 4)
            {
              v88 = objc_msgSend_value(v19, v53, v54, v55);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

LABEL_55:
                v122 = APLogForCategory(0xCuLL);
                if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_44;
                }

                goto LABEL_45;
              }

              v92 = objc_msgSend_value(v26, v89, v90, v91);
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) == 0)
              {
                goto LABEL_55;
              }

              v97 = objc_msgSend_value(v19, v94, v95, v96);
              v101 = objc_msgSend_value(v26, v98, v99, v100);
              objc_msgSend_timeIntervalSinceDate_(v97, v102, v101, v103);
              v105 = fabs(v104);

              if (v105 > 0.001)
              {
                goto LABEL_46;
              }

              goto LABEL_30;
            }

            goto LABEL_26;
          }

          if (v52 != 6)
          {
            if (v52 != 7)
            {
              goto LABEL_30;
            }

            goto LABEL_26;
          }

          v106 = objc_msgSend_value(v19, v53, v54, v55);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

LABEL_49:
            v122 = APLogForCategory(0xCuLL);
            if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
            {
LABEL_44:
              v123 = objc_opt_class();
              *buf = 138477827;
              v133 = v123;
              v124 = v123;
              _os_log_impl(&dword_1BADC1000, v122, OS_LOG_TYPE_ERROR, "[%{private}@]: Error - Column type class type missmatch.", buf, 0xCu);
            }

LABEL_45:

LABEL_46:
            v121 = 0;
            goto LABEL_47;
          }

          v110 = objc_msgSend_value(v26, v107, v108, v109);
          objc_opt_class();
          v111 = objc_opt_isKindOfClass();

          if ((v111 & 1) == 0)
          {
            goto LABEL_49;
          }

          v65 = objc_msgSend_value(v19, v112, v113, v114);
          v69 = objc_msgSend_value(v26, v115, v116, v117);
          isEqualToData = objc_msgSend_isEqualToData_(v65, v118, v69, v119);
        }

        else
        {
          if (v52 >= 3)
          {
            if (v52 == 3)
            {
              v56 = objc_msgSend_value(v19, v53, v54, v55);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

LABEL_52:
                v122 = APLogForCategory(0xCuLL);
                if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_44;
                }

                goto LABEL_45;
              }

              v60 = objc_msgSend_value(v26, v57, v58, v59);
              objc_opt_class();
              v61 = objc_opt_isKindOfClass();

              if ((v61 & 1) == 0)
              {
                goto LABEL_52;
              }

              v65 = objc_msgSend_value(v19, v62, v63, v64);
              v69 = objc_msgSend_value(v26, v66, v67, v68);
              isEqualToData = objc_msgSend_isEqualToString_(v65, v70, v69, v71);
              goto LABEL_29;
            }

LABEL_30:

            goto LABEL_31;
          }

LABEL_26:
          v73 = objc_msgSend_value(v19, v53, v54, v55);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

LABEL_43:
            v122 = APLogForCategory(0xCuLL);
            if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_44;
            }

            goto LABEL_45;
          }

          v77 = objc_msgSend_value(v26, v74, v75, v76);
          objc_opt_class();
          v78 = objc_opt_isKindOfClass();

          if ((v78 & 1) == 0)
          {
            goto LABEL_43;
          }

          v65 = objc_msgSend_value(v19, v79, v80, v81);
          v69 = objc_msgSend_value(v26, v82, v83, v84);
          isEqualToData = objc_msgSend_isEqualToNumber_(v65, v85, v69, v86);
        }

LABEL_29:
        v87 = isEqualToData;

        if ((v87 & 1) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_30;
      }

LABEL_31:
      ++v17;
    }

    while (v15 != v17);
    v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v128, v134, 16);
    v15 = v120;
  }

  while (v120);
LABEL_41:
  v121 = 1;
LABEL_47:

  return v121;
}

- (id)dictionaryFromBlobForColumnName:(id)name
{
  v32 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v10 = objc_msgSend_valueForColumnName_(self, v5, nameCopy, v6);
  if (v10)
  {
    v11 = MEMORY[0x1E696ACD0];
    v12 = objc_msgSend__allowedCodingClasses(self, v7, v8, v9);
    v25 = 0;
    v14 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v11, v13, v12, v10, &v25);
    v15 = v25;

    if (v15)
    {
      v16 = APLogForCategory(0xCuLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = v17;
        v22 = objc_msgSend_localizedDescription(v15, v19, v20, v21);
        *buf = 138478339;
        v27 = v17;
        v28 = 2113;
        v29 = nameCopy;
        v30 = 2114;
        v31 = v22;
        _os_log_impl(&dword_1BADC1000, v16, OS_LOG_TYPE_ERROR, "[%{private}@] Could not unarchive data for %{private}@ column, error: %{public}@", buf, 0x20u);
      }

      v23 = 0;
    }

    else
    {
      v23 = v14;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)setDictionary:(id)dictionary forBlobColumnName:(id)name
{
  v25 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (dictionary)
  {
    v18 = 0;
    v8 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v6, dictionary, 1, &v18);
    v10 = v18;
    if (v10)
    {
      v11 = APLogForCategory(0xCuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = v12;
        v17 = objc_msgSend_localizedDescription(v10, v14, v15, v16);
        *buf = 138478339;
        v20 = v12;
        v21 = 2113;
        v22 = nameCopy;
        v23 = 2114;
        v24 = v17;
        _os_log_impl(&dword_1BADC1000, v11, OS_LOG_TYPE_ERROR, "[%{private}@] Could not archive data for %{private}@ column, error: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      objc_msgSend_setValue_forColumnName_(self, v9, v8, nameCopy);
    }
  }

  else
  {
    objc_msgSend_setValue_forColumnName_(self, v6, 0, nameCopy);
  }
}

- (NSString)description
{
  v82 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_isAppleInternalInstall(APSystemInternal, a2, v2, v3))
  {
    v63 = &stru_1F38FD5F0;
LABEL_29:
    v62 = v63;
    goto LABEL_30;
  }

  v8 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v5, v6, v7);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v12 = objc_msgSend_columns(self, v9, v10, v11);
  v16 = objc_msgSend_allValues(v12, v13, v14, v15);

  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v72, v81, 16);
  if (v18)
  {
    v22 = v18;
    v23 = *v73;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v73 != v23)
        {
          objc_enumerationMutation(v16);
        }

        v25 = *(*(&v72 + 1) + 8 * i);
        v26 = objc_msgSend_name(v25, v19, v20, v21);
        v30 = objc_msgSend_value(v25, v27, v28, v29);
        if ((objc_msgSend_isEqualToString_(v26, v31, @"rowid", v32) & 1) == 0 && v30)
        {
          objc_msgSend_setObject_forKey_(v8, v33, v30, v26);
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v72, v81, 16);
    }

    while (v22);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v37 = objc_msgSend_readOnlyColumns(self, v34, v35, v36);
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v68, v80, 16);
  if (v39)
  {
    v42 = v39;
    v43 = *v69;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v69 != v43)
        {
          objc_enumerationMutation(v37);
        }

        v45 = *(*(&v68 + 1) + 8 * j);
        if ((objc_msgSend_isEqualToString_(v45, v40, @"rowid", v41) & 1) == 0)
        {
          v47 = objc_msgSend_valueForKey_(self, v40, v45, v41);
          if (v47)
          {
            objc_msgSend_setObject_forKey_(v8, v46, v47, v45);
          }
        }
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v68, v80, 16);
    }

    while (v42);
  }

  v50 = objc_msgSend_JSONObjectWithObject_(APJSONArchiver, v48, v8, v49);

  v67 = 0;
  v52 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x1E696ACB0], v51, v50, 0, &v67);
  v53 = v67;
  if (!v53)
  {
    v64 = objc_alloc(MEMORY[0x1E696AEC0]);
    v63 = objc_msgSend_initWithData_encoding_(v64, v65, v52, 4);

    goto LABEL_29;
  }

  v54 = v53;
  v55 = APLogForCategory(0xCuLL);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    v56 = objc_opt_class();
    v57 = v56;
    v61 = objc_msgSend_description(v54, v58, v59, v60);
    *buf = 138478083;
    v77 = v56;
    v78 = 2113;
    v79 = v61;
    _os_log_impl(&dword_1BADC1000, v55, OS_LOG_TYPE_ERROR, "[%{private}@]: Error generating JSON description %{private}@.", buf, 0x16u);
  }

  v62 = &stru_1F38FD5F0;
LABEL_30:

  return v62;
}

- (void)_createColumns
{
  v108 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  outCount = 0;
  v4 = [APDatabaseColumn alloc];
  v6 = objc_msgSend_initWithName_forColumnType_withValue_(v4, v5, @"rowid", 0, 0);
  v10 = objc_msgSend_name(v6, v7, v8, v9);
  v104 = v3;
  v11 = v3;
  selfCopy = self;
  v101 = v6;
  objc_msgSend_setObject_forKey_(v11, v13, v6, v10);

  v14 = objc_opt_class();
  v15 = class_copyPropertyList(v14, &outCount);
  v16 = v15;
  if (outCount)
  {
    v17 = 0;
    v18 = 0x1E696A000uLL;
    v102 = selfCopy;
    v103 = v15;
    while (1)
    {
      v19 = v16[v17];
      Name = property_getName(v19);
      if (Name)
      {
        break;
      }

LABEL_30:
      if (++v17 >= outCount)
      {
        goto LABEL_40;
      }
    }

    v23 = objc_msgSend_stringWithUTF8String_(*(v18 + 3776), v21, Name, v22);
    v27 = objc_msgSend_readOnlyColumns(selfCopy, v24, v25, v26);
    v30 = objc_msgSend_containsObject_(v27, v28, v23, v29);

    if (v30)
    {
LABEL_29:

      goto LABEL_30;
    }

    Attributes = property_getAttributes(v19);
    v34 = objc_msgSend_stringWithUTF8String_(*(v18 + 3776), v32, Attributes, v33);
    v37 = objc_msgSend_componentsSeparatedByString_(v34, v35, @",", v36);
    v40 = objc_msgSend_objectAtIndex_(v37, v38, 0, v39);
    v43 = objc_msgSend_substringFromIndex_(v40, v41, 1, v42);
    v44 = v43;
    v48 = objc_msgSend_UTF8String(v44, v45, v46, v47);
    if (objc_msgSend_hasPrefix_(v40, v49, @"T@", v50))
    {
      v54 = objc_msgSend_length(v40, v51, v52, v53);
      v56 = objc_msgSend_substringWithRange_(v40, v55, 3, v54 - 4);
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      isEqualToString = objc_msgSend_isEqualToString_(v56, v59, v58, v60);

      if (isEqualToString)
      {
        v62 = 3;
LABEL_25:
        selfCopy = v102;
        goto LABEL_26;
      }

      v64 = objc_opt_class();
      v65 = NSStringFromClass(v64);
      v68 = objc_msgSend_isEqualToString_(v56, v66, v65, v67);

      if (v68)
      {
        v62 = 2;
        goto LABEL_25;
      }

      v71 = objc_opt_class();
      v72 = NSStringFromClass(v71);
      v75 = objc_msgSend_isEqualToString_(v56, v73, v72, v74);

      if (v75)
      {
        v62 = 4;
        goto LABEL_25;
      }

      v76 = objc_opt_class();
      v77 = NSStringFromClass(v76);
      v80 = objc_msgSend_isEqualToString_(v56, v78, v77, v79);

      if (v80)
      {
        v62 = 6;
        goto LABEL_25;
      }

      v84 = objc_opt_class();
      v85 = NSStringFromClass(v84);
      if (objc_msgSend_isEqualToString_(v56, v86, v85, v87))
      {

LABEL_36:
        selfCopy = v102;
        goto LABEL_28;
      }

      v88 = objc_opt_class();
      v89 = NSStringFromClass(v88);
      v92 = objc_msgSend_isEqualToString_(v56, v90, v89, v91);

      if (v92)
      {
        goto LABEL_36;
      }

      v93 = APLogForCategory(0xCuLL);
      selfCopy = v102;
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        v94 = objc_opt_class();
        *buf = 138477827;
        v107 = v94;
        v95 = v94;
        _os_log_impl(&dword_1BADC1000, v93, OS_LOG_TYPE_ERROR, "[%{private}@]: Unable to match property type to DB Column type.", buf, 0xCu);

        selfCopy = v102;
      }

LABEL_20:
      v62 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v63 = *v48;
    if (v63 == 66)
    {
      if (!v48[1])
      {
        v62 = 5;
        goto LABEL_27;
      }
    }

    else if (v63 == 81)
    {
      if (!v48[1])
      {
        v62 = 3;
        goto LABEL_27;
      }
    }

    else if (v63 == 113 && !v48[1])
    {
      v62 = 0;
LABEL_27:
      v81 = [APDatabaseColumn alloc];
      v56 = objc_msgSend_initWithName_forColumnType_withValue_(v81, v82, v23, v62, 0);
      objc_msgSend_setObject_forKey_(v104, v83, v56, v23);
LABEL_28:

      v18 = 0x1E696A000;
      v16 = v103;
      goto LABEL_29;
    }

    v56 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v69 = objc_opt_class();
      *buf = 138477827;
      v107 = v69;
      v70 = v69;
      _os_log_impl(&dword_1BADC1000, v56, OS_LOG_TYPE_ERROR, "[%{private}@]: Unable to match property type to DB Column type.", buf, 0xCu);

      selfCopy = v102;
    }

    goto LABEL_20;
  }

LABEL_40:
  free(v16);
  v98 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x1E695DF20], v96, v104, v97);
  objc_msgSend_setColumns_(selfCopy, v99, v98, v100);
}

- (id)_allowedCodingClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  return objc_msgSend_setWithObjects_(v2, v8, v3, v9, v4, v5, v6, v7, 0);
}

- (void)setValue:(id)value forColumnName:(id)name
{
  v23 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  nameCopy = name;
  v11 = objc_msgSend_columns(self, v8, v9, v10);
  v14 = objc_msgSend_objectForKey_(v11, v12, nameCopy, v13);

  if (v14)
  {
    objc_msgSend_setValue_(v14, v15, valueCopy, v16);
  }

  else
  {
    v17 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = 138478083;
      v20 = objc_opt_class();
      v21 = 2113;
      v22 = nameCopy;
      v18 = v20;
      _os_log_impl(&dword_1BADC1000, v17, OS_LOG_TYPE_ERROR, "[%{private}@]: Column not avaliable for column name %{private}@.", &v19, 0x16u);
    }
  }
}

- (id)valueForColumnName:(id)name
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v8 = objc_msgSend_columns(self, v5, v6, v7);
  v11 = objc_msgSend_objectForKey_(v8, v9, nameCopy, v10);

  if (v11)
  {
    v15 = objc_msgSend_value(v11, v12, v13, v14);
  }

  else
  {
    v16 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 138478083;
      v20 = objc_opt_class();
      v21 = 2113;
      v22 = nameCopy;
      v17 = v20;
      _os_log_impl(&dword_1BADC1000, v16, OS_LOG_TYPE_ERROR, "[%{private}@]: Column not avaliable for column name %{private}@.", &v19, 0x16u);
    }

    v15 = 0;
  }

  return v15;
}

- (int64_t)typeForColumnName:(id)name
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v8 = objc_msgSend_columns(self, v5, v6, v7);
  v11 = objc_msgSend_objectForKey_(v8, v9, nameCopy, v10);

  if (v11)
  {
    v15 = objc_msgSend_type(v11, v12, v13, v14);
  }

  else
  {
    v16 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 138478083;
      v20 = objc_opt_class();
      v21 = 2113;
      v22 = nameCopy;
      v17 = v20;
      _os_log_impl(&dword_1BADC1000, v16, OS_LOG_TYPE_ERROR, "[%{private}@]: Column not avaliable for column name %{private}@.", &v19, 0x16u);
    }

    v15 = 0;
  }

  return v15;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v8 = objc_msgSend_selector(invocationCopy, v5, v6, v7);
  v9 = NSStringFromSelector(v8);
  v15 = objc_msgSend_ap_propertyName(v9, v10, v11, v12);
  if (v15)
  {
    if (objc_msgSend_hasPrefix_(v9, v13, @"set", v14))
    {
      v24 = 0;
      objc_msgSend_getArgument_atIndex_(invocationCopy, v16, &v24, 2);
      objc_msgSend_setValue_forColumnName_(self, v18, v24, v15);
    }

    else
    {
      v24 = objc_msgSend_valueForColumnName_(self, v16, v9, v17);
      objc_msgSend_retainArguments(invocationCopy, v19, v20, v21);
      objc_msgSend_setReturnValue_(invocationCopy, v22, &v24, v23);
    }
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v11.receiver = self;
  v11.super_class = APDatabaseRow;
  v4 = [(APDatabaseRow *)&v11 methodSignatureForSelector:?];
  if (!v4)
  {
    v5 = NSStringFromSelector(selector);
    if (objc_msgSend_hasPrefix_(v5, v6, @"set", v7))
    {
      objc_msgSend_signatureWithObjCTypes_(MEMORY[0x1E695DF68], v8, "v@:@", v9);
    }

    else
    {
      objc_msgSend_signatureWithObjCTypes_(MEMORY[0x1E695DF68], v8, "@@:", v9);
    }
    v4 = ;
  }

  return v4;
}

@end