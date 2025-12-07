void sub_23146E5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_59_2(v24);
  OUTLINED_FUNCTION_4();
  v57 = v26;
  v58 = v25;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v53 - v30;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EC60, &qword_2314809E8);
  OUTLINED_FUNCTION_4();
  v33 = v32;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v34);
  v35 = OUTLINED_FUNCTION_55_2();
  v60 = type metadata accessor for _NewEntity(v35);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2();
  v39 = (v38 - v37);
  v40 = v22[3];
  v61 = v22;
  OUTLINED_FUNCTION_43_3(v22, v40);
  sub_231471544();
  sub_231478948();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v61);
  }

  else
  {
    v53[1] = v29;
    v54 = v31;
    v55 = v33;
    OUTLINED_FUNCTION_41_3();
    OUTLINED_FUNCTION_9_20();
    *v39 = sub_231478688();
    v39[1] = v41;
    OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_9_20();
    v39[2] = sub_231478688();
    v39[3] = v42;
    OUTLINED_FUNCTION_36_3();
    OUTLINED_FUNCTION_9_20();
    v39[4] = sub_231478688();
    v39[5] = v43;
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_9_20();
    v39[6] = sub_231478688();
    v39[7] = v44;
    OUTLINED_FUNCTION_0_21();
    sub_23146C478(v45, v46, MEMORY[0x277CC95A0]);
    OUTLINED_FUNCTION_50_2();
    OUTLINED_FUNCTION_27_6();
    sub_2314786B8();
    v47 = OUTLINED_FUNCTION_45_2(*(v60 + 32));
    v54 = v48;
    v53[0] = v49;
    v49(v47);
    OUTLINED_FUNCTION_50_2();
    OUTLINED_FUNCTION_27_6();
    sub_2314786B8();
    v50 = OUTLINED_FUNCTION_17_8();
    v51(v50);
    v52 = OUTLINED_FUNCTION_45_2(*(v60 + 36));
    (v53[0])(v52);
    sub_231401610(v39, v56, type metadata accessor for _NewEntity);
    __swift_destroy_boxed_opaque_existential_0(v61);
    sub_2314016C4(v39, type metadata accessor for _NewEntity);
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_23146EA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23146E044(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23146EA30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23146E234();
  *a1 = result;
  return result;
}

uint64_t sub_23146EA58(uint64_t a1)
{
  v2 = sub_231471544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23146EA94(uint64_t a1)
{
  v2 = sub_231471544();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23146EB08(uint64_t a1)
{
  sub_2314788E8();
  sub_23146E4B4(v2);
  return sub_231478918();
}

uint64_t sub_23146EB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23146C478(&qword_27DD4EC80, type metadata accessor for _NewEntity, &unk_2314803BC);

  return sub_231477428();
}

uint64_t sub_23146ECCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23146C478(&qword_27DD4EC88, type metadata accessor for _NewEntity, &unk_2314803FC);

  return MEMORY[0x282162828](a1, a2, a3, v6);
}

uint64_t sub_23146EFE8(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t sub_23146F074()
{
  sub_231476E98();
  swift_allocObject();
  result = sub_231476E88();
  qword_280C3D848 = result;
  return result;
}

uint64_t sub_23146F0C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6469776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (sub_2314787C8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73646C656966 && a2 == 0xE600000000000000;
        if (v8 || (sub_2314787C8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4164657461657263 && a2 == 0xE900000000000074;
          if (v9 || (sub_2314787C8() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x4164657461647075 && a2 == 0xE900000000000074)
          {

            return 5;
          }

          else
          {
            v11 = sub_2314787C8();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23146F2B0(char a1)
{
  result = 0x6469776F72;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x73646C656966;
      break;
    case 4:
      v3 = 1634038371;
      goto LABEL_7;
    case 5:
      v3 = 1633972341;
LABEL_7:
      result = v3 | 0x4164657400000000;
      break;
    default:
      return result;
  }

  return result;
}

void sub_23146F340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_64();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EC20, &qword_2314809D0);
  OUTLINED_FUNCTION_4();
  v27 = v26;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_29_5();
  v29 = sub_231471448();
  OUTLINED_FUNCTION_42_1(&type metadata for _Entity.CodingKeys, v30, v29);
  sub_231478768();
  if (!v23)
  {
    OUTLINED_FUNCTION_37_3();
    sub_231478718();
    OUTLINED_FUNCTION_36_3();
    OUTLINED_FUNCTION_37_3();
    sub_231478718();
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_37_3();
    sub_231478718();
    type metadata accessor for _Entity(0);
    OUTLINED_FUNCTION_54_2();
    OUTLINED_FUNCTION_0_21();
    sub_23146C478(v31, v32, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_19_11();
    sub_231478748();
    OUTLINED_FUNCTION_19_11();
    sub_231478748();
  }

  (*(v27 + 8))(v24, v25);
  OUTLINED_FUNCTION_62();
}

void sub_23146F520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_59_2(v24);
  OUTLINED_FUNCTION_4();
  v57 = v26;
  v58 = v25;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v51 - v30;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EC18, &qword_2314809C8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v32);
  v33 = OUTLINED_FUNCTION_55_2();
  v60 = type metadata accessor for _Entity(v33);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2();
  v37 = (v36 - v35);
  v38 = v22[3];
  v59 = v22;
  OUTLINED_FUNCTION_43_3(v22, v38);
  sub_231471448();
  sub_231478948();
  if (v23)
  {
    OUTLINED_FUNCTION_25_6();
    __swift_destroy_boxed_opaque_existential_0(v59);
    if (v38)
    {

      if (v22)
      {
        goto LABEL_5;
      }
    }

    else if (v22)
    {
LABEL_5:

      if ((v31 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (!v31)
    {
      goto LABEL_10;
    }

LABEL_9:

    goto LABEL_10;
  }

  v53 = v29;
  v54 = v31;
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_9_20();
  *v37 = sub_2314786C8();
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_9_20();
  v37[1] = sub_231478688();
  v37[2] = v39;
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_9_20();
  v37[3] = sub_231478688();
  v37[4] = v40;
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_9_20();
  v37[5] = sub_231478688();
  v37[6] = v41;
  OUTLINED_FUNCTION_0_21();
  sub_23146C478(v42, v43, MEMORY[0x277CC95A0]);
  v44 = v54;
  OUTLINED_FUNCTION_27_6();
  sub_2314786B8();
  v45 = *(v60 + 32);
  v46 = *(v57 + 32);
  v52 = v37;
  v54 = v46;
  (v46)(v37 + v45, v44, v58);
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_27_6();
  sub_2314786B8();
  v47 = OUTLINED_FUNCTION_48_2();
  v48(v47);
  v49 = v52;
  v50 = OUTLINED_FUNCTION_45_2(*(v60 + 36));
  v54(v50);
  sub_231401610(v49, v55, type metadata accessor for _Entity);
  __swift_destroy_boxed_opaque_existential_0(v59);
  sub_2314016C4(v49, type metadata accessor for _Entity);
LABEL_10:
  OUTLINED_FUNCTION_62();
}

uint64_t sub_23146F974()
{
  v0 = sub_2314770D8();
  __swift_allocate_value_buffer(v0, qword_27DD5ACC8);
  v1 = OUTLINED_FUNCTION_17();
  __swift_project_value_buffer(v1, v2);
  if (qword_280C3BC68 != -1)
  {
    OUTLINED_FUNCTION_34_2(&qword_280C3BC68);
  }

  v4[3] = sub_2314776A8();
  v4[4] = MEMORY[0x277D0B7F8];
  __swift_allocate_boxed_opaque_existential_1(v4);

  sub_231477698();
  sub_231476EA8();

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_23146FA68(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2314770D8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  if (qword_280C3BC68 != -1)
  {
    OUTLINED_FUNCTION_34_2(&qword_280C3BC68);
  }

  v7[3] = sub_2314776A8();
  v7[4] = MEMORY[0x277D0B7F8];
  __swift_allocate_boxed_opaque_existential_1(v7);

  sub_2314776B8();
  sub_231476EA8();

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_23146FB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23146F0C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23146FB7C(uint64_t a1)
{
  v2 = sub_231471448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23146FBB8(uint64_t a1)
{
  v2 = sub_231471448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23146FC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23146C478(&qword_280C3BC40, type metadata accessor for _Entity, &unk_2314808D4);

  return MEMORY[0x282162858](a1, a2, a3, v6);
}

uint64_t sub_23146FCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23146C478(&qword_27DD4EC28, type metadata accessor for _Entity, &unk_23148086C);

  return sub_231477428();
}

uint64_t sub_23146FE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23146C478(&qword_27DD4EC30, type metadata accessor for _Entity, &unk_2314808AC);

  return MEMORY[0x282162828](a1, a2, a3, v6);
}

uint64_t sub_23146FF30@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  v9 = __swift_project_value_buffer(v8, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_23146FFD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000231481FB0 == a2;
  if (v3 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F52797469746E65 && a2 == 0xEB00000000646977;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6574656D61726170 && a2 == 0xE900000000000072)
    {

      return 2;
    }

    else
    {
      v8 = sub_2314787C8();

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

uint64_t sub_2314700F8(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x6F52797469746E65;
  }

  return 0x6574656D61726170;
}

void sub_231470160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_64();
  v30[0] = v21;
  v30[1] = v20;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED00, &qword_231481160);
  OUTLINED_FUNCTION_4();
  v26 = v25;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v27);
  v29 = v30 - v28;
  OUTLINED_FUNCTION_43_3(v23, v23[3]);
  sub_231472004();
  sub_231478968();
  sub_231478768();
  if (!v19)
  {
    sub_231478768();
    OUTLINED_FUNCTION_36_3();
    sub_231478718();
  }

  (*(v26 + 8))(v29, v24);
  OUTLINED_FUNCTION_62();
}

void sub_2314702DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ECF8, &qword_231481158);
  OUTLINED_FUNCTION_4();
  v27 = v26;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  OUTLINED_FUNCTION_43_3(v24, v24[3]);
  sub_231472004();
  sub_231478948();
  if (!v20)
  {
    OUTLINED_FUNCTION_41_3();
    OUTLINED_FUNCTION_49_2();
    sub_2314786C8();
    OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_49_2();
    sub_2314786C8();
    OUTLINED_FUNCTION_36_3();
    OUTLINED_FUNCTION_49_2();
    sub_231478688();
    (*(v27 + 8))(v30, v25);
  }

  __swift_destroy_boxed_opaque_existential_0(v24);
  OUTLINED_FUNCTION_62();
}

uint64_t sub_23147046C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ECA0, &unk_231480A08);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v0);
  v2 = &v13 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E130, &qword_23147CDC0);
  __swift_allocate_value_buffer(v3, qword_280C3D850);
  __swift_project_value_buffer(v3, qword_280C3D850);
  type metadata accessor for _Entity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ECA8, &qword_231480A18);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_231479580;
  if (qword_280C3BD28 != -1)
  {
    swift_once();
  }

  v5 = sub_2314776A8();
  v6 = __swift_project_value_buffer(v5, qword_280C3D880);
  v7 = MEMORY[0x277D0B7E0];
  *(v4 + 56) = v5;
  *(v4 + 64) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);
  sub_231476DA8();
  v9 = sub_231476D98();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v9);
  sub_231444824();
  OUTLINED_FUNCTION_28_7();
  sub_23146C478(v10, v11, &unk_23148073C);
  sub_231476F38();
  return sub_2314715EC(v2);
}

