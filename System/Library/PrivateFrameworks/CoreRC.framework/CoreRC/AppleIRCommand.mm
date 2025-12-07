@interface AppleIRCommand
- (AppleIRCommand)initWithPayload:(unint64_t)payload repeat:(BOOL)repeat;
- (BOOL)getVendorSpecificHIDUsagePage:(unsigned int *)page usageID:(unsigned int *)d ignoreRepeats:(BOOL *)repeats;
- (id)description;
- (unint64_t)command;
@end

@implementation AppleIRCommand

- (id)description
{
  v7.receiver = self;
  v7.super_class = AppleIRCommand;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[IRCommand description](&v7, sel_description)}];
  [v3 appendFormat:@" UID: %x;", -[AppleIRCommand deviceUID](self, "deviceUID")];
  [v3 appendFormat:@" Page: %x;", -[AppleIRCommand commandPage](self, "commandPage")];
  [v3 appendFormat:@" Command: %x;", -[AppleIRCommand commandID](self, "commandID")];
  [(IRCommand *)self payload];
  v4 = Parity32();
  v5 = "Bad";
  if (v4 == 1)
  {
    v5 = "Good";
  }

  [v3 appendFormat:@" Parity: %s;", v5];
  return v3;
}

- (AppleIRCommand)initWithPayload:(unint64_t)payload repeat:(BOOL)repeat
{
  repeatCopy = repeat;
  v7 = [IRProtocol protocolWithID:1 options:0];

  return [(IRCommand *)self initWithProtocol:v7 payload:payload repeat:repeatCopy];
}

