@interface HKObjectAuthorizationPromptSessionMetadata
- (HKObjectAuthorizationPromptSessionMetadata)initWithCoder:(id)coder;
- (HKObjectAuthorizationPromptSessionMetadata)initWithExpectedObjectType:(id)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKObjectAuthorizationPromptSessionMetadata

- (HKObjectAuthorizationPromptSessionMetadata)initWithExpectedObjectType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = HKObjectAuthorizationPromptSessionMetadata;
  v6 = [(HKObjectAuthorizationPromptSessionMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_expectedObjectType, type);
  }

  return v7;
}

- (HKObjectAuthorizationPromptSessionMetadata)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = HKObjectAuthorizationPromptSessionMetadata;
  v5 = [(HKObjectAuthorizationPromptSessionMetadata *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ExpectedObjectType"];
    expectedObjectType = v5->_expectedObjectType;
    v5->_expectedObjectType = v6;

    v8 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"RecordTypes"];
    recordTypes = v5->_recordTypes;
    v5->_recordTypes = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  expectedObjectType = self->_expectedObjectType;
  coderCopy = coder;
  [coderCopy encodeObject:expectedObjectType forKey:@"ExpectedObjectType"];
  [coderCopy encodeObject:self->_recordTypes forKey:@"RecordTypes"];
}

@end