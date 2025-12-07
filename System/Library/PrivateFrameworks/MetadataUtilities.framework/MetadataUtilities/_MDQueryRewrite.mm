@interface _MDQueryRewrite
- (_MDQueryRewrite)initWithSearchQueryString:(id)string searchQueryContext:(id)context score:(float)score;
- (void)dealloc;
- (void)setQueryString:(id)string;
- (void)setSearchQueryContext:(id)context;
@end

@implementation _MDQueryRewrite

- (_MDQueryRewrite)initWithSearchQueryString:(id)string searchQueryContext:(id)context score:(float)score
{
  if (self)
  {
    self->_queryString = [string copy];
    self->_searchQueryContext = context;
    contextCopy = context;
    self->_score = score;
  }

  return self;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _MDQueryRewrite;
  [(_MDQueryRewrite *)&v3 dealloc];
}

- (void)setQueryString:(id)string
{

  objc_setProperty_nonatomic_copy(self, a2, string, 16);
}

- (void)setSearchQueryContext:(id)context
{

  objc_setProperty_nonatomic(self, a2, context, 24);
}

@end