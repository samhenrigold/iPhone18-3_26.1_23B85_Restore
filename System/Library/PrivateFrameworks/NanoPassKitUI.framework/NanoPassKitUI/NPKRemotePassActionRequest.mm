@interface NPKRemotePassActionRequest
- (NSString)actionText;
- (NSString)identifier;
- (PKPaymentPassAction)action;
- (id)description;
@end

@implementation NPKRemotePassActionRequest

- (id)description
{
  v8.receiver = self;
  v8.super_class = NPKRemotePassActionRequest;
  v3 = [(NPKRemotePassAction *)&v8 description];
  identifier = [(NPKRemotePassActionRequest *)self identifier];
  action = [(NPKRemotePassActionRequest *)self action];
  v6 = [v3 stringByAppendingFormat:@" (ID:%@, action:%@)", identifier, action];

  return v6;
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
      v7 = "[NPKRemotePassActionRequest identifier]";
      v8 = 2082;
      v9 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKitUI/NPKRemotePassActionRequest.m";
      v10 = 2048;
      v11 = 29;
      _os_log_impl(&dword_25B64D000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v6, 0x20u);
    }
  }

  _NPKAssertAbort();
  return &stru_286CE7B58;
}

- (PKPaymentPassAction)action
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "[NPKRemotePassActionRequest action]";
      v9 = 2082;
      v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKitUI/NPKRemotePassActionRequest.m";
      v11 = 2048;
      v12 = 35;
      _os_log_impl(&dword_25B64D000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v7, 0x20u);
    }
  }

  _NPKAssertAbort();
  v5 = objc_alloc_init(MEMORY[0x277D38088]);

  return v5;
}

- (NSString)actionText
{
  action = [(NPKRemotePassActionRequest *)self action];
  title = [action title];
  v4 = title;
  if (title)
  {
    confirmationTitle = title;
  }

  else
  {
    confirmationTitle = [action confirmationTitle];
  }

  v6 = confirmationTitle;

  return v6;
}

@end