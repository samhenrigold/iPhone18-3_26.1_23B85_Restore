unint64_t sub_249E04B50()
{
  result = qword_27EF235E8;
  if (!qword_27EF235E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF235E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_10()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x24C205870);
}

void OUTLINED_FUNCTION_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_13_0(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_15()
{

  JUMPOUT(0x24C205870);
}

uint64_t OUTLINED_FUNCTION_16()
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_29()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_39()
{

  return sub_249E7B3A8();
}

uint64_t OUTLINED_FUNCTION_40(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_41()
{
}

uint64_t OUTLINED_FUNCTION_42(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_249E3A958(a1, a2, &a9);
}

BOOL OUTLINED_FUNCTION_43()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_44()
{
}

void OUTLINED_FUNCTION_52(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_53()
{

  return sub_249E7AC78();
}

uint64_t OUTLINED_FUNCTION_54()
{

  return sub_249E7AC78();
}

void OUTLINED_FUNCTION_55()
{
  v2 = *(v0 + 120);
}

uint64_t sub_249E05000(uint64_t a1, uint64_t a2)
{
  if (sub_249E7A5F8())
  {
    started = type metadata accessor for StartDropInRequest(0);
    v5 = *(a1 + *(started + 20)) ^ *(a2 + *(started + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_249E05058()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7DBA0;
  *(inited + 32) = 0x6469656D6F68;
  *(inited + 40) = 0xE600000000000000;
  v2 = sub_249E7A5D8();
  v3 = MEMORY[0x277D837D0];
  *(inited + 48) = v2;
  *(inited + 56) = v4;
  *(inited + 72) = v3;
  *(inited + 80) = 0x746E6F6973736573;
  *(inited + 88) = 0xEB00000000657079;
  v5 = *(v0 + *(type metadata accessor for StartDropInRequest(0) + 20));
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 96) = v5;
  return sub_249E7AA08();
}

uint64_t sub_249E05140(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249E05158@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_249E7A628();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_249E051EC(uint64_t a1)
{
  result = sub_249E052C0(&qword_27EF235F0, &unk_249E7DBE0);
  *(a1 + 32) = result;
  return result;
}

uint64_t type metadata accessor for StartDropInRequest(uint64_t a1)
{
  result = qword_28130E6C8;
  if (!qword_28130E6C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E0527C(uint64_t a1)
{
  result = sub_249E052C0(&qword_27EF235F8, &unk_249E7DC18);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_249E052C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StartDropInRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249E05304(uint64_t a1)
{
  result = sub_249E052C0(&qword_27EF235F8, &unk_249E7DC18);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_249E05348(char a1)
{
  if (a1)
  {
    return 0x696E492072657355;
  }

  else
  {
    return 0x6E4120646E756F53;
  }
}

uint64_t sub_249E053C0(uint64_t a1)
{
  result = sub_249E7A628();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConversationTimer.Mode(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for StartDropInRequest.DropInSessionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_249E055B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_249E05140(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_249E055E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_249E05138(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_249E05618()
{
  result = qword_27EF23600[0];
  if (!qword_27EF23600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF23600);
  }

  return result;
}

uint64_t sub_249E0566C()
{
  result = sub_249E7A848();
  qword_28130E6F8 = result;
  unk_28130E700 = v1;
  return result;
}

uint64_t sub_249E05690()
{
  result = sub_249E7A878();
  qword_27EF291D0 = result;
  *algn_27EF291D8 = v1;
  return result;
}

uint64_t sub_249E056B4()
{
  result = sub_249E7A898();
  qword_27EF291E0 = result;
  *algn_27EF291E8 = v1;
  return result;
}

id InternalDefault.userDefaults.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t InternalDefault.key.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t InternalDefault.localizedDescription.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t (*sub_249E0578C(uint64_t *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_249E7A708();
  return sub_249E05800;
}

void sub_249E05800(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_249E0584C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28215B820](a1, WitnessTable);
}

uint64_t sub_249E058A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_249E058FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_249E0593C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_249E059D0()
{
  v1 = v0;
  oslog = sub_249E7A698();
  v2 = sub_249E7AE28();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23FA0, &unk_249E7DF00);
    v5 = sub_249E7AAC8();
    v7 = sub_249E3A958(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_249DEE000, oslog, v2, "Did Set Host Pseudonym: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C205870](v4, -1, -1);
    MEMORY[0x24C205870](v3, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_249E05B64(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_249E05B88, 0, 0);
}

uint64_t sub_249E05B88()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_249E05C8C;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000028, 0x8000000249E82400, sub_249E08870, v4, v6);
}

uint64_t sub_249E05C8C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_249E05DC0;
  }

  else
  {

    v2 = sub_249E05DA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_249E05DC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_249E05E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23690, &qword_249E7DF10);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  sub_249E05FF8(a3, a4, sub_249E0887C, v12);
}

uint64_t sub_249E05F84(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23690, &qword_249E7DF10);
    return sub_249E7AC38();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23690, &qword_249E7DF10);
    return sub_249E7AC48();
  }
}

void sub_249E05FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_15_0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v29 = v11;
  v12 = sub_249E7A928();
  OUTLINED_FUNCTION_3();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_4();
  v30 = sub_249E7A958();
  OUTLINED_FUNCTION_3();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v21 = v20 - v19;
  OUTLINED_FUNCTION_22();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = v8;
  v23[3] = v6;
  v23[4] = v22;
  v23[5] = v29;
  v23[6] = v10;
  OUTLINED_FUNCTION_1_3(v23);
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v31[2] = v24;
  v31[3] = &block_descriptor_45;
  v25 = _Block_copy(v31);

  sub_249E7A938();
  OUTLINED_FUNCTION_5_3();
  sub_249E08754(v26, v27, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  sub_249E0879C();
  OUTLINED_FUNCTION_7_2();
  sub_249E7B018();
  v28 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x24C204A90](v28);
  _Block_release(v25);
  (*(v14 + 8))(v4, v12);
  (*(v17 + 8))(v21, v30);

  OUTLINED_FUNCTION_6_1();
}

void sub_249E06264(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_249E06310(a4, a5);

    (a1)(0);
  }

  else
  {
    a1();
  }
}

void sub_249E06310(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_249E7A998();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v11 = v10;
  LOBYTE(v10) = sub_249E7A9B8();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (sub_249E6E2E4())
    {
      v12 = sub_249E7A698();
      v13 = sub_249E7AE08();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_249DEE000, v12, v13, "Already have an Active Conversation", v14, 2u);
        MEMORY[0x24C205870](v14, -1, -1);
      }

      sub_249E0881C();
      swift_allocError();
      *v15 = 4;
      swift_willThrow();
    }

    else
    {
      v16 = (v3 + OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_hostPseudonym);
      *v16 = a1;
      v16[1] = a2;

      sub_249E059D0();
      v17 = OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_logger;

      v18 = sub_249E7A698();
      v19 = sub_249E7AE28();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v36[1] = v17;
        v22 = v21;
        v37 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_249E3A958(a1, a2, &v37);
        _os_log_impl(&dword_249DEE000, v18, v19, "Checking conversations for member with pseudonym %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x24C205870](v22, -1, -1);
        MEMORY[0x24C205870](v20, -1, -1);
      }

      v23 = [*(v3 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter) conversationManager];
      sub_249E2D8F4(a1, a2);
      v25 = v24;

      if (v25)
      {
        v26 = v25;
        v27 = sub_249E7A698();
        v28 = sub_249E7AE28();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138412290;
          *(v29 + 4) = v26;
          *v30 = v25;
          v31 = v26;
          _os_log_impl(&dword_249DEE000, v27, v28, "Found and joining conversation %@", v29, 0xCu);
          sub_249DF4A68(v30);
          MEMORY[0x24C205870](v30, -1, -1);
          MEMORY[0x24C205870](v29, -1, -1);
        }

        sub_249E07EB4(v26);
      }

      else
      {

        v32 = sub_249E7A698();
        v33 = sub_249E7AE28();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v37 = v35;
          *v34 = 136315138;
          *(v34 + 4) = sub_249E3A958(a1, a2, &v37);
          _os_log_impl(&dword_249DEE000, v32, v33, "Did not find conversation with initiator pseudonym %s. Starting timer and waiting for conversation to appear.", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
          MEMORY[0x24C205870](v35, -1, -1);
          MEMORY[0x24C205870](v34, -1, -1);
        }

        sub_249E6F564();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_249E067EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_15_0();
  v7 = v6;
  v8 = sub_249E7A928();
  OUTLINED_FUNCTION_3();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_4();
  v12 = sub_249E7A958();
  OUTLINED_FUNCTION_3();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_22();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v7;
  OUTLINED_FUNCTION_1_3(v20);
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v26[2] = v21;
  v26[3] = &block_descriptor_38;
  v22 = _Block_copy(v26);

  sub_249E7A938();
  OUTLINED_FUNCTION_5_3();
  sub_249E08754(v23, v24, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  sub_249E0879C();
  OUTLINED_FUNCTION_7_2();
  sub_249E7B018();
  v25 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x24C204A90](v25);
  _Block_release(v22);
  (*(v10 + 8))(v5, v8);
  (*(v14 + 8))(v18, v12);

  OUTLINED_FUNCTION_6_1();
}

void sub_249E06A38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_249E06D54(a2);
  }
}

void sub_249E06A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_15_0();
  v8 = v7;
  OUTLINED_FUNCTION_9_1();
  v9 = sub_249E7A928();
  OUTLINED_FUNCTION_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_4();
  v13 = sub_249E7A958();
  OUTLINED_FUNCTION_3();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_22();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v5;
  *(v21 + 32) = v8;
  OUTLINED_FUNCTION_1_3(v21);
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v28[2] = v22;
  v28[3] = &block_descriptor_1;
  v23 = _Block_copy(v28);

  v24 = v5;
  sub_249E7A938();
  OUTLINED_FUNCTION_5_3();
  sub_249E08754(v25, v26, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  sub_249E0879C();
  OUTLINED_FUNCTION_7_2();
  sub_249E7B018();
  v27 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x24C204A90](v27);
  _Block_release(v23);
  (*(v11 + 8))(v6, v9);
  (*(v15 + 8))(v19, v13);

  OUTLINED_FUNCTION_6_1();
}

void sub_249E06CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_249E06E74(a2, a3, v6, v7, v8);
  }
}

void sub_249E06D54(uint64_t a1)
{
  v3 = sub_249E7A998();
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_4();
  v7 = *(v1 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  *v2 = v7;
  (*(v5 + 104))(v2, *MEMORY[0x277D85200], v3);
  v8 = v7;
  LOBYTE(v7) = sub_249E7A9B8();
  (*(v5 + 8))(v2, v3);
  if (v7)
  {
    v9 = (v1 + OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_hostPseudonym);
    *v9 = 0;
    v9[1] = 0;

    sub_249E059D0();
    sub_249E6D76C();
  }

  else
  {
    __break(1u);
  }
}

void sub_249E06E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_15_0();
  v8 = v7;
  OUTLINED_FUNCTION_9_1();
  v9 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  v16 = sub_249E7A998();
  OUTLINED_FUNCTION_3();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_4();
  v20 = *&v5[OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue];
  *v6 = v20;
  (*(v18 + 104))(v6, *MEMORY[0x277D85200], v16);
  v21 = v20;
  LOBYTE(v20) = sub_249E7A9B8();
  (*(v18 + 8))(v6, v16);
  if (v20)
  {
    v36 = v11;
    v22 = v5;
    v23 = sub_249E7A698();
    v24 = sub_249E7AE28();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v25 = 136315650;
      v27 = [v22 UUID];
      sub_249E7A608();

      sub_249E08754(&qword_28130D350, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v28 = sub_249E7B2D8();
      v30 = v29;
      (*(v36 + 8))(v15, v9);
      v31 = sub_249E3A958(v28, v30, &v37);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2080;
      v32 = sub_249E6DA94(v8);
      v34 = sub_249E3A958(v32, v33, &v37);

      *(v25 + 14) = v34;
      *(v25 + 22) = 2112;
      *(v25 + 24) = v22;
      *v26 = v22;
      v35 = v22;
      _os_log_impl(&dword_249DEE000, v23, v24, "End conversation: %s with reason: %s \n%@", v25, 0x20u);
      sub_249DF4A68(v26);
      OUTLINED_FUNCTION_1();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    sub_249E6DB74();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_249E071C8()
{

  v1 = OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_logger;
  sub_249E7A6B8();
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

id sub_249E07238()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallCenterManagerClient(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CallCenterManagerClient(uint64_t a1)
{
  result = qword_28130D6A8;
  if (!qword_28130D6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E07338(uint64_t a1)
{
  result = sub_249E7A6B8();
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

void sub_249E073D4(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = OUTLINED_FUNCTION_9_1();
  v24.receiver = v2;
  v24.super_class = type metadata accessor for CallCenterManagerClient(v5);
  objc_msgSendSuper2(&v24, sel_conversationManager_activeRemoteParticipantsChangedForConversation_, v2, a2);
  sub_249E6EE20();
  if (v6)
  {
    v7 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_someoneJoined;
    if (*(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_someoneJoined))
    {
      goto LABEL_7;
    }

    v8 = [a2 activeRemoteParticipants];
    OUTLINED_FUNCTION_9_1();
    sub_249E0861C();
    OUTLINED_FUNCTION_4_4();
    sub_249E08754(v9, v10, MEMORY[0x277D85378]);
    v11 = sub_249E7AD58();

    v2 = sub_249E075F8(v11);

    if (!v2 && [a2 state] == 3)
    {
      v3[v7] = 1;
      v2 = v3;
      sub_249E71F48();
    }

    if (v3[v7] == 1)
    {
LABEL_7:
      v12 = [a2 activeRemoteParticipants];
      OUTLINED_FUNCTION_9_1();
      sub_249E0861C();
      OUTLINED_FUNCTION_4_4();
      sub_249E08754(v13, v14, MEMORY[0x277D85378]);
      v15 = sub_249E7AD58();

      sub_249E07638(v15);
      v17 = v16;

      if (v17)
      {
      }

      else
      {
        v18 = sub_249E7A698();
        v19 = sub_249E7AE28();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = OUTLINED_FUNCTION_9();
          *v20 = 0;
          _os_log_impl(&dword_249DEE000, v18, v19, "Conversation Initiator is no longer on the call. Ending the Conversation.", v20, 2u);
          OUTLINED_FUNCTION_1();
        }

        sub_249E06E74(a2, 2, v21, v22, v23);
      }
    }
  }
}

BOOL sub_249E075F8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_249E7B068();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

void sub_249E07638(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_249E7B058();
    sub_249E0861C();
    sub_249E08754(&qword_28130D1C0, sub_249E0861C, MEMORY[0x277D85378]);
    sub_249E7AD88();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v18 = v3;
  v9 = (v3 + 64) >> 6;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v10 = v4;
  v11 = v5;
  v12 = v4;
  if (v5)
  {
LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (v14)
    {
      do
      {
        v16 = [v14 handle];
        v17 = sub_249E2DB48();

        if (v17)
        {
          break;
        }

        v4 = v12;
        v5 = v13;
        if ((v1 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v15 = sub_249E7B088();
        if (!v15)
        {
          break;
        }

        v19 = v15;
        sub_249E0861C();
        swift_dynamicCast();
        v14 = v20;
        v12 = v4;
        v13 = v5;
      }

      while (v20);
    }

LABEL_19:
    sub_249E08728(v1);
  }

  else
  {
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_19;
      }

      v11 = *(v2 + 8 * v12);
      ++v10;
      if (v11)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_249E078D4(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_9_1();
  v44.receiver = v2;
  v44.super_class = type metadata accessor for CallCenterManagerClient(v4);
  objc_msgSendSuper2(&v44, sel_conversationManager_stateChangedForConversation_, v2, a2);
  if ((sub_249E2D838() & 1) == 0)
  {
    v14 = sub_249E7A698();
    v15 = sub_249E7AE28();
    if (!os_log_type_enabled(v14, v15))
    {
LABEL_13:

      return;
    }

    v16 = OUTLINED_FUNCTION_9();
    *v16 = 0;
    v17 = "Ignoring Conversation not for Drop In Provider";
LABEL_12:
    _os_log_impl(&dword_249DEE000, v14, v15, v17, v16, 2u);
    OUTLINED_FUNCTION_1();
    goto LABEL_13;
  }

  switch([a2 state])
  {
    case 0uLL:
      v5 = *&v2[OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_hostPseudonym + 8];
      if (!v5)
      {
        v14 = sub_249E7A698();
        v15 = sub_249E7AE08();
        if (!os_log_type_enabled(v14, v15))
        {
          goto LABEL_13;
        }

        v16 = OUTLINED_FUNCTION_9();
        *v16 = 0;
        v17 = "Remote Member Pseudonym is nil";
        goto LABEL_12;
      }

      v6 = *&v2[OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_hostPseudonym];

      v7 = [a2 initiator];
      v8 = [v7 value];
      v9 = sub_249E7AAA8();
      v11 = v10;

      if (v9 == v6 && v5 == v11)
      {
        goto LABEL_32;
      }

      v13 = OUTLINED_FUNCTION_16_0(v9);

      if (v13)
      {
        goto LABEL_33;
      }

      v30 = sub_249E086C4(v7);
      if (!v31)
      {
        goto LABEL_30;
      }

      if (v30 == v6 && v31 == v5)
      {
LABEL_32:

LABEL_33:

        v39 = sub_249E7A698();
        v40 = sub_249E7AE28();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = OUTLINED_FUNCTION_9();
          *v41 = 0;
          _os_log_impl(&dword_249DEE000, v39, v40, "Received new conversation in 'waiting' state. Cleaning up any active conversation.", v41, 2u);
          OUTLINED_FUNCTION_1();
        }

        sub_249E06D54(0);
        sub_249E07EB4(a2);

        goto LABEL_36;
      }

      v33 = OUTLINED_FUNCTION_16_0(v30);

      if (v33)
      {
        goto LABEL_33;
      }

LABEL_30:

      v34 = sub_249E7A698();
      v35 = sub_249E7AE08();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v43 = v37;
        *v36 = 136315138;
        v38 = sub_249E3A958(v6, v5, &v43);

        *(v36 + 4) = v38;
        _os_log_impl(&dword_249DEE000, v34, v35, "Conversation does not contain initiator with pseudonym %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_1();
      }

      else
      {
      }

      return;
    case 2uLL:
      v25 = OUTLINED_FUNCTION_13_1();
      sub_249E6E7C0(v25);
      goto LABEL_36;
    case 3uLL:
      OUTLINED_FUNCTION_13_1();
      sub_249E6EE20();
      if ((v18 & 1) == 0)
      {
        return;
      }

      v19 = [a2 activeRemoteParticipants];
      OUTLINED_FUNCTION_9_1();
      sub_249E0861C();
      OUTLINED_FUNCTION_4_4();
      sub_249E08754(v20, v21, MEMORY[0x277D85378]);
      v22 = sub_249E7AD58();

      sub_249E07638(v22);
      v24 = v23;

      if (v24)
      {
        sub_249E6F400(v24);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        OUTLINED_FUNCTION_12_0();
        sub_249E1D444();
        swift_unknownObjectRelease();
      }

LABEL_36:
      OUTLINED_FUNCTION_13_1();
      sub_249E6EE20();
      if (v42)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          OUTLINED_FUNCTION_12_0();
          sub_249E1CBAC();
          swift_unknownObjectRelease();
        }
      }

      return;
    case 4uLL:
      OUTLINED_FUNCTION_13_1();
      sub_249E6EE20();
      if (v29)
      {
        sub_249E06E74(a2, 2, v26, v27, v28);
      }

      return;
    default:
      goto LABEL_36;
  }
}

void sub_249E07EB4(void *a1)
{
  v3 = v1;
  v55 = sub_249E7AC78();
  v5 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_249E7A628();
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_249E7A998();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v3 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v15 = v14;
  LOBYTE(v14) = sub_249E7A9B8();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v51 = v5;
    v16 = OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_logger;
    v17 = a1;
    v18 = sub_249E7A698();
    v19 = sub_249E7AE28();

    v20 = os_log_type_enabled(v18, v19);
    v56 = v2;
    v57 = v3;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v50 = v16;
      v23 = v22;
      v49 = swift_slowAlloc();
      v58 = v49;
      *v21 = 136315394;
      v24 = [v17 UUID];
      sub_249E7A608();

      sub_249E08754(&qword_28130D350, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v25 = v53;
      v26 = sub_249E7B2D8();
      v28 = v27;
      (*(v52 + 8))(v9, v25);
      v29 = sub_249E3A958(v26, v28, &v58);

      *(v21 + 4) = v29;
      *(v21 + 12) = 2112;
      *(v21 + 14) = v17;
      *v23 = v17;
      v30 = v17;
      _os_log_impl(&dword_249DEE000, v18, v19, "Attempting to join conversation %s %@", v21, 0x16u);
      sub_249DF4A68(v23);
      MEMORY[0x24C205870](v23, -1, -1);
      v31 = v49;
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x24C205870](v31, -1, -1);
      MEMORY[0x24C205870](v21, -1, -1);
    }

    v32 = sub_249E7A698();
    v33 = sub_249E7AE28();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v58 = v35;
      *v34 = 136315138;
      v36 = v54;
      sub_249E7ACC8();
      sub_249E08754(&qword_28130D2C0, MEMORY[0x277D85720], MEMORY[0x277D85730]);
      v37 = v55;
      v38 = sub_249E7B2D8();
      v40 = v39;
      (*(v51 + 8))(v36, v37);
      v41 = sub_249E3A958(v38, v40, &v58);

      *(v34 + 4) = v41;
      _os_log_impl(&dword_249DEE000, v32, v33, "Task Priority = %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x24C205870](v35, -1, -1);
      MEMORY[0x24C205870](v34, -1, -1);
    }

    v42 = v56;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_249E1C36C();
      swift_unknownObjectRelease();
    }

    v43 = [objc_allocWithZone(MEMORY[0x277D6EEF0]) initWithConversation:v17 originatingUIType:52];
    [v43 setShouldSuppressInCallUI_];
    [v43 setShowUIPrompt_];
    v44 = sub_249E7AAA8();
    sub_249E08660(v44, v45, v43);
    v46 = sub_249E6E908(v43);
    if (v42)
    {
    }

    else
    {
      v47 = v46;
      [v46 setUplinkMuted_];
      sub_249E6F564();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_249E08530(uint64_t a1, uint64_t a2)
{
  v9.receiver = v2;
  v9.super_class = type metadata accessor for CallCenterManagerClient(0);
  objc_msgSendSuper2(&v9, sel_conversationManager_removedActiveConversation_, a1, a2);
  sub_249E6EE20();
  if (v8)
  {
    sub_249E06E74(a2, 2, v5, v6, v7);
  }
}

unint64_t sub_249E0861C()
{
  result = qword_28130D1C8;
  if (!qword_28130D1C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28130D1C8);
  }

  return result;
}

void sub_249E08660(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_249E7AA88();

  [a3 setAudioSourceIdentifier_];
}

uint64_t sub_249E086C4(void *a1)
{
  v1 = [a1 normalizedValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_249E7AAA8();

  return v3;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249E08754(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_249E0879C()
{
  result = qword_28130D2A0;
  if (!qword_28130D2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF23D50, &unk_249E80260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130D2A0);
  }

  return result;
}

unint64_t sub_249E0881C()
{
  result = qword_27EF23688;
  if (!qword_27EF23688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23688);
  }

  return result;
}

uint64_t sub_249E0887C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23690, &qword_249E7DF10);

  return sub_249E05F84(a1);
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t a1)
{

  return sub_249E7B318();
}

uint64_t sub_249E08A18(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23858, &qword_249E7E2F8);
  MEMORY[0x28223BE20](v34);
  v8 = (&v33 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_249E7A628();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_249E2A75C(a3, v11, &qword_27EF234B0, &qword_249E7D910);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_249E7A618();
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
    {
      sub_249E2A8CC(v11, &qword_27EF234B0, &qword_249E7D910);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v16 = sub_249E7A5D8();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  MEMORY[0x24C204750](v16, v18);

  v20 = v36;
  v19 = v37;
  v21 = *(a4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23860, &qword_249E7E300);
  swift_allocObject();

  v22 = v35;
  v23 = sub_249E0A374(v35, a2, v21, &qword_27EF23860, &qword_249E7E300);
  if (v23)
  {
    v24 = v23;
    for (i = (a4 + 56); v21; --v21)
    {
      v27 = *(i - 1);
      v26 = *i;
      v29 = *(i - 3);
      v28 = *(i - 2);

      sub_249E09150(v29, v28, v27, v26, v20, v19, v24, &unk_285D08B10);

      i += 4;
    }
  }

  else
  {

    sub_249E2A094();
    v31 = swift_allocError();
    *v32 = 0;
    *v8 = v31;
    swift_storeEnumTagMultiPayload();
    v22(v8);
    return sub_249E2A8CC(v8, &qword_27EF23858, &qword_249E7E2F8);
  }
}

uint64_t sub_249E08DB4(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF237A8, &qword_249E7E200);
  MEMORY[0x28223BE20](v34);
  v8 = (&v33 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_249E7A628();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_249E2A75C(a3, v11, &qword_27EF234B0, &qword_249E7D910);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_249E7A618();
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
    {
      sub_249E2A8CC(v11, &qword_27EF234B0, &qword_249E7D910);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v16 = sub_249E7A5D8();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  MEMORY[0x24C204750](v16, v18);

  v20 = v36;
  v19 = v37;
  v21 = *(a4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF237B0, &qword_249E7E208);
  swift_allocObject();

  v22 = v35;
  v23 = sub_249E0A374(v35, a2, v21, &qword_27EF237B0, &qword_249E7E208);
  if (v23)
  {
    v24 = v23;
    for (i = (a4 + 56); v21; --v21)
    {
      v27 = *(i - 1);
      v26 = *i;
      v29 = *(i - 3);
      v28 = *(i - 2);

      sub_249E09150(v29, v28, v27, v26, v20, v19, v24, &unk_285D08A70);

      i += 4;
    }
  }

  else
  {

    sub_249E2A094();
    v31 = swift_allocError();
    *v32 = 0;
    *v8 = v31;
    swift_storeEnumTagMultiPayload();
    v22(v8);
    return sub_249E2A8CC(v8, &qword_27EF237A8, &qword_249E7E200);
  }
}

uint64_t sub_249E09150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v14);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v15);
  v42[0] = 60;
  v42[1] = 0xE100000000000000;
  v16 = OUTLINED_FUNCTION_167();
  MEMORY[0x24C204750](v16);
  MEMORY[0x24C204750](0x202C626F4A20, 0xE600000000000000);
  MEMORY[0x24C204750](a5, a6);
  MEMORY[0x24C204750](62, 0xE100000000000000);
  if (qword_27EF22F90 != -1)
  {
    OUTLINED_FUNCTION_12_1();
    swift_once();
  }

  v17 = sub_249E7A6B8();
  __swift_project_value_buffer(v17, qword_27EF23410);
  OUTLINED_FUNCTION_102();

  v18 = sub_249E7A698();
  sub_249E7AE28();

  v19 = OUTLINED_FUNCTION_110();
  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_70();
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v22 = a7;
    v23 = swift_slowAlloc();
    v42[0] = v23;
    *v21 = 136315138;
    *(v21 + 4) = sub_249E3A958(60, 0xE100000000000000, v42);
    OUTLINED_FUNCTION_229();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    a7 = v22;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  sub_249E7AC78();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = swift_allocObject();
  v34 = OUTLINED_FUNCTION_210(v33);
  v34[4] = a1;
  v34[5] = a2;
  v35 = v43;
  v34[6] = a3;
  v34[7] = v35;
  v34[8] = 60;
  v34[9] = 0xE100000000000000;
  v34[10] = a7;

  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_294();
  sub_249E5ED90(v36, v37, v38, v39, v8);
}

uint64_t sub_249E093B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[4] = v15;
  v8[5] = v16;
  v8[3] = a8;
  v8[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23858, &qword_249E7E2F8);
  v8[7] = swift_task_alloc();
  v8[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23818, &unk_249E7E2A0);
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  v10 = swift_task_alloc();
  v8[11] = v10;
  v13 = (a6 + *a6);
  v11 = swift_task_alloc();
  v8[12] = v11;
  *v11 = v8;
  v11[1] = sub_249E09558;

  return v13(v10);
}

uint64_t sub_249E09558()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E09650()
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  if (qword_27EF22F90 != -1)
  {
    OUTLINED_FUNCTION_12_1();
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_249E7A6B8();
  __swift_project_value_buffer(v2, qword_27EF23410);
  v3 = OUTLINED_FUNCTION_81();
  sub_249E2A75C(v3, v4, v5, v6);

  v7 = sub_249E7A698();
  sub_249E7AE28();
  OUTLINED_FUNCTION_247();

  v8 = OUTLINED_FUNCTION_110();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[10];
  if (v10)
  {
    v13 = v0[3];
    v12 = v0[4];
    OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_243();
    OUTLINED_FUNCTION_289(4.8151e-34);
    v15 = sub_249E3A958(v13, v12, v14);
    OUTLINED_FUNCTION_144(v15);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_294();
    sub_249E2A75C(v16, v17, v18, v19);
    OUTLINED_FUNCTION_113();
    sub_249E7AAC8();
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_267();
    v20 = OUTLINED_FUNCTION_113();
    v23 = sub_249E3A958(v20, v21, v22);

    *(v1 + 14) = v23;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v24, v25, v26, v27, v28, 0x16u);
    OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    sub_249E2A8CC(v11, &qword_27EF23818, &unk_249E7E2A0);
  }

  sub_249E2A75C(v0[11], v0[7], &qword_27EF23818, &unk_249E7E2A0);
  OUTLINED_FUNCTION_81();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_34();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_249E0984C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_30();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_17();
  a16 = v18;
  if (qword_27EF22F90 != -1)
  {
    OUTLINED_FUNCTION_12_1();
    swift_once();
  }

  v21 = v18[13];
  v22 = sub_249E7A6B8();
  __swift_project_value_buffer(v22, qword_27EF23410);
  OUTLINED_FUNCTION_305();

  v23 = v21;
  v24 = sub_249E7A698();
  sub_249E7AE28();

  v25 = OUTLINED_FUNCTION_110();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v18[13];
    v28 = v18[4];
    OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_243();
    OUTLINED_FUNCTION_289(4.8151e-34);
    v29 = OUTLINED_FUNCTION_167();
    v32 = sub_249E3A958(v29, v30, v31);
    OUTLINED_FUNCTION_144(v32);
    v18[2] = v27;
    v33 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
    v34 = sub_249E7AAC8();
    sub_249E3A958(v34, v35, &a9);
    OUTLINED_FUNCTION_165();

    *(v21 + 14) = v28;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v36, v37, v38, v39, v40, 0x16u);
    OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  OUTLINED_FUNCTION_260();
  v41 = v24;
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v42, v43, v44);
}

