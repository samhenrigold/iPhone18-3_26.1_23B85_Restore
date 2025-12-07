@interface TMLCloneContext
- (TMLCloneContext)initWithMetaContext:(id)context;
@end

@implementation TMLCloneContext

- (TMLCloneContext)initWithMetaContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TMLCloneContext;
  v6 = [(TMLCloneContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metaContext, context);
  }

  return v7;
}

@end