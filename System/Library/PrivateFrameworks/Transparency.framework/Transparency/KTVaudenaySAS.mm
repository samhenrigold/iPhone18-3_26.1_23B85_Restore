@interface KTVaudenaySAS
+ (id)randomValueOfLength:(unint64_t)length;
- (BOOL)setInitiatorUndisclosedRandom:(id)random;
- (BOOL)setPeerRandom:(id)random;
- (id)initAcceptorWithPublic:(id)public configuration:(id)configuration;
- (id)initInitiatorWithPublic:(id)public configuration:(id)configuration;
- (id)selfRandom;
- (id)shortAuthenticationString;
- (id)undisclosedInitiatorRandom;
- (id)undisclosedInitiatorValue:(id)value;
- (void)setPeerPublic:(id)public;
@end

@implementation KTVaudenaySAS

+ (id)randomValueOfLength:(unint64_t)length
{
  v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:length];
  if (SecRandomCopyBytes(0, length, [v4 mutableBytes]))
  {
    abort();
  }

  return v4;
}

- (id)initInitiatorWithPublic:(id)public configuration:(id)configuration
{
  publicCopy = public;
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = KTVaudenaySAS;
  v8 = [(KTVaudenaySAS *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(KTVaudenaySAS *)v8 setInitiator:1];
    [(KTVaudenaySAS *)v9 setInitiatorInfo:publicCopy];
    [(KTVaudenaySAS *)v9 setConfig:configurationCopy];
    v10 = [KTVaudenaySAS randomValueOfLength:16];
    [(KTVaudenaySAS *)v9 setInitiatorRandom:v10];

    v11 = v9;
  }

  return v9;
}

- (id)initAcceptorWithPublic:(id)public configuration:(id)configuration
{
  publicCopy = public;
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = KTVaudenaySAS;
  v8 = [(KTVaudenaySAS *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(KTVaudenaySAS *)v8 setInitiator:0];
    [(KTVaudenaySAS *)v9 setAcceptorInfo:publicCopy];
    [(KTVaudenaySAS *)v9 setConfig:configurationCopy];
    v10 = [KTVaudenaySAS randomValueOfLength:16];
    [(KTVaudenaySAS *)v9 setAcceptorRandom:v10];

    v11 = v9;
  }

  return v9;
}

- (void)setPeerPublic:(id)public
{
  publicCopy = public;
  if ([(KTVaudenaySAS *)self initiator])
  {
    [(KTVaudenaySAS *)self setAcceptorInfo:publicCopy];
  }

  else
  {
    [(KTVaudenaySAS *)self setInitiatorInfo:publicCopy];
  }
}

- (id)undisclosedInitiatorValue:(id)value
{
  v4 = MEMORY[0x1E695DF88];
  valueCopy = value;
  v6 = [v4 alloc];
  config = [(KTVaudenaySAS *)self config];
  v8 = [v6 initWithLength:{*objc_msgSend(config, "di")}];

  config2 = [(KTVaudenaySAS *)self config];
  [config2 di];
  [valueCopy length];
  [valueCopy bytes];

  [v8 mutableBytes];
  ccdigest();

  return v8;
}

- (id)undisclosedInitiatorRandom
{
  initiatorRandom = [(KTVaudenaySAS *)self initiatorRandom];
  v4 = [(KTVaudenaySAS *)self undisclosedInitiatorValue:initiatorRandom];

  return v4;
}

- (BOOL)setInitiatorUndisclosedRandom:(id)random
{
  randomCopy = random;
  if (-[KTVaudenaySAS initiator](self, "initiator") || (-[KTVaudenaySAS sentUndisclosedRandom](self, "sentUndisclosedRandom"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, -[KTVaudenaySAS sentUndisclosedRandom](self, "sentUndisclosedRandom"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqual:randomCopy], v7, v6, !v8))
  {
    v10 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E695DEF0] dataWithData:randomCopy];
    [(KTVaudenaySAS *)self setSentUndisclosedRandom:v9];

    v10 = 1;
  }

  return v10;
}

- (BOOL)setPeerRandom:(id)random
{
  randomCopy = random;
  if ([randomCopy length] != 16)
  {
    goto LABEL_8;
  }

  if (![(KTVaudenaySAS *)self initiator])
  {
    sentUndisclosedRandom = [(KTVaudenaySAS *)self sentUndisclosedRandom];

    if (sentUndisclosedRandom)
    {
      v5 = [(KTVaudenaySAS *)self undisclosedInitiatorValue:randomCopy];
      sentUndisclosedRandom2 = [(KTVaudenaySAS *)self sentUndisclosedRandom];
      v6 = [v5 isEqual:sentUndisclosedRandom2];

      if (v6)
      {
        v9 = [MEMORY[0x1E695DEF0] dataWithData:randomCopy];
        [(KTVaudenaySAS *)self setInitiatorRandom:v9];
      }

      goto LABEL_7;
    }

LABEL_8:
    LOBYTE(v6) = 0;
    goto LABEL_9;
  }

  v5 = [MEMORY[0x1E695DEF0] dataWithData:randomCopy];
  [(KTVaudenaySAS *)self setAcceptorRandom:v5];
  LOBYTE(v6) = 1;
LABEL_7:

LABEL_9:
  return v6;
}

