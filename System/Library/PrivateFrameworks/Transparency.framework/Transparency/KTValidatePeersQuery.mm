@interface KTValidatePeersQuery
- (KTValidatePeersQuery)initWithApplication:(id)application peers:(id)peers;
- (KTValidatePeersQuery)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTValidatePeersQuery

- (KTValidatePeersQuery)initWithApplication:(id)application peers:(id)peers
{
  applicationCopy = application;
  peersCopy = peers;
  v12.receiver = self;
  v12.super_class = KTValidatePeersQuery;
  v8 = [(KTValidatePeersQuery *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(KTValidatePeersQuery *)v8 setApplication:applicationCopy];
    [(KTValidatePeersQuery *)v9 setUriToVerificationInfo:peersCopy];
    v10 = v9;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  application = [(KTValidatePeersQuery *)self application];
  [coderCopy encodeObject:application forKey:@"application"];

  uriToVerificationInfo = [(KTValidatePeersQuery *)self uriToVerificationInfo];
  [coderCopy encodeObject:uriToVerificationInfo forKey:@"uriToVerificationInfo"];

  [coderCopy encodeBool:-[KTValidatePeersQuery fetchNow](self forKey:{"fetchNow"), @"fetchNow"}];
  traceUUID = [(KTValidatePeersQuery *)self traceUUID];

  if (traceUUID)
  {
    traceUUID2 = [(KTValidatePeersQuery *)self traceUUID];
    [coderCopy encodeObject:traceUUID2 forKey:@"traceUUID"];
  }
}

- (KTValidatePeersQuery)initWithCoder:(id)coder
{
  v31[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v31[2] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
  v7 = [v5 setWithArray:v6];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"application"];
  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:@"uriToVerificationInfo"];
  v10 = v9;
  selfCopy2 = 0;
  if (v8 && v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      keyEnumerator = [v10 keyEnumerator];
      v13 = [keyEnumerator countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v27;
        selfCopy = self;
        while (2)
        {
          v16 = 0;
          do
          {
            if (*v27 != v15)
            {
              objc_enumerationMutation(keyEnumerator);
            }

            v17 = *(*(&v26 + 1) + 8 * v16);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ([v10 objectForKeyedSubscript:v17], v18 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v18, (isKindOfClass & 1) == 0))
            {

              selfCopy2 = 0;
              self = selfCopy;
              goto LABEL_18;
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [keyEnumerator countByEnumeratingWithState:&v26 objects:v30 count:16];
          self = selfCopy;
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v25.receiver = self;
      v25.super_class = KTValidatePeersQuery;
      v20 = [(KTValidatePeersQuery *)&v25 init];
      if (v20)
      {
        v21 = v20;
        [(KTValidatePeersQuery *)v20 setUriToVerificationInfo:v10];
        [(KTValidatePeersQuery *)v21 setApplication:v8];
        -[KTValidatePeersQuery setFetchNow:](v21, "setFetchNow:", [coderCopy decodeBoolForKey:@"fetchNow"]);
        v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"traceUUID"];
        [(KTValidatePeersQuery *)v21 setTraceUUID:v22];

        self = v21;
        selfCopy2 = self;
        goto LABEL_18;
      }

      self = 0;
    }

    selfCopy2 = 0;
  }

LABEL_18:

  return selfCopy2;
}

@end