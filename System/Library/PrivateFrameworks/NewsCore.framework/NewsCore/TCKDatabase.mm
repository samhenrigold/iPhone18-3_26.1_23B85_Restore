@interface TCKDatabase
- (CKRecord)secureSentinelRecord;
- (CKRecord)sentinelRecord;
- (TCKDatabase)init;
- (id)recordIDsInZoneName:(id)name;
- (void)addOperation:(id)operation;
- (void)addRecord:(id)record;
@end

@implementation TCKDatabase

- (TCKDatabase)init
{
  v6.receiver = self;
  v6.super_class = TCKDatabase;
  v2 = [(TCKDatabase *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    recordsByID = v2->_recordsByID;
    v2->_recordsByID = v3;
  }

  return v2;
}

- (void)addOperation:(id)operation
{
  v290 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = operationCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v198 = v6;
  selfCopy = self;
  v193 = operationCopy;
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  tSavedRecords = [(TCKDatabase *)self tSavedRecords];

  if (!tSavedRecords)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(TCKDatabase *)self setTSavedRecords:v9];
  }

  tSavedRecordIDs = [(TCKDatabase *)self tSavedRecordIDs];

  if (!tSavedRecordIDs)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(TCKDatabase *)self setTSavedRecordIDs:v11];
  }

  tDeletedRecordIDs = [(TCKDatabase *)self tDeletedRecordIDs];

  if (!tDeletedRecordIDs)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(TCKDatabase *)self setTDeletedRecordIDs:v13];
  }

  tSavedRecords2 = [(TCKDatabase *)self tSavedRecords];
  tSavedRecordIDs2 = [(TCKDatabase *)self tSavedRecordIDs];
  tDeletedRecordIDs2 = [(TCKDatabase *)self tDeletedRecordIDs];
  modifyRecordsCompletionBlock = [v7 modifyRecordsCompletionBlock];
  v266[0] = MEMORY[0x1E69E9820];
  v266[1] = 3221225472;
  v266[2] = __28__TCKDatabase_addOperation___block_invoke;
  v266[3] = &unk_1E7C43D18;
  v196 = tSavedRecords2;
  v267 = v196;
  v194 = tSavedRecordIDs2;
  v268 = v194;
  v191 = tDeletedRecordIDs2;
  v269 = v191;
  v190 = modifyRecordsCompletionBlock;
  v270 = v190;
  [v7 setModifyRecordsCompletionBlock:v266];
  tModifyRecordsOperationHandler = [(TCKDatabase *)self tModifyRecordsOperationHandler];

  if (tModifyRecordsOperationHandler)
  {
    tModifyRecordsOperationHandler2 = [(TCKDatabase *)self tModifyRecordsOperationHandler];
    (tModifyRecordsOperationHandler2)[2](tModifyRecordsOperationHandler2, v7);
LABEL_15:
    operationCopy = v193;
    goto LABEL_16;
  }

  tModifyRecordsHandler = [(TCKDatabase *)self tModifyRecordsHandler];

  if (tModifyRecordsHandler)
  {
    tModifyRecordsHandler2 = [(TCKDatabase *)self tModifyRecordsHandler];
    recordsToSave = [v7 recordsToSave];
    recordIDsToDelete = [v7 recordIDsToDelete];
    v264[0] = MEMORY[0x1E69E9820];
    v264[1] = 3221225472;
    v264[2] = __28__TCKDatabase_addOperation___block_invoke_2;
    v264[3] = &unk_1E7C39A20;
    v265 = v7;
    (tModifyRecordsHandler2)[2](tModifyRecordsHandler2, recordsToSave, recordIDsToDelete, v264);

    tModifyRecordsOperationHandler2 = v265;
    goto LABEL_15;
  }

  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  obj = [v7 recordsToSave];
  v105 = [obj countByEnumeratingWithState:&v260 objects:v289 count:16];
  if (v105)
  {
    v106 = v105;
    v107 = *v261;
    v199 = *v261;
    do
    {
      v108 = 0;
      v200 = v106;
      do
      {
        if (*v261 != v107)
        {
          objc_enumerationMutation(obj);
        }

        v109 = *(*(&v260 + 1) + 8 * v108);
        savePolicy = [v7 savePolicy];
        recordsByID = self->_recordsByID;
        recordID = [v109 recordID];
        if (savePolicy == 1)
        {
          v113 = [(NSMutableDictionary *)recordsByID objectForKeyedSubscript:recordID];

          if (v113)
          {
            v205 = v108;
            v258 = 0u;
            v259 = 0u;
            v256 = 0u;
            v257 = 0u;
            encryptedValueStore = [v109 encryptedValueStore];
            changedKeys = [encryptedValueStore changedKeys];

            v116 = [changedKeys countByEnumeratingWithState:&v256 objects:v288 count:16];
            if (v116)
            {
              v117 = v116;
              v118 = *v257;
              do
              {
                for (i = 0; i != v117; ++i)
                {
                  if (*v257 != v118)
                  {
                    objc_enumerationMutation(changedKeys);
                  }

                  v120 = *(*(&v256 + 1) + 8 * i);
                  encryptedValueStore2 = [v109 encryptedValueStore];
                  v122 = [encryptedValueStore2 objectForKeyedSubscript:v120];
                  encryptedValueStore3 = [v113 encryptedValueStore];
                  [encryptedValueStore3 setObject:v122 forKeyedSubscript:v120];
                }

                v117 = [changedKeys countByEnumeratingWithState:&v256 objects:v288 count:16];
              }

              while (v117);
            }

            v254 = 0u;
            v255 = 0u;
            v252 = 0u;
            v253 = 0u;
            valueStore = [v109 valueStore];
            changedKeys2 = [valueStore changedKeys];

            v126 = [changedKeys2 countByEnumeratingWithState:&v252 objects:v287 count:16];
            if (v126)
            {
              v127 = v126;
              v128 = *v253;
              do
              {
                for (j = 0; j != v127; ++j)
                {
                  if (*v253 != v128)
                  {
                    objc_enumerationMutation(changedKeys2);
                  }

                  v130 = *(*(&v252 + 1) + 8 * j);
                  valueStore2 = [v109 valueStore];
                  v132 = [valueStore2 objectForKeyedSubscript:v130];
                  valueStore3 = [v113 valueStore];
                  [valueStore3 setObject:v132 forKeyedSubscript:v130];
                }

                v127 = [changedKeys2 countByEnumeratingWithState:&v252 objects:v287 count:16];
              }

              while (v127);
            }

            v7 = v198;
            v107 = v199;
            v108 = v205;
            self = selfCopy;
            v106 = v200;
          }

          else
          {
            v134 = self->_recordsByID;
            changedKeys2 = [v109 recordID];
            [(NSMutableDictionary *)v134 setObject:v109 forKeyedSubscript:changedKeys2];
          }
        }

        else
        {
          [(NSMutableDictionary *)recordsByID setObject:v109 forKeyedSubscript:recordID];
          v113 = recordID;
        }

        ++v108;
      }

      while (v108 != v106);
      v106 = [obj countByEnumeratingWithState:&v260 objects:v289 count:16];
    }

    while (v106);
  }

  v250 = 0u;
  v251 = 0u;
  v248 = 0u;
  v249 = 0u;
  recordIDsToDelete2 = [v7 recordIDsToDelete];
  v136 = [recordIDsToDelete2 countByEnumeratingWithState:&v248 objects:v286 count:16];
  if (v136)
  {
    v137 = v136;
    v138 = *v249;
    do
    {
      for (k = 0; k != v137; ++k)
      {
        if (*v249 != v138)
        {
          objc_enumerationMutation(recordIDsToDelete2);
        }

        [(NSMutableDictionary *)self->_recordsByID setObject:0 forKeyedSubscript:*(*(&v248 + 1) + 8 * k)];
      }

      v137 = [recordIDsToDelete2 countByEnumeratingWithState:&v248 objects:v286 count:16];
    }

    while (v137);
  }

  perRecordCompletionBlock = [v7 perRecordCompletionBlock];

  if (perRecordCompletionBlock)
  {
    v246 = 0u;
    v247 = 0u;
    v244 = 0u;
    v245 = 0u;
    recordsToSave2 = [v7 recordsToSave];
    v142 = [recordsToSave2 countByEnumeratingWithState:&v244 objects:v285 count:16];
    if (v142)
    {
      v143 = v142;
      v144 = *v245;
      do
      {
        for (m = 0; m != v143; ++m)
        {
          if (*v245 != v144)
          {
            objc_enumerationMutation(recordsToSave2);
          }

          v146 = *(*(&v244 + 1) + 8 * m);
          perRecordCompletionBlock2 = [v7 perRecordCompletionBlock];
          perRecordCompletionBlock2[2](perRecordCompletionBlock2, v146, 0);
        }

        v143 = [recordsToSave2 countByEnumeratingWithState:&v244 objects:v285 count:16];
      }

      while (v143);
    }

    self = selfCopy;
  }

  modifyRecordsCompletionBlock2 = [v7 modifyRecordsCompletionBlock];
  recordsToSave3 = [v7 recordsToSave];
  recordIDsToDelete3 = [v7 recordIDsToDelete];
  (modifyRecordsCompletionBlock2)[2](modifyRecordsCompletionBlock2, recordsToSave3, recordIDsToDelete3, 0);

  completionBlock = [v7 completionBlock];

  operationCopy = v193;
  if (!completionBlock)
  {
    goto LABEL_17;
  }

  tModifyRecordsOperationHandler2 = [v7 completionBlock];
  (tModifyRecordsOperationHandler2[2])();
