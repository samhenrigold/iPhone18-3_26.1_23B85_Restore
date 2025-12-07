@interface UARPMetaDataTLV
+ (id)metaDataTable;
+ (id)tlvFromKey:(id)key value:(id)value;
+ (id)tlvFromType:(unsigned int)type length:(unsigned int)length value:(void *)value;
+ (id)tlvTypeName:(unsigned int)name;
- (UARPMetaDataTLV)init;
- (UARPMetaDataTLV)initWithType:(unsigned int)type length:(unsigned int)length value:(void *)value;
- (id)generateTLV;
@end

@implementation UARPMetaDataTLV

- (UARPMetaDataTLV)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV;
  return [(UARPMetaDataTLV *)&v3 init];
}

- (UARPMetaDataTLV)initWithType:(unsigned int)type length:(unsigned int)length value:(void *)value
{
  v13.receiver = self;
  v13.super_class = UARPMetaDataTLV;
  v8 = [(UARPMetaDataTLV *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_tlvType = type;
    v8->_tlvLength = length;
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:value length:length];
    tlvValue = v9->_tlvValue;
    v9->_tlvValue = v10;
  }

  return v9;
}

+ (id)tlvFromType:(unsigned int)type length:(unsigned int)length value:(void *)value
{
  switch(type)
  {
    case 0x88B29100:
      v5 = UARPTLVPersonalizationRequired;
      goto LABEL_41;
    case 0x88B29101:
      v5 = UARPTLVPersonalizationPayloadTag;
      goto LABEL_41;
    case 0x88B29102:
      v5 = UARPTLVPersonalizationSuperBinaryAssetID;
      goto LABEL_41;
    case 0x88B29103:
      v5 = UARPTLVPersonalizationManifestPrefix;
      goto LABEL_41;
    case 0x88B29104:
      v5 = UARPTLVPersonalizationBoardID;
      goto LABEL_41;
    case 0x88B29105:
      v5 = UARPTLVPersonalizationChipID;
      goto LABEL_41;
    case 0x88B29106:
      v5 = UARPTLVPersonalizationECID;
      goto LABEL_41;
    case 0x88B29107:
      v5 = UARPTLVPersonalizationNonce;
      goto LABEL_41;
    case 0x88B29108:
      v5 = UARPTLVPersonalizationNonceHash;
      goto LABEL_41;
    case 0x88B29109:
      v5 = UARPTLVPersonalizationSecurityDomain;
      goto LABEL_41;
    case 0x88B2910A:
      v5 = UARPTLVPersonalizationSecurityMode;
      goto LABEL_41;
    case 0x88B2910B:
      v5 = UARPTLVPersonalizationProductionMode;
      goto LABEL_41;
    case 0x88B2910C:
      v5 = UARPTLVPersonalizationChipEpoch;
      goto LABEL_41;
    case 0x88B2910D:
      v5 = UARPTLVPersonalizationEnableMixMatch;
      goto LABEL_41;
    case 0x88B2910E:
      v5 = UARPTLVPersonalizationSuperBinaryPayloadIndex;
      goto LABEL_41;
    case 0x88B2910F:
      v5 = UARPTLVPersonalizationChipRevision;
      goto LABEL_41;
    case 0x88B29110:
      v5 = UARPTLVPersonalizationFTABPayload;
      goto LABEL_41;
    case 0x88B29111:
      v5 = UARPTLVPersonalizationFTABSubfileTag;
      goto LABEL_41;
    case 0x88B29112:
      v5 = UARPTLVPersonalizationFTABSubfileLongname;
      goto LABEL_41;
    case 0x88B29113:
      v5 = UARPTLVPersonalizationFTABSubfileDigest;
      goto LABEL_41;
    case 0x88B29114:
      v5 = UARPTLVPersonalizationFTABSubfileHashAlgorithm;
      goto LABEL_41;
    case 0x88B29115:
      v5 = UARPTLVPersonalizationFTABSubfileESEC;
      goto LABEL_41;
    case 0x88B29116:
      v5 = UARPTLVPersonalizationFTABSubfileEPRO;
      goto LABEL_41;
    case 0x88B29117:
      v5 = UARPTLVPersonalizationFTABSubfileTrusted;
      goto LABEL_41;
    case 0x88B29118:
      v5 = UARPTLVPersonalizationSoCLiveNonce;
      goto LABEL_41;
    case 0x88B29121:
      v5 = UARPTLVPersonalizationPrefixNeedsLogicalUnitNumber;
      goto LABEL_41;
    case 0x88B29122:
      v5 = UARPTLVPersonalizationSuffixNeedsLogicalUnitNumber;
      goto LABEL_41;
    case 0x88B29125:
      v5 = UARPTLVPersonalizationLogicalUnitNumber;
      goto LABEL_41;
    case 0x88B29126:
      v5 = UARPTLVPersonalizationTicketNeedsLogicalUnitNumber;
      goto LABEL_41;
    case 0x88B29128:
      v5 = UARPTLVHostPersonalizationRequired;
      goto LABEL_41;
    case 0x88B29129:
      v5 = UARPTLVRequiredPersonalizationOption;
      goto LABEL_41;
    case 0x88B29130:
      v5 = UARPTLVPersonalizedManifest;
      goto LABEL_41;
    case 0x88B29131:
      v5 = UARPTLVPersonalizationLife;
      goto LABEL_41;
    case 0x88B29132:
      v5 = UARPTLVPersonalizationProvisioning;
      goto LABEL_41;
    case 0x88B29133:
      v5 = UARPTLVPersonalizationManifestEpoch;
      goto LABEL_41;
    case 0x88B29134:
      v5 = UARPTLVPersonalizationManifestSuffix;
      goto LABEL_41;
    case 0x88B29135:
      v5 = UARPTLVPersonalizationECIDData;
      goto LABEL_41;
    case 0x88B29136:
      v5 = UARPTLVPersonalizationFTABSubfileDigestFilename;
LABEL_41:
      v6 = [(__objc2_class *)v5 tlvWithLength:length value:value];
      break;
    default:
      v6 = [[UARPMetaDataTLV alloc] initWithType:*&type length:*&length value:value];
      break;
  }

  return v6;
}

