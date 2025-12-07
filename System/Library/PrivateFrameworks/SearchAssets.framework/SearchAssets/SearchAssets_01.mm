unint64_t sub_2157FB6FC()
{
  result = qword_27CA73EE0;
  if (!qword_27CA73EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA73EE0);
  }

  return result;
}

unint64_t sub_2157FB754()
{
  result = qword_28119CDD8;
  if (!qword_28119CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CDD8);
  }

  return result;
}

unint64_t sub_2157FB7AC()
{
  result = qword_28119CDE0;
  if (!qword_28119CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CDE0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t a1)
{

  return MEMORY[0x2821FDB68](v3 - 88, v3 - 66, v1, v2, a1);
}

uint64_t sub_2157FB87C()
{
  v0 = sub_21580B6F0();
  MEMORY[0x28223BE20](v0);
  v1 = [objc_opt_self() currentLocale];
  sub_21580B6E0();

  v2 = sub_21580B6D0();
  v3 = OUTLINED_FUNCTION_3_3();
  v4(v3);
  return v2;
}

id sub_2157FB994()
{
  result = [objc_opt_self() sharedConfiguration];
  if (result)
  {
    return sub_2157FC448(result);
  }

  return result;
}

id sub_2157FB9F0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    OUTLINED_FUNCTION_3_3();
    v7 = sub_21580B880();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_2157FBA88(void *a1)
{
  v1 = a1;
  v2 = OUTLINED_FUNCTION_3_3();
  sub_2157FBB24(v2, v3);
  v5 = v4;

  if (v5)
  {
    OUTLINED_FUNCTION_3_3();
    v6 = sub_21580B880();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_2157FBB24(uint64_t a1, uint64_t a2)
{
  v2 = sub_21580B880();
  v3 = MGCopyAnswer();

  if (!v3)
  {
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  return 0;
}

uint64_t sub_2157FBBC8()
{
  if (qword_27CA73998 != -1)
  {
    swift_once();
  }

  if (byte_27CA74CB0)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_2157FBC5C()
{
  v1 = sub_2157FC4B8(v0);
  if (v2)
  {
    v3 = objc_opt_self();
    OUTLINED_FUNCTION_27();
    v4 = sub_21580B880();
    v5 = [v3 safariAssistantAssetManagerWithLocale_];

    OUTLINED_FUNCTION_27();
    v6 = sub_21580B880();

    v7 = [v5 assetVersionForLocale_];

    swift_unknownObjectRelease();
    if (v7)
    {
      v1 = sub_21580B890();
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

id sub_2157FC09C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = sub_21580B880();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void *sub_2157FC0F8()
{
  v1 = *(v0 + OBJC_IVAR___SATrialExperiment__deploymentID);
  v2 = v1;
  return v1;
}

void *sub_2157FC15C()
{
  v1 = *(v0 + OBJC_IVAR___SATrialExperiment__compatibilityVersion);
  v2 = v1;
  return v1;
}

id _sSo12SADeviceInfoC12SearchAssetsEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id SATrialExperiment.init()()
{
  v1 = (v0 + OBJC_IVAR___SATrialExperiment__experimentNamespace);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR___SATrialExperiment__experimentID);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR___SATrialExperiment__treatmentID);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR___SATrialExperiment__deploymentID) = 0;
  *(v0 + OBJC_IVAR___SATrialExperiment__compatibilityVersion) = 0;
  *(v0 + OBJC_IVAR___SATrialExperiment__allocationStatus) = 0;
  v5.super_class = SATrialExperiment;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_2157FC38C()
{
  result = sub_2157FC3B0();
  byte_27CA74CB0 = result & 1;
  return result;
}

uint64_t sub_2157FC3B0()
{
  v0 = sub_21580B880();
  v1 = MGCopyAnswer();

  if (v1)
  {
    return swift_dynamicCast() & v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2157FC448(void *a1)
{
  v2 = [a1 countryCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21580B890();

  return v3;
}

uint64_t sub_2157FC4B8(void *a1)
{
  v1 = [a1 systemLocale];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21580B890();

  return v3;
}

uint64_t OUTLINED_FUNCTION_2_4()
{
}

uint64_t getEnumTagSinglePayload for ResourceAccessOutcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x83)
  {
    if (a2 + 125 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 125) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 126;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x7E;
  v5 = v6 - 126;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResourceAccessOutcome(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 125 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 125) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x83)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x82)
  {
    v6 = ((a2 - 131) >> 8) + 1;
    *result = a2 + 125;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 125;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2157FC6EC(char a1)
{
  sub_21580BDC0();
  MEMORY[0x216071A90](qword_21580DA40[a1]);
  return sub_21580BDE0();
}

uint64_t sub_2157FC740(uint64_t a1)
{
  sub_21580BDC0();
  MEMORY[0x216071A90](a1);
  return sub_21580BDE0();
}

uint64_t sub_2157FC788()
{
  v0 = sub_21580BDC0();
  OUTLINED_FUNCTION_0_4(v0);
  return sub_21580BDE0();
}

uint64_t sub_2157FC7F8(uint64_t a1, char a2)
{
  sub_21580BDC0();
  MEMORY[0x216071A90](qword_21580DA40[a2]);
  return sub_21580BDE0();
}

uint64_t sub_2157FC84C(uint64_t a1, uint64_t a2)
{
  sub_21580BDC0();
  MEMORY[0x216071A90](a2);
  return sub_21580BDE0();
}

uint64_t sub_2157FC890(uint64_t a1)
{
  v1 = sub_21580BDC0();
  OUTLINED_FUNCTION_0_4(v1);
  return sub_21580BDE0();
}

uint64_t sub_2157FC8C8(uint64_t a1)
{
  v3 = a1 - 496;
  if (!(!v2 & v1))
  {
    result = 45;
    switch(v3)
    {
      case 0:
        return 15;
      case 1:
        return 16;
      case 2:
        return 17;
      case 3:
        return 18;
      case 4:
        return 19;
      case 5:
        return 20;
      case 6:
        return 21;
      case 7:
        return 22;
      case 8:
        return 23;
      case 9:
        return 24;
      case 10:
        return 25;
      case 11:
        return 26;
      case 12:
        return 27;
      case 13:
        return 28;
      case 14:
        return 29;
      case 15:
        return 30;
      case 16:
        return 31;
      case 17:
        return 32;
      case 18:
        return 33;
      case 19:
        return 34;
      case 20:
        return 35;
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 82:
      case 83:
        return 126;
      case 54:
        return 36;
      case 55:
        return 37;
      case 56:
        return 38;
      case 57:
        return 39;
      case 58:
        return 40;
      case 59:
        return 41;
      case 60:
        return 42;
      case 61:
        return 43;
      case 62:
        return 44;
      case 79:
        return result;
      case 80:
        return 46;
      case 81:
        return 47;
      case 84:
        return 48;
      case 85:
        return 49;
      case 86:
        return 50;
      case 87:
        return 51;
      default:
        JUMPOUT(0);
    }
  }

  switch(a1)
  {
    case 700:
      return 56;
    case 701:
      return 57;
    case 702:
      return 58;
    case 1101:
      return 78;
    case 1102:
      return 79;
    case 1200:
      return 80;
    case 1420:
      return 105;
    case 1600:
      return 121;
    case 1601:
      return 122;
    case 1700:
      return 123;
    case 1701:
      return 124;
    case 1702:
      return 125;
  }

  return 126;
}

uint64_t sub_2157FCEE8(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 37:
    case 38:
    case 39:
    case 50:
    case 60:
    case 61:
    case 62:
    case 63:
    case 65:
    case 66:
    case 67:
    case 100:
      return result;
    case 22:
    case 36:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
      goto LABEL_9;
    default:
      if ((result - 200) >= 3 && (result - 600) >= 3 && (result - 300) >= 2 && (result - 400) >= 2 && result != 500 && result != 700)
      {
LABEL_9:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_2157FCF8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2157FC8C8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2157FCFB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2157FCED4(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2157FD030@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2157FCEE8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_2157FD074()
{
  result = qword_28119D220;
  if (!qword_28119D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119D220);
  }

  return result;
}

unint64_t sub_2157FD0CC()
{
  result = qword_27CA73F20;
  if (!qword_27CA73F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA73F20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1, ...)
{

  return sub_21580B920();
}

void sub_2157FD158(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_2157FE62C(319);
    if (v2 <= 0x3F)
    {
      sub_21580B6C0();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void *sub_2157FD298()
{
  OUTLINED_FUNCTION_0_5();
  v2 = v1;
  if ((*(v0 + *(v3 + 120)) & 1) == 0)
  {
    (*(v1 + 400))();
  }

  swift_weakDestroy();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_1();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v4 + 112));
  OUTLINED_FUNCTION_3_1();

  OUTLINED_FUNCTION_3_1();
  sub_2157FEE4C(v0 + *(v6 + 136), &qword_27CA73F60, &qword_21580E0A0);
  OUTLINED_FUNCTION_3_1();
  v8 = *(v7 + 144);
  sub_21580B6C0();
  OUTLINED_FUNCTION_6_1();
  (*(v9 + 8))(v0 + v8);
  OUTLINED_FUNCTION_3_1();

  return v0;
}

uint64_t sub_2157FD424()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_5();
  v4 = type metadata accessor for ActivitySpan.ActivityData(0, *(v2 + 80), *(v2 + 88), v3);

  v40 = v4;
  sub_21580B378(sub_2157FEB30);

  v48 = v44;
  v49 = v45;
  v50 = v46;
  v51 = v47;
  v5 = *&v1[*(*v1 + 128)];
  v6 = sub_21580BAC0();
  sub_21580B780("LEAKED SPAN: {{{", 16, 2, &dword_2157E4000, v5, v6, MEMORY[0x277D84F90]);
  sub_21580BAC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21580CC20;
  sub_2157FDAEC();
  v8 = sub_21580BC00();
  v10 = v9;
  v11 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v12 = sub_2157EDE30();
  *(v7 + 64) = v12;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v13 = sub_2157FDA98();
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 72) = v13;
  *(v7 + 80) = v14;
  v15 = sub_2157FDA44();
  *(v7 + 136) = v11;
  *(v7 + 144) = v12;
  v43 = v12;
  *(v7 + 112) = v15;
  *(v7 + 120) = v16;
  sub_21580B780("Name: %s, Category: %s, Subsystem: %s", v38, v40, v42);

  if ((BYTE1(v49) & 1) == 0)
  {
    sub_21580BAC0();
    v17 = OUTLINED_FUNCTION_5_1();
    *(v17 + 16) = xmmword_21580C9B0;
    v18 = sub_21580BC00();
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = v12;
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    OUTLINED_FUNCTION_3_4("Format string: %s");
    sub_21580B780(v20);

    v21 = v50;
    if (v50)
    {

      sub_21580BAC0();
      v22 = OUTLINED_FUNCTION_5_1();
      *(v22 + 16) = xmmword_21580C9B0;
      *(v22 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F38, &qword_21580DF70);
      *(v22 + 64) = sub_2157EF214(&qword_27CA73F40, &qword_27CA73F38, &qword_21580DF70, MEMORY[0x277CC9C50]);
      *(v22 + 32) = v21;
      OUTLINED_FUNCTION_3_4("Arguments: %@");
      sub_21580B780(v23);
    }
  }

  v24 = *(&v49 + 1);
  if (*(&v49 + 1))
  {

    sub_21580BAC0();
    v25 = OUTLINED_FUNCTION_5_1();
    *(v25 + 16) = xmmword_21580C9B0;
    *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F28, &qword_21580E0E0);
    *(v25 + 64) = sub_2157EF214(&qword_27CA73F30, &qword_27CA73F28, &qword_21580E0E0, MEMORY[0x277CC9BB8]);
    *(v25 + 32) = v24;
    OUTLINED_FUNCTION_3_4("Analytics: %@");
    sub_21580B780(v26);
  }

  v27 = *(&v50 + 1);
  result = sub_215802A1C(*(&v50 + 1));
  v29 = v41;
  if (result)
  {
    v30 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v39 = v1;

    v31 = 0;
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2160718D0](v31, v27);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v31;
      sub_21580BAC0();
      v32 = OUTLINED_FUNCTION_5_1();
      *(v32 + 16) = xmmword_21580C9B0;
      swift_unknownObjectRetain();
      v33 = sub_21580B8E0();
      *(v32 + 56) = MEMORY[0x277D837D0];
      *(v32 + 64) = v43;
      *(v32 + 32) = v33;
      *(v32 + 40) = v34;
      sub_21580B780("Leaked cancellables: %s", v39);
      swift_unknownObjectRelease();
    }

    while (v30 != v31);

    v29 = v41;
  }

  sub_21580BAC0();
  OUTLINED_FUNCTION_3_4("}}}");
  sub_21580B780(v35);
  if (sub_2157FDB54())
  {
    sub_21580BAD0();
    OUTLINED_FUNCTION_3_4("Some objects remain retained at the moment when all activities must be finalized. This could indicate deadlock, memory leak or not cancelled asynchronous procedures, such as networking or XPC calls.");
    sub_21580B780(v36);
  }

  OUTLINED_FUNCTION_6_1();
  return (*(v37 + 8))(&v48, v29);
}

uint64_t sub_2157FD9BC(void (*a1)(void), uint64_t a2)
{
  OUTLINED_FUNCTION_3_1();
  v5 = *(*(v2 + *(v4 + 152)) + 16);

  os_unfair_lock_lock(v5);
  sub_2157FE78C(v2, a1);
  os_unfair_lock_unlock(v5);
}

uint64_t sub_2157FDA44()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_5();
  return (*(*(v0 + 88) + 24))();
}

uint64_t sub_2157FDA98()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_5();
  return (*(*(v0 + 88) + 32))();
}

uint64_t sub_2157FDAEC()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_5();
  return v1(*(v0 + 80));
}

uint64_t sub_2157FDB54()
{
  OUTLINED_FUNCTION_0_5();
  v2 = *(v1 + 80);
  MEMORY[0x28223BE20](v3);
  v5 = v12 - v4;
  OUTLINED_FUNCTION_1_5();
  (*(v7 + 16))(v5, v0 + *(v6 + 112), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F48, &qword_21580DF78);
  if (swift_dynamicCast())
  {
    sub_2157E59C0(v12, v14);
    v8 = v15;
    v9 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v10 = (*(v9 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_2157FEE4C(v12, &unk_27CA73F50, &unk_21580DF80);
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_2157FDCCC()
{
  v1 = sub_21580B6C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_3_1();
  (*(v2 + 16))(v4, v0 + *(v5 + 144), v1);
  sub_21580B680();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_2157FDE2C()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F60, &qword_21580E0A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v51[-v7];
  v9 = *(v2 + 80);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v51[-v15];
  v17 = *(v1 + 40);
  v61 = *(v1 + 24);
  v62 = v17;
  v63 = *(v1 + 56);
  v64 = *(v1 + 72);
  v18 = *(&v17 + 1);
  v55 = *(v2 + 88);
  v20 = type metadata accessor for ActivitySpan.ActivityData(0, v9, v55, v19);
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v54 = v20;
  v22(v56, &v61);
  sub_2157FE7E0(v18);
  if ((BYTE1(v62) & 1) == 0)
  {
    v23 = v63;
    if (v63)
    {
      v53 = *(&v61 + 1);
      v24 = v61;
      v52 = v62;
      OUTLINED_FUNCTION_8_0();
      (*(v10 + 16))(v16, v1 + *(v25 + 112), v9);
      OUTLINED_FUNCTION_8_0();
      v27 = *(v26 + 136);
      swift_beginAccess();
      sub_2157FED98(v1 + v27, v8);
      v28 = sub_21580B7C0();
      result = __swift_getEnumTagSinglePayload(v8, 1, v28);
      if (result != 1)
      {
        v30 = v8;
        OUTLINED_FUNCTION_8_0();
        v32 = *(v1 + *(v31 + 128));

        sub_2157FE4FC(v30, v32, v24, v53, v52, v23, v9, v55);

        (*(v10 + 8))(v16, v9);
        OUTLINED_FUNCTION_6_1();
        (*(v33 + 8))(v30, v28);
        goto LABEL_7;
      }

LABEL_14:
      __break(1u);
      return result;
    }
  }

  OUTLINED_FUNCTION_8_0();
  (*(v10 + 16))(v13, v1 + *(v34 + 112), v9);
  OUTLINED_FUNCTION_8_0();
  v36 = *(v35 + 136);
  swift_beginAccess();
  sub_2157FED98(v1 + v36, v5);
  v37 = sub_21580B7C0();
  result = __swift_getEnumTagSinglePayload(v5, 1, v37);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_8_0();
  v32 = *(v1 + *(v38 + 128));
  sub_2157FE46C(v5, v32, v9, v55);
  (*(v10 + 8))(v13, v9);
  OUTLINED_FUNCTION_6_1();
  (*(v39 + 8))(v5, v37);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    v43 = type metadata accessor for ActivitySpan(0, v9, v55, v41);
    sub_2157F9CE0(v1, v42, v43, &off_2827B56D8);
    v59 = 0uLL;
    v60 = 0;
    *&v58[6] = 0;
    *&v58[14] = 0;

    v44 = *(v21 + 8);
    v45 = v54;
    v44(&v61, v54);
    v46 = *(v1 + 40);
    v56[0] = *(v1 + 24);
    v47 = *(v1 + 56);
    v56[1] = v46;
    v56[2] = v47;
    v57 = *(v1 + 72);
    *(v1 + 24) = v59;
    *(v1 + 40) = v60;
    *(v1 + 41) = 1;
    *(v1 + 42) = *v58;
    v48 = MEMORY[0x277D84F90];
    *(v1 + 56) = *&v58[14];
    *(v1 + 64) = v48;
    *(v1 + 72) = 0;
    v44(v56, v45);
    OUTLINED_FUNCTION_8_0();
    *(v1 + *(v49 + 120)) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_2157FDB54())
    {
      v50 = sub_21580BAD0();
      sub_21580B780("ActivityMonitor is deallocated before ActivitySpan's end() method is invoked. Activity's bookkeeping could be inaccurate.", 121, 2, &dword_2157E4000, v32, v50, MEMORY[0x277D84F90]);
    }

    return (*(v21 + 8))(&v61, v54);
  }
}

uint64_t sub_2157FE3CC(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  v6 = a3;
  OUTLINED_FUNCTION_3_1();
  v10 = *(*(v4 + *(v9 + 152)) + 16);

  os_unfair_lock_lock(v10);
  sub_2157FE9B8(v4, a1, a2, v6, a4);
  os_unfair_lock_unlock(v10);
}

uint64_t sub_2157FE46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21580BB00();
  (*(a4 + 40))(a3, a4);

  return sub_21580B7A0();
}

void sub_2157FE4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_21580BB00();
  v17 = (*(a8 + 40))(a7, a8);
  LOBYTE(v20) = a5;
  sub_2157EC660(v16, a2, v17, v18, v19, a1, a3, a4, v20, a6);
}

uint64_t sub_2157FE5BC()
{
  sub_2157FD298();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2157FE62C(uint64_t a1)
{
  if (!qword_28119CC60)
  {
    sub_21580B7C0();
    v1 = sub_21580BB40();
    if (!v2)
    {
      atomic_store(v1, &qword_28119CC60);
    }
  }
}

uint64_t sub_2157FE684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2157FE6E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2157FE728(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2157FE78C(uint64_t result, void (*a2)(void))
{
  if ((*(result + *(*result + 120)) & 1) == 0)
  {
    a2();
    return sub_2157FDE2C();
  }

  return result;
}

void sub_2157FE7E0(uint64_t a1)
{
  if (sub_2157FEB38(a1))
  {
    OUTLINED_FUNCTION_3_1();
    sub_21580BAB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_21580CC30;
    v2 = sub_2157FDA98();
    v4 = v3;
    v5 = MEMORY[0x277D837D0];
    *(v1 + 56) = MEMORY[0x277D837D0];
    v6 = sub_2157EDE30();
    *(v1 + 64) = v6;
    *(v1 + 32) = v2;
    *(v1 + 40) = v4;
    sub_2157EDDE0();
    OUTLINED_FUNCTION_7_1();
    v7 = sub_21580B840();
    *(v1 + 96) = v5;
    *(v1 + 104) = v6;
    *(v1 + 72) = v7;
    *(v1 + 80) = v8;
    OUTLINED_FUNCTION_3_4("Reporting to CA event: '%s'\n\twith data: %@");
    sub_21580B780(v9);

    sub_2157FDA44();
    v10 = sub_2157FDA98();
    v12 = v11;

    MEMORY[0x216071600](46, 0xE100000000000000);
    MEMORY[0x216071600](v10, v12);

    v13 = sub_21580B880();

    OUTLINED_FUNCTION_7_1();
    v14 = sub_21580B820();
    AnalyticsSendEvent();
  }
}

uint64_t sub_2157FE9B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 41) = 0;
  *(a1 + 56) = a5;
}

uint64_t sub_2157FEA04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 5);
  v10[0] = *(a1 + 3);
  v10[1] = v4;
  v11 = *(a1 + 7);
  v5 = v11;
  v12 = a1[9];
  v6 = v12;
  *a3 = v10[0];
  *(a3 + 16) = v4;
  *(a3 + 32) = v5;
  *(a3 + 48) = v6;
  v7 = type metadata accessor for ActivitySpan.ActivityData(0, *(v3 + 80), *(v3 + 88), a2);
  return (*(*(v7 - 8) + 16))(v9, v10, v7);
}

uint64_t sub_2157FEB38(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_0_5();
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  (*(v6 + 16))(&v29 - v9, v2 + *(v11 + 112), v5, v8);
  DynamicType = swift_getDynamicType();
  (*(v6 + 8))(v10, v5);
  v14 = dynamic_cast_existential_1_conditional(DynamicType, DynamicType, &protocol descriptor for __CoreAnalyticsActivity);
  result = 0;
  if (v14)
  {
    if (a1)
    {
      v16 = v13;
      v17 = *(v13 + 16);

      v18 = v17(v14, v16);
      v20 = v19;
      sub_21580B9E0();
      v21 = sub_21580BB60();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = a1;
      sub_2157F9884(v21, v18, v20, isUniquelyReferenced_nonNull_native);

      v23 = v29;
      v24 = (*(v16 + 8))(v14, v16);
      v26 = v25;
      sub_2157FDCCC();
      v27 = sub_21580BA90();
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v30 = v23;
      sub_2157F9884(v27, v24, v26, v28);

      return v30;
    }
  }

  return result;
}

uint64_t sub_2157FED98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F60, &qword_21580E0A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2157FEE4C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return swift_allocObject();
}

