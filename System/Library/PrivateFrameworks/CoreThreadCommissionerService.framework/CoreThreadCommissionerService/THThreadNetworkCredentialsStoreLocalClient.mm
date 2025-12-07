@interface THThreadNetworkCredentialsStoreLocalClient
- (THThreadNetworkCredentialsBackingStore)backingStore;
- (THThreadNetworkCredentialsStoreLocalClient)initWithKeychainAccessGroup:(id)group backingStore:(id)store;
- (id)parseActiveOperationalDataSet:(id)set;
- (id)parseCredsFromTLVs:(const char *)vs data_len:(unsigned int)data_len;
- (id)parseDataSetFromSpinel:(const char *)spinel data_len:(unsigned int)data_len;
- (id)parseDataSetFromTLVs:(const char *)vs data_len:(unsigned int)data_len;
- (id)parseThreadNetworkActiveDataSet:(id)set;
- (id)setFromSpinelFrame:(const char *)frame data_len:(unsigned int)data_len;
- (void)addPreferredNetworkWithCompletionInternally:(id)internally borderAgentID:(id)d ipV4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)iD wifiPassword:(id)password completion:(id)completion;
- (void)checkIfRecordForPreferredNetworkIsPresentWithCompletion:(id)completion;
- (void)checkIsPreferredNetworkForActiveOperationalDataset:(id)dataset completion:(id)completion;
- (void)cleanThreadKeychainDatabase:(id)database;
- (void)deleteActiveDataSetRecordForThreadBorderAgent:(id)agent completion:(id)completion;
- (void)deleteActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:(id)group completion:(id)completion;
- (void)deleteActiveDataSetRecordWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)deleteActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:(id)group completion:(id)completion;
- (void)deletePreferredAndFrozenThreadNetworksWithCompletion:(id)completion;
- (void)deletePreferredNetworkEntryWithCompletion:(id)completion completion:(id)a4;
- (void)deletePreferredNetworkForNetworkSignatureInternallyWithCompletion:(id)completion ipv4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)d completion:(id)a7;
- (void)deletePreferredNetworkWithCompletion:(id)completion;
- (void)deleteRecordForNetwork:(id)network completion:(id)completion;
- (void)deleteRecordWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveActiveDataSetRecordForThreadBorderAgent:(id)agent completion:(id)completion;
- (void)retrieveActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:(id)group completion:(id)completion;
- (void)retrieveActiveDataSetRecordOnMdnsWithExtendedPANId:(id)id completion:(id)completion;
- (void)retrieveActiveDataSetRecordWithExtendedPANId:(id)id completion:(id)completion;
- (void)retrieveActiveDataSetRecordWithTLVsForThreadBorderAgent:(id)agent completion:(id)completion;
- (void)retrieveActiveDataSetRecordWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:(id)group completion:(id)completion;
- (void)retrieveAllActiveDataSetRecordsForNetwork:(id)network completion:(id)completion;
- (void)retrieveAllActiveDataSetRecordsWithCompletion:(id)completion;
- (void)retrieveAllActiveDataSetRecordsWithFlagForClientKeychainAccessGroup:(id)group activeFlag:(BOOL)flag compleiton:(id)compleiton;
- (void)retrieveAllActiveDataSetRecordsWithFlagForClientKeychainAccessGroup:(id)group activeFlag:(BOOL)flag completion:(id)completion;
- (void)retrieveAllRecordsForNetwork:(id)network completion:(id)completion;
- (void)retrieveAllRecordsWithCompletion:(id)completion;
- (void)retrieveListOfPreferredNetworksInternallyWithCompletion:(id)completion ipV4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)d showCurrentEntry:(BOOL)entry completion:(id)a8;
- (void)retrieveOrGeneratePreferredNetworkInternallyWithCompletion:(id)completion;
- (void)retrievePreferredNetworkInternallyWithCompletion:(id)completion;
- (void)retrievePreferredNetworkOfAnyDSFormatWithCompletion:(id)completion;
- (void)retrievePreferredNetworkWithCompletion:(id)completion;
- (void)retrievePreferredNetworkWithNoScanWithCompletion:(id)completion;
- (void)retrieveRecordWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveThirdPartyInfo:(id)info;
- (void)storeCachedAODasPreferredNetwork:(id)network completion:(id)completion;
- (void)storeCredentials:(id)credentials waitForSync:(BOOL)sync forNetwork:(id)network completion:(id)completion;
- (void)storeThreadNetworkCredentialActiveDataSet:(id)set network:(id)network credentials:(id)credentials credentialsDataSet:(id)dataSet waitForSync:(BOOL)sync completion:(id)completion;
- (void)storeThreadNetworkCredentialActiveDataSet:(id)set network:(id)network credentialsDataSet:(id)dataSet waitForSync:(BOOL)sync completion:(id)completion;
- (void)updatePreferredNetworkInternallyWithCompletion:(id)completion;
- (void)updatePreferredNetworkWithNewDataset:(id)dataset network:(id)network credentialsDataSet:(id)set completion:(id)completion;
- (void)validateAODInternally:(id)internally completion:(id)completion;
- (void)validateRecordWithMdnsScanWithDataSet:(id)set borderAgentID:(id)d completion:(id)completion;
@end

@implementation THThreadNetworkCredentialsStoreLocalClient

- (THThreadNetworkCredentialsStoreLocalClient)initWithKeychainAccessGroup:(id)group backingStore:(id)store
{
  groupCopy = group;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = THThreadNetworkCredentialsStoreLocalClient;
  v9 = [(THThreadNetworkCredentialsStoreLocalClient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keychainAccessGroup, group);
    objc_storeWeak(&v10->_backingStore, storeCopy);
  }

  return v10;
}

- (void)deleteRecordWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004A224;
    v13[3] = &unk_1000792E8;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore deleteRecordWithUniqueIdentifier:identifierCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004A1B4;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)retrieveAllRecordsForNetwork:(id)network completion:(id)completion
{
  networkCopy = network;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004A3F0;
    v13[3] = &unk_100079310;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveAllRecordsForNetwork:networkCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004A37C;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)retrieveAllRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004A760;
    v10[3] = &unk_100079310;
    v6 = &v11;
    v11 = completionCopy;
    v7 = completionCopy;
    [backingStore retrieveAllRecordsWithCompletion:v10];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004A6EC;
    block[3] = &unk_100078F10;
    v6 = &v13;
    v13 = completionCopy;
    v9 = completionCopy;
    dispatch_async(v8, block);
  }
}

- (void)retrieveRecordWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004A998;
    v13[3] = &unk_100079338;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveRecordWithUniqueIdentifier:identifierCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004A924;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)deleteRecordForNetwork:(id)network completion:(id)completion
{
  completionCopy = completion;
  networkCopy = network;
  keychainAccessGroup = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
  v9 = [THThreadNetworkCredentialsStoreRecord computedUniqueIdentifierForNetwork:networkCopy keychainAccessGroup:keychainAccessGroup];

  if (v9)
  {
    [(THThreadNetworkCredentialsStoreLocalClient *)self deleteRecordWithUniqueIdentifier:v9 completion:completionCopy];
  }

  else
  {
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004AB20;
    block[3] = &unk_100078F10;
    v12 = completionCopy;
    dispatch_async(v10, block);
  }
}

- (void)storeCredentials:(id)credentials waitForSync:(BOOL)sync forNetwork:(id)network completion:(id)completion
{
  syncCopy = sync;
  credentialsCopy = credentials;
  networkCopy = network;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v14 = [THThreadNetworkCredentialsStoreRecord alloc];
    keychainAccessGroup = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
    v16 = [v14 initWithNetwork:networkCopy credentials:credentialsCopy uniqueIdentifier:0 keychainAccessGroup:keychainAccessGroup creationDate:0 lastModificationDate:0];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10004ADCC;
    v19[3] = &unk_100079078;
    v20 = completionCopy;
    v17 = completionCopy;
    [backingStore storeRecord:v16 waitForSync:syncCopy completion:v19];
  }

  else
  {
    v18 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004AD58;
    block[3] = &unk_100078F10;
    v22 = completionCopy;
    v16 = completionCopy;
    dispatch_async(v18, block);

    v17 = v22;
  }
}

- (void)deleteActiveDataSetRecordWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004AF94;
    v13[3] = &unk_1000792E8;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore deleteActiveDataSetRecordWithUniqueIdentifier:identifierCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004AF24;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)deleteActiveDataSetRecordForThreadBorderAgent:(id)agent completion:(id)completion
{
  agentCopy = agent;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004B15C;
    v13[3] = &unk_1000792E8;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore deleteActiveDataSetRecordForThreadBorderAgent:agentCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B0EC;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)retrieveAllActiveDataSetRecordsForNetwork:(id)network completion:(id)completion
{
  networkCopy = network;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004B328;
    v13[3] = &unk_100079310;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveAllActiveDataSetRecordsForNetwork:networkCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B2B4;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)retrieveAllActiveDataSetRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004B544;
    v10[3] = &unk_100079310;
    v6 = &v11;
    v11 = completionCopy;
    v7 = completionCopy;
    [backingStore retrieveAllActiveDataSetRecordsWithCompletion:v10];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B4D0;
    block[3] = &unk_100078F10;
    v6 = &v13;
    v13 = completionCopy;
    v9 = completionCopy;
    dispatch_async(v8, block);
  }
}

- (void)retrieveActiveDataSetRecordWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004B77C;
    v13[3] = &unk_100079360;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveActiveDataSetRecordWithUniqueIdentifier:identifierCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B708;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)retrieveThirdPartyInfo:(id)info
{
  infoCopy = info;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  v6 = backingStore;
  if (backingStore)
  {
    [backingStore retrieveThirdPartyInfo:infoCopy];
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B8C0;
    block[3] = &unk_100078F10;
    v9 = infoCopy;
    dispatch_async(v7, block);
  }
}

- (void)retrieveActiveDataSetRecordWithExtendedPANId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004BAF8;
    v13[3] = &unk_100079360;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveActiveDataSetRecordWithExtendedPANId:idCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004BA84;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)retrieveActiveDataSetRecordOnMdnsWithExtendedPANId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004BD20;
    v13[3] = &unk_100079360;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveActiveDataSetRecordOnMdnsWithExtendedPANId:idCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004BCAC;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)retrieveActiveDataSetRecordWithTLVsForThreadBorderAgent:(id)agent completion:(id)completion
{
  agentCopy = agent;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004BF48;
    v13[3] = &unk_100079360;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveActiveDataSetRecordWithTLVsForThreadBorderAgent:agentCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004BED4;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)retrieveActiveDataSetRecordForThreadBorderAgent:(id)agent completion:(id)completion
{
  agentCopy = agent;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004C170;
    v13[3] = &unk_100079360;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore retrieveActiveDataSetRecordForThreadBorderAgent:agentCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004C0FC;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)retrieveAllActiveDataSetRecordsWithFlagForClientKeychainAccessGroup:(id)group activeFlag:(BOOL)flag completion:(id)completion
{
  flagCopy = flag;
  groupCopy = group;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10004C3AC;
    v15[3] = &unk_100079310;
    v11 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    [backingStore retrieveAllActiveDataSetRecordsWithFlagForClientKeychainAccessGroup:groupCopy activeFlag:flagCopy compleiton:v15];
  }

  else
  {
    v13 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004C338;
    block[3] = &unk_100078F10;
    v11 = &v18;
    v18 = completionCopy;
    v14 = completionCopy;
    dispatch_async(v13, block);
  }
}

- (void)retrieveAllActiveDataSetRecordsWithFlagForClientKeychainAccessGroup:(id)group activeFlag:(BOOL)flag compleiton:(id)compleiton
{
  flagCopy = flag;
  groupCopy = group;
  compleitonCopy = compleiton;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10004C5F8;
    v15[3] = &unk_100079310;
    v11 = &v16;
    v16 = compleitonCopy;
    v12 = compleitonCopy;
    [backingStore retrieveAllActiveDataSetRecordsWithFlagForClientKeychainAccessGroup:groupCopy activeFlag:flagCopy compleiton:v15];
  }

  else
  {
    v13 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004C584;
    block[3] = &unk_100078F10;
    v11 = &v18;
    v18 = compleitonCopy;
    v14 = compleitonCopy;
    dispatch_async(v13, block);
  }
}

- (void)checkIfRecordForPreferredNetworkIsPresentWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (!backingStore)
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004C7FC;
    block[3] = &unk_100078F10;
    v12 = completionCopy;
    dispatch_async(v7, block);

    v6 = v12;
    goto LABEL_5;
  }

  if (_os_feature_enabled_impl())
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004C814;
    v9[3] = &unk_100079388;
    v10 = completionCopy;
    [backingStore checkIfRecordForPreferredNetworkIsPresentWithCompletion:v9];
    v6 = v10;
LABEL_5:

    goto LABEL_9;
  }

  v8 = sub_10001B194(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100053590();
  }

  (*(completionCopy + 2))(completionCopy, 1, 0);
LABEL_9:
}

- (void)retrievePreferredNetworkWithNoScanWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    if (_os_feature_enabled_impl())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10004CA40;
      v9[3] = &unk_100079360;
      v10 = completionCopy;
      [backingStore retrievePreferredNetworkWithNoScanWithCompletion:v9];
      v6 = v10;
    }

    else
    {
      v8 = sub_10001B194(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100053614();
      }

      v6 = [NSError storeError:17 description:@"Feature is unsupported"];
      (*(completionCopy + 2))(completionCopy, 0, v6);
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004C9CC;
    block[3] = &unk_100078F10;
    v12 = completionCopy;
    dispatch_async(v7, block);

    v6 = v12;
  }
}

- (void)retrievePreferredNetworkWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    if (_os_feature_enabled_impl())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10004CCEC;
      v9[3] = &unk_100079360;
      v10 = completionCopy;
      [backingStore retrievePreferredNetworkWithCompletion:v9];
      v6 = v10;
    }

    else
    {
      v8 = sub_10001B194(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10005371C();
      }

      v6 = [NSError storeError:17 description:@"Feature is unsupported"];
      (*(completionCopy + 2))(completionCopy, 0, v6);
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004CC78;
    block[3] = &unk_100078F10;
    v12 = completionCopy;
    dispatch_async(v7, block);

    v6 = v12;
  }
}

- (void)retrievePreferredNetworkInternallyWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    if (_os_feature_enabled_impl())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10004CF98;
      v9[3] = &unk_100079360;
      v10 = completionCopy;
      [backingStore retrievePreferredNetworkInternallyWithCompletion:v9];
      v6 = v10;
    }

    else
    {
      v8 = sub_10001B194(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100053824();
      }

      v6 = [NSError storeError:17 description:@"Feature is unsupported"];
      (*(completionCopy + 2))(completionCopy, 0, v6);
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004CF24;
    block[3] = &unk_100078F10;
    v12 = completionCopy;
    dispatch_async(v7, block);

    v6 = v12;
  }
}

- (void)retrievePreferredNetworkOfAnyDSFormatWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    if (_os_feature_enabled_impl())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10004D244;
      v9[3] = &unk_100079360;
      v10 = completionCopy;
      [backingStore retrievePreferredNetworkOfAnyDSFormatWithCompletion:v9];
      v6 = v10;
    }

    else
    {
      v8 = sub_10001B194(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10005392C();
      }

      v6 = [NSError storeError:17 description:@"Feature is unsupported"];
      (*(completionCopy + 2))(completionCopy, 0, v6);
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004D1D0;
    block[3] = &unk_100078F10;
    v12 = completionCopy;
    dispatch_async(v7, block);

    v6 = v12;
  }
}

