@interface NEIKEv2IKESAProposal
+ (NSObject)chooseSAProposalFromLocalProposals:(void *)proposals remoteProposals:(int)remoteProposals preferRemoteProposals:;
- (BOOL)isEqual:(id)equal;
- (NEIKEv2IKESAProposal)init;
- (NSObject)copyFromRemote:(int)remote preferRemoteProposal:;
- (char)softLifetimeSecondsForInitiator:(void *)initiator;
- (id)chosenAdditionalKEMProtocols;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (id)kemProtocol;
- (id)prfProtocol;
- (uint64_t)hasEAPMethods;
- (uint64_t)isAValidResponse;
- (unint64_t)hash;
- (unint64_t)matchesLocalProposal:(int)proposal preferRemoteProposal:;
- (void)setAuthenticationProtocol:(uint64_t)protocol;
- (void)setChosenAdditionalKEMProtocols:(void *)protocols;
@end

@implementation NEIKEv2IKESAProposal

- (id)copyWithZone:(_NSZone *)zone
{
  v84 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  encryptionProtocols = [(NEIKEv2IKESAProposal *)self encryptionProtocols];

  if (encryptionProtocols)
  {
    v6 = objc_alloc(MEMORY[0x1E695DEC8]);
    encryptionProtocols2 = [(NEIKEv2IKESAProposal *)self encryptionProtocols];
    v8 = [v6 initWithArray:encryptionProtocols2 copyItems:1];
    [v4 setEncryptionProtocols:v8];
  }

  integrityProtocols = [(NEIKEv2IKESAProposal *)self integrityProtocols];

  if (integrityProtocols)
  {
    v10 = objc_alloc(MEMORY[0x1E695DEC8]);
    integrityProtocols2 = [(NEIKEv2IKESAProposal *)self integrityProtocols];
    v12 = [v10 initWithArray:integrityProtocols2 copyItems:1];
    [v4 setIntegrityProtocols:v12];
  }

  prfProtocols = [(NEIKEv2IKESAProposal *)self prfProtocols];

  if (prfProtocols)
  {
    v14 = objc_alloc(MEMORY[0x1E695DEC8]);
    prfProtocols2 = [(NEIKEv2IKESAProposal *)self prfProtocols];
    v16 = [v14 initWithArray:prfProtocols2 copyItems:1];
    [v4 setPrfProtocols:v16];
  }

  kemProtocols = [(NEIKEv2IKESAProposal *)self kemProtocols];

  if (kemProtocols)
  {
    v18 = objc_alloc(MEMORY[0x1E695DEC8]);
    kemProtocols2 = [(NEIKEv2IKESAProposal *)self kemProtocols];
    v20 = [v18 initWithArray:kemProtocols2 copyItems:1];
    [v4 setKemProtocols:v20];
  }

  if (self && ([(NEIKEv2IKESAProposal *)self additionalKEMProtocols], v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
  {
    v77 = v4;
    v22 = objc_alloc(MEMORY[0x1E695DF90]);
    additionalKEMProtocols = [(NEIKEv2IKESAProposal *)self additionalKEMProtocols];
    v24 = [v22 initWithCapacity:{objc_msgSend(additionalKEMProtocols, "count")}];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = [(NEIKEv2IKESAProposal *)self additionalKEMProtocols];
    v25 = [obj countByEnumeratingWithState:&v79 objects:v83 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v80;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v80 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v79 + 1) + 8 * i);
          v30 = objc_alloc(MEMORY[0x1E695DEC8]);
          [(NEIKEv2IKESAProposal *)self additionalKEMProtocols];
          v32 = v31 = self;
          v33 = [v32 objectForKeyedSubscript:v29];
          v34 = [v30 initWithArray:v33 copyItems:1];
          [v24 setObject:v34 forKeyedSubscript:v29];

          self = v31;
        }

        v26 = [obj countByEnumeratingWithState:&v79 objects:v83 count:16];
      }

      while (v26);
    }

    v35 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v24];
    v4 = v77;
  }

  else
  {
    v35 = 0;
  }

  [v4 setAdditionalKEMProtocols:{v35, v77}];

  eapProtocols = [(NEIKEv2IKESAProposal *)self eapProtocols];

  if (eapProtocols)
  {
    v38 = objc_alloc(MEMORY[0x1E695DEC8]);
    eapProtocols2 = [(NEIKEv2IKESAProposal *)self eapProtocols];
    v40 = [v38 initWithArray:eapProtocols2 copyItems:1];
    [v4 setEapProtocols:v40];
  }

  if (self)
  {
    if (objc_getProperty(self, v37, 80, 1))
    {
      v41 = objc_alloc(MEMORY[0x1E695DFD8]);
      v44 = [v41 initWithSet:{objc_getProperty(self, v42, 80, 1)}];
      if (v4)
      {
        objc_setProperty_atomic(v4, v43, v44, 80);
      }
    }

    [v4 setLifetimeSeconds:{-[NEIKEv2IKESAProposal lifetimeSeconds](self, "lifetimeSeconds")}];
    proposalNumber = self->_proposalNumber;
    if (v4)
    {
      goto LABEL_28;
    }
  }

  else
  {
    [v4 setLifetimeSeconds:{objc_msgSend(0, "lifetimeSeconds")}];
    proposalNumber = 0;
    if (v4)
    {
LABEL_28:
      v4[8] = proposalNumber;
    }
  }

  if (self)
  {
    Property = objc_getProperty(self, v45, 88, 1);
  }

  else
  {
    Property = 0;
  }

  v49 = [Property copy];
  if (v4)
  {
    objc_setProperty_atomic(v4, v48, v49, 88);
  }

  if (self)
  {
    v51 = objc_getProperty(self, v50, 96, 1);
  }

  else
  {
    v51 = 0;
  }

  v53 = [v51 copy];
  if (v4)
  {
    objc_setProperty_atomic(v4, v52, v53, 96);
  }

  if (self)
  {
    v55 = objc_getProperty(self, v54, 104, 1);
  }

  else
  {
    v55 = 0;
  }

  v57 = [v55 copy];
  if (v4)
  {
    objc_setProperty_atomic(v4, v56, v57, 104);
  }

  if (self)
  {
    v59 = objc_getProperty(self, v58, 112, 1);
  }

  else
  {
    v59 = 0;
  }

  v61 = [v59 copy];
  if (v4)
  {
    objc_setProperty_atomic(v4, v60, v61, 112);
  }

  if (self)
  {
    v63 = objc_getProperty(self, v62, 120, 1);
  }

  else
  {
    v63 = 0;
  }

  v65 = [v63 copy];
  if (v4)
  {
    objc_setProperty_atomic(v4, v64, v65, 120);
  }

  if (self)
  {
    v67 = objc_getProperty(self, v66, 128, 1);
  }

  else
  {
    v67 = 0;
  }

  v69 = [v67 copy];
  if (v4)
  {
    objc_setProperty_atomic(v4, v68, v69, 128);
  }

  chosenAdditionalKEMProtocols = [(NEIKEv2IKESAProposal *)self chosenAdditionalKEMProtocols];

  if (chosenAdditionalKEMProtocols)
  {
    v71 = objc_alloc(MEMORY[0x1E695DF20]);
    chosenAdditionalKEMProtocols2 = [(NEIKEv2IKESAProposal *)self chosenAdditionalKEMProtocols];
    v73 = [v71 initWithDictionary:chosenAdditionalKEMProtocols2 copyItems:1];
    [(NEIKEv2IKESAProposal *)v4 setChosenAdditionalKEMProtocols:v73];
  }

  if (self)
  {
    authenticationProtocol = self->_authenticationProtocol;
  }

  else
  {
    authenticationProtocol = 0;
  }

  v75 = [(NEIKEv2AuthenticationProtocol *)authenticationProtocol copy];
  [(NEIKEv2IKESAProposal *)v4 setAuthenticationProtocol:v75];

  return v4;
}

