@interface CAFInt16Characteristic
+ (void)load;
- (CAFInt16Range)range;
- (id)descriptionExtras;
- (id)formattedValue;
- (signed)int16Value;
- (void)setInt16Value:(signed __int16)value;
@end

@implementation CAFInt16Characteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFInt16Characteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (signed)int16Value
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

  shortValue = [v4 shortValue];
  return shortValue;
}

- (void)setInt16Value:(signed __int16)value
{
  valueCopy = value;
  range = [(CAFInt16Characteristic *)self range];
  v6 = [range valueIsInRange:valueCopy];

  if (v6)
  {
    v7 = MEMORY[0x277CCABB0];
    range2 = [(CAFInt16Characteristic *)self range];
    v8 = [v7 numberWithShort:{objc_msgSend(range2, "valueRoundedToNearestStepValue:", valueCopy)}];
    [(CAFCharacteristic *)self setValue:v8];
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = [MEMORY[0x277CCABB0] numberWithShort:valueCopy];
    range3 = [(CAFInt16Characteristic *)self range];
    v12 = [v9 CAF_outOfRangeErrorForValue:v10 range:range3];
    [(CAFCharacteristic *)self setError:v12];

    v14 = CAFGeneralLogging(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(CAFInt16Characteristic *)self setInt16Value:valueCopy, v14];
    }
  }
}

- (CAFInt16Range)range
{
  range = self->_range;
  if (!range)
  {
    v4 = [CAFInt16Range alloc];
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
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%hd", -[CAFInt16Characteristic int16Value](self, "int16Value")];
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
  range = [(CAFInt16Characteristic *)self range];
  v4 = [range description];
  v5 = [v2 stringWithFormat:@"range=%@", v4];

  return v5;
}

- (void)setInt16Value:(os_log_t)log .cold.1(uint64_t a1, __int16 a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 1026;
  v6 = a2;
  _os_log_error_impl(&dword_231618000, log, OS_LOG_TYPE_ERROR, "%{public}@ int16Value out of range %{public}hd", &v3, 0x12u);
}

@end