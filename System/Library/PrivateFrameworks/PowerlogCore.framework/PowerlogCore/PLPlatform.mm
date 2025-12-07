@interface PLPlatform
+ (BOOL)carrierBuild;
+ (BOOL)hasANE;
+ (BOOL)hasAOD;
+ (BOOL)hasAOP;
+ (BOOL)hasAOP2;
+ (BOOL)hasAOT;
+ (BOOL)hasCapability:(int)capability;
+ (BOOL)hasDCP;
+ (BOOL)hasGenerativeModelSystems;
+ (BOOL)hasLPEM;
+ (BOOL)hasNFC;
+ (BOOL)hasOLED;
+ (BOOL)hasProximitySensor;
+ (BOOL)hasSleepMedia;
+ (BOOL)internalBuild;
+ (BOOL)is64Bit;
+ (BOOL)isAppleTV;
+ (BOOL)isBasebandDSDS;
+ (BOOL)isBasebandDale;
+ (BOOL)isBasebandIBIS;
+ (BOOL)isBasebandIce;
+ (BOOL)isBasebandMav;
+ (BOOL)isBasebandMavLeg;
+ (BOOL)isBasebandMavToAllowSysdiagnoseTrigger;
+ (BOOL)isBasebandProto;
+ (BOOL)isDeviceClassName:(id)name;
+ (BOOL)isUsingAnOlderWifiChip;
+ (BOOL)isWatch;
+ (BOOL)isiOS;
+ (BOOL)isiPad;
+ (BOOL)isiPhone;
+ (BOOL)isiPod;
+ (BOOL)kPLXIsOneOf:(int)of firstArg:(int)arg restOfArgs:(char *)args;
+ (BOOL)nonUIBuild;
+ (id)kPLDeviceClassName;
+ (id)kPLDeviceMap;
+ (id)kPLPlatformAttributes;
+ (id)wrapDeviceArgumentsInArray:(int)array;
+ (int)kPLAudioClassOfDevice;
+ (int)kPLBasebandClassOfDevice;
+ (int)kPLCameraClassOfDevice;
+ (int)kPLDeviceClass;
+ (int)kPLDisplayClassOfDevice;
+ (int)kPLGPSClassOfDevice;
+ (int)kPLSoCClassOfDevice;
+ (int)kPLTorchClassOfDevice;
+ (int)kPLWiFiClassOfDevice;
@end

@implementation PLPlatform

+ (BOOL)hasAOD
{
  if (hasAOD_onceToken != -1)
  {
    +[PLPlatform hasAOD];
  }

  return hasAOD_result;
}

+ (BOOL)hasDCP
{
  if (hasDCP_onceToken != -1)
  {
    +[PLPlatform hasDCP];
  }

  return hasDCP_isDCPSupported;
}

+ (BOOL)isiOS
{
  if (isiOS_onceToken != -1)
  {
    +[PLPlatform isiOS];
  }

  return isiOS_isiOS;
}

+ (BOOL)internalBuild
{
  if (internalBuild_onceToken != -1)
  {
    +[PLPlatform internalBuild];
  }

  return internalBuild_result != 0;
}

+ (int)kPLDeviceClass
{
  kPLPlatformAttributes = [self kPLPlatformAttributes];
  v3 = [kPLPlatformAttributes objectAtIndexedSubscript:2];
  intValue = [v3 intValue];

  return intValue;
}

+ (BOOL)isiPod
{
  if (isiPod_onceToken != -1)
  {
    +[PLPlatform isiPod];
  }

  return isiPod_isiPod;
}

+ (id)kPLPlatformAttributes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PLPlatform_kPLPlatformAttributes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (kPLPlatformAttributes_onceToken != -1)
  {
    dispatch_once(&kPLPlatformAttributes_onceToken, block);
  }

  v2 = kPLPlatformAttributes_deviceInfo;

  return v2;
}

+ (BOOL)isBasebandMav
{
  if (isBasebandMav_onceToken != -1)
  {
    +[PLPlatform isBasebandMav];
  }

  return isBasebandMav_result;
}

+ (BOOL)isiPhone
{
  if (isiPhone_onceToken != -1)
  {
    +[PLPlatform isiPhone];
  }

  return isiPhone_isiPhone;
}

+ (int)kPLSoCClassOfDevice
{
  kPLPlatformAttributes = [self kPLPlatformAttributes];
  v3 = [kPLPlatformAttributes objectAtIndexedSubscript:3];
  intValue = [v3 intValue];

  return intValue;
}

+ (BOOL)hasGenerativeModelSystems
{
  if (hasGenerativeModelSystems_onceToken != -1)
  {
    +[PLPlatform hasGenerativeModelSystems];
  }

  return hasGenerativeModelSystems_supportsGMS;
}

+ (BOOL)isUsingAnOlderWifiChip
{
  if (isUsingAnOlderWifiChip_onceToken != -1)
  {
    +[PLPlatform isUsingAnOlderWifiChip];
  }

  return isUsingAnOlderWifiChip_result;
}

+ (int)kPLWiFiClassOfDevice
{
  kPLPlatformAttributes = [self kPLPlatformAttributes];
  v3 = [kPLPlatformAttributes objectAtIndexedSubscript:6];
  intValue = [v3 intValue];

  return intValue;
}

+ (BOOL)isiPad
{
  if (isiPad_onceToken != -1)
  {
    +[PLPlatform isiPad];
  }

  return isiPad_isiPad;
}

+ (BOOL)hasAOT
{
  if (hasAOT_onceToken != -1)
  {
    +[PLPlatform hasAOT];
  }

  return hasAOT_result;
}

+ (int)kPLBasebandClassOfDevice
{
  kPLPlatformAttributes = [self kPLPlatformAttributes];
  v3 = [kPLPlatformAttributes objectAtIndexedSubscript:5];
  intValue = [v3 intValue];

  return intValue;
}

+ (BOOL)isBasebandProto
{
  if (isBasebandProto_onceToken != -1)
  {
    +[PLPlatform isBasebandProto];
  }

  return isBasebandProto_result;
}

+ (BOOL)isBasebandDSDS
{
  if (isBasebandDSDS_onceToken != -1)
  {
    +[PLPlatform isBasebandDSDS];
  }

  return isBasebandDSDS_result;
}