LABEL_16:

LABEL_17:
LABEL_18:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = operationCopy;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  if (v25)
  {
    tSavedZones = [(TCKDatabase *)self tSavedZones];

    if (!tSavedZones)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(TCKDatabase *)self setTSavedZones:v27];
    }

    tDeletedZoneIDs = [(TCKDatabase *)self tDeletedZoneIDs];

    if (!tDeletedZoneIDs)
    {
      v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(TCKDatabase *)self setTDeletedZoneIDs:v29];
    }

    tSavedZones2 = [(TCKDatabase *)self tSavedZones];
    v31 = objc_alloc(MEMORY[0x1E695DEC8]);
    recordZonesToSave = [v25 recordZonesToSave];
    v33 = [v31 initWithArray:recordZonesToSave copyItems:1];
    [tSavedZones2 addObjectsFromArray:v33];

    tDeletedZoneIDs2 = [(TCKDatabase *)selfCopy tDeletedZoneIDs];
    self = selfCopy;
    v35 = objc_alloc(MEMORY[0x1E695DEC8]);
    recordZoneIDsToDelete = [v25 recordZoneIDsToDelete];
    v37 = [v35 initWithArray:recordZoneIDsToDelete copyItems:1];
    [tDeletedZoneIDs2 addObjectsFromArray:v37];

    tModifyZonesHandler = [(TCKDatabase *)selfCopy tModifyZonesHandler];

    if (tModifyZonesHandler)
    {
      tModifyZonesHandler2 = [(TCKDatabase *)selfCopy tModifyZonesHandler];
      recordZonesToSave2 = [v25 recordZonesToSave];
      recordZoneIDsToDelete2 = [v25 recordZoneIDsToDelete];
      v242[0] = MEMORY[0x1E69E9820];
      v242[1] = 3221225472;
      v242[2] = __28__TCKDatabase_addOperation___block_invoke_3;
      v242[3] = &unk_1E7C39A20;
      v243 = v25;
      (tModifyZonesHandler2)[2](tModifyZonesHandler2, recordZonesToSave2, recordZoneIDsToDelete2, v242);

      modifyRecordZonesCompletionBlock = v243;
    }

    else
    {
      v43 = operationCopy;
      v240 = 0u;
      v241 = 0u;
      v238 = 0u;
      v239 = 0u;
      recordZoneIDsToDelete3 = [v25 recordZoneIDsToDelete];
      v45 = [recordZoneIDsToDelete3 countByEnumeratingWithState:&v238 objects:v284 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v239;
        do
        {
          for (n = 0; n != v46; ++n)
          {
            if (*v239 != v47)
            {
              objc_enumerationMutation(recordZoneIDsToDelete3);
            }

            v49 = *(*(&v238 + 1) + 8 * n);
            v50 = selfCopy->_recordsByID;
            v237[0] = MEMORY[0x1E69E9820];
            v237[1] = 3221225472;
            v237[2] = __28__TCKDatabase_addOperation___block_invoke_4;
            v237[3] = &unk_1E7C43D40;
            v237[4] = v49;
            [(NSMutableDictionary *)v50 fc_removeObjectsForKeysPassingTest:v237];
          }

          v46 = [recordZoneIDsToDelete3 countByEnumeratingWithState:&v238 objects:v284 count:16];
        }

        while (v46);
      }

      modifyRecordZonesCompletionBlock = [v25 modifyRecordZonesCompletionBlock];
      recordZonesToSave3 = [v25 recordZonesToSave];
      recordZoneIDsToDelete4 = [v25 recordZoneIDsToDelete];
      (modifyRecordZonesCompletionBlock)[2](modifyRecordZonesCompletionBlock, recordZonesToSave3, recordZoneIDsToDelete4, 0);

      operationCopy = v43;
      self = selfCopy;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v53 = operationCopy;
  }

  else
  {
    v53 = 0;
  }

  v54 = v53;
  if (v54)
  {
    tFetchZonesHandler = [(TCKDatabase *)self tFetchZonesHandler];
    recordZoneIDs = [v54 recordZoneIDs];
    v235[0] = MEMORY[0x1E69E9820];
    v235[1] = 3221225472;
    v235[2] = __28__TCKDatabase_addOperation___block_invoke_5;
    v235[3] = &unk_1E7C39358;
    v236 = v54;
    (tFetchZonesHandler)[2](tFetchZonesHandler, recordZoneIDs, v235);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v57 = operationCopy;
  }

  else
  {
    v57 = 0;
  }

  v58 = v57;
  v59 = v58;
  v204 = v58;
  if (v58)
  {
    if ([v58 isCancelled])
    {
      fetchRecordsCompletionBlock = [v59 fetchRecordsCompletionBlock];
      v61 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695B740] code:20 userInfo:0];
      (fetchRecordsCompletionBlock)[2](fetchRecordsCompletionBlock, 0, v61);

      v59 = v204;
    }

    else
    {
      tFetchedRecords = [(TCKDatabase *)self tFetchedRecords];

      if (!tFetchedRecords)
      {
        v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [(TCKDatabase *)self setTFetchedRecords:v63];
      }

      tFetchRecordsHandler = [(TCKDatabase *)self tFetchRecordsHandler];

      if (tFetchRecordsHandler)
      {
        tFetchRecordsHandler2 = [(TCKDatabase *)self tFetchRecordsHandler];
        recordIDs = [v59 recordIDs];
        v233[0] = MEMORY[0x1E69E9820];
        v233[1] = 3221225472;
        v233[2] = __28__TCKDatabase_addOperation___block_invoke_6;
        v233[3] = &unk_1E7C40918;
        v233[4] = self;
        v234 = v204;
        (tFetchRecordsHandler2)[2](tFetchRecordsHandler2, recordIDs, v233);

        v59 = v204;
      }

      else
      {
        v67 = v54;
        selfCopy2 = self;
        v69 = operationCopy;
        v70 = selfCopy2->_recordsByID;
        recordIDs2 = [v59 recordIDs];
        v72 = [(NSMutableDictionary *)v70 fc_subdictionaryForKeys:recordIDs2];

        v59 = v204;
        v231 = 0u;
        v232 = 0u;
        v229 = 0u;
        v230 = 0u;
        v73 = v72;
        v74 = [v73 countByEnumeratingWithState:&v229 objects:v283 count:16];
        if (v74)
        {
          v75 = v74;
          v76 = *v230;
          do
          {
            for (ii = 0; ii != v75; ++ii)
            {
              if (*v230 != v76)
              {
                objc_enumerationMutation(v73);
              }

              v78 = *(*(&v229 + 1) + 8 * ii);
              perRecordCompletionBlock3 = [v59 perRecordCompletionBlock];

              if (perRecordCompletionBlock3)
              {
                perRecordCompletionBlock4 = [v59 perRecordCompletionBlock];
                v81 = [v73 objectForKeyedSubscript:v78];
                (perRecordCompletionBlock4)[2](perRecordCompletionBlock4, v81, v78, 0);

                v59 = v204;
              }
            }

            v75 = [v73 countByEnumeratingWithState:&v229 objects:v283 count:16];
          }

          while (v75);
        }

        fetchRecordsCompletionBlock2 = [v59 fetchRecordsCompletionBlock];
        (fetchRecordsCompletionBlock2)[2](fetchRecordsCompletionBlock2, v73, 0);

        operationCopy = v69;
        self = selfCopy;
        v54 = v67;
      }
    }
  }

  v195 = v54;
  objc_opt_class();
  if (operationCopy && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v83 = operationCopy;
    tFetchedChangedRecordZoneNames = [(TCKDatabase *)self tFetchedChangedRecordZoneNames];

    if (!tFetchedChangedRecordZoneNames)
    {
      v85 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(TCKDatabase *)self setTFetchedChangedRecordZoneNames:v85];
    }

    v227 = 0u;
    v228 = 0u;
    v225 = 0u;
    v226 = 0u;
    recordZoneIDs2 = [v83 recordZoneIDs];
    v87 = [recordZoneIDs2 countByEnumeratingWithState:&v225 objects:v282 count:16];
    if (v87)
    {
      v88 = v87;
      v89 = *v226;
      do
      {
        for (jj = 0; jj != v88; ++jj)
        {
          if (*v226 != v89)
          {
            objc_enumerationMutation(recordZoneIDs2);
          }

          v91 = *(*(&v225 + 1) + 8 * jj);
          tFetchedChangedRecordZoneNames2 = [(TCKDatabase *)selfCopy tFetchedChangedRecordZoneNames];
          zoneName = [v91 zoneName];
          [tFetchedChangedRecordZoneNames2 addObject:zoneName];
        }

        v88 = [recordZoneIDs2 countByEnumeratingWithState:&v225 objects:v282 count:16];
      }

      while (v88);
    }

    self = selfCopy;
    tFetchRecordZoneChangesOperationHandler = [(TCKDatabase *)selfCopy tFetchRecordZoneChangesOperationHandler];

    if (tFetchRecordZoneChangesOperationHandler)
    {
      tFetchRecordZoneChangesOperationHandler2 = [(TCKDatabase *)selfCopy tFetchRecordZoneChangesOperationHandler];
      (tFetchRecordZoneChangesOperationHandler2)[2](tFetchRecordZoneChangesOperationHandler2, v83);
      operationCopy = v193;
    }

    else
    {
      v192 = v25;
      tFetchZoneChangesHandler = [(TCKDatabase *)selfCopy tFetchZoneChangesHandler];

      if (tFetchZoneChangesHandler)
      {
        v223 = 0uLL;
        v224 = 0uLL;
        v221 = 0uLL;
        v222 = 0uLL;
        recordZoneIDs3 = [v83 recordZoneIDs];
        v98 = [recordZoneIDs3 countByEnumeratingWithState:&v221 objects:v281 count:16];
        if (v98)
        {
          v99 = v98;
          v100 = *v222;
          do
          {
            for (kk = 0; kk != v99; ++kk)
            {
              if (*v222 != v100)
              {
                objc_enumerationMutation(recordZoneIDs3);
              }

              v102 = *(*(&v221 + 1) + 8 * kk);
              tFetchZoneChangesHandler2 = [(TCKDatabase *)selfCopy tFetchZoneChangesHandler];

              if (tFetchZoneChangesHandler2)
              {
                tFetchZoneChangesHandler3 = [(TCKDatabase *)selfCopy tFetchZoneChangesHandler];
                v218[0] = MEMORY[0x1E69E9820];
                v218[1] = 3221225472;
                v218[2] = __28__TCKDatabase_addOperation___block_invoke_7;
                v218[3] = &unk_1E7C39650;
                v219 = v83;
                v220 = v102;
                (tFetchZoneChangesHandler3)[2](tFetchZoneChangesHandler3, v102, v218);
              }
            }

            v99 = [recordZoneIDs3 countByEnumeratingWithState:&v221 objects:v281 count:16];
          }

          while (v99);
        }
      }

      else
      {
        v216 = 0uLL;
        v217 = 0uLL;
        v214 = 0uLL;
        v215 = 0uLL;
        recordZoneIDs4 = [v83 recordZoneIDs];
        obja = [recordZoneIDs4 countByEnumeratingWithState:&v214 objects:v280 count:16];
        if (obja)
        {
          v201 = *v215;
          do
          {
            for (mm = 0; mm != obja; mm = mm + 1)
            {
              if (*v215 != v201)
              {
                objc_enumerationMutation(recordZoneIDs4);
              }

              v153 = *(*(&v214 + 1) + 8 * mm);
              v154 = selfCopy->_recordsByID;
              v213[0] = MEMORY[0x1E69E9820];
              v213[1] = 3221225472;
              v213[2] = __28__TCKDatabase_addOperation___block_invoke_8;
              v213[3] = &unk_1E7C43D68;
              v213[4] = v153;
              v155 = [(NSMutableDictionary *)v154 keysOfEntriesPassingTest:v213];
              v209 = 0u;
              v210 = 0u;
              v211 = 0u;
              v212 = 0u;
              v156 = v155;
              v157 = [v156 countByEnumeratingWithState:&v209 objects:v279 count:16];
              if (v157)
              {
                v158 = v157;
                v159 = *v210;
                do
                {
                  for (nn = 0; nn != v158; ++nn)
                  {
                    if (*v210 != v159)
                    {
                      objc_enumerationMutation(v156);
                    }

                    v161 = *(*(&v209 + 1) + 8 * nn);
                    recordChangedBlock = [v83 recordChangedBlock];

                    if (recordChangedBlock)
                    {
                      recordChangedBlock2 = [v83 recordChangedBlock];
                      v164 = [(NSMutableDictionary *)selfCopy->_recordsByID objectForKeyedSubscript:v161];
                      (recordChangedBlock2)[2](recordChangedBlock2, v164);
                    }
                  }

                  v158 = [v156 countByEnumeratingWithState:&v209 objects:v279 count:16];
                }

                while (v158);
              }

              recordZoneFetchCompletionBlock = [v83 recordZoneFetchCompletionBlock];

              if (recordZoneFetchCompletionBlock)
              {
                recordZoneFetchCompletionBlock2 = [v83 recordZoneFetchCompletionBlock];
                v167 = objc_opt_new();
                (recordZoneFetchCompletionBlock2)[2](recordZoneFetchCompletionBlock2, v153, 0, v167, 0, 0);
              }
            }

            obja = [recordZoneIDs4 countByEnumeratingWithState:&v214 objects:v280 count:16];
          }

          while (obja);
        }
      }

      fetchRecordZoneChangesCompletionBlock = [v83 fetchRecordZoneChangesCompletionBlock];

      if (!fetchRecordZoneChangesCompletionBlock)
      {
        v25 = v192;
        operationCopy = v193;
        v59 = v204;
        goto LABEL_154;
      }

      tFetchRecordZoneChangesOperationHandler2 = [v83 fetchRecordZoneChangesCompletionBlock];
      tFetchRecordZoneChangesOperationHandler2[2](tFetchRecordZoneChangesOperationHandler2, 0);
      v25 = v192;
      operationCopy = v193;
    }

    v59 = v204;
  }

  else
  {
    v83 = 0;
  }

