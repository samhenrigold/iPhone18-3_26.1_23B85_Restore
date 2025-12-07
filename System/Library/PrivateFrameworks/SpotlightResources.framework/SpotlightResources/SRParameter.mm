@interface SRParameter
+ (id)BOOLNil;
+ (id)BOOLNo;
+ (id)BOOLYes;
+ (id)doubleMin;
+ (id)doubleNil;
+ (id)filePathNil;
+ (id)longNil;
+ (id)longZero;
+ (id)nilParameterWithType:(int64_t)type;
+ (id)parameterWithBoolean:(BOOL)boolean name:(id)name;
+ (id)parameterWithDouble:(double)double name:(id)name;
+ (id)parameterWithFilePath:(id)path name:(id)name;
+ (id)parameterWithLong:(int64_t)long name:(id)name;
+ (id)parameterWithString:(id)string name:(id)name;
+ (id)stringNil;
+ (id)typeStringFromParameterType:(int64_t)type;
- (BOOL)isNil;
- (BOOL)isPositiveLong;
- (BOOL)updateWithBoolean:(BOOL)boolean;
- (BOOL)updateWithDouble:(double)double;
- (BOOL)updateWithFilePath:(id)path;
- (BOOL)updateWithLong:(int64_t)long;
- (BOOL)updateWithString:(id)string;
- (SRParameter)initWithBoolean:(BOOL)boolean flags:(int64_t)flags name:(id)name;
- (SRParameter)initWithDouble:(double)double flags:(int64_t)flags name:(id)name;
- (SRParameter)initWithFilePath:(id)path flags:(int64_t)flags name:(id)name;
- (SRParameter)initWithLong:(int64_t)long flags:(int64_t)flags name:(id)name;
- (SRParameter)initWithString:(id)string flags:(int64_t)flags name:(id)name;
- (SRParameter)initWithType:(int64_t)type flags:(int64_t)flags name:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)getBooleanValue;
- (id)getDoubleValue;
- (id)getFilePathNameValue;
- (id)getFilePathValue;
- (id)getLongValue;
- (id)getStringValue;
- (void)getBooleanValue;
- (void)getDoubleValue;
- (void)getFilePathValue;
- (void)getLongValue;
- (void)getStringValue;
- (void)isNil;
- (void)makeNil;
- (void)setName:(id)name;
- (void)setNumber:(id)number;
- (void)setString:(id)string;
@end

@implementation SRParameter

- (id)getFilePathValue
{
  isFilePath = [(SRParameter *)self isFilePath];
  if (isFilePath)
  {
    v4 = self->_value;
  }

  else
  {
    v5 = SRLogCategoryTrial(isFilePath);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SRParameter getFilePathValue];
    }

    v4 = 0;
  }

  return v4;
}

- (id)getFilePathNameValue
{
  isFilePath = [(SRParameter *)self isFilePath];
  if (isFilePath)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:self->_value];
    lastPathComponent = [v4 lastPathComponent];
  }

  else
  {
    v6 = SRLogCategoryTrial(isFilePath);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SRParameter getFilePathValue];
    }

    lastPathComponent = 0;
  }

  return lastPathComponent;
}

- (BOOL)isNil
{
  if (self->_type <= 4uLL)
  {
    return self->_value == 0;
  }

  v3 = SRLogCategoryTrial(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [SRParameter isNil];
  }

  return 1;
}

- (id)getBooleanValue
{
  isBool = [(SRParameter *)self isBool];
  if (isBool)
  {
    v4 = self->_value;
  }

  else
  {
    v5 = SRLogCategoryTrial(isBool);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SRParameter getBooleanValue];
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)isPositiveLong
{
  if (self->_type == 1)
  {
    value = self->_value;
    if (value)
    {
      LOBYTE(value) = [value longValue:v2]> 0;
    }
  }

  else
  {
    LOBYTE(value) = 0;
  }

  return value;
}

- (id)getDoubleValue
{
  isDouble = [(SRParameter *)self isDouble];
  if (isDouble)
  {
    v4 = self->_value;
  }

  else
  {
    v5 = SRLogCategoryTrial(isDouble);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SRParameter getDoubleValue];
    }

    v4 = 0;
  }

  return v4;
}

