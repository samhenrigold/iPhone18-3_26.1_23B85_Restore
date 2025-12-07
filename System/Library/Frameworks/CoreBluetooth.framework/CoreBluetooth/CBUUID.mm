@interface CBUUID
+ (CBUUID)UUIDWithCFUUID:(CFUUIDRef)theUUID;
+ (CBUUID)UUIDWithData:(NSData *)theData;
+ (CBUUID)UUIDWithNSUUID:(NSUUID *)theUUID;
+ (CBUUID)UUIDWithString:(NSString *)theString;
- (BOOL)isEqual:(id)equal;
- (CBUUID)initWithCFUUID:(__CFUUID *)d;
- (CBUUID)initWithData:(id)data;
- (CBUUID)initWithNSUUID:(id)d;
- (CBUUID)initWithString:(id)string safe:(BOOL)safe;
- (NSData)data;
- (NSString)UUIDString;
- (id)description;
@end

@implementation CBUUID

- (NSData)data
{
  type = self->_type;
  if (type > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:self + qword_1C0B83818[type] length:qword_1C0B83830[type] freeWhenDone:{0, v2}];
  }

  return v5;
}

- (CBUUID)initWithString:(id)string safe:(BOOL)safe
{
  stringCopy = string;
  v17.receiver = self;
  v17.super_class = CBUUID;
  v8 = [(CBUUID *)&v17 init];
  if (!v8)
  {
    goto LABEL_19;
  }

  if ([stringCopy compare:@"0x" options:1 range:{0, 2}])
  {
    v9 = stringCopy;
    v10 = [v9 length];
    if (v10 != 36)
    {
      goto LABEL_4;
    }

LABEL_9:
    v8->_type = 2;
    uTF8String = [v9 UTF8String];
    if (!uTF8String)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v9 = [stringCopy substringFromIndex:2];
  v10 = [v9 length];
  if (v10 == 36)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v10 == 8)
  {
    v13 = [@"00000000-0000-1000-8000-00805F9B34FB" stringByReplacingCharactersInRange:0 withString:{8, v9}];

    v8->_type = 1;
    v9 = v13;
    uTF8String = [v13 UTF8String];
    if (!uTF8String)
    {
      goto LABEL_15;
    }
  }

  else if (v10 == 4)
  {
    v11 = [@"00000000-0000-1000-8000-00805F9B34FB" stringByReplacingCharactersInRange:4 withString:{4, v9}];

    v8->_type = 0;
    v9 = v11;
    uTF8String = [v11 UTF8String];
    if (!uTF8String)
    {
      goto LABEL_15;
    }
  }

  else
  {

    v9 = 0;
    uTF8String = [0 UTF8String];
    if (!uTF8String)
    {
      goto LABEL_15;
    }
  }

LABEL_14:
  if (!uuid_parse(uTF8String, v8->_bytes))
  {
LABEL_18:

LABEL_19:
    v14 = v8;
    goto LABEL_20;
  }

LABEL_15:
  if (!safe)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v8 file:@"CBUUID.m" lineNumber:370 description:{@"String %@ does not represent a valid UUID", stringCopy}];

    goto LABEL_18;
  }

  v14 = 0;
LABEL_20:

  return v14;
}

- (CBUUID)initWithData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = CBUUID;
  v6 = [(CBUUID *)&v10 init];
  if (v6)
  {
    v7 = [dataCopy length];
    switch(v7)
    {
      case 16:
        [dataCopy getBytes:v6 + 8 length:16];
        v6[24] = 2;
        break;
      case 4:
        *(v6 + 8) = CBBluetoothBaseUUIDData;
        [dataCopy getBytes:v6 + 8 length:4];
        v6[24] = 1;
        break;
      case 2:
        *(v6 + 8) = CBBluetoothBaseUUIDData;
        [dataCopy getBytes:v6 + 10 length:2];
        v6[24] = 0;
        break;
      default:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v6 file:@"CBUUID.m" lineNumber:397 description:{@"Data %@ does not represent a valid UUID", dataCopy}];

        break;
    }
  }

  return v6;
}