uint64_t sub_2157FEF0C()
{
  v0 = sub_21580B7F0();
  __swift_allocate_value_buffer(v0, qword_28119DA40);
  __swift_project_value_buffer(v0, qword_28119DA40);
  return sub_21580B7E0();
}

BOOL sub_2157FEF84(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    v1 = 1;
  }

  while ((v2 & 1) == 0 && qword_2827B47D0 != a1);
  return (v2 & 1) == 0;
}

id *sub_2157FEFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = v6;
  v43 = a4;
  v44 = a6;
  v41 = a5;
  v42 = a3;
  v45 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F60, &qword_21580E0A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v40[-v13];
  v15 = sub_21580B6C0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v40[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_weakInit();
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 256;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = MEMORY[0x277D84F90];
  *(v6 + 72) = 0;
  *(v6 + 88) = 0;
  sub_2157F74BC(0, &qword_28119CBA0, 0x277D86200);
  v46 = 0xD000000000000010;
  v47 = 0x800000021580F400;
  v50 = 45;
  v51 = 0xE100000000000000;
  v48 = 95;
  v49 = 0xE100000000000000;
  v39 = sub_2157F6758();
  sub_21580BB80();
  *(v6 + 96) = sub_21580BB30();
  v19 = *(*v6 + 136);
  v20 = sub_21580B7C0();
  __swift_storeEnumTagSinglePayload(v7 + v19, 1, 1, v20);
  v21 = *(*v7 + 19);
  type metadata accessor for Locker();
  v22 = swift_allocObject();
  v23 = swift_slowAlloc();
  *(v22 + 16) = v23;
  *v23 = 0;
  *(v7 + v21) = v22;
  sub_21580B6B0();
  v24 = v18;
  v25 = v45;
  (*(v16 + 32))(v7 + *(*v7 + 18), v24, v15);
  swift_weakAssign();
  v7[10] = v25;
  v26 = v7[12];

  sub_21580B7B0();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v20);
  v27 = *(*v7 + 17);
  swift_beginAccess();
  sub_2158027AC(v14, v7 + v27);
  swift_endAccess();
  v46 = v7;

  v28 = sub_21580B8E0();
  v30 = v29;
  v31 = *(*(a1 + 32) + 16);
  os_unfair_lock_lock(v31);
  sub_2157F92C0(a1, v28, v30, v7, &off_2827B56D8);

  os_unfair_lock_unlock(v31);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v32 + 8))(v7, &off_2827B56D8, ObjectType, v32);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_215802A40(v7 + v27, v11, &qword_27CA73F60, &qword_21580E0A0);
  result = __swift_getEnumTagSinglePayload(v11, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v35 = v7[12];
    v36 = sub_21580BB10();
    v37 = sub_2158019C0(v25);
    LOBYTE(v39) = v41;
    sub_2157EC660(v36, v35, v37, v38, 2, v11, v42, v43, v39, v44);

    (*(*(v20 - 8) + 8))(v11, v20);
    sub_2158014F8();

    return v7;
  }

  return result;
}

uint64_t sub_2157FF4A8()
{
  if (*(v0 + 88) != 1)
  {
    (*(*v0 + 400))();
  }

  swift_weakDestroy();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_3_1();
  sub_2157F7220(v0 + *(v1 + 136), &qword_27CA73F60, &qword_21580E0A0);
  OUTLINED_FUNCTION_3_1();
  v3 = *(v2 + 144);
  sub_21580B6C0();
  OUTLINED_FUNCTION_65();
  (*(v4 + 8))(v0 + v3);
  OUTLINED_FUNCTION_3_1();

  return v0;
}

uint64_t sub_2157FF5B8()
{
  OUTLINED_FUNCTION_3_1();
  v2 = *(*(v0 + *(v1 + 152)) + 16);

  os_unfair_lock_lock(v2);
  v35 = *(v0 + 41);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 64);
  swift_unknownObjectRetain();

  v37 = v5;

  os_unfair_lock_unlock(v2);

  v6 = *(v0 + 96);
  sub_21580BAC0();
  OUTLINED_FUNCTION_9_0("LEAKED SPAN: {{{");
  sub_21580B780(v7);
  sub_21580BAC0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21580CC20;
  sub_2158019C0(*(v0 + 80));
  v10 = sub_21580BC00();
  v12 = v11;
  v13 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v14 = sub_2157EDE30();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  *(v9 + 64) = v14;
  strcpy((v9 + 72), "networkRequest");
  *(v9 + 87) = -18;
  OUTLINED_FUNCTION_6_0();
  *(v9 + 136) = v13;
  *(v9 + 144) = v15;
  v36 = v15;
  *(v9 + 112) = 0xD000000000000010;
  *(v9 + 120) = v16;
  OUTLINED_FUNCTION_9_0("Name: %s, Category: %s, Subsystem: %s");
  sub_21580B780(v17);

  if ((v35 & 1) == 0)
  {
    sub_21580BAC0();
    v18 = OUTLINED_FUNCTION_7_2();
    *(v18 + 16) = xmmword_21580C9B0;
    v19 = sub_21580BC00();
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = v36;
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    OUTLINED_FUNCTION_6_2("Format string: %s", 17, v21, &dword_2157E4000);

    if (v3)
    {

      sub_21580BAC0();
      v22 = OUTLINED_FUNCTION_7_2();
      *(v22 + 16) = xmmword_21580C9B0;
      *(v22 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F38, &qword_21580DF70);
      *(v22 + 64) = sub_2157EF214(&qword_27CA73F40, &qword_27CA73F38, &qword_21580DF70, MEMORY[0x277CC9C50]);
      *(v22 + 32) = v3;
      OUTLINED_FUNCTION_6_2("Arguments: %@", 13, v23, &dword_2157E4000);
    }
  }

  if (v4)
  {

    sub_21580BAC0();
    v24 = OUTLINED_FUNCTION_7_2();
    *(v24 + 16) = xmmword_21580C9B0;
    *(v24 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F28, &qword_21580E0E0);
    *(v24 + 64) = sub_2157EF214(&qword_27CA73F30, &qword_27CA73F28, &qword_21580E0E0, MEMORY[0x277CC9BB8]);
    *(v24 + 32) = v4;
    OUTLINED_FUNCTION_6_2("Analytics: %@", 13, v25, &dword_2157E4000);
  }

  result = sub_215802A1C(v37);
  if (result)
  {
    v27 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v28 = 0;
    do
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2160718D0](v28, v37);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v28;
      sub_21580BAC0();
      v29 = OUTLINED_FUNCTION_7_0(v8);
      *(v29 + 16) = xmmword_21580C9B0;
      swift_unknownObjectRetain();
      v30 = sub_21580B8E0();
      *(v29 + 56) = MEMORY[0x277D837D0];
      *(v29 + 64) = v36;
      *(v29 + 32) = v30;
      *(v29 + 40) = v31;
      sub_21580B780("Leaked cancellables: %s", v34);
      swift_unknownObjectRelease();
    }

    while (v27 != v28);
  }

  v32 = sub_21580BAC0();
  sub_21580B780("}}}", 3, 2, &dword_2157E4000, v6, v32, MEMORY[0x277D84F90]);
  if (sub_2158008B8(&type metadata for ResourceNetworkActivity, &off_2827B5270, sub_2157EC608))
  {
    v33 = sub_21580BAD0();
    sub_21580B780("Some objects remain retained at the moment when all activities must be finalized. This could indicate deadlock, memory leak or not cancelled asynchronous procedures, such as networking or XPC calls.", 198, 2, &dword_2157E4000, v6, v33, MEMORY[0x277D84F90]);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_2157FFAD0()
{
  v1 = *(*(v0 + *(*v0 + 152)) + 16);

  os_unfair_lock_lock(v1);
  v31 = *(v0 + 32);
  HIDWORD(v30) = *(v0 + 40);
  v32 = *(v0 + 41);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 64);
  swift_unknownObjectRetain();

  v34 = v4;

  os_unfair_lock_unlock(v1);

  v5 = *(v0 + 96);
  v6 = sub_21580BAC0();
  sub_21580B780("LEAKED SPAN: {{{", 16, 2, &dword_2157E4000, v5, v6, MEMORY[0x277D84F90]);
  sub_21580BAC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21580CC20;
  sub_2158019C0(*(v0 + 80));
  v8 = sub_21580BC00();
  v10 = v9;
  v11 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v12 = sub_2157EDE30();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 64) = v12;
  strcpy((v7 + 72), "resourceAccess");
  *(v7 + 87) = -18;
  *(v7 + 136) = v11;
  *(v7 + 144) = v12;
  v33 = v12;
  *(v7 + 112) = 0xD000000000000010;
  *(v7 + 120) = 0x800000021580F400;
  sub_21580B780("Name: %s, Category: %s, Subsystem: %s", v28, v30, v31);

  if ((v32 & 1) == 0)
  {
    sub_21580BAC0();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_21580C9B0;
    v14 = sub_21580BC00();
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = v33;
    *(v13 + 32) = v14;
    *(v13 + 40) = v15;
    sub_21580B780("Format string: %s", v29);

    if (v2)
    {

      v16 = sub_21580BAC0();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_21580C9B0;
      *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F38, &qword_21580DF70);
      *(v17 + 64) = sub_2157EF214(&qword_27CA73F40, &qword_27CA73F38, &qword_21580DF70, MEMORY[0x277CC9C50]);
      *(v17 + 32) = v2;
      sub_21580B780("Arguments: %@", 13, 2, &dword_2157E4000, v5, v16, v17);
    }
  }

  if (v3)
  {

    v18 = sub_21580BAC0();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_21580C9B0;
    *(v19 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F28, &qword_21580E0E0);
    *(v19 + 64) = sub_2157EF214(&qword_27CA73F30, &qword_27CA73F28, &qword_21580E0E0, MEMORY[0x277CC9BB8]);
    *(v19 + 32) = v3;
    sub_21580B780("Analytics: %@", 13, 2, &dword_2157E4000, v5, v18, v19);
  }

  result = sub_215802A1C(v34);
  if (result)
  {
    v21 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v22 = 0;
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2160718D0](v22, v34);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v22;
      sub_21580BAC0();
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_21580C9B0;
      swift_unknownObjectRetain();
      v24 = sub_21580B8E0();
      *(v23 + 56) = MEMORY[0x277D837D0];
      *(v23 + 64) = v33;
      *(v23 + 32) = v24;
      *(v23 + 40) = v25;
      sub_21580B780("Leaked cancellables: %s", v29);
      swift_unknownObjectRelease();
    }

    while (v21 != v22);
  }

  v26 = sub_21580BAC0();
  sub_21580B780("}}}", 3, 2, &dword_2157E4000, v5, v26, MEMORY[0x277D84F90]);
  if (sub_2158008B8(&type metadata for ResourceAccessActivity, &off_2827B5728, sub_2157EC630))
  {
    v27 = sub_21580BAD0();
    sub_21580B780("Some objects remain retained at the moment when all activities must be finalized. This could indicate deadlock, memory leak or not cancelled asynchronous procedures, such as networking or XPC calls.", 198, 2, &dword_2157E4000, v5, v27, MEMORY[0x277D84F90]);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_215800060()
{
  v1 = v0;
  OUTLINED_FUNCTION_3_1();
  v3 = *(v0 + *(v2 + 464) + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 16);
  v6 = v5(ObjectType, v3);
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      [v8 statusCode];
      if (!(*(v3 + 8))(ObjectType, v3))
      {

        *&result = 0.0;
        return result;
      }

      OUTLINED_FUNCTION_6_0();
      v91 = 0xD000000000000021;
      v92 = v9;
      v10 = sub_21580BBC0();
      OUTLINED_FUNCTION_4_4(v10, v11, v12, v13, v14, v15, v16);
      v17 = sub_2157EDE84(v90);
      if (v93)
      {
        OUTLINED_FUNCTION_2_5(v17, v18, v19, MEMORY[0x277D84CC0], v20, v21, v22);
      }

      else
      {
        sub_2157F7220(&v91, &unk_27CA73D80, &unk_21580D0F0);
      }

      OUTLINED_FUNCTION_6_0();
      v91 = 0xD00000000000001DLL;
      v92 = v42;
      v43 = sub_21580BBC0();
      OUTLINED_FUNCTION_4_4(v43, v44, v45, v46, v47, v48, v49);
      v50 = sub_2157EDE84(v90);
      if (v93)
      {
        OUTLINED_FUNCTION_2_5(v50, v51, v52, MEMORY[0x277D84CC0], v53, v54, v55);
      }

      else
      {
        sub_2157F7220(&v91, &unk_27CA73D80, &unk_21580D0F0);
      }

      OUTLINED_FUNCTION_6_0();
      v56 = sub_21580BBC0();
      OUTLINED_FUNCTION_4_4(v56, v57, v58, v59, v60, v61, v62);
      v63 = sub_2157EDE84(v90);
      if (v93)
      {
        if (OUTLINED_FUNCTION_2_5(v63, v64, v65, MEMORY[0x277D839F8], v66, v67, v68))
        {
          v89 = -2.31584178e77;
          goto LABEL_26;
        }
      }

      else
      {
        sub_2157F7220(&v91, &unk_27CA73D80, &unk_21580D0F0);
      }

      OUTLINED_FUNCTION_6_0();
      v69 = sub_21580BBC0();
      OUTLINED_FUNCTION_4_4(v69, v70, v71, v72, v73, v74, v75);
      sub_2157EDE84(v90);
      if (v93)
      {
        if (swift_dynamicCast())
        {
LABEL_26:
          OUTLINED_FUNCTION_6_0();
          v76 = sub_21580BBC0();
          OUTLINED_FUNCTION_4_4(v76, v77, v78, v79, v80, v81, v82);

          v83 = sub_2157EDE84(v90);
          if (v93)
          {
            if (OUTLINED_FUNCTION_2_5(v83, v84, v85, MEMORY[0x277D839F8], v86, v87, v88))
            {
              *&result = -2.31584178e77 - v89;
              return result;
            }
          }

          else
          {
            sub_2157F7220(&v91, &unk_27CA73D80, &unk_21580D0F0);
          }

          goto LABEL_32;
        }
      }

      else
      {
        sub_2157F7220(&v91, &unk_27CA73D80, &unk_21580D0F0);
      }

LABEL_32:
      *&result = 0.0;
      return result;
    }
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  v24 = OUTLINED_FUNCTION_7_0(v23);
  *(v24 + 16) = xmmword_21580C9B0;
  v90[0] = v5(ObjectType, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73F90, &qword_21580CEC0);
  v25 = sub_21580B8E0();
  v27 = v26;
  v28 = MEMORY[0x277D837D0];
  *(v24 + 56) = MEMORY[0x277D837D0];
  v29 = sub_2157EDE30();
  *(v24 + 64) = v29;
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  OUTLINED_FUNCTION_9_0("UNIDENTIFIED_RESPONSE_TYPE=%{signpost.description:attribute,public}s");
  sub_2158013BC(v30, v31, v32, v33);

  OUTLINED_FUNCTION_8_0();
  v35 = *(*(v1 + *(v34 + 152)) + 16);

  os_unfair_lock_lock(v35);
  if ((*(v1 + 88) & 1) == 0)
  {
    OUTLINED_FUNCTION_8_0();
    v37 = *(v1 + *(v36 + 480));
    if (v37)
    {
      swift_unknownObjectRetain();
      if (nw_activity_is_activated())
      {
        OUTLINED_FUNCTION_8_0();
        nw_activity_complete_with_reason();
      }

      else
      {
        sub_21580BAA0();
        v39 = OUTLINED_FUNCTION_7_0(v23);
        *(v39 + 16) = xmmword_21580C9B0;
        v90[0] = v37;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D68, &qword_21580E0C0);
        v40 = sub_21580B8E0();
        *(v39 + 56) = v28;
        *(v39 + 64) = v29;
        *(v39 + 32) = v40;
        *(v39 + 40) = v41;
        sub_21580B780("Ending NetworkSpan before nw_activity (%s) was activated", 1);
      }

      swift_unknownObjectRelease();
    }

    sub_215800A48();
  }

  os_unfair_lock_unlock(v35);

  *&result = 0.0;
  return result;
}

