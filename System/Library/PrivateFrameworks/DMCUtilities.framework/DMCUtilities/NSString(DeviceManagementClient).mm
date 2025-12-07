@interface NSString(DeviceManagementClient)
- (id)dmc_substringWithPattern:()DeviceManagementClient;
@end

@implementation NSString(DeviceManagementClient)

- (id)dmc_substringWithPattern:()DeviceManagementClient
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:a3 options:16 error:&v15];
  v5 = v15;
  v7 = v5;
  if (v5)
  {
    v8 = *DMCLogObjects(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[NSString(DeviceManagementClient) dmc_substringWithPattern:]";
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_1B1630000, v8, OS_LOG_TYPE_ERROR, "%s Failed to create regex with error: %{public}@", buf, 0x16u);
    }

    v9 = 0;
  }

  else
  {
    v10 = [v4 firstMatchInString:self options:0 range:{0, objc_msgSend(self, "length")}];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 rangeAtIndex:1];
      v9 = [self substringWithRange:{v12, v13}];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end