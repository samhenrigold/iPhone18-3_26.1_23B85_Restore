@interface BLEMIDIDataReceiver
- (BLEMIDIDataReceiver)init;
- (BLEMIDIDataReceiver)initWithEndpoint:(unsigned int)endpoint owner:(MIDIDriverInterface *)owner;
- (const)nextMIDIEventFrom:(const char *)from to:(const char *)to;
- (void)dealloc;
- (void)unpackValue:(id)value;
@end

@implementation BLEMIDIDataReceiver

- (BLEMIDIDataReceiver)init
{
  sub_BDA4(self, a2);
  v2 = qword_1D998;
  if (os_log_type_enabled(qword_1D998, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "BTLEMIDIDataReceiver.mm";
    v6 = 1024;
    v7 = 24;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d Do not call init. Instead call initWithEndpoint.", &v4, 0x12u);
  }

  return 0;
}

- (BLEMIDIDataReceiver)initWithEndpoint:(unsigned int)endpoint owner:(MIDIDriverInterface *)owner
{
  v9.receiver = self;
  v9.super_class = BLEMIDIDataReceiver;
  v6 = [(BLEMIDIDataReceiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->endpoint = endpoint;
    v6->driver = owner;
    v6->packetEmitter.mEP = endpoint;
    v6->timeStamper = objc_alloc_init(BLEMIDITimeStamper);
    v7->logBuffer[0] = 0;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BLEMIDIDataReceiver;
  [(BLEMIDIDataReceiver *)&v3 dealloc];
}

- (const)nextMIDIEventFrom:(const char *)from to:(const char *)to
{
  v4 = *from;
  v5 = v4 >> 4;
  if (v4 >> 4 <= 0xF)
  {
    if (((1 << v5) & 0x4F00) != 0)
    {
LABEL_3:
      v6 = from + 3;
      goto LABEL_6;
    }

    if (((1 << v5) & 0x3000) != 0)
    {
      goto LABEL_5;
    }

    if (v5 == 15)
    {
      if (*from > 0xF1u)
      {
        if (v4 == 242)
        {
          goto LABEL_3;
        }

        if (v4 != 243)
        {
          goto LABEL_20;
        }

        goto LABEL_5;
      }

      if (v4 != 240)
      {
        if (v4 != 241)
        {
LABEL_20:
          v6 = from + 1;
          goto LABEL_6;
        }

LABEL_5:
        v6 = from + 2;
        goto LABEL_6;
      }
    }
  }

  v8 = from + 1;
  do
  {
    v6 = v8;
    if (v8 >= to)
    {
      break;
    }

    ++v8;
  }

  while ((*v6 & 0x80000000) == 0);
LABEL_6:
  if (v6 >= to)
  {
    return to;
  }

  else
  {
    return v6;
  }
}

- (void)unpackValue:(id)value
{
  driver = self->driver;
  v6 = [value length];
  bytes = [value bytes];
  if (driver[11])
  {
    return;
  }

  v8 = bytes;
  nowInMS = [(BLEMIDIDataReceiver *)self nowInMS];
  [(BLEMIDITimeStamper *)self->timeStamper setConnectionIntervalNanos:driver[32]];
  v10 = [(BLEMIDITimeStamper *)self->timeStamper setReceiveTime:nowInMS];
  v12 = *v8;
  if ((*v8 & 0x80000000) == 0)
  {
    sub_BDA4(v10, v11);
    v13 = qword_1D998;
    if (!os_log_type_enabled(qword_1D998, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    *buf = 136315650;
    v68 = "BTLEMIDIDataReceiver.mm";
    v69 = 1024;
    v70 = 128;
    v71 = 1024;
    LODWORD(v72[0]) = v12;
    v14 = "%25s:%-5d ERROR: Bad header received (0x%0X). Discarding.";
    v15 = v13;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 24;
LABEL_56:
    _os_log_impl(&dword_0, v15, v16, v14, buf, v17);
    goto LABEL_57;
  }

  v18 = v12 & 0x7F;
  v19 = v12 & 0x3F;
  v20 = v18 > 0x3F;
  if (v18 > 0x3F)
  {
    v18 = v19;
  }

  v63 = v18;
  if (v20)
  {
    sub_BDA4(v10, v11);
    v21 = qword_1D998;
    if (v19)
    {
      if (!os_log_type_enabled(qword_1D998, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }

      *buf = 136315394;
      v68 = "BTLEMIDIDataReceiver.mm";
      v69 = 1024;
      v70 = 146;
      v14 = "%25s:%-5d Invalid control message received. Discarding packet.";
      v15 = v21;
      v16 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(qword_1D998, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_57;
      }

      *buf = 136315394;
      v68 = "BTLEMIDIDataReceiver.mm";
      v69 = 1024;
      v70 = 142;
      v14 = "%25s:%-5d Ignoring packet due to kBLEMIDIControlMessageIgnorePayload message.";
      v15 = v21;
      v16 = OS_LOG_TYPE_DEBUG;
    }

    v17 = 18;
    goto LABEL_56;
  }

  if (v6 < 2)
  {
    v62 = 0;
LABEL_50:
    if (self->packetEmitter.mIsDirty)
    {
      sub_C6A8(&self->packetEmitter);
    }

    [(BLEMIDITimeStamper *)self->timeStamper addOffset:v62, v57];
    return;
  }

  v57 = nowInMS;
  valueCopy = value;
  time = 0;
  v62 = 0;
  v22 = 0;
  v23 = 0;
  v65 = 0;
  v24 = &v8[v6];
  v25 = (v6 - 1);
  v26 = (v8 + 1);
  v61 = &v8[v6];
  while (1)
  {
    v27 = *v26;
    if ((v27 & 0x80000000) == 0)
    {
      if (v26 == (v8 + 1))
      {
        time = self->lastSysExTimeStamp;
        if (v26 >= v24)
        {
LABEL_42:
          LOWORD(v36) = v25;
        }

        else
        {
          v36 = 0;
          while ((v26[v36] & 0x80000000) == 0)
          {
            if (v61 - v26 == ++v36)
            {
              goto LABEL_42;
            }
          }

          v23 = 0;
        }

        goto LABEL_34;
      }

      if (!v23)
      {
        sub_BDA4(v10, v11);
        v47 = qword_1D998;
        if (os_log_type_enabled(qword_1D998, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v68 = "BTLEMIDIDataReceiver.mm";
          v69 = 1024;
          v70 = 162;
          _os_log_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: Expected a timestamp byte, concurrent running status, or SysEx continuation. The full packet will be logged below.", buf, 0x12u);
        }

        bytes2 = [valueCopy bytes];
        v50 = +[BLEMIDIAccessor logEvent:length:timeStamp:intoBuffer:](BLEMIDIAccessor, "logEvent:length:timeStamp:intoBuffer:", bytes2, [valueCopy length], v58, self->logBuffer);
        sub_BDA4(v50, v51);
        v52 = qword_1D998;
        if (os_log_type_enabled(qword_1D998, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v68 = "BTLEMIDIDataReceiver.mm";
          v69 = 1024;
          v70 = 164;
          v71 = 2080;
          v72[0] = self->logBuffer;
          v14 = "%25s:%-5d %s";
LABEL_67:
          v15 = v52;
          v16 = OS_LOG_TYPE_ERROR;
          v17 = 28;
          goto LABEL_56;
        }

        goto LABEL_57;
      }

      goto LABEL_20;
    }

    v64 = v23;
    v28 = v24;
    v30 = (v26 + 1);
    v29 = v26[1];
    v31 = v27 & 0x7F;
    v32 = v25 - 1;
    v33 = (v31 < v22) | v65;
    v62 = [BLEMIDIAccessor reconstructWithHighByte:v63 lowByte:v31 overflow:v33 & 1]& 0x1FFF;
    [(BLEMIDITimeStamper *)self->timeStamper generateTimeStampForOffset:?];
    v34 = __udivti3();
    time = v34;
    self->lastSysExTimeStamp = v34;
    v65 = v33;
    if (v29 < 0)
    {
      v24 = v28;
      if (*v30 == 245)
      {
        sub_BDA4(v34, v35);
        v44 = qword_1D998;
        v23 = v64;
        if (os_log_type_enabled(qword_1D998, OS_LOG_TYPE_DEBUG))
        {
          v45 = v26[1];
          v46 = v26[2];
          *buf = 136315906;
          v68 = "BTLEMIDIDataReceiver.mm";
          v69 = 1024;
          v70 = 213;
          v71 = 1024;
          LODWORD(v72[0]) = v45;
          WORD2(v72[0]) = 1024;
          *(v72 + 6) = v46;
          _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEBUG, "%25s:%-5d WARNING: Discarding 2-byte message: 0x%0X 0x%0X", buf, 0x1Eu);
        }

        v30 = (v26 + 3);
        v32 = v25 - 3;
      }

      else
      {
        v23 = v64;
      }

      goto LABEL_21;
    }

    ++v26;
    v22 = v31;
    --v25;
    v24 = v28;
    v23 = v64;
    if (!v64)
    {
      break;
    }

LABEL_20:
    *(v26 - 1) = v23;
    v32 = v25 + 1;
    v31 = v22;
    v30 = (v26 - 1);
LABEL_21:
    v10 = [(BLEMIDIDataReceiver *)self nextMIDIEventFrom:v30 to:v24, v57];
    LOWORD(v36) = v10 - v30;
    v37 = *v30;
    v38 = v37 & 0xF8;
    if (v37 <= 0xF7)
    {
      v39 = v8;
    }

    else
    {
      v39 = v30;
    }

    v40 = v38 == 240;
    if (v38 == 240)
    {
      v41 = v8;
    }

    else
    {
      v41 = v39;
    }

    if (v40)
    {
      v42 = 0;
    }

    else
    {
      v42 = v23;
    }

    if (v37 < -16)
    {
      v23 = *v30;
    }

    else
    {
      v8 = v41;
      v23 = v42;
    }

    v22 = v31;
    v26 = v30;
    v25 = v32;
LABEL_34:
    v43 = v36;
    if (v36)
    {
      self->packetEmitter.mIsDirty = 1;
      v10 = sub_DB8(&self->packetEmitter, time, v36, v26);
    }

    v25 -= v43;
    v26 += v43;
    if (v26 >= v24)
    {
      goto LABEL_50;
    }
  }

  sub_BDA4(v34, v35);
  v53 = qword_1D998;
  if (os_log_type_enabled(qword_1D998, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v68 = "BTLEMIDIDataReceiver.mm";
    v69 = 1024;
    v70 = 204;
    _os_log_impl(&dword_0, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: Discarding malformed packet. The full packet will be logged below.", buf, 0x12u);
  }

  bytes3 = [valueCopy bytes];
  v55 = +[BLEMIDIAccessor logEvent:length:timeStamp:intoBuffer:](BLEMIDIAccessor, "logEvent:length:timeStamp:intoBuffer:", bytes3, [valueCopy length], v59, self->logBuffer);
  sub_BDA4(v55, v56);
  v52 = qword_1D998;
  if (os_log_type_enabled(qword_1D998, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v68 = "BTLEMIDIDataReceiver.mm";
    v69 = 1024;
    v70 = 206;
    v71 = 2080;
    v72[0] = self->logBuffer;
    v14 = "%25s:%-5d %s";
    goto LABEL_67;
  }

LABEL_57:
  self->packetEmitter.mCurPacket = MIDIPacketListInit(self->packetEmitter.mBuf);
}

@end