+ (id)kPLDeviceMap
{
  v1190[149] = *MEMORY[0x1E69E9840];
  v1188 = 1602014129;
  v1187 = xmmword_1D86FA788;
  v717 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1189[0] = v717;
  v1189[1] = @"J71";
  v716 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1189 count:2];
  v715 = [self wrapDeviceArgumentsInArray:{100004, 1001003, 1002002, 0xFFFFFFFFLL, 1004003, 1005010, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v714 = [v716 arrayByAddingObjectsFromArray:v715];
  v713 = [v714 copy];
  v1190[0] = v713;
  v1185 = -810116762;
  v1184 = xmmword_1D86FA79C;
  v712 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1186[0] = v712;
  v1186[1] = @"J72";
  v711 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1186 count:2];
  v710 = [self wrapDeviceArgumentsInArray:{100005, 1001003, 1002002, 1003002, 1004003, 1005010, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v709 = [v711 arrayByAddingObjectsFromArray:v710];
  v708 = [v709 copy];
  v1190[1] = v708;
  v1182 = -1195351767;
  v1181 = xmmword_1D86FA7B0;
  v707 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1183[0] = v707;
  v1183[1] = @"J73";
  v706 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1183 count:2];
  v705 = [self wrapDeviceArgumentsInArray:{100006, 1001003, 1002002, 1003002, 1004003, 1005010, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v704 = [v706 arrayByAddingObjectsFromArray:v705];
  v703 = [v704 copy];
  v1190[2] = v703;
  v1179 = -1639077591;
  v1178 = xmmword_1D86FA7C4;
  v702 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1180[0] = v702;
  v1180[1] = @"J81";
  v701 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1180 count:2];
  v700 = [self wrapDeviceArgumentsInArray:{100007, 1001005, 1002003, 0xFFFFFFFFLL, 1004005, 1005002, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v699 = [v701 arrayByAddingObjectsFromArray:v700];
  v698 = [v699 copy];
  v1190[3] = v698;
  v1176 = 338555555;
  v1175 = xmmword_1D86FA7D8;
  v697 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1177[0] = v697;
  v1177[1] = @"J82";
  v696 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1177 count:2];
  v695 = [self wrapDeviceArgumentsInArray:{100008, 1001005, 1002003, 1003003, 1004005, 1005002, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v694 = [v696 arrayByAddingObjectsFromArray:v695];
  v693 = [v694 copy];
  v1190[4] = v693;
  v1173 = 1789837692;
  v1172 = xmmword_1D86FA7EC;
  v692 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1174[0] = v692;
  v1174[1] = @"J85";
  v691 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1174 count:2];
  v690 = [self wrapDeviceArgumentsInArray:{100010, 1001003, 1002004, 0xFFFFFFFFLL, 1004003, 1005003, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v689 = [v691 arrayByAddingObjectsFromArray:v690];
  v688 = [v689 copy];
  v1190[5] = v688;
  v1170 = -1239654590;
  v1169 = xmmword_1D86FA800;
  v687 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1171[0] = v687;
  v1171[1] = @"J86";
  v686 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1171 count:2];
  v685 = [self wrapDeviceArgumentsInArray:{100011, 1001003, 1002004, 1003002, 1004003, 1005003, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v684 = [v686 arrayByAddingObjectsFromArray:v685];
  v683 = [v684 copy];
  v1190[6] = v683;
  v1167 = -1579092758;
  v1166 = xmmword_1D86FA814;
  v682 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1168[0] = v682;
  v1168[1] = @"J87";
  v681 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1168 count:2];
  v680 = [self wrapDeviceArgumentsInArray:{100012, 1001003, 1002004, 1003002, 1004003, 1005003, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v679 = [v681 arrayByAddingObjectsFromArray:v680];
  v678 = [v679 copy];
  v1190[7] = v678;
  v1164 = 48355600;
  v1163 = xmmword_1D86FA828;
  v677 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1165[0] = v677;
  v1165[1] = @"J85M";
  v676 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1165 count:2];
  v675 = [self wrapDeviceArgumentsInArray:{100013, 1001003, 1002004, 0xFFFFFFFFLL, 1004003, 1005003, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v674 = [v676 arrayByAddingObjectsFromArray:v675];
  v673 = [v674 copy];
  v1190[8] = v673;
  v1161 = -679691073;
  v1160 = xmmword_1D86FA83C;
  v672 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1162[0] = v672;
  v1162[1] = @"J86M";
  v671 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1162 count:2];
  v670 = [self wrapDeviceArgumentsInArray:{100014, 1001003, 1002004, 1003002, 1004003, 1005003, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v669 = [v671 arrayByAddingObjectsFromArray:v670];
  v668 = [v669 copy];
  v1190[9] = v668;
  v1158 = 1430379884;
  v1157 = xmmword_1D86FA850;
  v667 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1159[0] = v667;
  v1159[1] = @"J87M";
  v666 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1159 count:2];
  v665 = [self wrapDeviceArgumentsInArray:{100015, 1001003, 1002004, 1003002, 1004003, 1005003, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v664 = [v666 arrayByAddingObjectsFromArray:v665];
  v663 = [v664 copy];
  v1190[10] = v663;
  v1155 = 1032708406;
  v1154 = xmmword_1D86FA864;
  v662 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1156[0] = v662;
  v1156[1] = @"J96";
  v661 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1156 count:2];
  v660 = [self wrapDeviceArgumentsInArray:{100016, 1001004, 1002004, 0xFFFFFFFFLL, 1004005, 1005003, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v659 = [v661 arrayByAddingObjectsFromArray:v660];
  v658 = [v659 copy];
  v1190[11] = v658;
  v1152 = 729903963;
  v1151 = xmmword_1D86FA878;
  v657 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1153[0] = v657;
  v1153[1] = @"J97";
  v656 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1153 count:2];
  v655 = [self wrapDeviceArgumentsInArray:{100017, 1001004, 1002004, 1003003, 1004005, 1005003, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v654 = [v656 arrayByAddingObjectsFromArray:v655];
  v653 = [v654 copy];
  v1190[12] = v653;
  v1149 = 1275676051;
  v1148 = xmmword_1D86FA88C;
  v652 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1150[0] = v652;
  v1150[1] = @"J98A";
  v651 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1150 count:2];
  v650 = [self wrapDeviceArgumentsInArray:{100018, 1001007, 1002005, 0xFFFFFFFFLL, 1004005, 1005005, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v649 = [v651 arrayByAddingObjectsFromArray:v650];
  v648 = [v649 copy];
  v1190[13] = v648;
  v1146 = 1908474541;
  v1145 = xmmword_1D86FA8A0;
  v647 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1147[0] = v647;
  v1147[1] = @"J99A";
  v646 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1147 count:2];
  v645 = [self wrapDeviceArgumentsInArray:{100019, 1001007, 1002005, 1003003, 1004005, 1005005, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v644 = [v646 arrayByAddingObjectsFromArray:v645];
  v643 = [v644 copy];
  v1190[14] = v643;
  v1143 = -1527788847;
  v1142 = xmmword_1D86FA8B4;
  v642 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1144[0] = v642;
  v1144[1] = @"J127";
  v641 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1144 count:2];
  v640 = [self wrapDeviceArgumentsInArray:{100020, 1001007, 1002006, 0xFFFFFFFFLL, 1004007, 1005004, 1006006, 1007004, 0xFFFFFFFFLL, 0}];
  v639 = [v641 arrayByAddingObjectsFromArray:v640];
  v638 = [v639 copy];
  v1190[15] = v638;
  v1140 = 1532898719;
  v1139 = xmmword_1D86FA8C8;
  v637 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1141[0] = v637;
  v1141[1] = @"J128";
  v636 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1141 count:2];
  v635 = [self wrapDeviceArgumentsInArray:{100021, 1001007, 1002006, 1003004, 1004007, 1005004, 1006006, 1007004, 1008001, 0}];
  v634 = [v636 arrayByAddingObjectsFromArray:v635];
  v633 = [v634 copy];
  v1190[16] = v633;
  v1137 = -199226823;
  v1136 = xmmword_1D86FA8DC;
  v632 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1138[0] = v632;
  v1138[1] = @"J71N";
  v631 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1138 count:2];
  v630 = [self wrapDeviceArgumentsInArray:{100022, 1001006, 1002002, 0xFFFFFFFFLL, 1004007, 1005006, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v629 = [v631 arrayByAddingObjectsFromArray:v630];
  v628 = [v629 copy];
  v1190[17] = v628;
  v1134 = -1283070668;
  v1133 = xmmword_1D86FA8F0;
  v627 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1135[0] = v627;
  v1135[1] = @"J72N";
  v626 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1135 count:2];
  v625 = [self wrapDeviceArgumentsInArray:{100023, 1001006, 1002002, 1003003, 1004007, 1005006, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v624 = [v626 arrayByAddingObjectsFromArray:v625];
  v623 = [v624 copy];
  v1190[18] = v623;
  v1131 = 1412427398;
  v1130 = xmmword_1D86FA904;
  v622 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1132[0] = v622;
  v1132[1] = @"J71N";
  v621 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1132 count:2];
  v620 = [self wrapDeviceArgumentsInArray:{100024, 1001006, 1002002, 0xFFFFFFFFLL, 1004007, 1005006, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v619 = [v621 arrayByAddingObjectsFromArray:v620];
  v618 = [v619 copy];
  v1190[19] = v618;
  v1128 = 160260070;
  v1127 = xmmword_1D86FA918;
  v617 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1129[0] = v617;
  v1129[1] = @"J72N";
  v616 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1129 count:2];
  v615 = [self wrapDeviceArgumentsInArray:{100025, 1001006, 1002002, 1003003, 1004007, 1005006, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v614 = [v616 arrayByAddingObjectsFromArray:v615];
  v613 = [v614 copy];
  v1190[20] = v613;
  v1125 = -1022451852;
  v1124 = xmmword_1D86FA92C;
  v612 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1126[0] = v612;
  v1126[1] = @"J98N";
  v611 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1126 count:2];
  v610 = [self wrapDeviceArgumentsInArray:{100026, 1001009, 1002017, 0xFFFFFFFFLL, 1004007, 1005007, 1006006, 1007004, 0xFFFFFFFFLL, 0}];
  v609 = [v611 arrayByAddingObjectsFromArray:v610];
  v608 = [v609 copy];
  v1190[21] = v608;
  v1122 = 1729782187;
  v1121 = xmmword_1D86FA940;
  v607 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1123[0] = v607;
  v1123[1] = @"J99N";
  v606 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1123 count:2];
  v605 = [self wrapDeviceArgumentsInArray:{100027, 1001009, 1002017, 1003005, 1004007, 1005007, 1006006, 1007004, 1008001, 0}];
  v604 = [v606 arrayByAddingObjectsFromArray:v605];
  v603 = [v604 copy];
  v1190[22] = v603;
  v1119 = 996646949;
  v1118 = xmmword_1D86FA954;
  v602 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1120[0] = v602;
  v1120[1] = @"J127N";
  v601 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1120 count:2];
  v600 = [self wrapDeviceArgumentsInArray:{100028, 1001009, 1002018, 0xFFFFFFFFLL, 1004007, 1005008, 1006006, 1007004, 0xFFFFFFFFLL, 0}];
  v599 = [v601 arrayByAddingObjectsFromArray:v600];
  v598 = [v599 copy];
  v1190[23] = v598;
  v1116 = -563086000;
  v1115 = xmmword_1D86FA968;
  v597 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1117[0] = v597;
  v1117[1] = @"J128N";
  v596 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1117 count:2];
  v595 = [self wrapDeviceArgumentsInArray:{100029, 1001009, 1002018, 1003005, 1004007, 1005008, 1006006, 1007004, 1008001, 0}];
  v594 = [v596 arrayByAddingObjectsFromArray:v595];
  v593 = [v594 copy];
  v1190[24] = v593;
  v1113 = 317289457;
  v1112 = xmmword_1D86FA97C;
  v592 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1114[0] = v592;
  v1114[1] = @"J71NM";
  v591 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1114 count:2];
  v590 = [self wrapDeviceArgumentsInArray:{100030, 1001008, 1002002, 0xFFFFFFFFLL, 1004007, 1005006, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v589 = [v591 arrayByAddingObjectsFromArray:v590];
  v588 = [v589 copy];
  v1190[25] = v588;
  v1110 = 401945557;
  v1109 = xmmword_1D86FA990;
  v587 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1111[0] = v587;
  v1111[1] = @"J72NM";
  v586 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1111 count:2];
  v585 = [self wrapDeviceArgumentsInArray:{100031, 1001008, 1002002, 1003004, 1004007, 1005006, 1006006, 0xFFFFFFFFLL, 1008001, 0}];
  v584 = [v586 arrayByAddingObjectsFromArray:v585];
  v583 = [v584 copy];
  v1190[26] = v583;
  v1107 = 2030516999;
  v1106 = xmmword_1D86FA9A4;
  v582 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1108[0] = v582;
  v1108[1] = @"J120N";
  v581 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1108 count:2];
  v580 = [self wrapDeviceArgumentsInArray:{100032, 1001012, 1002027, 0xFFFFFFFFLL, 1004013, 1005006, 1006007, 0xFFFFFFFFLL, 1008002, 0}];
  v579 = [v581 arrayByAddingObjectsFromArray:v580];
  v578 = [v579 copy];
  v1190[27] = v578;
  v1104 = -1276010597;
  v1103 = xmmword_1D86FA9B8;
  v577 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1105[0] = v577;
  v1105[1] = @"J120N";
  v576 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1105 count:2];
  v575 = [self wrapDeviceArgumentsInArray:{100033, 1001012, 1002027, 0xFFFFFFFFLL, 1004013, 1005006, 1006007, 0xFFFFFFFFLL, 1008002, 0}];
  v574 = [v576 arrayByAddingObjectsFromArray:v575];
  v573 = [v574 copy];
  v1190[28] = v573;
  v1101 = -762483149;
  v1100 = xmmword_1D86FA9CC;
  v572 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1102[0] = v572;
  v1102[1] = @"J121N";
  v571 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1102 count:2];
  v570 = [self wrapDeviceArgumentsInArray:{100034, 1001012, 1002027, 1003010, 1004013, 1005006, 1006007, 0xFFFFFFFFLL, 1008002, 0}];
  v569 = [v571 arrayByAddingObjectsFromArray:v570];
  v568 = [v569 copy];
  v1190[29] = v568;
  v1098 = -1926937532;
  v1097 = xmmword_1D86FA9E0;
  v567 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1099[0] = v567;
  v1099[1] = @"J121N";
  v566 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1099 count:2];
  v565 = [self wrapDeviceArgumentsInArray:{100035, 1001012, 1002027, 1003010, 1004013, 1005006, 1006007, 0xFFFFFFFFLL, 1008002, 0}];
  v564 = [v566 arrayByAddingObjectsFromArray:v565];
  v563 = [v564 copy];
  v1190[30] = v563;
  v1095 = -1902732724;
  v1094 = xmmword_1D86FA9F4;
  v562 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1096[0] = v562;
  v1096[1] = @"J120NM";
  v561 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1096 count:2];
  v560 = [self wrapDeviceArgumentsInArray:{100036, 1001012, 1002028, 0xFFFFFFFFLL, 1004013, 1005024, 1006007, 0xFFFFFFFFLL, 1008002, 0}];
  v559 = [v561 arrayByAddingObjectsFromArray:v560];
  v558 = [v559 copy];
  v1190[31] = v558;
  v1092 = -342357580;
  v1091 = xmmword_1D86FAA08;
  v557 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1093[0] = v557;
  v1093[1] = @"J120NM";
  v556 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1093 count:2];
  v555 = [self wrapDeviceArgumentsInArray:{100037, 1001012, 1002028, 0xFFFFFFFFLL, 1004013, 1005024, 1006007, 0xFFFFFFFFLL, 1008002, 0}];
  v554 = [v556 arrayByAddingObjectsFromArray:v555];
  v553 = [v554 copy];
  v1190[32] = v553;
  v1089 = 300442574;
  v1088 = xmmword_1D86FAA1C;
  v552 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1090[0] = v552;
  v1090[1] = @"J121NM";
  v551 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1090 count:2];
  v550 = [self wrapDeviceArgumentsInArray:{100038, 1001012, 1002028, 1003010, 1004013, 1005024, 1006007, 0xFFFFFFFFLL, 1008002, 0}];
  v549 = [v551 arrayByAddingObjectsFromArray:v550];
  v548 = [v549 copy];
  v1190[33] = v548;
  v1086 = -1294188889;
  v1085 = xmmword_1D86FAA30;
  v547 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1087[0] = v547;
  v1087[1] = @"J121NM";
  v546 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1087 count:2];
  v545 = [self wrapDeviceArgumentsInArray:{100039, 1001012, 1002028, 1003010, 1004013, 1005024, 1006007, 0xFFFFFFFFLL, 1008002, 0}];
  v544 = [v546 arrayByAddingObjectsFromArray:v545];
  v543 = [v544 copy];
  v1190[34] = v543;
  v1083 = 1278131292;
  v1082 = xmmword_1D86FAA44;
  v542 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1084[0] = v542;
  v1084[1] = @"J96NM";
  v541 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1084 count:2];
  v540 = [self wrapDeviceArgumentsInArray:{100040, 1001011, 1002004, 0xFFFFFFFFLL, 1004013, 1005003, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v539 = [v541 arrayByAddingObjectsFromArray:v540];
  v538 = [v539 copy];
  v1190[35] = v538;
  v1080 = -1841712216;
  v1079 = xmmword_1D86FAA58;
  v537 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1081[0] = v537;
  v1081[1] = @"J97NM";
  v536 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1081 count:2];
  v535 = [self wrapDeviceArgumentsInArray:{100041, 1001011, 1002004, 1003010, 1004013, 1005003, 1006006, 0xFFFFFFFFLL, 1008002, 0}];
  v534 = [v536 arrayByAddingObjectsFromArray:v535];
  v533 = [v534 copy];
  v1190[36] = v533;
  v1077 = 659506830;
  v1076 = xmmword_1D86FAA6C;
  v532 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1078[0] = v532;
  v1078[1] = @"J207N";
  v531 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1078 count:2];
  v530 = [self wrapDeviceArgumentsInArray:{100042, 1001011, 1002018, 0xFFFFFFFFLL, 1004013, 1005024, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v529 = [v531 arrayByAddingObjectsFromArray:v530];
  v528 = [v529 copy];
  v1190[37] = v528;
  v1074 = 213746202;
  v1073 = xmmword_1D86FAA80;
  v527 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1075[0] = v527;
  v1075[1] = @"J208N";
  v526 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1075 count:2];
  v525 = [self wrapDeviceArgumentsInArray:{100043, 1001011, 1002018, 1003010, 1004013, 1005024, 1006006, 0xFFFFFFFFLL, 1008002, 0}];
  v524 = [v526 arrayByAddingObjectsFromArray:v525];
  v523 = [v524 copy];
  v1190[38] = v523;
  v1071 = -1157300313;
  v1070 = xmmword_1D86FAA94;
  v522 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1072[0] = v522;
  v1072[1] = @"J71C";
  v521 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1072 count:2];
  v520 = [self wrapDeviceArgumentsInArray:{100044, 1001008, 1002018, 0xFFFFFFFFLL, 1004007, 1005006, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v519 = [v521 arrayByAddingObjectsFromArray:v520];
  v518 = [v519 copy];
  v1190[39] = v518;
  v1068 = -2132668294;
  v1067 = xmmword_1D86FAAA8;
  v517 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1069[0] = v517;
  v1069[1] = @"J72C";
  v516 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1069 count:2];
  v515 = [self wrapDeviceArgumentsInArray:{100045, 1001008, 1002018, 1003010, 1004007, 1005006, 1006006, 0xFFFFFFFFLL, 1008002, 0}];
  v514 = [v516 arrayByAddingObjectsFromArray:v515];
  v513 = [v514 copy];
  v1190[40] = v513;
  v1065 = 1126727276;
  v1064 = xmmword_1D86FAABC;
  v512 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1066[0] = v512;
  v1066[1] = @"J317N";
  v511 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1066 count:2];
  v510 = [self wrapDeviceArgumentsInArray:{100046, 1001012, 1002027, 0xFFFFFFFFLL, 1004014, 1005006, 1006009, 0xFFFFFFFFLL, 1008002, 0}];
  v509 = [v511 arrayByAddingObjectsFromArray:v510];
  v508 = [v509 copy];
  v1190[41] = v508;
  v1062 = 300130091;
  v1061 = xmmword_1D86FAAD0;
  v507 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1063[0] = v507;
  v1063[1] = @"J318N";
  v506 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1063 count:2];
  v505 = [self wrapDeviceArgumentsInArray:{100047, 1001012, 1002027, 1003011, 1004014, 1005006, 1006009, 0xFFFFFFFFLL, 1008002, 0}];
  v504 = [v506 arrayByAddingObjectsFromArray:v505];
  v503 = [v504 copy];
  v1190[42] = v503;
  v1059 = 343814884;
  v1058 = xmmword_1D86FAAE4;
  v502 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1060[0] = v502;
  v1060[1] = @"J320N";
  v501 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1060 count:2];
  v500 = [self wrapDeviceArgumentsInArray:{100048, 1001012, 1002028, 0xFFFFFFFFLL, 1004014, 1005006, 1006009, 0xFFFFFFFFLL, 1008002, 0}];
  v499 = [v501 arrayByAddingObjectsFromArray:v500];
  v498 = [v499 copy];
  v1190[43] = v498;
  v1056 = -1675932945;
  v1055 = xmmword_1D86FAAF8;
  v497 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1057[0] = v497;
  v1057[1] = @"J321N";
  v496 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1057 count:2];
  v495 = [self wrapDeviceArgumentsInArray:{100049, 1001012, 1002028, 1003011, 1004014, 1005006, 1006009, 0xFFFFFFFFLL, 1008002, 0}];
  v494 = [v496 arrayByAddingObjectsFromArray:v495];
  v493 = [v494 copy];
  v1190[44] = v493;
  v1053 = 372777383;
  v1052 = xmmword_1D86FAB0C;
  v492 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1054[0] = v492;
  v1054[1] = @"J71D";
  v491 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1054 count:2];
  v490 = [self wrapDeviceArgumentsInArray:{100050, 1001011, 1002018, 0xFFFFFFFFLL, 1004007, 1005006, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v489 = [v491 arrayByAddingObjectsFromArray:v490];
  v488 = [v489 copy];
  v1190[45] = v488;
  v1050 = -858079590;
  v1049 = xmmword_1D86FAB20;
  v487 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1051[0] = v487;
  v1051[1] = @"J72D";
  v486 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1051 count:2];
  v485 = [self wrapDeviceArgumentsInArray:{100051, 1001011, 1002018, 1003010, 1004007, 1005006, 1006006, 0xFFFFFFFFLL, 1008002, 0}];
  v484 = [v486 arrayByAddingObjectsFromArray:v485];
  v483 = [v484 copy];
  v1190[46] = v483;
  v1047 = 345196535;
  v1046 = xmmword_1D86FAB34;
  v482 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1048[0] = v482;
  v1048[1] = @"J127NM";
  v481 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1048 count:2];
  v480 = [self wrapDeviceArgumentsInArray:{100052, 1001014, 1002031, 0xFFFFFFFFLL, 1004015, 1005006, 1006006, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v479 = [v481 arrayByAddingObjectsFromArray:v480];
  v478 = [v479 copy];
  v1190[47] = v478;
  v1044 = 440949464;
  v1043 = xmmword_1D86FAB48;
  v477 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1045[0] = v477;
  v1045[1] = @"J128NM";
  v476 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1045 count:2];
  v475 = [self wrapDeviceArgumentsInArray:{100053, 1001014, 1002031, 1003011, 1004015, 1005006, 1006006, 0xFFFFFFFFLL, 1008002, 0}];
  v474 = [v476 arrayByAddingObjectsFromArray:v475];
  v473 = [v474 copy];
  v1190[48] = v473;
  v1041 = -695298128;
  v1040 = xmmword_1D86FAB5C;
  v472 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1042[0] = v472;
  v1042[1] = @"J317NM";
  v471 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1042 count:2];
  v470 = [self wrapDeviceArgumentsInArray:{100054, 1001015, 1002032, 0xFFFFFFFFLL, 1004015, 1005008, 1006012, 1007004, 0xFFFFFFFFLL, 0}];
  v469 = [v471 arrayByAddingObjectsFromArray:v470];
  v468 = [v469 copy];
  v1190[49] = v468;
  v1038 = 804488105;
  v1037 = xmmword_1D86FAB70;
  v467 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1039[0] = v467;
  v1039[1] = @"J317NM";
  v466 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1039 count:2];
  v465 = [self wrapDeviceArgumentsInArray:{100055, 1001015, 1002032, 0xFFFFFFFFLL, 1004015, 1005008, 1006012, 1007004, 0xFFFFFFFFLL, 0}];
  v464 = [v466 arrayByAddingObjectsFromArray:v465];
  v463 = [v464 copy];
  v1190[50] = v463;
  v1035 = 1614584579;
  v1034 = xmmword_1D86FAB84;
  v462 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1036[0] = v462;
  v1036[1] = @"J318NM";
  v461 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1036 count:2];
  v460 = [self wrapDeviceArgumentsInArray:{100056, 1001015, 1002032, 1003012, 1004015, 1005008, 1006012, 1007004, 1008004, 0}];
  v459 = [v461 arrayByAddingObjectsFromArray:v460];
  v458 = [v459 copy];
  v1190[51] = v458;
  v1032 = 324288768;
  v1031 = xmmword_1D86FAB98;
  v457 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1033[0] = v457;
  v1033[1] = @"J318NM";
  v456 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1033 count:2];
  v455 = [self wrapDeviceArgumentsInArray:{100057, 1001015, 1002032, 1003012, 1004015, 1005008, 1006012, 1007004, 1008004, 0}];
  v454 = [v456 arrayByAddingObjectsFromArray:v455];
  v453 = [v454 copy];
  v1190[52] = v453;
  v1029 = 460218192;
  v1028 = xmmword_1D86FABAC;
  v452 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1030[0] = v452;
  v1030[1] = @"J320NM";
  v451 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1030 count:2];
  v450 = [self wrapDeviceArgumentsInArray:{100058, 1001015, 1002030, 0xFFFFFFFFLL, 1004015, 1005008, 1006012, 1007004, 0xFFFFFFFFLL, 0}];
  v449 = [v451 arrayByAddingObjectsFromArray:v450];
  v448 = [v449 copy];
  v1190[53] = v448;
  v1026 = 2144905009;
  v1025 = xmmword_1D86FABC0;
  v447 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1027[0] = v447;
  v1027[1] = @"J320NM";
  v446 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1027 count:2];
  v445 = [self wrapDeviceArgumentsInArray:{100059, 1001015, 1002030, 0xFFFFFFFFLL, 1004015, 1005008, 1006012, 1007004, 0xFFFFFFFFLL, 0}];
  v444 = [v446 arrayByAddingObjectsFromArray:v445];
  v443 = [v444 copy];
  v1190[54] = v443;
  v1023 = 127894440;
  v1022 = xmmword_1D86FABD4;
  v442 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1024[0] = v442;
  v1024[1] = @"J321NM";
  v441 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1024 count:2];
  v440 = [self wrapDeviceArgumentsInArray:{100060, 1001015, 1002030, 1003012, 1004015, 1005008, 1006012, 1007004, 1008004, 0}];
  v439 = [v441 arrayByAddingObjectsFromArray:v440];
  v438 = [v439 copy];
  v1190[55] = v438;
  v1020 = 1070997468;
  v1019 = xmmword_1D86FABE8;
  v437 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1021[0] = v437;
  v1021[1] = @"J321NM";
  v436 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1021 count:2];
  v435 = [self wrapDeviceArgumentsInArray:{100061, 1001015, 1002030, 1003012, 1004015, 1005008, 1006012, 1007004, 1008004, 0}];
  v434 = [v436 arrayByAddingObjectsFromArray:v435];
  v433 = [v434 copy];
  v1190[56] = v433;
  v1017 = -212523443;
  v1016 = xmmword_1D86FABFC;
  v432 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1018[0] = v432;
  v1018[1] = @"J71DN";
  v431 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1018 count:2];
  v430 = [self wrapDeviceArgumentsInArray:{100062, 1001013, 1002018, 0xFFFFFFFFLL, 1004007, 1005006, 1006016, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v429 = [v431 arrayByAddingObjectsFromArray:v430];
  v428 = [v429 copy];
  v1190[57] = v428;
  v1014 = 646100384;
  v1013 = xmmword_1D86FAC10;
  v427 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1015[0] = v427;
  v1015[1] = @"J72DN";
  v426 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1015 count:2];
  v425 = [self wrapDeviceArgumentsInArray:{100063, 1001013, 1002018, 1003010, 1004007, 1005006, 1006016, 0xFFFFFFFFLL, 1008002, 0}];
  v424 = [v426 arrayByAddingObjectsFromArray:v425];
  v423 = [v424 copy];
  v1190[58] = v423;
  v1011 = 688565114;
  v1010 = xmmword_1D86FAC24;
  v422 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1012[0] = v422;
  v1012[1] = @"J96NMN";
  v421 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1012 count:2];
  v420 = [self wrapDeviceArgumentsInArray:{100064, 1001016, 1002033, 0xFFFFFFFFLL, 1004015, 1005003, 1006013, 1007004, 0xFFFFFFFFLL, 0}];
  v419 = [v421 arrayByAddingObjectsFromArray:v420];
  v418 = [v419 copy];
  v1190[59] = v418;
  v1008 = -493418906;
  v1007 = xmmword_1D86FAC38;
  v417 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1009[0] = v417;
  v1009[1] = @"J97NMN";
  v416 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1009 count:2];
  v415 = [self wrapDeviceArgumentsInArray:{100065, 1001016, 1002033, 1003013, 1004015, 1005003, 1006013, 1007004, 1008004, 0}];
  v414 = [v416 arrayByAddingObjectsFromArray:v415];
  v413 = [v414 copy];
  v1190[60] = v413;
  v1005 = -545612308;
  v1004 = xmmword_1D86FAC4C;
  v412 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1006[0] = v412;
  v1006[1] = @"J307N";
  v411 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1006 count:2];
  v410 = [self wrapDeviceArgumentsInArray:{100066, 1001015, 1002036, 0xFFFFFFFFLL, 1004015, 1005028, 1006017, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v409 = [v411 arrayByAddingObjectsFromArray:v410];
  v408 = [v409 copy];
  v1190[61] = v408;
  v1002 = 1178062702;
  v1001 = xmmword_1D86FAC60;
  v407 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1003[0] = v407;
  v1003[1] = @"J307NM";
  v406 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1003 count:2];
  v405 = [self wrapDeviceArgumentsInArray:{100067, 1001015, 1002036, 1003013, 1004015, 1005028, 1006017, 0xFFFFFFFFLL, 1008004, 0}];
  v404 = [v406 arrayByAddingObjectsFromArray:v405];
  v403 = [v404 copy];
  v1190[62] = v403;
  v999 = -340360463;
  v998 = xmmword_1D86FAC74;
  v402 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v1000[0] = v402;
  v1000[1] = @"J271";
  v401 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1000 count:2];
  v400 = [self wrapDeviceArgumentsInArray:{100068, 1001014, 1002040, 0xFFFFFFFFLL, 1004015, 1005030, 1006021, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v399 = [v401 arrayByAddingObjectsFromArray:v400];
  v398 = [v399 copy];
  v1190[63] = v398;
  v996 = 1605231531;
  v995 = xmmword_1D86FAC88;
  v397 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v997[0] = v397;
  v997[1] = @"J272";
  v396 = [MEMORY[0x1E695DEC8] arrayWithObjects:v997 count:2];
  v395 = [self wrapDeviceArgumentsInArray:{100069, 1001014, 1002040, 1003013, 1004015, 1005030, 1006021, 0xFFFFFFFFLL, 1008004, 0}];
  v394 = [v396 arrayByAddingObjectsFromArray:v395];
  v393 = [v394 copy];
  v1190[64] = v393;
  v993 = 1878025452;
  v992 = xmmword_1D86FAC9C;
  v392 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v994[0] = v392;
  v994[1] = @"J617";
  v391 = [MEMORY[0x1E695DEC8] arrayWithObjects:v994 count:2];
  v390 = [self wrapDeviceArgumentsInArray:{100070, 1001017, 1002041, 0xFFFFFFFFLL, 1004016, 1005032, 1006022, 1007004, 0xFFFFFFFFLL, 0}];
  v389 = [v391 arrayByAddingObjectsFromArray:v390];
  v388 = [v389 copy];
  v1190[65] = v388;
  v990 = 1725957070;
  v989 = xmmword_1D86FACB0;
  v387 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v991[0] = v387;
  v991[1] = @"J618";
  v386 = [MEMORY[0x1E695DEC8] arrayWithObjects:v991 count:2];
  v385 = [self wrapDeviceArgumentsInArray:{100071, 1001017, 1002041, 1003015, 1004016, 1005032, 1006022, 1007004, 1008004, 0}];
  v384 = [v386 arrayByAddingObjectsFromArray:v385];
  v383 = [v384 copy];
  v1190[66] = v383;
  v987 = 538967431;
  v986 = xmmword_1D86FACC4;
  v382 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v988[0] = v382;
  v988[1] = @"J620";
  v381 = [MEMORY[0x1E695DEC8] arrayWithObjects:v988 count:2];
  v380 = [self wrapDeviceArgumentsInArray:{100072, 1001017, 1002030, 0xFFFFFFFFLL, 1004016, 1005032, 1006022, 1007004, 0xFFFFFFFFLL, 0}];
  v379 = [v381 arrayByAddingObjectsFromArray:v380];
  v378 = [v379 copy];
  v1190[67] = v378;
  v984 = 2060712151;
  v983 = xmmword_1D86FACD8;
  v377 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v985[0] = v377;
  v985[1] = @"J621";
  v376 = [MEMORY[0x1E695DEC8] arrayWithObjects:v985 count:2];
  v375 = [self wrapDeviceArgumentsInArray:{100073, 1001017, 1002030, 1003015, 1004016, 1005032, 1006022, 1007004, 1008004, 0}];
  v374 = [v376 arrayByAddingObjectsFromArray:v375];
  v373 = [v374 copy];
  v1190[68] = v373;
  v981 = 958549802;
  v980 = xmmword_1D86FACEC;
  v372 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v982[0] = v372;
  v982[1] = @"J507";
  v371 = [MEMORY[0x1E695DEC8] arrayWithObjects:v982 count:2];
  v370 = [self wrapDeviceArgumentsInArray:{100074, 1001017, 1002056, 0xFFFFFFFFLL, 1004016, 1005042, 1006028, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v369 = [v371 arrayByAddingObjectsFromArray:v370];
  v368 = [v369 copy];
  v1190[69] = v368;
  v978 = -12497897;
  v977 = xmmword_1D86FAD00;
  v367 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v979[0] = v367;
  v979[1] = @"J508";
  v366 = [MEMORY[0x1E695DEC8] arrayWithObjects:v979 count:2];
  v365 = [self wrapDeviceArgumentsInArray:{100075, 1001017, 1002056, 1003016, 1004016, 1005042, 1006028, 0xFFFFFFFFLL, 1008004, 0}];
  v364 = [v366 arrayByAddingObjectsFromArray:v365];
  v363 = [v364 copy];
  v1190[70] = v363;
  v975 = 1377540371;
  v974 = xmmword_1D86FAD14;
  v362 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v976[0] = v362;
  v976[1] = @"J537";
  v361 = [MEMORY[0x1E695DEC8] arrayWithObjects:v976 count:2];
  v360 = [self wrapDeviceArgumentsInArray:{100076, 1001017, 1002055, 0xFFFFFFFFLL, 1004016, 1005043, 1006029, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v359 = [v361 arrayByAddingObjectsFromArray:v360];
  v358 = [v359 copy];
  v1190[71] = v358;
  v972 = -518121279;
  v971 = xmmword_1D86FAD28;
  v357 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v973[0] = v357;
  v973[1] = @"J538";
  v356 = [MEMORY[0x1E695DEC8] arrayWithObjects:v973 count:2];
  v355 = [self wrapDeviceArgumentsInArray:{100077, 1001017, 1002055, 1003016, 1004016, 1005043, 1006029, 0xFFFFFFFFLL, 1008004, 0}];
  v354 = [v356 arrayByAddingObjectsFromArray:v355];
  v353 = [v354 copy];
  v1190[72] = v353;
  v969 = 802516499;
  v968 = xmmword_1D86FAD3C;
  v352 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v970[0] = v352;
  v970[1] = @"J717";
  v351 = [MEMORY[0x1E695DEC8] arrayWithObjects:v970 count:2];
  v350 = [self wrapDeviceArgumentsInArray:{100078, 1001020, 1002057, 0xFFFFFFFFLL, 1004016, 1005044, 1006025, 1007004, 0xFFFFFFFFLL, 0}];
  v349 = [v351 arrayByAddingObjectsFromArray:v350];
  v348 = [v349 copy];
  v1190[73] = v348;
  v966 = -1919324456;
  v965 = xmmword_1D86FAD50;
  v347 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v967[0] = v347;
  v967[1] = @"J718";
  v346 = [MEMORY[0x1E695DEC8] arrayWithObjects:v967 count:2];
  v345 = [self wrapDeviceArgumentsInArray:{100079, 1001020, 1002057, 1003016, 1004016, 1005044, 1006025, 1007004, 1008004, 0}];
  v344 = [v346 arrayByAddingObjectsFromArray:v345];
  v343 = [v344 copy];
  v1190[74] = v343;
  v963 = 1127969586;
  v962 = xmmword_1D86FAD64;
  v342 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v964[0] = v342;
  v964[1] = @"J720";
  v341 = [MEMORY[0x1E695DEC8] arrayWithObjects:v964 count:2];
  v340 = [self wrapDeviceArgumentsInArray:{100080, 1001020, 1002057, 0xFFFFFFFFLL, 1004016, 1005044, 1006025, 1007004, 0xFFFFFFFFLL, 0}];
  v339 = [v341 arrayByAddingObjectsFromArray:v340];
  v338 = [v339 copy];
  v1190[75] = v338;
  v960 = 1292009573;
  v959 = xmmword_1D86FAD78;
  v337 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v961[0] = v337;
  v961[1] = @"J721";
  v336 = [MEMORY[0x1E695DEC8] arrayWithObjects:v961 count:2];
  v335 = [self wrapDeviceArgumentsInArray:{100081, 1001020, 1002057, 1003016, 1004016, 1005044, 1006025, 1007004, 1008004, 0}];
  v334 = [v336 arrayByAddingObjectsFromArray:v335];
  v333 = [v334 copy];
  v1190[76] = v333;
  v957 = 1656760039;
  v956 = xmmword_1D86FAD8C;
  v332 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v958[0] = v332;
  v958[1] = @"J817";
  v331 = [MEMORY[0x1E695DEC8] arrayWithObjects:v958 count:2];
  v330 = [self wrapDeviceArgumentsInArray:{100092, 1001028, 1002057, 0xFFFFFFFFLL, 1004019, 1005044, 1006025, 1007004, 0xFFFFFFFFLL, 0}];
  v329 = [v331 arrayByAddingObjectsFromArray:v330];
  v328 = [v329 copy];
  v1190[77] = v328;
  v954 = -2071977621;
  v953 = xmmword_1D86FADA0;
  v327 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v955[0] = v327;
  v955[1] = @"J818";
  v326 = [MEMORY[0x1E695DEC8] arrayWithObjects:v955 count:2];
  v325 = [self wrapDeviceArgumentsInArray:{100093, 1001028, 1002057, 1003018, 1004019, 1005044, 1006025, 1007004, 1008004, 0}];
  v324 = [v326 arrayByAddingObjectsFromArray:v325];
  v323 = [v324 copy];
  v1190[78] = v323;
  v951 = -543210860;
  v950 = xmmword_1D86FADB4;
  v322 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v952[0] = v322;
  v952[1] = @"J820";
  v321 = [MEMORY[0x1E695DEC8] arrayWithObjects:v952 count:2];
  v320 = [self wrapDeviceArgumentsInArray:{100094, 1001028, 1002057, 0xFFFFFFFFLL, 1004019, 1005044, 1006025, 1007004, 0xFFFFFFFFLL, 0}];
  v319 = [v321 arrayByAddingObjectsFromArray:v320];
  v318 = [v319 copy];
  v1190[79] = v318;
  v948 = -1597604211;
  v947 = xmmword_1D86FADC8;
  v317 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v949[0] = v317;
  v949[1] = @"J821";
  v316 = [MEMORY[0x1E695DEC8] arrayWithObjects:v949 count:2];
  v315 = [self wrapDeviceArgumentsInArray:{100095, 1001028, 1002057, 1003018, 1004019, 1005044, 1006025, 1007004, 1008004, 0}];
  v314 = [v316 arrayByAddingObjectsFromArray:v315];
  v313 = [v314 copy];
  v1190[80] = v313;
  v945 = -16711936;
  v944 = xmmword_1D86FB278;
  v312 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v946[0] = v312;
  v946[1] = @"J381";
  v311 = [MEMORY[0x1E695DEC8] arrayWithObjects:v946 count:2];
  v310 = [self wrapDeviceArgumentsInArray:{100082, 1001014, 1002053, 0xFFFFFFFFLL, 1004018, 1005030, 1006021, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v309 = [v311 arrayByAddingObjectsFromArray:v310];
  v308 = [v309 copy];
  v1190[81] = v308;
  v942 = -16711936;
  v941 = xmmword_1D86FB278;
  v307 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v943[0] = v307;
  v943[1] = @"J382";
  v306 = [MEMORY[0x1E695DEC8] arrayWithObjects:v943 count:2];
  v305 = [self wrapDeviceArgumentsInArray:{100083, 1001014, 1002053, 1003016, 1004018, 1005030, 1006021, 0xFFFFFFFFLL, 1008004, 0}];
  v304 = [v306 arrayByAddingObjectsFromArray:v305];
  v303 = [v304 copy];
  v1190[82] = v303;
  v939 = -773054213;
  v938 = xmmword_1D86FADDC;
  v302 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v940[0] = v302;
  v940[1] = @"J410";
  v301 = [MEMORY[0x1E695DEC8] arrayWithObjects:v940 count:2];
  v300 = [self wrapDeviceArgumentsInArray:{100084, 1001019, 1002054, 0xFFFFFFFFLL, 1004016, 1005045, 1006030, 1007004, 0xFFFFFFFFLL, 0}];
  v299 = [v301 arrayByAddingObjectsFromArray:v300];
  v298 = [v299 copy];
  v1190[83] = v298;
  v936 = -1204420428;
  v935 = xmmword_1D86FADF0;
  v297 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v937[0] = v297;
  v937[1] = @"J411";
  v296 = [MEMORY[0x1E695DEC8] arrayWithObjects:v937 count:2];
  v295 = [self wrapDeviceArgumentsInArray:{100085, 1001019, 1002054, 1003016, 1004016, 1005045, 1006030, 1007004, 1008004, 0}];
  v294 = [v296 arrayByAddingObjectsFromArray:v295];
  v293 = [v294 copy];
  v1190[84] = v293;
  v933 = -1231738393;
  v932 = xmmword_1D86FAE04;
  v292 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v934[0] = v292;
  v934[1] = @"J481";
  v291 = [MEMORY[0x1E695DEC8] arrayWithObjects:v934 count:2];
  v290 = [self wrapDeviceArgumentsInArray:{100086, 1001018, 1002054, 0xFFFFFFFFLL, 1004018, 1005030, 1006021, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v289 = [v291 arrayByAddingObjectsFromArray:v290];
  v288 = [v289 copy];
  v1190[85] = v288;
  v930 = 164967128;
  v929 = xmmword_1D86FAE18;
  v287 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v931[0] = v287;
  v931[1] = @"J482";
  v286 = [MEMORY[0x1E695DEC8] arrayWithObjects:v931 count:2];
  v718 = [self wrapDeviceArgumentsInArray:{100087, 1001018, 1002054, 1003016, 1004015, 1005030, 1006021, 0xFFFFFFFFLL, 1008004, 0}];
  v285 = [v286 arrayByAddingObjectsFromArray:v718];
  v284 = [v285 copy];
  v1190[86] = v284;
  v927 = -1047119348;
  v926 = xmmword_1D86FAE2C;
  v283 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v928[0] = v283;
  v928[1] = @"J607";
  v282 = [MEMORY[0x1E695DEC8] arrayWithObjects:v928 count:2];
  v281 = [self wrapDeviceArgumentsInArray:{100088, 1001018, 1002056, 0xFFFFFFFFLL, 1004016, 1005042, 1006028, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v280 = [v282 arrayByAddingObjectsFromArray:v281];
  v279 = [v280 copy];
  v1190[87] = v279;
  v924 = -1346985080;
  v923 = xmmword_1D86FAE40;
  v278 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v925[0] = v278;
  v925[1] = @"J608";
  v277 = [MEMORY[0x1E695DEC8] arrayWithObjects:v925 count:2];
  v276 = [self wrapDeviceArgumentsInArray:{100089, 1001018, 1002056, 1003016, 1004016, 1005042, 1006028, 0xFFFFFFFFLL, 1008004, 0}];
  v275 = [v277 arrayByAddingObjectsFromArray:v276];
  v274 = [v275 copy];
  v1190[88] = v274;
  v921 = -1243071412;
  v920 = xmmword_1D86FAE54;
  v273 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v922[0] = v273;
  v922[1] = @"J637";
  v272 = [MEMORY[0x1E695DEC8] arrayWithObjects:v922 count:2];
  v271 = [self wrapDeviceArgumentsInArray:{100090, 1001018, 1002055, 0xFFFFFFFFLL, 1004016, 1005043, 1006029, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v270 = [v272 arrayByAddingObjectsFromArray:v271];
  v269 = [v270 copy];
  v1190[89] = v269;
  v918 = 2017356181;
  v917 = xmmword_1D86FAE68;
  v268 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v919[0] = v268;
  v919[1] = @"J638";
  v267 = [MEMORY[0x1E695DEC8] arrayWithObjects:v919 count:2];
  v266 = [self wrapDeviceArgumentsInArray:{100091, 1001018, 1002055, 1003016, 1004016, 1005043, 1006029, 0xFFFFFFFFLL, 1008004, 0}];
  v265 = [v267 arrayByAddingObjectsFromArray:v266];
  v264 = [v265 copy];
  v1190[90] = v264;
  v915 = 1960366092;
  v914 = xmmword_1D86FAE7C;
  v263 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v916[0] = v263;
  v916[1] = @"N102";
  v261 = [MEMORY[0x1E695DEC8] arrayWithObjects:v916 count:2];
  v260 = [self wrapDeviceArgumentsInArray:{101001, 1001004, 1002007, 0xFFFFFFFFLL, 1004006, 1005009, 1006001, 1007001, 0xFFFFFFFFLL, 0}];
  v259 = [v261 arrayByAddingObjectsFromArray:v260];
  v258 = [v259 copy];
  v1190[91] = v258;
  v912 = -2114570942;
  v911 = xmmword_1D86FAE90;
  v257 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v913[0] = v257;
  v913[1] = @"N102N";
  v256 = [MEMORY[0x1E695DEC8] arrayWithObjects:v913 count:2];
  v255 = [self wrapDeviceArgumentsInArray:{101002, 1001008, 1002029, 0xFFFFFFFFLL, 1004008, 1005025, 1006001, 1007001, 0xFFFFFFFFLL, 0}];
  v254 = [v256 arrayByAddingObjectsFromArray:v255];
  v253 = [v254 copy];
  v1190[92] = v253;
  v909 = 28030256;
  v908 = xmmword_1D86FAEA4;
  v252 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v910[0] = v252;
  v910[1] = @"N51";
  v250 = [MEMORY[0x1E695DEC8] arrayWithObjects:v910 count:2];
  v249 = [self wrapDeviceArgumentsInArray:{102005, 1001003, 1002008, 1003002, 1004002, 1005012, 1006001, 1007002, 1008001, 0}];
  v248 = [v250 arrayByAddingObjectsFromArray:v249];
  v247 = [v248 copy];
  v1190[93] = v247;
  v906 = 1214363620;
  v905 = xmmword_1D86FAEB8;
  v246 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v907[0] = v246;
  v907[1] = @"N53";
  v245 = [MEMORY[0x1E695DEC8] arrayWithObjects:v907 count:2];
  v731 = [self wrapDeviceArgumentsInArray:{102006, 1001003, 1002008, 1003002, 1004002, 1005012, 1006001, 1007002, 1008001, 0}];
  v244 = [v245 arrayByAddingObjectsFromArray:v731];
  v243 = [v244 copy];
  v1190[94] = v243;
  v903 = -798153473;
  v902 = xmmword_1D86FAECC;
  v242 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v904[0] = v242;
  v904[1] = @"N56";
  v241 = [MEMORY[0x1E695DEC8] arrayWithObjects:v904 count:2];
  v240 = [self wrapDeviceArgumentsInArray:{102007, 1001004, 1002009, 1003003, 1004006, 1005014, 1006001, 1007003, 1008001, 0}];
  v239 = [v241 arrayByAddingObjectsFromArray:v240];
  v238 = [v239 copy];
  v1190[95] = v238;
  v900 = -776721724;
  v899 = xmmword_1D86FAEE0;
  v237 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v901[0] = v237;
  v901[1] = @"N61";
  v236 = [MEMORY[0x1E695DEC8] arrayWithObjects:v901 count:2];
  v729 = [self wrapDeviceArgumentsInArray:{102008, 1001004, 1002010, 1003003, 1004006, 1005013, 1006001, 1007004, 1008001, 0}];
  v235 = [v236 arrayByAddingObjectsFromArray:v729];
  v234 = [v235 copy];
  v1190[96] = v234;
  v897 = -1403227947;
  v896 = xmmword_1D86FAEF4;
  v233 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v898[0] = v233;
  v898[1] = @"N66";
  v232 = [MEMORY[0x1E695DEC8] arrayWithObjects:v898 count:2];
  v231 = [self wrapDeviceArgumentsInArray:{102009, 1001006, 1002011, 1003004, 1004005, 1005015, 1006001, 1007004, 1008001, 0}];
  v230 = [v232 arrayByAddingObjectsFromArray:v231];
  v229 = [v230 copy];
  v1190[97] = v229;
  v894 = 729118884;
  v893 = xmmword_1D86FAF08;
  v228 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v895[0] = v228;
  v895[1] = @"N66M";
  v227 = [MEMORY[0x1E695DEC8] arrayWithObjects:v895 count:2];
  v226 = [self wrapDeviceArgumentsInArray:{102010, 1001006, 1002011, 1003004, 1004005, 1005015, 1006001, 1007004, 1008001, 0}];
  v225 = [v227 arrayByAddingObjectsFromArray:v226];
  v224 = [v225 copy];
  v1190[98] = v224;
  v891 = -489993439;
  v890 = xmmword_1D86FAF1C;
  v223 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v892[0] = v223;
  v892[1] = @"N71";
  v222 = [MEMORY[0x1E695DEC8] arrayWithObjects:v892 count:2];
  v221 = [self wrapDeviceArgumentsInArray:{102011, 1001006, 1002012, 1003004, 1004005, 1005015, 1006001, 1007004, 1008001, 0}];
  v220 = [v222 arrayByAddingObjectsFromArray:v221];
  v219 = [v220 copy];
  v1190[99] = v219;
  v888 = 886875686;
  v887 = xmmword_1D86FAF30;
  v218 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v889[0] = v218;
  v889[1] = @"N71M";
  v217 = [MEMORY[0x1E695DEC8] arrayWithObjects:v889 count:2];
  v732 = [self wrapDeviceArgumentsInArray:{102012, 1001006, 1002012, 1003004, 1004005, 1005015, 1006001, 1007004, 1008001, 0}];
  v730 = [v217 arrayByAddingObjectsFromArray:v732];
  v216 = [v730 copy];
  v1190[100] = v216;
  v885 = 1046806126;
  v884 = xmmword_1D86FAF44;
  v215 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v886[0] = v215;
  v886[1] = @"N69";
  v214 = [MEMORY[0x1E695DEC8] arrayWithObjects:v886 count:2];
  v213 = [self wrapDeviceArgumentsInArray:{102013, 1001006, 1002008, 1003003, 1004008, 1005016, 1006001, 1007002, 1008001, 0}];
  v212 = [v214 arrayByAddingObjectsFromArray:v213];
  v211 = [v212 copy];
  v1190[101] = v211;
  v882 = -188760945;
  v881 = xmmword_1D86FAF58;
  v210 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v883[0] = v210;
  v883[1] = @"N69U";
  v209 = [MEMORY[0x1E695DEC8] arrayWithObjects:v883 count:2];
  v728 = [self wrapDeviceArgumentsInArray:{102014, 1001006, 1002008, 1003003, 1004008, 1005016, 1006001, 1007002, 1008001, 0}];
  v719 = [v209 arrayByAddingObjectsFromArray:v728];
  v208 = [v719 copy];
  v1190[102] = v208;
  v879 = -350584140;
  v878 = xmmword_1D86FAF6C;
  v207 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v880[0] = v207;
  v880[1] = @"D10";
  v206 = [MEMORY[0x1E695DEC8] arrayWithObjects:v880 count:2];
  v205 = [self wrapDeviceArgumentsInArray:{102015, 1001008, 1002013, 1003005, 1004007, 1005017, 1006002, 1007005, 1008001, 0}];
  v203 = [v206 arrayByAddingObjectsFromArray:v205];
  v202 = [v203 copy];
  v1190[103] = v202;
  v876 = -1418383976;
  v875 = xmmword_1D86FAF80;
  v201 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v877[0] = v201;
  v877[1] = @"D101";
  v200 = [MEMORY[0x1E695DEC8] arrayWithObjects:v877 count:2];
  v199 = [self wrapDeviceArgumentsInArray:{102016, 1001008, 1002013, 1003006, 1004007, 1005017, 1006002, 1007005, 1008002, 0}];
  v198 = [v200 arrayByAddingObjectsFromArray:v199];
  v197 = [v198 copy];
  v1190[104] = v197;
  v873 = 368778837;
  v872 = xmmword_1D86FAF94;
  v196 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v874[0] = v196;
  v874[1] = @"D11";
  v195 = [MEMORY[0x1E695DEC8] arrayWithObjects:v874 count:2];
  v737 = [self wrapDeviceArgumentsInArray:{102017, 1001008, 1002014, 1003005, 1004007, 1005018, 1006003, 1007005, 1008001, 0}];
  v194 = [v195 arrayByAddingObjectsFromArray:v737];
  v193 = [v194 copy];
  v1190[105] = v193;
  v870 = -1213485500;
  v869 = xmmword_1D86FAFA8;
  v192 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v871[0] = v192;
  v871[1] = @"D111";
  v191 = [MEMORY[0x1E695DEC8] arrayWithObjects:v871 count:2];
  v736 = [self wrapDeviceArgumentsInArray:{102018, 1001008, 1002014, 1003006, 1004007, 1005018, 1006003, 1007005, 1008002, 0}];
  v190 = [v191 arrayByAddingObjectsFromArray:v736];
  v189 = [v190 copy];
  v1190[106] = v189;
  v867 = 414393924;
  v866 = xmmword_1D86FAFBC;
  v188 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v868[0] = v188;
  v868[1] = @"D10N";
  v187 = [MEMORY[0x1E695DEC8] arrayWithObjects:v868 count:2];
  v186 = [self wrapDeviceArgumentsInArray:{102021, 1001010, 1002019, 1003007, 1004010, 1005021, 1006002, 1007006, 1008001, 0}];
  v185 = [v187 arrayByAddingObjectsFromArray:v186];
  v184 = [v185 copy];
  v1190[107] = v184;
  v864 = 897736383;
  v863 = xmmword_1D86FAFD0;
  v183 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v865[0] = v183;
  v865[1] = @"D101N";
  v182 = [MEMORY[0x1E695DEC8] arrayWithObjects:v865 count:2];
  v181 = [self wrapDeviceArgumentsInArray:{102022, 1001010, 1002019, 1003008, 1004010, 1005021, 1006002, 1007006, 1008002, 0}];
  v180 = [v182 arrayByAddingObjectsFromArray:v181];
  v179 = [v180 copy];
  v1190[108] = v179;
  v861 = -996295886;
  v860 = xmmword_1D86FAFE4;
  v178 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v862[0] = v178;
  v862[1] = @"D11N";
  v177 = [MEMORY[0x1E695DEC8] arrayWithObjects:v862 count:2];
  v176 = [self wrapDeviceArgumentsInArray:{102023, 1001010, 1002020, 1003007, 1004010, 1005021, 1006004, 1007006, 1008001, 0}];
  v175 = [v177 arrayByAddingObjectsFromArray:v176];
  v174 = [v175 copy];
  v1190[109] = v174;
  v858 = -453987047;
  v857 = xmmword_1D86FAFF8;
  v173 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v859[0] = v173;
  v859[1] = @"D111N";
  v172 = [MEMORY[0x1E695DEC8] arrayWithObjects:v859 count:2];
  v171 = [self wrapDeviceArgumentsInArray:{102024, 1001010, 1002020, 1003008, 1004010, 1005021, 1006004, 1007006, 1008002, 0}];
  v170 = [v172 arrayByAddingObjectsFromArray:v171];
  v169 = [v170 copy];
  v1190[110] = v169;
  v855 = -337121064;
  v854 = xmmword_1D86FB00C;
  v168 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v856[0] = v168;
  v856[1] = @"D11NM";
  v167 = [MEMORY[0x1E695DEC8] arrayWithObjects:v856 count:2];
  v738 = [self wrapDeviceArgumentsInArray:{102025, 1001010, 1002021, 1003007, 1004010, 1005022, 1006004, 1007006, 1008001, 0}];
  v166 = [v167 arrayByAddingObjectsFromArray:v738];
  v165 = [v166 copy];
  v1190[111] = v165;
  v852 = 450980336;
  v851 = xmmword_1D86FB020;
  v164 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v853[0] = v164;
  v853[1] = @"D111NM";
  v163 = [MEMORY[0x1E695DEC8] arrayWithObjects:v853 count:2];
  v741 = [self wrapDeviceArgumentsInArray:{102026, 1001010, 1002021, 1003008, 1004010, 1005022, 1006004, 1007006, 1008002, 0}];
  v162 = [v163 arrayByAddingObjectsFromArray:v741];
  v161 = [v162 copy];
  v1190[112] = v161;
  v849 = -232427879;
  v848 = xmmword_1D86FB034;
  v160 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v850[0] = v160;
  v850[1] = @"D211NM";
  v159 = [MEMORY[0x1E695DEC8] arrayWithObjects:v850 count:2];
  v158 = [self wrapDeviceArgumentsInArray:{102027, 1001011, 1002024, 1003010, 1004013, 1005023, 1006005, 1007006, 1008002, 0}];
  v157 = [v159 arrayByAddingObjectsFromArray:v158];
  v156 = [v157 copy];
  v1190[113] = v156;
  v846 = 1477534141;
  v845 = xmmword_1D86FB048;
  v155 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v847[0] = v155;
  v847[1] = @"D231NM";
  v154 = [MEMORY[0x1E695DEC8] arrayWithObjects:v847 count:2];
  v262 = [self wrapDeviceArgumentsInArray:{102028, 1001011, 1002025, 1003010, 1004013, 1005023, 1006005, 1007006, 1008002, 0}];
  v153 = [v154 arrayByAddingObjectsFromArray:v262];
  v152 = [v153 copy];
  v1190[114] = v152;
  v843 = -1843102369;
  v842 = xmmword_1D86FB05C;
  v151 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v844[0] = v151;
  v844[1] = @"D201NM";
  v150 = [MEMORY[0x1E695DEC8] arrayWithObjects:v844 count:2];
  v742 = [self wrapDeviceArgumentsInArray:{102029, 1001011, 1002026, 1003010, 1004010, 1005023, 1006005, 1007006, 1008002, 0}];
  v726 = [v150 arrayByAddingObjectsFromArray:v742];
  v149 = [v726 copy];
  v1190[115] = v149;
  v840 = -61007701;
  v839 = xmmword_1D86FB070;
  v148 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v841[0] = v148;
  v841[1] = @"D321NM";
  v147 = [MEMORY[0x1E695DEC8] arrayWithObjects:v841 count:2];
  v146 = [self wrapDeviceArgumentsInArray:{102030, 1001013, 1002030, 1003011, 1004014, 1005026, 1006008, 1007006, 1008002, 0}];
  v145 = [v147 arrayByAddingObjectsFromArray:v146];
  v144 = [v145 copy];
  v1190[116] = v144;
  v837 = -235416490;
  v836 = xmmword_1D86FB084;
  v142 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v838[0] = v142;
  v838[1] = @"D331NM";
  v141 = [MEMORY[0x1E695DEC8] arrayWithObjects:v838 count:2];
  v140 = [self wrapDeviceArgumentsInArray:{102031, 1001013, 1002030, 1003011, 1004014, 1005026, 1006008, 1007006, 1008002, 0}];
  v139 = [v141 arrayByAddingObjectsFromArray:v140];
  v138 = [v139 copy];
  v1190[117] = v138;
  v834 = -820493242;
  v833 = xmmword_1D86FB098;
  v137 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v835[0] = v137;
  v835[1] = @"D332NM";
  v136 = [MEMORY[0x1E695DEC8] arrayWithObjects:v835 count:2];
  v135 = [self wrapDeviceArgumentsInArray:{102032, 1001013, 1002030, 1003011, 1004014, 1005026, 1006008, 1007006, 1008002, 0}];
  v134 = [v136 arrayByAddingObjectsFromArray:v135];
  v133 = [v134 copy];
  v1190[118] = v133;
  v831 = -121925081;
  v830 = xmmword_1D86FB0AC;
  v132 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v832[0] = v132;
  v832[1] = @"D10NM";
  v131 = [MEMORY[0x1E695DEC8] arrayWithObjects:v832 count:2];
  v744 = [self wrapDeviceArgumentsInArray:{102033, 1001013, 1002019, 1003011, 1004014, 1005021, 1006002, 1007006, 1008002, 0}];
  v740 = [v131 arrayByAddingObjectsFromArray:v744];
  v727 = [v740 copy];
  v1190[119] = v727;
  v828 = 1071957977;
  v827 = xmmword_1D86FB0C0;
  v251 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v829[0] = v251;
  v829[1] = @"D421NM";
  v204 = [MEMORY[0x1E695DEC8] arrayWithObjects:v829 count:2];
  v130 = [self wrapDeviceArgumentsInArray:{102034, 1001014, 1002030, 1003012, 1004015, 1005026, 1006010, 1007006, 1008004, 0}];
  v129 = [v204 arrayByAddingObjectsFromArray:v130];
  v128 = [v129 copy];
  v1190[120] = v128;
  v825 = 438437663;
  v824 = xmmword_1D86FB0D4;
  v127 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v826[0] = v127;
  v826[1] = @"D431NM";
  v126 = [MEMORY[0x1E695DEC8] arrayWithObjects:v826 count:2];
  v125 = [self wrapDeviceArgumentsInArray:{102035, 1001014, 1002030, 1003012, 1004015, 1005026, 1006010, 1007006, 1008004, 0}];
  v124 = [v126 arrayByAddingObjectsFromArray:v125];
  v123 = [v124 copy];
  v1190[121] = v123;
  v822 = -382792827;
  v821 = xmmword_1D86FB0E8;
  v122 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v823[0] = v122;
  v823[1] = @"D432NM";
  v121 = [MEMORY[0x1E695DEC8] arrayWithObjects:v823 count:2];
  v120 = [self wrapDeviceArgumentsInArray:{102036, 1001014, 1002030, 1003012, 1004015, 1005026, 1006011, 1007006, 1008004, 0}];
  v119 = [v121 arrayByAddingObjectsFromArray:v120];
  v118 = [v119 copy];
  v1190[122] = v118;
  v819 = 1575123478;
  v818 = xmmword_1D86FB0FC;
  v117 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v820[0] = v117;
  v820[1] = @"D441NM";
  v116 = [MEMORY[0x1E695DEC8] arrayWithObjects:v820 count:2];
  v734 = [self wrapDeviceArgumentsInArray:{102037, 1001014, 1002030, 1003012, 1004015, 1005026, 1006011, 1007006, 1008004, 0}];
  v725 = [v116 arrayByAddingObjectsFromArray:v734];
  v115 = [v725 copy];
  v1190[123] = v115;
  v816 = 123138233;
  v815 = xmmword_1D86FB110;
  v114 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v817[0] = v114;
  v817[1] = @"D521NM";
  v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:v817 count:2];
  v112 = [self wrapDeviceArgumentsInArray:{102038, 1001016, 1002030, 1003013, 1004015, 1005026, 1006014, 1007006, 1008004, 0}];
  v111 = [v113 arrayByAddingObjectsFromArray:v112];
  v110 = [v111 copy];
  v1190[124] = v110;
  v813 = 681511593;
  v812 = xmmword_1D86FB124;
  v109 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v814[0] = v109;
  v814[1] = @"D531NM";
  v108 = [MEMORY[0x1E695DEC8] arrayWithObjects:v814 count:2];
  v107 = [self wrapDeviceArgumentsInArray:{102039, 1001016, 1002030, 1003013, 1004015, 1005026, 1006014, 1007006, 1008004, 0}];
  v106 = [v108 arrayByAddingObjectsFromArray:v107];
  v105 = [v106 copy];
  v1190[125] = v105;
  v810 = 713503427;
  v809 = xmmword_1D86FB138;
  v104 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v811[0] = v104;
  v811[1] = @"D532NM";
  v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:v811 count:2];
  v102 = [self wrapDeviceArgumentsInArray:{102040, 1001016, 1002030, 1003013, 1004015, 1005026, 1006015, 1007006, 1008004, 0}];
  v101 = [v103 arrayByAddingObjectsFromArray:v102];
  v100 = [v101 copy];
  v1190[126] = v100;
  v807 = -1632750650;
  v806 = xmmword_1D86FB14C;
  v99 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v808[0] = v99;
  v808[1] = @"D541NM";
  v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:v808 count:2];
  v721 = [self wrapDeviceArgumentsInArray:{102041, 1001016, 1002030, 1003013, 1004015, 1005026, 1006015, 1007006, 1008004, 0}];
  v97 = [v98 arrayByAddingObjectsFromArray:v721];
  v96 = [v97 copy];
  v1190[127] = v96;
  v804 = -1431778695;
  v803 = xmmword_1D86FB160;
  v95 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v805[0] = v95;
  v805[1] = @"D10NMN";
  v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v805 count:2];
  v745 = [self wrapDeviceArgumentsInArray:{102042, 1001016, 1002019, 1003014, 1004015, 1005029, 1006018, 1007006, 1008004, 0}];
  v93 = [v94 arrayByAddingObjectsFromArray:v745];
  v92 = [v93 copy];
  v1190[128] = v92;
  v801 = 533419158;
  v800 = xmmword_1D86FB174;
  v91 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v802[0] = v91;
  v802[1] = @"D27";
  v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:v802 count:2];
  v89 = [self wrapDeviceArgumentsInArray:{102043, 1001016, 1002030, 1003015, 1004015, 1005026, 1006019, 1007005, 1008004, 0}];
  v88 = [v90 arrayByAddingObjectsFromArray:v89];
  v87 = [v88 copy];
  v1190[129] = v87;
  v798 = 1106979518;
  v797 = xmmword_1D86FB188;
  v86 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v799[0] = v86;
  v799[1] = @"D28";
  v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v799 count:2];
  v84 = [self wrapDeviceArgumentsInArray:{102044, 1001016, 1002030, 1003015, 1004015, 1005033, 1006019, 1007005, 1008004, 0}];
  v83 = [v85 arrayByAddingObjectsFromArray:v84];
  v82 = [v83 copy];
  v1190[130] = v82;
  v795 = -1820426635;
  v794 = xmmword_1D86FB19C;
  v81 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v796[0] = v81;
  v796[1] = @"D73";
  v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v796 count:2];
  v79 = [self wrapDeviceArgumentsInArray:{102045, 1001018, 1002030, 1003015, 1004015, 1005026, 1006020, 1007006, 1008005, 0}];
  v78 = [v80 arrayByAddingObjectsFromArray:v79];
  v77 = [v78 copy];
  v1190[131] = v77;
  v792 = -937652876;
  v791 = xmmword_1D86FB1B0;
  v76 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v793[0] = v76;
  v793[1] = @"D74";
  v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v793 count:2];
  v722 = [self wrapDeviceArgumentsInArray:{102046, 1001018, 1002030, 1003015, 1004015, 1005026, 1006020, 1007006, 1008005, 0}];
  v74 = [v75 arrayByAddingObjectsFromArray:v722];
  v73 = [v74 copy];
  v1190[132] = v73;
  v789 = -609570151;
  v788 = xmmword_1D86FB1C4;
  v72 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v790[0] = v72;
  v790[1] = @"D37";
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v790 count:2];
  v70 = [self wrapDeviceArgumentsInArray:{102047, 1001018, 1002030, 1003016, 1004015, 1005034, 1006023, 1007006, 1008004, 0}];
  v69 = [v71 arrayByAddingObjectsFromArray:v70];
  v68 = [v69 copy];
  v1190[133] = v68;
  v786 = -874769875;
  v785 = xmmword_1D86FB1D8;
  v67 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v787[0] = v67;
  v787[1] = @"D38";
  v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v787 count:2];
  v143 = [self wrapDeviceArgumentsInArray:{102048, 1001018, 1002030, 1003016, 1004015, 1005035, 1006023, 1007006, 1008004, 0}];
  v65 = [v66 arrayByAddingObjectsFromArray:v143];
  v64 = [v65 copy];
  v1190[134] = v64;
  v783 = 1874287171;
  v782 = xmmword_1D86FB1EC;
  v63 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v784[0] = v63;
  v784[1] = @"D83";
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v784 count:2];
  v60 = [self wrapDeviceArgumentsInArray:{102049, 1001019, 1002030, 1003016, 1004016, 1005036, 1006024, 1007006, 1008005, 0}];
  v59 = [v61 arrayByAddingObjectsFromArray:v60];
  v58 = [v59 copy];
  v1190[135] = v58;
  v780 = -781324731;
  v779 = xmmword_1D86FB200;
  v57 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v781[0] = v57;
  v781[1] = @"D84";
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v781 count:2];
  v735 = [self wrapDeviceArgumentsInArray:{102050, 1001019, 1002030, 1003016, 1004016, 1005037, 1006024, 1007006, 1008005, 0}];
  v55 = [v56 arrayByAddingObjectsFromArray:v735];
  v54 = [v55 copy];
  v1190[136] = v54;
  v777 = 1223847566;
  v776 = xmmword_1D86FB214;
  v53 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v778[0] = v53;
  v778[1] = @"D47";
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v778 count:2];
  v51 = [self wrapDeviceArgumentsInArray:{102052, 1001022, 1002030, 1003017, 1004017, 1005038, 1006026, 1007006, 1008004, 0}];
  v50 = [v52 arrayByAddingObjectsFromArray:v51];
  v49 = [v50 copy];
  v1190[137] = v49;
  v774 = 185580364;
  v773 = xmmword_1D86FB228;
  v48 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v775[0] = v48;
  v775[1] = @"D48";
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v775 count:2];
  v46 = [self wrapDeviceArgumentsInArray:{102053, 1001022, 1002030, 1003017, 1004017, 1005038, 1006026, 1007006, 1008004, 0}];
  v45 = [v47 arrayByAddingObjectsFromArray:v46];
  v44 = [v45 copy];
  v1190[138] = v44;
  v771 = 1214880059;
  v770 = xmmword_1D86FB23C;
  v43 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v772[0] = v43;
  v772[1] = @"D93";
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v772 count:2];
  v41 = [self wrapDeviceArgumentsInArray:{102054, 1001021, 1002030, 1003017, 1004017, 1005038, 1006027, 1007006, 1008005, 0}];
  v40 = [v42 arrayByAddingObjectsFromArray:v41];
  v39 = [v40 copy];
  v1190[139] = v39;
  v768 = 426359977;
  v767 = xmmword_1D86FB250;
  v38 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v769[0] = v38;
  v769[1] = @"D94";
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v769 count:2];
  v36 = [self wrapDeviceArgumentsInArray:{102055, 1001021, 1002030, 1003017, 1004017, 1005038, 1006027, 1007006, 1008005, 0}];
  v35 = [v37 arrayByAddingObjectsFromArray:v36];
  v33 = [v35 copy];
  v1190[140] = v33;
  v765 = 169342588;
  v764 = xmmword_1D86FB264;
  v32 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v766[0] = v32;
  v766[1] = @"V59";
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v766 count:2];
  v30 = [self wrapDeviceArgumentsInArray:{102056, 1001022, 1002030, 1003018, 1004015, 1005046, 1006031, 1007006, 1008006, 0}];
  v29 = [v31 arrayByAddingObjectsFromArray:v30];
  v28 = [v29 copy];
  v1190[141] = v28;
  v762 = -16711936;
  v761 = xmmword_1D86FB278;
  v723 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v763[0] = v723;
  v763[1] = &stru_1F539D228;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v763 count:2];
  v747 = [self wrapDeviceArgumentsInArray:{102051, 1001016, 1002030, 1003018, 1004015, 1005026, 1006014, 1007006, 1008004, 0}];
  v739 = [v27 arrayByAddingObjectsFromArray:v747];
  v733 = [v739 copy];
  v1190[142] = v733;
  v759 = 431774303;
  v758 = xmmword_1D86FB28C;
  v62 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v760[0] = v62;
  v760[1] = @"D83";
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v760 count:2];
  v743 = [self wrapDeviceArgumentsInArray:{102057, 1001019, 1002030, 1003016, 1004019, 1005037, 1006024, 1007006, 1008005, 0}];
  v720 = [v34 arrayByAddingObjectsFromArray:v743];
  v26 = [v720 copy];
  v1190[143] = v26;
  v756 = 1459208360;
  v755 = xmmword_1D86FB2A0;
  v25 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v757[0] = v25;
  v757[1] = @"D23";
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v757 count:2];
  v724 = [self wrapDeviceArgumentsInArray:{102058, 1001029, 1002030, 1003018, 1004019, 1005048, 1006032, 1007007, 1008006, 0}];
  v23 = [v24 arrayByAddingObjectsFromArray:v724];
  v22 = [v23 copy];
  v1190[144] = v22;
  v753 = -1379821877;
  v752 = xmmword_1D86FB2B4;
  v21 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v754[0] = v21;
  v754[1] = @"V57";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v754 count:2];
  v19 = [self wrapDeviceArgumentsInArray:{102059, 1001027, 1002030, 1003020, 1004019, 1005049, 1006033, 1007006, 1008005, 0}];
  v18 = [v20 arrayByAddingObjectsFromArray:v19];
  v17 = [v18 copy];
  v1190[145] = v17;
  v750 = -1354433901;
  v749 = xmmword_1D86FB2C8;
  v16 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v751[0] = v16;
  v751[1] = @"V53";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v751 count:2];
  v14 = [self wrapDeviceArgumentsInArray:{102060, 1001029, 1002030, 1003020, 1004019, 1005038, 1006034, 1007006, 1008005, 0}];
  v13 = [v15 arrayByAddingObjectsFromArray:v14];
  v12 = [v13 copy];
  v1190[146] = v12;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:MGIsDeviceOfType()];
  v748[0] = v3;
  v748[1] = @"V54";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v748 count:2];
  v5 = [self wrapDeviceArgumentsInArray:{102061, 1001029, 1002030, 1003020, 1004019, 1005038, 1006034, 1007006, 1008005, 0}];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];
  v7 = [v6 copy];
  v1190[147] = v7;
  v8 = [self wrapDeviceArgumentsInArray:{0xFFFFFFFFLL, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0xFFFFFFFFLL, 0}];
  v9 = [&unk_1F540B728 arrayByAddingObjectsFromArray:v8];
  v10 = [v9 copy];
  v1190[148] = v10;
  v746 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1190 count:149];

  return v746;
}

