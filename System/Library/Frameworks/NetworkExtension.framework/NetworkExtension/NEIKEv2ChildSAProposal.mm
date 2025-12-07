@interface NEIKEv2ChildSAProposal
+ (NSObject)chooseChildSAProposalFromLocalProposals:(void *)proposals remoteProposals:(int)remoteProposals preferRemoteProposals:(char)preferRemoteProposals checkKEMethod:;
- (BOOL)isEqual:(id)equal;
- (NEIKEv2ChildSAProposal)initWithProtocol:(unint64_t)protocol;
- (NSObject)copyFromRemote:(int)remote preferRemoteProposal:(char)proposal checkKEMethod:;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (id)encryptionProtocol;
- (id)integrityProtocol;
- (id)kemProtocol;
- (uint64_t)isAValidResponse;
- (uint64_t)matchesLocalProposal:(int)proposal preferRemoteProposal:(int)remoteProposal checkKEMethod:;
- (unint64_t)hash;
- (void)copyForRekey;
- (void)copyWithoutKEM;
- (void)setChosenAdditionalKEMProtocols:(void *)protocols;
@end

@implementation NEIKEv2ChildSAProposal

- (id)copyWithZone:(_NSZone *)zone
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setProtocol:{-[NEIKEv2ChildSAProposal protocol](self, "protocol")}];
  encryptionProtocols = [(NEIKEv2ChildSAProposal *)self encryptionProtocols];

  v6 = 0x1E695D000uLL;
  if (encryptionProtocols)
  {
    v7 = objc_alloc(MEMORY[0x1E695DEC8]);
    encryptionProtocols2 = [(NEIKEv2ChildSAProposal *)self encryptionProtocols];
    v9 = [v7 initWithArray:encryptionProtocols2 copyItems:1];
    [v4 setEncryptionProtocols:v9];
  }

  integrityProtocols = [(NEIKEv2ChildSAProposal *)self integrityProtocols];

  if (integrityProtocols)
  {
    v11 = objc_alloc(MEMORY[0x1E695DEC8]);
    integrityProtocols2 = [(NEIKEv2ChildSAProposal *)self integrityProtocols];
    v13 = [v11 initWithArray:integrityProtocols2 copyItems:1];
    [v4 setIntegrityProtocols:v13];
  }

  kemProtocols = [(NEIKEv2ChildSAProposal *)self kemProtocols];

  if (kemProtocols)
  {
    v15 = objc_alloc(MEMORY[0x1E695DEC8]);
    kemProtocols2 = [(NEIKEv2ChildSAProposal *)self kemProtocols];
    v17 = [v15 initWithArray:kemProtocols2 copyItems:1];
    [v4 setKemProtocols:v17];
  }

  if (!self)
  {
    [v4 setAdditionalKEMProtocols:0];
    v37 = 0;
LABEL_21:

    goto LABEL_22;
  }

  additionalKEMProtocols = [(NEIKEv2ChildSAProposal *)self additionalKEMProtocols];

  if (additionalKEMProtocols)
  {
    v64 = v4;
    v19 = objc_alloc(MEMORY[0x1E695DF90]);
    additionalKEMProtocols2 = [(NEIKEv2ChildSAProposal *)self additionalKEMProtocols];
    v21 = [v19 initWithCapacity:{objc_msgSend(additionalKEMProtocols2, "count")}];

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = [(NEIKEv2ChildSAProposal *)self additionalKEMProtocols];
    v22 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v67;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v67 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v66 + 1) + 8 * i);
          v27 = v6;
          v28 = objc_alloc(*(v6 + 3784));
          additionalKEMProtocols3 = [(NEIKEv2ChildSAProposal *)self additionalKEMProtocols];
          v30 = [additionalKEMProtocols3 objectForKeyedSubscript:v26];
          v31 = [v28 initWithArray:v30 copyItems:1];
          [v21 setObject:v31 forKeyedSubscript:v26];

          v6 = v27;
        }

        v23 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
      }

      while (v23);
    }

    v32 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v21];
    v4 = v64;
  }

  else
  {
    v32 = 0;
  }

  [v4 setAdditionalKEMProtocols:{v32, v64}];

  if (objc_getProperty(self, v33, 72, 1))
  {
    v34 = objc_alloc(MEMORY[0x1E695DFD8]);
    v37 = [v34 initWithSet:{objc_getProperty(self, v35, 72, 1)}];
    if (v4)
    {
      objc_setProperty_atomic(v4, v36, v37, 72);
    }

    goto LABEL_21;
  }

LABEL_22:
  [v4 setLifetimeSeconds:{-[NEIKEv2ChildSAProposal lifetimeSeconds](self, "lifetimeSeconds")}];
  if (self)
  {
    proposalNumber = self->_proposalNumber;
    if (!v4)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  proposalNumber = 0;
  if (v4)
  {
LABEL_24:
    v4[8] = proposalNumber;
  }

LABEL_25:
  if (self)
  {
    Property = objc_getProperty(self, v38, 80, 1);
  }

  else
  {
    Property = 0;
  }

  v42 = [Property copy];
  if (v4)
  {
    objc_setProperty_atomic(v4, v41, v42, 80);
  }

  if (self)
  {
    v44 = objc_getProperty(self, v43, 88, 1);
  }

  else
  {
    v44 = 0;
  }

  v46 = [v44 copy];
  if (v4)
  {
    objc_setProperty_atomic(v4, v45, v46, 88);
  }

  if (self)
  {
    v48 = objc_getProperty(self, v47, 96, 1);
  }

  else
  {
    v48 = 0;
  }

  v50 = [v48 copy];
  if (v4)
  {
    objc_setProperty_atomic(v4, v49, v50, 96);
  }

  if (self)
  {
    v52 = objc_getProperty(self, v51, 104, 1);
  }

  else
  {
    v52 = 0;
  }

  v54 = [v52 copy];
  if (v4)
  {
    objc_setProperty_atomic(v4, v53, v54, 104);
  }

  if (self)
  {
    v56 = objc_getProperty(self, v55, 112, 1);
  }

  else
  {
    v56 = 0;
  }

  v58 = [v56 copy];
  if (v4)
  {
    objc_setProperty_atomic(v4, v57, v58, 112);
  }

  chosenAdditionalKEMProtocols = [(NEIKEv2IKESAProposal *)self chosenAdditionalKEMProtocols];

  if (chosenAdditionalKEMProtocols)
  {
    v60 = objc_alloc(MEMORY[0x1E695DF20]);
    chosenAdditionalKEMProtocols2 = [(NEIKEv2IKESAProposal *)self chosenAdditionalKEMProtocols];
    v62 = [v60 initWithDictionary:chosenAdditionalKEMProtocols2 copyItems:1];
    [(NEIKEv2ChildSAProposal *)v4 setChosenAdditionalKEMProtocols:v62];
  }

  return v4;
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
    v17 = protocolsCopy[15];
    protocolsCopy[15] = v15;

    objc_sync_exit(protocolsCopy);
  }
}

