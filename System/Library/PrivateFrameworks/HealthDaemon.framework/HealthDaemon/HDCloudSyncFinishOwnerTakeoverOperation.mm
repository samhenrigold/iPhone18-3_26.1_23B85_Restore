@interface HDCloudSyncFinishOwnerTakeoverOperation
+ (id)operationTagDependencies;
- (void)main;
@end

@implementation HDCloudSyncFinishOwnerTakeoverOperation

+ (id)operationTagDependencies
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"compute-push-targets";
  v4[1] = @"compute-pull-targets";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (void)main
{
  v265 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D10BB0]);
  taskGroup = self->_taskGroup;
  self->_taskGroup = v3;

  [(HDSynchronousTaskGroup *)self->_taskGroup setDelegate:self];
  configuration = [(HDCloudSyncOperation *)self configuration];
  computedState = [configuration computedState];
  pushTargets = [computedState pushTargets];
  v8 = [pushTargets count];

  selfCopy = self;
  if (!v8)
  {

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
    return;
  }

  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration2 repository];
  syncIdentityManager = [repository syncIdentityManager];
  currentSyncIdentity = [syncIdentityManager currentSyncIdentity];
  identity = [currentSyncIdentity identity];

  configuration3 = [(HDCloudSyncOperation *)self configuration];
  computedState2 = [configuration3 computedState];
  targets = [computedState2 targets];
  v227[0] = MEMORY[0x277D85DD0];
  v227[1] = 3221225472;
  v227[2] = __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke;
  v227[3] = &unk_2786210A0;
  v227[4] = self;
  v17 = identity;
  v228 = v17;
  v18 = [targets hk_filter:v227];

  configuration4 = [(HDCloudSyncOperation *)self configuration];
  computedState3 = [configuration4 computedState];
  targets2 = [computedState3 targets];
  v225[0] = MEMORY[0x277D85DD0];
  v225[1] = 3221225472;
  v225[2] = __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke_2;
  v225[3] = &unk_2786210A0;
  v225[4] = self;
  v181 = v17;
  v226 = v181;
  v182 = [targets2 hk_filter:v225];

  if (![v18 count] && !objc_msgSend(v182, "count"))
  {
    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
    goto LABEL_106;
  }

  v180 = v18;
  v22 = v18;
  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v251 = 0u;
  v252 = 0u;
  v253 = 0u;
  v254 = 0u;
  obj = v22;
  v25 = [obj countByEnumeratingWithState:&v251 objects:buf count:16];
  if (!v25)
  {
    goto LABEL_20;
  }

  v26 = v25;
  v27 = *v252;
  v196 = v24;
  do
  {
    for (i = 0; i != v26; ++i)
    {
      if (*v252 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v29 = *(*(&v251 + 1) + 8 * i);
      storeRecord = [v29 storeRecord];
      syncIdentity = [storeRecord syncIdentity];
      v32 = [v23 objectForKeyedSubscript:syncIdentity];

      storeRecord2 = [v29 storeRecord];
      syncIdentity2 = [storeRecord2 syncIdentity];
      v35 = [v24 objectForKeyedSubscript:syncIdentity2];

      if (v32)
      {
        if (v35)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
        storeRecord3 = [v29 storeRecord];
        syncIdentity3 = [storeRecord3 syncIdentity];
        [v23 setObject:v32 forKeyedSubscript:syncIdentity3];

        if (v35)
        {
          goto LABEL_11;
        }
      }

      v35 = objc_alloc_init(MEMORY[0x277CBEB58]);
      storeRecord4 = [v29 storeRecord];
      syncIdentity4 = [storeRecord4 syncIdentity];
      [v24 setObject:v35 forKeyedSubscript:syncIdentity4];

LABEL_11:
      storeRecord5 = [v29 storeRecord];
      activeSequenceHeaderRecord = [storeRecord5 activeSequenceHeaderRecord];

      if (activeSequenceHeaderRecord)
      {
        includedSyncIdentities = [activeSequenceHeaderRecord includedSyncIdentities];
        allObjects = [includedSyncIdentities allObjects];
        [v32 addObjectsFromArray:allObjects];

        includedIdentifiers = [activeSequenceHeaderRecord includedIdentifiers];
        allObjects2 = [includedIdentifiers allObjects];
        [v35 addObjectsFromArray:allObjects2];
      }

      else
      {
        storeRecord6 = [v29 storeRecord];
        includedIdentifiers = [storeRecord6 currentSequenceHeaderRecord];

        if (!includedIdentifiers)
        {
          goto LABEL_18;
        }

        includedSyncIdentities2 = [includedIdentifiers includedSyncIdentities];
        [includedSyncIdentities2 allObjects];
        v48 = v26;
        v49 = v27;
        v51 = v50 = v23;
        [v32 addObjectsFromArray:v51];

        allObjects2 = [includedIdentifiers includedIdentifiers];
        v41AllObjects = [allObjects2 allObjects];
        [v35 addObjectsFromArray:v41AllObjects];

        v23 = v50;
        v27 = v49;
        v26 = v48;
        v24 = v196;
      }

LABEL_18:
    }

    v26 = [obj countByEnumeratingWithState:&v251 objects:buf count:16];
  }

  while (v26);
LABEL_20:

  v53 = v182;
  v54 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v251 = 0u;
  v252 = 0u;
  v253 = 0u;
  v254 = 0u;
  v190 = v53;
  v55 = [v190 countByEnumeratingWithState:&v251 objects:buf count:16];
  if (!v55)
  {
    goto LABEL_34;
  }

  v56 = v55;
  v57 = *v252;
  while (2)
  {
    v58 = 0;
    while (2)
    {
      if (*v252 != v57)
      {
        objc_enumerationMutation(v190);
      }

      v59 = *(*(&v251 + 1) + 8 * v58);
      storeRecord7 = [v59 storeRecord];
      ownerIdentifier = [storeRecord7 ownerIdentifier];
      v62 = [v54 objectForKeyedSubscript:ownerIdentifier];

      if (!v62)
      {
        v62 = objc_alloc_init(MEMORY[0x277CBEB58]);
        storeRecord8 = [v59 storeRecord];
        ownerIdentifier2 = [storeRecord8 ownerIdentifier];
        [v54 setObject:v62 forKeyedSubscript:ownerIdentifier2];
      }

      storeRecord9 = [v59 storeRecord];
      activeSequenceHeaderRecord2 = [storeRecord9 activeSequenceHeaderRecord];

      if (activeSequenceHeaderRecord2)
      {
        includedIdentifiers2 = [activeSequenceHeaderRecord2 includedIdentifiers];
        allObjects3 = [includedIdentifiers2 allObjects];
        [v62 addObjectsFromArray:allObjects3];
        goto LABEL_31;
      }

      storeRecord10 = [v59 storeRecord];
      includedIdentifiers2 = [storeRecord10 currentSequenceHeaderRecord];

      if (includedIdentifiers2)
      {
        allObjects3 = [includedIdentifiers2 includedIdentifiers];
        v68AllObjects = [allObjects3 allObjects];
        [v62 addObjectsFromArray:v68AllObjects];

LABEL_31:
      }

      if (v56 != ++v58)
      {
        continue;
      }

      break;
    }

    v56 = [v190 countByEnumeratingWithState:&v251 objects:buf count:16];
    if (v56)
    {
      continue;
    }

    break;
  }

LABEL_34:

  _HKInitializeLogging();
  v71 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v72 = v71;
    v73 = [v54 count];
    v74 = [v23 count];
    *buf = 138543874;
    v256 = selfCopy;
    v257 = 2048;
    *v258 = v73;
    *&v258[8] = 2048;
    *&v258[10] = v74;
    _os_log_impl(&dword_228986000, v72, OS_LOG_TYPE_DEFAULT, "%{public}@: Considering finishing takeover for %ld owners and %ld identities:", buf, 0x20u);
  }

  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  v197 = v23;
  v75 = [v197 countByEnumeratingWithState:&v221 objects:v250 count:16];
  if (v75)
  {
    v76 = v75;
    v77 = 0;
    v78 = *v222;
    do
    {
      v79 = 0;
      v189 = v76;
      do
      {
        if (*v222 != v78)
        {
          objc_enumerationMutation(v197);
        }

        v80 = *(*(&v221 + 1) + 8 * v79);
        _HKInitializeLogging();
        v81 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v82 = v81;
          v83 = [v197 objectForKeyedSubscript:v80];
          allObjects4 = [v83 allObjects];
          v85 = [allObjects4 componentsJoinedByString:{@", "}];
          *buf = 138544130;
          v256 = selfCopy;
          v257 = 1024;
          *v258 = v77;
          *&v258[4] = 2112;
          *&v258[6] = v80;
          *&v258[14] = 2112;
          *&v258[16] = v85;
          _os_log_impl(&dword_228986000, v82, OS_LOG_TYPE_DEFAULT, "%{public}@: %d. %@ (%@)", buf, 0x26u);

          ++v77;
          v76 = v189;
        }

        ++v79;
      }

      while (v76 != v79);
      v76 = [v197 countByEnumeratingWithState:&v221 objects:v250 count:16];
    }

    while (v76);
  }

  v219 = 0u;
  v220 = 0u;
  v217 = 0u;
  v218 = 0u;
  v86 = v54;
  v87 = [v86 countByEnumeratingWithState:&v217 objects:v249 count:16];
  if (v87)
  {
    v88 = v87;
    v89 = 0;
    v90 = *v218;
    do
    {
      for (j = 0; j != v88; ++j)
      {
        if (*v218 != v90)
        {
          objc_enumerationMutation(v86);
        }

        v92 = *(*(&v217 + 1) + 8 * j);
        _HKInitializeLogging();
        v93 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v94 = v89 + 1;
          v95 = v93;
          v96 = [v86 objectForKeyedSubscript:v92];
          allObjects5 = [v96 allObjects];
          v98 = [allObjects5 componentsJoinedByString:{@", "}];
          v99 = v89;
          v100 = v90;
          v101 = v86;
          v102 = v98;
          *buf = 138544130;
          v256 = selfCopy;
          v257 = 1024;
          *v258 = v99;
          *&v258[4] = 2112;
          *&v258[6] = v92;
          *&v258[14] = 2112;
          *&v258[16] = v98;
          _os_log_impl(&dword_228986000, v95, OS_LOG_TYPE_DEFAULT, "%{public}@: %d. %@ (%@)", buf, 0x26u);

          v86 = v101;
          v90 = v100;

          v89 = v94;
        }
      }

      v88 = [v86 countByEnumeratingWithState:&v217 objects:v249 count:16];
    }

    while (v88);
  }

  allKeys = [v197 allKeys];
  v214[0] = MEMORY[0x277D85DD0];
  v214[1] = 3221225472;
  v214[2] = __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke_297;
  v214[3] = &unk_2786210C8;
  v179 = v197;
  v215 = v179;
  v216 = selfCopy;
  v104 = [allKeys hk_mapToSet:v214];

  allKeys2 = [v86 allKeys];
  v211[0] = MEMORY[0x277D85DD0];
  v211[1] = 3221225472;
  v211[2] = __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke_2_299;
  v211[3] = &unk_2786210F0;
  v106 = v86;
  v212 = v106;
  v213 = selfCopy;
  v107 = [allKeys2 hk_mapToSet:v211];

  if ([v104 count] || objc_msgSend(v107, "count"))
  {
    v177 = v106;
    v178 = v104;
    v209[0] = MEMORY[0x277D85DD0];
    v209[1] = 3221225472;
    v209[2] = __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke_301;
    v209[3] = &unk_278614BF0;
    v210 = v104;
    v108 = [obj hk_filter:v209];
    v207[0] = MEMORY[0x277D85DD0];
    v207[1] = 3221225472;
    v207[2] = __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke_2_302;
    v207[3] = &unk_278614BF0;
    v208 = v107;
    v109 = [v190 hk_filter:v207];
    _HKInitializeLogging();
    v110 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v111 = v110;
      v112 = [v108 count];
      v113 = [v109 count];
      *buf = 138543874;
      v256 = selfCopy;
      v257 = 2048;
      *v258 = v112;
      *&v258[8] = 2048;
      *&v258[10] = v113;
      _os_log_impl(&dword_228986000, v111, OS_LOG_TYPE_DEFAULT, "%{public}@: Proceeding with takeover (Deletion) for %ld owners and %ld identities:", buf, 0x20u);
    }

    obja = v109;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v185 = v108;
    v114 = [v185 countByEnumeratingWithState:&v203 objects:v248 count:16];
    v176 = v107;
    if (v114)
    {
      v115 = v114;
      v116 = 0;
      v117 = *v204;
      do
      {
        for (k = 0; k != v115; ++k)
        {
          if (*v204 != v117)
          {
            objc_enumerationMutation(v185);
          }

          v119 = *(*(&v203 + 1) + 8 * k);
          _HKInitializeLogging();
          v120 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v121 = v120;
            storeRecord11 = [v119 storeRecord];
            syncIdentity5 = [storeRecord11 syncIdentity];
            *buf = 138543874;
            v256 = selfCopy;
            v257 = 1024;
            *v258 = v116;
            *&v258[4] = 2112;
            *&v258[6] = syncIdentity5;
            _os_log_impl(&dword_228986000, v121, OS_LOG_TYPE_DEFAULT, "%{public}@: %d. %@", buf, 0x1Cu);

            ++v116;
          }
        }

        v115 = [v185 countByEnumeratingWithState:&v203 objects:v248 count:16];
      }

      while (v115);
    }

    v201 = 0u;
    v202 = 0u;
    v199 = 0u;
    v200 = 0u;
    v184 = obja;
    v124 = [v184 countByEnumeratingWithState:&v199 objects:v247 count:16];
    if (v124)
    {
      v125 = v124;
      v126 = 0;
      v127 = *v200;
      do
      {
        for (m = 0; m != v125; ++m)
        {
          if (*v200 != v127)
          {
            objc_enumerationMutation(v184);
          }

          v129 = *(*(&v199 + 1) + 8 * m);
          _HKInitializeLogging();
          v130 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v131 = v130;
            storeRecord12 = [v129 storeRecord];
            ownerIdentifier3 = [storeRecord12 ownerIdentifier];
            *buf = 138543874;
            v256 = selfCopy;
            v257 = 1024;
            *v258 = v126;
            *&v258[4] = 2112;
            *&v258[6] = ownerIdentifier3;
            _os_log_impl(&dword_228986000, v131, OS_LOG_TYPE_DEFAULT, "%{public}@: %d. %@", buf, 0x1Cu);

            ++v126;
          }
        }

        v125 = [v184 countByEnumeratingWithState:&v199 objects:v247 count:16];
      }

      while (v125);
    }

    v187 = [v185 arrayByAddingObjectsFromArray:v184];
    v134 = selfCopy;
    [(HDSynchronousTaskGroup *)selfCopy->_taskGroup beginTask];
    v233 = 0u;
    v234 = 0u;
    v235 = 0u;
    v236 = 0u;
    configuration5 = [(HDCloudSyncOperation *)selfCopy configuration];
    repository2 = [configuration5 repository];
    allCKContainers = [repository2 allCKContainers];

    v183 = allCKContainers;
    v188 = [allCKContainers countByEnumeratingWithState:&v233 objects:buf count:16];
    if (v188)
    {
      v186 = *v234;
      do
      {
        v138 = 0;
        do
        {
          if (*v234 != v186)
          {
            objc_enumerationMutation(v183);
          }

          v191 = v138;
          v139 = *(*(&v233 + 1) + 8 * v138);
          v198 = objc_alloc_init(MEMORY[0x277CBEB18]);
          objb = objc_alloc_init(MEMORY[0x277CBEB18]);
          v229 = 0u;
          v230 = 0u;
          v231 = 0u;
          v232 = 0u;
          v140 = v187;
          v141 = [v140 countByEnumeratingWithState:&v229 objects:&v251 count:16];
          if (v141)
          {
            v142 = v141;
            v143 = *v230;
            do
            {
              for (n = 0; n != v142; ++n)
              {
                if (*v230 != v143)
                {
                  objc_enumerationMutation(v140);
                }

                v145 = *(*(&v229 + 1) + 8 * n);
                container = [v145 container];
                containerIdentifier = [container containerIdentifier];
                containerIdentifier2 = [v139 containerIdentifier];
                v149 = [containerIdentifier isEqualToString:containerIdentifier2];

                if (v149)
                {
                  zoneIdentifier = [v145 zoneIdentifier];
                  type = [zoneIdentifier type];

                  zoneIdentifier2 = [v145 zoneIdentifier];
                  storeRecord13 = zoneIdentifier2;
                  if (type == 1)
                  {
                    v152ZoneIdentifier = [zoneIdentifier2 zoneIdentifier];
                    v155 = v198;
                  }

                  else
                  {
                    type2 = [zoneIdentifier2 type];

                    if (type2 != 2)
                    {
                      continue;
                    }

                    storeRecord13 = [v145 storeRecord];
                    v152ZoneIdentifier = [storeRecord13 recordID];
                    v155 = objb;
                  }

                  [v155 addObject:v152ZoneIdentifier];
                }
              }

              v142 = [v140 countByEnumeratingWithState:&v229 objects:&v251 count:16];
            }

            while (v142);
          }

          v157 = v198;
          v158 = v139;
          v134 = selfCopy;
          if ([v157 count])
          {
            [(HDSynchronousTaskGroup *)selfCopy->_taskGroup beginTask];
            _HKInitializeLogging();
            v159 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v160 = v159;
              v161 = [v157 count];
              v162 = [v157 componentsJoinedByString:{@", "}];
              *v259 = 138543874;
              v260 = selfCopy;
              v261 = 2048;
              v262 = v161;
              v263 = 2114;
              v264 = v162;
              _os_log_impl(&dword_228986000, v160, OS_LOG_TYPE_DEFAULT, "%{public}@: Deleting %ld zones: %{public}@", v259, 0x20u);
            }

            v163 = [HDCloudSyncModifyRecordZonesOperation alloc];
            configuration6 = [(HDCloudSyncOperation *)selfCopy configuration];
            v165 = [(HDCloudSyncModifyRecordZonesOperation *)v163 initWithConfiguration:configuration6 container:v158 recordZonesToSave:0 recordZoneIDsToDelete:v157];

            v242 = MEMORY[0x277D85DD0];
            v243 = 3221225472;
            v244 = __66__HDCloudSyncFinishOwnerTakeoverOperation__deleteZones_container___block_invoke;
            v245 = &unk_278613060;
            v246 = selfCopy;
            [(HDCloudSyncOperation *)v165 setOnSuccess:&v242];
            v237 = MEMORY[0x277D85DD0];
            v238 = 3221225472;
            v239 = __66__HDCloudSyncFinishOwnerTakeoverOperation__deleteZones_container___block_invoke_2;
            v240 = &unk_278613088;
            v241 = selfCopy;
            [(HDCloudSyncOperation *)v165 setOnError:&v237];
            [(HDCloudSyncOperation *)v165 start];
          }

          v166 = objb;
          v167 = v158;
          if ([v166 count])
          {
            [(HDSynchronousTaskGroup *)selfCopy->_taskGroup beginTask];
            _HKInitializeLogging();
            v168 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v169 = v168;
              v170 = [v166 count];
              v171 = [v166 componentsJoinedByString:{@", "}];
              *v259 = 138543874;
              v260 = selfCopy;
              v261 = 2048;
              v262 = v170;
              v263 = 2114;
              v264 = v171;
              _os_log_impl(&dword_228986000, v169, OS_LOG_TYPE_DEFAULT, "%{public}@: Deleting %ld records: %{public}@", v259, 0x20u);
            }

            v172 = [HDCloudSyncModifyRecordsOperation alloc];
            configuration7 = [(HDCloudSyncOperation *)selfCopy configuration];
            v174 = [(HDCloudSyncModifyRecordsOperation *)v172 initWithConfiguration:configuration7 container:v167 recordsToSave:0 recordIDsToDelete:v166];

            v242 = MEMORY[0x277D85DD0];
            v243 = 3221225472;
            v244 = __68__HDCloudSyncFinishOwnerTakeoverOperation__deleteRecords_container___block_invoke;
            v245 = &unk_278613060;
            v246 = selfCopy;
            [(HDCloudSyncOperation *)v174 setOnSuccess:&v242];
            v237 = MEMORY[0x277D85DD0];
            v238 = 3221225472;
            v239 = __68__HDCloudSyncFinishOwnerTakeoverOperation__deleteRecords_container___block_invoke_2;
            v240 = &unk_278613088;
            v241 = selfCopy;
            [(HDCloudSyncOperation *)v174 setOnError:&v237];
            [(HDCloudSyncOperation *)v174 start];
          }

          v138 = v191 + 1;
        }

        while (v191 + 1 != v188);
        v188 = [v183 countByEnumeratingWithState:&v233 objects:buf count:16];
      }

      while (v188);
    }

    [(HDSynchronousTaskGroup *)v134->_taskGroup finishTask];
    v106 = v177;
    v104 = v178;
    v107 = v176;
  }

  else
  {
    _HKInitializeLogging();
    v175 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v256 = selfCopy;
      _os_log_impl(&dword_228986000, v175, OS_LOG_TYPE_DEFAULT, "%{public}@: Unable to finish takeover; we have not pushed all relevant sync identities or store identifiers.", buf, 0xCu);
    }

    [(HDCloudSyncOperation *)selfCopy finishWithSuccess:1 error:0];
  }

  v18 = v180;