- (id)chosenAdditionalKEMProtocols
{
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v2 = selfCopy[2];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setChosenAdditionalKEMProtocols:(void *)protocols
{
  v2 = a2;
  v24 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (protocols)
  {
    if ([v4 count])
    {
      v18 = v2;
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * i);
            v13 = [v7 objectForKeyedSubscript:v12];
            method = [v13 method];

            if (method)
            {
              [v6 addObject:v12];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v9);
      }

      if ([v6 count])
      {
        v15 = [v6 sortedArrayUsingSelector:sel_compare_];
      }

      else
      {
        v15 = 0;
      }

      v2 = v18;
    }

    else
    {
      v15 = 0;
    }

    protocolsCopy = protocols;
    objc_sync_enter(protocolsCopy);
    objc_storeStrong(protocolsCopy + 2, v2);
    v17 = protocolsCopy[17];
    protocolsCopy[17] = v15;

    objc_sync_exit(protocolsCopy);
  }
}

- (void)setAuthenticationProtocol:(uint64_t)protocol
{
  if (protocol)
  {
    objc_storeStrong((protocol + 144), a2);
  }
}

- (unint64_t)hash
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = 16777619 * ([(NEIKEv2IKESAProposal *)self lifetimeSeconds]^ 0x811C9DC5);
  encryptionProtocols = [(NEIKEv2IKESAProposal *)self encryptionProtocols];
  v5 = 16777619 * ([encryptionProtocols count] ^ v3);

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  encryptionProtocols2 = [(NEIKEv2IKESAProposal *)self encryptionProtocols];
  v7 = [encryptionProtocols2 countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v63;
    do
    {
      v10 = 0;
      do
      {
        if (*v63 != v9)
        {
          objc_enumerationMutation(encryptionProtocols2);
        }

        v5 = 16777619 * (v5 ^ [*(*(&v62 + 1) + 8 * v10++) hash] ^ 0x1000000);
      }

      while (v8 != v10);
      v8 = [encryptionProtocols2 countByEnumeratingWithState:&v62 objects:v70 count:16];
    }

    while (v8);
  }

  integrityProtocols = [(NEIKEv2IKESAProposal *)self integrityProtocols];
  v12 = [integrityProtocols count];

  if (v12)
  {
    integrityProtocols2 = [(NEIKEv2IKESAProposal *)self integrityProtocols];
    v5 = 16777619 * ([integrityProtocols2 count] ^ v5);

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    integrityProtocols3 = [(NEIKEv2IKESAProposal *)self integrityProtocols];
    v15 = [integrityProtocols3 countByEnumeratingWithState:&v58 objects:v69 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v59;
      do
      {
        v18 = 0;
        do
        {
          if (*v59 != v17)
          {
            objc_enumerationMutation(integrityProtocols3);
          }

          v5 = 16777619 * (v5 ^ [*(*(&v58 + 1) + 8 * v18++) hash] ^ 0x3000000);
        }

        while (v16 != v18);
        v16 = [integrityProtocols3 countByEnumeratingWithState:&v58 objects:v69 count:16];
      }

      while (v16);
    }
  }

  prfProtocols = [(NEIKEv2IKESAProposal *)self prfProtocols];
  v20 = 16777619 * ([prfProtocols count] ^ v5);

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  prfProtocols2 = [(NEIKEv2IKESAProposal *)self prfProtocols];
  v22 = [prfProtocols2 countByEnumeratingWithState:&v54 objects:v68 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v55;
    do
    {
      v25 = 0;
      do
      {
        if (*v55 != v24)
        {
          objc_enumerationMutation(prfProtocols2);
        }

        v20 = 16777619 * (v20 ^ [*(*(&v54 + 1) + 8 * v25++) hash] ^ 0x2000000);
      }

      while (v23 != v25);
      v23 = [prfProtocols2 countByEnumeratingWithState:&v54 objects:v68 count:16];
    }

    while (v23);
  }

  kemProtocols = [(NEIKEv2IKESAProposal *)self kemProtocols];
  v27 = 16777619 * ([kemProtocols count] ^ v20);

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  kemProtocols2 = [(NEIKEv2IKESAProposal *)self kemProtocols];
  v29 = [kemProtocols2 countByEnumeratingWithState:&v50 objects:v67 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v51;
    do
    {
      v32 = 0;
      do
      {
        if (*v51 != v31)
        {
          objc_enumerationMutation(kemProtocols2);
        }

        v27 = 16777619 * (v27 ^ [*(*(&v50 + 1) + 8 * v32++) hash] ^ 0x4000000);
      }

      while (v30 != v32);
      v30 = [kemProtocols2 countByEnumeratingWithState:&v50 objects:v67 count:16];
    }

    while (v30);
  }

  additionalKEMProtocols = [(NEIKEv2IKESAProposal *)self additionalKEMProtocols];
  v34 = [additionalKEMProtocols count];

  if (v34)
  {
    for (i = 6; i != 13; ++i)
    {
      additionalKEMProtocols2 = [(NEIKEv2IKESAProposal *)self additionalKEMProtocols];
      v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
      v38 = [additionalKEMProtocols2 objectForKeyedSubscript:v37];

      if ([v38 count])
      {
        v39 = [v38 count];
        v46 = 0u;
        v47 = 0u;
        v27 = 16777619 * (v39 ^ v27);
        v48 = 0u;
        v49 = 0u;
        v40 = v38;
        v41 = [v40 countByEnumeratingWithState:&v46 objects:v66 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v47;
          do
          {
            v44 = 0;
            do
            {
              if (*v47 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v27 = 16777619 * (v27 ^ (i << 24) ^ [*(*(&v46 + 1) + 8 * v44++) hash]);
            }

            while (v42 != v44);
            v42 = [v40 countByEnumeratingWithState:&v46 objects:v66 count:16];
          }

          while (v42);
        }
      }
    }
  }

  return v27;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && [equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    encryptionProtocols = [(NEIKEv2IKESAProposal *)self encryptionProtocols];
    encryptionProtocols2 = [v5 encryptionProtocols];
    v8 = encryptionProtocols2;
    if (encryptionProtocols == encryptionProtocols2)
    {
    }

    else
    {
      encryptionProtocols3 = [(NEIKEv2IKESAProposal *)self encryptionProtocols];
      encryptionProtocols4 = [v5 encryptionProtocols];
      v11 = [encryptionProtocols3 isEqual:encryptionProtocols4];

      if (!v11)
      {
        goto LABEL_50;
      }
    }

    if (self)
    {
      Property = objc_getProperty(self, v12, 104, 1);
    }

    else
    {
      Property = 0;
    }

    v15 = Property;
    v17 = objc_getProperty(v5, v16, 104, 1);

    if (v15 != v17)
    {
      v19 = self ? objc_getProperty(self, v18, 104, 1) : 0;
      v20 = v19;
      v22 = [v20 isEqual:{objc_getProperty(v5, v21, 104, 1)}];

      if (!v22)
      {
        goto LABEL_50;
      }
    }

    integrityProtocols = [(NEIKEv2IKESAProposal *)self integrityProtocols];
    integrityProtocols2 = [v5 integrityProtocols];
    v25 = integrityProtocols2;
    if (integrityProtocols == integrityProtocols2)
    {
    }

    else
    {
      integrityProtocols3 = [(NEIKEv2IKESAProposal *)self integrityProtocols];
      integrityProtocols4 = [v5 integrityProtocols];
      v28 = [integrityProtocols3 isEqual:integrityProtocols4];

      if (!v28)
      {
        goto LABEL_50;
      }
    }

    if (self)
    {
      v30 = objc_getProperty(self, v29, 112, 1);
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;
    v33 = objc_getProperty(v5, v32, 112, 1);

    if (v31 != v33)
    {
      v35 = self ? objc_getProperty(self, v34, 112, 1) : 0;
      v36 = v35;
      v38 = [v36 isEqual:{objc_getProperty(v5, v37, 112, 1)}];

      if (!v38)
      {
        goto LABEL_50;
      }
    }

    prfProtocols = [(NEIKEv2IKESAProposal *)self prfProtocols];
    prfProtocols2 = [v5 prfProtocols];
    v41 = prfProtocols2;
    if (prfProtocols == prfProtocols2)
    {
    }

    else
    {
      prfProtocols3 = [(NEIKEv2IKESAProposal *)self prfProtocols];
      prfProtocols4 = [v5 prfProtocols];
      v44 = [prfProtocols3 isEqual:prfProtocols4];

      if (!v44)
      {
        goto LABEL_50;
      }
    }

    if (self)
    {
      v46 = objc_getProperty(self, v45, 120, 1);
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;
    v49 = objc_getProperty(v5, v48, 120, 1);

    if (v47 != v49)
    {
      v51 = self ? objc_getProperty(self, v50, 120, 1) : 0;
      v52 = v51;
      v54 = [v52 isEqual:{objc_getProperty(v5, v53, 120, 1)}];

      if (!v54)
      {
        goto LABEL_50;
      }
    }

    kemProtocols = [(NEIKEv2IKESAProposal *)self kemProtocols];
    kemProtocols2 = [v5 kemProtocols];
    v57 = kemProtocols2;
    if (kemProtocols == kemProtocols2)
    {
    }

    else
    {
      kemProtocols3 = [(NEIKEv2IKESAProposal *)self kemProtocols];
      kemProtocols4 = [v5 kemProtocols];
      v60 = [kemProtocols3 isEqual:kemProtocols4];

      if (!v60)
      {
        goto LABEL_50;
      }
    }

    if (self)
    {
      v62 = objc_getProperty(self, v61, 128, 1);
    }

    else
    {
      v62 = 0;
    }

    v63 = v62;
    v65 = objc_getProperty(v5, v64, 128, 1);

    if (v63 != v65)
    {
      v67 = self ? objc_getProperty(self, v66, 128, 1) : 0;
      v68 = v67;
      v70 = [v68 isEqual:{objc_getProperty(v5, v69, 128, 1)}];

      if (!v70)
      {
        goto LABEL_50;
      }
    }

    additionalKEMProtocols = [(NEIKEv2IKESAProposal *)self additionalKEMProtocols];
    additionalKEMProtocols2 = [v5 additionalKEMProtocols];
    v73 = additionalKEMProtocols2;
    if (additionalKEMProtocols == additionalKEMProtocols2)
    {
    }

    else
    {
      additionalKEMProtocols3 = [(NEIKEv2IKESAProposal *)self additionalKEMProtocols];
      additionalKEMProtocols4 = [v5 additionalKEMProtocols];
      v76 = [additionalKEMProtocols3 isEqual:additionalKEMProtocols4];

      if (!v76)
      {
        goto LABEL_50;
      }
    }

    chosenAdditionalKEMProtocols = [(NEIKEv2IKESAProposal *)self chosenAdditionalKEMProtocols];
    chosenAdditionalKEMProtocols2 = [(NEIKEv2IKESAProposal *)v5 chosenAdditionalKEMProtocols];
    v79 = chosenAdditionalKEMProtocols2;
    if (chosenAdditionalKEMProtocols == chosenAdditionalKEMProtocols2)
    {
    }

    else
    {
      chosenAdditionalKEMProtocols3 = [(NEIKEv2IKESAProposal *)self chosenAdditionalKEMProtocols];
      chosenAdditionalKEMProtocols4 = [(NEIKEv2IKESAProposal *)v5 chosenAdditionalKEMProtocols];
      v82 = [chosenAdditionalKEMProtocols3 isEqual:chosenAdditionalKEMProtocols4];

      if (!v82)
      {
LABEL_50:
        v13 = 0;
LABEL_51:

        goto LABEL_52;
      }
    }

    lifetimeSeconds = [(NEIKEv2IKESAProposal *)self lifetimeSeconds];
    v13 = lifetimeSeconds == [v5 lifetimeSeconds];
    goto LABEL_51;
  }

  v13 = 0;
LABEL_52:

  return v13;
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  v8 = v7;
  if (self)
  {
    [v7 appendPrettyInt:self->_proposalNumber withName:@"Number" andIndent:v5 options:options];
    [v8 appendPrettyObject:objc_getProperty(self withName:v9 andIndent:88 options:{1), @"Local SPI", v5, options}];
    [v8 appendPrettyObject:objc_getProperty(self withName:v10 andIndent:96 options:{1), @"Remote SPI", v5, options}];
    Property = objc_getProperty(self, v11, 104, 1);
  }

  else
  {
    [v7 appendPrettyInt:0 withName:@"Number" andIndent:v5 options:options];
    [v8 appendPrettyObject:0 withName:@"Local SPI" andIndent:v5 options:options];
    [v8 appendPrettyObject:0 withName:@"Remote SPI" andIndent:v5 options:options];
    Property = 0;
  }

  [v8 appendPrettyObject:Property withName:@"Chosen Encryption" andIndent:v5 options:options];
  encryptionProtocols = [(NEIKEv2IKESAProposal *)self encryptionProtocols];
  [v8 appendPrettyObject:encryptionProtocols withName:@"Encryption" andIndent:v5 options:options];

  if (self)
  {
    [v8 appendPrettyObject:objc_getProperty(self withName:v14 andIndent:112 options:{1), @"Chosen Integrity", v5, options}];
    integrityProtocols = [(NEIKEv2IKESAProposal *)self integrityProtocols];
    [v8 appendPrettyObject:integrityProtocols withName:@"Integrity" andIndent:v5 options:options];

    v17 = objc_getProperty(self, v16, 120, 1);
  }

  else
  {
    [v8 appendPrettyObject:0 withName:@"Chosen Integrity" andIndent:v5 options:options];
    integrityProtocols2 = [0 integrityProtocols];
    [v8 appendPrettyObject:integrityProtocols2 withName:@"Integrity" andIndent:v5 options:options];

    v17 = 0;
  }

  [v8 appendPrettyObject:v17 withName:@"Chosen PRF" andIndent:v5 options:options];
  prfProtocols = [(NEIKEv2IKESAProposal *)self prfProtocols];
  [v8 appendPrettyObject:prfProtocols withName:@"PRF" andIndent:v5 options:options];

  if (self)
  {
    [v8 appendPrettyObject:objc_getProperty(self withName:v19 andIndent:128 options:{1), @"Chosen KE", v5, options}];
    kemProtocols = [(NEIKEv2IKESAProposal *)self kemProtocols];
    [v8 appendPrettyObject:kemProtocols withName:@"KE" andIndent:v5 options:options];

    chosenAdditionalKEMProtocols = [(NEIKEv2IKESAProposal *)self chosenAdditionalKEMProtocols];
    [v8 appendPrettyObject:chosenAdditionalKEMProtocols withName:@"Chosen ADDKE" andIndent:v5 options:options];

    additionalKEMProtocols = [(NEIKEv2IKESAProposal *)self additionalKEMProtocols];
    [v8 appendPrettyObject:additionalKEMProtocols withName:@"ADDKE" andIndent:v5 options:options];

    v24 = objc_getProperty(self, v23, 80, 1);
  }

  else
  {
    [v8 appendPrettyObject:0 withName:@"Chosen KE" andIndent:v5 options:options];
    kemProtocols2 = [0 kemProtocols];
    [v8 appendPrettyObject:kemProtocols2 withName:@"KE" andIndent:v5 options:options];

    chosenAdditionalKEMProtocols2 = [(NEIKEv2IKESAProposal *)0 chosenAdditionalKEMProtocols];
    [v8 appendPrettyObject:chosenAdditionalKEMProtocols2 withName:@"Chosen ADDKE" andIndent:v5 options:options];

    additionalKEMProtocols2 = [0 additionalKEMProtocols];
    [v8 appendPrettyObject:additionalKEMProtocols2 withName:@"ADDKE" andIndent:v5 options:options];

    v24 = 0;
  }

  [v8 appendPrettyObject:v24 withName:@"Unsupported Transform Types" andIndent:v5 options:options];
  eapProtocols = [(NEIKEv2IKESAProposal *)self eapProtocols];
  [v8 appendPrettyObject:eapProtocols withName:@"EAP" andIndent:v5 options:options];

  if ([(NEIKEv2IKESAProposal *)self lifetimeSeconds])
  {
    [v8 appendPrettyInt:-[NEIKEv2IKESAProposal lifetimeSeconds](self withName:"lifetimeSeconds") andIndent:@"Lifetime" options:{v5, options}];
  }

  if (self)
  {
    authenticationProtocol = self->_authenticationProtocol;
  }

  else
  {
    authenticationProtocol = 0;
  }

  [v8 appendPrettyObject:authenticationProtocol withName:@"Authentication" andIndent:v5 options:options];

  return v8;
}

- (NEIKEv2IKESAProposal)init
{
  v8.receiver = self;
  v8.super_class = NEIKEv2IKESAProposal;
  v2 = [(NEIKEv2IKESAProposal *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "[super init] failed", v7, 2u);
    }
  }

  return v3;
}

- (id)prfProtocol
{
  selfCopy = self;
  if (self)
  {
    if (objc_getProperty(self, a2, 120, 1))
    {
      selfCopy = objc_getProperty(selfCopy, v3, 120, 1);
    }

    else
    {
      prfProtocols = [selfCopy prfProtocols];
      selfCopy = [prfProtocols firstObject];
    }
  }

  return selfCopy;
}

- (id)kemProtocol
{
  selfCopy = self;
  if (self)
  {
    if (objc_getProperty(self, a2, 128, 1))
    {
      selfCopy = objc_getProperty(selfCopy, v3, 128, 1);
    }

    else
    {
      kemProtocols = [selfCopy kemProtocols];
      selfCopy = [kemProtocols firstObject];
    }
  }

  return selfCopy;
}

- (uint64_t)hasEAPMethods
{
  v11 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  eapProtocols = [self eapProtocols];
  v2 = [eapProtocols countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(eapProtocols);
        }

        if ([*(*(&v6 + 1) + 8 * i) method])
        {
          v2 = 1;
          goto LABEL_12;
        }
      }

      v2 = [eapProtocols countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v2;
}

- (NSObject)copyFromRemote:(int)remote preferRemoteProposal:
{
  v191 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (!self)
  {
    v43 = 0;
    goto LABEL_167;
  }

  if (!v5)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v190 = "[NEIKEv2IKESAProposal copyFromRemote:preferRemoteProposal:]";
      _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "%s called with null remote", buf, 0xCu);
    }

    v43 = 0;
    goto LABEL_166;
  }

  v7 = [self copy];
  v9 = v7;
  if (!v6[8])
  {
    v20 = ne_log_obj();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_164;
    }

    *buf = 0;
    v21 = "Remote proposal has invalid proposal number 0";