- (unint64_t)hash
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = 16777619 * ([(NEIKEv2ChildSAProposal *)self protocol]^ 0x811C9DC5);
  v4 = 16777619 * (v3 ^ [(NEIKEv2ChildSAProposal *)self lifetimeSeconds]);
  encryptionProtocols = [(NEIKEv2ChildSAProposal *)self encryptionProtocols];
  v6 = [encryptionProtocols count];

  if (v6)
  {
    encryptionProtocols2 = [(NEIKEv2ChildSAProposal *)self encryptionProtocols];
    v4 = 16777619 * ([encryptionProtocols2 count] ^ v4);

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    encryptionProtocols3 = [(NEIKEv2ChildSAProposal *)self encryptionProtocols];
    v9 = [encryptionProtocols3 countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v55;
      do
      {
        v12 = 0;
        do
        {
          if (*v55 != v11)
          {
            objc_enumerationMutation(encryptionProtocols3);
          }

          v4 = 16777619 * (v4 ^ [*(*(&v54 + 1) + 8 * v12++) hash] ^ 0x1000000);
        }

        while (v10 != v12);
        v10 = [encryptionProtocols3 countByEnumeratingWithState:&v54 objects:v61 count:16];
      }

      while (v10);
    }
  }

  integrityProtocols = [(NEIKEv2ChildSAProposal *)self integrityProtocols];
  v14 = [integrityProtocols count];

  if (v14)
  {
    integrityProtocols2 = [(NEIKEv2ChildSAProposal *)self integrityProtocols];
    v4 = 16777619 * ([integrityProtocols2 count] ^ v4);

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    integrityProtocols3 = [(NEIKEv2ChildSAProposal *)self integrityProtocols];
    v17 = [integrityProtocols3 countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v51;
      do
      {
        v20 = 0;
        do
        {
          if (*v51 != v19)
          {
            objc_enumerationMutation(integrityProtocols3);
          }

          v4 = 16777619 * (v4 ^ [*(*(&v50 + 1) + 8 * v20++) hash] ^ 0x3000000);
        }

        while (v18 != v20);
        v18 = [integrityProtocols3 countByEnumeratingWithState:&v50 objects:v60 count:16];
      }

      while (v18);
    }
  }

  kemProtocols = [(NEIKEv2ChildSAProposal *)self kemProtocols];
  v22 = [kemProtocols count];

  if (v22)
  {
    kemProtocols2 = [(NEIKEv2ChildSAProposal *)self kemProtocols];
    v4 = 16777619 * ([kemProtocols2 count] ^ v4);

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    kemProtocols3 = [(NEIKEv2ChildSAProposal *)self kemProtocols];
    v25 = [kemProtocols3 countByEnumeratingWithState:&v46 objects:v59 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v47;
      do
      {
        v28 = 0;
        do
        {
          if (*v47 != v27)
          {
            objc_enumerationMutation(kemProtocols3);
          }

          v4 = 16777619 * (v4 ^ [*(*(&v46 + 1) + 8 * v28++) hash] ^ 0x4000000);
        }

        while (v26 != v28);
        v26 = [kemProtocols3 countByEnumeratingWithState:&v46 objects:v59 count:16];
      }

      while (v26);
    }
  }

  additionalKEMProtocols = [(NEIKEv2ChildSAProposal *)self additionalKEMProtocols];
  v30 = [additionalKEMProtocols count];

  if (v30)
  {
    for (i = 6; i != 13; ++i)
    {
      additionalKEMProtocols2 = [(NEIKEv2ChildSAProposal *)self additionalKEMProtocols];
      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
      v34 = [additionalKEMProtocols2 objectForKeyedSubscript:v33];

      if ([v34 count])
      {
        v35 = [v34 count];
        v42 = 0u;
        v43 = 0u;
        v4 = 16777619 * (v35 ^ v4);
        v44 = 0u;
        v45 = 0u;
        v36 = v34;
        v37 = [v36 countByEnumeratingWithState:&v42 objects:v58 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v43;
          do
          {
            v40 = 0;
            do
            {
              if (*v43 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v4 = 16777619 * (v4 ^ (i << 24) ^ [*(*(&v42 + 1) + 8 * v40++) hash]);
            }

            while (v38 != v40);
            v38 = [v36 countByEnumeratingWithState:&v42 objects:v58 count:16];
          }

          while (v38);
        }
      }
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && [equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    protocol = [(NEIKEv2ChildSAProposal *)self protocol];
    if (protocol == [v5 protocol])
    {
      encryptionProtocols = [(NEIKEv2ChildSAProposal *)self encryptionProtocols];
      encryptionProtocols2 = [v5 encryptionProtocols];
      v9 = encryptionProtocols2;
      if (encryptionProtocols == encryptionProtocols2)
      {
      }

      else
      {
        encryptionProtocols3 = [(NEIKEv2ChildSAProposal *)self encryptionProtocols];
        encryptionProtocols4 = [v5 encryptionProtocols];
        v12 = [encryptionProtocols3 isEqual:encryptionProtocols4];

        if (!v12)
        {
          goto LABEL_41;
        }
      }

      if (self)
      {
        Property = objc_getProperty(self, v13, 96, 1);
      }

      else
      {
        Property = 0;
      }

      v16 = Property;
      v18 = objc_getProperty(v5, v17, 96, 1);

      if (v16 != v18)
      {
        v20 = self ? objc_getProperty(self, v19, 96, 1) : 0;
        v21 = v20;
        v23 = [v21 isEqual:{objc_getProperty(v5, v22, 96, 1)}];

        if (!v23)
        {
          goto LABEL_41;
        }
      }

      integrityProtocols = [(NEIKEv2ChildSAProposal *)self integrityProtocols];
      integrityProtocols2 = [v5 integrityProtocols];
      v26 = integrityProtocols2;
      if (integrityProtocols == integrityProtocols2)
      {
      }

      else
      {
        integrityProtocols3 = [(NEIKEv2ChildSAProposal *)self integrityProtocols];
        integrityProtocols4 = [v5 integrityProtocols];
        v29 = [integrityProtocols3 isEqual:integrityProtocols4];

        if (!v29)
        {
          goto LABEL_41;
        }
      }

      if (self)
      {
        v31 = objc_getProperty(self, v30, 104, 1);
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;
      v34 = objc_getProperty(v5, v33, 104, 1);

      if (v32 != v34)
      {
        v36 = self ? objc_getProperty(self, v35, 104, 1) : 0;
        v37 = v36;
        v39 = [v37 isEqual:{objc_getProperty(v5, v38, 104, 1)}];

        if (!v39)
        {
          goto LABEL_41;
        }
      }

      kemProtocols = [(NEIKEv2ChildSAProposal *)self kemProtocols];
      kemProtocols2 = [v5 kemProtocols];
      v42 = kemProtocols2;
      if (kemProtocols == kemProtocols2)
      {
      }

      else
      {
        kemProtocols3 = [(NEIKEv2ChildSAProposal *)self kemProtocols];
        kemProtocols4 = [v5 kemProtocols];
        v45 = [kemProtocols3 isEqual:kemProtocols4];

        if (!v45)
        {
          goto LABEL_41;
        }
      }

      if (self)
      {
        v47 = objc_getProperty(self, v46, 112, 1);
      }

      else
      {
        v47 = 0;
      }

      v48 = v47;
      v50 = objc_getProperty(v5, v49, 112, 1);

      if (v48 != v50)
      {
        v52 = self ? objc_getProperty(self, v51, 112, 1) : 0;
        v53 = v52;
        v55 = [v53 isEqual:{objc_getProperty(v5, v54, 112, 1)}];

        if (!v55)
        {
          goto LABEL_41;
        }
      }

      additionalKEMProtocols = [(NEIKEv2ChildSAProposal *)self additionalKEMProtocols];
      additionalKEMProtocols2 = [v5 additionalKEMProtocols];
      v58 = additionalKEMProtocols2;
      if (additionalKEMProtocols == additionalKEMProtocols2)
      {
      }

      else
      {
        additionalKEMProtocols3 = [(NEIKEv2ChildSAProposal *)self additionalKEMProtocols];
        additionalKEMProtocols4 = [v5 additionalKEMProtocols];
        v61 = [additionalKEMProtocols3 isEqual:additionalKEMProtocols4];

        if (!v61)
        {
          goto LABEL_41;
        }
      }

      chosenAdditionalKEMProtocols = [(NEIKEv2IKESAProposal *)self chosenAdditionalKEMProtocols];
      chosenAdditionalKEMProtocols2 = [(NEIKEv2IKESAProposal *)v5 chosenAdditionalKEMProtocols];
      v64 = chosenAdditionalKEMProtocols2;
      if (chosenAdditionalKEMProtocols == chosenAdditionalKEMProtocols2)
      {
      }

      else
      {
        chosenAdditionalKEMProtocols3 = [(NEIKEv2IKESAProposal *)self chosenAdditionalKEMProtocols];
        chosenAdditionalKEMProtocols4 = [(NEIKEv2IKESAProposal *)v5 chosenAdditionalKEMProtocols];
        v67 = [chosenAdditionalKEMProtocols3 isEqual:chosenAdditionalKEMProtocols4];

        if (!v67)
        {
          goto LABEL_41;
        }
      }

      lifetimeSeconds = [(NEIKEv2ChildSAProposal *)self lifetimeSeconds];
      v14 = lifetimeSeconds == [v5 lifetimeSeconds];
      goto LABEL_42;
    }

LABEL_41:
    v14 = 0;
LABEL_42:

    goto LABEL_43;
  }

  v14 = 0;
LABEL_43:

  return v14;
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  v8 = NEIKEv2ProtocolIDCreateString([(NEIKEv2ChildSAProposal *)self protocol]);
  [v7 appendPrettyObject:v8 withName:@"Protocol" andIndent:v5 options:options];

  if (self)
  {
    [v7 appendPrettyInt:self->_proposalNumber withName:@"Number" andIndent:v5 options:options];
    [v7 appendPrettyObject:objc_getProperty(self withName:v9 andIndent:80 options:{1), @"Local SPI", v5, options}];
    [v7 appendPrettyObject:objc_getProperty(self withName:v10 andIndent:88 options:{1), @"Remote SPI", v5, options}];
    Property = objc_getProperty(self, v11, 96, 1);
  }

  else
  {
    [v7 appendPrettyInt:0 withName:@"Number" andIndent:v5 options:options];
    [v7 appendPrettyObject:0 withName:@"Local SPI" andIndent:v5 options:options];
    [v7 appendPrettyObject:0 withName:@"Remote SPI" andIndent:v5 options:options];
    Property = 0;
  }

  [v7 appendPrettyObject:Property withName:@"Chosen Encryption" andIndent:v5 options:options];
  encryptionProtocols = [(NEIKEv2ChildSAProposal *)self encryptionProtocols];
  [v7 appendPrettyObject:encryptionProtocols withName:@"Encryption" andIndent:v5 options:options];

  if (self)
  {
    [v7 appendPrettyObject:objc_getProperty(self withName:v14 andIndent:104 options:{1), @"Chosen Integrity", v5, options}];
    integrityProtocols = [(NEIKEv2ChildSAProposal *)self integrityProtocols];
    [v7 appendPrettyObject:integrityProtocols withName:@"Integrity" andIndent:v5 options:options];

    v17 = objc_getProperty(self, v16, 112, 1);
  }

  else
  {
    [v7 appendPrettyObject:0 withName:@"Chosen Integrity" andIndent:v5 options:options];
    integrityProtocols2 = [0 integrityProtocols];
    [v7 appendPrettyObject:integrityProtocols2 withName:@"Integrity" andIndent:v5 options:options];

    v17 = 0;
  }

  [v7 appendPrettyObject:v17 withName:@"Chosen KE" andIndent:v5 options:options];
  kemProtocols = [(NEIKEv2ChildSAProposal *)self kemProtocols];
  [v7 appendPrettyObject:kemProtocols withName:@"KE" andIndent:v5 options:options];

  chosenAdditionalKEMProtocols = [(NEIKEv2IKESAProposal *)self chosenAdditionalKEMProtocols];
  [v7 appendPrettyObject:chosenAdditionalKEMProtocols withName:@"Chosen ADDKE" andIndent:v5 options:options];

  additionalKEMProtocols = [(NEIKEv2ChildSAProposal *)self additionalKEMProtocols];
  [v7 appendPrettyObject:additionalKEMProtocols withName:@"ADDKE" andIndent:v5 options:options];

  if (self)
  {
    v22 = objc_getProperty(self, v21, 72, 1);
  }

  else
  {
    v22 = 0;
  }

  [v7 appendPrettyObject:v22 withName:@"Unsupported Transform Types" andIndent:v5 options:options];
  if ([(NEIKEv2ChildSAProposal *)self lifetimeSeconds])
  {
    [v7 appendPrettyInt:-[NEIKEv2ChildSAProposal lifetimeSeconds](self withName:"lifetimeSeconds") andIndent:@"Lifetime" options:{v5, options}];
  }

  return v7;
}

- (NEIKEv2ChildSAProposal)initWithProtocol:(unint64_t)protocol
{
  v10.receiver = self;
  v10.super_class = NEIKEv2ChildSAProposal;
  v4 = [(NEIKEv2ChildSAProposal *)&v10 init];
  v5 = v4;
  if (v4)
  {
    [(NEIKEv2ChildSAProposal *)v4 setProtocol:protocol];
    v5->_noESNTransformPresent = 1;
    v6 = v5;
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "[super init] failed", v9, 2u);
    }
  }

  return v5;
}

- (id)encryptionProtocol
{
  selfCopy = self;
  if (self)
  {
    if (objc_getProperty(self, a2, 96, 1))
    {
      selfCopy = objc_getProperty(selfCopy, v3, 96, 1);
    }

    else
    {
      encryptionProtocols = [selfCopy encryptionProtocols];
      selfCopy = [encryptionProtocols firstObject];
    }
  }

  return selfCopy;
}

- (id)integrityProtocol
{
  selfCopy = self;
  if (self)
  {
    if (objc_getProperty(self, a2, 104, 1))
    {
      selfCopy = objc_getProperty(selfCopy, v3, 104, 1);
    }

    else
    {
      integrityProtocols = [selfCopy integrityProtocols];
      selfCopy = [integrityProtocols firstObject];
    }
  }

  return selfCopy;
}

- (id)kemProtocol
{
  selfCopy = self;
  if (self)
  {
    if (objc_getProperty(self, a2, 112, 1))
    {
      selfCopy = objc_getProperty(selfCopy, v3, 112, 1);
    }

    else
    {
      kemProtocols = [selfCopy kemProtocols];
      selfCopy = [kemProtocols firstObject];
    }
  }

  return selfCopy;
}

- (NSObject)copyFromRemote:(int)remote preferRemoteProposal:(char)proposal checkKEMethod:
{
  v166 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  if (!self)
  {
    goto LABEL_170;
  }

  if (!v7)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v165 = "[NEIKEv2ChildSAProposal copyFromRemote:preferRemoteProposal:checkKEMethod:]";
      _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "%s called with null remote", buf, 0xCu);
    }

    goto LABEL_168;
  }

  v9 = [self copy];
  if (!objc_getProperty(v8, v10, 80, 1))
  {
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_167;
    }

    *buf = 0;
    v23 = "Remote proposal has invalid SPI";
