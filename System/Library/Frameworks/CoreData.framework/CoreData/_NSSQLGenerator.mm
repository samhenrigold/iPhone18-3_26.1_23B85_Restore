@interface _NSSQLGenerator
+ (void)initialize;
- (id)prepareConstrainedValuesUpdateStatementWithRow:(id *)result;
- (id)prepareDeleteStatementForRelationship:(id *)result;
- (id)prepareInsertStatementForRelationship:(id *)result;
- (id)prepareMasterReorderStatementForRelationship:(id *)result;
- (id)prepareMasterReorderStatementPart2ForRelationship:(id *)result;
- (id)prepareReorderStatementForRelationship:(id *)result;
- (id)prepareUpdateStatementWithRow:(uint64_t)row originalRow:(const __CFBitVector *)originalRow withMask:;
- (void)dealloc;
- (void)initWithStatement:(uint64_t)statement forAdapter:;
- (void)prepareDeleteStatementWithRow:(uint64_t)row;
- (void)prepareInsertStatementWithRow:(int)row includeConstraints:(int)constraints includeOnConflict:(void *)conflict onConflictKeys:;
@end

@implementation _NSSQLGenerator

- (void)dealloc
{
  self->_selectList = 0;
  *&self->_sqlString = 0u;
  *&self->_statement = 0u;
  v3.receiver = self;
  v3.super_class = _NSSQLGenerator;
  [(_NSSQLGenerator *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    objc_opt_self();

    objc_opt_self();
  }
}

- (void)initWithStatement:(uint64_t)statement forAdapter:
{
  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = _NSSQLGenerator;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    v5[1] = a2;
    v5[2] = statement;
    v5[3] = objc_alloc_init(MEMORY[0x1E696AD60]);
    v6[4] = objc_alloc_init(MEMORY[0x1E696AD60]);
    v6[5] = objc_alloc_init(MEMORY[0x1E696AD60]);
  }

  return v6;
}