void sub_215800608()
{
  if ((v0[88] & 1) == 0)
  {
    v1 = v0;
    v2 = sub_215800060();
    v5 = MEMORY[0x277D837D0];
    if (v6)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
      v8 = OUTLINED_FUNCTION_7_0(v7);
      *(v8 + 16) = xmmword_21580C9B0;
      v9 = *&v0[*(*v0 + 464) + 8];
      ObjectType = swift_getObjectType();
      (*(v9 + 16))(ObjectType, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73F90, &qword_21580CEC0);
      v11 = sub_21580B8E0();
      v13 = v12;
      *(v8 + 56) = v5;
      *(v8 + 64) = sub_2157EDE30();
      *(v8 + 32) = v11;
      *(v8 + 40) = v13;
      OUTLINED_FUNCTION_9_0("UNIDENTIFIED_RESPONSE_TYPE=%{signpost.description:attribute,public}s");
      sub_2158013BC(v14, v15, v16, v17);
    }

    else
    {
      (*(*v0 + 568))(v3, v4, *&v2);
    }

    v18 = *(*&v1[*(*v1 + 152)] + 16);

    os_unfair_lock_lock(v18);
    if ((v1[88] & 1) == 0)
    {
      if (*&v1[*(*v1 + 480)])
      {
        swift_unknownObjectRetain();
        if (nw_activity_is_activated())
        {
          nw_activity_complete_with_reason();
        }

        else
        {
          sub_21580BAA0();
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
          v20 = OUTLINED_FUNCTION_7_0(v19);
          *(v20 + 16) = xmmword_21580C9B0;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D68, &qword_21580E0C0);
          v21 = sub_21580B8E0();
          v23 = v22;
          *(v20 + 56) = v5;
          *(v20 + 64) = sub_2157EDE30();
          *(v20 + 32) = v21;
          *(v20 + 40) = v23;
          sub_21580B780("Ending NetworkSpan before nw_activity (%s) was activated", v24);
        }

        swift_unknownObjectRelease();
      }

      sub_215800A48();
    }

    os_unfair_lock_unlock(v18);
  }

  OUTLINED_FUNCTION_12_1();
}

uint64_t sub_2158008B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(v3 + 80);
  v8[3] = a1;
  v8[4] = a2;
  v8[0] = v5;
  v6 = __swift_project_boxed_opaque_existential_1(v8, a1);
  LOBYTE(a3) = a3(*v6);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return a3 & 1;
}

uint64_t sub_215800918()
{
  v1 = sub_21580B6C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_3_1();
  (*(v2 + 16))(v4, v0 + *(v5 + 144), v1);
  sub_21580B680();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_215800A48()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F60, &qword_21580E0A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v5);
  v7 = v37 - v6 + 16;
  v8 = *(v0 + 40);
  v39 = *(v0 + 24);
  v40 = v8;
  v41 = *(v0 + 56);
  v42 = *(v0 + 72);
  v9 = *(&v8 + 1);
  sub_215802A40(&v39, v37, &unk_27CA73FA0, &unk_21580E0C8);
  sub_215801668(v9, 0x526B726F7774656ELL, 0xEE00747365757165);
  if ((BYTE1(v40) & 1) == 0)
  {
    v10 = v41;
    if (v41)
    {
      v11 = v39;
      v12 = v40;
      v13 = *(v1 + 80);
      v14 = *(*v1 + 136);
      swift_beginAccess();
      sub_215802A40(v1 + v14, v7, &qword_27CA73F60, &qword_21580E0A0);
      v15 = sub_21580B7C0();
      result = __swift_getEnumTagSinglePayload(v7, 1, v15);
      if (result != 1)
      {
        v17 = *(v1 + 96);

        v18 = sub_21580BB00();
        v19 = sub_2158019C0(v13);
        LOBYTE(v35) = v12;
        sub_2157EC660(v18, v17, v19, v20, 2, v7, v11, *(&v11 + 1), v35, v10);

        (*(*(v15 - 8) + 8))(v7, v15);
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
      return result;
    }
  }

  v21 = *(v1 + 80);
  v22 = *(*v1 + 136);
  swift_beginAccess();
  sub_215802A40(v1 + v22, v4, &qword_27CA73F60, &qword_21580E0A0);
  v23 = sub_21580B7C0();
  result = __swift_getEnumTagSinglePayload(v4, 1, v23);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = *(v1 + 96);
  sub_21580BB00();
  sub_2158019C0(v21);
  sub_21580B7A0();
  (*(*(v23 - 8) + 8))(v4, v23);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    *&v37[0] = v1;
    v26 = sub_21580B8E0();
    v28 = v27;
    v29 = *(*(v25 + 32) + 16);
    os_unfair_lock_lock(v29);
    sub_2157F941C(v25, v26, v28, v1, &off_2827B56D8);

    os_unfair_lock_unlock(v29);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(v25 + 24);
      ObjectType = swift_getObjectType();
      (*(v30 + 16))(v1, &off_2827B56D8, ObjectType, v30);
      swift_unknownObjectRelease();
    }

    LOBYTE(v37[0]) = 1;

    sub_2157F7220(&v39, &unk_27CA73FA0, &unk_21580E0C8);
    v32 = v37[0];
    v33 = *(v1 + 40);
    v37[0] = *(v1 + 24);
    v37[1] = v33;
    v37[2] = *(v1 + 56);
    v38 = *(v1 + 72);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 41) = v32;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = MEMORY[0x277D84F90];
    *(v1 + 72) = 0;
    sub_2157F7220(v37, &unk_27CA73FA0, &unk_21580E0C8);
    *(v1 + 88) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_2158008B8(&type metadata for ResourceNetworkActivity, &off_2827B5270, sub_2157EC608))
    {
      v34 = sub_21580BAD0();
      sub_21580B780("ActivityMonitor is deallocated before ActivitySpan's end() method is invoked. Activity's bookkeeping could be inaccurate.", 121, 2, &dword_2157E4000, v17, v34, MEMORY[0x277D84F90]);
    }

    return sub_2157F7220(&v39, &unk_27CA73FA0, &unk_21580E0C8);
  }
}

uint64_t sub_215800F00()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F60, &qword_21580E0A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v5);
  v7 = v37 - v6 + 16;
  v8 = *(v0 + 40);
  v39 = *(v0 + 24);
  v40 = v8;
  v41 = *(v0 + 56);
  v42 = *(v0 + 72);
  v9 = *(&v8 + 1);
  sub_215802A40(&v39, v37, &unk_27CA73F78, &qword_21580E0B0);
  sub_215801668(v9, 0x656372756F736572, 0xEE00737365636341);
  if ((BYTE1(v40) & 1) == 0)
  {
    v10 = v41;
    if (v41)
    {
      v11 = v39;
      v12 = v40;
      v13 = *(v1 + 80);
      v14 = *(*v1 + 136);
      swift_beginAccess();
      sub_215802A40(v1 + v14, v7, &qword_27CA73F60, &qword_21580E0A0);
      v15 = sub_21580B7C0();
      result = __swift_getEnumTagSinglePayload(v7, 1, v15);
      if (result != 1)
      {
        v17 = *(v1 + 96);

        v18 = sub_21580BB00();
        v19 = sub_2158019C0(v13);
        LOBYTE(v35) = v12;
        sub_2157EC660(v18, v17, v19, v20, 2, v7, v11, *(&v11 + 1), v35, v10);

        (*(*(v15 - 8) + 8))(v7, v15);
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
      return result;
    }
  }

  v21 = *(v1 + 80);
  v22 = *(*v1 + 136);
  swift_beginAccess();
  sub_215802A40(v1 + v22, v4, &qword_27CA73F60, &qword_21580E0A0);
  v23 = sub_21580B7C0();
  result = __swift_getEnumTagSinglePayload(v4, 1, v23);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = *(v1 + 96);
  sub_21580BB00();
  sub_2158019C0(v21);
  sub_21580B7A0();
  (*(*(v23 - 8) + 8))(v4, v23);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    *&v37[0] = v1;
    v26 = sub_21580B8E0();
    v28 = v27;
    v29 = *(*(v25 + 32) + 16);
    os_unfair_lock_lock(v29);
    sub_2157F941C(v25, v26, v28, v1, &off_2827B56D8);

    os_unfair_lock_unlock(v29);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(v25 + 24);
      ObjectType = swift_getObjectType();
      (*(v30 + 16))(v1, &off_2827B56D8, ObjectType, v30);
      swift_unknownObjectRelease();
    }

    LOBYTE(v37[0]) = 1;

    sub_2157F7220(&v39, &unk_27CA73F78, &qword_21580E0B0);
    v32 = v37[0];
    v33 = *(v1 + 40);
    v37[0] = *(v1 + 24);
    v37[1] = v33;
    v37[2] = *(v1 + 56);
    v38 = *(v1 + 72);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 41) = v32;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = MEMORY[0x277D84F90];
    *(v1 + 72) = 0;
    sub_2157F7220(v37, &unk_27CA73F78, &qword_21580E0B0);
    *(v1 + 88) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_2158008B8(&type metadata for ResourceAccessActivity, &off_2827B5728, sub_2157EC630))
    {
      v34 = sub_21580BAD0();
      sub_21580B780("ActivityMonitor is deallocated before ActivitySpan's end() method is invoked. Activity's bookkeeping could be inaccurate.", 121, 2, &dword_2157E4000, v17, v34, MEMORY[0x277D84F90]);
    }

    return sub_2157F7220(&v39, &unk_27CA73F78, &qword_21580E0B0);
  }
}

uint64_t sub_2158013BC(const char *a1, uint64_t a2, char a3, uint64_t a4, ...)
{
  OUTLINED_FUNCTION_3_1();
  v10 = *(*(v4 + *(v9 + 152)) + 16);

  os_unfair_lock_lock(v10);
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 41) = 0;
  *(v4 + 56) = a4;

  os_unfair_lock_unlock(v10);
}

uint64_t sub_21580146C(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1();
  v4 = *(*(v1 + *(v3 + 152)) + 16);

  os_unfair_lock_lock(v4);
  *(v1 + 48) = a1;

  os_unfair_lock_unlock(v4);
}

uint64_t sub_2158014F8()
{
  v1 = *(v0 + 80);
  v5[3] = &type metadata for ResourceAccessActivity;
  v5[4] = &off_2827B5750;
  v5[0] = v1;
  v2 = __swift_project_boxed_opaque_existential_1(v5, &type metadata for ResourceAccessActivity);
  if (sub_2157FEF84(*v2))
  {
    MEMORY[0x216071600](46, 0xE100000000000000);

    MEMORY[0x216071600](0x656372756F736572, 0xEE00737365636341);

    sub_2158019C0(v1);
    v3 = sub_21580BC00();
    MEMORY[0x216071600](v3);

    MEMORY[0x216071600](46, 0xE100000000000000);

    sub_215801904(0xD000000000000010, 0x800000021580F400, v0);
  }

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void sub_215801668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_215801808(a1))
  {
    v6 = *(v3 + 96);
    v7 = sub_21580BAB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_21580CC30;
    v9 = MEMORY[0x277D837D0];
    *(v8 + 56) = MEMORY[0x277D837D0];
    v10 = sub_2157EDE30();
    *(v8 + 64) = v10;
    *(v8 + 32) = a2;
    *(v8 + 40) = a3;
    sub_2157F74BC(0, &qword_28119CBB0, 0x277D82BB8);
    OUTLINED_FUNCTION_11_0();
    v11 = sub_21580B840();
    *(v8 + 96) = v9;
    *(v8 + 104) = v10;
    *(v8 + 72) = v11;
    *(v8 + 80) = v12;
    sub_21580B780("Reporting to CA event: '%s'\n\twith data: %@", 42, 2, &dword_2157E4000, v6, v7, v8);

    OUTLINED_FUNCTION_6_0();
    MEMORY[0x216071600](46, 0xE100000000000000);
    MEMORY[0x216071600](a2, a3);
    v13 = sub_21580B880();

    OUTLINED_FUNCTION_11_0();
    v14 = sub_21580B820();
    AnalyticsSendEvent();

    OUTLINED_FUNCTION_12_1();
  }

  else
  {
    OUTLINED_FUNCTION_12_1();
  }
}

