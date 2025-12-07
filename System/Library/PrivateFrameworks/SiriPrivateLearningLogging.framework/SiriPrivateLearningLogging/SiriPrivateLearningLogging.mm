uint64_t sub_268C37588()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_268C375C0()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_268C37610()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_268C37648()
{
  MEMORY[0x26D628C50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_268C37680()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268C376B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_268C37718()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_268C37750()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268C37790()
{
  MEMORY[0x26D628C50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_268C377D8()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id PLLoggingXPCServiceInterface()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287983320];
  v1 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:3];
  v3 = [v1 setWithArray:{v2, v5, v6}];
  [v0 setClasses:v3 forSelector:sel_storeInstrumentationWithEvents_completion_ argumentIndex:0 ofReply:0];

  return v0;
}

uint64_t sub_268C37AB8()
{
  v0 = sub_268C42B98();
  __swift_allocate_value_buffer(v0, qword_2802D32B8);
  __swift_project_value_buffer(v0, qword_2802D32B8);
  return sub_268C42B88();
}

uint64_t sub_268C37B38()
{
  v0 = sub_268C42B98();
  __swift_allocate_value_buffer(v0, qword_2802D32D0);
  __swift_project_value_buffer(v0, qword_2802D32D0);
  return sub_268C42B88();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_268C37C54()
{
  v0 = sub_268C42B98();
  __swift_allocate_value_buffer(v0, qword_2802D32E8);
  __swift_project_value_buffer(v0, qword_2802D32E8);
  return sub_268C42B88();
}

const char *SiriPLUSFeatureFlag.feature.getter()
{
  v1 = *v0;
  v2 = "Logging";
  v3 = "AnalyticsMaintenance";
  v4 = "AnalyticsEvents";
  if (v1 != 3)
  {
    v4 = "PICSRuntime";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "Analytics";
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t SiriPLUSFeatureFlag.hashValue.getter()
{
  v1 = *v0;
  sub_268C42EF8();
  MEMORY[0x26D628790](v1);
  return sub_268C42F18();
}

uint64_t sub_268C37E14()
{
  v1 = *v0;
  sub_268C42EF8();
  MEMORY[0x26D628790](v1);
  return sub_268C42F18();
}

uint64_t sub_268C37E88(uint64_t a1)
{
  v2 = *v1;
  sub_268C42EF8();
  MEMORY[0x26D628790](v2);
  return sub_268C42F18();
}

unint64_t sub_268C37ED0()
{
  result = qword_2802D30F0;
  if (!qword_2802D30F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D30F0);
  }

  return result;
}

const char *sub_268C37F38()
{
  v1 = *v0;
  v2 = "Logging";
  v3 = "AnalyticsMaintenance";
  v4 = "AnalyticsEvents";
  if (v1 != 3)
  {
    v4 = "PICSRuntime";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "Analytics";
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for SiriPLUSFeatureFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriPLUSFeatureFlag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_268C38124()
{
  type metadata accessor for SELFStoreFilter();
  result = sub_268C38154();
  qword_2802D3300 = result;
  return result;
}

uint64_t sub_268C38154()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_268C42BE8();
  v3 = [v1 objectForInfoDictionaryKey_];

  if (v3)
  {
    sub_268C42D88();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  sub_268C39558(v15, &v13);
  if (*(&v14 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3118, &qword_268C438C8);
    if (swift_dynamicCast())
    {
      v4 = v12;
      goto LABEL_13;
    }
  }

  else
  {
    sub_268C39610(&v13);
  }

  if (qword_2802D3000 != -1)
  {
    swift_once();
  }

  v5 = sub_268C42B98();
  __swift_project_value_buffer(v5, qword_2802D30F8);
  v6 = sub_268C42B78();
  v7 = sub_268C42D08();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_268C3E3FC(0xD000000000000017, 0x8000000268C43C70, &v13);
    _os_log_impl(&dword_268C36000, v6, v7, "Bundle info is missing %s, using an empty allow list", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D628C20](v9, -1, -1);
    MEMORY[0x26D628C20](v8, -1, -1);
  }

  v4 = sub_268C39AF4(MEMORY[0x277D84F90]);
LABEL_13:
  type metadata accessor for SELFStoreFilter();
  v10 = swift_allocObject();
  sub_268C383C4(v4);
  sub_268C39610(v15);
  return v10;
}

uint64_t sub_268C383C4(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v48 = v9;
  v49 = v8;
  while (v5)
  {
LABEL_10:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = v11 | (v7 << 6);
    if (*(*(a1 + 56) + v12) == 1)
    {
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];

      v16 = sub_268C42BE8();
      if (([v16 isEqualToString:@"UNKNOWN_EVENT"] & 1) == 0)
      {
        v24 = v14;
        if ([v16 isEqualToString:@"UEI_CLIENT_EVENT"])
        {
          v25 = 1;
LABEL_131:
          v47 = v25;
          v9 = v48;
          goto LABEL_243;
        }

        v9 = v48;
        if ([v16 isEqualToString:@"UEI_SERVER_EVENT"])
        {
          v26 = 2;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"DAILY_DEVICE_STATUS"])
        {
          v26 = 3;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"MT_CLIENT_EVENT"])
        {
          v26 = 4;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"PROACTIVE_EVENT_TRACKER"])
        {
          v26 = 5;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"ORDERED_ANY_EVENT"])
        {
          v26 = 6;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"PROVISIONAL_EVENT"])
        {
          v26 = 7;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"SIRI_UNDER_TEST_EVENT"])
        {
          v26 = 8;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"REQUEST_LINK_EVENT"])
        {
          v26 = 9;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"ABE_CLIENT_EVENT"])
        {
          v26 = 10;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"ABE_SERVER_EVENT"])
        {
          v26 = 11;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"FLOW_SERVER_EVENT"])
        {
          v26 = 12;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"FLOW_CLIENT_EVENT"])
        {
          v26 = 13;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"CAM_CLIENT_EVENT"])
        {
          v26 = 14;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"UNIFIED_SIRI_PERFORMANCE_EVENT"])
        {
          v26 = 15;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"GRR_CLIENT_EVENT"])
        {
          v26 = 16;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"DIM_CLIENT_EVENT"])
        {
          v26 = 17;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"NLX_CLIENT_EVENT"])
        {
          v26 = 18;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"ORCH_CLIENT_EVENT"])
        {
          v26 = 19;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"ASR_CLIENT_EVENT"])
        {
          v26 = 20;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"DATA_UPLOAD_EVENT"])
        {
          v26 = 21;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"IH_CLIENT_EVENT"])
        {
          v26 = 22;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"MH_CLIENT_EVENT"])
        {
          v26 = 23;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"TTS_CLIENT_EVENT"])
        {
          v26 = 24;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"CLP_CLIENT_EVENT"])
        {
          v26 = 25;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"RR_CLIENT_EVENT"])
        {
          v26 = 26;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"CNV_CLIENT_EVENT"])
        {
          v26 = 27;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"ANC_CLIENT_EVENT"])
        {
          v26 = 28;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"ANC_SERVER_EVENT"])
        {
          v26 = 29;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"DELETE_HISTORY_TRIGGER_SERVER_EVENT"])
        {
          v26 = 30;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"HAL_CLIENT_EVENT"])
        {
          v26 = 31;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"NET_CLIENT_EVENT"])
        {
          v26 = 32;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"SAD_CLIENT_EVENT"])
        {
          v26 = 33;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"DFI_DATA_EVENT"])
        {
          v26 = 34;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"SERVER_ORDERED_ANY_EVENT"])
        {
          v26 = 35;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"SERVER_REQUEST_LINK_EVENT"])
        {
          v26 = 36;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"DODML_CLIENT_EVENT"])
        {
          v26 = 37;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"PLUS_CLIENT_EVENT"])
        {
          v26 = 38;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"EXP_SEARCH_CLIENT_EVENT"])
        {
          v26 = 39;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"EXP_SIRI_CLIENT_EVENT"])
        {
          v26 = 40;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"SRST_CLIENT_EVENT"])
        {
          v26 = 41;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"POMMES_CLIENT_EVENT"])
        {
          v26 = 42;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"MT_CLIENT_EVENT_V2"])
        {
          v26 = 43;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"CDA_CLIENT_EVENT"])
        {
          v26 = 44;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"MWT_CLIENT_EVENT"])
        {
          v26 = 45;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"HOME_CLIENT_EVENT"])
        {
          v26 = 46;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"OPT_IN_CHANGELOG_CLIENT_EVENT"])
        {
          v26 = 47;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"OPT_IN_PROPAGATION_CLIENT_EVENT"])
        {
          v26 = 48;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"PEGASUS_SERVER_EVENT"])
        {
          v26 = 49;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"RSS_CLIENT_EVENT"])
        {
          v26 = 50;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"EXP_SIRI_SERVER_EVENT"])
        {
          v26 = 51;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"SUGGESTIONS_CLIENT_EVENT"])
        {
          v26 = 52;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"FLOW_LINK_CLIENT_EVENT"])
        {
          v26 = 53;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"RF_CLIENT_EVENT"])
        {
          v26 = 54;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"SIRI_SERVER_ORDERED_ANY_EVENT"])
        {
          v26 = 55;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"SIC_CLIENT_EVENT"])
        {
          v26 = 56;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"INFERENCE_CLIENT_EVENT"])
        {
          v26 = 57;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"CAAR_CLIENT_EVENT"])
        {
          v26 = 58;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"RFG_CLIENT_EVENT"])
        {
          v26 = 59;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"SMT_CLIENT_EVENT"])
        {
          v26 = 60;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"SC_CLIENT_EVENT"])
        {
          v26 = 61;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"SIRI_SETUP_CLIENT_EVENT"])
        {
          v26 = 62;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"OPT_IN_CLIENT_EVENT"])
        {
          v26 = 63;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"LOG_REDACTION_CLIENT_EVENT"])
        {
          v26 = 64;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"PSE_CLIENT_EVENT"])
        {
          v26 = 65;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"GROUPED_MESSAGES_CLIENT_EVENT"])
        {
          v26 = 66;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"ACTIVATION_CLIENT_EVENT"])
        {
          v26 = 67;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"IA_CLIENT_EVENT"])
        {
          v26 = 68;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"NLG_CLIENT_EVENT"])
        {
          v26 = 69;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"TTM_CLIENT_EVENT"])
        {
          v26 = 70;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"TRP_REQUEST_LINK_CLIENT_EVENT"])
        {
          v26 = 71;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"ODM_SIRI_CLIENT_EVENT"])
        {
          v26 = 72;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"IDENTITY_CLIENT_EVENT"])
        {
          v26 = 73;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"HOMEKIT_CLIENT_EVENT"])
        {
          v26 = 74;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"READ_CLIENT_EVENT"])
        {
          v26 = 75;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"OPAQUE_CLIENT_EVENT"])
        {
          v26 = 76;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"GROUPED_MESSAGES_SERVER_EVENT"])
        {
          v26 = 77;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"GROUPED_MESSAGES_GROUPING"])
        {
          v26 = 78;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"GROUPED_MESSAGES_PRODUCER_METADATA"])
        {
          v26 = 79;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"RTS_CLIENT_EVENT"])
        {
          v26 = 80;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"ODD_SIRI_CLIENT_EVENT"])
        {
          v26 = 81;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"SESSION_EVENT"])
        {
          v26 = 82;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"SESSION_BYTE_EVENT"])
        {
          v26 = 83;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"ODBATCH_CLIENT_EVENT"])
        {
          v26 = 84;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"NLROUTER_CLIENT_EVENT"])
        {
          v26 = 85;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"PFA_CLIENT_EVENT"])
        {
          v26 = 86;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"SPEECH_DONATION_EVENT"])
        {
          v26 = 87;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"SR_CLIENT_EVENT"])
        {
          v26 = 88;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"IFT_CLIENT_EVENT"])
        {
          v26 = 89;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"CM_CLIENT_EVENT"])
        {
          v26 = 90;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"PNR_ON_DEVICE_CLIENT_EVENT"])
        {
          v26 = 91;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"JR_CLIENT_EVENT"])
        {
          v26 = 92;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"RG_CLIENT_EVENT"])
        {
          v26 = 93;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"PR_CLIENT_EVENT"])
        {
          v26 = 94;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"QUERY_DECORATION_CLIENT_EVENT"])
        {
          v26 = 95;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"PG_CLIENT_EVENT"])
        {
          v26 = 96;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"DIALOGENGINE_CLIENT_EVENT"])
        {
          v26 = 97;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"UAF_CLIENT_EVENT"])
        {
          v26 = 98;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"IF_PLATFORM_CLIENT_EVENT"])
        {
          v26 = 99;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"IF_PLATFORM_REQUEST_CLIENT_EVENT"])
        {
          v26 = 100;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"FL_CLIENT_EVENT"])
        {
          v26 = 101;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"SEARCH_TOOL_CLIENT_EVENT"])
        {
          v26 = 102;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"ODSAMPLE_CLIENT_EVENT"])
        {
          v26 = 103;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"GAT_CLIENT_EVENT"])
        {
          v26 = 104;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"EXECUTOR_CLIENT_EVENT"])
        {
          v26 = 106;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"ODFUNNEL_SIRI_CLIENT_EVENT"])
        {
          v26 = 107;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"GMS_CLIENT_EVENT"])
        {
          v26 = 108;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"CLOUDKIT_CLIENT_EVENT"])
        {
          v26 = 109;
          goto LABEL_242;
        }

        if ([v16 isEqualToString:@"ASR_SPEECH_PROFILE_CLIENT_EVENT"])
        {
          v26 = 112;
LABEL_242:
          v47 = v26;
LABEL_243:

          v22 = v24;
          goto LABEL_244;
        }

        v14 = v24;
        if ([v16 isEqualToString:@"ASV_CLIENT_EVENT"])
        {
          v25 = 113;
          goto LABEL_131;
        }
      }

      v17 = @"UNKNOWN_EVENT";
      v18 = sub_268C42BF8();
      v20 = v19;

      v21 = v14 == v18 && v15 == v20;
      v22 = v14;
      if (v21)
      {

        v47 = 0;
        goto LABEL_133;
      }

      v23 = sub_268C42EC8();

      if (v23)
      {
        v47 = 0;
        v22 = v14;
LABEL_133:
        v9 = v48;
LABEL_244:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_268C39844(0, *(v9 + 2) + 1, 1, v9);
        }

        v28 = *(v9 + 2);
        v27 = *(v9 + 3);
        if (v28 >= v27 >> 1)
        {
          v9 = sub_268C39844((v27 > 1), v28 + 1, 1, v9);
        }

        *(v9 + 2) = v28 + 1;
        v29 = &v9[16 * v28];
        *(v29 + 4) = v22;
        *(v29 + 5) = v15;
        v30 = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_268C39740(0, *(v49 + 16) + 1, 1, v49);
        }

        v32 = *(v30 + 2);
        v31 = *(v30 + 3);
        v33 = v30;
        if (v32 >= v31 >> 1)
        {
          v33 = sub_268C39740((v31 > 1), v32 + 1, 1, v30);
        }

        *(v33 + 2) = v32 + 1;
        v8 = v33;
        *&v33[4 * v32 + 32] = v47;
        goto LABEL_4;
      }

      v9 = v48;
      v8 = v49;
    }
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_259;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v7;
    if (v5)
    {
      v7 = v10;
      goto LABEL_10;
    }
  }

  if (qword_2802D2FF0 == -1)
  {
    goto LABEL_254;
  }

