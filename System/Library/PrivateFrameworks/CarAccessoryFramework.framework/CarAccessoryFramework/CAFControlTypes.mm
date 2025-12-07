@interface CAFControlTypes
+ (NSDictionary)controlNameByType;
+ (NSDictionary)controlTypeByName;
+ (id)controlNameFor:(id)for;
+ (id)controlNameForType:(id)type;
@end

@implementation CAFControlTypes

+ (NSDictionary)controlTypeByName
{
  if (controlTypeByName_onceToken != -1)
  {
    +[CAFControlTypes controlTypeByName];
  }

  v3 = controlTypeByName__controlTypeByName;

  return v3;
}

void __36__CAFControlTypes_controlTypeByName__block_invoke()
{
  v3[31] = *MEMORY[0x277D85DE8];
  v2[0] = @"BeginSeekBackward";
  v2[1] = @"BeginSeekForward";
  v3[0] = @"0x000000000F000038";
  v3[1] = @"0x000000000F000037";
  v2[2] = @"ChangeMediaSource";
  v2[3] = @"ConnectDevice";
  v3[2] = @"0x000000000F00004D";
  v3[3] = @"0x000000003600001A";
  v2[4] = @"DisconnectDevice";
  v2[5] = @"EndSeek";
  v3[4] = @"0x000000003600001B";
  v3[5] = @"0x000000000F000039";
  v2[6] = @"ForgetDevice";
  v2[7] = @"GetImageArchive";
  v3[6] = @"0x000000003600001C";
  v3[7] = @"0x0000000048000008";
  v2[8] = @"JumpBackward";
  v2[9] = @"JumpForward";
  v3[8] = @"0x000000000F00004A";
  v3[9] = @"0x000000000F000040";
  v2[10] = @"NextItem";
  v2[11] = @"Pause";
  v3[10] = @"0x000000000F000035";
  v3[11] = @"0x000000000F000033";
  v2[12] = @"Play";
  v2[13] = @"PreviousItem";
  v3[12] = @"0x000000000F000032";
  v3[13] = @"0x000000000F000036";
  v2[14] = @"Reset";
  v2[15] = @"SetArtistSongNotification";
  v3[14] = @"0x0000000030000062";
  v3[15] = @"0x000000000F00004E";
  v2[16] = @"Stop";
  v2[17] = @"TestAccEventNoParams";
  v3[16] = @"0x000000000F000034";
  v3[17] = @"0x00000000FF000032";
  v2[18] = @"TestAccEventWithParams";
  v2[19] = @"TestAccRequestNoParams";
  v3[18] = @"0x00000000FF000033";
  v3[19] = @"0x00000000FF00002E";
  v2[20] = @"TestAccRequestWithReqAndResParams";
  v2[21] = @"TestAccRequestWithReqParams";
  v3[20] = @"0x00000000FF000031";
  v3[21] = @"0x00000000FF00002F";
  v2[22] = @"TestAccRequestWithResParams";
  v2[23] = @"TestDevEventNoParams";
  v3[22] = @"0x00000000FF000030";
  v3[23] = @"0x00000000FF00002C";
  v2[24] = @"TestDevEventWithParams";
  v2[25] = @"TestDevRequestNoParams";
  v3[24] = @"0x00000000FF00002D";
  v3[25] = @"0x00000000FF000028";
  v2[26] = @"TestDevRequestWithReqAndResParams";
  v2[27] = @"TestDevRequestWithReqParams";
  v3[26] = @"0x00000000FF00002B";
  v3[27] = @"0x00000000FF000029";
  v2[28] = @"TestDevRequestWithResParams";
  v2[29] = @"TuneToFrequency";
  v3[28] = @"0x00000000FF00002A";
  v3[29] = @"0x000000000F00004C";
  v2[30] = @"TuneToIdentifier";
  v3[30] = @"0x000000000F00004B";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:31];
  v1 = controlTypeByName__controlTypeByName;
  controlTypeByName__controlTypeByName = v0;
}

