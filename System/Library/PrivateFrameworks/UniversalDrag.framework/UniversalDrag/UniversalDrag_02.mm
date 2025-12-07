_BYTE *storeEnumTagSinglePayload for DragComponent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706AA51CLL);
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

uint64_t getEnumTagSinglePayload for PasteboardDataTransferID.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *sub_2706AA5A4(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2706AA640);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2706AA680(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2706AA6D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2706AA73C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2706AA790(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

unint64_t sub_2706AA804()
{
  result = qword_28081D390;
  if (!qword_28081D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D390);
  }

  return result;
}

unint64_t sub_2706AA85C()
{
  result = qword_28081D398;
  if (!qword_28081D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D398);
  }

  return result;
}

unint64_t sub_2706AA8B4()
{
  result = qword_28081D3A0;
  if (!qword_28081D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D3A0);
  }

  return result;
}

unint64_t sub_2706AA90C()
{
  result = qword_28081D3A8;
  if (!qword_28081D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D3A8);
  }

  return result;
}

unint64_t sub_2706AA964()
{
  result = qword_28081D3B0;
  if (!qword_28081D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D3B0);
  }

  return result;
}

unint64_t sub_2706AA9BC()
{
  result = qword_28081D3B8;
  if (!qword_28081D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D3B8);
  }

  return result;
}

unint64_t sub_2706AAA14()
{
  result = qword_28081D3C0;
  if (!qword_28081D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D3C0);
  }

  return result;
}

unint64_t sub_2706AAA6C()
{
  result = qword_28081D3C8;
  if (!qword_28081D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D3C8);
  }

  return result;
}

unint64_t sub_2706AAAC4()
{
  result = qword_28081D3D0;
  if (!qword_28081D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D3D0);
  }

  return result;
}

unint64_t sub_2706AAB18()
{
  result = qword_28081D3E0;
  if (!qword_28081D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D3E0);
  }

  return result;
}

unint64_t sub_2706AAB6C()
{
  result = qword_28081D3E8;
  if (!qword_28081D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D3E8);
  }

  return result;
}

unint64_t sub_2706AABC0()
{
  result = qword_28081D3F8;
  if (!qword_28081D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D3F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DragPresentationItemUpdate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x2706AACE0);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2706AAD1C()
{
  result = qword_28081D400;
  if (!qword_28081D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D400);
  }

  return result;
}

unint64_t sub_2706AAD74()
{
  result = qword_28081D408;
  if (!qword_28081D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D408);
  }

  return result;
}

unint64_t sub_2706AADCC()
{
  result = qword_28081D410;
  if (!qword_28081D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D410);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2706E66AC();
}

uint64_t OUTLINED_FUNCTION_21_2()
{

  return swift_getWitnessTable();
}

uint64_t sub_2706AAF94()
{
  OUTLINED_FUNCTION_11_4();
  v5 = (v1 + OBJC_IVAR____TtC13UniversalDrag22PasteboardDataProvider_data);
  *v5 = v6;
  v5[1] = v7;
  sub_270692D3C(v6, v7);
  sub_2706A3BA4(0, 0xF000000000000000);
  OUTLINED_FUNCTION_10_4();
  sub_2706AE63C(v0, v1 + v8, v9);
  sub_2706AB02C(v4);
  sub_270688E88(v3, v2);
  sub_2706AE590();
  return v1;
}

uint64_t sub_2706AB02C(uint64_t a1)
{
  swift_weakInit();
  swift_weakAssign();

  return v1;
}

void sub_2706AB070()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v13 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PasteboardDataTransferID(0);
  v15 = OUTLINED_FUNCTION_16_3(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_5();
  v16 = *(v2 + OBJC_IVAR____TtC13UniversalDrag22PasteboardDataProvider_data + 8);
  if (v16 >> 60 == 15)
  {
    sub_2706DD768();
LABEL_5:
    OUTLINED_FUNCTION_16_0();
    return;
  }

  v17 = *(v2 + OBJC_IVAR____TtC13UniversalDrag22PasteboardDataProvider_data);
  v18 = OUTLINED_FUNCTION_19_5();
  sub_270692D3C(v18, v19);
  v20 = OUTLINED_FUNCTION_19_5();
  if ((MEMORY[0x2743A5B30](v20) & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_4();
    v35 = v21;
    v36 = v22;
    sub_2706AE63C(v2 + v23, v1, v24);
    v33 = "NSError16@?<v@?>24";
    (*(v9 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v7);
    v25 = *(v9 + 80);
    v34 = v6;
    v26 = (v25 + 48) & ~v25;
    v27 = swift_allocObject();
    *(v27 + 2) = v4;
    *(v27 + 3) = v2;
    *(v27 + 4) = v17;
    *(v27 + 5) = v16;
    (*(v9 + 32))(&v27[v26], v13, v7);
    type metadata accessor for Completion();
    swift_allocObject();
    v28 = OUTLINED_FUNCTION_19_5();
    sub_2706A6E0C(v28, v29);

    v30 = sub_2706DD8C4(0xD00000000000005ELL, v33 | 0x8000000000000000, 55, sub_2706AE8E0, v27);
    sub_2706AB990(0, v35, 0, v34, v1, v30);

    v31 = OUTLINED_FUNCTION_19_5();
    sub_2706A3BA4(v31, v32);
    sub_2706AE590();
    goto LABEL_5;
  }

  __break(1u);
}

void sub_2706AB2C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a4;
  v11 = sub_2706E576C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PasteboardDataTransferID(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18 = a1;
    sub_2706DD768();
  }

  else
  {
    sub_2706AE63C(a3 + OBJC_IVAR____TtC13UniversalDrag22PasteboardDataProvider_id, v17, type metadata accessor for PasteboardDataTransferID);
    v24 = "NSError16@?<v@?>24";
    (*(v12 + 16))(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v11);
    v19 = *(v12 + 80);
    v25 = a5;
    v20 = (v19 + 32) & ~v19;
    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    (*(v12 + 32))(v21 + v20, v14, v11);
    type metadata accessor for Completion();
    swift_allocObject();

    v22 = sub_2706DD8C4(0xD00000000000005ELL, v24 | 0x8000000000000000, 64, sub_2706AE9FC, v21);
    sub_2706ABAE0(v26, v25, a6, v17, v22);

    sub_2706AE590();
  }
}

void sub_2706AB558(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PasteboardDataTransferID(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = a1;
    sub_2706DD768();
  }

  else
  {
    sub_2706AE63C(a3 + OBJC_IVAR____TtC13UniversalDrag22PasteboardDataProvider_id, v10, type metadata accessor for PasteboardDataTransferID);
    sub_2706ABC18(v10, a4, a2);
    sub_2706AE590();
  }
}

uint64_t sub_2706AB690()
{
  OUTLINED_FUNCTION_3_4();
  v1 = *(v0 + OBJC_IVAR____TtC13UniversalDrag22PasteboardDataProvider_data);
  v2 = *(v0 + OBJC_IVAR____TtC13UniversalDrag22PasteboardDataProvider_data + 8);

  return sub_2706A3BA4(v1, v2);
}

uint64_t sub_2706AB6D0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_3_4();
  sub_2706A3BA4(*(v0 + OBJC_IVAR____TtC13UniversalDrag22PasteboardDataProvider_data), *(v0 + OBJC_IVAR____TtC13UniversalDrag22PasteboardDataProvider_data + 8));
  return v0;
}

uint64_t sub_2706AB710()
{
  sub_2706AB6D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2706AB790(uint64_t a1)
{
  result = sub_2706E576C();
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

void sub_2706AB828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for PasteboardDataTransferID(0);
  v29 = OUTLINED_FUNCTION_5_4(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  v34 = &a9 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_4();
  v35 = OUTLINED_FUNCTION_22_2();
  sub_2706AE63C(v35, v36, v37);
  v38 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v39 = (v33 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  sub_2706A66AC(v34, v40 + v38);
  v41 = (v40 + v39);
  *v41 = v27;
  v41[1] = v25;
  *(v40 + ((v39 + 23) & 0xFFFFFFFFFFFFFFF8)) = v23;
  type metadata accessor for Completion();
  swift_allocObject();

  sub_2706DD8C4(0xD00000000000005ELL, 0x80000002706F05E0, 205, sub_2706AE788, v40);
  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_2706ABECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_archiveSource) = 0;
  v7 = OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_completions;
  type metadata accessor for Completions();
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F90];
  *(v3 + v7) = v8;
  v9 = OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_url;
  v10 = sub_2706E565C();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v3 + v9, a2, v10);
  OUTLINED_FUNCTION_10_4();
  sub_2706AE63C(a3, v3 + v12, v13);
  sub_2706AB02C(a1);
  sub_2706AE590();
  (*(v11 + 8))(a2, v10);
  return v3;
}

void sub_2706ABFEC()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v10 = *(v0 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_completions);
  swift_beginAccess();

  MEMORY[0x2743A5F60](v11);
  sub_2706E2658(*((*(v10 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2706E5B4C();
  swift_endAccess();

  if (!*(v0 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_archiveSource))
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
    v13 = sub_2706E55DC();
    (*(v6 + 16))(v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v4);
    v14 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    (*(v6 + 32))(v15 + v14, v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v17[4] = sub_2706ADDD0;
    v17[5] = v15;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_2706AD280;
    v17[3] = &block_descriptor_1;
    v16 = _Block_copy(v17);

    [v12 __coordinateReadingItemAtURL_options_purposeID_byAccessor_];

    _Block_release(v16);
  }

  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_2706AC254(void (*a1)(uint64_t, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = a6;
  v70 = a1;
  v72 = sub_2706E576C();
  v69 = *(v72 - 8);
  v10 = *(v69 + 64);
  MEMORY[0x28223BE20](v72);
  v68 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PasteboardDataTransferID(0);
  MEMORY[0x28223BE20](v11 - 8);
  v67 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D450, &qword_2706EAA20);
  MEMORY[0x28223BE20](v13 - 8);
  v73 = (&v63 - v14);
  v74 = sub_2706E565C();
  v71 = *(v74 - 8);
  v15 = MEMORY[0x28223BE20](v74);
  v65 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v63 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  type metadata accessor for Completion();
  swift_allocObject();
  sub_2706A5AA4(a3, a4);
  v20 = sub_2706DD8C4(0xD00000000000005ELL, 0x80000002706F05E0, 115, sub_2706ADF38, v19);
  v21 = *(a5 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_completions);
  swift_beginAccess();

  MEMORY[0x2743A5F60](v22);
  sub_2706E2658(*((*(v21 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2706E5B4C();
  swift_endAccess();

  swift_allocObject();

  v75 = sub_2706DD8C4(0xD00000000000005ELL, 0x80000002706F05E0, 118, sub_2706ADF68, a5);
  if (a2)
  {
    v23 = a2;
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v24 = sub_2706E58DC();
    v25 = __swift_project_value_buffer(v24, qword_2808292F0);
    MEMORY[0x28223BE20](v25);
    *(&v63 - 2) = a2;
    sub_270694664(sub_2706ACA80, 0, sub_2706A5A60, (&v63 - 4), v26, v27, v28, v29, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76[0]);
    v30 = a2;
    sub_2706DD768();

    v31 = a2;
LABEL_11:
  }

  v32 = v67;
  v33 = v68;
  v34 = v69;
  v64 = v10;
  v35 = v71;
  v36 = v72;
  v37 = v73;
  sub_2706ADF70(v70, v73);
  if (__swift_getEnumTagSinglePayload(v37, 1, v74) == 1)
  {
    sub_2706ADE58(v73);
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v38 = sub_2706E58DC();
    __swift_project_value_buffer(v38, qword_2808292F0);

    v39 = sub_2706E58BC();
    v40 = sub_2706E5BFC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v76[0] = v42;
      *v41 = 136446210;
      v43 = sub_2706E572C();
      v45 = sub_2706B8734(8, v43, v44);
      v46 = MEMORY[0x2743A5EC0](v45);
      v48 = v47;

      v49 = sub_2706C83E8(v46, v48, v76);

      *(v41 + 4) = v49;
      _os_log_impl(&dword_270680000, v39, v40, "file coordination provided, no url: id=%{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x2743A75B0](v42, -1, -1);
      MEMORY[0x2743A75B0](v41, -1, -1);
    }

    sub_270694B50();
    v50 = swift_allocError();
    *v51 = 0xC000000000000020;
    sub_2706DD768();
    v31 = v50;
    goto LABEL_11;
  }

  v53 = *(v35 + 32);
  v54 = v18;
  v63 = v18;
  v55 = v74;
  v53(v18, v73, v74);
  v56 = a5;
  sub_2706AE63C(a5 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_id, v32, type metadata accessor for PasteboardDataTransferID);
  v73 = v20;
  v70 = *(v34 + 32);
  v70(v33, v32, v36);
  (*(v35 + 16))(v65, v54, v55);
  type metadata accessor for ArchiveTransferSource(0);
  swift_allocObject();
  sub_2706D2258();
  v58 = v57;
  *(a5 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_archiveSource) = v57;

  (*(v34 + 16))(v33, v66, v36);
  v59 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v60 = (v64 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = v75;
  v62 = swift_allocObject();
  *(v62 + 16) = v56;
  v70(v62 + v59, v33, v72);
  *(v62 + v60) = v61;
  *(v62 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8)) = v58;

  sub_2706D2578();

  return (*(v71 + 8))(v63, v74);
}

uint64_t sub_2706ACA30(uint64_t a1, uint64_t a2)
{

  sub_2706DAAE8(a1);
}

uint64_t sub_2706ACA9C(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_2706E576C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_id;
    v17 = swift_allocObject();
    swift_getErrorValue();
    *(v17 + 16) = sub_2706E653C();
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a1;
    type metadata accessor for Completion();
    swift_allocObject();

    sub_2706AE1C0(a1, 1);
    v20 = sub_2706DD8C4(0xD00000000000005ELL, 0x80000002706F05E0, 181, sub_2706AE198, v19);
    sub_2706ABD58(a4, a3 + v16, v17 | 0x6000000000000000, v20);
  }

  else
  {
    v25 = "NSError16@?<v@?>24";
    v26 = OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_id;
    (*(v13 + 16))(&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v12);
    v21 = (*(v13 + 80) + 40) & ~*(v13 + 80);
    v22 = swift_allocObject();
    *(v22 + 2) = a5;
    *(v22 + 3) = a6;
    *(v22 + 4) = a3;
    (*(v13 + 32))(&v22[v21], v15, v12);
    type metadata accessor for Completion();
    swift_allocObject();

    v23 = sub_2706DD8C4(0xD00000000000005ELL, v25 | 0x8000000000000000, 142, sub_2706AE280, v22);
    sub_2706AB990(1, a1, 0, a4, a3 + v26, v23);
  }
}

void sub_2706ACD70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a3;
  v9 = sub_2706E576C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = a1;
    sub_2706DD768();
  }

  else
  {
    v25 = *(v10 + 16);
    v25(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v9);
    v26 = a2;
    v14 = *(v10 + 80);
    v24 = a5;
    v15 = (v14 + 24) & ~v14;
    v16 = v15 + v11;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    v23 = *(v10 + 32);
    v23(v17 + v15, v12, v9);
    v18 = v27;
    *(v27 + 32) = sub_2706AE394;
    *(v18 + 40) = v17;
    v19 = a4;

    v25(v12, v24, v9);
    v20 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    v23(v21 + v15, v12, v9);
    *(v21 + v20) = v26;
    type metadata accessor for Completion();
    swift_allocObject();

    sub_2706DD8C4(0xD00000000000005ELL, 0x80000002706F05E0, 156, sub_2706AE4C4, v21);
    sub_2706D3484();
  }
}

uint64_t sub_2706AD00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_id;
  type metadata accessor for Completion();
  swift_allocObject();

  v13 = sub_2706DD8C4(0xD00000000000005ELL, 0x80000002706F05E0, 152, a3, a4);
  sub_2706ABAE0(a1, a2, a6, a5 + v12, v13);
}

void sub_2706AD0E8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a1)
  {
    v8 = OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_id;
    v9 = swift_allocObject();
    *(v9 + 16) = a4;
    *(v9 + 24) = a1;
    swift_allocObject();
    v10 = a1;
    v11 = a1;

    v12 = sub_2706DD8C4(0xD00000000000005ELL, 0x80000002706F05E0, 162, sub_2706AE588, v9);
    sub_2706ABD58(a3, a2 + v8, 0xC000000000000040, v12);
  }

  else
  {
    sub_2706ABC18(a2 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_id, a3, a4);
  }
}

uint64_t sub_2706AD280(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D450, &qword_2706EAA20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_2706E562C();
    v12 = sub_2706E565C();
    v13 = 0;
  }

  else
  {
    v12 = sub_2706E565C();
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v13, 1, v12);
  v14 = _Block_copy(a4);
  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v14 = sub_2706ADEF8;
  }

  else
  {
    v15 = 0;
  }

  v16 = a3;
  v11(v10, a3, v14, v15);
  sub_27068F6BC(v14, v15);

  return sub_2706ADE58(v10);
}

void sub_2706AD3E8(void *a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_archiveSource))
  {

    sub_2706D4274(a1, a2);
  }

  else
  {
    sub_2706DD768();
  }
}

uint64_t sub_2706AD46C(uint64_t a1)
{
  OUTLINED_FUNCTION_3_4();
  v2 = OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_url;
  sub_2706E565C();
  OUTLINED_FUNCTION_6_0();
  (*(v3 + 8))(v1 + v2);
}

uint64_t sub_2706AD4F8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_3_4();
  v1 = OBJC_IVAR____TtC13UniversalDrag26PasteboardFileDataProvider_url;
  sub_2706E565C();
  OUTLINED_FUNCTION_6_0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_2706AD584()
{
  sub_2706AD4F8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2706AD604(uint64_t a1)
{
  result = sub_2706E576C();
  if (v2 <= 0x3F)
  {
    result = sub_2706E565C();
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

void sub_2706AD718(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = type metadata accessor for PasteboardDataTransferID(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &var58[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v13 = sub_2706E58DC();
    v14 = __swift_project_value_buffer(v13, qword_2808292F0);
    v15 = v14;
    MEMORY[0x28223BE20](v14);
    *(&v34 - 4) = a2;
    *(&v34 - 3) = a3;
    *(&v34 - 2) = a4;
    v16 = a1;
    sub_270694BF4(sub_2706AE820, (&v34 - 6), v15, a1, v17, v18, v19, v20, v34, var58[0], var58[1], var58[2], var58[3], var58[4], var58[5], var58[6], var58[7], var58[8], var58[9], var58[10], var58[11], var58[12]);
  }

  else
  {
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v21 = sub_2706E58DC();
    __swift_project_value_buffer(v21, qword_2808292F0);
    sub_2706AE63C(a2, v12, type metadata accessor for PasteboardDataTransferID);

    v22 = sub_2706E58BC();
    v23 = sub_2706E5BEC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = a5;
      var58[0] = v25;
      v26 = v25;
      *v24 = 136315394;
      v27 = sub_2706E572C();
      v29 = sub_2706B8734(8, v27, v28);
      v30 = MEMORY[0x2743A5EC0](v29);
      v32 = v31;

      sub_2706AE590();
      v33 = sub_2706C83E8(v30, v32, var58);

      *(v24 + 4) = v33;
      *(v24 + 12) = 2082;
      *(v24 + 14) = sub_2706C83E8(a3, a4, var58);
      _os_log_impl(&dword_270680000, v22, v23, "%s %{public}s: Succeeded", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743A75B0](v26, -1, -1);
      MEMORY[0x2743A75B0](v24, -1, -1);
    }

    else
    {

      sub_2706AE590();
    }
  }

  sub_2706DD768();
}

uint64_t sub_2706ADA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E572C();
  v7 = sub_2706B8734(8, v5, v6);
  v8 = MEMORY[0x2743A5EC0](v7);

  MEMORY[0x2743A5EF0](32, 0xE100000000000000);
  MEMORY[0x2743A5EF0](a2, a3);
  MEMORY[0x2743A5EF0](0x64656C696146203ALL, 0xE800000000000000);
  return v8;
}

uint64_t sub_2706ADB08(uint64_t a1, uint64_t a2)
{
  v9[3] = type metadata accessor for PasteboardMessage(0);
  v9[4] = sub_2706AE5E4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  sub_2706AE63C(a1, boxed_opaque_existential_1, type metadata accessor for PasteboardMessage);
  v5 = sub_2706DA8BC(v9);
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_270692D3C(v5, v7);
  sub_2706ADC60(v5, v7, a2);
  sub_270688E88(v5, v7);
  return sub_270688E88(v5, v7);
}

uint64_t sub_2706ADC04()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_2706ADC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_weakLoadStrong())
  {
    v10[0] = a1;
    v10[1] = a2 | 0x2000000000000000;
    v10[2] = 0;
    v10[3] = 0;

    sub_2706C73B8(v10, sub_270690B0C, a3);
  }

  else
  {
    if (qword_28081C730 != -1)
    {
      swift_once();
    }

    v6 = sub_2706E58DC();
    __swift_project_value_buffer(v6, qword_2808292D8);
    v7 = sub_2706E58BC();
    v8 = sub_2706E5BFC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_270680000, v7, v8, "DataProvider: no DragController to send pasteboardEvent)", v9, 2u);
      MEMORY[0x2743A75B0](v9, -1, -1);
    }

    sub_2706DD768();
  }
}

uint64_t sub_2706ADDD0()
{
  OUTLINED_FUNCTION_11_4();
  v0 = sub_2706E576C();
  OUTLINED_FUNCTION_16_3(v0);
  v1 = OUTLINED_FUNCTION_13_6();

  return sub_2706AC254(v1, v2, v3, v4, v5, v6);
}