uint64_t sub_249E099E4()
{
  OUTLINED_FUNCTION_11();
  v1 = OUTLINED_FUNCTION_141();
  sub_249E0A414(v1);
  sub_249E2A8CC(v0, &qword_27EF23858, &qword_249E7E2F8);
  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E09A58()
{
  OUTLINED_FUNCTION_23();
  sub_249E2A8CC(*(v0 + 88), &qword_27EF23818, &unk_249E7E2A0);
  OUTLINED_FUNCTION_259();

  OUTLINED_FUNCTION_9_0();

  return v1();
}

uint64_t sub_249E09AE4()
{
  OUTLINED_FUNCTION_11();
  v1 = OUTLINED_FUNCTION_141();
  sub_249E0A414(v1);
  sub_249E2A8CC(v0, &qword_27EF23858, &qword_249E7E2F8);
  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E09B58()
{
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_259();

  OUTLINED_FUNCTION_9_0();

  return v1();
}

uint64_t sub_249E09BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[4] = v15;
  v8[5] = v16;
  v8[3] = a8;
  v8[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF237A8, &qword_249E7E200);
  v8[7] = swift_task_alloc();
  v8[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23788, &qword_249E7E1C0);
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  v10 = swift_task_alloc();
  v8[11] = v10;
  v13 = (a6 + *a6);
  v11 = swift_task_alloc();
  v8[12] = v11;
  *v11 = v8;
  v11[1] = sub_249E09D74;

  return v13(v10);
}

uint64_t sub_249E09D74()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E09E6C()
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  if (qword_27EF22F90 != -1)
  {
    OUTLINED_FUNCTION_12_1();
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_249E7A6B8();
  __swift_project_value_buffer(v2, qword_27EF23410);
  v3 = OUTLINED_FUNCTION_81();
  sub_249E2A75C(v3, v4, v5, v6);

  v7 = sub_249E7A698();
  sub_249E7AE28();
  OUTLINED_FUNCTION_247();

  v8 = OUTLINED_FUNCTION_110();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[10];
  if (v10)
  {
    v13 = v0[3];
    v12 = v0[4];
    OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_243();
    OUTLINED_FUNCTION_289(4.8151e-34);
    v15 = sub_249E3A958(v13, v12, v14);
    OUTLINED_FUNCTION_144(v15);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_294();
    sub_249E2A75C(v16, v17, v18, v19);
    OUTLINED_FUNCTION_113();
    sub_249E7AAC8();
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_267();
    v20 = OUTLINED_FUNCTION_113();
    v23 = sub_249E3A958(v20, v21, v22);

    *(v1 + 14) = v23;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v24, v25, v26, v27, v28, 0x16u);
    OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    sub_249E2A8CC(v11, &qword_27EF23788, &qword_249E7E1C0);
  }

  sub_249E2A75C(v0[11], v0[7], &qword_27EF23788, &qword_249E7E1C0);
  OUTLINED_FUNCTION_81();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_34();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_249E0A068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_30();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_17();
  a16 = v18;
  if (qword_27EF22F90 != -1)
  {
    OUTLINED_FUNCTION_12_1();
    swift_once();
  }

  v21 = v18[13];
  v22 = sub_249E7A6B8();
  __swift_project_value_buffer(v22, qword_27EF23410);
  OUTLINED_FUNCTION_305();

  v23 = v21;
  v24 = sub_249E7A698();
  sub_249E7AE28();

  v25 = OUTLINED_FUNCTION_110();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v18[13];
    v28 = v18[4];
    OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_243();
    OUTLINED_FUNCTION_289(4.8151e-34);
    v29 = OUTLINED_FUNCTION_167();
    v32 = sub_249E3A958(v29, v30, v31);
    OUTLINED_FUNCTION_144(v32);
    v18[2] = v27;
    v33 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
    v34 = sub_249E7AAC8();
    sub_249E3A958(v34, v35, &a9);
    OUTLINED_FUNCTION_165();

    *(v21 + 14) = v28;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v36, v37, v38, v39, v40, 0x16u);
    OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  OUTLINED_FUNCTION_260();
  v41 = v24;
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v42, v43, v44);
}

uint64_t sub_249E0A200()
{
  OUTLINED_FUNCTION_11();
  v1 = OUTLINED_FUNCTION_141();
  sub_249E0A9E0(v1);
  sub_249E2A8CC(v0, &qword_27EF237A8, &qword_249E7E200);
  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E0A274()
{
  OUTLINED_FUNCTION_23();
  sub_249E2A8CC(*(v0 + 88), &qword_27EF23788, &qword_249E7E1C0);
  OUTLINED_FUNCTION_259();

  OUTLINED_FUNCTION_9_0();

  return v1();
}

uint64_t sub_249E0A300()
{
  OUTLINED_FUNCTION_11();
  v1 = OUTLINED_FUNCTION_141();
  sub_249E0A9E0(v1);
  sub_249E2A8CC(v0, &qword_27EF237A8, &qword_249E7E200);
  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

void *sub_249E0A374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  swift_defaultActor_initialize();
  v5[14] = 0;
  v5[15] = 0;
  v5[17] = MEMORY[0x277D84F90];
  if (a3)
  {
    v5[14] = a1;
    v5[15] = a2;
    v5[16] = a3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    swift_defaultActor_destroy();

    OUTLINED_FUNCTION_153();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

void sub_249E0A414(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23818, &unk_249E7E2A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23858, &qword_249E7E2F8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (v49 - v11);
  v13 = v2 + 14;
  v14 = v2[14];
  if (v14)
  {
    v15 = v2[15];
    v16 = v2[16];
    if (v16)
    {
      v2[16] = v16 - 1;
    }

    sub_249E2A75C(a1, v49 - v11, &qword_27EF23858, &qword_249E7E2F8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v54 = *v12;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
      v17 = sub_249DF691C(0, &qword_28130D168, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v18 = v53[3];
        swift_beginAccess();
        v19 = v18;
        MEMORY[0x24C2047D0]();
        sub_249E3A238(*((v2[17] & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_249E7AC18();
        swift_endAccess();
        if (v2[16])
        {
          sub_249DF2D58(v14, v15);
        }

        else
        {
          if (qword_27EF22F90 != -1)
          {
LABEL_23:
            swift_once();
          }

          v49[1] = v7;
          v22 = sub_249E7A6B8();
          __swift_project_value_buffer(v22, qword_27EF23410);

          v23 = sub_249E7A698();
          v24 = sub_249E7AE08();
          v25 = os_log_type_enabled(v23, v24);
          v51 = v15;
          v52 = v14;
          v50 = v10;
          if (v25)
          {
            v26 = swift_slowAlloc();
            v15 = swift_slowAlloc();
            v53[0] = v15;
            *v26 = 136315138;
            v14 = v24;

            v28 = MEMORY[0x24C204800](v27, v17);
            v30 = v29;

            v31 = sub_249E3A958(v28, v30, v53);

            *(v26 + 4) = v31;
            _os_log_impl(&dword_249DEE000, v23, v14, "All Errors %s", v26, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v15);
            MEMORY[0x24C205870](v15, -1, -1);
            MEMORY[0x24C205870](v26, -1, -1);
          }

          else
          {
          }

          v32 = v2[17];

          v49[0] = sub_249E0AFAC(1, v32);
          v35 = v34;
          v10 = (v36 >> 1);
          v7 = &qword_28130D150;
          v17 = 0x277D82BB8uLL;
          while (v10 != v33)
          {
            if (v33 >= v10)
            {
              __break(1u);
              goto LABEL_23;
            }

            v15 = (v33 + 1);
            v37 = *(v35 + 8 * v33);
            sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
            v14 = v37;
            v38 = sub_249E7AF78();

            v33 = v15;
            if ((v38 & 1) == 0)
            {
              swift_unknownObjectRelease();

              v40 = sub_249E56328(v39);

              sub_249E2A094();
              v41 = swift_allocError();
              *v42 = v40;
              v43 = v50;
              *v50 = v41;
              swift_storeEnumTagMultiPayload();
              goto LABEL_19;
            }
          }

          swift_unknownObjectRelease();
          v43 = v50;
          *v50 = v19;
          swift_storeEnumTagMultiPayload();
          v44 = v19;
LABEL_19:
          v45 = v51;
          v46 = v52;
          v52(v43);
          sub_249E2A8CC(v43, &qword_27EF23858, &qword_249E7E2F8);
          sub_249DF2D58(v46, v45);

          v2[17] = MEMORY[0x277D84F90];

          v47 = v2[14];
          v48 = v2[15];
          *v13 = 0;
          v2[15] = 0;
          sub_249DF2D58(v47, v48);
        }
      }

      else
      {
        sub_249E7B308();
        __break(1u);
      }
    }

    else
    {
      sub_249E2A7A4(v12, v6, &qword_27EF23818, &unk_249E7E2A0);
      sub_249E2A75C(v6, v10, &qword_27EF23818, &unk_249E7E2A0);
      swift_storeEnumTagMultiPayload();

      v14(v10);
      sub_249E2A8CC(v10, &qword_27EF23858, &qword_249E7E2F8);
      sub_249DF2D58(v14, v15);
      sub_249E2A8CC(v6, &qword_27EF23818, &unk_249E7E2A0);
      swift_beginAccess();
      v2[17] = MEMORY[0x277D84F90];

      v20 = v2[14];
      v21 = v2[15];
      *v13 = 0;
      v2[15] = 0;
      sub_249DF2D58(v20, v21);
    }
  }
}

void sub_249E0A9E0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23788, &qword_249E7E1C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF237A8, &qword_249E7E200);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (v49 - v11);
  v13 = v2 + 14;
  v14 = v2[14];
  if (v14)
  {
    v15 = v2[15];
    v16 = v2[16];
    if (v16)
    {
      v2[16] = v16 - 1;
    }

    sub_249E2A75C(a1, v49 - v11, &qword_27EF237A8, &qword_249E7E200);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v54 = *v12;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
      v17 = sub_249DF691C(0, &qword_28130D168, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v18 = v53[3];
        swift_beginAccess();
        v19 = v18;
        MEMORY[0x24C2047D0]();
        sub_249E3A238(*((v2[17] & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_249E7AC18();
        swift_endAccess();
        if (v2[16])
        {
          sub_249DF2D58(v14, v15);
        }

        else
        {
          if (qword_27EF22F90 != -1)
          {
LABEL_23:
            swift_once();
          }

          v49[1] = v7;
          v22 = sub_249E7A6B8();
          __swift_project_value_buffer(v22, qword_27EF23410);

          v23 = sub_249E7A698();
          v24 = sub_249E7AE08();
          v25 = os_log_type_enabled(v23, v24);
          v51 = v15;
          v52 = v14;
          v50 = v10;
          if (v25)
          {
            v26 = swift_slowAlloc();
            v15 = swift_slowAlloc();
            v53[0] = v15;
            *v26 = 136315138;
            v14 = v24;

            v28 = MEMORY[0x24C204800](v27, v17);
            v30 = v29;

            v31 = sub_249E3A958(v28, v30, v53);

            *(v26 + 4) = v31;
            _os_log_impl(&dword_249DEE000, v23, v14, "All Errors %s", v26, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v15);
            MEMORY[0x24C205870](v15, -1, -1);
            MEMORY[0x24C205870](v26, -1, -1);
          }

          else
          {
          }

          v32 = v2[17];

          v49[0] = sub_249E0AFAC(1, v32);
          v35 = v34;
          v10 = (v36 >> 1);
          v7 = &qword_28130D150;
          v17 = 0x277D82BB8uLL;
          while (v10 != v33)
          {
            if (v33 >= v10)
            {
              __break(1u);
              goto LABEL_23;
            }

            v15 = (v33 + 1);
            v37 = *(v35 + 8 * v33);
            sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
            v14 = v37;
            v38 = sub_249E7AF78();

            v33 = v15;
            if ((v38 & 1) == 0)
            {
              swift_unknownObjectRelease();

              v40 = sub_249E56328(v39);

              sub_249E2A094();
              v41 = swift_allocError();
              *v42 = v40;
              v43 = v50;
              *v50 = v41;
              swift_storeEnumTagMultiPayload();
              goto LABEL_19;
            }
          }

          swift_unknownObjectRelease();
          v43 = v50;
          *v50 = v19;
          swift_storeEnumTagMultiPayload();
          v44 = v19;
LABEL_19:
          v45 = v51;
          v46 = v52;
          v52(v43);
          sub_249E2A8CC(v43, &qword_27EF237A8, &qword_249E7E200);
          sub_249DF2D58(v46, v45);

          v2[17] = MEMORY[0x277D84F90];

          v47 = v2[14];
          v48 = v2[15];
          *v13 = 0;
          v2[15] = 0;
          sub_249DF2D58(v47, v48);
        }
      }

      else
      {
        sub_249E7B308();
        __break(1u);
      }
    }

    else
    {
      sub_249E2A7A4(v12, v6, &qword_27EF23788, &qword_249E7E1C0);
      sub_249E2A75C(v6, v10, &qword_27EF23788, &qword_249E7E1C0);
      swift_storeEnumTagMultiPayload();

      v14(v10);
      sub_249E2A8CC(v10, &qword_27EF237A8, &qword_249E7E200);
      sub_249DF2D58(v14, v15);
      sub_249E2A8CC(v6, &qword_27EF23788, &qword_249E7E1C0);
      swift_beginAccess();
      v2[17] = MEMORY[0x277D84F90];

      v20 = v2[14];
      v21 = v2[15];
      *v13 = 0;
      v2[15] = 0;
      sub_249DF2D58(v20, v21);
    }
  }
}

unint64_t sub_249E0AFAC(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = sub_249E51FB4();
  if (__OFSUB__(v4, a1))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v12 = sub_249E7B248();

    return v12;
  }

  v5 = (v4 - a1) & ~((v4 - a1) >> 63);
  v6 = sub_249E51FB4();
  v7 = sub_249E27F44(0, v5, v6);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v9 < 0)
  {
    goto LABEL_18;
  }

  sub_249E27F90(0, a2);
  sub_249E27F90(v9, a2);
  if ((a2 & 0xC000000000000001) != 0 && v9)
  {
    sub_249DF691C(0, &qword_28130D168, 0x277CCA9B8);

    v10 = 0;
    do
    {
      v11 = v10 + 1;
      sub_249E7B138();
      v10 = v11;
    }

    while (v9 != v11);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_19;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_249E0B120()
{
  OUTLINED_FUNCTION_23();
  v0 = sub_249E7A698();
  v1 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_120(v1))
  {
    v2 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6_0(v2);
    OUTLINED_FUNCTION_35();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  OUTLINED_FUNCTION_31_0();

  return v8();
}

uint64_t sub_249E0B1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  return OUTLINED_FUNCTION_8_0();
}

uint64_t sub_249E0B1E8()
{
  OUTLINED_FUNCTION_11();
  v2 = v1[3];
  if (v2)
  {
    v0 = v1[3];
  }

  else
  {
    v3 = sub_249E28F30();
    OUTLINED_FUNCTION_40(&type metadata for DropInManager.DropInManagerError, v3);
    v2 = OUTLINED_FUNCTION_103();
    *v4 = 28;
  }

  v1[5] = v0;
  v5 = v2;
  v6 = swift_task_alloc();
  v1[6] = v6;
  *v6 = v1;
  v6[1] = sub_249E0B2B4;
  v7 = OUTLINED_FUNCTION_97(v1[2]);

  return sub_249E0E5CC(v7, v0);
}

uint64_t sub_249E0B2B4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E0B398()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_9_0();

  return v1();
}

uint64_t sub_249E0B3F0()
{
  OUTLINED_FUNCTION_11();
  v1[10] = v2;
  v1[11] = v0;
  v1[9] = v3;
  v4 = type metadata accessor for DropInSessionAnalyticEvent(0);
  v1[12] = v4;
  OUTLINED_FUNCTION_37(v4);
  v1[13] = OUTLINED_FUNCTION_192();
  v5 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_249E0B470()
{
  OUTLINED_FUNCTION_23();
  v1 = sub_249E7A698();
  v2 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_120(v2))
  {
    v3 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6_0(v3);
    OUTLINED_FUNCTION_35();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_249E0B560;
  v10 = OUTLINED_FUNCTION_97(*(v0 + 72));

  return sub_249E0F38C(v10, v11);
}

uint64_t sub_249E0B560()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v5 = v4;
  OUTLINED_FUNCTION_6_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  *(v5 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t sub_249E0B69C()
{
  OUTLINED_FUNCTION_17();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  swift_getErrorValue();
  v4 = sub_249DF3DA4(v0[3], v0[4]);
  v6 = v5;
  v7 = v3 + OBJC_IVAR____TtC10DropInCore13DropInManager_dropInSessionAnalyticEvent;
  swift_beginAccess();
  v8 = (v7 + *(v2 + 40));
  *v8 = v4;
  v8[1] = v6;

  OUTLINED_FUNCTION_46_0();
  sub_249E2AAB0(v7, v1);
  sub_249E28B3C(v1);
  OUTLINED_FUNCTION_21_0();
  sub_249E2AA5C(v1);
  swift_willThrow();

  OUTLINED_FUNCTION_9_0();

  return v9();
}

uint64_t sub_249E0B79C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_8_0();
}

uint64_t sub_249E0B7B4()
{
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_82();
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = v1;
  v4 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_272())
  {
    v5 = *(v0 + 24);
    v6 = OUTLINED_FUNCTION_188();
    v7 = OUTLINED_FUNCTION_234();
    OUTLINED_FUNCTION_233(v7, 5.778e-34);
    v8 = v5;
    OUTLINED_FUNCTION_202();
    _os_log_impl(v9, v10, v11, v12, v6, 0x16u);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_258(v13);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v14 = *(v0 + 32);

  *(v0 + 40) = *(v14 + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
  OUTLINED_FUNCTION_254();
  OUTLINED_FUNCTION_271();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_249E0B8E0()
{
  OUTLINED_FUNCTION_11();
  v1 = *(*(v0 + 40) + qword_28130E738);
  *(v0 + 48) = v1;
  v2 = v1;
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E0B958()
{
  OUTLINED_FUNCTION_23();
  if (!*(v0 + 48))
  {
    v10 = sub_249E28F30();
    OUTLINED_FUNCTION_40(&type metadata for DropInManager.DropInManagerError, v10);
    OUTLINED_FUNCTION_190(v11, 14);
LABEL_7:
    OUTLINED_FUNCTION_9_0();
    goto LABEL_8;
  }

  sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
  OUTLINED_FUNCTION_83();
  result = sub_249E7AF78();
  if ((result & 1) == 0)
  {
    v12 = *(v0 + 48);
    v13 = sub_249E28F30();
    OUTLINED_FUNCTION_40(&type metadata for DropInManager.DropInManagerError, v13);
    OUTLINED_FUNCTION_190(v14, 15);

    goto LABEL_7;
  }

  v2 = *(*(v0 + 32) + OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager);
  if (!v2)
  {
    __break(1u);
    return result;
  }

  v3 = *(v0 + 48);
  v4 = v2;
  sub_249E067EC(0, v5, v6, v7, v8);

  OUTLINED_FUNCTION_31_0();
LABEL_8:

  return v9();
}

uint64_t sub_249E0BA84()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
  *(v0 + 24) = v1;
  return OUTLINED_FUNCTION_11_1(sub_249E0BAAC, v1);
}

uint64_t sub_249E0BAAC()
{
  OUTLINED_FUNCTION_23();
  v1 = *(*(v0 + 24) + qword_28130E738);
  OUTLINED_FUNCTION_9_0();
  v5 = v2;
  v3 = v1;

  return v5(v1);
}

uint64_t sub_249E0BB20(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_8_0();
}

void sub_249E0BB38()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager);
  *(v0 + 24) = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_11();
    v3 = v2;
    OUTLINED_FUNCTION_280();
    v4 = swift_task_alloc();
    *(v0 + 32) = v4;
    *v4 = v0;
    v4[1] = sub_249E0BBF0;
    v5 = *(v0 + 48);

    sub_249E6F78C(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_249E0BBF0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_9_0();

    return v10();
  }
}

uint64_t sub_249E0BD0C()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_9_0();

  return v1();
}

void sub_249E0BD7C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager);
  v0[3] = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_11();
    v3 = v2;
    OUTLINED_FUNCTION_280();
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_205(v4);

    sub_249E6FA10();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_249E0BE28()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v5 = v4;
  OUTLINED_FUNCTION_6_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3 & 1);
  }
}

