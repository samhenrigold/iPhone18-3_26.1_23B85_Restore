@interface VCMediaNegotiationBlobAudioSettings
+ (int)negotiationPayloadFromPayload:(int)payload;
+ (int)payloadFromNegotiationPayload:(int)payload;
- (BOOL)isEqual:(id)equal;
- (VCMediaNegotiationBlobAudioSettings)initWithAudioConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)newMediaNegotiatorAudioConfiguration;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)printWithLogFile:(void *)file;
- (void)writeTo:(id)to;
@end

@implementation VCMediaNegotiationBlobAudioSettings

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobAudioSettings;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobAudioSettings description](&v3, sel_description), -[VCMediaNegotiationBlobAudioSettings dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_rtpSSRC), @"rtpSSRC"}];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_audioUnitModel), @"audioUnitModel"}];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_supportFlags), @"supportFlags"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_payloadFlags), @"payloadFlags"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_secondaryFlags), @"secondaryFlags"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_useSBR), @"useSBR"}];
  return dictionary;
}

- (void)writeTo:(id)to
{
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)to
{
  *(to + 4) = self->_rtpSSRC;
  if (*&self->_has)
  {
    *(to + 2) = self->_audioUnitModel;
    *(to + 32) |= 1u;
  }

  *(to + 6) = self->_supportFlags;
  *(to + 3) = self->_payloadFlags;
  *(to + 5) = self->_secondaryFlags;
  *(to + 28) = self->_useSBR;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 4) = self->_rtpSSRC;
  if (*&self->_has)
  {
    *(result + 2) = self->_audioUnitModel;
    *(result + 32) |= 1u;
  }

  *(result + 6) = self->_supportFlags;
  *(result + 3) = self->_payloadFlags;
  *(result + 5) = self->_secondaryFlags;
  *(result + 28) = self->_useSBR;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_rtpSSRC != *(equal + 4))
    {
LABEL_12:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(equal + 32) & 1) == 0 || self->_audioUnitModel != *(equal + 2))
      {
        goto LABEL_12;
      }
    }

    else if (*(equal + 32))
    {
      goto LABEL_12;
    }

    if (self->_supportFlags != *(equal + 6) || self->_payloadFlags != *(equal + 3) || self->_secondaryFlags != *(equal + 5))
    {
      goto LABEL_12;
    }

    LOBYTE(v5) = self->_useSBR == *(equal + 28);
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_audioUnitModel;
  }

  else
  {
    v2 = 0;
  }

  return v2 ^ (2654435761 * self->_rtpSSRC) ^ (2654435761 * self->_supportFlags) ^ (2654435761 * self->_payloadFlags) ^ (2654435761 * self->_secondaryFlags) ^ (2654435761 * self->_useSBR);
}

- (void)mergeFrom:(id)from
{
  self->_rtpSSRC = *(from + 4);
  if (*(from + 32))
  {
    self->_audioUnitModel = *(from + 2);
    *&self->_has |= 1u;
  }

  self->_supportFlags = *(from + 6);
  self->_payloadFlags = *(from + 3);
  self->_secondaryFlags = *(from + 5);
  self->_useSBR = *(from + 28);
}

- (VCMediaNegotiationBlobAudioSettings)initWithAudioConfiguration:(id)configuration
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [(VCMediaNegotiationBlobAudioSettings *)self init];
  if (v4)
  {
    v4->_supportFlags |= [configuration allowAudioSwitching];
    v5 = [configuration allowAudioRecording] ? 2 : 0;
    v4->_supportFlags |= v5;
    v4->_rtpSSRC = [configuration ssrc];
    v4->_audioUnitModel = [configuration audioUnitNumber];
    *&v4->_has |= 1u;
    v4->_useSBR = [configuration useSBR];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    audioPayloads = [configuration audioPayloads];
    v7 = [audioPayloads countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(audioPayloads);
          }

          intValue = [*(*(&v16 + 1) + 8 * i) intValue];
          v12 = [VCMediaNegotiationBlobAudioSettings negotiationPayloadFromPayload:intValue];
          if (v12 != -1)
          {
            v13 = v12;
            v4->_payloadFlags |= v12;
            if ([configuration isSecondaryPayload:intValue])
            {
              v4->_secondaryFlags |= v13;
            }
          }
        }

        v8 = [audioPayloads countByEnumeratingWithState:&v16 objects:v15 count:16];
      }

      while (v8);
    }
  }

  return v4;
}

