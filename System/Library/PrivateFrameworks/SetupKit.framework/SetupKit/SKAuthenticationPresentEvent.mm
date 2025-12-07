@interface SKAuthenticationPresentEvent
- (SKAuthenticationPresentEvent)initWithPasswordType:(int)type password:(id)password;
- (id)descriptionWithLevel:(int)level;
@end

@implementation SKAuthenticationPresentEvent

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

  v18 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v17 = 0;
    v5 = [objc_opt_class() description];
    CUAppendF(&v17, &v18, "%@", v5);
    v6 = v17;
  }

  passwordType = self->_passwordType;
  if (passwordType)
  {
    v16 = v6;
    v8 = passwordType + 1;
    if (v8 > 0xA)
    {
      v9 = "?";
    }

    else
    {
      v9 = off_279BB8218[v8];
    }

    CUAppendF(&v16, &v18, "type %s", v9);
    v10 = v16;

    v6 = v10;
  }

  v15 = v6;
  CUAppendF(&v15, &v18, "password '%@'", self->_password);
  v11 = v15;

  v12 = &stru_2877689A8;
  if (v11)
  {
    v12 = v11;
  }

  v13 = v12;

  return v13;
}

- (SKAuthenticationPresentEvent)initWithPasswordType:(int)type password:(id)password
{
  passwordCopy = password;
  v7 = [(SKEvent *)self initWithEventType:110];
  if (v7)
  {
    v8 = [passwordCopy copy];
    password = v7->_password;
    v7->_password = v8;

    v7->_passwordType = type;
    v10 = v7;
  }

  return v7;
}

@end