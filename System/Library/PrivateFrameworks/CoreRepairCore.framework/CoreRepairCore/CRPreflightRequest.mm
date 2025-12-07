@interface CRPreflightRequest
+ (id)request;
- (CRPreflightRequest)init;
- (id)description;
- (id)payload;
@end

@implementation CRPreflightRequest

- (CRPreflightRequest)init
{
  v3.receiver = self;
  v3.super_class = CRPreflightRequest;
  return [(CRPreflightRequest *)&v3 init];
}

+ (id)request
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (id)payload
{
  v80 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  requestID = [(CRPreflightRequest *)self requestID];

  if (requestID)
  {
    requestID2 = [(CRPreflightRequest *)self requestID];
    objc_msgSend_setObject_forKeyedSubscript_(v3);
  }

  bikCertificate = [(CRPreflightRequest *)self bikCertificate];

  if (bikCertificate)
  {
    bikCertificate2 = [(CRPreflightRequest *)self bikCertificate];
    objc_msgSend_setObject_forKeyedSubscript_(v3);
  }

  sessionID = [(CRPreflightRequest *)self sessionID];

  if (sessionID)
  {
    sessionID2 = [(CRPreflightRequest *)self sessionID];
    objc_msgSend_setObject_forKeyedSubscript_(v3);
  }

  components = [(CRPreflightRequest *)self components];

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (components)
  {
    v56 = v3;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = [(CRPreflightRequest *)self components];
    v12 = [obj countByEnumeratingWithState:&v73 objects:v79 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v74;
      v58 = v11;
      selfCopy = self;
      v57 = *v74;
      do
      {
        v15 = 0;
        v60 = v13;
        do
        {
          if (*v74 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v73 + 1) + 8 * v15);
          type = [v16 type];
          if (type)
          {
            v18 = type;
            identifier = [v16 identifier];

            if (identifier)
            {
              v62 = v15;
              v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
              type2 = [v16 type];
              objc_msgSend_setObject_forKeyedSubscript_(v20);

              identifier2 = [v16 identifier];
              objc_msgSend_setObject_forKeyedSubscript_(v20);

              asid = [v16 asid];

              if (asid)
              {
                asid2 = [v16 asid];
                objc_msgSend_setObject_forKeyedSubscript_(v21);
              }

              v63 = v21;
              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              componentResponses = [(CRPreflightRequest *)self componentResponses];
              v27 = [componentResponses countByEnumeratingWithState:&v69 objects:v78 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v70;
                do
                {
                  for (i = 0; i != v28; ++i)
                  {
                    if (*v70 != v29)
                    {
                      objc_enumerationMutation(componentResponses);
                    }

                    v31 = *(*(&v69 + 1) + 8 * i);
                    v32 = [v31 objectForKeyedSubscript:@"key"];
                    v33 = [v31 objectForKeyedSubscript:@"signature"];
                    v34 = [v31 objectForKeyedSubscript:@"deviceNonce"];
                    if (v32)
                    {
                      v35 = v33 == 0;
                    }

                    else
                    {
                      v35 = 1;
                    }

                    if (!v35)
                    {
                      v36 = [v20 objectForKeyedSubscript:@"Type"];
                      v37 = [v36 isEqual:v32];

                      if (v37)
                      {
                        objc_msgSend_setObject_forKeyedSubscript_(v20);
                        if (v34)
                        {
                          objc_msgSend_setObject_forKeyedSubscript_(v63);
                        }
                      }
                    }
                  }

                  v28 = [componentResponses countByEnumeratingWithState:&v69 objects:v78 count:16];
                }

                while (v28);
              }

              v67 = 0u;
              v68 = 0u;
              v65 = 0u;
              v66 = 0u;
              self = selfCopy;
              activationResponses = [(CRPreflightRequest *)selfCopy activationResponses];
              v39 = [activationResponses countByEnumeratingWithState:&v65 objects:v77 count:16];
              if (v39)
              {
                v40 = v39;
                v41 = *v66;
                do
                {
                  for (j = 0; j != v40; ++j)
                  {
                    if (*v66 != v41)
                    {
                      objc_enumerationMutation(activationResponses);
                    }

                    v43 = *(*(&v65 + 1) + 8 * j);
                    v44 = [v43 objectForKeyedSubscript:@"key"];
                    v45 = [v43 objectForKeyedSubscript:@"activationToken"];
                    v46 = v45;
                    if (v44)
                    {
                      v47 = v45 == 0;
                    }

                    else
                    {
                      v47 = 1;
                    }

                    if (!v47)
                    {
                      v48 = [v20 objectForKeyedSubscript:@"Type"];
                      v49 = [v48 isEqual:v44];

                      if (v49)
                      {
                        objc_msgSend_setObject_forKeyedSubscript_(v63);
                      }
                    }
                  }

                  v40 = [activationResponses countByEnumeratingWithState:&v65 objects:v77 count:16];
                }

                while (v40);
              }

              if ([v63 count])
              {
                objc_msgSend_setObject_forKeyedSubscript_(v20);
              }

              v11 = v58;
              [v58 addObject:v20];

              v13 = v60;
              v14 = v57;
              v15 = v62;
            }
          }

          ++v15;
        }

        while (v15 != v13);
        v13 = [obj countByEnumeratingWithState:&v73 objects:v79 count:16];
      }

      while (v13);
    }

    v3 = v56;
    objc_msgSend_setObject_forKeyedSubscript_(v56);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3);
  }

  v64 = 0;
  v50 = v3;
  v51 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:100 options:0 error:&v64];
  v52 = v64;
  if (v52)
  {
    v53 = handleForCategory(0);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      [(CRPreflightRequest *)v52 payload];
    }

    v54 = 0;
  }

  else
  {
    v54 = v51;
  }

  return v54;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestID = [(CRPreflightRequest *)self requestID];
  sessionID = [(CRPreflightRequest *)self sessionID];
  bikCertificate = [(CRPreflightRequest *)self bikCertificate];
  components = [(CRPreflightRequest *)self components];
  componentResponses = [(CRPreflightRequest *)self componentResponses];
  activationResponses = [(CRPreflightRequest *)self activationResponses];
  signatureChallenge = [(CRPreflightRequest *)self signatureChallenge];
  v13 = [v3 stringWithFormat:@"<%@: RequestID = %@ SessionID = %@ bikCertificate = %@ components = %@ componentResponses = %@ activationResponses = %@, signatureChallenge = %@>", v5, requestID, sessionID, bikCertificate, components, componentResponses, activationResponses, signatureChallenge];

  return v13;
}

@end