@interface NRDeviceProxyProviderFlowMatchRule
+ (id)copyMatchRulesForCellularSlicing;
- (BOOL)hasMatchRulesExcludingEntitlements;
- (BOOL)hasMatchRulesWithTokens;
- (BOOL)isEqual:(id)equal;
- (NRDeviceProxyProviderFlowMatchRule)initWithCoder:(id)coder;
- (NRDeviceProxyProviderFlowMatchRule)initWithReceivedData:(id)data;
- (id)copyExcludedBundleIdentifiers;
- (id)copyMatchTokens;
- (id)copySendData;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)addMatchRuleForClientsWithEntitlement:(id)entitlement entitlementValue:(id)value;
- (void)addMatchToken:(id)token;
- (void)encodeWithCoder:(id)coder;
- (void)excludeBundleIdentifier:(id)identifier;
@end

@implementation NRDeviceProxyProviderFlowMatchRule

- (BOOL)hasMatchRulesWithTokens
{
  if (self)
  {
    self = self->_matchTokens;
  }

  return [(NRDeviceProxyProviderFlowMatchRule *)self count]!= 0;
}

- (BOOL)hasMatchRulesExcludingEntitlements
{
  if ([(NRDeviceProxyProviderFlowMatchRule *)self trafficClass]|| [(NRDeviceProxyProviderFlowMatchRule *)self transportProtocol])
  {
    return 1;
  }

  domain = [(NRDeviceProxyProviderFlowMatchRule *)self domain];
  v5 = domain != 0;

  return v5;
}

- (void)excludeBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy length];
  v5 = identifierCopy;
  if (v4)
  {
    v6 = self ? self->_excludedBundleIdentifiers : 0;
    v4 = [(NSArray *)v6 containsObject:identifierCopy];
    v5 = identifierCopy;
    if ((v4 & 1) == 0)
    {
      v7 = objc_alloc(MEMORY[0x277CBEB18]);
      if (self)
      {
        excludedBundleIdentifiers = self->_excludedBundleIdentifiers;
      }

      else
      {
        excludedBundleIdentifiers = 0;
      }

      v9 = [v7 initWithArray:excludedBundleIdentifiers];
      [v9 addObject:identifierCopy];
      if (self)
      {
        objc_storeStrong(&self->_excludedBundleIdentifiers, v9);
      }

      v5 = identifierCopy;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (id)copyExcludedBundleIdentifiers
{
  if (self)
  {
    self = self->_excludedBundleIdentifiers;
  }

  return self;
}

- (void)addMatchToken:(id)token
{
  tokenCopy = token;
  v4 = [tokenCopy length];
  v5 = tokenCopy;
  if (v4)
  {
    v6 = self ? self->_matchTokens : 0;
    v4 = [(NSArray *)v6 containsObject:tokenCopy];
    v5 = tokenCopy;
    if ((v4 & 1) == 0)
    {
      v7 = objc_alloc(MEMORY[0x277CBEB18]);
      if (self)
      {
        matchTokens = self->_matchTokens;
      }

      else
      {
        matchTokens = 0;
      }

      v9 = [v7 initWithArray:matchTokens];
      [v9 addObject:tokenCopy];
      if (self)
      {
        objc_storeStrong(&self->_matchTokens, v9);
      }

      v5 = tokenCopy;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (id)copyMatchTokens
{
  if (self)
  {
    self = self->_matchTokens;
  }

  return self;
}

- (void)addMatchRuleForClientsWithEntitlement:(id)entitlement entitlementValue:(id)value
{
  entitlementCopy = entitlement;
  valueCopy = value;
  if (!entitlementCopy)
  {
    v10 = nrCopyLogObj_672();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v12 = v10;
      v13 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT);

      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v9 = nrCopyLogObj_672();
    _NRLogWithArgs(v9, 17, "%s called with null entitlement");
    goto LABEL_4;
  }

  if (valueCopy)
  {
    v7 = objc_alloc(MEMORY[0x277CBEB38]);
    entitlements = [(NRDeviceProxyProviderFlowMatchRule *)self entitlements];
    v9 = [v7 initWithDictionary:entitlements];

    [v9 setObject:valueCopy forKeyedSubscript:entitlementCopy];
    [(NRDeviceProxyProviderFlowMatchRule *)self setEntitlements:v9];
LABEL_4:

    goto LABEL_5;
  }

  v11 = nrCopyLogObj_672();
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_15:
    v9 = nrCopyLogObj_672();
    _NRLogWithArgs(v9, 17, "%s called with null entitlementValue");
    goto LABEL_4;
  }

  v14 = v11;
  v15 = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);

  if (v15)
  {
    goto LABEL_15;
  }

LABEL_5:
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[NRDeviceProxyProviderFlowMatchRule trafficClass](self forKey:{"trafficClass"), @"trafficClass"}];
  [coderCopy encodeInt32:-[NRDeviceProxyProviderFlowMatchRule transportProtocol](self forKey:{"transportProtocol"), @"transportProtocol"}];
  domain = [(NRDeviceProxyProviderFlowMatchRule *)self domain];
  [coderCopy encodeObject:domain forKey:@"domain"];

  entitlements = [(NRDeviceProxyProviderFlowMatchRule *)self entitlements];
  [coderCopy encodeObject:entitlements forKey:@"entitlements"];

  if (self)
  {
    [coderCopy encodeObject:self->_matchTokens forKey:@"matchTokens"];
    excludedBundleIdentifiers = self->_excludedBundleIdentifiers;
  }

  else
  {
    [coderCopy encodeObject:0 forKey:@"matchTokens"];
    excludedBundleIdentifiers = 0;
  }

  [coderCopy encodeObject:excludedBundleIdentifiers forKey:@"excludedBundleIdentifiers"];
  matchResultAccountID = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultAccountID];
  [coderCopy encodeObject:matchResultAccountID forKey:@"matchResultAccountID"];

  matchResultBundleID = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultBundleID];
  [coderCopy encodeObject:matchResultBundleID forKey:@"matchResultBundleID"];
}

