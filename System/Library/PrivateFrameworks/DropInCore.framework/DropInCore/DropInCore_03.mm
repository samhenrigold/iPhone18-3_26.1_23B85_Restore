_BYTE *sub_249E33044(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Pseudonym.PseudonymError(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for Pseudonym.PseudonymError(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Pseudonym.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Pseudonym.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_249E333B0()
{
  result = qword_27EF23A00;
  if (!qword_27EF23A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A00);
  }

  return result;
}

unint64_t sub_249E3340C()
{
  result = qword_27EF23A08;
  if (!qword_27EF23A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A08);
  }

  return result;
}

unint64_t sub_249E33464()
{
  result = qword_27EF23A10;
  if (!qword_27EF23A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A10);
  }

  return result;
}

unint64_t sub_249E334BC()
{
  result = qword_27EF23A18;
  if (!qword_27EF23A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A18);
  }

  return result;
}

unint64_t sub_249E33514()
{
  result = qword_27EF23A20;
  if (!qword_27EF23A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A20);
  }

  return result;
}

unint64_t sub_249E3356C()
{
  result = qword_27EF23A28;
  if (!qword_27EF23A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A28);
  }

  return result;
}

unint64_t sub_249E335C4()
{
  result = qword_27EF23A30;
  if (!qword_27EF23A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A30);
  }

  return result;
}

unint64_t sub_249E3361C()
{
  result = qword_27EF23A38;
  if (!qword_27EF23A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A38);
  }

  return result;
}

unint64_t sub_249E33674()
{
  result = qword_27EF23A40;
  if (!qword_27EF23A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A40);
  }

  return result;
}

unint64_t sub_249E336CC()
{
  result = qword_27EF23A48;
  if (!qword_27EF23A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A48);
  }

  return result;
}

unint64_t sub_249E33724()
{
  result = qword_27EF23A50;
  if (!qword_27EF23A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_4(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_249E7B2C8();
}

uint64_t sub_249E33818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  else
  {
    return sub_249E7B318();
  }
}

uint64_t sub_249E33850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x24C204750](a2, a3);
  MEMORY[0x24C204750](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_249E338A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_249E7B408();
  sub_249E7AB18();
  return sub_249E7B438();
}

uint64_t sub_249E33914(uint64_t a1)
{
  sub_249E7B408();
  sub_249E7AB18();
  return sub_249E7B438();
}

uint64_t sub_249E33964()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84FA0];
  sub_249E7A6A8();
  *(v0 + OBJC_IVAR____TtC10DropInCore18TransactionManager_expirationTask) = 0;
  sub_249E7A508();
  return v0;
}

uint64_t sub_249E339F0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TransactionType(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40[-1] - v8;
  v10 = sub_249E7A5B8();
  OUTLINED_FUNCTION_3();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v40[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249E35688(a1, v9);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C8, &qword_249E7E008);
  if (__swift_getEnumTagSinglePayload(v9, 1, v16) == 1)
  {
    sub_249E3562C(v9);
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
    sub_249E34498(v15);
    (*(v12 + 8))(v15, v10);
  }

  sub_249E35688(a1, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v16) == 1)
  {
    v17 = 0xED00006576697463;
    v18 = 0x416E6F6973736553;
  }

  else
  {
    (*(v12 + 8))(v7, v10);
    v17 = 0xEB00000000796461;
    v18 = 0x65526E49706F7244;
  }

  OUTLINED_FUNCTION_8_1(v2 + 112, v43);
  v19 = *(v2 + 112);

  v20 = OUTLINED_FUNCTION_4_7();
  v22 = sub_249E33EC0(v20, v21, v19);

  if (v22)
  {

    v23 = sub_249E7A698();
    v24 = sub_249E7AE28();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_4();
      v26 = OUTLINED_FUNCTION_4_0();
      v41 = v26;
      *v25 = 136315138;
      v27 = OUTLINED_FUNCTION_4_7();
      v30 = sub_249E3A958(v27, v28, v29);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_249DEE000, v23, v24, "Transaction [%s] already started", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    else
    {
    }

    return (v22 & 1) == 0;
  }

  OUTLINED_FUNCTION_4_7();
  sub_249E7AAF8();
  v31 = os_transaction_create();

  if (v31)
  {
    swift_beginAccess();
    swift_unknownObjectRetain();

    sub_249E646A0(&v41, v31, v18, v17);
    swift_endAccess();
    swift_unknownObjectRelease();

    swift_unknownObjectRetain();

    v33 = sub_249E7A698();
    v34 = sub_249E7AE28();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_4();
      v36 = OUTLINED_FUNCTION_4_0();
      v40[0] = v36;
      *v35 = 136315138;
      v41 = 91;
      v42 = 0xE100000000000000;
      swift_unknownObjectRetain();

      v37 = OUTLINED_FUNCTION_4_7();
      MEMORY[0x24C204750](v37);
      MEMORY[0x24C204750](93, 0xE100000000000000);

      swift_unknownObjectRelease();
      v38 = sub_249E3A958(v41, v42, v40);

      *(v35 + 4) = v38;
      _os_log_impl(&dword_249DEE000, v33, v34, "Transaction %s started", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    sub_249E35064();

    swift_unknownObjectRelease();
    return (v22 & 1) == 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_249E33EC0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_9:
    v13 = *(a3 + 48) + 24 * (__clz(__rbit64(v10)) | (v6 << 6));
    if (*(v13 + 8) != v5 || *(v13 + 16) != a2)
    {
      v10 &= v10 - 1;
      result = sub_249E7B318();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    return 1;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      return 0;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_249E33FAC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TransactionType(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249E35688(a1, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C8, &qword_249E7E008);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    v8 = 0xED00006576697463;
    v9 = 0x416E6F6973736553;
  }

  else
  {
    sub_249E7A5B8();
    OUTLINED_FUNCTION_21();
    (*(v10 + 8))(v6);
    v8 = 0xEB00000000796461;
    v9 = 0x65526E49706F7244;
  }

  OUTLINED_FUNCTION_8_1(v2 + 112, v38);
  v11 = *(v2 + 112);

  v12 = sub_249E34370(v9, v8, v11);
  v14 = v13;
  v16 = v15;

  if (v12)
  {

    swift_unknownObjectRetain();

    v17 = sub_249E7A698();
    v18 = sub_249E7AE28();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_4();
      v20 = OUTLINED_FUNCTION_4_0();
      *v19 = 136315138;
      v35 = v20;
      v36 = 91;
      v37 = 0xE100000000000000;
      swift_unknownObjectRetain();

      v21 = OUTLINED_FUNCTION_4_7();
      MEMORY[0x24C204750](v21);
      MEMORY[0x24C204750](93, 0xE100000000000000);

      swift_unknownObjectRelease();
      v22 = sub_249E3A958(v36, v37, &v35);

      *(v19 + 4) = v22;
      _os_log_impl(&dword_249DEE000, v17, v18, "Transaction %s ended", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    swift_beginAccess();
    v23 = sub_249E68324(v12, v14, v16);
    v25 = v24;
    v27 = v26;
    swift_endAccess();
    sub_249E356EC(v23, v25, v27);
    sub_249E35064();

    swift_unknownObjectRelease();
  }

  else
  {

    v28 = sub_249E7A698();
    v29 = sub_249E7AE28();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_4();
      v31 = OUTLINED_FUNCTION_4_0();
      v36 = v31;
      *v30 = 136315138;
      v32 = sub_249E3A958(v9, v8, &v36);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_249DEE000, v28, v29, "Transaction [%s] already ended", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    else
    {
    }
  }

  return v12 != 0;
}

uint64_t sub_249E34370(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_9:
    v13 = (*(a3 + 48) + 24 * (__clz(__rbit64(v10)) | (v6 << 6)));
    v14 = *v13;
    if (v13[1] != v5 || v13[2] != a2)
    {
      v10 &= v10 - 1;
      result = sub_249E7B318();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    swift_unknownObjectRetain();

    return v14;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      return 0;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_249E34498(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v78 - v5;
  v7 = sub_249E7A5B8();
  OUTLINED_FUNCTION_3();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v78 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v78 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v78 - v20;
  sub_249E7A598();
  if (sub_249E7A558())
  {
    v82 = v6;
    v85 = v21;
    v22 = OBJC_IVAR____TtC10DropInCore18TransactionManager_scheduledExpirationDate;
    OUTLINED_FUNCTION_8_1(v2 + OBJC_IVAR____TtC10DropInCore18TransactionManager_scheduledExpirationDate, v87);
    v23 = *(v9 + 16);
    v24 = OUTLINED_FUNCTION_3_6();
    v23(v24);
    v25 = sub_249E7A548();
    v26 = *(v9 + 8);
    v83 = v9 + 8;
    v84 = v26;
    v26(v19, v7);
    if (v25)
    {
      v81 = v23;
      sub_249E7A568();
      v28 = v27;
      sub_249E7A568();
      v30 = v28 - v29;
      swift_beginAccess();
      (*(v9 + 24))(v2 + v22, a1, v7);
      swift_endAccess();

      v31 = sub_249E7A698();
      v32 = sub_249E7AE28();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v80 = OUTLINED_FUNCTION_4_0();
        v86[0] = v80;
        *v33 = 136315394;
        v34 = OUTLINED_FUNCTION_3_6();
        v81(v34);
        OUTLINED_FUNCTION_0_8();
        sub_249E35500(v35, v36, MEMORY[0x277CC95B8]);
        v37 = sub_249E7B2D8();
        v39 = v38;
        v84(v19, v7);
        v40 = sub_249E3A958(v37, v39, v86);

        *(v33 + 4) = v40;
        *(v33 + 12) = 2048;
        *(v33 + 14) = v30;
        _os_log_impl(&dword_249DEE000, v31, v32, "Scheduled Expiration Date Set to %s. Time Interval from now = %f", v33, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v80);
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_1();
      }

      v71 = OBJC_IVAR____TtC10DropInCore18TransactionManager_expirationTask;
      if (*(v2 + OBJC_IVAR____TtC10DropInCore18TransactionManager_expirationTask))
      {

        sub_249E7AC98();
      }

      v72 = sub_249E7AC78();
      v73 = v82;
      __swift_storeEnumTagSinglePayload(v82, 1, 1, v72);
      v74 = sub_249E35500(&unk_27EF23A70, type metadata accessor for TransactionManager, &unk_249E7F3E8);
      v75 = swift_allocObject();
      *(v75 + 16) = v2;
      *(v75 + 24) = v74;
      *(v75 + 32) = v30;
      *(v75 + 40) = v2;
      swift_retain_n();
      v76 = sub_249E5ED90(0, 0, v73, &unk_249E7F420, v75);
      v84(v85, v7);
      *(v2 + v71) = v76;
    }

    else
    {
      (v23)(v16, a1, v7);

      v53 = sub_249E7A698();
      v54 = sub_249E7AE28();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v81 = v23;
        LODWORD(v80) = v54;
        v56 = v55;
        v82 = swift_slowAlloc();
        v86[0] = v82;
        *v56 = 136315394;
        OUTLINED_FUNCTION_0_8();
        v78 = sub_249E35500(v57, v58, MEMORY[0x277CC95B8]);
        v79 = v53;
        v59 = sub_249E7B2D8();
        v61 = v60;
        v62 = v84;
        v84(v16, v7);
        v63 = sub_249E3A958(v59, v61, v86);

        *(v56 + 4) = v63;
        *(v56 + 12) = 2080;
        v64 = OUTLINED_FUNCTION_3_6();
        v81(v64);
        v65 = sub_249E7B2D8();
        v67 = v66;
        v62(v19, v7);
        v68 = sub_249E3A958(v65, v67, v86);

        *(v56 + 14) = v68;
        v69 = v79;
        _os_log_impl(&dword_249DEE000, v79, v80, "Requested Expiration Date %s is earlier than or equal to scheduled date %s", v56, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_1();

        return (v62)(v85, v7);
      }

      else
      {

        v77 = v84;
        v84(v16, v7);
        return v77(v85, v7);
      }
    }
  }

  else
  {
    (*(v9 + 16))(v13, a1, v7);
    v41 = sub_249E7A698();
    v42 = sub_249E7AE28();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_4();
      v44 = OUTLINED_FUNCTION_4_0();
      v87[0] = v44;
      *v43 = 136315138;
      OUTLINED_FUNCTION_0_8();
      sub_249E35500(v45, v46, MEMORY[0x277CC95B8]);
      v47 = sub_249E7B2D8();
      v49 = v48;
      v85 = v21;
      v50 = *(v9 + 8);
      v50(v13, v7);
      v51 = sub_249E3A958(v47, v49, v87);

      *(v43 + 4) = v51;
      _os_log_impl(&dword_249DEE000, v41, v42, "Requested Expiration Date is in the past %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();

      return (v50)(v85, v7);
    }

    else
    {

      v70 = *(v9 + 8);
      v70(v13, v7);
      return (v70)(v21, v7);
    }
  }
}

uint64_t sub_249E34CB8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  type metadata accessor for TransactionType(0);
  *(v5 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E34D50, a5, 0);
}

uint64_t sub_249E34D50()
{
  v1 = sub_249E62184(*(v0 + 16));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_249E34DF0;

  return MEMORY[0x282200480](v1);
}

uint64_t sub_249E34DF0()
{
  v2 = *v1;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = sub_249E357F4;
  }

  else
  {
    v4 = sub_249E34F28;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_249E34F28()
{
  if ((sub_249E7ACB8() & 1) == 0)
  {
    v1 = sub_249E7A698();
    v2 = sub_249E7AE28();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_249DEE000, v1, v2, "Scheduled Transaction Expiration Task Fired", v3, 2u);
      OUTLINED_FUNCTION_1();
    }

    v5 = v0[3];
    v4 = v0[4];

    *(v5 + OBJC_IVAR____TtC10DropInCore18TransactionManager_expirationTask) = 0;

    sub_249E7A598();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C8, &qword_249E7E008);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
    sub_249E33FAC(v4);
    sub_249E3562C(v4);
  }

  v7 = v0[1];

  return v7();
}

void sub_249E35064()
{
  v1 = v0;

  oslog = sub_249E7A698();
  v2 = sub_249E7AE28();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = OUTLINED_FUNCTION_4();
    v4 = OUTLINED_FUNCTION_4_0();
    v11 = v4;
    *v3 = 136315138;
    OUTLINED_FUNCTION_8_1(v1 + 112, v10);
    sub_249E354AC();

    v5 = sub_249E7AD68();
    v7 = v6;

    v8 = sub_249E3A958(v5, v7, &v11);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_249DEE000, oslog, v2, "Active Transactions = %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  else
  {
  }
}

uint64_t sub_249E351C8()
{

  v1 = OBJC_IVAR____TtC10DropInCore18TransactionManager_logger;
  sub_249E7A6B8();
  OUTLINED_FUNCTION_21();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC10DropInCore18TransactionManager_scheduledExpirationDate;
  sub_249E7A5B8();
  OUTLINED_FUNCTION_21();
  (*(v4 + 8))(v0 + v3);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_249E35270()
{
  sub_249E351C8();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_249E352C4(uint64_t a1)
{
  result = sub_249E7A6B8();
  if (v2 <= 0x3F)
  {
    result = sub_249E7A5B8();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_249E353C4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_249E35404(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_249E35458()
{
  result = qword_27EF23A60;
  if (!qword_27EF23A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A60);
  }

  return result;
}

unint64_t sub_249E354AC()
{
  result = qword_27EF23A68;
  if (!qword_27EF23A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23A68);
  }

  return result;
}

uint64_t sub_249E35500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_249E35548(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_249E3046C;

  return sub_249E34CB8(v6, a1, v4, v5, v7);
}

uint64_t sub_249E3562C(uint64_t a1)
{
  v2 = type metadata accessor for TransactionType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249E35688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E356EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_249E35754(uint64_t a1)
{
  sub_249E357AC();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_249E357AC()
{
  if (!qword_27EF23A90)
  {
    v0 = sub_249E7A5B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF23A90);
    }
  }
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_249E35844(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_249E7A6B8();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_249E35940(uint64_t a1)
{
  v2 = v1;
  v4 = sub_249E7A5B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA0, &unk_249E7F508);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - v10;
  v19 = a1;
  swift_beginAccess();
  v17[3] = sub_249E36508(sub_249E3B004, v18, *(v1 + 120));
  v12 = sub_249E3B024(sub_249E3B004, v18);
  v13 = *(*(v1 + 120) + 16);
  if (v13 < v12)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    sub_249E3B54C(v12, v13);
    swift_endAccess();
    v14 = sub_249E7A628();
    (*(*(v14 - 8) + 16))(v11, a1, v14);
    sub_249E7A598();
    sub_249E7A528();
    (*(v5 + 8))(v7, v4);
    swift_beginAccess();
    sub_249E3A140();
    v15 = *(*(v1 + 120) + 16);
    sub_249E3A264(v15);
    v16 = *(v1 + 120);
    *(v16 + 16) = v15 + 1;
    sub_249E3B698(v11, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15);
    *(v2 + 120) = v16;
    swift_endAccess();
    sub_249E2A8CC(v11, &qword_27EF23AA0, &unk_249E7F508);
    sub_249E35E94();
  }
}

uint64_t sub_249E35C20(uint64_t a1, uint64_t a2)
{
  sub_249E7A628();
  sub_249E3B95C(&qword_27EF23760, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  return sub_249E7AA78() & 1;
}

char *sub_249E35CB0()
{
  v1 = sub_249E7A5B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_249E7A598();
  v8 = v4;
  swift_beginAccess();
  result = sub_249E3B024(sub_249E3B884, v7);
  v6 = *(*(v0 + 120) + 16);
  if (v6 < result)
  {
    __break(1u);
  }

  else
  {
    sub_249E3B54C(result, v6);
    swift_endAccess();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

BOOL sub_249E35DE0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA0, &unk_249E7F508);
  sub_249E7A5B8();
  sub_249E3B95C(&qword_27EF23AB8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  return (sub_249E7AA68() & 1) == 0;
}

uint64_t sub_249E35E94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA8, &qword_249E7F518);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_249E7A5B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v11);
  v30 = &v26 - v14;
  if (*(v0 + 128))
  {

    sub_249E7AC98();
  }

  swift_beginAccess();
  sub_249E36230(*(v0 + 120), v6);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA0, &unk_249E7F508);
  if (__swift_getEnumTagSinglePayload(v6, 1, v15) == 1)
  {
    return sub_249E2A8CC(v6, &qword_27EF23AA8, &qword_249E7F518);
  }

  v17 = *(v15 + 36);
  v27 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v3;
  v26 = *(v8 + 16);
  v26(v13, &v6[v17], v7);
  sub_249E2A8CC(v6, &qword_27EF23AA0, &unk_249E7F508);
  v18 = v30;
  v28 = *(v8 + 32);
  v28(v30, v13, v7);
  v19 = sub_249E7AC78();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v19);
  v20 = v27;
  v26(v27, v18, v7);
  v21 = sub_249E3B708();
  v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v0;
  *(v24 + 24) = v21;
  v28((v24 + v22), v20, v7);
  *(v24 + v23) = v0;
  swift_retain_n();
  v25 = sub_249E5ED90(0, 0, v29, &unk_249E7F530, v24);
  (*(v8 + 8))(v30, v7);
  *(v0 + 128) = v25;
}

uint64_t sub_249E36230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA0, &unk_249E7F508);
  v6 = v5;
  if (v4)
  {
    sub_249E3B698(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_249E362E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_249E36378;

  return sub_249E2D0E8();
}

uint64_t sub_249E36378()
{
  OUTLINED_FUNCTION_23();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v4 = v3;

  v5 = *(v2 + 16);
  if (v0)
  {

    v6 = sub_249E3BBA0;
  }

  else
  {
    v6 = sub_249E364A4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_249E364A4()
{
  OUTLINED_FUNCTION_11();
  if ((sub_249E7ACB8() & 1) == 0)
  {
    sub_249E35CB0();
    sub_249E35E94();
  }

  OUTLINED_FUNCTION_9_0();

  return v0();
}

BOOL sub_249E36508(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA0, &unk_249E7F508) - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

BOOL sub_249E365F8(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

    v8 = (a1)(v11);
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

uint64_t *sub_249E366A8()
{
  v1 = *v0;

  OUTLINED_FUNCTION_10_1();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(v2 + 112));
  OUTLINED_FUNCTION_10_1();
  v4 = *(v3 + 120);
  sub_249E7A6B8();
  OUTLINED_FUNCTION_28_0();
  (*(v5 + 8))(v0 + v4);
  OUTLINED_FUNCTION_10_1();

  OUTLINED_FUNCTION_10_1();

  OUTLINED_FUNCTION_10_1();

  return v0;
}

uint64_t sub_249E367B4()
{
  sub_249E366A8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_249E36824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *v5;
  v6[9] = type metadata accessor for MessageContainer(0);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E368F4, 0, 0);
}

uint64_t sub_249E368F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_169();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  OUTLINED_FUNCTION_10_1();
  v24[12] = *(v27 + 120);

  v28 = sub_249E7A698();
  v29 = sub_249E7AE28();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_4();
    a12 = OUTLINED_FUNCTION_4_0();
    *v30 = 136315138;
    v31 = sub_249E7A9E8();
    v33 = sub_249E3A958(v31, v32, &a12);

    *(v30 + 4) = v33;
    OUTLINED_FUNCTION_18_1(&dword_249DEE000, v34, v35, "Validating Message: %s");
    OUTLINED_FUNCTION_12_2();
    OUTLINED_FUNCTION_1();
  }

  v36 = v24[11];

  sub_249E55A40(v37, v36);
  v51 = v24[6];
  v50 = v24[5];
  OUTLINED_FUNCTION_10_1();
  v39 = *(v38 + 88);
  v24[13] = v39;
  v40 = *(v39 + 72);
  v41 = *(v38 + 80);
  v24[14] = v41;

  v40(v42, v50, v51, v41, v39);
  v43 = v24[7];

  OUTLINED_FUNCTION_10_1();
  v24[15] = *(v43 + *(v44 + 128));

  OUTLINED_FUNCTION_122();

  return MEMORY[0x2822009F8](v45, v46, v47);
}

