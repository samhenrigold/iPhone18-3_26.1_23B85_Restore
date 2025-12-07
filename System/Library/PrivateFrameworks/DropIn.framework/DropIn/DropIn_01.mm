uint64_t DIHandleType.description.getter(uint64_t a1)
{
  v1 = [objc_opt_self() stringForHandleType_];
  v2 = sub_249DDC878();

  return v2;
}

uint64_t sub_249DCD638(unsigned __int8 a1)
{
  sub_249DDCD88();
  MEMORY[0x24C203720](a1 - 1);
  return sub_249DDCDA8();
}

uint64_t sub_249DCD688(uint64_t a1, unsigned __int8 a2)
{
  sub_249DDCD88();
  MEMORY[0x24C203720](a2 - 1);
  return sub_249DDCDA8();
}

uint64_t sub_249DCD6D0(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_249DCD740(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_249DCD740(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21600, &unk_249DDFBA0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_249DCD7B0(double a1)
{
  sub_249DCF480(&v2, a1 * 1000000000.0);
  if ((v3 & 1) == 0)
  {
    return v2;
  }

  v2 = 0;
  v3 = 0xE000000000000000;
  sub_249DDCC28();
  MEMORY[0x24C203240](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x24C203240](0xD00000000000001ELL, 0x8000000249DE1A70);
  MEMORY[0x24C203240](0x3436746E4955, 0xE600000000000000);
  MEMORY[0x24C203240](0xD00000000000002ELL, 0x8000000249DE1A90);
  result = sub_249DDCC98();
  __break(1u);
  return result;
}

DropIn::DeactivationState_optional __swiftcall DeactivationState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if ((rawValue + 1) < 9)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_249DCD924(char a1)
{
  sub_249DDCD88();
  MEMORY[0x24C203720](a1 & 1);
  return sub_249DDCDA8();
}

unint64_t sub_249DCD970()
{
  result = qword_27EF215B0;
  if (!qword_27EF215B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF215B0);
  }

  return result;
}

uint64_t sub_249DCDA0C@<X0>(uint64_t *a1@<X8>)
{
  result = DeactivationState.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_249DCDA38()
{
  result = qword_27EF215B8;
  if (!qword_27EF215B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF215C0, &qword_249DDFA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF215B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeactivationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DeactivationState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

void sub_249DCDC2C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  if (*(v0 + 128))
  {
    if (v2)
    {
      v3 = *(v0 + 120);
      v9 = v1;
      v10 = 0;

      v2(&v9);
      sub_249DB7B48(v2, v3);
    }
  }

  else if (v2)
  {
    v4 = *(v0 + 120);
    v5 = *(v0 + 136);
    v6 = v5;
    if (!v5)
    {
      sub_249DCF7C4();
      v6 = swift_allocError();
      *v7 = 0;
    }

    v9 = v6;
    v10 = 1;
    sub_249DB7B38(v2, v4);
    v8 = v5;
    v2(&v9);
    sub_249DB7B48(v2, v4);
    sub_249DBBD80(v9, v10);
  }
}

uint64_t sub_249DCDD1C()
{
  v1 = sub_249DDC6E8();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  swift_defaultActor_initialize();
  *(v0 + 136) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + OBJC_IVAR____TtC6DropIn20AppStateDeactivation_endTonePlayer) = 0;
  *(v0 + OBJC_IVAR____TtC6DropIn20AppStateDeactivation_activationResources) = 0;
  sub_249DDC6D8();
  (*(v3 + 32))(v0 + OBJC_IVAR____TtC6DropIn20AppStateDeactivation_logger, v7, v1);
  *(v0 + 128) = 1;
  return v0;
}

void sub_249DCDE3C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC6DropIn20AppStateDeactivation_activationResources) = a1;

  *(v1 + 128) = 2;
  sub_249DCDC2C();

  sub_249DCDF64();
}

uint64_t sub_249DCDE90(_BYTE *a1)
{
  *(v1 + 128) = *a1;
  sub_249DCDC2C();

  return sub_249DCDF64();
}

uint64_t sub_249DCDEC0(void *a1)
{
  v2 = *(v1 + 136);
  *(v1 + 136) = a1;
  v3 = a1;

  v5 = 0;
  return sub_249DCDE90(&v5);
}

uint64_t sub_249DCDF04()
{
  v1 = *(v0 + 136);
  *(v0 + 136) = 0;

  *(v0 + 128) = 1;
  sub_249DCDC2C();
  *(v0 + OBJC_IVAR____TtC6DropIn20AppStateDeactivation_endTonePlayer) = 0;

  *(v0 + OBJC_IVAR____TtC6DropIn20AppStateDeactivation_activationResources) = 0;
}

void sub_249DCDF64()
{
  switch(*(v0 + 128))
  {
    case 1:
      return;
    case 2:
    case 4:
      sub_249DCDFAC();
      break;
    case 3:
      sub_249DCE008();
      break;
    case 5:
      sub_249DCE660();
      break;
    case 6:
      sub_249DCE6BC();
      break;
    case 7:
      sub_249DCE810();
      break;
    case 8:
      sub_249DCF284();
      break;
    default:
      OUTLINED_FUNCTION_4_3(1);
      break;
  }
}

uint64_t sub_249DCDFAC()
{
  v1 = *(v0 + 128);
  if (v1 == 8)
  {
    v2 = 8;
  }

  else
  {
    DeactivationState.init(rawValue:)(v1);
    v2 = v4;
    if (v4 == 9)
    {
      v2 = 1;
    }
  }

  *(v0 + 128) = v2;
  sub_249DCDC2C();

  return sub_249DCDF64();
}

void sub_249DCE008()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  OUTLINED_FUNCTION_19(v1);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - v3;
  if (qword_27EF20E80 != -1)
  {
    swift_once();
  }

  if ((byte_27EF22F78 & 1) == 0)
  {
    v5 = *(v0 + OBJC_IVAR____TtC6DropIn20AppStateDeactivation_activationResources);
    if (v5 && (v6 = *(v5 + 16)) != 0)
    {
      v7 = v6;
      if ([v7 state] == 6 || objc_msgSend(v7, sel_state) == 7)
      {
        v20 = 4;
        sub_249DCDE90(&v20);
      }

      else
      {
        sub_249DDC9A8();
        OUTLINED_FUNCTION_17();
        __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
        v14 = sub_249DCF5A0();
        OUTLINED_FUNCTION_22();
        v15 = swift_allocObject();
        v15[2] = v0;
        v15[3] = v14;
        v15[4] = v7;
        v15[5] = v0;
        swift_retain_n();
        v16 = OUTLINED_FUNCTION_7();
        sub_249DC3594(v16, v17, v4, v18, v15);
      }
    }

    else
    {
      sub_249DCF7C4();
      v8 = swift_allocError();
      *v9 = 1;
      sub_249DCDEC0(v8);
    }
  }
}

uint64_t sub_249DCE1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  return MEMORY[0x2822009F8](sub_249DCE200, a5, 0);
}

uint64_t sub_249DCE200()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_249DCE310;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF211D8, &qword_249DDF168);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_249DCD6D0;
  v0[13] = &block_descriptor_7;
  v0[14] = v2;
  [v1 endWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_249DCE310()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  v3 = *(v1 + 152);
  if (v2)
  {
    v4 = sub_249DCE4F8;
  }

  else
  {
    v4 = sub_249DCE42C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_249DCE42C()
{
  OUTLINED_FUNCTION_9();
  v0 = sub_249DDC6C8();
  v1 = sub_249DDCA78();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_249DA7000, v0, v1, "Drop in session end issued", v2, 2u);
    OUTLINED_FUNCTION_20();
  }

  OUTLINED_FUNCTION_4();

  return v3();
}

uint64_t sub_249DCE4F8()
{
  v14 = v0;
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = v1;
  v3 = sub_249DDC6C8();
  v4 = sub_249DDCA68();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 160);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_249DA7000, v3, v4, "Failed to end active drop in session: %@", v6, 0xCu);
    sub_249DBBB44(v7, &qword_27EF211C0, &qword_249DDF140);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  v10 = *(v0 + 160);

  v13[0] = 5;
  sub_249DCDE90(v13);

  OUTLINED_FUNCTION_4();

  return v11();
}

uint64_t sub_249DCE660()
{
  v1 = *(v0 + OBJC_IVAR____TtC6DropIn20AppStateDeactivation_activationResources);
  if (v1 && *(v1 + 24))
  {

    sub_249DD5F70();
  }

  return sub_249DCDFAC();
}

uint64_t sub_249DCE6BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  OUTLINED_FUNCTION_19(v1);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - v3;
  sub_249DDC9A8();
  OUTLINED_FUNCTION_17();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = sub_249DCF5A0();
  v10 = swift_allocObject();
  v10[2] = v0;
  v10[3] = v9;
  v10[4] = v0;
  swift_retain_n();
  v11 = OUTLINED_FUNCTION_7();
  sub_249DC3594(v11, v12, v4, v13, v10);
}

uint64_t sub_249DCE7B8()
{
  OUTLINED_FUNCTION_6();
  sub_249DCDFAC();
  OUTLINED_FUNCTION_4();

  return v0();
}

uint64_t sub_249DCE810()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  OUTLINED_FUNCTION_19(v2);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v3);
  v5 = &v43[-v4];
  v6 = type metadata accessor for DropInPlayer.Settings(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF211B8, &qword_249DDF138);
  OUTLINED_FUNCTION_19(v11);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v12);
  v14 = &v43[-v13];
  v15 = sub_249DDC5F8();
  OUTLINED_FUNCTION_10();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  static ToneProvider.endToneURL.getter();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_249DBBB44(v14, &qword_27EF211B8, &qword_249DDF138);
    v22 = sub_249DDC6C8();
    v23 = sub_249DDCA68();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_249DA7000, v22, v23, "Invalid end tone URL", v24, 2u);
      OUTLINED_FUNCTION_20();
    }

    return sub_249DCDFAC();
  }

  else
  {
    (*(v17 + 32))(v21, v14, v15);
    (*(v17 + 16))(v10 + *(v6 + 24), v21, v15);
    *v10 = xmmword_249DDEDC0;
    *(v10 + 16) = 0x4014000000000000;
    *(v10 + *(v6 + 28)) = 1065353216;
    if (qword_27EF20E88 != -1)
    {
      OUTLINED_FUNCTION_1(&qword_27EF20E88);
    }

    v26 = sub_249DBCAD4(v10);
    *(v1 + OBJC_IVAR____TtC6DropIn20AppStateDeactivation_endTonePlayer) = v26;
    swift_retain_n();

    v27 = sub_249DDC9A8();
    OUTLINED_FUNCTION_17();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
    v31 = sub_249DCF5A0();
    OUTLINED_FUNCTION_22();
    v32 = swift_allocObject();
    v32[2] = v1;
    v32[3] = v31;
    v32[4] = v26;
    v32[5] = v1;
    swift_retain_n();
    v33 = OUTLINED_FUNCTION_7();
    sub_249DC3594(v33, v34, v5, v35, v32);

    OUTLINED_FUNCTION_17();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v27);
    v39 = swift_allocObject();
    v39[2] = v1;
    v39[3] = v31;
    v39[4] = v1;
    swift_retain_n();
    v40 = OUTLINED_FUNCTION_7();
    sub_249DC3594(v40, v41, v5, v42, v39);

    sub_249DBB328(v10);
    return (*(v17 + 8))(v21, v15);
  }
}

