@interface HDMigrateECGClassificationAverageHRAndPayload
@end

@implementation HDMigrateECGClassificationAverageHRAndPayload

uint64_t ___HDMigrateECGClassificationAverageHRAndPayload_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v103 = *MEMORY[0x277D85DE8];
  v57 = HDSQLiteColumnAsInt64();
  v55 = MEMORY[0x22AAC6C30](a2, 1);
  v4 = MEMORY[0x22AAC6C50](a2, 2);
  v54 = HDSQLiteColumnAsInt64();
  v5 = MEMORY[0x22AAC6C50](a2, 4);
  v6 = MEMORY[0x22AAC6C50](a2, 5);
  v56 = MEMORY[0x22AAC6C30](a2, 6);
  if (MEMORY[0x22AAC6CD0](a2, 7))
  {
    v7 = 0;
  }

  else
  {
    v7 = HDSQLiteColumnAsInt64();
  }

  v8 = MEMORY[0x22AAC6CD0](a2, 8);
  v9 = MEMORY[0x22AAC6C50](a2, 8);
  v10 = MEMORY[0x22AAC6CD0](a2, 9);
  v11 = HDSQLiteColumnAsInt64();
  v12 = [*(a1 + 32) protectedDatabase];
  v13 = *(a1 + 40);
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = ___HDMigrateECGClassificationAverageHRAndPayload_block_invoke_2;
  v72[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v72[4] = v57;
  v14 = [v12 executeSQL:v13 error:a3 bindingHandler:v72 enumerationHandler:0];

  if (!v14)
  {
    v50 = 0;
    goto LABEL_82;
  }

  if (v11 > 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v10;
  }

  if (v15)
  {
    v16 = 2;
  }

  else
  {
    v16 = v11;
  }

  v17 = [*(a1 + 32) protectedDatabase];
  v18 = *(a1 + 48);
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = ___HDMigrateECGClassificationAverageHRAndPayload_block_invoke_3;
  v65[3] = &unk_278619DD0;
  v67 = v57;
  v66 = v56;
  v68 = v7;
  v71 = v8 ^ 1;
  v69 = v9;
  v70 = v16;
  v19 = [v17 executeSQL:v18 error:a3 bindingHandler:v65 enumerationHandler:0];

  if (!v19)
  {
    v50 = 0;
    goto LABEL_81;
  }

  if (v11)
  {
    v20 = v10;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    goto LABEL_80;
  }

  v62 = *(a1 + 32);
  v61 = v55;
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v22 = [&unk_283CAEEC0 countByEnumeratingWithState:&v98 objects:v102 count:16];
  if (!v22)
  {
    goto LABEL_49;
  }

  v23 = *v99;
  do
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v99 != v23)
      {
        objc_enumerationMutation(&unk_283CAEEC0);
      }

      v25 = *(*(&v98 + 1) + 8 * i);
      v26 = [v25 integerValue];
      if (v26 > 204)
      {
        if (v26 > 206)
        {
          if (v26 == 207)
          {
            if ((v11 & 4) == 0)
            {
              continue;
            }

LABEL_46:
            [v21 setObject:&unk_283CB2448 forKeyedSubscript:v25];
            continue;
          }

          if (v26 == 211 && (v11 & 0x40) != 0)
          {
            goto LABEL_46;
          }
        }

        else if (v26 == 205)
        {
          if ((v11 & 2) != 0)
          {
            goto LABEL_46;
          }
        }

        else if ((v11 & 0x10) != 0)
        {
          goto LABEL_46;
        }
      }

      else if (v26 > 201)
      {
        if (v26 == 202)
        {
          if ((v11 & 0x200) != 0)
          {
            goto LABEL_46;
          }
        }

        else if (v26 == 204 && (v11 & 0x100) != 0)
        {
          goto LABEL_46;
        }
      }

      else if (v26 == 167)
      {
        if ((v11 & 8) != 0)
        {
          goto LABEL_46;
        }
      }

      else if (v26 == 201 && (v11 & 0x80) != 0)
      {
        goto LABEL_46;
      }
    }

    v22 = [&unk_283CAEEC0 countByEnumeratingWithState:&v98 objects:v102 count:16];
  }

  while (v22);