+ (int)negotiationPayloadFromPayload:(int)payload
{
  v3 = *&payload;
  v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{&unk_1F579B4D8, &unk_1F579B4F0, &unk_1F579B508, &unk_1F579B520, &unk_1F579B538, &unk_1F579B550, &unk_1F579B568, &unk_1F579B580, &unk_1F579B598, &unk_1F579B5B0, &unk_1F579B5C8, &unk_1F579B5E0, &unk_1F579B5F8, &unk_1F579B610, &unk_1F579B628, &unk_1F579B640, &unk_1F579B658, &unk_1F579B670, &unk_1F579B688, &unk_1F579B6A0, &unk_1F579B6B8, &unk_1F579B6D0, &unk_1F579B6E8, &unk_1F579B700, &unk_1F579B718, &unk_1F579B730, &unk_1F579B748, &unk_1F579B760, 0}];
  v5 = [v4 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v3)}];
  if (v5)
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = -1;
  }

  return unsignedIntValue;
}

+ (int)payloadFromNegotiationPayload:(int)payload
{
  v3 = *&payload;
  v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{&unk_1F579B4F0, &unk_1F579B4D8, &unk_1F579B520, &unk_1F579B508, &unk_1F579B550, &unk_1F579B538, &unk_1F579B580, &unk_1F579B568, &unk_1F579B5B0, &unk_1F579B598, &unk_1F579B5E0, &unk_1F579B5C8, &unk_1F579B610, &unk_1F579B5F8, &unk_1F579B640, &unk_1F579B628, &unk_1F579B670, &unk_1F579B658, &unk_1F579B6A0, &unk_1F579B688, &unk_1F579B6D0, &unk_1F579B6B8, &unk_1F579B700, &unk_1F579B6E8, &unk_1F579B730, &unk_1F579B718, &unk_1F579B760, &unk_1F579B748, 0}];
  v5 = [v4 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v3)}];
  if (v5)
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 128;
  }

  return unsignedIntValue;
}

- (id)newMediaNegotiatorAudioConfiguration
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [[VCMediaNegotiatorAudioConfiguration alloc] initWithAllowAudioSwitching:[(VCMediaNegotiationBlobAudioSettings *)self allowAudioSwitching] allowAudioRecording:[(VCMediaNegotiationBlobAudioSettings *)self allowAudioRecording] useSBR:self->_useSBR ssrc:self->_rtpSSRC audioUnitNumber:self->_audioUnitModel];
  payloadFlags = self->_payloadFlags;
  if (payloadFlags)
  {
    v5 = 1;
    v6 = &OBJC_IVAR___VCMediaNegotiationBlobAudioSettings__secondaryFlags;
    v7 = sel_logPrefix;
    v8 = VCMediaStreamSendGroup;
    v9 = "";
    do
    {
      if ((payloadFlags & v5) != 0)
      {
        payloadFlags &= ~v5;
        if (!-[VCMediaNegotiatorAudioConfiguration addAudioPayload:isSecondary:](v3, "addAudioPayload:isSecondary:", [&v8[42] payloadFromNegotiationPayload:v5], (*(&self->super.super.isa + *v6) & v5) != 0))
        {
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 5)
            {
              v16 = VRTraceErrorLogLevelToCSTR();
              v17 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v20 = v16;
                v21 = 2080;
                v22 = "[VCMediaNegotiationBlobAudioSettings(AudioRules) newMediaNegotiatorAudioConfiguration]";
                v23 = 1024;
                v24 = 988;
                v25 = 1024;
                LODWORD(v26) = v5;
                _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d payload flag=%d NOT added.", buf, 0x22u);
              }
            }
          }

          else
          {
            v10 = &stru_1F570E008;
            if (objc_opt_respondsToSelector())
            {
              v10 = [(VCMediaNegotiationBlobAudioSettings *)self performSelector:v7];
            }

            if (VRTraceGetErrorLogLevelForModule() >= 5)
            {
              v11 = v7;
              v12 = v6;
              v13 = v9;
              v14 = VRTraceErrorLogLevelToCSTR();
              v15 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316418;
                v20 = v14;
                v21 = 2080;
                v22 = "[VCMediaNegotiationBlobAudioSettings(AudioRules) newMediaNegotiatorAudioConfiguration]";
                v23 = 1024;
                v24 = 988;
                v25 = 2112;
                v26 = v10;
                v27 = 2048;
                selfCopy = self;
                v29 = 1024;
                v30 = v5;
                _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@(%p) payload flag=%d NOT added.", buf, 0x36u);
              }

              v9 = v13;
              v6 = v12;
              v7 = v11;
              v8 = VCMediaStreamSendGroup;
            }
          }
        }
      }

      v5 = (2 * v5);
    }

    while (payloadFlags);
  }

  return v3;
}

