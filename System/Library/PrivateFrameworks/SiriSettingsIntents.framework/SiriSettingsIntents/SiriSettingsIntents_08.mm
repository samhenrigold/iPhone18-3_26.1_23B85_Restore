id sub_268DDDB94()
{
  MEMORY[0x277D82BE0](v0);
  v2 = [v0 settingMetadata];
  MEMORY[0x277D82BD8](v0);
  return v2;
}

uint64_t sub_268DDDBF8(double a1, double a2)
{
  v7 = [v2 boundedValue];
  if (v7 == 1)
  {
    return *&a1;
  }

  if (v7 == 2)
  {
    return 0x3FE0000000000000;
  }

  if (v7 == 3)
  {
    return *&a2;
  }

  return 0;
}

unint64_t sub_268DDDD98()
{
  v2 = qword_2802DCC68;
  if (!qword_2802DCC68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCC68);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for SettingsFeatureFlagsImpl(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for SettingsFeatureFlagsImpl(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_268DDE2BC()
{
  v2 = qword_2802DCC70;
  if (!qword_2802DCC70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCC70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DDE350(uint64_t a1, void (*a2)(void))
{

  sub_268CDD0DC();
  v4 = sub_268CD42AC(6, 0);
  a2();
  MEMORY[0x277D82BD8](v4);
}

uint64_t sub_268DDE3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_268D82A48;

  return sub_268DDE4C0(a1);
}

uint64_t sub_268DDE4C0(uint64_t a1)
{
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268DDE50C, 0);
}

uint64_t sub_268DDE50C()
{
  *(v0 + 16) = v0;
  sub_268CDD0DC();
  v1 = sub_268CD42AC(6, 0);
  v2 = *(*(v0 + 16) + 8);

  return v2(v1);
}

uint64_t *sub_268DDE5B4()
{
  if (qword_280FE55C8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8238;
}

id sub_268DDE614()
{
  type metadata accessor for GetIntentHandler();
  result = sub_268DDE670();
  qword_280FE8238 = result;
  return result;
}

uint64_t sub_268DDE698()
{
  v0 = sub_268DDE5B4();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268DDE6D8()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriSettingsIntents16GetIntentHandler_confirmationConfigProvider);

  return v2;
}

uint64_t sub_268DDE718()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCC88, &qword_268FA0D80);
  sub_268F9B734();
  v135 = v0;
  *v0 = sub_268E7C600();
  v135[1] = v1;
  v66 = *sub_268F868A8();

  v135[5] = type metadata accessor for GetAirplaneModeHandler();
  v135[6] = &off_287998510;
  v135[2] = v66;
  v135[7] = sub_268E7C600();
  v135[8] = v2;
  v67 = *sub_268E65D24();

  AppearanceHandler = type metadata accessor for GetAppearanceHandler();
  v135[12] = AppearanceHandler;
  v135[13] = &off_287993138;
  v135[9] = v67;
  v135[14] = sub_268E7C600();
  v135[15] = v3;
  v68 = *sub_268E65D24();

  v135[19] = AppearanceHandler;
  v135[20] = &off_287993138;
  v135[16] = v68;
  v135[21] = sub_268E7C600();
  v135[22] = v4;
  v70 = *sub_268E65D24();

  v135[26] = AppearanceHandler;
  v135[27] = &off_287993138;
  v135[23] = v70;
  v135[28] = sub_268E7C600();
  v135[29] = v5;
  v71 = *sub_268F85590();

  v135[33] = type metadata accessor for GetAssistiveTouchHandler();
  v135[34] = &off_2879984C0;
  v135[30] = v71;
  v135[35] = sub_268E7C600();
  v135[36] = v6;
  v72 = *sub_268DACD68();

  v135[40] = type metadata accessor for GetAutoAnswerHandler();
  v135[41] = &off_28798E128;
  v135[37] = v72;
  v135[42] = sub_268E7C600();
  v135[43] = v7;
  v73 = *sub_268DB3B9C();

  v135[47] = type metadata accessor for GetAXAutoBrightnessHandler();
  v135[48] = &off_28798E790;
  v135[44] = v73;
  v135[49] = sub_268E7C600();
  v135[50] = v8;
  v74 = *sub_268F335A0();

  v135[54] = type metadata accessor for GetAutoCorrectHandler();
  v135[55] = &off_287995DC8;
  v135[51] = v74;
  v135[56] = sub_268E7C600();
  v135[57] = v9;
  v75 = *sub_268E96570();

  BassReduceHandler = type metadata accessor for GetBassReduceHandler();
  v135[61] = BassReduceHandler;
  v135[62] = &off_287993FD0;
  v135[58] = v75;
  v135[63] = sub_268E7C600();
  v135[64] = v10;
  v77 = *sub_268E96570();

  v135[68] = BassReduceHandler;
  v135[69] = &off_287993FD0;
  v135[65] = v77;
  v135[70] = sub_268E7C600();
  v135[71] = v11;
  v78 = *sub_268CDC618();

  v135[75] = type metadata accessor for GetBluetoothHandler();
  v135[76] = &off_28798C030;
  v135[72] = v78;
  v135[77] = sub_268E7C600();
  v135[78] = v12;
  v79 = *sub_268F525C8();

  v135[82] = type metadata accessor for GetAXColorFiltersBlueYellowHandler();
  v135[83] = &off_287997010;
  v135[79] = v79;
  v135[84] = sub_268E7C600();
  v135[85] = v13;
  v80 = *sub_268E15B2C();

  v135[89] = type metadata accessor for GetAXBoldTextHandler();
  v135[90] = &off_2879911E8;
  v135[86] = v80;
  v135[91] = sub_268E7C600();
  v135[92] = v14;
  v81 = *sub_268DB4694();

  v135[96] = type metadata accessor for GetAXButtonShapesHandler();
  v135[97] = &off_28798E7D8;
  v135[93] = v81;
  v135[98] = sub_268E7C600();
  v135[99] = v15;
  v82 = *sub_268E05278();

  v135[103] = type metadata accessor for GetCellularDataHandler();
  v135[104] = &off_287990E08;
  v135[100] = v82;
  v135[105] = sub_268E7C600();
  v135[106] = v16;
  v83 = *sub_268E5DFD8();

  v135[110] = type metadata accessor for GetAXClassicInvertColorsHandler();
  v135[111] = &off_287993020;
  v135[107] = v83;
  v135[112] = sub_268E7C600();
  v135[113] = v17;
  v84 = *sub_268E7E854();

  v135[117] = type metadata accessor for GetAXColorFiltersColorTintHandler();
  v135[118] = &off_287993A10;
  v135[114] = v84;
  v135[119] = sub_268E7C600();
  v135[120] = v18;
  v85 = *sub_268CDD738();

  v135[124] = type metadata accessor for GetConversationAwarenessHandler();
  v135[125] = &off_28798C0A8;
  v135[121] = v85;
  v135[126] = sub_268E7C600();
  v135[127] = v19;
  v86 = *sub_268DE1A10();

  v135[131] = type metadata accessor for GetDictationHandler();
  v135[132] = &off_28798FA18;
  v135[128] = v86;
  v135[133] = sub_268E7C600();
  v135[134] = v20;
  v87 = *sub_268F6B88C();

  v135[138] = type metadata accessor for GetAXDifferentiateWithoutColorHandler();
  v135[139] = &off_287997850;
  v135[135] = v87;
  v135[140] = sub_268E7C600();
  v135[141] = v21;
  v88 = *sub_268D8CF88();

  v135[145] = type metadata accessor for GetFlashlightHandler();
  v135[146] = &off_28798CF58;
  v135[142] = v88;
  v135[147] = sub_268E7C600();
  v135[148] = v22;
  v89 = *sub_268DB35C8();

  v135[152] = type metadata accessor for GetAXColorFiltersGrayscaleHandler();
  v135[153] = &off_28798E768;
  v135[149] = v89;
  v135[154] = sub_268E7C600();
  v135[155] = v23;
  v90 = *sub_268F4180C();

  v135[159] = type metadata accessor for GetAXColorFiltersGreenRedHandler();
  v135[160] = &off_287996628;
  v135[156] = v90;
  v135[161] = sub_268E7C600();
  v135[162] = v24;
  v91 = *sub_268E05A08();

  v135[166] = type metadata accessor for GetHeySiriHandler();
  v135[167] = &off_287990E30;
  v135[163] = v91;
  v135[168] = sub_268E7C600();
  v135[169] = v25;
  v92 = *sub_268DD6FF4();

  v135[173] = type metadata accessor for GetAXIncreaseContrastHandler();
  v135[174] = &off_28798F780;
  v135[170] = v92;
  v135[175] = sub_268E7C600();
  v135[176] = v26;
  v93 = *sub_268F59050();

  v135[180] = type metadata accessor for GetAXInvertColorsHandler();
  v135[181] = &off_287997168;
  v135[177] = v93;
  v135[182] = sub_268E7C600();
  v135[183] = v27;
  v94 = *sub_268F43B40();

  v135[187] = type metadata accessor for GetLocationServicesHandler();
  v135[188] = &off_2879966C8;
  v135[184] = v94;
  v135[189] = sub_268E7C600();
  v135[190] = v28;
  v95 = *sub_268DB2F6C();

  v135[194] = type metadata accessor for GetNightShiftHandler();
  v135[195] = &off_28798E740;
  v135[191] = v95;
  v135[196] = sub_268E7C600();
  v135[197] = v29;
  v96 = *sub_268F58714();

  v135[201] = type metadata accessor for GetAXOnOffLabelsHandler();
  v135[202] = &off_287997118;
  v135[198] = v96;
  v135[203] = sub_268E7C600();
  v135[204] = v30;
  v97 = *sub_268F85BFC();

  PersonalHotspotHandler = type metadata accessor for GetPersonalHotspotHandler();
  v135[208] = PersonalHotspotHandler;
  v135[209] = &off_2879984E8;
  v135[205] = v97;
  v135[210] = sub_268E7C600();
  v135[211] = v31;
  v99 = *sub_268F85BFC();

  v135[215] = PersonalHotspotHandler;
  v135[216] = &off_2879984E8;
  v135[212] = v99;
  v135[217] = sub_268E7C600();
  v135[218] = v32;
  v100 = *sub_268DE395C();

  v135[222] = type metadata accessor for GetPersonalizedVolumeHandler();
  v135[223] = &off_28798FA78;
  v135[219] = v100;
  v135[224] = sub_268E7C600();
  v135[225] = v33;
  v101 = *sub_268E40E14();

  v135[229] = type metadata accessor for GetLowPowerModeHandler();
  v135[230] = &off_287992158;
  v135[226] = v101;
  v135[231] = sub_268E7C600();
  v135[232] = v34;
  v102 = *sub_268DAF620();

  v135[236] = type metadata accessor for GetAXColorFiltersRedGreenHandler();
  v135[237] = &off_28798E1C8;
  v135[233] = v102;
  v135[238] = sub_268E7C600();
  v135[239] = v35;
  v103 = *sub_268E8E4E4();

  v135[243] = type metadata accessor for GetAXReduceTransparencyHandler();
  v135[244] = &off_287993D68;
  v135[240] = v103;
  v135[245] = sub_268E7C600();
  v135[246] = v36;
  v104 = *sub_268E8EAB8();

  v135[250] = type metadata accessor for GetAXReduceWhitePointHandler();
  v135[251] = &off_287993D90;
  v135[247] = v104;
  v135[252] = sub_268E7C600();
  v135[253] = v37;
  v105 = *sub_268E41D2C();

  v135[257] = type metadata accessor for GetSiriHandler();
  v135[258] = &off_2879921A0;
  v135[254] = v105;
  v135[259] = sub_268E7C600();
  v135[260] = v38;
  v106 = *sub_268F52F04();

  v135[264] = type metadata accessor for GetSmartSiriVolumeHandler();
  v135[265] = &off_287997060;
  v135[261] = v106;
  v135[266] = sub_268E7C600();
  v135[267] = v39;
  v107 = *sub_268EC5C48();

  v135[271] = type metadata accessor for GetAnnounceNotificationsHandler();
  v135[272] = &off_287995520;
  v135[268] = v107;
  v135[273] = sub_268E7C600();
  v135[274] = v40;
  v108 = *sub_268E152A8();

  v135[278] = type metadata accessor for GetAXVoiceControlHandler();
  v135[279] = &off_2879911C0;
  v135[275] = v108;
  v135[280] = sub_268E7C600();
  v135[281] = v41;
  v109 = *sub_268DD6834();

  v135[285] = type metadata accessor for GetVoiceOverHandler();
  v135[286] = &off_28798F758;
  v135[282] = v109;
  v135[287] = sub_268E7C600();
  v135[288] = v42;
  v110 = *sub_268E1505C();

  v135[292] = type metadata accessor for GetVpnHandler();
  v135[293] = &off_287991198;
  v135[289] = v110;
  v135[294] = sub_268E7C600();
  v135[295] = v43;
  v111 = *sub_268E89A1C();

  v135[299] = type metadata accessor for GetWifiHandler();
  v135[300] = &off_287993B68;
  v135[296] = v111;
  v135[301] = sub_268E7C600();
  v135[302] = v44;
  v112 = *sub_268E90F44();

  v135[306] = type metadata accessor for GetZoomHandler();
  v135[307] = &off_287993DE0;
  v135[303] = v112;
  v135[308] = sub_268E7C600();
  v135[309] = v45;
  v113 = *sub_268F41DE0();

  v135[313] = type metadata accessor for GetShakeMouseHandler();
  v135[314] = &off_287996650;
  v135[310] = v113;
  v135[315] = sub_268E7C600();
  v135[316] = v46;
  v114 = *sub_268F42098();

  FocusModeHandler = type metadata accessor for GetFocusModeHandler();
  v135[320] = FocusModeHandler;
  v135[321] = &off_287996678;
  v135[317] = v114;
  v135[322] = sub_268E7C600();
  v135[323] = v47;
  v115 = *sub_268F42098();

  v135[327] = FocusModeHandler;
  v135[328] = &off_287996678;
  v135[324] = v115;
  v135[329] = sub_268E7C600();
  v135[330] = v48;
  v116 = *sub_268F42098();

  v135[334] = FocusModeHandler;
  v135[335] = &off_287996678;
  v135[331] = v116;
  v135[336] = sub_268E7C600();
  v135[337] = v49;
  v117 = *sub_268F42098();

  v135[341] = FocusModeHandler;
  v135[342] = &off_287996678;
  v135[338] = v117;
  v135[343] = sub_268E7C600();
  v135[344] = v50;
  v118 = *sub_268F42098();

  v135[348] = FocusModeHandler;
  v135[349] = &off_287996678;
  v135[345] = v118;
  v135[350] = sub_268E7C600();
  v135[351] = v51;
  v119 = *sub_268F42098();

  v135[355] = FocusModeHandler;
  v135[356] = &off_287996678;
  v135[352] = v119;
  v135[357] = sub_268E7C600();
  v135[358] = v52;
  v120 = *sub_268F42098();

  v135[362] = FocusModeHandler;
  v135[363] = &off_287996678;
  v135[359] = v120;
  v135[364] = sub_268E7C600();
  v135[365] = v53;
  v122 = *sub_268F42098();

  v135[369] = FocusModeHandler;
  v135[370] = &off_287996678;
  v135[366] = v122;
  v135[371] = sub_268E7C600();
  v135[372] = v54;
  v123 = *sub_268E13548();

  NoiseManagementHandler = type metadata accessor for GetNoiseManagementHandler();
  v135[376] = NoiseManagementHandler;
  v135[377] = &off_287991170;
  v135[373] = v123;
  v135[378] = sub_268E7C600();
  v135[379] = v55;
  v124 = *sub_268E13548();

  v135[383] = NoiseManagementHandler;
  v135[384] = &off_287991170;
  v135[380] = v124;
  v135[385] = sub_268E7C600();
  v135[386] = v56;
  v126 = *sub_268E13548();

  v135[390] = NoiseManagementHandler;
  v135[391] = &off_287991170;
  v135[387] = v126;
  v135[392] = sub_268E7C600();
  v135[393] = v57;
  v127 = *sub_268E5C568();

  v135[397] = type metadata accessor for GetAXSwitchControlHandler();
  v135[398] = &off_287992FE0;
  v135[394] = v127;
  v135[399] = sub_268E7C600();
  v135[400] = v58;
  v128 = *sub_268F84A38();

  v135[404] = type metadata accessor for GetStandByHandler();
  v135[405] = &off_287998498;
  v135[401] = v128;
  v135[406] = sub_268E7C600();
  v135[407] = v59;
  v129 = *sub_268EC9C04();

  v135[411] = type metadata accessor for GetReduceLoudSoundsHandler();
  v135[412] = &off_287995648;
  v135[408] = v129;
  v135[413] = sub_268EB01F8();
  v135[414] = v60;
  v130 = *sub_268F69B3C();

  v135[418] = type metadata accessor for GetBatteryHandler();
  v135[419] = &off_287997828;
  v135[415] = v130;
  v135[420] = sub_268EB01F8();
  v135[421] = v61;
  v131 = *sub_268E4DC3C();

  v135[425] = type metadata accessor for GetDisplayBrightnessHandler();
  v135[426] = &off_287992700;
  v135[422] = v131;
  v135[427] = sub_268EB01F8();
  v135[428] = v62;
  v132 = *sub_268EAC798();

  SiriVolumeHandler = type metadata accessor for GetSiriVolumeHandler();
  v135[432] = SiriVolumeHandler;
  v135[433] = &off_287994600;
  v135[429] = v132;
  v135[434] = sub_268EB01F8();
  v135[435] = v63;
  v133 = *sub_268EAC798();

  v135[439] = SiriVolumeHandler;
  v135[440] = &off_287994600;
  v135[436] = v133;
  v135[441] = sub_268EB01F8();
  v135[442] = v64;
  v136 = *sub_268EAC798();

  v135[446] = SiriVolumeHandler;
  v135[447] = &off_287994600;
  v135[443] = v136;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCC90, &qword_268FA0D88);
  result = sub_268F9ADA4();
  qword_280FE55E0 = result;
  return result;
}

uint64_t *sub_268DDFB78()
{
  if (qword_280FE55D0 != -1)
  {
    swift_once();
  }

  return &qword_280FE55E0;
}

uint64_t sub_268DDFBD8()
{
  v1 = *sub_268DDFB78();

  return v1;
}

uint64_t sub_268DDFC10()
{
  v2 = (v0 + OBJC_IVAR____TtC19SiriSettingsIntents16GetIntentHandler_settingIdentifierHandlers);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

double sub_268DDFC78(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19SiriSettingsIntents16GetIntentHandler_settingIdentifierHandlers);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();

  return result;
}

char *sub_268DDFD68()
{
  swift_getObjectType();
  v2 = *sub_268DDFB78();

  v0 = sub_268DDFE14();
  v3 = sub_268DDFE68(v2, v0);
  MEMORY[0x277D82BE0](v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  MEMORY[0x277D82BD8](v3);
  return v3;
}

uint64_t sub_268DDFE14()
{
  v1 = *sub_268F337EC();

  return v1;
}

char *sub_268DDFEAC(uint64_t a1, uint64_t a2)
{
  v39 = 0;
  v38 = a1;
  v37 = a2;

  *OBJC_IVAR____TtC19SiriSettingsIntents16GetIntentHandler_settingIdentifierHandlers = a1;

  *&v39[OBJC_IVAR____TtC19SiriSettingsIntents16GetIntentHandler_confirmationConfigProvider] = a2;
  v36 = 44;
  v8 = sub_268E7C600();
  v7 = v2;
  v6 = *sub_268E8F08C();

  SoundAnalysisHandler = type metadata accessor for GetSoundAnalysisHandler();
  v35 = &off_287993DB8;
  v33 = v6;
  v31 = v8;
  v32 = v7;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DCCA0, &unk_268FA0D90);
  sub_268F9ADD4();
  swift_endAccess();
  v30 = 54;
  v11 = sub_268E7C600();
  v10 = v3;
  v9 = *sub_268E57A20();

  BackgroundSoundsHandler = type metadata accessor for GetBackgroundSoundsHandler();
  v29 = &off_287992EF0;
  v27 = v9;
  v25 = v11;
  v26 = v10;
  swift_beginAccess();
  sub_268F9ADD4();
  swift_endAccess();
  v24 = 30;
  v14 = sub_268E7C600();
  v13 = v4;
  v12 = *sub_268E12170();

  AXMotionCuesHandler = type metadata accessor for GetAXMotionCuesHandler();
  v23 = &off_287990FC0;
  v21 = v12;
  v19 = v14;
  v20 = v13;
  swift_beginAccess();
  sub_268F9ADD4();
  swift_endAccess();
  v18.receiver = v39;
  v18.super_class = type metadata accessor for GetIntentHandler();
  v17 = objc_msgSendSuper2(&v18, sel_init);
  MEMORY[0x277D82BE0](v17);
  v39 = v17;

  MEMORY[0x277D82BD8](v39);
  return v17;
}

void sub_268DE01EC(void *a1, void (*a2)(void), uint64_t a3)
{
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v38 = a1;
  v36 = a2;
  v37 = a3;
  v26 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v27 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v26, &dword_268CBE000, v27, "GetIntentHandler selecting setting handler", 42, 2);

  v29 = [a1 settingMetadata];
  if (v29)
  {
    v19 = [v29 settingId];
    v20 = sub_268F9AE24();
    v21 = v4;
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v19);
    v22 = v20;
    v23 = v21;
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  if (v23)
  {
    v33 = v22;
    v34 = v23;
    sub_268DE0918(v22, v23, v31);
    if (v31[3])
    {
      sub_268CDF978(v31, __dst);
      v15 = sub_268F9B284();
      v5 = sub_268DC7AE8();
      v16 = *v5;
      MEMORY[0x277D82BE0](*v5);
      sub_268F9B734();
      v14 = v6;
      sub_268CDE730(__dst, v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCC90, &qword_268FA0D88);
      v12 = sub_268F9AE64();
      v13 = v7;
      v14[3] = MEMORY[0x277D837D0];
      v14[4] = sub_268CDD224();
      *v14 = v12;
      v14[1] = v13;
      sub_268CD0F7C();
      sub_268F9AC14(v15, &dword_268CBE000, v16, "Setting handler: %@ selected", 28, 2);

      MEMORY[0x277D82BD8](v16);
      v17 = __dst[4];
      __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);

      v18 = swift_allocObject();
      *(v18 + 16) = a2;
      *(v18 + 24) = a3;
      (*(v17 + 8))(a1, sub_268DE0CD8);

      __swift_destroy_boxed_opaque_existential_0(__dst);

      return;
    }

    sub_268D28414(v31);
  }

  v8 = sub_268DC7AE8();
  v10 = *v8;
  MEMORY[0x277D82BE0](*v8);
  v9 = sub_268F9B274();
  sub_268F9B734();
  sub_268F9AC04("Unable to find a setting handler for setting", 44, 2, &dword_268CBE000, v10, v9);

  MEMORY[0x277D82BD8](v10);

  sub_268CDD0DC();
  v11 = sub_268CD42AC(6, 0);
  a2();
  MEMORY[0x277D82BD8](v11);
}