void __35__PLPlatform_kPLPlatformAttributes__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) kPLDeviceMap];
  if ([v3 count])
  {
    v4 = 0;
    do
    {
      v5 = [v3 objectAtIndexedSubscript:v4];
      v6 = [v5 objectAtIndexedSubscript:0];
      v7 = [v6 BOOLValue];

      kPLPlatformAttributes_rowIndex = v4;
      if (v7)
      {
        break;
      }

      ++v4;
    }

    while ([v3 count] > v4);
  }

  v8 = [v3 objectAtIndexedSubscript:kPLPlatformAttributes_rowIndex];
  v9 = kPLPlatformAttributes_deviceInfo;
  kPLPlatformAttributes_deviceInfo = v8;

  objc_autoreleasePoolPop(v2);
}

+ (id)kPLDeviceClassName
{
  kPLPlatformAttributes = [self kPLPlatformAttributes];
  v3 = [kPLPlatformAttributes objectAtIndexedSubscript:1];

  return v3;
}

+ (BOOL)isDeviceClassName:(id)name
{
  nameCopy = name;
  kPLDeviceClassName = [self kPLDeviceClassName];

  return kPLDeviceClassName == nameCopy;
}

+ (int)kPLDisplayClassOfDevice
{
  kPLPlatformAttributes = [self kPLPlatformAttributes];
  v3 = [kPLPlatformAttributes objectAtIndexedSubscript:4];
  intValue = [v3 intValue];

  return intValue;
}

