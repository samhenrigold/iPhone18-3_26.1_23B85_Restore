@interface MTRThermostatClusterAtomicResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRThermostatClusterAtomicResponseParams)init;
- (MTRThermostatClusterAtomicResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRThermostatClusterAtomicResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRThermostatClusterAtomicResponseParams

- (MTRThermostatClusterAtomicResponseParams)init
{
  v9.receiver = self;
  v9.super_class = MTRThermostatClusterAtomicResponseParams;
  v2 = [(MTRThermostatClusterAtomicResponseParams *)&v9 init];
  v3 = v2;
  if (v2)
  {
    statusCode = v2->_statusCode;
    v2->_statusCode = &unk_284C3E4C8;

    array = [MEMORY[0x277CBEA60] array];
    attributeStatus = v3->_attributeStatus;
    v3->_attributeStatus = array;

    timeout = v3->_timeout;
    v3->_timeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRThermostatClusterAtomicResponseParams);
  statusCode = [(MTRThermostatClusterAtomicResponseParams *)self statusCode];
  [(MTRThermostatClusterAtomicResponseParams *)v4 setStatusCode:statusCode];

  attributeStatus = [(MTRThermostatClusterAtomicResponseParams *)self attributeStatus];
  [(MTRThermostatClusterAtomicResponseParams *)v4 setAttributeStatus:attributeStatus];

  timeout = [(MTRThermostatClusterAtomicResponseParams *)self timeout];
  [(MTRThermostatClusterAtomicResponseParams *)v4 setTimeout:timeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: statusCode:%@ attributeStatus:%@; timeout:%@; >", v5, self->_statusCode, self->_attributeStatus, self->_timeout];;

  return v6;
}

- (MTRThermostatClusterAtomicResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = MTRThermostatClusterAtomicResponseParams;
  v7 = [(MTRThermostatClusterAtomicResponseParams *)&v16 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  objc_msgSend__responseDataForCommand_clusterID_commandID_error_(MTRBaseDevice);
  if (v15)
  {
    sub_2393C5AAC(v14);
    sub_2393C5ADC(v14, *(v15 + 8), *(v15 + 24));
    v8 = sub_2393C6FD0(v14, 256);
    if (!v8)
    {
      v12[0] = 0;
      sub_2393C5AAC(v13);
      sub_2393C5ADC(v13, 0, 0);
      v13[72] = 0;
      v8 = sub_238F2A14C(v12, v14);
      if (!v8)
      {
        v8 = [(MTRThermostatClusterAtomicResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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
  sub_238EA1758(&v15);
LABEL_10:

  return v10;
}

- (MTRThermostatClusterAtomicResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRThermostatClusterAtomicResponseParams;
  v4 = [(MTRThermostatClusterAtomicResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRThermostatClusterAtomicResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*struct];
  [(MTRThermostatClusterAtomicResponseParams *)self setStatusCode:v5];

  v6 = objc_opt_new();
  sub_2393C5AAC(v21);
  v19 = 0;
  v20 = 0;
  sub_2393C5BDC(v21, struct + 8);
  v22 = 0;
  v23 = 0;
  while (sub_238EA1A80(&v19) && sub_238EA3444(&v19))
  {
    v7 = objc_opt_new();
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v22];
    [v7 setAttributeID:v8];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v23];
    [v7 setStatusCode:v9];

    [v6 addObject:v7];
  }

  if (v19 == 33 || (v10 = v19, !v19))
  {
    [(MTRThermostatClusterAtomicResponseParams *)self setAttributeStatus:v6, v19];

    v15 = *(struct + 80);
    v14 = struct + 80;
    if (v15 == 1)
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(v14, v13)->super.isa)}];
      [(MTRThermostatClusterAtomicResponseParams *)self setTimeout:v16];
    }

    else
    {
      [(MTRThermostatClusterAtomicResponseParams *)self setTimeout:0];
    }

    v11 = 0;
    v12 = 0;
    v10 = 0;
  }

  else
  {
    v11 = v20;
    v12 = v19 & 0xFFFFFFFF00000000;
  }

  v17 = v10 | v12;
  v18 = v11;
  result.mFile = v18;
  result.mError = v17;
  result.mLine = HIDWORD(v17);
  return result;
}

@end