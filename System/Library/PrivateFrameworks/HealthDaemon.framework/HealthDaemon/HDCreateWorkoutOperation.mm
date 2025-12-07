@interface HDCreateWorkoutOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDCreateWorkoutOperation)initWithCoder:(id)coder;
- (HDCreateWorkoutOperation)initWithWorkoutConfiguration:(id)configuration identifier:(id)identifier dateInterval:(id)interval metadata:(id)metadata device:(id)device source:(id)source sourceVersion:(id)version events:(id)self0 activities:(id)self1 zones:(id)self2 statisticsCalculators:(id)self3 associatedSeries:(id)self4 goalType:(unint64_t)self5 goal:(id)self6 quantityTypesIncludedWhilePaused:(id)self7;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDCreateWorkoutOperation

- (HDCreateWorkoutOperation)initWithWorkoutConfiguration:(id)configuration identifier:(id)identifier dateInterval:(id)interval metadata:(id)metadata device:(id)device source:(id)source sourceVersion:(id)version events:(id)self0 activities:(id)self1 zones:(id)self2 statisticsCalculators:(id)self3 associatedSeries:(id)self4 goalType:(unint64_t)self5 goal:(id)self6 quantityTypesIncludedWhilePaused:(id)self7
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  intervalCopy = interval;
  metadataCopy = metadata;
  deviceCopy = device;
  sourceCopy = source;
  versionCopy = version;
  eventsCopy = events;
  activitiesCopy = activities;
  zonesCopy = zones;
  calculatorsCopy = calculators;
  seriesCopy = series;
  v30 = versionCopy;
  goalCopy = goal;
  pausedCopy = paused;
  v62.receiver = self;
  v62.super_class = HDCreateWorkoutOperation;
  v32 = [(HDCreateWorkoutOperation *)&v62 init];
  if (v32)
  {
    v33 = objc_msgSend_copy(configurationCopy);
    workoutConfiguration = v32->_workoutConfiguration;
    v32->_workoutConfiguration = v33;

    v35 = objc_msgSend_copy(identifierCopy);
    identifier = v32->_identifier;
    v32->_identifier = v35;

    v37 = objc_msgSend_copy(intervalCopy);
    dateInterval = v32->_dateInterval;
    v32->_dateInterval = v37;

    v39 = objc_msgSend_copy(metadataCopy);
    metadata = v32->_metadata;
    v32->_metadata = v39;

    v41 = objc_msgSend_copy(deviceCopy);
    device = v32->_device;
    v32->_device = v41;

    v43 = objc_msgSend_copy(sourceCopy);
    source = v32->_source;
    v32->_source = v43;

    v45 = objc_msgSend_copy(v30);
    sourceVersion = v32->_sourceVersion;
    v32->_sourceVersion = v45;

    v47 = objc_msgSend_copy(eventsCopy);
    events = v32->_events;
    v32->_events = v47;

    v49 = objc_msgSend_copy(activitiesCopy);
    activities = v32->_activities;
    v32->_activities = v49;

    v51 = objc_msgSend_copy(zonesCopy);
    zones = v32->_zones;
    v32->_zones = v51;

    objc_storeStrong(&v32->_statisticsCalculators, calculators);
    v53 = objc_msgSend_copy(seriesCopy);
    associatedSeries = v32->_associatedSeries;
    v32->_associatedSeries = v53;

    v32->_goalType = type;
    objc_storeStrong(&v32->_goal, goal);
    objc_storeStrong(&v32->_quantityTypesIncludedWhilePaused, paused);
  }

  return v32;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v256 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  transactionCopy = transaction;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if (!isAppleWatch)
  {
LABEL_7:
    v11 = [(HDDataEntity *)HDWorkoutEntity objectWithUUID:self->_identifier encodingOptions:0 profile:profileCopy error:error];
    if (v11)
    {
      LOBYTE(v14) = 1;
      goto LABEL_134;
    }

    identifier = self->_identifier;
    v209 = 0;
    v183 = [HDWorkoutBuilderEntity workoutBuilderEntityWithIdentifier:identifier profile:profileCopy error:&v209];
    v16 = v209;
    if (!v183)
    {
      if (v16)
      {
        v42 = v16;
      }

      else
      {
        v42 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"Unable to look up workout builder '%@' during create workout operation.", self->_identifier}];
        v43 = 0;
        if (!v42)
        {
          v181 = 0;
          LOBYTE(v14) = 0;
LABEL_133:

          v11 = 0;
          goto LABEL_134;
        }
      }

      v44 = v42;
      if (error)
      {
        v45 = v42;
        LOBYTE(v14) = 0;
        v46 = v44;
        *error = v44;
      }

      else
      {
        _HKLogDroppedError();
        LOBYTE(v14) = 0;
        v46 = v44;
      }

      v181 = v44;
