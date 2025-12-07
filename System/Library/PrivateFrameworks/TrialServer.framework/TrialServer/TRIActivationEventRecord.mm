@interface TRIActivationEventRecord
+ (id)recordWithParentId:(id)id factorPackSetId:(id)setId deploymentId:(int)deploymentId osBuild:(id)build languageCode:(id)code regionCode:(id)regionCode carrierBundleIdentifier:(id)identifier carrierCountryIsoCode:(id)self0 diagnosticsUsageEnabled:(int64_t)self1 hasAne:(int64_t)self2 aneVersion:(id)self3;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecord:(id)record;
- (TRIActivationEventRecord)initWithParentId:(id)id factorPackSetId:(id)setId deploymentId:(int)deploymentId osBuild:(id)build languageCode:(id)code regionCode:(id)regionCode carrierBundleIdentifier:(id)identifier carrierCountryIsoCode:(id)self0 diagnosticsUsageEnabled:(int64_t)self1 hasAne:(int64_t)self2 aneVersion:(id)self3;
- (id)copyWithReplacementAneVersion:(id)version;
- (id)copyWithReplacementCarrierBundleIdentifier:(id)identifier;
- (id)copyWithReplacementCarrierCountryIsoCode:(id)code;
- (id)copyWithReplacementFactorPackSetId:(id)id;
- (id)copyWithReplacementLanguageCode:(id)code;
- (id)copyWithReplacementOsBuild:(id)build;
- (id)copyWithReplacementParentId:(id)id;
- (id)copyWithReplacementRegionCode:(id)code;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIActivationEventRecord

- (TRIActivationEventRecord)initWithParentId:(id)id factorPackSetId:(id)setId deploymentId:(int)deploymentId osBuild:(id)build languageCode:(id)code regionCode:(id)regionCode carrierBundleIdentifier:(id)identifier carrierCountryIsoCode:(id)self0 diagnosticsUsageEnabled:(int64_t)self1 hasAne:(int64_t)self2 aneVersion:(id)self3
{
  idCopy = id;
  setIdCopy = setId;
  setIdCopy2 = setId;
  buildCopy = build;
  buildCopy2 = build;
  codeCopy = code;
  codeCopy2 = code;
  regionCodeCopy = regionCode;
  identifierCopy = identifier;
  isoCodeCopy = isoCode;
  versionCopy = version;
  v41 = identifierCopy;
  v42 = versionCopy;
  if (idCopy)
  {
    if (setIdCopy2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1266 description:{@"Invalid parameter not satisfying: %@", @"parentId != nil"}];

    identifierCopy = v41;
    versionCopy = v42;
    if (setIdCopy2)
    {
LABEL_3:
      if (buildCopy2)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1267 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId != nil"}];

  identifierCopy = v41;
  versionCopy = v42;
  if (buildCopy2)
  {
LABEL_4:
    if (codeCopy2)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1268 description:{@"Invalid parameter not satisfying: %@", @"osBuild != nil"}];

  identifierCopy = v41;
  versionCopy = v42;
  if (codeCopy2)
  {
LABEL_5:
    if (regionCodeCopy)
    {
      goto LABEL_6;
    }

LABEL_16:
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1270 description:{@"Invalid parameter not satisfying: %@", @"regionCode != nil"}];

    versionCopy = v42;
    if (v41)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_15:
  currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1269 description:{@"Invalid parameter not satisfying: %@", @"languageCode != nil"}];

  identifierCopy = v41;
  versionCopy = v42;
  if (!regionCodeCopy)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (identifierCopy)
  {
    goto LABEL_7;
  }

LABEL_17:
  currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler6 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1271 description:{@"Invalid parameter not satisfying: %@", @"carrierBundleIdentifier != nil"}];

  versionCopy = v42;
LABEL_7:
  if (isoCodeCopy)
  {
    if (versionCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler7 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1272 description:{@"Invalid parameter not satisfying: %@", @"carrierCountryIsoCode != nil"}];

    if (v42)
    {
      goto LABEL_9;
    }
  }

  currentHandler8 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler8 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1273 description:{@"Invalid parameter not satisfying: %@", @"aneVersion != nil"}];

LABEL_9:
  v45.receiver = self;
  v45.super_class = TRIActivationEventRecord;
  v24 = [(TRIActivationEventRecord *)&v45 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_parentId, id);
    objc_storeStrong(&v25->_factorPackSetId, setIdCopy);
    v25->_deploymentId = deploymentId;
    objc_storeStrong(&v25->_osBuild, buildCopy);
    objc_storeStrong(&v25->_languageCode, codeCopy);
    objc_storeStrong(&v25->_regionCode, regionCode);
    objc_storeStrong(&v25->_carrierBundleIdentifier, identifier);
    objc_storeStrong(&v25->_carrierCountryIsoCode, isoCode);
    v25->_diagnosticsUsageEnabled = enabled;
    v25->_hasAne = ane;
    objc_storeStrong(&v25->_aneVersion, version);
  }

  return v25;
}