LABEL_154:
  objc_opt_class();
  if (operationCopy && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v169 = operationCopy;
    tFetchDatabaseChangesHandler = [(TCKDatabase *)self tFetchDatabaseChangesHandler];

    if (tFetchDatabaseChangesHandler)
    {
      tFetchDatabaseChangesHandler2 = [(TCKDatabase *)self tFetchDatabaseChangesHandler];
      v207[0] = MEMORY[0x1E69E9820];
      v207[1] = 3221225472;
      v207[2] = __28__TCKDatabase_addOperation___block_invoke_9;
      v207[3] = &unk_1E7C39A20;
      v208 = v169;
      (tFetchDatabaseChangesHandler2)[2](tFetchDatabaseChangesHandler2, v207);
    }

    objc_opt_class();
  }

  else
  {
    objc_opt_class();
    v169 = 0;
    if (!operationCopy)
    {
      goto LABEL_164;
    }
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_164:
    objc_opt_class();
    v172 = 0;
    if (!operationCopy)
    {
      goto LABEL_171;
    }

    goto LABEL_165;
  }

  v172 = operationCopy;
  fetchSubscriptionCompletionBlock = [v172 fetchSubscriptionCompletionBlock];

  if (fetchSubscriptionCompletionBlock)
  {
    fetchSubscriptionCompletionBlock2 = [v172 fetchSubscriptionCompletionBlock];
    v175 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695B740] code:11 userInfo:0];
    (fetchSubscriptionCompletionBlock2)[2](fetchSubscriptionCompletionBlock2, 0, v175);

    v59 = v204;
  }

  objc_opt_class();
