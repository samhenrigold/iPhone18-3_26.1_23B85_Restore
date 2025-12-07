@interface SRAuthorizationStore
+ (SRAuthorizationStore)allSensorsStore;
+ (id)sharedAuthorizationStoreForSensors:(id)sensors;
+ (void)initialize;
- (BOOL)checkAccessForService:(id)service auditToken:(id *)token;
- (BOOL)sensorHasReaderAuthorization:(id)authorization;
- (BOOL)sensorHasReaderAuthorization:(id)authorization forBundleId:(id)id;
- (BOOL)setAuthorizationForBundleId:(id)id service:(id)service value:(BOOL)value setOverride:(BOOL)override;
- (SRAuthorizationStore)initWithSensors:(id)sensors withAuthorizationTimes:(BOOL)times;
- (id)readerAuthorizationBundleIdValues;
- (uint64_t)updateOverrideOnAuthorizationChangeForService:(int)service withPendingValue:(uint64_t)value forBundleId:;
- (void)addReaderAuthorizationDelegate:(id)delegate;
- (void)addWriterAuthorizationDelegate:(id)delegate;
- (void)dealloc;
- (void)listenForAuthorizationUpdates:(BOOL)updates;
- (void)removeReaderAuthorizationDelegate:(id)delegate;
- (void)removeWriterAuthorizationDelegate:(id)delegate;
- (void)resetAllAuthorizations;
- (void)resetAllAuthorizationsForBundleId:(id)id;
- (void)resetAuthorizationForService:(id)service bundleId:(id)id;
- (void)updateAuthorizations;
- (void)updateToNewAuthorizations:(void *)authorizations fromOldAuthorizations:(void *)oldAuthorizations delegates:;
@end

@implementation SRAuthorizationStore

