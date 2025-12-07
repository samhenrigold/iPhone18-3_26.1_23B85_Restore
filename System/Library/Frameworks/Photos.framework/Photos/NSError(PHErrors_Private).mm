@interface NSError(PHErrors_Private)
+ (id)_ph_genericErrorWithUnderlyingError:()PHErrors_Private localizedDescription:;
+ (id)ph_errorWithCode:()PHErrors_Private localizedDescription:;
+ (id)ph_errorWithDomain:()PHErrors_Private code:userInfo:;
+ (id)ph_genericEntitlementError;
+ (id)ph_genericErrorWithLocalizedDescription:()PHErrors_Private;
+ (id)ph_genericErrorWithUnderlyingError:()PHErrors_Private localizedDescription:;
@end

@implementation NSError(PHErrors_Private)

+ (id)ph_genericEntitlementError
{
  if (ph_genericEntitlementError_onceToken != -1)
  {
    dispatch_once(&ph_genericEntitlementError_onceToken, &__block_literal_global_45120);
  }

  v1 = ph_genericEntitlementError_s_error;

  return v1;
}

+ (id)ph_genericErrorWithUnderlyingError:()PHErrors_Private localizedDescription:
{
  va_start(va, a8);
  v10 = *MEMORY[0x1E695E480];
  v11 = a3;
  v12 = CFStringCreateWithFormatAndArguments(v10, 0, a4, va);
  v13 = [self _ph_genericErrorWithUnderlyingError:v11 localizedDescription:v12];

  return v13;
}

+ (id)ph_genericErrorWithLocalizedDescription:()PHErrors_Private
{
  va_start(va, a8);
  v9 = CFStringCreateWithFormatAndArguments(*MEMORY[0x1E695E480], 0, a3, va);
  v10 = [self _ph_genericErrorWithUnderlyingError:0 localizedDescription:v9];

  return v10;
}

+ (id)ph_errorWithCode:()PHErrors_Private localizedDescription:
{
  va_start(va, format);
  v6 = CFStringCreateWithFormatAndArguments(*MEMORY[0x1E695E480], 0, format, va);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696A578]];
  v8 = [self ph_errorWithDomain:@"PHPhotosErrorDomain" code:a3 userInfo:v7];

  return v8;
}

+ (id)_ph_genericErrorWithUnderlyingError:()PHErrors_Private localizedDescription:
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696AA08]];

  [v9 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A578]];
  v10 = [self ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v9];

  return v10;
}

+ (id)ph_errorWithDomain:()PHErrors_Private code:userInfo:
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = *MEMORY[0x1E696A250];
  v11 = [(__CFString *)v8 isEqualToString:*MEMORY[0x1E696A250]];
  if (a4 == 3072 && v11)
  {

    v8 = @"PHPhotosErrorDomain";
  }

  if (PHErrorAllowsInternalErrors(v11, v12))
  {
    selfCopy4 = self;
    v14 = v8;
    v15 = a4;
LABEL_6:
    v16 = v9;
LABEL_43:
    v32 = [selfCopy4 errorWithDomain:v14 code:v15 userInfo:v16];
    goto LABEL_44;
  }

  if (!dyld_program_sdk_at_least())
  {
    goto LABEL_40;
  }

  v17 = v8;
  if ([(__CFString *)v17 isEqualToString:@"PHPhotosErrorDomain"])
  {
    if (a4 > 3168)
    {
      if (((a4 - 3300) > 0xB || ((1 << (a4 + 28)) & 0xCEF) == 0) && ((a4 - 3169) > 0x29 || ((1 << (a4 - 97)) & 0x20300000001) == 0) && a4 != 5423)
      {
        goto LABEL_39;
      }
    }

    else if (((a4 - 3105) > 0x3B || ((1 << (a4 - 33)) & 0x800006000000201) == 0) && a4 != -1 && a4 != 3072)
    {
      goto LABEL_39;
    }

    v18 = v9;
    if ([v18 count])
    {
      v41 = v17;
      selfCopy2 = self;
      v43 = v9;
      v44 = v8;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v40 = v18;
      v20 = v18;
      v21 = [v20 countByEnumeratingWithState:&v45 objects:buf count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v46;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v46 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = MEMORY[0x1E695DFD8];
            v26 = *(*(&v45 + 1) + 8 * i);
            v27 = [[v25 alloc] initWithObjects:{@"_PHResourceUrlsErrorKey", 0}];
            v28 = [v27 containsObject:v26];

            if (v28)
            {
              v29 = [v20 objectForKeyedSubscript:v26];
              [dictionary setObject:v29 forKeyedSubscript:v26];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v45 objects:buf count:16];
        }

        while (v22);
      }

      if ([dictionary count])
      {
        v30 = dictionary;
      }

      else
      {
        v30 = 0;
      }

      v31 = v30;

      v9 = v43;
      v8 = v44;
      self = selfCopy2;
      v18 = v40;
      v17 = v41;
    }

    else
    {
      v31 = v18;
    }

    v32 = [self errorWithDomain:v17 code:a4 userInfo:v31];

    goto LABEL_44;
  }

  if (([(__CFString *)v17 isEqualToString:*MEMORY[0x1E696A978]]& 1) != 0)
  {

    if (a4 == -1009)
    {
      selfCopy4 = self;
      v14 = v17;
      v15 = -1009;
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_39:

LABEL_40:
  v33 = *MEMORY[0x1E6994990];
  v34 = [(__CFString *)v8 isEqualToString:*MEMORY[0x1E6994990]];
  if ((a4 - 1005) <= 1 && v34 || (v36 = [(__CFString *)v8 isEqualToString:v33], (a4 - 80) <= 2) && v36 && (dyld_program_sdk_at_least() & 1) == 0)
  {
    selfCopy4 = self;
    v14 = v8;
    v15 = a4;
    v16 = 0;
    goto LABEL_43;
  }

  v37 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A578]];
  if ([v37 length])
  {
    v38 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v50 = v37;
      _os_log_impl(&dword_19C86F000, v38, OS_LOG_TYPE_ERROR, "Sanitized PhotoKit Error: %@", buf, 0xCu);
    }
  }

  if (a4 == 3072)
  {
    v39 = 3072;
  }

  else
  {
    v39 = -1;
  }

  v32 = [self errorWithDomain:v10 code:v39 userInfo:0];

LABEL_44:

  return v32;
}

@end