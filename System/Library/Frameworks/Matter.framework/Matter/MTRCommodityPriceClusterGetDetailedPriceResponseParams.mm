@interface MTRCommodityPriceClusterGetDetailedPriceResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRCommodityPriceClusterGetDetailedPriceResponseParams)init;
- (MTRCommodityPriceClusterGetDetailedPriceResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRCommodityPriceClusterGetDetailedPriceResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCommodityPriceClusterGetDetailedPriceResponseParams

- (MTRCommodityPriceClusterGetDetailedPriceResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTRCommodityPriceClusterGetDetailedPriceResponseParams;
  v2 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)&v6 init];
  v3 = v2;
  if (v2)
  {
    currentPrice = v2->_currentPrice;
    v2->_currentPrice = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCommodityPriceClusterGetDetailedPriceResponseParams);
  currentPrice = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
  [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)v4 setCurrentPrice:currentPrice];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: currentPrice:%@ >", v5, self->_currentPrice];;

  return v6;
}

- (MTRCommodityPriceClusterGetDetailedPriceResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = MTRCommodityPriceClusterGetDetailedPriceResponseParams;
  v7 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)&v16 init];
  if (!v7)
  {
    v11 = 0;
    goto LABEL_10;
  }

  objc_msgSend__responseDataForCommand_clusterID_commandID_error_(MTRBaseDevice);
  if (v15)
  {
    sub_2393C5AAC(v14);
    sub_2393C5ADC(v8, *(v15 + 8), *(v15 + 24));
    v9 = sub_2393C6FD0(v14, 256);
    if (!v9)
    {
      v13[0] = 0;
      v13[144] = 0;
      v9 = sub_238F0AD84(v13, v14);
      if (!v9)
      {
        v9 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)v7 _setFieldsFromDecodableStruct:v13];
        if (!v9)
        {
          v11 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v9, v10, error);
  }

  v11 = 0;
LABEL_8:
  sub_238EA1758(&v15);
LABEL_10:

  return v11;
}

- (MTRCommodityPriceClusterGetDetailedPriceResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRCommodityPriceClusterGetDetailedPriceResponseParams;
  v4 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_6;
    }

    sub_238DD3F98(v6, v7, 0);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct
{
  if ((*(struct + 144) & 1) == 0)
  {
    [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self setCurrentPrice:0];
LABEL_41:
    v23 = 0;
    v22 = 0;
    v24 = 0;
    goto LABEL_42;
  }

  v5 = objc_opt_new();
  [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self setCurrentPrice:v5];

  if ((*(struct + 144) & 1) == 0)
  {
    goto LABEL_44;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*struct];
  currentPrice = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
  [currentPrice setPeriodStart:v6];

  if ((*(struct + 144) & 1) == 0)
  {
    goto LABEL_44;
  }

  if (*(struct + 8))
  {
    currentPrice3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(struct + 1)];
    currentPrice2 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    [currentPrice2 setPeriodEnd:currentPrice3];
  }

  else
  {
    currentPrice3 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    [currentPrice3 setPeriodEnd:0];
  }

  if ((*(struct + 144) & 1) == 0)
  {
    goto LABEL_44;
  }

  if (*(struct + 16) == 1)
  {
    currentPrice5 = [MEMORY[0x277CCABB0] numberWithLongLong:{*sub_238DE36B8(struct + 16, v10)}];
    currentPrice4 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    [currentPrice4 setPrice:currentPrice5];
  }

  else
  {
    currentPrice5 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    [currentPrice5 setPrice:0];
  }

  if ((*(struct + 144) & 1) == 0)
  {
    goto LABEL_44;
  }

  if (*(struct + 32) == 1)
  {
    currentPrice7 = [MEMORY[0x277CCABB0] numberWithShort:{SLOWORD(sub_238E0A934(struct + 32, v13)->super.isa)}];
    currentPrice6 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    [currentPrice6 setPriceLevel:currentPrice7];
  }

  else
  {
    currentPrice7 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    [currentPrice7 setPriceLevel:0];
  }

  if ((*(struct + 144) & 1) == 0)
  {
    goto LABEL_44;
  }

  if (*(struct + 40) == 1)
  {
    v17 = sub_238DE36B8(struct + 40, v16);
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v17 length:v17[1] encoding:4];
    currentPrice8 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    [currentPrice8 setDescriptionString:v18];

    currentPrice9 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    descriptionString = [currentPrice9 descriptionString];

    if (!descriptionString)
    {
      v22 = 0x401F00000000;
      v23 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
      v24 = 47;
      goto LABEL_42;
    }
  }

  else
  {
    currentPrice10 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    [currentPrice10 setDescriptionString:0];
  }

  if ((*(struct + 144) & 1) == 0)
  {
LABEL_44:
    sub_238EA195C();
  }

  if (*(struct + 64) != 1)
  {
    currentPrice11 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    [currentPrice11 setComponents:0];
LABEL_40:

    goto LABEL_41;
  }

  currentPrice11 = objc_opt_new();
  if ((*(struct + 144) & 1) == 0)
  {
    sub_238EA195C();
  }

  v28 = sub_238DE36B8(struct + 64, v26);
  sub_2393C5AAC(v44);
  v42 = 0;
  v43 = 0;
  sub_2393C5BDC(v44, v28);
  v45 = 0;
  v46 = 0;
  v47[0] = 0;
  v48[0] = 0;
  while (sub_238EA1A80(&v42) && sub_238EA2704(&v42))
  {
    v29 = objc_opt_new();
    v30 = [MEMORY[0x277CCABB0] numberWithLongLong:v45];
    [v29 setPrice:v30];

    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v46];
    [v29 setSource:v31];

    if (v47[0] == 1)
    {
      v33 = sub_238DE36B8(v47, v32);
      v34 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v33 length:v33[1] encoding:4];
      [v29 setDescriptionString:v34];

      descriptionString2 = [v29 descriptionString];

      if (!descriptionString2)
      {

        v22 = 0x403200000000;
        v23 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
        v41 = 47;
        goto LABEL_43;
      }
    }

    else
    {
      [v29 setDescriptionString:0];
    }

    if (v48[0] == 1)
    {
      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238DE3698(v48, v36)}];
      [v29 setTariffComponentID:v37];
    }

    else
    {
      [v29 setTariffComponentID:0];
    }

    [currentPrice11 addObject:v29];
  }

  if (v42 == 33 || (v41 = v42) == 0)
  {
    currentPrice12 = [(MTRCommodityPriceClusterGetDetailedPriceResponseParams *)self currentPrice];
    [currentPrice12 setComponents:currentPrice11];

    goto LABEL_40;
  }

  v23 = v43;
  v22 = v42 & 0xFFFFFFFF00000000;
LABEL_43:

  v24 = v41;
LABEL_42:
  v39 = v24 | v22;
  v40 = v23;
  result.mFile = v40;
  result.mError = v39;
  result.mLine = HIDWORD(v39);
  return result;
}

@end