LABEL_259:
  swift_once();
LABEL_254:
  v34 = sub_268C42B98();
  __swift_project_value_buffer(v34, qword_2802D32E8);

  v35 = sub_268C42B78();
  v36 = sub_268C42CF8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v50 = v38;
    *v37 = 134218242;
    *(v37 + 4) = *(v9 + 2);

    *(v37 + 12) = 2080;

    v40 = MEMORY[0x26D628540](v39, MEMORY[0x277D837D0]);
    v42 = v41;

    v43 = sub_268C3E3FC(v40, v42, &v50);

    *(v37 + 14) = v43;
    v8 = v49;
    _os_log_impl(&dword_268C36000, v35, v36, "SELFStoreFilter is configured to allow %ld event type(s): %s", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x26D628C20](v38, -1, -1);
    MEMORY[0x26D628C20](v37, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v44 = sub_268C39A80(v8);

  *(v46 + 16) = v44;
  return v46;
}

BOOL sub_268C3945C(unsigned int a1)
{
  v2 = *(v1 + 16);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x26D628770](*(v2 + 40), a1, 4);
  v5 = -1 << *(v2 + 32);
  v6 = v4 & ~v5;
  if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(v2 + 48) + 4 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_268C394FC()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_268C39558(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3110, &qword_268C438C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_268C39610(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3110, &qword_268C438C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268C39678()
{
  v0 = sub_268C42B98();
  __swift_allocate_value_buffer(v0, qword_2802D30F8);
  v1 = __swift_project_value_buffer(v0, qword_2802D30F8);
  if (qword_2802D2FF0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2802D32E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_268C39740(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3120, &qword_268C438D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_268C39844(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3128, &qword_268C438D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_268C39950(uint64_t a1, uint64_t a2)
{
  sub_268C42EF8();
  sub_268C42C28();
  v4 = sub_268C42F18();

  return sub_268C399C8(a1, a2, v4);
}

unint64_t sub_268C399C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_268C42EC8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_268C39A80(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D628550](v2, MEMORY[0x277D849A8], MEMORY[0x277D849B8]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_268C3FDA8(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_268C39AF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3130, &qword_268C438E0);
    v3 = sub_268C42EA8();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_268C39950(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id sub_268C39C40()
{
  result = [objc_allocWithZone(PLLoggingServiceStore) init];
  qword_2802D3138 = result;
  return result;
}

id static PLLoggingServiceStore.sharedInstance.getter()
{
  if (qword_2802D3008 != -1)
  {
    swift_once();
  }

  v1 = qword_2802D3138;

  return v1;
}

uint64_t PLLoggingServiceStore.storeInstrumentation(events:completion:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_2802D3028 != -1)
  {
    v4 = a1;
    v5 = a2;
    v6 = a3;
    swift_once();
    a1 = v4;
    a2 = v5;
    a3 = v6;
  }

  return sub_268C42058(a1, a2, a3);
}

unint64_t sub_268C39E9C()
{
  result = qword_2802D3140;
  if (!qword_2802D3140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802D3140);
  }

  return result;
}

uint64_t sub_268C39EE8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_268C39F04(void *a1)
{
  v29 = a1;
  v27 = sub_268C42D28();
  v1 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_268C42D18();
  MEMORY[0x28223BE20](v4);
  v5 = sub_268C42BD8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = sub_268C3B6B8(0, &qword_2802D3290, 0x277D85C78);
  v26[1] = "v16@?0@NSError8";
  v26[2] = v7;
  v8 = v6;
  sub_268C42BB8();
  aBlock = MEMORY[0x277D84F90];
  sub_268C3B700(&unk_2802D3190, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D32A0, &qword_268C43910);
  sub_268C3B748(&unk_2802D31A0, &qword_2802D32A0, &qword_268C43910);
  sub_268C42D98();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v27);
  v9 = sub_268C42D48();
  [v8 setSerialQueue_];

  v10 = PLLoggingXPCServiceInterface();
  v11 = v29;
  [v29 setRemoteObjectInterface_];

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v14 = v28;
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  v34 = sub_268C3B79C;
  v35 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_268C3ADD8;
  v33 = &block_descriptor_18;
  v15 = _Block_copy(&aBlock);

  [v11 setInvalidationHandler_];
  _Block_release(v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;
  v34 = sub_268C3B7D4;
  v35 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_268C3ADD8;
  v33 = &block_descriptor_25;
  v18 = _Block_copy(&aBlock);

  [v11 setInterruptionHandler_];
  _Block_release(v18);
  v19 = [v8 serialQueue];
  [v11 _setQueue_];

  [v8 setClientConnection_];
  v20 = [v8 clientConnection];

  [v20 resume];
  if (qword_2802D2FE0 != -1)
  {
    swift_once();
  }

  v21 = sub_268C42B98();
  __swift_project_value_buffer(v21, qword_2802D32B8);
  v22 = sub_268C42B78();
  v23 = sub_268C42CF8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_268C36000, v22, v23, "PLLoggingServiceClient initialized", v24, 2u);
    MEMORY[0x26D628C20](v24, -1, -1);
  }

  return v8;
}

uint64_t sub_268C3A4BC()
{
  v1 = sub_268C42BA8();
  v14 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_268C42BD8();
  v4 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 serialQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_268C3B80C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268C3ADD8;
  aBlock[3] = &block_descriptor_31;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  sub_268C42BC8();
  v15 = MEMORY[0x277D84F90];
  sub_268C3B700(&qword_2802D3150, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3158, &qword_268C43A90);
  sub_268C3B748(&unk_2802D3160, &qword_2802D3158, &qword_268C43A90);
  sub_268C42D98();
  MEMORY[0x26D6285C0](0, v6, v3, v9);
  _Block_release(v9);

  (*(v14 + 8))(v3, v1);
  (*(v4 + 8))(v6, v13);
}

void sub_268C3A78C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), const char *a4)
{
  if (qword_2802D2FE0 != -1)
  {
    swift_once();
  }

  v6 = sub_268C42B98();
  __swift_project_value_buffer(v6, qword_2802D32B8);
  v7 = sub_268C42B78();
  v8 = a3();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_268C36000, v7, v8, a4, v9, 2u);
    MEMORY[0x26D628C20](v9, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_268C3A4BC();
  }
}

uint64_t PLLoggingServiceClient.storeInstrumentation(events:completion:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_268C42BA8();
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268C42BD8();
  v24 = *(v11 - 8);
  v25 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802D2FE0 != -1)
  {
    swift_once();
  }

  v14 = sub_268C42B98();
  __swift_project_value_buffer(v14, qword_2802D32B8);

  v15 = sub_268C42B78();
  v16 = sub_268C42CF8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    if (a1 >> 62)
    {
      v18 = sub_268C42DD8();
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v17 + 4) = v18;

    _os_log_impl(&dword_268C36000, v15, v16, "storeInstrumentation called with %ld event(s)", v17, 0xCu);
    MEMORY[0x26D628C20](v17, -1, -1);
  }

  else
  {
  }

  v19 = [v4 serialQueue];
  v20 = swift_allocObject();
  v20[2] = v4;
  v20[3] = a1;
  v20[4] = a2;
  v20[5] = a3;
  aBlock[4] = sub_268C3B384;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268C3ADD8;
  aBlock[3] = &block_descriptor;
  v21 = _Block_copy(aBlock);

  v22 = v4;
  sub_268C3B3F8(a2, a3);
  sub_268C42BC8();
  v27 = MEMORY[0x277D84F90];
  sub_268C3B700(&qword_2802D3150, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3158, &qword_268C43A90);
  sub_268C3B748(&unk_2802D3160, &qword_2802D3158, &qword_268C43A90);
  sub_268C42D98();
  MEMORY[0x26D6285C0](0, v13, v10, v21);
  _Block_release(v21);

  (*(v26 + 8))(v10, v8);
  (*(v24 + 8))(v13, v25);
}

