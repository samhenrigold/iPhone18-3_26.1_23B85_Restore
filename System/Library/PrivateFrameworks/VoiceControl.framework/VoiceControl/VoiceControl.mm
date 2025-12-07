uint64_t VCLocalizedString(_:_:)(uint64_t a1)
{
  v2 = sub_2723FE344();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2723FE564();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for VCSettings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_2723FE324();
  sub_2723FE5F4();
  v8 = sub_2723FE584();

  return v8;
}

uint64_t String.voiceControlLocaleIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_2723FE2D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277CC9668], v2);
  v6 = sub_2723FE2C4();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v11[4] = v6;
  v11[5] = v8;
  v11[2] = 45;
  v11[3] = 0xE100000000000000;
  v11[0] = 95;
  v11[1] = 0xE100000000000000;
  sub_2723CD24C();
  v9 = sub_2723FE984();

  return v9;
}

unint64_t sub_2723CD24C()
{
  result = qword_280893E30;
  if (!qword_280893E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893E30);
  }

  return result;
}

uint64_t sub_2723CD2A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2723FE574();
  v7 = SecTaskCopyValueForEntitlement(v3, v6, 0);

  if (v7 && (v12[0] = v7, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E70, &unk_2723FFA30), v8 = swift_dynamicCast(), (v8 & 1) != 0))
  {
    v12[0] = a1;
    v12[1] = a2;
    MEMORY[0x28223BE20](v8);
    v11[2] = v12;
    v9 = sub_2723E718C(sub_2723CE180, v11, v12[2]);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_2723CD3C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2723FE574();
  v7 = SecTaskCopyValueForEntitlement(v3, v6, 0);

  if (v7 && (v12[0] = v7, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E70, &unk_2723FFA30), v8 = swift_dynamicCast(), (v8 & 1) != 0))
  {
    v12[0] = a1;
    v12[1] = a2;
    MEMORY[0x28223BE20](v8);
    v11[2] = v12;
    v9 = sub_2723E718C(sub_2723CE15C, v11, v12[2]);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

Swift::Bool __swiftcall NSProcessInfo.hasEntitlement(_:)(Swift::String a1)
{
  v1 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (v1)
  {
    v2 = v1;
    v3 = sub_2723FE574();
    v4 = SecTaskCopyValueForEntitlement(v2, v3, 0);

    if (v4)
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = [v5 BOOLValue];
        swift_unknownObjectRelease();

        LOBYTE(v1) = v6;
        return v1;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    LOBYTE(v1) = 0;
  }

  return v1;
}

id sub_2723CD5C0()
{
  result = sub_2723CD5E0();
  qword_280893D68 = result;
  return result;
}

id sub_2723CD5E0()
{
  v15[5] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_2723FE574();
  v2 = [v0 contentsAtPath_];

  if (v2)
  {
    v3 = sub_2723FE224();
    v5 = v4;

    v6 = objc_opt_self();
    sub_2723CE06C(v3, v5);
    v7 = sub_2723FE214();
    v15[0] = 0;
    v8 = [v6 propertyListWithData:v7 options:2 format:0 error:v15];

    v9 = v15[0];
    if (v8)
    {
      sub_2723FE994();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E68, &qword_2723FFA28);
      if (swift_dynamicCast())
      {
        sub_2723CE0C0(v3, v5);
        sub_2723CE0C0(v3, v5);
        return v15[0];
      }
    }

    else
    {
      v13 = v9;
      v14 = sub_2723FE164();

      swift_willThrow();
    }

    v10 = sub_2723D7BC0(MEMORY[0x277D84F90]);
    sub_2723CE0C0(v3, v5);
    sub_2723CE0C0(v3, v5);
    return v10;
  }

  v11 = MEMORY[0x277D84F90];

  return sub_2723D7BC0(v11);
}

uint64_t static VCUtilities.SystemVersion.getter()
{
  if (qword_280893D60 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2723CD888(uint64_t a1, id *a2)
{
  result = sub_2723FE594();
  *a2 = 0;
  return result;
}

uint64_t sub_2723CD900(uint64_t a1, id *a2)
{
  v3 = sub_2723FE5A4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2723CD980@<X0>(uint64_t *a1@<X8>)
{
  sub_2723FE5B4();
  v2 = sub_2723FE574();

  *a1 = v2;
  return result;
}

uint64_t sub_2723CD9C4()
{
  v0 = sub_2723FE5B4();
  v1 = MEMORY[0x2743C7300](v0);

  return v1;
}

uint64_t sub_2723CDA00(uint64_t a1)
{
  sub_2723FE5B4();
  sub_2723FE634();
}

uint64_t sub_2723CDA54(uint64_t a1)
{
  sub_2723FE5B4();
  sub_2723FEC94();
  sub_2723FE634();
  v1 = sub_2723FECB4();

  return v1;
}

uint64_t sub_2723CDAC8(void *a1, uint64_t *a2)
{
  v2 = sub_2723FE5B4();
  v4 = v3;
  if (v2 == sub_2723FE5B4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2723FEC44();
  }

  return v7 & 1;
}

uint64_t sub_2723CDB50@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2723FE574();

  *a2 = v3;
  return result;
}

uint64_t sub_2723CDB98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2723FE5B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2723CDBC4(uint64_t a1)
{
  v2 = sub_2723CE028(&qword_280893E58, &unk_2723FF998);
  v3 = sub_2723CE028(&qword_280893E60, &unk_2723FF938);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t _sSo13NSProcessInfoC12VoiceControlE23canReadPreferenceDomainySbSSF_0(uint64_t a1, uint64_t a2)
{
  result = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (result)
  {
    v5 = result;
    v6 = sub_2723FE574();
    v7 = SecTaskCopyValueForEntitlement(v5, v6, 0);

    if (!v7)
    {
LABEL_6:

      return 1;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 BOOLValue];
      swift_unknownObjectRelease();
      if (v9 & 1) == 0 || (sub_2723CD3C8(a1, a2))
      {
        goto LABEL_6;
      }

      v10 = sub_2723CD2A0(a1, a2);

      return v10 & 1;
    }

    else
    {

      swift_unknownObjectRelease();
      return 1;
    }
  }

  return result;
}

uint64_t _sSo13NSProcessInfoC12VoiceControlE24canWritePreferenceDomainySbSSF_0(uint64_t a1, uint64_t a2)
{
  result = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (result)
  {
    v5 = result;
    v6 = sub_2723FE574();
    v7 = SecTaskCopyValueForEntitlement(v5, v6, 0);

    if (v7)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (!v8)
      {

        swift_unknownObjectRelease();
        return 1;
      }

      v9 = [v8 BOOLValue];
      swift_unknownObjectRelease();
      if (v9)
      {
        v10 = sub_2723CD3C8(a1, a2);

        return v10 & 1;
      }
    }

    return 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VCUtilities(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for VCUtilities(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_280893E38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280893E38);
    }
  }
}

uint64_t sub_2723CE028(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2723CE06C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void sub_2723CE0C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
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

uint64_t sub_2723CE1B0()
{
  v1 = *v0;
  sub_2723FEC94();
  MEMORY[0x2743C78D0](v1);
  return sub_2723FECB4();
}

uint64_t sub_2723CE224(uint64_t a1)
{
  v2 = *v1;
  sub_2723FEC94();
  MEMORY[0x2743C78D0](v2);
  return sub_2723FECB4();
}

const char *sub_2723CE27C()
{
  v1 = *v0;
  v2 = "use_speech_detector";
  v3 = "glass_overlays";
  if (v1 != 6)
  {
    v3 = "use_whats_new_settings_segmented_control";
  }

  v4 = "swift_coding_mode";
  if (v1 != 4)
  {
    v4 = "input_audio_coexistence_support";
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = "llm_command_handling";
  if (v1 != 2)
  {
    v5 = "vocabulary_sync";
  }

  if (*v0)
  {
    v2 = "use_streaming_dictation";
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *sub_2723CE368()
{
  if (*v0)
  {
    return "SolariumTV";
  }

  else
  {
    return "Solarium";
  }
}

uint64_t sub_2723CE3A0()
{
  sub_2723FEC94();
  MEMORY[0x2743C78D0](0);
  return sub_2723FECB4();
}

uint64_t sub_2723CE40C(uint64_t a1)
{
  sub_2723FEC94();
  MEMORY[0x2743C78D0](0);
  return sub_2723FECB4();
}

unint64_t sub_2723CE498()
{
  result = qword_280893E78;
  if (!qword_280893E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893E78);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t static VCFeatureFlags.inputAudioCoexistenceSupportEnabled()()
{
  v4 = &_s9VCFeatureON;
  v5 = sub_2723CE498();
  LOBYTE(v3[0]) = 5;
  v0 = sub_2723FE354();
  __swift_destroy_boxed_opaque_existential_1(v3);
  if (v0 & 1) != 0 && (v4 = &_s11VCMXFeatureON, v5 = sub_2723CE764(), v1 = sub_2723FE354(), __swift_destroy_boxed_opaque_existential_1(v3), (v1))
  {
    return [swift_getObjCClassFromMetadata() isVirtualMachine] ^ 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2723CE764()
{
  result = qword_280893E80;
  if (!qword_280893E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893E80);
  }

  return result;
}

unint64_t sub_2723CE808()
{
  result = qword_280893E88;
  if (!qword_280893E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893E88);
  }

  return result;
}

uint64_t sub_2723CE8EC(uint64_t a1, uint64_t (*a2)(void), char a3)
{
  v6[3] = a1;
  v6[4] = a2();
  LOBYTE(v6[0]) = a3;
  v4 = sub_2723FE354();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4 & 1;
}

uint64_t sub_2723CE964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), char a5)
{
  v8[3] = a3;
  v8[4] = a4(a1, a2);
  LOBYTE(v8[0]) = a5;
  v6 = sub_2723FE354();
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6 & 1;
}

VCFeatureFlags __swiftcall VCFeatureFlags.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for VCFeatureFlags()
{
  result = qword_280893E90;
  if (!qword_280893E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280893E90);
  }

  return result;
}

uint64_t _s17VCSolariumFeatureOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s17VCSolariumFeatureOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s9VCFeatureOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9VCFeatureOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2723CED94()
{
  result = qword_280893E98;
  if (!qword_280893E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893E98);
  }

  return result;
}

unint64_t sub_2723CEDEC()
{
  result = qword_280893EA0;
  if (!qword_280893EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893EA0);
  }

  return result;
}

unint64_t sub_2723CEE44()
{
  result = qword_280893EA8;
  if (!qword_280893EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893EA8);
  }

  return result;
}

uint64_t VCVocabularyEntry.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2723FE294();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t VCVocabularyEntry.creationDate.setter(uint64_t a1)
{
  v3 = sub_2723FE294();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t VCVocabularyEntry.text.getter()
{
  v1 = *(v0 + *(type metadata accessor for VCVocabularyEntry(0) + 20));

  return v1;
}

uint64_t type metadata accessor for VCVocabularyEntry(uint64_t a1)
{
  result = qword_280893F80;
  if (!qword_280893F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VCVocabularyEntry.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for VCVocabularyEntry(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t VCVocabularyEntry.pronunciations.getter()
{
  type metadata accessor for VCVocabularyEntry(0);
}

uint64_t VCVocabularyEntry.pronunciations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VCVocabularyEntry(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t VCVocabularyEntry.modificationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for VCVocabularyEntry(0);
  sub_2723D9360(v1 + *(v6 + 28), v5, &qword_280893EB0, &unk_2723FFC80);
  v7 = sub_2723FE294();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  (*(v8 + 16))(a1, v1, v7);
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_2723D9188(v5, &qword_280893EB0, &unk_2723FFC80);
  }

  return result;
}

BOOL VCVocabularyEntry.isMissingModificationDate.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for VCVocabularyEntry(0);
  sub_2723D9360(v0 + *(v4 + 28), v3, &qword_280893EB0, &unk_2723FFC80);
  v5 = sub_2723FE294();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) == 1;
  sub_2723D9188(v3, &qword_280893EB0, &unk_2723FFC80);
  return v6;
}

uint64_t VCVocabularyEntry.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2723FE2D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(type metadata accessor for VCVocabularyEntry(0) + 32) + 8))
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CC9668], v3);
    v7 = sub_2723FE2C4();
    v9 = v8;
    (*(v4 + 8))(v6, v3);
    v20[4] = v7;
    v20[5] = v9;
    v20[2] = 45;
    v20[3] = 0xE100000000000000;
    v20[0] = 95;
    v20[1] = 0xE100000000000000;
    sub_2723CD24C();
    sub_2723FE984();

    return sub_2723FE2A4();
  }

  else
  {
    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v11 = sub_2723EC124();
    v13 = v12;
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v14 = qword_280894088;
    v15 = [objc_opt_self() sharedPreferences];
    v16 = [v15 languageCode];

    if (v16)
    {
      v17 = sub_2723FE5B4();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    sub_2723FE2F4();
    sub_2723EB6EC(v14, v11, v13, v17, v19, a1);
  }
}

uint64_t VCVocabularyEntry.additionalInfo.getter()
{
  v1 = v0 + *(type metadata accessor for VCVocabularyEntry(0) + 40);
  v2 = *v1;
  sub_2723D5A4C(*v1, *(v1 + 8));
  return v2;
}

void VCVocabularyEntry.additionalInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for VCVocabularyEntry(0) + 40);
  sub_2723D5A60(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
}