- (void)updateAuthorizations
{
  v173 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  dispatch_assert_queue_V2([self updateQueue]);
  v1 = os_transaction_create();
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v2 = _os_activity_create(&dword_1C914D000, "Retrieving fresh authorizations from TCC", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &state);
  v3 = SRLogAuthorizationStore;
  if (os_log_type_enabled(SRLogAuthorizationStore, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C914D000, v3, OS_LOG_TYPE_INFO, "Retrieving fresh authorizations from TCC", buf, 2u);
  }

  v97 = v1;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v139[0] = MEMORY[0x1E69E9820];
  v139[1] = 3221225472;
  v140 = __64__SRAuthorizationStore_readerAuthorizationInformationForSensors__block_invoke;
  v141 = &unk_1E8330540;
  v142 = dictionary;
  readerAuthorizationGroups = [self readerAuthorizationGroups];
  v165 = 0u;
  v166 = 0u;
  memset(v164, 0, sizeof(v164));
  v5 = [readerAuthorizationGroups countByEnumeratingWithState:v164 objects:buf count:16];
  v6 = 0x1EE02A000uLL;
  if (v5)
  {
    v7 = **&v164[16];
    v8 = MEMORY[0x1E695E110];
    v9 = MEMORY[0x1E695E118];
    obj = readerAuthorizationGroups;
    v93 = **&v164[16];
    do
    {
      v104 = 0;
      v95 = v5;
      do
      {
        if (**&v164[16] != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*&v164[8] + 8 * v104);
        context = objc_autoreleasePoolPush();
        v109 = [*(self + 32) bundleIdentifiersForService:v10];
        v11 = [*(self + 32) bundleIdentifiersDisabledForService:v10];
        v106 = v11;
        if (v109)
        {
          v12 = v11 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          v13 = *(v6 + 3040);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *v158 = 138543362;
            v159 = v10;
            _os_log_impl(&dword_1C914D000, v13, OS_LOG_TYPE_INFO, "Could not retrieve authorization information for TCC service %{public}@", v158, 0xCu);
          }
        }

        v14 = [*(self + 32) isOverriddenForService:v10];
        v15 = *(v6 + 3040);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v158 = 138543874;
          v159 = v10;
          v160 = 1026;
          v161 = v14;
          v162 = 2114;
          v163 = v109;
          _os_log_impl(&dword_1C914D000, v15, OS_LOG_TYPE_DEFAULT, "Authorized Bundle Ids for %{public}@, overridden %{public, BOOL}d, %{public}@", v158, 0x1Cu);
          v15 = *(v6 + 3040);
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v158 = 138543874;
          v159 = v10;
          v160 = 1026;
          v161 = v14;
          v162 = 2114;
          v163 = v106;
          _os_log_impl(&dword_1C914D000, v15, OS_LOG_TYPE_DEFAULT, "Deauthorized Bundle Ids for %{public}@, overridden %{public, BOOL}d, %{public}@", v158, 0x1Cu);
        }

        v16 = [obj objectForKeyedSubscript:v10];
        v156 = 0u;
        v157 = 0u;
        memset(v155, 0, sizeof(v155));
        v17 = [v16 countByEnumeratingWithState:v155 objects:v171 count:16];
        if (v17)
        {
          v18 = **&v155[16];
          if (v14)
          {
            v19 = v9;
          }

          else
          {
            v19 = v8;
          }

          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (**&v155[16] != v18)
              {
                objc_enumerationMutation(v16);
              }

              [v140(v139 @"com.apple.sensorkit.dummy-bundle-id")];
            }

            v17 = [v16 countByEnumeratingWithState:v155 objects:v171 count:16];
          }

          while (v17);
        }

        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v6 = 0x1EE02A000;
        v21 = [v109 countByEnumeratingWithState:&v135 objects:&v167 count:16];
        if (v21)
        {
          v112 = *v136;
          do
          {
            v22 = 0;
            v116 = v21;
            do
            {
              if (*v136 != v112)
              {
                objc_enumerationMutation(v109);
              }

              v23 = *(*(&v135 + 1) + 8 * v22);
              v131 = 0u;
              v132 = 0u;
              v133 = 0u;
              v134 = 0u;
              v24 = [v16 countByEnumeratingWithState:&v131 objects:&v151 count:16];
              if (v24)
              {
                v25 = *v132;
                do
                {
                  for (j = 0; j != v24; ++j)
                  {
                    if (*v132 != v25)
                    {
                      objc_enumerationMutation(v16);
                    }

                    [v140(v139 v23)];
                  }

                  v24 = [v16 countByEnumeratingWithState:&v131 objects:&v151 count:16];
                }

                while (v24);
              }

              v22 = v22 + 1;
              v6 = 0x1EE02A000;
            }

            while (v22 != v116);
            v21 = [v109 countByEnumeratingWithState:&v135 objects:&v167 count:16];
          }

          while (v21);
        }

        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v27 = [v106 countByEnumeratingWithState:&v127 objects:&v147 count:16];
        if (v27)
        {
          v113 = *v128;
          do
          {
            v28 = 0;
            v117 = v27;
            do
            {
              if (*v128 != v113)
              {
                objc_enumerationMutation(v106);
              }

              v29 = *(*(&v127 + 1) + 8 * v28);
              v123 = 0u;
              v124 = 0u;
              v125 = 0u;
              v126 = 0u;
              v30 = [v16 countByEnumeratingWithState:&v123 objects:&v143 count:16];
              if (v30)
              {
                v31 = *v124;
                do
                {
                  for (k = 0; k != v30; ++k)
                  {
                    if (*v124 != v31)
                    {
                      objc_enumerationMutation(v16);
                    }

                    [v140(v139 v29)];
                  }

                  v30 = [v16 countByEnumeratingWithState:&v123 objects:&v143 count:16];
                }

                while (v30);
              }

              v28 = v28 + 1;
              v6 = 0x1EE02A000;
            }

            while (v28 != v117);
            v27 = [v106 countByEnumeratingWithState:&v127 objects:&v147 count:16];
          }

          while (v27);
        }

        objc_autoreleasePoolPop(context);
        v7 = v93;
        ++v104;
      }

      while (v104 != v95);
      v5 = [obj countByEnumeratingWithState:v164 objects:buf count:16];
    }

    while (v5);
  }

  v100 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:{objc_msgSend(self, "readerAuthorizationValues")}];
  [self setReaderAuthorizationValues:dictionary];
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  readerAuthorizationValues = [self readerAuthorizationValues];
  v34 = [readerAuthorizationValues countByEnumeratingWithState:&v167 objects:buf count:16];
  if (v34)
  {
    v118 = readerAuthorizationValues;
    v35 = 0;
    v36 = *v168;
    selfCopy3 = self;
    do
    {
      for (m = 0; m != v34; ++m)
      {
        if (*v168 != v36)
        {
          objc_enumerationMutation(v118);
        }

        v39 = *(*(&v167 + 1) + 8 * m);
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
        v154 = 0u;
        v40 = [objc_msgSend(selfCopy3 "readerAuthorizationValues")];
        v41 = [v40 countByEnumeratingWithState:&v151 objects:v171 count:16];
        if (v41)
        {
          v42 = *v152;
          while (2)
          {
            for (n = 0; n != v41; ++n)
            {
              if (*v152 != v42)
              {
                objc_enumerationMutation(v40);
              }

              if ([objc_msgSend(objc_msgSend(objc_msgSend(self "readerAuthorizationValues")])
              {
                v35 = 1;
                goto LABEL_74;
              }
            }

            v41 = [v40 countByEnumeratingWithState:&v151 objects:v171 count:16];
            if (v41)
            {
              continue;
            }

            break;
          }

LABEL_74:
          selfCopy3 = self;
        }
      }

      v34 = [v118 countByEnumeratingWithState:&v167 objects:buf count:16];
    }

    while (v34);
  }

  else
  {
    v35 = 0;
    selfCopy3 = self;
  }

  [selfCopy3 setSensorKitActive:v35 & 1];
  selfCopy5 = self;
  if (*(self + 12) != 1)
  {
    goto LABEL_113;
  }

  v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  readerAuthorizationValues2 = [self readerAuthorizationValues];
  v47 = [readerAuthorizationValues2 countByEnumeratingWithState:&v151 objects:buf count:16];
  if (!v47)
  {
    goto LABEL_112;
  }

  v94 = *v152;
  v91 = readerAuthorizationValues2;
  do
  {
    v48 = 0;
    v92 = v47;
    do
    {
      if (*v152 != v94)
      {
        objc_enumerationMutation(v91);
      }

      v49 = *(*(&v151 + 1) + 8 * v48);
      contexta = objc_autoreleasePoolPush();
      v50 = [*(self + 32) informationForBundleId:v49];
      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      v51 = [v50 countByEnumeratingWithState:&v147 objects:v171 count:16];
      v96 = v48;
      if (v51)
      {
        v107 = v50;
        v110 = *v148;
        do
        {
          v114 = v51;
          for (ii = 0; ii != v114; ii = ii + 1)
          {
            if (*v148 != v110)
            {
              objc_enumerationMutation(v50);
            }

            v52 = *(*(&v147 + 1) + 8 * ii);
            v53 = [v52 objectForKeyedSubscript:*MEMORY[0x1E69D54F8]];
            if (!v53)
            {
              v62 = SRLogAuthorizationStore;
              if (!os_log_type_enabled(SRLogAuthorizationStore, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_105;
              }

              *v164 = 138543362;
              *&v164[4] = v52;
              v63 = v62;
              v64 = "Couldn't find a TCC service in the TCC access dictionary %{public}@";
              v65 = 12;
LABEL_108:
              _os_log_error_impl(&dword_1C914D000, v63, OS_LOG_TYPE_ERROR, v64, v164, v65);
              goto LABEL_105;
            }

            v54 = [v52 objectForKeyedSubscript:*MEMORY[0x1E69D54F0]];
            if (!v54)
            {
              v66 = SRLogAuthorizationStore;
              if (!os_log_type_enabled(SRLogAuthorizationStore, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_105;
              }

              *v164 = 138543618;
              *&v164[4] = v49;
              *&v164[12] = 2114;
              *&v164[14] = v53;
              v63 = v66;
              v64 = "No last modified date for authorization of bundle %{public}@, service: %{public}@";
              v65 = 22;
              goto LABEL_108;
            }

            if (![v45 objectForKeyedSubscript:v49])
            {
              v55 = objc_alloc_init(MEMORY[0x1E695DF90]);
              [v45 setObject:v55 forKeyedSubscript:v49];
            }

            v145 = 0u;
            v146 = 0u;
            v143 = 0u;
            v144 = 0u;
            v56 = [objc_msgSend(self "readerAuthorizationGroups")];
            v57 = [v56 countByEnumeratingWithState:&v143 objects:&v167 count:16];
            if (v57)
            {
              v58 = *v144;
              do
              {
                for (jj = 0; jj != v57; ++jj)
                {
                  if (*v144 != v58)
                  {
                    objc_enumerationMutation(v56);
                  }

                  v60 = *(*(&v143 + 1) + 8 * jj);
                  v61 = MEMORY[0x1E696AD98];
                  [v54 timeIntervalSinceReferenceDate];
                  [objc_msgSend(v45 objectForKeyedSubscript:{v49), "setObject:forKeyedSubscript:", objc_msgSend(v61, "numberWithDouble:"), v60}];
                }

                v57 = [v56 countByEnumeratingWithState:&v143 objects:&v167 count:16];
              }

              while (v57);
            }

LABEL_105:
            v50 = v107;
          }

          v51 = [v107 countByEnumeratingWithState:&v147 objects:v171 count:16];
        }

        while (v51);
      }

      objc_autoreleasePoolPop(contexta);
      v48 = v96 + 1;
    }

    while (v96 + 1 != v92);
    v47 = [v91 countByEnumeratingWithState:&v151 objects:buf count:16];
  }

  while (v47);
LABEL_112:
  [self setReaderLastModifiedAuthorizationTimes:v45];

  selfCopy5 = self;
LABEL_113:
  v67 = *(selfCopy5 + 16);
  objc_sync_enter(v67);
  v68 = [*(selfCopy5 + 16) copy];
  objc_sync_exit(v67);
  [(SRAuthorizationStore *)selfCopy5 updateToNewAuthorizations:dictionary fromOldAuthorizations:v100 delegates:v68];

  v69 = *(self + 24);
  objc_sync_enter(v69);
  v70 = 0x1EE02A000uLL;
  obja = [*(self + 24) copy];
  objc_sync_exit(v69);
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  *v164 = MEMORY[0x1E69E9820];
  *&v164[8] = 3221225472;
  *&v164[16] = __64__SRAuthorizationStore_writerAuthorizationInformationForSensors__block_invoke;
  *&v164[24] = &unk_1E8330540;
  *&v165 = dictionary2;
  writerAuthorizationGroups = [self writerAuthorizationGroups];
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v73 = [writerAuthorizationGroups countByEnumeratingWithState:&v151 objects:buf count:16];
  v101 = dictionary2;
  if (v73)
  {
    v108 = *v152;
    v74 = MEMORY[0x1E695E110];
    v75 = MEMORY[0x1E695E118];
    v115 = writerAuthorizationGroups;
    do
    {
      v76 = 0;
      v111 = v73;
      do
      {
        if (*v152 != v108)
        {
          objc_enumerationMutation(v115);
        }

        v77 = *(*(&v151 + 1) + 8 * v76);
        v120 = objc_autoreleasePoolPush();
        v78 = [*(self + 32) bundleIdentifiersForService:v77];
        v79 = [*(self + 32) bundleIdentifiersDisabledForService:v77];
        v80 = v79;
        v81 = *(v70 + 3040);
        if (v78)
        {
          v82 = v79 == 0;
        }

        else
        {
          v82 = 1;
        }

        if (v82 && os_log_type_enabled(*(v70 + 3040), OS_LOG_TYPE_INFO))
        {
          *v155 = 138543362;
          *&v155[4] = v77;
          _os_log_impl(&dword_1C914D000, v81, OS_LOG_TYPE_INFO, "Could not retrieve authorization information for TCC service %{public}@", v155, 0xCu);
          v81 = *(v70 + 3040);
        }

        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          *v155 = 138543618;
          *&v155[4] = v77;
          *&v155[12] = 2114;
          *&v155[14] = v78;
          _os_log_impl(&dword_1C914D000, v81, OS_LOG_TYPE_DEFAULT, "Authorized Bundle Ids for %{public}@, %{public}@", v155, 0x16u);
          v81 = *(v70 + 3040);
        }

        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          *v155 = 138543618;
          *&v155[4] = v77;
          *&v155[12] = 2114;
          *&v155[14] = v80;
          _os_log_impl(&dword_1C914D000, v81, OS_LOG_TYPE_DEFAULT, "Deauthorized Bundle Ids for %{public}@, %{public}@", v155, 0x16u);
        }

        v83 = [v115 objectForKeyedSubscript:v77];
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v84 = [v78 countByEnumeratingWithState:&v147 objects:v171 count:16];
        if (v84)
        {
          v85 = *v148;
          do
          {
            for (kk = 0; kk != v84; ++kk)
            {
              if (*v148 != v85)
              {
                objc_enumerationMutation(v78);
              }

              [(*&v164[16])(v164 *(*(&v147 + 1) + 8 * kk))];
            }

            v84 = [v78 countByEnumeratingWithState:&v147 objects:v171 count:16];
          }

          while (v84);
        }

        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v87 = [v80 countByEnumeratingWithState:&v143 objects:&v167 count:16];
        if (v87)
        {
          v88 = *v144;
          do
          {
            for (mm = 0; mm != v87; ++mm)
            {
              if (*v144 != v88)
              {
                objc_enumerationMutation(v80);
              }

              [(*&v164[16])(v164 *(*(&v143 + 1) + 8 * mm))];
            }

            v87 = [v80 countByEnumeratingWithState:&v143 objects:&v167 count:16];
          }

          while (v87);
        }

        objc_autoreleasePoolPop(v120);
        v70 = 0x1EE02A000;
        v76 = v76 + 1;
      }

      while (v76 != v111);
      v73 = [v115 countByEnumeratingWithState:&v151 objects:buf count:16];
    }

    while (v73);
  }

  v90 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:{objc_msgSend(self, "writerAuthorizationValues")}];
  [self setWriterAuthorizationValues:v101];
  [(SRAuthorizationStore *)self updateToNewAuthorizations:v101 fromOldAuthorizations:v90 delegates:obja];

  os_activity_scope_leave(&state);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogAuthorizationStore = os_log_create("com.apple.SensorKit", "AuthorizationStore");
  }
}

