@interface NSString(AAMessage)
+ (id)aa_handleForIDSDestination:()AAMessage;
- (id)_phoneNumberDetector;
- (uint64_t)aa_appearsToBePhoneNumber;
- (void)aa_appearsToBeEmail;
@end

@implementation NSString(AAMessage)

- (void)aa_appearsToBeEmail
{
  result = [self length];
  if (result)
  {

    return [self _appearsToBeEmail];
  }

  return result;
}

- (id)_phoneNumberDetector
{
  if (_phoneNumberDetector_onceToken != -1)
  {
    [NSString(AAMessage) _phoneNumberDetector];
  }

  v2 = _phoneNumberDetector;

  return v2;
}

- (uint64_t)aa_appearsToBePhoneNumber
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [self length];
  if (v2)
  {
    _phoneNumberDetector = [self _phoneNumberDetector];
    v4 = [_phoneNumberDetector matchesInString:self options:0 range:{0, v2}];

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = v4;
    v2 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v2)
    {
      v6 = *v10;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v9 + 1) + 8 * i) resultType] == 2048)
          {
            v2 = 1;
            goto LABEL_12;
          }
        }

        v2 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v2;
}

+ (id)aa_handleForIDSDestination:()AAMessage
{
  v3 = IDSCopyRawAddressForDestination();

  return v3;
}

@end