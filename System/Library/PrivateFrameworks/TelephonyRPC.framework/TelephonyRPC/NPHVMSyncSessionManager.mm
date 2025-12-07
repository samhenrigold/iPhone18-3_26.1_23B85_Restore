@interface NPHVMSyncSessionManager
- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error;
- (NPHVMSyncSessionManager)init;
- (id)changeFromData:(id)data ofType:(int64_t)type;
- (id)dataFromChange:(id)change;
- (id)decodeChangeData:(id)data fromProtocolVersion:(int64_t)version ofType:(int64_t)type;
- (id)encodeSYChangeForBackwardCompatibility:(id)compatibility protocolVersion:(int64_t)version;
- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error;
- (void)enqueueVoicemailChanges:(id)changes changeType:(int64_t)type;
- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion;
- (void)syncSession:(id)session didEndWithError:(id)error;
@end

@implementation NPHVMSyncSessionManager

- (NPHVMSyncSessionManager)init
{
  v8.receiver = self;
  v8.super_class = NPHVMSyncSessionManager;
  v2 = [(NPHVMSyncSessionManager *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    deltaSyncChanges = v2->_deltaSyncChanges;
    v2->_deltaSyncChanges = v3;

    v5 = objc_opt_new();
    deltaSyncChangeTypes = v2->_deltaSyncChangeTypes;
    v2->_deltaSyncChangeTypes = v5;
  }

  return v2;
}

- (void)enqueueVoicemailChanges:(id)changes changeType:(int64_t)type
{
  v16 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  v7 = nph_general_log(changesCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    typeCopy = "[NPHVMSyncSessionManager enqueueVoicemailChanges:changeType:]";
    _os_log_impl(&dword_26D269000, v7, OS_LOG_TYPE_DEFAULT, "%s", &v14, 0xCu);
  }

  v9 = nph_general_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    typeCopy = changesCopy;
    _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "voicemails: %@", &v14, 0xCu);
  }

  v11 = nph_general_log(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_26D269000, v11, OS_LOG_TYPE_DEFAULT, "changeType: %ld", &v14, 0xCu);
  }

  if ([changesCopy count])
  {
    [(NSMutableArray *)self->_deltaSyncChanges addObject:changesCopy];
    deltaSyncChangeTypes = self->_deltaSyncChangeTypes;
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    [(NSMutableArray *)deltaSyncChangeTypes addObject:v13];
  }
}

- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  changesCopy = changes;
  v10 = nph_general_log(changesCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v41 = "[NPHVMSyncSessionManager syncSession:enqueueChanges:error:]";
    _os_log_impl(&dword_26D269000, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v12 = nph_general_log(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    isResetSync = [sessionCopy isResetSync];
    *buf = 67109120;
    LODWORD(v41) = isResetSync;
    _os_log_impl(&dword_26D269000, v12, OS_LOG_TYPE_DEFAULT, "isResetSync = %d", buf, 8u);
  }

  if (self->_cancel)
  {
    v15 = nph_general_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v41 = "[NPHVMSyncSessionManager syncSession:enqueueChanges:error:]";
      _os_log_impl(&dword_26D269000, v15, OS_LOG_TYPE_DEFAULT, "%s Cancelled!", buf, 0xCu);
    }

    v16 = 3;
    goto LABEL_16;
  }

  while (1)
  {
    if (![(NSMutableArray *)self->_deltaSyncChanges count])
    {
      v15 = 0;
LABEL_14:
      delegate = [(NPHVMSyncSessionManager *)self delegate];
      [delegate syncSessionManagerDidCompleteSending:self];
      v16 = 2;
      goto LABEL_15;
    }

    v15 = [(NSMutableArray *)self->_deltaSyncChanges objectAtIndexedSubscript:0];
    v17 = [(NSMutableArray *)self->_deltaSyncChangeTypes objectAtIndexedSubscript:0];
    integerValue = [v17 integerValue];

    if (!v15)
    {
      goto LABEL_14;
    }

    if ([v15 count]> self->_deltaSyncCurrentIdx)
    {
      break;
    }

    [(NSMutableArray *)self->_deltaSyncChanges removeObjectAtIndex:0];
    [(NSMutableArray *)self->_deltaSyncChangeTypes removeObjectAtIndex:0];
    self->_deltaSyncCurrentIdx = 0;
  }

  v21 = [v15 objectAtIndexedSubscript:?];
  if (!v21)
  {
    goto LABEL_14;
  }

  delegate = v21;
  if ((integerValue - 1) <= 1)
  {
    [v21 loadVoicemailBodyIfNeeded];
  }

  dataPath = [delegate dataPath];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/mobile/Library/Voicemail/%lld.amr", objc_msgSend(delegate, "voicemailNumber")];
  [delegate setDataPath:v22];

  data = [delegate data];
  serializer = [sessionCopy serializer];
  v25 = [serializer changeFromData:data ofType:integerValue];

  v27 = nph_general_log(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v25;
    _os_log_impl(&dword_26D269000, v27, OS_LOG_TYPE_DEFAULT, "change: %@", buf, 0xCu);
  }

  v29 = nph_general_log(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v41 = integerValue;
    _os_log_impl(&dword_26D269000, v29, OS_LOG_TYPE_DEFAULT, "change type: %ld", buf, 0xCu);
  }

  v31 = nph_general_log(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = objc_opt_class();
    *buf = 138412290;
    v41 = v32;
    v33 = v32;
    _os_log_impl(&dword_26D269000, v31, OS_LOG_TYPE_DEFAULT, "change class: %@", buf, 0xCu);
  }

  [delegate clearVoicemailBody];
  [delegate setDataPath:dataPath];
  if (changesCopy[2](changesCopy, v25))
  {
    deltaSyncCurrentIdx = self->_deltaSyncCurrentIdx;
    v35 = [v15 count];
    v36 = deltaSyncCurrentIdx / v35;
    v37 = nph_general_log(v35);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v41 = "[NPHVMSyncSessionManager syncSession:enqueueChanges:error:]";
      v42 = 2048;
      v43 = v36;
      _os_log_impl(&dword_26D269000, v37, OS_LOG_TYPE_DEFAULT, "%s: reporting progress: %f", buf, 0x16u);
    }

    delegate2 = [(NPHVMSyncSessionManager *)self delegate];
    [delegate2 syncSessionManager:self reportProgress:v36];

    ++self->_deltaSyncCurrentIdx;
    v16 = 1;
  }

  else
  {
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.nanophone" code:301 userInfo:0];
    }

    v16 = 5;
  }

