@interface _UIMainMenuCommandInvocationResponse
+ (id)_response;
- (BOOL)isEqual:(id)equal;
- (_UIMainMenuCommandInvocationResponse)initWithCoder:(id)coder;
- (id)description;
@end

@implementation _UIMainMenuCommandInvocationResponse

+ (id)_response
{
  v2 = objc_opt_new();

  return v2;
}

- (_UIMainMenuCommandInvocationResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIMainMenuCommandInvocationResponse *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"SessionResponse"];
    sessionResponse = v5->_sessionResponse;
    v5->_sessionResponse = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    isEqual = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      sessionResponse = v7->_sessionResponse;
      v9 = self->_sessionResponse;
      v10 = sessionResponse;
      v11 = v10;
      if (v9 == v10)
      {
        isEqual = 1;
      }

      else
      {
        isEqual = 0;
        if (v9 && v10)
        {
          isEqual = objc_msgSend_isEqual_(v9);
        }
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_sessionResponse withName:@"sessionResponse" skipIfNil:1];
  build = [v3 build];

  return build;
}

@end