- (void)prepareInsertStatementWithRow:(int)row includeConstraints:(int)constraints includeOnConflict:(void *)conflict onConflictKeys:
{
  v99 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (!a2 || (*(a2 + 16) & 1) != 0)
    {
      _storeInfo1 = 0;
    }

    else
    {
      v9 = atomic_load((a2 + 40));
      _storeInfo1 = [*(v9 + 16) _storeInfo1];
    }

    v87 = _storeInfo1;
    foreignKeyColumns = [_storeInfo1 foreignKeyColumns];
    foreignEntityKeyColumns = [v87 foreignEntityKeyColumns];
    foreignOrderKeyColumns = [v87 foreignOrderKeyColumns];
    attributeColumns = [v87 attributeColumns];
    if (v87)
    {
      v13 = v87[17];
      v76 = v87[16];
      v77 = v87[18];
    }

    else
    {
      v13 = 0;
      v76 = 0;
      v77 = 0;
    }

    v85 = [attributeColumns count];
    v14 = [foreignEntityKeyColumns count];
    v15 = [foreignKeyColumns count];
    v79 = foreignOrderKeyColumns;
    v80 = [foreignOrderKeyColumns count];
    constraintsCopy = constraints;
    if (row ^ 1 | constraints)
    {
      v16 = @"INSERT INTO ";
    }

    else
    {
      v16 = @"INSERT OR IGNORE INTO ";
    }

    [*(self + 24) appendString:v16];
    [*(self + 24) appendString:{objc_msgSend(v87, "tableName")}];
    objc_msgSend(*(self + 24), "appendString:", @"(");
    [*(self + 24) appendString:{objc_msgSend(v76, "columnName")}];
    [*(self + 24) appendString:{@", "}];
    v74 = v13;
    [*(self + 24) appendString:{objc_msgSend(v13, "columnName")}];
    [*(self + 24) appendString:{@", "}];
    [*(self + 24) appendString:{objc_msgSend(v77, "columnName")}];
    if (v15)
    {
      for (i = 0; i != v15; ++i)
      {
        v18 = [foreignKeyColumns objectAtIndex:i];
        if (![objc_msgSend(v18 "toOneRelationship")] || row)
        {
          [*(self + 24) appendString:{@", "}];
          [*(self + 24) appendString:{objc_msgSend(v18, "columnName")}];
        }
      }
    }

    if (v14)
    {
      for (j = 0; j != v14; ++j)
      {
        v20 = [foreignEntityKeyColumns objectAtIndex:j];
        [*(self + 24) appendString:{@", "}];
        [*(self + 24) appendString:{objc_msgSend(v20, "columnName")}];
      }
    }

    v78 = v14;
    if (v80)
    {
      for (k = 0; k != v80; ++k)
      {
        v22 = [v79 objectAtIndex:k];
        [*(self + 24) appendString:{@", "}];
        [*(self + 24) appendString:{objc_msgSend(v22, "columnName")}];
      }
    }

    if (v85)
    {
      for (m = 0; m != v85; ++m)
      {
        v24 = [attributeColumns objectAtIndex:m];
        if (![v24 isConstrained] || row)
        {
          [*(self + 24) appendString:{@", "}];
          [*(self + 24) appendString:{objc_msgSend(v24, "columnName")}];
        }
      }
    }

    [*(self + 24) appendString:{@" VALUES(?, ?, ?")}];
    v25 = [NSSQLBindVariable alloc];
    if (a2)
    {
      v26 = atomic_load((a2 + 40));
      _referenceData64 = [*(v26 + 16) _referenceData64];
    }

    else
    {
      _referenceData64 = 0;
    }

    v28 = -[NSSQLBindVariable initWithInt64:sqlType:](v25, "initWithInt64:sqlType:", _referenceData64, [v76 sqlType]);
    [(NSSQLiteStatement *)*(self + 8) addBindVariable:v28];

    v29 = [NSSQLBindVariable alloc];
    if (a2 && (v30 = atomic_load((a2 + 40)), (v31 = [*(v30 + 16) _storeInfo1]) != 0))
    {
      v32 = *(v31 + 184);
    }

    else
    {
      v32 = 0;
    }

    v33 = -[NSSQLBindVariable initWithUnsignedInt:sqlType:](v29, "initWithUnsignedInt:sqlType:", v32, [v74 sqlType]);
    [(NSSQLiteStatement *)*(self + 8) addBindVariable:v33];

    v34 = [NSSQLBindVariable alloc];
    if (a2)
    {
      v35 = atomic_load((a2 + 40));
      v36 = *(v35 + 12);
    }

    else
    {
      v36 = 0;
    }

    v37 = -[NSSQLBindVariable initWithInt64:sqlType:](v34, "initWithInt64:sqlType:", v36, [v77 sqlType]);
    [(NSSQLiteStatement *)*(self + 8) addBindVariable:v37];

    if (v15)
    {
      for (n = 0; n != v15; ++n)
      {
        v39 = [foreignKeyColumns objectAtIndex:n];
        if (![objc_msgSend(v39 "toOneRelationship")] || row)
        {
          v40 = -[NSSQLBindVariable initWithInt64:sqlType:]([NSSQLBindVariable alloc], "initWithInt64:sqlType:", -[NSSQLRow foreignKeyForSlot:](a2, [v39 slot]), objc_msgSend(v39, "sqlType"));
          [(NSSQLiteStatement *)*(self + 8) addBindVariable:v40];

          [*(self + 24) appendString:{@", "}];
          [*(self + 24) appendString:@"?"];
        }
      }
    }

    if (v14)
    {
      v41 = 0;
      do
      {
        v42 = [foreignEntityKeyColumns objectAtIndex:v41];
        slot = [v42 slot];
        if (a2)
        {
          v44 = *(a2 + _NSSQLRowInstanceSize + ((4 * *(a2 + 16)) & 0x1FFF8) + ((*(a2 + 16) >> 13) & 0xFFFC) + 2 * slot);
        }

        else
        {
          v44 = 0;
        }

        v45 = -[NSSQLBindVariable initWithUnsignedInt:sqlType:]([NSSQLBindVariable alloc], "initWithUnsignedInt:sqlType:", v44, [v42 sqlType]);
        [(NSSQLiteStatement *)*(self + 8) addBindVariable:v45];

        [*(self + 24) appendString:{@", "}];
        [*(self + 24) appendString:@"?"];
        ++v41;
      }

      while (v78 != v41);
    }

    if (v80)
    {
      for (ii = 0; ii != v80; ++ii)
      {
        v47 = [v79 objectAtIndex:ii];
        slot2 = [v47 slot];
        if (a2)
        {
          v49 = *(a2 + _NSSQLRowInstanceSize + ((4 * *(a2 + 16)) & 0x1FFF8) + 4 * slot2);
        }

        else
        {
          v49 = 0;
        }

        v50 = -[NSSQLBindVariable initWithUnsignedInt:sqlType:]([NSSQLBindVariable alloc], "initWithUnsignedInt:sqlType:", v49, [v47 sqlType]);
        [(NSSQLiteStatement *)*(self + 8) addBindVariable:v50];

        [*(self + 24) appendString:{@", "}];
        [*(self + 24) appendString:@"?"];
      }
    }

    rowCopy2 = row;
    if (v85)
    {
      for (jj = 0; jj != v85; ++jj)
      {
        v53 = [attributeColumns objectAtIndex:jj];
        if (![v53 isConstrained] || rowCopy2)
        {
          attributeDescription = [v53 attributeDescription];
          if (attributeDescription)
          {
            v55 = [attributeDescription superCompositeAttribute] != 0;
          }

          else
          {
            v55 = 0;
          }

          v56 = -[NSSQLRow attributeValueForSlot:](a2, [v53 slot]);
          if (v55)
          {
            v56 = [v56 valueForKeyPath:{-[NSPropertyDescription _elementPath](objc_msgSend(v53, "propertyDescription"))}];
          }

          v57 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:]([NSSQLBindVariable alloc], "initWithValue:sqlType:propertyDescription:", v56, [v53 sqlType], objc_msgSend(v53, "attributeDescription"));
          [(NSSQLiteStatement *)*(self + 8) addBindVariable:v57];

          [*(self + 24) appendString:{@", "}];
          [*(self + 24) appendString:@"?"];
          rowCopy2 = row;
        }
      }
    }

    [*(self + 24) appendString:@""]);
    if (constraintsCopy)
    {
      v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v87)
      {
        v59 = v87;
        do
        {
          [v58 addObjectsFromArray:v59[27]];
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v60 = v59[26];
          v61 = [v60 countByEnumeratingWithState:&v92 objects:v98 count:16];
          if (v61)
          {
            v62 = v61;
            v63 = *v93;
            do
            {
              for (kk = 0; kk != v62; ++kk)
              {
                if (*v93 != v63)
                {
                  objc_enumerationMutation(v60);
                }

                v97 = *(*(&v92 + 1) + 8 * kk);
                [v58 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v97, 1)}];
              }

              v62 = [v60 countByEnumeratingWithState:&v92 objects:v98 count:16];
            }

            while (v62);
          }

          v59 = v59[20];
        }

        while (v59);
      }

      if ([v58 count])
      {
        if (![conflict count])
        {
          conflict = objc_msgSend_valueForKey_([v87 attributes]);
        }

        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = [v58 countByEnumeratingWithState:&v88 objects:v96 count:16];
        if (v86)
        {
          v84 = *v89;
          do
          {
            for (mm = 0; mm != v86; ++mm)
            {
              if (*v89 != v84)
              {
                objc_enumerationMutation(v58);
              }

              v66 = *(*(&v88 + 1) + 8 * mm);
              [*(self + 24) appendString:@" ON CONFLICT"];
              objc_msgSend(*(self + 24), "appendString:", @"(");
              if ([v66 count])
              {
                v67 = 0;
                do
                {
                  v68 = [v66 objectAtIndex:v67];
                  if (v67)
                  {
                    [*(self + 24) appendString:{@", "}];
                  }

                  [*(self + 24) appendString:{objc_msgSend(v68, "columnName")}];
                  ++v67;
                }

                while ([v66 count] > v67);
              }

              [*(self + 24) appendString:@""]);
              [*(self + 24) appendString:@" DO UPDATE SET Z_OPT = Z_OPT+1"];
              if ([conflict count])
              {
                v69 = 0;
                do
                {
                  v70 = [conflict objectAtIndexedSubscript:v69];
                  if (v87)
                  {
                    v71 = v87[5];
                  }

                  else
                  {
                    v71 = 0;
                  }

                  v72 = [v71 objectForKey:v70];
                  if ([v72 propertyType] == 1)
                  {
                    columnName = [v72 columnName];
                    if (([v66 containsObject:v72] & 1) == 0)
                    {
                      [*(self + 24) appendString:{@", "}];
                      [*(self + 24) appendString:columnName];
                      [*(self + 24) appendString:@" = "];
                      [*(self + 24) appendString:@"excluded."];
                      [*(self + 24) appendString:columnName];
                    }
                  }

                  ++v69;
                }

                while ([conflict count] > v69);
              }
            }

            v86 = [v58 countByEnumeratingWithState:&v88 objects:v96 count:16];
          }

          while (v86);
        }
      }
    }
  }
}

