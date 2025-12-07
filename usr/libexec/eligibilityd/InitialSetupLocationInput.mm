@interface InitialSetupLocationInput
- (BOOL)anyInArray:(id)array;
- (BOOL)isEqual:(id)equal;
- (InitialSetupLocationInput)initWithCoder:(id)coder;
- (InitialSetupLocationInput)initWithLocations:(id)locations status:(unint64_t)status process:(id)process;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation InitialSetupLocationInput

- (BOOL)anyInArray:(id)array
{
  arrayCopy = array;
  countryCodes = [(InitialSetupLocationInput *)self countryCodes];
  if (countryCodes)
  {
    objc_opt_class();
    v6 = arrayCopy;
    if (objc_opt_isKindOfClass())
    {
      if (v6)
      {
        v7 = objc_opt_class();
        if (sub_100027870(v6, v7))
        {
          v8 = [NSSet setWithArray:v6];
          v9 = [countryCodes intersectsSet:v8];
        }

        else
        {
          v12 = sub_10001F638();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = 136315138;
            v14 = "[InitialSetupLocationInput anyInArray:]";
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: Country list contains non-String entries", &v13, 0xCu);
          }

          v9 = 0;
        }

LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
    }

    v10 = sub_10001F638();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[InitialSetupLocationInput anyInArray:]";
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: Unexpected type passed to selector: %@", &v13, 0x16u);
    }

    v9 = 0;
    v6 = v10;
    goto LABEL_11;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (NSString)description
{
  countryCodes = [(InitialSetupLocationInput *)self countryCodes];
  v7.receiver = self;
  v7.super_class = InitialSetupLocationInput;
  v4 = [(EligibilityInput *)&v7 description];
  v5 = [NSString stringWithFormat:@"[InitialSetupLocationInput countryCodes:%@ %@]", countryCodes, v4];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = InitialSetupLocationInput;
  if (![(EligibilityInput *)&v11 isEqual:equalCopy])
  {
    goto LABEL_9;
  }

  if (equalCopy == self)
  {
    v8 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    countryCodes = [(InitialSetupLocationInput *)self countryCodes];
    countryCodes2 = [(InitialSetupLocationInput *)v5 countryCodes];
    v8 = sub_1000277EC(countryCodes, countryCodes2);

    if ((v8 & 1) == 0)
    {
      v9 = sub_10001F638();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[InitialSetupLocationInput isEqual:]";
        v14 = 2080;
        v15 = "countryCodes";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Property %s did not match", buf, 0x16u);
      }
    }
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

LABEL_11:

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = InitialSetupLocationInput;
  v3 = [(EligibilityInput *)&v7 hash];
  countryCodes = [(InitialSetupLocationInput *)self countryCodes];
  v5 = [countryCodes hash];

  return v5 ^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = InitialSetupLocationInput;
  v5 = [(EligibilityInput *)&v9 copyWithZone:?];
  countryCodes = [(InitialSetupLocationInput *)self countryCodes];
  v7 = [countryCodes copyWithZone:zone];
  [v5 setCountryCodes:v7];

  return v5;
}

- (InitialSetupLocationInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = InitialSetupLocationInput;
  v5 = [(EligibilityInput *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"countryCodes"];
    countryCodes = v5->_countryCodes;
    v5->_countryCodes = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = InitialSetupLocationInput;
  coderCopy = coder;
  [(EligibilityInput *)&v6 encodeWithCoder:coderCopy];
  v5 = [(InitialSetupLocationInput *)self countryCodes:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"countryCodes"];
}

- (InitialSetupLocationInput)initWithLocations:(id)locations status:(unint64_t)status process:(id)process
{
  locationsCopy = locations;
  processCopy = process;
  if (locationsCopy)
  {
    type = xpc_get_type(locationsCopy);
    if (type != &_xpc_type_array)
    {
      v11 = type;
      v12 = sub_10001F638();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "[InitialSetupLocationInput initWithLocations:status:process:]";
        v23 = 2080;
        name = xpc_type_get_name(v11);
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: Initial setup location input is wrong data type: %s", buf, 0x16u);
      }

LABEL_14:
      selfCopy = 0;
      goto LABEL_15;
    }

    v12 = _CFXPCCreateCFObjectFromXPCObject();
    v13 = objc_opt_class();
    if ((sub_100027870(v12, v13) & 1) == 0)
    {
      v18 = sub_10001F638();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v22 = "[InitialSetupLocationInput initWithLocations:status:process:]";
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: Initial setup location input contains non-String entries", buf, 0xCu);
      }

      goto LABEL_14;
    }

    v14 = [NSSet setWithArray:v12];

    v12 = v14;
  }

  else
  {
    v12 = 0;
  }

  v20.receiver = self;
  v20.super_class = InitialSetupLocationInput;
  v15 = [(EligibilityInput *)&v20 initWithInputType:14 status:status process:processCopy];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_countryCodes, v12);
  }

  self = v16;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

@end