uint64_t sub_249E36B4C()
{
  OUTLINED_FUNCTION_11();
  sub_249E35940(*(v0 + 88));
  *(v0 + 128) = v1 & 1;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_249E36BC0()
{
  v19 = v0;
  if (*(v0 + 128) == 1)
  {
    sub_249E3AFA0(*(v0 + 88), *(v0 + 16));

    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    sub_249E3AF3C(*(v0 + 88), *(v0 + 80));
    v3 = sub_249E7A698();
    v4 = sub_249E7AE28();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 80);
    if (v5)
    {
      OUTLINED_FUNCTION_4();
      v18 = OUTLINED_FUNCTION_21_1();
      *v1 = 136315138;
      sub_249E7A628();
      sub_249E3B95C(&qword_28130D350, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v7 = sub_249E7B2D8();
      v9 = v8;
      sub_249E3AA18(v6);
      v10 = sub_249E3A958(v7, v9, &v18);

      *(v1 + 4) = v10;
      _os_log_impl(&dword_249DEE000, v3, v4, "Already handled message with identifier = %s", v1, 0xCu);
      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_15_1();
    }

    else
    {

      sub_249E3AA18(v6);
    }

    v12 = *(v0 + 88);
    v13 = *(v0 + 24);
    type metadata accessor for MessageCenter.MessageCenterError(0, *(v0 + 112), *(v0 + 104), v11);
    OUTLINED_FUNCTION_2_10();
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_91(WitnessTable);
    *v15 = 6;
    swift_willThrow();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_28_0();
    (*(v16 + 8))(v13);
    sub_249E3AA18(v12);

    OUTLINED_FUNCTION_9_0();
  }

  return v2();
}

uint64_t sub_249E36E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[34] = a3;
  v4[35] = v3;
  v4[32] = a1;
  v4[33] = a2;
  v5 = *v3;
  v4[36] = type metadata accessor for MessageContainer(255);
  v4[37] = *(v5 + 88);
  v4[38] = *(v5 + 80);
  v4[39] = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4[40] = TupleTypeMetadata2;
  v4[41] = *(TupleTypeMetadata2 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E36F74, 0, 0);
}

uint64_t sub_249E36F74()
{
  OUTLINED_FUNCTION_17();
  v20 = v0;
  OUTLINED_FUNCTION_10_1();
  *(v0 + 360) = *(v1 + 120);

  v2 = sub_249E7A698();
  v3 = sub_249E7AE28();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_4();
    v19 = OUTLINED_FUNCTION_4_0();
    *v4 = 136315138;
    v5 = sub_249E7A9E8();
    v7 = sub_249E3A958(v5, v6, &v19);

    *(v4 + 4) = v7;
    OUTLINED_FUNCTION_18_1(&dword_249DEE000, v8, v9, "Handling Event %s");
    OUTLINED_FUNCTION_12_2();
    OUTLINED_FUNCTION_1();
  }

  v10 = *(v0 + 352);
  v11 = *(*(v0 + 320) + 48);
  *(v0 + 440) = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v0 + 368) = v12;
  *v12 = v13;
  v12[1] = sub_249E3710C;
  v14 = *(v0 + 352);
  v15 = *(v0 + 272);
  v16 = *(v0 + 256);
  v17 = *(v0 + 264);

  return sub_249E36824(v14, v10 + v11, v16, v17, v15);
}

uint64_t sub_249E3710C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;
  *(v6 + 376) = v0;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E37208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_169();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = *(v24 + 344);
  v28 = *(v24 + 320);
  v29 = *(v24 + 288);
  v30 = *(*(v24 + 328) + 16);
  v30(v27, *(v24 + 352), v28);
  v31 = *(v28 + 48);
  v32 = (v27 + *(v29 + 20));
  v34 = *v32;
  v33 = v32[1];

  sub_249E3AA18(v27);
  *(v24 + 216) = v34;
  v35 = v24 + 216;
  *(v24 + 224) = v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF23718, &qword_249E7E080);
  swift_getFunctionTypeMetadata2();
  sub_249E7AA38();

  v37 = *(v24 + 200);
  v36 = *(v24 + 208);
  *(v24 + 384) = v37;
  *(v24 + 392) = v36;
  if (v37)
  {
    v98 = *(v24 + 440);
    v38 = *(v24 + 352);
    v39 = *(v24 + 336);
    v40 = *(v24 + 320);
    v41 = *(v24 + 288);
    OUTLINED_FUNCTION_8_2();
    v43 = *(v42 + 8);
    *(v24 + 400) = v43;
    *(v24 + 408) = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v43(v27 + v44);
    v30(v39, v38, v40);
    *(v24 + 444) = *(v40 + 48);
    v45 = *(v39 + *(v41 + 24));
    *(v24 + 416) = v45;

    sub_249E3AA18(v39);
    *(v24 + 248) = v45;
    OUTLINED_FUNCTION_3_7();
    v97 = v46;
    v47 = swift_task_alloc();
    *(v24 + 424) = v47;
    *v47 = v24;
    v47[1] = sub_249E377E0;
    OUTLINED_FUNCTION_122();

    return v48(v48, v49, v50, v51, v52, v53, v54, v55, a9, v97, v98, a12, a13, a14, a15, a16);
  }

  else
  {
    v57 = *(v24 + 352);
    v58 = *(v24 + 320);
    v59 = *(v24 + 328);
    v60 = *(v24 + 304);
    v61 = *(v24 + 296);
    OUTLINED_FUNCTION_8_2();
    (*(v62 + 8))(v27 + v31);
    type metadata accessor for MessageCenter.MessageCenterError(0, v60, v61, v63);
    OUTLINED_FUNCTION_2_10();
    WitnessTable = swift_getWitnessTable();
    v65 = OUTLINED_FUNCTION_91(WitnessTable);
    *v66 = 4;
    swift_willThrow();
    (*(v59 + 8))(v57, v58);
    *(v24 + 232) = v65;
    v67 = v65;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23720, &qword_249E7E090);
    v69 = swift_dynamicCast();
    v70 = *(v24 + 360);
    v71 = *(v24 + 280);
    if (v69 && *(v24 + 448) == 6)
    {

      v72 = sub_249E7A698();
      v73 = sub_249E7AE28();

      if (os_log_type_enabled(v72, v73))
      {
        OUTLINED_FUNCTION_4();
        v74 = OUTLINED_FUNCTION_21_1();
        a12 = v74;
        *v65 = 136315138;
        v75 = sub_249E7A9E8();
        v77 = sub_249E3A958(v75, v76, &a12);

        *(v65 + 1) = v77;
        OUTLINED_FUNCTION_19_1(&dword_249DEE000, v78, v79, "Event already handled. Event = %s");
        __swift_destroy_boxed_opaque_existential_0(v74);
        OUTLINED_FUNCTION_11_2();
        OUTLINED_FUNCTION_15_1();
      }
    }

    else
    {
      OUTLINED_FUNCTION_34_1();
      sub_249E3B9A4(v68, v24 + 16);

      v80 = v65;
      v81 = v71 + v70;
      v82 = sub_249E7A698();
      v83 = sub_249E7AE08();

      if (os_log_type_enabled(v82, v83))
      {
        a10 = v24 + 176;
        a11 = *(v24 + 256);
        OUTLINED_FUNCTION_4_0();
        a12 = OUTLINED_FUNCTION_35_0();
        OUTLINED_FUNCTION_33_0(4.8152e-34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23CE0, &unk_249E7F4F0);
        sub_249E7AAC8();
        OUTLINED_FUNCTION_32_1();
        v84 = sub_249E3A958(v24 + 56, v81, &a12);

        OUTLINED_FUNCTION_26_0();
        swift_getErrorValue();
        v85 = sub_249E7B3A8();
        sub_249E3A958(v85, v86, &a12);
        OUTLINED_FUNCTION_280();

        *(v61 + 14) = v35;
        *(v61 + 22) = v84;
        v87 = sub_249E7A9E8();
        sub_249E3A958(v87, v88, &a12);
        OUTLINED_FUNCTION_280();

        *(v61 + 24) = v35;
        _os_log_impl(&dword_249DEE000, v82, v83, "Failed to handle Event. Transport = %s, Error = %s, Event = %s", v61, 0x20u);
        OUTLINED_FUNCTION_31_1();
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_11_2();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0((v24 + 16));
      }
    }

    OUTLINED_FUNCTION_44_1();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_122();

    return v90(v89, v90, v91, v92, v93, v94, v95, v96, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_249E377E0()
{
  OUTLINED_FUNCTION_82();
  v2 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 432) = v0;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 444);
    v5 = *(v2 + 400);
    v6 = *(v2 + 336);
    v7 = *(v2 + 312);

    v5(v6 + v4, v7);
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_249E3792C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  sub_249E3B9A4(v22[34], (v22 + 12));
  v25 = sub_249E7A698();
  v26 = sub_249E7AE28();
  if (os_log_type_enabled(v25, v26))
  {
    v28 = v22[48];
    v27 = v22[49];
    v29 = v22[41];
    a9 = v22[40];
    a10 = v22[44];
    v30 = OUTLINED_FUNCTION_4();
    v31 = OUTLINED_FUNCTION_4_0();
    a11 = v31;
    *v30 = 136315138;
    sub_249E3B9A4((v22 + 12), (v22 + 17));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23CE0, &unk_249E7F4F0);
    v32 = sub_249E7AAC8();
    v34 = v33;
    __swift_destroy_boxed_opaque_existential_0(v22 + 12);
    v35 = sub_249E3A958(v32, v34, &a11);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_249DEE000, v25, v26, "Handled Event received on transport %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
    sub_249DF2D58(v28, v27);

    (*(v29 + 8))(a10, a9);
  }

  else
  {
    v36 = v22[44];
    v37 = v22[40];
    v38 = v22[41];
    sub_249DF2D58(v22[48], v22[49]);

    __swift_destroy_boxed_opaque_existential_0(v22 + 12);
    (*(v38 + 8))(v36, v37);
  }

  OUTLINED_FUNCTION_44_1();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_72();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E37AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v25 = *(v22 + 444);
  v26 = *(v22 + 400);
  v27 = *(v22 + 352);
  v29 = *(v22 + 328);
  v28 = *(v22 + 336);
  v31 = *(v22 + 312);
  v30 = *(v22 + 320);
  sub_249DF2D58(*(v22 + 384), *(v22 + 392));
  (*(v29 + 8))(v27, v30);
  (v26)(v28 + v25, v31);
  v32 = *(v22 + 432);
  *(v22 + 232) = v32;
  v33 = (v22 + 232);
  v34 = v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23720, &qword_249E7E090);
  v37 = OUTLINED_FUNCTION_30_1(v36);
  v38 = *(v22 + 360);
  v39 = *(v22 + 280);
  if (v37 && *(v22 + 448) == 6)
  {
    v40 = *(v22 + 256);

    v41 = sub_249E7A698();
    v42 = sub_249E7AE28();

    if (os_log_type_enabled(v41, v42))
    {
      OUTLINED_FUNCTION_4();
      v43 = OUTLINED_FUNCTION_21_1();
      a11 = v43;
      *v40 = 136315138;
      v44 = sub_249E7A9E8();
      v46 = sub_249E3A958(v44, v45, &a11);

      *(v40 + 4) = v46;
      OUTLINED_FUNCTION_19_1(&dword_249DEE000, v47, v48, "Event already handled. Event = %s");
      __swift_destroy_boxed_opaque_existential_0(v43);
      OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_15_1();
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_1();
    sub_249E3B9A4(v35, v22 + 16);

    v49 = v32;
    v50 = v39 + v38;
    v51 = sub_249E7A698();
    v52 = sub_249E7AE08();

    if (os_log_type_enabled(v51, v52))
    {
      a9 = v22 + 176;
      a10 = *(v22 + 256);
      OUTLINED_FUNCTION_4_0();
      a11 = OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_33_0(4.8152e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23CE0, &unk_249E7F4F0);
      sub_249E7AAC8();
      OUTLINED_FUNCTION_32_1();
      v53 = sub_249E3A958(v22 + 56, v50, &a11);

      OUTLINED_FUNCTION_26_0();
      swift_getErrorValue();
      v54 = sub_249E7B3A8();
      OUTLINED_FUNCTION_45_1(v54, v55, v56, v57, v58, v59);
      OUTLINED_FUNCTION_280();

      *(v26 + 14) = v33;
      *(v26 + 22) = v53;
      v60 = sub_249E7A9E8();
      OUTLINED_FUNCTION_45_1(v60, v61, v62, v63, v64, v65);
      OUTLINED_FUNCTION_280();

      *(v26 + 24) = v33;
      OUTLINED_FUNCTION_43_1(&dword_249DEE000, v66, v67, "Failed to handle Event. Transport = %s, Error = %s, Event = %s");
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_11_2();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v22 + 16));
    }
  }

  OUTLINED_FUNCTION_44_1();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_72();

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E37E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v26 = *(v22 + 376);
  *(v22 + 232) = v26;
  v27 = (v22 + 232);
  v28 = v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23720, &qword_249E7E090);
  v31 = OUTLINED_FUNCTION_30_1(v30);
  v32 = *(v22 + 360);
  v33 = *(v22 + 280);
  if (v31)
  {
    v34 = *(v22 + 448) == 6;
  }

  else
  {
    v34 = 0;
  }

  if (v34)
  {
    v54 = *(v22 + 256);

    v55 = sub_249E7A698();
    v56 = sub_249E7AE28();

    if (os_log_type_enabled(v55, v56))
    {
      OUTLINED_FUNCTION_4();
      v57 = OUTLINED_FUNCTION_21_1();
      a11 = v57;
      *v54 = 136315138;
      v58 = sub_249E7A9E8();
      v60 = sub_249E3A958(v58, v59, &a11);

      *(v54 + 4) = v60;
      OUTLINED_FUNCTION_19_1(&dword_249DEE000, v61, v62, "Event already handled. Event = %s");
      __swift_destroy_boxed_opaque_existential_0(v57);
      OUTLINED_FUNCTION_11_2();
      OUTLINED_FUNCTION_15_1();
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_1();
    sub_249E3B9A4(v29, v22 + 16);

    v35 = v26;
    v36 = v33 + v32;
    v37 = sub_249E7A698();
    v38 = sub_249E7AE08();

    if (os_log_type_enabled(v37, v38))
    {
      a9 = v22 + 176;
      a10 = *(v22 + 256);
      OUTLINED_FUNCTION_4_0();
      a11 = OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_33_0(4.8152e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23CE0, &unk_249E7F4F0);
      sub_249E7AAC8();
      OUTLINED_FUNCTION_32_1();
      v39 = sub_249E3A958(v22 + 56, v36, &a11);

      OUTLINED_FUNCTION_26_0();
      swift_getErrorValue();
      v40 = sub_249E7B3A8();
      OUTLINED_FUNCTION_45_1(v40, v41, v42, v43, v44, v45);
      OUTLINED_FUNCTION_280();

      *(v23 + 14) = v27;
      *(v23 + 22) = v39;
      v46 = sub_249E7A9E8();
      OUTLINED_FUNCTION_45_1(v46, v47, v48, v49, v50, v51);
      OUTLINED_FUNCTION_280();

      *(v23 + 24) = v27;
      OUTLINED_FUNCTION_43_1(&dword_249DEE000, v52, v53, "Failed to handle Event. Transport = %s, Error = %s, Event = %s");
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_11_2();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v22 + 16));
    }
  }

  OUTLINED_FUNCTION_44_1();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_72();

  return v64(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E38150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v6 = *v4;
  v5[32] = type metadata accessor for MessageContainer(255);
  v5[33] = *(v6 + 88);
  v5[34] = *(v6 + 80);
  v5[35] = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5[36] = TupleTypeMetadata2;
  v5[37] = *(TupleTypeMetadata2 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E382AC, 0, 0);
}

uint64_t sub_249E382AC()
{
  OUTLINED_FUNCTION_17();
  v20 = v0;
  OUTLINED_FUNCTION_10_1();
  *(v0 + 328) = *(v1 + 120);

  v2 = sub_249E7A698();
  v3 = sub_249E7AE28();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_4();
    v19 = OUTLINED_FUNCTION_4_0();
    *v4 = 136315138;
    v5 = sub_249E7A9E8();
    v7 = sub_249E3A958(v5, v6, &v19);

    *(v4 + 4) = v7;
    OUTLINED_FUNCTION_18_1(&dword_249DEE000, v8, v9, "Handling Request %s");
    OUTLINED_FUNCTION_12_2();
    OUTLINED_FUNCTION_1();
  }

  v10 = *(v0 + 320);
  v11 = *(*(v0 + 288) + 48);
  *(v0 + 408) = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v0 + 336) = v12;
  *v12 = v13;
  v12[1] = sub_249E38444;
  v14 = *(v0 + 320);
  v15 = *(v0 + 240);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);

  return sub_249E36824(v14, v10 + v11, v16, v17, v15);
}

uint64_t sub_249E38444()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E38540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 312);
  v16 = *(v14 + 288);
  v17 = *(v14 + 256);
  v18 = *(*(v14 + 296) + 16);
  v18(v15, *(v14 + 320), v16);
  v60 = *(v16 + 48);
  v19 = (v15 + *(v17 + 20));
  v21 = *v19;
  v20 = v19[1];

  sub_249E3AA18(v15);
  *(v14 + 192) = v21;
  *(v14 + 200) = v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF23AC8, &qword_249E7F558);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF23718, &qword_249E7E080);
  swift_getFunctionTypeMetadata2();
  sub_249E7AA38();

  v23 = *(v14 + 176);
  v22 = *(v14 + 184);
  *(v14 + 352) = v23;
  *(v14 + 360) = v22;
  if (v23)
  {
    v59 = *(v14 + 408);
    v24 = *(v14 + 320);
    v25 = *(v14 + 304);
    v26 = *(v14 + 288);
    v27 = *(v14 + 256);
    OUTLINED_FUNCTION_8_2();
    v29 = *(v28 + 8);
    *(v14 + 368) = v29;
    *(v14 + 376) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v15 + v60);
    v18(v25, v24, v26);
    *(v14 + 412) = *(v26 + 48);
    v30 = *(v25 + *(v27 + 24));
    *(v14 + 384) = v30;

    sub_249E3AA18(v25);
    *(v14 + 208) = v30;
    OUTLINED_FUNCTION_3_7();
    v61 = v31;
    swift_task_alloc();
    OUTLINED_FUNCTION_75();
    *(v14 + 392) = v32;
    *v32 = v33;
    v32[1] = sub_249E38878;
    OUTLINED_FUNCTION_72();

    return v37(v34, v35, v36, v37, v38, v39, v40, v41, v59, v61, a11, a12, a13, a14);
  }

  else
  {
    v43 = *(v14 + 320);
    v44 = *(v14 + 288);
    v45 = *(v14 + 296);
    v46 = *(v14 + 272);
    v47 = *(v14 + 264);
    OUTLINED_FUNCTION_8_2();
    (*(v48 + 8))(v15 + v60);
    type metadata accessor for MessageCenter.MessageCenterError(0, v46, v47, v49);
    OUTLINED_FUNCTION_2_10();
    swift_getWitnessTable();
    swift_allocError();
    *v50 = 4;
    swift_willThrow();
    (*(v45 + 8))(v43, v44);

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, v60, a11, a12, a13, a14);
  }
}