+ (id)tlvFromKey:(id)key value:(id)value
{
  v25 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  v6 = +[UARPMetaDataTLV metaDataTable];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"Name"];
        if (![keyCopy caseInsensitiveCompare:v13])
        {
          v14 = [v12 objectForKeyedSubscript:@"Value"];
          v15 = [v14 unsignedLongValue] + 2001563392;
          if (v15 <= 0x35 && ((0x3F036601FFFFFFuLL >> v15) & 1) != 0)
          {
            v16 = [(__objc2_class *)*off_278EC1180[v15] tlvFromPropertyListValue:valueCopy];
            v17 = v9;
            v9 = v16;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)metaDataTable
{
  if (metaDataTable_once != -1)
  {
    +[UARPMetaDataTLV metaDataTable];
  }

  v3 = metaDataTable_table;

  return v3;
}

void __32__UARPMetaDataTLV_metaDataTable__block_invoke(uint64_t a1, uint64_t a2)
{
  v41 = objc_opt_new();
  v2 = +[UARPTLVPersonalizationRequired metaDataTableEntry];
  [v41 addObject:v2];

  v3 = +[UARPTLVPersonalizationPayloadTag metaDataTableEntry];
  [v41 addObject:v3];

  v4 = +[UARPTLVPersonalizationSuperBinaryAssetID metaDataTableEntry];
  [v41 addObject:v4];

  v5 = +[UARPTLVPersonalizationManifestPrefix metaDataTableEntry];
  [v41 addObject:v5];

  v6 = +[UARPTLVPersonalizationBoardID metaDataTableEntry];
  [v41 addObject:v6];

  v7 = +[UARPTLVPersonalizationChipID metaDataTableEntry];
  [v41 addObject:v7];

  v8 = +[UARPTLVPersonalizationECID metaDataTableEntry];
  [v41 addObject:v8];

  v9 = +[UARPTLVPersonalizationECIDData metaDataTableEntry];
  [v41 addObject:v9];

  v10 = +[UARPTLVPersonalizationNonce metaDataTableEntry];
  [v41 addObject:v10];

  v11 = +[UARPTLVPersonalizationNonceHash metaDataTableEntry];
  [v41 addObject:v11];

  v12 = +[UARPTLVPersonalizationSecurityDomain metaDataTableEntry];
  [v41 addObject:v12];

  v13 = +[UARPTLVPersonalizationSecurityMode metaDataTableEntry];
  [v41 addObject:v13];

  v14 = +[UARPTLVPersonalizationProductionMode metaDataTableEntry];
  [v41 addObject:v14];

  v15 = +[UARPTLVPersonalizationChipEpoch metaDataTableEntry];
  [v41 addObject:v15];

  v16 = +[UARPTLVPersonalizationEnableMixMatch metaDataTableEntry];
  [v41 addObject:v16];

  v17 = +[UARPTLVPersonalizationSuperBinaryPayloadIndex metaDataTableEntry];
  [v41 addObject:v17];

  v18 = +[UARPTLVPersonalizationChipRevision metaDataTableEntry];
  [v41 addObject:v18];

  v19 = +[UARPTLVPersonalizationFTABSubfileTag metaDataTableEntry];
  [v41 addObject:v19];

  v20 = +[UARPTLVPersonalizationFTABSubfileLongname metaDataTableEntry];
  [v41 addObject:v20];

  v21 = +[UARPTLVPersonalizationFTABSubfileDigest metaDataTableEntry];
  [v41 addObject:v21];

  v22 = +[UARPTLVPersonalizationFTABSubfileHashAlgorithm metaDataTableEntry];
  [v41 addObject:v22];

  v23 = +[UARPTLVPersonalizationFTABSubfileESEC metaDataTableEntry];
  [v41 addObject:v23];

  v24 = +[UARPTLVPersonalizationFTABSubfileEPRO metaDataTableEntry];
  [v41 addObject:v24];

  v25 = +[UARPTLVPersonalizationFTABSubfileTrusted metaDataTableEntry];
  [v41 addObject:v25];

  v26 = +[UARPTLVPersonalizationSoCLiveNonce metaDataTableEntry];
  [v41 addObject:v26];

  v27 = +[UARPTLVPersonalizationPrefixNeedsLogicalUnitNumber metaDataTableEntry];
  [v41 addObject:v27];

  v28 = +[UARPTLVPersonalizationSuffixNeedsLogicalUnitNumber metaDataTableEntry];
  [v41 addObject:v28];

  v29 = +[UARPTLVPersonalizationLogicalUnitNumber metaDataTableEntry];
  [v41 addObject:v29];

  v30 = +[UARPTLVPersonalizationTicketNeedsLogicalUnitNumber metaDataTableEntry];
  [v41 addObject:v30];

  v31 = +[UARPTLVHostPersonalizationRequired metaDataTableEntry];
  [v41 addObject:v31];

  v32 = +[UARPTLVRequiredPersonalizationOption metaDataTableEntry];
  [v41 addObject:v32];

  v33 = +[UARPTLVPersonalizationFTABPayload metaDataTableEntry];
  [v41 addObject:v33];

  v34 = +[UARPTLVPersonalizedManifest metaDataTableEntry];
  [v41 addObject:v34];

  v35 = +[UARPTLVPersonalizationLife metaDataTableEntry];
  [v41 addObject:v35];

  v36 = +[UARPTLVPersonalizationProvisioning metaDataTableEntry];
  [v41 addObject:v36];

  v37 = +[UARPTLVPersonalizationManifestEpoch metaDataTableEntry];
  [v41 addObject:v37];

  v38 = +[UARPTLVPersonalizationManifestSuffix metaDataTableEntry];
  [v41 addObject:v38];

  v39 = [MEMORY[0x277CBEA60] arrayWithArray:v41];
  v40 = metaDataTable_table;
  metaDataTable_table = v39;
}

+ (id)tlvTypeName:(unsigned int)name
{
  v3 = *&name;
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = +[UARPMetaDataTLV metaDataTable];
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"Value"];
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
        v11 = [v9 isEqual:v10];

        if (v11)
        {
          v12 = [v8 objectForKeyedSubscript:@"Name"];
          goto LABEL_11;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)generateTLV
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v7 = uarpHtonl(self->_tlvType);
  [v3 appendBytes:&v7 length:4];
  v6 = uarpHtonl(self->_tlvLength);
  [v3 appendBytes:&v6 length:4];
  [v3 appendData:self->_tlvValue];
  v4 = [MEMORY[0x277CBEA90] dataWithData:v3];

  return v4;
}

@end