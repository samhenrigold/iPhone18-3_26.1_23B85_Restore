@interface TRIClientRolloutArtifact
+ (BOOL)_isStructurallyValidWithRollout:(id)rollout deployment:(id)deployment namespaceNames:(id)names populations:(id)populations deploymentDate:(id)date;
+ (BOOL)_signature:(id)_signature onData:(id)data isValidUsingPublicCertificate:(id)certificate;
+ (id)allReferencedCKRecordKeys;
+ (id)artifactFromCKRecord:(id)record namespaceDescriptorProvider:(id)provider error:(id *)error;
+ (id)artifactWithRollout:(id)rollout populations:(id)populations deploymentDate:(id)date downloadSize:(unint64_t)size forLaunchDaemon:(BOOL)daemon;
+ (id)artifactWithTransientData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToArtifact:(id)artifact;
- (NSArray)namespaceNames;
- (TRIClientRolloutArtifact)initWithCoder:(id)coder;
- (TRIClientRolloutArtifact)initWithRollout:(id)rollout populations:(id)populations deploymentDate:(id)date downloadSize:(unint64_t)size forLaunchDaemon:(BOOL)daemon;
- (TRIRolloutDeployment)deployment;
- (id)copyWithReplacementDeploymentDate:(id)date;
- (id)copyWithReplacementDownloadSize:(unint64_t)size;
- (id)copyWithReplacementForLaunchDaemon:(BOOL)daemon;
- (id)copyWithReplacementPopulations:(id)populations;
- (id)copyWithReplacementRollout:(id)rollout;
- (id)data;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIClientRolloutArtifact

+ (id)allReferencedCKRecordKeys
{
  v8[9] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D73968];
  v8[0] = *MEMORY[0x277D739A0];
  v8[1] = v2;
  v3 = *MEMORY[0x277D73998];
  v8[2] = *MEMORY[0x277D73990];
  v8[3] = v3;
  v4 = *MEMORY[0x277D73978];
  v8[4] = *MEMORY[0x277D73988];
  v8[5] = v4;
  v5 = *MEMORY[0x277D73960];
  v8[6] = *MEMORY[0x277D73980];
  v8[7] = v5;
  v8[8] = *MEMORY[0x277D73970];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:9];

  return v6;
}

