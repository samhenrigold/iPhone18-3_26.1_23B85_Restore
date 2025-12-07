@interface CECMessage
+ (id)abortFrom:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)activeSourceFrom:(unsigned __int8)from physicalAddress:(unsigned __int16)address;
+ (id)cecVersion:(unsigned __int8)version from:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)deckControlWithMode:(unsigned __int8)mode from:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)deckStatusWithInfo:(unsigned __int8)info from:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)deviceVendorID:(unsigned int)d from:(unsigned __int8)from;
+ (id)featureAbort:(unsigned __int8)abort reason:(unsigned __int8)reason from:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)getCECVersionFrom:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)getMenuLanguageFrom:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)giveAudioStatusFrom:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)giveDeckStatusWithRequest:(unsigned __int8)request from:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)giveDevicePowerStatusFrom:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)giveDeviceVendorIDFrom:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)giveOSDNameFrom:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)givePhysicalAddressFrom:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)giveSystemAudioModeStatusFrom:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)imageViewOnFrom:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)inactiveSourceFrom:(unsigned __int8)from to:(unsigned __int8)to physicalAddress:(unsigned __int16)address;
+ (id)initiateARCFrom:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)menuStatus:(unsigned __int8)status from:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)messageWithFrame:(CECFrame *)frame;
+ (id)playWithMode:(unsigned __int8)mode from:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)pollFrom:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)reportAudioStatusWithVolume:(unint64_t)volume mute:(BOOL)mute from:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)reportFeaturesWith:(unsigned __int8)with deviceTypes:(unsigned __int8)types rcProfile:(id)profile deviceFeatures:(unsigned __int8)features from:(unsigned __int8)from;
+ (id)reportPhysicalAddress:(unsigned __int16)address deviceType:(unsigned __int8)type from:(unsigned __int8)from;
+ (id)reportPowerStatus:(unsigned __int8)status from:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)reportShortAudioDescriptor:(char *)descriptor length:(unsigned __int8)length from:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)requestActiveSourceFrom:(unsigned __int8)from;
+ (id)routingChangeFrom:(unsigned __int8)from originalAddress:(unsigned __int16)address newAddress:(unsigned __int16)newAddress;
+ (id)routingInformationFrom:(unsigned __int8)from physicalAddress:(unsigned __int16)address;
+ (id)setAudioVolumeLevel:(unsigned __int8)level from:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)setMenuLanguage:(CECLanguage)language from:(unsigned __int8)from;
+ (id)setOSDName:(CECOSDName)name from:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)setStreamPathFrom:(unsigned __int8)from physicalAddress:(unsigned __int16)address;
+ (id)setSystemAudioMode:(BOOL)mode from:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)standbyFrom:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)systemAudioModeRequestWithPhysicalAddress:(unsigned __int16)address from:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)systemAudioModeStatus:(unint64_t)status from:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)terminateARCFrom:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)textViewOnFrom:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)userControlPressed:(CECUserControl)pressed from:(unsigned __int8)from to:(unsigned __int8)to;
+ (id)userControlReleasedFrom:(unsigned __int8)from to:(unsigned __int8)to;
- (BOOL)parseActiveSourcePhysicalAddress:(unsigned __int16 *)address;
- (BOOL)parseCECVersion:(unsigned __int8 *)version;
- (BOOL)parseDeckControlMode:(unint64_t *)mode;
- (BOOL)parseDeckStatusInfo:(unint64_t *)info;
- (BOOL)parseDeviceVendorID:(unsigned int *)d;
- (BOOL)parseFeatureAbortOpcode:(char *)opcode reason:(unsigned __int8 *)reason;
- (BOOL)parseGiveDeckStatusRequest:(unsigned __int8 *)request;
- (BOOL)parseInactiveSourcePhysicalAddress:(unsigned __int16 *)address;
- (BOOL)parseMenuRequest:(unsigned __int8 *)request;
- (BOOL)parsePlayMode:(unint64_t *)mode;
- (BOOL)parseReportAudioStatus:(unint64_t *)status muteStatus:(BOOL *)muteStatus;
- (BOOL)parseReportFeatures:(unsigned __int8 *)features deviceTypes:(char *)types rcProfile:(id *)profile features:(char *)a6;
- (BOOL)parseReportPhysicalAddress:(unsigned __int16 *)address deviceType:(unint64_t *)type;
- (BOOL)parseReportPowerStatus:(unint64_t *)status;
- (BOOL)parseRoutingChangeOriginalAddress:(unsigned __int16 *)address newAddress:(unsigned __int16 *)newAddress;
- (BOOL)parseRoutingInformationPhysicalAddress:(unsigned __int16 *)address;
- (BOOL)parseSetMenuLanguage:(CECLanguage *)language;
- (BOOL)parseSetOSDName:(id *)name;
- (BOOL)parseSetStreamPathPhysicalAddress:(unsigned __int16 *)address;
- (BOOL)parseSystemAudioModeStatus:(unint64_t *)status;
- (BOOL)parseUserControlPressed:(CECUserControl *)pressed;
- (BOOL)shouldBeIgnored;
- (CECMessage)initWithCoder:(id)coder;
- (CECMessage)initWithFrame:(CECFrame *)frame;
- (const)_operandsWithLength:(unsigned __int8)length;
- (id)debugDescription;
- (id)description;
- (int)messageType;
- (unsigned)_operandsLength;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CECMessage