uint64_t VCVocabularyEntry.asDictionary.getter()
{
  v15 = *MEMORY[0x277D85DE8];
  sub_2723FE084();
  swift_allocObject();
  sub_2723FE074();
  type metadata accessor for VCVocabularyEntry(0);
  sub_2723D91E8(&qword_280893EB8, type metadata accessor for VCVocabularyEntry, &protocol conformance descriptor for VCVocabularyEntry);
  v1 = sub_2723FE064();
  v3 = v2;

  v4 = objc_opt_self();
  v5 = sub_2723FE214();
  *&v13 = 0;
  v6 = [v4 JSONObjectWithData:v5 options:0 error:&v13];

  v7 = v13;
  if (v6)
  {
    sub_2723FE994();
    sub_2723CE0C0(v1, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = v7;
    v9 = sub_2723FE164();

    swift_willThrow();
    sub_2723CE0C0(v1, v3);

    v13 = 0u;
    v14 = 0u;
  }

  v11[0] = v13;
  v11[1] = v14;
  if (!*(&v14 + 1))
  {
    return 0;
  }

  sub_2723D5A74(v11, &v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E68, &qword_2723FFA28);
  if (swift_dynamicCast())
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

VoiceControl::VCVocabularyEntry::CodingKeys_optional __swiftcall VCVocabularyEntry.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2723FEB64();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

VoiceControl::VCVocabularyEntry::CodingKeys_optional __swiftcall VCVocabularyEntry.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = VCVocabularyEntry.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_2723CFAD8()
{
  v1 = *v0;
  v2 = 0x6E6F697461657243;
  v3 = 0x6574656C65447349;
  if (v1 != 5)
  {
    v3 = 0x6E6F697469646441;
  }

  v4 = 1954047316;
  if (v1 != 3)
  {
    v4 = 0x7341504974786554;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2723CFBE4(uint64_t a1)
{
  sub_2723FE634();
}

uint64_t sub_2723CFD14(uint64_t a1, unsigned __int8 a2)
{
  sub_2723FEC94();
  sub_2723FE634();

  return sub_2723FECB4();
}

void sub_2723CFE5C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065746144;
  v4 = 0x6E6F697461657243;
  v5 = 0xE900000000000064;
  v6 = 0x6574656C65447349;
  if (v2 != 5)
  {
    v6 = 0x6E6F697469646441;
    v5 = 0xEE006F666E496C61;
  }

  v7 = 0xE400000000000000;
  v8 = 1954047316;
  if (v2 != 3)
  {
    v8 = 0x7341504974786554;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x8000000272400A30;
  if (v2 != 1)
  {
    v9 = 0x8000000272400A50;
  }

  if (*v1)
  {
    v4 = 0xD000000000000010;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

VoiceControl::VCVocabularyEntry::CodingKeys_optional sub_2723CFF54@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = VCVocabularyEntry.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_2723CFFA4(uint64_t a1)
{
  v2 = sub_2723D5AC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2723CFFE0(uint64_t a1)
{
  v2 = sub_2723D5AC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VCVocabularyEntry.id.getter()
{
  v1 = v0;
  v2 = sub_2723FE2D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2723FE344();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v35 = 0xE000000000000000;
  v10 = type metadata accessor for VCVocabularyEntry(0);
  if (*(v1 + *(v10 + 32) + 8))
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CC9668], v2);
    v11 = sub_2723FE2C4();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v32 = v11;
    v33 = v13;
    v30 = 45;
    v31 = 0xE100000000000000;
    v28 = 95;
    v29 = 0xE100000000000000;
    sub_2723CD24C();
    sub_2723FE984();

    sub_2723FE2A4();
  }

  else
  {
    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v26 = sub_2723EC124();
    v15 = v14;
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v27 = v1;
    v16 = qword_280894088;
    v17 = [objc_opt_self() sharedPreferences];
    v18 = [v17 languageCode];

    if (v18)
    {
      v19 = sub_2723FE5B4();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    sub_2723FE2F4();
    sub_2723EB6EC(v16, v26, v15, v19, v21, v9);

    v1 = v27;
  }

  v22 = sub_2723FE2B4();
  v24 = v23;
  (*(v7 + 8))(v9, v6);
  MEMORY[0x2743C7290](v22, v24);

  MEMORY[0x2743C7290](8250, 0xE200000000000000);
  MEMORY[0x2743C7290](*(v1 + *(v10 + 20)), *(v1 + *(v10 + 20) + 8));
  return v34;
}

uint64_t VCVocabularyEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EC0, &unk_2723FFC90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2723D5AC8();
  sub_2723FED04();
  LOBYTE(v13) = 0;
  sub_2723FE294();
  sub_2723D91E8(&qword_280893ED0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_2723FEC04();
  if (!v2)
  {
    v9 = type metadata accessor for VCVocabularyEntry(0);
    LOBYTE(v13) = 1;
    sub_2723FEBE4();
    LOBYTE(v13) = 2;
    sub_2723FEBC4();
    LOBYTE(v13) = 3;
    sub_2723FEBF4();
    v13 = *(v3 + *(v9 + 24));
    v15 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E70, &unk_2723FFA30);
    sub_2723D5BB8(&qword_280893ED8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_2723FEBE4();
    LOBYTE(v13) = 5;
    sub_2723FEBD4();
    v10 = (v3 + *(v9 + 40));
    v11 = v10[1];
    v13 = *v10;
    v14 = v11;
    v15 = 6;
    sub_2723D5A4C(v13, v11);
    sub_2723D5B64();
    sub_2723FEBE4();
    sub_2723D5A60(v13, v14);
  }

  return (*(v6 + 8))(v8, v5);
}

void VCVocabularyEntry.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_2723FE294();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EE8, &qword_2723FFCA0);
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = type metadata accessor for VCVocabularyEntry(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v7 + 56);
  v42 = *(v14 + 28);
  v17(&v16[v42], 1, 1, v6);
  v18 = *(v13 + 40);
  v39 = v16;
  v40 = &v16[v18];
  v41 = a1;
  *v40 = xmmword_2723FFC50;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2723D5AC8();
  v37 = v12;
  v19 = v38;
  sub_2723FECF4();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
    v21 = v39;

    sub_2723D9188(&v21[v42], &qword_280893EB0, &unk_2723FFC80);

    sub_2723D5A60(*v40, *(v40 + 1));
  }

  else
  {
    v20 = v35;
    v33 = v13;
    v38 = v7;
    LOBYTE(v43) = 0;
    sub_2723D91E8(&qword_280893EF0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_2723FEBB4();
    v22 = v39;
    (*(v38 + 32))(v39, v9, v6);
    LOBYTE(v43) = 1;
    sub_2723FEB94();
    sub_2723D928C(v5, v22 + v42, &qword_280893EB0, &unk_2723FFC80);
    LOBYTE(v43) = 2;
    v23 = sub_2723FEB74();
    v24 = v33;
    v25 = (v22 + v33[8]);
    *v25 = v23;
    v25[1] = v26;
    LOBYTE(v43) = 3;
    v27 = sub_2723FEBA4();
    v28 = (v22 + v24[5]);
    *v28 = v27;
    v28[1] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E70, &unk_2723FFA30);
    v45 = 4;
    sub_2723D5BB8(&qword_280893EF8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_2723FEB94();
    *(v22 + v24[6]) = v43;
    LOBYTE(v43) = 5;
    *(v22 + v24[9]) = sub_2723FEB84();
    v45 = 6;
    sub_2723D5C24();
    sub_2723FEB94();
    (*(v20 + 8))(v37, v36);
    v31 = v43;
    v30 = v44;
    v32 = v40;
    sub_2723D5A60(*v40, *(v40 + 1));
    *v32 = v31;
    *(v32 + 1) = v30;
    sub_2723D5C78(v22, v34);
    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_2723D88A0(v22, type metadata accessor for VCVocabularyEntry);
  }
}

uint64_t sub_2723D0D70@<X0>(uint64_t *a1@<X8>)
{
  result = VCVocabularyEntry.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static UTType.voiceControlVocabulary.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2723FE3B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F08, &qword_2723FFCA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_2723FE364();
  sub_2723FE374();
  result = (*(v3 + 48))(v6, 1, v2);
  if (result != 1)
  {
    return (*(v3 + 32))(a1, v6, v2);
  }

  __break(1u);
  return result;
}

void *static VCVocabularyImportExport.import(from:)(unint64_t a1)
{
  v210 = a1;
  v1 = sub_2723FE344();
  MEMORY[0x28223BE20](v1 - 8);
  v193 = v184 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_2723FE564();
  v196 = *(v191 - 8);
  v3 = MEMORY[0x28223BE20](v191);
  v195 = v184 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v194 = v184 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F10, &qword_2723FFCB0);
  v202 = *(v6 - 8);
  v203 = v6;
  MEMORY[0x28223BE20](v6);
  v204 = v184 - v7;
  v8 = sub_2723FE0C4();
  v9 = *(v8 - 1);
  v206 = v8;
  v207 = v9;
  MEMORY[0x28223BE20](v8);
  v205 = v184 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2723FE5E4();
  MEMORY[0x28223BE20](v11 - 8);
  v192 = v184 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2723FE3B4();
  v14 = *(v13 - 8);
  v200 = v13;
  v201 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v189 = v184 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v198 = v184 - v18;
  MEMORY[0x28223BE20](v17);
  v199 = v184 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F08, &qword_2723FFCA8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = (v184 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v184 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v184 - v27;
  v29 = sub_2723FE154();
  v209 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = v184 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F18, &qword_2723FFCB8);
  inited = swift_initStackObject();
  v197 = xmmword_2723FFC60;
  *(inited + 16) = xmmword_2723FFC60;
  v33 = *MEMORY[0x277CBE7B8];
  *(inited + 32) = *MEMORY[0x277CBE7B8];
  v34 = v33;
  sub_2723D86AC(inited);
  swift_setDeallocating();
  sub_2723D88A0(inited + 32, type metadata accessor for URLResourceKey);
  v35 = v210;
  v36 = v208;
  sub_2723FE194();

  if (v36)
  {
    return v35;
  }

  v208 = v23;
  v187 = v29;
  v188 = 0;
  sub_2723FE144();
  sub_2723D9360(v28, v26, &qword_280893F08, &qword_2723FFCA8);
  v38 = v200;
  v37 = v201;
  v39 = *(v201 + 48);
  v40 = v39(v26, 1, v200);
  v41 = v28;
  v186 = v31;
  if (v40 == 1)
  {
    v192 = v28;
    sub_2723D9188(v26, &qword_280893F08, &qword_2723FFCA8);
    v35 = 0;
    v42 = v187;
    v43 = v209;
    goto LABEL_4;
  }

  v185 = v39;
  v35 = v199;
  v184[0] = *(v37 + 32);
  v184[1] = v37 + 32;
  (v184[0])();
  v45 = v198;
  sub_2723FE3A4();
  v42 = sub_2723FE394();
  v48 = *(v37 + 8);
  v46 = v37 + 8;
  v47 = v48;
  v48(v45, v38);
  v190 = v48;
  if ((v42 & 1) == 0)
  {
    v192 = v41;
    sub_2723FE364();
    v53 = sub_2723FE394();
    v201 = v46;
    v47(v45, v38);
    v55 = v195;
    v54 = v196;
    if ((v53 & 1) == 0)
    {
      v56 = sub_2723FE184();
      v58 = v57;
      sub_2723FE364();
      v59 = v208;
      sub_2723FE374();
      v60 = v200;
      if (v185(v59, 1, v200) == 1)
      {
        __break(1u);
        goto LABEL_90;
      }

      v61 = v189;
      (v184[0])(v189, v59, v60);
      v62 = sub_2723FE384();
      v64 = v63;
      v47(v61, v60);
      if (v64)
      {
        v54 = v196;
        if (v56 == v62 && v64 == v58)
        {

          goto LABEL_24;
        }

        v81 = sub_2723FEC44();

        if (v81)
        {
          goto LABEL_24;
        }
      }

      else
      {

        v54 = v196;
      }

      v102 = v55;
      v103 = v194;
      sub_2723FE554();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F20, &qword_2723FFCC0);
      v104 = swift_allocObject();
      *(v104 + 16) = v197;
      v105 = sub_2723FE1A4();
      v107 = v106;
      *(v104 + 56) = MEMORY[0x277D837D0];
      *(v104 + 64) = sub_2723D8900();
      *(v104 + 32) = v105;
      *(v104 + 40) = v107;
      v108 = v191;
      (*(v54 + 16))(v102, v103, v191);
      type metadata accessor for VCSettings();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v110 = [objc_opt_self() bundleForClass_];
      sub_2723FE324();
      sub_2723FE5F4();
      v111 = sub_2723FE584();
      v113 = v112;

      (*(v54 + 8))(v103, v108);
      v114 = *MEMORY[0x277CCA738];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F30, &qword_2723FFCC8);
      v115 = swift_initStackObject();
      *(v115 + 16) = v197;
      *(v115 + 32) = sub_2723FE5B4();
      *(v115 + 72) = MEMORY[0x277D837D0];
      *(v115 + 40) = v116;
      *(v115 + 48) = v111;
      *(v115 + 56) = v113;
      v117 = v114;
      sub_2723D7BC0(v115);
      swift_setDeallocating();
      sub_2723D9188(v115 + 32, &qword_280893F38, &unk_2723FFCD0);
      v118 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v35 = sub_2723FE494();

      [v118 initWithDomain:v117 code:262 userInfo:v35];

      swift_willThrow();
      v47(v199, v200);
      goto LABEL_29;
    }

LABEL_24:
    v82 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
    v83 = sub_2723FE1B4();
    v84 = [v82 initWithContentsOfURL_];

    if (v84)
    {
      *&v214 = 0xD000000000000014;
      *(&v214 + 1) = 0x8000000272400B80;
      v85 = [v84 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v85)
      {
        sub_2723FE994();
        swift_unknownObjectRelease();
      }

      else
      {
        v214 = 0u;
        v215 = 0u;
      }

      v42 = v187;
      v119 = v194;
      v211 = v214;
      v212 = v215;
      if (*(&v215 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F48, &qword_2723FFCE0);
        v120 = swift_dynamicCast();
        if (v120)
        {
          v35 = v213;
          *&v211 = MEMORY[0x277D84F90];
          MEMORY[0x28223BE20](v120);
          v184[-2] = v210;
          v184[-1] = &v211;
          v121 = v188;
          sub_2723D3524(sub_2723D8954, &v184[-4], v35);
          v43 = v209;
          if (v121)
          {

            v190(v199, v200);
            sub_2723D9188(v192, &qword_280893F08, &qword_2723FFCA8);
            (*(v43 + 8))(v186, v42);

            return v35;
          }

          if (qword_280893DC8 != -1)
          {
            swift_once();
          }

          v35 = VCSettings.addVocabularyEntries(entries:)(v211);

          v190(v199, v200);

          goto LABEL_4;
        }

        v208 = v84;
      }

      else
      {
        v208 = v84;
        sub_2723D9188(&v211, &qword_280893F40, &unk_272400070);
      }

      sub_2723FE554();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F20, &qword_2723FFCC0);
      v122 = swift_allocObject();
      *(v122 + 16) = v197;
      v123 = sub_2723FE1A4();
      v125 = v124;
      *(v122 + 56) = MEMORY[0x277D837D0];
      *(v122 + 64) = sub_2723D8900();
      *(v122 + 32) = v123;
      *(v122 + 40) = v125;
      v126 = v191;
      (*(v54 + 16))(v195, v119, v191);
      type metadata accessor for VCSettings();
      v127 = swift_getObjCClassFromMetadata();
      v128 = [objc_opt_self() bundleForClass_];
      sub_2723FE324();
      sub_2723FE5F4();
      v129 = sub_2723FE584();
      v131 = v130;

      (*(v54 + 8))(v119, v126);
      v132 = *MEMORY[0x277CCA738];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F30, &qword_2723FFCC8);
      v133 = swift_initStackObject();
      *(v133 + 16) = v197;
      *(v133 + 32) = sub_2723FE5B4();
      *(v133 + 72) = MEMORY[0x277D837D0];
      *(v133 + 40) = v134;
      *(v133 + 48) = v129;
      *(v133 + 56) = v131;
      v35 = v132;
      sub_2723D7BC0(v133);
      swift_setDeallocating();
      sub_2723D9188(v133 + 32, &qword_280893F38, &unk_2723FFCD0);
      v135 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v136 = sub_2723FE494();

      [v135 initWithDomain:v35 code:3840 userInfo:v136];

      swift_willThrow();
      v190(v199, v200);
      sub_2723D9188(v192, &qword_280893F08, &qword_2723FFCA8);
      (v209)[1](v186, v42);
      return v35;
    }

    v86 = v194;
    sub_2723FE554();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F20, &qword_2723FFCC0);
    v87 = swift_allocObject();
    *(v87 + 16) = v197;
    v88 = sub_2723FE1A4();
    v90 = v89;
    *(v87 + 56) = MEMORY[0x277D837D0];
    *(v87 + 64) = sub_2723D8900();
    *(v87 + 32) = v88;
    *(v87 + 40) = v90;
    v91 = v191;
    (*(v54 + 16))(v55, v86, v191);
    type metadata accessor for VCSettings();
    v92 = swift_getObjCClassFromMetadata();
    v93 = [objc_opt_self() bundleForClass_];
    sub_2723FE324();
    sub_2723FE5F4();
    v94 = sub_2723FE584();
    v96 = v95;

    (*(v54 + 8))(v86, v91);
    v97 = *MEMORY[0x277CCA738];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F30, &qword_2723FFCC8);
    v98 = swift_initStackObject();
    *(v98 + 16) = v197;
    *(v98 + 32) = sub_2723FE5B4();
    *(v98 + 72) = MEMORY[0x277D837D0];
    *(v98 + 40) = v99;
    *(v98 + 48) = v94;
    *(v98 + 56) = v96;
    v100 = v97;
    sub_2723D7BC0(v98);
    swift_setDeallocating();
    sub_2723D9188(v98 + 32, &qword_280893F38, &unk_2723FFCD0);
    v101 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v35 = sub_2723FE494();

    [v101 initWithDomain:v100 code:3840 userInfo:v35];

    swift_willThrow();
    v190(v199, v200);
LABEL_29:
    v52 = v192;
    goto LABEL_30;
  }

  sub_2723FE5D4();
  v49 = v188;
  v50 = sub_2723FE544();
  if (v49)
  {
    v190(v35, v200);
    v52 = v41;
LABEL_30:
    sub_2723D9188(v52, &qword_280893F08, &qword_2723FFCA8);
    (v209)[1](v186, v187);
    return v35;
  }

  v188 = 0;
  v201 = v46;
  v192 = v41;
  *&v211 = v50;
  *(&v211 + 1) = v51;
  v65 = v205;
  sub_2723FE0B4();
  v210 = sub_2723CD24C();
  v66 = sub_2723FE964();
  v67 = v207 + 8;
  v68 = v65;
  v43 = v206;
  v208 = *(v207 + 8);
  (v208)(v68, v206);

  v69 = *(v66 + 16);
  if (v69)
  {
    v207 = v67;
    *&v214 = MEMORY[0x277D84F90];
    sub_2723D6BE8(0, v69, 0);
    v70 = v214;
    v198 = v66;
    v71 = (v66 + 40);
    do
    {
      v72 = *v71;
      *&v211 = *(v71 - 1);
      *(&v211 + 1) = v72;

      v42 = v70;
      v73 = v205;
      sub_2723FE094();
      v74 = sub_2723FE974();
      v76 = v75;
      v77 = v73;
      v70 = v42;
      (v208)(v77, v43);

      *&v214 = v42;
      v79 = *(v42 + 16);
      v78 = *(v42 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_2723D6BE8((v78 > 1), v79 + 1, 1);
        v70 = v214;
      }

      *(v70 + 16) = v79 + 1;
      v80 = v70 + 16 * v79;
      *(v80 + 32) = v74;
      *(v80 + 40) = v76;
      v71 += 2;
      --v69;
      v43 = v206;
    }

    while (v69);
  }

  else
  {

    v70 = MEMORY[0x277D84F90];
  }

  v137 = 0;
  v138 = *(v70 + 16);
  v139 = v70 + 40;
  v35 = MEMORY[0x277D84F90];
  v140 = v190;
