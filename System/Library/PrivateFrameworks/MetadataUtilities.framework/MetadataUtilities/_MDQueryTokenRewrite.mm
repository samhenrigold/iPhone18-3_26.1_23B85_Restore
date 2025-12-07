@interface _MDQueryTokenRewrite
- (_MDQueryTokenRewrite)initWithOriginalToken:(id)token variations:(id)variations;
- (void)dealloc;
- (void)setOriginalToken:(id)token;
@end

@implementation _MDQueryTokenRewrite

- (_MDQueryTokenRewrite)initWithOriginalToken:(id)token variations:(id)variations
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _MDQueryTokenRewrite;
  v6 = [(_MDQueryTokenRewrite *)&v8 init];
  if (v6)
  {
    v6->_originalToken = [token copy];
    v6->_variations = [variations copy];
  }

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _MDQueryTokenRewrite;
  [(_MDQueryTokenRewrite *)&v3 dealloc];
}

- (void)setOriginalToken:(id)token
{

  objc_setProperty_nonatomic_copy(self, a2, token, 8);
}

@end