uint64_t sub_249E38878()
{
  OUTLINED_FUNCTION_82();
  v2 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 400) = v0;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 412);
    v5 = *(v2 + 368);
    v6 = *(v2 + 304);
    v7 = *(v2 + 280);

    v5(v6 + v4, v7);
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_249E389C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_169();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  sub_249E3B9A4(v24[30], (v24 + 7));
  v27 = sub_249E7A698();
  v28 = sub_249E7AE28();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_4();
    v30 = OUTLINED_FUNCTION_4_0();
    a12 = v30;
    *v29 = 136315138;
    sub_249E3B9A4((v24 + 7), (v24 + 17));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23CE0, &unk_249E7F4F0);
    v31 = sub_249E7AAC8();
    v33 = v32;
    __swift_destroy_boxed_opaque_existential_0(v24 + 7);
    v34 = sub_249E3A958(v31, v33, &a12);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_249DEE000, v27, v28, "Handled Request received on transport %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_1();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v24 + 7);
  }

  v35 = v24[50];
  v37 = v24[33];
  v36 = v24[34];
  v38 = v24[30];
  v39 = v24[5];
  v40 = v24[6];
  __swift_project_boxed_opaque_existential_0(v24 + 2, v39);
  v24[15] = v39;
  v24[16] = *(v40 + 8);
  __swift_allocate_boxed_opaque_existential_0(v24 + 12);
  OUTLINED_FUNCTION_8_2();
  (*(v41 + 16))();
  (*(v37 + 48))(v24 + 12, v38, v36, v37);
  if (v35)
  {
    v42 = v24[44];
    v43 = v24[45];
    (*(v24[37] + 8))(v24[40], v24[36]);
    sub_249DF2D58(v42, v43);
    __swift_destroy_boxed_opaque_existential_0(v24 + 12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v24 + 12);
    v44 = v24[5];
    v45 = v24[6];
    __swift_project_boxed_opaque_existential_0(v24 + 2, v44);
    v46 = (*(*(*(v45 + 8) + 16) + 8))(v44);
    v48 = v24[44];
    v47 = v24[45];
    v49 = v24[40];
    v59 = v46;
    a10 = v24[39];
    a11 = v24[38];
    v60 = v24[37];
    a9 = v24[36];
    v61 = v24[32];
    v62 = v24[27];
    v64 = v24[5];
    v63 = v24[6];
    __swift_project_boxed_opaque_existential_0(v24 + 2, v64);
    v65 = (*(*(*(v63 + 8) + 24) + 8))(v64);
    v67 = v66;
    sub_249E7A618();
    sub_249DF2D58(v48, v47);
    (*(v60 + 8))(v49, a9);
    v68 = (v62 + *(v61 + 20));
    *v68 = v65;
    v68[1] = v67;
    *(v62 + *(v61 + 24)) = v59;
  }

  __swift_destroy_boxed_opaque_existential_0(v24 + 2);

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_122();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_249E38D48()
{
  OUTLINED_FUNCTION_17();
  v1 = *(v0 + 412);
  v2 = *(v0 + 368);
  v3 = *(v0 + 320);
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v7 = *(v0 + 280);
  v6 = *(v0 + 288);
  sub_249DF2D58(*(v0 + 352), *(v0 + 360));
  (*(v5 + 8))(v3, v6);
  v2(v4 + v1, v7);

  OUTLINED_FUNCTION_9_0();

  return v8();
}

uint64_t sub_249E38E10()
{
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_9_0();

  return v0();
}

uint64_t sub_249E38E88()
{
  OUTLINED_FUNCTION_11();
  v1[32] = v2;
  v1[33] = v0;
  v1[30] = v3;
  v1[31] = v4;
  v1[29] = v5;
  v1[34] = type metadata accessor for MessageContainer(0);
  v1[35] = swift_task_alloc();
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249E38F1C()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[30];
  v0[27] = sub_249DF691C(0, &qword_27EF23CF0, 0x277D18778);
  v0[28] = &off_285D09CA8;
  v0[24] = v1;
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  v0[36] = v3;
  *v3 = v4;
  v3[1] = sub_249E38FF4;
  v5 = v0[35];
  v6 = v0[32];
  v7 = v0[31];

  return sub_249E38150(v5, v7, v6, (v0 + 24));
}

uint64_t sub_249E38FF4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_5_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;
  *(v3 + 296) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 192));
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E390F8()
{
  OUTLINED_FUNCTION_17();
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7DF30;
  *(inited + 32) = 6580589;
  *(inited + 40) = 0xE300000000000000;
  v5 = sub_249E7A5D8();
  v6 = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  *(inited + 72) = v6;
  *(inited + 80) = 6580592;
  *(inited + 88) = 0xE300000000000000;
  v8 = (v1 + *(v2 + 20));
  v9 = v8[1];
  *(inited + 96) = *v8;
  *(inited + 104) = v9;
  *(inited + 120) = v6;
  *(inited + 128) = 112;
  *(inited + 136) = 0xE100000000000000;
  v10 = *(v1 + *(v2 + 24));
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23718, &qword_249E7E080);
  *(inited + 144) = v10;

  v11 = sub_249E7AA08();
  sub_249E7A628();
  OUTLINED_FUNCTION_28_0();
  (*(v12 + 16))(v3, v1);
  sub_249E3AA18(v1);

  v13 = v0[1];

  return v13(v11);
}

uint64_t sub_249E39288()
{
  OUTLINED_FUNCTION_11();
  __swift_destroy_boxed_opaque_existential_0((v0 + 192));

  OUTLINED_FUNCTION_9_0();

  return v1();
}

uint64_t sub_249E392F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  return OUTLINED_FUNCTION_8_0();
}

uint64_t sub_249E39308()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[7];
  v0[5] = sub_249DF691C(0, &qword_27EF23CF0, 0x277D18778);
  v0[6] = &off_285D09CA8;
  v0[2] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_23_1(v3);

  return sub_249E36E1C(v4, v5, v6);
}

uint64_t sub_249E393CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_249E3948C;

  return sub_249E38E88();
}

uint64_t sub_249E3948C()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v4 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_249E3957C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_249E042BC;

  return sub_249E392F0(v8, a2, a3, a4);
}

uint64_t sub_249E39628()
{
  OUTLINED_FUNCTION_11();
  v1[31] = v2;
  v1[32] = v0;
  v1[29] = v3;
  v1[30] = v4;
  v1[33] = type metadata accessor for MessageContainer(0);
  v1[34] = swift_task_alloc();
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_249E396B8()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[29];
  v0[27] = sub_249DF691C(0, &unk_28130D1E0, 0x277D44160);
  v0[28] = &off_285D09CA0;
  v0[24] = v1;
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  v0[35] = v3;
  *v3 = v4;
  v3[1] = sub_249E39790;
  v5 = v0[34];
  v6 = v0[31];
  v7 = v0[30];

  return sub_249E38150(v5, v7, v6, (v0 + 24));
}

uint64_t sub_249E39790()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_5_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v6 = v5;
  *(v3 + 288) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 192));
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E39894()
{
  OUTLINED_FUNCTION_82();
  v2 = v0[33];
  v1 = v0[34];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7DF30;
  *(inited + 32) = 6580589;
  *(inited + 40) = 0xE300000000000000;
  v4 = sub_249E7A5D8();
  v5 = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 72) = v5;
  *(inited + 80) = 6580592;
  *(inited + 88) = 0xE300000000000000;
  v7 = (v1 + *(v2 + 20));
  v8 = v7[1];
  *(inited + 96) = *v7;
  *(inited + 104) = v8;
  *(inited + 120) = v5;
  *(inited + 128) = 112;
  *(inited + 136) = 0xE100000000000000;
  v9 = *(v1 + *(v2 + 24));
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23718, &qword_249E7E080);
  *(inited + 144) = v9;

  sub_249E7AA08();
  v10 = OUTLINED_FUNCTION_280();
  sub_249E3AA18(v10);

  v11 = v0[1];

  return v11(inited);
}

uint64_t sub_249E399E0()
{
  OUTLINED_FUNCTION_11();
  __swift_destroy_boxed_opaque_existential_0((v0 + 192));

  OUTLINED_FUNCTION_9_0();

  return v1();
}

uint64_t sub_249E39A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  return OUTLINED_FUNCTION_8_0();
}

uint64_t sub_249E39A60()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[7];
  v0[5] = sub_249DF691C(0, &unk_28130D1E0, 0x277D44160);
  v0[6] = &off_285D09CA0;
  v0[2] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_23_1(v3);

  return sub_249E36E1C(v4, v5, v6);
}

uint64_t sub_249E39B24()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = v1;
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  OUTLINED_FUNCTION_9_0();

  return v6();
}

unint64_t sub_249E39C08(uint64_t a1, uint64_t a2)
{
  v2 = sub_249E7B268();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_249E39C54(char a1)
{
  result = 0x5264696C61766E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      return result;
    case 3:
      result = 0x4D64696C61766E69;
      break;
    case 4:
      result = 0x656C646E61486F6ELL;
      break;
    case 5:
      result = 0x6E61706D6F436F6ELL;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_249E39D50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_249E3BBA8;

  return sub_249E39628();
}

uint64_t sub_249E39DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_249E04BA4;

  return sub_249E39A48(v8, a2, a3, a4);
}

uint64_t sub_249E39EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_249E39F1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_249E39F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_249E39FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_249E3A068@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_249E39C08(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_249E3A098@<X0>(unint64_t *a1@<X8>)
{
  result = sub_249E39C54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_249E3A0C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_249E60108(a1, a2, WitnessTable);
}

void *sub_249E3A140()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_249E3A444(result, *(v1 + 16) + 1, 1, v1, &qword_27EF23AC0, &qword_249E7F538, &qword_27EF23AA0, &unk_249E7F508);
    *v0 = result;
  }

  return result;
}

uint64_t sub_249E3A1C4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_249E3A238(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_249E7AC08();
  }

  return result;
}

void *sub_249E3A264(void *result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    result = sub_249E3A444((v2 > 1), result + 1, 1, *v1, &qword_27EF23AC0, &qword_249E7F538, &qword_27EF23AA0, &unk_249E7F508);
    *v1 = result;
  }

  return result;
}

uint64_t sub_249E3A2DC(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

char *sub_249E3A324(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AD0, &qword_249E7F570);
    v10 = swift_allocObject();
    _swift_stdlib_malloc_size(v10);
    OUTLINED_FUNCTION_40_1();
    *(v10 + 2) = v8;
    *(v10 + 3) = v11;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_249E3A444(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_249E3A6FC(v14, v13, a5, a6, a7, a8);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_249E3A884(a4 + v17, v14, v15 + v17, a7, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_249E3A55C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AE0, &qword_249E7F580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF23AE8, &qword_249E7F588);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_249E3A68C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AD0, &qword_249E7F570);
  v4 = swift_allocObject();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_40_1();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_249E3A6FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v11)
  {
    if ((result - v12) != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_249E3A7FC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

char *sub_249E3A81C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

char *sub_249E3A83C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

char *sub_249E3A864(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

void sub_249E3A884(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a1 || (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_28_0(), a1 + *(v10 + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_37_0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_37_0();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_249E3A958(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_18();
  v9 = sub_249E3AA8C(v6, v7, v8, 1, a1, a2);
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
    sub_249DF686C(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v10;
}

uint64_t sub_249E3AA18(uint64_t a1)
{
  v2 = type metadata accessor for MessageContainer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_249E3AA8C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_249E3AB8C(a5, a6);
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
    result = sub_249E7B188();
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

uint64_t sub_249E3AB8C(uint64_t a1, unint64_t a2)
{
  v3 = sub_249E3ABD8(a1, a2);
  sub_249E3ACF0(&unk_285D07258);
  return v3;
}

uint64_t sub_249E3ABD8(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_249E7AB58())
  {
    result = sub_249E3ADD4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_249E7B118();
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
          result = sub_249E7B188();
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

uint64_t sub_249E3ACF0(uint64_t result)
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

    result = sub_249E3AE44(result, v7, 1, v3);
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

void *sub_249E3ADD4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23A98, &qword_249E7F500);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_249E3AE44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23A98, &qword_249E7F500);
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

uint64_t sub_249E3AF3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageContainer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E3AFA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageContainer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_249E3B024(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA0, &unk_249E7F508);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v35 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = *v2;
  result = sub_249E3B324(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  v41 = a2;
  v43 = v16;
  v37 = v11;
  v38 = v14;
  if (v19)
  {
    return *(v17 + 16);
  }

  v4 = result;
  v44 = 0;
  v36 = v2;
  v20 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v21 = v17;
    v22 = v43;
    v39 = v8;
    v40 = a1;
    while (1)
    {
      v23 = v21[2];
      if (v20 == v23)
      {
        return v4;
      }

      if (v20 >= v23)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        break;
      }

      v24 = v4;
      v25 = v21;
      v42 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v26 = v21 + v42;
      v27 = *(v8 + 72);
      v45 = v20;
      v28 = v27 * v20;
      sub_249E3B698(&v26[v27 * v20], v22);
      v29 = v44;
      v30 = a1(v22);
      v4 = v29;
      result = sub_249E2A8CC(v22, &qword_27EF23AA0, &unk_249E7F508);
      v44 = v29;
      if (v29)
      {
        return v4;
      }

      if (v30)
      {
        v8 = v39;
        a1 = v40;
        v4 = v24;
        v22 = v43;
        v21 = v25;
        v31 = v45;
      }

      else
      {
        v31 = v45;
        v22 = v43;
        if (v45 == v24)
        {
          a1 = v40;
          v21 = v25;
        }

        else
        {
          if ((v24 & 0x8000000000000000) != 0)
          {
            goto LABEL_25;
          }

          v32 = *(v25 + 16);
          if (v24 >= v32)
          {
            goto LABEL_26;
          }

          v33 = v27 * v24;
          result = sub_249E3B698(&v26[v33], v38);
          if (v45 >= v32)
          {
            goto LABEL_27;
          }

          sub_249E3B698(&v26[v28], v37);
          v21 = v25;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_249E3B8A4(v25);
          }

          a1 = v40;
          v34 = v21 + v42;
          sub_249E3B8EC(v37, v21 + v42 + v33);
          result = v38;
          if (v45 >= v21[2])
          {
            goto LABEL_28;
          }

          result = sub_249E3B8EC(v38, &v34[v28]);
          v31 = v45;
          *v36 = v21;
          v22 = v43;
        }

        v4 = v24 + 1;
        v8 = v39;
      }

      v20 = v31 + 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_249E3B324(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA0, &unk_249E7F508) - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_249E3B424(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_249E7B068();
LABEL_9:
  result = sub_249E7B158();
  *v2 = result;
  return result;
}

void *sub_249E3B4C4(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_249E3A444(result, v7, a2 & 1, v5, &qword_27EF23AC0, &qword_249E7F538, &qword_27EF23AA0, &unk_249E7F508);
    *v2 = result;
  }

  return result;
}

void sub_249E3B54C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = a1 - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_249E3B4C4(v4 - v6, 1);
  v8 = *v2;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA0, &unk_249E7F508) - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * a1;
  swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  sub_249E3A884(v10 + v11 * a2, v13 - a2, v12, &qword_27EF23AA0, &unk_249E7F508);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_249E3B698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA0, &unk_249E7F508);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_249E3B708()
{
  result = qword_27EF23AB0;
  if (!qword_27EF23AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF23C90, &qword_249E7F520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23AB0);
  }

  return result;
}

uint64_t sub_249E3B76C()
{
  OUTLINED_FUNCTION_82();
  v3 = v2;
  v4 = *(sub_249E7A5B8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_249E042BC;

  return sub_249E362E0(v3, v6, v7, v0 + v5, v8);
}

uint64_t sub_249E3B8EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AA0, &unk_249E7F508);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E3B95C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_249E3B9A4(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_8_2();
  (*v3)(a2);
  return a2;
}

uint64_t getEnumTagSinglePayload for CallCenterManager.CallCenterManagerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_249E3BA94(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_11_2()
{

  JUMPOUT(0x24C205870);
}

void OUTLINED_FUNCTION_12_2()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x24C205870);
}

void OUTLINED_FUNCTION_15_1()
{

  JUMPOUT(0x24C205870);
}

void OUTLINED_FUNCTION_18_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_19_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_21_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_30_1(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_31_1()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return __swift_destroy_boxed_opaque_existential_0(v0);
}

uint64_t OUTLINED_FUNCTION_33_0(float a1)
{
  *v1 = a1;

  return sub_249E3B9A4(v2, v3);
}

void OUTLINED_FUNCTION_34_1()
{
  v2 = *(v0 + 232);
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_43_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

uint64_t OUTLINED_FUNCTION_44_1()
{
}

uint64_t OUTLINED_FUNCTION_45_1(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_249E3A958(a1, a2, va);
}

void NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + 32;
    do
    {
      v7 += 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C50, &qword_249E7F8A0);
      [v5 addObject_];
      swift_unknownObjectRelease();
      --v6;
    }

    while (v6);
  }

  v8 = v5;
  sub_249E7AD48();

  sub_249E7B228();
  __break(1u);
}

uint64_t sub_249E3BFE8()
{
  v0 = sub_249E7A6B8();
  __swift_allocate_value_buffer(v0, qword_27EF23B70);
  __swift_project_value_buffer(v0, qword_27EF23B70);
  return sub_249E7A6A8();
}

uint64_t sub_249E3C06C(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_4_8(a1);
  MEMORY[0x24C205020](v1 & 1);
  return sub_249E7B438();
}

uint64_t sub_249E3C0D0(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_4_8(a1);
  OUTLINED_FUNCTION_0_10(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_249E7AB18();
  return sub_249E7B438();
}

uint64_t sub_249E3C13C(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_4_8(a1);
  OUTLINED_FUNCTION_0_10(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_249E7AB18();
  return sub_249E7B438();
}

uint64_t sub_249E3C19C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_4_8(a1);
  v4 = a2(a1);
  OUTLINED_FUNCTION_2_11(v4, v5, v6);

  return sub_249E7B438();
}

uint64_t sub_249E3C1EC(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_3_8();
  }

  sub_249E7AB18();
}

uint64_t sub_249E3C2C8(uint64_t a1, char a2)
{
  sub_249E7AB18();
}

uint64_t sub_249E3C330(uint64_t a1, char a2)
{
  sub_249E7AB18();
}

uint64_t sub_249E3C478(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  sub_249E7AB18();
}

uint64_t sub_249E3C4D0(uint64_t a1, char a2)
{
  sub_249E7B408();
  MEMORY[0x24C205020](a2 & 1);
  return sub_249E7B438();
}

uint64_t sub_249E3C544(uint64_t a1, char a2)
{
  sub_249E7B408();
  sub_249E7AB18();

  return sub_249E7B438();
}

uint64_t sub_249E3C5D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_249E7B408();
  v5 = a3(a2);
  OUTLINED_FUNCTION_2_11(v5, v6, v7);

  return sub_249E7B438();
}

uint64_t sub_249E3C62C(uint64_t a1)
{
  v1 = sub_249E7B408();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_249E7AB18();
  return sub_249E7B438();
}

uint64_t sub_249E3C678(uint64_t a1)
{
  v1 = sub_249E7B408();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_249E7AB18();
  return sub_249E7B438();
}

uint64_t sub_249E3C6C4(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  sub_249E7B408();
  if (!v2)
  {
    OUTLINED_FUNCTION_3_8();
  }

  sub_249E7AB18();

  return sub_249E7B438();
}

