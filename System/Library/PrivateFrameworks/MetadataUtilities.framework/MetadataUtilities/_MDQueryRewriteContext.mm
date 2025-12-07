@interface _MDQueryRewriteContext
- (_MDQueryRewriteContext)initWithRewrittenTokens:(id)tokens;
- (void)dealloc;
- (void)setTokenRewrites:(id)rewrites;
@end

@implementation _MDQueryRewriteContext

- (_MDQueryRewriteContext)initWithRewrittenTokens:(id)tokens
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = _MDQueryRewriteContext;
  v4 = [(_MDQueryRewriteContext *)&v6 init];
  if (v4)
  {
    v4->_tokenRewrites = [tokens copy];
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _MDQueryRewriteContext;
  [(_MDQueryRewriteContext *)&v3 dealloc];
}

- (void)setTokenRewrites:(id)rewrites
{

  objc_setProperty_nonatomic_copy(self, a2, rewrites, 8);
}

@end