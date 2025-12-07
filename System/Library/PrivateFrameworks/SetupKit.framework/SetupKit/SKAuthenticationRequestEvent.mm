@interface SKAuthenticationRequestEvent
- (SKAuthenticationRequestEvent)initWithPasswordType:(int)type pairingFlags:(unsigned int)flags throttleSeconds:(int)seconds;
- (id)descriptionWithLevel:(int)level;
@end

@implementation SKAuthenticationRequestEvent

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 8;
  }

  else
  {
    v4 = 12;
  }

  v21 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v20 = 0;
    v5 = [objc_opt_class() description];
    CUAppendF(&v20, &v21, "%@", v5);
    v6 = v20;
  }

  v19 = v6;
  v7 = self->_passwordType + 1;
  if (v7 > 0xA)
  {
    v8 = "?";
  }

  else
  {
    v8 = off_279BB8270[v7];
  }

  CUAppendF(&v19, &v21, "%s", v8);
  v9 = v19;

  if (self->_pairingFlags)
  {
    v18 = v9;
    v10 = CUPrintFlags32();
    CUAppendF(&v18, &v21, "%@", v10);
    v11 = v18;

    v9 = v11;
  }

  if (self->_throttleSeconds >= 1)
  {
    throttleSeconds = self->_throttleSeconds;
    v17 = v9;
    CUAppendF(&v17, &v21, "throttle %d seconds", throttleSeconds);
    v12 = v17;

    v9 = v12;
  }

  v13 = &stru_2877689A8;
  if (v9)
  {
    v13 = v9;
  }

  v14 = v13;

  return v14;
}

- (SKAuthenticationRequestEvent)initWithPasswordType:(int)type pairingFlags:(unsigned int)flags throttleSeconds:(int)seconds
{
  v8 = [(SKEvent *)self initWithEventType:120];
  v9 = v8;
  if (v8)
  {
    v8->_passwordType = type;
    v8->_pairingFlags = flags;
    v8->_throttleSeconds = seconds;
    v10 = v8;
  }

  return v9;
}

@end