- (SRAuthorizationStore)initWithSensors:(id)sensors withAuthorizationTimes:(BOOL)times
{
  block[16] = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(SRTCCStorePassThrough);
  if (self)
  {
    v34.receiver = self;
    v34.super_class = SRAuthorizationStore;
    v8 = [(SRAuthorizationStore *)&v34 init];
    if (v8)
    {
      v9 = v8;
      v8->_tccStore = v7;
      v9->_sensors = sensors;
      v9->_fetchAuthorizationTimes = times;
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      objc_setProperty_nonatomic(v9, v11, weakObjectsHashTable, 16);
      weakObjectsHashTable2 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      objc_setProperty_nonatomic(v9, v13, weakObjectsHashTable2, 24);
      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9->_updateQueue = dispatch_queue_create("SRAuthorizationStore.updateQueue", v14);
      v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSSet count](v9->_sensors, "count")}];
      v33 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSSet count](v9->_sensors, "count")}];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v32 = v9;
      sensors = v9->_sensors;
      v17 = [(NSSet *)sensors countByEnumeratingWithState:&v35 objects:block count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v36;
        do
        {
          v20 = 0;
          do
          {
            if (*v36 != v19)
            {
              objc_enumerationMutation(sensors);
            }

            v21 = *(*(&v35 + 1) + 8 * v20);
            v22 = objc_autoreleasePoolPush();
            v23 = [SRSensorDescription sensorDescriptionForSensor:v21];
            if (v23)
            {
              v24 = v23;
              authorizationService = [v23 authorizationService];
              v26 = [v15 objectForKeyedSubscript:authorizationService];
              if (!v26)
              {
                v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                [v15 setObject:v27 forKeyedSubscript:authorizationService];

                v26 = [v15 objectForKeyedSubscript:authorizationService];
              }

              [v26 addObject:{objc_msgSend(v24, "name")}];
              writerAuthorizationService = [v24 writerAuthorizationService];
              if (writerAuthorizationService)
              {
                [v33 setObject:objc_msgSend(v24 forKeyedSubscript:{"name"), writerAuthorizationService}];
              }
            }

            else
            {
              v29 = SRLogAuthorizationStore;
              if (os_log_type_enabled(SRLogAuthorizationStore, OS_LOG_TYPE_FAULT))
              {
                *buf = 138543362;
                v40 = v21;
                _os_log_fault_impl(&dword_1C914D000, v29, OS_LOG_TYPE_FAULT, "No sensor description found for %{public}@", buf, 0xCu);
              }
            }

            objc_autoreleasePoolPop(v22);
            ++v20;
          }

          while (v18 != v20);
          v18 = [(NSSet *)sensors countByEnumeratingWithState:&v35 objects:block count:16];
        }

        while (v18);
      }

      self = v32;
      [(SRAuthorizationStore *)v32 setReaderAuthorizationGroups:v15];

      [(SRAuthorizationStore *)v32 setWriterAuthorizationGroups:v33];
      [(SRAuthorizationStore *)v32 listenForAuthorizationUpdates:1];
      updateQueue = [(SRAuthorizationStore *)v32 updateQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__SRAuthorizationStore_startUpdatingAuthorizations__block_invoke;
      block[3] = &unk_1E8330208;
      block[4] = v32;
      dispatch_sync(updateQueue, block);
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

+ (id)sharedAuthorizationStoreForSensors:(id)sensors
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SRAuthorizationStore_sharedAuthorizationStoreForSensors___block_invoke;
  block[3] = &unk_1E8330208;
  block[4] = sensors;
  if (qword_1EE02AAF0 != -1)
  {
    dispatch_once(&qword_1EE02AAF0, block);
  }

  return _MergedGlobals_2;
}

