@interface SLDSyndicationService
+ (id)sharedService;
- (void)removeMessageGUIDFromSyndication:(id)syndication reply:(id)reply;
@end

@implementation SLDSyndicationService

+ (id)sharedService
{
  if (sharedService_onceToken_9 != -1)
  {
    +[SLDSyndicationService sharedService];
  }

  v3 = sharedService_sService_9;

  return v3;
}

uint64_t __38__SLDSyndicationService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(SLDSyndicationService);
  v1 = sharedService_sService_9;
  sharedService_sService_9 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)removeMessageGUIDFromSyndication:(id)syndication reply:(id)reply
{
  v17 = *MEMORY[0x277D85DE8];
  syndicationCopy = syndication;
  replyCopy = reply;
  v7 = SLDaemonLogHandle(replyCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[SLDSyndicationService removeMessageGUIDFromSyndication:reply:]";
    v15 = 2112;
    v16 = syndicationCopy;
    _os_log_impl(&dword_231772000, v7, OS_LOG_TYPE_DEFAULT, "%s messageGUID: %@", &v13, 0x16u);
  }

  if (![syndicationCopy length])
  {
    v10 = SLDaemonLogHandle(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SLDSyndicationService removeMessageGUIDFromSyndication:syndicationCopy reply:v10];
    }

    goto LABEL_14;
  }

  IMSPIRemoveMessageGUIDFromSyndicationSymbolLoc = IMCoreLibraryCore_0(0);
  if (!IMSPIRemoveMessageGUIDFromSyndicationSymbolLoc || (IMSPIRemoveMessageGUIDFromSyndicationSymbolLoc = getIMSPIRemoveMessageGUIDFromSyndicationSymbolLoc()) == 0)
  {
    v10 = SLDaemonLogHandle(IMSPIRemoveMessageGUIDFromSyndicationSymbolLoc);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SLDSyndicationService removeMessageGUIDFromSyndication:v10 reply:?];
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v9 = SLDaemonLogHandle(IMSPIRemoveMessageGUIDFromSyndicationSymbolLoc);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[SLDSyndicationService removeMessageGUIDFromSyndication:reply:]";
    v15 = 2112;
    v16 = syndicationCopy;
    _os_log_impl(&dword_231772000, v9, OS_LOG_TYPE_INFO, "%s: Calling remove message guid: %@", &v13, 0x16u);
  }

  v10 = syndicationCopy;
  v11 = getIMSPIRemoveMessageGUIDFromSyndicationSymbolLoc();
  if (!v11)
  {
    SLDCreateGroupPhotoImageWithGroupID_cold_2();
  }

  v11(v10);
  v12 = 1;
LABEL_15:

  replyCopy[2](replyCopy, v12);
}

- (void)removeMessageGUIDFromSyndication:(os_log_t)log reply:.cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[SLDSyndicationService removeMessageGUIDFromSyndication:reply:]";
  _os_log_error_impl(&dword_231772000, log, OS_LOG_TYPE_ERROR, "%s: IMSPIRemoveMessageGUIDFromSyndication is unavailable.", &v1, 0xCu);
}

- (void)removeMessageGUIDFromSyndication:(uint64_t)a1 reply:(NSObject *)a2 .cold.3(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[SLDSyndicationService removeMessageGUIDFromSyndication:reply:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "%s: invalid messageGUID passed in: %@", &v2, 0x16u);
}

@end