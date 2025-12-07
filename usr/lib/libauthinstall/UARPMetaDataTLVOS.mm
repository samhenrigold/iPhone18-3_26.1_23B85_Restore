@interface UARPMetaDataTLVOS
+ (id)metaDataTable;
+ (id)tlvFromKey:(id)key value:(id)value;
+ (id)tlvFromType:(unsigned int)type length:(unsigned int)length value:(void *)value;
+ (id)tlvTypeName:(unsigned int)name;
- (UARPMetaDataTLVOS)init;
- (UARPMetaDataTLVOS)initWithType:(unsigned int)type length:(unsigned int)length value:(void *)value;
- (id)generateTLV;
@end

@implementation UARPMetaDataTLVOS

- (UARPMetaDataTLVOS)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLVOS;
  return [(UARPMetaDataTLVOS *)&v3 init];
}

- (UARPMetaDataTLVOS)initWithType:(unsigned int)type length:(unsigned int)length value:(void *)value
{
  v13.receiver = self;
  v13.super_class = UARPMetaDataTLVOS;
  v8 = [(UARPMetaDataTLVOS *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_tlvType = type;
    v8->_tlvLength = length;
    v10 = [MEMORY[0x29EDB8DA0] dataWithBytes:value length:length];
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
      v5 = UARPTLVPersonalizationRequiredOS;
      goto LABEL_41;
    case 0x88B29101:
      v5 = UARPTLVPersonalizationPayloadTagOS;
      goto LABEL_41;
    case 0x88B29102:
      v5 = UARPTLVPersonalizationSuperBinaryAssetIDOS;
      goto LABEL_41;
    case 0x88B29103:
      v5 = UARPTLVPersonalizationManifestPrefixOS;
      goto LABEL_41;
    case 0x88B29104:
      v5 = UARPTLVPersonalizationBoardIDOS;
      goto LABEL_41;
    case 0x88B29105:
      v5 = UARPTLVPersonalizationChipIDOS;
      goto LABEL_41;
    case 0x88B29106:
      v5 = UARPTLVPersonalizationECIDOS;
      goto LABEL_41;
    case 0x88B29107:
      v5 = UARPTLVPersonalizationNonceOS;
      goto LABEL_41;
    case 0x88B29108:
      v5 = UARPTLVPersonalizationNonceHashOS;
      goto LABEL_41;
    case 0x88B29109:
      v5 = UARPTLVPersonalizationSecurityDomainOS;
      goto LABEL_41;
    case 0x88B2910A:
      v5 = UARPTLVPersonalizationSecurityModeOS;
      goto LABEL_41;
    case 0x88B2910B:
      v5 = UARPTLVPersonalizationProductionModeOS;
      goto LABEL_41;
    case 0x88B2910C:
      v5 = UARPTLVPersonalizationChipEpochOS;
      goto LABEL_41;
    case 0x88B2910D:
      v5 = UARPTLVPersonalizationEnableMixMatchOS;
      goto LABEL_41;
    case 0x88B2910E:
      v5 = UARPTLVPersonalizationSuperBinaryPayloadIndexOS;
      goto LABEL_41;
    case 0x88B2910F:
      v5 = UARPTLVPersonalizationChipRevisionOS;
      goto LABEL_41;
    case 0x88B29110:
      v5 = UARPTLVPersonalizationFTABPayloadOS;
      goto LABEL_41;
    case 0x88B29111:
      v5 = UARPTLVPersonalizationFTABSubfileTagOS;
      goto LABEL_41;
    case 0x88B29112:
      v5 = UARPTLVPersonalizationFTABSubfileLongnameOS;
      goto LABEL_41;
    case 0x88B29113:
      v5 = UARPTLVPersonalizationFTABSubfileDigestOS;
      goto LABEL_41;
    case 0x88B29114:
      v5 = UARPTLVPersonalizationFTABSubfileHashAlgorithmOS;
      goto LABEL_41;
    case 0x88B29115:
      v5 = UARPTLVPersonalizationFTABSubfileESECOS;
      goto LABEL_41;
    case 0x88B29116:
      v5 = UARPTLVPersonalizationFTABSubfileEPROOS;
      goto LABEL_41;
    case 0x88B29117:
      v5 = UARPTLVPersonalizationFTABSubfileTrustedOS;
      goto LABEL_41;
    case 0x88B29118:
      v5 = UARPTLVPersonalizationSoCLiveNonceOS;
      goto LABEL_41;
    case 0x88B29121:
      v5 = UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberOS;
      goto LABEL_41;
    case 0x88B29122:
      v5 = UARPTLVPersonalizationSuffixNeedsLogicalUnitNumberOS;
      goto LABEL_41;
    case 0x88B29125:
      v5 = UARPTLVPersonalizationLogicalUnitNumberOS;
      goto LABEL_41;
    case 0x88B29126:
      v5 = UARPTLVPersonalizationTicketNeedsLogicalUnitNumberOS;
      goto LABEL_41;
    case 0x88B29128:
      v5 = UARPTLVHostPersonalizationRequiredOS;
      goto LABEL_41;
    case 0x88B29129:
      v5 = UARPTLVRequiredPersonalizationOptionOS;
      goto LABEL_41;
    case 0x88B29130:
      v5 = UARPTLVPersonalizedManifestOS;
      goto LABEL_41;
    case 0x88B29131:
      v5 = UARPTLVPersonalizationLifeOS;
      goto LABEL_41;
    case 0x88B29132:
      v5 = UARPTLVPersonalizationProvisioningOS;
      goto LABEL_41;
    case 0x88B29133:
      v5 = UARPTLVPersonalizationManifestEpochOS;
      goto LABEL_41;
    case 0x88B29134:
      v5 = UARPTLVPersonalizationManifestSuffixOS;
      goto LABEL_41;
    case 0x88B29135:
      v5 = UARPTLVPersonalizationECIDDataOS;
      goto LABEL_41;
    case 0x88B29136:
      v5 = UARPTLVPersonalizationFTABSubfileDigestFilenameOS;
LABEL_41:
      v6 = [(__objc2_class *)v5 tlvWithLength:length value:value];
      break;
    default:
      v6 = [[UARPMetaDataTLVOS alloc] initWithType:*&type length:*&length value:value];
      break;
  }

  return v6;
}

+ (id)tlvFromKey:(id)key value:(id)value
{
  v25 = *MEMORY[0x29EDCA608];
  keyCopy = key;
  valueCopy = value;
  v6 = +[UARPMetaDataTLVOS metaDataTable];
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
            v16 = [(__objc2_class *)*off_29EE9BB48[v15] tlvFromPropertyListValue:valueCopy];
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
    +[UARPMetaDataTLVOS metaDataTable];
  }

  v3 = metaDataTable_table;

  return v3;
}

