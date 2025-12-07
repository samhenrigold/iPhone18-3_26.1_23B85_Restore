@interface IDSLocalPairingRecord
- (IDSLocalPairingRecord)initWithCoder:(id)coder;
- (IDSLocalPairingRecord)initWithIdentityDataClassA:(id)a classC:(id)c classD:(id)d;
- (id)identityDataForDataProtectionClass:(unsigned int)class error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSLocalPairingRecord

- (id)identityDataForDataProtectionClass:(unsigned int)class error:(id *)error
{
  v5 = *&class;
  v22[1] = *MEMORY[0x1E69E9840];
  protectionClassIdentityDataMap = [(IDSLocalPairingRecord *)self protectionClassIdentityDataMap];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  v8 = [protectionClassIdentityDataMap objectForKeyedSubscript:v7];

  if (v8)
  {
    identityData = [v8 identityData];
    if (identityData)
    {

      goto LABEL_5;
    }

    error = [v8 error];

    if (error)
    {
LABEL_5:
      error2 = [v8 error];
      if (!error)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v15 = MEMORY[0x1E696AEC0];
  v16 = IDSDataProtectionClassStringFromDataProtectionClass();
  v17 = [v15 stringWithFormat:@"Missing identity for class-%@", v16];

  v18 = MEMORY[0x1E696ABC0];
  v19 = *MEMORY[0x1E69A4CB8];
  v21 = *MEMORY[0x1E696A278];
  v22[0] = v17;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  error2 = [v18 errorWithDomain:v19 code:7 userInfo:v20];

  if (error)
  {
LABEL_6:
    v12 = error2;
    *error = error2;
  }

LABEL_7:
  identityData2 = [v8 identityData];

  return identityData2;
}

- (IDSLocalPairingRecord)initWithIdentityDataClassA:(id)a classC:(id)c classD:(id)d
{
  aCopy = a;
  cCopy = c;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = IDSLocalPairingRecord;
  v11 = [(IDSLocalPairingRecord *)&v15 init];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSDictionary *)v12 setObject:aCopy forKeyedSubscript:&unk_1F0A29948];
    [(NSDictionary *)v12 setObject:cCopy forKeyedSubscript:&unk_1F0A29960];
    [(NSDictionary *)v12 setObject:dCopy forKeyedSubscript:&unk_1F0A29978];
    protectionClassIdentityDataMap = v11->_protectionClassIdentityDataMap;
    v11->_protectionClassIdentityDataMap = v12;
  }

  return v11;
}

- (IDSLocalPairingRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = IDSLocalPairingRecord;
  v5 = [(IDSLocalPairingRecord *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"kIdentityDataMap"];
    protectionClassIdentityDataMap = v5->_protectionClassIdentityDataMap;
    v5->_protectionClassIdentityDataMap = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protectionClassIdentityDataMap = [(IDSLocalPairingRecord *)self protectionClassIdentityDataMap];
  [coderCopy encodeObject:protectionClassIdentityDataMap forKey:@"kIdentityDataMap"];
}

@end