@interface WFWorkflowFileDescriptor
- (WFWorkflowFileDescriptor)initWithCoder:(id)coder;
- (WFWorkflowFileDescriptor)initWithFile:(id)file name:(id)name sourceAppIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWorkflowFileDescriptor

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  file = [(WFWorkflowFileDescriptor *)self file];
  [coderCopy encodeObject:file forKey:@"file"];

  name = [(WFWorkflowFileDescriptor *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  sourceAppIdentifier = [(WFWorkflowFileDescriptor *)self sourceAppIdentifier];
  [coderCopy encodeObject:sourceAppIdentifier forKey:@"sourceAppIdentifier"];
}

- (WFWorkflowFileDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WFWorkflowFileDescriptor;
  v5 = [(WFWorkflowFileDescriptor *)&v14 init];
  if (v5 && ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"file"], v6 = objc_claimAutoreleasedReturnValue(), file = v5->_file, v5->_file = v6, file, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"name"), v8 = objc_claimAutoreleasedReturnValue(), name = v5->_name, v5->_name = v8, name, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"sourceAppIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), sourceAppIdentifier = v5->_sourceAppIdentifier, v5->_sourceAppIdentifier = v10, sourceAppIdentifier, v5->_file) && v5->_name)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (WFWorkflowFileDescriptor)initWithFile:(id)file name:(id)name sourceAppIdentifier:(id)identifier
{
  fileCopy = file;
  nameCopy = name;
  identifierCopy = identifier;
  if (fileCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowFile.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"file"}];

    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFWorkflowFile.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"name"}];

LABEL_3:
  v23.receiver = self;
  v23.super_class = WFWorkflowFileDescriptor;
  v13 = [(WFWorkflowFileDescriptor *)&v23 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_file, file);
    v15 = [nameCopy copy];
    name = v14->_name;
    v14->_name = v15;

    v17 = [identifierCopy copy];
    sourceAppIdentifier = v14->_sourceAppIdentifier;
    v14->_sourceAppIdentifier = v17;

    v19 = v14;
  }

  return v14;
}

@end