LABEL_114:
    _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, v21, buf, 2u);
    goto LABEL_164;
  }

  if (v7)
  {
    *(v7 + 8) = v6[8];
    Property = objc_getProperty(v6, v8, 88, 1);
    objc_setProperty_atomic(v9, v11, Property, 96);
  }

  else
  {
    objc_getProperty(v6, v8, 88, 1);
  }

  if (remote)
  {
    v177 = 0uLL;
    v178 = 0uLL;
    v175 = 0uLL;
    v176 = 0uLL;
    encryptionProtocols = [v6 encryptionProtocols];
    v13 = [encryptionProtocols countByEnumeratingWithState:&v175 objects:v188 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v176;
LABEL_9:
      v16 = 0;
      while (1)
      {
        if (*v176 != v15)
        {
          objc_enumerationMutation(encryptionProtocols);
        }

        v17 = *(*(&v175 + 1) + 8 * v16);
        encryptionProtocols2 = [v9 encryptionProtocols];
        v19 = [encryptionProtocols2 indexOfObject:v17];

        if (v19 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [encryptionProtocols countByEnumeratingWithState:&v175 objects:v188 count:16];
          if (v14)
          {
            goto LABEL_9;
          }

          goto LABEL_26;
        }
      }

      encryptionProtocols3 = [v9 encryptionProtocols];
      v32 = [encryptionProtocols3 objectAtIndexedSubscript:v19];
      v34 = v32;
      if (!v9)
      {

        goto LABEL_45;
      }

      objc_setProperty_atomic(v9, v33, v32, 104);

      v36 = objc_getProperty(v9, v35, 104, 1);
      if (!v36 || (v37 = v36[2], v37 > 0x1F) || ((1 << v37) & 0xD0100000) == 0)
      {
LABEL_46:
        v30 = 0;
        goto LABEL_47;
      }

LABEL_38:
      v30 = 1;
LABEL_47:

      goto LABEL_48;
    }
  }

  else
  {
    v173 = 0uLL;
    v174 = 0uLL;
    v171 = 0uLL;
    v172 = 0uLL;
    encryptionProtocols = [v9 encryptionProtocols];
    v22 = [encryptionProtocols countByEnumeratingWithState:&v171 objects:v187 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v172;
LABEL_20:
      v25 = 0;
      while (1)
      {
        if (*v172 != v24)
        {
          objc_enumerationMutation(encryptionProtocols);
        }

        v26 = *(*(&v171 + 1) + 8 * v25);
        encryptionProtocols4 = [v6 encryptionProtocols];
        v28 = [encryptionProtocols4 containsObject:v26];

        if (v28)
        {
          break;
        }

        if (v23 == ++v25)
        {
          v23 = [encryptionProtocols countByEnumeratingWithState:&v171 objects:v187 count:16];
          if (v23)
          {
            goto LABEL_20;
          }

          goto LABEL_26;
        }
      }

      if (!v9)
      {
LABEL_45:
        v36 = 0;
        goto LABEL_46;
      }

      objc_setProperty_atomic(v9, v29, v26, 104);
      v36 = objc_getProperty(v9, v38, 104, 1);
      if (!v36)
      {
        goto LABEL_46;
      }

      v39 = v36[2];
      v40 = v39 > 0x1F;
      v41 = (1 << v39) & 0xD0100000;
      if (v40 || v41 == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_38;
    }
  }

LABEL_26:
  v30 = 0;
LABEL_48:

  if (!v9 || !objc_getProperty(v9, v44, 104, 1))
  {
    v20 = ne_log_obj();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_164;
    }

    *buf = 0;
    v21 = "No chosen encryption protocol";
    goto LABEL_114;
  }

  if ((v30 & 1) == 0)
  {
    if (remote)
    {
      v169 = 0uLL;
      v170 = 0uLL;
      v167 = 0uLL;
      v168 = 0uLL;
      integrityProtocols = [v6 integrityProtocols];
      v46 = [integrityProtocols countByEnumeratingWithState:&v167 objects:v186 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v168;
        while (2)
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v168 != v48)
            {
              objc_enumerationMutation(integrityProtocols);
            }

            v50 = *(*(&v167 + 1) + 8 * i);
            integrityProtocols2 = [v9 integrityProtocols];
            v52 = [integrityProtocols2 indexOfObject:v50];

            if (v52 != 0x7FFFFFFFFFFFFFFFLL)
            {
              integrityProtocols3 = [v9 integrityProtocols];
              v62 = [integrityProtocols3 objectAtIndexedSubscript:v52];
              objc_setProperty_atomic(v9, v63, v62, 112);

              goto LABEL_74;
            }
          }

          v47 = [integrityProtocols countByEnumeratingWithState:&v167 objects:v186 count:16];
          if (v47)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v165 = 0uLL;
      v166 = 0uLL;
      v163 = 0uLL;
      v164 = 0uLL;
      integrityProtocols = [v9 integrityProtocols];
      v53 = [integrityProtocols countByEnumeratingWithState:&v163 objects:v185 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v164;
        while (2)
        {
          for (j = 0; j != v54; ++j)
          {
            if (*v164 != v55)
            {
              objc_enumerationMutation(integrityProtocols);
            }

            v57 = *(*(&v163 + 1) + 8 * j);
            integrityProtocols4 = [v6 integrityProtocols];
            v59 = [integrityProtocols4 containsObject:v57];

            if (v59)
            {
              objc_setProperty_atomic(v9, v60, v57, 112);
              goto LABEL_74;
            }
          }

          v54 = [integrityProtocols countByEnumeratingWithState:&v163 objects:v185 count:16];
          if (v54)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_74:

    if (!objc_getProperty(v9, v64, 112, 1))
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v21 = "No chosen integrity protocol";
        goto LABEL_114;
      }

      goto LABEL_164;
    }
  }

  if (remote)
  {
    v161 = 0uLL;
    v162 = 0uLL;
    v159 = 0uLL;
    v160 = 0uLL;
    prfProtocols = [v6 prfProtocols];
    v66 = [prfProtocols countByEnumeratingWithState:&v159 objects:v184 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = *v160;
      while (2)
      {
        for (k = 0; k != v67; ++k)
        {
          if (*v160 != v68)
          {
            objc_enumerationMutation(prfProtocols);
          }

          v70 = *(*(&v159 + 1) + 8 * k);
          prfProtocols2 = [v9 prfProtocols];
          v72 = [prfProtocols2 indexOfObject:v70];

          if (v72 != 0x7FFFFFFFFFFFFFFFLL)
          {
            prfProtocols3 = [v9 prfProtocols];
            v82 = [prfProtocols3 objectAtIndexedSubscript:v72];
            objc_setProperty_atomic(v9, v83, v82, 120);

            goto LABEL_96;
          }
        }

        v67 = [prfProtocols countByEnumeratingWithState:&v159 objects:v184 count:16];
        if (v67)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v157 = 0uLL;
    v158 = 0uLL;
    v155 = 0uLL;
    v156 = 0uLL;
    prfProtocols = [v9 prfProtocols];
    v73 = [prfProtocols countByEnumeratingWithState:&v155 objects:v183 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = *v156;
      while (2)
      {
        for (m = 0; m != v74; ++m)
        {
          if (*v156 != v75)
          {
            objc_enumerationMutation(prfProtocols);
          }

          v77 = *(*(&v155 + 1) + 8 * m);
          prfProtocols4 = [v6 prfProtocols];
          v79 = [prfProtocols4 containsObject:v77];

          if (v79)
          {
            objc_setProperty_atomic(v9, v80, v77, 120);
            goto LABEL_96;
          }
        }

        v74 = [prfProtocols countByEnumeratingWithState:&v155 objects:v183 count:16];
        if (v74)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_96:

  if (!objc_getProperty(v9, v84, 120, 1))
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "No chosen PRF protocol";
      goto LABEL_114;
    }

LABEL_164:
    v43 = 0;
    goto LABEL_165;
  }

  kemProtocols = [v9 kemProtocols];
  kemProtocols2 = [v6 kemProtocols];
  firstObject = [kemProtocols2 firstObject];
  v88 = [kemProtocols indexOfObject:firstObject];

  if (v88 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (remote)
    {
      v153 = 0uLL;
      v154 = 0uLL;
      v151 = 0uLL;
      v152 = 0uLL;
      kemProtocols3 = [v6 kemProtocols];
      v90 = [kemProtocols3 countByEnumeratingWithState:&v151 objects:v182 count:16];
      if (!v90)
      {
        goto LABEL_123;
      }

      v91 = v90;
      v92 = *v152;
LABEL_101:
      v93 = 0;
      while (1)
      {
        if (*v152 != v92)
        {
          objc_enumerationMutation(kemProtocols3);
        }

        v94 = *(*(&v151 + 1) + 8 * v93);
        kemProtocols4 = [v9 kemProtocols];
        v96 = [kemProtocols4 indexOfObject:v94];

        if (v96 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v91 == ++v93)
        {
          v91 = [kemProtocols3 countByEnumeratingWithState:&v151 objects:v182 count:16];
          if (!v91)
          {
LABEL_123:

            goto LABEL_161;
          }

          goto LABEL_101;
        }
      }

      kemProtocols5 = [v9 kemProtocols];
      v20 = [kemProtocols5 objectAtIndexedSubscript:v96];
    }

    else
    {
      v149 = 0uLL;
      v150 = 0uLL;
      v147 = 0uLL;
      v148 = 0uLL;
      kemProtocols3 = [v9 kemProtocols];
      v99 = [kemProtocols3 countByEnumeratingWithState:&v147 objects:v181 count:16];
      if (!v99)
      {
        goto LABEL_123;
      }

      v100 = v99;
      v101 = *v148;
LABEL_117:
      v102 = 0;
      while (1)
      {
        if (*v148 != v101)
        {
          objc_enumerationMutation(kemProtocols3);
        }

        v103 = *(*(&v147 + 1) + 8 * v102);
        kemProtocols6 = [v6 kemProtocols];
        v105 = [kemProtocols6 containsObject:v103];

        if (v105)
        {
          break;
        }

        if (v100 == ++v102)
        {
          v100 = [kemProtocols3 countByEnumeratingWithState:&v147 objects:v181 count:16];
          if (!v100)
          {
            goto LABEL_123;
          }

          goto LABEL_117;
        }
      }

      v20 = v103;
    }

    if (v20)
    {
      goto LABEL_127;
    }

    goto LABEL_161;
  }

  kemProtocols7 = [v9 kemProtocols];
  v20 = [kemProtocols7 objectAtIndexedSubscript:v88];

  if (!v20)
  {
LABEL_161:
    v130 = ne_log_obj();
    if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v130, OS_LOG_TYPE_ERROR, "No chosen KE method", buf, 2u);
    }

    v20 = 0;
    goto LABEL_164;
  }

LABEL_127:
  objc_setProperty_atomic(v9, v98, v20, 128);
  additionalKEMProtocols = [v6 additionalKEMProtocols];

  if (!additionalKEMProtocols)
  {
    additionalKEMProtocols2 = [v9 additionalKEMProtocols];

    if (additionalKEMProtocols2)
    {
      [(NEIKEv2IKESAProposal *)v9 setChosenAdditionalKEMProtocols:?];
    }

    v43 = v9;
    goto LABEL_165;
  }

  remoteCopy = remote;
  v108 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v20, 0}];
  v109 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v110 = 6;
  v134 = v109;
  v135 = v6;
  v138 = v9;
  while (1)
  {
    v111 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v110];
    additionalKEMProtocols3 = [v9 additionalKEMProtocols];
    v113 = [additionalKEMProtocols3 objectForKeyedSubscript:v111];

    additionalKEMProtocols4 = [v6 additionalKEMProtocols];
    v115 = [additionalKEMProtocols4 objectForKeyedSubscript:v111];

    if (!v115)
    {
      goto LABEL_144;
    }

    if (v113)
    {
      break;
    }

    v123 = [[NEIKEv2KEMProtocol alloc] initWithMethod:0];
    [v109 setObject:v123 forKeyedSubscript:v111];