SRAuthorizationStore *__59__SRAuthorizationStore_sharedAuthorizationStoreForSensors___block_invoke(uint64_t a1)
{
  result = [[SRAuthorizationStore alloc] initWithSensors:*(a1 + 32) withAuthorizationTimes:0];
  _MergedGlobals_2 = result;
  return result;
}

+ (SRAuthorizationStore)allSensorsStore
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = objc_autoreleasePoolPush();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = +[SRSensorsCache defaultCache];
  allSensorDescriptions = [(SRSensorsCache *)v4 allSensorDescriptions];
  v6 = [allSensorDescriptions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allSensorDescriptions);
        }

        [v2 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * v9++), "name", v12)}];
      }

      while (v7 != v9);
      v7 = [allSensorDescriptions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_autoreleasePoolPop(v3);
  v10 = [[SRAuthorizationStore alloc] initWithSensors:v2];

  return v10;
}

- (void)dealloc
{
  [(SRAuthorizationStore *)self setReaderAuthorizationValues:0];
  [(SRAuthorizationStore *)self setWriterAuthorizationValues:0];
  [(SRAuthorizationStore *)self setReaderLastModifiedAuthorizationTimes:0];
  [(SRAuthorizationStore *)self setUpdateQueue:0];
  objc_setProperty_nonatomic(self, v3, 0, 16);
  objc_setProperty_nonatomic(self, v4, 0, 24);
  [(SRAuthorizationStore *)self listenForAuthorizationUpdates:0];
  objc_setProperty_nonatomic(self, v5, 0, 32);
  [(SRAuthorizationStore *)self setReaderAuthorizationGroups:0];
  [(SRAuthorizationStore *)self setWriterAuthorizationGroups:0];
  v6.receiver = self;
  v6.super_class = SRAuthorizationStore;
  [(SRAuthorizationStore *)&v6 dealloc];
}

