@interface NSError(AAAFoundation)
- (BOOL)isRecoverableError;
@end

@implementation NSError(AAAFoundation)

- (BOOL)isRecoverableError
{
  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x1E696A978]];

  result = 1;
  if (!v3 || [self code] != -997 && objc_msgSend(self, "code") != -1005 && objc_msgSend(self, "code") != -1001 && objc_msgSend(self, "code") != -1009)
  {
    domain2 = [self domain];
    v5 = [domain2 isEqualToString:*MEMORY[0x1E696A250]];

    if (!v5 || [self code] != 4099 && objc_msgSend(self, "code") != 4097)
    {
      domain3 = [self domain];
      v7 = [domain3 isEqualToString:@"CKErrorDomain"];

      if (!v7 || [self code] != 3 && objc_msgSend(self, "code") != 4)
      {
        return 0;
      }
    }
  }

  return result;
}

@end