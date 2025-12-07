@interface TASPAdvertisement
+ (id)TASPAdvertisementBatteryStateToString:(int64_t)string;
+ (id)TASPAdvertisementDeviceTypeToString:(unint64_t)string;
+ (id)TASPAdvertisementTypeToString:(unint64_t)string;
- (BOOL)hasHawkeyeAdvertisementPolicy;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (TASPAdvertisement)initWithAddress:(id)address advertisementData:(id)data status:(unsigned __int8)status reserved:(id)reserved rssi:(int64_t)rssi scanDate:(id)date detailsBitmask:(unsigned int)bitmask uuid:(id)self0 protocolID:(id)self1;
- (TASPAdvertisement)initWithAddress:(id)address advertisementData:(id)data status:(unsigned __int8)status reserved:(id)reserved rssi:(int64_t)rssi scanDate:(id)date uuid:(id)uuid;
- (TASPAdvertisement)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (id)getLatestAdvTypeToString:(id)string;
- (int64_t)getBatteryState;
- (unint64_t)getAirPodsBudPosition:(int64_t)position;
- (unint64_t)getDeviceType;
- (unint64_t)getType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
@end

@implementation TASPAdvertisement

- (unint64_t)getDeviceType
{
  status = self->_status;
  result = (status >> 4) & 3;
  if (((status >> 4) & 3) > 1)
  {
    if (result == 3)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else if (!result)
  {
    if ([(TASPAdvertisement *)self isPosh]&& ![(TASPAdvertisement *)self isApple])
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (unint64_t)getType
{
  if ([(TASPAdvertisement *)self isNearOwner])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (NSString)description
{
  descriptionDictionary = [(TASPAdvertisement *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v4;
  }

  v8 = string;

  return v8;
}

- (id)descriptionDictionary
{
  v32[14] = *MEMORY[0x277D85DE8];
  v31[0] = @"EventType";
  v3 = objc_opt_class();
  v30 = NSStringFromClass(v3);
  v32[0] = v30;
  v31[1] = @"Address";
  address = [(TASPAdvertisement *)self address];
  hexString = [address hexString];
  v32[1] = hexString;
  v31[2] = @"Data";
  advertisementData = [(TASPAdvertisement *)self advertisementData];
  hexString2 = [advertisementData hexString];
  v32[2] = hexString2;
  v31[3] = @"Status";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[TASPAdvertisement status](self, "status")}];
  v32[3] = v25;
  v31[4] = @"Reserved";
  reserved = [(TASPAdvertisement *)self reserved];
  hexString3 = [reserved hexString];
  v32[4] = hexString3;
  v31[5] = @"RSSI";
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TASPAdvertisement rssi](self, "rssi")}];
  v32[5] = v22;
  v31[6] = @"Date";
  scanDate = [(TASPAdvertisement *)self scanDate];
  getDateString = [scanDate getDateString];
  v32[6] = getDateString;
  v31[7] = @"Type";
  v19 = [TASPAdvertisement TASPAdvertisementTypeToString:[(TASPAdvertisement *)self getType]];
  v32[7] = v19;
  v31[8] = @"DeviceType";
  v18 = [TASPAdvertisement TASPAdvertisementDeviceTypeToString:[(TASPAdvertisement *)self getDeviceType]];
  v32[8] = v18;
  v31[9] = @"UUID";
  uuid = [(TASPAdvertisement *)self uuid];
  if (uuid)
  {
    uuid2 = [(TASPAdvertisement *)self uuid];
    uUIDString = [uuid2 UUIDString];
  }

  else
  {
    uUIDString = &stru_287F632C0;
  }

  v32[9] = uUIDString;
  v31[10] = @"BatteryState";
  v6 = [TASPAdvertisement TASPAdvertisementBatteryStateToString:[(TASPAdvertisement *)self getBatteryState]];
  v32[10] = v6;
  v31[11] = @"DetailsBitmask";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[TASPAdvertisement detailsBitmask](self, "detailsBitmask")}];
  v32[11] = v7;
  v31[12] = @"DetailsBitmaskString";
  protocolID2 = MEMORY[0x277CCACA8];
  if ([(TASPAdvertisement *)self isPosh])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(TASPAdvertisement *)self isApple])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if ([(TASPAdvertisement *)self isNearOwner])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [protocolID2 stringWithFormat:@"isPosh, %@, isApple, %@, isNearOwner, %@", v9, v10, v11];
  v32[12] = v12;
  v31[13] = @"ProtocolIDString";
  protocolID = [(TASPAdvertisement *)self protocolID];
  if (protocolID)
  {
    protocolID2 = [(TASPAdvertisement *)self protocolID];
    stringValue = [protocolID2 stringValue];
  }

  else
  {
    stringValue = @"0";
  }

  v32[13] = stringValue;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:14];
  if (protocolID)
  {
  }

  if (uuid)
  {
  }

  return v15;
}

