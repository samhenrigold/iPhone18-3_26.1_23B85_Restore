@interface INImageServiceConnection(Workflow)
- (void)wf_accessBundleContentForBundleIdentifiers:()Workflow withBlock:;
@end

@implementation INImageServiceConnection(Workflow)

- (void)wf_accessBundleContentForBundleIdentifiers:()Workflow withBlock:
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v9 = 0;
  LOBYTE(self) = [self accessBundleContentForBundleIdentifiers:a3 withBlock:v6 error:&v9];
  v7 = v9;
  if ((self & 1) == 0)
  {
    v8 = getWFIntentExecutionLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[INImageServiceConnection(Workflow) wf_accessBundleContentForBundleIdentifiers:withBlock:]";
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s [INImageServiceConnection wf_accessBundleContentForBundleIdentifiers] failed with error: %{public}@", buf, 0x16u);
    }

    v6[2](v6);
  }
}

@end