- (void)listenForAuthorizationUpdates:(BOOL)updates
{
  v40 = *MEMORY[0x1E69E9840];
  p_notifyToken = &self->_notifyToken;
  notifyToken = self->_notifyToken;
  v7 = SRLogAuthorizationStore;
  v8 = os_log_type_enabled(SRLogAuthorizationStore, OS_LOG_TYPE_INFO);
  if (updates)
  {
    if (notifyToken)
    {
      if (!v8)
      {
        return;
      }

      LOWORD(buf[0]) = 0;
      v9 = "Asked to listen for TCC updates but we're already listening";
LABEL_36:
      _os_log_impl(&dword_1C914D000, v7, OS_LOG_TYPE_INFO, v9, buf, 2u);
      return;
    }

    if (v8)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C914D000, v7, OS_LOG_TYPE_INFO, "Registering for TCC updates", buf, 2u);
    }

    objc_initWeak(buf, self);
    updateQueue = [(SRAuthorizationStore *)self updateQueue];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __54__SRAuthorizationStore_listenForAuthorizationUpdates___block_invoke;
    handler[3] = &unk_1E83304A8;
    objc_copyWeak(&v34, buf);
    v11 = notify_register_dispatch("com.apple.tcc.access.changed", p_notifyToken, updateQueue, handler);
    if (v11)
    {
      v12 = SRLogAuthorizationStore;
      if (os_log_type_enabled(SRLogAuthorizationStore, OS_LOG_TYPE_FAULT))
      {
        *v38 = 67240192;
        v39 = v11;
        _os_log_fault_impl(&dword_1C914D000, v12, OS_LOG_TYPE_FAULT, "Failed to register for TCC notifications.  Got status %{public}d", v38, 8u);
      }

      -[SRAuthorizationStore setReaderAuthorizationValues:](self, "setReaderAuthorizationValues:", [MEMORY[0x1E695DF20] dictionary]);
      -[SRAuthorizationStore setReaderLastModifiedAuthorizationTimes:](self, "setReaderLastModifiedAuthorizationTimes:", [MEMORY[0x1E695DF20] dictionary]);
      -[SRAuthorizationStore setWriterAuthorizationValues:](self, "setWriterAuthorizationValues:", [MEMORY[0x1E695DF20] dictionary]);
      readerAuthorizationDelegates = self->_readerAuthorizationDelegates;
      objc_sync_enter(readerAuthorizationDelegates);
      v14 = [(NSHashTable *)self->_readerAuthorizationDelegates copy];
      objc_sync_exit(readerAuthorizationDelegates);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v15)
      {
        v16 = *v30;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v30 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v29 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v18 authorizationStore:self didDetermineInitialAuthorizationValues:{-[SRAuthorizationStore readerAuthorizationValues](self, "readerAuthorizationValues")}];
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v15);
      }

      writerAuthorizationDelegates = self->_writerAuthorizationDelegates;
      objc_sync_enter(writerAuthorizationDelegates);
      v20 = [(NSHashTable *)self->_writerAuthorizationDelegates copy];
      objc_sync_exit(writerAuthorizationDelegates);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v21 = [v20 countByEnumeratingWithState:&v25 objects:v36 count:16];
      if (v21)
      {
        v22 = *v26;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v26 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v25 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v24 authorizationStore:self didDetermineInitialAuthorizationValues:{-[SRAuthorizationStore writerAuthorizationValues](self, "writerAuthorizationValues")}];
            }
          }

          v21 = [v20 countByEnumeratingWithState:&v25 objects:v36 count:16];
        }

        while (v21);
      }
    }

    objc_destroyWeak(&v34);
    objc_destroyWeak(buf);
  }

  else
  {
    if (!notifyToken)
    {
      if (!v8)
      {
        return;
      }

      LOWORD(buf[0]) = 0;
      v9 = "Asked to stop listen for TCC updates but we are already not listening";
      goto LABEL_36;
    }

    if (v8)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C914D000, v7, OS_LOG_TYPE_INFO, "Unregistering for TCC updates", buf, 2u);
      notifyToken = *p_notifyToken;
    }

    notify_cancel(notifyToken);
    *p_notifyToken = 0;
  }
}

void __54__SRAuthorizationStore_listenForAuthorizationUpdates___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  [(SRAuthorizationStore *)Weak updateAuthorizations];
}