uint64_t sub_231470678()
{
  v0 = sub_2314776A8();
  __swift_allocate_value_buffer(v0, qword_280C3D868);
  v1 = OUTLINED_FUNCTION_17();
  __swift_project_value_buffer(v1, v2);
  return sub_2314776B8();
}

uint64_t sub_2314706D8()
{
  v0 = sub_2314776A8();
  __swift_allocate_value_buffer(v0, qword_280C3D880);
  v1 = OUTLINED_FUNCTION_17();
  __swift_project_value_buffer(v1, v2);
  return sub_2314776B8();
}

uint64_t sub_231470748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23146FFD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231470770(uint64_t a1)
{
  v2 = sub_231472004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314707AC(uint64_t a1)
{
  v2 = sub_231472004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231470838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231472058();

  return MEMORY[0x282162858](a1, a2, a3, v6);
}

uint64_t sub_23147089C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23141F970();

  return sub_231477428();
}

uint64_t sub_231470990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2314720AC();

  return MEMORY[0x282162828](a1, a2, a3, v6);
}

uint64_t sub_2314709E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000231481FB0 == a2;
  if (v3 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xE900000000000072;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x797469746E65 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2314787C8();

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

uint64_t sub_231470B04(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x6574656D61726170;
  }

  return 0x797469746E65;
}

