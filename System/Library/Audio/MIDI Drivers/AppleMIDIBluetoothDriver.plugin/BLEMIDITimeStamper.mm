@interface BLEMIDITimeStamper
- (BLEMIDITimeStamper)init;
- (BOOL)offsetIsUsable:(unsigned __int16)usable numberOfWraps:(unsigned __int16 *)wraps;
- (int)modsignWithTimeDifference:(int64_t)difference range:(unsigned __int16)range;
- (unint64_t)generateTimeStampForOffset:(unsigned __int16)offset;
- (void)addOffset:(unsigned __int16)offset;
- (void)reset;
- (void)setReceiveTime:(unint64_t)time;
@end

@implementation BLEMIDITimeStamper

- (BLEMIDITimeStamper)init
{
  v3.receiver = self;
  v3.super_class = BLEMIDITimeStamper;
  result = [(BLEMIDITimeStamper *)&v3 init];
  if (result)
  {
    result->hasBeenReset = 1;
  }

  return result;
}

- (void)reset
{
  self->lastReceivedOffset = 0;
  self->lastGeneratedTimestamp = 0;
  self->lastReceivedOffsetTimestamp = 0;
  self->lastReceivedTime = 0;
  self->hasBeenReset = 1;
}

- (void)setReceiveTime:(unint64_t)time
{
  receivedTime = self->receivedTime;
  connectionInterval_ns = self->connectionInterval_ns;
  if (time - receivedTime <= connectionInterval_ns / 0xF4240)
  {
    v6 = self->connectionInterval_ns;
  }

  else
  {
    v6 = 3 * connectionInterval_ns;
  }

  self->receivedTime = time;
  self->lastReceivedTime = receivedTime;
  self->lastReceivedOffsetTimestamp = self->lastGeneratedTimestamp;
  self->averageWaitTime_ns = v6 >> 1;
  self->firstOffset = -1;
  sub_B5F8(self, a2);
  v7 = qword_1D988;
  if (os_log_type_enabled(qword_1D988, OS_LOG_TYPE_DEBUG))
  {
    v8 = self->receivedTime;
    lastReceivedTime = self->lastReceivedTime;
    v10 = 136316162;
    v11 = "BTLEMIDITimeStamper.mm";
    v12 = 1024;
    v13 = 62;
    v14 = 2048;
    v15 = v8;
    v16 = 2048;
    v17 = lastReceivedTime;
    v18 = 2048;
    v19 = v8 - lastReceivedTime;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d receiveTime = %llu, lastReceivedTime = %llu (delta = %llu)", &v10, 0x30u);
  }
}

- (void)addOffset:(unsigned __int16)offset
{
  offsetCopy = offset;
  if (!self->hasBeenReset)
  {
    sub_B5F8(self, a2);
    v5 = qword_1D988;
    if (os_log_type_enabled(qword_1D988, OS_LOG_TYPE_DEBUG))
    {
      lastReceivedOffset = self->lastReceivedOffset;
      v7 = 136316162;
      v8 = "BTLEMIDITimeStamper.mm";
      v9 = 1024;
      v10 = 68;
      v11 = 1024;
      v12 = offsetCopy;
      v13 = 1024;
      v14 = lastReceivedOffset;
      v15 = 1024;
      v16 = offsetCopy - lastReceivedOffset;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d this offset = %d, lastReceivedOffset = %d (delta = %d)", &v7, 0x24u);
    }
  }

  self->hasBeenReset = 0;
  self->lastReceivedOffset = offsetCopy;
}

