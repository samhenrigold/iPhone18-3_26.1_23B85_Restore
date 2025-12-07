@interface CADPropertyFilter
- (BOOL)applicableToEntityType:(int)type;
- (BOOL)validate;
- (BOOL)validateWithRequiredPropertyType:(int)type;
- (CADPropertyFilter)initWithCoder:(id)coder;
- (CADPropertyFilter)initWithProperty:(int64_t)property comparison:(int64_t)comparison dateValue:(id)value;
- (CADPropertyFilter)initWithProperty:(int64_t)property comparison:(int64_t)comparison integerValue:(int64_t)value;
- (CADPropertyFilter)initWithProperty:(int64_t)property comparison:(int64_t)comparison stringValue:(id)value;
- (id)extendWhereClause:(id)clause usingOperation:(int64_t)operation withValues:(id)values andTypes:(id)types;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADPropertyFilter

- (CADPropertyFilter)initWithProperty:(int64_t)property comparison:(int64_t)comparison stringValue:(id)value
{
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = CADPropertyFilter;
  v10 = [(CADPropertyFilter *)&v14 init];
  v11 = v10;
  if (v10 && (v10->_property = property, v10->_comparison = comparison, objc_storeStrong(&v10->_stringValue, value), ![(CADPropertyFilter *)v11 validateWithRequiredPropertyType:0]))
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

- (CADPropertyFilter)initWithProperty:(int64_t)property comparison:(int64_t)comparison integerValue:(int64_t)value
{
  v12.receiver = self;
  v12.super_class = CADPropertyFilter;
  v8 = [(CADPropertyFilter *)&v12 init];
  v9 = v8;
  if (v8 && (v8->_property = property, v8->_comparison = comparison, v8->_integerValue = value, ![(CADPropertyFilter *)v8 validateWithRequiredPropertyType:1]))
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (CADPropertyFilter)initWithProperty:(int64_t)property comparison:(int64_t)comparison dateValue:(id)value
{
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = CADPropertyFilter;
  v9 = [(CADPropertyFilter *)&v17 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_5;
  }

  v9->_property = property;
  v9->_comparison = comparison;
  if (valueCopy)
  {
    v11 = MEMORY[0x277CBEAA8];
    [valueCopy timeIntervalSinceReferenceDate];
    v13 = [v11 dateWithTimeIntervalSinceReferenceDate:floor(v12)];
    dateValue = v10->_dateValue;
    v10->_dateValue = v13;
  }

  if (![(CADPropertyFilter *)v10 validateWithRequiredPropertyType:2])
  {
    v15 = 0;
  }

  else
  {
LABEL_5:
    v15 = v10;
  }

  return v15;
}

- (BOOL)validateWithRequiredPropertyType:(int)type
{
  validate = [(CADPropertyFilter *)self validate];
  if (validate)
  {
    if (*(getSearchPropertyInfo(self->_property) + 2) == type)
    {
      LOBYTE(validate) = 1;
    }

    else
    {
      v6 = CADLogHandle;
      validate = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR);
      if (validate)
      {
        *v8 = 0;
        _os_log_impl(&dword_22430B000, v6, OS_LOG_TYPE_ERROR, "Property is of the wrong type; you must use the initializer that matches the property type.", v8, 2u);
        LOBYTE(validate) = 0;
      }
    }
  }

  return validate;
}

- (BOOL)validate
{
  v13 = *MEMORY[0x277D85DE8];
  if (!getSearchPropertyInfo(self->_property))
  {
    v4 = CADLogHandle;
    LODWORD(comparison) = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR);
    if (!comparison)
    {
      return comparison;
    }

    property = self->_property;
    v11 = 134217984;
    v12 = property;
    v7 = "property %li is invalid.";
    goto LABEL_6;
  }

  if ([(CADPropertyFilter *)self isDate])
  {
    dateValue = [(CADPropertyFilter *)self dateValue];
  }

  else
  {
    if (![(CADPropertyFilter *)self isString])
    {
LABEL_10:
      LOBYTE(comparison) = 1;
      return comparison;
    }

    dateValue = [(CADPropertyFilter *)self stringValue];
  }

  v8 = dateValue;

  if (v8 || ![(CADPropertyFilter *)self comparison])
  {
    goto LABEL_10;
  }

  comparison = [(CADPropertyFilter *)self comparison];
  if (comparison != 1)
  {
    v4 = CADLogHandle;
    LODWORD(comparison) = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR);
    if (comparison)
    {
      comparison = self->_comparison;
      v11 = 134217984;
      v12 = comparison;
      v7 = "comparison %li is invalid for null values.";
LABEL_6:
      _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_ERROR, v7, &v11, 0xCu);
      LOBYTE(comparison) = 0;
    }
  }

  return comparison;
}

