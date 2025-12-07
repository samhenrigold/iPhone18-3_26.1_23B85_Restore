@interface KNBuildAttributeValue
+ (id)emptyValue;
+ (id)valueWithBool:(BOOL)bool;
+ (id)valueWithColor:(id)color;
+ (id)valueWithDouble:(double)double;
+ (id)valueWithInteger:(int64_t)integer;
+ (id)valueWithPathSource:(id)source;
+ (id)valueWithString:(id)string;
- (BOOL)BOOLValue;
- (BOOL)isEqual:(id)equal;
- (KNBuildAttributeValue)initWithBoolValue:(BOOL)value;
- (KNBuildAttributeValue)initWithColorValue:(id)value;
- (KNBuildAttributeValue)initWithDoubleValue:(double)value;
- (KNBuildAttributeValue)initWithIntegerValue:(int64_t)value;
- (KNBuildAttributeValue)initWithPathSourceValue:(id)value;
- (KNBuildAttributeValue)initWithStringValue:(id)value;
- (NSObject)objectValue;
- (NSString)stringValue;
- (TSDPathSource)pathSourceValue;
- (TSUColor)colorValue;
- (double)doubleValue;
- (id)description;
- (int64_t)integerValue;
- (unint64_t)hash;
- (unint64_t)type;
@end

@implementation KNBuildAttributeValue

+ (id)emptyValue
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)valueWithInteger:(int64_t)integer
{
  v3 = [[self alloc] initWithIntegerValue:integer];

  return v3;
}

+ (id)valueWithDouble:(double)double
{
  v3 = [[self alloc] initWithDoubleValue:double];

  return v3;
}

+ (id)valueWithBool:(BOOL)bool
{
  v3 = [[self alloc] initWithBoolValue:bool];

  return v3;
}

+ (id)valueWithString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithStringValue:stringCopy];

  return v5;
}

+ (id)valueWithPathSource:(id)source
{
  sourceCopy = source;
  v5 = [[self alloc] initWithPathSourceValue:sourceCopy];

  return v5;
}

+ (id)valueWithColor:(id)color
{
  colorCopy = color;
  v5 = [[self alloc] initWithColorValue:colorCopy];

  return v5;
}

- (KNBuildAttributeValue)initWithIntegerValue:(int64_t)value
{
  v7.receiver = self;
  v7.super_class = KNBuildAttributeValue;
  v4 = [(KNBuildAttributeValue *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_definedIntegerValue = 1;
    if (value >= 0x80000000)
    {
      sub_275E60674();
      LODWORD(value) = 0x7FFFFFFF;
    }

    else if (value <= 0xFFFFFFFF7FFFFFFFLL)
    {
      sub_275E605F8();
      LODWORD(value) = 0x80000000;
    }

    v5->_integerValue = value;
  }

  return v5;
}

- (KNBuildAttributeValue)initWithDoubleValue:(double)value
{
  v5.receiver = self;
  v5.super_class = KNBuildAttributeValue;
  result = [(KNBuildAttributeValue *)&v5 init];
  if (result)
  {
    result->_definedDoubleValue = 1;
    result->_doubleValue = value;
  }

  return result;
}

- (KNBuildAttributeValue)initWithBoolValue:(BOOL)value
{
  v5.receiver = self;
  v5.super_class = KNBuildAttributeValue;
  result = [(KNBuildAttributeValue *)&v5 init];
  if (result)
  {
    result->_definedBoolValue = 1;
    result->_BOOLValue = value;
  }

  return result;
}

- (KNBuildAttributeValue)initWithStringValue:(id)value
{
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = KNBuildAttributeValue;
  v5 = [(KNBuildAttributeValue *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_definedStringValue = 1;
    v7 = [valueCopy copy];
    stringValue = v6->_stringValue;
    v6->_stringValue = v7;
  }

  return v6;
}

- (KNBuildAttributeValue)initWithPathSourceValue:(id)value
{
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = KNBuildAttributeValue;
  v5 = [(KNBuildAttributeValue *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_definedPathSourceValue = 1;
    v7 = [valueCopy copy];
    pathSourceValue = v6->_pathSourceValue;
    v6->_pathSourceValue = v7;
  }

  return v6;
}

- (KNBuildAttributeValue)initWithColorValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = KNBuildAttributeValue;
  v6 = [(KNBuildAttributeValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_definedColorValue = 1;
    objc_storeStrong(&v6->_colorValue, value);
  }

  return v7;
}

- (unint64_t)type
{
  if (self->_definedIntegerValue)
  {
    return 0;
  }

  if (self->_definedDoubleValue)
  {
    return 1;
  }

  if (self->_definedBoolValue)
  {
    return 2;
  }

  if (self->_definedStringValue)
  {
    return 3;
  }

  if (self->_definedPathSourceValue)
  {
    return 4;
  }

  if (self->_definedColorValue)
  {
    return 5;
  }

  return 6;
}

- (NSObject)objectValue
{
  type = [(KNBuildAttributeValue *)self type];
  v4 = 0;
  if (type > 2)
  {
    switch(type)
    {
      case 3:
        v5 = 32;
        break;
      case 4:
        v5 = 40;
        break;
      case 5:
        v5 = 48;
        break;
      default:
        goto LABEL_15;
    }

    v4 = *(&self->super.super.isa + v5);
  }

  else if (type)
  {
    if (type == 1)
    {
      v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_doubleValue];
    }

    else if (type == 2)
    {
      v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_BOOLValue];
    }
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_integerValue];
  }

LABEL_15:

  return v4;
}

