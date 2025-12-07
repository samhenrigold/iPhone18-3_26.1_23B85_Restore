@interface AFMyriadAccessoryMessage
+ (BOOL)isMyriadRequestMessage:(id)message;
+ (id)myriadRequestTypeAsString:(unint64_t)string;
- (AFMyriadAccessoryMessage)initWithAccessoryMessage:(id)message accessoryId:(id)id;
- (AFMyriadAccessoryMessage)initWithAccessoryMessageAsDictionary:(id)dictionary accessoryId:(id)id;
- (AFMyriadAccessoryMessage)initWithRequestType:(unint64_t)type session:(unint64_t)session voiceTriggerEndTime:(double)time audioHash:(unsigned __int16)hash goodnessScore:(unsigned __int8)score userConfidenceScore:(unsigned __int8)confidenceScore tieBreaker:(unsigned __int8)breaker deviceClass:(unsigned __int8)self0 deviceGroup:(unsigned __int8)self1 productType:(unsigned __int8)self2 electionDecision:(unsigned __int8)self3 emergencyHandled:(unsigned __int8)self4 ack:(unsigned __int8)self5 accessoryId:(id)self6;
- (id)description;
- (id)initElectionDecisionMessageWithSessionId:(unint64_t)id decision:(BOOL)decision accessoryId:(id)accessoryId;
- (id)initPreheatMessageWithSessionId:(unint64_t)id accessoryId:(id)accessoryId;
- (id)initResetMessageWithSessionId:(unint64_t)id accessoryId:(id)accessoryId;
- (id)messageAsData;
- (void)_initWithMessage:(const myrAccessoryMessage *)message;
- (void)_initializeMessageObj:(id)obj;
- (void)_initializeMessageObjFromDictionary:(id)dictionary;
@end

@implementation AFMyriadAccessoryMessage

- (id)description
{
  v28[16] = *MEMORY[0x1E69E9840];
  v27[0] = @"iSane";
  v26 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSane];
  v28[0] = v26;
  v27[1] = @"ACK";
  ack = self->_message.ack;
  if (self->_message.ack)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"1 (ACKNOWLEDGEMENT)"];
  }

  else
  {
    v3 = @"0";
  }

  v18 = v3;
  v28[1] = v3;
  v27[2] = @"usesSerializedProtocol";
  v24 = [MEMORY[0x1E696AD98] numberWithBool:self->_serializedProtocol];
  v28[2] = v24;
  v27[3] = @"Version";
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_message.version];
  v28[3] = v23;
  v27[4] = @"RequestType";
  v4 = MEMORY[0x1E696AEC0];
  requestType = self->_message.requestType;
  v22 = [AFMyriadAccessoryMessage myriadRequestTypeAsString:requestType];
  v21 = [v4 stringWithFormat:@"%llu (%@)", requestType, v22];
  v28[4] = v21;
  v27[5] = @"Session";
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_message.session];
  v28[5] = v20;
  v27[6] = @"VoiceTrigger endtime";
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:self->_message.voiceTriggerEndTime];
  v28[6] = v19;
  v27[7] = @"AudioHash";
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hash=%#04x", self->_message.audioHash];
  v28[7] = v6;
  v27[8] = @"GoodnessScore";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_message.goodnessScore];
  v28[8] = v7;
  v27[9] = @"UserConfidence";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_message.userConfidenceScore];
  v28[9] = v8;
  v27[10] = @"TieBreaker";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_message.tieBreaker];
  v28[10] = v9;
  v27[11] = @"DeviceClass";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_message.deviceClass];
  v28[11] = v10;
  v27[12] = @"DeviceGroup";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_message.deviceGroup];
  v28[12] = v11;
  v27[13] = @"ProductType";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_message.productType];
  v28[13] = v12;
  v27[14] = @"ElectionDecision";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_message.electionDecision];
  v28[14] = v13;
  v27[15] = @"EmergencyHandled";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_message.emergencyHandled];
  v28[15] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:16];

  if (ack)
  {
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v15];

  return v16;
}

- (id)messageAsData
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  [v3 appendBytes:&self->_message length:48];

  return v3;
}