void sub_231470B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_64();
  v22 = v21;
  v37 = v23;
  type metadata accessor for _Entity(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_57_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EC10, &qword_2314809C0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v25);
  v26 = OUTLINED_FUNCTION_32_3();
  v27 = type metadata accessor for _InteractionWithEntity(v26);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2();
  v31 = (v30 - v29);
  OUTLINED_FUNCTION_43_3(v22, v22[3]);
  sub_231471390();
  sub_231478948();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    OUTLINED_FUNCTION_41_3();
    *v31 = sub_2314786C8();
    OUTLINED_FUNCTION_33_3();
    v31[1] = sub_231478688();
    v31[2] = v32;
    OUTLINED_FUNCTION_36_3();
    OUTLINED_FUNCTION_28_7();
    sub_23146C478(v33, v34, &unk_2314808D4);
    sub_2314786B8();
    v35 = OUTLINED_FUNCTION_46_2();
    v36(v35);
    sub_2314713E4(v20, v31 + *(v27 + 24));
    sub_231401610(v31, v37, type metadata accessor for _InteractionWithEntity);
    __swift_destroy_boxed_opaque_existential_0(v22);
    sub_2314016C4(v31, type metadata accessor for _InteractionWithEntity);
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_231470E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2314709E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231470E6C(uint64_t a1)
{
  v2 = sub_231471390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231470EA8(uint64_t a1)
{
  v2 = sub_231471390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231470EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23146C478(&qword_280C3BCB8, type metadata accessor for _InteractionWithEntity, &unk_231480944);

  return MEMORY[0x282162858](a1, a2, a3, v6);
}

uint64_t sub_231470FAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23146B0B0(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_231471028(uint64_t a1, uint64_t a2)
{
  v4 = sub_23141EE68();
  v5 = sub_2313F89D8();
  v6 = MEMORY[0x277D0B868];

  return MEMORY[0x282162A58](a1, a2, v4, v5, v6);
}

uint64_t sub_231471098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23141F114();
  v7 = sub_2313F89D8();
  v8 = MEMORY[0x277D0B868];

  return MEMORY[0x282162A60](a1, a2, a3, v6, v7, v8);
}

uint64_t sub_231471110(uint64_t a1)
{
  v2 = sub_23147149C();

  return MEMORY[0x282162A40](a1, v2);
}

uint64_t sub_23147115C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23147149C();

  return MEMORY[0x282162A50](a1, a2, a3, v6);
}

unint64_t sub_2314711B4()
{
  result = qword_280C3C648[0];
  if (!qword_280C3C648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C3C648);
  }

  return result;
}

unint64_t sub_23147120C()
{
  result = qword_280C3C640;
  if (!qword_280C3C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C640);
  }

  return result;
}

unint64_t sub_231471264()
{
  result = qword_27DD4EBF8;
  if (!qword_27DD4EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EBF8);
  }

  return result;
}

unint64_t sub_231471390()
{
  result = qword_280C3BCD8;
  if (!qword_280C3BCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BCD8);
  }

  return result;
}

uint64_t sub_2314713E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Entity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_231471448()
{
  result = qword_280C3BC80;
  if (!qword_280C3BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BC80);
  }

  return result;
}

unint64_t sub_23147149C()
{
  result = qword_27DD4EC38;
  if (!qword_27DD4EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EC38);
  }

  return result;
}

unint64_t sub_2314714F0()
{
  result = qword_280C3BE90;
  if (!qword_280C3BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BE90);
  }

  return result;
}

unint64_t sub_231471544()
{
  result = qword_27DD4EC68;
  if (!qword_27DD4EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EC68);
  }

  return result;
}

unint64_t sub_231471598()
{
  result = qword_280C3C5B0;
  if (!qword_280C3C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C5B0);
  }

  return result;
}

uint64_t sub_2314715EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ECA0, &unk_231480A08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for _NewInteraction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _Interaction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for _Interaction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2314718B4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_23147193C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_231471A2C()
{
  result = qword_27DD4ECC0;
  if (!qword_27DD4ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ECC0);
  }

  return result;
}

unint64_t sub_231471A84()
{
  result = qword_27DD4ECC8;
  if (!qword_27DD4ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ECC8);
  }

  return result;
}

unint64_t sub_231471ADC()
{
  result = qword_27DD4ECD0;
  if (!qword_27DD4ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ECD0);
  }

  return result;
}

unint64_t sub_231471B34()
{
  result = qword_27DD4ECD8;
  if (!qword_27DD4ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ECD8);
  }

  return result;
}

unint64_t sub_231471B8C()
{
  result = qword_27DD4ECE0;
  if (!qword_27DD4ECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ECE0);
  }

  return result;
}

unint64_t sub_231471BE4()
{
  result = qword_280C3C478;
  if (!qword_280C3C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C478);
  }

  return result;
}

unint64_t sub_231471C40()
{
  result = qword_280C3C460;
  if (!qword_280C3C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C460);
  }

  return result;
}

unint64_t sub_231471C98()
{
  result = qword_280C3C5A0;
  if (!qword_280C3C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C5A0);
  }

  return result;
}

unint64_t sub_231471CF0()
{
  result = qword_280C3C5A8;
  if (!qword_280C3C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C5A8);
  }

  return result;
}

unint64_t sub_231471D48()
{
  result = qword_27DD4ECE8;
  if (!qword_27DD4ECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ECE8);
  }

  return result;
}

unint64_t sub_231471DA0()
{
  result = qword_27DD4ECF0;
  if (!qword_27DD4ECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ECF0);
  }

  return result;
}

unint64_t sub_231471DF8()
{
  result = qword_280C3BE80;
  if (!qword_280C3BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BE80);
  }

  return result;
}

unint64_t sub_231471E50()
{
  result = qword_280C3BE88;
  if (!qword_280C3BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BE88);
  }

  return result;
}

unint64_t sub_231471EA8()
{
  result = qword_280C3BC70;
  if (!qword_280C3BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BC70);
  }

  return result;
}

unint64_t sub_231471F00()
{
  result = qword_280C3BC78;
  if (!qword_280C3BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BC78);
  }

  return result;
}

unint64_t sub_231471F58()
{
  result = qword_280C3BCC8;
  if (!qword_280C3BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BCC8);
  }

  return result;
}

