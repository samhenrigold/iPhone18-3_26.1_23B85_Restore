@interface BMAccessControlPolicy
+ (BOOL)allowsConfiguringConnection:(id)connection forUseCase:(id)case inDomain:(unint64_t)domain error:(id *)error;
+ (BOOL)process:(id)process canActOnBehalfOfProcess:(id)ofProcess;
+ (id)library;
+ (id)policyForProcess:(id)process connectionFlags:(unint64_t)flags onBehalfOfProcessWithAccessControlPolicy:(id)policy;
+ (id)policyForProcess:(id)process connectionFlags:(unint64_t)flags useCase:(id)case;
+ (id)syncableSetIdentifiers;
+ (void)library;
+ (void)setLegacyStreamNameMappingCallback:(id)callback;
+ (void)setLegacyViewResourceMappingCallback:(id)callback;
+ (void)setUUIDStreamNameMappingCallback:(id)callback;
- (BMAccessControlPolicy)init;
- (BMAccessControlPolicy)initWithProcess:(id)process connectionFlags:(unint64_t)flags useCase:(id)case;
- (BOOL)allowsAccessToAllSetsWithMode:(unint64_t)mode;
- (BOOL)allowsAccessToBiomeAgentForUser:(unsigned int)user;
- (BOOL)allowsAccessToClientCompute:(id)compute;
- (BOOL)allowsAccessToContextSync;
- (BOOL)allowsAccessToContextSyncStreams:(id)streams;
- (BOOL)allowsAccessToDatabase:(id)database withMode:(unint64_t)mode;
- (BOOL)allowsAccessToProxyBiomeAgentEndpoint;
- (BOOL)allowsAccessToResource:(id)resource withMode:(unint64_t)mode;
- (BOOL)allowsAccessToSet:(id)set withMode:(unint64_t)mode;
- (BOOL)allowsAccessToSetStoreUpdateServiceForSet:(id)set;
- (BOOL)allowsAccessToStream:(id)stream withMode:(unint64_t)mode;
- (BOOL)allowsAccessToSync;
- (BOOL)allowsAccessToSyncMergeableDeltas;
- (BOOL)allowsAccessToView:(id)view withMode:(unint64_t)mode;
- (BOOL)allowsAccessToWriteServiceForStream:(id)stream ofUser:(unsigned int)user;
- (BOOL)allowsComputePublisherAccessToStreams:(id)streams;
- (BOOL)allowsComputeSourceAccessToStream:(id)stream;
- (BOOL)allowsConnectionToAccessServiceWithDomain:(unint64_t)domain;
- (BOOL)allowsConnectionToComputePublisherService;
- (BOOL)allowsConnectionToComputeSourceServiceWithDomain:(unint64_t)domain;
- (BOOL)allowsConnectionToSetStoreUpdateService;
- (BOOL)allowsConnectionToWriteService;
- (BOOL)allowsProxyingBiomeEndpoint;
- (NSString)descriptionOfProcessAndUseCase;
- (id)authorizedResources;
- (id)explicitlyAuthorizedResourcesOfType:(unint64_t)type withAccessMode:(unint64_t)mode;
- (unint64_t)allowedModeForStream:(id)stream;
- (void)_warnAboutInternalEntitlement:(id)entitlement streamIdentifier:(id)identifier;
@end

@implementation BMAccessControlPolicy