uint64_t sub_268DE06A0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v10 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v9 = v4;
  MEMORY[0x277D82BE0](a1);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v7 = sub_268F9AE74();
  v8 = v5;
  v9[3] = MEMORY[0x277D837D0];
  v9[4] = sub_268CDD224();
  *v9 = v7;
  v9[1] = v8;
  sub_268CD0F7C();
  sub_268F9AC14(v10, &dword_268CBE000, v11, "Setting handler completed with response: %@", 43, 2);

  MEMORY[0x277D82BD8](v11);

  a2(a1);
}

void sub_268DE0918(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v35 = a1;
  v36 = a2;
  v34 = v3;

  sub_268DDFC10();
  v31[0] = a1;
  v31[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCC90, &qword_268FA0D88);
  sub_268F9ADC4();
  sub_268CD9D30(v31);
  if (v32[3])
  {
    sub_268CDF978(v32, __dst);

    v23 = sub_268F9B284();
    v4 = sub_268DC7AE8();
    v24 = *v4;
    MEMORY[0x277D82BE0](*v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v22 = v5;

    v29 = a1;
    v30 = a2;
    v20 = MEMORY[0x277D837D0];
    v18 = sub_268F9AE84();
    v19 = v6;
    v22[3] = v20;
    v21 = sub_268CDD224();
    v22[4] = v21;
    *v22 = v18;
    v22[1] = v19;
    sub_268CDE730(__dst, v28);
    v7 = sub_268F9AE64();
    v22[8] = v20;
    v22[9] = v21;
    v22[5] = v7;
    v22[6] = v8;
    sub_268CD0F7C();
    sub_268F9AC14(v23, &dword_268CBE000, v24, "Found handler for %@: %@.", 25, 2);

    MEMORY[0x277D82BD8](v24);
    sub_268CDE730(__dst, a3);
    __swift_destroy_boxed_opaque_existential_0(__dst);
  }

  else
  {
    sub_268D28414(v32);

    v16 = sub_268F9B284();
    v9 = sub_268DC7AE8();
    v17 = *v9;
    MEMORY[0x277D82BE0](*v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v15 = v10;

    v12 = MEMORY[0x277D837D0];
    v13 = sub_268F9AE84();
    v14 = v11;
    v15[3] = v12;
    v15[4] = sub_268CDD224();
    *v15 = v13;
    v15[1] = v14;
    sub_268CD0F7C();
    sub_268F9AC14(v16, &dword_268CBE000, v17, "Could not find handler for %@", 29, 2);

    MEMORY[0x277D82BD8](v17);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
    a3[4] = 0;
  }
}

double sub_268DE0CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v22 = a2;
  v23 = a3;
  v21 = v3;
  v4 = sub_268DBC854();
  v15 = *v4;
  v11 = v4[1];
  v12 = *(v4 + 16);
  v5 = sub_268DC7AE8();
  v13 = *v5;
  MEMORY[0x277D82BE0](*v5);
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](v3);

  v17 = a1;
  v18 = v3;
  v19 = a2;
  v20 = a3;
  v14 = MEMORY[0x277D84F78] + 8;
  v6 = sub_268DD2A90();
  sub_268DB944C(v15, v11, v12, v13, v6 & 1, sub_268DE1298, v16, v14, v3);
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v3);

  *&result = MEMORY[0x277D82BD8](v13).n128_u64[0];
  return result;
}

void sub_268DE0E8C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v24 = 0;
  v33 = a1;
  v32 = a2;
  v30 = a3;
  v31 = a4;
  v18 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v19 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v18, &dword_268CBE000, v19, "GetIntentHandler confirm INGetSettingIntent", 43, 2);

  MEMORY[0x277D82BD8](v19);
  v27 = a1;
  v21 = sub_268D2E630();
  v26._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v21, &protocol witness table for INGetSettingIntent);
  v26._object = v5;
  if (v5)
  {
    rawValue = v26;
  }

  else
  {
    rawValue._countAndFlagsBits = sub_268F9AEF4();
    rawValue._object = v6;
  }

  BinarySettingIdentifier.init(rawValue:)(rawValue);
  v16 = v29;
  if (v29 == 65 || (v24 = v29, , v23 = v16, sub_268F35C24(&v23, v34), , memcpy(__dst, v34, sizeof(__dst)), !__dst[2]))
  {
    v13 = sub_268F9B284();
    v7 = sub_268DC7AE8();
    v14 = *v7;
    MEMORY[0x277D82BE0](*v7);
    sub_268F9B734();
    v12 = v8;
    MEMORY[0x277D82BE0](a1);
    v25 = a1;
    sub_268D59CAC();
    v10 = sub_268F9AE74();
    v11 = v9;
    v12[3] = MEMORY[0x277D837D0];
    v12[4] = sub_268CDD224();
    *v12 = v10;
    v12[1] = v11;
    sub_268CD0F7C();
    sub_268F9AC14(v13, &dword_268CBE000, v14, "Unable to determine current value of a setting from intent: %@", 62, 2);

    MEMORY[0x277D82BD8](v14);

    sub_268CDD0DC();
    v15 = sub_268CD42AC(2, 0);
    a3();
    MEMORY[0x277D82BD8](v15);
  }

  else
  {
    memcpy(v36, __dst, sizeof(v36));
    sub_268CDD0DC();
    v22 = sub_268CD42AC(2, 0);

    (a3)(v22);

    MEMORY[0x277D82BD8](v22);
    sub_268DD57B4();
  }
}

id sub_268DE13A4(uint64_t a1)
{
  v34 = 0;
  v28 = 0;
  v35 = a1;
  v23 = sub_268F9B284();
  v1 = sub_268DC7AE8();
  v24 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v23, &dword_268CBE000, v24, "GetIntentHandler confirm INGetSettingIntent", 43, 2);

  MEMORY[0x277D82BD8](v24);
  v31 = a1;
  v26 = sub_268D2E630();
  v30._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v26, &protocol witness table for INGetSettingIntent);
  v30._object = v2;
  if (v2)
  {
    rawValue = v30;
  }

  else
  {
    rawValue._countAndFlagsBits = sub_268F9AEF4();
    rawValue._object = v3;
  }

  BinarySettingIdentifier.init(rawValue:)(rawValue);
  v22 = v33;
  if (v33 == 65 || (v28 = v33, , v27 = v22, sub_268F35C24(&v27, v36), , memcpy(__dst, v36, sizeof(__dst)), !__dst[2]))
  {
    v14 = sub_268F9B284();
    v7 = sub_268DC7AE8();
    v15 = *v7;
    MEMORY[0x277D82BE0](*v7);
    sub_268F9B734();
    v13 = v8;
    MEMORY[0x277D82BE0](a1);
    v29 = a1;
    sub_268D59CAC();
    v11 = sub_268F9AE74();
    v12 = v9;
    v13[3] = MEMORY[0x277D837D0];
    v13[4] = sub_268CDD224();
    *v13 = v11;
    v13[1] = v12;
    sub_268CD0F7C();
    sub_268F9AC14(v14, &dword_268CBE000, v15, "Unable to determine current value of a setting from intent: %@", 62, 2);

    MEMORY[0x277D82BD8](v15);
    sub_268CDD0DC();
    return sub_268CD42AC(2, 0);
  }

  else
  {
    memcpy(v38, __dst, sizeof(v38));
    v4 = sub_268DBC784();
    v18 = *v4;
    v16 = v4[1];
    v17 = *(v4 + 16);
    v5 = sub_268DC7AE8();
    v19 = *v5;
    MEMORY[0x277D82BE0](*v5);
    has_malloc_size = _swift_stdlib_has_malloc_size();
    sub_268DB9934(v18, v16, v17, v19, has_malloc_size & 1);
    MEMORY[0x277D82BD8](v19);
    sub_268CDD0DC();
    v20 = sub_268CD42AC(2, 0);
    MEMORY[0x277D82BE0](v20);
    MEMORY[0x277D82BD8](v20);
    sub_268DD57B4();
    return v20;
  }
}

id sub_268DE17BC()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_268DE18D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v9 = (*(a3 + 32) + **(a3 + 32));
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_268D82A48;

  return v9(a1, a2, a3);
}

uint64_t *sub_268DE1A10()
{
  if (qword_280FE5328 != -1)
  {
    swift_once();
  }

  return &qword_280FE81F0;
}

uint64_t sub_268DE1A70()
{
  type metadata accessor for GetDictationHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE81F0 = result;
  return result;
}

uint64_t sub_268DE1AD8()
{
  v1 = *sub_268DE1A10();

  return v1;
}

uint64_t sub_268DE1B08(uint64_t a1, void (*a2)(id))
{
  v6 = sub_268F9B284();
  v2 = sub_268DC7AE8();
  v7 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "Non macOS! GetDictationHandler handling intent; Siri cannot get setting", 71, 2);

  MEMORY[0x277D82BD8](v7);

  v3 = sub_268E948B8(17);
  v9 = sub_268E41B70(v3, v4);

  a2(v9);
  MEMORY[0x277D82BD8](v9);
}

uint64_t sub_268DE1C68(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v65 = a1;
  v62 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v71 = 0;
  v61 = 0;
  v63 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v66, v2, v3);
  v64 = &v20[-v63];
  v75 = v4;
  v76 = v5;
  sub_268F9AB54();

  v67 = sub_268F9AB44();
  v69 = sub_268F999D4();
  v68 = v69;

  if (!v69)
  {
    v23 = *sub_268DC8E0C();
    v14 = v23;
    v21 = sub_268F9B274();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v24 = 0;
    v22 = sub_268F9B734();
    sub_268F9AC04("SirikitApp unsuccessfully instantiated, since SAAppInfoFactory was unable to create the app info", 96, 2, &dword_268CBE000, v23, v21);

    v33 = v24;
    v34 = v61;
    return v33;
  }

  v60 = v68;
  v58 = v68;
  v74 = v68;
  v55 = 0;
  v56 = sub_268F9AAD4();
  v57 = v56;
  v73 = sub_268F9B734();
  v59 = [v58 appNameMap];
  if (v59)
  {
    v54 = v59;
    v51 = v59;
    v52 = sub_268F9AD84();

    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  v72 = v53;
  v50 = v53 != 0;
  v49 = v50;
  sub_268CD7930(&v72);
  if (!v49)
  {
    v36 = v61;
    goto LABEL_15;
  }

  v6 = [v58 appNameMap];
  v48 = v6;
  if (v6)
  {
    v47 = v48;
    v44 = v48;
    v45 = sub_268F9AD84();

    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  v43 = v46;
  if (v46)
  {
    v42 = v43;
  }

  else
  {
    LODWORD(v18) = 0;
    v17 = 26;
    LOBYTE(v16) = 2;
    sub_268F9B584();
    __break(1u);
  }

  v9 = v61;
  v70 = v42;
  v37 = v20;
  MEMORY[0x28223BE20](v20, v6, v7, v8);
  v38 = &v16;
  v18 = sub_268DE2368;
  v19 = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCD10, qword_268FA0FA0);
  v10 = sub_268DE2EAC();
  v12 = sub_268DE25C8(sub_268DE2598, v38, v39, v57, MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v11);
  v40 = v9;
  v41 = v12;
  if (!v9)
  {
    v35 = v41;
    sub_268CD7930(&v70);
    v73 = v35;

    v36 = v40;
LABEL_15:
    v32 = v36;
    v25 = 0;
    sub_268F9A974();
    v26 = sub_268F9A964();
    sub_268F9AEB4();
    v13 = sub_268F9A9C4();
    (*(*(v13 - 8) + 56))(v64, 0, 1);
    v28 = sub_268F9A954();
    sub_268D28588(v64);

    v27 = v73;

    v29 = sub_268F9A944();

    v71 = v29;

    v30 = sub_268F9A984();

    v77 = v30;

    sub_268CD7930(&v73);

    v31 = v30;

    v33 = v31;
    v34 = v32;
    return v33;
  }

  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_268DE2368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a1;
  v12 = a2;
  v16 = a3;
  v17 = a4;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13, v12, v16, v17);
  v23 = &v10 - v11;
  v29 = v4;
  v30 = v5;
  v27 = v6;
  v28 = v7;
  v14 = 0;
  sub_268F9AAC4();
  v15 = sub_268F9AAB4();
  sub_268F9AEB4();
  v20 = sub_268F9A9C4();
  v8 = *(v20 - 8);
  v22 = *(v8 + 56);
  v21 = v8 + 56;
  v18 = 0;
  v19 = 1;
  v22(v23);
  v24 = sub_268F9AA94();
  sub_268D28588(v23);

  sub_268F9AEB4();
  (v22)(v23, v18, v19, v20);
  v25 = sub_268F9AA84();
  sub_268D28588(v23);

  v26 = sub_268F9AAA4();

  return v26;
}

uint64_t sub_268DE253C@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2], a1[3]);
  *a3 = result;
  return result;
}

uint64_t sub_268DE25C8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a1;
  v41 = a2;
  v65 = a3;
  v55 = a4;
  v42 = a5;
  v64 = a6;
  v44 = a8;
  v45 = "Fatal error";
  v46 = "Range requires lowerBound <= upperBound";
  v47 = "Swift/Range.swift";
  v48 = "Index out of range";
  v49 = "invalid Collection: count differed in successive traversals";
  v50 = "Swift/ArrayShared.swift";
  v75[3] = a3;
  v75[2] = a4;
  v75[1] = a5;
  v51 = *(a5 - 8);
  v52 = a5 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v54 = &v21 - v53;
  v56 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  v59 = AssociatedTypeWitness - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v56, v64, v65, v55);
  v61 = &v21 - v60;
  v62 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v10, v11, v8);
  v63 = &v21 - v62;
  v66 = swift_getAssociatedTypeWitness();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65, v64, v12, v13);
  v70 = &v21 - v69;
  v71 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15, v16, &v21 - v69, v17);
  v72 = &v21 - v71;
  v73 = sub_268F9B1F4();
  if (!v73)
  {
    goto LABEL_24;
  }

  v75[0] = sub_268F9B544();
  v39 = sub_268F9B554();
  sub_268F9B524();
  result = sub_268F9B1E4();
  if (v73 < 0)
  {
    sub_268F9B584();
    __break(1u);
LABEL_24:
    v23 = sub_268F9B034();
    v24 = v43;
    return v23;
  }

  if (!v73)
  {
LABEL_19:
    v29 = v43;
LABEL_20:
    v25 = v29;
    sub_268F9B204();
    swift_getAssociatedConformanceWitness();
    v28 = sub_268F9AE04();
    v26 = *(v67 + 8);
    v27 = v67 + 8;
    v26(v70, v66);
    if ((v28 & 1) == 0)
    {
      sub_268F9B5A4();
      __break(1u);
    }

    v26(v72, v66);
    v22 = v75[0];

    v23 = v22;
    v24 = v25;
    return v23;
  }

  v37 = 0;
  for (i = v43; ; i = v33)
  {
    v35 = i;
    v36 = v37;
    if (v37 < 0 || v36 >= v73)
    {
      goto LABEL_18;
    }

    if (v73 < 0)
    {
      sub_268F9B584();
      __break(1u);
LABEL_18:
      sub_268F9B5A4();
      __break(1u);
      goto LABEL_19;
    }

    v34 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    v32 = &v74;
    v31 = sub_268F9B264();
    (*(v58 + 16))(v61);
    v31();
    v20 = v35;
    v40(v61, v54);
    v33 = v20;
    if (v20)
    {
      (*(v58 + 8))(v61, AssociatedTypeWitness);
      (*(v67 + 8))(v72, v66);
      sub_268D287E8(v75);
      (*(v51 + 32))(v44, v54, v42);
      return v30;
    }

    (*(v58 + 8))(v61, AssociatedTypeWitness);
    sub_268F9B534();
    sub_268F9B214();
    if (v34 == v73)
    {
      v29 = v33;
      goto LABEL_20;
    }

    result = v33;
    v37 = v34;
  }

  __break(1u);
  return result;
}

unint64_t sub_268DE2EAC()
{
  v2 = qword_2802DCD18;
  if (!qword_2802DCD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DCD10, qword_268FA0FA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD18);
    return WitnessTable;
  }

  return v2;
}

