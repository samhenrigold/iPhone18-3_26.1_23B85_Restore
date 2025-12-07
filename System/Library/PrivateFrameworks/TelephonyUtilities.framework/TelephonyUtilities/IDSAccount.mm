@interface IDSAccount
- (NSString)csd_ISOCountryCode;
@end

@implementation IDSAccount

- (NSString)csd_ISOCountryCode
{
  if ([(IDSAccount *)self accountType])
  {
    v3 = 0;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    v4 = [(IDSAccount *)self aliasStrings:0];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v3 = 0;
      v7 = *v14;
LABEL_5:
      v8 = 0;
      v9 = v3;
      while (1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v3 = IMCountryCodeForNumber();

        if ([v3 length])
        {
          break;
        }

        ++v8;
        v9 = v3;
        if (v6 == v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v6)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    else
    {
      v3 = 0;
    }
  }

  if (![v3 length])
  {
    regionBasePhoneNumber = [(IDSAccount *)self regionBasePhoneNumber];
    if (regionBasePhoneNumber)
    {
      v11 = IMCountryCodeForNumber();

      v3 = v11;
    }
  }

  return v3;
}

@end