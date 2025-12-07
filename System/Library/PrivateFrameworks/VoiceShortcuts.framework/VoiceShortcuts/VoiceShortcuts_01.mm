unint64_t sub_2310577F4()
{
  result = qword_280CCB6A0;
  if (!qword_280CCB6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB6A0);
  }

  return result;
}

unint64_t sub_231057848()
{
  result = qword_280CCB6A8;
  if (!qword_280CCB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB6A8);
  }

  return result;
}

uint64_t sub_23105789C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_231158E58();
  v8 = v7;
  v9 = sub_231158E58();
  v11 = v10;
  v12 = sub_231158E58();
  v14 = v13;
  v15 = a1;
  v16._countAndFlagsBits = v6;
  v16._object = v8;
  v17._countAndFlagsBits = v9;
  v17._object = v11;
  v18._countAndFlagsBits = v12;
  v18._object = v14;
  CSSearchableItemAttributeSet.setAppShortcutDisplayRepresentation(for:bundleIdentifier:associatedAppBundleIdentifier:)(v16, v17, v18);
}

Swift::Void __swiftcall CSSearchableItemAttributeSet.associateWithAppEntity(for:)(WFContextualAction *a1)
{
  v3 = [(WFContextualAction *)a1 identifier];
  sub_231158E58();

  sub_231057B20(v1);
  if (!v4)
  {
    v5 = [(WFContextualAction *)a1 title];
    sub_231158E58();
  }

  sub_231158DB8();
  sub_2311593E8();
}

void sub_231057AB8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CSSearchableItemAttributeSet.associateWithAppEntity(for:)(v4);
}

uint64_t sub_231057B20(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231158E58();

  return v3;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_231057B98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_231057BD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_231057C44()
{
  result = qword_280CCB5C8;
  if (!qword_280CCB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB5C8);
  }

  return result;
}

unint64_t sub_231057C98()
{
  result = qword_27DD3BE10;
  if (!qword_27DD3BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BE10);
  }

  return result;
}

unint64_t sub_231057CEC()
{
  result = qword_280CCBFA0;
  if (!qword_280CCBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCBFA0);
  }

  return result;
}

unint64_t sub_231057D40()
{
  result = qword_280CCB6C0;
  if (!qword_280CCB6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB6C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WFAppShortcutCodableProxy.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WFWorkflowDescriptorCodableProxy.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for WFWorkflowDescriptorCodableProxy.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_231057F7C()
{
  result = qword_27DD3BE40;
  if (!qword_27DD3BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BE40);
  }

  return result;
}

unint64_t sub_231057FD4()
{
  result = qword_27DD3BE48;
  if (!qword_27DD3BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BE48);
  }

  return result;
}

unint64_t sub_23105802C()
{
  result = qword_280CCB6B0;
  if (!qword_280CCB6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB6B0);
  }

  return result;
}

unint64_t sub_231058084()
{
  result = qword_280CCB6B8;
  if (!qword_280CCB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB6B8);
  }

  return result;
}

unint64_t sub_2310580DC()
{
  result = qword_280CCB5B8;
  if (!qword_280CCB5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB5B8);
  }

  return result;
}

unint64_t sub_231058134()
{
  result = qword_280CCB5C0;
  if (!qword_280CCB5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB5C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FDB38](a1, a2, a3, v3);
}

uint64_t sub_2310581C4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_231058230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

uint64_t sub_231058294(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      v10 = 0x676E6974616E6F64;
      v9 = OUTLINED_FUNCTION_17();
      MEMORY[0x231924980](v9);
      v6 = 39;
      v7 = 0xE100000000000000;
      goto LABEL_8;
    case 2:
      sub_231159588();

      OUTLINED_FUNCTION_48();
      goto LABEL_4;
    case 3:
      result = 1701602409;
      switch(a1)
      {
        case 1:
          result = 0xD00000000000001BLL;
          break;
        case 2:
          result = 0xD000000000000013;
          break;
        case 3:
          result = 0xD000000000000012;
          break;
        default:
          return result;
      }

      return result;
    default:
      sub_231159588();

      OUTLINED_FUNCTION_48();
      v5 = v4 + 25;
LABEL_4:
      v10 = v5;
      v6 = OUTLINED_FUNCTION_17();
LABEL_8:
      MEMORY[0x231924980](v6, v7);
      return v10;
  }
}

uint64_t sub_231058420(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 != 1)
      {
        return 0;
      }

      goto LABEL_11;
    case 2:
      if (a6 != 2)
      {
        return 0;
      }

      goto LABEL_11;
    case 3:
      switch(a1)
      {
        case 1:
          v8 = a6 == 3 && a4 == 1;
          break;
        case 2:
          v8 = a6 == 3 && a4 == 2;
          break;
        case 3:
          v8 = a6 == 3 && a4 == 3;
          break;
        default:
          return a6 == 3 && !(a5 | a4);
      }

      return v8 && a5 == 0;
    default:
      if (a6)
      {
        return 0;
      }

LABEL_11:
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      else
      {
        return sub_231159818();
      }
  }
}

uint64_t sub_231058530()
{
  v13 = sub_231159328();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  v6 = v5 - v4;
  sub_231159318();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  v8 = sub_231158D48();
  v9 = OUTLINED_FUNCTION_19(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_0();
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 56) = 3;
  sub_231054A0C(0, &qword_280CCAF08, 0x277D85C78);
  sub_231158D08();
  sub_231060244(&unk_280CCAF10, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC00, &unk_231161AB0);
  sub_23106028C();
  sub_231159498();
  v10 = *MEMORY[0x277D85260];
  v11 = *(v2 + 104);
  v11(v6, v10, v13);
  OUTLINED_FUNCTION_46();
  *(v0 + 64) = sub_231159358();
  sub_231158D08();
  sub_231159498();
  v11(v6, v10, v13);
  OUTLINED_FUNCTION_46();
  *(v0 + 72) = sub_231159358();
  return v0;
}

uint64_t sub_231058800()
{
  OUTLINED_FUNCTION_4_1();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v4 = sub_231157F18();
  v1[9] = v4;
  OUTLINED_FUNCTION_5(v4);
  v1[10] = v5;
  v1[11] = *(v6 + 64);
  v1[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CF40, &qword_231166450);
  OUTLINED_FUNCTION_19(v7);
  v1[13] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2310588F0()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v7 = sub_2311585F8();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  (*(v3 + 16))(v1, v6, v4);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[14] = v9;
  *(v9 + 16) = v5;
  (*(v3 + 32))(v9 + v8, v1, v4);

  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_231058A60;

  return MEMORY[0x2821DAC30]();
}

uint64_t sub_231058A60()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 128) = v0;

  sub_231060190(*(v2 + 104), &qword_27DD3CF40, &qword_231166450);

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231058BB0()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_231058C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_28_0();
  swift_getErrorValue();
  v10 = sub_2311598B8();
  sub_231086A14(v10, v11, 2);

  v12 = OUTLINED_FUNCTION_0_5();
  sub_231086A14(v12, v13, v14);
  swift_willThrow();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_27_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_231058CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE70, &qword_2311626F0);
  v4[5] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_231058DB8;

  return sub_231059184(a2, a4);
}

uint64_t sub_231058DB8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_231058EE8()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[5];
  v2 = sub_231157F18();
  OUTLINED_FUNCTION_11();
  v3 = OUTLINED_FUNCTION_51();
  v4(v3);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_231058FD4;
  v6 = v0[5];
  v7 = v0[2];

  return sub_231059B7C(v7, v6);
}

uint64_t sub_231058FD4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  *(v3 + 64) = v0;

  sub_231060190(v6, &unk_27DD3CE70, &qword_2311626F0);
  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v12();
  }
}

uint64_t sub_231059128()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_231059184(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2311577C8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_231158258();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_231158AE8();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v7 = sub_231157F18();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231059368, 0, 0);
}

uint64_t sub_231059368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_28_0();
  v11 = *(v10 + 32);
  if (*(v11 + 56) != 3 || *(v11 + 40) != 0)
  {
    *(v10 + 168) = 37;
    sub_23105FAA4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_13_2();
    sub_231060244(v12, v13, MEMORY[0x277CC8650]);
    sub_231157918();
    sub_2311577B8();
    v14 = OUTLINED_FUNCTION_17();
    v15(v14);
    swift_willThrow();
    OUTLINED_FUNCTION_60();

    OUTLINED_FUNCTION_1();
LABEL_4:
    OUTLINED_FUNCTION_27_0();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  (*(*(v10 + 128) + 104))(*(v10 + 136), *MEMORY[0x277D79C50], *(v10 + 120));
  sub_231060244(&qword_280CCB140, MEMORY[0x277D79C60], MEMORY[0x277D79C68]);
  v25 = sub_231158E18();
  v26 = OUTLINED_FUNCTION_25_0();
  v27(v26);
  if (v25)
  {
    v28 = OUTLINED_FUNCTION_0_5();
    sub_231086A14(v28, v29, v30);

    OUTLINED_FUNCTION_1();
    goto LABEL_4;
  }

  sub_231086A14(1819242324, 0xE400000000000000, 0);
  v31 = swift_task_alloc();
  *(v10 + 144) = v31;
  *v31 = v10;
  v31[1] = sub_231059604;
  OUTLINED_FUNCTION_27_0();

  return sub_23105B4F8(v32, v33);
}

uint64_t sub_231059604()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v4;
  *(v2 + 160) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231059704()
{
  v56 = v0;
  v1 = IDSCopyLocalDeviceUniqueID();
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v7 = sub_231158E58();
    v9 = v8;

    *v3 = v7;
    v3[1] = v9;
    (*(v6 + 104))(v3, *MEMORY[0x277D730E0], v5);
    sub_2311581C8();
    (*(v6 + 16))(v4, v3, v5);
    v10 = sub_231158238();
    v11 = sub_2311592C8();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 64);
    v17 = *(v0 + 72);
    if (v12)
    {
      v54 = *(v0 + 64);
      v19 = swift_slowAlloc();
      v52 = v11;
      v20 = swift_slowAlloc();
      v55 = v20;
      *v19 = 136315138;
      v51 = sub_231158AD8();
      v53 = v15;
      v22 = v21;
      v23 = *(v14 + 8);
      v23(v13, v16);
      v24 = sub_2310488F8(v51, v22, &v55);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_23103C000, v10, v52, "Device id: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v25 = v23;
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();

      (*(v17 + 8))(v53, v54);
    }

    else
    {

      v25 = *(v14 + 8);
      v25(v13, v16);
      (*(v17 + 8))(v15, v18);
    }

    v29 = *(v0 + 152);
    v28 = *(v0 + 160);
    v30 = *(v0 + 112);
    v31 = *(v0 + 32);
    OUTLINED_FUNCTION_6_3();
    sub_231086A14(v32, v33, v34);
    v35 = swift_task_alloc();
    v35[2] = v31;
    v35[3] = v30;
    v35[4] = v29;
    OUTLINED_FUNCTION_55();
    v36 = v28;
    v37 = *(v0 + 152);
    if (!v36)
    {

      OUTLINED_FUNCTION_6_3();
      sub_231086A14(v39, v40, v41);
      sub_23105D054(v37);

      v46 = OUTLINED_FUNCTION_45();
      (v25)(v46);
      v47 = OUTLINED_FUNCTION_0_5();
      sub_231086A14(v47, v48, v49);

      OUTLINED_FUNCTION_1();
      goto LABEL_10;
    }

    v38 = OUTLINED_FUNCTION_31();
    (v25)(v38);
  }

  else
  {
    v26 = *(v0 + 152);
    sub_23106007C();
    swift_allocError();
    *v27 = 0;
    v27[1] = 0;
    swift_willThrow();
  }

  v42 = OUTLINED_FUNCTION_0_5();
  sub_231086A14(v42, v43, v44);

  OUTLINED_FUNCTION_1();
LABEL_10:

  return v50();
}

uint64_t sub_231059AF0()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  v0 = OUTLINED_FUNCTION_0_5();
  sub_231086A14(v0, v1, v2);
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_62();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_231059B7C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_2311577C8();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_231158B08();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = sub_2311588B8();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE70, &qword_2311626F0);
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231059D68, 0, 0);
}

uint64_t sub_231059D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_28_0();
  v62 = *MEMORY[0x277D85DE8];
  v10 = *(v9 + 64);
  if (*(v10 + 56) != 3 || *(v10 + 40) != 0)
  {
    *(v9 + 304) = 37;
    sub_23105FAA4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_13_2();
    sub_231060244(v11, v12, MEMORY[0x277CC8650]);
    sub_231157918();
    sub_2311577B8();
    v13 = OUTLINED_FUNCTION_45();
    v14(v13);
    swift_willThrow();
LABEL_4:
    OUTLINED_FUNCTION_44();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_27_0();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, v62);
  }

  v24 = *(v9 + 152);
  sub_23106001C(*(v9 + 56), v24, &unk_27DD3CE70, &qword_2311626F0);
  v25 = sub_231157F18();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v25);
  v27 = *(v9 + 152);
  if (EnumTagSinglePayload == 1)
  {
    sub_231060190(v27, &unk_27DD3CE70, &qword_2311626F0);
LABEL_16:
    v39 = (v9 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE60, &unk_231162708);
    sub_231158608();
LABEL_28:
    *(v9 + 224) = *v39;
    sub_2311588A8();
    v59 = swift_task_alloc();
    *(v9 + 232) = v59;
    *v59 = v9;
    OUTLINED_FUNCTION_8_2(v59);
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2821DADB0](v60);
  }

  v28 = (*(*(v25 - 8) + 88))(v27, v25);
  v29 = *(v9 + 152);
  if (v28 != *MEMORY[0x277D79C58])
  {
    v37 = OUTLINED_FUNCTION_25_0();
    v38(v37);
    goto LABEL_16;
  }

  v30 = OUTLINED_FUNCTION_25_0();
  v31(v30);
  *(v9 + 160) = *v29;
  v32 = v29[1];
  *(v9 + 168) = v32;

  if (!*(v32 + 16))
  {

LABEL_27:
    v39 = (v9 + 40);
    v58 = *(v9 + 160);
    *(swift_task_alloc() + 16) = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE60, &unk_231162708);
    OUTLINED_FUNCTION_12_2();
    sub_231158608();

    goto LABEL_28;
  }

  v33 = *(v32 + 32);
  *(v9 + 308) = v33;
  v34 = -1;
  v35 = -1 << v33;
  if (-v35 < 64)
  {
    v34 = ~(-1 << -v35);
  }

  if ((v34 & *(v32 + 56)) == 0)
  {
    v43 = 0;
    v44 = ((63 - v35) >> 6) - 1;
    while (v44 != v43)
    {
      v36 = v43 + 1;
      if (*(*(v9 + 168) + 8 * v43++ + 64))
      {
        goto LABEL_21;
      }
    }

    goto LABEL_27;
  }

  v36 = 0;
LABEL_21:
  OUTLINED_FUNCTION_20_0(v36);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v47 = OUTLINED_FUNCTION_61(v46);
  *(v9 + 192) = v47;
  *(v47 + 16) = xmmword_231161E80;
  v48 = objc_opt_self();

  OUTLINED_FUNCTION_51();
  v49 = sub_231158E28();

  *(v9 + 32) = 0;
  v50 = [v48 sourceIdentifierWithValue:v49 error:v9 + 32];

  v51 = *(v9 + 32);
  if (!v50)
  {
    v57 = v51;

    sub_231157938();

    swift_willThrow();

    *(v47 + 16) = 0;

    v40 = OUTLINED_FUNCTION_0_5();
    sub_231086A14(v40, v41, v42);
    goto LABEL_4;
  }

  *(v47 + 32) = v50;
  v52 = v51;
  v53 = swift_task_alloc();
  *(v9 + 200) = v53;
  *v53 = v9;
  OUTLINED_FUNCTION_9_2(v53);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_27_0();

  return sub_23105B4F8(v54, v55);
}

uint64_t sub_23105A2E0()
{
  OUTLINED_FUNCTION_22_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v5 = v4;
  *(v2 + 208) = v6;
  *(v2 + 216) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23105A448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_28_0();
  v49 = *MEMORY[0x277D85DE8];
  v10 = *(v9 + 208);
  v11 = *(v9 + 216);
  OUTLINED_FUNCTION_6_3();
  sub_231086A14(v12, v13, v14);
  OUTLINED_FUNCTION_6_3();
  sub_231086A14(v15, v16, v17);
  sub_23105D054(v10);
  v18 = *(v9 + 208);
  if (v11)
  {

LABEL_3:
    v19 = OUTLINED_FUNCTION_0_5();
    sub_231086A14(v19, v20, v21);
    OUTLINED_FUNCTION_44();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_27_0();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v49);
  }

  v31 = *(v9 + 184);
  if (((*(v9 + 176) - 1) & *(v9 + 176)) != 0)
  {
LABEL_11:
    OUTLINED_FUNCTION_20_0(v31);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
    v34 = OUTLINED_FUNCTION_61(v33);
    *(v9 + 192) = v34;
    *(v34 + 16) = xmmword_231161E80;
    v35 = objc_opt_self();

    OUTLINED_FUNCTION_51();
    v36 = sub_231158E28();

    *(v9 + 32) = 0;
    v37 = [v35 sourceIdentifierWithValue:v36 error:v9 + 32];

    v38 = *(v9 + 32);
    if (!v37)
    {
      v44 = v38;

      sub_231157938();

      swift_willThrow();

      *(v34 + 16) = 0;

      goto LABEL_3;
    }

    *(v34 + 32) = v37;
    v39 = v38;
    v40 = swift_task_alloc();
    *(v9 + 200) = v40;
    *v40 = v9;
    OUTLINED_FUNCTION_9_2(v40);
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_27_0();

    return sub_23105B4F8(v41, v42);
  }

  else
  {
    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
      }

      if (v32 >= (((1 << *(v9 + 308)) + 63) >> 6))
      {
        break;
      }

      ++v31;
      if (*(*(v9 + 168) + 8 * v32 + 56))
      {
        v31 = v32;
        goto LABEL_11;
      }
    }

    v45 = *(v9 + 160);
    *(swift_task_alloc() + 16) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE60, &unk_231162708);
    OUTLINED_FUNCTION_12_2();
    sub_231158608();

    *(v9 + 224) = *(v9 + 40);
    sub_2311588A8();
    v46 = swift_task_alloc();
    *(v9 + 232) = v46;
    *v46 = v9;
    OUTLINED_FUNCTION_8_2(v46);
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2821DADB0](v47);
  }
}