uint64_t sub_215801808(uint64_t result)
{
  if (result)
  {
    v1 = result;

    v2 = sub_21580BB60();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2157F9884(v2, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    sub_215800918();
    v4 = sub_21580BA90();
    v5 = swift_isUniquelyReferenced_nonNull_native();
    sub_2157F9884(v4, 0x6E6F697461727564, 0xE800000000000000, v5);
    return v1;
  }

  return result;
}

uint64_t sub_215801904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    *(a3 + 72) = os_transaction_create();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_21580BBE0();
  }
}

const char *sub_2158019C0(uint64_t a1)
{
  result = "unknown";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "configuration";
      break;
    case 2:
      result = "parsecdSearch";
      break;
    case 3:
      result = "parsecdZeroKeyWord";
      break;
    case 4:
      result = "parsecdLookup";
      break;
    case 5:
      result = "parsecdFlight";
      break;
    case 6:
      result = "parsecdMoreResults";
      break;
    case 7:
      result = "parsecdCard";
      break;
    case 8:
      result = "parsecdWarm";
      break;
    case 9:
      result = "bagResourceDownload";
      break;
    case 10:
      result = "pegasusKitVisualSearch";
      break;
    case 11:
      result = "pegasusKitSiriPersonalization";
      break;
    case 12:
      result = "pegasusKitHashtagImages";
      break;
    case 13:
      result = "pegasusKitAssistant";
      break;
    case 14:
      result = "pegasusKitBagFetchXPC";
      break;
    case 15:
      result = "pegasusKitContextFetchXPC";
      break;
    case 16:
      result = "pegasusKitLookup";
      break;
    case 17:
      result = "pegasusKitSpotlightZKW";
      break;
    case 18:
      result = "pegasusKitEngagementSearch";
      break;
    case 19:
      result = "engagementCache";
      break;
    case 20:
      result = "topicCache";
      break;
    case 21:
      result = "pegasusKitIntelligencePlatform";
      break;
    case 22:
    case 36:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
      goto LABEL_90;
    case 23:
      result = "pegasusKitIntelligenceFlow";
      break;
    case 24:
      result = "pegasusKitSafariAssistantPrefetch";
      break;
    case 25:
      result = "pegasusKitSafariAssistantSummarize";
      break;
    case 26:
      result = "pegasusKitEncryptedVisualSearch";
      break;
    case 27:
      result = "pegasusKitSportsWatchFace";
      break;
    case 28:
      result = "pegasusKitLookupSearch";
      break;
    case 29:
      result = "pegasusKitEncryptedVisualSearchConfig";
      break;
    case 30:
      result = "pegasusKitSafariSearch";
      break;
    case 31:
      result = "pegasusKitCameraVisualSearch";
      break;
    case 32:
      result = "pegasusKitEncryptedPQAGeo";
      break;
    case 33:
      result = "pegasusKitEncryptedPQAGeoConfig";
      break;
    case 34:
      result = "pegasusKitEncryptedVisualSearchSupportedUsecases";
      break;
    case 35:
      result = "pegasusKitEncryptedPQAGeoSupportedUsecases";
      break;
    case 37:
      result = "pegasusKitFlightUtilities";
      break;
    case 38:
      result = "pegasusKitFlightUtilitiesSubscribe";
      break;
    case 39:
      result = "pegasusKitDeviceExpertSearch";
      break;
    case 50:
      result = "installedAppWhitelist";
      break;
    case 60:
      result = "assetDeliveryPreloadAsset";
      break;
    case 61:
      result = "assetDeliveryPrefilterPrefetch";
      break;
    case 62:
      result = "assetDeliveryGetPreloadedData";
      break;
    case 63:
      result = "assetDeliveryBloomFilter";
      break;
    case 65:
      result = "assetDeliveryRetrieveAsset";
      break;
    case 66:
      result = "assetDeliveryRedact";
      break;
    case 67:
      result = "assetDeliveryFeatureSupported";
      break;
    case 100:
      result = "contextFetchAMSTreatments";
      break;
    default:
      switch(a1)
      {
        case 200:
          result = "feedbackEnumerator";
          break;
        case 201:
          result = "feedbackFileCreation";
          break;
        case 202:
          result = "simpleFeedbackEnumerator";
          break;
        case 300:
          result = "aggregation";
          break;
        case 301:
          result = "uploadaggregates";
          break;
        case 400:
          result = "clientXPCConnection";
          break;
        case 401:
          result = "clientSessionComplete";
          break;
        case 500:
          result = "sbaPlugin";
          break;
        case 600:
          result = "parsecdCloudConnectionSubscribe";
          break;
        case 601:
          result = "parsecdCloudConnectionUnsubscribe";
          break;
        case 602:
          result = "parsecdCloudConnectionFetchLatestPush";
          break;
        case 700:
          result = "parseKeys";
          break;
        default:
LABEL_90:
          result = sub_21580BD50();
          __break(1u);
          break;
      }

      break;
  }

  return result;
}

id *sub_215801DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = a5 & 1;
  *(v6 + qword_28119D500) = 0;
  *(v6 + qword_28119DA68) = 0;
  v12 = v6 + qword_28119DA60;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v6 + qword_28119D508) = 0;
  v13 = qword_28119DA58;
  v14 = sub_21580B760();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v6 + v13, a3, v14);
  *v12 = a4;
  *(v12 + 8) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  if (a5)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21580C9B0;
    v17 = sub_21580B740();
    v19 = v18;
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = sub_2157EDE30();
    *(inited + 32) = v17;
    *(inited + 40) = v19;
    v20 = "client=%{signpost.description:attribute,public}s";
    v21 = a1;
    v22 = a2;
    v23 = 48;
    v24 = inited;
  }

  else
  {
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_21580CC30;
    v26 = sub_21580B740();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x277D837D0];
    v29 = sub_2157EDE30();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    v30 = MEMORY[0x277D84D90];
    *(v25 + 96) = MEMORY[0x277D84D38];
    *(v25 + 104) = v30;
    *(v25 + 64) = v29;
    *(v25 + 72) = a4;
    v20 = "client=%{signpost.description:attribute,public}s, identifier=%{signpost.description:attribute,public}llu";
    v21 = a1;
    v22 = a2;
    v23 = 104;
    v24 = v25;
  }

  v31 = sub_2157FEFAC(v21, v22, v20, v23, 2, v24);
  (*(v15 + 8))(a3, v14);
  return v31;
}

uint64_t sub_215802000()
{

  v1 = qword_28119DA58;
  sub_21580B760();
  OUTLINED_FUNCTION_65();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_21580206C(uint64_t a1)
{
  if ((*(v1 + 88) & 1) == 0)
  {
    sub_215802470();
  }

  v2 = sub_2157FF4A8();

  v3 = qword_28119DA58;
  sub_21580B760();
  OUTLINED_FUNCTION_65();
  (*(v4 + 8))(v2 + v3);
  return v2;
}

uint64_t sub_2158020E4(uint64_t a1)
{
  v1 = sub_21580206C(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t type metadata accessor for ResourceAccessSpan(uint64_t a1)
{
  result = qword_28119D4E8;
  if (!qword_28119D4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_215802184(uint64_t a1)
{
  result = sub_21580B760();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21580223C(uint64_t a1)
{
  sub_21580BAC0();
  OUTLINED_FUNCTION_1_6("LEAKED RESOURCE ACCESS SPAN: {{{");
  sub_21580B780(v2);
  sub_2157FFAD0();
  sub_21580BAC0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  v4 = OUTLINED_FUNCTION_7_0(v3);
  *(v4 + 16) = xmmword_21580C9B0;
  v5 = sub_21580B8E0();
  v7 = v6;
  v8 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v9 = sub_2157EDE30();
  *(v4 + 64) = v9;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  OUTLINED_FUNCTION_1_6("Outcome: %s");
  sub_21580B780(v10);

  sub_21580BAC0();
  v11 = OUTLINED_FUNCTION_7_0(v3);
  *(v11 + 16) = xmmword_21580C9B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FB0, &qword_21580E0D8);
  v12 = sub_21580B8E0();
  *(v11 + 56) = v8;
  *(v11 + 64) = v9;
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  OUTLINED_FUNCTION_1_6("Identifier: %s");
  sub_21580B780(v14);

  sub_21580BAC0();
  v15 = OUTLINED_FUNCTION_7_0(v3);
  v16 = *(v1 + qword_28119DA68);
  *(v15 + 16) = xmmword_21580C9B0;
  v17 = v16 == 0;
  v18 = 7562617;
  if (v17)
  {
    v18 = 28526;
  }

  v19 = 0xE300000000000000;
  *(v15 + 56) = v8;
  *(v15 + 64) = v9;
  if (v17)
  {
    v19 = 0xE200000000000000;
  }

  *(v15 + 32) = v18;
  *(v15 + 40) = v19;
  OUTLINED_FUNCTION_1_6("Has network span: %s");
  sub_21580B780(v20);

  sub_21580BAC0();
  OUTLINED_FUNCTION_1_6("}}}");
  return sub_21580B780(v21);
}

void sub_215802470()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    v1 = v0;
    if (*(v0 + qword_28119DA68))
    {

      sub_215800608();
    }

    v2 = MEMORY[0x277D837D0];
    if ((*(v0 + qword_28119D508) & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73F68, &qword_21580E0A8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21580CC30;
      *(inited + 32) = 0x726574706F6461;
      *(inited + 40) = 0xE700000000000000;
      sub_21580B750();
      *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
      *(inited + 56) = 0x656D6F6374756FLL;
      *(inited + 64) = 0xE700000000000000;
      *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
      sub_2157F74BC(0, &qword_28119CBC0, 0x277CCABB0);
      v4 = sub_21580B850();
      sub_21580281C(v4);
      v6 = v5;

      sub_21580146C(v6);
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
    v8 = OUTLINED_FUNCTION_7_0(v7);
    *(v8 + 16) = xmmword_21580C9B0;
    v9 = sub_21580B8E0();
    v11 = v10;
    *(v8 + 56) = v2;
    *(v8 + 64) = sub_2157EDE30();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    OUTLINED_FUNCTION_9_0("outcome=%{signpost.description:attribute,public}s");
    sub_2158013BC(v12, v13, v14, v15);

    OUTLINED_FUNCTION_8_0();
    v17 = *(*(v1 + *(v16 + 152)) + 16);

    os_unfair_lock_lock(v17);
    if ((*(v1 + 88) & 1) == 0)
    {
      sub_215800F00();
    }

    os_unfair_lock_unlock(v17);
  }
}

unint64_t sub_2158026D4(uint64_t a1)
{
  *(a1 + 8) = sub_215802704();
  result = sub_215802758();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_215802704()
{
  result = qword_28119D230;
  if (!qword_28119D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119D230);
  }

  return result;
}

unint64_t sub_215802758()
{
  result = qword_28119D218;
  if (!qword_28119D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119D218);
  }

  return result;
}

uint64_t sub_2158027AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F60, &qword_21580E0A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_21580281C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F88, &qword_21580E0B8);
    v2 = sub_21580BC90();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = v14;
    v16 = sub_2158090E4(v13, v12);
    v17 = v16;
    if (v18)
    {
      v19 = (v2[6] + 16 * v16);
      *v19 = v13;
      v19[1] = v12;

      v20 = v2[7];
      v21 = *(v20 + 8 * v17);
      *(v20 + 8 * v17) = v15;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      v22 = (v2[6] + 16 * v16);
      *v22 = v13;
      v22[1] = v12;
      *(v2[7] + 8 * v16) = v15;
      v23 = v2[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_20;
      }

      v2[2] = v25;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_215802A1C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

uint64_t sub_215802A40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_4_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return sub_215803648(v7, &v11, &v10);
}

uint64_t OUTLINED_FUNCTION_6_2(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_21580B780(a1, a2, 2, a4, v6, v4, v5);
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return swift_allocObject();
}

uint64_t sub_215802B64()
{
  result = sub_21580B880();
  qword_28119DA38 = result;
  return result;
}

uint64_t sub_215802BB4(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_215802C04(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_215802CAC(void *a1, unint64_t a2, void *a3, unint64_t a4, char a5)
{
  v30 = a1;
  v31 = a2;
  v29 = &v30;
  if (sub_215803264(sub_215803340, v28, &unk_2827B4658))
  {

    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7(&qword_28119CC70);
    }

    v10 = sub_21580B7F0();
    __swift_project_value_buffer(v10, qword_28119DA40);

    v11 = sub_21580B7D0();
    v12 = sub_21580BAC0();

    if (!os_log_type_enabled(v11, v12))
    {

      goto LABEL_11;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136642819;
    v15 = sub_215808B34(a1, a2, &v30);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_2157E4000, v11, v12, "asset specifier got unsupported country code %{sensitive}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_3_5();
    goto LABEL_6;
  }

  v30 = a3;
  v31 = a4;
  MEMORY[0x28223BE20](v16);
  v27[2] = &v30;
  if (!sub_215803264(sub_215803374, v27, &unk_2827B4698))
  {
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7(&qword_28119CC70);
    }

    v18 = sub_21580B7F0();
    __swift_project_value_buffer(v18, qword_28119DA40);

    v19 = sub_21580B7D0();
    v20 = sub_21580BAC0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136642819;
      v23 = sub_215808B34(a3, a4, &v30);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_2157E4000, v19, v20, "asset specifier got unsupported locale %{sensitive}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_3_5();
    }

    else
    {
    }

    return 1;
  }

  if (a5)
  {
    return 0;
  }

  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_28119CC70);
  }

  v24 = sub_21580B7F0();
  __swift_project_value_buffer(v24, qword_28119DA40);
  v11 = sub_21580B7D0();
  v25 = sub_21580BAC0();
  if (os_log_type_enabled(v11, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2157E4000, v11, v25, "asset specifier is disabled by os eligibility", v26, 2u);
LABEL_6:
    OUTLINED_FUNCTION_3_5();
  }

LABEL_11:

  return 1;
}

BOOL sub_215803050(uint64_t a1, uint64_t a2)
{
  v2 = sub_21580BCA0();

  return v2 != 0;
}

BOOL sub_2158030A8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_215803050(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2158030E4()
{
  result = qword_28119CDF0;
  if (!qword_28119CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CDF0);
  }

  return result;
}

BOOL sub_215803138(uint64_t a1, uint64_t a2)
{
  v2 = sub_21580BCA0();

  return v2 != 0;
}

BOOL sub_215803180@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_215803138(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2158031CC()
{
  result = qword_28119CFE8;
  if (!qword_28119CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CFE8);
  }

  return result;
}

uint64_t sub_215803220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_21580BD30() & 1;
  }
}

BOOL sub_215803264(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t OUTLINED_FUNCTION_1_7(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_5()
{

  JUMPOUT(0x216072190);
}

uint64_t sub_2158033D4()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1);
  v2 = *(v0 + 16);

  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t sub_215803414()
{
  v1 = v0[5];
  os_unfair_lock_lock(v1);
  v2 = v0[2];
  sub_215809F7C(v2, v0[3], v0[4]);
  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t sub_215803470()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1);
  v2 = *(v0 + 16);
  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t sub_2158034A8()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1);
  v2 = *(v0 + 16);

  os_unfair_lock_unlock(v1);
  return v2;
}

void sub_2158034E8(char a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3);
  *(v1 + 16) = a1;

  os_unfair_lock_unlock(v3);
}

void sub_215803534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  os_unfair_lock_lock(v7);
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_215809C2C(v8, v9, v10);

  os_unfair_lock_unlock(v7);
}

void sub_2158035A0(uint64_t a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3);
  *(v1 + 16) = a1;

  os_unfair_lock_unlock(v3);
}

void sub_2158035F4(uint64_t a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3);
  *(v1 + 16) = a1;

  os_unfair_lock_unlock(v3);
}

double sub_215803648@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_2158090A0(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_2157F7444(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *sub_2158036AC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_215809160();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(a1 + 56) + 8 * v2);
  v5 = v4;
  return v4;
}

uint64_t sub_2158036F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = sub_2158090E4(a1, a2);
    if (v4)
    {
      OUTLINED_FUNCTION_60_0(v3);
    }
  }

  return OUTLINED_FUNCTION_27();
}