uint64_t sub_249E0BF64()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_168();

  return v1(0);
}

uint64_t sub_249E0BFC4()
{
  OUTLINED_FUNCTION_11();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_37(v4);
  v1[5] = OUTLINED_FUNCTION_192();
  v5 = sub_249E7A628();
  v1[6] = v5;
  OUTLINED_FUNCTION_34_0(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_192();
  v7 = type metadata accessor for XPCClient(0);
  v1[9] = v7;
  OUTLINED_FUNCTION_37(v7);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_249E0C0D0()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  v0[12] = OBJC_IVAR____TtC10DropInCore13DropInManager_logger;
  OUTLINED_FUNCTION_2_5();
  sub_249E2AAB0(v1, v2);
  v3 = sub_249E7A698();
  v4 = sub_249E7AE28();
  v5 = OUTLINED_FUNCTION_127(v4);
  v6 = v0[11];
  if (v5)
  {
    OUTLINED_FUNCTION_70();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v18 = swift_slowAlloc();
    *v7 = 136315138;
    sub_249E6A23C();
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_0_6();
    sub_249E2AA5C(v6);
    v8 = OUTLINED_FUNCTION_113();
    sub_249E3A958(v8, v9, v10);
    OUTLINED_FUNCTION_102();

    *(v7 + 4) = v6;
    OUTLINED_FUNCTION_52(&dword_249DEE000, v11, v12, "Loading devices for client %s");
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    OUTLINED_FUNCTION_0_6();
    sub_249E2AA5C(v6);
  }

  v0[13] = *(v0[4] + OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
  OUTLINED_FUNCTION_254();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_249E0C21C()
{
  OUTLINED_FUNCTION_11();
  sub_249E50C80();
  v0 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_249E0C580()
{
  OUTLINED_FUNCTION_11();
  sub_249E4F2F4(*(v0 + 64), v1, v2, v3, v4);
  *(v0 + 112) = v5;
  v6 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249E0C5E4()
{
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_82();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_0_6();
  sub_249E2AA5C(v1);
  v2 = OUTLINED_FUNCTION_145();
  v3(v2);

  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_271();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_249E0C690()
{
  OUTLINED_FUNCTION_11();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for XPCClient(0);
  v1[4] = v3;
  OUTLINED_FUNCTION_37(v3);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E0C720()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_2_5();
  sub_249E2AAB0(v2, v3);
  v4 = sub_249E7A698();
  v5 = sub_249E7AE28();
  v6 = OUTLINED_FUNCTION_127(v5);
  v7 = v0[6];
  if (v6)
  {
    OUTLINED_FUNCTION_70();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    swift_slowAlloc();
    OUTLINED_FUNCTION_246();
    *v8 = 136315138;
    sub_249E6A23C();
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_0_6();
    sub_249E2AA5C(v7);
    v9 = OUTLINED_FUNCTION_113();
    sub_249E3A958(v9, v10, v11);
    OUTLINED_FUNCTION_102();

    *(v8 + 4) = v7;
    OUTLINED_FUNCTION_52(&dword_249DEE000, v12, v13, "Registering Audio Power for client %s");
    __swift_destroy_boxed_opaque_existential_0(v1);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    OUTLINED_FUNCTION_0_6();
    sub_249E2AA5C(v7);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = v0[4];
    v14 = v0[5];
    OUTLINED_FUNCTION_2_5();
    sub_249E2AAB0(v16, v14);
    v17 = *(v15 + 24);
    v18 = *(v14 + v17);
    if ((v18 & 1) == 0)
    {
      *(v14 + v17) = v18 | 1;
    }

    v19 = v0[5];
    sub_249E3F2C4(v19);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_0_6();
    sub_249E2AA5C(v19);

    OUTLINED_FUNCTION_31_0();
  }

  else
  {
    v21 = sub_249E28F30();
    OUTLINED_FUNCTION_40(&type metadata for DropInManager.DropInManagerError, v21);
    OUTLINED_FUNCTION_190(v22, 11);

    OUTLINED_FUNCTION_9_0();
  }

  return v20();
}

uint64_t sub_249E0C90C()
{
  OUTLINED_FUNCTION_11();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v5 = type metadata accessor for TransactionType(0);
  OUTLINED_FUNCTION_37(v5);
  v1[10] = OUTLINED_FUNCTION_192();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v1[11] = v6;
  OUTLINED_FUNCTION_34_0(v6);
  v1[12] = v7;
  v1[13] = OUTLINED_FUNCTION_192();
  v8 = sub_249E7A5B8();
  v1[14] = v8;
  OUTLINED_FUNCTION_34_0(v8);
  v1[15] = v9;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v10 = type metadata accessor for DropInStateManager.Context(0);
  OUTLINED_FUNCTION_37(v10);
  v1[18] = OUTLINED_FUNCTION_192();
  v11 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_249E0CA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  if ((v10[6] - 1) > 1)
  {
    v15 = sub_249E28F30();
    OUTLINED_FUNCTION_40(&type metadata for DropInManager.DropInManagerError, v15);
    OUTLINED_FUNCTION_190(v16, 19);

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_31();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }

  else
  {
    v10[19] = *(v10[9] + OBJC_IVAR____TtC10DropInCore13DropInManager_stateManager);
    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_31();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_249E0CB6C()
{
  OUTLINED_FUNCTION_23();
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = OBJC_IVAR____TtC10DropInCore18DropInStateManager_context;
  OUTLINED_FUNCTION_76(v1 + OBJC_IVAR____TtC10DropInCore18DropInStateManager_context);
  sub_249E2AAB0(v1 + v3, v2);
  v4 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E0CC00()
{
  OUTLINED_FUNCTION_23();
  v1 = **(v0 + 144);
  OUTLINED_FUNCTION_10_0();
  sub_249E2AA5C(v2);
  if (v1 == 3)
  {
    OUTLINED_FUNCTION_197();

    OUTLINED_FUNCTION_31_0();

    return v3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_254();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }
}

uint64_t sub_249E0CCCC()
{
  OUTLINED_FUNCTION_11();
  sub_249E2F110(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E0CD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_221();
  if (v16[6] == 2)
  {
    v17 = v16[16];
    v18 = v16[15];
    v50 = v16[14];
    v51 = v16[9];
    sub_249E7A598();
    sub_249E7A758();
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_213();
    sub_249E2AB74(v19, v20, v21);
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_213();
    sub_249E2AB74(v22, v23, v24);
    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_213();
    sub_249E2AB74(v25, v26, v27);
    OUTLINED_FUNCTION_136();
    sub_249E7A6E8();
    v28 = OUTLINED_FUNCTION_182();
    v29(v28);
    sub_249E7A528();
    v30 = *(v18 + 8);
    v16[20] = v30;
    v16[21] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30(v17, v50);
    v16[22] = *(v51 + OBJC_IVAR____TtC10DropInCore13DropInManager_transactionManager);
    v31 = OUTLINED_FUNCTION_148();
    v32(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C8, &qword_249E7E008);
    OUTLINED_FUNCTION_166();
    OUTLINED_FUNCTION_94();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_122();

    return MEMORY[0x2822009F8](v37, v38, v39);
  }

  else
  {
    OUTLINED_FUNCTION_197();

    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_122();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_249E0CF20()
{
  OUTLINED_FUNCTION_11();
  sub_249E339F0(*(v0 + 80));
  OUTLINED_FUNCTION_18_0();
  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E0CF88()
{
  OUTLINED_FUNCTION_23();
  (*(v0 + 160))(*(v0 + 136), *(v0 + 112));
  OUTLINED_FUNCTION_197();

  OUTLINED_FUNCTION_31_0();

  return v1();
}

uint64_t sub_249E0D014()
{
  OUTLINED_FUNCTION_11();
  v1[13] = v2;
  v1[14] = v0;
  v3 = type metadata accessor for TransactionType(0);
  OUTLINED_FUNCTION_37(v3);
  v1[15] = OUTLINED_FUNCTION_192();
  v4 = type metadata accessor for DropInStateManager.Context(0);
  v1[16] = v4;
  OUTLINED_FUNCTION_37(v4);
  v1[17] = OUTLINED_FUNCTION_192();
  v5 = type metadata accessor for DropInStateResponse(0);
  v1[18] = v5;
  OUTLINED_FUNCTION_37(v5);
  v1[19] = OUTLINED_FUNCTION_192();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23788, &qword_249E7E1C0);
  OUTLINED_FUNCTION_37(v6);
  v1[20] = OUTLINED_FUNCTION_192();
  v7 = type metadata accessor for DropInStateRequest(0);
  v1[21] = v7;
  OUTLINED_FUNCTION_37(v7);
  v1[22] = OUTLINED_FUNCTION_192();
  v8 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_249E0D124()
{
  OUTLINED_FUNCTION_11();
  swift_getObjectType();
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_249E0D1D0;
  v2 = OUTLINED_FUNCTION_97(*(v0 + 104));

  return sub_249DF5E08(v2);
}

uint64_t sub_249E0D1D0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = v3;

  v4 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_249E0D2B8()
{
  OUTLINED_FUNCTION_17();
  v1 = *(v0 + 192);
  if (v1)
  {
    v2 = [*(v0 + 192) home];
    *(v0 + 200) = v2;
    if (v2)
    {
      v3 = *(v0 + 112);
      v4 = [v2 uniqueIdentifier];
      sub_249E7A608();

      v5 = *(v3 + OBJC_IVAR____TtC10DropInCore13DropInManager_messageCenter);
      *(v0 + 208) = v5;
      if (v5)
      {
        v6 = *(v0 + 176);
        *(v0 + 88) = *(v0 + 168);
        *(v0 + 96) = sub_249E28F84(&qword_27EF23790, type metadata accessor for DropInStateRequest);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 64));
        sub_249E2AAB0(v6, boxed_opaque_existential_0);
        *(v0 + 40) = sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
        *(v0 + 48) = &off_285D07E60;
        *(v0 + 16) = v1;
        *(v0 + 56) = &off_285D07E80;

        v8 = v1;
        swift_task_alloc();
        OUTLINED_FUNCTION_75();
        *(v0 + 216) = v9;
        *v9 = v10;
        v9[1] = sub_249E0D54C;
        v11 = *(v0 + 160);

        sub_249E12B34(v11, v0 + 64, v0 + 16, 0, 1);
      }

      else
      {
        __break(1u);
      }

      return;
    }

    v14 = sub_249E28F30();
    OUTLINED_FUNCTION_40(&type metadata for DropInManager.DropInManagerError, v14);
    OUTLINED_FUNCTION_190(v15, 7);
  }

  else
  {
    v12 = sub_249E28F30();
    OUTLINED_FUNCTION_40(&type metadata for DropInManager.DropInManagerError, v12);
    OUTLINED_FUNCTION_190(v13, 10);
  }

  OUTLINED_FUNCTION_9_0();

  v16();
}

uint64_t sub_249E0D54C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;
  v3[28] = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    __swift_destroy_boxed_opaque_existential_0(v3 + 8);
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E0D664()
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);
  sub_249E2AAB0(*(v0 + 160), v1);
  v6 = *(v1 + v2[6]);
  *(v0 + 232) = v6;
  v7 = v2[8];
  v8 = (v1 + v2[7]);
  v10 = *v8;
  v9 = v8[1];
  *(v0 + 280) = v7;
  v11 = *(v4 + 24);
  *(v0 + 240) = sub_249E7A5B8();
  OUTLINED_FUNCTION_28_0();
  v13 = *(v12 + 16);
  *(v0 + 248) = v13;
  *(v0 + 256) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(&v3[v11], v1 + v7);
  *v3 = v6;
  *(v3 + 1) = v10;
  *(v3 + 2) = v9;
  *(v0 + 264) = *(v5 + OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
  *(v0 + 284) = v2[5];

  OUTLINED_FUNCTION_242();
  OUTLINED_FUNCTION_34();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_249E0D780()
{
  OUTLINED_FUNCTION_11();
  sub_249E50708(*(v0 + 152) + *(v0 + 284), *(v0 + 136));
  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E0D7EC()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  if (*(v1 + 232) == 2)
  {
    v3 = *(v1 + 248);
    v4 = *(v1 + 240);
    v5 = *(v1 + 280);
    v6 = *(v1 + 152);
    v7 = *(v1 + 120);
    *(v1 + 272) = *(*(v1 + 112) + OBJC_IVAR____TtC10DropInCore13DropInManager_transactionManager);
    v3(v7, v6 + v5, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C8, &qword_249E7E008);
    OUTLINED_FUNCTION_297();
    OUTLINED_FUNCTION_94();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_253();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    v16 = *(v1 + 192);

    OUTLINED_FUNCTION_227();
    OUTLINED_FUNCTION_10_0();
    sub_249E2AA5C(v2);
    OUTLINED_FUNCTION_138();
    sub_249E2A8CC(v0, &qword_27EF23788, &qword_249E7E1C0);
    OUTLINED_FUNCTION_60();

    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_253();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_249E0D93C()
{
  OUTLINED_FUNCTION_11();
  sub_249E339F0(*(v0 + 120));
  OUTLINED_FUNCTION_18_0();
  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E0D9A4()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  v3 = *(v1 + 192);

  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_10_0();
  sub_249E2AA5C(v2);
  OUTLINED_FUNCTION_138();
  sub_249E2A8CC(v0, &qword_27EF23788, &qword_249E7E1C0);
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_253();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_249E0DA64()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  v1 = *(v0 + 192);

  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  OUTLINED_FUNCTION_227();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_253();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_249E0DB10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23898, &unk_249E7E3E0);
  sub_249E7AA08();
  v1 = OUTLINED_FUNCTION_9_1();
  type metadata accessor for DropInStateEvent(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF238A0, &qword_249E80E10);
  v2 = sub_249E7AAC8();
  v4 = v3;
  OUTLINED_FUNCTION_22();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_249DFDCD0(&unk_249E7E3F8, v5, v2, v4, isUniquelyReferenced_nonNull_native);

  type metadata accessor for DropInSessionFailureEvent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF238A8, &qword_249E7E400);
  v7 = sub_249E7AAC8();
  v9 = v8;
  OUTLINED_FUNCTION_22();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_249DFDCD0(&unk_249E7E410, v10, v7, v9, v11);

  return v0;
}

uint64_t sub_249E0DCCC()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_28130D208 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_22();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_174(v2);
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_117();
  v28 = v3;
  v29 = &block_descriptor_193;
  v4 = _Block_copy(v27);

  v5 = OUTLINED_FUNCTION_61();
  v7 = [v5 v6];
  _Block_release(v4);
  swift_unknownObjectRelease();
  if (qword_28130D200 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_22();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_174(v8);
  v30 = sub_249E2A844;
  v31 = v4;
  v27[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_123();
  v28 = v9;
  v29 = &block_descriptor_197;
  v10 = _Block_copy(v27);

  v11 = OUTLINED_FUNCTION_61();
  v13 = [v11 v12];
  _Block_release(v10);
  swift_unknownObjectRelease();
  if (qword_28130D1F8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_22();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_174(v14);
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_117();
  v28 = v15;
  v29 = &block_descriptor_201;
  v16 = _Block_copy(v27);

  v17 = OUTLINED_FUNCTION_61();
  v19 = [v17 v18];
  _Block_release(v16);
  swift_unknownObjectRelease();
  *(v0 + OBJC_IVAR____TtC10DropInCore13DropInManager_dropInStateSubscriber) = sub_249E15680();

  if (qword_28130D218 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_22();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_174(v20);
  v30 = sub_249E2A8C4;
  v31 = v16;
  v27[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_123();
  v28 = v21;
  v29 = &block_descriptor_205;
  v22 = _Block_copy(v27);

  v23 = OUTLINED_FUNCTION_61();
  v25 = [v23 v24];
  _Block_release(v22);

  return swift_unknownObjectRelease();
}

uint64_t sub_249E0E040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return OUTLINED_FUNCTION_8_0();
}

uint64_t sub_249E0E054()
{
  OUTLINED_FUNCTION_11();
  v3 = v0[2];
  if (v3 >> 62)
  {
    v4 = OUTLINED_FUNCTION_256();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[4] = v4;
  if (v4)
  {
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      v5 = v0[2];
      v0[5] = *(v0[3] + OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
      v0[6] = 0;
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C204D50](0);
      }

      else
      {
        v6 = *(v5 + 32);
      }

      v0[7] = v6;
      v4 = OUTLINED_FUNCTION_69();
    }

    return MEMORY[0x2822009F8](v4, v1, v2);
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v7();
  }
}

uint64_t sub_249E0E13C()
{
  OUTLINED_FUNCTION_11();
  sub_249E4F8BC(*(v0 + 56));
  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E0E19C()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_275();
  if (v1)
  {
    OUTLINED_FUNCTION_9_0();

    return v2();
  }

  else
  {
    v4 = *(v0 + 48) + 1;
    *(v0 + 48) = v4;
    v5 = *(v0 + 16);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C204D50]();
    }

    else
    {
      v6 = OUTLINED_FUNCTION_328(v4, v5);
    }

    *(v0 + 56) = v6;
    v7 = OUTLINED_FUNCTION_254();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

id sub_249E0E25C()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC10DropInCore13DropInManager_dropInStateSubscriber])
  {

    sub_249E7A8B8();
  }

  sub_249E0E2D8();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_249E0E2D8()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_28130D208 != -1)
  {
    swift_once();
    v1 = v2;
  }

  [v1 removeObserver:v0 name:qword_28130E6E8 object:0];
  if (qword_28130D200 != -1)
  {
    swift_once();
  }

  [v2 removeObserver:v0 name:qword_28130E6E0 object:0];
  if (qword_28130D1F8 != -1)
  {
    swift_once();
  }

  [v2 removeObserver:v0 name:qword_28130E6D8 object:0];
}

uint64_t type metadata accessor for DropInManager(uint64_t a1)
{
  result = qword_28130E198;
  if (!qword_28130E198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E0E5CC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = type metadata accessor for DropInSessionFailureEvent(0);
  v3[12] = swift_task_alloc();
  v4 = sub_249E7A628();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E0E728, 0, 0);
}

uint64_t sub_249E0E728()
{
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
  *(v0 + 168) = v1;
  return OUTLINED_FUNCTION_11_1(sub_249E0E750, v1);
}

uint64_t sub_249E0E750()
{
  OUTLINED_FUNCTION_11();
  v1 = *(*(v0 + 168) + qword_28130E738);
  *(v0 + 176) = v1;
  v2 = v1;
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E0E7C8()
{
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_82();
  if (*(v0 + 176))
  {
    sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
    OUTLINED_FUNCTION_81();
    if (sub_249E7AF78())
    {
      OUTLINED_FUNCTION_254();
      OUTLINED_FUNCTION_271();

      return MEMORY[0x2822009F8](v1, v2, v3);
    }

    v13 = *(v0 + 64);
    v14 = *(v0 + 176);
    v15 = v13;
    v16 = sub_249E7A698();
    v17 = sub_249E7AE08();

    v18 = os_log_type_enabled(v16, v17);
    v5 = *(v0 + 176);
    if (v18)
    {
      v19 = *(v0 + 64);
      v20 = OUTLINED_FUNCTION_188();
      v21 = OUTLINED_FUNCTION_234();
      *v20 = 138412546;
      *(v20 + 4) = v19;
      *(v20 + 12) = 2112;
      *(v20 + 14) = v5;
      *v21 = v19;
      v21[1] = v5;
      v5 = v5;
      v22 = v19;
      OUTLINED_FUNCTION_200(&dword_249DEE000, v23, v24, "Ignoring request to cancel session %@. Active session is %@");
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
      OUTLINED_FUNCTION_338(v25, v26, v25);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }
  }

  else
  {
    v5 = sub_249E7A698();
    v6 = sub_249E7AE28();
    if (OUTLINED_FUNCTION_120(v6))
    {
      v7 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_6_0(v7);
      OUTLINED_FUNCTION_35();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }
  }

  OUTLINED_FUNCTION_193();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_271();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34);
}

uint64_t sub_249E0EA00()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = qword_28130E758;
  OUTLINED_FUNCTION_76(v2 + qword_28130E758);
  sub_249E2A75C(v2 + v3, v1, &qword_27EF234B0, &qword_249E7D910);
  v4 = OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E0EA90()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = qword_28130E740;
  swift_beginAccess();
  sub_249E2A75C(v1 + v3, v2, &qword_27EF234B0, &qword_249E7D910);
  v4 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E0EB30()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  v1 = *(v0 + 176);
  *(v0 + 184) = OBJC_IVAR____TtC10DropInCore13DropInManager_logger;
  v2 = v1;
  v3 = sub_249E7A698();
  sub_249E7AE28();

  v4 = OUTLINED_FUNCTION_110();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 176);
    OUTLINED_FUNCTION_70();
    v7 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_6();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_249E2A8CC(v8, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_249E0EC50()
{
  OUTLINED_FUNCTION_11();
  sub_249E2530C();
  v0 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

void sub_249E0ECAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  v13 = *(*(v12 + 80) + OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager);
  if (!v13)
  {
    __break(1u);
    goto LABEL_24;
  }

  v14 = v13;
  sub_249E067EC(0, v15, v16, v17, v18);

  v19 = sub_249E7A698();
  v20 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_120(v20))
  {
    v21 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6_0(v21);
    OUTLINED_FUNCTION_35();
    _os_log_impl(v22, v23, v24, v25, v26, 2u);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v27 = *(v12 + 144);
  v28 = *(v12 + 104);

  v29 = OUTLINED_FUNCTION_126();
  sub_249E2A75C(v29, v30, v31, v32);
  OUTLINED_FUNCTION_226(v27, 1, v28);
  if (v33)
  {
    v34 = *(v12 + 152);

    v35 = v34;
LABEL_11:
    sub_249E2A8CC(v35, &qword_27EF234B0, &qword_249E7D910);
    goto LABEL_20;
  }

  v36 = *(*(v12 + 112) + 32);
  v36(*(v12 + 128), *(v12 + 144), *(v12 + 104));
  swift_getObjectType();
  v37 = OUTLINED_FUNCTION_126();
  v38 = sub_249DF530C(v37);
  *(v12 + 192) = v38;
  if (!v38)
  {

    v45 = OUTLINED_FUNCTION_148();
    v46(v45);
    goto LABEL_20;
  }

  v39 = v38;
  v40 = *(v12 + 136);
  v41 = *(v12 + 104);
  sub_249E2A75C(*(v12 + 152), v40, &qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_226(v40, 1, v41);
  if (v33)
  {
    v42 = *(v12 + 152);

    v43 = OUTLINED_FUNCTION_109();
    v44(v43);
    v35 = v42;
    goto LABEL_11;
  }

  v36(*(v12 + 120), *(v12 + 136), *(v12 + 104));
  v47 = OUTLINED_FUNCTION_308();
  v48 = sub_249DF530C(v47);
  if (v48)
  {
    v49 = v48;
    v50 = sub_249E7A5E8();
    v51 = [v49 accessoryWithUniqueIdentifier_];
    *(v12 + 200) = v51;

    if (v51)
    {
      v52 = *(v12 + 176);
      v53 = *(v12 + 128);
      v54 = *(v12 + 104);
      v55 = *(v12 + 112);
      v57 = *(v12 + 88);
      v56 = *(v12 + 96);
      v88 = *(v12 + 80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236F0, &qword_249E7E030);
      v58 = swift_allocObject();
      *(v12 + 208) = v58;
      *(v58 + 16) = xmmword_249E7D7D0;
      *(v58 + 56) = sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
      *(v58 + 64) = &off_285D07E60;
      *(v58 + 72) = &off_285D07E80;
      *(v58 + 32) = v51;
      (*(v55 + 16))(v56, v53, v54);
      v59 = v51;
      v60 = [v52 identifier];
      sub_249E7A608();

      *(v56 + *(v57 + 24)) = sub_249E7A4C8();
      v61 = *(v88 + OBJC_IVAR____TtC10DropInCore13DropInManager_messageCenter);
      *(v12 + 216) = v61;
      if (v61)
      {

        v62 = swift_task_alloc();
        *(v12 + 224) = v62;
        *v62 = v12;
        v62[1] = sub_249E0F164;
        OUTLINED_FUNCTION_97(*(v12 + 96));
        OUTLINED_FUNCTION_137();
        OUTLINED_FUNCTION_34();

        v66(v63, v64, v65, v66, v67, v68, v69, v70, sub_249E28180, a10, a11, a12);
        return;
      }

LABEL_24:
      __break(1u);
      return;
    }
  }

  v71 = *(v12 + 128);
  v72 = *(v12 + 104);
  v73 = *(v12 + 112);

  v74 = *(v73 + 8);
  v75 = OUTLINED_FUNCTION_109();
  v74(v75);
  (v74)(v71, v72);
LABEL_20:
  v76 = OUTLINED_FUNCTION_241();
  sub_249E2A8CC(v76, v77, &qword_249E7D910);
  v78 = OUTLINED_FUNCTION_81();
  sub_249E2A8CC(v78, v79, &qword_249E7D910);
  OUTLINED_FUNCTION_193();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_34();

  v81(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12);
}

uint64_t sub_249E0F164()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E0F280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  v13 = *(v12 + 192);
  v14 = *(v12 + 176);
  v15 = *(v12 + 128);
  v16 = *(v12 + 104);
  v17 = *(v12 + 112);
  v18 = *(v12 + 96);

  OUTLINED_FUNCTION_50_0();
  sub_249E2AA5C(v18);
  v19 = *(v17 + 8);
  v20 = OUTLINED_FUNCTION_249();
  v19(v20);
  (v19)(v15, v16);
  OUTLINED_FUNCTION_79();
  sub_249E2A8CC(v21, v22, v23);
  OUTLINED_FUNCTION_79();
  sub_249E2A8CC(v24, v25, v26);
  OUTLINED_FUNCTION_193();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_34();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_249E0F38C(uint64_t a1, uint64_t a2)
{
  v3[48] = a2;
  v3[49] = v2;
  v3[47] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236D0, &qword_249E7E010);
  v3[50] = swift_task_alloc();
  v3[51] = type metadata accessor for StartDropInResponse(0);
  v3[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23818, &unk_249E7E2A0);
  v3[53] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v3[54] = v4;
  v3[55] = *(v4 - 8);
  v3[56] = swift_task_alloc();
  v5 = sub_249E7A658();
  v3[57] = v5;
  v3[58] = *(v5 - 8);
  v3[59] = swift_task_alloc();
  v3[60] = type metadata accessor for StartDropInRequest(0);
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v6 = sub_249E7A628();
  v3[63] = v6;
  v3[64] = *(v6 - 8);
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0);
  v3[78] = swift_task_alloc();
  v3[79] = type metadata accessor for DropInSessionAnalyticEvent(0);
  v3[80] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E0F714, 0, 0);
}

uint64_t sub_249E0F714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  v11 = v10[48];
  v12 = v10[47];
  v10[81] = OBJC_IVAR____TtC10DropInCore13DropInManager_logger;
  v13 = v12;
  v14 = v11;
  v15 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_272())
  {
    v16 = v10[48];
    v17 = OUTLINED_FUNCTION_188();
    v18 = OUTLINED_FUNCTION_234();
    OUTLINED_FUNCTION_233(v18, 5.778e-34);
    v19 = v16;
    OUTLINED_FUNCTION_202();
    _os_log_impl(v20, v21, v22, v23, v17, 0x16u);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_258(v24);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v25 = v10[80];
  v26 = v10[79];
  v27 = v10[78];
  v28 = v10[49];

  *v25 = 0;
  v25[1] = 0;
  v29 = sub_249E7A5B8();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v29);
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v29);
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v29);
  v42 = v25 + v26[9];
  *v42 = 0;
  v42[8] = 1;
  v43 = (v25 + v26[10]);
  *v43 = 0;
  v43[1] = 0;
  v44 = OBJC_IVAR____TtC10DropInCore13DropInManager_dropInSessionAnalyticEvent;
  v10[82] = OBJC_IVAR____TtC10DropInCore13DropInManager_dropInSessionAnalyticEvent;
  v45 = v28 + v44;
  OUTLINED_FUNCTION_252(v28 + v44, (v10 + 40));
  v46 = OUTLINED_FUNCTION_145();
  sub_249E2A1E4(v46, v47);
  swift_endAccess();
  sub_249E7A598();
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v29);
  OUTLINED_FUNCTION_252(v45, (v10 + 43));
  sub_249E28EE8(v27, v45 + v26[5], &qword_27EF236C0, &unk_249E7F8F0);
  result = swift_endAccess();
  v52 = OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager;
  v10[83] = OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager;
  v53 = *(v28 + v52);
  v10[84] = v53;
  if (v53)
  {
    v54 = v53;
    OUTLINED_FUNCTION_280();
    v55 = swift_task_alloc();
    v10[85] = v55;
    *v55 = v10;
    OUTLINED_FUNCTION_205(v55);
    OUTLINED_FUNCTION_31();

    return sub_249E6E584();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_249E0F990()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  v4 = *(v3 + 672);
  v5 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;
  *(v8 + 225) = v7;

  v9 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249E0FA8C(uint64_t a1)
{
  v200 = v1;
  v2 = v1;
  if (*(v1 + 225))
  {
    v3 = sub_249E7A698();
    v4 = sub_249E7AE08();
    if (OUTLINED_FUNCTION_120(v4))
    {
      *OUTLINED_FUNCTION_9() = 0;
      OUTLINED_FUNCTION_229();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    OUTLINED_FUNCTION_99();
    sub_249E7ADC8();
    swift_willThrow();
    goto LABEL_61;
  }

  v10 = *(v1 + 608);
  v11 = *(v1 + 504);
  sub_249E7A6C8();
  v12 = OUTLINED_FUNCTION_126();
  sub_249E2A75C(v12, v13, &qword_27EF234B0, &qword_249E7D910);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v15 = OUTLINED_FUNCTION_242();
  sub_249E2A8CC(v15, v16, &qword_249E7D910);
  if (EnumTagSinglePayload == 1)
  {
    v17 = *(*(v1 + 392) + OBJC_IVAR____TtC10DropInCore13DropInManager_homeManagerProvider);
    v18 = [v17 currentAccessory];
    if (v18)
    {

      v19 = [v17 currentAccessory];
      if (v19 && (v20 = v19, v21 = [v19 home], v20, v21))
      {
        v22 = [v21 uniqueIdentifier];

        sub_249E7A608();
        v23 = 0;
      }

      else
      {
        v23 = 1;
      }

      v24 = *(v1 + 600);
      v25 = *(v1 + 504);
      OUTLINED_FUNCTION_212();
      sub_249E2A8CC(v26, v27, v28);
      __swift_storeEnumTagSinglePayload(v24, v23, 1, v25);
      v29 = OUTLINED_FUNCTION_241();
      sub_249E2A7A4(v29, v30, &qword_27EF234B0, &qword_249E7D910);
    }
  }

  v31 = *(v1 + 504);
  sub_249E2A75C(*(v1 + 616), *(v1 + 592), &qword_27EF234B0, &qword_249E7D910);
  v32 = OUTLINED_FUNCTION_214();
  OUTLINED_FUNCTION_226(v32, v33, v31);
  if (!v34)
  {
    v40 = *(v1 + 384);
    v41 = *(*(v1 + 512) + 32);
    v41(*(v1 + 560), *(v1 + 592), *(v1 + 504));
    v42 = [v40 handle];
    *(v1 + 688) = v42;
    v43 = [v42 type];
    v44 = *(v1 + 392);
    v196 = v1;
    if (v43)
    {
      v45 = v42;
      v46 = sub_249E7A698();
      sub_249E7AE08();

      v47 = OUTLINED_FUNCTION_272();
      v48 = *(v1 + 616);
      if (v47)
      {
        OUTLINED_FUNCTION_70();
        v49 = swift_slowAlloc();
        OUTLINED_FUNCTION_74();
        v197 = v48;
        v50 = swift_slowAlloc();
        v199[0] = v50;
        *v49 = 136315138;
        [v45 type];
        v51 = sub_249E7ADA8();
        v53 = sub_249E3A958(v51, v52, v199);

        *(v49 + 4) = v53;
        OUTLINED_FUNCTION_202();
        OUTLINED_FUNCTION_273(v54, v55, v56, v57);
        __swift_destroy_boxed_opaque_existential_0(v50);
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();

        v58 = sub_249E28F30();
        v59 = OUTLINED_FUNCTION_40(&type metadata for DropInManager.DropInManagerError, v58);
        OUTLINED_FUNCTION_170(v59, v60, 4);

        v61 = OUTLINED_FUNCTION_109();
        v62(v61);
        v39 = v197;
      }

      else
      {

        v110 = sub_249E28F30();
        v111 = OUTLINED_FUNCTION_40(&type metadata for DropInManager.DropInManagerError, v110);
        OUTLINED_FUNCTION_170(v111, v112, 4);

        v113 = OUTLINED_FUNCTION_109();
        v114(v113);
        v39 = v48;
      }

      goto LABEL_60;
    }

    v188 = v42;
    v63 = [v42 value];
    v187 = sub_249E7AAA8();
    v65 = v64;

    v189 = v65;
    *(v1 + 696) = v65;
    v66 = v44;
    v67 = sub_249E7A698();
    sub_249E7AE28();

    v68 = OUTLINED_FUNCTION_110();
    v192 = v41;
    if (os_log_type_enabled(v68, v69))
    {
      v70 = *(v1 + 392);
      OUTLINED_FUNCTION_70();
      v71 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      v199[0] = swift_slowAlloc();
      *v71 = 136315138;
      v72 = [*(v70 + OBJC_IVAR____TtC10DropInCore13DropInManager_homeManagerProvider) allHomes];
      sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
      OUTLINED_FUNCTION_109();
      sub_249E7ABE8();

      v73 = OUTLINED_FUNCTION_167();
      MEMORY[0x24C204800](v73);

      v74 = OUTLINED_FUNCTION_109();
      v77 = sub_249E3A958(v74, v75, v76);

      *(v71 + 4) = v77;
      OUTLINED_FUNCTION_35();
      _os_log_impl(v78, v79, v80, v81, v82, 0xCu);
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v83 = *(*(v1 + 392) + OBJC_IVAR____TtC10DropInCore13DropInManager_homeManagerProvider);
    swift_getObjectType();
    v84 = [v83 allHomes];
    sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
    OUTLINED_FUNCTION_286();
    v85 = sub_249E7ABE8();

    v193 = sub_249E51FB4();
    v194 = v85;
    v86 = 0;
    v190 = v85 + 32;
    v191 = v85 & 0xC000000000000001;
LABEL_21:
    if (v86 == v193)
    {
      v115 = v2[70];

      v116 = sub_249DF530C(v115);
      v2[88] = v116;
      if (!v116)
      {
LABEL_45:

        OUTLINED_FUNCTION_137();
        v132();
        v133 = sub_249E7A698();
        v134 = sub_249E7AE08();
        v135 = OUTLINED_FUNCTION_127(v134);
        v136 = v2[65];
        v137 = v2[64];
        if (v135)
        {
          OUTLINED_FUNCTION_70();
          v138 = swift_slowAlloc();
          OUTLINED_FUNCTION_74();
          v199[0] = swift_slowAlloc();
          *v138 = 136315138;
          OUTLINED_FUNCTION_22_0();
          sub_249E28F84(v139, v140);
          v141 = sub_249E7B2D8();
          v143 = v142;
          v144 = *(v137 + 8);
          v145 = OUTLINED_FUNCTION_182();
          v144(v145);
          sub_249E3A958(v141, v143, v199);
          OUTLINED_FUNCTION_102();

          *(v138 + 4) = v136;
          OUTLINED_FUNCTION_52(&dword_249DEE000, v146, v147, "Home Not Found for identifier %s");
          OUTLINED_FUNCTION_53_0();
          OUTLINED_FUNCTION_65();
          MEMORY[0x24C205870]();
        }

        else
        {

          v144 = *(v137 + 8);
          v152 = OUTLINED_FUNCTION_182();
          v144(v152);
        }

        v153 = v196[77];
        v154 = v196[70];
        v155 = v196[63];
        v156 = sub_249E28F30();
        v157 = OUTLINED_FUNCTION_40(&type metadata for DropInManager.DropInManagerError, v156);
        OUTLINED_FUNCTION_170(v157, v158, 1);

        (v144)(v154, v155);
LABEL_59:
        v39 = v153;
        goto LABEL_60;
      }

      v117 = v116;
      v118 = v2[63];
      sub_249E7A5C8();
      v119 = OUTLINED_FUNCTION_214();
      OUTLINED_FUNCTION_226(v119, v120, v118);
      if (v34)
      {
        sub_249E2A8CC(v2[73], &qword_27EF234B0, &qword_249E7D910);

        v121 = sub_249E7A698();
        sub_249E7AE08();
        OUTLINED_FUNCTION_247();

        v122 = OUTLINED_FUNCTION_110();
        if (os_log_type_enabled(v122, v123))
        {
          OUTLINED_FUNCTION_70();
          v124 = swift_slowAlloc();
          OUTLINED_FUNCTION_74();
          v125 = swift_slowAlloc();
          v199[0] = v125;
          *v124 = 136315138;
          v126 = sub_249E3A958(v187, v189, v199);

          *(v124 + 4) = v126;
          OUTLINED_FUNCTION_229();
          _os_log_impl(v127, v128, v129, v130, v131, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v125);
          OUTLINED_FUNCTION_65();
          MEMORY[0x24C205870]();
          OUTLINED_FUNCTION_65();
          MEMORY[0x24C205870]();
        }

        else
        {
        }

        v153 = v2[77];
        v159 = v2[70];
        v160 = v2[63];
        v161 = v2[64];
        v162 = sub_249E28F30();
        OUTLINED_FUNCTION_40(&type metadata for DropInManager.DropInManagerError, v162);
        *v163 = 0;
        swift_willThrow();

        (*(v161 + 8))(v159, v160);
        goto LABEL_59;
      }

      v41(v2[69], v2[73], v2[63]);
      v148 = OUTLINED_FUNCTION_81();
      v149 = sub_249DF53DC(v148);
      v2[89] = v149;
      if (!v149)
      {

        OUTLINED_FUNCTION_137();
        v164();
        v165 = sub_249E7A698();
        v166 = sub_249E7AE08();
        v167 = os_log_type_enabled(v165, v166);
        v168 = v2[64];
        if (v167)
        {
          OUTLINED_FUNCTION_70();
          v169 = swift_slowAlloc();
          OUTLINED_FUNCTION_74();
          v199[0] = swift_slowAlloc();
          *v169 = 136315138;
          OUTLINED_FUNCTION_22_0();
          sub_249E28F84(v170, v171);
          v198 = v166;
          v172 = sub_249E7B2D8();
          v174 = v173;
          v175 = *(v168 + 8);
          v176 = OUTLINED_FUNCTION_153();
          v175(v176);
          v177 = sub_249E3A958(v172, v174, v199);

          *(v169 + 4) = v177;
          _os_log_impl(&dword_249DEE000, v165, v198, "Accessory with identifier: %s not found", v169, 0xCu);
          OUTLINED_FUNCTION_53_0();
          OUTLINED_FUNCTION_65();
          MEMORY[0x24C205870]();
        }

        else
        {

          v175 = *(v168 + 8);
          v178 = OUTLINED_FUNCTION_153();
          v175(v178);
        }

        v153 = v196[77];
        v179 = v196[70];
        v180 = v196[63];
        v181 = sub_249E28F30();
        v182 = OUTLINED_FUNCTION_40(&type metadata for DropInManager.DropInManagerError, v181);
        OUTLINED_FUNCTION_170(v182, v183, 5);

        v184 = OUTLINED_FUNCTION_148();
        v175(v184);
        (v175)(v179, v180);
        goto LABEL_59;
      }

      v150 = *(v2[49] + OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
      v2[90] = v150;
      v151 = [v149 uniqueIdentifier];
      sub_249E7A608();

      v87 = sub_249E109BC;
      v88 = v150;
      v89 = 0;
    }

    else
    {
      sub_249E51FD8();
      if (v191)
      {
        v87 = MEMORY[0x24C204D50](v86, v194);
      }

      else
      {
        v87 = *(v190 + 8 * v86);
      }

      v90 = v87;
      v91 = __OFADD__(v86, 1);
      v92 = v86 + 1;
      if (!v91)
      {
        v195 = v92;
        v93 = [v87 accessories];
        v94 = OUTLINED_FUNCTION_9_1();
        sub_249DF691C(v94, &qword_28130D270, 0x277CD1650);
        OUTLINED_FUNCTION_286();
        v95 = sub_249E7ABE8();

        v96 = sub_249E51FB4();
        for (i = 0; ; ++i)
        {
          if (v96 == i)
          {

            v41 = v192;
            v86 = v195;
            goto LABEL_21;
          }

          if ((v95 & 0xC000000000000001) != 0)
          {
            v98 = MEMORY[0x24C204D50](i, v95);
          }

          else
          {
            if (i >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v98 = *(v95 + 8 * i + 32);
          }

          v99 = v98;
          if (__OFADD__(i, 1))
          {
            break;
          }

          v100 = v90;
          v101 = v99;
          v102 = sub_249E7A698();
          v103 = sub_249E7AE28();

          if (OUTLINED_FUNCTION_274())
          {
            v104 = OUTLINED_FUNCTION_188();
            v105 = OUTLINED_FUNCTION_234();
            *v104 = 138412546;
            *(v104 + 4) = v100;
            *(v104 + 12) = 2112;
            *(v104 + 14) = v101;
            *v105 = v90;
            v105[1] = v101;
            v106 = v100;
            v107 = v101;
            _os_log_impl(&dword_249DEE000, v102, v103, "Home = %@, Accessory = %@", v104, 0x16u);
            v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
            OUTLINED_FUNCTION_338(v108, v109, v108);
            OUTLINED_FUNCTION_65();
            MEMORY[0x24C205870]();
            v2 = v196;
            OUTLINED_FUNCTION_65();
            MEMORY[0x24C205870]();
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      __break(1u);
    }

    return MEMORY[0x2822009F8](v87, v88, v89);
  }

  v35 = *(v1 + 616);
  sub_249E2A8CC(*(v1 + 592), &qword_27EF234B0, &qword_249E7D910);
  v36 = sub_249E28F30();
  v37 = OUTLINED_FUNCTION_40(&type metadata for DropInManager.DropInManagerError, v36);
  OUTLINED_FUNCTION_170(v37, v38, 7);
  v39 = v35;
LABEL_60:
  sub_249E2A8CC(v39, &qword_27EF234B0, &qword_249E7D910);
LABEL_61:

  OUTLINED_FUNCTION_9_0();

  return v185();
}

uint64_t sub_249E109BC()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[64];
  v0[91] = sub_249E4F34C(v0[68], v2, v3, v4, v5);
  v0[92] = *(v1 + 8);
  v0[93] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6 = OUTLINED_FUNCTION_126();
  v7(v6);
  v8 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_249E10A54()
{
  v76 = v0;
  v1 = v0[91];
  if (!v1)
  {
    v38 = v0[92];
    v39 = v0[89];
    v40 = v0[88];
    v41 = v0[86];
    v73 = v0[77];
    v42 = v0[70];
    v43 = v0[63];

    v44 = sub_249E28F30();
    OUTLINED_FUNCTION_40(&type metadata for DropInManager.DropInManagerError, v44);
    OUTLINED_FUNCTION_190(v45, 18);

    v46 = OUTLINED_FUNCTION_249();
    v38(v46);
    (v38)(v42, v43);
    sub_249E2A8CC(v73, &qword_27EF234B0, &qword_249E7D910);
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_45_0();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_237();

    __asm { BRAA            X1, X16 }
  }

  v2 = v1;
  v3 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_272())
  {
    v4 = v0[91];
    OUTLINED_FUNCTION_70();
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_6();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v4;
    v7 = v2;
    OUTLINED_FUNCTION_202();
    _os_log_impl(v8, v9, v10, v11, v5, 0xCu);
    sub_249E2A8CC(v6, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v12 = v0[88];
  v13 = v0[82];
  v15 = v0[61];
  v14 = v0[62];
  v16 = v0[60];
  v17 = v0[49];

  v18 = [v12 uniqueIdentifier];
  sub_249E7A608();

  *(v14 + *(v16 + 20)) = 0;
  *(v17 + v13) = xmmword_249E7DF20;

  v19 = OUTLINED_FUNCTION_115();
  sub_249E2AAB0(v19, v15);
  sub_249E7A648();
  v20 = sub_249E7A678();
  v21 = sub_249E7AF08();
  v22 = sub_249E7AFB8();
  v23 = v0[61];
  v25 = v0[58];
  v24 = v0[59];
  v26 = v0[57];
  if (v22)
  {
    OUTLINED_FUNCTION_70();
    v74 = v21;
    v27 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v72 = v24;
    v28 = swift_slowAlloc();
    v75 = v28;
    *v27 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249E7DBA0;
    *(inited + 32) = 0x6469656D6F68;
    *(inited + 40) = 0xE600000000000000;
    v30 = sub_249E7A5D8();
    v31 = MEMORY[0x277D837D0];
    *(inited + 48) = v30;
    *(inited + 56) = v32;
    *(inited + 72) = v31;
    *(inited + 80) = 0x746E6F6973736573;
    *(inited + 88) = 0xEB00000000657079;
    v33 = *(v23 + *(v16 + 20));
    *(inited + 120) = MEMORY[0x277D83B88];
    *(inited + 96) = v33;
    v71 = v26;
    OUTLINED_FUNCTION_296();
    sub_249E7AA08();
    v34 = sub_249E7A9E8();
    v36 = v35;

    OUTLINED_FUNCTION_5_4();
    sub_249E2AA5C(v23);
    sub_249E3A958(v34, v36, &v75);
    OUTLINED_FUNCTION_156();

    *(v27 + 4) = v23;
    v37 = sub_249E7A638();
    _os_signpost_emit_with_name_impl(&dword_249DEE000, v20, v74, v37, "SendDropInRequest", "%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();

    (*(v25 + 8))(v72, v71);
  }

  else
  {

    (*(v25 + 8))(v24, v26);
    OUTLINED_FUNCTION_5_4();
    sub_249E2AA5C(v23);
  }

  v49 = v0[49];
  sub_249E7A798();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_79();
  sub_249E2AB74(v50, v51, v52);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_79();
  sub_249E2AB74(v53, v54, v55);
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_79();
  sub_249E2AB74(v56, v57, v58);
  OUTLINED_FUNCTION_212();
  sub_249E7A6E8();
  v59 = OUTLINED_FUNCTION_81();
  result = v60(v59);
  v62 = *(v49 + OBJC_IVAR____TtC10DropInCore13DropInManager_messageCenter);
  v0[94] = v62;
  if (v62)
  {
    v63 = v0[89];
    v0[38] = v0[60];
    v0[39] = sub_249E28F84(&qword_27EF23830, type metadata accessor for StartDropInRequest);
    __swift_allocate_boxed_opaque_existential_0(v0 + 35);
    v64 = OUTLINED_FUNCTION_115();
    sub_249E2AAB0(v64, v65);
    v0[32] = sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
    v0[33] = &off_285D07E60;
    v0[29] = v63;
    v0[34] = &off_285D07E80;

    v66 = v63;
    swift_task_alloc();
    OUTLINED_FUNCTION_75();
    v0[95] = v67;
    *v67 = v68;
    v67[1] = sub_249E11114;
    OUTLINED_FUNCTION_237();

    __asm { BR              X5 }
  }

  __break(1u);
  return result;
}

uint64_t sub_249E11114()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;
  v3[96] = v0;

  if (v0)
  {
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v3 + 29);
    __swift_destroy_boxed_opaque_existential_0(v3 + 35);
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

id sub_249E11238()
{
  v1 = v0[52];
  v2 = v0[51];
  sub_249E2AAB0(v0[53], v1);
  v3 = *(v1 + *(v2 + 32));
  if (v3)
  {
    v4 = v0[92];
    v5 = v0[91];
    v6 = v0[89];
    v7 = v0[88];
    v8 = v0[86];
    v33 = v0[77];
    v31 = v0[69];
    v32 = v0[70];
    v9 = v0[63];
    v30 = v0[62];
    v10 = v0[53];
    v34 = v0[52];
    v3;

    swift_willThrow();

    sub_249E2A8CC(v10, &qword_27EF23818, &unk_249E7E2A0);
    OUTLINED_FUNCTION_5_4();
    sub_249E2AA5C(v30);
    v4(v31, v9);
    v4(v32, v9);
    sub_249E2A8CC(v33, &qword_27EF234B0, &qword_249E7D910);
    OUTLINED_FUNCTION_23_0();
    sub_249E2AA5C(v34);
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_159();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_237();

    __asm { BRAA            X1, X16 }
  }

  v13 = v0[48];
  v14 = [objc_allocWithZone(MEMORY[0x277D069D8]) init];
  v0[97] = v14;
  v15 = [v13 existingSessionIdentifier];
  if (v15)
  {
    v16 = v15;
    v17 = v0[92];
    sub_249E7A608();

    v18 = sub_249E7A5E8();
    [v14 setIdentifier_];

    v19 = OUTLINED_FUNCTION_145();
    v17(v19);
  }

  else
  {
    v20 = sub_249E7A5E8();
    [v14 setIdentifier_];
  }

  v21 = v0[83];
  v22 = v0[49];
  result = [v14 setState_];
  v24 = *(v22 + v21);
  v0[98] = v24;
  if (v24)
  {
    v25 = v24;
    OUTLINED_FUNCTION_280();

    v26 = swift_task_alloc();
    v0[99] = v26;
    *v26 = v0;
    OUTLINED_FUNCTION_205(v26);
    OUTLINED_FUNCTION_153();
    OUTLINED_FUNCTION_237();

    return sub_249E05B64(v27, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_249E115F8()
{
  OUTLINED_FUNCTION_23();
  v2 = *v1;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 800) = v0;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_249E1171C()
{
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  type metadata accessor for Pseudonym(0);
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = *(v2 + 16);
  OUTLINED_FUNCTION_212();
  v7();
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v1);
  v11 = OUTLINED_FUNCTION_145();
  (v7)(v11);
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v1);
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 224) = -2;
  OUTLINED_FUNCTION_63(&qword_249E7E2B8);
  v19 = v15;
  v16 = swift_task_alloc();
  *(v0 + 808) = v16;
  *v16 = v0;
  v16[1] = sub_249E11884;
  v17 = OUTLINED_FUNCTION_97(*(v0 + 776));

  return v19(v17);
}

uint64_t sub_249E11884(uint64_t a1)
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v3 = v2;
  v5 = *(v4 + 400);
  v6 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v7 = v6;
  *(v9 + 226) = v8;

  v10 = OUTLINED_FUNCTION_148();
  sub_249E2A8CC(v10, v11, &qword_249E7D910);
  v12 = OUTLINED_FUNCTION_105();
  sub_249E2A8CC(v12, v13, &qword_249E7D910);
  sub_249E2A8CC(v5, &qword_27EF236D0, &qword_249E7E010);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_249E119EC(uint64_t a1)
{
  if (*(v1 + 226) == 1)
  {
    v2 = *(v1 + 736);
    v3 = *(v1 + 728);
    v4 = *(v1 + 712);
    v5 = *(v1 + 704);
    v24 = *(v1 + 616);
    v6 = *(v1 + 496);
    v7 = *(v1 + 424);
    v23 = *(v1 + 416);

    sub_249E2A8CC(v7, &qword_27EF23818, &unk_249E7E2A0);
    OUTLINED_FUNCTION_5_4();
    sub_249E2AA5C(v6);
    v8 = OUTLINED_FUNCTION_302();
    v2(v8);
    v9 = OUTLINED_FUNCTION_302();
    v2(v9);
    sub_249E2A8CC(v24, &qword_27EF234B0, &qword_249E7D910);
    OUTLINED_FUNCTION_23_0();
    sub_249E2AA5C(v23);

    OUTLINED_FUNCTION_168();
    v11 = *(v1 + 776);

    return v10(v11);
  }

  else
  {
    v13 = *(v1 + 776);
    v14 = *(v1 + 736);
    v15 = *(v1 + 728);
    v16 = *(v1 + 712);
    v17 = *(v1 + 704);
    v25 = *(v1 + 688);
    v28 = *(v1 + 560);
    v29 = *(v1 + 616);
    v18 = *(v1 + 504);
    v26 = *(v1 + 496);
    v27 = *(v1 + 552);
    v19 = *(v1 + 424);
    v30 = *(v1 + 416);
    v20 = sub_249E28F30();
    OUTLINED_FUNCTION_40(&type metadata for DropInManager.DropInManagerError, v20);
    OUTLINED_FUNCTION_190(v21, 31);

    sub_249E2A8CC(v19, &qword_27EF23818, &unk_249E7E2A0);
    OUTLINED_FUNCTION_5_4();
    sub_249E2AA5C(v26);
    v14(v27, v18);
    v14(v28, v18);
    sub_249E2A8CC(v29, &qword_27EF234B0, &qword_249E7D910);
    OUTLINED_FUNCTION_23_0();
    sub_249E2AA5C(v30);
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_159();

    OUTLINED_FUNCTION_9_0();

    return v22();
  }
}

uint64_t sub_249E11E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_285();
  v25 = *(v24 + 736);
  v26 = *(v24 + 728);
  v27 = *(v24 + 712);
  v28 = *(v24 + 704);
  v41 = *(v24 + 616);
  v29 = *(v24 + 496);

  OUTLINED_FUNCTION_5_4();
  sub_249E2AA5C(v29);
  v30 = OUTLINED_FUNCTION_145();
  v25(v30);
  v31 = OUTLINED_FUNCTION_148();
  v25(v31);
  sub_249E2A8CC(v41, &qword_27EF234B0, &qword_249E7D910);
  __swift_destroy_boxed_opaque_existential_0((v24 + 232));
  __swift_destroy_boxed_opaque_existential_0((v24 + 280));
  v42 = *(v24 + 768);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_45_0();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_195();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v42, a22, a23, a24);
}

uint64_t sub_249E11FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_285();
  v25 = *(v24 + 736);
  v26 = *(v24 + 728);
  v27 = *(v24 + 712);
  v28 = *(v24 + 704);
  v29 = *(v24 + 688);
  v43 = *(v24 + 560);
  v44 = *(v24 + 616);
  v42 = *(v24 + 552);
  v31 = *(v24 + 496);
  v30 = *(v24 + 504);
  v32 = *(v24 + 424);
  v45 = *(v24 + 416);

  sub_249E2A8CC(v32, &qword_27EF23818, &unk_249E7E2A0);
  OUTLINED_FUNCTION_5_4();
  sub_249E2AA5C(v31);
  v25(v42, v30);
  v25(v43, v30);
  sub_249E2A8CC(v44, &qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_23_0();
  sub_249E2AA5C(v45);
  v46 = *(v24 + 800);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_45_0();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_195();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, v42, v43, v44, v46, a22, a23, a24);
}

uint64_t sub_249E121A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 296) = a4;
  *(v6 + 304) = v5;
  *(v6 + 456) = a5;
  *(v6 + 280) = a2;
  *(v6 + 288) = a3;
  *(v6 + 272) = a1;
  *(v6 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23818, &unk_249E7E2A0);
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910) - 8);
  *(v6 + 336) = v7;
  *(v6 + 344) = *(v7 + 64);
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  v8 = sub_249E7A628();
  *(v6 + 368) = v8;
  v9 = *(v8 - 8);
  *(v6 + 376) = v9;
  *(v6 + 384) = *(v9 + 64);
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E12348, 0, 0);
}

uint64_t sub_249E12348()
{
  OUTLINED_FUNCTION_284();
  v10 = *(v9 + 120);
  *(v2 + 408) = v10;
  sub_249E29D24(v1, v2 + 112);
  sub_249E29D24(v1, v2 + 152);
  v11 = v0 + v10;
  v12 = sub_249E7A698();
  sub_249E7AE28();
  OUTLINED_FUNCTION_161();
  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_188();
    v4 = OUTLINED_FUNCTION_149();
    *v10 = 136315394;
    v15 = *(v2 + 136);
    v14 = *(v2 + 144);
    __swift_project_boxed_opaque_existential_0((v2 + 112), v15);
    OUTLINED_FUNCTION_14_1();
    v16(v15);
    OUTLINED_FUNCTION_303();
    __swift_destroy_boxed_opaque_existential_0((v2 + 112));
    v17 = OUTLINED_FUNCTION_182();
    sub_249E3A958(v17, v18, v19);
    OUTLINED_FUNCTION_217();

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v11 = *(v2 + 176);
    v7 = *(v2 + 184);
    v5 = __swift_project_boxed_opaque_existential_0((v2 + 152), v11);
    OUTLINED_FUNCTION_32_0();
    v8 = v20;
    OUTLINED_FUNCTION_192();
    OUTLINED_FUNCTION_315();
    v21();
    OUTLINED_FUNCTION_250();
    sub_249E7AAD8();
    OUTLINED_FUNCTION_303();

    __swift_destroy_boxed_opaque_existential_0((v2 + 152));
    v22 = OUTLINED_FUNCTION_182();
    sub_249E3A958(v22, v23, v24);
    OUTLINED_FUNCTION_217();

    *(v10 + 14) = v11;
    OUTLINED_FUNCTION_200(&dword_249DEE000, v25, v26, "Sending message %s with payload %s");
    OUTLINED_FUNCTION_338(v27, v28, MEMORY[0x277D84F70] + 8);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v2 + 112));
    v29 = __swift_destroy_boxed_opaque_existential_0((v2 + 152));
  }

  OUTLINED_FUNCTION_114(v29);
  sub_249E29D24(v12, v2 + 192);
  v30 = OUTLINED_FUNCTION_164();
  v31(v30);
  sub_249E29D88(v11, v2 + 16);
  OUTLINED_FUNCTION_131();
  v32 = OUTLINED_FUNCTION_329(&unk_285D08A98);
  v33 = OUTLINED_FUNCTION_180(v32);
  v34(v33);
  v35 = sub_249E29DEC((v2 + 16), (v5 + v6));
  OUTLINED_FUNCTION_203(v35, v36, v37, v38, v39, v40, v41, v42, v74, v77, v80, v83, v85, v87, v89, v91, v93, v95, *v97, v97[4]);
  v43 = OUTLINED_FUNCTION_300();
  v8(v43);
  sub_249E29D88(v92, v2 + 64);
  v44 = OUTLINED_FUNCTION_329(&unk_285D08AC0);
  v52 = OUTLINED_FUNCTION_225(v44, v45, v46, v47, v48, v49, v50, v51, v75, v78, v81);
  v53(v52);
  sub_249E29DEC((v2 + 64), (v4 + v84));
  v54 = v4 + v11;
  *v54 = v6;
  *(v54 + 8) = v3;
  v55 = OUTLINED_FUNCTION_167();
  v8(v55);
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23848, &qword_249E7E2E8);
  v59 = swift_allocObject();
  v60 = OUTLINED_FUNCTION_184(v59, xmmword_249E7DBA0);
  v60[3].n128_u64[0] = &unk_249E7E2D0;
  v60[3].n128_u64[1] = v86;
  v61 = OUTLINED_FUNCTION_278(v60);
  *(v61 + 80) = &unk_249E7E2E0;
  *(v61 + 88) = v4;
  OUTLINED_FUNCTION_270(v61, v62, &qword_27EF234B0, v63, v64, v65, v66, v67, v76, v79, v82, v84, v86, v88, v90, v92, v94, v96, v98, v99);
  OUTLINED_FUNCTION_163();
  v68 = swift_allocObject();
  OUTLINED_FUNCTION_268(v68);
  *(&v12->isa + v8) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23850, &qword_249E7E2F0);
  swift_allocObject();
  swift_retain_n();

  v69 = sub_249E7A8D8();
  OUTLINED_FUNCTION_269(v69);
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v2 + 440) = v70;
  *v70 = v71;
  v70[1] = sub_249E1277C;
  v72 = *(v2 + 272);

  return MEMORY[0x28210E9A0](v72);
}