uint64_t static SirikitApp.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v53 = a2;
  v3 = v2;
  v4 = v42;
  v52 = v3;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v60 = sub_268F9A9C4();
  v58 = *(v60 - 8);
  v59 = v60 - 8;
  v43 = (v58[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60, v5, v6, v7);
  v44 = &v28[-v43];
  v45 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28[-v43], v9, v10, v11);
  v46 = &v28[-v45];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCD20, qword_268FADE90);
  v47 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54, v12, v13, v14);
  v61 = &v28[-v47];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v48 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15, v53, v16, v17);
  v49 = &v28[-v48];
  v50 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28[-v48], v19, v20, v21);
  v57 = &v28[-v50];
  v51 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28[-v50], v23, v24, v25);
  v55 = &v28[-v51];
  v66 = v4;
  v65 = v26;
  v64 = v52;
  sub_268F9A934();
  sub_268F9A934();
  v56 = *(v54 + 48);
  sub_268D2A1F0(v55, v61);
  sub_268D2A1F0(v57, &v61[v56]);
  v62 = v58[6];
  v63 = v58 + 6;
  if (v62(v61, 1, v60) == 1)
  {
    if (v62(&v61[v56], 1, v60) == 1)
    {
      sub_268D28588(v61);
      v41 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    sub_268D2A1F0(v61, v49);
    if (v62(&v61[v56], 1, v60) != 1)
    {
      v37 = v58[4];
      v36 = v58 + 4;
      v37(v46, v49, v60);
      v37(v44, &v61[v56], v60);
      sub_268DE3648();
      v40 = sub_268F9AE04();
      v39 = v58[1];
      v38 = v58 + 1;
      v39(v44, v60);
      v39(v46, v60);
      sub_268D28588(v61);
      v41 = v40;
      goto LABEL_7;
    }

    (v58[1])(v49, v60);
  }

  sub_268DE349C(v61);
  v41 = 0;
LABEL_7:
  v35 = v41;
  sub_268D28588(v57);
  sub_268D28588(v55);

  if (v35)
  {
    v32 = sub_268F9A924();
    v31 = sub_268F9A924();
    v30 = sub_268F9AAD4();
    sub_268DE35C8();
    v33 = sub_268F9B084();

    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v29 = v34;

  return v29 & 1;
}

uint64_t sub_268DE349C(uint64_t a1)
{
  v4 = sub_268F9A9C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCD20, qword_268FADE90) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

unint64_t sub_268DE35C8()
{
  v2 = qword_2802DCD28;
  if (!qword_2802DCD28)
  {
    sub_268F9AAD4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DE3648()
{
  v2 = qword_2802DCD30;
  if (!qword_2802DCD30)
  {
    sub_268F9A9C4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE36EC()
{
  type metadata accessor for SetWifiNetworkHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1400 = result;
  return result;
}

uint64_t *sub_268DE3754()
{
  if (qword_2802DB540 != -1)
  {
    swift_once();
  }

  return &qword_2802F1400;
}

uint64_t sub_268DE37B4()
{
  v1 = *sub_268DE3754();

  return v1;
}

uint64_t sub_268DE37E4(uint64_t a1, void (*a2)(void))
{
  v4 = sub_268F9B284();
  v2 = sub_268DC7AE8();
  v5 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v4, &dword_268CBE000, v5, "SetWifiNetworkHandler handling intent", 37, 2);

  MEMORY[0x277D82BD8](v5);

  sub_268D391DC();

  sub_268DC0784();
  v7 = sub_268CD42AC(3, 0);
  a2();
  MEMORY[0x277D82BD8](v7);
}

uint64_t *sub_268DE395C()
{
  if (qword_280FE3458 != -1)
  {
    swift_once();
  }

  return &qword_280FE8060;
}

uint64_t sub_268DE39BC()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268DE3A00, 0);
}

uint64_t sub_268DE3A00()
{
  v1 = v0[4];
  v0[2] = v0;
  v0[5] = *(v1 + 40);

  v2 = swift_task_alloc();
  *(v4 + 48) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268CDD500;

  return sub_268D51688();
}

uint64_t sub_268DE3ABC()
{
  type metadata accessor for GetPersonalizedVolumeHandler();
  v2 = sub_268CDC590();
  v0 = sub_268CDD6D4();
  result = sub_268DE3B38(v2, v0 & 1);
  qword_280FE8060 = result;
  return result;
}

uint64_t sub_268DE3B90()
{
  v1 = *sub_268DE395C();

  return v1;
}

uint64_t sub_268DE3BC0(uint64_t a1, char a2)
{
  v3 = sub_268DBC1D4();
  v4 = v3[1];
  v5 = *(v3 + 16);
  *(v2 + 16) = *v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;

  return v9;
}

uint64_t sub_268DE3C50()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_268CD7DB8;

  return sub_268DE39BC();
}

unint64_t sub_268DE3D5C()
{
  v2 = qword_2802DCD38;
  if (!qword_2802DCD38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE3DD8(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "success";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "intent_failed";
  *(v2 + 32) = 13;
  *(v2 + 40) = 2;
  *(v2 + 48) = "other_failure";
  *(v2 + 56) = 13;
  *(v2 + 64) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_8:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_8;
    case 2:
      v5 = 2;
      goto LABEL_8;
  }

  return 3;
}

uint64_t sub_268DE4020(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "SettingsToggleDirectInvocationFlow";
  *(v2 + 8) = 34;
  *(v2 + 16) = 2;
  *(v2 + 24) = "ToggleSettingsInUISnippet";
  *(v2 + 32) = 25;
  *(v2 + 40) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  if (!v6)
  {
    v5 = 0;
LABEL_6:

    return v5;
  }

  if (v6 == 1)
  {
    v5 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_268DE424C()
{
  v2 = qword_2802DCD40;
  if (!qword_2802DCD40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE4398@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268DE3DD8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268DE43D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DE3F54(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_268DE4450()
{
  v2 = qword_2802DCD48;
  if (!qword_2802DCD48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE459C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268DE4020(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268DE45D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DE4154(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_268DE460C(char a1)
{
  sub_268D2CBA4(a1 & 1, 1);
  if (sub_268D2CBA4(a1 & 1, 1))
  {
    v6 = 1;
  }

  else
  {
    v6 = 70;
  }

  sub_268DE4154(0);
  v4 = sub_268DE4154(1);
  v5 = v1;
  sub_268F99744();

  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  *(v2 + 32) = v6;
  *(v2 + 36) = 0;
  sub_268F99734();
  sub_268F99684();

  return result;
}

uint64_t sub_268DE482C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = BYTE4(a4);

  sub_268F996F4();

  if (v6)
  {
    goto LABEL_7;
  }

  if (v5 == 1)
  {

    sub_268DE3F54(0);
    sub_268F99704();
  }

  if (v5 == 70)
  {

    sub_268DE3F54(1);
    sub_268F99704();
  }

  else
  {
LABEL_7:

    sub_268DE3F54(2);
    sub_268F99704();
  }
}

uint64_t sub_268DE4998(uint64_t a1)
{
  LODWORD(v3) = *(v1 + 32);
  BYTE4(v3) = *(v1 + 36) & 1;
  return sub_268DE482C(a1, *(v1 + 16), *(v1 + 24), v3);
}

unint64_t sub_268DE4A1C()
{
  v2 = qword_2802DCD50;
  if (!qword_2802DCD50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DE4AB0()
{
  v2 = qword_2802DCD58;
  if (!qword_2802DCD58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DE4B44()
{
  v2 = qword_2802DCD60;
  if (!qword_2802DCD60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE4BC0(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "SetBinarySettingIntent#AppNotInstalledForAnnounceNotifications";
  *(v2 + 8) = 62;
  *(v2 + 16) = 2;
  *(v2 + 24) = "SetBinarySettingIntent#ApplicableDevicesNeverConnected";
  *(v2 + 32) = 54;
  *(v2 + 40) = 2;
  *(v2 + 48) = "SetBinarySettingIntent#BinaryValueWasUndone";
  *(v2 + 56) = 43;
  *(v2 + 64) = 2;
  *(v2 + 72) = "SetBinarySettingIntent#CannotConnectToWiFiNetwork";
  *(v2 + 80) = 49;
  *(v2 + 88) = 2;
  *(v2 + 96) = "SetBinarySettingIntent#CannotTemporarilyEnableAnnounceMessages";
  *(v2 + 104) = 62;
  *(v2 + 112) = 2;
  *(v2 + 120) = "SetBinarySettingIntent#ChangedBinaryValueTo";
  *(v2 + 128) = 43;
  *(v2 + 136) = 2;
  *(v2 + 144) = "SetBinarySettingIntent#ChangedBinaryValueToSpokenOnly";
  *(v2 + 152) = 53;
  *(v2 + 160) = 2;
  *(v2 + 168) = "SetBinarySettingIntent#ChangedMultiSettingValueTo";
  *(v2 + 176) = 49;
  *(v2 + 184) = 2;
  *(v2 + 192) = "SetBinarySettingIntent#ChangedMultiSettingValueToSpokenOnly";
  *(v2 + 200) = 59;
  *(v2 + 208) = 2;
  *(v2 + 216) = "SetBinarySettingIntent#ConfirmBeforeSeveringConnectionToSiri";
  *(v2 + 224) = 60;
  *(v2 + 232) = 2;
  *(v2 + 240) = "SetBinarySettingIntent#ConfirmBeforeTurningOffAnnounceNotifications";
  *(v2 + 248) = 67;
  *(v2 + 256) = 2;
  *(v2 + 264) = "SetBinarySettingIntent#ConfirmBeforeTurningOffLocationServices";
  *(v2 + 272) = 62;
  *(v2 + 280) = 2;
  *(v2 + 288) = "SetBinarySettingIntent#DescribeHotspotDiscoverability";
  *(v2 + 296) = 53;
  *(v2 + 304) = 2;
  *(v2 + 312) = "SetBinarySettingIntent#HotspotAirplaneModeEnabledOrCellularDisabled";
  *(v2 + 320) = 67;
  *(v2 + 328) = 2;
  *(v2 + 336) = "SetBinarySettingIntent#MissingSIMOrCellular";
  *(v2 + 344) = 43;
  *(v2 + 352) = 2;
  *(v2 + 360) = "SetBinarySettingIntent#NoNeedToChangeBinaryValueTo";
  *(v2 + 368) = 50;
  *(v2 + 376) = 2;
  *(v2 + 384) = "SetBinarySettingIntent#NoNeedToChangeMultiSettingValueTo";
  *(v2 + 392) = 56;
  *(v2 + 400) = 2;
  *(v2 + 408) = "SetBinarySettingIntent#RetainingCurrentBinaryValue";
  *(v2 + 416) = 50;
  *(v2 + 424) = 2;
  *(v2 + 432) = "SetBinarySettingIntent#SiriCanOnlyAnnounceMessagesInCarPlay";
  *(v2 + 440) = 59;
  *(v2 + 448) = 2;
  *(v2 + 456) = "SetBinarySettingIntent#SiriCannotDisableItself";
  *(v2 + 464) = 46;
  *(v2 + 472) = 2;
  *(v2 + 480) = "SetBinarySettingIntent#UnspecifiedActionForSupportedBinarySetting";
  *(v2 + 488) = 65;
  *(v2 + 496) = 2;
  *(v2 + 504) = "SetBinarySettingIntent#UnspecifiedActionForSupportedMultiSetting";
  *(v2 + 512) = 64;
  *(v2 + 520) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_46:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_46;
    case 2:
      v5 = 2;
      goto LABEL_46;
    case 3:
      v5 = 3;
      goto LABEL_46;
    case 4:
      v5 = 4;
      goto LABEL_46;
    case 5:
      v5 = 5;
      goto LABEL_46;
    case 6:
      v5 = 6;
      goto LABEL_46;
    case 7:
      v5 = 7;
      goto LABEL_46;
    case 8:
      v5 = 8;
      goto LABEL_46;
    case 9:
      v5 = 9;
      goto LABEL_46;
    case 10:
      v5 = 10;
      goto LABEL_46;
    case 11:
      v5 = 11;
      goto LABEL_46;
    case 12:
      v5 = 12;
      goto LABEL_46;
    case 13:
      v5 = 13;
      goto LABEL_46;
    case 14:
      v5 = 14;
      goto LABEL_46;
    case 15:
      v5 = 15;
      goto LABEL_46;
    case 16:
      v5 = 16;
      goto LABEL_46;
    case 17:
      v5 = 17;
      goto LABEL_46;
    case 18:
      v5 = 18;
      goto LABEL_46;
    case 19:
      v5 = 19;
      goto LABEL_46;
    case 20:
      v5 = 20;
      goto LABEL_46;
    case 21:
      v5 = 21;
      goto LABEL_46;
  }

  return 22;
}

unint64_t sub_268DE5688()
{
  v2 = qword_2802DCD68;
  if (!qword_2802DCD68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE57D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268DE4BC0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268DE580C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DE526C(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268DE5840(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268DE588C, 0);
}

uint64_t sub_268DE588C()
{
  v13 = v0[5];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v11 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v12 = v2;
  *v2 = sub_268F9AEF4();
  v12[1] = v3;

  if (v13)
  {
    v8 = v9[5];
    v12[5] = sub_268F9A994();
    v12[2] = v8;
  }

  else
  {
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = 0;
    v12[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v6 = sub_268F9B4F4();
  v9[8] = v6;
  v7 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v4 = swift_task_alloc();
  v9[9] = v4;
  *v4 = v9[2];
  v4[1] = sub_268DE5AA8;

  return v7(v10, v11, v6);
}

uint64_t sub_268DE5AA8(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268DE5C68, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268DE5C68()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

BOOL sub_268DE5D1C(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "dialog1";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  return v4 != 0;
}

unint64_t sub_268DE5E74()
{
  v2 = qword_2802DCD70;
  if (!qword_2802DCD70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD70);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268DE5FC0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268DE5D1C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268DE6000@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DE5DF4();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268DE6030(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268DE607C, 0);
}

uint64_t sub_268DE607C()
{
  v14 = v0[5];
  v0[2] = v0;
  v11 = sub_268F9AEF4();
  v12 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v2;
  *v2 = sub_268F9AEF4();
  v13[1] = v3;

  if (v14)
  {
    v9 = v10[5];
    v13[5] = sub_268F9A994();
    v13[2] = v9;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v10[8] = v7;
  v8 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v4 = swift_task_alloc();
  v10[9] = v4;
  v5 = sub_268DE5E74();
  *v4 = v10[2];
  v4[1] = sub_268DE5AA8;

  return v8(v11, v12, v7, &unk_28798FD88, v5);
}

uint64_t sub_268DE62B0()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268DE62EC, 0);
}

uint64_t sub_268DE62EC()
{
  v4 = MEMORY[0x277D55C70];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v6 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v0[6] = v7;
  v8 = (v4 + *v4);
  v2 = swift_task_alloc();
  *(v5 + 56) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D71B74;

  return v8(v9, v6, v7);
}

unint64_t sub_268DE648C()
{
  v2 = qword_2802DCD78;
  if (!qword_2802DCD78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE65D8()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268DE6614, 0);
}

uint64_t sub_268DE6614()
{
  v5 = MEMORY[0x277D55C68];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v7 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v0[6] = v8;
  v9 = (v5 + *v5);
  v2 = swift_task_alloc();
  *(v6 + 56) = v2;
  v3 = sub_268DE648C();
  *v2 = *(v6 + 16);
  v2[1] = sub_268D71B74;

  return v9(v10, v7, v8, &unk_28798FE18, v3);
}

uint64_t sub_268DE6780(uint64_t a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 89) = a2 & 1;
  *(v3 + 40) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 88) = 0;
  *(v3 + 32) = 0;
  *(v3 + 24) = a1;
  *(v3 + 88) = a2 & 1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_268DE67F0, 0);
}

uint64_t sub_268DE67F0()
{
  v15 = v0[5];
  v0[2] = v0;
  v12 = sub_268F9AEF4();
  v13 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v14 = v2;
  *v2 = sub_268F9AEF4();
  v14[1] = v3;

  if (v15)
  {
    v10 = *(v11 + 40);
    v14[5] = type metadata accessor for SettingsBinarySetting(0);
    v14[2] = v10;
  }

  else
  {
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
    v14[5] = 0;
  }

  v7 = *(v11 + 89);
  v14[6] = sub_268F9AEF4();
  v14[7] = v4;
  v14[11] = MEMORY[0x277D839B0];
  *(v14 + 64) = v7;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  *(v11 + 64) = v8;
  v9 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = swift_task_alloc();
  *(v11 + 72) = v5;
  *v5 = *(v11 + 16);
  v5[1] = sub_268D7BB14;

  return v9(v12, v13, v8);
}

uint64_t sub_268DE6A6C(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "first1#random1#dialog1";
  *(v2 + 8) = 22;
  *(v2 + 16) = 2;
  *(v2 + 24) = "random1#dialog1";
  *(v2 + 32) = 15;
  *(v2 + 40) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  if (!v6)
  {
    v5 = 0;
LABEL_6:

    return v5;
  }

  if (v6 == 1)
  {
    v5 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_268DE6C78()
{
  v2 = qword_2802DCD80;
  if (!qword_2802DCD80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE6DC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268DE6A6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268DE6DFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DE6BA0(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268DE6E34(uint64_t a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 89) = a2 & 1;
  *(v3 + 40) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 88) = 0;
  *(v3 + 32) = 0;
  *(v3 + 24) = a1;
  *(v3 + 88) = a2 & 1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_268DE6EA4, 0);
}

uint64_t sub_268DE6EA4()
{
  v16 = v0[5];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = *(v12 + 40);
    v15[5] = type metadata accessor for SettingsBinarySetting(0);
    v15[2] = v11;
  }

  else
  {
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = 0;
    v15[5] = 0;
  }

  v8 = *(v12 + 89);
  v15[6] = sub_268F9AEF4();
  v15[7] = v4;
  v15[11] = MEMORY[0x277D839B0];
  *(v15 + 64) = v8;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  *(v12 + 64) = v9;
  v10 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = swift_task_alloc();
  *(v12 + 72) = v5;
  v6 = sub_268DE6C78();
  *v5 = *(v12 + 16);
  v5[1] = sub_268D7BB14;

  return v10(v13, v14, v9, &unk_28798FEA8, v6);
}

uint64_t sub_268DE7138()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268DE7174, 0);
}

uint64_t sub_268DE7174()
{
  v4 = MEMORY[0x277D55C70];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v6 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v0[6] = v7;
  v8 = (v4 + *v4);
  v2 = swift_task_alloc();
  *(v5 + 56) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D71B74;

  return v8(v9, v6, v7);
}

unint64_t sub_268DE7314()
{
  v2 = qword_2802DCD88;
  if (!qword_2802DCD88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE7460()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268DE749C, 0);
}

uint64_t sub_268DE749C()
{
  v5 = MEMORY[0x277D55C68];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v7 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v0[6] = v8;
  v9 = (v5 + *v5);
  v2 = swift_task_alloc();
  *(v6 + 56) = v2;
  v3 = sub_268DE7314();
  *v2 = *(v6 + 16);
  v2[1] = sub_268D71B74;

  return v9(v10, v7, v8, &unk_28798FF38, v3);
}

uint64_t sub_268DE7608(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268DE7654, 0);
}

uint64_t sub_268DE7654()
{
  v13 = v0[5];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v11 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v12 = v2;
  *v2 = sub_268F9AEF4();
  v12[1] = v3;

  if (v13)
  {
    v8 = v9[5];
    v12[5] = type metadata accessor for SettingsMultiSetting(0);
    v12[2] = v8;
  }

  else
  {
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = 0;
    v12[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v6 = sub_268F9B4F4();
  v9[8] = v6;
  v7 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v4 = swift_task_alloc();
  v9[9] = v4;
  *v4 = v9[2];
  v4[1] = sub_268DE5AA8;

  return v7(v10, v11, v6);
}

unint64_t sub_268DE78BC()
{
  v2 = qword_2802DCD90;
  if (!qword_2802DCD90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE7A08(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268DE7A54, 0);
}

uint64_t sub_268DE7A54()
{
  v14 = v0[5];
  v0[2] = v0;
  v11 = sub_268F9AEF4();
  v12 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v2;
  *v2 = sub_268F9AEF4();
  v13[1] = v3;

  if (v14)
  {
    v9 = v10[5];
    v13[5] = type metadata accessor for SettingsMultiSetting(0);
    v13[2] = v9;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v10[8] = v7;
  v8 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v4 = swift_task_alloc();
  v10[9] = v4;
  v5 = sub_268DE78BC();
  *v4 = v10[2];
  v4[1] = sub_268DE5AA8;

  return v8(v11, v12, v7, &unk_28798FFC8, v5);
}

uint64_t sub_268DE7C88(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 96) = v7;
  *(v8 + 88) = a7;
  *(v8 + 147) = a6 & 1;
  *(v8 + 80) = a5;
  *(v8 + 72) = a4;
  *(v8 + 146) = a3 & 1;
  *(v8 + 145) = a2 & 1;
  *(v8 + 64) = a1;
  *(v8 + 16) = v8;
  *(v8 + 24) = 0;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 160) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 24) = a1;
  *(v8 + 144) = a2 & 1;
  *(v8 + 152) = a3 & 1;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 160) = a6 & 1;
  *(v8 + 48) = a7;
  *(v8 + 56) = v7;

  return MEMORY[0x2822009F8](sub_268DE7E6C, 0);
}

uint64_t sub_268DE7E6C()
{
  v33 = v0[8];
  v0[2] = v0;
  v30 = sub_268DE526C(5);
  v31 = v1;
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v32 = v2;
  *v2 = sub_268F9AEF4();
  v32[1] = v3;

  if (v33)
  {
    v28 = *(v29 + 64);
    v32[5] = type metadata accessor for SettingsBinarySetting(0);
    v32[2] = v28;
  }

  else
  {
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = 0;
    v32[5] = 0;
  }

  v27 = *(v29 + 72);
  v26 = *(v29 + 146);
  v24 = *(v29 + 145);
  v32[6] = sub_268F9AEF4();
  v32[7] = v4;
  v25 = MEMORY[0x277D839B0];
  v32[11] = MEMORY[0x277D839B0];
  *(v32 + 64) = v24;
  v32[12] = sub_268F9AEF4();
  v32[13] = v5;
  v32[17] = v25;
  *(v32 + 112) = v26;
  v32[18] = sub_268F9AEF4();
  v32[19] = v6;

  if (v27)
  {
    v23 = *(v29 + 72);
    v32[23] = sub_268F9AA44();
    v32[20] = v23;
  }

  else
  {
    v32[20] = 0;
    v32[21] = 0;
    v32[22] = 0;
    v32[23] = 0;
  }

  v20 = *(v29 + 104);
  v19 = *(v29 + 80);
  v32[24] = sub_268F9AEF4();
  v32[25] = v7;
  sub_268D2A1F0(v19, v20);
  v21 = sub_268F9A9C4();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1) == 1)
  {
    sub_268D28588(*(v29 + 104));
    v32[26] = 0;
    v32[27] = 0;
    v32[28] = 0;
    v32[29] = 0;
  }

  else
  {
    v18 = *(v29 + 104);
    v32[29] = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32 + 26);
    (*(v22 + 32))(boxed_opaque_existential_1, v18, v21);
  }

  v17 = *(v29 + 88);
  v16 = *(v29 + 147);
  v32[30] = sub_268F9AEF4();
  v32[31] = v9;
  v32[35] = MEMORY[0x277D839B0];
  *(v32 + 256) = v16;
  v32[36] = sub_268F9AEF4();
  v32[37] = v10;

  if (v17)
  {
    v15 = *(v29 + 88);
    v32[41] = sub_268F9A994();
    v32[38] = v15;
  }

  else
  {
    v32[38] = 0;
    v32[39] = 0;
    v32[40] = 0;
    v32[41] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v13 = sub_268F9B4F4();
  *(v29 + 120) = v13;
  v14 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v11 = swift_task_alloc();
  *(v29 + 128) = v11;
  *v11 = *(v29 + 16);
  v11[1] = sub_268DE8530;

  return v14(v30, v31, v13);
}

uint64_t sub_268DE8530(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 136) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268DE874C, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268DE874C()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268DE8828(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "dialog1";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "first1#dialog1";
  *(v2 + 32) = 14;
  *(v2 + 40) = 2;
  *(v2 + 48) = "first1#dialog2";
  *(v2 + 56) = 14;
  *(v2 + 64) = 2;
  *(v2 + 72) = "first1#first1#dialog1";
  *(v2 + 80) = 21;
  *(v2 + 88) = 2;
  *(v2 + 96) = "first1#first1#dialog2";
  *(v2 + 104) = 21;
  *(v2 + 112) = 2;
  *(v2 + 120) = "first2#dialog1";
  *(v2 + 128) = 14;
  *(v2 + 136) = 2;
  *(v2 + 144) = "first2#dialog2";
  *(v2 + 152) = 14;
  *(v2 + 160) = 2;
  *(v2 + 168) = "first3#dialog1";
  *(v2 + 176) = 14;
  *(v2 + 184) = 2;
  *(v2 + 192) = "first3#dialog2";
  *(v2 + 200) = 14;
  *(v2 + 208) = 2;
  *(v2 + 216) = "first4#dialog1";
  *(v2 + 224) = 14;
  *(v2 + 232) = 2;
  *(v2 + 240) = "first4#dialog2";
  *(v2 + 248) = 14;
  *(v2 + 256) = 2;
  *(v2 + 264) = "first5#dialog1";
  *(v2 + 272) = 14;
  *(v2 + 280) = 2;
  *(v2 + 288) = "first5#dialog10";
  *(v2 + 296) = 15;
  *(v2 + 304) = 2;
  *(v2 + 312) = "first5#dialog11";
  *(v2 + 320) = 15;
  *(v2 + 328) = 2;
  *(v2 + 336) = "first5#dialog12";
  *(v2 + 344) = 15;
  *(v2 + 352) = 2;
  *(v2 + 360) = "first5#dialog2";
  *(v2 + 368) = 14;
  *(v2 + 376) = 2;
  *(v2 + 384) = "first5#dialog3";
  *(v2 + 392) = 14;
  *(v2 + 400) = 2;
  *(v2 + 408) = "first5#dialog4";
  *(v2 + 416) = 14;
  *(v2 + 424) = 2;
  *(v2 + 432) = "first5#dialog5";
  *(v2 + 440) = 14;
  *(v2 + 448) = 2;
  *(v2 + 456) = "first5#dialog6";
  *(v2 + 464) = 14;
  *(v2 + 472) = 2;
  *(v2 + 480) = "first5#dialog7";
  *(v2 + 488) = 14;
  *(v2 + 496) = 2;
  *(v2 + 504) = "first5#dialog8";
  *(v2 + 512) = 14;
  *(v2 + 520) = 2;
  *(v2 + 528) = "first5#dialog9";
  *(v2 + 536) = 14;
  *(v2 + 544) = 2;
  *(v2 + 552) = "first6#dialog1";
  *(v2 + 560) = 14;
  *(v2 + 568) = 2;
  *(v2 + 576) = "first6#random1#dialog1";
  *(v2 + 584) = 22;
  *(v2 + 592) = 2;
  *(v2 + 600) = "first6#random1#dialog2";
  *(v2 + 608) = 22;
  *(v2 + 616) = 2;
  *(v2 + 624) = "random1#dialog1";
  *(v2 + 632) = 15;
  *(v2 + 640) = 2;
  *(v2 + 648) = "random1#dialog2";
  *(v2 + 656) = 15;
  *(v2 + 664) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_58:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_58;
    case 2:
      v5 = 2;
      goto LABEL_58;
    case 3:
      v5 = 3;
      goto LABEL_58;
    case 4:
      v5 = 4;
      goto LABEL_58;
    case 5:
      v5 = 5;
      goto LABEL_58;
    case 6:
      v5 = 6;
      goto LABEL_58;
    case 7:
      v5 = 7;
      goto LABEL_58;
    case 8:
      v5 = 8;
      goto LABEL_58;
    case 9:
      v5 = 9;
      goto LABEL_58;
    case 10:
      v5 = 10;
      goto LABEL_58;
    case 11:
      v5 = 11;
      goto LABEL_58;
    case 12:
      v5 = 12;
      goto LABEL_58;
    case 13:
      v5 = 13;
      goto LABEL_58;
    case 14:
      v5 = 14;
      goto LABEL_58;
    case 15:
      v5 = 15;
      goto LABEL_58;
    case 16:
      v5 = 16;
      goto LABEL_58;
    case 17:
      v5 = 17;
      goto LABEL_58;
    case 18:
      v5 = 18;
      goto LABEL_58;
    case 19:
      v5 = 19;
      goto LABEL_58;
    case 20:
      v5 = 20;
      goto LABEL_58;
    case 21:
      v5 = 21;
      goto LABEL_58;
    case 22:
      v5 = 22;
      goto LABEL_58;
    case 23:
      v5 = 23;
      goto LABEL_58;
    case 24:
      v5 = 24;
      goto LABEL_58;
    case 25:
      v5 = 25;
      goto LABEL_58;
    case 26:
      v5 = 26;
      goto LABEL_58;
    case 27:
      v5 = 27;
      goto LABEL_58;
  }

  return 28;
}

unint64_t sub_268DE9560()
{
  v2 = qword_2802DCD98;
  if (!qword_2802DCD98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCD98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DE96AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268DE8828(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268DE96E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DE9054(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268DE9718(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 96) = v7;
  *(v8 + 88) = a7;
  *(v8 + 147) = a6 & 1;
  *(v8 + 80) = a5;
  *(v8 + 72) = a4;
  *(v8 + 146) = a3 & 1;
  *(v8 + 145) = a2 & 1;
  *(v8 + 64) = a1;
  *(v8 + 16) = v8;
  *(v8 + 24) = 0;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 160) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 24) = a1;
  *(v8 + 144) = a2 & 1;
  *(v8 + 152) = a3 & 1;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 160) = a6 & 1;
  *(v8 + 48) = a7;
  *(v8 + 56) = v7;

  return MEMORY[0x2822009F8](sub_268DE98FC, 0);
}

uint64_t sub_268DE98FC()
{
  v34 = v0[8];
  v0[2] = v0;
  v31 = sub_268DE526C(5);
  v32 = v1;
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v33 = v2;
  *v2 = sub_268F9AEF4();
  v33[1] = v3;

  if (v34)
  {
    v29 = *(v30 + 64);
    v33[5] = type metadata accessor for SettingsBinarySetting(0);
    v33[2] = v29;
  }

  else
  {
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = 0;
    v33[5] = 0;
  }

  v28 = *(v30 + 72);
  v27 = *(v30 + 146);
  v25 = *(v30 + 145);
  v33[6] = sub_268F9AEF4();
  v33[7] = v4;
  v26 = MEMORY[0x277D839B0];
  v33[11] = MEMORY[0x277D839B0];
  *(v33 + 64) = v25;
  v33[12] = sub_268F9AEF4();
  v33[13] = v5;
  v33[17] = v26;
  *(v33 + 112) = v27;
  v33[18] = sub_268F9AEF4();
  v33[19] = v6;

  if (v28)
  {
    v24 = *(v30 + 72);
    v33[23] = sub_268F9AA44();
    v33[20] = v24;
  }

  else
  {
    v33[20] = 0;
    v33[21] = 0;
    v33[22] = 0;
    v33[23] = 0;
  }

  v21 = *(v30 + 104);
  v20 = *(v30 + 80);
  v33[24] = sub_268F9AEF4();
  v33[25] = v7;
  sub_268D2A1F0(v20, v21);
  v22 = sub_268F9A9C4();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1) == 1)
  {
    sub_268D28588(*(v30 + 104));
    v33[26] = 0;
    v33[27] = 0;
    v33[28] = 0;
    v33[29] = 0;
  }

  else
  {
    v19 = *(v30 + 104);
    v33[29] = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33 + 26);
    (*(v23 + 32))(boxed_opaque_existential_1, v19, v22);
  }

  v18 = *(v30 + 88);
  v17 = *(v30 + 147);
  v33[30] = sub_268F9AEF4();
  v33[31] = v9;
  v33[35] = MEMORY[0x277D839B0];
  *(v33 + 256) = v17;
  v33[36] = sub_268F9AEF4();
  v33[37] = v10;

  if (v18)
  {
    v16 = *(v30 + 88);
    v33[41] = sub_268F9A994();
    v33[38] = v16;
  }

  else
  {
    v33[38] = 0;
    v33[39] = 0;
    v33[40] = 0;
    v33[41] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v14 = sub_268F9B4F4();
  *(v30 + 120) = v14;
  v15 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v11 = swift_task_alloc();
  *(v30 + 128) = v11;
  v12 = sub_268DE9560();
  *v11 = *(v30 + 16);
  v11[1] = sub_268DE8530;

  return v15(v31, v32, v14, &unk_287990058, v12);
}

uint64_t sub_268DE9FD8(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 96) = v7;
  *(v8 + 88) = a7;
  *(v8 + 147) = a6 & 1;
  *(v8 + 80) = a5;
  *(v8 + 72) = a4;
  *(v8 + 146) = a3 & 1;
  *(v8 + 145) = a2 & 1;
  *(v8 + 64) = a1;
  *(v8 + 16) = v8;
  *(v8 + 24) = 0;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 160) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 24) = a1;
  *(v8 + 144) = a2 & 1;
  *(v8 + 152) = a3 & 1;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 160) = a6 & 1;
  *(v8 + 48) = a7;
  *(v8 + 56) = v7;

  return MEMORY[0x2822009F8](sub_268DEA1BC, 0);
}

uint64_t sub_268DEA1BC()
{
  v33 = v0[8];
  v0[2] = v0;
  v30 = sub_268F9AEF4();
  v31 = v1;
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v32 = v2;
  *v2 = sub_268F9AEF4();
  v32[1] = v3;

  if (v33)
  {
    v28 = *(v29 + 64);
    v32[5] = type metadata accessor for SettingsBinarySetting(0);
    v32[2] = v28;
  }

  else
  {
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = 0;
    v32[5] = 0;
  }

  v27 = *(v29 + 72);
  v26 = *(v29 + 146);
  v24 = *(v29 + 145);
  v32[6] = sub_268F9AEF4();
  v32[7] = v4;
  v25 = MEMORY[0x277D839B0];
  v32[11] = MEMORY[0x277D839B0];
  *(v32 + 64) = v24;
  v32[12] = sub_268F9AEF4();
  v32[13] = v5;
  v32[17] = v25;
  *(v32 + 112) = v26;
  v32[18] = sub_268F9AEF4();
  v32[19] = v6;

  if (v27)
  {
    v23 = *(v29 + 72);
    v32[23] = sub_268F9AA44();
    v32[20] = v23;
  }

  else
  {
    v32[20] = 0;
    v32[21] = 0;
    v32[22] = 0;
    v32[23] = 0;
  }

  v20 = *(v29 + 104);
  v19 = *(v29 + 80);
  v32[24] = sub_268F9AEF4();
  v32[25] = v7;
  sub_268D2A1F0(v19, v20);
  v21 = sub_268F9A9C4();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1) == 1)
  {
    sub_268D28588(*(v29 + 104));
    v32[26] = 0;
    v32[27] = 0;
    v32[28] = 0;
    v32[29] = 0;
  }

  else
  {
    v18 = *(v29 + 104);
    v32[29] = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32 + 26);
    (*(v22 + 32))(boxed_opaque_existential_1, v18, v21);
  }

  v17 = *(v29 + 88);
  v16 = *(v29 + 147);
  v32[30] = sub_268F9AEF4();
  v32[31] = v9;
  v32[35] = MEMORY[0x277D839B0];
  *(v32 + 256) = v16;
  v32[36] = sub_268F9AEF4();
  v32[37] = v10;

  if (v17)
  {
    v15 = *(v29 + 88);
    v32[41] = sub_268F9A994();
    v32[38] = v15;
  }

  else
  {
    v32[38] = 0;
    v32[39] = 0;
    v32[40] = 0;
    v32[41] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v13 = sub_268F9B4F4();
  *(v29 + 120) = v13;
  v14 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v11 = swift_task_alloc();
  *(v29 + 128) = v11;
  *v11 = *(v29 + 16);
  v11[1] = sub_268DE8530;

  return v14(v30, v31, v13);
}

uint64_t sub_268DEA898(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "dialog1";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "first1#dialog1";
  *(v2 + 32) = 14;
  *(v2 + 40) = 2;
  *(v2 + 48) = "first1#dialog2";
  *(v2 + 56) = 14;
  *(v2 + 64) = 2;
  *(v2 + 72) = "first1#first1#dialog1";
  *(v2 + 80) = 21;
  *(v2 + 88) = 2;
  *(v2 + 96) = "first1#first1#dialog2";
  *(v2 + 104) = 21;
  *(v2 + 112) = 2;
  *(v2 + 120) = "first2#dialog1";
  *(v2 + 128) = 14;
  *(v2 + 136) = 2;
  *(v2 + 144) = "first2#dialog2";
  *(v2 + 152) = 14;
  *(v2 + 160) = 2;
  *(v2 + 168) = "first3#dialog1";
  *(v2 + 176) = 14;
  *(v2 + 184) = 2;
  *(v2 + 192) = "first3#dialog10";
  *(v2 + 200) = 15;
  *(v2 + 208) = 2;
  *(v2 + 216) = "first3#dialog11";
  *(v2 + 224) = 15;
  *(v2 + 232) = 2;
  *(v2 + 240) = "first3#dialog12";
  *(v2 + 248) = 15;
  *(v2 + 256) = 2;
  *(v2 + 264) = "first3#dialog2";
  *(v2 + 272) = 14;
  *(v2 + 280) = 2;
  *(v2 + 288) = "first3#dialog3";
  *(v2 + 296) = 14;
  *(v2 + 304) = 2;
  *(v2 + 312) = "first3#dialog4";
  *(v2 + 320) = 14;
  *(v2 + 328) = 2;
  *(v2 + 336) = "first3#dialog5";
  *(v2 + 344) = 14;
  *(v2 + 352) = 2;
  *(v2 + 360) = "first3#dialog6";
  *(v2 + 368) = 14;
  *(v2 + 376) = 2;
  *(v2 + 384) = "first3#dialog7";
  *(v2 + 392) = 14;
  *(v2 + 400) = 2;
  *(v2 + 408) = "first3#dialog8";
  *(v2 + 416) = 14;
  *(v2 + 424) = 2;
  *(v2 + 432) = "first3#dialog9";
  *(v2 + 440) = 14;
  *(v2 + 448) = 2;
  *(v2 + 456) = "first4#dialog1";
  *(v2 + 464) = 14;
  *(v2 + 472) = 2;
  *(v2 + 480) = "first4#random1#dialog1";
  *(v2 + 488) = 22;
  *(v2 + 496) = 2;
  *(v2 + 504) = "first4#random1#dialog2";
  *(v2 + 512) = 22;
  *(v2 + 520) = 2;
  *(v2 + 528) = "random1#dialog1";
  *(v2 + 536) = 15;
  *(v2 + 544) = 2;
  *(v2 + 552) = "random1#dialog2";
  *(v2 + 560) = 15;
  *(v2 + 568) = 2;
  *(v2 + 576) = "switchingToOppositeDisplayMode";
  *(v2 + 584) = 30;
  *(v2 + 592) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_52:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_52;
    case 2:
      v5 = 2;
      goto LABEL_52;
    case 3:
      v5 = 3;
      goto LABEL_52;
    case 4:
      v5 = 4;
      goto LABEL_52;
    case 5:
      v5 = 5;
      goto LABEL_52;
    case 6:
      v5 = 6;
      goto LABEL_52;
    case 7:
      v5 = 7;
      goto LABEL_52;
    case 8:
      v5 = 8;
      goto LABEL_52;
    case 9:
      v5 = 9;
      goto LABEL_52;
    case 10:
      v5 = 10;
      goto LABEL_52;
    case 11:
      v5 = 11;
      goto LABEL_52;
    case 12:
      v5 = 12;
      goto LABEL_52;
    case 13:
      v5 = 13;
      goto LABEL_52;
    case 14:
      v5 = 14;
      goto LABEL_52;
    case 15:
      v5 = 15;
      goto LABEL_52;
    case 16:
      v5 = 16;
      goto LABEL_52;
    case 17:
      v5 = 17;
      goto LABEL_52;
    case 18:
      v5 = 18;
      goto LABEL_52;
    case 19:
      v5 = 19;
      goto LABEL_52;
    case 20:
      v5 = 20;
      goto LABEL_52;
    case 21:
      v5 = 21;
      goto LABEL_52;
    case 22:
      v5 = 22;
      goto LABEL_52;
    case 23:
      v5 = 23;
      goto LABEL_52;
    case 24:
      v5 = 24;
      goto LABEL_52;
  }

  return 25;
}

unint64_t sub_268DEB470()
{
  v2 = qword_2802DCDA0;
  if (!qword_2802DCDA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DEB5BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268DEA898(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268DEB5F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DEAFDC(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268DEB628(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 96) = v7;
  *(v8 + 88) = a7;
  *(v8 + 147) = a6 & 1;
  *(v8 + 80) = a5;
  *(v8 + 72) = a4;
  *(v8 + 146) = a3 & 1;
  *(v8 + 145) = a2 & 1;
  *(v8 + 64) = a1;
  *(v8 + 16) = v8;
  *(v8 + 24) = 0;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 160) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 24) = a1;
  *(v8 + 144) = a2 & 1;
  *(v8 + 152) = a3 & 1;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 160) = a6 & 1;
  *(v8 + 48) = a7;
  *(v8 + 56) = v7;

  return MEMORY[0x2822009F8](sub_268DEB80C, 0);
}

uint64_t sub_268DEB80C()
{
  v34 = v0[8];
  v0[2] = v0;
  v31 = sub_268F9AEF4();
  v32 = v1;
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v33 = v2;
  *v2 = sub_268F9AEF4();
  v33[1] = v3;

  if (v34)
  {
    v29 = *(v30 + 64);
    v33[5] = type metadata accessor for SettingsBinarySetting(0);
    v33[2] = v29;
  }

  else
  {
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = 0;
    v33[5] = 0;
  }

  v28 = *(v30 + 72);
  v27 = *(v30 + 146);
  v25 = *(v30 + 145);
  v33[6] = sub_268F9AEF4();
  v33[7] = v4;
  v26 = MEMORY[0x277D839B0];
  v33[11] = MEMORY[0x277D839B0];
  *(v33 + 64) = v25;
  v33[12] = sub_268F9AEF4();
  v33[13] = v5;
  v33[17] = v26;
  *(v33 + 112) = v27;
  v33[18] = sub_268F9AEF4();
  v33[19] = v6;

  if (v28)
  {
    v24 = *(v30 + 72);
    v33[23] = sub_268F9AA44();
    v33[20] = v24;
  }

  else
  {
    v33[20] = 0;
    v33[21] = 0;
    v33[22] = 0;
    v33[23] = 0;
  }

  v21 = *(v30 + 104);
  v20 = *(v30 + 80);
  v33[24] = sub_268F9AEF4();
  v33[25] = v7;
  sub_268D2A1F0(v20, v21);
  v22 = sub_268F9A9C4();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1) == 1)
  {
    sub_268D28588(*(v30 + 104));
    v33[26] = 0;
    v33[27] = 0;
    v33[28] = 0;
    v33[29] = 0;
  }

  else
  {
    v19 = *(v30 + 104);
    v33[29] = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33 + 26);
    (*(v23 + 32))(boxed_opaque_existential_1, v19, v22);
  }

  v18 = *(v30 + 88);
  v17 = *(v30 + 147);
  v33[30] = sub_268F9AEF4();
  v33[31] = v9;
  v33[35] = MEMORY[0x277D839B0];
  *(v33 + 256) = v17;
  v33[36] = sub_268F9AEF4();
  v33[37] = v10;

  if (v18)
  {
    v16 = *(v30 + 88);
    v33[41] = sub_268F9A994();
    v33[38] = v16;
  }

  else
  {
    v33[38] = 0;
    v33[39] = 0;
    v33[40] = 0;
    v33[41] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v14 = sub_268F9B4F4();
  *(v30 + 120) = v14;
  v15 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v11 = swift_task_alloc();
  *(v30 + 128) = v11;
  v12 = sub_268DEB470();
  *v11 = *(v30 + 16);
  v11[1] = sub_268DE8530;

  return v15(v31, v32, v14, &unk_2879900E8, v12);
}

