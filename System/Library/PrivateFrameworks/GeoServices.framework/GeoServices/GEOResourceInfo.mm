@interface GEOResourceInfo
- (int)validationMethod;
@end

@implementation GEOResourceInfo

- (int)validationMethod
{
  result = [(GEOResource *)self->_resource hasValidationMethod];
  if (result)
  {
    resource = self->_resource;

    return [(GEOResource *)resource validationMethod];
  }

  return result;
}

@end