unint64_t sub_231471FB0()
{
  result = qword_280C3BCD0;
  if (!qword_280C3BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BCD0);
  }

  return result;
}

unint64_t sub_231472004()
{
  result = qword_280C3C498;
  if (!qword_280C3C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C498);
  }

  return result;
}

unint64_t sub_231472058()
{
  result = qword_27DD4ED08;
  if (!qword_27DD4ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ED08);
  }

  return result;
}

unint64_t sub_2314720AC()
{
  result = qword_280C3C458;
  if (!qword_280C3C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C458);
  }

  return result;
}

_BYTE *sub_231472100(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2314721E0()
{
  result = qword_27DD4ED10;
  if (!qword_27DD4ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ED10);
  }

  return result;
}

unint64_t sub_231472238()
{
  result = qword_280C3C488;
  if (!qword_280C3C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C488);
  }

  return result;
}

unint64_t sub_231472290()
{
  result = qword_280C3C490;
  if (!qword_280C3C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C490);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_34_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_40_1()
{

  return sub_231478748();
}

uint64_t OUTLINED_FUNCTION_54_2()
{
  *(v0 - 69) = 4;

  return sub_231476CA8();
}

uint64_t sub_2314724A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = MEMORY[0x277D84F98];
  type metadata accessor for Entity(0);
  sub_231476C98();
  v4 = sub_231414BC8(v2, &selRef_identifier);
  if (!v5)
  {
    sub_2313F17E0();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();
    return sub_2313F09B4(a1);
  }

  v6 = v4;
  v7 = v5;
  v38 = a1;
  sub_2314784E8();

  MEMORY[0x23192E060](v6, v7);

  *a1 = 0xD000000000000015;
  *(a1 + 8) = 0x8000000231483F30;
  strcpy((a1 + 16), "GetSuggestions");
  *(a1 + 31) = -18;
  result = sub_2314728A4(v2);
  if (result)
  {
    v9 = result;
    v36 = sub_231477DC8();
    v41 = sub_2313F3038(v9);
    for (i = 0; ; ++i)
    {
      while (1)
      {
        if (v41 == i)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v40 = *(v38 + 32);
          result = sub_2313F1184(v36, 0, 5, 0x6574656D61726170, 0xEA00000000007372, isUniquelyReferenced_nonNull_native);
          *(v38 + 32) = v40;
          return result;
        }

        if ((v9 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x23192E5D0](i, v9);
        }

        else
        {
          if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v11 = *(v9 + 8 * i + 32);
        }

        v12 = v11;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          result = sub_231478888();
          __break(1u);
          return result;
        }

        v13 = sub_231414BC8(v11, &selRef_key);
        if (v14)
        {
          break;
        }

LABEL_12:

        ++i;
      }

      v15 = v13;
      v16 = v14;
      v17 = sub_231414BC8(v12, &selRef_value);
      if (!v18)
      {

        goto LABEL_12;
      }

      v19 = v17;
      v20 = v18;
      swift_isUniquelyReferenced_nonNull_native();
      v39 = v36;
      v35 = sub_2313F0604();
      v21 = *(v36 + 16);
      v37 = v22;
      if (__OFADD__(v21, (v22 & 1) == 0))
      {
        goto LABEL_28;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD80, &qword_23147BB30);
      if (sub_2314785F8())
      {
        v35 = sub_2313F0604();
        if ((v37 & 1) != (v23 & 1))
        {
          goto LABEL_30;
        }

        if (v37)
        {
LABEL_17:

          v36 = v39;
          v24 = v39[7] + 24 * v35;
          v25 = *v24;
          v26 = *(v24 + 8);
          *v24 = v19;
          *(v24 + 8) = v20;
          v27 = *(v24 + 16);
          *(v24 + 16) = 3;
          sub_231403090(v25, v26, v27);

          continue;
        }
      }

      else if (v37)
      {
        goto LABEL_17;
      }

      v39[(v35 >> 6) + 8] |= 1 << v35;
      v28 = (v39[6] + 16 * v35);
      *v28 = v15;
      v28[1] = v16;
      v29 = v39[7] + 24 * v35;
      *v29 = v19;
      *(v29 + 8) = v20;
      *(v29 + 16) = 3;

      v30 = v39[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_29;
      }

      v36 = v39;
      v39[2] = v32;
    }
  }

  return result;
}

uint64_t sub_2314728A4(void *a1)
{
  v1 = [a1 parameters];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_231477AE8();
  v3 = sub_231478128();

  return v3;
}

void UserDonator.type.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = v2 >= 3;
  v4 = 0x30200u >> (8 * v2);
  if (v3)
  {
    LOBYTE(v4) = 1;
  }

  *a1 = v4;
}