- (CECMessage)initWithFrame:(CECFrame *)frame
{
  result = [(CECMessage *)self init];
  if (result)
  {
    if ((*(frame + 16) & 0x1Fu) - 17 < 0xFFFFFFF0)
    {

      return 0;
    }

    else
    {
      v5 = *frame->blocks;
      *(&result->_frame + 4) = *(frame + 4);
      *result->_frame.blocks = v5;
    }
  }

  return result;
}

- (CECMessage)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CECMessage;
  v4 = [(CECMessage *)&v7 init];
  if (v4)
  {
    v5 = [coder decodeIntForKey:@"length"];
    *(&v4->_frame + 16) = *(&v4->_frame + 16) & 0xE0 | v5 & 0x1F;
    [coder decodeArrayOfObjCType:"C" count:v5 & 0x1F at:&v4->_frame];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt:*(&self->_frame + 16) & 0x1F forKey:@"length"];
  v5 = *(&self->_frame + 16) & 0x1F;

  [coder encodeArrayOfObjCType:"C" count:v5 at:&self->_frame];
}

- (id)debugDescription
{
  v3.receiver = self;
  v3.super_class = CECMessage;
  return [-[CECMessage description](&v3 description)];
}

- (int)messageType
{
  if ((*(&self->_frame + 16) & 0x1E) != 0)
  {
    return self->_frame.blocks[1];
  }

  else
  {
    return -1;
  }
}

- (unsigned)_operandsLength
{
  v2 = *(&self->_frame + 16) & 0x1F;
  v3 = v2 >= 2;
  v4 = v2 - 2;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (const)_operandsWithLength:(unsigned __int8)length
{
  if (length + 2 <= (*(&self->_frame + 16) & 0x1Fu))
  {
    return &self->_frame.blocks[2];
  }

  else
  {
    return 0;
  }
}

- (BOOL)shouldBeIgnored
{
  messageType = [(CECMessage *)self messageType];
  destination = [(CECMessage *)self destination];
  initiator = [(CECMessage *)self initiator];
  if (destination == 15)
  {
    if (messageType <= 113)
    {
      if (messageType != 50 && messageType != 54)
      {
        goto LABEL_25;
      }
    }

    else if (((messageType - 114) > 0x34 || ((1 << (messageType - 114)) & 0x104000433DC001) == 0) && messageType != 248)
    {
      goto LABEL_25;
    }
  }

  else if (messageType > 130)
  {
    if (((messageType - 131) > 0x22 || ((1 << (messageType + 125)) & 0x7FCD1FFC1) == 0) && ((messageType - 192) > 0x3F || ((1 << (messageType + 64)) & 0x800000000000003FLL) == 0))
    {
      goto LABEL_25;
    }
  }

  else if (((messageType + 1) > 0x37 || ((1 << (messageType + 1)) & 0xF0000018015FE3) == 0) && ((messageType - 65) > 0x3D || ((1 << (messageType - 65)) & 0x320780480000007FLL) == 0))
  {
    goto LABEL_25;
  }

  if (initiator != 15)
  {
    if (messageType == 50)
    {
      if (!initiator)
      {
        return initiator;
      }
    }

    else if (messageType != 255 || destination != 15)
    {
      LOBYTE(initiator) = 0;
      return initiator;
    }

    goto LABEL_25;
  }

  LOBYTE(initiator) = 0;
  if (((messageType - 128) > 0x11 || ((1 << (messageType + 0x80)) & 0x2103F) == 0) && messageType != 54 && messageType != 248)
  {
LABEL_25:
    LOBYTE(initiator) = 1;
  }

  return initiator;
}

+ (id)messageWithFrame:(CECFrame *)frame
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = [CECMessage alloc];
  v6 = *frame;
  return [(CECMessage *)v4 initWithFrame:&v6];
}

+ (id)activeSourceFrom:(unsigned __int8)from physicalAddress:(unsigned __int16)address
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v9 = 0;
  v5[0] = (16 * from) | 0xF;
  v5[1] = -126;
  v5[2] = HIBYTE(address);
  v5[3] = address;
  v6 = 0;
  v7 = 0;
  v8 = 4;
  return [CECMessage messageWithFrame:v5];
}

+ (id)imageViewOnFrom:(unsigned __int8)from to:(unsigned __int8)to
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v6 = 0;
  v5[0] = to | (16 * from);
  v5[1] = 4;
  memset(&v5[2], 0, 14);
  v5[16] = 2;
  return [CECMessage messageWithFrame:v5];
}

+ (id)textViewOnFrom:(unsigned __int8)from to:(unsigned __int8)to
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v6 = 0;
  v5[0] = to | (16 * from);
  v5[1] = 13;
  memset(&v5[2], 0, 14);
  v5[16] = 2;
  return [CECMessage messageWithFrame:v5];
}

+ (id)inactiveSourceFrom:(unsigned __int8)from to:(unsigned __int8)to physicalAddress:(unsigned __int16)address
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v10 = 0;
  v6[0] = to | (16 * from);
  v6[1] = -99;
  v6[2] = HIBYTE(address);
  v6[3] = address;
  v7 = 0;
  v8 = 0;
  v9 = 4;
  return [CECMessage messageWithFrame:v6];
}

+ (id)requestActiveSourceFrom:(unsigned __int8)from
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v5 = 0;
  v4[0] = (16 * from) | 0xF;
  v4[1] = -123;
  memset(&v4[2], 0, 14);
  v4[16] = 2;
  return [CECMessage messageWithFrame:v4];
}

