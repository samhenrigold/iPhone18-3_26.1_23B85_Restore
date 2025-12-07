@interface NSSQLiteStoreMigrator
@end

@implementation NSSQLiteStoreMigrator

void *__70___NSSQLiteStoreMigrator_initWithStore_destinationModel_mappingModel___block_invoke(uint64_t a1)
{
  result = [(NSSQLiteConnection *)*(*(a1 + 32) + 48) fetchTableNames];
  *(*(a1 + 32) + 64) = result;
  return result;
}

void __43___NSSQLiteStoreMigrator_performMigration___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v978 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v3 = v2;
  v708 = [MEMORY[0x1E695DF90] dictionary];
  v771 = v1;
  if (*(v1 + 64) == 1)
  {
    v4 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v972) = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Beginning lightweight migration on connection\n", &v972, 2u);
        }
      }

      else
      {
        v6 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v972) = 0;
          _os_log_impl(&dword_18565F000, v6, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Beginning lightweight migration on connection\n", &v972, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v7 = 1;
    }

    else
    {
      v7 = 4;
    }

    _NSCoreDataLog_console(v7, "Beginning lightweight migration on connection");
    objc_autoreleasePoolPop(v4);
    v689 = (v1 + 65);
    v8 = *(v1 + 64);
    if ((*(v1 + 65) & 1) == 0)
    {
      goto LABEL_28;
    }

    if (*(v1 + 64))
    {
      v9 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v10 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v10, OS_LOG_TYPE_ERROR, "CoreData: error: Increasing SQLite cache size to 117MB\n", &v972, 2u);
          }
        }

        else
        {
          v11 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v11, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Increasing SQLite cache size to 117MB\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v12 = 1;
      }

      else
      {
        v12 = 4;
      }

      _NSCoreDataLog_console(v12, "Increasing SQLite cache size to 117MB");
      objc_autoreleasePoolPop(v9);
    }
  }

  else
  {
    v689 = (v1 + 65);
    if ((*(v1 + 65) & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  [(NSSQLiteConnection *)*(*(v1 + 32) + 48) _executeSQLString:?];
  v8 = *(v1 + 64);
LABEL_28:
  if (v8)
  {
    v13 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v14 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v972) = 0;
          _os_log_error_impl(&dword_18565F000, v14, OS_LOG_TYPE_ERROR, "CoreData: error: Beginning creation of schema migration statements\n", &v972, 2u);
        }
      }

      else
      {
        v15 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v972) = 0;
          _os_log_impl(&dword_18565F000, v15, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Beginning creation of schema migration statements\n", &v972, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v16 = 1;
    }

    else
    {
      v16 = 4;
    }

    _NSCoreDataLog_console(v16, "Beginning creation of schema migration statements");
    objc_autoreleasePoolPop(v13);
  }

LABEL_40:
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v18 = v17;
  v19 = objc_autoreleasePoolPush();
  v20 = [(_NSSQLiteStoreMigrator *)*(v1 + 32) createEntityMigrationStatements];
  objc_autoreleasePoolPop(v19);
  v692 = v20;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v960[0] = @"Creation of entity migration statements";
  v960[1] = [MEMORY[0x1E696AD98] numberWithDouble:v21 - v18];
  [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v960, 2), @"1.1"}];
  if (!v20)
  {
    v24 = MEMORY[0x1E696ABC0];
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Failed to generate statements to perform migration", @"reason", 0}];
    v767 = 0;
    v738 = 0;
    v692 = 0;
    v26 = 0;
    *(*(*(v1 + 40) + 8) + 40) = [v24 errorWithDomain:*MEMORY[0x1E696A250] code:134110 userInfo:v25];
    *(*(*(v1 + 48) + 8) + 24) = 0;
    goto LABEL_1290;
  }

  if ([*(*(v1 + 32) + 72) count])
  {
    if (*(v1 + 64) == 1)
    {
      v22 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v23 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: error: Creating statements to update entity keys\n", &v972, 2u);
          }
        }

        else
        {
          v27 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v27, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Creating statements to update entity keys\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v28 = 1;
      }

      else
      {
        v28 = 4;
      }

      _NSCoreDataLog_console(v28, "Creating statements to update entity keys");
      objc_autoreleasePoolPop(v22);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v30 = v29;
    v687 = objc_autoreleasePoolPush();
    v31 = *(v1 + 32);
    if (v31 && [*(v31 + 72) count])
    {
      v684 = objc_autoreleasePoolPush();
      v697 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{2 * objc_msgSend(*(v31 + 72), "count")}];
      v753 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(v31 + 72), "count")}];
      v739 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(v31 + 72), "count")}];
      v964 = 0u;
      v963 = 0u;
      v962 = 0u;
      v961 = 0u;
      v32 = *(v31 + 72);
      v33 = [v32 countByEnumeratingWithState:&v961 objects:&v972 count:16];
      if (v33)
      {
        v34 = *v962;
        do
        {
          v35 = 0;
          do
          {
            if (*v962 != v34)
            {
              objc_enumerationMutation(v32);
            }

            v36 = *(*(&v961 + 1) + 8 * v35);
            v37 = objc_autoreleasePoolPush();
            v38 = [*(v31 + 24) entityNamed:v36];
            v39 = [objc_msgSend(*(v31 + 72) objectForKey:{v36), "rootEntity"}];
            v40 = [v753 objectForKey:{objc_msgSend(v39, "name")}];
            if (v40)
            {
              [v40 addObject:v38];
            }

            else
            {
              v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v38, 0}];
              [v753 setObject:v41 forKey:{objc_msgSend(v39, "name")}];
            }

            v42 = [v739 objectForKey:{objc_msgSend(v39, "name")}];
            if (v42)
            {
              if (v38)
              {
                v43 = *(v38 + 184);
              }

              else
              {
                v43 = 0;
              }

              [v42 appendFormat:@", %u", v43];
            }

            else
            {
              v44 = objc_alloc(MEMORY[0x1E696AD60]);
              if (v38)
              {
                v45 = *(v38 + 184);
              }

              else
              {
                v45 = 0;
              }

              v46 = [v44 initWithFormat:@"%u", v45];
              [v739 setObject:v46 forKey:{objc_msgSend(v39, "name")}];
            }

            objc_autoreleasePoolPop(v37);
            ++v35;
          }

          while (v33 != v35);
          v47 = [v32 countByEnumeratingWithState:&v961 objects:&v972 count:16];
          v33 = v47;
        }

        while (v47);
      }

      v900 = 0u;
      v899 = 0u;
      v898 = 0u;
      v897 = 0u;
      obj = *(v31 + 128);
      v48 = [obj countByEnumeratingWithState:&v897 objects:v971 count:16];
      if (v48)
      {
        v686 = *v898;
        do
        {
          v690 = 0;
          v693 = v48;
          do
          {
            if (*v898 != v686)
            {
              objc_enumerationMutation(obj);
            }

            v49 = *(*(&v897 + 1) + 8 * v690);
            v688 = objc_autoreleasePoolPush();
            v50 = [*(v31 + 16) entityNamed:v49];
            v51 = [v753 objectForKey:{objc_msgSend(v50, "name")}];
            v699 = v50;
            if ([v51 count])
            {
              v768 = [v739 objectForKey:{objc_msgSend(v50, "name")}];
              v52 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"UPDATE OR FAIL "];
              [v52 appendString:{objc_msgSend(v50, "tableName")}];
              [v52 appendString:@" SET "];
              [v52 appendString:@"Z_ENT"];
              objc_msgSend(v52, "appendString:", @" =(CASE");
              v896 = 0u;
              v895 = 0u;
              v894 = 0u;
              v893 = 0u;
              v53 = [v51 countByEnumeratingWithState:&v893 objects:v970 count:16];
              if (!v53)
              {
                goto LABEL_97;
              }

              v54 = *v894;
              while (1)
              {
                v55 = 0;
                do
                {
                  if (*v894 != v54)
                  {
                    objc_enumerationMutation(v51);
                  }

                  v56 = *(*(&v893 + 1) + 8 * v55);
                  v57 = [*(v31 + 72) objectForKey:{objc_msgSend(v56, "name")}];
                  [v52 appendString:@" WHEN "];
                  [v52 appendString:@"Z_ENT"];
                  if (v56)
                  {
                    v58 = v56[46];
                    if (v57)
                    {
                      goto LABEL_91;
                    }
                  }

                  else
                  {
                    v58 = 0;
                    if (v57)
                    {
LABEL_91:
                      v59 = *(v57 + 184);
                      goto LABEL_92;
                    }
                  }

                  v59 = 0;
LABEL_92:
                  [v52 appendFormat:@" = %d THEN %d", v58, v59];
                  ++v55;
                }

                while (v53 != v55);
                v60 = [v51 countByEnumeratingWithState:&v893 objects:v970 count:16];
                v53 = v60;
                if (!v60)
                {
LABEL_97:
                  [v52 appendString:@" ELSE "];
                  v50 = v699;
                  [v52 appendString:@"Z_ENT"];
                  [v52 appendString:@" END WHERE "]);
                  [v52 appendString:@"Z_ENT"];
                  objc_msgSend(v52, "appendString:", @" IN (");
                  [v52 appendString:v768];
                  [v52 appendString:@""]);
                  v61 = [(NSSQLiteAdapter *)*(v31 + 32) newStatementWithSQLString:v52];
                  [v697 addObject:v61];

                  break;
                }
              }
            }

            v892 = 0u;
            v891 = 0u;
            v890 = 0u;
            v889 = 0u;
            if (v50)
            {
              v62 = v50;
              do
              {
                if (!v62)
                {
                  goto LABEL_129;
                }

                v63 = v62;
                v62 = v62[21];
              }

              while (v62 != v63);
              v64 = v63[9];
            }

            else
            {
LABEL_129:
              v64 = 0;
            }

            v701 = v64;
            v65 = [v64 countByEnumeratingWithState:&v889 objects:v969 count:16];
            v66 = v701;
            if (!v65)
            {
              goto LABEL_127;
            }

            v67 = *v890;
            v695 = *v890;
            do
            {
              v769 = 0;
              v718 = v65;
              do
              {
                if (*v890 != v67)
                {
                  objc_enumerationMutation(v66);
                }

                v68 = *(*(&v889 + 1) + 8 * v769);
                context = objc_autoreleasePoolPush();
                if (v68)
                {
                  if (v68[24] == 4)
                  {
                    v69 = [objc_msgSend(objc_msgSend(v68 "toOneRelationship")];
                    v70 = [v753 objectForKey:{objc_msgSend(v69, "name")}];
                    if ([v70 count])
                    {
                      v709 = [v739 objectForKey:{objc_msgSend(v69, "name")}];
                      v71 = [v68 columnName];
                      v72 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"UPDATE OR FAIL "];
                      [v72 appendString:{objc_msgSend(v699, "tableName")}];
                      [v72 appendString:@" SET "];
                      [v72 appendString:v71];
                      objc_msgSend(v72, "appendString:", @" =(CASE");
                      v888 = 0u;
                      v887 = 0u;
                      v886 = 0u;
                      v885 = 0u;
                      v73 = [v70 countByEnumeratingWithState:&v885 objects:&v965 count:16];
                      if (!v73)
                      {
                        goto LABEL_124;
                      }

                      v74 = *v886;
                      while (1)
                      {
                        v75 = 0;
                        do
                        {
                          if (*v886 != v74)
                          {
                            objc_enumerationMutation(v70);
                          }

                          v76 = *(*(&v885 + 1) + 8 * v75);
                          v77 = [*(v31 + 72) objectForKey:{objc_msgSend(v76, "name")}];
                          [v72 appendString:@" WHEN "];
                          [v72 appendString:v71];
                          if (v76)
                          {
                            v78 = v76[46];
                            if (v77)
                            {
                              goto LABEL_118;
                            }
                          }

                          else
                          {
                            v78 = 0;
                            if (v77)
                            {
LABEL_118:
                              v79 = *(v77 + 184);
                              goto LABEL_119;
                            }
                          }

                          v79 = 0;
LABEL_119:
                          [v72 appendFormat:@" = %d THEN %d", v78, v79];
                          ++v75;
                        }

                        while (v73 != v75);
                        v80 = [v70 countByEnumeratingWithState:&v885 objects:&v965 count:16];
                        v73 = v80;
                        if (!v80)
                        {
LABEL_124:
                          [v72 appendString:@" ELSE "];
                          v48 = v693;
                          v67 = v695;
                          v66 = v701;
                          [v72 appendString:v71];
                          [v72 appendString:@" END WHERE "]);
                          [v72 appendString:v71];
                          objc_msgSend(v72, "appendString:", @" IN (");
                          [v72 appendString:v709];
                          [v72 appendString:@""]);
                          v81 = [(NSSQLiteAdapter *)*(v31 + 32) newStatementWithSQLString:v72];
                          [v697 addObject:v81];

                          break;
                        }
                      }
                    }
                  }
                }

                objc_autoreleasePoolPop(context);
                v769 = v769 + 1;
              }

              while (v769 != v718);
              v65 = [v66 countByEnumeratingWithState:&v889 objects:v969 count:16];
            }

            while (v65);
