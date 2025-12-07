@interface FSTaskDescription
+ (FSTaskDescription)taskDescriptionWithID:(id)d state:(unsigned __int8)state purpose:(id)purpose error:(id)error bundleID:(id)iD extensionID:(id)extensionID resource:(id)resource;
- (FSTaskDescription)initWithCoder:(id)coder;
- (FSTaskDescription)initWithID:(id)d state:(unsigned __int8)state purpose:(id)purpose error:(id)error bundleID:(id)iD extensionID:(id)extensionID resource:(id)resource;
- (id)updatedDescriptionInState:(unsigned __int8)state error:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FSTaskDescription

- (FSTaskDescription)initWithID:(id)d state:(unsigned __int8)state purpose:(id)purpose error:(id)error bundleID:(id)iD extensionID:(id)extensionID resource:(id)resource
{
  dCopy = d;
  purposeCopy = purpose;
  errorCopy = error;
  iDCopy = iD;
  extensionIDCopy = extensionID;
  resourceCopy = resource;
  v33.receiver = self;
  v33.super_class = FSTaskDescription;
  v21 = [(FSTaskDescription *)&v33 init];
  if (v21)
  {
    v22 = [dCopy copy];
    taskID = v21->_taskID;
    v21->_taskID = v22;

    v21->_taskState = state;
    objc_storeStrong(&v21->_taskPurpose, purpose);
    if (errorCopy)
    {
      v24 = [errorCopy copy];
    }

    else
    {
      v24 = 0;
    }

    taskErrorState = v21->_taskErrorState;
    v21->_taskErrorState = v24;

    v26 = [iDCopy copy];
    taskBundleID = v21->_taskBundleID;
    v21->_taskBundleID = v26;

    if (extensionIDCopy)
    {
      v28 = [extensionIDCopy copy];
    }

    else
    {
      v28 = 0;
    }

    taskExtensionInstanceID = v21->_taskExtensionInstanceID;
    v21->_taskExtensionInstanceID = v28;

    makeProxy = [resourceCopy makeProxy];
    taskResource = v21->_taskResource;
    v21->_taskResource = makeProxy;

    v21->_terminateExtensionWhenFinished = 0;
  }

  return v21;
}

+ (FSTaskDescription)taskDescriptionWithID:(id)d state:(unsigned __int8)state purpose:(id)purpose error:(id)error bundleID:(id)iD extensionID:(id)extensionID resource:(id)resource
{
  stateCopy = state;
  resourceCopy = resource;
  extensionIDCopy = extensionID;
  iDCopy = iD;
  errorCopy = error;
  purposeCopy = purpose;
  dCopy = d;
  v22 = [[self alloc] initWithID:dCopy state:stateCopy purpose:purposeCopy error:errorCopy bundleID:iDCopy extensionID:extensionIDCopy resource:resourceCopy];

  return v22;
}

- (id)updatedDescriptionInState:(unsigned __int8)state error:(id)error
{
  stateCopy = state;
  errorCopy = error;
  v7 = [objc_opt_class() taskDescriptionWithID:self->_taskID state:stateCopy purpose:self->_taskPurpose error:errorCopy bundleID:self->_taskBundleID extensionID:self->_taskExtensionInstanceID resource:self->_taskResource];

  [v7 setTerminateExtensionWhenFinished:self->_terminateExtensionWhenFinished];
  taskReferenceHolder = [(FSTaskDescription *)self taskReferenceHolder];

  if (stateCopy != 3 && taskReferenceHolder)
  {
    taskReferenceHolder2 = [(FSTaskDescription *)self taskReferenceHolder];
    [v7 setTaskReferenceHolder:taskReferenceHolder2];
  }

  taskInitiatorID = [(FSTaskDescription *)self taskInitiatorID];
  [v7 setTaskInitiatorID:taskInitiatorID];

  taskSigningID = [(FSTaskDescription *)self taskSigningID];
  [v7 setTaskSigningID:taskSigningID];

  [v7 setTaskHasCancellationHandler:{-[FSTaskDescription taskHasCancellationHandler](self, "taskHasCancellationHandler")}];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_taskID forKey:@"FSTask.ID"];
  [coderCopy encodeInt:self->_taskState forKey:@"FSTask.state"];
  [coderCopy encodeObject:self->_taskBundleID forKey:@"FSTask.bundle"];
  [coderCopy encodeObject:self->_taskPurpose forKey:@"FSTask.purpose"];
  taskErrorState = self->_taskErrorState;
  if (taskErrorState)
  {
    [coderCopy encodeObject:taskErrorState forKey:@"FSTask.error"];
  }

  taskExtensionInstanceID = self->_taskExtensionInstanceID;
  if (taskExtensionInstanceID)
  {
    [coderCopy encodeObject:taskExtensionInstanceID forKey:@"FSTask.ext.ID"];
  }

  taskResource = self->_taskResource;
  v7 = coderCopy;
  if (taskResource)
  {
    [coderCopy encodeObject:taskResource forKey:@"FSTask.resource"];
    v7 = coderCopy;
  }

  [v7 encodeBool:self->_taskHasCancellationHandler forKey:@"FSTask.canc"];
}

- (FSTaskDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSTask.ID"];
  taskID = self->_taskID;
  self->_taskID = v5;

  self->_taskState = [coderCopy decodeIntForKey:@"FSTask.state"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSTask.bundle"];
  taskBundleID = self->_taskBundleID;
  self->_taskBundleID = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSTask.purpose"];
  taskPurpose = self->_taskPurpose;
  self->_taskPurpose = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSTask.error"];
  taskErrorState = self->_taskErrorState;
  self->_taskErrorState = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSTask.ext.ID"];
  taskExtensionInstanceID = self->_taskExtensionInstanceID;
  self->_taskExtensionInstanceID = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSTask.resource"];
  taskResource = self->_taskResource;
  self->_taskResource = v15;

  v17 = [coderCopy decodeBoolForKey:@"FSTask.canc"];
  self->_taskHasCancellationHandler = v17;
  return self;
}

@end