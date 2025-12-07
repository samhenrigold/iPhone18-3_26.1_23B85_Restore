@interface WFContentExfiltrationQuantityInfo
+ (int64_t)deletionItemCountLimitForContentWithContentItemClassName:(id)name;
+ (int64_t)sharingItemCountLimitForContentWithAttribution:(id)attribution;
@end

@implementation WFContentExfiltrationQuantityInfo

+ (int64_t)deletionItemCountLimitForContentWithContentItemClassName:(id)name
{
  nameCopy = name;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  isEqualToString = objc_msgSend_isEqualToString_(nameCopy);

  if (isEqualToString)
  {
    goto LABEL_2;
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = objc_msgSend_isEqualToString_(nameCopy);

  if (v10)
  {
    v7 = 10;
    goto LABEL_5;
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = objc_msgSend_isEqualToString_(nameCopy);

  if (v14 & 1) != 0 || (v15 = objc_opt_class(), NSStringFromClass(v15), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend_isEqualToString_(nameCopy), v16, (v17))
  {
LABEL_2:
    v7 = 50;
  }

  else if (objc_msgSend_isEqualToString_(nameCopy))
  {
    v7 = 0;
  }

  else
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    objc_msgSend_isEqualToString_(nameCopy);

    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_5:

  return v7;
}

+ (int64_t)sharingItemCountLimitForContentWithAttribution:(id)attribution
{
  origin = [attribution origin];
  if (origin)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      appDescriptor = [origin appDescriptor];
      bundleIdentifier = [appDescriptor bundleIdentifier];

      if (objc_msgSend_isEqualToString_(bundleIdentifier))
      {
LABEL_4:
        v6 = 50;
LABEL_8:

        goto LABEL_9;
      }

      if ((objc_msgSend_isEqualToString_(bundleIdentifier) & 1) == 0)
      {
        if (objc_msgSend_isEqualToString_(bundleIdentifier))
        {
          goto LABEL_4;
        }

        if (objc_msgSend_isEqualToString_(bundleIdentifier))
        {
          v6 = 20;
          goto LABEL_8;
        }

        if (objc_msgSend_isEqualToString_(bundleIdentifier))
        {
          v6 = 100;
          goto LABEL_8;
        }

        if ((objc_msgSend_isEqualToString_(bundleIdentifier) & 1) == 0)
        {
          if (objc_msgSend_isEqualToString_(bundleIdentifier))
          {
            v6 = 100;
          }

          else
          {
            v6 = 0x7FFFFFFFFFFFFFFFLL;
          }

          goto LABEL_8;
        }
      }

      v6 = 10;
      goto LABEL_8;
    }
  }

  v6 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_9:

  return v6;
}

@end