+ (id)artifactFromCKRecord:(id)record namespaceDescriptorProvider:(id)provider error:(id *)error
{
  v167[1] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  providerCopy = provider;
  values = [recordCopy values];
  v10 = values;
  if (!values)
  {
    v38 = TRILogCategory_Server();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      recordID = [recordCopy recordID];
      *buf = 138412290;
      v141 = recordID;
      _os_log_error_impl(&dword_26F567000, v38, OS_LOG_TYPE_ERROR, "Could not create rollout artifact from CloudKit record %@.", buf, 0xCu);
    }

    if (!error)
    {
      v43 = 0;
      goto LABEL_99;
    }

    v39 = MEMORY[0x277CCACA8];
    recordID2 = [recordCopy recordID];
    v11 = [v39 stringWithFormat:@"Could not create rollout artifact from CloudKit record %@.", recordID2];

    v41 = objc_alloc(MEMORY[0x277CCA9B8]);
    v166 = *MEMORY[0x277CCA450];
    v167[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v167 forKeys:&v166 count:1];
    v42 = [v41 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v12];
    v43 = 0;
    v13 = *error;
    *error = v42;
    goto LABEL_96;
  }

  v11 = [values triStringValueForField:*MEMORY[0x277D739A0] isNestedValue:0];
  if (v11)
  {
    v12 = [v10 triNumberValueForField:*MEMORY[0x277D73968] isNestedValue:0];
    if (!v12)
    {
      v49 = TRILogCategory_Server();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        recordID3 = [recordCopy recordID];
        *buf = 138412546;
        v141 = recordID3;
        v142 = 2114;
        v143 = v11;
        _os_log_error_impl(&dword_26F567000, v49, OS_LOG_TYPE_ERROR, "CloudKit record %@ with rollout id %{public}@ has missing or corrupt deployment id.", buf, 0x16u);
      }

      if (!error)
      {
        v12 = 0;
        v43 = 0;
LABEL_97:

        goto LABEL_98;
      }

      v50 = MEMORY[0x277CCACA8];
      recordID4 = [recordCopy recordID];
      v13 = [v50 stringWithFormat:@"CloudKit record %@ with rollout id %@ has missing or corrupt deployment id.", recordID4, v11];

      v52 = objc_alloc(MEMORY[0x277CCA9B8]);
      v162 = *MEMORY[0x277CCA450];
      v163 = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
      v53 = [v52 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v14];
      v43 = 0;
      v15 = *error;
      *error = v53;
      goto LABEL_94;
    }

    v13 = [objc_alloc(MEMORY[0x277D737C8]) initWithRolloutId:v11 deploymentId:{objc_msgSend(v12, "intValue")}];
    v14 = [v10 triDataForField:*MEMORY[0x277D73990]];
    if (v14)
    {
      v15 = [v10 triStringValueForField:*MEMORY[0x277D73998] isNestedValue:0];
      if (!v15)
      {
        v60 = TRILogCategory_Server();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          recordID5 = [recordCopy recordID];
          *buf = 138412802;
          v141 = recordID5;
          v142 = 2114;
          v143 = v11;
          v144 = 2112;
          v145 = v12;
          _os_log_error_impl(&dword_26F567000, v60, OS_LOG_TYPE_ERROR, "CloudKit record %@ with rollout id %{public}@.%@ has missing or corrupt encoded rollout definition signature.", buf, 0x20u);
        }

        if (!error)
        {
          v15 = 0;
          v43 = 0;
LABEL_94:

          goto LABEL_95;
        }

        v61 = MEMORY[0x277CCACA8];
        recordID6 = [recordCopy recordID];
        v63 = [v61 stringWithFormat:@"CloudKit record %@ with rollout id %@.%@ has missing or corrupt encoded rollout definition signature.", recordID6, v11, v12];

        v64 = objc_alloc(MEMORY[0x277CCA9B8]);
        v158 = *MEMORY[0x277CCA450];
        v159 = v63;
        v133 = v63;
        v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
        v66 = v64;
        v15 = 0;
        v132 = v65;
        v67 = [v66 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:?];
        v43 = 0;
        v22 = *error;
        *error = v67;
        goto LABEL_90;
      }

      v133 = [v10 triDataForField:*MEMORY[0x277D73988]];
      if (!v133)
      {
        v68 = TRILogCategory_Server();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          [recordCopy recordID];
          v108 = v107 = v15;
          *buf = 138412802;
          v141 = v108;
          v142 = 2114;
          v143 = v11;
          v144 = 2112;
          v145 = v12;
          _os_log_error_impl(&dword_26F567000, v68, OS_LOG_TYPE_ERROR, "CloudKit record %@ with rollout id %{public}@.%@ has missing or corrupt public certificate.", buf, 0x20u);

          v15 = v107;
        }

        if (!error)
        {
          v90 = 0;
          v43 = 0;
LABEL_93:

          goto LABEL_94;
        }

        v129 = v15;
        v69 = MEMORY[0x277CCACA8];
        recordID7 = [recordCopy recordID];
        v71 = [v69 stringWithFormat:@"CloudKit record %@ with rollout id %@.%@ has missing or corrupt public certificate.", recordID7, v11, v12];

        v72 = objc_alloc(MEMORY[0x277CCA9B8]);
        v156 = *MEMORY[0x277CCA450];
        v157 = v71;
        v132 = v71;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
        v73 = v72;
        v15 = v129;
        v74 = [v73 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v22];
        v43 = 0;
        v75 = *error;
        *error = v74;
        goto LABEL_89;
      }

      v127 = v14;
      v16 = [v10 triArrayValueForField:*MEMORY[0x277D73978] isNestedValue:0];
      v132 = v16;
      if (!v16 || (v17 = v16, [v16 count]) && (objc_msgSend(v17, "objectAtIndexedSubscript:", 0), v130 = v13, v18 = v15, v19 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v19, v15 = v18, v13 = v130, (isKindOfClass & 1) == 0))
      {
        v76 = TRILogCategory_Server();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          recordID8 = [recordCopy recordID];
          *buf = 138412802;
          v141 = recordID8;
          v142 = 2114;
          v143 = v11;
          v144 = 2112;
          v145 = v12;
          _os_log_error_impl(&dword_26F567000, v76, OS_LOG_TYPE_ERROR, "CloudKit record %@ with rollout id %{public}@.%@ has missing or corrupt namespace names.", buf, 0x20u);
        }

        if (!error)
        {
          v43 = 0;
          v14 = v127;
LABEL_91:
          v59 = v132;
          goto LABEL_92;
        }

        v128 = v15;
        v77 = MEMORY[0x277CCACA8];
        recordID9 = [recordCopy recordID];
        v22 = [v77 stringWithFormat:@"CloudKit record %@ with rollout id %@.%@ has missing or corrupt namespace names.", recordID9, v11, v12];

        v79 = objc_alloc(MEMORY[0x277CCA9B8]);
        v154 = *MEMORY[0x277CCA450];
        v155 = v22;
        v131 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
        v80 = [v79 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:?];
        v43 = 0;
        v37 = *error;
        *error = v80;
        v14 = v127;
        goto LABEL_87;
      }

      v128 = v15;
      v21 = [v10 triArrayValueForField:*MEMORY[0x277D73980] isNestedValue:0];
      v22 = v21;
      if (!v21 || [v21 count] && (objc_msgSend(v22, "objectAtIndexedSubscript:", 0), v23 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v24 = objc_opt_isKindOfClass(), v23, (v24 & 1) == 0))
      {
        v82 = TRILogCategory_Server();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          recordID10 = [recordCopy recordID];
          *buf = 138412802;
          v141 = recordID10;
          v142 = 2114;
          v143 = v11;
          v144 = 2112;
          v145 = v12;
          _os_log_error_impl(&dword_26F567000, v82, OS_LOG_TYPE_ERROR, "CloudKit record %@ with rollout id %{public}@.%@ has missing or corrupt populations.", buf, 0x20u);
        }

        if (!error)
        {
          v43 = 0;
          v14 = v127;
          v15 = v128;
LABEL_90:

          goto LABEL_91;
        }

        v83 = MEMORY[0x277CCACA8];
        recordID11 = [recordCopy recordID];
        v85 = [v83 stringWithFormat:@"CloudKit record %@ with rollout id %@.%@ has missing or corrupt populations.", recordID11, v11, v12];

        v86 = objc_alloc(MEMORY[0x277CCA9B8]);
        v152 = *MEMORY[0x277CCA450];
        v131 = v85;
        v153 = v85;
        v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
        v87 = [v86 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v37];
        v43 = 0;
        v88 = *error;
        *error = v87;
        v14 = v127;
        goto LABEL_86;
      }

      v131 = [v10 triDateForField:*MEMORY[0x277D73960]];
      if (v131)
      {
        v14 = v127;
        v15 = v128;
        if ([self _signature:v128 onData:v127 isValidUsingPublicCertificate:v133])
        {
          v135 = 0;
          v126 = [MEMORY[0x277D73AE0] parseFromData:v127 error:&v135];
          v125 = v135;
          if (v126)
          {
            if ([self _isStructurallyValidWithRollout:? deployment:? namespaceNames:? populations:? deploymentDate:?])
            {
              v124 = [TRISetupAssistantFetchUtils getIncompatibleNamespaceNamesForTriClientRollout:v126 namespaceDescriptorProvider:providerCopy];
              v25 = [v124 count];
              v26 = TRILogCategory_Server();
              v27 = v26;
              if (v25)
              {
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  allObjects = [v124 allObjects];
                  *buf = 138543362;
                  v141 = allObjects;
                  _os_log_impl(&dword_26F567000, v27, OS_LOG_TYPE_DEFAULT, "Found the following incompatible namespace names: %{public}@", buf, 0xCu);
                }

                if (error)
                {
                  v29 = MEMORY[0x277CCACA8];
                  allObjects2 = [v124 allObjects];
                  v31 = [v29 stringWithFormat:@"Found the following incompatible namespace names: %@", allObjects2];

                  v32 = objc_alloc(MEMORY[0x277CCA9B8]);
                  v136 = *MEMORY[0x277CCA450];
                  v137 = v31;
                  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
                  v34 = [v32 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v33];
                  v35 = *error;
                  *error = v34;

                  v36 = v124;
                  v37 = v125;
LABEL_76:
                  v43 = 0;
                  goto LABEL_85;
                }

                v43 = 0;
              }

              else
              {
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                {
                  shortDesc = [v13 shortDesc];
                  *buf = 138543362;
                  v141 = shortDesc;
                  _os_log_debug_impl(&dword_26F567000, v27, OS_LOG_TYPE_DEBUG, "Decoded valid and device-compatible rollout notification: %{public}@.  This means we are ack’ing the CK notification, not acting on it.", buf, 0xCu);
                }

                v43 = -[TRIClientRolloutArtifact initWithRollout:populations:deploymentDate:downloadSize:forLaunchDaemon:]([TRIClientRolloutArtifact alloc], "initWithRollout:populations:deploymentDate:downloadSize:forLaunchDaemon:", v126, v22, v131, [v133 length] + objc_msgSend(v127, "length") + objc_msgSend(v128, "length"), 0);
              }

              v36 = v124;
              v37 = v125;
              goto LABEL_85;
            }

            v88 = v126;
            v43 = 0;
            v37 = v125;
          }

          else
          {
            v110 = TRILogCategory_Server();
            v37 = v125;
            if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
            {
              recordID12 = [recordCopy recordID];
              *buf = 138413058;
              v141 = recordID12;
              v142 = 2114;
              v143 = v11;
              v144 = 2112;
              v145 = v12;
              v146 = 2114;
              v147 = v125;
              _os_log_error_impl(&dword_26F567000, v110, OS_LOG_TYPE_ERROR, "CloudKit record %@ with rollout id %{public}@.%@ has unparseable rollout definition: %{public}@", buf, 0x2Au);

              v14 = v127;
            }

            if (error)
            {
              v111 = MEMORY[0x277CCACA8];
              recordID13 = [recordCopy recordID];
              v125 = [v111 stringWithFormat:@"CloudKit record %@ with rollout id %@.%@ has unparseable rollout definition: %@", recordID13, v11, v12, v125];

              v114 = objc_alloc(MEMORY[0x277CCA9B8]);
              v138 = *MEMORY[0x277CCA450];
              v139 = v125;
              v115 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
              v116 = [v114 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v115];
              v117 = *error;
              *error = v116;

              v36 = v125;
              v37 = v125;
              v126 = 0;
              goto LABEL_76;
            }

            v88 = 0;
            v43 = 0;
          }

LABEL_86:

LABEL_87:
          v15 = v128;
          goto LABEL_88;
        }

        v101 = TRILogCategory_Server();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          recordID14 = [recordCopy recordID];
          *buf = 138412802;
          v141 = recordID14;
          v142 = 2114;
          v143 = v11;
          v144 = 2112;
          v145 = v12;
          _os_log_error_impl(&dword_26F567000, v101, OS_LOG_TYPE_ERROR, "CloudKit record %@ with rollout id %{public}@.%@ does not have a valid signature.", buf, 0x20u);

          v14 = v127;
        }

        if (!error)
        {
          v43 = 0;
LABEL_88:
          v75 = v131;
          goto LABEL_89;
        }

        v102 = MEMORY[0x277CCACA8];
        recordID15 = [recordCopy recordID];
        v104 = [v102 stringWithFormat:@"CloudKit record %@ with rollout id %@.%@ does not have a valid signature.", recordID15, v11, v12];

        v37 = v104;
        v97 = objc_alloc(MEMORY[0x277CCA9B8]);
        v148 = *MEMORY[0x277CCA450];
        v149 = v37;
        v98 = MEMORY[0x277CBEAC0];
        v99 = &v149;
        v100 = &v148;
      }

      else
      {
        v93 = TRILogCategory_Server();
        v14 = v127;
        v15 = v128;
        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          recordID16 = [recordCopy recordID];
          *buf = 138412802;
          v141 = recordID16;
          v142 = 2114;
          v143 = v11;
          v144 = 2112;
          v145 = v12;
          _os_log_error_impl(&dword_26F567000, v93, OS_LOG_TYPE_ERROR, "CloudKit record %@ with rollout id %{public}@.%@ has unreadable deploymentDate.", buf, 0x20u);

          v14 = v127;
        }

        if (!error)
        {
          v75 = 0;
          v43 = 0;
LABEL_89:

          goto LABEL_90;
        }

        v94 = MEMORY[0x277CCACA8];
        recordID17 = [recordCopy recordID];
        v96 = [v94 stringWithFormat:@"CloudKit record %@ with rollout id %@.%@ has unreadable deploymentDate.", recordID17, v11, v12];

        v37 = v96;
        v97 = objc_alloc(MEMORY[0x277CCA9B8]);
        v150 = *MEMORY[0x277CCA450];
        v151 = v37;
        v98 = MEMORY[0x277CBEAC0];
        v99 = &v151;
        v100 = &v150;
      }

      v126 = [v98 dictionaryWithObjects:v99 forKeys:v100 count:1];
      v105 = [v97 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:?];
      v43 = 0;
      v36 = *error;
      *error = v105;