LABEL_165:
  if (objc_opt_isKindOfClass())
  {
    v176 = v25;
    v177 = operationCopy;
    tSavedSubscriptions = [(TCKDatabase *)self tSavedSubscriptions];

    if (!tSavedSubscriptions)
    {
      array = [MEMORY[0x1E695DF70] array];
      [(TCKDatabase *)self setTSavedSubscriptions:array];
    }

    tSavedSubscriptions2 = [(TCKDatabase *)self tSavedSubscriptions];
    subscriptionsToSave = [v177 subscriptionsToSave];
    [tSavedSubscriptions2 addObjectsFromArray:subscriptionsToSave];

    modifySubscriptionsCompletionBlock = [v177 modifySubscriptionsCompletionBlock];

    if (modifySubscriptionsCompletionBlock)
    {
      modifySubscriptionsCompletionBlock2 = [v177 modifySubscriptionsCompletionBlock];
      subscriptionsToSave2 = [v177 subscriptionsToSave];
      subscriptionIDsToDelete = [v177 subscriptionIDsToDelete];
      (modifySubscriptionsCompletionBlock2)[2](modifySubscriptionsCompletionBlock2, subscriptionsToSave2, subscriptionIDsToDelete, 0);
    }

    objc_opt_class();
    v59 = v204;
    goto LABEL_172;
  }

