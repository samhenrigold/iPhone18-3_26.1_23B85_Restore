@interface KTVaudenaySASConfiguration
+ (id)sha256Transparency;
- (KTVaudenaySASConfiguration)initWithName:(id)name digestPrefix:(id)prefix shortCodeLength:(int)length digest:(const ccdigest_info *)digest;
@end

@implementation KTVaudenaySASConfiguration

- (KTVaudenaySASConfiguration)initWithName:(id)name digestPrefix:(id)prefix shortCodeLength:(int)length digest:(const ccdigest_info *)digest
{
  v7 = *&length;
  nameCopy = name;
  prefixCopy = prefix;
  if ((v7 & 0x80000000) != 0 || (v15.receiver = self, v15.super_class = KTVaudenaySASConfiguration, v12 = [(KTVaudenaySASConfiguration *)&v15 init], (self = v12) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    [(KTVaudenaySASConfiguration *)v12 setName:nameCopy];
    [(KTVaudenaySASConfiguration *)self setDi:digest];
    [(KTVaudenaySASConfiguration *)self setDigestPrefix:prefixCopy];
    [(KTVaudenaySASConfiguration *)self setShortCodeLength:v7];
    [(KTVaudenaySASConfiguration *)self setShortCodeMod10:1];
    for (; v7; LODWORD(v7) = v7 - 1)
    {
      [(KTVaudenaySASConfiguration *)self setShortCodeMod10:10 * [(KTVaudenaySASConfiguration *)self shortCodeMod10]];
    }

    self = self;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)sha256Transparency
{
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:"sha256Transparency" length:18];
  if (v2)
  {
    v3 = [[KTVaudenaySASConfiguration alloc] initWithName:@"sha256Transparency" digestPrefix:v2 shortCodeLength:8 digest:ccsha256_di()];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end