uint64_t sub_249E1277C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;
  *(v3 + 448) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E1287C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_257();
  v22 = OUTLINED_FUNCTION_83();
  sub_249E2A75C(v22, v23, v24, v25);
  v26 = v18 + v17;
  v27 = sub_249E7A698();
  v28 = sub_249E7AE28();
  OUTLINED_FUNCTION_224(v28);
  OUTLINED_FUNCTION_276();
  if (v29)
  {
    a11 = v16;
    a12 = v26;
    OUTLINED_FUNCTION_70();
    a10 = v20;
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    a13 = swift_slowAlloc();
    *v30 = 136315138;
    a9 = v19;
    v31 = OUTLINED_FUNCTION_151();
    sub_249E2A75C(v31, v32, v33, &unk_249E7E2A0);
    OUTLINED_FUNCTION_81();
    v34 = sub_249E7AAC8();
    sub_249E2A8CC(v21, &qword_27EF23818, &unk_249E7E2A0);
    v35 = OUTLINED_FUNCTION_81();
    sub_249E3A958(v35, v36, v37);
    OUTLINED_FUNCTION_157();

    *(v30 + 4) = v34;
    OUTLINED_FUNCTION_273(&dword_249DEE000, v27, v28, "Received response %s");
    __swift_destroy_boxed_opaque_existential_0(a13);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();

    (*(v18 + 8))(a12, v16);
  }

  else
  {

    sub_249E2A8CC(v21, &qword_27EF23818, &unk_249E7E2A0);
    v38 = OUTLINED_FUNCTION_81();
    v40(v38, v39);
  }

  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_122();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_249E12A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();

  v12 = OUTLINED_FUNCTION_148();
  v13(v12);

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_34();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_249E12B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 296) = a4;
  *(v6 + 304) = v5;
  *(v6 + 456) = a5;
  *(v6 + 280) = a2;
  *(v6 + 288) = a3;
  *(v6 + 272) = a1;
  *(v6 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23788, &qword_249E7E1C0);
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910) - 8);
  *(v6 + 336) = v7;
  *(v6 + 344) = *(v7 + 64);
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  v8 = sub_249E7A628();
  *(v6 + 368) = v8;
  v9 = *(v8 - 8);
  *(v6 + 376) = v9;
  *(v6 + 384) = *(v9 + 64);
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E12CD4, 0, 0);
}