+ (id)recordWithParentId:(id)id factorPackSetId:(id)setId deploymentId:(int)deploymentId osBuild:(id)build languageCode:(id)code regionCode:(id)regionCode carrierBundleIdentifier:(id)identifier carrierCountryIsoCode:(id)self0 diagnosticsUsageEnabled:(int64_t)self1 hasAne:(int64_t)self2 aneVersion:(id)self3
{
  versionCopy = version;
  isoCodeCopy = isoCode;
  identifierCopy = identifier;
  regionCodeCopy = regionCode;
  codeCopy = code;
  buildCopy = build;
  setIdCopy = setId;
  idCopy = id;
  v27 = [[self alloc] initWithParentId:idCopy factorPackSetId:setIdCopy deploymentId:deploymentId osBuild:buildCopy languageCode:codeCopy regionCode:regionCodeCopy carrierBundleIdentifier:identifierCopy carrierCountryIsoCode:isoCodeCopy diagnosticsUsageEnabled:enabled hasAne:ane aneVersion:versionCopy];

  return v27;
}

- (id)copyWithReplacementParentId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithParentId:idCopy factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId osBuild:self->_osBuild languageCode:self->_languageCode regionCode:self->_regionCode carrierBundleIdentifier:self->_carrierBundleIdentifier carrierCountryIsoCode:self->_carrierCountryIsoCode diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:self->_aneVersion];

  return v5;
}

- (id)copyWithReplacementFactorPackSetId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithParentId:self->_parentId factorPackSetId:idCopy deploymentId:self->_deploymentId osBuild:self->_osBuild languageCode:self->_languageCode regionCode:self->_regionCode carrierBundleIdentifier:self->_carrierBundleIdentifier carrierCountryIsoCode:self->_carrierCountryIsoCode diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:self->_aneVersion];

  return v5;
}

- (id)copyWithReplacementOsBuild:(id)build
{
  buildCopy = build;
  v5 = [objc_alloc(objc_opt_class()) initWithParentId:self->_parentId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId osBuild:buildCopy languageCode:self->_languageCode regionCode:self->_regionCode carrierBundleIdentifier:self->_carrierBundleIdentifier carrierCountryIsoCode:self->_carrierCountryIsoCode diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:self->_aneVersion];

  return v5;
}

- (id)copyWithReplacementLanguageCode:(id)code
{
  codeCopy = code;
  v5 = [objc_alloc(objc_opt_class()) initWithParentId:self->_parentId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId osBuild:self->_osBuild languageCode:codeCopy regionCode:self->_regionCode carrierBundleIdentifier:self->_carrierBundleIdentifier carrierCountryIsoCode:self->_carrierCountryIsoCode diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:self->_aneVersion];

  return v5;
}

- (id)copyWithReplacementRegionCode:(id)code
{
  codeCopy = code;
  v5 = [objc_alloc(objc_opt_class()) initWithParentId:self->_parentId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId osBuild:self->_osBuild languageCode:self->_languageCode regionCode:codeCopy carrierBundleIdentifier:self->_carrierBundleIdentifier carrierCountryIsoCode:self->_carrierCountryIsoCode diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:self->_aneVersion];

  return v5;
}

- (id)copyWithReplacementCarrierBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithParentId:self->_parentId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId osBuild:self->_osBuild languageCode:self->_languageCode regionCode:self->_regionCode carrierBundleIdentifier:identifierCopy carrierCountryIsoCode:self->_carrierCountryIsoCode diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:self->_aneVersion];

  return v5;
}

- (id)copyWithReplacementCarrierCountryIsoCode:(id)code
{
  codeCopy = code;
  v5 = [objc_alloc(objc_opt_class()) initWithParentId:self->_parentId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId osBuild:self->_osBuild languageCode:self->_languageCode regionCode:self->_regionCode carrierBundleIdentifier:self->_carrierBundleIdentifier carrierCountryIsoCode:codeCopy diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:self->_aneVersion];

  return v5;
}

- (id)copyWithReplacementAneVersion:(id)version
{
  versionCopy = version;
  v5 = [objc_alloc(objc_opt_class()) initWithParentId:self->_parentId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId osBuild:self->_osBuild languageCode:self->_languageCode regionCode:self->_regionCode carrierBundleIdentifier:self->_carrierBundleIdentifier carrierCountryIsoCode:self->_carrierCountryIsoCode diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:versionCopy];

  return v5;
}