- (void)updateToNewAuthorizations:(void *)authorizations fromOldAuthorizations:(void *)oldAuthorizations delegates:
{
  v77 = *MEMORY[0x1E69E9840];
  if (authorizations)
  {
    authorizationsCopy = authorizations;
    v7 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(authorizations, "allKeys")}];
    [v7 unionSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", objc_msgSend(a2, "allKeys"))}];
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v7;
    result = [v7 countByEnumeratingWithState:&v60 objects:v75 count:16];
    v45 = result;
    if (result)
    {
      v41 = *v61;
      *&v9 = 138543618;
      v39 = v9;
      v43 = a2;
      oldAuthorizationsCopy = oldAuthorizations;
      v42 = authorizationsCopy;
      do
      {
        v10 = 0;
        do
        {
          if (*v61 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v47 = v10;
          v11 = *(*(&v60 + 1) + 8 * v10);
          v12 = [authorizationsCopy objectForKeyedSubscript:{v11, v39}];
          v13 = [a2 objectForKeyedSubscript:v11];
          v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v15 = [v13 countByEnumeratingWithState:&v56 objects:v74 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v57;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v57 != v17)
                {
                  objc_enumerationMutation(v13);
                }

                v19 = *(*(&v56 + 1) + 8 * i);
                v20 = [v13 objectForKeyedSubscript:v19];
                v21 = [v12 objectForKeyedSubscript:v19];
                if ([v20 BOOLValue] && !objc_msgSend(v21, "BOOLValue") || v20 && (objc_msgSend(v20, "BOOLValue") & 1) == 0 && !v21)
                {
                  [v14 addObject:v19];
                }
              }

              v16 = [v13 countByEnumeratingWithState:&v56 objects:v74 count:16];
            }

            while (v16);
          }

          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v22 = [v12 countByEnumeratingWithState:&v52 objects:v73 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v53;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v53 != v24)
                {
                  objc_enumerationMutation(v12);
                }

                v26 = *(*(&v52 + 1) + 8 * j);
                v27 = [v13 objectForKeyedSubscript:v26];
                if (v27)
                {
                  v28 = v27;
                  if (([objc_msgSend(v12 objectForKeyedSubscript:{v26), "BOOLValue"}] & 1) == 0)
                  {
                    if ([v12 objectForKeyedSubscript:v26])
                    {
                      continue;
                    }
                  }

                  if ([v28 BOOLValue])
                  {
                    continue;
                  }
                }

                [v14 addObject:v26];
              }

              v23 = [v12 countByEnumeratingWithState:&v52 objects:v73 count:16];
            }

            while (v23);
          }

          a2 = v43;
          if ([v14 count])
          {
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v29 = [oldAuthorizationsCopy countByEnumeratingWithState:&v48 objects:v72 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v49;
              do
              {
                for (k = 0; k != v30; ++k)
                {
                  if (*v49 != v31)
                  {
                    objc_enumerationMutation(oldAuthorizationsCopy);
                  }

                  v33 = *(*(&v48 + 1) + 8 * k);
                  if (objc_opt_respondsToSelector())
                  {
                    [v33 authorizationStore:self didUpdateAuthorizationsForBundleId:v11 sensors:v14];
                  }
                }

                v30 = [oldAuthorizationsCopy countByEnumeratingWithState:&v48 objects:v72 count:16];
              }

              while (v30);
            }

            v34 = SRLogAuthorizationStore;
            if (os_log_type_enabled(SRLogAuthorizationStore, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v39;
              v69 = v11;
              v70 = 2114;
              v71 = v14;
              _os_log_impl(&dword_1C914D000, v34, OS_LOG_TYPE_DEFAULT, "Authorization Changed for bundle id %{public}@ for sensors %{public}@", buf, 0x16u);
            }
          }

          v10 = v47 + 1;
          authorizationsCopy = v42;
        }

        while ((v47 + 1) != v45);
        result = [obj countByEnumeratingWithState:&v60 objects:v75 count:16];
        v45 = result;
      }

      while (result);
    }
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    result = [oldAuthorizations countByEnumeratingWithState:&v64 objects:v76 count:16];
    if (result)
    {
      v35 = result;
      v36 = *v65;
      do
      {
        v37 = 0;
        do
        {
          if (*v65 != v36)
          {
            objc_enumerationMutation(oldAuthorizations);
          }

          v38 = *(*(&v64 + 1) + 8 * v37);
          if (objc_opt_respondsToSelector())
          {
            [v38 authorizationStore:self didDetermineInitialAuthorizationValues:a2];
          }

          v37 = v37 + 1;
        }

        while (v35 != v37);
        result = [oldAuthorizations countByEnumeratingWithState:&v64 objects:v76 count:16];
        v35 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)addReaderAuthorizationDelegate:(id)delegate
{
  if (self)
  {
    readerAuthorizationDelegates = self->_readerAuthorizationDelegates;
    objc_sync_enter(readerAuthorizationDelegates);
    v6 = self->_readerAuthorizationDelegates;
  }

  else
  {
    objc_sync_enter(0);
    readerAuthorizationDelegates = 0;
    v6 = 0;
  }

  [(NSHashTable *)v6 addObject:delegate];
  if ([(SRAuthorizationStore *)self readerAuthorizationValues]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate authorizationStore:self didDetermineInitialAuthorizationValues:{-[SRAuthorizationStore readerAuthorizationValues](self, "readerAuthorizationValues")}];
  }

  objc_sync_exit(readerAuthorizationDelegates);
}