uint64_t sub_215803738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2158090E4(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_215803788(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_2158091C0(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2158037D8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_215809160();
  if (v1)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_215803828(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = sub_215809160();
    if (v2)
    {
      OUTLINED_FUNCTION_60_0(v1);
    }
  }

  return OUTLINED_FUNCTION_27();
}

uint64_t sub_21580386C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2158090E4(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

void sub_2158038BC(char a1)
{
  Lock.lock()();
  swift_beginAccess();
  *(v1 + 24) = a1;
  Lock.unlock()();
}

void sub_215803914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_65_0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73C68, &qword_21580E930);
  OUTLINED_FUNCTION_48(v13);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v14);
  v16 = v27 - v15;
  sub_2157EC008(v10, v27 - v15, &qword_27CA73C68, &qword_21580E930);
  v17 = sub_21580BA60();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v17);

  if (EnumTagSinglePayload == 1)
  {
    sub_2157EC06C(v16, &qword_27CA73C68, &qword_21580E930);
  }

  else
  {
    sub_21580BA50();
    (*(*(v17 - 8) + 8))(v16, v17);
  }

  v19 = *(v6 + 16);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = sub_21580BA10();
    v22 = v21;
    swift_unknownObjectRelease();
    if (v12)
    {
LABEL_6:
      v23 = sub_21580B8F0() + 32;
      v24 = swift_allocObject();
      *(v24 + 16) = v8;
      *(v24 + 24) = v6;

      if (v22 | v20)
      {
        v28[0] = 0;
        v28[1] = 0;
        v25 = v28;
        v28[2] = v20;
        v28[3] = v22;
      }

      else
      {
        v25 = 0;
      }

      v27[1] = 7;
      v27[2] = v25;
      v27[3] = v23;
      swift_task_create();

      sub_2157EC06C(v10, &qword_27CA73C68, &qword_21580E930);

      goto LABEL_14;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (v12)
    {
      goto LABEL_6;
    }
  }

  sub_2157EC06C(v10, &qword_27CA73C68, &qword_21580E930);
  v26 = swift_allocObject();
  *(v26 + 16) = v8;
  *(v26 + 24) = v6;
  if (v22 | v20)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v20;
    v28[7] = v22;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_61_0();
}

uint64_t sub_215803BE0()
{

  v0 = sub_215803470();

  return v0 & 1;
}

uint64_t sub_215803C1C(char a1)
{

  sub_2158034E8(a1);
}

uint64_t sub_215803C64()
{

  v0 = sub_215803414();

  return v0;
}

uint64_t sub_215803CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_215803534(a1, a2, a3);
}

uint64_t sub_215803D18()
{

  v0 = sub_2158034A8();

  return v0;
}

uint64_t sub_215803D54(uint64_t a1)
{

  sub_2158035F4(a1);
}

void sub_215803D9C()
{
  v1 = v0;
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_28119CC70);
  }

  v2 = sub_21580B7F0();
  __swift_project_value_buffer(v2, qword_28119DA40);
  v3 = sub_21580B7D0();
  v4 = sub_21580BAE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_79();
    *v5 = 0;
    _os_log_impl(&dword_2157E4000, v3, v4, "SafariSummarizationPrefetch - Canceling task if needed", v5, 2u);
    OUTLINED_FUNCTION_8_2();
  }

  if (sub_215803D18())
  {
    sub_21580BA70();
  }

  sub_215803D54(0);
  OUTLINED_FUNCTION_57();
  sub_215803CB8(v6, v7, v8);
  oslog = sub_21580B7D0();
  sub_21580BAE0();
  OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = OUTLINED_FUNCTION_79();
    *v10 = 0;
    _os_log_impl(&dword_2157E4000, oslog, v1, "SafariSummarizationPrefetch - Successfully reset filter", v10, 2u);
    OUTLINED_FUNCTION_12_2();
  }
}

uint64_t sub_215803F34()
{
  v1 = *(v0[5] + 160);

  Lock.lock()();
  swift_beginAccess();
  if (*(v1 + 24))
  {
    Lock.unlock()();

    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7(&qword_28119CC70);
    }

    v2 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v2, qword_28119DA40);
    v3 = sub_21580B7D0();
    sub_21580BAE0();
    OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_25(v5);
      OUTLINED_FUNCTION_18(&dword_2157E4000, v6, v7, "SafariSummarizationPrefetch - Throttling new submission. Loading the url path filter data is already in progress");
      OUTLINED_FUNCTION_7_3();
    }

    OUTLINED_FUNCTION_54_0();

    return v8(0);
  }

  else
  {
    *(v1 + 24) = 1;
    Lock.unlock()();

    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7(&qword_28119CC70);
    }

    v10 = sub_21580B7F0();
    v0[6] = __swift_project_value_buffer(v10, qword_28119DA40);
    v11 = sub_21580B7D0();
    sub_21580BAE0();
    OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_25(v13);
      OUTLINED_FUNCTION_18(&dword_2157E4000, v14, v15, "SafariSummarizationPrefetch - Start loading the url path filter data");
      OUTLINED_FUNCTION_7_3();
    }

    v16 = swift_task_alloc();
    v0[7] = v16;
    *v16 = v0;
    v16[1] = sub_215804144;

    return sub_215804558();
  }
}

uint64_t sub_215804144()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v3[8] = v1;
  v3[9] = v2;
  v3[10] = v4;
  v3[11] = v0;

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_215804250()
{
  OUTLINED_FUNCTION_31();

  v1 = sub_215803C64();
  v4 = v0[9];
  if (v2)
  {
    v5 = v1;
    v6 = v2;
    v7 = v3;
    v8 = v0[8];

    sub_215809C2C(v5, v6, v7);
    if (v8 == v5 && v6 == v4)
    {

LABEL_14:

LABEL_15:
      v16 = 0;
      v17 = v0[5];
      goto LABEL_17;
    }

    v10 = sub_21580BD30();

    if (v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  if (sub_21580BA80())
  {

    v11 = sub_21580B7D0();
    sub_21580BAE0();
    OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_25(v13);
      OUTLINED_FUNCTION_18(&dword_2157E4000, v14, v15, "SafariSummarizationPrefetch - Task cancelled, skip updating urlRedactPatterns");
      OUTLINED_FUNCTION_7_3();
    }

    goto LABEL_15;
  }

  v17 = v0[5];
  sub_215803CB8(v0[8], v0[9], v0[10]);
  v16 = 1;
LABEL_17:
  sub_215804454(v17);
  OUTLINED_FUNCTION_54_0();

  return v18(v16);
}

uint64_t sub_2158043F0()
{
  OUTLINED_FUNCTION_3();

  sub_215804454(*(v0 + 40));
  OUTLINED_FUNCTION_54_0();

  return v1(0);
}

uint64_t sub_215804454(uint64_t a1)
{
  if (qword_28119CC70 != -1)
  {
    swift_once();
  }

  v1 = sub_21580B7F0();
  __swift_project_value_buffer(v1, qword_28119DA40);
  v2 = sub_21580B7D0();
  v3 = sub_21580BAE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2157E4000, v2, v3, "SafariSummarizationPrefetch - Finish loading the url path filter data", v4, 2u);
    MEMORY[0x216072190](v4, -1, -1);
  }

  sub_2158038BC(0);
}

uint64_t sub_215804558()
{
  OUTLINED_FUNCTION_3();
  v1[20] = v0;
  v2 = sub_21580B3E0();
  v1[21] = v2;
  OUTLINED_FUNCTION_6_3(v2);
  v1[22] = v3;
  v1[23] = OUTLINED_FUNCTION_49_0();
  v4 = sub_21580B8D0();
  v1[24] = v4;
  OUTLINED_FUNCTION_6_3(v4);
  v1[25] = v5;
  v1[26] = OUTLINED_FUNCTION_49_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FE8, &qword_21580E968);
  v1[27] = v6;
  OUTLINED_FUNCTION_6_3(v6);
  v1[28] = v7;
  v1[29] = OUTLINED_FUNCTION_49_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FF0, &unk_21580E970);
  v1[30] = v8;
  OUTLINED_FUNCTION_6_3(v8);
  v1[31] = v9;
  v1[32] = OUTLINED_FUNCTION_49_0();
  v10 = sub_21580B5E0();
  v1[33] = v10;
  OUTLINED_FUNCTION_6_3(v10);
  v1[34] = v11;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v12 = sub_21580B700();
  v1[39] = v12;
  OUTLINED_FUNCTION_6_3(v12);
  v1[40] = v13;
  v1[41] = OUTLINED_FUNCTION_49_0();
  v14 = sub_21580B760();
  OUTLINED_FUNCTION_48(v14);
  v1[42] = OUTLINED_FUNCTION_49_0();
  v15 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_2158047DC()
{
  v76 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 160);
  v3 = *(v2 + 104);
  (*(*(v0 + 320) + 104))(*(v0 + 328), *MEMORY[0x277D39D88], *(v0 + 312));

  sub_21580B770();
  v4 = type metadata accessor for ResourceAccessSpan(0);
  OUTLINED_FUNCTION_67_0(v4);
  v5 = OUTLINED_FUNCTION_46_0(v3, 60, v1);
  v6 = v5;
  *(v0 + 344) = v5;
  if ((*(v2 + 128) & 1) == 0)
  {
    *(v5 + qword_28119D508) = 1;
  }

  v7 = *(v0 + 160);
  v8 = v7[5];
  if (!v8)
  {
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7(&qword_28119CC70);
    }

    v17 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v17, qword_28119DA40);
    v18 = sub_21580B7D0();
    v19 = sub_21580BAE0();
    if (os_log_type_enabled(v18, v19))
    {
      *OUTLINED_FUNCTION_79() = 0;
      OUTLINED_FUNCTION_17_0();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_8_2();
    }

    v25 = qword_28119D500;
    v26 = 82;
    goto LABEL_12;
  }

  v9 = v7[4];
  v10 = v7[14];
  v11 = v7[6];
  v12 = v7[7];

  v10(v9, v8, v11, v12);

  if (!*(v0 + 80))
  {
    sub_2157EC06C(v0 + 56, &qword_27CA73C10, &qword_21580CB30);
    v25 = qword_28119D500;
    v26 = 97;
LABEL_12:
    *(v6 + v25) = v26;
    sub_215802470();
    sub_215809E5C();
    OUTLINED_FUNCTION_68_0(&type metadata for SafariSummarizationPrefetchRequestFilterError);
    *v27 = 0;
    swift_willThrow();

    goto LABEL_34;
  }

  v13 = *(v0 + 296);
  v14 = *(v0 + 160);
  sub_2157E59C0((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v14 + 64), *(v14 + 88));
  v15 = sub_2157F4884(v13, (v0 + 16), v6);
  *(v0 + 352) = v15;
  *(v0 + 360) = v16;
  v28 = v15;
  v29 = v16;
  (*(*(v0 + 272) + 32))(*(v0 + 304), *(v0 + 296), *(v0 + 264));
  v30 = sub_215803C64();
  if (!v31)
  {
    goto LABEL_19;
  }

  v33 = v30;
  v34 = v31;
  v35 = v32;

  sub_215809C2C(v33, v34, v35);
  if (v28 == v33 && v34 == v29)
  {
  }

  else
  {
    v37 = sub_21580BD30();

    if ((v37 & 1) == 0)
    {
LABEL_19:
      if (qword_28119CC70 != -1)
      {
        OUTLINED_FUNCTION_1_7(&qword_28119CC70);
      }

      v38 = *(v0 + 272);
      v39 = sub_21580B7F0();
      v40 = __swift_project_value_buffer(v39, qword_28119DA40);
      *(v0 + 368) = v40;
      *(v0 + 376) = *(v38 + 16);
      *(v0 + 384) = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v41 = OUTLINED_FUNCTION_27();
      v42(v41);
      v43 = sub_21580B7D0();
      v44 = sub_21580BAE0();
      v45 = os_log_type_enabled(v43, v44);
      v46 = *(v0 + 288);
      v47 = *(v0 + 264);
      v48 = *(v0 + 272);
      if (v45)
      {
        OUTLINED_FUNCTION_35_0();
        v74 = OUTLINED_FUNCTION_32_0();
        v75[0] = v74;
        *v40 = 136642819;
        sub_21580B5A0();
        v49 = *(v48 + 8);
        v49(v46, v47);
        v50 = OUTLINED_FUNCTION_57_0();
        v53 = sub_215808B34(v50, v51, v52);

        *(v40 + 4) = v53;
        _os_log_impl(&dword_2157E4000, v43, v44, "SafariSummarizationPrefetch - Scanning url path filter jsonl file at path: %{sensitive}s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v74);
        OUTLINED_FUNCTION_12_2();
        OUTLINED_FUNCTION_8_2();
      }

      else
      {

        v49 = *(v48 + 8);
        v49(v46, v47);
      }

      *(v0 + 392) = v49;
      v64 = *(v0 + 224);
      v63 = *(v0 + 232);
      v65 = *(v0 + 216);
      *(v0 + 400) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FF8, &qword_21580E980);
      v66 = sub_21580B850();
      sub_21580B5B0();
      sub_21580B510();
      (*(v64 + 8))(v63, v65);
      *(v0 + 448) = *MEMORY[0x277CC86A8];
      *(v0 + 408) = v66;
      *(v0 + 452) = 0;
      sub_215809EB0();
      v67 = swift_task_alloc();
      *(v0 + 416) = v67;
      *v67 = v0;
      v68 = OUTLINED_FUNCTION_9_2(v67);

      return MEMORY[0x282200308](v68);
    }
  }

  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_28119CC70);
  }

  v54 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v54, qword_28119DA40);

  v55 = sub_21580B7D0();
  sub_21580BAE0();

  if (OUTLINED_FUNCTION_66())
  {
    OUTLINED_FUNCTION_35_0();
    v56 = OUTLINED_FUNCTION_32_0();
    v75[0] = v56;
    *v35 = 136315138;
    v57 = sub_215808B34(v28, v29, v75);

    *(v35 + 4) = v57;
    OUTLINED_FUNCTION_17_0();
    _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    OUTLINED_FUNCTION_3_5();
    OUTLINED_FUNCTION_8_2();
  }

  else
  {
  }

  *(v6 + qword_28119D500) = 96;
  sub_215802470();
  sub_215809E5C();
  OUTLINED_FUNCTION_68_0(&type metadata for SafariSummarizationPrefetchRequestFilterError);
  *v69 = 2;
  swift_willThrow();

  v70 = OUTLINED_FUNCTION_56();
  v71(v70);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_34:
  OUTLINED_FUNCTION_10_1();

  OUTLINED_FUNCTION_6();

  return v72();
}