LABEL_106:
}

uint64_t __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) configuration];
  v5 = [v4 repository];
  v6 = [v3 container];
  v7 = [v5 cachedOwnerIdentifierForContainer:v6];

  v8 = [v3 storeRecord];
  v9 = [v8 syncIdentity];
  if (v9)
  {
    v10 = [v3 storeRecord];
    v11 = [v10 pendingOwner];
    v12 = [v7 string];
    if ([v11 isEqualToString:v12])
    {
      v13 = 1;
    }

    else
    {
      v14 = [v3 storeRecord];
      v15 = [v14 pendingSyncIdentity];
      v13 = [v15 isEqual:*(a1 + 40)];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) configuration];
  v5 = [v4 repository];
  v6 = [v3 container];
  v7 = [v5 cachedOwnerIdentifierForContainer:v6];

  v8 = [v3 storeRecord];
  v9 = [v8 syncIdentity];
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [v3 storeRecord];
    v12 = [v11 pendingOwner];
    v13 = [v7 string];
    if ([v12 isEqualToString:v13])
    {
      v10 = 1;
    }

    else
    {
      v14 = [v3 storeRecord];
      v15 = [v14 pendingSyncIdentity];
      v10 = [v15 isEqual:*(a1 + 40)];
    }
  }

  return v10;
}