uint64_t sub_249E12CD4()
{
  OUTLINED_FUNCTION_284();
  v10 = *(v9 + 120);
  *(v2 + 408) = v10;
  sub_249E29D24(v1, v2 + 112);
  sub_249E29D24(v1, v2 + 152);
  v11 = v0 + v10;
  v12 = sub_249E7A698();
  sub_249E7AE28();
  OUTLINED_FUNCTION_161();
  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_188();
    v4 = OUTLINED_FUNCTION_149();
    *v10 = 136315394;
    v15 = *(v2 + 136);
    v14 = *(v2 + 144);
    __swift_project_boxed_opaque_existential_0((v2 + 112), v15);
    OUTLINED_FUNCTION_14_1();
    v16(v15);
    OUTLINED_FUNCTION_303();
    __swift_destroy_boxed_opaque_existential_0((v2 + 112));
    v17 = OUTLINED_FUNCTION_182();
    sub_249E3A958(v17, v18, v19);
    OUTLINED_FUNCTION_217();

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v11 = *(v2 + 176);
    v7 = *(v2 + 184);
    v5 = __swift_project_boxed_opaque_existential_0((v2 + 152), v11);
    OUTLINED_FUNCTION_32_0();
    v8 = v20;
    OUTLINED_FUNCTION_192();
    OUTLINED_FUNCTION_315();
    v21();
    OUTLINED_FUNCTION_250();
    sub_249E7AAD8();
    OUTLINED_FUNCTION_303();

    __swift_destroy_boxed_opaque_existential_0((v2 + 152));
    v22 = OUTLINED_FUNCTION_182();
    sub_249E3A958(v22, v23, v24);
    OUTLINED_FUNCTION_217();

    *(v10 + 14) = v11;
    OUTLINED_FUNCTION_200(&dword_249DEE000, v25, v26, "Sending message %s with payload %s");
    OUTLINED_FUNCTION_338(v27, v28, MEMORY[0x277D84F70] + 8);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v2 + 112));
    v29 = __swift_destroy_boxed_opaque_existential_0((v2 + 152));
  }

  OUTLINED_FUNCTION_114(v29);
  sub_249E29D24(v12, v2 + 192);
  v30 = OUTLINED_FUNCTION_164();
  v31(v30);
  sub_249E29D88(v11, v2 + 16);
  OUTLINED_FUNCTION_131();
  v32 = OUTLINED_FUNCTION_329(&unk_285D089F8);
  v33 = OUTLINED_FUNCTION_180(v32);
  v34(v33);
  v35 = sub_249E29DEC((v2 + 16), (v5 + v6));
  OUTLINED_FUNCTION_203(v35, v36, v37, v38, v39, v40, v41, v42, v74, v77, v80, v83, v85, v87, v89, v91, v93, v95, *v97, v97[4]);
  v43 = OUTLINED_FUNCTION_300();
  v8(v43);
  sub_249E29D88(v92, v2 + 64);
  v44 = OUTLINED_FUNCTION_329(&unk_285D08A20);
  v52 = OUTLINED_FUNCTION_225(v44, v45, v46, v47, v48, v49, v50, v51, v75, v78, v81);
  v53(v52);
  sub_249E29DEC((v2 + 64), (v4 + v84));
  v54 = v4 + v11;
  *v54 = v6;
  *(v54 + 8) = v3;
  v55 = OUTLINED_FUNCTION_167();
  v8(v55);
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23798, &qword_249E7E1F0);
  v59 = swift_allocObject();
  v60 = OUTLINED_FUNCTION_184(v59, xmmword_249E7DBA0);
  v60[3].n128_u64[0] = &unk_249E7E1D8;
  v60[3].n128_u64[1] = v86;
  v61 = OUTLINED_FUNCTION_278(v60);
  *(v61 + 80) = &unk_249E7E1E8;
  *(v61 + 88) = v4;
  OUTLINED_FUNCTION_270(v61, v62, &qword_27EF234B0, v63, v64, v65, v66, v67, v76, v79, v82, v84, v86, v88, v90, v92, v94, v96, v98, v99);
  OUTLINED_FUNCTION_163();
  v68 = swift_allocObject();
  OUTLINED_FUNCTION_268(v68);
  *(&v12->isa + v8) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF237A0, &qword_249E7E1F8);
  swift_allocObject();
  swift_retain_n();

  v69 = sub_249E7A8D8();
  OUTLINED_FUNCTION_269(v69);
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v2 + 440) = v70;
  *v70 = v71;
  v70[1] = sub_249E13108;
  v72 = *(v2 + 272);

  return MEMORY[0x28210E9A0](v72);
}

