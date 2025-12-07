@interface RBLessThanConditionDomainRestriction
+ (id)domainRestrictionForDictionary:(id)dictionary withError:(id *)error;
- (BOOL)allowsContext:(id)context withError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)_initWithCondition:(id)condition value:(int64_t)value;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation RBLessThanConditionDomainRestriction

- (id)_initWithCondition:(id)condition value:(int64_t)value
{
  conditionCopy = condition;
  v12.receiver = self;
  v12.super_class = RBLessThanConditionDomainRestriction;
  _init = [(RBDomainRestriction *)&v12 _init];
  if (_init)
  {
    v8 = [conditionCopy copy];
    v9 = _init[1];
    _init[1] = v8;

    _init[2] = value;
    v10 = _init;
  }

  return _init;
}

+ (id)domainRestrictionForDictionary:(id)dictionary withError:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (_os_feature_enabled_impl())
  {
    v6 = [dictionaryCopy objectForKey:@"Condition"];
    v7 = [dictionaryCopy objectForKey:@"Value"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          error = -[RBLessThanConditionDomainRestriction _initWithCondition:value:]([RBLessThanConditionDomainRestriction alloc], "_initWithCondition:value:", v6, [v7 integerValue]);
LABEL_15:

          goto LABEL_16;
        }
      }

      if (!error)
      {
        goto LABEL_15;
      }

      v8 = MEMORY[0x277CCA9B8];
      dictionaryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"RBLessThanConditionDomainRestriction doesn't specify value: %@", dictionaryCopy, *MEMORY[0x277CCA470]];
      v18 = dictionaryCopy;
      v10 = MEMORY[0x277CBEAC0];
      v11 = &v18;
      v12 = &v17;
    }

    else
    {
      if (!error)
      {
        goto LABEL_15;
      }

      v8 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA470];
      dictionaryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"RBLessThanConditionDomainRestriction doesn't specify condition: %@", dictionaryCopy];
      v20[0] = dictionaryCopy;
      v10 = MEMORY[0x277CBEAC0];
      v11 = v20;
      v12 = &v19;
    }

    v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
    v14 = [v8 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:1 userInfo:v13];

    v15 = v14;
    *error = v14;

    error = 0;
    goto LABEL_15;
  }

  if (domainRestrictionForDictionary_withError__onceToken_315 != -1)
  {
    +[RBLessThanConditionDomainRestriction domainRestrictionForDictionary:withError:];
  }

  error = domainRestrictionForDictionary_withError__singleton_316;
LABEL_16:

  return error;
}

uint64_t __81__RBLessThanConditionDomainRestriction_domainRestrictionForDictionary_withError___block_invoke()
{
  domainRestrictionForDictionary_withError__singleton_316 = [[RBLessThanConditionDomainRestriction alloc] _initWithCondition:@"FFDisabled" value:0];

  return MEMORY[0x2821F96F8]();
}

- (id)dictionaryRepresentation
{
  v7[3] = *MEMORY[0x277D85DE8];
  condition = self->_condition;
  v6[0] = @"Class";
  v6[1] = @"Condition";
  v7[0] = @"LessThanCondition";
  v7[1] = condition;
  v6[2] = @"Value";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_value];
  v7[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (BOOL)allowsContext:(id)context withError:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (_os_feature_enabled_impl())
  {
    systemState = [contextCopy systemState];
    conditions = [systemState conditions];
    v9 = [conditions objectForKey:self->_condition];

    if (v9 && [v9 integerValue] >= self->_value)
    {
      if (error)
      {
        v10 = MEMORY[0x277CCA9B8];
        v11 = *MEMORY[0x277D47098];
        v15 = *MEMORY[0x277CCA470];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"System condition %@ has value %lld, which is not less than %lld", self->_condition, objc_msgSend(v9, "integerValue"), self->_value];
        v16[0] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
        *error = [v10 errorWithDomain:v11 code:1 userInfo:v13];

        LOBYTE(error) = 0;
      }
    }

    else
    {
      LOBYTE(error) = 1;
    }
  }

  else
  {
    LOBYTE(error) = 1;
  }

  return error;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && ((condition = self->_condition, v8 = equalCopy->_condition, condition == v8) || (condition ? (v9 = v8 == 0) : (v9 = 1), !v9 && [(NSString *)condition isEqual:?])) && self->_value == equalCopy->_value;
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| %@:%lld>", v4, self->_condition, self->_value];

  return v5;
}

@end