- (void)retrieveOrGeneratePreferredNetworkInternallyWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    if (_os_feature_enabled_impl())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10004D4CC;
      v9[3] = &unk_100079360;
      v10 = completionCopy;
      [backingStore retrieveOrGeneratePreferredNetworkInternallyWithCompletion:v9];
      v6 = v10;
    }

    else
    {
      v8 = sub_10001B194(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000539B0();
      }

      v6 = [NSError storeError:17 description:@"Feature is unsupported"];
      (*(completionCopy + 2))(completionCopy, 0, v6);
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004D458;
    block[3] = &unk_100078F10;
    v12 = completionCopy;
    dispatch_async(v7, block);

    v6 = v12;
  }
}

- (void)addPreferredNetworkWithCompletionInternally:(id)internally borderAgentID:(id)d ipV4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)iD wifiPassword:(id)password completion:(id)completion
{
  internallyCopy = internally;
  dCopy = d;
  signatureCopy = signature;
  nwSignatureCopy = nwSignature;
  iDCopy = iD;
  passwordCopy = password;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10004D764;
    v27[3] = &unk_1000792E8;
    v23 = &v28;
    v28 = completionCopy;
    v24 = completionCopy;
    [backingStore addPreferredNetworkWithCompletionInternally:internallyCopy borderAgentID:dCopy ipV4NwSignature:signatureCopy ipv6NwSignature:nwSignatureCopy wifiSSID:iDCopy wifiPassword:passwordCopy completion:v27];
  }

  else
  {
    v25 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004D6F4;
    block[3] = &unk_100078F10;
    v23 = &v30;
    v30 = completionCopy;
    v26 = completionCopy;
    dispatch_async(v25, block);
  }
}

- (void)deletePreferredNetworkForNetworkSignatureInternallyWithCompletion:(id)completion ipv4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)d completion:(id)a7
{
  completionCopy = completion;
  signatureCopy = signature;
  nwSignatureCopy = nwSignature;
  dCopy = d;
  v16 = a7;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10004D970;
    v22[3] = &unk_1000792E8;
    v18 = &v23;
    v23 = v16;
    v19 = v16;
    [backingStore deletePreferredNetworkForNetworkSignatureInternallyWithCompletion:completionCopy ipv4NwSignature:signatureCopy ipv6NwSignature:nwSignatureCopy wifiSSID:dCopy completion:v22];
  }

  else
  {
    v20 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004D900;
    block[3] = &unk_100078F10;
    v18 = &v25;
    v25 = v16;
    v21 = v16;
    dispatch_async(v20, block);
  }
}

- (void)deletePreferredNetworkEntryWithCompletion:(id)completion completion:(id)a4
{
  completionCopy = completion;
  v7 = a4;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004DB38;
    v13[3] = &unk_1000792E8;
    v9 = &v14;
    v14 = v7;
    v10 = v7;
    [backingStore deletePreferredNetworkEntryWithCompletion:completionCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004DAC8;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = v7;
    v12 = v7;
    dispatch_async(v11, block);
  }
}

- (void)deletePreferredNetworkWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004DCE4;
    v10[3] = &unk_1000792E8;
    v6 = &v11;
    v11 = completionCopy;
    v7 = completionCopy;
    [backingStore deletePreferredNetworkWithCompletion:v10];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004DC74;
    block[3] = &unk_100078F10;
    v6 = &v13;
    v13 = completionCopy;
    v9 = completionCopy;
    dispatch_async(v8, block);
  }
}

- (void)deletePreferredAndFrozenThreadNetworksWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004DE90;
    v10[3] = &unk_1000792E8;
    v6 = &v11;
    v11 = completionCopy;
    v7 = completionCopy;
    [backingStore deletePreferredAndFrozenThreadNetworksWithCompletion:v10];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004DE20;
    block[3] = &unk_100078F10;
    v6 = &v13;
    v13 = completionCopy;
    v9 = completionCopy;
    dispatch_async(v8, block);
  }
}

- (void)storeCachedAODasPreferredNetwork:(id)network completion:(id)completion
{
  networkCopy = network;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004E05C;
    v13[3] = &unk_100079078;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore storeCachedAODasPreferredNetwork:networkCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004DFE8;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)storeThreadNetworkCredentialActiveDataSet:(id)set network:(id)network credentialsDataSet:(id)dataSet waitForSync:(BOOL)sync completion:(id)completion
{
  syncCopy = sync;
  setCopy = set;
  networkCopy = network;
  dataSetCopy = dataSet;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    dataSetArray = [dataSetCopy dataSetArray];
    v18 = [(THThreadNetworkCredentialsStoreLocalClient *)self parseThreadNetworkActiveDataSet:dataSetArray];

    if (v18)
    {
      v19 = [THThreadNetworkCredentialsActiveDataSetRecord alloc];
      keychainAccessGroup = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
      v21 = [v19 initWithBorderAgent:setCopy credentialsDataSet:dataSetCopy network:networkCopy credentials:v18 uniqueIdentifier:0 keychainAccessGroup:keychainAccessGroup creationDate:0 lastModificationDate:0];

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10004E3F4;
      v25[3] = &unk_100079078;
      v26 = completionCopy;
      [backingStore storeThreadCredentialActiveDataSetRecord:v21 waitForSync:syncCopy completion:v25];
    }

    else
    {
      v23 = sub_10001B194(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100053A34();
      }

      v24 = dispatch_get_global_queue(0, 0);
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10004E380;
      v27[3] = &unk_100078F10;
      v28 = completionCopy;
      dispatch_async(v24, v27);

      v21 = v28;
    }
  }

  else
  {
    v22 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004E30C;
    block[3] = &unk_100078F10;
    v30 = completionCopy;
    dispatch_async(v22, block);

    v18 = v30;
  }
}

- (void)updatePreferredNetworkWithNewDataset:(id)dataset network:(id)network credentialsDataSet:(id)set completion:(id)completion
{
  datasetCopy = dataset;
  networkCopy = network;
  setCopy = set;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    dataSetArray = [setCopy dataSetArray];
    v16 = [(THThreadNetworkCredentialsStoreLocalClient *)self parseThreadNetworkActiveDataSet:dataSetArray];

    if (v16)
    {
      v17 = [THThreadNetworkCredentialsActiveDataSetRecord alloc];
      keychainAccessGroup = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
      v19 = [v17 initWithBorderAgent:datasetCopy credentialsDataSet:setCopy network:networkCopy credentials:v16 uniqueIdentifier:0 keychainAccessGroup:keychainAccessGroup creationDate:0 lastModificationDate:0];

      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10004E78C;
      v23[3] = &unk_1000793B0;
      v24 = completionCopy;
      [backingStore updatePreferredNetworkWithNewDatasetRecord:v19 completion:v23];
    }

    else
    {
      v21 = sub_10001B194(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100053A34();
      }

      v22 = dispatch_get_global_queue(0, 0);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10004E714;
      v25[3] = &unk_100078F10;
      v26 = completionCopy;
      dispatch_async(v22, v25);

      v19 = v26;
    }
  }

  else
  {
    v20 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004E69C;
    block[3] = &unk_100078F10;
    v28 = completionCopy;
    dispatch_async(v20, block);

    v16 = v28;
  }
}

- (void)storeThreadNetworkCredentialActiveDataSet:(id)set network:(id)network credentials:(id)credentials credentialsDataSet:(id)dataSet waitForSync:(BOOL)sync completion:(id)completion
{
  syncCopy = sync;
  setCopy = set;
  networkCopy = network;
  credentialsCopy = credentials;
  dataSetCopy = dataSet;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v20 = [THThreadNetworkCredentialsActiveDataSetRecord alloc];
    keychainAccessGroup = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
    v22 = [v20 initWithBorderAgent:setCopy credentialsDataSet:dataSetCopy network:networkCopy credentials:credentialsCopy uniqueIdentifier:0 keychainAccessGroup:keychainAccessGroup creationDate:0 lastModificationDate:0];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10004E9F4;
    v25[3] = &unk_100079078;
    v26 = completionCopy;
    v23 = completionCopy;
    [backingStore storeThreadCredentialActiveDataSetRecord:v22 waitForSync:syncCopy completion:v25];
  }

  else
  {
    v24 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004E980;
    block[3] = &unk_100078F10;
    v28 = completionCopy;
    v22 = completionCopy;
    dispatch_async(v24, block);

    v23 = v28;
  }
}