- (int64_t)integerValue
{
  if (!self->_definedIntegerValue && ![(KNBuildAttributeValue *)self p_attributesAreEmpty])
  {
    v3 = MEMORY[0x277D81150];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildAttributeValue integerValue]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeValue.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:161 isFatal:0 description:"Illegal attribute value access."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  result = self->_integerValue;
  if ((result & 0x80000000) != 0)
  {
    sub_275E606F0();
    return 0;
  }

  return result;
}

- (double)doubleValue
{
  if (!self->_definedDoubleValue && ![(KNBuildAttributeValue *)self p_attributesAreEmpty])
  {
    v3 = MEMORY[0x277D81150];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildAttributeValue doubleValue]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeValue.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:167 isFatal:0 description:"Illegal attribute value access."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  return self->_doubleValue;
}

- (BOOL)BOOLValue
{
  if (!self->_definedBoolValue && ![(KNBuildAttributeValue *)self p_attributesAreEmpty])
  {
    v3 = MEMORY[0x277D81150];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildAttributeValue BOOLValue]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeValue.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:173 isFatal:0 description:"Illegal attribute value access."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  return self->_BOOLValue;
}

- (NSString)stringValue
{
  if (!self->_definedStringValue && ![(KNBuildAttributeValue *)self p_attributesAreEmpty])
  {
    v3 = MEMORY[0x277D81150];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildAttributeValue stringValue]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeValue.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:179 isFatal:0 description:"Illegal attribute value access."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  stringValue = self->_stringValue;

  return stringValue;
}

- (TSDPathSource)pathSourceValue
{
  if (!self->_definedPathSourceValue && ![(KNBuildAttributeValue *)self p_attributesAreEmpty])
  {
    v3 = MEMORY[0x277D81150];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildAttributeValue pathSourceValue]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeValue.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:185 isFatal:0 description:"Illegal attribute value access."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  pathSourceValue = self->_pathSourceValue;

  return pathSourceValue;
}

- (TSUColor)colorValue
{
  if (!self->_definedColorValue && ![(KNBuildAttributeValue *)self p_attributesAreEmpty])
  {
    v3 = MEMORY[0x277D81150];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildAttributeValue colorValue]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeValue.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:191 isFatal:0 description:"Illegal attribute value access."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  colorValue = self->_colorValue;

  return colorValue;
}

- (id)description
{
  type = [(KNBuildAttributeValue *)self type];
  v4 = @"(none)";
  if (type > 2)
  {
    switch(type)
    {
      case 3:
        [MEMORY[0x277CCACA8] stringWithFormat:@"(string, %@)", self->_stringValue];
        break;
      case 4:
        [MEMORY[0x277CCACA8] stringWithFormat:@"(path source, %@)", self->_pathSourceValue];
        break;
      case 5:
        [MEMORY[0x277CCACA8] stringWithFormat:@"(color, %@)", self->_colorValue];
        break;
      default:
        goto LABEL_18;
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(double, %lf)", *&self->_doubleValue];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_18;
      }

      if (self->_BOOLValue)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"(BOOLean, %@)", v5];
    }
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(integer, %d)", self->_integerValue];
  }
  v4 = ;
LABEL_18:
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"<KNBuildAttributeValue %p : %@>", self, v4];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();

  objc_opt_class();
  objectValue = [(KNBuildAttributeValue *)self objectValue];
  v7 = TSUDynamicCast();

  if (v7 && (objc_opt_class(), [v5 pathSourceValue], v8 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(), objectValue2 = objc_claimAutoreleasedReturnValue(), v8, objectValue2))
  {
    v10 = [v7 isEqualWithStrictComparison:objectValue2];
  }

  else
  {
    objectValue2 = [(KNBuildAttributeValue *)self objectValue];
    objectValue3 = [v5 objectValue];
    v10 = [objectValue2 isEqual:objectValue3];
  }

  return v10;
}

- (unint64_t)hash
{
  objectValue = [(KNBuildAttributeValue *)self objectValue];
  v3 = [objectValue hash];

  return v3;
}

@end