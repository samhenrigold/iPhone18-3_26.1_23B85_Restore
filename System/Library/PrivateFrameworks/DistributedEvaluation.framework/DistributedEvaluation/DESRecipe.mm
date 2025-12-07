@interface DESRecipe
+ (BOOL)_hasValidClippingBounds:(id)bounds matchValidNumChunks:(id)chunks;
+ (BOOL)transportIsDedisco:(id)dedisco;
+ (BOOL)useAdaptiveClipping:(id)clipping;
+ (BOOL)useAggregatableMetadata:(id)metadata;
+ (BOOL)useSparsification:(id)sparsification;
- (BOOL)isFederatedBufferStaled;
- (BOOL)isFederatedBufferStaled:(id)staled;
- (BOOL)useFederatedBuffer;
- (DESRecipe)initWithCoder:(id)coder;
- (NSNumber)approximateStaleness;
- (NSNumber)federatedBufferDownScalingFactor;
- (NSNumber)maxNorm;
- (NSString)privacyIdentifierExt;
- (id)_initWithAssetURL:(id)l bundleIdentifier:(id)identifier error:(id *)error;
- (id)_initWithRecipeResponse:(id)response recipeID:(id)d bundleIdentifier:(id)identifier error:(id *)error;
- (id)_initWithRecipeUserInfo:(id)info recipeID:(id)d bundleIdentifier:(id)identifier predicate:(id)predicate attachments:(id)attachments;
- (id)_inithWithContentsOfFile:(id)file recipeID:(id)d bundleIdentifier:(id)identifier error:(id *)error;
- (id)description;
- (id)haruspexKeyWithError:(id *)error;
- (void)approximateStaleness;
- (void)encodeWithCoder:(id)coder;
- (void)federatedBufferDownScalingFactor;
@end

@implementation DESRecipe

- (id)_inithWithContentsOfFile:(id)file recipeID:(id)d bundleIdentifier:(id)identifier error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  dCopy = d;
  identifierCopy = identifier;
  v24 = 0;
  v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:fileCopy options:0 error:&v24];
  v14 = v24;
  if (v13)
  {
    v23 = v14;
    v15 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v13 options:0 error:&v23];
    v16 = v23;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [(DESRecipe *)self _initWithRecipeUserInfo:v15 recipeID:dCopy bundleIdentifier:identifierCopy];
    }

    else
    {
      v20 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v26 = fileCopy;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_248FF7000, v20, OS_LOG_TYPE_INFO, "Unparsable record: %@, %@", buf, 0x16u);
      }

      if (error)
      {
        v21 = v16;
        v17 = 0;
        *error = v16;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v18 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v26 = fileCopy;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_248FF7000, v18, OS_LOG_TYPE_INFO, "Unreadable recipe %@: %@", buf, 0x16u);
    }

    if (error)
    {
      v19 = v14;
      v17 = 0;
      *error = v14;
    }

    else
    {
      v17 = 0;
    }

    v16 = v14;
  }

  return v17;
}

- (id)_initWithRecipeUserInfo:(id)info recipeID:(id)d bundleIdentifier:(id)identifier predicate:(id)predicate attachments:(id)attachments
{
  infoCopy = info;
  dCopy = d;
  identifierCopy = identifier;
  predicateCopy = predicate;
  attachmentsCopy = attachments;
  v32.receiver = self;
  v32.super_class = DESRecipe;
  v17 = [(DESRecipe *)&v32 init];
  if (v17)
  {
    v18 = [dCopy copy];
    recipeID = v17->_recipeID;
    v17->_recipeID = v18;

    v20 = [identifierCopy copy];
    bundleIdentifier = v17->_bundleIdentifier;
    v17->_bundleIdentifier = v20;

    v22 = [infoCopy copy];
    recipeUserInfo = v17->_recipeUserInfo;
    v17->_recipeUserInfo = v22;

    v24 = [attachmentsCopy copy];
    attachments = v17->_attachments;
    v17->_attachments = v24;

    attachmentSignatures = v17->_attachmentSignatures;
    v17->_attachmentSignatures = MEMORY[0x277CBEBF8];

    certificate = v17->_certificate;
    v17->_certificate = 0;

    v28 = [predicateCopy copy];
    predicate = v17->_predicate;
    v17->_predicate = v28;

    v30 = v17;
  }

  return v17;
}

