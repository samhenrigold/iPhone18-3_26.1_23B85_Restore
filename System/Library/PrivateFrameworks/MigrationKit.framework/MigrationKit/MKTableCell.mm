@interface MKTableCell
+ (id)cellWithValue:(id)value formatter:(id)formatter columnSpan:(int)span alignment:(int64_t)alignment;
- (id)formattedValue;
@end

@implementation MKTableCell

+ (id)cellWithValue:(id)value formatter:(id)formatter columnSpan:(int)span alignment:(int64_t)alignment
{
  v7 = *&span;
  valueCopy = value;
  formatterCopy = formatter;
  v11 = objc_alloc_init(MKTableCell);
  v12 = v11;
  if (v11)
  {
    [(MKTableCell *)v11 setValue:valueCopy];
    [(MKTableCell *)v12 setFormatter:formatterCopy];
    [(MKTableCell *)v12 setColumnSpan:v7];
    [(MKTableCell *)v12 setAlignment:alignment];
  }

  return v12;
}

- (id)formattedValue
{
  formatter = [(MKTableCell *)self formatter];
  if (formatter)
  {
    formatter2 = [(MKTableCell *)self formatter];
    value = [(MKTableCell *)self value];
    v6 = [formatter2 stringForObjectValue:value];
  }

  else
  {
    formatter2 = [(MKTableCell *)self value];
    v6 = [formatter2 description];
  }

  return v6;
}

@end