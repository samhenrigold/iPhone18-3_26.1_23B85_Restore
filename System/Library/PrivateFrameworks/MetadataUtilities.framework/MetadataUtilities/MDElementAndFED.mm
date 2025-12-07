@interface MDElementAndFED
- (MDElementAndFED)initWithElement:(id)element fed:(id)fed;
- (void)dealloc;
@end

@implementation MDElementAndFED

- (MDElementAndFED)initWithElement:(id)element fed:(id)fed
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MDElementAndFED;
  v6 = [(MDElementAndFED *)&v8 init];
  if (v6)
  {
    v6->_element = element;
    v6->_fed = fed;
  }

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = MDElementAndFED;
  [(MDElementAndFED *)&v3 dealloc];
}

@end