uint64_t sub_249E13108()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;
  *(v3 + 448) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E13208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_257();
  v22 = OUTLINED_FUNCTION_83();
  sub_249E2A75C(v22, v23, v24, v25);
  v26 = v18 + v17;
  v27 = sub_249E7A698();
  v28 = sub_249E7AE28();
  OUTLINED_FUNCTION_224(v28);
  OUTLINED_FUNCTION_276();
  if (v29)
  {
    a11 = v16;
    a12 = v26;
    OUTLINED_FUNCTION_70();
    a10 = v20;
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    a13 = swift_slowAlloc();
    *v30 = 136315138;
    a9 = v19;
    v31 = OUTLINED_FUNCTION_151();
    sub_249E2A75C(v31, v32, v33, &qword_249E7E1C0);
    OUTLINED_FUNCTION_81();
    v34 = sub_249E7AAC8();
    sub_249E2A8CC(v21, &qword_27EF23788, &qword_249E7E1C0);
    v35 = OUTLINED_FUNCTION_81();
    sub_249E3A958(v35, v36, v37);
    OUTLINED_FUNCTION_157();

    *(v30 + 4) = v34;
    OUTLINED_FUNCTION_273(&dword_249DEE000, v27, v28, "Received response %s");
    __swift_destroy_boxed_opaque_existential_0(a13);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();

    (*(v18 + 8))(a12, v16);
  }

  else
  {

    sub_249E2A8CC(v21, &qword_27EF23788, &qword_249E7E1C0);
    v38 = OUTLINED_FUNCTION_81();
    v40(v38, v39);
  }

  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_122();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_249E13440(uint64_t a1)
{
  result = sub_249E7A6B8();
  if (v2 <= 0x3F)
  {
    result = sub_249E7A688();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for DropInSessionAnalyticEvent(319);
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_249E1357C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23748, &qword_249E7E120);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1364C, 0, 0);
}

uint64_t sub_249E1364C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v3 = OUTLINED_FUNCTION_62(v2);

    return sub_249E138E0(v3);
  }

  else
  {

    OUTLINED_FUNCTION_9_0();

    return v5();
  }
}

uint64_t sub_249E1371C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;

  v4 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E13804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  v15 = *(*(v13 + 104) + 16);
  if (v15)
  {
    v16 = *(v13 + 80);
    v17 = *(*(v13 + 64) + 48);
    OUTLINED_FUNCTION_108();
    do
    {
      v18 = *(v13 + 56);
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_220();
      sub_249E2A75C(v19, v20, v21, v22);
      [*(v16 + v17) didAddDevice_];
      OUTLINED_FUNCTION_187();
      sub_249E2A8CC(v23, v24, v25);
      v12 += v14;
      --v15;
    }

    while (v15);
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_34();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_249E138E0(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23748, &qword_249E7E120);
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v4 = sub_249E7A628();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23750, &qword_249E7E130);
  v2[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v5 = type metadata accessor for XPCClient(0);
  v2[37] = v5;
  v2[38] = *(v5 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E13B08, 0, 0);
}

uint64_t sub_249E13B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = MEMORY[0x277D84F90];
  if (Strong)
  {
    v17 = sub_249E3F064();
    *(v12 + 336) = v17;
    v18 = swift_unknownObjectRelease();
    v19 = 0;
    v20 = v17[32];
    *(v12 + 392) = v20;
    v21 = 1 << v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v17 + 7);
    *(v12 + 344) = OBJC_IVAR____TtC10DropInCore13DropInManager_logger;
    *(v12 + 352) = v16;
    if (v23)
    {
LABEL_11:
      while (1)
      {
        *(v12 + 360) = v23;
        *(v12 + 368) = v19;
        OUTLINED_FUNCTION_312();
        OUTLINED_FUNCTION_2_5();
        sub_249E2AAB0(v27, v17);
        OUTLINED_FUNCTION_13_2();
        v28 = OUTLINED_FUNCTION_145();
        sub_249E2A924(v28, v29);
        v17 = [*(v13 + *(v14 + 20)) remoteObjectProxy];
        sub_249E7AFF8();
        swift_unknownObjectRelease();
        v30 = OUTLINED_FUNCTION_81();
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
        if (OUTLINED_FUNCTION_266(v32))
        {
          break;
        }

        OUTLINED_FUNCTION_306();
        OUTLINED_FUNCTION_0_6();
        sub_249E2AA5C(v33);
      }

      v43 = *(v12 + 176);
      *(v12 + 376) = v43;
      *(v12 + 16) = v12;
      *(v12 + 56) = v12 + 184;
      OUTLINED_FUNCTION_55_0();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23758, &qword_249E7E138);
      OUTLINED_FUNCTION_43_0(v44);
      *(v12 + 88) = 1107296256;
      OUTLINED_FUNCTION_118(block_descriptor_2);
      [v43 fetchClientContextWithCompletionHandler_];
      OUTLINED_FUNCTION_34();
    }

    else
    {
      while (!__OFADD__(v19, 1))
      {
        v18 = OUTLINED_FUNCTION_231();
        if (v25 == v26)
        {

          goto LABEL_13;
        }

        v23 = *(v18 + 8 * v24 + 56);
        ++v19;
        if (v23)
        {
          v19 = v24;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    return MEMORY[0x282200938](v18);
  }

  else
  {
LABEL_13:
    OUTLINED_FUNCTION_155();

    OUTLINED_FUNCTION_168();
    OUTLINED_FUNCTION_34();

    return v36(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
  }
}

uint64_t sub_249E13DA8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 384) = *(v3 + 48);
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E13EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_221();
  v17 = v16[23];
  v19 = v16[35];
  v18 = v16[36];
  v20 = v16[32];
  v21 = v16[33];
  v22 = v16[29];
  (*(v16[30] + 16))(v18, v16[24], v22);
  OUTLINED_FUNCTION_94();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  v26 = v17;
  sub_249E7A6C8();
  v87 = v26;

  v27 = *(v20 + 48);
  sub_249E2A75C(v18, v21, &qword_27EF234B0, &qword_249E7D910);
  sub_249E2A75C(v19, v21 + v27, &qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_226(v21, 1, v22);
  if (v28)
  {
    v29 = v16[29];
    OUTLINED_FUNCTION_213();
    sub_249E2A8CC(v30, v31, v32);
    v33 = OUTLINED_FUNCTION_183();
    sub_249E2A8CC(v33, v34, &qword_249E7D910);
    OUTLINED_FUNCTION_226(v21 + v27, 1, v29);
    if (!v28)
    {
      goto LABEL_8;
    }

    sub_249E2A8CC(v16[33], &qword_27EF234B0, &qword_249E7D910);
    v35 = v26;
  }

  else
  {
    v36 = v16[29];
    sub_249E2A75C(v16[33], v16[34], &qword_27EF234B0, &qword_249E7D910);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21 + v27, 1, v36);
    v39 = v16[35];
    v38 = v16[36];
    v40 = v16[34];
    if (EnumTagSinglePayload == 1)
    {
      v41 = v16[29];
      v42 = v16[30];
      sub_249E2A8CC(v16[35], &qword_27EF234B0, &qword_249E7D910);
      sub_249E2A8CC(v38, &qword_27EF234B0, &qword_249E7D910);
      (*(v42 + 8))(v40, v41);
LABEL_8:
      sub_249E2A8CC(v16[33], &qword_27EF23750, &qword_249E7E130);
      v35 = v87;
LABEL_9:

      swift_unknownObjectRelease();
      v43 = v16[44];
      goto LABEL_15;
    }

    a10 = v16[36];
    a11 = v16[33];
    v44 = v16[30];
    v45 = v16[29];
    (*(v44 + 32))(v16[31], v21 + v27, v45);
    OUTLINED_FUNCTION_22_0();
    sub_249E28F84(v46, v47);
    HIDWORD(a9) = sub_249E7AA78();
    v48 = *(v44 + 8);
    v49 = OUTLINED_FUNCTION_151();
    v48(v49);
    sub_249E2A8CC(v39, &qword_27EF234B0, &qword_249E7D910);
    sub_249E2A8CC(a10, &qword_27EF234B0, &qword_249E7D910);
    (v48)(v40, v45);
    sub_249E2A8CC(a11, &qword_27EF234B0, &qword_249E7D910);
    v35 = v87;
    if ((a9 & 0x100000000) == 0)
    {
      goto LABEL_9;
    }
  }

  v50 = v16[47];
  v51 = v16[28];
  v52 = *(v16[26] + 48);
  OUTLINED_FUNCTION_2_5();
  sub_249E2AAB0(v53, v51);
  *(v51 + v52) = v50;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = v16[44];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_30:
    v43 = sub_249E3A420(0, v43[2] + 1, 1, v43);
  }

  v56 = v43[2];
  v55 = v43[3];
  if (v56 >= v55 >> 1)
  {
    v43 = sub_249E3A420((v55 > 1), v56 + 1, 1, v43);
  }

  v58 = v16[27];
  v57 = v16[28];

  v43[2] = v56 + 1;
  sub_249E2A7A4(v57, v43 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v56, &qword_27EF23748, &qword_249E7E120);
LABEL_15:
  OUTLINED_FUNCTION_0_6();
  sub_249E2AA5C(v59);
  v60 = v16[46];
  v61 = (v16[45] - 1) & v16[45];
  v16[44] = v43;
  v35 = 1;
  if (v61)
  {
LABEL_21:
    while (1)
    {
      v16[45] = v61;
      v16[46] = v60;
      v67 = v16[40];
      v66 = v16[41];
      v68 = v16[37];
      OUTLINED_FUNCTION_2_5();
      sub_249E2AAB0(v69, v66);
      OUTLINED_FUNCTION_13_2();
      v70 = OUTLINED_FUNCTION_109();
      sub_249E2A924(v70, v71);
      [*(v67 + *(v68 + 20)) remoteObjectProxy];
      sub_249E7AFF8();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234D0, &qword_249E7D6C8);
      if (swift_dynamicCast())
      {
        break;
      }

      OUTLINED_FUNCTION_306();
      OUTLINED_FUNCTION_0_6();
      sub_249E2AA5C(v72);
    }

    v82 = v16[22];
    v16[47] = v82;
    v16[2] = v16;
    v16[7] = v16 + 23;
    v83 = OUTLINED_FUNCTION_55_0();
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23758, &qword_249E7E138);
    OUTLINED_FUNCTION_43_0(v84);
    v16[11] = 1107296256;
    v16[12] = sub_249E1937C;
    v16[13] = block_descriptor_2;
    v16[14] = v83;
    [v82 fetchClientContextWithCompletionHandler_];
    OUTLINED_FUNCTION_122();

    return MEMORY[0x282200938](v85);
  }

  else
  {
    while (1)
    {
      if (__OFADD__(v60, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      v62 = OUTLINED_FUNCTION_231();
      if (v64 == v65)
      {
        break;
      }

      v61 = *(v62 + 8 * v63 + 56);
      ++v60;
      if (v61)
      {
        v60 = v63;
        goto LABEL_21;
      }
    }

    OUTLINED_FUNCTION_155();

    OUTLINED_FUNCTION_168();
    OUTLINED_FUNCTION_122();

    return v75(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, v87, v16 + 22, a14, a15, a16);
  }
}

uint64_t sub_249E14494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  v15 = (v14 + 23);
  v16 = v14[43];
  v17 = v14[25];
  swift_willThrow();
  OUTLINED_FUNCTION_2_5();
  v18 = OUTLINED_FUNCTION_81();
  sub_249E2AAB0(v18, v19);
  v20 = sub_249E7A698();
  sub_249E7AE08();
  OUTLINED_FUNCTION_161();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v14[48];
  v24 = v14[39];
  v55 = v14 + 23;
  if (v22)
  {
    v25 = v14[37];
    OUTLINED_FUNCTION_70();
    swift_slowAlloc();
    v15 = OUTLINED_FUNCTION_173();
    *v17 = 138412290;
    v26 = *(v24 + *(v25 + 20));
    OUTLINED_FUNCTION_0_6();
    sub_249E2AA5C(v24);
    *(v17 + 4) = v26;
    *v15 = v26;
    OUTLINED_FUNCTION_107(&dword_249DEE000, v27, v28, "Failed to get client context for connection %@");
    sub_249E2A8CC(v15, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_0_6();
    sub_249E2AA5C(v24);
  }

  OUTLINED_FUNCTION_0_6();
  v30 = sub_249E2AA5C(v29);
  v31 = v14[46];
  v32 = (v14[45] - 1) & v14[45];
  if (v32)
  {
LABEL_10:
    while (1)
    {
      v14[45] = v32;
      v14[46] = v31;
      OUTLINED_FUNCTION_312();
      OUTLINED_FUNCTION_2_5();
      sub_249E2AAB0(v36, v23);
      OUTLINED_FUNCTION_13_2();
      v37 = OUTLINED_FUNCTION_145();
      sub_249E2A924(v37, v38);
      v23 = [*(v16 + *(v15 + 20)) remoteObjectProxy];
      sub_249E7AFF8();
      swift_unknownObjectRelease();
      v39 = OUTLINED_FUNCTION_81();
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
      if (OUTLINED_FUNCTION_266(v41))
      {
        break;
      }

      OUTLINED_FUNCTION_306();
      OUTLINED_FUNCTION_0_6();
      sub_249E2AA5C(v42);
    }

    v52 = v14[22];
    v14[47] = v52;
    v14[2] = v14;
    v14[7] = v55;
    OUTLINED_FUNCTION_55_0();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23758, &qword_249E7E138);
    OUTLINED_FUNCTION_43_0(v53);
    v14[11] = 1107296256;
    OUTLINED_FUNCTION_118(block_descriptor_2);
    [v52 fetchClientContextWithCompletionHandler_];
    OUTLINED_FUNCTION_72();

    return MEMORY[0x282200938](v30);
  }

  else
  {
    while (1)
    {
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return MEMORY[0x282200938](v30);
      }

      v30 = OUTLINED_FUNCTION_231();
      if (v34 == v35)
      {
        break;
      }

      v32 = *(v30 + 8 * v33 + 56);
      ++v31;
      if (v32)
      {
        v31 = v33;
        goto LABEL_10;
      }
    }

    OUTLINED_FUNCTION_155();

    OUTLINED_FUNCTION_168();
    OUTLINED_FUNCTION_72();

    return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, v55, a11, a12, a13, a14);
  }
}

uint64_t sub_249E147F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23748, &qword_249E7E120);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E148C0, 0, 0);
}

uint64_t sub_249E148C0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v3 = OUTLINED_FUNCTION_62(v2);

    return sub_249E138E0(v3);
  }

  else
  {

    OUTLINED_FUNCTION_9_0();

    return v5();
  }
}

uint64_t sub_249E14990()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;

  v4 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E14A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  v15 = *(*(v13 + 104) + 16);
  if (v15)
  {
    v16 = *(v13 + 80);
    v17 = *(*(v13 + 64) + 48);
    OUTLINED_FUNCTION_108();
    do
    {
      v18 = *(v13 + 56);
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_220();
      sub_249E2A75C(v19, v20, v21, v22);
      [*(v16 + v17) didRemoveDevice_];
      OUTLINED_FUNCTION_187();
      sub_249E2A8CC(v23, v24, v25);
      v12 += v14;
      --v15;
    }

    while (v15);
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_34();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

void sub_249E14B54()
{
  OUTLINED_FUNCTION_15_0();
  v66 = v1;
  v3 = v2;
  v68 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v7);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_230();
  v9 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_142();
  v63 = v15;
  v64 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v65 = &v60 - v17;
  v18 = sub_249E7A468();
  OUTLINED_FUNCTION_3();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v24 = v23 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v62 = v3;
    v27 = *(v20 + 16);
    v67 = v6;
    v27(v24, v6, v18);
    v69 = v26;
    v28 = sub_249E7A698();
    v29 = sub_249E7AE28();
    if (os_log_type_enabled(v28, v29))
    {
      OUTLINED_FUNCTION_70();
      v30 = swift_slowAlloc();
      v61 = v0;
      v31 = v30;
      OUTLINED_FUNCTION_74();
      v60 = swift_slowAlloc();
      v71[0] = v60;
      *v31 = 136315138;
      sub_249E28F84(qword_28130D370, MEMORY[0x277CC8900]);
      sub_249E7B2D8();
      v32 = OUTLINED_FUNCTION_148();
      v33(v32);
      v34 = OUTLINED_FUNCTION_302();
      v37 = sub_249E3A958(v34, v35, v36);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_249DEE000, v28, v29, v68, v31, 0xCu);
      OUTLINED_FUNCTION_336();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      v0 = v61;
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      v38 = OUTLINED_FUNCTION_148();
      v39(v38);
    }

    sub_249E7A458();
    v40 = v69;
    if (v71[3])
    {
      sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
      if (OUTLINED_FUNCTION_7_0())
      {
        v41 = v70;
        v42 = [v70 homeKitHomeIdentifier];
        if (v42)
        {
          v43 = v42;
          v44 = v65;
          sub_249E7A608();

          sub_249E7AC78();
          OUTLINED_FUNCTION_28();
          __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
          OUTLINED_FUNCTION_22();
          v49 = swift_allocObject();
          OUTLINED_FUNCTION_185(v49);
          swift_unknownObjectWeakInit();
          v50 = v64;
          (*(v11 + 16))(v64, v44, v9);
          v51 = (*(v11 + 80) + 40) & ~*(v11 + 80);
          v52 = (v63 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
          v53 = swift_allocObject();
          v54 = OUTLINED_FUNCTION_210(v53);
          *(v54 + 32) = v43;
          (*(v11 + 32))(v54 + v51, v50, v9);
          *(v0 + v52) = v41;
          v55 = v41;
          v56 = OUTLINED_FUNCTION_99();
          sub_249E5ED90(v56, v57, v0, v66, v0);

          v58 = OUTLINED_FUNCTION_136();
          v59(v58);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {

      sub_249E2A8CC(v71, &unk_27EF23C40, &qword_249E7D8E0);
    }
  }

  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E15008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  type metadata accessor for XPCClient(0);
  v6[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23748, &qword_249E7E120);
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1511C, 0, 0);
}

uint64_t sub_249E1511C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v3 = OUTLINED_FUNCTION_62(v2);

    return sub_249E138E0(v3);
  }

  else
  {

    OUTLINED_FUNCTION_9_0();

    return v5();
  }
}

uint64_t sub_249E15218()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 128) = v3;

  v4 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_249E15300()
{
  v49 = v0;

  v1 = sub_249E7A698();
  sub_249E7AE28();
  OUTLINED_FUNCTION_247();

  v2 = OUTLINED_FUNCTION_110();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_70();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v5 = swift_slowAlloc();
    v48 = v5;
    *v4 = 136315138;
    v6 = OUTLINED_FUNCTION_249();
    v7 = MEMORY[0x24C204800](v6);
    v9 = sub_249E3A958(v7, v8, &v48);

    *(v4 + 4) = v9;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v15 = 0;
  v16 = *(v0 + 128);
  v18 = *(v0 + 72);
  v17 = *(v0 + 80);
  v46 = *(v16 + 16);
  v19 = &qword_249E7E120;
  v42 = 136315138;
  v44 = v0;
  v43 = v17;
  while (v46 != v15)
  {
    if (v15 >= *(v16 + 16))
    {
      __break(1u);
      return;
    }

    v47 = v15;
    sub_249E2A75C(*(v0 + 128) + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15, *(v0 + 104), &qword_27EF23748, v19);
    v20 = OUTLINED_FUNCTION_105();
    sub_249E2A75C(v20, v21, &qword_27EF23748, v19);
    v22 = v19;
    v23 = sub_249E7A698();
    v24 = sub_249E7AE28();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 96);
    if (v25)
    {
      v45 = v24;
      v27 = *(v0 + 88);
      v28 = *(v0 + 64);
      OUTLINED_FUNCTION_70();
      v29 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      v48 = swift_slowAlloc();
      *v29 = v42;
      sub_249E2A75C(v26, v27, &qword_27EF23748, v22);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_13_2();
      sub_249E2A924(v27, v28);
      v30 = sub_249E6A23C();
      OUTLINED_FUNCTION_0_6();
      v31 = v28;
      v17 = v43;
      sub_249E2AA5C(v31);
      v32 = OUTLINED_FUNCTION_308();
      sub_249E2A8CC(v32, v33, v22);
      v34 = OUTLINED_FUNCTION_81();
      sub_249E3A958(v34, v35, v36);
      OUTLINED_FUNCTION_157();
      v0 = v44;

      *(v29 + 4) = v30;
      OUTLINED_FUNCTION_339(&dword_249DEE000, v23, v45, "Notifying XPC Client: %s", v42);
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      v37 = OUTLINED_FUNCTION_308();
      sub_249E2A8CC(v37, v38, v22);
    }

    v19 = v22;
    [*(*(v0 + 104) + *(v18 + 48)) didUpdateDevice_];
    v39 = OUTLINED_FUNCTION_153();
    sub_249E2A8CC(v39, v40, v22);
    v15 = v47 + 1;
  }

  OUTLINED_FUNCTION_9_0();

  v41();
}

uint64_t sub_249E15680()
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v0 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v2 = &v23 - v1;
  v3 = sub_249E7AFA8();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_249E7AF28();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23880, &qword_249E7E390);
  v10 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23888, &qword_249E7E398);
  v25 = *(v13 - 8);
  v26 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  v16 = [objc_opt_self() defaultCenter];
  if (qword_28130D218 != -1)
  {
    swift_once();
  }

  sub_249E7AF38();

  sub_249E28F84(&qword_28130D1F0, MEMORY[0x277CC9DB0]);
  sub_249E7A8E8();
  (*(v7 + 8))(v9, v6);
  sub_249E7A778();
  sub_249E2AB74(&qword_28130D320, &unk_27EF23820, &unk_249E7E860);
  sub_249E2AB74(&unk_28130D310, &unk_27EF23820, &unk_249E7E860);
  sub_249E2AB74(&unk_28130D300, &unk_27EF23820, &unk_249E7E860);
  v17 = v23;
  sub_249E7A6E8();
  (*(v0 + 8))(v2, v17);
  sub_249E7AF98();
  v18 = [objc_opt_self() mainRunLoop];
  v29 = v18;
  sub_249DF691C(0, &unk_28130D128, 0x277CBEB88);
  sub_249E2AB74(&unk_28130D2F0, &qword_27EF23880, &qword_249E7E390);
  sub_249E2AB04();
  v19 = v24;
  sub_249E7A8F8();

  (*(v27 + 8))(v5, v28);
  (*(v10 + 8))(v12, v19);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_249E2AB74(&unk_28130D2E0, &unk_27EF23888, &qword_249E7E398);
  v20 = v26;
  v21 = sub_249E7A908();

  (*(v25 + 8))(v15, v20);
  return v21;
}