+ (int)kPLAudioClassOfDevice
{
  kPLPlatformAttributes = [self kPLPlatformAttributes];
  v3 = [kPLPlatformAttributes objectAtIndexedSubscript:7];
  intValue = [v3 intValue];

  return intValue;
}

+ (int)kPLCameraClassOfDevice
{
  kPLPlatformAttributes = [self kPLPlatformAttributes];
  v3 = [kPLPlatformAttributes objectAtIndexedSubscript:8];
  intValue = [v3 intValue];

  return intValue;
}

+ (int)kPLTorchClassOfDevice
{
  kPLPlatformAttributes = [self kPLPlatformAttributes];
  v3 = [kPLPlatformAttributes objectAtIndexedSubscript:9];
  intValue = [v3 intValue];

  return intValue;
}

+ (int)kPLGPSClassOfDevice
{
  kPLPlatformAttributes = [self kPLPlatformAttributes];
  v3 = [kPLPlatformAttributes objectAtIndexedSubscript:10];
  intValue = [v3 intValue];

  return intValue;
}

BOOL __36__PLPlatform_isUsingAnOlderWifiChip__block_invoke()
{
  result = [PLPlatform kPLWiFiClassIsOneOf:1004001, 1004002, 1004003, 1004004, 1004005, 1004006, 1004007, 1004008, 1004009, 1004010, 1004011, 1004012, 1004013, 1004014, 0];
  isUsingAnOlderWifiChip_result = result;
  return result;
}

