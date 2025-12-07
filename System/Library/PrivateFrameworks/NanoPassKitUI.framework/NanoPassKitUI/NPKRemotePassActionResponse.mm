@interface NPKRemotePassActionResponse
- (NSString)identifier;
- (PKCurrencyAmount)currencyAmount;
- (id)description;
- (int)result;
@end

@implementation NPKRemotePassActionResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPKRemotePassActionResponse;
  v3 = [(NPKRemotePassAction *)&v7 description];
  identifier = [(NPKRemotePassActionResponse *)self identifier];
  v5 = [v3 stringByAppendingFormat:@" (ID:%@, result:%d)", identifier, -[NPKRemotePassActionResponse result](self, "result")];

  return v5;
}

- (NSString)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "[NPKRemotePassActionResponse identifier]";
      v8 = 2082;
      v9 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKitUI/NPKRemotePassActionResponse.m";
      v10 = 2048;
      v11 = 63;
      _os_log_impl(&dword_25B64D000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v6, 0x20u);
    }
  }

  _NPKAssertAbort();
  return &stru_286CE7B58;
}

- (int)result
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "[NPKRemotePassActionResponse result]";
      v8 = 2082;
      v9 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKitUI/NPKRemotePassActionResponse.m";
      v10 = 2048;
      v11 = 69;
      _os_log_impl(&dword_25B64D000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v6, 0x20u);
    }
  }

  _NPKAssertAbort();
  return 0;
}

- (PKCurrencyAmount)currencyAmount
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "[NPKRemotePassActionResponse currencyAmount]";
      v8 = 2082;
      v9 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKitUI/NPKRemotePassActionResponse.m";
      v10 = 2048;
      v11 = 75;
      _os_log_impl(&dword_25B64D000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v6, 0x20u);
    }
  }

  _NPKAssertAbort();
  return 0;
}

@end