uint64_t sub_21580501C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v3 + 424) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_215805148(uint64_t a1)
{
  v118 = v1;
  v5 = *(v1 + 440);
  if (!v5)
  {
    v26 = *(v1 + 408);
    (*(*(v1 + 248) + 8))(*(v1 + 256), *(v1 + 240));

    v27 = sub_21580B7D0();
    sub_21580BAE0();
    OUTLINED_FUNCTION_16_0();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v1 + 408);
    if (v29)
    {
      v31 = OUTLINED_FUNCTION_35_0();
      *v31 = 134217984;
      *(v31 + 4) = *(v30 + 16);

      _os_log_impl(&dword_2157E4000, v27, v26, "SafariSummarizationPrefetch - Made UrlRedactMap with %ld entries", v31, 0xCu);
      OUTLINED_FUNCTION_8_2();
    }

    else
    {
    }

    v45 = 81;
    switch(*(v1 + 452))
    {
      case 0:
        goto LABEL_17;
      case 1:
      case 2:
      case 3:
      case 8:
      case 9:
      case 0xA:
      case 0xB:
      case 0x10:
      case 0x11:
      case 0x12:
      case 0x13:
      case 0x18:
      case 0x19:
      case 0x1A:
      case 0x1B:
LABEL_16:
        v45 = *(v1 + 452);
LABEL_17:
        v46 = *(v1 + 392);
        v47 = *(v1 + 304);
        v48 = *(v1 + 264);
        *(*(v1 + 344) + qword_28119D500) = v45;
        sub_215802470();

        v46(v47, v48);
        __swift_destroy_boxed_opaque_existential_1((v1 + 16));

        OUTLINED_FUNCTION_40_0();

        __asm { BRAA            X4, X16 }

        return result;
      case 4:
      case 5:
      case 6:
      case 7:
      case 0xC:
      case 0xD:
      case 0xE:
      case 0xF:
      case 0x14:
      case 0x15:
      case 0x16:
      case 0x17:
        goto LABEL_65;
      default:
        switch(*(v1 + 452))
        {
          case 'D':
          case 'E':
          case 'F':
          case 'G':
          case 'L':
          case 'M':
          case 'N':
          case 'O':
          case 'T':
          case 'U':
          case 'V':
          case 'W':
            goto LABEL_65;
          case 'Q':
            goto LABEL_17;
          default:
            goto LABEL_16;
        }
    }

    goto LABEL_65;
  }

  if (sub_21580BA80())
  {
    v6 = *(v1 + 400);

    sub_21580B850();

    v7 = sub_21580B7D0();
    sub_21580BAC0();
    OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_25(v9);
      _os_log_impl(&dword_2157E4000, v7, v6, "SafariSummarizationPrefetch - Task cancelled, exit scanning path filter json file", v5, 2u);
      OUTLINED_FUNCTION_7_3();
    }

    v10 = *(v1 + 344);

    *(v10 + qword_28119D500) = 94;
    sub_215802470();
    sub_215809E5C();
    v11 = OUTLINED_FUNCTION_68_0(&type metadata for SafariSummarizationPrefetchRequestFilterError);
    *v12 = 3;
    swift_willThrow();
    v13 = OUTLINED_FUNCTION_18_1();
    v14(v13);
    sub_21580B850();

    v4(v2, v7, v3);
    v15 = v11;
    v16 = sub_21580B7D0();
    v17 = sub_21580BAC0();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v1 + 392);
    v20 = *(v1 + 280);
    if (v18)
    {
      v113 = v17;
      v21 = OUTLINED_FUNCTION_58();
      v110 = OUTLINED_FUNCTION_50_0();
      v115 = OUTLINED_FUNCTION_34_0();
      v117[0] = v115;
      *v21 = 136643075;
      v22 = sub_21580B5A0();
      v3 = v23;
      v24 = OUTLINED_FUNCTION_4_5();
      v19(v24);
      sub_215808B34(v22, v3, v117);

      OUTLINED_FUNCTION_63_0();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v25;
      *v110 = v25;
      OUTLINED_FUNCTION_64_0(&dword_2157E4000, "SafariSummarizationPrefetch - Failed while scanning url path filter jsonl file at path: %{sensitive}s, with error: %@", v113);
      sub_2157EC06C(v110, &qword_27CA73DA8, &qword_21580D0D8);
      OUTLINED_FUNCTION_12_2();
      v20 = v115;
      __swift_destroy_boxed_opaque_existential_1(v115);
      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_8_2();
    }

    else
    {

      v51 = OUTLINED_FUNCTION_4_5();
      v19(v51);
    }

    OUTLINED_FUNCTION_53_0();
    *(v20 + qword_28119D500) = 91;
    sub_215802470();
    swift_willThrow();

    v52 = OUTLINED_FUNCTION_56();
    v3(v52);
    __swift_destroy_boxed_opaque_existential_1((v1 + 16));
    OUTLINED_FUNCTION_10_1();

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_40_0();

    __asm { BRAA            X1, X16 }
  }

  v33 = *(v1 + 200);
  v32 = *(v1 + 208);
  v34 = *(v1 + 192);
  sub_21580B8C0();
  v35 = sub_21580B8A0();
  v37 = v36;

  (*(v33 + 8))(v32, v34);
  if (v37 >> 60 == 15)
  {
    v38 = sub_21580B7D0();
    sub_21580BAC0();
    OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_25(v40);
      OUTLINED_FUNCTION_18(&dword_2157E4000, v41, v42, "SafariSummarizationPrefetch - Failed to scan line in path filter jsonl file");
      OUTLINED_FUNCTION_7_3();
    }

    v43 = 89;
    goto LABEL_58;
  }

  v55 = *(v1 + 424);
  v56 = *(v1 + 448);
  v58 = *(v1 + 176);
  v57 = *(v1 + 184);
  v59 = *(v1 + 168);
  v60 = sub_21580B420();
  OUTLINED_FUNCTION_67_0(v60);
  sub_21580B410();
  (*(v58 + 104))(v57, v56, v59);
  sub_21580B3F0();
  sub_215809F14();
  sub_21580B400();
  if (v55)
  {

    v61 = OUTLINED_FUNCTION_57_0();
    sub_215809F68(v61, v62);
    v63 = v55;
    v64 = sub_21580B7D0();
    v65 = sub_21580BAC0();
    v66 = OUTLINED_FUNCTION_57_0();
    sub_2157EEF2C(v66, v67);

    if (os_log_type_enabled(v64, v65))
    {
      v68 = OUTLINED_FUNCTION_58();
      v69 = v35;
      v70 = OUTLINED_FUNCTION_50_0();
      v71 = OUTLINED_FUNCTION_34_0();
      v117[0] = v71;
      *v68 = 136643075;
      sub_21580B8C0();
      OUTLINED_FUNCTION_43_0();
      v72 = sub_21580B8B0();
      if (v73)
      {
        v74 = v73;
      }

      else
      {
        v72 = 0;
        v74 = 0xE000000000000000;
      }

      v111 = v37;
      v75 = sub_215808B34(v72, v74, v117);

      *(v68 + 4) = v75;
      *(v68 + 12) = 2112;
      v76 = v55;
      v77 = _swift_stdlib_bridgeErrorToNSError();
      *(v68 + 14) = v77;
      *v70 = v77;
      _os_log_impl(&dword_2157E4000, v64, v65, "SafariSummarizationPrefetch - Failed to deserialize scanned json line %{sensitive}s, with error: %@. Skipping this line", v68, 0x16u);
      sub_2157EC06C(v70, &qword_27CA73DA8, &qword_21580D0D8);
      OUTLINED_FUNCTION_3_5();
      __swift_destroy_boxed_opaque_existential_1(v71);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_3_5();
      sub_2157EEF2C(v69, v111);
    }

    else
    {

      v97 = OUTLINED_FUNCTION_57_0();
      sub_2157EEF2C(v97, v98);
    }

    v43 = 90;
LABEL_58:
    *(v1 + 452) = v43;
    sub_215809EB0();
    v105 = swift_task_alloc();
    *(v1 + 416) = v105;
    *v105 = v1;
    OUTLINED_FUNCTION_9_2(v105);
    OUTLINED_FUNCTION_40_0();

    return MEMORY[0x282200308](v44);
  }

  v108 = *(v1 + 96);
  v109 = *(v1 + 104);
  v112 = v37;
  v78 = *(v1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73EC8, &qword_21580D750);
  v79 = sub_21580B850();
  v114 = *(v78 + 16);
  if (v114)
  {
    v107 = v35;

    v80 = 0;
    v81 = (v78 + 40);
    v116 = v1;
    while (v80 < *(v78 + 16))
    {
      v82 = *(v81 - 1);
      v83 = *v81;
      swift_bridgeObjectRetain_n();
      swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 144) = v79;
      v44 = sub_2158091C0(v82);
      if (__OFADD__(v79[2], (v84 & 1) == 0))
      {
        goto LABEL_62;
      }

      v85 = v44;
      v86 = v84;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA74000, &qword_21580E988);
      if (sub_21580BC30())
      {
        v87 = sub_2158091C0(v82);
        if ((v86 & 1) != (v88 & 1))
        {
          goto LABEL_49;
        }

        v85 = v87;
      }

      v79 = *(v116 + 144);
      if (v86)
      {
        *(v79[7] + 8 * v85) = v83;
      }

      else
      {
        v79[(v85 >> 6) + 8] |= 1 << v85;
        *(v79[6] + 8 * v85) = v82;
        *(v79[7] + 8 * v85) = v83;

        v89 = v79[2];
        v90 = __OFADD__(v89, 1);
        v91 = v89 + 1;
        if (v90)
        {
          goto LABEL_63;
        }

        v79[2] = v91;
      }

      ++v80;
      v81 += 2;
      v1 = v116;
      if (v114 == v80)
      {

        v35 = v107;
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_43:
  v92 = *(v1 + 408);
  swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 152) = v92;
  v44 = sub_2158090E4(v108, v109);
  if (__OFADD__(*(v92 + 16), (v93 & 1) == 0))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v94 = v44;
  v95 = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA74008, &unk_21580E990);
  v44 = sub_21580BC30();
  if ((v44 & 1) == 0)
  {
LABEL_53:
    v101 = *(v1 + 152);
    if (v95)
    {
      *(v101[7] + 8 * v94) = v79;
    }

    else
    {
      v101[(v94 >> 6) + 8] |= 1 << v94;
      v102 = (v101[6] + 16 * v94);
      *v102 = v108;
      v102[1] = v109;
      *(v101[7] + 8 * v94) = v79;
      v103 = v101[2];
      v90 = __OFADD__(v103, 1);
      v104 = v103 + 1;
      if (v90)
      {
LABEL_65:
        __break(1u);
        return MEMORY[0x282200308](v44);
      }

      v101[2] = v104;
    }

    sub_2157EEF2C(v35, v112);
    v43 = *(v1 + 452);
    *(v1 + 408) = v101;
    goto LABEL_58;
  }

  v44 = sub_2158090E4(v108, v109);
  if ((v95 & 1) == (v96 & 1))
  {
    v94 = v44;
    goto LABEL_53;
  }

LABEL_49:
  OUTLINED_FUNCTION_40_0();

  return sub_21580BD60();
}

uint64_t sub_215805C98()
{
  OUTLINED_FUNCTION_3();
  *(v0 + 136) = *(v0 + 424);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E00, &unk_21580D160);
  swift_willThrowTypedImpl();
  v1 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_215805D20(uint64_t a1)
{
  v28 = v1;
  v6 = v1[53];
  v7 = OUTLINED_FUNCTION_18_1();
  v8(v7);
  sub_21580B850();

  v5(v3, v2, v4);
  v9 = v6;
  v10 = sub_21580B7D0();
  v11 = sub_21580BAC0();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v1[49];
  v14 = v1[35];
  if (v12)
  {
    v25 = v11;
    v15 = OUTLINED_FUNCTION_58();
    v24 = OUTLINED_FUNCTION_50_0();
    v26 = OUTLINED_FUNCTION_34_0();
    v27 = v26;
    *v15 = 136643075;
    v16 = sub_21580B5A0();
    v4 = v17;
    v18 = OUTLINED_FUNCTION_4_5();
    v13(v18);
    sub_215808B34(v16, v4, &v27);

    OUTLINED_FUNCTION_63_0();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    *v24 = v19;
    OUTLINED_FUNCTION_64_0(&dword_2157E4000, "SafariSummarizationPrefetch - Failed while scanning url path filter jsonl file at path: %{sensitive}s, with error: %@", v25);
    sub_2157EC06C(v24, &qword_27CA73DA8, &qword_21580D0D8);
    OUTLINED_FUNCTION_12_2();
    v14 = v26;
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_12_2();
    OUTLINED_FUNCTION_8_2();
  }

  else
  {

    v20 = OUTLINED_FUNCTION_4_5();
    v13(v20);
  }

  OUTLINED_FUNCTION_53_0();
  *(v14 + qword_28119D500) = 91;
  sub_215802470();
  swift_willThrow();

  v21 = OUTLINED_FUNCTION_56();
  v4(v21);
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  OUTLINED_FUNCTION_10_1();

  OUTLINED_FUNCTION_6();

  return v22();
}

uint8_t *sub_215805F9C(uint8_t *a1, uint64_t a2)
{
  v187 = sub_21580B700();
  OUTLINED_FUNCTION_2_2();
  v185 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v184 = v7 - v6;
  v8 = sub_21580B760();
  v9 = OUTLINED_FUNCTION_48(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v186 = (v11 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73C68, &qword_21580E930);
  OUTLINED_FUNCTION_48(v12);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v13);
  v181 = &v178 - v14;
  v183 = sub_21580B6C0();
  OUTLINED_FUNCTION_2_2();
  v182 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73C58, &dword_21580CB68);
  v21 = OUTLINED_FUNCTION_48(v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v178 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v178 - v25;
  v27 = sub_21580B4D0();
  OUTLINED_FUNCTION_2_2();
  v191 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7();
  v190 = v31 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FB8, &unk_21580E8F0);
  OUTLINED_FUNCTION_48(v32);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v33);
  v35 = &v178 - v34;
  v36 = sub_21580B5E0();
  OUTLINED_FUNCTION_2_2();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_7();
  v42 = v41 - v40;
  v188 = a1;
  v192 = a2;
  sub_21580B5C0();
  if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
  {
    sub_2157EC06C(v35, &qword_27CA73FB8, &unk_21580E8F0);
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7(&qword_28119CC70);
    }

    v43 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v43, qword_28119DA40);
    v44 = v192;

    v45 = sub_21580B7D0();
    sub_21580BAC0();

    if (OUTLINED_FUNCTION_69_0())
    {
      v46 = OUTLINED_FUNCTION_35_0();
      v47 = OUTLINED_FUNCTION_34_0();
      v197[0] = v47;
      *v46 = 136642819;
      *(v46 + 4) = sub_215808B34(v188, v44, v197);
      OUTLINED_FUNCTION_62_0(&dword_2157E4000, v48, v49, "SafariSummarizationPrefetch - Invalid URL (%{sensitive}s) found");
      __swift_destroy_boxed_opaque_existential_1(v47);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_3_5();
    }

    return 0;
  }

  v180 = v38;
  v50 = OUTLINED_FUNCTION_42_0();
  v51(v50);
  sub_21580B4A0();
  v52 = v36;
  v53 = v27;
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_2157EC06C(v26, &unk_27CA73C58, &dword_21580CB68);
    OUTLINED_FUNCTION_55_0();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v27);
    sub_215808490(v42, v23, 0, v57, v58, v59);
    OUTLINED_FUNCTION_30();
    sub_2157EC06C(v23, &unk_27CA73C58, &dword_21580CB68);
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7(&qword_28119CC70);
    }

    v60 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v60, qword_28119DA40);

    v61 = sub_21580B7D0();
    sub_21580BAB0();

    if (OUTLINED_FUNCTION_66())
    {
      OUTLINED_FUNCTION_35_0();
      v62 = OUTLINED_FUNCTION_32_0();
      v197[0] = v62;
      LODWORD(dword_21580CB68) = 136642819;
      if (v27)
      {
        v63 = a1;
      }

      else
      {
        v63 = 6369134;
      }

      if (v27)
      {
        v64 = v27;
      }

      else
      {
        v64 = 0xE300000000000000;
      }

      v65 = sub_215808B34(v63, v64, v197);

      unk_21580CB6C = v65;
      OUTLINED_FUNCTION_17_0();
      _os_log_impl(v66, v67, v68, v69, v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_8_2();

      v71 = OUTLINED_FUNCTION_3_6();
      v73 = v36;
      goto LABEL_39;
    }

LABEL_38:
    v71 = OUTLINED_FUNCTION_3_6();
    v73 = v52;
LABEL_39:
    v72(v71, v73);
    return a1;
  }

  v179 = v23;
  (*(v191 + 32))(v190, v26, v27);
  v74 = v189;
  if ((sub_215803BE0() & 1) == 0)
  {
    sub_21580B6B0();
    sub_21580B690();
    v76 = v75;
    (*(v182 + 8))(v19, v183);
    if (v76 < *(v74 + 144))
    {
      if (qword_28119CC70 != -1)
      {
        OUTLINED_FUNCTION_1_7(&qword_28119CC70);
      }

      v77 = sub_21580B7F0();
      OUTLINED_FUNCTION_29(v77, qword_28119DA40);

      v78 = sub_21580B7D0();
      sub_21580BAE0();

      if (OUTLINED_FUNCTION_69_0())
      {
        v79 = OUTLINED_FUNCTION_35_0();
        a1 = v53;
        *v79 = 134217984;
        *(v79 + 4) = *(v74 + 144);
        OUTLINED_FUNCTION_37_0();
        _os_log_impl(v80, v81, v82, v83, v84, 0xCu);
        OUTLINED_FUNCTION_3_5();
      }

      v86 = v190;
      v85 = v191;
      v87 = OUTLINED_FUNCTION_28_0();
      v88(v87);
      OUTLINED_FUNCTION_31_0();
      __swift_storeEnumTagSinglePayload(v89, v90, v91, v53);
      sub_215808490(v42, v19, 1, v92, v93, v94);
      OUTLINED_FUNCTION_30();
      sub_2157EC06C(v19, &unk_27CA73C58, &dword_21580CB68);
      (*(v85 + 8))(v86, v53);
      goto LABEL_38;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v148 = v190;
      v147 = v191;
      v149 = OUTLINED_FUNCTION_28_0();
      v150(v149);
      OUTLINED_FUNCTION_31_0();
      __swift_storeEnumTagSinglePayload(v151, v152, v153, v27);
      sub_215808490(v42, v19, 1, v154, v155, v156);
      OUTLINED_FUNCTION_30();
      sub_2157EC06C(v19, &unk_27CA73C58, &dword_21580CB68);
      (*(v147 + 8))(v148, v27);
      goto LABEL_38;
    }

    v96 = Strong;
    v97 = *(v74 + 24);
    sub_21580BA60();
    v98 = v181;
    OUTLINED_FUNCTION_55_0();
    __swift_storeEnumTagSinglePayload(v99, v100, v101, v102);
    v103 = swift_allocObject();
    swift_weakInit();
    v104 = swift_allocObject();
    v104[2] = 0;
    v104[3] = 0;
    v104[4] = v103;
    v104[5] = v96;
    v104[6] = v97;
    swift_unknownObjectRetain();
    v105 = v104;
    v52 = v36;
    v53 = v27;
    sub_215803914(0, 0, v98, &unk_21580E940, v105);
    sub_215803D54(v106);
    swift_unknownObjectRelease();
  }

  v107 = *(v74 + 104);
  (*(v185 + 104))(v184, *MEMORY[0x277D39D88], v187);

  a1 = v186;
  sub_21580B770();
  v108 = type metadata accessor for ResourceAccessSpan(0);
  OUTLINED_FUNCTION_67_0(v108);
  v109 = OUTLINED_FUNCTION_46_0(v107, 61, a1);
  if ((*(v74 + 128) & 1) == 0)
  {
    *(v109 + qword_28119D508) = 1;
  }

  v110 = *(v74 + 40);
  if (!v110)
  {
    OUTLINED_FUNCTION_44_0(qword_28119D500);
    v125 = v190;
    v124 = v191;
    v126 = v179;
    v127 = OUTLINED_FUNCTION_36_0();
    v128(v127);
    OUTLINED_FUNCTION_31_0();
    __swift_storeEnumTagSinglePayload(v129, v130, v131, v53);
    sub_215808490(v42, v126, 1, v132, v133, v134);
    OUTLINED_FUNCTION_30();

    sub_2157EC06C(v126, &unk_27CA73C58, &dword_21580CB68);
    (*(v124 + 8))(v125, v53);
    goto LABEL_38;
  }

  v111 = v52;
  v112 = *(v74 + 32);
  v113 = *(v74 + 112);
  v114 = *(v74 + 48);
  v115 = *(v74 + 56);

  v113(&v194, v112, v110, v114, v115);

  if (!v195)
  {
    sub_2157EC06C(&v194, &qword_27CA73C10, &qword_21580CB30);
    OUTLINED_FUNCTION_44_0(qword_28119D500);

    (*(v191 + 8))(v190, v53);
    v136 = OUTLINED_FUNCTION_3_6();
    v137(v136, v111);
    return 0;
  }

  sub_2157E59C0(&v194, v197);
  v116 = sub_21580B590();
  if (!v117)
  {
LABEL_43:
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7(&qword_28119CC70);
    }

    v138 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v138, qword_28119DA40);
    v139 = v192;

    v140 = sub_21580B7D0();
    sub_21580BAC0();

    if (OUTLINED_FUNCTION_69_0())
    {
      v141 = OUTLINED_FUNCTION_35_0();
      v142 = OUTLINED_FUNCTION_34_0();
      *&v194 = v142;
      *v141 = 136642819;
      *(v141 + 4) = sub_215808B34(v188, v139, &v194);
      OUTLINED_FUNCTION_62_0(&dword_2157E4000, v143, v144, "SafariSummarizationPrefetch - Invalid URL (%{sensitive}s) found");
      __swift_destroy_boxed_opaque_existential_1(v142);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_3_5();
    }

    OUTLINED_FUNCTION_44_0(qword_28119D500);

    __swift_destroy_boxed_opaque_existential_1(v197);
    (*(v191 + 8))(v190, v53);
    v145 = OUTLINED_FUNCTION_42_0();
    v146(v145);
    return 0;
  }

  v118 = v116;
  v119 = v117;
  v120 = sub_21580B590();
  if (!v121 || (v122 = sub_2157FA264(v120, v121), a1 = v123, , !a1))
  {

    goto LABEL_43;
  }

  v188 = v111;
  v192 = v53;
  __swift_project_boxed_opaque_existential_1((v189 + 64), *(v189 + 88));
  sub_2157F3650(v122, a1, v197, v193);
  sub_2157E59C0(v193, &v194);
  sub_215803C1C(1);
  v157 = v195;
  v158 = v196;
  __swift_project_boxed_opaque_existential_1(&v194, v195);
  v159 = (*(v158 + 8))(v122, a1, v157, v158);

  if ((v159 & 1) == 0)
  {

    v168 = v180;
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7(&qword_28119CC70);
    }

    v169 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v169, qword_28119DA40);
    v170 = sub_21580B7D0();
    v171 = sub_21580BAE0();
    if (os_log_type_enabled(v170, v171))
    {
      v172 = OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_25(v172);
      OUTLINED_FUNCTION_37_0();
      _os_log_impl(v173, v174, v175, v176, v177, 2u);
      OUTLINED_FUNCTION_7_3();
    }

    OUTLINED_FUNCTION_44_0(qword_28119D500);

    __swift_destroy_boxed_opaque_existential_1(v197);
    (*(v191 + 8))(v190, v192);
    (*(v168 + 8))(v42, v111);
    __swift_destroy_boxed_opaque_existential_1(&v194);
    return 0;
  }

  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_28119CC70);
  }

  v160 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v160, qword_28119DA40);
  v161 = sub_21580B7D0();
  v162 = sub_21580BAE0();
  if (os_log_type_enabled(v161, v162))
  {
    a1 = OUTLINED_FUNCTION_79();
    *a1 = 0;
    _os_log_impl(&dword_2157E4000, v161, v162, "SafariSummarizationPrefetch - Domain is in allow-list, request eligible", a1, 2u);
    OUTLINED_FUNCTION_3_5();
  }

  v163 = v190;
  sub_215807534(v42, v190, v118, v119, v164, v165);
  OUTLINED_FUNCTION_30();

  OUTLINED_FUNCTION_44_0(qword_28119D500);

  __swift_destroy_boxed_opaque_existential_1(v197);
  (*(v191 + 8))(v163, v192);
  v166 = OUTLINED_FUNCTION_3_6();
  v167(v166, v111);
  __swift_destroy_boxed_opaque_existential_1(&v194);
  return a1;
}