+ (id)routingChangeFrom:(unsigned __int8)from originalAddress:(unsigned __int16)address newAddress:(unsigned __int16)newAddress
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v10 = 0;
  v6[0] = (16 * from) | 0xF;
  v6[1] = 0x80;
  v6[2] = HIBYTE(address);
  v6[3] = address;
  v6[4] = HIBYTE(newAddress);
  v6[5] = newAddress;
  v7 = 0;
  v8 = 0;
  v9 = 6;
  return [CECMessage messageWithFrame:v6];
}

+ (id)routingInformationFrom:(unsigned __int8)from physicalAddress:(unsigned __int16)address
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v9 = 0;
  v5[0] = (16 * from) | 0xF;
  v5[1] = -127;
  v5[2] = HIBYTE(address);
  v5[3] = address;
  v6 = 0;
  v7 = 0;
  v8 = 4;
  return [CECMessage messageWithFrame:v5];
}

+ (id)setStreamPathFrom:(unsigned __int8)from physicalAddress:(unsigned __int16)address
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v9 = 0;
  v5[0] = (16 * from) | 0xF;
  v5[1] = -122;
  v5[2] = HIBYTE(address);
  v5[3] = address;
  v6 = 0;
  v7 = 0;
  v8 = 4;
  return [CECMessage messageWithFrame:v5];
}

+ (id)standbyFrom:(unsigned __int8)from to:(unsigned __int8)to
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v11 = 0;
  v5 = to | (16 * from);
  strcpy(v6, "6");
  v6[2] = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 2;
  return [CECMessage messageWithFrame:&v5];
}

+ (id)cecVersion:(unsigned __int8)version from:(unsigned __int8)from to:(unsigned __int8)to
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = to | (16 * from);
  v6[1] = -98;
  v6[2] = version;
  memset(&v6[3], 0, 13);
  v6[16] = 3;
  return [CECMessage messageWithFrame:v6];
}

+ (id)getCECVersionFrom:(unsigned __int8)from to:(unsigned __int8)to
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v6 = 0;
  v5[0] = to | (16 * from);
  v5[1] = -97;
  memset(&v5[2], 0, 14);
  v5[16] = 2;
  return [CECMessage messageWithFrame:v5];
}

+ (id)givePhysicalAddressFrom:(unsigned __int8)from to:(unsigned __int8)to
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v6 = 0;
  v5[0] = to | (16 * from);
  v5[1] = -125;
  memset(&v5[2], 0, 14);
  v5[16] = 2;
  return [CECMessage messageWithFrame:v5];
}

+ (id)getMenuLanguageFrom:(unsigned __int8)from to:(unsigned __int8)to
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v6 = 0;
  v5[0] = to | (16 * from);
  v5[1] = -111;
  memset(&v5[2], 0, 14);
  v5[16] = 2;
  return [CECMessage messageWithFrame:v5];
}

+ (id)pollFrom:(unsigned __int8)from to:(unsigned __int8)to
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = to | (16 * from);
  memset(&v5[1], 0, 15);
  v5[16] = 1;
  v6 = 0;
  v7 = 0;
  return [CECMessage messageWithFrame:v5];
}

+ (id)reportPhysicalAddress:(unsigned __int16)address deviceType:(unsigned __int8)type from:(unsigned __int8)from
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = (16 * from) | 0xF;
  v6[1] = -124;
  v6[2] = HIBYTE(address);
  v6[3] = address;
  v6[4] = type;
  memset(&v6[5], 0, 11);
  v6[16] = 5;
  return [CECMessage messageWithFrame:v6];
}

+ (id)setMenuLanguage:(CECLanguage)language from:(unsigned __int8)from
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v8 = 0;
  v5[0] = (16 * from) | 0xF;
  v5[1] = 50;
  languageCopy = language;
  memset(v7, 0, 11);
  v7[11] = 5;
  return [CECMessage messageWithFrame:v5];
}

+ (id)reportFeaturesWith:(unsigned __int8)with deviceTypes:(unsigned __int8)types rcProfile:(id)profile deviceFeatures:(unsigned __int8)features from:(unsigned __int8)from
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v12 = 0;
  v8[0] = (16 * from) | 0xF;
  v8[1] = -90;
  v8[2] = with;
  v8[3] = types;
  v8[4] = (profile.var0 << 6) | profile.var1.var0;
  v8[5] = features;
  v9 = 0;
  v10 = 0;
  v11 = 6;
  return [CECMessage messageWithFrame:v8];
}

+ (id)deckControlWithMode:(unsigned __int8)mode from:(unsigned __int8)from to:(unsigned __int8)to
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = to | (16 * from);
  v6[1] = 66;
  v6[2] = mode;
  memset(&v6[3], 0, 13);
  v6[16] = 3;
  return [CECMessage messageWithFrame:v6];
}

+ (id)deckStatusWithInfo:(unsigned __int8)info from:(unsigned __int8)from to:(unsigned __int8)to
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = to | (16 * from);
  v6[1] = 27;
  v6[2] = info;
  memset(&v6[3], 0, 13);
  v6[16] = 3;
  return [CECMessage messageWithFrame:v6];
}

+ (id)giveDeckStatusWithRequest:(unsigned __int8)request from:(unsigned __int8)from to:(unsigned __int8)to
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = to | (16 * from);
  v6[1] = 26;
  v6[2] = request;
  memset(&v6[3], 0, 13);
  v6[16] = 3;
  return [CECMessage messageWithFrame:v6];
}

