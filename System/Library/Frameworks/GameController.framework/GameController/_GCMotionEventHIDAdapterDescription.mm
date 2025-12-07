@interface _GCMotionEventHIDAdapterDescription
- (_GCMotionEventHIDAdapterDescription)initWithCoder:(id)coder;
- (_GCMotionEventHIDAdapterDescription)initWithSource:(id)source service:(id)service;
- (id)materializeWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _GCMotionEventHIDAdapterDescription

- (_GCMotionEventHIDAdapterDescription)initWithSource:(id)source service:(id)service
{
  sourceCopy = source;
  serviceCopy = service;
  v12.receiver = self;
  v12.super_class = _GCMotionEventHIDAdapterDescription;
  v9 = [(_GCMotionEventHIDAdapterDescription *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceDescription, source);
    objc_storeStrong(&v10->_serviceDescription, service);
  }

  return v10;
}

- (_GCMotionEventHIDAdapterDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _GCMotionEventHIDAdapterDescription;
  v5 = [(_GCMotionEventHIDAdapterDescription *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v7 = _GCHIDEventSourceDescription_Classes(v5);
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"source"];
    sourceDescription = v6->_sourceDescription;
    v6->_sourceDescription = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"service"];
    serviceDescription = v6->_serviceDescription;
    v6->_serviceDescription = v10;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  serviceDescription = self->_serviceDescription;
  coderCopy = coder;
  [coderCopy encodeObject:serviceDescription forKey:@"service"];
  [coderCopy encodeObject:self->_sourceDescription forKey:@"source"];
}

- (id)materializeWithContext:(id)context
{
  contextCopy = context;
  materializedObject = self->_materializedObject;
  if (materializedObject)
  {
    goto LABEL_2;
  }

  v7 = [(_GCHIDEventSourceDescription *)self->_sourceDescription materializeWithContext:contextCopy];
  if (v7)
  {
    v8 = v7;
    v9 = [(_GCCControllerHIDServiceInfoDescription *)self->_serviceDescription materializeWithContext:contextCopy];
    v10 = v9;
    if (!self->_serviceDescription || v9)
    {
      v12 = [[_GCMotionEventHIDAdapter alloc] initWithSource:v8 service:v9];
      v13 = self->_materializedObject;
      self->_materializedObject = v12;

      materializedObject = self->_materializedObject;
LABEL_2:
      v6 = materializedObject;
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

@end