LABEL_127:
            objc_autoreleasePoolPop(v688);
            ++v690;
          }

          while (v690 != v48);
          v82 = [obj countByEnumeratingWithState:&v897 objects:v971 count:16];
          v48 = v82;
        }

        while (v82);
      }

      objc_autoreleasePoolPop(v684);
      v738 = v697;
    }

    else
    {
      v738 = 0;
    }

    objc_autoreleasePoolPop(v687);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v959[0] = @"Creation of update entity keys statements";
    v959[1] = [MEMORY[0x1E696AD98] numberWithDouble:v83 - v30];
    [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v959, 2), @"1.2"}];
  }

  else
  {
    v738 = 0;
  }

  if (*(*(v771 + 32) + 136) == 1)
  {
    if (*(v771 + 64) == 1)
    {
      v84 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v85 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v85, OS_LOG_TYPE_ERROR, "CoreData: error: Creating statements to update primary key table\n", &v972, 2u);
          }
        }

        else
        {
          v86 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v86, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Creating statements to update primary key table\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v87 = 1;
      }

      else
      {
        v87 = 4;
      }

      _NSCoreDataLog_console(v87, "Creating statements to update primary key table");
      objc_autoreleasePoolPop(v84);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v89 = v88;
    v710 = objc_autoreleasePoolPush();
    v90 = *(v771 + 32);
    if (v90)
    {
      v702 = objc_autoreleasePoolPush();
      *(v90 + 144) = objc_alloc_init(MEMORY[0x1E695DF70]);
      v754 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ALTER TABLE %@ RENAME TO %@_ORIG", @"Z_PRIMARYKEY", @"Z_PRIMARYKEY"];
      v91 = [[NSSQLiteStatement alloc] initWithEntity:0];
      v92 = v91;
      if (v91)
      {
        sqlString = v91->_sqlString;
        if (sqlString != v754)
        {

          v92->_sqlString = [(NSString *)v754 copy];
        }
      }

      [*(v90 + 144) addObject:v92];
      PrimaryKeyTable = [(NSSQLiteAdapter *)*(v90 + 32) newCreatePrimaryKeyTableStatement];
      [*(v90 + 144) addObject:PrimaryKeyTable];

      v95 = *(v90 + 16);
      if (v95)
      {
        v96 = *(v95 + 32);
      }

      else
      {
        v96 = 0;
      }

      v900 = 0u;
      v899 = 0u;
      v898 = 0u;
      v897 = 0u;
      v97 = [v96 countByEnumeratingWithState:&v897 objects:&v972 count:16];
      if (v97)
      {
        v98 = *v898;
        do
        {
          v99 = 0;
          do
          {
            if (*v898 != v98)
            {
              objc_enumerationMutation(v96);
            }

            v100 = *(*(&v897 + 1) + 8 * v99);
            v101 = objc_autoreleasePoolPush();
            if (v100)
            {
              if (*(v100 + 160))
              {
                v102 = 0;
              }

              else
              {
                v102 = -1;
              }
            }

            else
            {
              v102 = 0;
            }

            v103 = [(NSSQLiteAdapter *)*(v90 + 32) newPrimaryKeyInitializeStatementForEntity:v100 withInitialMaxPK:v102];
            [*(v90 + 144) addObject:v103];

            objc_autoreleasePoolPop(v101);
            ++v99;
          }

          while (v97 != v99);
          v104 = [v96 countByEnumeratingWithState:&v897 objects:&v972 count:16];
          v97 = v104;
        }

        while (v104);
      }

      v719 = objc_autoreleasePoolPush();
      v896 = 0u;
      v895 = 0u;
      v894 = 0u;
      v893 = 0u;
      v105 = [objc_msgSend(*(v90 + 8) "ancillarySQLModels")];
      v106 = [v105 countByEnumeratingWithState:&v893 objects:v971 count:16];
      if (v106)
      {
        contexta = *v894;
        v728 = v105;
        do
        {
          v107 = 0;
          do
          {
            if (*v894 != contexta)
            {
              objc_enumerationMutation(v728);
            }

            v108 = *(*(&v893 + 1) + 8 * v107);
            v889 = 0u;
            v890 = 0u;
            v891 = 0u;
            v892 = 0u;
            if (v108)
            {
              v109 = *(v108 + 32);
            }

            else
            {
              v109 = 0;
            }

            v110 = [v109 countByEnumeratingWithState:&v889 objects:v970 count:16];
            if (v110)
            {
              v111 = *v890;
              do
              {
                v112 = 0;
                do
                {
                  if (*v890 != v111)
                  {
                    objc_enumerationMutation(v109);
                  }

                  v113 = *(*(&v889 + 1) + 8 * v112);
                  v114 = objc_autoreleasePoolPush();
                  if (v113)
                  {
                    if (*(v113 + 160))
                    {
                      v115 = 0;
                    }

                    else
                    {
                      v115 = -1;
                    }
                  }

                  else
                  {
                    v115 = 0;
                  }

                  v116 = [(NSSQLiteAdapter *)*(v90 + 32) newPrimaryKeyInitializeStatementForEntity:v113 withInitialMaxPK:v115];
                  [*(v90 + 144) addObject:v116];

                  objc_autoreleasePoolPop(v114);
                  ++v112;
                }

                while (v110 != v112);
                v117 = [v109 countByEnumeratingWithState:&v889 objects:v970 count:16];
                v110 = v117;
              }

              while (v117);
            }

            ++v107;
          }

          while (v107 != v106);
          v118 = [v728 countByEnumeratingWithState:&v893 objects:v971 count:16];
          v106 = v118;
        }

        while (v118);
      }

      objc_autoreleasePoolPop(v719);
      v888 = 0u;
      v887 = 0u;
      v886 = 0u;
      v885 = 0u;
      v119 = *(v90 + 96);
      v120 = [v119 countByEnumeratingWithState:&v885 objects:v969 count:16];
      if (v120)
      {
        v121 = *v886;
        do
        {
          v122 = 0;
          do
          {
            if (*v886 != v121)
            {
              objc_enumerationMutation(v119);
            }

            v123 = objc_autoreleasePoolPush();
            v124 = objc_msgSend_valueForKey_(*(v90 + 96));
            if (v124)
            {
              v125 = *(v124 + 32);
              if (v125)
              {
                if (!*(v125 + 160))
                {
                  if ([*(v125 + 152) count])
                  {
                    v126 = [(_NSSQLiteStoreMigrator *)v90 _originalRootsForAddedEntity:v125];
                    v127 = v126;
                    if (!v126 || ![v126 count])
                    {
                      goto LABEL_211;
                    }

                    if ([v127 count] == 1)
                    {
                      v128 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v129 = [v127 lastObject];
                      if (v129)
                      {
                        v130 = *(v129 + 184);
                      }

                      else
                      {
                        v130 = 0;
                      }

                      v754 = [v128 initWithFormat:@"UPDATE OR FAIL %@ SET %@ = (SELECT %@ FROM %@_ORIG WHERE %@ = %d) WHERE %@ = %d", @"Z_PRIMARYKEY", @"Z_MAX", @"Z_MAX", @"Z_PRIMARYKEY", @"Z_ENT", v130, @"Z_ENT", *(v125 + 184)];
                    }

                    else
                    {
                      v131 = v754;
                    }
                  }

                  else
                  {
                    v754 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE OR FAIL %@ SET %@ = 0 WHERE %@ = %d", @"Z_PRIMARYKEY", @"Z_MAX", @"Z_ENT", *(v125 + 184)];
                  }

                  v132 = [[NSSQLiteStatement alloc] initWithEntity:0];
                  v133 = v132;
                  if (v132)
                  {
                    v134 = v132->_sqlString;
                    if (v134 != v754)
                    {

                      v133->_sqlString = [(NSString *)v754 copy];
                    }
                  }

                  [*(v90 + 144) addObject:v133];
                }
              }
            }

LABEL_211:
            objc_autoreleasePoolPop(v123);
            ++v122;
          }

          while (v120 != v122);
          v135 = [v119 countByEnumeratingWithState:&v885 objects:v969 count:16];
          v120 = v135;
        }

        while (v135);
      }

      v884 = 0u;
      v883 = 0u;
      v882 = 0u;
      v881 = 0u;
      v755 = *(v90 + 120);
      v136 = [v755 countByEnumeratingWithState:&v881 objects:&v965 count:16];
      if (v136)
      {
        v137 = *v882;
        do
        {
          v138 = 0;
          do
          {
            if (*v882 != v137)
            {
              objc_enumerationMutation(v755);
            }

            v139 = objc_autoreleasePoolPush();
            v140 = objc_msgSend_valueForKey_(*(v90 + 120));
            if (v140)
            {
              v141 = v140[4];
              if (v141)
              {
                if (!*(v141 + 160))
                {
                  v142 = [v140 sourceEntity];
                  v143 = objc_alloc(MEMORY[0x1E696AEC0]);
                  if (v142)
                  {
                    v144 = *(v142 + 184);
                  }

                  else
                  {
                    v144 = 0;
                  }

                  v145 = [v143 initWithFormat:@"UPDATE OR FAIL %@ SET %@ = (SELECT %@ FROM %@_ORIG WHERE %@ = %d) WHERE %@ = %d", @"Z_PRIMARYKEY", @"Z_MAX", @"Z_MAX", @"Z_PRIMARYKEY", @"Z_ENT", v144, @"Z_ENT", *(v141 + 184)];
                  v146 = [[NSSQLiteStatement alloc] initWithEntity:0];
                  v147 = v146;
                  if (v146)
                  {
                    v148 = v146->_sqlString;
                    if (v148 != v145)
                    {

                      v147->_sqlString = [(NSString *)v145 copy];
                    }
                  }

                  [*(v90 + 144) addObject:v147];
                }
              }
            }

            objc_autoreleasePoolPop(v139);
            ++v138;
          }

          while (v136 != v138);
          v149 = [v755 countByEnumeratingWithState:&v881 objects:&v965 count:16];
          v136 = v149;
        }

        while (v149);
      }

      v880 = 0u;
      v879 = 0u;
      v878 = 0u;
      v877 = 0u;
      v756 = *(v90 + 112);
      v150 = [v756 countByEnumeratingWithState:&v877 objects:&v961 count:16];
      if (v150)
      {
        v151 = *v878;
        do
        {
          for (i = 0; i != v150; ++i)
          {
            if (*v878 != v151)
            {
              objc_enumerationMutation(v756);
            }

            v153 = objc_autoreleasePoolPush();
            v154 = objc_msgSend_valueForKey_(*(v90 + 112));
            if (v154)
            {
              v155 = v154[4];
              if (v155)
              {
                if (!*(v155 + 160))
                {
                  v156 = [v154 sourceEntity];
                  v157 = v156;
                  if (v156 && !v156[20])
                  {
                    v158 = objc_alloc(MEMORY[0x1E696AEC0]);
                  }

                  else
                  {
                    v157 = [v156 rootEntity];
                    v158 = objc_alloc(MEMORY[0x1E696AEC0]);
                    if (!v157)
                    {
                      v159 = 0;
                      goto LABEL_247;
                    }
                  }

                  v159 = *(v157 + 184);
LABEL_247:
                  v160 = [v158 initWithFormat:@"UPDATE OR FAIL %@ SET %@ = (SELECT %@ FROM %@_ORIG WHERE %@ = %d) WHERE %@ = %d", @"Z_PRIMARYKEY", @"Z_MAX", @"Z_MAX", @"Z_PRIMARYKEY", @"Z_ENT", v159, @"Z_ENT", *(v155 + 184)];
                  v161 = [[NSSQLiteStatement alloc] initWithEntity:0];
                  v162 = v161;
                  if (v161)
                  {
                    v163 = v161->_sqlString;
                    if (v163 != v160)
                    {

                      v162->_sqlString = [(NSString *)v160 copy];
                    }
                  }

                  [*(v90 + 144) addObject:v162];
                }
              }
            }

            objc_autoreleasePoolPop(v153);
          }

          v150 = [v756 countByEnumeratingWithState:&v877 objects:&v961 count:16];
        }

        while (v150);
      }

      v164 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TABLE %@_ORIG", @"Z_PRIMARYKEY"];
      v165 = [[NSSQLiteStatement alloc] initWithEntity:0];
      v166 = v165;
      if (v165)
      {
        v167 = v165->_sqlString;
        if (v167 != v164)
        {

          v166->_sqlString = [(NSString *)v164 copy];
        }
      }

      [*(v90 + 144) addObject:v166];
      objc_autoreleasePoolPop(v702);
    }

    objc_autoreleasePoolPop(v710);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v958[0] = @"Creation of update primary key table statements";
    v958[1] = [MEMORY[0x1E696AD98] numberWithDouble:v168 - v89];
    [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v958, 2), @"1.3"}];
  }

  if (*(v771 + 64) == 1)
  {
    v169 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v170 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v972) = 0;
          _os_log_error_impl(&dword_18565F000, v170, OS_LOG_TYPE_ERROR, "CoreData: error: Finished creating schema migration statements\n", &v972, 2u);
        }
      }

      else
      {
        v171 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v972) = 0;
          _os_log_impl(&dword_18565F000, v171, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished creating schema migration statements\n", &v972, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v172 = 1;
    }

    else
    {
      v172 = 4;
    }

    _NSCoreDataLog_console(v172, "Finished creating schema migration statements");
    objc_autoreleasePoolPop(v169);
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v957[0] = @"Total preparation time for schema migration statements";
  v957[1] = [MEMORY[0x1E696AD98] numberWithDouble:v173 - v18];
  [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v957, 2), @"1.0"}];
  if (*(v771 + 64) == 1)
  {
    v174 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v175 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v972) = 0;
          _os_log_error_impl(&dword_18565F000, v175, OS_LOG_TYPE_ERROR, "CoreData: error: Beginning formal transaction\n", &v972, 2u);
        }
      }

      else
      {
        v176 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v972) = 0;
          _os_log_impl(&dword_18565F000, v176, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Beginning formal transaction\n", &v972, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v177 = 1;
    }

    else
    {
      v177 = 4;
    }

    _NSCoreDataLog_console(v177, "Beginning formal transaction");
    objc_autoreleasePoolPop(v174);
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v179 = v178;
  [(NSSQLiteConnection *)*(*(v771 + 32) + 48) beginTransaction];
  v180 = *(v771 + 32);
  if (v180 && (*(v180 + 218) & 1) != 0)
  {
    if (*(v771 + 64) == 1)
    {
      v181 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v182 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v182, OS_LOG_TYPE_ERROR, "CoreData: error: Beginning forced migration\n", &v972, 2u);
          }
        }

        else
        {
          v192 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v192, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Beginning forced migration\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v193 = 1;
      }

      else
      {
        v193 = 4;
      }

      _NSCoreDataLog_console(v193, "Beginning forced migration");
      objc_autoreleasePoolPop(v181);
    }

    goto LABEL_316;
  }

  if (*(v771 + 64) == 1)
  {
    v183 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v184 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v972) = 0;
          _os_log_error_impl(&dword_18565F000, v184, OS_LOG_TYPE_ERROR, "CoreData: error: Checking metadata\n", &v972, 2u);
        }
      }

      else
      {
        v185 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v972) = 0;
          _os_log_impl(&dword_18565F000, v185, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Checking metadata\n", &v972, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v186 = 1;
    }

    else
    {
      v186 = 4;
    }

    _NSCoreDataLog_console(v186, "Checking metadata");
    objc_autoreleasePoolPop(v183);
    v180 = *(v771 + 32);
  }

  if (v180)
  {
    v187 = *(v180 + 16);
  }

  else
  {
    v187 = 0;
  }

  v188 = -[NSManagedObjectModel _entityVersionHashesDigest]([v187 managedObjectModel]);
  if ([objc_msgSend(-[NSSQLiteConnection fetchMetadata](*(*(v771 + 32) + 48)) objectForKey:{0x1EF3FCE28), "isEqualToString:", v188}])
  {
    v189 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v190 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v972) = 0;
          v191 = "CoreData: error: Migration was completed by another client\n";
LABEL_989:
          _os_log_error_impl(&dword_18565F000, v190, OS_LOG_TYPE_ERROR, v191, &v972, 2u);
        }
      }

      else
      {
        v190 = _PFLogGetLogStream(2);
        if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v972) = 0;
          v191 = "CoreData: warning: Migration was completed by another client\n";
          goto LABEL_989;
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v199 = 1;
    }

    else
    {
      v199 = 2;
    }

    _NSCoreDataLog_console(v199, "Migration was completed by another client");
    objc_autoreleasePoolPop(v189);
    v767 = 0;
