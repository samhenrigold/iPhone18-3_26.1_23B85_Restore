@interface SFProximityEstimator
+ (SFProximityEstimator)proximityEstimatorWithProximityInfo:(id)info;
- (SFProximityEstimator)initWithProximityInfo:(id)info;
- (id)description;
- (id)descriptionParams;
- (unsigned)updateWithSFBLEDevice:(id)device;
@end

@implementation SFProximityEstimator

+ (SFProximityEstimator)proximityEstimatorWithProximityInfo:(id)info
{
  infoCopy = info;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v5 = off_1E78895B0;
  v6 = off_1E78895A8;
  if (Int64Ranged != 7)
  {
    v6 = off_1E78895A0;
  }

  if (Int64Ranged != 6)
  {
    v5 = v6;
  }

  v7 = [objc_alloc(*v5) initWithProximityInfo:infoCopy];

  return v7;
}

- (SFProximityEstimator)initWithProximityInfo:(id)info
{
  infoCopy = info;
  v8.receiver = self;
  v8.super_class = SFProximityEstimator;
  v5 = [(SFProximityEstimator *)&v8 init];
  if (v5)
  {
    v5->_rssiEnter = CFDictionaryGetInt64Ranged();
    v5->_rssiExit = CFDictionaryGetInt64Ranged();
    v5->_rssiImmediate = CFDictionaryGetInt64Ranged();
    v5->_rssiNear = CFDictionaryGetInt64Ranged();
    v5->_rssiFar = CFDictionaryGetInt64Ranged();
    v6 = v5;
  }

  return v5;
}

- (id)description
{
  v9 = 0;
  NSAppendPrintF(&v9, "SFProximityEstimator");
  v3 = v9;
  descriptionParams = [(SFProximityEstimator *)self descriptionParams];
  v5 = descriptionParams;
  if (descriptionParams)
  {
    v8 = v3;
    NSAppendPrintF(&v8, "%@", descriptionParams);
    v6 = v8;

    v3 = v6;
  }

  return v3;
}

- (id)descriptionParams
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F1D30528];
  v4 = v3;
  rssiEnter = self->_rssiEnter;
  if (rssiEnter)
  {
    v20 = v3;
    NSAppendPrintF(&v20, ", en=%d", rssiEnter);
    v6 = v20;

    v4 = v6;
  }

  rssiExit = self->_rssiExit;
  if (rssiExit)
  {
    v19 = v4;
    NSAppendPrintF(&v19, ", ex=%d", rssiExit);
    v8 = v19;

    v4 = v8;
  }

  rssiImmediate = self->_rssiImmediate;
  if (rssiImmediate)
  {
    v18 = v4;
    NSAppendPrintF(&v18, ", imm=%d", rssiImmediate);
    v10 = v18;

    v4 = v10;
  }

  rssiNear = self->_rssiNear;
  if (rssiNear)
  {
    v17 = v4;
    NSAppendPrintF(&v17, ", ne=%d", rssiNear);
    v12 = v17;

    v4 = v12;
  }

  if (self->_rssiFar)
  {
    rssiFar = self->_rssiFar;
    v16 = v4;
    NSAppendPrintF(&v16, ", far=%d", rssiFar);
    v13 = v16;

    v4 = v13;
  }

  return v4;
}

