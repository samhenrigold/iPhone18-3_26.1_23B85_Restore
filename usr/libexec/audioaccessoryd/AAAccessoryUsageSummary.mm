@interface AAAccessoryUsageSummary
- (BOOL)updateWithPayload:(id)payload;
- (void)_updateInEarState:(BOOL)state;
- (void)_updateListeningMode:(BOOL)mode;
- (void)_updatePairingError:(unsigned int)error;
- (void)_updateVolumeChange:(int)change;
- (void)_updateWithHfpPayload:(id)payload;
- (void)addA2DPDuration:(unint64_t)duration audioCategory:(unint64_t)category;
- (void)addA2DPPacketFlushRetx:(unsigned int)retx;
- (void)addA2DPPacketFlushRssi:(int)rssi;
- (void)addA2DPRetx:(unsigned int)retx;
- (void)addA2DPRssi:(int)rssi;
- (void)addConnectionError:(unsigned int)error;
- (void)addDisconnectionErrors:(unint64_t)errors;
- (void)adda2DPSnr:(unsigned int)snr;
- (void)setAaDevice:(id)device;
- (void)updateConnectionErrorReason:(id)reason;
@end

@implementation AAAccessoryUsageSummary

- (void)setAaDevice:(id)device
{
  deviceCopy = device;
  aaDevice = self->_aaDevice;
  p_aaDevice = &self->_aaDevice;
  v7 = aaDevice;
  v8 = deviceCopy;
  v11 = v8;
  if (v7 == v8)
  {

LABEL_11:
    goto LABEL_12;
  }

  if ((v8 == 0) == (v7 != 0))
  {

LABEL_7:
    if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EDE24(p_aaDevice, v11);
    }

    v10 = v11;
    v7 = *p_aaDevice;
    *p_aaDevice = v10;
    goto LABEL_11;
  }

  v9 = [(AudioAccessoryDevice *)v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
}

- (void)_updateWithHfpPayload:(id)payload
{
  payloadCopy = payload;
  avgHfpRetx = [(AAAccessoryUsageSummary *)self avgHfpRetx];
  v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [payloadCopy retx]);
  [avgHfpRetx addObject:v6];

  avgHfpRssi = [(AAAccessoryUsageSummary *)self avgHfpRssi];
  v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [payloadCopy rssiAvg]);
  [avgHfpRssi addObject:v8];

  hfpDuration = [(AAAccessoryUsageSummary *)self hfpDuration];
  v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [payloadCopy durationInSec]);
  [hfpDuration addObject:v10];

  hfpIsTipiConnected = [(AAAccessoryUsageSummary *)self hfpIsTipiConnected];
  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [payloadCopy tipiConnected]);
  [hfpIsTipiConnected addObject:v12];

  hfpNumberOfDevices = [(AAAccessoryUsageSummary *)self hfpNumberOfDevices];
  v14 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [payloadCopy numDevicesConnected]);
  [hfpNumberOfDevices addObject:v14];

  hfpSnr = [(AAAccessoryUsageSummary *)self hfpSnr];
  v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [payloadCopy snrAvg]);
  [hfpSnr addObject:v16];

  hfpPlc = [(AAAccessoryUsageSummary *)self hfpPlc];
  v18 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [payloadCopy plcCount]);
  [hfpPlc addObject:v18];

  durationInSec = [payloadCopy durationInSec];
  [(AAAccessoryUsageSummary *)self setTotalDurationHfp:&durationInSec[[(AAAccessoryUsageSummary *)self totalDurationHfp]]];
  if (dword_1002F6998 <= 50 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EDEB0();
  }
}

- (BOOL)updateWithPayload:(id)payload
{
  payloadCopy = payload;
  infoType = [payloadCopy infoType];
  if (!infoType)
  {
    if (dword_1002F6998 <= 30)
    {
      if (dword_1002F6998 != -1 || (infoType = _LogCategory_Initialize(), infoType))
      {
        sub_1001EDED0(infoType, v6, v7);
      }
    }

    goto LABEL_7;
  }

  if (infoType != 2)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  [(AAAccessoryUsageSummary *)self _updateWithHfpPayload:payloadCopy];
  v8 = 1;
LABEL_8:

  return v8;
}