LABEL_132:

      v43 = v183;
      goto LABEL_133;
    }

    v181 = v16;
    [v183 setIsFinishingBuilder];
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    dateInterval = self->_dateInterval;
    v207[0] = MEMORY[0x277D85DD0];
    v207[1] = 3221225472;
    v207[2] = __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke;
    v207[3] = &unk_27861D5D8;
    v179 = v18;
    v208 = v179;
    v205[0] = MEMORY[0x277D85DD0];
    v205[1] = 3221225472;
    v205[2] = __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke_2;
    v205[3] = &unk_27861D600;
    v180 = v17;
    v206 = v180;
    if (![v183 pruneAssociatedSamplesToDateInterval:dateInterval transaction:transactionCopy error:error zonesHandler:v207 sampleHandler:v205])
    {
      LOBYTE(v14) = 0;
LABEL_131:

      v46 = v180;
      goto LABEL_132;
    }

    v175 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activities = self->_activities;
    v204[0] = MEMORY[0x277D85DD0];
    v204[1] = 3221225472;
    v204[2] = __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke_311;
    v204[3] = &unk_27861D628;
    v204[4] = self;
    v177 = [(NSArray *)activities hk_mapToDictionary:v204];
    if ([(HDJournalableOperation *)self didJournal])
    {
      allQuantityTypes = [(HDWorkoutBuilderStatisticsCalculators *)self->_statisticsCalculators allQuantityTypes];
      v191 = v183;
      v189 = transactionCopy;
      v22 = profileCopy;
      v245 = 0u;
      v246 = 0u;
      v247 = 0u;
      v248 = 0u;
      obj = allQuantityTypes;
      v23 = [allQuantityTypes countByEnumeratingWithState:&v245 objects:buf count:16];
      if (v23)
      {
        v24 = *v246;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v246 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v245 + 1) + 8 * i);
            startDate = [(NSDateInterval *)self->_dateInterval startDate];
            endDate = [(NSDateInterval *)self->_dateInterval endDate];
            *&v227 = 0;
            v241[0] = MEMORY[0x277D85DD0];
            v241[1] = 3221225472;
            v241[2] = __96__HDCreateWorkoutOperation__associateSamplesForQuantityTypes_builderEntity_transaction_profile___block_invoke;
            v241[3] = &unk_27861D6C0;
            v242 = v191;
            v243 = v189;
            v244 = v26;
            v29 = [HDWorkoutUtilities enumerateQuantitiesOfType:v26 from:startDate to:endDate transaction:v243 profile:v22 error:&v227 handler:v241];
            v30 = v227;

            if (!v29)
            {
              _HKInitializeLogging();
              v31 = *MEMORY[0x277CCC330];
              if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
              {
                *v234 = 138543874;
                selfCopy = self;
                v236 = 2114;
                v237 = v26;
                v238 = 2114;
                v239 = v30;
                _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "%{public}@: Failed to enumerate samples of type %{public}@: %{public}@", v234, 0x20u);
              }
            }
          }

          v23 = [obj countByEnumeratingWithState:&v245 objects:buf count:16];
        }

        while (v23);
      }
    }

    statisticsCalculators = self->_statisticsCalculators;
    v198[0] = MEMORY[0x277D85DD0];
    v198[1] = 3221225472;
    v198[2] = __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke_2_313;
    v198[3] = &unk_27861D650;
    v33 = profileCopy;
    v199 = v33;
    v158 = v183;
    v200 = v158;
    selfCopy2 = self;
    v178 = v177;
    v202 = v178;
    v173 = v175;
    v203 = v173;
    [(HDWorkoutBuilderStatisticsCalculators *)statisticsCalculators enumerateCalculatorsWithHandler:v198];
    events = self->_events;
    v197[0] = MEMORY[0x277D85DD0];
    v197[1] = 3221225472;
    v197[2] = __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke_318;
    v197[3] = &unk_27861D678;
    v197[4] = self;
    v176 = [(NSArray *)events hk_filter:v197];
    allValues = [v178 allValues];
    v174 = [allValues sortedArrayUsingComparator:&__block_literal_global_74];

    v36 = MEMORY[0x277CCDBE8];
    activityType = [(HKWorkoutConfiguration *)self->_workoutConfiguration activityType];
    startDate2 = [(NSDateInterval *)self->_dateInterval startDate];
    endDate2 = [(NSDateInterval *)self->_dateInterval endDate];
    v192 = [v36 _workoutWithActivityType:activityType startDate:startDate2 endDate:endDate2 workoutEvents:v176 workoutActivities:v174 duration:v173 statistics:0.0 goalType:self->_goalType goal:self->_goal device:self->_device metadata:self->_metadata];

    [v192 _setUUID:self->_identifier];
    sourceManager = [v33 sourceManager];
    v190 = [sourceManager sourceEntityForClientSource:self->_source createOrUpdateIfNecessary:0 error:error];

    if (!v190)
    {
      goto LABEL_26;
    }

    if (self->_device)
    {
      deviceManager = [v33 deviceManager];
      v168 = [deviceManager deviceEntityForDevice:self->_device error:error];

      if (!v168)
      {
LABEL_26:
        LOBYTE(v14) = 0;
LABEL_130:

        goto LABEL_131;
      }
    }

    else
    {
      v168 = 0;
    }

    dataProvenanceManager = [v33 dataProvenanceManager];
    v163 = [dataProvenanceManager localDataProvenanceForSourceEntity:v190 version:self->_sourceVersion deviceEntity:v168];

    dataManager = [v33 dataManager];
    v231 = v192;
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v231 count:1];
    v14 = [dataManager insertDataObjects:v49 withProvenance:v163 creationDate:0 skipInsertionFilter:1 updateSourceOrder:1 resolveAssociations:error error:CFAbsoluteTimeGetCurrent()];

    if (!v14)
    {
LABEL_129:

      goto LABEL_130;
    }

    v196 = 0;
    v156 = v192;
    v152 = v180;
    v193 = v33;
    v164 = transactionCopy;
    v223 = 0u;
    v224 = 0u;
    v225 = 0u;
    v226 = 0u;
    obja = self->_associatedSeries;
    v50 = [(NSArray *)obja countByEnumeratingWithState:&v223 objects:&v245 count:16];
    if (v50)
    {
      v51 = *v224;
      v52 = MEMORY[0x277CBEC10];
      while (2)
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v224 != v51)
          {
            objc_enumerationMutation(obja);
          }

          v54 = [(HDSeriesBuilderEntity *)HDWorkoutRouteBuilderEntity freezeSeriesWithIdentifier:*(*(&v223 + 1) + 8 * j) metadata:v52 profile:v193 error:&v196];
          v55 = v54 == 0;

          if (v55)
          {
            v122 = 0;
            goto LABEL_115;
          }
        }

        v50 = [(NSArray *)obja countByEnumeratingWithState:&v223 objects:&v245 count:16];
        if (v50)
        {
          continue;
        }

        break;
      }
    }

    associatedSeries = self->_associatedSeries;
    v222 = 0;
    v57 = associatedSeries;
    v58 = v193;
    v59 = self->_identifier;
    *buf = 0;
    v171 = v58;
    v60 = [HDAssociationEntity associateSampleUUIDs:v57 withSampleUUID:v59 type:0 behavior:0 destinationSubObjectReference:0 lastInsertedEntityID:buf profile:v58 error:&v222];

    v61 = v222;
    obja = v61;
    if (v60)
    {
      v220 = 0u;
      v221 = 0u;
      v218 = 0u;
      v219 = 0u;
      v151 = v152;
      v149 = [(NSArray *)v151 countByEnumeratingWithState:&v218 objects:v241 count:16];
      if (v149)
      {
        v148 = *v219;
        v162 = *MEMORY[0x277CCE0E8];
        v147 = *MEMORY[0x277CCCB68];
        v146 = *MEMORY[0x277CCCCD8];
        v153 = *MEMORY[0x277CCE160];
        while (2)
        {
          v62 = 0;
          do
          {
            if (*v219 != v148)
            {
              v63 = v62;
              objc_enumerationMutation(v151);
              v62 = v63;
            }

            v150 = v62;
            v64 = *(*(&v218 + 1) + 8 * v62);
            unsignedIntegerValue = [v64 unsignedIntegerValue];
            if (unsignedIntegerValue == 1)
            {
              metadata = [(NSArray *)v156 metadata];
              v160 = [metadata objectForKeyedSubscript:v162];

              v155 = [HDMetadataValueStatement metadataValueStatementWithTransaction:v164];
              v71 = MEMORY[0x277D10B20];
              v72 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v147];
              v73 = HDSampleEntityPredicateForDataType(v72);
              v240[0] = v73;
              v74 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v146];
              v75 = HDSampleEntityPredicateForDataType(v74);
              v240[1] = v75;
              v76 = [MEMORY[0x277CBEA60] arrayWithObjects:v240 count:2];
              v159 = [v71 predicateMatchingAnyPredicates:v76];

              v77 = [(NSArray *)v151 objectForKeyedSubscript:v64];
              _HKInitializeLogging();
              v78 = *MEMORY[0x277CCC330];
              if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
              {
                v79 = v78;
                v80 = [v77 count];
                *buf = 138543618;
                *&buf[4] = self;
                v250 = 2048;
                v251 = v80;
                _os_log_impl(&dword_228986000, v79, OS_LOG_TYPE_DEFAULT, "%{public}@: Pending workout has %lu loose associations", buf, 0x16u);
              }

              v215 = 0u;
              v216 = 0u;
              v213 = 0u;
              v214 = 0u;
              v154 = v77;
              v161 = [v154 countByEnumeratingWithState:&v213 objects:v234 count:16];
              if (v161)
              {
                v157 = *v214;
                while (2)
                {
                  v81 = 0;
                  do
                  {
                    if (*v214 != v157)
                    {
                      v82 = v81;
                      objc_enumerationMutation(v154);
                      v81 = v82;
                    }

                    v169 = v81;
                    v83 = MEMORY[0x277D10B20];
                    v166 = *(*(&v213 + 1) + 8 * v81);
                    v84 = HDDataEntityPredicateForRowID(v166, 1);
                    v233[0] = v84;
                    v233[1] = v159;
                    metadataManager = [v171 metadataManager];
                    v86 = [metadataManager predicateWithMetadataKey:v162 value:v160 operatorType:4];
                    v233[2] = v86;
                    v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v233 count:3];
                    v182 = [v83 predicateMatchingAllPredicates:v87];

                    v88 = [v164 databaseForEntityClass:objc_opt_class()];
                    v212 = 0;
                    v172 = [(HDDataEntity *)HDSampleEntity anyInDatabase:v88 predicate:v182 error:&v212];
                    v170 = v212;

                    if (v172)
                    {
                      metadataManager2 = [v171 metadataManager];
                      unsignedIntValue = [v166 unsignedIntValue];
                      v211 = 0;
                      v167 = [metadataManager2 metadataForObjectID:unsignedIntValue baseMetadata:0 keyFilter:0 statement:v155 error:&v211];
                      v91 = v211;

                      if (v91)
                      {
                        _HKInitializeLogging();
                        v127 = *MEMORY[0x277CCC330];
                        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138543874;
                          *&buf[4] = self;
                          v250 = 2112;
                          v251 = v166;
                          v252 = 2112;
                          v253 = v91;
                          _os_log_error_impl(&dword_228986000, v127, OS_LOG_TYPE_ERROR, "%{public}@ Error retrieving metadata on effort sample:%@, error:%@", buf, 0x20u);
                        }

                        v128 = v91;
                        v122 = 0;
                        v196 = v91;
                        v93 = v167;
                        v167 = v91;
                        goto LABEL_111;
                      }

                      v92 = [v167 objectForKey:v153];
                      v165 = v92;
                      if (v92)
                      {
                        v93 = v92;
                        v94 = v156;
                        v227 = 0u;
                        v228 = 0u;
                        v229 = 0u;
                        v230 = 0u;
                        _subActivities = [(NSArray *)v94 _subActivities];
                        v96 = [_subActivities countByEnumeratingWithState:&v227 objects:buf count:16];
                        if (v96)
                        {
                          v97 = *v228;
                          while (2)
                          {
                            for (k = 0; k != v96; ++k)
                            {
                              if (*v228 != v97)
                              {
                                objc_enumerationMutation(_subActivities);
                              }

                              v99 = *(*(&v227 + 1) + 8 * k);
                              uUID = [v99 UUID];
                              uUIDString = [uUID UUIDString];
                              v102 = [uUIDString isEqual:v93];

                              if (v102)
                              {
                                uUID2 = [v99 UUID];

                                goto LABEL_81;
                              }
                            }

                            v96 = [_subActivities countByEnumeratingWithState:&v227 objects:buf count:16];
                            if (v96)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        metadata2 = [(NSArray *)v94 metadata];
                        v104 = [metadata2 objectForKeyedSubscript:v162];
                        v105 = [v93 isEqual:v104];

                        if (v105)
                        {
                          uUID2 = [(NSArray *)v94 UUID];
                        }

                        else
                        {
                          uUID2 = 0;
                        }

LABEL_81:

                        if (uUID2)
                        {
                          uUID3 = [(NSArray *)v94 UUID];
                          if ([uUID2 isEqual:uUID3])
                          {
                            v112 = 0;
                          }

                          else
                          {
                            v112 = uUID2;
                          }

                          v113 = v112;

                          v114 = [[HDAssociatableObjectReference alloc] initWithUUID:v113 objectClass:objc_opt_class()];
                          v115 = self->_identifier;
                          v232 = v166;
                          v116 = [MEMORY[0x277CBEA60] arrayWithObjects:&v232 count:1];
                          currentSyncIdentityPersistentID = [v171 currentSyncIdentityPersistentID];
                          v210 = 0;
                          v118 = [HDAssociationEntity bulkInsertAssociationsWithParentUUID:v115 childIDs:v116 type:1 behavior:0 destinationSubObjectReference:v114 syncIdentity:currentSyncIdentityPersistentID profile:v171 error:&v210];
                          v119 = v210;

                          if (!v118)
                          {
                            v129 = v119;
                            v130 = v129;
                            v122 = v129 == 0;
                            if (v129)
                            {
                              v131 = v129;
                              v196 = v130;
                            }

LABEL_111:
                            v132 = v155;
                            goto LABEL_112;
                          }
                        }

                        else
                        {
                          _HKInitializeLogging();
                          v120 = *MEMORY[0x277CCC330];
                          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138544130;
                            *&buf[4] = self;
                            v250 = 2112;
                            v251 = v153;
                            v252 = 2112;
                            v253 = 0;
                            v254 = 2112;
                            v255 = v156;
                            _os_log_error_impl(&dword_228986000, v120, OS_LOG_TYPE_ERROR, "%{public}@, Effort samples <%@: %@>, does not match any activity UUID on workout:%@", buf, 0x2Au);
                          }
                        }
                      }

                      else
                      {
                        _HKInitializeLogging();
                        v110 = *MEMORY[0x277CCC330];
                        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138543874;
                          *&buf[4] = self;
                          v250 = 2112;
                          v251 = v153;
                          v252 = 2112;
                          v253 = v156;
                          _os_log_error_impl(&dword_228986000, v110, OS_LOG_TYPE_ERROR, "%{public}@, Effort sample is missing %@, skipping association to workout:%@", buf, 0x20u);
                        }
                      }
                    }

                    else
                    {
                      _HKInitializeLogging();
                      v107 = *MEMORY[0x277CCC330];
                      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
                      {
                        v108 = v107;
                        longValue = [v166 longValue];
                        *buf = 138543618;
                        *&buf[4] = self;
                        v250 = 2048;
                        v251 = longValue;
                        _os_log_error_impl(&dword_228986000, v108, OS_LOG_TYPE_ERROR, "%{public}@: Unable to find sample at row %lu", buf, 0x16u);
                      }
                    }

                    v81 = v169 + 1;
                  }

                  while (v169 + 1 != v161);
                  v161 = [v154 countByEnumeratingWithState:&v213 objects:v234 count:16];
                  if (v161)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            else if (unsignedIntegerValue)
            {
              _HKInitializeLogging();
              v121 = *MEMORY[0x277CCC330];
              if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                *&buf[4] = self;
                _os_log_error_impl(&dword_228986000, v121, OS_LOG_TYPE_ERROR, "%{public}@: Unexpected association type. Skipping", buf, 0xCu);
              }
            }

            else
            {
              v66 = self->_identifier;
              v67 = [(NSArray *)v151 objectForKeyedSubscript:v64];
              currentSyncIdentityPersistentID2 = [v171 currentSyncIdentityPersistentID];
              v217 = 0;
              LOBYTE(v66) = [HDAssociationEntity bulkInsertAssociationsWithParentUUID:v66 childIDs:v67 type:0 behavior:0 destinationSubObjectReference:0 syncIdentity:currentSyncIdentityPersistentID2 profile:v171 error:&v217];
              v69 = v217;

              if ((v66 & 1) == 0)
              {
                v143 = v69;
                if (v143)
                {
                  v144 = v143;
                  v145 = v143;
                  v122 = 0;
                  v132 = v144;
                  v196 = v144;
                  v160 = v144;
                }

                else
                {
                  v132 = 0;
                  v160 = 0;
                  v122 = 1;
                }

LABEL_112:

                goto LABEL_113;
              }
            }

            v62 = v150 + 1;
          }

          while (v150 + 1 != v149);
          v149 = [(NSArray *)v151 countByEnumeratingWithState:&v218 objects:v241 count:16];
          v122 = 1;
          if (v149)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v122 = 1;
      }

