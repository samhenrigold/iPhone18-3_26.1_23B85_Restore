@interface _SWCDomain
+ (_SWCDomain)appleDomain;
+ (_SWCDomain)exampleDomain;
- (BOOL)encompassesDomain:(id)domain;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHostIPAddress;
- (BOOL)isValid;
- (NSString)rawValue;
- (NSString)topLevelDomainValue;
- (_SWCDomain)initWithCoder:(id)coder;
- (_SWCDomain)initWithHost:(id)host port:(id)port wildcard:(BOOL)wildcard modeOfOperation:(char)operation;
- (_SWCDomain)initWithString:(id)string;
- (_SWCDomain)nonWildcardDomain;
- (_SWCDomain)wildcardDomain;
- (id)debugDescription;
- (id)domainRequiringModeOfOperation:(char)operation;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SWCDomain

- (_SWCDomain)initWithString:(id)string
{
  v49 = *MEMORY[0x277D85DE8];
  v32 = objc_autoreleasePoolPush();
  selfCopy = self;
  v36 = [@"https://" stringByAppendingString:string];
  v37 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v36];
  host = [v37 host];
  v6 = host;
  if (host)
  {
    v7 = host;
  }

  else
  {
    v7 = &stru_2877A4C50;
  }

  v8 = v7;

  v38 = v8;
  v35 = [(__CFString *)v8 hasPrefix:@"*."];
  if (v35)
  {
    v9 = [(__CFString *)v8 substringFromIndex:2];

    v38 = v9;
  }

  port = [v37 port];
  percentEncodedQueryItems = [v37 percentEncodedQueryItems];
  if (!percentEncodedQueryItems)
  {
    goto LABEL_32;
  }

  v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(percentEncodedQueryItems, "count")}];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v12 = percentEncodedQueryItems;
  v13 = [v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v13)
  {
    v14 = *v44;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v43 + 1) + 8 * i);
        name = [v16 name];
        value = [v16 value];
        v19 = value;
        if (value)
        {
          v20 = value;
        }

        else
        {
          v20 = &stru_2877A4C50;
        }

        v21 = v20;

        [v11 setObject:v21 forKeyedSubscript:name];
      }

      v13 = [v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v13);
  }

  if (v11)
  {
    v22 = [v11 objectForKeyedSubscript:@"mode"];
    v23 = [v22 componentsSeparatedByString:@"+"];

    if (v23)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v24 = v23;
      v25 = 0;
      v26 = [v24 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v26)
      {
        v27 = *v40;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v40 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v39 + 1) + 8 * j);
            if ([v29 caseInsensitiveCompare:@"developer"])
            {
              if (![v29 caseInsensitiveCompare:@"managed"])
              {
                v25 |= 2u;
              }
            }

            else
            {
              v25 |= 1u;
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v26);
      }
    }

    else
    {
      LOBYTE(v25) = 0;
    }
  }

  else
  {
LABEL_32:
    LOBYTE(v25) = 0;
  }

  objc_autoreleasePoolPop(v32);
  v30 = [(_SWCDomain *)selfCopy initWithHost:v38 port:port wildcard:v35 modeOfOperation:v25];

  return v30;
}

- (_SWCDomain)initWithHost:(id)host port:(id)port wildcard:(BOOL)wildcard modeOfOperation:(char)operation
{
  hostCopy = host;
  portCopy = port;
  v19.receiver = self;
  v19.super_class = _SWCDomain;
  v12 = [(_SWCDomain *)&v19 init];
  if (v12)
  {
    lowercaseString = [hostCopy lowercaseString];
    v14 = [lowercaseString copy];
    host = v12->_host;
    v12->_host = v14;

    v16 = [portCopy copy];
    port = v12->_port;
    v12->_port = v16;

    v12->_wildcard = wildcard;
    v12->_modeOfOperation = operation;
  }

  return v12;
}

+ (_SWCDomain)appleDomain
{
  v2 = [[_SWCDomain alloc] initWithHost:@"apple.com" port:0 wildcard:1 modeOfOperation:0];

  return v2;
}

+ (_SWCDomain)exampleDomain
{
  v2 = [[_SWCDomain alloc] initWithHost:@"example.com" port:0 wildcard:1 modeOfOperation:0];

  return v2;
}

