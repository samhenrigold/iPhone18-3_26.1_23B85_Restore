@interface CAFUInt16Characteristic
+ (void)load;
- (CAFUInt16Range)range;
- (id)descriptionExtras;
- (id)formattedValue;
- (unsigned)uint16Value;
- (void)setUint16Value:(unsigned __int16)value;
@end

@implementation CAFUInt16Characteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFUInt16Characteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (unsigned)uint16Value
{
  objc_opt_class();
  value = [(CAFCharacteristic *)self value];
  if (value && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = value;
  }

  else
  {
    v4 = 0;
  }

  unsignedShortValue = [v4 unsignedShortValue];
  return unsignedShortValue;
}

- (void)setUint16Value:(unsigned __int16)value
{
  valueCopy = value;
  range = [(CAFUInt16Characteristic *)self range];
  v6 = [range valueIsInRange:valueCopy];

  if (v6)
  {
    v7 = MEMORY[0x277CCABB0];
    range2 = [(CAFUInt16Characteristic *)self range];
    v8 = [v7 numberWithUnsignedShort:{objc_msgSend(range2, "valueRoundedToNearestStepValue:", valueCopy)}];
    [(CAFCharacteristic *)self setValue:v8];
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:valueCopy];
    range3 = [(CAFUInt16Characteristic *)self range];
    v12 = [v9 CAF_outOfRangeErrorForValue:v10 range:range3];
    [(CAFCharacteristic *)self setError:v12];

    v14 = CAFGeneralLogging(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(CAFUInt16Characteristic *)self setUint16Value:valueCopy, v14];
    }
  }
}

- (CAFUInt16Range)range
{
  range = self->_range;
  if (!range)
  {
    v4 = [CAFUInt16Range alloc];
    metaData = [(CAFCharacteristic *)self metaData];
    v6 = [(CAFRange *)v4 initWithMetaData:metaData];
    v7 = self->_range;
    self->_range = v6;

    range = self->_range;
  }

  return range;
}

- (id)formattedValue
{
  value = [(CAFCharacteristic *)self value];
  if (value)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%hu", -[CAFUInt16Characteristic uint16Value](self, "uint16Value")];
  }

  else
  {
    v4 = @"(null)";
  }

  v5 = v4;

  return v5;
}

- (id)descriptionExtras
{
  v2 = MEMORY[0x277CCACA8];
  range = [(CAFUInt16Characteristic *)self range];
  v4 = [range description];
  v5 = [v2 stringWithFormat:@"range=%@", v4];

  return v5;
}

- (void)setUint16Value:(os_log_t)log .cold.1(uint64_t a1, unsigned __int16 a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 1026;
  v6 = a2;
  _os_log_error_impl(&dword_231618000, log, OS_LOG_TYPE_ERROR, "%{public}@ uint16Value out of range %{public}hu", &v3, 0x12u);
}

@end