- (void)printWithLogFile:(void *)file
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"Audio Settings: SSRC=%x sbr=%d audioSwitching=%d audioRecording=%d", self->_rtpSSRC, self->_useSBR, self->_supportFlags & 1, (self->_supportFlags >> 1) & 1];
  if ([(VCMediaNegotiationBlobAudioSettings *)self hasAudioUnitModel])
  {
    [v5 appendFormat:@" model=%u", self->_audioUnitModel];
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v7 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *v7;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v26 = v8;
      v27 = 2080;
      v28 = "[VCMediaNegotiationBlobAudioSettings(AudioRules) printWithLogFile:]";
      v29 = 1024;
      v30 = 1005;
      v31 = 2080;
      uTF8String = [v5 UTF8String];
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob - %s", buf, 0x26u);
    }
  }

  VRLogfilePrintWithTimestamp(file, "Media Blob - %s\n", [v5 UTF8String]);
  v10 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"Primary payloads:"];
  v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"Secondary payloads:"];
  v12 = 1;
  do
  {
    if ((self->_payloadFlags & v12) != 0 && (self->_secondaryFlags & v12) == 0)
    {
      if (v12 <= 127)
      {
        if (v12 <= 7)
        {
          switch(v12)
          {
            case 1:
              v13 = @"G722";
              goto LABEL_46;
            case 2:
              v13 = @"AACELD_16000";
              goto LABEL_46;
            case 4:
              v13 = @"AACELD_22050";
              goto LABEL_46;
          }
        }

        else if (v12 > 31)
        {
          if (v12 == 32)
          {
            v13 = @"SPEEX_16K";
            goto LABEL_46;
          }

          if (v12 == 64)
          {
            v13 = @"OPUS";
            goto LABEL_46;
          }
        }

        else
        {
          if (v12 == 8)
          {
            v13 = @"AACELD_24000";
            goto LABEL_46;
          }

          if (v12 == 16)
          {
            v13 = @"SPEEX_8K";
            goto LABEL_46;
          }
        }
      }

      else if (v12 > 2047)
      {
        if (v12 >= 0x4000)
        {
          if (v12 == 0x4000)
          {
            v13 = @"ACC24";
            goto LABEL_46;
          }

          if (v12 == 0x7FFF)
          {
            v13 = @"SUPPORTED";
            goto LABEL_46;
          }
        }

        else
        {
          if (v12 == 2048)
          {
            v13 = @"EVS_32000";
            goto LABEL_46;
          }

          if (v12 == 4096)
          {
            v13 = @"AACELD_48000";
            goto LABEL_46;
          }
        }
      }

      else if (v12 > 511)
      {
        if (v12 == 512)
        {
          v13 = @"CN";
          goto LABEL_46;
        }

        if (v12 == 1024)
        {
          v13 = @"RED";
          goto LABEL_46;
        }
      }

      else
      {
        if (v12 == 128)
        {
          v13 = @"AMR_8000";
          goto LABEL_46;
        }

        if (v12 == 256)
        {
          v13 = @"AMR_16000";
LABEL_46:
          [v10 appendFormat:@" %@, ", v13];
          goto LABEL_47;
        }
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v12];
      goto LABEL_46;
    }

LABEL_47:
    if ((self->_secondaryFlags & v12) == 0)
    {
      goto LABEL_89;
    }

    if (v12 > 127)
    {
      if (v12 > 2047)
      {
        if (v12 >= 0x4000)
        {
          if (v12 == 0x4000)
          {
            v14 = @"ACC24";
          }

          else
          {
            if (v12 != 0x7FFF)
            {
LABEL_87:
              v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v12];
              goto LABEL_88;
            }

            v14 = @"SUPPORTED";
          }
        }

        else if (v12 == 2048)
        {
          v14 = @"EVS_32000";
        }

        else
        {
          if (v12 != 4096)
          {
            goto LABEL_87;
          }

          v14 = @"AACELD_48000";
        }
      }

      else if (v12 > 511)
      {
        if (v12 == 512)
        {
          v14 = @"CN";
        }

        else
        {
          if (v12 != 1024)
          {
            goto LABEL_87;
          }

          v14 = @"RED";
        }
      }

      else if (v12 == 128)
      {
        v14 = @"AMR_8000";
      }

      else
      {
        if (v12 != 256)
        {
          goto LABEL_87;
        }

        v14 = @"AMR_16000";
      }
    }

    else if (v12 > 7)
    {
      if (v12 > 31)
      {
        if (v12 == 32)
        {
          v14 = @"SPEEX_16K";
        }

        else
        {
          if (v12 != 64)
          {
            goto LABEL_87;
          }

          v14 = @"OPUS";
        }
      }

      else if (v12 == 8)
      {
        v14 = @"AACELD_24000";
      }

      else
      {
        if (v12 != 16)
        {
          goto LABEL_87;
        }

        v14 = @"SPEEX_8K";
      }
    }

    else if (v12 > 1)
    {
      if (v12 == 2)
      {
        v14 = @"AACELD_16000";
      }

      else
      {
        if (v12 != 4)
        {
          goto LABEL_87;
        }

        v14 = @"AACELD_22050";
      }
    }

    else if (v12 == -1)
    {
      v14 = @"INVALID";
    }

    else
    {
      v14 = @"G722";
      if (v12 != 1)
      {
        goto LABEL_87;
      }
    }