- (int64_t)getBatteryState
{
  status = self->_status;
  v3 = 2;
  if ((status & 0xC0) != 0x80)
  {
    v3 = (status & 0xC0) == 64;
  }

  if (status <= 0xBF)
  {
    return v3;
  }

  else
  {
    return 3;
  }
}

- (TASPAdvertisement)initWithAddress:(id)address advertisementData:(id)data status:(unsigned __int8)status reserved:(id)reserved rssi:(int64_t)rssi scanDate:(id)date uuid:(id)uuid
{
  statusCopy = status;
  uuidCopy = uuid;
  dateCopy = date;
  reservedCopy = reserved;
  dataCopy = data;
  addressCopy = address;
  if ([dataCopy length])
  {
    v21 = 2;
  }

  else
  {
    v21 = 6;
  }

  LODWORD(v24) = v21;
  v22 = [(TASPAdvertisement *)self initWithAddress:addressCopy advertisementData:dataCopy status:statusCopy reserved:reservedCopy rssi:rssi scanDate:dateCopy detailsBitmask:v24 uuid:uuidCopy protocolID:0];

  return v22;
}

- (TASPAdvertisement)initWithAddress:(id)address advertisementData:(id)data status:(unsigned __int8)status reserved:(id)reserved rssi:(int64_t)rssi scanDate:(id)date detailsBitmask:(unsigned int)bitmask uuid:(id)self0 protocolID:(id)self1
{
  addressCopy = address;
  dataCopy = data;
  reservedCopy = reserved;
  dateCopy = date;
  uuidCopy = uuid;
  dCopy = d;
  v39.receiver = self;
  v39.super_class = TASPAdvertisement;
  v23 = [(TASPAdvertisement *)&v39 init];
  if (!v23)
  {
LABEL_15:
    v24 = v23;
    goto LABEL_16;
  }

  v24 = 0;
  if (addressCopy && dataCopy && reservedCopy && dateCopy)
  {
    v25 = [addressCopy copy];
    address = v23->_address;
    v23->_address = v25;

    v27 = [dataCopy copy];
    advertisementData = v23->_advertisementData;
    v23->_advertisementData = v27;

    v23->_status = status;
    v29 = [reservedCopy copy];
    reserved = v23->_reserved;
    v23->_reserved = v29;

    v23->_rssi = rssi;
    v31 = [dateCopy copy];
    scanDate = v23->_scanDate;
    v23->_scanDate = v31;

    if (uuidCopy)
    {
      v33 = [uuidCopy copy];
    }

    else
    {
      v33 = 0;
    }

    uuid = v23->_uuid;
    v23->_uuid = v33;

    if (dCopy)
    {
      v35 = [dCopy copy];
    }

    else
    {
      v35 = 0;
    }

    protocolID = v23->_protocolID;
    v23->_protocolID = v35;

    v23->_detailsBitmask = bitmask;
    if ([(NSData *)v23->_reserved length]&& [(TASPAdvertisement *)v23 isApple])
    {
      v38 = 0;
      [(NSData *)v23->_reserved getBytes:&v38 length:1];
      v23->_beepOnMoveHigh = (v38 & 4) != 0;
    }

    goto LABEL_15;
  }

LABEL_16:

  return v24;
}