- (id)authorizedResources
{
  v162 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  authorizedResources = self->_authorizedResources;
  selfCopy = self;
  if (authorizedResources)
  {
    v4 = authorizedResources;
    goto LABEL_3;
  }

  processType = [(BMProcess *)self->_process processType];
  if (!processType)
  {
    goto LABEL_23;
  }

  if (processType == 3)
  {
    v20 = objc_opt_new();
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    syncableSetIdentifiers = [objc_opt_class() syncableSetIdentifiers];
    v22 = [syncableSetIdentifiers countByEnumeratingWithState:&v118 objects:v131 count:16];
    if (v22)
    {
      v23 = *v119;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v119 != v23)
          {
            objc_enumerationMutation(syncableSetIdentifiers);
          }

          v25 = [[BMResourceSpecifier alloc] initWithType:4 name:*(*(&v118 + 1) + 8 * i)];
          [(NSDictionary *)v20 setObject:&unk_1F20EBC08 forKeyedSubscript:v25];
        }

        v22 = [syncableSetIdentifiers countByEnumeratingWithState:&v118 objects:v131 count:16];
      }

      while (v22);
    }

    v26 = selfCopy->_authorizedResources;
    selfCopy->_authorizedResources = v20;
    v27 = v20;

    v4 = selfCopy->_authorizedResources;
    goto LABEL_3;
  }

  if (processType == 8 && (os_variant_allows_internal_security_policies() & 1) == 0)
  {
LABEL_23:
    v19 = self->_authorizedResources;
    v4 = MEMORY[0x1E695E0F8];
    selfCopy->_authorizedResources = MEMORY[0x1E695E0F8];

    goto LABEL_3;
  }

  v96 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v7 = self->_useCase;
  *&v158 = @"__legacy__";
  v135 = @"com.apple.private.biome.read-only";
  v136 = @"com.apple.private.biome.read-write";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v135 count:2];
  v144[0] = v8;
  *(&v158 + 1) = @"__legacy_view__";
  v132[0] = @"com.apple.private.intelligenceplatform.views.read-only";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:1];
  v144[1] = v9;
  *&v159 = @"__writer__";
  *&v153 = @"com.apple.private.biome.write-only";
  *(&v153 + 1) = @"com.apple.private.biome.read-write";
  *&v154 = @"com.apple.private.biome.writer";
  *(&v154 + 1) = @"com.apple.private.intelligenceplatform.use-cases";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v153 count:4];
  v144[2] = v10;
  *(&v159 + 1) = @"__pruner__";
  *&v145 = @"com.apple.private.biome.read-write";
  *(&v145 + 1) = @"com.apple.private.biome.pruner";
  *&v146 = @"com.apple.private.biome.writer";
  *(&v146 + 1) = @"com.apple.private.intelligenceplatform.use-cases";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v145 count:4];
  v144[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v144 forKeys:&v158 count:4];

  v13 = [v12 objectForKeyedSubscript:v7];
  if (!v13)
  {
    v142[0] = @"com.apple.private.intelligenceplatform.use-cases";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:1];
  }

  if (os_variant_allows_internal_security_policies())
  {
    obj = [v13 mutableCopy];
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v149 objects:v157 count:16];
    if (v15)
    {
      v16 = *v150;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v150 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = BMAppleInternalVariantOfEntitlement(*(*(&v149 + 1) + 8 * j));
          if (v18)
          {
            [obj addObject:v18];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v149 objects:v157 count:16];
      }

      while (v15);
    }
  }

  else
  {
    obj = v13;
  }

  v94 = [obj countByEnumeratingWithState:&v114 objects:v130 count:16];
  if (v94)
  {
    v95 = *v115;
    do
    {
      v102 = 0;
      do
      {
        if (*v115 != v95)
        {
          objc_enumerationMutation(obj);
        }

        process = selfCopy->_process;
        useCase = selfCopy->_useCase;
        v30 = *(*(&v114 + 1) + 8 * v102);
        v31 = process;
        v32 = useCase;
        v106 = v30;
        v103 = v31;
        v104 = v32;
        if ((os_variant_allows_internal_security_policies() & 1) == 0 && ((BMEntitlementIsAppleInternal(v106, v33) & 1) != 0 || [(BMProcess *)v103 processType]== 8))
        {
LABEL_46:
          v36 = MEMORY[0x1E695E0F8];
          goto LABEL_99;
        }

        if (([v106 isEqual:@"com.apple.private.intelligenceplatform.use-cases"] & 1) == 0 && !objc_msgSend(v106, "isEqual:", @"com.apple.internal.intelligenceplatform.use-cases"))
        {
          if (([v106 isEqual:@"com.apple.private.biome.writer"] & 1) != 0 || (objc_msgSend(v106, "isEqual:", @"com.apple.internal.biome.writer") & 1) != 0 || (objc_msgSend(v106, "isEqual:", @"com.apple.private.biome.pruner") & 1) != 0 || objc_msgSend(v106, "isEqual:", @"com.apple.internal.biome.pruner"))
          {
            v37 = objc_opt_new();
            v151 = 0u;
            v152 = 0u;
            v149 = 0u;
            v150 = 0u;
            v38 = [(BMProcess *)v103 nonnullSetOfStringsForEntitlement:v106];
            v39 = [v38 countByEnumeratingWithState:&v149 objects:v157 count:16];
            if (v39)
            {
              v40 = *v150;
              do
              {
                for (k = 0; k != v39; ++k)
                {
                  if (*v150 != v40)
                  {
                    objc_enumerationMutation(v38);
                  }

                  [v37 setObject:&unk_1F20EBC08 forKeyedSubscript:*(*(&v149 + 1) + 8 * k)];
                }

                v39 = [v38 countByEnumeratingWithState:&v149 objects:v157 count:16];
              }

              while (v39);
            }

            databaseForViewName = v37;

            v42 = objc_opt_new();
            v128[0] = MEMORY[0x1E69E9820];
            v128[1] = 3221225472;
            v128[2] = __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke_3;
            v128[3] = &unk_1E796AD30;
            v129 = v42;
            v110 = v42;
            [v37 enumerateKeysAndObjectsUsingBlock:v128];
            v36 = [v110 copy];
            allKeys = v129;
            goto LABEL_96;
          }

          if (([v106 isEqual:@"com.apple.private.biome.write-only"] & 1) != 0 || objc_msgSend(v106, "isEqual:", @"com.apple.internal.biome.write-only"))
          {
            v63 = objc_opt_new();
            v151 = 0u;
            v152 = 0u;
            v149 = 0u;
            v150 = 0u;
            v64 = [(BMProcess *)v103 nonnullSetOfStringsForEntitlement:v106];
            v65 = [v64 countByEnumeratingWithState:&v149 objects:v157 count:16];
            if (v65)
            {
              v66 = *v150;
              do
              {
                for (m = 0; m != v65; ++m)
                {
                  if (*v150 != v66)
                  {
                    objc_enumerationMutation(v64);
                  }

                  [v63 setObject:&unk_1F20EBC50 forKeyedSubscript:*(*(&v149 + 1) + 8 * m)];
                }

                v65 = [v64 countByEnumeratingWithState:&v149 objects:v157 count:16];
              }

              while (v65);
            }

            databaseForViewName = v63;

            v68 = objc_opt_new();
            v126[0] = MEMORY[0x1E69E9820];
            v126[1] = 3221225472;
            v126[2] = __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke_321;
            v126[3] = &unk_1E796AD30;
            v127 = v68;
            v110 = v68;
            [v63 enumerateKeysAndObjectsUsingBlock:v126];
            v36 = [v110 copy];
            allKeys = v127;
            goto LABEL_96;
          }

          if (([v106 isEqual:@"com.apple.private.biome.read-only"] & 1) != 0 || objc_msgSend(v106, "isEqual:", @"com.apple.internal.biome.read-only"))
          {
            v69 = objc_opt_new();
            v151 = 0u;
            v152 = 0u;
            v149 = 0u;
            v150 = 0u;
            v70 = [(BMProcess *)v103 nonnullSetOfStringsForEntitlement:v106];
            v71 = [v70 countByEnumeratingWithState:&v149 objects:v157 count:16];
            if (v71)
            {
              v72 = *v150;
              do
              {
                for (n = 0; n != v71; ++n)
                {
                  if (*v150 != v72)
                  {
                    objc_enumerationMutation(v70);
                  }

                  [v69 setObject:&unk_1F20EBC38 forKeyedSubscript:*(*(&v149 + 1) + 8 * n)];
                }

                v71 = [v70 countByEnumeratingWithState:&v149 objects:v157 count:16];
              }

              while (v71);
            }

            databaseForViewName = v69;

            v74 = objc_opt_new();
            v124[0] = MEMORY[0x1E69E9820];
            v124[1] = 3221225472;
            v124[2] = __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke_2_322;
            v124[3] = &unk_1E796AD30;
            v125 = v74;
            v110 = v74;
            [v69 enumerateKeysAndObjectsUsingBlock:v124];
            v36 = [v110 copy];
            allKeys = v125;
            goto LABEL_96;
          }

          if (([v106 isEqual:@"com.apple.private.biome.read-write"] & 1) != 0 || objc_msgSend(v106, "isEqual:", @"com.apple.internal.biome.read-write"))
          {
            v75 = objc_opt_new();
            v151 = 0u;
            v152 = 0u;
            v149 = 0u;
            v150 = 0u;
            v76 = [(BMProcess *)v103 nonnullSetOfStringsForEntitlement:v106];
            v77 = [v76 countByEnumeratingWithState:&v149 objects:v157 count:16];
            if (v77)
            {
              v78 = *v150;
              do
              {
                for (ii = 0; ii != v77; ++ii)
                {
                  if (*v150 != v78)
                  {
                    objc_enumerationMutation(v76);
                  }

                  [v75 setObject:&unk_1F20EBC08 forKeyedSubscript:*(*(&v149 + 1) + 8 * ii)];
                }

                v77 = [v76 countByEnumeratingWithState:&v149 objects:v157 count:16];
              }

              while (v77);
            }

            databaseForViewName = v75;

            v80 = objc_opt_new();
            v122[0] = MEMORY[0x1E69E9820];
            v122[1] = 3221225472;
            v122[2] = __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke_3_323;
            v122[3] = &unk_1E796AD30;
            v123 = v80;
            v110 = v80;
            [v75 enumerateKeysAndObjectsUsingBlock:v122];
            v36 = [v110 copy];
            allKeys = v123;
            goto LABEL_96;
          }

          if (![v106 isEqual:@"com.apple.private.intelligenceplatform.views.read-only"])
          {
            goto LABEL_46;
          }

          v81 = legacyViewResourceMapper();
          databaseForViewName = [v81 databaseForViewName];

          if (!databaseForViewName)
          {
            v36 = objc_opt_new();
            v34 = 0;
            goto LABEL_98;
          }

          v110 = [(BMProcess *)v103 nonnullArrayForEntitlement:v106];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v83 = objc_opt_new();
          allKeys = v83;
          if (isKindOfClass)
          {
            v151 = 0u;
            v152 = 0u;
            v149 = 0u;
            v150 = 0u;
            v110 = v110;
            v84 = [v110 countByEnumeratingWithState:&v149 objects:v157 count:16];
            if (v84)
            {
              v85 = *v150;
              do
              {
                for (jj = 0; jj != v84; ++jj)
                {
                  if (*v150 != v85)
                  {
                    objc_enumerationMutation(v110);
                  }

                  v87 = *(*(&v149 + 1) + 8 * jj);
                  v88 = objc_autoreleasePoolPush();
                  v89 = (*(databaseForViewName + 16))(databaseForViewName, v87);
                  if (v89)
                  {
                    v90 = [[BMResourceSpecifier alloc] initWithType:3 name:v89];
                    if (v90)
                    {
                      [allKeys setObject:&unk_1F20EBC38 forKeyedSubscript:v90];
                    }
                  }

                  objc_autoreleasePoolPop(v88);
                }

                v84 = [v110 countByEnumeratingWithState:&v149 objects:v157 count:16];
              }

              while (v84);
            }

            v36 = [allKeys copy];
            goto LABEL_96;
          }

          v36 = v83;
LABEL_97:

          v34 = databaseForViewName;
          goto LABEL_98;
        }

        v34 = [(BMProcess *)v103 dictionaryForEntitlement:v106];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([(NSString *)v104 isEqualToString:@"__pruner__"])
          {
            v35 = 1;
          }

          else
          {
            v35 = [(NSString *)v104 isEqualToString:@"__writer__"];
          }

          v110 = objc_opt_new();
          v161 = 0u;
          v160 = 0u;
          v159 = 0u;
          v158 = 0u;
          allKeys = [v34 allKeys];
          v44 = [allKeys countByEnumeratingWithState:&v158 objects:v157 count:16];
          databaseForViewName = v34;
          if (v44)
          {
            v99 = *v159;
            v97 = allKeys;
            v108 = v35;
LABEL_63:
            v45 = 0;
            v98 = v44;
            while (1)
            {
              if (*v159 != v99)
              {
                objc_enumerationMutation(allKeys);
              }

              v46 = *(*(&v158 + 1) + 8 * v45);
              if ((v35 & 1) != 0 || [(NSString *)v104 isEqualToString:*(*(&v158 + 1) + 8 * v45)])
              {
                break;
              }

LABEL_92:
              if (++v45 == v44)
              {
                v44 = [allKeys countByEnumeratingWithState:&v158 objects:v157 count:16];
                if (!v44)
                {
                  goto LABEL_94;
                }

                goto LABEL_63;
              }
            }

            v47 = [v34 objectForKeyedSubscript:v46];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v155 = 0u;
              v156 = 0u;
              v153 = 0u;
              v154 = 0u;
              v48 = v47;
              v49 = [v48 countByEnumeratingWithState:&v153 objects:&v149 count:16];
              v101 = v45;
              if (!v49)
              {
                goto LABEL_91;
              }

              v111 = *v154;
              v109 = v48;
              while (1)
              {
                for (kk = 0; kk != v49; ++kk)
                {
                  if (*v154 != v111)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v51 = *(*(&v153 + 1) + 8 * kk);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v52 = BMResourceTypeFromEntitlementResourceTypeString(v51);
                    if (v52)
                    {
                      v53 = objc_opt_new();
                      v54 = [v48 objectForKeyedSubscript:v51];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v55 = BMNonnullSetOfStringsFromEntitlementValue(v54);
                        v147 = 0u;
                        v148 = 0u;
                        v145 = 0u;
                        v146 = 0u;
                        v56 = [v55 countByEnumeratingWithState:&v145 objects:v144 count:16];
                        if (v56)
                        {
                          v57 = *v146;
                          do
                          {
                            for (mm = 0; mm != v56; ++mm)
                            {
                              if (*v146 != v57)
                              {
                                objc_enumerationMutation(v55);
                              }

                              [v53 setObject:&unk_1F20EBC38 forKeyedSubscript:*(*(&v145 + 1) + 8 * mm)];
                            }

                            v56 = [v55 countByEnumeratingWithState:&v145 objects:v144 count:16];
                          }

                          while (v56);
                          v35 = v108;
                          v48 = v109;
                        }

LABEL_87:
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v142[0] = MEMORY[0x1E69E9820];
                          v142[1] = 3221225472;
                          v142[2] = __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke;
                          v142[3] = &unk_1E796ACE0;
                          v143 = v53;
                          [v54 enumerateKeysAndObjectsUsingBlock:v142];
                          v55 = v143;
                          goto LABEL_87;
                        }
                      }

                      v135 = MEMORY[0x1E69E9820];
                      v136 = 3221225472;
                      v137 = __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke_2;
                      v138 = &unk_1E796AD08;
                      v141 = v35;
                      v140 = v52;
                      v139 = v110;
                      [v53 enumerateKeysAndObjectsUsingBlock:&v135];

                      continue;
                    }
                  }
                }

                v49 = [v48 countByEnumeratingWithState:&v153 objects:&v149 count:16];
                if (!v49)
                {
LABEL_91:

                  v34 = databaseForViewName;
                  v45 = v101;
                  allKeys = v97;
                  v44 = v98;
                  goto LABEL_92;
                }
              }
            }

            v36 = MEMORY[0x1E695E0F8];