- (void)retrieveActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    keychainAccessGroup = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004EBD4;
    v13[3] = &unk_100079360;
    v10 = &v14;
    v14 = completionCopy;
    v11 = completionCopy;
    [backingStore retrieveActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:groupCopy keychainAccessGroup:keychainAccessGroup completion:v13];
  }

  else
  {
    keychainAccessGroup = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004EB60;
    block[3] = &unk_100078F10;
    v10 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(keychainAccessGroup, block);
  }
}

- (void)retrieveActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    keychainAccessGroup = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004EE10;
    v13[3] = &unk_100079360;
    v10 = &v14;
    v14 = completionCopy;
    v11 = completionCopy;
    [backingStore retrieveActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:groupCopy keychainAccessGroup:keychainAccessGroup completion:v13];
  }

  else
  {
    keychainAccessGroup = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004ED9C;
    block[3] = &unk_100078F10;
    v10 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(keychainAccessGroup, block);
  }
}

- (void)deleteActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    keychainAccessGroup = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004F048;
    v13[3] = &unk_1000792E8;
    v10 = &v14;
    v14 = completionCopy;
    v11 = completionCopy;
    [backingStore deleteActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:groupCopy keychainAccessGroup:keychainAccessGroup completion:v13];
  }

  else
  {
    keychainAccessGroup = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004EFD8;
    block[3] = &unk_100078F10;
    v10 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(keychainAccessGroup, block);
  }
}

- (void)deleteActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    keychainAccessGroup = [(THThreadNetworkCredentialsStoreLocalClient *)self keychainAccessGroup];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004F224;
    v13[3] = &unk_1000792E8;
    v10 = &v14;
    v14 = completionCopy;
    v11 = completionCopy;
    [backingStore deleteActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:groupCopy keychainAccessGroup:keychainAccessGroup completion:v13];
  }

  else
  {
    keychainAccessGroup = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004F1B4;
    block[3] = &unk_100078F10;
    v10 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(keychainAccessGroup, block);
  }
}

- (void)validateRecordWithMdnsScanWithDataSet:(id)set borderAgentID:(id)d completion:(id)completion
{
  setCopy = set;
  dCopy = d;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v12 = [(THThreadNetworkCredentialsStoreLocalClient *)self parseActiveOperationalDataSet:setCopy];
    v13 = v12;
    if (v12)
    {
      network = [v12 network];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10004F538;
      v18[3] = &unk_1000793D8;
      v15 = &v20;
      v20 = completionCopy;
      v19 = v13;
      [backingStore validateRecordWithMdnsScan:network borderAgentID:dCopy completion:v18];

      v16 = v19;
    }

    else
    {
      v16 = dispatch_get_global_queue(0, 0);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10004F4C0;
      v21[3] = &unk_100078F10;
      v15 = &v22;
      v22 = completionCopy;
      dispatch_async(v16, v21);
    }
  }

  else
  {
    v17 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004F448;
    block[3] = &unk_100078F10;
    v24 = completionCopy;
    dispatch_async(v17, block);

    v13 = v24;
  }
}

- (void)checkIsPreferredNetworkForActiveOperationalDataset:(id)dataset completion:(id)completion
{
  datasetCopy = dataset;
  completionCopy = completion;
  if (datasetCopy)
  {
    backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
    if (!backingStore)
    {
      v11 = dispatch_get_global_queue(0, 0);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10004F860;
      v16[3] = &unk_100078F10;
      v17 = completionCopy;
      dispatch_async(v11, v16);

      v9 = v17;
      goto LABEL_7;
    }

    if (_os_feature_enabled_impl())
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10004F8C0;
      v13[3] = &unk_100079400;
      v14 = datasetCopy;
      v15 = completionCopy;
      [backingStore retrievePreferredNetworkWithCompletion:v13];

      v9 = v14;
LABEL_7:

      goto LABEL_11;
    }

    v12 = sub_10001B194(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100053A70();
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

  else
  {
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004F800;
    block[3] = &unk_100078F10;
    v19 = completionCopy;
    dispatch_async(v10, block);

    backingStore = v19;
  }

LABEL_11:
}

- (void)updatePreferredNetworkInternallyWithCompletion:(id)completion
{
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004FB30;
    v6[3] = &unk_100079428;
    v7 = completionCopy;
    [backingStore updatePreferredNetworkInternallyWithCompletion:v6];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)cleanThreadKeychainDatabase:(id)database
{
  databaseCopy = database;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004FCDC;
    v10[3] = &unk_1000792E8;
    v6 = &v11;
    v11 = databaseCopy;
    v7 = databaseCopy;
    [backingStore cleanThreadKeychainDatabase:v10];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004FC6C;
    block[3] = &unk_100078F10;
    v6 = &v13;
    v13 = databaseCopy;
    v9 = databaseCopy;
    dispatch_async(v8, block);
  }
}

- (void)validateAODInternally:(id)internally completion:(id)completion
{
  internallyCopy = internally;
  completionCopy = completion;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (backingStore)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004FEA8;
    v13[3] = &unk_100079360;
    v9 = &v14;
    v14 = completionCopy;
    v10 = completionCopy;
    [backingStore validateAODInternally:internallyCopy completion:v13];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004FE34;
    block[3] = &unk_100078F10;
    v9 = &v16;
    v16 = completionCopy;
    v12 = completionCopy;
    dispatch_async(v11, block);
  }
}

- (void)retrieveListOfPreferredNetworksInternallyWithCompletion:(id)completion ipV4NwSignature:(id)signature ipv6NwSignature:(id)nwSignature wifiSSID:(id)d showCurrentEntry:(BOOL)entry completion:(id)a8
{
  entryCopy = entry;
  completionCopy = completion;
  signatureCopy = signature;
  nwSignatureCopy = nwSignature;
  dCopy = d;
  v18 = a8;
  backingStore = [(THThreadNetworkCredentialsStoreLocalClient *)self backingStore];
  if (!backingStore)
  {
    v20 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100050050;
    block[3] = &unk_100078F10;
    v25 = v18;
    dispatch_async(v20, block);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000500C4;
  v22[3] = &unk_100079310;
  v23 = v18;
  v21 = v18;
  [backingStore retrieveListOfPreferredNetworksInternallyWithCompletion:completionCopy ipV4NwSignature:signatureCopy ipv6NwSignature:nwSignatureCopy wifiSSID:dCopy showCurrentEntry:entryCopy completion:v22];
}

- (id)setFromSpinelFrame:(const char *)frame data_len:(unsigned int)data_len
{
  v4 = *&data_len;
  v6 = sub_10001B194(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100053C80();
  }

  sub_1000085B4(frame, v4, v69, 0x3E8uLL, 0);
  v7 = sub_10001B194(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100053D00();
  }

  if (v4)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v47 = 0;
    while (1)
    {
      v11 = sub_10001B194(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *v66 = v4;
        *&v66[4] = 1024;
        *&v66[6] = 973;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#MOS : data_len : %d, Line : %d", buf, 0xEu);
      }

      v54 = 0;
      v53 = 0;
      v17 = spinel_datatype_unpack(frame, v4, "d", v12, v13, v14, v15, v16, &v54);
      v18 = sub_10001B194(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *v66 = v17;
        *&v66[4] = 1024;
        *&v66[6] = 985;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#MOS : length : %d, Line : %d", buf, 0xEu);
      }

      if (v17 < 1)
      {
        goto LABEL_53;
      }

      v52 = 0;
      v51 = 0;
      v50 = 0;
      v46 = &v51;
      v24 = spinel_datatype_unpack(v54, v53, "iD", v19, v20, v21, v22, v23, &v52);
      v25 = sub_10001B194(1);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        *v66 = v52;
        *&v66[4] = 1024;
        *&v66[6] = v24;
        v67 = 1024;
        v68 = 1006;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "#MOS : propkey : %d, length: %d, Line : %d", buf, 0x14u);
      }

      if (v24 < 1)
      {
        goto LABEL_53;
      }

      if (v52 > 69)
      {
        if (v52 == 75)
        {
          v39 = sub_10001B194(1);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            sub_100053D78(v57, v58, v39);
          }

          v40 = [NSData dataWithBytes:v51 length:v50];

          v41 = sub_10001B194(1);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *buf = 138739971;
            *v66 = v40;
            _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "#MOS : PSKc : %{sensitive}@", buf, 0xCu);
          }

          v10 = v40;
          goto LABEL_45;
        }

        if (v52 == 70)
        {
          if (!v50)
          {
            goto LABEL_53;
          }

          v35 = sub_10001B194(1);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            sub_100053E38(v63, v64, v35);
          }

          v34 = [NSData dataWithBytes:v51 length:v50];

          v36 = sub_10001B194(1);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 138739971;
            *v66 = v34;
            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "#MOS : Master Key: %{sensitive}@", buf, 0xCu);
          }

          goto LABEL_46;
        }
      }

      else
      {
        if (v52 == 33)
        {
          LOBYTE(v49) = 0;
          if (spinel_datatype_unpack(v51, v50, "C", v26, v27, v28, v29, v30, &v49) < 1)
          {
            goto LABEL_53;
          }

          v38 = sub_10001B194(1);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            sub_100053DB8(v59, v60, v38);
          }

          v47 = v49;
          v37 = sub_10001B194(1);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *v66 = v49;
            _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "#MOS : Channel : %d", buf, 8u);
          }

          goto LABEL_39;
        }

        if (v52 == 54)
        {
          v49 = 0;
          if (spinel_datatype_unpack(v51, v50, "S", v26, v27, v28, v29, v30, &v49) < 1)
          {
            goto LABEL_53;
          }

          v31 = sub_10001B194(1);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_100053DF8(v61, v62, v31);
          }

          v48 = bswap32(v49) >> 16;
          v32 = [NSData dataWithBytes:&v48 length:2];

          v33 = sub_10001B194(1);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *v66 = v48;
            _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "#MOS : PANID : %hu", buf, 8u);
          }

          v34 = v9;
          v8 = v32;
          goto LABEL_46;
        }
      }

      v37 = sub_10001B194(1);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_100053E78(v55, v56, v37);
      }