- (NRDeviceProxyProviderFlowMatchRule)initWithCoder:(id)coder
{
  v29 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = NRDeviceProxyProviderFlowMatchRule;
  v5 = [(NRDeviceProxyProviderFlowMatchRule *)&v28 init];
  if (!v5)
  {
    v17 = nrCopyLogObj_672();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v18 = v17;
      v19 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

      if (!v19)
      {
        goto LABEL_7;
      }
    }

    v20 = nrCopyLogObj_672();
    _NRLogWithArgs(v20, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDeviceProxyProviderFlowMatchRule initWithCoder:]"", 253);

LABEL_7:
    v21 = _os_log_pack_size();
    v23 = &v27 - ((MEMORY[0x28223BE20](v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = __error();
    v25 = _os_log_pack_fill(v23, v21, *v24, &dword_25B98C000, "%{public}s [super init] failed");
    *v25 = 136446210;
    *(v25 + 4) = "[NRDeviceProxyProviderFlowMatchRule initWithCoder:]";
    v26 = nrCopyLogObj_672();
    _NRLogAbortWithPack(v26, v23);
  }

  v6 = v5;
  -[NRDeviceProxyProviderFlowMatchRule setTrafficClass:](v5, "setTrafficClass:", [coderCopy decodeInt32ForKey:@"trafficClass"]);
  -[NRDeviceProxyProviderFlowMatchRule setTransportProtocol:](v6, "setTransportProtocol:", [coderCopy decodeInt32ForKey:@"transportProtocol"]);
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
  [(NRDeviceProxyProviderFlowMatchRule *)v6 setDomain:v7];

  v8 = objc_opt_class();
  v9 = [coderCopy decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"entitlements"];
  [(NRDeviceProxyProviderFlowMatchRule *)v6 setEntitlements:v9];

  v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"matchTokens"];
  matchTokens = v6->_matchTokens;
  v6->_matchTokens = v10;

  v12 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"excludedBundleIdentifiers"];
  excludedBundleIdentifiers = v6->_excludedBundleIdentifiers;
  v6->_excludedBundleIdentifiers = v12;

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchResultAccountID"];
  [(NRDeviceProxyProviderFlowMatchRule *)v6 setMatchResultAccountID:v14];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchResultBundleID"];
  [(NRDeviceProxyProviderFlowMatchRule *)v6 setMatchResultBundleID:v15];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setTrafficClass:{-[NRDeviceProxyProviderFlowMatchRule trafficClass](self, "trafficClass")}];
  [v4 setTransportProtocol:{-[NRDeviceProxyProviderFlowMatchRule transportProtocol](self, "transportProtocol")}];
  domain = [(NRDeviceProxyProviderFlowMatchRule *)self domain];
  v6 = [domain copy];
  [v4 setDomain:v6];

  entitlements = [(NRDeviceProxyProviderFlowMatchRule *)self entitlements];
  v8 = [entitlements copy];
  [v4 setEntitlements:v8];

  if (self)
  {
    matchTokens = self->_matchTokens;
  }

  else
  {
    matchTokens = 0;
  }

  v10 = matchTokens;
  v11 = [(NSArray *)v10 copy];
  if (v4)
  {
    objc_storeStrong(v4 + 3, v11);
  }

  if (self)
  {
    excludedBundleIdentifiers = self->_excludedBundleIdentifiers;
  }

  else
  {
    excludedBundleIdentifiers = 0;
  }

  v13 = excludedBundleIdentifiers;
  v14 = [(NSArray *)v13 copy];
  if (v4)
  {
    objc_storeStrong(v4 + 4, v14);
  }

  matchResultAccountID = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultAccountID];
  v16 = [matchResultAccountID copy];
  [v4 setMatchResultAccountID:v16];

  matchResultBundleID = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultBundleID];
  v18 = [matchResultBundleID copy];
  [v4 setMatchResultBundleID:v18];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      trafficClass = [(NRDeviceProxyProviderFlowMatchRule *)self trafficClass];
      if (trafficClass != [v5 trafficClass])
      {
        goto LABEL_35;
      }

      transportProtocol = [(NRDeviceProxyProviderFlowMatchRule *)self transportProtocol];
      if (transportProtocol != [v5 transportProtocol])
      {
        goto LABEL_35;
      }

      domain = [(NRDeviceProxyProviderFlowMatchRule *)self domain];
      if (domain)
      {
      }

      else
      {
        domain2 = [v5 domain];

        if (!domain2)
        {
          goto LABEL_10;
        }
      }

      domain3 = [(NRDeviceProxyProviderFlowMatchRule *)self domain];
      domain4 = [v5 domain];
      v13 = [domain3 isEqual:domain4];

      if (!v13)
      {
        goto LABEL_35;
      }