- (id)_initWithAssetURL:(id)l bundleIdentifier:(id)identifier error:(id *)error
{
  v38[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  identifierCopy = identifier;
  if (lCopy)
  {
    v28 = 0;
    v10 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:8 error:&v28];
    v11 = v28;
    if (!v10)
    {
      if (!error)
      {
        selfCopy = 0;
LABEL_23:

        goto LABEL_24;
      }

      v20 = MEMORY[0x277CCA9B8];
      v35[0] = *MEMORY[0x277CCA450];
      lCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to read URL=(%@)", lCopy];
      v35[1] = *MEMORY[0x277CCA7E8];
      v36[0] = lCopy;
      v36[1] = v11;
      lCopy2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
      [v20 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:5006 userInfo:lCopy2];
      *error = selfCopy = 0;
      v13 = v11;
      goto LABEL_21;
    }

    v27 = v11;
    lCopy = [MEMORY[0x277CCAAA0] JSONObjectWithData:v10 options:0 error:&v27];
    v13 = v27;

    if (!lCopy)
    {
      if (!error)
      {
        selfCopy = 0;
        goto LABEL_22;
      }

      v26 = MEMORY[0x277CCA9B8];
      v33[0] = *MEMORY[0x277CCA450];
      lCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to decode JSONObject from URL=(%@)", lCopy];
      v33[1] = *MEMORY[0x277CCA7E8];
      v34[0] = lCopy2;
      v34[1] = v13;
      lCopy4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
      [v26 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:5006 userInfo:lCopy4];
      *error = selfCopy = 0;
      goto LABEL_20;
    }

    v14 = [lCopy objectForKeyedSubscript:@"recipe_blob"];
    lCopy2 = v14;
    if (v14)
    {
      lCopy4 = [v14 objectForKeyedSubscript:@"id"];
      if (lCopy4)
      {
        v25 = v13;
        lCopy3 = [lCopy objectForKeyedSubscript:@"recipe_predicate_client"];
        self = [(DESRecipe *)self _initWithRecipeUserInfo:lCopy2 recipeID:lCopy4 bundleIdentifier:identifierCopy predicate:lCopy3];
        selfCopy = self;
      }

      else
      {
        if (!error)
        {
          selfCopy = 0;
          goto LABEL_20;
        }

        v24 = MEMORY[0x277CCA9B8];
        v25 = v13;
        v29 = *MEMORY[0x277CCA450];
        lCopy3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing recipe ID for URL=(%@)", lCopy];
        v30 = lCopy3;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        *error = [v24 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1524 userInfo:v21];

        selfCopy = 0;
      }
    }

    else
    {
      if (!error)
      {
        selfCopy = 0;
        goto LABEL_21;
      }

      v23 = MEMORY[0x277CCA9B8];
      v25 = v13;
      v31 = *MEMORY[0x277CCA450];
      lCopy4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing user info dictionary for URL=(%@)", lCopy];
      v32 = lCopy4;
      lCopy3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      [v23 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1524 userInfo:lCopy3];
      *error = selfCopy = 0;
    }

    v13 = v25;
LABEL_20:

LABEL_21:
LABEL_22:

    v11 = v13;
    goto LABEL_23;
  }

  if (error)
  {
    v19 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA450];
    v38[0] = @"Nil recipe asset URL";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    [v19 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:5003 userInfo:v11];
    *error = selfCopy = 0;
LABEL_24:

    goto LABEL_25;
  }

  selfCopy = 0;
LABEL_25:

  return selfCopy;
}