- (BOOL)isEqualToRecord:(id)record
{
  recordCopy = record;
  v5 = recordCopy;
  if (!recordCopy || (v6 = self->_parentId == 0, [recordCopy parentId], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (parentId = self->_parentId) != 0 && (objc_msgSend(v5, "parentId"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSString isEqual:](parentId, "isEqual:", v10), v10, !v11) || (v12 = self->_factorPackSetId == 0, objc_msgSend(v5, "factorPackSetId"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 != 0, v13, v12 == v14) || (factorPackSetId = self->_factorPackSetId) != 0 && (objc_msgSend(v5, "factorPackSetId"), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[NSString isEqual:](factorPackSetId, "isEqual:", v16), v16, !v17) || (deploymentId = self->_deploymentId, deploymentId != objc_msgSend(v5, "deploymentId")) || (v19 = self->_osBuild == 0, objc_msgSend(v5, "osBuild"), v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 != 0, v20, v19 == v21) || (osBuild = self->_osBuild) != 0 && (objc_msgSend(v5, "osBuild"), v23 = objc_claimAutoreleasedReturnValue(), v24 = -[NSString isEqual:](osBuild, "isEqual:", v23), v23, !v24) || (v25 = self->_languageCode == 0, objc_msgSend(v5, "languageCode"), v26 = objc_claimAutoreleasedReturnValue(), v27 = v26 != 0, v26, v25 == v27) || (languageCode = self->_languageCode) != 0 && (objc_msgSend(v5, "languageCode"), v29 = objc_claimAutoreleasedReturnValue(), v30 = -[NSString isEqual:](languageCode, "isEqual:", v29), v29, !v30) || (v31 = self->_regionCode == 0, objc_msgSend(v5, "regionCode"), v32 = objc_claimAutoreleasedReturnValue(), v33 = v32 != 0, v32, v31 == v33) || (regionCode = self->_regionCode) != 0 && (objc_msgSend(v5, "regionCode"), v35 = objc_claimAutoreleasedReturnValue(), v36 = -[NSString isEqual:](regionCode, "isEqual:", v35), v35, !v36) || (v37 = self->_carrierBundleIdentifier == 0, objc_msgSend(v5, "carrierBundleIdentifier"), v38 = objc_claimAutoreleasedReturnValue(), v39 = v38 != 0, v38, v37 == v39) || (carrierBundleIdentifier = self->_carrierBundleIdentifier) != 0 && (objc_msgSend(v5, "carrierBundleIdentifier"), v41 = objc_claimAutoreleasedReturnValue(), v42 = -[NSString isEqual:](carrierBundleIdentifier, "isEqual:", v41), v41, !v42) || (v43 = self->_carrierCountryIsoCode == 0, objc_msgSend(v5, "carrierCountryIsoCode"), v44 = objc_claimAutoreleasedReturnValue(), v45 = v44 != 0, v44, v43 == v45) || (carrierCountryIsoCode = self->_carrierCountryIsoCode) != 0 && (objc_msgSend(v5, "carrierCountryIsoCode"), v47 = objc_claimAutoreleasedReturnValue(), v48 = -[NSString isEqual:](carrierCountryIsoCode, "isEqual:", v47), v47, !v48) || (diagnosticsUsageEnabled = self->_diagnosticsUsageEnabled, diagnosticsUsageEnabled != objc_msgSend(v5, "diagnosticsUsageEnabled")) || (hasAne = self->_hasAne, hasAne != objc_msgSend(v5, "hasAne")) || (v51 = self->_aneVersion == 0, objc_msgSend(v5, "aneVersion"), v52 = objc_claimAutoreleasedReturnValue(), v53 = v52 != 0, v52, v51 == v53))
  {
    v56 = 0;
  }

  else
  {
    aneVersion = self->_aneVersion;
    if (aneVersion)
    {
      aneVersion = [v5 aneVersion];
      v56 = [(NSString *)aneVersion isEqual:aneVersion];
    }

    else
    {
      v56 = 1;
    }
  }

  return v56 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIActivationEventRecord *)self isEqualToRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_parentId hash];
  v4 = [(NSString *)self->_factorPackSetId hash];
  v5 = self->_deploymentId - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
  v6 = [(NSString *)self->_osBuild hash]- v5 + 32 * v5;
  v7 = [(NSString *)self->_languageCode hash]- v6 + 32 * v6;
  v8 = [(NSString *)self->_regionCode hash]- v7 + 32 * v7;
  v9 = [(NSString *)self->_carrierBundleIdentifier hash]- v8 + 32 * v8;
  v10 = [(NSString *)self->_carrierCountryIsoCode hash];
  v11 = self->_diagnosticsUsageEnabled - (v10 - v9 + 32 * v9) + 32 * (v10 - v9 + 32 * v9);
  v12 = self->_hasAne - v11 + 32 * v11;
  return [(NSString *)self->_aneVersion hash]- v12 + 32 * v12;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  parentId = self->_parentId;
  factorPackSetId = self->_factorPackSetId;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_deploymentId];
  v13 = *&self->_osBuild;
  v12 = *&self->_regionCode;
  carrierCountryIsoCode = self->_carrierCountryIsoCode;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_diagnosticsUsageEnabled];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_hasAne];
  v10 = [v3 initWithFormat:@"<TRIActivationEventRecord | parentId:%@ factorPackSetId:%@ deploymentId:%@ osBuild:%@ languageCode:%@ regionCode:%@ carrierBundleIdentifier:%@ carrierCountryIsoCode:%@ diagnosticsUsageEnabled:%@ hasAne:%@ aneVersion:%@>", parentId, factorPackSetId, v6, v13, v12, carrierCountryIsoCode, v8, v9, self->_aneVersion];

  return v10;
}

@end