+ (id)playWithMode:(unsigned __int8)mode from:(unsigned __int8)from to:(unsigned __int8)to
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = to | (16 * from);
  v6[1] = 65;
  v6[2] = mode;
  memset(&v6[3], 0, 13);
  v6[16] = 3;
  return [CECMessage messageWithFrame:v6];
}

+ (id)deviceVendorID:(unsigned int)d from:(unsigned __int8)from
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v6 = 0;
  v5[0] = (16 * from) | 0xF;
  v5[1] = -121;
  v5[2] = BYTE2(d);
  v5[3] = BYTE1(d);
  v5[4] = d;
  memset(&v5[5], 0, 11);
  v5[16] = 5;
  return [CECMessage messageWithFrame:v5];
}

+ (id)giveDeviceVendorIDFrom:(unsigned __int8)from to:(unsigned __int8)to
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v6 = 0;
  v5[0] = to | (16 * from);
  v5[1] = -116;
  memset(&v5[2], 0, 14);
  v5[16] = 2;
  return [CECMessage messageWithFrame:v5];
}

+ (id)giveOSDNameFrom:(unsigned __int8)from to:(unsigned __int8)to
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v11 = 0;
  v5 = to | (16 * from);
  strcpy(v6, "F");
  v6[2] = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 2;
  return [CECMessage messageWithFrame:&v5];
}

+ (id)setOSDName:(CECOSDName)name from:(unsigned __int8)from to:(unsigned __int8)to
{
  length = name.length;
  v12 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  LOBYTE(v9) = to | (16 * from);
  *(&v9 + 1) = 16199;
  *(&v9 + 3) = 0;
  *(&v9 + 1) = 0;
  v10 = 3;
  if (name.length)
  {
    __memcpy_chk();
    LOBYTE(v10) = v10 & 0xE0 | (length + 2) & 0x1F;
  }

  v7 = v9;
  v8 = v10;
  return [CECMessage messageWithFrame:&v7];
}

+ (id)menuStatus:(unsigned __int8)status from:(unsigned __int8)from to:(unsigned __int8)to
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = to | (16 * from);
  v6[1] = -114;
  v6[2] = status;
  memset(&v6[3], 0, 13);
  v6[16] = 3;
  return [CECMessage messageWithFrame:v6];
}

+ (id)userControlPressed:(CECUserControl)pressed from:(unsigned __int8)from to:(unsigned __int8)to
{
  v23 = *MEMORY[0x277D85DE8];
  playMode = pressed.operand.playMode;
  if (pressed.command <= 0x66u)
  {
    if (pressed.command == 96)
    {
      v11 = pressed.operand.playMode;
    }

    else
    {
      v11 = 0;
    }

    if (pressed.command == 96)
    {
      v12 = 4;
    }

    else
    {
      v12 = 3;
    }

    if (pressed.command == 87)
    {
      v13 = pressed.operand.playMode;
    }

    else
    {
      v13 = v11;
    }

    if (pressed.command == 87)
    {
      v14 = 4;
    }

    else
    {
      v14 = v12;
    }

    v15 = pressed.command == 86;
  }

  else
  {
    if (pressed.command <= 0x68u)
    {
      if (pressed.command == 104)
      {
        v6 = 4;
      }

      else
      {
        playMode = 0;
        v6 = 3;
      }

      if (pressed.command == 103)
      {
        playMode = (*&pressed >> 46) & 3 | (4 * pressed.operand.playMode);
        v7 = *&pressed >> 38;
      }

      else
      {
        v7 = 0;
      }

      if (pressed.command == 103)
      {
        v8 = *(&pressed.operand.broadcastType + 3);
      }

      else
      {
        v8 = 0;
      }

      if (pressed.command == 103)
      {
        v9 = *(&pressed.operand.playMode + 2);
      }

      else
      {
        v9 = 0;
      }

      if (pressed.command == 103)
      {
        v10 = 7;
      }

      else
      {
        v10 = v6;
      }

      goto LABEL_43;
    }

    if (pressed.command == 106)
    {
      v13 = pressed.operand.playMode;
    }

    else
    {
      v13 = 0;
    }

    if (pressed.command == 106)
    {
      v14 = 4;
    }

    else
    {
      v14 = 3;
    }

    v15 = pressed.command == 105;
  }

  if (!v15)
  {
    playMode = v13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (v15)
  {
    v10 = 4;
  }

  else
  {
    v10 = v14;
  }

LABEL_43:
  v17[0] = to | (16 * from);
  v17[1] = 68;
  v17[2] = pressed.command;
  v17[3] = playMode;
  v17[4] = v7;
  v17[5] = v8;
  v17[6] = v9;
  v18 = 0;
  v19 = 0;
  v20 = v10;
  v21 = 0;
  v22 = 0;
  return [CECMessage messageWithFrame:v17];
}

+ (id)userControlReleasedFrom:(unsigned __int8)from to:(unsigned __int8)to
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v11 = 0;
  v5 = to | (16 * from);
  strcpy(v6, "E");
  v6[2] = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 2;
  return [CECMessage messageWithFrame:&v5];
}

+ (id)giveDevicePowerStatusFrom:(unsigned __int8)from to:(unsigned __int8)to
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v6 = 0;
  v5[0] = to | (16 * from);
  v5[1] = -113;
  memset(&v5[2], 0, 14);
  v5[16] = 2;
  return [CECMessage messageWithFrame:v5];
}