- (id)_initWithRecipeResponse:(id)response recipeID:(id)d bundleIdentifier:(id)identifier error:(id *)error
{
  v150[1] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  dCopy = d;
  identifierCopy = identifier;
  v116.receiver = self;
  v116.super_class = DESRecipe;
  v13 = [(DESRecipe *)&v116 init];
  if (!v13)
  {
    v24 = 0;
    goto LABEL_136;
  }

  v14 = [responseCopy objectForKey:@"recipe_signing"];
  if (!v14)
  {
    v25 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
    }

    if (error)
    {
      v26 = MEMORY[0x277CCA9B8];
      v149 = *MEMORY[0x277CCA470];
      v150[0] = @"Missing recipe_signing";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v150 forKeys:&v149 count:1];
      v27 = [v26 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1521 userInfo:v15];
LABEL_25:
      v24 = 0;
      *error = v27;
      goto LABEL_134;
    }

LABEL_26:
    v24 = 0;
    goto LABEL_135;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v28 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
    }

    if (error)
    {
      v29 = MEMORY[0x277CCA9B8];
      v147 = *MEMORY[0x277CCA470];
      v148 = @"Malformed recipe_signing";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
      v27 = [v29 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1521 userInfo:v15];
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v15 = [v14 objectForKey:@"recipe_signature"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v30 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
    }

    if (error)
    {
      v31 = MEMORY[0x277CCA9B8];
      v145 = *MEMORY[0x277CCA470];
      v146 = @"Malformed recipe_signature";
      v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
      [v31 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1521 userInfo:v109];
      *error = v24 = 0;
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_134;
  }

  v108 = [v14 objectForKey:@"recipe_content"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v32 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
    }

    if (error)
    {
      v33 = MEMORY[0x277CCA9B8];
      v143 = *MEMORY[0x277CCA470];
      v144 = @"Malformed recipe_content";
      v107 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
      [v33 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1521 userInfo:v107];
      *error = v24 = 0;
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_133;
  }

  v106 = [v14 objectForKey:@"asset_signing_certificate"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v106 length])
  {
    v34 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
    }

    if (error)
    {
      v35 = MEMORY[0x277CCA9B8];
      v141 = *MEMORY[0x277CCA470];
      v142 = @"Malformed asset_signing_certificate";
      v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
      [v35 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1521 userInfo:v105];
      *error = v24 = 0;
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_132;
  }

  v104 = [v106 dataUsingEncoding:4];
  v16 = [v104 copy];
  certificate = v13->_certificate;
  v13->_certificate = v16;

  v103 = [v108 dataUsingEncoding:4];
  v102 = [DESSignatureKey keyFromData:v104];
  if (([v102 validateBase64Signature:v15 data:v103] & 1) == 0)
  {
    v36 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
    }

    if (error)
    {
      v37 = MEMORY[0x277CCA9B8];
      v139 = *MEMORY[0x277CCA470];
      v140 = @"Failed to validate recipe signature";
      v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
      [v37 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1504 userInfo:v101];
      *error = v24 = 0;
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_131;
  }

  v100 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v108 options:0];
  if (!v100)
  {
    v38 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
    }

    if (error)
    {
      v39 = MEMORY[0x277CCA9B8];
      v137 = *MEMORY[0x277CCA470];
      v138 = @"Failed to base64 decode recipe content";
      v99 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
      [v39 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1530 userInfo:v99];
      *error = v24 = 0;
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_130;
  }

  v98 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v100 options:0 error:error];
  v18 = +[DESLogging coreChannel];
  v19 = v18;
  if (!v98)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
    }

    if (error)
    {
      v40 = MEMORY[0x277CCA9B8];
      v135 = *MEMORY[0x277CCA470];
      v136 = @"Failed to deserialize recipe content";
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
      *error = [v40 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1522 userInfo:v41];
    }

    v24 = 0;
    goto LABEL_129;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
  }

  v113 = 0;
  v114[0] = &v113;
  v114[1] = 0x3032000000;
  v114[2] = __Block_byref_object_copy__0;
  v114[3] = __Block_byref_object_dispose__0;
  v115 = [v98 objectForKeyedSubscript:@"recipe"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v42 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [(DESRecipe *)v114 _initWithRecipeResponse:v42 recipeID:v43 bundleIdentifier:v44 error:v45, v46, v47, v48];
    }

    if (error)
    {
      v49 = MEMORY[0x277CCA9B8];
      v133 = *MEMORY[0x277CCA470];
      v134 = @"Malformed recipe";
      v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
      [v49 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1524 userInfo:v50];
      *error = v24 = 0;
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_128;
  }

  v20 = [v98 objectForKeyedSubscript:@"parameters"];
  objc_opt_class();
  v93 = v20;
  if (objc_opt_isKindOfClass())
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = __69__DESRecipe__initWithRecipeResponse_recipeID_bundleIdentifier_error___block_invoke;
    v110[3] = &unk_278F83E78;
    v22 = v21;
    v111 = v22;
    v112 = &v113;
    [v20 enumerateKeysAndObjectsUsingBlock:v110];

    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v91 = v23;
  v51 = [v23 copy];
  parametersUsed = v13->_parametersUsed;
  v13->_parametersUsed = v51;

  v53 = [*(v114[0] + 40) copy];
  recipeUserInfo = v13->_recipeUserInfo;
  v13->_recipeUserInfo = v53;

  v96 = [v98 objectForKeyedSubscript:@"attached_files"];
  if (v96)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v61 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
      }

      if (error)
      {
        v62 = MEMORY[0x277CCA9B8];
        v131 = *MEMORY[0x277CCA470];
        v132 = @"Malformed attached_files";
        v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
        [v62 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1523 userInfo:v63];
        *error = v24 = 0;
      }

      else
      {
        v24 = 0;
      }

      goto LABEL_127;
    }
  }

  v95 = [v98 objectForKeyedSubscript:@"attached_files_signatures"];
  if (v95)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v68 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
      }

      if (error)
      {
        v69 = MEMORY[0x277CCA9B8];
        v129 = *MEMORY[0x277CCA470];
        v130 = @"Malformed attached_files_signatures";
        v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
        [v69 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1523 userInfo:v70];
        v67 = v92 = v70;
        goto LABEL_99;
      }

