@interface PMCredentialRequestPaneHeader
- (PMCredentialRequestPaneHeader)initWithView:(id)view;
- (void)updateWithConfiguration:(id)configuration;
@end

@implementation PMCredentialRequestPaneHeader

- (void)updateWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_21C815F84(configurationCopy);
}

- (PMCredentialRequestPaneHeader)initWithView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end