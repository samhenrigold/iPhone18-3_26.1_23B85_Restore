@interface _HKSampleCountQueryServerConfiguration
- (_HKSampleCountQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKSampleCountQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _HKSampleCountQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setQueryDescriptors:self->_queryDescriptors];
  return v4;
}

- (_HKSampleCountQueryServerConfiguration)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _HKSampleCountQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"queryDescriptors"];
    queryDescriptors = v5->_queryDescriptors;
    v5->_queryDescriptors = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKSampleCountQueryServerConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_queryDescriptors forKey:{@"queryDescriptors", v5.receiver, v5.super_class}];
}

@end