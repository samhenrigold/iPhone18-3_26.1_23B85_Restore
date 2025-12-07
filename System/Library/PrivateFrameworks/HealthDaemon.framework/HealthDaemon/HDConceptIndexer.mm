@interface HDConceptIndexer
+ (BOOL)indexSamplesForProfile:(id)profile limit:(unint64_t)limit outIndexedSamplesCount:(int64_t *)count error:(id *)error;
+ (BOOL)resetIndexManagerStateForProfile:(id)profile withError:(id *)error;
+ (BOOL)storeState:(id)state profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (HDConceptIndexState)_stateWithKeyValueDomain:(uint64_t)domain transaction:(void *)transaction error:(void *)error;
+ (HDKeyValueDomain)_keyValueDomainWithProfile:(uint64_t)profile;
+ (id)stateWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
+ (uint64_t)_storeState:(uint64_t)state keyValueDomain:(void *)domain transaction:(void *)transaction error:(uint64_t)error;
- (HDConceptIndexer)init;
@end

@implementation HDConceptIndexer

- (HDConceptIndexer)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (BOOL)indexSamplesForProfile:(id)profile limit:(unint64_t)limit outIndexedSamplesCount:(int64_t *)count error:(id *)error
{
  profileCopy = profile;
  database = [profileCopy database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__HDConceptIndexer_indexSamplesForProfile_limit_outIndexedSamplesCount_error___block_invoke;
  v14[3] = &unk_278629D48;
  limitCopy = limit;
  countCopy = count;
  v15 = profileCopy;
  selfCopy = self;
  v12 = profileCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDMedicalRecordEntity performWriteTransactionWithHealthDatabase:database error:error block:v14];

  return error;
}

