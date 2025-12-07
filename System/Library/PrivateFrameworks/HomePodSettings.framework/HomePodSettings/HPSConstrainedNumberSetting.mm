@interface HPSConstrainedNumberSetting
- (HPSConstrainedNumberSetting)initWithCoder:(id)coder;
- (HPSConstrainedNumberSetting)initWithKeyPath:(id)path numberValue:(id)value minimumValue:(id)minimumValue maximumValue:(id)maximumValue stepValue:(id)stepValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HPSConstrainedNumberSetting

- (HPSConstrainedNumberSetting)initWithKeyPath:(id)path numberValue:(id)value minimumValue:(id)minimumValue maximumValue:(id)maximumValue stepValue:(id)stepValue
{
  minimumValueCopy = minimumValue;
  maximumValueCopy = maximumValue;
  stepValueCopy = stepValue;
  v16 = [(HPSNumberSetting *)self initWithKeyPath:path numberValue:value];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_minimumValue, minimumValue);
    objc_storeStrong(&v17->_maximumValue, maximumValue);
    objc_storeStrong(&v17->_stepValue, stepValue);
  }

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HPSConstrainedNumberSetting;
  [(HPSSetting *)&v8 encodeWithCoder:coderCopy];
  minimumValue = [(HPSConstrainedNumberSetting *)self minimumValue];
  if (minimumValue)
  {
    [coderCopy encodeObject:minimumValue forKey:@"setting.minimum"];
  }

  maximumValue = [(HPSConstrainedNumberSetting *)self maximumValue];

  if (maximumValue)
  {
    [coderCopy encodeObject:maximumValue forKey:@"setting.maximum"];
  }

  stepValue = [(HPSConstrainedNumberSetting *)self stepValue];

  if (stepValue)
  {
    [coderCopy encodeObject:stepValue forKey:@"setting.step"];
  }
}

- (HPSConstrainedNumberSetting)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HPSConstrainedNumberSetting;
  v5 = [(HPSSetting *)&v15 initWithCoder:coderCopy];
  if (v5 && ((v6 = objc_opt_class(), [coderCopy containsValueForKey:@"setting.minimum"]) && (objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", v6, @"setting.minimum"), v7 = objc_claimAutoreleasedReturnValue(), minimumValue = v5->_minimumValue, v5->_minimumValue = v7, minimumValue, !v5->_minimumValue) || objc_msgSend(coderCopy, "containsValueForKey:", @"setting.maximum") && (objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", v6, @"setting.maximum"), v9 = objc_claimAutoreleasedReturnValue(), maximumValue = v5->_maximumValue, v5->_maximumValue = v9, maximumValue, !v5->_maximumValue) || objc_msgSend(coderCopy, "containsValueForKey:", @"setting.step") && (objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", v6, @"setting.step"), v11 = objc_claimAutoreleasedReturnValue(), stepValue = v5->_stepValue, v5->_stepValue = v11, stepValue, !v5->_stepValue)))
  {
    v13 = 0;
  }

  else
  {
    v13 = v5;
  }

  return v13;
}

@end