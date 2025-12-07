@interface AFUpdateAlarmResponse
- (AFUpdateAlarmResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setAlarmIdentifier:(id)identifier;
@end

@implementation AFUpdateAlarmResponse

- (AFUpdateAlarmResponse)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = AFUpdateAlarmResponse;
  v5 = [(AFSiriResponse *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_alarmIdentifiers"];
    alarmIdentifiers = v5->_alarmIdentifiers;
    v5->_alarmIdentifiers = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AFUpdateAlarmResponse;
  coderCopy = coder;
  [(AFSiriResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_alarmIdentifiers forKey:{@"_alarmIdentifiers", v5.receiver, v5.super_class}];
}

- (void)setAlarmIdentifier:(id)identifier
{
  v7[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    v7[0] = identifierCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [(AFUpdateAlarmResponse *)self setAlarmIdentifiers:v6];
  }

  else
  {
    [(AFUpdateAlarmResponse *)self setAlarmIdentifiers:0];
  }
}

@end