LABEL_100:
      v24 = 0;
      goto LABEL_126;
    }
  }

  v55 = [v95 count];
  if (v55 != [v96 count])
  {
    v64 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
    }

    if (error)
    {
      v65 = MEMORY[0x277CCA9B8];
      v127 = *MEMORY[0x277CCA470];
      v128 = @"Length mismatch between attached_files and attached_files_signatures";
      v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
      [v65 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1523 userInfo:v66];
      v67 = v92 = v66;
LABEL_99:
      v24 = 0;
      *error = v67;
      goto LABEL_125;
    }

    goto LABEL_100;
  }

  v92 = [v98 objectForKeyedSubscript:@"attached_files_paths"];
  if (v92)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = [v92 count];
      if (v56 == [v96 count])
      {
        goto LABEL_70;
      }

      v78 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
      }

      if (error)
      {
        v79 = MEMORY[0x277CCA9B8];
        v123 = *MEMORY[0x277CCA470];
        v124 = @"Length mismatch between paths and attachments";
        obj = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
        v77 = [v79 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1523 userInfo:obj];
        goto LABEL_111;
      }
    }

    else
    {
      v75 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
      }

      if (error)
      {
        v76 = MEMORY[0x277CCA9B8];
        v125 = *MEMORY[0x277CCA470];
        v126 = @"Malformed paths";
        obj = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
        v77 = [v76 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1523 userInfo:obj];
LABEL_111:
        v24 = 0;
        *error = v77;
        goto LABEL_124;
      }
    }

    v24 = 0;
    goto LABEL_125;
  }

