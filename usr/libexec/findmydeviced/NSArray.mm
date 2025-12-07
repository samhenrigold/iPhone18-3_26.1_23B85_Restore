@interface NSArray
- (BOOL)encodeWithFMDCoder:(id)coder error:(id *)error;
- (NSArray)initWithFMDCoder:(id)coder error:(id *)error;
@end

@implementation NSArray

- (BOOL)encodeWithFMDCoder:(id)coder error:(id *)error
{
  coderCopy = coder;
  objectType = [objc_opt_class() objectType];
  v17 = 0;
  [coderCopy encodeObjects:self forKey:objectType error:&v17];
  v8 = v17;

  objectType2 = [objc_opt_class() objectType];
  objectTypeKey = [objc_opt_class() objectTypeKey];
  v16 = v8;
  [coderCopy encodeObject:objectType2 forKey:objectTypeKey error:&v16];

  v11 = v16;
  if (v11)
  {
    v13 = sub_10017DAFC(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022570C(v11, v13);
    }

    if (error)
    {
      v14 = v11;
      *error = v11;
    }
  }

  return v11 == 0;
}

- (NSArray)initWithFMDCoder:(id)coder error:(id *)error
{
  coderCopy = coder;
  v5 = objc_opt_new();
  for (i = 0; ; ++i)
  {
    v7 = [NSSet setWithObject:&OBJC_PROTOCOL___FMDCodable];
    v8 = [NSString stringWithFormat:@"FM.object.%ld", i];
    v20 = 0;
    v9 = [coderCopy decodeObjectOfProtocols:v7 forKey:v8 error:&v20];
    v10 = v20;

    if (v10 || v9 == 0)
    {
      break;
    }

    [v5 addObject:v9];
  }

  if (v10)
  {
    v13 = sub_10017DAFC(v12);
    selfCopy = self;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100225784(v10, v13);
    }

    if (error)
    {
      v15 = v10;
      v16 = 0;
      *error = v10;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    selfCopy = [(NSArray *)self initWithArray:v5];
    v16 = selfCopy;
  }

  return v16;
}

@end