LABEL_172:
    _os_log_error_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_ERROR, v23, buf, 2u);
    goto LABEL_167;
  }

  Property = objc_getProperty(v8, v11, 80, 1);
  if (v9)
  {
    objc_setProperty_atomic(v9, v13, Property, 88);
    if (v8[8])
    {
      LOBYTE(v9[1].isa) = v8[8];
      goto LABEL_7;
    }

LABEL_166:
    v22 = ne_log_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "Remote proposal has invalid proposal number 0";
      goto LABEL_172;
    }

    goto LABEL_167;
  }

  if (!v8[8])
  {
    goto LABEL_166;
  }

LABEL_7:
  if ([self protocol]== 240)
  {
    goto LABEL_72;
  }

  if (remote)
  {
    v154 = 0uLL;
    v155 = 0uLL;
    v152 = 0uLL;
    v153 = 0uLL;
    encryptionProtocols = [v8 encryptionProtocols];
    v15 = [encryptionProtocols countByEnumeratingWithState:&v152 objects:v163 count:16];
    if (v15)
    {
      v16 = v15;
      remoteCopy = remote;
      v17 = *v153;
LABEL_11:
      v18 = 0;
      while (1)
      {
        if (*v153 != v17)
        {
          objc_enumerationMutation(encryptionProtocols);
        }

        v19 = *(*(&v152 + 1) + 8 * v18);
        encryptionProtocols2 = [v9 encryptionProtocols];
        v21 = [encryptionProtocols2 indexOfObject:v19];

        if (v21 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [encryptionProtocols countByEnumeratingWithState:&v152 objects:v163 count:16];
          if (v16)
          {
            goto LABEL_11;
          }

          goto LABEL_28;
        }
      }

      encryptionProtocols3 = [v9 encryptionProtocols];
      v34 = [encryptionProtocols3 objectAtIndexedSubscript:v21];
      v36 = v34;
      if (!v9)
      {

        goto LABEL_174;
      }

      objc_setProperty_atomic(v9, v35, v34, 96);

      v38 = objc_getProperty(v9, v37, 96, 1);
      if (!v38 || (v39 = v38[2], v39 > 0x1F) || ((1 << v39) & 0xD0100000) == 0)
      {
LABEL_67:
        v32 = 0;
        goto LABEL_42;
      }

LABEL_41:
      v32 = 1;
LABEL_42:

      goto LABEL_43;
    }
  }

  else
  {
    v150 = 0uLL;
    v151 = 0uLL;
    v148 = 0uLL;
    v149 = 0uLL;
    encryptionProtocols = [v9 encryptionProtocols];
    v24 = [encryptionProtocols countByEnumeratingWithState:&v148 objects:v162 count:16];
    if (v24)
    {
      v25 = v24;
      remoteCopy = 0;
      v26 = *v149;
LABEL_22:
      v27 = 0;
      while (1)
      {
        if (*v149 != v26)
        {
          objc_enumerationMutation(encryptionProtocols);
        }

        v28 = *(*(&v148 + 1) + 8 * v27);
        encryptionProtocols4 = [v8 encryptionProtocols];
        v30 = [encryptionProtocols4 containsObject:v28];

        if (v30)
        {
          break;
        }

        if (v25 == ++v27)
        {
          v25 = [encryptionProtocols countByEnumeratingWithState:&v148 objects:v162 count:16];
          if (v25)
          {
            goto LABEL_22;
          }

LABEL_28:
          v32 = 0;
          remote = remoteCopy;
          goto LABEL_43;
        }
      }

      if (!v9)
      {
LABEL_174:
        v38 = 0;
        v32 = 0;
        remote = remoteCopy;
        goto LABEL_42;
      }

      objc_setProperty_atomic(v9, v31, v28, 96);
      v38 = objc_getProperty(v9, v40, 96, 1);
      remote = 0;
      if (!v38)
      {
        goto LABEL_67;
      }

      v41 = v38[2];
      v42 = v41 > 0x1F;
      v43 = (1 << v41) & 0xD0100000;
      if (v42 || v43 == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_41;
    }
  }

  v32 = 0;
LABEL_43:

  if (!v9 || !objc_getProperty(v9, v45, 96, 1))
  {
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_167;
    }

    *buf = 0;
    v23 = "No chosen encryption protocol";
    goto LABEL_172;
  }

  if (v32)
  {
    goto LABEL_72;
  }

  if (remote)
  {
    v146 = 0uLL;
    v147 = 0uLL;
    v144 = 0uLL;
    v145 = 0uLL;
    integrityProtocols = [v8 integrityProtocols];
    v47 = [integrityProtocols countByEnumeratingWithState:&v144 objects:v161 count:16];
    if (!v47)
    {
      goto LABEL_71;
    }

    v48 = v47;
    remoteCopy2 = remote;
    v49 = *v145;
    while (2)
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v145 != v49)
        {
          objc_enumerationMutation(integrityProtocols);
        }

        v51 = *(*(&v144 + 1) + 8 * i);
        integrityProtocols2 = [v9 integrityProtocols];
        v53 = [integrityProtocols2 indexOfObject:v51];

        if (v53 != 0x7FFFFFFFFFFFFFFFLL)
        {
          integrityProtocols3 = [v9 integrityProtocols];
          v63 = [integrityProtocols3 objectAtIndexedSubscript:v53];
          objc_setProperty_atomic(v9, v64, v63, 104);

          goto LABEL_70;
        }
      }

      v48 = [integrityProtocols countByEnumeratingWithState:&v144 objects:v161 count:16];
      if (v48)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v142 = 0uLL;
    v143 = 0uLL;
    v140 = 0uLL;
    v141 = 0uLL;
    integrityProtocols = [v9 integrityProtocols];
    v54 = [integrityProtocols countByEnumeratingWithState:&v140 objects:v160 count:16];
    if (!v54)
    {
      goto LABEL_71;
    }

    v55 = v54;
    remoteCopy2 = 0;
    v56 = *v141;
    while (2)
    {
      for (j = 0; j != v55; ++j)
      {
        if (*v141 != v56)
        {
          objc_enumerationMutation(integrityProtocols);
        }

        v58 = *(*(&v140 + 1) + 8 * j);
        integrityProtocols4 = [v8 integrityProtocols];
        v60 = [integrityProtocols4 containsObject:v58];

        if (v60)
        {
          objc_setProperty_atomic(v9, v61, v58, 104);
          goto LABEL_70;
        }
      }

      v55 = [integrityProtocols countByEnumeratingWithState:&v140 objects:v160 count:16];
      if (v55)
      {
        continue;
      }

      break;
    }
  }