uint64_t sub_23105A7D4()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v3 = v2;
  *v3 = *v1;
  v2[30] = v4;
  v2[31] = v0;

  (*(v2[17] + 8))(v2[18], v2[16]);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23105A948()
{
  v4 = *(v0 + 224);
  v5 = *(v0 + 104);
  v6 = *(v4 + 32);
  *(v0 + 309) = v6;
  v7 = -1;
  v8 = -1 << v6;
  if (-(-1 << v6) < 64)
  {
    v7 = ~(-1 << -(-1 << v6));
  }

  v9 = v7 & *(v4 + 56);
  if (!v9)
  {
    v11 = 0;
    v12 = ((63 - v8) >> 6) - 1;
    while (v12 != v11)
    {
      v10 = v11 + 1;
      v9 = *(v4 + 8 * v11++ + 64);
      if (v9)
      {
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_53_0(v4);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE68, &unk_231162720);
    OUTLINED_FUNCTION_15_1(v32);
    sub_231158548();
    swift_unknownObjectRelease();
    v33 = OUTLINED_FUNCTION_0_5();
    sub_231086A14(v33, v34, v35);

    OUTLINED_FUNCTION_1();
LABEL_14:
    OUTLINED_FUNCTION_10();

    __asm { BRAA            X1, X16 }
  }

  v10 = 0;
LABEL_8:
  *(v0 + 256) = v9;
  *(v0 + 264) = v10;
  v14 = *(v0 + 112);
  v13 = *(v0 + 120);
  v15 = *(v0 + 96);
  (*(v5 + 16))(v13, *(v4 + 48) + *(v5 + 72) * (__clz(__rbit64(v9)) | (v10 << 6)), v15);
  (*(v5 + 32))(v14, v13, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v17 = OUTLINED_FUNCTION_61(v16);
  *(v0 + 272) = v17;
  *(v17 + 16) = xmmword_231161E80;
  v18 = objc_opt_self();
  sub_231158AB8();
  v19 = sub_231158E28();

  *(v0 + 24) = 0;
  v20 = [v18 sourceIdentifierWithValue:v19 error:v0 + 24];

  v21 = *(v0 + 24);
  if (!v20)
  {
    OUTLINED_FUNCTION_39();
    v28 = v21;
    sub_231157938();

    swift_willThrow();
    swift_unknownObjectRelease();

    *(v17 + 16) = 0;

    (*(v3 + 8))(v1, v2);
    v29 = OUTLINED_FUNCTION_0_5();
    sub_231086A14(v29, v30, v31);

    OUTLINED_FUNCTION_1();
    goto LABEL_14;
  }

  *(v17 + 32) = v20;
  v22 = v21;
  v23 = swift_task_alloc();
  *(v0 + 280) = v23;
  *v23 = v0;
  OUTLINED_FUNCTION_10_2(v23);
  OUTLINED_FUNCTION_10();

  return sub_23105B4F8(v24, v25);
}

uint64_t sub_23105ACCC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_2_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v7 + 288) = v6;
  *(v7 + 296) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23105AE1C()
{
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 240);
  v6 = *(v0 + 112);
  v7 = *(v0 + 64);
  OUTLINED_FUNCTION_6_3();
  sub_231086A14(v8, v9, v10);
  v11 = swift_task_alloc();
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v4;
  v11[5] = v5;
  OUTLINED_FUNCTION_55();
  v12 = v3;
  v13 = *(v0 + 288);
  if (v12)
  {
    v15 = *(v0 + 104);
    v14 = *(v0 + 112);
    v16 = *(v0 + 96);

    swift_unknownObjectRelease();

    (*(v15 + 8))(v14, v16);
LABEL_4:
    v17 = OUTLINED_FUNCTION_0_5();
    sub_231086A14(v17, v18, v19);
    OUTLINED_FUNCTION_44();

    OUTLINED_FUNCTION_1();
    goto LABEL_5;
  }

  sub_23105D054(v13);

  v22 = OUTLINED_FUNCTION_51();
  v23(v22);
  v24 = *(v0 + 264);
  v25 = (*(v0 + 256) - 1) & *(v0 + 256);
  if (v25)
  {
    v26 = *(v0 + 224);
    goto LABEL_14;
  }

  do
  {
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
    }

    if (v27 >= (((1 << *(v0 + 309)) + 63) >> 6))
    {
      OUTLINED_FUNCTION_53_0(*(v0 + 224));
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE68, &unk_231162720);
      OUTLINED_FUNCTION_15_1(v43);
      sub_231158548();
      swift_unknownObjectRelease();
      v44 = OUTLINED_FUNCTION_0_5();
      sub_231086A14(v44, v45, v46);

      OUTLINED_FUNCTION_1();
LABEL_5:
      OUTLINED_FUNCTION_10();

      __asm { BRAA            X1, X16 }
    }

    v26 = *(v0 + 224);
    v25 = *(v26 + 8 * v27 + 56);
    ++v24;
  }

  while (!v25);
  v24 = v27;
LABEL_14:
  *(v0 + 256) = v25;
  *(v0 + 264) = v24;
  (*(*(v0 + 104) + 16))(*(v0 + 120), *(v26 + 48) + *(*(v0 + 104) + 72) * (__clz(__rbit64(v25)) | (v24 << 6)), *(v0 + 96));
  v28 = OUTLINED_FUNCTION_25_0();
  v29(v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v31 = OUTLINED_FUNCTION_61(v30);
  *(v0 + 272) = v31;
  *(v31 + 16) = xmmword_231161E80;
  v32 = objc_opt_self();
  sub_231158AB8();
  v33 = sub_231158E28();

  *(v0 + 24) = 0;
  v34 = [v32 sourceIdentifierWithValue:v33 error:v0 + 24];

  v35 = *(v0 + 24);
  if (!v34)
  {
    OUTLINED_FUNCTION_39();
    v42 = v35;
    sub_231157938();

    swift_willThrow();
    swift_unknownObjectRelease();

    *(v31 + 16) = 0;

    (*(v2 + 8))(v6, v1);
    goto LABEL_4;
  }

  *(v31 + 32) = v34;
  v36 = v35;
  v37 = swift_task_alloc();
  *(v0 + 280) = v37;
  *v37 = v0;
  OUTLINED_FUNCTION_10_2(v37);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_10();

  return sub_23105B4F8(v38, v39);
}

uint64_t sub_23105B298()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();

  v0 = OUTLINED_FUNCTION_0_5();
  sub_231086A14(v0, v1, v2);
  OUTLINED_FUNCTION_43();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_62();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_23105B358()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  v0 = OUTLINED_FUNCTION_0_5();
  sub_231086A14(v0, v1, v2);
  OUTLINED_FUNCTION_43();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_62();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_23105B410()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();

  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_17();
  v1(v0);
  v2 = OUTLINED_FUNCTION_0_5();
  sub_231086A14(v2, v3, v4);
  OUTLINED_FUNCTION_43();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_62();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_23105B4F8(__int16 a1, uint64_t a2)
{
  *(v2 + 152) = a2;
  *(v2 + 176) = a1;
  return MEMORY[0x2822009F8](sub_23105B51C, 0, 0);
}

uint64_t sub_23105B51C()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 176);
  v2 = objc_opt_self();
  sub_231054A0C(0, &unk_280CCAF40, 0x277CF9500);
  v3 = sub_231158F38();
  *(v0 + 160) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_23105B684;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE80, &qword_231162770);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23105D128;
  *(v0 + 104) = &block_descriptor_2;
  *(v0 + 112) = v4;
  [v2 fullSetDonationWithItemType:v1 descriptors:v3 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23105B684()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = *(v3 + 48);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23105B780()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23105B7E8()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 160);
  swift_willThrow();

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_23105B850(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v54 = a1;
  v55 = a4;
  v6 = sub_231158258();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v44 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BEA0, &unk_231162788);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v38 - v9;
  v10 = sub_231158708();
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x28223BE20](v10);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2311585C8();
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x28223BE20](v12);
  v47 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_231158918();
  v50 = *(v14 - 8);
  v51 = v14;
  MEMORY[0x28223BE20](v14);
  v46 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_231158AE8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_231158538();
  v48 = *(v20 - 8);
  v49 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231158508();
  (*(v17 + 16))(v19, a3, v16);
  v23 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v24 = (v18 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  (*(v17 + 32))(v25 + v23, v19, v16);
  v26 = v55;
  *(v25 + v24) = v54;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v28 = v46;
  v27 = v47;

  v29 = v26;
  sub_231158848();
  sub_231158858();
  v30 = v56;
  sub_231158838();
  if (v30)
  {

    (*(v52 + 8))(v27, v53);
    (*(v50 + 8))(v28, v51);
    return (*(v48 + 8))(v22, v49);
  }

  else
  {
    v33 = v42;
    v32 = v43;

    (*(v52 + 8))(v27, v53);
    (*(v50 + 8))(v28, v51);
    (*(v48 + 8))(v22, v49);
    sub_2311585E8();
    sub_231060244(&qword_27DD3BEA8, MEMORY[0x277D72718], MEMORY[0x277D72710]);
    v34 = v45;
    sub_231158788();
    if (__swift_getEnumTagSinglePayload(v34, 1, v32) == 1)
    {
      return sub_231060190(v34, &qword_27DD3BEA0, &unk_231162788);
    }

    else
    {
      v35 = v33;
      v36 = *(v33 + 32);
      v37 = v39;
      v36(v39, v34, v32);
      sub_2311585D8();
      sub_231060244(&qword_27DD3CF60, MEMORY[0x277D72708], MEMORY[0x277D72700]);
      sub_2311587C8();
      return (*(v35 + 8))(v37, v32);
    }
  }
}

void sub_23105BFD8(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t), void (*a4)(char *, uint64_t), NSObject *a5)
{
  v10 = sub_2311583E8();
  sub_231086A14(v10, v11, 1);

  swift_weakInit();
  v12 = objc_autoreleasePoolPush();
  sub_23105C0A4(v13, a1, a3, a4, a5);
  objc_autoreleasePoolPop(v12);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    swift_weakDestroy();
  }
}

void sub_23105C0A4(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t), void (*a4)(char *, uint64_t), NSObject *a5)
{
  v100 = a5;
  v107 = sub_231158A58();
  v102 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v106 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_231158258();
  v9 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v111 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_231157D88();
  v112 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v101 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v88 - v14;
  v16 = sub_231158418();
  v109 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v110 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v88 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v99 = a4;
  v103 = v9;
  v104 = Strong;
  v105 = a2;
  sub_231158388();
  v22 = *MEMORY[0x277D79B58];
  v98 = a3;
  v23 = v112 + 13;
  v24 = v112[13];
  v24(v15, v22, v11);
  sub_231060244(&qword_27DD3BEB0, MEMORY[0x277D72238], MEMORY[0x277D72220]);
  sub_231060244(&qword_27DD3BEB8, MEMORY[0x277D72898], MEMORY[0x277D72890]);
  v25 = v113;
  v26 = sub_231158038();
  v116 = v25;
  if (v25)
  {
    (v112[1])(v15, v11);
    v28 = v109;
    v29 = *(v109 + 8);
    v29(v20, v16);
    v30 = v111;
    v31 = v16;
LABEL_8:
    v40 = v110;
    goto LABEL_9;
  }

  v32 = v27;
  v95 = v24;
  v96 = v22;
  v113 = v20;
  v97 = v16;
  v33 = v112[1];
  v34 = v26;
  v35 = v112 + 1;
  v33(v15, v11);
  v36 = objc_allocWithZone(MEMORY[0x277D21168]);
  sub_2310601EC(v34, v32);
  v37 = v116;
  v38 = sub_23105F240(v34, v32);
  v116 = v37;
  if (v37)
  {
    v39 = v32;
    v28 = v109;
    v29 = *(v109 + 8);
    v31 = v97;
    v29(v113, v97);
    sub_231054A60(v34, v39);
LABEL_7:
    v30 = v111;
    goto LABEL_8;
  }

  v56 = v11;
  v89 = v38;
  v90 = v34;
  v57 = sub_231158758();
  v40 = v110;
  v116 = 0;
  v58 = v57;
  v59 = *(v57 + 16);
  if (!v59)
  {
    v112 = v32;

    v71 = MEMORY[0x277D84F90];
    v31 = v97;
    v28 = v109;
LABEL_20:
    v72 = v113;
    v73 = objc_allocWithZone(MEMORY[0x277D21150]);
    v74 = v116;
    v75 = sub_23105F320(v89, v71, MEMORY[0x277D84F90]);
    v116 = v74;
    if (v74)
    {
      v29 = *(v28 + 8);
      v29(v72, v31);
    }

    else
    {
      v76 = v75;
      v77 = sub_2311583E8();
      v79 = v78;
      v80 = objc_allocWithZone(MEMORY[0x277D21160]);
      v81 = v116;
      v82 = sub_23105F9D8(v77, v79);
      v116 = v81;
      if (!v81)
      {
        v83 = v82;
        v114 = 0x206C6F6F54;
        v115 = 0xE500000000000000;
        v84 = v76;
        v85 = v83;
        v86 = sub_2311583E8();
        MEMORY[0x231924980](v86);

        v87 = v116;
        sub_23105CCB0(v100, v84, v85, v114, v115);
        if (!v87)
        {
          (*(v28 + 8))(v113, v31);
          sub_231054A60(v90, v112);

          return;
        }

        v29 = *(v28 + 8);
        v29(v113, v31);

        sub_231054A60(v90, v112);
        v116 = v87;
        goto LABEL_25;
      }

      v29 = *(v28 + 8);
      v29(v72, v31);
    }

    sub_231054A60(v90, v112);
LABEL_25:
    v30 = v111;
LABEL_9:
    sub_2311581C8();
    (*(v28 + 16))(v40, v105, v31);
    v41 = v116;
    v42 = v116;
    v43 = sub_231158238();
    v44 = sub_2311592F8();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v113 = 0;
      v114 = v112;
      *v45 = 136315394;
      v47 = sub_2311583E8();
      v48 = v40;
      v50 = v49;
      v29(v48, v31);
      v51 = sub_2310488F8(v47, v50, &v114);

      *(v45 + 4) = v51;
      *(v45 + 12) = 2112;
      v52 = v116;
      v53 = v116;
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 14) = v54;
      *v46 = v54;
      _os_log_impl(&dword_23103C000, v43, v44, "Failed to donate tool: %s with error: %@", v45, 0x16u);
      sub_231060190(v46, &unk_27DD3CC40, &qword_231162750);
      MEMORY[0x2319267C0](v46, -1, -1);
      v55 = v112;
      __swift_destroy_boxed_opaque_existential_0(v112);
      MEMORY[0x2319267C0](v55, -1, -1);
      MEMORY[0x2319267C0](v45, -1, -1);

      (*(v103 + 8))(v111, v108);
    }

    else
    {

      v29(v40, v31);
      (*(v103 + 8))(v30, v108);
    }

    return;
  }

  v99 = v33;
  v114 = MEMORY[0x277D84F90];
  v91 = v59;
  sub_231159618();
  v60 = 0;
  v94 = v58 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
  v93 = v102 + 16;
  v98 = (v102 + 8);
  v112 = v35;
  v92 = v23;
  v61 = v95;
  while (v60 < *(v58 + 16))
  {
    v62 = v58;
    (*(v102 + 16))(v106, v94 + *(v102 + 72) * v60, v107);
    v63 = v101;
    v61(v101, v96, v56);
    sub_231060244(&qword_27DD3BEC0, MEMORY[0x277D72B90], MEMORY[0x277D72B58]);
    sub_231060244(&unk_27DD3C300, MEMORY[0x277D72818], MEMORY[0x277D72810]);
    v64 = v116;
    v65 = sub_231158038();
    v116 = v64;
    if (v64)
    {

      sub_231054A60(v90, v32);
      v99(v63, v56);
LABEL_28:
      (*v98)(v106, v107);
      v28 = v109;
      v29 = *(v109 + 8);
      v31 = v97;
      v29(v113, v97);

      goto LABEL_7;
    }

    v67 = v65;
    v68 = v66;
    v99(v63, v56);
    v69 = objc_allocWithZone(MEMORY[0x277D21170]);
    v70 = v116;
    sub_23105F240(v67, v68);
    v116 = v70;
    if (v70)
    {

      sub_231054A60(v90, v32);
      goto LABEL_28;
    }

    ++v60;
    (*v98)(v106, v107);
    sub_2311595E8();
    sub_231159628();
    sub_231159638();
    sub_2311595F8();
    v58 = v62;
    if (v91 == v60)
    {
      v112 = v32;

      v71 = v114;
      v31 = v97;
      v28 = v109;
      v40 = v110;
      goto LABEL_20;
    }
  }

  __break(1u);
}

void sub_23105CCB0(NSObject *a1, void *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v29 = a4;
  v10 = sub_231158258();
  OUTLINED_FUNCTION_4();
  v30 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  v15 = v14 - v13;
  objc_allocWithZone(MEMORY[0x277CF94C8]);
  v16 = sub_23105F478(a2, a3);
  if (!v5)
  {
    v17 = v16;
    v18 = MEMORY[0x28223BE20](v16);
    *(&v28 - 2) = a1;
    *(&v28 - 1) = v18;
    sub_23105D194(sub_23105FFF8, &(&v28)[-4]);

    return;
  }

  v34 = v5;
  v19 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  type metadata accessor for CCItemError(0);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  v32 = v33;
  sub_231060244(&unk_280CCB068, type metadata accessor for CCItemError, &unk_231161958);
  sub_2311578E8();
  if (v31 != 4)
  {

LABEL_8:
    swift_willThrow();
    return;
  }

  sub_2311581C8();

  v20 = v33;
  v21 = sub_231158238();
  v22 = sub_2311592E8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v28 = v21;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32 = v25;
    *v23 = 136315394;
    *(v23 + 4) = sub_2310488F8(v29, a5, &v32);
    *(v23 + 12) = 2112;
    v26 = v20;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v27;
    *v24 = v27;
    v20 = v28;
    _os_log_impl(&dword_23103C000, v28, v22, "%s is too big, Cascade is dropping it: %@", v23, 0x16u);
    sub_231060190(v24, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    __swift_destroy_boxed_opaque_existential_0(v25);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  else
  {
  }

  (*(v30 + 8))(v15, v10);
}

uint64_t sub_23105D054(uint64_t a1)
{
  v5[2] = a1;
  sub_23105D194(sub_23105FC30, v5);
  if (v1)
  {
    swift_getErrorValue();
    v2 = sub_2311598B8();
    sub_231086A14(v2, v3, 2);

    sub_231086A14(0, 0, 3);
    return swift_willThrow();
  }

  else
  {
    sub_231086A14(3, 0, 3);
    return sub_231086A14(0, 0, 3);
  }
}

uint64_t *sub_23105D128(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_2310581C4(v6, a3);
  }

  if (a2)
  {
    return sub_231058270(v6, a2);
  }

  __break(1u);
  return result;
}

id sub_23105D1E8(void *a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if ([a1 registerItem:a2 error:v4])
  {
    return v4[0];
  }

  v3 = v4[0];
  sub_231157938();

  return swift_willThrow();
}

id sub_23105D290(void *a1)
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if ([a1 finish_])
  {
    return v3[0];
  }

  v2 = v3[0];
  sub_231157938();

  return swift_willThrow();
}

uint64_t sub_23105D334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE70, &qword_231162758);
  v7[10] = swift_task_alloc();
  v8 = sub_231158BC8();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCC0, &qword_231162760);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v9 = sub_231158C88();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();
  v10 = sub_231158CE8();
  v7[20] = v10;
  v7[21] = *(v10 - 8);
  v7[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23105D540, 0, 0);
}

uint64_t sub_23105D540()
{
  v3 = *(v0 + 176);
  sub_231158C08();
  sub_231158CC8();
  v5 = v4;
  v6 = MEMORY[0x2319247A0]();
  v7 = objc_allocWithZone(MEMORY[0x277D20E58]);
  v8 = OUTLINED_FUNCTION_45();
  *(v0 + 184) = sub_23105F54C(v8, v9, v6);
  v10 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  v11 = MEMORY[0x231924700]();
  *(v0 + 192) = v11;
  v12 = *(v11 + 16);
  *(v0 + 200) = v12;
  if (!v12)
  {
LABEL_18:
    v41 = *(v0 + 184);
    v43 = *(v0 + 40);
    v42 = *(v0 + 48);

    objc_allocWithZone(MEMORY[0x277D20F10]);
    v44 = v41;

    sub_23105F8A0(v43, v42, v41, v10);
    OUTLINED_FUNCTION_37();
    MEMORY[0x231924980](45, 0xE100000000000000);
    MEMORY[0x231924980](v2, v1);
    v45 = objc_allocWithZone(MEMORY[0x277D20F18]);
    OUTLINED_FUNCTION_59();
    v46 = OUTLINED_FUNCTION_36();
    v47(v46);
    OUTLINED_FUNCTION_42(*(v0 + 184));

    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_23_0();

    __asm { BRAA            X3, X16 }
  }

  v13 = 0;
  *(v0 + 272) = *(*(v0 + 144) + 80);
  while (1)
  {
    *(v0 + 208) = v13;
    *(v0 + 216) = v10;
    if (v13 >= *(v11 + 16))
    {
      __break(1u);
      return MEMORY[0x2821DB698](v11);
    }

    (*(*(v0 + 144) + 16))(*(v0 + 152), v11 + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(*(v0 + 144) + 72) * v13, *(v0 + 136));
    sub_231158C68();
    v14 = sub_231158BF8();
    v15 = OUTLINED_FUNCTION_16_1();
    v16 = *(v0 + 128);
    if (v15 == 1)
    {
      v17 = sub_231060190(*(v0 + 128), &qword_27DD3BCC0, &qword_231162760);
    }

    else
    {
      sub_231158BA8();
      OUTLINED_FUNCTION_4_2();
      v17 = (*(v18 + 8))(v16, v14);
    }

    OUTLINED_FUNCTION_58(v17);
    if (OUTLINED_FUNCTION_16_1() == 1)
    {
      v19 = sub_231060190(*(v0 + 120), &qword_27DD3BCC0, &qword_231162760);
    }

    else
    {
      sub_231158BE8();
      OUTLINED_FUNCTION_4_2();
      v20 = OUTLINED_FUNCTION_50();
      v19 = v21(v20);
    }

    OUTLINED_FUNCTION_57(v19);
    if (OUTLINED_FUNCTION_16_1() == 1)
    {
      v22 = *(v0 + 112);
      v23 = &qword_27DD3BCC0;
      v24 = &qword_231162760;
      goto LABEL_14;
    }

    v25 = *(v0 + 80);
    sub_231158BD8();
    OUTLINED_FUNCTION_4_2();
    v26 = OUTLINED_FUNCTION_50();
    v27(v26);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE78, &qword_231162768);
    *(v0 + 248) = v28;
    if (__swift_getEnumTagSinglePayload(v25, 1, v28) != 1)
    {
      break;
    }

    v22 = *(v0 + 80);
    v23 = &qword_27DD3BE70;
    v24 = &qword_231162758;
LABEL_14:
    sub_231060190(v22, v23, v24);
    v30 = *(v0 + 232);
    v29 = *(v0 + 240);
    v31 = *(v0 + 224);
    v32 = objc_allocWithZone(MEMORY[0x277D20E50]);
    v33 = sub_23105F660(v31, v30, 0, 0, v29);
    sub_231158C78();
    v34 = objc_allocWithZone(MEMORY[0x277D20E48]);
    v35 = v33;
    v36 = OUTLINED_FUNCTION_52();
    v2 = sub_23105F7B0(v36, v37, v33);
    MEMORY[0x2319249F0]();
    OUTLINED_FUNCTION_47();
    if (v38)
    {
      sub_231158F98();
    }

    OUTLINED_FUNCTION_29();

    v3 += 8;
    v39 = OUTLINED_FUNCTION_52();
    v40(v39);
    v10 = *(v0 + 16);
    if (v5 == v1)
    {
      goto LABEL_18;
    }

    v13 = *(v0 + 208) + 1;
    v11 = *(v0 + 192);
  }

  v48 = swift_task_alloc();
  *(v0 + 256) = v48;
  *v48 = v0;
  OUTLINED_FUNCTION_7_2(v48);
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x2821DB698](v11);
}