uint64_t sub_249DCECEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_249DCED80;

  return sub_249DD5C18();
}

uint64_t sub_249DCED80()
{
  OUTLINED_FUNCTION_6();
  v2 = *(*v1 + 16);
  v3 = *v1;
  OUTLINED_FUNCTION_3();
  *v4 = v3;
  *(v5 + 32) = v0;

  if (v0)
  {
    v6 = sub_249DCEF18;
  }

  else
  {
    v6 = sub_249DCEE9C;
  }

  return MEMORY[0x2822009F8](v6, v2, 0);
}

uint64_t sub_249DCEE9C()
{
  OUTLINED_FUNCTION_6();
  if (qword_27EF20E88 != -1)
  {
    OUTLINED_FUNCTION_1(&qword_27EF20E88);
  }

  sub_249DBD254();
  OUTLINED_FUNCTION_4();

  return v0();
}

uint64_t sub_249DCEF18()
{
  v1 = *(v0 + 32);
  v2 = v1;
  v3 = sub_249DDC6C8();
  v4 = sub_249DDCA68();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_249DA7000, v3, v4, "Failed to end start tone: %@", v7, 0xCu);
    sub_249DBBB44(v8, &qword_27EF211C0, &qword_249DDF140);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  else
  {
  }

  if (qword_27EF20E88 != -1)
  {
    OUTLINED_FUNCTION_1(&qword_27EF20E88);
  }

  sub_249DBD254();
  OUTLINED_FUNCTION_4();

  return v11();
}

uint64_t sub_249DCF0BC()
{
  OUTLINED_FUNCTION_6();
  v1 = sub_249DCD7B0(1.0);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_249DCF158;

  return MEMORY[0x282200480](v1);
}

uint64_t sub_249DCF158()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = *(v2 + 16);
  if (v0)
  {
  }

  return MEMORY[0x2822009F8](sub_249DCFB88, v5, 0);
}

uint64_t sub_249DCF284()
{
  *(v0 + 128) = 1;
  sub_249DCDC2C();

  return sub_249DCDF04();
}

uint64_t sub_249DCF2B4()
{
  sub_249DB7B48(*(v0 + 112), *(v0 + 120));

  v1 = OBJC_IVAR____TtC6DropIn20AppStateDeactivation_logger;
  sub_249DDC6E8();
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_249DCF344()
{
  sub_249DCF2B4();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AppStateDeactivation(uint64_t a1)
{
  result = qword_27EF215E0;
  if (!qword_27EF215E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249DCF3C4(uint64_t a1)
{
  result = sub_249DDC6E8();
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

BOOL sub_249DCF480(uint64_t a1, double a2)
{
  v3 = (*&a2 >> 52) & 0x7FFLL;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  if (v3 | *&a2 & 0xFFFFFFFFFFFFFLL)
  {
    if (v3 != 2047 && a2 > -1.0)
    {
      v9 = sub_249DDCA18();
      if (v9 <= 63)
      {
        v10 = v9;
        v11 = sub_249DDC9F8();
        v12 = v11 + __clz(__rbit64(v4));
        v13 = v10 - v12;
        if (__OFSUB__(v10, v12))
        {
          __break(1u);
        }

        else
        {
          if (v13 < -64 || v13 > 64)
          {
LABEL_12:
            v14 = 0;
            v15 = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

LABEL_23:
            v8 = 0;
            result = v10 >= v11;
            v6 = v14 | v15;
            goto LABEL_24;
          }

          if ((v13 & 0x8000000000000000) == 0)
          {
            if (v13 == 64)
            {
              goto LABEL_12;
            }

            v14 = v4 << v13;
            if (v10 < 0)
            {
              goto LABEL_17;
            }

            goto LABEL_22;
          }
        }

        if (v13 == -64)
        {
          goto LABEL_12;
        }

        v14 = v4 >> (v12 - v10);
        if (v10 < 0)
        {
LABEL_17:
          v15 = 0;
          goto LABEL_23;
        }

LABEL_22:
        v15 = 1 << v10;
        goto LABEL_23;
      }
    }

    v6 = 0;
    result = 0;
    v8 = 1;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    result = 1;
  }

LABEL_24:
  *a1 = v6;
  *(a1 + 8) = v8;
  return result;
}

unint64_t sub_249DCF5A0()
{
  result = qword_27EF215F0;
  if (!qword_27EF215F0)
  {
    type metadata accessor for AppStateDeactivation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF215F0);
  }

  return result;
}

uint64_t sub_249DCF5F8()
{
  OUTLINED_FUNCTION_11_0();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_0(v4);

  return sub_249DCECEC(v6, v7, v8, v2, v1);
}

uint64_t sub_249DCF69C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_0();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_0(v3);

  return sub_249DCF09C(v5, v6, v7, v1);
}

uint64_t sub_249DCF730()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_0();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_0(v3);

  return sub_249DCE798(v5, v6, v7, v1);
}

unint64_t sub_249DCF7C4()
{
  result = qword_27EF215F8;
  if (!qword_27EF215F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF215F8);
  }

  return result;
}

uint64_t sub_249DCF818()
{
  OUTLINED_FUNCTION_11_0();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_0(v4);

  return sub_249DCE1E0(v6, v7, v8, v2, v1);
}

uint64_t sub_249DCF8BC()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  OUTLINED_FUNCTION_4();

  return v3();
}

uint64_t getEnumTagSinglePayload for AppStateDeactivationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppStateDeactivationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_249DCFB2C()
{
  result = qword_27EF21608;
  if (!qword_27EF21608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF21608);
  }

  return result;
}

double sub_249DCFB94@<D0>(_OWORD *a3@<X8>)
{
  v5 = sub_249DDC848();
  v6 = [v3 valueForKey_];

  if (v6)
  {
    sub_249DDCBC8();
    swift_unknownObjectRelease();
    sub_249DC99E0(&v8, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21680, "X_");
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = 0.0;
    *a3 = xmmword_249DDFC80;
  }

  return result;
}

uint64_t sub_249DCFC60@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v8 = sub_249DDC848();
  v9 = [v5 valueForKey_];

  if (v9)
  {
    sub_249DDCBC8();
    swift_unknownObjectRelease();
    sub_249DC99E0(&v12, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21680, "X_");
  v10 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a4, v10 ^ 1u, 1, a3);
}

void sub_249DCFD34(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v9 = sub_249DDCBB8();
  OUTLINED_FUNCTION_1_5();
  v68 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v62 - v12;
  OUTLINED_FUNCTION_1_5();
  v70 = v14;
  v16 = MEMORY[0x28223BE20](v15);
  v67 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v69 = &v62 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v62 - v20;
  v22 = a2;
  sub_249DCFB94(&v73);
  if (*(&v73 + 1) >> 60 == 15)
  {
    OUTLINED_FUNCTION_35();

    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  }

  else
  {
    v65 = a1;
    v71 = a3;
    v28 = v73;
    v29 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_249DD09FC(v28, *(&v28 + 1));
    v66 = v28;
    v30 = sub_249DD08C4(v28, *(&v28 + 1));
    v64 = a5;
    v31 = v71;
    v32 = v30;
    sub_249DDCA98();
    v63 = v32;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v31);
    v36 = v31;
    if (EnumTagSinglePayload == 1)
    {
      (*(v68 + 8))(v13, v9);
      v37 = v64;
      if (qword_28130BF08 != -1)
      {
        OUTLINED_FUNCTION_0_7(&qword_28130BF08);
      }

      v38 = sub_249DDC6E8();
      __swift_project_value_buffer(v38, qword_28130C248);

      v39 = sub_249DDC6C8();
      v40 = sub_249DDCA68();

      v41 = os_log_type_enabled(v39, v40);
      v42 = v65;
      if (v41)
      {
        v43 = swift_slowAlloc();
        *&v73 = swift_slowAlloc();
        *v43 = 136315394;
        v72 = v71;
        swift_getMetatypeMetadata();
        v44 = sub_249DDC888();
        v46 = sub_249DD23AC(v44, v45, &v73);

        *(v43 + 4) = v46;
        *(v43 + 12) = 2080;
        *(v43 + 14) = sub_249DD23AC(v42, v22, &v73);
        _os_log_impl(&dword_249DA7000, v39, v40, "Failed to decode %s) data. Key = %s", v43, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_20();
        v36 = v71;
        OUTLINED_FUNCTION_20();
      }

      sub_249DD0A54(v66, *(&v66 + 1));

      v33 = v37;
      v34 = 1;
    }

    else
    {
      v47 = v70;
      v48 = v21;
      v68 = *(v70 + 32);
      (v68)(v21, v13, v36);
      if (qword_28130BF08 != -1)
      {
        OUTLINED_FUNCTION_0_7(&qword_28130BF08);
      }

      v49 = sub_249DDC6E8();
      __swift_project_value_buffer(v49, qword_28130C248);
      v50 = *(v47 + 16);
      v51 = v69;
      v50(v69, v48, v36);

      v52 = sub_249DDC6C8();
      v53 = sub_249DDCA78();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *&v73 = v62;
        *v54 = 136315394;
        *(v54 + 4) = sub_249DD23AC(v65, a2, &v73);
        *(v54 + 12) = 2080;
        v50(v67, v51, v71);
        v55 = sub_249DDC888();
        v56 = v51;
        v57 = v55;
        v59 = v58;
        (*(v47 + 8))(v56, v71);
        v60 = sub_249DD23AC(v57, v59, &v73);

        *(v54 + 14) = v60;
        _os_log_impl(&dword_249DA7000, v52, v53, "Decoded Value for Key = %s, Value = %s", v54, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_20();
        v36 = v71;
        OUTLINED_FUNCTION_20();
        sub_249DD0A54(v66, *(&v66 + 1));
      }

      else
      {
        sub_249DD0A54(v66, *(&v66 + 1));

        (*(v47 + 8))(v51, v36);
      }

      v61 = v64;
      (v68)(v64, v48, v36);
      v33 = v61;
      v34 = 0;
    }

    __swift_storeEnumTagSinglePayload(v33, v34, 1, v36);
    OUTLINED_FUNCTION_35();
  }
}

void sub_249DD052C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  OUTLINED_FUNCTION_1_5();
  v8 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v17 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  sub_249DDCA88();
  v9 = [v17 encodedData];
  v10 = sub_249DDC618();
  v12 = v11;

  v13 = sub_249DDC608();
  sub_249DD09A4(v10, v12);
  v14 = sub_249DDC848();
  [v6 setValue:v13 forKey:v14];

  OUTLINED_FUNCTION_35();
}