LABEL_144:
    v122 = 0;
LABEL_159:

    ++v110;
    v9 = v138;
    if (v110 == 13)
    {
      v129 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v109];
      [(NEIKEv2IKESAProposal *)v138 setChosenAdditionalKEMProtocols:v129];

      v43 = v138;
      goto LABEL_178;
    }
  }

  v137 = v111;
  if (remoteCopy)
  {
    v145 = 0uLL;
    v146 = 0uLL;
    v143 = 0uLL;
    v144 = 0uLL;
    v116 = v115;
    v117 = [v116 countByEnumeratingWithState:&v143 objects:v180 count:16];
    if (v117)
    {
      v118 = v117;
      v119 = *v144;
      do
      {
        for (n = 0; n != v118; ++n)
        {
          if (*v144 != v119)
          {
            objc_enumerationMutation(v116);
          }

          v121 = [v113 indexOfObject:*(*(&v143 + 1) + 8 * n)];
          if (v121 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v122 = [v113 objectAtIndexedSubscript:v121];
            if (![v108 containsObject:v122])
            {
              goto LABEL_156;
            }
          }
        }

        v118 = [v116 countByEnumeratingWithState:&v143 objects:v180 count:16];
      }

      while (v118);
      v115 = v116;
LABEL_171:
      v109 = v134;
      v111 = v137;
    }

    else
    {
      v115 = v116;
    }

LABEL_174:
  }

  else
  {
    v141 = 0uLL;
    v142 = 0uLL;
    v139 = 0uLL;
    v140 = 0uLL;
    v116 = v113;
    v124 = [v116 countByEnumeratingWithState:&v139 objects:v179 count:16];
    if (!v124)
    {
      v113 = v116;
      goto LABEL_174;
    }

    v125 = v124;
    v126 = *v140;
LABEL_147:
    v127 = 0;
    while (1)
    {
      if (*v140 != v126)
      {
        objc_enumerationMutation(v116);
      }

      v128 = *(*(&v139 + 1) + 8 * v127);
      if (([v108 containsObject:v128] & 1) == 0)
      {
        if ([v115 containsObject:v128])
        {
          break;
        }
      }

      if (v125 == ++v127)
      {
        v125 = [v116 countByEnumeratingWithState:&v139 objects:v179 count:16];
        if (v125)
        {
          goto LABEL_147;
        }

        v113 = v116;
        goto LABEL_171;
      }
    }

    v122 = v128;
LABEL_156:

    v109 = v134;
    v111 = v137;
    if (v122)
    {
      [v134 setObject:v122 forKeyedSubscript:v137];
      v6 = v135;
      if ([v122 method])
      {
        [v108 addObject:v122];
      }

      goto LABEL_159;
    }
  }

  v6 = v135;
  v133 = ne_log_obj();
  if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1BA83C000, v133, OS_LOG_TYPE_ERROR, "No chosen additional KE methods", buf, 2u);
  }

  v43 = 0;
  v9 = v138;
