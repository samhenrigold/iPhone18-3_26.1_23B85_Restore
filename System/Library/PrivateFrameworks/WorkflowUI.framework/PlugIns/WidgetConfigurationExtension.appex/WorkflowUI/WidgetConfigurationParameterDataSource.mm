@interface WidgetConfigurationParameterDataSource
- (void)action:(id)action parameterStateDidChangeForKey:(id)key;
- (void)parameterAttributesDidChange:(id)change;
@end

@implementation WidgetConfigurationParameterDataSource

- (void)action:(id)action parameterStateDidChangeForKey:(id)key
{
  v6 = sub_10001B8E4();
  actionCopy = action;
  selfCopy = self;
  sub_10000C118(actionCopy, v6);
}

- (void)parameterAttributesDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10000C5B8(changeCopy);
}

@end