LABEL_39:

LABEL_45:
      v34 = v9;
LABEL_46:
      frame += v17;
      v9 = v34;
      v4 = (v4 - v17);
      if (!v4)
      {
        goto LABEL_49;
      }
    }
  }

  v47 = 0;
  v10 = 0;
  v34 = 0;
  v8 = 0;
LABEL_49:
  LOBYTE(v46) = 1;
  v42 = [[THThreadNetworkCredentials alloc] initWithMasterKey:v34 passPhrase:0 PSKc:v10 channel:v47 PANID:v8 userInfo:0 credentialDataSet:0 isActiveDevice:v46];
  if (v42)
  {
    v43 = v42;
    v44 = sub_10001B194(1);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_100053EB8();
    }
  }

  else
  {
    v9 = v34;
LABEL_53:
    v44 = sub_10001B194(1);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_100053F30();
    }

    v43 = 0;
    v34 = v9;
  }

  return v43;
}

- (id)parseDataSetFromSpinel:(const char *)spinel data_len:(unsigned int)data_len
{
  v4 = *&data_len;
  v6 = sub_10001B194(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100053FB4();
  }

  sub_1000085B4(spinel, v4, v78, 0x3E8uLL, 0);
  v7 = sub_10001B194(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100054038();
  }

  if (v4)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v62 = 0;
    while (1)
    {
      v13 = sub_10001B194(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
        v74 = 1024;
        *v75 = v4;
        *&v75[4] = 1024;
        *&v75[6] = 1119;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s: #MOS : data_len : %d, Line : %d", buf, 0x18u);
      }

      v69 = 0;
      v68 = 0;
      v19 = spinel_datatype_unpack(spinel, v4, "d", v14, v15, v16, v17, v18, &v69);
      v20 = sub_10001B194(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
        v74 = 1024;
        *v75 = v19;
        *&v75[4] = 1024;
        *&v75[6] = 1131;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: #MOS : length : %d, Line : %d", buf, 0x18u);
      }

      if (v19 < 1)
      {
        goto LABEL_84;
      }

      v67 = 0;
      v66 = 0;
      v65 = 0;
      v61 = &v66;
      v26 = spinel_datatype_unpack(v69, v68, "iD", v21, v22, v23, v24, v25, &v67);
      v27 = sub_10001B194(1);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
        v74 = 1024;
        *v75 = v67;
        *&v75[4] = 1024;
        *&v75[6] = v26;
        v76 = 1024;
        v77 = 1152;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s: #MOS : propkey : %d, length: %d, Line : %d", buf, 0x1Eu);
      }

      if (v26 < 1)
      {
LABEL_84:
        v57 = 0;
        v34 = v8;
        goto LABEL_85;
      }

      if (v67 > 68)
      {
        break;
      }

      if (v67 == 33)
      {
        LOBYTE(v64) = 0;
        if (spinel_datatype_unpack(v66, v65, "C", v28, v29, v30, v31, v32, &v64) < 1)
        {
          goto LABEL_84;
        }

        v40 = sub_10001B194(1);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
          v74 = 1024;
          *v75 = 1233;
          _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded channel Line : %d", buf, 0x12u);
        }

        v62 = v64;
        v41 = sub_10001B194(1);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
          v74 = 1024;
          *v75 = v64;
          _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%s: #MOS : Channel : %d", buf, 0x12u);
        }

LABEL_47:

        goto LABEL_60;
      }

      if (v67 == 54)
      {
        LOWORD(v64) = 0;
        if (spinel_datatype_unpack(v66, v65, "S", v28, v29, v30, v31, v32, &v64) < 1)
        {
          goto LABEL_84;
        }

        v45 = sub_10001B194(1);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
          v74 = 1024;
          *v75 = 1213;
          _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded pan id Line : %d", buf, 0x12u);
        }

        v63 = bswap32(v64) >> 16;
        v46 = [NSData dataWithBytes:&v63 length:2];

        v47 = sub_10001B194(1);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
          v74 = 1024;
          *v75 = v63;
          _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%s: #MOS : PANID : %hu", buf, 0x12u);
        }

        v10 = v46;
        goto LABEL_60;
      }

      if (v67 != 68)
      {
        goto LABEL_45;
      }

      v64 = 0;
      if (spinel_datatype_unpack(v66, v65, "U", v28, v29, v30, v31, v32, &v64) < 1)
      {
        goto LABEL_84;
      }

      v33 = sub_10001B194(1);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
        v74 = 1024;
        *v75 = 1170;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded Network Name Line : %d", buf, 0x12u);
      }

      v34 = [NSString stringWithUTF8String:v64];

      v35 = sub_10001B194(1);
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
      if (!v34)
      {
        if (v36)
        {
          sub_1000540BC();
        }

        v8 = 0;
        goto LABEL_84;
      }

      if (v36)
      {
        *buf = 136315394;
        v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
        v74 = 2112;
        *v75 = v34;
        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s : #MOS : Network Name : %@", buf, 0x16u);
      }

