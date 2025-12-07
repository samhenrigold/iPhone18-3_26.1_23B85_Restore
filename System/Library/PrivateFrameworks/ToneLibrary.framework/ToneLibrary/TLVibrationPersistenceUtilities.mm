@interface TLVibrationPersistenceUtilities
+ (BOOL)_objectIsValidUserGeneratedVibrationPattern:(id)pattern error:(id *)error;
+ (BOOL)_validateObjectWithError:(id *)error validationBlock:(id)block;
+ (BOOL)objectIsValidUserGeneratedVibrationPatternsDictionary:(id)dictionary error:(id *)error;
+ (NSURL)userGeneratedVibrationStoreFileURL;
@end

@implementation TLVibrationPersistenceUtilities

+ (BOOL)_validateObjectWithError:(id *)error validationBlock:(id)block
{
  v16 = 0;
  v17 = 0;
  v15 = 0;
  (*(block + 2))(block, &v17, &v16, &v15);
  v5 = v17;
  v6 = v16;
  v7 = v15;
  v8 = v7;
  if (!v5)
  {
    if (!(v6 | v7))
    {
      v10 = 1;
      goto LABEL_9;
    }

    if (error)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *error = [v11 tl_errorWithDomain:@"TLServiceValidationErrorDomain" description:{@"Unexpected type for %@: %@ (%@)", v8, v13, v6}];
    }

    goto LABEL_7;
  }

  if (!error)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_9;
  }

  v9 = v5;
  v10 = 0;
  *error = v5;
LABEL_9:

  return v10;
}

+ (BOOL)_objectIsValidUserGeneratedVibrationPattern:(id)pattern error:(id *)error
{
  patternCopy = pattern;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke;
  v9[3] = &unk_1E8578EB0;
  v10 = patternCopy;
  v7 = patternCopy;
  LOBYTE(error) = [self _validateObjectWithError:error validationBlock:v9];

  return error;
}

void __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke(uint64_t a1, void *a2, void *a3, __CFString **a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a2 && a3 && a4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v8 = *(a1 + 32);
      v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v31;
        while (2)
        {
          v12 = 0;
          do
          {
            if (*v31 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v30 + 1) + 8 * v12);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v27 = v13;
              *a3 = v13;
              v28 = @"key of user generated vibration pattern wrapper";
              goto LABEL_29;
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v8 = [*(a1 + 32) objectForKey:@"Name"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [*(a1 + 32) objectForKey:@"Pattern"];
        if (![TLVibrationPattern isValidVibrationPatternPropertyListRepresentation:v14])
        {
          *a2 = [MEMORY[0x1E696ABC0] tl_errorWithDomain:@"TLServiceValidationErrorDomain" description:{@"Invalid vibration pattern: %@", *(a1 + 32)}];
        }
      }

      else
      {
        v29 = v8;
        *a3 = v8;
        v28 = @"name of user generated vibration pattern";
LABEL_29:
        *a4 = v28;
      }
    }

    else
    {
      *a3 = *(a1 + 32);
      *a4 = @"user generated vibration pattern wrapper";
    }
  }

  else
  {
    v15 = TLLogGeneral(a1, a2);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);

    if (v16)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Vibrations/TLVibrationPersistenceUtilities.m"];
      v21 = TLLogGeneral(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v19 lastPathComponent];
        v23 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 136381443;
        v36 = "+[TLVibrationPersistenceUtilities _objectIsValidUserGeneratedVibrationPattern:error:]_block_invoke";
        v37 = 2113;
        v38 = v22;
        v39 = 2049;
        v40 = 71;
        v41 = 2113;
        v42 = v23;
        _os_log_impl(&dword_1D9356000, v21, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
      }
    }

    else
    {
      v19 = TLLogGeneral(v17, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
      }
    }

    v26 = TLLogGeneral(v24, v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_2();
    }
  }
}

+ (BOOL)objectIsValidUserGeneratedVibrationPatternsDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __95__TLVibrationPersistenceUtilities_objectIsValidUserGeneratedVibrationPatternsDictionary_error___block_invoke;
  v9[3] = &unk_1E8578ED8;
  v10 = dictionaryCopy;
  selfCopy = self;
  v7 = dictionaryCopy;
  LOBYTE(error) = [self _validateObjectWithError:error validationBlock:v9];

  return error;
}

void __95__TLVibrationPersistenceUtilities_objectIsValidUserGeneratedVibrationPatternsDictionary_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a2 || !a3 || !a4)
  {
    v17 = TLLogGeneral(a1, a2);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);

    if (v18)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Vibrations/TLVibrationPersistenceUtilities.m"];
      v23 = TLLogGeneral(v21, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v21 lastPathComponent];
        v25 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 136381443;
        v39 = "+[TLVibrationPersistenceUtilities objectIsValidUserGeneratedVibrationPatternsDictionary:error:]_block_invoke";
        v40 = 2113;
        v41 = v24;
        v42 = 2049;
        v43 = 109;
        v44 = 2113;
        v45 = v25;
        _os_log_impl(&dword_1D9356000, v23, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
      }
    }

    else
    {
      v21 = TLLogGeneral(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
      }
    }

    v28 = TLLogGeneral(v26, v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_2();
    }

    return;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *a3 = *(a1 + 32);
    *a4 = @"root object";
    return;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = *(a1 + 32);
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v9)
  {
    goto LABEL_31;
  }

  v10 = v9;
  v31 = a2;
  v11 = *v34;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v34 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v33 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29 = v13;
        *a3 = v13;
        *a4 = @"key object";
        goto LABEL_31;
      }

      if (![v13 hasPrefix:@"usergeneratedvibration:"])
      {
        v16 = [MEMORY[0x1E696ABC0] tl_errorWithDomain:@"TLServiceValidationErrorDomain" description:{@"Invalid key object: %@. All key objects need to start with %@", v13, @"usergeneratedvibration:"}];

        if (!v16)
        {
          return;
        }

        goto LABEL_30;
      }

      v14 = *(a1 + 40);
      v15 = [*(a1 + 32) objectForKey:v13];
      v32 = 0;
      [v14 _objectIsValidUserGeneratedVibrationPattern:v15 error:&v32];
      v16 = v32;

      if (v16)
      {

LABEL_30:
        v30 = v16;
        *v31 = v16;
        v8 = v16;
        goto LABEL_31;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_31:
}

+ (NSURL)userGeneratedVibrationStoreFileURL
{
  v2 = CPSharedResourcesDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Media/Vibrations/UserGeneratedVibrationPatterns.plist"];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end