LABEL_70:
  obj = objc_alloc_init(MEMORY[0x277CBEB18]);
  v89 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v88 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v57 = 0;
  *&v58 = 138412290;
  v87 = v58;
  while (1)
  {
    if (v57 >= [v96 count])
    {
      objc_storeStrong(&v13->_attachments, obj);
      objc_storeStrong(&v13->_attachmentSignatures, v89);
      objc_storeStrong(&v13->_attachmentPaths, v88);
      v71 = [dCopy copy];
      recipeID = v13->_recipeID;
      v13->_recipeID = v71;

      v73 = [identifierCopy copy];
      bundleIdentifier = v13->_bundleIdentifier;
      v13->_bundleIdentifier = v73;

      v24 = v13;
      goto LABEL_123;
    }

    v97 = [v96 objectAtIndexedSubscript:v57];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v60 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *buf = v87;
      v122 = v97;
      _os_log_error_impl(&dword_248FF7000, v60, OS_LOG_TYPE_ERROR, "Invalid attachmentURLString = %@", buf, 0xCu);
    }

LABEL_85:

    ++v57;
  }

  v59 = [MEMORY[0x277CBEBC0] URLWithString:v97];
  v60 = v59;
  if (!v59)
  {
    log = +[DESLogging coreChannel];
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = v87;
      v122 = v97;
      _os_log_error_impl(&dword_248FF7000, log, OS_LOG_TYPE_ERROR, "Fail to create URL from attachmentURLString = %@", buf, 0xCu);
    }

LABEL_84:

    goto LABEL_85;
  }

  [obj addObject:v59];
  if (v57 >= [v95 count])
  {
LABEL_77:
    if (v57 >= [v92 count])
    {
      goto LABEL_85;
    }

    log = [v92 objectAtIndexedSubscript:v57];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v84 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
      }

      if (error)
      {
        v85 = MEMORY[0x277CCA9B8];
        v117 = *MEMORY[0x277CCA470];
        v118 = @"Nonstring type used as attachment path";
        v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
        v83 = [v85 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1523 userInfo:v82];
        goto LABEL_121;
      }

      goto LABEL_122;
    }

    [v88 addObject:log];
    goto LABEL_84;
  }

  log = [v95 objectAtIndexedSubscript:v57];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v89 addObject:log];

    goto LABEL_77;
  }

  v80 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
  {
    [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
  }

  if (error)
  {
    v81 = MEMORY[0x277CCA9B8];
    v119 = *MEMORY[0x277CCA470];
    v120 = @"Nonstring type used as signature in attached_files_signatures";
    v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
    v83 = [v81 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1523 userInfo:v82];
LABEL_121:
    *error = v83;
  }

LABEL_122:

  v24 = 0;
LABEL_123:

LABEL_124:
LABEL_125:

LABEL_126:
LABEL_127:

LABEL_128:
  _Block_object_dispose(&v113, 8);

LABEL_129:
LABEL_130:

LABEL_131:
LABEL_132:

LABEL_133:
LABEL_134:

LABEL_135:
LABEL_136:

  return v24;
}

void __69__DESRecipe__initWithRecipeResponse_recipeID_bundleIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 count])
  {
    v7 = [v6 objectAtIndex:{arc4random_uniform(objc_msgSend(v6, "count"))}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = MEMORY[0x277CCAAA0];
      v9 = [v7 dataUsingEncoding:4];
      v19 = 0;
      v10 = [v8 JSONObjectWithData:v9 options:4 error:&v19];
      v11 = v19;

      if (v10)
      {
        [*(a1 + 32) setValue:v7 forKey:v5];
        v12 = *(*(*(a1 + 40) + 8) + 40);
        v13 = [@"$" stringByAppendingString:v5];
        v14 = [v12 _fides_objectByReplacingValue:v13 withValue:v10];

        v15 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v18 = *(*(*(a1 + 40) + 8) + 40);
          *buf = 138412802;
          v21 = v5;
          v22 = 2112;
          v23 = v18;
          v24 = 2112;
          v25 = v14;
          _os_log_debug_impl(&dword_248FF7000, v15, OS_LOG_TYPE_DEBUG, "Recipe after replacement of %@: %@ -> %@", buf, 0x20u);
        }

        v16 = *(*(a1 + 40) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v14;
      }

      else
      {
        v17 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __69__DESRecipe__initWithRecipeResponse_recipeID_bundleIdentifier_error___block_invoke_cold_2();
        }
      }
    }

    else
    {
      v11 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __69__DESRecipe__initWithRecipeResponse_recipeID_bundleIdentifier_error___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v7 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __69__DESRecipe__initWithRecipeResponse_recipeID_bundleIdentifier_error___block_invoke_cold_3();
    }
  }
}

