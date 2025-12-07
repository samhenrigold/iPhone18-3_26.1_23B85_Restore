@interface GEOServiceRequester
- (NSArray)networkOperationClasses;
@end

@implementation GEOServiceRequester

- (NSArray)networkOperationClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_networkOperationClasses count])
  {
    v3 = self->_networkOperationClasses;
  }

  else
  {
    v5[0] = objc_opt_class();
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  return v3;
}

@end