double block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2706ADE58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D450, &qword_2706EAA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2706ADEC0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2706ADF00()
{
  if (*(v0 + 16))
  {
  }

  v1 = OUTLINED_FUNCTION_17_2();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2706ADF38()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_2706ADF70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D450, &qword_2706EAA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2706ADFE0()
{
  sub_2706E576C();
  OUTLINED_FUNCTION_2_2();

  v1 = OUTLINED_FUNCTION_7_3();
  v2(v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2706AE0B8(void *a1, char a2)
{
  v5 = sub_2706E576C();
  OUTLINED_FUNCTION_5_4(v5);
  OUTLINED_FUNCTION_22_1();
  v7 = *(v2 + 16);
  v9 = *(v2 + v8);
  v10 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2706ACA9C(a1, a2 & 1, v7, v2 + v6, v9, v10);
}

uint64_t sub_2706AE164()
{

  v0 = OUTLINED_FUNCTION_17_2();

  return MEMORY[0x2821FE8E8](v0);
}

id sub_2706AE1C0(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_2706AE1CC()
{
  sub_2706E576C();
  OUTLINED_FUNCTION_2_2();

  v0 = OUTLINED_FUNCTION_7_3();
  v1(v0);
  v2 = OUTLINED_FUNCTION_12_5();

  return MEMORY[0x2821FE8E8](v2);
}

void sub_2706AE280()
{
  OUTLINED_FUNCTION_20_1();
  v2 = sub_2706E576C();
  OUTLINED_FUNCTION_16_3(v2);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_2706ACD70(v0, v4, v5, v6, v7);
}

uint64_t objectdestroyTm()
{
  sub_2706E576C();
  OUTLINED_FUNCTION_2_2();

  v0 = OUTLINED_FUNCTION_7_3();
  v1(v0);
  v2 = OUTLINED_FUNCTION_12_5();

  return MEMORY[0x2821FE8E8](v2);
}

uint64_t sub_2706AE394()
{
  OUTLINED_FUNCTION_11_4();
  v0 = sub_2706E576C();
  OUTLINED_FUNCTION_16_3(v0);
  v1 = OUTLINED_FUNCTION_13_6();

  return sub_2706AD00C(v1, v2, v3, v4, v5, v6);
}

uint64_t sub_2706AE404()
{
  sub_2706E576C();
  OUTLINED_FUNCTION_2_2();

  v1 = OUTLINED_FUNCTION_7_3();
  v2(v1);

  return MEMORY[0x2821FE8E8](v0);
}

void sub_2706AE4C4()
{
  OUTLINED_FUNCTION_20_1();
  v2 = sub_2706E576C();
  OUTLINED_FUNCTION_5_4(v2);
  OUTLINED_FUNCTION_22_1();
  v4 = *(v1 + 16);
  v6 = *(v1 + v5);

  sub_2706AD0E8(v0, v4, v1 + v3, v6);
}

uint64_t objectdestroy_61Tm()
{

  v1 = OUTLINED_FUNCTION_17_2();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2706AE590()
{
  v1 = OUTLINED_FUNCTION_20_1();
  v2(v1);
  OUTLINED_FUNCTION_6_0();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_2706AE5E4()
{
  result = qword_28081CA80;
  if (!qword_28081CA80)
  {
    type metadata accessor for PasteboardMessage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CA80);
  }

  return result;
}

uint64_t sub_2706AE63C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2706AE69C()
{
  v1 = type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_5_4(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  sub_2706E576C();
  OUTLINED_FUNCTION_6_0();
  (*(v4 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0);
}

void sub_2706AE788()
{
  v2 = OUTLINED_FUNCTION_20_1();
  v3 = type metadata accessor for PasteboardDataTransferID(v2);
  OUTLINED_FUNCTION_5_4(v3);
  OUTLINED_FUNCTION_22_1();
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = *(v7 + 8);

  sub_2706AD718(v0, (v1 + v4), v9, v10, v8);
}

uint64_t sub_2706AE82C()
{
  sub_2706E576C();
  OUTLINED_FUNCTION_2_2();

  sub_270688E88(*(v0 + 32), *(v0 + 40));
  v1 = OUTLINED_FUNCTION_7_3();
  v2(v1);
  v3 = OUTLINED_FUNCTION_12_5();

  return MEMORY[0x2821FE8E8](v3);
}

void sub_2706AE8E0()
{
  OUTLINED_FUNCTION_20_1();
  v2 = sub_2706E576C();
  OUTLINED_FUNCTION_16_3(v2);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  sub_2706AB2C8(v0, v4, v5, v6, v7, v8);
}

uint64_t sub_2706AE950()
{
  sub_2706E576C();
  OUTLINED_FUNCTION_2_2();

  v0 = OUTLINED_FUNCTION_7_3();
  v1(v0);
  v2 = OUTLINED_FUNCTION_12_5();

  return MEMORY[0x2821FE8E8](v2);
}

void sub_2706AE9FC()
{
  OUTLINED_FUNCTION_20_1();
  v2 = sub_2706E576C();
  OUTLINED_FUNCTION_16_3(v2);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_2706AB558(v0, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return sub_2706AE590();
}

uint64_t sub_2706AEBAC(int a1, void *a2)
{
  v70 = a2;
  LODWORD(v71) = a1;
  v3 = type metadata accessor for PasteboardDataTransferID(0);
  v64 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D498, &qword_2706EAD30);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v69 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - v8;
  v10 = sub_2706E576C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v67 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v2;
  v13 = sub_270691780();
  result = sub_2706C2200();
  if (result)
  {
    v15 = result;
    if (result < 1)
    {
LABEL_41:
      __break(1u);
      return result;
    }

    v16 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2743A62C0](v16, v13);
      }

      else
      {
      }

      v17 = v70;
      v18 = v70;
      if (!v70)
      {
        sub_2706B2CD4();
        v19 = sub_2706E483C(4294960573, 0, 0, "/Library/Caches/com.apple.xbs/Sources/UniversalDrag/UniversalDrag/PasteboardController.swift", 92, 2, 456);
        v17 = v70;
        v18 = v19;
      }

      ++v16;
      v20 = v17;
      sub_2706CB498();
    }

    while (v15 != v16);
  }

  result = sub_270691DAC();
  v21 = result;
  v58 = *(result + 16);
  if (v58)
  {
    v22 = 0;
    v60 = result + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v59 = v11 + 16;
    v66 = "start completed: ";
    v57 = (v11 + 8);
    v23 = v67;
    v56 = v10;
    v55 = v11;
    v54 = result;
    while (1)
    {
      if (v22 >= *(v21 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      (*(v11 + 16))(v23, v60 + *(v11 + 72) * v22, v10);
      sub_270691AD0();
      if (v24)
      {
        break;
      }

      result = (*v57)(v23, v10);
LABEL_34:
      if (++v22 == v58)
      {
      }
    }

    v25 = v24;
    v62 = v22;
    swift_beginAccess();
    v61 = v25;
    v26 = *(v25 + 16);
    v29 = *(v26 + 64);
    v28 = v26 + 64;
    v27 = v29;
    v30 = 1 << *(*(v25 + 16) + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & v27;
    v33 = (v30 + 63) >> 6;
    v65 = *(v25 + 16);

    v34 = 0;
    while (v32)
    {
      v35 = v34;
LABEL_25:
      v38 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v39 = v38 | (v35 << 6);
      v40 = v65;
      v41 = v63;
      sub_270690CD8(*(v65 + 48) + *(v64 + 72) * v39, v63);
      v42 = *(v40 + 56);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A0, &qword_2706EAD38);
      v44 = *(v43 + 48);
      v71 = *(v42 + 16 * v39);
      v37 = v69;
      sub_2706A66AC(v41, v69);
      *(v37 + v44) = v71;
      __swift_storeEnumTagSinglePayload(v37, 0, 1, v43);
      swift_unknownObjectRetain();
      v36 = v70;
LABEL_26:
      sub_2706B2D18(v37, v9);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A0, &qword_2706EAD38);
      if (__swift_getEnumTagSinglePayload(v9, 1, v45) == 1)
      {
        v23 = v67;
        v10 = v56;
        (*v57)(v67, v56);

        v11 = v55;
        v21 = v54;
        v22 = v62;
        goto LABEL_34;
      }

      v46 = &v9[*(v45 + 48)];
      v47 = *v46;
      v48 = v46[1];
      v49 = 0xC000000000000040;
      if (v36)
      {
        v73 = v36;
        v50 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A8, &qword_2706EAD40);
        if (swift_dynamicCast())
        {
          v49 = v72;
        }
      }

      type metadata accessor for Completion();
      swift_allocObject();
      v51 = sub_2706DD84C();
      sub_2706AF208(v67, v47, v48, v49, v51);

      swift_unknownObjectRelease();
      sub_270688D9C(v49);
      sub_270687394(v9);
    }

    v37 = v69;
    v36 = v70;
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v33)
      {
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A0, &qword_2706EAD38);
        __swift_storeEnumTagSinglePayload(v37, 1, 1, v52);
        v32 = 0;
        goto LABEL_26;
      }

      v32 = *(v28 + 8 * v35);
      ++v34;
      if (v32)
      {
        v34 = v35;
        goto LABEL_25;
      }
    }

    __break(1u);
  }
}

void sub_2706AF208(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for PasteboardDataTransferID(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a3 + 8))(ObjectType, a3);
  sub_270691E80();
  swift_unknownObjectRelease();
  sub_270687394(v10);
  sub_270694B50();
  v12 = swift_allocError();
  *v13 = a4;
  v14 = *(a3 + 24);
  v15 = sub_270694BA4(a4);
  v14(v12, a5, ObjectType, a3, v15);
}

uint64_t sub_2706AF348()
{
  v0 = sub_2706E58DC();
  __swift_allocate_value_buffer(v0, qword_280829340);
  v1 = __swift_project_value_buffer(v0, qword_280829340);
  if (qword_28081C730 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2808292D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2706AF410()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D470, &qword_2706EAD08);
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - v2;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_2706E5E3C();
  MEMORY[0x2743A5EF0](0xD000000000000031, 0x80000002706F07B0);
  v14 = *(v0 + 24);
  swift_unknownObjectRetain();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D478, &qword_2706EAD10);
  v5 = OUTLINED_FUNCTION_56_0(v4);
  MEMORY[0x2743A5EF0](v5);

  MEMORY[0x2743A5EF0](0x746E65746E6F6320, 0xEA00000000003D73);
  *&v14 = *(v0 + 40);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D480, &qword_2706EAD18);
  v7 = OUTLINED_FUNCTION_56_0(v6);
  MEMORY[0x2743A5EF0](v7);

  MEMORY[0x2743A5EF0](0x507972746E65202CLL, 0xED00003D746E696FLL);
  v14 = *(v0 + 48);
  type metadata accessor for CGPoint(0);
  v9 = OUTLINED_FUNCTION_56_0(v8);
  MEMORY[0x2743A5EF0](v9);

  MEMORY[0x2743A5EF0](0x3D6469202CLL, 0xE500000000000000);
  sub_2706B28F8(v0 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_id, v3);
  v10 = sub_2706E5A4C();
  MEMORY[0x2743A5EF0](v10);

  MEMORY[0x2743A5EF0](0x6E6573657270202CLL, 0xEF3D6E6F69746174);
  *&v14 = *(v0 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_presentation);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D488, &qword_2706EAD20);
  v12 = OUTLINED_FUNCTION_56_0(v11);
  MEMORY[0x2743A5EF0](v12);

  MEMORY[0x2743A5EF0](41, 0xE100000000000000);
  return v15;
}

int64x2_t *sub_2706AF658()
{
  type metadata accessor for Completions();
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x277D84F90];
  v0[1].i64[0] = v1;
  v0[1].i64[1] = 0;
  v0[2].i64[0] = 0;
  v0[2].i64[1] = 0;
  v2 = OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_id;
  v3 = sub_2706E576C();
  __swift_storeEnumTagSinglePayload(v0->i64 + v2, 1, 1, v3);
  *(v0->i64 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_presentation) = 0;
  v0[3] = vdupq_n_s64(0x7FF8000000000000uLL);
  return v0;
}

void *sub_2706AF6DC()
{

  swift_unknownObjectRelease();

  sub_2706B2B70(v0 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_id, &qword_28081D470, &qword_2706EAD08);

  return v0;
}

uint64_t sub_2706AF73C()
{
  sub_2706AF6DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2706AF7B8(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  if (qword_28081C730 != -1)
  {
    swift_once();
  }

  v6 = sub_2706E58DC();
  __swift_project_value_buffer(v6, qword_2808292D8);
  sub_2706B2A58(a1, v4);

  v7 = sub_2706E58BC();
  v8 = sub_2706E5BEC();
  sub_2706B2AC4(a1, v4);

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446466;
    v22 = &type metadata for DragSurrogateCoordinator.State;
    v23 = v10;
    v20 = a1;
    v21 = v4;
    sub_2706B2A58(a1, v4);
    v11 = sub_2706CB238(&v20);
    v13 = sub_2706C83E8(v11, v12, &v23);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = *(v3 + 40);
    v22 = &type metadata for DragSurrogateCoordinator.State;
    v20 = v14;
    v21 = *(v3 + 48);
    sub_2706B2A58(v14, v21);
    v15 = sub_2706CB238(&v20);
    v17 = sub_2706C83E8(v15, v16, &v23);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_270680000, v7, v8, "DragSurrogateCoordinator: %{public}s → %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743A75B0](v10, -1, -1);
    MEMORY[0x2743A75B0](v9, -1, -1);
  }

  if (*(v3 + 48) == 6)
  {
    v18 = *(v3 + 56) + 1;
    do
    {
      v19 = v18;
      v18 = 1;
    }

    while (!v19);
    *(v3 + 56) = v19;
  }
}

void sub_2706AF9C8(void *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *(v2 + 40);
  *(v2 + 40) = a1;
  v6 = *(v2 + 48);
  *(v2 + 48) = a2;
  sub_2706B2A58(a1, a2);
  sub_2706AF7B8(v5, v6);
  sub_2706B2AC4(v5, v6);

  sub_2706B2AC4(a1, v3);
}

void sub_2706AFA40(void *a1, unint64_t a2, double a3, double a4, double a5)
{
  v7[0] = a1;
  v7[1] = a2;
  *&v7[2] = a3;
  *&v7[3] = a4;
  *&v7[4] = a5;

  sub_2706AFBAC(v7);

  sub_2706911CC(a1, a2);
}

void sub_2706AFAD4(uint64_t a1)
{
  v1 = *(a1 + 8) | 0x2000000000000000;
  v4[0] = *a1;
  v4[1] = v1;
  OUTLINED_FUNCTION_42_0();

  sub_2706AFBAC(v4);
  OUTLINED_FUNCTION_23_2();

  sub_2706911CC(v2, v3);
}

void sub_2706AFB40(uint64_t a1)
{
  v1 = (*(a1 + 8) | 0x4000000000000000);
  v4[0] = *a1;
  v4[1] = v1;
  OUTLINED_FUNCTION_42_0();

  sub_2706AFBAC(v4);
  OUTLINED_FUNCTION_23_2();

  sub_2706911CC(v2, v3);
}

void sub_2706AFBAC(void **a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  if (qword_28081C730 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_28081C730);
  }

  v799 = sub_2706E58DC();
  __swift_project_value_buffer(v799, qword_2808292D8);
  OUTLINED_FUNCTION_26_2();

  v8 = OUTLINED_FUNCTION_43_0();
  sub_2706B29B8(v8, v9);
  v10 = sub_2706E58BC();
  v11 = sub_2706E5BEC();

  v12 = OUTLINED_FUNCTION_43_0();
  sub_2706911CC(v12, v13);
  oslog = v5;
  if (os_log_type_enabled(v10, v11))
  {
    v14 = v7;
    v15 = v6;
    v16 = v4;
    v17 = swift_slowAlloc();
    v781 = swift_slowAlloc();
    v817 = v781;
    *v17 = 136315394;
    v18 = *(v2 + 40);
    v814 = &type metadata for DragSurrogateCoordinator.State;
    *&v812 = v18;
    BYTE8(v812) = *(v2 + 48);
    sub_2706B2A58(v18, SBYTE8(v812));
    v19 = sub_2706CB238(&v812);
    v21 = sub_2706C83E8(v19, v20, &v817);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v814 = &type metadata for DragSurrogateCoordinator.Event;
    v22 = swift_allocObject();
    *&v812 = v22;
    v22[2] = v16;
    v22[3] = v3;
    v22[4] = v15;
    v22[5] = v5;
    v22[6] = v14;
    v23 = v3;
    sub_2706B29B8(v16, v3);
    v24 = sub_2706CB238(&v812);
    v32 = OUTLINED_FUNCTION_55_0(v24, v25, v26, v27, v28, v29, v30, v31, v756, v772, v781, v2, v799, oslog, v812, *(&v812 + 1), v813, v814, v815, v816);
    v4 = v16;
    v6 = v15;
    v7 = v14;

    *(v17 + 14) = v32;
    v2 = v790;
    _os_log_impl(&dword_270680000, v10, v11, "DragSurrogateCoordinator: %s - %s", v17, 0x16u);
    v3 = v780;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_12_0();
  }

  else
  {
    v23 = v3;
  }

  v40 = *(v2 + 40);
  v41 = *(v2 + 48);
  v42 = v23 >> 61;
  switch(*(v2 + 48))
  {
    case 1:
      if (v42 == 1)
      {
        goto LABEL_64;
      }

      if (v42 != 6)
      {
        goto LABEL_380;
      }

      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_25_2();
      if (v44 && !(v210 | v4 | v7))
      {
        v212 = OUTLINED_FUNCTION_37_1();
        sub_2706B2A58(v212, v213);
        v214 = off_28081C740;

        if (v214 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          v215 = swift_once();
        }

        OUTLINED_FUNCTION_6_6(v215, qword_280829340, v216, v217, v218, v219, v220, v221, v756, v772, v780, v790, v799);
        v222 = sub_2706E58BC();
        v223 = sub_2706E5C1C();
        if (OUTLINED_FUNCTION_16_6(v223))
        {
          v224 = OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_18_2(v224);
          OUTLINED_FUNCTION_9_5(&dword_270680000, v225, v226, "DragSurrogateCoordinator: start local drag session");
          OUTLINED_FUNCTION_14_4();
        }

        v227 = OUTLINED_FUNCTION_37_1();
        sub_2706B2A58(v227, v228);
        v229 = OUTLINED_FUNCTION_24_1();
        sub_2706AF9C8(v229, v230);
        if (v40[3])
        {
          swift_unknownObjectRetain();
          OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_15_5();
          v236 = sub_2706B2308(v231, v232, v233, v234, v235);
          sub_27068BE24(v236);
          swift_unknownObjectRelease();
LABEL_191:

          v354 = OUTLINED_FUNCTION_37_1();
          sub_2706B2AC4(v354, v355);
          OUTLINED_FUNCTION_37_1();
          goto LABEL_313;
        }

        goto LABEL_368;
      }

      v331 = v23 == v211 && v4 == 4;
      if (v331 && !(v210 | v7))
      {
        v332 = OUTLINED_FUNCTION_37_1();
        sub_2706B2A58(v332, v333);
        v334 = off_28081C740;

        if (v334 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          v335 = swift_once();
        }

        OUTLINED_FUNCTION_6_6(v335, qword_280829340, v336, v337, v338, v339, v340, v341, v756, v772, v780, v790, v799);
        v342 = sub_2706E58BC();
        v343 = sub_2706E5C1C();
        if (OUTLINED_FUNCTION_16_6(v343))
        {
          v344 = OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_18_2(v344);
          OUTLINED_FUNCTION_9_5(&dword_270680000, v345, v346, "DragSurrogateCoordinator: cancelling while prepared, but before began");
          OUTLINED_FUNCTION_14_4();
        }

        if (v40[3])
        {
          type metadata accessor for Completion();
          OUTLINED_FUNCTION_21_3();
          swift_allocObject();
          swift_unknownObjectRetain();
          OUTLINED_FUNCTION_17_3();
          v347 = sub_2706DD84C();
          sub_27068C52C(v347);

          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_31_3();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v348 = OUTLINED_FUNCTION_26_2();
            sub_2706C7C70(v348, 1);
            swift_unknownObjectRelease();
          }

          OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_15_5();
          sub_2706B2308(v349, v350, v351, v352, v353);
          sub_2706DD768();
          goto LABEL_191;
        }

        goto LABEL_369;
      }