LABEL_178:

LABEL_165:
LABEL_166:

LABEL_167:
  return v43;
}

- (unint64_t)matchesLocalProposal:(int)proposal preferRemoteProposal:
{
  v153 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (!self)
  {
    goto LABEL_30;
  }

  if (!v5)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_28;
    }

    *buf = 136315138;
    v149 = "[NEIKEv2IKESAProposal matchesLocalProposal:preferRemoteProposal:]";
    v18 = "%s called with null localProposal";
    goto LABEL_27;
  }

  encryptionProtocols = [self encryptionProtocols];

  if (!encryptionProtocols)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 136315138;
    v149 = "[NEIKEv2IKESAProposal matchesLocalProposal:preferRemoteProposal:]";
    v15 = "BACKTRACE %s called with null self.encryptionProtocols";
LABEL_23:
    v16 = v14;
    v17 = 12;
    goto LABEL_24;
  }

  encryptionProtocols2 = [v6 encryptionProtocols];

  if (!encryptionProtocols2)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_28;
    }

    *buf = 136315138;
    v149 = "[NEIKEv2IKESAProposal matchesLocalProposal:preferRemoteProposal:]";
    v18 = "%s called with null localProposal.encryptionProtocols";
LABEL_27:
    _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, v18, buf, 0xCu);
    goto LABEL_28;
  }

  prfProtocols = [self prfProtocols];

  if (!prfProtocols)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 136315138;
    v149 = "[NEIKEv2IKESAProposal matchesLocalProposal:preferRemoteProposal:]";
    v15 = "BACKTRACE %s called with null self.prfProtocols";
    goto LABEL_23;
  }

  prfProtocols2 = [v6 prfProtocols];

  if (!prfProtocols2)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_28;
    }

    *buf = 136315138;
    v149 = "[NEIKEv2IKESAProposal matchesLocalProposal:preferRemoteProposal:]";
    v18 = "%s called with null localProposal.prfProtocols";
    goto LABEL_27;
  }

  kemProtocols = [self kemProtocols];

  if (!kemProtocols)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 136315138;
    v149 = "[NEIKEv2IKESAProposal matchesLocalProposal:preferRemoteProposal:]";
    v15 = "BACKTRACE %s called with null self.kemProtocols";
    goto LABEL_23;
  }

  kemProtocols2 = [v6 kemProtocols];

  if (!kemProtocols2)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_28;
    }

    *buf = 136315138;
    v149 = "[NEIKEv2IKESAProposal matchesLocalProposal:preferRemoteProposal:]";
    v18 = "%s called with null localProposal.kemProtocols";
    goto LABEL_27;
  }

  if (objc_getProperty(self, v13, 80, 1))
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v15 = "Not matching proposal with unsupported transform type";
LABEL_12:
      v16 = v14;
      v17 = 2;