- (unint64_t)command
{
  token = [(AppleIRCommand *)self token];
  v3 = 0;
  if (token > 3584)
  {
    if (token > 3588)
    {
      if (token > 3629)
      {
        if (token == 3630)
        {
LABEL_27:
          if (gLogCategory_CoreRCDevice > 40)
          {
            return 1;
          }

          else if (gLogCategory_CoreRCDevice == -1)
          {
            v3 = 1;
            if (_LogCategory_Initialize())
            {
              LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Select\n");
            }
          }

          else
          {
            v3 = 1;
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Select\n");
          }
        }

        else if (token == 3631)
        {
          if (gLogCategory_CoreRCDevice > 40)
          {
            return 46;
          }

          else if (gLogCategory_CoreRCDevice == -1)
          {
            v3 = 46;
            if (_LogCategory_Initialize())
            {
              LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Play/Pause\n");
            }
          }

          else
          {
            v3 = 46;
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Play/Pause\n");
          }
        }
      }

      else if (token == 3589)
      {
LABEL_33:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 2;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 2;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Up\n");
          }
        }

        else
        {
          v3 = 2;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Up\n");
        }
      }

      else if (token == 3590)
      {
LABEL_15:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 3;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 3;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Down\n");
          }
        }

        else
        {
          v3 = 3;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Down\n");
        }
      }
    }

    else if (token > 3586)
    {
      if (token == 3587)
      {
LABEL_30:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 5;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 5;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Right\n");
          }
        }

        else
        {
          v3 = 5;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Right\n");
        }
      }

      else
      {
LABEL_19:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 4;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 4;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Left\n");
          }
        }

        else
        {
          v3 = 4;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Left\n");
        }
      }
    }

    else if (token == 3585)
    {
      if (gLogCategory_CoreRCDevice > 40)
      {
        return 15;
      }

      else if (gLogCategory_CoreRCDevice == -1)
      {
        v3 = 15;
        if (_LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Menu\n");
        }
      }

      else
      {
        v3 = 15;
        LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Menu\n");
      }
    }

    else if (gLogCategory_CoreRCDevice > 40)
    {
      return 81;
    }

    else if (gLogCategory_CoreRCDevice == -1)
    {
      v3 = 81;
      if (_LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Play/Pause/Select\n");
      }
    }

    else
    {
      v3 = 81;
      LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Play/Pause/Select\n");
    }
  }

  else
  {
    switch(token)
    {
      case 1281:
        goto LABEL_33;
      case 1282:
        goto LABEL_15;
      case 1283:
        goto LABEL_19;
      case 1284:
        goto LABEL_30;
      case 1285:
        goto LABEL_27;
      case 1288:
        if (gLogCategory_CoreRCDevice > 40)
        {
          v3 = 43;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 43;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Volume Increase\n");
          }
        }

        else
        {
          v3 = 43;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Volume Increase\n");
        }

        break;
      case 1289:
        if (gLogCategory_CoreRCDevice > 40)
        {
          v3 = 44;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 44;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Volume Decrease\n");
          }
        }

        else
        {
          v3 = 44;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Volume Decrease\n");
        }

        break;
      case 1291:
        if (gLogCategory_CoreRCDevice > 40)
        {
          v3 = 67;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 67;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Play\n");
          }
        }

        else
        {
          v3 = 67;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Play\n");
        }

        break;
      case 1293:
        if (gLogCategory_CoreRCDevice > 40)
        {
          v3 = 49;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 49;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: FastForward\n");
          }
        }

        else
        {
          v3 = 49;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: FastForward\n");
        }

        break;
      case 1294:
        if (gLogCategory_CoreRCDevice > 40)
        {
          v3 = 48;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 48;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Rewind\n");
          }
        }

        else
        {
          v3 = 48;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Rewind\n");
        }

        break;
      case 1297:
        if (gLogCategory_CoreRCDevice > 40)
        {
          v3 = 83;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 83;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: NextTrack/NextChapter\n");
          }
        }

        else
        {
          v3 = 83;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: NextTrack/NextChapter\n");
        }

        break;
      case 1298:
        if (gLogCategory_CoreRCDevice > 40)
        {
          v3 = 82;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 82;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: PreviousTrack/PreviousChapter\n");
          }
        }

        else
        {
          v3 = 82;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: PreviousTrack/PreviousChapter\n");
        }

        break;
      case 1299:
        if (gLogCategory_CoreRCDevice > 40)
        {
          v3 = 52;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 52;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Replay10Seconds\n");
          }
        }

        else
        {
          v3 = 52;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Replay10Seconds\n");
        }

        break;
      case 1300:
        if (gLogCategory_CoreRCDevice > 40)
        {
          v3 = 45;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 45;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Volume Mute\n");
          }
        }

        else
        {
          v3 = 45;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Volume Mute\n");
        }

        break;
      case 1301:
        if (gLogCategory_CoreRCDevice > 40)
        {
          v3 = 74;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 74;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Standby\n");
          }
        }

        else
        {
          v3 = 74;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Standby\n");
        }

        break;
      case 1302:
        if (gLogCategory_CoreRCDevice > 40)
        {
          v3 = 75;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 75;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: On\n");
          }
        }

        else
        {
          v3 = 75;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: On\n");
        }

        break;
      case 1303:
        if (gLogCategory_CoreRCDevice > 40)
        {
          v3 = 51;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 51;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: SkipAhead\n");
          }
        }

        else
        {
          v3 = 51;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: SkipAhead\n");
        }

        break;
      case 1304:
        if (gLogCategory_CoreRCDevice > 40)
        {
          v3 = 72;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 72;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Stop\n");
          }
        }

        else
        {
          v3 = 72;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Stop\n");
        }

        break;
      case 1305:
        if (gLogCategory_CoreRCDevice > 40)
        {
          v3 = 47;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 47;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Pause\n");
          }
        }

        else
        {
          v3 = 47;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Pause\n");
        }

        break;
      case 1312:
        if (gLogCategory_CoreRCDevice > 40)
        {
          v3 = 84;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 84;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: TV\n");
          }
        }

        else
        {
          v3 = 84;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: TV\n");
        }

        break;
      case 1313:
        if (gLogCategory_CoreRCDevice > 40)
        {
          v3 = 85;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 85;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: App Switcher\n");
          }
        }

        else
        {
          v3 = 85;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: App Switcher\n");
        }

        break;
      case 1314:
        if (gLogCategory_CoreRCDevice > 40)
        {
          v3 = 64;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 64;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Accessibility Toggle\n");
          }
        }

        else
        {
          v3 = 64;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Accessibility Toggle\n");
        }

        break;
      case 1315:
        if (gLogCategory_CoreRCDevice > 40)
        {
          v3 = 34;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 34;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Channel Increment\n");
          }
        }

        else
        {
          v3 = 34;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Channel Increment\n");
        }

        break;
      case 1316:
        if (gLogCategory_CoreRCDevice > 40)
        {
          v3 = 35;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 35;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Channel Decrement\n");
          }
        }

        else
        {
          v3 = 35;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Channel Decrement\n");
        }

        break;
      case 1317:
        if (gLogCategory_CoreRCDevice > 40)
        {
          v3 = 90;
        }

        else if (gLogCategory_CoreRCDevice == -1)
        {
          v3 = 90;
          if (_LogCategory_Initialize())
          {
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Program Guide\n");
          }
        }

        else
        {
          v3 = 90;
          LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand command]", 40, "BUTTON: Program Guide\n");
        }

        break;
      default:
        return v3;
    }
  }

  return v3;
}