id sub_249DD08C4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = sub_249DDC608();
  v11[0] = 0;
  v7 = [v3 initForReadingFromData:v6 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_249DDC5C8();

    swift_willThrow();
  }

  sub_249DD09A4(a1, a2);
  return v7;
}

uint64_t sub_249DD09A4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_249DD09FC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_249DD0A54(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_249DD09A4(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_7(uint64_t a1)
{

  return swift_once();
}

uint64_t UserDefaultsAccessible.value.getter()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v1();
  if (v2)
  {
    v3 = v2;
    OUTLINED_FUNCTION_11_1();
    v4 = OUTLINED_FUNCTION_10_0();
    v5(v4);
    OUTLINED_FUNCTION_6_1();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_249DCFC60(AssociatedTypeWitness, v0);
  }

  else
  {
    OUTLINED_FUNCTION_6_1();
    swift_getAssociatedTypeWitness();
    v8 = OUTLINED_FUNCTION_13_1();

    return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
  }
}

void UserDefaultsAccessible.value.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_2();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  OUTLINED_FUNCTION_9_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = sub_249DDCBB8();
  OUTLINED_FUNCTION_10();
  v31 = v30;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  v35 = OUTLINED_FUNCTION_13_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, v36, AssociatedTypeWitness);
  v38 = (*(v23 + 24))(v25, v23);
  v39 = v38;
  if (EnumTagSinglePayload == 1)
  {
    if (v38)
    {
      OUTLINED_FUNCTION_11_1();
      v40(v25, v23);
      v41 = sub_249DDC848();

      [v39 removeObjectForKey_];

LABEL_9:
    }
  }

  else if (v38)
  {
    (*(v31 + 16))(v34, v27, v29);
    if (__swift_getEnumTagSinglePayload(v34, 1, AssociatedTypeWitness) == 1)
    {
      v42 = 0;
    }

    else
    {
      v42 = sub_249DDCCE8();
      (*(*(AssociatedTypeWitness - 8) + 8))(v34, AssociatedTypeWitness);
    }

    OUTLINED_FUNCTION_11_1();
    v43(v25, v23);
    v41 = sub_249DDC848();

    [v39 setObject:v42 forKey:v41];

    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v44 = OUTLINED_FUNCTION_14_1();
  v45(v44);
  OUTLINED_FUNCTION_35();
}

uint64_t (*sub_249DD0DB4(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = UserDefaultsAccessible.value.modify(v6, a2, a3);
  return sub_249DD0E28;
}

uint64_t (*UserDefaultsAccessible.value.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  v7 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  OUTLINED_FUNCTION_9_1();
  swift_getAssociatedTypeWitness();
  v8 = sub_249DDCBB8();
  v7[3] = v8;
  v9 = *(v8 - 8);
  v7[4] = v9;
  v10 = *(v9 + 64);
  v7[5] = __swift_coroFrameAllocStub(v10);
  v7[6] = __swift_coroFrameAllocStub(v10);
  UserDefaultsAccessible.value.getter();
  return sub_249DD0F38;
}

uint64_t UserDefaultsAccessible.description.getter()
{
  OUTLINED_FUNCTION_9_1();
  swift_getAssociatedTypeWitness();
  sub_249DDCBB8();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v0);
  sub_249DDCC28();
  OUTLINED_FUNCTION_15_2();
  v1 = OUTLINED_FUNCTION_0_8();
  v3 = v2(v1);
  MEMORY[0x24C203240](v3);

  MEMORY[0x24C203240](0xD000000000000012, 0x8000000249DE1AE0);
  v4 = OUTLINED_FUNCTION_0_8();
  v5(v4);
  v6 = sub_249DDC888();
  MEMORY[0x24C203240](v6);

  MEMORY[0x24C203240](0xD00000000000001BLL, 0x8000000249DE1B00);
  v7 = OUTLINED_FUNCTION_0_8();
  v9 = v8(v7);
  MEMORY[0x24C203240](v9);

  return 0;
}

uint64_t UserDefaultsAccessible<>.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_0();
  v5 = v4();
  if (v5)
  {
    v6 = v5;
    OUTLINED_FUNCTION_11_1();
    v7 = OUTLINED_FUNCTION_10_0();
    v9 = v8(v7);
    v11 = v10;
    OUTLINED_FUNCTION_6_1();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_249DCFD34(v9, v11, AssociatedTypeWitness, v3);
  }

  else
  {
    OUTLINED_FUNCTION_6_1();
    swift_getAssociatedTypeWitness();
    v14 = OUTLINED_FUNCTION_13_1();

    return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
  }
}

uint64_t sub_249DD13F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v5 = sub_249DDCBB8();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return UserDefaultsAccessible<>.value.setter(v7);
}

uint64_t UserDefaultsAccessible<>.value.setter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = OUTLINED_FUNCTION_13_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, v4, AssociatedTypeWitness);
  v6 = OUTLINED_FUNCTION_3_2();
  v8 = v7(v6);
  v9 = v8;
  if (EnumTagSinglePayload == 1)
  {
    if (v8)
    {
      v10 = OUTLINED_FUNCTION_3_2();
      v11(v10);
      v12 = sub_249DDC848();

      [v9 removeObjectForKey_];
    }
  }

  else if (v8)
  {
    v13 = OUTLINED_FUNCTION_3_2();
    v15 = v14(v13);
    v17 = v16;
    v18 = sub_249DDCBB8();
    WitnessTable = swift_getWitnessTable();
    sub_249DD052C(a1, v15, v17, v18, WitnessTable);
  }

  sub_249DDCBB8();
  OUTLINED_FUNCTION_14();
  return (*(v20 + 8))(a1);
}

void (*UserDefaultsAccessible<>.value.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v11;
  v11[3] = a5;
  v11[4] = v5;
  v11[1] = a3;
  v11[2] = a4;
  *v11 = a2;
  OUTLINED_FUNCTION_9_1();
  swift_getAssociatedTypeWitness();
  v12 = sub_249DDCBB8();
  v11[5] = v12;
  v13 = *(v12 - 8);
  v11[6] = v13;
  v14 = *(v13 + 64);
  v11[7] = __swift_coroFrameAllocStub(v14);
  v11[8] = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_6_1();
  UserDefaultsAccessible<>.value.getter(v15, v16, v17);
  return sub_249DD17C0;
}

void sub_249DD17C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17_2();
  v5 = *v4;
  v6 = *(*v4 + 56);
  v7 = *(*v4 + 64);
  if (v8)
  {
    v9 = *(v5 + 40);
    v10 = *(v5 + 48);
    v11 = OUTLINED_FUNCTION_10_0();
    v12(v11);
    UserDefaultsAccessible<>.value.setter(v6);
    (*(v10 + 8))(v7, v9);
  }

  else
  {
    UserDefaultsAccessible<>.value.setter(*(*v4 + 64));
  }

  free(v7);
  free(v6);
  OUTLINED_FUNCTION_35();

  free(v13);
}

void UserDefaultsAccessible<>.resolvedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17_2();
  v6 = v5;
  v8 = v7;
  v88 = v9;
  OUTLINED_FUNCTION_10();
  v87 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_1();
  v83 = v12;
  v14 = MEMORY[0x28223BE20](v13);
  v81 = &v79 - v15;
  MEMORY[0x28223BE20](v14);
  v82 = &v79 - v16;
  v86 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_249DDCBB8();
  OUTLINED_FUNCTION_10();
  v21 = v20;
  OUTLINED_FUNCTION_18();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v79 - v24;
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12_1();
  v84 = v27;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v79 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v79 - v32;
  isa = v6[5].isa;
  v89 = v4;
  v85 = v6;
  isa(v8, v6);
  if (__swift_getEnumTagSinglePayload(v25, 1, AssociatedTypeWitness) == 1)
  {
    (*(v21 + 8))(v25, v19);
    if (qword_28130BF08 != -1)
    {
      OUTLINED_FUNCTION_0_7(&qword_28130BF08);
    }

    v35 = sub_249DDC6E8();
    __swift_project_value_buffer(v35, qword_28130C248);
    v36 = v87;
    v37 = *(v87 + 16);
    v38 = v81;
    v39 = v89;
    v37(v81, v89, v8);
    v40 = v83;
    v37(v83, v39, v8);
    v41 = sub_249DDC6C8();
    v42 = sub_249DDCA58();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v90 = v82;
      *v43 = 136315394;
      v44 = v85[4].isa;
      LODWORD(v80) = v42;
      v45 = (v44)(v8);
      v47 = v46;
      v85 = v41;
      v48 = *(v36 + 8);
      v48(v38, v8);
      v49 = sub_249DD23AC(v45, v47, &v90);

      *(v43 + 4) = v49;
      *(v43 + 12) = 2080;
      v50 = *(v86 + 2);
      v50(v8, v86);
      v51 = sub_249DDC888();
      v53 = v52;
      v54 = OUTLINED_FUNCTION_14_1();
      (v48)(v54);
      v55 = sub_249DD23AC(v51, v53, &v90);

      *(v43 + 14) = v55;
      v56 = v85;
      _os_log_impl(&dword_249DA7000, v85, v80, "[Defaults Default Value] Key = %s, Value = %s", v43, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_20();

      v57 = v86;
    }

    else
    {

      v76 = *(v36 + 8);
      v76(v40, v8);
      v76(v38, v8);
      v57 = v86;
      v50 = *(v86 + 2);
    }

    v50(v8, v57);
  }

  else
  {
    v83 = *(v26 + 32);
    v83(v33, v25, AssociatedTypeWitness);
    v86 = v33;
    if (qword_28130BF08 != -1)
    {
      OUTLINED_FUNCTION_0_7(&qword_28130BF08);
    }

    v58 = sub_249DDC6E8();
    __swift_project_value_buffer(v58, qword_28130C248);
    (*(v87 + 16))(v82, v89, v8);
    v59 = *(v26 + 16);
    v59(v31, v86, AssociatedTypeWitness);
    v60 = sub_249DDC6C8();
    LODWORD(v89) = sub_249DDCA78();
    if (os_log_type_enabled(v60, v89))
    {
      v61 = swift_slowAlloc();
      v81 = (v26 + 32);
      v62 = v61;
      v80 = swift_slowAlloc();
      v90 = v80;
      *v62 = 136315394;
      v63 = v85[4].isa;
      v79 = v60;
      v64 = (v63)(v8);
      v66 = v65;
      v67 = OUTLINED_FUNCTION_14_1();
      v68(v67);
      v69 = sub_249DD23AC(v64, v66, &v90);

      *(v62 + 4) = v69;
      *(v62 + 12) = 2080;
      v59(v84, v31, AssociatedTypeWitness);
      v70 = sub_249DDC888();
      v72 = v71;
      (*(v26 + 8))(v31, AssociatedTypeWitness);
      v73 = sub_249DD23AC(v70, v72, &v90);

      *(v62 + 14) = v73;
      v74 = v86;
      v75 = v79;
      _os_log_impl(&dword_249DA7000, v79, v89, "[Defaults Custom Value] Key = %s, Value = %s", v62, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_20();
    }

    else
    {

      (*(v26 + 8))(v31, AssociatedTypeWitness);
      v77 = OUTLINED_FUNCTION_14_1();
      v78(v77);
      v74 = v86;
    }

    v83(v88, v74, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_35();
}

void UserDefaultsAccessible<>.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17_2();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_10();
  v5 = v4;
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v6);
  sub_249DDCBB8();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v7);
  sub_249DDCC28();
  OUTLINED_FUNCTION_15_2();
  v8 = OUTLINED_FUNCTION_0_8();
  v10 = v9(v8);
  MEMORY[0x24C203240](v10);

  MEMORY[0x24C203240](0xD000000000000012, 0x8000000249DE1AE0);
  v11 = OUTLINED_FUNCTION_0_8();
  v12(v11);
  v13 = sub_249DDC888();
  MEMORY[0x24C203240](v13);

  MEMORY[0x24C203240](0xD000000000000013, 0x8000000249DE1B20);
  v14 = OUTLINED_FUNCTION_5_2();
  v15(v14);
  OUTLINED_FUNCTION_3_2();
  sub_249DDCCD8();
  v16 = *(v5 + 8);
  v17 = OUTLINED_FUNCTION_3_2();
  v16(v17);
  MEMORY[0x24C203240](0xD000000000000014, 0x8000000249DE1B40);
  v18 = OUTLINED_FUNCTION_5_2();
  v19(v18);
  OUTLINED_FUNCTION_3_2();
  sub_249DDCCD8();
  v20 = OUTLINED_FUNCTION_3_2();
  v16(v20);
  MEMORY[0x24C203240](0xD00000000000001BLL, 0x8000000249DE1B00);
  v21 = OUTLINED_FUNCTION_0_8();
  v23 = v22(v21);
  MEMORY[0x24C203240](v23);

  OUTLINED_FUNCTION_35();
}