uint64_t sub_215806FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_215806FF0);
}

uint64_t sub_215806FF0()
{
  v21 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7(&qword_28119CC70);
    }

    v4 = sub_21580B7F0();
    v0[8] = OUTLINED_FUNCTION_29(v4, qword_28119DA40);

    v5 = sub_21580B7D0();
    sub_21580BAE0();

    if (OUTLINED_FUNCTION_66())
    {
      OUTLINED_FUNCTION_58();
      v6 = OUTLINED_FUNCTION_32_0();
      v20 = v6;
      *v1 = 136643075;
      v7 = v3[6];
      v8 = v3[7];

      v9 = sub_215808B34(v7, v8, &v20);

      *(v1 + 4) = v9;
      *(v1 + 12) = 2048;
      *(v1 + 14) = v3[18];
      OUTLINED_FUNCTION_17_0();
      _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v6);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_8_2();
    }

    v16 = v3[6];
    v15 = v3[7];
    v0[9] = v15;

    v17 = swift_task_alloc();
    v0[10] = v17;
    *v17 = v0;
    v17[1] = sub_215807204;

    return sub_2157E6DB0(v16, v15);
  }

  else
  {
    OUTLINED_FUNCTION_6();

    return v19();
  }
}

uint64_t sub_215807204()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_215807304()
{
  OUTLINED_FUNCTION_31();
  sub_215803C64();
  if (v3)
  {
    v4 = *(v2 + 16);

    v5 = v4 != 0;
    v6 = sub_21580B7D0();
    v7 = sub_21580BAE0();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_8;
    }

    v8 = OUTLINED_FUNCTION_50_0();
    *v8 = 67109120;
    *(v8 + 4) = v4 != 0;
    _os_log_impl(&dword_2157E4000, v6, v7, "SafariSummarizationPrefetch - After delegate.didNotFindAssetAfterThrottlingPeriodExpired hasUrlRedactMap %{BOOL}d", v8, 8u);
    goto LABEL_6;
  }

  v6 = sub_21580B7D0();
  sub_21580BAE0();
  OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(v6, v9))
  {
    v10 = OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_25(v10);
    _os_log_impl(&dword_2157E4000, v6, v0, "SafariSummarizationPrefetch - After delegate.didNotFindAssetAfterThrottlingPeriodExpired, no urlRedactPatterns", v1, 2u);
    v5 = 0;
LABEL_6:
    OUTLINED_FUNCTION_7_3();
    goto LABEL_8;
  }

  v5 = 0;
LABEL_8:

  sub_2158087C8(v5);
  v11 = sub_21580B7D0();
  sub_21580BAE0();
  OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_25(v13);
    OUTLINED_FUNCTION_18(&dword_2157E4000, v14, v15, "SafariSummarizationPrefetch - Posting notification SafariAssistantFilterDataLoaded");
    OUTLINED_FUNCTION_7_3();
  }

  v16 = [objc_opt_self() defaultCenter];
  if (qword_28119CBE8 != -1)
  {
    swift_once();
  }

  [v16 postNotificationName:qword_28119DA38 object:0];

  sub_215803D54(0);

  OUTLINED_FUNCTION_6();

  return v17();
}

void sub_215807534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_65_0();
  v161 = v6;
  v158 = v7;
  v159 = v8;
  v10 = v9;
  v12 = v11;
  v162 = sub_21580B5E0();
  OUTLINED_FUNCTION_2_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_23_1(v16, v148);
  MEMORY[0x28223BE20](v17);
  v151 = &v148 - v18;
  MEMORY[0x28223BE20](v19);
  v155 = &v148 - v20;
  v154 = sub_21580B700();
  OUTLINED_FUNCTION_2_2();
  v152 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v25 = v24 - v23;
  v26 = sub_21580B760();
  v27 = OUTLINED_FUNCTION_48(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7();
  v153 = v29 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73C58, &dword_21580CB68);
  OUTLINED_FUNCTION_48(v30);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v31);
  v33 = &v148 - v32;
  v34 = sub_21580B4D0();
  OUTLINED_FUNCTION_2_2();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7();
  v40 = v39 - v38;
  v41 = *(v36 + 16);
  v41(v39 - v38, v10, v34);
  v42 = sub_21580B480();
  if (v42)
  {
    v43 = v42;
    v150 = v14;
    v41(v33, v40, v34);
    OUTLINED_FUNCTION_31_0();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v34);
    v156 = v12;
    sub_215808490(v12, v33, 1, v47, v48, v49);
    v163 = v50;
    v52 = v51;
    sub_2157EC06C(v33, &unk_27CA73C58, &dword_21580CB68);
    v160 = v52;
    if (v52)
    {
      v164 = v40;
      v148 = v34;
      v149 = v36;
      v53 = v161;
      v54 = sub_215803C64();
      if (v55 && (v57 = v54, v58 = v55, v59 = v56, v60 = sub_215803738(v158, v159, v56), sub_215809C2C(v57, v58, v59), v60))
      {
        v61 = *(sub_21580B550() + 16);

        if (v61 < 2)
        {
          v63 = 0;
        }

        else
        {
          v62 = *(sub_21580B550() + 16);

          v63 = v62 - 1;
        }

        v97 = v149;
        v98 = sub_215803788(v63, v60);

        if (v98)
        {

          v99 = *(v53 + 104);
          (*(v152 + 104))(v25, *MEMORY[0x277D39D88], v154);

          v100 = v153;
          sub_21580B770();
          v101 = type metadata accessor for ResourceAccessSpan(0);
          OUTLINED_FUNCTION_67_0(v101);
          v102 = OUTLINED_FUNCTION_46_0(v99, 66, v100);
          v107 = v102;
          if ((*(v53 + 128) & 1) == 0)
          {
            *(v102 + qword_28119D508) = 1;
          }

          sub_215808004(v43, v98, v103, v104, v105, v106);
          v109 = v108;

          if (!*(v109 + 16))
          {
          }

          v110 = v148;
          v111 = v162;
          v112 = v150;
          v113 = v164;
          sub_21580B490();
          OUTLINED_FUNCTION_44_0(qword_28119D500);
          v41(v33, v113, v110);
          OUTLINED_FUNCTION_31_0();
          __swift_storeEnumTagSinglePayload(v114, v115, v116, v110);
          v117 = v156;
          sub_215808490(v156, v33, 0, v118, v119, v120);
          v163 = v121;
          v123 = v122;
          sub_2157EC06C(v33, &unk_27CA73C58, &dword_21580CB68);
          if (!v123)
          {
            v163 = sub_21580B540();
            v123 = v124;
          }

          v125 = v155;
          if (qword_28119CC70 != -1)
          {
            OUTLINED_FUNCTION_1_7(&qword_28119CC70);
          }

          v126 = sub_21580B7F0();
          OUTLINED_FUNCTION_29(v126, qword_28119DA40);
          (*(v112 + 16))(v125, v117, v111);

          v127 = sub_21580B7D0();
          v128 = sub_21580BAE0();

          if (os_log_type_enabled(v127, v128))
          {
            OUTLINED_FUNCTION_58();
            v162 = v107;
            v165 = OUTLINED_FUNCTION_48_0();
            *v112 = 136643075;
            v129 = sub_215808B34(v163, v123, &v165);
            OUTLINED_FUNCTION_39_0(v129);
            v130 = sub_21580B540();
            v131 = OUTLINED_FUNCTION_43_0();
            v132(v131);
            OUTLINED_FUNCTION_47_0();
            OUTLINED_FUNCTION_33_0();

            *(v112 + 14) = v130;
            OUTLINED_FUNCTION_26_0(&dword_2157E4000, v133, v134, "SafariSummarizationPrefetch - Redacted url string %{sensitive}s, from original %{sensitive}s");
            swift_arrayDestroy();
            OUTLINED_FUNCTION_3_5();
            OUTLINED_FUNCTION_7_3();

            (*(v149 + 8))(v164, v148);
          }

          else
          {

            (*(v112 + 8))(v125, v111);
            (*(v149 + 8))(v164, v110);
          }
        }

        else
        {

          if (qword_28119CC70 != -1)
          {
            OUTLINED_FUNCTION_1_7(&qword_28119CC70);
          }

          v135 = sub_21580B7F0();
          OUTLINED_FUNCTION_29(v135, qword_28119DA40);
          v136 = v150;
          v137 = v151;
          v138 = v162;
          (*(v150 + 16))(v151, v156, v162);
          v139 = v160;

          v140 = sub_21580B7D0();
          v141 = sub_21580BAE0();

          v142 = os_log_type_enabled(v140, v141);
          v143 = v163;
          if (v142)
          {
            OUTLINED_FUNCTION_58();
            v161 = OUTLINED_FUNCTION_48_0();
            v165 = v161;
            *v136 = 136643075;
            v144 = sub_215808B34(v143, v139, &v165);
            OUTLINED_FUNCTION_39_0(v144);
            sub_21580B540();
            v145 = OUTLINED_FUNCTION_33_0();
            (*(v136 + 8))(v145, v138);
            OUTLINED_FUNCTION_47_0();
            OUTLINED_FUNCTION_33_0();

            *(v136 + 14) = v137;
            OUTLINED_FUNCTION_26_0(&dword_2157E4000, v146, v147, "SafariSummarizationPrefetch - Url unredacted due to no matching url pattern with number of components, return Redacted url string %{sensitive}s, from original url: %{sensitive}s");
            swift_arrayDestroy();
            OUTLINED_FUNCTION_12_2();
            OUTLINED_FUNCTION_7_3();
          }

          else
          {

            (*(v136 + 8))(v137, v138);
          }

          (*(v97 + 8))(v164, v148);
        }
      }

      else
      {

        if (qword_28119CC70 != -1)
        {
          OUTLINED_FUNCTION_1_7(&qword_28119CC70);
        }

        v84 = sub_21580B7F0();
        OUTLINED_FUNCTION_29(v84, qword_28119DA40);
        v85 = v150;
        v86 = v157;
        v87 = v162;
        (*(v150 + 16))(v157, v156, v162);

        v88 = sub_21580B7D0();
        v89 = sub_21580BAE0();

        v90 = os_log_type_enabled(v88, v89);
        v91 = v149;
        v92 = v163;
        if (v90)
        {
          OUTLINED_FUNCTION_58();
          v165 = OUTLINED_FUNCTION_48_0();
          *v85 = 136643075;
          v93 = sub_215808B34(v92, v160, &v165);
          OUTLINED_FUNCTION_39_0(v93);
          sub_21580B540();
          v94 = OUTLINED_FUNCTION_33_0();
          (*(v85 + 8))(v94, v87);
          OUTLINED_FUNCTION_47_0();
          OUTLINED_FUNCTION_33_0();

          *(v85 + 14) = v86;
          OUTLINED_FUNCTION_26_0(&dword_2157E4000, v95, v96, "SafariSummarizationPrefetch - Url redacted due to no matching url pattern with domain, return Redacted url string %{sensitive}s, from original url: %{sensitive}s");
          swift_arrayDestroy();
          OUTLINED_FUNCTION_3_5();
          OUTLINED_FUNCTION_7_3();
        }

        else
        {

          (*(v85 + 8))(v86, v87);
        }

        (*(v91 + 8))(v164, v148);
      }
    }

    else
    {
      (*(v36 + 8))(v40, v34);
    }
  }

  else
  {
    v164 = v40;
    OUTLINED_FUNCTION_55_0();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v34);
    sub_215808490(v12, v33, 0, v67, v68, v69);
    sub_2157EC06C(v33, &unk_27CA73C58, &dword_21580CB68);
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7(&qword_28119CC70);
    }

    v70 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v70, qword_28119DA40);

    v71 = sub_21580B7D0();
    sub_21580BAE0();

    if (OUTLINED_FUNCTION_69_0())
    {
      v72 = OUTLINED_FUNCTION_35_0();
      v73 = OUTLINED_FUNCTION_34_0();
      v165 = v73;
      *v72 = 136642819;
      v74 = v34;

      v75 = OUTLINED_FUNCTION_56();
      v78 = sub_215808B34(v75, v76, v77);

      *(v72 + 4) = v78;
      OUTLINED_FUNCTION_37_0();
      _os_log_impl(v79, v80, v81, v82, v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_7_3();

      (*(v36 + 8))(v164, v74);
    }

    else
    {

      (*(v36 + 8))(v164, v34);
    }
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_61_0();
}

