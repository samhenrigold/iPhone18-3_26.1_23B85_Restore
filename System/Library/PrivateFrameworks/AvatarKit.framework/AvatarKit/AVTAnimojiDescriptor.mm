@interface AVTAnimojiDescriptor
- (AVTAnimojiDescriptor)initWithAnimoji:(id)animoji;
- (AVTAnimojiDescriptor)initWithCoder:(id)coder;
- (AVTAnimojiDescriptor)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (AVTAnimojiDescriptor)initWithName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVTAnimojiDescriptor

- (AVTAnimojiDescriptor)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = AVTAnimojiDescriptor;
  v5 = [(AVTAnimojiDescriptor *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (AVTAnimojiDescriptor)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  objc_opt_class();
  v6 = [representationCopy avt_objectForKey:? ofClass:? didFail:? error:?];
  v7 = v6;
  if (v6)
  {
    self = [(AVTAnimojiDescriptor *)self initWithName:?];
    selfCopy = self;
  }

  else
  {
    v9 = avt_default_log(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = representationCopy;
      _os_log_impl(&dword_1BB472000, v9, OS_LOG_TYPE_DEFAULT, "can't unarchive animoji name from: %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (AVTAnimojiDescriptor)initWithAnimoji:(id)animoji
{
  name = [animoji name];
  v5 = [(AVTAnimojiDescriptor *)self initWithName:?];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = AVTAnimojiDescriptor;
  coderCopy = coder;
  [(AVTAvatarDescriptor *)&v4 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:v4.receiver forKey:v4.super_class];
}

- (AVTAnimojiDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AVTAnimojiDescriptor;
  v5 = [(AVTAvatarDescriptor *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    objc_opt_class();
    v6 = [coderCopy decodeObjectOfClass:? forKey:?];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

@end