LABEL_328:
    if (*(v771 + 64) == 1)
    {
      v200 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v201 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v201, OS_LOG_TYPE_ERROR, "CoreData: error: Committing formal transaction\n", &v972, 2u);
          }
        }

        else
        {
          v221 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v221, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Committing formal transaction\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v222 = 1;
      }

      else
      {
        v222 = 4;
      }

      _NSCoreDataLog_console(v222, "Committing formal transaction");
      objc_autoreleasePoolPop(v200);
    }

    [(NSSQLiteConnection *)*(*(v771 + 32) + 48) commitTransaction];
    if (*(v771 + 64) == 1)
    {
      v223 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v224 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v224, OS_LOG_TYPE_ERROR, "CoreData: error: Finished committing formal transaction\n", &v972, 2u);
          }
        }

        else
        {
          v225 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v225, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v225, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished committing formal transaction\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v226 = 1;
      }

      else
      {
        v226 = 4;
      }

      _NSCoreDataLog_console(v226, "Finished committing formal transaction");
      objc_autoreleasePoolPop(v223);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v228 = v227;
    v905[0] = @"Time for COMMIT";
    v905[1] = [MEMORY[0x1E696AD98] numberWithDouble:v227 - v179];
    [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v905, 2), @"2.17"}];
    v904[0] = @"Total formal transaction time";
    v904[1] = [MEMORY[0x1E696AD98] numberWithDouble:v228 - v18];
    [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v904, 2), @"2.0"}];
    if (*(v771 + 64) == 1)
    {
      v229 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v230 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v230, OS_LOG_TYPE_ERROR, "CoreData: error: Checkpointing WAL journal\n", &v972, 2u);
          }
        }

        else
        {
          v231 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v231, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Checkpointing WAL journal\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v232 = 1;
      }

      else
      {
        v232 = 4;
      }

      _NSCoreDataLog_console(v232, "Checkpointing WAL journal");
      objc_autoreleasePoolPop(v229);
    }

    v233 = [(NSSQLiteConnection *)*(*(v771 + 32) + 48) copyRawIntegerRowsForSQL:?];
    if (v233)
    {
      CFRelease(v233);
    }

    if (*(v771 + 64) == 1)
    {
      v234 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v235 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v235, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v235, OS_LOG_TYPE_ERROR, "CoreData: error: Finished checkpointing WAL journal\n", &v972, 2u);
          }
        }

        else
        {
          v236 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v236, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished checkpointing WAL journal\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v237 = 1;
      }

      else
      {
        v237 = 4;
      }

      _NSCoreDataLog_console(v237, "Finished checkpointing WAL journal");
      objc_autoreleasePoolPop(v234);
    }

    *(*(*(v771 + 48) + 8) + 24) = 1;
    if (*(v771 + 64) == 1)
    {
      v238 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v239 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v239, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v239, OS_LOG_TYPE_ERROR, "CoreData: error: Successfully completed lightweight migration on connection\n", &v972, 2u);
          }
        }

        else
        {
          v240 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v240, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Successfully completed lightweight migration on connection\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v241 = 1;
      }

      else
      {
        v241 = 4;
      }

      _NSCoreDataLog_console(v241, "Successfully completed lightweight migration on connection");
      objc_autoreleasePoolPop(v238);
    }

    if (*v689 == 1)
    {
      [(NSSQLiteConnection *)*(*(v771 + 32) + 48) _executeSQLString:?];
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v243 = v242;
    v903[0] = @"Checkpoint time";
    v903[1] = [MEMORY[0x1E696AD98] numberWithDouble:v242 - v228];
    [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v903, 2), @"3.0"}];
    v902[0] = @"Total migration time (on connection)";
    v902[1] = [MEMORY[0x1E696AD98] numberWithDouble:v243 - v3];
    [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v902, 2), @"0.0"}];
    contextc = objc_autoreleasePoolPush();
    if (*(v771 + 64) == 1)
    {
      v244 = [objc_msgSend(v708 "allKeys")];
      v775 = 0u;
      v776 = 0u;
      v773 = 0u;
      v774 = 0u;
      v245 = [v244 countByEnumeratingWithState:&v773 objects:v901 count:16];
      if (v245)
      {
        v246 = *v774;
        do
        {
          for (j = 0; j != v245; ++j)
          {
            if (*v774 != v246)
            {
              objc_enumerationMutation(v244);
            }

            v248 = *(*(&v773 + 1) + 8 * j);
            v249 = [v708 objectForKey:v248];
            v250 = [v249 firstObject];
            [objc_msgSend(v249 "lastObject")];
            v252 = v251;
            if (v251 > 0.01)
            {
              v253 = objc_autoreleasePoolPush();
              _pflogInitialize(4);
              if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
              {
                if (_pflogging_catastrophic_mode)
                {
                  v254 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v254, OS_LOG_TYPE_ERROR))
                  {
                    v972 = 138412802;
                    p_isa = v248;
                    v974 = 2112;
                    v975 = v250;
                    v976 = 2048;
                    v977 = v252;
                    _os_log_error_impl(&dword_18565F000, v254, OS_LOG_TYPE_ERROR, "CoreData: error:     Migration step %@ '%@' took %2.2f seconds\n", &v972, 0x20u);
                  }
                }

                else
                {
                  v255 = _PFLogGetLogStream(4);
                  if (os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT))
                  {
                    v972 = 138412802;
                    p_isa = v248;
                    v974 = 2112;
                    v975 = v250;
                    v976 = 2048;
                    v977 = v252;
                    _os_log_impl(&dword_18565F000, v255, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:     Migration step %@ '%@' took %2.2f seconds\n", &v972, 0x20u);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v256 = 1;
              }

              else
              {
                v256 = 4;
              }

              _NSCoreDataLog_console(v256, "    Migration step %@ '%@' took %2.2f seconds", v248, v250, *&v252);
              objc_autoreleasePoolPop(v253);
            }
          }

          v245 = [v244 countByEnumeratingWithState:&v773 objects:v901 count:16];
        }

        while (v245);
      }
    }

    v26 = 0;
    objc_autoreleasePoolPop(contextc);
    goto LABEL_1290;
  }

