@interface NEAOVPNException
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)isLimitedToUDP;
- (NEAOVPNException)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEAOVPNException

- (BOOL)isLimitedToUDP
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  limitToProtocols = [(NEAOVPNException *)self limitToProtocols];
  v3 = [limitToProtocols countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(limitToProtocols);
        }

        if (objc_msgSend_isEqualToString_(*(*(&v9 + 1) + 8 * i)))
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v4 = [limitToProtocols countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  serviceName = [(NEAOVPNException *)self serviceName];
  [v7 appendPrettyObject:serviceName withName:@"service-name" andIndent:v5 options:options];

  bundleIdentifier = [(NEAOVPNException *)self bundleIdentifier];
  [v7 appendPrettyObject:bundleIdentifier withName:@"bundle-identifier" andIndent:v5 options:options];

  limitToProtocols = [(NEAOVPNException *)self limitToProtocols];
  [v7 appendPrettyObject:limitToProtocols withName:@"limit-to-protocols" andIndent:v5 options:options];

  [v7 appendPrettyInt:-[NEAOVPNException action](self withName:"action") andIndent:@"action" options:{v5, options}];

  return v7;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  errorsCopy = errors;
  serviceName = [(NEAOVPNException *)self serviceName];

  if (!serviceName)
  {
    goto LABEL_8;
  }

  serviceName2 = [(NEAOVPNException *)self serviceName];
  if (objc_msgSend_isEqualToString_(serviceName2))
  {
    goto LABEL_7;
  }

  serviceName3 = [(NEAOVPNException *)self serviceName];
  if (objc_msgSend_isEqualToString_(serviceName3))
  {
LABEL_6:

LABEL_7:
    goto LABEL_8;
  }

  serviceName4 = [(NEAOVPNException *)self serviceName];
  if (objc_msgSend_isEqualToString_(serviceName4))
  {

    goto LABEL_6;
  }

  serviceName5 = [(NEAOVPNException *)self serviceName];
  isEqualToString = objc_msgSend_isEqualToString_(serviceName5);

  if ((isEqualToString & 1) == 0)
  {
    [NEConfiguration addError:errorsCopy toList:?];
    v9 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v9 = 1;
LABEL_9:
  if ([(NEAOVPNException *)self action]!= 1 && [(NEAOVPNException *)self action]!= 2)
  {
    [NEConfiguration addError:errorsCopy toList:?];
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NEAOVPNException allocWithZone:?]];
  serviceName = [(NEAOVPNException *)self serviceName];
  [(NEAOVPNException *)v4 setServiceName:serviceName];

  bundleIdentifier = [(NEAOVPNException *)self bundleIdentifier];
  [(NEAOVPNException *)v4 setBundleIdentifier:bundleIdentifier];

  limitToProtocols = [(NEAOVPNException *)self limitToProtocols];
  [(NEAOVPNException *)v4 setLimitToProtocols:limitToProtocols];

  [(NEAOVPNException *)v4 setAction:[(NEAOVPNException *)self action]];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serviceName = [(NEAOVPNException *)self serviceName];
  [coderCopy encodeObject:serviceName forKey:@"ServiceName"];

  bundleIdentifier = [(NEAOVPNException *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"BundleIdentifier"];

  limitToProtocols = [(NEAOVPNException *)self limitToProtocols];
  [coderCopy encodeObject:limitToProtocols forKey:@"LimitToProtocols"];

  [coderCopy encodeInt32:-[NEAOVPNException action](self forKey:{"action"), @"Action"}];
}

- (NEAOVPNException)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = NEAOVPNException;
  v5 = [(NEAOVPNException *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ServiceName"];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"LimitToProtocols"];
    limitToProtocols = v5->_limitToProtocols;
    v5->_limitToProtocols = v13;

    v5->_action = [coderCopy decodeInt32ForKey:@"Action"];
  }

  return v5;
}

@end