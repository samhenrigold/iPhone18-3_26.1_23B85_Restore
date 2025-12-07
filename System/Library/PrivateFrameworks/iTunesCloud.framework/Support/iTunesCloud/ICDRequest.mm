@interface ICDRequest
+ (id)request;
- (ICDRequest)initWithAction:(id)action;
- (id)URLRequestForBaseURL:(id)l sessionID:(unsigned int)d;
- (id)_HTTPMethodStringForICDRequestMethod:(int64_t)method;
- (id)description;
- (id)requestURLForBaseURL:(id)l sessionID:(unsigned int)d;
- (void)setValue:(id)value forArgument:(id)argument;
@end

@implementation ICDRequest

- (id)_HTTPMethodStringForICDRequestMethod:(int64_t)method
{
  if (method == 1)
  {
    return @"POST";
  }

  else
  {
    return @"GET";
  }
}

- (id)URLRequestForBaseURL:(id)l sessionID:(unsigned int)d
{
  v5 = [(ICDRequest *)self requestURLForBaseURL:l sessionID:*&d];
  [(ICDRequest *)self timeoutInterval];
  v6 = [NSMutableURLRequest requestWithURL:v5 cachePolicy:0 timeoutInterval:?];
  v7 = [(ICDRequest *)self _HTTPMethodStringForICDRequestMethod:self->_method];
  [v6 setHTTPMethod:v7];

  if ([(ICDRequest *)self acceptsGzipEncoding])
  {
    [v6 setValue:@"gzip" forHTTPHeaderField:@"Accept-Encoding"];
  }

  if ([(NSData *)self->_bodyData length])
  {
    [v6 setHTTPBody:self->_bodyData];
  }

  v8 = [NSString stringWithFormat:@"%d.%d", 3, 16];
  [v6 setValue:v8 forHTTPHeaderField:@"Client-iTunes-Sharing-Version"];

  return v6;
}

- (id)requestURLForBaseURL:(id)l sessionID:(unsigned int)d
{
  v4 = *&d;
  lCopy = l;
  v7 = [(NSString *)self->_action mutableCopy];
  if (v4)
  {
    arguments = self->_arguments;
    v9 = [NSNumber numberWithUnsignedInt:v4];
    [(NSDictionary *)arguments setValue:v9 forKey:@"session-id"];
  }

  if ([(NSDictionary *)self->_arguments count])
  {
    v10 = +[NSMutableArray array];
    v11 = self->_arguments;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100133DA0;
    v17[3] = &unk_1001DF418;
    v12 = v10;
    v18 = v12;
    [(NSDictionary *)v11 enumerateKeysAndObjectsUsingBlock:v17];
    v13 = [v12 componentsJoinedByString:@"&"];
    if (self->_requestGroupEntityPayloadForTrackSourceMatch)
    {
      v14 = @"&";
    }

    else
    {
      v14 = @"?";
    }

    [v7 appendString:v14];
    [v7 appendString:v13];
  }

  v15 = [NSURL URLWithString:v7 relativeToURL:lCopy];

  return v15;
}

- (void)setValue:(id)value forArgument:(id)argument
{
  valueCopy = value;
  argumentCopy = argument;
  arguments = self->_arguments;
  if (!arguments)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = self->_arguments;
    self->_arguments = v8;

    arguments = self->_arguments;
  }

  [(NSDictionary *)arguments setObject:valueCopy forKey:argumentCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ICDRequest;
  v3 = [(ICDRequest *)&v7 description];
  v4 = [(ICDRequest *)self _HTTPMethodStringForICDRequestMethod:self->_method];
  v5 = [v3 stringByAppendingFormat:@" %@ [%@]", v4, self->_action];

  return v5;
}

- (ICDRequest)initWithAction:(id)action
{
  actionCopy = action;
  v9.receiver = self;
  v9.super_class = ICDRequest;
  v5 = [(ICDRequest *)&v9 init];
  if (v5)
  {
    v6 = [actionCopy copy];
    v7 = *(v5 + 3);
    *(v5 + 3) = v6;

    *(v5 + 11) = 1;
    *(v5 + 6) = 1;
    *(v5 + 17) = 0;
  }

  return v5;
}

+ (id)request
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    [NSException raise:NSInvalidArgumentException format:@"subclass must implement"];
  }

  v3 = objc_alloc_init(objc_opt_class());

  return v3;
}

@end