BOOL __78__HDConceptIndexer_indexSamplesForProfile_limit_outIndexedSamplesCount_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v170 = *MEMORY[0x277D85DE8];
  v116 = *(a1 + 48);
  v105 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = a2;
  objc_opt_self();
  v7 = v5;
  v8 = v6;
  v9 = objc_opt_self();
  v10 = [(HDConceptIndexer *)v9 _keyValueDomainWithProfile:v7];
  v108 = a3;
  v11 = [HDConceptIndexer _stateWithKeyValueDomain:v9 transaction:v10 error:a3];
  if (!v11)
  {

LABEL_98:
    v99 = 0;
    goto LABEL_99;
  }

  v107 = v10;
  v114 = v8;
  v118 = v11;
  v12 = [v11 anchor];
  v115 = v7;
  v13 = [v7 daemon];
  v14 = [v13 behavior];
  v15 = [v14 futureMigrationsEnabled];
  v16 = v12;
  v112 = v9;
  objc_opt_self();
  if (v16)
  {
    v17 = MEMORY[0x277D10B18];
    v18 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "_rowid")}];
    v19 = [v17 predicateWithProperty:@"data_id" greaterThanValue:v18];
  }

  else
  {
    v19 = 0;
  }

  v20 = [MEMORY[0x277CCD848] medicalRecordDescriptionsWithPredicate:0 futureMigrationsEnabled:v15];
  *&v166 = MEMORY[0x277D85DD0];
  *(&v166 + 1) = 3221225472;
  v167 = __76__HDConceptIndexer__queryDescriptorsFollowingAnchor_futureMigrationEnabled___block_invoke;
  v168 = &unk_278629D70;
  v169 = v19;
  v21 = v19;
  v22 = [v20 hk_map:&v166];

  v106 = v22;
  v7 = v115;
  v23 = [[HDMultiTypeSortedSampleIterator alloc] initWithQueryDescriptors:v22 includeDeletedObjects:0 anchor:0 sortDescriptors:0 bufferSize:v116 profile:v115];
  v111 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v137 = 0;
  v24 = [(HDMultiTypeSortedSampleIterator *)v23 advanceWithError:&v137];
  v25 = v137;
  v26 = v25;
  v113 = v23;
  if (v24)
  {
    v121 = 0;
    v117 = 0;
    v27 = v25;
    while (1)
    {
      if (v116 && v121 >= v116)
      {
        v26 = v27;
        goto LABEL_80;
      }

      v120 = v27;
      v28 = [(HDMultiTypeSortedSampleIterator *)v23 sample];
      v136 = 0;
      v29 = v28;
      v30 = v7;
      v31 = v114;
      objc_opt_self();
      v119 = v31;
      if ([v29 conformsToProtocol:&unk_283D34DC8])
      {
        v110 = v29;
        v32 = v29;
        v135 = [v30 internalContentDatabaseManager];
        v132 = [v135 ontologyContentVersionWithError:&v136];
        if (v132)
        {
          v109 = v30;
          v131 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v33 = [HDConceptResolutionConfiguration alloc];
          v34 = [v32 country];
          v35 = HKCurrentLocaleCountryCodeIfUnknown();
          v122 = -[HDConceptResolutionConfiguration initWithCountryCode:recordCategoryType:options:](v33, "initWithCountryCode:recordCategoryType:options:", v35, [v32 recordCategoryType], 0);

          v158 = 0u;
          v159 = 0u;
          v156 = 0u;
          v157 = 0u;
          obj = [objc_opt_class() indexableConceptKeyPaths];
          v36 = [obj countByEnumeratingWithState:&v156 objects:&v166 count:16];
          v127 = v32;
          if (v36)
          {
            v37 = v36;
            v38 = *v157;
            v124 = 1;
            while (2)
            {
              for (i = 0; i != v37; ++i)
              {
                if (*v157 != v38)
                {
                  objc_enumerationMutation(obj);
                }

                v40 = *(*(&v156 + 1) + 8 * i);
                v155 = 0;
                v41 = [v32 codingsForKeyPath:v40 error:&v155];
                v42 = v155;
                if (!v41)
                {
                  _HKInitializeLogging();
                  v54 = HKLogConceptIndex();
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                  {
                    v87 = HKSensitiveLogItem();
                    *buf = 138543362;
                    *&buf[4] = v87;
                    _os_log_error_impl(&dword_228986000, v54, OS_LOG_TYPE_ERROR, "Failed to index sample with error %{public}@", buf, 0xCu);
                  }

                  v124 = 0;
                  goto LABEL_34;
                }

                v152[0] = MEMORY[0x277D85DD0];
                v152[1] = 3221225472;
                v152[2] = __59__HDConceptIndexer__indexSample_profile_transaction_error___block_invoke;
                v152[3] = &unk_278629D98;
                v153 = v135;
                v154 = v122;
                v43 = [v41 hk_map:v152];
                v151 = 0;
                v44 = [v32 applyConcepts:v43 forKeyPath:v40 error:&v151];
                v45 = v151;
                if (v44)
                {
                  v147[0] = MEMORY[0x277D85DD0];
                  v147[1] = 3221225472;
                  v147[2] = __59__HDConceptIndexer__indexSample_profile_transaction_error___block_invoke_395;
                  v147[3] = &unk_278629DC0;
                  v148 = v32;
                  v149 = v40;
                  v150 = v132;
                  v46 = [v43 hk_map:v147];
                  [v131 addObjectsFromArray:v46];

                  v47 = v148;
                }

                else
                {
                  _HKInitializeLogging();
                  v47 = HKLogConceptIndex();
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                  {
                    v48 = [v127 UUID];
                    v129 = HKSensitiveLogItem();
                    *buf = 138543618;
                    *&buf[4] = v48;
                    v164 = 2114;
                    v165 = v129;
                    _os_log_error_impl(&dword_228986000, v47, OS_LOG_TYPE_ERROR, "Failed to apply concepts to sample with UUID %{public}@ with error %{public}@", buf, 0x16u);
                  }

                  v124 = 0;
                }

                if (!v44)
                {
                  v32 = v127;
                  goto LABEL_34;
                }

                v32 = v127;
              }

              v37 = [obj countByEnumeratingWithState:&v156 objects:&v166 count:16];
              if (v37)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v124 = 1;
          }

LABEL_34:

          v146 = 0u;
          v144 = 0u;
          v145 = 0u;
          v143 = 0u;
          v123 = [objc_opt_class() cachedConceptRelationshipKeyPaths];
          v126 = [v123 countByEnumeratingWithState:&v143 objects:buf count:16];
          if (v126)
          {
            v125 = *v144;
            while (2)
            {
              for (j = 0; j != v126; ++j)
              {
                if (*v144 != v125)
                {
                  objc_enumerationMutation(v123);
                }

                obja = *(*(&v143 + 1) + 8 * j);
                v56 = [obja componentsSeparatedByString:@"."];
                v57 = v32;
                v139 = 0u;
                v140 = 0u;
                v141 = 0u;
                v142 = 0u;
                v58 = v56;
                v59 = [v58 countByEnumeratingWithState:&v139 objects:v162 count:16];
                if (v59)
                {
                  v60 = v59;
                  v128 = v57;
                  v130 = j;
                  v61 = *v140;
                  while (2)
                  {
                    for (k = 0; k != v60; ++k)
                    {
                      if (*v140 != v61)
                      {
                        objc_enumerationMutation(v58);
                      }

                      v63 = *(*(&v139 + 1) + 8 * k);
                      v64 = objc_autoreleasePoolPush();
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v65 = v57;
                        v57 = v65;
                        if (([v65 relationshipsAreLoaded] & 1) == 0)
                        {
                          v66 = [v65 identifier];
                          v138 = 0;
                          v67 = [v135 relationshipsForConceptWithIdentifier:v66 error:&v138];
                          v68 = v138;

                          if (!v67)
                          {
                            _HKInitializeLogging();
                            v70 = HKLogConceptIndex();
                            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                            {
                              v75 = HKSensitiveLogItem();
                              *v160 = 138543362;
                              v161 = v75;
                              _os_log_error_impl(&dword_228986000, v70, OS_LOG_TYPE_ERROR, "error loading relationships for concept: %{public}@", v160, 0xCu);
                            }

                            objc_autoreleasePoolPop(v64);
                            v124 = 0;
                            goto LABEL_55;
                          }

                          v57 = [v65 copyWithRelationships:v67];
                        }
                      }

                      v69 = v57;
                      objc_autoreleasePoolPop(v64);
                      v57 = [v57 valueForKey:v63];
                    }

                    v60 = [v58 countByEnumeratingWithState:&v139 objects:v162 count:16];
                    if (v60)
                    {
                      continue;
                    }

                    break;
                  }

                  v65 = v57;
LABEL_55:
                  v32 = v127;
                  v57 = v128;
                  j = v130;
                }

                else
                {
                  v65 = v57;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  _HKInitializeLogging();
                  v76 = HKLogConceptIndex();
                  if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                  {
                    v85 = objc_opt_class();
                    v86 = NSStringFromClass(v85);
                    *v160 = 138543362;
                    v161 = v86;
                    _os_log_error_impl(&dword_228986000, v76, OS_LOG_TYPE_ERROR, "Encountered an unsupported class %{public}@ when generating concept relationship cache", v160, 0xCu);
                  }

                  goto LABEL_65;
                }

                v71 = [HDConceptIndexEntry alloc];
                v72 = [v57 UUID];
                v73 = [v65 identifier];
                v74 = -[HDConceptIndexEntry initWithSampleUUID:conceptIdentifier:conceptVersion:keyPath:compoundIndex:type:ontologyVersion:](v71, "initWithSampleUUID:conceptIdentifier:conceptVersion:keyPath:compoundIndex:type:ontologyVersion:", v72, [v73 rawIdentifier], objc_msgSend(v65, "version"), obja, 0, 1, v132);
                [v131 addObject:v74];
              }

              v126 = [v123 countByEnumeratingWithState:&v143 objects:buf count:16];
              if (v126)
              {
                continue;
              }

              break;
            }
          }

          if (v124)
          {
            v53 = v131;
            v7 = v115;
          }

          else
          {
LABEL_65:
            _HKInitializeLogging();
            v77 = HKLogConceptIndex();
            v7 = v115;
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              v84 = [v32 UUID];
              *v160 = 138412290;
              v161 = v84;
              _os_log_error_impl(&dword_228986000, v77, OS_LOG_TYPE_ERROR, "Failed to index sample with UUID %@", v160, 0xCu);
            }

            v53 = 0;
          }

          v30 = v109;
        }

        else
        {
          v53 = 0;
        }

        v29 = v110;
      }

      else
      {
        v49 = v30;
        v50 = MEMORY[0x277CCA9B8];
        v51 = objc_opt_class();
        v32 = NSStringFromClass(v51);
        v52 = v50;
        v30 = v49;
        [v52 hk_assignError:&v136 code:3 format:{@"Unsupported sample class (%@) when generating concept index", v32}];
        v53 = 0;
      }

      v78 = v136;
      if (v53)
      {
        [v111 addObjectsFromArray:v53];
        v23 = v113;
        v79 = [MEMORY[0x277CCD840] _anchorWithRowid:{-[HDMultiTypeSortedSampleIterator objectID](v113, "objectID")}];

        v80 = v118;
        v81 = [v118 copyWithAnchor:v79];
        v117 = v79;
        v7 = v115;
        v118 = v81;
      }

      else
      {
        if ([v78 hk_isDatabaseAccessibilityError])
        {

          v93 = 0;
          v26 = v120;
          v8 = v114;
          goto LABEL_96;
        }

        _HKInitializeLogging();
        v80 = HKLogConceptIndex();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          v83 = HKSensitiveLogItem();
          LODWORD(v166) = 138543362;
          *(&v166 + 4) = v83;
          _os_log_error_impl(&dword_228986000, v80, OS_LOG_TYPE_ERROR, "Failed to index sample with error %{public}@", &v166, 0xCu);

          v7 = v115;
        }

        v23 = v113;
      }

      ++v121;

      v137 = v120;
      v82 = [(HDMultiTypeSortedSampleIterator *)v23 advanceWithError:&v137];
      v26 = v137;

      v27 = v26;
      if (!v82)
      {
        goto LABEL_80;
      }
    }
  }

  v121 = 0;
  v117 = 0;