- (void)removeReaderAuthorizationDelegate:(id)delegate
{
  if (self)
  {
    readerAuthorizationDelegates = self->_readerAuthorizationDelegates;
    objc_sync_enter(readerAuthorizationDelegates);
    v6 = self->_readerAuthorizationDelegates;
  }

  else
  {
    objc_sync_enter(0);
    readerAuthorizationDelegates = 0;
    v6 = 0;
  }

  [(NSHashTable *)v6 removeObject:delegate];

  objc_sync_exit(readerAuthorizationDelegates);
}

- (void)addWriterAuthorizationDelegate:(id)delegate
{
  if (self)
  {
    writerAuthorizationDelegates = self->_writerAuthorizationDelegates;
    objc_sync_enter(writerAuthorizationDelegates);
    v6 = self->_writerAuthorizationDelegates;
  }

  else
  {
    objc_sync_enter(0);
    writerAuthorizationDelegates = 0;
    v6 = 0;
  }

  [(NSHashTable *)v6 addObject:delegate];
  if ([(SRAuthorizationStore *)self writerAuthorizationValues]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate authorizationStore:self didDetermineInitialAuthorizationValues:{-[SRAuthorizationStore writerAuthorizationValues](self, "writerAuthorizationValues")}];
  }

  objc_sync_exit(writerAuthorizationDelegates);
}

- (void)removeWriterAuthorizationDelegate:(id)delegate
{
  if (self)
  {
    writerAuthorizationDelegates = self->_writerAuthorizationDelegates;
    objc_sync_enter(writerAuthorizationDelegates);
    v6 = self->_writerAuthorizationDelegates;
  }

  else
  {
    objc_sync_enter(0);
    writerAuthorizationDelegates = 0;
    v6 = 0;
  }

  [(NSHashTable *)v6 removeObject:delegate];

  objc_sync_exit(writerAuthorizationDelegates);
}

- (BOOL)sensorHasReaderAuthorization:(id)authorization
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  readerAuthorizationBundleIdValues = [(SRAuthorizationStore *)self readerAuthorizationBundleIdValues];
  v6 = [readerAuthorizationBundleIdValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(readerAuthorizationBundleIdValues);
        }

        if ([(SRAuthorizationStore *)self sensorHasReaderAuthorization:authorization forBundleId:*(*(&v11 + 1) + 8 * v9)])
        {
          LOBYTE(v6) = 1;
          return v6;
        }

        ++v9;
      }

      while (v7 != v9);
      v6 = [readerAuthorizationBundleIdValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

- (BOOL)sensorHasReaderAuthorization:(id)authorization forBundleId:(id)id
{
  v4 = [-[NSDictionary objectForKeyedSubscript:](-[SRAuthorizationStore readerAuthorizationValues](self "readerAuthorizationValues")];

  return [v4 BOOLValue];
}

- (uint64_t)updateOverrideOnAuthorizationChangeForService:(int)service withPendingValue:(uint64_t)value forBundleId:
{
  result = 0;
  v36 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = a2;
    if (a2)
    {
      if (service)
      {
        v7 = self[4];

        return [v7 setOverride:1 forService:a2];
      }

      else
      {
        selfCopy = self;
        readerAuthorizationBundleIdValues = [self readerAuthorizationBundleIdValues];
        v10 = [SRSensorDescription sensorDescriptionsForAuthorizationService:v6];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v11 = [readerAuthorizationBundleIdValues countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (!v11)
        {
          return [selfCopy[4] setOverride:0 forService:v6];
        }

        v12 = v11;
        v21 = v6;
        v23 = 0;
        v13 = *v31;
        v24 = *v31;
        do
        {
          v14 = 0;
          v25 = v12;
          do
          {
            if (*v31 != v13)
            {
              objc_enumerationMutation(readerAuthorizationBundleIdValues);
            }

            v15 = *(*(&v30 + 1) + 8 * v14);
            if (([v15 isEqualToString:value] & 1) == 0)
            {
              v28 = 0u;
              v29 = 0u;
              v26 = 0u;
              v27 = 0u;
              v16 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v16)
              {
                v17 = v16;
                valueCopy = value;
                v19 = *v27;
                while (2)
                {
                  for (i = 0; i != v17; ++i)
                  {
                    if (*v27 != v19)
                    {
                      objc_enumerationMutation(v10);
                    }

                    if ([objc_msgSend(objc_msgSend(readerAuthorizationBundleIdValues objectForKeyedSubscript:{v15), "objectForKeyedSubscript:", objc_msgSend(*(*(&v26 + 1) + 8 * i), "name")), "BOOLValue"}])
                    {
                      v23 = 1;
                      goto LABEL_23;
                    }
                  }

                  v17 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
                  if (v17)
                  {
                    continue;
                  }

                  break;
                }

LABEL_23:
                value = valueCopy;
                v13 = v24;
                v12 = v25;
              }
            }

            ++v14;
          }

          while (v14 != v12);
          v12 = [readerAuthorizationBundleIdValues countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v12);
        v6 = v21;
        if (v23)
        {
          return 1;
        }

        else
        {
          return [selfCopy[4] setOverride:0 forService:v6];
        }
      }
    }
  }

  return result;
}

- (void)resetAllAuthorizationsForBundleId:(id)id
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(NSDictionary *)[(SRAuthorizationStore *)self readerAuthorizationValues] objectForKeyedSubscript:id];
  v5 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v17;
    *&v6 = 138412546;
    v14 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [+[SRSensorDescription sensorDescriptionForSensor:](SRSensorDescription sensorDescriptionForSensor:{v10), "authorizationService"}];
        v13 = SRLogAuthorizationStore;
        if (os_log_type_enabled(SRLogAuthorizationStore, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v14;
          idCopy = id;
          v22 = 2112;
          v23 = v12;
          _os_log_impl(&dword_1C914D000, v13, OS_LOG_TYPE_DEFAULT, "reset reader authorization for bundle %@ service %@", buf, 0x16u);
        }

        [(SRTCCStore *)self->_tccStore resetService:v12 forBundleId:id, v14];
        [(SRAuthorizationStore *)self updateOverrideOnAuthorizationChangeForService:v12 withPendingValue:0 forBundleId:id];
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v7);
  }
}