uint64_t sub_23105DB50()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 264) = v0;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_11();
    (*(v7 + 8))();
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23105DCA4()
{
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = sub_231158BB8();
  v6 = v5;
  v7 = v3 + 8;
  v8 = OUTLINED_FUNCTION_17();
  v9(v8);
  for (i = *(v0 + 264); ; i = 0)
  {
    v11 = *(v0 + 240);
    v12 = objc_allocWithZone(MEMORY[0x277D20E50]);
    v13 = OUTLINED_FUNCTION_52();
    v15 = sub_23105F660(v13, v14, v4, v6, v11);
    if (i)
    {
      OUTLINED_FUNCTION_17_0();

      v44 = OUTLINED_FUNCTION_31();
      v45(v44);
      v46 = OUTLINED_FUNCTION_18_0();
      v47(v46);

      OUTLINED_FUNCTION_41();

      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_23_0();

      __asm { BRAA            X1, X16 }
    }

    v16 = v15;
    v17 = sub_231158C78();
    v19 = v18;
    objc_allocWithZone(MEMORY[0x277D20E48]);
    v20 = v16;
    v21 = sub_23105F7B0(v17, v19, v16);
    MEMORY[0x2319249F0]();
    OUTLINED_FUNCTION_47();
    if (v22)
    {
      sub_231158F98();
    }

    OUTLINED_FUNCTION_29();

    v2 += 8;
    v23 = OUTLINED_FUNCTION_52();
    v25 = v24(v23);
    v26 = *(v0 + 16);
    if (v7 == v1)
    {
      v48 = *(v0 + 184);
      v50 = *(v0 + 40);
      v49 = *(v0 + 48);

      objc_allocWithZone(MEMORY[0x277D20F10]);
      v51 = v48;

      sub_23105F8A0(v50, v49, v48, v26);
      OUTLINED_FUNCTION_37();
      MEMORY[0x231924980](45, 0xE100000000000000);
      MEMORY[0x231924980](v21, v1);
      v54 = objc_allocWithZone(MEMORY[0x277D20F18]);
      OUTLINED_FUNCTION_59();
      v55 = OUTLINED_FUNCTION_36();
      v56(v55);
      OUTLINED_FUNCTION_42(*(v0 + 184));

      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_23_0();

      __asm { BRAA            X3, X16 }
    }

    v27 = *(v0 + 208) + 1;
    *(v0 + 208) = v27;
    *(v0 + 216) = v26;
    v28 = *(v0 + 192);
    if (v27 >= *(v28 + 16))
    {
      __break(1u);
      return MEMORY[0x2821DB698](v25);
    }

    (*(*(v0 + 144) + 16))(*(v0 + 152), v28 + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(*(v0 + 144) + 72) * v27, *(v0 + 136));
    sub_231158C68();
    v29 = sub_231158BF8();
    v30 = OUTLINED_FUNCTION_16_1();
    v31 = *(v0 + 128);
    if (v30 == 1)
    {
      v32 = sub_231060190(*(v0 + 128), &qword_27DD3BCC0, &qword_231162760);
    }

    else
    {
      sub_231158BA8();
      OUTLINED_FUNCTION_4_2();
      v32 = (*(v33 + 8))(v31, v29);
    }

    OUTLINED_FUNCTION_58(v32);
    if (OUTLINED_FUNCTION_16_1() == 1)
    {
      v34 = sub_231060190(*(v0 + 120), &qword_27DD3BCC0, &qword_231162760);
    }

    else
    {
      sub_231158BE8();
      OUTLINED_FUNCTION_4_2();
      v35 = OUTLINED_FUNCTION_50();
      v34 = v36(v35);
    }

    OUTLINED_FUNCTION_57(v34);
    if (OUTLINED_FUNCTION_16_1() == 1)
    {
      v37 = *(v0 + 112);
      v38 = &qword_27DD3BCC0;
      v39 = &qword_231162760;
      goto LABEL_17;
    }

    v40 = *(v0 + 80);
    sub_231158BD8();
    OUTLINED_FUNCTION_4_2();
    v41 = OUTLINED_FUNCTION_50();
    v42(v41);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE78, &qword_231162768);
    *(v0 + 248) = v43;
    if (__swift_getEnumTagSinglePayload(v40, 1, v43) != 1)
    {
      break;
    }

    v37 = *(v0 + 80);
    v38 = &qword_27DD3BE70;
    v39 = &qword_231162758;
LABEL_17:
    sub_231060190(v37, v38, v39);
    v4 = 0;
    v6 = 0;
  }

  v52 = swift_task_alloc();
  *(v0 + 256) = v52;
  *v52 = v0;
  OUTLINED_FUNCTION_7_2(v52);
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x2821DB698](v25);
}

uint64_t sub_23105E248()
{
  OUTLINED_FUNCTION_28_0();
  v1 = *(v0 + 248);
  v2 = *(v0 + 80);

  v3 = OUTLINED_FUNCTION_36();
  v4(v3);
  v5 = OUTLINED_FUNCTION_17();
  v6(v5);
  OUTLINED_FUNCTION_11();
  (*(v7 + 8))(v2, v1);

  OUTLINED_FUNCTION_1();

  return v8();
}

uint64_t sub_23105E368@<X0>(uint64_t *a2@<X8>)
{
  result = sub_231158778();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_23105E39C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231158778();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_23105E420(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v48 = a4;
  v49 = a5;
  v50 = a3;
  v57 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  MEMORY[0x28223BE20](v6 - 8);
  v55 = &v44 - v7;
  v8 = sub_231158C18();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_231158A58();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_231158C48();
  v53 = *(v15 - 8);
  v54 = v15;
  v16 = *(v53 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v47 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v44 - v18;
  v19 = sub_231158A68();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v22, a1, v19);
  if ((*(v20 + 88))(v22, v19) != *MEMORY[0x277D72D28])
  {
    return (*(v20 + 8))(v22, v19);
  }

  (*(v20 + 96))(v22, v19);
  v23 = *v22;
  v25 = *(*v22 + 16);
  v24 = *(*v22 + 24);
  v27 = *(*v22 + 32);
  v26 = *(v23 + 40);

  (*(v12 + 16))(v14, v57, v11);
  if ((*(v12 + 88))(v14, v11) == *MEMORY[0x277D72B48])
  {
    v45 = v27;
    v46 = v25;
    v57 = v26;
    (*(v12 + 96))(v14, v11);
    v29 = v53;
    v28 = v54;
    v30 = v56;
    v44 = *(v53 + 32);
    v44(v56, v14, v54);
    sub_231158C28();
    v32 = v51;
    v31 = v52;
    if ((*(v51 + 88))(v10, v52) == *MEMORY[0x277D73240])
    {
      (*(v32 + 8))(v10, v31);
      v33 = sub_2311590C8();
      __swift_storeEnumTagSinglePayload(v55, 1, 1, v33);
      v34 = *(v29 + 16);
      v52 = v24;
      v35 = v47;
      v34(v47, v30, v28);
      v36 = (*(v29 + 80) + 80) & ~*(v29 + 80);
      v37 = v28;
      v38 = swift_allocObject();
      *(v38 + 2) = 0;
      *(v38 + 3) = 0;
      v39 = v48;
      *(v38 + 4) = v50;
      *(v38 + 5) = v39;
      v40 = v52;
      *(v38 + 6) = v46;
      *(v38 + 7) = v40;
      v41 = v57;
      *(v38 + 8) = v45;
      *(v38 + 9) = v41;
      v44(&v38[v36], v35, v37);
      *&v38[(v16 + v36 + 7) & 0xFFFFFFFFFFFFFFF8] = v49;

      v42 = v39;
      swift_unknownObjectRetain();
      sub_23105ED1C(0, 0, v55, &unk_231162738, v38);

      sub_231086A14(2, 0, 3);
      return (*(v29 + 8))(v56, v37);
    }

    else
    {
      (*(v29 + 8))(v30, v28);

      return (*(v32 + 8))(v10, v31);
    }
  }

  else
  {

    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_23105EA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a8;
  v8[5] = v16;
  v8[2] = a4;
  v8[3] = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = swift_task_alloc();
  v8[6] = v13;
  *v13 = v8;
  v13[1] = sub_23105EB08;

  return sub_23105D334(a6, a7, a8, v16, v17, v18, OpaqueTypeConformance2);
}

uint64_t sub_23105EB08(uint64_t a1)
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_26();
  v8 = v7;
  OUTLINED_FUNCTION_2_4();
  *v9 = v8;
  v10 = *v2;
  OUTLINED_FUNCTION_3_2();
  *v11 = v10;
  v8[7] = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_62();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v8[8] = v4;
    v8[9] = v6;
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_62();

    return MEMORY[0x2822009F8](v21, v22, v23);
  }
}

uint64_t sub_23105EC40()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[3];
  MEMORY[0x231924980](v0[4], v0[5]);
  sub_23105CCB0(v3, v1, v2, 0x6D756E6520707041, 0xE900000000000020);

  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_23105ED1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v9 = OUTLINED_FUNCTION_19(v8);
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  sub_23106001C(a3, v23 - v10, &qword_27DD3C1D0, &qword_231162D50);
  v12 = sub_2311590C8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_231060190(v11, &qword_27DD3C1D0, &qword_231162D50);
  }

  else
  {
    sub_2311590B8();
    OUTLINED_FUNCTION_11();
    (*(v14 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_231159048();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_231158E88() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = OUTLINED_FUNCTION_54();

      sub_231060190(a3, &qword_27DD3C1D0, &qword_231162D50);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_231060190(a3, &qword_27DD3C1D0, &qword_231162D50);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return OUTLINED_FUNCTION_54();
}

uint64_t sub_23105EF84()
{
  sub_2310602F0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_231060330(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return v0;
}

uint64_t sub_23105EFC4()
{
  sub_23105EF84();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t get_enum_tag_for_layout_string_14VoiceShortcuts24ToolKitCascadeSyncEngineC16PushStateMachineC011TransactionI0O(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23105F04C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23105F08C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_23105F0D0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_23105F0FC()
{
  result = qword_27DD3BE50;
  if (!qword_27DD3BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BE50);
  }

  return result;
}

uint64_t sub_23105F15C(uint64_t a1)
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  v2 = sub_231157F18();
  OUTLINED_FUNCTION_19(v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23106044C;
  OUTLINED_FUNCTION_62();

  return sub_231058CCC(v4, v5, v6, v7);
}

id sub_23105F240(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = sub_231157998();
  v11[0] = 0;
  v7 = [v3 initWithData:v6 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_231157938();

    swift_willThrow();
  }

  sub_231054A60(a1, a2);
  return v7;
}

id sub_23105F320(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v13[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    sub_231054A0C(0, &qword_27DD3BED0, 0x277D21170);
    v7 = sub_231158F38();

    if (a3)
    {
LABEL_3:
      sub_231054A0C(0, &qword_27DD3BEC8, 0x277D21158);
      v8 = sub_231158F38();

      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v13[0] = 0;
  v9 = [v4 initWithToolDefinition:a1 typeDefinitions:v7 localizedStringsByLocale:v8 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    sub_231157938();

    swift_willThrow();
  }

  return v9;
}

id sub_23105F478(void *a1, void *a2)
{
  v3 = v2;
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v6 = [v3 initWithContent:a1 metaContent:a2 error:v10];
  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_231157938();

    swift_willThrow();
  }

  return v6;
}

id sub_23105F54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = sub_231158E28();

    if (a3)
    {
LABEL_3:
      v6 = sub_231158F38();

      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v11[0] = 0;
  v7 = [v3 initWithName:v5 synonyms:v6 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_231157938();

    swift_willThrow();
  }

  return v7;
}

id sub_23105F660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v8 = sub_231158E28();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v8 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = sub_231158E28();

  if (a5)
  {
LABEL_4:
    v10 = sub_231158F38();

    goto LABEL_8;
  }

LABEL_7:
  v10 = 0;
LABEL_8:
  v15[0] = 0;
  v11 = [v5 initWithTitle:v8 subtitle:v9 synonyms:v10 error:v15];

  if (v11)
  {
    v12 = v15[0];
  }

  else
  {
    v13 = v15[0];
    sub_231157938();

    swift_willThrow();
  }

  return v11;
}

id sub_23105F7B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v11[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = sub_231158E28();
  }

  else
  {
    v6 = 0;
  }

  v11[0] = 0;
  v7 = [v4 initWithCaseIdentifier:v6 displayRepresentation:a3 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_231157938();

    swift_willThrow();
  }

  return v7;
}

id sub_23105F8A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v14[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v8 = sub_231158E28();

    if (a4)
    {
LABEL_3:
      sub_231054A0C(0, &qword_280CCAF90, 0x277D20E48);
      v9 = sub_231158F38();

      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v14[0] = 0;
  v10 = [v5 initWithTypeIdentifier:v8 typeDisplayRepresentation:a3 cases:v9 error:v14];

  if (v10)
  {
    v11 = v14[0];
  }

  else
  {
    v12 = v14[0];
    sub_231157938();

    swift_willThrow();
  }

  return v10;
}

id sub_23105F9D8(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_231158E28();

  v8[0] = 0;
  v4 = [v2 initWithSourceItemIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_231157938();

    swift_willThrow();
  }

  return v4;
}

unint64_t sub_23105FAA4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84F98];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BE88, &qword_231162778);
  v2 = sub_2311596F8();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_23106001C(v6, v17, &qword_27DD3BE90, &qword_231162780);
    v7 = v17[0];
    v8 = v17[1];
    v9 = OUTLINED_FUNCTION_31();
    result = sub_23105FECC(v9, v10);
    if (v12)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v13 = (v3[6] + 16 * result);
    *v13 = v7;
    v13[1] = v8;
    result = sub_231040B88(&v18, (v3[7] + 32 * result));
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_12;
    }

    v3[2] = v16;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_23105FC94(uint64_t a1)
{
  v3 = sub_231158C48();
  OUTLINED_FUNCTION_5(v3);
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23105FDEC;

  return sub_23105EA08(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_23105FDEC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v2 = v1;

  OUTLINED_FUNCTION_1();

  return v3();
}

unint64_t sub_23105FECC(uint64_t a1, uint64_t a2)
{
  sub_231159918();
  sub_231158EA8();
  v4 = sub_231159948();

  return sub_23105FF44(a1, a2, v4);
}

unint64_t sub_23105FF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_231159818() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_23106001C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_11();
  v5 = OUTLINED_FUNCTION_25_0();
  v6(v5);
  return a2;
}

unint64_t sub_23106007C()
{
  result = qword_27DD3BE98;
  if (!qword_27DD3BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BE98);
  }

  return result;
}

