@interface BADownload(VeryPrivate)
@end

@implementation BADownload(VeryPrivate)

- (void)cloneDownloadToFinalDestinationURL:()VeryPrivate error:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 applicationGroupIdentifier];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_236E28000, a2, OS_LOG_TYPE_ERROR, "Failed to load container for app group identifier: %{public}@", &v4, 0xCu);
}

@end