LABEL_70:
  remote = remoteCopy2;
LABEL_71:

  if (!objc_getProperty(v9, v65, 104, 1))
  {
    v22 = ne_log_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "No chosen integrity protocol";
      goto LABEL_172;
    }

LABEL_167:

LABEL_168:
    self = 0;
    goto LABEL_169;
  }

LABEL_72:
  if ((proposal & 1) == 0)
  {
    v9 = v9;
    self = v9;
    goto LABEL_169;
  }

  kemProtocols = [v9 kemProtocols];
  kemProtocols2 = [v8 kemProtocols];
  v68 = kemProtocols2;
  if (!kemProtocols2)
  {
    self = v9;
    goto LABEL_161;
  }

  if (!kemProtocols)
  {
    v78 = [[NEIKEv2KEMProtocol alloc] initWithMethod:0];
    goto LABEL_90;
  }

  firstObject = [kemProtocols2 firstObject];
  v70 = [kemProtocols indexOfObject:firstObject];

  if (v70 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v78 = [kemProtocols objectAtIndexedSubscript:v70];
LABEL_90:
    v80 = v78;
    if (!v78)
    {
LABEL_150:
      v112 = ne_log_obj();
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v112, OS_LOG_TYPE_ERROR, "No chosen KE method", buf, 2u);
      }

      self = 0;
      goto LABEL_161;
    }

    goto LABEL_91;
  }

  if (!remote)
  {
    v134 = 0uLL;
    v135 = 0uLL;
    v132 = 0uLL;
    v133 = 0uLL;
    v71 = kemProtocols;
    v84 = [v71 countByEnumeratingWithState:&v132 objects:v158 count:16];
    if (v84)
    {
      v85 = v84;
      remoteCopy4 = remote;
      v86 = *v133;
      while (2)
      {
        for (k = 0; k != v85; ++k)
        {
          if (*v133 != v86)
          {
            objc_enumerationMutation(v71);
          }

          v88 = *(*(&v132 + 1) + 8 * k);
          if ([v68 containsObject:v88])
          {
            v111 = v88;
LABEL_147:
            v80 = v111;
            goto LABEL_148;
          }
        }

        v85 = [v71 countByEnumeratingWithState:&v132 objects:v158 count:16];
        if (v85)
        {
          continue;
        }

        goto LABEL_109;
      }
    }

LABEL_144:
    v80 = 0;
    goto LABEL_149;
  }

  v138 = 0uLL;
  v139 = 0uLL;
  v136 = 0uLL;
  v137 = 0uLL;
  v71 = v68;
  v72 = [v71 countByEnumeratingWithState:&v136 objects:v159 count:16];
  if (!v72)
  {
    goto LABEL_144;
  }

  v73 = v72;
  remoteCopy4 = remote;
  v75 = *v137;
  while (2)
  {
    for (m = 0; m != v73; ++m)
    {
      if (*v137 != v75)
      {
        objc_enumerationMutation(v71);
      }

      v77 = [kemProtocols indexOfObject:*(*(&v136 + 1) + 8 * m)];
      if (v77 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v111 = [kemProtocols objectAtIndexedSubscript:v77];
        goto LABEL_147;
      }
    }

    v73 = [v71 countByEnumeratingWithState:&v136 objects:v159 count:16];
    if (v73)
    {
      continue;
    }

    break;
  }

