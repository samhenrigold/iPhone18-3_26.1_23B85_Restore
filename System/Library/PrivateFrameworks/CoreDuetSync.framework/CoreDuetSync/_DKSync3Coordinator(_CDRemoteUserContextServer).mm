@interface _DKSync3Coordinator(_CDRemoteUserContextServer)
@end

@implementation _DKSync3Coordinator(_CDRemoteUserContextServer)

- (void)subscribeToContextValueChangeNotificationsWithRegistration:()_CDRemoteUserContextServer deviceIDs:error:.cold.1()
{
  OUTLINED_FUNCTION_9();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = [OUTLINED_FUNCTION_10() identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)subscribeToContextValueChangeNotificationsWithRegistration:()_CDRemoteUserContextServer deviceIDs:error:.cold.2()
{
  OUTLINED_FUNCTION_9();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = [OUTLINED_FUNCTION_10() identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)subscribeToContextValueChangeNotificationsWithRegistration:()_CDRemoteUserContextServer deviceIDs:error:.cold.3()
{
  OUTLINED_FUNCTION_9();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = [OUTLINED_FUNCTION_10() identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)unsubscribeFromContextValueChangeNotificationsWithRegistration:()_CDRemoteUserContextServer deviceIDs:error:.cold.1()
{
  OUTLINED_FUNCTION_9();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = [OUTLINED_FUNCTION_10() identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)unsubscribeFromContextValueChangeNotificationsWithRegistration:()_CDRemoteUserContextServer deviceIDs:error:.cold.2()
{
  OUTLINED_FUNCTION_9();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = [OUTLINED_FUNCTION_10() identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)unsubscribeFromContextValueChangeNotificationsWithRegistration:()_CDRemoteUserContextServer deviceIDs:error:.cold.3()
{
  OUTLINED_FUNCTION_9();
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = [OUTLINED_FUNCTION_10() identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)subscribeToDeviceStatusChangeNotificationsForDeviceTypes:()_CDRemoteUserContextServer error:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_fetchPropertiesOfRemoteKeyPaths:()_CDRemoteUserContextServer handler:.cold.1(uint64_t a1, void *a2)
{
  v3 = [objc_opt_class() description];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  OUTLINED_FUNCTION_5();
  v10 = _CDPrettyPrintCollection();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)_requestActivateDevicesWithHandler:()_CDRemoteUserContextServer .cold.1(uint64_t a1)
{
  v1 = [objc_opt_class() description];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)archivedObjectsForKeyPaths:()_CDRemoteUserContextServer .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_class() description];
  v6 = [a2 valueForKey:@"key"];
  OUTLINED_FUNCTION_5();
  v7 = _CDPrettyPrintCollection();
  v8 = 138543618;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  _os_log_debug_impl(&dword_245377000, a3, OS_LOG_TYPE_DEBUG, "%{public}@: Archiving objects for key paths: %{public}@", &v8, 0x16u);
}

- (void)sendContextValuesToPeer:()_CDRemoteUserContextServer registrationIdentifier:keyPaths:.cold.1(uint64_t a1)
{
  v1 = [objc_opt_class() description];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end