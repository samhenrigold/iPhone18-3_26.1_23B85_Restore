@interface HMFAttributeDescription
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMFAttributeDescription)init;
- (HMFAttributeDescription)initWithName:(id)name value:(id)value options:(unint64_t)options formatter:(id)formatter;
- (NSString)description;
- (NSString)privateDescription;
- (NSString)shortDescription;
- (unint64_t)hash;
@end

@implementation HMFAttributeDescription

- (NSString)privateDescription
{
  v3 = [(HMFAttributeDescription *)self options]| 2;

  return HMFAttributeDescriptionDescriptionWithOptions(self, v3);
}

- (NSString)description
{
  options = [(HMFAttributeDescription *)self options];

  return HMFAttributeDescriptionDescriptionWithOptions(self, options);
}

- (HMFAttributeDescription)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (HMFAttributeDescription)initWithName:(id)name value:(id)value options:(unint64_t)options formatter:(id)formatter
{
  nameCopy = name;
  valueCopy = value;
  formatterCopy = formatter;
  if ([nameCopy length])
  {
    v18.receiver = self;
    v18.super_class = HMFAttributeDescription;
    v13 = [(HMFAttributeDescription *)&v18 init];
    if (v13)
    {
      capitalizedString = [nameCopy capitalizedString];
      name = v13->_name;
      v13->_name = capitalizedString;

      objc_storeStrong(&v13->_value, value);
      v13->_options = options;
      objc_storeStrong(&v13->_formatter, formatter);
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  name = [(HMFAttributeDescription *)self name];
  v3 = [name hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && (-[HMFAttributeDescription name](self, "name"), v7 = objc_claimAutoreleasedReturnValue(), -[HMFAttributeDescription name](v6, "name"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqualToString:v8], v8, v7, v9) && (-[HMFAttributeDescription value](self, "value"), v10 = objc_claimAutoreleasedReturnValue(), -[HMFAttributeDescription value](v6, "value"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqual:", v11), v11, v10, (v12 & 1) == 0) && (v13 = -[HMFAttributeDescription options](self, "options"), v13 == -[HMFAttributeDescription options](v6, "options")))
    {
      formatter = [(HMFAttributeDescription *)self formatter];
      formatter2 = [(HMFAttributeDescription *)v6 formatter];
      v16 = HMFEqualObjects(formatter, formatter2);
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)shortDescription
{
  v3 = [(HMFAttributeDescription *)self options]| 1;

  return HMFAttributeDescriptionDescriptionWithOptions(self, v3);
}

@end