LABEL_61:
      spinel += v19;
      v8 = v34;
      v4 = (v4 - v19);
      if (!v4)
      {
        goto LABEL_64;
      }
    }

    switch(v67)
    {
      case 'E':
        if (!v65)
        {
          goto LABEL_84;
        }

        v42 = sub_10001B194(1);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
          v74 = 1024;
          *v75 = 1184;
          _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded XPAN ID : %d", buf, 0x12u);
        }

        v43 = [NSData dataWithBytes:v66 length:v65];

        v44 = sub_10001B194(1);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
          v74 = 2112;
          *v75 = v43;
          _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%s: #MOS : XPAN ID: %@", buf, 0x16u);
        }

        v9 = v43;
        break;
      case 'F':
        if (!v65)
        {
          goto LABEL_84;
        }

        v48 = sub_10001B194(1);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
          v74 = 1024;
          *v75 = 1194;
          _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded master key Line : %d", buf, 0x12u);
        }

        v49 = [NSData dataWithBytes:v66 length:v65];

        v50 = sub_10001B194(1);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315395;
          v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
          v74 = 2117;
          *v75 = v49;
          _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%s: #MOS : Master Key: %{sensitive}@", buf, 0x16u);
        }

        v11 = v49;
        break;
      case 'K':
        v37 = sub_10001B194(1);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
          v74 = 1024;
          *v75 = 1243;
          _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded pskc Line : %d", buf, 0x12u);
        }

        v38 = [NSData dataWithBytes:v66 length:v65];

        v39 = sub_10001B194(1);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315395;
          v73 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromSpinel:data_len:]";
          v74 = 2117;
          *v75 = v38;
          _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%s: #MOS : PSKc : %{sensitive}@", buf, 0x16u);
        }

        v12 = v38;
        break;
      default:
LABEL_45:
        v41 = sub_10001B194(1);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          sub_10005413C(v70, v71, v41);
        }

        goto LABEL_47;
    }

LABEL_60:
    v34 = v8;
    goto LABEL_61;
  }

  v62 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v34 = 0;
LABEL_64:
  LOBYTE(v61) = 1;
  v51 = [[THThreadNetworkCredentials alloc] initWithMasterKey:v11 passPhrase:0 PSKc:v12 channel:v62 PANID:v10 userInfo:0 credentialDataSet:0 isActiveDevice:v61];
  v52 = sub_10001B194(1);
  v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
  if (v51)
  {
    if (v53)
    {
      sub_10005417C();
    }

    v54 = [[THThreadNetwork alloc] initWithName:v34 extendedPANID:v9];
    if (v54)
    {
      v55 = v54;
      v56 = [[THThreadNetworkCredentialsStoreRecord alloc] initWithNetwork:v54 credentials:v51 uniqueIdentifier:0 keychainAccessGroup:@"com.apple.thread.network" creationDate:0 lastModificationDate:0];
      if (v56)
      {
        v57 = v56;

        goto LABEL_85;
      }

      v59 = sub_10001B194(1);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        sub_1000541F4();
      }
    }

    else
    {
      v58 = sub_10001B194(1);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        sub_100054230();
      }
    }
  }

  else
  {
    if (v53)
    {
      sub_10005426C();
    }
  }

  v57 = 0;
LABEL_85:

  return v57;
}

- (id)parseActiveOperationalDataSet:(id)set
{
  setCopy = set;
  setCopy2 = set;
  bytes = [setCopy2 bytes];
  v8 = [setCopy2 length];

  return [(THThreadNetworkCredentialsStoreLocalClient *)self parseDataSetFromTLVs:bytes data_len:v8];
}

- (id)parseThreadNetworkActiveDataSet:(id)set
{
  setCopy = set;
  setCopy2 = set;
  bytes = [setCopy2 bytes];
  v8 = [setCopy2 length];

  return [(THThreadNetworkCredentialsStoreLocalClient *)self parseCredsFromTLVs:bytes data_len:v8];
}

- (id)parseDataSetFromTLVs:(const char *)vs data_len:(unsigned int)data_len
{
  v6 = +[NSMutableSet set];
  v7 = sub_10001B194(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000542A8();
  }

  sub_1000085B4(vs, data_len, v73, 0x3E8uLL, 0);
  v8 = sub_10001B194(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10005432C();
  }

  if (data_len)
  {
    v67 = 0;
    v68 = 0;
    v65 = 0;
    v66 = 0;
    v63 = 0;
    v64 = 0;
    LOBYTE(v62) = 0;
    v9 = 0;
    while (1)
    {
      v10 = v9 + 1;
      if (v10 >= data_len)
      {
        v54 = sub_10001B194(1);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          sub_1000543B0();
        }

        goto LABEL_113;
      }

      v11 = vs[v10];
      v12 = v9 + 2;
      v13 = v9 + 2 + v11;
      if (v13 > data_len)
      {
        v54 = sub_10001B194(1);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          sub_100054B5C();
        }

LABEL_113:

        v50 = 0;
        v52 = 0;
        v46 = 0;
        v42 = v66;
        v41 = v67;
        v44 = v64;
        v43 = v65;
        v45 = v63;
        goto LABEL_130;
      }

      v14 = vs[v9];
      v15 = [NSNumber numberWithChar:v14];
      if ([v6 containsObject:v15])
      {
        v18 = sub_10001B194(1);
        v42 = v66;
        v41 = v67;
        v44 = v64;
        v43 = v65;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100042554();
        }

        goto LABEL_127;
      }

      [v6 addObject:v15];
      if (v14 <= 4)
      {
        break;
      }

      if (v14 <= 11)
      {
        if (v14 == 5)
        {
          v31 = sub_10001B194(1);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
            v71 = 1024;
            *v72 = 1579;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded master key Line : %d", buf, 0x12u);
          }

          if (v11 != 16)
          {
            v18 = sub_10001B194(1);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              sub_1000545C0();
            }

LABEL_126:
            v42 = v66;
            v41 = v67;
            v44 = v64;
            v43 = v65;
LABEL_127:
            v45 = v63;
            goto LABEL_128;
          }

          v32 = [NSData dataWithBytes:&vs[v12] length:16];

          v18 = sub_10001B194(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315395;
            v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
            v71 = 2117;
            *v72 = v32;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: #MOS : Master Key: %{sensitive}@", buf, 0x16u);
          }

          v65 = v32;
          goto LABEL_84;
        }

        if (v14 != 7)
        {
          goto LABEL_83;
        }

        v25 = sub_10001B194(1);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
          v71 = 1024;
          *v72 = 1609;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded mesh local prefix Line : %d", buf, 0x12u);
        }

        if (v11 != 8)
        {
          v18 = sub_10001B194(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_100054434();
          }

          goto LABEL_126;
        }
      }

      else
      {
        switch(v14)
        {
          case 12:
            v35 = sub_10001B194(1);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
              v71 = 1024;
              *v72 = 1594;
              _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded security policy Line : %d", buf, 0x12u);
            }

            if ((v11 - 3) >= 2)
            {
              v18 = sub_10001B194(1);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                sub_1000544B8();
              }

              goto LABEL_126;
            }

            if (!vs[v12] && !vs[v9 + 3])
            {
              v18 = sub_10001B194(1);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                sub_10005453C();
              }

              goto LABEL_126;
            }

            break;
          case 14:
            v39 = sub_10001B194(1);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "==> Decoded active timestamp", buf, 2u);
            }

            if (v11 != 8)
            {
              v18 = sub_10001B194(1);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                sub_100041FAC();
              }

              goto LABEL_126;
            }

            v40 = [NSData dataWithBytes:&vs[v12] length:8];

            if (!v40)
            {
              v18 = sub_10001B194(1);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                sub_100041FAC();
              }

              v45 = 0;
              v42 = v66;
              v41 = v67;
              v44 = v64;
              v43 = v65;
LABEL_128:

LABEL_129:
              v50 = 0;
              v52 = 0;
              v46 = 0;
              goto LABEL_130;
            }

            v63 = v40;
            break;
          case 53:
            v19 = sub_10001B194(1);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
              v71 = 1024;
              *v72 = 1450;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded Channel Mask TLV Line : %d", buf, 0x12u);
            }

            v20 = v9 + 3;
            while (v20 - 1 < v13)
            {
              if (v20 >= v13 || v20 + 5 > v13)
              {
                v18 = sub_10001B194(1);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  sub_100054AD8();
                }

                goto LABEL_126;
              }

              if ((vs[v20 - 1] & 0xFD) != 0)
              {
                v18 = sub_10001B194(1);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  sub_1000549D0();
                }

                goto LABEL_126;
              }

              v22 = vs[v20];
              v20 += 6;
              if (v22 != 4)
              {
                v18 = sub_10001B194(1);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  sub_100054A54();
                }

                goto LABEL_126;
              }
            }

            break;
          default:
LABEL_83:
            v18 = sub_10001B194(1);
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_84;
            }

            *buf = 136315650;
            v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
            v71 = 1024;
            *v72 = v14;
            *&v72[4] = 1024;
            *&v72[6] = 1633;
            v28 = v18;
            v29 = "%s: #MOS : ==> Unknown type : %d, Line : %d";
            v30 = 24;
LABEL_89:
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v29, buf, v30);
            goto LABEL_84;
        }
      }

LABEL_86:

      v9 = v13;
      if (v13 >= data_len)
      {
        goto LABEL_91;
      }
    }

    if (v14 <= 1)
    {
      if (v14)
      {
        v23 = sub_10001B194(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
          v71 = 1024;
          *v72 = 1533;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded pan id Line : %d", buf, 0x12u);
        }

        if (v11 != 2)
        {
          v18 = sub_10001B194(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10005474C();
          }

          goto LABEL_126;
        }

        v24 = [NSData dataWithBytes:&vs[v12] length:2];

        v18 = sub_10001B194(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
          v71 = 2112;
          *v72 = v24;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: #MOS : PANID : %@", buf, 0x16u);
        }

        v66 = v24;
        goto LABEL_84;
      }

      v26 = sub_10001B194(1);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
        v71 = 1024;
        *v72 = 1499;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded channel Line : %d", buf, 0x12u);
      }

      if (v11 != 3)
      {
        v18 = sub_10001B194(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000547D0();
        }

        goto LABEL_126;
      }

      if (vs[v12])
      {
        v18 = sub_10001B194(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100054854();
        }

        goto LABEL_126;
      }

      v62 = vs[v9 + 4];
      v18 = sub_10001B194(1);
      v27 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      if ((v62 - 27) <= 0xEFu)
      {
        if (v27)
        {
          sub_1000548D4();
        }

        goto LABEL_126;
      }

      if (v27)
      {
        *buf = 136315394;
        v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
        v71 = 1024;
        *v72 = v62;
        v28 = v18;
        v29 = "%s: #MOS : Channel : %d";
        v30 = 18;
        goto LABEL_89;
      }

LABEL_84:
      v37 = v68;
    }

    else
    {
      if (v14 == 2)
      {
        v33 = sub_10001B194(1);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
          v71 = 1024;
          *v72 = 1548;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded XPAN ID : %d", buf, 0x12u);
        }

        if (v11 != 8)
        {
          v18 = sub_10001B194(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1000546C8();
          }

          goto LABEL_126;
        }

        v34 = [NSData dataWithBytes:&vs[v12] length:8];

        v18 = sub_10001B194(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
          v71 = 2112;
          *v72 = v34;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: #MOS : XPAN ID: %@", buf, 0x16u);
        }

        v67 = v34;
        goto LABEL_84;
      }

      if (v14 != 3)
      {
        v16 = sub_10001B194(1);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
          v71 = 1024;
          *v72 = 1563;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded pskc Line : %d", buf, 0x12u);
        }

        if (v11 != 16)
        {
          v18 = sub_10001B194(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_100054644();
          }

          goto LABEL_126;
        }

        v17 = [NSData dataWithBytes:&vs[v12] length:16];

        v18 = sub_10001B194(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315395;
          v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
          v71 = 2117;
          *v72 = v17;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: #MOS : PSKc : %{sensitive}@", buf, 0x16u);
        }

        v64 = v17;
        goto LABEL_84;
      }

      __memcpy_chk();
      v74[v11] = 0;
      v36 = sub_10001B194(1);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
        v71 = 1024;
        *v72 = 1488;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded Network Name Line : %d", buf, 0x12u);
      }

      v37 = [NSString stringWithUTF8String:v74];

      v18 = sub_10001B194(1);
      v38 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      if (!v37)
      {
        if (v38)
        {
          sub_100054950();
        }

        v68 = 0;
        goto LABEL_126;
      }

      if (v38)
      {
        *buf = 136315394;
        v70 = "[THThreadNetworkCredentialsStoreLocalClient parseDataSetFromTLVs:data_len:]";
        v71 = 2112;
        *v72 = v37;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s : #MOS : Network Name : %@", buf, 0x16u);
      }
    }

    v68 = v37;
    goto LABEL_86;
  }

  v63 = 0;
  v64 = 0;
  LOBYTE(v62) = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
LABEL_91:
  v42 = v66;
  v41 = v67;
  v44 = v64;
  v43 = v65;
  v45 = v63;
  if (!v68 || !v67 || !v65 || !v64 || !v66 || !v62 || !v63)
  {
    v53 = sub_10001B194(1);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      sub_100054BE0();
    }

    goto LABEL_129;
  }

  LOBYTE(v61) = 1;
  v46 = [[THThreadNetworkCredentials alloc] initWithMasterKey:v65 passPhrase:0 PSKc:v64 channel:v62 PANID:v66 userInfo:0 credentialDataSet:0 isActiveDevice:v61];
  v47 = sub_10001B194(1);
  v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
  if (!v46)
  {
    if (v48)
    {
      sub_10005426C();
    }

    goto LABEL_129;
  }

  if (v48)
  {
    sub_100054C64();
  }

  v49 = [[THThreadNetwork alloc] initWithName:v68 extendedPANID:v67];
  if (v49)
  {
    v50 = v49;
    v51 = [[THThreadNetworkCredentialsStoreRecord alloc] initWithNetwork:v49 credentials:v46 uniqueIdentifier:0 keychainAccessGroup:@"com.apple.thread.network" creationDate:0 lastModificationDate:0];
    if (v51)
    {
      v52 = v51;
      goto LABEL_130;
    }

    v58 = sub_10001B194(1);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      sub_1000541F4();
    }
  }

  else
  {
    v55 = sub_10001B194(1);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      sub_100054230();
    }

    v50 = 0;
  }

  v52 = 0;
LABEL_130:

  return v52;
}

- (id)parseCredsFromTLVs:(const char *)vs data_len:(unsigned int)data_len
{
  v6 = +[NSMutableSet set];
  v7 = sub_10001B194(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100054CDC();
  }

  sub_1000085B4(vs, data_len, v67, 0x3E8uLL, 0);
  v8 = sub_10001B194(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100054D60();
  }

  if (data_len)
  {
    v9 = 0;
    v60 = 0;
    v61 = 0;
    v58 = 0;
    v59 = 0;
    LOBYTE(v57) = 0;
    v62 = 0;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (v11 >= data_len)
      {
        v16 = sub_10001B194(1);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100054DE4();
        }

        goto LABEL_111;
      }

      v12 = vs[v11];
      v13 = v10 + 2;
      v14 = v10 + 2 + v12;
      if (v14 > data_len)
      {
        v16 = sub_10001B194(1);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100055590();
        }

LABEL_111:
        v44 = v60;
        v43 = v61;
        v46 = v58;
        v45 = v59;
        goto LABEL_120;
      }

      v15 = vs[v10];
      v16 = [NSNumber numberWithChar:v15];
      if ([v6 containsObject:v16])
      {
        v17 = v9;
        v20 = sub_10001B194(1);
        v44 = v60;
        v43 = v61;
        v46 = v58;
        v45 = v59;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100042554();
        }

        goto LABEL_119;
      }

      [v6 addObject:v16];
      if (v15 <= 4)
      {
        break;
      }

      if (v15 <= 11)
      {
        if (v15 == 5)
        {
          v17 = v9;
          v30 = sub_10001B194(1);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
            v65 = 1024;
            *v66 = 1895;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded master key Line : %d", buf, 0x12u);
          }

          if (v12 != 16)
          {
            v20 = sub_10001B194(1);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_100054FF4();
            }

LABEL_118:
            v44 = v60;
            v43 = v61;
            v46 = v58;
            v45 = v59;
LABEL_119:

            v9 = v17;
LABEL_120:

LABEL_121:
            v49 = sub_10001B194(1);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              sub_100055710();
            }

            v48 = 0;
            goto LABEL_124;
          }

          v31 = [NSData dataWithBytes:&vs[v13] length:16];

          v20 = sub_10001B194(1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315395;
            v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
            v65 = 2117;
            *v66 = v31;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: #MOS : Master Key: %{sensitive}@", buf, 0x16u);
          }

          v59 = v31;