char *sub_249E3C76C(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_249E7A628();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC10DropInCore17ConversationTimer_mode) = a1 & 1;
  if (a1)
  {
    v13 = 0x657669746341;
  }

  else
  {
    v13 = 0x676E6974696157;
  }

  if (a1)
  {
    v14 = 0xE600000000000000;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  v15 = sub_249E3C8E0(a1 & 1);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_249E7B128();

  strcpy(v19, "Conversation");
  BYTE5(v19[1]) = 0;
  HIWORD(v19[1]) = -5120;
  MEMORY[0x24C204750](v13, v14);

  MEMORY[0x24C204750](0x72656D6954, 0xE500000000000000);
  v16 = v19[0];
  v17 = v19[1];
  sub_249E7A618();
  return OneshotTimer.init(timeInterval:queue:identifier:label:timerFiredHandler:)(a2, v12, v16, v17, a3, a4, v15);
}

double sub_249E3C8E0(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  MEMORY[0x28223BE20](v2);
  v4 = v8 - v3;
  v6 = (v5 + 8);
  if (a1)
  {
    sub_249E7A738();
  }

  else
  {
    sub_249E7A748();
  }

  sub_249E30310(&qword_28130D320, MEMORY[0x277D06990]);
  sub_249E30310(&unk_28130D310, MEMORY[0x277D06998]);
  sub_249E30310(&unk_28130D300, MEMORY[0x277D069A0]);
  sub_249E7A6E8();
  (*v6)(v4, v2);
  return *&v8[1];
}

id sub_249E3CB20()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ConversationTimer(uint64_t a1)
{
  result = qword_27EF23B88;
  if (!qword_27EF23B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConversationTimer.Mode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_249E3CCCC(char a1)
{
  if (a1)
  {
    return 0x657669746341;
  }

  else
  {
    return 0x676E6974696157;
  }
}

uint64_t sub_249E3CD00(uint64_t a1, uint64_t a2)
{
  v2 = sub_249E7B268();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249E3CD78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_249E3CD00(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_249E3CDA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_249E3CCCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_249E3CDE0()
{
  result = qword_27EF23B98;
  if (!qword_27EF23B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23B98);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_11(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_249E7AB18();
}

void *OUTLINED_FUNCTION_4_8(uint64_t a1, ...)
{

  return sub_249E7B408();
}

uint64_t sub_249E3CE9C(double a1)
{
  swift_defaultActor_initialize();
  *(v1 + 120) = MEMORY[0x277D84F90];
  *(v1 + 128) = 0;
  *(v1 + 112) = a1;
  return v1;
}

uint64_t sub_249E3CED8(uint64_t a1, uint64_t a2)
{
  v3 = sub_249E7AA88();
  v4 = [v2 valueForEntitlementName_];

  if (v4)
  {
    sub_249E7AFF8();
    swift_unknownObjectRelease();
    sub_249DFDB78(&v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C40, &qword_249E7D8E0);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 2;
  }
}

void sub_249E3CFA0(uint64_t a1)
{
  v2 = type metadata accessor for XPCClient(0);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  v21 = 0x8000000249E815B0;
  v22 = 0x8000000249E81560;

  v9 = 0;
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_249DF76A8(*(a1 + 48) + *(v23 + 72) * (v11 | (v9 << 6)), v4);
    v12 = *&v4[*(v24 + 20)];
    sub_249DF770C(v4);
    v13 = [v12 bundleIdentifier];

    if (v13)
    {
      v14 = sub_249E7AAA8();
      v16 = v15;

      v17 = v14 == 0xD000000000000014 && 0x8000000249E81540 == v16;
      if (v17 || (sub_249E7B318() & 1) != 0 || (v14 == 0xD000000000000014 ? (v18 = v22 == v16) : (v18 = 0), v18 || (sub_249E7B318() & 1) != 0))
      {

LABEL_28:

        return;
      }

      if (v14 == 0xD000000000000021 && v21 == v16)
      {

        return;
      }

      v20 = sub_249E7B318();

      if (v20)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_28;
    }

    v7 = *(a1 + 56 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *sub_249E3D244(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - v12;
  sub_249E7A6A8();
  v4[4] = a1;
  v4[2] = a2;
  *(v4 + *(*v4 + 136)) = a3;
  *(v4 + *(*v4 + 144)) = a4;
  v23[0] = a2;
  sub_249E7A7C8();
  sub_249E42168(&qword_28130D320, &unk_27EF23820, &unk_249E7E860, MEMORY[0x277D06990]);
  sub_249E42168(&unk_28130D310, &unk_27EF23820, &unk_249E7E860, MEMORY[0x277D06998]);
  sub_249E42168(&unk_28130D300, &unk_27EF23820, &unk_249E7E860, MEMORY[0x277D069A0]);
  sub_249E7A6E8();
  (*(v11 + 8))(v13, v10);
  v14 = v23[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C90, &qword_249E7F520);
  swift_allocObject();
  *(v4 + *(*v4 + 128)) = sub_249E3CE9C(*&v14);

  v16 = sub_249E3D55C(v15);

  v18 = sub_249E3D55C(v17);
  type metadata accessor for RapportManager(0);
  swift_allocObject();
  v5[3] = sub_249E4394C(v16, v18);
  v19 = v5[2];

  sub_249E5715C(v20, &off_285D09358);

  sub_249E43780(v21, &off_285D09340);

  return v5;
}

void *sub_249E3D55C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_249E3A68C(*(a1 + 16), 0);
  sub_249E3F96C(&v7, v3 + 4, v2, a1);
  v5 = v4;
  sub_249E08728(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

char *sub_249E3D5EC(void *a1)
{
  sub_249E7AE68();
  OUTLINED_FUNCTION_3();
  v18 = v3;
  v19 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v17 = v5 - v4;
  sub_249E7AE58();
  OUTLINED_FUNCTION_28_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v7 = sub_249E7A958();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_1_0();
  *&v1[OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_xpcClientDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_xpcDispatcher] = 0;
  *&v1[OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_xpcServerInterface] = 0;
  sub_249E7A6A8();
  v16 = OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_queue;
  sub_249DF691C(0, &qword_28130D228, 0x277D85C78);
  sub_249DF3F24();
  sub_249E7A938();
  v22 = MEMORY[0x277D84F90];
  sub_249E42078(&qword_28130D230, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C68, &qword_249E7F8C0);
  OUTLINED_FUNCTION_5_6();
  sub_249E42168(v8, v9, &qword_249E7F8C0, v10);
  sub_249E7B018();
  (*(v18 + 104))(v17, *MEMORY[0x277D85260], v19);
  *&v1[v16] = sub_249E7AE98();
  *&v1[OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate__xpcClients] = MEMORY[0x277D84FA0];
  v21.receiver = v1;
  v21.super_class = type metadata accessor for DropInServiceListenerDelegate(0);
  v11 = objc_msgSendSuper2(&v21, sel_init);
  type metadata accessor for XPCDispatcher(0);
  v12 = swift_allocObject();
  v13 = v11;
  v14 = sub_249E40A18(v13, a1, v12);
  *&v13[OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_xpcDispatcher] = v14;

  *&v13[OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_xpcServerInterface] = v14;

  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_249E3D970(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = type metadata accessor for XPCClient(0);
  OUTLINED_FUNCTION_3();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v11);
  v13 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - v14;
  [a2 setExportedObject_];
  if (qword_27EF22FE8 != -1)
  {
    swift_once();
  }

  [a2 setExportedInterface_];
  sub_249E3DF24();
  if (qword_27EF22FF0 != -1)
  {
    swift_once();
  }

  v16 = qword_27EF23BA8;
  [a2 setRemoteObjectInterface_];
  sub_249E3E188(v16);
  if (qword_28130D2B0 != -1)
  {
    swift_once();
  }

  v17 = sub_249E3CED8(qword_28130E6F8, unk_28130E700);
  if (v17 == 2 || (v17 & 1) == 0)
  {
    v34 = sub_249E7A698();
    v35 = sub_249E7AE08();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v36 = 136315138;
      v38 = sub_249E7A848();
      v40 = sub_249E3A958(v38, v39, aBlock);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_249DEE000, v34, v35, "Missing Entitlement: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x24C205870](v37, -1, -1);
      MEMORY[0x24C205870](v36, -1, -1);
    }

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_2_12();
    v18 = swift_allocObject();
    OUTLINED_FUNCTION_9_3(v18);
    OUTLINED_FUNCTION_8_3();
    v19 = swift_allocObject();
    *(v19 + 16) = v3;
    *(v19 + 24) = a2;
    v46 = sub_249E3F944;
    v47 = v19;
    aBlock[1] = 1107296256;
    v42 = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    v44 = sub_249E52140;
    v45 = &block_descriptor_33;
    v20 = _Block_copy(aBlock);
    v21 = a2;

    [v21 setInterruptionHandler_];
    _Block_release(v20);
    OUTLINED_FUNCTION_2_12();
    v22 = swift_allocObject();
    OUTLINED_FUNCTION_9_3(v22);
    OUTLINED_FUNCTION_8_3();
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    *(v23 + 24) = v21;
    v46 = sub_249E3F94C;
    v47 = v23;
    OUTLINED_FUNCTION_4_9();
    v44 = sub_249E52140;
    v45 = &block_descriptor_40;
    v24 = _Block_copy(aBlock);
    v25 = v21;

    [v25 setInvalidationHandler_];
    _Block_release(v24);
    sub_249E7A6A8();
    *&v15[*(v6 + 20)] = v25;
    *&v15[*(v6 + 24)] = 0;
    v26 = *(v4 + OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_queue);
    OUTLINED_FUNCTION_2_12();
    v27 = swift_allocObject();
    OUTLINED_FUNCTION_9_3(v27);
    sub_249DF76A8(v15, v13);
    v28 = (*(v42 + 80) + 24) & ~*(v42 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v24;
    sub_249E04524(v13, v29 + v28);
    OUTLINED_FUNCTION_8_3();
    v30 = swift_allocObject();
    *(v30 + 16) = sub_249E3F954;
    *(v30 + 24) = v29;
    v46 = sub_249E42270;
    v47 = v30;
    OUTLINED_FUNCTION_4_9();
    v44 = sub_249E3EC2C;
    v45 = &block_descriptor_51;
    v31 = _Block_copy(aBlock);
    v32 = v25;

    dispatch_sync(v26, v31);
    _Block_release(v31);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if (v31)
    {
      __break(1u);
    }

    else
    {
      [v32 resume];
      sub_249DF770C(v15);

      return 1;
    }
  }

  return result;
}

uint64_t sub_249E3DF24()
{
  sub_249E3F8DC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7D7D0;
  v1 = sub_249E7A6D8();
  *(inited + 32) = v1;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(inited, sel_startSessionWithContext_request_completionHandler_, 0, 0);
  swift_setDeallocating();
  sub_249E3F8DC();
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_249E7D7D0;
  *(v2 + 32) = sub_249DF691C(0, &qword_28130D248, 0x277D069C8);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v2, sel_startSessionWithContext_request_completionHandler_, 1, 0);
  swift_setDeallocating();
  sub_249E3F8DC();
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_249E7D7D0;
  v4 = sub_249DF691C(0, &unk_28130D238, 0x277D069D8);
  *(v3 + 32) = v4;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v3, sel_startSessionWithContext_request_completionHandler_, 0, 1);
  swift_setDeallocating();
  sub_249E3F8DC();
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_249E7D7D0;
  *(v5 + 32) = v1;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v5, sel_endSessionWithContext_session_completionHandler_, 0, 0);
  swift_setDeallocating();
  sub_249E3F8DC();
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_249E7D7D0;
  *(v6 + 32) = v4;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v6, sel_endSessionWithContext_session_completionHandler_, 1, 0);
  swift_setDeallocating();
  sub_249E3F8DC();
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_249E7D7D0;
  *(v7 + 32) = v1;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v7, sel_cancelSessionWithContext_session_error_completionHandler_, 0, 0);
  swift_setDeallocating();
  sub_249E3F8DC();
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_249E7D7D0;
  *(v8 + 32) = v1;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v8, sel_loadDevicesWithContext_completionHandler_, 0, 0);
  swift_setDeallocating();
  sub_249E3F8DC();
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_249E7D7D0;
  *(v9 + 32) = sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v9, sel_requestStateForDevice_completionHandler_, 0, 1);
  return swift_setDeallocating();
}

uint64_t sub_249E3E188(uint64_t a1)
{
  sub_249E3F8DC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7D7D0;
  *(inited + 32) = sub_249E7A6D8();
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(inited, sel_fetchClientContextWithCompletionHandler_, 0, 1);
  swift_setDeallocating();
  sub_249E3F8DC();
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_249E7DBA0;
  v3 = sub_249DF691C(0, &qword_28130D160, 0x277D069A8);
  *(v2 + 32) = v3;
  *(v2 + 40) = sub_249DF691C(0, &unk_28130D170, 0x277CBEA60);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v2, sel_didLoadDevices_, 0, 0);
  swift_setDeallocating();
  sub_249E3F8DC();
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_249E7D7D0;
  *(v4 + 32) = v3;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v4, sel_didAddDevice_, 0, 0);
  swift_setDeallocating();
  sub_249E3F8DC();
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_249E7D7D0;
  *(v5 + 32) = v3;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v5, sel_didRemoveDevice_, 0, 0);
  swift_setDeallocating();
  sub_249E3F8DC();
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_249E7D7D0;
  *(v6 + 32) = v3;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v6, sel_didUpdateDevice_, 0, 0);
  swift_setDeallocating();
  sub_249E3F8DC();
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_249E7D7D0;
  v8 = sub_249DF691C(0, &unk_28130D238, 0x277D069D8);
  *(v7 + 32) = v8;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v7, sel_didAddSession_, 0, 0);
  swift_setDeallocating();
  sub_249E3F8DC();
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_249E7D7D0;
  *(v9 + 32) = v8;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v9, sel_didRemoveSession_, 0, 0);
  swift_setDeallocating();
  sub_249E3F8DC();
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_249E7D7D0;
  *(v10 + 32) = v8;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v10, sel_didUpdateSession_, 0, 0);
  swift_setDeallocating();
  sub_249E3F8DC();
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_249E7D7D0;
  *(v11 + 32) = v8;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v11, sel_session_didFailWithError_, 0, 0);
  swift_setDeallocating();
  sub_249E3F8DC();
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_249E7D7D0;
  *(v12 + 32) = v8;
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(v12, sel_session_didUpdateUplinkMuteStatus_, 0, 0);
  return swift_setDeallocating();
}

void sub_249E3E45C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a2;
    v6 = sub_249E7A698();
    v7 = sub_249E7AE28();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_249DEE000, v6, v7, "Connection to Client Interrupted %@", v8, 0xCu);
      sub_249E2A8CC(v9, &unk_27EF23C30, &qword_249E7DA20);
      MEMORY[0x24C205870](v9, -1, -1);
      MEMORY[0x24C205870](v8, -1, -1);
    }
  }
}

char *sub_249E3E590(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = a2;
    v6 = sub_249E7A698();
    v7 = sub_249E7AE28();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_249DEE000, v6, v7, "Connection to Client Invalidated %@", v8, 0xCu);
      sub_249E2A8CC(v9, &unk_27EF23C30, &qword_249E7DA20);
      MEMORY[0x24C205870](v9, -1, -1);
      MEMORY[0x24C205870](v8, -1, -1);
    }

    v11 = *&v4[OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_queue];
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v5;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_249E41E2C;
    *(v14 + 24) = v13;
    aBlock[4] = sub_249E42270;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_249E3EC2C;
    aBlock[3] = &block_descriptor_62;
    v15 = _Block_copy(aBlock);
    v16 = v5;

    dispatch_sync(v11, v15);

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

char *sub_249E3E810(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF235D8, &qword_249E7DAA0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v38 - v6;
  v8 = type metadata accessor for XPCClient(0);
  v43 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v38 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v40 = v5;
    v41 = v7;
    v42 = v16;
    v19 = OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate__xpcClients;
    swift_beginAccess();
    v39 = v19;
    v20 = *&v18[v19];
    v21 = 1 << *(v20 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v20 + 56);
    v24 = (v21 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v25 = 0;
    if (v23)
    {
      while (1)
      {
        v26 = v25;
LABEL_9:
        sub_249DF76A8(*(v20 + 48) + *(v43 + 72) * (__clz(__rbit64(v23)) | (v26 << 6)), v14);
        sub_249E04524(v14, v11);
        sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
        if (sub_249E7AF78())
        {
          break;
        }

        v23 &= v23 - 1;
        result = sub_249DF770C(v11);
        v25 = v26;
        if (!v23)
        {
          goto LABEL_6;
        }
      }

      v27 = v41;
      sub_249E04524(v11, v41);
      v28 = v27;
      v29 = 0;
LABEL_13:
      __swift_storeEnumTagSinglePayload(v28, v29, 1, v8);

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v8);
      v31 = v42;
      if (EnumTagSinglePayload == 1)
      {

        return sub_249E2A8CC(v27, &qword_27EF235D8, &qword_249E7DAA0);
      }

      else
      {
        sub_249E04524(v27, v42);
        v32 = v39;
        swift_beginAccess();
        v33 = v40;
        sub_249E685D4();
        sub_249E2A8CC(v33, &qword_27EF235D8, &qword_249E7DAA0);
        swift_endAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v35 = Strong;
          v36 = *&v18[v32];
          v37 = v18;

          sub_249E415A4(v37, v31, v36, v35);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return sub_249DF770C(v31);
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v26 >= v24)
        {

          v27 = v41;
          v28 = v41;
          v29 = 1;
          goto LABEL_13;
        }

        v23 = *(v20 + 56 + 8 * v26);
        ++v25;
        if (v23)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }
  }

  return result;
}