- (id)getLongValue
{
  isLong = [(SRParameter *)self isLong];
  if (isLong)
  {
    v4 = self->_value;
  }

  else
  {
    v5 = SRLogCategoryTrial(isLong);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SRParameter getLongValue];
    }

    v4 = 0;
  }

  return v4;
}

- (SRParameter)initWithType:(int64_t)type flags:(int64_t)flags name:(id)name
{
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = SRParameter;
  v9 = [(SRParameter *)&v19 init];
  v10 = v9;
  if (!v9)
  {
    value = SRLogCategoryTrial(0);
    if (os_log_type_enabled(value, OS_LOG_TYPE_ERROR))
    {
      [SRParameter initWithType:flags:name:];
    }

    goto LABEL_7;
  }

  v9->_type = type;
  v9->_flag = flags;
  v11 = [nameCopy copy];
  name = v10->_name;
  v10->_name = v11;

  irisName = v10->_irisName;
  v10->_irisName = 0;

  if (type < 3 || (type - 3) < 2)
  {
    value = v10->_value;
    v10->_value = 0;
LABEL_7:

    v16 = v10;
    goto LABEL_8;
  }

  v18 = SRLogCategoryTrial(v14);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [SRParameter initWithType:flags:name:];
  }

  v16 = 0;
LABEL_8:

  return v16;
}

- (SRParameter)initWithBoolean:(BOOL)boolean flags:(int64_t)flags name:(id)name
{
  booleanCopy = boolean;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = SRParameter;
  v9 = [(SRParameter *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 0;
    v9->_flag = flags;
    v11 = [MEMORY[0x1E696AD98] numberWithBool:booleanCopy];
    value = v10->_value;
    v10->_value = v11;

    v13 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v13;
  }

  else
  {
    name = SRLogCategoryTrial(0);
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      [SRParameter initWithBoolean:flags:name:];
    }
  }

  return v10;
}

- (SRParameter)initWithLong:(int64_t)long flags:(int64_t)flags name:(id)name
{
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = SRParameter;
  v9 = [(SRParameter *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 1;
    v9->_flag = flags;
    v11 = [MEMORY[0x1E696AD98] numberWithLong:long];
    value = v10->_value;
    v10->_value = v11;

    v13 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v13;
  }

  else
  {
    name = SRLogCategoryTrial(0);
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      [SRParameter initWithLong:flags:name:];
    }
  }

  return v10;
}

- (SRParameter)initWithDouble:(double)double flags:(int64_t)flags name:(id)name
{
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = SRParameter;
  v9 = [(SRParameter *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 2;
    v9->_flag = flags;
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:double];
    value = v10->_value;
    v10->_value = v11;

    v13 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v13;
  }

  else
  {
    name = SRLogCategoryTrial(0);
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      [SRParameter initWithDouble:flags:name:];
    }
  }

  return v10;
}

- (SRParameter)initWithString:(id)string flags:(int64_t)flags name:(id)name
{
  stringCopy = string;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = SRParameter;
  v10 = [(SRParameter *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = 3;
    v10->_flag = flags;
    v12 = [MEMORY[0x1E696AEC0] stringWithString:stringCopy];
    value = v11->_value;
    v11->_value = v12;

    v14 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v14;
  }

  else
  {
    name = SRLogCategoryTrial(0);
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      [SRParameter initWithString:flags:name:];
    }
  }

  return v11;
}

- (SRParameter)initWithFilePath:(id)path flags:(int64_t)flags name:(id)name
{
  pathCopy = path;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = SRParameter;
  v10 = [(SRParameter *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = 4;
    v10->_flag = flags;
    v12 = [MEMORY[0x1E696AEC0] stringWithString:pathCopy];
    value = v11->_value;
    v11->_value = v12;

    v14 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v14;
  }

  else
  {
    name = SRLogCategoryTrial(0);
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      [SRParameter initWithFilePath:flags:name:];
    }
  }

  return v11;
}