uint64_t sub_268DEBF00(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v9 + 96) = v8;
  *(v9 + 148) = a8 & 1;
  *(v9 + 88) = a7;
  *(v9 + 147) = a6 & 1;
  *(v9 + 80) = a5;
  *(v9 + 72) = a4;
  *(v9 + 146) = a3 & 1;
  *(v9 + 145) = a2 & 1;
  *(v9 + 64) = a1;
  *(v9 + 16) = v9;
  *(v9 + 24) = 0;
  *(v9 + 144) = 0;
  *(v9 + 152) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 160) = 0;
  *(v9 + 48) = 0;
  *(v9 + 168) = 0;
  *(v9 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v9 + 104) = swift_task_alloc();
  *(v9 + 24) = a1;
  *(v9 + 144) = a2 & 1;
  *(v9 + 152) = a3 & 1;
  *(v9 + 32) = a4;
  *(v9 + 40) = a5;
  *(v9 + 160) = a6 & 1;
  *(v9 + 48) = a7;
  *(v9 + 168) = a8 & 1;
  *(v9 + 56) = v8;

  return MEMORY[0x2822009F8](sub_268DEC11C, 0);
}

uint64_t sub_268DEC11C()
{
  v35 = v0[8];
  v0[2] = v0;
  v32 = sub_268F9AEF4();
  v33 = v1;
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v34 = v2;
  *v2 = sub_268F9AEF4();
  v34[1] = v3;

  if (v35)
  {
    v30 = *(v31 + 64);
    v34[5] = type metadata accessor for SettingsMultiSetting(0);
    v34[2] = v30;
  }

  else
  {
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = 0;
  }

  v29 = *(v31 + 72);
  v28 = *(v31 + 146);
  v26 = *(v31 + 145);
  v34[6] = sub_268F9AEF4();
  v34[7] = v4;
  v27 = MEMORY[0x277D839B0];
  v34[11] = MEMORY[0x277D839B0];
  *(v34 + 64) = v26;
  v34[12] = sub_268F9AEF4();
  v34[13] = v5;
  v34[17] = v27;
  *(v34 + 112) = v28;
  v34[18] = sub_268F9AEF4();
  v34[19] = v6;

  if (v29)
  {
    v25 = *(v31 + 72);
    v34[23] = sub_268F9AA44();
    v34[20] = v25;
  }

  else
  {
    v34[20] = 0;
    v34[21] = 0;
    v34[22] = 0;
    v34[23] = 0;
  }

  v22 = *(v31 + 104);
  v21 = *(v31 + 80);
  v34[24] = sub_268F9AEF4();
  v34[25] = v7;
  sub_268D2A1F0(v21, v22);
  v23 = sub_268F9A9C4();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1) == 1)
  {
    sub_268D28588(*(v31 + 104));
    v34[26] = 0;
    v34[27] = 0;
    v34[28] = 0;
    v34[29] = 0;
  }

  else
  {
    v20 = *(v31 + 104);
    v34[29] = v23;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34 + 26);
    (*(v24 + 32))(boxed_opaque_existential_1, v20, v23);
  }

  v19 = *(v31 + 88);
  v18 = *(v31 + 147);
  v34[30] = sub_268F9AEF4();
  v34[31] = v9;
  v34[35] = MEMORY[0x277D839B0];
  *(v34 + 256) = v18;
  v34[36] = sub_268F9AEF4();
  v34[37] = v10;

  if (v19)
  {
    v17 = *(v31 + 88);
    v34[41] = sub_268F9A994();
    v34[38] = v17;
  }

  else
  {
    v34[38] = 0;
    v34[39] = 0;
    v34[40] = 0;
    v34[41] = 0;
  }

  v14 = *(v31 + 148);
  v34[42] = sub_268F9AEF4();
  v34[43] = v11;
  v34[47] = MEMORY[0x277D839B0];
  *(v34 + 352) = v14;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v15 = sub_268F9B4F4();
  *(v31 + 120) = v15;
  v16 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v12 = swift_task_alloc();
  *(v31 + 128) = v12;
  *v12 = *(v31 + 16);
  v12[1] = sub_268DEC878;

  return v16(v32, v33, v15);
}