void sub_249E3EC54(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for XPCClient(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_249DF76A8(a2, v6);
    v11 = OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate__xpcClients;
    swift_beginAccess();
    sub_249E6481C();
    sub_249DF770C(v8);
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *&v10[v11];
      v13 = v10;

      sub_249E41A6C(v13, a2, v12);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_249E3EE60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DropInServiceListenerDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DropInServiceListenerDelegate(uint64_t a1)
{
  result = qword_28130E228;
  if (!qword_28130E228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E3EFA0(uint64_t a1)
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

uint64_t sub_249E3F064()
{
  v9 = MEMORY[0x277D84FA0];
  v1 = *(v0 + OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_8_3();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = &v9;
  OUTLINED_FUNCTION_8_3();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_249E3F27C;
  *(v4 + 24) = v3;
  aBlock[4] = sub_249E3F284;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249E3EC2C;
  aBlock[3] = &block_descriptor_3;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v1, v5);
  _Block_release(v5);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

char *sub_249E3F1EC(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate__xpcClients;
    swift_beginAccess();
    v6 = *&v4[v5];

    *a2 = v6;
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249E3F2C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_249E7A928();
  OUTLINED_FUNCTION_3();
  v29 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v28 = sub_249E7A958();
  OUTLINED_FUNCTION_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  v16 = type metadata accessor for XPCClient(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v27 = *(v2 + OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_queue);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_249DF76A8(a1, &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  sub_249E04524(&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  aBlock[4] = sub_249E41FE8;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249E52140;
  aBlock[3] = &block_descriptor_73;
  v22 = _Block_copy(aBlock);

  sub_249E7A938();
  v30 = MEMORY[0x277D84F90];
  sub_249E42078(&qword_28130D2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  OUTLINED_FUNCTION_5_6();
  sub_249E42168(v23, v24, &unk_249E80260, v25);
  sub_249E7B018();
  MEMORY[0x24C204A90](0, v15, v9, v22);
  _Block_release(v22);
  (*(v29 + 8))(v9, v4);
  (*(v11 + 8))(v15, v28);
}

void *sub_249E3F630(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF235D8, &qword_249E7DAA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17[-v4];
  v6 = type metadata accessor for XPCClient(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v17[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v17[-v13];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    swift_beginAccess();
    sub_249E685D4();
    swift_endAccess();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {

      return sub_249E2A8CC(v5, &qword_27EF235D8, &qword_249E7DAA0);
    }

    else
    {
      sub_249E04524(v5, v14);
      sub_249E69CE4(a2);
      sub_249DF76A8(v14, v9);
      swift_beginAccess();
      sub_249E6481C();
      sub_249DF770C(v12);
      swift_endAccess();

      return sub_249DF770C(v14);
    }
  }

  return result;
}

void sub_249E3F870(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 interfaceWithProtocol_];

  *a3 = v7;
}

uint64_t sub_249E3F8DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C50, &qword_249E7F8A0);
  if (dynamic_cast_existential_0_class_conditional(v0, v0))
  {
    v1 = &qword_27EF23C60;
    v2 = &unk_249E7F8B0;
  }

  else
  {
    v1 = &unk_27EF23C58;
    v2 = &unk_249E7F8A8;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

void sub_249E3F96C(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v7;
    a1[3] = v13;
    a1[4] = v9;
    return;
  }

  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < a3)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == a3)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

id sub_249E3FAC8(void *a1, void *a2, char *a3)
{
  v41 = a2;
  v38 = a1;
  v39 = sub_249E7A6B8();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v35 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_249E7A688();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_249E7AE68();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_249E7AE58();
  MEMORY[0x28223BE20](v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_249E7A958();
  MEMORY[0x28223BE20](v11 - 8);
  v32 = OBJC_IVAR____TtC10DropInCore17AudioPowerManager_logger;
  sub_249E7A6A8();
  *&a3[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_mockDataTask] = 0;
  v12 = &a3[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_delegate];
  *(v12 + 1) = 0;
  v31 = v12;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_audioFrequencyController] = 0;
  *&a3[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_registeredStreamTokens] = MEMORY[0x277D84FA0];
  sub_249DF691C(0, &qword_28130D228, 0x277D85C78);
  v13 = sub_249DF3F24();
  v29 = v14;
  v30 = v13;
  sub_249E7A948();
  v44 = MEMORY[0x277D84F90];
  v15 = sub_249E42078(&qword_28130D230, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C68, &qword_249E7F8C0);
  v28[0] = sub_249E42168(&unk_28130D280, &unk_27EF23C68, &qword_249E7F8C0, MEMORY[0x277D83970]);
  v28[1] = v16;
  v28[2] = v15;
  v28[3] = v8;
  sub_249E7B018();
  v17 = *MEMORY[0x277D85260];
  v18 = *(v42 + 104);
  v42 += 104;
  v18(v7, v17, v40);
  v29 = v10;
  v30 = v7;
  v19 = sub_249E7AE98();
  v20 = v41;
  *&a3[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_queue] = v19;
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    sub_249DF3F24();
    sub_249E7A948();
    v44 = MEMORY[0x277D84F90];
    sub_249E7B018();
    v18(v30, v17, v40);
    v21 = sub_249E7AE98();
    v20 = v41;
  }

  *&a3[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_delegateQueue] = v21;
  *(v31 + 1) = &off_285D0B010;
  v22 = v38;
  swift_unknownObjectWeakAssign();
  v23 = v20;

  (*(v37 + 16))(v35, &a3[v32], v39);
  v24 = v33;
  sub_249E7A668();
  (*(v34 + 32))(&a3[OBJC_IVAR____TtC10DropInCore17AudioPowerManager_signposter], v24, v36);
  v25 = type metadata accessor for AudioPowerManager(0);
  v43.receiver = a3;
  v43.super_class = v25;
  v26 = objc_msgSendSuper2(&v43, sel_init);

  return v26;
}

char *sub_249E4006C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = &a4[OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_hostPseudonym];
  *v8 = 0;
  v8[1] = 0;
  sub_249E7A6A8();
  v9 = sub_249E4012C(a1, a2, a3, a4);
  v10 = &v9[OBJC_IVAR____TtC10DropInCore23CallCenterManagerClient_hostPseudonym];
  *v10 = 0;
  *(v10 + 1) = 0;

  return v9;
}

char *sub_249E4012C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v56 = a2;
  v57 = a3;
  v49 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = &v41 - v6;
  v55 = sub_249E7A6B8();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v51 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_249E7A688();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v50 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_249E7AE68();
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x28223BE20](v9);
  v46 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_249E7AE58();
  MEMORY[0x28223BE20](v45);
  v43 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_249E7A958();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_callParticpants;
  sub_249DF691C(0, &qword_28130D1C8, 0x277D6EEA8);
  v14 = MEMORY[0x277D84F90];
  *&a4[v13] = sub_249E7AA08();
  v15 = &a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_delegate];
  *&a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationProviderLoader] = 0;
  *&a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_audioPowerManager] = 0;
  v44 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_logger;
  sub_249E7A6A8();
  *&a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation] = 0;
  *&a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationTimer] = 0;
  a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_someoneJoined] = 0;
  *&a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeCall] = 0;
  sub_249DF691C(0, &qword_28130D228, 0x277D85C78);
  sub_249DF3F24();
  sub_249E7A948();
  aBlock[0] = v14;
  sub_249E42078(&qword_28130D230, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C68, &qword_249E7F8C0);
  sub_249E42168(&unk_28130D280, &unk_27EF23C68, &qword_249E7F8C0, MEMORY[0x277D83970]);
  sub_249E7B018();
  (*(v47 + 104))(v46, *MEMORY[0x277D85260], v48);
  v16 = sub_249E7AE98();
  *&a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue] = v16;
  v17 = [objc_allocWithZone(MEMORY[0x277D6EDF8]) initWithQueue_];
  *&a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter] = v17;
  v18 = [objc_allocWithZone(MEMORY[0x277D6EEC0]) init];
  *&a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationProviderManager] = v18;
  (*(v53 + 16))(v51, &a4[v44], v55);
  v19 = v50;
  sub_249E7A668();
  (*(v52 + 32))(&a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_signposter], v19, v54);
  *(v15 + 1) = v56;
  swift_unknownObjectWeakAssign();
  v20 = &a4[OBJC_IVAR____TtC10DropInCore17CallCenterManager_participantValidator];
  *v20 = v57;
  v20[1] = &off_285D0A8B8;
  v21 = type metadata accessor for CallCenterManager(0);
  v59.receiver = a4;
  v59.super_class = v21;
  v22 = objc_msgSendSuper2(&v59, sel_init);
  v23 = objc_allocWithZone(type metadata accessor for AudioPowerManager(0));
  v24 = v22;
  v25 = sub_249E3FAC8(v24, 0, v23);
  v26 = *&v24[OBJC_IVAR____TtC10DropInCore17CallCenterManager_audioPowerManager];
  *&v24[OBJC_IVAR____TtC10DropInCore17CallCenterManager_audioPowerManager] = v25;

  *&v24[OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationProviderLoader] = sub_249E7218C();

  v27 = *&v24[OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue];
  v28 = swift_allocObject();
  *(v28 + 16) = v24;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_249E421B0;
  *(v29 + 24) = v28;
  aBlock[4] = sub_249E42270;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249E3EC2C;
  aBlock[3] = &block_descriptor_87;
  v30 = _Block_copy(aBlock);
  v31 = v24;
  v32 = v27;

  dispatch_sync(v32, v30);

  _Block_release(v30);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
    __break(1u);
  }

  else
  {
    v34 = objc_opt_self();
    v35 = [v34 defaultCenter];
    [v35 addObserver:v31 selector:sel_uplinkMutedChangedWithNotification_ name:*MEMORY[0x277D6F0A0] object:0];

    v36 = [v34 defaultCenter];
    [v36 addObserver:v31 selector:sel_callStatusChangedWithNotification_ name:*MEMORY[0x277D6EFF0] object:0];

    v37 = v42;
    sub_249E7AC58();
    v38 = sub_249E7AC78();
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v40[4] = v39;
    sub_249E6FF00();

    swift_unknownObjectRelease();

    return v31;
  }

  return result;
}

uint64_t sub_249E40A18(void *a1, void *a2, uint64_t a3)
{
  sub_249E7A6A8();
  *(a3 + OBJC_IVAR____TtC10DropInCore13XPCDispatcher_xpcClientDataSource + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_285D094C0;
  swift_unknownObjectWeakAssign();
  v6 = objc_allocWithZone(type metadata accessor for DropInManager(0));
  v7 = a1;
  swift_unknownObjectRetain();
  *(a3 + 16) = sub_249E40CB0(v7, a2, v6);
  *&v7[OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_xpcClientDelegate + 8] = &off_285D08668;
  swift_unknownObjectWeakAssign();
  type metadata accessor for AudioSystemManager(0);
  v8 = swift_allocObject();
  v9 = sub_249E40B44(v7, v8);
  swift_unknownObjectRelease();
  *(a3 + 24) = v9;
  return a3;
}

uint64_t sub_249E40B44(void *a1, uint64_t a2)
{
  v4 = sub_249E7A6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + OBJC_IVAR____TtC10DropInCore18AudioSystemManager_xpcClientDataSource + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_285D094C0;
  swift_unknownObjectWeakAssign();

  sub_249E7A6A8();
  (*(v5 + 32))(a2 + OBJC_IVAR____TtC10DropInCore18AudioSystemManager_logger, v7, v4);
  *(a2 + 16) = [objc_opt_self() sharedAudioSystemController];
  sub_249DF6E7C();
  return a2;
}

char *sub_249E40CB0(void *a1, void *a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v6 - 8);
  v55 = &v48 - v7;
  v51 = sub_249E7A6B8();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_249E7A688();
  v10 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a3[OBJC_IVAR____TtC10DropInCore13DropInManager_messageCenter] = 0;
  v48 = OBJC_IVAR____TtC10DropInCore13DropInManager_logger;
  sub_249E7A6A8();
  *&a3[OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager] = 0;
  *&a3[OBJC_IVAR____TtC10DropInCore13DropInManager_xpcClientDataSource + 8] = 0;
  v13 = swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC10DropInCore13DropInManager_dropInStateSubscriber] = 0;
  *(v13 + 8) = &off_285D094C0;
  swift_unknownObjectWeakAssign();
  *&a3[OBJC_IVAR____TtC10DropInCore13DropInManager_homeManagerProvider] = a2;
  type metadata accessor for DropInStateManager(0);
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a3[OBJC_IVAR____TtC10DropInCore13DropInManager_stateManager] = sub_249E2F018();
  v53 = swift_getObjectType();
  sub_249DF5924();
  v15 = v14;
  type metadata accessor for DeviceManager(0);
  swift_allocObject();
  *&a3[OBJC_IVAR____TtC10DropInCore13DropInManager_deviceManager] = sub_249E4F83C(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C78, &qword_249E7F8C8);
  v16 = swift_allocObject();
  v54 = a1;
  *&a3[OBJC_IVAR____TtC10DropInCore13DropInManager_sessionManager] = sub_249E41380(v54, v16);
  type metadata accessor for TransactionManager(0);
  swift_allocObject();
  *&a3[OBJC_IVAR____TtC10DropInCore13DropInManager_transactionManager] = sub_249E33964();
  v17 = &a3[OBJC_IVAR____TtC10DropInCore13DropInManager_dropInSessionAnalyticEvent];
  v18 = type metadata accessor for DropInSessionAnalyticEvent(0);
  *v17 = 0;
  *(v17 + 1) = 0;
  v19 = v18[5];
  v20 = sub_249E7A5B8();
  __swift_storeEnumTagSinglePayload(&v17[v19], 1, 1, v20);
  __swift_storeEnumTagSinglePayload(&v17[v18[6]], 1, 1, v20);
  __swift_storeEnumTagSinglePayload(&v17[v18[7]], 1, 1, v20);
  __swift_storeEnumTagSinglePayload(&v17[v18[8]], 1, 1, v20);
  v21 = &v17[v18[9]];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v17[v18[10]];
  *v22 = 0;
  *(v22 + 1) = 0;
  (*(v49 + 16))(v9, &a3[v48], v51);
  sub_249E7A668();
  (*(v10 + 32))(&a3[OBJC_IVAR____TtC10DropInCore13DropInManager_signposter], v12, v50);
  v56.receiver = a3;
  v56.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v56, sel_init);
  v24 = objc_allocWithZone(type metadata accessor for IDSManager(0));
  v25 = v23;
  v26 = [v24 init];
  v27 = OBJC_IVAR____TtC10DropInCore10IDSManager_service;
  v28 = *&v26[OBJC_IVAR____TtC10DropInCore10IDSManager_service];
  v29 = *&v26[OBJC_IVAR____TtC10DropInCore10IDSManager_listenerID];
  v30 = *&v26[OBJC_IVAR____TtC10DropInCore10IDSManager_listenerID + 8];
  type metadata accessor for HomeParticipantValidator(0);
  swift_allocObject();
  swift_unknownObjectRetain();
  v31 = v28;

  v32 = sub_249E603F0(a2, v31, v29, v30);
  v33 = objc_allocWithZone(type metadata accessor for CallCenterManagerClient(0));
  v34 = v25;

  v35 = sub_249E4006C(v25, &off_285D08680, v32, v33);
  v36 = *&v34[OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager];
  *&v34[OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager] = v35;

  v37 = *&v26[v27];
  type metadata accessor for HomeMessageValidator(0);
  swift_allocObject();
  swift_unknownObjectRetain();
  v38 = sub_249E4AAF8(a2, v37);

  v39 = v26;
  v40 = sub_249E0DB10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C80, &qword_249E7F8D0);
  v41 = sub_249E7AA08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C88, &qword_249E7F8D8);
  swift_allocObject();
  *&v34[OBJC_IVAR____TtC10DropInCore13DropInManager_messageCenter] = sub_249E3D244(v38, v39, v40, v41);

  [a2 addDelegate:v34 queue:0];
  sub_249E0DCCC();
  sub_249DF5924();
  v43 = v42;
  v44 = sub_249E7AC78();
  v45 = v55;
  __swift_storeEnumTagSinglePayload(v55, 1, 1, v44);
  v46 = swift_allocObject();
  v46[2] = 0;
  v46[3] = 0;
  v46[4] = v43;
  v46[5] = v34;
  sub_249E5ED90(0, 0, v45, &unk_249E7F8E0, v46);
  swift_unknownObjectRelease();

  return v34;
}

uint64_t sub_249E41380(void *a1, uint64_t a2)
{
  v4 = sub_249E7A5B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v8 = qword_28130E758;
  v9 = sub_249E7A628();
  __swift_storeEnumTagSinglePayload(a2 + v8, 1, 1, v9);
  __swift_storeEnumTagSinglePayload(a2 + qword_28130E740, 1, 1, v9);
  *(a2 + qword_28130E738) = 0;
  __swift_storeEnumTagSinglePayload(a2 + qword_28130E748, 1, 1, v9);
  v10 = qword_28130E750;
  v11 = type metadata accessor for Pseudonym(0);
  __swift_storeEnumTagSinglePayload(a2 + v10, 1, 1, v11);
  sub_249E7A6A8();
  *(a2 + qword_28130DB98 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_285D094C0;
  swift_unknownObjectWeakAssign();
  *(a2 + qword_28130E730) = MEMORY[0x277D84FA0];
  sub_249E7A508();

  (*(v5 + 32))(a2 + qword_28130DB90, v7, v4);
  return a2;
}

void sub_249E415A4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v49 - v8;
  v10 = type metadata accessor for XPCClient(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC10DropInCore13DropInManager_logger;
  sub_249DF76A8(a2, v12);
  v14 = sub_249E7A698();
  v15 = sub_249E7AE28();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v50 = a4;
    v51 = v13;
    v18 = v9;
    v19 = v17;
    v52 = v17;
    *v16 = 136315138;
    v20 = sub_249E6A23C();
    v22 = v21;
    sub_249DF770C(v12);
    v23 = sub_249E3A958(v20, v22, &v52);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_249DEE000, v14, v15, "Did Remove XPC Client %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v24 = v19;
    v9 = v18;
    a4 = v50;
    MEMORY[0x24C205870](v24, -1, -1);
    MEMORY[0x24C205870](v16, -1, -1);
  }

  else
  {

    sub_249DF770C(v12);
  }

  sub_249E3CFA0(a3);
  v26 = v25;

  v27 = sub_249E7A698();
  v28 = sub_249E7AE28();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v52 = v30;
    *v29 = 134218242;
    *(v29 + 4) = *(a3 + 16);

    *(v29 + 12) = 2080;
    sub_249E42078(&qword_27EF23C28, type metadata accessor for XPCClient, &unk_249E80A98);
    v31 = sub_249E7AD68();
    v33 = sub_249E3A958(v31, v32, &v52);

    *(v29 + 14) = v33;
    _os_log_impl(&dword_249DEE000, v27, v28, "%ld Active Clients = %s", v29, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x24C205870](v30, -1, -1);
    MEMORY[0x24C205870](v29, -1, -1);
  }

  else
  {
  }

  v34 = sub_249E7A698();
  v35 = sub_249E7AE28();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 67109120;
    *(v36 + 4) = v26 & 1;
    _os_log_impl(&dword_249DEE000, v34, v35, "Active Clients Contains UI Client = %{BOOL}d", v36, 8u);
    MEMORY[0x24C205870](v36, -1, -1);
  }

  if ((v26 & 1) == 0)
  {
    v37 = sub_249E7A698();
    v38 = sub_249E7AE28();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_249DEE000, v37, v38, "XPC Client count is empty. Will terminate any active session.", v39, 2u);
      MEMORY[0x24C205870](v39, -1, -1);
    }

    v40 = *&a4[OBJC_IVAR____TtC10DropInCore13DropInManager_callCenterManager];
    if (v40)
    {
      v41 = v40;
      sub_249E067EC(0, v42, v43, v44, v45);

      v46 = sub_249E7AC78();
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v46);
      v47 = swift_allocObject();
      v47[2] = 0;
      v47[3] = 0;
      v47[4] = a4;
      v48 = a4;
      sub_249E5ED90(0, 0, v9, &unk_249E7F890, v47);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_249E41A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for XPCClient(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249DF76A8(a2, v7);
  v8 = sub_249E7A698();
  v9 = sub_249E7AE28();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v5;
    v29 = v11;
    v12 = v11;
    *v10 = 136315138;
    v13 = sub_249E6A23C();
    v15 = v14;
    sub_249DF770C(v7);
    v16 = sub_249E3A958(v13, v15, &v29);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_249DEE000, v8, v9, "Did Add XPC Client %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C205870](v12, -1, -1);
    MEMORY[0x24C205870](v10, -1, -1);
  }

  else
  {

    sub_249DF770C(v7);
  }

  v17 = sub_249E7A698();
  v18 = sub_249E7AE28();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 134218242;
    *(v19 + 4) = *(a3 + 16);

    *(v19 + 12) = 2080;
    sub_249E42078(&qword_27EF23C28, type metadata accessor for XPCClient, &unk_249E80A98);
    v21 = sub_249E7AD68();
    v23 = sub_249E3A958(v21, v22, &v29);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_249DEE000, v17, v18, "%ld Active Clients = %s", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x24C205870](v20, -1, -1);
    MEMORY[0x24C205870](v19, -1, -1);
  }

  else
  {
  }

  v24 = sub_249E7A698();
  v25 = sub_249E7AE28();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 67109120;
    sub_249E3CFA0(a3);
    *(v26 + 4) = v27 & 1;

    _os_log_impl(&dword_249DEE000, v24, v25, "Active Clients Contains UI Client = %{BOOL}d", v26, 8u);
    MEMORY[0x24C205870](v26, -1, -1);
  }

  else
  {
  }
}