- (AFMyriadAccessoryMessage)initWithAccessoryMessageAsDictionary:(id)dictionary accessoryId:(id)id
{
  dictionaryCopy = dictionary;
  idCopy = id;
  v11.receiver = self;
  v11.super_class = AFMyriadAccessoryMessage;
  v8 = [(AFMyriadAccessoryMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accessoryId, id);
    *&v9->_message.audioHash = 0u;
    *&v9->_message.session = 0u;
    *&v9->_message.version = 0u;
    [(AFMyriadAccessoryMessage *)v9 _initializeMessageObjFromDictionary:dictionaryCopy];
  }

  return v9;
}

- (AFMyriadAccessoryMessage)initWithAccessoryMessage:(id)message accessoryId:(id)id
{
  messageCopy = message;
  idCopy = id;
  v11.receiver = self;
  v11.super_class = AFMyriadAccessoryMessage;
  v8 = [(AFMyriadAccessoryMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accessoryId, id);
    *&v9->_message.audioHash = 0u;
    *&v9->_message.session = 0u;
    *&v9->_message.version = 0u;
    [(AFMyriadAccessoryMessage *)v9 _initializeMessageObj:messageCopy];
  }

  return v9;
}

- (id)initResetMessageWithSessionId:(unint64_t)id accessoryId:(id)accessoryId
{
  accessoryIdCopy = accessoryId;
  v11.receiver = self;
  v11.super_class = AFMyriadAccessoryMessage;
  v8 = [(AFMyriadAccessoryMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    *(v8 + 9) = 0u;
    *(v8 + 25) = 0u;
    *(v8 + 40) = 0u;
    v8[8] = 1;
    *(v8 + 2) = 1;
    *(v8 + 3) = id;
    objc_storeStrong(v8 + 12, accessoryId);
    v9[33] = 257;
    [v9 _initWithMessage:v9 + 4];
  }

  return v9;
}

- (id)initElectionDecisionMessageWithSessionId:(unint64_t)id decision:(BOOL)decision accessoryId:(id)accessoryId
{
  accessoryIdCopy = accessoryId;
  v13.receiver = self;
  v13.super_class = AFMyriadAccessoryMessage;
  v10 = [(AFMyriadAccessoryMessage *)&v13 init];
  v11 = v10;
  if (v10)
  {
    *(v10 + 9) = 0u;
    *(v10 + 25) = 0u;
    *(v10 + 40) = 0u;
    v10[8] = 1;
    *(v10 + 2) = 10;
    *(v10 + 3) = id;
    v10[48] = decision;
    objc_storeStrong(v10 + 12, accessoryId);
    v11[33] = 257;
    [v11 _initWithMessage:v11 + 4];
  }

  return v11;
}

- (id)initPreheatMessageWithSessionId:(unint64_t)id accessoryId:(id)accessoryId
{
  accessoryIdCopy = accessoryId;
  v11.receiver = self;
  v11.super_class = AFMyriadAccessoryMessage;
  v8 = [(AFMyriadAccessoryMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    *(v8 + 9) = 0u;
    *(v8 + 25) = 0u;
    *(v8 + 40) = 0u;
    v8[8] = 1;
    *(v8 + 2) = 6;
    *(v8 + 3) = id;
    objc_storeStrong(v8 + 12, accessoryId);
    v9[33] = 257;
    [v9 _initWithMessage:v9 + 4];
  }

  return v9;
}

- (AFMyriadAccessoryMessage)initWithRequestType:(unint64_t)type session:(unint64_t)session voiceTriggerEndTime:(double)time audioHash:(unsigned __int16)hash goodnessScore:(unsigned __int8)score userConfidenceScore:(unsigned __int8)confidenceScore tieBreaker:(unsigned __int8)breaker deviceClass:(unsigned __int8)self0 deviceGroup:(unsigned __int8)self1 productType:(unsigned __int8)self2 electionDecision:(unsigned __int8)self3 emergencyHandled:(unsigned __int8)self4 ack:(unsigned __int8)self5 accessoryId:(id)self6
{
  idCopy = id;
  v28.receiver = self;
  v28.super_class = AFMyriadAccessoryMessage;
  v25 = [(AFMyriadAccessoryMessage *)&v28 init];
  v26 = v25;
  if (v25)
  {
    *(v25 + 9) = 0u;
    *(v25 + 25) = 0u;
    *(v25 + 40) = 0u;
    v25[8] = 1;
    *(v25 + 2) = type;
    *(v25 + 3) = session;
    *(v25 + 4) = time;
    *(v25 + 20) = hash;
    v25[42] = score;
    v25[43] = confidenceScore;
    v25[44] = breaker;
    v25[45] = class;
    v25[46] = group;
    v25[47] = productType;
    v25[48] = decision;
    v25[49] = handled;
    v25[50] = ack;
    objc_storeStrong(v25 + 12, id);
    *(v26 + 33) = 257;
    [v26 _initWithMessage:v26 + 8];
  }

  return v26;
}

- (void)_initWithMessage:(const myrAccessoryMessage *)message
{
  if (message)
  {
    self->_version = message->version;
    self->_requestType = message->requestType;
    self->_session = message->session;
    self->_voiceTriggerEndTime = message->voiceTriggerEndTime;
    self->_audioHash = message->audioHash;
    self->_goodnessScore = message->goodnessScore;
    self->_userConfidenceScore = message->userConfidenceScore;
    self->_tieBreaker = message->tieBreaker;
    self->_deviceClass = message->deviceClass;
    self->_deviceGroup = message->deviceGroup;
    self->_productType = message->productType;
    self->_electionDecision = message->electionDecision;
    self->_emergencyHandled = message->emergencyHandled;
    self->_ack = message->ack;
  }
}

- (void)_initializeMessageObjFromDictionary:(id)dictionary
{
  v33 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = +[AFMyriadAccessoryMessage acknowledgeRequestKey];
  v6 = [dictionaryCopy objectForKeyedSubscript:v5];

  v7 = +[AFMyriadAccessoryMessage sessionIdKey];
  v8 = [dictionaryCopy objectForKeyedSubscript:v7];

  v9 = +[AFMyriadAccessoryMessage requestTypeKey];
  v10 = [dictionaryCopy objectForKeyedSubscript:v9];

  v11 = +[AFMyriadAccessoryMessage messageKey];
  v12 = [dictionaryCopy objectForKeyedSubscript:v11];

  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AFMyriadAccessoryMessage *)self _initializeMessageObj:v12];
      goto LABEL_31;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v8;
      v14 = v10;
      self->_serializedProtocol = 0;
      self->_message.requestType = [v14 unsignedLongValue];
      self->_message.session = [(NSUUID *)v13 unsignedLongValue];
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v6 unsignedIntValue])
          {
            self->_message.ack = 1;
            self->_isSane = 1;
LABEL_30:

            goto LABEL_31;
          }
        }
      }

      if (v14)
      {
        intValue = [v14 intValue];
        switch(intValue)
        {
          case 10:
            self->_isSane = 1;
            v22 = +[AFMyriadAccessoryMessage electionDecisionKey];
            v20 = [dictionaryCopy objectForKeyedSubscript:v22];

            if (v20)
            {
              unsignedIntValue = [v20 unsignedIntValue];
            }

            else
            {
              unsignedIntValue = 0;
            }

            self->_message.electionDecision = unsignedIntValue;
            break;
          case 9:
            self->_isSane = 1;
            v19 = +[AFMyriadAccessoryMessage emergencyHandledKey];
            v20 = [dictionaryCopy objectForKeyedSubscript:v19];

            if (v20)
            {
              unsignedIntValue2 = [v20 unsignedIntValue];
            }

            else
            {
              unsignedIntValue2 = 0;
            }

            self->_message.emergencyHandled = unsignedIntValue2;
            break;
          case 8:
            self->_isSane = 1;
            [(AFMyriadAccessoryMessage *)self _initWithMessage:&self->_message];
            goto LABEL_30;
          default:
            goto LABEL_18;
        }

        [(AFMyriadAccessoryMessage *)self _initWithMessage:&self->_message];

        goto LABEL_30;
      }