- (unint64_t)generateTimeStampForOffset:(unsigned __int16)offset
{
  offsetCopy = offset;
  selfCopy = self;
  offsetCopy2 = offset;
  v22 = 0;
  lastReceivedTime = self->lastReceivedTime;
  if (lastReceivedTime)
  {
    self = [(BLEMIDITimeStamper *)self offsetIsUsable:offset numberOfWraps:&v22];
    if (self)
    {
      if (selfCopy->lastReceivedOffset <= offsetCopy)
      {
        lastReceivedTime = offsetCopy;
      }

      else
      {
        lastReceivedTime = offsetCopy + 0x2000;
      }

      offsetCopy2 = lastReceivedTime + (v22 << 13);
      LOBYTE(lastReceivedTime) = 1;
    }

    else
    {
      sub_B5F8(self, a2);
      v7 = qword_1D988;
      if (os_log_type_enabled(qword_1D988, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v24 = "BTLEMIDITimeStamper.mm";
        v25 = 1024;
        v26 = 88;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d Offset not usable. Resetting ...", buf, 0x12u);
      }

      self = [(BLEMIDITimeStamper *)selfCopy reset];
      LOBYTE(lastReceivedTime) = 0;
    }
  }

  firstOffset = selfCopy->firstOffset;
  if (firstOffset != -1)
  {
    v9 = (offsetCopy2 - firstOffset + ((offsetCopy2 - firstOffset) >> 31 << 13));
    if (lastReceivedTime)
    {
      goto LABEL_12;
    }

LABEL_17:
    receivedTime = selfCopy->receivedTime;
    lastGeneratedTimestamp = receivedTime + v9 - selfCopy->averageWaitTime_ns / 0xF4240;
    goto LABEL_18;
  }

  v9 = 0;
  selfCopy->firstOffset = offsetCopy;
  if ((lastReceivedTime & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  lastGeneratedTimestamp = offsetCopy2 - selfCopy->lastReceivedOffset + selfCopy->lastReceivedOffsetTimestamp;
  receivedTime = selfCopy->receivedTime;
  if (lastGeneratedTimestamp > receivedTime)
  {
    sub_B5F8(self, a2);
    v12 = qword_1D988;
    self = os_log_type_enabled(qword_1D988, OS_LOG_TYPE_INFO);
    if (self)
    {
      v13 = lastGeneratedTimestamp - selfCopy->receivedTime;
      *buf = 136315650;
      v24 = "BTLEMIDITimeStamper.mm";
      v25 = 1024;
      v26 = 115;
      v27 = 2048;
      *v28 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "%25s:%-5d Timestamp not allowed to jump into the future %llu ms.", buf, 0x1Cu);
    }

    receivedTime = selfCopy->receivedTime;
    lastGeneratedTimestamp = receivedTime;
  }

LABEL_18:
  if (lastGeneratedTimestamp >= selfCopy->lastGeneratedTimestamp)
  {
    if (lastGeneratedTimestamp < receivedTime - selfCopy->averageWaitTime_ns)
    {
      sub_B5F8(self, a2);
      v16 = qword_1D988;
      self = os_log_type_enabled(qword_1D988, OS_LOG_TYPE_INFO);
      if (self)
      {
        v17 = selfCopy->receivedTime - lastGeneratedTimestamp;
        *buf = 136315906;
        v24 = "BTLEMIDITimeStamper.mm";
        v25 = 1024;
        v26 = 125;
        v27 = 2048;
        *v28 = lastGeneratedTimestamp;
        *&v28[8] = 2048;
        v29 = v17;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%25s:%-5d Late timestamp %llu being applied (%llu ms in the past)", buf, 0x26u);
      }
    }
  }

  else
  {
    sub_B5F8(self, a2);
    v14 = qword_1D988;
    self = os_log_type_enabled(qword_1D988, OS_LOG_TYPE_INFO);
    if (self)
    {
      v15 = selfCopy->lastGeneratedTimestamp - lastGeneratedTimestamp;
      *buf = 136315650;
      v24 = "BTLEMIDITimeStamper.mm";
      v25 = 1024;
      v26 = 122;
      v27 = 2048;
      *v28 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%25s:%-5d Timestamp not allowed to jump backwards %llu ms.", buf, 0x1Cu);
    }

    lastGeneratedTimestamp = selfCopy->lastGeneratedTimestamp;
  }

  sub_B5F8(self, a2);
  v18 = qword_1D988;
  if (os_log_type_enabled(qword_1D988, OS_LOG_TYPE_DEBUG))
  {
    lastReceivedOffset = selfCopy->lastReceivedOffset;
    v20 = lastGeneratedTimestamp - selfCopy->lastReceivedOffsetTimestamp;
    *buf = 136316674;
    v24 = "BTLEMIDITimeStamper.mm";
    v25 = 1024;
    v26 = 128;
    v27 = 1024;
    *v28 = offsetCopy;
    *&v28[4] = 1024;
    *&v28[6] = lastReceivedOffset;
    LOWORD(v29) = 1024;
    *(&v29 + 2) = offsetCopy - lastReceivedOffset;
    HIWORD(v29) = 2048;
    v30 = lastGeneratedTimestamp;
    v31 = 2048;
    v32 = v20;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Generated timestamp for offset %d (lastReceivedOffset = %d, delta = %d) => %llu (delta = %llu)", buf, 0x38u);
  }

  selfCopy->lastGeneratedTimestamp = lastGeneratedTimestamp;
  return lastGeneratedTimestamp;
}

- (BOOL)offsetIsUsable:(unsigned __int16)usable numberOfWraps:(unsigned __int16 *)wraps
{
  v4 = self->receivedTime - self->lastReceivedTime;
  v5 = usable - self->lastReceivedOffset + ((usable - self->lastReceivedOffset) >> 31 << 13);
  v6 = v4 - v5;
  if (v6 > -4097)
  {
    v13 = [(BLEMIDITimeStamper *)self modsignWithTimeDifference:v4 - v5 range:0x2000];
    if (v13 >= 0)
    {
      v15 = v13;
    }

    else
    {
      v15 = -v13;
    }

    if (v15 < 0xC78)
    {
      *wraps = ((v6 + 12288) >> 13) - 1;
      LOBYTE(v8) = 1;
      return v8;
    }

    v16 = v13;
    sub_B5F8(v13, v14);
    v17 = qword_1D988;
    v8 = os_log_type_enabled(qword_1D988, OS_LOG_TYPE_INFO);
    if (v8)
    {
      v19 = 136316162;
      v20 = "BTLEMIDITimeStamper.mm";
      v21 = 1024;
      v22 = 157;
      v23 = 2048;
      v24 = v4;
      v25 = 1024;
      v26 = v5;
      v27 = 1024;
      LODWORD(v28) = v16;
      v9 = "%25s:%-5d Bluetooth timestamp is too far away from center line. ltd = %llu, od = %d, m = %d";
      v10 = v17;
      v11 = 40;
      goto LABEL_10;
    }
  }

  else
  {
    sub_B5F8(self, a2);
    v7 = qword_1D988;
    v8 = os_log_type_enabled(qword_1D988, OS_LOG_TYPE_INFO);
    if (v8)
    {
      v19 = 136316162;
      v20 = "BTLEMIDITimeStamper.mm";
      v21 = 1024;
      v22 = 149;
      v23 = 2048;
      v24 = v4;
      v25 = 1024;
      v26 = v5;
      v27 = 2048;
      v28 = v4 - v5;
      v9 = "%25s:%-5d Bluetooth timestamp is in ambiguous territory. ltd = %llu, od = %d, diff = %lld";
      v10 = v7;
      v11 = 44;
LABEL_10:
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, v9, &v19, v11);
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (int)modsignWithTimeDifference:(int64_t)difference range:(unsigned __int16)range
{
  v4 = difference % range;
  if (v4 >= range >> 1)
  {
    rangeCopy = range;
  }

  else
  {
    rangeCopy = 0;
  }

  if (v4 + (range >> 1) < 0 != __OFADD__(v4, range >> 1))
  {
    rangeCopy2 = range;
  }

  else
  {
    rangeCopy2 = -rangeCopy;
  }

  return rangeCopy2 + v4;
}

@end