LABEL_10:
      entitlements = [(NRDeviceProxyProviderFlowMatchRule *)self entitlements];
      if (entitlements)
      {
      }

      else
      {
        entitlements2 = [v5 entitlements];

        if (!entitlements2)
        {
          goto LABEL_14;
        }
      }

      entitlements3 = [(NRDeviceProxyProviderFlowMatchRule *)self entitlements];
      entitlements4 = [v5 entitlements];
      v18 = [entitlements3 isEqual:entitlements4];

      if (!v18)
      {
        goto LABEL_35;
      }

LABEL_14:
      if (self)
      {
        v19 = self->_matchTokens;
        if (v19)
        {

          v20 = v5[3];
        }

        else
        {
          v20 = v5[3];
          if (!v20)
          {
LABEL_21:
            v24 = self->_excludedBundleIdentifiers;
            if (v24)
            {

              v25 = v5[4];
            }

            else
            {
              v25 = v5[4];
              if (!v25)
              {
                goto LABEL_26;
              }
            }

            excludedBundleIdentifiers = self->_excludedBundleIdentifiers;
            goto LABEL_25;
          }
        }

        matchTokens = self->_matchTokens;
      }

      else
      {
        v20 = v5[3];
        if (!v20)
        {
          goto LABEL_40;
        }

        matchTokens = 0;
      }

      v22 = matchTokens;
      v23 = [(NSArray *)v22 isEqual:v20];

      if (!v23)
      {
        goto LABEL_35;
      }

      if (self)
      {
        goto LABEL_21;
      }