- (void)resetAllAuthorizations
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v16 = __46__SRAuthorizationStore_resetAllAuthorizations__block_invoke;
  v17 = &unk_1E83304F8;
  v18 = v3;
  __46__SRAuthorizationStore_resetAllAuthorizations__block_invoke(v15, [(SRAuthorizationStore *)self readerAuthorizationBundleIdValues], &__block_literal_global_2);
  writerAuthorizationValues = [(SRAuthorizationStore *)self writerAuthorizationValues];
  v16(v15, writerAuthorizationValues, &__block_literal_global_26);
  v5 = SRLogAuthorizationStore;
  if (os_log_type_enabled(SRLogAuthorizationStore, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v3;
    _os_log_impl(&dword_1C914D000, v5, OS_LOG_TYPE_DEFAULT, "reset authorization for services %@", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [(SRTCCStore *)self->_tccStore resetService:v10];
        [(SRTCCStore *)self->_tccStore setOverride:0 forService:v10];
      }

      v7 = [v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
    }

    while (v7);
  }
}

void *__46__SRAuthorizationStore_resetAllAuthorizations__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  result = [a2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  v17 = result;
  if (result)
  {
    v16 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(a2);
        }

        v19 = v6;
        v7 = *(*(&v24 + 1) + 8 * v6);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v8 = [a2 objectForKeyedSubscript:{v7, v16}];
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v21;
          do
          {
            v12 = 0;
            do
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v20 + 1) + 8 * v12);
              v14 = objc_autoreleasePoolPush();
              v15 = [SRSensorDescription sensorDescriptionForSensor:v13];
              if (v15)
              {
                [*(a1 + 32) addObject:{(*(a3 + 16))(a3, v15)}];
              }

              objc_autoreleasePoolPop(v14);
              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v10);
        }

        v6 = v19 + 1;
      }

      while ((v19 + 1) != v17);
      result = [a2 countByEnumeratingWithState:&v24 objects:v29 count:16];
      v17 = result;
    }

    while (result);
  }

  return result;
}

- (void)resetAuthorizationForService:(id)service bundleId:(id)id
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = SRLogAuthorizationStore;
  if (os_log_type_enabled(SRLogAuthorizationStore, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    serviceCopy = service;
    v10 = 2114;
    idCopy = id;
    _os_log_impl(&dword_1C914D000, v7, OS_LOG_TYPE_DEFAULT, "Reset authorization for service %@ and bundle id: %{public}@", &v8, 0x16u);
  }

  [(SRTCCStore *)self->_tccStore resetService:service forBundleId:id];
  [(SRAuthorizationStore *)self updateOverrideOnAuthorizationChangeForService:service withPendingValue:0 forBundleId:id];
}

- (BOOL)setAuthorizationForBundleId:(id)id service:(id)service value:(BOOL)value setOverride:(BOOL)override
{
  valueCopy = value;
  v17 = *MEMORY[0x1E69E9840];
  v11 = [id length];
  if (v11)
  {
    v11 = [service length];
    if (v11)
    {
      if ([id isEqualToString:@"com.apple.private.SensorKit._compositeBundle"])
      {
        v12 = SRLogAuthorizationStore;
        LODWORD(v11) = os_log_type_enabled(SRLogAuthorizationStore, OS_LOG_TYPE_FAULT);
        if (v11)
        {
          v15 = 138543362;
          v16 = @"com.apple.private.SensorKit._compositeBundle";
          _os_log_fault_impl(&dword_1C914D000, v12, OS_LOG_TYPE_FAULT, "Setting authorization for %{public}@ is not allowed", &v15, 0xCu);
          LOBYTE(v11) = 0;
        }
      }

      else
      {
        v13 = [(SRTCCStore *)self->_tccStore setValue:valueCopy forService:service bundleId:id];
        LOBYTE(v11) = !override & v13;
        if (override && (v13 & 1) != 0)
        {

          LOBYTE(v11) = [(SRAuthorizationStore *)self updateOverrideOnAuthorizationChangeForService:service withPendingValue:valueCopy forBundleId:id];
        }
      }
    }
  }

  return v11;
}

uint64_t __64__SRAuthorizationStore_readerAuthorizationInformationForSensors__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:a2];
  }

  return v4;
}

uint64_t __64__SRAuthorizationStore_writerAuthorizationInformationForSensors__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:a2];
  }

  return v4;
}

- (id)readerAuthorizationBundleIdValues
{
  v15 = *MEMORY[0x1E69E9840];
  readerAuthorizationValues = [(SRAuthorizationStore *)self readerAuthorizationValues];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSDictionary count](readerAuthorizationValues, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSDictionary *)readerAuthorizationValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(readerAuthorizationValues);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v8 isEqualToString:@"com.apple.sensorkit.dummy-bundle-id"] & 1) == 0)
        {
          [v3 setObject:-[NSDictionary objectForKeyedSubscript:](readerAuthorizationValues forKeyedSubscript:{"objectForKeyedSubscript:", v8), v8}];
        }
      }

      v5 = [(NSDictionary *)readerAuthorizationValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return [MEMORY[0x1E695DF20] dictionaryWithDictionary:v3];
}

- (BOOL)checkAccessForService:(id)service auditToken:(id *)token
{
  tccStore = self->_tccStore;
  v5 = *&token->var0[4];
  v7[0] = *token->var0;
  v7[1] = v5;
  return [(SRTCCStore *)tccStore checkAccessForService:service auditToken:v7];
}

@end