+ (BOOL)hasCapability:(int)capability
{
  if (capability == 9)
  {
    return 0;
  }

  v10 = v3;
  v11 = v4;
  v7 = +[PLPlatform kPLDeviceClass];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__PLPlatform_hasCapability___block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v9 = v7;
  if (hasCapability__onceToken != -1)
  {
    dispatch_once(&hasCapability__onceToken, block);
  }

  if (hasCapability__capabilitiesBeenSet == 1)
  {
    return hasCapability__blockWrapper[capability];
  }

  else
  {
    return 0;
  }
}

void __28__PLPlatform_hasCapability___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 32);
  switch(v8)
  {
    case 100018:
    case 100019:
    case 100020:
    case 100021:
    case 100026:
    case 100027:
    case 100028:
    case 100029:
    case 100040:
    case 100041:
    case 100042:
    case 100043:
    case 100044:
    case 100045:
    case 100050:
    case 100051:
    case 100052:
    case 100053:
    case 100062:
    case 100063:
    case 100064:
    case 100065:
    case 100066:
    case 100067:
    case 100068:
    case 100069:
    case 100074:
    case 100075:
    case 100076:
    case 100077:
    case 100084:
    case 100085:
    case 100086:
    case 100087:
      setCapabilities(result, a2, 0, a4, a5, a6, a7, a8, 0);
      goto LABEL_6;
    case 100022:
    case 100023:
    case 100024:
    case 100025:
    case 100030:
    case 100031:
    case 100082:
    case 100083:
      return;
    case 100032:
    case 100033:
    case 100034:
    case 100035:
    case 100036:
    case 100037:
    case 100038:
    case 100039:
    case 100046:
    case 100047:
    case 100048:
    case 100049:
    case 100054:
    case 100055:
    case 100056:
    case 100057:
    case 100058:
    case 100059:
    case 100060:
    case 100061:
    case 100070:
    case 100071:
    case 100072:
    case 100073:
    case 100088:
    case 100089:
    case 100090:
    case 100091:
LABEL_3:
      setCapabilities(result, a2, 0, a4, a5, a6, a7, a8, 1);
      goto LABEL_6;
    case 100078:
    case 100079:
    case 100080:
    case 100081:
    case 100092:
    case 100093:
    case 100094:
    case 100095:
LABEL_4:
      setCapabilities(result, a2, 1, a4, a5, a6, a7, a8, 1);
LABEL_6:
      hasCapability__capabilitiesBeenSet = 1;
      break;
    default:
      switch(v8)
      {
        case 102025:
        case 102026:
        case 102027:
        case 102028:
        case 102030:
        case 102031:
        case 102034:
        case 102035:
        case 102036:
        case 102037:
        case 102038:
        case 102039:
        case 102040:
        case 102041:
        case 102043:
        case 102044:
        case 102045:
        case 102046:
        case 102047:
        case 102048:
        case 102049:
        case 102050:
        case 102052:
        case 102053:
        case 102054:
        case 102055:
        case 102056:
        case 102057:
        case 102058:
        case 102059:
        case 102060:
        case 102061:
          goto LABEL_4;
        case 102029:
        case 102032:
          goto LABEL_3;
        default:
          return;
      }
  }
}

