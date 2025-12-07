@interface NSAttributedString(UserNotifications)
+ (id)_un_attributedStringWithRTFDData:()UserNotifications;
- (id)_un_RTFDData;
- (id)_un_attributedStringByKeepingOnlyAttachmentAttributes;
- (id)_un_truncatedAttributedStringToMaxLength:()UserNotifications;
@end

@implementation NSAttributedString(UserNotifications)

+ (id)_un_attributedStringWithRTFDData:()UserNotifications
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v13[0] = @"DocumentType";
    v13[1] = @"DefaultAttributes";
    v14[0] = @"NSRTFD";
    v14[1] = MEMORY[0x1E695E0F8];
    v3 = MEMORY[0x1E695DF20];
    v4 = a3;
    v5 = [v3 dictionaryWithObjects:v14 forKeys:v13 count:2];
    v12 = 0;
    v6 = [objc_alloc(MEMORY[0x1E696AD40]) initWithData:v4 options:v5 documentAttributes:0 error:&v12];

    v7 = v12;
    if (v7)
    {
      v8 = UNLogUtilities;
      if (os_log_type_enabled(UNLogUtilities, OS_LOG_TYPE_ERROR))
      {
        [NSAttributedString(UserNotifications) _un_attributedStringWithRTFDData:v8];
      }
    }

    v9 = [v6 length];
    [v6 removeAttribute:@"NSFont" range:{0, v9}];
    [v6 removeAttribute:@"NSParagraphStyle" range:{0, v9}];
    v10 = [v6 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_un_RTFDData
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [self length];
  v9 = @"DocumentType";
  v10[0] = @"NSRTFD";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8 = 0;
  v4 = [self dataFromRange:0 documentAttributes:v2 error:{v3, &v8}];
  v5 = v8;
  if (v5)
  {
    v6 = UNLogUtilities;
    if (os_log_type_enabled(UNLogUtilities, OS_LOG_TYPE_ERROR))
    {
      [(NSAttributedString(UserNotifications) *)v6 _un_RTFDData];
    }
  }

  return v4;
}

- (id)_un_truncatedAttributedStringToMaxLength:()UserNotifications
{
  if ([self length] <= a3)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self attributedSubstringFromRange:{0, a3}];
  }

  return selfCopy;
}

- (id)_un_attributedStringByKeepingOnlyAttachmentAttributes
{
  v2 = [self mutableCopy];
  v3 = [self length];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __94__NSAttributedString_UserNotifications___un_attributedStringByKeepingOnlyAttachmentAttributes__block_invoke;
  v6[3] = &unk_1E7CFFAB8;
  v4 = v2;
  v7 = v4;
  [self enumerateAttributesInRange:0 options:v3 usingBlock:{0, v6}];

  return v4;
}

@end