char *sub_249E15C78(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23868, &qword_249E7E360);
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v45 - v6;
  v52 = type metadata accessor for DropInStateManager.Context(0);
  v7 = *(v52 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v52);
  v10 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = (&v45 - v11);
  v13 = sub_249E7A468();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v48 = v8;
    v19 = *(v14 + 16);
    v50 = a1;
    v19(v16, a1, v13);
    v51 = v18;
    v20 = sub_249E7A698();
    v21 = sub_249E7AE28();
    v22 = os_log_type_enabled(v20, v21);
    v47 = v7;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v54[0] = v46;
      *v23 = 136315138;
      sub_249E28F84(qword_28130D370, MEMORY[0x277CC8900]);
      v24 = sub_249E7B2D8();
      v25 = v10;
      v26 = v12;
      v28 = v27;
      (*(v14 + 8))(v16, v13);
      v29 = sub_249E3A958(v24, v28, v54);
      v12 = v26;
      v10 = v25;

      *(v23 + 4) = v29;
      _os_log_impl(&dword_249DEE000, v20, v21, "Drop In State Updated Notification = %s", v23, 0xCu);
      v30 = v46;
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x24C205870](v30, -1, -1);
      MEMORY[0x24C205870](v23, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v16, v13);
    }

    sub_249E7A458();
    v31 = v51;
    v32 = v53;
    if (!v54[3])
    {

      sub_249E2A8CC(v54, &unk_27EF23C40, &qword_249E7D8E0);
      __swift_storeEnumTagSinglePayload(v32, 1, 1, v52);
      return sub_249E2A8CC(v32, &unk_27EF23868, &qword_249E7E360);
    }

    v33 = v52;
    v34 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v32, v34 ^ 1u, 1, v33);
    if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
    {

      return sub_249E2A8CC(v32, &unk_27EF23868, &qword_249E7E360);
    }

    sub_249E2A924(v32, v12);
    v35 = *v12;
    if (*v12 != 2)
    {
      v36 = OBJC_IVAR____TtC10DropInCore13DropInManager_dropInStateSubscriber;
      if (*&v31[OBJC_IVAR____TtC10DropInCore13DropInManager_dropInStateSubscriber])
      {

        sub_249E7A8B8();
      }

      *&v31[v36] = sub_249E15680();
    }

    v37 = v35 != 2;
    v38 = sub_249E7AC78();
    v39 = v49;
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v38);
    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_249E2AAB0(v12, v10);
    v41 = (*(v47 + 80) + 40) & ~*(v47 + 80);
    v42 = v12;
    v43 = v41 + v48;
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v44[4] = v40;
    sub_249E2A924(v10, v44 + v41);
    *(v44 + v43) = v37;
    sub_249E5ED90(0, 0, v39, &unk_249E7E370, v44);

    return sub_249E2AA5C(v42);
  }

  return result;
}

uint64_t sub_249E16274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 152) = a6;
  *(v6 + 72) = a4;
  *(v6 + 80) = a5;
  v7 = sub_249E7A628();
  *(v6 + 88) = v7;
  *(v6 + 96) = *(v7 - 8);
  *(v6 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E16338, 0, 0);
}

uint64_t sub_249E16338()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_5_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [*(Strong + OBJC_IVAR____TtC10DropInCore13DropInManager_homeManagerProvider) currentAccessory];
    v0[15] = v3;
    if (v3)
    {
      v0[16] = *&v2[OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager];
      v4 = [v3 uniqueIdentifier];
      sub_249E7A608();

      v5 = OUTLINED_FUNCTION_69();

      return MEMORY[0x2822009F8](v5, v6, v7);
    }
  }

  OUTLINED_FUNCTION_9_0();

  return v8();
}

uint64_t sub_249E1644C()
{
  OUTLINED_FUNCTION_23();
  sub_249E50708(*(v0 + 104), *(v0 + 80));
  v1 = OUTLINED_FUNCTION_126();
  v2(v1);
  v3 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E164D0()
{
  OUTLINED_FUNCTION_11();
  if (*(v0 + 152) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 136) = v1;
    *v1 = v0;
    v1[1] = sub_249E165AC;
    v2 = OUTLINED_FUNCTION_97(*(v0 + 80));

    return sub_249E1686C(v2);
  }

  else
  {
    v4 = *(v0 + 112);

    OUTLINED_FUNCTION_9_0();

    return v5();
  }
}

uint64_t sub_249E165AC()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E166A4()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 112);

  OUTLINED_FUNCTION_9_0();

  return v2();
}

uint64_t sub_249E16708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_100();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_50();
  a18 = v20;
  v23 = *(v20 + 144);
  v24 = v23;
  v25 = sub_249E7A698();
  v26 = sub_249E7AE08();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v20 + 144);
    v28 = *(v20 + 112);
    v29 = *(v20 + 120);
    OUTLINED_FUNCTION_70();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v31 = swift_slowAlloc();
    a9 = v31;
    OUTLINED_FUNCTION_323(4.8149e-34);
    v32 = sub_249E7B3A8();
    v34 = sub_249E3A958(v32, v33, &a9);

    *(v30 + 4) = v34;
    OUTLINED_FUNCTION_12(&dword_249DEE000, v35, v36, "Failed to broadcast drop in state to users: %s");
    __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {
    v37 = *(v20 + 144);
    v38 = *(v20 + 112);
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_34();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t sub_249E1686C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for DropInStateEvent(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E16900, 0, 0);
}

uint64_t sub_249E16900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  v15 = [*(v14[3] + OBJC_IVAR____TtC10DropInCore13DropInManager_homeManagerProvider) currentAccessory];
  v14[6] = v15;
  if (v15)
  {
    v16 = v15;
    v17 = [v15 home];
    v14[7] = v17;
    if (v17)
    {
      v19 = v14[4];
      v18 = v14[5];
      v20 = v14[2];
      v55 = v14[3];
      v21 = [v17 uniqueIdentifier];
      sub_249E7A608();

      v22 = [v16 uniqueIdentifier];
      sub_249E7A608();

      v23 = *v20;
      v24 = *(v20 + 1);
      v25 = *(v20 + 2);
      v26 = *(type metadata accessor for DropInStateManager.Context(0) + 24);
      v27 = v19[8];
      sub_249E7A5B8();
      OUTLINED_FUNCTION_19_0();
      result = (*(v28 + 16))(v18 + v27, &v20[v26]);
      *(v18 + v19[6]) = v23;
      v30 = (v18 + v19[7]);
      *v30 = v24;
      v30[1] = v25;
      v31 = *(v55 + OBJC_IVAR____TtC10DropInCore13DropInManager_messageCenter);
      v14[8] = v31;
      if (v31)
      {

        v32 = sub_249DF8ABC();
        v14[9] = sub_249E56600(v32);

        OUTLINED_FUNCTION_63(&qword_249E7E380);
        v56 = v33;
        v34 = swift_task_alloc();
        v14[10] = v34;
        *v34 = v14;
        v34[1] = sub_249E16B74;
        OUTLINED_FUNCTION_97(v14[5]);
        OUTLINED_FUNCTION_72();

        return v38(v35, v36, v37, v38, v39, v40, v41, v42, a9, v56, a11, a12, a13, a14);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    v45 = sub_249E28F30();
    OUTLINED_FUNCTION_40(&type metadata for DropInManager.DropInManagerError, v45);
    OUTLINED_FUNCTION_190(v46, 25);
  }

  else
  {
    v43 = sub_249E28F30();
    OUTLINED_FUNCTION_40(&type metadata for DropInManager.DropInManagerError, v43);
    OUTLINED_FUNCTION_190(v44, 24);
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_72();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E16B74()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E16C90()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_59();

  OUTLINED_FUNCTION_31_0();

  return v2();
}

BOOL sub_249E16CFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23868, &qword_249E7E360);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-v1];
  v3 = type metadata accessor for DropInStateManager.Context(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_249E7A458();
  if (v10)
  {
    v6 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v2, v6 ^ 1u, 1, v3);
    if (__swift_getEnumTagSinglePayload(v2, 1, v3) != 1)
    {
      sub_249E2A924(v2, v5);
      v7 = *v5;
      sub_249E2AA5C(v5);
      return v7 == 2;
    }
  }

  else
  {
    sub_249E2A8CC(v9, &unk_27EF23C40, &qword_249E7D8E0);
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  }

  sub_249E2A8CC(v2, &unk_27EF23868, &qword_249E7E360);
  return 0;
}

void *sub_249E16EB4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23868, &qword_249E7E360);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v40 - v6;
  v48 = type metadata accessor for DropInStateManager.Context(0);
  v43 = *(v48 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v10 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  v13 = sub_249E7A468();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v47 = v7;
    v19 = *(v14 + 16);
    v45 = a1;
    v19(v16, a1, v13);
    v46 = v18;
    v20 = sub_249E7A698();
    v21 = sub_249E7AE28();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v42 = v8;
      v23 = v22;
      v41 = swift_slowAlloc();
      v49[0] = v41;
      *v23 = 136315138;
      sub_249E28F84(qword_28130D370, MEMORY[0x277CC8900]);
      v24 = sub_249E7B2D8();
      v25 = v10;
      v26 = v12;
      v28 = v27;
      (*(v14 + 8))(v16, v13);
      v29 = sub_249E3A958(v24, v28, v49);
      v12 = v26;
      v10 = v25;

      *(v23 + 4) = v29;
      _os_log_impl(&dword_249DEE000, v20, v21, "(Throttled) Drop In State Updated to Available Notification = %s", v23, 0xCu);
      v30 = v41;
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x24C205870](v30, -1, -1);
      MEMORY[0x24C205870](v23, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v16, v13);
    }

    sub_249E7A458();
    v31 = v46;
    if (!v49[3])
    {

      sub_249E2A8CC(v49, &unk_27EF23C40, &qword_249E7D8E0);
      v33 = v47;
      __swift_storeEnumTagSinglePayload(v47, 1, 1, v48);
      return sub_249E2A8CC(v33, &unk_27EF23868, &qword_249E7E360);
    }

    v33 = v47;
    v32 = v48;
    v34 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v33, v34 ^ 1u, 1, v32);
    if (__swift_getEnumTagSinglePayload(v33, 1, v32) == 1)
    {

      return sub_249E2A8CC(v33, &unk_27EF23868, &qword_249E7E360);
    }

    sub_249E2A924(v33, v12);
    v35 = sub_249E7AC78();
    v36 = v44;
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v35);
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_249E2AAB0(v12, v10);
    v38 = (*(v43 + 80) + 40) & ~*(v43 + 80);
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = v37;
    sub_249E2A924(v10, v39 + v38);
    sub_249E5ED90(0, 0, v36, &unk_249E7E3A8, v39);

    return sub_249E2AA5C(v12);
  }

  return result;
}

uint64_t sub_249E17440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  return MEMORY[0x2822009F8](sub_249E17460, 0, 0);
}

uint64_t sub_249E17460()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_249E17534;
    v3 = OUTLINED_FUNCTION_97(v0[10]);

    return sub_249E1686C(v3);
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v5();
  }
}

uint64_t sub_249E17534()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E1762C()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_9_0();

  return v1();
}

uint64_t sub_249E17684()
{
  OUTLINED_FUNCTION_50();
  v19 = v0;
  v1 = *(v0 + 104);
  v2 = v1;
  v3 = sub_249E7A698();
  v4 = sub_249E7AE08();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 88);
    OUTLINED_FUNCTION_70();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v8 = swift_slowAlloc();
    v18 = v8;
    OUTLINED_FUNCTION_323(4.8149e-34);
    v9 = sub_249E7B3A8();
    v11 = sub_249E3A958(v9, v10, &v18);

    *(v7 + 4) = v11;
    OUTLINED_FUNCTION_12(&dword_249DEE000, v12, v13, "Failed to broadcast drop in state to users: %s");
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {
    v14 = *(v0 + 104);
    v15 = *(v0 + 88);
  }

  OUTLINED_FUNCTION_9_0();

  return v16();
}

uint64_t sub_249E177F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for TransactionType(0);
  v4[6] = swift_task_alloc();
  v4[7] = type metadata accessor for DropInStateManager.Context(0);
  v4[8] = swift_task_alloc();
  v4[9] = type metadata accessor for DropInStateEvent(0);
  v6 = swift_task_alloc();
  v7 = *a2;
  v4[10] = v6;
  v4[11] = v7;

  return MEMORY[0x2822009F8](sub_249E178E8, 0, 0);
}

uint64_t sub_249E178E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v12 + 96) = Strong;
  if (Strong)
  {
    v14 = Strong;
    v15 = *(v12 + 80);

    sub_249E183F8(v16, v15);
    v17 = *(v12 + 80);
    v28 = *(v12 + 64);
    v27 = *(v12 + 72);
    v29 = *(v12 + 56);
    v30 = *(v17 + v27[6]);
    *(v12 + 104) = v30;
    v31 = v27[8];
    v32 = (v17 + v27[7]);
    v34 = *v32;
    v33 = v32[1];
    *(v12 + 152) = v31;
    v35 = *(v29 + 24);
    *(v12 + 112) = sub_249E7A5B8();
    OUTLINED_FUNCTION_28_0();
    v37 = *(v36 + 16);
    *(v12 + 120) = v37;
    *(v12 + 128) = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v37(&v28[v35], v17 + v31);
    *v28 = v30;
    *(v28 + 1) = v34;
    *(v28 + 2) = v33;
    *(v12 + 136) = *(v14 + OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
    *(v12 + 156) = v27[5];

    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_34();

    return MEMORY[0x2822009F8](v38, v39, v40);
  }

  else
  {
    OUTLINED_FUNCTION_265();

    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_34();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t sub_249E17A8C()
{
  OUTLINED_FUNCTION_11();
  sub_249E50708(*(v0 + 80) + *(v0 + 156), *(v0 + 64));

  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E17B00()
{
  OUTLINED_FUNCTION_11();
  if (*(v0 + 104) == 2)
  {
    v1 = *(v0 + 120);
    v2 = *(v0 + 112);
    v3 = *(v0 + 152);
    v4 = *(v0 + 80);
    v5 = *(v0 + 48);
    *(v0 + 144) = *(*(v0 + 96) + OBJC_IVAR____TtC10DropInCore13DropInManager_transactionManager);
    v1(v5, v4 + v3, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C8, &qword_249E7E008);
    OUTLINED_FUNCTION_297();
    OUTLINED_FUNCTION_94();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    v10 = OUTLINED_FUNCTION_57();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {

    OUTLINED_FUNCTION_10_0();
    sub_249E2AA5C(v13);
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_265();

    OUTLINED_FUNCTION_31_0();

    return v14();
  }
}

uint64_t sub_249E17C10()
{
  OUTLINED_FUNCTION_11();
  sub_249E339F0(*(v0 + 48));
  OUTLINED_FUNCTION_18_0();
  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E17C78()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_10_0();
  sub_249E2AA5C(v1);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_265();

  OUTLINED_FUNCTION_31_0();

  return v2();
}

uint64_t sub_249E17CF8@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v46 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - v6;
  v8 = sub_249E7A628();
  v48 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v35 - v15;
  v17 = sub_249E7A5B8();
  v53 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249E55870(0x6469656D6F68, 0xE600000000000000, a1, v51);
  if (!v52)
  {
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v43 = v49;
  v44 = v8;
  v20 = v50;
  sub_249E55870(0x726F737365636361, 0xEB00000000646979, a1, v51);
  if (!v52)
  {

LABEL_17:

    v23 = &unk_27EF23C40;
    v24 = &qword_249E7D8E0;
    v25 = v51;
LABEL_18:
    sub_249E2A8CC(v25, v23, v24);
LABEL_22:
    sub_249DFE8A4();
    swift_allocError();
    return swift_willThrow();
  }

  v45 = v20;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v21 = v50;
  v42 = v49;
  sub_249E55870(0x6574617473, 0xE500000000000000, a1, v51);
  if (!v52)
  {
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:

LABEL_20:

LABEL_21:

    goto LABEL_22;
  }

  v41 = v49;
  sub_249E55870(0x6E6F73616572, 0xE600000000000000, a1, v51);
  if (!v52)
  {
LABEL_16:

    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v39 = v49;
  v40 = v50;
  sub_249E55870(0x6974617269707865, 0xEA00000000006E6FLL, a1, v51);

  if (!v52)
  {

    sub_249E2A8CC(v51, &unk_27EF23C40, &qword_249E7D8E0);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
    goto LABEL_24;
  }

  v22 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v16, v22 ^ 1u, 1, v17);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {

LABEL_24:
    v23 = &qword_27EF236C0;
    v24 = &unk_249E7F8F0;
    v25 = v16;
    goto LABEL_18;
  }

  v27 = v53;
  v28 = *(v53 + 32);
  v37 = v53 + 32;
  v38 = v21;
  v36 = v28;
  v28(v19, v16, v17);
  sub_249E7A5C8();

  v29 = v44;
  if (__swift_getEnumTagSinglePayload(v7, 1, v44) == 1)
  {
    (*(v27 + 8))(v19, v17);

LABEL_29:
    v23 = &qword_27EF234B0;
    v24 = &qword_249E7D910;
    v25 = v7;
    goto LABEL_18;
  }

  v45 = *(v48 + 32);
  v45(v13, v7, v29);
  v7 = v46;
  sub_249E7A5C8();

  if (__swift_getEnumTagSinglePayload(v7, 1, v29) == 1)
  {

    (*(v48 + 8))(v13, v29);
    (*(v53 + 8))(v19, v17);
    goto LABEL_29;
  }

  v30 = v45;
  v45(v11, v7, v29);
  v30(v47, v13, v29);
  v31 = type metadata accessor for DropInStateResponse(0);
  v32 = v47;
  v30(v47 + v31[5], v11, v29);
  result = v36(v32 + v31[8], v19, v17);
  *(v32 + v31[6]) = v41;
  v33 = (v32 + v31[7]);
  v34 = v40;
  *v33 = v39;
  v33[1] = v34;
  return result;
}

uint64_t sub_249E183F8@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v46 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - v6;
  v8 = sub_249E7A628();
  v48 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v35 - v15;
  v17 = sub_249E7A5B8();
  v53 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249E55870(0x6469656D6F68, 0xE600000000000000, a1, v51);
  if (!v52)
  {
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v43 = v49;
  v44 = v8;
  v20 = v50;
  sub_249E55870(0x726F737365636361, 0xEB00000000646979, a1, v51);
  if (!v52)
  {

LABEL_17:

    v23 = &unk_27EF23C40;
    v24 = &qword_249E7D8E0;
    v25 = v51;
LABEL_18:
    sub_249E2A8CC(v25, v23, v24);
LABEL_22:
    sub_249DFE8A4();
    swift_allocError();
    return swift_willThrow();
  }

  v45 = v20;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v21 = v50;
  v42 = v49;
  sub_249E55870(0x6574617473, 0xE500000000000000, a1, v51);
  if (!v52)
  {
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:

LABEL_20:

LABEL_21:

    goto LABEL_22;
  }

  v41 = v49;
  sub_249E55870(0x6E6F73616572, 0xE600000000000000, a1, v51);
  if (!v52)
  {
LABEL_16:

    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v39 = v49;
  v40 = v50;
  sub_249E55870(0x6974617269707865, 0xEA00000000006E6FLL, a1, v51);

  if (!v52)
  {

    sub_249E2A8CC(v51, &unk_27EF23C40, &qword_249E7D8E0);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
    goto LABEL_24;
  }

  v22 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v16, v22 ^ 1u, 1, v17);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {

LABEL_24:
    v23 = &qword_27EF236C0;
    v24 = &unk_249E7F8F0;
    v25 = v16;
    goto LABEL_18;
  }

  v27 = v53;
  v28 = *(v53 + 32);
  v37 = v53 + 32;
  v38 = v21;
  v36 = v28;
  v28(v19, v16, v17);
  sub_249E7A5C8();

  v29 = v44;
  if (__swift_getEnumTagSinglePayload(v7, 1, v44) == 1)
  {
    (*(v27 + 8))(v19, v17);

LABEL_29:
    v23 = &qword_27EF234B0;
    v24 = &qword_249E7D910;
    v25 = v7;
    goto LABEL_18;
  }

  v45 = *(v48 + 32);
  v45(v13, v7, v29);
  v7 = v46;
  sub_249E7A5C8();

  if (__swift_getEnumTagSinglePayload(v7, 1, v29) == 1)
  {

    (*(v48 + 8))(v13, v29);
    (*(v53 + 8))(v19, v17);
    goto LABEL_29;
  }

  v30 = v45;
  v45(v11, v7, v29);
  v30(v47, v13, v29);
  v31 = type metadata accessor for DropInStateEvent(0);
  v32 = v47;
  v30(v47 + v31[5], v11, v29);
  result = v36(v32 + v31[8], v19, v17);
  *(v32 + v31[6]) = v41;
  v33 = (v32 + v31[7]);
  v34 = v40;
  *v33 = v39;
  v33[1] = v34;
  return result;
}

uint64_t sub_249E18AF8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v4[6] = swift_task_alloc();
  v6 = sub_249E7A628();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = type metadata accessor for DropInSessionFailureEvent(0);
  v7 = swift_task_alloc();
  v8 = *a2;
  v4[11] = v7;
  v4[12] = v8;

  return MEMORY[0x2822009F8](sub_249E18C28, 0, 0);
}

uint64_t sub_249E18C28()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[11];

    sub_249E609A8(v5, v4);
    v10 = *(v0[11] + *(v0[10] + 24));
    v11 = OBJC_IVAR____TtC10DropInCore13DropInManager_logger;
    v0[14] = v10;
    v0[15] = v11;
    v12 = v10;
    v13 = sub_249E7A698();
    sub_249E7AE08();

    if (OUTLINED_FUNCTION_274())
    {
      OUTLINED_FUNCTION_70();
      swift_slowAlloc();
      v15 = OUTLINED_FUNCTION_173();
      *v1 = 138412290;
      *(v1 + 4) = v12;
      *v15 = v12;
      v16 = v12;
      OUTLINED_FUNCTION_107(&dword_249DEE000, v17, v18, "Received Session Failed Event. Error = %@");
      sub_249E2A8CC(v15, &unk_27EF23C30, &qword_249E7DA20);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v19 = OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager;
    v0[16] = OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager;
    v0[17] = *(v3 + v19);
    v20 = OUTLINED_FUNCTION_254();

    return MEMORY[0x2822009F8](v20, v21, v22);
  }

  else
  {
    v6 = sub_249E28F30();
    OUTLINED_FUNCTION_40(&type metadata for DropInManager.DropInManagerError, v6);
    OUTLINED_FUNCTION_190(v7, 20);

    OUTLINED_FUNCTION_9_0();

    return v8();
  }
}

uint64_t sub_249E18E0C()
{
  OUTLINED_FUNCTION_11();
  v1 = *(*(v0 + 136) + qword_28130E738);
  *(v0 + 144) = v1;
  v2 = v1;
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E18E84()
{
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_82();
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = [v1 identifier];
    sub_249E7A608();

    LOBYTE(v2) = sub_249E7A5F8();
    v3 = OUTLINED_FUNCTION_81();
    v4(v3);
    v5 = *(v0 + 144);
    if (v2)
    {
      v6 = v5;
      v7 = sub_249E7A698();
      sub_249E7AE28();

      v8 = OUTLINED_FUNCTION_110();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = *(v0 + 144);
        OUTLINED_FUNCTION_70();
        v11 = swift_slowAlloc();
        v12 = OUTLINED_FUNCTION_6();
        *v11 = 138412290;
        *(v11 + 4) = v10;
        *v12 = v10;
        v13 = v10;
        OUTLINED_FUNCTION_35();
        _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
        sub_249E2A8CC(v12, &unk_27EF23C30, &qword_249E7DA20);
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
      }

      v19 = *(v0 + 128);
      v20 = *(v0 + 104);
      v21 = *(v0 + 56);

      *(v0 + 152) = *(v20 + v19);
      OUTLINED_FUNCTION_28();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
      OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_271();

      return MEMORY[0x2822009F8](v25, v26, v27);
    }
  }

  else
  {
    v5 = *(v0 + 104);
  }

  v29 = *(v0 + 88);
  OUTLINED_FUNCTION_50_0();
  sub_249E2AA5C(v29);

  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_271();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37);
}