LABEL_380:

      v817 = sub_2706C8368(57);
      v818 = v698;
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_5_6();
      OUTLINED_FUNCTION_10_5(v699, v700, &type metadata for DragSurrogateCoordinator.State, v701, v702, v703, v704, v705, v756);
      OUTLINED_FUNCTION_13_7();
      OUTLINED_FUNCTION_8_6();
      OUTLINED_FUNCTION_10_5(v706, v707, &type metadata for DragSurrogateCoordinator.Event, v708, v709, v710, v711, v712, v768);
      OUTLINED_FUNCTION_34_2();
      i = 305;
      goto LABEL_382;
    case 2:
      switch(v42)
      {
        case 1:
          v72 = off_28081C740;

          if (v72 != -1)
          {
            OUTLINED_FUNCTION_0_5();
            v73 = swift_once();
          }

          v80 = OUTLINED_FUNCTION_53_0(v73, qword_280829340, v74, v75, v76, v77, v78, v79, v756, v772, v780, v790, v799);
          v81 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_52_0(v81))
          {
            *OUTLINED_FUNCTION_15_0() = 0;
            OUTLINED_FUNCTION_36_1(&dword_270680000, v82, v83, "DragSurrogateCoordinator: set previews (while starting)");
            OUTLINED_FUNCTION_12_0();
          }

          if (*(v40 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_presentation))
          {
            OUTLINED_FUNCTION_29_2();

            sub_270695100(&v812);
          }

          if (!v40[3])
          {
            goto LABEL_371;
          }

          OUTLINED_FUNCTION_29_2();
          swift_unknownObjectRetain();
          sub_27068BECC(&v812);
          swift_unknownObjectRelease();
          if (v23 == 5)
          {
            goto LABEL_313;
          }

          v84 = v40;
          v85 = v72;
          v86 = sub_2706E58BC();
          v87 = sub_2706E5C1C();
          if (os_log_type_enabled(v86, v87))
          {
            OUTLINED_FUNCTION_29_1();
            v88 = OUTLINED_FUNCTION_38_1();
            v817 = v88;
            *v85 = 136315138;
            v89 = OUTLINED_FUNCTION_50_0(&type metadata for DragBadgeStyle, v756, v772, v780, v790, v799, oslog, v812, *(&v812 + 1), v813, v814);
            v97 = OUTLINED_FUNCTION_55_0(v89, v90, v91, v92, v93, v94, v95, v96, v758, v774, v783, v792, v801, oslogb, v812, *(&v812 + 1), v813, v814, v815, v816);

            *(v85 + 4) = v97;
            OUTLINED_FUNCTION_22_3(&dword_270680000, v98, v87, "DragSurrogateCoordinator: set badge style (while starting)%s");
            __swift_destroy_boxed_opaque_existential_1(v88);
            OUTLINED_FUNCTION_14_4();
            OUTLINED_FUNCTION_20_2();
          }

          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_313;
          }

          OUTLINED_FUNCTION_41_0();
          sub_2706C7BF4(v2);
          swift_unknownObjectRelease();
          v99 = v84;
          v100 = 2;
          goto LABEL_115;
        case 2:
          if (*(v40 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_presentation))
          {
            OUTLINED_FUNCTION_29_2();
            v418 = OUTLINED_FUNCTION_2_3();
            sub_2706B29B8(v418, v419);
            v420 = OUTLINED_FUNCTION_24_1();
            sub_2706B2A58(v420, v421);

            sub_270695100(&v812);
          }

          else
          {
            v568 = OUTLINED_FUNCTION_2_3();
            sub_2706B29B8(v568, v569);
            v570 = OUTLINED_FUNCTION_24_1();
            sub_2706B2A58(v570, v571);
          }

          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_312;
          }

          OUTLINED_FUNCTION_54_0();
          OUTLINED_FUNCTION_49_0();
          v813 = 0;
          v814 = 0;
          OUTLINED_FUNCTION_21_3();
          swift_allocObject();
          OUTLINED_FUNCTION_4_6();
          v572 = sub_2706DD84C();
          OUTLINED_FUNCTION_11_5(v572, v573, v574, v575, v576, v577, v578, v579, v756, v772, v780, v790, v799);

          swift_unknownObjectRelease();
          v580 = OUTLINED_FUNCTION_24_1();
          goto LABEL_319;
        case 3:
          v422 = off_28081C740;

          if (v422 != -1)
          {
            OUTLINED_FUNCTION_0_5();
            v423 = swift_once();
          }

          OUTLINED_FUNCTION_6_6(v423, qword_280829340, v424, v425, v426, v427, v428, v429, v756, v772, v780, v2, v799);
          OUTLINED_FUNCTION_27_2(v4);
          v430 = v4;
          v431 = sub_2706E58BC();
          v432 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_32_2(v432))
          {
            OUTLINED_FUNCTION_29_1();
            v433 = OUTLINED_FUNCTION_39_0();
            *v10 = 138543362;
            v434 = v4;
            v435 = _swift_stdlib_bridgeErrorToNSError();
            *(v10 + 4) = v435;
            *v433 = v435;
            v436 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v436, v437);
            v438 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v438, v439);
            OUTLINED_FUNCTION_19_6(&dword_270680000, v440, v441, "DragSurrogateCoordinator: failed to create drag session, aka starting failed: %{public}@");
            sub_2706B2B70(v433, &qword_28081D490, &qword_2706EAD28);
            OUTLINED_FUNCTION_14_4();
            OUTLINED_FUNCTION_20_2();
          }

          else
          {

            v536 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v536, v537);
            v538 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v538, v539);
          }

          *&v812 = v4;
          *(&v812 + 1) = 0xA000000000000000;
          v814 = 0;
          v815 = 0;
          v813 = 0;
          v540 = v4;
          sub_2706AFBAC(&v812);
          v541 = OUTLINED_FUNCTION_24_1();
          sub_2706B2AC4(v541, v542);
          OUTLINED_FUNCTION_23_2();
          sub_2706911CC(v543, v544);
          goto LABEL_325;
        case 5:
          v396 = OUTLINED_FUNCTION_24_1();
          sub_2706B2A58(v396, v397);
          v398 = off_28081C740;

          if (v398 != -1)
          {
            OUTLINED_FUNCTION_0_5();
            v399 = swift_once();
          }

          OUTLINED_FUNCTION_6_6(v399, qword_280829340, v400, v401, v402, v403, v404, v405, v756, v772, v780, v2, v799);
          OUTLINED_FUNCTION_27_2(v4);
          v406 = v4;
          v407 = sub_2706E58BC();
          v408 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_32_2(v408))
          {
            OUTLINED_FUNCTION_29_1();
            v409 = OUTLINED_FUNCTION_39_0();
            *v10 = 138543362;
            v410 = v4;
            v411 = _swift_stdlib_bridgeErrorToNSError();
            *(v10 + 4) = v411;
            *v409 = v411;
            v412 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v412, v413);
            v414 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v414, v415);
            OUTLINED_FUNCTION_19_6(&dword_270680000, v416, v417, "DragSurrogateCoordinator: failing local before start completed drag: %{public}@");
            sub_2706B2B70(v409, &qword_28081D490, &qword_2706EAD28);
            OUTLINED_FUNCTION_14_4();
            OUTLINED_FUNCTION_20_2();
          }

          else
          {

            v526 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v526, v527);
            v528 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v528, v529);
          }

          v530 = v4;
          sub_2706AF9C8(v4, 5);
          if (!v40[3])
          {
            goto LABEL_372;
          }

          swift_unknownObjectRetain();
          OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_23_2();
          goto LABEL_305;
        case 6:
          OUTLINED_FUNCTION_46_0();
          if (v7 || ((OUTLINED_FUNCTION_25_2(), v44) ? (v443 = v4 == 1) : (v443 = 0), !v443 || v442))
          {
            if (!v7)
            {
              OUTLINED_FUNCTION_25_2();
              v546 = v44 && v4 == 3;
              if (v546 && !v545)
              {
                goto LABEL_383;
              }
            }

            if (v7)
            {
              goto LABEL_376;
            }

            OUTLINED_FUNCTION_25_2();
            v548 = v44 && v4 == 4;
            if (!v548 || v547)
            {
              goto LABEL_376;
            }

            v549 = OUTLINED_FUNCTION_24_1();
            sub_2706B2A58(v549, v550);
            v551 = off_28081C740;

            if (v551 != -1)
            {
              OUTLINED_FUNCTION_0_5();
              v552 = swift_once();
            }

            OUTLINED_FUNCTION_6_6(v552, qword_280829340, v553, v554, v555, v556, v557, v558, v756, v772, v780, v790, v799);
            v559 = sub_2706E58BC();
            v560 = sub_2706E5C1C();
            if (OUTLINED_FUNCTION_16_6(v560))
            {
              v561 = OUTLINED_FUNCTION_15_0();
              OUTLINED_FUNCTION_18_2(v561);
              OUTLINED_FUNCTION_9_5(&dword_270680000, v562, v563, "DragSurrogateCoordinator: cancelling local before start complete");
              OUTLINED_FUNCTION_14_4();
            }

            OUTLINED_FUNCTION_31_3();
            if (v40[3])
            {
              swift_unknownObjectRetain();
              OUTLINED_FUNCTION_17_3();
              OUTLINED_FUNCTION_15_5();
LABEL_305:
              v564 = sub_2706B2308(v531, v532, v533, v534, v535);
              sub_27068C52C(v564);
              swift_unknownObjectRelease();

              v565 = OUTLINED_FUNCTION_24_1();
              sub_2706B2AC4(v565, v566);
              goto LABEL_313;
            }

            goto LABEL_374;
          }

          v444 = off_28081C740;

          if (v444 != -1)
          {
            OUTLINED_FUNCTION_0_5();
            v445 = swift_once();
          }

          OUTLINED_FUNCTION_6_6(v445, qword_280829340, v446, v447, v448, v449, v450, v451, v756, v772, v780, v790, v799);
          v452 = sub_2706E58BC();
          v453 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_16_6(v453))
          {
            v454 = OUTLINED_FUNCTION_15_0();
            OUTLINED_FUNCTION_18_2(v454);
            OUTLINED_FUNCTION_9_5(&dword_270680000, v455, v456, "DragSurrogateCoordinator: local drag session started");
            OUTLINED_FUNCTION_14_4();
          }

          v457 = OUTLINED_FUNCTION_24_1();
          sub_2706B2A58(v457, v458);
          v459 = OUTLINED_FUNCTION_33_2();
          sub_2706AF9C8(v459, v460);
          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_313;
          }

          v812 = xmmword_2706EAA80;
          OUTLINED_FUNCTION_49_0();
          v813 = 0;
          v814 = 0;
          OUTLINED_FUNCTION_21_3();
          swift_allocObject();
          OUTLINED_FUNCTION_4_6();
          v461 = sub_2706DD84C();
          OUTLINED_FUNCTION_11_5(v461, v462, v463, v464, v465, v466, v467, v468, v762, v778, v788, v797, v805);
          swift_unknownObjectRelease();
          v70 = OUTLINED_FUNCTION_24_1();
          break;
        default:
          goto LABEL_376;
      }

      goto LABEL_239;
    case 3:
      switch(v42)
      {
        case 1:
          v469 = off_28081C740;

          if (v469 != -1)
          {
            OUTLINED_FUNCTION_0_5();
            v470 = swift_once();
          }

          v477 = OUTLINED_FUNCTION_53_0(v470, qword_280829340, v471, v472, v473, v474, v475, v476, v756, v772, v780, v790, v799);
          v478 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_52_0(v478))
          {
            *OUTLINED_FUNCTION_15_0() = 0;
            OUTLINED_FUNCTION_36_1(&dword_270680000, v479, v480, "DragSurrogateCoordinator: update previews while active");
            OUTLINED_FUNCTION_12_0();
          }

          if (*(v40 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_presentation))
          {
            OUTLINED_FUNCTION_29_2();

            sub_270695100(&v812);
          }

          if (!v40[3])
          {
            goto LABEL_373;
          }

          OUTLINED_FUNCTION_29_2();
          swift_unknownObjectRetain();
          sub_27068BECC(&v812);
          swift_unknownObjectRelease();
          if (v23 == 5)
          {
            goto LABEL_313;
          }

          v481 = v40;
          v482 = v469;
          v483 = sub_2706E58BC();
          v484 = sub_2706E5C1C();
          if (os_log_type_enabled(v483, v484))
          {
            OUTLINED_FUNCTION_29_1();
            v485 = OUTLINED_FUNCTION_38_1();
            v817 = v485;
            *v482 = 136315138;
            v486 = OUTLINED_FUNCTION_50_0(&type metadata for DragBadgeStyle, v756, v772, v780, v790, v799, oslog, v812, *(&v812 + 1), v813, v814);
            v494 = OUTLINED_FUNCTION_55_0(v486, v487, v488, v489, v490, v491, v492, v493, v763, v779, v789, v798, v806, oslogd, v812, *(&v812 + 1), v813, v814, v815, v816);

            *(v482 + 4) = v494;
            OUTLINED_FUNCTION_22_3(&dword_270680000, v495, v484, "DragSurrogateCoordinator: set badge style (while active)%s");
            __swift_destroy_boxed_opaque_existential_1(v485);
            OUTLINED_FUNCTION_14_4();
            OUTLINED_FUNCTION_20_2();
          }

          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_313;
          }

          OUTLINED_FUNCTION_41_0();
          sub_2706C7BF4(v2);
          swift_unknownObjectRelease();
          v99 = v481;
          v100 = 3;
          goto LABEL_115;
        case 2:
          if (*(v40 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_presentation))
          {
            OUTLINED_FUNCTION_29_2();
            v496 = OUTLINED_FUNCTION_2_3();
            sub_2706B29B8(v496, v497);
            v498 = OUTLINED_FUNCTION_33_2();
            sub_2706B2A58(v498, v499);

            sub_270695100(&v812);
          }

          else
          {
            v587 = OUTLINED_FUNCTION_2_3();
            sub_2706B29B8(v587, v588);
            v589 = OUTLINED_FUNCTION_33_2();
            sub_2706B2A58(v589, v590);
          }

          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_312;
          }

          OUTLINED_FUNCTION_54_0();
          OUTLINED_FUNCTION_49_0();
          v813 = 0;
          v814 = 0;
          OUTLINED_FUNCTION_21_3();
          swift_allocObject();
          OUTLINED_FUNCTION_4_6();
          v591 = sub_2706DD84C();
          OUTLINED_FUNCTION_11_5(v591, v592, v593, v594, v595, v596, v597, v598, v756, v772, v780, v790, v799);

          swift_unknownObjectRelease();
          v580 = OUTLINED_FUNCTION_33_2();
LABEL_319:
          sub_2706B2AC4(v580, v581);
          sub_2706B2C20(v812, *(&v812 + 1));
          goto LABEL_325;
        case 3:
        case 4:
        case 5:
          v101 = OUTLINED_FUNCTION_3_5();
          sub_2706B29B8(v101, v102);
          v103 = OUTLINED_FUNCTION_33_2();
          sub_2706B2A58(v103, v104);
          if (off_28081C740 != -1)
          {
            OUTLINED_FUNCTION_0_5();
            v105 = swift_once();
          }

          OUTLINED_FUNCTION_6_6(v105, qword_280829340, v106, v107, v108, v109, v110, v111, v756, v772, v780, v2, v799);
          v112 = OUTLINED_FUNCTION_1_7();
          sub_2706B29B8(v112, v113);
          v114 = OUTLINED_FUNCTION_1_7();
          sub_2706B29B8(v114, v115);
          v116 = sub_2706E58BC();
          v117 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_32_2(v117))
          {
            OUTLINED_FUNCTION_29_1();
            v118 = OUTLINED_FUNCTION_39_0();
            *v10 = 138543362;
            v119 = OUTLINED_FUNCTION_1_7();
            sub_2706B29B8(v119, v120);
            v121 = _swift_stdlib_bridgeErrorToNSError();
            *(v10 + 4) = v121;
            *v118 = v121;
            v122 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v122, v123);
            v124 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v124, v125);
            OUTLINED_FUNCTION_19_6(&dword_270680000, v126, v127, "DragSurrogateCoordinator: failing active local drag: %{public}@");
            sub_2706B2B70(v118, &qword_28081D490, &qword_2706EAD28);
            OUTLINED_FUNCTION_14_4();
            OUTLINED_FUNCTION_20_2();
          }

          else
          {

            v320 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v320, v321);
            v322 = OUTLINED_FUNCTION_1_7();
            sub_2706911CC(v322, v323);
          }

          v324 = OUTLINED_FUNCTION_1_7();
          sub_2706B29B8(v324, v325);
          sub_2706AF9C8(v4, 5);
          if (!v40[3])
          {
            goto LABEL_366;
          }

          v326 = swift_allocObject();
          *(v326 + 16) = v790;
          *(v326 + 24) = v4;

          swift_unknownObjectRetain();
          v327 = OUTLINED_FUNCTION_17_3();
          v330 = sub_2706B2308(v327, v328, 405, v329, v326);

          sub_27068C52C(v330);
          swift_unknownObjectRelease();

          goto LABEL_313;
        case 6:
          OUTLINED_FUNCTION_46_0();
          if (!v7 && ((OUTLINED_FUNCTION_25_2(), v44) ? (v501 = v4 == 1) : (v501 = 0), v501 && !v500) || !v7 && ((OUTLINED_FUNCTION_25_2(), v44) ? (v503 = v4 == 2) : (v503 = 0), v503 && !v502))
          {
            v504 = off_28081C740;

            if (v504 != -1)
            {
              OUTLINED_FUNCTION_0_5();
              v505 = swift_once();
            }

            OUTLINED_FUNCTION_6_6(v505, qword_280829340, v506, v507, v508, v509, v510, v511, v756, v772, v780, v790, v799);
            v512 = sub_2706E58BC();
            v513 = sub_2706E5C1C();
            if (OUTLINED_FUNCTION_16_6(v513))
            {
              v514 = OUTLINED_FUNCTION_15_0();
              OUTLINED_FUNCTION_18_2(v514);
              OUTLINED_FUNCTION_9_5(&dword_270680000, v515, v516, "DragSurrogateCoordinator: active local drag succeeded");
              OUTLINED_FUNCTION_14_4();
            }

            sub_2706DDC70(0);
            sub_2706AF9C8(v40, 4);
            if (swift_unknownObjectWeakLoadStrong())
            {
              v517 = OUTLINED_FUNCTION_26_2();
              sub_2706C7C70(v517, 0);
              swift_unknownObjectRelease();
            }

            if (*(v2 + 49) == 1)
            {
              OUTLINED_FUNCTION_17_3();
              OUTLINED_FUNCTION_15_5();
              v523 = sub_2706B2308(v518, v519, v520, v521, v522);
            }

            else
            {
              type metadata accessor for Completion();
              OUTLINED_FUNCTION_21_3();
              swift_allocObject();
              OUTLINED_FUNCTION_17_3();
              v523 = sub_2706DD84C();
            }

            v599 = v523;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v812 = xmmword_2706EAA50;
              v813 = 0;
              v814 = 0;
              sub_2706C78E8(v2, &v812, v599);
              swift_unknownObjectRelease();
LABEL_324:

              goto LABEL_325;
            }

            sub_2706DD768();
            goto LABEL_338;
          }

          if (!v7)
          {
            OUTLINED_FUNCTION_25_2();
            v613 = v44 && v4 == 3;
            if (v613 && !v612)
            {
              *(v2 + 49) = 1;
              goto LABEL_325;
            }
          }

          if (!v7)
          {
            OUTLINED_FUNCTION_25_2();
            v615 = v44 && v4 == 4;
            if (v615 && !v614)
            {
              v616 = OUTLINED_FUNCTION_33_2();
              sub_2706B2A58(v616, v617);
              v618 = off_28081C740;

              if (v618 != -1)
              {
                OUTLINED_FUNCTION_0_5();
                v619 = swift_once();
              }

              OUTLINED_FUNCTION_6_6(v619, qword_280829340, v620, v621, v622, v623, v624, v625, v756, v772, v780, v790, v799);
              v626 = sub_2706E58BC();
              v627 = sub_2706E5C1C();
              if (OUTLINED_FUNCTION_16_6(v627))
              {
                v628 = OUTLINED_FUNCTION_15_0();
                OUTLINED_FUNCTION_18_2(v628);
                OUTLINED_FUNCTION_9_5(&dword_270680000, v629, v630, "DragSurrogateCoordinator: cancelling active local drag");
                OUTLINED_FUNCTION_14_4();
              }

              OUTLINED_FUNCTION_31_3();
              if (v40[3])
              {

                swift_unknownObjectRetain();
                v631 = OUTLINED_FUNCTION_17_3();
                v634 = sub_2706B2308(v631, v632, 395, v633, v2);

                sub_27068C52C(v634);
                swift_unknownObjectRelease();

                v635 = OUTLINED_FUNCTION_33_2();
                sub_2706B2AC4(v635, v636);
                goto LABEL_313;
              }

              goto LABEL_375;
            }
          }

LABEL_379:

          v817 = sub_2706C8368(57);
          v818 = v683;
          OUTLINED_FUNCTION_7_4();
          OUTLINED_FUNCTION_5_6();
          OUTLINED_FUNCTION_10_5(v684, v685, &type metadata for DragSurrogateCoordinator.State, v686, v687, v688, v689, v690, v756);
          OUTLINED_FUNCTION_13_7();
          OUTLINED_FUNCTION_8_6();
          OUTLINED_FUNCTION_10_5(v691, v692, &type metadata for DragSurrogateCoordinator.Event, v693, v694, v695, v696, v697, v767);
          OUTLINED_FUNCTION_34_2();
          i = 411;
          break;
        default:
          goto LABEL_379;
      }

      goto LABEL_382;
    case 4:
      switch(v42)
      {
        case 1:
          v356 = off_28081C740;

          if (v356 != -1)
          {
            OUTLINED_FUNCTION_0_5();
            v357 = swift_once();
          }

          OUTLINED_FUNCTION_6_6(v357, qword_280829340, v358, v359, v360, v361, v362, v363, v756, v772, v780, v790, v799);
          v315 = sub_2706E58BC();
          v364 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_16_6(v364))
          {
            v365 = OUTLINED_FUNCTION_15_0();
            OUTLINED_FUNCTION_18_2(v365);
            OUTLINED_FUNCTION_9_5(&dword_270680000, v366, v367, "DragSurrogateCoordinator: ignoring presentation update received while succeeding");
            OUTLINED_FUNCTION_14_4();
          }

LABEL_172:

          goto LABEL_313;
        case 4:
          goto LABEL_333;
        case 6:
          v158 = oslog | v6;
          if (!v7 && (v23 == 0xC000000000000000 ? (v159 = v4 == 1) : (v159 = 0), v159 && !v158) || !v7 && (v23 == 0xC000000000000000 ? (v160 = v4 == 3) : (v160 = 0), v160 && !v158))
          {
            *(v2 + 49) = 1;
            sub_2706AF9C8(0, 6);
            if (swift_unknownObjectWeakLoadStrong())
            {
              v812 = xmmword_2706EAA50;
              OUTLINED_FUNCTION_49_0();
              v813 = 0;
              v814 = 0;
              OUTLINED_FUNCTION_21_3();
              swift_allocObject();
              OUTLINED_FUNCTION_4_6();
              v161 = sub_2706DD84C();
              OUTLINED_FUNCTION_11_5(v161, v162, v163, v164, v165, v166, v167, v168, v756, v772, v780, v790, v799);

              swift_unknownObjectRelease();
            }

            if (!swift_unknownObjectWeakLoadStrong())
            {
              goto LABEL_325;
            }

            v169 = OUTLINED_FUNCTION_26_2();
            sub_2706C7CF4(v169, 0);
            goto LABEL_161;
          }

          if (!v7)
          {
            v600 = v23 == 0xC000000000000000 && v4 == 4;
            if (v600 && !v158)
            {
LABEL_333:
              if (off_28081C740 != -1)
              {
                OUTLINED_FUNCTION_0_5();
                v33 = swift_once();
              }

              OUTLINED_FUNCTION_6_6(v33, qword_280829340, v34, v35, v36, v37, v38, v39, v756, v772, v780, v790, v799);
              v601 = sub_2706E58BC();
              v602 = sub_2706E5C1C();
              if (OUTLINED_FUNCTION_16_6(v602))
              {
                v603 = OUTLINED_FUNCTION_15_0();
                OUTLINED_FUNCTION_18_2(v603);
                OUTLINED_FUNCTION_9_5(&dword_270680000, v604, v605, "DragSurrogateCoordinator: cancelling while waiting on data for successful drag");
                OUTLINED_FUNCTION_14_4();
              }

              OUTLINED_FUNCTION_31_3();
              OUTLINED_FUNCTION_17_3();
              OUTLINED_FUNCTION_23_2();
              sub_2706B2308(v606, v607, v608, v609, v610);
              sub_2706DD768();
LABEL_338:
              OUTLINED_FUNCTION_12_6();

              return;
            }
          }

          break;
      }

      goto LABEL_101;
    case 5:
      v171 = v42 == 6 && v4 == 1 && v23 == 0xC000000000000000;
      if (!v171 || oslog | v6 | v7)
      {
        goto LABEL_101;
      }

      v275 = v40;
      goto LABEL_152;
    case 6:
      goto LABEL_101;
    case 7:
      if (!v40)
      {
        if (!v42)
        {
          if (off_28081C740 != -1)
          {
            OUTLINED_FUNCTION_0_5();
            v33 = swift_once();
          }

          OUTLINED_FUNCTION_6_6(v33, qword_280829340, v34, v35, v36, v37, v38, v39, v756, v772, v780, v790, v799);
          v260 = sub_2706E58BC();
          v261 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_16_6(v261))
          {
            v262 = OUTLINED_FUNCTION_15_0();
            OUTLINED_FUNCTION_18_2(v262);
            OUTLINED_FUNCTION_9_5(&dword_270680000, v263, v264, "DragSurrogateCoordinator: prepare local drag");
            OUTLINED_FUNCTION_14_4();
          }

          type metadata accessor for DragSurrogateCoordinator.Context(0);
          v265 = swift_allocObject();
          sub_2706AF658();
          *(v265 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_presentation) = v4;

          v265[5] = v23;

          v266 = objc_allocWithZone(type metadata accessor for DragSurrogate_iOS(0));
          OUTLINED_FUNCTION_26_2();

          v265[3] = sub_27068AF78(v267);
          v265[4] = &off_28806B6E0;
          swift_unknownObjectRelease();
          v265[6] = oslog;
          v265[7] = v7;

          sub_2706AF9C8(v268, 0);
          *(v2 + 49) = 0;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v269 = OUTLINED_FUNCTION_26_2();
            sub_2706C7B0C(v269);
            swift_unknownObjectRelease();
          }

          if (v265[3])
          {
            swift_unknownObjectRetain();
            OUTLINED_FUNCTION_17_3();
            OUTLINED_FUNCTION_15_5();
            sub_2706B2308(v270, v271, v272, v273, v274);
            sub_27068B0D4();

            swift_unknownObjectRelease();

LABEL_313:
            OUTLINED_FUNCTION_12_6();

            sub_2706B2AC4(v584, v585);
            return;
          }

