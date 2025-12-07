@interface NSPPrivacyProxyProxyInfo
- (BOOL)isEqual:(id)equal;
- (id)algorithmAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)proxyHopAsString:(int)string;
- (int)StringAsAlgorithm:(id)algorithm;
- (int)StringAsProxyHop:(id)hop;
- (int)algorithm;
- (unint64_t)hash;
- (void)addAllowedNextHops:(id)hops;
- (void)addBootstrapAddresses:(id)addresses;
- (void)addPreferredPathPatterns:(id)patterns;
- (void)addProxyKeyInfo:(id)info;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFallbackSupportsUDPProxying:(BOOL)proxying;
- (void)setHasProxyIndex:(BOOL)index;
- (void)setHasSupportsFallback:(BOOL)fallback;
- (void)setHasSupportsResumption:(BOOL)resumption;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxyProxyInfo

- (id)proxyHopAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E7A306F0[string];
  }

  return v4;
}

- (int)StringAsProxyHop:(id)hop
{
  hopCopy = hop;
  if ([hopCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([hopCopy isEqualToString:@"INGRESS_ONLY"])
  {
    v4 = 1;
  }

  else if ([hopCopy isEqualToString:@"EGRESS_ONLY"])
  {
    v4 = 2;
  }

  else if ([hopCopy isEqualToString:@"ANY"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addProxyKeyInfo:(id)info
{
  infoCopy = info;
  proxyKeyInfos = self->_proxyKeyInfos;
  v8 = infoCopy;
  if (!proxyKeyInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_proxyKeyInfos;
    self->_proxyKeyInfos = v6;

    infoCopy = v8;
    proxyKeyInfos = self->_proxyKeyInfos;
  }

  [(NSMutableArray *)proxyKeyInfos addObject:infoCopy];
}

- (void)setHasSupportsFallback:(BOOL)fallback
{
  if (fallback)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSupportsResumption:(BOOL)resumption
{
  if (resumption)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)addBootstrapAddresses:(id)addresses
{
  addressesCopy = addresses;
  bootstrapAddresses = self->_bootstrapAddresses;
  v8 = addressesCopy;
  if (!bootstrapAddresses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_bootstrapAddresses;
    self->_bootstrapAddresses = v6;

    addressesCopy = v8;
    bootstrapAddresses = self->_bootstrapAddresses;
  }

  [(NSMutableArray *)bootstrapAddresses addObject:addressesCopy];
}

- (void)addAllowedNextHops:(id)hops
{
  hopsCopy = hops;
  allowedNextHops = self->_allowedNextHops;
  v8 = hopsCopy;
  if (!allowedNextHops)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_allowedNextHops;
    self->_allowedNextHops = v6;

    hopsCopy = v8;
    allowedNextHops = self->_allowedNextHops;
  }

  [(NSMutableArray *)allowedNextHops addObject:hopsCopy];
}

- (void)addPreferredPathPatterns:(id)patterns
{
  patternsCopy = patterns;
  preferredPathPatterns = self->_preferredPathPatterns;
  v8 = patternsCopy;
  if (!preferredPathPatterns)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_preferredPathPatterns;
    self->_preferredPathPatterns = v6;

    patternsCopy = v8;
    preferredPathPatterns = self->_preferredPathPatterns;
  }

  [(NSMutableArray *)preferredPathPatterns addObject:patternsCopy];
}

- (void)setHasFallbackSupportsUDPProxying:(BOOL)proxying
{
  if (proxying)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)algorithm
{
  if (*&self->_has)
  {
    return self->_algorithm;
  }

  else
  {
    return 0;
  }
}

- (id)algorithmAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E7A30710[string];
  }

  return v4;
}

- (int)StringAsAlgorithm:(id)algorithm
{
  algorithmCopy = algorithm;
  if ([algorithmCopy isEqualToString:@"NOT_SET"])
  {
    v4 = 0;
  }

  else if ([algorithmCopy isEqualToString:@"P384"])
  {
    v4 = 1;
  }

  else if ([algorithmCopy isEqualToString:@"X25519"])
  {
    v4 = 2;
  }

  else if ([algorithmCopy isEqualToString:@"X25519_MLKEM768"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasProxyIndex:(BOOL)index
{
  if (index)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyProxyInfo;
  v4 = [(NSPPrivacyProxyProxyInfo *)&v8 description];
  dictionaryRepresentation = [(NSPPrivacyProxyProxyInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  proxyHop = self->_proxyHop;
  if (proxyHop >= 4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_proxyHop];
  }

  else
  {
    v5 = off_1E7A306F0[proxyHop];
  }

  [dictionary setObject:v5 forKey:@"proxyHop"];

  proxyURL = self->_proxyURL;
  if (proxyURL)
  {
    [dictionary setObject:proxyURL forKey:@"proxyURL"];
  }

  proxyKeyInfos = self->_proxyKeyInfos;
  if (proxyKeyInfos)
  {
    [dictionary setObject:proxyKeyInfos forKey:@"proxyKeyInfo"];
  }

  tokenKeyInfo = self->_tokenKeyInfo;
  if (tokenKeyInfo)
  {
    [dictionary setObject:tokenKeyInfo forKey:@"tokenKeyInfo"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsFallback];
    [dictionary setObject:v9 forKey:@"supportsFallback"];
  }

  vendor = self->_vendor;
  if (vendor)
  {
    [dictionary setObject:vendor forKey:@"vendor"];
  }

  tcpProxyFqdn = self->_tcpProxyFqdn;
  if (tcpProxyFqdn)
  {
    [dictionary setObject:tcpProxyFqdn forKey:@"tcpProxyFqdn"];
  }

  preferredPathConfigUri = self->_preferredPathConfigUri;
  if (preferredPathConfigUri)
  {
    [dictionary setObject:preferredPathConfigUri forKey:@"preferredPathConfigUri"];
  }

  proxyVersion = self->_proxyVersion;
  if (proxyVersion)
  {
    [dictionary setObject:proxyVersion forKey:@"proxyVersion"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsResumption];
    [dictionary setObject:v14 forKey:@"supportsResumption"];
  }

  bootstrapAddresses = self->_bootstrapAddresses;
  if (bootstrapAddresses)
  {
    [dictionary setObject:bootstrapAddresses forKey:@"bootstrapAddresses"];
  }

  allowedNextHops = self->_allowedNextHops;
  if (allowedNextHops)
  {
    [dictionary setObject:allowedNextHops forKey:@"allowedNextHops"];
  }

  tokenChallenge = self->_tokenChallenge;
  if (tokenChallenge)
  {
    [dictionary setObject:tokenChallenge forKey:@"tokenChallenge"];
  }

  preferredPathPatterns = self->_preferredPathPatterns;
  if (preferredPathPatterns)
  {
    [dictionary setObject:preferredPathPatterns forKey:@"preferredPathPatterns"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:self->_fallbackSupportsUDPProxying];
    [dictionary setObject:v22 forKey:@"fallbackSupportsUDPProxying"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_32:
      if ((has & 2) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_32;
  }

  algorithm = self->_algorithm;
  if (algorithm >= 4)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_algorithm];
  }

  else
  {
    v24 = off_1E7A30710[algorithm];
  }

  [dictionary setObject:v24 forKey:@"algorithm"];

  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_34;
  }

LABEL_33:
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_proxyIndex];
  [dictionary setObject:v20 forKey:@"proxyIndex"];

LABEL_34:

  return dictionary;
}

- (void)writeTo:(id)to
{
  v46 = *MEMORY[0x1E69E9840];
  toCopy = to;
  PBDataWriterWriteInt32Field();
  if (!self->_proxyURL)
  {
    __assert_rtn("[NSPPrivacyProxyProxyInfo writeTo:]", "NSPPrivacyProxyProxyInfo.m", 475, "nil != self->_proxyURL");
  }

  PBDataWriterWriteStringField();
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = self->_proxyKeyInfos;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteDataField();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v7);
  }

  if (!self->_tokenKeyInfo)
  {
    __assert_rtn("[NSPPrivacyProxyProxyInfo writeTo:]", "NSPPrivacyProxyProxyInfo.m", 487, "nil != self->_tokenKeyInfo");
  }

  PBDataWriterWriteDataField();
  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_vendor)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_tcpProxyFqdn)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_preferredPathConfigUri)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_proxyVersion)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = self->_bootstrapAddresses;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v12);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = self->_allowedNextHops;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteStringField();
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v30 objects:v43 count:16];
    }

    while (v17);
  }

  if (self->_tokenChallenge)
  {
    PBDataWriterWriteDataField();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = self->_preferredPathPatterns;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v26 objects:v42 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      for (m = 0; m != v22; ++m)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteStringField();
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v26 objects:v42 count:16];
    }

    while (v22);
  }

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_47;
    }

