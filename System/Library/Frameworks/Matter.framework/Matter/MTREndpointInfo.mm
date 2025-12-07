@interface MTREndpointInfo
- (BOOL)isEqual:(id)equal;
- (MTREndpointInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTREndpointInfo

- (MTREndpointInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MTREndpointInfo;
  v5 = [(MTREndpointInfo *)&v14 init];
  v5->_endpointID = [coderCopy decodeIntegerForKey:@"id"];
  v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"dt"];
  deviceTypes = v5->_deviceTypes;
  v5->_deviceTypes = v6;

  if (v5->_deviceTypes && ([coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"pl"], v8 = objc_claimAutoreleasedReturnValue(), partsList = v5->_partsList, v5->_partsList = v8, partsList, v5->_partsList) && (objc_msgSend(coderCopy, "decodeArrayOfObjectsOfClass:forKey:", objc_opt_class(), @"ch"), v10 = objc_claimAutoreleasedReturnValue(), children = v5->_children, v5->_children = v10, children, v5->_children))
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_endpointID forKey:@"id"];
  [coderCopy encodeObject:self->_deviceTypes forKey:@"dt"];
  [coderCopy encodeObject:self->_partsList forKey:@"pl"];
  [coderCopy encodeObject:self->_children forKey:@"ch"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    if (self->_endpointID == *(v7 + 4) && ([(NSArray *)self->_deviceTypes isEqual:v7[2]]& 1) != 0)
    {
      v6 = [(NSArray *)self->_partsList isEqual:v7[3]];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end