+ (NSDictionary)controlNameByType
{
  if (controlNameByType_onceToken != -1)
  {
    +[CAFControlTypes controlNameByType];
  }

  v3 = controlNameByType__controlNameByType;

  return v3;
}

void __36__CAFControlTypes_controlNameByType__block_invoke()
{
  v3[31] = *MEMORY[0x277D85DE8];
  v2[0] = @"0x000000000F000038";
  v2[1] = @"0x000000000F000037";
  v3[0] = @"BeginSeekBackward";
  v3[1] = @"BeginSeekForward";
  v2[2] = @"0x000000000F00004D";
  v2[3] = @"0x000000003600001A";
  v3[2] = @"ChangeMediaSource";
  v3[3] = @"ConnectDevice";
  v2[4] = @"0x000000003600001B";
  v2[5] = @"0x000000000F000039";
  v3[4] = @"DisconnectDevice";
  v3[5] = @"EndSeek";
  v2[6] = @"0x000000003600001C";
  v2[7] = @"0x0000000048000008";
  v3[6] = @"ForgetDevice";
  v3[7] = @"GetImageArchive";
  v2[8] = @"0x000000000F00004A";
  v2[9] = @"0x000000000F000040";
  v3[8] = @"JumpBackward";
  v3[9] = @"JumpForward";
  v2[10] = @"0x000000000F000035";
  v2[11] = @"0x000000000F000033";
  v3[10] = @"NextItem";
  v3[11] = @"Pause";
  v2[12] = @"0x000000000F000032";
  v2[13] = @"0x000000000F000036";
  v3[12] = @"Play";
  v3[13] = @"PreviousItem";
  v2[14] = @"0x0000000030000062";
  v2[15] = @"0x000000000F00004E";
  v3[14] = @"Reset";
  v3[15] = @"SetArtistSongNotification";
  v2[16] = @"0x000000000F000034";
  v2[17] = @"0x00000000FF000032";
  v3[16] = @"Stop";
  v3[17] = @"TestAccEventNoParams";
  v2[18] = @"0x00000000FF000033";
  v2[19] = @"0x00000000FF00002E";
  v3[18] = @"TestAccEventWithParams";
  v3[19] = @"TestAccRequestNoParams";
  v2[20] = @"0x00000000FF000031";
  v2[21] = @"0x00000000FF00002F";
  v3[20] = @"TestAccRequestWithReqAndResParams";
  v3[21] = @"TestAccRequestWithReqParams";
  v2[22] = @"0x00000000FF000030";
  v2[23] = @"0x00000000FF00002C";
  v3[22] = @"TestAccRequestWithResParams";
  v3[23] = @"TestDevEventNoParams";
  v2[24] = @"0x00000000FF00002D";
  v2[25] = @"0x00000000FF000028";
  v3[24] = @"TestDevEventWithParams";
  v3[25] = @"TestDevRequestNoParams";
  v2[26] = @"0x00000000FF00002B";
  v2[27] = @"0x00000000FF000029";
  v3[26] = @"TestDevRequestWithReqAndResParams";
  v3[27] = @"TestDevRequestWithReqParams";
  v2[28] = @"0x00000000FF00002A";
  v2[29] = @"0x000000000F00004C";
  v3[28] = @"TestDevRequestWithResParams";
  v3[29] = @"TuneToFrequency";
  v2[30] = @"0x000000000F00004B";
  v3[30] = @"TuneToIdentifier";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:31];
  v1 = controlNameByType__controlNameByType;
  controlNameByType__controlNameByType = v0;
}

+ (id)controlNameForType:(id)type
{
  typeCopy = type;
  controlNameByType = [self controlNameByType];
  v6 = [controlNameByType objectForKeyedSubscript:typeCopy];

  if (!v6)
  {
    v6 = typeCopy;
  }

  return v6;
}

+ (id)controlNameFor:(id)for
{
  v4 = [self controlTypeFor:for];
  v5 = [self controlNameForType:v4];

  return v5;
}

@end