@interface RPCompanionLinkClient(TVRemoteCore)
- (void)tvrc_setAllowedTVs;
@end

@implementation RPCompanionLinkClient(TVRemoteCore)

- (void)tvrc_setAllowedTVs
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[RPCompanionLinkClient(TVRemoteCore) tvrc_setAllowedTVs]";
  v4 = 2112;
  selfCopy = self;
  _os_log_debug_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_DEBUG, "%s setting allowedTVs to %@", &v2, 0x16u);
}

@end