- (id)prepareInsertStatementForRelationship:(id *)result
{
  if (result)
  {
    v3 = result;
    if (a2)
    {
      v4 = a2[1].length == a2;
    }

    else
    {
      v4 = 0;
    }

    [result[3] appendString:@"INSERT OR REPLACE INTO "];
    [v3[3] appendString:{-[__CFString correlationTableName](a2, "correlationTableName")}];
    objc_msgSend(v3[3], "appendString:", @"(");
    [v3[3] appendString:{-[__CFString columnName](a2, "columnName")}];
    [v3[3] appendString:{@", "}];
    [v3[3] appendString:-[NSSQLManyToMany inverseColumnName](a2)];
    inverseOrderColumnName = [(NSSQLManyToMany *)a2 inverseOrderColumnName];
    v6 = v3[3];
    if (inverseOrderColumnName)
    {
      [v6 appendString:{@", "}];
      [v3[3] appendString:inverseOrderColumnName];
      v7 = v3[3];
      if (v4)
      {
        [v7 appendString:{@", "}];
        if (a2)
        {
          data = a2[2].data;
        }

        else
        {
          data = 0;
        }

        [v3[3] appendString:data];
        [v3[3] appendString:{@" VALUES (?, ?")}];
        [v3[3] appendString:{@", ?"}];
        v6 = v3[3];
        v9 = @", ?";
      }

      else
      {
        [v7 appendString:{@" VALUES (?, ?")}];
        v6 = v3[3];
        v9 = @", ?";
      }
    }

    else
    {
      v9 = @" VALUES (?, ?");
    }

    [v6 appendString:v9];
    v10 = v3[3];

    return [v10 appendString:@""]);
  }

  return result;
}

