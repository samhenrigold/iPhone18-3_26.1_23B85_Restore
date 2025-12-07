@interface UNSecurityScopedURL
- (UNSecurityScopedURL)initWithCoder:(id)coder;
- (id)_issueSandboxExtension;
- (id)initFileURLWithPath:(id)path sandboxExtensionClass:(id)class;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNSecurityScopedURL

- (id)initFileURLWithPath:(id)path sandboxExtensionClass:(id)class
{
  classCopy = class;
  v11.receiver = self;
  v11.super_class = UNSecurityScopedURL;
  v7 = [(UNSecurityScopedURL *)&v11 initFileURLWithPath:path];
  if (v7)
  {
    v8 = [classCopy copy];
    v9 = v7[5];
    v7[5] = v8;
  }

  return v7;
}

- (id)_issueSandboxExtension
{
  if ([(NSString *)self->_sandboxExtensionClass length])
  {
    path = [(UNSecurityScopedURL *)self path];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [defaultManager fileExistsAtPath:path];

    if (v5)
    {
      v6 = [(NSString *)self->_sandboxExtensionClass cStringUsingEncoding:1];
      fileSystemRepresentation = [(UNSecurityScopedURL *)self fileSystemRepresentation];
      if (v6 && fileSystemRepresentation != 0)
      {
        v9 = sandbox_extension_issue_file();
        v10 = v9;
        if (!v9)
        {
LABEL_10:

          goto LABEL_12;
        }

        v11 = strnlen(v9, 0x400uLL);
        if (v11 <= 0x3FF)
        {
          v10 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v10 length:v11 + 1];
          goto LABEL_10;
        }
      }
    }

    v10 = 0;
    goto LABEL_10;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = UNSecurityScopedURL;
  [(UNSecurityScopedURL *)&v6 encodeWithCoder:coderCopy];
  _issueSandboxExtension = [(UNSecurityScopedURL *)self _issueSandboxExtension];
  if (!_issueSandboxExtension)
  {
    _issueSandboxExtension = MEMORY[0x1B8CC19A0](self);
  }

  [coderCopy encodeObject:_issueSandboxExtension forKey:@"sandboxExtension"];
}

- (UNSecurityScopedURL)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = UNSecurityScopedURL;
  v5 = [(UNSecurityScopedURL *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sandboxExtension"];
    MEMORY[0x1B8CC1990](v5, v6);
  }

  return v5;
}

@end