@interface LACStringHelper
+ (id)truncateString:(id)string maxLength:(int64_t)length;
@end

@implementation LACStringHelper

+ (id)truncateString:(id)string maxLength:(int64_t)length
{
  stringCopy = string;
  if (stringCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v7 = [stringCopy length];
      if (v7 >= length)
      {
        lengthCopy = length;
      }

      else
      {
        lengthCopy = v7;
      }

      v9 = [stringCopy rangeOfComposedCharacterSequencesForRange:{0, lengthCopy}];
      v11 = [stringCopy substringWithRange:{v9, v10}];
      goto LABEL_11;
    }

    v12 = LACLogDefault(isKindOfClass);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [LACStringHelper truncateString:stringCopy maxLength:v12];
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

+ (void)truncateString:(uint64_t)a1 maxLength:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Invalid string (%@)", &v2, 0xCu);
}

@end