uint64_t static UserDonator.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (!v3)
  {
    if (!v5)
    {
      sub_2313EADE8(*a1, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      if (v5 == 2)
      {
        sub_2313EADE8(*a1, 2uLL);
        v6 = v4;
        v7 = 2;
LABEL_18:
        sub_2313EADE8(v6, v7);
        return 1;
      }
    }

    else if (v5 >= 3)
    {
      v17 = *a1;
      if (v2 != v4 || v3 != v5)
      {
        v19 = sub_2314787C8();
        v20 = OUTLINED_FUNCTION_6_16();
        sub_2313E6C34(v20, v21);
        v22 = OUTLINED_FUNCTION_4_17();
        sub_2313E6C34(v22, v23);
        v24 = OUTLINED_FUNCTION_4_17();
        sub_2313EADE8(v24, v25);
        v26 = OUTLINED_FUNCTION_6_16();
        sub_2313EADE8(v26, v27);
        return v19 & 1;
      }

      sub_2313E6C34(v17, v3);
      v29 = OUTLINED_FUNCTION_4_17();
      sub_2313E6C34(v29, v30);
      v31 = OUTLINED_FUNCTION_4_17();
      sub_2313EADE8(v31, v32);
      v6 = OUTLINED_FUNCTION_4_17();
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (v5 != 1)
  {
LABEL_11:
    v9 = OUTLINED_FUNCTION_6_16();
    sub_2313E6C34(v9, v10);
    v11 = OUTLINED_FUNCTION_4_17();
    sub_2313E6C34(v11, v12);
    v13 = OUTLINED_FUNCTION_4_17();
    sub_2313EADE8(v13, v14);
    v15 = OUTLINED_FUNCTION_6_16();
    sub_2313EADE8(v15, v16);
    return 0;
  }

  v8 = 1;
  sub_2313EADE8(*a1, 1uLL);
  sub_2313EADE8(v4, 1uLL);
  return v8;
}

SiriRemembers::UserDonatorType_optional __swiftcall UserDonatorType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_231472A94(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7355646572616873 && a2 == 0xEC00000064497265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2314787C8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_231472B30(uint64_t a1)
{
  v2 = sub_2313F8AC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231472B6C(uint64_t a1)
{
  v2 = sub_2313F8AC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231472BA8(uint64_t a1)
{
  v2 = sub_2313F8E2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231472BE4(uint64_t a1)
{
  v2 = sub_2313F8E2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231472C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231472A94(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_231472C50(uint64_t a1)
{
  v2 = sub_231473224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231472C8C(uint64_t a1)
{
  v2 = sub_231473224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231472CC8(uint64_t a1)
{
  v2 = sub_231473278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231472D04(uint64_t a1)
{
  v2 = sub_231473278();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231472D40(uint64_t a1)
{
  v2 = sub_2314731D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231472D7C(uint64_t a1)
{
  v2 = sub_2314731D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserDonator.encode(to:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED18, &qword_231481280);
  OUTLINED_FUNCTION_4();
  v43 = v5;
  v44 = v4;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13();
  v42 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED20, &qword_231481288);
  OUTLINED_FUNCTION_4();
  v40 = v9;
  v41 = v8;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_13();
  v37 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED28, &qword_231481290);
  OUTLINED_FUNCTION_4();
  v38 = v13;
  v39 = v12;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED30, &qword_231481298);
  OUTLINED_FUNCTION_4();
  v36 = v18;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v19);
  v21 = &v35 - v20;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED38, &qword_2314812A0);
  OUTLINED_FUNCTION_4();
  v23 = v22;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v24);
  v26 = &v35 - v25;
  v27 = *v2;
  v28 = v2[1];
  v35 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2313F8AC4();
  sub_231478968();
  switch(v28)
  {
    case 0:
      v46[0] = 0;
      sub_231473278();
      OUTLINED_FUNCTION_5_21(&type metadata for UserDonator.UnknownCodingKeys, v46);
      (*(v36 + 8))(v21, v17);
      return (*(v23 + 8))(v26, v28);
    case 1:
      v47 = 2;
      sub_2314731D0();
      v29 = v37;
      OUTLINED_FUNCTION_5_21(&type metadata for UserDonator.UnrecognizedUserCodingKeys, &v47);
      v31 = v40;
      v30 = v41;
      goto LABEL_6;
    case 2:
      v48 = 3;
      sub_2313F8E2C();
      v29 = v42;
      OUTLINED_FUNCTION_5_21(&type metadata for UserDonator.DefaultUserCodingKeys, &v48);
      v31 = v43;
      v30 = v44;
LABEL_6:
      (*(v31 + 8))(v29, v30);
      return (*(v23 + 8))(v26, v28);
  }

  v46[1] = 1;
  sub_231473224();
  v33 = v45;
  sub_2314786F8();
  v34 = v39;
  sub_231478718();
  (*(v38 + 8))(v16, v34);
  return (*(v23 + 8))(v26, v33);
}

unint64_t sub_2314731D0()
{
  result = qword_27DD4ED50;
  if (!qword_27DD4ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ED50);
  }

  return result;
}

unint64_t sub_231473224()
{
  result = qword_27DD4ED58;
  if (!qword_27DD4ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ED58);
  }

  return result;
}

unint64_t sub_231473278()
{
  result = qword_27DD4ED60;
  if (!qword_27DD4ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ED60);
  }

  return result;
}

uint64_t sub_2314732F0@<X0>(uint64_t *a1@<X8>)
{
  result = UserDonatorType.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_2314733CC()
{
  result = qword_27DD4ED90;
  if (!qword_27DD4ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ED90);
  }

  return result;
}

uint64_t sub_231473420(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23147347C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UserDonator.RecognizedUserCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2314735BC()
{
  result = qword_27DD4ED98;
  if (!qword_27DD4ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ED98);
  }

  return result;
}

unint64_t sub_231473614()
{
  result = qword_27DD4EDA0;
  if (!qword_27DD4EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDA0);
  }

  return result;
}

unint64_t sub_23147366C()
{
  result = qword_27DD4EDA8;
  if (!qword_27DD4EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDA8);
  }

  return result;
}

unint64_t sub_2314736C4()
{
  result = qword_27DD4EDB0;
  if (!qword_27DD4EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDB0);
  }

  return result;
}

unint64_t sub_23147371C()
{
  result = qword_27DD4EDB8;
  if (!qword_27DD4EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDB8);
  }

  return result;
}

unint64_t sub_231473774()
{
  result = qword_27DD4EDC0;
  if (!qword_27DD4EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDC0);
  }

  return result;
}

unint64_t sub_2314737CC()
{
  result = qword_27DD4EDC8;
  if (!qword_27DD4EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDC8);
  }

  return result;
}

unint64_t sub_231473824()
{
  result = qword_27DD4EDD0;
  if (!qword_27DD4EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDD0);
  }

  return result;
}

unint64_t sub_23147387C()
{
  result = qword_27DD4EDD8;
  if (!qword_27DD4EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDD8);
  }

  return result;
}

unint64_t sub_2314738D4()
{
  result = qword_27DD4EDE0;
  if (!qword_27DD4EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDE0);
  }

  return result;
}

unint64_t sub_23147392C()
{
  result = qword_27DD4EDE8;
  if (!qword_27DD4EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDE8);
  }

  return result;
}

unint64_t sub_231473984()
{
  result = qword_27DD4EDF0;
  if (!qword_27DD4EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDF0);
  }

  return result;
}

unint64_t sub_2314739D8()
{
  result = qword_27DD4EDF8;
  if (!qword_27DD4EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDF8);
  }

  return result;
}

uint64_t sub_231473A2C()
{
  type metadata accessor for SiriRemembersDonationFromAppIntentsListener();
  swift_allocObject();
  result = sub_231473A68();
  qword_280C3C038 = result;
  return result;
}

