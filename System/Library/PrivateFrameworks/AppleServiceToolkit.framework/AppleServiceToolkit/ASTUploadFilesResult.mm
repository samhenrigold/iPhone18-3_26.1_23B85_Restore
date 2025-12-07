@interface ASTUploadFilesResult
+ (id)resultFromSource:(id)source andUploadDictionaries:(id)dictionaries;
- (ASTUploadFilesResult)initWithCoder:(id)coder;
- (ASTUploadFilesResult)initWithSource:(id)source andCerts:(id)certs andFiles:(id)files;
- (BOOL)isEmpty;
- (id)generatePayload;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASTUploadFilesResult

+ (id)resultFromSource:(id)source andUploadDictionaries:(id)dictionaries
{
  v38 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  dictionariesCopy = dictionaries;
  v27 = [MEMORY[0x277CBEB58] set];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = dictionariesCopy;
  v31 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v31)
  {
    v29 = *v34;
    do
    {
      v6 = 0;
      do
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v33 + 1) + 8 * v6);
        v8 = [v7 objectForKeyedSubscript:@"cert"];
        if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v9 = [v8 objectForKeyedSubscript:@"certString"];
          if (v9)
          {
            v10 = v9;
            objc_opt_class();
            v32 = v10;
            if ((objc_opt_isKindOfClass() & 1) != 0 && ([v27 containsObject:v10] & 1) == 0)
            {
              v11 = [v8 objectForKeyedSubscript:@"pubKeyDigest"];
              v12 = [v8 objectForKeyedSubscript:@"sigAlgo"];
              v13 = [[ASTUploadFilesCertsEntry alloc] initWithCert:v10 andPubKeyDigest:v11 andSigAlgo:v12];
              [v27 addObject:v10];
              [array addObject:v13];
            }
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          v32 = &stru_2852CD800;
        }

        v14 = [v7 objectForKeyedSubscript:@"id"];
        v15 = [v7 objectForKeyedSubscript:@"name"];
        v16 = [v7 objectForKeyedSubscript:@"sig"];
        v17 = [v7 objectForKeyedSubscript:@"pubKeyDigest"];
        v18 = [v7 objectForKeyedSubscript:@"status"];
        v19 = [v7 objectForKeyedSubscript:@"size"];
        v20 = [v7 objectForKeyedSubscript:@"uploadUrl"];
        v21 = [[ASTUploadFilesItemEntry alloc] initWithId:v14 andName:v15 andSig:v16 andPubKeyDigest:v17 andStatus:v18 andSize:v19 andUploadUrl:v20];
        [array2 addObject:v21];

        ++v6;
      }

      while (v31 != v6);
      v22 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      v31 = v22;
    }

    while (v22);
  }

  v23 = [[ASTUploadFilesResult alloc] initWithSource:sourceCopy andCerts:array andFiles:array2];

  return v23;
}

- (ASTUploadFilesResult)initWithSource:(id)source andCerts:(id)certs andFiles:(id)files
{
  sourceCopy = source;
  certsCopy = certs;
  filesCopy = files;
  v15.receiver = self;
  v15.super_class = ASTUploadFilesResult;
  v12 = [(ASTUploadFilesResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_source, source);
    objc_storeStrong(&v13->_certs, certs);
    objc_storeStrong(&v13->_files, files);
  }

  return v13;
}

- (id)generatePayload
{
  v58 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  selfCopy = self;
  certs = [(ASTUploadFilesResult *)self certs];
  v4 = [certs countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v47;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v47 != v6)
        {
          objc_enumerationMutation(certs);
        }

        v8 = *(*(&v46 + 1) + 8 * i);
        sigAlgo = [v8 sigAlgo];
        if (sigAlgo)
        {
          [v8 sigAlgo];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v10 = ;

        v55[0] = @"cert";
        certString = [v8 certString];
        v56[0] = certString;
        v55[1] = @"pubKeyDigest";
        pubKeyDigest = [v8 pubKeyDigest];
        v55[2] = @"sigAlgo";
        v56[1] = pubKeyDigest;
        v56[2] = v10;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:3];

        [array addObject:v13];
      }

      v5 = [certs countByEnumeratingWithState:&v46 objects:v57 count:16];
    }

    while (v5);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [(ASTUploadFilesResult *)selfCopy files];
  v35 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v35)
  {
    v32 = *v43;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v43 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v42 + 1) + 8 * j);
        v52[0] = @"id";
        uploadId = [v15 uploadId];
        if (uploadId)
        {
          [v15 uploadId];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v40 = ;
        v53[0] = v40;
        v52[1] = @"name";
        name = [v15 name];
        if (name)
        {
          [v15 name];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v38 = ;
        v53[1] = v38;
        v52[2] = @"sig";
        v37 = [v15 sig];
        if (v37)
        {
          [v15 sig];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v36 = ;
        v53[2] = v36;
        v52[3] = @"pubKeyDigest";
        pubKeyDigest2 = [v15 pubKeyDigest];
        if (pubKeyDigest2)
        {
          [v15 pubKeyDigest];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v17 = ;
        v53[3] = v17;
        v52[4] = @"status";
        status = [v15 status];
        if (status)
        {
          [v15 status];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v19 = ;
        v53[4] = v19;
        v52[5] = @"size";
        v20 = [v15 size];
        if (v20)
        {
          [v15 size];
        }

        else
        {
          [MEMORY[0x277CCABB0] numberWithLong:0];
        }
        v21 = ;
        v53[5] = v21;
        v52[6] = @"uploadUrl";
        uploadUrl = [v15 uploadUrl];
        if (uploadUrl)
        {
          [v15 uploadUrl];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v23 = ;
        v53[6] = v23;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:7];

        [array2 addObject:v24];
      }

      v35 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v35);
  }

  v50[0] = @"source";
  source = [(ASTUploadFilesResult *)selfCopy source];
  v51[0] = source;
  v50[1] = @"certs";
  v26 = [array copy];
  v51[1] = v26;
  v50[2] = @"files";
  v27 = [array2 copy];
  v51[2] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:3];

  return v28;
}

- (BOOL)isEmpty
{
  files = [(ASTUploadFilesResult *)self files];
  v3 = [files count] == 0;

  return v3;
}

- (ASTUploadFilesResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASTUploadFilesResult *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"certs"];
    certs = v5->_certs;
    v5->_certs = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"files"];
    files = v5->_files;
    v5->_files = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  certs = [(ASTUploadFilesResult *)self certs];
  [coderCopy encodeObject:certs forKey:@"certs"];

  files = [(ASTUploadFilesResult *)self files];
  [coderCopy encodeObject:files forKey:@"files"];
}

@end