LABEL_367:
          __break(1u);
LABEL_368:
          __break(1u);
LABEL_369:
          __break(1u);
LABEL_370:
          __break(1u);
LABEL_371:
          __break(1u);
LABEL_372:
          __break(1u);
LABEL_373:
          __break(1u);
LABEL_374:
          __break(1u);
LABEL_375:
          __break(1u);
LABEL_376:

          v817 = sub_2706C8368(57);
          v818 = v637;
          OUTLINED_FUNCTION_7_4();
          OUTLINED_FUNCTION_5_6();
          OUTLINED_FUNCTION_10_5(v638, v639, &type metadata for DragSurrogateCoordinator.State, v640, v641, v642, v643, v644, v756);
          OUTLINED_FUNCTION_13_7();
          OUTLINED_FUNCTION_8_6();
          OUTLINED_FUNCTION_10_5(v645, v646, &type metadata for DragSurrogateCoordinator.Event, v647, v648, v649, v650, v651, v764);
          OUTLINED_FUNCTION_34_2();
          i = 350;
          goto LABEL_382;
        }

        v817 = sub_2706C8368(57);
        v818 = v713;
        OUTLINED_FUNCTION_7_4();
        OUTLINED_FUNCTION_5_6();
        OUTLINED_FUNCTION_10_5(v714, v715, &type metadata for DragSurrogateCoordinator.State, v716, v717, v718, v719, v720, v756);
        OUTLINED_FUNCTION_13_7();
        OUTLINED_FUNCTION_8_6();
        OUTLINED_FUNCTION_10_5(v721, v722, &type metadata for DragSurrogateCoordinator.Event, v723, v724, v725, v726, v727, v769);
        OUTLINED_FUNCTION_34_2();
        for (i = 254; ; i = 347)
        {
LABEL_382:
          v756 = i;
          sub_2706E5F8C();
          __break(1u);
LABEL_383:
          v728 = off_28081C740;

          if (v728 != -1)
          {
            OUTLINED_FUNCTION_0_5();
            v729 = swift_once();
          }

          OUTLINED_FUNCTION_6_6(v729, qword_280829340, v730, v731, v732, v733, v734, v735, v756, v772, v780, v790, v799);
          v736 = sub_2706E58BC();
          v737 = sub_2706E5C0C();
          if (OUTLINED_FUNCTION_16_6(v737))
          {
            v738 = OUTLINED_FUNCTION_15_0();
            OUTLINED_FUNCTION_18_2(v738);
            OUTLINED_FUNCTION_9_5(&dword_270680000, v739, v740, "DragSurrogateCoordinator: dataSessionFinished before start completed (this is fatal)");
            OUTLINED_FUNCTION_14_4();
          }

          v817 = sub_2706E630C();
          v818 = v741;
          MEMORY[0x2743A5EF0](0xD000000000000051, 0x80000002706F08D0);
          OUTLINED_FUNCTION_5_6();
          OUTLINED_FUNCTION_10_5(v742, v743, &type metadata for DragSurrogateCoordinator.State, v744, v745, v746, v747, v748, v770);
          OUTLINED_FUNCTION_13_7();
          v812 = xmmword_2706EAA70;
          v814 = 0;
          v815 = 0;
          v813 = 0;
          OUTLINED_FUNCTION_10_5(v749, v750, &type metadata for DragSurrogateCoordinator.Event, v751, v752, v753, v754, v755, v771);
          OUTLINED_FUNCTION_34_2();
        }
      }

      if (v42 == 1)
      {
        if (off_28081C740 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          v33 = swift_once();
        }

        OUTLINED_FUNCTION_6_6(v33, qword_280829340, v34, v35, v36, v37, v38, v39, v756, v772, v780, v790, v799);
        osloga = sub_2706E58BC();
        v524 = sub_2706E5C1C();
        if (os_log_type_enabled(osloga, v524))
        {
          v525 = OUTLINED_FUNCTION_15_0();
          *v525 = 0;
          _os_log_impl(&dword_270680000, osloga, v524, "DragSurrogateCoordinator: ignoring presentation update received while cancelling", v525, 2u);
          OUTLINED_FUNCTION_20_2();

          goto LABEL_313;
        }

        OUTLINED_FUNCTION_12_6();

        goto LABEL_166;
      }

      if (v42 == 4)
      {
        goto LABEL_325;
      }

      v129 = v42 == 6 && v4 == 1 && v23 == 0xC000000000000000;
      if (v129 && !(oslog | v6 | v7))
      {
        if (off_28081C740 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          v33 = swift_once();
        }

        OUTLINED_FUNCTION_6_6(v33, qword_280829340, v34, v35, v36, v37, v38, v39, v756, v772, v780, v790, v799);
        v130 = sub_2706E58BC();
        v131 = sub_2706E5C1C();
        if (OUTLINED_FUNCTION_16_6(v131))
        {
          v132 = OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_18_2(v132);
          OUTLINED_FUNCTION_9_5(&dword_270680000, v133, v134, "DragSurrogateCoordinator: local drag cancelled. All done.");
          OUTLINED_FUNCTION_14_4();
        }

        sub_2706AF9C8(1, 6);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v812 = xmmword_2706EAA40;
          OUTLINED_FUNCTION_49_0();
          v813 = 0;
          v814 = 0;
          OUTLINED_FUNCTION_21_3();
          swift_allocObject();
          OUTLINED_FUNCTION_4_6();
          v135 = sub_2706DD84C();
          OUTLINED_FUNCTION_11_5(v135, v136, v137, v138, v139, v140, v141, v142, v759, v775, v784, v793, v802);

          swift_unknownObjectRelease();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v143 = OUTLINED_FUNCTION_26_2();
          sub_2706C7CF4(v143, 1);
          swift_unknownObjectRelease();
        }

        sub_2706AEBAC(0, 0);
        goto LABEL_313;
      }

LABEL_101:
      if (v42 == 1)
      {
        if (v41 == 6)
        {
          v196 = OUTLINED_FUNCTION_44_0();
          sub_2706B2A58(v196, v197);
          if (off_28081C740 != -1)
          {
            OUTLINED_FUNCTION_0_5();
            v198 = swift_once();
          }

          OUTLINED_FUNCTION_6_6(v198, qword_280829340, v199, v200, v201, v202, v203, v204, v756, v772, v780, v790, v799);
          v205 = sub_2706E58BC();
          v206 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_16_6(v206))
          {
            v207 = OUTLINED_FUNCTION_15_0();
            OUTLINED_FUNCTION_18_2(v207);
            OUTLINED_FUNCTION_9_5(&dword_270680000, v208, v209, "DragSurrogateCoordinator: ignoring presentation update received while completed");
            OUTLINED_FUNCTION_14_4();
          }

          OUTLINED_FUNCTION_44_0();
          goto LABEL_313;
        }

        if (v41 != 5)
        {
          goto LABEL_377;
        }

        sub_2706B2A58(*(v2 + 40), 5);
        if (off_28081C740 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          v308 = swift_once();
        }

        OUTLINED_FUNCTION_6_6(v308, qword_280829340, v309, v310, v311, v312, v313, v314, v756, v772, v780, v790, v799);
        v315 = sub_2706E58BC();
        v316 = sub_2706E5C1C();
        if (OUTLINED_FUNCTION_16_6(v316))
        {
          v317 = OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_18_2(v317);
          OUTLINED_FUNCTION_9_5(&dword_270680000, v318, v319, "DragSurrogateCoordinator: ignoring presentation update received while failing");
          OUTLINED_FUNCTION_14_4();
        }

        goto LABEL_172;
      }

      if (v42 == 5)
      {
        v40 = v4;
LABEL_152:
        v276 = OUTLINED_FUNCTION_2_3();
        sub_2706B29B8(v276, v277);
        if (off_28081C740 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          v278 = swift_once();
        }

        OUTLINED_FUNCTION_6_6(v278, qword_280829340, v279, v280, v281, v282, v283, v284, v756, v772, v780, v790, v799);
        v285 = v40;
        v286 = v40;
        v287 = sub_2706E58BC();
        v288 = sub_2706E5BFC();
        if (os_log_type_enabled(v287, v288))
        {
          OUTLINED_FUNCTION_29_1();
          v289 = OUTLINED_FUNCTION_39_0();
          *v10 = 138543362;
          v290 = v40;
          v291 = _swift_stdlib_bridgeErrorToNSError();
          *(v10 + 4) = v291;
          *v289 = v291;

          OUTLINED_FUNCTION_22_3(&dword_270680000, v292, v288, "DragSurrogateCoordinator: local drag failed: %{public}@");
          sub_2706B2B70(v289, &qword_28081D490, &qword_2706EAD28);
          OUTLINED_FUNCTION_12_0();
          OUTLINED_FUNCTION_20_2();
        }

        else
        {
        }

        v293 = v40;
        v294 = OUTLINED_FUNCTION_44_0();
        sub_2706AF9C8(v294, v295);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v812 = xmmword_2706EAA60;
          OUTLINED_FUNCTION_49_0();
          v813 = 0;
          v814 = 0;
          OUTLINED_FUNCTION_21_3();
          swift_allocObject();
          OUTLINED_FUNCTION_4_6();
          v296 = sub_2706DD84C();
          OUTLINED_FUNCTION_11_5(v296, v297, v298, v299, v300, v301, v302, v303, v761, v777, v787, v796, v804);

          swift_unknownObjectRelease();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v304 = OUTLINED_FUNCTION_26_2();
          sub_2706C7CF4(v304, v40);

LABEL_161:
          OUTLINED_FUNCTION_12_6();

          swift_unknownObjectRelease();
          return;
        }

        OUTLINED_FUNCTION_12_6();

LABEL_166:

        return;
      }

      if (v42 == 6 && v4 == 4 && v23 == 0xC000000000000000)
      {
        OUTLINED_FUNCTION_46_0();
        if (!(v252 | v7))
        {
          if (v41 != 6)
          {
            goto LABEL_377;
          }

LABEL_325:
          OUTLINED_FUNCTION_12_6();
          return;
        }
      }

      if (v41 != 6)
      {
LABEL_377:
        sub_2706B2A58(v40, v41);
        v817 = sub_2706E630C();
        v818 = v653;
        OUTLINED_FUNCTION_7_4();
        OUTLINED_FUNCTION_5_6();
        OUTLINED_FUNCTION_10_5(v654, v655, &type metadata for DragSurrogateCoordinator.State, v656, v657, v658, v659, v660, v756);
        OUTLINED_FUNCTION_13_7();
        OUTLINED_FUNCTION_8_6();
        OUTLINED_FUNCTION_10_5(v661, v662, &type metadata for DragSurrogateCoordinator.Event, v663, v664, v665, v666, v667, v765);
        OUTLINED_FUNCTION_34_2();
        i = 478;
        goto LABEL_382;
      }

      v174 = OUTLINED_FUNCTION_44_0();
      sub_2706B2A58(v174, v175);
      if (off_28081C740 != -1)
      {
        OUTLINED_FUNCTION_0_5();
        v176 = swift_once();
      }

      OUTLINED_FUNCTION_6_6(v176, qword_280829340, v177, v178, v179, v180, v181, v182, v756, v772, v780, v790, v799);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_47_0();
      sub_2706B29B8(v183, v184);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_47_0();
      sub_2706B29B8(v185, v186);
      v187 = sub_2706E58BC();
      v188 = sub_2706E5C1C();
      if (OUTLINED_FUNCTION_32_2(v188))
      {
        OUTLINED_FUNCTION_29_1();
        v794 = OUTLINED_FUNCTION_38_1();
        v817 = v794;
        *v10 = 136446210;
        v814 = &type metadata for DragSurrogateCoordinator.Event;
        v189 = swift_allocObject();
        *&v812 = v189;
        v189[2] = v4;
        v189[3] = v23;
        v189[4] = v6;
        v189[5] = oslog;
        v189[6] = v7;
        OUTLINED_FUNCTION_3_5();
        OUTLINED_FUNCTION_47_0();
        sub_2706B29B8(v190, v191);
        v192 = sub_2706CB238(&v812);
        sub_2706C83E8(v192, v193, &v817);
        OUTLINED_FUNCTION_48_0();

        *(v10 + 4) = v4;
        OUTLINED_FUNCTION_51_0();
        OUTLINED_FUNCTION_51_0();
        OUTLINED_FUNCTION_19_6(&dword_270680000, v194, v195, "DragSurrogateCoordinator: ignoring %{public}s while completed");
        __swift_destroy_boxed_opaque_existential_1(v794);
        OUTLINED_FUNCTION_14_4();
        OUTLINED_FUNCTION_20_2();

        v99 = v40;
        v100 = 6;
LABEL_115:
        sub_2706B2AC4(v99, v100);
        goto LABEL_325;
      }

      v253 = OUTLINED_FUNCTION_44_0();
      sub_2706B2AC4(v253, v254);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_47_0();
      sub_2706911CC(v255, v256);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_12_6();

      sub_2706911CC(v257, v258);
      return;
    default:
      if (v42 == 1)
      {
LABEL_64:
        v144 = OUTLINED_FUNCTION_2_3();
        sub_2706B29B8(v144, v145);
        sub_2706B2A58(v40, v41);
        if (off_28081C740 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          v146 = swift_once();
        }

        v153 = OUTLINED_FUNCTION_53_0(v146, qword_280829340, v147, v148, v149, v150, v151, v152, v756, v772, v780, v790, v799);
        v154 = sub_2706E5C1C();
        v790 = v2;
        if (OUTLINED_FUNCTION_52_0(v154))
        {
          OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_48_0();
          *v155 = 0;
          OUTLINED_FUNCTION_36_1(&dword_270680000, v156, v157, "DragSurrogateCoordinator: set previews");
          v4 = v6;
          v23 = v40;
          OUTLINED_FUNCTION_12_0();
        }

        if (*(v40 + OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_presentation))
        {
          OUTLINED_FUNCTION_29_2();

          sub_270695100(&v812);
        }

        if (v40[3])
        {
          OUTLINED_FUNCTION_29_2();
          swift_unknownObjectRetain();
          sub_27068BECC(&v812);
          swift_unknownObjectRelease();
          if (v23 == 5)
          {
LABEL_312:
            v582 = OUTLINED_FUNCTION_2_3();
            sub_2706911CC(v582, v583);
            goto LABEL_313;
          }

          v237 = v3;
          v238 = sub_2706E58BC();
          v239 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_32_2(v239))
          {
            OUTLINED_FUNCTION_29_1();
            v240 = OUTLINED_FUNCTION_38_1();
            v817 = v240;
            *v237 = 136315138;
            v241 = OUTLINED_FUNCTION_50_0(&type metadata for DragBadgeStyle, v756, v772, v240, v2, v799, oslog, v812, *(&v812 + 1), v813, v814);
            v249 = OUTLINED_FUNCTION_55_0(v241, v242, v243, v244, v245, v246, v247, v248, v760, v776, v785, v795, v40, oslogc, v812, *(&v812 + 1), v813, v814, v815, v816);

            *(v237 + 4) = v249;
            sub_2706911CC(v4, v23);
            sub_2706B2AC4(v803, v41);
            OUTLINED_FUNCTION_19_6(&dword_270680000, v250, v251, "DragSurrogateCoordinator: set badge style (while preparing) %s");
            __swift_destroy_boxed_opaque_existential_1(v786);
            OUTLINED_FUNCTION_14_4();
            OUTLINED_FUNCTION_20_2();
          }

          else
          {

            v394 = OUTLINED_FUNCTION_2_3();
            sub_2706911CC(v394, v395);
            sub_2706B2AC4(v40, v41);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            OUTLINED_FUNCTION_41_0();
            sub_2706C7BF4(v790);
            swift_unknownObjectRelease();
          }

          goto LABEL_325;
        }

        __break(1u);
LABEL_366:
        __break(1u);
        goto LABEL_367;
      }

      if (v42 != 6)
      {
        goto LABEL_378;
      }

      OUTLINED_FUNCTION_46_0();
      if (v7 || ((OUTLINED_FUNCTION_25_2(), v44) ? (v44 = v4 == 1) : (v44 = 0), !v44 || v43))
      {
        if (v7 || ((OUTLINED_FUNCTION_25_2(), v44) ? (v369 = v4 == 4) : (v369 = 0), !v369 || v368))
        {
LABEL_378:

          v817 = sub_2706C8368(57);
          v818 = v668;
          OUTLINED_FUNCTION_7_4();
          OUTLINED_FUNCTION_5_6();
          OUTLINED_FUNCTION_10_5(v669, v670, &type metadata for DragSurrogateCoordinator.State, v671, v672, v673, v674, v675, v756);
          OUTLINED_FUNCTION_13_7();
          OUTLINED_FUNCTION_8_6();
          OUTLINED_FUNCTION_10_5(v676, v677, &type metadata for DragSurrogateCoordinator.Event, v678, v679, v680, v681, v682, v766);
          OUTLINED_FUNCTION_34_2();
          i = 283;
          goto LABEL_382;
        }

        v370 = OUTLINED_FUNCTION_45_0();
        sub_2706B2A58(v370, v371);
        v372 = off_28081C740;

        if (v372 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          v373 = swift_once();
        }

        OUTLINED_FUNCTION_6_6(v373, qword_280829340, v374, v375, v376, v377, v378, v379, v756, v772, v780, v790, v799);
        v380 = sub_2706E58BC();
        v381 = sub_2706E5C1C();
        if (OUTLINED_FUNCTION_16_6(v381))
        {
          v382 = OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_18_2(v382);
          OUTLINED_FUNCTION_9_5(&dword_270680000, v383, v384, "DragSurrogateCoordinator: cancelling while still preparing");
          OUTLINED_FUNCTION_14_4();
        }

        if (!v40[3])
        {
          goto LABEL_370;
        }

        type metadata accessor for Completion();
        OUTLINED_FUNCTION_21_3();
        swift_allocObject();
        swift_unknownObjectRetain();
        OUTLINED_FUNCTION_17_3();
        v385 = sub_2706DD84C();
        sub_27068C52C(v385);

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_31_3();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v386 = OUTLINED_FUNCTION_26_2();
          sub_2706C7C70(v386, 1);
          swift_unknownObjectRelease();
        }

        OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_15_5();
        sub_2706B2308(v387, v388, v389, v390, v391);
        sub_2706DD768();

        v392 = OUTLINED_FUNCTION_45_0();
        sub_2706B2AC4(v392, v393);
      }

      else
      {
        v45 = off_28081C740;

        if (v45 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          v46 = swift_once();
        }

        OUTLINED_FUNCTION_6_6(v46, qword_280829340, v47, v48, v49, v50, v51, v52, v756, v772, v780, v790, v799);
        v53 = sub_2706E58BC();
        v54 = sub_2706E5C1C();
        if (OUTLINED_FUNCTION_16_6(v54))
        {
          v55 = OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_18_2(v55);
          OUTLINED_FUNCTION_9_5(&dword_270680000, v56, v57, "DragSurrogateCoordinator: prepared for local drag");
          OUTLINED_FUNCTION_14_4();
        }

        v58 = OUTLINED_FUNCTION_45_0();
        sub_2706B2A58(v58, v59);
        v60 = OUTLINED_FUNCTION_37_1();
        sub_2706AF9C8(v60, v61);
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_2706C7B80(v2);
          swift_unknownObjectRelease();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v812 = xmmword_2706EAA50;
          OUTLINED_FUNCTION_49_0();
          v813 = 0;
          v814 = 0;
          OUTLINED_FUNCTION_21_3();
          swift_allocObject();
          OUTLINED_FUNCTION_4_6();
          v62 = sub_2706DD84C();
          OUTLINED_FUNCTION_11_5(v62, v63, v64, v65, v66, v67, v68, v69, v757, v773, v782, v791, v800);
          swift_unknownObjectRelease();
          v70 = OUTLINED_FUNCTION_45_0();
LABEL_239:
          sub_2706B2AC4(v70, v71);
          goto LABEL_324;
        }
      }

      OUTLINED_FUNCTION_45_0();
      goto LABEL_313;
  }
}

