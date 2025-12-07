@interface BCInternalAuthenticationRequest
- (BCInternalAuthenticationRequest)initWithCoder:(id)coder;
- (BCInternalAuthenticationRequest)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCInternalAuthenticationRequest

- (BCInternalAuthenticationRequest)initWithDictionary:(id)dictionary
{
  v58 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v54.receiver = self;
  v54.super_class = BCInternalAuthenticationRequest;
  v5 = [(BCInternalAuthenticationRequest *)&v54 init];
  if (v5)
  {
    v6 = LogCategory_Daemon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [dictionaryCopy description];
      *buf = 138412290;
      v57 = v7;
      _os_log_impl(&dword_236EA0000, v6, OS_LOG_TYPE_DEFAULT, "BCInternalAuthenticationRequest: initWithDictionary %@", buf, 0xCu);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"businessIdentifier"];
    null = [MEMORY[0x277CBEB68] null];
    if (v8 == null)
    {
      v10 = 0;
    }

    else
    {
      v10 = [dictionaryCopy objectForKeyedSubscript:@"businessIdentifier"];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"groupIdentifier"];
    null2 = [MEMORY[0x277CBEB68] null];
    if (v11 == null2)
    {
      v13 = 0;
    }

    else
    {
      v13 = [dictionaryCopy objectForKeyedSubscript:@"groupIdentifier"];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"responseEncryptionKey"];
    null3 = [MEMORY[0x277CBEB68] null];
    if (v14 == null3)
    {
      v16 = 0;
    }

    else
    {
      v16 = [dictionaryCopy objectForKeyedSubscript:@"responseEncryptionKey"];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"retrieve"];
    null4 = [MEMORY[0x277CBEB68] null];
    if (v17 == null4)
    {
      v19 = 0;
    }

    else
    {
      v19 = [dictionaryCopy objectForKeyedSubscript:@"retrieve"];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"labels"];
    null5 = [MEMORY[0x277CBEB68] null];
    if (v20 == null5)
    {
      v22 = 0;
    }

    else
    {
      v22 = [dictionaryCopy objectForKeyedSubscript:@"labels"];
    }

    v23 = objc_opt_new();
    if (v10)
    {
      if (v13)
      {
        if (v16)
        {
          if (v19)
          {
            v45 = v19;
            v46 = v16;
            v47 = v13;
            v48 = v10;
            v49 = v5;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v24 = v22;
            v25 = [v24 countByEnumeratingWithState:&v50 objects:v55 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v51;
              do
              {
                for (i = 0; i != v26; ++i)
                {
                  if (*v51 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = *(*(&v50 + 1) + 8 * i);
                  v30 = [v24 objectForKeyedSubscript:v29];
                  if (v30)
                  {
                    v31 = [[BCAuthenticationLabels alloc] initWithDictionary:v30];
                    [(NSDictionary *)v23 setObject:v31 forKeyedSubscript:v29];
                  }
                }

                v26 = [v24 countByEnumeratingWithState:&v50 objects:v55 count:16];
              }

              while (v26);
            }

            v5 = v49;
            businessIdentifier = v49->_businessIdentifier;
            v49->_businessIdentifier = v48;
            v33 = v48;

            groupIdentifier = v49->_groupIdentifier;
            v49->_groupIdentifier = v47;
            v35 = v47;

            responseEncryptionKey = v49->_responseEncryptionKey;
            v49->_responseEncryptionKey = v46;
            v37 = v46;

            retrieve = v49->_retrieve;
            v49->_retrieve = v45;
            v39 = v45;

            labels = v49->_labels;
            v49->_labels = v23;

            goto LABEL_33;
          }

          v42 = LogCategory_Daemon();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v43 = "Unable to create  BCInternalAuthenticationRequest: missing 'retrieve' in payload";
            goto LABEL_42;
          }

LABEL_43:

          v41 = 0;
          goto LABEL_44;
        }

        v42 = LogCategory_Daemon();
        if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        *buf = 0;
        v43 = "Unable to create  BCInternalAuthenticationRequest: missing 'responseEncryptionKey' in payload";
      }

      else
      {
        v42 = LogCategory_Daemon();
        if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        *buf = 0;
        v43 = "Unable to create  BCInternalAuthenticationRequest: missing 'groupIdentifier' in payload";
      }
    }

    else
    {
      v42 = LogCategory_Daemon();
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      *buf = 0;
      v43 = "Unable to create BCInternalAuthenticationRequest: missing 'business identifier' in payload";
    }

LABEL_42:
    _os_log_error_impl(&dword_236EA0000, v42, OS_LOG_TYPE_ERROR, v43, buf, 2u);
    goto LABEL_43;
  }

LABEL_33:
  v41 = v5;
LABEL_44:

  return v41;
}

- (void)encodeWithCoder:(id)coder
{
  businessIdentifier = self->_businessIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:businessIdentifier forKey:@"businessIdentifier"];
  [coderCopy encodeObject:self->_groupIdentifier forKey:@"groupIdentifier"];
  [coderCopy encodeObject:self->_responseEncryptionKey forKey:@"responseEncryptionKey"];
  [coderCopy encodeObject:self->_retrieve forKey:@"retrieve"];
  [coderCopy encodeObject:self->_labels forKey:@"labels"];
}

- (BCInternalAuthenticationRequest)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = BCInternalAuthenticationRequest;
  v5 = [(BCInternalAuthenticationRequest *)&v18 init];
  if (v5)
  {
    v6 = LogCategory_Daemon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = coderCopy;
      _os_log_impl(&dword_236EA0000, v6, OS_LOG_TYPE_DEFAULT, "BCInternalAuthenticationRequest: initWithCoder %@", buf, 0xCu);
    }

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"businessIdentifier"];
    businessIdentifier = v5->_businessIdentifier;
    v5->_businessIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"responseEncryptionKey"];
    responseEncryptionKey = v5->_responseEncryptionKey;
    v5->_responseEncryptionKey = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"retrieve"];
    retrieve = v5->_retrieve;
    v5->_retrieve = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"labels"];
    labels = v5->_labels;
    v5->_labels = v15;
  }

  return v5;
}

- (NSDictionary)dictionaryValue
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_labels;
  v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(NSDictionary *)self->_labels objectForKeyedSubscript:v10, v15];
        dictionaryValue = [v11 dictionaryValue];
        [v4 setObject:dictionaryValue forKeyedSubscript:v10];
      }

      v7 = [(NSDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [v3 setObject:self->_businessIdentifier forKeyedSubscript:@"businessIdentifier"];
  [v3 setObject:self->_groupIdentifier forKeyedSubscript:@"groupIdentifier"];
  [v3 setObject:self->_responseEncryptionKey forKeyedSubscript:@"responseEncryptionKey"];
  [v3 setObject:self->_retrieve forKeyedSubscript:@"retrieve"];
  [v3 setObject:v4 forKeyedSubscript:@"labels"];
  v13 = [v3 copy];

  return v13;
}

@end