- (id)prepareMasterReorderStatementForRelationship:(id *)result
{
  if (result)
  {
    v3 = result;
    [result[3] appendString:@"UPDATE OR FAIL "];
    [v3[3] appendString:{-[__CFString correlationTableName](a2, "correlationTableName")}];
    [v3[3] appendString:@" SET "];
    [v3[3] appendString:-[NSSQLManyToMany inverseOrderColumnName](a2)];
    [v3[3] appendString:@" = ? WHERE "];
    [v3[3] appendString:{-[__CFString columnName](a2, "columnName")}];
    [v3[3] appendString:@" = ? AND "];
    [v3[3] appendString:-[NSSQLManyToMany inverseColumnName](a2)];
    v4 = v3[3];

    return [v4 appendString:@" = ?"];
  }

  return result;
}

- (id)prepareMasterReorderStatementPart2ForRelationship:(id *)result
{
  if (result)
  {
    v3 = result;
    [result[3] appendString:@"UPDATE OR FAIL "];
    [v3[3] appendString:{-[__CFString correlationTableName](a2, "correlationTableName")}];
    [v3[3] appendString:@" SET "];
    if (a2)
    {
      data = a2[2].data;
    }

    else
    {
      data = 0;
    }

    [v3[3] appendString:data];
    [v3[3] appendString:@" = ? WHERE "];
    [v3[3] appendString:{-[__CFString columnName](a2, "columnName")}];
    [v3[3] appendString:@" = ? AND "];
    [v3[3] appendString:-[NSSQLManyToMany inverseColumnName](a2)];
    v5 = v3[3];

    return [v5 appendString:@" = ?"];
  }

  return result;
}

