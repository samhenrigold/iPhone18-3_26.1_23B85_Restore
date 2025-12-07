@interface HDCloudSyncSynchronizeProfilesOperation
- (uint64_t)_synchronizeProfilesWithRegistryAndShareRecordsForContainer:(void *)container database:(void *)database error:;
- (void)main;
- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors;
@end

@implementation HDCloudSyncSynchronizeProfilesOperation

- (void)main
{
  v36 = *MEMORY[0x277D85DE8];
  profile = [(HDCloudSyncOperation *)self profile];
  daemon = [profile daemon];
  behavior = [daemon behavior];
  supportsSecondaryProfiles = [behavior supportsSecondaryProfiles];

  if (supportsSecondaryProfiles)
  {
    v7 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = self->_taskGroup;
    self->_taskGroup = v7;

    [(HDSynchronousTaskGroup *)self->_taskGroup setDelegate:self];
    [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    configuration = [(HDCloudSyncOperation *)self configuration];
    repository = [configuration repository];
    allCKContainers = [repository allCKContainers];

    obj = allCKContainers;
    v12 = [allCKContainers countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v30;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
          privateCloudDatabase = [v17 privateCloudDatabase];
          v28 = v14;
          v19 = [(HDCloudSyncSynchronizeProfilesOperation *)self _synchronizeProfilesWithRegistryAndShareRecordsForContainer:v17 database:privateCloudDatabase error:&v28];
          v20 = v28;

          v21 = self->_taskGroup;
          if (v19)
          {
            [(HDSynchronousTaskGroup *)v21 finishTask];
          }

          else
          {
            [(HDSynchronousTaskGroup *)v21 failTaskWithError:v20];
          }

          [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
          sharedCloudDatabase = [v17 sharedCloudDatabase];
          v27 = v20;
          v23 = [(HDCloudSyncSynchronizeProfilesOperation *)self _synchronizeProfilesWithRegistryAndShareRecordsForContainer:v17 database:sharedCloudDatabase error:&v27];
          v14 = v27;

          v24 = self->_taskGroup;
          if (v23)
          {
            [(HDSynchronousTaskGroup *)v24 finishTask];
          }

          else
          {
            [(HDSynchronousTaskGroup *)v24 failTaskWithError:v14];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
  }

  else
  {
    _HKInitializeLogging();
    v25 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Device ineligble for synchronizing additional profiles", buf, 0xCu);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }
}

- (uint64_t)_synchronizeProfilesWithRegistryAndShareRecordsForContainer:(void *)container database:(void *)database error:
{
  v197 = *MEMORY[0x277D85DE8];
  v6 = a2;
  containerCopy = container;
  if (!self)
  {
    databaseCopy = 0;
    goto LABEL_150;
  }

  v148 = v6;
  v8 = v6;
  v9 = containerCopy;
  selfCopy = self;
  configuration = [self configuration];
  cachedCloudState = [configuration cachedCloudState];
  containerIdentifier = [v8 containerIdentifier];
  v187[0] = 0;
  v13 = [cachedCloudState zoneIdentifiersForContainerIdentifier:containerIdentifier databaseScope:objc_msgSend(v9 error:{"databaseScope"), v187}];
  v14 = v187[0];

  if (v13 || !v14)
  {
    if (!v13)
    {
      _HKInitializeLogging();
      v39 = *MEMORY[0x277CCC328];
      v6 = v148;
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
      {
        v126 = v39;
        containerIdentifier2 = [v8 containerIdentifier];
        [v9 databaseScope];
        v128 = CKDatabaseScopeString();
        *buf = 138543874;
        *&buf[4] = selfCopy;
        *&buf[12] = 2114;
        *&buf[14] = containerIdentifier2;
        *&buf[22] = 2114;
        v189 = v128;
        _os_log_debug_impl(&dword_228986000, v126, OS_LOG_TYPE_DEBUG, "%{public}@ No zones cached for container %{public}@, database %{public}@", buf, 0x20u);

        v6 = v148;
      }

      v18 = 0;
      v17 = MEMORY[0x277CBEBF8];
      goto LABEL_10;
    }

    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __102__HDCloudSyncSynchronizeProfilesOperation__cachedZonesWithRegistryRecordsForContainer_database_error___block_invoke;
    v189 = &unk_27861EAE8;
    v190[0] = selfCopy;
    v17 = [v13 hk_map:buf];
    v18 = 0;
  }

  else
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v121 = v15;
      containerIdentifier3 = [v8 containerIdentifier];
      [v9 databaseScope];
      v123 = CKDatabaseScopeString();
      *buf = 138544130;
      *&buf[4] = selfCopy;
      *&buf[12] = 2114;
      *&buf[14] = containerIdentifier3;
      *&buf[22] = 2114;
      v189 = v123;
      LOWORD(v190[0]) = 2114;
      *(v190 + 2) = v14;
      _os_log_error_impl(&dword_228986000, v121, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get zone identifiers for container %{public}@, database %{public}@, %{public}@", buf, 0x2Au);
    }

    v16 = v14;
    v17 = 0;
    v18 = v14;
  }

  v6 = v148;
LABEL_10:

  v19 = v18;
  v147 = v17;
  if (!v17 && v19)
  {
    databaseCopy = database;
    v21 = v19;
    if (database)
    {
      databaseCopy = 0;
      *database = v19;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_149;
  }

  v143 = v19;
  if (![v17 count])
  {
    databaseCopy = 1;
    goto LABEL_148;
  }

  v22 = v17;
  v141 = v8;
  v140 = v9;
  v151 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  obj = v22;
  v23 = [obj countByEnumeratingWithState:&v175 objects:v187 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    v26 = *v176;
    do
    {
      v27 = 0;
      v28 = v25;
      do
      {
        if (*v176 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v175 + 1) + 8 * v27);
        v30 = objc_opt_class();
        v174 = v28;
        v31 = [v29 recordsForClass:v30 error:&v174];
        v32 = v174;

        v28 = v32;
        if (v31)
        {
          v33 = 1;
        }

        else
        {
          v33 = v32 == 0;
        }

        if (!v33)
        {
          _HKInitializeLogging();
          v34 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v124 = v34;
            zoneIdentifier = [v29 zoneIdentifier];
            *buf = 138543874;
            *&buf[4] = selfCopy;
            *&buf[12] = 2114;
            *&buf[14] = zoneIdentifier;
            *&buf[22] = 2114;
            v189 = v32;
            _os_log_error_impl(&dword_228986000, v124, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get registry records for %{public}@, %{public}@", buf, 0x20u);
          }

          v6 = v148;
          v36 = obj;
          if (database)
          {
            v37 = v32;
            *database = v32;
            v38 = v32;
          }

          else
          {
            v38 = v32;
            _HKLogDroppedError();
          }

          buf[0] = 0;
          v57 = obj;
          goto LABEL_147;
        }

        if (v31)
        {
          [v151 addObjectsFromArray:v31];
        }

        ++v27;
      }

      while (v24 != v27);
      v25 = v32;
      v24 = [obj countByEnumeratingWithState:&v175 objects:v187 count:16];
    }

    while (v24);
  }

  else
  {
    v25 = 0;
  }

  v135 = v25;

  _HKInitializeLogging();
  v40 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v41 = v40;
    containerIdentifier4 = [v141 containerIdentifier];
    v43 = [v151 count];
    [v140 databaseScope];
    v44 = CKDatabaseScopeString();
    *buf = 138544130;
    *&buf[4] = selfCopy;
    *&buf[12] = 2114;
    *&buf[14] = containerIdentifier4;
    *&buf[22] = 2048;
    v189 = v43;
    LOWORD(v190[0]) = 2114;
    *(v190 + 2) = v44;
    _os_log_impl(&dword_228986000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: Fetched %ld records from cache %{public}@", buf, 0x2Au);
  }

  v145 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v45 = obj;
  v46 = [v45 countByEnumeratingWithState:&v170 objects:v186 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = 0;
    v49 = *v171;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v171 != v49)
        {
          objc_enumerationMutation(v45);
        }

        v51 = *(*(&v170 + 1) + 8 * i);
        v169 = v48;
        v52 = [v51 zoneShareWithError:&v169];
        v53 = v169;

        v152 = v53;
        if (v52)
        {
          v54 = 1;
        }

        else
        {
          v54 = v53 == 0;
        }

        if (!v54)
        {
          _HKInitializeLogging();
          v55 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v129 = v55;
            zoneIdentifier2 = [v51 zoneIdentifier];
            *buf = 138543874;
            *&buf[4] = selfCopy;
            *&buf[12] = 2114;
            *&buf[14] = zoneIdentifier2;
            *&buf[22] = 2114;
            v189 = v53;
            _os_log_error_impl(&dword_228986000, v129, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get share for %{public}@, %{public}@", buf, 0x20u);
          }

          v6 = v148;
          v36 = obj;
          if (database)
          {
            *database = v53;
          }

          else
          {
            _HKLogDroppedError();
          }

          buf[0] = 0;

          goto LABEL_146;
        }

        if (v52)
        {
          [v145 addObject:v52];
        }

        v48 = v53;
      }

      v47 = [v45 countByEnumeratingWithState:&v170 objects:v186 count:16];
      v48 = v53;
    }

    while (v47);
  }

  else
  {
    v48 = 0;
  }

  v152 = v48;

  _HKInitializeLogging();
  v58 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v59 = v58;
    containerIdentifier5 = [v141 containerIdentifier];
    v61 = [v145 count];
    [v140 databaseScope];
    v62 = CKDatabaseScopeString();
    *buf = 138544130;
    *&buf[4] = selfCopy;
    *&buf[12] = 2114;
    *&buf[14] = containerIdentifier5;
    *&buf[22] = 2048;
    v189 = v61;
    LOWORD(v190[0]) = 2114;
    *(v190 + 2) = v62;
    _os_log_impl(&dword_228986000, v59, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: Fetched %ld shares from cache %{public}@", buf, 0x2Au);
  }

  v63 = v151;
  v164 = v141;
  v163 = v140;
  v162 = [v145 hk_mapToDictionary:&__block_literal_global_117];
  v157 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v64 = v63;
  v133 = 1;
  v36 = obj;
  v158 = v64;
  v166 = [v64 countByEnumeratingWithState:&v179 objects:buf count:16];
  if (!v166)
  {
    v6 = v148;
    goto LABEL_144;
  }

  v156 = 0;
  v161 = *v180;
  *&v65 = 138543618;
  v132 = v65;
  do
  {
    for (j = 0; j != v166; ++j)
    {
      if (*v180 != v161)
      {
        objc_enumerationMutation(v158);
      }

      v67 = *(*(&v179 + 1) + 8 * j);
      recordID = [v67 recordID];
      zoneID = [recordID zoneID];
      v70 = [v162 objectForKeyedSubscript:zoneID];
      v71 = v67;
      v72 = v70;
      v73 = v164;
      v74 = v163;
      v168 = v74;
      if ([v71 deleted])
      {
        v75 = 0;
        v76 = 1;
        goto LABEL_130;
      }

      v160 = recordID;
      v167 = v73;
      v77 = containerCopy;
      recordID2 = [v71 recordID];
      zoneID2 = [recordID2 zoneID];
      v184 = 0;
      v80 = [zoneID2 hd_isUnifiedSyncZoneIDForSyncCircleIdentifier:&v184];
      v81 = v184;

      v165 = v81;
      if (v80 && (![v81 isEqualToString:@"PrimarySyncCircle"] || objc_msgSend(v74, "databaseScope") != 2))
      {
        containerCopy = v77;
        v73 = v167;
        if ([v74 databaseScope] == 2)
        {
          ownerProfileIdentifier = [v71 ownerProfileIdentifier];
          if (!ownerProfileIdentifier)
          {
            goto LABEL_82;
          }
        }

        else
        {
          ownerProfileIdentifier = [v71 sharedProfileIdentifier];
          if (!ownerProfileIdentifier)
          {
LABEL_82:
            ownerProfileIdentifier = [MEMORY[0x277CCD7C8] hd_profileIdentifierWithSyncCircleIdentifier:v81];
            if (ownerProfileIdentifier)
            {
              goto LABEL_83;
            }

            v75 = 0;
            v191[0] = 1;
LABEL_101:
            v36 = obj;
LABEL_128:
            v76 = v191[0];
            goto LABEL_129;
          }
        }

LABEL_83:
        v83 = ownerProfileIdentifier;
        type = [ownerProfileIdentifier type];
        if ((type - 1) >= 4 && type != 100)
        {
          v191[0] = 1;

          v75 = 0;
          goto LABEL_101;
        }

        v154 = zoneID;
        configuration2 = [selfCopy configuration];
        repository = [configuration2 repository];
        profile = [repository profile];
        daemon = [profile daemon];
        profileManager = [daemon profileManager];

        v90 = profileManager;
        v91 = [profileManager profileForIdentifier:v83];
        v155 = v83;
        if (v91)
        {
          v75 = 0;
          v191[0] = 1;
          containerCopy = v77;
          v36 = obj;
          v73 = v167;
          zoneID = v154;
LABEL_127:

          goto LABEL_128;
        }

        displayFirstName = [v71 displayFirstName];
        v93 = displayFirstName;
        if (displayFirstName)
        {
          v94 = displayFirstName;
        }

        else
        {
          v94 = @"Auxiliary Health Store";
        }

        displayLastName = [v71 displayLastName];
        v183 = 0;
        v149 = profileManager;
        v96 = [profileManager createProfileForIdentifier:v83 firstName:v94 lastName:displayLastName error:&v183];
        v150 = v183;

        _HKInitializeLogging();
        v97 = *MEMORY[0x277CCC328];
        v98 = *MEMORY[0x277CCC328];
        if (!v96)
        {
          containerCopy = v77;
          if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
          {
            *v191 = 138543874;
            v192 = selfCopy;
            v193 = 2114;
            v194 = v165;
            v195 = 2114;
            v196 = v150;
            _os_log_error_impl(&dword_228986000, v97, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create profile for sync circle identifier %{public}@: %{public}@", v191, 0x20u);
          }

          v108 = v150;
          v75 = v108;
          v36 = obj;
          v90 = profileManager;
          if (v108)
          {
            v109 = v108;
          }

          v191[0] = v75 == 0;
          goto LABEL_125;
        }

        containerCopy = v77;
        v73 = v167;
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
        {
          *v191 = 138543874;
          v192 = selfCopy;
          v193 = 2114;
          v194 = v165;
          v195 = 2114;
          v196 = v155;
          _os_log_impl(&dword_228986000, v97, OS_LOG_TYPE_DEFAULT, "%{public}@: Created local profile for sync circle identifier %{public}@: %{public}@", v191, 0x20u);
        }

        v36 = obj;
        v90 = profileManager;
        if (([v155 type] & 0xFFFFFFFFFFFFFFFELL) != 2)
        {
          goto LABEL_119;
        }

        recordID3 = [v71 recordID];
        zoneID3 = [recordID3 zoneID];
        v144 = v96;
        v100 = v72;
        v101 = zoneID3;
        if (v100)
        {
          v139 = v100;
          owner = [v100 owner];
          if (owner)
          {
            v103 = owner;
            v138 = v101;
            cloudSyncManager = [v144 cloudSyncManager];
            v185 = 0;
            v105 = [cloudSyncManager setShareOwnerParticipant:v103 error:&v185];
            v136 = v185;

            _HKInitializeLogging();
            v106 = *MEMORY[0x277CCC328];
            v137 = v105;
            log = *MEMORY[0x277CCC328];
            if (v105)
            {
              v73 = v167;
              v107 = v136;
              if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
              {
                *v191 = v132;
                v192 = selfCopy;
                v193 = 2114;
                v194 = v103;
                _os_log_impl(&dword_228986000, log, OS_LOG_TYPE_DEFAULT, "%{public}@: Stored owner participant: %{public}@", v191, 0x16u);
              }
            }

            else
            {
              v73 = v167;
              v107 = v136;
              if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
              {
                *v191 = v132;
                v192 = selfCopy;
                v193 = 2114;
                v194 = v136;
                _os_log_error_impl(&dword_228986000, log, OS_LOG_TYPE_ERROR, "%{public}@: Failed to store owner participant: %{public}@", v191, 0x16u);
              }
            }

            if ((v137 & 1) == 0)
            {
LABEL_117:
              profileIdentifier = [v144 profileIdentifier];
              v185 = 0;
              v113 = [v149 deleteProfile:profileIdentifier error:&v185];
              v114 = v185;

              if (v113)
              {

                v73 = v167;
                v90 = v149;
                goto LABEL_119;
              }

              _HKInitializeLogging();
              v115 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
              {
                *v191 = v132;
                v192 = selfCopy;
                v193 = 2114;
                v194 = v144;
                _os_log_fault_impl(&dword_228986000, v115, OS_LOG_TYPE_FAULT, "%{public}@: Failed to delete profile %{public}@ after failing to set store owner participant.", v191, 0x16u);
              }

              v116 = v114;
              v75 = v116;
              v90 = v149;
              if (v116)
              {
                v117 = v116;
              }

              v191[0] = v75 == 0;
LABEL_125:
              v73 = v167;
LABEL_126:
              zoneID = v154;

              v91 = 0;
              goto LABEL_127;
            }

LABEL_119:
            v75 = 0;
            v191[0] = 1;
            goto LABEL_126;
          }

          _HKInitializeLogging();
          v111 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
          {
            *v191 = v132;
            v192 = selfCopy;
            v193 = 2114;
            v194 = v139;
            _os_log_fault_impl(&dword_228986000, v111, OS_LOG_TYPE_FAULT, "%{public}@: Unable to find owner participant on share %{public}@", v191, 0x16u);
          }
        }

        else
        {
          _HKInitializeLogging();
          v110 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *v191 = v132;
            v192 = selfCopy;
            v193 = 2114;
            v194 = v101;
            _os_log_error_impl(&dword_228986000, v110, OS_LOG_TYPE_ERROR, "%{public}@: Zone %{public}@ does not have a zone share during zone synchronization", v191, 0x16u);
          }
        }

        goto LABEL_117;
      }

      v75 = 0;
      v76 = 1;
      containerCopy = v77;
      v36 = obj;
      v73 = v167;
LABEL_129:

      recordID = v160;
LABEL_130:

      v118 = v75;
      if ((v76 & 1) == 0)
      {
        [v157 addObject:v118];
        v156 = 1;
      }
    }

    v166 = [v158 countByEnumeratingWithState:&v179 objects:buf count:16];
  }

  while (v166);

  if (v156)
  {
    firstObject = [v157 firstObject];
    v64 = firstObject;
    v133 = firstObject == 0;
    v6 = v148;
    if (firstObject)
    {
      if (database)
      {
        v120 = firstObject;
        *database = v64;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_144:
  }

  else
  {
    v133 = 1;
    v6 = v148;
  }

  buf[0] = v133;
LABEL_146:
  v38 = v135;

  v57 = v152;
LABEL_147:

  databaseCopy = buf[0];
LABEL_148:
  v21 = v143;
LABEL_149:

LABEL_150:
  return databaseCopy;
}

id __102__HDCloudSyncSynchronizeProfilesOperation__cachedZonesWithRegistryRecordsForContainer_database_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 zoneIdentifier];
  v17 = 0;
  v5 = [v4 hd_isUnifiedSyncZoneIDForSyncCircleIdentifier:&v17];
  v6 = v17;

  if (!v5)
  {
    goto LABEL_4;
  }

  v7 = [*(a1 + 32) configuration];
  v8 = [v7 syncContainerPrefix];
  if ([v6 isEqualToString:v8])
  {
    v9 = [v3 scope];

    if (v9 == 2)
    {
LABEL_4:
      v10 = 0;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v11 = [HDCloudSyncCachedZone alloc];
  v12 = [*(a1 + 32) configuration];
  v13 = [v12 repository];
  v14 = [*(a1 + 32) configuration];
  v15 = [v14 accessibilityAssertion];
  v10 = [(HDCloudSyncCachedZone *)v11 initForZoneIdentifier:v3 repository:v13 accessibilityAssertion:v15];

LABEL_7:

  return v10;
}

void __114__HDCloudSyncSynchronizeProfilesOperation__synchronizeProfilesForRegistryRecords_shares_container_database_error___block_invoke(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = a3;
  v6 = a2;
  v8 = [v6 recordID];
  v7 = [v8 zoneID];
  (a3)[2](v5, v7, v6);
}

- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors
{
  successCopy = success;
  firstObject = [errors firstObject];
  [(HDCloudSyncOperation *)self finishWithSuccess:successCopy error:firstObject];
}

@end