LABEL_51:
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if (has)
  {
    goto LABEL_51;
  }

LABEL_47:
  if ((has & 2) != 0)
  {
LABEL_48:
    PBDataWriterWriteUint32Field();
  }

LABEL_49:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[12] = self->_proxyHop;
  v22 = toCopy;
  [toCopy setProxyURL:self->_proxyURL];
  if ([(NSPPrivacyProxyProxyInfo *)self proxyKeyInfosCount])
  {
    [v22 clearProxyKeyInfos];
    proxyKeyInfosCount = [(NSPPrivacyProxyProxyInfo *)self proxyKeyInfosCount];
    if (proxyKeyInfosCount)
    {
      v6 = proxyKeyInfosCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NSPPrivacyProxyProxyInfo *)self proxyKeyInfoAtIndex:i];
        [v22 addProxyKeyInfo:v8];
      }
    }
  }

  [v22 setTokenKeyInfo:self->_tokenKeyInfo];
  if ((*&self->_has & 8) != 0)
  {
    *(v22 + 113) = self->_supportsFallback;
    *(v22 + 116) |= 8u;
  }

  if (self->_vendor)
  {
    [v22 setVendor:?];
  }

  if (self->_tcpProxyFqdn)
  {
    [v22 setTcpProxyFqdn:?];
  }

  if (self->_preferredPathConfigUri)
  {
    [v22 setPreferredPathConfigUri:?];
  }

  if (self->_proxyVersion)
  {
    [v22 setProxyVersion:?];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v22 + 114) = self->_supportsResumption;
    *(v22 + 116) |= 0x10u;
  }

  if ([(NSPPrivacyProxyProxyInfo *)self bootstrapAddressesCount])
  {
    [v22 clearBootstrapAddresses];
    bootstrapAddressesCount = [(NSPPrivacyProxyProxyInfo *)self bootstrapAddressesCount];
    if (bootstrapAddressesCount)
    {
      v10 = bootstrapAddressesCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(NSPPrivacyProxyProxyInfo *)self bootstrapAddressesAtIndex:j];
        [v22 addBootstrapAddresses:v12];
      }
    }
  }

  if ([(NSPPrivacyProxyProxyInfo *)self allowedNextHopsCount])
  {
    [v22 clearAllowedNextHops];
    allowedNextHopsCount = [(NSPPrivacyProxyProxyInfo *)self allowedNextHopsCount];
    if (allowedNextHopsCount)
    {
      v14 = allowedNextHopsCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(NSPPrivacyProxyProxyInfo *)self allowedNextHopsAtIndex:k];
        [v22 addAllowedNextHops:v16];
      }
    }
  }

  if (self->_tokenChallenge)
  {
    [v22 setTokenChallenge:?];
  }

  if ([(NSPPrivacyProxyProxyInfo *)self preferredPathPatternsCount])
  {
    [v22 clearPreferredPathPatterns];
    preferredPathPatternsCount = [(NSPPrivacyProxyProxyInfo *)self preferredPathPatternsCount];
    if (preferredPathPatternsCount)
    {
      v18 = preferredPathPatternsCount;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(NSPPrivacyProxyProxyInfo *)self preferredPathPatternsAtIndex:m];
        [v22 addPreferredPathPatterns:v20];
      }
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v22 + 112) = self->_fallbackSupportsUDPProxying;
    *(v22 + 116) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_33:
      if ((has & 2) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_33;
  }

  *(v22 + 2) = self->_algorithm;
  *(v22 + 116) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_34:
    *(v22 + 13) = self->_proxyIndex;
    *(v22 + 116) |= 2u;
  }

