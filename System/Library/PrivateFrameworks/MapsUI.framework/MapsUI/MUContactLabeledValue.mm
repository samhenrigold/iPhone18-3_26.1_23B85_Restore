@interface MUContactLabeledValue
- (MUContactLabeledValue)initWithContactLabeledValue:(id)value type:(int64_t)type;
- (NSString)titleString;
- (NSString)valueString;
- (id)glyphName;
- (int)analyticsTarget;
@end

@implementation MUContactLabeledValue

- (int)analyticsTarget
{
  type = self->_type;
  if (type > 3)
  {
    return 0;
  }

  else
  {
    return dword_1C5879FE0[type];
  }
}

- (MUContactLabeledValue)initWithContactLabeledValue:(id)value type:(int64_t)type
{
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = MUContactLabeledValue;
  v8 = [(MUContactLabeledValue *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_labeledValue, value);
    glyphName = [(MUContactLabeledValue *)v9 glyphName];
    symbolName = v9->_symbolName;
    v9->_symbolName = glyphName;
  }

  return v9;
}

- (id)glyphName
{
  v2 = self->_type - 1;
  if (v2 > 2)
  {
    return &stru_1F44CA030;
  }

  else
  {
    return off_1E8219B48[v2];
  }
}

- (NSString)valueString
{
  value = [(CNLabeledValue *)self->_labeledValue value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  value2 = [(CNLabeledValue *)self->_labeledValue value];
  v6 = value2;
  if (isKindOfClass)
  {
    stringValue = [value2 stringValue];

    mEMORY[0x1E69A1CD8] = [MEMORY[0x1E69A1CD8] sharedConfiguration];
    countryCode = [mEMORY[0x1E69A1CD8] countryCode];
    v10 = CFPhoneNumberCreate();

    if (v10)
    {
      String = CFPhoneNumberCreateString();
      CFRelease(v10);
    }

    else
    {
      String = &stru_1F44CA030;
    }

    goto LABEL_9;
  }

  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if ((v12 & 1) == 0)
  {
    String = &stru_1F44CA030;
    goto LABEL_10;
  }

  if (self->_type == 3)
  {
    v13 = MEMORY[0x1E696AEC0];
    stringValue = [(CNLabeledValue *)self->_labeledValue value];
    String = [v13 _mapkit_shortenedURLStringForFullURLString:stringValue];
LABEL_9:

    goto LABEL_10;
  }

  String = [(CNLabeledValue *)self->_labeledValue value];
LABEL_10:

  return String;
}

- (NSString)titleString
{
  v3 = self->_type - 1;
  if (v3 > 2)
  {
    v4 = &stru_1F44CA030;
  }

  else
  {
    v4 = _MULocalizedStringFromThisBundle(off_1E8219B30[v3]);
  }

  return v4;
}

@end