- (CBUUID)initWithCFUUID:(__CFUUID *)d
{
  v7.receiver = self;
  v7.super_class = CBUUID;
  result = [(CBUUID *)&v7 init];
  if (result)
  {
    v5 = result;
    v6 = CFUUIDGetUUIDBytes(d);
    result = v5;
    *v5->_bytes = v6;
    v5->_type = 2;
  }

  return result;
}

- (CBUUID)initWithNSUUID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = CBUUID;
  v5 = [(CBUUID *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [dCopy getUUIDBytes:v5->_bytes];
    v6->_type = 2;
  }

  return v6;
}

+ (CBUUID)UUIDWithString:(NSString *)theString
{
  v3 = theString;
  v4 = [[CBUUID alloc] initWithString:v3];

  return v4;
}

+ (CBUUID)UUIDWithData:(NSData *)theData
{
  v3 = theData;
  v4 = [[CBUUID alloc] initWithData:v3];

  return v4;
}

+ (CBUUID)UUIDWithCFUUID:(CFUUIDRef)theUUID
{
  v3 = [[CBUUID alloc] initWithCFUUID:theUUID];

  return v3;
}

+ (CBUUID)UUIDWithNSUUID:(NSUUID *)theUUID
{
  v3 = theUUID;
  v4 = [[CBUUID alloc] initWithNSUUID:v3];

  return v4;
}

- (NSString)UUIDString
{
  v8 = *MEMORY[0x1E69E9840];
  type = self->_type;
  if (type == 2)
  {
    memset(out, 0, 37);
    uuid_unparse_upper(self->_bytes, out);
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
  }

  else
  {
    if (type == 1)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X%02X%02X%02X", self->_bytes[0], self->_bytes[1], self->_bytes[2], self->_bytes[3]];
      goto LABEL_6;
    }

    if (!self->_type)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X%02X", self->_bytes[2], self->_bytes[3], v5, v6];
      v3 = LABEL_6:;
      goto LABEL_9;
    }

    v3 = 0;
  }

LABEL_9:

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *self->_bytes == equalCopy[1] && *&self->_bytes[8] == equalCopy[2];

    return v6;
  }

  else
  {

    return 0;
  }
}

- (id)description
{
  if (qword_1ED7C1FC0 != -1)
  {
    selfCopy = self;
    [CBUUID description];
    self = selfCopy;
  }

  uUIDString = [(CBUUID *)self UUIDString];
  v3 = [_MergedGlobals_1 objectForKeyedSubscript:uUIDString];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = uUIDString;
  }

  v6 = v5;

  return v5;
}