- (id)selfRandom
{
  initiator = [(KTVaudenaySAS *)self initiator];
  acceptorRandom = [(KTVaudenaySAS *)self acceptorRandom];
  initiatorRandom = acceptorRandom;
  if (initiator)
  {

    if (initiatorRandom)
    {
      initiatorRandom = [(KTVaudenaySAS *)self initiatorRandom];
    }
  }

  return initiatorRandom;
}

- (id)shortAuthenticationString
{
  v52 = *MEMORY[0x1E69E9840];
  initiatorInfo = [(KTVaudenaySAS *)self initiatorInfo];
  if (!initiatorInfo)
  {
    goto LABEL_11;
  }

  v4 = initiatorInfo;
  initiatorRandom = [(KTVaudenaySAS *)self initiatorRandom];
  if (!initiatorRandom)
  {
    goto LABEL_10;
  }

  v6 = initiatorRandom;
  acceptorInfo = [(KTVaudenaySAS *)self acceptorInfo];
  if (!acceptorInfo)
  {

LABEL_10:
    goto LABEL_11;
  }

  v8 = acceptorInfo;
  acceptorRandom = [(KTVaudenaySAS *)self acceptorRandom];

  if (!acceptorRandom)
  {
LABEL_11:
    v44 = 0;
    goto LABEL_12;
  }

  config = [(KTVaudenaySAS *)self config];
  [config di];
  config2 = [(KTVaudenaySAS *)self config];
  [config2 di];
  config3 = [(KTVaudenaySAS *)self config];
  v12 = [config3 di];
  v48 = &v48;
  MEMORY[0x1EEE9AC00](v12);
  bzero(&v48 - v13, v14);
  data = [MEMORY[0x1E695DF88] data];
  config4 = [(KTVaudenaySAS *)self config];
  digestPrefix = [config4 digestPrefix];

  if (digestPrefix)
  {
    config5 = [(KTVaudenaySAS *)self config];
    digestPrefix2 = [config5 digestPrefix];
    [data appendData:digestPrefix2];
  }

  initiatorRandom2 = [(KTVaudenaySAS *)self initiatorRandom];
  [data appendData:initiatorRandom2];

  acceptorRandom2 = [(KTVaudenaySAS *)self acceptorRandom];
  [data appendData:acceptorRandom2];

  config6 = [(KTVaudenaySAS *)self config];
  [config6 di];
  [data length];
  [data mutableBytes];
  cchmac_init();

  [data length];
  [data mutableBytes];
  cc_clear();
  initiatorInfo2 = [(KTVaudenaySAS *)self initiatorInfo];
  v51 = bswap32([initiatorInfo2 length]);

  acceptorInfo2 = [(KTVaudenaySAS *)self acceptorInfo];
  v50 = bswap32([acceptorInfo2 length]);

  config7 = [(KTVaudenaySAS *)self config];
  [config7 di];
  cchmac_update();

  config8 = [(KTVaudenaySAS *)self config];
  [config8 di];
  initiatorInfo3 = [(KTVaudenaySAS *)self initiatorInfo];
  [initiatorInfo3 length];
  initiatorInfo4 = [(KTVaudenaySAS *)self initiatorInfo];
  [initiatorInfo4 bytes];
  cchmac_update();

  config9 = [(KTVaudenaySAS *)self config];
  [config9 di];
  cchmac_update();

  config10 = [(KTVaudenaySAS *)self config];
  [config10 di];
  acceptorInfo3 = [(KTVaudenaySAS *)self acceptorInfo];
  [acceptorInfo3 length];
  acceptorInfo4 = [(KTVaudenaySAS *)self acceptorInfo];
  [acceptorInfo4 bytes];
  cchmac_update();

  v33 = objc_alloc(MEMORY[0x1E695DF88]);
  config11 = [(KTVaudenaySAS *)self config];
  v35 = [v33 initWithLength:{*objc_msgSend(config11, "di")}];

  config12 = [(KTVaudenaySAS *)self config];
  [config12 di];
  if (v35)
  {
    [v35 mutableBytes];
    cchmac_final();

    config13 = [(KTVaudenaySAS *)self config];
    [config13 di];
    config14 = [(KTVaudenaySAS *)self config];
    [config14 di];
    config15 = [(KTVaudenaySAS *)self config];
    [config15 di];
    cc_clear();

    v40 = bswap64(*[v35 bytes]);
    config16 = [(KTVaudenaySAS *)self config];
    v42 = v40 % [config16 shortCodeMod10];

    v43 = MEMORY[0x1E696AEC0];
    config12 = [(KTVaudenaySAS *)self config];
    v44 = [v43 stringWithFormat:@"%0.*llu", objc_msgSend(config12, "shortCodeLength"), v42];
  }

  else
  {
    config17 = [(KTVaudenaySAS *)self config];
    [config17 di];
    config18 = [(KTVaudenaySAS *)self config];
    [config18 di];
    cc_clear();

    v44 = 0;
  }

LABEL_12:

  return v44;
}

@end