@interface SKAuthenticationResponseEvent
- (SKAuthenticationResponseEvent)initWithPassword:(id)password;
- (id)descriptionWithLevel:(int)level;
@end

@implementation SKAuthenticationResponseEvent

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

  v14 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v13 = 0;
    v5 = [objc_opt_class() description];
    CUAppendF(&v13, &v14, "%@", v5);
    v6 = v13;
  }

  if (self->_password)
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  v12 = v6;
  CUAppendF(&v12, &v14, "password? %s", v7);
  v8 = v12;

  v9 = &stru_2877689A8;
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;

  return v10;
}

- (SKAuthenticationResponseEvent)initWithPassword:(id)password
{
  passwordCopy = password;
  v5 = [(SKEvent *)self initWithEventType:130];
  if (v5)
  {
    v6 = [passwordCopy copy];
    password = v5->_password;
    v5->_password = v6;

    v8 = v5;
  }

  return v5;
}

@end