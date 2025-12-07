@interface FedStatsSQLiteCategoryDatabase
+ (FedStatsSQLiteCategoryDatabase)databaseWithFileURL:(id)l minIndex:(unint64_t)index maxIndex:(unint64_t)maxIndex checkForPrimaryKey:(BOOL)key error:(id *)error;
+ (id)categoryDatabaseAt:(id)at withCategories:(id)categories tableName:(id)name categoryColumnName:(id)columnName indexColumnName:(id)indexColumnName error:(id *)error;
- (FedStatsSQLiteCategoryDatabase)initWithSQLiteDatabase:(id)database tableName:(id)name categoryColumnName:(id)columnName indexColumnName:(id)indexColumnName minIndex:(unint64_t)index maxIndex:(unint64_t)maxIndex;
- (id)decode:(unint64_t)decode error:(id *)error;
- (id)encode:(id)encode error:(id *)error;
- (id)encodeCategories:(id)categories error:(id *)error;
@end

@implementation FedStatsSQLiteCategoryDatabase

- (FedStatsSQLiteCategoryDatabase)initWithSQLiteDatabase:(id)database tableName:(id)name categoryColumnName:(id)columnName indexColumnName:(id)indexColumnName minIndex:(unint64_t)index maxIndex:(unint64_t)maxIndex
{
  databaseCopy = database;
  nameCopy = name;
  columnNameCopy = columnName;
  indexColumnNameCopy = indexColumnName;
  v22.receiver = self;
  v22.super_class = FedStatsSQLiteCategoryDatabase;
  v18 = [(FedStatsSQLiteCategoryDatabase *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sqliteDB, database);
    objc_storeStrong(&v19->_tableName, name);
    objc_storeStrong(&v19->_categoryColumnName, columnName);
    objc_storeStrong(&v19->_indexColumnName, indexColumnName);
    v19->_minIndex = index;
    v19->_maxIndex = maxIndex;
  }

  return v19;
}