uint64_t sub_268DEC878(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 136) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268DECAA0, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268DECAA0()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268DECB80(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "dialog1";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "dialog2";
  *(v2 + 32) = 7;
  *(v2 + 40) = 2;
  *(v2 + 48) = "first1#dialog1";
  *(v2 + 56) = 14;
  *(v2 + 64) = 2;
  *(v2 + 72) = "first1#dialog2";
  *(v2 + 80) = 14;
  *(v2 + 88) = 2;
  *(v2 + 96) = "first1#first1#dialog1";
  *(v2 + 104) = 21;
  *(v2 + 112) = 2;
  *(v2 + 120) = "first1#first1#dialog2";
  *(v2 + 128) = 21;
  *(v2 + 136) = 2;
  *(v2 + 144) = "first2#dialog1";
  *(v2 + 152) = 14;
  *(v2 + 160) = 2;
  *(v2 + 168) = "first2#dialog2";
  *(v2 + 176) = 14;
  *(v2 + 184) = 2;
  *(v2 + 192) = "first3#dialog1";
  *(v2 + 200) = 14;
  *(v2 + 208) = 2;
  *(v2 + 216) = "first3#dialog10";
  *(v2 + 224) = 15;
  *(v2 + 232) = 2;
  *(v2 + 240) = "first3#dialog11";
  *(v2 + 248) = 15;
  *(v2 + 256) = 2;
  *(v2 + 264) = "first3#dialog12";
  *(v2 + 272) = 15;
  *(v2 + 280) = 2;
  *(v2 + 288) = "first3#dialog2";
  *(v2 + 296) = 14;
  *(v2 + 304) = 2;
  *(v2 + 312) = "first3#dialog3";
  *(v2 + 320) = 14;
  *(v2 + 328) = 2;
  *(v2 + 336) = "first3#dialog4";
  *(v2 + 344) = 14;
  *(v2 + 352) = 2;
  *(v2 + 360) = "first3#dialog5";
  *(v2 + 368) = 14;
  *(v2 + 376) = 2;
  *(v2 + 384) = "first3#dialog6";
  *(v2 + 392) = 14;
  *(v2 + 400) = 2;
  *(v2 + 408) = "first3#dialog7";
  *(v2 + 416) = 14;
  *(v2 + 424) = 2;
  *(v2 + 432) = "first3#dialog8";
  *(v2 + 440) = 14;
  *(v2 + 448) = 2;
  *(v2 + 456) = "first3#dialog9";
  *(v2 + 464) = 14;
  *(v2 + 472) = 2;
  *(v2 + 480) = "first4#dialog1";
  *(v2 + 488) = 14;
  *(v2 + 496) = 2;
  *(v2 + 504) = "first4#dialog2";
  *(v2 + 512) = 14;
  *(v2 + 520) = 2;
  *(v2 + 528) = "first4#dialog3";
  *(v2 + 536) = 14;
  *(v2 + 544) = 2;
  *(v2 + 552) = "first4#random1#dialog1";
  *(v2 + 560) = 22;
  *(v2 + 568) = 2;
  *(v2 + 576) = "first4#random1#dialog2";
  *(v2 + 584) = 22;
  *(v2 + 592) = 2;
  *(v2 + 600) = "random1#dialog1";
  *(v2 + 608) = 15;
  *(v2 + 616) = 2;
  *(v2 + 624) = "random1#dialog2";
  *(v2 + 632) = 15;
  *(v2 + 640) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_56:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_56;
    case 2:
      v5 = 2;
      goto LABEL_56;
    case 3:
      v5 = 3;
      goto LABEL_56;
    case 4:
      v5 = 4;
      goto LABEL_56;
    case 5:
      v5 = 5;
      goto LABEL_56;
    case 6:
      v5 = 6;
      goto LABEL_56;
    case 7:
      v5 = 7;
      goto LABEL_56;
    case 8:
      v5 = 8;
      goto LABEL_56;
    case 9:
      v5 = 9;
      goto LABEL_56;
    case 10:
      v5 = 10;
      goto LABEL_56;
    case 11:
      v5 = 11;
      goto LABEL_56;
    case 12:
      v5 = 12;
      goto LABEL_56;
    case 13:
      v5 = 13;
      goto LABEL_56;
    case 14:
      v5 = 14;
      goto LABEL_56;
    case 15:
      v5 = 15;
      goto LABEL_56;
    case 16:
      v5 = 16;
      goto LABEL_56;
    case 17:
      v5 = 17;
      goto LABEL_56;
    case 18:
      v5 = 18;
      goto LABEL_56;
    case 19:
      v5 = 19;
      goto LABEL_56;
    case 20:
      v5 = 20;
      goto LABEL_56;
    case 21:
      v5 = 21;
      goto LABEL_56;
    case 22:
      v5 = 22;
      goto LABEL_56;
    case 23:
      v5 = 23;
      goto LABEL_56;
    case 24:
      v5 = 24;
      goto LABEL_56;
    case 25:
      v5 = 25;
      goto LABEL_56;
    case 26:
      v5 = 26;
      goto LABEL_56;
  }

  return 27;
}

unint64_t sub_268DED840()
{
  v2 = qword_2802DCDA8;
  if (!qword_2802DCDA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DED98C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268DECB80(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268DED9C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DED35C(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268DED9F8(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v9 + 96) = v8;
  *(v9 + 148) = a8 & 1;
  *(v9 + 88) = a7;
  *(v9 + 147) = a6 & 1;
  *(v9 + 80) = a5;
  *(v9 + 72) = a4;
  *(v9 + 146) = a3 & 1;
  *(v9 + 145) = a2 & 1;
  *(v9 + 64) = a1;
  *(v9 + 16) = v9;
  *(v9 + 24) = 0;
  *(v9 + 144) = 0;
  *(v9 + 152) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 160) = 0;
  *(v9 + 48) = 0;
  *(v9 + 168) = 0;
  *(v9 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v9 + 104) = swift_task_alloc();
  *(v9 + 24) = a1;
  *(v9 + 144) = a2 & 1;
  *(v9 + 152) = a3 & 1;
  *(v9 + 32) = a4;
  *(v9 + 40) = a5;
  *(v9 + 160) = a6 & 1;
  *(v9 + 48) = a7;
  *(v9 + 168) = a8 & 1;
  *(v9 + 56) = v8;

  return MEMORY[0x2822009F8](sub_268DEDC14, 0);
}

uint64_t sub_268DEDC14()
{
  v36 = v0[8];
  v0[2] = v0;
  v33 = sub_268F9AEF4();
  v34 = v1;
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v35 = v2;
  *v2 = sub_268F9AEF4();
  v35[1] = v3;

  if (v36)
  {
    v31 = *(v32 + 64);
    v35[5] = type metadata accessor for SettingsMultiSetting(0);
    v35[2] = v31;
  }

  else
  {
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = 0;
    v35[5] = 0;
  }

  v30 = *(v32 + 72);
  v29 = *(v32 + 146);
  v27 = *(v32 + 145);
  v35[6] = sub_268F9AEF4();
  v35[7] = v4;
  v28 = MEMORY[0x277D839B0];
  v35[11] = MEMORY[0x277D839B0];
  *(v35 + 64) = v27;
  v35[12] = sub_268F9AEF4();
  v35[13] = v5;
  v35[17] = v28;
  *(v35 + 112) = v29;
  v35[18] = sub_268F9AEF4();
  v35[19] = v6;

  if (v30)
  {
    v26 = *(v32 + 72);
    v35[23] = sub_268F9AA44();
    v35[20] = v26;
  }

  else
  {
    v35[20] = 0;
    v35[21] = 0;
    v35[22] = 0;
    v35[23] = 0;
  }

  v23 = *(v32 + 104);
  v22 = *(v32 + 80);
  v35[24] = sub_268F9AEF4();
  v35[25] = v7;
  sub_268D2A1F0(v22, v23);
  v24 = sub_268F9A9C4();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v23, 1) == 1)
  {
    sub_268D28588(*(v32 + 104));
    v35[26] = 0;
    v35[27] = 0;
    v35[28] = 0;
    v35[29] = 0;
  }

  else
  {
    v21 = *(v32 + 104);
    v35[29] = v24;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35 + 26);
    (*(v25 + 32))(boxed_opaque_existential_1, v21, v24);
  }

  v20 = *(v32 + 88);
  v19 = *(v32 + 147);
  v35[30] = sub_268F9AEF4();
  v35[31] = v9;
  v35[35] = MEMORY[0x277D839B0];
  *(v35 + 256) = v19;
  v35[36] = sub_268F9AEF4();
  v35[37] = v10;

  if (v20)
  {
    v18 = *(v32 + 88);
    v35[41] = sub_268F9A994();
    v35[38] = v18;
  }

  else
  {
    v35[38] = 0;
    v35[39] = 0;
    v35[40] = 0;
    v35[41] = 0;
  }

  v15 = *(v32 + 148);
  v35[42] = sub_268F9AEF4();
  v35[43] = v11;
  v35[47] = MEMORY[0x277D839B0];
  *(v35 + 352) = v15;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v16 = sub_268F9B4F4();
  *(v32 + 120) = v16;
  v17 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v12 = swift_task_alloc();
  *(v32 + 128) = v12;
  v13 = sub_268DED840();
  *v12 = *(v32 + 16);
  v12[1] = sub_268DEC878;

  return v17(v33, v34, v16, &unk_287990178, v13);
}

uint64_t sub_268DEE388(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v9 + 96) = v8;
  *(v9 + 148) = a8 & 1;
  *(v9 + 88) = a7;
  *(v9 + 147) = a6 & 1;
  *(v9 + 80) = a5;
  *(v9 + 72) = a4;
  *(v9 + 146) = a3 & 1;
  *(v9 + 145) = a2 & 1;
  *(v9 + 64) = a1;
  *(v9 + 16) = v9;
  *(v9 + 24) = 0;
  *(v9 + 144) = 0;
  *(v9 + 152) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 160) = 0;
  *(v9 + 48) = 0;
  *(v9 + 168) = 0;
  *(v9 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v9 + 104) = swift_task_alloc();
  *(v9 + 24) = a1;
  *(v9 + 144) = a2 & 1;
  *(v9 + 152) = a3 & 1;
  *(v9 + 32) = a4;
  *(v9 + 40) = a5;
  *(v9 + 160) = a6 & 1;
  *(v9 + 48) = a7;
  *(v9 + 168) = a8 & 1;
  *(v9 + 56) = v8;

  return MEMORY[0x2822009F8](sub_268DEE5A4, 0);
}

uint64_t sub_268DEE5A4()
{
  v35 = v0[8];
  v0[2] = v0;
  v32 = sub_268F9AEF4();
  v33 = v1;
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v34 = v2;
  *v2 = sub_268F9AEF4();
  v34[1] = v3;

  if (v35)
  {
    v30 = *(v31 + 64);
    v34[5] = type metadata accessor for SettingsMultiSetting(0);
    v34[2] = v30;
  }

  else
  {
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = 0;
  }

  v29 = *(v31 + 72);
  v28 = *(v31 + 146);
  v26 = *(v31 + 145);
  v34[6] = sub_268F9AEF4();
  v34[7] = v4;
  v27 = MEMORY[0x277D839B0];
  v34[11] = MEMORY[0x277D839B0];
  *(v34 + 64) = v26;
  v34[12] = sub_268F9AEF4();
  v34[13] = v5;
  v34[17] = v27;
  *(v34 + 112) = v28;
  v34[18] = sub_268F9AEF4();
  v34[19] = v6;

  if (v29)
  {
    v25 = *(v31 + 72);
    v34[23] = sub_268F9AA44();
    v34[20] = v25;
  }

  else
  {
    v34[20] = 0;
    v34[21] = 0;
    v34[22] = 0;
    v34[23] = 0;
  }

  v22 = *(v31 + 104);
  v21 = *(v31 + 80);
  v34[24] = sub_268F9AEF4();
  v34[25] = v7;
  sub_268D2A1F0(v21, v22);
  v23 = sub_268F9A9C4();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1) == 1)
  {
    sub_268D28588(*(v31 + 104));
    v34[26] = 0;
    v34[27] = 0;
    v34[28] = 0;
    v34[29] = 0;
  }

  else
  {
    v20 = *(v31 + 104);
    v34[29] = v23;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34 + 26);
    (*(v24 + 32))(boxed_opaque_existential_1, v20, v23);
  }

  v19 = *(v31 + 88);
  v18 = *(v31 + 147);
  v34[30] = sub_268F9AEF4();
  v34[31] = v9;
  v34[35] = MEMORY[0x277D839B0];
  *(v34 + 256) = v18;
  v34[36] = sub_268F9AEF4();
  v34[37] = v10;

  if (v19)
  {
    v17 = *(v31 + 88);
    v34[41] = sub_268F9A994();
    v34[38] = v17;
  }

  else
  {
    v34[38] = 0;
    v34[39] = 0;
    v34[40] = 0;
    v34[41] = 0;
  }

  v14 = *(v31 + 148);
  v34[42] = sub_268F9AEF4();
  v34[43] = v11;
  v34[47] = MEMORY[0x277D839B0];
  *(v34 + 352) = v14;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v15 = sub_268F9B4F4();
  *(v31 + 120) = v15;
  v16 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v12 = swift_task_alloc();
  *(v31 + 128) = v12;
  *v12 = *(v31 + 16);
  v12[1] = sub_268DEC878;

  return v16(v32, v33, v15);
}

unint64_t sub_268DEF1E4()
{
  v2 = qword_2802DCDB0;
  if (!qword_2802DCDB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DEF330@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DEED00(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268DEF364(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v9 + 96) = v8;
  *(v9 + 148) = a8 & 1;
  *(v9 + 88) = a7;
  *(v9 + 147) = a6 & 1;
  *(v9 + 80) = a5;
  *(v9 + 72) = a4;
  *(v9 + 146) = a3 & 1;
  *(v9 + 145) = a2 & 1;
  *(v9 + 64) = a1;
  *(v9 + 16) = v9;
  *(v9 + 24) = 0;
  *(v9 + 144) = 0;
  *(v9 + 152) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 160) = 0;
  *(v9 + 48) = 0;
  *(v9 + 168) = 0;
  *(v9 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v9 + 104) = swift_task_alloc();
  *(v9 + 24) = a1;
  *(v9 + 144) = a2 & 1;
  *(v9 + 152) = a3 & 1;
  *(v9 + 32) = a4;
  *(v9 + 40) = a5;
  *(v9 + 160) = a6 & 1;
  *(v9 + 48) = a7;
  *(v9 + 168) = a8 & 1;
  *(v9 + 56) = v8;

  return MEMORY[0x2822009F8](sub_268DEF580, 0);
}

uint64_t sub_268DEF580()
{
  v36 = v0[8];
  v0[2] = v0;
  v33 = sub_268F9AEF4();
  v34 = v1;
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v35 = v2;
  *v2 = sub_268F9AEF4();
  v35[1] = v3;

  if (v36)
  {
    v31 = *(v32 + 64);
    v35[5] = type metadata accessor for SettingsMultiSetting(0);
    v35[2] = v31;
  }

  else
  {
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = 0;
    v35[5] = 0;
  }

  v30 = *(v32 + 72);
  v29 = *(v32 + 146);
  v27 = *(v32 + 145);
  v35[6] = sub_268F9AEF4();
  v35[7] = v4;
  v28 = MEMORY[0x277D839B0];
  v35[11] = MEMORY[0x277D839B0];
  *(v35 + 64) = v27;
  v35[12] = sub_268F9AEF4();
  v35[13] = v5;
  v35[17] = v28;
  *(v35 + 112) = v29;
  v35[18] = sub_268F9AEF4();
  v35[19] = v6;

  if (v30)
  {
    v26 = *(v32 + 72);
    v35[23] = sub_268F9AA44();
    v35[20] = v26;
  }

  else
  {
    v35[20] = 0;
    v35[21] = 0;
    v35[22] = 0;
    v35[23] = 0;
  }

  v23 = *(v32 + 104);
  v22 = *(v32 + 80);
  v35[24] = sub_268F9AEF4();
  v35[25] = v7;
  sub_268D2A1F0(v22, v23);
  v24 = sub_268F9A9C4();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v23, 1) == 1)
  {
    sub_268D28588(*(v32 + 104));
    v35[26] = 0;
    v35[27] = 0;
    v35[28] = 0;
    v35[29] = 0;
  }

  else
  {
    v21 = *(v32 + 104);
    v35[29] = v24;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35 + 26);
    (*(v25 + 32))(boxed_opaque_existential_1, v21, v24);
  }

  v20 = *(v32 + 88);
  v19 = *(v32 + 147);
  v35[30] = sub_268F9AEF4();
  v35[31] = v9;
  v35[35] = MEMORY[0x277D839B0];
  *(v35 + 256) = v19;
  v35[36] = sub_268F9AEF4();
  v35[37] = v10;

  if (v20)
  {
    v18 = *(v32 + 88);
    v35[41] = sub_268F9A994();
    v35[38] = v18;
  }

  else
  {
    v35[38] = 0;
    v35[39] = 0;
    v35[40] = 0;
    v35[41] = 0;
  }

  v15 = *(v32 + 148);
  v35[42] = sub_268F9AEF4();
  v35[43] = v11;
  v35[47] = MEMORY[0x277D839B0];
  *(v35 + 352) = v15;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v16 = sub_268F9B4F4();
  *(v32 + 120) = v16;
  v17 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v12 = swift_task_alloc();
  *(v32 + 128) = v12;
  v13 = sub_268DEF1E4();
  *v12 = *(v32 + 16);
  v12[1] = sub_268DEC878;

  return v17(v33, v34, v16, &unk_287990208, v13);
}

uint64_t sub_268DEFCF4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 64) = v4;
  *(v5 + 106) = a4 & 1;
  *(v5 + 56) = a3;
  *(v5 + 105) = a2 & 1;
  *(v5 + 48) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 104) = 0;
  *(v5 + 32) = 0;
  *(v5 + 112) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = a1;
  *(v5 + 104) = a2 & 1;
  *(v5 + 32) = a3;
  *(v5 + 112) = a4 & 1;
  *(v5 + 40) = v4;
  return MEMORY[0x2822009F8](sub_268DEFD94, 0);
}

uint64_t sub_268DEFD94()
{
  v20 = v0[6];
  v0[2] = v0;
  v17 = sub_268F9AEF4();
  v18 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v19 = v2;
  *v2 = sub_268F9AEF4();
  v19[1] = v3;

  if (v20)
  {
    v15 = *(v16 + 48);
    v19[5] = type metadata accessor for SettingsBinarySetting(0);
    v19[2] = v15;
  }

  else
  {
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
  }

  v14 = *(v16 + 56);
  v13 = *(v16 + 105);
  v19[6] = sub_268F9AEF4();
  v19[7] = v4;
  v19[11] = MEMORY[0x277D839B0];
  *(v19 + 64) = v13;
  v19[12] = sub_268F9AEF4();
  v19[13] = v5;

  if (v14)
  {
    v12 = *(v16 + 56);
    v19[17] = sub_268F9AA44();
    v19[14] = v12;
  }

  else
  {
    v19[14] = 0;
    v19[15] = 0;
    v19[16] = 0;
    v19[17] = 0;
  }

  v9 = *(v16 + 106);
  v19[18] = sub_268F9AEF4();
  v19[19] = v6;
  v19[23] = MEMORY[0x277D839B0];
  *(v19 + 160) = v9;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v10 = sub_268F9B4F4();
  *(v16 + 80) = v10;
  v11 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v7 = swift_task_alloc();
  *(v16 + 88) = v7;
  *v7 = *(v16 + 16);
  v7[1] = sub_268DF0154;

  return v11(v17, v18, v10);
}

uint64_t sub_268DF0154(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268DF033C, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268DF033C()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268DF03FC(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "all1#dialog1";
  *(v2 + 8) = 12;
  *(v2 + 16) = 2;
  *(v2 + 24) = "all1#dialog2";
  *(v2 + 32) = 12;
  *(v2 + 40) = 2;
  *(v2 + 48) = "all2#dialog1";
  *(v2 + 56) = 12;
  *(v2 + 64) = 2;
  *(v2 + 72) = "all2#dialog2";
  *(v2 + 80) = 12;
  *(v2 + 88) = 2;
  *(v2 + 96) = "first1#dialog1";
  *(v2 + 104) = 14;
  *(v2 + 112) = 2;
  *(v2 + 120) = "first1#dialog2";
  *(v2 + 128) = 14;
  *(v2 + 136) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_14:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_14;
    case 2:
      v5 = 2;
      goto LABEL_14;
    case 3:
      v5 = 3;
      goto LABEL_14;
    case 4:
      v5 = 4;
      goto LABEL_14;
    case 5:
      v5 = 5;
      goto LABEL_14;
  }

  return 6;
}

unint64_t sub_268DF0814()
{
  v2 = qword_2802DCDB8;
  if (!qword_2802DCDB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF0960@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268DF03FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268DF0998@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DF0648(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268DF09CC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 64) = v4;
  *(v5 + 106) = a4 & 1;
  *(v5 + 56) = a3;
  *(v5 + 105) = a2 & 1;
  *(v5 + 48) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 104) = 0;
  *(v5 + 32) = 0;
  *(v5 + 112) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = a1;
  *(v5 + 104) = a2 & 1;
  *(v5 + 32) = a3;
  *(v5 + 112) = a4 & 1;
  *(v5 + 40) = v4;
  return MEMORY[0x2822009F8](sub_268DF0A6C, 0);
}

uint64_t sub_268DF0A6C()
{
  v21 = v0[6];
  v0[2] = v0;
  v18 = sub_268F9AEF4();
  v19 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v20 = v2;
  *v2 = sub_268F9AEF4();
  v20[1] = v3;

  if (v21)
  {
    v16 = *(v17 + 48);
    v20[5] = type metadata accessor for SettingsBinarySetting(0);
    v20[2] = v16;
  }

  else
  {
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
  }

  v15 = *(v17 + 56);
  v14 = *(v17 + 105);
  v20[6] = sub_268F9AEF4();
  v20[7] = v4;
  v20[11] = MEMORY[0x277D839B0];
  *(v20 + 64) = v14;
  v20[12] = sub_268F9AEF4();
  v20[13] = v5;

  if (v15)
  {
    v13 = *(v17 + 56);
    v20[17] = sub_268F9AA44();
    v20[14] = v13;
  }

  else
  {
    v20[14] = 0;
    v20[15] = 0;
    v20[16] = 0;
    v20[17] = 0;
  }

  v10 = *(v17 + 106);
  v20[18] = sub_268F9AEF4();
  v20[19] = v6;
  v20[23] = MEMORY[0x277D839B0];
  *(v20 + 160) = v10;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v11 = sub_268F9B4F4();
  *(v17 + 80) = v11;
  v12 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v7 = swift_task_alloc();
  *(v17 + 88) = v7;
  v8 = sub_268DF0814();
  *v7 = *(v17 + 16);
  v7[1] = sub_268DF0154;

  return v12(v18, v19, v11, &unk_287990298, v8);
}

