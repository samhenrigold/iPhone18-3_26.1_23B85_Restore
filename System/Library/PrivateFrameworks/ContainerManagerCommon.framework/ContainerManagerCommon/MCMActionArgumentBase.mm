@interface MCMActionArgumentBase
- (MCMActionArgumentBase)initWithString:(id)string;
@end

@implementation MCMActionArgumentBase

- (MCMActionArgumentBase)initWithString:(id)string
{
  v10 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = MCMActionArgumentBase;
  v6 = [(MCMActionArgumentBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_string, string);
  }

  return v7;
}

@end