+ (BOOL)is64Bit
{
  if (is64Bit_onceToken != -1)
  {
    +[PLPlatform is64Bit];
  }

  return is64Bit__is64Bit;
}

uint64_t __21__PLPlatform_is64Bit__block_invoke()
{
  v0 = MEMORY[0x1DA71ADA0]();
  v4 = 0u;
  v5 = 0u;
  *host_info_out = 0u;
  host_info_outCnt = 12;
  result = host_info(v0, 1, host_info_out, &host_info_outCnt);
  if (!result && HIBYTE(host_info_out[3]) == 1)
  {
    is64Bit__is64Bit = 1;
  }

  return result;
}

+ (BOOL)hasNFC
{
  if (hasNFC_onceToken != -1)
  {
    +[PLPlatform hasNFC];
  }

  return hasNFC_hasNfc;
}

void __20__PLPlatform_hasNFC__block_invoke()
{
  v0 = MGCopyAnswer();
  hasNFC_hasNfc = CFBooleanGetValue(v0) != 0;

  CFRelease(v0);
}

+ (BOOL)hasLPEM
{
  if (hasLPEM_onceToken != -1)
  {
    +[PLPlatform hasLPEM];
  }

  return hasLPEM_supportsLPEM;
}

uint64_t __21__PLPlatform_hasLPEM__block_invoke()
{
  result = MGGetBoolAnswer();
  hasLPEM_supportsLPEM = result;
  return result;
}