LABEL_15:
LABEL_16:

  return v16;
}

- (void)syncSession:(id)session didEndWithError:(id)error
{
  v11 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  sessionCopy = session;
  v8 = nph_general_log(sessionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[NPHVMSyncSessionManager syncSession:didEndWithError:]";
    _os_log_impl(&dword_26D269000, v8, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  self->_deltaSyncCurrentIdx = 0;
  [(NSMutableArray *)self->_deltaSyncChanges removeAllObjects];
  [(NSMutableArray *)self->_deltaSyncChangeTypes removeAllObjects];
  [(NPHVMSyncSessionManagerDelegate *)self->_delegate syncSession:sessionCopy didEndWithError:errorCopy];
}

- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  changesCopy = changes;
  sessionCopy = session;
  v11 = nph_general_log(sessionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[NPHVMSyncSessionManager syncSession:applyChanges:completion:]";
    _os_log_impl(&dword_26D269000, v11, OS_LOG_TYPE_DEFAULT, "%s", &v12, 0xCu);
  }

  [(NPHVMSyncSessionManagerDelegate *)self->_delegate syncSession:sessionCopy applyChanges:changesCopy completion:completionCopy];
}

- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error
{
  v12 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v7 = nph_general_log(sessionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[NPHVMSyncSessionManager syncSession:resetDataStoreWithError:]";
    _os_log_impl(&dword_26D269000, v7, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  v8 = [(NPHVMSyncSessionManagerDelegate *)self->_delegate syncSession:sessionCopy resetDataStoreWithError:error];
  return v8;
}

- (id)dataFromChange:(id)change
{
  v15 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v4 = nph_general_log(changeCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[NPHVMSyncSessionManager dataFromChange:]";
    v13 = 2112;
    v14 = objc_opt_class();
    v5 = v14;
    _os_log_impl(&dword_26D269000, v4, OS_LOG_TYPE_DEFAULT, "%s change:%@", &v11, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    wrappedObject = [changeCopy wrappedObject];
    data = [wrappedObject data];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      data = [changeCopy data];
    }

    else
    {
      v9 = nph_general_log(isKindOfClass);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315394;
        v12 = "[NPHVMSyncSessionManager dataFromChange:]";
        v13 = 2112;
        v14 = changeCopy;
        _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "%s unexpected change type:%@", &v11, 0x16u);
      }

      data = 0;
    }
  }

  return data;
}

- (id)changeFromData:(id)data ofType:(int64_t)type
{
  v19 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v6 = nph_general_log(dataCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[NPHVMSyncSessionManager changeFromData:ofType:]";
    v17 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_26D269000, v6, OS_LOG_TYPE_DEFAULT, "%s type:%ld", &v15, 0x16u);
  }

  v7 = [[NanoPhoneVoicemailMeta alloc] initWithData:dataCopy];
  v9 = nph_general_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[NPHVMSyncSessionManager changeFromData:ofType:]";
    v17 = 2112;
    typeCopy = v7;
    _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "%s vmMeta:%@", &v15, 0x16u);
  }

  v10 = [[NPHSYObjectWrapper alloc] initWithSYObject:v7 type:type];
  v11 = nph_general_log(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v15 = 136315394;
    v16 = "[NPHVMSyncSessionManager changeFromData:ofType:]";
    v17 = 2112;
    typeCopy = v12;
    v13 = v12;
    _os_log_impl(&dword_26D269000, v11, OS_LOG_TYPE_DEFAULT, "%s returning:%@", &v15, 0x16u);
  }

  return v10;
}