uint64_t sub_249E19094()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 48);
  sub_249E27304(v1, *(v0 + 112));
  sub_249E2A8CC(v1, &qword_27EF234B0, &qword_249E7D910);
  v2 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E19114()
{
  OUTLINED_FUNCTION_23();
  v4 = v0[13];
  v5 = *(v4 + OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager);
  if (v5)
  {
    v6 = v0[16];
    v7 = v5;
    sub_249E067EC(0, v8, v9, v10, v11);

    v0[20] = *(v4 + v6);
    OUTLINED_FUNCTION_189();
    v1 = OUTLINED_FUNCTION_36_0();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E191AC()
{
  OUTLINED_FUNCTION_11();
  sub_249E2615C(6, 3);

  v0 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_249E19218()
{
  OUTLINED_FUNCTION_11();
  v0[21] = *(v0[13] + v0[16]);
  OUTLINED_FUNCTION_189();
  v1 = OUTLINED_FUNCTION_36_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E19280()
{
  OUTLINED_FUNCTION_11();
  sub_249E2530C();

  v0 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_249E192E4()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 144);

  v2 = *(v0 + 88);
  OUTLINED_FUNCTION_50_0();
  sub_249E2AA5C(v2);

  OUTLINED_FUNCTION_31_0();

  return v3();
}

void *sub_249E1937C(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_249E4A6E8();
  }

  else if (a2)
  {
    v7 = a2;

    return sub_249E4A6EC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_249E1940C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for DropInStateManager.Context(0);
  v2[8] = swift_task_alloc();
  v3 = sub_249E7A628();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  type metadata accessor for TransactionType(0);
  v2[12] = swift_task_alloc();
  v2[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1957C, 0, 0);
}

uint64_t sub_249E1957C()
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  sub_249E2A75C(v0[5], v0[16], &qword_27EF234B0, &qword_249E7D910);
  v1 = sub_249E7A698();
  v2 = sub_249E7AE28();
  v3 = OUTLINED_FUNCTION_120(v2);
  v4 = v0[16];
  if (v3)
  {
    OUTLINED_FUNCTION_70();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    swift_slowAlloc();
    OUTLINED_FUNCTION_243();
    *v5 = 136315138;
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_294();
    sub_249E2A75C(v6, v7, v8, v9);
    OUTLINED_FUNCTION_113();
    sub_249E7AAC8();
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_267();
    v10 = OUTLINED_FUNCTION_113();
    v13 = sub_249E3A958(v10, v11, v12);

    *(v5 + 4) = v13;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    sub_249E2A8CC(v4, &qword_27EF234B0, &qword_249E7D910);
  }

  v0[17] = *(v0[6] + OBJC_IVAR____TtC10DropInCore13DropInManager_transactionManager);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C8, &qword_249E7E008);
  OUTLINED_FUNCTION_297();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_34();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_249E19714()
{
  OUTLINED_FUNCTION_11();
  sub_249E33FAC(*(v0 + 96));
  OUTLINED_FUNCTION_18_0();
  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E1977C()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager);
  *(v0 + 144) = v1;
  return OUTLINED_FUNCTION_11_1(sub_249E197A4, v1);
}

uint64_t sub_249E197A4()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = qword_28130E740;
  OUTLINED_FUNCTION_76(v1 + qword_28130E740);
  sub_249E2A75C(v1 + v3, v2, &qword_27EF234B0, &qword_249E7D910);
  v4 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E19838()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[14];
  v2 = v0[9];
  v3 = OUTLINED_FUNCTION_214();
  OUTLINED_FUNCTION_226(v3, v4, v2);
  if (v5)
  {
    sub_249E2A8CC(v1, &qword_27EF234B0, &qword_249E7D910);
    OUTLINED_FUNCTION_51_0();
  }

  else
  {
    v6 = v0[6];
    OUTLINED_FUNCTION_137();
    v7();
    v8 = *(v6 + OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
    v0[19] = v8;
    v9 = sub_249E198FC;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_249E198FC()
{
  OUTLINED_FUNCTION_11();
  *(v0 + 160) = sub_249E4F34C(*(v0 + 88), v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_249E19960()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = *(v0 + 64);
    v3 = [*(v0 + 160) stateReason];
    v4 = sub_249E7AAA8();
    v6 = v5;

    v7 = [v1 stateExpiration];
    sub_249E7A588();

    *v2 = 2;
    v2[1] = v4;
    v2[2] = v6;
  }

  else
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    OUTLINED_FUNCTION_51_0();
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_249E19A5C()
{
  OUTLINED_FUNCTION_11();
  sub_249E50708(*(v0 + 88), *(v0 + 64));
  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E19AC0()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_10_0();
  sub_249E2AA5C(v1);
  v2 = OUTLINED_FUNCTION_81();
  v3(v2);
  OUTLINED_FUNCTION_51_0();
  v4 = OUTLINED_FUNCTION_254();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E19B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  sub_249E2530C();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_31();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_249E19BE4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_249E19C04, 0, 0);
}

uint64_t sub_249E19C04()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_82();
  v1 = *(v0 + 16);
  v2 = sub_249E7A698();
  v3 = sub_249E7AE28();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    OUTLINED_FUNCTION_70();
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_6();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&dword_249DEE000, v2, v3, "Reevaluating Devices in Home: %@", v5, 0xCu);
    sub_249E2A8CC(v6, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  sub_249DF8E38();
  *(v0 + 32) = v8;
  v9 = sub_249E51FB4();
  *(v0 + 40) = v9;
  if (v9)
  {
    if (v9 < 1)
    {
      __break(1u);
    }

    else
    {
      v12 = *(v0 + 32);
      *(v0 + 48) = *(*(v0 + 24) + OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
      *(v0 + 56) = 0;
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C204D50](0);
      }

      else
      {
        v13 = *(v12 + 32);
      }

      *(v0 + 64) = v13;
      OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_253();
    }

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_253();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21);
  }
}

uint64_t sub_249E19DB8()
{
  OUTLINED_FUNCTION_11();
  sub_249E4FE48(*(v0 + 64));
  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E19E18()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_275();
  if (v1)
  {

    OUTLINED_FUNCTION_9_0();

    return v2();
  }

  else
  {
    v4 = *(v0 + 56) + 1;
    *(v0 + 56) = v4;
    v5 = *(v0 + 32);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C204D50]();
    }

    else
    {
      v6 = OUTLINED_FUNCTION_328(v4, v5);
    }

    *(v0 + 64) = v6;
    v7 = OUTLINED_FUNCTION_254();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

void sub_249E19EE0()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v3);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_84();

  v5 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_274())
  {
    OUTLINED_FUNCTION_70();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v7 = swift_slowAlloc();
    v32 = v7;
    *v6 = 136315138;
    v8 = sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
    v9 = MEMORY[0x24C204800](v2, v8);
    v11 = sub_249E3A958(v9, v10, &v32);

    *(v6 + 4) = v11;
    OUTLINED_FUNCTION_107(&dword_249DEE000, v12, v13, "Did update homes %s");
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v32 = MEMORY[0x277D84F90];
  v14 = sub_249E51FB4();
  for (i = 0; ; ++i)
  {
    if (v14 == i)
    {
      v20 = v32;
      sub_249E7AC78();
      OUTLINED_FUNCTION_166();
      OUTLINED_FUNCTION_28();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      OUTLINED_FUNCTION_22();
      v25 = swift_allocObject();
      OUTLINED_FUNCTION_185(v25);
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_158();
      v26 = swift_allocObject();
      v27 = OUTLINED_FUNCTION_218(v26);
      *(v27 + 32) = v5;
      *(v27 + 40) = v20;
      v28 = OUTLINED_FUNCTION_32();
      sub_249E5ED90(v28, v29, v0, v30, v31);

      OUTLINED_FUNCTION_6_1();
      return;
    }

    sub_249E51FD8();
    v16 = (v2 & 0xC000000000000001) != 0 ? MEMORY[0x24C204D50](i, v2) : *(v2 + 8 * i + 32);
    v17 = v16;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_249DF8E38();
    v19 = v18;

    v5 = &v32;
    sub_249E27E98(v19);
  }

  __break(1u);
}

uint64_t sub_249E1A124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_249E1A144, 0, 0);
}

uint64_t sub_249E1A144()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v4 = *(v0 + 48);
    if (v4 >> 62)
    {
      v5 = OUTLINED_FUNCTION_256();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v0 + 64) = v5;
    if (v5)
    {
      if (v5 < 1)
      {
        __break(1u);
      }

      else
      {
        v6 = *(v0 + 48);
        *(v0 + 72) = OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager;
        *(v0 + 80) = 0;
        if ((v6 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C204D50](0);
        }

        else
        {
          v7 = *(v6 + 32);
        }

        *(v0 + 88) = v7;
        OUTLINED_FUNCTION_128();
        v5 = OUTLINED_FUNCTION_36_0();
      }

      return MEMORY[0x2822009F8](v5, v2, v3);
    }
  }

  OUTLINED_FUNCTION_9_0();

  return v8();
}

uint64_t sub_249E1A244()
{
  OUTLINED_FUNCTION_11();
  sub_249E4F8BC(*(v0 + 88));

  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E1A2A8()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_275();
  if (v3)
  {

    OUTLINED_FUNCTION_9_0();

    return v1();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_238();
    if (v3)
    {
      v6 = OUTLINED_FUNCTION_328(v4, v5);
    }

    else
    {
      v6 = MEMORY[0x24C204D50](v4);
    }

    *(v0 + 88) = v6;
    OUTLINED_FUNCTION_128();
    v7 = OUTLINED_FUNCTION_36_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_249E1A3D4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v4);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_84();
  v6 = a1;
  v7 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_274())
  {
    OUTLINED_FUNCTION_70();
    swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_173();
    *v2 = 138412290;
    *(v2 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    OUTLINED_FUNCTION_107(&dword_249DEE000, v10, v11, "Did add home %@");
    sub_249E2A8CC(v8, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v12 = v6;
  sub_249DF8E38();
  OUTLINED_FUNCTION_9_1();
  sub_249E7AC78();
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_22();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_158();
  v18 = swift_allocObject();
  v19 = OUTLINED_FUNCTION_218(v18);
  *(v19 + 32) = v17;
  *(v19 + 40) = v12;
  v20 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v20, v21, v1, v22, v23);
}

uint64_t sub_249E1A564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_249E1A584, 0, 0);
}

uint64_t sub_249E1A584()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v4 = *(v0 + 48);
    if (v4 >> 62)
    {
      v5 = OUTLINED_FUNCTION_256();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v0 + 64) = v5;
    if (v5)
    {
      if (v5 < 1)
      {
        __break(1u);
      }

      else
      {
        v6 = *(v0 + 48);
        *(v0 + 72) = OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager;
        *(v0 + 80) = 0;
        if ((v6 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C204D50](0);
        }

        else
        {
          v7 = *(v6 + 32);
        }

        *(v0 + 88) = v7;
        OUTLINED_FUNCTION_129();
        v5 = OUTLINED_FUNCTION_36_0();
      }

      return MEMORY[0x2822009F8](v5, v2, v3);
    }
  }

  OUTLINED_FUNCTION_9_0();

  return v8();
}

uint64_t sub_249E1A684()
{
  OUTLINED_FUNCTION_11();
  sub_249E4F8BC(*(v0 + 88));

  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E1A6E8()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_275();
  if (v3)
  {

    OUTLINED_FUNCTION_9_0();

    return v1();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_238();
    if (v3)
    {
      v6 = OUTLINED_FUNCTION_328(v4, v5);
    }

    else
    {
      v6 = MEMORY[0x24C204D50](v4);
    }

    *(v0 + 88) = v6;
    OUTLINED_FUNCTION_129();
    v7 = OUTLINED_FUNCTION_36_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_249E1A808(void *a1)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v6);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_84();
  v8 = a1;
  v9 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_274())
  {
    OUTLINED_FUNCTION_70();
    swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_173();
    *v3 = 138412290;
    *(v3 + 4) = v8;
    *v10 = v8;
    v11 = v8;
    OUTLINED_FUNCTION_107(&dword_249DEE000, v12, v13, "Did remove home %@");
    sub_249E2A8CC(v10, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  sub_249E7AC78();
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  OUTLINED_FUNCTION_22();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_185(v18);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_158();
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_210(v19);
  *(v20 + 32) = v9;
  *(v20 + 40) = v8;
  v21 = v8;
  v22 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v22, v23, v1, v24, v4);
}

uint64_t sub_249E1A994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23748, &qword_249E7E120);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v7 = sub_249E7A628();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E1AAC8, 0, 0);
}

uint64_t sub_249E1AAC8()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v2 = v0[6];
    v0[15] = *(Strong + OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
    v3 = [v2 uniqueIdentifier];
    sub_249E7A608();

    v4 = OUTLINED_FUNCTION_57();

    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  else
  {

    OUTLINED_FUNCTION_9_0();

    return v7();
  }
}

uint64_t sub_249E1ABC4()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[12];
  sub_249E4FBA8(v0[13]);
  v0[16] = *(v1 + 8);
  v0[17] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2 = OUTLINED_FUNCTION_126();
  v3(v2);
  v4 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E1AC54()
{
  OUTLINED_FUNCTION_11();
  v1 = [*(v0 + 48) uniqueIdentifier];
  sub_249E7A608();

  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_249E1AD0C;
  v3 = OUTLINED_FUNCTION_97(*(v0 + 104));

  return sub_249E138E0(v3);
}

uint64_t sub_249E1AD0C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  v4 = *(v3 + 128);
  v5 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;
  *(v8 + 152) = v7;

  v9 = OUTLINED_FUNCTION_81();
  v4(v9);
  v10 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_249E1AE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_50();
  v15 = *(v13[19] + 16);
  if (v15)
  {
    OUTLINED_FUNCTION_108();
    do
    {
      v16 = v13[9];
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_220();
      sub_249E2A75C(v17, v18, v19, v20);
      OUTLINED_FUNCTION_249();
      OUTLINED_FUNCTION_220();
      sub_249E2A75C(v21, v22, v23, v24);
      swift_unknownObjectRelease();
      v25 = *(v16 + *(type metadata accessor for XPCClient(0) + 20));
      OUTLINED_FUNCTION_0_6();
      sub_249E2AA5C(v16);
      [v25 invalidate];

      OUTLINED_FUNCTION_187();
      sub_249E2A8CC(v26, v27, v28);
      v12 += v14;
      --v15;
    }

    while (v15);
  }

  v29 = v13[14];

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_34();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_249E1AFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_249E1AFF8, 0, 0);
}

uint64_t sub_249E1AFF8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_298(Strong, OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
    OUTLINED_FUNCTION_189();
    v2 = OUTLINED_FUNCTION_36_0();

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v5();
  }
}

uint64_t sub_249E1B09C()
{
  OUTLINED_FUNCTION_11();
  v0 = OUTLINED_FUNCTION_279();
  sub_249E4F8BC(v0);

  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

void sub_249E1B1A0(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  OUTLINED_FUNCTION_15_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v13);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v14);
  v16 = v37 - v15;
  v17 = OBJC_IVAR____TtC10DropInCore13DropInManager_logger;
  v18 = v10;
  v19 = v12;
  v20 = sub_249E7A698();
  v21 = sub_249E7AE28();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_188();
    v37[1] = v6;
    v23 = v4;
    v24 = v22;
    v17 = OUTLINED_FUNCTION_234();
    *v24 = 138412546;
    *(v24 + 4) = v18;
    *(v24 + 12) = 2112;
    *(v24 + 14) = v19;
    *v17 = v18;
    v17[1] = v19;
    v25 = v18;
    v26 = v19;
    _os_log_impl(&dword_249DEE000, v20, v21, v8, v24, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    v4 = v23;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  if (sub_249DF4038())
  {
    OUTLINED_FUNCTION_9_1();
    sub_249E7AC78();
    OUTLINED_FUNCTION_28();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    OUTLINED_FUNCTION_22();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_282(v31);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_158();
    v32 = swift_allocObject();
    v33 = OUTLINED_FUNCTION_218(v32);
    *(v33 + 32) = v17;
    *(v33 + 40) = v18;
    v34 = OUTLINED_FUNCTION_99();
    sub_249E5ED90(v34, v35, v16, v4, v36);
  }

  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E1B384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_249E1B3A4, 0, 0);
}

uint64_t sub_249E1B3A4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_298(Strong, OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
    OUTLINED_FUNCTION_189();
    v2 = OUTLINED_FUNCTION_36_0();

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v5();
  }
}

uint64_t sub_249E1B448()
{
  OUTLINED_FUNCTION_11();
  v0 = OUTLINED_FUNCTION_279();
  sub_249E4FA38(v0);

  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E1B54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_249E1B56C, 0, 0);
}

uint64_t sub_249E1B56C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_298(Strong, OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
    OUTLINED_FUNCTION_189();
    v2 = OUTLINED_FUNCTION_36_0();

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v5();
  }
}

uint64_t sub_249E1B610()
{
  OUTLINED_FUNCTION_11();
  v0 = OUTLINED_FUNCTION_279();
  sub_249E4FE48(v0);

  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E1B674()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_9_0();

  return v1();
}

void sub_249E1B758(uint64_t a1, const char *a2, ...)
{
  OUTLINED_FUNCTION_15_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v8);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = v7;
  v13 = sub_249E7A698();
  v14 = sub_249E7AE28();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_188();
    v34 = v5;
    v16 = v15;
    v17 = OUTLINED_FUNCTION_6();
    v33 = v17;
    OUTLINED_FUNCTION_74();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v16 = 138412546;
    *(v16 + 4) = v12;
    *v17 = v12;
    *(v16 + 12) = 2080;
    v36 = [v12 home];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23740, &qword_249E7E0D8);
    v18 = sub_249E7AAC8();
    v20 = v11;
    v21 = sub_249E3A958(v18, v19, &v37);

    *(v16 + 14) = v21;
    v11 = v20;
    _os_log_impl(&dword_249DEE000, v13, v14, v34, v16, 0x16u);
    sub_249E2A8CC(v33, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    v7 = v35;
    OUTLINED_FUNCTION_336();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  if (sub_249DF4038())
  {
    OUTLINED_FUNCTION_103();
    sub_249E7AC78();
    OUTLINED_FUNCTION_28();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    OUTLINED_FUNCTION_22();
    v26 = swift_allocObject();
    OUTLINED_FUNCTION_185(v26);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_158();
    v27 = swift_allocObject();
    v28 = OUTLINED_FUNCTION_218(v27);
    *(v28 + 32) = v12;
    *(v28 + 40) = v7;
    v29 = OUTLINED_FUNCTION_99();
    sub_249E5ED90(v29, v30, v11, v3, v31);
  }

  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E1B9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_249E1B9C0, 0, 0);
}

uint64_t sub_249E1B9C0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_298(Strong, OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager);
    OUTLINED_FUNCTION_189();
    v2 = OUTLINED_FUNCTION_36_0();

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v5();
  }
}

uint64_t sub_249E1BA64()
{
  OUTLINED_FUNCTION_11();
  v0 = OUTLINED_FUNCTION_279();
  sub_249E4FE48(v0);

  v1 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_249E1BB54(void *a1, void *a2)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v7);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_84();
  v9 = a2;
  v10 = a1;
  v11 = sub_249E7A698();
  v12 = sub_249E7AE28();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_188();
    v14 = OUTLINED_FUNCTION_234();
    *v13 = 138412546;
    *(v13 + 4) = v9;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v10;
    *v14 = v9;
    v14[1] = v10;
    v15 = v9;
    v16 = v10;
    _os_log_impl(&dword_249DEE000, v11, v12, "Did add user %@ to home %@", v13, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  sub_249E7AC78();
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  OUTLINED_FUNCTION_22();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_185(v21);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_158();
  v22 = swift_allocObject();
  v23 = OUTLINED_FUNCTION_210(v22);
  *(v23 + 32) = v11;
  *(v23 + 40) = v10;
  v24 = v10;
  v25 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v25, v26, v2, v27, v4);
}

uint64_t sub_249E1BD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_249E1BD44, 0, 0);
}

uint64_t sub_249E1BD44()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_26();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v3 = OUTLINED_FUNCTION_62(v2);

    return sub_249E19BE4(v3);
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v5();
  }
}

uint64_t sub_249E1BE0C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_39_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_249E1BF6C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  oslog = sub_249E7A698();
  v5 = sub_249E7AE28();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = OUTLINED_FUNCTION_188();
    v7 = OUTLINED_FUNCTION_234();
    *v6 = 138412546;
    *(v6 + 4) = v3;
    *(v6 + 12) = 2112;
    *(v6 + 14) = v4;
    *v7 = v3;
    v7[1] = v4;
    v8 = v3;
    v9 = v4;
    _os_log_impl(&dword_249DEE000, oslog, v5, "Did remove user %@ from home %@", v6, 0x16u);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_258(v10);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }
}

void sub_249E1C104()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v7);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_84();
  v9 = sub_249DF8B94(v4);
  v10 = v4;
  v11 = v6;
  v12 = sub_249E7A698();
  v13 = sub_249E7AE28();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = OUTLINED_FUNCTION_234();
    *v14 = 138412802;
    *(v14 + 4) = v10;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v11;
    *v15 = v10;
    v15[1] = v11;
    *(v14 + 22) = 1024;
    *(v14 + 24) = v9;
    v16 = v10;
    v17 = v11;
    _os_log_impl(&dword_249DEE000, v12, v13, "Access Control Updated for user %@ in home %@, Drop In Access = %{BOOL}d", v14, 0x1Cu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  sub_249E7AC78();
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_28();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  OUTLINED_FUNCTION_22();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_185(v22);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_158();
  v23 = swift_allocObject();
  v24 = OUTLINED_FUNCTION_210(v23);
  *(v24 + 32) = v12;
  *(v24 + 40) = v11;
  v25 = v11;
  v26 = OUTLINED_FUNCTION_32();
  sub_249E5ED90(v26, v27, v0, v28, v2);

  OUTLINED_FUNCTION_6_1();
}