+ (FedStatsSQLiteCategoryDatabase)databaseWithFileURL:(id)l minIndex:(unint64_t)index maxIndex:(unint64_t)maxIndex checkForPrimaryKey:(BOOL)key error:(id *)error
{
  keyCopy = key;
  lCopy = l;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v85 = 0;
    v13 = [FedStatsSQLiteDatabase databaseWithURL:lCopy mode:114 error:&v85];
    v14 = v85;
    if (!v13)
    {
      if (error)
      {
        v37 = [FedStatsError errorWithCode:302 underlyingError:v14 description:@"Cannot open database"];
LABEL_23:
        v36 = 0;
        *error = v37;
LABEL_25:

        goto LABEL_26;
      }

LABEL_24:
      v36 = 0;
      goto LABEL_25;
    }

    indexCopy = index;
    v15 = MEMORY[0x277CCACA8];
    v16 = v13;
    v17 = [v15 stringWithFormat:@"SELECT COUNT(*) AS %@ FROM SQLITE_MASTER WHERE type == 'table'", @"tableCount"];
    v86 = 0;
    v18 = [v16 runQuery:v17 error:&v86];

    if (v18)
    {
      maxIndexCopy = maxIndex;
      next = [v18 next];
      if (next)
      {
        v20 = next;
        selfCopy = self;
        v21 = [next objectForKey:@"tableCount"];
        if (v21)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v77 = v13;
            unsignedIntegerValue = [v21 unsignedIntegerValue];

            v23 = unsignedIntegerValue == 1;
            v13 = v77;
            if (!v23)
            {
LABEL_21:
              if (error)
              {
                v37 = [FedStatsError errorWithCode:302 description:@"Database does not have exactly one table"];
                goto LABEL_23;
              }

              goto LABEL_24;
            }

            v24 = MEMORY[0x277CCACA8];
            v25 = v16;
            v26 = [v24 stringWithFormat:@"SELECT %@ FROM SQLITE_MASTER WHERE type == 'table'", @"name"];
            v86 = 0;
            v27 = [v25 runQuery:v26 error:&v86];

            v28 = v86;
            if (v27)
            {
              v75 = v25;
              next2 = [v27 next];
              v30 = next2;
              v74 = v26;
              if (next2)
              {
                v31 = [next2 objectForKey:@"name"];
                v32 = v31;
                v33 = v28;
                if (v31)
                {
                  v34 = v31;
                  v35 = v14;
                }

                else
                {
                  v35 = [FedStatsError errorWithCode:302 underlyingError:v28 description:@"Cannot lookup table name"];
                  v43 = v35;
                }

                v42 = v32;
              }

              else
              {
                v33 = v28;
                v35 = [FedStatsError errorWithCode:302 underlyingError:v28 description:@"Cannot check query result"];
                v41 = v35;
                v42 = 0;
              }

              v40 = v42;
              v26 = v74;
              v25 = v75;
            }

            else
            {
              [FedStatsError errorWithCode:302 underlyingError:v28 description:@"Cannot query database"];
              v35 = v33 = v28;
              v39 = v35;
              v40 = 0;
            }

            v44 = v35;
            v45 = v40;
            if (!v40)
            {
              if (error)
              {
                [FedStatsError errorWithCode:302 underlyingError:v44 description:@"Cannot get table name from database"];
                *error = v36 = 0;
              }

              else
              {
                v36 = 0;
              }

              v13 = v77;
              goto LABEL_79;
            }

            v46 = MEMORY[0x277CCACA8];
            v47 = v25;
            v48 = [v46 stringWithFormat:@"SELECT COUNT(*) AS %@ FROM PRAGMA_TABLE_XINFO('%@')", @"columnCount", v45];
            v86 = 0;
            v49 = [v47 runQuery:v48 error:&v86];

            if (!v49)
            {

              v13 = v77;
              goto LABEL_63;
            }

            v50 = v44;
            next3 = [v49 next];
            v13 = v77;
            if (next3)
            {
              v52 = next3;
              v76 = v45;
              v53 = [next3 objectForKey:@"columnCount"];
              if (v53)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  unsignedIntegerValue2 = [v53 unsignedIntegerValue];

                  v23 = unsignedIntegerValue2 == 2;
                  v45 = v76;
                  v13 = v77;
                  v44 = v50;
                  if (!v23)
                  {
LABEL_63:
                    if (error)
                    {
                      v73 = @"Database table does not have exactly two columns";
LABEL_65:
                      [FedStatsError errorWithCode:302 description:v73];
                      *error = v36 = 0;
LABEL_79:

                      v14 = v44;
                      goto LABEL_25;
                    }

                    goto LABEL_78;
                  }

                  if (!keyCopy)
                  {
                    goto LABEL_48;
                  }

                  v55 = MEMORY[0x277CCACA8];
                  v56 = v47;
                  v57 = [v55 stringWithFormat:@"SELECT COUNT(*) AS %@ FROM PRAGMA_INDEX_LIST('%@') AS indices, PRAGMA_INDEX_XINFO(indices.name) AS index_info WHERE indices.origin == 'pk' AND index_info.key == 1", @"indexColumnCount", v76];;
                  v86 = 0;
                  v58 = [v56 runQuery:v57 error:&v86];

                  if (v58)
                  {
                    next4 = [v58 next];
                    if (next4)
                    {
                      v60 = next4;
                      v61 = [next4 objectForKey:@"indexColumnCount"];
                      if (v61)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          unsignedIntegerValue3 = [v61 unsignedIntegerValue];

                          v23 = unsignedIntegerValue3 == 2;
                          v45 = v76;
                          v13 = v77;
                          v44 = v50;
                          if (!v23)
                          {
LABEL_76:
                            if (error)
                            {
                              v73 = @"Database table does not have primary key with the two columns";
                              goto LABEL_65;
                            }

LABEL_78:
                            v36 = 0;
                            goto LABEL_79;
                          }

LABEL_48:
                          v84 = v44;
                          v63 = getColumnName(v47, v45, @"TEXT", &v84);
                          v64 = v84;

                          if (!v63)
                          {
                            if (error)
                            {
                              [FedStatsError errorWithCode:302 underlyingError:v64 description:@"Cannot get text-typed column name from table"];
                              *error = v36 = 0;
                            }

                            else
                            {
                              v36 = 0;
                            }

                            goto LABEL_87;
                          }

                          v83 = v64;
                          v65 = getColumnName(v47, v45, @"INTEGER", &v83);
                          v66 = v83;

                          v67 = v65;
                          if (v65)
                          {
                            v68 = maxIndexCopy;
                            if (indexCopy == 0x7FFFFFFFFFFFFFFFLL)
                            {
                              v69 = 1;
                            }

                            else
                            {
                              v69 = indexCopy;
                            }

                            if (maxIndexCopy == 0x7FFFFFFFFFFFFFFFLL)
                            {
                              v81 = v67;
                              v82 = v66;
                              v70 = getColumnMaxValue(v47, v45, v67, &v82);
                              v71 = v82;

                              if (!v70)
                              {
                                if (error)
                                {
                                  [FedStatsError errorWithCode:302 underlyingError:v71 description:@"Cannot get number of rows from database"];
                                  *error = v36 = 0;
                                }

                                else
                                {
                                  v36 = 0;
                                }

                                v66 = v71;
                                v45 = v76;
                                v13 = v77;
                                v67 = v81;
                                goto LABEL_86;
                              }

                              unsignedIntegerValue4 = [v70 unsignedIntegerValue];

                              v68 = unsignedIntegerValue4;
                              v66 = v71;
                              v67 = v81;
                            }

                            v36 = [[selfCopy alloc] initWithSQLiteDatabase:v47 tableName:v45 categoryColumnName:v63 indexColumnName:v67 minIndex:v69 maxIndex:v68];
                          }

                          else if (error)
                          {
                            [FedStatsError errorWithCode:302 underlyingError:v66 description:@"Cannot get text-typed column name from table"];
                            *error = v36 = 0;
                          }

                          else
                          {
                            v36 = 0;
                          }

LABEL_86:

                          v64 = v66;
LABEL_87:

                          v44 = v64;
                          goto LABEL_79;
                        }
                      }

                      v45 = v76;
                      v13 = v77;
LABEL_75:
                      v44 = v50;
                      goto LABEL_76;
                    }
                  }

                  v13 = v77;
                  goto LABEL_75;
                }
              }

              v45 = v76;
            }

            else
            {
            }

            v44 = v50;
            goto LABEL_63;
          }
        }
      }
    }

    goto LABEL_21;
  }

  if (error)
  {
    [FedStatsError errorWithCode:302 description:@"SQLite categories database requires a path in URL"];
    *error = v36 = 0;
  }

  else
  {
    v36 = 0;
  }