LABEL_113:
      v126 = v151;
    }

    else
    {
      v123 = v61;
      if (v123)
      {
        v124 = v123;
        v125 = v123;
        v122 = 0;
        v126 = v124;
        v196 = v124;
      }

      else
      {
        v126 = 0;
        v122 = 1;
      }
    }

LABEL_115:
    v133 = v196;
    v134 = v133;
    if (v122)
    {
      [v164 onCommit:&__block_literal_global_330 orRollback:0];
      v135 = [(HDDataEntity *)HDWorkoutEntity objectWithUUID:self->_identifier encodingOptions:0 profile:v193 error:error];
      createdWorkout = self->_createdWorkout;
      self->_createdWorkout = v135;

      if (!self->_createdWorkout)
      {
        LOBYTE(v14) = 0;
LABEL_128:

        goto LABEL_129;
      }

      v195 = 0;
      v137 = [v158 dropFinalTemporaryTableWithTransaction:v164 error:&v195];
      v138 = v195;
      if ((v137 & 1) == 0)
      {
        _HKInitializeLogging();
        v139 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = self;
          _os_log_error_impl(&dword_228986000, v139, OS_LOG_TYPE_ERROR, "%{public}@: Failed to drop final temporary table", buf, 0xCu);
        }
      }

      LOBYTE(v14) = [HDWorkoutBuilderEntity discardBuilderWithIdentifier:self->_identifier profile:v193 error:error];
    }

    else
    {
      v140 = v133;
      v138 = v140;
      if (v140)
      {
        if (error)
        {
          v141 = v140;
          LOBYTE(v14) = 0;
          *error = v138;
        }

        else
        {
          _HKLogDroppedError();
          LOBYTE(v14) = 0;
        }
      }

      else
      {
        LOBYTE(v14) = 1;
      }
    }

    goto LABEL_128;
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v11 = [currentCalendar hk_startOfDateBySubtractingDays:*MEMORY[0x277CCCEE8] fromDate:date];

  endDate3 = [(NSDateInterval *)self->_dateInterval endDate];
  LODWORD(date) = [endDate3 hk_isBeforeDate:v11];

  if (!date)
  {

    goto LABEL_7;
  }

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "Attempting to save a workout which is older than the standard data availability on Watch. Discarding builder", buf, 2u);
  }

  LOBYTE(v14) = [HDWorkoutBuilderEntity discardBuilderWithIdentifier:self->_identifier profile:profileCopy error:error];