void sub_2310600F0(uint64_t a1)
{
  v3 = sub_231158AE8();
  OUTLINED_FUNCTION_5(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_23105BFD8(a1, *(v1 + 16), (v1 + v8), *(v1 + v9), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_231060190(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_11();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2310601EC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_231060244(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23106028C()
{
  result = qword_280CCAFC0;
  if (!qword_280CCAFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD3BC00, &unk_231161AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCAFC0);
  }

  return result;
}

uint64_t sub_2310602F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_231060330(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14VoiceShortcuts24ToolKitCascadeSyncEngineC16PushStateMachineC5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23106036C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2310603C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_23106041C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_1(uint64_t a1)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_29()
{

  return sub_231158FE8();
}

uint64_t OUTLINED_FUNCTION_37()
{
}

uint64_t OUTLINED_FUNCTION_41()
{
}

void OUTLINED_FUNCTION_42(void *a1@<X8>)
{
}

uint64_t OUTLINED_FUNCTION_43()
{
}

uint64_t OUTLINED_FUNCTION_44()
{
}

uint64_t OUTLINED_FUNCTION_53_0(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_54()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_55()
{

  return sub_231158608();
}

uint64_t OUTLINED_FUNCTION_57(uint64_t a1)
{
  *(v1 + 240) = v2;

  return sub_231158C68();
}

uint64_t OUTLINED_FUNCTION_58(uint64_t a1)
{
  *(v2 + 224) = v1;
  *(v2 + 232) = v3;

  return sub_231158C68();
}

id OUTLINED_FUNCTION_59()
{

  return sub_23105F9D8(v0, v1);
}

uint64_t OUTLINED_FUNCTION_60()
{
}

uint64_t OUTLINED_FUNCTION_61(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t DarwinNotificationEventDescriptor.name.getter()
{
  v1 = *v0;

  return v1;
}

VoiceShortcuts::DarwinNotificationEventDescriptor __swiftcall DarwinNotificationEventDescriptor.init(eventName:)(__C::VCXPCEventName eventName)
{
  v3 = v1;
  v4 = sub_231158E58();
  v6 = v5;

  *v3 = v4;
  v3[1] = v6;
  result.name._object = v8;
  result.name._countAndFlagsBits = v7;
  return result;
}

uint64_t static DarwinNotificationEventDescriptor.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_231159818();
  }
}

uint64_t DarwinNotificationEventDescriptor.hashValue.getter()
{
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

uint64_t sub_2310609F8(uint64_t a1)
{
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

unint64_t XPCDarwinNotificationEventStream.Event.description.getter()
{
  sub_231159588();

  v0 = sub_2311580A8();
  MEMORY[0x231924980](v0);

  MEMORY[0x231924980](62, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t XPCDarwinNotificationEventStream.descriptor(for:)@<X0>(uint64_t *a2@<X8>)
{
  result = sub_2311580A8();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_231060B00(uint64_t a1)
{
  result = sub_231060B28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_231060B28()
{
  result = qword_280CCB5A0;
  if (!qword_280CCB5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB5A0);
  }

  return result;
}

unint64_t sub_231060B80()
{
  result = qword_280CCB598;
  if (!qword_280CCB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB598);
  }

  return result;
}

uint64_t sub_231060BD4(uint64_t a1)
{
  result = sub_231060D20(&qword_280CCB110, MEMORY[0x277D79CE0], MEMORY[0x277D79CF0]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_231060C30()
{
  result = qword_280CCB590;
  if (!qword_280CCB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB590);
  }

  return result;
}

uint64_t sub_231060C9C(uint64_t a1)
{
  v2 = MEMORY[0x277D79D00];
  *(a1 + 8) = sub_231060D20(&unk_280CCB0F0, MEMORY[0x277D79D00], MEMORY[0x277D79CF8]);
  result = sub_231060D20(&unk_280CCB100, v2, &protocol conformance descriptor for XPCDarwinNotificationEventStream);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_231060D20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_231060D68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_231060DA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WFSystemSurfaceWorkflowStatusUpdater.tasks.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  OUTLINED_FUNCTION_26_1();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_231061044;
  *(v3 + 24) = v1;
  OUTLINED_FUNCTION_26_1();
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_231162968;
  *(v4 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C720, &unk_231162980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0xD000000000000035;
  *(inited + 40) = 0x8000000231168650;
  *(inited + 48) = sub_231061688;
  *(inited + 56) = v3;
  *(inited + 64) = 1;
  *(inited + 72) = &unk_231164C00;
  *(inited + 80) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BED8, &unk_2311637D0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_231161B80;
  *(v6 + 32) = inited;
  v7 = v0;
  v8 = static TaskBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_2310639FC();
  return v8;
}

double sub_231060F84(uint64_t *a1, void *a2)
{
  v2 = sub_23106104C(*a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C730, &unk_2311649A0);
  swift_allocObject();
  v3 = sub_23109C3D0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF88, &qword_231162AE0);
  swift_allocObject();
  sub_23109FB90(v3);
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v6 = swift_allocObject();
  *&result = 1;
  *(v6 + 16) = xmmword_231161E80;
  *(v6 + 32) = v5;
  return result;
}

uint64_t sub_23106104C(uint64_t a1, id a2)
{
  v4 = sub_2310DF1AC(a1, [a2 databaseProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C730, &unk_2311649A0);
  swift_allocObject();
  v5 = sub_23109C3D0(v4);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C760, &unk_231164C50);
  swift_allocObject();
  sub_23109C744(sub_2310A1D74, 0, v5);
  v7 = v6;
  v16 = a1;

  v8 = sub_2310A0BF0(&unk_2845D7720);
  v9 = [a2 databaseProvider];
  swift_getObjectType();
  sub_2310E07F4(v8, v9, &v16);
  v11 = v10;

  swift_unknownObjectRelease();
  swift_allocObject();
  sub_23109C6B0(sub_2310A1D6C, 0, v11);
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_231162950;
  *(v14 + 32) = v7;
  *(v14 + 40) = v13;

  return v14;
}

uint64_t sub_231061234()
{
  OUTLINED_FUNCTION_4_1();
  [*(v0 + 16) updateIfPossible];
  OUTLINED_FUNCTION_46_0();

  return v1();
}

uint64_t sub_231061294()
{
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23106044C;

  return sub_231061214(v3, v4);
}

void sub_231061350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_30();
  v20 = v6;
  v21 = v7;
  v9 = v8;
  v11 = v10;
  v12 = v5;
  if (v5 >> 62)
  {
    v13 = sub_2311594D8();
  }

  else
  {
    v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v13)
  {
LABEL_12:
    OUTLINED_FUNCTION_31_0();
    return;
  }

  v22 = MEMORY[0x277D84F90];
  sub_23104CCC4(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x231925080](v14, v12);
      }

      else
      {
        v15 = *(v12 + 8 * v14 + 32);
      }

      v17 = *(v22 + 16);
      v16 = *(v22 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_23104CCC4((v16 > 1), v17 + 1, 1);
      }

      ++v14;
      v18 = sub_231051E04(v11, v9, v20, v21);
      *(v22 + 16) = v17 + 1;
      v19 = v22 + 16 * v17;
      *(v19 + 32) = v15;
      *(v19 + 40) = v18;
    }

    while (v13 != v14);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_2310614A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_23104CD04(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_23104CD04((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_231040B88(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_231061F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_231061F34()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_66();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (!OUTLINED_FUNCTION_48_0(v1, v2, v1, &type metadata for EmptyEvent))
  {
    v0[9] = 0;
    v0[10] = 0;
    goto LABEL_7;
  }

  v3 = v0[10];
  if (!v3)
  {
LABEL_7:
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_52_0();
    v9 = OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_55_0(v9);
    OUTLINED_FUNCTION_6_4();
    return OUTLINED_FUNCTION_14_2("Fatal error", v10, v11, v12, v13, "VoiceShortcuts/DaemonTask.swift", v14, v15, v16, v17);
  }

  v0[7] = v0[9];
  v0[8] = v3;
  OUTLINED_FUNCTION_0_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_27_1();
  v0[14] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_2(v4);

  return v7(v6);
}

uint64_t sub_231062088()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231062180()
{
  OUTLINED_FUNCTION_4_1();
  v0[8] = v1;
  v0[9] = v2;
  v0[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF40, &unk_231162A60);
  OUTLINED_FUNCTION_19(v4);
  v0[10] = OUTLINED_FUNCTION_21_0();
  v5 = sub_2311580B8();
  OUTLINED_FUNCTION_40_0(v5);
  v0[12] = v6;
  v0[13] = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_231062254()
{
  OUTLINED_FUNCTION_59_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (OUTLINED_FUNCTION_38(v2))
  {
    v3 = OUTLINED_FUNCTION_21_1();
    v4(v3);
    OUTLINED_FUNCTION_5_3();
    v5 = swift_task_alloc();
    *(v1 + 112) = v5;
    *v5 = v1;
    OUTLINED_FUNCTION_23_1(v5);
    OUTLINED_FUNCTION_69_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_39_0();
  sub_231064568(v0, &qword_27DD3BF40, &unk_231162A60);
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_4_3();
  sub_2311597E8();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_14_2("Fatal error", v8, v9, v10, v11, "VoiceShortcuts/DaemonTask.swift", v12, v13, v14, v15);
  OUTLINED_FUNCTION_69_0();
}

uint64_t sub_2310623C4()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310624BC()
{
  OUTLINED_FUNCTION_4_1();
  v0 = OUTLINED_FUNCTION_62_0();
  v1(v0);

  OUTLINED_FUNCTION_46_0();

  return v2();
}

uint64_t sub_23106252C()
{
  OUTLINED_FUNCTION_4_1();
  v0 = OUTLINED_FUNCTION_62_0();
  v1(v0);

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_2310625A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_2310625B8()
{
  OUTLINED_FUNCTION_28_0();
  sub_2310548A0(v0[9], (v0 + 2));
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (OUTLINED_FUNCTION_53_1((v0 + 8), v2, v1, &_s14descr2845D6EA9V26ApplicationRegisteredEventVN) && (v3 = v0[8], (v0[12] = v3) != 0))
  {
    v0[7] = v3;
    OUTLINED_FUNCTION_0_6();
    swift_task_alloc();
    OUTLINED_FUNCTION_27_1();
    v0[13] = v4;
    *v4 = v5;
    v4[1] = sub_23106273C;
    v6 = OUTLINED_FUNCTION_19_0();

    return v7(v6);
  }

  else
  {
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_33_0();
    MEMORY[0x231924980]();
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_52_0();
    v9 = OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_55_0(v9);
    OUTLINED_FUNCTION_6_4();
    return OUTLINED_FUNCTION_14_2("Fatal error", v10, v11, v12, v13, "VoiceShortcuts/DaemonTask.swift", v14, v15, v16, v17);
  }
}

uint64_t sub_23106273C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231062834()
{
  OUTLINED_FUNCTION_4_1();
  v0[8] = v1;
  v0[9] = v2;
  v0[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF60, &qword_231162A98);
  OUTLINED_FUNCTION_19(v4);
  v0[10] = OUTLINED_FUNCTION_21_0();
  v5 = sub_231158118();
  OUTLINED_FUNCTION_40_0(v5);
  v0[12] = v6;
  v0[13] = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_231062908()
{
  OUTLINED_FUNCTION_59_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (OUTLINED_FUNCTION_38(v2))
  {
    v3 = OUTLINED_FUNCTION_21_1();
    v4(v3);
    OUTLINED_FUNCTION_5_3();
    v5 = swift_task_alloc();
    *(v1 + 112) = v5;
    *v5 = v1;
    OUTLINED_FUNCTION_23_1(v5);
    OUTLINED_FUNCTION_69_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_39_0();
  sub_231064568(v0, &qword_27DD3BF60, &qword_231162A98);
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_4_3();
  sub_2311597E8();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_14_2("Fatal error", v8, v9, v10, v11, "VoiceShortcuts/DaemonTask.swift", v12, v13, v14, v15);
  OUTLINED_FUNCTION_69_0();
}

uint64_t sub_231062A78()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231062B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_231062B88()
{
  OUTLINED_FUNCTION_28_0();
  sub_2310548A0(v0[9], (v0 + 2));
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (OUTLINED_FUNCTION_53_1((v0 + 8), v2, v1, &_s14descr2845D6EA9V19DatabaseChangeEventVN) && (v3 = v0[8], (v0[12] = v3) != 0))
  {
    v0[7] = v3;
    OUTLINED_FUNCTION_0_6();
    swift_task_alloc();
    OUTLINED_FUNCTION_27_1();
    v0[13] = v4;
    *v4 = v5;
    v4[1] = sub_231062D10;
    v6 = OUTLINED_FUNCTION_19_0();

    return v7(v6);
  }

  else
  {
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_33_0();
    MEMORY[0x231924980]();
    OUTLINED_FUNCTION_18_1();
    MEMORY[0x231924980](0xD000000000000013);
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_52_0();
    v9 = OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_55_0(v9);
    OUTLINED_FUNCTION_6_4();
    return OUTLINED_FUNCTION_14_2("Fatal error", v10, v11, v12, v13, "VoiceShortcuts/DaemonTask.swift", v14, v15, v16, v17);
  }
}

uint64_t sub_231062D10()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231062E08()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_46_0();

  return v0();
}

uint64_t sub_231062E60()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_231062EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_231062ED4()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_66();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (!OUTLINED_FUNCTION_48_0(v1, v2, v1, &type metadata for DaemonStartupEvent))
  {
    v0[9] = 0;
    v0[10] = 0;
    goto LABEL_7;
  }

  v3 = v0[10];
  if (!v3)
  {
LABEL_7:
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_33_0();
    MEMORY[0x231924980]();
    OUTLINED_FUNCTION_18_1();
    MEMORY[0x231924980](0xD000000000000012);
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_52_0();
    v9 = OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_55_0(v9);
    OUTLINED_FUNCTION_6_4();
    return OUTLINED_FUNCTION_14_2("Fatal error", v10, v11, v12, v13, "VoiceShortcuts/DaemonTask.swift", v14, v15, v16, v17);
  }

  v0[7] = v0[9];
  v0[8] = v3;
  OUTLINED_FUNCTION_0_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_27_1();
  v0[14] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_2(v4);

  return v7(v6);
}

uint64_t sub_231063050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_231063068()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_66();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (!OUTLINED_FUNCTION_48_0(v1, v2, v1, &type metadata for EmptyEvent))
  {
    v0[9] = 0;
    v0[10] = 0;
    goto LABEL_7;
  }

  v3 = v0[10];
  if (!v3)
  {
LABEL_7:
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_52_0();
    v9 = OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_55_0(v9);
    OUTLINED_FUNCTION_6_4();
    return OUTLINED_FUNCTION_14_2("Fatal error", v10, v11, v12, v13, "VoiceShortcuts/DaemonTask.swift", v14, v15, v16, v17);
  }

  v0[7] = v0[9];
  v0[8] = v3;
  OUTLINED_FUNCTION_0_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_27_1();
  v0[14] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_2(v4);

  return v7(v6);
}

uint64_t sub_2310631BC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310632B4()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_46_0();

  return v0();
}

uint64_t sub_23106330C()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_231063368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_231063380()
{
  OUTLINED_FUNCTION_28_0();
  sub_2310548A0(v0[9], (v0 + 2));
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (OUTLINED_FUNCTION_53_1((v0 + 8), v2, v1, &_s14descr2845D6EA9V19DatabaseChangeEventVN) && (v3 = v0[8], (v0[12] = v3) != 0))
  {
    v0[7] = v3;
    OUTLINED_FUNCTION_0_6();
    swift_task_alloc();
    OUTLINED_FUNCTION_27_1();
    v0[13] = v4;
    *v4 = v5;
    v4[1] = sub_23106273C;
    v6 = OUTLINED_FUNCTION_19_0();

    return v7(v6);
  }

  else
  {
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_33_0();
    MEMORY[0x231924980]();
    OUTLINED_FUNCTION_18_1();
    MEMORY[0x231924980](0xD000000000000013);
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_52_0();
    v9 = OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_55_0(v9);
    OUTLINED_FUNCTION_6_4();
    return OUTLINED_FUNCTION_14_2("Fatal error", v10, v11, v12, v13, "VoiceShortcuts/DaemonTask.swift", v14, v15, v16, v17);
  }
}

uint64_t sub_231063508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_231063520()
{
  OUTLINED_FUNCTION_28_0();
  sub_2310548A0(*(v0 + 56), v0 + 16);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (OUTLINED_FUNCTION_53_1(v0 + 96, v2, v1, &type metadata for TerminationEventSource.Event))
  {
    OUTLINED_FUNCTION_0_6();
    v15 = v3;
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = sub_23106367C;

    return v15();
  }

  else
  {
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_52_0();
    v6 = OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_55_0(v6);
    OUTLINED_FUNCTION_6_4();
    return OUTLINED_FUNCTION_14_2("Fatal error", v7, v8, v9, v10, "VoiceShortcuts/DaemonTask.swift", v11, v12, v13, v14);
  }
}

uint64_t sub_23106367C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310637B8()
{
  OUTLINED_FUNCTION_4_1();
  v0[8] = v1;
  v0[9] = v2;
  v0[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF10, &unk_231162A30);
  OUTLINED_FUNCTION_19(v4);
  v0[10] = OUTLINED_FUNCTION_21_0();
  v5 = sub_231157F58();
  OUTLINED_FUNCTION_40_0(v5);
  v0[12] = v6;
  v0[13] = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_23106388C()
{
  OUTLINED_FUNCTION_59_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (OUTLINED_FUNCTION_38(v2))
  {
    v3 = OUTLINED_FUNCTION_21_1();
    v4(v3);
    OUTLINED_FUNCTION_5_3();
    v5 = swift_task_alloc();
    *(v1 + 112) = v5;
    *v5 = v1;
    OUTLINED_FUNCTION_23_1(v5);
    OUTLINED_FUNCTION_69_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_39_0();
  sub_231064568(v0, &qword_27DD3BF10, &unk_231162A30);
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_4_3();
  sub_2311597E8();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_14_2("Fatal error", v8, v9, v10, v11, "VoiceShortcuts/DaemonTask.swift", v12, v13, v14, v15);
  OUTLINED_FUNCTION_69_0();
}

uint64_t sub_2310639FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF78, &qword_231162AD8);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_231063A58()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_231063A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v14 - v7;
  v9 = sub_2311580B8();
  v15[3] = v9;
  v15[4] = sub_2310645D4(&qword_280CCB120, MEMORY[0x277D79CE0], &protocol conformance descriptor for XPCDarwinNotificationEventStream.Event);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a2, v9);
  v11 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  sub_2310548A0(v15, v14);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = a1;
  sub_23104613C(v14, (v12 + 6));

  sub_2310798FC();

  return __swift_destroy_boxed_opaque_existential_0(v15);
}

uint64_t sub_231063C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v14 - v7;
  v9 = sub_231158118();
  v15[3] = v9;
  v15[4] = sub_2310645D4(&unk_280CCB0E0, MEMORY[0x277D79D10], &protocol conformance descriptor for XPCDistributedNotificationEventStream.Event);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a2, v9);
  v11 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  sub_2310548A0(v15, v14);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = a1;
  sub_23104613C(v14, (v12 + 6));

  sub_2310798FC();

  return __swift_destroy_boxed_opaque_existential_0(v15);
}

uint64_t sub_231063DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v12 = OUTLINED_FUNCTION_19(v11);
  v13 = MEMORY[0x28223BE20](v12);
  v18[3] = a4;
  v18[4] = a5(v13);
  v18[0] = a2;
  v14 = sub_2311590C8();
  OUTLINED_FUNCTION_63_0(v14);
  sub_2310548A0(v18, v17);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a3;
  v15[5] = a1;
  sub_23104613C(v17, (v15 + 6));

  OUTLINED_FUNCTION_61_0();

  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_231063EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v14 = OUTLINED_FUNCTION_19(v13);
  v15 = MEMORY[0x28223BE20](v14);
  v20[3] = a5;
  v20[4] = a6(v15);
  v20[0] = a2;
  v20[1] = a3;
  v16 = sub_2311590C8();
  OUTLINED_FUNCTION_63_0(v16);
  sub_2310548A0(v20, v19);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a4;
  v17[5] = a1;
  sub_23104613C(v19, (v17 + 6));

  OUTLINED_FUNCTION_61_0();

  return __swift_destroy_boxed_opaque_existential_0(v20);
}

uint64_t sub_231064004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v11[3] = &type metadata for TerminationEventSource.Event;
  v11[4] = sub_2310642E0();
  v7 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  sub_2310548A0(v11, v10);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;
  v8[5] = a1;
  sub_23104613C(v10, (v8 + 6));

  sub_2310798FC();

  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_231064128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v14 - v7;
  v9 = sub_231157F58();
  v15[3] = v9;
  v15[4] = sub_2310645D4(&qword_27DD3BF28, MEMORY[0x277D79C78], &protocol conformance descriptor for XPCRapportEventStream.Event);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a2, v9);
  v11 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  sub_2310548A0(v15, v14);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = a1;
  sub_23104613C(v14, (v12 + 6));

  sub_2310798FC();

  return __swift_destroy_boxed_opaque_existential_0(v15);
}

unint64_t sub_2310642E0()
{
  result = qword_27DD3C0E0;
  if (!qword_27DD3C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C0E0);
  }

  return result;
}

uint64_t sub_231064334(uint64_t a1)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_17_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_1_2(v2);
  OUTLINED_FUNCTION_64();

  return sub_23107B670(v4, v5, v6, v7, v8, v9);
}

unint64_t sub_2310643C8()
{
  result = qword_27DD3C250;
  if (!qword_27DD3C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C250);
  }

  return result;
}

uint64_t sub_23106441C(uint64_t a1)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_17_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_1_2(v2);
  OUTLINED_FUNCTION_64();

  return sub_23107B670(v4, v5, v6, v7, v8, v9);
}

unint64_t sub_2310644A8()
{
  result = qword_27DD3BF08;
  if (!qword_27DD3BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BF08);
  }

  return result;
}

unint64_t sub_231064514()
{
  result = qword_27DD3BF58;
  if (!qword_27DD3BF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BF58);
  }

  return result;
}