LABEL_316:
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v18 = v194;
  v956[0] = @"Beginning formal transaction";
  v956[1] = [MEMORY[0x1E696AD98] numberWithDouble:v194 - v179];
  [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v956, 2), @"2.1"}];
  if ([objc_msgSend(*(*(v771 + 32) + 152) objectForKey:{@"deleted", "count"}])
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v196 = v195;
    if (*(v771 + 64) == 1)
    {
      v197 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v198 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v198, OS_LOG_TYPE_ERROR, "CoreData: error: Begin dropping attribute extensions.\n", &v972, 2u);
          }
        }

        else
        {
          v202 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v202, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Begin dropping attribute extensions.\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v203 = 1;
      }

      else
      {
        v203 = 4;
      }

      _NSCoreDataLog_console(v203, "Begin dropping attribute extensions.");
      objc_autoreleasePoolPop(v197);
    }

    v876 = 0u;
    v875 = 0u;
    v874 = 0u;
    v873 = 0u;
    v204 = [*(*(v771 + 32) + 152) objectForKey:@"deleted"];
    v205 = [v204 countByEnumeratingWithState:&v873 objects:v955 count:16];
    if (v205)
    {
      v720 = *v874;
      v703 = v204;
      do
      {
        v757 = 0;
        v711 = v205;
        do
        {
          if (*v874 != v720)
          {
            objc_enumerationMutation(v703);
          }

          v206 = *(*(&v873 + 1) + 8 * v757);
          contextb = objc_autoreleasePoolPush();
          v729 = [v206 validate:*(v771 + 56)];
          if (v729)
          {
            v872 = 0u;
            v871 = 0u;
            v870 = 0u;
            v869 = 0u;
            v207 = [v206 dropSQLStrings];
            v208 = [v207 countByEnumeratingWithState:&v869 objects:v954 count:16];
            if (v208)
            {
              v209 = *v870;
              do
              {
                for (k = 0; k != v208; ++k)
                {
                  if (*v870 != v209)
                  {
                    objc_enumerationMutation(v207);
                  }

                  v211 = *(*(&v869 + 1) + 8 * k);
                  v212 = objc_autoreleasePoolPush();
                  v213 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v211];
                  if (*(v771 + 64) == 1)
                  {
                    v214 = objc_autoreleasePoolPush();
                    _pflogInitialize(4);
                    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                    {
                      if (_pflogging_catastrophic_mode)
                      {
                        v215 = _PFLogGetLogStream(1);
                        if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
                        {
                          v972 = 138412290;
                          p_isa = &v213->super.isa;
                          _os_log_error_impl(&dword_18565F000, v215, OS_LOG_TYPE_ERROR, "CoreData: error: Executing drop attribute extension statement: %@\n", &v972, 0xCu);
                        }
                      }

                      else
                      {
                        v216 = _PFLogGetLogStream(4);
                        if (os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT))
                        {
                          v972 = 138412290;
                          p_isa = &v213->super.isa;
                          _os_log_impl(&dword_18565F000, v216, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing drop attribute extension statement: %@\n", &v972, 0xCu);
                        }
                      }
                    }

                    if (_pflogging_catastrophic_mode)
                    {
                      v217 = 1;
                    }

                    else
                    {
                      v217 = 4;
                    }

                    _NSCoreDataLog_console(v217, "Executing drop attribute extension statement: %@", v213);
                    objc_autoreleasePoolPop(v214);
                  }

                  [(NSSQLiteConnection *)*(*(v771 + 32) + 48) prepareAndExecuteSQLStatement:v213];

                  objc_autoreleasePoolPop(v212);
                }

                v208 = [v207 countByEnumeratingWithState:&v869 objects:v954 count:16];
              }

              while (v208);
            }
          }

          else
          {
            v218 = *(*(*(v771 + 40) + 8) + 40);
            *(*(*(v771 + 48) + 8) + 24) = 0;
          }

          objc_autoreleasePoolPop(contextb);
          if (!v729)
          {
            goto LABEL_810;
          }

          v757 = v757 + 1;
        }

        while (v757 != v711);
        v205 = [v703 countByEnumeratingWithState:&v873 objects:v955 count:16];
      }

      while (v205);
    }

    if (*(v771 + 64) == 1)
    {
      v219 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v220 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v220, OS_LOG_TYPE_ERROR, "CoreData: error: Finished dropping attribute extensions.\n", &v972, 2u);
          }
        }

        else
        {
          v257 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v257, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v257, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished dropping attribute extensions.\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v258 = 1;
      }

      else
      {
        v258 = 4;
      }

      _NSCoreDataLog_console(v258, "Finished dropping attribute extensions.");
      objc_autoreleasePoolPop(v219);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v953[0] = @"Drop attribute extensions";
    v953[1] = [MEMORY[0x1E696AD98] numberWithDouble:v259 - v196];
    [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v953, 2), @"2.2"}];
  }

  if ([*(*(v771 + 32) + 184) count])
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v261 = v260;
    if (*(v771 + 64) == 1)
    {
      v262 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v263 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v263, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v263, OS_LOG_TYPE_ERROR, "CoreData: error: Begin dropping derived properties.\n", &v972, 2u);
          }
        }

        else
        {
          v264 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v264, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v264, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Begin dropping derived properties.\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v265 = 1;
      }

      else
      {
        v265 = 4;
      }

      _NSCoreDataLog_console(v265, "Begin dropping derived properties.");
      objc_autoreleasePoolPop(v262);
    }

    v868 = 0u;
    v867 = 0u;
    v866 = 0u;
    v865 = 0u;
    v712 = *(*(v771 + 32) + 184);
    v730 = [v712 countByEnumeratingWithState:&v865 objects:v952 count:16];
    if (v730)
    {
      v721 = *v866;
      do
      {
        v758 = 0;
        do
        {
          if (*v866 != v721)
          {
            objc_enumerationMutation(v712);
          }

          v266 = *(*(&v865 + 1) + 8 * v758);
          contextd = objc_autoreleasePoolPush();
          if (v266)
          {
            [(NSSQLEntity_DerivedAttributesExtension *)v266 _generateTriggerSQL];
            v267 = objc_msgSend_valueForKey_(*(v266 + 32));
          }

          else
          {
            v267 = objc_msgSend_valueForKey_(0);
          }

          v268 = v267;
          v864 = 0u;
          v863 = 0u;
          v862 = 0u;
          v861 = 0u;
          v269 = [v267 countByEnumeratingWithState:&v861 objects:v951 count:16];
          if (v269)
          {
            v270 = *v862;
            do
            {
              for (m = 0; m != v269; ++m)
              {
                if (*v862 != v270)
                {
                  objc_enumerationMutation(v268);
                }

                v272 = *(*(&v861 + 1) + 8 * m);
                v273 = objc_autoreleasePoolPush();
                if (*(v771 + 64) == 1)
                {
                  v274 = objc_autoreleasePoolPush();
                  _pflogInitialize(4);
                  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                  {
                    if (_pflogging_catastrophic_mode)
                    {
                      v275 = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(v275, OS_LOG_TYPE_ERROR))
                      {
                        v972 = 138412290;
                        p_isa = v272;
                        _os_log_error_impl(&dword_18565F000, v275, OS_LOG_TYPE_ERROR, "CoreData: error: Executing drop derived property statement: %@\n", &v972, 0xCu);
                      }
                    }

                    else
                    {
                      v276 = _PFLogGetLogStream(4);
                      if (os_log_type_enabled(v276, OS_LOG_TYPE_DEFAULT))
                      {
                        v972 = 138412290;
                        p_isa = v272;
                        _os_log_impl(&dword_18565F000, v276, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing drop derived property statement: %@\n", &v972, 0xCu);
                      }
                    }
                  }

                  if (_pflogging_catastrophic_mode)
                  {
                    v277 = 1;
                  }

                  else
                  {
                    v277 = 4;
                  }

                  _NSCoreDataLog_console(v277, "Executing drop derived property statement: %@", v272);
                  objc_autoreleasePoolPop(v274);
                }

                [(NSSQLiteConnection *)*(*(v771 + 32) + 48) prepareAndExecuteSQLStatement:v272];
                objc_autoreleasePoolPop(v273);
              }

              v269 = [v268 countByEnumeratingWithState:&v861 objects:v951 count:16];
            }

            while (v269);
          }

          objc_autoreleasePoolPop(contextd);
          v758 = v758 + 1;
        }

        while (v758 != v730);
        v278 = [v712 countByEnumeratingWithState:&v865 objects:v952 count:16];
        v730 = v278;
      }

      while (v278);
    }

    if (*(v771 + 64) == 1)
    {
      v279 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v280 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v280, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v280, OS_LOG_TYPE_ERROR, "CoreData: error: End dropping derived properties.\n", &v972, 2u);
          }
        }

        else
        {
          v281 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v281, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v281, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: End dropping derived properties.\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v282 = 1;
      }

      else
      {
        v282 = 4;
      }

      _NSCoreDataLog_console(v282, "End dropping derived properties.");
      objc_autoreleasePoolPop(v279);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v950[0] = @"Drop derived properties";
    v950[1] = [MEMORY[0x1E696AD98] numberWithDouble:v283 - v261];
    [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v950, 2), @"2.3"}];
  }

  if ([*(*(v771 + 32) + 168) count])
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v285 = v284;
    if (*(v771 + 64) == 1)
    {
      v286 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v287 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v287, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v287, OS_LOG_TYPE_ERROR, "CoreData: error: Begin dropping indices.\n", &v972, 2u);
          }
        }

        else
        {
          v288 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v288, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v288, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Begin dropping indices.\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v289 = 1;
      }

      else
      {
        v289 = 4;
      }

      _NSCoreDataLog_console(v289, "Begin dropping indices.");
      objc_autoreleasePoolPop(v286);
    }

    v860 = 0u;
    v859 = 0u;
    v858 = 0u;
    v857 = 0u;
    v713 = *(*(v771 + 32) + 168);
    v731 = [v713 countByEnumeratingWithState:&v857 objects:v949 count:16];
    if (v731)
    {
      v722 = *v858;
      do
      {
        for (n = 0; n != v731; n = n + 1)
        {
          if (*v858 != v722)
          {
            objc_enumerationMutation(v713);
          }

          v290 = *(*(&v857 + 1) + 8 * n);
          contexte = objc_autoreleasePoolPush();
          v291 = [v290 dropStatementsForStore:*(*(v771 + 32) + 8)];
          v856 = 0u;
          v855 = 0u;
          v854 = 0u;
          v853 = 0u;
          v292 = [v291 countByEnumeratingWithState:&v853 objects:v948 count:16];
          if (v292)
          {
            v293 = *v854;
            do
            {
              for (ii = 0; ii != v292; ++ii)
              {
                if (*v854 != v293)
                {
                  objc_enumerationMutation(v291);
                }

                v295 = *(*(&v853 + 1) + 8 * ii);
                v296 = objc_autoreleasePoolPush();
                if (*(v771 + 64) == 1)
                {
                  v297 = objc_autoreleasePoolPush();
                  _pflogInitialize(4);
                  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                  {
                    if (_pflogging_catastrophic_mode)
                    {
                      v298 = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(v298, OS_LOG_TYPE_ERROR))
                      {
                        v972 = 138412290;
                        p_isa = v295;
                        _os_log_error_impl(&dword_18565F000, v298, OS_LOG_TYPE_ERROR, "CoreData: error: Executing drop index statement: %@\n", &v972, 0xCu);
                      }
                    }

                    else
                    {
                      v299 = _PFLogGetLogStream(4);
                      if (os_log_type_enabled(v299, OS_LOG_TYPE_DEFAULT))
                      {
                        v972 = 138412290;
                        p_isa = v295;
                        _os_log_impl(&dword_18565F000, v299, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing drop index statement: %@\n", &v972, 0xCu);
                      }
                    }
                  }

                  if (_pflogging_catastrophic_mode)
                  {
                    v300 = 1;
                  }

                  else
                  {
                    v300 = 4;
                  }

                  _NSCoreDataLog_console(v300, "Executing drop index statement: %@", v295);
                  objc_autoreleasePoolPop(v297);
                }

                [(NSSQLiteConnection *)*(*(v771 + 32) + 48) prepareAndExecuteSQLStatement:v295];
                objc_autoreleasePoolPop(v296);
              }

              v292 = [v291 countByEnumeratingWithState:&v853 objects:v948 count:16];
            }

            while (v292);
          }

          objc_autoreleasePoolPop(contexte);
        }

        v731 = [v713 countByEnumeratingWithState:&v857 objects:v949 count:16];
      }

      while (v731);
    }

    if (*(v771 + 64) == 1)
    {
      v301 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v302 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v302, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v302, OS_LOG_TYPE_ERROR, "CoreData: error: Finished dropping indices.\n", &v972, 2u);
          }
        }

        else
        {
          v303 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v303, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v303, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished dropping indices.\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v304 = 1;
      }

      else
      {
        v304 = 4;
      }

      _NSCoreDataLog_console(v304, "Finished dropping indices.");
      objc_autoreleasePoolPop(v301);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v947[0] = @"Drop indices";
    v947[1] = [MEMORY[0x1E696AD98] numberWithDouble:v305 - v285];
    [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v947, 2), @"2.4"}];
  }

  if ([v692 count])
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v307 = v306;
    if (*(v771 + 64) == 1)
    {
      v308 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v309 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v309, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v309, OS_LOG_TYPE_ERROR, "CoreData: error: Begin entity schema & data migration statements.\n", &v972, 2u);
          }
        }

        else
        {
          v310 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v310, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v310, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Begin entity schema & data migration statements.\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v311 = 1;
      }

      else
      {
        v311 = 4;
      }

      _NSCoreDataLog_console(v311, "Begin entity schema & data migration statements.");
      objc_autoreleasePoolPop(v308);
    }

    v852 = 0u;
    v851 = 0u;
    v850 = 0u;
    v849 = 0u;
    v312 = [v692 countByEnumeratingWithState:&v849 objects:v946 count:16];
    if (v312)
    {
      v313 = *v850;
      do
      {
        v314 = 0;
        do
        {
          if (*v850 != v313)
          {
            objc_enumerationMutation(v692);
          }

          v315 = *(*(&v849 + 1) + 8 * v314);
          v316 = objc_autoreleasePoolPush();
          if (*(v771 + 64) == 1)
          {
            v317 = objc_autoreleasePoolPush();
            _pflogInitialize(4);
            if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                v318 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v318, OS_LOG_TYPE_ERROR))
                {
                  v972 = 138412290;
                  p_isa = v315;
                  _os_log_error_impl(&dword_18565F000, v318, OS_LOG_TYPE_ERROR, "CoreData: error: Executing entity schema & data migration statement: %@\n", &v972, 0xCu);
                }
              }

              else
              {
                v319 = _PFLogGetLogStream(4);
                if (os_log_type_enabled(v319, OS_LOG_TYPE_DEFAULT))
                {
                  v972 = 138412290;
                  p_isa = v315;
                  _os_log_impl(&dword_18565F000, v319, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing entity schema & data migration statement: %@\n", &v972, 0xCu);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v320 = 1;
            }

            else
            {
              v320 = 4;
            }

            _NSCoreDataLog_console(v320, "Executing entity schema & data migration statement: %@", v315);
            objc_autoreleasePoolPop(v317);
          }

          if (*(v771 + 66))
          {
            v321 = [v315 sqlString];
            if ([v321 hasPrefix:@"CREATE TABLE Z_48ACTIONMEDIAPLAYBACKS_"])
            {
              v322 = *(*(v771 + 32) + 48);
              if (!v322 || ([(NSSQLiteConnection *)v322 _hasTableWithName:0 isTemp:?]& 1) == 0)
              {
                goto LABEL_605;
              }

              goto LABEL_604;
            }

            if (![v321 isEqualToString:@"DROP TABLE Z_47ACTIONMEDIAPLAYBACKS_"])
            {
              v325 = [v321 isEqualToString:@"ALTER TABLE Z_47ACTIONMEDIAPLAYBACKS_TEMP RENAME TO Z_48ACTIONMEDIAPLAYBACKS_"];
              v323 = *(*(v771 + 32) + 48);
              if (!v325)
              {
                goto LABEL_606;
              }

              if (!v323 || ![(NSSQLiteConnection *)v323 _hasTableWithName:0 isTemp:?])
              {
LABEL_605:
                v323 = *(*(v771 + 32) + 48);
LABEL_606:
                [(NSSQLiteConnection *)v323 prepareAndExecuteSQLStatement:v315];
                goto LABEL_608;
              }

LABEL_604:
              [(NSSQLiteConnection *)*(*(v771 + 32) + 48) _executeSQLString:?];
              goto LABEL_605;
            }

            v324 = *(*(v771 + 32) + 48);
            if (v324 && [(NSSQLiteConnection *)v324 _hasTableWithName:0 isTemp:?])
            {
              [(NSSQLiteConnection *)*(*(v771 + 32) + 48) _executeSQLString:?];
            }
          }

          else
          {
            [(NSSQLiteConnection *)*(*(v771 + 32) + 48) prepareAndExecuteSQLStatement:v315];
          }

LABEL_608:
          objc_autoreleasePoolPop(v316);
          ++v314;
        }

        while (v312 != v314);
        v326 = [v692 countByEnumeratingWithState:&v849 objects:v946 count:16];
        v312 = v326;
      }

      while (v326);
    }

    if (*(v771 + 64) == 1)
    {
      v327 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v328 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v328, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v328, OS_LOG_TYPE_ERROR, "CoreData: error: Finished entity schema & data migration statements.\n", &v972, 2u);
          }
        }

        else
        {
          v329 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v329, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v329, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished entity schema & data migration statements.\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v330 = 1;
      }

      else
      {
        v330 = 4;
      }

      _NSCoreDataLog_console(v330, "Finished entity schema & data migration statements.");
      objc_autoreleasePoolPop(v327);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v945[0] = @"Execution of entity schema and data migration statements";
    v945[1] = [MEMORY[0x1E696AD98] numberWithDouble:v331 - v307];
    [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v945, 2), @"2.5"}];

    v692 = 0;
  }

  if ([v738 count])
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v333 = v332;
    if (*(v771 + 64) == 1)
    {
      v334 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v335 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v335, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v335, OS_LOG_TYPE_ERROR, "CoreData: error: Begin updating entity key columns.\n", &v972, 2u);
          }
        }

        else
        {
          v336 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v336, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v336, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Begin updating entity key columns.\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v337 = 1;
      }

      else
      {
        v337 = 4;
      }

      _NSCoreDataLog_console(v337, "Begin updating entity key columns.");
      objc_autoreleasePoolPop(v334);
    }

    v848 = 0u;
    v847 = 0u;
    v846 = 0u;
    v845 = 0u;
    v338 = [v738 countByEnumeratingWithState:&v845 objects:v944 count:16];
    if (v338)
    {
      v339 = *v846;
      do
      {
        for (jj = 0; jj != v338; ++jj)
        {
          if (*v846 != v339)
          {
            objc_enumerationMutation(v738);
          }

          v341 = *(*(&v845 + 1) + 8 * jj);
          v342 = objc_autoreleasePoolPush();
          if (*(v771 + 64) == 1)
          {
            v343 = objc_autoreleasePoolPush();
            _pflogInitialize(4);
            if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                v344 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v344, OS_LOG_TYPE_ERROR))
                {
                  v972 = 138412290;
                  p_isa = v341;
                  _os_log_error_impl(&dword_18565F000, v344, OS_LOG_TYPE_ERROR, "CoreData: error: Executing entity key column update statement: %@\n", &v972, 0xCu);
                }
              }

              else
              {
                v345 = _PFLogGetLogStream(4);
                if (os_log_type_enabled(v345, OS_LOG_TYPE_DEFAULT))
                {
                  v972 = 138412290;
                  p_isa = v341;
                  _os_log_impl(&dword_18565F000, v345, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing entity key column update statement: %@\n", &v972, 0xCu);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v346 = 1;
            }

            else
            {
              v346 = 4;
            }

            _NSCoreDataLog_console(v346, "Executing entity key column update statement: %@", v341);
            objc_autoreleasePoolPop(v343);
          }

          [(NSSQLiteConnection *)*(*(v771 + 32) + 48) prepareAndExecuteSQLStatement:v341];
          objc_autoreleasePoolPop(v342);
        }

        v338 = [v738 countByEnumeratingWithState:&v845 objects:v944 count:16];
      }

      while (v338);
    }

    if (*(v771 + 64) == 1)
    {
      v347 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v348 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v348, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v348, OS_LOG_TYPE_ERROR, "CoreData: error: Finished updating entity key columns.\n", &v972, 2u);
          }
        }

        else
        {
          v349 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v349, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v349, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished updating entity key columns.\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v350 = 1;
      }

      else
      {
        v350 = 4;
      }

      _NSCoreDataLog_console(v350, "Finished updating entity key columns.");
      objc_autoreleasePoolPop(v347);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v943[0] = @"Execution of entity key column updates";
    v943[1] = [MEMORY[0x1E696AD98] numberWithDouble:v351 - v333];
    [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v943, 2), @"2.6"}];

    v738 = 0;
  }

  v352 = *(v771 + 32);
  if (*(v352 + 136) == 1)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v354 = v353;
    if (*(v771 + 64) == 1)
    {
      v355 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v356 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v356, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v356, OS_LOG_TYPE_ERROR, "CoreData: error: Begin updating primary key table.\n", &v972, 2u);
          }
        }

        else
        {
          v357 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v357, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v357, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Begin updating primary key table.\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v358 = 1;
      }

      else
      {
        v358 = 4;
      }

      _NSCoreDataLog_console(v358, "Begin updating primary key table.");
      objc_autoreleasePoolPop(v355);
    }

    v844 = 0u;
    v843 = 0u;
    v842 = 0u;
    v841 = 0u;
    v359 = *(*(v771 + 32) + 144);
    v360 = [v359 countByEnumeratingWithState:&v841 objects:v942 count:16];
    if (v360)
    {
      v361 = *v842;
      do
      {
        for (kk = 0; kk != v360; ++kk)
        {
          if (*v842 != v361)
          {
            objc_enumerationMutation(v359);
          }

          v363 = *(*(&v841 + 1) + 8 * kk);
          v364 = objc_autoreleasePoolPush();
          [(NSSQLiteConnection *)*(*(v771 + 32) + 48) prepareAndExecuteSQLStatement:v363];
          objc_autoreleasePoolPop(v364);
        }

        v360 = [v359 countByEnumeratingWithState:&v841 objects:v942 count:16];
      }

      while (v360);
    }

    if (*(v771 + 64) == 1)
    {
      v365 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v366 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v366, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v366, OS_LOG_TYPE_ERROR, "CoreData: error: Finished updating primary key table.\n", &v972, 2u);
          }
        }

        else
        {
          v367 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v367, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v367, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished updating primary key table.\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v368 = 1;
      }

      else
      {
        v368 = 4;
      }

      _NSCoreDataLog_console(v368, "Finished updating primary key table.");
      objc_autoreleasePoolPop(v365);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v941[0] = @"Update primary key table";
    v941[1] = [MEMORY[0x1E696AD98] numberWithDouble:v369 - v354];
    [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v941, 2), @"2.7"}];
    v352 = *(v771 + 32);
  }

  if ([*(v352 + 176) count])
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v371 = v370;
    if (*(v771 + 64) == 1)
    {
      v372 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v373 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v373, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v373, OS_LOG_TYPE_ERROR, "CoreData: error: Begin updating default values.\n", &v972, 2u);
          }
        }

        else
        {
          v374 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v374, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v374, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Begin updating default values.\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v375 = 1;
      }

      else
      {
        v375 = 4;
      }

      _NSCoreDataLog_console(v375, "Begin updating default values.");
      objc_autoreleasePoolPop(v372);
    }

    v840 = 0u;
    v839 = 0u;
    v838 = 0u;
    v837 = 0u;
    v376 = *(*(v771 + 32) + 176);
    v377 = [v376 countByEnumeratingWithState:&v837 objects:v940 count:16];
    if (v377)
    {
      v378 = *v838;
      do
      {
        for (mm = 0; mm != v377; ++mm)
        {
          if (*v838 != v378)
          {
            objc_enumerationMutation(v376);
          }

          v380 = *(*(&v837 + 1) + 8 * mm);
          v381 = objc_autoreleasePoolPush();
          [(NSSQLiteConnection *)*(*(v771 + 32) + 48) prepareAndExecuteSQLStatement:v380];
          objc_autoreleasePoolPop(v381);
        }

        v377 = [v376 countByEnumeratingWithState:&v837 objects:v940 count:16];
      }

      while (v377);
    }

    if (*(v771 + 64) == 1)
    {
      v382 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v383 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v383, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v383, OS_LOG_TYPE_ERROR, "CoreData: error: Finished updating default values.\n", &v972, 2u);
          }
        }

        else
        {
          v384 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v384, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v384, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished updating default values.\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v385 = 1;
      }

      else
      {
        v385 = 4;
      }

      _NSCoreDataLog_console(v385, "Finished updating default values.");
      objc_autoreleasePoolPop(v382);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v939[0] = @"Update default values";
    v939[1] = [MEMORY[0x1E696AD98] numberWithDouble:v386 - v371];
    [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v939, 2), @"2.7.1"}];
  }

  if (![objc_msgSend(*(*(v771 + 32) + 152) objectForKey:{@"inserted", "count"}])
  {
LABEL_818:
    if ([*(*(v771 + 32) + 160) count])
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v424 = v423;
      if (*(v771 + 64) == 1)
      {
        v425 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v426 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v426, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v972) = 0;
              _os_log_error_impl(&dword_18565F000, v426, OS_LOG_TYPE_ERROR, "CoreData: error: Begin index creation and updates.\n", &v972, 2u);
            }
          }

          else
          {
            v427 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v427, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v972) = 0;
              _os_log_impl(&dword_18565F000, v427, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Begin index creation and updates.\n", &v972, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v428 = 1;
        }

        else
        {
          v428 = 4;
        }

        _NSCoreDataLog_console(v428, "Begin index creation and updates.");
        objc_autoreleasePoolPop(v425);
      }

      v824 = 0u;
      v823 = 0u;
      v822 = 0u;
      v821 = 0u;
      v705 = *(*(v771 + 32) + 160);
      v724 = [v705 countByEnumeratingWithState:&v821 objects:v934 count:16];
      if (v724)
      {
        v715 = *v822;
        do
        {
          for (nn = 0; nn != v724; nn = nn + 1)
          {
            if (*v822 != v715)
            {
              objc_enumerationMutation(v705);
            }

            contextg = *(*(&v821 + 1) + 8 * nn);
            v733 = objc_autoreleasePoolPush();
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v430 = v429;
            v431 = [contextg generateStatementsForStore:*(*(v771 + 32) + 8)];
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v433 = v432;
            v933[0] = @"Generate index creation statements";
            v933[1] = [MEMORY[0x1E696AD98] numberWithDouble:v432 - v430];
            [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v933, 2), @"2.9.1"}];
            v820 = 0u;
            v818 = 0u;
            v819 = 0u;
            v817 = 0u;
            v434 = [v431 countByEnumeratingWithState:&v817 objects:v932 count:16];
            if (v434)
            {
              v435 = *v818;
              do
              {
                for (i1 = 0; i1 != v434; ++i1)
                {
                  if (*v818 != v435)
                  {
                    objc_enumerationMutation(v431);
                  }

                  v437 = *(*(&v817 + 1) + 8 * i1);
                  v438 = objc_autoreleasePoolPush();
                  if (*(v771 + 64) == 1)
                  {
                    v439 = objc_autoreleasePoolPush();
                    _pflogInitialize(4);
                    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                    {
                      if (_pflogging_catastrophic_mode)
                      {
                        v440 = _PFLogGetLogStream(1);
                        if (os_log_type_enabled(v440, OS_LOG_TYPE_ERROR))
                        {
                          v972 = 138412290;
                          p_isa = v437;
                          _os_log_error_impl(&dword_18565F000, v440, OS_LOG_TYPE_ERROR, "CoreData: error: Executing index creation statement: %@\n", &v972, 0xCu);
                        }
                      }

                      else
                      {
                        v441 = _PFLogGetLogStream(4);
                        if (os_log_type_enabled(v441, OS_LOG_TYPE_DEFAULT))
                        {
                          v972 = 138412290;
                          p_isa = v437;
                          _os_log_impl(&dword_18565F000, v441, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing index creation statement: %@\n", &v972, 0xCu);
                        }
                      }
                    }

                    if (_pflogging_catastrophic_mode)
                    {
                      v442 = 1;
                    }

                    else
                    {
                      v442 = 4;
                    }

                    _NSCoreDataLog_console(v442, "Executing index creation statement: %@", v437);
                    objc_autoreleasePoolPop(v439);
                  }

                  [(NSSQLiteConnection *)*(*(v771 + 32) + 48) prepareAndExecuteSQLStatement:v437];
                  objc_autoreleasePoolPop(v438);
                }

                v434 = [v431 countByEnumeratingWithState:&v817 objects:v932 count:16];
              }

              while (v434);
            }

            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v444 = v443;
            v931[0] = @"Execute index creation statements";
            v931[1] = [MEMORY[0x1E696AD98] numberWithDouble:v443 - v433];
            [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v931, 2), @"2.9.2"}];
            v445 = [contextg bulkUpdateStatementsForStore:*(*(v771 + 32) + 8)];
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v447 = v446;
            v930[0] = @"Generate index update statements";
            v930[1] = [MEMORY[0x1E696AD98] numberWithDouble:v446 - v444];
            [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v930, 2), @"2.9.3"}];
            v815 = 0u;
            v816 = 0u;
            v813 = 0u;
            v814 = 0u;
            v448 = [v445 countByEnumeratingWithState:&v813 objects:v929 count:16];
            if (v448)
            {
              v449 = *v814;
              do
              {
                for (i2 = 0; i2 != v448; ++i2)
                {
                  if (*v814 != v449)
                  {
                    objc_enumerationMutation(v445);
                  }

                  v451 = *(*(&v813 + 1) + 8 * i2);
                  v452 = objc_autoreleasePoolPush();
                  if (*(v771 + 64) == 1)
                  {
                    v453 = objc_autoreleasePoolPush();
                    _pflogInitialize(4);
                    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                    {
                      if (_pflogging_catastrophic_mode)
                      {
                        v454 = _PFLogGetLogStream(1);
                        if (os_log_type_enabled(v454, OS_LOG_TYPE_ERROR))
                        {
                          v972 = 138412290;
                          p_isa = v451;
                          _os_log_error_impl(&dword_18565F000, v454, OS_LOG_TYPE_ERROR, "CoreData: error: Executing index update statement: %@\n", &v972, 0xCu);
                        }
                      }

                      else
                      {
                        v455 = _PFLogGetLogStream(4);
                        if (os_log_type_enabled(v455, OS_LOG_TYPE_DEFAULT))
                        {
                          v972 = 138412290;
                          p_isa = v451;
                          _os_log_impl(&dword_18565F000, v455, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing index update statement: %@\n", &v972, 0xCu);
                        }
                      }
                    }

                    if (_pflogging_catastrophic_mode)
                    {
                      v456 = 1;
                    }

                    else
                    {
                      v456 = 4;
                    }

                    _NSCoreDataLog_console(v456, "Executing index update statement: %@", v451);
                    objc_autoreleasePoolPop(v453);
                  }

                  [(NSSQLiteConnection *)*(*(v771 + 32) + 48) prepareAndExecuteSQLStatement:v451];
                  objc_autoreleasePoolPop(v452);
                }

                v448 = [v445 countByEnumeratingWithState:&v813 objects:v929 count:16];
              }

              while (v448);
            }

            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v928[0] = @"Execute index update statements";
            v928[1] = [MEMORY[0x1E696AD98] numberWithDouble:v457 - v447];
            [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v928, 2), @"2.9.4"}];
            objc_autoreleasePoolPop(v733);
          }

          v724 = [v705 countByEnumeratingWithState:&v821 objects:v934 count:16];
        }

        while (v724);
      }

      if (*(v771 + 64) == 1)
      {
        v458 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(4))
        {
          if (_pflogging_catastrophic_mode)
          {
            v459 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v459, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v972) = 0;
              _os_log_error_impl(&dword_18565F000, v459, OS_LOG_TYPE_ERROR, "CoreData: error: Finished index creation and updates.\n", &v972, 2u);
            }
          }

          else
          {
            v460 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v460, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v972) = 0;
              _os_log_impl(&dword_18565F000, v460, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished index creation and updates.\n", &v972, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v461 = 1;
        }

        else
        {
          v461 = 4;
        }

        _NSCoreDataLog_console(v461, "Finished index creation and updates.");
        objc_autoreleasePoolPop(v458);
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v927[0] = @"Total index creation and update time";
      v927[1] = [MEMORY[0x1E696AD98] numberWithDouble:v462 - v424];
      [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v927, 2), @"2.9"}];
    }

    v463 = *(*(v771 + 32) + 16);
    if (v463)
    {
      v464 = *(v463 + 24);
    }

    else
    {
      v464 = 0;
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v466 = v465;
    v811 = 0u;
    v812 = 0u;
    v809 = 0u;
    v810 = 0u;
    v467 = [v464 countByEnumeratingWithState:&v809 objects:v926 count:16];
    if (v467)
    {
      v468 = 0;
      v469 = *v810;
      do
      {
        v470 = 0;
        do
        {
          if (*v810 != v469)
          {
            objc_enumerationMutation(v464);
          }

          v471 = *(*(&v809 + 1) + 8 * v470);
          v472 = objc_autoreleasePoolPush();
          v473 = [v464 objectForKey:v471];
          v474 = v473;
          if (v473)
          {
            if (!*(v473 + 160))
            {
              v475 = *(v473 + 152);
              if (v475)
              {
                if ([v475 count])
                {
                  v476 = [objc_msgSend(objc_msgSend(v474 "entityDescription")];
                  v477 = v476;
                  if (v476)
                  {
                    if ([v476 isNSString])
                    {
                      v478 = [v477 lowercaseString];
                      v479 = v478;
                      if (v478)
                      {
                        if (([v478 isEqualToString:@"yes"] & 1) != 0 || objc_msgSend(v479, "isEqualToString:", @"1"))
                        {
                          v480 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v474 tableName]);
                          if (*(v771 + 64) == 1)
                          {
                            v481 = objc_autoreleasePoolPush();
                            _pflogInitialize(4);
                            if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                            {
                              if (_pflogging_catastrophic_mode)
                              {
                                v482 = _PFLogGetLogStream(1);
                                if (os_log_type_enabled(v482, OS_LOG_TYPE_ERROR))
                                {
                                  v972 = 138412290;
                                  p_isa = v480;
                                  _os_log_error_impl(&dword_18565F000, v482, OS_LOG_TYPE_ERROR, "CoreData: error: Executing drop Z_ENT index statement: %@\n", &v972, 0xCu);
                                }
                              }

                              else
                              {
                                v483 = _PFLogGetLogStream(4);
                                if (os_log_type_enabled(v483, OS_LOG_TYPE_DEFAULT))
                                {
                                  v972 = 138412290;
                                  p_isa = v480;
                                  _os_log_impl(&dword_18565F000, v483, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing drop Z_ENT index statement: %@\n", &v972, 0xCu);
                                }
                              }
                            }

                            if (_pflogging_catastrophic_mode)
                            {
                              v484 = 1;
                            }

                            else
                            {
                              v484 = 4;
                            }

                            _NSCoreDataLog_console(v484, "Executing drop Z_ENT index statement: %@", v480);
                            objc_autoreleasePoolPop(v481);
                          }

                          [(NSSQLiteConnection *)*(*(v771 + 32) + 48) _executeSQLString:v480];
                          v468 = 1;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          objc_autoreleasePoolPop(v472);
          ++v470;
        }

        while (v467 != v470);
        v485 = [v464 countByEnumeratingWithState:&v809 objects:v926 count:16];
        v467 = v485;
      }

      while (v485);
      if (v468)
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v925[0] = @"Dropping Z_ENT indices";
        v925[1] = [MEMORY[0x1E696AD98] numberWithDouble:v486 - v466];
        [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v925, 2), @"2.10"}];
      }
    }

    if ([*(*(v771 + 32) + 192) count])
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v488 = v487;
      if (*(v771 + 64) == 1)
      {
        v489 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(4))
        {
          if (_pflogging_catastrophic_mode)
          {
            v490 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v490, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v972) = 0;
              _os_log_error_impl(&dword_18565F000, v490, OS_LOG_TYPE_ERROR, "CoreData: error: Begin updating derived properties.\n", &v972, 2u);
            }
          }

          else
          {
            v491 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v491, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v972) = 0;
              _os_log_impl(&dword_18565F000, v491, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Begin updating derived properties.\n", &v972, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v492 = 1;
        }

        else
        {
          v492 = 4;
        }

        _NSCoreDataLog_console(v492, "Begin updating derived properties.");
        objc_autoreleasePoolPop(v489);
      }

      v807 = 0u;
      v808 = 0u;
      v805 = 0u;
      v806 = 0u;
      v706 = *(*(v771 + 32) + 192);
      v725 = [v706 countByEnumeratingWithState:&v805 objects:v924 count:16];
      if (v725)
      {
        v716 = *v806;
        do
        {
          for (contexth = 0; contexth != v725; contexth = contexth + 1)
          {
            if (*v806 != v716)
            {
              objc_enumerationMutation(v706);
            }

            v762 = *(*(&v805 + 1) + 8 * contexth);
            v734 = objc_autoreleasePoolPush();
            v493 = v762;
            if (v762)
            {
              [(NSSQLEntity_DerivedAttributesExtension *)v762 _generateTriggerSQL];
              v493 = *(v762 + 32);
            }

            v494 = objc_msgSend_valueForKey_(v493);
            v803 = 0u;
            v804 = 0u;
            v801 = 0u;
            v802 = 0u;
            v495 = [v494 countByEnumeratingWithState:&v801 objects:v923 count:16];
            if (v495)
            {
              v496 = *v802;
              do
              {
                for (i3 = 0; i3 != v495; ++i3)
                {
                  if (*v802 != v496)
                  {
                    objc_enumerationMutation(v494);
                  }

                  v498 = *(*(&v801 + 1) + 8 * i3);
                  v499 = objc_autoreleasePoolPush();
                  if (*(v771 + 64) == 1)
                  {
                    v500 = objc_autoreleasePoolPush();
                    _pflogInitialize(4);
                    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                    {
                      if (_pflogging_catastrophic_mode)
                      {
                        v501 = _PFLogGetLogStream(1);
                        if (os_log_type_enabled(v501, OS_LOG_TYPE_ERROR))
                        {
                          v972 = 138412290;
                          p_isa = v498;
                          _os_log_error_impl(&dword_18565F000, v501, OS_LOG_TYPE_ERROR, "CoreData: error: Executing derived property update statement (data): %@\n", &v972, 0xCu);
                        }
                      }

                      else
                      {
                        v502 = _PFLogGetLogStream(4);
                        if (os_log_type_enabled(v502, OS_LOG_TYPE_DEFAULT))
                        {
                          v972 = 138412290;
                          p_isa = v498;
                          _os_log_impl(&dword_18565F000, v502, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing derived property update statement (data): %@\n", &v972, 0xCu);
                        }
                      }
                    }

                    if (_pflogging_catastrophic_mode)
                    {
                      v503 = 1;
                    }

                    else
                    {
                      v503 = 4;
                    }

                    _NSCoreDataLog_console(v503, "Executing derived property update statement (data): %@", v498);
                    objc_autoreleasePoolPop(v500);
                  }

                  [(NSSQLiteConnection *)*(*(v771 + 32) + 48) prepareAndExecuteSQLStatement:v498];
                  objc_autoreleasePoolPop(v499);
                }

                v495 = [v494 countByEnumeratingWithState:&v801 objects:v923 count:16];
              }

              while (v495);
            }

            v504 = v762;
            if (v762)
            {
              [(NSSQLEntity_DerivedAttributesExtension *)v762 _generateTriggerSQL];
              v504 = *(v762 + 32);
            }

            v505 = objc_msgSend_valueForKey_(v504);
            v799 = 0u;
            v800 = 0u;
            v797 = 0u;
            v798 = 0u;
            v506 = [v505 countByEnumeratingWithState:&v797 objects:v922 count:16];
            if (v506)
            {
              v507 = *v798;
              do
              {
                for (i4 = 0; i4 != v506; ++i4)
                {
                  if (*v798 != v507)
                  {
                    objc_enumerationMutation(v505);
                  }

                  v509 = *(*(&v797 + 1) + 8 * i4);
                  v510 = objc_autoreleasePoolPush();
                  if (*(v771 + 64) == 1)
                  {
                    v511 = objc_autoreleasePoolPush();
                    _pflogInitialize(4);
                    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                    {
                      if (_pflogging_catastrophic_mode)
                      {
                        v512 = _PFLogGetLogStream(1);
                        if (os_log_type_enabled(v512, OS_LOG_TYPE_ERROR))
                        {
                          v972 = 138412290;
                          p_isa = v509;
                          _os_log_error_impl(&dword_18565F000, v512, OS_LOG_TYPE_ERROR, "CoreData: error: Executing derived property update statement (trigger): %@\n", &v972, 0xCu);
                        }
                      }

                      else
                      {
                        v513 = _PFLogGetLogStream(4);
                        if (os_log_type_enabled(v513, OS_LOG_TYPE_DEFAULT))
                        {
                          v972 = 138412290;
                          p_isa = v509;
                          _os_log_impl(&dword_18565F000, v513, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing derived property update statement (trigger): %@\n", &v972, 0xCu);
                        }
                      }
                    }

                    if (_pflogging_catastrophic_mode)
                    {
                      v514 = 1;
                    }

                    else
                    {
                      v514 = 4;
                    }

                    _NSCoreDataLog_console(v514, "Executing derived property update statement (trigger): %@", v509);
                    objc_autoreleasePoolPop(v511);
                  }

                  [(NSSQLiteConnection *)*(*(v771 + 32) + 48) prepareAndExecuteSQLStatement:v509];
                  objc_autoreleasePoolPop(v510);
                }

                v506 = [v505 countByEnumeratingWithState:&v797 objects:v922 count:16];
              }

              while (v506);
            }

            objc_autoreleasePoolPop(v734);
          }

          v725 = [v706 countByEnumeratingWithState:&v805 objects:v924 count:16];
        }

        while (v725);
      }

      if (*(v771 + 64) == 1)
      {
        v515 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(4))
        {
          if (_pflogging_catastrophic_mode)
          {
            v516 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v516, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v972) = 0;
              _os_log_error_impl(&dword_18565F000, v516, OS_LOG_TYPE_ERROR, "CoreData: error: Finished updating derived properties.\n", &v972, 2u);
            }
          }

          else
          {
            v517 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v517, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v972) = 0;
              _os_log_impl(&dword_18565F000, v517, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished updating derived properties.\n", &v972, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v518 = 1;
        }

        else
        {
          v518 = 4;
        }

        _NSCoreDataLog_console(v518, "Finished updating derived properties.");
        objc_autoreleasePoolPop(v515);
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v921[0] = @"Update derived properties";
      v921[1] = [MEMORY[0x1E696AD98] numberWithDouble:v519 - v488];
      [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v921, 2), @"2.11"}];
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v521 = v520;
    v735 = objc_autoreleasePoolPush();
    v795 = 0u;
    v796 = 0u;
    v793 = 0u;
    v794 = 0u;
    v522 = [objc_msgSend(*(*(v771 + 32) + 8) "ancillarySQLModels")];
    v523 = [v522 countByEnumeratingWithState:&v793 objects:v920 count:16];
    if (v523)
    {
      contexti = v522;
      v524 = 0;
      v763 = *v794;
      do
      {
        v525 = 0;
        v770 = v523;
        do
        {
          if (*v794 != v763)
          {
            objc_enumerationMutation(contexti);
          }

          v526 = *(*(&v793 + 1) + 8 * v525);
          v527 = objc_autoreleasePoolPush();
          v791 = 0u;
          v792 = 0u;
          v789 = 0u;
          v790 = 0u;
          if (v526)
          {
            v528 = *(v526 + 32);
          }

          else
          {
            v528 = 0;
          }

          v529 = [v528 countByEnumeratingWithState:&v789 objects:v919 count:16];
          if (v529)
          {
            v530 = *v790;
            do
            {
              for (i5 = 0; i5 != v529; ++i5)
              {
                if (*v790 != v530)
                {
                  objc_enumerationMutation(v528);
                }

                v532 = *(*(&v789 + 1) + 8 * i5);
                v533 = objc_autoreleasePoolPush();
                v534 = *(*(v771 + 32) + 48);
                v535 = [v532 tableName];
                if (v534 && [(NSSQLiteConnection *)v534 _hasTableWithName:v535 isTemp:0])
                {
                  [(NSSQLiteConnection *)*(*(v771 + 32) + 48) generatePrimaryKeysForEntity:v532 batch:0];
                  v524 = 1;
                }

                objc_autoreleasePoolPop(v533);
              }

              v529 = [v528 countByEnumeratingWithState:&v789 objects:v919 count:16];
            }

            while (v529);
          }

          objc_autoreleasePoolPop(v527);
          ++v525;
        }

        while (v525 != v770);
        v523 = [contexti countByEnumeratingWithState:&v793 objects:v920 count:16];
      }

      while (v523);
    }

    else
    {
      v524 = 0;
    }

    objc_autoreleasePoolPop(v735);
    if (v524)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v918[0] = @"Update ancillary model primary keys";
      v918[1] = [MEMORY[0x1E696AD98] numberWithDouble:v536 - v521];
      [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v918, 2), @"2.12"}];
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v538 = v537;
    v539 = objc_autoreleasePoolPush();
    if ([(NSSQLiteConnection *)*(*(v771 + 32) + 48) hasIndexTrackingTable])
    {
      [(NSSQLiteConnection *)*(*(v771 + 32) + 48) dropIndexTrackingTable];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v917[0] = @"Drop index tracking table";
      v917[1] = [MEMORY[0x1E696AD98] numberWithDouble:v541 - v538];
      [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v917, 2), @"2.13"}];
    }

    objc_autoreleasePoolPop(v539);
    hasPersistentHistory = [(NSSQLiteConnection *)*(*(v771 + 32) + 48) _hasPersistentHistoryTables];
    if (!hasPersistentHistory)
    {
LABEL_1093:
      if ([*(*(v771 + 32) + 208) count])
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v582 = v581;
        if (*(v771 + 64) == 1)
        {
          v583 = objc_autoreleasePoolPush();
          if (_NSCoreDataIsOSLogEnabled(4))
          {
            if (_pflogging_catastrophic_mode)
            {
              v584 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v584, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v972) = 0;
                _os_log_error_impl(&dword_18565F000, v584, OS_LOG_TYPE_ERROR, "CoreData: error: Beginning CloudKit metadata tables update\n", &v972, 2u);
              }
            }

            else
            {
              v585 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v585, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v972) = 0;
                _os_log_impl(&dword_18565F000, v585, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Beginning CloudKit metadata tables update\n", &v972, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v586 = 1;
          }

          else
          {
            v586 = 4;
          }

          _NSCoreDataLog_console(v586, "Beginning CloudKit metadata tables update");
          objc_autoreleasePoolPop(v583);
        }

        v783 = 0u;
        v784 = 0u;
        v781 = 0u;
        v782 = 0u;
        v587 = *(*(v771 + 32) + 208);
        v588 = [v587 countByEnumeratingWithState:&v781 objects:v910 count:16];
        if (v588)
        {
          v589 = *v782;
          do
          {
            for (i6 = 0; i6 != v588; ++i6)
            {
              if (*v782 != v589)
              {
                objc_enumerationMutation(v587);
              }

              v591 = *(*(&v781 + 1) + 8 * i6);
              v592 = objc_autoreleasePoolPush();
              if (*(v771 + 64) == 1)
              {
                v593 = objc_autoreleasePoolPush();
                _pflogInitialize(4);
                if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    v594 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v594, OS_LOG_TYPE_ERROR))
                    {
                      v972 = 138412290;
                      p_isa = v591;
                      _os_log_error_impl(&dword_18565F000, v594, OS_LOG_TYPE_ERROR, "CoreData: error: Executing CloudKit metadata table update: %@\n", &v972, 0xCu);
                    }
                  }

                  else
                  {
                    v595 = _PFLogGetLogStream(4);
                    if (os_log_type_enabled(v595, OS_LOG_TYPE_DEFAULT))
                    {
                      v972 = 138412290;
                      p_isa = v591;
                      _os_log_impl(&dword_18565F000, v595, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing CloudKit metadata table update: %@\n", &v972, 0xCu);
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  v596 = 1;
                }

                else
                {
                  v596 = 4;
                }

                _NSCoreDataLog_console(v596, "Executing CloudKit metadata table update: %@", v591);
                objc_autoreleasePoolPop(v593);
              }

              [(NSSQLiteConnection *)*(*(v771 + 32) + 48) prepareAndExecuteSQLStatement:v591];
              objc_autoreleasePoolPop(v592);
            }

            v588 = [v587 countByEnumeratingWithState:&v781 objects:v910 count:16];
          }

          while (v588);
        }

        if (*(v771 + 64) == 1)
        {
          v597 = objc_autoreleasePoolPush();
          if (_NSCoreDataIsOSLogEnabled(4))
          {
            if (_pflogging_catastrophic_mode)
            {
              v598 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v598, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v972) = 0;
                _os_log_error_impl(&dword_18565F000, v598, OS_LOG_TYPE_ERROR, "CoreData: error: Finished CloudKit metadata tables update\n", &v972, 2u);
              }
            }

            else
            {
              v599 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v599, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v972) = 0;
                _os_log_impl(&dword_18565F000, v599, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished CloudKit metadata tables update\n", &v972, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v600 = 1;
          }

          else
          {
            v600 = 4;
          }

          _NSCoreDataLog_console(v600, "Finished CloudKit metadata tables update");
          objc_autoreleasePoolPop(v597);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v909[0] = @"CloudKit metadata updates";
        v909[1] = [MEMORY[0x1E696AD98] numberWithDouble:v601 - v582];
        [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v909, 2), @"2.15"}];
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v603 = v602;
      if (*(v771 + 64) == 1)
      {
        v604 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(4))
        {
          if (_pflogging_catastrophic_mode)
          {
            v605 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v605, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v972) = 0;
              _os_log_error_impl(&dword_18565F000, v605, OS_LOG_TYPE_ERROR, "CoreData: error: Updating metadata\n", &v972, 2u);
            }
          }

          else
          {
            v606 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v606, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v972) = 0;
              _os_log_impl(&dword_18565F000, v606, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Updating metadata\n", &v972, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v607 = 1;
        }

        else
        {
          v607 = 4;
        }

        _NSCoreDataLog_console(v607, "Updating metadata");
        objc_autoreleasePoolPop(v604);
      }

      v608 = [objc_msgSend(*(*(v771 + 32) + 8) "metadata")];
      v767 = v608;
      v609 = [*(*(v771 + 32) + 16) managedObjectModel];
      v610 = [v609 entityVersionHashesByName];
      [(__CFString *)v608 setObject:v610 forKey:@"NSStoreModelVersionHashes"];
      v611 = [(NSManagedObjectModel *)v609 _entityVersionHashesDigestFrom:v610];
      [(__CFString *)v608 setObject:v611 forKey:0x1EF3FCE28];
      -[__CFString setObject:forKey:](v608, "setObject:forKey:", [v609 versionChecksum], @"NSStoreModelVersionChecksumKey");
      if (v609)
      {
        v612 = [objc_msgSend(v609 "versionIdentifiers")];
      }

      else
      {
        v612 = 0;
      }

      [(__CFString *)v608 setObject:v612 forKey:@"NSStoreModelVersionIdentifiers"];
      if ([objc_opt_class() _annotatesMigrationMetadata])
      {
        [(__CFString *)v608 setObject:@"NSSQLiteInPlaceMigrationManager" forKey:@"migrationManagerClass"];
      }

      v613 = *(v771 + 32);
      if (v613 && *(v613 + 217) == 1)
      {
        [(__CFString *)v608 setValue:MEMORY[0x1E695E118] forKey:@"NSPersistentStoreDeferredLightweightMigrationOptionKey"];
      }

      v614 = objc_autoreleasePoolPush();
      [(NSSQLiteConnection *)*(*(v771 + 32) + 48) saveMetadata:v608];
      [(NSSQLiteConnection *)*(*(v771 + 32) + 48) saveCachedModel:v609];
      if (hasPersistentHistory)
      {
        [(NSSQLiteConnection *)*(*(v771 + 32) + 48) processMigrationRequestForHash:v611 stageLabel:*(*(v771 + 32) + 232)];
      }

      objc_autoreleasePoolPop(v614);
      if (*(v771 + 64) == 1)
      {
        v615 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(4))
        {
          if (_pflogging_catastrophic_mode)
          {
            v616 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v616, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v972) = 0;
              _os_log_error_impl(&dword_18565F000, v616, OS_LOG_TYPE_ERROR, "CoreData: error: Finished updating metadata\n", &v972, 2u);
            }
          }

          else
          {
            v617 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v617, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v972) = 0;
              _os_log_impl(&dword_18565F000, v617, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished updating metadata\n", &v972, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v618 = 1;
        }

        else
        {
          v618 = 4;
        }

        _NSCoreDataLog_console(v618, "Finished updating metadata");
        objc_autoreleasePoolPop(v615);
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v179 = v619;
      v908[0] = @"Update store metadata";
      v908[1] = [MEMORY[0x1E696AD98] numberWithDouble:v619 - v603];
      [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v908, 2), @"2.16"}];
      if ([(NSMappingModel *)*(*(v771 + 32) + 40) _hasInferredMappingNeedingValidation])
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v621 = v620;
        if (*(v771 + 64) == 1)
        {
          v622 = objc_autoreleasePoolPush();
          if (_NSCoreDataIsOSLogEnabled(4))
          {
            if (_pflogging_catastrophic_mode)
            {
              v623 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v623, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v972) = 0;
                _os_log_error_impl(&dword_18565F000, v623, OS_LOG_TYPE_ERROR, "CoreData: error: Starting inferred mapping validation\n", &v972, 2u);
              }
            }

            else
            {
              v624 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v624, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v972) = 0;
                _os_log_impl(&dword_18565F000, v624, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Starting inferred mapping validation\n", &v972, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v625 = 1;
          }

          else
          {
            v625 = 4;
          }

          _NSCoreDataLog_console(v625, "Starting inferred mapping validation");
          objc_autoreleasePoolPop(v622);
        }

        v779 = 0u;
        v780 = 0u;
        v777 = 0u;
        v778 = 0u;
        v694 = [*(*(v771 + 32) + 40) entityMappings];
        v696 = [v694 countByEnumeratingWithState:&v777 objects:v907 count:16];
        if (v696)
        {
          v698 = *v778;
          do
          {
            for (i7 = 0; i7 != v696; i7 = i7 + 1)
            {
              if (*v778 != v698)
              {
                objc_enumerationMutation(v694);
              }

              v717 = *(*(&v777 + 1) + 8 * i7);
              v700 = objc_autoreleasePoolPush();
              if (v717)
              {
                v626 = [v717 userInfo];
                if ([objc_msgSend(v626 objectForKey:{_NSInferredMappingCouldFailValidation), "BOOLValue"}])
                {
                  if (*(v771 + 64) == 1)
                  {
                    v627 = objc_autoreleasePoolPush();
                    _pflogInitialize(4);
                    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                    {
                      if (_pflogging_catastrophic_mode)
                      {
                        v628 = _PFLogGetLogStream(1);
                        if (os_log_type_enabled(v628, OS_LOG_TYPE_ERROR))
                        {
                          v629 = [v717 name];
                          v972 = 138412290;
                          p_isa = v629;
                          _os_log_error_impl(&dword_18565F000, v628, OS_LOG_TYPE_ERROR, "CoreData: error: Executing inferred mapping validation: %@\n", &v972, 0xCu);
                        }
                      }

                      else
                      {
                        v630 = _PFLogGetLogStream(4);
                        if (os_log_type_enabled(v630, OS_LOG_TYPE_DEFAULT))
                        {
                          v631 = [v717 name];
                          v972 = 138412290;
                          p_isa = v631;
                          _os_log_impl(&dword_18565F000, v630, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing inferred mapping validation: %@\n", &v972, 0xCu);
                        }
                      }
                    }

                    if (_pflogging_catastrophic_mode)
                    {
                      v632 = [v717 name];
                      v633 = 1;
                    }

                    else
                    {
                      v632 = [v717 name];
                      v633 = 4;
                    }

                    _NSCoreDataLog_console(v633, "Executing inferred mapping validation: %@", v632);
                    objc_autoreleasePoolPop(v627);
                  }

                  v635 = *(v771 + 32);
                  v634 = *(v771 + 40);
                  if (!v635)
                  {
                    goto LABEL_1285;
                  }

                  v691 = *(v634 + 8);
                  v636 = [*(v635 + 16) entityNamed:{objc_msgSend(v717, "destinationEntityName")}];
                  v968 = 0u;
                  v967 = 0u;
                  v966 = 0u;
                  v965 = 0u;
                  v637 = [v717 attributeMappings];
                  v638 = [v637 countByEnumeratingWithState:&v965 objects:&v972 count:16];
                  if (v638)
                  {
                    v726 = v637;
                    v736 = *v966;
                    do
                    {
                      v639 = 0;
                      contextk = v638;
                      do
                      {
                        if (*v966 != v736)
                        {
                          objc_enumerationMutation(v637);
                        }

                        v640 = *(*(&v965 + 1) + 8 * v639);
                        v961 = 0u;
                        v962 = 0u;
                        v963 = 0u;
                        v964 = 0u;
                        if (v640)
                        {
                          v641 = v640[2];
                        }

                        else
                        {
                          v641 = 0;
                        }

                        v642 = [v641 countByEnumeratingWithState:&v961 objects:v971 count:16];
                        v765 = v639;
                        if (v642)
                        {
                          v643 = *v962;
                          do
                          {
                            v644 = 0;
                            do
                            {
                              if (*v962 != v643)
                              {
                                objc_enumerationMutation(v641);
                              }

                              if (![*(*(&v961 + 1) + 8 * v644) isEqualToString:NSPropertyTransformMandatoryPropertyValidation])
                              {
                                v671 = MEMORY[0x1E695DF30];
                                v672 = [MEMORY[0x1E695DF20] dictionaryWithObject:v640 forKey:@"propertyMapping"];
LABEL_1277:
                                objc_exception_throw([v671 exceptionWithName:*MEMORY[0x1E695D930] reason:@"Unrecognized transform validation in property mapping" userInfo:v672]);
                              }

                              v645 = [v640 name];
                              if (v636)
                              {
                                v646 = [v636[5] objectForKey:v645];
                              }

                              else
                              {
                                v646 = 0;
                              }

                              v647 = [v646 propertyDescription];
                              if (v647 && [v647 superCompositeAttribute])
                              {
                                v648 = [objc_msgSend(v646 "propertyDescription")];
                                while (([v648 isOptional] & 1) == 0)
                                {
                                  v648 = [v648 superCompositeAttribute];
                                  if (!v648)
                                  {
                                    goto LABEL_1219;
                                  }
                                }
                              }

                              else
                              {
LABEL_1219:
                                if ([(_NSSQLiteStoreMigrator *)v635 _countNullsInColumn:v646 forEntity:v636]>= 1)
                                {
                                  v673 = MEMORY[0x1E696ABC0];
                                  v674 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Validation error missing attribute values on mandatory destination attribute", @"reason", objc_msgSend(v636, "name"), @"entity", objc_msgSend(v646, "name"), @"attribute", 0}];
                                  goto LABEL_1284;
                                }
                              }

                              ++v644;
                            }

                            while (v644 != v642);
                            v649 = [v641 countByEnumeratingWithState:&v961 objects:v971 count:16];
                            v642 = v649;
                          }

                          while (v649);
                        }

                        v639 = v765 + 1;
                        v637 = v726;
                      }

                      while ((v765 + 1) != contextk);
                      v650 = [v726 countByEnumeratingWithState:&v965 objects:&v972 count:16];
                      v638 = v650;
                    }

                    while (v650);
                  }

                  v900 = 0u;
                  v899 = 0u;
                  v898 = 0u;
                  v897 = 0u;
                  v651 = [v717 relationshipMappings];
                  v652 = [v651 countByEnumeratingWithState:&v897 objects:v970 count:16];
                  if (!v652)
                  {
                    goto LABEL_1261;
                  }

                  v727 = v651;
                  v737 = *v898;
LABEL_1230:
                  v653 = 0;
                  contextl = v652;
                  while (1)
                  {
                    if (*v898 != v737)
                    {
                      objc_enumerationMutation(v651);
                    }

                    v654 = *(*(&v897 + 1) + 8 * v653);
                    v893 = 0u;
                    v894 = 0u;
                    v895 = 0u;
                    v896 = 0u;
                    v655 = v654 ? v654[2] : 0;
                    v656 = [v655 countByEnumeratingWithState:&v893 objects:v969 count:16];
                    v766 = v653;
                    if (v656)
                    {
                      break;
                    }

LABEL_1257:
                    v653 = v766 + 1;
                    v651 = v727;
                    if ((v766 + 1) == contextl)
                    {
                      v652 = [v727 countByEnumeratingWithState:&v897 objects:v970 count:16];
                      if (!v652)
                      {
                        goto LABEL_1261;
                      }

                      goto LABEL_1230;
                    }
                  }

                  v657 = *v894;
                  while (2)
                  {
                    v658 = 0;
LABEL_1238:
                    if (*v894 != v657)
                    {
                      objc_enumerationMutation(v655);
                    }

                    if (![*(*(&v893 + 1) + 8 * v658) isEqualToString:NSPropertyTransformMandatoryPropertyValidation])
                    {
                      v671 = MEMORY[0x1E695DF30];
                      v672 = [MEMORY[0x1E695DF20] dictionaryWithObject:v654 forKey:@"propertyMapping"];
                      goto LABEL_1277;
                    }

                    v659 = [v654 name];
                    if (v636 && (v660 = [v636[5] objectForKey:v659], (v661 = v660) != 0))
                    {
                      if (LOBYTE(v660->length) == 7)
                      {
                        if ([(_NSSQLiteStoreMigrator *)v635 _countNullsInColumn:v636 forEntity:?]>= 1)
                        {
                          v673 = MEMORY[0x1E696ABC0];
                          v674 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Validation error missing attribute values on mandatory destination relationship", @"reason", objc_msgSend(v636, "name"), @"entity", -[__CFString name](v661, "name"), @"attribute", 0}];
                          goto LABEL_1284;
                        }

                        goto LABEL_1252;
                      }

                      if (![(__CFString *)v660 isToMany])
                      {
                        if (LOBYTE(v661->length) == 9)
                        {
                          v663 = [(NSSQLManyToMany *)v661 inverseColumnName];
                          if ([(_NSSQLiteStoreMigrator *)v635 _countUnreferencedPrimaryKeysForEntity:v636 inForeignKeyColumnName:v663 fromTable:[(__CFString *)v661 correlationTableName]]>= 1)
                          {
LABEL_1283:
                            v673 = MEMORY[0x1E696ABC0];
                            v674 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Validation error missing relationship values on mandatory destination destination", @"reason", objc_msgSend(v636, "name"), @"entity", -[__CFString name](v661, "name"), @"relationship", 0}];
LABEL_1284:
                            *(v691 + 40) = [v673 errorWithDomain:*MEMORY[0x1E696A250] code:134110 userInfo:v674];
                            v634 = *(v771 + 40);
LABEL_1285:
                            v675 = *(*(v634 + 8) + 40);
                            objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"validation error" reason:@"validation failed" userInfo:0]);
                          }
                        }

LABEL_1252:
                        if (v656 == ++v658)
                        {
                          v664 = [v655 countByEnumeratingWithState:&v893 objects:v969 count:16];
                          v656 = v664;
                          if (!v664)
                          {
                            goto LABEL_1257;
                          }

                          continue;
                        }

                        goto LABEL_1238;
                      }

                      length = v661[1].length;
                    }

                    else
                    {
                      if (([0 isToMany] & 1) == 0)
                      {
                        goto LABEL_1252;
                      }

                      v661 = 0;
                      length = 0;
                    }

                    break;
                  }

                  if (-[_NSSQLiteStoreMigrator _countUnreferencedPrimaryKeysForEntity:inForeignKeyColumnName:fromTable:](v635, v636, [objc_msgSend(length "foreignKey")], objc_msgSend(-[__CFString destinationEntity](v661, "destinationEntity"), "tableName")) >= 1)
                  {
                    goto LABEL_1283;
                  }

                  goto LABEL_1252;
                }
              }

LABEL_1261:
              objc_autoreleasePoolPop(v700);
            }

            v696 = [v694 countByEnumeratingWithState:&v777 objects:v907 count:16];
          }

          while (v696);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v666 = v665;
        if (*(v771 + 64) == 1)
        {
          v667 = objc_autoreleasePoolPush();
          if (_NSCoreDataIsOSLogEnabled(4))
          {
            if (_pflogging_catastrophic_mode)
            {
              v668 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v668, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v972) = 0;
                _os_log_error_impl(&dword_18565F000, v668, OS_LOG_TYPE_ERROR, "CoreData: error: Finished inferred mapping validation\n", &v972, 2u);
              }
            }

            else
            {
              v669 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v669, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v972) = 0;
                _os_log_impl(&dword_18565F000, v669, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished inferred mapping validation\n", &v972, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v670 = 1;
          }

          else
          {
            v670 = 4;
          }

          _NSCoreDataLog_console(v670, "Finished inferred mapping validation");
          objc_autoreleasePoolPop(v667);
        }

        v906[0] = @"Inferred mapping validation";
        v906[1] = [MEMORY[0x1E696AD98] numberWithDouble:v666 - v621];
        [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v906, 2), @"2.16b"}];
      }

      goto LABEL_328;
    }

    contextj = objc_autoreleasePoolPush();
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v543 = v542;
    if (*(v771 + 64) == 1)
    {
      v544 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(4))
      {
        if (_pflogging_catastrophic_mode)
        {
          v545 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v545, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v545, OS_LOG_TYPE_ERROR, "CoreData: error: Beginning persistent history metadata tables update\n", &v972, 2u);
          }
        }

        else
        {
          v546 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v546, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v546, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Beginning persistent history metadata tables update\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v547 = 1;
      }

      else
      {
        v547 = 4;
      }

      _NSCoreDataLog_console(v547, "Beginning persistent history metadata tables update");
      objc_autoreleasePoolPop(v544);
    }

    v548 = objc_autoreleasePoolPush();
    v549 = [(_NSSQLiteStoreMigrator *)*(v771 + 32) deleteStatementsForHistory];
    objc_autoreleasePoolPop(v548);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v551 = v550;
    v916[0] = @"Generate persistent history delete statements";
    v916[1] = [MEMORY[0x1E696AD98] numberWithDouble:v550 - v543];
    [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v916, 2), @"2.14.1"}];
    v552 = [(_NSSQLiteStoreMigrator *)*(v771 + 32) updateStatementsForHistoryChanges];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v554 = v553;
    v915[0] = @"Generate persistent history update statements";
    v915[1] = [MEMORY[0x1E696AD98] numberWithDouble:v553 - v551];
    [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v915, 2), @"2.14.2"}];
    if (v552)
    {
      v555 = v549;
    }

    else
    {
      v555 = 0;
    }

    if (v555)
    {
      v787 = 0u;
      v788 = 0u;
      v785 = 0u;
      v786 = 0u;
      v556 = [v552 countByEnumeratingWithState:&v785 objects:v913 count:16];
      if (v556)
      {
        v557 = *v786;
        do
        {
          for (i8 = 0; i8 != v556; ++i8)
          {
            if (*v786 != v557)
            {
              objc_enumerationMutation(v552);
            }

            v559 = *(*(&v785 + 1) + 8 * i8);
            v560 = objc_autoreleasePoolPush();
            if (*(v771 + 64) == 1)
            {
              v561 = objc_autoreleasePoolPush();
              _pflogInitialize(4);
              if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
              {
                if (_pflogging_catastrophic_mode)
                {
                  v562 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v562, OS_LOG_TYPE_ERROR))
                  {
                    v972 = 138412290;
                    p_isa = v559;
                    _os_log_error_impl(&dword_18565F000, v562, OS_LOG_TYPE_ERROR, "CoreData: error: Executing history migration statement: %@\n", &v972, 0xCu);
                  }
                }

                else
                {
                  v563 = _PFLogGetLogStream(4);
                  if (os_log_type_enabled(v563, OS_LOG_TYPE_DEFAULT))
                  {
                    v972 = 138412290;
                    p_isa = v559;
                    _os_log_impl(&dword_18565F000, v563, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing history migration statement: %@\n", &v972, 0xCu);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v564 = 1;
              }

              else
              {
                v564 = 4;
              }

              _NSCoreDataLog_console(v564, "Executing history migration statement: %@", v559);
              objc_autoreleasePoolPop(v561);
            }

            [(NSSQLiteConnection *)*(*(v771 + 32) + 48) prepareAndExecuteSQLStatement:v559];
            objc_autoreleasePoolPop(v560);
          }

          v556 = [v552 countByEnumeratingWithState:&v785 objects:v913 count:16];
        }

        while (v556);
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v912[0] = @"Execution of persistent history migration";
      v912[1] = [MEMORY[0x1E696AD98] numberWithDouble:v565 - v554];
      [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v912, 2), @"2.14.4"}];
      goto LABEL_1081;
    }

    if (*(v771 + 64) != 1)
    {
LABEL_1070:
      v570 = objc_autoreleasePoolPush();
      [(NSSQLiteConnection *)*(*(v771 + 32) + 48) dropHistoryTrackingTables];
      objc_autoreleasePoolPop(v570);
      if (*(v771 + 64) != 1)
      {
LABEL_1080:
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v914[0] = @"Drop persistent history tables";
        v914[1] = [MEMORY[0x1E696AD98] numberWithDouble:v575 - v554];
        [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v914, 2), @"2.14.3"}];