+ (id)reportPowerStatus:(unsigned __int8)status from:(unsigned __int8)from to:(unsigned __int8)to
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = to | (16 * from);
  v6[1] = -112;
  v6[2] = status;
  memset(&v6[3], 0, 13);
  v6[16] = 3;
  return [CECMessage messageWithFrame:v6];
}

+ (id)featureAbort:(unsigned __int8)abort reason:(unsigned __int8)reason from:(unsigned __int8)from to:(unsigned __int8)to
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v11 = 0;
  v7[0] = to | (16 * from);
  v7[1] = 0;
  v7[2] = abort;
  v7[3] = reason;
  v8 = 0;
  v9 = 0;
  v10 = 4;
  return [CECMessage messageWithFrame:v7];
}

+ (id)abortFrom:(unsigned __int8)from to:(unsigned __int8)to
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v6 = 0;
  v5[0] = to | (16 * from);
  v5[1] = -1;
  memset(&v5[2], 0, 14);
  v5[16] = 2;
  return [CECMessage messageWithFrame:v5];
}

+ (id)giveAudioStatusFrom:(unsigned __int8)from to:(unsigned __int8)to
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v11 = 0;
  v5 = to | (16 * from);
  strcpy(v6, "q");
  v6[2] = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 2;
  return [CECMessage messageWithFrame:&v5];
}

+ (id)giveSystemAudioModeStatusFrom:(unsigned __int8)from to:(unsigned __int8)to
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v11 = 0;
  v5 = to | (16 * from);
  strcpy(v6, "}");
  v6[2] = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 2;
  return [CECMessage messageWithFrame:&v5];
}

+ (id)setSystemAudioMode:(BOOL)mode from:(unsigned __int8)from to:(unsigned __int8)to
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = to | (16 * from);
  v6[1] = 114;
  v6[2] = mode;
  memset(&v6[3], 0, 13);
  v6[16] = 3;
  return [CECMessage messageWithFrame:v6];
}

+ (id)systemAudioModeRequestWithPhysicalAddress:(unsigned __int16)address from:(unsigned __int8)from to:(unsigned __int8)to
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v9 = 0;
  LOBYTE(v7[0]) = to | (16 * from);
  BYTE1(v7[0]) = 112;
  if (address == 0xFFFF)
  {
    memset(v7 + 2, 0, 14);
    v5 = 2;
  }

  else
  {
    BYTE2(v7[0]) = HIBYTE(address);
    HIBYTE(v7[0]) = address;
    *&v7[1] = 0;
    v7[3] = 0;
    v5 = 4;
  }

  v8 = v5;
  return [CECMessage messageWithFrame:v7];
}

+ (id)systemAudioModeStatus:(unint64_t)status from:(unsigned __int8)from to:(unsigned __int8)to
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = to | (16 * from);
  v6[1] = 126;
  v6[2] = status == 2;
  memset(&v6[3], 0, 13);
  v6[16] = 3;
  return [CECMessage messageWithFrame:v6];
}

+ (id)reportAudioStatusWithVolume:(unint64_t)volume mute:(BOOL)mute from:(unsigned __int8)from to:(unsigned __int8)to
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v9 = 0;
  v8[0] = to | (16 * from);
  v8[1] = 122;
  if (mute)
  {
    v6 = 0x80;
  }

  else
  {
    v6 = 0;
  }

  v8[2] = v6 | (volume - 101 * ((((volume - ((volume * 0x446F86562D9FAEE5uLL) >> 64)) >> 1) + ((volume * 0x446F86562D9FAEE5uLL) >> 64)) >> 6));
  memset(&v8[3], 0, 13);
  v8[16] = 3;
  return [CECMessage messageWithFrame:v8];
}

+ (id)reportShortAudioDescriptor:(char *)descriptor length:(unsigned __int8)length from:(unsigned __int8)from to:(unsigned __int8)to
{
  v11 = *MEMORY[0x277D85DE8];
  LOBYTE(v9) = to | (16 * from);
  BYTE1(v9) = -93;
  memset(&v9 + 2, 0, 14);
  v10 = (length + 2) & 0x1F;
  __memcpy_chk();
  v7 = v9;
  v8 = v10;
  return [CECMessage messageWithFrame:&v7];
}

+ (id)setAudioVolumeLevel:(unsigned __int8)level from:(unsigned __int8)from to:(unsigned __int8)to
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  v6[0] = to | (16 * from);
  v6[1] = 115;
  v6[2] = level;
  memset(&v6[3], 0, 13);
  v6[16] = 3;
  return [CECMessage messageWithFrame:v6];
}

+ (id)initiateARCFrom:(unsigned __int8)from to:(unsigned __int8)to
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v6 = 0;
  v5[0] = to | (16 * from);
  v5[1] = -64;
  memset(&v5[2], 0, 14);
  v5[16] = 2;
  return [CECMessage messageWithFrame:v5];
}

+ (id)terminateARCFrom:(unsigned __int8)from to:(unsigned __int8)to
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v6 = 0;
  v5[0] = to | (16 * from);
  v5[1] = -59;
  memset(&v5[2], 0, 14);
  v5[16] = 2;
  return [CECMessage messageWithFrame:v5];
}