- (void)addConnectionError:(unsigned int)error
{
  if (error)
  {
    v3 = *&error;
    connectionErrorList = self->_connectionErrorList;
    if (!connectionErrorList)
    {
      v6 = objc_alloc_init(NSMutableArray);
      v7 = self->_connectionErrorList;
      self->_connectionErrorList = v6;

      connectionErrorList = self->_connectionErrorList;
    }

    v8 = [NSNumber numberWithUnsignedInt:v3];
    [(NSMutableArray *)connectionErrorList addObject:v8];
  }
}

- (void)updateConnectionErrorReason:(id)reason
{
  reasonCopy = reason;
  v17 = reasonCopy;
  if (reasonCopy)
  {
    if (([reasonCopy isEqualToString:@"NA"] & 1) == 0)
    {
      connectionErroReasonrMap = self->_connectionErroReasonrMap;
      if (!connectionErroReasonrMap)
      {
        v8 = objc_alloc_init(NSMutableDictionary);
        v9 = self->_connectionErroReasonrMap;
        self->_connectionErroReasonrMap = v8;

        connectionErroReasonrMap = self->_connectionErroReasonrMap;
      }

      v10 = [(NSMutableDictionary *)connectionErroReasonrMap objectForKeyedSubscript:v17];
      v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 intValue] + 1);
      [(NSMutableDictionary *)self->_connectionErroReasonrMap setObject:v11 forKeyedSubscript:v17];

      if (([v17 isEqualToString:@"ACL Connect Failed"] & 1) == 0 && (objc_msgSend(v17, "isEqualToString:", @"Magic Pairing failed due to OPERATION_TIMED_OUT") & 1) == 0 && (objc_msgSend(v17, "isEqualToString:", @"Peer device has no pairing keys BT_MAGIC_PAIRING_KEY_NOT_FOUND") & 1) == 0 && (objc_msgSend(v17, "isEqualToString:", @"HFP Connect Failed") & 1) == 0)
      {
        ++self->_connectionErrorGeneralCount;
      }
    }

    totalNumberOfConnections = self->_totalNumberOfConnections + 1;
    self->_totalNumberOfConnections = totalNumberOfConnections;
    if (dword_1002F6998 <= 30)
    {
      if (dword_1002F6998 != -1)
      {
LABEL_12:
        v13 = [(NSMutableDictionary *)self->_connectionErroReasonrMap objectForKeyedSubscript:@"ACL Connect Failed"];
        v14 = [(NSMutableDictionary *)self->_connectionErroReasonrMap objectForKeyedSubscript:@"Magic Pairing failed due to OPERATION_TIMED_OUT"];
        v15 = [(NSMutableDictionary *)self->_connectionErroReasonrMap objectForKeyedSubscript:@"Peer device has no pairing keys BT_MAGIC_PAIRING_KEY_NOT_FOUND"];
        v16 = [(NSMutableDictionary *)self->_connectionErroReasonrMap objectForKeyedSubscript:@"HFP Connect Failed"];
        LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummary updateConnectionErrorReason:]", 30, "UpdateConnectionErrorReason: connCount %d error1Count %@ error2Count %@ error3Count %@ error4Count %@ errorGeneralCount %d", totalNumberOfConnections, v13, v14, v15, v16, self->_connectionErrorGeneralCount);

        goto LABEL_14;
      }

      if (_LogCategory_Initialize())
      {
        totalNumberOfConnections = self->_totalNumberOfConnections;
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_1001EDEEC(0, v5, v6);
  }

LABEL_14:
}