uint64_t objectdestroy_29Tm()
{

  OUTLINED_FUNCTION_8_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_249E41E34()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_9(v3);

  return sub_249E1FFF4(v5, v6, v7, v1);
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t objectdestroy_43Tm_0()
{
  v1 = (type metadata accessor for XPCClient(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  sub_249E7A6B8();
  OUTLINED_FUNCTION_28_0();
  (*(v5 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_249E42000(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for XPCClient(0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_249E42078(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_249E420C0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_9(v4);

  return sub_249E0E040(v6, v7, v8, v2, v1);
}

uint64_t sub_249E42168(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_249E421B8()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_9(v1);

  return sub_249E722B8();
}

uint64_t OUTLINED_FUNCTION_9_3(uint64_t a1)
{

  return swift_unknownObjectWeakInit();
}

uint64_t type metadata accessor for DropInSessionAnalyticEvent(uint64_t a1)
{
  result = qword_28130E2F0;
  if (!qword_28130E2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E42390(uint64_t a1)
{
  sub_249E424BC(319, &qword_28130D2A8, MEMORY[0x277D837D0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_249E42464(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_249E424BC(319, &qword_28130D278, MEMORY[0x277D83B88]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_249E42464(uint64_t a1)
{
  if (!qword_28130D368)
  {
    sub_249E7A5B8();
    v1 = sub_249E7AFC8();
    if (!v2)
    {
      atomic_store(v1, &qword_28130D368);
    }
  }
}

void sub_249E424BC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_249E7AFC8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_249E42508()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_5_7();
  v76 = v3;
  OUTLINED_FUNCTION_2_13();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v72 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v72 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v72 - v11;
  v13 = sub_249E7A5B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_7();
  v74 = v15;
  OUTLINED_FUNCTION_2_13();
  MEMORY[0x28223BE20](v16);
  v78 = &v72 - v17;
  OUTLINED_FUNCTION_2_13();
  MEMORY[0x28223BE20](v18);
  v73 = &v72 - v19;
  OUTLINED_FUNCTION_2_13();
  MEMORY[0x28223BE20](v20);
  v22 = &v72 - v21;
  v77 = sub_249E42CB8();
  v23 = sub_249E7AA08();
  v24 = *(v0 + 8);
  v75 = v22;
  if (v24)
  {
    v25 = sub_249E7AA88();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_7();
    sub_249DFDE08(v25, 0x5F6E6F6973736553, 0xEC00000065707954, v26);
    v23 = v79;
  }

  else
  {
    v27 = sub_249DFDA24(0x5F6E6F6973736553, 0xEC00000065707954);
    if (v28)
    {
      v29 = v27;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_6_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23518, &unk_249E7D8F0);
      OUTLINED_FUNCTION_3_10();
      sub_249E7B208();
      OUTLINED_FUNCTION_4_10();

      v30 = v14;
      v31 = *(*(v23 + 56) + 8 * v29);
      OUTLINED_FUNCTION_7_5(v29, v32, MEMORY[0x277D837D0], v33, MEMORY[0x277D837E0]);

      v14 = v30;
    }
  }

  v34 = type metadata accessor for DropInSessionAnalyticEvent(0);
  sub_249E42CFC(v1 + v34[5], v12);
  OUTLINED_FUNCTION_0_11(v12);
  if (v38)
  {
    v35 = v12;
  }

  else
  {
    v72 = v14;
    v36 = *(v14 + 32);
    v37 = v75;
    v36(v75, v12, v13);
    sub_249E42CFC(v1 + v34[6], v10);
    OUTLINED_FUNCTION_0_11(v10);
    if (!v38)
    {
      v39 = v73;
      v36(v73, v10, v13);
      sub_249E7A518();
      sub_249E7ACF8();
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_1_7();
      sub_249DFDE08(v10, 0x75445F7075746553, 0xEE006E6F69746172, v40);
      v10 = v72;
      v41 = *(v72 + 8);
      v41(v39, v13);
      v41(v37, v13);
      v23 = v79;
      v14 = v10;
      goto LABEL_12;
    }

    v14 = v72;
    (*(v72 + 8))(v37, v13);
    v35 = v10;
  }

  sub_249E42D6C(v35);
LABEL_12:
  v42 = v78;
  sub_249E42CFC(v1 + v34[7], v7);
  OUTLINED_FUNCTION_0_11(v7);
  if (v38)
  {
    v43 = v7;
  }

  else
  {
    v44 = v14;
    v45 = *(v14 + 32);
    v45(v42, v7, v13);
    v10 = v76;
    sub_249E42CFC(v1 + v34[8], v76);
    OUTLINED_FUNCTION_0_11(v10);
    if (!v46)
    {
      v47 = v74;
      v45(v74, v10, v13);
      sub_249E7A518();
      sub_249E7ACF8();
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_1_7();
      sub_249DFDE08(v10, 0x7275445F6C6C6143, 0xED00006E6F697461, v48);
      v49 = *(v44 + 8);
      v49(v47, v13);
      v49(v42, v13);
      v23 = v79;
      goto LABEL_19;
    }

    (*(v44 + 8))(v42, v13);
    v43 = v10;
  }

  sub_249E42D6C(v43);
LABEL_19:
  if (*(v1 + v34[9] + 8) == 1)
  {
    sub_249DFDA24(0xD00000000000001ELL, 0x8000000249E82B70);
    if (v50)
    {
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_6_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23518, &unk_249E7D8F0);
      OUTLINED_FUNCTION_3_10();
      sub_249E7B208();
      OUTLINED_FUNCTION_4_10();

      v51 = *(*(v23 + 56) + 8 * v10);
      OUTLINED_FUNCTION_7_5(v10, v52, MEMORY[0x277D837D0], v53, MEMORY[0x277D837E0]);
    }

    sub_249DFDA24(0xD00000000000001CLL, 0x8000000249E82B90);
    if (v54)
    {
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_6_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23518, &unk_249E7D8F0);
      OUTLINED_FUNCTION_3_10();
      sub_249E7B208();
      OUTLINED_FUNCTION_4_10();

      v55 = *(*(v23 + 56) + 8 * v10);
      OUTLINED_FUNCTION_7_5(v10, v56, MEMORY[0x277D837D0], v57, MEMORY[0x277D837E0]);
    }
  }

  else
  {
    v58 = sub_249E7AD98();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_7();
    sub_249DFDE08(v58, 0xD00000000000001ELL, 0x8000000249E82B70, v59);
    v60 = v79;
    v61 = sub_249E7AD98();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v60;
    sub_249DFDE08(v61, 0xD00000000000001CLL, 0x8000000249E82B90, isUniquelyReferenced_nonNull_native);
    v23 = v79;
  }

  if (*(v1 + v34[10] + 8))
  {
    v63 = sub_249E7AA88();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_7();
    sub_249DFDE08(v63, 0x736165525F646E45, 0xEA00000000006E6FLL, v64);
    return v79;
  }

  else
  {
    v65 = sub_249DFDA24(0x736165525F646E45, 0xEA00000000006E6FLL);
    if (v66)
    {
      v67 = v65;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_6_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23518, &unk_249E7D8F0);
      OUTLINED_FUNCTION_3_10();
      sub_249E7B208();
      OUTLINED_FUNCTION_4_10();

      v68 = *(*(v23 + 56) + 8 * v67);
      OUTLINED_FUNCTION_7_5(v67, v69, MEMORY[0x277D837D0], v70, MEMORY[0x277D837E0]);
    }
  }

  return v23;
}

unint64_t sub_249E42CB8()
{
  result = qword_28130D150;
  if (!qword_28130D150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28130D150);
  }

  return result;
}

uint64_t sub_249E42CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E42D6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF236C0, &unk_249E7F8F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_249E7B218();
}

uint64_t OUTLINED_FUNCTION_8_4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_249E42E74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
  v5 = OUTLINED_FUNCTION_40(v4, MEMORY[0x277D84950]);
  *v6 = a2;

  return MEMORY[0x282200958](a1, v5);
}

uint64_t sub_249E42EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  sub_249E49F10(a1, v19 - v9, &unk_27EF236B0, &qword_249E7DFD0);
  v11 = sub_249E7AC78();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_249E2A8CC(v10, &unk_27EF236B0, &qword_249E7DFD0);
  }

  else
  {
    sub_249E7AC68();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_53_1();
    swift_unknownObjectRetain();
    v12 = sub_249E7AC28();
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = *v4;
  OUTLINED_FUNCTION_8_3();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = (v14 | v12);
  if (v14 | v12)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v12;
    v20[3] = v14;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v15;
  swift_task_create();
}

uint64_t sub_249E430E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_249E7AC78();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_249E5ED90(0, 0, v3, &unk_249E7FA58, v5);
}

uint64_t sub_249E431CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  v5 = swift_task_alloc();
  *(v4 + 56) = v5;
  *v5 = v4;
  v5[1] = sub_249E43260;

  return sub_249E434D8();
}

uint64_t sub_249E43260()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v7 = v6;
  *(v8 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_9_0();

    return v12();
  }
}

uint64_t sub_249E4337C()
{
  v1 = *(v0 + 64);
  v2 = v1;
  v3 = sub_249E7A698();
  v4 = sub_249E7AE08();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v6 = OUTLINED_FUNCTION_4();
    v7 = OUTLINED_FUNCTION_4_0();
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_249E7B3A8();
    v16 = OUTLINED_FUNCTION_42(v8, v9, v10, v11, v12, v13, v14, v15, v7);

    *(v6 + 4) = v16;
    _os_log_impl(&dword_249DEE000, v3, v4, "Failed to Activate Companion Link %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_15();
  }

  else
  {
    v17 = *(v0 + 64);
  }

  OUTLINED_FUNCTION_9_0();

  return v18();
}

uint64_t sub_249E434F8()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_22();
  *(v0 + 24) = swift_allocObject();
  swift_weakInit();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_249E435E8;

  return sub_249E703C8();
}

uint64_t sub_249E435E8()
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

    return v12(v3);
  }
}

uint64_t sub_249E43724()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_9_0();

  return v0();
}

uint64_t sub_249E43780(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_249E430E8();

  return swift_unknownObjectRelease();
}

uint64_t sub_249E437C8()
{
  OUTLINED_FUNCTION_11();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_249E43850;

  return sub_249E434D8();
}

uint64_t sub_249E43850()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v4 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;

  if (v0)
  {

    v3 = 0;
  }

  v6 = *(v4 + 8);

  return v6(v3);
}

uint64_t sub_249E4394C(uint64_t a1, uint64_t a2)
{
  v3 = sub_249E7AE68();
  v11 = *(v3 - 8);
  v12 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v10 = v5 - v4;
  sub_249E7AE58();
  OUTLINED_FUNCTION_28_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v7 = sub_249E7A958();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_1_0();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_249E7A6A8();
  v8 = OBJC_IVAR____TtC10DropInCore14RapportManager_companionLinkClientLoader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24490, &unk_249E7FA60);
  swift_allocObject();
  *(v2 + v8) = sub_249E499D4(0, 0);
  sub_249DF691C(0, &qword_28130D228, 0x277D85C78);
  sub_249DF3F24();
  sub_249E7A948();
  sub_249E4A514();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C68, &qword_249E7F8C0);
  sub_249E42168(&unk_28130D280, &unk_27EF23C68, &qword_249E7F8C0, MEMORY[0x277D83970]);
  sub_249E7B018();
  (*(v11 + 104))(v10, *MEMORY[0x277D85260], v12);
  *(v2 + 32) = sub_249E7AE98();
  *(v2 + OBJC_IVAR____TtC10DropInCore14RapportManager_eventNames) = a1;
  *(v2 + OBJC_IVAR____TtC10DropInCore14RapportManager_requestNames) = a2;
  return v2;
}

uint64_t sub_249E43C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  OUTLINED_FUNCTION_18();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249E43C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50();
  v55 = v14;

  v16 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_63_0())
  {
    v17 = v14[5];
    v18 = OUTLINED_FUNCTION_188();
    v54 = OUTLINED_FUNCTION_62_0();
    *v18 = 136315394;
    v19 = sub_249E7A9E8();
    sub_249E3A958(v19, v20, &v54);
    OUTLINED_FUNCTION_53_1();

    *(v18 + 4) = v15;
    *(v18 + 12) = 2080;
    v21 = sub_249DF691C(0, &qword_27EF234D8, 0x277D44170);
    v22 = MEMORY[0x24C204800](v17, v21);
    v24 = sub_249E3A958(v22, v23, &v54);

    *(v18 + 14) = v24;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v25, v26, v27, v28, v29, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_1();
  }

  v30 = sub_249E51FB4();
  v31 = MEMORY[0x277D84F90];
  if (v30)
  {
    v32 = v30;
    v54 = MEMORY[0x277D84F90];
    v33 = sub_249E7B1C8();
    if (v32 < 0)
    {
      __break(1u);
      return MEMORY[0x282200600](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
    }

    v41 = 0;
    v42 = v14[5];
    v43 = v42 & 0xC000000000000001;
    v44 = v42 + 32;
    do
    {
      if (v43)
      {
        v45 = MEMORY[0x24C204D50](v41, v14[5]);
      }

      else
      {
        v45 = *(v44 + 8 * v41);
      }

      v46 = v45;
      ++v41;
      sub_249E61370();

      sub_249E7B1A8();
      sub_249E7B1D8();
      sub_249E7B1E8();
      sub_249E7B1B8();
    }

    while (v32 != v41);
    v31 = v54;
  }

  v14[7] = v31;
  v48 = v14[3];
  v47 = v14[4];
  v49 = v14[2];
  OUTLINED_FUNCTION_22();
  v50 = swift_allocObject();
  v14[8] = v50;
  swift_weakInit();
  v51 = swift_task_alloc();
  v14[9] = v51;
  v51[2] = v50;
  v51[3] = v48;
  v51[4] = v47;
  v51[5] = v31;
  v51[6] = v49;
  v52 = swift_task_alloc();
  v14[10] = v52;
  *v52 = v14;
  v52[1] = sub_249E43F98;
  v56 = MEMORY[0x277D84F78] + 8;
  OUTLINED_FUNCTION_41_0();

  return MEMORY[0x282200600](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E43F98()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_14_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v2 = v1;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E440FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v7[27] = v8;
  v7[28] = *(v8 - 8);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E44214, 0, 0);
}

uint64_t sub_249E44214()
{
  OUTLINED_FUNCTION_8_1(v0[20] + 16, (v0 + 13));
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = v0[29];
    v2 = v0[28];
    v3 = v0[27];
    v40 = v0;
    v41 = v0[22];
    v4 = v0[21];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23CA0, &qword_249E7F9A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249E7D7D0;
    *(inited + 32) = sub_249E7AAA8();
    *(inited + 40) = v6;
    sub_249E7A808();
    OUTLINED_FUNCTION_49_0();
    sub_249E42168(v7, &unk_27EF23820, &unk_249E7E860, v8);
    OUTLINED_FUNCTION_48_0();
    sub_249E42168(v9, &unk_27EF23820, &unk_249E7E860, v10);
    OUTLINED_FUNCTION_47_0();
    sub_249E42168(v11, &unk_27EF23820, &unk_249E7E860, v12);
    sub_249E7A6E8();
    (*(v2 + 8))(v1, v3);
    v38 = sub_249E7AA08();
    OUTLINED_FUNCTION_54_1();
    v43 = v13;
    MEMORY[0x24C204750](v4, v41);
    result = sub_249E51FB4();
    v37 = result;
    if (result)
    {
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v15 = 0;
      v36 = *v0[19];
      v16 = v0[23];
      v34 = v0 + 9;
      v35 = v16 & 0xC000000000000001;
      v33 = v16 + 32;
      do
      {
        v42 = v15;
        if (v35)
        {
          v17 = MEMORY[0x24C204D50](v15, v0[23]);
        }

        else
        {
          v17 = *(v33 + 8 * v15);
        }

        v18 = v17;
        v20 = v0[25];
        v19 = v0[26];
        v21 = v0[24];
        v22 = sub_249E7AC78();
        __swift_storeEnumTagSinglePayload(v19, 1, 1, v22);
        v23 = swift_allocObject();
        v23[2] = 0;
        v23[3] = 0;
        v23[4] = Strong;
        v23[5] = v18;
        v23[6] = 0xD00000000000001DLL;
        v23[7] = v43;
        v23[8] = v21;
        v23[9] = v38;
        sub_249E49F10(v19, v20, &unk_27EF236B0, &qword_249E7DFD0);
        LODWORD(v19) = __swift_getEnumTagSinglePayload(v20, 1, v22);
        v0 = v40;

        v24 = v18;

        v25 = v40[25];
        if (v19 == 1)
        {
          sub_249E2A8CC(v40[25], &unk_27EF236B0, &qword_249E7DFD0);
        }

        else
        {
          sub_249E7AC68();
          (*(*(v22 - 8) + 8))(v25, v22);
        }

        if (v23[2])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v26 = sub_249E7AC28();
          v28 = v27;
          swift_unknownObjectRelease();
        }

        else
        {
          v26 = 0;
          v28 = 0;
        }

        OUTLINED_FUNCTION_8_3();
        v29 = swift_allocObject();
        *(v29 + 16) = &unk_249E7F9E8;
        *(v29 + 24) = v23;

        if (v28 | v26)
        {
          v30 = v34;
          *v34 = 0;
          v34[1] = 0;
          v40[11] = v26;
          v40[12] = v28;
        }

        else
        {
          v30 = 0;
        }

        v15 = v42 + 1;
        v31 = v40[26];
        v40[16] = 1;
        v40[17] = v30;
        v40[18] = v36;
        swift_task_create();

        sub_249E2A8CC(v31, &unk_27EF236B0, &qword_249E7DFD0);
      }

      while (v37 != v42 + 1);
    }
  }

  OUTLINED_FUNCTION_9_0();

  return v32();
}

uint64_t sub_249E4471C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[34] = a8;
  v8[35] = v10;
  v8[32] = a6;
  v8[33] = a7;
  v8[30] = a4;
  v8[31] = a5;
  return MEMORY[0x2822009F8](sub_249E4474C, 0, 0);
}

uint64_t sub_249E4474C()
{
  OUTLINED_FUNCTION_82();
  v1 = v0[31];
  v0[36] = OBJC_IVAR____TtC10DropInCore14RapportManager_logger;
  v2 = v1;
  v3 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_63_0())
  {
    v4 = v0[31];
    OUTLINED_FUNCTION_4();
    v5 = OUTLINED_FUNCTION_31_2();
    *v2 = 138412290;
    *(v2 + 1) = v4;
    *v5 = v4;
    v6 = v4;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    sub_249E2A8CC(v5, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_1();
  }

  v12 = v0[31];

  v0[2] = v0;
  v0[3] = sub_249E448E8;
  v13 = swift_continuation_init();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C98, &qword_249E7F9A0);
  v0[37] = v14;
  v0[25] = v14;
  OUTLINED_FUNCTION_15_2();
  v0[19] = 1107296256;
  OUTLINED_FUNCTION_14_2();
  v0[21] = v15;
  v0[22] = v13;
  [v12 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_249E448E8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 304) = *(v3 + 48);
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E449E4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v25 = *(v22 + 280);
  v26 = *(v22 + 248);

  v27 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_63_0())
  {
    v28 = *(v22 + 256);
    v29 = *(v22 + 264);
    v52 = *(v22 + 248);
    swift_slowAlloc();
    v30 = OUTLINED_FUNCTION_31_2();
    a11 = swift_slowAlloc();
    *v25 = 136315906;
    *(v25 + 4) = sub_249E3A958(v28, v29, &a11);
    *(v25 + 12) = 2080;
    v31 = sub_249E7A9E8();
    v33 = sub_249E3A958(v31, v32, &a11);

    *(v25 + 14) = v33;
    *(v25 + 22) = 2112;
    v34 = [v52 destinationDevice];
    *(v25 + 24) = v34;
    *v30 = v34;
    *(v25 + 32) = 2080;
    v35 = sub_249E7A9E8();
    sub_249E3A958(v35, v36, &a11);
    OUTLINED_FUNCTION_53_1();

    *(v25 + 34) = v33;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v37, v38, v39, v40, v41, 0x2Au);
    sub_249E2A8CC(v30, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_15();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_1();
  }

  v42 = *(v22 + 272);
  v43 = *(v22 + 280);
  v53 = *(v22 + 296);
  v54 = *(v22 + 248);
  v44 = sub_249E7AA88();
  *(v22 + 312) = v44;
  sub_249E56C58(v42);
  v45 = sub_249E7A9C8();
  *(v22 + 320) = v45;

  sub_249E56EE0(v43);
  v46 = sub_249E7A9C8();
  *(v22 + 328) = v46;

  *(v22 + 80) = v22;
  *(v22 + 88) = sub_249E44D24;
  swift_continuation_init();
  *(v22 + 200) = v53;
  OUTLINED_FUNCTION_15_2();
  *(v22 + 152) = 1107296256;
  OUTLINED_FUNCTION_14_2();
  *(v22 + 168) = v48;
  *(v22 + 176) = v47;
  [v54 sendEventID:v44 event:v45 options:v46 completion:v22 + 144];
  OUTLINED_FUNCTION_72();

  return MEMORY[0x282200938](v49);
}

uint64_t sub_249E44D24()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 336) = *(v3 + 112);
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E44E20()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 320);
  v2 = *(v0 + 312);

  [*(v0 + 248) invalidate];
  OUTLINED_FUNCTION_9_0();

  return v3();
}