id __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke_297(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [*(a1 + 40) configuration];
  v6 = [v5 computedState];
  v7 = [v6 pushTargets];

  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v18 + 1) + 8 * i) storeRecord];
        v13 = [v12 activeSequenceHeaderRecord];
        v14 = [v13 includedSyncIdentities];

        if (v14)
        {
          v15 = [v4 isSubsetOfSet:v14];

          if (v15)
          {
            continue;
          }
        }

        v16 = 0;
        goto LABEL_12;
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = v3;
LABEL_12:

  return v16;
}

id __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke_2_299(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [*(a1 + 40) configuration];
  v6 = [v5 computedState];
  v7 = [v6 pushTargets];

  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v18 + 1) + 8 * i) storeRecord];
        v13 = [v12 activeSequenceHeaderRecord];
        v14 = [v13 includedIdentifiers];

        if (v14)
        {
          v15 = [v4 isSubsetOfSet:v14];

          if (v15)
          {
            continue;
          }
        }

        v16 = 0;
        goto LABEL_12;
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = v3;
LABEL_12:

  return v16;
}

uint64_t __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke_301(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 storeRecord];
  v4 = [v3 syncIdentity];
  v5 = [v2 containsObject:v4];

  return v5;
}

uint64_t __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke_2_302(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 storeRecord];
  v4 = [v3 ownerIdentifier];
  v5 = [v2 containsObject:v4];

  return v5;
}

void __66__HDCloudSyncFinishOwnerTakeoverOperation__deleteZones_container___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete zones to during takeover completion: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];
}

void __68__HDCloudSyncFinishOwnerTakeoverOperation__deleteRecords_container___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete records to during takeover completion: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];
}

@end