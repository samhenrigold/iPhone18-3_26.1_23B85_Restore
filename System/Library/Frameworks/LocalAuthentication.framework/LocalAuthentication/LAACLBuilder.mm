@interface LAACLBuilder
+ (id)customACL:(id)l;
+ (id)denyAllACL;
@end

@implementation LAACLBuilder

+ (id)customACL:(id)l
{
  v68 = *MEMORY[0x1E69E9840];
  lCopy = l;
  error = 0;
  if ([lCopy authType] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __26__LAACLBuilder_customACL___block_invoke;
    v58[3] = &unk_1E77CB998;
    v7 = lCopy;
    v59 = v7;
    v8 = __26__LAACLBuilder_customACL___block_invoke(v58);
    v9 = v8;
    v10 = SecAccessControlCreateWithFlags(0, *MEMORY[0x1E697AC28], v8, &error);
    if (!v10)
    {
      v12 = LA_LOG_1(0);
      v42 = LALogTypeForInternalError();
      if (os_log_type_enabled(v12, v42))
      {
        *buf = 67109378;
        *&buf[4] = v9;
        *&buf[8] = 2114;
        *&buf[10] = error;
        _os_log_impl(&dword_1A784E000, v12, v42, "Could not initialize ACL (flags=%d) (%{public}@)", buf, 0x12u);
      }

      v6 = 0;
      goto LABEL_45;
    }

    v11 = v10;
    v48 = lCopy;
    v12 = objc_opt_new();
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    credentials = [v7 credentials];
    allKeys = [credentials allKeys];

    v15 = [allKeys countByEnumeratingWithState:&v54 objects:v66 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v55;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v55 != v17)
          {
            objc_enumerationMutation(allKeys);
          }

          v19 = *(*(&v54 + 1) + 8 * i);
          credentials2 = [v7 credentials];
          v21 = [credentials2 objectForKeyedSubscript:v19];

          -[NSObject setCredential:type:](v12, "setCredential:type:", v21, [v19 integerValue]);
        }

        v16 = [allKeys countByEnumeratingWithState:&v54 objects:v66 count:16];
      }

      while (v16);
    }

    v64 = &unk_1F1A6FC20;
    v65 = MEMORY[0x1E695E118];
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    obj = error;
    v23 = [v12 evaluateAccessControl:v11 operation:2 options:v22 error:&obj];
    objc_storeStrong(&error, obj);

    v24 = [MEMORY[0x1E69AD210] constraintsFromACL:v11];
    RequirePassword = SecAccessControlGetRequirePassword();
    CFRelease(v11);
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    allKeys2 = [v24 allKeys];
    v26 = [allKeys2 countByEnumeratingWithState:&v49 objects:v63 count:16];
    if (!v26)
    {
LABEL_21:

LABEL_32:
      v34 = LA_LOG_1(v33);
      v41 = LALogTypeForInternalError();
      if (os_log_type_enabled(v34, v41))
      {
        *buf = 138543362;
        *&buf[4] = v24;
        _os_log_impl(&dword_1A784E000, v34, v41, "Could not derive auth constraints (%{public}@)", buf, 0xCu);
      }

      goto LABEL_43;
    }

    v27 = v26;
    v28 = *v50;
LABEL_15:
    v29 = 0;
    while (1)
    {
      if (*v50 != v28)
      {
        objc_enumerationMutation(allKeys2);
      }

      v30 = *(*(&v49 + 1) + 8 * v29);
      v31 = [v24 objectForKeyedSubscript:v30];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      if (v27 == ++v29)
      {
        v27 = [allKeys2 countByEnumeratingWithState:&v49 objects:v63 count:16];
        if (v27)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }
    }

    v34 = [v24 objectForKeyedSubscript:v30];

    if (!v34)
    {
      goto LABEL_32;
    }

    v35 = LA_LOG_1(v33);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [LAACLBuilder customACL:v35];
    }

    v36 = SecAccessControlCreate();
    if (v36)
    {
      v37 = v36;
      v38 = SecAccessControlSetProtection();
      if (v38)
      {
        v61[0] = @"osgn";
        v61[1] = @"od";
        v62[0] = v34;
        v62[1] = v34;
        v61[2] = @"ock";
        v61[3] = @"odel";
        v62[2] = v34;
        v62[3] = MEMORY[0x1E695E118];
        v61[4] = @"oa";
        v62[4] = MEMORY[0x1E695E118];
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:5];
        SecAccessControlSetConstraints();
        if (RequirePassword)
        {
          SecAccessControlSetRequirePassword();
        }

        v39 = [LAACL alloc];
        if (v39)
        {
          *buf = v39;
          *&buf[8] = LAACL;
          v40 = objc_msgSendSuper2(buf, sel_init);
          v6 = v40;
          if (v40)
          {
            *(v40 + 1) = v37;
          }

          goto LABEL_44;
        }

LABEL_43:
        v6 = 0;
LABEL_44:
        lCopy = v48;

LABEL_45:
        v4 = v59;
        goto LABEL_46;
      }

      v43 = LA_LOG_1(v38);
      v44 = LALogTypeForInternalError();
      if (os_log_type_enabled(v43, v44))
      {
        *buf = 138543362;
        *&buf[4] = error;
        v45 = "Could not set ACL protection (%{public}@)";
        goto LABEL_41;
      }
    }

    else
    {
      v43 = LA_LOG_1(0);
      v44 = LALogTypeForInternalError();
      if (os_log_type_enabled(v43, v44))
      {
        *buf = 138543362;
        *&buf[4] = error;
        v45 = "Could not initialize trivial ACL (%{public}@)";
LABEL_41:
        _os_log_impl(&dword_1A784E000, v43, v44, v45, buf, 0xCu);
      }
    }

    goto LABEL_43;
  }

  v4 = LA_LOG_1(0x7FFFFFFFFFFFFFFFLL);
  v5 = LALogTypeForInternalError();
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_1A784E000, v4, v5, "Invalid authType", buf, 2u);
  }

  v6 = 0;
LABEL_46:

  return v6;
}

uint64_t __26__LAACLBuilder_customACL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fallbackAuthType];
  result = [*(a1 + 32) authType];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (result == 2 && [*(a1 + 32) fallbackAuthType] == 16)
    {
      return 1;
    }

    else
    {
      v4 = [*(a1 + 32) authType];
      return v4 | [*(a1 + 32) fallbackAuthType] | 0x4000;
    }
  }

  return result;
}

+ (id)denyAllACL
{
  v2 = [LAACL alloc];
  denyAllACL = [MEMORY[0x1E69AD210] denyAllACL];
  if (v2)
  {
    v4 = denyAllACL;
    v7.receiver = v2;
    v7.super_class = LAACL;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    if (v5)
    {
      v5[1] = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end