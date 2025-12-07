@interface NSNull
- (BOOL)encodeWithFMDCoder:(id)coder error:(id *)error;
- (NSNull)initWithFMDCoder:(id)coder error:(id *)error;
@end

@implementation NSNull

- (BOOL)encodeWithFMDCoder:(id)coder error:(id *)error
{
  coderCopy = coder;
  v6 = +[NSNull null];
  v7 = +[NSNull objectType];
  v13 = 0;
  [coderCopy encodeObject:v6 forKey:v7 error:&v13];

  v8 = v13;
  if (v8)
  {
    v10 = sub_10017DAFC(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100227DB4(v8, v10);
    }

    if (error)
    {
      v11 = v8;
      *error = v8;
    }
  }

  return v8 == 0;
}

- (NSNull)initWithFMDCoder:(id)coder error:(id *)error
{
  coderCopy = coder;
  v7 = objc_opt_class();
  v8 = +[NSNull objectType];
  v17 = 0;
  v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8 error:&v17];

  v10 = v17;
  if (!v10)
  {
    if (v9)
    {
      self = [(NSNull *)self init];
      selfCopy = self;
      goto LABEL_9;
    }

LABEL_8:
    selfCopy = 0;
    goto LABEL_9;
  }

  v12 = sub_10017DAFC(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100227E2C(v9, v12);
  }

  if (!error)
  {
    goto LABEL_8;
  }

  v13 = v10;
  selfCopy = 0;
  *error = v10;
LABEL_9:
  v15 = selfCopy;

  return v15;
}

@end