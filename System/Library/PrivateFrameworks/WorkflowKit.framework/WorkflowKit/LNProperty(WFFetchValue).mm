@interface LNProperty(WFFetchValue)
- (void)wf_getValueForEntity:()WFFetchValue entityMetadata:completionHandler:;
@end

@implementation LNProperty(WFFetchValue)

- (void)wf_getValueForEntity:()WFFetchValue entityMetadata:completionHandler:
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  properties = [v9 properties];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __82__LNProperty_WFFetchValue__wf_getValueForEntity_entityMetadata_completionHandler___block_invoke;
  v21[3] = &unk_1E837E080;
  v21[4] = self;
  v12 = [properties if_firstObjectPassingTest:v21];

  if (([v12 capabilities] & 2) != 0)
  {
    value = [MEMORY[0x1E69ACE60] policyWithEntityMetadata:v9];
    v20 = 0;
    v14 = [value connectionWithError:&v20];
    v15 = v20;
    if (v14)
    {
      identifier = [self identifier];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __82__LNProperty_WFFetchValue__wf_getValueForEntity_entityMetadata_completionHandler___block_invoke_161;
      v18[3] = &unk_1E837AAA0;
      v18[4] = self;
      v19 = v10;
      [v14 fetchValueForPropertyWithIdentifier:identifier entity:v8 completionHandler:v18];
    }

    else
    {
      v17 = getWFGeneralLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "[LNProperty(WFFetchValue) wf_getValueForEntity:entityMetadata:completionHandler:]";
        v24 = 2112;
        v25 = v15;
        _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_ERROR, "%s Unable to create connection: %@", buf, 0x16u);
      }

      (*(v10 + 2))(v10, 0);
    }
  }

  else
  {
    value = [self value];
    (*(v10 + 2))(v10, value);
  }
}

@end