LABEL_24:
      _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    }

LABEL_28:

    goto LABEL_29;
  }

  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  encryptionProtocols3 = [v6 encryptionProtocols];
  v21 = [encryptionProtocols3 countByEnumeratingWithState:&v136 objects:v152 count:16];
  if (!v21)
  {
    goto LABEL_39;
  }

  v22 = v21;
  v23 = *v137;
LABEL_33:
  v24 = 0;
  while (1)
  {
    if (*v137 != v23)
    {
      objc_enumerationMutation(encryptionProtocols3);
    }

    v25 = *(*(&v136 + 1) + 8 * v24);
    encryptionProtocols4 = [self encryptionProtocols];
    v27 = [encryptionProtocols4 containsObject:v25];

    if (v27)
    {
      break;
    }

    if (v22 == ++v24)
    {
      v22 = [encryptionProtocols3 countByEnumeratingWithState:&v136 objects:v152 count:16];
      if (!v22)
      {
LABEL_39:

        v28 = ne_log_large_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          encryptionProtocols5 = [self encryptionProtocols];
          encryptionProtocols6 = [v6 encryptionProtocols];
          *buf = 138412546;
          v149 = encryptionProtocols5;
          v150 = 2112;
          v151 = encryptionProtocols6;
          v31 = "Failed to match encryption algorithms (%@ vs %@)";
          goto LABEL_72;
        }

        goto LABEL_73;
      }

      goto LABEL_33;
    }
  }

  if (v25)
  {
    v32 = *(v25 + 16);
    v33 = v32 >= 0x20;
    v34 = 0xD0100000 >> v32;
    if (v33)
    {
      v35 = 0;
    }

    else
    {
      v35 = v34;
    }
  }

  else
  {
    v35 = 0;
  }

  integrityProtocols = [v6 integrityProtocols];
  if ([integrityProtocols count])
  {
    integrityProtocols2 = [self integrityProtocols];
    v38 = [integrityProtocols2 count];

    if (v38)
    {
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      integrityProtocols3 = [v6 integrityProtocols];
      v40 = [integrityProtocols3 countByEnumeratingWithState:&v132 objects:v147 count:16];
      if (!v40)
      {
        goto LABEL_55;
      }

      v41 = v40;
      v42 = *v133;
LABEL_49:
      v43 = 0;
      while (1)
      {
        if (*v133 != v42)
        {
          objc_enumerationMutation(integrityProtocols3);
        }

        v44 = *(*(&v132 + 1) + 8 * v43);
        integrityProtocols4 = [self integrityProtocols];
        LOBYTE(v44) = [integrityProtocols4 containsObject:v44];

        if (v44)
        {
          break;
        }

        if (v41 == ++v43)
        {
          v41 = [integrityProtocols3 countByEnumeratingWithState:&v132 objects:v147 count:16];
          if (!v41)
          {
LABEL_55:

            v28 = ne_log_large_obj();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              encryptionProtocols5 = [self integrityProtocols];
              encryptionProtocols6 = [v6 integrityProtocols];
              *buf = 138412546;
              v149 = encryptionProtocols5;
              v150 = 2112;
              v151 = encryptionProtocols6;
              v31 = "Failed to match integrity algorithms (%@ vs %@)";
              goto LABEL_72;
            }

            goto LABEL_73;
          }

          goto LABEL_49;
        }
      }

      goto LABEL_62;
    }
  }

  else
  {
  }

  if ((v35 & 1) == 0)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v15 = "Failed to match integrity algorithms, none provided";
    goto LABEL_12;
  }