LABEL_109:
  v80 = 0;
LABEL_148:
  remote = remoteCopy4;
LABEL_149:

  if (!v80)
  {
    goto LABEL_150;
  }

LABEL_91:
  if (v9)
  {
    objc_setProperty_atomic(v9, v79, v80, 112);
  }

  additionalKEMProtocols = [v8 additionalKEMProtocols];

  if (!additionalKEMProtocols)
  {
    additionalKEMProtocols2 = [v9 additionalKEMProtocols];

    if (additionalKEMProtocols2)
    {
      [(NEIKEv2ChildSAProposal *)v9 setChosenAdditionalKEMProtocols:?];
    }

    self = v9;

    goto LABEL_161;
  }

  v115 = v68;
  v116 = kemProtocols;
  if ([(NEIKEv2KEMProtocol *)v80 method])
  {
    v82 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v80, 0}];
  }

  else
  {
    v82 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v89 = v82;
  v90 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v91 = 6;
  v117 = v8;
  v118 = v90;
  v119 = v9;
  remoteCopy5 = remote;
  while (1)
  {
    v92 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v91];
    additionalKEMProtocols3 = [v9 additionalKEMProtocols];
    v94 = [additionalKEMProtocols3 objectForKeyedSubscript:v92];

    additionalKEMProtocols4 = [v8 additionalKEMProtocols];
    v123 = v92;
    v96 = [additionalKEMProtocols4 objectForKeyedSubscript:v92];

    if (!v96)
    {
      goto LABEL_127;
    }

    if (v94)
    {
      break;
    }

    v104 = [[NEIKEv2KEMProtocol alloc] initWithMethod:0];
    [v90 setObject:v104 forKeyedSubscript:v123];

LABEL_127:
    v103 = 0;
LABEL_142:

    if (++v91 == 13)
    {
      v110 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v90];
      [(NEIKEv2ChildSAProposal *)v9 setChosenAdditionalKEMProtocols:v110];

      self = v9;
      kemProtocols = v116;
      goto LABEL_160;
    }
  }

  if (remote)
  {
    v130 = 0uLL;
    v131 = 0uLL;
    v128 = 0uLL;
    v129 = 0uLL;
    v97 = v96;
    v98 = [v97 countByEnumeratingWithState:&v128 objects:v157 count:16];
    if (v98)
    {
      v99 = v98;
      v100 = *v129;
      do
      {
        for (n = 0; n != v99; ++n)
        {
          if (*v129 != v100)
          {
            objc_enumerationMutation(v97);
          }

          v102 = [v94 indexOfObject:*(*(&v128 + 1) + 8 * n)];
          if (v102 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v103 = [v94 objectAtIndexedSubscript:v102];
            if (![v89 containsObject:v103])
            {
              goto LABEL_139;
            }
          }
        }

        v99 = [v97 countByEnumeratingWithState:&v128 objects:v157 count:16];
      }

      while (v99);
      v96 = v97;
LABEL_153:
      v8 = v117;
    }

    else
    {
      v96 = v97;
    }

    v90 = v118;
LABEL_156:
  }

  else
  {
    v126 = 0uLL;
    v127 = 0uLL;
    v124 = 0uLL;
    v125 = 0uLL;
    v97 = v94;
    v105 = [v97 countByEnumeratingWithState:&v124 objects:v156 count:16];
    if (!v105)
    {
      v94 = v97;
      goto LABEL_156;
    }

    v106 = v105;
    v107 = *v125;
LABEL_130:
    v108 = 0;
    while (1)
    {
      if (*v125 != v107)
      {
        objc_enumerationMutation(v97);
      }

      v109 = *(*(&v124 + 1) + 8 * v108);
      if (([v89 containsObject:v109] & 1) == 0)
      {
        if ([v96 containsObject:v109])
        {
          break;
        }
      }

      if (v106 == ++v108)
      {
        v106 = [v97 countByEnumeratingWithState:&v124 objects:v156 count:16];
        if (v106)
        {
          goto LABEL_130;
        }

        v94 = v97;
        goto LABEL_153;
      }
    }

    v103 = v109;
LABEL_139:

    v8 = v117;
    v90 = v118;
    remote = remoteCopy5;
    if (v103)
    {
      [v118 setObject:v103 forKeyedSubscript:v123];
      v9 = v119;
      if ([v103 method])
      {
        [v89 addObject:v103];
      }

      goto LABEL_142;
    }
  }

  v9 = v119;
  kemProtocols = v116;
  v113 = ne_log_obj();
  if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1BA83C000, v113, OS_LOG_TYPE_ERROR, "No chosen additional KE methods", buf, 2u);
  }

  self = 0;
