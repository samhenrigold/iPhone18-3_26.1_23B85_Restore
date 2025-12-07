@interface _LTDSELFLoggingSessionIdProvider
- (SISchemaUUID)sessionId;
- (void)sessionId;
@end

@implementation _LTDSELFLoggingSessionIdProvider

- (SISchemaUUID)sessionId
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = selfCopy->_dateSessionIdMostRecentlyAccessesOrCreated;
  objc_storeStrong(&selfCopy->_dateSessionIdMostRecentlyAccessesOrCreated, v3);
  if (!v4)
  {
LABEL_6:
    v10 = objc_alloc(MEMORY[0x277D5AC78]);
    v11 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v12 = [v10 initWithNSUUID:v11];
    cachedSessionId = selfCopy->_cachedSessionId;
    selfCopy->_cachedSessionId = v12;

    v8 = selfCopy->_cachedSessionId;
    goto LABEL_7;
  }

  v5 = [v3 timeIntervalSinceDate:v4];
  v8 = selfCopy->_cachedSessionId;
  if (!v8 || v7 >= 480.0)
  {
    v9 = _LTOSLogSELFLogging(v5, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(_LTDSELFLoggingSessionIdProvider *)v9 sessionId];
    }

    goto LABEL_6;
  }

LABEL_7:
  v14 = v8;

  objc_sync_exit(selfCopy);

  return v14;
}

- (void)sessionId
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 134217984;
  v2 = 0x407E000000000000;
  _os_log_debug_impl(&dword_232E53000, log, OS_LOG_TYPE_DEBUG, "It is been more than %f@ seconds, generating new SELF logging session id", &v1, 0xCu);
}

@end