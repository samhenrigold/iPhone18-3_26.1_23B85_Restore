@interface MTRUnitTestingClusterTestComplexNullableOptionalResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRUnitTestingClusterTestComplexNullableOptionalResponseParams)init;
- (MTRUnitTestingClusterTestComplexNullableOptionalResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRUnitTestingClusterTestComplexNullableOptionalResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestComplexNullableOptionalResponseParams

- (MTRUnitTestingClusterTestComplexNullableOptionalResponseParams)init
{
  v34.receiver = self;
  v34.super_class = MTRUnitTestingClusterTestComplexNullableOptionalResponseParams;
  v2 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)&v34 init];
  v3 = v2;
  if (v2)
  {
    nullableIntWasNull = v2->_nullableIntWasNull;
    v2->_nullableIntWasNull = &unk_284C3E4C8;

    nullableIntValue = v3->_nullableIntValue;
    v3->_nullableIntValue = 0;

    optionalIntWasPresent = v3->_optionalIntWasPresent;
    v3->_optionalIntWasPresent = &unk_284C3E4C8;

    optionalIntValue = v3->_optionalIntValue;
    v3->_optionalIntValue = 0;

    nullableOptionalIntWasPresent = v3->_nullableOptionalIntWasPresent;
    v3->_nullableOptionalIntWasPresent = &unk_284C3E4C8;

    nullableOptionalIntWasNull = v3->_nullableOptionalIntWasNull;
    v3->_nullableOptionalIntWasNull = 0;

    nullableOptionalIntValue = v3->_nullableOptionalIntValue;
    v3->_nullableOptionalIntValue = 0;

    nullableStringWasNull = v3->_nullableStringWasNull;
    v3->_nullableStringWasNull = &unk_284C3E4C8;

    nullableStringValue = v3->_nullableStringValue;
    v3->_nullableStringValue = 0;

    optionalStringWasPresent = v3->_optionalStringWasPresent;
    v3->_optionalStringWasPresent = &unk_284C3E4C8;

    optionalStringValue = v3->_optionalStringValue;
    v3->_optionalStringValue = 0;

    nullableOptionalStringWasPresent = v3->_nullableOptionalStringWasPresent;
    v3->_nullableOptionalStringWasPresent = &unk_284C3E4C8;

    nullableOptionalStringWasNull = v3->_nullableOptionalStringWasNull;
    v3->_nullableOptionalStringWasNull = 0;

    nullableOptionalStringValue = v3->_nullableOptionalStringValue;
    v3->_nullableOptionalStringValue = 0;

    nullableStructWasNull = v3->_nullableStructWasNull;
    v3->_nullableStructWasNull = &unk_284C3E4C8;

    nullableStructValue = v3->_nullableStructValue;
    v3->_nullableStructValue = 0;

    optionalStructWasPresent = v3->_optionalStructWasPresent;
    v3->_optionalStructWasPresent = &unk_284C3E4C8;

    optionalStructValue = v3->_optionalStructValue;
    v3->_optionalStructValue = 0;

    nullableOptionalStructWasPresent = v3->_nullableOptionalStructWasPresent;
    v3->_nullableOptionalStructWasPresent = &unk_284C3E4C8;

    nullableOptionalStructWasNull = v3->_nullableOptionalStructWasNull;
    v3->_nullableOptionalStructWasNull = 0;

    nullableOptionalStructValue = v3->_nullableOptionalStructValue;
    v3->_nullableOptionalStructValue = 0;

    nullableListWasNull = v3->_nullableListWasNull;
    v3->_nullableListWasNull = &unk_284C3E4C8;

    nullableListValue = v3->_nullableListValue;
    v3->_nullableListValue = 0;

    optionalListWasPresent = v3->_optionalListWasPresent;
    v3->_optionalListWasPresent = &unk_284C3E4C8;

    optionalListValue = v3->_optionalListValue;
    v3->_optionalListValue = 0;

    nullableOptionalListWasPresent = v3->_nullableOptionalListWasPresent;
    v3->_nullableOptionalListWasPresent = &unk_284C3E4C8;

    nullableOptionalListWasNull = v3->_nullableOptionalListWasNull;
    v3->_nullableOptionalListWasNull = 0;

    nullableOptionalListValue = v3->_nullableOptionalListValue;
    v3->_nullableOptionalListValue = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams);
  nullableIntWasNull = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableIntWasNull];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableIntWasNull:nullableIntWasNull];

  nullableIntValue = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableIntValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableIntValue:nullableIntValue];

  optionalIntWasPresent = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalIntWasPresent];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setOptionalIntWasPresent:optionalIntWasPresent];

  optionalIntValue = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalIntValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setOptionalIntValue:optionalIntValue];

  nullableOptionalIntWasPresent = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalIntWasPresent];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalIntWasPresent:nullableOptionalIntWasPresent];

  nullableOptionalIntWasNull = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalIntWasNull];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalIntWasNull:nullableOptionalIntWasNull];

  nullableOptionalIntValue = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalIntValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalIntValue:nullableOptionalIntValue];

  nullableStringWasNull = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStringWasNull];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableStringWasNull:nullableStringWasNull];

  nullableStringValue = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStringValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableStringValue:nullableStringValue];

  optionalStringWasPresent = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStringWasPresent];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setOptionalStringWasPresent:optionalStringWasPresent];

  optionalStringValue = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStringValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setOptionalStringValue:optionalStringValue];

  nullableOptionalStringWasPresent = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStringWasPresent];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalStringWasPresent:nullableOptionalStringWasPresent];

  nullableOptionalStringWasNull = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStringWasNull];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalStringWasNull:nullableOptionalStringWasNull];

  nullableOptionalStringValue = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStringValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalStringValue:nullableOptionalStringValue];

  nullableStructWasNull = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructWasNull];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableStructWasNull:nullableStructWasNull];

  nullableStructValue = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableStructValue:nullableStructValue];

  optionalStructWasPresent = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructWasPresent];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setOptionalStructWasPresent:optionalStructWasPresent];

  optionalStructValue = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setOptionalStructValue:optionalStructValue];

  nullableOptionalStructWasPresent = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructWasPresent];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalStructWasPresent:nullableOptionalStructWasPresent];

  nullableOptionalStructWasNull = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructWasNull];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalStructWasNull:nullableOptionalStructWasNull];

  nullableOptionalStructValue = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalStructValue:nullableOptionalStructValue];

  nullableListWasNull = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableListWasNull];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableListWasNull:nullableListWasNull];

  nullableListValue = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableListValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableListValue:nullableListValue];

  optionalListWasPresent = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalListWasPresent];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setOptionalListWasPresent:optionalListWasPresent];

  optionalListValue = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalListValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setOptionalListValue:optionalListValue];

  nullableOptionalListWasPresent = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalListWasPresent];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalListWasPresent:nullableOptionalListWasPresent];

  nullableOptionalListWasNull = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalListWasNull];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalListWasNull:nullableOptionalListWasNull];

  nullableOptionalListValue = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalListValue];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setNullableOptionalListValue:nullableOptionalListValue];

  timedInvokeTimeoutMs = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self timedInvokeTimeoutMs];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: nullableIntWasNull:%@ nullableIntValue:%@; optionalIntWasPresent:%@; optionalIntValue:%@; nullableOptionalIntWasPresent:%@; nullableOptionalIntWasNull:%@; nullableOptionalIntValue:%@; nullableStringWasNull:%@; nullableStringValue:%@; optionalStringWasPresent:%@; optionalStringValue:%@; nullableOptionalStringWasPresent:%@; nullableOptionalStringWasNull:%@; nullableOptionalStringValue:%@; nullableStructWasNull:%@; nullableStructValue:%@; optionalStructWasPresent:%@; optionalStructValue:%@; nullableOptionalStructWasPresent:%@; nullableOptionalStructWasNull:%@; nullableOptionalStructValue:%@; nullableListWasNull:%@; nullableListValue:%@; optionalListWasPresent:%@; optionalListValue:%@; nullableOptionalListWasPresent:%@; nullableOptionalListWasNull:%@; nullableOptionalListValue:%@; >", v5, self->_nullableIntWasNull, self->_nullableIntValue, self->_optionalIntWasPresent, self->_optionalIntValue, self->_nullableOptionalIntWasPresent, self->_nullableOptionalIntWasNull, self->_nullableOptionalIntValue, self->_nullableStringWasNull, self->_nullableStringValue, self->_optionalStringWasPresent, self->_optionalStringValue, self->_nullableOptionalStringWasPresent, self->_nullableOptionalStringWasNull, self->_nullableOptionalStringValue, self->_nullableStructWasNull, self->_nullableStructValue, self->_optionalStructWasPresent, self->_optionalStructValue, self->_nullableOptionalStructWasPresent, self->_nullableOptionalStructWasNull, self->_nullableOptionalStructValue, self->_nullableListWasNull, self->_nullableListValue, self->_optionalListWasPresent, self->_optionalListValue, self->_nullableOptionalListWasPresent, self->_nullableOptionalListWasNull, self->_nullableOptionalListValue];;

  return v6;
}