LABEL_160:

  v68 = v115;
LABEL_161:

LABEL_169:
LABEL_170:

  return self;
}

- (void)copyForRekey
{
  if (!self)
  {
    return 0;
  }

  v1 = [self copy];
  v3 = v1;
  if (v1)
  {
    objc_setProperty_atomic(v1, v2, 0, 80);
    objc_setProperty_atomic(v3, v4, 0, 88);
    objc_setProperty_atomic(v3, v5, 0, 96);
    objc_setProperty_atomic(v3, v6, 0, 104);
    objc_setProperty_atomic(v3, v7, 0, 112);
    [(NEIKEv2ChildSAProposal *)v3 setChosenAdditionalKEMProtocols:?];
  }

  return v3;
}

- (void)copyWithoutKEM
{
  if (!self)
  {
    return 0;
  }

  v1 = [self copy];
  v3 = v1;
  if (v1)
  {
    objc_setProperty_atomic(v1, v2, 0, 112);
    [(NEIKEv2ChildSAProposal *)v3 setChosenAdditionalKEMProtocols:?];
  }

  [v3 setKemProtocols:0];
  [v3 setAdditionalKEMProtocols:0];
  return v3;
}

- (uint64_t)matchesLocalProposal:(int)proposal preferRemoteProposal:(int)remoteProposal checkKEMethod:
{
  v140 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v9 = v7;
  if (!self)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v137 = "[NEIKEv2ChildSAProposal matchesLocalProposal:preferRemoteProposal:checkKEMethod:]";
    v44 = "%s called with null localProposal";
    goto LABEL_53;
  }

  if (objc_getProperty(self, v8, 72, 1))
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

      goto LABEL_13;
    }

    *buf = 0;
    v29 = "Not matching proposal with unsupported transform type";
    goto LABEL_30;
  }

  protocol = [self protocol];
  if (protocol != [v9 protocol])
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      encryptionProtocols5 = NEIKEv2ProtocolIDCreateString([self protocol]);
      encryptionProtocols6 = NEIKEv2ProtocolIDCreateString([v9 protocol]);
      *buf = 138412546;
      v137 = encryptionProtocols5;
      v138 = 2112;
      v139 = encryptionProtocols6;
      _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "Proposal protocols do not match (%@ vs %@)", buf, 0x16u);
      goto LABEL_74;
    }

LABEL_12:

LABEL_13:
    self = 0;
    goto LABEL_14;
  }

  if ([self protocol] == 240)
  {
    goto LABEL_8;
  }

  encryptionProtocols = [self encryptionProtocols];

  if (!encryptionProtocols)
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v137 = "[NEIKEv2ChildSAProposal matchesLocalProposal:preferRemoteProposal:checkKEMethod:]";
    v29 = "BACKTRACE %s called with null self.encryptionProtocols";
    v30 = v10;
    v31 = 12;
    goto LABEL_31;
  }

  encryptionProtocols2 = [v9 encryptionProtocols];

  if (!encryptionProtocols2)
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v137 = "[NEIKEv2ChildSAProposal matchesLocalProposal:preferRemoteProposal:checkKEMethod:]";
    v44 = "%s called with null localProposal.encryptionProtocols";
LABEL_53:
    _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, v44, buf, 0xCu);
    goto LABEL_5;
  }

  if ((*(self + 9) & 1) == 0)
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v29 = "Not matching proposal missing No ESN transform";
    goto LABEL_30;
  }

  proposalCopy = proposal;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  encryptionProtocols3 = [v9 encryptionProtocols];
  v19 = [encryptionProtocols3 countByEnumeratingWithState:&v124 objects:v135 count:16];
  if (!v19)
  {
    goto LABEL_26;
  }

  v20 = v19;
  v21 = *v125;
LABEL_20:
  v22 = 0;
  while (1)
  {
    if (*v125 != v21)
    {
      objc_enumerationMutation(encryptionProtocols3);
    }

    v23 = *(*(&v124 + 1) + 8 * v22);
    encryptionProtocols4 = [self encryptionProtocols];
    v25 = [encryptionProtocols4 containsObject:v23];

    if (v25)
    {
      break;
    }

    if (v20 == ++v22)
    {
      v20 = [encryptionProtocols3 countByEnumeratingWithState:&v124 objects:v135 count:16];
      if (!v20)
      {
LABEL_26:

        v14 = ne_log_large_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          encryptionProtocols5 = [self encryptionProtocols];
          encryptionProtocols6 = [v9 encryptionProtocols];
          *buf = 138412546;
          v137 = encryptionProtocols5;
          v138 = 2112;
          v139 = encryptionProtocols6;
          v28 = "Failed to match encryption algorithms (%@ vs %@)";
          goto LABEL_28;
        }

        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  if (v23)
  {
    v45 = *(v23 + 16);
    v46 = v45 >= 0x20;
    v47 = 0xD0100000 >> v45;
    if (v46)
    {
      v48 = 0;
    }

    else
    {
      v48 = v47;
    }
  }

  else
  {
    v48 = 0;
  }

  proposal = proposalCopy;

  integrityProtocols = [v9 integrityProtocols];
  if ([integrityProtocols count])
  {
    integrityProtocols2 = [self integrityProtocols];
    v51 = [integrityProtocols2 count];

    if (v51)
    {
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      integrityProtocols3 = [v9 integrityProtocols];
      v53 = [integrityProtocols3 countByEnumeratingWithState:&v120 objects:v134 count:16];
      if (!v53)
      {
        goto LABEL_71;
      }

      v54 = v53;
      v55 = *v121;
LABEL_65:
      v56 = 0;
      while (1)
      {
        if (*v121 != v55)
        {
          objc_enumerationMutation(integrityProtocols3);
        }

        v57 = *(*(&v120 + 1) + 8 * v56);
        integrityProtocols4 = [self integrityProtocols];
        LOBYTE(v57) = [integrityProtocols4 containsObject:v57];

        if (v57)
        {
          break;
        }

        if (v54 == ++v56)
        {
          v54 = [integrityProtocols3 countByEnumeratingWithState:&v120 objects:v134 count:16];
          if (!v54)
          {
LABEL_71:

            v14 = ne_log_large_obj();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              encryptionProtocols5 = [self integrityProtocols];
              encryptionProtocols6 = [v9 integrityProtocols];
              *buf = 138412546;
              v137 = encryptionProtocols5;
              v138 = 2112;
              v139 = encryptionProtocols6;
              v28 = "Failed to match integrity algorithms (%@ vs %@)";
LABEL_28:
              _os_log_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_INFO, v28, buf, 0x16u);
LABEL_74:
            }

            goto LABEL_12;
          }

          goto LABEL_65;
        }
      }

      goto LABEL_8;
    }
  }

  else
  {
  }

  if ((v48 & 1) == 0)
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v29 = "Failed to match integrity algorithms, none provided";
LABEL_30:
    v30 = v10;
    v31 = 2;