uint64_t sub_268DF0E44(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 96) = v5;
  *(v6 + 88) = a5;
  *(v6 + 80) = a4;
  *(v6 + 72) = a3;
  *(v6 + 145) = a2 & 1;
  *(v6 + 64) = a1;
  *(v6 + 16) = v6;
  *(v6 + 24) = 0;
  *(v6 + 144) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 24) = a1;
  *(v6 + 144) = a2 & 1;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;

  return MEMORY[0x2822009F8](sub_268DF0FC8, 0);
}

uint64_t sub_268DF0FC8()
{
  v28 = v0[8];
  v0[2] = v0;
  v25 = sub_268F9AEF4();
  v26 = v1;
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v27 = v2;
  *v2 = sub_268F9AEF4();
  v27[1] = v3;

  if (v28)
  {
    v23 = *(v24 + 64);
    v27[5] = type metadata accessor for SettingsBinarySetting(0);
    v27[2] = v23;
  }

  else
  {
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = 0;
    v27[5] = 0;
  }

  v22 = *(v24 + 72);
  v21 = *(v24 + 145);
  v27[6] = sub_268F9AEF4();
  v27[7] = v4;
  v27[11] = MEMORY[0x277D839B0];
  *(v27 + 64) = v21;
  v27[12] = sub_268F9AEF4();
  v27[13] = v5;

  if (v22)
  {
    v20 = *(v24 + 72);
    v27[17] = sub_268F9AA44();
    v27[14] = v20;
  }

  else
  {
    v27[14] = 0;
    v27[15] = 0;
    v27[16] = 0;
    v27[17] = 0;
  }

  v17 = *(v24 + 104);
  v16 = *(v24 + 80);
  v27[18] = sub_268F9AEF4();
  v27[19] = v6;
  sub_268D2A1F0(v16, v17);
  v18 = sub_268F9A9C4();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1) == 1)
  {
    sub_268D28588(*(v24 + 104));
    v27[20] = 0;
    v27[21] = 0;
    v27[22] = 0;
    v27[23] = 0;
  }

  else
  {
    v15 = *(v24 + 104);
    v27[23] = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27 + 20);
    (*(v19 + 32))(boxed_opaque_existential_1, v15, v18);
  }

  v14 = *(v24 + 88);
  v27[24] = sub_268F9AEF4();
  v27[25] = v8;

  if (v14)
  {
    v13 = *(v24 + 88);
    v27[29] = sub_268F9A994();
    v27[26] = v13;
  }

  else
  {
    v27[26] = 0;
    v27[27] = 0;
    v27[28] = 0;
    v27[29] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v11 = sub_268F9B4F4();
  *(v24 + 120) = v11;
  v12 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v9 = swift_task_alloc();
  *(v24 + 128) = v9;
  *v9 = *(v24 + 16);
  v9[1] = sub_268DF15AC;

  return v12(v25, v26, v11);
}

uint64_t sub_268DF15AC(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 136) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268DF17B0, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268DF17B0()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268DF1884(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "first1#dialog1";
  *(v2 + 8) = 14;
  *(v2 + 16) = 2;
  *(v2 + 24) = "first2#dialog1";
  *(v2 + 32) = 14;
  *(v2 + 40) = 2;
  *(v2 + 48) = "first3#dialog1";
  *(v2 + 56) = 14;
  *(v2 + 64) = 2;
  *(v2 + 72) = "first4#dialog1";
  *(v2 + 80) = 14;
  *(v2 + 88) = 2;
  *(v2 + 96) = "first5#dialog1";
  *(v2 + 104) = 14;
  *(v2 + 112) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_12:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_12;
    case 2:
      v5 = 2;
      goto LABEL_12;
    case 3:
      v5 = 3;
      goto LABEL_12;
    case 4:
      v5 = 4;
      goto LABEL_12;
  }

  return 5;
}

unint64_t sub_268DF1C18()
{
  v2 = qword_2802DCDC0;
  if (!qword_2802DCDC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF1D64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268DF1884(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268DF1D9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DF1A88(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268DF1DD0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 96) = v5;
  *(v6 + 88) = a5;
  *(v6 + 80) = a4;
  *(v6 + 72) = a3;
  *(v6 + 145) = a2 & 1;
  *(v6 + 64) = a1;
  *(v6 + 16) = v6;
  *(v6 + 24) = 0;
  *(v6 + 144) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 24) = a1;
  *(v6 + 144) = a2 & 1;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;

  return MEMORY[0x2822009F8](sub_268DF1F54, 0);
}

uint64_t sub_268DF1F54()
{
  v29 = v0[8];
  v0[2] = v0;
  v26 = sub_268F9AEF4();
  v27 = v1;
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v28 = v2;
  *v2 = sub_268F9AEF4();
  v28[1] = v3;

  if (v29)
  {
    v24 = *(v25 + 64);
    v28[5] = type metadata accessor for SettingsBinarySetting(0);
    v28[2] = v24;
  }

  else
  {
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = 0;
    v28[5] = 0;
  }

  v23 = *(v25 + 72);
  v22 = *(v25 + 145);
  v28[6] = sub_268F9AEF4();
  v28[7] = v4;
  v28[11] = MEMORY[0x277D839B0];
  *(v28 + 64) = v22;
  v28[12] = sub_268F9AEF4();
  v28[13] = v5;

  if (v23)
  {
    v21 = *(v25 + 72);
    v28[17] = sub_268F9AA44();
    v28[14] = v21;
  }

  else
  {
    v28[14] = 0;
    v28[15] = 0;
    v28[16] = 0;
    v28[17] = 0;
  }

  v18 = *(v25 + 104);
  v17 = *(v25 + 80);
  v28[18] = sub_268F9AEF4();
  v28[19] = v6;
  sub_268D2A1F0(v17, v18);
  v19 = sub_268F9A9C4();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1) == 1)
  {
    sub_268D28588(*(v25 + 104));
    v28[20] = 0;
    v28[21] = 0;
    v28[22] = 0;
    v28[23] = 0;
  }

  else
  {
    v16 = *(v25 + 104);
    v28[23] = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28 + 20);
    (*(v20 + 32))(boxed_opaque_existential_1, v16, v19);
  }

  v15 = *(v25 + 88);
  v28[24] = sub_268F9AEF4();
  v28[25] = v8;

  if (v15)
  {
    v14 = *(v25 + 88);
    v28[29] = sub_268F9A994();
    v28[26] = v14;
  }

  else
  {
    v28[26] = 0;
    v28[27] = 0;
    v28[28] = 0;
    v28[29] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v12 = sub_268F9B4F4();
  *(v25 + 120) = v12;
  v13 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v9 = swift_task_alloc();
  *(v25 + 128) = v9;
  v10 = sub_268DF1C18();
  *v9 = *(v25 + 16);
  v9[1] = sub_268DF15AC;

  return v13(v26, v27, v12, &unk_287990328, v10);
}

uint64_t sub_268DF2550(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268DF259C, 0);
}

uint64_t sub_268DF259C()
{
  v13 = v0[5];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v11 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v12 = v2;
  *v2 = sub_268F9AEF4();
  v12[1] = v3;

  if (v13)
  {
    v8 = v9[5];
    v12[5] = sub_268F9AA44();
    v12[2] = v8;
  }

  else
  {
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = 0;
    v12[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v6 = sub_268F9B4F4();
  v9[8] = v6;
  v7 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v4 = swift_task_alloc();
  v9[9] = v4;
  *v4 = v9[2];
  v4[1] = sub_268DE5AA8;

  return v7(v10, v11, v6);
}

uint64_t sub_268DF27B8(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "dialog1";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "first1#dialog1";
  *(v2 + 32) = 14;
  *(v2 + 40) = 2;
  *(v2 + 48) = "first1#dialog2";
  *(v2 + 56) = 14;
  *(v2 + 64) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_8:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_8;
    case 2:
      v5 = 2;
      goto LABEL_8;
  }

  return 3;
}

unint64_t sub_268DF2A4C()
{
  v2 = qword_2802DCDC8;
  if (!qword_2802DCDC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF2B98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268DF27B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268DF2BD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DF2934(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268DF2C04(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x2822009F8](sub_268DF2C50, 0);
}

uint64_t sub_268DF2C50()
{
  v14 = v0[5];
  v0[2] = v0;
  v11 = sub_268F9AEF4();
  v12 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v2;
  *v2 = sub_268F9AEF4();
  v13[1] = v3;

  if (v14)
  {
    v9 = v10[5];
    v13[5] = sub_268F9AA44();
    v13[2] = v9;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v10[8] = v7;
  v8 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v4 = swift_task_alloc();
  v10[9] = v4;
  v5 = sub_268DF2A4C();
  *v4 = v10[2];
  v4[1] = sub_268DE5AA8;

  return v8(v11, v12, v7, &unk_2879903B8, v5);
}

uint64_t sub_268DF2E84(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v2[7] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;

  return MEMORY[0x2822009F8](sub_268DF2F6C, 0);
}

uint64_t sub_268DF2F6C()
{
  v15 = v0[7];
  v14 = v0[5];
  v0[2] = v0;
  v11 = sub_268F9AEF4();
  v12 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v2;
  *v2 = sub_268F9AEF4();
  v13[1] = v3;
  sub_268D2A1F0(v14, v15);
  v16 = sub_268F9A9C4();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1) == 1)
  {
    sub_268D28588(v10[7]);
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  else
  {
    v9 = v10[7];
    v13[5] = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13 + 2);
    (*(v17 + 32))(boxed_opaque_existential_1, v9, v16);
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v10[9] = v7;
  v8 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = swift_task_alloc();
  v10[10] = v5;
  *v5 = v10[2];
  v5[1] = sub_268DF3218;

  return v8(v11, v12, v7);
}

uint64_t sub_268DF3218(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 88) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268DF33E8, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268DF33E8()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268DF34AC(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "dialog1";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "dialog2";
  *(v2 + 32) = 7;
  *(v2 + 40) = 2;
  *(v2 + 48) = "dialog3";
  *(v2 + 56) = 7;
  *(v2 + 64) = 2;
  *(v2 + 72) = "dialog4";
  *(v2 + 80) = 7;
  *(v2 + 88) = 2;
  *(v2 + 96) = "dialog5";
  *(v2 + 104) = 7;
  *(v2 + 112) = 2;
  *(v2 + 120) = "dialog6";
  *(v2 + 128) = 7;
  *(v2 + 136) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_14:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_14;
    case 2:
      v5 = 2;
      goto LABEL_14;
    case 3:
      v5 = 3;
      goto LABEL_14;
    case 4:
      v5 = 4;
      goto LABEL_14;
    case 5:
      v5 = 5;
      goto LABEL_14;
  }

  return 6;
}

unint64_t sub_268DF38C0()
{
  v2 = qword_2802DCDD0;
  if (!qword_2802DCDD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF3A0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268DF34AC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268DF3A44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DF36F4(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268DF3A78(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v2[7] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;

  return MEMORY[0x2822009F8](sub_268DF3B60, 0);
}

uint64_t sub_268DF3B60()
{
  v16 = v0[7];
  v15 = v0[5];
  v0[2] = v0;
  v12 = sub_268F9AEF4();
  v13 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v14 = v2;
  *v2 = sub_268F9AEF4();
  v14[1] = v3;
  sub_268D2A1F0(v15, v16);
  v17 = sub_268F9A9C4();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1) == 1)
  {
    sub_268D28588(v11[7]);
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
    v14[5] = 0;
  }

  else
  {
    v10 = v11[7];
    v14[5] = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14 + 2);
    (*(v18 + 32))(boxed_opaque_existential_1, v10, v17);
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v11[9] = v8;
  v9 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = swift_task_alloc();
  v11[10] = v5;
  v6 = sub_268DF38C0();
  *v5 = v11[2];
  v5[1] = sub_268DF3218;

  return v9(v12, v13, v8, &unk_287990448, v6);
}

uint64_t sub_268DF3E24(uint64_t a1, char a2, char a3)
{
  *(v4 + 48) = v3;
  *(v4 + 98) = a3 & 1;
  *(v4 + 97) = a2 & 1;
  *(v4 + 40) = a1;
  *(v4 + 16) = v4;
  *(v4 + 24) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 24) = a1;
  *(v4 + 96) = a2 & 1;
  *(v4 + 104) = a3 & 1;
  *(v4 + 32) = v3;

  return MEMORY[0x2822009F8](sub_268DF3F78, 0);
}

uint64_t sub_268DF3F78()
{
  v20 = v0[7];
  v19 = v0[5];
  v0[2] = v0;
  v16 = sub_268F9AEF4();
  v17 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v18 = v2;
  *v2 = sub_268F9AEF4();
  v18[1] = v3;
  sub_268D2A1F0(v19, v20);
  v21 = sub_268F9A9C4();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1) == 1)
  {
    sub_268D28588(*(v15 + 56));
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = 0;
    v18[5] = 0;
  }

  else
  {
    v14 = *(v15 + 56);
    v18[5] = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18 + 2);
    (*(v22 + 32))(boxed_opaque_existential_1, v14, v21);
  }

  v11 = *(v15 + 98);
  v9 = *(v15 + 97);
  v18[6] = sub_268F9AEF4();
  v18[7] = v5;
  v10 = MEMORY[0x277D839B0];
  v18[11] = MEMORY[0x277D839B0];
  *(v18 + 64) = v9;
  v18[12] = sub_268F9AEF4();
  v18[13] = v6;
  v18[17] = v10;
  *(v18 + 112) = v11;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v12 = sub_268F9B4F4();
  *(v15 + 72) = v12;
  v13 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v7 = swift_task_alloc();
  *(v15 + 80) = v7;
  *v7 = *(v15 + 16);
  v7[1] = sub_268DF42E0;

  return v13(v16, v17, v12);
}

uint64_t sub_268DF42E0(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 88) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268DF44CC, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268DF44CC()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268DF4598(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "dialog1";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "dialog2";
  *(v2 + 32) = 7;
  *(v2 + 40) = 2;
  *(v2 + 48) = "dialog3";
  *(v2 + 56) = 7;
  *(v2 + 64) = 2;
  *(v2 + 72) = "dialog4";
  *(v2 + 80) = 7;
  *(v2 + 88) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_10:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_10;
    case 2:
      v5 = 2;
      goto LABEL_10;
    case 3:
      v5 = 3;
      goto LABEL_10;
  }

  return 4;
}

unint64_t sub_268DF48AC()
{
  v2 = qword_2802DCDD8;
  if (!qword_2802DCDD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF49F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268DF4598(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268DF4A30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DF4758(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268DF4A64(uint64_t a1, char a2, char a3)
{
  *(v4 + 48) = v3;
  *(v4 + 98) = a3 & 1;
  *(v4 + 97) = a2 & 1;
  *(v4 + 40) = a1;
  *(v4 + 16) = v4;
  *(v4 + 24) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 24) = a1;
  *(v4 + 96) = a2 & 1;
  *(v4 + 104) = a3 & 1;
  *(v4 + 32) = v3;

  return MEMORY[0x2822009F8](sub_268DF4BB8, 0);
}

uint64_t sub_268DF4BB8()
{
  v21 = v0[7];
  v20 = v0[5];
  v0[2] = v0;
  v17 = sub_268F9AEF4();
  v18 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v19 = v2;
  *v2 = sub_268F9AEF4();
  v19[1] = v3;
  sub_268D2A1F0(v20, v21);
  v22 = sub_268F9A9C4();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1) == 1)
  {
    sub_268D28588(*(v16 + 56));
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
  }

  else
  {
    v15 = *(v16 + 56);
    v19[5] = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19 + 2);
    (*(v23 + 32))(boxed_opaque_existential_1, v15, v22);
  }

  v12 = *(v16 + 98);
  v10 = *(v16 + 97);
  v19[6] = sub_268F9AEF4();
  v19[7] = v5;
  v11 = MEMORY[0x277D839B0];
  v19[11] = MEMORY[0x277D839B0];
  *(v19 + 64) = v10;
  v19[12] = sub_268F9AEF4();
  v19[13] = v6;
  v19[17] = v11;
  *(v19 + 112) = v12;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v13 = sub_268F9B4F4();
  *(v16 + 72) = v13;
  v14 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v7 = swift_task_alloc();
  *(v16 + 80) = v7;
  v8 = sub_268DF48AC();
  *v7 = *(v16 + 16);
  v7[1] = sub_268DF42E0;

  return v14(v17, v18, v13, &unk_2879904D8, v8);
}

uint64_t sub_268DF4F38(uint64_t a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 89) = a2 & 1;
  *(v3 + 40) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 88) = 0;
  *(v3 + 32) = 0;
  *(v3 + 24) = a1;
  *(v3 + 88) = a2 & 1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_268DF4FA8, 0);
}

uint64_t sub_268DF4FA8()
{
  v15 = v0[5];
  v0[2] = v0;
  v12 = sub_268F9AEF4();
  v13 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v14 = v2;
  *v2 = sub_268F9AEF4();
  v14[1] = v3;

  if (v15)
  {
    v10 = *(v11 + 40);
    v14[5] = sub_268F9AA44();
    v14[2] = v10;
  }

  else
  {
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
    v14[5] = 0;
  }

  v7 = *(v11 + 89);
  v14[6] = sub_268F9AEF4();
  v14[7] = v4;
  v14[11] = MEMORY[0x277D839B0];
  *(v14 + 64) = v7;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  *(v11 + 64) = v8;
  v9 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = swift_task_alloc();
  *(v11 + 72) = v5;
  *v5 = *(v11 + 16);
  v5[1] = sub_268D7BB14;

  return v9(v12, v13, v8);
}

unint64_t sub_268DF5270()
{
  v2 = qword_2802DCDE0;
  if (!qword_2802DCDE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF53BC(uint64_t a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 89) = a2 & 1;
  *(v3 + 40) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 88) = 0;
  *(v3 + 32) = 0;
  *(v3 + 24) = a1;
  *(v3 + 88) = a2 & 1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_268DF542C, 0);
}

uint64_t sub_268DF542C()
{
  v16 = v0[5];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = *(v12 + 40);
    v15[5] = sub_268F9AA44();
    v15[2] = v11;
  }

  else
  {
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = 0;
    v15[5] = 0;
  }

  v8 = *(v12 + 89);
  v15[6] = sub_268F9AEF4();
  v15[7] = v4;
  v15[11] = MEMORY[0x277D839B0];
  *(v15 + 64) = v8;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  *(v12 + 64) = v9;
  v10 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = swift_task_alloc();
  *(v12 + 72) = v5;
  v6 = sub_268DF5270();
  *v5 = *(v12 + 16);
  v5[1] = sub_268D7BB14;

  return v10(v13, v14, v9, &unk_287990568, v6);
}

uint64_t sub_268DF56C0(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;
  return MEMORY[0x2822009F8](sub_268DF571C, 0);
}