LABEL_40:
      v25 = v5[4];
      if (!v25)
      {
        goto LABEL_26;
      }

      excludedBundleIdentifiers = 0;
LABEL_25:
      v27 = excludedBundleIdentifiers;
      v28 = [(NSArray *)v27 isEqual:v25];

      if (!v28)
      {
        goto LABEL_35;
      }

LABEL_26:
      matchResultAccountID = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultAccountID];
      if (matchResultAccountID)
      {
      }

      else
      {
        matchResultAccountID2 = [v5 matchResultAccountID];

        if (!matchResultAccountID2)
        {
LABEL_30:
          matchResultBundleID = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultBundleID];
          if (matchResultBundleID)
          {
          }

          else
          {
            matchResultBundleID2 = [v5 matchResultBundleID];

            if (!matchResultBundleID2)
            {
LABEL_34:
              v9 = 1;
LABEL_36:

              goto LABEL_37;
            }
          }

          matchResultBundleID3 = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultBundleID];
          matchResultBundleID4 = [v5 matchResultBundleID];
          v38 = [matchResultBundleID3 isEqual:matchResultBundleID4];

          if (v38)
          {
            goto LABEL_34;
          }

LABEL_35:
          v9 = 0;
          goto LABEL_36;
        }
      }

      matchResultAccountID3 = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultAccountID];
      matchResultAccountID4 = [v5 matchResultAccountID];
      v33 = [matchResultAccountID3 isEqual:matchResultAccountID4];

      if (!v33)
      {
        goto LABEL_35;
      }

      goto LABEL_30;
    }
  }

  v9 = 0;
LABEL_37:

  return v9;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendString:@"NRDPPMatchRule["];
  [v3 appendFormat:@"tc: %u", -[NRDeviceProxyProviderFlowMatchRule trafficClass](self, "trafficClass")];
  if ([(NRDeviceProxyProviderFlowMatchRule *)self transportProtocol])
  {
    [v3 appendFormat:@", proto: %u", -[NRDeviceProxyProviderFlowMatchRule transportProtocol](self, "transportProtocol")];
  }

  domain = [(NRDeviceProxyProviderFlowMatchRule *)self domain];

  if (domain)
  {
    domain2 = [(NRDeviceProxyProviderFlowMatchRule *)self domain];
    [v3 appendFormat:@", domain: %@", domain2];
  }

  entitlements = [(NRDeviceProxyProviderFlowMatchRule *)self entitlements];
  v7 = [entitlements count];

  if (v7)
  {
    entitlements2 = [(NRDeviceProxyProviderFlowMatchRule *)self entitlements];
    [v3 appendFormat:@", entitlements: %@", entitlements2];
  }

  if (self)
  {
    if (![(NSArray *)self->_matchTokens count])
    {
      goto LABEL_12;
    }
  }

  else if (![0 count])
  {
    goto LABEL_12;
  }

  if (self)
  {
    matchTokens = self->_matchTokens;
  }

  else
  {
    matchTokens = 0;
  }

  [v3 appendFormat:@", tokens: %@", matchTokens];
LABEL_12:
  if (self)
  {
    if (![(NSArray *)self->_excludedBundleIdentifiers count])
    {
      goto LABEL_17;
    }
  }

  else if (![0 count])
  {
    goto LABEL_17;
  }

  if (self)
  {
    excludedBundleIdentifiers = self->_excludedBundleIdentifiers;
  }

  else
  {
    excludedBundleIdentifiers = 0;
  }

  [v3 appendFormat:@", excl-bndl: %@", excludedBundleIdentifiers];