- (id)prepareReorderStatementForRelationship:(id *)result
{
  if (result)
  {
    v3 = result;
    [result[3] appendString:@"UPDATE OR FAIL "];
    [v3[3] appendString:{-[__CFString correlationTableName](a2, "correlationTableName")}];
    [v3[3] appendString:@" SET "];
    if (a2)
    {
      data = a2[2].data;
    }

    else
    {
      data = 0;
    }

    [v3[3] appendString:data];
    [v3[3] appendString:@" = ?"];
    [v3[3] appendString:@" WHERE "];
    [v3[3] appendString:{-[__CFString columnName](a2, "columnName")}];
    [v3[3] appendString:@" = ? AND "];
    [v3[3] appendString:-[NSSQLManyToMany inverseColumnName](a2)];
    v5 = v3[3];

    return [v5 appendString:@" = ?"];
  }

  return result;
}

- (id)prepareDeleteStatementForRelationship:(id *)result
{
  if (result)
  {
    v3 = result;
    [result[3] appendString:@"DELETE FROM "];
    [v3[3] appendString:{-[__CFString correlationTableName](a2, "correlationTableName")}];
    [v3[3] appendString:@" WHERE "];
    [v3[3] appendString:{-[__CFString columnName](a2, "columnName")}];
    [v3[3] appendString:@" = ? AND "];
    [v3[3] appendString:-[NSSQLManyToMany inverseColumnName](a2)];
    v4 = v3[3];

    return [v4 appendString:@" = ?"];
  }

  return result;
}

- (id)prepareConstrainedValuesUpdateStatementWithRow:(id *)result
{
  v55 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (!a2 || (*(a2 + 16) & 1) != 0)
    {
      _storeInfo1 = 0;
    }

    else
    {
      v4 = atomic_load((a2 + 40));
      _storeInfo1 = [*(v4 + 16) _storeInfo1];
    }

    foreignKeyColumns = [_storeInfo1 foreignKeyColumns];
    obj = [_storeInfo1 foreignEntityKeyColumns];
    foreignOrderKeyColumns = [_storeInfo1 foreignOrderKeyColumns];
    [v3[3] appendString:@"UPDATE OR FAIL "];
    [v3[3] appendString:{objc_msgSend(_storeInfo1, "tableName")}];
    [v3[3] appendString:@" SET "];
    if (a2)
    {
      bv = [(NSSQLRow *)a2 newColumnMaskFrom:8uLL columnInclusionOptions:?];
    }

    else
    {
      bv = 0;
    }

    v41 = a2;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v7 = [foreignKeyColumns countByEnumeratingWithState:&v47 objects:v54 count:16];
    v38 = _storeInfo1;
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v48;
      v11 = 1;
      v12 = bv;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v48 != v10)
          {
            objc_enumerationMutation(foreignKeyColumns);
          }

          v14 = *(*(&v47 + 1) + 8 * i);
          if (CFBitVectorGetBitAtIndex(v12, v9) && [objc_msgSend(v14 "toOneRelationship")])
          {
            [v14 name];
            v15 = -[NSSQLBindVariable initWithInt64:sqlType:]([NSSQLBindVariable alloc], "initWithInt64:sqlType:", [objc_msgSend_valueForKey_(v41) _referenceData64], 2);
            [(NSSQLiteStatement *)v3[1] addBindVariable:v15];

            if ((v11 & 1) == 0)
            {
              [v3[3] appendString:{@", "}];
            }

            [v3[3] appendString:{objc_msgSend(v14, "columnName")}];
            [v3[3] appendString:@" = ?"];
            v11 = 0;
            v12 = bv;
          }

          ++v9;
        }

        v8 = [foreignKeyColumns countByEnumeratingWithState:&v47 objects:v54 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
      v11 = 1;
    }

    v16 = [obj count];
    v17 = [foreignOrderKeyColumns count];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obja = [v38 attributeColumns];
    v18 = [obja countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = v16 + v9 + v17;
      v21 = *v44;
      v22 = bv;
      do
      {
        v23 = 0;
        do
        {
          if (*v44 != v21)
          {
            objc_enumerationMutation(obja);
          }

          v24 = *(*(&v43 + 1) + 8 * v23);
          if (CFBitVectorGetBitAtIndex(v22, v20))
          {
            attributeDescription = [v24 attributeDescription];
            if (attributeDescription)
            {
              v26 = [attributeDescription superCompositeAttribute] != 0;
            }

            else
            {
              v26 = 0;
            }

            v27 = -[NSSQLRow attributeValueForSlot:](v41, [v24 slot]);
            if (v26)
            {
              v27 = [v27 valueForKeyPath:{-[NSPropertyDescription _elementPath](objc_msgSend(v24, "propertyDescription"))}];
            }

            v28 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:]([NSSQLBindVariable alloc], "initWithValue:sqlType:propertyDescription:", v27, [v24 sqlType], objc_msgSend(v24, "attributeDescription"));
            [(NSSQLiteStatement *)v3[1] addBindVariable:v28];

            if ((v11 & 1) == 0)
            {
              [v3[3] appendString:{@", "}];
            }

            [v3[3] appendString:{objc_msgSend(v24, "columnName")}];
            [v3[3] appendString:@" = ?"];
            v11 = 0;
            v22 = bv;
          }

          ++v23;
          ++v20;
        }

        while (v19 != v23);
        v29 = [obja countByEnumeratingWithState:&v43 objects:v53 count:16];
        v19 = v29;
      }

      while (v29);
    }

    if (v11)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        name = [v38 name];
        *buf = 138412290;
        v52 = name;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Updating a constrained entity generated an UPDATE statement with no columns on entity %@\n", buf, 0xCu);
      }

      v31 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        name2 = [v38 name];
        *buf = 138412290;
        v52 = name2;
        _os_log_fault_impl(&dword_18565F000, v31, OS_LOG_TYPE_FAULT, "CoreData: Updating a constrained entity generated an UPDATE statement with no columns on entity %@", buf, 0xCu);
      }
    }

    if (bv)
    {
      CFRelease(bv);
    }

    if (v41)
    {
      v32 = atomic_load(v41 + 5);
      _referenceData64 = [*(v32 + 16) _referenceData64];
    }

    else
    {
      _referenceData64 = 0;
    }

    v34 = [[NSSQLBindVariable alloc] initWithInt64:_referenceData64 sqlType:3];
    [(NSSQLiteStatement *)v3[1] addBindVariable:v34];

    return [v3[3] appendString:@" WHERE Z_PK = ?"];
  }

  return result;
}