LABEL_134:

  return v14;
}

void __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 304 || a2 == 298)
  {
    v5 = (a1 + 32);
    v4 = *(a1 + 32);
    v6 = &unk_283CB0BB8;
  }

  else
  {
    v5 = (a1 + 32);
    v4 = *(a1 + 32);
    v6 = &unk_283CB0BD0;
  }

  v7 = [v4 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [*v5 setObject:v8 forKeyedSubscript:v6];
  }

  v10 = [*v5 objectForKeyedSubscript:v6];
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  [v10 addObject:v9];
}

void __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke_311(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v9 endDate];

  if (!v6)
  {
    v7 = [*(*(a1 + 32) + 32) endDate];
    [v9 _setEndDate:v7];
  }

  v8 = [v9 UUID];
  v5[2](v5, v8, v9);
}

uint64_t __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke_2_313(uint64_t a1, void *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [[HDWorkoutBuilderStatisticsDataSource alloc] initWithProfile:*(a1 + 32) quantityType:v8 builderEntity:*(a1 + 40)];
  v11 = [[HDStatisticsCollectionCalculatorDefaultSourceOrderProvider alloc] initWithProfile:*(a1 + 32) quantityType:v8];
  [v7 setDataSource:v10];
  [v7 setSourceOrderProvider:v11];
  if ([v9 isEqual:*(*(a1 + 48) + 24)])
  {
    [v7 setDateInterval:*(*(a1 + 48) + 32)];
  }

  else
  {
    v12 = v10;
    v13 = [*(a1 + 56) objectForKeyedSubscript:v9];
    v14 = v13;
    if (!v13 || ([v13 endDate], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "startDate"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "hk_isAfterDate:", v16), v16, v15, !v17))
    {

      v10 = v12;
      goto LABEL_20;
    }

    v18 = objc_alloc(MEMORY[0x277CCA970]);
    v19 = [v14 startDate];
    v20 = [v14 endDate];
    v21 = [v18 initWithStartDate:v19 endDate:v20];
    [v7 setDateInterval:v21];

    v10 = v12;
  }

  if (([*(*(a1 + 48) + 128) containsObject:v8] & 1) == 0)
  {
    v22 = _HKPausedIntervalsWithWorkoutEvents();
    v33 = 0;
    v23 = [v7 setMaskedIntervals:v22 error:&v33];
    v24 = v33;
    if ((v23 & 1) == 0)
    {
      _HKInitializeLogging();
      v25 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v35 = v8;
        v36 = 2114;
        v37 = v24;
        _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "Failed to set mask interval for %{public}@ at workout end; will fall back on existing statistics: %{public}@", buf, 0x16u);
      }
    }
  }

  v32 = 0;
  v26 = [v7 invalidateInterval:0 error:&v32];
  v27 = v32;
  if ((v26 & 1) == 0)
  {
    _HKInitializeLogging();
    v28 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v35 = v8;
      v36 = 2114;
      v37 = v27;
      _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "Failed to update statistics for %{public}@ at workout end; will fall back on existing statistics: %{public}@", buf, 0x16u);
    }
  }

  v29 = [v7 currentStatistics];
  if (v29)
  {
    if ([v9 isEqual:*(*(a1 + 48) + 24)])
    {
      [*(a1 + 64) setObject:v29 forKeyedSubscript:v8];
    }

    else
    {
      v30 = [*(a1 + 56) objectForKeyedSubscript:v9];
      [v30 _setStatistics:v29 forType:v8];
    }
  }

