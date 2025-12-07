@interface MTRUnitTestingClusterTestNullableOptionalResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRUnitTestingClusterTestNullableOptionalResponseParams)init;
- (MTRUnitTestingClusterTestNullableOptionalResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRUnitTestingClusterTestNullableOptionalResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestNullableOptionalResponseParams

- (MTRUnitTestingClusterTestNullableOptionalResponseParams)init
{
  v10.receiver = self;
  v10.super_class = MTRUnitTestingClusterTestNullableOptionalResponseParams;
  v2 = [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    wasPresent = v2->_wasPresent;
    v2->_wasPresent = &unk_284C3E4C8;

    wasNull = v3->_wasNull;
    v3->_wasNull = 0;

    value = v3->_value;
    v3->_value = 0;

    originalValue = v3->_originalValue;
    v3->_originalValue = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestNullableOptionalResponseParams);
  wasPresent = [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self wasPresent];
  [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)v4 setWasPresent:wasPresent];

  wasNull = [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self wasNull];
  [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)v4 setWasNull:wasNull];

  value = [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self value];
  [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)v4 setValue:value];

  originalValue = [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self originalValue];
  [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)v4 setOriginalValue:originalValue];

  timedInvokeTimeoutMs = [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: wasPresent:%@ wasNull:%@; value:%@; originalValue:%@; >", v5, self->_wasPresent, self->_wasNull, self->_value, self->_originalValue];;

  return v6;
}

- (MTRUnitTestingClusterTestNullableOptionalResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v17.receiver = self;
  v17.super_class = MTRUnitTestingClusterTestNullableOptionalResponseParams;
  v7 = [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)&v17 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  objc_msgSend__responseDataForCommand_clusterID_commandID_error_(MTRBaseDevice);
  if (v16)
  {
    sub_2393C5AAC(v15);
    sub_2393C5ADC(v15, *(v16 + 8), *(v16 + 24));
    v8 = sub_2393C6FD0(v15, 256);
    if (!v8)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v8 = sub_238F302EC(&v12, v15);
      if (!v8)
      {
        v8 = [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
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
  sub_238EA1758(&v16);
LABEL_10:

  return v10;
}

- (MTRUnitTestingClusterTestNullableOptionalResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRUnitTestingClusterTestNullableOptionalResponseParams;
  v4 = [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  v5 = [MEMORY[0x277CCABB0] numberWithBool:*struct];
  [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self setWasPresent:v5];

  if (*(struct + 1) == 1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{LOBYTE(sub_238DE36D8(struct + 1, v6)->super.isa)}];
    [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self setWasNull:v7];
  }

  else
  {
    [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self setWasNull:0];
  }

  if (*(struct + 3) == 1)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(struct + 3, v8)->super.isa)}];
    [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self setValue:v9];
  }

  else
  {
    [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self setValue:0];
  }

  v12 = *(struct + 5);
  v11 = struct + 5;
  if (v12 == 1 && (BYTE1(sub_238DE36D8(v11, v10)->super.isa) & 1) != 0)
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = sub_238DE36D8(v11, v13);
    if ((v15[1] & 1) == 0)
    {
      sub_238EA195C();
    }

    v16 = [v14 numberWithUnsignedChar:*v15];
    [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self setOriginalValue:v16];
  }

  else
  {
    [(MTRUnitTestingClusterTestNullableOptionalResponseParams *)self setOriginalValue:0];
  }

  v17 = 0;
  v18 = 0;
  result.mFile = v18;
  result.mError = v17;
  result.mLine = HIDWORD(v17);
  return result;
}

@end