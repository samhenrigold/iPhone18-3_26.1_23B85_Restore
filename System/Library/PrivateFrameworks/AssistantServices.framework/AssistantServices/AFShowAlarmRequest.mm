@interface AFShowAlarmRequest
- (AFShowAlarmRequest)initWithCoder:(id)coder;
- (id)createResponse;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFShowAlarmRequest

- (AFShowAlarmRequest)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = AFShowAlarmRequest;
  v5 = [(AFSiriRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_alarms"];
    alarms = v5->_alarms;
    v5->_alarms = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AFShowAlarmRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_alarms forKey:{@"_alarms", v5.receiver, v5.super_class}];
}

- (id)createResponse
{
  v2 = [(AFSiriResponse *)[AFSiriRequestSucceededResponse alloc] _initWithRequest:self];

  return v2;
}

@end