uint64_t sub_2706B2158(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2706C7C70(a1, 1);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = xmmword_2706EAA40;
    type metadata accessor for Completion();
    v5 = 0;
    v6 = 0;
    swift_allocObject();
    v3 = sub_2706DD84C();
    sub_2706C78E8(a1, &v4, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2706B222C(uint64_t a1, uint64_t a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2706C7C70(a1, a2);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = xmmword_2706EAA60;
    type metadata accessor for Completion();
    v7 = 0;
    v8 = 0;
    swift_allocObject();
    v5 = sub_2706DD84C();
    sub_2706C78E8(a1, &v6, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_2706B2308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 56);
  OUTLINED_FUNCTION_21_3();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v5;
  v12[4] = a4;
  v12[5] = a5;
  type metadata accessor for Completion();
  OUTLINED_FUNCTION_21_3();
  swift_allocObject();

  sub_2706A5AA4(a4, a5);

  return sub_2706DD8C4(a1, a2, a3, sub_2706B29AC, v12);
}

void sub_2706B23CC(id a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  if (*(a3 + 56) == a2)
  {
    v16 = v5;
    v17 = v6;
    if (a4)
    {

      a4(v10);
      sub_27068F6BC(a4, a5);
    }

    if (a1)
    {
      *&v12 = a1;
      *(&v12 + 1) = 0xA000000000000000;
      v14 = 0;
      v15 = 0;
      v13 = 0;
      v11 = a1;
      sub_2706AFBAC(&v12);
      sub_2706911CC(a1, 0xA000000000000000);
    }

    else
    {
      v12 = xmmword_2706EAA90;
      v14 = 0;
      v15 = 0;
      v13 = 0;
      sub_2706AFBAC(&v12);
    }
  }
}

uint64_t sub_2706B249C()
{
  sub_2706A59B4(v0 + 16);

  sub_2706B2AC4(*(v0 + 40), *(v0 + 48));
  return v0;
}

uint64_t sub_2706B24D0()
{
  sub_2706B249C();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t type metadata accessor for DragSurrogateCoordinator.Context(uint64_t a1)
{
  result = qword_28081D458;
  if (!qword_28081D458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2706B257C(uint64_t a1)
{
  sub_2706B2638(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2706B2638(uint64_t a1)
{
  if (!qword_28081D468)
  {
    sub_2706E576C();
    v1 = sub_2706E5D3C();
    if (!v2)
    {
      atomic_store(v1, &qword_28081D468);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13UniversalDrag0B18SurrogateEndResultO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_13UniversalDrag0B20SurrogateCoordinatorC5State33_DDC46C3D7E166109DBFCFBCF68CE4670LLO(uint64_t a1)
{
  if ((*(a1 + 8) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_2706B26C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 9))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 7)
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

uint64_t sub_2706B2704(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2706B2748(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 8) = a2;
  return result;
}

void sub_2706B2770(uint64_t a1, void *a2)
{
  if (qword_28081C730 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_28081C730);
  }

  v3 = sub_2706E58DC();
  __swift_project_value_buffer(v3, qword_2808292D8);
  v4 = a2;
  v5 = sub_2706E58BC();
  v6 = sub_2706E5BEC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_29_1();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    if (a2)
    {
      v9 = a2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      v11 = v10;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    *(v7 + 4) = v10;
    *v8 = v11;
    _os_log_impl(&dword_270680000, v5, v6, "DragSurrogate: dataSessionDidFinish: %@", v7, 0xCu);
    sub_2706B2B70(v8, &qword_28081D490, &qword_2706EAD28);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_12_0();
  }

  v12 = 3;
  if (a2)
  {
    v12 = a2;
  }

  v13 = 0x8000000000000000;
  if (!a2)
  {
    v13 = 0xC000000000000000;
  }

  v15[0] = v12;
  v15[1] = v13;
  v14 = OUTLINED_FUNCTION_42_0();
  sub_2706AFBAC(v15);
}

uint64_t sub_2706B28F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D470, &qword_2706EAD08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2706B2968()
{

  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_21_3();

  return MEMORY[0x2821FE8E8](v1);
}

double sub_2706B29B8(void *a1, unint64_t a2)
{
  switch(a2 >> 61)
  {
    case 0uLL:

      break;
    case 1uLL:
    case 2uLL:

      break;
    case 3uLL:
    case 4uLL:
    case 5uLL:

      v3 = a1;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2706B2A58(void *a1, char a2)
{
  switch(a2)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:

      break;
    case 5:
      v2 = a1;
      break;
    case 6:
      sub_2706B2AB4(a1);
      break;
    default:
      return;
  }
}

id sub_2706B2AB4(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_2706B2AC4(void *a1, char a2)
{
  switch(a2)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:

      break;
    case 5:

      break;
    case 6:
      sub_2706B2B20(a1);
      break;
    default:
      return;
  }
}

void sub_2706B2B20(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_2706B2B30()
{
  sub_2706911CC(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2706B2B70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2706B2BD0()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2706B2C20(uint64_t result, unint64_t a2)
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:

      break;
    case 2uLL:
      v2 = a2 & 0xCFFFFFFFFFFFFFFFLL;

      result = sub_270688E88(result, v2);
      break;
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

unint64_t sub_2706B2CD4()
{
  result = qword_28081D250;
  if (!qword_28081D250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28081D250);
  }

  return result;
}

uint64_t sub_2706B2D18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D498, &qword_2706EAD30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t get_enum_tag_for_layout_string_13UniversalDrag0B20SurrogateCoordinatorC5EventO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >> 62 == 3)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 >> 61;
  }
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

uint64_t sub_2706B2DBC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xA && *(a1 + 40))
    {
      v2 = *a1 + 9;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 1) & 0xFFFFFFF7 | (8 * ((*(a1 + 8) & 0x1000000000000000) != 0))) ^ 0xF;
      if (v2 >= 9)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2706B2E08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 9)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 10;
    if (a3 >= 0xA)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xA)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 3) & 1) - 2 * a2) << 60;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 0;
    }
  }

  return result;
}

void *sub_2706B2E78(void *result, uint64_t a2)
{
  if (a2 < 6)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFFFLL | (a2 << 61);
  }

  else
  {
    *result = (a2 - 6);
    result[1] = 0xC000000000000000;
    result[3] = 0;
    result[4] = 0;
    result[2] = 0;
  }

  return result;
}

uint64_t sub_2706B2EB8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2706B2F0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_2706B2F68(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void OUTLINED_FUNCTION_7_4()
{

  JUMPOUT(0x2743A5EF0);
}

void OUTLINED_FUNCTION_9_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_10_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return sub_2706E5F2C();
}

uint64_t OUTLINED_FUNCTION_11_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return sub_2706C78E8(v13, va, a1);
}

void OUTLINED_FUNCTION_13_7()
{

  JUMPOUT(0x2743A5EF0);
}

void OUTLINED_FUNCTION_14_4()
{

  JUMPOUT(0x2743A75B0);
}

BOOL OUTLINED_FUNCTION_16_6(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_19_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_20_2()
{

  JUMPOUT(0x2743A75B0);
}

void OUTLINED_FUNCTION_22_3(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

double OUTLINED_FUNCTION_27_2(void *a1)
{

  return sub_2706B29B8(a1, v1);
}

void OUTLINED_FUNCTION_31_3()
{

  sub_2706AF9C8(1, 7);
}

BOOL OUTLINED_FUNCTION_32_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_36_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_38_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return type metadata accessor for Completion();
}

uint64_t OUTLINED_FUNCTION_50_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = a1;
  LOBYTE(a8) = v11;

  return sub_2706CB238(&a8);
}

void OUTLINED_FUNCTION_51_0()
{

  sub_2706911CC(v1, v0);
}

BOOL OUTLINED_FUNCTION_52_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_53_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  __swift_project_value_buffer(a13, a2);

  return sub_2706E58BC();
}

unint64_t OUTLINED_FUNCTION_55_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  return sub_2706C83E8(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_56_0(uint64_t a1)
{

  return sub_2706E5A4C();
}

uint64_t sub_2706B3488(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2706B34C8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2706B3524()
{
  v1 = sub_270690D44(0, &qword_28081D4C8, 0x277CBEAC0);
  sub_2706B462C(v0 + 16, v7);
  if (swift_dynamicCast())
  {
    return v6;
  }

  v3 = sub_2706E5E8C();
  swift_allocError();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
  *v5 = v1;

  sub_2706E5E6C();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84160], v3);
  return swift_willThrow();
}

uint64_t sub_2706B3650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2706B3524();
  if (!v3)
  {
    type metadata accessor for PropertyListTypeDecoder.KeyedDecoder(0, a2, a3, v7);

    swift_getWitnessTable();
    return sub_2706E607C();
  }

  return result;
}

uint64_t sub_2706B36F8@<X0>(void *a1@<X8>)
{
  v3 = sub_270690D44(0, &qword_28081D4B8, 0x277CBEA60);
  sub_2706B462C((v1 + 2), v10);
  if (swift_dynamicCast())
  {
    v4 = v10[5];
    v5 = *v1;
    a1[3] = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder;
    a1[4] = sub_2706B4688();
    *a1 = v5;
    a1[1] = 0;
    a1[2] = v4;
  }

  else
  {
    v7 = sub_2706E5E8C();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    *v9 = v3;

    sub_2706E5E6C();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84160], v7);
    return swift_willThrow();
  }
}

uint64_t sub_2706B3858@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for PropertyListTypeDecoder.RootDecoder;
  a1[4] = sub_2706B4558();
  v3 = swift_allocObject();
  *a1 = v3;
  return sub_2706B45F4(v1, v3 + 16);
}

uint64_t sub_2706B38B8()
{
  v1 = sub_270690D44(0, qword_28081D4E0, 0x277CBEB68);
  sub_2706B462C(v0 + 16, v9);
  v2 = swift_dynamicCast();
  if (v2)
  {
  }

  else
  {
    v3 = sub_2706E5E8C();
    v4 = swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    *v6 = v1;

    sub_2706E5E6C();
    (*(*(v3 - 8) + 104))(v6, *MEMORY[0x277D84160], v3);
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_2706B3A00()
{
  sub_2706B462C(v0 + 16, v8);
  v1 = MEMORY[0x277D839B0];
  if (swift_dynamicCast())
  {
    v2 = v7;
  }

  else
  {
    v3 = sub_2706E5E8C();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    *v5 = v1;

    sub_2706E5E6C();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84160], v3);
    swift_willThrow();
  }

  return v2 & 1;
}

uint64_t sub_2706B3B1C()
{
  sub_2706B462C(v0 + 16, v7);
  v1 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {
    return v6;
  }

  v3 = sub_2706E5E8C();
  swift_allocError();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
  *v5 = v1;

  sub_2706E5E6C();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84160], v3);
  return swift_willThrow();
}

uint64_t sub_2706B3C34()
{
  sub_2706B462C(v0 + 16, v6);
  v1 = MEMORY[0x277D839F8];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    v3 = sub_2706E5E8C();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    *v5 = v1;

    sub_2706E5E6C();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84160], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2706B3D4C()
{
  sub_2706B462C(v0 + 16, v6);
  v1 = MEMORY[0x277D83A90];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    v3 = sub_2706E5E8C();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    *v5 = v1;

    sub_2706E5E6C();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84160], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2706B3E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_7_5(a1, a2, a3, a4);
  if (OUTLINED_FUNCTION_6_7(v10, v4))
  {
    return v10[0];
  }

  v6 = sub_2706E5E8C();
  OUTLINED_FUNCTION_11_6(v6, MEMORY[0x277D841A0]);
  OUTLINED_FUNCTION_20_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
  v7 = OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_8_7(v7);
  OUTLINED_FUNCTION_16();
  v8 = OUTLINED_FUNCTION_17_4();
  v9(v8);
  return swift_willThrow();
}

uint64_t sub_2706B3F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_7_5(a1, a2, a3, a4);
  if (OUTLINED_FUNCTION_6_7(v10, v4))
  {
    return v10[0];
  }

  v6 = sub_2706E5E8C();
  OUTLINED_FUNCTION_11_6(v6, MEMORY[0x277D841A0]);
  OUTLINED_FUNCTION_20_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
  v7 = OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_8_7(v7);
  OUTLINED_FUNCTION_16();
  v8 = OUTLINED_FUNCTION_17_4();
  v9(v8);
  return swift_willThrow();
}

uint64_t sub_2706B3FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_7_5(a1, a2, a3, a4);
  if (OUTLINED_FUNCTION_6_7(v10, v4))
  {
    return v10[0];
  }

  v6 = sub_2706E5E8C();
  OUTLINED_FUNCTION_11_6(v6, MEMORY[0x277D841A0]);
  OUTLINED_FUNCTION_20_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
  v7 = OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_8_7(v7);
  OUTLINED_FUNCTION_16();
  v8 = OUTLINED_FUNCTION_17_4();
  v9(v8);
  return swift_willThrow();
}

uint64_t sub_2706B40B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_7_5(a1, a2, a3, a4);
  if (OUTLINED_FUNCTION_6_7(v10, v4))
  {
    return v10[0];
  }

  v6 = sub_2706E5E8C();
  OUTLINED_FUNCTION_11_6(v6, MEMORY[0x277D841A0]);
  OUTLINED_FUNCTION_20_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
  v7 = OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_8_7(v7);
  OUTLINED_FUNCTION_16();
  v8 = OUTLINED_FUNCTION_17_4();
  v9(v8);
  return swift_willThrow();
}

uint64_t sub_2706B4174(uint64_t a1)
{
  sub_2706B462C((v4 + 2), v13);
  if (a1 == MEMORY[0x277CC9318] && (sub_2706B462C(v13, &v11), sub_270690D44(0, &qword_28081D4D8, 0x277CBEA90), (swift_dynamicCast() & 1) != 0))
  {

    sub_270690AAC(v13, &v11);
    return swift_dynamicCast();
  }

  else
  {
    v7 = *v4;
    sub_2706B462C(v13, &v12);
    sub_2706E5F3C();

    v8 = sub_2706E59AC();
    *&v11 = v7;
    *(&v11 + 1) = v8;
    sub_2706B46F4();
    v10 = swift_allocObject();
    sub_2706B45F4(&v11, v10 + 16);
    sub_2706E5B7C();
    sub_2706B4748(&v11);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }
}

unint64_t sub_2706B4558()
{
  result = qword_28081D4B0;
  if (!qword_28081D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D4B0);
  }

  return result;
}

uint64_t sub_2706B45AC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2706B462C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2706B4688()
{
  result = qword_28081D4C0;
  if (!qword_28081D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D4C0);
  }

  return result;
}

unint64_t sub_2706B46F4()
{
  result = qword_28081D4D0;
  if (!qword_28081D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D4D0);
  }

  return result;
}

uint64_t sub_2706B4778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2706B47C0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2706B4800(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2706B4850(uint64_t *a1, int a2)
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

uint64_t sub_2706B4890(uint64_t result, int a2, int a3)
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

uint64_t sub_2706B48E8(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v4 = [a2 allKeys];
  sub_2706E5B1C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D588, &qword_2706EB390);
  sub_2706B8380();
  v5 = sub_2706E5AEC();

  return v5;
}

uint64_t sub_2706B49C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  sub_2706B462C(a1, v7);
  if (swift_dynamicCast())
  {
    sub_2706E66DC();
  }

  else if (swift_dynamicCast())
  {
    sub_2706E66EC();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(a4, 1, 1, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_2706B4A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2706E5E6C();
}

uint64_t sub_2706B4B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a2;
  v31 = a3;
  v27 = a8;
  v13 = sub_2706E5D3C();
  v26 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  *&v29[0] = sub_2706E66CC();
  *(&v29[0] + 1) = v16;
  v17 = [a4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v17)
  {
    sub_2706E5D6C();
    swift_unknownObjectRelease();
    sub_270690AAC(v29, v30);
    sub_2706B462C(v30, v29);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v30);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, a6);
      return (*(*(a6 - 8) + 32))(v27, v15, a6);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v15, 1, 1, a6);
      (*(v26 + 8))(v15, v13);
      v23 = sub_2706E5E8C();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
      *v25 = v28;
      sub_2706B4A9C(0, 0xE000000000000000, v31);

      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  else
  {
    v19 = sub_2706E5E8C();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D578, &qword_2706EB380);
    v21[3] = a5;
    v21[4] = a7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
    sub_2706B4A9C(0, 0xE000000000000000, v31);

    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84158], v19);
    return swift_willThrow();
  }
}

BOOL sub_2706B4EB4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  *&v9[0] = sub_2706E66CC();
  *(&v9[0] + 1) = v6;
  v7 = [a3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v7)
  {
    sub_2706E5D6C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  sub_2706B82E8(v9);
  return v7 != 0;
}

BOOL sub_2706B4F64(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_2706E5E8C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_270690D44(0, qword_28081D4E0, 0x277CBEB68);
  sub_2706B4B04(a1, v15, a2, a3, a4, v15, a5, &v21);
  if (!v5)
  {
    goto LABEL_7;
  }

  v21 = v5;
  v16 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A8, &qword_2706EAD40);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  if ((*(v12 + 88))(v14, v11) != *MEMORY[0x277D84160])
  {
    (*(v12 + 8))(v14, v11);
LABEL_7:

    return v5 == 0;
  }

  (*(v12 + 96))(v14, v11);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
  v18 = sub_2706E5E7C();
  (*(*(v18 - 8) + 8))(&v14[v17], v18);

  return v5 == 0;
}

uint64_t sub_2706B51A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_2706B4B04(a1, MEMORY[0x277D839B0], a2, a3, a4, MEMORY[0x277D839B0], a5, &v8);
  if (!v5)
  {
    v6 = v8;
  }

  return v6 & 1;
}

uint64_t sub_2706B51F0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  result = sub_2706B4B04(a1, MEMORY[0x277D837D0], a2, a3, a4, MEMORY[0x277D837D0], a5, &v7);
  if (!v5)
  {
    return v7;
  }

  return result;
}

double sub_2706B523C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_2706B4B04(a1, MEMORY[0x277D839F8], a2, a3, a4, MEMORY[0x277D839F8], a5, &v7);
  if (!v5)
  {
    return v7;
  }

  return result;
}

float sub_2706B5288(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_2706B4B04(a1, MEMORY[0x277D83A90], a2, a3, a4, MEMORY[0x277D83A90], a5, &v7);
  if (!v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_2706B52D4()
{
  OUTLINED_FUNCTION_2_4();
  result = sub_2706B4B04(v1, v5, v2, v3, v4, v5, v6, &v8);
  if (!v0)
  {
    return v8;
  }

  return result;
}

uint64_t sub_2706B530C()
{
  OUTLINED_FUNCTION_2_4();
  result = sub_2706B4B04(v1, v5, v2, v3, v4, v5, v6, &v8);
  if (!v0)
  {
    return v8;
  }

  return result;
}

uint64_t sub_2706B5344()
{
  OUTLINED_FUNCTION_2_4();
  result = sub_2706B4B04(v1, v5, v2, v3, v4, v5, v6, &v8);
  if (!v0)
  {
    return v8;
  }

  return result;
}

uint64_t sub_2706B537C()
{
  OUTLINED_FUNCTION_2_4();
  result = sub_2706B4B04(v1, v5, v2, v3, v4, v5, v6, &v8);
  if (!v0)
  {
    return v8;
  }

  return result;
}

uint64_t sub_2706B53B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_2706B4B04(a2, MEMORY[0x277D84F70] + 8, a3, a4, a5, MEMORY[0x277D84F70] + 8, a7, v24);
  if (!v9)
  {
    v25 = 0;
    if (a1 == MEMORY[0x277CC9318] && (sub_2706B462C(v24, &v22), sub_270690D44(0, &qword_28081D4D8, 0x277CBEA90), (swift_dynamicCast() & 1) != 0))
    {

      sub_270690AAC(v24, &v22);
      return swift_dynamicCast();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D568, &unk_2706EB370);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2706E8FC0;
      *(inited + 56) = a5;
      *(inited + 64) = a7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
      (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
      *&v22 = a3;

      sub_2706DD674(inited);
      v18 = v22;
      sub_2706B462C(v24, &v23);
      sub_2706E5F3C();
      v19 = sub_2706E59AC();
      *&v22 = v18;
      *(&v22 + 1) = v19;
      sub_2706B46F4();
      v21 = swift_allocObject();
      sub_2706B45F4(&v22, v21 + 16);
      sub_2706E5B7C();
      sub_2706B4748(&v22);
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  return result;
}

void sub_2706B55F0(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v17 = sub_270690D44(0, &qword_28081D4C8, 0x277CBEAC0);
  sub_2706B4B04(a1, v17, a2, a3, a4, v17, a6, v24);
  if (!v8)
  {
    v24[12] = a8;
    v18 = v24[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D568, &unk_2706EB370);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2706E8FC0;
    *(inited + 56) = a4;
    *(inited + 64) = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
    v24[0] = a2;
    v21 = v18;

    sub_2706DD674(inited);
    v24[1] = v21;
    type metadata accessor for PropertyListTypeDecoder.KeyedDecoder(0, a5, a7, v22);

    v23 = v21;
    swift_getWitnessTable();
    sub_2706E607C();
  }
}

void sub_2706B57A4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v13 = sub_270690D44(0, &qword_28081D4B8, 0x277CBEA60);
  sub_2706B4B04(a1, v13, a2, a3, a4, v13, a5, &v19);
  if (!v6)
  {
    v14 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D568, &unk_2706EB370);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2706E8FC0;
    *(inited + 56) = a4;
    *(inited + 64) = a5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
    v19 = a2;
    v17 = v14;

    sub_2706DD674(inited);
    v18 = v19;
    a6[3] = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder;
    a6[4] = sub_2706B4688();

    *a6 = v18;
    a6[1] = 0;
    a6[2] = v17;
  }
}

uint64_t sub_2706B5CE0()
{
  result = sub_2706E63AC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2706B5D30()
{
  result = sub_2706E63BC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2706B5DD8()
{
  result = sub_2706E63EC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2706B5E28()
{
  result = sub_2706E63CC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2706B5F50()
{
  result = sub_2706E63FC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2706B5FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_2706B6148()
{
  v1 = *v0;

  return v1;
}

void sub_2706B6178(uint64_t a1@<X8>)
{
  sub_2706B60F0();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t sub_2706B61B4@<X0>(uint64_t a1@<X8>)
{
  result = sub_2706B60FC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2706B61E4(uint64_t a1)
{
  v2 = sub_2706B825C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706B6220(uint64_t a1)
{
  v2 = sub_2706B825C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706B625C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D568, &unk_2706EB370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2706E8FC0;
  v6 = sub_2706E611C();
  v8 = v7;
  *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
  *(inited + 64) = sub_2706B825C();
  v9 = swift_allocObject();
  *(inited + 32) = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  *(v9 + 32) = a4;
  *(v9 + 40) = 0;

  sub_2706DD674(inited);

  return sub_2706E5E6C();
}

uint64_t sub_2706B6370()
{
  v2 = v0[1];
  v1 = v0[2];
  if (v2 >= [v1 count])
  {
    v6 = sub_2706E5E8C();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    *v8 = MEMORY[0x277D839B0];
    sub_2706B625C(0, 0xE000000000000000, *v0, v2);
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84170], v6);
    swift_willThrow();
  }

  else
  {
    v3 = [v1 objectAtIndexedSubscript_];
    sub_2706E5D6C();
    swift_unknownObjectRelease();
    sub_2706B462C(v15, v14);
    v4 = MEMORY[0x277D839B0];
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v15);
      v5 = v13;
      v0[1] = v2 + 1;
    }

    else
    {
      v9 = sub_2706E5E8C();
      swift_allocError();
      v11 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
      *v11 = v4;
      sub_2706B625C(0, 0xE000000000000000, *v0, v2);
      (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D84160], v9);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  return v5 & 1;
}

uint64_t sub_2706B65A8()
{
  v2 = v0[1];
  v1 = v0[2];
  if (v2 >= [v1 count])
  {
    v6 = sub_2706E5E8C();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    *v8 = MEMORY[0x277D837D0];
    sub_2706B625C(0, 0xE000000000000000, *v0, v2);
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84170], v6);
    return swift_willThrow();
  }

  else
  {
    v3 = [v1 objectAtIndexedSubscript_];
    sub_2706E5D6C();
    swift_unknownObjectRelease();
    sub_2706B462C(v14, v13);
    v4 = MEMORY[0x277D837D0];
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v14);
      result = v12;
      v0[1] = v2 + 1;
    }

    else
    {
      v9 = sub_2706E5E8C();
      swift_allocError();
      v11 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
      *v11 = v4;
      sub_2706B625C(0, 0xE000000000000000, *v0, v2);
      (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D84160], v9);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v14);
    }
  }

  return result;
}