- (id)description
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = new_printf_domain();
  if (v4)
  {
    v5 = v4;
    if (register_printf_domain_render_std(v4, "H"))
    {
LABEL_35:
      free_printf_domain(v5);
      return v3;
    }

    messageType = [(CECMessage *)self messageType];
    v7 = CECMessageTypeString(messageType);
    v8 = v7;
    switch(messageType)
    {
      case 128:
        v9 = [(CECMessage *)self _operandsWithLength:4];
        if (!v9)
        {
          goto LABEL_37;
        }

        v10 = v9;
        OUTLINED_FUNCTION_8_0(v9);
        OUTLINED_FUNCTION_5_3();
        OUTLINED_FUNCTION_4_4();
        __strlcpy_chk();
        OUTLINED_FUNCTION_4_4();
        __strlcat_chk();
        CECPhysicalAddressStringWithAddress(bswap32(*(v10 + 1)) >> 16);
        goto LABEL_18;
      case 129:
      case 130:
      case 134:
        goto LABEL_11;
      case 131:
      case 133:
      case 136:
      case 137:
      case 138:
      case 139:
      case 140:
      case 141:
      case 142:
      case 143:
        goto LABEL_14;
      case 132:
        v12 = [(CECMessage *)self _operandsWithLength:3];
        if (!v12)
        {
          goto LABEL_37;
        }

        v13 = v12;
        OUTLINED_FUNCTION_8_0(v12);
        OUTLINED_FUNCTION_5_3();
        OUTLINED_FUNCTION_4_4();
        __strlcpy_chk();
        OUTLINED_FUNCTION_4_4();
        __strlcat_chk();
        CECDeviceTypeString(v13[2]);
LABEL_18:
        OUTLINED_FUNCTION_4_4();
        __strlcat_chk();
        goto LABEL_34;
      case 135:
        v18 = [(CECMessage *)self _operandsWithLength:3];
        if (!v18)
        {
          goto LABEL_37;
        }

        CECVendorIDStringWithID((*v18 << 16) | (*(v18 + 1) << 8) | *(v18 + 2));
        OUTLINED_FUNCTION_5_3();
        goto LABEL_23;
      case 144:
        v14 = [(CECMessage *)self _operandsWithLength:1];
        if (!v14)
        {
          goto LABEL_37;
        }

        v15 = v14;
        v16 = CECPowerStatusString(*v14);
        v17 = kCECPowerStatusStringUnknown;
        goto LABEL_26;
      default:
        if (messageType)
        {
          if (messageType != 50 && messageType != 71)
          {
            if (messageType != 158)
            {
              if (messageType == 157)
              {
LABEL_11:
                v11 = [(CECMessage *)self _operandsWithLength:2];
                if (v11)
                {
                  OUTLINED_FUNCTION_8_0(v11);
                  OUTLINED_FUNCTION_5_3();
LABEL_23:
                  OUTLINED_FUNCTION_4_4();
                  __strlcpy_chk();
                  goto LABEL_34;
                }

                goto LABEL_37;
              }

LABEL_14:
              if (v7 == "Unknown")
              {
                v8 = __str;
                snprintf(__str, 0x20uLL, "<<? 0x%02X>>", messageType);
              }

              goto LABEL_28;
            }

            v19 = [(CECMessage *)self _operandsWithLength:1];
            if (v19)
            {
              v15 = v19;
              v16 = CECVersionString(*v19);
              v17 = kCECVersionStringUnknown;
LABEL_26:
              if (v16 == *v17)
              {
                v28 = v15;
                _operandsLength = [(CECMessage *)self _operandsLength];
                goto LABEL_33;
              }

              messageType = v16;
              if (!v16)
              {
LABEL_28:
                messageType = [(CECMessage *)self _operandsWithLength:0];
                v28 = messageType;
                _operandsLength = [(CECMessage *)self _operandsLength];
LABEL_33:
                OUTLINED_FUNCTION_5_3();
                sxprintf(v23, 0x50uLL, v5, 0, v24, v28, _operandsLength);
              }

LABEL_34:
              v25 = CECAddressString([(CECMessage *)self initiator], 1);
              [v3 appendFormat:@"%s -> %s: %s %s", v25, CECAddressString(-[CECMessage destination](self, "destination"), 0), v8, messageType];
              goto LABEL_35;
            }

LABEL_37:
            sxprintf(v34, 0x50uLL, v5, 0, "malformed frame: <%H>\n", &self->_frame, *(&self->_frame + 16) & 0x1F);
            [v3 appendFormat:@" %s", v34, v31, v32, v33];
            goto LABEL_35;
          }

          messageType = [(CECMessage *)self _operandsLength];
          v27 = messageType;
          v29 = [(CECMessage *)self _operandsWithLength:0];
        }

        else
        {
          v20 = [(CECMessage *)self _operandsWithLength:2];
          if (!v20)
          {
            goto LABEL_37;
          }

          messageType = v20;
          v27 = CECMessageTypeString(*v20);
          v29 = CECAbortReasonString(*(messageType + 1));
        }

        OUTLINED_FUNCTION_5_3();
        snprintf(v21, 0x50uLL, v22, v27, v29);
        goto LABEL_34;
    }
  }

  return v3;
}

