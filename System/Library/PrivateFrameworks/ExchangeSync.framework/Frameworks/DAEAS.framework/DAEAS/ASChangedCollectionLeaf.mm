@interface ASChangedCollectionLeaf
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (ASChangedCollectionLeaf)init;
- (ASChangedCollectionLeaf)initWithCoder:(id)coder;
- (int64_t)dataclass;
- (void)appendActiveSyncDataForTask:(id)task toWBXMLData:(id)data;
- (void)encodeWithCoder:(id)coder;
- (void)loadClientIDs;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
@end

@implementation ASChangedCollectionLeaf

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_21 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_21;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_21 = v2;
    acceptsTopLevelLeaves___haveChecked_21 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_21 == 1)
  {
    v2 = parsingLeafNode___result_21;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_21 = v2;
    parsingLeafNode___haveChecked_21 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_21 == 1)
  {
    v2 = parsingWithSubItems___result_21;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_21 = v2;
    parsingWithSubItems___haveChecked_21 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_21 == 1)
  {
    v2 = frontingBasicTypes___result_21;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_21 = v2;
    frontingBasicTypes___haveChecked_21 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_21 == 1)
  {
    v2 = notifyOfUnknownTokens___result_21;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_21 = v2;
    notifyOfUnknownTokens___haveChecked_21 = 1;
  }

  return v2 & 1;
}

- (ASChangedCollectionLeaf)init
{
  v5.receiver = self;
  v5.super_class = ASChangedCollectionLeaf;
  v2 = [(ASItem *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ASChangedCollectionLeaf *)v2 setValidateOpeningTokens:1];
  }

  return v3;
}

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  v50 = *MEMORY[0x277D85DE8];
  v45.receiver = self;
  v45.super_class = ASChangedCollectionLeaf;
  [(ASItem *)&v45 parseASParseContext:context root:root parent:parent callbackDict:dict streamCallbackDict:callbackDict account:account];
  parsingState = self->super._parsingState;
  if (parsingState < 2)
  {
    return;
  }

  if (parsingState == 4 || parsingState == 3)
  {
    self->super._parsingState = parsingState;
    return;
  }

  [(ASChangedCollectionLeaf *)self setIsResponse:0];
  if (![(ASChangedCollectionLeaf *)self validateOpeningTokens])
  {
    [(ASChangedCollectionLeaf *)self setStatus:&unk_285D57BA0];
    [(ASChangedCollectionLeaf *)self setChangeType:0];
    return;
  }

  v10 = self->super._token & 0x3F;
  if (v10 <= 8)
  {
    if (v10 == 7)
    {
      selfCopy5 = self;
      v12 = 0;
      goto LABEL_19;
    }

    if (v10 == 8)
    {
      selfCopy5 = self;
      v12 = 1;
      goto LABEL_19;
    }

LABEL_38:
    v36 = DALoggingwithCategory();
    v37 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v36, v37))
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      token = self->super._token;
      *buf = 138412546;
      v47 = v39;
      v48 = 1024;
      v49 = token;
      _os_log_impl(&dword_24A0AC000, v36, v37, "%@ created with unknown token %d", buf, 0x12u);
    }

    status = [(ASChangedCollectionLeaf *)self status];
    if (!status || (v42 = status, -[ASChangedCollectionLeaf status](self, "status"), v43 = objc_claimAutoreleasedReturnValue(), v44 = [v43 intValue], v43, v42, v44 == 1))
    {
      [(ASChangedCollectionLeaf *)self setStatus:&unk_285D57B88];
    }

    goto LABEL_20;
  }

  if (v10 == 9)
  {
    selfCopy5 = self;
    v12 = 2;
    goto LABEL_19;
  }

  if (v10 == 10)
  {
    selfCopy5 = self;
    v12 = 3;
    goto LABEL_19;
  }

  if (v10 != 33)
  {
    goto LABEL_38;
  }

  selfCopy5 = self;
  v12 = 7;
LABEL_19:
  [(ASChangedCollectionLeaf *)selfCopy5 setChangeType:v12];
LABEL_20:
  if (self->super._codePage)
  {
    v13 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      codePage = self->super._codePage;
      *buf = 138412546;
      v47 = v16;
      v48 = 1024;
      v49 = codePage;
      _os_log_impl(&dword_24A0AC000, v13, v14, "%@ created with unknown code page %d", buf, 0x12u);
    }

    status2 = [(ASChangedCollectionLeaf *)self status];
    if (!status2 || (v19 = status2, -[ASChangedCollectionLeaf status](self, "status"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 intValue], v20, v19, v21 == 1))
    {
      [(ASChangedCollectionLeaf *)self setStatus:&unk_285D57B88];
    }
  }

  status3 = [(ASChangedCollectionLeaf *)self status];

  if (!status3)
  {
    [(ASChangedCollectionLeaf *)self setStatus:&unk_285D57BA0];
  }

  status4 = [(ASChangedCollectionLeaf *)self status];
  intValue = [status4 intValue];

  if (intValue != 1)
  {
    v25 = DALoggingwithCategory();
    v26 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v25, v26))
    {
      status5 = [(ASChangedCollectionLeaf *)self status];
      intValue2 = [status5 intValue];
      *buf = 67109120;
      LODWORD(v47) = intValue2;
      _os_log_impl(&dword_24A0AC000, v25, v26, "This leaf node has an unsuccessful status code (has %d)", buf, 8u);
    }
  }

  serverID = [(ASChangedCollectionLeaf *)self serverID];

  if (!serverID)
  {
    v30 = DALoggingwithCategory();
    v31 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v30, v31))
    {
      *buf = 0;
      _os_log_impl(&dword_24A0AC000, v30, v31, "ServerID for this leaf node was not set in the response.", buf, 2u);
    }

    status6 = [(ASChangedCollectionLeaf *)self status];
    if (!status6 || (v33 = status6, -[ASChangedCollectionLeaf status](self, "status"), v34 = objc_claimAutoreleasedReturnValue(), v35 = [v34 intValue], v34, v33, v35 == 1))
    {
      [(ASChangedCollectionLeaf *)self setStatus:&unk_285D57B88];
    }
  }
}