void __21__CBUUID_description__block_invoke()
{
  v3[194] = *MEMORY[0x1E69E9840];
  v2[0] = @"1800";
  v2[1] = @"1801";
  v3[0] = @"Generic Access Profile";
  v3[1] = @"Generic Attribute Profile";
  v2[2] = @"2900";
  v2[3] = @"2901";
  v3[2] = @"Characteristic Extended Properties";
  v3[3] = @"Characteristic User Description";
  v2[4] = @"2902";
  v2[5] = @"2903";
  v3[4] = @"Client Characteristic Configuration";
  v3[5] = @"Server Characteristic Configuration";
  v2[6] = @"2904";
  v2[7] = @"2905";
  v3[6] = @"Characteristic Format";
  v3[7] = @"Characteristic Aggregate Format";
  v2[8] = @"2A00";
  v2[9] = @"2A01";
  v3[8] = @"Device Name";
  v3[9] = @"Appearence";
  v2[10] = @"2A02";
  v2[11] = @"2A03";
  v3[10] = @"Peripheral Privacy Flag";
  v3[11] = @"Reconnection Address";
  v2[12] = @"2A04";
  v2[13] = @"2A05";
  v3[12] = @"Peripheral Preferred Connection Parameters";
  v3[13] = @"Service Changed";
  v2[14] = @"1805";
  v2[15] = @"2A2B";
  v3[14] = @"Current Time";
  v3[15] = @"Current Time";
  v2[16] = @"2A0F";
  v2[17] = @"180A";
  v3[16] = @"Local Time Information";
  v3[17] = @"Device Information";
  v2[18] = @"2A29";
  v2[19] = @"2A24";
  v3[18] = @"Manufacturer Name String";
  v3[19] = @"Model Number String";
  v2[20] = @"2A25";
  v2[21] = @"2A27";
  v3[20] = @"Serial Number String";
  v3[21] = @"Hardware Revision String";
  v2[22] = @"2A26";
  v2[23] = @"2A28";
  v3[22] = @"Firmware Revision String";
  v3[23] = @"Software Revision String";
  v2[24] = @"2A23";
  v2[25] = @"2A2A";
  v3[24] = @"System ID";
  v3[25] = @"IEEE Regulatory Certification";
  v2[26] = @"2A50";
  v2[27] = @"2BFF";
  v3[26] = @"PnP ID";
  v3[27] = @"UDI For Medical Device";
  v2[28] = @"180F";
  v2[29] = @"2A19";
  v3[28] = @"Battery";
  v3[29] = @"Battery Level";
  v2[30] = @"2BED";
  v2[31] = @"2A1A";
  v3[30] = @"Battery Level Status";
  v3[31] = @"Battery Power State";
  v2[32] = @"0106";
  v2[33] = @"010D";
  v3[32] = @"Battery Level Main";
  v3[33] = @"Battery Level Left";
  v2[34] = @"010E";
  v2[35] = @"1812";
  v3[34] = @"Battery Level Right";
  v3[35] = @"Human Interface Device";
  v2[36] = @"2A4E";
  v2[37] = @"2A4D";
  v3[36] = @"Protocol Mode";
  v3[37] = @"Report";
  v2[38] = @"2A4B";
  v2[39] = @"2A22";
  v3[38] = @"Report Map";
  v3[39] = @"Boot Keyboard Input Report";
  v2[40] = @"2A32";
  v2[41] = @"2A33";
  v3[40] = @"Boot Keyboard Output Report";
  v3[41] = @"Boot Mouse Input Report";
  v2[42] = @"2A4A";
  v2[43] = @"2A4C";
  v3[42] = @"HID Information";
  v3[43] = @"HID Control Point";
  v2[44] = @"2908";
  v2[45] = @"7905F431-B5CE-4E99-A40F-4B1E122D00D0";
  v3[44] = @"Report Reference";
  v3[45] = @"Apple Notification Center";
  v2[46] = @"69D1D8F3-45E1-49A8-9821-9BBDFDAAD9D9";
  v2[47] = @"9FBF120D-6301-42D9-8C58-25E699A21DBD";
  v3[46] = @"ANCS Control Point";
  v3[47] = @"ANCS Notification Source";
  v2[48] = @"22EAC6E9-24D6-4BB5-BE44-B36ACE7C7BFB";
  v2[49] = @"89D3502B-0F36-433A-8EF4-C502AD55F8DC";
  v3[48] = @"ANCS Data Source";
  v3[49] = @"Apple Media";
  v2[50] = @"9B3C81D8-57B1-4A8A-B8DF-0E56F7CA51C2";
  v2[51] = @"2F7CABCE-808D-411F-9A0C-BB92BA96C102";
  v3[50] = @"AMS Remote Command";
  v3[51] = @"AMS Entity Update";
  v2[52] = @"C6B2F38C-23AB-46D8-A6AB-A3A870BBD5D7";
  v2[53] = @"4715650B-5E9D-4AC2-B898-A4FC0AA5DF78";
  v3[52] = @"AMS Entity Attribute";
  v3[53] = @"Unified Accessory Restore";
  v2[54] = @"94110001-6D9B-4225-A4F1-6A4A7F01B0DE";
  v2[55] = @"1810";
  v3[54] = @"UARP Data Control Point";
  v3[55] = @"Blood Pressure";
  v2[56] = @"1816";
  v2[57] = @"1814";
  v3[56] = @"Cycling Speed and Cadence";
  v3[57] = @"Running Speed and Cadence";
  v2[58] = @"1818";
  v2[59] = @"1808";
  v3[58] = @"Cycling Power";
  v3[59] = @"Glucose";
  v2[60] = @"1809";
  v2[61] = @"180D";
  v3[60] = @"Health Thermometer";
  v3[61] = @"Heart Rate";
  v2[62] = @"181B";
  v2[63] = @"181D";
  v3[62] = @"Body Composition";
  v3[63] = @"Weight Scale";
  v2[64] = @"181F";
  v3[64] = @"Continuous Glucose Monitoring";
  v2[65] = @"1822";
  v3[65] = @"Pulse Oximeter";
  v2[66] = @"183A";
  v3[66] = @"Insulin Delivery";
  v2[67] = @"183E";
  v3[67] = @"Physical Activity Monitor";
  v2[68] = @"1840";
  v3[68] = @"Generic Health Sensor";
  v2[69] = @"2BF3";
  v3[69] = @"Health Sensor Features";
  v2[70] = @"2B8B";
  v3[70] = @"Live Health Observations";
  v2[71] = @"2BDD";
  v3[71] = @"Stored Health Observations";
  v2[72] = @"2A52";
  v3[72] = @"RACP";
  v2[73] = @"2BF4";
  v3[73] = @"GHS Control Point";
  v2[74] = @"2BF1";
  v3[74] = @"Observation Schedule Changed";
  v2[75] = @"183F";
  v3[75] = @"Elapsed Time";
  v2[76] = @"2BF2";
  v3[76] = @"Current Elapsed Time";
  v2[77] = @"181C";
  v3[77] = @"User Data";
  v2[78] = @"2A99";
  v3[78] = @"Database Change Increment";
  v2[79] = @"2A9A";
  v3[79] = @"User Index";
  v2[80] = @"2A9F";
  v3[80] = @"User Control Point";
  v2[81] = @"2B37";
  v3[81] = @"Registered User";
  v2[82] = @"0x2A37";
  v3[82] = @"Heart Rate Measurement";
  v2[83] = @"0x2A38";
  v3[83] = @"Body Sensor Location";
  v2[84] = @"0x2A39";
  v3[84] = @"Heart Rate Control Point";
  v2[85] = @"181E";
  v3[85] = @"Bond Management";
  v2[86] = @"D0611E78-BBB4-4591-A5F8-487910AE4366";
  v3[86] = @"Continuity";
  v2[87] = @"8667556C-9A37-4C91-84ED-54EE27D90049";
  v3[87] = @"Continuity";
  v2[88] = @"03B80E5A-EDE8-4B33-A751-6CE34EC4C700";
  v3[88] = @"BLE MIDI";
  v2[89] = @"F299FC19-5898-4F68-ACE6-E036ABE50781";
  v3[89] = @"BLE MFi";
  v2[90] = @"96E14983-7845-49FE-B8BF-E25F686943C6";
  v3[90] = @"MFi Team ID";
  v2[91] = @"BAA597B6-CFA9-405D-A489-158874B6F584";
  v3[91] = @"MFi Protocol String";
  v2[92] = @"24F3F235-12C9-477A-9F13-063C68504F97";
  v3[92] = @"MFi Command";
  v2[93] = @"8D79E060-DA4C-45A5-B668-B4B5352D41FF";
  v3[93] = @"MFi Accessory Type";
  v2[94] = @"EC7CC9FE-667F-41C6-8B79-663A1F08C39A";
  v3[94] = @"MFi Accessory Attributes";
  v2[95] = @"7401DD11-3558-4459-98EE-371BBFC84C45";
  v3[95] = @"MFi Auth PSM";
  v2[96] = @"9bd708d7-64c7-4e9f-9ded-f6b6c4551967";
  v3[96] = @"DoAP";
  v2[97] = @"f195b8fb-a9e2-4401-858b-2f87a06928a8";
  v3[97] = @"DoAP Supported Codec";
  v2[98] = @"e1f9b835-7e47-413d-af94-c68e574b8f7e";
  v3[98] = @"DoAP Select Codec";
  v2[99] = @"a08ce5ef-698a-42a2-b980-7f3ac00b3845";
  v3[99] = @"DoAP Start Streaming";
  v2[100] = @"6288ea2d-7b89-47ad-890b-9fa6bf3cfc58";
  v3[100] = @"DoAP Stop Streaming";
  v2[101] = @"3f1c161d-6473-4746-91f5-6d27610780c6";
  v3[101] = @"DoAP Send Data";
  v2[102] = @"c7c6947d-3165-4bcb-8eaf-b328896cb531";
  v3[102] = @"DoAP Event Indicator";
  v2[103] = @"7798082b-b7b7-45a6-9933-563492efe04e";
  v3[103] = @"Apple Headset Property";
  v2[104] = @"82f6bc0a-1bca-4873-afc9-ec5890e3469a";
  v3[104] = @"Dosimetry Sensitivity";
  v2[105] = @"d5f96afa-2f2c-41bb-a7e6-f54abe6235b4";
  v3[105] = @"Dosimetry Volume Curve";
  v2[106] = @"1b8d9548-c066-4fbf-bc7e-cf3e5a3fabbf";
  v3[106] = @"Secure Sensor";
  v2[107] = @"df970112-e36f-4b5e-a9af-02a16d9a1400";
  v3[107] = @"Secure Sensor Pairing";
  v2[108] = @"df970212-e36f-4b5e-a9af-02a16d9a1400";
  v3[108] = @"Secure Sensor Configuration";
  v2[109] = @"df970312-e36f-4b5e-a9af-02a16d9a1400";
  v3[109] = @"Secure Sensor Debug";
  v2[110] = @"df970412-e36f-4b5e-a9af-02a16d9a1400";
  v3[110] = @"Secure Sensor Audio";
  v2[111] = @"1855";
  v3[111] = @"Telephony and Media Audio Service";
  v2[112] = @"2B51";
  v3[112] = @"TMAP Role";
  v2[113] = @"1854";
  v3[113] = @"Hearing Access Service";
  v2[114] = @"2BDA";
  v3[114] = @"Hearing Aid Features";
  v2[115] = @"2BDB";
  v3[115] = @"Hearing Aid Preset Control Point";
  v2[116] = @"2BDC";
  v3[116] = @"Active Preset Index";
  v2[117] = @"1853";
  v3[117] = @"Common Audio Service";
  v2[118] = @"1850";
  v3[118] = @"Published Audio Capabilities Service";
  v2[119] = @"2BC9";
  v3[119] = @"Sink PAC";
  v2[120] = @"2BCB";
  v3[120] = @"Source PAC";
  v2[121] = @"2BCA";
  v3[121] = @"Sink Audio Locations";
  v2[122] = @"2BCC";
  v3[122] = @"Source Audio Locations";
  v2[123] = @"2BCD";
  v3[123] = @"Available Audio Contexts";
  v2[124] = @"2BCE";
  v3[124] = @"Supported Audio Contexts";
  v2[125] = @"184E";
  v3[125] = @"Audio Stream Control Service";
  v2[126] = @"2BC4";
  v3[126] = @"Sink ASE";
  v2[127] = @"2BC5";
  v3[127] = @"Source ASE";
  v2[128] = @"2BC6";
  v3[128] = @"ASE Control Point";
  v2[129] = @"184B";
  v3[129] = @"Telephone Bearer Service";
  v2[130] = @"184C";
  v3[130] = @"Generic Telephone Bearer Service";
  v2[131] = @"2BB3";
  v3[131] = @"Bearer Provider Name";
  v2[132] = @"2BB4";
  v3[132] = @"Bearer UCI";
  v2[133] = @"2BB5";
  v3[133] = @"Bearer Technology";
  v2[134] = @"2BB6";
  v3[134] = @"Bearer URI Schemes Supported List";
  v2[135] = @"2BB7";
  v3[135] = @"Bearer Signal Strength";
  v2[136] = @"2BB8";
  v3[136] = @"Bearer Signal Strength Reporting Interval";
  v2[137] = @"2BB9";
  v3[137] = @"Bearer List Current Calls";
  v2[138] = @"2BBB";
  v3[138] = @"Status Flags";
  v2[139] = @"2BBC";
  v3[139] = @"Incoming Call Target Bearer URI";
  v2[140] = @"2BBD";
  v3[140] = @"Call State";
  v2[141] = @"2BBE";
  v3[141] = @"Call Control Point";
  v2[142] = @"2BBF";
  v3[142] = @"Call Control Point Optional Opcodes";
  v2[143] = @"2BC0";
  v3[143] = @"Termination Reason";
  v2[144] = @"2BC1";
  v3[144] = @"Incoming Call";
  v2[145] = @"2BC2";
  v3[145] = @"Call Friendly Name";
  v2[146] = @"1848";
  v3[146] = @"Media Control Service";
  v2[147] = @"1849";
  v3[147] = @"Generic Media Control Service";
  v2[148] = @"2B93";
  v3[148] = @"Media Player Name";
  v2[149] = @"2B94";
  v3[149] = @"Media Player Icon Object ID";
  v2[150] = @"2B95";
  v3[150] = @"Media Player Icon URL";
  v2[151] = @"2B96";
  v3[151] = @"Track Changed";
  v2[152] = @"2B97";
  v3[152] = @"Track Title";
  v2[153] = @"2B98";
  v3[153] = @"Track Duration";
  v2[154] = @"2B99";
  v3[154] = @"Track Position";
  v2[155] = @"2B9A";
  v3[155] = @"Playback Speed";
  v2[156] = @"2B9B";
  v3[156] = @"Seeking Speed";
  v2[157] = @"2B9C";
  v3[157] = @"Current Track Segments Object ID";
  v2[158] = @"2B9D";
  v3[158] = @"Current Track Object ID";
  v2[159] = @"2B9E";
  v3[159] = @"Next Track Object ID";
  v2[160] = @"2B9F";
  v3[160] = @"Parent Group Object ID";
  v2[161] = @"2BA0";
  v3[161] = @"Current Group Object ID";
  v2[162] = @"2BA1";
  v3[162] = @"Playing Order";
  v2[163] = @"2BA2";
  v3[163] = @"Playing Orders Supported";
  v2[164] = @"2BA3";
  v3[164] = @"Media State";
  v2[165] = @"2BA4";
  v3[165] = @"Media Control Point";
  v2[166] = @"2BA5";
  v3[166] = @"Media Control Point Opcodes Supported";
  v2[167] = @"2BA7";
  v3[167] = @"Search Control Point";
  v2[168] = @"2BA6";
  v3[168] = @"Search Results Object ID";
  v2[169] = @"2BBA";
  v3[169] = @"Content Control Id";
  v2[170] = @"1846";
  v3[170] = @"Coordinated Set Identification Service";
  v2[171] = @"2B84";
  v3[171] = @"Set Identity Resolving Key";
  v2[172] = @"2B85";
  v3[172] = @"Coordinated Set Size";
  v2[173] = @"2B86";
  v3[173] = @"Set Member Lock";
  v2[174] = @"2B87";
  v3[174] = @"Set Member Rank";
  v2[175] = @"184D";
  v3[175] = @"Microphone Control Service";
  v2[176] = @"2BC3";
  v3[176] = @"Mute";
  v2[177] = @"1843";
  v3[177] = @"Audio Input Control Service";
  v2[178] = @"2B77";
  v3[178] = @"Audio Input State";
  v2[179] = @"2B78";
  v3[179] = @"Gain Setting Properties";
  v2[180] = @"2B79";
  v3[180] = @"Audio Input Type";
  v2[181] = @"2B7A";
  v3[181] = @"Audio Input Status";
  v2[182] = @"2B7B";
  v3[182] = @"Audio Input Control Point";
  v2[183] = @"2B7C";
  v3[183] = @"Audio Input Description";
  v2[184] = @"1844";
  v3[184] = @"Volume Control Service";
  v2[185] = @"2B7D";
  v3[185] = @"Volume State";
  v2[186] = @"2B7E";
  v3[186] = @"Volume Control Point";
  v2[187] = @"2B7F";
  v3[187] = @"Volume Flags";
  v2[188] = @"1845";
  v3[188] = @"Volume Offset Control Service";
  v2[189] = @"2B80";
  v3[189] = @"Volume Offset State";
  v2[190] = @"2B81";
  v3[190] = @"Audio Location";
  v2[191] = @"2B82";
  v3[191] = @"Volume Offset Control Point";
  v2[192] = @"2B83";
  v3[192] = @"Audio Output Description";
  v2[193] = @"E277E685-64CB-4A32-BF65-8766E708A037";
  v3[193] = @"Spatial HID Service";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:194];
  v1 = _MergedGlobals_1;
  _MergedGlobals_1 = v0;
}

@end