uint64_t sub_249E44E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  swift_willThrow();
  v25 = *(v22 + 304);
  v26 = *(v22 + 248);
  v27 = v25;
  v28 = sub_249E7A698();
  v29 = sub_249E7AE08();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v22 + 248);
    v31 = OUTLINED_FUNCTION_188();
    v32 = OUTLINED_FUNCTION_6();
    a9 = OUTLINED_FUNCTION_4_0();
    a10 = a9;
    OUTLINED_FUNCTION_28_1(5.778e-34);
    v33 = *(v22 + 216);
    v34 = v30;
    v35 = sub_249E7B3A8();
    sub_249E3A958(v35, v36, &a10);
    OUTLINED_FUNCTION_61_0();
    *(v31 + 14) = v33;
    OUTLINED_FUNCTION_196(&dword_249DEE000, v37, v38, "Failed to send on link %@, Error = %s");
    sub_249E2A8CC(v32, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_13_3();
    __swift_destroy_boxed_opaque_existential_0(a9);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
  }

  [*(v22 + 248) invalidate];
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_72();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E45008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v25 = *(v22 + 328);
  v27 = *(v22 + 312);
  v26 = *(v22 + 320);
  swift_willThrow();

  v28 = *(v22 + 336);
  v29 = *(v22 + 248);
  v30 = v28;
  v31 = sub_249E7A698();
  v32 = sub_249E7AE08();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v22 + 248);
    v34 = OUTLINED_FUNCTION_188();
    v35 = OUTLINED_FUNCTION_6();
    a9 = OUTLINED_FUNCTION_4_0();
    a10 = a9;
    OUTLINED_FUNCTION_28_1(5.778e-34);
    v36 = *(v22 + 216);
    v37 = v33;
    v38 = sub_249E7B3A8();
    sub_249E3A958(v38, v39, &a10);
    OUTLINED_FUNCTION_61_0();
    *(v34 + 14) = v36;
    OUTLINED_FUNCTION_196(&dword_249DEE000, v40, v41, "Failed to send on link %@, Error = %s");
    sub_249E2A8CC(v35, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_13_3();
    __swift_destroy_boxed_opaque_existential_0(a9);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
  }

  [*(v22 + 248) invalidate];
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_72();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E4518C(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    return sub_249E42E74(v3, a2);
  }

  return j__swift_continuation_throwingResume();
}

uint64_t sub_249E451F0()
{
  OUTLINED_FUNCTION_11();
  *(v1 + 680) = v0;
  *(v1 + 145) = v2;
  *(v1 + 672) = v3;
  *(v1 + 664) = v4;
  *(v1 + 656) = v5;
  *(v1 + 648) = v6;
  *(v1 + 640) = v7;
  *(v1 + 632) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  *(v1 + 688) = v9;
  *(v1 + 696) = *(v9 - 8);
  *(v1 + 704) = swift_task_alloc();
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_249E452D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v26 = v22[83];
  v22[89] = OBJC_IVAR____TtC10DropInCore14RapportManager_logger;

  v27 = v26;
  v28 = sub_249E7A698();
  v29 = sub_249E7AE28();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = v22[83];
    v31 = OUTLINED_FUNCTION_188();
    v32 = OUTLINED_FUNCTION_6();
    v33 = OUTLINED_FUNCTION_4_0();
    a11 = v33;
    *v31 = 136315394;
    v34 = sub_249E7A9E8();
    sub_249E3A958(v34, v35, &a11);
    OUTLINED_FUNCTION_53_1();

    *(v31 + 4) = v23;
    *(v31 + 12) = 2112;
    *(v31 + 14) = v30;
    *v32 = v30;
    v36 = v30;
    _os_log_impl(&dword_249DEE000, v28, v29, "Handling Send Request %s to Device %@", v31, 0x16u);
    sub_249E2A8CC(v32, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_1();
    __swift_destroy_boxed_opaque_existential_0(v33);
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_1();
  }

  v37 = sub_249E61370();
  v22[90] = v37;
  v38 = sub_249E7A698();
  v39 = sub_249E7AE28();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_4();
    v41 = OUTLINED_FUNCTION_6();
    *v40 = 138412290;
    *(v40 + 4) = v37;
    *v41 = v37;
    v42 = v37;
    OUTLINED_FUNCTION_19_1(&dword_249DEE000, v43, v44, "Activating Link %@");
    sub_249E2A8CC(v41, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15_1();
  }

  v22[2] = v22;
  v22[3] = sub_249E455AC;
  v45 = swift_continuation_init();
  v22[71] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C98, &qword_249E7F9A0);
  v22[68] = v45;
  v22[64] = MEMORY[0x277D85DD0];
  v22[65] = 1107296256;
  v22[66] = sub_249E4518C;
  v22[67] = &block_descriptor_4;
  [v37 activateWithCompletion_];
  OUTLINED_FUNCTION_72();

  return MEMORY[0x282200938](v46);
}

uint64_t sub_249E455AC()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 728) = *(v3 + 48);
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E456A8()
{
  v46 = v0;
  v1 = *(v0 + 145);
  OUTLINED_FUNCTION_54_1();
  v44 = 0xD00000000000001FLL;
  v45 = v2;
  MEMORY[0x24C204750]();
  v3 = v45;
  *(v0 + 736) = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23CA0, &qword_249E7F9A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7D7D0;
  *(inited + 32) = sub_249E7AAA8();
  *(inited + 40) = v5;
  if (v1)
  {
    v6 = *(v0 + 704);
    v7 = *(v0 + 696);
    v8 = *(v0 + 688);
    sub_249E7A838();
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_52_1();
    sub_249E42168(v9, v10, v11, v12);
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_52_1();
    sub_249E42168(v13, v14, v15, v16);
    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_52_1();
    sub_249E42168(v17, v18, v19, v20);
    sub_249E7A6E8();
    (*(v7 + 8))(v6, v8);
  }

  else
  {
    *(inited + 48) = *(v0 + 672);
  }

  v21 = *(v0 + 664);
  v22 = sub_249E7AA08();

  v23 = v21;

  v24 = sub_249E7A698();
  v25 = sub_249E7AE28();

  if (os_log_type_enabled(v24, v25))
  {
    v42 = v22;
    v26 = *(v0 + 664);
    v27 = swift_slowAlloc();
    v43 = v3;
    v28 = OUTLINED_FUNCTION_6();
    v44 = swift_slowAlloc();
    *v27 = 136315906;
    *(v27 + 4) = sub_249E3A958(0xD00000000000001FLL, v43, &v44);
    OUTLINED_FUNCTION_42_0();
    v29 = sub_249E7A9E8();
    v31 = sub_249E3A958(v29, v30, &v44);

    *(v27 + 14) = v31;
    *(v27 + 22) = 2112;
    *(v27 + 24) = v26;
    *v28 = v26;
    *(v27 + 32) = 2080;
    v32 = v26;
    v22 = v42;
    v33 = sub_249E7A9E8();
    v35 = sub_249E3A958(v33, v34, &v44);

    *(v27 + 34) = v35;
    _os_log_impl(&dword_249DEE000, v24, v25, "Sending Request, RequestID = %s, Request = %s, Destination Device = %@, Options = %s", v27, 0x2Au);
    sub_249E2A8CC(v28, &unk_27EF23C30, &qword_249E7DA20);
    v3 = v43;
    OUTLINED_FUNCTION_1();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_15();
  }

  else
  {
  }

  sub_249E56C58(*(v0 + 640));
  v37 = v36;
  *(v0 + 744) = v36;
  sub_249E56EE0(v22);
  v39 = v38;
  *(v0 + 752) = v38;

  v40 = swift_task_alloc();
  *(v0 + 760) = v40;
  *v40 = v0;
  v40[1] = sub_249E45AB0;

  return sub_249E613F4(0xD00000000000001FLL, v3, v37, v39);
}

uint64_t sub_249E45AB0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  *v4 = *v1;
  v3[96] = v5;
  v3[97] = v6;
  v3[98] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249E45BE0()
{
  v42 = v0;

  sub_249E46078(v1, v0 + 152);
  memcpy((v0 + 224), (v0 + 152), 0x41uLL);

  v2 = *(v0 + 216);
  if (v2 == 255)
  {
    v26 = *(v0 + 720);

    v27 = sub_249E49CD8();
    OUTLINED_FUNCTION_40(&type metadata for RapportManager.RapportManagerError, v27);
    *v28 = 2;
    swift_willThrow();
    [v26 invalidate];

    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    v4 = *(v0 + 152);
    v3 = *(v0 + 160);
    v5 = *(v0 + 168);
    v6 = *(v0 + 176);
    v7 = *(v0 + 184);
    v8 = *(v0 + 192);
    v9 = *(v0 + 200);
    v10 = *(v0 + 208);
    *(v0 + 80) = v4;
    *(v0 + 88) = v3;
    v39 = v5;
    v40 = v3;
    *(v0 + 96) = v5;
    *(v0 + 104) = v6;
    v37 = v7;
    v38 = v6;
    *(v0 + 112) = v7;
    *(v0 + 120) = v8;
    v35 = v9;
    v36 = v8;
    *(v0 + 128) = v9;
    *(v0 + 136) = v10;
    v34 = v10;
    *(v0 + 144) = v2;

    sub_249E49F10(v0 + 152, v0 + 296, &qword_27EF23CB0, &unk_249E7F9B0);
    v11 = sub_249E7A698();
    v12 = sub_249E7AE28();

    OUTLINED_FUNCTION_52_1();
    sub_249E2A8CC(v13, v14, v15);
    if (os_log_type_enabled(v11, v12))
    {
      v16 = OUTLINED_FUNCTION_188();
      v41[0] = OUTLINED_FUNCTION_62_0();
      *v16 = 136315394;

      v17 = sub_249E7A9E8();
      v18 = v4;
      v20 = v19;

      v21 = sub_249E3A958(v17, v20, v41);
      v4 = v18;

      *(v16 + 4) = v21;
      OUTLINED_FUNCTION_42_0();
      memcpy((v0 + 368), (v0 + 224), 0x41uLL);
      sub_249E49D2C(v0 + 368, v0 + 440);
      v22 = sub_249DF34CC();
      v24 = v23;
      sub_249E2A8CC(v0 + 152, &qword_27EF23CB0, &unk_249E7F9B0);
      v25 = sub_249E3A958(v22, v24, v41);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_249DEE000, v11, v12, "Received Response %s, Sender = %s", v16, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_15();
    }

    else
    {
    }

    v30 = *(v0 + 768);
    v31 = *(v0 + 720);
    v32 = *(v0 + 632);
    [v31 invalidate];

    *v32 = v30;
    *(v32 + 8) = v4;
    *(v32 + 16) = v40;
    *(v32 + 24) = v39;
    *(v32 + 32) = v38;
    *(v32 + 40) = v37;
    *(v32 + 48) = v36;
    *(v32 + 56) = v35;
    *(v32 + 64) = v34;
    *(v32 + 72) = v2 & 1;
    OUTLINED_FUNCTION_9_0();
  }

  return v29();
}

uint64_t sub_249E45F58()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 720);
  swift_willThrow();
  [v1 invalidate];

  OUTLINED_FUNCTION_9_0();

  return v2();
}

uint64_t sub_249E45FDC()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 720);

  [v1 invalidate];

  OUTLINED_FUNCTION_9_0();

  return v2();
}

uint64_t sub_249E46078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v21 = 0u;
    v22 = 0u;
    goto LABEL_12;
  }

  sub_249E7AAA8();
  sub_249E7B0C8();
  sub_249E558D4(&v19, a1, &v21);
  sub_249DFE850(&v19);
  if (!*(&v22 + 1))
  {
LABEL_12:
    result = sub_249E2A8CC(&v21, &unk_27EF23C40, &qword_249E7D8E0);
    goto LABEL_13;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_13:
    v5 = 0;
    v6 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = -1;
    goto LABEL_14;
  }

  v5 = v19;
  v6 = v20;
  *&v21 = sub_249E7AAA8();
  *(&v21 + 1) = v7;
  sub_249E7B0C8();
  sub_249E558D4(&v19, a1, &v21);
  sub_249DFE850(&v19);
  if (*(&v22 + 1))
  {
    v8 = swift_dynamicCast();
    if (v8)
    {
      v9 = v19;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v20;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_249E2A8CC(&v21, &unk_27EF23C40, &qword_249E7D8E0);
    v9 = 0;
    v10 = 0;
  }

  *&v21 = sub_249E7AAA8();
  *(&v21 + 1) = v16;
  sub_249E7B0C8();
  sub_249E558D4(&v19, a1, &v21);
  sub_249DFE850(&v19);
  if (*(&v22 + 1))
  {
    v17 = swift_dynamicCast();
    if (v17)
    {
      v11 = v19;
    }

    else
    {
      v11 = 0;
    }

    if (v17)
    {
      v12 = v20;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    sub_249E2A8CC(&v21, &unk_27EF23C40, &qword_249E7D8E0);
    v11 = 0;
    v12 = 0;
  }

  *&v21 = sub_249E7AAA8();
  *(&v21 + 1) = v18;
  sub_249E7B0C8();
  sub_249E558D4(&v19, a1, &v21);
  sub_249DFE850(&v19);
  if (*(&v22 + 1))
  {
    result = swift_dynamicCast();
    v13 = v19;
    v14 = v20;
    if (!result)
    {
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    result = sub_249E2A8CC(&v21, &unk_27EF23C40, &qword_249E7D8E0);
    v13 = 0;
    v14 = 0;
  }

  v15 = 1;
LABEL_14:
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  *(a2 + 56) = v14;
  *(a2 + 64) = v15;
  return result;
}

uint64_t sub_249E46384()
{
  sub_249DF77C0(v0 + 16);

  v1 = OBJC_IVAR____TtC10DropInCore14RapportManager_logger;
  sub_249E7A6B8();
  OUTLINED_FUNCTION_28_0();
  (*(v2 + 8))(&v1[v0]);

  return v0;
}

uint64_t sub_249E4641C()
{
  sub_249E46384();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RapportManager(uint64_t a1)
{
  result = qword_28130DC98;
  if (!qword_28130DC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E464C8(uint64_t a1)
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

uint64_t sub_249E465A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
  return MEMORY[0x2822009F8](sub_249E465C4, 0, 0);
}

uint64_t sub_249E465C4()
{
  OUTLINED_FUNCTION_8_1(v0[22] + 16, (v0 + 18));
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v2 = Strong;
    aBlock = v0 + 10;
    v3 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
    v0[24] = v3;
    [v3 setControlFlags_];
    v0[25] = OBJC_IVAR____TtC10DropInCore14RapportManager_logger;
    v4 = v3;
    v5 = sub_249E7A698();
    v6 = sub_249E7AE28();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_4();
      v8 = OUTLINED_FUNCTION_6();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&dword_249DEE000, v5, v6, "Activating Companion Link Client %@", v7, 0xCu);
      sub_249E2A8CC(v8, &unk_27EF23C30, &qword_249E7DA20);
      OUTLINED_FUNCTION_13_3();
      OUTLINED_FUNCTION_1();
    }

    v0[14] = sub_249E4A094;
    v0[15] = v2;
    v10 = MEMORY[0x277D85DD0];
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_249E52140;
    v0[13] = &block_descriptor_38_0;
    v11 = _Block_copy(aBlock);

    [v4 setInterruptionHandler_];
    _Block_release(v11);
    v0[14] = sub_249E4A0B0;
    v0[15] = v2;
    v40 = v10;
    v0[10] = v10;
    v0[11] = 1107296256;
    v0[12] = sub_249E52140;
    v0[13] = &block_descriptor_41;
    v12 = _Block_copy(aBlock);

    v41 = v4;
    [v4 setInvalidationHandler_];
    _Block_release(v12);
    v13 = *(v2 + OBJC_IVAR____TtC10DropInCore14RapportManager_requestNames);
    v14 = *(v13 + 16);
    OUTLINED_FUNCTION_54_1();

    v16 = 0;
    v17 = (v13 + 40);
    while (v14 != v16)
    {
      if (v16 >= *(v13 + 16))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return MEMORY[0x282200938](v15);
      }

      ++v16;
      v19 = *(v17 - 1);
      v18 = *v17;

      MEMORY[0x24C204750](v19, v18);
      v20 = sub_249E7AA88();

      OUTLINED_FUNCTION_8_3();
      v21 = swift_allocObject();
      *(v21 + 16) = sub_249E4A0B4;
      *(v21 + 24) = v2;
      v0[14] = sub_249E4A0B8;
      v0[15] = v21;
      v0[10] = v40;
      v0[11] = 1107296256;
      v0[12] = sub_249E475FC;
      v0[13] = &block_descriptor_47;
      v22 = _Block_copy(aBlock);

      [v41 registerRequestID:v20 options:0 handler:v22];
      _Block_release(v22);

      v17 += 2;
    }

    v23 = *(v2 + OBJC_IVAR____TtC10DropInCore14RapportManager_eventNames);
    v24 = *(v23 + 16);
    OUTLINED_FUNCTION_54_1();

    v25 = 0;
    v26 = (v23 + 40);
    while (v24 != v25)
    {
      if (v25 >= *(v23 + 16))
      {
        goto LABEL_19;
      }

      ++v25;
      v27 = *(v26 - 1);
      v28 = *v26;

      MEMORY[0x24C204750](v27, v28);
      v29 = sub_249E7AA88();

      OUTLINED_FUNCTION_8_3();
      v30 = swift_allocObject();
      *(v30 + 16) = sub_249E4A0E0;
      *(v30 + 24) = v2;
      v0[14] = sub_249E4A0E4;
      v0[15] = v30;
      v0[10] = v40;
      v0[11] = 1107296256;
      v0[12] = sub_249E47BDC;
      v0[13] = &block_descriptor_53;
      v31 = _Block_copy(aBlock);

      [v41 registerEventID:v29 options:0 handler:v31];
      _Block_release(v31);

      v26 += 2;
    }

    v0[14] = sub_249E4A10C;
    v0[15] = v2;
    OUTLINED_FUNCTION_51_1();
    v0[12] = sub_249E47C9C;
    v0[13] = &block_descriptor_56;
    v32 = _Block_copy(aBlock);

    [v41 setDeviceFoundHandler_];
    _Block_release(v32);
    v0[14] = sub_249E4A130;
    v0[15] = v2;
    OUTLINED_FUNCTION_51_1();
    v0[12] = sub_249E47C9C;
    v0[13] = &block_descriptor_59;
    v33 = _Block_copy(aBlock);

    [v41 setDeviceLostHandler_];
    _Block_release(v33);
    v0[14] = sub_249E4A154;
    v0[15] = v2;
    OUTLINED_FUNCTION_51_1();
    v0[12] = sub_249E47F84;
    v0[13] = &block_descriptor_62_0;
    v34 = _Block_copy(aBlock);

    [v41 setDeviceChangedHandler_];
    _Block_release(v34);
    v0[2] = v0;
    v0[3] = sub_249E46D2C;
    v35 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C98, &qword_249E7F9A0);
    OUTLINED_FUNCTION_51_1();
    v0[12] = sub_249E4518C;
    v0[13] = &block_descriptor_65;
    v0[14] = v35;
    [v41 activateWithCompletion_];
    v15 = (v0 + 2);

    return MEMORY[0x282200938](v15);
  }

  else
  {
    v36 = sub_249E49CD8();
    OUTLINED_FUNCTION_40(&type metadata for RapportManager.RapportManagerError, v36);
    *v37 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_9_0();

    return v38();
  }
}

uint64_t sub_249E46D2C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E46E28()
{
  OUTLINED_FUNCTION_82();
  v1 = *(v0 + 192);
  v2 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_63_0())
  {
    v3 = *(v0 + 192);
    OUTLINED_FUNCTION_4();
    v4 = OUTLINED_FUNCTION_31_2();
    *v1 = 138412290;
    *(v1 + 1) = v3;
    *v4 = v3;
    v5 = v3;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    sub_249E2A8CC(v4, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_1();
  }

  v11 = *(v0 + 192);
  v12 = *(v0 + 168);

  *v12 = v11;
  OUTLINED_FUNCTION_9_0();

  return v13();
}

uint64_t sub_249E46F3C()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 192);
  swift_willThrow();

  OUTLINED_FUNCTION_9_0();

  return v2();
}

void sub_249E46FB0(uint64_t a1)
{
  oslog = sub_249E7A698();
  v1 = sub_249E7AE28();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_249DEE000, oslog, v1, "Rapport Connection Interrupted", v2, 2u);
    MEMORY[0x24C205870](v2, -1, -1);
  }
}

uint64_t sub_249E4705C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_249E7A698();
  v4 = sub_249E7AE28();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_249DEE000, v3, v4, "Rapport Connection Invalidated", v5, 2u);
    MEMORY[0x24C205870](v5, -1, -1);
  }

  v6 = sub_249E7AC78();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  sub_249E5ED90(0, 0, v2, &unk_249E7FA48, v8);
}