uint64_t sub_231064568(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2310645D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23106462C()
{
  result = qword_280CCBD90;
  if (!qword_280CCBD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCBD90);
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

void OUTLINED_FUNCTION_3_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_231061350(v4, a2, a3, a4, &protocol conformance descriptor for DaemonEventStream.EventSource<A>);
}

uint64_t OUTLINED_FUNCTION_7_3(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_9_3(uint64_t a1, uint64_t a2, ...)
{
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_2311596C8();
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return sub_231159588();
}

uint64_t OUTLINED_FUNCTION_21_1()
{
  v1 = v0[13];
  __swift_storeEnumTagSinglePayload(v0[10], 0, 1, v0[11]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_22_1()
{
  sub_231046164(v0, v1);
}

void OUTLINED_FUNCTION_25_1()
{

  JUMPOUT(0x231924980);
}

uint64_t OUTLINED_FUNCTION_28_1(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_29_0()
{
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_38(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_39_0()
{
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);

  return __swift_storeEnumTagSinglePayload(v3, 1, 1, v2);
}

void OUTLINED_FUNCTION_41_0()
{

  JUMPOUT(0x231924980);
}

uint64_t OUTLINED_FUNCTION_47_0()
{

  return sub_231159588();
}

uint64_t OUTLINED_FUNCTION_48_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_49()
{
}

uint64_t OUTLINED_FUNCTION_50_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
}

void OUTLINED_FUNCTION_51_0()
{

  JUMPOUT(0x231925080);
}

void OUTLINED_FUNCTION_52_0()
{

  JUMPOUT(0x231924980);
}

uint64_t OUTLINED_FUNCTION_53_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_54_0()
{

  JUMPOUT(0x231924980);
}

uint64_t OUTLINED_FUNCTION_55_0(uint64_t a1)
{

  return sub_2311597E8();
}

void OUTLINED_FUNCTION_58_0()
{

  JUMPOUT(0x231924980);
}

uint64_t OUTLINED_FUNCTION_59_0()
{
  v2 = *(v0 + 56);

  return sub_2310548A0(v2, v0 + 16);
}

uint64_t OUTLINED_FUNCTION_61_0()
{

  return sub_2310798FC();
}

uint64_t OUTLINED_FUNCTION_63_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_66()
{
  v2 = *(v0 + 88);

  return sub_2310548A0(v2, v0 + 16);
}

uint64_t OUTLINED_FUNCTION_67()
{
}

void BGSystemTaskScheduler.checkIn(identifier:perform:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231158F18();
  v7 = sub_231158E28();

  OUTLINED_FUNCTION_26_1();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v11[4] = sub_231064E50;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_231064E80;
  v11[3] = &block_descriptor_3;
  v9 = _Block_copy(v11);

  LODWORD(v4) = [v4 registerForTaskWithIdentifier:v7 usingQueue:0 launchHandler:v9];
  _Block_release(v9);

  if (!v4)
  {
    sub_231064EF0();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }
}

void sub_231064E80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_231064EF0()
{
  result = qword_280CCBF98;
  if (!qword_280CCBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCBF98);
  }

  return result;
}

void BGSystemTaskScheduler.runWhenAppropriate(request:)(uint64_t a1)
{
  v10[5] = *MEMORY[0x277D85DE8];
  sub_2310548A0(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF90, &qword_231162AF0);
  sub_231054A0C(0, &qword_280CCAEE8, 0x277CF0800);
  if (swift_dynamicCast())
  {
    v10[0] = 0;
    if ([v1 submitTaskRequest:v9 error:v10])
    {
      v2 = v10[0];
    }

    else
    {
      v3 = v10[0];
      v4 = sub_231157938();

      swift_willThrow();
      type metadata accessor for Code(0);
      v10[0] = 5;
      v5 = v4;
      sub_23106518C();
      v6 = sub_231157898();

      if (v6)
      {

        sub_231064EF0();
        swift_allocError();
        *v7 = 0;
        swift_willThrow();
      }
    }
  }

  else
  {
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    sub_231159588();
    sub_231159688();
    MEMORY[0x231924980](0xD000000000000024, 0x80000002311687A0);
    swift_getObjectType();
    v8 = sub_231159998();
    MEMORY[0x231924980](v8);

    sub_2311596C8();
    __break(1u);
  }
}

unint64_t sub_23106518C()
{
  result = qword_280CCAE98;
  if (!qword_280CCAE98)
  {
    type metadata accessor for Code(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCAE98);
  }

  return result;
}

uint64_t sub_2310651F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_231054A0C(255, &qword_280CCAEE8, 0x277CF0800);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_231065260@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_231054A0C(0, a2, a3);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231158F18();
  v6 = sub_231065320(v8, v9);
  a4[3] = sub_231054A0C(0, &qword_280CCAEE8, 0x277CF0800);
  result = sub_2310651F8(&qword_280CCAEF8, &protocol conformance descriptor for BGSystemTaskRequest);
  a4[4] = result;
  *a4 = v6;
  return result;
}

id sub_231065320(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_231158E28();

  v4 = [v2 initWithIdentifier_];

  return v4;
}

id BGSystemTaskScheduler.cancel(identifier:)(void *a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231158F18();
  v2 = sub_231158E28();

  v6[0] = 0;
  v3 = [v1 cancelTaskRequestWithIdentifier:v2 error:v6];

  if (v3)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_231157938();

  return swift_willThrow();
}

BOOL BGSystemTaskScheduler.isScheduled(identifier:)(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231158F18();
  v2 = sub_231158E28();

  v3 = [v1 taskRequestForIdentifier_];

  if (v3)
  {
  }

  return v3 != 0;
}

uint64_t (*BGSystemTask.onExpirationBySystem.getter())(unsigned __int8 *a1)
{
  result = [v0 expirationHandlerWithReason];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    OUTLINED_FUNCTION_26_1();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_2310658B0;
    *(v4 + 24) = v3;
    return sub_2310658C4;
  }

  return result;
}

uint64_t (*sub_231065680@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = BGSystemTask.onExpirationBySystem.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_231066790;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_2310656F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_231066768;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_231042684(v1, v2);
  return BGSystemTask.onExpirationBySystem.setter(v4, v3);
}

id BGSystemTask.onExpirationBySystem.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    OUTLINED_FUNCTION_26_1();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_2310658F0;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_231065930;
    v9[3] = &block_descriptor_12;
    v7 = _Block_copy(v9);

    [v3 setExpirationHandlerWithReason_];
    _Block_release(v7);
    return sub_231046164(a1, a2);
  }

  else
  {

    return [v2 setExpirationHandlerWithReason_];
  }
}

uint64_t sub_2310658F0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1 == 1;
  return v2(&v4);
}

uint64_t sub_231065930(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id (*BGSystemTask.onExpirationBySystem.modify(uint64_t (**a1)(unsigned __int8 *a1)))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = BGSystemTask.onExpirationBySystem.getter();
  a1[1] = v3;
  return sub_2310659CC;
}

id sub_2310659CC(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = OUTLINED_FUNCTION_17();
    sub_231042684(v2, v3);
    v4 = OUTLINED_FUNCTION_17();
    BGSystemTask.onExpirationBySystem.setter(v4, v5);
    v6 = OUTLINED_FUNCTION_17();

    return sub_231046164(v6, v7);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_17();
    return BGSystemTask.onExpirationBySystem.setter(v9, v10);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BGSystemTask.fail(retryingAfter:)(Swift::Double retryingAfter)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if ([v1 setTaskExpiredWithRetryAfter:v4 error:retryingAfter + 300.0])
  {
    v2 = v4[0];
  }

  else
  {
    v3 = v4[0];
    sub_231157938();

    swift_willThrow();
  }
}

id (*sub_231065B08(uint64_t (**a1)(unsigned __int8 *a1)))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = BGSystemTask.onExpirationBySystem.getter();
  a1[1] = v3;
  return sub_2310659CC;
}

uint64_t sub_231065B6C@<X0>(uint64_t *a1@<X8>)
{
  result = BGSystemTaskRequest.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t BGSystemTaskRequest.id.getter()
{
  v1 = [v0 identifier];
  v2 = sub_231158E58();

  return v2;
}

id BGSystemTaskRequest.taxedResources.getter@<X0>(void *a1@<X8>)
{
  result = [v1 resources];
  *a1 = result;
  return result;
}

id sub_231065C24@<X0>(void *a1@<X8>)
{
  result = BGSystemTaskRequest.taxedResources.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t (*BGSystemTaskRequest.taxedResources.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = [v1 resources];
  return sub_231065CFC;
}

unint64_t BGSystemTaskRequest.urgency.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [v1 priority];
  v4 = 0x2010003u >> (8 * result);
  if (result >= 4)
  {
    LOBYTE(v4) = 3;
  }

  *a1 = v4;
  return result;
}

unint64_t sub_231065D5C@<X0>(_BYTE *a1@<X8>)
{
  result = BGSystemTaskRequest.urgency.getter(&v3);
  *a1 = v3;
  return result;
}

id (*BGSystemTaskRequest.urgency.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  BGSystemTaskRequest.urgency.getter((a1 + 8));
  return sub_231065E40;
}

id sub_231065E40(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  else
  {
    v5 = *(a1 + 8);
    v2 = &v5;
  }

  return BGSystemTaskRequest.urgency.setter(v2);
}

void BGSystemTaskRequest.relatedApps.setter(uint64_t a1)
{
  [v1 setApplicationRelationship_];
  if (a1)
  {
    v3 = sub_231158F38();
  }

  else
  {
    v3 = 0;
  }

  [v1 setRelatedApplications_];
}

void (*BGSystemTaskRequest.relatedApps.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_2310667B8(v1, &selRef_relatedApplications);
  return sub_231065FB8;
}

void sub_231065FB8(uint64_t *a1, char a2)
{
  if (a2)
  {

    BGSystemTaskRequest.relatedApps.setter(v2);
  }

  else
  {
    BGSystemTaskRequest.relatedApps.setter(*a1);
  }
}

id (*sub_23106607C(void *a1))(void *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 resources];
  return sub_231065CFC;
}

id (*sub_231066154(uint64_t a1))(void **a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = [v3 requiresExternalPower];
  return sub_2310661A8;
}

id (*sub_231066204(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = *v1;
  BGSystemTaskRequest.urgency.getter((a1 + 8));
  return sub_231065E40;
}

id (*sub_2310662C4(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  [v3 expectedDuration];
  *a1 = v4;
  return sub_231066318;
}

void sub_23106639C(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_231158F38();
  }

  else
  {
    v2 = 0;
  }

  [v1 setInvolvedProcesses_];
}

void (*sub_231066410(uint64_t **a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_231066470(v2);
  return sub_231056514;
}

void (*sub_231066470(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_2310667B8(v1, &selRef_involvedProcesses);
  return sub_2310664C4;
}

void sub_2310664C4(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {

      v4 = sub_231158F38();
    }

    else
    {
      v4 = 0;
    }

    [a1[1] setInvolvedProcesses_];
  }

  else if (v3)
  {
    v4 = sub_231158F38();

    [a1[1] setInvolvedProcesses_];
  }

  else
  {
    v4 = 0;
    [a1[1] setInvolvedProcesses_];
  }
}

void (*sub_2310665D8(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = sub_2310667B8(v3, &selRef_relatedApplications);
  return sub_231065FB8;
}

id (*sub_2310666B0(uint64_t a1))(void **a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = [v3 requiresBuddyComplete];
  return sub_231066704;
}

uint64_t sub_231066724(uint64_t a1)
{
  result = sub_2310651F8(&qword_280CCAEF0, &protocol conformance descriptor for BGSystemTaskRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2310667B8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_231158F48();

  return v4;
}

uint64_t DaemonEventStream.any<A>(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DaemonEventStream.EventMerge(0, a3, a4, a4);
  v5 = a1();
  return sub_231066E40(v5);
}

uint64_t DaemonEventStream.event<A>(_:)()
{
  OUTLINED_FUNCTION_2_6();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DaemonEventStream.EventSource(0, v7, v8, v9);
  (*(v3 + 16))(v6, v1, v0);

  return sub_231066970();
}

uint64_t sub_231066970()
{
  OUTLINED_FUNCTION_2_6();
  v2 = swift_allocObject();
  sub_231066BCC(v1, v0);
  return v2;
}

uint64_t sub_2310669BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v9 = *(a1 + a2 - 16);
  result = sub_231066AE4();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v9;
    *(result + 32) = v6;
    *(result + 40) = v7;
    v8 = sub_231067678;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  a3[1] = result;
  return result;
}

uint64_t sub_231066A48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = swift_allocObject();
    *(v7 + 16) = *(v6 - 16);
    *(v7 + 32) = v4;
    *(v7 + 40) = v5;
  }

  sub_231042684(v4, v5);
  return sub_231066B2C();
}

uint64_t sub_231066AE4()
{
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_25_0();
  sub_231042684(v0, v1);
  return OUTLINED_FUNCTION_25_0();
}

uint64_t sub_231066B2C()
{
  OUTLINED_FUNCTION_2_6();
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return sub_231046164(v3, v4);
}

uint64_t *sub_231066BCC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v2[2] = 0;
  v2[3] = 0;
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v7 = *(v4 + 80);
  v6[2] = v7;
  v8 = *(v4 + 88);
  v6[3] = v8;
  v6[4] = v5;

  sub_23107AAC4(a1, sub_2310676A0, v6, v7, v8);

  (*(*(v7 - 8) + 8))(a1, v7);

  return v2;
}

uint64_t sub_231066CFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_231066AE4();
    v6 = v5;

    if (v4)
    {
      v4(a1);
      return sub_231046164(v4, v6);
    }
  }

  return result;
}

uint64_t DaemonEventStream.EventSource.__deallocating_deinit()
{
  DaemonEventStream.EventSource.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void (*sub_231066DE4(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_231066B7C(v2);
  return sub_2310676B8;
}

uint64_t sub_231066E40(uint64_t a1)
{
  OUTLINED_FUNCTION_0_7();
  v2 = swift_allocObject();
  sub_2310670A0(a1);
  return v2;
}

uint64_t sub_231066E90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  v9 = *(a1 + a2 - 16);
  result = sub_231066FB8();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v9;
    *(result + 32) = v6;
    *(result + 40) = v7;
    v8 = sub_231056638;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  a3[1] = result;
  return result;
}

uint64_t sub_231066F1C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = swift_allocObject();
    *(v7 + 16) = *(v6 - 16);
    *(v7 + 32) = v4;
    *(v7 + 40) = v5;
  }

  sub_231042684(v4, v5);
  return sub_231067000();
}

uint64_t sub_231066FB8()
{
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_25_0();
  sub_231042684(v0, v1);
  return OUTLINED_FUNCTION_25_0();
}

uint64_t sub_231067000()
{
  OUTLINED_FUNCTION_2_6();
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return sub_231046164(v3, v4);
}

uint64_t *sub_2310670A0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = a1;
  v4 = v3;
  v5 = *(v2 + 80);

  v10 = sub_231158F58();
  if (v10 != sub_231158FF8())
  {
    v7 = *(v4 + 88);
    v8 = *(v7 + 32);
    do
    {
      v9 = sub_231158FD8();
      sub_231158F88();
      if (v9)
      {
        swift_unknownObjectRetain();
      }

      else
      {
        sub_2311595A8();
      }

      sub_231159028();

      v8(sub_2310676AC, v1, v5, v7);
      swift_unknownObjectRelease();
    }

    while (v10 != sub_231158FF8());
  }

  return v1;
}

void (*sub_23106722C(uint64_t a1))(uint64_t)
{
  result = sub_231066FB8();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result(a1);

    return sub_231046164(v4, v5);
  }

  return result;
}

void *DaemonEventStream.EventMerge.deinit()
{

  sub_231046164(*(v0 + 24), *(v0 + 32));
  return v0;
}

uint64_t DaemonEventStream.EventMerge.__deallocating_deinit()
{
  DaemonEventStream.EventMerge.deinit();
  v0 = OUTLINED_FUNCTION_0_7();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void (*sub_231067314(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_231067050(v2);
  return sub_231067370;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for DaemonEventStream(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for DaemonEventStream(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2310676E8()
{
  OUTLINED_FUNCTION_4_1();
  v1[5] = v0;
  v2 = sub_231158258();
  v1[6] = v2;
  OUTLINED_FUNCTION_5(v2);
  v1[7] = v3;
  v1[8] = OUTLINED_FUNCTION_21_0();
  v4 = sub_231158C58();
  v1[9] = v4;
  OUTLINED_FUNCTION_5(v4);
  v1[10] = v5;
  v1[11] = OUTLINED_FUNCTION_21_0();
  v6 = sub_231157F18();
  v1[12] = v6;
  OUTLINED_FUNCTION_5(v6);
  v1[13] = v7;
  v1[14] = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231067828()
{
  OUTLINED_FUNCTION_4_1();
  (*(v0[13] + 104))(v0[14], *MEMORY[0x277D79C48], v0[12]);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_2310678F8;
  OUTLINED_FUNCTION_29_1();

  return sub_231067D14();
}

uint64_t sub_2310678F8()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v10 = v9;
  *(v3 + 128) = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v14();
  }
}

uint64_t sub_231067AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_2();
  v13 = v12[16];
  v15 = v12[10];
  v14 = v12[11];
  v16 = v12[9];
  sub_231158B68();
  sub_231158B58();
  sub_231159588();
  v12[2] = 0;
  v12[3] = 0xE000000000000000;
  MEMORY[0x231924980](0xD000000000000034, 0x80000002311689A0);
  v12[4] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  sub_231159688();
  v17 = v12[3];
  *v14 = v12[2];
  v14[1] = v17;
  (*(v15 + 104))(v14, *MEMORY[0x277D73298], v16);
  sub_231158B48();

  v18 = OUTLINED_FUNCTION_21_2();
  v19(v18);
  sub_2311581C8();
  v20 = v13;
  v21 = sub_231158238();
  v22 = sub_2311592D8();

  v23 = os_log_type_enabled(v21, v22);
  v24 = v12[16];
  if (v23)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = v24;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v28;
    *v26 = v28;
    OUTLINED_FUNCTION_34_1(&dword_23103C000, v29, v30, "could not force index toolkit spotlight coordinator %@");
    sub_231064568(v26, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();
  }

  else
  {
  }

  (*(v12[7] + 8))(v12[8], v12[6]);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, 0, 0xE000000000000000, a11, a12);
}

uint64_t sub_231067D14()
{
  OUTLINED_FUNCTION_4_1();
  v1[20] = v2;
  v1[21] = v0;
  v1[19] = v3;
  v4 = sub_231158368();
  v1[22] = v4;
  OUTLINED_FUNCTION_5(v4);
  v1[23] = v5;
  v1[24] = OUTLINED_FUNCTION_21_0();
  v6 = sub_231158C58();
  v1[25] = v6;
  OUTLINED_FUNCTION_5(v6);
  v1[26] = v7;
  v1[27] = OUTLINED_FUNCTION_21_0();
  v8 = sub_231158918();
  v1[28] = v8;
  OUTLINED_FUNCTION_5(v8);
  v1[29] = v9;
  v1[30] = OUTLINED_FUNCTION_21_0();
  v10 = sub_2311584A8();
  v1[31] = v10;
  OUTLINED_FUNCTION_5(v10);
  v1[32] = v11;
  v1[33] = OUTLINED_FUNCTION_21_0();
  v12 = sub_231158568();
  v1[34] = v12;
  OUTLINED_FUNCTION_5(v12);
  v1[35] = v13;
  v1[36] = OUTLINED_FUNCTION_21_0();
  v14 = sub_231158538();
  v1[37] = v14;
  OUTLINED_FUNCTION_5(v14);
  v1[38] = v15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v16 = sub_231157A38();
  v1[41] = v16;
  OUTLINED_FUNCTION_5(v16);
  v1[42] = v17;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v18 = sub_2311588E8();
  OUTLINED_FUNCTION_19(v18);
  v1[45] = OUTLINED_FUNCTION_21_0();
  v19 = sub_2311588B8();
  v1[46] = v19;
  OUTLINED_FUNCTION_5(v19);
  v1[47] = v20;
  v1[48] = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_23106801C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  sub_231158888();
  *(v0 + 392) = sub_231158878();
  sub_2311588D8();
  sub_231157A28();
  OUTLINED_FUNCTION_9();
  sub_231158898();
  v1 = swift_task_alloc();
  *(v0 + 400) = v1;
  *v1 = v0;
  v1[1] = sub_2310681B0;
  OUTLINED_FUNCTION_10();

  return MEMORY[0x2821DADB0](v2);
}

uint64_t sub_2310681B0(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *v5 = *v2;

  if (v1)
  {
  }

  else
  {
    *(v4 + 408) = a1;
  }

  v6 = OUTLINED_FUNCTION_21_2();
  v7(v6);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231068340(uint64_t a1)
{
  v2 = v1[51];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v1[52] = v2;
  v4 = v1[49];
  v5 = v1[39];
  v6 = v1[38];
  v7 = v1[35];
  v8 = v1[36];
  v9 = v1[33];
  v22 = v1[34];
  v10 = v1[32];
  v21 = v1[31];
  v26 = v1[30];
  v23 = v1[29];
  v24 = v1[37];
  v25 = v1[28];
  type metadata accessor for ToolTransformer();
  OUTLINED_FUNCTION_8();
  v11 = swift_allocObject();
  v1[53] = v11;
  v11[2] = v4;
  v11[3] = v2;
  v11[4] = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_9_0();
  v12 = swift_allocObject();
  v1[54] = v12;
  *(v12 + 16) = MEMORY[0x277D84F90];

  swift_unknownObjectRetain();
  sub_231158508();
  swift_getKeyPath();
  sub_231158498();
  sub_231158558();
  (*(v10 + 8))(v9, v21);
  OUTLINED_FUNCTION_8_3();
  sub_23106B2BC(v13, v14, MEMORY[0x277D724A0]);
  OUTLINED_FUNCTION_7_4();
  sub_23106B2BC(v15, v16, MEMORY[0x277D72570]);
  sub_2311588F8();

  (*(v7 + 8))(v8, v22);
  v17 = *(v6 + 8);
  v1[55] = v17;
  v1[56] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v5, v24);
  (*(v23 + 104))(v26, *MEMORY[0x277D72858], v25);

  sub_231157A28();
  v18 = swift_task_alloc();
  v1[57] = v18;
  *v18 = v1;
  v19 = OUTLINED_FUNCTION_4_4(v18);

  return MEMORY[0x2821DACB8](v19);
}

uint64_t sub_2310685A4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  v2 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 464) = v0;

  v5 = v2[55];
  v6 = v2[40];
  v7 = v2[37];
  v8 = v2[30];
  v9 = v2[29];
  v10 = v2[28];

  v11 = OUTLINED_FUNCTION_21_2();
  v12(v11);
  (*(v9 + 8))(v8, v10);
  v5(v6, v7);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

void sub_2310687D8()
{
  v1 = v0[54];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v34 = v0;
    v39 = MEMORY[0x277D84F90];

    sub_23104CA0C(0, v3, 0);
    v4 = 0;
    v5 = *(v39 + 16);
    v6 = 16 * v5;
    while (1)
    {
      v7 = v2;
      v9 = *(v2 + v4 + 32);
      v8 = *(v2 + v4 + 40);
      v10 = *(v39 + 24);
      v11 = v5 + 1;

      if (v5 >= v10 >> 1)
      {
        sub_23104CA0C((v10 > 1), v11, 1);
      }

      *(v39 + 16) = v11;
      v12 = v39 + v6 + v4;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      v4 += 16;
      ++v5;
      --v3;
      v2 = v7;
      if (!v3)
      {
        v13 = v34[26];
        v14 = v34[27];
        v15 = v34[25];
        v38 = v34[24];
        v16 = v34[23];
        v36 = v34[54];
        v37 = v34[22];
        v35 = v34[21];

        v34[59] = sub_231158B68();
        sub_231158B58();
        sub_231159588();

        v17 = MEMORY[0x231924A30](v39, MEMORY[0x277D837D0]);
        v19 = v18;

        MEMORY[0x231924980](v17, v19);

        *v14 = 0xD000000000000024;
        v14[1] = 0x8000000231168920;
        *(v34 + 156) = *MEMORY[0x277D73288];
        v20 = *(v13 + 104);
        v34[60] = v20;
        v34[61] = (v13 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        v20(v14);
        sub_231158B48();

        v21 = *(v13 + 8);
        v34[62] = v21;
        v34[63] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v21(v14, v15);
        v22 = *(v35 + 16);
        v34[64] = v22;
        v23 = *(v22 + OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_index);
        type metadata accessor for SpotlightIndexDiffer();
        inited = swift_initStackObject();
        v34[65] = inited;
        inited[5] = &type metadata for SpotlightIndexDiffer.DataSource;
        inited[6] = &off_2845DAE28;
        inited[2] = v23;
        v34[66] = *(v36 + 16);
        (*(v16 + 104))(v38, *MEMORY[0x277D721F8], v37);
        v25 = v23;

        v26 = swift_task_alloc();
        v34[67] = v26;
        *v26 = v34;
        v26[1] = sub_231068C68;
        OUTLINED_FUNCTION_32();

        __asm { BR              X4 }
      }
    }
  }

  v30 = v0[26];
  v29 = v0[27];
  v31 = v0[25];
  sub_231158B68();
  sub_231158B58();
  *v29 = 0xD00000000000002ALL;
  v29[1] = 0x8000000231168970;
  (*(v30 + 104))(v29, *MEMORY[0x277D73298], v31);
  sub_231158B48();

  swift_unknownObjectRelease();
  (*(v30 + 8))(v29, v31);

  OUTLINED_FUNCTION_10_3();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_32();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_231068C68()
{
  OUTLINED_FUNCTION_5_1();
  v27 = v2;
  OUTLINED_FUNCTION_6_2();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v1;
  v10 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v11 = v10;
  v12 = *v1;
  *v11 = *v1;
  v10[68] = v8;
  v10[69] = v13;
  v10[70] = v14;
  v10[71] = v0;

  v15 = v9[24];
  v16 = v9[23];
  v17 = v9[22];
  if (v0)
  {
    (*(v16 + 8))(v15, v17);

    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_3_0();

    return MEMORY[0x2822009F8](v18, v19, v20);
  }

  else
  {
    (*(v16 + 8))(v15, v17);

    v22 = swift_task_alloc();
    v10[72] = v22;
    *v22 = v12;
    v22[1] = sub_231068E98;
    v23 = v10[53];
    v24 = v10[19];
    v25 = v10[20];

    return sub_2310ADED8(v8, v6, v4, v23, v24, v25);
  }
}

uint64_t sub_231068E98()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 584) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231068FB8(uint64_t a1)
{
  v2 = *(v1 + 416);
  if (v2)
  {
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  }

  else
  {
    OpaqueTypeConformance2 = 0;
  }

  v4 = *(v1 + 392);
  type metadata accessor for CustomToolTransformer();
  OUTLINED_FUNCTION_8();
  v5 = swift_allocObject();
  *(v1 + 592) = v5;
  v5[2] = v4;
  v5[3] = v2;
  v5[4] = OpaqueTypeConformance2;
  v26 = MEMORY[0x277D84F90];

  swift_unknownObjectRetain();
  sub_23104CCE4(0, 23, 0);
  v6 = 0;
  do
  {
    sub_23104FD3C(byte_2845D7648[v6 + 32], v1 + 16);
    v8 = *(v26 + 16);
    v7 = *(v26 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_23104CCE4((v7 > 1), v8 + 1, 1);
    }

    *(v1 + 616) = v26;
    ++v6;
    *(v26 + 16) = v8 + 1;
    v9 = v26 + 56 * v8;
    v10 = *(v1 + 16);
    v11 = *(v1 + 32);
    v12 = *(v1 + 48);
    *(v9 + 80) = *(v1 + 64);
    *(v9 + 48) = v11;
    *(v9 + 64) = v12;
    *(v9 + 32) = v10;
  }

  while (v6 != 23);
  v25 = *(v1 + 496);
  v13 = *(v1 + 480);
  v14 = *(v1 + 624);
  v15 = *(v1 + 216);
  v16 = *(v1 + 200);
  sub_231158B58();
  sub_231159588();

  v17 = MEMORY[0x231924A30](v26, &type metadata for CustomToolPlan);
  MEMORY[0x231924980](v17);

  *v15 = 0xD00000000000001ELL;
  v15[1] = 0x8000000231168950;
  v13(v15, v14, v16);
  sub_231158B48();

  v18 = OUTLINED_FUNCTION_21_2();
  v25(v18);
  v19 = swift_task_alloc();
  *(v1 + 600) = v19;
  *v19 = v1;
  v19[1] = sub_231069264;
  v20 = *(v1 + 152);
  v21 = *(v1 + 160);
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];

  return sub_2310AE128(v26, v22, v23, v5, v20, v21);
}