+ (BOOL)transportIsDedisco:(id)dedisco
{
  v3 = [dedisco objectForKeyedSubscript:@"des_settings"];
  v4 = [v3 objectForKeyedSubscript:@"data_transport"];
  v5 = [v4 isEqualToString:@"dedisco"];

  return v5;
}

- (NSString)privacyIdentifierExt
{
  v3 = [(NSDictionary *)self->_recipeUserInfo objectForKeyedSubscript:@"privacyIdentifierExt"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(NSDictionary *)self->_recipeUserInfo objectForKeyedSubscript:@"privacyIdentifierExt"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)haruspexKeyWithError:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = [(NSDictionary *)self->_recipeUserInfo objectForKeyedSubscript:@"iCloudAggServiceKey"];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v4 options:0];
    v6 = v5;
    if (v5)
    {
      v6 = v5;
      v7 = v6;
    }

    else
    {
      if (error)
      {
        v9 = MEMORY[0x277CCA9B8];
        v12 = *MEMORY[0x277CCA450];
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
        *error = [v9 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1501 userInfo:v10];
      }

      v7 = 0;
    }

    goto LABEL_9;
  }

  if (error)
  {
    v8 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v8 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1501 userInfo:v6];
    *error = v7 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

+ (BOOL)useSparsification:(id)sparsification
{
  sparsificationCopy = sparsification;
  v4 = sparsificationCopy;
  if (sparsificationCopy)
  {
    v5 = [sparsificationCopy objectForKeyedSubscript:@"sparsification"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 objectForKeyedSubscript:@"sparsification"];
      v7 = [v6 objectForKeyedSubscript:@"chunkClippingBounds"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v4 objectForKeyedSubscript:@"sparsification"];
        v9 = [v8 objectForKeyedSubscript:@"numChunks"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v4 objectForKeyedSubscript:@"sparsification"];
          v11 = [v10 objectForKeyedSubscript:@"chunkClippingBounds"];
          v18 = [v4 objectForKeyedSubscript:@"sparsification"];
          v12 = [v18 objectForKeyedSubscript:@"numChunks"];
          v19 = v11;
          if ([DESRecipe _hasValidClippingBounds:v11 matchValidNumChunks:v12])
          {
            v13 = [v4 objectForKeyedSubscript:@"sparsification"];
            [v13 objectForKeyedSubscript:@"sparsificationMapFile"];
            v14 = v17 = v10;
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            v10 = v17;
          }

          else
          {
            isKindOfClass = 0;
          }
        }

        else
        {
          isKindOfClass = 0;
        }
      }

      else
      {
        isKindOfClass = 0;
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (BOOL)_hasValidClippingBounds:(id)bounds matchValidNumChunks:(id)chunks
{
  boundsCopy = bounds;
  chunksCopy = chunks;
  if ([boundsCopy count])
  {
    v7 = [boundsCopy objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  intValue = [chunksCopy intValue];
  LOBYTE(intValue) = [boundsCopy count] == intValue;

  return isKindOfClass & intValue;
}

+ (BOOL)useAggregatableMetadata:(id)metadata
{
  if (metadata)
  {
    v3 = [metadata objectForKeyedSubscript:@"MetadataEncoding"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (BOOL)useAdaptiveClipping:(id)clipping
{
  clippingCopy = clipping;
  v4 = clippingCopy;
  if (clippingCopy)
  {
    v5 = [clippingCopy objectForKeyedSubscript:@"ClippingIndicatorScale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 objectForKeyedSubscript:@"ClippingIndicatorScale"];
      [v6 doubleValue];
      v8 = v7 > 0.0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)useFederatedBuffer
{
  v3 = [(NSDictionary *)self->_recipeUserInfo objectForKeyedSubscript:@"federatedBufferContext"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSDictionary *)self->_recipeUserInfo objectForKeyedSubscript:@"ramsayRecipeID"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (NSNumber)approximateStaleness
{
  if (![(DESRecipe *)self useFederatedBuffer])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    goto LABEL_15;
  }

  v3 = [(NSDictionary *)self->_recipeUserInfo objectForKeyedSubscript:@"federatedBufferContext"];
  v4 = [v3 objectForKeyedSubscript:@"iterationStartTime"];

  if (!v4)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    goto LABEL_14;
  }

  v5 = [v3 objectForKeyedSubscript:@"iterationStartTime"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = [v3 objectForKeyedSubscript:@"stalenessScale"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_10:
    goto LABEL_11;
  }

  v7 = [v3 objectForKeyedSubscript:@"stalenessBias"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_11:
    v15 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(DESRecipe *)v3 approximateStaleness];
    }

    v14 = 0;
    goto LABEL_14;
  }

  v9 = [v3 objectForKeyedSubscript:@"iterationStartTime"];
  [v9 doubleValue];
  v11 = v10;
  v12 = [v3 objectForKeyedSubscript:@"stalenessScale"];
  v13 = [v3 objectForKeyedSubscript:@"stalenessBias"];
  v14 = [DESFederatedBuffer computeApproximateStaleness:v12 stalenessScale:v13 stalenessBias:v11];

LABEL_14:
LABEL_15:

  return v14;
}

- (BOOL)isFederatedBufferStaled:(id)staled
{
  staledCopy = staled;
  if (staledCopy)
  {
    if ([(DESRecipe *)self useFederatedBuffer])
    {
      v5 = [(NSDictionary *)self->_recipeUserInfo objectForKeyedSubscript:@"federatedBufferContext"];
      v6 = [v5 objectForKeyedSubscript:@"maximumStaleness"];

      if (v6)
      {
        v7 = [v5 objectForKeyedSubscript:@"maximumStaleness"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          [staledCopy doubleValue];
          v10 = v9;
          v11 = [v5 objectForKeyedSubscript:@"maximumStaleness"];
          [v11 doubleValue];
          v13 = v12;

          if (v10 < v13)
          {
            LOBYTE(v6) = 0;
            goto LABEL_14;
          }

          v6 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            [(DESRecipe *)staledCopy isFederatedBufferStaled:v5, v6];
          }
        }

        else
        {
          v6 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            [DESRecipe isFederatedBufferStaled:v5];
          }
        }

        LOBYTE(v6) = 1;
      }

LABEL_14:

      goto LABEL_15;
    }

    LOBYTE(v6) = 0;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

LABEL_15:

  return v6;
}

- (BOOL)isFederatedBufferStaled
{
  selfCopy = self;
  approximateStaleness = [(DESRecipe *)self approximateStaleness];
  LOBYTE(selfCopy) = [(DESRecipe *)selfCopy isFederatedBufferStaled:approximateStaleness];

  return selfCopy;
}

- (NSNumber)federatedBufferDownScalingFactor
{
  if (![(DESRecipe *)self useFederatedBuffer])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
    goto LABEL_18;
  }

  approximateStaleness = [(DESRecipe *)self approximateStaleness];
  if (!approximateStaleness)
  {
    v4 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(DESRecipe *)v4 federatedBufferDownScalingFactor];
    }

    goto LABEL_16;
  }

  if ([(DESRecipe *)self isFederatedBufferStaled:approximateStaleness])
  {
    v4 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(DESRecipe *)v4 federatedBufferDownScalingFactor];
    }

LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  v4 = [(NSDictionary *)self->_recipeUserInfo objectForKeyedSubscript:@"federatedBufferContext"];
  v6 = [v4 objectForKeyedSubscript:@"downScalingOrder"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"downScalingOrder"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v10 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(DESRecipe *)v4 federatedBufferDownScalingFactor];
      }

      goto LABEL_16;
    }

    v9 = [v4 objectForKeyedSubscript:@"downScalingOrder"];
    v5 = [DESFederatedBuffer computeDownScalingFactor:v9 approximateStaleness:approximateStaleness];
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
  }