- (void)addDisconnectionErrors:(unint64_t)errors
{
  if (errors)
  {
    disconnectionErrorMap = self->_disconnectionErrorMap;
    if (!disconnectionErrorMap)
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = self->_disconnectionErrorMap;
      self->_disconnectionErrorMap = v6;

      disconnectionErrorMap = self->_disconnectionErrorMap;
    }

    v8 = [NSNumber numberWithUnsignedLongLong:errors];
    v9 = [(NSMutableDictionary *)disconnectionErrorMap objectForKeyedSubscript:v8];
    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue] + 1);
    v11 = self->_disconnectionErrorMap;
    v12 = [NSNumber numberWithUnsignedLongLong:errors];
    [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v12];

    if (errors != 10720 && errors != 11818)
    {
      ++self->_disconnectionErrorGeneralCount;
    }
  }
}

- (void)addA2DPDuration:(unint64_t)duration audioCategory:(unint64_t)category
{
  categoryCopy = category;
  a2dpDuration = self->_a2dpDuration;
  v8 = [NSNumber numberWithUnsignedLongLong:?];
  [(NSMutableArray *)a2dpDuration addObject:v8];

  self->_totalDurationA2dp += duration;
  if (categoryCopy)
  {
    self->_a2dpTotalGameDuration += duration;
  }

  if ((categoryCopy & 2) != 0)
  {
    self->_a2dpTotalSpatialDuration += duration;
  }
}

- (void)addA2DPRssi:(int)rssi
{
  v3 = *&rssi;
  v5 = [(AAAccessoryUsageSummary *)self _isValidRssi:?];
  if (v5)
  {
    avgA2dpRssi = self->_avgA2dpRssi;
    v9 = [NSNumber numberWithInt:v3];
    [(NSMutableArray *)avgA2dpRssi addObject:v9];

    if (v3 > -71)
    {
      if (v3 < -60)
      {
        ++self->_a2dpRssiMidCount;
      }

      else
      {
        ++self->_a2dpRssiGoodCount;
      }
    }

    else
    {
      ++self->_a2dpRssiPoorCount;
    }
  }

  else
  {
    sub_1001EDF4C(v5, v6, v7);
  }
}

- (void)addA2DPRetx:(unsigned int)retx
{
  avgA2dpRetx = self->_avgA2dpRetx;
  v6 = [NSNumber numberWithUnsignedInt:?];
  [(NSMutableArray *)avgA2dpRetx addObject:v6];

  v7 = 32;
  if (retx > 0x27)
  {
    v7 = 28;
  }

  if (retx < 0x1E)
  {
    v7 = 36;
  }

  ++*(&self->super.isa + v7);
}

- (void)adda2DPSnr:(unsigned int)snr
{
  a2dpSnr = self->_a2dpSnr;
  v6 = [NSNumber numberWithUnsignedInt:?];
  [(NSMutableArray *)a2dpSnr addObject:v6];

  v7 = 40;
  if (snr > 0x13)
  {
    v7 = 44;
  }

  ++*(&self->super.isa + v7);
}

- (void)addA2DPPacketFlushRssi:(int)rssi
{
  v3 = *&rssi;
  v5 = [(AAAccessoryUsageSummary *)self _isValidRssi:?];
  if (v5)
  {
    avgA2dpFlushRssi = self->_avgA2dpFlushRssi;
    v9 = [NSNumber numberWithInt:v3];
    [(NSMutableArray *)avgA2dpFlushRssi addObject:v9];

    if (v3 > -71)
    {
      if (v3 < -60)
      {
        ++self->_a2dpPacketFlushMidRssiCount;
      }

      else
      {
        ++self->_a2dpPacketFlushGoodRssiCount;
      }
    }

    else
    {
      ++self->_a2dpPacketFlushPoorRssiCount;
    }
  }

  else
  {
    sub_1001EDFAC(v5, v6, v7);
  }
}

- (void)addA2DPPacketFlushRetx:(unsigned int)retx
{
  avgA2dpFlushRetx = self->_avgA2dpFlushRetx;
  v6 = [NSNumber numberWithUnsignedInt:?];
  [(NSMutableArray *)avgA2dpFlushRetx addObject:v6];

  v7 = 68;
  if (retx > 0x27)
  {
    v7 = 64;
  }

  if (retx < 0x1E)
  {
    v7 = 72;
  }

  ++*(&self->super.isa + v7);
}