uint64_t sub_231069264()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_2_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 608) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231069388()
{
  OUTLINED_FUNCTION_6_2();
  v1 = *(v0 + 520);

  swift_unknownObjectRelease();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  OUTLINED_FUNCTION_10_3();

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_2310694A0()
{
  v0[52] = 0;
  v1 = v0[49];
  v2 = v0[39];
  v3 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[33];
  v21 = v0[34];
  v7 = v0[32];
  v20 = v0[31];
  v8 = v0[29];
  v24 = v0[30];
  v22 = v0[37];
  v23 = v0[28];
  type metadata accessor for ToolTransformer();
  OUTLINED_FUNCTION_8();
  v9 = swift_allocObject();
  v0[53] = v9;
  v9[3] = 0;
  v9[4] = 0;
  v9[2] = v1;
  OUTLINED_FUNCTION_9_0();
  v10 = swift_allocObject();
  v0[54] = v10;
  *(v10 + 16) = MEMORY[0x277D84F90];

  sub_231158508();
  swift_getKeyPath();
  sub_231158498();
  sub_231158558();
  (*(v7 + 8))(v6, v20);
  OUTLINED_FUNCTION_8_3();
  sub_23106B2BC(v11, v12, MEMORY[0x277D724A0]);
  OUTLINED_FUNCTION_7_4();
  sub_23106B2BC(v13, v14, MEMORY[0x277D72570]);
  sub_2311588F8();

  (*(v5 + 8))(v4, v21);
  v15 = *(v3 + 8);
  v0[55] = v15;
  v0[56] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v2, v22);
  (*(v8 + 104))(v24, *MEMORY[0x277D72858], v23);

  sub_231157A28();
  v16 = swift_task_alloc();
  v0[57] = v16;
  *v16 = v0;
  OUTLINED_FUNCTION_4_4(v16);
  OUTLINED_FUNCTION_32();

  return MEMORY[0x2821DACB8](v17);
}

uint64_t sub_2310696C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_0_8();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2310697A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  v15 = *(v14 + 520);

  swift_unknownObjectRelease();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v15 + 16));

  OUTLINED_FUNCTION_0_8();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_231069890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  v15 = *(v14 + 520);

  swift_unknownObjectRelease();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v15 + 16));

  OUTLINED_FUNCTION_0_8();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2310699A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  v15 = *(v14 + 520);

  swift_unknownObjectRelease();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v15 + 16));

  OUTLINED_FUNCTION_0_8();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_231069AA0(uint64_t a1)
{
  v2 = sub_231158568();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2311584C8();
}

uint64_t sub_231069B68(uint64_t a1, uint64_t a2)
{
  v3 = sub_2311583E8();
  v5 = v4;
  swift_beginAccess();
  sub_231086030();
  v6 = *(*(a2 + 16) + 16);
  sub_231086104(v6);
  v7 = *(a2 + 16);
  *(v7 + 16) = v6 + 1;
  v8 = v7 + 16 * v6;
  *(v8 + 32) = v3;
  *(v8 + 40) = v5;
  *(a2 + 16) = v7;
  return swift_endAccess();
}

uint64_t sub_231069C08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_23_2();
  v2 = sub_2311590C8();
  OUTLINED_FUNCTION_16_3(v2);
  OUTLINED_FUNCTION_9_0();
  v3 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_8();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v3;
  OUTLINED_FUNCTION_13_4();
  sub_2310798FC();
}

uint64_t sub_231069CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_231158258();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_231158C58();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_231157F18();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231069E48, 0, 0);
}

uint64_t sub_231069E48()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26_2();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    (*(v0[16] + 104))(v0[17], *MEMORY[0x277D79C48], v0[15]);
    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_231069F6C;
    OUTLINED_FUNCTION_29_1();

    return sub_231067D14();
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v4();
  }
}

uint64_t sub_231069F6C()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = v5[17];
  v7 = v5[16];
  v8 = v5[15];
  v9 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v10 = v9;
  *(v3 + 160) = v0;

  (*(v7 + 8))(v6, v8);

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    v14 = *(v9 + 8);

    return v14();
  }
}

uint64_t sub_23106A144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_2();
  v13 = v12[20];
  v15 = v12[13];
  v14 = v12[14];
  v16 = v12[12];
  sub_231159588();
  v12[5] = 0;
  v12[6] = 0xE000000000000000;
  MEMORY[0x231924980](0xD000000000000030, 0x80000002311688E0);
  v12[7] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  sub_231159688();
  v17 = v12[5];
  v18 = v12[6];
  sub_231158B68();
  sub_231158B58();
  *v14 = v17;
  v14[1] = v18;
  (*(v15 + 104))(v14, *MEMORY[0x277D73298], v16);
  sub_231158B48();

  v19 = OUTLINED_FUNCTION_21_2();
  v20(v19);
  sub_2311581C8();
  v21 = v13;
  v22 = sub_231158238();
  v23 = sub_2311592D8();

  v24 = os_log_type_enabled(v22, v23);
  v25 = v12[20];
  if (v24)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v25;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    OUTLINED_FUNCTION_34_1(&dword_23103C000, v30, v31, "failed to handle gms change notification due to %@");
    sub_231064568(v27, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();
  }

  else
  {
  }

  (*(v12[10] + 8))(v12[11], v12[9]);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, 0, 0xE000000000000000, a11, a12);
}

uint64_t sub_23106A3C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_23_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE70, &qword_2311626F0);
  OUTLINED_FUNCTION_19(v2);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = sub_231157F18();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  sub_2310DC330();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_231064568(v5, &unk_27DD3CE70, &qword_2311626F0);
  }

  v22 = *(v8 + 32);
  v22(v15, v5, v6);
  v17 = sub_2311590C8();
  OUTLINED_FUNCTION_16_3(v17);
  OUTLINED_FUNCTION_9_0();
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v13, v15, v6);
  v19 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v18;
  v22(&v20[v19], v13, v6);
  OUTLINED_FUNCTION_13_4();
  sub_2310798FC();

  return (*(v8 + 8))(v15, v6);
}

uint64_t sub_23106A64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_231158C58();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23106A70C, 0, 0);
}

uint64_t sub_23106A70C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_23106A800;
    OUTLINED_FUNCTION_29_1();

    return sub_231067D14();
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v4();
  }
}

uint64_t sub_23106A800()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v10();
  }
}

uint64_t sub_23106A924()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[11];

  sub_231159588();
  v0[5] = 0;
  v0[6] = 0xE000000000000000;
  MEMORY[0x231924980](0xD000000000000034, 0x8000000231168860);
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  sub_231159688();
  MEMORY[0x231924980](0xD00000000000001BLL, 0x80000002311688A0);
  v5 = v0[5];
  v6 = v0[6];
  sub_231158B68();
  sub_231158B58();
  *v2 = v5;
  v2[1] = v6;
  (*(v4 + 104))(v2, *MEMORY[0x277D73298], v3);
  sub_231158B48();

  (*(v4 + 8))(v2, v3);

  OUTLINED_FUNCTION_1();

  return v7();
}

uint64_t sub_23106AB08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v1);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_23_2();
  v3 = sub_2311590C8();
  OUTLINED_FUNCTION_16_3(v3);
  OUTLINED_FUNCTION_8();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v0;

  v5 = OUTLINED_FUNCTION_13_4();
  sub_23105ED1C(v5, v6, v7, v8, v4);
}

uint64_t sub_23106ABBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_231157F18();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23106AC7C, 0, 0);
}

uint64_t sub_23106AC7C()
{
  OUTLINED_FUNCTION_4_1();
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D79C48], v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_23106AD44;
  OUTLINED_FUNCTION_29_1();

  return sub_231067D14();
}

uint64_t sub_23106AD44()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v6 = v5[5];
  v7 = v5[4];
  v8 = v5[3];
  v9 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v10 = v9;
  *(v3 + 56) = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v14();
  }
}

uint64_t sub_23106AED0()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_23106AF44(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v5 = a3;

  a4(v6);
}

uint64_t sub_23106AFC8()
{
  sub_23106AFA0();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_23106B068()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_15_2(v2);
  *v3 = v4;
  v3[1] = sub_23105FDEC;
  v5 = OUTLINED_FUNCTION_11_0();

  return sub_23106ABBC(v5, v6, v7, v1);
}

uint64_t sub_23106B104()
{
  v1 = sub_231157F18();
  OUTLINED_FUNCTION_19(v1);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v4[1] = sub_23105FDEC;
  v6 = OUTLINED_FUNCTION_11_0();

  return sub_23106A64C(v6, v7, v8, v2, v9);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_23106B220()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_15_2(v2);
  *v3 = v4;
  v3[1] = sub_23106044C;
  v5 = OUTLINED_FUNCTION_11_0();

  return sub_231069CD0(v5, v6, v7, v1);
}

uint64_t sub_23106B2BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_8()
{
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_26_2()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_34_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_231158E98();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return sub_231158E98();
    }

LABEL_9:
    __break(1u);
    return sub_231158E98();
  }

  __break(1u);
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_27DD3B940 != -1)
  {
    swift_once();
  }

  v1 = qword_27DD3C0A8;

  return v1;
}

id sub_23106B608()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27DD3C0A8 = result;
  return result;
}

uint64_t CSSearchableIndex.index(searchableItems:batchSize:updatedIdentifiers:)()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_43_0(v7);
  *v8 = v9;
  v8[1] = sub_23105FDEC;

  return sub_23106B7E4(v6, v2, v4, v0);
}

void *sub_23106B754(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_231060450();
  }

  else if (a2)
  {
    v7 = a2;

    return sub_231060454();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23106B7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[54] = a3;
  v4[55] = a4;
  v4[52] = a1;
  v4[53] = a2;
  v5 = sub_231158258();
  v4[56] = v5;
  v4[57] = *(v5 - 8);
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23106B8E4, 0, 0);
}

uint64_t sub_23106B8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_28_0();
  v10[64] = *MEMORY[0x277D7A4C8];
  sub_2311581C8();

  v13 = sub_231158238();
  v14 = sub_2311592C8();
  if (OUTLINED_FUNCTION_20_2(v14))
  {
    v15 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_13_5(v15, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v16, v17, "Starting indexing %ld items");
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
  }

  v18 = v10[63];
  v19 = v10[56];
  v20 = v10[57];
  v21 = v10[52];
  v22 = *(v20 + 8);
  v10[65] = v22;
  v10[66] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v18, v19);
  v23 = MEMORY[0x277D84F90];
  v10[50] = MEMORY[0x277D84F90];
  v24 = sub_23106EEB4(v21);
  v10[67] = v24;
  v10[68] = v23;
  if (v24)
  {
    v25 = v10[52];
    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x231925080](0);
    }

    else
    {
      if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x282200938](v24);
      }

      v26 = *(v25 + 32);
      swift_unknownObjectRetain();
    }

    v10[71] = v26;
    v10[72] = 1;
    v10[2] = v10;
    v10[7] = v10 + 51;
    v10[3] = sub_23106BF40;
    swift_continuation_init();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C0, &qword_231162E78);
    OUTLINED_FUNCTION_7_5(v27);
    v10[27] = 1107296256;
    OUTLINED_FUNCTION_5_4(block_descriptor_41);
    [v26 generateSearchableItemWithCompletionBlock_];
LABEL_13:
    OUTLINED_FUNCTION_55_1();

    return MEMORY[0x282200938](v24);
  }

  if (sub_23106EEB4(MEMORY[0x277D84F90]))
  {
    OUTLINED_FUNCTION_60_0();
    v28 = sub_231158238();
    sub_2311592C8();
    OUTLINED_FUNCTION_38_0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_56_0(v30);
      OUTLINED_FUNCTION_25_2(&dword_23103C000, v31, v32, "Finished generating searchable items, triggering final index");
      OUTLINED_FUNCTION_35_0();
    }

    OUTLINED_FUNCTION_54_1();
    v12("xtualAction", v11);
    sub_23106F9C8();
    v10[69] = sub_231158F38();

    OUTLINED_FUNCTION_52_1();
    v10[18] = v33;
    v34 = OUTLINED_FUNCTION_12_4();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
    OUTLINED_FUNCTION_27_2(v35);
    v10[43] = 1107296256;
    OUTLINED_FUNCTION_8_4();
    v10[45] = v36;
    v10[46] = v34;
    v37 = OUTLINED_FUNCTION_23_3();
    [v37 v38];
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_32_0();

  v40 = sub_231158238();
  v41 = sub_2311592B8();
  if (OUTLINED_FUNCTION_20_2(v41))
  {
    v42 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_13_5(v42, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v43, v44, "Done indexing %ld items");
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
  }

  v45 = OUTLINED_FUNCTION_2_7();
  v46(v45);

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_55_1();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10);
}

uint64_t sub_23106BC9C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 560) = *(v3 + 176);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23106BD98()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_32_0();

  v1 = sub_231158238();
  v2 = sub_2311592B8();
  if (OUTLINED_FUNCTION_20_2(v2))
  {
    v3 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_13_5(v3, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v4, v5, "Done indexing %ld items");
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
  }

  v6 = OUTLINED_FUNCTION_2_7();
  v7(v6);

  OUTLINED_FUNCTION_46_0();

  return v8();
}

