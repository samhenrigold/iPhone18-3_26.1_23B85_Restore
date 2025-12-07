@interface SKEventBasicConfigUpdated
- (SKEventBasicConfigUpdated)initWithBasicConfig:(id)config;
- (id)descriptionWithLevel:(int)level;
@end

@implementation SKEventBasicConfigUpdated

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v3 = 8;
  }

  else
  {
    v3 = 12;
  }

  v13 = v3;
  if ((level & 0x8000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v12 = 0;
    v4 = [objc_opt_class() description];
    CUAppendF(&v12, &v13, "%@", v4);
    v5 = v12;
  }

  v11 = v5;
  v6 = CUPrintNSObjectOneLine();
  CUAppendF(&v11, &v13, "%@", v6);
  v7 = v11;

  v8 = &stru_2877689A8;
  if (v7)
  {
    v8 = v7;
  }

  v9 = v8;

  return v9;
}

- (SKEventBasicConfigUpdated)initWithBasicConfig:(id)config
{
  configCopy = config;
  v5 = [(SKEvent *)self initWithEventType:300];
  if (v5)
  {
    v6 = [configCopy copy];
    basicConfig = v5->_basicConfig;
    v5->_basicConfig = v6;

    v8 = v5;
  }

  return v5;
}

@end