LABEL_20:
  return 1;
}

uint64_t __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke_318(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v5 = [v3 dateInterval];
  v6 = [v5 startDate];
  if ([v4 containsDate:v6])
  {
    v7 = *(*(a1 + 32) + 32);
    v8 = [v3 dateInterval];
    v9 = [v8 endDate];
    v10 = [v7 containsDate:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke_2_320(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

void __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke_327()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"HDHealthStoreServerDidAssociateWorkoutSamples" object:0];
}

void __96__HDCreateWorkoutOperation__associateSamplesForQuantityTypes_builderEntity_transaction_profile___block_invoke(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v4 = a2;
  v5 = [v4 hdw_sample];
  v6 = [v4 hdw_type];
  v7 = [v6 code];
  [v4 hdw_startTimestamp];
  v9 = v8;

  v10 = a1[5];
  v15 = 0;
  v11 = [v3 associateObject:v5 code:v7 timestamp:v10 transaction:&v15 error:v9];
  v12 = v15;

  if (!v11)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v14 = a1[6];
      *buf = 138543618;
      v17 = v14;
      v18 = 2114;
      v19 = v12;
      _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "Failed to associate quantity with type %{public}@ and error: %{public}@", buf, 0x16u);
    }
  }
}

- (HDCreateWorkoutOperation)initWithCoder:(id)coder
{
  v45[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v42.receiver = self;
  v42.super_class = HDCreateWorkoutOperation;
  v5 = [(HDJournalableOperation *)&v42 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workout_configuration"];
    workoutConfiguration = v5->_workoutConfiguration;
    v5->_workoutConfiguration = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date_interval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v10;

    hk_secureCodingClasses = [MEMORY[0x277CBEAC0] hk_secureCodingClasses];
    v13 = [coderCopy decodeObjectOfClasses:hk_secureCodingClasses forKey:@"metadata"];
    hk_replaceKeysFromSharedStringCache = [v13 hk_replaceKeysFromSharedStringCache];
    metadata = v5->_metadata;
    v5->_metadata = hk_replaceKeysFromSharedStringCache;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"device"];
    device = v5->_device;
    v5->_device = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    source = v5->_source;
    v5->_source = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source_version"];
    sourceVersion = v5->_sourceVersion;
    v5->_sourceVersion = v20;

    v22 = MEMORY[0x277CBEB98];
    v45[0] = objc_opt_class();
    v45[1] = objc_opt_class();
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
    v24 = [v22 setWithArray:v23];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"events"];
    events = v5->_events;
    v5->_events = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"calculators"];
    statisticsCalculators = v5->_statisticsCalculators;
    v5->_statisticsCalculators = v27;

    v5->_goalType = [coderCopy decodeIntegerForKey:@"goal_type"];
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"goal"];
    goal = v5->_goal;
    v5->_goal = v29;

    v31 = MEMORY[0x277CBEB98];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v33 = [v31 setWithArray:v32];

    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"activities"];
    activities = v5->_activities;
    v5->_activities = v34;

    v36 = MEMORY[0x277CBEB98];
    v43[0] = objc_opt_class();
    v43[1] = objc_opt_class();
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v38 = [v36 setWithArray:v37];

    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"zones"];
    zones = v5->_zones;
    v5->_zones = v39;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HDCreateWorkoutOperation;
  coderCopy = coder;
  [(HDJournalableOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_workoutConfiguration forKey:{@"workout_configuration", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"date_interval"];
  [coderCopy encodeObject:self->_metadata forKey:@"metadata"];
  [coderCopy encodeObject:self->_device forKey:@"device"];
  [coderCopy encodeObject:self->_source forKey:@"source"];
  [coderCopy encodeObject:self->_sourceVersion forKey:@"source_version"];
  [coderCopy encodeObject:self->_events forKey:@"events"];
  [coderCopy encodeObject:self->_statisticsCalculators forKey:@"calculators"];
  [coderCopy encodeInteger:self->_goalType forKey:@"goal_type"];
  [coderCopy encodeObject:self->_goal forKey:@"goal"];
  [coderCopy encodeObject:self->_activities forKey:@"activities"];
  [coderCopy encodeObject:self->_zones forKey:@"zones"];
}

@end