LABEL_1081:
        if (*(v771 + 64) == 1)
        {
          v576 = objc_autoreleasePoolPush();
          if (_NSCoreDataIsOSLogEnabled(4))
          {
            if (_pflogging_catastrophic_mode)
            {
              v577 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v577, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v972) = 0;
                _os_log_error_impl(&dword_18565F000, v577, OS_LOG_TYPE_ERROR, "CoreData: error: Completed persistent history metadata tables update\n", &v972, 2u);
              }
            }

            else
            {
              v578 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v578, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v972) = 0;
                _os_log_impl(&dword_18565F000, v578, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Completed persistent history metadata tables update\n", &v972, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v579 = 1;
          }

          else
          {
            v579 = 4;
          }

          _NSCoreDataLog_console(v579, "Completed persistent history metadata tables update");
          objc_autoreleasePoolPop(v576);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v911[0] = @"Total persistent history migration";
        v911[1] = [MEMORY[0x1E696AD98] numberWithDouble:v580 - v543];
        [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v911, 2), @"2.14"}];
        objc_autoreleasePoolPop(contextj);
        goto LABEL_1093;
      }

      v571 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(2))
      {
        if (_pflogging_catastrophic_mode)
        {
          v572 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v572, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            v573 = "CoreData: error: Finished dropping Persistent History b/c of an issue with migration\n";
LABEL_1282:
            _os_log_error_impl(&dword_18565F000, v572, OS_LOG_TYPE_ERROR, v573, &v972, 2u);
          }
        }

        else
        {
          v572 = _PFLogGetLogStream(2);
          if (os_log_type_enabled(v572, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            v573 = "CoreData: warning: Finished dropping Persistent History b/c of an issue with migration\n";
            goto LABEL_1282;
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v574 = 1;
      }

      else
      {
        v574 = 2;
      }

      _NSCoreDataLog_console(v574, "Finished dropping Persistent History b/c of an issue with migration");
      objc_autoreleasePoolPop(v571);
      goto LABEL_1080;
    }

    v566 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(2))
    {
      if (_pflogging_catastrophic_mode)
      {
        v567 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v567, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v972) = 0;
          v568 = "CoreData: error: Dropping Persistent History b/c of an issue with migration\n";
LABEL_1280:
          _os_log_error_impl(&dword_18565F000, v567, OS_LOG_TYPE_ERROR, v568, &v972, 2u);
        }
      }

      else
      {
        v567 = _PFLogGetLogStream(2);
        if (os_log_type_enabled(v567, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v972) = 0;
          v568 = "CoreData: warning: Dropping Persistent History b/c of an issue with migration\n";
          goto LABEL_1280;
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v569 = 1;
    }

    else
    {
      v569 = 2;
    }

    _NSCoreDataLog_console(v569, "Dropping Persistent History b/c of an issue with migration");
    objc_autoreleasePoolPop(v566);
    goto LABEL_1070;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v388 = v387;
  if (*(v771 + 64) == 1)
  {
    v389 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v390 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v390, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v972) = 0;
          _os_log_error_impl(&dword_18565F000, v390, OS_LOG_TYPE_ERROR, "CoreData: error: Begin attribute extension updates.\n", &v972, 2u);
        }
      }

      else
      {
        v391 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v391, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v972) = 0;
          _os_log_impl(&dword_18565F000, v391, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Begin attribute extension updates.\n", &v972, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v392 = 1;
    }

    else
    {
      v392 = 4;
    }

    _NSCoreDataLog_console(v392, "Begin attribute extension updates.");
    objc_autoreleasePoolPop(v389);
  }

  v836 = 0u;
  v835 = 0u;
  v834 = 0u;
  v833 = 0u;
  v393 = [*(*(v771 + 32) + 152) objectForKey:@"inserted"];
  v394 = [v393 countByEnumeratingWithState:&v833 objects:v938 count:16];
  if (!v394)
  {
LABEL_805:
    if (*(v771 + 64) == 1)
    {
      v418 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(4))
      {
        if (_pflogging_catastrophic_mode)
        {
          v419 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v419, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v972) = 0;
            _os_log_error_impl(&dword_18565F000, v419, OS_LOG_TYPE_ERROR, "CoreData: error: Finished attribute extension updates.\n", &v972, 2u);
          }
        }

        else
        {
          v420 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v420, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v972) = 0;
            _os_log_impl(&dword_18565F000, v420, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished attribute extension updates.\n", &v972, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v421 = 1;
      }

      else
      {
        v421 = 4;
      }

      _NSCoreDataLog_console(v421, "Finished attribute extension updates.");
      objc_autoreleasePoolPop(v418);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v935[0] = @"Update attribute extensions";
    v935[1] = [MEMORY[0x1E696AD98] numberWithDouble:v422 - v388];
    [v708 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v935, 2), @"2.8"}];
    goto LABEL_818;
  }

  v714 = *v834;