LABEL_67:
          v34 = v17;
          goto LABEL_68;
        }

        if (v15 == 7)
        {
          v17 = v9;
          v27 = sub_10001B194(1);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
            v65 = 1024;
            *v66 = 1925;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded mesh local prefix Line : %d", buf, 0x12u);
          }

          if (v12 != 8)
          {
            v20 = sub_10001B194(1);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_100054E68();
            }

            goto LABEL_118;
          }

          goto LABEL_85;
        }
      }

      else
      {
        switch(v15)
        {
          case 12:
            v17 = v9;
            v35 = sub_10001B194(1);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
              v65 = 1024;
              *v66 = 1910;
              _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded security policy Line : %d", buf, 0x12u);
            }

            if ((v12 - 3) >= 2)
            {
              v20 = sub_10001B194(1);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                sub_100054EEC();
              }

              goto LABEL_118;
            }

            if (!vs[v13] && !vs[v10 + 3])
            {
              v20 = sub_10001B194(1);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                sub_100054F70();
              }

              goto LABEL_118;
            }

            goto LABEL_85;
          case 14:
            v17 = v9;
            v41 = sub_10001B194(1);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "==> Decoded active timestamp", buf, 2u);
            }

            if (v12 != 8)
            {
              v20 = sub_10001B194(1);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                sub_100041FAC();
              }

              goto LABEL_118;
            }

            v42 = [NSData dataWithBytes:&vs[v13] length:8];

            if (!v42)
            {
              v20 = sub_10001B194(1);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                sub_100041FAC();
              }

              v62 = 0;
              goto LABEL_118;
            }

            v62 = v42;
LABEL_85:
            v9 = v17;
            goto LABEL_86;
          case 53:
            v21 = sub_10001B194(1);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
              v65 = 1024;
              *v66 = 1766;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded Channel Mask TLV Line : %d", buf, 0x12u);
            }

            v22 = v10 + 3;
            while (v22 - 1 < v14)
            {
              if (v22 >= v14 || v22 + 5 > v14)
              {
                v17 = v9;
                v20 = sub_10001B194(1);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  sub_10005550C();
                }

                goto LABEL_118;
              }

              if ((vs[v22 - 1] & 0xFD) != 0)
              {
                v17 = v9;
                v20 = sub_10001B194(1);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  sub_100055404();
                }

                goto LABEL_118;
              }

              v24 = vs[v22];
              v22 += 6;
              if (v24 != 4)
              {
                v17 = v9;
                v20 = sub_10001B194(1);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  sub_100055488();
                }

                goto LABEL_118;
              }
            }

            goto LABEL_86;
        }
      }

      v34 = v9;
      v20 = sub_10001B194(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
        v65 = 1024;
        *v66 = v15;
        *&v66[4] = 1024;
        *&v66[6] = 1949;
        v38 = v20;
        v39 = "%s: #MOS : ==> Unknown type : %d, Line : %d";
        v40 = 24;
LABEL_90:
        _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, v39, buf, v40);
      }

LABEL_68:

      v9 = v34;
LABEL_86:

      v10 = v14;
      if (v14 >= data_len)
      {
        goto LABEL_92;
      }
    }

    if (v15 <= 1)
    {
      if (v15)
      {
        v17 = v9;
        v25 = sub_10001B194(1);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
          v65 = 1024;
          *v66 = 1849;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded pan id Line : %d", buf, 0x12u);
        }

        if (v12 != 2)
        {
          v20 = sub_10001B194(1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_100055180();
          }

          goto LABEL_118;
        }

        v26 = [NSData dataWithBytes:&vs[v13] length:2];

        v20 = sub_10001B194(1);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
          v65 = 2112;
          *v66 = v26;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: #MOS : PANID : %@", buf, 0x16u);
        }

        v60 = v26;
      }

      else
      {
        v28 = sub_10001B194(1);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
          v65 = 1024;
          *v66 = 1815;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded channel Line : %d", buf, 0x12u);
        }

        v17 = v9;
        if (v12 != 3)
        {
          v20 = sub_10001B194(1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_100055204();
          }

          goto LABEL_118;
        }

        if (vs[v13])
        {
          v20 = sub_10001B194(1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_100055288();
          }

          goto LABEL_118;
        }

        v57 = vs[v10 + 4];
        v20 = sub_10001B194(1);
        v29 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        if ((v57 - 27) <= 0xEFu)
        {
          if (v29)
          {
            sub_100055308();
          }

          goto LABEL_118;
        }

        if (v29)
        {
          *buf = 136315394;
          v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
          v65 = 1024;
          *v66 = v57;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: #MOS : Channel : %d", buf, 0x12u);
        }
      }
    }

    else if (v15 == 2)
    {
      v17 = v9;
      v32 = sub_10001B194(1);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
        v65 = 1024;
        *v66 = 1864;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded XPAN ID : %d", buf, 0x12u);
      }

      if (v12 != 8)
      {
        v20 = sub_10001B194(1);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000550FC();
        }

        goto LABEL_118;
      }

      v33 = [NSData dataWithBytes:&vs[v13] length:8];

      v20 = sub_10001B194(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
        v65 = 2112;
        *v66 = v33;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: #MOS : XPAN ID: %@", buf, 0x16u);
      }

      v61 = v33;
    }

    else
    {
      if (v15 == 3)
      {
        __memcpy_chk();
        v68[v12] = 0;
        v36 = sub_10001B194(1);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
          v65 = 1024;
          *v66 = 1804;
          _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded Network Name Line : %d", buf, 0x12u);
        }

        v34 = [NSString stringWithUTF8String:v68];

        v20 = sub_10001B194(1);
        v37 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        if (!v34)
        {
          if (v37)
          {
            sub_100055384();
          }

          v17 = 0;
          goto LABEL_118;
        }

        if (!v37)
        {
          goto LABEL_68;
        }

        *buf = 136315394;
        v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
        v65 = 2112;
        *v66 = v34;
        v38 = v20;
        v39 = "%s : #MOS : Network Name : %@";
        v40 = 22;
        goto LABEL_90;
      }

      v17 = v9;
      v18 = sub_10001B194(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
        v65 = 1024;
        *v66 = 1879;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: #MOS : ==> Decoded pskc Line : %d", buf, 0x12u);
      }

      if (v12 != 16)
      {
        v20 = sub_10001B194(1);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100055078();
        }

        goto LABEL_118;
      }

      v19 = [NSData dataWithBytes:&vs[v13] length:16];

      v20 = sub_10001B194(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315395;
        v64 = "[THThreadNetworkCredentialsStoreLocalClient parseCredsFromTLVs:data_len:]";
        v65 = 2117;
        *v66 = v19;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: #MOS : PSKc : %{sensitive}@", buf, 0x16u);
      }

      v58 = v19;
    }

    goto LABEL_67;
  }

  v61 = 0;
  v62 = 0;
  LOBYTE(v57) = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v9 = 0;
LABEL_92:
  v44 = v60;
  v43 = v61;
  v46 = v58;
  v45 = v59;
  if (v9 && v61 && v59 && v58 && v60 && v57 && v62)
  {
    LOBYTE(v56) = 1;
    v47 = [[THThreadNetworkCredentials alloc] initWithMasterKey:v59 passPhrase:0 PSKc:v58 channel:v57 PANID:v60 userInfo:0 credentialDataSet:0 isActiveDevice:v56];
    if (!v47)
    {
      goto LABEL_121;
    }

    v48 = v47;
    v49 = sub_10001B194(1);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_100055698();
    }

LABEL_124:

    v51 = v48;
  }

  else
  {
    v50 = sub_10001B194(1);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_100055614();
    }

    v51 = 0;
  }

  return v51;
}

- (THThreadNetworkCredentialsBackingStore)backingStore
{
  WeakRetained = objc_loadWeakRetained(&self->_backingStore);

  return WeakRetained;
}

@end