uint64_t sub_23106BE98()
{
  OUTLINED_FUNCTION_28_0();
  v1 = *(v0 + 552);
  swift_willThrow();

  OUTLINED_FUNCTION_58_1();

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_23106BF40()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 584) = *(v3 + 48);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23106C03C()
{
  OUTLINED_FUNCTION_28_0();
  swift_willThrow();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_58_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_23106C0F4()
{
  v1 = v0[51];
  v0[74] = v1;
  swift_unknownObjectRelease();
  sub_2311581C8();
  v2 = v1;
  v3 = sub_231158238();
  v4 = sub_2311592C8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[65];
  v7 = v0[60];
  v8 = &selRef_setContentModificationDate_;
  v9 = v0[56];
  if (v5)
  {
    v84 = v0[65];
    v10 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_62_1();
    OUTLINED_FUNCTION_67_0();
    *v10 = 136315138;
    v11 = v2;
    v12 = OUTLINED_FUNCTION_71();
    sub_231158E58();
    v14 = v13;

    v15 = OUTLINED_FUNCTION_66_0();
    v8 = &selRef_setContentModificationDate_;
    v17 = sub_2310488F8(v15, v14, v16);

    *(v10 + 4) = v17;
    v2 = v11;
    OUTLINED_FUNCTION_69(&dword_23103C000, v18, v19, "Generated searchable item with identifier %s");
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();

    v84(v83, v9);
  }

  else
  {

    v6(v7, v9);
  }

  v20 = v0[53];
  if (v20)
  {
    v21 = OUTLINED_FUNCTION_71();
    v22 = sub_231158E58();
    v24 = v23;

    v25 = sub_23106EED8(v22, v24, v20);

    if (v25)
    {
      sub_2311581C8();
      v26 = v2;
      v27 = sub_231158238();
      v28 = sub_2311592C8();

      v29 = os_log_type_enabled(v27, v28);
      v30 = v0[65];
      v31 = v0[59];
      v32 = v0[56];
      if (v29)
      {
        OUTLINED_FUNCTION_45_1();
        OUTLINED_FUNCTION_67_0();
        v85 = v2;
        v33 = OUTLINED_FUNCTION_62_1();
        *v31 = 136315138;
        v34 = [v26 v8[403]];
        sub_231158E58();
        v82 = v30;
        v36 = v35;

        v37 = OUTLINED_FUNCTION_66_0();
        v39 = sub_2310488F8(v37, v36, v38);

        *(v31 + 4) = v39;
        OUTLINED_FUNCTION_68(&dword_23103C000, v40, v41, "Item identifier %s already exists in index, marking as update");
        __swift_destroy_boxed_opaque_existential_0(v33);
        v2 = v85;
        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_16();

        v82(v83, v32);
      }

      else
      {

        v30(v31, v32);
      }

      [v26 setIsUpdate_];
    }
  }

  v42 = v2;
  MEMORY[0x2319249F0]();
  if (*((v0[50] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[50] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_231158F98();
  }

  sub_231158FE8();
  v43 = v0[50];
  v0[75] = v43;
  if (v43 >> 62)
  {
    v44 = sub_2311594D8();
    if (v44 < 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v44 == v0[54])
  {
    sub_2311581C8();
    v45 = sub_231158238();
    sub_2311592C8();
    OUTLINED_FUNCTION_38_0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_65_0(v47);
      OUTLINED_FUNCTION_48_1(&dword_23103C000, v48, v49, "Searchable items set at batch capacity, triggering index");
      OUTLINED_FUNCTION_16();
    }

    v50 = v0[65];
    v86 = v0[55];

    v51 = OUTLINED_FUNCTION_51_1();
    v50(v51);
    sub_23106F9C8();
    v52 = sub_231158F38();
    v0[76] = v52;
    v0[10] = v0;
    v0[11] = sub_23106C888;
    v53 = swift_continuation_init();
    v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
    v0[34] = MEMORY[0x277D85DD0];
    v0[35] = 1107296256;
    v0[36] = sub_23106FF5C;
    v0[37] = &block_descriptor_44;
    v0[38] = v53;
    [v86 indexSearchableItems:v52 completionHandler:v0 + 34];
    goto LABEL_29;
  }

LABEL_19:

  v55 = v0[72];
  v0[68] = v43;
  if (v55 == v0[67])
  {
    if (!sub_23106EEB4(v43))
    {

      OUTLINED_FUNCTION_32_0();

      v72 = sub_231158238();
      v73 = sub_2311592B8();
      if (OUTLINED_FUNCTION_20_2(v73))
      {
        v74 = OUTLINED_FUNCTION_45_1();
        OUTLINED_FUNCTION_13_5(v74, 3.852e-34);
        OUTLINED_FUNCTION_17_3(&dword_23103C000, v75, v76, "Done indexing %ld items");
        OUTLINED_FUNCTION_29_2();
      }

      else
      {
      }

      v77 = OUTLINED_FUNCTION_2_7();
      v78(v77);

      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_23_0();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_60_0();
    v56 = sub_231158238();
    sub_2311592C8();
    OUTLINED_FUNCTION_38_0();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_65_0(v58);
      OUTLINED_FUNCTION_48_1(&dword_23103C000, v59, v60, "Finished generating searchable items, triggering final index");
      OUTLINED_FUNCTION_16();
    }

    v61 = v0[65];
    v62 = v0[55];

    v63 = OUTLINED_FUNCTION_51_1();
    v61(v63);
    sub_23106F9C8();
    v64 = sub_231158F38();
    v0[69] = v64;

    OUTLINED_FUNCTION_52_1();
    v0[18] = v65;
    v66 = OUTLINED_FUNCTION_12_4();
    v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
    v0[42] = MEMORY[0x277D85DD0];
    v0[43] = 1107296256;
    OUTLINED_FUNCTION_8_4();
    v0[45] = v67;
    v0[46] = v66;
    [v62 indexSearchableItems:v64 completionHandler:v0 + 42];
    goto LABEL_29;
  }

  v68 = v0[52];
  if ((v68 & 0xC000000000000001) != 0)
  {
    v54 = MEMORY[0x231925080](v55);
    v69 = v54;
  }

  else
  {
    if (v55 >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_40:
      __break(1u);
      return MEMORY[0x282200938](v54);
    }

    v69 = *(v68 + 8 * v55 + 32);
    v54 = swift_unknownObjectRetain();
  }

  v0[71] = v69;
  v0[72] = v55 + 1;
  if (__OFADD__(v55, 1))
  {
    __break(1u);
    goto LABEL_40;
  }

  v0[2] = v0;
  OUTLINED_FUNCTION_28_2((v0 + 51));
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C0, &qword_231162E78);
  OUTLINED_FUNCTION_7_5(v70);
  v0[27] = 1107296256;
  OUTLINED_FUNCTION_5_4(block_descriptor_41);
  [v69 generateSearchableItemWithCompletionBlock_];
LABEL_29:
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x282200938](v54);
}

uint64_t sub_23106C888()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 616) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23106C990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_28_0();
  v14 = *(v10 + 608);

  v16 = MEMORY[0x277D84F90];
  *(v10 + 400) = MEMORY[0x277D84F90];
  v17 = *(v10 + 576);
  *(v10 + 544) = v16;
  if (v17 != *(v10 + 536))
  {
    v29 = *(v10 + 416);
    if ((v29 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x231925080](v17);
      v30 = v15;
    }

    else
    {
      if (v17 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v30 = *(v29 + 8 * v17 + 32);
      v15 = swift_unknownObjectRetain();
    }

    *(v10 + 568) = v30;
    *(v10 + 576) = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      *(v10 + 16) = v10;
      OUTLINED_FUNCTION_28_2(v10 + 408);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C0, &qword_231162E78);
      OUTLINED_FUNCTION_7_5(v31);
      *(v10 + 216) = 1107296256;
      OUTLINED_FUNCTION_5_4(block_descriptor_41);
      [v30 generateSearchableItemWithCompletionBlock_];
LABEL_11:
      OUTLINED_FUNCTION_55_1();

      return MEMORY[0x282200938](v15);
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return MEMORY[0x282200938](v15);
  }

  if (sub_23106EEB4(MEMORY[0x277D84F90]))
  {
    OUTLINED_FUNCTION_60_0();
    v18 = sub_231158238();
    sub_2311592C8();
    OUTLINED_FUNCTION_38_0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_56_0(v20);
      OUTLINED_FUNCTION_25_2(&dword_23103C000, v21, v22, "Finished generating searchable items, triggering final index");
      OUTLINED_FUNCTION_35_0();
    }

    OUTLINED_FUNCTION_54_1();
    v13(v11, v12);
    sub_23106F9C8();
    *(v10 + 552) = sub_231158F38();

    OUTLINED_FUNCTION_52_1();
    *(v10 + 144) = v23;
    v24 = OUTLINED_FUNCTION_12_4();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
    OUTLINED_FUNCTION_27_2(v25);
    *(v10 + 344) = 1107296256;
    OUTLINED_FUNCTION_8_4();
    *(v10 + 360) = v26;
    *(v10 + 368) = v24;
    v27 = OUTLINED_FUNCTION_23_3();
    [v27 v28];
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_0();

  v33 = sub_231158238();
  v34 = sub_2311592B8();
  if (OUTLINED_FUNCTION_20_2(v34))
  {
    v35 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_13_5(v35, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v36, v37, "Done indexing %ld items");
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
  }

  v38 = OUTLINED_FUNCTION_2_7();
  v39(v38);

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_55_1();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
}