- (BOOL)applicableToEntityType:(int)type
{
  if (type == -1)
  {
    return 0;
  }

  v4 = getSearchPropertyInfo(self->_property)[2];
  do
  {
    isa = v4->isa;
    v4 = (v4 + 4);
    v5 = isa;
    result = isa != -1;
  }

  while (isa != type && v5 != -1);
  return result;
}

- (id)extendWhereClause:(id)clause usingOperation:(int64_t)operation withValues:(id)values andTypes:(id)types
{
  valuesCopy = values;
  typesCopy = types;
  clauseCopy = clause;
  SearchPropertyInfo = getSearchPropertyInfo([(CADPropertyFilter *)self property]);
  v14 = *(SearchPropertyInfo + 2);
  switch(v14)
  {
    case 0:
      stringValue = [(CADPropertyFilter *)self stringValue];

      if (stringValue)
      {
        stringValue2 = [(CADPropertyFilter *)self stringValue];
        v16 = &unk_2837C7528;
        goto LABEL_9;
      }

      goto LABEL_17;
    case 2:
      dateValue = [(CADPropertyFilter *)self dateValue];

      if (dateValue)
      {
        stringValue2 = [(CADPropertyFilter *)self dateValue];
        v16 = &unk_2837C7510;
        goto LABEL_9;
      }

LABEL_17:
      comparison = [(CADPropertyFilter *)self comparison];
      if (comparison > 5)
      {
        v25 = 0;
      }

      else
      {
        v25 = off_27851B568[comparison];
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ NULL", *SearchPropertyInfo, v25];
      goto LABEL_14;
    case 1:
      stringValue2 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CADPropertyFilter integerValue](self, "integerValue")}];
      v16 = &unk_2837C74F8;
LABEL_9:
      [valuesCopy addObject:stringValue2];

      [typesCopy addObject:v16];
      break;
  }

  comparison2 = [(CADPropertyFilter *)self comparison];
  if (comparison2 > 5)
  {
    v20 = 0;
  }

  else
  {
    v20 = off_27851B598[comparison2];
  }

  [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ ?", *SearchPropertyInfo, v20];
  v21 = LABEL_14:;
  v22 = _CADPropertySearchPredicateExtendWhereClause(clauseCopy, operation, v21);

  return v22;
}

- (CADPropertyFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CADPropertyFilter;
  v5 = [(CADFilter *)&v12 initWithCoder:coderCopy];
  if (v5 && (v5->_property = [coderCopy decodeIntegerForKey:@"property"], v5->_comparison = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"comparison"), objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"stringValue"), v6 = objc_claimAutoreleasedReturnValue(), stringValue = v5->_stringValue, v5->_stringValue = v6, stringValue, v5->_integerValue = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"integerValue"), objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"dateValue"), v8 = objc_claimAutoreleasedReturnValue(), dateValue = v5->_dateValue, v5->_dateValue = v8, dateValue, !-[CADPropertyFilter validate](v5, "validate")))
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CADPropertyFilter;
  coderCopy = coder;
  [(CADFilter *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_property forKey:{@"property", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_comparison forKey:@"comparison"];
  [coderCopy encodeObject:self->_stringValue forKey:@"stringValue"];
  [coderCopy encodeInteger:self->_integerValue forKey:@"integerValue"];
  [coderCopy encodeObject:self->_dateValue forKey:@"dateValue"];
}

@end