LABEL_96:
          }

          else
          {
LABEL_94:

            v36 = [v110 copy];
          }

          goto LABEL_97;
        }

        v36 = MEMORY[0x1E695E0F8];
LABEL_98:

LABEL_99:
        v59 = objc_opt_new();
        v132[0] = MEMORY[0x1E69E9820];
        v132[1] = 3221225472;
        v132[2] = __BMNormalizedResourcesAndAccessModesListedUnderEntitlement_block_invoke;
        v132[3] = &unk_1E796ACB8;
        v133 = v59;
        v134 = v103;
        v60 = v103;
        v61 = v59;
        [v36 enumerateKeysAndObjectsUsingBlock:v132];
        v62 = [v61 copy];

        v112[0] = MEMORY[0x1E69E9820];
        v112[1] = 3221225472;
        v112[2] = __44__BMAccessControlPolicy_authorizedResources__block_invoke;
        v112[3] = &unk_1E796AC38;
        v113 = v96;
        [v62 enumerateKeysAndObjectsUsingBlock:v112];

        ++v102;
      }

      while (v102 != v94);
      v91 = [obj countByEnumeratingWithState:&v114 objects:v130 count:16];
      v94 = v91;
    }

    while (v91);
  }

  v92 = [v96 copy];
  v93 = selfCopy->_authorizedResources;
  selfCopy->_authorizedResources = v92;

  v4 = v92;
LABEL_3:
  os_unfair_lock_unlock(&selfCopy->_lock);

  return v4;
}

+ (id)library
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr;
  v9 = getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr;
  if (!getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr)
  {
    v3 = BiomeStreamsLibrary();
    v7[3] = dlsym(v3, "BiomeLibraryAndInternalLibraryNode");
    getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    +[BMAccessControlPolicy library];
  }

  v4 = v2();

  return v4;
}

void __44__BMAccessControlPolicy_authorizedResources__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = [a3 unsignedIntegerValue];
  if (v5)
  {
    v6 = v5;
    v7 = [*(a1 + 32) objectForKeyedSubscript:v13];
    v8 = [v7 unsignedIntegerValue];
    v9 = 2;
    v10 = v8 == 1 && v6 == 3;
    v11 = 3;
    if (!v10)
    {
      v11 = v8;
    }

    if (v8 == 2)
    {
      v11 = 2;
    }

    if (v6 != 2)
    {
      v9 = v11;
    }

    if (v8)
    {
      v6 = v9;
    }

    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    [*(a1 + 32) setObject:v12 forKeyedSubscript:v13];
  }
}