LABEL_35:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 48) = self->_proxyHop;
  v6 = [(NSString *)self->_proxyURL copyWithZone:zone];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v8 = self->_proxyKeyInfos;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v59;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v59 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v58 + 1) + 8 * i) copyWithZone:zone];
        [v5 addProxyKeyInfo:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v10);
  }

  v14 = [(NSData *)self->_tokenKeyInfo copyWithZone:zone];
  v15 = *(v5 + 96);
  *(v5 + 96) = v14;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 113) = self->_supportsFallback;
    *(v5 + 116) |= 8u;
  }

  v16 = [(NSString *)self->_vendor copyWithZone:zone];
  v17 = *(v5 + 104);
  *(v5 + 104) = v16;

  v18 = [(NSString *)self->_tcpProxyFqdn copyWithZone:zone];
  v19 = *(v5 + 80);
  *(v5 + 80) = v18;

  v20 = [(NSString *)self->_preferredPathConfigUri copyWithZone:zone];
  v21 = *(v5 + 32);
  *(v5 + 32) = v20;

  v22 = [(NSString *)self->_proxyVersion copyWithZone:zone];
  v23 = *(v5 + 72);
  *(v5 + 72) = v22;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 114) = self->_supportsResumption;
    *(v5 + 116) |= 0x10u;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v24 = self->_bootstrapAddresses;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v55;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v55 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v54 + 1) + 8 * j) copyWithZone:zone];
        [v5 addBootstrapAddresses:v29];
      }

      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v26);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v30 = self->_allowedNextHops;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v51;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v51 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v50 + 1) + 8 * k) copyWithZone:zone];
        [v5 addAllowedNextHops:v35];
      }

      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v50 objects:v63 count:16];
    }

    while (v32);
  }

  v36 = [(NSData *)self->_tokenChallenge copyWithZone:zone];
  v37 = *(v5 + 88);
  *(v5 + 88) = v36;

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v38 = self->_preferredPathPatterns;
  v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v46 objects:v62 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v47;
    do
    {
      for (m = 0; m != v40; ++m)
      {
        if (*v47 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = [*(*(&v46 + 1) + 8 * m) copyWithZone:{zone, v46}];
        [v5 addPreferredPathPatterns:v43];
      }

      v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v46 objects:v62 count:16];
    }

    while (v40);
  }

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_39:
    *(v5 + 8) = self->_algorithm;
    *(v5 + 116) |= 1u;
    if ((*&self->_has & 2) == 0)
    {
      return v5;
    }

    goto LABEL_36;
  }

  *(v5 + 112) = self->_fallbackSupportsUDPProxying;
  *(v5 + 116) |= 4u;
  has = self->_has;
  if (has)
  {
    goto LABEL_39;
  }