LABEL_17:

LABEL_18:

  return v5;
}

- (NSNumber)maxNorm
{
  v3 = [(NSDictionary *)self->_recipeUserInfo objectForKeyedSubscript:@"maxNorm"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(NSDictionary *)self->_recipeUserInfo objectForKeyedSubscript:@"L2NormBound"];
  }

  v6 = v5;

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  recipeID = self->_recipeID;
  v11 = coderCopy;
  if (recipeID)
  {
    [coderCopy encodeObject:recipeID forKey:@"recipeId"];
    coderCopy = v11;
  }

  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  recipeUserInfo = self->_recipeUserInfo;
  if (recipeUserInfo)
  {
    [v11 encodeObject:recipeUserInfo forKey:@"recipeUserInfo"];
  }

  attachments = self->_attachments;
  if (attachments)
  {
    [v11 encodeObject:attachments forKey:@"attachments"];
  }

  attachmentSignatures = self->_attachmentSignatures;
  v9 = v11;
  if (attachmentSignatures)
  {
    [v11 encodeObject:attachmentSignatures forKey:@"attachmentSignatures"];
    v9 = v11;
  }

  attachmentPaths = self->_attachmentPaths;
  if (attachmentPaths)
  {
    [v11 encodeObject:attachmentPaths forKey:@"attachmentPaths"];
    v9 = v11;
  }
}