void sub_249E471DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  if (a1)
  {
    sub_249E57980(a1);
    if (v11)
    {
      v12 = v11;
      sub_249E46078(a2, &v41);
      v13 = v45;
      if (v45 == 255)
      {
      }

      else
      {
        v39 = a3;
        v38 = *(&v41 + 1);
        v14 = v41;
        v36 = *(&v42 + 1);
        v37 = v42;
        v34 = *(&v43 + 1);
        v35 = v43;
        v32 = *(&v44 + 1);
        v33 = v44;
        *__src = v41;
        *&__src[16] = v42;
        *&__src[32] = v43;
        *&__src[48] = v44;
        __src[64] = v45;

        sub_249E49F10(&v41, v40, &qword_27EF23CB0, &unk_249E7F9B0);
        v15 = sub_249E7A698();
        v16 = sub_249E7AE28();

        sub_249E2A8CC(&v41, &qword_27EF23CB0, &unk_249E7F9B0);
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v40[0] = v31;
          *v17 = 136315394;
          v18 = sub_249E7A9E8();
          HIDWORD(v30) = v16;
          v20 = v14;
          v21 = sub_249E3A958(v18, v19, v40);

          *(v17 + 4) = v21;
          *(v17 + 12) = 2080;
          sub_249E4A270(v20, v38, v37, v36, v35, v34, v33, v32, v13 & 1);
          v22 = sub_249DF34CC();
          v24 = v23;
          sub_249E2A8CC(&v41, &qword_27EF23CB0, &unk_249E7F9B0);
          v25 = sub_249E3A958(v22, v24, v40);

          *(v17 + 14) = v25;
          _os_log_impl(&dword_249DEE000, v15, BYTE4(v30), "Received Request %s from %s", v17, 0x16u);
          v26 = v31;
          swift_arrayDestroy();
          MEMORY[0x24C205870](v26, -1, -1);
          MEMORY[0x24C205870](v17, -1, -1);
        }

        v27 = sub_249E7AC78();
        __swift_storeEnumTagSinglePayload(v10, 1, 1, v27);
        v28 = swift_allocObject();
        swift_weakInit();
        v29 = swift_allocObject();
        v29[2] = 0;
        v29[3] = 0;
        v29[4] = v28;
        v29[5] = v12;
        memcpy(v29 + 6, __src, 0x41uLL);
        v29[15] = v39;
        v29[16] = a4;

        sub_249E5ED90(0, 0, v10, &unk_249E7FA30, v29);
      }
    }
  }
}

uint64_t sub_249E475FC(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = *(a1 + 32);
  v7 = sub_249E7A9D8();
  if (a3)
  {
    a3 = sub_249E7A9D8();
  }

  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v6(v7, a3, sub_249E4A2DC, v9);
}

void sub_249E47708(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a1)
  {
    v7 = sub_249E7A9C8();
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a2)
  {
LABEL_3:
    v6 = sub_249E7A9C8();
  }

LABEL_4:
  if (a3)
  {
    v8 = sub_249E7A4C8();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, v6);
}

void sub_249E477F0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  if (a1)
  {
    sub_249E57980(a1);
    if (v7)
    {
      v8 = v7;
      sub_249E46078(a2, &v35);
      v9 = v39;
      if (v39 == 255)
      {
      }

      else
      {
        v33 = *(&v35 + 1);
        v10 = v35;
        v31 = *(&v36 + 1);
        v32 = v36;
        v29 = *(&v37 + 1);
        v30 = v37;
        v27 = *(&v38 + 1);
        v28 = v38;
        *__src = v35;
        *&__src[16] = v36;
        *&__src[32] = v37;
        *&__src[48] = v38;
        __src[64] = v39;

        sub_249E49F10(&v35, v34, &qword_27EF23CB0, &unk_249E7F9B0);
        v11 = sub_249E7A698();
        v12 = sub_249E7AE28();

        sub_249E2A8CC(&v35, &qword_27EF23CB0, &unk_249E7F9B0);
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v34[0] = v26;
          *v13 = 136315394;
          v14 = sub_249E7A9E8();
          v16 = v10;
          v17 = sub_249E3A958(v14, v15, v34);

          *(v13 + 4) = v17;
          *(v13 + 12) = 2080;
          sub_249E4A270(v16, v33, v32, v31, v30, v29, v28, v27, v9 & 1);
          v18 = sub_249DF34CC();
          v20 = v19;
          sub_249E2A8CC(&v35, &qword_27EF23CB0, &unk_249E7F9B0);
          v21 = sub_249E3A958(v18, v20, v34);

          *(v13 + 14) = v21;
          _os_log_impl(&dword_249DEE000, v11, v12, "Received Event %s from %s", v13, 0x16u);
          v22 = v26;
          swift_arrayDestroy();
          MEMORY[0x24C205870](v22, -1, -1);
          MEMORY[0x24C205870](v13, -1, -1);
        }

        v23 = sub_249E7AC78();
        __swift_storeEnumTagSinglePayload(v6, 1, 1, v23);
        v24 = swift_allocObject();
        swift_weakInit();
        v25 = swift_allocObject();
        v25[2] = 0;
        v25[3] = 0;
        v25[4] = v24;
        v25[5] = v8;
        memcpy(v25 + 6, __src, 0x41uLL);
        sub_249E5ED90(0, 0, v6, &unk_249E7FA20, v25);
      }
    }
  }
}

uint64_t sub_249E47BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_249E7A9D8();
  if (a3)
  {
    a3 = sub_249E7A9D8();
  }

  v4(v5, a3);
}

void sub_249E47C9C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_249E47D04(void *a1, uint64_t a2, const char *a3)
{
  v4 = OBJC_IVAR____TtC10DropInCore14RapportManager_logger;
  v5 = a1;
  oslog = sub_249E7A698();
  v6 = sub_249E7AE28();
  if (os_log_type_enabled(oslog, v6))
  {
    swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_31_2();
    *v4 = 138412546;
    *(v4 + 4) = v5;
    *v7 = v5;
    *(v4 + 6) = 1024;
    v8 = v5;
    v9 = sub_249E616D8();

    *(v4 + 14) = v9;
    _os_log_impl(&dword_249DEE000, oslog, v6, a3, v4, 0x12u);
    sub_249E2A8CC(v7, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_1();
    v10 = oslog;
  }

  else
  {

    v10 = v5;
  }
}

void sub_249E47E34(void *a1)
{
  v1 = a1;
  oslog = sub_249E7A698();
  v2 = sub_249E7AE28();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412546;
    *(v3 + 4) = v1;
    *v4 = v1;
    *(v3 + 12) = 1024;
    v5 = v1;
    v6 = sub_249E616D8();

    *(v3 + 14) = v6;
    _os_log_impl(&dword_249DEE000, oslog, v2, "Device Changed %@, Supports Drop In = %{BOOL}d", v3, 0x12u);
    sub_249E2A8CC(v4, &unk_27EF23C30, &qword_249E7DA20);
    MEMORY[0x24C205870](v4, -1, -1);
    MEMORY[0x24C205870](v3, -1, -1);
    v7 = oslog;
  }

  else
  {

    v7 = v1;
  }
}

void sub_249E47F84(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_249E48018()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_1(v0[9] + 16, (v0 + 2));
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC10DropInCore14RapportManager_companionLinkClientLoader);
    v0[11] = v2;

    return MEMORY[0x2822009F8](sub_249E480DC, v2, 0);
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v3();
  }
}

uint64_t sub_249E480DC()
{
  OUTLINED_FUNCTION_11();
  sub_249E714C0();

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_249E48178;

  return sub_249E434D8();
}

uint64_t sub_249E48178()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v7 = v6;
  *(v8 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249E48278()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_9_0();

  return v0();
}

uint64_t sub_249E482D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_56_0();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_50();
  a18 = v20;
  v24 = v20[13];
  v25 = v24;
  v26 = sub_249E7A698();
  v27 = sub_249E7AE08();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v20[13];
    v29 = OUTLINED_FUNCTION_4();
    v30 = OUTLINED_FUNCTION_4_0();
    a10 = v30;
    *v29 = 136315138;
    swift_getErrorValue();
    v31 = sub_249E7B3A8();
    sub_249E3A958(v31, v32, &a10);
    OUTLINED_FUNCTION_61_0();
    *(v29 + 4) = v21;
    _os_log_impl(&dword_249DEE000, v26, v27, "Failed to Activate Companion Link %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_1();
  }

  else
  {
    v33 = v20[13];
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_41_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
}

uint64_t sub_249E48430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_249E48454, 0, 0);
}

uint64_t sub_249E48454()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_1(v0[5] + 16, (v0 + 2));
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_249E4852C;

    return sub_249E437C8();
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v4();
  }
}

uint64_t sub_249E4852C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 80) = v3;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E48618()
{
  OUTLINED_FUNCTION_82();
  v1 = v0[10];
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[11] = Strong;
    if (Strong)
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_19_2();
      v3 = swift_task_alloc();
      v0[12] = v3;
      *v3 = v0;
      v3[1] = sub_249E48790;
      v4 = OUTLINED_FUNCTION_25_0(v0[8]);

      return v5(v4);
    }
  }

  OUTLINED_FUNCTION_9_0();

  return v7();
}

uint64_t sub_249E48790()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v2 = v1;

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E48894()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_9_0();

  return v2();
}

uint64_t sub_249E488F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[38] = a7;
  v8[39] = a8;
  v8[36] = a5;
  v8[37] = a6;
  v8[35] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v8[40] = v9;
  v8[41] = *(v9 - 8);
  v8[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E489C8, 0, 0);
}

uint64_t sub_249E489C8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_1(v0[35] + 16, (v0 + 27));
  Strong = swift_weakLoadStrong();
  v0[43] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[44] = v2;
    *v2 = v0;
    v2[1] = sub_249E48AA8;

    return sub_249E437C8();
  }

  else
  {

    OUTLINED_FUNCTION_9_0();

    return v4();
  }
}

uint64_t sub_249E48AA8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_38_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 360) = v3;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249E48B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  if (v22[45])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v22[46] = Strong;
    if (Strong)
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_19_2();
      v83 = v26 + *v26;
      v27 = swift_task_alloc();
      v22[47] = v27;
      *v27 = v22;
      v27[1] = sub_249E48F68;
      OUTLINED_FUNCTION_25_0(v22[43]);
      OUTLINED_FUNCTION_72();

      return v34(v28, v29, v30, v31, v32, v33, v34, v35, a9, v83, a11, a12, a13, a14);
    }

    v38 = sub_249E49CD8();
    v39 = OUTLINED_FUNCTION_40(&type metadata for RapportManager.RapportManagerError, v38);
    *v40 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23CA0, &qword_249E7F9A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249E7D7D0;
    *(inited + 32) = sub_249E7AAA8();
    *(inited + 40) = v42;
    sub_249E7A818();
    v43 = &unk_249E7E860;
    OUTLINED_FUNCTION_49_0();
    v48 = OUTLINED_FUNCTION_37_1(v44, v45, v46, v47);
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_37_1(v49, v50, v51, v52);
    OUTLINED_FUNCTION_47_0();
    v57 = OUTLINED_FUNCTION_37_1(v53, v54, v55, v56);
    OUTLINED_FUNCTION_20_1(v57);
    v58 = OUTLINED_FUNCTION_34_2();
    v59(v58);
    sub_249E7AA08();
    if (v39)
    {
      v60 = v22[37];
      v61 = v39;
      sub_249E49D2C(v60, (v22 + 2));
      v62 = v39;
      v63 = sub_249E7A698();
      v43 = sub_249E7AE08();

      sub_249E2A190(v60);
      if (os_log_type_enabled(v63, v43))
      {
        v64 = OUTLINED_FUNCTION_188();
        v65 = OUTLINED_FUNCTION_6();
        v48 = OUTLINED_FUNCTION_4_0();
        a11 = v48;
        *v64 = 138412546;
        v66 = v39;
        v67 = _swift_stdlib_bridgeErrorToNSError();
        *(v64 + 4) = v67;
        *v65 = v67;
        OUTLINED_FUNCTION_42_0();
        v68 = sub_249DF34CC();
        v70 = sub_249E3A958(v68, v69, &a11);

        *(v64 + 14) = v70;
        OUTLINED_FUNCTION_29_1(&dword_249DEE000, v71, v72, "Send Rapport Response Error: %@ to %s");
        sub_249E2A8CC(v65, &unk_27EF23C30, &qword_249E7DA20);
        OUTLINED_FUNCTION_1();
        __swift_destroy_boxed_opaque_existential_0(v48);
        OUTLINED_FUNCTION_13_3();
        OUTLINED_FUNCTION_15();
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_57_0();
    v74 = v73;

    (v48)(0, v74, v39);
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_72();

  return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E48F68()
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
  *(v5 + 384) = v0;

  if (!v0)
  {
    swift_unknownObjectRelease();
    *(v5 + 392) = v3;
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_249E4907C()
{
  OUTLINED_FUNCTION_50();
  v47 = v0;
  v1 = v0[49];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23CA0, &qword_249E7F9A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7D7D0;
  *(inited + 32) = sub_249E7AAA8();
  *(inited + 40) = v3;
  sub_249E7A818();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_37_1(v4, v5, v6, v7);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_37_1(v8, v9, v10, v11);
  OUTLINED_FUNCTION_47_0();
  v16 = OUTLINED_FUNCTION_37_1(v12, v13, v14, v15);
  OUTLINED_FUNCTION_20_1(v16);
  v17 = OUTLINED_FUNCTION_34_2();
  v18(v17);
  v19 = sub_249E7AA08();
  if (v1)
  {
    v20 = v0[37];

    sub_249E49D2C(v20, (v0 + 11));
    v21 = sub_249E7A698();
    v22 = sub_249E7AE28();
    sub_249E2A190(v20);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_188();
      v46 = OUTLINED_FUNCTION_62_0();
      *v23 = 136315394;
      v24 = sub_249E7A9F8();
      v26 = v25;

      v27 = sub_249E3A958(v24, v26, &v46);

      *(v23 + 4) = v27;
      OUTLINED_FUNCTION_42_0();
      v28 = sub_249DF34CC();
      OUTLINED_FUNCTION_42(v28, v29, v30, v31, v32, v33, v34, v35, v46);
      OUTLINED_FUNCTION_61_0();
      *(v23 + 14) = v27;
      OUTLINED_FUNCTION_29_1(&dword_249DEE000, v36, v37, "Send Rapport Response: %s to %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_3();
      OUTLINED_FUNCTION_15();
    }

    else
    {
    }

    sub_249E56C58(v1);
    v38 = v39;
  }

  else
  {
    v38 = 0;
  }

  v40 = v0[45];
  v41 = v0[38];
  sub_249E56EE0(v19);
  v43 = v42;

  v41(v38, v43, 0);

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_34();

  __asm { BRAA            X1, X16 }
}

void sub_249E49358()
{
  OUTLINED_FUNCTION_50();
  v83 = v0;
  v1 = *(v0 + 384);
  swift_unknownObjectRelease();
  *(v0 + 264) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23720, &qword_249E7E090);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 384);
  if (v3 && *(v0 + 81) == 6)
  {

    v5 = sub_249E7A698();
    v6 = sub_249E7AE28();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 360);
    if (v7)
    {
      v9 = OUTLINED_FUNCTION_4();
      v10 = OUTLINED_FUNCTION_4_0();
      v82 = v10;
      *v9 = 136315138;
      v11 = sub_249E7A9E8();
      v13 = sub_249E3A958(v11, v12, &v82);

      *(v9 + 4) = v13;
      OUTLINED_FUNCTION_19_1(&dword_249DEE000, v14, v15, "Request already handled, Request = %s");
      __swift_destroy_boxed_opaque_existential_0(v10);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_15_1();
    }

    else
    {
    }

    v77 = *(v0 + 264);
  }

  else
  {

    v16 = v4;
    v17 = sub_249E7A698();
    v18 = sub_249E7AE08();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_188();
      v82 = OUTLINED_FUNCTION_62_0();
      *v19 = 136315394;
      swift_getErrorValue();
      v20 = sub_249E7B3A8();
      v28 = OUTLINED_FUNCTION_42(v20, v21, v22, v23, v24, v25, v26, v27, v82);

      *(v19 + 4) = v28;
      *(v19 + 12) = 2080;
      v29 = sub_249E7A9E8();
      v37 = OUTLINED_FUNCTION_42(v29, v30, v31, v32, v33, v34, v35, v36, v82);

      *(v19 + 14) = v37;
      _os_log_impl(&dword_249DEE000, v17, v18, "Failed to handle request. Error = %s, Request = %s", v19, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_15_1();
    }

    v38 = *(v0 + 384);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23CA0, &qword_249E7F9A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249E7D7D0;
    *(inited + 32) = sub_249E7AAA8();
    *(inited + 40) = v40;
    sub_249E7A818();
    v41 = &unk_249E7E860;
    OUTLINED_FUNCTION_49_0();
    v46 = OUTLINED_FUNCTION_37_1(v42, v43, v44, v45);
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_37_1(v47, v48, v49, v50);
    OUTLINED_FUNCTION_47_0();
    v55 = OUTLINED_FUNCTION_37_1(v51, v52, v53, v54);
    OUTLINED_FUNCTION_20_1(v55);
    v56 = OUTLINED_FUNCTION_34_2();
    v57(v56);
    sub_249E7AA08();
    if (v38)
    {
      v58 = *(v0 + 296);
      v59 = v38;
      sub_249E49D2C(v58, v0 + 16);
      v60 = v38;
      v61 = sub_249E7A698();
      v41 = sub_249E7AE08();

      sub_249E2A190(v58);
      if (os_log_type_enabled(v61, v41))
      {
        v62 = OUTLINED_FUNCTION_188();
        v63 = OUTLINED_FUNCTION_6();
        v46 = OUTLINED_FUNCTION_4_0();
        v82 = v46;
        *v62 = 138412546;
        v64 = v38;
        v65 = _swift_stdlib_bridgeErrorToNSError();
        *(v62 + 4) = v65;
        *v63 = v65;
        OUTLINED_FUNCTION_42_0();
        v66 = sub_249DF34CC();
        v74 = OUTLINED_FUNCTION_42(v66, v67, v68, v69, v70, v71, v72, v73, v82);

        *(v62 + 14) = v74;
        OUTLINED_FUNCTION_29_1(&dword_249DEE000, v75, v76, "Send Rapport Response Error: %@ to %s");
        sub_249E2A8CC(v63, &unk_27EF23C30, &qword_249E7DA20);
        OUTLINED_FUNCTION_1();
        __swift_destroy_boxed_opaque_existential_0(v46);
        OUTLINED_FUNCTION_13_3();
        OUTLINED_FUNCTION_15();
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_57_0();
    v79 = v78;

    (v46)(0, v79, v38);

    v77 = v38;
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_34();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_249E498AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 2;
  sub_249DF691C(0, &unk_28130D1D0, 0x277D6EEB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23CC0, &qword_249E7FA78);
  v6 = sub_249E7AAC8();
  MEMORY[0x24C204750](v6);

  sub_249E7A6A8();
  v7 = *(v2 + 112);
  v8 = *(v3 + 120);
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  sub_249DF1A08(a1, a2);
  sub_249DF2D58(v7, v8);
  sub_249DF2D58(a1, a2);
  return v3;
}

uint64_t sub_249E499D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 2;
  sub_249DF691C(0, &unk_28130D1E0, 0x277D44160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23CB8, &qword_249E7FA70);
  v6 = sub_249E7AAC8();
  MEMORY[0x24C204750](v6);

  sub_249E7A6A8();
  v7 = *(v2 + 112);
  v8 = *(v3 + 120);
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  sub_249DF1A08(a1, a2);
  sub_249DF2D58(v7, v8);
  sub_249DF2D58(a1, a2);
  return v3;
}

uint64_t sub_249E49AFC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_249E49BF4;

  return v6(a1);
}

uint64_t sub_249E49BF4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v2 = v1;

  OUTLINED_FUNCTION_9_0();

  return v3();
}

unint64_t sub_249E49CD8()
{
  result = qword_27EF23CA8;
  if (!qword_27EF23CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23CA8);
  }

  return result;
}

uint64_t sub_249E49D88(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_3(v5);
  *v6 = v7;
  v6[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_49_1();

  return sub_249E440FC(v8, v9, v10, v11, v12, v3, v4);
}

uint64_t sub_249E49E54()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_4_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  v1[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_34();

  return sub_249E4471C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_249E49F10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_28_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_249E49F70()
{
  OUTLINED_FUNCTION_23();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_26_1(v1);

  return v4(v3);
}

uint64_t sub_249E4A004()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  *v4 = v5;
  v4[1] = sub_249E042BC;

  return sub_249E465A4(v2, v0);
}

uint64_t block_copy_helper_36_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}