void __34__UARPMetaDataTLVOS_metaDataTable__block_invoke()
{
  v0 = objc_opt_new();
  v1 = +[UARPTLVPersonalizationRequiredOS metaDataTableEntry];
  [v0 addObject:v1];

  v2 = +[UARPTLVPersonalizationPayloadTagOS metaDataTableEntry];
  [v0 addObject:v2];

  v3 = +[UARPTLVPersonalizationSuperBinaryAssetIDOS metaDataTableEntry];
  [v0 addObject:v3];

  v4 = +[UARPTLVPersonalizationManifestPrefixOS metaDataTableEntry];
  [v0 addObject:v4];

  v5 = +[UARPTLVPersonalizationBoardIDOS metaDataTableEntry];
  [v0 addObject:v5];

  v6 = +[UARPTLVPersonalizationChipIDOS metaDataTableEntry];
  [v0 addObject:v6];

  v7 = +[UARPTLVPersonalizationECIDOS metaDataTableEntry];
  [v0 addObject:v7];

  v8 = +[UARPTLVPersonalizationECIDDataOS metaDataTableEntry];
  [v0 addObject:v8];

  v9 = +[UARPTLVPersonalizationNonceOS metaDataTableEntry];
  [v0 addObject:v9];

  v10 = +[UARPTLVPersonalizationNonceHashOS metaDataTableEntry];
  [v0 addObject:v10];

  v11 = +[UARPTLVPersonalizationSecurityDomainOS metaDataTableEntry];
  [v0 addObject:v11];

  v12 = +[UARPTLVPersonalizationSecurityModeOS metaDataTableEntry];
  [v0 addObject:v12];

  v13 = +[UARPTLVPersonalizationProductionModeOS metaDataTableEntry];
  [v0 addObject:v13];

  v14 = +[UARPTLVPersonalizationChipEpochOS metaDataTableEntry];
  [v0 addObject:v14];

  v15 = +[UARPTLVPersonalizationEnableMixMatchOS metaDataTableEntry];
  [v0 addObject:v15];

  v16 = +[UARPTLVPersonalizationSuperBinaryPayloadIndexOS metaDataTableEntry];
  [v0 addObject:v16];

  v17 = +[UARPTLVPersonalizationChipRevisionOS metaDataTableEntry];
  [v0 addObject:v17];

  v18 = +[UARPTLVPersonalizationFTABSubfileTagOS metaDataTableEntry];
  [v0 addObject:v18];

  v19 = +[UARPTLVPersonalizationFTABSubfileLongnameOS metaDataTableEntry];
  [v0 addObject:v19];

  v20 = +[UARPTLVPersonalizationFTABSubfileDigestOS metaDataTableEntry];
  [v0 addObject:v20];

  v21 = +[UARPTLVPersonalizationFTABSubfileHashAlgorithmOS metaDataTableEntry];
  [v0 addObject:v21];

  v22 = +[UARPTLVPersonalizationFTABSubfileESECOS metaDataTableEntry];
  [v0 addObject:v22];

  v23 = +[UARPTLVPersonalizationFTABSubfileEPROOS metaDataTableEntry];
  [v0 addObject:v23];

  v24 = +[UARPTLVPersonalizationFTABSubfileTrustedOS metaDataTableEntry];
  [v0 addObject:v24];

  v25 = +[UARPTLVPersonalizationSoCLiveNonceOS metaDataTableEntry];
  [v0 addObject:v25];

  v26 = +[UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberOS metaDataTableEntry];
  [v0 addObject:v26];

  v27 = +[UARPTLVPersonalizationSuffixNeedsLogicalUnitNumberOS metaDataTableEntry];
  [v0 addObject:v27];

  v28 = +[UARPTLVPersonalizationLogicalUnitNumberOS metaDataTableEntry];
  [v0 addObject:v28];

  v29 = +[UARPTLVPersonalizationTicketNeedsLogicalUnitNumberOS metaDataTableEntry];
  [v0 addObject:v29];

  v30 = +[UARPTLVHostPersonalizationRequiredOS metaDataTableEntry];
  [v0 addObject:v30];

  v31 = +[UARPTLVRequiredPersonalizationOptionOS metaDataTableEntry];
  [v0 addObject:v31];

  v32 = +[UARPTLVPersonalizationFTABPayloadOS metaDataTableEntry];
  [v0 addObject:v32];

  v33 = +[UARPTLVPersonalizedManifestOS metaDataTableEntry];
  [v0 addObject:v33];

  v34 = +[UARPTLVPersonalizationLifeOS metaDataTableEntry];
  [v0 addObject:v34];

  v35 = +[UARPTLVPersonalizationProvisioningOS metaDataTableEntry];
  [v0 addObject:v35];

  v36 = +[UARPTLVPersonalizationManifestEpochOS metaDataTableEntry];
  [v0 addObject:v36];

  v37 = +[UARPTLVPersonalizationManifestSuffixOS metaDataTableEntry];
  [v0 addObject:v37];

  v38 = [MEMORY[0x29EDB8D80] arrayWithArray:v0];
  v39 = metaDataTable_table;
  metaDataTable_table = v38;
}

+ (id)tlvTypeName:(unsigned int)name
{
  v3 = *&name;
  v20 = *MEMORY[0x29EDCA608];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = +[UARPMetaDataTLVOS metaDataTable];
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
        v10 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v3];
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
  v3 = objc_alloc_init(MEMORY[0x29EDB8DF8]);
  v7 = uarpHtonl(self->_tlvType);
  [v3 appendBytes:&v7 length:4];
  v6 = uarpHtonl(self->_tlvLength);
  [v3 appendBytes:&v6 length:4];
  [v3 appendData:self->_tlvValue];
  v4 = [MEMORY[0x29EDB8DA0] dataWithData:v3];

  return v4;
}

@end