@interface GQDTGroupingCell
+ (__CFString)displayTypeString:(int)string;
- (__CFString)createFormattedValue;
- (id)value;
- (int)readAttributes:(_xmlTextReader *)attributes;
- (int)readElement:(_xmlTextReader *)element;
- (int)readRootFormat:(_xmlTextReader *)format;
- (int)readValue:(_xmlTextReader *)value;
- (void)dealloc;
@end

@implementation GQDTGroupingCell

- (void)dealloc
{
  mValue = self->mValue;
  if (mValue)
  {
    CFRelease(mValue);
  }

  mFormulaValue = self->mFormulaValue;
  if (mFormulaValue)
  {
    CFRelease(mFormulaValue);
  }

  v5.receiver = self;
  v5.super_class = GQDTGroupingCell;
  [(GQDTCell *)&v5 dealloc];
}

- (id)value
{
  if (self->mHasValidFormulaValue)
  {
    v2 = &OBJC_IVAR___GQDTGroupingCell_mFormulaValue;
  }

  else
  {
    v2 = &OBJC_IVAR___GQDTGroupingCell_mValue;
  }

  return *(&self->super.super.isa + *v2);
}

- (__CFString)createFormattedValue
{
  if (self->mHasValidFormulaValue)
  {
    mFormulaValue = self->mFormulaValue;
    if (mFormulaValue)
    {
      CFRetain(mFormulaValue);
    }

    return mFormulaValue;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    formatString = [self->mFormat formatString];
    mValue = self->mValue;
    v6 = sub_52308();
    v7 = CFDateFormatterCreate(0, v6, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    v8 = sub_13AF8();
    CFDateFormatterSetProperty(v7, kCFDateFormatterTimeZone, v8);
    if (formatString)
    {
      CFDateFormatterSetFormat(v7, formatString);
    }

    mFormulaValue = CFDateFormatterCreateStringWithDate(0, v7, mValue);
    CFRelease(v7);
    return mFormulaValue;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    DoubleValue = CFStringGetDoubleValue(self->mValue);
    formatString2 = [self->mFormat formatString];
    mProcessorBundle = self->mProcessorBundle;

    return sub_4DCD0(formatString2, mProcessorBundle, DoubleValue);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }

      v15 = self->mValue;
      return self->mValue;
    }

    mFormat = self->mFormat;
    v14 = CFStringGetDoubleValue(self->mValue);

    return [mFormat createStringFromDouble:v14];
  }
}

+ (__CFString)displayTypeString:(int)string
{
  if (string <= 3)
  {
    if (string == 2)
    {
      v3 = [NSBundle bundleForClass:objc_opt_class()];
      v4 = @"GQDTDisplayTypeSubtotal";
      v5 = @"Subtotal";
      goto LABEL_12;
    }

    if (string == 3)
    {
      v3 = [NSBundle bundleForClass:objc_opt_class()];
      v4 = @"GQDTDisplayTypeAverage";
      v5 = @"Average";
      goto LABEL_12;
    }

    return 0;
  }

  if (string == 4)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = @"GQDTDisplayTypeMinimum";
    v5 = @"Minimum";
    goto LABEL_12;
  }

  if (string == 5)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = @"GQDTDisplayTypeMaximum";
    v5 = @"Maximum";
    goto LABEL_12;
  }

  if (string != 6)
  {
    return 0;
  }

  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = @"GQDTDisplayTypeCount";
  v5 = @"Count";
LABEL_12:

  return [(NSBundle *)v3 localizedStringForKey:v4 value:v5 table:0];
}

- (int)readValue:(_xmlTextReader *)value
{
  self->mValue = sub_4294C(value, qword_A35E8, "value");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    System = CFLocaleGetSystem();
    v5 = CFDateFormatterCreate(kCFAllocatorDefault, System, kCFDateFormatterShortStyle, kCFDateFormatterShortStyle);
    CFDateFormatterSetFormat(v5, @"yyyy-MM-dd'T'HH:mm:ssZZ");
    DateFromString = CFDateFormatterCreateDateFromString(kCFAllocatorDefault, v5, self->mValue, 0);
    CFRelease(v5);

    self->mValue = DateFromString;
  }

  return 1;
}

- (int)readElement:(_xmlTextReader *)element
{
  self->mLevel = sub_4258C(element, qword_A35E8, "level", 0);
  self->mRowIdx = sub_4258C(element, qword_A35E8, "row-index", 0);
  self->mRowCount = sub_4258C(element, qword_A35E8, "row-count", 0);
  self->mIsCollapsed = sub_42340(element, qword_A35E8, "collapsed", 0);
  return 1;
}

- (int)readRootFormat:(_xmlTextReader *)format
{
  v5 = sub_4294C(format, qword_A35E8, "group-date-format");
  if (v5)
  {
    v6 = v5;
    v7 = off_80000;
  }

  else
  {
    v8 = sub_4294C(format, qword_A35E8, "group-duration-format");
    if (!v8)
    {
      return 1;
    }

    v6 = v8;
    v7 = off_80008;
  }

  v9 = [objc_alloc(*v7) initWithFormatString:v6];
  CFRelease(v6);
  if (v9)
  {
    mFormat = self->mFormat;
    if (mFormat)
    {
      CFRelease(mFormat);
      self->mFormat = v9;
    }

    else
    {
      CFRelease(v9);
    }
  }

  return 1;
}

- (int)readAttributes:(_xmlTextReader *)attributes
{
  v5 = sub_42340(attributes, qword_A35E8, "group-formula-value-valid", 0);
  self->mHasValidFormulaValue = v5;
  if (v5)
  {
    self->mFormulaValue = sub_4294C(attributes, qword_A35E8, "group-formula-string");
  }

  return 1;
}

@end