id sub_268C3ACA8()
{
  result = [v0 clientConnection];
  if (result)
  {
    v2 = result;
    aBlock[4] = sub_268C3AF00;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_268C3B0A4;
    aBlock[3] = &block_descriptor_9;
    v3 = _Block_copy(aBlock);
    v4 = [v2 remoteObjectProxyWithErrorHandler_];
    _Block_release(v3);

    sub_268C42D88();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3170, &qword_268C43900);
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_268C3ADD8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_268C3AF00(void *a1)
{
  if (qword_2802D2FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_268C42B98();
  __swift_project_value_buffer(v2, qword_2802D32B8);
  v3 = a1;
  oslog = sub_268C42B78();
  v4 = sub_268C42D08();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3178, &qword_268C43908);
    v8 = sub_268C42C08();
    v10 = sub_268C3E3FC(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_268C36000, oslog, v4, "Error communicating with PLLoggingService XPC %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x26D628C20](v6, -1, -1);
    MEMORY[0x26D628C20](v5, -1, -1);
  }

  else
  {
  }
}

void sub_268C3B0A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_268C3B10C(void *a1)
{
  v2 = [a1 clientConnection];
  if (v2)
  {
    v3 = v2;
    [v2 setExportedObject_];
  }

  v4 = [a1 clientConnection];
  [v4 invalidate];

  return [a1 setClientConnection_];
}

uint64_t sub_268C3B1AC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_268C3B1F8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_268C3B228(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

_BYTE **sub_268C3B248(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

id _sSo22PLLoggingServiceClientC26SiriPrivateLearningLoggingE04makeC0AByFZ_0()
{
  if (qword_2802D2FE0 != -1)
  {
    swift_once();
  }

  v0 = sub_268C42B98();
  __swift_project_value_buffer(v0, qword_2802D32B8);
  v1 = sub_268C42B78();
  v2 = sub_268C42CF8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_268C36000, v1, v2, "makeClient: creating a new PLLoggingServiceClient", v3, 2u);
    MEMORY[0x26D628C20](v3, -1, -1);
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.siri.pl.logging-service" options:0];
  sub_268C3B6B8(0, &unk_2802D3180, off_279C455F0);
  return sub_268C39F04(v4);
}

uint64_t sub_268C3B384()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = sub_268C3ACA8();
  sub_268C3B450(v4, v1, v2, v3);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268C3B3F8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_268C3B450(void *a1, unint64_t a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    sub_268C3B6B8(0, &qword_2802D3140, 0x277D5A790);
    swift_unknownObjectRetain();
    v8 = sub_268C42C88();
    if (a3)
    {
      aBlock[4] = a3;
      aBlock[5] = a4;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_268C3ADD8;
      aBlock[3] = &block_descriptor_6;
      a3 = _Block_copy(aBlock);
    }

    [a1 storeInstrumentationWithEvents:v8 completion:a3];
    _Block_release(a3);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_2802D2FE0 != -1)
    {
      swift_once();
    }

    v9 = sub_268C42B98();
    __swift_project_value_buffer(v9, qword_2802D32B8);

    oslog = sub_268C42B78();
    v10 = sub_268C42D08();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      if (a2 >> 62)
      {
        v12 = sub_268C42DD8();
      }

      else
      {
        v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v11 + 4) = v12;

      _os_log_impl(&dword_268C36000, oslog, v10, "Cannot store %ld event(s), unable to obtain a connection", v11, 0xCu);
      MEMORY[0x26D628C20](v11, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_268C3B6B8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_268C3B700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268C3B748(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268C3B858()
{
  v0 = sub_268C42AE8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268C42AA8();
  type metadata accessor for _FlatFileStore(0);
  v3 = swift_allocObject();
  result = _FlatFileStore.init(path:)(v2);
  qword_280F8E858 = v3;
  return result;
}

uint64_t _FlatFileStore.__allocating_init()()
{
  v0 = sub_268C42AE8();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268C42AA8();
  type metadata accessor for _FlatFileStore(0);
  v3 = swift_allocObject();
  _FlatFileStore.init(path:)(v2);
  return v3;
}

uint64_t static _FlatFileStore.shared.getter()
{
  if (qword_280F8E850 != -1)
  {
    swift_once();
  }
}

uint64_t _FlatFileStore.__allocating_init(path:)(char *a1)
{
  v2 = swift_allocObject();
  _FlatFileStore.init(path:)(a1);
  return v2;
}

uint64_t type metadata accessor for _FlatFileStore(uint64_t a1)
{
  result = qword_280F8E868;
  if (!qword_280F8E868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _FlatFileStore.init(path:)(char *a1)
{
  v2 = v1;
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = sub_268C42AE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v5 + 16);
  v31(v1 + OBJC_IVAR____TtC26SiriPrivateLearningLogging14_FlatFileStore_path, a1, v4);
  v8 = [objc_opt_self() defaultManager];
  v9 = OBJC_IVAR____TtC26SiriPrivateLearningLogging14_FlatFileStore_path;
  v10 = sub_268C42AB8();
  v32[0] = 0;
  v11 = [v8 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:v32];

  if (v11)
  {
    v12 = *(v5 + 8);
    v13 = v32[0];
    v12(a1, v4);
  }

  else
  {
    v30 = a1;
    v14 = v32[0];
    v15 = sub_268C42A88();

    swift_willThrow();
    if (qword_2802D2FF0 != -1)
    {
      swift_once();
    }

    v16 = sub_268C42B98();
    __swift_project_value_buffer(v16, qword_2802D32E8);

    v17 = sub_268C42B78();
    v18 = sub_268C42D08();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      HIDWORD(v29) = v18;
      v20 = v19;
      v21 = swift_slowAlloc();
      v32[0] = v21;
      *v20 = 136315138;
      v31(v7, (v2 + v9), v4);
      sub_268C3EC40(&qword_2802D31B0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v22 = v17;
      v23 = sub_268C42EB8();
      v31 = v15;
      v25 = v24;
      v26 = *(v5 + 8);
      v26(v7, v4);
      v27 = sub_268C3E3FC(v23, v25, v32);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_268C36000, v22, BYTE4(v29), "Unable to create directory: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x26D628C20](v21, -1, -1);
      MEMORY[0x26D628C20](v20, -1, -1);

      v26(v30, v4);
    }

    else
    {

      (*(v5 + 8))(v30, v4);
    }
  }

  return v2;
}

void sub_268C3BE68(void **a1, uint64_t a2)
{
  v99 = a2;
  v102 = sub_268C42AE8();
  v104 = *(v102 - 8);
  v3 = MEMORY[0x28223BE20](v102);
  v5 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v100 = &v96 - v7;
  MEMORY[0x28223BE20](v6);
  v103 = &v96 - v8;
  v98 = sub_268C42B68();
  v9 = *(v98 - 1);
  MEMORY[0x28223BE20](v98);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_268C42B38();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = sub_268C3E298(v16);
  if (v17)
  {
    v18 = v17;
    v19 = [v17 anyEventType];
  }

  else
  {
    v19 = [v16 anyEventType];
  }

  v97 = v5;
  if (v19 > 0x71)
  {
    v20 = @"UNKNOWN_EVENT";
    v21 = @"UNKNOWN_EVENT";
  }

  else
  {
    v20 = off_279C45788[v19];
    v21 = off_279C45B18[v19];
  }

  v101 = v16;
  v22 = v20;
  v23 = v21;
  v105 = sub_268C42BF8();
  v25 = v24;

  if (qword_2802D2FF8 != -1)
  {
    swift_once();
  }

  if (sub_268C3945C(v19))
  {
    sub_268C42B28();
    sub_268C42B18();
    v27 = v26;
    v28 = v26;
    (*(v13 + 8))(v15, v12);
    if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v27 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v27 < 9.22337204e18)
      {
        v107[0] = v27;
        v29 = sub_268C42EB8();
        v31 = v30;
        v107[0] = v105;
        v107[1] = v25;

        MEMORY[0x26D6284D0](95, 0xE100000000000000);
        MEMORY[0x26D6284D0](v29, v31);

        MEMORY[0x26D6284D0](95, 0xE100000000000000);
        sub_268C42B58();
        v32 = sub_268C42B48();
        v34 = v33;
        (*(v9 + 8))(v11, v98);
        v36 = sub_268C3ED70(4, v32, v34, v35);
        v38 = v37;
        v40 = v39;
        v42 = v41;

        v43 = MEMORY[0x26D6284A0](v36, v38, v40, v42);
        v45 = v44;

        MEMORY[0x26D6284D0](v43, v45);

        MEMORY[0x26D6284D0](6451246, 0xE300000000000000);
        v11 = v103;
        sub_268C42AC8();

        if (qword_2802D2FF0 == -1)
        {
LABEL_14:
          v46 = sub_268C42B98();
          v47 = __swift_project_value_buffer(v46, qword_2802D32E8);
          v48 = v104;
          v49 = v100;
          v50 = v102;
          v98 = *(v104 + 16);
          v99 = v104 + 16;
          v98(v100, v11, v102);

          v51 = sub_268C42B78();
          v52 = sub_268C42CF8();

          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v96 = v47;
            v54 = v48;
            v55 = v53;
            v56 = swift_slowAlloc();
            v107[0] = v56;
            *v55 = 136315394;
            v57 = sub_268C3E3FC(v105, v25, v107);

            *(v55 + 4) = v57;
            *(v55 + 12) = 2080;
            v58 = sub_268C42AD8();
            v59 = v49;
            v61 = v60;
            v62 = *(v54 + 8);
            v62(v59, v50);
            v63 = sub_268C3E3FC(v58, v61, v107);

            *(v55 + 14) = v63;
            _os_log_impl(&dword_268C36000, v51, v52, "Storing an event of type=%s to path=%s", v55, 0x16u);
            swift_arrayDestroy();
            v64 = v56;
            v11 = v103;
            MEMORY[0x26D628C20](v64, -1, -1);
            MEMORY[0x26D628C20](v55, -1, -1);
          }

          else
          {

            v62 = *(v48 + 8);
            v62(v49, v50);
          }

          v71 = v50;
          v72 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D31D8, &unk_268C43A00);
          v73 = swift_allocObject();
          *(v73 + 16) = xmmword_268C43920;
          *(v73 + 56) = sub_268C39E9C();
          v74 = v101;
          *(v73 + 32) = v101;
          v75 = v74;
          v76 = sub_268C42C88();

          sub_268C42AD8();
          v77 = sub_268C42BE8();

          v78 = [v72 writeProtoBuffers:v76 toFile:v77];

          if (v78)
          {
            v79 = v97;
            v98(v97, v11, v50);
            v80 = v78;
            v81 = sub_268C42B78();
            v82 = v11;
            v83 = sub_268C42D08();

            if (os_log_type_enabled(v81, v83))
            {
              v84 = swift_slowAlloc();
              v85 = v71;
              v86 = swift_slowAlloc();
              v107[0] = v86;
              *v84 = 136315394;
              v87 = sub_268C42AD8();
              v88 = v79;
              v90 = v89;
              v62(v88, v85);
              v91 = sub_268C3E3FC(v87, v90, v107);

              *(v84 + 4) = v91;
              *(v84 + 12) = 2080;
              v106 = v80;
              v92 = v80;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3178, &qword_268C43908);
              v93 = sub_268C42C08();
              v95 = sub_268C3E3FC(v93, v94, v107);

              *(v84 + 14) = v95;
              _os_log_impl(&dword_268C36000, v81, v83, "Failed to write an event to path=%s, error=%s", v84, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x26D628C20](v86, -1, -1);
              MEMORY[0x26D628C20](v84, -1, -1);

              v62(v103, v102);
            }

            else
            {

              v62(v79, v71);
              v62(v82, v71);
            }
          }

          else
          {
            v62(v11, v50);
          }

          return;
        }

LABEL_31:
        swift_once();
        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (qword_2802D2FF0 != -1)
  {
LABEL_28:
    swift_once();
  }

  v65 = sub_268C42B98();
  __swift_project_value_buffer(v65, qword_2802D32E8);

  v66 = sub_268C42B78();
  v67 = sub_268C42CF8();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v107[0] = v69;
    *v68 = 136315138;
    v70 = sub_268C3E3FC(v105, v25, v107);

    *(v68 + 4) = v70;
    _os_log_impl(&dword_268C36000, v66, v67, "Dropping an event of type=%s: not allowed", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x26D628C20](v69, -1, -1);
    MEMORY[0x26D628C20](v68, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_268C3C8CC()
{
  v1 = sub_268C42AE8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC26SiriPrivateLearningLogging14_FlatFileStore_path, v1);
  v5 = [objc_opt_self() defaultManager];
  sub_268C42AD8();
  v6 = sub_268C42BE8();

  v7 = [v5 enumeratorAtPath_];

  if (v7)
  {
    MEMORY[0x28223BE20](v8);
    *&v28[-16] = v4;
    v9 = sub_268C3D69C(sub_268C3EA2C, &v28[-32]);
    v10 = v9;
    if (v9 >> 62)
    {
      if (!sub_268C42DD8())
      {
        goto LABEL_4;
      }
    }

    else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if (qword_2802D2FF0 != -1)
      {
        swift_once();
      }

      v11 = sub_268C42B98();
      __swift_project_value_buffer(v11, qword_2802D32E8);

      v12 = sub_268C42B78();
      v13 = sub_268C42CF8();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v30;
        *v14 = 136315138;
        sub_268C3EC40(&qword_2802D31B0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v29 = v13;
        v15 = sub_268C42EB8();
        v17 = sub_268C3E3FC(v15, v16, &v31);

        *(v14 + 4) = v17;
        _os_log_impl(&dword_268C36000, v12, v29, "No events found in directory: %s", v14, 0xCu);
        v18 = v30;
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x26D628C20](v18, -1, -1);
        MEMORY[0x26D628C20](v14, -1, -1);
      }
    }

    goto LABEL_15;
  }

  if (qword_2802D2FF0 != -1)
  {
    swift_once();
  }

  v19 = sub_268C42B98();
  __swift_project_value_buffer(v19, qword_2802D32E8);

  v20 = sub_268C42B78();
  v21 = sub_268C42D08();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31 = v23;
    *v22 = 136315138;
    sub_268C3EC40(&qword_2802D31B0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v24 = sub_268C42EB8();
    v26 = sub_268C3E3FC(v24, v25, &v31);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_268C36000, v20, v21, "Unable to reference directory: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x26D628C20](v23, -1, -1);
    MEMORY[0x26D628C20](v22, -1, -1);
  }

  v10 = MEMORY[0x277D84F90];
LABEL_15:
  (*(v2 + 8))(v4, v1);
  return v10;
}

void sub_268C3CD84(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_268C42AE8();
  v6 = *(v5 - 1);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v59 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v59 - v13;
  sub_268C3ECFC(a1, &v70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v64 = v6;
  v65 = a2;
  v66 = v14;
  if ((sub_268C42C68() & 1) == 0)
  {

    a2 = v65;
LABEL_9:
    if (qword_2802D2FF0 != -1)
    {
      swift_once();
    }

    v34 = sub_268C42B98();
    __swift_project_value_buffer(v34, qword_2802D32E8);
    sub_268C3ECFC(a1, &v70);
    v35 = sub_268C42B78();
    v36 = sub_268C42CF8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v72 = v38;
      *v37 = 136315138;
      sub_268C3ECFC(&v70, &v69);
      if (swift_dynamicCast())
      {
        v40 = v67;
        v39 = v68;
      }

      else
      {
        v39 = 0x8000000268C44530;
        v40 = 0xD00000000000001DLL;
      }

      __swift_destroy_boxed_opaque_existential_0(&v70);
      v41 = sub_268C3E3FC(v40, v39, &v72);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_268C36000, v35, v36, "Unexpected file extension (expected .pb) from file: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x26D628C20](v38, -1, -1);
      MEMORY[0x26D628C20](v37, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(&v70);
    }

    goto LABEL_21;
  }

  sub_268C42AC8();

  sub_268C3D564(&v69, &v70);
  if (v2)
  {
    v15 = v69;
    v16 = v5;
    if (qword_2802D2FF0 != -1)
    {
      swift_once();
    }

    v17 = sub_268C42B98();
    __swift_project_value_buffer(v17, qword_2802D32E8);
    v18 = v64;
    v19 = v66;
    (*(v64 + 16))(v9, v66, v5);
    sub_268C3ED58(v15);
    v20 = sub_268C42B78();
    v21 = sub_268C42D08();
    sub_268C3ED64(v15);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v69 = v62;
      *v22 = 136315394;
      v61 = v21;
      v23 = sub_268C42AD8();
      v63 = v5;
      v25 = v24;
      v26 = *(v18 + 8);
      v26(v9, v5);
      v27 = v26;
      v28 = sub_268C3E3FC(v23, v25, &v69);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2080;
      v70 = v15;
      v71 = 1;
      sub_268C3ED58(v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D31D0, &qword_268C439F8);
      v29 = sub_268C42C08();
      v31 = sub_268C3E3FC(v29, v30, &v69);
      v16 = v63;
      v19 = v66;

      *(v22 + 14) = v31;
      v32 = v27;
      _os_log_impl(&dword_268C36000, v20, v61, "Failed to deserialise SISchemaAnyEvent instance(s) from file=%s, result=%s", v22, 0x16u);
      v33 = v62;
      swift_arrayDestroy();
      MEMORY[0x26D628C20](v33, -1, -1);
      MEMORY[0x26D628C20](v22, -1, -1);
    }

    else
    {

      v32 = *(v18 + 8);
      v32(v9, v5);
    }

    a2 = v65;
    sub_268C3ED64(v15);
    v32(v19, v16);
LABEL_21:
    v44 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v42 = v70;
  v70 = 0;
  sub_268C39E9C();
  v43 = v42;
  sub_268C42C98();
  sub_268C3ED64(v42);
  v44 = v70;
  a2 = v65;
  if (v70)
  {
    sub_268C3ED64(v42);
    (*(v64 + 8))(v66, v5);
  }

  else
  {
    v45 = v66;
    if (qword_2802D2FF0 != -1)
    {
      swift_once();
    }

    v46 = sub_268C42B98();
    __swift_project_value_buffer(v46, qword_2802D32E8);
    v47 = v64;
    (*(v64 + 16))(v12, v45, v5);
    v48 = sub_268C42B78();
    v49 = sub_268C42D08();
    v50 = v5;
    if (os_log_type_enabled(v48, v49))
    {
      v51 = swift_slowAlloc();
      v62 = v51;
      v63 = swift_slowAlloc();
      v70 = v63;
      *v51 = 136315138;
      v52 = v50;
      v60 = sub_268C42AD8();
      v54 = v53;
      v61 = v49;
      v55 = *(v47 + 8);
      v55(v12, v52);
      v56 = sub_268C3E3FC(v60, v54, &v70);
      v50 = v52;
      v45 = v66;

      v57 = v62;
      *(v62 + 4) = v56;
      _os_log_impl(&dword_268C36000, v48, v61, "Failed to deserialise [SISchemaAnyEvent] array from file=%s)", v57, 0xCu);
      v58 = v63;
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x26D628C20](v58, -1, -1);
      MEMORY[0x26D628C20](v57, -1, -1);
    }

    else
    {

      v55 = *(v47 + 8);
      v55(v12, v5);
    }

    sub_268C3ED64(v42);
    v55(v45, v50);
    v44 = MEMORY[0x277D84F90];
    a2 = v65;
  }

LABEL_22:
  *a2 = v44;
}

id sub_268C3D564@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  sub_268C39E9C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_268C42AD8();
  v6 = sub_268C42BE8();

  v12[0] = 0;
  v7 = [v4 readProtoBuffersOfClass:ObjCClassFromMetadata fromFile:v6 error:v12];

  v8 = v12[0];
  if (v7)
  {
    *a2 = v7;
    return v8;
  }

  else
  {
    v10 = v12[0];
    v11 = sub_268C42A88();

    result = swift_willThrow();
    *a1 = v11;
  }

  return result;
}

uint64_t sub_268C3D69C(void (*a1)(uint64_t *__return_ptr, _OWORD *), uint64_t a2)
{
  v3 = v2;
  v36 = a1;
  v37 = a2;
  v4 = sub_268C42A98();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268C42CD8();
  v7 = sub_268C3EC40(&qword_2802D31B8, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  v38 = v6;
  v39 = v4;
  v35 = v7;
  sub_268C42D78();
  if (!v46)
  {
LABEL_34:
    v8 = MEMORY[0x277D84F90];
LABEL_35:
    (*(v33 + 8))(v38, v39);
    return v8;
  }

  v8 = MEMORY[0x277D84F90];
  v9 = &qword_2802D31C0;
  while (1)
  {
    sub_268C3EC88(v45, v44);
    v36(&v47, v44);
    if (v3)
    {
      __swift_destroy_boxed_opaque_existential_0(v44);
      (*(v33 + 8))(v38, v39);

      return v8;
    }

    __swift_destroy_boxed_opaque_existential_0(v44);
    v11 = v47;
    v12 = v47 >> 62;
    if (v47 >> 62)
    {
      v13 = sub_268C42DD8();
    }

    else
    {
      v13 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      v31 = sub_268C42DD8();
      v16 = v31 + v13;
      if (__OFADD__(v31, v13))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v15 + v13;
      if (__OFADD__(v15, v13))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v42 = v13;
    if (result)
    {
      if (!v14)
      {
        v17 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_268C42DD8();
      goto LABEL_16;
    }

    if (v14)
    {
      goto LABEL_15;
    }

LABEL_16:
    result = sub_268C42E78();
    v8 = result;
    v17 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v12)
    {
      break;
    }

    v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v19 >> 1) - v18) < v42)
    {
      goto LABEL_39;
    }

    v40 = v8;
    v41 = 0;
    v22 = v17 + 8 * v18 + 32;
    v34 = v17;
    if (v12)
    {
      if (v20 < 1)
      {
        goto LABEL_41;
      }

      sub_268C3EC98();
      for (i = 0; i != v20; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v9, &qword_268C439F0);
        v24 = v9;
        v25 = sub_268C3E9A4(v43, i, v11);
        v27 = *v26;
        (v25)(v43, 0);
        v9 = v24;
        *(v22 + 8 * i) = v27;
      }
    }

    else
    {
      sub_268C39E9C();
      swift_arrayInitWithCopy();
    }

    v3 = v41;
    v8 = v40;
    if (v42 > 0)
    {
      v28 = *(v34 + 16);
      v29 = __OFADD__(v28, v42);
      v30 = v28 + v42;
      if (v29)
      {
        goto LABEL_40;
      }

      *(v34 + 16) = v30;
    }

LABEL_4:
    sub_268C42D78();
    if (!v46)
    {
      goto LABEL_35;
    }
  }

  v21 = v17;
  result = sub_268C42DD8();
  v17 = v21;
  v20 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v42 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t _FlatFileStore.deinit()
{
  v1 = OBJC_IVAR____TtC26SiriPrivateLearningLogging14_FlatFileStore_path;
  v2 = sub_268C42AE8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t _FlatFileStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26SiriPrivateLearningLogging14_FlatFileStore_path;
  v2 = sub_268C42AE8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_268C3DBD0(unint64_t a1, void (*a2)(id *, uint64_t))
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_268C42DD8())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D6286F0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = v7;
      a2(&v10, v2);

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_268C3DCC0(void **a1, uint64_t a2)
{
  v48 = a2;
  v3 = sub_268C42B68();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = sub_268C3E298(*a1);
  if (v8)
  {
    v9 = v8;
    v10 = [v8 anyEventType];

    if (v10 <= 0x71)
    {
LABEL_3:
      v11 = off_279C45EA8[v10];
      v12 = off_279C46238[v10];
      goto LABEL_6;
    }
  }

  else
  {
    v10 = [v7 anyEventType];
    if (v10 <= 0x71)
    {
      goto LABEL_3;
    }
  }

  v11 = @"UNKNOWN_EVENT";
  v12 = @"UNKNOWN_EVENT";
LABEL_6:
  v13 = v11;
  v14 = v12;
  v15 = sub_268C42BF8();
  v17 = v16;

  if (qword_2802D2FF8 != -1)
  {
    swift_once();
  }

  if (sub_268C3945C(v10))
  {
    sub_268C42B58();
    sub_268C42B48();
    (*(v4 + 8))(v6, v3);
    Current = CFAbsoluteTimeGetCurrent();
    v19 = [v7 data];
    if (v19)
    {
      v20 = v19;
      v21 = sub_268C42B08();
      v23 = v22;

      v24 = objc_allocWithZone(MEMORY[0x277CF1AE8]);
      v25 = sub_268C42BE8();

      v26 = sub_268C42AF8();
      v27 = [v24 initWithUniqueId:v25 absoluteTimestamp:v26 eventData:Current];

      sub_268C3EBEC(v21, v23);
      if (qword_2802D2FF0 != -1)
      {
        swift_once();
      }

      v28 = sub_268C42B98();
      __swift_project_value_buffer(v28, qword_2802D32E8);

      v29 = v27;
      v30 = sub_268C42B78();
      v31 = sub_268C42CF8();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v49 = v33;
        *v32 = 136315394;
        v34 = sub_268C3E3FC(v15, v17, &v49);

        *(v32 + 4) = v34;
        *(v32 + 12) = 2080;
        v35 = [v29 uniqueId];
        v36 = sub_268C42BF8();
        v38 = v37;

        v39 = sub_268C3E3FC(v36, v38, &v49);

        *(v32 + 14) = v39;
        _os_log_impl(&dword_268C36000, v30, v31, "Storing an event of type=%s with id=%s to Biome", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D628C20](v33, -1, -1);
        MEMORY[0x26D628C20](v32, -1, -1);
      }

      else
      {
      }

      v46 = [*(v48 + 16) source];
      [v46 sendEvent_];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_2802D2FF0 != -1)
    {
      swift_once();
    }

    v40 = sub_268C42B98();
    __swift_project_value_buffer(v40, qword_2802D32E8);

    v41 = sub_268C42B78();
    v42 = sub_268C42CF8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v49 = v44;
      *v43 = 136315138;
      v45 = sub_268C3E3FC(v15, v17, &v49);

      *(v43 + 4) = v45;
      _os_log_impl(&dword_268C36000, v41, v42, "Dropping an event of type=%s: not allowed", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x26D628C20](v44, -1, -1);
      MEMORY[0x26D628C20](v43, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_268C3E23C()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id sub_268C3E298(void *a1)
{
  if ([a1 anyEventType] != 6)
  {
    return a1;
  }

  v2 = [a1 payload];
  if (v2)
  {
    v3 = v2;
    v4 = sub_268C42B08();
    v6 = v5;

    v7 = sub_268C42AF8();
    sub_268C3EBEC(v4, v6);
  }

  else
  {
    v7 = 0;
  }

  v9 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

  v10 = [v9 event];
  return v10;
}

uint64_t sub_268C3E3A0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_268C3E3FC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_268C3E3FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_268C3E4C8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_268C3ECFC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_268C3E4C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_268C3E5D4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_268C42E88();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_268C3E5D4(uint64_t a1, unint64_t a2)
{
  v3 = sub_268C3E620(a1, a2);
  sub_268C3E750(&unk_28797EF78);
  return v3;
}

void *sub_268C3E620(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_268C3E83C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_268C42E88();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_268C42C58();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_268C3E83C(v10, 0);
        result = sub_268C42E58();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_268C3E750(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_268C3E8B0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_268C3E83C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D31E0, &qword_268C43A10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_268C3E8B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D31E0, &qword_268C43A10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void (*sub_268C3E9A4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D6286F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_268C3EA24;
  }

  __break(1u);
  return result;
}

uint64_t sub_268C3EA8C(uint64_t a1)
{
  result = sub_268C42AE8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_268C3EBEC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_268C3EC40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_268C3EC88(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_268C3EC98()
{
  result = qword_2802D31C8;
  if (!qword_2802D31C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D31C0, &qword_268C439F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D31C8);
  }

  return result;
}

uint64_t sub_268C3ECFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_268C3ED70(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_268C42C38();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

void sub_268C3EE1C(int a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (qword_2802D2FE8 != -1)
  {
    swift_once();
  }

  v6 = sub_268C42B98();
  __swift_project_value_buffer(v6, qword_2802D32D0);
  v7 = sub_268C42B78();
  v8 = sub_268C42CF8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1;
    _os_log_impl(&dword_268C36000, v7, v8, a4, v9, 8u);
    MEMORY[0x26D628C20](v9, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    sub_268C3F30C(v12);
  }
}

uint64_t sub_268C3EFD4(void *a1)
{
  v3 = sub_268C42BA8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_268C42BD8();
  v7 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&v1[OBJC_IVAR____TtC26SiriPrivateLearningLogging32PLLoggingServiceListenerDelegate_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_268C41CB0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268C3ADD8;
  aBlock[3] = &block_descriptor_24;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  v13 = a1;
  sub_268C42BC8();
  v17 = MEMORY[0x277D84F90];
  sub_268C3B700(&qword_2802D3150, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3158, &qword_268C43A90);
  sub_268C3B748(&unk_2802D3160, &qword_2802D3158, &qword_268C43A90);
  sub_268C42D98();
  MEMORY[0x26D6285C0](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);
}

void sub_268C3F298(uint64_t a1, void *a2)
{
  swift_beginAccess();
  sub_268C3FE90(&v4, a2);
  v3 = v4;
  swift_endAccess();
}

uint64_t sub_268C3F30C(void *a1)
{
  v2 = v1;
  v4 = sub_268C42BA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268C42BD8();
  result = MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v24 = v10;
    v25 = result;
    v26 = v5;
    v13 = qword_2802D2FE8;
    v14 = a1;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = sub_268C42B98();
    __swift_project_value_buffer(v15, qword_2802D32D0);
    v16 = v14;
    v17 = sub_268C42B78();
    v18 = sub_268C42CF8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = [v16 processIdentifier];

      _os_log_impl(&dword_268C36000, v17, v18, "Removing connection (pid=%d)", v19, 8u);
      MEMORY[0x26D628C20](v19, -1, -1);
    }

    else
    {

      v17 = v16;
    }

    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    *(v20 + 24) = v16;
    aBlock[4] = sub_268C41CA8;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_268C3ADD8;
    aBlock[3] = &block_descriptor_18_0;
    v21 = _Block_copy(aBlock);
    v22 = v16;
    v23 = v2;
    sub_268C42BC8();
    v27 = MEMORY[0x277D84F90];
    sub_268C3B700(&qword_2802D3150, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3158, &qword_268C43A90);
    sub_268C3B748(&unk_2802D3160, &qword_2802D3158, &qword_268C43A90);
    sub_268C42D98();
    MEMORY[0x26D6285C0](0, v12, v7, v21);
    _Block_release(v21);

    (*(v26 + 8))(v7, v4);
    (*(v24 + 8))(v12, v25);
  }

  return result;
}

void sub_268C3F6D8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v3 = sub_268C410B8(a2);
  swift_endAccess();
}

id sub_268C3F7D8()
{
  result = [objc_allocWithZone(type metadata accessor for PLLoggingServiceDefaultHandler()) init];
  qword_2802D3308 = result;
  return result;
}

id sub_268C3F938(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_268C3F974()
{
  result = sub_268C3F994();
  qword_2802D31F0 = result;
  return result;
}

id sub_268C3F994()
{
  v15 = sub_268C42D28();
  v0 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v2 = v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_268C42D18();
  MEMORY[0x28223BE20](v3);
  v4 = sub_268C42BD8();
  MEMORY[0x28223BE20](v4 - 8);
  v14[1] = sub_268C3B6B8(0, &qword_2802D3290, 0x277D85C78);
  sub_268C42BB8();
  v17 = MEMORY[0x277D84F90];
  sub_268C3B700(&unk_2802D3190, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D32A0, &qword_268C43910);
  sub_268C3B748(&unk_2802D31A0, &qword_2802D32A0, &qword_268C43910);
  sub_268C42D98();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v15);
  v5 = sub_268C42D48();
  v6 = [objc_allocWithZone(MEMORY[0x277CCAE98]) initWithMachServiceName_];
  v7 = type metadata accessor for PLLoggingServiceListenerDelegate();
  v8 = objc_allocWithZone(v7);
  if (MEMORY[0x277D84F90] >> 62 && sub_268C42DD8())
  {
    v13 = v5;
    sub_268C41D48(MEMORY[0x277D84F90]);
  }

  else
  {
    v9 = v5;
    v10 = MEMORY[0x277D84FA0];
  }

  *&v8[OBJC_IVAR____TtC26SiriPrivateLearningLogging32PLLoggingServiceListenerDelegate_connections] = v10;
  *&v8[OBJC_IVAR____TtC26SiriPrivateLearningLogging32PLLoggingServiceListenerDelegate_queue] = v5;
  v16.receiver = v8;
  v16.super_class = v7;
  v11 = objc_msgSendSuper2(&v16, sel_init);
  return sub_268C41558(v6, v11, v5);
}

id static PLLoggingServiceListener.sharedInstance.getter()
{
  if (qword_2802D3020 != -1)
  {
    swift_once();
  }

  v1 = qword_2802D31F0;

  return v1;
}

uint64_t sub_268C3FDA8(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x26D628770](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_268C4078C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_268C3FE90(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_268C42DE8();

    if (v9)
    {

      sub_268C3B6B8(0, &qword_2802D3278, 0x277CCAE80);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_268C42DD8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_268C400C8(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_268C404E0(v20 + 1);
    }

    v18 = v8;
    sub_268C40708(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_268C3B6B8(0, &qword_2802D3278, 0x277CCAE80);
  v11 = sub_268C42D58();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_268C408B0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_268C42D68();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_268C400C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3280, &qword_268C43A98);
    v2 = sub_268C42E38();
    v15 = v2;
    sub_268C42DC8();
    if (sub_268C42DF8())
    {
      sub_268C3B6B8(0, &qword_2802D3278, 0x277CCAE80);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_268C404E0(v9 + 1);
        }

        v2 = v15;
        result = sub_268C42D58();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_268C42DF8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_268C402B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3288, &unk_268C43AA0);
  result = sub_268C42E28();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      result = MEMORY[0x26D628770](*(v5 + 40), v17, 4);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_268C404E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3280, &qword_268C43A98);
  result = sub_268C42E28();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_268C42D58();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_268C40708(uint64_t a1, uint64_t a2)
{
  sub_268C42D58();
  result = sub_268C42DB8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_268C4078C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_268C402B8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_268C40A20();
      a2 = v7;
      goto LABEL_12;
    }

    sub_268C40CB0(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x26D628770](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_268C42ED8();
  __break(1u);
  return result;
}

void sub_268C408B0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_268C404E0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_268C40B60();
      goto LABEL_12;
    }

    sub_268C40EA4(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_268C42D58();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_268C3B6B8(0, &qword_2802D3278, 0x277CCAE80);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_268C42D68();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_268C42ED8();
  __break(1u);
}

void *sub_268C40A20()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3288, &unk_268C43AA0);
  v2 = *v0;
  v3 = sub_268C42E18();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_268C40B60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3280, &qword_268C43A98);
  v2 = *v0;
  v3 = sub_268C42E18();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_268C40CB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3288, &unk_268C43AA0);
  result = sub_268C42E28();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      result = MEMORY[0x26D628770](*(v5 + 40), v16, 4);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_268C40EA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3280, &qword_268C43A98);
  result = sub_268C42E28();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_268C42D58();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_268C410B8(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_268C42E08();

    if (v6)
    {
      v7 = sub_268C41250(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_268C3B6B8(0, &qword_2802D3278, 0x277CCAE80);
  v10 = sub_268C42D58();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_268C42D68();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_268C40B60();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_268C413B8(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_268C41250(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_268C42DD8();
  v5 = swift_unknownObjectRetain();
  v6 = sub_268C400C8(v5, v4);
  v15 = v6;

  v7 = sub_268C42D58();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_268C3B6B8(0, &qword_2802D3278, 0x277CCAE80);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_268C42D68();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_268C413B8(v9);
  result = sub_268C42D68();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_268C413B8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_268C42DA8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_268C42D58();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

id sub_268C41558(void *a1, void *a2, void *a3)
{
  if (qword_2802D2FE8 != -1)
  {
    swift_once();
  }

  v6 = sub_268C42B98();
  __swift_project_value_buffer(v6, qword_2802D32D0);
  v7 = sub_268C42B78();
  v8 = sub_268C42CE8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_268C36000, v7, v8, "Initializing PLLoggingServiceListener", v9, 2u);
    MEMORY[0x26D628C20](v9, -1, -1);
  }

  v10 = [objc_allocWithZone(PLLoggingServiceListener) init];
  [v10 setDelegate_];

  [v10 setListener_];
  v11 = [v10 listener];
  [v11 _setQueue_];

  v12 = [v10 listener];
  [v12 setDelegate_];

  swift_unknownObjectRelease();
  v13 = [v10 listener];

  [v13 resume];
  v14 = sub_268C42B78();
  v15 = sub_268C42CE8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_268C36000, v14, v15, "Started PLLoggingServiceListener", v16, 2u);
    MEMORY[0x26D628C20](v16, -1, -1);
  }

  return v10;
}

uint64_t sub_268C417C0(void *a1)
{
  v2 = v1;
  v4 = [a1 processIdentifier];
  if (qword_2802D2FE8 != -1)
  {
    swift_once();
  }

  v5 = sub_268C42B98();
  __swift_project_value_buffer(v5, qword_2802D32D0);
  v6 = sub_268C42B78();
  v7 = sub_268C42CE8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4;
    _os_log_impl(&dword_268C36000, v6, v7, "PLLoggingService connection request received (pid=%d)", v8, 8u);
    MEMORY[0x26D628C20](v8, -1, -1);
  }

  if (qword_2802D3018 != -1)
  {
    swift_once();
  }

  [a1 setExportedObject_];
  v9 = PLLoggingXPCServiceInterface();
  [a1 setExportedInterface_];

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = v10;
  *(v12 + 32) = v11;
  v23 = sub_268C41CB8;
  v24 = v12;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_268C3ADD8;
  v22 = &block_descriptor_36;
  v13 = _Block_copy(&v19);

  [a1 setInvalidationHandler_];
  _Block_release(v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v14;
  *(v16 + 32) = v15;
  v23 = sub_268C41D20;
  v24 = v16;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_268C3ADD8;
  v22 = &block_descriptor_44;
  v17 = _Block_copy(&v19);

  [a1 setInterruptionHandler_];
  _Block_release(v17);
  [a1 _setQueue_];
  sub_268C3EFD4(a1);
  [a1 resume];
  return 1;
}

void sub_268C41B50(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_2802D3008 != -1)
  {
    swift_once();
  }

  v5 = qword_2802D3138;
  sub_268C3B6B8(0, &qword_2802D3140, 0x277D5A790);
  v6 = sub_268C42C88();
  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_268C3ADD8;
    v7[3] = &block_descriptor_0;
    a2 = _Block_copy(v7);
  }

  [v5 storeInstrumentationWithEvents:v6 completion:a2];
  _Block_release(a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_32Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_268C41D48(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_268C42DD8())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3280, &qword_268C43A98);
      v3 = sub_268C42E48();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_268C42DD8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x26D6286F0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_268C42D58();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_268C3B6B8(0, &qword_2802D3278, 0x277CCAE80);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_268C42D68();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_268C42D58();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_268C3B6B8(0, &qword_2802D3278, 0x277CCAE80);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_268C42D68();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_268C42058(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_268C42BA8();
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268C42BD8();
  v23 = *(v11 - 8);
  v24 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802D2FF0 != -1)
  {
    swift_once();
  }

  v14 = sub_268C42B98();
  __swift_project_value_buffer(v14, qword_2802D32E8);

  v15 = sub_268C42B78();
  v16 = sub_268C42CF8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    if (a1 >> 62)
    {
      v18 = sub_268C42DD8();
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v17 + 4) = v18;

    _os_log_impl(&dword_268C36000, v15, v16, "Received %ld new SISChemaAnyEvent event(s)", v17, 0xCu);
    MEMORY[0x26D628C20](v17, -1, -1);
  }

  else
  {
  }

  v19 = swift_allocObject();
  v19[2] = v4;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  aBlock[4] = sub_268C42970;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268C3ADD8;
  aBlock[3] = &block_descriptor_1;
  v20 = _Block_copy(aBlock);

  v21 = v4;
  sub_268C3B3F8(a2, a3);
  sub_268C42BC8();
  v26 = MEMORY[0x277D84F90];
  sub_268C3B700(&qword_2802D3150, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3158, &qword_268C43A90);
  sub_268C3B748(&unk_2802D3160, &qword_2802D3158, &qword_268C43A90);
  sub_268C42D98();
  MEMORY[0x26D6285C0](0, v13, v10, v20);
  _Block_release(v20);
  (*(v25 + 8))(v10, v8);
  (*(v23 + 8))(v13, v24);
}