uint64_t (*sub_249DD2268(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = UserDefaultsAccessible.value.modify(v6, a2, a3);
  return sub_249DD29C8;
}

void sub_249DD22DC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_249DD2324(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = swift_getWitnessTable();

  UserDefaultsAccessible<>.resolvedValue.getter(a1, WitnessTable, v3, v4);
}

unint64_t sub_249DD23AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_249DD2510(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_249DBB764(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_249DD2510(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_249DD2610(a5, a6);
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
    result = sub_249DDCC58();
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

uint64_t sub_249DD2610(uint64_t a1, unint64_t a2)
{
  v3 = sub_249DD265C(a1, a2);
  sub_249DD2774(&unk_285D01560);
  return v3;
}

uint64_t sub_249DD265C(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_249DDC8C8())
  {
    result = sub_249DD2858(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_249DDCC18();
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
          result = sub_249DDCC58();
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

uint64_t sub_249DD2774(uint64_t result)
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

    result = sub_249DD28C8(result, v7, 1, v3);
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

void *sub_249DD2858(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21610, "P[");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_249DD28C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21610, "P[");
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

void OUTLINED_FUNCTION_15_2()
{

  JUMPOUT(0x24C203240);
}

uint64_t sub_249DD2B84()
{
  v1 = OUTLINED_FUNCTION_11_2();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_10_1(v2);
  OUTLINED_FUNCTION_0_9(v3);
  *(v0 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_7_2();
}

uint64_t sub_249DD2CC0()
{
  v1 = OUTLINED_FUNCTION_11_2();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_10_1(v2);
  OUTLINED_FUNCTION_0_9(v3);
  *(v0 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_7_2();
}

uint64_t sub_249DD2DFC()
{
  v1 = OUTLINED_FUNCTION_11_2();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_10_1(v2);
  OUTLINED_FUNCTION_0_9(v3);
  *(v0 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_7_2();
}

uint64_t sub_249DD2F38()
{
  v1 = OUTLINED_FUNCTION_11_2();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_10_1(v2);
  OUTLINED_FUNCTION_0_9(v3);
  *(v0 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_7_2();
}

uint64_t sub_249DD3084(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_249DD310C()
{
  v1 = OUTLINED_FUNCTION_11_2();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_10_1(v2);
  OUTLINED_FUNCTION_0_9(v3);
  *(v0 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_7_2();
}

id XPCDispatcher.init(clientContext:)(uint64_t a1)
{
  sub_249DDC6D8();
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_14_2();
  *&v1[OBJC_IVAR___DIXPCDispatcher_clientContext] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for XPCDispatcher(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t type metadata accessor for XPCDispatcher(uint64_t a1)
{
  result = qword_28130BEB0;
  if (!qword_28130BEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249DD330C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  v4 = v0;
  v2 = v1;

  return v4(v2);
}

uint64_t sub_249DD33F8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_249DD34A0;

  return sub_249DD32EC();
}

uint64_t sub_249DD34A0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_249DDC5B8();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v7 + 8);

  return v11();
}

uint64_t sub_249DD3638(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_249DDC9A8();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_249DDFDE8;
  v9[5] = v8;
  sub_249DD480C(0, 0, v6, &unk_249DDFDF8, v9);
}

void *sub_249DD3748(uint64_t a1)
{
  v2 = v1;

  v4 = sub_249DDC6C8();
  v5 = sub_249DDCA78();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16[0] = v7;
    *v6 = 136315138;
    v8 = sub_249DD38BC();
    v9 = MEMORY[0x24C2032A0](a1, v8);
    v11 = sub_249DD23AC(v9, v10, v16);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_249DA7000, v4, v5, "Did load devices %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  OUTLINED_FUNCTION_2_2(v2 + OBJC_IVAR___DIXPCDispatcher_deviceListDelegate, v12);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_249DD38BC();
    v15 = sub_249DDC8F8();
    [v14 didLoadDevices_];

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_249DD38BC()
{
  result = qword_28130BCA0;
  if (!qword_28130BCA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28130BCA0);
  }

  return result;
}

void *sub_249DD3A04(void *a1, const char *a2, uint64_t *a3, SEL *a4, ...)
{
  v8 = v4;
  v9 = a1;
  v10 = sub_249DDC6C8();
  v11 = sub_249DDCA78();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_37();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_249DA7000, v10, v11, a2, v12, 0xCu);
    sub_249DD560C(v13, &qword_27EF211C0, &qword_249DDF140);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  OUTLINED_FUNCTION_2_2(v8 + *a3, v15);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a4];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_249DD3DB4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_249DDC6C8();
  v6 = sub_249DDCA68();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_37();
    v16 = swift_slowAlloc();
    v17[0] = v16;
    *v7 = 138412546;
    *(v7 + 4) = v3;
    *v8 = v3;
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v9 = v3;
    v10 = sub_249DDCD38();
    v12 = sub_249DD23AC(v10, v11, v17);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_249DA7000, v5, v6, "Session Did Fail %@. Error = %s", v7, 0x16u);
    sub_249DD560C(v8, &qword_27EF211C0, &qword_249DDF140);
    OUTLINED_FUNCTION_20();
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = sub_249DDC5B8();
    [v14 session:v3 didFailWithError:v15];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_249DD4008(void *a1, char a2)
{
  v3 = v2;
  v5 = a1;
  v6 = sub_249DDC6C8();
  v7 = sub_249DDCA78();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_37();
    *v8 = 67109378;
    *(v8 + 4) = a2 & 1;
    *(v8 + 8) = 2112;
    *(v8 + 10) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_249DA7000, v6, v7, "Did Update Mute State %{BOOL}d for Session %@", v8, 0x12u);
    sub_249DD560C(v9, &qword_27EF211C0, &qword_249DDF140);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  OUTLINED_FUNCTION_2_2(v3 + OBJC_IVAR___DIXPCDispatcher_sessionStatusDelegate, v11);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result session:v5 didUpdateUplinkMuteStatus:a2 & 1];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_249DD41C0(uint64_t a1, float a2)
{
  v3 = v2;
  v5 = sub_249DDC6C8();
  v6 = sub_249DDCA48();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a2;
    _os_log_impl(&dword_249DA7000, v5, v6, "Did update audio power %f", v7, 0xCu);
    OUTLINED_FUNCTION_20();
  }

  OUTLINED_FUNCTION_2_2(v3 + OBJC_IVAR___DIXPCDispatcher_audioPowerDelegate, v8);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *&v10 = a2;
    [result didUpdateAudioPower_];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_249DD4388(uint64_t a1, const char *a2, SEL *a3, ...)
{
  v6 = v3;
  v7 = a1;
  v8 = sub_249DDC6C8();
  v9 = sub_249DDCA78();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_37();
    *v10 = 67109120;
    *(v10 + 4) = v7 & 1;
    _os_log_impl(&dword_249DA7000, v8, v9, a2, v10, 8u);
    OUTLINED_FUNCTION_20();
  }

  OUTLINED_FUNCTION_2_2(v6 + OBJC_IVAR___DIXPCDispatcher_audioStatusDelegate, v11);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a3];
    return swift_unknownObjectRelease();
  }

  return result;
}

id XPCDispatcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCDispatcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCDispatcher(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_249DD463C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_249DBBD8C;

  return v6();
}

uint64_t sub_249DD4724(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_249DB9270;

  return v7();
}

uint64_t sub_249DD480C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_249DBBC70(a3, v22 - v10);
  v12 = sub_249DDC9A8();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_249DD560C(v11, &qword_27EF21570, &qword_249DDF130);
  }

  else
  {
    sub_249DDC998();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_249DDC948();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_249DDC898() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_249DD560C(a3, &qword_27EF21570, &qword_249DDF130);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_249DD560C(a3, &qword_27EF21570, &qword_249DDF130);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_249DD4AE0(uint64_t a1)
{
  result = sub_249DDC6E8();
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

uint64_t dispatch thunk of XPCDispatcher.fetchClientContext()()
{
  OUTLINED_FUNCTION_9();
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x108);
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_4_4(v2);
  *v3 = v4;
  v3[1] = sub_249DD4FE8;

  return v6();
}

uint64_t sub_249DD4FE8()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_249DD53A4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4_4(v3);
  *v4 = v5;
  v4[1] = sub_249DB9270;

  return sub_249DD33F8(v1, v2);
}

uint64_t sub_249DD5448()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4_4(v4);
  *v5 = v6;
  v5[1] = sub_249DBBD8C;

  return sub_249DD463C(v1, v2, v3);
}

uint64_t objectdestroy_15Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249DD5544(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4_4(v6);
  *v7 = v8;
  v7[1] = sub_249DBBD8C;

  return sub_249DD4724(a1, v3, v4, v5);
}

uint64_t sub_249DD560C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_249DD5660()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_3(v1);

  return v4(v3);
}

uint64_t sub_249DD56F8()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_3(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return swift_unknownObjectWeakInit();
}

uint64_t DropInPlayer.Settings.init(repeating:timeout:toneURL:volume:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, float a6@<S1>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  v9 = type metadata accessor for DropInPlayer.Settings(0);
  v10 = *(v9 + 24);
  v11 = sub_249DDC5F8();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a3, v11);
  v13 = 1.0;
  if (a6 <= 1.0)
  {
    v13 = a6;
  }

  if (a6 < 0.0)
  {
    v13 = 0.0;
  }

  *(a4 + *(v9 + 28)) = v13;
  return result;
}

void *sub_249DD58F4(uint64_t a1)
{
  v3 = v1;
  v5 = sub_249DDC5F8();
  OUTLINED_FUNCTION_10();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  *(v3 + OBJC_IVAR____TtC6DropIn12DropInPlayer_timer) = 0;
  v12 = type metadata accessor for DropInPlayer.Settings(0);
  (*(v7 + 16))(v11, a1 + *(v12 + 24), v5);
  v13 = objc_allocWithZone(type metadata accessor for AudioPlayer());
  v14 = sub_249DB6EC0(v11);
  if (v2)
  {
    sub_249DBB328(a1);

    type metadata accessor for DropInPlayer(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v14;
    sub_249DD6BB0(a1, v3 + OBJC_IVAR____TtC6DropIn12DropInPlayer_settings);
  }

  return v3;
}

char *sub_249DD5A6C(uint64_t a1, char a2)
{
  v4 = v2;
  v6 = sub_249DDC5F8();
  OUTLINED_FUNCTION_10();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = type metadata accessor for DropInPlayer.Settings(0);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  if (a2)
  {
    sub_249DBE684(v4 + OBJC_IVAR____TtC6DropIn12DropInPlayer_settings, v17);
    (*(v8 + 32))(v12, v17 + *(v13 + 24), v6);
    v18 = objc_allocWithZone(type metadata accessor for AudioPlayer());
    result = sub_249DB6EC0(v12);
    if (v3)
    {
      return result;
    }

    v20 = *(v4 + 16);
    *(v4 + 16) = result;
  }

  LODWORD(v14) = *(v4 + OBJC_IVAR____TtC6DropIn12DropInPlayer_settings + *(v13 + 28));
  [*(*(v4 + 16) + OBJC_IVAR____TtC6DropIn11AudioPlayer_avAudioPlayer) setVolume_];
  return [*(*(v4 + 16) + OBJC_IVAR____TtC6DropIn11AudioPlayer_avAudioPlayer) setAudioSession_];
}

uint64_t sub_249DD5C38()
{
  OUTLINED_FUNCTION_9();
  if (qword_27EF20E80 != -1)
  {
    OUTLINED_FUNCTION_13(&qword_27EF20E80);
  }

  if (byte_27EF22F78)
  {
    goto LABEL_5;
  }

  v1 = *(v0 + 2);
  if ([*(*(v1 + 16) + OBJC_IVAR____TtC6DropIn11AudioPlayer_avAudioPlayer) isPlaying])
  {
    goto LABEL_5;
  }

  v4 = (*(v0 + 2) + OBJC_IVAR____TtC6DropIn12DropInPlayer_settings);
  v5 = *v4;
  v0[3] = *v4;
  v6 = v4[1];
  v0[4] = v6;
  if (LOBYTE(v5) != 2 && (LOBYTE(v5) & 1) == 0)
  {
    sub_249DD6010(v6);
LABEL_5:
    OUTLINED_FUNCTION_4();

    return v2();
  }

  v7 = *(v1 + 16);
  *(v0 + 5) = v7;
  v8 = v7;
  v9 = swift_task_alloc();
  *(v0 + 6) = v9;
  *v9 = v0;
  v10 = OUTLINED_FUNCTION_6_3(v9);

  return sub_249DB7088(v10);
}

uint64_t sub_249DD5D98()
{
  OUTLINED_FUNCTION_6();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  *(v2 + 56) = v0;

  if (v0)
  {
    v4 = sub_249DD5F14;
  }

  else
  {

    v4 = sub_249DD5EA8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_249DD5EA8()
{
  OUTLINED_FUNCTION_6();
  if (*(v0 + 24) != 2)
  {
    sub_249DD6010(*(v0 + 32));
  }

  OUTLINED_FUNCTION_4();

  return v1();
}

uint64_t sub_249DD5F14()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_4();

  return v1();
}

void sub_249DD5F70()
{
  if (qword_27EF20E80 != -1)
  {
    OUTLINED_FUNCTION_13(&qword_27EF20E80);
  }

  if ((byte_27EF22F78 & 1) == 0)
  {
    v1 = OBJC_IVAR____TtC6DropIn12DropInPlayer_timer;
    [*(v0 + OBJC_IVAR____TtC6DropIn12DropInPlayer_timer) invalidate];
    v2 = *(v0 + v1);
    *(v0 + v1) = 0;

    v3 = *(*(v0 + 16) + OBJC_IVAR____TtC6DropIn11AudioPlayer_avAudioPlayer);

    [v3 stop];
  }
}

uint64_t sub_249DD6010(double a1)
{
  v2 = v1;
  v4 = sub_249DDC668();
  OUTLINED_FUNCTION_10();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  sub_249DDC658();
  sub_249DDC638();
  v13 = *(v6 + 8);
  v13(v10, v4);
  (*(v6 + 16))(v10, v12, v4);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = objc_allocWithZone(MEMORY[0x277CBEBB8]);
  v16 = sub_249DD695C(v10, 1, sub_249DD6954, v14, a1);
  v17 = *(v2 + OBJC_IVAR____TtC6DropIn12DropInPlayer_timer);
  *(v2 + OBJC_IVAR____TtC6DropIn12DropInPlayer_timer) = v16;
  v18 = v16;

  v19 = [objc_opt_self() mainRunLoop];
  [v19 addTimer:v18 forMode:*MEMORY[0x277CBE640]];

  return (v13)(v12, v4);
}

uint64_t sub_249DD620C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21570, &qword_249DDF130);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_249DDC9A8();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    sub_249DC3858(0, 0, v4, &unk_249DDFE90, v8);
  }

  return result;
}

