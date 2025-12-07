@interface UARPMetaDataTLVBackDeploy
+ (id)metaDataTable;
+ (id)tlvFromKey:(id)key value:(id)value;
+ (id)tlvFromType:(unsigned int)type length:(unsigned int)length value:(void *)value;
+ (id)tlvTypeName:(unsigned int)name;
- (UARPMetaDataTLVBackDeploy)init;
- (UARPMetaDataTLVBackDeploy)initWithType:(unsigned int)type length:(unsigned int)length value:(void *)value;
- (id)generateTLV;
@end

@implementation UARPMetaDataTLVBackDeploy

- (UARPMetaDataTLVBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLVBackDeploy;
  return [(UARPMetaDataTLVBackDeploy *)&v3 init];
}

- (UARPMetaDataTLVBackDeploy)initWithType:(unsigned int)type length:(unsigned int)length value:(void *)value
{
  v13.receiver = self;
  v13.super_class = UARPMetaDataTLVBackDeploy;
  v8 = [(UARPMetaDataTLVBackDeploy *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_tlvType = type;
    v8->_tlvLength = length;
    v10 = [NSData dataWithBytes:value length:length];
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
      v5 = UARPTLVPersonalizationRequiredBackDeploy;
      goto LABEL_41;
    case 0x88B29101:
      v5 = UARPTLVPersonalizationPayloadTagBackDeploy;
      goto LABEL_41;
    case 0x88B29102:
      v5 = UARPTLVPersonalizationSuperBinaryAssetIDBackDeploy;
      goto LABEL_41;
    case 0x88B29103:
      v5 = UARPTLVPersonalizationManifestPrefixBackDeploy;
      goto LABEL_41;
    case 0x88B29104:
      v5 = UARPTLVPersonalizationBoardIDBackDeploy;
      goto LABEL_41;
    case 0x88B29105:
      v5 = UARPTLVPersonalizationChipIDBackDeploy;
      goto LABEL_41;
    case 0x88B29106:
      v5 = UARPTLVPersonalizationECIDBackDeploy;
      goto LABEL_41;
    case 0x88B29107:
      v5 = UARPTLVPersonalizationNonceBackDeploy;
      goto LABEL_41;
    case 0x88B29108:
      v5 = UARPTLVPersonalizationNonceHashBackDeploy;
      goto LABEL_41;
    case 0x88B29109:
      v5 = UARPTLVPersonalizationSecurityDomainBackDeploy;
      goto LABEL_41;
    case 0x88B2910A:
      v5 = UARPTLVPersonalizationSecurityModeBackDeploy;
      goto LABEL_41;
    case 0x88B2910B:
      v5 = UARPTLVPersonalizationProductionModeBackDeploy;
      goto LABEL_41;
    case 0x88B2910C:
      v5 = UARPTLVPersonalizationChipEpochBackDeploy;
      goto LABEL_41;
    case 0x88B2910D:
      v5 = UARPTLVPersonalizationEnableMixMatchBackDeploy;
      goto LABEL_41;
    case 0x88B2910E:
      v5 = UARPTLVPersonalizationSuperBinaryPayloadIndexBackDeploy;
      goto LABEL_41;
    case 0x88B2910F:
      v5 = UARPTLVPersonalizationChipRevisionBackDeploy;
      goto LABEL_41;
    case 0x88B29110:
      v5 = UARPTLVPersonalizationFTABPayloadBackDeploy;
      goto LABEL_41;
    case 0x88B29111:
      v5 = UARPTLVPersonalizationFTABSubfileTagBackDeploy;
      goto LABEL_41;
    case 0x88B29112:
      v5 = UARPTLVPersonalizationFTABSubfileLongnameBackDeploy;
      goto LABEL_41;
    case 0x88B29113:
      v5 = UARPTLVPersonalizationFTABSubfileDigestBackDeploy;
      goto LABEL_41;
    case 0x88B29114:
      v5 = UARPTLVPersonalizationFTABSubfileHashAlgorithmBackDeploy;
      goto LABEL_41;
    case 0x88B29115:
      v5 = UARPTLVPersonalizationFTABSubfileESECBackDeploy;
      goto LABEL_41;
    case 0x88B29116:
      v5 = UARPTLVPersonalizationFTABSubfileEPROBackDeploy;
      goto LABEL_41;
    case 0x88B29117:
      v5 = UARPTLVPersonalizationFTABSubfileTrustedBackDeploy;
      goto LABEL_41;
    case 0x88B29118:
      v5 = UARPTLVPersonalizationSoCLiveNonceBackDeploy;
      goto LABEL_41;
    case 0x88B29121:
      v5 = UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberBackDeploy;
      goto LABEL_41;
    case 0x88B29122:
      v5 = UARPTLVPersonalizationSuffixNeedsLogicalUnitNumberBackDeploy;
      goto LABEL_41;
    case 0x88B29125:
      v5 = UARPTLVPersonalizationLogicalUnitNumberBackDeploy;
      goto LABEL_41;
    case 0x88B29126:
      v5 = UARPTLVPersonalizationTicketNeedsLogicalUnitNumberBackDeploy;
      goto LABEL_41;
    case 0x88B29128:
      v5 = UARPTLVHostPersonalizationRequiredBackDeploy;
      goto LABEL_41;
    case 0x88B29129:
      v5 = UARPTLVRequiredPersonalizationOptionBackDeploy;
      goto LABEL_41;
    case 0x88B29130:
      v5 = UARPTLVPersonalizedManifestBackDeploy;
      goto LABEL_41;
    case 0x88B29131:
      v5 = UARPTLVPersonalizationLifeBackDeploy;
      goto LABEL_41;
    case 0x88B29132:
      v5 = UARPTLVPersonalizationProvisioningBackDeploy;
      goto LABEL_41;
    case 0x88B29133:
      v5 = UARPTLVPersonalizationManifestEpochBackDeploy;
      goto LABEL_41;
    case 0x88B29134:
      v5 = UARPTLVPersonalizationManifestSuffixBackDeploy;
      goto LABEL_41;
    case 0x88B29135:
      v5 = UARPTLVPersonalizationECIDDataBackDeploy;
      goto LABEL_41;
    case 0x88B29136:
      v5 = UARPTLVPersonalizationFTABSubfileDigestFilenameBackDeploy;
LABEL_41:
      v6 = [(__objc2_class *)v5 tlvWithLength:length value:value];
      break;
    default:
      v6 = [[UARPMetaDataTLVBackDeploy alloc] initWithType:*&type length:*&length value:value];
      break;
  }

  return v6;
}

+ (id)tlvFromKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v6 = +[UARPMetaDataTLVBackDeploy metaDataTable];
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
      for (i = 0; i != v8; i = i + 1)
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
            v16 = [(__objc2_class *)*off_1000AB588[v15] tlvFromPropertyListValue:valueCopy];
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
  if (qword_1000C90D0 != -1)
  {
    sub_10003D380();
  }

  v3 = qword_1000C90C8;

  return v3;
}

+ (id)tlvTypeName:(unsigned int)name
{
  v3 = *&name;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = +[UARPMetaDataTLVBackDeploy metaDataTable];
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"Value"];
        v10 = [NSNumber numberWithUnsignedInt:v3];
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
  v3 = objc_alloc_init(NSMutableData);
  v7 = uarpHtonl(self->_tlvType);
  [v3 appendBytes:&v7 length:4];
  v6 = uarpHtonl(self->_tlvLength);
  [v3 appendBytes:&v6 length:4];
  [v3 appendData:self->_tlvValue];
  v4 = [NSData dataWithData:v3];

  return v4;
}

@end