uint64_t sub_2706B67DC()
{
  v2 = v0[1];
  v1 = v0[2];
  if (v2 >= [v1 count])
  {
    v6 = sub_2706E5E8C();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    *v8 = MEMORY[0x277D839F8];
    sub_2706B625C(0, 0xE000000000000000, *v0, v2);
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84170], v6);
    return swift_willThrow();
  }

  else
  {
    v3 = [v1 objectAtIndexedSubscript_];
    sub_2706E5D6C();
    swift_unknownObjectRelease();
    sub_2706B462C(v13, v12);
    v4 = MEMORY[0x277D839F8];
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_1(v13);
      v0[1] = v2 + 1;
    }

    else
    {
      v9 = sub_2706E5E8C();
      swift_allocError();
      v11 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
      *v11 = v4;
      sub_2706B625C(0, 0xE000000000000000, *v0, v2);
      (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D84160], v9);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v13);
    }
  }

  return result;
}

uint64_t sub_2706B6A10()
{
  v2 = v0[1];
  v1 = v0[2];
  if (v2 >= [v1 count])
  {
    v6 = sub_2706E5E8C();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    *v8 = MEMORY[0x277D83A90];
    sub_2706B625C(0, 0xE000000000000000, *v0, v2);
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84170], v6);
    return swift_willThrow();
  }

  else
  {
    v3 = [v1 objectAtIndexedSubscript_];
    sub_2706E5D6C();
    swift_unknownObjectRelease();
    sub_2706B462C(v13, v12);
    v4 = MEMORY[0x277D83A90];
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_1(v13);
      v0[1] = v2 + 1;
    }

    else
    {
      v9 = sub_2706E5E8C();
      swift_allocError();
      v11 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
      *v11 = v4;
      sub_2706B625C(0, 0xE000000000000000, *v0, v2);
      (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D84160], v9);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v13);
    }
  }

  return result;
}

void sub_2706B6C44()
{
  OUTLINED_FUNCTION_10_6();
  v2 = [v0 count];
  if (v1 >= v2)
  {
    v15 = sub_2706E5E8C();
    OUTLINED_FUNCTION_11_6(v15, MEMORY[0x277D841A0]);
    OUTLINED_FUNCTION_9_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    v16 = OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_13_8(v16, v17, v18);
    OUTLINED_FUNCTION_1_8();
    v19 = OUTLINED_FUNCTION_5_7();
    v20(v19);
    swift_willThrow();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_21_4(v2, sel_objectAtIndexedSubscript_);
    OUTLINED_FUNCTION_16_7(v3, v4, v5, v6, v7, v8, v9);
    v10 = swift_unknownObjectRelease();
    OUTLINED_FUNCTION_15_6(v10, v11, v12, v13);
    if (OUTLINED_FUNCTION_3_6(v27, v14))
    {
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_18_3();
    }

    else
    {
      v21 = sub_2706E5E8C();
      OUTLINED_FUNCTION_11_6(v21, MEMORY[0x277D841A0]);
      OUTLINED_FUNCTION_9_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
      v22 = OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_13_8(v22, v23, v24);
      OUTLINED_FUNCTION_1_8();
      v25 = OUTLINED_FUNCTION_5_7();
      v26(v25);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }
}

void sub_2706B6DD0()
{
  OUTLINED_FUNCTION_10_6();
  v2 = [v0 count];
  if (v1 >= v2)
  {
    v15 = sub_2706E5E8C();
    OUTLINED_FUNCTION_11_6(v15, MEMORY[0x277D841A0]);
    OUTLINED_FUNCTION_9_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    v16 = OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_13_8(v16, v17, v18);
    OUTLINED_FUNCTION_1_8();
    v19 = OUTLINED_FUNCTION_5_7();
    v20(v19);
    swift_willThrow();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_21_4(v2, sel_objectAtIndexedSubscript_);
    OUTLINED_FUNCTION_16_7(v3, v4, v5, v6, v7, v8, v9);
    v10 = swift_unknownObjectRelease();
    OUTLINED_FUNCTION_15_6(v10, v11, v12, v13);
    if (OUTLINED_FUNCTION_3_6(v27, v14))
    {
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_18_3();
    }

    else
    {
      v21 = sub_2706E5E8C();
      OUTLINED_FUNCTION_11_6(v21, MEMORY[0x277D841A0]);
      OUTLINED_FUNCTION_9_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
      v22 = OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_13_8(v22, v23, v24);
      OUTLINED_FUNCTION_1_8();
      v25 = OUTLINED_FUNCTION_5_7();
      v26(v25);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }
}

void sub_2706B6F5C()
{
  OUTLINED_FUNCTION_10_6();
  v2 = [v0 count];
  if (v1 >= v2)
  {
    v15 = sub_2706E5E8C();
    OUTLINED_FUNCTION_11_6(v15, MEMORY[0x277D841A0]);
    OUTLINED_FUNCTION_9_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    v16 = OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_13_8(v16, v17, v18);
    OUTLINED_FUNCTION_1_8();
    v19 = OUTLINED_FUNCTION_5_7();
    v20(v19);
    swift_willThrow();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_21_4(v2, sel_objectAtIndexedSubscript_);
    OUTLINED_FUNCTION_16_7(v3, v4, v5, v6, v7, v8, v9);
    v10 = swift_unknownObjectRelease();
    OUTLINED_FUNCTION_15_6(v10, v11, v12, v13);
    if (OUTLINED_FUNCTION_3_6(v27, v14))
    {
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_18_3();
    }

    else
    {
      v21 = sub_2706E5E8C();
      OUTLINED_FUNCTION_11_6(v21, MEMORY[0x277D841A0]);
      OUTLINED_FUNCTION_9_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
      v22 = OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_13_8(v22, v23, v24);
      OUTLINED_FUNCTION_1_8();
      v25 = OUTLINED_FUNCTION_5_7();
      v26(v25);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }
}

void sub_2706B70E8()
{
  OUTLINED_FUNCTION_10_6();
  v2 = [v0 count];
  if (v1 >= v2)
  {
    v15 = sub_2706E5E8C();
    OUTLINED_FUNCTION_11_6(v15, MEMORY[0x277D841A0]);
    OUTLINED_FUNCTION_9_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    v16 = OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_13_8(v16, v17, v18);
    OUTLINED_FUNCTION_1_8();
    v19 = OUTLINED_FUNCTION_5_7();
    v20(v19);
    swift_willThrow();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_21_4(v2, sel_objectAtIndexedSubscript_);
    OUTLINED_FUNCTION_16_7(v3, v4, v5, v6, v7, v8, v9);
    v10 = swift_unknownObjectRelease();
    OUTLINED_FUNCTION_15_6(v10, v11, v12, v13);
    if (OUTLINED_FUNCTION_3_6(v27, v14))
    {
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_18_3();
    }

    else
    {
      v21 = sub_2706E5E8C();
      OUTLINED_FUNCTION_11_6(v21, MEMORY[0x277D841A0]);
      OUTLINED_FUNCTION_9_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
      v22 = OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_13_8(v22, v23, v24);
      OUTLINED_FUNCTION_1_8();
      v25 = OUTLINED_FUNCTION_5_7();
      v26(v25);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }
}

uint64_t sub_2706B7274()
{
  v2 = v1[1];
  v3 = v1[2];
  if (v2 >= [v3 count])
  {
    v6 = sub_2706E5E8C();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    *v8 = MEMORY[0x277D84F70] + 8;
    sub_2706B625C(0, 0xE000000000000000, *v1, v2);
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84170], v6);
    return swift_willThrow();
  }

  else
  {
    v4 = [v3 objectAtIndexedSubscript_];
    sub_2706E5D6C();
    result = swift_unknownObjectRelease();
    v1[1] = v2 + 1;
  }

  return result;
}

uint64_t sub_2706B73B4(unint64_t *a1, void *a2)
{
  sub_270690D44(0, a1, a2);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  if (v3 >= [v4 count])
  {
    v18 = sub_2706E5E8C();
    OUTLINED_FUNCTION_11_6(v18, MEMORY[0x277D841A0]);
    OUTLINED_FUNCTION_9_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    v19 = OUTLINED_FUNCTION_0_6();
    sub_2706B625C(v19, v20, v21, v3);
    OUTLINED_FUNCTION_1_8();
    v22 = OUTLINED_FUNCTION_5_7();
    v23(v22);
    return swift_willThrow();
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript_];
    OUTLINED_FUNCTION_16_7(v5, v6, v7, v8, v9, v10, v11);
    v12 = swift_unknownObjectRelease();
    OUTLINED_FUNCTION_15_6(v12, v13, v14, v15);
    if (OUTLINED_FUNCTION_3_6(v30, v16))
    {
      __swift_destroy_boxed_opaque_existential_1(v31);
      result = v30[0];
      *(v2 + 8) = v3 + 1;
    }

    else
    {
      v24 = sub_2706E5E8C();
      OUTLINED_FUNCTION_11_6(v24, MEMORY[0x277D841A0]);
      OUTLINED_FUNCTION_9_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
      v25 = OUTLINED_FUNCTION_0_6();
      sub_2706B625C(v25, v26, v27, v3);
      OUTLINED_FUNCTION_1_8();
      v28 = OUTLINED_FUNCTION_5_7();
      v29(v28);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v31);
    }
  }

  return result;
}

BOOL sub_2706B7574()
{
  v1 = sub_2706E5E8C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2706B73B4(qword_28081D4E0, 0x277CBEB68);
  if (!v0)
  {

    return v0 == 0;
  }

  v11 = v0;
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A8, &qword_2706EAD40);
  if (!swift_dynamicCast())
  {
LABEL_7:

    return v0 == 0;
  }

  if ((*(v2 + 88))(v4, v1) != *MEMORY[0x277D84160])
  {
    (*(v2 + 8))(v4, v1);
    goto LABEL_7;
  }

  (*(v2 + 96))(v4, v1);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
  v8 = sub_2706E5E7C();
  (*(*(v8 - 8) + 8))(&v4[v7], v8);

  return v0 == 0;
}

uint64_t sub_2706B7904(uint64_t a1)
{
  result = sub_2706B7274();
  if (!v5)
  {
    if (a1 == MEMORY[0x277CC9318] && (sub_2706B462C(v21, &v19), sub_270690D44(0, &qword_28081D4D8, 0x277CBEA90), (swift_dynamicCast() & 1) != 0))
    {

      sub_270690AAC(v21, &v19);
      return swift_dynamicCast();
    }

    else
    {
      v8 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D568, &unk_2706EB370);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2706E8FC0;
      *&v19 = v4[1];
      v10 = v19;

      v11 = sub_2706E611C();
      v13 = v12;
      *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(inited + 64) = sub_2706B825C();
      v14 = swift_allocObject();
      *(inited + 32) = v14;
      *(v14 + 16) = v11;
      *(v14 + 24) = v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = 0;
      *&v19 = v8;
      sub_2706DD674(inited);
      v15 = v19;
      sub_2706B462C(v21, &v20);
      sub_2706E5F3C();
      v16 = sub_2706E59AC();
      *&v19 = v15;
      *(&v19 + 1) = v16;
      sub_2706B46F4();
      v18 = swift_allocObject();
      sub_2706B45F4(&v19, v18 + 16);
      sub_2706E5B7C();
      sub_2706B4748(&v19);
      return __swift_destroy_boxed_opaque_existential_1(v21);
    }
  }

  return result;
}

uint64_t sub_2706B7B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2706B73B4(&qword_28081D4C8, 0x277CBEAC0);
  if (!v3)
  {
    type metadata accessor for PropertyListTypeDecoder.KeyedDecoder(0, a2, a3, v7);

    swift_getWitnessTable();
    return sub_2706E607C();
  }

  return result;
}

uint64_t sub_2706B7C04@<X0>(void *a1@<X8>)
{
  result = sub_2706B73B4(&qword_28081D4B8, 0x277CBEA60);
  if (!v2)
  {
    v5 = result;
    v6 = *v1;
    a1[3] = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder;
    a1[4] = sub_2706B4688();
    *a1 = v6;
    a1[1] = 0;
    a1[2] = v5;
  }

  return result;
}