- (MTRUnitTestingClusterTestComplexNullableOptionalResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v36.receiver = self;
  v36.super_class = MTRUnitTestingClusterTestComplexNullableOptionalResponseParams;
  v7 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)&v36 init];
  if (!v7)
  {
    v11 = 0;
    goto LABEL_10;
  }

  objc_msgSend__responseDataForCommand_clusterID_commandID_error_(MTRBaseDevice);
  if (v35)
  {
    sub_2393C5AAC(v34);
    sub_2393C5ADC(v8, *(v35 + 8), *(v35 + 24));
    v9 = sub_2393C6FD0(v34, 256);
    if (!v9)
    {
      v13[0] = 0;
      v13[2] = 0;
      v13[6] = 0;
      v13[8] = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v9 = sub_238F307A4(v13, v34);
      if (!v9)
      {
        v9 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v7 _setFieldsFromDecodableStruct:v13];
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
  sub_238EA1758(&v35);
LABEL_10:

  return v11;
}

- (MTRUnitTestingClusterTestComplexNullableOptionalResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRUnitTestingClusterTestComplexNullableOptionalResponseParams;
  v4 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableIntWasNull:v5];

  if (*(struct + 2) == 1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(struct + 2, v6)->super.isa)}];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableIntValue:v7];
  }

  else
  {
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableIntValue:0];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:*(struct + 6)];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalIntWasPresent:v8];

  if (*(struct + 8) == 1)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(struct + 8, v9)->super.isa)}];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalIntValue:v10];
  }

  else
  {
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalIntValue:0];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:*(struct + 12)];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalIntWasPresent:v11];

  if (*(struct + 13) == 1)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithBool:{LOBYTE(sub_238DE36D8(struct + 13, v12)->super.isa)}];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalIntWasNull:v13];
  }

  else
  {
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalIntWasNull:0];
  }

  if (*(struct + 16) == 1)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(struct + 16, v14)->super.isa)}];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalIntValue:v15];
  }

  else
  {
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalIntValue:0];
  }

  v16 = [MEMORY[0x277CCABB0] numberWithBool:*(struct + 20)];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableStringWasNull:v16];

  if (*(struct + 24) != 1)
  {
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableStringValue:0];
LABEL_17:
    v22 = [MEMORY[0x277CCABB0] numberWithBool:*(struct + 48)];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalStringWasPresent:v22];

    if (*(struct + 56) == 1)
    {
      v24 = sub_238DE36B8(struct + 56, v23);
      v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v24 length:v24[1] encoding:4];
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalStringValue:v25];

      optionalStringValue = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStringValue];

      if (!optionalStringValue)
      {
        v21 = 0xB38B00000000;
        goto LABEL_53;
      }
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalStringValue:0];
    }

    v27 = [MEMORY[0x277CCABB0] numberWithBool:*(struct + 80)];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalStringWasPresent:v27];

    if (*(struct + 81) == 1)
    {
      v29 = [MEMORY[0x277CCABB0] numberWithBool:{LOBYTE(sub_238DE36D8(struct + 81, v28)->super.isa)}];
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalStringWasNull:v29];
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalStringWasNull:0];
    }

    if (*(struct + 88) == 1)
    {
      v31 = sub_238DE36B8(struct + 88, v30);
      v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v31 length:v31[1] encoding:4];
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalStringValue:v32];

      nullableOptionalStringValue = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStringValue];

      if (!nullableOptionalStringValue)
      {
        v21 = 0xB3A000000000;
        goto LABEL_53;
      }
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalStringValue:0];
    }

    v34 = [MEMORY[0x277CCABB0] numberWithBool:*(struct + 112)];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableStructWasNull:v34];

    if (*(struct + 120) == 1)
    {
      v35 = objc_opt_new();
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableStructValue:v35];

      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*sub_238DE36B8(struct + 120, v36)}];
      nullableStructValue = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
      [nullableStructValue setA:v37];

      v40 = [MEMORY[0x277CCABB0] numberWithBool:{sub_238DE36B8(struct + 120, v39)[1]}];
      nullableStructValue2 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
      [nullableStructValue2 setB:v40];

      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{sub_238DE36B8(struct + 120, v42)[2]}];
      nullableStructValue3 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
      [nullableStructValue3 setC:v43];

      v46 = sub_238DE36B8(struct + 120, v45);
      v47 = [MEMORY[0x277CBEA90] dataWithBytes:*(v46 + 1) length:*(v46 + 2)];
      nullableStructValue4 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
      [nullableStructValue4 setD:v47];

      v50 = sub_238DE36B8(struct + 120, v49);
      v51 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v50 + 3) length:*(v50 + 4) encoding:4];
      nullableStructValue5 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
      [nullableStructValue5 setE:v51];

      nullableStructValue6 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
      v54 = [nullableStructValue6 e];

      if (!v54)
      {
        v21 = 0xB3B300000000;
        goto LABEL_53;
      }

      v56 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{sub_238DE36B8(struct + 120, v55)[40]}];
      nullableStructValue7 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
      [nullableStructValue7 setF:v56];

      v58 = MEMORY[0x277CCABB0];
      LODWORD(v60) = *(sub_238DE36B8(struct + 120, v59) + 11);
      v61 = [v58 numberWithFloat:v60];
      nullableStructValue8 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
      [nullableStructValue8 setG:v61];

      v64 = [MEMORY[0x277CCABB0] numberWithDouble:{*(sub_238DE36B8(struct + 120, v63) + 6)}];
      nullableStructValue9 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
      [nullableStructValue9 setH:v64];

      if (sub_238DE36B8(struct + 120, v66)[56] == 1)
      {
        v68 = MEMORY[0x277CCABB0];
        v69 = sub_238DE36B8(struct + 120, v67);
        nullableStructValue11 = [v68 numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(v69 + 56, v70)->super.isa)}];
        nullableStructValue10 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
        [nullableStructValue10 setI:nullableStructValue11];
      }

      else
      {
        nullableStructValue11 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStructValue];
        [nullableStructValue11 setI:0];
      }
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableStructValue:0];
    }

    v73 = [MEMORY[0x277CCABB0] numberWithBool:*(struct + 192)];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalStructWasPresent:v73];

    if (*(struct + 200) == 1)
    {
      v74 = objc_opt_new();
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalStructValue:v74];

      v76 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*sub_238DE36B8(struct + 200, v75)}];
      optionalStructValue = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
      [optionalStructValue setA:v76];

      v79 = [MEMORY[0x277CCABB0] numberWithBool:{sub_238DE36B8(struct + 200, v78)[1]}];
      optionalStructValue2 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
      [optionalStructValue2 setB:v79];

      v82 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{sub_238DE36B8(struct + 200, v81)[2]}];
      optionalStructValue3 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
      [optionalStructValue3 setC:v82];

      v85 = sub_238DE36B8(struct + 200, v84);
      v86 = [MEMORY[0x277CBEA90] dataWithBytes:*(v85 + 1) length:*(v85 + 2)];
      optionalStructValue4 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
      [optionalStructValue4 setD:v86];

      v89 = sub_238DE36B8(struct + 200, v88);
      v90 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v89 + 3) length:*(v89 + 4) encoding:4];
      optionalStructValue5 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
      [optionalStructValue5 setE:v90];

      optionalStructValue6 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
      v93 = [optionalStructValue6 e];

      if (!v93)
      {
        v21 = 0xB3CE00000000;
        goto LABEL_53;
      }

      v95 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{sub_238DE36B8(struct + 200, v94)[40]}];
      optionalStructValue7 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
      [optionalStructValue7 setF:v95];

      v97 = MEMORY[0x277CCABB0];
      LODWORD(v99) = *(sub_238DE36B8(struct + 200, v98) + 11);
      v100 = [v97 numberWithFloat:v99];
      optionalStructValue8 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
      [optionalStructValue8 setG:v100];

      v103 = [MEMORY[0x277CCABB0] numberWithDouble:{*(sub_238DE36B8(struct + 200, v102) + 6)}];
      optionalStructValue9 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
      [optionalStructValue9 setH:v103];

      if (sub_238DE36B8(struct + 200, v105)[56] == 1)
      {
        v107 = MEMORY[0x277CCABB0];
        v108 = sub_238DE36B8(struct + 200, v106);
        optionalStructValue11 = [v107 numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(v108 + 56, v109)->super.isa)}];
        optionalStructValue10 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
        [optionalStructValue10 setI:optionalStructValue11];
      }

      else
      {
        optionalStructValue11 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self optionalStructValue];
        [optionalStructValue11 setI:0];
      }
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalStructValue:0];
    }

    v112 = [MEMORY[0x277CCABB0] numberWithBool:*(struct + 272)];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalStructWasPresent:v112];

    if (*(struct + 273) == 1)
    {
      v114 = [MEMORY[0x277CCABB0] numberWithBool:{LOBYTE(sub_238DE36D8(struct + 273, v113)->super.isa)}];
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalStructWasNull:v114];
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalStructWasNull:0];
    }

    if (*(struct + 280) == 1)
    {
      v115 = objc_opt_new();
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalStructValue:v115];

      v117 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*sub_238DE36B8(struct + 280, v116)}];
      nullableOptionalStructValue = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
      [nullableOptionalStructValue setA:v117];

      v120 = [MEMORY[0x277CCABB0] numberWithBool:{sub_238DE36B8(struct + 280, v119)[1]}];
      nullableOptionalStructValue2 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
      [nullableOptionalStructValue2 setB:v120];

      v123 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{sub_238DE36B8(struct + 280, v122)[2]}];
      nullableOptionalStructValue3 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
      [nullableOptionalStructValue3 setC:v123];

      v126 = sub_238DE36B8(struct + 280, v125);
      v127 = [MEMORY[0x277CBEA90] dataWithBytes:*(v126 + 1) length:*(v126 + 2)];
      nullableOptionalStructValue4 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
      [nullableOptionalStructValue4 setD:v127];

      v130 = sub_238DE36B8(struct + 280, v129);
      v131 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v130 + 3) length:*(v130 + 4) encoding:4];
      nullableOptionalStructValue5 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
      [nullableOptionalStructValue5 setE:v131];

      nullableOptionalStructValue6 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
      v134 = [nullableOptionalStructValue6 e];

      if (!v134)
      {
        v21 = 0xB3F000000000;
        goto LABEL_53;
      }

      v136 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{sub_238DE36B8(struct + 280, v135)[40]}];
      nullableOptionalStructValue7 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
      [nullableOptionalStructValue7 setF:v136];

      v138 = MEMORY[0x277CCABB0];
      LODWORD(v140) = *(sub_238DE36B8(struct + 280, v139) + 11);
      v141 = [v138 numberWithFloat:v140];
      nullableOptionalStructValue8 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
      [nullableOptionalStructValue8 setG:v141];

      v144 = [MEMORY[0x277CCABB0] numberWithDouble:{*(sub_238DE36B8(struct + 280, v143) + 6)}];
      nullableOptionalStructValue9 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
      [nullableOptionalStructValue9 setH:v144];

      if (sub_238DE36B8(struct + 280, v146)[56] == 1)
      {
        v148 = MEMORY[0x277CCABB0];
        v149 = sub_238DE36B8(struct + 280, v147);
        nullableOptionalStructValue11 = [v148 numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(v149 + 56, v150)->super.isa)}];
        nullableOptionalStructValue10 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
        [nullableOptionalStructValue10 setI:nullableOptionalStructValue11];
      }

      else
      {
        nullableOptionalStructValue11 = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableOptionalStructValue];
        [nullableOptionalStructValue11 setI:0];
      }
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalStructValue:0];
    }

    v157 = [MEMORY[0x277CCABB0] numberWithBool:*(struct + 352)];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableListWasNull:v157];

    if (*(struct + 360) == 1)
    {
      v158 = objc_opt_new();
      v160 = sub_238DE36B8(struct + 360, v159);
      sub_2393C5AAC(v174);
      v172 = 0;
      v173 = 0;
      sub_2393C5BDC(v174, v160);
      while (sub_238E8A35C(&v172))
      {
        v161 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v175];
        [v158 addObject:v161];
      }

      if (v172 != 33)
      {
        v154 = v172;
        if (v172)
        {
          goto LABEL_83;
        }
      }

      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableListValue:v158, v172];
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableListValue:0];
    }

    v162 = [MEMORY[0x277CCABB0] numberWithBool:*(struct + 440)];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalListWasPresent:v162];

    if (*(struct + 448) == 1)
    {
      v158 = objc_opt_new();
      v164 = sub_238DE36B8(struct + 448, v163);
      sub_2393C5AAC(v174);
      v172 = 0;
      v173 = 0;
      sub_2393C5BDC(v174, v164);
      while (sub_238E8A35C(&v172))
      {
        v165 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v175];
        [v158 addObject:v165];
      }

      if (v172 != 33)
      {
        v154 = v172;
        if (v172)
        {
          goto LABEL_83;
        }
      }

      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalListValue:v158];
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setOptionalListValue:0];
    }

    v166 = [MEMORY[0x277CCABB0] numberWithBool:*(struct + 528)];
    [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalListWasPresent:v166];

    if (*(struct + 529) == 1)
    {
      v168 = [MEMORY[0x277CCABB0] numberWithBool:{LOBYTE(sub_238DE36D8(struct + 529, v167)->super.isa)}];
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalListWasNull:v168];
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalListWasNull:0];
    }

    if (*(struct + 536) == 1)
    {
      v158 = objc_opt_new();
      v170 = sub_238DE36B8(struct + 536, v169);
      sub_2393C5AAC(v174);
      v172 = 0;
      v173 = 0;
      sub_2393C5BDC(v174, v170);
      while (sub_238E8A35C(&v172))
      {
        v171 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v175];
        [v158 addObject:v171];
      }

      if (v172 != 33)
      {
        v154 = v172;
        if (v172)
        {
LABEL_83:
          v153 = v173;
          v21 = v154 & 0xFFFFFFFF00000000;

          goto LABEL_54;
        }
      }

      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalListValue:v158];
    }

    else
    {
      [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableOptionalListValue:0];
    }

    v153 = 0;
    v21 = 0;
    LODWORD(v154) = 0;
    goto LABEL_54;
  }

  v18 = sub_238DE36B8(struct + 24, v17);
  v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v18 length:v18[1] encoding:4];
  [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self setNullableStringValue:v19];

  nullableStringValue = [(MTRUnitTestingClusterTestComplexNullableOptionalResponseParams *)self nullableStringValue];

  if (nullableStringValue)
  {
    goto LABEL_17;
  }

  v21 = 0xB37D00000000;
LABEL_53:
  v153 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
  LODWORD(v154) = 47;
LABEL_54:
  v155 = v154 | v21;
  v156 = v153;
  result.mFile = v156;
  result.mError = v155;
  result.mLine = HIDWORD(v155);
  return result;
}

@end