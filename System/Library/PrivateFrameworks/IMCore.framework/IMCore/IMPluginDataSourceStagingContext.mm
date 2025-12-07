@interface IMPluginDataSourceStagingContext
+ (IMPluginDataSourceStagingContext)stagingContextWithIdentifier:(id)identifier isEmbeddedInTextView:(BOOL)view;
- (IMPluginDataSourceStagingContext)initWithTransientIdentifier:(id)identifier isEmbeddedInTextView:(BOOL)view;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMPluginDataSourceStagingContext

- (IMPluginDataSourceStagingContext)initWithTransientIdentifier:(id)identifier isEmbeddedInTextView:(BOOL)view
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = IMPluginDataSourceStagingContext;
  v8 = [(IMPluginDataSourceStagingContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_transientIdentifier, identifier);
    v9->_isEmbeddedInTextView = view;
  }

  return v9;
}

+ (IMPluginDataSourceStagingContext)stagingContextWithIdentifier:(id)identifier isEmbeddedInTextView:(BOOL)view
{
  viewCopy = view;
  identifierCopy = identifier;
  v6 = [[IMPluginDataSourceStagingContext alloc] initWithTransientIdentifier:identifierCopy isEmbeddedInTextView:viewCopy];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IMPluginDataSourceStagingContext alloc];
  transientIdentifier = [(IMPluginDataSourceStagingContext *)self transientIdentifier];
  v6 = [(IMPluginDataSourceStagingContext *)v4 initWithTransientIdentifier:transientIdentifier isEmbeddedInTextView:[(IMPluginDataSourceStagingContext *)self isEmbeddedInTextView]];

  return v6;
}

@end