LABEL_171:
  v176 = v25;
  objc_opt_class();
  v177 = 0;
  if (!operationCopy)
  {
LABEL_176:
    v186 = 0;
    goto LABEL_177;
  }

LABEL_172:
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_176;
  }

  v186 = operationCopy;
  v187 = MEMORY[0x1E69E9C10];
  v188 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
  {
    v189 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CKQueryOperation is not supported"];
    *buf = 136315906;
    v272 = "[TCKDatabase addOperation:]";
    v273 = 2080;
    v274 = "TCKDatabase.m";
    v275 = 1024;
    v276 = 299;
    v277 = 2114;
    v278 = v189;
    v59 = v204;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_177:
}

void __28__TCKDatabase_addOperation___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v7 = a3;
  v8 = a4;
  v9 = a1[4];
  v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v16 copyItems:1];
  [v9 addObjectsFromArray:v10];

  v11 = a1[5];
  v12 = [v16 valueForKeyPath:@"recordID"];
  [v11 addObjectsFromArray:v12];

  v13 = a1[6];
  v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v7 copyItems:1];
  [v13 addObjectsFromArray:v14];

  v15 = a1[7];
  if (v15)
  {
    (*(v15 + 16))(v15, v16, v7, v8);
  }
}

void __28__TCKDatabase_addOperation___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = [*(a1 + 32) perRecordCompletionBlock];

        if (v15)
        {
          v16 = [*(a1 + 32) perRecordCompletionBlock];
          v16[2](v16, v14, 0);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = [*(a1 + 32) modifyRecordsCompletionBlock];

  if (v17)
  {
    v18 = [*(a1 + 32) modifyRecordsCompletionBlock];
    (v18)[2](v18, v7, v8, v9);
  }
}

