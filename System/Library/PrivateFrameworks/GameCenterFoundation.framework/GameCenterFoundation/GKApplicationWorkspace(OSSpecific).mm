@interface GKApplicationWorkspace(OSSpecific)
- (void)openICloudSettings;
- (void)openSoftwareUpdateSettings;
@end

@implementation GKApplicationWorkspace(OSSpecific)

- (void)openICloudSettings
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_227904000, a2, OS_LOG_TYPE_ERROR, "cannot openICloudSettings because of error: %@", &v2, 0xCu);
}

- (void)openSoftwareUpdateSettings
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_227904000, a2, OS_LOG_TYPE_ERROR, "cannot openSoftwareUpdateSettings because of error: %@", &v2, 0xCu);
}

@end