- (void)_updateVolumeChange:(int)change
{
  if (change)
  {
    if (change == 1)
    {
      ++self->_volumeChnagePhoneCallCount;
    }

    else if (change == -1 && dword_1002F6998 <= 90)
    {
      if (dword_1002F6998 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001EE00C(self, a2, *&change);
      }
    }
  }

  else
  {
    ++self->_volumeChangeAudioVideoCount;
  }
}

- (void)_updateInEarState:(BOOL)state
{
  aaDevice = self->_aaDevice;
  if (!aaDevice)
  {
    sub_1001EE028(0, a2, state);
    return;
  }

  stateCopy = state;
  budState = self->_budState;
  if ([(AudioAccessoryDevice *)aaDevice primaryPlacement]== 1 && [(AudioAccessoryDevice *)self->_aaDevice secondaryPlacement]== 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = [(AudioAccessoryDevice *)self->_aaDevice primaryPlacement]== 1 && [(AudioAccessoryDevice *)self->_aaDevice secondaryPlacement]!= 1 || [(AudioAccessoryDevice *)self->_aaDevice primaryPlacement]!= 1 && [(AudioAccessoryDevice *)self->_aaDevice secondaryPlacement]== 1;
  }

  if (budState != v7 || stateCopy)
  {
    mach_absolute_time();
    v8 = UpTicksToSeconds();
    v9 = v8;
    if (budState == 1)
    {
      v10 = 108;
    }

    else
    {
      if (budState != 2)
      {
LABEL_18:
        self->_budState = v7;
        self->_budStateChangeTick = mach_absolute_time();
        if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
        {
          if (budState > 2)
          {
            v11 = "?";
          }

          else
          {
            v11 = off_1002B9408[budState];
          }

          v12 = "no";
          if (stateCopy)
          {
            v12 = "yes";
          }

          LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummary _updateInEarState:]", 30, "UpdateInEarState: OldBudState %s newBudState %s secondsSinceOldBudState %llus singleBudDuration %dm bothBudsDuration %dm force %s", v11, off_1002B9408[v7], v9, self->_singleBudDuration, self->_bothBudDuration, v12);
        }

        return;
      }

      v10 = 112;
    }

    *(&self->super.isa + v10) += v8 / 0x3C;
    goto LABEL_18;
  }
}

- (void)_updateListeningMode:(BOOL)mode
{
  aaDevice = self->_aaDevice;
  if (aaDevice)
  {
    modeCopy = mode;
    listeningMode = self->_listeningMode;
    listeningMode = [(AudioAccessoryDevice *)aaDevice listeningMode];
    mach_absolute_time();
    v8 = UpTicksToSeconds();
    if (listeningMode != listeningMode || modeCopy)
    {
      v10 = v8;
      if (listeningMode - 2 <= 2)
      {
        *(&self->_bothBudDuration + listeningMode) += v8 / 0x3C;
      }

      self->_listeningMode = listeningMode;
      self->_listeningModeStartTick = mach_absolute_time();
      if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EE088(listeningMode, listeningMode, self, v10);
      }
    }
  }

  else
  {
    sub_1001EE110(0, a2, mode);
  }
}

- (void)_updatePairingError:(unsigned int)error
{
  if (error)
  {
    v4 = *&error;
    pairingErrorMap = self->_pairingErrorMap;
    if (!pairingErrorMap)
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = self->_pairingErrorMap;
      self->_pairingErrorMap = v6;

      pairingErrorMap = self->_pairingErrorMap;
    }

    v8 = [NSNumber numberWithUnsignedInt:v4];
    v9 = [(NSMutableDictionary *)pairingErrorMap objectForKeyedSubscript:v8];
    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue] + 1);
    v11 = self->_pairingErrorMap;
    v12 = [NSNumber numberWithUnsignedInt:v4];
    [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v12];

    if (((v4 - 158) > 4 || ((1 << (v4 + 98)) & 0x19) == 0) && v4 != 1)
    {
      ++self->_pairingGeneralErrorCount;
    }
  }

  ++self->_pairingCount;
}

@end