uint64_t sub_268DF571C()
{
  v16 = v0[6];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = v12[6];
    v15[5] = type metadata accessor for SettingsBinarySetting(0);
    v15[2] = v11;
  }

  else
  {
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = 0;
    v15[5] = 0;
  }

  v10 = v12[7];
  v15[6] = sub_268F9AEF4();
  v15[7] = v4;

  if (v10)
  {
    v9 = v12[7];
    v15[11] = sub_268F9AA44();
    v15[8] = v9;
  }

  else
  {
    v15[8] = 0;
    v15[9] = 0;
    v15[10] = 0;
    v15[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v12[10] = v7;
  v8 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = swift_task_alloc();
  v12[11] = v5;
  *v5 = v12[2];
  v5[1] = sub_268DF5A04;

  return v8(v13, v14, v7);
}

uint64_t sub_268DF5A04(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268DF5BD0, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268DF5BD0()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268DF5C88(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "dialog1";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "dialog2";
  *(v2 + 32) = 7;
  *(v2 + 40) = 2;
  *(v2 + 48) = "first1#dialog1";
  *(v2 + 56) = 14;
  *(v2 + 64) = 2;
  *(v2 + 72) = "first1#dialog2";
  *(v2 + 80) = 14;
  *(v2 + 88) = 2;
  *(v2 + 96) = "first2#dialog1";
  *(v2 + 104) = 14;
  *(v2 + 112) = 2;
  *(v2 + 120) = "first2#dialog2";
  *(v2 + 128) = 14;
  *(v2 + 136) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_14:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_14;
    case 2:
      v5 = 2;
      goto LABEL_14;
    case 3:
      v5 = 3;
      goto LABEL_14;
    case 4:
      v5 = 4;
      goto LABEL_14;
    case 5:
      v5 = 5;
      goto LABEL_14;
  }

  return 6;
}

unint64_t sub_268DF60A0()
{
  v2 = qword_2802DCDE8;
  if (!qword_2802DCDE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF61EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268DF5C88(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268DF6224@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DF5ED4(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268DF6258(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;
  return MEMORY[0x2822009F8](sub_268DF62B4, 0);
}

uint64_t sub_268DF62B4()
{
  v17 = v0[6];
  v0[2] = v0;
  v14 = sub_268F9AEF4();
  v15 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v16 = v2;
  *v2 = sub_268F9AEF4();
  v16[1] = v3;

  if (v17)
  {
    v12 = v13[6];
    v16[5] = type metadata accessor for SettingsBinarySetting(0);
    v16[2] = v12;
  }

  else
  {
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = 0;
    v16[5] = 0;
  }

  v11 = v13[7];
  v16[6] = sub_268F9AEF4();
  v16[7] = v4;

  if (v11)
  {
    v10 = v13[7];
    v16[11] = sub_268F9AA44();
    v16[8] = v10;
  }

  else
  {
    v16[8] = 0;
    v16[9] = 0;
    v16[10] = 0;
    v16[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v13[10] = v8;
  v9 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = swift_task_alloc();
  v13[11] = v5;
  v6 = sub_268DF60A0();
  *v5 = v13[2];
  v5[1] = sub_268DF5A04;

  return v9(v14, v15, v8, &unk_2879905F8, v6);
}

uint64_t sub_268DF65B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = v3;
  v4[9] = a3;
  v4[8] = a2;
  v4[7] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = v3;
  return MEMORY[0x2822009F8](sub_268DF6620, 0);
}

uint64_t sub_268DF6620()
{
  v19 = v0[7];
  v0[2] = v0;
  v16 = sub_268F9AEF4();
  v17 = v1;
  v0[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v18 = v2;
  *v2 = sub_268F9AEF4();
  v18[1] = v3;

  if (v19)
  {
    v14 = v15[7];
    v18[5] = type metadata accessor for SettingsMultiSetting(0);
    v18[2] = v14;
  }

  else
  {
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = 0;
    v18[5] = 0;
  }

  v13 = v15[8];
  v18[6] = sub_268F9AEF4();
  v18[7] = v4;

  if (v13)
  {
    v12 = v15[8];
    v18[11] = sub_268F9AA44();
    v18[8] = v12;
  }

  else
  {
    v18[8] = 0;
    v18[9] = 0;
    v18[10] = 0;
    v18[11] = 0;
  }

  v11 = v15[9];
  v18[12] = sub_268F9AEF4();
  v18[13] = v5;

  if (v11)
  {
    v10 = v15[9];
    v18[17] = sub_268F9A994();
    v18[14] = v10;
  }

  else
  {
    v18[14] = 0;
    v18[15] = 0;
    v18[16] = 0;
    v18[17] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v15[12] = v8;
  v9 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v6 = swift_task_alloc();
  v15[13] = v6;
  *v6 = v15[2];
  v6[1] = sub_268DF69EC;

  return v9(v16, v17, v8);
}

uint64_t sub_268DF69EC(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 112) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268DF6BC8, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268DF6BC8()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268DF6C84(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "dialog1";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "dialog2";
  *(v2 + 32) = 7;
  *(v2 + 40) = 2;
  *(v2 + 48) = "first1#dialog1";
  *(v2 + 56) = 14;
  *(v2 + 64) = 2;
  *(v2 + 72) = "first1#dialog2";
  *(v2 + 80) = 14;
  *(v2 + 88) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_10:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_10;
    case 2:
      v5 = 2;
      goto LABEL_10;
    case 3:
      v5 = 3;
      goto LABEL_10;
  }

  return 4;
}

unint64_t sub_268DF6F9C()
{
  v2 = qword_2802DCDF0;
  if (!qword_2802DCDF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF70E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268DF6C84(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268DF7120@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DF6E48(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268DF7154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = v3;
  v4[9] = a3;
  v4[8] = a2;
  v4[7] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = v3;
  return MEMORY[0x2822009F8](sub_268DF71C0, 0);
}

uint64_t sub_268DF71C0()
{
  v20 = v0[7];
  v0[2] = v0;
  v17 = sub_268F9AEF4();
  v18 = v1;
  v0[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v19 = v2;
  *v2 = sub_268F9AEF4();
  v19[1] = v3;

  if (v20)
  {
    v15 = v16[7];
    v19[5] = type metadata accessor for SettingsMultiSetting(0);
    v19[2] = v15;
  }

  else
  {
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
  }

  v14 = v16[8];
  v19[6] = sub_268F9AEF4();
  v19[7] = v4;

  if (v14)
  {
    v13 = v16[8];
    v19[11] = sub_268F9AA44();
    v19[8] = v13;
  }

  else
  {
    v19[8] = 0;
    v19[9] = 0;
    v19[10] = 0;
    v19[11] = 0;
  }

  v12 = v16[9];
  v19[12] = sub_268F9AEF4();
  v19[13] = v5;

  if (v12)
  {
    v11 = v16[9];
    v19[17] = sub_268F9A994();
    v19[14] = v11;
  }

  else
  {
    v19[14] = 0;
    v19[15] = 0;
    v19[16] = 0;
    v19[17] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  v16[12] = v9;
  v10 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v6 = swift_task_alloc();
  v16[13] = v6;
  v7 = sub_268DF6F9C();
  *v6 = v16[2];
  v6[1] = sub_268DF69EC;

  return v10(v17, v18, v9, &unk_287990688, v7);
}

uint64_t sub_268DF75A4(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;
  return MEMORY[0x2822009F8](sub_268DF7600, 0);
}

uint64_t sub_268DF7600()
{
  v16 = v0[6];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = v12[6];
    v15[5] = type metadata accessor for SettingsBinarySetting(0);
    v15[2] = v11;
  }

  else
  {
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = 0;
    v15[5] = 0;
  }

  v10 = v12[7];
  v15[6] = sub_268F9AEF4();
  v15[7] = v4;

  if (v10)
  {
    v9 = v12[7];
    v15[11] = sub_268F9AA44();
    v15[8] = v9;
  }

  else
  {
    v15[8] = 0;
    v15[9] = 0;
    v15[10] = 0;
    v15[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v12[10] = v7;
  v8 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = swift_task_alloc();
  v12[11] = v5;
  *v5 = v12[2];
  v5[1] = sub_268DF5A04;

  return v8(v13, v14, v7);
}

unint64_t sub_268DF7934()
{
  v2 = qword_2802DCDF8;
  if (!qword_2802DCDF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCDF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF7A80(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;
  return MEMORY[0x2822009F8](sub_268DF7ADC, 0);
}

uint64_t sub_268DF7ADC()
{
  v17 = v0[6];
  v0[2] = v0;
  v14 = sub_268F9AEF4();
  v15 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v16 = v2;
  *v2 = sub_268F9AEF4();
  v16[1] = v3;

  if (v17)
  {
    v12 = v13[6];
    v16[5] = type metadata accessor for SettingsBinarySetting(0);
    v16[2] = v12;
  }

  else
  {
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = 0;
    v16[5] = 0;
  }

  v11 = v13[7];
  v16[6] = sub_268F9AEF4();
  v16[7] = v4;

  if (v11)
  {
    v10 = v13[7];
    v16[11] = sub_268F9AA44();
    v16[8] = v10;
  }

  else
  {
    v16[8] = 0;
    v16[9] = 0;
    v16[10] = 0;
    v16[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v13[10] = v8;
  v9 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = swift_task_alloc();
  v13[11] = v5;
  v6 = sub_268DF7934();
  *v5 = v13[2];
  v5[1] = sub_268DF5A04;

  return v9(v14, v15, v8, &unk_287990718, v6);
}

uint64_t sub_268DF7DDC()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268DF7E18, 0);
}

uint64_t sub_268DF7E18()
{
  v4 = MEMORY[0x277D55C70];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v6 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v0[6] = v7;
  v8 = (v4 + *v4);
  v2 = swift_task_alloc();
  *(v5 + 56) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D71B74;

  return v8(v9, v6, v7);
}

unint64_t sub_268DF7FB8()
{
  v2 = qword_2802DCE00;
  if (!qword_2802DCE00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF8104()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268DF8140, 0);
}

uint64_t sub_268DF8140()
{
  v5 = MEMORY[0x277D55C68];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v7 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v0[6] = v8;
  v9 = (v5 + *v5);
  v2 = swift_task_alloc();
  *(v6 + 56) = v2;
  v3 = sub_268DF7FB8();
  *v2 = *(v6 + 16);
  v2[1] = sub_268D71B74;

  return v9(v10, v7, v8, &unk_2879907A8, v3);
}

uint64_t sub_268DF82AC()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268DF82E8, 0);
}

uint64_t sub_268DF82E8()
{
  v4 = MEMORY[0x277D55C70];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v6 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v0[6] = v7;
  v8 = (v4 + *v4);
  v2 = swift_task_alloc();
  *(v5 + 56) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D71B74;

  return v8(v9, v6, v7);
}

unint64_t sub_268DF8488()
{
  v2 = qword_2802DCE08;
  if (!qword_2802DCE08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF85D4()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268DF8610, 0);
}

uint64_t sub_268DF8610()
{
  v5 = MEMORY[0x277D55C68];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v7 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v0[6] = v8;
  v9 = (v5 + *v5);
  v2 = swift_task_alloc();
  *(v6 + 56) = v2;
  v3 = sub_268DF8488();
  *v2 = *(v6 + 16);
  v2[1] = sub_268D71B74;

  return v9(v10, v7, v8, &unk_287990838, v3);
}

uint64_t sub_268DF877C(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;
  return MEMORY[0x2822009F8](sub_268DF87D8, 0);
}

uint64_t sub_268DF87D8()
{
  v16 = v0[6];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = v12[6];
    v15[5] = type metadata accessor for SettingsBinarySetting(0);
    v15[2] = v11;
  }

  else
  {
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = 0;
    v15[5] = 0;
  }

  v10 = v12[7];
  v15[6] = sub_268F9AEF4();
  v15[7] = v4;

  if (v10)
  {
    v9 = v12[7];
    v15[11] = sub_268F9AA44();
    v15[8] = v9;
  }

  else
  {
    v15[8] = 0;
    v15[9] = 0;
    v15[10] = 0;
    v15[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v12[10] = v7;
  v8 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = swift_task_alloc();
  v12[11] = v5;
  *v5 = v12[2];
  v5[1] = sub_268DF5A04;

  return v8(v13, v14, v7);
}

uint64_t sub_268DF8AC0(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "all1#dialog1";
  *(v2 + 8) = 12;
  *(v2 + 16) = 2;
  *(v2 + 24) = "all1#first1#dialog1";
  *(v2 + 32) = 19;
  *(v2 + 40) = 2;
  *(v2 + 48) = "all1#first1#dialog2";
  *(v2 + 56) = 19;
  *(v2 + 64) = 2;
  *(v2 + 72) = "all2#dialog1";
  *(v2 + 80) = 12;
  *(v2 + 88) = 2;
  *(v2 + 96) = "all2#first1#dialog1";
  *(v2 + 104) = 19;
  *(v2 + 112) = 2;
  *(v2 + 120) = "all2#first1#dialog2";
  *(v2 + 128) = 19;
  *(v2 + 136) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_14:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_14;
    case 2:
      v5 = 2;
      goto LABEL_14;
    case 3:
      v5 = 3;
      goto LABEL_14;
    case 4:
      v5 = 4;
      goto LABEL_14;
    case 5:
      v5 = 5;
      goto LABEL_14;
  }

  return 6;
}

unint64_t sub_268DF8ED8()
{
  v2 = qword_2802DCE10;
  if (!qword_2802DCE10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF9024@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268DF8AC0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268DF905C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DF8D0C(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268DF9090(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;
  return MEMORY[0x2822009F8](sub_268DF90EC, 0);
}

uint64_t sub_268DF90EC()
{
  v17 = v0[6];
  v0[2] = v0;
  v14 = sub_268F9AEF4();
  v15 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v16 = v2;
  *v2 = sub_268F9AEF4();
  v16[1] = v3;

  if (v17)
  {
    v12 = v13[6];
    v16[5] = type metadata accessor for SettingsBinarySetting(0);
    v16[2] = v12;
  }

  else
  {
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = 0;
    v16[5] = 0;
  }

  v11 = v13[7];
  v16[6] = sub_268F9AEF4();
  v16[7] = v4;

  if (v11)
  {
    v10 = v13[7];
    v16[11] = sub_268F9AA44();
    v16[8] = v10;
  }

  else
  {
    v16[8] = 0;
    v16[9] = 0;
    v16[10] = 0;
    v16[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v13[10] = v8;
  v9 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = swift_task_alloc();
  v13[11] = v5;
  v6 = sub_268DF8ED8();
  *v5 = v13[2];
  v5[1] = sub_268DF5A04;

  return v9(v14, v15, v8, &unk_2879908C8, v6);
}

uint64_t sub_268DF93EC(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;
  return MEMORY[0x2822009F8](sub_268DF9448, 0);
}

uint64_t sub_268DF9448()
{
  v16 = v0[6];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = v12[6];
    v15[5] = type metadata accessor for SettingsMultiSetting(0);
    v15[2] = v11;
  }

  else
  {
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = 0;
    v15[5] = 0;
  }

  v10 = v12[7];
  v15[6] = sub_268F9AEF4();
  v15[7] = v4;

  if (v10)
  {
    v9 = v12[7];
    v15[11] = sub_268F9AA44();
    v15[8] = v9;
  }

  else
  {
    v15[8] = 0;
    v15[9] = 0;
    v15[10] = 0;
    v15[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v12[10] = v7;
  v8 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = swift_task_alloc();
  v12[11] = v5;
  *v5 = v12[2];
  v5[1] = sub_268DF5A04;

  return v8(v13, v14, v7);
}

uint64_t sub_268DF9730(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "all1#dialog1";
  *(v2 + 8) = 12;
  *(v2 + 16) = 2;
  *(v2 + 24) = "all1#dialog2";
  *(v2 + 32) = 12;
  *(v2 + 40) = 2;
  *(v2 + 48) = "all2#dialog1";
  *(v2 + 56) = 12;
  *(v2 + 64) = 2;
  *(v2 + 72) = "all2#dialog2";
  *(v2 + 80) = 12;
  *(v2 + 88) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_10:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_10;
    case 2:
      v5 = 2;
      goto LABEL_10;
    case 3:
      v5 = 3;
      goto LABEL_10;
  }

  return 4;
}

unint64_t sub_268DF9A44()
{
  v2 = qword_2802DCE18;
  if (!qword_2802DCE18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DF9B90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268DF9730(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268DF9BC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DF98F0(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268DF9BFC(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;
  return MEMORY[0x2822009F8](sub_268DF9C58, 0);
}

uint64_t sub_268DF9C58()
{
  v17 = v0[6];
  v0[2] = v0;
  v14 = sub_268F9AEF4();
  v15 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v16 = v2;
  *v2 = sub_268F9AEF4();
  v16[1] = v3;

  if (v17)
  {
    v12 = v13[6];
    v16[5] = type metadata accessor for SettingsMultiSetting(0);
    v16[2] = v12;
  }

  else
  {
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = 0;
    v16[5] = 0;
  }

  v11 = v13[7];
  v16[6] = sub_268F9AEF4();
  v16[7] = v4;

  if (v11)
  {
    v10 = v13[7];
    v16[11] = sub_268F9AA44();
    v16[8] = v10;
  }

  else
  {
    v16[8] = 0;
    v16[9] = 0;
    v16[10] = 0;
    v16[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v13[10] = v8;
  v9 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = swift_task_alloc();
  v13[11] = v5;
  v6 = sub_268DF9A44();
  *v5 = v13[2];
  v5[1] = sub_268DF5A04;

  return v9(v14, v15, v8, &unk_287990958, v6);
}

uint64_t type metadata accessor for SetBinarySettingIntentCATsSimple(uint64_t a1)
{
  v2 = qword_280FE2DD0;
  if (!qword_280FE2DD0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268DF9FCC(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268DFA098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v22 = a2;
  v19 = a3;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v23 = sub_268F9AB24();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v15 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v4, v5, v6);
  v17 = &v14 - v15;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24, v7, v19, v8);
  v18 = &v14 - v16;
  v28 = v9;
  v27 = v10;
  v26 = v11;
  v29 = v3;
  sub_268CDC358(v9, &v14 - v16);
  (*(v20 + 16))(v17, v22, v23);
  MEMORY[0x277D82BE0](v19);
  v25 = sub_268F9A9D4();

  v29 = v25;
  v12 = MEMORY[0x277D82BD8](v19);
  (*(v20 + 8))(v22, v23, v12);
  sub_268CDC480(v24);

  return v25;
}

uint64_t sub_268DFA2D4(int a1, uint64_t a2)
{
  v10 = a1;
  v11 = a2;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v14 = sub_268F9AB24();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v8 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v14, v11, v14, v3);
  v9 = &v7 - v8;
  v17 = v10 & 1;
  v16 = v5;
  v18 = v2;
  (*(v12 + 16))(v4);
  v15 = sub_268F9A9E4();

  v18 = v15;
  (*(v12 + 8))(v11, v14);

  return v15;
}

uint64_t sub_268DFA49C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xEA)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 21) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 234;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 22;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268DFA604(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xEA)
  {
    v5 = ((a3 + 21) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xEA)
  {
    v4 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 21;
    }
  }

  return result;
}

uint64_t sub_268DFA878(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xE4)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 27) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 228;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 28;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268DFA9E0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xE4)
  {
    v5 = ((a3 + 27) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xE4)
  {
    v4 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 27;
    }
  }

  return result;
}

uint64_t sub_268DFABF0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xE7)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 24) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 231;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 25;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268DFAD58(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xE7)
  {
    v5 = ((a3 + 24) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xE7)
  {
    v4 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 24;
    }
  }

  return result;
}

uint64_t sub_268DFAF68(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xE5)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 26) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 229;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 27;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268DFB0D0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xE5)
  {
    v5 = ((a3 + 26) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xE5)
  {
    v4 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 26;
    }
  }

  return result;
}

uint64_t sub_268DFB2F4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFA)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 5) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 250;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 6;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268DFB45C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFA)
  {
    v5 = ((a3 + 5) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFA)
  {
    v4 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadBatteryDeviceCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ReadBatteryDeviceCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_268DFBAD8()
{
  v2 = qword_2802DCE20;
  if (!qword_2802DCE20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFBB6C()
{
  v2 = qword_2802DCE28;
  if (!qword_2802DCE28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFBC00()
{
  v2 = qword_2802DCE30;
  if (!qword_2802DCE30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFBC94()
{
  v2 = qword_2802DCE38;
  if (!qword_2802DCE38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFBD28()
{
  v2 = qword_2802DCE40;
  if (!qword_2802DCE40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFBDBC()
{
  v2 = qword_2802DCE48;
  if (!qword_2802DCE48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFBE50()
{
  v2 = qword_2802DCE50;
  if (!qword_2802DCE50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFBEE4()
{
  v2 = qword_2802DCE58;
  if (!qword_2802DCE58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFBF78()
{
  v2 = qword_2802DCE60;
  if (!qword_2802DCE60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC00C()
{
  v2 = qword_2802DCE68;
  if (!qword_2802DCE68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC0A0()
{
  v2 = qword_2802DCE70;
  if (!qword_2802DCE70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC134()
{
  v2 = qword_2802DCE78;
  if (!qword_2802DCE78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC1C8()
{
  v2 = qword_2802DCE80;
  if (!qword_2802DCE80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC25C()
{
  v2 = qword_2802DCE88;
  if (!qword_2802DCE88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC2F0()
{
  v2 = qword_2802DCE90;
  if (!qword_2802DCE90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC384()
{
  v2 = qword_2802DCE98;
  if (!qword_2802DCE98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCE98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC418()
{
  v2 = qword_2802DCEA0;
  if (!qword_2802DCEA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCEA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC4AC()
{
  v2 = qword_2802DCEA8;
  if (!qword_2802DCEA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCEA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC540()
{
  v2 = qword_2802DCEB0;
  if (!qword_2802DCEB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCEB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC5D4()
{
  v2 = qword_2802DCEB8;
  if (!qword_2802DCEB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCEB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC668()
{
  v2 = qword_2802DCEC0;
  if (!qword_2802DCEC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCEC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC6FC()
{
  v2 = qword_2802DCEC8;
  if (!qword_2802DCEC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCEC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DFC790()
{
  v2 = qword_2802DCED0;
  if (!qword_2802DCED0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCED0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268DFC80C()
{
  if (qword_2802DB550 != -1)
  {
    swift_once();
  }

  return &qword_2802F1408;
}

uint64_t sub_268DFC974()
{
  type metadata accessor for SetAnnounceNotificationsHandler();
  v2 = sub_268CDC590();
  v0 = sub_268DFC9F4();
  result = sub_268DFCA24(v2, 1, v0);
  qword_2802F1408 = result;
  return result;
}

uint64_t sub_268DFC9F4()
{
  v1 = *sub_268F888C8();

  return v1;
}

uint64_t sub_268DFCA84()
{
  v1 = *sub_268DFC80C();

  return v1;
}

uint64_t sub_268DFCAB4()
{
  result = sub_268F9AEF4();
  qword_2802F1410 = result;
  qword_2802F1418 = v1;
  return result;
}

uint64_t *sub_268DFCAF8()
{
  if (qword_2802DB558 != -1)
  {
    swift_once();
  }

  return &qword_2802F1410;
}

uint64_t sub_268DFCB58()
{
  v1 = *sub_268DFCAF8();

  return v1;
}

uint64_t sub_268DFCB94()
{
  result = sub_268F9AEF4();
  qword_2802F1420 = result;
  qword_2802F1428 = v1;
  return result;
}

uint64_t *sub_268DFCBD8()
{
  if (qword_2802DB560 != -1)
  {
    swift_once();
  }

  return &qword_2802F1420;
}

uint64_t sub_268DFCC38()
{
  v1 = *sub_268DFCBD8();

  return v1;
}

uint64_t sub_268DFCC74()
{
  result = sub_268F9AEF4();
  qword_2802F1430 = result;
  qword_2802F1438 = v1;
  return result;
}

uint64_t *sub_268DFCCB8()
{
  if (qword_2802DB568 != -1)
  {
    swift_once();
  }

  return &qword_2802F1430;
}

uint64_t sub_268DFCD18()
{
  v1 = *sub_268DFCCB8();

  return v1;
}

uint64_t sub_268DFCD54(uint64_t a1, char a2, uint64_t a3)
{

  *(v3 + 32) = a3;

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;

  return v8;
}

uint64_t sub_268DFCDF0(void *a1, void (*a2)(id), uint64_t a3)
{
  v18[3] = 0;
  v18[6] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v14 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v15 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v14, &dword_268CBE000, v15, "SetAnnounceNotificationsHandler handling intent", 47, 2);

  v18[2] = [a1 binaryValue];
  v18[1] = 1;
  type metadata accessor for INBinarySettingValue(0);
  sub_268CD925C();
  v17 = sub_268F9B754();
  MEMORY[0x277D82BE0](a1);
  if (v17)
  {
    v18[0] = [a1 temporalEventTrigger];
    v10 = v18[0] != 0;
    sub_268D35038(v18);
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x277D82BD8](a1);

  if (v9)
  {
    v7 = sub_268E948B8(2);
    v8 = sub_268DAB158(0, v7, v4);

    a2(v8);
    MEMORY[0x277D82BD8](v8);
  }

  else
  {

    MEMORY[0x277D82BE0](a1);
    v6 = swift_allocObject();
    v6[2] = a2;
    v6[3] = a3;
    v6[4] = v13;
    v6[5] = a1;
    sub_268E01C88(sub_268DFD208, v6);
  }
}

void sub_268DFD0E4(char a1, void (*a2)(id), uint64_t a3, uint64_t a4, void *a5)
{
  sub_268E03388();
  if (sub_268F9B754())
  {

    v6 = sub_268E948B8(9);
    v7 = sub_268DAB158(0, v6, v5);

    a2(v7);
    MEMORY[0x277D82BD8](v7);
  }

  else
  {
    sub_268DFD21C(a5, a2, a3);
  }
}

void sub_268DFD21C(void *a1, void (*a2)(void), uint64_t a3)
{
  v123 = a1;
  v122 = a2;
  v121 = a3;
  v110 = "SetAnnounceNotificationsHandler handling app based intent";
  v111 = sub_268E01DE8;
  v112 = "SetAnnounceNotificationsHandler marking notifications user default for temporary announce disablement";
  v113 = "SetAnnounceNotificationsHandler handling temporary global feature disable.";
  v114 = sub_268E02E80;
  v115 = "SetAnnounceNotificationsHandler handling headphones session.";
  v116 = "SetAnnounceNotificationsHandler handling carplay session.";
  v141 = 0;
  v140 = 0;
  v138 = 0;
  v139 = 0;
  v137 = 0;
  v133 = 0;
  v134 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0);
  v117 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v5, v6, v7);
  v118 = v43 - v117;
  v119 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43 - v117, v9, v10, v11);
  v120 = v43 - v119;
  v124 = sub_268F99214();
  v126 = *(v124 - 8);
  v125 = v124 - 8;
  v127 = v126;
  v128 = *(v126 + 64);
  v129 = (v128 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v123, v122, v121, v12);
  v130 = v43 - v129;
  v131 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v15, v16, v43 - v129);
  v132 = v43 - v131;
  v141 = v43 - v131;
  v140 = v17;
  v138 = v18;
  v139 = v19;
  v137 = v3;
  if (sub_268E00334(v17))
  {
    v106 = sub_268F9B284();
    v108 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v107 = sub_268F9B734();
    sub_268F9AC14(v106, &dword_268CBE000, v108, v116, 57, 2);

    MEMORY[0x277D82BD8](v108);
    sub_268DFE8BC(v123, v122, v121);
  }

  else
  {
    v105 = [v123 settingMetadata];
    if (v105 && (v104 = v105, v102 = v105, v103 = [v105 targetApp], *&v20 = MEMORY[0x277D82BD8](v102).n128_u64[0], v103))
    {
      v101 = v103;
      v99 = v103;
      v21 = [v103 bundleIdentifier];
      v100 = v21;
      if (v21)
      {
        v98 = v100;
        v93 = v100;
        v94 = sub_268F9AE24();
        v95 = v22;
        MEMORY[0x277D82BD8](v93);
        v96 = v94;
        v97 = v95;
      }

      else
      {
        v96 = 0;
        v97 = 0;
      }

      v90 = v97;
      v89 = v96;
      MEMORY[0x277D82BD8](v99);
      v91 = v89;
      v92 = v90;
    }

    else
    {
      v91 = 0;
      v92 = 0;
    }

    v87 = v92;
    v88 = v91;
    if (v92)
    {
      v85 = v88;
      v86 = v87;
      v84 = v87;
      v83 = v88;
      v133 = v88;
      v134 = v87;
      v80 = sub_268F9B284();
      v82 = *sub_268DC7AE8();
      MEMORY[0x277D82BE0](v82);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v81 = sub_268F9B734();
      sub_268F9AC14(v80, &dword_268CBE000, v82, v110, 57, 2);

      MEMORY[0x277D82BD8](v82);
      sub_268E00728(v123, v83, v84, v122, v121);
    }

    else if (sub_268DFFF40(v123))
    {
      v77 = sub_268F9B284();
      v79 = *sub_268DC7AE8();
      MEMORY[0x277D82BE0](v79);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v78 = sub_268F9B734();
      sub_268F9AC14(v77, &dword_268CBE000, v79, v115, 60, 2);

      MEMORY[0x277D82BD8](v79);
      sub_268DFFD18(v123, v122, v121);
    }

    else
    {
      v23 = [v123 binaryValue];
      v76 = &v136;
      v136 = v23;
      v74 = &v135;
      v135 = 2;
      v75 = type metadata accessor for INBinarySettingValue(0);
      sub_268CD925C();
      if (sub_268F9B754())
      {
        v72 = *(v109 + 32);

        v73 = sub_268F23C10();

        if (v73)
        {
          v71 = v73;
          v70 = v73;
          v24 = sub_268F88928();
          v67 = *v24;
          v68 = v24[1];

          v69 = sub_268F9AE14();

          [v70 setBool:1 forKey:v69];
          MEMORY[0x277D82BD8](v69);
          MEMORY[0x277D82BD8](v70);
        }

        v63 = sub_268F9B284();
        v65 = *sub_268DC7AE8();
        MEMORY[0x277D82BE0](v65);
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v64 = sub_268F9B734();
        sub_268F9AC14(v63, &dword_268CBE000, v65, v112, 101, 2);

        *&v25 = MEMORY[0x277D82BD8](v65).n128_u64[0];
        v66 = [v123 temporalEventTrigger];
        if (v66)
        {
          v61 = v66;
          v58 = v66;
          v59 = [v66 dateComponentsRange];
          *&v26 = MEMORY[0x277D82BD8](v58).n128_u64[0];
          v60 = [v59 endDate];
          if (v60)
          {
            v57 = v60;
            v56 = v60;
            sub_268F991E4();
            (*(v126 + 32))(v118, v130, v124);
            (*(v126 + 56))(v118, 0, 1, v124);
            MEMORY[0x277D82BD8](v56);
          }

          else
          {
            (*(v126 + 56))(v118, 1, 1, v124);
          }

          sub_268E02F0C(v118, v120);
          v27 = MEMORY[0x277D82BD8](v59);
        }

        else
        {
          (*(v126 + 56))(v120, 1, 1, v124);
        }

        if ((*(v126 + 48))(v120, 1, v124, v27) == 1)
        {
          sub_268D54CB4(v120);

          v44 = sub_268E948B8(17);
          v45 = v36;
          v46 = sub_268DAB158(0, v44, v36);

          v122(v46);
          MEMORY[0x277D82BD8](v46);
        }

        else
        {
          v50 = v127;
          v53 = *(v126 + 32);
          v52 = v126 + 32;
          v53(v132, v120, v124);
          v47 = sub_268F9B284();
          v49 = *sub_268DC7AE8();
          MEMORY[0x277D82BE0](v49);
          v48 = sub_268F9B734();
          sub_268F9AC14(v47, &dword_268CBE000, v49, v113, 74, 2);

          MEMORY[0x277D82BD8](v49);
          v55 = *(v109 + 16);

          MEMORY[0x277D82BE0](v123);

          (*(v126 + 16))(v130, v132, v124);
          v51 = (*(v50 + 80) + 48) & ~*(v50 + 80);
          v28 = swift_allocObject();
          v29 = v109;
          v30 = v122;
          v31 = v121;
          v32 = v51;
          v33 = v130;
          v34 = v53;
          v35 = v124;
          v54 = v28;
          v28[2] = v123;
          v28[3] = v29;
          v28[4] = v30;
          v28[5] = v31;
          v34(v28 + v32, v33, v35);
          sub_268D413E4(v114, v54);

          (*(v126 + 8))(v132, v124);
        }
      }

      else
      {
        v43[1] = *(v109 + 16);

        MEMORY[0x277D82BE0](v123);

        v37 = swift_allocObject();
        v38 = v123;
        v39 = v122;
        v40 = v121;
        v41 = v37;
        v42 = v111;
        v43[0] = v41;
        v41[2] = v109;
        v41[3] = v38;
        v41[4] = v39;
        v41[5] = v40;
        sub_268D413E4(v42, v41);
      }
    }
  }
}

uint64_t sub_268DFE138(unsigned int a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v39 = a1;
  v32 = a2;
  v24 = a3;
  v37 = a4;
  v38 = a5;
  v21 = a6;
  v40 = sub_268E036A4;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v29 = sub_268F99214();
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v22 = v25;
  v23 = *(v25 + 64);
  v20 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39, v32, v24, v37);
  v28 = &v19 - v20;
  v31 = 1;
  v47 = v6 & 1;
  v46 = v7;
  v45 = v8;
  v43 = v9;
  v44 = v10;
  v42 = v11;
  v12 = sub_268DBE6F4();
  v33 = *v12;
  v34 = v12[1];
  v35 = *(v12 + 16);
  v36 = *(v24 + 24);

  (*(v25 + 16))(v28, v21, v29);
  v27 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v13 = swift_allocObject();
  v14 = v25;
  v15 = v27;
  v16 = v28;
  v17 = v29;
  v30 = v13;
  *(v13 + 16) = v24;
  (*(v14 + 32))(v13 + v15, v16, v17);
  v41 = v30;
  sub_268DAAB84(v39 & 1, v32, v33, v34, v35, v36 & 1, v37, v38, v40, v30, 0, v31, 0, 0);
  return sub_268CD9A28(v40, v41);
}

uint64_t sub_268DFE3B8(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v11 = a3;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v8, v11, v3);
  v16 = &v8 - v10;
  v14 = 1;
  v20 = v4 & 1;
  v19 = v5;
  v18 = v6;
  v17 = *(v5 + 16);

  v15 = sub_268F99214();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  (*(v12 + 16))(v16, v11);
  (*(v12 + 56))(v16, 0, v14, v15);
  sub_268D40A3C(v16);
  sub_268D54CB4(v16);
}

uint64_t sub_268DFE534(char a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{

  v17 = sub_268D415B8();

  if (v17)
  {
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  v5 = sub_268DBE6F4();
  v7 = *v5;
  v8 = v5[1];
  v9 = *(v5 + 16);
  v10 = *(a2 + 24);

  sub_268DAAB84(v11 & 1, a3, v7, v8, v9, v10 & 1, a4, a5, sub_268E03730, a2, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268E03730, a2);
}

uint64_t sub_268DFE698(char a1)
{

  v10 = sub_268D415B8();

  if (v10)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v6 = sub_268F9B284();
    v1 = sub_268DC7AE8();
    v7 = *v1;
    MEMORY[0x277D82BE0](*v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v6, &dword_268CBE000, v7, "SetAnnounceNotificationsHandler announce is on, but is muted, treat as unmute", 77, 2);

    MEMORY[0x277D82BD8](v7);

    sub_268D40BF4(1u);
  }

  else
  {
    v4 = sub_268F9B284();
    v3 = sub_268DC7AE8();
    v5 = *v3;
    MEMORY[0x277D82BE0](*v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v4, &dword_268CBE000, v5, "SetAnnounceNotificationsHandler handling global feature mutation.", 65, 2);

    MEMORY[0x277D82BD8](v5);

    sub_268D416A4(a1 & 1);
  }
}

void sub_268DFE8BC(void *a1, void (*a2)(id), uint64_t a3)
{
  v50 = [a1 settingMetadata];
  if (v50 && (v45 = [v50 targetApp], *&v3 = MEMORY[0x277D82BD8](v50).n128_u64[0], v45))
  {
    v4 = [v45 bundleIdentifier];
    v44 = v4;
    if (v4)
    {
      v40 = sub_268F9AE24();
      v41 = v5;
      MEMORY[0x277D82BD8](v44);
      v42 = v40;
      v43 = v41;
    }

    else
    {
      v42 = 0;
      v43 = 0;
    }

    MEMORY[0x277D82BD8](v45);
    v38 = v42;
    v39 = v43;
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  if (v39)
  {
    v6 = sub_268DFFEC0(v38, v39);
    if ((v6 & 1) == 0)
    {
      v34 = sub_268F9B284();
      v7 = sub_268DC7AE8();
      v35 = *v7;
      MEMORY[0x277D82BE0](*v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      sub_268F9AC14(v34, &dword_268CBE000, v35, "SetAnnounceNotificationsHandler unsupported app id.", 51, 2);

      MEMORY[0x277D82BD8](v35);

      v36 = sub_268E948B8(20);
      v37 = sub_268DAB158(0, v36, v8);

      a2(v37);
      MEMORY[0x277D82BD8](v37);

      return;
    }
  }

  v30 = sub_268F9B284();
  v9 = sub_268DC7AE8();
  v31 = *v9;
  MEMORY[0x277D82BE0](*v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v32 = v10;
  v33 = [a1 settingMetadata];
  if (v33)
  {
    v29 = [v33 targetApp];
    *&v11 = MEMORY[0x277D82BD8](v33).n128_u64[0];
    if (v29)
    {
      v12 = [v29 bundleIdentifier];
      v28 = v12;
      if (v12)
      {
        sub_268F9AE24();
        MEMORY[0x277D82BD8](v28);
      }

      MEMORY[0x277D82BD8](v29);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  v26 = sub_268F9AE64();
  v27 = v13;
  v32[3] = MEMORY[0x277D837D0];
  v32[4] = sub_268CDD224();
  *v32 = v26;
  v32[1] = v27;
  sub_268CD0F7C();
  sub_268F9AC14(v30, &dword_268CBE000, v31, "SetAnnounceNotificationsHandler handling carplay based intent, appId %@", 71, 2);

  [a1 binaryValue];
  type metadata accessor for INBinarySettingValue(0);
  sub_268CD925C();
  if (sub_268F9B754())
  {
    v23 = sub_268F9B284();
    v14 = sub_268DC7AE8();
    v24 = *v14;
    MEMORY[0x277D82BE0](*v14);
    sub_268F9B734();
    sub_268F9AC14(v23, &dword_268CBE000, v24, "SetAnnounceNotificationsHandler | CarPlay requested state is ON.", 64, 2);

    MEMORY[0x277D82BD8](v24);

    v25 = sub_268D415B8();

    if ((v25 & 1) == 0)
    {
      v21 = sub_268F9B284();
      v15 = sub_268DC7AE8();
      v22 = *v15;
      MEMORY[0x277D82BE0](*v15);
      sub_268F9B734();
      sub_268F9AC14(v21, &dword_268CBE000, v22, "SetAnnounceNotificationsHandler | CarPlay global feature is OFF. Enabling.", 74, 2);

      MEMORY[0x277D82BD8](v22);

      sub_268D416A4(1);
    }

    v20 = sub_268D41900(0);

    if ((v20 & 1) == 0)
    {
      v18 = sub_268F9B284();
      v16 = sub_268DC7AE8();
      v19 = *v16;
      MEMORY[0x277D82BE0](*v16);
      sub_268F9B734();
      sub_268F9AC14(v18, &dword_268CBE000, v19, "SetAnnounceNotificationsHandler | CarPlay feature switch is OFF. Enabling.", 74, 2);

      MEMORY[0x277D82BD8](v19);

      sub_268D41B68(1, 0);

      sub_268D409D0();
    }
  }

  MEMORY[0x277D82BE0](a1);

  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = v49;
  v17[4] = a2;
  v17[5] = a3;
  sub_268D40874(sub_268E03034, v17);
}

uint64_t sub_268DFF1CC(uint64_t a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5)
{
  v21 = a1;
  v37 = a1 & 1;
  v36[4] = a2;
  v36[3] = a3;
  v36[1] = a4;
  v36[2] = a5;
  v31 = sub_268F9B284();
  v5 = sub_268DC7AE8();
  v30 = *v5;
  MEMORY[0x277D82BE0](*v5);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 4;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_268CD9ADC;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_268CD9AE8;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_268CD9AF4;
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_268CD9B00;
  *(v28 + 24) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  sub_268F9B734();
  v29 = v6;

  *v29 = sub_268CD7600;
  v29[1] = v26;

  v29[2] = sub_268CD7600;
  v29[3] = v27;

  v29[4] = sub_268CD9B0C;
  v29[5] = v28;
  sub_268CD0F7C();

  if (os_log_type_enabled(v30, v31))
  {
    buf = sub_268F9B3A4();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v15 = sub_268CD5448(0, v13, v13);
    v16 = sub_268CD5448(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v36[0] = buf;
    v35 = v15;
    v34 = v16;
    sub_268CD549C(0, v36);
    sub_268CD549C(1, v36);
    v32 = sub_268CD7600;
    v33 = v26;
    sub_268CD54B0(&v32, v36, &v35, &v34);
    v32 = sub_268CD7600;
    v33 = v27;
    sub_268CD54B0(&v32, v36, &v35, &v34);
    v32 = sub_268CD9B0C;
    v33 = v28;
    sub_268CD54B0(&v32, v36, &v35, &v34);
    _os_log_impl(&dword_268CBE000, v30, v31, "SetAnnounceNotificationsHandler | CarPlay temporary disabled: %{BOOL}d.", buf, 8u);
    sub_268CD54FC(v15, 0, v13);
    sub_268CD54FC(v16, 0, MEMORY[0x277D84F70] + 8);
    sub_268F9B384();
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v30);
  v7 = sub_268DBE6F4();
  v9 = *v7;
  v10 = v7[1];
  v11 = *(v7 + 16);
  v12 = a3[24];

  sub_268DAAB84((v21 ^ 1) & 1, a2, v9, v10, v11, v12 & 1, a4, a5, sub_268E03670, a3, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268E03670, a3);
}

uint64_t sub_268DFF7B8(uint64_t a1, _BYTE *a2)
{
  v10 = a1;
  v26 = a1 & 1;
  v25[1] = a2;
  v20 = sub_268F9B284();
  v2 = sub_268DC7AE8();
  v19 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = 4;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_268E03698;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_268CD9AE8;
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_268CD9AF4;
  *(v14 + 24) = v13;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_268CD9B00;
  *(v17 + 24) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  sub_268F9B734();
  v18 = v3;

  *v18 = sub_268CD7600;
  v18[1] = v15;

  v18[2] = sub_268CD7600;
  v18[3] = v16;

  v18[4] = sub_268CD9B0C;
  v18[5] = v17;
  sub_268CD0F7C();

  if (os_log_type_enabled(v19, v20))
  {
    buf = sub_268F9B3A4();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v7 = sub_268CD5448(0, v5, v5);
    v8 = sub_268CD5448(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v25[0] = buf;
    v24 = v7;
    v23 = v8;
    sub_268CD549C(0, v25);
    sub_268CD549C(1, v25);
    v21 = sub_268CD7600;
    v22 = v15;
    sub_268CD54B0(&v21, v25, &v24, &v23);
    if (v9)
    {

      __break(1u);
    }

    else
    {
      v21 = sub_268CD7600;
      v22 = v16;
      sub_268CD54B0(&v21, v25, &v24, &v23);
      v21 = sub_268CD9B0C;
      v22 = v17;
      sub_268CD54B0(&v21, v25, &v24, &v23);
      _os_log_impl(&dword_268CBE000, v19, v20, "SetAnnounceNotificationsHandler | CarPlay calling temporarily disabled with %{BOOL}d.", buf, 8u);
      sub_268CD54FC(v7, 0, v5);
      sub_268CD54FC(v8, 0, MEMORY[0x277D84F70] + 8);
      sub_268F9B384();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v19);

  sub_268D407F4((v10 ^ 1) & 1);
}

uint64_t sub_268DFFD18(void *a1, void (*a2)(void), uint64_t a3)
{

  v6 = sub_268D41900(1);

  v3 = sub_268DBE6F4();
  v8 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 16);
  v11 = *(v5 + 24);

  sub_268DAAB84(v6 & 1, a1, v8, v9, v10, v11 & 1, a2, a3, sub_268E0304C, v5, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268E0304C, v5);
}

uint64_t sub_268DFFE44(char a1)
{

  sub_268D41B68(a1 & 1, 1);
}

uint64_t sub_268DFFEC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_268DFCAF8();
  v4 = *v2;
  v7 = v2[1];

  v8 = MEMORY[0x26D62DB50](v4, v7, a1, a2);

  return v8 & 1;
}

uint64_t sub_268DFFF40(void *a1)
{
  v32 = 0;
  v29 = 0;
  v33 = a1;
  v1 = sub_268DFCCB8();
  v21 = *v1;
  v22 = v1[1];

  v24 = [a1 settingMetadata];
  if (v24 && (v20 = [v24 targetDevice], *&v2 = MEMORY[0x277D82BD8](v24).n128_u64[0], v20))
  {
    v3 = [v20 deviceName];
    v19 = v3;
    if (v3)
    {
      *&v17 = sub_268F9AE24();
      *(&v17 + 1) = v4;
      MEMORY[0x277D82BD8](v19);
      v18 = v17;
    }

    else
    {
      v18 = 0uLL;
    }

    MEMORY[0x277D82BD8](v20);
    v16 = v18;
  }

  else
  {
    v16 = 0uLL;
  }

  v30[0] = v21;
  v30[1] = v22;
  v31 = v16;
  if (!v22)
  {
    if (!*(&v31 + 1))
    {
      sub_268CD9D30(v30);
      v15 = 1;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  sub_268D28874(v30, &v27);
  if (!*(&v31 + 1))
  {
    sub_268CD9D30(&v27);
LABEL_17:
    sub_268D28550(v30);
    v15 = 0;
    goto LABEL_19;
  }

  v26 = v27;
  v25 = v31;
  v14 = MEMORY[0x26D62DB50](v27, *(&v27 + 1), v31, *(&v31 + 1));
  sub_268CD9D30(&v25);
  sub_268CD9D30(&v26);
  sub_268CD9D30(v30);
  v15 = v14;
LABEL_19:

  v29 = v15 & 1;
  v12 = sub_268F9B284();
  v5 = sub_268DC7AE8();
  v13 = *v5;
  MEMORY[0x277D82BE0](*v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v6;
  v28 = v15 & 1;
  v9 = sub_268F9AE74();
  v10 = v7;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC14(v12, &dword_268CBE000, v13, "SetAnnounceNotificationsHandler device name is headphones: %@", 61, 2);

  MEMORY[0x277D82BD8](v13);
  return v15 & 1;
}