uint64_t sub_249DD6308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_249DD6328, 0, 0);
}

uint64_t sub_249DD6328()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0[3] + 16);
  v0[4] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_6_3(v3);

  return sub_249DB7088(v4);
}

uint64_t sub_249DD63DC()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {

    v4 = sub_249DD6C14;
  }

  else
  {

    v4 = sub_249DD6518;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_249DD6518()
{
  **(v0 + 16) = *(v0 + 48) != 0;
  OUTLINED_FUNCTION_4();
  return v1();
}

uint64_t DropInPlayer.deinit()
{
  sub_249DBB328(v0 + OBJC_IVAR____TtC6DropIn12DropInPlayer_settings);

  return v0;
}

uint64_t DropInPlayer.__deallocating_deinit()
{
  DropInPlayer.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_249DD660C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249DD6644(uint64_t a1)
{
  result = type metadata accessor for DropInPlayer.Settings(319);
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

uint64_t dispatch thunk of DropInPlayer.start()()
{
  OUTLINED_FUNCTION_9();
  v4 = (*(*v0 + 168) + **(*v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_249DCF8BC;

  return v4();
}

void sub_249DD685C(uint64_t a1)
{
  sub_249DD68F0(319);
  if (v1 <= 0x3F)
  {
    sub_249DDC5F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_249DD68F0(uint64_t a1)
{
  if (!qword_27EF21650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF21658, "8[");
    v1 = sub_249DDCBB8();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF21650);
    }
  }
}

id sub_249DD695C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v12 = sub_249DDC628();
  v17[4] = a3;
  v17[5] = a4;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_249DD6A80;
  v17[3] = &block_descriptor_8;
  v13 = _Block_copy(v17);
  v14 = [v6 initWithFireDate:v12 interval:a2 & 1 repeats:v13 block:a5];
  _Block_release(v13);

  v15 = sub_249DDC668();
  (*(*(v15 - 8) + 8))(a1, v15);

  return v14;
}

void sub_249DD6A80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249DD6B00()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_249DCF8BC;

  return sub_249DD6308(v3, v4, v5, v6);
}

uint64_t sub_249DD6BB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DropInPlayer.Settings(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Feature.isEnabled.getter()
{
  v2[3] = &type metadata for Feature;
  v2[4] = sub_249DD6C94();
  v0 = sub_249DDC6B8();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v0 & 1;
}

unint64_t sub_249DD6C94()
{
  result = qword_28130BE28[0];
  if (!qword_28130BE28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28130BE28);
  }

  return result;
}

uint64_t Feature.hashValue.getter()
{
  sub_249DDCD88();
  MEMORY[0x24C203720](0);
  return sub_249DDCDA8();
}

unint64_t sub_249DD6D90()
{
  result = qword_27EF21660;
  if (!qword_27EF21660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF21660);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Feature(_BYTE *result, int a2, int a3)
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

uint64_t DropInUser.imageData.getter()
{
  v0 = OUTLINED_FUNCTION_28_0();
  sub_249DD6F74(v0, v1);
  return OUTLINED_FUNCTION_28_0();
}

uint64_t sub_249DD6F74(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_249DD09FC(result, a2);
  }

  return result;
}

double DropInUser.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = -3.10503618e231;
  *(a1 + 56) = xmmword_249DDFF50;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  return result;
}

__n128 DropInUser.init(handleValue:handleType:givenName:familyName:displayName:imageData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, uint64_t a11)
{
  result = a10;
  *(a9 + 72) = a2;
  *(a9 + 80) = a3;
  *a9 = a4;
  *(a9 + 8) = a5;
  *(a9 + 16) = a6;
  *(a9 + 24) = a7;
  *(a9 + 32) = a8;
  *(a9 + 40) = a10;
  *(a9 + 56) = a11;
  *(a9 + 64) = a1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249DD7054(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_249DD7094(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

objc_class *ClientContext.__allocating_init(homeIdentifier:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_249DD7708(a1, v3 + OBJC_IVAR___DIClientContext_homeIdentifier, &qword_27EF21670, &qword_249DE0058);
  v6.receiver = v3;
  v6.super_class = v1;
  objc_msgSendSuper2(&v6, sel_init);
  v4 = OUTLINED_FUNCTION_3_3();
  sub_249DBBB44(v4, &qword_27EF21670, &qword_249DE0058);
  return v1;
}

char *ClientContext.init(homeIdentifier:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_249DD7708(a1, v1 + OBJC_IVAR___DIClientContext_homeIdentifier, &qword_27EF21670, &qword_249DE0058);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, sel_init);
  v4 = OUTLINED_FUNCTION_3_3();
  sub_249DBBB44(v4, &qword_27EF21670, &qword_249DE0058);
  return v1;
}

uint64_t ClientContext.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_249DDC6A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21670, &qword_249DE0058);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21678, &qword_249DE0060);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  sub_249DD7708(a1, v34, &qword_27EF21680, "X_");
  if (v35)
  {
    if (OUTLINED_FUNCTION_0_11())
    {
      v15 = v14;
      v16 = v10;
      v17 = v7;
      v18 = v4;
      v19 = v5;
      v20 = v33;

      v29 = v20 == v2;
      v5 = v19;
      v4 = v18;
      v7 = v17;
      v10 = v16;
      v14 = v15;
      if (v29)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    sub_249DBBB44(v34, &qword_27EF21680, "X_");
  }

  sub_249DD7708(a1, v34, &qword_27EF21680, "X_");
  if (!v35)
  {
    goto LABEL_16;
  }

  if ((OUTLINED_FUNCTION_0_11() & 1) == 0)
  {
LABEL_18:
    v21 = 0;
    return v21 & 1;
  }

  sub_249DD7708(a1, v34, &qword_27EF21680, "X_");
  if (!v35)
  {
LABEL_16:
    v25 = &qword_27EF21680;
    v26 = "X_";
    v27 = v34;
LABEL_17:
    sub_249DBBB44(v27, v25, v26);
    goto LABEL_18;
  }

  if ((OUTLINED_FUNCTION_0_11() & 1) == 0)
  {
    goto LABEL_18;
  }

  v32 = v5;
  v22 = v33;
  v23 = OBJC_IVAR___DIClientContext_homeIdentifier;
  v24 = *(v11 + 48);
  sub_249DD7708(v33 + OBJC_IVAR___DIClientContext_homeIdentifier, v14, &qword_27EF21670, &qword_249DE0058);
  sub_249DD7708(v2 + v23, &v14[v24], &qword_27EF21670, &qword_249DE0058);
  OUTLINED_FUNCTION_4_5(v14);
  if (!v29)
  {
    sub_249DD7708(v14, v10, &qword_27EF21670, &qword_249DE0058);
    OUTLINED_FUNCTION_4_5(&v14[v24]);
    if (!v29)
    {
      v30 = v32;
      (*(v32 + 32))(v7, &v14[v24], v4);
      sub_249DD7768();
      v21 = sub_249DDC838();

      v31 = *(v30 + 8);
      v31(v7, v4);
      v31(v10, v4);
      sub_249DBBB44(v14, &qword_27EF21670, &qword_249DE0058);
      return v21 & 1;
    }

    (*(v32 + 8))(v10, v4);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_4_5(&v14[v24]);
  if (!v29)
  {
LABEL_23:
    v25 = &qword_27EF21678;
    v26 = &qword_249DE0060;
    v27 = v14;
    goto LABEL_17;
  }

  sub_249DBBB44(v14, &qword_27EF21670, &qword_249DE0058);
LABEL_5:
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_249DD7708(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_14();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_249DD7768()
{
  result = qword_27EF21688;
  if (!qword_27EF21688)
  {
    sub_249DDC6A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF21688);
  }

  return result;
}

unint64_t ClientContext.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21670, &qword_249DE0058);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  v6 = 0;
  v7 = 0xE000000000000000;
  sub_249DDCC28();

  v6 = 0xD000000000000011;
  v7 = 0x8000000249DE1DE0;
  sub_249DD7708(v0 + OBJC_IVAR___DIClientContext_homeIdentifier, v3, &qword_27EF21670, &qword_249DE0058);
  v4 = sub_249DDC888();
  MEMORY[0x24C203240](v4);

  return v6;
}

Swift::Void __swiftcall ClientContext.encode(with:)(NSCoder with)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21670, &qword_249DE0058);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - v4;
  sub_249DD7708(v1 + OBJC_IVAR___DIClientContext_homeIdentifier, &v9 - v4, &qword_27EF21670, &qword_249DE0058);
  v6 = sub_249DDC6A8();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    v7 = sub_249DDC678();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  v8 = sub_249DDC848();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
}

