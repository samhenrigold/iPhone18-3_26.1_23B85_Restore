@interface SESKeyACLChainVerifier
+ (id)findDesignatedKey:(void *)key error:;
+ (id)performChainAuthIfNeededForACL:(id)l operation:(id)operation auth:(id)auth seHandle:(id)handle seid:(id)seid error:(id *)error;
- (void)dealloc;
@end

@implementation SESKeyACLChainVerifier

+ (id)performChainAuthIfNeededForACL:(id)l operation:(id)operation auth:(id)auth seHandle:(id)handle seid:(id)seid error:(id *)error
{
  v72 = *MEMORY[0x1E69E9840];
  lCopy = l;
  operationCopy = operation;
  authCopy = auth;
  handleCopy = handle;
  seidCopy = seid;
  v18 = [MEMORY[0x1E69666D0] recordFromData:lCopy];
  propertyList = [v18 propertyList];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [propertyList objectForKeyedSubscript:operationCopy];
    v21 = [v20 objectForKeyedSubscript:@"ckref"];

    if (!v21)
    {
      v24 = SESDefaultLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        base64 = [lCopy base64];
        *buf = 138412546;
        *&buf[4] = operationCopy;
        v70 = 2112;
        v71 = base64;
        _os_log_impl(&dword_1C7B9A000, v24, OS_LOG_TYPE_DEBUG, "Constraints for operation %@ doesn't require ckref in ACL %@", buf, 0x16u);
      }

      v37 = 0;
      goto LABEL_41;
    }

    v68 = 0;
    v22 = [SESKeyACLChainVerifier findDesignatedKey:v21 error:&v68];
    v23 = v68;
    v24 = v23;
    v65 = v22;
    if (!v22 || v23)
    {
      v42 = SESDefaultLogObject();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [lCopy base64];
        v64 = seidCopy;
        v43 = handleCopy;
        v45 = v44 = authCopy;
        *buf = 138412290;
        *&buf[4] = v45;
        _os_log_impl(&dword_1C7B9A000, v42, OS_LOG_TYPE_ERROR, "ACL was %@", buf, 0xCu);

        authCopy = v44;
        handleCopy = v43;
        seidCopy = v64;
      }

      if (error)
      {
        *error = SESEnsureError();
      }

      notify_post("com.apple.private.seservice.designatedkeynotfound");
      v37 = 0;
      goto LABEL_40;
    }

    v25 = objc_opt_new();
    v63 = v25;
    if (!v25)
    {
      if (error)
      {
        SESDefaultLogObject();
        v46 = seidCopy;
        v47 = handleCopy;
        v49 = v48 = authCopy;
        *error = SESCreateAndLogError();

        authCopy = v48;
        handleCopy = v47;
        seidCopy = v46;
      }

      v24 = 0;
      v37 = 0;
      goto LABEL_39;
    }

    v26 = v25;
    *buf = 0;
    v27 = SecAccessControlCreate();
    v24 = *buf;
    if (!v27 || *buf)
    {
      if (!error)
      {
        v37 = 0;
LABEL_38:

LABEL_39:
LABEL_40:

LABEL_41:
        goto LABEL_42;
      }

      v62 = v27;
      v61 = SESDefaultLogObject();
      SESCreateAndLogError();
      *error = v37 = 0;
      v50 = v61;
    }

    else
    {
      v58 = v21;
      v59 = authCopy;
      v28 = v27;
      SecAccessControlSetConstraints();
      v67 = 0;
      v62 = v28;
      v29 = [v26 evaluateAccessControl:v28 aksOperation:operationCopy options:0 error:&v67];
      v24 = v67;
      userInfo = [v24 userInfo];
      v31 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696EE38]];

      v60 = v31;
      if ([v24 code]== -1026)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          v66 = 0;
          authCopy = v59;
          v32 = [PTClassicMicro sign:v31 designatedKey:v65 extAuth:v59 seHandle:handleCopy seid:seidCopy error:&v66];
          v33 = v66;
          v34 = v32;
          v24 = v33;
          if (!v34 || v33)
          {
            v21 = v58;
            if (!error)
            {
              v37 = 0;
              v50 = v60;
              goto LABEL_36;
            }

            v57 = v34;
            v53 = SESDefaultLogObject();
            v54 = SESCreateAndLogError();
            v39 = v53;
            v37 = 0;
            *error = v54;
          }

          else
          {
            v57 = v34;
            [v26 setCredential:? type:?];
            v35 = objc_opt_new();
            v36 = v26;
            v37 = v35;
            v38 = v36;
            v39 = v37[1];
            v37[1] = v38;
            v21 = v58;
          }

          v50 = v60;
          v34 = v57;
LABEL_36:

          goto LABEL_37;
        }
      }

      authCopy = v59;
      if (error)
      {
        v51 = SESDefaultLogObject();
        v52 = SESCreateAndLogError();
        v34 = v51;
        v37 = 0;
        *error = v52;
        v50 = v31;
        v21 = v58;
        goto LABEL_36;
      }

      v37 = 0;
      v50 = v31;
      v21 = v58;
    }

LABEL_37:

    v27 = v62;
    goto LABEL_38;
  }

  if (error)
  {
    v40 = SESDefaultLogObject();
    asHexString = [lCopy asHexString];
    *error = SESCreateAndLogError();
  }

  v37 = 0;
LABEL_42:

  return v37;
}

+ (id)findDesignatedKey:(void *)key error:
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_self();
  ses_sha256 = [v4 ses_sha256];
  v6 = [ses_sha256 subdataWithRange:{0, 16}];

  v34 = 0;
  v7 = SESKeyGetDesignatedKeys();
  v8 = 0;
  v9 = v8;
  if (v8)
  {
    if (key)
    {
      v10 = v8;
      v11 = 0;
      *key = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __50__SESKeyACLChainVerifier_findDesignatedKey_error___block_invoke;
    v32[3] = &unk_1E82D1018;
    v12 = v6;
    v33 = v12;
    v11 = [v7 find:v32];
    if (!v11)
    {
      v23 = v12;
      v24 = v7;
      keyCopy = key;
      v26 = v6;
      v27 = v4;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = v7;
      v14 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v29;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v29 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v28 + 1) + 8 * i);
            v19 = SESDefaultLogObject();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v36 = v18;
              _os_log_impl(&dword_1C7B9A000, v19, OS_LOG_TYPE_ERROR, "   eligible key %@", buf, 0xCu);
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
        }

        while (v15);
      }

      v6 = v26;
      v4 = v27;
      v7 = v24;
      if (keyCopy)
      {
        v20 = SESDefaultLogObject();
        asHexString = [v23 asHexString];
        *keyCopy = SESCreateAndLogError();
      }
    }
  }

  return v11;
}

uint64_t __50__SESKeyACLChainVerifier_findDesignatedKey_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 keyIdentifier];
  v4 = [v3 isEqualToData:*(a1 + 32)];

  return v4;
}

- (void)dealloc
{
  [(LAContext *)self->_laContext invalidate];
  v3.receiver = self;
  v3.super_class = SESKeyACLChainVerifier;
  [(SESKeyACLChainVerifier *)&v3 dealloc];
}

@end