- (BOOL)parseActiveSourcePhysicalAddress:(unsigned __int16 *)address
{
  OUTLINED_FUNCTION_18();
  if ([v4 messageType] != 130)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7();
  if (v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_8();
  if (v5)
  {
    return 0;
  }

  if (v3)
  {
    *v3 = v6;
  }

  return 1;
}

- (BOOL)parseInactiveSourcePhysicalAddress:(unsigned __int16 *)address
{
  OUTLINED_FUNCTION_18();
  if ([v4 messageType] != 157)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7();
  if (v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_8();
  if (v5)
  {
    return 0;
  }

  if (v3)
  {
    *v3 = v6;
  }

  return 1;
}

- (BOOL)parseRoutingChangeOriginalAddress:(unsigned __int16 *)address newAddress:(unsigned __int16 *)newAddress
{
  if ([(CECMessage *)self messageType]!= 128)
  {
    return 0;
  }

  if ((*(&self->_frame + 16) & 0x1Eu) < 6)
  {
    return 0;
  }

  v7 = __rev16(*&self->_frame.blocks[4]);
  if (v7 == 0xFFFF)
  {
    return 0;
  }

  if (address)
  {
    *address = bswap32(*&self->_frame.blocks[2]) >> 16;
  }

  if (newAddress)
  {
    *newAddress = v7;
  }

  return 1;
}

- (BOOL)parseRoutingInformationPhysicalAddress:(unsigned __int16 *)address
{
  OUTLINED_FUNCTION_18();
  if ([v4 messageType] != 129)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7();
  if (v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_8();
  if (v5)
  {
    return 0;
  }

  if (v3)
  {
    *v3 = v6;
  }

  return 1;
}

- (BOOL)parseSetStreamPathPhysicalAddress:(unsigned __int16 *)address
{
  OUTLINED_FUNCTION_18();
  if ([v4 messageType] != 134)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7();
  if (v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_8();
  if (v5)
  {
    return 0;
  }

  if (v3)
  {
    *v3 = v6;
  }

  return 1;
}

- (BOOL)parseCECVersion:(unsigned __int8 *)version
{
  OUTLINED_FUNCTION_18();
  if ([v5 messageType] != 158)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_8();
  if (!v6)
  {
    return 0;
  }

  if (v3)
  {
    *v3 = *(v4 + 10);
  }

  return 1;
}

- (BOOL)parseReportPhysicalAddress:(unsigned __int16 *)address deviceType:(unint64_t *)type
{
  if ([(CECMessage *)self messageType]!= 132 || (*(&self->_frame + 16) & 0x1Fu) < 5 || (v7 = __rev16(*&self->_frame.blocks[2]), v7 == 0xFFFF))
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v18 = 0;
    v8 = CoreCECDeviceTypeForCECDeviceType(&v18, self->_frame.blocks[4]);
    if (v8)
    {
      if (address)
      {
        *address = v7;
      }

      if (type)
      {
        OUTLINED_FUNCTION_6_0(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18);
      }

      LOBYTE(v8) = 1;
    }
  }

  return v8;
}

- (BOOL)parseSetMenuLanguage:(CECLanguage *)language
{
  OUTLINED_FUNCTION_18();
  if ([v5 messageType] != 50 || (*(v4 + 24) & 0x1Fu) < 5)
  {
    return 0;
  }

  if (v3)
  {
    v6 = *(v4 + 10);
    *(v3 + 2) = *(v4 + 12);
    *v3 = v6;
  }

  return 1;
}

- (BOOL)parseDeckControlMode:(unint64_t *)mode
{
  OUTLINED_FUNCTION_18();
  if ([v4 messageType] == 66 && (OUTLINED_FUNCTION_0_8(), v5))
  {
    OUTLINED_FUNCTION_3_3();
    v8 = CoreCECDeckControlModeForCECDeckControlMode(v6, v7);
    if (v8)
    {
      if (v3)
      {
        OUTLINED_FUNCTION_6_0(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18);
      }

      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)parseDeckStatusInfo:(unint64_t *)info
{
  OUTLINED_FUNCTION_18();
  if ([v4 messageType] == 27 && (OUTLINED_FUNCTION_0_8(), v5))
  {
    OUTLINED_FUNCTION_3_3();
    v8 = CoreCECDeckInfoForCECDeckInfo(v6, v7);
    if (v8)
    {
      if (v3)
      {
        OUTLINED_FUNCTION_6_0(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18);
      }

      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)parseGiveDeckStatusRequest:(unsigned __int8 *)request
{
  OUTLINED_FUNCTION_18();
  if ([v5 messageType] != 26)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_8();
  if (!v6)
  {
    return 0;
  }

  if (v3)
  {
    *v3 = *(v4 + 10);
  }

  return 1;
}

- (BOOL)parsePlayMode:(unint64_t *)mode
{
  OUTLINED_FUNCTION_18();
  if ([v4 messageType] == 65 && (OUTLINED_FUNCTION_0_8(), v5))
  {
    OUTLINED_FUNCTION_3_3();
    v8 = CoreCECPlayModeForCECPlayMode(v6, v7);
    if (v8)
    {
      if (v3)
      {
        OUTLINED_FUNCTION_6_0(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18);
      }

      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)parseDeviceVendorID:(unsigned int *)d
{
  OUTLINED_FUNCTION_18();
  if ([v5 messageType] != 135 || (v4[24] & 0x1Fu) < 5)
  {
    return 0;
  }

  if (v3)
  {
    *v3 = (v4[10] << 16) | (v4[11] << 8) | v4[12];
  }

  return 1;
}

- (BOOL)parseReportAudioStatus:(unint64_t *)status muteStatus:(BOOL *)muteStatus
{
  if ([(CECMessage *)self messageType]!= 122)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_8();
  if (!v7)
  {
    return 0;
  }

  if (status)
  {
    *status = self->_frame.blocks[2] & 0x7F;
  }

  if (muteStatus)
  {
    *muteStatus = self->_frame.blocks[2] >> 7;
  }

  return 1;
}

- (BOOL)parseSetOSDName:(id *)name
{
  OUTLINED_FUNCTION_18();
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, sizeof(v10));
  if ([v4 messageType] != 71)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_8();
  if (!v6)
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v9 = v5 - 2;
  __memcpy_chk();
  v7 = 1;
  *v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v10 length:v9 encoding:1];
  return v7;
}

- (BOOL)parseMenuRequest:(unsigned __int8 *)request
{
  OUTLINED_FUNCTION_18();
  if ([v5 messageType] != 141)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_8();
  if (!v6)
  {
    return 0;
  }

  if (v3)
  {
    *v3 = *(v4 + 10);
  }

  return 1;
}

- (BOOL)parseUserControlPressed:(CECUserControl *)pressed
{
  OUTLINED_FUNCTION_18();
  if ([v5 messageType] != 68)
  {
    return 0;
  }

  v6 = v4[24] & 0x1F;
  if (v6 < 3)
  {
    return 0;
  }

  v7 = 0;
  v8 = v4[10];
  v9 = 0;
  switch(v4[10])
  {
    case 'h':
    case 'i':
    case 'j':
      goto LABEL_4;
    case 'a':
    case 'b':
    case 'c':
    case 'd':
    case 'e':
    case 'f':
      goto LABEL_6;
    case 'g':
      if (v6 < 7)
      {
        return 0;
      }

      v11 = v4[11];
      HIDWORD(v12) = v4[12];
      LODWORD(v12) = v11 << 24;
      v7 = v12 >> 26;
      v9 = ((v4[13] << 24) | (v4[14] << 16) | ((v11 << 14) | (v4[12] << 6))) >> 8;
      goto LABEL_6;
    default:
      if (v8 != 86)
      {
        v9 = 0;
        if (v8 != 87)
        {
          goto LABEL_6;
        }
      }

LABEL_4:
      if (v6 == 3)
      {
        return 0;
      }

      v9 = 0;
      v7 = v4[11];
LABEL_6:
      if (v3)
      {
        *v3 = v8;
        *(v3 + 4) = v7;
        *(v3 + 5) = v9;
        *(v3 + 7) = BYTE2(v9);
      }

      result = 1;
      break;
  }

  return result;
}

- (BOOL)parseReportPowerStatus:(unint64_t *)status
{
  OUTLINED_FUNCTION_18();
  if ([v4 messageType] == 144 && (OUTLINED_FUNCTION_0_8(), v5))
  {
    OUTLINED_FUNCTION_3_3();
    v8 = CoreCECPowerStatusForCECPowerStatus(v6, v7);
    if (v8)
    {
      if (v3)
      {
        OUTLINED_FUNCTION_6_0(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18);
      }

      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)parseSystemAudioModeStatus:(unint64_t *)status
{
  OUTLINED_FUNCTION_18();
  if (([v5 messageType] == 126 || objc_msgSend(v4, "messageType") == 114) && (OUTLINED_FUNCTION_0_8(), v6))
  {
    OUTLINED_FUNCTION_3_3();
    v9 = CoreCECSystemAudioModeStatusForCECSystemAudioModeStatus(v7, v8);
    if (v9)
    {
      if (v3)
      {
        OUTLINED_FUNCTION_6_0(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19);
      }

      LOBYTE(v9) = 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)parseFeatureAbortOpcode:(char *)opcode reason:(unsigned __int8 *)reason
{
  if ([(CECMessage *)self messageType])
  {
    return 0;
  }

  OUTLINED_FUNCTION_7();
  if (v7)
  {
    return 0;
  }

  if (opcode)
  {
    *opcode = self->_frame.blocks[2];
  }

  if (reason)
  {
    *reason = self->_frame.blocks[3];
  }

  return 1;
}

- (BOOL)parseReportFeatures:(unsigned __int8 *)features deviceTypes:(char *)types rcProfile:(id *)profile features:(char *)a6
{
  if ([(CECMessage *)self messageType]== 166 && (*(&self->_frame + 16) & 0x1Eu) >= 6)
  {
    *features = self->_frame.blocks[2];
    *types = self->_frame.blocks[3];
    v11 = ((self->_frame.blocks[4] >> 6) & 1) == 0;
    profile->var0 = (self->_frame.blocks[4] & 0x40) != 0;
    if (v11)
    {
      v12 = 15;
    }

    else
    {
      v12 = 63;
    }

    profile->var1.var0 = self->_frame.blocks[4] & v12;
    v13 = *(&self->_frame + 16) & 0x1F;
    if (v13 < 5)
    {
      LODWORD(v13) = 4;
LABEL_14:
      *a6 = self->_frame.blocks[v13 + 1];
      return 1;
    }

    v14 = &self->_frame.blocks[4];
    v15 = 4;
    while (1)
    {
      v16 = *v14++;
      if ((v16 & 0x80000000) == 0)
      {
        break;
      }

      if (v13 == ++v15)
      {
        goto LABEL_13;
      }
    }

    LODWORD(v13) = v15;
LABEL_13:
    if (v13 <= 0xE)
    {
      goto LABEL_14;
    }
  }

  return 0;
}

@end