LABEL_26:

  return v36;
}

- (id)encode:(id)encode error:(id *)error
{
  encodeCopy = encode;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = MEMORY[0x277CCACA8];
    indexColumnName = [(FedStatsSQLiteCategoryDatabase *)self indexColumnName];
    tableName = [(FedStatsSQLiteCategoryDatabase *)self tableName];
    categoryColumnName = [(FedStatsSQLiteCategoryDatabase *)self categoryColumnName];
    encodeCopy = [v7 stringWithFormat:@"SELECT %@ FROM '%@' WHERE %@ == %@ ORDER BY RANDOM() LIMIT 1", indexColumnName, tableName, categoryColumnName, encodeCopy];

    sqliteDB = [(FedStatsSQLiteCategoryDatabase *)self sqliteDB];
    v20 = 0;
    v13 = [sqliteDB runQuery:encodeCopy error:&v20];
    v14 = v20;

    if (v13)
    {
      next = [v13 next];
      if (next)
      {
        indexColumnName2 = [(FedStatsSQLiteCategoryDatabase *)self indexColumnName];
        v17 = [next objectForKey:indexColumnName2];

        if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "unsignedIntegerValue") - -[FedStatsSQLiteCategoryDatabase minIndex](self, "minIndex") + 1}];
        }

        else if (error)
        {
          [FedStatsError errorWithCode:900 description:@"Database columns are malformed"];
          *error = v18 = 0;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = &unk_285E12DB8;
      }
    }

    else if (error)
    {
      [FedStatsError errorWithCode:401 underlyingError:v14 description:@"Failed to lookup category in the database"];
      *error = v18 = 0;
    }

    else
    {
      v18 = 0;
    }
  }

  else if (error)
  {
    [FedStatsError errorWithCode:401 description:@"Input category should be a string"];
    *error = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)encodeCategories:(id)categories error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(categoriesCopy, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = categoriesCopy;
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", *(*(&v36 + 1) + 8 * i)];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v10);
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = [v7 componentsJoinedByString:{@", "}];
  v16 = [v14 stringWithFormat:@"(%@)", v15];

  v17 = MEMORY[0x277CCACA8];
  tableName = [(FedStatsSQLiteCategoryDatabase *)self tableName];
  categoryColumnName = [(FedStatsSQLiteCategoryDatabase *)self categoryColumnName];
  v20 = [v17 stringWithFormat:@"SELECT * FROM '%@' WHERE %@ in %@", tableName, categoryColumnName, v16];

  sqliteDB = [(FedStatsSQLiteCategoryDatabase *)self sqliteDB];
  v35 = 0;
  v22 = [sqliteDB runQuery:v20 error:&v35];
  v23 = v35;

  if (v22)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    next = [v22 next];
    if (next)
    {
      v26 = next;
      v33 = v23;
      v34 = v16;
      do
      {
        indexColumnName = [(FedStatsSQLiteCategoryDatabase *)self indexColumnName];
        v28 = [v26 objectForKey:indexColumnName];

        categoryColumnName2 = [(FedStatsSQLiteCategoryDatabase *)self categoryColumnName];
        v30 = [v26 objectForKey:categoryColumnName2];

        [dictionary setObject:v28 forKeyedSubscript:v30];
        next2 = [v22 next];

        v26 = next2;
      }

      while (next2);
      v23 = v33;
      v16 = v34;
    }
  }

  else if (error)
  {
    [FedStatsError errorWithCode:401 underlyingError:v23 description:@"Failed to lookup categories in the database"];
    *error = dictionary = 0;
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

- (id)decode:(unint64_t)decode error:(id *)error
{
  v6 = MEMORY[0x277CCACA8];
  v7 = [(FedStatsSQLiteCategoryDatabase *)self categoryColumnName:decode];
  tableName = [(FedStatsSQLiteCategoryDatabase *)self tableName];
  indexColumnName = [(FedStatsSQLiteCategoryDatabase *)self indexColumnName];
  decode = [v6 stringWithFormat:@"SELECT %@ FROM '%@' WHERE %@ == %lu ORDER BY RANDOM() LIMIT 1", v7, tableName, indexColumnName, decode];

  sqliteDB = [(FedStatsSQLiteCategoryDatabase *)self sqliteDB];
  v18 = 0;
  v12 = [sqliteDB runQuery:decode error:&v18];

  if (v12)
  {
    next = [v12 next];
    if (next)
    {
      categoryColumnName = [(FedStatsSQLiteCategoryDatabase *)self categoryColumnName];
      v15 = [next objectForKey:categoryColumnName];

      if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = @"FedStatsCategoricalDataOutOfBounds";
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)categoryDatabaseAt:(id)at withCategories:(id)categories tableName:(id)name categoryColumnName:(id)columnName indexColumnName:(id)indexColumnName error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  atCopy = at;
  categoriesCopy = categories;
  nameCopy = name;
  columnNameCopy = columnName;
  indexColumnNameCopy = indexColumnName;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
LABEL_23:
      [FedStatsError errorWithCode:302 description:v34];
      *error = v33 = 0;
      goto LABEL_32;
    }

LABEL_31:
    v33 = 0;
    goto LABEL_32;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      goto LABEL_23;
    }

    goto LABEL_31;
  }

  v37 = indexColumnNameCopy;
  v38 = columnNameCopy;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v18 = categoriesCopy;
  v19 = [v18 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v44;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v44 != v21)
        {
          objc_enumerationMutation(v18);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
            *error = {;
          }

          v33 = 0;
          goto LABEL_27;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v42 = 0;
  v23 = [FedStatsSQLiteDatabase databaseWithURL:atCopy mode:119 error:&v42];
  v24 = v42;
  if (!v23)
  {
    indexColumnNameCopy = v37;
    columnNameCopy = v38;
    if (error)
    {
      *error = [FedStatsError errorWithCode:302 underlyingError:v24 description:@"Cannot create new database"];
    }

    goto LABEL_31;
  }

  indexColumnNameCopy = v37;
  columnNameCopy = v38;
  v40 = nameCopy;
  [MEMORY[0x277CCACA8] stringWithFormat:@"CREATE TABLE '%@' ('%@' INTEGER, '%@' TEXT, PRIMARY KEY('%@', '%@')) WITHOUT ROWID", nameCopy, v37, v38, v37, v38];
  v36 = v41[1] = v24;
  v25 = [v23 execute:? error:?];
  v26 = v24;

  if (v25)
  {
    v39 = v23;
    v27 = 0;
    v28 = 1;
    do
    {
      if (v28 - 1 >= [v18 count])
      {

        v33 = +[FedStatsSQLiteCategoryDatabase databaseWithFileURL:minIndex:maxIndex:checkForPrimaryKey:error:](FedStatsSQLiteCategoryDatabase, "databaseWithFileURL:minIndex:maxIndex:checkForPrimaryKey:error:", atCopy, 1, [v18 count], 1, error);
        goto LABEL_39;
      }

      v29 = MEMORY[0x277CCACA8];
      v30 = [v18 objectAtIndex:v28 - 1];
      v31 = [v29 stringWithFormat:@"INSERT INTO '%@' VALUES (%lu, %@)", v40, v28, v30];

      v41[0] = v26;
      LOBYTE(v30) = [v39 execute:v31 error:v41];
      v32 = v41[0];

      ++v28;
      v26 = v32;
      v27 = v31;
    }

    while ((v30 & 1) != 0);
    if (error)
    {
      *error = [FedStatsError errorWithCode:302 underlyingError:v32 description:@"Cannot insert elements into the table"];
    }

    v33 = 0;
LABEL_39:
    nameCopy = v40;
LABEL_27:
    indexColumnNameCopy = v37;
    columnNameCopy = v38;
  }

  else
  {
    if (error)
      *error = {;
    }

    v33 = 0;
    nameCopy = v40;
  }

LABEL_32:

  return v33;
}

@end