id ClientContext.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_3_3();
  return ClientContext.init(coder:)(v2);
}

id ClientContext.init(coder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_3_3();
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21670, &qword_249DE0058);
  OUTLINED_FUNCTION_18();
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - v4;
  sub_249DD7CB0();
  v6 = sub_249DDCB98();
  if (v6)
  {
    v7 = v6;
    sub_249DDC688();

    v8 = sub_249DDC6A8();
    v9 = 0;
  }

  else
  {
    v8 = sub_249DDC6A8();
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v9, 1, v8);
  sub_249DD7CF4(v5, v1 + OBJC_IVAR___DIClientContext_homeIdentifier);
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

unint64_t sub_249DD7CB0()
{
  result = qword_28130BCB0;
  if (!qword_28130BCB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28130BCB0);
  }

  return result;
}

uint64_t sub_249DD7CF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21670, &qword_249DE0058);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id ClientContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ClientContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ClientContext(uint64_t a1)
{
  result = qword_28130BF60;
  if (!qword_28130BF60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_249DD7EC0(uint64_t a1)
{
  sub_249DD7F90(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_249DD7F90(uint64_t a1)
{
  if (!qword_28130BF70)
  {
    sub_249DDC6A8();
    v1 = sub_249DDCBB8();
    if (!v2)
    {
      atomic_store(v1, &qword_28130BF70);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_11()
{

  return swift_dynamicCast();
}

uint64_t sub_249DD8124()
{
  sub_249DDCC28();
  MEMORY[0x24C203240](60, 0xE100000000000000);
  sub_249DDCC78();
  MEMORY[0x24C203240](8236, 0xE200000000000000);
  MEMORY[0x24C203240](*(v0 + OBJC_IVAR___DIOneshotTimer_label), *(v0 + OBJC_IVAR___DIOneshotTimer_label + 8));
  MEMORY[0x24C203240](8236, 0xE200000000000000);
  sub_249DDC6A8();
  sub_249DD9BC8(&qword_27EF21758, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v1 = sub_249DDCCC8();
  MEMORY[0x24C203240](v1);

  MEMORY[0x24C203240](0xD000000000000012, 0x8000000249DE1F40);
  sub_249DDCA08();
  MEMORY[0x24C203240](0x696C64616544202CLL, 0xED0000203D20656ELL);
  sub_249DDC7C8();
  v2 = sub_249DDCCC8();
  MEMORY[0x24C203240](v2);

  return 0;
}

char *OneshotTimer.init(timeInterval:queue:identifier:label:timerFiredHandler:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5, uint64_t a6, double a7)
{
  v8 = v7;
  v95 = a6;
  v88 = a5;
  v80 = a4;
  v79 = a3;
  v96 = a1;
  v97 = a2;
  sub_249DDC768();
  OUTLINED_FUNCTION_10();
  v92 = v11;
  v93 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_3(v13 - v12);
  v91 = sub_249DDC7A8();
  OUTLINED_FUNCTION_10();
  v90 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_3(v17 - v16);
  v94 = sub_249DDC758();
  OUTLINED_FUNCTION_10();
  v82 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_3(v21 - v20);
  v78 = sub_249DDC7D8();
  OUTLINED_FUNCTION_10();
  v101 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x28223BE20](v25);
  v100 = &v77 - v26;
  sub_249DDC6E8();
  OUTLINED_FUNCTION_10();
  v98 = v27;
  v99 = v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x28223BE20](v29);
  v31 = &v77 - v30;
  v32 = sub_249DDCB28();
  OUTLINED_FUNCTION_10();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_5();
  v38 = v37 - v36;
  sub_249DD8C74();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_249DD9BC8(&qword_27EF21770, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21778, &qword_249DE0098);
  sub_249DBEED8(&qword_27EF21780, &qword_27EF21778, &qword_249DE0098);
  sub_249DDCBD8();
  v39 = sub_249DDCB38();
  (*(v34 + 8))(v38, v32);
  *&v8[OBJC_IVAR___DIOneshotTimer_timer] = v39;
  v40 = &v8[OBJC_IVAR___DIOneshotTimer_label];
  v41 = v80;
  *v40 = v79;
  v40[1] = v41;
  v42 = OBJC_IVAR___DIOneshotTimer_identifier;
  v43 = sub_249DDC6A8();
  v86 = *(v43 - 8);
  v44 = *(v86 + 16);
  v87 = v43;
  v44(&v8[v42], v97);
  *&v8[OBJC_IVAR___DIOneshotTimer_timeInterval] = a7;

  sub_249DDC6D8();
  (*(v99 + 32))(&v8[OBJC_IVAR___DIOneshotTimer_logger], v31, v98);
  sub_249DDC7B8();
  v45 = v77;
  sub_249DDC7F8();
  v46 = v101;
  v47 = v78;
  (*(v101 + 32))(&v8[OBJC_IVAR___DIOneshotTimer_deadline], v45, v78);
  v48 = type metadata accessor for OneshotTimer(0);
  v103.receiver = v8;
  v103.super_class = v48;
  v49 = objc_msgSendSuper2(&v103, sel_init);
  v50 = OBJC_IVAR___DIOneshotTimer_timer;
  ObjectType = swift_getObjectType();
  v52 = v46;
  v80 = *(v46 + 16);
  v80(v45, &v49[OBJC_IVAR___DIOneshotTimer_deadline], v47);
  v53 = v81;
  sub_249DD8D04(v81);
  v54 = v49;
  swift_unknownObjectRetain();
  MEMORY[0x24C203510](v45, v53, ObjectType, INFINITY);
  swift_unknownObjectRelease();
  (*(v82 + 8))(v53, v94);
  v55 = *(v52 + 8);
  v101 = v52 + 8;
  v94 = v55;
  v55(v45, v47);
  v82 = v50;
  swift_getObjectType();
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = swift_allocObject();
  v58 = v88;
  v57[2] = v56;
  v57[3] = v58;
  v57[4] = v95;
  aBlock[4] = sub_249DD8F20;
  aBlock[5] = v57;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249DBF358;
  aBlock[3] = &block_descriptor_9;
  v59 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v60 = v85;
  sub_249DDC788();
  v61 = v89;
  sub_249DD8F44();
  v62 = v84;
  sub_249DDCB58();
  _Block_release(v59);
  swift_unknownObjectRelease();
  (*(v92 + 8))(v61, v93);
  (*(v90 + 8))(v60, v91);
  v63 = v47;

  v64 = v83;
  (*(v99 + 16))(v83, &v54[OBJC_IVAR___DIOneshotTimer_logger], v98);
  v80(v62, v100, v47);
  v65 = v64;
  v66 = sub_249DDC6C8();
  v67 = sub_249DDCA78();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = OUTLINED_FUNCTION_37();
    *v68 = 138412546;
    *(v68 + 4) = v54;
    *v69 = v54;
    *(v68 + 12) = 2048;
    v70 = v54;
    v71 = sub_249DDC7C8();
    v72 = OUTLINED_FUNCTION_8_1();
    v73(v72);
    *(v68 + 14) = v71;
    _os_log_impl(&dword_249DA7000, v66, v67, "Timer created: %@, Now = %llu", v68, 0x16u);
    sub_249DD99C8(v69);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  else
  {
    v74 = OUTLINED_FUNCTION_8_1();
    v75(v74);
  }

  (*(v99 + 8))(v65, v98);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_249DDCB78();

  swift_unknownObjectRelease();
  (*(v86 + 8))(v97, v87);
  v94(v100, v63);
  return v54;
}

unint64_t sub_249DD8C74()
{
  result = qword_27EF21768;
  if (!qword_27EF21768)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF21768);
  }

  return result;
}

uint64_t type metadata accessor for OneshotTimer(uint64_t a1)
{
  result = qword_27EF21798;
  if (!qword_27EF21798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249DD8D04@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  v3 = sub_249DDC758();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_249DD8D7C(uint64_t a1, void (*a2)(uint64_t, uint64_t, char *, double))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (sub_249DD984C())
    {
    }

    else
    {
      v5 = v4;
      v6 = sub_249DDC6C8();
      v7 = sub_249DDCA78();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        *(v8 + 4) = v5;
        *v9 = v4;
        v10 = v5;
        _os_log_impl(&dword_249DA7000, v6, v7, "Timer fired: %@", v8, 0xCu);
        sub_249DD99C8(v9);
        MEMORY[0x24C203F30](v9, -1, -1);
        MEMORY[0x24C203F30](v8, -1, -1);
      }

      sub_249DD9634();
      v11 = *&v5[OBJC_IVAR___DIOneshotTimer_label];
      v12 = *&v5[OBJC_IVAR___DIOneshotTimer_label + 8];
      v13 = OBJC_IVAR___DIOneshotTimer_identifier;
      v14 = *&v5[OBJC_IVAR___DIOneshotTimer_timeInterval];

      a2(v11, v12, &v5[v13], v14);
    }
  }
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249DD8F44()
{
  sub_249DDC768();
  sub_249DD9BC8(&qword_28130BCE0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF217B0, &unk_249DDF300);
  sub_249DBEED8(&qword_28130BCD8, &qword_27EF217B0, &unk_249DDF300);
  return sub_249DDCBD8();
}

void sub_249DD9130(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_249DDC848();
  v8 = sub_249DDC678();
  (*(a5 + 16))(a5, v7, v8, a3);
}

id OneshotTimer.__deallocating_deinit()
{
  sub_249DDC6E8();
  OUTLINED_FUNCTION_10();
  v28 = v1;
  v29 = v2;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5();
  v27 = v4 - v3;
  v5 = sub_249DDC768();
  OUTLINED_FUNCTION_10();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_249DDC7A8();
  OUTLINED_FUNCTION_10();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  swift_getObjectType();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249DBF358;
  aBlock[3] = &block_descriptor_6;
  v19 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_249DDC788();
  sub_249DD8F44();
  sub_249DDCB58();
  _Block_release(v19);
  swift_unknownObjectRelease();
  (*(v7 + 8))(v11, v5);
  (*(v14 + 8))(v18, v12);
  sub_249DD9634();
  (*(v29 + 16))(v27, v0 + OBJC_IVAR___DIOneshotTimer_logger, v28);
  v20 = v0;
  v21 = sub_249DDC6C8();
  v22 = sub_249DDCA78();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = OUTLINED_FUNCTION_37();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_249DA7000, v21, v22, "Timer destroyed %@", v23, 0xCu);
    sub_249DD99C8(v24);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  (*(v29 + 8))(v27, v28);
  v30.receiver = v20;
  v30.super_class = type metadata accessor for OneshotTimer(0);
  return objc_msgSendSuper2(&v30, sel_dealloc);
}

void sub_249DD9634()
{
  v1 = v0;
  swift_getObjectType();
  if (sub_249DDCB48())
  {
    v2 = v0;
    v3 = sub_249DDC6C8();
    v4 = sub_249DDCA48();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = OUTLINED_FUNCTION_37();
      *v5 = 138412290;
      *(v5 + 4) = v2;
      *v6 = v2;
      v7 = v2;
      _os_log_impl(&dword_249DA7000, v3, v4, "Timer is already canceled %@", v5, 0xCu);
      sub_249DD99C8(v6);
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_20();
    }
  }

  sub_249DDCB68();
  v8 = v1;
  oslog = sub_249DDC6C8();
  v9 = sub_249DDCA78();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = OUTLINED_FUNCTION_37();
    *v10 = 138412290;
    *(v10 + 4) = v8;
    *v11 = v8;
    v12 = v8;
    _os_log_impl(&dword_249DA7000, oslog, v9, "Timer cancelled %@", v10, 0xCu);
    sub_249DD99C8(v11);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }
}

uint64_t sub_249DD984C()
{
  swift_getObjectType();
  v1 = sub_249DDCB48();
  v2 = v0;
  v3 = sub_249DDC6C8();
  v4 = sub_249DDCA78();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_37();
    *v5 = 67109378;
    *(v5 + 4) = v1 & 1;
    *(v5 + 8) = 2112;
    *(v5 + 10) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_249DA7000, v3, v4, "Timer isCancelled: %{BOOL}d, %@", v5, 0x12u);
    sub_249DD99C8(v6);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  return v1 & 1;
}

