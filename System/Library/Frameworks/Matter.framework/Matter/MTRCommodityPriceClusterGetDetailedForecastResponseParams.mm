@interface MTRCommodityPriceClusterGetDetailedForecastResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRCommodityPriceClusterGetDetailedForecastResponseParams)init;
- (MTRCommodityPriceClusterGetDetailedForecastResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRCommodityPriceClusterGetDetailedForecastResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCommodityPriceClusterGetDetailedForecastResponseParams

- (MTRCommodityPriceClusterGetDetailedForecastResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTRCommodityPriceClusterGetDetailedForecastResponseParams;
  v2 = [(MTRCommodityPriceClusterGetDetailedForecastResponseParams *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEA60] array];
    priceForecast = v2->_priceForecast;
    v2->_priceForecast = array;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCommodityPriceClusterGetDetailedForecastResponseParams);
  priceForecast = [(MTRCommodityPriceClusterGetDetailedForecastResponseParams *)self priceForecast];
  [(MTRCommodityPriceClusterGetDetailedForecastResponseParams *)v4 setPriceForecast:priceForecast];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: priceForecast:%@ >", v5, self->_priceForecast];;

  return v6;
}

- (MTRCommodityPriceClusterGetDetailedForecastResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = MTRCommodityPriceClusterGetDetailedForecastResponseParams;
  v7 = [(MTRCommodityPriceClusterGetDetailedForecastResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  objc_msgSend__responseDataForCommand_clusterID_commandID_error_(MTRBaseDevice);
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 8), *(v14 + 24));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      sub_2393C5AAC(v12);
      sub_2393C5ADC(v12, 0, 0);
      v8 = sub_238EFD1FC(v12, v13);
      if (!v8)
      {
        v8 = [(MTRCommodityPriceClusterGetDetailedForecastResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, error);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v14);
LABEL_10:

  return v10;
}

- (MTRCommodityPriceClusterGetDetailedForecastResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRCommodityPriceClusterGetDetailedForecastResponseParams;
  v4 = [(MTRCommodityPriceClusterGetDetailedForecastResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRCommodityPriceClusterGetDetailedForecastResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  selfCopy = self;
  v33 = objc_opt_new();
  sub_238EA275C(v41, struct);
  v32 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  while (sub_238EA1A80(v41) && sub_238EA27B8(v41))
  {
    v4 = objc_opt_new();
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v42];
    [v4 setPeriodStart:v5];

    if (v44)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v43];
      [v4 setPeriodEnd:v6];
    }

    else
    {
      [v4 setPeriodEnd:0];
    }

    if (v45[0] == 1)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{*sub_238DE36B8(v45, v7)}];
      [v4 setPrice:v8];
    }

    else
    {
      [v4 setPrice:0];
    }

    if (v46[0] == 1)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithShort:{SLOWORD(sub_238E0A934(v46, v9)->super.isa)}];
      [v4 setPriceLevel:v10];
    }

    else
    {
      [v4 setPriceLevel:0];
    }

    if (v47[0] == 1)
    {
      v12 = sub_238DE36B8(v47, v11);
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v12 length:v12[1] encoding:4];
      [v4 setDescriptionString:v13];

      descriptionString = [v4 descriptionString];

      if (!descriptionString)
      {
        v29 = 0x410A00000000;
        v30 = 47;
        goto LABEL_35;
      }
    }

    else
    {
      [v4 setDescriptionString:0];
    }

    if (v48[0] == 1)
    {
      v15 = objc_opt_new();
      v17 = sub_238DE36B8(v48, v16);
      sub_2393C5AAC(v36);
      v34 = 0;
      v35 = 0;
      sub_2393C5BDC(v36, v17);
      v37 = 0;
      v38 = 0;
      v39[0] = 0;
      v40[0] = 0;
      while (sub_238EA1A80(&v34) && sub_238EA2704(&v34))
      {
        v18 = objc_opt_new();
        v19 = [MEMORY[0x277CCABB0] numberWithLongLong:v37];
        [v18 setPrice:v19];

        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v38];
        [v18 setSource:v20];

        if (v39[0] == 1)
        {
          v22 = sub_238DE36B8(v39, v21);
          v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v22 length:v22[1] encoding:4];
          [v18 setDescriptionString:v23];

          descriptionString2 = [v18 descriptionString];

          if (!descriptionString2)
          {

            v29 = 0x411D00000000;
            v32 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
            v30 = 47;
            goto LABEL_34;
          }
        }

        else
        {
          [v18 setDescriptionString:0];
        }

        if (v40[0] == 1)
        {
          v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238DE3698(v40, v25)}];
          [v18 setTariffComponentID:v26];
        }

        else
        {
          [v18 setTariffComponentID:0];
        }

        [v15 addObject:{v18, selfCopy}];
      }

      if (v34 == 33 || (v30 = v34, !v34))
      {
        [v4 setComponents:{v15, selfCopy}];

        goto LABEL_33;
      }

      v32 = v35;
      v29 = v34 & 0xFFFFFFFF00000000;
LABEL_34:

LABEL_35:
LABEL_36:

      v27 = v30 | v29;
      v28 = v32;
      goto LABEL_43;
    }

    [v4 setComponents:0];
LABEL_33:
    [v33 addObject:{v4, selfCopy}];
  }

  if (LODWORD(v41[0]) != 33)
  {
    v30 = LODWORD(v41[0]);
    if (LODWORD(v41[0]))
    {
      v32 = v41[1];
      v29 = v41[0] & 0xFFFFFFFF00000000;
      goto LABEL_36;
    }
  }

  [(MTRCommodityPriceClusterGetDetailedForecastResponseParams *)selfCopy setPriceForecast:v33, selfCopy];

  v28 = 0;
  v27 = 0;
LABEL_43:
  result.mFile = v28;
  result.mError = v27;
  result.mLine = HIDWORD(v27);
  return result;
}

@end