LABEL_31:
    _os_log_error_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_ERROR, v29, buf, v31);
    goto LABEL_5;
  }

LABEL_8:
  if (!remoteProposal || ([v9 kemProtocols], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "kemProtocols"), v13 = objc_claimAutoreleasedReturnValue(), !(v13 | v12)))
  {
    self = 1;
    goto LABEL_14;
  }

  v32 = v13;
  v33 = [[NEIKEv2KEMProtocol alloc] initWithMethod:0];
  v133 = v33;
  v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v133 count:1];

  if (!v12 || !v32)
  {
    if (v12)
    {
      v32 = v99;
    }

    else
    {
      v12 = v99;
    }

    v34 = v99;
  }

  firstObject = [v32 firstObject];
  v36 = [v12 indexOfObject:firstObject];

  if (v36 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (proposal)
    {
      v118 = 0uLL;
      v119 = 0uLL;
      v116 = 0uLL;
      v117 = 0uLL;
      v37 = v32;
      v38 = [v37 countByEnumeratingWithState:&v116 objects:v132 count:16];
      if (v38)
      {
        v39 = v38;
        v96 = v32;
        v40 = *v117;
        while (2)
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v117 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = [v12 indexOfObject:*(*(&v116 + 1) + 8 * i)];
            if (v42 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v43 = [v12 objectAtIndexedSubscript:v42];
              goto LABEL_89;
            }
          }

          v39 = [v37 countByEnumeratingWithState:&v116 objects:v132 count:16];
          if (v39)
          {
            continue;
          }

          break;
        }

        v43 = 0;
LABEL_89:
        v32 = v96;
      }

      else
      {
        v43 = 0;
      }
    }

    else
    {
      v114 = 0uLL;
      v115 = 0uLL;
      v112 = 0uLL;
      v113 = 0uLL;
      obj = v12;
      v59 = [obj countByEnumeratingWithState:&v112 objects:v131 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = v32;
        v62 = *v113;
        while (2)
        {
          for (j = 0; j != v60; ++j)
          {
            if (*v113 != v62)
            {
              objc_enumerationMutation(obj);
            }

            v64 = *(*(&v112 + 1) + 8 * j);
            if ([v61 containsObject:v64])
            {
              v43 = v64;
              goto LABEL_91;
            }
          }

          v60 = [obj countByEnumeratingWithState:&v112 objects:v131 count:16];
          if (v60)
          {
            continue;
          }

          break;
        }

        v43 = 0;
LABEL_91:
        v32 = v61;
      }

      else
      {
        v43 = 0;
      }
    }
  }

  else
  {
    v43 = [v12 objectAtIndexedSubscript:v36];
  }

  if (!v43)
  {
    v66 = ne_log_large_obj();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      kemProtocols = [self kemProtocols];
      kemProtocols2 = [v9 kemProtocols];
      *buf = 138412546;
      v137 = kemProtocols;
      v138 = 2112;
      v139 = kemProtocols2;
      _os_log_impl(&dword_1BA83C000, v66, OS_LOG_TYPE_INFO, "Failed to match Key Exchange methods (%@ vs %@)", buf, 0x16u);
    }

    v128 = 0;
    goto LABEL_150;
  }

  additionalKEMProtocols = [self additionalKEMProtocols];
  if (additionalKEMProtocols)
  {
  }

  else
  {
    additionalKEMProtocols2 = [v9 additionalKEMProtocols];

    if (!additionalKEMProtocols2)
    {
      v128 = 1;
      goto LABEL_150;
    }
  }

  v95 = v12;
  v97 = v32;
  v94 = v43;
  if ([v43 method])
  {
    v70 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v43, 0}];
  }

  else
  {
    v70 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v71 = v70;
  v72 = 6;
  v73 = 0x1E696A000uLL;
  v98 = v9;
  proposalCopy2 = proposal;
  while (1)
  {
    v74 = [*(v73 + 3480) numberWithUnsignedInteger:v72];
    additionalKEMProtocols3 = [v9 additionalKEMProtocols];
    v76 = [additionalKEMProtocols3 objectForKeyedSubscript:v74];

    additionalKEMProtocols4 = [self additionalKEMProtocols];
    v78 = [additionalKEMProtocols4 objectForKeyedSubscript:v74];

    if (v76 | v78)
    {
      break;
    }

LABEL_142:

    if (++v72 == 13)
    {
      v128 = 1;
      v32 = v97;
      v43 = v94;
      goto LABEL_149;
    }
  }

  if (v76)
  {
    v79 = v78 == 0;
  }

  else
  {
    v79 = 1;
  }

  if (v79)
  {
    if (v76)
    {
      v78 = v99;
    }

    else
    {
      v76 = v99;
    }

    v80 = v99;
  }

  obja = v74;
  if (proposal)
  {
    v110 = 0uLL;
    v111 = 0uLL;
    v108 = 0uLL;
    v109 = 0uLL;
    v81 = v78;
    v82 = [v81 countByEnumeratingWithState:&v108 objects:v130 count:16];
    if (!v82)
    {
LABEL_144:
      v78 = v81;
      goto LABEL_146;
    }

    v83 = v82;
    v84 = *v109;
LABEL_121:
    v85 = 0;
    while (1)
    {
      if (*v109 != v84)
      {
        objc_enumerationMutation(v81);
      }

      v86 = *(*(&v108 + 1) + 8 * v85);
      if (([v71 containsObject:v86] & 1) == 0)
      {
        if ([v76 containsObject:v86])
        {
          goto LABEL_139;
        }
      }

      if (v83 == ++v85)
      {
        v83 = [v81 countByEnumeratingWithState:&v108 objects:v130 count:16];
        if (v83)
        {
          goto LABEL_121;
        }

        goto LABEL_144;
      }
    }
  }

  v106 = 0uLL;
  v107 = 0uLL;
  v104 = 0uLL;
  v105 = 0uLL;
  v81 = v76;
  v87 = [v81 countByEnumeratingWithState:&v104 objects:v129 count:16];
  if (v87)
  {
    v88 = v87;
    v89 = *v105;
LABEL_131:
    v90 = 0;
    while (1)
    {
      if (*v105 != v89)
      {
        objc_enumerationMutation(v81);
      }

      v86 = *(*(&v104 + 1) + 8 * v90);
      if (([v71 containsObject:v86] & 1) == 0)
      {
        if ([v78 containsObject:v86])
        {
          break;
        }
      }

      if (v88 == ++v90)
      {
        v88 = [v81 countByEnumeratingWithState:&v104 objects:v129 count:16];
        if (v88)
        {
          goto LABEL_131;
        }

        goto LABEL_145;
      }
    }

LABEL_139:
    if ([v86 method])
    {
      [v71 addObject:v86];
    }

    v9 = v98;
    proposal = proposalCopy2;
    v74 = obja;
    v73 = 0x1E696A000;
    goto LABEL_142;
  }

LABEL_145:
  v76 = v81;
LABEL_146:

  v91 = ne_log_large_obj();
  v32 = v97;
  v9 = v98;
  v43 = v94;
  if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
  {
    additionalKEMProtocols5 = [self additionalKEMProtocols];
    additionalKEMProtocols6 = [v98 additionalKEMProtocols];
    *buf = 138412546;
    v137 = additionalKEMProtocols5;
    v138 = 2112;
    v139 = additionalKEMProtocols6;
    _os_log_impl(&dword_1BA83C000, v91, OS_LOG_TYPE_INFO, "Failed to match Additional Key Exchange methods (%@ vs %@)", buf, 0x16u);
  }

  v128 = 0;
LABEL_149:

  v12 = v95;
LABEL_150:

  self = v128;
LABEL_14:

  return self;
}

