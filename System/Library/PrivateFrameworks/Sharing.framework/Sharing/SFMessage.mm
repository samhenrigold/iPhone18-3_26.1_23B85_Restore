@interface SFMessage
- (SFMessage)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
@end

@implementation SFMessage

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bodyData = self->_bodyData;
  v10 = coderCopy;
  if (bodyData)
  {
    [coderCopy encodeObject:bodyData forKey:@"bodyData"];
    coderCopy = v10;
  }

  deviceIDs = self->_deviceIDs;
  if (deviceIDs)
  {
    [v10 encodeObject:deviceIDs forKey:@"deviceIDs"];
    coderCopy = v10;
  }

  if (self->_expectsResponse)
  {
    [v10 encodeBool:1 forKey:@"expectsResponse"];
    coderCopy = v10;
  }

  headerFields = self->_headerFields;
  if (headerFields)
  {
    [v10 encodeObject:headerFields forKey:@"headerFields"];
    coderCopy = v10;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v10 encodeObject:identifier forKey:@"identifier"];
    coderCopy = v10;
  }

  peerDevice = self->_peerDevice;
  if (peerDevice)
  {
    [v10 encodeObject:peerDevice forKey:@"peerDevice"];
    coderCopy = v10;
  }
}

- (id)description
{
  v13 = 0;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSAppendPrintF(&v13, "%@ %{ptr}", v4, self);
  v5 = v13;

  identifier = self->_identifier;
  if (identifier)
  {
    v12 = v5;
    NSAppendPrintF(&v12, ", ID %@", identifier);
    v7 = v12;

    v5 = v7;
  }

  v11 = v5;
  NSAppendPrintF(&v11, ", %ld fields, %ld body bytes", [(NSDictionary *)self->_headerFields count], [(NSData *)self->_bodyData length]);
  v8 = v11;
  v9 = v11;

  return v8;
}

- (void)invalidate
{
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;
}

- (SFMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = SFMessage;
  v5 = [(SFMessage *)&v37 init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"bodyData"])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bodyData"];
      bodyData = v5->_bodyData;
      v5->_bodyData = v6;
    }

    v8 = [coderCopy containsValueForKey:@"deviceIDs"];
    v9 = MEMORY[0x1E695D940];
    if (v8)
    {
      v10 = MEMORY[0x1E695DFD8];
      v11 = objc_opt_class();
      v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
      v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"deviceIDs"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = MEMORY[0x1E695DF30];
        v15 = *v9;
        v16 = _NSMethodExceptionProem();
        [v14 raise:v15 format:{@"%@: non-set value for key %@ : %@", v16, @"deviceIDs", v13}];
      }

      objc_storeStrong(&v5->_deviceIDs, v13);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    if ([coderCopy containsValueForKey:@"expectsResponse"])
    {
      v5->_expectsResponse = [coderCopy decodeBoolForKey:@"expectsResponse"];
    }

    if ([coderCopy containsValueForKey:@"headerFields"])
    {
      v36 = MEMORY[0x1E695DFD8];
      v35 = objc_opt_class();
      v34 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = objc_opt_class();
      v19 = v12;
      v20 = objc_opt_class();
      v21 = objc_opt_class();
      v22 = objc_opt_class();
      v23 = [v36 setWithObjects:{v35, v34, v17, v18, v20, v21, v22, objc_opt_class(), 0}];

      v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"headerFields"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = MEMORY[0x1E695DF30];
        v26 = *MEMORY[0x1E695D940];
        v27 = _NSMethodExceptionProem();
        [v25 raise:v26 format:{@"%@: non-dictionary value for key %@ : %@", v27, @"headerFields", v24}];
      }

      objc_storeStrong(&v5->_headerFields, v24);
      v12 = v23;
    }

    else
    {
      v24 = v13;
    }

    if ([coderCopy containsValueForKey:@"identifier"])
    {
      v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
      identifier = v5->_identifier;
      v5->_identifier = v28;
    }

    if ([coderCopy containsValueForKey:@"peerDevice"])
    {
      v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerDevice"];
      peerDevice = v5->_peerDevice;
      v5->_peerDevice = v30;
    }

    v32 = v5;
  }

  return v5;
}

@end