uint64_t __20__PLPlatform_hasAOT__block_invoke()
{
  result = +[PLPlatform isWatch];
  if (result)
  {
    result = MGGetBoolAnswer();
  }

  hasAOT_result = result;
  return result;
}

uint64_t __20__PLPlatform_hasAOD__block_invoke()
{
  result = +[PLModelingUtilities isiPhone];
  if (result)
  {
    result = MGGetBoolAnswer();
  }

  hasAOD_result = result;
  return result;
}

+ (BOOL)hasSleepMedia
{
  if (hasSleepMedia_onceToken != -1)
  {
    +[PLPlatform hasSleepMedia];
  }

  return 0;
}

uint64_t __20__PLPlatform_hasDCP__block_invoke()
{
  result = MGGetBoolAnswer();
  hasDCP_isDCPSupported = result;
  return result;
}

+ (BOOL)hasOLED
{
  if (hasOLED_onceToken != -1)
  {
    +[PLPlatform hasOLED];
  }

  return hasOLED_isOLEDSupported;
}

uint64_t __21__PLPlatform_hasOLED__block_invoke()
{
  result = MGGetBoolAnswer();
  hasOLED_isOLEDSupported = result;
  return result;
}

uint64_t __39__PLPlatform_hasGenerativeModelSystems__block_invoke()
{
  result = MGGetBoolAnswer();
  hasGenerativeModelSystems_supportsGMS = result;
  return result;
}