uint64_t sub_23106CCAC()
{
  OUTLINED_FUNCTION_28_0();
  v1 = *(v0 + 608);
  v2 = *(v0 + 592);
  swift_willThrow();

  OUTLINED_FUNCTION_58_1();

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t CSSearchableIndex.index<A>(items:updatedIdentifiers:batchSize:transformerBlock:)()
{
  OUTLINED_FUNCTION_4_1();
  v1[42] = v2;
  v1[43] = v0;
  v1[40] = v3;
  v1[41] = v4;
  v1[38] = v5;
  v1[39] = v6;
  v1[37] = v7;
  v8 = *(v2 - 8);
  v1[44] = v8;
  v1[45] = *(v8 + 64);
  v1[46] = swift_task_alloc();
  v9 = sub_231158258();
  v1[47] = v9;
  v1[48] = *(v9 - 8);
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23106CEBC()
{
  OUTLINED_FUNCTION_6_2();
  v0[56] = *MEMORY[0x277D7A4C8];
  sub_2311581C8();

  v3 = sub_231158238();
  v4 = sub_2311592C8();
  if (OUTLINED_FUNCTION_20_2(v4))
  {
    v5 = OUTLINED_FUNCTION_24_1();
    v6 = OUTLINED_FUNCTION_41_1(v5, 3.852e-34);
    OUTLINED_FUNCTION_61_1(v6);
    OUTLINED_FUNCTION_22_2(&dword_23103C000, v7, v8, "Starting indexing %ld items");
    OUTLINED_FUNCTION_16();
  }

  else
  {
  }

  v9 = v0[55];
  v10 = v0[47];
  v11 = v0[48];
  v12 = v0[37];
  v13 = *(v11 + 8);
  v0[57] = v13;
  v0[58] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v9, v10);
  v14 = MEMORY[0x277D84F90];
  v0[34] = MEMORY[0x277D84F90];
  v0[35] = sub_231158F58();
  v0[59] = v14;
  if (v0[35] != sub_231158FF8())
  {
    v28 = OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_33_1(v28);
    if (v1)
    {
      v29 = OUTLINED_FUNCTION_9_4();
      v30(v29);
    }

    else
    {
      v26 = OUTLINED_FUNCTION_47_1();
      if (v12 != 8)
      {
        __break(1u);
        return MEMORY[0x282200938](v26);
      }

      v44 = OUTLINED_FUNCTION_14_3(v26);
      v45(v44);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_0_9();
    v31 = swift_task_alloc();
    v0[60] = v31;
    *v31 = v0;
    OUTLINED_FUNCTION_1_5(v31);
    OUTLINED_FUNCTION_39_1();

    __asm { BRAA            X1, X16 }
  }

  if (!sub_23106EEB4(v0[59]))
  {

    OUTLINED_FUNCTION_30_0();

    v34 = sub_231158238();
    v35 = sub_2311592B8();
    if (OUTLINED_FUNCTION_20_2(v35))
    {
      v36 = OUTLINED_FUNCTION_24_1();
      v37 = OUTLINED_FUNCTION_41_1(v36, 3.852e-34);
      OUTLINED_FUNCTION_61_1(v37);
      OUTLINED_FUNCTION_22_2(&dword_23103C000, v38, v39, "Done indexing %ld items");
      OUTLINED_FUNCTION_16();
    }

    else
    {
    }

    v40 = OUTLINED_FUNCTION_3_4();
    v41(v40);

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_39_1();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_57_0();
  v15 = sub_231158238();
  sub_2311592C8();
  OUTLINED_FUNCTION_38_0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_56_0(v17);
    OUTLINED_FUNCTION_25_2(&dword_23103C000, v18, v19, "Finished generating searchable items, triggering final index");
    OUTLINED_FUNCTION_35_0();
  }

  OUTLINED_FUNCTION_21_3();
  v20 = OUTLINED_FUNCTION_51_1();
  v2(v20);
  sub_23106F9C8();
  v21 = sub_231158F38();
  OUTLINED_FUNCTION_59_1(v21);
  OUTLINED_FUNCTION_52_1();
  v0[10] = v22;
  OUTLINED_FUNCTION_10_4();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  OUTLINED_FUNCTION_6_5(v23);
  v0[27] = 1107296256;
  OUTLINED_FUNCTION_4_5();
  v24 = OUTLINED_FUNCTION_23_3();
  [v24 v25];
  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x282200938](v26);
}

uint64_t sub_23106D26C()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  v5[61] = v0;

  if (v0)
  {
    (*(v5[44] + 8))(v5[46], v5[42]);
  }

  else
  {
    v8 = v5[46];
    v9 = v5[44];
    v10 = v5[42];
    v5[62] = v3;
    (*(v9 + 8))(v8, v10);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_23106D3C0()
{
  v3 = v1[62];
  if (!v3)
  {
    sub_2311581C8();
    v21 = sub_231158238();
    v22 = sub_2311592C8();
    if (OUTLINED_FUNCTION_20_2(v22))
    {
      v23 = OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_65_0(v23);
      _os_log_impl(&dword_23103C000, v21, OS_LOG_TYPE_DEFAULT, "Failed to generate searchable item....skipping", v0, 2u);
      OUTLINED_FUNCTION_16();
    }

    v24 = v1[57];
    v10 = v1[58];
    v25 = v1[51];
    v26 = v1[47];

    v24(v25, v26);
    goto LABEL_24;
  }

  sub_2311581C8();
  v4 = v3;
  v5 = sub_231158238();
  v6 = sub_2311592C8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[57];
  v9 = v1[54];
  v2 = &selRef_setContentModificationDate_;
  v10 = v1[47];
  if (v7)
  {
    v93 = v1[57];
    v11 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_62_1();
    OUTLINED_FUNCTION_67_0();
    *v11 = 136315138;
    v12 = v4;
    v13 = OUTLINED_FUNCTION_71();
    sub_231158E58();
    v15 = v14;

    v16 = OUTLINED_FUNCTION_66_0();
    v2 = &selRef_setContentModificationDate_;
    v18 = sub_2310488F8(v16, v15, v17);

    *(v11 + 4) = v18;
    v4 = v12;
    OUTLINED_FUNCTION_69(&dword_23103C000, v19, v20, "Generated searchable item with identifier %s");
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();

    v93(v92, v10);
  }

  else
  {

    v8(v9, v10);
  }

  v27 = v1[38];
  if (v27)
  {
    v28 = OUTLINED_FUNCTION_71();
    v29 = sub_231158E58();
    v10 = v30;

    v31 = sub_23106EED8(v29, v10, v27);

    if (v31)
    {
      sub_2311581C8();
      v32 = v4;
      v33 = sub_231158238();
      v34 = sub_2311592C8();

      v35 = os_log_type_enabled(v33, v34);
      v10 = v1[57];
      v36 = v1[53];
      v37 = v1[47];
      if (v35)
      {
        OUTLINED_FUNCTION_45_1();
        OUTLINED_FUNCTION_67_0();
        v94 = v4;
        v38 = OUTLINED_FUNCTION_62_1();
        *v36 = 136315138;
        v39 = [v32 v2[403]];
        v2 = sub_231158E58();
        v91 = v10;
        v10 = v40;

        v41 = OUTLINED_FUNCTION_66_0();
        v43 = sub_2310488F8(v41, v10, v42);

        *(v36 + 4) = v43;
        OUTLINED_FUNCTION_68(&dword_23103C000, v44, v45, "Item identifier %s already exists in index, marking as update");
        __swift_destroy_boxed_opaque_existential_0(v38);
        v4 = v94;
        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_16();

        v91(v92, v37);
      }

      else
      {

        (v10)(v36, v37);
      }

      [v32 setIsUpdate_];
    }
  }

  v46 = v4;
  MEMORY[0x2319249F0]();
  if (*((v1[34] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[34] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_231158F98();
  }

  sub_231158FE8();
  v25 = v1[34];
  v1[63] = v25;
  if (!(v25 >> 62))
  {
    v47 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_18;
  }

  v47 = sub_2311594D8();
  if ((v47 & 0x8000000000000000) == 0)
  {
LABEL_18:
    if (v47 == v1[39])
    {
      sub_2311581C8();
      v48 = sub_231158238();
      sub_2311592C8();
      OUTLINED_FUNCTION_38_0();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = OUTLINED_FUNCTION_53();
        OUTLINED_FUNCTION_65_0(v50);
        OUTLINED_FUNCTION_48_1(&dword_23103C000, v51, v52, "Searchable items set at batch capacity, triggering index");
        OUTLINED_FUNCTION_16();
      }

      v53 = v1[57];
      v95 = v1[43];

      v54 = OUTLINED_FUNCTION_51_1();
      v53(v54);
      sub_23106F9C8();
      v55 = sub_231158F38();
      v1[64] = v55;
      v1[2] = v1;
      v1[3] = sub_23106DB78;
      v56 = swift_continuation_init();
      v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
      v1[18] = MEMORY[0x277D85DD0];
      v1[19] = 1107296256;
      v1[20] = sub_23106FF5C;
      v1[21] = &block_descriptor_4;
      v1[22] = v56;
      [v95 indexSearchableItems:v55 completionHandler:v1 + 18];
      goto LABEL_29;
    }
  }

  v1[59] = v25;
LABEL_24:
  if (v1[35] != sub_231158FF8())
  {
    v72 = OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_33_1(v72);
    if (v10)
    {
      v73 = OUTLINED_FUNCTION_9_4();
      v74(v73);
    }

    else
    {
      v70 = OUTLINED_FUNCTION_47_1();
      if (v25 != 8)
      {
        __break(1u);
        return MEMORY[0x282200938](v70);
      }

      v88 = OUTLINED_FUNCTION_14_3(v70);
      v89(v88);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_0_9();
    v75 = swift_task_alloc();
    v1[60] = v75;
    *v75 = v1;
    OUTLINED_FUNCTION_1_5(v75);
    OUTLINED_FUNCTION_23_0();

    __asm { BRAA            X1, X16 }
  }

  if (!sub_23106EEB4(v1[59]))
  {

    OUTLINED_FUNCTION_30_0();

    v78 = sub_231158238();
    v79 = sub_2311592B8();
    if (OUTLINED_FUNCTION_20_2(v79))
    {
      v80 = OUTLINED_FUNCTION_24_1();
      v81 = OUTLINED_FUNCTION_41_1(v80, 3.852e-34);
      OUTLINED_FUNCTION_61_1(v81);
      OUTLINED_FUNCTION_22_2(&dword_23103C000, v82, v83, "Done indexing %ld items");
      OUTLINED_FUNCTION_16();
    }

    else
    {
    }

    v84 = OUTLINED_FUNCTION_3_4();
    v85(v84);

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_23_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_57_0();
  v57 = sub_231158238();
  sub_2311592C8();
  OUTLINED_FUNCTION_38_0();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_56_0(v59);
    OUTLINED_FUNCTION_25_2(&dword_23103C000, v60, v61, "Finished generating searchable items, triggering final index");
    OUTLINED_FUNCTION_35_0();
  }

  OUTLINED_FUNCTION_21_3();
  v62 = OUTLINED_FUNCTION_51_1();
  (v2)(v62);
  sub_23106F9C8();
  v63 = sub_231158F38();
  OUTLINED_FUNCTION_59_1(v63);
  OUTLINED_FUNCTION_52_1();
  v1[10] = v64;
  OUTLINED_FUNCTION_10_4();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  OUTLINED_FUNCTION_6_5(v65);
  v1[27] = 1107296256;
  OUTLINED_FUNCTION_4_5();
  v66 = OUTLINED_FUNCTION_23_3();
  [v66 v67];
LABEL_29:
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x282200938](v70);
}

uint64_t sub_23106DB78()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 520) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23106DC80()
{
  OUTLINED_FUNCTION_6_2();
  v3 = *(v0 + 496);

  v4 = MEMORY[0x277D84F90];
  *(v0 + 272) = MEMORY[0x277D84F90];
  *(v0 + 472) = v4;
  if (*(v0 + 280) != sub_231158FF8())
  {
    v18 = OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_33_1(v18);
    if (v1)
    {
      v19 = OUTLINED_FUNCTION_9_4();
      v20(v19);
    }

    else
    {
      v16 = OUTLINED_FUNCTION_47_1();
      if (v3 != 8)
      {
        __break(1u);
        return MEMORY[0x282200938](v16);
      }

      v34 = OUTLINED_FUNCTION_14_3(v16);
      v35(v34);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_0_9();
    v21 = swift_task_alloc();
    *(v0 + 480) = v21;
    *v21 = v0;
    OUTLINED_FUNCTION_1_5(v21);
    OUTLINED_FUNCTION_39_1();

    __asm { BRAA            X1, X16 }
  }

  if (!sub_23106EEB4(*(v0 + 472)))
  {

    OUTLINED_FUNCTION_30_0();

    v24 = sub_231158238();
    v25 = sub_2311592B8();
    if (OUTLINED_FUNCTION_20_2(v25))
    {
      v26 = OUTLINED_FUNCTION_24_1();
      v27 = OUTLINED_FUNCTION_41_1(v26, 3.852e-34);
      OUTLINED_FUNCTION_61_1(v27);
      OUTLINED_FUNCTION_22_2(&dword_23103C000, v28, v29, "Done indexing %ld items");
      OUTLINED_FUNCTION_16();
    }

    else
    {
    }

    v30 = OUTLINED_FUNCTION_3_4();
    v31(v30);

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_39_1();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_57_0();
  v5 = sub_231158238();
  sub_2311592C8();
  OUTLINED_FUNCTION_38_0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_56_0(v7);
    OUTLINED_FUNCTION_25_2(&dword_23103C000, v8, v9, "Finished generating searchable items, triggering final index");
    OUTLINED_FUNCTION_35_0();
  }

  OUTLINED_FUNCTION_21_3();
  v10 = OUTLINED_FUNCTION_51_1();
  v2(v10);
  sub_23106F9C8();
  v11 = sub_231158F38();
  OUTLINED_FUNCTION_59_1(v11);
  OUTLINED_FUNCTION_52_1();
  *(v0 + 80) = v12;
  OUTLINED_FUNCTION_10_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  OUTLINED_FUNCTION_6_5(v13);
  *(v0 + 216) = 1107296256;
  OUTLINED_FUNCTION_4_5();
  v14 = OUTLINED_FUNCTION_23_3();
  [v14 v15];
  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x282200938](v16);
}

uint64_t sub_23106DF90()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 536) = *(v3 + 112);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23106E08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_28_0();

  OUTLINED_FUNCTION_30_0();

  v11 = sub_231158238();
  v12 = sub_2311592B8();
  if (OUTLINED_FUNCTION_20_2(v12))
  {
    v13 = OUTLINED_FUNCTION_24_1();
    v14 = OUTLINED_FUNCTION_41_1(v13, 3.852e-34);
    OUTLINED_FUNCTION_61_1(v14);
    OUTLINED_FUNCTION_22_2(&dword_23103C000, v15, v16, "Done indexing %ld items");
    OUTLINED_FUNCTION_16();
  }

  else
  {
  }

  v17 = OUTLINED_FUNCTION_3_4();
  v18(v17);

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_55_1();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_23106E198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_16_4();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_55_1();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_23106E23C()
{
  OUTLINED_FUNCTION_6_2();
  v1 = *(v0 + 512);
  v2 = *(v0 + 496);
  swift_willThrow();

  OUTLINED_FUNCTION_16_4();

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_23106E310()
{
  OUTLINED_FUNCTION_6_2();
  v1 = *(v0 + 528);
  swift_willThrow();

  OUTLINED_FUNCTION_16_4();

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_23106E3DC(void *a1, int a2, void *a3, uint64_t a4, void *a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = a1;
  v12 = a3;
  v13 = a5;
  v14 = a1;

  return sub_23106E59C(&unk_231162E60, v11);
}

uint64_t sub_23106E47C(uint64_t a1, int a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B8, &qword_231162E70);
  v5[4] = sub_231158F48();
  v5[5] = sub_231159178();
  a5;
  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = sub_23106FF54;

  return CSSearchableIndex.index(searchableItems:batchSize:updatedIdentifiers:)();
}

uint64_t sub_23106E59C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_231162E28;
  v9[5] = v8;
  sub_23106F554(0, 0, v6, &unk_231162E38, v9);
}

uint64_t CSSearchableIndex.index(searchableItems:updatedIdentifiers:)()
{
  OUTLINED_FUNCTION_4_1();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = sub_231158258();
  v1[21] = v4;
  v1[22] = *(v4 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23106E780()
{
  v59 = v0;
  v1 = *MEMORY[0x277D7A4C8];
  v0[26] = *MEMORY[0x277D7A4C8];
  sub_2311581C8();

  v2 = sub_231158238();
  v3 = sub_2311592C8();
  if (OUTLINED_FUNCTION_20_2(v3))
  {
    v4 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_13_5(v4, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v5, v6, "Starting indexing %ld items");
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
  }

  v7 = v0[25];
  v8 = v0[21];
  v9 = v0[22];
  v10 = v0[18];
  v11 = *(v9 + 8);
  v0[27] = v11;
  v0[28] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v54 = v11;
  v11(v7, v8);
  v12 = sub_23106EEB4(v10);
  v57 = v12;
  if (v12)
  {
    v13 = 0;
    v14 = v0[18];
    v15 = v0[19];
    v56 = v14 & 0xC000000000000001;
    v48 = v14 + 32;
    v49 = v14 & 0xFFFFFFFFFFFFFF8;
    v47 = v0;
    while (1)
    {
      if (v56)
      {
        v12 = MEMORY[0x231925080](v13, v0[18]);
      }

      else
      {
        if (v13 >= *(v49 + 16))
        {
          goto LABEL_29;
        }

        v12 = *(v48 + 8 * v13);
      }

      v16 = v12;
      if (__OFADD__(v13++, 1))
      {
        break;
      }

      v18 = [v12 uniqueIdentifier];
      v19 = sub_231158E58();
      v21 = v20;

      if (*(v15 + 16))
      {
        sub_231159918();
        sub_231158EA8();
        v22 = sub_231159948();
        v23 = ~(-1 << *(v15 + 32));
        while (1)
        {
          v24 = v22 & v23;
          if (((*(v15 + 56 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
          {
            break;
          }

          v25 = (*(v15 + 48) + 16 * v24);
          if (*v25 != v19 || v25[1] != v21)
          {
            v27 = sub_231159818();
            v22 = v24 + 1;
            if ((v27 & 1) == 0)
            {
              continue;
            }
          }

          sub_2311581C8();
          v28 = v16;
          v29 = sub_231158238();
          v30 = sub_2311592C8();

          v55 = v30;
          v31 = os_log_type_enabled(v29, v30);
          v32 = v0[24];
          v33 = v0[21];
          if (v31)
          {
            v52 = v0[24];
            v34 = OUTLINED_FUNCTION_45_1();
            v50 = OUTLINED_FUNCTION_62_1();
            v58[0] = v50;
            *v34 = 136315138;
            v53 = v28;
            v35 = [v28 uniqueIdentifier];
            v51 = v33;
            v36 = sub_231158E58();
            v37 = v1;
            v39 = v38;

            v40 = sub_2310488F8(v36, v39, v58);
            v1 = v37;
            v0 = v47;

            *(v34 + 4) = v40;
            v28 = v53;
            _os_log_impl(&dword_23103C000, v29, v55, "Item identifier %s already exists in index, marking as update", v34, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v50);
            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_35_0();

            v42 = v51;
            v41 = v52;
          }

          else
          {

            v41 = v32;
            v42 = v33;
          }

          v54(v41, v42);
          [v28 setIsUpdate_];
          goto LABEL_24;
        }
      }

LABEL_24:

      if (v13 == v57)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_25:
    v43 = v0[20];
    sub_23106F9C8();
    v44 = sub_231158F38();
    v0[29] = v44;
    v0[2] = v0;
    v0[3] = sub_23106EC20;
    v45 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_23106FF5C;
    v0[13] = &block_descriptor_10_0;
    v0[14] = v45;
    [v43 indexSearchableItems:v44 completionHandler:v0 + 10];
    v12 = v0 + 2;
  }

  return MEMORY[0x282200938](v12);
}

uint64_t sub_23106EC20()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = *(v3 + 48);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23106ED1C()
{
  OUTLINED_FUNCTION_21();

  sub_2311581C8();

  v1 = sub_231158238();
  v2 = sub_2311592B8();
  if (OUTLINED_FUNCTION_20_2(v2))
  {
    v3 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_13_5(v3, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v4, v5, "Done indexing %ld items");
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
  }

  (*(v0 + 216))(*(v0 + 184), *(v0 + 168));

  OUTLINED_FUNCTION_46_0();

  return v6();
}

uint64_t sub_23106EE24()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 232);
  swift_willThrow();

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_23106EEB4(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_2311594D8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

BOOL sub_23106EED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_231159918();
  sub_231158EA8();
  v6 = sub_231159948();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_231159818();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_23106EFC4(void *a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;
  v11 = a4;
  v12 = a1;

  return sub_23106E59C(&unk_231162E18, v9);
}

uint64_t sub_23106F05C(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  sub_23106F9C8();
  v4[4] = sub_231158F48();
  v4[5] = sub_231159178();
  a4;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_23106F15C;

  return CSSearchableIndex.index(searchableItems:updatedIdentifiers:)();
}

uint64_t sub_23106F15C()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  v6 = *(v3 + 16);
  v7 = *v1;
  *v5 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_231157928();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_23106F314(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;

    return sub_231060450();
  }

  else
  {

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_23106F384(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_23106044C;

  return v6();
}

uint64_t sub_23106F46C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_23105FDEC;

  return v7();
}

uint64_t sub_23106F554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_23106FC70(a3, v22 - v10);
  v12 = sub_2311590C8();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_23106FCE0(v11);
  }

  else
  {
    sub_2311590B8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_231159048();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_231158E88() + 32;
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

      sub_23106FCE0(a3);

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

  sub_23106FCE0(a3);
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

uint64_t sub_23106F7F0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23106F8E8;

  return v6(a1);
}

uint64_t sub_23106F8E8()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v2 = v1;

  OUTLINED_FUNCTION_46_0();

  return v3();
}

unint64_t sub_23106F9C8()
{
  result = qword_280CCAF38;
  if (!qword_280CCAF38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CCAF38);
  }

  return result;
}

uint64_t sub_23106FA14()
{
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v1[1] = sub_23106044C;
  v3 = OUTLINED_FUNCTION_36_1();

  return v4(v3);
}

uint64_t sub_23106FAC0()
{
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v1[1] = sub_23106044C;
  v3 = OUTLINED_FUNCTION_36_1();

  return v4(v3);
}

uint64_t objectdestroy_14Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23106FBAC()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_43_0(v6);
  *v7 = v8;
  v7[1] = sub_23105FDEC;

  return sub_23106F46C(v2, v3, v4, v5);
}

uint64_t sub_23106FC70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23106FCE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23106FD48()
{
  OUTLINED_FUNCTION_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_23106FDE0()
{
  OUTLINED_FUNCTION_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_23106FE78()
{
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v1[1] = sub_23106044C;
  v3 = OUTLINED_FUNCTION_36_1();

  return v4(v3);
}

void OUTLINED_FUNCTION_4_5()
{
  v1[28] = sub_23106FF5C;
  v1[29] = v0;
  v1[30] = v2;
}

void OUTLINED_FUNCTION_5_4(uint64_t a1@<X8>)
{
  v1[28] = sub_23106B754;
  v1[29] = a1;
  v1[30] = v2;
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t result)
{
  *(v1 + 264) = result;
  *(v1 + 208) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_7_5(uint64_t result)
{
  *(v1 + 264) = result;
  *(v1 + 208) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_10_4()
{
  *(v0 + 88) = sub_23106DF90;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_14_3(uint64_t a1)
{
  result = *(v1 + 368);
  *(v1 + 288) = a1;
  return result;
}

void OUTLINED_FUNCTION_17_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_20_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_21_3()
{
}

void OUTLINED_FUNCTION_22_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_24_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_25_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_27_2(uint64_t result)
{
  *(v1 + 392) = result;
  *(v1 + 336) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_28_2@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 24) = sub_23106BF40;

  return swift_continuation_init();
}

void OUTLINED_FUNCTION_29_2()
{

  JUMPOUT(0x2319267C0);
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return sub_2311581C8();
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return sub_2311581C8();
}

uint64_t OUTLINED_FUNCTION_33_1(char a1)
{

  return sub_231158F88();
}

void OUTLINED_FUNCTION_35_0()
{

  JUMPOUT(0x2319267C0);
}

uint64_t OUTLINED_FUNCTION_41_1(float *a1, float a2)
{
  *a1 = a2;

  return sub_231158FF8();
}

uint64_t OUTLINED_FUNCTION_45_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_46_1()
{

  return sub_231158FD8();
}

uint64_t OUTLINED_FUNCTION_47_1()
{

  return sub_2311595A8();
}

void OUTLINED_FUNCTION_48_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return sub_231159028();
}

void OUTLINED_FUNCTION_54_1()
{
}

uint64_t OUTLINED_FUNCTION_57_0()
{

  return sub_2311581C8();
}

uint64_t OUTLINED_FUNCTION_58_1()
{
}

uint64_t OUTLINED_FUNCTION_59_1(uint64_t a1)
{
  *(v1 + 528) = a1;
}

uint64_t OUTLINED_FUNCTION_60_0()
{

  return sub_2311581C8();
}

uint64_t OUTLINED_FUNCTION_61_1(uint64_t a1)
{
  *(v1 + 4) = a1;
}

uint64_t OUTLINED_FUNCTION_62_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_68(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_71()
{

  return [v0 (v1 + 2040)];
}

uint64_t WFContextualActionSpotlightSyncService.tasks.getter()
{
  OUTLINED_FUNCTION_9_0();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  OUTLINED_FUNCTION_26_1();
  v2 = swift_allocObject();
  *(v2 + 16) = 0x70757472617453;
  *(v2 + 24) = 0xE700000000000000;
  OUTLINED_FUNCTION_26_1();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_231072004;
  *(v3 + 24) = v2;
  OUTLINED_FUNCTION_26_1();
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_231162E98;
  *(v4 + 24) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C720, &unk_231162980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0xD00000000000002CLL;
  *(inited + 40) = 0x8000000231168B00;
  *(inited + 48) = sub_23107200C;
  *(inited + 56) = v3;
  *(inited + 64) = 0;
  *(inited + 72) = &unk_231162EA0;
  *(inited + 80) = v4;
  OUTLINED_FUNCTION_9_0();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  OUTLINED_FUNCTION_9_0();
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  OUTLINED_FUNCTION_26_1();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2310720A0;
  *(v8 + 24) = v6;
  OUTLINED_FUNCTION_26_1();
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_231162EB8;
  *(v9 + 24) = v7;
  v10 = v5;
  v111 = swift_initStackObject();
  *(v111 + 16) = xmmword_231161B80;
  *(v111 + 32) = 0xD00000000000003BLL;
  *(v111 + 40) = 0x8000000231168B30;
  *(v111 + 48) = sub_23107212C;
  *(v111 + 56) = v8;
  *(v111 + 64) = 1;
  *(v111 + 72) = &unk_231162EC0;
  *(v111 + 80) = v9;
  v11 = sub_231158E58();
  v13 = v12;
  OUTLINED_FUNCTION_9_0();
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  OUTLINED_FUNCTION_26_1();
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 24) = v13;
  OUTLINED_FUNCTION_26_1();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_231072328;
  *(v16 + 24) = v15;
  OUTLINED_FUNCTION_26_1();
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_231162ED0;
  *(v17 + 24) = v14;
  v121 = v10;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_231161B80;
  *(v18 + 32) = 0xD00000000000004ELL;
  *(v18 + 40) = 0x8000000231168B70;
  *(v18 + 48) = sub_231072330;
  *(v18 + 56) = v16;
  *(v18 + 64) = 0;
  *(v18 + 72) = &unk_231162ED8;
  *(v18 + 80) = v17;
  OUTLINED_FUNCTION_9_0();
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  OUTLINED_FUNCTION_26_1();
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_231162EE8;
  *(v20 + 24) = v19;
  v21 = v0;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_231161B80;
  *(v22 + 32) = 0xD00000000000003CLL;
  *(v22 + 40) = 0x8000000231168BC0;
  *(v22 + 48) = sub_2310DCDF8;
  *(v22 + 56) = 0;
  *(v22 + 64) = 1;
  *(v22 + 72) = &unk_231162EF0;
  *(v22 + 80) = v20;
  v23 = sub_231158E58();
  v25 = v24;
  OUTLINED_FUNCTION_9_0();
  v26 = swift_allocObject();
  *(v26 + 16) = v21;
  OUTLINED_FUNCTION_26_1();
  v27 = swift_allocObject();
  *(v27 + 16) = v23;
  *(v27 + 24) = v25;
  OUTLINED_FUNCTION_26_1();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_231072558;
  *(v28 + 24) = v27;
  OUTLINED_FUNCTION_26_1();
  v29 = swift_allocObject();
  *(v29 + 16) = &unk_231162F00;
  *(v29 + 24) = v26;
  v30 = v21;
  v31 = swift_initStackObject();
  OUTLINED_FUNCTION_6_6(v31, v32, v33, v34, v35, v36, v37, v38, v39, v107, v111, inited, v121, v40);
  v42[4] = v41 - 2;
  v42[5] = 0x8000000231168C00;
  v42[6] = sub_231072560;
  v42[7] = v28;
  v42[8] = 0;
  v42[9] = &unk_231165BE0;
  v42[10] = v29;
  v43 = sub_231158E58();
  v45 = v44;
  OUTLINED_FUNCTION_9_0();
  v46 = swift_allocObject();
  *(v46 + 16) = v30;
  OUTLINED_FUNCTION_26_1();
  v47 = swift_allocObject();
  *(v47 + 16) = v43;
  *(v47 + 24) = v45;
  OUTLINED_FUNCTION_26_1();
  v48 = swift_allocObject();
  *(v48 + 16) = sub_231072870;
  *(v48 + 24) = v47;
  OUTLINED_FUNCTION_26_1();
  v49 = swift_allocObject();
  *(v49 + 16) = &unk_231162F18;
  *(v49 + 24) = v46;
  v50 = swift_allocObject();
  OUTLINED_FUNCTION_6_6(v50, v51, v52, v53, v54, v55, v56, v57, v58, v108, v112, v117, v122, v59);
  v60[4] = v61;
  v60[5] = 0x8000000231168C40;
  v60[6] = sub_23107286C;
  v60[7] = v48;
  v60[8] = 0;
  v60[9] = &unk_231162F20;
  v60[10] = v49;
  v62 = v30;
  v63 = sub_231158E58();
  v65 = v64;
  OUTLINED_FUNCTION_9_0();
  v66 = swift_allocObject();
  *(v66 + 16) = v62;
  OUTLINED_FUNCTION_26_1();
  v67 = swift_allocObject();
  *(v67 + 16) = v63;
  *(v67 + 24) = v65;
  OUTLINED_FUNCTION_26_1();
  v68 = swift_allocObject();
  *(v68 + 16) = sub_231072870;
  *(v68 + 24) = v67;
  OUTLINED_FUNCTION_26_1();
  v69 = swift_allocObject();
  *(v69 + 16) = &unk_231162F30;
  *(v69 + 24) = v66;
  v70 = swift_allocObject();
  OUTLINED_FUNCTION_6_6(v70, v71, v72, v73, v74, v75, v76, v77, v78, 0x8000000231168C80, v113, v118, v123, v79);
  v81[4] = v80 + 6;
  v81[5] = v109;
  v81[6] = sub_23107286C;
  v81[7] = v68;
  v81[8] = 0;
  v81[9] = &unk_231162F38;
  v81[10] = v69;
  v82 = v62;
  v83 = sub_231158E58();
  v85 = v84;
  OUTLINED_FUNCTION_9_0();
  v86 = swift_allocObject();
  *(v86 + 16) = v82;
  OUTLINED_FUNCTION_26_1();
  v87 = swift_allocObject();
  *(v87 + 16) = v83;
  *(v87 + 24) = v85;
  OUTLINED_FUNCTION_26_1();
  v88 = swift_allocObject();
  *(v88 + 16) = sub_231072870;
  *(v88 + 24) = v87;
  OUTLINED_FUNCTION_26_1();
  v89 = swift_allocObject();
  *(v89 + 16) = &unk_231162F48;
  *(v89 + 24) = v86;
  v90 = swift_allocObject();
  OUTLINED_FUNCTION_6_6(v90, v91, v92, v93, v94, v95, v96, v97, v98, 0x8000000231168CD0, v114, v119, v124, v99);
  v101[4] = v100 | 2;
  v101[5] = v110;
  v101[6] = sub_23107286C;
  v101[7] = v88;
  v101[8] = 0;
  v101[9] = &unk_231162F50;
  v101[10] = v89;
  v102 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BED8, &unk_2311637D0);
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_231162E80;
  *(v103 + 32) = v120;
  *(v103 + 40) = v115;
  *(v103 + 48) = v18;
  *(v103 + 56) = v22;
  *(v103 + 64) = v31;
  *(v103 + 72) = v50;
  *(v103 + 80) = v70;
  *(v103 + 88) = v90;
  v104 = v102;
  v105 = static TaskBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_2310639FC();
  return v105;
}