LABEL_41:
  v141 = (v139 + 16 * v137);
  while (1)
  {
    if (v138 == v137)
    {

      v147 = sub_2723D8614(v35);

      v148 = *(v147 + 16);
      v42 = v187;
      if (v148)
      {
        v149 = sub_2723D612C(*(v147 + 16), 0);
        v150 = sub_2723D7A68(&v211, v149 + 4, v148, v147);
        sub_2723D8970(v211);
        v151 = v150 == v148;
        v43 = v209;
        if (v151)
        {
          goto LABEL_56;
        }

        __break(1u);
      }

      v149 = MEMORY[0x277D84F90];
      v43 = v209;
LABEL_56:
      *&v211 = v149;

      v152 = v188;
      sub_2723D61B0(&v211);
      v188 = v152;
      if (!v152)
      {

        v153 = v211;
        if (qword_280893DC8 != -1)
        {
          v183 = v211;
          swift_once();
          v153 = v183;
        }

        v154 = qword_280894080;
        v155 = *(v153 + 16);
        if (v155)
        {
          v213 = MEMORY[0x277D84F90];
          v156 = v153;
          sub_2723D6C48(0, v155, 0);
          v157 = v213;
          v158 = objc_opt_self();
          v205 = OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain;
          v206 = v158;
          v198 = "CACAlwaysShowOverlay";
          *&v197 = v156;
          v159 = (v156 + 40);
          v160 = v204;
          while (1)
          {
            v161 = *v159;
            *v160 = *(v159 - 1);
            v160[1] = v161;
            v160[2] = 0;
            v162 = *&v205[v154];
            v210 = v155;
            if (v162)
            {

              v163 = v162;
              v164 = sub_2723FE574();
              v165 = [v163 objectForKey_];

              v166 = v203;
              if (v165)
              {
                sub_2723FE994();
                swift_unknownObjectRelease();
              }

              else
              {

                v214 = 0u;
                v215 = 0u;
              }

              v211 = v214;
              v212 = v215;
              if (*(&v215 + 1))
              {
                v167 = swift_dynamicCast();
                v168 = v214;
                if (!v167)
                {
                  v168 = 0;
                }

                v207 = v168;
                if (v167)
                {
                  v169 = *(&v214 + 1);
                }

                else
                {
                  v169 = 0;
                }

                goto LABEL_73;
              }
            }

            else
            {
              v211 = 0u;
              v212 = 0u;

              v166 = v203;
            }

            sub_2723D9188(&v211, &qword_280893F40, &unk_272400070);
            v207 = 0;
            v169 = 0;
LABEL_73:
            v170 = v154;
            if (qword_280893E00 != -1)
            {
              swift_once();
            }

            v208 = v157;
            v171 = qword_280894088;
            v172 = [v206 sharedPreferences];
            v173 = [v172 languageCode];

            if (v173)
            {
              v174 = sub_2723FE5B4();
              v176 = v175;
            }

            else
            {
              v174 = 0;
              v176 = 0;
            }

            v177 = *(v166 + 64);
            sub_2723FE2F4();
            v178 = &v204[v177];
            v179 = v204;
            v180 = v171;
            v154 = v170;
            sub_2723EB6EC(v180, v207, v169, v174, v176, v178);

            v157 = v208;
            v213 = v208;
            v182 = v208[2];
            v181 = v208[3];
            if (v182 >= v181 >> 1)
            {
              sub_2723D6C48((v181 > 1), v182 + 1, 1);
              v157 = v213;
            }

            v157[2] = v182 + 1;
            sub_2723D92F4(v179, v157 + ((*(v202 + 80) + 32) & ~*(v202 + 80)) + *(v202 + 72) * v182, &qword_280893F10, &qword_2723FFCB0);
            v159 += 2;
            v43 = v209;
            v155 = v210 - 1;
            v160 = v179;
            v140 = v190;
            if (v210 == 1)
            {

              v42 = v187;
              goto LABEL_83;
            }
          }
        }

        v157 = MEMORY[0x277D84F90];
LABEL_83:
        v35 = VCSettings.addVocabularyEntries(entries:)(v157);

        v140(v199, v200);
LABEL_4:
        if (qword_280893DC8 != -1)
        {
          goto LABEL_88;
        }

        goto LABEL_5;
      }

LABEL_90:

      __break(1u);
      return result;
    }

    if (v137 >= *(v70 + 16))
    {
      break;
    }

    ++v137;
    v42 = *(v141 - 1);
    v43 = *v141;
    v141 += 2;
    v142 = HIBYTE(v43) & 0xF;
    if ((v43 & 0x2000000000000000) == 0)
    {
      v142 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (v142)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v210 = v139;
      *&v211 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2723D6BE8(0, v35[2] + 1, 1);
        v35 = v211;
      }

      v145 = v35[2];
      v144 = v35[3];
      if (v145 >= v144 >> 1)
      {
        sub_2723D6BE8((v144 > 1), v145 + 1, 1);
        v35 = v211;
      }

      v35[2] = v145 + 1;
      v146 = &v35[2 * v145];
      v146[4] = v42;
      v146[5] = v43;
      v140 = v190;
      v139 = v210;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_88:
  swift_once();
LABEL_5:
  _s12VoiceControl10VCSettingsC32triggerVocabularySyncIfNecessaryyyF_0();
  sub_2723D9188(v192, &qword_280893F08, &qword_2723FFCA8);
  (*(v43 + 8))(v186, v42);
  return v35;
}

uint64_t sub_2723D277C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for VCVocabularyEntry(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_2723D5C78(a3 + v15 + v16 * v13, v12);
      v17 = a1(v12);
      if (v3)
      {
        sub_2723D88A0(v12, type metadata accessor for VCVocabularyEntry);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_2723D8978(v12, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2723D6C28(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2723D6C28((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_2723D8978(v24, v14 + v15 + v20 * v16);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_2723D88A0(v12, type metadata accessor for VCVocabularyEntry);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_2723D29CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x277D84F90];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_2723D6BE8(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_2723D6BE8((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t sub_2723D2B44(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2723FEB04())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x2743C76B0](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_2723FEAA4();
        sub_2723FEAC4();
        v4 = v15;
        sub_2723FEAD4();
        sub_2723FEAB4();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

uint64_t sub_2723D2CF0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v71 = a3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F10, &qword_2723FFCB0);
  v70 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v69 = &v62 - v4;
  v5 = sub_2723FE344();
  v68 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  *&v72 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = sub_2723FE564();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v62 - v13;
  v15 = *a1;
  if (*(v15 + 16) && (v16 = sub_2723E4F34(1954047316, 0xE400000000000000), (v17 & 1) != 0) && (sub_2723D9230(*(v15 + 56) + 32 * v16, v75), (swift_dynamicCast() & 1) != 0))
  {
    v66 = v73;
    v65 = v74;
    if (*(v15 + 16))
    {
      v18 = sub_2723E4F34(0x7341504974786554, 0xE800000000000000);
      v19 = v5;
      if (v20)
      {
        sub_2723D9230(*(v15 + 56) + 32 * v18, v75);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E70, &unk_2723FFA30);
        v21 = swift_dynamicCast();
        v22 = v73;
        if (!v21)
        {
          v22 = 0;
        }

        v64 = v22;
      }

      else
      {
        v64 = 0;
      }
    }

    else
    {
      v64 = 0;
      v19 = v5;
    }

    v40 = v69;
    if (*(v15 + 16) && (v41 = sub_2723E4F34(0xD000000000000010, 0x8000000272400A50), (v42 & 1) != 0))
    {
      sub_2723D9230(*(v15 + 56) + 32 * v41, v75);
      v43 = swift_dynamicCast();
      v44 = v73;
      if (!v43)
      {
        v44 = 0;
      }

      v69 = v44;
      if (v43)
      {
        v45 = v74;
      }

      else
      {
        v45 = 0;
      }

      v63 = v45;
    }

    else
    {
      v69 = 0;
      v63 = 0;
    }

    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v46 = qword_280894088;
    v47 = [objc_opt_self() sharedPreferences];
    v48 = [v47 languageCode];

    if (v48)
    {
      v49 = sub_2723FE5B4();
      v51 = v50;
    }

    else
    {
      v49 = 0;
      v51 = 0;
    }

    sub_2723FE2F4();
    v52 = v72;
    sub_2723EB6EC(v46, v69, v63, v49, v51, v72);

    v53 = *(v67 + 64);
    v54 = v65;
    *v40 = v66;
    *(v40 + 1) = v54;
    *(v40 + 2) = v64;
    v55 = v68;
    (*(v68 + 16))(&v40[v53], v52, v19);
    v56 = v71;
    v57 = *v71;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v56 = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = sub_2723E46DC(0, v57[2] + 1, 1, v57);
      *v56 = v57;
    }

    v60 = v57[2];
    v59 = v57[3];
    if (v60 >= v59 >> 1)
    {
      *v56 = sub_2723E46DC((v59 > 1), v60 + 1, 1, v57);
    }

    (*(v55 + 8))(v72, v19);
    v61 = *v56;
    *(v61 + 16) = v60 + 1;
    return sub_2723D92F4(v40, v61 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v60, &qword_280893F10, &qword_2723FFCB0);
  }

  else
  {
    v23 = MEMORY[0x277D837D0];
    sub_2723FE554();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F20, &qword_2723FFCC0);
    v24 = swift_allocObject();
    v72 = xmmword_2723FFC60;
    *(v24 + 16) = xmmword_2723FFC60;
    v25 = sub_2723FE1A4();
    v27 = v26;
    *(v24 + 56) = v23;
    *(v24 + 64) = sub_2723D8900();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    (*(v9 + 16))(v12, v14, v8);
    type metadata accessor for VCSettings();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v29 = [objc_opt_self() bundleForClass_];
    sub_2723FE324();
    sub_2723FE5F4();
    v30 = sub_2723FE584();
    v32 = v31;

    (*(v9 + 8))(v14, v8);
    v33 = *MEMORY[0x277CCA738];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F30, &qword_2723FFCC8);
    inited = swift_initStackObject();
    *(inited + 16) = v72;
    *(inited + 32) = sub_2723FE5B4();
    *(inited + 72) = v23;
    *(inited + 40) = v35;
    *(inited + 48) = v30;
    *(inited + 56) = v32;
    v36 = v33;
    sub_2723D7BC0(inited);
    swift_setDeallocating();
    sub_2723D9188(inited + 32, &qword_280893F38, &unk_2723FFCD0);
    v37 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v38 = sub_2723FE494();

    [v37 initWithDomain:v36 code:3840 userInfo:v38];

    return swift_willThrow();
  }
}

void (*sub_2723D3524(void (*result)(uint64_t *), uint64_t a2, uint64_t a3))(uint64_t *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      v5(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

void *static VCVocabularyImportExport.export(to:localeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v155 = a1;
  v183 = *MEMORY[0x277D85DE8];
  v154 = sub_2723FE564();
  v153 = *(v154 - 8);
  v5 = MEMORY[0x28223BE20](v154);
  v152 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v164 = &v147 - v7;
  v168 = sub_2723FE344();
  v149 = *(v168 - 8);
  v8 = MEMORY[0x28223BE20](v168);
  v151 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v166 = &v147 - v10;
  v170 = type metadata accessor for VCVocabularyEntry(0);
  v169 = *(v170 - 8);
  v11 = MEMORY[0x28223BE20](v170);
  v13 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v171 = &v147 - v15;
  MEMORY[0x28223BE20](v14);
  v172 = &v147 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F08, &qword_2723FFCA8);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v162 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v147 - v20;
  v22 = sub_2723FE3B4();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v156 = &v147 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v173 = &v147 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v147 - v28;
  v30 = sub_2723FE2D4();
  v31 = MEMORY[0x28223BE20](v30);
  v34 = &v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = v31;
  v160 = v34;
  v165 = v22;
  v148 = v32;
  if (a3)
  {
    v35 = v32;
    (*(v32 + 104))(v34, *MEMORY[0x277CC9668], v30);
    v36 = sub_2723FE2C4();
    v174 = v23;
    v38 = v37;
    (*(v35 + 8))(v34, v30);
    *&v181 = v36;
    *(&v181 + 1) = v38;
    *&v179 = 45;
    *(&v179 + 1) = 0xE100000000000000;
    *&v177 = 95;
    *(&v177 + 1) = 0xE100000000000000;
    sub_2723CD24C();
    v167 = sub_2723FE984();
    v175 = v39;
    v22 = v165;
    v40 = v174;
  }

  else
  {
    v167 = a2;
    v175 = 0;
    v40 = v23;
  }

  v176 = v13;
  v163 = sub_2723D7BC0(MEMORY[0x277D84F90]);
  v41 = sub_2723FE184();
  v43 = v42;
  sub_2723FE364();
  v158 = "ariumTV";
  sub_2723FE374();
  v157 = v40[6];
  if (v157(v21, 1, v22) == 1)
  {
    __break(1u);
  }

  v150 = v40[4];
  v150(v29, v21, v22);
  v44 = sub_2723FE384();
  v46 = v45;
  v47 = v22;
  v48 = v40[1];
  v174 = (v40 + 1);
  v48(v29, v47);
  if (v46)
  {
    if (v41 == v44 && v46 == v43)
    {

      v49 = v159;
      goto LABEL_11;
    }

    v50 = sub_2723FEC44();

    v49 = v159;
    if (v50)
    {
LABEL_11:
      if (qword_280893D60 != -1)
      {
        goto LABEL_84;
      }

      while (1)
      {
        v51 = qword_280893D68;
        v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E68, &qword_2723FFA28);
        *(&v182 + 1) = v154;
        *&v181 = v51;
        sub_2723D5A74(&v181, &v179);

        v52 = v163;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v177 = v52;
        sub_2723D7404(&v179, 0x65566D6574737953, 0xED00006E6F697372, isUniquelyReferenced_nonNull_native);
        v151 = v177;
        v54 = v170;
        v55 = v176;
        if (qword_280893DC8 != -1)
        {
          swift_once();
        }

        v162 = qword_280894080;
        v56 = VCSettings.vocabularyEntriesForAllLocales(includingDeletedEntries:)(0);
        if (!v175)
        {
LABEL_57:
          v116 = *(v56 + 16);
          if (v116)
          {
            v117 = (*(v169 + 80) + 32) & ~*(v169 + 80);
            v165 = v56;
            v118 = v56 + v117;
            v175 = MEMORY[0x277D84F90];
            v119 = *(v169 + 72);
            do
            {
              sub_2723D5C78(v118, v55);
              sub_2723FE084();
              swift_allocObject();
              sub_2723FE074();
              sub_2723D91E8(&qword_280893EB8, type metadata accessor for VCVocabularyEntry, &protocol conformance descriptor for VCVocabularyEntry);
              v120 = sub_2723FE064();
              if (v49)
              {

                sub_2723D88A0(v55, type metadata accessor for VCVocabularyEntry);
                v49 = 0;
              }

              else
              {
                v122 = v120;
                v123 = v121;

                v124 = objc_opt_self();
                v125 = sub_2723FE214();
                *&v179 = 0;
                v49 = [v124 JSONObjectWithData:v125 options:0 error:&v179];

                v126 = v179;
                if (v49)
                {
                  sub_2723FE994();
                  sub_2723CE0C0(v122, v123);
                  swift_unknownObjectRelease();
                  v49 = 0;
                }

                else
                {
                  v127 = v126;
                  v128 = sub_2723FE164();

                  swift_willThrow();
                  sub_2723CE0C0(v122, v123);

                  v181 = 0u;
                  v182 = 0u;
                }

                v179 = v181;
                v180 = v182;
                if (*(&v182 + 1) && (sub_2723D5A74(&v179, &v177), (swift_dynamicCast() & 1) != 0) && (v129 = v178) != 0)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v175 = sub_2723E48CC(0, v175[2] + 1, 1, v175);
                  }

                  v131 = v175[2];
                  v130 = v175[3];
                  if (v131 >= v130 >> 1)
                  {
                    v175 = sub_2723E48CC((v130 > 1), v131 + 1, 1, v175);
                  }

                  v132 = v176;
                  sub_2723D88A0(v176, type metadata accessor for VCVocabularyEntry);
                  v133 = v175;
                  v175[2] = v131 + 1;
                  v133[v131 + 4] = v129;
                  v55 = v132;
                }

                else
                {
                  v55 = v176;
                  sub_2723D88A0(v176, type metadata accessor for VCVocabularyEntry);
                }
              }

              v118 += v119;
              --v116;
            }

            while (v116);

            v134 = v175;
          }

          else
          {

            v134 = MEMORY[0x277D84F90];
          }

          *(&v182 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F48, &qword_2723FFCE0);
          *&v181 = v134;
          sub_2723D5A74(&v181, &v179);

          v135 = v151;
          v136 = swift_isUniquelyReferenced_nonNull_native();
          *&v177 = v135;
          sub_2723D7404(&v179, 0xD000000000000014, 0x8000000272400B80, v136);
          v137 = v177;
          sub_2723FE244();
          *(&v182 + 1) = MEMORY[0x277D839F8];
          *&v181 = v138;
          sub_2723D5A74(&v181, &v179);
          v139 = swift_isUniquelyReferenced_nonNull_native();
          *&v177 = v137;
          sub_2723D7404(&v179, 0x614474726F707845, 0xEA00000000006574, v139);
          v140 = objc_opt_self();
          v141 = sub_2723FE494();

          *&v181 = 0;
          v142 = [v140 dataWithPropertyList:v141 format:100 options:0 error:&v181];

          v143 = v181;
          if (v142)
          {
            v144 = sub_2723FE224();
            v146 = v145;

            sub_2723FE234();
            if (v49)
            {
              sub_2723CE0C0(v144, v146);
              goto LABEL_80;
            }

            sub_2723CE0C0(v144, v146);
            v55 = v134[2];
          }

          else
          {
            v55 = v143;
            sub_2723FE164();

            swift_willThrow();
LABEL_80:
          }

          return v55;
        }

        v164 = *(v56 + 16);
        if (!v164)
        {
          v58 = MEMORY[0x277D84F90];
LABEL_56:

          v56 = v58;
          goto LABEL_57;
        }

        v57 = 0;
        v158 = (v148 + 104);
        v153 = OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain;
        v157 = (v148 + 8);
        LODWORD(v156) = *MEMORY[0x277CC9668];
        v152 = "CACAlwaysShowOverlay";
        v163 = (v149 + 8);
        v58 = MEMORY[0x277D84F90];
        v59 = v172;
        v165 = v56;
        while (v57 < *(v56 + 16))
        {
          v174 = (*(v169 + 80) + 32) & ~*(v169 + 80);
          v173 = *(v169 + 72);
          sub_2723D5C78(v56 + v174 + v173 * v57, v59);
          if (*(v59 + *(v54 + 32) + 8))
          {
            v60 = v49;
            v61 = v160;
            v62 = v161;
            (*v158)(v160, v156, v161);
            v63 = sub_2723FE2C4();
            v65 = v64;
            v66 = v61;
            v49 = v60;
            (*v157)(v66, v62);
            *&v181 = v63;
            *(&v181 + 1) = v65;
            *&v179 = 45;
            *(&v179 + 1) = 0xE100000000000000;
            *&v177 = 95;
            *(&v177 + 1) = 0xE100000000000000;
            sub_2723CD24C();
            sub_2723FE984();
            v67 = v166;

            sub_2723FE2A4();
            goto LABEL_41;
          }

          v68 = *&v162[v153];
          if (v68)
          {
            v69 = v68;
            v70 = sub_2723FE574();
            v71 = [v69 objectForKey_];

            if (v71)
            {
              sub_2723FE994();
              swift_unknownObjectRelease();
            }

            else
            {

              v179 = 0u;
              v180 = 0u;
            }

            v181 = v179;
            v182 = v180;
            if (*(&v180 + 1))
            {
              v72 = swift_dynamicCast();
              if (v72)
              {
                v73 = v179;
              }

              else
              {
                v73 = 0;
              }

              if (v72)
              {
                v74 = *(&v179 + 1);
              }

              else
              {
                v74 = 0;
              }

              goto LABEL_35;
            }
          }

          else
          {
            v181 = 0u;
            v182 = 0u;
          }

          sub_2723D9188(&v181, &qword_280893F40, &unk_272400070);
          v73 = 0;
          v74 = 0;
LABEL_35:
          if (qword_280893E00 != -1)
          {
            swift_once();
          }

          v75 = qword_280894088;
          v76 = [objc_opt_self() sharedPreferences];
          v77 = [v76 languageCode];

          if (v77)
          {
            v78 = sub_2723FE5B4();
            v80 = v79;
          }

          else
          {
            v78 = 0;
            v80 = 0;
          }

          sub_2723FE2F4();
          v67 = v166;
          sub_2723EB6EC(v75, v73, v74, v78, v80, v166);

          v49 = v159;
          v54 = v170;
LABEL_41:
          v81 = sub_2723FE2B4();
          v83 = v82;
          (*v163)(v67, v168);
          if (v81 == v167 && v175 == v83)
          {

            v59 = v172;
          }

          else
          {
            v84 = sub_2723FEC44();

            v59 = v172;
            if ((v84 & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v85 = *(v59 + *(v54 + 36));
          if (v85 == 2 || (v85 & 1) == 0)
          {
            sub_2723D8978(v59, v171);
            v86 = swift_isUniquelyReferenced_nonNull_native();
            v178 = v58;
            if ((v86 & 1) == 0)
            {
              sub_2723D6C28(0, *(v58 + 16) + 1, 1);
              v59 = v172;
              v58 = v178;
            }

            v88 = *(v58 + 16);
            v87 = *(v58 + 24);
            if (v88 >= v87 >> 1)
            {
              sub_2723D6C28((v87 > 1), v88 + 1, 1);
              v59 = v172;
              v58 = v178;
            }

            *(v58 + 16) = v88 + 1;
            sub_2723D8978(v171, v58 + v174 + v88 * v173);
            goto LABEL_18;
          }

LABEL_17:
          sub_2723D88A0(v59, type metadata accessor for VCVocabularyEntry);
LABEL_18:
          ++v57;
          v55 = v176;
          v56 = v165;
          if (v164 == v57)
          {
            goto LABEL_56;
          }
        }

        __break(1u);
LABEL_84:
        swift_once();
      }
    }
  }

  else
  {
  }

  sub_2723FE554();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F20, &qword_2723FFCC0);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_2723FFC70;
  v90 = sub_2723FE1A4();
  v92 = v91;
  *(v89 + 56) = MEMORY[0x277D837D0];
  v93 = sub_2723D8900();
  *(v89 + 64) = v93;
  *(v89 + 32) = v90;
  *(v89 + 40) = v92;
  sub_2723FE364();
  v94 = v162;
  sub_2723FE374();
  v95 = v165;
  result = (v157)(v94, 1, v165);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v97 = v156;
    v150(v156, v94, v95);
    v98 = sub_2723FE384();
    v100 = v99;
    result = (v48)(v97, v95);
    if (v100)
    {

      v101 = MEMORY[0x277D837D0];
      *(v89 + 96) = MEMORY[0x277D837D0];
      *(v89 + 104) = v93;
      *(v89 + 72) = v98;
      *(v89 + 80) = v100;
      v102 = v153;
      v103 = v164;
      v104 = v154;
      (*(v153 + 16))(v152, v164, v154);
      type metadata accessor for VCSettings();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v106 = [objc_opt_self() bundleForClass_];
      sub_2723FE324();
      sub_2723FE5F4();
      v107 = sub_2723FE584();
      v109 = v108;

      (*(v102 + 8))(v103, v104);
      v110 = *MEMORY[0x277CCA738];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F30, &qword_2723FFCC8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2723FFC60;
      *(inited + 32) = sub_2723FE5B4();
      *(inited + 72) = v101;
      *(inited + 40) = v112;
      *(inited + 48) = v107;
      *(inited + 56) = v109;
      v113 = v110;
      v55 = sub_2723D7BC0(inited);
      swift_setDeallocating();
      sub_2723D9188(inited + 32, &qword_280893F38, &unk_2723FFCD0);
      v114 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v115 = sub_2723FE494();

      [v114 initWithDomain:v113 code:3840 userInfo:v115];

      swift_willThrow();
      return v55;
    }
  }

  __break(1u);
  return result;
}

uint64_t VCVocabularyEntry.shouldBeTrimmed(cutoffDate:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_2723FE294();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VCVocabularyEntry(0);
  v10 = *(v1 + *(v9 + 36));
  if (v10 == 2 || (v10 & 1) == 0)
  {
    v12 = 0;
  }

  else
  {
    sub_2723D9360(v1 + *(v9 + 28), v4, &qword_280893EB0, &unk_2723FFC80);
    v11 = *(v6 + 48);
    if (v11(v4, 1, v5) == 1)
    {
      (*(v6 + 16))(v8, v1, v5);
      if (v11(v4, 1, v5) != 1)
      {
        sub_2723D9188(v4, &qword_280893EB0, &unk_2723FFC80);
      }
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
    }

    v12 = sub_2723FE264();
    (*(v6 + 8))(v8, v5);
  }

  return v12 & 1;
}

uint64_t VCVocabularyEntry.merge(with:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v104 = a2;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = (&v88 - v5);
  v6 = sub_2723FE434();
  v97 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v95 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2723FE5E4();
  MEMORY[0x28223BE20](v8 - 8);
  v96 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v99 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v101 = &v88 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v100 = &v88 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v88 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v88 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v88 - v23;
  v25 = sub_2723FE294();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v88 - v30;
  v103 = a1;
  result = _s12VoiceControl17VCVocabularyEntryV2eeoiySbAC_ACtFZ_0(v3, a1);
  if (result)
  {
    v33 = 0;
LABEL_3:
    v34 = v104;
LABEL_4:
    *v34 = v33;
    return result;
  }

  v88 = v6;
  v89 = v19;
  v35 = type metadata accessor for VCVocabularyEntry(0);
  v36 = *(v35 + 28);
  v102 = v3;
  v98 = v36;
  sub_2723D9360(v3 + v36, v24, &qword_280893EB0, &unk_2723FFC80);
  v37 = *(v26 + 48);
  v38 = v37(v24, 1, v25);
  v90 = v37;
  v91 = v35;
  if (v38 == 1)
  {
    v22 = v24;
    v34 = v104;
LABEL_9:
    sub_2723D9188(v22, &qword_280893EB0, &unk_2723FFC80);
    v41 = v102;
    v42 = v90;
    v43 = v91;
    goto LABEL_10;
  }

  v39 = v24;
  v40 = *(v26 + 32);
  v40(v31, v39, v25);
  sub_2723D9360(v103 + *(v35 + 28), v22, &qword_280893EB0, &unk_2723FFC80);
  if (v37(v22, 1, v25) == 1)
  {
    (*(v26 + 8))(v31, v25);
    v34 = v104;
    goto LABEL_9;
  }

  v40(v29, v22, v25);
  if (sub_2723FE254())
  {
    v63 = *(v26 + 8);
    v63(v29, v25);
    result = (v63)(v31, v25);
    v33 = 1;
    goto LABEL_3;
  }

  v64 = sub_2723FE264();
  v65 = *(v26 + 8);
  v65(v29, v25);
  result = (v65)(v31, v25);
  v34 = v104;
  v41 = v102;
  v42 = v90;
  v43 = v91;
  if (v64)
  {
    goto LABEL_26;
  }

LABEL_10:
  v44 = v89;
  sub_2723D9360(v41 + v98, v89, &qword_280893EB0, &unk_2723FFC80);
  v45 = v42(v44, 1, v25);
  sub_2723D9188(v44, &qword_280893EB0, &unk_2723FFC80);
  v46 = v45 == 1;
  v47 = v103;
  if (!v46)
  {
    v48 = v103 + *(v43 + 28);
    v49 = v42;
    v50 = v103;
    v51 = v43;
    v52 = v100;
    sub_2723D9360(v48, v100, &qword_280893EB0, &unk_2723FFC80);
    v33 = 1;
    v53 = v49(v52, 1, v25);
    v54 = v52;
    v43 = v51;
    v47 = v50;
    v42 = v49;
    result = sub_2723D9188(v54, &qword_280893EB0, &unk_2723FFC80);
    if (v53 == 1)
    {
      goto LABEL_4;
    }
  }

  v55 = v34;
  v56 = v101;
  sub_2723D9360(v47 + *(v43 + 28), v101, &qword_280893EB0, &unk_2723FFC80);
  v57 = v42(v56, 1, v25);
  result = sub_2723D9188(v56, &qword_280893EB0, &unk_2723FFC80);
  if (v57 != 1)
  {
    v58 = v99;
    sub_2723D9360(v102 + v98, v99, &qword_280893EB0, &unk_2723FFC80);
    v59 = v42(v58, 1, v25);
    result = sub_2723D9188(v58, &qword_280893EB0, &unk_2723FFC80);
    if (v59 == 1)
    {
      v33 = 2;
      goto LABEL_4;
    }
  }

  v60 = *(v43 + 24);
  v61 = *(v102 + v60);
  v62 = *(v47 + v60);
  if (v61)
  {
    if (!v62)
    {
      goto LABEL_22;
    }
  }

  else if (v62)
  {
    goto LABEL_26;
  }

  result = sub_2723FE254();
  if (result)
  {
LABEL_22:
    v33 = 1;
    goto LABEL_4;
  }

  result = sub_2723FE264();
  if (result)
  {
LABEL_26:
    v33 = 2;
    goto LABEL_4;
  }

  sub_2723FE084();
  swift_allocObject();
  sub_2723FE074();
  sub_2723D91E8(&qword_280893EB8, type metadata accessor for VCVocabularyEntry, &protocol conformance descriptor for VCVocabularyEntry);
  v66 = sub_2723FE064();
  v68 = v67;

  sub_2723FE5D4();
  v69 = sub_2723FE5C4();
  v71 = v70;
  sub_2723CE0C0(v66, v68);
  if (!v71)
  {

    v69 = 0;
    v71 = 0xE000000000000000;
  }

  swift_allocObject();
  sub_2723FE074();
  v72 = sub_2723FE064();
  v74 = v73;

  sub_2723FE5D4();
  v75 = sub_2723FE5C4();
  v77 = v76;
  sub_2723CE0C0(v72, v74);
  if (!v77)
  {

    v75 = 0;
    v77 = 0xE000000000000000;
  }

  v34 = v55;
  if (v75 == v69 && v77 == v71)
  {
  }

  else
  {
    if (sub_2723FEC44())
    {

      v33 = 1;
      goto LABEL_4;
    }

    v87 = sub_2723FEC44();

    if (v87)
    {
      goto LABEL_26;
    }
  }

  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v78 = off_280894260;
  v79 = v88;
  v80 = v95;
  if (*(off_280894260 + 2))
  {
    result = sub_2723E4FAC(8);
    if (v81)
    {
      v82 = v93;
      sub_2723D9360(v78[7] + *(v92 + 72) * result, v93, &qword_280893F50, &qword_2723FFCE8);

      (*(v97 + 32))(v80, v82 + *(v94 + 48), v79);
      v83 = sub_2723FE424();
      v84 = sub_2723FE894();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_2723CB000, v83, v84, "VCVocabularyEntry.merge() unableToMerge", v85, 2u);
        v86 = v85;
        v79 = v88;
        MEMORY[0x2743C8040](v86, -1, -1);
      }

      result = (*(v97 + 8))(v80, v79);
      v33 = 3;
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2723D58CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  sub_2723D9360(v2 + *(a1 + 28), &v12 - v6, &qword_280893EB0, &unk_2723FFC80);
  v8 = sub_2723FE294();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  (*(v9 + 16))(a2, v2, v8);
  result = (v10)(v7, 1, v8);
  if (result != 1)
  {
    return sub_2723D9188(v7, &qword_280893EB0, &unk_2723FFC80);
  }

  return result;
}

void sub_2723D5A4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_2723CE06C(a1, a2);
  }
}

