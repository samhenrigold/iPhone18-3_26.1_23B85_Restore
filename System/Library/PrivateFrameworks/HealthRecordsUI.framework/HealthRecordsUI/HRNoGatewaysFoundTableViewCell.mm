@interface HRNoGatewaysFoundTableViewCell
+ (NSString)defaultReuseIdentifier;
- (HRNoGatewaysFoundTableViewCell)initWithCoder:(id)coder;
- (HRNoGatewaysFoundTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation HRNoGatewaysFoundTableViewCell

+ (NSString)defaultReuseIdentifier
{
  v2 = sub_1D139012C();

  return v2;
}

- (HRNoGatewaysFoundTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_1D139016C();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return sub_1D115FF4C(style, identifier, v7, v4);
}

- (HRNoGatewaysFoundTableViewCell)initWithCoder:(id)coder
{
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

@end