void sub_215808004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_65_0();
  v7 = v6;
  v9 = v8;
  v69 = sub_21580B470();
  OUTLINED_FUNCTION_2_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_23_1(v13, v61);
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  v17 = *(v9 + 16);
  v18 = MEMORY[0x277D84F90];
  v67 = v11;
  if (v17)
  {
    v61 = v7;
    v72 = MEMORY[0x277D84F90];
    v19 = OUTLINED_FUNCTION_52_0();
    sub_215809928(v19, v20, v21);
    v18 = v72;
    v23 = *(v11 + 16);
    v22 = v11 + 16;
    v24 = v9 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v63 = *(v22 + 56);
    v64 = v23;
    v65 = v22;
    v62 = (v22 - 8);
    do
    {
      v25 = v69;
      v64(v16, v24, v69);
      v26 = sub_21580B450();
      v68 = v27;
      v28 = sub_21580B460();
      v30 = v29;
      (*v62)(v16, v25);
      v72 = v18;
      v32 = *(v18 + 16);
      v31 = *(v18 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_215809928((v31 > 1), v32 + 1, 1);
        v18 = v72;
      }

      *(v18 + 16) = v32 + 1;
      v33 = (v18 + 32 * v32);
      v34 = v68;
      v33[4] = v26;
      v33[5] = v34;
      v33[6] = v28;
      v33[7] = v30;
      v24 += v63;
      --v17;
    }

    while (v17);
    v7 = v61;
  }

  v35 = sub_2158083F8(v18);
  v36 = 0;
  v37 = *(v7 + 16);
  v38 = v7 + 32;
LABEL_8:
  if (v36 == v37)
  {
    v41 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v39 = *(v38 + 16 * v36 + 8);
  v72 = *(v38 + 16 * v36);
  v73 = v39;
  v70 = 44;
  v71 = 0xE100000000000000;
  sub_2157F6758();
  v40 = sub_21580BB70();
  v41 = v40;
  v42 = *(v40 + 16);
  if (!v42)
  {
LABEL_18:
    v48 = *(v41 + 16);
    if (v48)
    {
      v72 = MEMORY[0x277D84F90];
      v49 = OUTLINED_FUNCTION_52_0();
      sub_215809908(v49, v50, v51);
      v52 = v72;
      v68 = v67 + 32;
      v53 = v41 + 40;
      do
      {
        v54 = *(v35 + 16);

        if (v54)
        {
          v55 = OUTLINED_FUNCTION_43_0();
          sub_2158090E4(v55, v56);
          if (v57)
          {
          }
        }

        v58 = v66;
        OUTLINED_FUNCTION_43_0();
        sub_21580B440();

        v72 = v52;
        v60 = *(v52 + 16);
        v59 = *(v52 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_215809908((v59 > 1), v60 + 1, 1);
          v52 = v72;
        }

        *(v52 + 16) = v60 + 1;
        (*(v67 + 32))(v52 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v60, v58, v69);
        v53 += 16;
        --v48;
      }

      while (v48);
    }

    OUTLINED_FUNCTION_61_0();
    return;
  }

  v43 = 0;
  ++v36;
  v44 = (v40 + 40);
  while (v43 < *(v41 + 16))
  {
    if (!*(v35 + 16) || (v46 = *(v44 - 1), v45 = *v44, , sub_2158090E4(v46, v45), LOBYTE(v46) = v47, , (v46 & 1) == 0))
    {

      goto LABEL_8;
    }

    ++v43;
    v44 += 2;
    if (v42 == v43)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_2158083F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FC8, &qword_21580E908);
    v3 = sub_21580BC90();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_215809718(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_215808490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_65_0();
  v43 = v6;
  v8 = v7;
  v42 = v9;
  v10 = sub_21580B4D0();
  OUTLINED_FUNCTION_2_2();
  v41 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FB8, &unk_21580E8F0);
  OUTLINED_FUNCTION_48(v16);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - v18;
  v20 = sub_21580B5E0();
  OUTLINED_FUNCTION_2_2();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73C58, &dword_21580CB68);
  OUTLINED_FUNCTION_48(v27);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v28);
  v30 = &v40 - v29;
  sub_2157EC008(v8, &v40 - v29, &unk_27CA73C58, &dword_21580CB68);
  if ((v43 & 1) != 0 && !__swift_getEnumTagSinglePayload(v30, 1, v10))
  {
    sub_21580B490();
  }

  if (__swift_getEnumTagSinglePayload(v30, 1, v10))
  {
    OUTLINED_FUNCTION_55_0();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v20);
  }

  else
  {
    v34 = v41;
    (*(v41 + 16))(v15, v30, v10);
    sub_21580B4B0();
    (*(v34 + 8))(v15, v10);
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
    {
      v35 = OUTLINED_FUNCTION_36_0();
      v36(v35);
      goto LABEL_10;
    }
  }

  (*(v22 + 16))(v26, v42, v20);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
  {
    sub_2157EC06C(v19, &qword_27CA73FB8, &unk_21580E8F0);
  }

LABEL_10:
  v37 = sub_21580B540();
  v39 = v38;
  (*(v22 + 8))(v26, v20);
  v44 = v37;
  v45 = v39;
  sub_2157F6758();
  sub_21580BB90();

  sub_2157EC06C(v30, &unk_27CA73C58, &dword_21580CB68);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_61_0();
}

uint64_t sub_2158087C8(char a1)
{
  v2 = v1;
  v4 = sub_21580B6C0();
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  if (a1)
  {

    return sub_215803C1C(1);
  }

  else
  {
    sub_215803C1C(0);
    v12 = 0.0;
    result = sub_21580BA80();
    if ((result & 1) == 0)
    {
      sub_21580B6B0();
      sub_21580B690();
      v14 = v13;
      result = (*(v6 + 8))(v10, v4);
      v12 = v14 + 3600.0;
    }

    *(v2 + 144) = v12;
  }

  return result;
}

void *sub_2158088F4()
{
  sub_2157E6544(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return v0;
}

uint64_t sub_21580895C()
{
  sub_2158088F4();

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

uint64_t sub_2158089C4(uint64_t a1, uint64_t a2)
{
  *(*v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

char *sub_215808A0C(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

uint64_t sub_215808A34(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_21580B470(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_21580B470();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

char *sub_215808B08(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

uint64_t sub_215808B34(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_57();
  v9 = sub_215808BF4(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_2157F7444(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

unint64_t sub_215808BF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_215808CF4(a5, a6);
    *a1 = v9;
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
    result = sub_21580BC20();
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

uint64_t sub_215808CF4(uint64_t a1, unint64_t a2)
{
  v3 = sub_215808D40(a1, a2);
  sub_215808E58(&unk_2827B4738);
  return v3;
}

uint64_t sub_215808D40(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_21580B970())
  {
    result = sub_215808F3C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_21580BBD0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_21580BC20();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_215808E58(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_215808FAC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_215808F3C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E68, &qword_21580D4B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_215808FAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E68, &qword_21580D4B0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_2158090A0(uint64_t a1)
{
  v2 = sub_21580BBA0();

  return sub_215809204(a1, v2);
}

unint64_t sub_2158090E4(uint64_t a1, uint64_t a2)
{
  sub_21580BDC0();
  sub_21580B920();
  v4 = sub_21580BDE0();

  return sub_2158092C8(a1, a2, v4);
}

uint64_t sub_215809160()
{
  sub_21580BDC0();
  sub_21580B920();
  v0 = sub_21580BDE0();
  return sub_21580937C(v0);
}

unint64_t sub_2158091C0(uint64_t a1)
{
  v2 = sub_21580BDB0();

  return sub_2158093A8(a1, v2);
}

unint64_t sub_215809204(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_215809FC0(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x216071870](v8, a1);
    sub_2157EDE84(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2158092C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_21580BD30() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2158093A8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_215809408(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FC8, &qword_21580E908);
  v32 = v4;
  result = sub_21580BC80();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      sub_2158096B4(0, (v31 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v33 = *(*(v5 + 56) + 16 * v18);
    if ((v32 & 1) == 0)
    {
    }

    sub_21580BDC0();
    sub_21580B920();
    result = sub_21580BDE0();
    v22 = -1 << *(v7 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v7 + 48) + 16 * v25);
    *v30 = v20;
    v30[1] = v21;
    *(*(v7 + 56) + 16 * v25) = v33;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v14 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_2158096B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_21580E780;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_215809718(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v30 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v30 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v32 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v8 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    v12 = sub_2158090E4(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v16 = v11;
    if (v10[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FD0, &qword_21580E910);
        sub_21580BC40();
      }
    }

    else
    {
      sub_215809408(v15, a2 & 1);
      v17 = sub_2158090E4(v7, v6);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

      v12 = v17;
    }

    v19 = *a3;
    if (v16)
    {
      v20 = (v19[7] + 16 * v12);
      v22 = *v20;
      v21 = v20[1];

      v23 = (v19[7] + 16 * v12);
      *v23 = v22;
      v23[1] = v21;
    }

    else
    {
      v19[(v12 >> 6) + 8] |= 1 << v12;
      v24 = (v19[6] + 16 * v12);
      *v24 = v7;
      v24[1] = v6;
      v25 = (v19[7] + 16 * v12);
      *v25 = v8;
      v25[1] = v9;
      v26 = v19[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v19[2] = v28;
    }

    v4 = v32 + 1;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_21580BD60();
  __break(1u);
  return result;
}

void *sub_215809908(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_215809948(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_215809928(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_215809AFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_215809948(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FC0, &qword_21580E900);
  v10 = *(sub_21580B470() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_21580B470() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_215808A34(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_215809AFC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FD8, &qword_21580E918);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FE0, &unk_21580E920);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_215809C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_215809C70()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_38_0(v7);
  *v8 = v9;
  v8[1] = sub_2157E926C;

  return sub_215806FD0(v2, v3, v4, v5, v6);
}

uint64_t sub_215809D2C()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15(v1);

  return v4(v3);
}

uint64_t sub_215809DC4()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15(v1);

  return v4(v3);
}

unint64_t sub_215809E5C()
{
  result = qword_28119CDC8;
  if (!qword_28119CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CDC8);
  }

  return result;
}

unint64_t sub_215809EB0()
{
  result = qword_28119DA30;
  if (!qword_28119DA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA73FF0, &unk_21580E970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119DA30);
  }

  return result;
}

unint64_t sub_215809F14()
{
  result = qword_28119CFF8;
  if (!qword_28119CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CFF8);
  }

  return result;
}

uint64_t sub_215809F68(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2157EEF98(result, a2);
  }

  return result;
}

void sub_215809F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t getEnumTagSinglePayload for SafariSummarizationPrefetchRequestFilterError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SafariSummarizationPrefetchRequestFilterError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21580A184()
{
  result = qword_27CA74010[0];
  if (!qword_27CA74010[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CA74010);
  }

  return result;
}

void OUTLINED_FUNCTION_7_3()
{

  JUMPOUT(0x216072190);
}

void OUTLINED_FUNCTION_8_2()
{

  JUMPOUT(0x216072190);
}

void OUTLINED_FUNCTION_12_2()
{

  JUMPOUT(0x216072190);
}

void OUTLINED_FUNCTION_26_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_34_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_39_0(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2085;
  return result;
}

void OUTLINED_FUNCTION_44_0(uint64_t a1@<X8>)
{
  *(v2 + a1) = v1;

  sub_215802470();
}

id *OUTLINED_FUNCTION_46_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_215801DF0(a1, a2, a3, 0, 1);
}

uint64_t OUTLINED_FUNCTION_47_0()
{

  return sub_215808B34(v0, v1, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_50_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_60_0(uint64_t a1)
{
}

void OUTLINED_FUNCTION_62_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_63_0()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2112;

  return v2;
}

void OUTLINED_FUNCTION_64_0(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0x16u);
}

BOOL OUTLINED_FUNCTION_66()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_67_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_68_0(uint64_t a1)
{

  return swift_allocError();
}

BOOL OUTLINED_FUNCTION_69_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t Lock.__allocating_init()()
{
  v0 = swift_allocObject();
  Lock.init()();
  return v0;
}

uint64_t sub_21580A6A4(uint64_t (*a1)(void))
{
  result = a1(*(v1 + 16));
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t Lock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  result = pthread_mutex_init(v1, 0);
  if (!result)
  {
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t Lock.__deallocating_deinit()
{
  MEMORY[0x216072190](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void Lock.withLock<A>(_:)()
{
  OUTLINED_FUNCTION_3_7();
  Lock.lock()();
  v0();
  Lock.unlock()();
}

void Lock.withLockVoid(_:)()
{
  OUTLINED_FUNCTION_3_7();
  Lock.lock()();
  v0();
  Lock.unlock()();
}

uint64_t ConditionLock.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ConditionLock.init(value:)(a1);
  return v2;
}

char *ConditionLock.init(value:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 112);
  *&v2[v5] = swift_slowAlloc();
  v6 = *(v4 + 80);
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[*(*v2 + 96)], a1, v6);
  type metadata accessor for Lock();
  v8 = swift_allocObject();
  Lock.init()();
  *&v2[*(*v2 + 104)] = v8;
  LODWORD(v8) = pthread_cond_init(*&v2[*(*v2 + 112)], 0);
  result = (*(v7 + 8))(a1, v6);
  if (!v8)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t *ConditionLock.deinit()
{
  v1 = *v0;
  MEMORY[0x216072190](*(v0 + *(*v0 + 112)), -1, -1);
  OUTLINED_FUNCTION_3_1();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(v2 + 96));
  OUTLINED_FUNCTION_3_1();

  return v0;
}

uint64_t ConditionLock.__deallocating_deinit()
{
  ConditionLock.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void ConditionLock.value.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  ConditionLock.lock()();
  OUTLINED_FUNCTION_3_1();
  v5 = *(v4 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, &v1[v5]);
  ConditionLock.unlock()();
}

uint64_t ConditionLock.lock(whenValue:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_5();
  v20 = v3;
  v21 = v2;
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_2_7();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  ConditionLock.lock()();
  OUTLINED_FUNCTION_0_5();
  v12 = *(v11 + 96);
  v14 = *(v13 + 112);
  v15 = *(v13 + 104);
  swift_beginAccess();
  v16 = *(v7 + 16);
  while (1)
  {
    v16(v10, v1 + v12, v5);
    v17 = OUTLINED_FUNCTION_4_6(v21, v20);
    result = (*(v7 + 8))(v10, v5);
    if (v17)
    {
      break;
    }

    result = pthread_cond_wait(*(v1 + v14), *(*(v1 + v15) + 16));
    if (result)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t ConditionLock.lock(whenValue:timeoutSeconds:)(uint64_t a1, double a2)
{
  v30 = a1;
  v36 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  v29 = v4;
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_2_7();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  if (v10 < 0.0)
  {
    __break(1u);
    goto LABEL_14;
  }

  ConditionLock.lock()();
  v13 = a2 * 1000000000.0;
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v35.tv_sec = 0;
  v35.tv_usec = 0;
  gettimeofday(&v35, 0);
  v14 = 1000 * v35.tv_usec;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (__OFADD__(v35.tv_sec, v16 / 1000000000))
  {
    goto LABEL_18;
  }

  v34.tv_sec = v35.tv_sec + v16 / 1000000000;
  v34.tv_nsec = v16 % 1000000000;
  v17 = *v2;
  v18 = *(*v2 + 96);
  v28 = *(*v2 + 112);
  v19 = *(v17 + 104);
  swift_beginAccess();
  v20 = v8 + 16;
  v21 = *(v8 + 16);
  v22 = (v20 - 8);
  do
  {
    v21(v12, &v2[v18], v6);
    v23 = OUTLINED_FUNCTION_4_6(v30, v29);
    (*v22)(v12, v6);
    if (v23)
    {
      return v23 & 1;
    }

    v24 = pthread_cond_timedwait(*&v2[v28], *(*&v2[v19] + 16), &v34);
  }

  while (!v24);
  if (v24 == 60)
  {
    ConditionLock.unlock()();
    return v23 & 1;
  }

  v32 = 0;
  v33 = 0xE000000000000000;
  v26 = v24;
  sub_21580BBF0();
  MEMORY[0x216071600](0x6520746867756163, 0xED000020726F7272);
  v31 = v26;
  v27 = sub_21580BD10();
  MEMORY[0x216071600](v27);

  MEMORY[0x216071600](0xD000000000000024, 0x8000000215810340);
  result = sub_21580BC60();
  __break(1u);
  return result;
}

uint64_t ConditionLock.unlock(withValue:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v4, a1);
  swift_endAccess();
  ConditionLock.unlock()();
  OUTLINED_FUNCTION_3_1();
  result = pthread_cond_broadcast(*(v1 + *(v5 + 112)));
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21580B1D8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_6@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(a2 + 88);

  return MEMORY[0x2821FBC88](v3, a1, v2, v5);
}

uint64_t sub_21580B314()
{
  MEMORY[0x216072190](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_21580B378(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1();

  os_unfair_lock_unlock(v3);
}