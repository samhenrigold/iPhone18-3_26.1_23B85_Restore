@interface _PASSecureCodingHelper
+ (id)robustDecodeObjectOfClass:(Class)class forKey:(id)key withCoder:(id)coder expectNonNull:(BOOL)null errorDomain:(id)domain errorCode:(int64_t)code logHandle:(id)handle;
+ (id)robustDecodeObjectOfClasses:(id)classes forKey:(id)key withCoder:(id)coder expectNonNull:(BOOL)null errorDomain:(id)domain errorCode:(int64_t)code logHandle:(id)handle;
@end

@implementation _PASSecureCodingHelper

+ (id)robustDecodeObjectOfClass:(Class)class forKey:(id)key withCoder:(id)coder expectNonNull:(BOOL)null errorDomain:(id)domain errorCode:(int64_t)code logHandle:(id)handle
{
  nullCopy = null;
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  handleCopy = handle;
  v19 = objc_autoreleasePoolPush();
  v20 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{class, 0}];
  objc_autoreleasePoolPop(v19);
  v21 = [self robustDecodeObjectOfClasses:v20 forKey:keyCopy withCoder:coderCopy expectNonNull:nullCopy errorDomain:domainCopy errorCode:code logHandle:handleCopy];

  return v21;
}

+ (id)robustDecodeObjectOfClasses:(id)classes forKey:(id)key withCoder:(id)coder expectNonNull:(BOOL)null errorDomain:(id)domain errorCode:(int64_t)code logHandle:(id)handle
{
  nullCopy = null;
  v65 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  handleCopy = handle;
  v19 = objc_autoreleasePoolPush();
  if (!handleCopy)
  {
    handleCopy = MEMORY[0x1E69E9C10];
    v20 = MEMORY[0x1E69E9C10];
  }

  v21 = [coderCopy decodeObjectOfClasses:classesCopy forKey:keyCopy];
  if (v21)
  {
    codeCopy = code;
    v48 = v19;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v22 = classesCopy;
    v23 = [v22 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v51;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v51 != v25)
          {
            objc_enumerationMutation(v22);
          }

          if (objc_opt_isKindOfClass())
          {
            v31 = v21;

            goto LABEL_16;
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v50 objects:v56 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v27 = objc_alloc(MEMORY[0x1E696ABC0]);
    v54 = *MEMORY[0x1E696A578];
    keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"key %@ maps to unexpected class", keyCopy];
    v55 = keyCopy;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v30 = [v27 initWithDomain:domainCopy code:codeCopy userInfo:v29];
    [coderCopy failWithError:v30];

    if (os_log_type_enabled(handleCopy, OS_LOG_TYPE_ERROR))
    {
      v43 = handleCopy;
      error = [coderCopy error];
      *buf = 138412546;
      v62 = keyCopy;
      v63 = 2112;
      v64 = error;
      _os_log_error_impl(&dword_1A7F47000, v43, OS_LOG_TYPE_ERROR, "error decoding for key %@ - %@", buf, 0x16u);
    }

    v31 = 0;
LABEL_16:
    v19 = v48;
  }

  else
  {
    error2 = [coderCopy error];

    if (error2)
    {
      if (os_log_type_enabled(handleCopy, OS_LOG_TYPE_ERROR))
      {
        v33 = handleCopy;
        error3 = [coderCopy error];
        *buf = 138412546;
        v62 = keyCopy;
        v63 = 2112;
        v64 = error3;
        _os_log_error_impl(&dword_1A7F47000, v33, OS_LOG_TYPE_ERROR, "error decoding for key %@ - %@", buf, 0x16u);
      }
    }

    else if (nullCopy)
    {
      v35 = [coderCopy containsValueForKey:keyCopy];
      v49 = objc_alloc(MEMORY[0x1E696ABC0]);
      if (v35)
      {
        v59 = *MEMORY[0x1E696A578];
        keyCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"archive contains illegal nil value for key %@", keyCopy];
        v60 = keyCopy2;
        v37 = MEMORY[0x1E695DF20];
        v38 = &v60;
        v39 = &v59;
      }

      else
      {
        v57 = *MEMORY[0x1E696A578];
        keyCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"key %@ not present", keyCopy];
        v58 = keyCopy2;
        v37 = MEMORY[0x1E695DF20];
        v38 = &v58;
        v39 = &v57;
      }

      v40 = [v37 dictionaryWithObjects:v38 forKeys:v39 count:1];
      v41 = [v49 initWithDomain:domainCopy code:code userInfo:v40];

      [coderCopy failWithError:v41];
      if (os_log_type_enabled(handleCopy, OS_LOG_TYPE_ERROR))
      {
        v45 = handleCopy;
        error4 = [coderCopy error];
        *buf = 138412546;
        v62 = keyCopy;
        v63 = 2112;
        v64 = error4;
        _os_log_error_impl(&dword_1A7F47000, v45, OS_LOG_TYPE_ERROR, "error decoding for key %@ - %@", buf, 0x16u);
      }
    }

    v31 = 0;
  }

  objc_autoreleasePoolPop(v19);

  return v31;
}

@end