LABEL_17:
  matchResultAccountID = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultAccountID];
  v12 = [matchResultAccountID length];

  if (v12)
  {
    matchResultAccountID2 = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultAccountID];
    [v3 appendFormat:@", res-acc-id: %@", matchResultAccountID2];
  }

  matchResultBundleID = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultBundleID];
  v15 = [matchResultBundleID length];

  if (v15)
  {
    matchResultBundleID2 = [(NRDeviceProxyProviderFlowMatchRule *)self matchResultBundleID];
    [v3 appendFormat:@", res-bndl-id: %@", matchResultBundleID2];
  }

  [v3 appendString:@"]"];

  return v3;
}

- (id)copySendData
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
  if ([(NRDeviceProxyProviderFlowMatchRule *)self trafficClass])
  {
    trafficClass = [(NRDeviceProxyProviderFlowMatchRule *)self trafficClass];
    v5 = trafficClass;
    if (trafficClass > 499)
    {
      if (trafficClass <= 699)
      {
        if (trafficClass == 500)
        {
          v6 = 5;
          goto LABEL_30;
        }

        if (trafficClass == 600)
        {
          v6 = 6;
          goto LABEL_30;
        }
      }

      else
      {
        switch(trafficClass)
        {
          case 700:
            v6 = 7;
            goto LABEL_30;
          case 800:
            v6 = 8;
            goto LABEL_30;
          case 900:
            v6 = 9;
            goto LABEL_30;
        }
      }
    }

    else if (trafficClass <= 199)
    {
      if (!trafficClass)
      {
LABEL_29:
        v6 = 0;
        goto LABEL_30;
      }

      if (trafficClass == 100)
      {
        v6 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      switch(trafficClass)
      {
        case 200:
          v6 = 2;
          goto LABEL_30;
        case 300:
          v6 = 3;
          goto LABEL_30;
        case 400:
          v6 = 4;
LABEL_30:
          v45 = v6;
          NRTLVAdd(v3, 1, 1u, &v45);
          goto LABEL_31;
      }
    }

    if (nrCopyLogObj_onceToken_675 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_675, &__block_literal_global_676);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_677, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_677, 16, "%s%.30s:%-4d unexpected SOTraffic class %u", ", "copyNRTrafficClassFromSOTrafficClass"", 57, v5);
    }

    goto LABEL_29;
  }

LABEL_31:
  if ([(NRDeviceProxyProviderFlowMatchRule *)self transportProtocol])
  {
    NRTLVAdd(v3, 2, 1u, &self->_transportProtocol);
  }

  domain = [(NRDeviceProxyProviderFlowMatchRule *)self domain];

  if (domain)
  {
    domain2 = [(NRDeviceProxyProviderFlowMatchRule *)self domain];
    v9 = [domain2 dataUsingEncoding:4];

    v10 = v9;
    v11 = v3;
    NRTLVAdd(v11, 3, [v10 length], objc_msgSend(v10, "bytes"));
  }

  entitlements = [(NRDeviceProxyProviderFlowMatchRule *)self entitlements];
  v13 = [entitlements count];

  if (v13)
  {
    v14 = MEMORY[0x277CCAC58];
    entitlements2 = [(NRDeviceProxyProviderFlowMatchRule *)self entitlements];
    v44 = 0;
    v16 = [v14 dataWithPropertyList:entitlements2 format:200 options:0 error:&v44];

    v17 = v16;
    v18 = v3;
    NRTLVAdd(v18, 4, [v17 length], objc_msgSend(v17, "bytes"));
  }

  if (self)
  {
    if (![(NSArray *)self->_matchTokens count])
    {
      goto LABEL_49;
    }
  }

  else if (![0 count])
  {
    goto LABEL_49;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  if (self)
  {
    matchTokens = self->_matchTokens;
  }

  else
  {
    matchTokens = 0;
  }

  v20 = matchTokens;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v41;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v40 + 1) + 8 * i);
        v26 = v3;
        NRTLVAdd(v26, 5, [v25 length], objc_msgSend(v25, "bytes"));
      }

      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v22);
  }