id OneshotTimer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_249DD99C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF211C0, &qword_249DDF140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249DD9A38(uint64_t a1)
{
  result = sub_249DDC6A8();
  if (v2 <= 0x3F)
  {
    result = sub_249DDC7D8();
    if (v3 <= 0x3F)
    {
      result = sub_249DDC6E8();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_249DD9BC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ToneProvider.ongoingToneURL.getter()
{
  if (qword_27EF20EB0 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_27EF20EB0);
  }

  v0 = sub_249DD9E44(0xD000000000000011, 0x8000000249DE1FE0, 7758199, 0xE300000000000000, qword_27EF217B8);
  if (v0)
  {
    v1 = v0;
    sub_249DDC5E8();
  }

  sub_249DDC5F8();
  v2 = OUTLINED_FUNCTION_1_6();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_249DD9D40(uint64_t a1, uint64_t a2)
{
  if (qword_27EF20EB0 != -1)
  {
    OUTLINED_FUNCTION_0_12(&qword_27EF20EB0);
  }

  v4 = sub_249DD9E44(a1, a2, 7758199, 0xE300000000000000, qword_27EF217B8);
  if (v4)
  {
    v5 = v4;
    sub_249DDC5E8();
  }

  sub_249DDC5F8();
  v6 = OUTLINED_FUNCTION_1_6();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

id sub_249DD9DEC()
{
  sub_249DD9F84();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EF217B8 = result;
  return result;
}

id sub_249DD9E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_249DDC848();

  v7 = sub_249DDC848();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

_BYTE *storeEnumTagSinglePayload for ToneProvider(_BYTE *result, int a2, int a3)
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

unint64_t sub_249DD9F84()
{
  result = qword_27EF217C0;
  if (!qword_27EF217C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF217C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_12(uint64_t a1)
{

  return swift_once();
}

id sub_249DD9FFC()
{
  if (qword_28130BD08 != -1)
  {
    swift_once();
  }

  v0 = qword_28130BD10;
  v1 = *algn_28130BD18;
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  result = sub_249DDC3DC(v0, v1);
  qword_28130BF00 = result;
  return result;
}

uint64_t dropInUserDefaults.getter()
{
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v0 = qword_28130BF00;
  v1 = qword_28130BF00;
  return v0;
}

id Default.userDefaults.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t Default.key.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Default.localizedDescription.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

void sub_249DDA1C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = swift_getWitnessTable();
  v4 = swift_getWitnessTable();

  UserDefaultsAccessible<>.description.getter(a1, WitnessTable, v3, v4);
}

id sub_249DDA264()
{
  qword_27EF217E0 = 0x407E000000000000;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_27EF217C8 = qword_28130BF00;
  unk_27EF217D0 = 0xD00000000000001ALL;
  qword_27EF217D8 = 0x8000000249DE29F0;
  qword_27EF217E8 = 0xD000000000000028;
  unk_27EF217F0 = 0x8000000249DE2A10;

  return v1;
}

uint64_t static Defaults.dropInAvailabilityDuration.getter()
{
  if (qword_27EF20EC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_13(&qword_27EF217C8);
}

id sub_249DDA38C()
{
  qword_27EF21810 = 0x403E000000000000;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_27EF217F8 = qword_28130BF00;
  unk_27EF21800 = 0xD000000000000022;
  qword_27EF21808 = 0x8000000249DE2960;
  qword_27EF21818 = 0xD000000000000055;
  unk_27EF21820 = 0x8000000249DE2990;

  return v1;
}

uint64_t static Defaults.dropInSessionAutoAnswerWaitTimeout.getter()
{
  if (qword_27EF20EC8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_13(&qword_27EF217F8);
}

id sub_249DDA4B4()
{
  qword_27EF21840 = 0x404E000000000000;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_27EF21828 = qword_28130BF00;
  unk_27EF21830 = 0xD000000000000019;
  qword_27EF21838 = 0x8000000249DE28F0;
  qword_27EF21848 = 0xD000000000000049;
  unk_27EF21850 = 0x8000000249DE2910;

  return v1;
}

uint64_t static Defaults.dropInSessionStartTimeout.getter()
{
  if (qword_27EF20ED0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_13(&qword_27EF21828);
}

id sub_249DDA5DC()
{
  qword_27EF21870 = 0x407E000000000000;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_27EF21858 = qword_28130BF00;
  unk_27EF21860 = 0xD000000000000017;
  qword_27EF21868 = 0x8000000249DE28A0;
  qword_27EF21878 = 0xD000000000000026;
  unk_27EF21880 = 0x8000000249DE28C0;

  return v1;
}

uint64_t static Defaults.pseudonymExpiryDuration.getter()
{
  if (qword_27EF20ED8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_13(&qword_27EF21858);
}

id sub_249DDA704()
{
  qword_27EF218A0 = 0x40AC200000000000;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_27EF21888 = qword_28130BF00;
  unk_27EF21890 = 0xD000000000000023;
  qword_27EF21898 = 0x8000000249DE2830;
  qword_27EF218A8 = 0xD000000000000033;
  unk_27EF218B0 = 0x8000000249DE2860;

  return v1;
}

uint64_t static Defaults.pregeneratedPseudonymExpiryDuration.getter()
{
  if (qword_27EF20EE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_13(&qword_27EF21888);
}

id sub_249DDA830()
{
  qword_27EF218D0 = 0x4082C00000000000;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_27EF218B8 = qword_28130BF00;
  unk_27EF218C0 = 0xD000000000000023;
  qword_27EF218C8 = 0x8000000249DE2730;
  qword_27EF218D8 = 0xD0000000000000C7;
  unk_27EF218E0 = 0x8000000249DE2760;

  return v1;
}

uint64_t static Defaults.pregeneratedPseudonymRenewThreshold.getter()
{
  if (qword_27EF20EE8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_13(&qword_27EF218B8);
}

id sub_249DDA95C()
{
  qword_27EF21900 = 0x407DF00000000000;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_27EF218E8 = qword_28130BF00;
  unk_27EF218F0 = 0xD000000000000018;
  qword_27EF218F8 = 0x8000000249DE26E0;
  qword_27EF21908 = 0xD000000000000027;
  unk_27EF21910 = 0x8000000249DE2700;

  return v1;
}

uint64_t static Defaults.dropInSessionMaxDuration.getter()
{
  if (qword_27EF20EF0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_13(&qword_27EF218E8);
}

id sub_249DDAA88()
{
  qword_27EF21930 = 0x404E000000000000;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_27EF21918 = qword_28130BF00;
  unk_27EF21920 = 0xD000000000000013;
  qword_27EF21928 = 0x8000000249DE2690;
  qword_27EF21938 = 0xD00000000000002FLL;
  unk_27EF21940 = 0x8000000249DE26B0;

  return v1;
}

uint64_t static Defaults.idsSendEventTimeout.getter()
{
  if (qword_27EF20EF8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_13(&qword_27EF21918);
}

id sub_249DDABB0()
{
  qword_27EF21960 = 0x404E000000000000;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_27EF21948 = qword_28130BF00;
  unk_27EF21950 = 0xD000000000000015;
  qword_27EF21958 = 0x8000000249DE2640;
  qword_27EF21968 = 0xD000000000000027;
  unk_27EF21970 = 0x8000000249DE2660;

  return v1;
}

uint64_t static Defaults.idsSendRequestTimeout.getter()
{
  if (qword_27EF20F00 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_13(&qword_27EF21948);
}

id sub_249DDACD8()
{
  qword_27EF21990 = 0x404E000000000000;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_27EF21978 = qword_28130BF00;
  unk_27EF21980 = 0xD000000000000016;
  qword_27EF21988 = 0x8000000249DE25F0;
  qword_27EF21998 = 0xD000000000000028;
  unk_27EF219A0 = 0x8000000249DE2610;

  return v1;
}

uint64_t static Defaults.idsSendResponseTimeout.getter()
{
  if (qword_27EF20F08 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_13(&qword_27EF21978);
}

id sub_249DDAE00()
{
  qword_27EF219C0 = 0x404E000000000000;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_27EF219A8 = qword_28130BF00;
  unk_27EF219B0 = 0xD000000000000016;
  qword_27EF219B8 = 0x8000000249DE2580;
  qword_27EF219C8 = 0xD000000000000045;
  unk_27EF219D0 = 0x8000000249DE25A0;

  return v1;
}

uint64_t static Defaults.idsResponseWaitTimeout.getter()
{
  if (qword_27EF20F10 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_13(&qword_27EF219A8);
}

id sub_249DDAF28()
{
  qword_27EF219F0 = 0x404E000000000000;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_27EF219D8 = qword_28130BF00;
  unk_27EF219E0 = 0xD000000000000017;
  qword_27EF219E8 = 0x8000000249DE2520;
  qword_27EF219F8 = 0xD000000000000033;
  unk_27EF21A00 = 0x8000000249DE2540;

  return v1;
}

uint64_t static Defaults.rapportSendEventTimeout.getter()
{
  if (qword_27EF20F18 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_13(&qword_27EF219D8);
}

id sub_249DDB050()
{
  qword_27EF21A20 = 0x404E000000000000;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_27EF21A08 = qword_28130BF00;
  unk_27EF21A10 = 0xD000000000000028;
  qword_27EF21A18 = 0x8000000249DE24B0;
  qword_27EF21A28 = 0xD00000000000003DLL;
  unk_27EF21A30 = 0x8000000249DE24E0;

  return v1;
}

uint64_t static Defaults.rapportSendRequestAndResponseWaitTimeout.getter()
{
  if (qword_27EF20F20 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_13(&qword_27EF21A08);
}

id sub_249DDB17C()
{
  qword_27EF21A50 = 0x404E000000000000;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_27EF21A38 = qword_28130BF00;
  unk_27EF21A40 = 0xD00000000000001ALL;
  qword_27EF21A48 = 0x8000000249DE2460;
  qword_27EF21A58 = 0xD00000000000002CLL;
  unk_27EF21A60 = 0x8000000249DE2480;

  return v1;
}

uint64_t static Defaults.rapportSendResponseTimeout.getter()
{
  if (qword_27EF20F28 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_13(&qword_27EF21A38);
}

id sub_249DDB2A4()
{
  qword_27EF21A80 = 0x403E000000000000;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_27EF21A68 = qword_28130BF00;
  unk_27EF21A70 = 0xD000000000000025;
  qword_27EF21A78 = 0x8000000249DE23F0;
  qword_27EF21A88 = 0xD00000000000003DLL;
  unk_27EF21A90 = 0x8000000249DE2420;

  return v1;
}

uint64_t static Defaults.startDropInRequestResponseWaitTimeout.getter()
{
  if (qword_27EF20F30 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_13(&qword_27EF21A68);
}

id sub_249DDB3CC()
{
  byte_27EF21AB0 = 0;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_27EF21A98 = qword_28130BF00;
  unk_27EF21AA0 = 0xD000000000000014;
  qword_27EF21AA8 = 0x8000000249DE2390;
  qword_27EF21AB8 = 0xD000000000000037;
  unk_27EF21AC0 = 0x8000000249DE23B0;

  return v1;
}

uint64_t static Defaults.dropInAnytimeEnabled.getter()
{
  if (qword_27EF20F38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_7(&qword_27EF21A98);
}

id sub_249DDB4F4()
{
  byte_27EF21AE0 = 0;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_27EF21AC8 = qword_28130BF00;
  unk_27EF21AD0 = 0xD000000000000016;
  qword_27EF21AD8 = 0x8000000249DE2320;
  qword_27EF21AE8 = 0xD000000000000045;
  unk_27EF21AF0 = 0x8000000249DE2340;

  return v1;
}

uint64_t static Defaults.multiUserDropInEnabled.getter()
{
  if (qword_27EF20F40 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_7(&qword_27EF21AC8);
}

id sub_249DDB618()
{
  byte_28130BDD8 = 0;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_28130BDC0 = qword_28130BF00;
  *algn_28130BDC8 = 0xD000000000000023;
  qword_28130BDD0 = 0x8000000249DE22B0;
  qword_28130BDE0 = 0xD000000000000030;
  unk_28130BDE8 = 0x8000000249DE22E0;

  return v1;
}

uint64_t static Defaults.forceDropInAccessAllowedForAllUsers.getter()
{
  if (qword_28130BDB8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_7(&qword_28130BDC0);
}

id sub_249DDB73C()
{
  qword_28130BE10 = 0x403E000000000000;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_28130BDF8 = qword_28130BF00;
  unk_28130BE00 = 0xD00000000000002CLL;
  qword_28130BE08 = 0x8000000249DE2210;
  qword_28130BE18 = 0xD00000000000006ELL;
  unk_28130BE20 = 0x8000000249DE2240;

  return v1;
}

uint64_t static Defaults.dropInAvailableBroadcastThrottleTimeInterval.getter()
{
  if (qword_28130BDF0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_13(&qword_28130BDF8);
}

id sub_249DDB868()
{
  qword_28130BD98 = 0x4051800000000000;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_28130BD80 = qword_28130BF00;
  *algn_28130BD88 = 0xD000000000000014;
  qword_28130BD90 = 0x8000000249DE2190;
  qword_28130BDA0 = 0xD000000000000059;
  unk_28130BDA8 = 0x8000000249DE21B0;

  return v1;
}

uint64_t static Defaults.messageDedupeTimeout.getter()
{
  if (qword_28130BD78 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_13(&qword_28130BD80);
}

id sub_249DDB994()
{
  byte_28130BD60 = 1;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_28130BD48 = qword_28130BF00;
  unk_28130BD50 = 0xD000000000000026;
  qword_28130BD58 = 0x8000000249DE20D0;
  qword_28130BD68 = 0xD00000000000008BLL;
  unk_28130BD70 = 0x8000000249DE2100;

  return v1;
}

uint64_t static Defaults.specifyBundleIDForConversationProvider.getter()
{
  if (qword_28130BD40 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_7(&qword_28130BD48);
}

id sub_249DDBABC()
{
  dword_27EF21B10 = 1059145646;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  *&xmmword_27EF21AF8 = qword_28130BF00;
  *(&xmmword_27EF21AF8 + 1) = 0x6C6143656E6F6870;
  qword_27EF21B08 = 0xEF656D756C6F566CLL;
  qword_27EF21B18 = 0xD000000000000045;
  unk_27EF21B20 = 0x8000000249DE2080;

  return v1;
}

uint64_t static Defaults.phoneCallVolume.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EF20F48 != -1)
  {
    swift_once();
  }

  v2 = qword_27EF21B08;
  v3 = dword_27EF21B10;
  v4 = qword_27EF21B18;
  v5 = unk_27EF21B20;
  v6 = xmmword_27EF21AF8;
  *a1 = xmmword_27EF21AF8;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  v7 = v6;
}

id sub_249DDBC18()
{
  byte_27EF21B40 = 0;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_27EF21B28 = qword_28130BF00;
  strcpy(byte_27EF21B30, "mockAudioPower");
  HIBYTE(qword_27EF21B38) = -18;
  qword_27EF21B48 = 0xD00000000000001DLL;
  unk_27EF21B50 = 0x8000000249DE2060;

  return v1;
}

uint64_t static Defaults.mockAudioPower.getter()
{
  if (qword_27EF20F50 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_7(&qword_27EF21B28);
}

id sub_249DDBD48()
{
  byte_27EF21B70 = 1;
  if (qword_28130BEF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28130BF00;
  qword_27EF21B58 = qword_28130BF00;
  unk_27EF21B60 = 0xD000000000000019;
  qword_27EF21B68 = 0x8000000249DE2000;
  qword_27EF21B78 = 0xD000000000000034;
  unk_27EF21B80 = 0x8000000249DE2020;

  return v1;
}

uint64_t static Defaults.launchCheckInLiveActivity.getter()
{
  if (qword_27EF20F58 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_7(&qword_27EF21B58);
}

uint64_t sub_249DDBE70(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_249DDBEB4(uint64_t a1)
{
  sub_249DDC294(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_249DDBF44(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    v17 = (result + 15) & 0xFFFFFFFFFFFFFFF8;
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((v17 + v7 + 16) & ~v7, v6, v4);
    }

    else
    {
      v18 = *(v17 + 8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 24) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_249DDC094(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v18 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v8 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((v18 + v10 + 16) & ~v10, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *v18 = a2 & 0x7FFFFFFF;
            v18[1] = 0;
          }

          else
          {
            v18[1] = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_249DDC294(uint64_t a1)
{
  if (!qword_28130BCC8)
  {
    sub_249DDC2EC();
    v1 = sub_249DDCBB8();
    if (!v2)
    {
      atomic_store(v1, &qword_28130BCC8);
    }
  }
}

unint64_t sub_249DDC2EC()
{
  result = qword_28130BCD0;
  if (!qword_28130BCD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28130BCD0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Defaults(_BYTE *result, int a2, int a3)
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

id sub_249DDC3DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_249DDC848();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

id OUTLINED_FUNCTION_0_13@<X0>(__int128 *a1@<X8>)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *a1;
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;

  return v7;
}

id OUTLINED_FUNCTION_1_7@<X0>(__int128 *a1@<X8>)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 24);
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *a1;
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;

  return v7;
}