LABEL_758:
  contextf = 0;
  v704 = v394;
  while (1)
  {
    if (*v834 != v714)
    {
      objc_enumerationMutation(v393);
    }

    v760 = *(*(&v833 + 1) + 8 * contextf);
    v732 = objc_autoreleasePoolPush();
    v723 = [v760 validate:*(*(v771 + 40) + 8) + 40];
    if (v723)
    {
      v832 = 0u;
      v831 = 0u;
      v830 = 0u;
      v829 = 0u;
      v395 = [v760 insertSQLStrings];
      v396 = [v395 countByEnumeratingWithState:&v829 objects:v937 count:16];
      if (v396)
      {
        v397 = *v830;
        do
        {
          for (i9 = 0; i9 != v396; ++i9)
          {
            if (*v830 != v397)
            {
              objc_enumerationMutation(v395);
            }

            v399 = *(*(&v829 + 1) + 8 * i9);
            v400 = objc_autoreleasePoolPush();
            v401 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v399];
            if (*(v771 + 64) == 1)
            {
              v402 = objc_autoreleasePoolPush();
              _pflogInitialize(4);
              if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
              {
                if (_pflogging_catastrophic_mode)
                {
                  v403 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v403, OS_LOG_TYPE_ERROR))
                  {
                    v972 = 138412290;
                    p_isa = &v401->super.isa;
                    _os_log_error_impl(&dword_18565F000, v403, OS_LOG_TYPE_ERROR, "CoreData: error: Executing attribute extension insert statement: %@\n", &v972, 0xCu);
                  }
                }

                else
                {
                  v404 = _PFLogGetLogStream(4);
                  if (os_log_type_enabled(v404, OS_LOG_TYPE_DEFAULT))
                  {
                    v972 = 138412290;
                    p_isa = &v401->super.isa;
                    _os_log_impl(&dword_18565F000, v404, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing attribute extension insert statement: %@\n", &v972, 0xCu);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v405 = 1;
              }

              else
              {
                v405 = 4;
              }

              _NSCoreDataLog_console(v405, "Executing attribute extension insert statement: %@", v401);
              objc_autoreleasePoolPop(v402);
            }

            [(NSSQLiteConnection *)*(*(v771 + 32) + 48) prepareAndExecuteSQLStatement:v401];

            objc_autoreleasePoolPop(v400);
          }

          v396 = [v395 countByEnumeratingWithState:&v829 objects:v937 count:16];
        }

        while (v396);
      }

      v828 = 0u;
      v827 = 0u;
      v826 = 0u;
      v825 = 0u;
      v406 = [v760 bulkUpdateSQLStrings];
      v407 = [v406 countByEnumeratingWithState:&v825 objects:v936 count:16];
      if (v407)
      {
        v408 = *v826;
        do
        {
          for (i10 = 0; i10 != v407; ++i10)
          {
            if (*v826 != v408)
            {
              objc_enumerationMutation(v406);
            }

            v410 = *(*(&v825 + 1) + 8 * i10);
            v411 = objc_autoreleasePoolPush();
            v412 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v410];
            if (*(v771 + 64) == 1)
            {
              v413 = objc_autoreleasePoolPush();
              _pflogInitialize(4);
              if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
              {
                if (_pflogging_catastrophic_mode)
                {
                  v414 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v414, OS_LOG_TYPE_ERROR))
                  {
                    v972 = 138412290;
                    p_isa = &v412->super.isa;
                    _os_log_error_impl(&dword_18565F000, v414, OS_LOG_TYPE_ERROR, "CoreData: error: Executing attribute extension change statement: %@\n", &v972, 0xCu);
                  }
                }

                else
                {
                  v415 = _PFLogGetLogStream(4);
                  if (os_log_type_enabled(v415, OS_LOG_TYPE_DEFAULT))
                  {
                    v972 = 138412290;
                    p_isa = &v412->super.isa;
                    _os_log_impl(&dword_18565F000, v415, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing attribute extension change statement: %@\n", &v972, 0xCu);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v416 = 1;
              }

              else
              {
                v416 = 4;
              }

              _NSCoreDataLog_console(v416, "Executing attribute extension change statement: %@", v412);
              objc_autoreleasePoolPop(v413);
            }

            [(NSSQLiteConnection *)*(*(v771 + 32) + 48) prepareAndExecuteSQLStatement:v412];

            objc_autoreleasePoolPop(v411);
          }

          v407 = [v406 countByEnumeratingWithState:&v825 objects:v936 count:16];
        }

        while (v407);
      }
    }

    else
    {
      v417 = *(*(*(v771 + 40) + 8) + 40);
      *(*(*(v771 + 48) + 8) + 24) = 0;
    }

    objc_autoreleasePoolPop(v732);
    if (!v723)
    {
      break;
    }

    contextf = contextf + 1;
    if (contextf == v704)
    {
      v394 = [v393 countByEnumeratingWithState:&v833 objects:v938 count:16];
      if (v394)
      {
        goto LABEL_758;
      }

      goto LABEL_805;
    }
  }