uint64_t sub_231473A68()
{
  v1 = v0;
  v13[0] = sub_231478308();
  v2 = *(v13[0] - 8);
  MEMORY[0x28223BE20](v13[0]);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2314782F8();
  MEMORY[0x28223BE20](v5);
  v6 = sub_231477D08();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v8 = [v7 Intents];
  swift_unknownObjectRelease();
  v9 = [v8 Transcript];
  swift_unknownObjectRelease();
  *(v0 + 16) = v9;
  sub_23145C018();
  sub_231477CC8();
  v13[1] = MEMORY[0x277D84F90];
  sub_2313E6E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  sub_2313E6ED0();
  sub_231478498();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v13[0]);
  v10 = sub_231478338();
  v11 = objc_allocWithZone(MEMORY[0x277CF1918]);
  *(v1 + 24) = sub_2314747E4(0xD00000000000002DLL, 0x8000000231483FD0, v10);
  return v1;
}

void sub_231473D1C()
{
  v1 = v0;
  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_280C3CF50);
  }

  v2 = sub_231477B68();
  __swift_project_value_buffer(v2, qword_280C3D970);
  v3 = sub_231477B58();
  v4 = sub_2314782A8();
  if (os_log_type_enabled(v3, v4))
  {
    *OUTLINED_FUNCTION_102() = 0;
    OUTLINED_FUNCTION_8(&dword_2313E1000, v5, v6, "SiriRemembersDonationFromAppIntentsListener: listening on stream");
    OUTLINED_FUNCTION_16_2();
  }

  v7 = [*(v1 + 16) DSLPublisher];
  v8 = [v7 subscribeOn_];

  v16 = sub_231474A44;
  v17 = v1;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_23145EC44;
  v15 = &block_descriptor_8;
  v9 = _Block_copy(&v12);

  v16 = sub_231474A5C;
  v17 = v1;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_2314620E8;
  v15 = &block_descriptor_11;
  v10 = _Block_copy(&v12);

  v11 = [v8 sinkWithCompletion:v9 receiveInput:v10];
  _Block_release(v10);
  _Block_release(v9);
}

void sub_231473F38()
{
  v1 = v0;
  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_280C3CF50);
  }

  v2 = sub_231477B68();
  __swift_project_value_buffer(v2, qword_280C3D970);
  v3 = sub_231477B58();
  v4 = sub_2314782A8();
  if (os_log_type_enabled(v3, v4))
  {
    *OUTLINED_FUNCTION_102() = 0;
    OUTLINED_FUNCTION_8(&dword_2313E1000, v5, v6, "SiriRemembersDonationFromAppIntentsListener: no longer listening");
    OUTLINED_FUNCTION_16_2();
  }

  v7 = [*(v1 + 16) DSLPublisher];
  v8 = [v7 subscribeOn_];

  v16 = nullsub_1;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_23145EC44;
  v15 = &block_descriptor_7;
  v9 = _Block_copy(&v12);
  v16 = nullsub_1;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_2314620E8;
  v15 = &block_descriptor_5;
  v10 = _Block_copy(&v12);
  v11 = [v8 sinkWithCompletion:v9 receiveInput:v10];
  _Block_release(v10);
  _Block_release(v9);
  [v11 cancel];
}

void sub_231474134(void *a1)
{
  if ([a1 state])
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_280C3CF50);
    }

    v1 = sub_231477B68();
    __swift_project_value_buffer(v1, qword_280C3D970);
    oslog = sub_231477B58();
    v2 = sub_2314782A8();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = OUTLINED_FUNCTION_102();
      *v3 = 0;
      v4 = "SiriRemembersDonationFromAppIntentsListener: failed";
LABEL_10:
      _os_log_impl(&dword_2313E1000, oslog, v2, v4, v3, 2u);
      OUTLINED_FUNCTION_16_2();
    }
  }

  else
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_280C3CF50);
    }

    v5 = sub_231477B68();
    __swift_project_value_buffer(v5, qword_280C3D970);
    oslog = sub_231477B58();
    v2 = sub_2314782A8();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = OUTLINED_FUNCTION_102();
      *v3 = 0;
      v4 = "SiriRemembersDonationFromAppIntentsListener: successfully finished";
      goto LABEL_10;
    }
  }
}