LABEL_85:

      v88 = v126;
      v14 = v127;
      goto LABEL_86;
    }

    v54 = TRILogCategory_Server();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      recordID18 = [recordCopy recordID];
      *buf = 138412802;
      v141 = recordID18;
      v142 = 2114;
      v143 = v11;
      v144 = 2112;
      v145 = v12;
      _os_log_error_impl(&dword_26F567000, v54, OS_LOG_TYPE_ERROR, "CloudKit record %@ with rollout id %{public}@.%@ has missing or corrupt encoded rollout definition.", buf, 0x20u);
    }

    if (error)
    {
      v55 = MEMORY[0x277CCACA8];
      recordID19 = [recordCopy recordID];
      v15 = [v55 stringWithFormat:@"CloudKit record %@ with rollout id %@.%@ has missing or corrupt encoded rollout definition.", recordID19, v11, v12];

      v57 = objc_alloc(MEMORY[0x277CCA9B8]);
      v160 = *MEMORY[0x277CCA450];
      v161 = v15;
      v133 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
      v58 = [v57 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:?];
      v43 = 0;
      v59 = *error;
      *error = v58;
LABEL_92:

      v90 = v133;
      goto LABEL_93;
    }

    v14 = 0;
    v43 = 0;
LABEL_95:

LABEL_96:
    goto LABEL_97;
  }

  v44 = TRILogCategory_Server();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    recordID20 = [recordCopy recordID];
    *buf = 138412290;
    v141 = recordID20;
    _os_log_error_impl(&dword_26F567000, v44, OS_LOG_TYPE_ERROR, "RolloutNotification CloudKit record %@ has missing or corrupt rollout id.", buf, 0xCu);
  }

  if (error)
  {
    v45 = MEMORY[0x277CCACA8];
    recordID21 = [recordCopy recordID];
    v12 = [v45 stringWithFormat:@"RolloutNotification CloudKit record %@ has missing or corrupt rollout id.", recordID21];

    v47 = objc_alloc(MEMORY[0x277CCA9B8]);
    v164 = *MEMORY[0x277CCA450];
    v165 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
    v48 = [v47 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v13];
    v43 = 0;
    v14 = *error;
    *error = v48;
    goto LABEL_95;
  }

  v11 = 0;
  v43 = 0;