LABEL_810:
  v767 = 0;
  v26 = 1;
LABEL_1290:
  [(NSSQLiteConnection *)*(*(v771 + 32) + 48) endFetchAndRecycleStatement:?];

  if ((*(*(*(v771 + 48) + 8) + 24) & 1) == 0 && *(v771 + 64) == 1)
  {
    v676 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v677 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v677, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v677, OS_LOG_TYPE_ERROR, "CoreData: error: Failed lightweight migration on connection\n", buf, 2u);
        }
      }

      else
      {
        v678 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v678, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v678, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Failed lightweight migration on connection\n", buf, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v679 = 1;
    }

    else
    {
      v679 = 4;
    }

    _NSCoreDataLog_console(v679, "Failed lightweight migration on connection");
    objc_autoreleasePoolPop(v676);
  }

  if (*(v771 + 65) == 1)
  {
    [(NSSQLiteConnection *)*(*(v771 + 32) + 48) _executeSQLString:?];
  }

  if (v26)
  {
    if (*(v771 + 64) == 1)
    {
      v680 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v681 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v681, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v681, OS_LOG_TYPE_ERROR, "CoreData: error: Rolling back formal transaction\n", buf, 2u);
          }
        }

        else
        {
          v682 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v682, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v682, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Rolling back formal transaction\n", buf, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v683 = 1;
      }

      else
      {
        v683 = 4;
      }

      _NSCoreDataLog_console(v683, "Rolling back formal transaction");
      objc_autoreleasePoolPop(v680);
    }

    [(NSSQLiteConnection *)*(*(v771 + 32) + 48) rollbackTransaction];
    *(*(*(v771 + 48) + 8) + 24) = 0;
  }
}