void __28__TCKDatabase_addOperation___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [v6 modifyRecordZonesCompletionBlock];
  v10[2](v10, v9, v8, v7);
}

uint64_t __28__TCKDatabase_addOperation___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 zoneID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __28__TCKDatabase_addOperation___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 fetchRecordZonesCompletionBlock];
  v7[2](v7, v6, v5);
}

void __28__TCKDatabase_addOperation___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) tFetchedRecords];
  v8 = objc_alloc(MEMORY[0x1E695DEC8]);
  v9 = [v5 allValues];
  v10 = [v8 initWithArray:v9 copyItems:1];
  [v7 addObjectsFromArray:v10];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * v15);
        v17 = [*(a1 + 40) perRecordCompletionBlock];

        if (v17)
        {
          v18 = [*(a1 + 40) perRecordCompletionBlock];
          v19 = [v11 objectForKeyedSubscript:v16];
          (v18)[2](v18, v19, v16, v6);
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v20 = [*(a1 + 40) fetchRecordsCompletionBlock];
  (v20)[2](v20, v11, v6);
}

void __28__TCKDatabase_addOperation___block_invoke_7(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      v13 = 0;
      do
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v33 + 1) + 8 * v13);
        v15 = [*(a1 + 32) recordChangedBlock];

        if (v15)
        {
          v16 = [*(a1 + 32) recordChangedBlock];
          v16[2](v16, v14);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v11);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = v8;
  v18 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      v21 = 0;
      do
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v29 + 1) + 8 * v21);
        v23 = [*(a1 + 32) recordWithIDWasDeletedBlock];

        if (v23)
        {
          v24 = [*(a1 + 32) recordWithIDWasDeletedBlock];
          (v24)[2](v24, v22, @"UNKNOWN_RECORD_TYPE");
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v19);
  }

  v25 = [*(a1 + 32) recordZoneFetchCompletionBlock];

  if (v25)
  {
    v26 = [*(a1 + 32) recordZoneFetchCompletionBlock];
    v27 = *(a1 + 40);
    v28 = objc_opt_new();
    (v26)[2](v26, v27, 0, v28, v9 != 0, v9);
  }
}

