@interface NSDictionary
@end

@implementation NSDictionary

id __94__NSDictionary_MobileContainerManagerAdditions__MCM_writeToURL_withOptions_fileManager_error___block_invoke(uint64_t a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Attempting to write a zero-length plist file at [%@]", v3];

  v13[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[NSDictionary(MobileContainerManagerAdditions) MCM_writeToURL:withOptions:fileManager:error:]_block_invoke"];
  v14[0] = v5;
  v14[1] = &unk_1F5A76840;
  v6 = *MEMORY[0x1E696A578];
  v13[1] = @"SourceFileLine";
  v13[2] = v6;
  v14[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v8 = container_log_handle_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:34 userInfo:v7];

  return v9;
}

@end