- (DESRecipe)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = DESRecipe;
  v5 = [(DESRecipe *)&v33 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipeId"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    if (v7)
    {
      objc_storeStrong(&v5->_recipeID, v6);
      objc_storeStrong(&v5->_bundleIdentifier, v7);
      v8 = MEMORY[0x277CBEB98];
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
      v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"recipeUserInfo"];
      recipeUserInfo = v5->_recipeUserInfo;
      v5->_recipeUserInfo = v14;

      v16 = MEMORY[0x277CBEB98];
      v17 = objc_opt_class();
      v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
      v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"attachments"];
      attachments = v5->_attachments;
      v5->_attachments = v19;

      v21 = MEMORY[0x277CBEB98];
      v22 = objc_opt_class();
      v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
      v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"attachmentSignatures"];
      attachmentSignatures = v5->_attachmentSignatures;
      v5->_attachmentSignatures = v24;

      v26 = MEMORY[0x277CBEB98];
      v27 = objc_opt_class();
      v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
      v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"attachmentPaths"];
      attachmentPaths = v5->_attachmentPaths;
      v5->_attachmentPaths = v29;

      v31 = v5;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@(%@, %@, %@)", v5, self->_bundleIdentifier, self->_recipeID, self->_recipeUserInfo];

  return v6;
}

- (void)_initWithRecipeResponse:recipeID:bundleIdentifier:error:.cold.5()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_248FF7000, v0, OS_LOG_TYPE_DEBUG, "Successfully validated recipe signature: %@", v1, 0xCu);
}

- (void)_initWithRecipeResponse:(uint64_t)a3 recipeID:(uint64_t)a4 bundleIdentifier:(uint64_t)a5 error:(uint64_t)a6 .cold.6(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(*a1 + 40);
  OUTLINED_FUNCTION_0(&dword_248FF7000, a2, a3, "recipe is of wrong type or zero length, recipe=%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)approximateStaleness
{
  v2 = [self objectForKeyedSubscript:@"iterationStartTime"];
  v3 = [self objectForKeyedSubscript:@"stalenessScale"];
  v9 = [self objectForKeyedSubscript:@"stalenessBias"];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)isFederatedBufferStaled:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"maximumStaleness"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)isFederatedBufferStaled:(NSObject *)a3 .cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 objectForKeyedSubscript:@"maximumStaleness"];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_248FF7000, a3, OS_LOG_TYPE_DEBUG, "Rejecting recipe since the staleness %@ is larger or equal than the limit %@", &v6, 0x16u);
}

- (void)federatedBufferDownScalingFactor
{
  v1 = [self objectForKeyedSubscript:@"downScalingOrder"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end