- (unsigned)updateWithSFBLEDevice:(id)device
{
  deviceCopy = device;
  closeProximityEstimatorMedium = [deviceCopy closeProximityEstimatorMedium];

  closeProximityEstimatorSmall = [deviceCopy closeProximityEstimatorSmall];

  v7 = [(SFProximityEstimator *)self _estimateRSSIForSFBLEDevice:deviceCopy];
  if ((v7 & 0x80000000) == 0 && !SFDeviceIsVirtualMachine())
  {
    v8 = 0;
    goto LABEL_85;
  }

  if (v7 == [deviceCopy rssiEstimate])
  {
    v8 = 0;
  }

  else
  {
    [deviceCopy setRssiEstimate:v7];
    v8 = 4;
  }

  p_rssiEnter = &self->_rssiEnter;
  rssiEnter = self->_rssiEnter;
  IsVirtualMachine = SFDeviceIsVirtualMachine();
  v12 = v7 >= rssiEnter || IsVirtualMachine;
  [deviceCopy setTriggered:v12];
  if (v12 == 1)
  {
    if (closeProximityEstimatorSmall == self)
    {
      if (([deviceCopy insideSmallBubble] & 1) == 0)
      {
        [deviceCopy setInsideSmallBubble:1];
        v8 |= 0x10u;
        if (gLogCategory_SFProximityEstimator <= 30 && (gLogCategory_SFProximityEstimator != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFProximityEstimator, "[SFProximityEstimator updateWithSFBLEDevice:]", 30, "Small bubble enter: %d, %@\n", *p_rssiEnter, deviceCopy);
        }
      }
    }

    else if (closeProximityEstimatorMedium == self)
    {
      if (([deviceCopy insideMediumBubble] & 1) == 0)
      {
        [deviceCopy setInsideMediumBubble:1];
        v8 |= 0x10u;
        if (gLogCategory_SFProximityEstimator <= 30 && (gLogCategory_SFProximityEstimator != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFProximityEstimator, "[SFProximityEstimator updateWithSFBLEDevice:]", 30, "Medium bubble enter: %d, %@\n", *p_rssiEnter, deviceCopy);
        }
      }
    }

    else if (([deviceCopy insideBubble] & 1) == 0)
    {
      [deviceCopy setInsideBubble:1];
      v8 |= 0x10u;
      if (gLogCategory_SFProximityEstimator <= 30 && (gLogCategory_SFProximityEstimator != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFProximityEstimator, "[SFProximityEstimator updateWithSFBLEDevice:]", 30, "Bubble enter: %d, %@\n", *p_rssiEnter, deviceCopy);
      }
    }
  }

  else
  {
    p_rssiExit = &self->_rssiExit;
    if (v7 < self->_rssiExit)
    {
      if (closeProximityEstimatorSmall == self)
      {
        if ([deviceCopy insideSmallBubble])
        {
          [deviceCopy setInsideSmallBubble:0];
          v8 |= 0x10u;
          if (gLogCategory_SFProximityEstimator <= 30 && (gLogCategory_SFProximityEstimator != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_SFProximityEstimator, "[SFProximityEstimator updateWithSFBLEDevice:]", 30, "Small bubble exit: %d, %@\n", *p_rssiExit, deviceCopy);
          }
        }
      }

      else if (closeProximityEstimatorMedium == self)
      {
        if ([deviceCopy insideMediumBubble])
        {
          [deviceCopy setInsideMediumBubble:0];
          v8 |= 0x10u;
          if (gLogCategory_SFProximityEstimator <= 30 && (gLogCategory_SFProximityEstimator != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_SFProximityEstimator, "[SFProximityEstimator updateWithSFBLEDevice:]", 30, "Medium bubble exit: %d, %@\n", *p_rssiExit, deviceCopy);
          }
        }
      }

      else if ([deviceCopy insideBubble])
      {
        [deviceCopy setInsideBubble:0];
        v8 |= 0x10u;
        if (gLogCategory_SFProximityEstimator <= 30 && (gLogCategory_SFProximityEstimator != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFProximityEstimator, "[SFProximityEstimator updateWithSFBLEDevice:]", 30, "Bubble exit: %d, %@\n", *p_rssiExit, deviceCopy);
        }
      }
    }
  }

  distance = [deviceCopy distance];
  v15 = distance;
  if (distance != 60)
  {
    if (distance == 20)
    {
      if (v7 < self->_rssiImmediate)
      {
        v16 = v7 <= self->_rssiFar;
        v17 = 60;
        v18 = 20;
LABEL_51:
        if (v16)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        goto LABEL_56;
      }

LABEL_54:
      v19 = 10;
      goto LABEL_56;
    }

    if (distance == 10)
    {
      if (v7 <= self->_rssiFar)
      {
        v19 = 60;
        goto LABEL_56;
      }

      v16 = v7 <= self->_rssiNear;
      v17 = 20;
      v18 = 10;
      goto LABEL_51;
    }
  }

  if (v7 >= self->_rssiImmediate)
  {
    goto LABEL_54;
  }

  if (v7 >= self->_rssiNear)
  {
    v19 = 20;
  }

  else
  {
    v19 = 60;
  }

LABEL_56:
  if (v19 != distance)
  {
    [deviceCopy setDistance:v19];
    if (gLogCategory_SFProximityEstimator > 30 || gLogCategory_SFProximityEstimator == -1 && !_LogCategory_Initialize())
    {
LABEL_84:
      v8 |= 2u;
      goto LABEL_85;
    }

    if (v15 <= 29)
    {
      switch(v15)
      {
        case 0:
          v20 = "Unknown";
          goto LABEL_78;
        case 10:
          v20 = "Immediate";
          goto LABEL_78;
        case 20:
          v20 = "Near";
          goto LABEL_78;
      }
    }

    else if (v15 > 49)
    {
      if (v15 == 50)
      {
        v20 = "House";
        goto LABEL_78;
      }

      if (v15 == 60)
      {
        v20 = "Far";
        goto LABEL_78;
      }
    }

    else
    {
      if (v15 == 30)
      {
        v20 = "Personal";
        goto LABEL_78;
      }

      if (v15 == 40)
      {
        v20 = "Room";
LABEL_78:
        if (v19 > 39)
        {
          v21 = "Far";
        }

        else if (v19 == 10)
        {
          v21 = "Immediate";
        }

        else
        {
          v21 = "Near";
        }

        LogPrintF(&gLogCategory_SFProximityEstimator, "[SFProximityEstimator updateWithSFBLEDevice:]", 30, "Distance changed: %s -> %s, %@\n", v20, v21, deviceCopy);
        goto LABEL_84;
      }
    }

    v20 = "?";
    goto LABEL_78;
  }

LABEL_85:

  return v8;
}

@end