+ (id)nilParameterWithType:(int64_t)type
{
  v3 = [[self alloc] initWithType:type flags:0 name:@"Unknown"];

  return v3;
}

+ (id)parameterWithBoolean:(BOOL)boolean name:(id)name
{
  booleanCopy = boolean;
  nameCopy = name;
  v7 = [[self alloc] initWithBoolean:booleanCopy flags:0 name:nameCopy];

  return v7;
}

+ (id)parameterWithLong:(int64_t)long name:(id)name
{
  nameCopy = name;
  v7 = [[self alloc] initWithLong:long flags:0 name:nameCopy];

  return v7;
}

+ (id)parameterWithDouble:(double)double name:(id)name
{
  nameCopy = name;
  v7 = [[self alloc] initWithDouble:0 flags:nameCopy name:double];

  return v7;
}

+ (id)parameterWithString:(id)string name:(id)name
{
  nameCopy = name;
  stringCopy = string;
  v8 = [[self alloc] initWithString:stringCopy flags:0 name:nameCopy];

  return v8;
}

+ (id)parameterWithFilePath:(id)path name:(id)name
{
  nameCopy = name;
  pathCopy = path;
  v8 = [[self alloc] initWithFilePath:pathCopy flags:0 name:nameCopy];

  return v8;
}

+ (id)typeStringFromParameterType:(int64_t)type
{
  if (type > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7A2B188[type];
  }
}

- (void)setName:(id)name
{
  self->_name = [name copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setNumber:(id)number
{
  numberCopy = number;
  v6 = numberCopy;
  if (numberCopy)
  {
    numberCopy = numberCopy;
  }

  value = self->_value;
  self->_value = numberCopy;
}

- (void)setString:(id)string
{
  if (string)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithString:?];
  }

  else
  {
    v4 = 0;
  }

  self->_value = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  if (!v4)
  {
    v5 = SRLogCategoryTrial(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SRParameter copyWithZone:];
    }
  }

  p_type = &self->_type;
  [v4 setType:self->_type];
  [v4 setName:self->_name];
  irisName = self->_irisName;
  if (irisName)
  {
    v8 = [(NSString *)irisName copy];
    [v4 setIrisName:v8];
  }

  else
  {
    v9 = [v4 setIrisName:0];
  }

  if (*p_type < 3)
  {
    [v4 setNumber:self->_value];
LABEL_12:
    v10 = v4;
    goto LABEL_13;
  }

  if ((*p_type - 3) < 2)
  {
    [v4 setString:self->_value];
    goto LABEL_12;
  }

  v12 = SRLogCategoryTrial(v9);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [SRParameter copyWithZone:];
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (void)makeNil
{
  OUTLINED_FUNCTION_2_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "makeNil for SRParameter with invalid type %ld", v2, v3, v4, v5);
}

- (id)description
{
  type = self->_type;
  v3 = &stru_1F2422260;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_29;
      }

      v7 = MEMORY[0x1E696AEC0];
      value = self->_value;
      if (value)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", -[NSObject longValue](value, "longValue")];
        [v7 stringWithFormat:@"type = Long, value = %@", v9];
        v3 = LABEL_14:;

        goto LABEL_29;
      }

      v18 = @"nil";
      v6 = @"type = Long, value = %@";
    }

    else
    {
      v7 = MEMORY[0x1E696AEC0];
      v14 = self->_value;
      if (v14)
      {
        bOOLValue = [v14 BOOLValue];
        v16 = @"NO";
        if (bOOLValue)
        {
          v16 = @"YES";
        }
      }

      else
      {
        v16 = @"nil";
      }

      v18 = v16;
      v6 = @"type = Boolean, value = %@";
    }
  }

  else
  {
    if (type != 2)
    {
      if (type == 3)
      {
        v4 = MEMORY[0x1E696AEC0];
        v12 = self->_value;
        if (!v12)
        {
          v12 = @"nil";
        }

        v18 = v12;
        v6 = @"type = String, value = %@";
      }

      else
      {
        if (type != 4)
        {
          goto LABEL_29;
        }

        v4 = MEMORY[0x1E696AEC0];
        v5 = self->_value;
        if (!v5)
        {
          v5 = @"nil";
        }

        v18 = v5;
        v6 = @"type = FilePath, value = %@";
      }

      v13 = v4;
      goto LABEL_28;
    }

    v7 = MEMORY[0x1E696AEC0];
    v10 = self->_value;
    if (v10)
    {
      [v10 doubleValue];
      v9 = [v7 stringWithFormat:@"%.10e", v11];
      [v7 stringWithFormat:@"type = Double, value = %@", v9];
      goto LABEL_14;
    }

    v18 = @"nil";
    v6 = @"type = Double, value = %@";
  }

  v13 = v7;