LABEL_18:
      v18 = AFSiriLogContextMyriad;
      if (os_log_type_enabled(AFSiriLogContextMyriad, OS_LOG_TYPE_DEBUG))
      {
        accessoryId = self->_accessoryId;
        v25 = 136315650;
        v26 = "[AFMyriadAccessoryMessage _initializeMessageObjFromDictionary:]";
        v27 = 2112;
        v28 = v14;
        v29 = 2112;
        v30 = accessoryId;
        _os_log_debug_impl(&dword_1912FE000, v18, OS_LOG_TYPE_DEBUG, "%s Unknown request type %@ for accessory id: %@, Ignoring.", &v25, 0x20u);
      }

      self->_isSane = 0;
      goto LABEL_30;
    }
  }

  v15 = AFSiriLogContextMyriad;
  if (os_log_type_enabled(AFSiriLogContextMyriad, OS_LOG_TYPE_INFO))
  {
    v16 = self->_accessoryId;
    v25 = 136315906;
    v26 = "[AFMyriadAccessoryMessage _initializeMessageObjFromDictionary:]";
    v27 = 2112;
    v28 = dictionaryCopy;
    v29 = 2112;
    v30 = v8;
    v31 = 2112;
    v32 = v16;
    _os_log_impl(&dword_1912FE000, v15, OS_LOG_TYPE_INFO, "%s Received a payload %@ with session id %@ for accessory id: %@, Ignoring.", &v25, 0x2Au);
  }

  self->_isSane = 0;