uint64_t __28__TCKDatabase_addOperation___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = [a2 zoneID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __28__TCKDatabase_addOperation___block_invoke_9(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      v13 = 0;
      do
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v31 + 1) + 8 * v13);
        v15 = [*(a1 + 32) recordZoneWithIDChangedBlock];

        if (v15)
        {
          v16 = [*(a1 + 32) recordZoneWithIDChangedBlock];
          v16[2](v16, v14);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v11);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = v8;
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      v21 = 0;
      do
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v27 + 1) + 8 * v21);
        v23 = [*(a1 + 32) recordZoneWithIDWasDeletedBlock];

        if (v23)
        {
          v24 = [*(a1 + 32) recordZoneWithIDWasDeletedBlock];
          v24[2](v24, v22);
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v19);
  }

  v25 = [*(a1 + 32) fetchDatabaseChangesCompletionBlock];

  if (v25)
  {
    v26 = [*(a1 + 32) fetchDatabaseChangesCompletionBlock];
    (v26)[2](v26, 0, 0, v9);
  }
}

- (void)addRecord:(id)record
{
  recordsByID = self->_recordsByID;
  recordCopy = record;
  recordID = [recordCopy recordID];
  [(NSMutableDictionary *)recordsByID setObject:recordCopy forKeyedSubscript:recordID];
}

- (id)recordIDsInZoneName:(id)name
{
  nameCopy = name;
  recordsByID = self->_recordsByID;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__TCKDatabase_recordIDsInZoneName___block_invoke;
  v9[3] = &unk_1E7C43D68;
  v10 = nameCopy;
  v6 = nameCopy;
  v7 = [(NSMutableDictionary *)recordsByID keysOfEntriesPassingTest:v9];

  return v7;
}

uint64_t __35__TCKDatabase_recordIDsInZoneName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 zoneID];
  v4 = [v3 zoneName];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (CKRecord)sentinelRecord
{
  v3 = +[(CKRecordID *)MEMORY[0x1E695BA70]];
  v4 = [(TCKDatabase *)self recordWithID:v3];

  return v4;
}

- (CKRecord)secureSentinelRecord
{
  v3 = +[(CKRecordID *)MEMORY[0x1E695BA70]];
  v4 = [(TCKDatabase *)self recordWithID:v3];

  return v4;
}

@end