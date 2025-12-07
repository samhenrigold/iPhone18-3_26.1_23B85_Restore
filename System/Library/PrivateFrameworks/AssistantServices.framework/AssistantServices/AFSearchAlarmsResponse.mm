@interface AFSearchAlarmsResponse
- (AFSearchAlarmsResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSearchAlarmsResponse

- (AFSearchAlarmsResponse)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = AFSearchAlarmsResponse;
  v5 = [(AFSiriResponse *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Results"];
    results = v5->_results;
    v5->_results = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AFSearchAlarmsResponse;
  coderCopy = coder;
  [(AFSiriResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_results forKey:{@"Results", v5.receiver, v5.super_class}];
}

@end