LABEL_98:

LABEL_99:

  return v43;
}

+ (BOOL)_signature:(id)_signature onData:(id)data isValidUsingPublicCertificate:(id)certificate
{
  _signatureCopy = _signature;
  dataCopy = data;
  v9 = [TRISignatureKey keyFromData:certificate];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 validateBase64Signature:_signatureCopy data:dataCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_isStructurallyValidWithRollout:(id)rollout deployment:(id)deployment namespaceNames:(id)names populations:(id)populations deploymentDate:(id)date
{
  v81 = *MEMORY[0x277D85DE8];
  rolloutCopy = rollout;
  deploymentCopy = deployment;
  namesCopy = names;
  v11 = objc_opt_new();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v12 = namesCopy;
  v13 = [v12 countByEnumeratingWithState:&v67 objects:v80 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v68;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v68 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v67 + 1) + 8 * i);
        if (([(__CFString *)v17 triIsPathSafe]& 1) == 0)
        {
          v40 = TRILogCategory_Server();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v28 = deploymentCopy;
            rolloutId = [deploymentCopy rolloutId];
            deploymentId = [deploymentCopy deploymentId];
            *buf = 138543874;
            v72 = rolloutId;
            v73 = 1024;
            v74 = deploymentId;
            v75 = 2114;
            v76 = v17;
            v43 = "Rollout artifact with id %{public}@.%d has namespace name %{public}@ which is not path-safe.";
            goto LABEL_45;
          }

LABEL_32:
          v28 = deploymentCopy;
LABEL_33:

          v39 = 0;
          v18 = v12;
          goto LABEL_50;
        }

        if ([v11 containsObject:v17])
        {
          v40 = TRILogCategory_Server();
          if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_32;
          }

          v28 = deploymentCopy;
          rolloutId = [deploymentCopy rolloutId];
          deploymentId2 = [deploymentCopy deploymentId];
          *buf = 138543874;
          v72 = rolloutId;
          v73 = 1024;
          v74 = deploymentId2;
          v75 = 2114;
          v76 = v17;
          v43 = "Rollout artifact with id %{public}@.%d has repeated namespaceNames entry %{public}@.";