uint64_t sub_268C42440(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = (a1 + OBJC_IVAR____TtC26SiriPrivateLearningLogging25PLLoggingServiceStoreBase_store);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  result = (*(v7 + 8))(a2, v6, v7);
  if (a3)
  {
    return a3(result);
  }

  return result;
}

id sub_268C42580()
{
  result = sub_268C425A0();
  qword_2802D3310 = result;
  return result;
}

id sub_268C425A0()
{
  v12 = sub_268C42D28();
  v0 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_268C42D18();
  MEMORY[0x28223BE20](v3);
  v4 = sub_268C42BD8();
  MEMORY[0x28223BE20](v4 - 8);
  if (qword_280F8E850 != -1)
  {
    swift_once();
  }

  v11 = qword_280F8E858;
  v10[1] = sub_268C429D8();
  sub_268C42BC8();
  v15[0] = MEMORY[0x277D84F90];
  sub_268C3B700(&unk_2802D3190, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D32A0, &qword_268C43910);
  sub_268C3B748(&unk_2802D31A0, &qword_2802D32A0, &qword_268C43910);
  sub_268C42D98();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v12);
  v5 = sub_268C42D48();
  v15[3] = type metadata accessor for _FlatFileStore(0);
  v15[4] = &protocol witness table for _FlatFileStore;
  v15[0] = v11;
  v6 = objc_allocWithZone(type metadata accessor for PLLoggingServiceFlatFileStore());
  sub_268C42A24(v15, v14);
  *&v6[OBJC_IVAR____TtC26SiriPrivateLearningLogging25PLLoggingServiceStoreBase_queue] = v5;
  sub_268C42A24(v14, &v6[OBJC_IVAR____TtC26SiriPrivateLearningLogging25PLLoggingServiceStoreBase_store]);
  v7 = type metadata accessor for PLLoggingServiceStoreBase();
  v13.receiver = v6;
  v13.super_class = v7;

  v8 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v14);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return v8;
}

id sub_268C42910(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_268C429D8()
{
  result = qword_2802D3290;
  if (!qword_2802D3290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802D3290);
  }

  return result;
}

uint64_t sub_268C42A24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}