- (BOOL)getVendorSpecificHIDUsagePage:(unsigned int *)page usageID:(unsigned int *)d ignoreRepeats:(BOOL *)repeats
{
  token = [(AppleIRCommand *)self token];
  LOBYTE(v9) = 0;
  if (token <= 3594)
  {
    if (token <= 262)
    {
      if (token != 3 && token != 7)
      {
        return v9;
      }

      if (gLogCategory_CoreRCDevice <= 50)
      {
        if (gLogCategory_CoreRCDevice == -1)
        {
          v10 = 1;
          v11 = 3;
          v12 = 65294;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_68;
          }
        }

        else
        {
          v10 = 1;
          v11 = 3;
          v12 = 65294;
        }

        LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand getVendorSpecificHIDUsagePage:usageID:ignoreRepeats:]", 50, "Low battery event received from Apple IR remote\n");
        goto LABEL_68;
      }

      v10 = 1;
      v11 = 3;
    }

    else
    {
      if (token != 263)
      {
        if (token == 3591)
        {
          goto LABEL_25;
        }

        if (token != 3592)
        {
          return v9;
        }

        goto LABEL_28;
      }

      if (gLogCategory_CoreRCDevice <= 50)
      {
        if (gLogCategory_CoreRCDevice == -1)
        {
          v10 = 0;
          v11 = 4;
          v12 = 65294;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_68;
          }
        }

        else
        {
          v10 = 0;
          v11 = 4;
          v12 = 65294;
        }

        LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand getVendorSpecificHIDUsagePage:usageID:ignoreRepeats:]", 50, "Apple IR Remote Menu+Plus (undirected advertising/BTLE discovery mode)\n");
        goto LABEL_68;
      }

      v10 = 0;
      v11 = 4;
    }

    v12 = 65294;
    goto LABEL_68;
  }

  if (token <= 3634)
  {
    if (token != 3595)
    {
      if (token != 3596)
      {
        if (token != 3634)
        {
          return v9;
        }

LABEL_25:
        if (gLogCategory_CoreRCDevice > 50)
        {
          v11 = 1;
          v12 = 65295;
        }

        else
        {
          if (gLogCategory_CoreRCDevice != -1)
          {
            v11 = 1;
            v12 = 65295;
            v10 = 1;
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand getVendorSpecificHIDUsagePage:usageID:ignoreRepeats:]", 50, "Apple IR Remote Play+Up (screenshot)\n");
            goto LABEL_68;
          }

          v11 = 1;
          v12 = 65295;
          if (_LogCategory_Initialize())
          {
            v10 = 1;
            LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand getVendorSpecificHIDUsagePage:usageID:ignoreRepeats:]", 50, "Apple IR Remote Play+Up (screenshot)\n");
            goto LABEL_68;
          }
        }

        v10 = 1;
        goto LABEL_68;
      }

      if (gLogCategory_CoreRCDevice <= 40)
      {
        if (gLogCategory_CoreRCDevice == -1)
        {
          v9 = _LogCategory_Initialize();
          if (!v9)
          {
            return v9;
          }
        }

        [AppleIRCommand getVendorSpecificHIDUsagePage:usageID:ignoreRepeats:];
      }

LABEL_41:
      LOBYTE(v9) = 0;
      return v9;
    }

    if (gLogCategory_CoreRCDevice <= 50)
    {
      if (gLogCategory_CoreRCDevice == -1)
      {
        v10 = 1;
        v11 = 4;
        v12 = 65295;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_68;
        }
      }

      else
      {
        v10 = 1;
        v11 = 4;
        v12 = 65295;
      }

      LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand getVendorSpecificHIDUsagePage:usageID:ignoreRepeats:]", 50, "Apple IR Remote Menu+Up (black screen recover - A39)\n");
      goto LABEL_68;
    }

    v10 = 1;
    v11 = 4;
LABEL_56:
    v12 = 65295;
    goto LABEL_68;
  }

  if (token != 3635)
  {
    if (token == 3636)
    {
      if (gLogCategory_CoreRCDevice <= 50)
      {
        if (gLogCategory_CoreRCDevice == -1)
        {
          v9 = _LogCategory_Initialize();
          if (!v9)
          {
            return v9;
          }
        }

        [AppleIRCommand getVendorSpecificHIDUsagePage:usageID:ignoreRepeats:];
      }

      goto LABEL_41;
    }

    if (token != 3637)
    {
      return v9;
    }

    if (gLogCategory_CoreRCDevice > 50)
    {
      v10 = 1;
      v11 = 3;
      goto LABEL_56;
    }

    if (gLogCategory_CoreRCDevice == -1)
    {
      v10 = 1;
      v11 = 3;
      v12 = 65295;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_68;
      }
    }

    else
    {
      v10 = 1;
      v11 = 3;
      v12 = 65295;
    }

    LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand getVendorSpecificHIDUsagePage:usageID:ignoreRepeats:]", 50, "Apple IR Remote Play+Right (send logs)\n");
    goto LABEL_68;
  }

LABEL_28:
  if (gLogCategory_CoreRCDevice > 50)
  {
    v10 = 1;
    v11 = 2;
    goto LABEL_56;
  }

  if (gLogCategory_CoreRCDevice == -1)
  {
    v10 = 1;
    v11 = 2;
    v12 = 65295;
    if (!_LogCategory_Initialize())
    {
      goto LABEL_68;
    }
  }

  else
  {
    v10 = 1;
    v11 = 2;
    v12 = 65295;
  }

  LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRCommand getVendorSpecificHIDUsagePage:usageID:ignoreRepeats:]", 50, "Apple IR Remote Play+Down (stackshot)\n");
LABEL_68:
  if (page)
  {
    *page = v12;
  }

  if (d)
  {
    *d = v11;
  }

  if (repeats)
  {
    *repeats = v10;
  }

  LOBYTE(v9) = 1;
  return v9;
}

@end