LABEL_45:
          _os_log_error_impl(&dword_26F567000, v40, OS_LOG_TYPE_ERROR, v43, buf, 0x1Cu);

          goto LABEL_33;
        }

        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v67 objects:v80 count:16];
    }

    while (v14);
  }

  v18 = objc_opt_new();
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  selectedNamespaceArray = [rolloutCopy selectedNamespaceArray];
  v20 = [selectedNamespaceArray countByEnumeratingWithState:&v63 objects:v79 count:16];
  if (!v20)
  {
    goto LABEL_19;
  }

  v21 = v20;
  v22 = *v64;
  v61 = rolloutCopy;
  while (2)
  {
    for (j = 0; j != v21; ++j)
    {
      if (*v64 != v22)
      {
        objc_enumerationMutation(selectedNamespaceArray);
      }

      v24 = *(*(&v63 + 1) + 8 * j);
      name = [v24 name];
      v26 = [v18 containsObject:name];

      if (v26)
      {
        rolloutId3 = TRILogCategory_Server();
        if (!os_log_type_enabled(rolloutId3, OS_LOG_TYPE_ERROR))
        {
LABEL_37:
          rolloutCopy = v61;
          v28 = deploymentCopy;
          goto LABEL_38;
        }

        v28 = deploymentCopy;
        rolloutId2 = [deploymentCopy rolloutId];
        deploymentId3 = [deploymentCopy deploymentId];
        name2 = [v24 name];
        *buf = 138543874;
        v72 = rolloutId2;
        v73 = 1024;
        v74 = deploymentId3;
        v75 = 2114;
        v76 = name2;
        v48 = "Rollout artifact with id %{public}@.%d has repeated selected_namespace name %{public}@.";
LABEL_52:
        _os_log_error_impl(&dword_26F567000, rolloutId3, OS_LOG_TYPE_ERROR, v48, buf, 0x1Cu);

        rolloutCopy = v61;
        goto LABEL_38;
      }

      if (![v24 compatibilityVersionArray_Count])
      {
        rolloutId3 = TRILogCategory_Server();
        if (!os_log_type_enabled(rolloutId3, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }

        v28 = deploymentCopy;
        rolloutId2 = [deploymentCopy rolloutId];
        deploymentId4 = [deploymentCopy deploymentId];
        name2 = [v24 name];
        *buf = 138543874;
        v72 = rolloutId2;
        v73 = 1024;
        v74 = deploymentId4;
        v75 = 2114;
        v76 = name2;
        v48 = "Rollout artifact with id %{public}@.%d declares empty NCV array for namespace %{public}@.";
        goto LABEL_52;
      }

      name3 = [v24 name];
      [v18 addObject:name3];
    }

    v21 = [selectedNamespaceArray countByEnumeratingWithState:&v63 objects:v79 count:16];
    rolloutCopy = v61;
    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_19:

  if (([v11 isEqualToSet:v18] & 1) == 0)
  {
    selectedNamespaceArray = TRILogCategory_Server();
    v28 = deploymentCopy;
    if (!os_log_type_enabled(selectedNamespaceArray, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    rolloutId3 = [deploymentCopy rolloutId];
    deploymentId5 = [deploymentCopy deploymentId];
    *buf = 138543618;
    v72 = rolloutId3;
    v73 = 1024;
    v74 = deploymentId5;
    v50 = "Rollout artifact with id %{public}@.%d has inconsistent namespace name collections.";
    goto LABEL_43;
  }

  v28 = deploymentCopy;
  rolloutId4 = [deploymentCopy rolloutId];
  triIsPathSafePlausibleUniqueId = [rolloutId4 triIsPathSafePlausibleUniqueId];

  if ((triIsPathSafePlausibleUniqueId & 1) == 0)
  {
    selectedNamespaceArray = TRILogCategory_Server();
    if (!os_log_type_enabled(selectedNamespaceArray, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    rolloutId3 = [deploymentCopy rolloutId];
    deploymentId6 = [deploymentCopy deploymentId];
    *buf = 138543618;
    v72 = rolloutId3;
    v73 = 1024;
    v74 = deploymentId6;
    v50 = "Rollout artifact with id %{public}@.%d has rolloutId which is not a plausible uniqueId.";
LABEL_43:
    _os_log_error_impl(&dword_26F567000, selectedNamespaceArray, OS_LOG_TYPE_ERROR, v50, buf, 0x12u);
LABEL_38:

LABEL_48:
LABEL_49:
    v39 = 0;
    goto LABEL_50;
  }

  if (![rolloutCopy hasRolloutId])
  {
    goto LABEL_47;
  }

  rolloutId5 = [deploymentCopy rolloutId];
  rolloutId6 = [rolloutCopy rolloutId];
  if (![rolloutId5 isEqualToString:rolloutId6] || (objc_msgSend(rolloutCopy, "hasDeploymentId") & 1) == 0)
  {

LABEL_47:
    selectedNamespaceArray = TRILogCategory_Server();
    if (os_log_type_enabled(selectedNamespaceArray, OS_LOG_TYPE_ERROR))
    {
      rolloutId7 = [deploymentCopy rolloutId];
      deploymentId7 = [deploymentCopy deploymentId];
      v57 = rolloutCopy;
      hasRolloutId = [rolloutCopy hasRolloutId];
      if (hasRolloutId)
      {
        rolloutId8 = [v57 rolloutId];
      }

      else
      {
        rolloutId8 = @"(unset)";
      }

      if ([v57 hasDeploymentId])
      {
        deploymentId8 = [v57 deploymentId];
      }

      else
      {
        deploymentId8 = -1;
      }

      *buf = 138544130;
      v72 = rolloutId7;
      v73 = 1024;
      v74 = deploymentId7;
      v75 = 2114;
      v76 = rolloutId8;
      v77 = 1024;
      v78 = deploymentId8;
      _os_log_error_impl(&dword_26F567000, selectedNamespaceArray, OS_LOG_TYPE_ERROR, "Rollout artifact with id %{public}@.%d contains rollout definition with mismatched identifier: %{public}@.%d", buf, 0x22u);
      if (hasRolloutId)
      {
      }

      rolloutCopy = v57;
      v28 = deploymentCopy;
    }

    goto LABEL_48;
  }

  v33 = rolloutCopy;
  deploymentId9 = [deploymentCopy deploymentId];
  deploymentId10 = [v33 deploymentId];

  v36 = deploymentId9 == deploymentId10;
  rolloutCopy = v33;
  if (!v36)
  {
    goto LABEL_47;
  }

  if ([v33 hasRampId])
  {
    rampId = [v33 rampId];
    v38 = TRIValidateRampId();

    if (!v38)
    {
      goto LABEL_49;
    }
  }

  v39 = 1;
LABEL_50:

  return v39;
}

- (TRIRolloutDeployment)deployment
{
  rollout = [(TRIClientRolloutArtifact *)self rollout];
  v2 = objc_alloc(MEMORY[0x277D737C8]);
  rolloutId = [rollout rolloutId];
  v4 = [v2 initWithRolloutId:rolloutId deploymentId:{objc_msgSend(rollout, "deploymentId")}];

  return v4;
}

- (NSArray)namespaceNames
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  rollout = [(TRIClientRolloutArtifact *)self rollout];
  v5 = [v3 initWithCapacity:{objc_msgSend(rollout, "selectedNamespaceArray_Count")}];

  rollout2 = [(TRIClientRolloutArtifact *)self rollout];
  selectedNamespaceArray = [rollout2 selectedNamespaceArray];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__TRIClientRolloutArtifact_Utils__namespaceNames__block_invoke;
  v10[3] = &unk_279DDF680;
  v8 = v5;
  v11 = v8;
  [selectedNamespaceArray enumerateObjectsUsingBlock:v10];

  return v8;
}

void __49__TRIClientRolloutArtifact_Utils__namespaceNames__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  [v2 addObject:v3];
}

- (id)data
{
  v4 = objc_alloc(MEMORY[0x277D73B90]);
  populations = [(TRIClientRolloutArtifact *)self populations];
  v6 = [v4 initWithCapacity:{objc_msgSend(populations, "count")}];

  populations2 = [(TRIClientRolloutArtifact *)self populations];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __39__TRIClientRolloutArtifact_Utils__data__block_invoke;
  v20 = &unk_279DDF6A8;
  v8 = v6;
  v21 = v8;
  [populations2 enumerateObjectsUsingBlock:&v17];

  v9 = objc_opt_new();
  rollout = [(TRIClientRolloutArtifact *)self rollout];
  [v9 setRollout:rollout];

  [v9 setPopulationsArray:v8];
  v11 = objc_alloc(MEMORY[0x277D73B88]);
  deploymentDate = [(TRIClientRolloutArtifact *)self deploymentDate];
  v13 = [v11 initWithDate:deploymentDate];
  [v9 setDeploymentDate:v13];

  [v9 setDownloadSize:{-[TRIClientRolloutArtifact downloadSize](self, "downloadSize")}];
  data = [v9 data];
  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientRolloutArtifact+Utils.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"result", v17, v18, v19, v20}];
  }

  return data;
}

