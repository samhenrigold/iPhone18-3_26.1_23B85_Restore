@interface PODirectoryServices
- (id)uniqueIdentifierForUserName:(id)name;
@end

@implementation PODirectoryServices

- (id)uniqueIdentifierForUserName:(id)name
{
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  currentUser = [mEMORY[0x277D77BF8] currentUser];

  if (PO_LOG_PODirectoryServices_once != -1)
  {
    [PODirectoryServices uniqueIdentifierForUserName:];
  }

  v5 = PO_LOG_PODirectoryServices_log;
  if (os_log_type_enabled(PO_LOG_PODirectoryServices_log, OS_LOG_TYPE_DEBUG))
  {
    [(PODirectoryServices *)v5 uniqueIdentifierForUserName:currentUser];
  }

  alternateDSID = [currentUser alternateDSID];

  return alternateDSID;
}

- (void)uniqueIdentifierForUserName:(void *)a1 .cold.2(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 alternateDSID];
  v5 = 138477827;
  v6 = v4;
  _os_log_debug_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEBUG, "Current altDSID: %{private}@", &v5, 0xCu);
}

@end