void sub_231474278(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD40, &qword_23147B8C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v34 - v2;
  v4 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  swift_unknownObjectRetain();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10 && (v11 = [v10 eventBody]) != 0)
  {
    v12 = v11;
    sub_23142CD10();
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
    {
      sub_231474848(v3);
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_5(&qword_280C3CF50);
      }

      v13 = sub_231477B68();
      __swift_project_value_buffer(v13, qword_280C3D970);
      v14 = v12;
      v15 = sub_231477B58();
      v16 = sub_2314782A8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v35 = v18;
        *v17 = 136315138;
        v19 = [v14 resolvedAction];
        if (v19 && (v20 = sub_2314748B0(v19), v21))
        {
          v22 = v21;
        }

        else
        {

          v22 = 0xE700000000000000;
          v20 = 0x6E776F6E6B6E75;
        }

        v33 = sub_2313EB684(v20, v22, &v35);

        *(v17 + 4) = v33;
        _os_log_impl(&dword_2313E1000, v15, v16, "SiriRemembersDonationFromAppIntentsListener: ignored event: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_2();

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_231474920(v3, v9);
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_5(&qword_280C3CF50);
      }

      v23 = sub_231477B68();
      __swift_project_value_buffer(v23, qword_280C3D970);
      sub_231474984(v9, v7);
      v24 = sub_231477B58();
      v25 = sub_2314782A8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v35 = v27;
        *v26 = 136315138;
        sub_23142C86C();
        v29 = v28;
        v31 = v30;
        sub_2314749E8(v7);
        v32 = sub_2313EB684(v29, v31, &v35);

        *(v26 + 4) = v32;
        _os_log_impl(&dword_2313E1000, v24, v25, "SiriRemembersDonationFromAppIntentsListener: received event: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_2();

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        sub_2314749E8(v7);
      }

      sub_2314749E8(v9);
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_2314746EC(uint64_t (*a1)(void))
{
  if (qword_280C3C030 != -1)
  {
    swift_once();
  }

  return a1();
}

uint64_t SiriRemembersDonationFromAppIntentsListener.__deallocating_deinit()
{
  SiriRemembersDonationFromAppIntentsListener.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id sub_2314747E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_231477E58();

  v6 = [v3 initWithIdentifier:v5 targetQueue:a3];

  return v6;
}

uint64_t sub_231474848(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD40, &qword_23147B8C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314748B0(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231477E68();

  return v3;
}

uint64_t sub_231474920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231474984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314749E8(uint64_t a1)
{
  v2 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for UnwrapError(_BYTE *result, int a2, int a3)
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

unint64_t sub_231474B38(uint64_t a1)
{
  result = sub_23141F91C();
  *(a1 + 8) = result;
  return result;
}

BOOL sub_231474B60(uint64_t a1, uint64_t a2)
{
  v2 = sub_231478638();

  return v2 != 0;
}

BOOL sub_231474BB8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_231474B60(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_231474BEC(uint64_t a1@<X8>)
{
  strcpy(a1, "unwrappedNil");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

unint64_t sub_231474C14()
{
  result = qword_27DD4EE08;
  if (!qword_27DD4EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EE08);
  }

  return result;
}

uint64_t sub_231474C68()
{
  result = sub_231477F48();
  if (!result)
  {
    goto LABEL_4;
  }

  v1 = result;
  v2 = sub_231474DD4(result, 0);
  v3 = sub_231474D08(&v4, v2 + 4, v1, 0xD000000000000010, 0x8000000231484000);

  if (v3 != v1)
  {
    __break(1u);
LABEL_4:
    v2 = MEMORY[0x277D84F90];
  }

  off_280C3BEA0 = v2;
  return result;
}

uint64_t sub_231474D08(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
    v10 = 0;
LABEL_15:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v10;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      result = sub_231477FE8();
      if (!v12)
      {
        a4 = v13;
        a5 = v14;
        goto LABEL_14;
      }

      *v9 = result;
      v9[1] = v12;
      v9 += 2;
      ++v10;
      if (v11 == a3)
      {
        a4 = v13;
        a5 = v14;
        v10 = a3;
LABEL_14:
        v7 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_231474DD4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EE10, &unk_231481AB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void sub_231474E50(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1A8, &unk_23147FD20);
  OUTLINED_FUNCTION_14(v2);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_280C3CF50);
  }

  v6 = sub_231477B68();
  __swift_project_value_buffer(v6, qword_280C3D970);
  v7 = sub_231477B58();
  v8 = sub_231478298();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2313E1000, v7, v8, "Report unknown error to viewService", v9, 2u);
    OUTLINED_FUNCTION_16_2();
  }

  if (qword_280C3D380 != -1)
  {
    OUTLINED_FUNCTION_1_26(&qword_280C3D380);
  }

  os_unfair_lock_lock(dword_280C3D998);
  v10 = sub_2314779F8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);

  sub_231460178();
  os_unfair_lock_unlock(dword_280C3D998);
  sub_231477AC8();
  v11 = sub_231477A98();
  OUTLINED_FUNCTION_2_24();
  sub_231477AB8();

  if (a1)
  {
    v12 = a1;
    v13 = sub_231477B58();
    v14 = sub_2314782B8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_16_4();
      v16 = OUTLINED_FUNCTION_14_13();
      *v15 = 138412290;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      OUTLINED_FUNCTION_12_19(&dword_2313E1000, v19, v20, "Fail to report unknown error: %@");
      sub_2313E937C(v16, &qword_27DD4EAF0, &qword_23147B980);
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_2();
    }

    else
    {
    }
  }
}

void sub_2314750CC(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEC0, &qword_23147F580);
  OUTLINED_FUNCTION_14(v4);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v5);
  v7 = &v67 - v6;
  v8 = sub_231476CA8();
  OUTLINED_FUNCTION_4();
  v67 = v9;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v67 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1A8, &unk_23147FD20);
  v17 = OUTLINED_FUNCTION_14(v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v67 - v21;
  if (qword_280C3D380 != -1)
  {
    OUTLINED_FUNCTION_1_26(&qword_280C3D380);
  }

  os_unfair_lock_lock(dword_280C3D998);
  v68 = a1;
  sub_2314760F0(&qword_280C3D9A0, MEMORY[0x277D1F268], v22);
  os_unfair_lock_unlock(dword_280C3D998);
  v23 = sub_2314779F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v23);
  sub_2313E937C(v22, &qword_27DD4E1A8, &unk_23147FD20);
  if (EnumTagSinglePayload == 1)
  {
    if (qword_280C3CE68 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(dword_280C3D988);
    sub_2314760F0(&qword_280C3D990, MEMORY[0x277CC9578], v7);
    os_unfair_lock_unlock(dword_280C3D988);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      sub_2313E937C(v7, &qword_27DD4DEC0, &qword_23147F580);
      goto LABEL_30;
    }

    v36 = v67;
    (*(v67 + 32))(v15, v7, v8);
    sub_231476C98();
    v37 = sub_231476C08();
    v39 = *(v36 + 8);
    v38 = v36 + 8;
    v40 = v13;
    v41 = v39;
    v39(v40, v8);
    if ((v37 & 1) == 0)
    {
      v41(v15, v8);
LABEL_30:
      sub_231477AC8();
      v54 = sub_231477A98();
      os_unfair_lock_lock(dword_280C3D998);
      sub_231477A08();
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v23);

      sub_231460178();
      os_unfair_lock_unlock(dword_280C3D998);
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_5(&qword_280C3CF50);
      }

      v55 = sub_231477B68();
      OUTLINED_FUNCTION_11_18(v55, qword_280C3D970);
      v56 = sub_231477B58();
      v57 = sub_231478298();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = OUTLINED_FUNCTION_16_4();
        v59 = OUTLINED_FUNCTION_23_3();
        v69[0] = v59;
        *v58 = 136315138;
        OUTLINED_FUNCTION_8_23();
        v63 = v62 | 0x6C0000u;
        if (v60)
        {
          v64 = v63;
        }

        else
        {
          v64 = v61;
        }

        if (v60)
        {
          v65 = 0xE300000000000000;
        }

        else
        {
          v65 = a2;
        }

        v66 = sub_2313EB684(v64, v65, v69);

        *(v58 + 4) = v66;
        _os_log_impl(&dword_2313E1000, v56, v57, "Succeed to get siriRemembersView for accountId: %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_2();
      }

      return;
    }

    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_280C3CF50);
    }

    v42 = sub_231477B68();
    OUTLINED_FUNCTION_11_18(v42, qword_280C3D970);
    v43 = sub_231477B58();
    v44 = sub_231478298();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_16_4();
      v46 = OUTLINED_FUNCTION_23_3();
      v69[0] = v46;
      *v45 = 136315138;
      OUTLINED_FUNCTION_8_23();
      v49 = v48 | 0x6C0000u;
      v67 = v38;
      v50 = v41;
      if (v47)
      {
        v51 = v49;
      }

      else
      {
        v51 = v68;
      }

      if (v47)
      {
        v52 = 0xE300000000000000;
      }

      else
      {
        v52 = a2;
      }

      v53 = sub_2313EB684(v51, v52, v69);

      *(v45 + 4) = v53;
      _os_log_impl(&dword_2313E1000, v43, v44, "Skip to get siriRemembersView for %s since it is too close to request", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_2();

      v50(v15, v8);
    }

    else
    {

      v41(v15, v8);
    }
  }

  else
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_280C3CF50);
    }

    v25 = sub_231477B68();
    OUTLINED_FUNCTION_11_18(v25, qword_280C3D970);
    v26 = sub_231477B58();
    v27 = sub_231478298();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_16_4();
      v29 = OUTLINED_FUNCTION_23_3();
      v69[0] = v29;
      *v28 = 136315138;
      OUTLINED_FUNCTION_8_23();
      v32 = v31 | 0x6C0000u;
      if (v30)
      {
        v33 = v32;
      }

      else
      {
        v33 = v68;
      }

      if (v30)
      {
        v34 = 0xE300000000000000;
      }

      else
      {
        v34 = a2;
      }

      v35 = sub_2313EB684(v33, v34, v69);

      *(v28 + 4) = v35;
      _os_log_impl(&dword_2313E1000, v26, v27, "Skip to get siriRemembersView for %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_2();
    }
  }
}