- (id)encodeSYChangeForBackwardCompatibility:(id)compatibility protocolVersion:(int64_t)version
{
  v20 = *MEMORY[0x277D85DE8];
  compatibilityCopy = compatibility;
  v6 = nph_general_log(compatibilityCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[NPHVMSyncSessionManager encodeSYChangeForBackwardCompatibility:protocolVersion:]";
    v18 = 2112;
    v19 = objc_opt_class();
    v7 = v19;
    _os_log_impl(&dword_26D269000, v6, OS_LOG_TYPE_DEFAULT, "%s change:%@", buf, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    wrappedObject = [compatibilityCopy wrappedObject];
  }

  else
  {
    wrappedObject = compatibilityCopy;
  }

  v9 = wrappedObject;
  if (version > 1)
  {
    data = [wrappedObject data];
  }

  else
  {
    v15 = 0;
    data = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:wrappedObject requiringSecureCoding:1 error:&v15];
    v11 = v15;
    v12 = v11;
    if (v11)
    {
      v13 = nph_general_log(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [NPHVMSyncSessionManager encodeSYChangeForBackwardCompatibility:protocolVersion:];
      }
    }
  }

  return data;
}

- (id)decodeChangeData:(id)data fromProtocolVersion:(int64_t)version ofType:(int64_t)type
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v9 = nph_general_log(dataCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v25 = "[NPHVMSyncSessionManager decodeChangeData:fromProtocolVersion:ofType:]";
    v26 = 2048;
    versionCopy = version;
    v28 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "%s ProtocolVersion:%ld type:%ld", buf, 0x20u);
  }

  if (version > 1)
  {
    v18 = [(NPHVMSyncSessionManager *)self changeFromData:dataCopy ofType:type];
    v17 = v18;
  }

  else
  {
    v10 = MEMORY[0x277CCAAC8];
    v11 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v23 = 0;
    v12 = [v10 unarchivedObjectOfClasses:v11 fromData:dataCopy error:&v23];
    v13 = v23;

    if (v13)
    {
      v15 = nph_general_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [NPHVMSyncSessionManager decodeChangeData:fromProtocolVersion:ofType:];
      }
    }

    v16 = nph_general_log(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v25 = "[NPHVMSyncSessionManager decodeChangeData:fromProtocolVersion:ofType:]";
      v26 = 2112;
      versionCopy = v12;
      _os_log_impl(&dword_26D269000, v16, OS_LOG_TYPE_DEFAULT, "%s vmMeta:%@", buf, 0x16u);
    }

    v17 = [[NPHSYObjectWrapper alloc] initWithSYObject:v12 type:type];
  }

  v19 = nph_general_log(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    *buf = 136315394;
    v25 = "[NPHVMSyncSessionManager decodeChangeData:fromProtocolVersion:ofType:]";
    v26 = 2112;
    versionCopy = v20;
    v21 = v20;
    _os_log_impl(&dword_26D269000, v19, OS_LOG_TYPE_DEFAULT, "%s returning:%@", buf, 0x16u);
  }

  return v17;
}

- (void)encodeSYChangeForBackwardCompatibility:protocolVersion:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_26D269000, v0, OS_LOG_TYPE_ERROR, "%s - Error archiving vmMeta: %@", v1, 0x16u);
}

- (void)decodeChangeData:fromProtocolVersion:ofType:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_26D269000, v0, OS_LOG_TYPE_ERROR, "%s - Error unarchiving NanoPhoneVoicemailMeta object: %@", v1, 0x16u);
}

@end