LABEL_35:
  if ((has & 2) != 0)
  {
LABEL_36:
    *(v5 + 52) = self->_proxyIndex;
    *(v5 + 116) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  if (self->_proxyHop != *(equalCopy + 12))
  {
    goto LABEL_35;
  }

  proxyURL = self->_proxyURL;
  if (proxyURL | *(equalCopy + 8))
  {
    if (![(NSString *)proxyURL isEqual:?])
    {
      goto LABEL_35;
    }
  }

  proxyKeyInfos = self->_proxyKeyInfos;
  if (proxyKeyInfos | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)proxyKeyInfos isEqual:?])
    {
      goto LABEL_35;
    }
  }

  tokenKeyInfo = self->_tokenKeyInfo;
  if (tokenKeyInfo | *(equalCopy + 12))
  {
    if (![(NSData *)tokenKeyInfo isEqual:?])
    {
      goto LABEL_35;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 116) & 8) == 0)
    {
      goto LABEL_35;
    }

    if (self->_supportsFallback)
    {
      if ((*(equalCopy + 113) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(equalCopy + 113))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 116) & 8) != 0)
  {
    goto LABEL_35;
  }

  vendor = self->_vendor;
  if (vendor | *(equalCopy + 13) && ![(NSString *)vendor isEqual:?])
  {
    goto LABEL_35;
  }

  tcpProxyFqdn = self->_tcpProxyFqdn;
  if (tcpProxyFqdn | *(equalCopy + 10))
  {
    if (![(NSString *)tcpProxyFqdn isEqual:?])
    {
      goto LABEL_35;
    }
  }

  preferredPathConfigUri = self->_preferredPathConfigUri;
  if (preferredPathConfigUri | *(equalCopy + 4))
  {
    if (![(NSString *)preferredPathConfigUri isEqual:?])
    {
      goto LABEL_35;
    }
  }

  proxyVersion = self->_proxyVersion;
  if (proxyVersion | *(equalCopy + 9))
  {
    if (![(NSString *)proxyVersion isEqual:?])
    {
      goto LABEL_35;
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 116) & 0x10) == 0)
    {
      goto LABEL_35;
    }

    if (self->_supportsResumption)
    {
      if ((*(equalCopy + 114) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(equalCopy + 114))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 116) & 0x10) != 0)
  {
    goto LABEL_35;
  }

  bootstrapAddresses = self->_bootstrapAddresses;
  if (bootstrapAddresses | *(equalCopy + 3) && ![(NSMutableArray *)bootstrapAddresses isEqual:?])
  {
    goto LABEL_35;
  }

  allowedNextHops = self->_allowedNextHops;
  if (allowedNextHops | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)allowedNextHops isEqual:?])
    {
      goto LABEL_35;
    }
  }

  tokenChallenge = self->_tokenChallenge;
  if (tokenChallenge | *(equalCopy + 11))
  {
    if (![(NSData *)tokenChallenge isEqual:?])
    {
      goto LABEL_35;
    }
  }

  preferredPathPatterns = self->_preferredPathPatterns;
  if (preferredPathPatterns | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)preferredPathPatterns isEqual:?])
    {
      goto LABEL_35;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 116) & 4) == 0)
    {
      goto LABEL_35;
    }

    if (self->_fallbackSupportsUDPProxying)
    {
      if ((*(equalCopy + 112) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(equalCopy + 112))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 116) & 4) != 0)
  {
    goto LABEL_35;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 116) & 1) == 0 || self->_algorithm != *(equalCopy + 2))
    {
      goto LABEL_35;
    }
  }

  else if (*(equalCopy + 116))
  {
    goto LABEL_35;
  }

  v16 = (*(equalCopy + 116) & 2) == 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_36;
  }

  if ((*(equalCopy + 116) & 2) != 0 && self->_proxyIndex == *(equalCopy + 13))
  {
    v16 = 1;
    goto LABEL_36;
  }