LABEL_49:
  if (self)
  {
    if (![(NSArray *)self->_excludedBundleIdentifiers count])
    {
      return v3;
    }
  }

  else if (![0 count])
  {
    return v3;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  if (self)
  {
    excludedBundleIdentifiers = self->_excludedBundleIdentifiers;
  }

  else
  {
    excludedBundleIdentifiers = 0;
  }

  v28 = excludedBundleIdentifiers;
  v29 = [(NSArray *)v28 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v37;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v37 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v36 + 1) + 8 * j) dataUsingEncoding:4];
        v34 = v3;
        NRTLVAdd(v34, 6, [v33 length], objc_msgSend(v33, "bytes"));
      }

      v30 = [(NSArray *)v28 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v30);
  }

  return v3;
}

- (NRDeviceProxyProviderFlowMatchRule)initWithReceivedData:(id)data
{
  v28 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v27.receiver = self;
  v27.super_class = NRDeviceProxyProviderFlowMatchRule;
  v5 = [(NRDeviceProxyProviderFlowMatchRule *)&v27 init];
  if (!v5)
  {
    v9 = nrCopyLogObj_672();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v10 = v9;
      v11 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (!v11)
      {
        goto LABEL_10;
      }
    }

    v12 = nrCopyLogObj_672();
    _NRLogWithArgs(v12, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDeviceProxyProviderFlowMatchRule initWithReceivedData:]"", 91);

LABEL_10:
    v13 = _os_log_pack_size();
    v15 = &v20[-1] - ((MEMORY[0x28223BE20](v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = __error();
    v17 = _os_log_pack_fill(v15, v13, *v16, &dword_25B98C000, "%{public}s [super init] failed");
    *v17 = 136446210;
    *(v17 + 4) = "[NRDeviceProxyProviderFlowMatchRule initWithReceivedData:]";
    v18 = nrCopyLogObj_672();
    _NRLogAbortWithPack(v18, v15);
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __59__NRDeviceProxyProviderFlowMatchRule_initWithReceivedData___block_invoke;
  v20[3] = &unk_27996B030;
  v22 = &v23;
  v6 = v5;
  v21 = v6;
  NRTLVParse(dataCopy, v20);
  if (v24[3])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v23, 8);
  return v7;
}

uint64_t __59__NRDeviceProxyProviderFlowMatchRule_initWithReceivedData___block_invoke(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a2 + 1);
  v4 = __rev16(v3);
  v5 = *a2;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      if (v3 == 256)
      {
        v9 = a2[3];
        if (v9 >= 0xA)
        {
          if (nrCopyLogObj_onceToken_675 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_675, &__block_literal_global_676);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_677, OS_LOG_TYPE_ERROR))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_677, 16, "%s%.30s:%-4d unexpected NRTraffic class %u", ", "copySOTrafficClassFromNRTrafficClass"", 76, v9);
          }

          v10 = 0;
        }

        else
        {
          v10 = 100 * v9;
        }

        [*(a1 + 32) setTrafficClass:v10];
        return *(*(*(a1 + 40) + 8) + 24);
      }

      if (nrCopyLogObj_onceToken_675 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_675, &__block_literal_global_676);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_677, OS_LOG_TYPE_ERROR))
      {
        v12 = nrCopyLogObj_sNRLogObj_677;
        v13 = 98;
LABEL_40:
        _NRLogWithArgs(v12, 16, "%s%.30s:%-4d invalid length", ", "[NRDeviceProxyProviderFlowMatchRule initWithReceivedData:]_block_invoke"", v13);
      }
    }

    else
    {
      if (v5 != 2)
      {
LABEL_23:
        if (v5 == 6 && v3 != 0)
        {
          v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a2 + 3 length:v4 encoding:4];
          if (v6)
          {
            [*(a1 + 32) excludeBundleIdentifier:v6];
          }

          goto LABEL_29;
        }

        return *(*(*(a1 + 40) + 8) + 24);
      }

      if (v3 == 256)
      {
        *(*(a1 + 32) + 8) = a2[3];
        return *(*(*(a1 + 40) + 8) + 24);
      }

      if (nrCopyLogObj_onceToken_675 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_675, &__block_literal_global_676);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_677, OS_LOG_TYPE_ERROR))
      {
        v12 = nrCopyLogObj_sNRLogObj_677;
        v13 = 106;
        goto LABEL_40;
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    return *(*(*(a1 + 40) + 8) + 24);
  }

  if (v5 == 3)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a2 + 3 length:v4 encoding:4];
    [*(a1 + 32) setDomain:v6];
    goto LABEL_29;
  }

  if (v5 == 4)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a2 + 3 length:v4];
    v15 = 0;
    v7 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:&v15];
    v8 = v15;
    [*(a1 + 32) setEntitlements:v7];

    if (v8)
    {
      if (nrCopyLogObj_onceToken_675 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_675, &__block_literal_global_676);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_677, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_677, 16, "%s%.30s:%-4d deserialization error %@", ", "[NRDeviceProxyProviderFlowMatchRule initWithReceivedData:]_block_invoke"", 123, v8);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    goto LABEL_29;
  }

  if (v5 != 5)
  {
    goto LABEL_23;
  }

  if (*(a2 + 1))
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a2 + 3 length:v4];
    [*(a1 + 32) addMatchToken:v6];