LABEL_28:
  v3 = [v13 stringWithFormat:v6, v18];
LABEL_29:

  return v3;
}

+ (id)BOOLNo
{
  if (BOOLNo_onceToken != -1)
  {
    +[SRParameter BOOLNo];
  }

  v3 = BOOLNo_paramBoolNo;

  return v3;
}

uint64_t __21__SRParameter_BOOLNo__block_invoke()
{
  BOOLNo_paramBoolNo = [SRParameter parameterWithBoolean:0 name:@"Unknown"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)BOOLYes
{
  if (BOOLYes_onceToken != -1)
  {
    +[SRParameter BOOLYes];
  }

  v3 = BOOLYes_paramBoolYes;

  return v3;
}

uint64_t __22__SRParameter_BOOLYes__block_invoke()
{
  BOOLYes_paramBoolYes = [SRParameter parameterWithBoolean:1 name:@"Unknown"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)longZero
{
  if (longZero_onceToken != -1)
  {
    +[SRParameter longZero];
  }

  v3 = longZero_paramLongZero;

  return v3;
}

uint64_t __23__SRParameter_longZero__block_invoke()
{
  longZero_paramLongZero = [SRParameter parameterWithLong:0 name:@"Unknown"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)doubleMin
{
  if (doubleMin_onceToken != -1)
  {
    +[SRParameter doubleMin];
  }

  v3 = doubleMin_paramDoubleMin;

  return v3;
}

uint64_t __24__SRParameter_doubleMin__block_invoke()
{
  doubleMin_paramDoubleMin = [SRParameter parameterWithDouble:@"Unknown" name:2.22507386e-308];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)BOOLNil
{
  if (BOOLNil_onceToken != -1)
  {
    +[SRParameter BOOLNil];
  }

  v3 = BOOLNil_paramBoolNil;

  return v3;
}

uint64_t __22__SRParameter_BOOLNil__block_invoke()
{
  BOOLNil_paramBoolNil = [SRParameter nilParameterWithType:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)longNil
{
  if (longNil_onceToken != -1)
  {
    +[SRParameter longNil];
  }

  v3 = longNil_paramLongNil;

  return v3;
}

uint64_t __22__SRParameter_longNil__block_invoke()
{
  longNil_paramLongNil = [SRParameter nilParameterWithType:1];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)doubleNil
{
  if (doubleNil_onceToken != -1)
  {
    +[SRParameter doubleNil];
  }

  v3 = doubleNil_paramDoubleNil;

  return v3;
}

uint64_t __24__SRParameter_doubleNil__block_invoke()
{
  doubleNil_paramDoubleNil = [SRParameter nilParameterWithType:2];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)stringNil
{
  if (stringNil_onceToken != -1)
  {
    +[SRParameter stringNil];
  }

  v3 = stringNil_paramStringNil;

  return v3;
}

uint64_t __24__SRParameter_stringNil__block_invoke()
{
  stringNil_paramStringNil = [SRParameter nilParameterWithType:3];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)filePathNil
{
  if (filePathNil_onceToken != -1)
  {
    +[SRParameter filePathNil];
  }

  v3 = filePathNil_paramFilePathNil;

  return v3;
}

uint64_t __26__SRParameter_filePathNil__block_invoke()
{
  filePathNil_paramFilePathNil = [SRParameter nilParameterWithType:4];

  return MEMORY[0x1EEE66BB8]();
}

- (id)getStringValue
{
  isString = [(SRParameter *)self isString];
  if (isString)
  {
    v4 = self->_value;
  }

  else
  {
    v5 = SRLogCategoryTrial(isString);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SRParameter getStringValue];
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)updateWithBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  isBool = [(SRParameter *)self isBool];
  v6 = isBool;
  if (isBool)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:booleanCopy];
    value = self->_value;
    self->_value = v7;
  }

  else
  {
    v9 = SRLogCategoryTrial(isBool);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SRParameter updateWithBoolean:];
    }
  }

  return v6;
}

