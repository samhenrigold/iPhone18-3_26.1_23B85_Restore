@interface _DPPrivateAccessTokenChallenge
- (_DPPrivateAccessTokenChallenge)initWithIssuer:(id)issuer redemptionContext:(id)context;
- (id)synthesizeWithTokenType:(unsigned __int16)type;
@end

@implementation _DPPrivateAccessTokenChallenge

- (_DPPrivateAccessTokenChallenge)initWithIssuer:(id)issuer redemptionContext:(id)context
{
  issuerCopy = issuer;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = _DPPrivateAccessTokenChallenge;
  v8 = [(_DPPrivateAccessTokenChallenge *)&v12 init];
  if (v8)
  {
    v9 = [issuerCopy copy];
    issuer = v8->_issuer;
    v8->_issuer = v9;

    objc_storeStrong(&v8->_redemptionContext, context);
  }

  return v8;
}

- (id)synthesizeWithTokenType:(unsigned __int16)type
{
  if ((type & 0xFFFE) == 2)
  {
    typeCopy = type;
    v5 = objc_alloc_init(_DPBigEndianDataEncoder);
    [v5 writeUInt16:typeCopy];
    issuer = [(_DPPrivateAccessTokenChallenge *)self issuer];
    v7 = [issuer dataUsingEncoding:4];

    if (![v7 length] || objc_msgSend(v7, "length") >= 0x10000)
    {
      v8 = +[_DPLog service];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10005018C(v8);
      }

LABEL_6:

      buffer = 0;
LABEL_15:

      goto LABEL_16;
    }

    -[NSObject writeUInt16:](v5, "writeUInt16:", [v7 length]);
    [v5 appendData:v7];
    redemptionContext = [(_DPPrivateAccessTokenChallenge *)self redemptionContext];

    if (redemptionContext)
    {
      redemptionContext2 = [(_DPPrivateAccessTokenChallenge *)self redemptionContext];
      v12 = [redemptionContext2 length];

      if (v12 != 32)
      {
        redemptionContext3 = [(_DPPrivateAccessTokenChallenge *)self redemptionContext];
        v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Redemption context length, %lu, must be equal to 32.", [redemptionContext3 length]);

        v16 = +[_DPLog service];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1000500D0(v8, v16);
        }

        goto LABEL_6;
      }

      [v5 writeUChar:32];
      redemptionContext4 = [(_DPPrivateAccessTokenChallenge *)self redemptionContext];
      [v5 appendData:redemptionContext4];
    }

    else
    {
      [v5 writeUChar:0];
    }

    [v5 writeUInt16:0];
    buffer = [v5 buffer];
    goto LABEL_15;
  }

  v5 = +[_DPLog service];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100050148(v5);
  }

  buffer = 0;
LABEL_16:

  return buffer;
}

@end