LABEL_80:
  v88 = v7;
  v89 = v111;
  objc_opt_self();
  *buf = 0;
  v90 = [HDConceptIndexEntity insertConceptIndexEntries:v89 profile:v88 error:buf];

  v91 = *buf;
  v92 = v91;
  if (!v90)
  {
    _HKInitializeLogging();
    v94 = HKLogConceptIndex();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      v103 = HKSensitiveLogItem();
      LODWORD(v166) = 138543362;
      *(&v166 + 4) = v103;
      _os_log_error_impl(&dword_228986000, v94, OS_LOG_TYPE_ERROR, "Failed to store concept index entries with error %{public}@", &v166, 0xCu);
    }

    v95 = v92;
    v96 = v95;
    v8 = v114;
    v7 = v115;
    if (v95)
    {
      if (v108)
      {
        v97 = v95;
        *v108 = v96;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_95;
  }

  v8 = v114;
  if (![HDConceptIndexer _storeState:v112 keyValueDomain:v118 transaction:v107 error:v108])
  {
    v93 = 0;
    v7 = v115;
    goto LABEL_96;
  }

  if (v105)
  {
    *v105 = v121;
  }

  v7 = v115;
  if (!v26 || ([v26 hk_isHealthKitErrorWithCode:900] & 1) != 0)
  {
    v93 = 1;
    goto LABEL_96;
  }

  _HKInitializeLogging();
  v101 = HKLogConceptIndex();
  if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
  {
    v104 = HKSensitiveLogItem();
    LODWORD(v166) = 138543362;
    *(&v166 + 4) = v104;
    _os_log_error_impl(&dword_228986000, v101, OS_LOG_TYPE_ERROR, "Failed to index samples with error %{public}@", &v166, 0xCu);

    v8 = v114;
  }

  if (!v108)
  {
    _HKLogDroppedError();
LABEL_95:
    v93 = 0;
    goto LABEL_96;
  }

  v102 = v26;
  v93 = 0;
  *v108 = v26;
LABEL_96:

  if (!v93)
  {
    goto LABEL_98;
  }

  v98 = [v7 internalContentDatabaseManager];
  v99 = [HDAdHocConceptEntity deleteNonIndexedConceptsWithTransaction:v8 internalContentDatabaseManager:v98 error:v108];

LABEL_99:
  return v99;
}

