@interface SKEvent
- (SKEvent)initWithEventType:(int)type;
- (SKEvent)initWithEventType:(int)type error:(id)error;
- (id)descriptionWithLevel:(int)level;
@end

@implementation SKEvent

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

  v20 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v19 = 0;
    v5 = [objc_opt_class() description];
    CUAppendF(&v19, &v20, "%@", v5);
    v6 = v19;
  }

  eventType = self->_eventType;
  if (eventType)
  {
    v18 = v6;
    if (eventType <= 119)
    {
      if (eventType > 40)
      {
        if (eventType > 99)
        {
          if (eventType == 100)
          {
            v8 = @"AuthenticationTypeChanged";
            goto LABEL_49;
          }

          if (eventType == 110)
          {
            v8 = @"AuthenticationPresent";
            goto LABEL_49;
          }
        }

        else
        {
          if (eventType == 41)
          {
            v8 = @"ConnectionEnded";
            goto LABEL_49;
          }

          if (eventType == 42)
          {
            v8 = @"Error";
            goto LABEL_49;
          }
        }
      }

      else if (eventType > 29)
      {
        if (eventType == 30)
        {
          v8 = @"Invalidated";
          goto LABEL_49;
        }

        if (eventType == 40)
        {
          v8 = @"ConnectionStarted";
          goto LABEL_49;
        }
      }

      else
      {
        if (eventType == 10)
        {
          v8 = @"Started";
          goto LABEL_49;
        }

        if (eventType == 20)
        {
          v8 = @"Completed";
          goto LABEL_49;
        }
      }
    }

    else if (eventType <= 200)
    {
      if (eventType > 139)
      {
        if (eventType == 140)
        {
          v8 = @"AuthenticationCompleted";
          goto LABEL_49;
        }

        if (eventType == 200)
        {
          v8 = @"CaptiveNetworkPresent";
          goto LABEL_49;
        }
      }

      else
      {
        if (eventType == 120)
        {
          v8 = @"AuthenticationRequest";
          goto LABEL_49;
        }

        if (eventType == 130)
        {
          v8 = @"AuthenticationResponse";
          goto LABEL_49;
        }
      }
    }

    else
    {
      if (eventType <= 202)
      {
        if (eventType == 201)
        {
          v8 = @"CaptiveNetworkNavigation";
        }

        else
        {
          v8 = @"CaptiveNetworkAuthenticated";
        }

        goto LABEL_49;
      }

      switch(eventType)
      {
        case 203:
          v8 = @"CaptiveNetworkIPAssignFailed";
          goto LABEL_49;
        case 204:
          v8 = @"CaptiveNetworkFailed";
          goto LABEL_49;
        case 300:
          v8 = @"BasicConfigUpdated";
LABEL_49:
          CUAppendF(&v18, &v20, "type %@", v8);
          v9 = v18;

          v6 = v9;
          goto LABEL_50;
      }
    }

    v8 = @"?";
    goto LABEL_49;
  }

LABEL_50:
  error = self->_error;
  if (error)
  {
    v17 = v6;
    v11 = error;
    v12 = CUPrintNSError();
    CUAppendF(&v17, &v20, "error %@", v12);
    v13 = v17;

    v6 = v13;
  }

  v14 = &stru_2877689A8;
  if (v6)
  {
    v14 = v6;
  }

  v15 = v14;

  return v15;
}

- (SKEvent)initWithEventType:(int)type error:(id)error
{
  errorCopy = error;
  v8 = [(SKEvent *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_error, error);
    v9->_eventType = type;
    v10 = v9;
  }

  return v9;
}

- (SKEvent)initWithEventType:(int)type
{
  v4 = [(SKEvent *)self init];
  v5 = v4;
  if (v4)
  {
    v4->_eventType = type;
    v6 = v4;
  }

  return v5;
}

@end