- (NSString)rawValue
{
  host = self->_host;
  if (self->_wildcard)
  {
    v4 = [@"*." stringByAppendingString:host];
  }

  else
  {
    v4 = host;
  }

  v5 = v4;
  port = self->_port;
  if (port)
  {
    v7 = [v5 stringByAppendingFormat:@":%llu", -[NSNumber unsignedLongLongValue](port, "unsignedLongLongValue")];

    v5 = v7;
  }

  if (self->_modeOfOperation)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = v8;
    modeOfOperation = self->_modeOfOperation;
    if (modeOfOperation)
    {
      [v8 addObject:@"developer"];
      modeOfOperation = self->_modeOfOperation;
    }

    if ((modeOfOperation & 2) != 0)
    {
      [v9 addObject:@"managed"];
    }

    v11 = [v9 componentsJoinedByString:@"+"];
    v12 = [v5 stringByAppendingFormat:@"?mode=%@", v11];

    v5 = v12;
  }

  return v5;
}

- (BOOL)isValid
{
  selfCopy = self;
  v56 = *MEMORY[0x277D85DE8];
  modeOfOperation = self->_modeOfOperation;
  if (modeOfOperation == 1)
  {
    if ([(NSString *)self->_host isEqual:@"localhost"])
    {
      if (qword_280B21978 != -1)
      {
        dispatch_once(&qword_280B21978, &__block_literal_global_163);
      }

      v4 = qword_280B21970;
      if (os_log_type_enabled(qword_280B21970, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v46 = selfCopy;
        _os_log_impl(&dword_265F54000, v4, OS_LOG_TYPE_INFO, "Domain %@ is localhost in developer mode, explicitly allowing.", buf, 0xCu);
      }

LABEL_72:
      port = selfCopy->_port;
      if (!port || [(NSNumber *)port unsignedLongLongValue]- 0x10000 > 0xFFFFFFFFFFFF0000)
      {
        LOBYTE(v6) = 1;
        return v6;
      }

      if (qword_280B21978 != -1)
      {
        dispatch_once(&qword_280B21978, &__block_literal_global_163);
      }

      uRLHostAllowedCharacterSet = qword_280B21970;
      if (os_log_type_enabled(uRLHostAllowedCharacterSet, OS_LOG_TYPE_INFO))
      {
        unsignedLongLongValue = [(NSNumber *)selfCopy->_port unsignedLongLongValue];
        *buf = 138412546;
        v46 = selfCopy;
        v47 = 2048;
        v48 = unsignedLongLongValue;
        _os_log_impl(&dword_265F54000, uRLHostAllowedCharacterSet, OS_LOG_TYPE_INFO, "Domain %@ contained an invalid port %llu", buf, 0x16u);
      }

LABEL_21:

      goto LABEL_86;
    }

    modeOfOperation = selfCopy->_modeOfOperation;
  }

  if (!modeOfOperation && [(_SWCDomain *)selfCopy isHostIPAddress])
  {
    if (qword_280B21978 != -1)
    {
      dispatch_once(&qword_280B21978, &__block_literal_global_163);
    }

    v5 = qword_280B21970;
    v6 = os_log_type_enabled(qword_280B21970, OS_LOG_TYPE_INFO);
    if (v6)
    {
      *buf = 138412290;
      v46 = selfCopy;
      _os_log_impl(&dword_265F54000, v5, OS_LOG_TYPE_INFO, "Domain %@ is an IP address in normal mode, explicitly blocking.", buf, 0xCu);
      goto LABEL_86;
    }

    return v6;
  }

  uRLHostAllowedCharacterSet = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
  v8 = [(NSString *)selfCopy->_host length];
  v9 = v8;
  v10 = v8 - 1;
  if (v8 < 1)
  {
    if (qword_280B21978 != -1)
    {
      dispatch_once(&qword_280B21978, &__block_literal_global_163);
    }

    v13 = qword_280B21970;
    if (os_log_type_enabled(qword_280B21970, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v46 = selfCopy;
      _os_log_impl(&dword_265F54000, v13, OS_LOG_TYPE_INFO, "Domain %@ contained empty hostname", buf, 0xCu);
    }

    goto LABEL_21;
  }

  host = selfCopy->_host;
  v49 = host;
  v52 = 0;
  v53 = v8;
  CharactersPtr = CFStringGetCharactersPtr(host);
  v36 = v10;
  v37 = selfCopy;
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(host, 0x600u);
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v51 = CStringPtr;
  v18 = 64;
  v54 = 0;
  v55 = 0;
  do
  {
    if (v17 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v17;
    }

    v20 = v53;
    if (v53 <= v17)
    {
      v22 = 0;
      v38 = 0;
LABEL_38:
      if (([uRLHostAllowedCharacterSet characterIsMember:v22]& 1) == 0)
      {
        if (qword_280B21978 != -1)
        {
          dispatch_once(&qword_280B21978, &__block_literal_global_163);
        }

        v31 = qword_280B21970;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v38 length:1];
          *v39 = 138412802;
          v40 = v37;
          v41 = 2048;
          v42 = v22;
          v43 = 2114;
          v44 = v32;
          _os_log_impl(&dword_265F54000, v31, OS_LOG_TYPE_INFO, "Domain %@ contained illegal character %llx ('%{public}@')", v39, 0x20u);
        }

        goto LABEL_85;
      }

      goto LABEL_39;
    }

    if (CharactersPtr)
    {
      v21 = &CharactersPtr[v52];
LABEL_30:
      v22 = *&v21[2 * v17];
      goto LABEL_34;
    }

    if (!v51)
    {
      v23 = v54;
      if (v55 <= v17 || v54 > v17)
      {
        v25 = v19 + v14;
        v26 = v18 - v19;
        v27 = v17 - v19;
        v28 = v27 + 64;
        if (v27 + 64 >= v53)
        {
          v28 = v53;
        }

        v54 = v27;
        v55 = v28;
        if (v53 >= v26)
        {
          v20 = v26;
        }

        v57.location = v27 + v52;
        v57.length = v20 + v25;
        CFStringGetCharacters(v49, v57, buf);
        v23 = v54;
      }

      v21 = &buf[-2 * v23];
      goto LABEL_30;
    }

    v22 = v51[v52 + v17];
LABEL_34:
    v38 = v22;
    if (v22 != 46)
    {
      goto LABEL_38;
    }

    if (!v17)
    {
      if (qword_280B21978 != -1)
      {
        dispatch_once(&qword_280B21978, &__block_literal_global_163);
      }

      v29 = qword_280B21970;
      if (!os_log_type_enabled(qword_280B21970, OS_LOG_TYPE_INFO))
      {
        goto LABEL_85;
      }

      *v39 = 138412290;
      v40 = v37;
      v30 = "Domain %@ began with a period character";
      goto LABEL_84;
    }

    if (v16 == 46)
    {
      if (qword_280B21978 != -1)
      {
        dispatch_once(&qword_280B21978, &__block_literal_global_163);
      }

      v29 = qword_280B21970;
      if (!os_log_type_enabled(qword_280B21970, OS_LOG_TYPE_INFO))
      {
        goto LABEL_85;
      }

      *v39 = 138412290;
      v40 = v37;
      v30 = "Domain %@ contained two period characters in a row";
      goto LABEL_84;
    }

    ++v15;
    v22 = 46;
LABEL_39:
    ++v17;
    --v14;
    ++v18;
    v16 = v22;
  }

  while (v9 != v17);
  if (v15 == 1)
  {
    selfCopy = v37;
    if ([(NSString *)v37->_host characterAtIndex:v36]!= 46)
    {
      goto LABEL_71;
    }

    if (qword_280B21978 != -1)
    {
      dispatch_once(&qword_280B21978, &__block_literal_global_163);
    }

    v29 = qword_280B21970;
    if (!os_log_type_enabled(qword_280B21970, OS_LOG_TYPE_INFO))
    {
      goto LABEL_85;
    }

    *v39 = 138412290;
    v40 = v37;
    v30 = "Domain %@ was a TLD";
LABEL_84:
    _os_log_impl(&dword_265F54000, v29, OS_LOG_TYPE_INFO, v30, v39, 0xCu);
    goto LABEL_85;
  }

  selfCopy = v37;
  if (v15)
  {
LABEL_71:

    goto LABEL_72;
  }

  if (qword_280B21978 != -1)
  {
    dispatch_once(&qword_280B21978, &__block_literal_global_163);
  }

  v29 = qword_280B21970;
  if (os_log_type_enabled(qword_280B21970, OS_LOG_TYPE_INFO))
  {
    *v39 = 138412290;
    v40 = v37;
    v30 = "Domain %@ did not contain a period character";
    goto LABEL_84;
  }

LABEL_85:

LABEL_86:
  LOBYTE(v6) = 0;
  return v6;
}