LABEL_62:
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  prfProtocols3 = [v6 prfProtocols];
  v47 = [prfProtocols3 countByEnumeratingWithState:&v128 objects:v146 count:16];
  if (!v47)
  {
    goto LABEL_70;
  }

  v48 = v47;
  v49 = *v129;
LABEL_64:
  v50 = 0;
  while (1)
  {
    if (*v129 != v49)
    {
      objc_enumerationMutation(prfProtocols3);
    }

    v51 = *(*(&v128 + 1) + 8 * v50);
    prfProtocols4 = [self prfProtocols];
    LOBYTE(v51) = [prfProtocols4 containsObject:v51];

    if (v51)
    {
      break;
    }

    if (v48 == ++v50)
    {
      v48 = [prfProtocols3 countByEnumeratingWithState:&v128 objects:v146 count:16];
      if (!v48)
      {
LABEL_70:

        v28 = ne_log_large_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          encryptionProtocols5 = [self prfProtocols];
          encryptionProtocols6 = [v6 prfProtocols];
          *buf = 138412546;
          v149 = encryptionProtocols5;
          v150 = 2112;
          v151 = encryptionProtocols6;
          v31 = "Failed to match PRF algorithms (%@ vs %@)";
LABEL_72:
          _os_log_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_INFO, v31, buf, 0x16u);
        }

LABEL_73:

LABEL_29:
        self = 0;
        goto LABEL_30;
      }

      goto LABEL_64;
    }
  }

  kemProtocols3 = [v6 kemProtocols];
  kemProtocols4 = [self kemProtocols];
  firstObject = [kemProtocols4 firstObject];
  v56 = [kemProtocols3 indexOfObject:firstObject];

  if (v56 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (proposal)
    {
      v126 = 0uLL;
      v127 = 0uLL;
      v124 = 0uLL;
      v125 = 0uLL;
      kemProtocols5 = [self kemProtocols];
      v58 = [kemProtocols5 countByEnumeratingWithState:&v124 objects:v145 count:16];
      if (!v58)
      {
        goto LABEL_94;
      }

      v59 = v58;
      v60 = *v125;
LABEL_78:
      v61 = 0;
      while (1)
      {
        if (*v125 != v60)
        {
          objc_enumerationMutation(kemProtocols5);
        }

        v62 = *(*(&v124 + 1) + 8 * v61);
        kemProtocols6 = [v6 kemProtocols];
        v64 = [kemProtocols6 indexOfObject:v62];

        if (v64 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v59 == ++v61)
        {
          v59 = [kemProtocols5 countByEnumeratingWithState:&v124 objects:v145 count:16];
          if (!v59)
          {
LABEL_94:

LABEL_101:
            v76 = ne_log_large_obj();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
            {
              kemProtocols7 = [self kemProtocols];
              kemProtocols8 = [v6 kemProtocols];
              *buf = 138412546;
              v149 = kemProtocols7;
              v150 = 2112;
              v151 = kemProtocols8;
              _os_log_impl(&dword_1BA83C000, v76, OS_LOG_TYPE_INFO, "Failed to match Key Exchange methods (%@ vs %@)", buf, 0x16u);
            }

            v74 = 0;
            v140 = 0;
            goto LABEL_152;
          }

          goto LABEL_78;
        }
      }

      kemProtocols9 = [v6 kemProtocols];
      v74 = [kemProtocols9 objectAtIndexedSubscript:v64];

      goto LABEL_98;
    }

    v122 = 0uLL;
    v123 = 0uLL;
    v120 = 0uLL;
    v121 = 0uLL;
    kemProtocols5 = [v6 kemProtocols];
    v66 = [kemProtocols5 countByEnumeratingWithState:&v120 objects:v144 count:16];
    if (!v66)
    {
      goto LABEL_94;
    }

    v67 = v66;
    v68 = *v121;
LABEL_88:
    v69 = 0;
    while (1)
    {
      if (*v121 != v68)
      {
        objc_enumerationMutation(kemProtocols5);
      }

      v70 = *(*(&v120 + 1) + 8 * v69);
      kemProtocols10 = [self kemProtocols];
      v72 = [kemProtocols10 containsObject:v70];

      if (v72)
      {
        break;
      }

      if (v67 == ++v69)
      {
        v67 = [kemProtocols5 countByEnumeratingWithState:&v120 objects:v144 count:16];
        if (!v67)
        {
          goto LABEL_94;
        }

        goto LABEL_88;
      }
    }

    v65 = v70;
  }

  else
  {
    kemProtocols5 = [v6 kemProtocols];
    v65 = [kemProtocols5 objectAtIndexedSubscript:v56];
  }

  v74 = v65;
LABEL_98:

  if (!v74)
  {
    goto LABEL_101;
  }

  additionalKEMProtocols = [self additionalKEMProtocols];
  if (additionalKEMProtocols)
  {
  }

  else
  {
    additionalKEMProtocols2 = [v6 additionalKEMProtocols];

    if (!additionalKEMProtocols2)
    {
      v140 = 1;
      goto LABEL_152;
    }
  }

  v80 = [[NEIKEv2KEMProtocol alloc] initWithMethod:0];
  v143 = v80;
  v108 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v143 count:1];

  v107 = v74;
  v81 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v74, 0}];
  v82 = 6;
  v83 = 0x1E696A000uLL;
  proposalCopy = proposal;
  while (1)
  {
    v84 = [*(v83 + 3480) numberWithUnsignedInteger:v82];
    additionalKEMProtocols3 = [v6 additionalKEMProtocols];
    v86 = [additionalKEMProtocols3 objectForKeyedSubscript:v84];

    additionalKEMProtocols4 = [self additionalKEMProtocols];
    v88 = [additionalKEMProtocols4 objectForKeyedSubscript:v84];

    if (v86 | v88)
    {
      break;
    }

LABEL_140:

    if (++v82 == 13)
    {
      v140 = 1;
      goto LABEL_151;
    }
  }

  if (v86)
  {
    v89 = v88 == 0;
  }

  else
  {
    v89 = 1;
  }

  if (v89)
  {
    if (v86)
    {
      v88 = v108;
    }

    else
    {
      v86 = v108;
    }

    v90 = v108;
  }

  v110 = v82;
  v111 = v84;
  if (proposal)
  {
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v91 = v88;
    v92 = v88;
    v93 = [v92 countByEnumeratingWithState:&v116 objects:v142 count:16];
    if (!v93)
    {
      v103 = v92;
      goto LABEL_148;
    }

    v94 = v93;
    v95 = v86;
    v96 = *v117;
LABEL_119:
    v97 = 0;
    while (1)
    {
      if (*v117 != v96)
      {
        objc_enumerationMutation(v92);
      }

      v98 = *(*(&v116 + 1) + 8 * v97);
      if (([v81 containsObject:v98] & 1) == 0)
      {
        if ([v95 containsObject:v98])
        {
          goto LABEL_137;
        }
      }

      if (v94 == ++v97)
      {
        v94 = [v92 countByEnumeratingWithState:&v116 objects:v142 count:16];
        if (v94)
        {
          goto LABEL_119;
        }

        v103 = v92;
        v84 = v111;
        v86 = v95;
        goto LABEL_148;
      }
    }
  }

  v91 = v88;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v92 = v86;
  v99 = [v92 countByEnumeratingWithState:&v112 objects:v141 count:16];
  if (v99)
  {
    v100 = v99;
    v95 = v86;
    v101 = *v113;
LABEL_129:
    v102 = 0;
    while (1)
    {
      if (*v113 != v101)
      {
        objc_enumerationMutation(v92);
      }

      v98 = *(*(&v112 + 1) + 8 * v102);
      if (([v81 containsObject:v98] & 1) == 0)
      {
        if ([v91 containsObject:v98])
        {
          break;
        }
      }

      if (v100 == ++v102)
      {
        v100 = [v92 countByEnumeratingWithState:&v112 objects:v141 count:16];
        if (v100)
        {
          goto LABEL_129;
        }

        v86 = v92;
        v84 = v111;
        goto LABEL_146;
      }
    }

LABEL_137:
    if ([v98 method])
    {
      [v81 addObject:v98];
    }

    v82 = v110;
    v84 = v111;
    proposal = proposalCopy;
    v83 = 0x1E696A000;
    goto LABEL_140;
  }

  v86 = v92;
