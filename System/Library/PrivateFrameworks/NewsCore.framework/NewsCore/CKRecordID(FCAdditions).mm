@interface CKRecordID(FCAdditions)
- (id)fc_initSafeWithRecordName:()FCAdditions;
@end

@implementation CKRecordID(FCAdditions)

- (id)fc_initSafeWithRecordName:()FCAdditions
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length] && objc_msgSend(v4, "length") < 0x100)
  {
    v5 = [self initWithRecordName:v4];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid record name: %@", v4];
      *buf = 136315906;
      v9 = "[CKRecordID(FCAdditions) fc_initSafeWithRecordName:]";
      v10 = 2080;
      v11 = "CKRecordID+FCAdditions.m";
      v12 = 1024;
      v13 = 17;
      v14 = 2114;
      v15 = v7;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v5 = 0;
  }

  return v5;
}

@end