@interface THThreadNetworkCredentialsActiveDataSetRecord(Keychain)
- (void)computedUniqueIdentifier;
- (void)computedUniqueIdentifierWithBorderAgent;
- (void)keyChainQueryForActiveDataSetRecordUpdateOperation;
@end

@implementation THThreadNetworkCredentialsActiveDataSetRecord(Keychain)

- (void)computedUniqueIdentifier
{
  network = [self network];
  networkName = [network networkName];
  network2 = [self network];
  extendedPANID = [network2 extendedPANID];
  v9 = 138412546;
  v10 = networkName;
  OUTLINED_FUNCTION_2_5();
  v11 = v8;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to calculate UUID (name=%@; xpanid=%@)!", &v9, 0x16u);
}

- (void)computedUniqueIdentifierWithBorderAgent
{
  network = [self network];
  networkName = [network networkName];
  network2 = [self network];
  extendedPANID = [network2 extendedPANID];
  borderAgent = [self borderAgent];
  discriminatorId = [borderAgent discriminatorId];
  keychainAccessGroup = [self keychainAccessGroup];
  *v17 = 138413058;
  *&v17[4] = networkName;
  OUTLINED_FUNCTION_2_5();
  *&v17[14] = extendedPANID;
  *&v17[22] = v9;
  LOWORD(v18) = v9;
  *(&v18 + 2) = v10;
  OUTLINED_FUNCTION_3_2(&_mh_execute_header, v11, v12, "Failed to calculate UUID (name=%@; xpanid=%@; discriminatorId=%@; keychainAccessGroup=%@)!", v13, v14, v15, v16, *v17, *&v17[8], *&v17[16], discriminatorId, v18, WORD4(v18));
}

+ (void)activeDataSetRecordFromKeychainDictionary:()Keychain .cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)activeDataSetRecordFromKeychainDictionary:()Keychain .cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)activeDataSetRecordFromKeychainDictionary:()Keychain .cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)activeDataSetRecordFromKeychainDictionary:()Keychain .cold.5(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 uniqueIdentifier];
  v6 = 138412546;
  v7 = v5;
  OUTLINED_FUNCTION_2_5();
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Warning: decoded record with identifier %@ but does not match expected %@!", &v6, 0x16u);
}

+ (void)activeDataSetRecordFromKeychainDictionary:()Keychain .cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)activeDataSetRecordFromKeychainDictionary:()Keychain .cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)keyChainQueryForActiveDataSetRecordUpdateOperation
{
  network = [self network];
  networkName = [network networkName];
  network2 = [self network];
  extendedPANID = [network2 extendedPANID];
  borderAgent = [self borderAgent];
  discriminatorId = [borderAgent discriminatorId];
  *v18 = 138413058;
  *&v18[4] = networkName;
  OUTLINED_FUNCTION_2_5();
  *&v18[14] = extendedPANID;
  *&v18[22] = v10;
  LOWORD(v19) = v10;
  *(&v19 + 2) = a2;
  OUTLINED_FUNCTION_3_2(&_mh_execute_header, v12, v13, "Illegal attempt to form keychain item with insufficient information (name=%@; xpanid=%@; discriminatorId=%@; uuid=%@)!", v14, v15, v16, v17, *v18, *&v18[8], *&v18[16], v11, v19, WORD4(v19));
}

@end