uint64_t __39__TRIClientRolloutArtifact_Utils__data__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 unsignedIntValue];

  return [v2 addValue:v3];
}

+ (id)artifactWithTransientData:(id)data
{
  v28 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v3 = [(TRIPBMessage *)TRIPersistedClientRolloutArtifact parseFromData:data error:&v25];
  v4 = v25;
  if (!v3)
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = v4;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Failed to decode TRIPersistedClientRolloutArtifact: %{public}@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  if (([v3 hasRollout] & 1) == 0)
  {
    v7 = TRILogCategory_Server();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138412290;
    v27 = v14;
    v15 = "Cannot decode message of type %@ with missing field: rollout";
LABEL_21:
    _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);

    goto LABEL_11;
  }

  if ([v3 hasDeploymentDate])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "populationsArray_Count")}];
    populationsArray = [v3 populationsArray];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __61__TRIClientRolloutArtifact_Utils__artifactWithTransientData___block_invoke;
    v23 = &unk_279DDF630;
    v7 = v5;
    v24 = v7;
    [populationsArray enumerateValuesWithBlock:&v20];

    v8 = [TRIClientRolloutArtifact alloc];
    rollout = [v3 rollout];
    deploymentDate = [v3 deploymentDate];
    date = [deploymentDate date];
    if ([v3 hasDownloadSize])
    {
      downloadSize = [v3 downloadSize];
    }

    else
    {
      downloadSize = 0;
    }

    if ([v3 hasForLaunchDaemon])
    {
      v18 = [v3 forLaunchDaemon] != 0;
    }

    else
    {
      v18 = 0;
    }

    v16 = [(TRIClientRolloutArtifact *)v8 initWithRollout:rollout populations:v7 deploymentDate:date downloadSize:downloadSize forLaunchDaemon:v18];

    goto LABEL_12;
  }

  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v19 = objc_opt_class();
    v14 = NSStringFromClass(v19);
    *buf = 138412290;
    v27 = v14;
    v15 = "Cannot decode message of type %@ with missing field: deploymentDate";
    goto LABEL_21;
  }