- (BOOL)updateWithLong:(int64_t)long
{
  isLong = [(SRParameter *)self isLong];
  v6 = isLong;
  if (isLong)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLong:long];
    value = self->_value;
    self->_value = v7;
  }

  else
  {
    v9 = SRLogCategoryTrial(isLong);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SRParameter updateWithLong:];
    }
  }

  return v6;
}

- (BOOL)updateWithDouble:(double)double
{
  isDouble = [(SRParameter *)self isDouble];
  v6 = isDouble;
  if (isDouble)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:double];
    value = self->_value;
    self->_value = v7;
  }

  else
  {
    v9 = SRLogCategoryTrial(isDouble);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SRParameter updateWithDouble:];
    }
  }

  return v6;
}

- (BOOL)updateWithString:(id)string
{
  stringCopy = string;
  isString = [(SRParameter *)self isString];
  v6 = isString;
  if (isString)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithString:stringCopy];
    value = self->_value;
    self->_value = v7;
  }

  else
  {
    v9 = SRLogCategoryTrial(isString);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SRParameter updateWithString:];
    }
  }

  return v6;
}

- (BOOL)updateWithFilePath:(id)path
{
  pathCopy = path;
  isFilePath = [(SRParameter *)self isFilePath];
  v6 = isFilePath;
  if (isFilePath)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithString:pathCopy];
    value = self->_value;
    self->_value = v7;
  }

  else
  {
    v9 = SRLogCategoryTrial(isFilePath);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SRParameter updateWithFilePath:];
    }
  }

  return v6;
}

- (void)initWithType:flags:name:.cold.1()
{
  OUTLINED_FUNCTION_2_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "initWithType for SRParameter with invalid type: %ld", v2, v3, v4, v5);
}

- (void)initWithType:flags:name:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithBoolean:flags:name:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithLong:flags:name:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithDouble:flags:name:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithString:flags:name:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithFilePath:flags:name:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyWithZone:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyWithZone:.cold.2()
{
  OUTLINED_FUNCTION_2_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "copyWithZone for SRParameter with invalid type %ld", v2, v3, v4, v5);
}

- (void)isNil
{
  OUTLINED_FUNCTION_2_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "isNil for SRParameter with invalid type %ld", v2, v3, v4, v5);
}

- (void)getBooleanValue
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "SRParameter getBooleanValue called for type %ld", v2, v3, v4, v5);
}

- (void)getLongValue
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "SRParameter getLongValue called for type %ld", v2, v3, v4, v5);
}

- (void)getDoubleValue
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "SRParameter getDoubleValue called for type %ld", v2, v3, v4, v5);
}

- (void)getStringValue
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "SRParameter getStringValue called for type %ld", v2, v3, v4, v5);
}

- (void)getFilePathValue
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "SRParameter getFilePathValue called for type %ld", v2, v3, v4, v5);
}

- (void)updateWithBoolean:.cold.1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "SRParameter updateWithBoolean called for type %ld", v2, v3, v4, v5);
}

- (void)updateWithLong:.cold.1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "SRParameter updateWithLong called for type %ld", v2, v3, v4, v5);
}

- (void)updateWithDouble:.cold.1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "SRParameter updateWithDouble called for type %ld", v2, v3, v4, v5);
}

- (void)updateWithString:.cold.1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "SRParameter updateWithString called for type %ld", v2, v3, v4, v5);
}

- (void)updateWithFilePath:.cold.1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "SRParameter updateWithFilePath called for type %ld", v2, v3, v4, v5);
}

@end