+ (id)TASPAdvertisementTypeToString:(unint64_t)string
{
  if (string > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_279DD1B20[string];
  }
}

+ (id)TASPAdvertisementDeviceTypeToString:(unint64_t)string
{
  if (string > 4)
  {
    return @"Invalid";
  }

  else
  {
    return off_279DD1B38[string];
  }
}

- (id)getLatestAdvTypeToString:(id)string
{
  stringCopy = string;
  if ([(TASPAdvertisement *)self isPosh]&& [(TASPAdvertisement *)self isApple])
  {
    if (stringCopy)
    {
      v5 = @":AP";
LABEL_17:
      v7 = [stringCopy stringByAppendingString:v5];

      goto LABEL_18;
    }

    v7 = @"AP";
  }

  else
  {
    if (![(TASPAdvertisement *)self isPosh]|| [(TASPAdvertisement *)self isApple])
    {
      isApple = [(TASPAdvertisement *)self isApple];
      if (isApple)
      {
        v7 = @"A";
      }

      else
      {
        v7 = @"NA";
      }

      if (isApple)
      {
        v5 = @":A";
      }

      else
      {
        v5 = @":NA";
      }

      if (!stringCopy)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (stringCopy)
    {
      v5 = @":P";
      goto LABEL_17;
    }

    v7 = @"P";
  }

LABEL_18:

  return v7;
}

+ (id)TASPAdvertisementBatteryStateToString:(int64_t)string
{
  if (string > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_279DD1B60[string];
  }
}

- (unint64_t)getAirPodsBudPosition:(int64_t)position
{
  positionCopy = position;
  v11 = *MEMORY[0x277D85DE8];
  if (position > 1)
  {
    v5 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 68289282;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      v9 = 1026;
      v10 = positionCopy;
      _os_log_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:received unexpected part identifier for AirPods bud, partIdentifier:%{public}d}", v6, 0x18u);
    }

    return 0;
  }

  else if (([(TASPAdvertisement *)self status]>> (1 - position)))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      scanDate = [(TASPAdvertisement *)self scanDate];
      scanDate2 = [(TASPAdvertisement *)v5 scanDate];
      if ([scanDate isEqualToDate:scanDate2])
      {
        advertisementData = [(TASPAdvertisement *)self advertisementData];
        advertisementData2 = [(TASPAdvertisement *)v5 advertisementData];
        if ([advertisementData isEqualToData:advertisementData2] && (v10 = -[TASPAdvertisement status](self, "status"), v10 == -[TASPAdvertisement status](v5, "status")))
        {
          reserved = [(TASPAdvertisement *)self reserved];
          reserved2 = [(TASPAdvertisement *)v5 reserved];
          if ([reserved isEqualToData:reserved2] && (v13 = -[TASPAdvertisement rssi](self, "rssi"), v13 == -[TASPAdvertisement rssi](v5, "rssi")))
          {
            address = [(TASPAdvertisement *)self address];
            address2 = [(TASPAdvertisement *)v5 address];
            if ([address isEqualToData:?])
            {
              v21 = address;
              detailsBitmask = [(TASPAdvertisement *)self detailsBitmask];
              if (detailsBitmask == [(TASPAdvertisement *)v5 detailsBitmask])
              {
                protocolID = [(TASPAdvertisement *)self protocolID];
                intValue = [protocolID intValue];
                protocolID2 = [(TASPAdvertisement *)v5 protocolID];
                v18 = intValue == [protocolID2 intValue];
              }

              else
              {
                v18 = 0;
              }

              address = v21;
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (unint64_t)hash
{
  rssi = [(TASPAdvertisement *)self rssi];
  if (rssi >= 0)
  {
    v4 = rssi;
  }

  else
  {
    v4 = -rssi;
  }

  v18 = v4;
  scanDate = [(TASPAdvertisement *)self scanDate];
  v17 = [scanDate hash];
  advertisementData = [(TASPAdvertisement *)self advertisementData];
  v7 = [advertisementData hash];
  status = [(TASPAdvertisement *)self status];
  reserved = [(TASPAdvertisement *)self reserved];
  v10 = [reserved hash];
  address = [(TASPAdvertisement *)self address];
  v12 = [address hash];
  detailsBitmask = [(TASPAdvertisement *)self detailsBitmask];
  protocolID = [(TASPAdvertisement *)self protocolID];
  v15 = v12 ^ detailsBitmask ^ [protocolID intValue];

  return v17 ^ v7 ^ v18 ^ status ^ v10 ^ v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  address = [(TASPAdvertisement *)self address];
  [coderCopy encodeObject:address forKey:@"Address"];

  advertisementData = [(TASPAdvertisement *)self advertisementData];
  [coderCopy encodeObject:advertisementData forKey:@"Data"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[TASPAdvertisement status](self, "status")}];
  [coderCopy encodeObject:v7 forKey:@"Status"];

  reserved = [(TASPAdvertisement *)self reserved];
  [coderCopy encodeObject:reserved forKey:@"Reserved"];

  [coderCopy encodeInteger:-[TASPAdvertisement rssi](self forKey:{"rssi"), @"RSSI"}];
  scanDate = [(TASPAdvertisement *)self scanDate];
  [coderCopy encodeObject:scanDate forKey:@"Date"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[TASPAdvertisement detailsBitmask](self, "detailsBitmask")}];
  [coderCopy encodeObject:v10 forKey:@"DetailsBitmask"];

  uuid = [(TASPAdvertisement *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"UUID"];

  protocolID = [(TASPAdvertisement *)self protocolID];
  [coderCopy encodeInt:objc_msgSend(protocolID forKey:{"intValue"), @"ProtocolIDString"}];
}

- (TASPAdvertisement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Address"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Data"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Status"];
  unsignedCharValue = [v4 unsignedCharValue];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Reserved"];
  v6 = [coderCopy decodeIntegerForKey:@"RSSI"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Date"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DetailsBitmask"];
  unsignedCharValue2 = [v8 unsignedCharValue];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v11 = MEMORY[0x277CCABB0];
  v12 = [coderCopy decodeIntForKey:@"ProtocolIDString"];

  v13 = [v11 numberWithInt:v12];
  LODWORD(v16) = unsignedCharValue2;
  v14 = [(TASPAdvertisement *)self initWithAddress:v19 advertisementData:v18 status:unsignedCharValue reserved:v5 rssi:v6 scanDate:v7 detailsBitmask:v16 uuid:v10 protocolID:v13];

  return v14;
}

- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length
{
  coderCopy = coder;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  [coderCopy appendBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];

  objc_autoreleasePoolPop(v6);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TASPAdvertisement alloc];
  LODWORD(v6) = self->_detailsBitmask;
  return [(TASPAdvertisement *)v4 initWithAddress:self->_address advertisementData:self->_advertisementData status:self->_status reserved:self->_reserved rssi:self->_rssi scanDate:self->_scanDate detailsBitmask:v6 uuid:self->_uuid protocolID:self->_protocolID];
}

- (BOOL)hasHawkeyeAdvertisementPolicy
{
  getDeviceType = [(TASPAdvertisement *)self getDeviceType];
  if (getDeviceType != 1)
  {
    LOBYTE(getDeviceType) = [(TASPAdvertisement *)self getDeviceType]== 2 || [(TASPAdvertisement *)self getDeviceType]== 4;
  }

  return getDeviceType;
}

@end