- (uint64_t)isAValidResponse
{
  v34 = *MEMORY[0x1E69E9840];
  if (!self || objc_getProperty(self, a2, 72, 1) || !self[8])
  {
    return 0;
  }

  if ([self protocol] != 240)
  {
    if ((self[9] & 1) == 0)
    {
      return 0;
    }

    encryptionProtocols = [self encryptionProtocols];
    v22 = [encryptionProtocols count];

    if (v22 != 1)
    {
      return 0;
    }

    encryptionProtocols2 = [self encryptionProtocols];
    firstObject = [encryptionProtocols2 firstObject];
    if (firstObject)
    {
      v25 = firstObject[2];
      v26 = v25 > 0x1F || (((1 << v25) & 0xD0100000) == 0);
    }

    else
    {
      v26 = 1;
    }

    integrityProtocols = [self integrityProtocols];
    v28 = [integrityProtocols count];

    if (v28 != v26)
    {
      return 0;
    }
  }

  kemProtocols = [self kemProtocols];
  v6 = [kemProtocols count];

  if (v6 > 1)
  {
    return 0;
  }

  additionalKEMProtocols = [self additionalKEMProtocols];

  if (!additionalKEMProtocols)
  {
    return 1;
  }

  kemProtocols2 = [self kemProtocols];
  v9 = [kemProtocols2 count];

  if (v9 != 1)
  {
    return 0;
  }

  additionalKEMProtocols2 = [self additionalKEMProtocols];
  v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(additionalKEMProtocols2, "count") + 1}];
  kemProtocols3 = [self kemProtocols];
  firstObject2 = [kemProtocols3 firstObject];
  [v11 addObject:firstObject2];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = additionalKEMProtocols2;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [v14 objectForKeyedSubscript:{*(*(&v29 + 1) + 8 * i), v29}];
        if ([v19 count] != 1)
        {
          goto LABEL_33;
        }

        firstObject3 = [v19 firstObject];
        if ([v11 containsObject:firstObject3])
        {

LABEL_33:
          v3 = 0;
          goto LABEL_34;
        }

        if ([firstObject3 method])
        {
          [v11 addObject:firstObject3];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      v3 = 1;
      if (v16)
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

LABEL_34:

  return v3;
}

+ (NSObject)chooseChildSAProposalFromLocalProposals:(void *)proposals remoteProposals:(int)remoteProposals preferRemoteProposals:(char)preferRemoteProposals checkKEMethod:
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a2;
  proposalsCopy = proposals;
  objc_opt_self();
  v28 = v8;
  if (!v8)
  {
    obj = ne_log_obj();
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_21;
    }

    *buf = 136315138;
    v46 = "+[NEIKEv2ChildSAProposal chooseChildSAProposalFromLocalProposals:remoteProposals:preferRemoteProposals:checkKEMethod:]";
    v26 = "%s called with null localProposals";
LABEL_29:
    _os_log_fault_impl(&dword_1BA83C000, obj, OS_LOG_TYPE_FAULT, v26, buf, 0xCu);
    goto LABEL_21;
  }

  if (!proposalsCopy)
  {
    obj = ne_log_obj();
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_21;
    }

    *buf = 136315138;
    v46 = "+[NEIKEv2ChildSAProposal chooseChildSAProposalFromLocalProposals:remoteProposals:preferRemoteProposals:checkKEMethod:]";
    v26 = "%s called with null remoteProposals";
    goto LABEL_29;
  }

  if (!remoteProposals)
  {
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    obj = v8;
    v17 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v32 + 1) + 8 * i);
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __118__NEIKEv2ChildSAProposal_chooseChildSAProposalFromLocalProposals_remoteProposals_preferRemoteProposals_checkKEMethod___block_invoke_2;
          v29[3] = &unk_1E7F07BF8;
          v29[4] = v21;
          v30 = 0;
          preferRemoteProposalsCopy = preferRemoteProposals;
          v22 = [proposalsCopy indexOfObjectPassingTest:v29];
          if (v22 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v24 = [proposalsCopy objectAtIndexedSubscript:v22];
            v16 = [(NEIKEv2ChildSAProposal *)v21 copyFromRemote:v24 preferRemoteProposal:0 checkKEMethod:preferRemoteProposals];

            goto LABEL_24;
          }
        }

        v18 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_21;
  }

  v41 = 0uLL;
  v42 = 0uLL;
  v39 = 0uLL;
  v40 = 0uLL;
  obj = proposalsCopy;
  v10 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (!v10)
  {
LABEL_21:
    v16 = 0;
    goto LABEL_24;
  }

  v11 = v10;
  v12 = *v40;
  while (2)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*v40 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v39 + 1) + 8 * j);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __118__NEIKEv2ChildSAProposal_chooseChildSAProposalFromLocalProposals_remoteProposals_preferRemoteProposals_checkKEMethod___block_invoke;
      v36[3] = &unk_1E7F07BF8;
      v36[4] = v14;
      remoteProposalsCopy = remoteProposals;
      preferRemoteProposalsCopy2 = preferRemoteProposals;
      v15 = [v28 indexOfObjectPassingTest:v36];
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = [v28 objectAtIndexedSubscript:v15];
        v16 = [(NEIKEv2ChildSAProposal *)v23 copyFromRemote:v14 preferRemoteProposal:1 checkKEMethod:preferRemoteProposals];

        goto LABEL_24;
      }
    }

    v11 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  v16 = 0;
LABEL_24:

  return v16;
}

@end