- (BOOL)allowsConnectionToSetStoreUpdateService
{
  identifier = [(BMProcess *)self->_process identifier];

  if (!identifier)
  {
    return 0;
  }

  processType = [(BMProcess *)self->_process processType];
  result = 0;
  if (processType <= 3)
  {
    if (!processType)
    {
      return result;
    }

    if (processType == 2 || processType == 3)
    {
      return 1;
    }

    return [(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| os_variant_allows_internal_security_policies() && [(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"];
  }

  if ((processType - 4) < 2)
  {
    return result;
  }

  if (processType != 8)
  {
    return [(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| os_variant_allows_internal_security_policies() && [(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"];
  }

  return os_variant_allows_internal_security_policies();
}

- (BOOL)allowsConnectionToWriteService
{
  identifier = [(BMProcess *)self->_process identifier];

  if (!identifier)
  {
    return 0;
  }

  processType = [(BMProcess *)self->_process processType];
  if (processType - 2 < 4 || processType == 0)
  {
    return 0;
  }

  if (processType != 8)
  {
    return [(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.write-only"]|| os_variant_allows_internal_security_policies() && ([(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.write-only"]);
  }

  return os_variant_allows_internal_security_policies();
}

- (NSString)descriptionOfProcessAndUseCase
{
  v3 = [(NSString *)self->_useCase hasPrefix:@"__"];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  executableName = [(BMProcess *)self->_process executableName];
  v6 = executableName;
  if (v3)
  {
    v7 = [v4 initWithFormat:@"'%@'", executableName, v10];
  }

  else
  {
    v7 = [v4 initWithFormat:@"'%@' use case '%@'", executableName, self->_useCase];
  }

  v8 = v7;

  return v8;
}

+ (void)setLegacyViewResourceMappingCallback:(id)callback
{
  callbackCopy = callback;
  v4 = legacyViewResourceMapper();
  [v4 setDatabaseForViewName:callbackCopy];
}

+ (void)setLegacyStreamNameMappingCallback:(id)callback
{
  callbackCopy = callback;
  v4 = legacyViewResourceMapper();
  [v4 setStreamIdentifierForLegacyStreamName:callbackCopy];
}

+ (void)setUUIDStreamNameMappingCallback:(id)callback
{
  callbackCopy = callback;
  v4 = legacyViewResourceMapper();
  [v4 setStreamIdentifierForUUIDString:callbackCopy];
}

+ (id)policyForProcess:(id)process connectionFlags:(unint64_t)flags useCase:(id)case
{
  processCopy = process;
  caseCopy = case;
  v10 = +[BMAccessControlPolicy library];
  if (processCopy)
  {
    if ((flags & 1) == 0)
    {
      v11 = [[self alloc] initWithProcess:processCopy connectionFlags:flags useCase:caseCopy];
      goto LABEL_8;
    }

    v12 = __biome_log_for_category(6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [BMAccessControlPolicy policyForProcess:v12 connectionFlags:? useCase:?];
    }
  }

  v11 = 0;
LABEL_8:

  return v11;
}

+ (id)policyForProcess:(id)process connectionFlags:(unint64_t)flags onBehalfOfProcessWithAccessControlPolicy:(id)policy
{
  processCopy = process;
  policyCopy = policy;
  v10 = +[BMAccessControlPolicy library];
  v11 = 0;
  if (processCopy && policyCopy)
  {
    v12 = [self alloc];
    useCase = [policyCopy useCase];
    v11 = [v12 initWithProcess:processCopy connectionFlags:flags | 1 useCase:useCase];

    objc_storeStrong(v11 + 1, policy);
  }

  return v11;
}

- (BMAccessControlPolicy)init
{
  v3 = +[BMAccessControlPolicy library];

  return 0;
}

- (BMAccessControlPolicy)initWithProcess:(id)process connectionFlags:(unint64_t)flags useCase:(id)case
{
  processCopy = process;
  caseCopy = case;
  v11 = +[BMAccessControlPolicy library];
  if (processCopy)
  {
    v19.receiver = self;
    v19.super_class = BMAccessControlPolicy;
    v12 = [(BMAccessControlPolicy *)&v19 init];
    v13 = v12;
    if (v12)
    {
      v12->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v12->_process, process);
      v14 = [caseCopy copy];
      useCase = v13->_useCase;
      v13->_useCase = v14;

      authorizedResources = v13->_authorizedResources;
      v13->_authorizedResources = 0;

      v13->_connectionFlags = flags;
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)allowsConnectionToAccessServiceWithDomain:(unint64_t)domain
{
  p_process = &self->_process;
  if (![(BMProcess *)self->_process processType])
  {
    return 0;
  }

  [(BMProcess *)*p_process identifier];

  if ([(BMProcess *)*p_process processType]== 2 || [(BMProcess *)*p_process processType]== 3 || [(BMProcess *)*p_process processType]== 4 || [(BMProcess *)*p_process processType]== 5 || [(BMProcess *)*p_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.writer"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.pruner"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-write"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-only"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.write-only"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.private.intelligenceplatform.views.read-only"]|| os_variant_allows_internal_security_policies() && ([(BMProcess *)*p_process processType]== 8 || [(BMProcess *)*p_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.writer"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.pruner"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-write"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-only"]|| [(BMProcess *)*p_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.write-only"]))
  {
    return 1;
  }

  v5 = [(BMProcess *)*p_process BOOLForEntitlement:@"com.apple.private.security.storage.Biome"];
  v6 = *p_process;
  if (!v5)
  {
    if ([(BMProcess *)v6 BOOLForEntitlement:@"com.apple.rootless.storage.coreduet_knowledge_store"]|| [(BMProcess *)*p_process BOOLForEntitlement:@"com.apple.coreduetd.allow"])
    {
      v9 = __biome_log_for_category(6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [BMAccessControlPolicy allowsConnectionToAccessServiceWithDomain:?];
      }

      goto LABEL_30;
    }

    return 0;
  }

  executableName = [(BMProcess *)v6 executableName];
  v8 = [&unk_1F20EBE30 containsObject:executableName];

  if ((v8 & 1) == 0)
  {
    v9 = __biome_log_for_category(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(BMAccessControlPolicy *)p_process allowsConnectionToAccessServiceWithDomain:v9];
    }

LABEL_30:
    v4 = !v5;

    return v4;
  }

  return 1;
}

- (BOOL)allowsAccessToStream:(id)stream withMode:(unint64_t)mode
{
  streamCopy = stream;
  v7 = streamCopy;
  v8 = 0;
  if (!mode || !self->_process)
  {
    goto LABEL_27;
  }

  if (!BMIdentifierIsPathSafe(streamCopy))
  {
    goto LABEL_26;
  }

  processType = [(BMProcess *)self->_process processType];
  v8 = 1;
  if (processType > 4)
  {
    if ((processType - 6) < 2)
    {
      goto LABEL_27;
    }

    if (processType == 5)
    {
      goto LABEL_26;
    }

    if (processType == 8)
    {
      v10 = os_variant_allows_internal_security_policies();
LABEL_13:
      v8 = v10;
      goto LABEL_27;
    }
  }

  else if (processType > 2)
  {
    if (processType != 3)
    {
      onBehalfOf = self->_onBehalfOf;
      if (onBehalfOf && [(BMAccessControlPolicy *)onBehalfOf allowsAccessToStream:v7 withMode:2])
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }

    v12 = BMSyncableStreamIdentifiers(3);
    v13 = [v12 containsObject:v7];

    if (v13)
    {
LABEL_22:
      v8 = 1;
      goto LABEL_27;
    }
  }

  else
  {
    if (!processType)
    {
      goto LABEL_26;
    }

    if (processType == 2)
    {
      goto LABEL_27;
    }
  }

  v14 = [v7 hasSuffix:@":subscriptions"];
  v15 = [v7 hasSuffix:@":tombstones"];
  if ([v7 hasPrefix:@"_DK"])
  {
    if (((v14 | v15) & 1) == 0)
    {
      if ([(BMProcess *)self->_process BOOLForEntitlement:@"com.apple.rootless.storage.coreduet_knowledge_store"])
      {
        goto LABEL_22;
      }

      v10 = [(BMProcess *)self->_process BOOLForEntitlement:@"com.apple.coreduetd.allow"];
      goto LABEL_13;
    }

LABEL_26:
    v8 = 0;
    goto LABEL_27;
  }

  if (v14)
  {
    if ((mode & 2) != 0)
    {
      goto LABEL_26;
    }

    v16 = [v7 componentsSeparatedByString:@":"];
    firstObject = [v16 firstObject];

    selfCopy2 = self;
    modeCopy = 2;
LABEL_30:
    v22 = [(BMAccessControlPolicy *)selfCopy2 explicitlyAuthorizedResourcesOfType:1 withAccessMode:modeCopy];
    v8 = [v22 containsObject:firstObject];

    goto LABEL_27;
  }

  if (v15)
  {
    v21 = [v7 componentsSeparatedByString:@":"];
    firstObject = [v21 firstObject];

    selfCopy2 = self;
    modeCopy = mode;
    goto LABEL_30;
  }

  v8 = 1;
  v23 = [(BMAccessControlPolicy *)self explicitlyAuthorizedResourcesOfType:1 withAccessMode:mode];
  if (([v23 containsObject:v7] & 1) == 0)
  {
    v8 = 0;
    if ([(BMProcess *)self->_process BOOLForEntitlement:@"com.apple.private.security.storage.Biome"])
    {
      executableName = [(BMProcess *)self->_process executableName];
      v25 = [&unk_1F20EBE48 containsObject:executableName];

      if (v25)
      {
        v8 = 1;
      }
    }
  }

LABEL_27:
  return v8;
}

- (BOOL)allowsAccessToDatabase:(id)database withMode:(unint64_t)mode
{
  databaseCopy = database;
  v7 = databaseCopy;
  v8 = 0;
  if (mode && self->_process)
  {
    if (BMIdentifierIsPathSafe(databaseCopy))
    {
      processType = [(BMProcess *)self->_process processType];
      if (processType > 8)
      {
LABEL_10:
        if (processType)
        {
          v11 = [(BMAccessControlPolicy *)self explicitlyAuthorizedResourcesOfType:3 withAccessMode:mode];
          v8 = [v11 containsObject:v7];

          goto LABEL_12;
        }

        goto LABEL_11;
      }

      if (((1 << processType) & 0x38) == 0)
      {
        if (((1 << processType) & 0xC4) != 0)
        {
          v8 = 1;
          goto LABEL_12;
        }

        if (processType == 8)
        {
          v8 = os_variant_allows_internal_security_policies();
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

LABEL_11:
    v8 = 0;
  }

LABEL_12:

  return v8;
}

- (BOOL)allowsAccessToView:(id)view withMode:(unint64_t)mode
{
  viewCopy = view;
  v7 = viewCopy;
  v8 = 0;
  if (mode && self->_process)
  {
    if (BMIdentifierIsPathSafe(viewCopy))
    {
      processType = [(BMProcess *)self->_process processType];
      if (processType > 8)
      {
LABEL_10:
        if (processType)
        {
          v11 = [(BMAccessControlPolicy *)self explicitlyAuthorizedResourcesOfType:2 withAccessMode:mode];
          v8 = [v11 containsObject:v7];

          goto LABEL_12;
        }

        goto LABEL_11;
      }

      if (((1 << processType) & 0x38) == 0)
      {
        if (((1 << processType) & 0xC4) != 0)
        {
          v8 = 1;
          goto LABEL_12;
        }

        if (processType == 8)
        {
          v8 = os_variant_allows_internal_security_policies();
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

LABEL_11:
    v8 = 0;
  }

LABEL_12:

  return v8;
}

- (BOOL)allowsAccessToSet:(id)set withMode:(unint64_t)mode
{
  setCopy = set;
  v7 = setCopy;
  v8 = 0;
  if (mode && self->_process)
  {
    if (!BMIdentifierIsPathSafe(setCopy))
    {
      goto LABEL_22;
    }

    if ([v7 isEqual:@"BMSetsResource"])
    {
      v9 = [(BMAccessControlPolicy *)self allowsAccessToAllSetsWithMode:mode];
LABEL_6:
      v8 = v9;
      goto LABEL_23;
    }

    processType = [(BMProcess *)self->_process processType];
    v8 = 1;
    if (processType <= 4)
    {
      if (processType > 2)
      {
        if (processType == 3)
        {
          syncableSetIdentifiers = [objc_opt_class() syncableSetIdentifiers];
          v12 = [syncableSetIdentifiers containsObject:v7];

          if (v12)
          {
            v8 = 1;
            goto LABEL_23;
          }

          goto LABEL_19;
        }
      }

      else if (processType)
      {
        if (processType == 2)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }

      goto LABEL_22;
    }

    if ((processType - 6) < 2)
    {
      goto LABEL_23;
    }

    if (processType != 5)
    {
      if (processType == 8)
      {
        v9 = os_variant_allows_internal_security_policies();
        goto LABEL_6;
      }

LABEL_19:
      v13 = [(BMAccessControlPolicy *)self explicitlyAuthorizedResourcesOfType:4 withAccessMode:mode];
      v8 = [v13 containsObject:v7];

      goto LABEL_23;
    }

    onBehalfOf = self->_onBehalfOf;
    if (!onBehalfOf || ![(BMAccessControlPolicy *)onBehalfOf allowsAccessToSet:v7 withMode:3])
    {
LABEL_22:
      v8 = 0;
    }
  }

LABEL_23:

  return v8;
}

- (BOOL)allowsAccessToResource:(id)resource withMode:(unint64_t)mode
{
  resourceCopy = resource;
  type = [resourceCopy type];
  LOBYTE(v8) = 0;
  if (type <= 2)
  {
    if (type == 1)
    {
      name = [resourceCopy name];
      v11 = [(BMAccessControlPolicy *)self allowsAccessToStream:name withMode:mode];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_14;
      }

      name = [resourceCopy name];
      v11 = [(BMAccessControlPolicy *)self allowsAccessToView:name withMode:mode];
    }

LABEL_13:
    LOBYTE(v8) = v11;

    goto LABEL_14;
  }

  switch(type)
  {
    case 3:
      name = [resourceCopy name];
      v11 = [(BMAccessControlPolicy *)self allowsAccessToDatabase:name withMode:mode];
      goto LABEL_13;
    case 4:
      name = [resourceCopy name];
      v11 = [(BMAccessControlPolicy *)self allowsAccessToSet:name withMode:mode];
      goto LABEL_13;
    case 5:
      name2 = [resourceCopy name];
      if ([name2 isEqual:@"BMSyncResource"])
      {
      }

      else
      {
        name3 = [resourceCopy name];
        v14 = [name3 isEqual:@"BMSharedSyncResource"];

        if (!v14)
        {
          name4 = [resourceCopy name];
          v8 = [name4 isEqual:@"BMSetsMergeableDeltasResource"];

          if (!v8)
          {
            break;
          }

          allowsAccessToSyncMergeableDeltas = [(BMAccessControlPolicy *)self allowsAccessToSyncMergeableDeltas];
          goto LABEL_17;
        }
      }

      allowsAccessToSyncMergeableDeltas = [(BMAccessControlPolicy *)self allowsAccessToSync];
LABEL_17:
      LOBYTE(v8) = allowsAccessToSyncMergeableDeltas;
      break;
  }

LABEL_14:

  return v8;
}

- (id)explicitlyAuthorizedResourcesOfType:(unint64_t)type withAccessMode:(unint64_t)mode
{
  v24 = *MEMORY[0x1E69E9840];
  if (mode)
  {
    v7 = [MEMORY[0x1E695DFA8] set];
    authorizedResources = [(BMAccessControlPolicy *)self authorizedResources];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [authorizedResources countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(authorizedResources);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          if ([v13 type] == type)
          {
            v14 = [authorizedResources objectForKeyedSubscript:v13];
            unsignedIntegerValue = [v14 unsignedIntegerValue];

            if (unsignedIntegerValue)
            {
              if (unsignedIntegerValue == mode || unsignedIntegerValue == 3)
              {
                name = [v13 name];
                [v7 addObject:name];
              }
            }
          }
        }

        v10 = [authorizedResources countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)allowedModeForStream:(id)stream
{
  streamCopy = stream;
  if ([streamCopy hasSuffix:@":subscriptions"])
  {
    if ([(BMProcess *)self->_process processType]== 2)
    {
      v5 = 3;
      goto LABEL_12;
    }

    if ([(BMAccessControlPolicy *)self allowsAccessToStream:streamCopy withMode:3]|| [(BMAccessControlPolicy *)self allowsAccessToStream:streamCopy withMode:2])
    {
      v5 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = 3;
  if (![(BMAccessControlPolicy *)self allowsAccessToStream:streamCopy withMode:3])
  {
    v5 = 1;
    if (![(BMAccessControlPolicy *)self allowsAccessToStream:streamCopy withMode:1])
    {
      v5 = 2;
      if (![(BMAccessControlPolicy *)self allowsAccessToStream:streamCopy withMode:2])
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:

  return v5;
}

- (BOOL)allowsAccessToSync
{
  process = self->_process;
  if (process)
  {
    process = [(BMProcess *)process processType];
    if (process)
    {
      LOBYTE(process) = [(BMProcess *)self->_process processType]== 3 || os_variant_allows_internal_security_policies() && [(BMProcess *)self->_process processType]== 8;
    }
  }

  return process;
}

- (BOOL)allowsAccessToSyncMergeableDeltas
{
  process = self->_process;
  if (process)
  {
    processType = [process processType];
    if (processType > 8 || ((1 << processType) & 0x1D3) != 0)
    {
      LOBYTE(process) = 0;
    }

    else if (((1 << processType) & 0xC) != 0)
    {
      LOBYTE(process) = 1;
    }

    else
    {
      process = self->_onBehalfOf;
      if (process)
      {

        LOBYTE(process) = [process allowsAccessToSyncMergeableDeltas];
      }
    }
  }

  return process;
}

- (BOOL)allowsAccessToAllSetsWithMode:(unint64_t)mode
{
  process = self->_process;
  if (!process)
  {
    return process;
  }

  process = [process processType];
  if (process > 8)
  {
    goto LABEL_10;
  }

  if (((1 << process) & 0xD8) != 0)
  {
    LOBYTE(process) = 0;
    return process;
  }

  if (process != 5)
  {
    if (process == 8)
    {

      LOBYTE(process) = os_variant_allows_internal_security_policies();
      return process;
    }

LABEL_10:
    if (process)
    {
      LOBYTE(process) = process == 2;
    }

    else
    {
      LOBYTE(process) = 0;
    }

    return process;
  }

  process = self->_onBehalfOf;
  if (process)
  {

    LOBYTE(process) = [process allowsAccessToAllSetsWithMode:mode];
  }

  return process;
}

- (BOOL)allowsConnectionToComputePublisherService
{
  identifier = [(BMProcess *)self->_process identifier];

  if (!identifier)
  {
    goto LABEL_6;
  }

  processType = [(BMProcess *)self->_process processType];
  if (processType > 8)
  {
    goto LABEL_12;
  }

  if (((1 << processType) & 0xCC) != 0)
  {
LABEL_4:
    LOBYTE(processType) = 1;
    return processType;
  }

  if (((1 << processType) & 0x30) != 0)
  {
LABEL_6:
    LOBYTE(processType) = 0;
    return processType;
  }

  if (processType != 8)
  {
LABEL_12:
    if (!processType)
    {
      return processType;
    }

    if ([(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-only"]|| os_variant_allows_internal_security_policies() && ([(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-only"]))
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  LOBYTE(processType) = os_variant_allows_internal_security_policies();
  return processType;
}

- (BOOL)allowsComputePublisherAccessToStreams:(id)streams
{
  v30 = *MEMORY[0x1E69E9840];
  streamsCopy = streams;
  process = self->_process;
  if (!process || ([(BMProcess *)process identifier], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v13 = 0;
    goto LABEL_21;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = streamsCopy;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (!BMIdentifierIsPathSafe(*(*(&v24 + 1) + 8 * i)))
        {

          goto LABEL_19;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  processType = [(BMProcess *)self->_process processType];
  v13 = 1;
  if (processType <= 3)
  {
    if (processType)
    {
      if (processType != 2)
      {
        if (processType == 3)
        {
          v14 = BMSyncableStreamIdentifiers(3);
          streamsCopy = [v7 bm_setBySubtractingSet:v14];

          if (![streamsCopy count])
          {
            v13 = 1;
            goto LABEL_21;
          }

          v7 = streamsCopy;
        }

        goto LABEL_26;
      }

LABEL_20:
      streamsCopy = v7;
      goto LABEL_21;
    }

LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  if ((processType - 4) < 2)
  {
    goto LABEL_19;
  }

  if ((processType - 6) < 2)
  {
    goto LABEL_20;
  }

  if (processType == 8)
  {
    v13 = os_variant_allows_internal_security_policies();
    goto LABEL_20;
  }

LABEL_26:
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  streamsCopy = v7;
  v16 = [streamsCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    while (2)
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(streamsCopy);
        }

        if (![(BMAccessControlPolicy *)self allowsAccessToStream:*(*(&v20 + 1) + 8 * j) withMode:1, v20])
        {
          v13 = 0;
          goto LABEL_36;
        }
      }

      v17 = [streamsCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_36:

LABEL_21:
  return v13;
}

- (BOOL)allowsConnectionToComputeSourceServiceWithDomain:(unint64_t)domain
{
  process = self->_process;
  if (!process)
  {
    return process;
  }

  [process identifier];

  process = [(BMProcess *)self->_process processType];
  if (process > 8)
  {
    goto LABEL_15;
  }

  if (((1 << process) & 0xCC) != 0)
  {
LABEL_4:
    LOBYTE(process) = 1;
    return process;
  }

  if (((1 << process) & 0x30) != 0)
  {
    process = self->_onBehalfOf;
    if (process)
    {

      LOBYTE(process) = [process allowsConnectionToComputeSourceServiceWithDomain:domain];
    }

    return process;
  }

  if (process == 8)
  {

    LOBYTE(process) = os_variant_allows_internal_security_policies();
  }

  else
  {
LABEL_15:
    if (!process)
    {
      return process;
    }

    if ([(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.write-only"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.writer"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.pruner"]|| os_variant_allows_internal_security_policies() && ([(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.write-only"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.writer"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.pruner"]))
    {
      goto LABEL_4;
    }

    LOBYTE(process) = 0;
  }

  return process;
}

- (BOOL)allowsComputeSourceAccessToStream:(id)stream
{
  v4 = [stream componentsSeparatedByString:@":"];
  firstObject = [v4 firstObject];

  process = self->_process;
  if (!process)
  {
    goto LABEL_15;
  }

  [(BMProcess *)process identifier];

  if (!BMIdentifierIsPathSafe(firstObject))
  {
    goto LABEL_15;
  }

  processType = [(BMProcess *)self->_process processType];
  v8 = 1;
  if (processType > 4)
  {
    if ((processType - 6) < 2)
    {
      goto LABEL_16;
    }

    if (processType == 5)
    {
LABEL_15:
      v8 = 0;
      goto LABEL_16;
    }

    if (processType == 8)
    {
      v9 = os_variant_allows_internal_security_policies();
      goto LABEL_20;
    }

LABEL_19:
    v9 = [(BMAccessControlPolicy *)self allowsAccessToStream:firstObject withMode:2];
    goto LABEL_20;
  }

  if (processType > 2)
  {
    if (processType != 3)
    {
      onBehalfOf = self->_onBehalfOf;
      if (!onBehalfOf)
      {
        goto LABEL_15;
      }

      v9 = [(BMAccessControlPolicy *)onBehalfOf allowsComputeSourceAccessToStream:firstObject];
LABEL_20:
      v8 = v9;
      goto LABEL_16;
    }

    v12 = BMSyncableStreamIdentifiers(3);
    v13 = [v12 containsObject:firstObject];

    if (v13)
    {
      v8 = 1;
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (!processType)
  {
    goto LABEL_15;
  }

  if (processType != 2)
  {
    goto LABEL_19;
  }

LABEL_16:

  return v8;
}

- (BOOL)allowsAccessToClientCompute:(id)compute
{
  computeCopy = compute;
  process = self->_process;
  if (!process)
  {
    goto LABEL_12;
  }

  processType = [(BMProcess *)process processType];
  v7 = 0;
  if (processType > 3)
  {
    if ((processType - 4) >= 2)
    {
      if ((processType - 6) < 2)
      {
        goto LABEL_9;
      }

      if (processType != 8)
      {
        goto LABEL_13;
      }

      v10 = os_variant_allows_internal_security_policies();
LABEL_16:
      v7 = v10;
      goto LABEL_13;
    }

    onBehalfOf = self->_onBehalfOf;
    if (onBehalfOf)
    {
      v10 = [(BMAccessControlPolicy *)onBehalfOf allowsAccessToClientCompute:computeCopy];
      goto LABEL_16;
    }

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  switch(processType)
  {
    case 1:
LABEL_6:
      identifier = [(BMProcess *)self->_process identifier];
      v7 = [identifier isEqual:computeCopy];

      break;
    case 2:
LABEL_9:
      v7 = 1;
      break;
    case 3:
      goto LABEL_6;
  }

LABEL_13:

  return v7;
}

- (BOOL)allowsProxyingBiomeEndpoint
{
  identifier = [(BMProcess *)self->_process identifier];
  if ([identifier isEqual:@"com.apple.coreduetd"])
  {
  }

  else
  {
    identifier2 = [(BMProcess *)self->_process identifier];
    v5 = [identifier2 isEqual:@"com.apple.knowledge-agent"];

    if (!v5)
    {
      return 0;
    }
  }

  process = self->_process;

  return [(BMProcess *)process BOOLForEntitlement:@"com.apple.rootless.storage.coreduet_knowledge_store"];
}

- (void)_warnAboutInternalEntitlement:(id)entitlement streamIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  entitlementCopy = entitlement;
  identifierCopy = identifier;
  if (os_variant_has_internal_diagnostics())
  {
    executablePath = [(BMProcess *)self->_process executablePath];
    if (([executablePath containsString:@"/usr/local/"] & 1) == 0 && (objc_msgSend(executablePath, "containsString:", @"/usr/appleinternal/") & 1) == 0 && (objc_msgSend(executablePath, "containsString:", @"/AppleInternal/") & 1) == 0)
    {
      v9 = __biome_log_for_category(6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543618;
        v11 = identifierCopy;
        v12 = 2114;
        v13 = entitlementCopy;
        _os_log_impl(&dword_1AC15D000, v9, OS_LOG_TYPE_DEFAULT, "WARNING: utilizing internal-only policy to allow access to '%{public}@' via entitlement '%{public}@'", &v10, 0x16u);
      }
    }
  }
}

- (BOOL)allowsAccessToContextSyncStreams:(id)streams
{
  v50 = *MEMORY[0x1E69E9840];
  streamsCopy = streams;
  v5 = +[BMAccessControlPolicy contextSyncMapping];
  v6 = [streamsCopy mutableCopy];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = streamsCopy;
  v8 = [v7 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v44;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v43 + 1) + 8 * i);
        v13 = [v5 objectForKeyedSubscript:v12];

        if (!v13)
        {
          v24 = __biome_log_for_category(6);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1AC15D000, v24, OS_LOG_TYPE_INFO, "allowsAccessToContextSyncStreams: set is not exclusively ContextSync.LOI", buf, 2u);
          }

          goto LABEL_36;
        }

        v14 = [v5 objectForKeyedSubscript:v12];
        [v6 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v43 objects:v49 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  process = self->_process;
  if (!process)
  {
    v25 = __biome_log_for_category(6);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v26 = "allowsAccessToContextSyncStreams: _process == nil";
LABEL_34:
      _os_log_impl(&dword_1AC15D000, v25, OS_LOG_TYPE_INFO, v26, buf, 2u);
    }

LABEL_35:

    goto LABEL_36;
  }

  identifier = [(BMProcess *)process identifier];

  if (!identifier)
  {
    v25 = __biome_log_for_category(6);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v26 = "allowsAccessToContextSyncStreams: !_process.identifier";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = v6;
  v18 = [v17 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v39;
    while (2)
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(v17);
        }

        if ((BMIdentifierIsPathSafe(*(*(&v38 + 1) + 8 * j)) & 1) == 0)
        {
          v27 = __biome_log_for_category(6);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1AC15D000, v27, OS_LOG_TYPE_INFO, "allowsAccessToContextSyncStreams: !BMStreamIdentifierIsPathSafe(streamIdentifier)", buf, 2u);
          }

          goto LABEL_36;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v38 objects:v48 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  processType = [(BMProcess *)self->_process processType];
  if (processType <= 3)
  {
    if ((processType - 2) < 2)
    {
      v23 = 1;
      goto LABEL_37;
    }

    if (processType)
    {
      goto LABEL_41;
    }

LABEL_36:
    v23 = 0;
    goto LABEL_37;
  }

  if ((processType - 4) < 2 || (processType - 6) < 2)
  {
    goto LABEL_36;
  }

  if (processType == 8)
  {
    v23 = os_variant_allows_internal_security_policies();
    goto LABEL_37;
  }

LABEL_41:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v29 = v7;
  v30 = [v29 countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v35;
    while (2)
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(v29);
        }

        if (![(BMAccessControlPolicy *)self allowsAccessToStream:*(*(&v34 + 1) + 8 * k) withMode:1, v34])
        {
          v23 = 0;
          goto LABEL_51;
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v34 objects:v47 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  v23 = 1;
LABEL_51:

LABEL_37:
  return v23;
}

- (BOOL)allowsAccessToContextSync
{
  if ([(BMProcess *)self->_process processType]== 2 || [(BMProcess *)self->_process processType]== 3)
  {
    return 1;
  }

  processType = [(BMProcess *)self->_process processType];
  if (processType > 8)
  {
    return [(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-only"]|| os_variant_allows_internal_security_policies() && ([(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-only"]);
  }

  if (((1 << processType) & 0xF1) != 0)
  {
    return 0;
  }

  if (((1 << processType) & 0xC) != 0)
  {
    return 1;
  }

  if (processType != 8)
  {
    return [(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.private.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.private.biome.read-only"]|| os_variant_allows_internal_security_policies() && ([(BMProcess *)self->_process hasNonEmptyDictionaryForEntitlement:@"com.apple.internal.intelligenceplatform.use-cases"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-write"]|| [(BMProcess *)self->_process hasNonEmptyArrayForEntitlement:@"com.apple.internal.biome.read-only"]);
  }

  return os_variant_allows_internal_security_policies();
}

+ (BOOL)process:(id)process canActOnBehalfOfProcess:(id)ofProcess
{
  processCopy = process;
  ofProcessCopy = ofProcess;
  if ([processCopy processType] != 4)
  {
    if ([processCopy processType] != 5)
    {
      goto LABEL_9;
    }

    processType = [ofProcessCopy processType];
    if ((processType - 1) < 3 || processType == 7)
    {
      v8 = 1;
      goto LABEL_11;
    }

    if (processType != 8)
    {
LABEL_9:
      v8 = 0;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  processType2 = [ofProcessCopy processType];
  if (processType2 == 8)
  {
LABEL_8:
    v8 = os_variant_allows_internal_security_policies();
    goto LABEL_11;
  }

  v8 = processType2 == 1;
LABEL_11:

  return v8;
}

+ (id)syncableSetIdentifiers
{
  if (syncableSetIdentifiers_onceToken != -1)
  {
    +[BMAccessControlPolicy(SyncableSets) syncableSetIdentifiers];
  }

  v3 = syncableSetIdentifiers_identifiers;

  return v3;
}

void __61__BMAccessControlPolicy_SyncableSets__syncableSetIdentifiers__block_invoke()
{
  v0 = objc_opt_new();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v1 = getCCSetConfigurationClass_softClass;
  v10 = getCCSetConfigurationClass_softClass;
  if (!getCCSetConfigurationClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getCCSetConfigurationClass_block_invoke;
    v6[3] = &unk_1E796AC10;
    v6[4] = &v7;
    __getCCSetConfigurationClass_block_invoke(v6);
    v1 = v8[3];
  }

  v2 = v1;
  _Block_object_dispose(&v7, 8);
  v3 = [v1 valueForKeyPath:@"syncableSetConfigurations.setIdentifier"];
  [v0 addObjectsFromArray:v3];

  v4 = [v0 copy];
  v5 = syncableSetIdentifiers_identifiers;
  syncableSetIdentifiers_identifiers = v4;
}

- (BOOL)allowsAccessToSetStoreUpdateServiceForSet:(id)set
{
  setCopy = set;
  identifier = [(BMProcess *)self->_process identifier];

  if (!identifier)
  {
    goto LABEL_4;
  }

  processType = [(BMProcess *)self->_process processType];
  if (processType > 8)
  {
    goto LABEL_10;
  }

  if (((1 << processType) & 0x35) == 0)
  {
    if (processType == 3)
    {
      syncableSetIdentifiers = [objc_opt_class() syncableSetIdentifiers];
      v10 = [syncableSetIdentifiers containsObject:setCopy];

      if (v10)
      {
        v7 = 1;
        goto LABEL_12;
      }
    }

    else if (processType == 8)
    {
      v8 = os_variant_allows_internal_security_policies();
LABEL_11:
      v7 = v8;
      goto LABEL_12;
    }

LABEL_10:
    v8 = [(BMAccessControlPolicy *)self allowsAccessToSet:setCopy withMode:3];
    goto LABEL_11;
  }

LABEL_4:
  v7 = 0;
LABEL_12:

  return v7;
}

- (BOOL)allowsAccessToWriteServiceForStream:(id)stream ofUser:(unsigned int)user
{
  streamCopy = stream;
  if ([streamCopy hasSuffix:@":subscriptions"] & 1) != 0 || (objc_msgSend(streamCopy, "hasSuffix:", @":tombstones"))
  {
    LOBYTE(identifier) = 0;
  }

  else
  {
    identifier = [(BMProcess *)self->_process identifier];

    if (identifier)
    {
      processType = [(BMProcess *)self->_process processType];
      LOBYTE(identifier) = 0;
      if (processType - 2 >= 4)
      {
        if (processType)
        {
          if (processType == 8)
          {
            LOBYTE(identifier) = os_variant_allows_internal_security_policies();
          }

          else
          {
            v9 = [(BMAccessControlPolicy *)self explicitlyAuthorizedResourcesOfType:1 withAccessMode:2];
            LOBYTE(identifier) = [v9 containsObject:streamCopy];
          }
        }
      }
    }
  }

  return identifier;
}

- (BOOL)allowsAccessToBiomeAgentForUser:(unsigned int)user
{
  v21 = *MEMORY[0x1E69E9840];
  identifier = [(BMProcess *)self->_process identifier];

  if (!identifier)
  {
    goto LABEL_14;
  }

  if ([(BMProcess *)self->_process uid]>= 0x1F5)
  {
    v6 = __biome_log_for_category(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMAccessControlPolicy(DaemonToAgent) allowsAccessToBiomeAgentForUser:v6];
    }

LABEL_8:

LABEL_14:
    LOBYTE(v9) = 0;
    return v9;
  }

  if (user <= 0x1F4)
  {
    v6 = __biome_log_for_category(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMAccessControlPolicy(DaemonToAgent) allowsAccessToBiomeAgentForUser:v6];
    }

    goto LABEL_8;
  }

  processType = [(BMProcess *)self->_process processType];
  if (processType - 2 < 6 || processType == 0)
  {
    goto LABEL_14;
  }

  if (processType != 8)
  {
    v11 = objc_opt_new();
    v12 = [(BMAccessControlPolicy *)self explicitlyAuthorizedResourcesOfType:1 withAccessMode:2];
    [v11 unionSet:v12];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v13 = v11;
    v9 = [v13 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v14 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v13);
          }

          if (!BMServiceDomainForStream(2, *(*(&v16 + 1) + 8 * i)))
          {
            LOBYTE(v9) = 1;
            goto LABEL_30;
          }
        }

        v9 = [v13 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_30:

    return v9;
  }

  return os_variant_allows_internal_security_policies();
}

- (BOOL)allowsAccessToProxyBiomeAgentEndpoint
{
  identifier = [(BMProcess *)self->_process identifier];

  if (!identifier || [(BMProcess *)self->_process processType]!= 2 || ![(NSString *)self->_useCase isEqual:@"__proxy__"])
  {
    return 0;
  }

  identifier2 = [(BMProcess *)self->_process identifier];
  v5 = [identifier2 isEqual:@"com.apple.biomed"];

  return v5;
}

+ (BOOL)allowsConfiguringConnection:(id)connection forUseCase:(id)case inDomain:(unint64_t)domain error:(id *)error
{
  v52[1] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  caseCopy = case;
  if (BMIdentifierIsPathSafe(caseCopy))
  {
    bm_process = [connectionCopy bm_process];
    bm_accessControlPolicy = [connectionCopy bm_accessControlPolicy];
    useCase = [bm_accessControlPolicy useCase];
    if (useCase)
    {
      v13 = useCase;
      useCase2 = [bm_accessControlPolicy useCase];
      v15 = [useCase2 isEqual:caseCopy];

      if ((v15 & 1) == 0)
      {
        if (error)
        {
          v20 = MEMORY[0x1E696ABC0];
          v49 = *MEMORY[0x1E696A578];
          v50 = @"Use case already set";
          executableName = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          *error = [v20 errorWithDomain:@"BMAccessErrorDomain" code:5 userInfo:executableName];
LABEL_22:

          goto LABEL_23;
        }

        goto LABEL_23;
      }
    }

    if (([caseCopy hasPrefix:@"__"] & 1) == 0)
    {
      useCases = [bm_process useCases];
      v17 = [useCases containsObject:caseCopy];

      if (v17)
      {
        goto LABEL_7;
      }
    }

    if ([BMAnyClientUseCaseAllowList containsObject:caseCopy])
    {
      goto LABEL_7;
    }

    v22 = [caseCopy isEqual:@"__proxy__"];
    processType = [bm_process processType];
    if (v22)
    {
      if (processType != 2 || ([bm_process identifier], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isEqual:", @"com.apple.biomed"), v24, (v25 & 1) == 0))
      {
        if ([bm_process processType] != 1 || (objc_msgSend(bm_process, "identifier"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(&unk_1F20EBE60, "containsObject:", v26), v26, (v27 & 1) == 0))
        {
          if (error)
          {
            v28 = MEMORY[0x1E696ABC0];
            v47 = *MEMORY[0x1E696A578];
            v29 = MEMORY[0x1E696AEC0];
            executableName = [bm_process executableName];
            caseCopy = [v29 stringWithFormat:@"Process '%@' not authorized for use-case '%@'", executableName, caseCopy];
            v48 = caseCopy;
            v31 = MEMORY[0x1E695DF20];
            v32 = &v48;
            v33 = &v47;
LABEL_20:
            v34 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:1];
            *error = [v28 errorWithDomain:@"BMAccessErrorDomain" code:4 userInfo:v34];

LABEL_21:
            goto LABEL_22;
          }

LABEL_23:
          v18 = 0;
          goto LABEL_24;
        }
      }

LABEL_7:
      v18 = 1;
LABEL_24:

      goto LABEL_25;
    }

    if ((processType == 2 || [bm_process processType] == 7) && (objc_msgSend(BMBiomeDaemonUseCaseAllowList, "containsObject:", caseCopy) & 1) != 0 || objc_msgSend(bm_process, "processType") == 2 || objc_msgSend(bm_process, "processType") == 3)
    {
      goto LABEL_7;
    }

    if ([caseCopy isEqual:@"__internal__"])
    {
      if (os_variant_allows_internal_security_policies())
      {
        if ([bm_process processType] != 8)
        {
          if (!error)
          {
            goto LABEL_23;
          }

          v28 = MEMORY[0x1E696ABC0];
          v43 = *MEMORY[0x1E696A578];
          v36 = MEMORY[0x1E696AEC0];
          executableName = [bm_process executableName];
          caseCopy = [v36 stringWithFormat:@"Process '%@' not authorized for use-case '%@'", executableName, caseCopy];
          v44 = caseCopy;
          v31 = MEMORY[0x1E695DF20];
          v32 = &v44;
          v33 = &v43;
          goto LABEL_20;
        }

        goto LABEL_7;
      }

      if (!error)
      {
        goto LABEL_23;
      }

      v40 = MEMORY[0x1E696ABC0];
      v45 = *MEMORY[0x1E696A578];
      executableName = [MEMORY[0x1E696AEC0] stringWithFormat:@"Use-case '%@' not authorized", caseCopy];
      v46 = executableName;
      caseCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v38 = v40;
      v39 = 4;
    }

    else
    {
      if (!error)
      {
        goto LABEL_23;
      }

      v37 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A578];
      executableName = [MEMORY[0x1E696AEC0] stringWithFormat:@"Use case '%@' not found", caseCopy];
      v42 = executableName;
      caseCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v38 = v37;
      v39 = 3;
    }

    *error = [v38 errorWithDomain:@"BMAccessErrorDomain" code:v39 userInfo:caseCopy];
    goto LABEL_21;
  }

  if (error)
  {
    v19 = MEMORY[0x1E696ABC0];
    v51 = *MEMORY[0x1E696A578];
    bm_process = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid use case '%@'", caseCopy];
    v52[0] = bm_process;
    bm_accessControlPolicy = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    [v19 errorWithDomain:@"BMAccessErrorDomain" code:2 userInfo:bm_accessControlPolicy];
    *error = v18 = 0;
    goto LABEL_24;
  }

  v18 = 0;
LABEL_25:

  return v18;
}

+ (void)library
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<_BMRootLibrary> __softlink__BiomeLibraryAndInternalLibraryNode(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"BMAccessControlPolicy.m" lineNumber:42 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)allowsConnectionToAccessServiceWithDomain:(id *)a1 .cold.1(id *a1)
{
  v2 = [*a1 executableName];
  [*a1 pid];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

- (void)allowsConnectionToAccessServiceWithDomain:(id *)a1 .cold.2(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = [*a1 executableName];
  [*a1 pid];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_1AC15D000, a2, OS_LOG_TYPE_FAULT, "Process %{public}@(%d) is not allowed to have datavault entitlement", v5, 0x12u);
}

@end