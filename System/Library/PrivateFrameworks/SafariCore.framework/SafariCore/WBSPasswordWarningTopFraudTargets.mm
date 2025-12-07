@interface WBSPasswordWarningTopFraudTargets
- (WBSPasswordWarningTopFraudTargets)initWithHighPriorityTargets:(id)targets targets:(id)a4 financialTargets:(id)financialTargets;
- (WBSPasswordWarningTopFraudTargets)initWithSnapshotData:(id)data error:(id *)error;
@end

@implementation WBSPasswordWarningTopFraudTargets

- (WBSPasswordWarningTopFraudTargets)initWithHighPriorityTargets:(id)targets targets:(id)a4 financialTargets:(id)financialTargets
{
  targetsCopy = targets;
  v9 = a4;
  financialTargetsCopy = financialTargets;
  v20.receiver = self;
  v20.super_class = WBSPasswordWarningTopFraudTargets;
  v11 = [(WBSPasswordWarningTopFraudTargets *)&v20 init];
  if (v11)
  {
    v12 = [targetsCopy copy];
    highPriorityFraudTargets = v11->_highPriorityFraudTargets;
    v11->_highPriorityFraudTargets = v12;

    v14 = [v9 copy];
    fraudTargets = v11->_fraudTargets;
    v11->_fraudTargets = v14;

    v16 = [financialTargetsCopy copy];
    financialFraudTargets = v11->_financialFraudTargets;
    v11->_financialFraudTargets = v16;

    v18 = v11;
  }

  return v11;
}

- (WBSPasswordWarningTopFraudTargets)initWithSnapshotData:(id)data error:(id *)error
{
  v63[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF20] safari_dictionaryWithJSONOrPropertyListData:data];
  v8 = v6;
  if (v6)
  {
    v9 = [v6 objectForKeyedSubscript:@"highPriorityFraudTargets"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v12 = [v8 objectForKeyedSubscript:@"fraudTargets"];
      objc_opt_class();
      v13 = objc_opt_isKindOfClass();
      if (v13)
      {
        v15 = [v8 objectForKeyedSubscript:@"financialFraudTargets"];
        objc_opt_class();
        v16 = objc_opt_isKindOfClass();
        if (v16)
        {
          self = [(WBSPasswordWarningTopFraudTargets *)self initWithHighPriorityTargets:v9 targets:v12 financialTargets:v15];
          selfCopy = self;
LABEL_19:

LABEL_20:
          goto LABEL_21;
        }

        v43 = WBS_LOG_CHANNEL_PREFIXPasswords(v16, v17);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [(WBSPasswordWarningTopFraudTargets *)v43 initWithSnapshotData:v44 error:v45, v46, v47, v48, v49, v50];
          if (!error)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        if (error)
        {
LABEL_17:
          v51 = MEMORY[0x1E696ABC0];
          v52 = *MEMORY[0x1E696A250];
          v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TopFraudTargets plist missing %@ key", @"financialFraudTargets", *MEMORY[0x1E696A578]];
          v57 = v53;
          v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          *error = [v51 errorWithDomain:v52 code:259 userInfo:v54];
        }

LABEL_18:
        selfCopy = 0;
        goto LABEL_19;
      }

      v32 = WBS_LOG_CHANNEL_PREFIXPasswords(v13, v14);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [(WBSPasswordWarningTopFraudTargets *)v32 initWithSnapshotData:v33 error:v34, v35, v36, v37, v38, v39];
        if (error)
        {
          goto LABEL_14;
        }
      }

      else if (error)
      {
LABEL_14:
        v40 = MEMORY[0x1E696ABC0];
        v41 = *MEMORY[0x1E696A250];
        v58 = *MEMORY[0x1E696A578];
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TopFraudTargets plist missing %@ key", @"fraudTargets"];
        v59 = v15;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        *error = [v40 errorWithDomain:v41 code:259 userInfo:v42];

        goto LABEL_18;
      }

      selfCopy = 0;
      goto LABEL_20;
    }

    v22 = WBS_LOG_CHANNEL_PREFIXPasswords(isKindOfClass, v11);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(WBSPasswordWarningTopFraudTargets *)v22 initWithSnapshotData:v23 error:v24, v25, v26, v27, v28, v29];
      if (error)
      {
        goto LABEL_11;
      }
    }

    else if (error)
    {
LABEL_11:
      v30 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E696A250];
      v60 = *MEMORY[0x1E696A578];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TopFraudTargets plist missing %@ key", @"highPriorityFraudTargets"];
      v61 = v12;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      [v30 errorWithDomain:v31 code:259 userInfo:v15];
      *error = selfCopy = 0;
      goto LABEL_19;
    }

    selfCopy = 0;
    goto LABEL_21;
  }

  v19 = WBS_LOG_CHANNEL_PREFIXPasswords(0, v7);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [WBSPasswordWarningTopFraudTargets initWithSnapshotData:v19 error:?];
    if (error)
    {
      goto LABEL_8;
    }

LABEL_24:
    selfCopy = 0;
    goto LABEL_22;
  }

  if (!error)
  {
    goto LABEL_24;
  }

LABEL_8:
  v20 = MEMORY[0x1E696ABC0];
  v21 = *MEMORY[0x1E696A250];
  v62 = *MEMORY[0x1E696A578];
  v63[0] = @"Failed to decode topFraudTargets plist data.";
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
  [v20 errorWithDomain:v21 code:259 userInfo:v9];
  *error = selfCopy = 0;
LABEL_21:

LABEL_22:
  return selfCopy;
}

- (void)initWithSnapshotData:(uint64_t)a3 error:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"highPriorityFraudTargets";
  OUTLINED_FUNCTION_0_6(&dword_1B8447000, a1, a3, "TopFraudTargets plist missing %@ key", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithSnapshotData:(uint64_t)a3 error:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"fraudTargets";
  OUTLINED_FUNCTION_0_6(&dword_1B8447000, a1, a3, "TopFraudTargets plist missing %@ key", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithSnapshotData:(uint64_t)a3 error:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"financialFraudTargets";
  OUTLINED_FUNCTION_0_6(&dword_1B8447000, a1, a3, "TopFraudTargets plist missing %@ key", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end