uint64_t __57___NSSQLiteStoreMigrator_createEntityMigrationStatements__block_invoke(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a2)
  {
    v5 = a2[6];
    if (a3)
    {
LABEL_3:
      v6 = a3[6];
      goto LABEL_4;
    }
  }

  else
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_4:
  if (v5 != v6)
  {
    if (a2)
    {
      v12 = a2[6];
      if (v12 <= 3)
      {
        v13 = qword_18592E938[v12];
        if (!a3)
        {
          goto LABEL_41;
        }

LABEL_23:
        v18 = a3[6];
        if (v18 > 3)
        {
          v19 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = qword_18592E938[v18];
        }

LABEL_26:
        if (v13 < v19)
        {
          return -1;
        }

        if (v13 > v19)
        {
          return 1;
        }

        if (a2)
        {
          v20 = a2[6];
          if (a3)
          {
LABEL_32:
            v21 = a3[6];
            goto LABEL_33;
          }
        }

        else
        {
          v20 = 0;
          if (a3)
          {
            goto LABEL_32;
          }
        }

        v21 = 0;
LABEL_33:
        if (v20 > v21)
        {
          return 1;
        }

        else
        {
          return -1;
        }
      }

      v13 = 0x7FFFFFFFFFFFFFFFLL;
      if (a3)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 3;
      if (a3)
      {
        goto LABEL_23;
      }
    }

LABEL_41:
    v19 = 3;
    goto LABEL_26;
  }

  v7 = [a2 rootEntity];
  if (v7)
  {
    v8 = *(v7 + 184);
  }

  else
  {
    v8 = 0;
  }

  v9 = [a3 rootEntity];
  if (v9)
  {
    v10 = *(v9 + 184);
  }

  else
  {
    v10 = 0;
  }

  if (v8 == v10)
  {
    return 0;
  }

  v14 = [a2 rootEntity];
  if (v14)
  {
    v15 = *(v14 + 184);
  }

  else
  {
    v15 = 0;
  }

  v16 = [a3 rootEntity];
  if (v16)
  {
    v17 = *(v16 + 184);
  }

  else
  {
    v17 = 0;
  }

  if (v15 < v17)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __57___NSSQLiteStoreMigrator_createEntityMigrationStatements__block_invoke_438(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(a2 objectAtIndexedSubscript:{0), "compare:", objc_msgSend(a2, "objectAtIndexedSubscript:", 1)}];
  if (v5 == 1)
  {
    v12 = [a2 objectAtIndexedSubscript:0];
    v7 = [a3 objectAtIndexedSubscript:0];
    v8 = v12;
    goto LABEL_11;
  }

  if (!v5)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: CloudKit metadata migration generated a source / destination id mapping for identical ids: %@\n", &v13, 0xCu);
    }

    v10 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v13 = 138412290;
      v14 = a2;
      _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: CloudKit metadata migration generated a source / destination id mapping for identical ids: %@", &v13, 0xCu);
    }

    return 0;
  }

  if (v5 != -1)
  {
    return 0;
  }

  v6 = [a3 objectAtIndexedSubscript:0];
  v7 = [a2 objectAtIndexedSubscript:0];
  v8 = v6;
LABEL_11:

  return [v8 compare:v7];
}

void __83___NSSQLiteStoreMigrator__indexMigrationBlockForSourceEntity_andDestinationEntity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = [a2 count];
  if (v6 | [a3 count])
  {
    obj = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:a2];
    v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:a3];
    v36 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v7];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v35 = a1;
    v9 = [*(*(a1 + 32) + 40) entityMappings];
    v10 = [v9 countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v58;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v58 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v57 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          if ([objc_msgSend(v14 "destinationEntityName")] && objc_msgSend(v14, "mappingType") == 5)
          {
            [obj addObjectsFromArray:a2];
            [v36 addObjectsFromArray:{objc_msgSend(obj, "allObjects")}];
            [v36 minusSet:v7];
            [v8 minusSet:obj];
            objc_autoreleasePoolPop(v15);
            goto LABEL_35;
          }

          objc_autoreleasePoolPop(v15);
        }

        v11 = [v9 countByEnumeratingWithState:&v57 objects:v67 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v39 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
    if (v39)
    {
      v38 = *v54;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v54 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v53 + 1) + 8 * j);
          context = objc_autoreleasePoolPush();
          v18 = [v7 containsObject:v17];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v19 = [v7 countByEnumeratingWithState:&v49 objects:v65 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v50;
            do
            {
              for (k = 0; k != v20; ++k)
              {
                if (*v50 != v21)
                {
                  objc_enumerationMutation(v7);
                }

                v23 = *(*(&v49 + 1) + 8 * k);
                if (![v17 _compare:v23])
                {
                  v24 = [(NSFetchIndexDescription *)v17 _isUnique];
                  if (v24 == [(NSFetchIndexDescription *)v23 _isUnique])
                  {
                    if ((v18 & 1) == 0 || ([objc_msgSend(v17 "name")] & 1) == 0)
                    {
                      [v8 removeObject:v23];
                    }

                    v18 = 1;
                  }
                }
              }

              v20 = [v7 countByEnumeratingWithState:&v49 objects:v65 count:16];
            }

            while (v20);
          }

          if ((v18 & 1) == 0)
          {
            [v36 addObject:v17];
          }

          objc_autoreleasePoolPop(context);
        }

        v39 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
      }

      while (v39);
    }

LABEL_35:
    v64 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"name" ascending:1];
    v25 = [v8 sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v64, 1)}];
    v63 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"name" ascending:1];
    v26 = [v36 sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v63, 1)}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v27 = [v25 countByEnumeratingWithState:&v45 objects:v62 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v46;
      do
      {
        for (m = 0; m != v28; ++m)
        {
          if (*v46 != v29)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(v35 + 32) + 160) addObject:{-[NSSQLEntity indexForIndexDescription:](*(v35 + 40), *(*(&v45 + 1) + 8 * m))}];
        }

        v28 = [v25 countByEnumeratingWithState:&v45 objects:v62 count:16];
      }

      while (v28);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v31 = [v26 countByEnumeratingWithState:&v41 objects:v61 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v42;
      do
      {
        for (n = 0; n != v32; ++n)
        {
          if (*v42 != v33)
          {
            objc_enumerationMutation(v26);
          }

          [*(*(v35 + 32) + 168) addObject:{-[NSSQLEntity indexForIndexDescription:](*(v35 + 48), *(*(&v41 + 1) + 8 * n))}];
        }

        v32 = [v26 countByEnumeratingWithState:&v41 objects:v61 count:16];
      }

      while (v32);
    }
  }
}

uint64_t __89___NSSQLiteStoreMigrator__determineIndexesToMigrateForSourceEntity_andDestinationEntity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 name];
  v5 = [a3 name];

  return [v4 compare:v5];
}

uint64_t __89___NSSQLiteStoreMigrator__determineIndexesToMigrateForSourceEntity_andDestinationEntity___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 name];
  v5 = [a3 name];

  return [v4 compare:v5];
}

uint64_t __103___NSSQLiteStoreMigrator__determineUniquenessConstraintsToMigrateForSourceEntity_andDestinationEntity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 name];
  v5 = [a3 name];

  return [v4 compare:v5];
}

uint64_t __103___NSSQLiteStoreMigrator__determineUniquenessConstraintsToMigrateForSourceEntity_andDestinationEntity___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 name];
  v5 = [a3 name];

  return [v4 compare:v5];
}

@end