- (void)appendActiveSyncDataForTask:(id)task toWBXMLData:(id)data
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24A0AC000, v5, v6, "%s to be implemented by subclass", &v7, 0xCu);
  }
}

- (void)loadClientIDs
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24A0AC000, v3, v4, "%s to be implemented by subclass", &v5, 0xCu);
  }
}

- (int64_t)dataclass
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24A0AC000, v3, v4, "%s to be implemented by subclass", &v6, 0xCu);
  }

  return -1;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  selfCopy = self;
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v20 = MEMORY[0x277CBEAC0];
    v21 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:13 objectClass:objc_opt_class() setterMethod:sel_setServerID_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v19 = [MEMORY[0x277CCABB0] numberWithInt:13];
    v18 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:12 objectClass:objc_opt_class() setterMethod:sel_setClientID_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:12];
    v6 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:45 objectClass:objc_opt_class() setterMethod:sel_setInstanceID_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:4397];
    v8 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:29 objectClass:objc_opt_class() setterMethod:sel_setApplicationData_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v16 = [MEMORY[0x277CCABB0] numberWithInt:29];
    v15 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:14 objectClass:objc_opt_class() setterMethod:sel_setStatus_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:14];
    v10 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:16 objectClass:objc_opt_class() setterMethod:sel_ignoreThisContent_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:16];
    v5 = [v20 dictionaryWithObjectsAndKeys:{v21, v19, v18, v17, v6, v7, v8, v16, v15, v9, v10, v11, 0}];

    v12 = +[ASItem parseRuleCache];
    v13 = NSStringFromClass(selfCopy);
    [v12 setObject:v5 forKey:v13];
  }

  return v5;
}

- (ASChangedCollectionLeaf)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [(ASChangedCollectionLeaf *)a2 initWithCoder:?];
  }

  v19.receiver = self;
  v19.super_class = ASChangedCollectionLeaf;
  v6 = [(ASItem *)&v19 init];
  if (v6)
  {
    -[ASChangedCollectionLeaf setChangeType:](v6, "setChangeType:", [coderCopy decodeInt64ForKey:@"ASCCLChangeType"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ASCCLServerID"];
    [(ASChangedCollectionLeaf *)v6 setServerID:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ASCCLClientID"];
    [(ASChangedCollectionLeaf *)v6 setClientID:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ASCCLInstanceID"];
    [(ASChangedCollectionLeaf *)v6 setInstanceID:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ASCCLStatus"];
    [(ASChangedCollectionLeaf *)v6 setStatus:v10];

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v11 setWithObjects:{v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"ASCCLApplicationData"];
    [(ASChangedCollectionLeaf *)v6 setApplicationData:v17];

    -[ASChangedCollectionLeaf setIsResponse:](v6, "setIsResponse:", [coderCopy decodeBoolForKey:@"ASCCLIsResponse"]);
    -[ASChangedCollectionLeaf setValidateOpeningTokens:](v6, "setValidateOpeningTokens:", [coderCopy decodeBoolForKey:@"ASCCLValidateOpeningTokens"]);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [(ASChangedCollectionLeaf *)a2 encodeWithCoder:?];
  }

  [coderCopy encodeInt64:-[ASChangedCollectionLeaf changeType](self forKey:{"changeType"), @"ASCCLChangeType"}];
  serverID = [(ASChangedCollectionLeaf *)self serverID];
  [coderCopy encodeObject:serverID forKey:@"ASCCLServerID"];

  clientID = [(ASChangedCollectionLeaf *)self clientID];
  [coderCopy encodeObject:clientID forKey:@"ASCCLClientID"];

  instanceID = [(ASChangedCollectionLeaf *)self instanceID];
  [coderCopy encodeObject:instanceID forKey:@"ASCCLInstanceID"];

  status = [(ASChangedCollectionLeaf *)self status];
  [coderCopy encodeObject:status forKey:@"ASCCLStatus"];

  applicationData = [(ASChangedCollectionLeaf *)self applicationData];
  [coderCopy encodeObject:applicationData forKey:@"ASCCLApplicationData"];

  [coderCopy encodeBool:-[ASChangedCollectionLeaf isResponse](self forKey:{"isResponse"), @"ASCCLIsResponse"}];
  [coderCopy encodeBool:-[ASChangedCollectionLeaf validateOpeningTokens](self forKey:{"validateOpeningTokens"), @"ASCCLValidateOpeningTokens"}];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASChangedCollectionLeaf.m" lineNumber:114 description:@"Who does non-keyed coding nowadays?"];
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASChangedCollectionLeaf.m" lineNumber:130 description:@"Who does non-keyed coding nowadays?"];
}

@end