LABEL_35:
  v16 = 0;
LABEL_36:

  return v16;
}

- (unint64_t)hash
{
  proxyHop = self->_proxyHop;
  v19 = [(NSString *)self->_proxyURL hash];
  v18 = [(NSMutableArray *)self->_proxyKeyInfos hash];
  v17 = [(NSData *)self->_tokenKeyInfo hash];
  if ((*&self->_has & 8) != 0)
  {
    v16 = 2654435761 * self->_supportsFallback;
  }

  else
  {
    v16 = 0;
  }

  v15 = [(NSString *)self->_vendor hash];
  v3 = [(NSString *)self->_tcpProxyFqdn hash];
  v4 = [(NSString *)self->_preferredPathConfigUri hash];
  v5 = [(NSString *)self->_proxyVersion hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v6 = 2654435761 * self->_supportsResumption;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSMutableArray *)self->_bootstrapAddresses hash];
  v8 = [(NSMutableArray *)self->_allowedNextHops hash];
  v9 = [(NSData *)self->_tokenChallenge hash];
  v10 = [(NSMutableArray *)self->_preferredPathPatterns hash];
  if ((*&self->_has & 4) == 0)
  {
    v11 = 0;
    if (*&self->_has)
    {
      goto LABEL_9;
    }

LABEL_12:
    v12 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v13 = 0;
    return v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ (2654435761 * proxyHop) ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

  v11 = 2654435761 * self->_fallbackSupportsUDPProxying;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v12 = 2654435761 * self->_algorithm;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v13 = 2654435761 * self->_proxyIndex;
  return v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ (2654435761 * proxyHop) ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)from
{
  v46 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  self->_proxyHop = *(fromCopy + 12);
  if (*(fromCopy + 8))
  {
    [(NSPPrivacyProxyProxyInfo *)self setProxyURL:?];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = *(fromCopy + 7);
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NSPPrivacyProxyProxyInfo *)self addProxyKeyInfo:*(*(&v38 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 12))
  {
    [(NSPPrivacyProxyProxyInfo *)self setTokenKeyInfo:?];
  }

  if ((*(fromCopy + 116) & 8) != 0)
  {
    self->_supportsFallback = *(fromCopy + 113);
    *&self->_has |= 8u;
  }

  if (*(fromCopy + 13))
  {
    [(NSPPrivacyProxyProxyInfo *)self setVendor:?];
  }

  if (*(fromCopy + 10))
  {
    [(NSPPrivacyProxyProxyInfo *)self setTcpProxyFqdn:?];
  }

  if (*(fromCopy + 4))
  {
    [(NSPPrivacyProxyProxyInfo *)self setPreferredPathConfigUri:?];
  }

  if (*(fromCopy + 9))
  {
    [(NSPPrivacyProxyProxyInfo *)self setProxyVersion:?];
  }

  if ((*(fromCopy + 116) & 0x10) != 0)
  {
    self->_supportsResumption = *(fromCopy + 114);
    *&self->_has |= 0x10u;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = *(fromCopy + 3);
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NSPPrivacyProxyProxyInfo *)self addBootstrapAddresses:*(*(&v34 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v12);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = *(fromCopy + 2);
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(NSPPrivacyProxyProxyInfo *)self addAllowedNextHops:*(*(&v30 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v30 objects:v43 count:16];
    }

    while (v17);
  }

  if (*(fromCopy + 11))
  {
    [(NSPPrivacyProxyProxyInfo *)self setTokenChallenge:?];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = *(fromCopy + 5);
  v21 = [v20 countByEnumeratingWithState:&v26 objects:v42 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      for (m = 0; m != v22; ++m)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(NSPPrivacyProxyProxyInfo *)self addPreferredPathPatterns:*(*(&v26 + 1) + 8 * m), v26];
      }

      v22 = [v20 countByEnumeratingWithState:&v26 objects:v42 count:16];
    }

    while (v22);
  }

  v25 = *(fromCopy + 116);
  if ((v25 & 4) == 0)
  {
    if ((*(fromCopy + 116) & 1) == 0)
    {
      goto LABEL_49;
    }

LABEL_53:
    self->_algorithm = *(fromCopy + 2);
    *&self->_has |= 1u;
    if ((*(fromCopy + 116) & 2) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  self->_fallbackSupportsUDPProxying = *(fromCopy + 112);
  *&self->_has |= 4u;
  v25 = *(fromCopy + 116);
  if (v25)
  {
    goto LABEL_53;
  }

LABEL_49:
  if ((v25 & 2) != 0)
  {
LABEL_50:
    self->_proxyIndex = *(fromCopy + 13);
    *&self->_has |= 2u;
  }

LABEL_51:
}

@end