LABEL_29:
  }

  return *(*(*(a1 + 40) + 8) + 24);
}

+ (id)copyMatchRulesForCellularSlicing
{
  v32 = *MEMORY[0x277D85DE8];
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = [&unk_286D2D118 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v19)
  {
    v18 = *v27;
    do
    {
      v2 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(&unk_286D2D118);
        }

        v3 = *(*(&v26 + 1) + 8 * v2);
        objc_opt_self();
        v4 = [v3 componentsSeparatedByString:@"-"];

        v20 = v2;
        if ([v4 count] < 2)
        {
          v5 = 0;
        }

        else
        {
          v5 = [v4 objectAtIndexedSubscript:1];
        }

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v6 = [&unk_286D2D1A8 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v23;
          do
          {
            v9 = 0;
            do
            {
              if (*v23 != v8)
              {
                objc_enumerationMutation(&unk_286D2D1A8);
              }

              v12 = *(*(&v22 + 1) + 8 * v9);
              v13 = objc_alloc_init(NRDeviceProxyProviderFlowMatchRule);
              v14 = [&unk_286D2D1D0 objectForKeyedSubscript:v12];
              -[NRDeviceProxyProviderFlowMatchRule setTrafficClass:](v13, "setTrafficClass:", [v14 unsignedIntValue]);
              v15 = v12;
              objc_opt_self();
              v16 = [v15 componentsSeparatedByString:@"-"];

              if ([v16 count] >= 2)
              {
                v10 = [v16 objectAtIndexedSubscript:1];
              }

              else
              {
                v10 = 0;
              }

              v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%@.%@", @"com.apple.networkrelay.tethering", v10, v5];
              [(NRDeviceProxyProviderFlowMatchRule *)v13 setMatchResultAccountID:v11];

              [(NRDeviceProxyProviderFlowMatchRule *)v13 setMatchResultBundleID:@"com.apple.datausage.personalhotspot"];
              [(NRDeviceProxyProviderFlowMatchRule *)v13 addMatchRuleForClientsWithEntitlement:@"com.apple.developer.networking.slicing.appcategory" entitlementValue:v3];
              [(NRDeviceProxyProviderFlowMatchRule *)v13 addMatchRuleForClientsWithEntitlement:@"com.apple.developer.networking.slicing.trafficcategory" entitlementValue:v15];
              [v21 addObject:v13];

              ++v9;
            }

            while (v7 != v9);
            v7 = [&unk_286D2D1A8 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v7);
        }

        v2 = v20 + 1;
      }

      while (v20 + 1 != v19);
      v19 = [&unk_286D2D118 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v19);
  }

  return v21;
}

@end