+ (BOOL)resetIndexManagerStateForProfile:(id)profile withError:(id *)error
{
  profileCopy = profile;
  v6 = objc_alloc_init(HDConceptIndexResetOperation);
  LOBYTE(error) = [(HDJournalableOperation *)v6 performOrJournalWithProfile:profileCopy error:error];

  return error;
}

+ (id)stateWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v9 = [(HDConceptIndexer *)self _keyValueDomainWithProfile:profile];
  v10 = [HDConceptIndexer _stateWithKeyValueDomain:self transaction:v9 error:error];

  return v10;
}

+ (HDKeyValueDomain)_keyValueDomainWithProfile:(uint64_t)profile
{
  v2 = a2;
  objc_opt_self();
  v3 = [[HDKeyValueDomain alloc] initWithCategory:0 domainName:@"com.apple.health.records" profile:v2];

  return v3;
}

+ (HDConceptIndexState)_stateWithKeyValueDomain:(uint64_t)domain transaction:(void *)transaction error:(void *)error
{
  transactionCopy = transaction;
  objc_opt_self();
  v12 = 0;
  v5 = [transactionCopy dataForKey:@"Indexer-State" error:&v12];

  v6 = v12;
  v7 = v6;
  if (v5)
  {
    v8 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v5 error:error];
    [v8 setClass:objc_opt_class() forClassName:@"HDConceptIndexManagerState"];
    v9 = [v8 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
  }

  else if (v6)
  {
    if (error)
    {
      v11 = v6;
      v9 = 0;
      *error = v7;
    }

    else
    {
      _HKLogDroppedError();
      v9 = 0;
    }
  }

  else
  {
    v9 = objc_alloc_init(HDConceptIndexState);
  }

  return v9;
}

