@interface DMCAppIdentifier
+ (id)newAppIdentifierWithIdentifier:(id)identifier;
- (DMCAppIdentifier)initWithBundleID:(id)d personaID:(id)iD;
- (NSString)identifier;
@end

@implementation DMCAppIdentifier

+ (id)newAppIdentifierWithIdentifier:(id)identifier
{
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^([0-9a-zA-Z\\-\\.]+)(\\s(.*))?" options:0 error:0];
  v6 = [v5 firstMatchInString:identifierCopy options:0 range:{0, objc_msgSend(identifierCopy, "length")}];
  v8 = v6;
  if (v6)
  {
    v9 = [v6 rangeAtIndex:1];
    v11 = [identifierCopy substringWithRange:{v9, v10}];
    [v4 setBundleID:v11];

    if ([v8 numberOfRanges] != 4)
    {
      goto LABEL_12;
    }

    [v8 rangeAtIndex:2];
    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = [v8 rangeAtIndex:3];
    v15 = [identifierCopy substringWithRange:{v13, v14}];
    v16 = [v15 dataUsingEncoding:4];
    v26 = 0;
    v17 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v16 options:0 error:&v26];
    v18 = v26;
    v20 = v18;
    if (v18)
    {
      v21 = *DMCLogObjects(v18, v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v28 = identifierCopy;
        v29 = 2114;
        v30 = v20;
        _os_log_impl(&dword_1B1630000, v21, OS_LOG_TYPE_ERROR, "DMCAppIdentifier (%{public}@): Failed to create json from data with error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v23 = [v17 objectForKeyedSubscript:@"personaID"];
      [v4 setPersonaID:v23];
    }

    if (!v20)
    {
LABEL_12:
      v24 = v4;
      goto LABEL_13;
    }
  }

  else
  {
    v22 = *DMCLogObjects(0, v7);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = identifierCopy;
      _os_log_impl(&dword_1B1630000, v22, OS_LOG_TYPE_ERROR, "DMCAppIdentifier (%{public}@): Failed to find bundleID", buf, 0xCu);
    }
  }

  v24 = 0;
LABEL_13:

  return v24;
}

- (DMCAppIdentifier)initWithBundleID:(id)d personaID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = DMCAppIdentifier;
  v9 = [(DMCAppIdentifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleID, d);
    objc_storeStrong(&v10->_personaID, iD);
  }

  return v10;
}

- (NSString)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  bundleID = [(DMCAppIdentifier *)self bundleID];
  v4 = [bundleID mutableCopy];

  v5 = objc_opt_new();
  personaID = [(DMCAppIdentifier *)self personaID];
  [v5 setObject:personaID forKeyedSubscript:@"personaID"];

  if ([v5 count])
  {
    v15 = 0;
    v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:0 error:&v15];
    v8 = v15;
    v10 = v8;
    if (v8)
    {
      v11 = *DMCLogObjects(v8, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v17 = v10;
        _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_ERROR, "DMCAppIdentifier: Failed to create data from json object with error: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
      [v4 appendFormat:@" %@", v12];
    }
  }

  v13 = [v4 copy];

  return v13;
}

@end