LABEL_11:
  v16 = 0;
LABEL_12:

  return v16;
}

void __61__TRIClientRolloutArtifact_Utils__artifactWithTransientData___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
}

- (TRIClientRolloutArtifact)initWithRollout:(id)rollout populations:(id)populations deploymentDate:(id)date downloadSize:(unint64_t)size forLaunchDaemon:(BOOL)daemon
{
  rolloutCopy = rollout;
  populationsCopy = populations;
  dateCopy = date;
  if (rolloutCopy)
  {
    if (populationsCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1699 description:{@"Invalid parameter not satisfying: %@", @"populations != nil"}];

    if (dateCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1698 description:{@"Invalid parameter not satisfying: %@", @"rollout != nil"}];

  if (!populationsCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (dateCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1700 description:{@"Invalid parameter not satisfying: %@", @"deploymentDate != nil"}];

LABEL_4:
  v23.receiver = self;
  v23.super_class = TRIClientRolloutArtifact;
  v17 = [(TRIClientRolloutArtifact *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_rollout, rollout);
    objc_storeStrong(&v18->_populations, populations);
    objc_storeStrong(&v18->_deploymentDate, date);
    v18->_downloadSize = size;
    v18->_forLaunchDaemon = daemon;
  }

  return v18;
}

+ (id)artifactWithRollout:(id)rollout populations:(id)populations deploymentDate:(id)date downloadSize:(unint64_t)size forLaunchDaemon:(BOOL)daemon
{
  daemonCopy = daemon;
  dateCopy = date;
  populationsCopy = populations;
  rolloutCopy = rollout;
  v15 = [[self alloc] initWithRollout:rolloutCopy populations:populationsCopy deploymentDate:dateCopy downloadSize:size forLaunchDaemon:daemonCopy];

  return v15;
}

- (id)copyWithReplacementRollout:(id)rollout
{
  rolloutCopy = rollout;
  v5 = [objc_alloc(objc_opt_class()) initWithRollout:rolloutCopy populations:self->_populations deploymentDate:self->_deploymentDate downloadSize:self->_downloadSize forLaunchDaemon:self->_forLaunchDaemon];

  return v5;
}

- (id)copyWithReplacementPopulations:(id)populations
{
  populationsCopy = populations;
  v5 = [objc_alloc(objc_opt_class()) initWithRollout:self->_rollout populations:populationsCopy deploymentDate:self->_deploymentDate downloadSize:self->_downloadSize forLaunchDaemon:self->_forLaunchDaemon];

  return v5;
}

- (id)copyWithReplacementDeploymentDate:(id)date
{
  dateCopy = date;
  v5 = [objc_alloc(objc_opt_class()) initWithRollout:self->_rollout populations:self->_populations deploymentDate:dateCopy downloadSize:self->_downloadSize forLaunchDaemon:self->_forLaunchDaemon];

  return v5;
}

- (id)copyWithReplacementDownloadSize:(unint64_t)size
{
  v5 = objc_alloc(objc_opt_class());
  rollout = self->_rollout;
  populations = self->_populations;
  deploymentDate = self->_deploymentDate;
  forLaunchDaemon = self->_forLaunchDaemon;

  return [v5 initWithRollout:rollout populations:populations deploymentDate:deploymentDate downloadSize:size forLaunchDaemon:forLaunchDaemon];
}

- (id)copyWithReplacementForLaunchDaemon:(BOOL)daemon
{
  daemonCopy = daemon;
  v5 = objc_alloc(objc_opt_class());
  rollout = self->_rollout;
  populations = self->_populations;
  deploymentDate = self->_deploymentDate;
  downloadSize = self->_downloadSize;

  return [v5 initWithRollout:rollout populations:populations deploymentDate:deploymentDate downloadSize:downloadSize forLaunchDaemon:daemonCopy];
}

- (BOOL)isEqualToArtifact:(id)artifact
{
  artifactCopy = artifact;
  v5 = artifactCopy;
  if (!artifactCopy || (v6 = self->_rollout == 0, [artifactCopy rollout], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (rollout = self->_rollout) != 0 && (objc_msgSend(v5, "rollout"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[TRIClientRollout isEqual:](rollout, "isEqual:", v10), v10, !v11) || (v12 = self->_populations == 0, objc_msgSend(v5, "populations"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 != 0, v13, v12 == v14) || (populations = self->_populations) != 0 && (objc_msgSend(v5, "populations"), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[NSArray isEqual:](populations, "isEqual:", v16), v16, !v17) || (v18 = self->_deploymentDate == 0, objc_msgSend(v5, "deploymentDate"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 != 0, v19, v18 == v20) || (deploymentDate = self->_deploymentDate) != 0 && (objc_msgSend(v5, "deploymentDate"), v22 = objc_claimAutoreleasedReturnValue(), v23 = -[NSDate isEqual:](deploymentDate, "isEqual:", v22), v22, !v23) || (downloadSize = self->_downloadSize, downloadSize != objc_msgSend(v5, "downloadSize")))
  {
    v26 = 0;
  }

  else
  {
    forLaunchDaemon = self->_forLaunchDaemon;
    v26 = forLaunchDaemon == [v5 forLaunchDaemon];
  }

  return v26;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIClientRolloutArtifact *)self isEqualToArtifact:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(TRIClientRollout *)self->_rollout hash];
  v4 = [(NSArray *)self->_populations hash]- v3 + 32 * v3;
  v5 = [(NSDate *)self->_deploymentDate hash];
  v6 = self->_downloadSize - (v5 - v4 + 32 * v4) + 32 * (v5 - v4 + 32 * v4);
  return self->_forLaunchDaemon - v6 + 32 * v6;
}

- (TRIClientRolloutArtifact)initWithCoder:(id)coder
{
  v49[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rollout"];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"populations"];

    if (!v9)
    {
      error = [coderCopy error];

      if (error)
      {
        v9 = 0;
        selfCopy = 0;
LABEL_24:

        goto LABEL_25;
      }

      v46 = *MEMORY[0x277CCA450];
      v47 = @"Retrieved nil serialized value for nonnull TRIClientRolloutArtifact.populations";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v23 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIClientRolloutArtifactOCNTErrorDomain" code:2 userInfo:v11];
      [coderCopy failWithError:v23];

      v9 = 0;
      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deploymentDate"];
      if (!v10)
      {
        error2 = [coderCopy error];

        if (!error2)
        {
          v42 = *MEMORY[0x277CCA450];
          v43 = @"Retrieved nil serialized value for nonnull TRIClientRolloutArtifact.deploymentDate";
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
          v26 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIClientRolloutArtifactOCNTErrorDomain" code:2 userInfo:v25];
          [coderCopy failWithError:v26];
        }

        v11 = 0;
        goto LABEL_22;
      }

      v11 = v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [coderCopy decodeInt64ForKey:@"downloadSize"];
        if (!v12)
        {
          error3 = [coderCopy error];

          if (error3)
          {
            goto LABEL_22;
          }

          if (([coderCopy containsValueForKey:@"downloadSize"] & 1) == 0)
          {
            v38 = *MEMORY[0x277CCA450];
            v39 = @"Missing serialized value for TRIClientRolloutArtifact.downloadSize";
            v32 = MEMORY[0x277CBEAC0];
            v33 = &v39;
            v34 = &v38;
LABEL_32:
            v19 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:1];
            v20 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIClientRolloutArtifactOCNTErrorDomain" code:1 userInfo:v19];
            [coderCopy failWithError:v20];
            goto LABEL_21;
          }
        }

        v13 = [coderCopy decodeInt64ForKey:@"forLaunchDaemon"];
        if (v13)
        {
LABEL_8:
          self = [(TRIClientRolloutArtifact *)self initWithRollout:v5 populations:v9 deploymentDate:v11 downloadSize:v12 forLaunchDaemon:v13 != 0];
          selfCopy = self;
LABEL_23:

          goto LABEL_24;
        }

        error4 = [coderCopy error];

        if (!error4)
        {
          if ([coderCopy containsValueForKey:@"forLaunchDaemon"])
          {
            goto LABEL_8;
          }

          v36 = *MEMORY[0x277CCA450];
          v37 = @"Missing serialized value for TRIClientRolloutArtifact.forLaunchDaemon";
          v32 = MEMORY[0x277CBEAC0];
          v33 = &v37;
          v34 = &v36;
          goto LABEL_32;
        }

LABEL_22:
        selfCopy = 0;
        goto LABEL_23;
      }

      v27 = objc_opt_class();
      v19 = NSStringFromClass(v27);
      v28 = objc_opt_class();
      v20 = NSStringFromClass(v28);
      v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIClientRolloutArtifact key deploymentDate (expected %@, decoded %@)", v19, v20, 0];
      v40 = *MEMORY[0x277CCA450];
      v41 = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v29 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIClientRolloutArtifactOCNTErrorDomain" code:3 userInfo:v22];
      [coderCopy failWithError:v29];
    }

    else
    {
      v17 = objc_opt_class();
      v11 = NSStringFromClass(v17);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIClientRolloutArtifact key populations (expected %@, decoded %@)", v11, v19, 0];
      v44 = *MEMORY[0x277CCA450];
      v45 = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v22 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIClientRolloutArtifactOCNTErrorDomain" code:3 userInfo:v21];
      [coderCopy failWithError:v22];
    }

LABEL_21:
    goto LABEL_22;
  }

  error5 = [coderCopy error];

  if (!error5)
  {
    v48 = *MEMORY[0x277CCA450];
    v49[0] = @"Retrieved nil serialized value for nonnull TRIClientRolloutArtifact.rollout";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIClientRolloutArtifactOCNTErrorDomain" code:2 userInfo:v9];
    [coderCopy failWithError:v11];
    goto LABEL_22;
  }

  selfCopy = 0;
LABEL_25:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rollout = self->_rollout;
  v8 = coderCopy;
  if (rollout)
  {
    [coderCopy encodeObject:rollout forKey:@"rollout"];
    coderCopy = v8;
  }

  populations = self->_populations;
  if (populations)
  {
    [v8 encodeObject:populations forKey:@"populations"];
    coderCopy = v8;
  }

  deploymentDate = self->_deploymentDate;
  if (deploymentDate)
  {
    [v8 encodeObject:deploymentDate forKey:@"deploymentDate"];
    coderCopy = v8;
  }

  [coderCopy encodeInt64:self->_downloadSize forKey:@"downloadSize"];
  [v8 encodeInt64:self->_forLaunchDaemon forKey:@"forLaunchDaemon"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = *&self->_rollout;
  deploymentDate = self->_deploymentDate;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_downloadSize];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_forLaunchDaemon];
  v7 = [v3 initWithFormat:@"<TRIClientRolloutArtifact | rollout:%@ populations:%@ deploymentDate:%@ downloadSize:%@ forLaunchDaemon:%@>", v9, deploymentDate, v5, v6];

  return v7;
}

@end