uint64_t sub_2706B7EFC()
{
  result = sub_2706E614C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2706B7F4C()
{
  result = sub_2706E615C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2706B7FF4()
{
  result = sub_2706E618C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2706B8044()
{
  result = sub_2706E616C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2706B816C()
{
  result = sub_2706E619C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2706B81BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

unint64_t sub_2706B825C()
{
  result = qword_28081D570;
  if (!qword_28081D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D570);
  }

  return result;
}

uint64_t sub_2706B82B0()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2706B82E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D580, &qword_2706EB388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2706B8380()
{
  result = qword_28081D590;
  if (!qword_28081D590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D588, &qword_2706EB390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D590);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2706B8428(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2706B8468(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2706B84C0()
{
  result = qword_28081D598;
  if (!qword_28081D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D598);
  }

  return result;
}

unint64_t sub_2706B8518()
{
  result = qword_28081D5A0;
  if (!qword_28081D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D5A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_6(uint64_t a3, uint64_t a4, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_6_7(uint64_t a3, uint64_t a4, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_7_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_2706B462C(v4 + 16, va);
}

uint64_t OUTLINED_FUNCTION_8_7(uint64_t a1)
{

  return sub_2706E5E6C();
}

uint64_t OUTLINED_FUNCTION_11_6(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_12_7()
{
  *v1 = v0;
}

uint64_t OUTLINED_FUNCTION_13_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2706B625C(a1, a2, a3, v3);
}

uint64_t OUTLINED_FUNCTION_15_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);

  return sub_2706B462C(va1, va);
}

void *OUTLINED_FUNCTION_16_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return sub_2706E5D6C();
}

id OUTLINED_FUNCTION_21_4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_2706B8734(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2706E5A7C();
    v3 = sub_2706E5ADC();

    return v3;
  }

  return result;
}

uint64_t sub_2706B87F8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_2706E5F9C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_2706B881C(uint64_t a1)
{
  OUTLINED_FUNCTION_62();
  v2 = *(v1 + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_items);
  if (v2 >> 62)
  {
    goto LABEL_24;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v4 = 0;
      v5 = v2 & 0xC000000000000001;
LABEL_4:
      sub_2706BF7FC(v4, v5 == 0, v2);

      if (!__OFADD__(v4++, 1))
      {
        break;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      v3 = sub_2706E5F9C();
      if (!v3)
      {
        goto LABEL_20;
      }
    }

    v8 = *(v6 + 24);
    v9 = sub_2706B87F8(v8);

    for (i = 0; v9 != i; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2743A62C0](i, v8);
      }

      else
      {
        if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (sub_2706E573C())
      {

        goto LABEL_20;
      }
    }

    v5 = v2 & 0xC000000000000001;
    if (v4 != v3)
    {
      goto LABEL_4;
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_63();
}

uint64_t sub_2706B89B0(uint64_t a1)
{
  v2 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  sub_2706E575C();
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_source, v8, v2);
  *(v9 + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_items) = a1;
  return v9;
}

uint64_t sub_2706B8A98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D890, &unk_2706EBB20);
  OUTLINED_FUNCTION_16_3(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  v7 = v21 - v6;
  v8 = sub_2706BD7C0();
  if ((v8 ^ sub_2706BD7C0()))
  {
    if (sub_2706BD7C0())
    {
      v9 = sub_2706BD7C0() ^ 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = *(a1 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_order);
    v11 = *(a2 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_order);
    if (v10 == v11)
    {
      v12 = sub_2706BDC18();
      if (v12 == sub_2706BDC18())
      {
        v13 = *(a1 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier);
        v14 = *(a1 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier + 8);
        v21[2] = v13;
        v21[3] = v14;
        v15 = (a2 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier);
        v16 = *(a2 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier + 8);
        v21[0] = *v15;
        v21[1] = v16;
        v17 = sub_2706E578C();
        __swift_storeEnumTagSinglePayload(v7, 1, 1, v17);
        sub_2706C0774();

        v18 = sub_2706E5D5C();
        sub_2706A64F4(v7, &qword_28081D890, &unk_2706EBB20);

        v9 = v18 == -1;
      }

      else
      {
        v19 = sub_2706BDC18();
        v9 = sub_2706BDC18() < v19;
      }
    }

    else
    {
      v9 = v10 < v11;
    }
  }

  return v9 & 1;
}

uint64_t sub_2706B8C74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_8_3(0x656372756F73, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_8_3(0x736D657469, 0xE500000000000000);

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2706B8D1C(char a1)
{
  if (a1)
  {
    return 0x736D657469;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_2706B8D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706B8C74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2706B8D7C(uint64_t a1)
{
  v2 = sub_2706BF6C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706B8DB8(uint64_t a1)
{
  v2 = sub_2706BF6C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706B8DF4()
{
  v1 = OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_source;
  sub_2706E576C();
  OUTLINED_FUNCTION_6_0();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2706B8EC0(uint64_t a1)
{
  result = sub_2706E576C();
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

uint64_t sub_2706B8F5C()
{
  OUTLINED_FUNCTION_40_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D5D0, &qword_2706EB978);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_47_1(v0, v0[3]);
  v4 = sub_2706BF6C4();
  OUTLINED_FUNCTION_13_5(&type metadata for PasteboardContents.CodingKeys, v5, v4);
  v6 = OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_source;
  v12 = 0;
  sub_2706E576C();
  OUTLINED_FUNCTION_0_7();
  sub_2706BF718(v7);
  OUTLINED_FUNCTION_16_8(v2 + v6);
  if (!v1)
  {
    v11 = *(v2 + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_items);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D5E0, &qword_2706EB980);
    sub_2706C06E0(&unk_28081D5E8);
    OUTLINED_FUNCTION_16_8(&v11);
  }

  v8 = OUTLINED_FUNCTION_26_3();
  return v9(v8);
}

void sub_2706B9144()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_48_1();
  v14 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v12 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v13 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D878, &qword_2706EBB18);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47_1(v3, v3[3]);
  sub_2706BF6C4();
  sub_2706E668C();
  if (v1)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_0_7();
    sub_2706BF718(v9);
    sub_2706E605C();
    (*(v12 + 32))(v0 + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_source, v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D5E0, &qword_2706EB980);
    sub_2706C06E0(&unk_28081D880);
    sub_2706E605C();
    v10 = OUTLINED_FUNCTION_21_5();
    v11(v10);
    *(v0 + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_items) = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_55();
}

uint64_t sub_2706B9484@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2706B9118(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_2706B96E0(unint64_t a1)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_65();
      result = v6 + 26;
      break;
    case 2uLL:
      OUTLINED_FUNCTION_65();
      result = v4 | 0xE;
      break;
    case 3uLL:
      v5 = 9;
LABEL_6:
      result = v5 | 0xD000000000000010;
      break;
    case 4uLL:
      OUTLINED_FUNCTION_65();
      result = v3 | 3;
      break;
    case 5uLL:
      v7 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_270694BA4(v7);
      sub_2706E5E3C();

      v8 = sub_2706B96E0(v7);
      MEMORY[0x2743A5EF0](v8);

      sub_270688D9C(v7);
      result = 0xD000000000000010;
      break;
    case 6uLL:
      switch(__ROR8__(a1 + 0x4000000000000000, 3))
      {
        case 1:
          v5 = 33;
          goto LABEL_6;
        case 2:
          v5 = 40;
          goto LABEL_6;
        case 3:
          v5 = 45;
          goto LABEL_6;
        case 4:
          v5 = 43;
          goto LABEL_6;
        case 5:
          v5 = 11;
          goto LABEL_6;
        case 6:
          OUTLINED_FUNCTION_65();
          result = v11 + 30;
          break;
        case 7:
          OUTLINED_FUNCTION_65();
          result = v10 + 22;
          break;
        case 8:
          OUTLINED_FUNCTION_65();
          result = v12 | 8;
          break;
        default:
          OUTLINED_FUNCTION_65();
          result = v9 + 28;
          break;
      }

      break;
    default:
      OUTLINED_FUNCTION_65();
      result = v1 + 27;
      break;
  }

  return result;
}

uint64_t sub_2706B998C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6265747361506F6ELL && a2 == 0xEC0000006472616FLL;
  if (v4 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6553617461446F6ELL && a2 == 0xED00006E6F697373;
    if (v6 || (sub_2706E631C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000002706F0D90 == a2;
      if (v7 || (sub_2706E631C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x66736E6172546F6ELL && a2 == 0xEA00000000007265;
        if (v8 || (sub_2706E631C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7669656365526F6ELL && a2 == 0xEA00000000007265;
          if (v9 || (sub_2706E631C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F43676E6F7277 && a2 == 0xEC00000074786574;
            if (v10 || (sub_2706E631C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000002706F0DB0 == a2;
              if (v11 || (sub_2706E631C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C6961466E65706FLL && a2 == 0xEA00000000006465;
                if (v12 || (sub_2706E631C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x52556F4E6E65706FLL && a2 == 0xE90000000000004CLL;
                  if (v13 || (sub_2706E631C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 1684104562 && a2 == 0xE400000000000000;
                    if (v14 || (sub_2706E631C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6961466574697277 && a2 == 0xEB0000000064656CLL;
                      if (v15 || (sub_2706E631C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064;
                        if (v16 || (sub_2706E631C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x726566736E617274 && a2 == 0xEF74756F656D6954;
                          if (v17 || (sub_2706E631C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x72656469766F7270 && a2 == 0xED0000726F727245;
                            if (v18 || (sub_2706E631C() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_2706E631C();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2706B9E40(char a1)
{
  result = 0x6265747361506F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x6553617461446F6ELL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x66736E6172546F6ELL;
      break;
    case 4:
      result = 0x7669656365526F6ELL;
      break;
    case 5:
      result = 0x6E6F43676E6F7277;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6C6961466E65706FLL;
      break;
    case 8:
      result = 0x52556F4E6E65706FLL;
      break;
    case 9:
      result = 1684104562;
      break;
    case 10:
      result = 0x6961466574697277;
      break;
    case 11:
      result = 0x656C6C65636E6163;
      break;
    case 12:
      v3 = 0x66736E617274;
      goto LABEL_14;
    case 13:
      v3 = 0x6469766F7270;
LABEL_14:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
      break;
    case 14:
      result = 0x636972656E6567;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2706BA04C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2706E631C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_2706BA0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v22;
  a20 = v23;
  v157[0] = v20;
  v153 = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D7C0, &qword_2706EBA80);
  OUTLINED_FUNCTION_2(v27, &v151);
  v136[11] = v28;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D7C8, &qword_2706EBA88);
  OUTLINED_FUNCTION_4();
  v149 = v32;
  v150 = v31;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_13();
  v148 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D7D0, &qword_2706EBA90);
  OUTLINED_FUNCTION_2(v35, &a13);
  v136[23] = v36;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D7D8, &qword_2706EBA98);
  OUTLINED_FUNCTION_2(v39, &v148);
  v136[8] = v40;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D7E0, &qword_2706EBAA0);
  OUTLINED_FUNCTION_2(v43, &v145);
  v136[5] = v44;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D7E8, &qword_2706EBAA8);
  OUTLINED_FUNCTION_4();
  v146 = v48;
  v147 = v47;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_13();
  v145 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D7F0, &qword_2706EBAB0);
  OUTLINED_FUNCTION_2(v51, &a10);
  v136[20] = v52;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D7F8, &qword_2706EBAB8);
  OUTLINED_FUNCTION_4();
  v143 = v56;
  v144 = v55;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_13();
  v142 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D800, &qword_2706EBAC0);
  OUTLINED_FUNCTION_2(v59, v157);
  v136[17] = v60;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D808, &qword_2706EBAC8);
  OUTLINED_FUNCTION_2(v63, &v154);
  v136[14] = v64;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D810, &qword_2706EBAD0);
  OUTLINED_FUNCTION_2(v67, &v142);
  v136[2] = v68;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D818, &qword_2706EBAD8);
  OUTLINED_FUNCTION_4();
  v140 = v72;
  v141 = v71;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_13();
  v139 = v74;
  v136[29] = type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_3_0();
  v138 = v77 - v76;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D820, &qword_2706EBAE0);
  OUTLINED_FUNCTION_4();
  v136[28] = v78;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D828, &qword_2706EBAE8);
  OUTLINED_FUNCTION_2(v81, &a15);
  v136[25] = v82;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v83);
  v85 = v136 - v84;
  sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v151 = v87;
  v152 = v86;
  v88 = MEMORY[0x28223BE20](v86);
  v90 = v136 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v88);
  v92 = v136 - v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D830, &qword_2706EBAF0);
  OUTLINED_FUNCTION_4();
  v136[0] = v93;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_23_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D838, &qword_2706EBAF8);
  OUTLINED_FUNCTION_4();
  v155 = v95;
  v156 = v96;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v97);
  v99 = v136 - v98;
  OUTLINED_FUNCTION_47_1(v26, v26[3]);
  sub_2706C0010();
  v154 = v99;
  sub_2706E66AC();
  switch(v153 >> 61)
  {
    case 1uLL:
      v118 = swift_projectBox();
      v120 = v151;
      v119 = v152;
      (*(v151 + 16))(v90, v118, v152);
      LOBYTE(a10) = 2;
      sub_2706C04BC();
      v121 = v136[27];
      OUTLINED_FUNCTION_36_2();
      sub_2706E608C();
      OUTLINED_FUNCTION_0_7();
      sub_2706BF718(v122);
      v123 = v137;
      sub_2706E60DC();
      OUTLINED_FUNCTION_11();
      v124(v121, v123);
      (*(v120 + 8))(v90, v119);
      OUTLINED_FUNCTION_15_7();
      v113 = OUTLINED_FUNCTION_51();
      goto LABEL_9;
    case 2uLL:
      v108 = swift_projectBox();
      v109 = v138;
      sub_270690CD8(v108, v138);
      LOBYTE(a10) = 3;
      sub_2706C0468();
      v110 = v139;
      OUTLINED_FUNCTION_51_1(&type metadata for PasteboardAcquisitionError.NoTransferCodingKeys);
      OUTLINED_FUNCTION_17_5();
      sub_2706BF718(v111);
      v112 = v141;
      sub_2706E60DC();
      (*(v140 + 8))(v110, v112);
      sub_270687394(v109);
      goto LABEL_5;
    case 3uLL:
      LOBYTE(a10) = 7;
      sub_2706C0318();

      v116 = v142;
      OUTLINED_FUNCTION_41_1(&type metadata for PasteboardAcquisitionError.OpenFailedCodingKeys);
      v117 = v144;
      sub_2706E60BC();

      (*(v143 + 8))(v116, v117);
      goto LABEL_7;
    case 4uLL:
      LOBYTE(a10) = 9;
      sub_2706C0240();

      v106 = v145;
      OUTLINED_FUNCTION_41_1(&type metadata for PasteboardAcquisitionError.ReadCodingKeys);
      OUTLINED_FUNCTION_26_3();
      v107 = v147;
      sub_2706E60BC();

      (*(v146 + 8))(v106, v107);
LABEL_7:
      OUTLINED_FUNCTION_15_7();
      v113 = v85;
      v114 = v21;
      goto LABEL_9;
    case 5uLL:
      v125 = *((v153 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(a10) = 13;
      sub_270694BA4(v125);
      sub_2706C00B8();
      v126 = v148;
      OUTLINED_FUNCTION_36_2();
      sub_2706E608C();
      a10 = v125;
      sub_270688E34();
      v127 = v150;
      sub_2706E60DC();
      (*(v149 + 8))(v126, v127);
      OUTLINED_FUNCTION_15_7();
      v128 = OUTLINED_FUNCTION_51();
      v129(v128);
      sub_270688D9C(v125);
      goto LABEL_10;
    case 6uLL:
      v130 = v154;
      switch(__ROR8__(v153 + 0x4000000000000000, 3))
      {
        case 1:
          LOBYTE(a10) = 4;
          sub_2706C0414();
          OUTLINED_FUNCTION_5_8(&type metadata for PasteboardAcquisitionError.NoReceiverCodingKeys);
          v131 = OUTLINED_FUNCTION_7_6();
          v134 = &v142;
          goto LABEL_22;
        case 2:
          LOBYTE(a10) = 5;
          sub_2706C03C0();
          OUTLINED_FUNCTION_5_8(&type metadata for PasteboardAcquisitionError.WrongContextCodingKeys);
          v131 = OUTLINED_FUNCTION_7_6();
          v134 = &v154;
          goto LABEL_22;
        case 3:
          LOBYTE(a10) = 6;
          sub_2706C036C();
          OUTLINED_FUNCTION_5_8(&type metadata for PasteboardAcquisitionError.DuplicateRequestCodingKeys);
          v131 = OUTLINED_FUNCTION_7_6();
          v134 = v157;
          goto LABEL_22;
        case 4:
          LOBYTE(a10) = 8;
          sub_2706C02C4();
          OUTLINED_FUNCTION_5_8(&type metadata for PasteboardAcquisitionError.OpenNoURLCodingKeys);
          v131 = OUTLINED_FUNCTION_7_6();
          v134 = &a10;
          goto LABEL_22;
        case 5:
          LOBYTE(a10) = 10;
          sub_2706C01EC();
          OUTLINED_FUNCTION_5_8(&type metadata for PasteboardAcquisitionError.WriteFailedCodingKeys);
          v131 = OUTLINED_FUNCTION_7_6();
          v134 = &v145;
          goto LABEL_22;
        case 6:
          LOBYTE(a10) = 11;
          sub_2706C0198();
          OUTLINED_FUNCTION_5_8(&type metadata for PasteboardAcquisitionError.CancelledCodingKeys);
          v131 = OUTLINED_FUNCTION_7_6();
          v134 = &v148;
          goto LABEL_22;
        case 7:
          LOBYTE(a10) = 12;
          sub_2706C0144();
          OUTLINED_FUNCTION_5_8(&type metadata for PasteboardAcquisitionError.TransferTimeoutCodingKeys);
          v131 = OUTLINED_FUNCTION_7_6();
          v134 = &a13;
          goto LABEL_22;
        case 8:
          LOBYTE(a10) = 14;
          sub_2706C0064();
          OUTLINED_FUNCTION_5_8(&type metadata for PasteboardAcquisitionError.GenericCodingKeys);
          v131 = OUTLINED_FUNCTION_7_6();
          v134 = &v151;
LABEL_22:
          v132 = *(v134 - 32);
          break;
        default:
          LOBYTE(a10) = 0;
          sub_2706C0564();
          v90 = v155;
          sub_2706E608C();
          v131 = OUTLINED_FUNCTION_8_8();
          break;
      }

      v133(v131, v132);
      OUTLINED_FUNCTION_15_7();
      v135(v130, v90);
      goto LABEL_10;
    default:
      v100 = swift_projectBox();
      v102 = v151;
      v101 = v152;
      (*(v151 + 16))(v92, v100, v152);
      LOBYTE(a10) = 1;
      sub_2706C0510();
      OUTLINED_FUNCTION_51_1(&type metadata for PasteboardAcquisitionError.NoDataSessionCodingKeys);
      OUTLINED_FUNCTION_0_7();
      sub_2706BF718(v103);
      v104 = v136[26];
      sub_2706E60DC();
      OUTLINED_FUNCTION_11();
      v105(v85, v104);
      (*(v102 + 8))(v92, v101);
LABEL_5:
      OUTLINED_FUNCTION_15_7();
      v113 = OUTLINED_FUNCTION_26_3();
LABEL_9:
      v115(v113, v114);
LABEL_10:
      OUTLINED_FUNCTION_55();
      return;
  }
}

void sub_2706BAFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v23;
  a20 = v24;
  v222 = v20;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6C0, &qword_2706EBA00);
  OUTLINED_FUNCTION_4();
  v205 = v28;
  v206 = v27;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_13();
  v215[2] = v30;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6C8, &qword_2706EBA08);
  OUTLINED_FUNCTION_4();
  v217 = v31;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_13();
  v216 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6D0, &qword_2706EBA10);
  OUTLINED_FUNCTION_2(v34, &a18);
  v203 = v35;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_13();
  v215[1] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6D8, &qword_2706EBA18);
  OUTLINED_FUNCTION_2(v38, &a16);
  v201 = v39;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_13();
  v215[0] = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6E0, &qword_2706EBA20);
  OUTLINED_FUNCTION_2(v42, &a13);
  v197 = v43;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_13();
  v214 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6E8, &qword_2706EBA28);
  OUTLINED_FUNCTION_2(v46, &a12);
  v200 = v47;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_13();
  v213 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6F0, &qword_2706EBA30);
  OUTLINED_FUNCTION_2(v50, &a9);
  v194 = v51;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_13();
  v212 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6F8, &qword_2706EBA38);
  OUTLINED_FUNCTION_2(v54, &v223);
  v196 = v55;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_13();
  v220 = v57;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D700, &qword_2706EBA40);
  OUTLINED_FUNCTION_4();
  v192 = v58;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_13();
  v211 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D708, &qword_2706EBA48);
  OUTLINED_FUNCTION_2(v61, &v218);
  v190 = v62;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_13();
  v218 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D710, &qword_2706EBA50);
  OUTLINED_FUNCTION_2(v65, &v216);
  v186 = v66;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_13();
  v208 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D718, &qword_2706EBA58);
  OUTLINED_FUNCTION_2(v69, &v220);
  v191 = v70;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_13();
  v210 = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D720, &qword_2706EBA60);
  OUTLINED_FUNCTION_2(v73, &v217);
  v187 = v74;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_13();
  v209 = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D728, &qword_2706EBA68);
  OUTLINED_FUNCTION_2(v77, v215);
  v185 = v78;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_23_3();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D730, &qword_2706EBA70);
  OUTLINED_FUNCTION_4();
  v184 = v81;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_14_6();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D738, &qword_2706EBA78);
  OUTLINED_FUNCTION_4();
  v85 = v84;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v86);
  v88 = &v178 - v87;
  v89 = v26[3];
  v221 = v26;
  OUTLINED_FUNCTION_47_1(v26, v89);
  sub_2706C0010();
  v90 = v222;
  sub_2706E668C();
  if (!v90)
  {
    v182 = v21;
    v181 = v80;
    v183 = v22;
    v92 = v218;
    v91 = v219;
    v222 = v85;
    v93 = sub_2706E606C();
    sub_270698614(v93, 0);
    if (v95 == v96 >> 1)
    {
      goto LABEL_7;
    }

    v180 = 0;
    if (v95 >= (v96 >> 1))
    {
      __break(1u);
      JUMPOUT(0x2706BC244);
    }

    v179 = *(v94 + v95);
    sub_270698610(v95 + 1);
    v98 = v97;
    v100 = v99;
    swift_unknownObjectRelease();
    if (v98 != v100 >> 1)
    {
LABEL_7:
      v105 = sub_2706E5E8C();
      swift_allocError();
      v107 = v106;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
      *v107 = &type metadata for PasteboardAcquisitionError;
      v108 = sub_2706E600C();
      OUTLINED_FUNCTION_59(v108);
      (*(*(v105 - 8) + 104))(v107, *MEMORY[0x277D84160], v105);
      swift_willThrow();
      swift_unknownObjectRelease();
      v109 = OUTLINED_FUNCTION_4_7();
      v110(v109);
    }

    else
    {
      switch(v179)
      {
        case 1:
          BYTE2(v223) = 1;
          sub_2706C0510();
          OUTLINED_FUNCTION_6_8(&type metadata for PasteboardAcquisitionError.NoDataSessionCodingKeys, &v223 + 2);
          sub_2706E576C();
          swift_allocBox();
          OUTLINED_FUNCTION_0_7();
          sub_2706BF718(v135);
          v136 = OUTLINED_FUNCTION_38_2();
          OUTLINED_FUNCTION_22_4(v136);
          swift_unknownObjectRelease();
          v119 = OUTLINED_FUNCTION_8_8();
          goto LABEL_23;
        case 2:
          BYTE3(v223) = 2;
          sub_2706C04BC();
          OUTLINED_FUNCTION_6_8(&type metadata for PasteboardAcquisitionError.NoRepresentationCodingKeys, &v223 + 3);
          sub_2706E576C();
          swift_allocBox();
          OUTLINED_FUNCTION_0_7();
          sub_2706BF718(v129);
          v130 = OUTLINED_FUNCTION_38_2();
          OUTLINED_FUNCTION_22_4(v130);
          swift_unknownObjectRelease();
          v159 = OUTLINED_FUNCTION_8_8();
          v160(v159);
          v161 = OUTLINED_FUNCTION_4_7();
          v162(v161);
          break;
        case 3:
          BYTE4(v223) = 3;
          sub_2706C0468();
          OUTLINED_FUNCTION_6_8(&type metadata for PasteboardAcquisitionError.NoTransferCodingKeys, &v223 + 4);
          type metadata accessor for PasteboardDataTransferID(0);
          swift_allocBox();
          OUTLINED_FUNCTION_17_5();
          sub_2706BF718(v131);
          v132 = OUTLINED_FUNCTION_38_2();
          OUTLINED_FUNCTION_22_4(v132);
          swift_unknownObjectRelease();
          v163 = OUTLINED_FUNCTION_8_8();
          v164(v163);
          v165 = OUTLINED_FUNCTION_4_7();
          v166(v165);
          break;
        case 4:
          BYTE5(v223) = 4;
          sub_2706C0414();
          OUTLINED_FUNCTION_6_8(&type metadata for PasteboardAcquisitionError.NoReceiverCodingKeys, &v223 + 5);
          swift_unknownObjectRelease();
          v119 = OUTLINED_FUNCTION_7_6();
          v121 = v188;
LABEL_23:
          v120(v119, v121);
          v174 = OUTLINED_FUNCTION_4_7();
          v175(v174);
          break;
        case 5:
          BYTE6(v223) = 5;
          sub_2706C03C0();
          OUTLINED_FUNCTION_6_8(&type metadata for PasteboardAcquisitionError.WrongContextCodingKeys, &v223 + 6);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_11();
          v137(v92, v189);
          v138 = OUTLINED_FUNCTION_4_7();
          v139(v138);
          OUTLINED_FUNCTION_28_2();
          break;
        case 6:
          HIBYTE(v223) = 6;
          sub_2706C036C();
          OUTLINED_FUNCTION_6_8(&type metadata for PasteboardAcquisitionError.DuplicateRequestCodingKeys, &v223 + 7);
          swift_unknownObjectRelease();
          v141 = OUTLINED_FUNCTION_7_6();
          v142(v141, v91);
          v143 = OUTLINED_FUNCTION_4_7();
          v144(v143);
          OUTLINED_FUNCTION_28_2();
          break;
        case 7:
          LOBYTE(a10) = 7;
          sub_2706C0318();
          OUTLINED_FUNCTION_6_8(&type metadata for PasteboardAcquisitionError.OpenFailedCodingKeys, &a10);
          v133 = swift_allocObject();
          v134 = v193;
          OUTLINED_FUNCTION_19_8();
          v167 = sub_2706E603C();
          v169 = v168;
          swift_unknownObjectRelease();
          v170 = OUTLINED_FUNCTION_9_7();
          v171(v170, v134);
          v172 = OUTLINED_FUNCTION_4_7();
          v173(v172);
          *(v133 + 16) = v167;
          *(v133 + 24) = v169;
          break;
        case 8:
          BYTE1(a10) = 8;
          sub_2706C02C4();
          OUTLINED_FUNCTION_6_8(&type metadata for PasteboardAcquisitionError.OpenNoURLCodingKeys, &a10 + 1);
          swift_unknownObjectRelease();
          v149 = OUTLINED_FUNCTION_9_7();
          v150(v149, v195);
          v151 = OUTLINED_FUNCTION_4_7();
          v152(v151);
          OUTLINED_FUNCTION_28_2();
          break;
        case 9:
          BYTE2(a10) = 9;
          sub_2706C0240();
          v126 = v213;
          OUTLINED_FUNCTION_6_8(&type metadata for PasteboardAcquisitionError.ReadCodingKeys, &a10 + 2);
          v127 = swift_allocObject();
          v128 = v198;
          v153 = sub_2706E603C();
          v155 = v154;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_11();
          v156(v126, v128);
          v157 = OUTLINED_FUNCTION_4_7();
          v158(v157);
          *(v127 + 16) = v153;
          *(v127 + 24) = v155;
          break;
        case 10:
          BYTE3(a10) = 10;
          sub_2706C01EC();
          OUTLINED_FUNCTION_6_8(&type metadata for PasteboardAcquisitionError.WriteFailedCodingKeys, &a10 + 3);
          swift_unknownObjectRelease();
          v145 = OUTLINED_FUNCTION_9_7();
          v146(v145, v199);
          v147 = OUTLINED_FUNCTION_4_7();
          v148(v147);
          OUTLINED_FUNCTION_28_2();
          break;
        case 11:
          BYTE4(a10) = 11;
          sub_2706C0198();
          OUTLINED_FUNCTION_6_8(&type metadata for PasteboardAcquisitionError.CancelledCodingKeys, &a10 + 4);
          swift_unknownObjectRelease();
          v115 = OUTLINED_FUNCTION_9_7();
          v116(v115, v202);
          v117 = OUTLINED_FUNCTION_4_7();
          v118(v117);
          OUTLINED_FUNCTION_28_2();
          break;
        case 12:
          BYTE5(a10) = 12;
          sub_2706C0144();
          OUTLINED_FUNCTION_6_8(&type metadata for PasteboardAcquisitionError.TransferTimeoutCodingKeys, &a10 + 5);
          swift_unknownObjectRelease();
          v122 = OUTLINED_FUNCTION_9_7();
          v123(v122, v204);
          v124 = OUTLINED_FUNCTION_4_7();
          v125(v124);
          OUTLINED_FUNCTION_28_2();
          break;
        case 13:
          BYTE6(a10) = 13;
          sub_2706C00B8();
          OUTLINED_FUNCTION_6_8(&type metadata for PasteboardAcquisitionError.ProviderErrorCodingKeys, &a10 + 6);
          swift_allocObject();
          sub_270687340();
          OUTLINED_FUNCTION_36_2();
          sub_2706E605C();
          v140 = v222;
          swift_unknownObjectRelease();
          v176 = OUTLINED_FUNCTION_51();
          v177(v176);
          (*(v140 + 8))(v88, v83);
          break;
        case 14:
          HIBYTE(a10) = 14;
          sub_2706C0064();
          OUTLINED_FUNCTION_6_8(&type metadata for PasteboardAcquisitionError.GenericCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v111 = OUTLINED_FUNCTION_18_4();
          v112(v111);
          v113 = OUTLINED_FUNCTION_4_7();
          v114(v113);
          OUTLINED_FUNCTION_28_2();
          break;
        default:
          BYTE1(v223) = 0;
          sub_2706C0564();
          OUTLINED_FUNCTION_6_8(&type metadata for PasteboardAcquisitionError.NoPasteboardCodingKeys, &v223 + 1);
          swift_unknownObjectRelease();
          v101 = OUTLINED_FUNCTION_9_7();
          v102(v101, v181);
          v103 = OUTLINED_FUNCTION_4_7();
          v104(v103);
          break;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v221);
  OUTLINED_FUNCTION_55();
}

uint64_t sub_2706BC280(uint64_t a1)
{
  v2 = sub_2706C0198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC2BC(uint64_t a1)
{
  v2 = sub_2706C0198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706B998C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2706BC328@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2706B9E38();
  *a1 = result;
  return result;
}

uint64_t sub_2706BC350(uint64_t a1)
{
  v2 = sub_2706C0010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC38C(uint64_t a1)
{
  v2 = sub_2706C0010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC3C8(uint64_t a1)
{
  v2 = sub_2706C036C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC404(uint64_t a1)
{
  v2 = sub_2706C036C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC440(uint64_t a1)
{
  v2 = sub_2706C0064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC47C(uint64_t a1)
{
  v2 = sub_2706C0064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706BA04C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2706BC4E4(uint64_t a1)
{
  v2 = sub_2706C0510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC520(uint64_t a1)
{
  v2 = sub_2706C0510();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC55C(uint64_t a1)
{
  v2 = sub_2706C0564();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC598(uint64_t a1)
{
  v2 = sub_2706C0564();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC5D4(uint64_t a1)
{
  v2 = sub_2706C0414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC610(uint64_t a1)
{
  v2 = sub_2706C0414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC64C(uint64_t a1)
{
  v2 = sub_2706C04BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC688(uint64_t a1)
{
  v2 = sub_2706C04BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC6C4(uint64_t a1)
{
  v2 = sub_2706C0468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC700(uint64_t a1)
{
  v2 = sub_2706C0468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC73C(uint64_t a1)
{
  v2 = sub_2706C0318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC778(uint64_t a1)
{
  v2 = sub_2706C0318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC7B4(uint64_t a1)
{
  v2 = sub_2706C02C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC7F0(uint64_t a1)
{
  v2 = sub_2706C02C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC82C(uint64_t a1, double a2)
{
  v3 = sub_2706C00B8();

  return MEMORY[0x2821FE718](a1, v3);
}

uint64_t sub_2706BC868(uint64_t a1, double a2)
{
  v3 = sub_2706C00B8();

  return MEMORY[0x2821FE720](a1, v3);
}

uint64_t sub_2706BC8A4(uint64_t a1)
{
  v2 = sub_2706C0240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC8E0(uint64_t a1)
{
  v2 = sub_2706C0240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC91C(uint64_t a1)
{
  v2 = sub_2706C0144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC958(uint64_t a1)
{
  v2 = sub_2706C0144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BC994(uint64_t a1)
{
  v2 = sub_2706C01EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BC9D0(uint64_t a1)
{
  v2 = sub_2706C01EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BCA0C(uint64_t a1)
{
  v2 = sub_2706C03C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BCA48(uint64_t a1)
{
  v2 = sub_2706C03C0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2706BCAE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2706E5FEC();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2706BCB30(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x726564726FLL;
      break;
    case 3:
      result = 0x6E65644965707974;
      break;
    case 4:
      result = 0x7079547265707573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2706BCBEC(char a1)
{
  sub_2706E65EC();
  sub_2706BCB30(a1);
  sub_2706E5A6C();

  return sub_2706E660C();
}

uint64_t sub_2706BCC58(uint64_t a1, char a2)
{
  sub_2706E5A6C();
}

uint64_t sub_2706BCD3C(uint64_t a1, char a2)
{
  sub_2706E65EC();
  sub_2706BCB30(a2);
  sub_2706E5A6C();

  return sub_2706E660C();
}

unint64_t sub_2706BCD9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2706BCAE4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2706BCDCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2706BCB30(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2706BCE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706BCAE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2706BCE28(uint64_t a1)
{
  v2 = sub_2706BFCC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BCE64(uint64_t a1)
{
  v2 = sub_2706BFCC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BCEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_0();
  v19 = v18 - v17;
  v20 = v7 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_context;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  sub_2706E575C();
  (*(v15 + 32))(v7 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_id, v19, v13);
  swift_beginAccess();
  sub_2706C0670(a7, v20);
  swift_endAccess();
  v21 = (v7 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_name);
  *v21 = a5;
  v21[1] = a6;
  *(v7 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_order) = a1;
  *(v7 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_superTypes) = a4;
  v22 = (v7 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier);
  *v22 = a2;
  v22[1] = a3;
  return v7;
}

uint64_t sub_2706BD038(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

void sub_2706BD090()
{
  OUTLINED_FUNCTION_60();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_48_1();
  v5 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v21 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v22 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D860, &qword_2706EBB08);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_16_4();
  v11 = v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_context;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  OUTLINED_FUNCTION_47_1(v4, v4[3]);
  sub_2706BFCC8();
  sub_2706E668C();
  if (v1)
  {
    sub_2706A64F4(v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_context, &qword_28081D278, &qword_2706EBB10);
    swift_deallocPartialClassInstance();
    v14 = v4;
  }

  else
  {
    LOBYTE(v23[0]) = 0;
    OUTLINED_FUNCTION_0_7();
    sub_2706BF718(v12);
    sub_2706E605C();
    (*(v21 + 32))(v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_id, v22, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D620, &qword_2706EB9A0);
    sub_2706C060C(&unk_28081D868);
    OUTLINED_FUNCTION_27_3();
    sub_2706E605C();
    *(v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_name) = v23[0];
    *(v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_order) = sub_2706E604C();
    LOBYTE(v23[0]) = 3;
    v13 = sub_2706E603C();
    v15 = (v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier);
    *v15 = v13;
    v15[1] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D5F8, &qword_2706EB988);
    sub_2706BFD1C(&unk_28081D870);
    OUTLINED_FUNCTION_27_3();
    sub_2706E601C();
    if (*&v23[0])
    {
      v17 = *&v23[0];
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v18 = OUTLINED_FUNCTION_43_1();
    v19(v18);
    *(v2 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_superTypes) = v17;
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    v20 = OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_context;
    swift_beginAccess();
    sub_2706C0670(v23, v2 + v20);
    swift_endAccess();
    v14 = v4;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  OUTLINED_FUNCTION_55();
}

uint64_t sub_2706BD54C()
{
  OUTLINED_FUNCTION_40_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D610, &qword_2706EB998);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_47_1(v0, v0[3]);
  v4 = sub_2706BFCC8();
  OUTLINED_FUNCTION_13_5(&type metadata for PasteboardRepresentation.CodingKeys, v5, v4);
  v6 = OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_id;
  LOBYTE(v11) = 0;
  sub_2706E576C();
  OUTLINED_FUNCTION_0_7();
  sub_2706BF718(v7);
  OUTLINED_FUNCTION_16_8(v2 + v6);
  if (!v1)
  {
    v11 = *(v2 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_name);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D620, &qword_2706EB9A0);
    sub_2706C060C(&unk_28081D628);
    OUTLINED_FUNCTION_16_8(&v11);
    LOBYTE(v11) = 2;
    OUTLINED_FUNCTION_19_8();
    sub_2706E60CC();
    *&v11 = *(v2 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_superTypes);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D5F8, &qword_2706EB988);
    sub_2706BFD1C(&unk_28081D630);
    OUTLINED_FUNCTION_16_8(&v11);
    LOBYTE(v11) = 3;
    OUTLINED_FUNCTION_19_8();
    sub_2706E60BC();
  }

  v8 = OUTLINED_FUNCTION_26_3();
  return v9(v8);
}

uint64_t sub_2706BD7C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D208, &qword_2706EA040);
  OUTLINED_FUNCTION_16_3(v1);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_23_3();
  v3 = sub_2706E589C();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;

  sub_2706E58AC();
  OUTLINED_FUNCTION_66(v0);
  if (v12)
  {
    sub_2706A64F4(v0, &qword_28081D208, &qword_2706EA040);
    v13 = 0;
  }

  else
  {
    (*(v5 + 32))(v11, v0, v3);
    sub_2706E583C();
    v13 = sub_2706E585C();
    v14 = *(v5 + 8);
    v14(v9, v3);
    v15 = OUTLINED_FUNCTION_26_3();
    (v14)(v15);
  }

  return v13 & 1;
}

uint64_t sub_2706BD978()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D208, &qword_2706EA040);
  OUTLINED_FUNCTION_16_3(v1);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_6();
  sub_2706E589C();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v6 = v5 - v4;

  sub_2706E58AC();
  OUTLINED_FUNCTION_66(v0);
  if (v7)
  {
    sub_2706A64F4(v0, &qword_28081D208, &qword_2706EA040);
    v10 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_45_1();
    v9(v8);
    v10 = v6;
    sub_2706E588C();
    v11 = OUTLINED_FUNCTION_57_0();
    v12(v11);
  }

  return v10 & 1;
}

uint64_t sub_2706BDAC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D208, &qword_2706EA040);
  OUTLINED_FUNCTION_16_3(v1);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_6();
  sub_2706E589C();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v6 = v5 - v4;

  sub_2706E58AC();
  OUTLINED_FUNCTION_66(v0);
  if (v7)
  {
    sub_2706A64F4(v0, &qword_28081D208, &qword_2706EA040);
    v10 = 0;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_45_1();
    v9(v8);
    v10 = v6;
    sub_2706E587C();
    v11 = OUTLINED_FUNCTION_57_0();
    v12(v11);
  }

  return v10 & 1;
}

uint64_t sub_2706BDC18()
{
  v0 = sub_2706BDAC8();
  v1 = sub_2706BD978();
  v2 = 1;
  if (v0)
  {
    v2 = 2;
  }

  if (v1)
  {
    return v0 & 1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2706BDC60()
{
  v1 = OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_id;
  sub_2706E576C();
  OUTLINED_FUNCTION_6_0();
  (*(v2 + 8))(v0 + v1);

  sub_2706A64F4(v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_context, &qword_28081D278, &qword_2706EBB10);
  return v0;
}

uint64_t sub_2706BDD10()
{
  sub_2706BDC60();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2706BDD90(uint64_t a1)
{
  result = sub_2706E576C();
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

uint64_t sub_2706BDE58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2706BD00C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2706BDEA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_id;
  v5 = sub_2706E576C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_2706BDF24()
{
  sub_2706E5E3C();
  v1 = sub_2706E671C();

  MEMORY[0x2743A5EF0](541346080, 0xE400000000000000);
  sub_2706E576C();
  OUTLINED_FUNCTION_0_7();
  sub_2706BF718(v2);
  v3 = sub_2706E611C();
  MEMORY[0x2743A5EF0](v3);

  MEMORY[0x2743A5EF0](0x27205455202CLL, 0xE600000000000000);
  MEMORY[0x2743A5EF0](*(v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier), *(v0 + OBJC_IVAR____TtC13UniversalDrag24PasteboardRepresentation_typeIdentifier + 8));
  MEMORY[0x2743A5EF0](39, 0xE100000000000000);
  return v1;
}

uint64_t sub_2706BE06C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65736572706572 && a2 == 0xEF736E6F69746174;
  if (v4 || (OUTLINED_FUNCTION_8_3(0x6E65736572706572, 0xEF736E6F69746174) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002706F0AB0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_8_3(0xD000000000000011, 0x80000002706F0AB0);

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2706BE12C(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6E65736572706572;
  }
}

uint64_t sub_2706BE1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706BE06C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2706BE1D4(uint64_t a1)
{
  v2 = sub_2706BFD80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BE210(uint64_t a1)
{
  v2 = sub_2706BFD80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BE24C(char a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 0x656E696C6E69;
  }

  return 0x656D686361747461;
}

uint64_t sub_2706BE2A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E696C6E69 && a2 == 0xE600000000000000;
    if (v6 || (sub_2706E631C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656D686361747461 && a2 == 0xEA0000000000746ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_2706E631C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

void sub_2706BE3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_60();
  v58 = v26;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6A0, &qword_2706EB9E0);
  OUTLINED_FUNCTION_4();
  v56 = v30;
  v57 = v29;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_13();
  v55 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6A8, &qword_2706EB9E8);
  OUTLINED_FUNCTION_4();
  v53 = v34;
  v54 = v33;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v35);
  v37 = &v51 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6B0, &qword_2706EB9F0);
  OUTLINED_FUNCTION_4();
  v52 = v39;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v40);
  v42 = &v51 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D6B8, &qword_2706EB9F8);
  OUTLINED_FUNCTION_4();
  v45 = v44;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_47_1(v28, v28[3]);
  sub_2706BFEC0();
  sub_2706E66AC();
  v47 = (v45 + 8);
  if (v58)
  {
    if (v58 == 1)
    {
      sub_2706BFF68();
      OUTLINED_FUNCTION_53_1(&type metadata for PasteboardItem.PresentationStyle.InlineCodingKeys);
      (*(v53 + 8))(v37, v54);
    }

    else
    {
      sub_2706BFF14();
      OUTLINED_FUNCTION_53_1(&type metadata for PasteboardItem.PresentationStyle.AttachmentCodingKeys);
      v48 = OUTLINED_FUNCTION_18_4();
      v50(v48, v49);
    }
  }

  else
  {
    sub_2706BFFBC();
    OUTLINED_FUNCTION_53_1(&type metadata for PasteboardItem.PresentationStyle.UnknownCodingKeys);
    (*(v52 + 8))(v42, v38);
  }

  (*v47)(v25, v43);
  OUTLINED_FUNCTION_55();
}

void sub_2706BE6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60();
  v88 = v24;
  v28 = v27;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D660, &qword_2706EB9B8);
  OUTLINED_FUNCTION_4();
  v85 = v29;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_13();
  v83 = v31;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D668, &qword_2706EB9C0);
  OUTLINED_FUNCTION_4();
  v82 = v32;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v33);
  v35 = v79 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D670, &qword_2706EB9C8);
  OUTLINED_FUNCTION_4();
  v81 = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_16_4();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D678, &unk_2706EB9D0);
  OUTLINED_FUNCTION_4();
  v86 = v40;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_47_1(v28, v28[3]);
  sub_2706BFEC0();
  v42 = v88;
  sub_2706E668C();
  if (v42)
  {
    goto LABEL_12;
  }

  v79[0] = v36;
  v79[1] = v26;
  v79[2] = v35;
  v80 = 0;
  v43 = v87;
  v88 = v28;
  v44 = v25;
  v45 = sub_2706E606C();
  sub_270698614(v45, 0);
  v49 = v39;
  if (v47 == v48 >> 1)
  {
    goto LABEL_10;
  }

  if (v47 < (v48 >> 1))
  {
    v50 = v39;
    v51 = *(v46 + v47);
    v52 = sub_270698610(v47 + 1);
    v54 = v53;
    v56 = v55;
    swift_unknownObjectRelease();
    v57 = v84;
    v58 = v85;
    if (v54 == v56 >> 1)
    {
      if (v51)
      {
        v81 = v52;
        v59 = v80;
        if (v51 == 1)
        {
          sub_2706BFF68();
          OUTLINED_FUNCTION_34_3();
          sub_2706E5FFC();
          if (!v59)
          {
            swift_unknownObjectRelease();
            v60 = OUTLINED_FUNCTION_18_4();
            v61(v60, v57);
            v62 = OUTLINED_FUNCTION_35_1();
            v63(v62);
LABEL_21:
            __swift_destroy_boxed_opaque_existential_1(v88);
            goto LABEL_13;
          }
        }

        else
        {
          LODWORD(v84) = v51;
          sub_2706BFF14();
          v71 = v83;
          OUTLINED_FUNCTION_34_3();
          sub_2706E5FFC();
          if (!v59)
          {
            swift_unknownObjectRelease();
            (*(v58 + 8))(v71, v43);
            v77 = OUTLINED_FUNCTION_35_1();
            v78(v77);
            goto LABEL_21;
          }
        }

        v72 = OUTLINED_FUNCTION_35_1();
        v73(v72);
      }

      else
      {
        sub_2706BFFBC();
        OUTLINED_FUNCTION_34_3();
        v69 = v80;
        sub_2706E5FFC();
        if (!v69)
        {
          swift_unknownObjectRelease();
          v74 = OUTLINED_FUNCTION_18_4();
          v75(v74, v79[0]);
          OUTLINED_FUNCTION_15_7();
          v76(v44, v50);
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_15_7();
        v70(v44, v50);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v49 = v50;
LABEL_10:
    v64 = sub_2706E5E8C();
    swift_allocError();
    v66 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    *v66 = &type metadata for PasteboardItem.PresentationStyle;
    v67 = sub_2706E600C();
    OUTLINED_FUNCTION_59(v67);
    (*(*(v64 - 8) + 104))(v66, *MEMORY[0x277D84160], v64);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_15_7();
    v68(v44, v49);
LABEL_11:
    v28 = v88;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_13:
    OUTLINED_FUNCTION_55();
    return;
  }

  __break(1u);
}

uint64_t sub_2706BEC14(uint64_t a1)
{
  v2 = sub_2706BFF14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BEC50(uint64_t a1)
{
  v2 = sub_2706BFF14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BECA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706BE2A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2706BECC8(uint64_t a1)
{
  v2 = sub_2706BFEC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BED04(uint64_t a1)
{
  v2 = sub_2706BFEC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BED40(uint64_t a1)
{
  v2 = sub_2706BFF68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BED7C(uint64_t a1)
{
  v2 = sub_2706BFF68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BEDB8(uint64_t a1)
{
  v2 = sub_2706BFFBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706BEDF4(uint64_t a1)
{
  v2 = sub_2706BFFBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706BEE78(uint64_t a1, char a2)
{
  *(v2 + 24) = a1;
  *(v2 + 16) = a2;
  return v2;
}

uint64_t sub_2706BEE88(uint64_t a1)
{
  OUTLINED_FUNCTION_17_2();
  v2 = swift_allocObject();
  sub_2706BEED0(a1, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return v2;
}

void sub_2706BEED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60();
  v13 = v12;
  OUTLINED_FUNCTION_48_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D840, &qword_2706EBB00);
  OUTLINED_FUNCTION_4();
  v15 = v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  v18 = &v21 - v17;
  *(v10 + 16) = 0;
  OUTLINED_FUNCTION_47_1(v13, v13[3]);
  sub_2706BFD80();
  sub_2706E668C();
  if (v11)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D220, &qword_2706EA050);
    v24 = 0;
    sub_2706BFDD4(&unk_28081D848);
    v20 = v21;
    sub_2706E605C();
    *(v10 + 24) = a10;
    v22 = 1;
    sub_2706C05B8();
    sub_2706E601C();
    (*(v19 + 8))(v18, v20);
    if (v23 != 3)
    {
      *(v10 + 16) = v23;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_55();
}

uint64_t sub_2706BF12C()
{
  OUTLINED_FUNCTION_40_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D638, &unk_2706EB9A8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_47_1(v0, v0[3]);
  v4 = sub_2706BFD80();
  OUTLINED_FUNCTION_13_5(&type metadata for PasteboardItem.CodingKeys, v5, v4);
  v9 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D220, &qword_2706EA050);
  sub_2706BFDD4(&unk_28081D648);
  OUTLINED_FUNCTION_16_8(&v9);
  if (!v1)
  {
    sub_2706BFE6C();
    OUTLINED_FUNCTION_19_8();
    sub_2706E60DC();
  }

  v6 = OUTLINED_FUNCTION_26_3();
  return v7(v6);
}

uint64_t sub_2706BF2C0()
{

  v0 = OUTLINED_FUNCTION_17_2();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t get_enum_tag_for_layout_string_13UniversalDrag26PasteboardAcquisitionErrorO(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 6;
  }

  else
  {
    return *a1 >> 61;
  }
}

uint64_t sub_2706BF344(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7A && *(a1 + 8))
    {
      v2 = *a1 + 121;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x79)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2706BF398(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_2706BF3F8(unint64_t *result, uint64_t a2)
{
  if (a2 < 6)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 6)) | 0xC000000000000000;
  }

  *result = v2;
  return result;
}

unint64_t sub_2706BF434()
{
  result = qword_28081D5C8;
  if (!qword_28081D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D5C8);
  }

  return result;
}

uint64_t sub_2706BF488@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2706BEE88(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_2706BF4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_48_1();
  v19 = sub_2706E671C();
  MEMORY[0x2743A5EF0](10272, 0xE200000000000000);
  v13 = *(v10 + 24);
  v14 = sub_2706B87F8(v13);
  if (!v14)
  {
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D5F8, &qword_2706EB988);
    v18 = sub_2706BF840();
    OUTLINED_FUNCTION_52_1(v18);

    OUTLINED_FUNCTION_56_1();

    MEMORY[0x2743A5EF0](41, 0xE100000000000000);

    OUTLINED_FUNCTION_63();
    return;
  }

  OUTLINED_FUNCTION_42_1(v14);
  if ((v11 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_60_0();
    do
    {
      if (v12)
      {
        MEMORY[0x2743A62C0](v19, v13);
      }

      else
      {
      }

      sub_2706BDF24();

      OUTLINED_FUNCTION_61();
      if (v16)
      {
        OUTLINED_FUNCTION_54_1(v15);
      }

      OUTLINED_FUNCTION_46_1();
    }

    while (!v17);
    goto LABEL_11;
  }

  __break(1u);
}

unint64_t sub_2706BF6C4()
{
  result = qword_28081D5D8;
  if (!qword_28081D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D5D8);
  }

  return result;
}

unint64_t sub_2706BF718(uint64_t a1)
{
  result = OUTLINED_FUNCTION_19_4(a1);
  if (!result)
  {
    v4(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

char *sub_2706BF75C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_7(a3, result);
  }

  return result;
}

char *sub_2706BF77C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_7(a3, result);
  }

  return result;
}

char *sub_2706BF7A4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_7(a3, result);
  }

  return result;
}

char *sub_2706BF7C4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_7(a3, result);
  }

  return result;
}

unint64_t sub_2706BF7FC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

char *sub_2706BF820(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2706BF8E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_2706BF840()
{
  result = qword_28081D600;
  if (!qword_28081D600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D5F8, &qword_2706EB988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D600);
  }

  return result;
}

char *sub_2706BF8A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2706BF9EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2706BF8C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2706BFB04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2706BF8E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D608, &qword_2706EB990);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
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

char *sub_2706BF9EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D8A0, &qword_2706EBB30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2706BFB04(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D8A8, &qword_2706EBB38);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D8B0, &qword_2706EBB40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t (*sub_2706BFC34(uint64_t *a1, unint64_t a2, uint64_t a3))()
{
  v6 = sub_2706BF7EC(a3);
  sub_2706BF7FC(a2, v6, a3);
  if (v6)
  {
  }

  else
  {
    v7 = MEMORY[0x2743A62C0](a2, a3);
  }

  *a1 = v7;
  return sub_2706BFCC0;
}

unint64_t sub_2706BFCC8()
{
  result = qword_28081D618;
  if (!qword_28081D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D618);
  }

  return result;
}

unint64_t sub_2706BFD1C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_19_4(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D5F8, &qword_2706EB988);
    OUTLINED_FUNCTION_58_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2706BFD80()
{
  result = qword_28081D640;
  if (!qword_28081D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D640);
  }

  return result;
}

unint64_t sub_2706BFDD4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_19_4(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D220, &qword_2706EA050);
    sub_2706BF718(v4);
    OUTLINED_FUNCTION_58_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2706BFE6C()
{
  result = qword_28081D658;
  if (!qword_28081D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D658);
  }

  return result;
}

unint64_t sub_2706BFEC0()
{
  result = qword_28081D680;
  if (!qword_28081D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D680);
  }

  return result;
}

unint64_t sub_2706BFF14()
{
  result = qword_28081D688;
  if (!qword_28081D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D688);
  }

  return result;
}

unint64_t sub_2706BFF68()
{
  result = qword_28081D690;
  if (!qword_28081D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D690);
  }

  return result;
}

unint64_t sub_2706BFFBC()
{
  result = qword_28081D698;
  if (!qword_28081D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D698);
  }

  return result;
}

unint64_t sub_2706C0010()
{
  result = qword_28081D740;
  if (!qword_28081D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D740);
  }

  return result;
}

unint64_t sub_2706C0064()
{
  result = qword_28081D748;
  if (!qword_28081D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D748);
  }

  return result;
}

unint64_t sub_2706C00B8()
{
  result = qword_28081D750;
  if (!qword_28081D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D750);
  }

  return result;
}

uint64_t sub_2706C010C()
{
  sub_270688D9C(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

unint64_t sub_2706C0144()
{
  result = qword_28081D758;
  if (!qword_28081D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D758);
  }

  return result;
}

unint64_t sub_2706C0198()
{
  result = qword_28081D760;
  if (!qword_28081D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D760);
  }

  return result;
}

unint64_t sub_2706C01EC()
{
  result = qword_28081D768;
  if (!qword_28081D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D768);
  }

  return result;
}

unint64_t sub_2706C0240()
{
  result = qword_28081D770;
  if (!qword_28081D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D770);
  }

  return result;
}

uint64_t sub_2706C0294()
{

  v0 = OUTLINED_FUNCTION_17_2();

  return MEMORY[0x2821FE8E8](v0);
}

unint64_t sub_2706C02C4()
{
  result = qword_28081D778;
  if (!qword_28081D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D778);
  }

  return result;
}

unint64_t sub_2706C0318()
{
  result = qword_28081D780;
  if (!qword_28081D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D780);
  }

  return result;
}

unint64_t sub_2706C036C()
{
  result = qword_28081D788;
  if (!qword_28081D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D788);
  }

  return result;
}

unint64_t sub_2706C03C0()
{
  result = qword_28081D790;
  if (!qword_28081D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D790);
  }

  return result;
}

unint64_t sub_2706C0414()
{
  result = qword_28081D798;
  if (!qword_28081D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D798);
  }

  return result;
}

unint64_t sub_2706C0468()
{
  result = qword_28081D7A0;
  if (!qword_28081D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D7A0);
  }

  return result;
}