@interface SHError
+ (BOOL)annotateClientError:(id *)error code:(int64_t)code underlyingError:(id)underlyingError keyOverrides:(id)overrides;
+ (BOOL)remapErrorToClientErrorPointer:(id *)pointer;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error keyOverrides:(id)overrides;
+ (id)messageForCode:(int64_t)code;
+ (id)normalizedError:(id)error;
+ (id)normalizedUserInfo:(id)info;
+ (id)privateErrorWithCode:(int64_t)code underlyingError:(id)error;
+ (id)remapErrorToClientError:(id)error;
@end

@implementation SHError

+ (id)privateErrorWithCode:(int64_t)code underlyingError:(id)error
{
  v5 = MEMORY[0x277CBEB38];
  errorCopy = error;
  dictionary = [v5 dictionary];
  [dictionary setValue:errorCopy forKey:*MEMORY[0x277CCA7E8]];

  if (code == 203)
  {
    v8 = *MEMORY[0x277CCA068];
    [dictionary setValue:@"The match attempt was cancelled" forKey:*MEMORY[0x277CCA068]];
  }

  else
  {
    if (code != 204)
    {
      goto LABEL_6;
    }

    v8 = *MEMORY[0x277CCA068];
  }

  [dictionary setValue:@"Matching cannot take place until a customer has acknowledged the privacy disclosure" forKey:v8];
LABEL_6:
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ShazamKit" code:code userInfo:dictionary];

  return v9;
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error keyOverrides:(id)overrides
{
  v8 = MEMORY[0x277CBEB38];
  overridesCopy = overrides;
  errorCopy = error;
  dictionary = [v8 dictionary];
  [dictionary setValue:errorCopy forKey:*MEMORY[0x277CCA7E8]];

  v12 = [self messageForCode:code];
  [dictionary setValue:v12 forKey:*MEMORY[0x277CCA068]];

  [dictionary setValuesForKeysWithDictionary:overridesCopy];
  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ShazamKit" code:code userInfo:dictionary];

  return v13;
}

+ (BOOL)annotateClientError:(id *)error code:(int64_t)code underlyingError:(id)underlyingError keyOverrides:(id)overrides
{
  v7 = [SHError errorWithCode:code underlyingError:underlyingError keyOverrides:overrides];
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  return error != 0;
}

+ (id)messageForCode:(int64_t)code
{
  v3 = @"The supplied audio is not contiguous. Flow contiguous audio.";
  v4 = @"There was an error syncing items to the library.";
  v5 = @"ShazamKit encountered an internal error.";
  v6 = @"Failed to fetch Media Item. Ensure shazamID is valid.";
  if (code != 600)
  {
    v6 = @"The supplied audio is not contiguous. Flow contiguous audio.";
  }

  if (code != 500)
  {
    v5 = v6;
  }

  if (code != 400)
  {
    v4 = v5;
  }

  v7 = @"The Catalog URL is not a file path URL that points to a valid catalog.";
  if (code != 301)
  {
    v7 = @"The supplied audio is not contiguous. Flow contiguous audio.";
  }

  if (code == 300)
  {
    v7 = @"The Custom Catalog is invalid.";
  }

  if (code <= 399)
  {
    v4 = v7;
  }

  v8 = @"The provided signature duration is outside the valid range.";
  v9 = @"The match attempt failed.";
  if (code != 202)
  {
    v9 = @"The supplied audio is not contiguous. Flow contiguous audio.";
  }

  if (code != 201)
  {
    v8 = v9;
  }

  if (code == 200)
  {
    v3 = @"The Signature was invalid (possibly no peaks). Ensure novel audio is playing.";
  }

  if (code == 100)
  {
    v3 = @"The supplied audio format is not supported. Please choose a supported audio format.";
  }

  if (code > 200)
  {
    v3 = v8;
  }

  if (code <= 299)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

+ (id)normalizedError:(id)error
{
  if (error)
  {
    errorCopy = error;
    v4 = objc_opt_class();
    userInfo = [errorCopy userInfo];
    v6 = [v4 normalizedUserInfo:userInfo];

    v7 = MEMORY[0x277CCA9B8];
    domain = [errorCopy domain];
    code = [errorCopy code];

    v10 = [v7 errorWithDomain:domain code:code userInfo:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)normalizedUserInfo:(id)info
{
  v4 = MEMORY[0x277CBEB38];
  infoCopy = info;
  dictionary = [v4 dictionary];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __30__SHError_normalizedUserInfo___block_invoke;
  v13 = &unk_2788F7BE8;
  v14 = dictionary;
  selfCopy = self;
  v7 = dictionary;
  [infoCopy enumerateKeysAndObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __30__SHError_normalizedUserInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![MEMORY[0x277CCAC58] propertyList:v6 isValidForFormat:200])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if ([v5 isEqualToString:*MEMORY[0x277CCA7E8]] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v7 = [objc_opt_class() normalizedError:v6];
      }

      else
      {
        if ([v5 isEqualToString:*MEMORY[0x277CCA578]])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = MEMORY[0x277CBEB18];
            v9 = v6;
            v10 = [v8 arrayWithCapacity:{objc_msgSend(v9, "count")}];
            v13 = MEMORY[0x277D85DD0];
            v14 = 3221225472;
            v15 = __30__SHError_normalizedUserInfo___block_invoke_2;
            v16 = &unk_2788F7BC0;
            v11 = *(a1 + 40);
            v17 = v10;
            v18 = v11;
            v12 = v10;
            [v9 enumerateObjectsUsingBlock:&v13];

            [*(a1 + 32) setObject:v12 forKeyedSubscript:{v5, v13, v14, v15, v16}];
LABEL_12:

            goto LABEL_13;
          }
        }

        v7 = [v6 description];
      }

      v12 = v7;
      [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
      goto LABEL_12;
    }
  }

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
LABEL_13:
}

void __30__SHError_normalizedUserInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [objc_opt_class() normalizedError:v5];
    [v3 addObject:v4];
  }
}

+ (id)remapErrorToClientError:(id)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    if ([errorCopy sh_isPrivacyDisclosureAcknowledgementNeededError] || objc_msgSend(v4, "sh_isMatchAttemptCancelledError"))
    {
      goto LABEL_4;
    }

    if ([v4 sh_hasShazamKitPublicErrorDomain])
    {
      v6 = v4;
      goto LABEL_6;
    }

    if (![v4 sh_isShazamCoreError])
    {
      if ([v4 sh_isMediaLibraryError])
      {
        v5 = 400;
        goto LABEL_5;
      }

LABEL_4:
      v5 = 202;
LABEL_5:
      v6 = [SHError errorWithCode:v5 underlyingError:v4];
LABEL_6:
      v7 = v6;
      goto LABEL_8;
    }

    code = [v4 code];
    v10 = 202;
    if (code == 302)
    {
      v10 = 600;
    }

    if ((code - 400) < 2)
    {
      v10 = 500;
    }

    if ((code - 300) >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 300;
    }

    userInfo = [v4 userInfo];
    v13 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
    v16 = *MEMORY[0x277CCA068];
    v14 = [MEMORY[0x277D54E10] messageForCode:code];
    v17[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [SHError errorWithCode:v11 underlyingError:v13 keyOverrides:v15];
  }

  else
  {
    v7 = 0;
  }

LABEL_8:

  return v7;
}

+ (BOOL)remapErrorToClientErrorPointer:(id *)pointer
{
  if (pointer)
  {
    *pointer = [self remapErrorToClientError:*pointer];
  }

  return 1;
}

@end