- (id)prepareUpdateStatementWithRow:(uint64_t)row originalRow:(const __CFBitVector *)originalRow withMask:
{
  v85 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  _referenceData64 = a2;
  v5 = result;
  if (!a2 || (*(a2 + 16) & 1) != 0)
  {
    _storeInfo1 = 0;
  }

  else
  {
    v6 = atomic_load((a2 + 40));
    _storeInfo1 = [*(v6 + 16) _storeInfo1];
  }

  foreignKeyColumns = [_storeInfo1 foreignKeyColumns];
  foreignEntityKeyColumns = [_storeInfo1 foreignEntityKeyColumns];
  foreignOrderKeyColumns = [_storeInfo1 foreignOrderKeyColumns];
  attributeColumns = [_storeInfo1 attributeColumns];
  [v5[3] appendString:@"UPDATE OR FAIL "];
  v57 = _storeInfo1;
  [v5[3] appendString:{objc_msgSend(_storeInfo1, "tableName")}];
  [v5[3] appendString:@" SET "];
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = foreignKeyColumns;
  v9 = [foreignKeyColumns countByEnumeratingWithState:&v77 objects:v84 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v78;
    v13 = 1;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v78 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v77 + 1) + 8 * i);
        if (CFBitVectorGetBitAtIndex(originalRow, v11))
        {
          v16 = -[NSSQLBindVariable initWithInt64:sqlType:]([NSSQLBindVariable alloc], "initWithInt64:sqlType:", -[NSSQLRow foreignKeyForSlot:](_referenceData64, [v15 slot]), objc_msgSend(v15, "sqlType"));
          [(NSSQLiteStatement *)v5[1] addBindVariable:v16];

          if ((v13 & 1) == 0)
          {
            [v5[3] appendString:{@", "}];
          }

          [v5[3] appendString:{objc_msgSend(v15, "columnName")}];
          [v5[3] appendString:@" = ?"];
          v13 = 0;
        }

        ++v11;
      }

      v10 = [obj countByEnumeratingWithState:&v77 objects:v84 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v13 = 1;
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v17 = [foreignEntityKeyColumns countByEnumeratingWithState:&v73 objects:v83 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v74;
    do
    {
      v20 = 0;
      do
      {
        if (*v74 != v19)
        {
          objc_enumerationMutation(foreignEntityKeyColumns);
        }

        v21 = *(*(&v73 + 1) + 8 * v20);
        if (CFBitVectorGetBitAtIndex(originalRow, v11))
        {
          slot = [v21 slot];
          if (_referenceData64)
          {
            v23 = *(_referenceData64 + _NSSQLRowInstanceSize + ((4 * *(_referenceData64 + 16)) & 0x1FFF8) + ((*(_referenceData64 + 16) >> 13) & 0xFFFC) + 2 * slot);
          }

          else
          {
            v23 = 0;
          }

          v24 = -[NSSQLBindVariable initWithUnsignedInt:sqlType:]([NSSQLBindVariable alloc], "initWithUnsignedInt:sqlType:", v23, [v21 sqlType]);
          [(NSSQLiteStatement *)v5[1] addBindVariable:v24];

          if ((v13 & 1) == 0)
          {
            [v5[3] appendString:{@", "}];
          }

          [v5[3] appendString:{objc_msgSend(v21, "columnName")}];
          [v5[3] appendString:@" = ?"];
          v13 = 0;
        }

        ++v20;
        ++v11;
      }

      while (v18 != v20);
      v25 = [foreignEntityKeyColumns countByEnumeratingWithState:&v73 objects:v83 count:16];
      v18 = v25;
    }

    while (v25);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v26 = [foreignOrderKeyColumns countByEnumeratingWithState:&v69 objects:v82 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v70;
    do
    {
      v29 = 0;
      do
      {
        if (*v70 != v28)
        {
          objc_enumerationMutation(foreignOrderKeyColumns);
        }

        v30 = *(*(&v69 + 1) + 8 * v29);
        if (CFBitVectorGetBitAtIndex(originalRow, v11))
        {
          slot2 = [v30 slot];
          if (_referenceData64)
          {
            v32 = *(_referenceData64 + _NSSQLRowInstanceSize + ((4 * *(_referenceData64 + 16)) & 0x1FFF8) + 4 * slot2);
          }

          else
          {
            v32 = 0;
          }

          v33 = -[NSSQLBindVariable initWithUnsignedInt:sqlType:]([NSSQLBindVariable alloc], "initWithUnsignedInt:sqlType:", v32, [v30 sqlType]);
          [(NSSQLiteStatement *)v5[1] addBindVariable:v33];

          if ((v13 & 1) == 0)
          {
            [v5[3] appendString:{@", "}];
          }

          [v5[3] appendString:{objc_msgSend(v30, "columnName")}];
          [v5[3] appendString:@" = ?"];
          v13 = 0;
        }

        ++v29;
        ++v11;
      }

      while (v27 != v29);
      v34 = [foreignOrderKeyColumns countByEnumeratingWithState:&v69 objects:v82 count:16];
      v27 = v34;
    }

    while (v34);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v35 = [attributeColumns countByEnumeratingWithState:&v65 objects:v81 count:16];
  if (v35)
  {
    v36 = v35;
    v63 = *v66;
    do
    {
      v37 = 0;
      do
      {
        if (*v66 != v63)
        {
          objc_enumerationMutation(attributeColumns);
        }

        v38 = *(*(&v65 + 1) + 8 * v37);
        if (CFBitVectorGetBitAtIndex(originalRow, v11))
        {
          if ([v38 isConstrained])
          {
            v39 = 0;
          }

          else
          {
            attributeDescription = [v38 attributeDescription];
            if (attributeDescription)
            {
              v41 = [attributeDescription superCompositeAttribute] != 0;
            }

            else
            {
              v41 = 0;
            }

            v39 = -[NSSQLRow attributeValueForSlot:](_referenceData64, [v38 slot]);
            if (v41)
            {
              v39 = [v39 valueForKeyPath:{-[NSPropertyDescription _elementPath](objc_msgSend(v38, "propertyDescription"))}];
            }
          }

          v42 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:]([NSSQLBindVariable alloc], "initWithValue:sqlType:propertyDescription:", v39, [v38 sqlType], objc_msgSend(v38, "attributeDescription"));
          [(NSSQLiteStatement *)v5[1] addBindVariable:v42];

          if ((v13 & 1) == 0)
          {
            [v5[3] appendString:{@", "}];
          }

          [v5[3] appendString:{objc_msgSend(v38, "columnName")}];
          [v5[3] appendString:@" = ?"];
          v13 = 0;
        }

        ++v37;
        ++v11;
      }

      while (v36 != v37);
      v43 = [attributeColumns countByEnumeratingWithState:&v65 objects:v81 count:16];
      v36 = v43;
    }

    while (v43);
  }

  if (v57)
  {
    v44 = v57[18];
  }

  else
  {
    v44 = 0;
  }

  if (row)
  {
    v45 = atomic_load((row + 40));
    v46 = *(v45 + 12) + 1;
  }

  else
  {
    v46 = 1;
  }

  [_referenceData64 setOptLock:v46];
  v47 = [NSSQLBindVariable alloc];
  if (_referenceData64)
  {
    v48 = atomic_load((_referenceData64 + 40));
    v49 = *(v48 + 12);
  }

  else
  {
    v49 = 0;
  }

  v50 = -[NSSQLBindVariable initWithInt64:sqlType:](v47, "initWithInt64:sqlType:", v49, [v44 sqlType]);
  [(NSSQLiteStatement *)v5[1] addBindVariable:v50];

  if ((v13 & 1) == 0)
  {
    [v5[3] appendString:{@", "}];
  }

  [v5[3] appendString:{objc_msgSend(v44, "columnName")}];
  [v5[3] appendString:@" = ?"];
  [v5[3] appendString:@" "];
  if (!row)
  {
    v52 = 0;
    if (!_referenceData64)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  v51 = atomic_load((row + 40));
  v52 = *(v51 + 12);
  if (_referenceData64)
  {
LABEL_79:
    v53 = atomic_load((_referenceData64 + 40));
    _referenceData64 = [*(v53 + 16) _referenceData64];
  }

LABEL_80:
  if (v52)
  {
    v54 = @" WHERE Z_PK = ? AND Z_OPT = ?";
  }

  else
  {
    v54 = @" WHERE Z_PK = ? AND (Z_OPT = ? OR Z_OPT IS NULL)";
  }

  v55 = [[NSSQLBindVariable alloc] initWithInt64:_referenceData64 sqlType:3];
  [(NSSQLiteStatement *)v5[1] addBindVariable:v55];

  v56 = [[NSSQLBindVariable alloc] initWithInt64:v52 sqlType:3];
  [(NSSQLiteStatement *)v5[1] addBindVariable:v56];

  [v5[4] appendString:v54];
  result = [@" WHERE  (1 = 1) " isEqual:v5[4]];
  if ((result & 1) == 0)
  {
    return [v5[3] appendString:v5[4]];
  }

  return result;
}

- (void)prepareDeleteStatementWithRow:(uint64_t)row
{
  if (row)
  {
    v2 = a2;
    if (!a2 || (*(a2 + 16) & 1) != 0)
    {
      _storeInfo1 = 0;
    }

    else
    {
      v4 = atomic_load((a2 + 40));
      _storeInfo1 = [*(v4 + 16) _storeInfo1];
    }

    [*(row + 24) appendString:@"DELETE FROM "];
    [*(row + 24) appendString:{objc_msgSend(objc_msgSend(*(row + 8), "entity"), "tableName")}];
    if (_storeInfo1)
    {
      v6 = _storeInfo1[16];
      _storeInfo1 = _storeInfo1[18];
    }

    else
    {
      v6 = 0;
    }

    [*(row + 24) appendString:{objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], objc_msgSend(v6, "columnName"), objc_msgSend(_storeInfo1, "columnName"))}];
    v7 = [NSSQLBindVariable alloc];
    if (v2)
    {
      v8 = atomic_load((v2 + 40));
      _referenceData64 = [*(v8 + 16) _referenceData64];
    }

    else
    {
      _referenceData64 = 0;
    }

    v10 = -[NSSQLBindVariable initWithInt64:sqlType:](v7, "initWithInt64:sqlType:", _referenceData64, [v6 sqlType]);
    [(NSSQLiteStatement *)*(row + 8) addBindVariable:v10];

    v11 = [NSSQLBindVariable alloc];
    if (v2)
    {
      v12 = atomic_load((v2 + 40));
      v2 = *(v12 + 12);
    }

    v13 = -[NSSQLBindVariable initWithInt64:sqlType:](v11, "initWithInt64:sqlType:", v2, [_storeInfo1 sqlType]);
    [(NSSQLiteStatement *)*(row + 8) addBindVariable:v13];
  }
}

@end