- (BOOL)isHostIPAddress
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [(NSString *)self->_host getCString:v5 maxLength:256 encoding:1];
  if (v2)
  {
    LOBYTE(v2) = v5[0] == 91 || inet_pton(2, v5, v4) == 1;
  }

  return v2;
}

- (NSString)topLevelDomainValue
{
  v4 = [(NSString *)self->_host rangeOfString:@"." options:4];
  host = self->_host;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = host;
  }

  else
  {
    v6 = [(NSString *)host substringFromIndex:v4 + v3];
  }

  return v6;
}

- (BOOL)encompassesDomain:(id)domain
{
  v15 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  if ([(_SWCDomain *)self isEqual:domainCopy])
  {
    goto LABEL_2;
  }

  host = self->_host;
  if (self->_wildcard)
  {
    v8 = [(NSString *)host length];
    v9 = [domainCopy[2] length];
    v10 = v9 - v8;
    if (v9 < v8 || [domainCopy[2] compare:self->_host options:0 range:{v10, v8}] || v9 > v8 && objc_msgSend(domainCopy[2], "characterAtIndex:", v10 - 1) != 46)
    {
      goto LABEL_25;
    }

    if (qword_280B21978 != -1)
    {
      dispatch_once(&qword_280B21978, &__block_literal_global_163);
    }

    v11 = qword_280B21970;
    if (os_log_type_enabled(qword_280B21970, OS_LOG_TYPE_DEBUG))
    {
LABEL_20:
      *v14 = 138412546;
      *&v14[4] = self;
      *&v14[12] = 2112;
      *&v14[14] = domainCopy;
      _os_log_debug_impl(&dword_265F54000, v11, OS_LOG_TYPE_DEBUG, "Domain %@ encompasses %@", v14, 0x16u);
    }
  }

  else
  {
    if (![(NSString *)host isEqualToString:domainCopy[2]])
    {
LABEL_25:
      v6 = 0;
      goto LABEL_26;
    }

    if (qword_280B21978 != -1)
    {
      dispatch_once(&qword_280B21978, &__block_literal_global_163);
    }

    v11 = qword_280B21970;
    if (os_log_type_enabled(qword_280B21970, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }
  }

LABEL_2:
  port = self->_port;
  if (port && (!domainCopy[3] || ![(NSNumber *)port isEqualToNumber:?]))
  {
    goto LABEL_25;
  }

  if (([domainCopy isValid] & 1) == 0)
  {
    if (qword_280B21978 != -1)
    {
      dispatch_once(&qword_280B21978, &__block_literal_global_163);
    }

    v12 = qword_280B21970;
    if (os_log_type_enabled(qword_280B21970, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 138412546;
      *&v14[4] = domainCopy;
      *&v14[12] = 2112;
      *&v14[14] = self;
      _os_log_debug_impl(&dword_265F54000, v12, OS_LOG_TYPE_DEBUG, "Domain %@ is not valid; discarding matching result against %@", v14, 0x16u);
    }

    goto LABEL_25;
  }

  v6 = 1;
LABEL_26:

  return v6;
}

- (_SWCDomain)nonWildcardDomain
{
  if (self->_wildcard)
  {
    selfCopy = [[_SWCDomain alloc] initWithHost:self->_host port:self->_port wildcard:0 modeOfOperation:self->_modeOfOperation];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (_SWCDomain)wildcardDomain
{
  if (self->_wildcard)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [[_SWCDomain alloc] initWithHost:self->_host port:self->_port wildcard:1 modeOfOperation:self->_modeOfOperation];
  }

  return selfCopy;
}

- (id)domainRequiringModeOfOperation:(char)operation
{
  if (self->_modeOfOperation == operation)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [[_SWCDomain alloc] initWithHost:self->_host port:self->_port wildcard:self->_wildcard modeOfOperation:operation];
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (self->_wildcard == v5->_wildcard && [(NSString *)self->_host isEqual:v5->_host])
      {
        port = self->_port;
        v7 = v5->_port;
        if (port)
        {
          if (v7 && [(NSNumber *)port isEqualToNumber:?])
          {
            goto LABEL_8;
          }
        }

        else if (!v7)
        {
LABEL_8:
          v8 = self->_modeOfOperation == v5->_modeOfOperation;
LABEL_13:

          goto LABEL_14;
        }
      }

      v8 = 0;
      goto LABEL_13;
    }

    v8 = 0;
  }

LABEL_14:

  return v8;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = [(_SWCDomain *)self description];
  v6 = [v3 initWithFormat:@"<%@ %p> %@", v4, self, v5];

  return v6;
}

- (id)redactedDescription
{
  if (qword_280B21968 != -1)
  {
    dispatch_once(&qword_280B21968, &__block_literal_global_8);
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [(NSString *)self->_host componentsSeparatedByString:@"."];
  v5 = [v4 count];
  if (v5 < 2)
  {
    v12 = self->_host;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v7 = _MergedGlobals_7;
    v8 = [v4 objectAtIndexedSubscript:0];
    v9 = [v7 member:v8];

    if (v9)
    {
      v10 = [v4 objectAtIndexedSubscript:0];
      [v6 addObject:v10];

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    v13 = v5 - 1;
    if (v11 < v5 - 1)
    {
      do
      {
        v14 = [v4 objectAtIndexedSubscript:v11];
        if ([v14 length] >= 3)
        {
          v15 = [v14 substringToIndex:2];
          v16 = [v15 stringByAppendingString:@"…"];

          v14 = v16;
        }

        [v6 addObject:v14];

        ++v11;
      }

      while (v13 != v11);
    }

    lastObject = [v4 lastObject];
    [v6 addObject:lastObject];

    v12 = [v6 componentsJoinedByString:@"."];
  }

  objc_autoreleasePoolPop(v3);
  if (self->_wildcard)
  {
    v18 = [@"*." stringByAppendingString:v12];
  }

  else
  {
    v18 = v12;
  }

  v19 = v18;
  port = self->_port;
  if (port)
  {
    v21 = [v19 stringByAppendingFormat:@":%llu", -[NSNumber unsignedLongLongValue](port, "unsignedLongLongValue")];

    v19 = v21;
  }

  if (self->_modeOfOperation)
  {
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = v22;
    modeOfOperation = self->_modeOfOperation;
    if (modeOfOperation)
    {
      [v22 addObject:@"developer"];
      modeOfOperation = self->_modeOfOperation;
    }

    if ((modeOfOperation & 2) != 0)
    {
      [v23 addObject:@"managed"];
    }

    v25 = [v23 componentsJoinedByString:{@", "}];
    v26 = [v19 stringByAppendingFormat:@"?mode=%@", v25];

    v19 = v26;
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_host forKey:@"host"];
  [coderCopy encodeObject:self->_port forKey:@"port"];
  [coderCopy encodeBool:self->_wildcard forKey:@"wildcard"];
  [coderCopy encodeInteger:self->_modeOfOperation forKey:@"modeOfOperation"];
}

- (_SWCDomain)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy swc_decodeObjectOfClass:objc_opt_class() forKey:@"host"];
  v6 = [coderCopy swc_decodeObjectOfClass:objc_opt_class() forKey:@"port"];
  v7 = [coderCopy decodeBoolForKey:@"wildcard"];
  v8 = [coderCopy decodeIntegerForKey:@"modeOfOperation"];
  if (!v5)
  {
    v9 = objc_alloc(MEMORY[0x277CCA9B8]);
    v15[0] = @"Line";
    v15[1] = @"Function";
    v16[0] = &unk_2877A7450;
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_SWCDomain initWithCoder:]"];
    v16[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v12 = [v9 initWithDomain:*MEMORY[0x277CCA050] code:4865 userInfo:v11];
    [coderCopy failWithError:v12];

    self = 0;
  }

  v13 = [(_SWCDomain *)self initWithHost:v5 port:v6 wildcard:v7 modeOfOperation:v8];

  return v13;
}

@end