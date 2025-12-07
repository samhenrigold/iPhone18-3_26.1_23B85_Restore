@interface IMAccount(CNFRegInternalUtilities)
- (uint64_t)CNFRegIsSignedOut;
- (uint64_t)CNFRegRegisteringLocalPhoneNumberSentinelAlias;
@end

@implementation IMAccount(CNFRegInternalUtilities)

- (uint64_t)CNFRegRegisteringLocalPhoneNumberSentinelAlias
{
  v15 = *MEMORY[0x277D85DE8];
  if (CNFRegSupportsLocalPhoneNumberSentinelAlias() && [self accountType] == 1 && objc_msgSend(self, "registrationStatus") >= 3)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    aliases = [self aliases];
    v3 = [aliases countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v11;
      v7 = *MEMORY[0x277D19478];
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(aliases);
          }

          v5 |= [*(*(&v10 + 1) + 8 * i) isEqualToIgnoringCase:v7];
        }

        v4 = [aliases countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (uint64_t)CNFRegIsSignedOut
{
  if ([self isOperational] & 1) != 0 || (objc_msgSend(self, "canSendMessages"))
  {
    return 0;
  }

  return [self BOOLForKey:@"AccountSignedOut"];
}

@end