void sub_23147596C(int a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1A8, &unk_23147FD20);
  OUTLINED_FUNCTION_14(v5);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_280C3CF50);
  }

  v9 = sub_231477B68();
  __swift_project_value_buffer(v9, qword_280C3D970);
  v10 = sub_231477B58();
  v11 = sub_231478298();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_14_13();
    *v12 = 67109120;
    *(v12 + 4) = a1;
    _os_log_impl(&dword_2313E1000, v10, v11, "Report SQLite error to viewService with %d", v12, 8u);
    OUTLINED_FUNCTION_16_2();
  }

  if (qword_280C3D380 != -1)
  {
    OUTLINED_FUNCTION_1_26(&qword_280C3D380);
  }

  os_unfair_lock_lock(dword_280C3D998);
  v13 = sub_2314779F8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v13);

  sub_231460178();
  os_unfair_lock_unlock(dword_280C3D998);
  sub_231477AC8();
  v14 = sub_231477A98();
  OUTLINED_FUNCTION_2_24();
  sub_231477AA8();

  if (a3)
  {
    v15 = a3;
    v16 = sub_231477B58();
    v17 = sub_2314782B8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_16_4();
      v19 = OUTLINED_FUNCTION_14_13();
      *v18 = 138412290;
      v20 = a3;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      OUTLINED_FUNCTION_12_19(&dword_2313E1000, v22, v23, "Fail to report SQLite error: %@");
      sub_2313E937C(v19, &qword_27DD4EAF0, &qword_23147B980);
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_2();
    }

    else
    {
    }
  }
}

uint64_t sub_231475BF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_2314779E8();
  OUTLINED_FUNCTION_4();
  v21 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EE18, &qword_231481B48);
  OUTLINED_FUNCTION_4();
  v23 = v8;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for IPInteractionWithEntity(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v11);
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231476428();
  sub_231478948();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = a1;
  v14 = v24;
  v28 = 0;
  *v13 = sub_2314786C8();
  v27 = 1;
  v13[1] = sub_231478688();
  v13[2] = v15;
  v19[1] = v15;
  v26 = 2;
  sub_23147647C(&qword_280C3C188, MEMORY[0x277D1F258], MEMORY[0x277D1F260]);
  sub_2314786B8();
  v16 = OUTLINED_FUNCTION_15_6();
  v17(v16);
  (*(v21 + 32))(v13 + *(v10 + 24), v7, v14);
  sub_2314764C4(v13, v22);
  __swift_destroy_boxed_opaque_existential_0(v20);
  return sub_231476528(v13);
}

uint64_t sub_231475F08(uint64_t a1)
{
  v2 = sub_231476428();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231475F44(uint64_t a1)
{
  v2 = sub_231476428();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231475F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23147647C(&qword_280C3C398, type metadata accessor for IPInteractionWithEntity, &unk_231481AD8);

  return MEMORY[0x282162858](a1, a2, a3, v6);
}

uint64_t sub_231476074(uint64_t a1, uint64_t (*a2)(void), _DWORD *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D640, &qword_23147FD10);
  a2(0);
  sub_2314613EC();
  result = sub_231477DC8();
  *a3 = 0;
  *a4 = result;
  return result;
}

uint64_t sub_2314760F0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_2313E7C04(), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = a2(0);
    OUTLINED_FUNCTION_3();
    (*(v11 + 16))(a3, v9 + *(v11 + 72) * v8, v10);
    v12 = a3;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = a2(0);
    v12 = a3;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

uint64_t sub_2314761C4()
{
  v0 = sub_231476CA8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEC0, &qword_23147F580);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;

  sub_231476C98();
  sub_231476BE8();
  (*(v1 + 8))(v3, v0);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v0);
  return sub_2314602E4();
}

uint64_t type metadata accessor for IPInteractionWithEntity(uint64_t a1)
{
  result = qword_280C3C388;
  if (!qword_280C3C388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2314763A4(uint64_t a1)
{
  result = sub_2314779E8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_231476428()
{
  result = qword_280C3C3B8[0];
  if (!qword_280C3C3B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C3C3B8);
  }

  return result;
}

uint64_t sub_23147647C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2314764C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IPInteractionWithEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231476528(uint64_t a1)
{
  v2 = type metadata accessor for IPInteractionWithEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for IPInteractionWithEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_231476664()
{
  result = qword_27DD4EE20;
  if (!qword_27DD4EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EE20);
  }

  return result;
}

unint64_t sub_2314766BC()
{
  result = qword_280C3C3A8;
  if (!qword_280C3C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C3A8);
  }

  return result;
}

unint64_t sub_231476714()
{
  result = qword_280C3C3B0;
  if (!qword_280C3C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C3B0);
  }

  return result;
}