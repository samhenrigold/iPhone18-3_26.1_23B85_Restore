@interface AMSUIWebJSResponse
- (AMSUIWebJSResponse)initWithCoder:(id)coder;
- (AMSUIWebJSResponse)initWithRequest:(id)request duration:(double)duration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSUIWebJSResponse

- (AMSUIWebJSResponse)initWithRequest:(id)request duration:(double)duration
{
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = AMSUIWebJSResponse;
  v8 = [(AMSUIWebJSResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_duration = duration;
    objc_storeStrong(&v8->_originalRequest, request);
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  originalRequest = [(AMSUIWebJSResponse *)self originalRequest];
  [coderCopy encodeObject:originalRequest forKey:@"kCodingKeyRequest"];

  body = [(AMSUIWebJSResponse *)self body];
  [coderCopy encodeObject:body forKey:@"kCodingKeyBody"];

  [(AMSUIWebJSResponse *)self duration];
  [coderCopy encodeDouble:@"kCodingKeyDuration" forKey:?];
}

- (AMSUIWebJSResponse)initWithCoder:(id)coder
{
  v16[5] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = AMSUIWebJSResponse;
  v5 = [(AMSUIWebJSResponse *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v16[3] = objc_opt_class();
    v16[4] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:5];
    v8 = [v6 setWithArray:v7];

    [coderCopy decodeDoubleForKey:@"kCodingKeyDuration"];
    v5->_duration = v9;
    v10 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kCodingKeyBody"];
    body = v5->_body;
    v5->_body = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyRequest"];
    originalRequest = v5->_originalRequest;
    v5->_originalRequest = v12;
  }

  return v5;
}

@end