LABEL_146:
  v103 = v91;
LABEL_148:

  v104 = ne_log_large_obj();
  if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
  {
    additionalKEMProtocols5 = [self additionalKEMProtocols];
    additionalKEMProtocols6 = [v6 additionalKEMProtocols];
    *buf = 138412546;
    v149 = additionalKEMProtocols5;
    v150 = 2112;
    v151 = additionalKEMProtocols6;
    _os_log_impl(&dword_1BA83C000, v104, OS_LOG_TYPE_INFO, "Failed to match Additional Key Exchange methods (%@ vs %@)", buf, 0x16u);
  }

  v140 = 0;
LABEL_151:

  v74 = v107;
LABEL_152:

  self = v140;
LABEL_30:

  return self;
}

- (uint64_t)isAValidResponse
{
  v37 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  if (objc_getProperty(self, a2, 80, 1))
  {
    return 0;
  }

  if (!self[8])
  {
    return 0;
  }

  kemProtocols = [self kemProtocols];
  v6 = [kemProtocols count];

  if (v6 != 1)
  {
    return 0;
  }

  prfProtocols = [self prfProtocols];
  v8 = [prfProtocols count];

  if (v8 != 1)
  {
    return 0;
  }

  encryptionProtocols = [self encryptionProtocols];
  v10 = [encryptionProtocols count];

  if (v10 != 1)
  {
    return 0;
  }

  encryptionProtocols2 = [self encryptionProtocols];
  firstObject = [encryptionProtocols2 firstObject];
  if (firstObject)
  {
    v13 = firstObject[2] & 0xFFFFFFFFFFFFFFFELL;

    if (v13 != 30)
    {
      goto LABEL_11;
    }

    return 0;
  }

LABEL_11:
  encryptionProtocols3 = [self encryptionProtocols];
  firstObject2 = [encryptionProtocols3 firstObject];
  if (firstObject2)
  {
    v16 = firstObject2[2];
    v17 = 1;
    if (v16 <= 0x1F)
    {
      v17 = ((1 << v16) & 0xD0100000) == 0;
    }
  }

  else
  {
    v17 = 1;
  }

  integrityProtocols = [self integrityProtocols];
  v19 = [integrityProtocols count];

  if (v19 != v17)
  {
    return 0;
  }

  additionalKEMProtocols = [self additionalKEMProtocols];

  if (!additionalKEMProtocols)
  {
    return 1;
  }

  additionalKEMProtocols2 = [self additionalKEMProtocols];
  v22 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(additionalKEMProtocols2, "count") + 1}];
  kemProtocols2 = [self kemProtocols];
  firstObject3 = [kemProtocols2 firstObject];
  [v22 addObject:firstObject3];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = additionalKEMProtocols2;
  v26 = [v25 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v33;
    while (2)
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [v25 objectForKeyedSubscript:{*(*(&v32 + 1) + 8 * i), v32}];
        if ([v30 count] != 1)
        {
          goto LABEL_31;
        }

        firstObject4 = [v30 firstObject];
        if ([v22 containsObject:firstObject4])
        {

LABEL_31:
          v3 = 0;
          goto LABEL_32;
        }

        if ([firstObject4 method])
        {
          [v22 addObject:firstObject4];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v32 objects:v36 count:16];
      v3 = 1;
      if (v27)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v3 = 1;
  }

LABEL_32:

  return v3;
}

+ (NSObject)chooseSAProposalFromLocalProposals:(void *)proposals remoteProposals:(int)remoteProposals preferRemoteProposals:
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a2;
  proposalsCopy = proposals;
  objc_opt_self();
  v24 = v6;
  if (!v6)
  {
    v8 = ne_log_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
LABEL_29:
      v9 = 0;
      goto LABEL_25;
    }

    *buf = 136315138;
    v38 = "+[NEIKEv2IKESAProposal chooseSAProposalFromLocalProposals:remoteProposals:preferRemoteProposals:]";
    v23 = "%s called with null localProposals";
LABEL_31:
    _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, v23, buf, 0xCu);
    goto LABEL_29;
  }

  if (!proposalsCopy)
  {
    v8 = ne_log_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_29;
    }

    *buf = 136315138;
    v38 = "+[NEIKEv2IKESAProposal chooseSAProposalFromLocalProposals:remoteProposals:preferRemoteProposals:]";
    v23 = "%s called with null remoteProposals";
    goto LABEL_31;
  }

  if (remoteProposals)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = proposalsCopy;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v9)
    {
      v10 = *v32;
      while (2)
      {
        for (i = 0; i != v9; i = (i + 1))
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __97__NEIKEv2IKESAProposal_chooseSAProposalFromLocalProposals_remoteProposals_preferRemoteProposals___block_invoke;
          v30[3] = &unk_1E7F07BD0;
          v30[4] = v12;
          v13 = [v24 indexOfObjectPassingTest:{v30, v24}];
          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = [v24 objectAtIndexedSubscript:v13];
            v19 = v18;
            v20 = v12;
            v21 = 1;
            goto LABEL_24;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v9)
    {
      v14 = *v27;
      while (2)
      {
        for (j = 0; j != v9; j = (j + 1))
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v26 + 1) + 8 * j);
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __97__NEIKEv2IKESAProposal_chooseSAProposalFromLocalProposals_remoteProposals_preferRemoteProposals___block_invoke_2;
          v25[3] = &unk_1E7F07BD0;
          v25[4] = v16;
          v17 = [proposalsCopy indexOfObjectPassingTest:{v25, v24}];
          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = [proposalsCopy objectAtIndexedSubscript:v17];
            v18 = v16;
            v20 = v19;
            v21 = 0;
LABEL_24:
            v9 = [(NEIKEv2IKESAProposal *)v18 copyFromRemote:v20 preferRemoteProposal:v21];

            goto LABEL_25;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v26 objects:v35 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_25:

  return v9;
}

- (char)softLifetimeSecondsForInitiator:(void *)initiator
{
  lifetimeSeconds = [initiator lifetimeSeconds];
  lifetimeSeconds2 = [initiator lifetimeSeconds];
  v6 = lifetimeSeconds2;
  if (lifetimeSeconds < 0xB)
  {
    result = [initiator lifetimeSeconds];
    v9 = -2;
    if (!a2)
    {
      v9 = -1;
    }

    v10 = &result[v9];
    if (v6 >= 2)
    {
      return v10;
    }
  }

  else
  {
    v7 = 8;
    if (!a2)
    {
      v7 = 9;
    }

    return (lifetimeSeconds2 * v7 / 0xAuLL);
  }

  return result;
}

@end