+ (BOOL)hasANE
{
  if (hasANE_onceToken != -1)
  {
    +[PLPlatform hasANE];
  }

  return hasANE___hasAppleNeuralEngineSupport;
}

uint64_t __20__PLPlatform_hasANE__block_invoke()
{
  result = MGGetBoolAnswer();
  hasANE___hasAppleNeuralEngineSupport = result;
  return result;
}

+ (BOOL)hasProximitySensor
{
  if (hasProximitySensor_onceToken != -1)
  {
    +[PLPlatform hasProximitySensor];
  }

  return hasProximitySensor___proximitySensorCapability;
}

uint64_t __32__PLPlatform_hasProximitySensor__block_invoke()
{
  result = MGGetBoolAnswer();
  hasProximitySensor___proximitySensorCapability = result;
  return result;
}

+ (BOOL)hasAOP
{
  if (hasAOP_onceToken != -1)
  {
    +[PLPlatform hasAOP];
  }

  return hasAOP_hasAOP;
}

uint64_t __20__PLPlatform_hasAOP__block_invoke()
{
  result = MGGetBoolAnswer();
  hasAOP_hasAOP = result;
  return result;
}

+ (BOOL)hasAOP2
{
  if (hasAOP2_onceToken != -1)
  {
    +[PLPlatform hasAOP2];
  }

  return hasAOP2_hasAOP2;
}

uint64_t __21__PLPlatform_hasAOP2__block_invoke()
{
  result = MGGetBoolAnswer();
  hasAOP2_hasAOP2 = result;
  return result;
}

BOOL __20__PLPlatform_isiPod__block_invoke()
{
  result = +[PLModelingUtilities isiPod];
  isiPod_isiPod = result;
  return result;
}

BOOL __20__PLPlatform_isiPad__block_invoke()
{
  result = +[PLModelingUtilities isiPad];
  isiPad_isiPad = result;
  return result;
}

BOOL __22__PLPlatform_isiPhone__block_invoke()
{
  result = +[PLModelingUtilities isiPhone];
  isiPhone_isiPhone = result;
  return result;
}

BOOL __19__PLPlatform_isiOS__block_invoke()
{
  result = +[PLPlatform isiPhone](PLPlatform, "isiPhone") || +[PLPlatform isiPad](PLPlatform, "isiPad") || +[PLPlatform isiPod];
  isiOS_isiOS = result;
  return result;
}

+ (BOOL)isWatch
{
  if (isWatch_onceToken != -1)
  {
    +[PLPlatform isWatch];
  }

  return isWatch_isWatch;
}

BOOL __21__PLPlatform_isWatch__block_invoke()
{
  result = +[PLModelingUtilities isWatch];
  isWatch_isWatch = result;
  return result;
}

+ (BOOL)isAppleTV
{
  if (isAppleTV_onceToken != -1)
  {
    +[PLPlatform isAppleTV];
  }

  return isAppleTV_isAppleTV;
}

BOOL __23__PLPlatform_isAppleTV__block_invoke()
{
  result = +[PLModelingUtilities isAppleTV];
  isAppleTV_isAppleTV = result;
  return result;
}

BOOL __27__PLPlatform_internalBuild__block_invoke()
{
  result = +[PLModelingUtilities internalBuild];
  internalBuild_result = result;
  return result;
}

+ (BOOL)carrierBuild
{
  if (carrierBuild_onceToken != -1)
  {
    +[PLPlatform carrierBuild];
  }

  return carrierBuild_carrierBuild;
}

BOOL __26__PLPlatform_carrierBuild__block_invoke()
{
  result = +[PLModelingUtilities carrierBuild];
  carrierBuild_carrierBuild = result;
  return result;
}

+ (BOOL)nonUIBuild
{
  if (nonUIBuild_onceToken != -1)
  {
    +[PLPlatform nonUIBuild];
  }

  return nonUIBuild_nonUIBuild;
}

void __24__PLPlatform_nonUIBuild__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    nonUIBuild_nonUIBuild = [v0 isEqualToString:@"NonUI"];

    CFRelease(v1);
  }

  else
  {
    nonUIBuild_nonUIBuild = 0;
  }
}

+ (BOOL)isBasebandMavLeg
{
  if (isBasebandMavLeg_onceToken != -1)
  {
    +[PLPlatform isBasebandMavLeg];
  }

  return isBasebandMavLeg_result;
}

BOOL __30__PLPlatform_isBasebandMavLeg__block_invoke()
{
  result = [PLPlatform kPLBasebandClassIsOneOf:1003003, 1003004, 1003005, 1003007, 0];
  isBasebandMavLeg_result = result;
  return result;
}

+ (BOOL)isBasebandIce
{
  if (isBasebandIce_onceToken != -1)
  {
    +[PLPlatform isBasebandIce];
  }

  return isBasebandIce_result;
}

BOOL __27__PLPlatform_isBasebandIce__block_invoke()
{
  result = [PLPlatform kPLBasebandClassIsOneOf:1003006, 1003008, 1003010, 1003011, 0];
  isBasebandIce_result = result;
  return result;
}

+ (BOOL)isBasebandIBIS
{
  if (isBasebandIBIS_onceToken != -1)
  {
    +[PLPlatform isBasebandIBIS];
  }

  return isBasebandIBIS_result;
}

BOOL __28__PLPlatform_isBasebandIBIS__block_invoke()
{
  result = [PLPlatform kPLBasebandClassIsOneOf:1003009, 0];
  isBasebandIBIS_result = result;
  return result;
}

BOOL __27__PLPlatform_isBasebandMav__block_invoke()
{
  result = [PLPlatform kPLBasebandClassIsOneOf:1003012, 1003013, 1003014, 1003015, 1003016, 1003017, 1003020, 0];
  isBasebandMav_result = result;
  return result;
}

+ (BOOL)isBasebandMavToAllowSysdiagnoseTrigger
{
  if (isBasebandMavToAllowSysdiagnoseTrigger_onceToken != -1)
  {
    +[PLPlatform isBasebandMavToAllowSysdiagnoseTrigger];
  }

  return isBasebandMavToAllowSysdiagnoseTrigger_result;
}

BOOL __52__PLPlatform_isBasebandMavToAllowSysdiagnoseTrigger__block_invoke()
{
  result = [PLPlatform kPLBasebandClassIsOneOf:1003015, 1003016, 1003017, 1003020, 0];
  isBasebandMavToAllowSysdiagnoseTrigger_result = result;
  return result;
}

BOOL __29__PLPlatform_isBasebandProto__block_invoke()
{
  result = [PLPlatform kPLBasebandClassIsOneOf:1003018, 0];
  isBasebandProto_result = result;
  return result;
}

+ (BOOL)isBasebandDale
{
  if (isBasebandDale_onceToken != -1)
  {
    +[PLPlatform isBasebandDale];
  }

  return isBasebandDale_result;
}

BOOL __28__PLPlatform_isBasebandDale__block_invoke()
{
  result = [PLPlatform kPLBasebandClassIsOneOf:1003019, 0];
  isBasebandDale_result = result;
  return result;
}

BOOL __28__PLPlatform_isBasebandDSDS__block_invoke()
{
  result = [PLPlatform kPLBasebandClassIsOneOf:1003010, 1003011, 1003012, 1003013, 1003014, 1003015, 1003016, 1003017, 1003018, 1003020, 0];
  isBasebandDSDS_result = result;
  return result;
}

+ (id)wrapDeviceArgumentsInArray:(int)array
{
  v3 = *&array;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    [v4 addObject:v5];

    v9 = &v12;
    if (v11)
    {
      do
      {
        v6 = [MEMORY[0x1E696AD98] numberWithInt:?];
        [v4 addObject:v6];

        v7 = v9++;
      }

      while (*v7);
    }
  }

  return v4;
}

+ (BOOL)kPLXIsOneOf:(int)of firstArg:(int)arg restOfArgs:(char *)args
{
  kPLPlatformAttributes = [self kPLPlatformAttributes];
  v8 = [kPLPlatformAttributes objectAtIndexedSubscript:of];
  intValue = [v8 intValue];

  result = 0;
  if (arg && intValue != -1)
  {
    if (intValue == arg)
    {
      return 1;
    }

    else
    {
      do
      {
        argsCopy = args;
        args += 8;
        v12 = *argsCopy;
        result = v12 != 0;
        if (v12)
        {
          v13 = v12 == intValue;
        }

        else
        {
          v13 = 1;
        }
      }

      while (!v13);
    }
  }

  return result;
}

@end