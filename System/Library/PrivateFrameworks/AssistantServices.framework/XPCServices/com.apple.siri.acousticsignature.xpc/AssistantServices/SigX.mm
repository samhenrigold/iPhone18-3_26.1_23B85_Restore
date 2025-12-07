@interface SigX
+ (basic_string<char,)getVersion;
- (BOOL)flowFloatSamples:(float *)samples sampleCount:(int)count channels:(int)channels error:(id *)error;
- (BOOL)flowIntSamples:(signed __int16 *)samples sampleCount:(int)count channels:(int)channels error:(id *)error;
- (BOOL)getSignature:(void *)signature signatureOptions:(int)options error:(id *)error;
- (SigX)initWithSignatureType:(int)type sampleRate:(unsigned int)rate signatureOptions:(int)options error:(id *)error;
- (id)ConvertGenericException:(const exception *)exception;
- (id)ConvertSigException:(const SigException *)exception;
- (id)ConvertSigxException:(const SigxException *)exception;
- (id)FillUnknownError;
- (void)dealloc;
@end

@implementation SigX

- (void)dealloc
{
  mySigX = self->mySigX;
  if (mySigX)
  {
    v3 = *mySigX;
    *mySigX = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3, a2);
    }

    operator delete();
  }

  v4.receiver = self;
  v4.super_class = SigX;
  [(SigX *)&v4 dealloc];
}

- (BOOL)getSignature:(void *)signature signatureOptions:(int)options error:(id *)error
{
  mySigX = self->mySigX;
  *(signature + 1) = *signature;
  (*(**mySigX + 32))(*mySigX, signature, *&options);
  sub_100008B80(*signature, *(signature + 1));
}

- (BOOL)flowFloatSamples:(float *)samples sampleCount:(int)count channels:(int)channels error:(id *)error
{
  mySigX = self->mySigX;
  if (channels >= 2 && count)
  {
    v7 = 0;
    v8 = 1.0 / channels;
    v9 = samples + 1;
    do
    {
      v10 = v8 * samples[v7 * channels];
      samples[v7] = v10;
      v11 = v9;
      v12 = channels - 1;
      do
      {
        v13 = *v11++;
        v10 = v10 + (v13 * v8);
        samples[v7] = v10;
        --v12;
      }

      while (v12);
      ++v7;
      v9 += channels;
    }

    while (v7 != count);
  }

  (*(**mySigX + 24))(*mySigX, samples, *&count);
  return 1;
}

- (BOOL)flowIntSamples:(signed __int16 *)samples sampleCount:(int)count channels:(int)channels error:(id *)error
{
  mySigX = self->mySigX;
  if (channels >= 2 && count)
  {
    v7 = 0;
    v8 = 1.0 / channels;
    v9 = samples + 1;
    do
    {
      v10 = (v8 * samples[v7 * channels]);
      samples[v7] = v10;
      v11 = v9;
      v12 = channels - 1;
      do
      {
        v13 = *v11++;
        v10 = (v10 + (v13 * v8));
        samples[v7] = v10;
        --v12;
      }

      while (v12);
      ++v7;
      v9 += channels;
    }

    while (v7 != count);
  }

  (*(**mySigX + 16))(*mySigX, samples, *&count);
  return 1;
}

- (SigX)initWithSignatureType:(int)type sampleRate:(unsigned int)rate signatureOptions:(int)options error:(id *)error
{
  v7.receiver = self;
  v7.super_class = SigX;
  if ([(SigX *)&v7 init])
  {
    operator new();
  }

  return 0;
}

- (id)FillUnknownError
{
  v2 = [NSDictionary dictionaryWithObject:@"Something unexpected happened." forKey:NSLocalizedDescriptionKey];
  v3 = [NSError errorWithDomain:@"com.shazam.sigx" code:-200 userInfo:v2];

  return v3;
}

- (id)ConvertGenericException:(const exception *)exception
{
  v3 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", (*(exception->var0 + 2))(exception, a2), +[NSString defaultCStringEncoding]);
  v4 = [NSDictionary dictionaryWithObject:v3 forKey:NSLocalizedDescriptionKey];
  v5 = [NSError errorWithDomain:@"com.shazam.sigx" code:-100 userInfo:v4];

  return v5;
}

- (id)ConvertSigException:(const SigException *)exception
{
  v4 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", (*(exception->var0 + 2))(exception, a2), +[NSString defaultCStringEncoding]);
  var0 = exception->var2.var0;
  v6 = [NSDictionary dictionaryWithObject:v4 forKey:NSLocalizedDescriptionKey];
  v7 = [NSError errorWithDomain:@"com.shazam.sigvalidation" code:var0 userInfo:v6];

  return v7;
}

- (id)ConvertSigxException:(const SigxException *)exception
{
  v4 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", (*(exception->var0 + 2))(exception, a2), +[NSString defaultCStringEncoding]);
  var0 = exception->var2.var0;
  v6 = [NSDictionary dictionaryWithObject:v4 forKey:NSLocalizedDescriptionKey];
  v7 = [NSError errorWithDomain:@"com.shazam.sigx" code:var0 userInfo:v6];

  return v7;
}

+ (basic_string<char,)getVersion
{
  sub_100004930(&v3, "7.2.1");
  result = std::string::append(&v3, " (compilation mode 'debug', built on 'OS X')");
  *retstr = *result;
  result->var0.var1.var1 = 0;
  *(&result->var0.var1 + 2) = 0;
  result->var0.var1.var0 = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  return result;
}

@end