LABEL_31:
}

- (void)_initializeMessageObj:(id)obj
{
  v21 = *MEMORY[0x1E69E9840];
  objCopy = obj;
  v5 = objCopy;
  self->_serializedProtocol = 1;
  if (objCopy)
  {
    if ([objCopy length])
    {
      v14 = 0;
      [v5 getBytes:&v14 range:{0, 1}];
      if (v14)
      {
        v6 = [v5 length];
        v7 = v6;
        v8 = v14;
        if (v14 && v6 >= 0x30)
        {
          bytes = [v5 bytes];
          p_message = &self->_message;
          selfCopy2 = self;
          v12 = 48;
        }

        else
        {
          if (v14 || v6 > 0x2F)
          {
            self->_isSane = 0;
            v13 = AFSiriLogContextMyriad;
            if (os_log_type_enabled(AFSiriLogContextMyriad, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v16 = "[AFMyriadAccessoryMessage _initializeMessageObj:]";
              v17 = 1024;
              v18 = v8;
              v19 = 2048;
              v20 = v7;
              _os_log_error_impl(&dword_1912FE000, v13, OS_LOG_TYPE_ERROR, "%s Wedged message received with version: %hhu and message length: %zu", buf, 0x1Cu);
            }

            goto LABEL_13;
          }

          bytes = [v5 bytes];
          p_message = &self->_message;
          selfCopy2 = self;
          v12 = v7;
        }

        [(AFMyriadAccessoryMessage *)selfCopy2 _copyRawBytesFromSource:bytes toDest:p_message length:v12];
        self->_isSane = 1;
LABEL_13:
        [(AFMyriadAccessoryMessage *)self _initWithMessage:&self->_message];
      }
    }
  }
}

+ (id)myriadRequestTypeAsString:(unint64_t)string
{
  if (string - 1 > 9)
  {
    return @"myrRequestTypeUnknown";
  }

  else
  {
    return off_1E7346860[string - 1];
  }
}

+ (BOOL)isMyriadRequestMessage:(id)message
{
  messageCopy = message;
  v4 = +[AFMyriadAccessoryMessage acknowledgeRequestKey];
  v5 = [messageCopy objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = +[AFMyriadAccessoryMessage requestTypeKey];
    v8 = [messageCopy objectForKeyedSubscript:v7];
    if (v8)
    {
      v6 = 1;
    }

    else
    {
      v9 = +[AFMyriadAccessoryMessage messageKey];
      v10 = [messageCopy objectForKeyedSubscript:v9];
      v6 = v10 != 0;
    }
  }

  return v6;
}

@end