LABEL_49:
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = v21;
  v27 = [obj countByEnumeratingWithState:&v98 objects:v102 count:16];
  if (v27)
  {
    v60 = *v99;
    while (2)
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v99 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v98 + 1) + 8 * j);
        v97 = [v29 integerValue];
        v30 = [MEMORY[0x277CBEA90] dataWithBytes:&v97 length:1];
        v31 = [MEMORY[0x277CCAD78] hk_v3UUIDWithNameSpace:v61 name:v30];
        v93 = 0;
        v94 = &v93;
        v95 = 0x2020000000;
        v96 = 0;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = ___HDInsertECGSymptomsAndCreateAssociationWithECGSamples_block_invoke;
        aBlock[3] = &unk_278614620;
        aBlock[4] = &v93;
        v32 = _Block_copy(aBlock);
        v33 = [v62 protectedDatabase];
        v90[0] = MEMORY[0x277D85DD0];
        v90[1] = 3221225472;
        v90[2] = ___HDInsertECGSymptomsAndCreateAssociationWithECGSamples_block_invoke_2;
        v90[3] = &unk_278614860;
        v34 = v31;
        v91 = v34;
        v35 = [v33 executeSQL:@"SELECT COUNT(*) FROM objects WHERE uuid=?" error:a3 bindingHandler:v90 enumerationHandler:v32];

        if (v35)
        {
          if (v94[3] <= 0)
          {
            v37 = [v62 protectedDatabase];
            v86[0] = MEMORY[0x277D85DD0];
            v86[1] = 3221225472;
            v86[2] = ___HDInsertECGSymptomsAndCreateAssociationWithECGSamples_block_invoke_3;
            v86[3] = &unk_278619A20;
            v87 = v34;
            v88 = v54;
            v89 = v4;
            v38 = [v37 executeSQL:@"INSERT INTO objects (uuid error:provenance bindingHandler:creation_date) VALUES (? enumerationHandler:{?, ?)", a3, v86, 0}];

            v39 = [v62 protectedDatabase];
            v40 = [v39 lastInsertRowID];

            if (v40)
            {
              v41 = v38;
            }

            else
            {
              v41 = 0;
            }

            if (v41)
            {
              v42 = [v62 protectedDatabase];
              v81[0] = MEMORY[0x277D85DD0];
              v81[1] = 3221225472;
              v81[2] = ___HDInsertECGSymptomsAndCreateAssociationWithECGSamples_block_invoke_4;
              v81[3] = &unk_2786214F8;
              v43 = v40;
              v84 = v5;
              v85 = v6;
              v82 = v43;
              v83 = v29;
              v44 = [v42 executeSQL:@"INSERT INTO samples (data_id error:start_date bindingHandler:end_date enumerationHandler:{data_type) VALUES (?, ?, ?, ?)", a3, v81, 0}];

              if (v44)
              {
                v45 = [v62 protectedDatabase];
                v77[0] = MEMORY[0x277D85DD0];
                v77[1] = 3221225472;
                v77[2] = ___HDInsertECGSymptomsAndCreateAssociationWithECGSamples_block_invoke_5;
                v77[3] = &unk_278613528;
                v46 = v43;
                v78 = v46;
                v79 = obj;
                v80 = v29;
                v47 = [v45 executeSQL:@"INSERT INTO category_samples (data_id error:value) VALUES (? bindingHandler:?)" enumerationHandler:{a3, v77, 0}];

                if (v47)
                {
                  v48 = [v62 protectedDatabase];
                  v73[0] = MEMORY[0x277D85DD0];
                  v73[1] = 3221225472;
                  v73[2] = ___HDInsertECGSymptomsAndCreateAssociationWithECGSamples_block_invoke_6;
                  v73[3] = &unk_278619A20;
                  v75 = v57;
                  v74 = v46;
                  v76 = v54;
                  v49 = [v48 executeSQL:@"INSERT INTO correlations (correlation error:object bindingHandler:provenance) VALUES (? enumerationHandler:{?, ?)", a3, v73, 0}];

                  v36 = v49 ^ 1;
                }

                else
                {
                  v36 = 1;
                }
              }

              else
              {
                v36 = 1;
              }
            }

            else
            {
              v36 = 1;
            }
          }

          else
          {
            v36 = 3;
          }
        }

        else
        {
          v36 = 1;
        }

        _Block_object_dispose(&v93, 8);
        if (v36 != 3 && v36)
        {
          v50 = 0;
          goto LABEL_79;
        }
      }

      v27 = [obj countByEnumeratingWithState:&v98 objects:v102 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }
  }

  v50 = 1;
LABEL_79:

  if (v50)
  {
LABEL_80:
    v51 = [*(a1 + 32) protectedDatabase];
    v52 = *(a1 + 56);
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = ___HDMigrateECGClassificationAverageHRAndPayload_block_invoke_4;
    v64[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
    v64[4] = v57;
    v50 = [v51 executeSQL:v52 error:a3 bindingHandler:v64 enumerationHandler:0];
  }

LABEL_81:

LABEL_82:
  return v50;
}

uint64_t ___HDMigrateECGClassificationAverageHRAndPayload_block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  v4 = [*(a1 + 32) bytes];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = "";
  }

  sqlite3_bind_blob(a2, 2, v5, [*(a1 + 32) length], 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int64(a2, 3, *(a1 + 48));
  if (*(a1 + 72) == 1)
  {
    sqlite3_bind_double(a2, 4, *(a1 + 56));
  }

  else
  {
    sqlite3_bind_null(a2, 4);
  }

  v6 = *(a1 + 64);

  return sqlite3_bind_int64(a2, 5, v6);
}

@end