LABEL_88:
    [v11 appendFormat:@" %@, ", v14];
LABEL_89:
    v15 = (v12 & 0x3FFF) == 0;
    v12 = (2 * v12);
  }

  while (!v15);
  v16 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@", "}];
  v17 = [objc_msgSend(v10 stringByTrimmingCharactersInSet:{v16), "UTF8String"}];
  v18 = [objc_msgSend(v11 stringByTrimmingCharactersInSet:{v16), "UTF8String"}];
  v19 = VRTraceGetErrorLogLevelForModule();
  v20 = MEMORY[0x1E6986650];
  if (v19 > 6)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v26 = v21;
      v27 = 2080;
      v28 = "[VCMediaNegotiationBlobAudioSettings(AudioRules) printWithLogFile:]";
      v29 = 1024;
      v30 = 1021;
      v31 = 2080;
      uTF8String = v17;
      _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob -     %s", buf, 0x26u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *v20;
    if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v26 = v23;
      v27 = 2080;
      v28 = "[VCMediaNegotiationBlobAudioSettings(AudioRules) printWithLogFile:]";
      v29 = 1024;
      v30 = 1022;
      v31 = 2080;
      uTF8String = v18;
      _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Media Blob -     %s", buf, 0x26u);
    }
  }

  VRLogfilePrintWithTimestamp(file, "Media Blob -     %s\n", v17);
  VRLogfilePrintWithTimestamp(file, "Media Blob -     %s\n", v18);
}

@end