+ (BOOL)storeState:(id)state profile:(id)profile transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  stateCopy = state;
  v12 = [(HDConceptIndexer *)self _keyValueDomainWithProfile:profile];
  LOBYTE(error) = [HDConceptIndexer _storeState:self keyValueDomain:stateCopy transaction:v12 error:error];

  return error;
}

+ (uint64_t)_storeState:(uint64_t)state keyValueDomain:(void *)domain transaction:(void *)transaction error:(uint64_t)error
{
  transactionCopy = transaction;
  domainCopy = domain;
  objc_opt_self();
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:domainCopy requiringSecureCoding:1 error:error];

  if (v8)
  {
    v9 = [transactionCopy setData:v8 forKey:@"Indexer-State" error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

HDQueryDescriptor *__76__HDConceptIndexer__queryDescriptorsFollowingAnchor_futureMigrationEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HDQueryDescriptor alloc];
  v5 = MEMORY[0x277CBEB98];
  v6 = [v3 sampleType];
  v7 = [v5 setWithObject:v6];
  v8 = [v3 _filter];

  v9 = [(HDQueryDescriptor *)v4 initWithSampleTypes:v7 encodingOptions:0 restrictedSourceEntities:0 authorizationFilter:0 filter:v8 samplePredicate:*(a1 + 32) deletedObjectsPredicate:0];

  return v9;
}

id __59__HDConceptIndexer__indexSample_profile_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 object];
  v6 = *(a1 + 40);
  v14 = 0;
  v7 = [v4 conceptForCodingCollection:v5 configuration:v6 error:&v14];
  v8 = v14;

  if (v7)
  {
    v9 = [MEMORY[0x277CCD548] indexableObjectWithObject:v7 compoundIndex:{objc_msgSend(v3, "compoundIndex")}];
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogConceptIndex();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = HKSensitiveLogItem();
      v13 = HKSensitiveLogItem();
      *buf = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Failed to resolve concept for coding collection %{public}@ with error %{public}@", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

HDConceptIndexEntry *__59__HDConceptIndexer__indexSample_profile_transaction_error___block_invoke_395(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = [HDConceptIndexEntry alloc];
  v4 = [*(a1 + 32) UUID];
  v5 = [v3 object];
  v6 = [v5 identifier];
  v7 = [v6 rawIdentifier];
  v8 = [v3 object];
  v9 = [v8 version];
  v10 = *(a1 + 40);
  v11 = [v3 compoundIndex];

  v12 = [(HDConceptIndexEntry *)v14 initWithSampleUUID:v4 conceptIdentifier:v7 conceptVersion:v9 keyPath:v10 compoundIndex:v11 type:0 ontologyVersion:*(a1 + 48)];

  return v12;
}

@end