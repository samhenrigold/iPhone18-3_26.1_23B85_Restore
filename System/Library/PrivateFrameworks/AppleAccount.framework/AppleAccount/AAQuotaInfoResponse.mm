@interface AAQuotaInfoResponse
- (AAQuotaInfoResponse)initWithHTTPResponse:(id)response data:(id)data;
- (BOOL)hasMaxTier;
- (NSString)displayLabel;
- (NSURL)manageStorageURL;
- (void)_initFromResponseDict;
- (void)updateAccount:(id)account completion:(id)completion;
@end

@implementation AAQuotaInfoResponse

- (AAQuotaInfoResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v9.receiver = self;
  v9.super_class = AAQuotaInfoResponse;
  v4 = [(AAResponse *)&v9 initWithHTTPResponse:response data:data];
  v5 = v4;
  if (v4)
  {
    statusCode = [(NSHTTPURLResponse *)v4->super._httpResponse statusCode];
    if (statusCode == 200)
    {
      [(AAQuotaInfoResponse *)v5 _initFromResponseDict];
    }

    else
    {
      v7 = _AALogSystem(statusCode);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [AAQuotaInfoResponse initWithHTTPResponse:v7 data:?];
      }
    }
  }

  return v5;
}

- (void)_initFromResponseDict
{
  v8 = [(NSDictionary *)self->super._responseDictionary objectForKeyedSubscript:@"storage_data"];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v8 objectForKeyedSubscript:@"quota_info_in_bytes"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&self->_quotaInfo, v3);
      }

      v4 = [v8 objectForKeyedSubscript:@"storage_info_in_bytes"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&self->_storageInfo, v4);
      }
    }
  }

  v5 = [(NSDictionary *)self->super._responseDictionary objectForKeyedSubscript:@"storage_usage_by_media"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_usage, v5);
  }

  v6 = [(NSDictionary *)self->super._responseDictionary objectForKeyedSubscript:@"entry_points"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_endPoints, v6);
  }

  v7 = [(NSDictionary *)self->super._responseDictionary objectForKeyedSubscript:@"storage_meter_label"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_storageMeterLabel, v7);
  }
}

- (NSURL)manageStorageURL
{
  v2 = [(NSDictionary *)self->_endPoints objectForKeyedSubscript:@"quota.manage_storage_url"];
  uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v4 = [v2 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

  v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];

  return v5;
}

- (BOOL)hasMaxTier
{
  v2 = [(NSDictionary *)self->super._responseDictionary objectForKeyedSubscript:@"quota_status"];
  v3 = [v2 objectForKeyedSubscript:@"have_max_quota_tier"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSString)displayLabel
{
  v2 = [(NSDictionary *)self->_storageMeterLabel objectForKeyedSubscript:@"display_label"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v3 = [v4 localizedStringForKey:@"SERVICE_TYPE_ICLOUD" value:0 table:@"Localizable"];
  }

  return v3;
}

- (void)updateAccount:(id)account completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  aa_lastKnownQuota = [accountCopy aa_lastKnownQuota];
  totalStorageInBytes = [(AAQuotaInfoResponse *)self totalStorageInBytes];
  if (totalStorageInBytes && ([aa_lastKnownQuota isEqualToNumber:totalStorageInBytes] & 1) == 0)
  {
    v10 = _AALogSystem([accountCopy aa_setLastKnownQuota:totalStorageInBytes]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v15 = accountCopy;
      v16 = 2112;
      v17 = aa_lastKnownQuota;
      v18 = 2112;
      v19 = totalStorageInBytes;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Quota for %@ changed from %@ to %@; updating last known quota", buf, 0x20u);
    }

    accountStore = [accountCopy accountStore];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__AAQuotaInfoResponse_updateAccount_completion___block_invoke;
    v12[3] = &unk_1E7C9ABB8;
    v13 = completionCopy;
    [accountStore saveVerifiedAccount:accountCopy withCompletionHandler:v12];
  }
}

void __48__AAQuotaInfoResponse_updateAccount_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AALogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Updated account quota information with success: %@, error: %@", &v9, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }
}

- (void)initWithHTTPResponse:(id *)a1 data:(NSObject *)a2 .cold.1(id *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [*a1 statusCode];
  v5 = *a1;
  v6 = 134218242;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "AAQuotaInfoResponse has non-200 status code: %zd for response: %@", &v6, 0x16u);
}

@end