void sub_2723D5A60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_2723CE0C0(a1, a2);
  }
}

_OWORD *sub_2723D5A74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2723D5AC8()
{
  result = qword_280893EC8;
  if (!qword_280893EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893EC8);
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

unint64_t sub_2723D5B64()
{
  result = qword_280893EE0;
  if (!qword_280893EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893EE0);
  }

  return result;
}

uint64_t sub_2723D5BB8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280893E70, &unk_2723FFA30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2723D5C24()
{
  result = qword_280893F00;
  if (!qword_280893F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893F00);
  }

  return result;
}

uint64_t sub_2723D5C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VCVocabularyEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2723D5CDC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2723FE114();
    if (v10)
    {
      v11 = sub_2723FE134();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2723FE124();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2723FE114();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2723FE134();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2723FE124();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2723D5F0C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2723D7EE4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2723CE0C0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2723D5CDC(v13, a3, a4, &v12);
  v10 = v4;
  sub_2723CE0C0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_2723D609C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2723FEC44() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void *sub_2723D612C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FE0, "z.");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_2723D61B0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2723FD158(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2723D621C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2723D621C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2723FEC14();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2723FE794();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2723D63E4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2723D6314(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2723D6314(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_2723FEC44(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2723D63E4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2723FCB38(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2723D69C0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_2723FEC44();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_2723FEC44();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2723E42F4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2723E42F4((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2723D69C0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2723FCB38(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2723FCAAC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_2723FEC44(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_2723D69C0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_2723FEC44() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_2723FEC44() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

char *sub_2723D6BE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2723FCC30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2723D6C08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2723FCD3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2723D6C28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2723FCD64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2723D6C48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2723FCF68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2723D6C68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v36 = &v33 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FD0, "2.");
  v35 = v4;
  result = sub_2723FEB24();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v34 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v35)
      {
        sub_2723D92F4(v24, v36, &qword_280893F50, &qword_2723FFCE8);
      }

      else
      {
        sub_2723D9360(v24, v36, &qword_280893F50, &qword_2723FFCE8);
      }

      sub_2723FEC94();
      v37 = v22;
      VCLogging.Category.rawValue.getter();
      sub_2723FE634();

      result = sub_2723FECB4();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      result = sub_2723D92F4(v36, *(v9 + 56) + v23 * v17, &qword_280893F50, &qword_2723FFCE8);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2723D6FF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FC8, "..");
  v33 = v4;
  result = sub_2723FEB24();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_2723D5A74(v24, v34);
      }

      else
      {
        sub_2723D9230(v24, v34);
      }

      sub_2723FEC94();
      sub_2723FE634();
      result = sub_2723FECB4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_2723D5A74(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2723D72A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2723E4FAC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
      return sub_2723D928C(a1, v17 + *(*(v18 - 8) + 72) * v10, &qword_280893F50, &qword_2723FFCE8);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_2723D7678();
    goto LABEL_7;
  }

  sub_2723D6C68(v13, a3 & 1);
  v20 = sub_2723E4FAC(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_2723FEC84();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_2723D7554(v10, a2, a1, v16);
}

_OWORD *sub_2723D7404(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2723E4F34(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2723D78C4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2723D6FF0(v16, a4 & 1);
    v11 = sub_2723E4F34(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2723FEC84();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_2723D5A74(a1, v22);
  }

  else
  {
    sub_2723D760C(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_2723D7554(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  result = sub_2723D92F4(a3, v7 + *(*(v8 - 8) + 72) * a1, &qword_280893F50, &qword_2723FFCE8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_2723D760C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2723D5A74(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_2723D7678()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v24 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FD0, "2.");
  v4 = *v0;
  v5 = sub_2723FEB14();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    v13 = *(v4 + 64);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v14 = v12 & v13;
    v15 = (v11 + 63) >> 6;
    if ((v12 & v13) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = *(*(v4 + 48) + v19);
        v21 = v27;
        v22 = *(v28 + 72) * v19;
        sub_2723D9360(*(v4 + 56) + v22, v27, &qword_280893F50, &qword_2723FFCE8);
        v23 = v29;
        *(*(v29 + 48) + v19) = v20;
        result = sub_2723D92F4(v21, *(v23 + 56) + v22, &qword_280893F50, &qword_2723FFCE8);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_2723D78C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FC8, "..");
  v2 = *v0;
  v3 = sub_2723FEB14();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2723D9230(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2723D5A74(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_2723D7A68(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_2723D7BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FC8, "..");
    v3 = sub_2723FEB34();
    v4 = a1 + 32;

    while (1)
    {
      sub_2723D9360(v4, &v13, &qword_280893F38, &unk_2723FFCD0);
      v5 = v13;
      v6 = v14;
      result = sub_2723E4F34(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2723D5A74(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_2723D7CF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FD8, "X.");
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FD0, "2.");
    v7 = sub_2723FEB34();
    v19 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_2723D9360(v8, v5, &qword_280893FD8, "X.");
      result = sub_2723E4FAC(*v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v13 = v7[7];
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
      result = sub_2723D92F4(&v5[v19], v13 + *(*(v14 - 8) + 72) * v12, &qword_280893F50, &qword_2723FFCE8);
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_2723D7EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2723FE114();
  v11 = result;
  if (result)
  {
    result = sub_2723FE134();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2723FE124();
  sub_2723D5CDC(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_2723D7F9C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2723CE06C(a3, a4);
          return sub_2723D5F0C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s12VoiceControl17VCVocabularyEntryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2723FE294();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FB8, "*.");
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  if ((sub_2723FE274() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for VCVocabularyEntry(0);
  v15 = v14[5];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_2723FEC44() & 1) == 0)
  {
    return 0;
  }

  v20 = v14[6];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21)
  {
    if (!v22 || (sub_2723D609C(v21, v22) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v23 = v14[7];
  v24 = *(v11 + 48);
  sub_2723D9360(a1 + v23, v13, &qword_280893EB0, &unk_2723FFC80);
  v46 = v24;
  sub_2723D9360(a2 + v23, &v13[v24], &qword_280893EB0, &unk_2723FFC80);
  v25 = *(v5 + 48);
  if (v25(v13, 1, v4) == 1)
  {
    if (v25(&v13[v46], 1, v4) == 1)
    {
      sub_2723D9188(v13, &qword_280893EB0, &unk_2723FFC80);
      goto LABEL_21;
    }

LABEL_17:
    sub_2723D9188(v13, &qword_280893FB8, "*.");
    return 0;
  }

  sub_2723D9360(v13, v10, &qword_280893EB0, &unk_2723FFC80);
  if (v25(&v13[v46], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_17;
  }

  (*(v5 + 32))(v7, &v13[v46], v4);
  sub_2723D91E8(&qword_280893FC0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v27 = sub_2723FE534();
  v28 = *(v5 + 8);
  v28(v7, v4);
  v28(v10, v4);
  sub_2723D9188(v13, &qword_280893EB0, &unk_2723FFC80);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v29 = v14[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33 || (*v30 != *v32 || v31 != v33) && (sub_2723FEC44() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v34 = v14[9];
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35 == 2)
  {
    if (v36 != 2)
    {
      return 0;
    }

    goto LABEL_33;
  }

  result = 0;
  if (v36 != 2 && ((v36 ^ v35) & 1) == 0)
  {
LABEL_33:
    v37 = v14[10];
    v38 = a1 + v37;
    v40 = *(a1 + v37);
    v39 = *(v38 + 8);
    v41 = (a2 + v37);
    v43 = *v41;
    v42 = v41[1];
    if (v39 >> 60 == 15)
    {
      if (v42 >> 60 == 15)
      {
        sub_2723D5A4C(v40, *(v38 + 8));
        sub_2723D5A4C(v43, v42);
        sub_2723D5A60(v40, v39);
        return 1;
      }
    }

    else if (v42 >> 60 != 15)
    {
      sub_2723D5A4C(v40, *(v38 + 8));
      sub_2723D5A4C(v43, v42);
      v44 = sub_2723D7F9C(v40, v39, v43, v42);
      sub_2723D5A60(v43, v42);
      sub_2723D5A60(v40, v39);
      return v44;
    }

    sub_2723D5A4C(v40, *(v38 + 8));
    sub_2723D5A4C(v43, v42);
    sub_2723D5A60(v40, v39);
    sub_2723D5A60(v43, v42);
    return 0;
  }

  return result;
}

uint64_t sub_2723D8614(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2743C7440](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2723ED554(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2723D86AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FE8, "|.");
    v3 = sub_2723FEA24();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_2723FE5B4();
      sub_2723FEC94();
      v27 = v7;
      sub_2723FE634();
      v8 = sub_2723FECB4();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_2723FE5B4();
        v18 = v17;
        if (v16 == sub_2723FE5B4() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_2723FEC44();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2723D88A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2723D8900()
{
  result = qword_280893F28;
  if (!qword_280893F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893F28);
  }

  return result;
}

uint64_t sub_2723D8978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VCVocabularyEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2723D89E0()
{
  result = qword_280893F58;
  if (!qword_280893F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893F58);
  }

  return result;
}

unint64_t sub_2723D8A38()
{
  result = qword_280893F60;
  if (!qword_280893F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893F60);
  }

  return result;
}

unint64_t sub_2723D8A90()
{
  result = qword_280893F68;
  if (!qword_280893F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893F68);
  }

  return result;
}

uint64_t sub_2723D8AF0(uint64_t a1)
{
  *(a1 + 8) = sub_2723D91E8(&qword_280893F70, type metadata accessor for VCVocabularyEntry, &protocol conformance descriptor for VCVocabularyEntry);
  result = sub_2723D91E8(&qword_280893F78, type metadata accessor for VCVocabularyEntry, &protocol conformance descriptor for VCVocabularyEntry);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2723D8B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2723FE294();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2723D8CD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2723FE294();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_2723D8E04(uint64_t a1)
{
  sub_2723FE294();
  if (v1 <= 0x3F)
  {
    sub_2723D8F20(319);
    if (v2 <= 0x3F)
    {
      sub_2723D8F84(319);
      if (v3 <= 0x3F)
      {
        sub_2723D8FDC(319, &qword_280893FA0, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_2723D8FDC(319, &qword_280893FA8, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_2723D8FDC(319, &qword_280893FB0, MEMORY[0x277CC9318]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2723D8F20(uint64_t a1)
{
  if (!qword_280893F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280893E70, &unk_2723FFA30);
    v1 = sub_2723FE934();
    if (!v2)
    {
      atomic_store(v1, &qword_280893F90);
    }
  }
}

void sub_2723D8F84(uint64_t a1)
{
  if (!qword_280893F98)
  {
    sub_2723FE294();
    v1 = sub_2723FE934();
    if (!v2)
    {
      atomic_store(v1, &qword_280893F98);
    }
  }
}

void sub_2723D8FDC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2723FE934();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for VCVocabularyEntry.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VCVocabularyEntry.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2723D9188(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2723D91E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2723D9230(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2723D928C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2723D92F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2723D9360(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2723D940C()
{
  result = sub_2723FE574();
  qword_280893FF0 = result;
  return result;
}

uint64_t sub_2723D9468()
{
  result = sub_2723FE574();
  qword_280893FF8 = result;
  return result;
}

uint64_t sub_2723D94C4()
{
  result = sub_2723FE574();
  qword_280894000 = result;
  return result;
}

uint64_t sub_2723D9520()
{
  result = sub_2723FE574();
  qword_280894008 = result;
  return result;
}

uint64_t sub_2723D957C()
{
  result = sub_2723FE574();
  qword_280894010 = result;
  return result;
}

uint64_t sub_2723D95D8()
{
  result = sub_2723FE574();
  qword_280894018 = result;
  return result;
}

uint64_t sub_2723D9634()
{
  result = sub_2723FE574();
  qword_280894020 = result;
  return result;
}

uint64_t sub_2723D9690()
{
  result = sub_2723FE574();
  qword_280894028 = result;
  return result;
}

uint64_t sub_2723D96EC()
{
  result = sub_2723FE574();
  qword_280894030 = result;
  return result;
}

uint64_t sub_2723D9748()
{
  result = sub_2723FE574();
  qword_280894038 = result;
  return result;
}

void sub_2723D97A4()
{
  if (*MEMORY[0x277D81C90])
  {
    qword_280894040 = *MEMORY[0x277D81C90];
  }

  else
  {
    __break(1u);
  }
}

id sub_2723D97E8(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

id VCNotification.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for VCNotification();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void static VCNotificationCenter.add(observer:forName:queue:using:)(const void *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v10, a1, sub_2723D9C80, a2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v11 = [objc_opt_self() defaultCenter];
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2723D99F8;
  v14[3] = &block_descriptor;
  v12 = _Block_copy(v14);

  v13 = [v11 addObserverForName:a2 object:a1 queue:a3 usingBlock:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
}

uint64_t sub_2723D99F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_2723FE104();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_2723FE0E4();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void static VCNotificationCenter.remove(observer:name:)(const void *a1, const __CFString *a2)
{
  v4 = [objc_opt_self() defaultCenter];
  [v4 removeObserver:a1 name:a2 object:0];

  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, a1, a2, 0);
}

void static VCNotificationCenter.remove(observer:)(const void *a1)
{
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, a1);
}

void static VCNotificationCenter.post(name:)(const __CFString *a1)
{
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v2, a1, 0, 0, 0);
}

void sub_2723D9C80(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_2723D9D28(a2, a3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2723D9D28(uint64_t a1, void *a2)
{
  v4 = sub_2723FE104();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a2)
    {
      swift_unknownObjectRetain();
      v12[3] = swift_getObjectType();
      v12[0] = a1;
      v9 = a2;
      sub_2723FE0F4();
      v10 = [objc_opt_self() defaultCenter];
      v11 = sub_2723FE0D4();
      [v10 postNotification_];

      return (*(v5 + 8))(v8, v4);
    }
  }

  return result;
}

Swift::Int __swiftcall VCSettings.addVocabularyEntries(entries:)(Swift::OpaquePointer entries)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  MEMORY[0x28223BE20](v2 - 8);
  v185 = &v158 - v3;
  v184 = sub_2723FE294();
  v217 = *(v184 - 8);
  v4 = MEMORY[0x28223BE20](v184);
  v183 = &v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v182 = &v158 - v6;
  v209 = sub_2723FE2D4();
  v7 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v208 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for VCVocabularyEntry(0);
  v214 = *(v204 - 1);
  v9 = MEMORY[0x28223BE20](v204);
  v181 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v180 = &v158 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v179 = &v158 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v158 - v15;
  v215 = sub_2723FE344();
  v213 = *(v215 - 8);
  v17 = MEMORY[0x28223BE20](v215);
  v178 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v211 = &v158 - v20;
  MEMORY[0x28223BE20](v19);
  v202 = (&v158 - v21);
  v195 = sub_2723FE0C4();
  v218 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v194 = &v158 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F10, &qword_2723FFCB0);
  v212 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v177 = &v158 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v193 = &v158 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v197 = &v158 - v29;
  MEMORY[0x28223BE20](v28);
  v192 = (&v158 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v32 = *(v31 - 1);
  MEMORY[0x28223BE20](v31);
  v167 = (&v158 - v33);
  v34 = sub_2723FE434();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v165 = &v158 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v158 - v38;
  if (qword_280893E18 != -1)
  {
LABEL_71:
    swift_once();
  }

  v40 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_73;
  }

  v168 = v35;
  v41 = sub_2723E4FAC(8);
  if ((v42 & 1) == 0)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v199 = v23;
  v201 = v16;
  v164 = v40;
  v43 = v40[7];
  v159 = *(v32 + 72);
  v44 = v167;
  sub_2723D9360(v43 + v159 * v41, v167, &qword_280893F50, &qword_2723FFCE8);

  v163 = v31;
  v45 = v168;
  v46 = *(v168 + 32);
  v47 = v44 + v31[12];
  v161 = v168 + 32;
  v160 = v46;
  v46(v39, v47, v34);

  v48 = sub_2723FE424();
  v49 = sub_2723FE8A4();
  v50 = os_log_type_enabled(v48, v49);
  v166 = v34;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&v223 = v52;
    *v51 = 134349315;
    *(v51 + 4) = *(entries._rawValue + 2);

    *(v51 + 12) = 2085;
    v53 = MEMORY[0x2743C73A0](entries._rawValue, v199);
    v34 = v54;
    rawValue = entries._rawValue;
    v56 = v7;
    v57 = sub_2723E4A00(v53, v54, &v223);

    *(v51 + 14) = v57;
    v7 = v56;
    entries._rawValue = rawValue;
    _os_log_impl(&dword_2723CB000, v48, v49, "VCSettings.addVocabularyEntries inputEntriesCount: %{public}ld, inputEntries: %{sensitive}s", v51, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x2743C8040](v52, -1, -1);
    MEMORY[0x2743C8040](v51, -1, -1);

    v162 = *(v168 + 8);
    v162(v39, v166);
  }

  else
  {

    v162 = *(v45 + 8);
    v162(v39, v34);
  }

  v32 = v215;
  v173 = sub_2723E6C70();
  v58 = *(entries._rawValue + 2);
  v59 = MEMORY[0x277D84F90];
  v216 = sub_2723E4504(0, v58, 0, MEMORY[0x277D84F90]);
  v225 = v59;
  v31 = v202;
  v191 = v58;
  if (v58)
  {
    v60 = 0;
    v176 = 0;
    v61 = (v212[80] + 32) & ~v212[80];
    v190 = *(v199 + 64);
    v189 = entries._rawValue + v61;
    v188 = (v213 + 32);
    v187 = (v218 + 8);
    v186 = *(v212 + 9);
    v207 = (v7 + 104);
    v206 = *MEMORY[0x277CC9668];
    v62 = (v7 + 8);
    v63 = v199;
    v205 = v62;
    v198 = "CACAlwaysShowOverlay";
    v218 = v213 + 8;
    v172 = (v217 + 16);
    v171 = (v217 + 56);
    v170 = (v213 + 16);
    v175 = (v217 + 8);
    v169 = xmmword_2723FFC50;
    v16 = v197;
    do
    {
      v200 = v60;
      v66 = v192;
      sub_2723D9360(&v189[v186 * v60], v192, &qword_280893F10, &qword_2723FFCB0);
      v67 = *v66;
      v68 = v66[1];
      v69 = v66[2];
      v70 = *(v63 + 64);
      *v16 = *v66;
      *(v16 + 1) = v68;
      *(v16 + 2) = v69;
      v217 = *v188;
      (v217)(&v16[v70], v66 + v190, v32);
      *&v223 = v67;
      *(&v223 + 1) = v68;
      v71 = v194;
      sub_2723FE0A4();
      v210 = sub_2723CD24C();
      v35 = sub_2723FE974();
      v73 = v72;
      (*v187)(v71, v195);
      v74 = v193;
      v63 = v199;
      v34 = v73;
      sub_2723D9360(v16, v193, &qword_280893F10, &qword_2723FFCB0);

      entries._rawValue = v31;
      v75 = (v217)(v31, v74 + *(v63 + 64), v32);
      v76 = HIBYTE(v34) & 0xF;
      v217 = v35;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v76 = v35 & 0xFFFFFFFFFFFFLL;
      }

      if (v76)
      {
        v77 = v216;
        v78 = v216[2];
        v196 = v218 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v203 = v34;
        v213 = v78;
        if (v78)
        {
          v23 = 0;
          v7 = v201;
          v39 = &v201[v204[8]];
          v212 = v216 + ((*(v214 + 80) + 32) & ~*(v214 + 80));
          v65 = v31;
          do
          {
            if (v23 >= v77[2])
            {
              __break(1u);
              goto LABEL_71;
            }

            sub_2723D5C78(&v212[*(v214 + 72) * v23], v7);
            if (*(v39 + 1))
            {
              v31 = v65;
              v79 = v208;
              v80 = v209;
              (*v207)(v208, v206, v209);
              v81 = sub_2723FE2C4();
              v83 = v82;
              (*v205)(v79, v80);
              *&v223 = v81;
              *(&v223 + 1) = v83;
              *&v221 = 45;
              *(&v221 + 1) = 0xE100000000000000;
              v219 = 95;
              v220 = 0xE100000000000000;
              v156 = v210;
              v157 = v210;
              v155 = v210;
              v154 = MEMORY[0x277D837D0];
              sub_2723FE984();

              entries._rawValue = v211;
              sub_2723FE2A4();
              goto LABEL_42;
            }

            if (qword_280893DC8 != -1)
            {
              swift_once();
            }

            v84 = *(qword_280894080 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
            if (v84)
            {
              v85 = v84;
              v86 = sub_2723FE574();
              v87 = [v85 objectForKey_];

              if (v87)
              {
                sub_2723FE994();
                swift_unknownObjectRelease();
              }

              else
              {

                v221 = 0u;
                v222 = 0u;
              }

              v223 = v221;
              v224 = v222;
              if (*(&v222 + 1))
              {
                v88 = swift_dynamicCast();
                if (v88)
                {
                  v31 = v221;
                }

                else
                {
                  v31 = 0;
                }

                if (v88)
                {
                  v89 = *(&v221 + 1);
                }

                else
                {
                  v89 = 0;
                }

                goto LABEL_36;
              }
            }

            else
            {
              v223 = 0u;
              v224 = 0u;
            }

            sub_2723D9188(&v223, &qword_280893F40, &unk_272400070);
            v31 = 0;
            v89 = 0;
LABEL_36:
            if (qword_280893E00 != -1)
            {
              swift_once();
            }

            v90 = qword_280894088;
            v91 = [objc_opt_self() sharedPreferences];
            v92 = [v91 languageCode];

            if (v92)
            {
              v93 = sub_2723FE5B4();
              v95 = v94;
            }

            else
            {
              v93 = 0;
              v95 = 0;
            }

            sub_2723FE2F4();
            v96 = v211;
            sub_2723EB6EC(v90, v31, v89, v93, v95, v211);

            entries._rawValue = v96;

            v7 = v201;
            v65 = v202;
            v34 = v203;
LABEL_42:
            v35 = MEMORY[0x2743C6F40](entries._rawValue, v65);
            v16 = *v218;
            v32 = v215;
            (*v218)(entries._rawValue, v215);
            if (v35)
            {
              v97 = (v7 + v204[5]);
              if (*v97 == v217 && v97[1] == v34)
              {
                sub_2723E5038(v7);
LABEL_59:

                v63 = v199;
                v64 = v200;
                goto LABEL_10;
              }

              v35 = sub_2723FEC44();
              v75 = sub_2723E5038(v7);
              if (v35)
              {
                goto LABEL_59;
              }
            }

            else
            {
              v75 = sub_2723E5038(v7);
            }

            ++v23;
            v77 = v216;
          }

          while (v213 != v23);
        }

        MEMORY[0x28223BE20](v75);
        v99 = v98;
        v154 = v98;
        v155 = v217;
        v156 = v34;
        v100 = v173;

        v101 = v100;
        v102 = v176;
        v103 = sub_2723D277C(sub_2723E5094, (&v158 - 6), v101);
        v104 = *(v103 + 16);
        v176 = v102;
        if (v104)
        {
          sub_2723DD1E8(v103);
        }

        else
        {
        }

        v105 = v182;
        sub_2723FE284();
        v106 = *v172;
        v107 = v183;
        v108 = v184;
        (*v172)(v183, v105, v184);
        v109 = v185;
        v106(v185, v105, v108);
        v110 = *v171;
        (*v171)(v109, 0, 1, v108);
        (*v170)(v178, v99, v32);
        v111 = v177;
        sub_2723D9360(v197, v177, &qword_280893F10, &qword_2723FFCB0);

        v212 = *(v111 + 16);
        v112 = v204;
        v113 = v204[7];
        v213 = v204[6];
        v114 = v180;
        v110(&v180[v113], 1, 1, v108);
        v115 = v112[9];
        v174 = &v114[v112[8]];
        v114[v115] = 2;
        *&v114[v112[10]] = v169;
        v106(v114, v107, v108);
        v116 = v185;
        sub_2723E50B8(v185, &v114[v113]);
        v117 = v178;
        sub_2723FE2B4();
        v118 = v208;
        v119 = v209;
        (*v207)(v208, v206, v209);
        v120 = sub_2723FE2C4();
        v122 = v121;

        (*v205)(v118, v119);
        *&v223 = v120;
        *(&v223 + 1) = v122;
        *&v221 = 45;
        *(&v221 + 1) = 0xE100000000000000;
        v219 = 95;
        v220 = 0xE100000000000000;
        v156 = v210;
        v157 = v210;
        v155 = v210;
        v154 = MEMORY[0x277D837D0];
        v123 = sub_2723FE984();
        v125 = v124;

        v16 = *v218;
        (*v218)(v117, v215);
        sub_2723D9188(v116, &qword_280893EB0, &unk_2723FFC80);
        v126 = *v175;
        (*v175)(v183, v108);
        v127 = v174;
        *v174 = v123;
        v127[1] = v125;
        v128 = &v114[v112[5]];
        v129 = v203;
        *v128 = v217;
        *(v128 + 1) = v129;
        v130 = v212;
        if (v212)
        {
          v63 = v199;
          v64 = v200;
          if (!*(v212 + 2))
          {

            v130 = 0;
          }

          v32 = v215;
        }

        else
        {
          v32 = v215;
          v63 = v199;
          v64 = v200;
        }

        v131 = v180;
        *&v180[v213] = v130;
        v132 = *(v63 + 64);
        v133 = v179;
        sub_2723D8978(v131, v179);
        (v16)(v177 + v132, v32);
        sub_2723D5C78(v133, v181);
        v135 = v216[2];
        v134 = v216[3];
        if (v135 >= v134 >> 1)
        {
          v216 = sub_2723E4504((v134 > 1), v135 + 1, 1, v216);
        }

        sub_2723E5038(v179);
        v126(v182, v184);
        v136 = v216;
        v216[2] = v135 + 1;
        sub_2723D8978(v181, v136 + ((*(v214 + 80) + 32) & ~*(v214 + 80)) + *(v214 + 72) * v135);
        v65 = v202;
      }

      else
      {

        v16 = *v218;
        v64 = v200;
        v65 = v31;
      }

LABEL_10:
      v60 = v64 + 1;
      (v16)(v65, v32);
      v16 = v197;
      v31 = v65;
      v34 = &qword_2723FFCB0;
      sub_2723D9188(v197, &qword_280893F10, &qword_2723FFCB0);
    }

    while (v60 != v191);
  }

  v137 = v164;
  if (!v164[2])
  {
    goto LABEL_74;
  }

  v138 = sub_2723E4FAC(8);
  if ((v139 & 1) == 0)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
    goto LABEL_67;
  }

  v140 = v167;
  sub_2723D9360(v137[7] + v138 * v159, v167, &qword_280893F50, &qword_2723FFCE8);

  v141 = v165;
  v142 = v166;
  v160(v165, v140 + v163[12], v166);
  v143 = v216;

  v144 = sub_2723FE424();
  v145 = sub_2723FE8A4();
  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    *&v221 = v147;
    *v146 = 134349571;
    *(v146 + 4) = v143[2];

    *(v146 + 12) = 2050;
    swift_beginAccess();
    *(v146 + 14) = *(v225 + 16);
    *(v146 + 22) = 2085;
    v148 = MEMORY[0x2743C73A0](v143, v204);
    v150 = sub_2723E4A00(v148, v149, &v221);

    *(v146 + 24) = v150;
    _os_log_impl(&dword_2723CB000, v144, v145, "VCSettings.addVocabularyEntries newVocabularyEntriesCount: %{public}ld, entriesToRemoveCount: %{public}ld newVocabularyEntries: %{sensitive}s", v146, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v147);
    MEMORY[0x2743C8040](v147, -1, -1);
    MEMORY[0x2743C8040](v146, -1, -1);
  }

  else
  {
  }

  v151 = (v162)(v141, v142);
  v34 = v143;
  if (!v143[2])
  {
    v152 = 0;
    goto LABEL_69;
  }

  MEMORY[0x28223BE20](v151);
  v156 = &v225;
  VCSettings._purgeVocabularyEntries(shouldPurge:)(sub_2723E5128, &v154);

  *&v221 = sub_2723E6C70();
  sub_2723DD1E8(v143);
  sub_2723E7238(v221);
  if (qword_280893DC8 != -1)
  {
    goto LABEL_76;
  }

LABEL_67:
  _s12VoiceControl10VCSettingsC32triggerVocabularySyncIfNecessaryyyF_0();
  v152 = *(v34 + 16);
LABEL_69:

  return v152;
}

uint64_t VCSettings.vocabularyEntriesForAllLocales(includingDeletedEntries:)(int a1)
{
  v41 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = (&v34 - v1);
  v2 = sub_2723FE434();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for VCVocabularyEntry(0);
  v4 = *(v42 - 8);
  v5 = MEMORY[0x28223BE20](v42);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = sub_2723E6C70();
  v44 = *(v10 + 16);
  if (v44)
  {
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
    v13 = v41;
    v43 = v7;
    while (v11 < *(v10 + 16))
    {
      v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v15 = *(v4 + 72);
      sub_2723D5C78(v10 + v14 + v15 * v11, v9);
      if ((v13 & 1) != 0 || (v16 = v9[*(v42 + 36)], v16 == 2) || (v16 & 1) == 0)
      {
        sub_2723D8978(v9, v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2723D6C28(0, *(v12 + 16) + 1, 1);
          v13 = v41;
          v12 = v45;
        }

        v19 = *(v12 + 16);
        v18 = *(v12 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_2723D6C28((v18 > 1), v19 + 1, 1);
          v13 = v41;
          v12 = v45;
        }

        *(v12 + 16) = v19 + 1;
        v7 = v43;
        sub_2723D8978(v43, v12 + v14 + v19 * v15);
      }

      else
      {
        sub_2723E5038(v9);
      }

      if (v44 == ++v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_23:
    result = swift_once();
    goto LABEL_16;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_15:

  if (qword_280893E18 != -1)
  {
    goto LABEL_23;
  }

LABEL_16:
  v21 = off_280894260;
  v23 = v39;
  v22 = v40;
  v24 = v38;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_25;
  }

  result = sub_2723E4FAC(8);
  if ((v25 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v26 = v36;
  sub_2723D9360(v21[7] + *(v35 + 72) * result, v36, &qword_280893F50, &qword_2723FFCE8);

  (*(v23 + 32))(v24, v26 + *(v37 + 48), v22);

  v27 = sub_2723FE424();
  v28 = sub_2723FE884();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v45 = v30;
    *v29 = 67240707;
    *(v29 + 4) = v41 & 1;
    *(v29 + 8) = 2050;
    *(v29 + 10) = *(v12 + 16);

    *(v29 + 18) = 2085;
    v31 = MEMORY[0x2743C7380](v12, v42);
    v33 = sub_2723E4A00(v31, v32, &v45);

    *(v29 + 20) = v33;
    _os_log_impl(&dword_2723CB000, v27, v28, "VCSettings.vocabularyEntriesForAllLocales includingDeletedEntries: %{BOOL,public}d, visibleEntriesCount: %{public}ld, visibleEntries: %{sensitive}s", v29, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x2743C8040](v30, -1, -1);
    MEMORY[0x2743C8040](v29, -1, -1);
  }

  else
  {
  }

  (*(v23 + 8))(v24, v22);
  return v12;
}

uint64_t VCSettings.visibleVocabularyEntriesForActiveLocale.getter()
{
  v0 = sub_2723FE344();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_2723EC124();
  v6 = v5;
  if (qword_280893E00 != -1)
  {
    swift_once();
  }

  v7 = qword_280894088;
  v8 = [objc_opt_self() sharedPreferences];
  v9 = [v8 languageCode];

  if (v9)
  {
    v10 = sub_2723FE5B4();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  sub_2723FE2F4();
  sub_2723EB6EC(v7, v4, v6, v10, v12, v3);

  v13 = VCSettings.vocabularyEntries(for:includingDeletedEntries:)(v3, 0);
  (*(v1 + 8))(v3, v0);
  return v13;
}

uint64_t VCSettings.vocabularyEntries(for:includingDeletedEntries:)(uint64_t a1, int a2)
{
  v38 = sub_2723FE344();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = (&v36 - v8);
  v10 = sub_2723FE434();
  v39 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = VCSettings.vocabularyEntriesForAllLocales(includingDeletedEntries:)(a2);
  v41 = a1;
  result = sub_2723D277C(sub_2723E57C4, v40, v13);
  v15 = result;
  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v16 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_2723E4FAC(8);
  if ((v17 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_2723D9360(v16[7] + *(v37 + 72) * result, v9, &qword_280893F50, &qword_2723FFCE8);

  v18 = *(v7 + 48);
  v19 = v39;
  (*(v39 + 32))(v12, v9 + v18, v10);
  v20 = a1;
  v21 = v12;
  v22 = v38;
  (*(v4 + 16))(v6, v20, v38);
  swift_bridgeObjectRetain_n();
  v23 = sub_2723FE424();
  v24 = sub_2723FE884();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42[0] = v36;
    *v25 = 136446723;
    v26 = MEMORY[0x2743C6F10]();
    v37 = v10;
    v28 = v27;
    (*(v4 + 8))(v6, v22);
    v29 = sub_2723E4A00(v26, v28, v42);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2050;
    v30 = *(v15 + 16);

    *(v25 + 14) = v30;

    *(v25 + 22) = 2085;
    v31 = type metadata accessor for VCVocabularyEntry(0);
    v32 = MEMORY[0x2743C7380](v15, v31);
    v34 = sub_2723E4A00(v32, v33, v42);

    *(v25 + 24) = v34;
    _os_log_impl(&dword_2723CB000, v23, v24, "VCSettings.vocabularyEntries locale: %{public}s, filteredEntriesCount: %{public}ld, filteredEntries: %{sensitive}s", v25, 0x20u);
    v35 = v36;
    swift_arrayDestroy();
    MEMORY[0x2743C8040](v35, -1, -1);
    MEMORY[0x2743C8040](v25, -1, -1);

    (*(v39 + 8))(v21, v37);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v4 + 8))(v6, v22);
    (*(v19 + 8))(v21, v10);
  }

  return v15;
}

uint64_t sub_2723DC22C(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = sub_2723FE2D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2723FE344();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for VCVocabularyEntry(0) + 32) + 8))
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CC9668], v3);
    v11 = sub_2723FE2C4();
    v13 = v12;
    (*(v4 + 8))(v6, v3);
    v30 = v11;
    v31 = v13;
    v28 = 45;
    v29 = 0xE100000000000000;
    v26 = 95;
    v27 = 0xE100000000000000;
    sub_2723CD24C();
    sub_2723FE984();

    sub_2723FE2A4();
  }

  else
  {
    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v24 = sub_2723EC124();
    v15 = v14;
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v16 = qword_280894088;
    v17 = [objc_opt_self() sharedPreferences];
    v18 = [v17 languageCode];

    if (v18)
    {
      v19 = sub_2723FE5B4();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    sub_2723FE2F4();
    sub_2723EB6EC(v16, v24, v15, v19, v21, v10);
  }

  v22 = MEMORY[0x2743C6F40](v10, v25);
  (*(v8 + 8))(v10, v7);
  return v22 & 1;
}

BOOL VCSettings.addVocabularyEntry(text:pronunciations:locale:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v61 = a4;
  v58 = a2;
  v59 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894048, &qword_272400048);
  v7 = MEMORY[0x28223BE20](v56);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v54 - v13);
  v15 = sub_2723FE434();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v19 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_20;
  }

  v20 = sub_2723E4FAC(8);
  if ((v21 & 1) == 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_10;
  }

  v57 = v5;
  sub_2723D9360(v19[7] + *(v12 + 72) * v20, v14, &qword_280893F50, &qword_2723FFCE8);

  v22 = v14 + *(v11 + 48);
  v23 = v15;
  (*(v16 + 32))(v18, v22, v15);
  sub_2723D9360(v61, v10, &qword_280894048, &qword_272400048);

  v24 = v58;

  v25 = sub_2723FE424();
  v26 = sub_2723FE8A4();

  v27 = a3;
  if (os_log_type_enabled(v25, v26))
  {
    v28 = swift_slowAlloc();
    v55 = v23;
    v29 = v28;
    v54 = swift_slowAlloc();
    v63 = v54;
    *v29 = 141559043;
    *(v29 + 4) = 1752392040;
    *(v29 + 12) = 2085;
    *(v29 + 14) = sub_2723E4A00(v59, v24, &v63);
    *(v29 + 22) = 2160;
    *(v29 + 24) = 1752392040;
    *(v29 + 32) = 2085;
    v62 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894058, &qword_272400050);
    v30 = sub_2723FE924();
    v32 = sub_2723E4A00(v30, v31, &v63);

    *(v29 + 34) = v32;
    *(v29 + 42) = 2082;
    v33 = sub_2723FE924();
    v35 = v34;
    sub_2723D9188(v10, &qword_280894048, &qword_272400048);
    v36 = sub_2723E4A00(v33, v35, &v63);
    v27 = a3;

    *(v29 + 44) = v36;
    _os_log_impl(&dword_2723CB000, v25, v26, "VCSettings.addVocabularyEntry text: %{sensitive,mask.hash}s, pronunciations: %{sensitive,mask.hash}s, locale: %{public}s", v29, 0x34u);
    v37 = v54;
    swift_arrayDestroy();
    MEMORY[0x2743C8040](v37, -1, -1);
    MEMORY[0x2743C8040](v29, -1, -1);

    (*(v16 + 8))(v18, v55);
  }

  else
  {

    sub_2723D9188(v10, &qword_280894048, &qword_272400048);
    (*(v16 + 8))(v18, v23);
  }

  v38 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894050, &unk_2724009D0);
  v39 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F10, &qword_2723FFCB0) - 8);
  v40 = (*(*v39 + 80) + 32) & ~*(*v39 + 80);
  v10 = swift_allocObject();
  *(v10 + 1) = xmmword_2723FFC60;
  a3 = &v10[v40];
  v18 = v39[18];
  *a3 = v38;
  a3[1] = v24;
  a3[2] = v27;
  v41 = v60;
  sub_2723D9360(v61, v60, &qword_280894048, &qword_272400048);
  v14 = sub_2723FE344();
  v42 = *(v14 - 1);
  v16 = *(v42 + 48);
  if ((v16)(v41, 1, v14) != 1)
  {
    (*(v42 + 32))(a3 + v18, v41, v14);

    goto LABEL_18;
  }

  v43 = qword_280893DC8;

  if (v43 != -1)
  {
    goto LABEL_21;
  }

LABEL_10:
  v61 = v18;
  v59 = sub_2723EC124();
  v45 = v44;
  if (qword_280893E00 != -1)
  {
    swift_once();
  }

  v58 = qword_280894088;
  v46 = [objc_opt_self() sharedPreferences];
  v47 = [v46 languageCode];

  if (v47)
  {
    v48 = sub_2723FE5B4();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  sub_2723FE2F4();
  sub_2723EB6EC(v58, v59, v45, v48, v50, a3 + v61);

  v51 = v60;
  if ((v16)(v60, 1, v14) != 1)
  {
    sub_2723D9188(v51, &qword_280894048, &qword_272400048);
  }

LABEL_18:
  v52 = VCSettings.addVocabularyEntries(entries:)(v10);

  return v52 != 0;
}

uint64_t sub_2723DCD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v40 = a2;
  v6 = sub_2723FE2D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2723FE344();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for VCVocabularyEntry(0);
  v31 = a1;
  if (*(a1 + *(v30 + 32) + 8))
  {
    (*(v7 + 104))(v9, *MEMORY[0x277CC9668], v6);
    v14 = sub_2723FE2C4();
    v16 = v15;
    (*(v7 + 8))(v9, v6);
    v38 = v14;
    v39 = v16;
    v36 = 45;
    v37 = 0xE100000000000000;
    v34 = 95;
    v35 = 0xE100000000000000;
    sub_2723CD24C();
    sub_2723FE984();

    sub_2723FE2A4();
  }

  else
  {
    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v29[0] = sub_2723EC124();
    v18 = v17;
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v29[1] = v4;
    v19 = qword_280894088;
    v20 = [objc_opt_self() sharedPreferences];
    v21 = [v20 languageCode];

    if (v21)
    {
      v22 = sub_2723FE5B4();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    sub_2723FE2F4();
    sub_2723EB6EC(v19, v29[0], v18, v22, v24, v13);
  }

  v25 = MEMORY[0x2743C6F40](v13, v40);
  (*(v11 + 8))(v13, v10);
  if (v25)
  {
    v26 = (v31 + *(v30 + 20));
    if (*v26 == v32 && v26[1] == v33)
    {
      v27 = 1;
    }

    else
    {
      v27 = sub_2723FEC44();
    }
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_2723DD0F4(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2723E43F8(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2723DD1E8(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_2723E4504(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for VCVocabularyEntry(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2723DD314(uint64_t a1, uint64_t *a2)
{
  v81 = a1;
  v89 = sub_2723FE2D4();
  v3 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v88 = v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for VCVocabularyEntry(0);
  v5 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v7 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_2723FE344();
  v8 = *(v94 - 8);
  v9 = MEMORY[0x28223BE20](v94);
  v11 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = v77 - v12;
  swift_beginAccess();
  v13 = *a2;
  v14 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277CC9668];
  v16 = *(*a2 + 16);
  v80 = v8;
  if (v16)
  {
    v93 = v11;
    v103 = MEMORY[0x277D84F90];
    v17 = MEMORY[0x277CC9668];
    v18 = v13;

    sub_2723D6BE8(0, v16, 0);
    v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v77[1] = v18;
    v20 = v18 + v19;
    v87 = (v3 + 104);
    v14 = v103;
    v92 = *(v5 + 72);
    v86 = *v17;
    v78 = v3;
    v85 = (v3 + 8);
    v82 = "CACAlwaysShowOverlay";
    v91 = (v8 + 8);
    v21 = v84;
    v83 = v7;
    while (1)
    {
      sub_2723D5C78(v20, v7);
      v101 = 0;
      v102 = 0xE000000000000000;
      if (!*&v7[*(v21 + 32) + 8])
      {
        break;
      }

      v22 = v88;
      v23 = v89;
      (*v87)(v88, v86, v89);
      v24 = sub_2723FE2C4();
      v26 = v25;
      (*v85)(v22, v23);
      *&v99 = v24;
      *(&v99 + 1) = v26;
      *&v97 = 45;
      *(&v97 + 1) = 0xE100000000000000;
      v95 = 95;
      v96 = 0xE100000000000000;
      v75 = sub_2723CD24C();
      v76 = v75;
      v74 = v75;
      v73 = MEMORY[0x277D837D0];
      sub_2723FE984();

      v27 = v93;
      sub_2723FE2A4();
LABEL_26:
      v41 = sub_2723FE2B4();
      v43 = v42;
      (*v91)(v27, v94);
      MEMORY[0x2743C7290](v41, v43);

      MEMORY[0x2743C7290](8250, 0xE200000000000000);
      MEMORY[0x2743C7290](*&v7[*(v21 + 20)], *&v7[*(v21 + 20) + 8]);
      v44 = v101;
      v45 = v102;
      sub_2723E5038(v7);
      v103 = v14;
      v47 = *(v14 + 16);
      v46 = *(v14 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_2723D6BE8((v46 > 1), v47 + 1, 1);
        v14 = v103;
      }

      *(v14 + 16) = v47 + 1;
      v48 = v14 + 16 * v47;
      *(v48 + 32) = v44;
      *(v48 + 40) = v45;
      v20 += v92;
      if (!--v16)
      {

        v3 = v78;
        v15 = MEMORY[0x277CC9668];
        goto LABEL_31;
      }
    }

    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v90 = qword_280894080;
    v28 = *(qword_280894080 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
    if (v28)
    {
      v29 = v28;
      v30 = sub_2723FE574();
      v31 = [v29 objectForKey_];

      if (v31)
      {
        sub_2723FE994();
        swift_unknownObjectRelease();
      }

      else
      {

        v97 = 0u;
        v98 = 0u;
      }

      v99 = v97;
      v100 = v98;
      if (*(&v98 + 1))
      {
        v32 = swift_dynamicCast();
        if (v32)
        {
          v33 = v97;
        }

        else
        {
          v33 = 0;
        }

        if (v32)
        {
          v34 = *(&v97 + 1);
        }

        else
        {
          v34 = 0;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v99 = 0u;
      v100 = 0u;
    }

    sub_2723D9188(&v99, &qword_280893F40, &unk_272400070);
    v33 = 0;
    v34 = 0;
LABEL_20:
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v35 = qword_280894088;
    v36 = [objc_opt_self() sharedPreferences];
    v37 = [v36 languageCode];

    if (v37)
    {
      v38 = sub_2723FE5B4();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    sub_2723FE2F4();
    v27 = v93;
    sub_2723EB6EC(v35, v33, v34, v38, v40, v93);

    v21 = v84;
    v7 = v83;
    goto LABEL_26;
  }

  v21 = v84;
LABEL_31:
  *&v99 = 0;
  *(&v99 + 1) = 0xE000000000000000;
  v49 = *(v21 + 32);
  v50 = v81;
  v51 = v79;
  if (*(v81 + v49 + 8))
  {
    v52 = v88;
    v53 = v3;
    v54 = v89;
    (*(v3 + 104))(v88, *v15, v89);
    v55 = sub_2723FE2C4();
    v57 = v56;
    (*(v53 + 8))(v52, v54);
    *&v97 = v55;
    *(&v97 + 1) = v57;
    v101 = 45;
    v102 = 0xE100000000000000;
    v95 = 95;
    v96 = 0xE100000000000000;
    v75 = sub_2723CD24C();
    v76 = v75;
    v74 = v75;
    v73 = MEMORY[0x277D837D0];
    sub_2723FE984();

    sub_2723FE2A4();
  }

  else
  {
    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v58 = sub_2723EC124();
    v60 = v59;
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v61 = qword_280894088;
    v62 = [objc_opt_self() sharedPreferences];
    v63 = [v62 languageCode];

    if (v63)
    {
      v64 = sub_2723FE5B4();
      v66 = v65;
    }

    else
    {
      v64 = 0;
      v66 = 0;
    }

    sub_2723FE2F4();
    sub_2723EB6EC(v61, v58, v60, v64, v66, v51);
  }

  v67 = sub_2723FE2B4();
  v69 = v68;
  (*(v80 + 8))(v51, v94);
  MEMORY[0x2743C7290](v67, v69);

  MEMORY[0x2743C7290](8250, 0xE200000000000000);
  v70 = MEMORY[0x2743C7290](*(v50 + *(v84 + 20)), *(v50 + *(v84 + 20) + 8));
  MEMORY[0x28223BE20](v70);
  v71 = sub_2723E718C(sub_2723CE180, &v73, v14);

  return v71 & 1;
}

uint64_t VCSettings._purgeVocabularyEntries(shouldPurge:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = (&v38 - v5);
  v6 = sub_2723FE434();
  v46 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VCVocabularyEntry(0);
  v49 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v47 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v48 = &v38 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  v40 = *(sub_2723E6C70() + 16);

  v44 = v2;
  v15 = sub_2723E6C70();
  v50 = a1;
  v51 = a2;
  result = sub_2723E5304(a1, a2, v15);
  if ((v17 & 1) == 0)
  {
    v19 = result;
    v18 = result + 1;
    if (__OFADD__(result, 1))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    v39 = v6;
    while (1)
    {
      v6 = v15 + 2;
      v20 = v15[2];
      if (v18 == v20)
      {
        break;
      }

      if (v18 >= v20)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v21 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v22 = v15 + v21;
      a2 = *(v49 + 72);
      v23 = a2 * v18;
      sub_2723D5C78(v15 + v21 + a2 * v18, v14);
      v24 = v50(v14);
      sub_2723E5038(v14);
      if ((v24 & 1) == 0)
      {
        if (v18 != v19)
        {
          if (v19 < 0)
          {
            goto LABEL_34;
          }

          v6 = *v6;
          if (v19 >= v6)
          {
            goto LABEL_35;
          }

          v25 = a2 * v19;
          sub_2723D5C78(&v22[a2 * v19], v48);
          if (v18 >= v6)
          {
            goto LABEL_36;
          }

          v6 = v47;
          sub_2723D5C78(&v22[v23], v47);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_2723E53F0(v15);
          }

          a2 = v15 + v21;
          sub_2723E57E4(v6, v15 + v21 + v25);
          if (v18 >= v15[2])
          {
            goto LABEL_37;
          }

          sub_2723E57E4(v48, a2 + v23);
        }

        ++v19;
      }

      ++v18;
    }

    if (v18 < v19)
    {
      goto LABEL_38;
    }

    v6 = v39;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v18 = v15[2];
  v19 = v18;
LABEL_20:
  a2 = v19;
  if (__OFADD__(v18, v19 - v18))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    result = swift_once();
    goto LABEL_28;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = v15;
  if (!isUniquelyReferenced_nonNull_native || v19 > v15[3] >> 1)
  {
    if (v18 <= v19)
    {
      v27 = v19;
    }

    else
    {
      v27 = v18;
    }

    v15 = sub_2723E4504(isUniquelyReferenced_nonNull_native, v27, 1, v15);
    v52 = v15;
  }

  sub_2723E5404(v19, v18, 0);
  sub_2723E7238(v15);
  a2 = *(sub_2723E6C70() + 16);

  if (qword_280893E18 != -1)
  {
    goto LABEL_41;
  }

LABEL_28:
  v28 = off_280894260;
  v30 = v45;
  v29 = v46;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_43;
  }

  result = sub_2723E4FAC(8);
  if ((v31 & 1) == 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v32 = v40 - a2;
  v33 = v28[7] + *(v41 + 72) * result;
  v34 = v42;
  sub_2723D9360(v33, v42, &qword_280893F50, &qword_2723FFCE8);

  (*(v29 + 32))(v30, v34 + *(v43 + 48), v6);
  v35 = sub_2723FE424();
  v36 = sub_2723FE8A4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134349056;
    *(v37 + 4) = v32;
    _os_log_impl(&dword_2723CB000, v35, v36, "VCSettings._purgeVocabularyEntries() numberOfEntriesPurged: %{public}ld", v37, 0xCu);
    MEMORY[0x2743C8040](v37, -1, -1);
  }

  (*(v29 + 8))(v30, v6);
  return v32;
}

Swift::Int __swiftcall VCSettings.removeVocabularyEntries(_:)(Swift::OpaquePointer a1)
{
  v69 = sub_2723FE2D4();
  v2 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2723FE344();
  v71 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v64 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for VCVocabularyEntry(0);
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v62 - v9);
  v11 = sub_2723FE434();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v15 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_39;
  }

  v16 = sub_2723E4FAC(8);
  if ((v17 & 1) == 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
    goto LABEL_37;
  }

  sub_2723D9360(v15[7] + *(v8 + 72) * v16, v10, &qword_280893F50, &qword_2723FFCE8);

  (*(v12 + 32))(v14, v10 + *(v7 + 48), v11);

  v18 = sub_2723FE424();
  v19 = sub_2723FE8A4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v67 = v11;
    v21 = v20;
    v22 = swift_slowAlloc();
    v70 = v2;
    v23 = v22;
    *&v79 = v22;
    *v21 = 134349315;
    *(v21 + 4) = *(a1._rawValue + 2);

    *(v21 + 12) = 2085;
    v24 = MEMORY[0x2743C7380](a1._rawValue, v74);
    rawValue = a1._rawValue;
    v27 = sub_2723E4A00(v24, v25, &v79);

    *(v21 + 14) = v27;
    a1._rawValue = rawValue;
    _os_log_impl(&dword_2723CB000, v18, v19, "VCSettings.removeVocabularyEntries entriesToRemoveCount: %{public}ld, entriesToRemove: %{sensitive}s", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v28 = v23;
    v2 = v70;
    MEMORY[0x2743C8040](v28, -1, -1);
    MEMORY[0x2743C8040](v21, -1, -1);

    (*(v12 + 8))(v14, v67);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v29 = *(a1._rawValue + 2);
  v30._rawValue = MEMORY[0x277D84F90];
  v31 = v64;
  if (v29)
  {
    v83 = MEMORY[0x277D84F90];
    sub_2723D6BE8(0, v29, 0);
    v32 = a1._rawValue + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v67 = (v2 + 104);
    v30._rawValue = v83;
    v66 = (v2 + 8);
    v72 = *(v72 + 72);
    v62[1] = "CACAlwaysShowOverlay";
    ++v71;
    v65 = *MEMORY[0x277CC9668];
    v63 = v4;
    while (1)
    {
      v33 = v73;
      sub_2723D5C78(v32, v73);
      v81 = 0;
      v82 = 0xE000000000000000;
      if (!*(v33 + *(v74 + 32) + 8))
      {
        break;
      }

      v34 = v68;
      v35 = v69;
      (*v67)(v68, v65, v69);
      v36 = sub_2723FE2C4();
      v38 = v37;
      (*v66)(v34, v35);
      *&v79 = v36;
      *(&v79 + 1) = v38;
      *&v77 = 45;
      *(&v77 + 1) = 0xE100000000000000;
      v75 = 95;
      v76 = 0xE100000000000000;
      sub_2723CD24C();
      sub_2723FE984();

      sub_2723FE2A4();
LABEL_33:
      v52 = sub_2723FE2B4();
      v54 = v53;
      (*v71)(v31, v4);
      MEMORY[0x2743C7290](v52, v54);

      MEMORY[0x2743C7290](8250, 0xE200000000000000);
      v55 = v73;
      MEMORY[0x2743C7290](*(v73 + *(v74 + 20)), *(v73 + *(v74 + 20) + 8));
      v56 = v81;
      v57 = v82;
      sub_2723E5038(v55);
      v83 = v30._rawValue;
      v59 = *(v30._rawValue + 2);
      v58 = *(v30._rawValue + 3);
      if (v59 >= v58 >> 1)
      {
        sub_2723D6BE8((v58 > 1), v59 + 1, 1);
        v30._rawValue = v83;
      }

      *(v30._rawValue + 2) = v59 + 1;
      v60 = v30._rawValue + 16 * v59;
      *(v60 + 4) = v56;
      *(v60 + 5) = v57;
      v32 += v72;
      if (!--v29)
      {
        goto LABEL_36;
      }
    }

    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v70 = qword_280894080;
    v39 = *(qword_280894080 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
    if (v39)
    {
      v40 = v39;
      v41 = sub_2723FE574();
      v42 = [v40 objectForKey_];

      if (v42)
      {
        sub_2723FE994();
        swift_unknownObjectRelease();
      }

      else
      {

        v77 = 0u;
        v78 = 0u;
      }

      v79 = v77;
      v80 = v78;
      if (*(&v78 + 1))
      {
        v43 = swift_dynamicCast();
        if (v43)
        {
          v44 = v77;
        }

        else
        {
          v44 = 0;
        }

        if (v43)
        {
          v45 = *(&v77 + 1);
        }

        else
        {
          v45 = 0;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v79 = 0u;
      v80 = 0u;
    }

    sub_2723D9188(&v79, &qword_280893F40, &unk_272400070);
    v44 = 0;
    v45 = 0;
LABEL_27:
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v46 = qword_280894088;
    v47 = [objc_opt_self() sharedPreferences];
    v48 = [v47 languageCode];

    if (v48)
    {
      v49 = sub_2723FE5B4();
      v51 = v50;
    }

    else
    {
      v49 = 0;
      v51 = 0;
    }

    sub_2723FE2F4();
    v31 = v64;
    sub_2723EB6EC(v46, v44, v45, v49, v51, v64);

    v4 = v63;
    goto LABEL_33;
  }

LABEL_36:
  v8 = VCSettings._removeVocabularyEntries(matchingIDs:)(v30);

  if (qword_280893DC8 != -1)
  {
    goto LABEL_40;
  }

LABEL_37:
  _s12VoiceControl10VCSettingsC32triggerVocabularySyncIfNecessaryyyF_0();
  return v8;
}

Swift::Int __swiftcall VCSettings._removeVocabularyEntries(matchingIDs:)(Swift::OpaquePointer matchingIDs)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v24 - v6);
  v8 = sub_2723FE434();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v13 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_2723E4FAC(8);
  if ((v14 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_2723D9360(v13[7] + *(v5 + 72) * result, v7, &qword_280893F50, &qword_2723FFCE8);

  (*(v9 + 32))(v12, v7 + *(v4 + 48), v8);

  v15 = sub_2723FE424();
  v16 = sub_2723FE8A4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 134349315;
    *(v17 + 4) = *(matchingIDs._rawValue + 2);

    *(v17 + 12) = 2085;
    v19 = MEMORY[0x2743C7380](matchingIDs._rawValue, MEMORY[0x277D837D0]);
    v24 = v8;
    v21 = sub_2723E4A00(v19, v20, &v25);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_2723CB000, v15, v16, "VCSettings._removeVocabularyEntries matchingIDsCount: %{public}ld, matchingIDs: %{sensitive}s", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x2743C8040](v18, -1, -1);
    MEMORY[0x2743C8040](v17, -1, -1);

    (*(v9 + 8))(v12, v24);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  sub_2723E5848(v2, matchingIDs._rawValue);
  v23 = v22;

  return v23;
}

uint64_t VCSettings.removeAllVocabularyEntries(for:)(char *a1)
{
  v35 = sub_2723FE344();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v32 - v7);
  v9 = sub_2723FE434();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v13 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = sub_2723E4FAC(8);
  if ((v15 & 1) == 0)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_9;
  }

  sub_2723D9360(v13[7] + *(v6 + 72) * v14, v8, &qword_280893F50, &qword_2723FFCE8);

  (*(v10 + 32))(v12, v8 + *(v5 + 48), v9);
  v16 = *(v2 + 16);
  v34 = a1;
  v17 = a1;
  v18 = v12;
  v19 = v35;
  v16(v4, v17, v35);
  v20 = sub_2723FE424();
  v21 = sub_2723FE8A4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33 = v9;
    v23 = v22;
    v24 = swift_slowAlloc();
    v36 = v24;
    *v23 = 136446210;
    v25 = MEMORY[0x2743C6F10]();
    v32 = v18;
    v27 = v26;
    (*(v2 + 8))(v4, v19);
    v28 = sub_2723E4A00(v25, v27, &v36);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_2723CB000, v20, v21, "VCSettings.removeAllVocabularyEntries locale: %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x2743C8040](v24, -1, -1);
    MEMORY[0x2743C8040](v23, -1, -1);

    v29 = (*(v10 + 8))(v32, v33);
  }

  else
  {

    (*(v2 + 8))(v4, v19);
    v29 = (*(v10 + 8))(v18, v9);
  }

  MEMORY[0x28223BE20](v29);
  *(&v32 - 2) = v34;
  VCSettings._removeVocabularyEntries(shouldRemove:)(sub_2723E6288, (&v32 - 4));
  v9 = v30;
  if (qword_280893DC8 != -1)
  {
    goto LABEL_12;
  }

LABEL_9:
  _s12VoiceControl10VCSettingsC32triggerVocabularySyncIfNecessaryyyF_0();
  return v9;
}

uint64_t sub_2723DF398(uint64_t a1, uint64_t a2)
{
  v4 = sub_2723FE2D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2723FE344();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for VCVocabularyEntry(0) + 32) + 8))
  {
    (*(v5 + 104))(v7, *MEMORY[0x277CC9668], v4);
    v12 = sub_2723FE2C4();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    v32 = v12;
    v33 = v14;
    v30 = 45;
    v31 = 0xE100000000000000;
    v28 = 95;
    v29 = 0xE100000000000000;
    sub_2723CD24C();
    sub_2723FE984();

    sub_2723FE2A4();
  }

  else
  {
    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v15 = sub_2723EC124();
    v17 = v16;
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v27 = v8;
    v18 = qword_280894088;
    v19 = [objc_opt_self() sharedPreferences];
    v20 = [v19 languageCode];

    if (v20)
    {
      v21 = sub_2723FE5B4();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    sub_2723FE2F4();
    sub_2723EB6EC(v18, v15, v17, v21, v23, v11);

    v8 = v27;
  }

  v24 = MEMORY[0x2743C6F40](v11, a2);
  (*(v9 + 8))(v11, v8);
  return v24 & 1;
}

void sub_2723DF718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v34 - v3;
  v5 = type metadata accessor for VCVocabularyEntry(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v34 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = (v34 - v12);
  v13 = sub_2723FE434();
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x28223BE20](v13);
  v38 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2723E6C70();
  v16 = *(v15 + 16);
  v41 = v16;
  if (v16)
  {
    v34[0] = v15;
    v34[1] = a1;
    v42 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v17 = v15 + v42;
    v18 = *(v6 + 72);
    v19 = MEMORY[0x277D84F90];
    v20 = v16;
    do
    {
      sub_2723D5C78(v17, v11);
      v11[*(v5 + 36)] = 1;
      sub_2723FE284();
      v21 = sub_2723FE294();
      (*(*(v21 - 8) + 56))(v4, 0, 1, v21);
      sub_2723E6290(v4, &v11[*(v5 + 28)]);
      sub_2723D5C78(v11, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_2723E4504(0, v19[2] + 1, 1, v19);
      }

      v23 = v19[2];
      v22 = v19[3];
      if (v23 >= v22 >> 1)
      {
        v19 = sub_2723E4504((v22 > 1), v23 + 1, 1, v19);
      }

      v19[2] = v23 + 1;
      sub_2723D8978(v9, v19 + v42 + v23 * v18);
      sub_2723E5038(v11);
      v17 += v18;
      --v20;
    }

    while (v20);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  sub_2723E7238(v19);
  v24 = v38;
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v25 = off_280894260;
  v27 = v39;
  v26 = v40;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_18;
  }

  v28 = sub_2723E4FAC(8);
  if ((v29 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v30 = v36;
  sub_2723D9360(v25[7] + *(v35 + 72) * v28, v36, &qword_280893F50, &qword_2723FFCE8);

  (*(v27 + 32))(v24, v30 + *(v37 + 48), v26);
  v31 = sub_2723FE424();
  v32 = sub_2723FE8A4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134349056;
    *(v33 + 4) = v41;
    _os_log_impl(&dword_2723CB000, v31, v32, "VCSettings._removeVocabularyEntries(shouldRemove:) removalCount: %{public}ld", v33, 0xCu);
    MEMORY[0x2743C8040](v33, -1, -1);
  }

  (*(v27 + 8))(v24, v26);
}

void VCSettings._removeVocabularyEntries(shouldRemove:)(uint64_t (*a1)(char *), uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = (v39 - v3);
  v4 = sub_2723FE434();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = v39 - v7;
  v46 = type metadata accessor for VCVocabularyEntry(0);
  v8 = *(v46 - 8);
  v9 = MEMORY[0x28223BE20](v46);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v39 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v39 - v15;
  v17 = sub_2723E6C70();
  v18 = *(v17 + 16);
  if (v18)
  {
    v39[1] = v17;
    v39[2] = v2;
    v19 = 0;
    v48 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v20 = v17 + v48;
    v21 = *(v8 + 72);
    v22 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_2723D5C78(v20, v16);
      sub_2723D5C78(v16, v14);
      v23 = v49(v16);
      sub_2723E5038(v16);
      if (v23)
      {
        v25 = v46;
        v24 = v47;
        v14[*(v46 + 36)] = 1;
        sub_2723FE284();
        v26 = sub_2723FE294();
        (*(*(v26 - 8) + 56))(v24, 0, 1, v26);
        sub_2723E6290(v24, &v14[*(v25 + 7)]);
        if (__OFADD__(v19++, 1))
        {
          break;
        }
      }

      sub_2723D5C78(v14, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_2723E4504(0, v22[2] + 1, 1, v22);
      }

      v29 = v22[2];
      v28 = v22[3];
      if (v29 >= v28 >> 1)
      {
        v22 = sub_2723E4504((v28 > 1), v29 + 1, 1, v22);
      }

      v22[2] = v29 + 1;
      sub_2723D8978(v11, v22 + v48 + v29 * v21);
      sub_2723E5038(v14);
      v20 += v21;
      if (!--v18)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_13;
  }

  v19 = 0;
  v22 = MEMORY[0x277D84F90];
LABEL_12:
  sub_2723E7238(v22);
  v25 = v43;
  if (qword_280893E18 != -1)
  {
    goto LABEL_19;
  }

LABEL_13:
  v30 = off_280894260;
  v32 = v44;
  v31 = v45;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_21;
  }

  v33 = sub_2723E4FAC(8);
  if ((v34 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v35 = v41;
  sub_2723D9360(v30[7] + *(v40 + 72) * v33, v41, &qword_280893F50, &qword_2723FFCE8);

  (*(v32 + 32))(v25, v35 + *(v42 + 48), v31);
  v36 = sub_2723FE424();
  v37 = sub_2723FE8A4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134349056;
    *(v38 + 4) = v19;
    _os_log_impl(&dword_2723CB000, v36, v37, "VCSettings._removeVocabularyEntries(shouldRemove:) removalCount: %{public}ld", v38, 0xCu);
    MEMORY[0x2743C8040](v38, -1, -1);
  }

  (*(v32 + 8))(v25, v31);
}

Swift::Int __swiftcall VCSettings.removeAllVocabularyEntriesForAllLocales()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v18 - v4);
  v6 = sub_2723FE434();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v10 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = sub_2723E4FAC(8);
  if ((v12 & 1) == 0)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_8;
  }

  sub_2723D9360(v10[7] + *(v3 + 72) * v11, v5, &qword_280893F50, &qword_2723FFCE8);

  (*(v7 + 32))(v9, v5 + *(v2 + 48), v6);
  v13 = sub_2723FE424();
  v14 = sub_2723FE8A4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2723CB000, v13, v14, "VCSettings.removeAllVocabularyEntriesForAllLocales", v15, 2u);
    MEMORY[0x2743C8040](v15, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2723DF718(v1);
  v1 = v16;
  if (qword_280893DC8 != -1)
  {
    goto LABEL_11;
  }

LABEL_8:
  _s12VoiceControl10VCSettingsC32triggerVocabularySyncIfNecessaryyyF_0();
  return v1;
}

uint64_t VCSettings.setPronunciations(pronunciations:for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v147 = a1;
  v148 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  MEMORY[0x28223BE20](v4 - 8);
  v150 = &v125 - v5;
  v6 = sub_2723FE294();
  v144 = *(v6 - 8);
  v145 = v6;
  MEMORY[0x28223BE20](v6);
  v149 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2723FE2D4();
  v140 = *(v8 - 8);
  v141 = v8;
  MEMORY[0x28223BE20](v8);
  v139 = (&v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2723FE344();
  v137 = *(v10 - 8);
  v138 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v131 = (&v125 - v14);
  v146 = type metadata accessor for VCVocabularyEntry(0);
  v134 = *(v146 - 1);
  v15 = MEMORY[0x28223BE20](v146);
  v133 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v143 = &v125 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v135 = &v125 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v125 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v125 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = (&v125 - v28);
  v136 = sub_2723FE434();
  v30 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v32 = &v125 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v33 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_38;
  }

  v34 = sub_2723E4FAC(8);
  if ((v35 & 1) == 0)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    v3 = sub_2723E4504(0, v3[2] + 1, 1, v3);
    goto LABEL_32;
  }

  sub_2723D9360(v33[7] + *(v27 + 72) * v34, v29, &qword_280893F50, &qword_2723FFCE8);

  v36 = v136;
  (*(v30 + 32))(v32, v29 + *(v26 + 48), v136);
  v37 = v148;
  sub_2723D5C78(v148, v25);
  sub_2723D5C78(v37, v23);

  v38 = sub_2723FE424();
  v39 = sub_2723FE8A4();

  v40 = os_log_type_enabled(v38, v39);
  v142 = v3;
  v132 = v13;
  if (v40)
  {
    LODWORD(v130) = v39;
    v41 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v151 = v129;
    *v41 = 141559043;
    *(v41 + 4) = 1752392040;
    *(v41 + 12) = 2085;
    v42 = v146;
    v43 = &v25[v146[5]];
    v44 = *v43;
    v45 = v43[1];

    sub_2723E5038(v25);
    v46 = sub_2723E4A00(v44, v45, &v151);

    *(v41 + 14) = v46;
    *(v41 + 22) = 2082;
    if (*&v23[v42[8] + 8])
    {
      v47 = v139;
      v48 = v140;
      v49 = v141;
      (*(v140 + 104))(v139, *MEMORY[0x277CC9668], v141);
      v50 = sub_2723FE2C4();
      v52 = v51;
      v53 = v47;
      v54 = MEMORY[0x277D837D0];
      (*(v48 + 8))(v53, v49);
      v156 = v50;
      v157 = v52;
      v154 = 45;
      v155 = 0xE100000000000000;
      v152 = 95;
      v153 = 0xE100000000000000;
      v123 = sub_2723CD24C();
      v124 = v123;
      v121 = v54;
      v122 = v123;
      sub_2723FE984();

      v55 = v131;
      v56 = sub_2723FE2A4();
    }

    else
    {
      if (qword_280893DC8 != -1)
      {
        swift_once();
      }

      v128 = qword_280894080;
      v127 = sub_2723EC124();
      v59 = v58;
      if (qword_280893E00 != -1)
      {
        swift_once();
      }

      v126 = qword_280894088;
      v60 = [objc_opt_self() sharedPreferences];
      v61 = [v60 languageCode];

      if (v61)
      {
        v62 = sub_2723FE5B4();
        v64 = v63;
      }

      else
      {
        v62 = 0;
        v64 = 0;
      }

      sub_2723FE2F4();
      v55 = v131;
      sub_2723EB6EC(v126, v127, v59, v62, v64, v131);
    }

    v65 = MEMORY[0x2743C6F10](v56);
    v67 = v66;
    (*(v137 + 8))(v55, v138);
    sub_2723E5038(v23);
    v68 = sub_2723E4A00(v65, v67, &v151);

    *(v41 + 24) = v68;
    *(v41 + 32) = 2160;
    *(v41 + 34) = 1752392040;
    *(v41 + 42) = 2085;
    v69 = MEMORY[0x2743C7380](v147, MEMORY[0x277D837D0]);
    v71 = sub_2723E4A00(v69, v70, &v151);

    *(v41 + 44) = v71;
    _os_log_impl(&dword_2723CB000, v38, v130, "VCSettings.setPronunciations textOfEntry: %{sensitive,mask.hash}s, localeOfEntry: %{public}s, pronunciations: %{sensitive,mask.hash}s", v41, 0x34u);
    v72 = v129;
    swift_arrayDestroy();
    MEMORY[0x2743C8040](v72, -1, -1);
    MEMORY[0x2743C8040](v41, -1, -1);

    v57 = (*(v30 + 8))(v32, v136);
  }

  else
  {

    sub_2723E5038(v25);
    (*(v30 + 8))(v32, v36);
    v57 = sub_2723E5038(v23);
  }

  v73 = v145;
  MEMORY[0x28223BE20](v57);
  v74 = v148;
  v123 = v148;
  VCSettings._purgeVocabularyEntries(shouldPurge:)(sub_2723E6300, &v121);
  v75 = v144;
  v76 = v144 + 16;
  v131 = *(v144 + 16);
  (v131)(v149, v74, v73);
  v77 = v150;
  sub_2723FE284();
  v130 = *(v75 + 56);
  v130(v77, 0, 1, v73);
  v78 = *(v74 + v146[8] + 8);
  v79 = v139;
  v80 = v140;
  v136 = v76;
  v129 = v75 + 56;
  if (v78)
  {
    v81 = v73;
    v82 = *MEMORY[0x277CC9668];
    v83 = v141;
    (*(v140 + 104))(v139, v82, v141);
    v84 = sub_2723FE2C4();
    v86 = v85;
    (*(v80 + 8))(v79, v83);
    v156 = v84;
    v157 = v86;
    v154 = 45;
    v155 = 0xE100000000000000;
    v152 = 95;
    v153 = 0xE100000000000000;
    v123 = sub_2723CD24C();
    v124 = v123;
    v122 = v123;
    v87 = MEMORY[0x277D837D0];
    v121 = MEMORY[0x277D837D0];
    sub_2723FE984();

    v88 = v132;
    sub_2723FE2A4();
  }

  else
  {
    if (qword_280893DC8 != -1)
    {
      swift_once();
    }

    v89 = sub_2723EC124();
    v91 = v90;
    if (qword_280893E00 != -1)
    {
      swift_once();
    }

    v92 = qword_280894088;
    v93 = [objc_opt_self() sharedPreferences];
    v94 = [v93 languageCode];

    if (v94)
    {
      v95 = sub_2723FE5B4();
      v97 = v96;
    }

    else
    {
      v95 = 0;
      v97 = 0;
    }

    sub_2723FE2F4();
    v88 = v132;
    sub_2723EB6EC(v92, v89, v91, v95, v97, v132);

    v82 = *MEMORY[0x277CC9668];
    v81 = v145;
    v79 = v139;
    v80 = v140;
    v87 = MEMORY[0x277D837D0];
  }

  v98 = v146;
  v99 = v146[5];
  v140 = v146[6];
  v100 = (v148 + v99);
  v101 = v100[1];
  v148 = *v100;
  v128 = v101;
  v102 = v146[7];
  v103 = v143;
  v130(&v143[v102], 1, 1, v81);
  v104 = v98[8];
  v103[v98[9]] = 2;
  v139 = &v103[v104];
  *&v103[v98[10]] = xmmword_2723FFC50;
  (v131)(v103, v149, v81);

  sub_2723E50B8(v150, &v103[v102]);
  sub_2723FE2B4();
  v105 = v141;
  (*(v80 + 104))(v79, v82, v141);
  v106 = sub_2723FE2C4();
  v108 = v107;

  (*(v80 + 8))(v79, v105);
  v156 = v106;
  v157 = v108;
  v154 = 45;
  v155 = 0xE100000000000000;
  v152 = 95;
  v153 = 0xE100000000000000;
  v123 = sub_2723CD24C();
  v124 = v123;
  v121 = v87;
  v122 = v123;
  v109 = sub_2723FE984();
  v111 = v110;

  (*(v137 + 8))(v88, v138);
  sub_2723D9188(v150, &qword_280893EB0, &unk_2723FFC80);
  (*(v144 + 8))(v149, v145);
  v112 = v139;
  *v139 = v109;
  v112[1] = v111;
  v113 = &v103[v98[5]];
  v114 = v147;
  v115 = v128;
  *v113 = v148;
  *(v113 + 1) = v115;
  if (*(v114 + 16))
  {
  }

  else
  {
    v116 = 0;
  }

  v13 = v135;
  v23 = v133;
  v117 = v143;
  *&v143[v140] = v116;
  sub_2723D8978(v117, v13);
  sub_2723D5C78(v13, v23);
  v3 = sub_2723E6C70();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_32:
  v119 = v3[2];
  v118 = v3[3];
  if (v119 >= v118 >> 1)
  {
    v3 = sub_2723E4504((v118 > 1), v119 + 1, 1, v3);
  }

  v3[2] = v119 + 1;
  sub_2723D8978(v23, v3 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v119);
  sub_2723E7238(v3);
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  _s12VoiceControl10VCSettingsC32triggerVocabularySyncIfNecessaryyyF_0();
  return sub_2723E5038(v13);
}