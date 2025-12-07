uint64_t sub_270681768(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270681788(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_2706817D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2706817F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_270681838(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270681858(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2706818AC(uint64_t a1, id *a2)
{
  result = sub_2706E5A1C();
  *a2 = 0;
  return result;
}

uint64_t sub_270681924(uint64_t a1, id *a2)
{
  v3 = sub_2706E5A2C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2706819A4()
{
  sub_2706E5A3C();
  v0 = sub_2706E5A0C();

  return v0;
}

uint64_t sub_270681A80(uint64_t a1, uint64_t a2)
{
  sub_2706E65EC();
  swift_getWitnessTable();
  sub_2706E57EC();
  return sub_2706E660C();
}

uint64_t sub_270681B24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2706819A4();
  *a1 = result;
  return result;
}

uint64_t sub_270681B4C()
{
  v0 = sub_2706E5A3C();
  v1 = MEMORY[0x2743A5F30](v0);

  return v1;
}

uint64_t sub_270681B84(uint64_t a1, uint64_t a2)
{
  sub_2706E5A3C();
  sub_2706E5A6C();
}

uint64_t sub_270681C18(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FED10](v4, v5, a3, WitnessTable);
}

uint64_t sub_270681C90()
{
  v1 = OUTLINED_FUNCTION_0();
  result = sub_270691304(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_270681CB8(uint64_t a1)
{
  v2 = sub_2706821F4(&qword_28081C848, type metadata accessor for DocumentReadingOptionKey, &unk_2706E7DF0);
  v3 = sub_2706821F4(&qword_28081C850, type metadata accessor for DocumentReadingOptionKey, &unk_2706E7AD0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_270681D78()
{
  v1 = OUTLINED_FUNCTION_0();
  result = sub_270681DA0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_270681DA4(uint64_t a1)
{
  v2 = sub_2706821F4(&qword_28081C838, type metadata accessor for DocumentType, &unk_2706E7C28);
  v3 = sub_2706821F4(&qword_28081C840, type metadata accessor for DocumentType, &unk_2706E7BD0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_270681E60(uint64_t a1)
{
  v2 = sub_2706821F4(&qword_28081C828, type metadata accessor for DocumentAttributeKey, &unk_2706E7DB0);
  v3 = sub_2706821F4(&qword_28081C830, type metadata accessor for DocumentAttributeKey, &unk_2706E7D10);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_270681F1C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2706E5A0C();

  *a2 = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_270681FFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27068201C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_27068205C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2706820F0(uint64_t a1)
{
  v2 = sub_2706821F4(&qword_28081C858, type metadata accessor for FileAttributeKey, &unk_2706E7E30);
  v3 = sub_2706821F4(&unk_28081C860, type metadata accessor for FileAttributeKey, &unk_2706E79C4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2706821F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27068261C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2706825DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_270682648(uint64_t a1)
{
  v2 = sub_270688FDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270682684(uint64_t a1)
{
  v2 = sub_270688FDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706826C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65766968637261 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2706E631C();

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

uint64_t sub_270682790(char a1)
{
  if (a1)
  {
    return 0x65766968637261;
  }

  else
  {
    return 1635017060;
  }
}

void sub_270682808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60();
  v46 = v25;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CC28, &qword_2706E8D30);
  OUTLINED_FUNCTION_4();
  v44 = v29;
  v45 = v28;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_38();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CC30, &qword_2706E8D38);
  OUTLINED_FUNCTION_4();
  v32 = v31;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v33);
  v35 = &v43 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CC38, &qword_2706E8D40);
  OUTLINED_FUNCTION_4();
  v38 = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v39);
  v41 = &v43 - v40;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_270688F88();
  sub_2706E66AC();
  v42 = (v38 + 8);
  if (v46)
  {
    OUTLINED_FUNCTION_20();
    sub_270688FDC();
    OUTLINED_FUNCTION_35();
    sub_2706E608C();
    (*(v44 + 8))(v24, v45);
  }

  else
  {
    sub_270689030();
    OUTLINED_FUNCTION_35();
    sub_2706E608C();
    (*(v32 + 8))(v35, v43);
  }

  (*v42)(v41, v36);
  OUTLINED_FUNCTION_55();
}

void sub_270682A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_60();
  a22 = v24;
  a23 = v25;
  v65 = v23;
  v27 = v26;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CBF8, &qword_2706E8D18);
  OUTLINED_FUNCTION_4();
  v62 = v28;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CC00, &qword_2706E8D20);
  OUTLINED_FUNCTION_4();
  v61 = v31;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v32);
  v34 = &v58 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CC08, &qword_2706E8D28);
  OUTLINED_FUNCTION_4();
  v63 = v35;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_38();
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_270688F88();
  v37 = v65;
  sub_2706E668C();
  if (v37)
  {
    goto LABEL_8;
  }

  v59 = v30;
  v60 = v34;
  v65 = v27;
  v38 = sub_2706E606C();
  sub_2706974F8(v38, 0);
  if (v40 == v41 >> 1)
  {
LABEL_7:
    sub_2706E5E8C();
    swift_allocError();
    v48 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
    *v48 = &type metadata for PasteboardRepresentationFormat;
    v49 = sub_2706E600C();
    OUTLINED_FUNCTION_59(v49);
    OUTLINED_FUNCTION_16();
    (*(v50 + 104))(v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    v51 = OUTLINED_FUNCTION_29();
    v52(v51);
    v27 = v65;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_9:
    OUTLINED_FUNCTION_55();
    return;
  }

  v58 = 0;
  if (v40 < (v41 >> 1))
  {
    v42 = *(v39 + v40);
    sub_270698610(v40 + 1);
    v44 = v43;
    v46 = v45;
    swift_unknownObjectRelease();
    if (v44 == v46 >> 1)
    {
      if (v42)
      {
        LODWORD(v61) = v42;
        OUTLINED_FUNCTION_20();
        sub_270688FDC();
        OUTLINED_FUNCTION_49(&type metadata for PasteboardRepresentationFormat.ArchiveCodingKeys, &a13);
        swift_unknownObjectRelease();
        v54 = OUTLINED_FUNCTION_43();
        v55(v54);
      }

      else
      {
        a12 = 0;
        sub_270689030();
        v53 = v60;
        OUTLINED_FUNCTION_49(&type metadata for PasteboardRepresentationFormat.DataCodingKeys, &a12);
        swift_unknownObjectRelease();
        (*(v61 + 8))(v53, v59);
      }

      v56 = OUTLINED_FUNCTION_25();
      v57(v56);
      __swift_destroy_boxed_opaque_existential_1(v65);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_270682EE4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x80000002706EF4F0 == a2;
  if (v3 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000002706EF510 == a2;
    if (v6 || (sub_2706E631C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x80000002706EF530 == a2;
      if (v7 || (sub_2706E631C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001FLL && 0x80000002706EF550 == a2;
        if (v8 || (sub_2706E631C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001DLL && 0x80000002706EF570 == a2;
          if (v9 || (sub_2706E631C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001CLL && 0x80000002706EF590 == a2;
            if (v10 || (sub_2706E631C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000020 && 0x80000002706EF5B0 == a2;
              if (v11 || (sub_2706E631C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x80000002706EF5E0 == a2;
                if (v12 || (sub_2706E631C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000017 && 0x80000002706EF600 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_2706E631C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_2706831A4(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD000000000000020;
      break;
    case 7:
    case 8:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2706832B4()
{
  OUTLINED_FUNCTION_37();
  v1 = v1 && v0 == 0xE200000000000000;
  if (v1)
  {

    v3 = 0;
  }

  else
  {
    v2 = sub_2706E631C();

    v3 = v2 ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_270683344()
{
  sub_2706E65EC();
  MEMORY[0x2743A6A60](0);
  return sub_2706E660C();
}

uint64_t sub_270683388(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_2706833F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 12639 && a2 == 0xE200000000000000;
    if (v6 || (sub_2706E631C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 12895 && a2 == 0xE200000000000000;
      if (v7 || (sub_2706E631C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 13151 && a2 == 0xE200000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2706E631C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_270683534()
{
  OUTLINED_FUNCTION_37();
  v3 = v3 && v2 == 0xE200000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_15(12383) & 1) != 0))
  {

    return 0;
  }

  else if (v4 == 12639 && v0 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_15(12639);

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

uint64_t sub_2706835CC(char a1)
{
  sub_2706E65EC();
  MEMORY[0x2743A6A60](a1 & 1);
  return sub_2706E660C();
}

uint64_t sub_270683614()
{
  OUTLINED_FUNCTION_37();
  v3 = v3 && v2 == 0xE200000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_15(12383) & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = v4 == 12639 && v0 == 0xE200000000000000;
    if (v6 || (OUTLINED_FUNCTION_15(12639) & 1) != 0)
    {

      return 1;
    }

    else if (v4 == 12895 && v0 == 0xE200000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_15(12895);

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

uint64_t sub_2706836D8(unsigned __int8 a1)
{
  sub_2706E65EC();
  MEMORY[0x2743A6A60](a1);
  return sub_2706E660C();
}

void sub_270683720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v24;
  a20 = v25;
  v273 = v20;
  v274 = v21;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CB80, &qword_2706E8CC8);
  OUTLINED_FUNCTION_2(v28, &a16);
  v257[9] = v29;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CB88, &qword_2706E8CD0);
  OUTLINED_FUNCTION_2(v32, &a14);
  v257[8] = v33;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CB90, &qword_2706E8CD8);
  OUTLINED_FUNCTION_2(v36, &a10);
  v257[5] = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CB98, &qword_2706E8CE0);
  OUTLINED_FUNCTION_2(v40, &a12);
  v257[7] = v41;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CBA0, &qword_2706E8CE8);
  OUTLINED_FUNCTION_2(v44, &a11);
  v257[6] = v45;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CBA8, &qword_2706E8CF0);
  OUTLINED_FUNCTION_2(v48, v279);
  v257[4] = v49;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v51);
  v267 = type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_24();
  v271 = v53;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_17();
  v269 = v55;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_17();
  v265 = v57;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_17();
  v268 = v59;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_17();
  v270 = v61;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v62);
  v266 = v257 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CBB0, &qword_2706E8CF8);
  OUTLINED_FUNCTION_2(v64, &v277);
  v257[3] = v65;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CBB8, &qword_2706E8D00);
  OUTLINED_FUNCTION_2(v68, &v275);
  v257[2] = v69;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CBC0, &qword_2706E8D08);
  OUTLINED_FUNCTION_2(v72, &v273);
  v257[1] = v73;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26(v75);
  sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v275 = v76;
  v276 = v77;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_24();
  v261 = v78;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_17();
  v260 = v80;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_17();
  v258 = v82;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_17();
  v259 = v84;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_17();
  v262 = v86;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_17();
  v263 = v88;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_17();
  v264 = v90;
  OUTLINED_FUNCTION_14();
  v92 = MEMORY[0x28223BE20](v91);
  v94 = v257 - v93;
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_53();
  MEMORY[0x28223BE20](v95);
  v97 = v257 - v96;
  type metadata accessor for PasteboardMessage(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v98);
  v100 = v257 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CBC8, &qword_2706E8D10);
  OUTLINED_FUNCTION_4();
  v272 = v101;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_38();
  v103 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_270686948();
  v277 = v22;
  sub_2706E66AC();
  sub_270688CD4(v273, v100);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v167 = v275;
      v166 = v276;
      (*(v276 + 32))(v23, v100, v275);
      OUTLINED_FUNCTION_31_0();
      sub_270687690();
      v169 = v277;
      v168 = v278;
      sub_2706E608C();
      OUTLINED_FUNCTION_0_0();
      sub_270688DEC(v170, v171, MEMORY[0x277CC95F8]);
      sub_2706E60DC();
      OUTLINED_FUNCTION_11();
      v172 = OUTLINED_FUNCTION_43();
      v173(v172);
      (*(v166 + 8))(v23, v167);
      OUTLINED_FUNCTION_18();
      v139 = v169;
      v140 = v168;
      goto LABEL_27;
    case 2u:
      v273 = *&v100[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CA18, &qword_2706E7F40) + 48)];
      v132 = v275;
      v131 = v276;
      (*(v276 + 32))(v94, v100, v275);
      LOBYTE(v279[0]) = 2;
      sub_27068763C();
      v133 = v257[14];
      OUTLINED_FUNCTION_56(&type metadata for PasteboardMessage.PasteboardDataSessionErrorCodingKeys);
      LOBYTE(v279[0]) = 0;
      OUTLINED_FUNCTION_0_0();
      sub_270688DEC(v134, v135, MEMORY[0x277CC95F8]);
      OUTLINED_FUNCTION_19();
      v136 = v257[15];
      v137 = v274;
      sub_2706E60DC();
      if (!v137)
      {
        v279[0] = v273;
        OUTLINED_FUNCTION_20();
        sub_270688E34();
        sub_2706E60DC();
        OUTLINED_FUNCTION_11();
        v213(v133, v136);
        v214 = OUTLINED_FUNCTION_43();
        v215(v214);
        OUTLINED_FUNCTION_18();
        v216 = OUTLINED_FUNCTION_51();
        v217(v216);
        v218 = v273;
        goto LABEL_30;
      }

      sub_270688D9C(v273);
      OUTLINED_FUNCTION_11();
      v138(v133, v136);
      (*(v131 + 8))(v94, v132);
LABEL_7:
      OUTLINED_FUNCTION_18();
      v139 = OUTLINED_FUNCTION_51();
      goto LABEL_27;
    case 3u:
      v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CA08, &qword_2706E7F38);
      v143 = *(v142 + 48);
      v144 = *(v142 + 64);
      v146 = v275;
      v145 = v276;
      v147 = *(v276 + 32);
      v147(v264, v100, v275);
      v147(v263, &v100[v143], v146);
      OUTLINED_FUNCTION_3();
      sub_270688D38(&v100[v144], v266, v148);
      LOBYTE(v279[0]) = 3;
      sub_2706875E8();
      v150 = v277;
      v149 = v278;
      sub_2706E608C();
      LOBYTE(v279[0]) = 0;
      OUTLINED_FUNCTION_0_0();
      sub_270688DEC(v151, v152, MEMORY[0x277CC95F8]);
      OUTLINED_FUNCTION_54();
      v153 = v274;
      sub_2706E60DC();
      if (v153)
      {
        OUTLINED_FUNCTION_11();
        v154 = OUTLINED_FUNCTION_29();
        v155(v154);
        sub_270687394(v266);
        v156 = *(v145 + 8);
        v156(v263, v146);
        v156(v264, v146);
        OUTLINED_FUNCTION_18();
        v139 = v150;
        v140 = v149;
      }

      else
      {
        v219 = v145;
        OUTLINED_FUNCTION_31_0();
        v220 = v263;
        OUTLINED_FUNCTION_54();
        sub_2706E60DC();
        LOBYTE(v279[0]) = 2;
        OUTLINED_FUNCTION_1();
        sub_270688DEC(v236, v237, &unk_2706ED794);
        OUTLINED_FUNCTION_19();
        v238 = v266;
        sub_2706E60DC();
        v239 = v264;
        OUTLINED_FUNCTION_11();
        v240 = OUTLINED_FUNCTION_29();
        v241(v240);
        sub_270687394(v238);
        v242 = *(v219 + 8);
        v242(v220, v146);
        v242(v239, v146);
        OUTLINED_FUNCTION_18();
        v139 = v277;
        v140 = v278;
      }

      goto LABEL_27;
    case 4u:
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9F0, &qword_2706E7F30);
      v115 = v114[12];
      LODWORD(v273) = v100[v114[16]];
      v116 = &v100[v114[20]];
      v271 = *v116;
      LODWORD(v269) = v116[8];
      v118 = v275;
      v117 = v276;
      v119 = v262;
      v120 = OUTLINED_FUNCTION_41();
      v121(v120);
      OUTLINED_FUNCTION_3();
      sub_270688D38(&v100[v115], v270, v122);
      LOBYTE(v279[0]) = 4;
      sub_270687540();
      v124 = v277;
      v123 = v278;
      sub_2706E608C();
      LOBYTE(v279[0]) = 0;
      OUTLINED_FUNCTION_0_0();
      sub_270688DEC(v125, v126, MEMORY[0x277CC95F8]);
      OUTLINED_FUNCTION_19();
      v127 = v257[22];
      v128 = v274;
      sub_2706E60DC();
      if (v128)
      {
        OUTLINED_FUNCTION_11();
        v129 = OUTLINED_FUNCTION_51();
        v130(v129);
        sub_270687394(v270);
        (*(v117 + 8))(v119, v118);
      }

      else
      {
        v210 = v273;
        OUTLINED_FUNCTION_31_0();
        OUTLINED_FUNCTION_1();
        sub_270688DEC(v211, v212, &unk_2706ED794);
        OUTLINED_FUNCTION_19();
        sub_2706E60DC();
        LOBYTE(v279[0]) = v210;
        OUTLINED_FUNCTION_21();
        sub_270688F34();
        OUTLINED_FUNCTION_27();
        sub_2706E60DC();
        v234 = v127;
        v235 = v117;
        LOBYTE(v279[0]) = 3;
        sub_2706E60AC();
        v253 = v270;
        v254 = v262;
        v255 = OUTLINED_FUNCTION_7();
        v256(v255, v234);
        sub_270687394(v253);
        (*(v235 + 8))(v254, v118);
      }

      OUTLINED_FUNCTION_18();
      v139 = v124;
      v140 = v123;
      goto LABEL_27;
    case 5u:
      v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9D8, &qword_2706E7F28);
      v175 = *(v174 + 48);
      v176 = &v100[*(v174 + 64)];
      v178 = *v176;
      v177 = v176[1];
      v273 = v178;
      v271 = v177;
      v180 = v275;
      v179 = v276;
      v181 = v259;
      (*(v276 + 32))(v259, v100, v275);
      OUTLINED_FUNCTION_3();
      sub_270688D38(&v100[v175], v268, v182);
      LOBYTE(v279[0]) = 5;
      sub_270687498();
      v184 = v277;
      v183 = v278;
      sub_2706E608C();
      LOBYTE(v279[0]) = 0;
      OUTLINED_FUNCTION_0_0();
      sub_270688DEC(v185, v186, MEMORY[0x277CC95F8]);
      OUTLINED_FUNCTION_19();
      v187 = v274;
      sub_2706E60DC();
      if (v187)
      {
        sub_270688E88(v273, v271);
        OUTLINED_FUNCTION_11();
        v188 = OUTLINED_FUNCTION_41();
        v189(v188);
        sub_270687394(v268);
        (*(v179 + 8))(v181, v180);
        OUTLINED_FUNCTION_18();
        v139 = v184;
        v140 = v183;
        goto LABEL_27;
      }

      v224 = v273;
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_1();
      sub_270688DEC(v225, v226, &unk_2706ED794);
      OUTLINED_FUNCTION_19();
      sub_2706E60DC();
      v279[0] = v224;
      v245 = v271;
      v279[1] = v271;
      OUTLINED_FUNCTION_21();
      sub_270688EE0();
      OUTLINED_FUNCTION_27();
      sub_2706E60DC();
      OUTLINED_FUNCTION_11();
      v246 = OUTLINED_FUNCTION_41();
      v247(v246);
      sub_270687394(v268);
      (*(v179 + 8))(v259, v180);
      OUTLINED_FUNCTION_18();
      v248(v184, v183);
      sub_270688E88(v273, v245);
      goto LABEL_31;
    case 6u:
      v190 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9C8, &qword_2706E7F20) + 48);
      v191 = v275;
      v192 = v276;
      v193 = v258;
      (*(v276 + 32))(v258, v100, v275);
      OUTLINED_FUNCTION_3();
      sub_270688D38(&v100[v190], v265, v194);
      LOBYTE(v279[0]) = 6;
      sub_270687444();
      v195 = v277;
      v196 = v278;
      sub_2706E608C();
      LOBYTE(v279[0]) = 0;
      OUTLINED_FUNCTION_0_0();
      sub_270688DEC(v197, v198, MEMORY[0x277CC95F8]);
      OUTLINED_FUNCTION_19();
      v199 = v274;
      sub_2706E60DC();
      if (v199)
      {
        OUTLINED_FUNCTION_11();
        v200 = OUTLINED_FUNCTION_43();
        v201(v200);
        sub_270687394(v265);
        (*(v192 + 8))(v193, v191);
        OUTLINED_FUNCTION_18();
        v202(v195, v196);
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_1();
      sub_270688DEC(v227, v228, &unk_2706ED794);
      OUTLINED_FUNCTION_19();
      v229 = v265;
      sub_2706E60DC();
      OUTLINED_FUNCTION_11();
      v230 = OUTLINED_FUNCTION_43();
      v231(v230);
      sub_270687394(v229);
      (*(v192 + 8))(v258, v191);
      OUTLINED_FUNCTION_18();
      v139 = v195;
      v140 = v196;
      goto LABEL_27;
    case 7u:
      v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9A0, &qword_2706E7F18);
      OUTLINED_FUNCTION_30(v157);
      v158 = v260;
      v159(v260, v100, v22);
      OUTLINED_FUNCTION_3();
      sub_270688D38(v103 + v100, v269, v160);
      LOBYTE(v279[0]) = 7;
      sub_2706873F0();
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_35();
      sub_2706E608C();
      LOBYTE(v279[0]) = 0;
      OUTLINED_FUNCTION_0_0();
      sub_270688DEC(v161, v162, MEMORY[0x277CC95F8]);
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_50(v158);
      if (v21)
      {
        sub_270688D9C(v273);
        v163 = OUTLINED_FUNCTION_5();
        v164(v163);
        v165 = v269;
        goto LABEL_19;
      }

      v221 = v273;
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_1();
      sub_270688DEC(v222, v223, &unk_2706ED794);
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_58(v269);
      v279[0] = v221;
      OUTLINED_FUNCTION_21();
      sub_270688E34();
      OUTLINED_FUNCTION_27();
      sub_2706E60DC();
      v243 = OUTLINED_FUNCTION_5();
      v244(v243);
      sub_270687394(v269);
      (*(v97 + 1))(v260, v22);
      goto LABEL_29;
    case 8u:
      v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9A0, &qword_2706E7F18);
      OUTLINED_FUNCTION_30(v203);
      v158 = v261;
      v204(v261, v100, v22);
      OUTLINED_FUNCTION_3();
      sub_270688D38(v103 + v100, v271, v205);
      LOBYTE(v279[0]) = 8;
      sub_2706872EC();
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_35();
      sub_2706E608C();
      LOBYTE(v279[0]) = 0;
      OUTLINED_FUNCTION_0_0();
      sub_270688DEC(v206, v207, MEMORY[0x277CC95F8]);
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_50(v158);
      if (v21)
      {
        sub_270688D9C(v273);
        v208 = OUTLINED_FUNCTION_5();
        v209(v208);
        v165 = v271;
LABEL_19:
        sub_270687394(v165);
        (*(v97 + 1))(v158, v22);
        OUTLINED_FUNCTION_18();
        v139 = OUTLINED_FUNCTION_44();
LABEL_27:
        v141(v139, v140);
      }

      else
      {
        v221 = v273;
        OUTLINED_FUNCTION_31_0();
        OUTLINED_FUNCTION_1();
        sub_270688DEC(v232, v233, &unk_2706ED794);
        OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_58(v271);
        v279[0] = v221;
        OUTLINED_FUNCTION_21();
        sub_270688E34();
        OUTLINED_FUNCTION_27();
        sub_2706E60DC();
        v249 = OUTLINED_FUNCTION_5();
        v250(v249);
        sub_270687394(v271);
        (*(v97 + 1))(v261, v22);
LABEL_29:
        OUTLINED_FUNCTION_18();
        v251 = OUTLINED_FUNCTION_44();
        v252(v251);
        v218 = v221;
LABEL_30:
        sub_270688D9C(v218);
      }

LABEL_31:
      OUTLINED_FUNCTION_55();
      return;
    default:
      v105 = v275;
      v104 = v276;
      v106 = OUTLINED_FUNCTION_41();
      v107(v106);
      LOBYTE(v279[0]) = 0;
      sub_2706876E4();
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_56(v108);
      OUTLINED_FUNCTION_0_0();
      sub_270688DEC(v109, v110, MEMORY[0x277CC95F8]);
      v111 = v257[11];
      sub_2706E60DC();
      v112 = OUTLINED_FUNCTION_6();
      v113(v112, v111);
      (*(v104 + 8))(v97, v105);
      goto LABEL_7;
  }
}

void sub_270684F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v22;
  a20 = v23;
  v239 = v20;
  v25 = v24;
  v231 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C930, &qword_2706E7EC0);
  OUTLINED_FUNCTION_2(v27, &a16);
  v216 = v28;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_13();
  v230 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C938, &qword_2706E7EC8);
  OUTLINED_FUNCTION_2(v31, &a14);
  v215 = v32;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_13();
  v229 = v34;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C940, &qword_2706E7ED0);
  OUTLINED_FUNCTION_4();
  v232 = v35;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_13();
  v227 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C948, &qword_2706E7ED8);
  OUTLINED_FUNCTION_2(v38, &a11);
  v213 = v39;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_13();
  v228 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C950, &qword_2706E7EE0);
  OUTLINED_FUNCTION_2(v42, &a9);
  v214 = v43;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_13();
  v234 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C958, &qword_2706E7EE8);
  OUTLINED_FUNCTION_2(v46, &v240);
  v212 = v47;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_13();
  v226 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C960, &qword_2706E7EF0);
  OUTLINED_FUNCTION_2(v50, &v238);
  v210 = v51;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_13();
  v225 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C968, &qword_2706E7EF8);
  OUTLINED_FUNCTION_2(v54, &v236);
  v209 = v55;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_13();
  v224 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C970, &qword_2706E7F00);
  OUTLINED_FUNCTION_2(v58, &v234);
  v208 = v59;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_13();
  v223 = v61;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C978, &qword_2706E7F08);
  OUTLINED_FUNCTION_4();
  v233 = v62;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v63);
  v65 = &v202 - v64;
  v235 = type metadata accessor for PasteboardMessage(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_24();
  v221 = v67;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_17();
  v220 = v69;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_17();
  v218 = v71;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_17();
  v219 = v73;
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_17();
  v217 = v75;
  OUTLINED_FUNCTION_14();
  v77 = MEMORY[0x28223BE20](v76);
  v79 = &v202 - v78;
  v80 = MEMORY[0x28223BE20](v77);
  v82 = &v202 - v81;
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_53();
  v84 = MEMORY[0x28223BE20](v83);
  v86 = &v202 - v85;
  MEMORY[0x28223BE20](v84);
  v88 = &v202 - v87;
  v89 = v25[3];
  v238 = v25;
  __swift_project_boxed_opaque_existential_1(v25, v89);
  sub_270686948();
  v236 = v65;
  v90 = v239;
  sub_2706E668C();
  if (v90)
  {
    goto LABEL_10;
  }

  v204 = v21;
  v205 = v86;
  v239 = v82;
  v206 = v79;
  v207 = v88;
  v92 = v236;
  v91 = v237;
  v93 = sub_2706E606C();
  v94 = sub_270698614(v93, 0);
  v98 = v94;
  if (v96 != v97 >> 1)
  {
    v102 = v95;
    v203 = 0;
    v103 = v97 >> 1;
    v101 = v235;
    if (v96 >= (v97 >> 1))
    {
      __break(1u);
LABEL_26:
      v194 = v94;
      v195 = v103;
      swift_unknownObjectRelease();
      v196 = v217;
      v197 = v217 + *(v98 + 80);
      v198 = OUTLINED_FUNCTION_9();
      v199(v198, v89);
      v200 = OUTLINED_FUNCTION_34();
      v201(v200);
      *v197 = v194;
      *(v197 + 8) = v195 & 1;
      swift_storeEnumTagMultiPayload();
      v152 = v196;
LABEL_22:
      v150 = v238;
      v151 = v231;
    }

    else
    {
      v202 = *(v102 + v96);
      v104 = sub_270698610(v96 + 1);
      v106 = v105;
      v108 = v107;
      swift_unknownObjectRelease();
      v109 = v104;
      v110 = v232;
      if (v106 != v108 >> 1)
      {
        v99 = v92;
        v100 = v91;
        goto LABEL_9;
      }

      v89 = v203;
      switch(v202)
      {
        case 1:
          OUTLINED_FUNCTION_20();
          sub_270687690();
          OUTLINED_FUNCTION_10(&type metadata for PasteboardMessage.PasteboardDataSessionEndCodingKeys, &a10 + 7);
          sub_2706E576C();
          OUTLINED_FUNCTION_0_0();
          sub_270688DEC(v130, v131, MEMORY[0x277CC9618]);
          v142 = v204;
          sub_2706E605C();
          swift_unknownObjectRelease();
          v153 = OUTLINED_FUNCTION_5();
          v154(v153);
          v155 = OUTLINED_FUNCTION_28();
          v156(v155);
          goto LABEL_20;
        case 2:
          OUTLINED_FUNCTION_21();
          sub_27068763C();
          OUTLINED_FUNCTION_10(&type metadata for PasteboardMessage.PasteboardDataSessionErrorCodingKeys, &a10 + 7);
          sub_2706E576C();
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_0_0();
          sub_270688DEC(v122, v123, MEMORY[0x277CC9618]);
          OUTLINED_FUNCTION_36();
          v124 = v211;
          OUTLINED_FUNCTION_42();
          sub_2706E605C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CA18, &qword_2706E7F40);
          OUTLINED_FUNCTION_20();
          sub_270687340();
          v142 = v239;
          sub_2706E605C();
          swift_unknownObjectRelease();
          v165 = OUTLINED_FUNCTION_7();
          v166(v165, v124);
          v167 = OUTLINED_FUNCTION_28();
          v168(v167);
LABEL_20:
          swift_storeEnumTagMultiPayload();
          v152 = v142;
          goto LABEL_22;
        case 3:
          HIBYTE(a10) = 3;
          sub_2706875E8();
          OUTLINED_FUNCTION_10(&type metadata for PasteboardMessage.PasteboardRepresentationRequestCodingKeys, &a10 + 7);
          sub_2706E576C();
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_0_0();
          sub_270688DEC(v125, v126, MEMORY[0x277CC9618]);
          OUTLINED_FUNCTION_40();
          OUTLINED_FUNCTION_23();
          sub_2706E605C();
          v239 = v109;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CA08, &qword_2706E7F38);
          OUTLINED_FUNCTION_20();
          sub_2706E605C();
          type metadata accessor for PasteboardDataTransferID(0);
          OUTLINED_FUNCTION_21();
          OUTLINED_FUNCTION_1();
          sub_270688DEC(v169, v170, &unk_2706ED7BC);
          sub_2706E605C();
          swift_unknownObjectRelease();
          v177 = OUTLINED_FUNCTION_7();
          v178(v177, v89);
          v179 = OUTLINED_FUNCTION_34();
          v180(v179);
          goto LABEL_21;
        case 4:
          HIBYTE(a10) = 4;
          sub_270687540();
          OUTLINED_FUNCTION_10(&type metadata for PasteboardMessage.PasteboardRepresentationBeginCodingKeys, &a10 + 7);
          sub_2706E576C();
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_0_0();
          sub_270688DEC(v120, v121, MEMORY[0x277CC9618]);
          OUTLINED_FUNCTION_36();
          OUTLINED_FUNCTION_40();
          OUTLINED_FUNCTION_23();
          OUTLINED_FUNCTION_42();
          sub_2706E605C();
          v239 = v109;
          v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9F0, &qword_2706E7F30);
          type metadata accessor for PasteboardDataTransferID(0);
          OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_1();
          sub_270688DEC(v140, v141, &unk_2706ED7BC);
          OUTLINED_FUNCTION_42();
          sub_2706E605C();
          OUTLINED_FUNCTION_21();
          sub_270687594();
          OUTLINED_FUNCTION_35();
          OUTLINED_FUNCTION_42();
          sub_2706E605C();
          HIBYTE(a10) = 3;
          OUTLINED_FUNCTION_42();
          v94 = sub_2706E602C();
          goto LABEL_26;
        case 5:
          HIBYTE(a10) = 5;
          sub_270687498();
          OUTLINED_FUNCTION_10(&type metadata for PasteboardMessage.PasteboardRepresentationDataCodingKeys, &a10 + 7);
          sub_2706E576C();
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_0_0();
          sub_270688DEC(v132, v133, MEMORY[0x277CC9618]);
          OUTLINED_FUNCTION_36();
          OUTLINED_FUNCTION_23();
          sub_2706E605C();
          v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9D8, &qword_2706E7F28);
          v157 = *(v239 + 48);
          type metadata accessor for PasteboardDataTransferID(0);
          OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_1();
          sub_270688DEC(v158, v159, &unk_2706ED7BC);
          sub_2706E605C();
          v234 = v157;
          OUTLINED_FUNCTION_21();
          sub_2706874EC();
          v110 = v219;
          OUTLINED_FUNCTION_35();
          sub_2706E605C();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_11();
          v185 = OUTLINED_FUNCTION_44();
          v186(v185);
          v187 = OUTLINED_FUNCTION_22();
          v188(v187);
LABEL_21:
          swift_storeEnumTagMultiPayload();
          v152 = v110;
          goto LABEL_22;
        case 6:
          HIBYTE(a10) = 6;
          sub_270687444();
          OUTLINED_FUNCTION_10(&type metadata for PasteboardMessage.PasteboardRepresentationFinishedCodingKeys, &a10 + 7);
          sub_2706E576C();
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_0_0();
          sub_270688DEC(v134, v135, MEMORY[0x277CC9618]);
          OUTLINED_FUNCTION_36();
          sub_2706E605C();
          v136 = v233;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9C8, &qword_2706E7F20);
          type metadata accessor for PasteboardDataTransferID(0);
          OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_1();
          sub_270688DEC(v160, v161, &unk_2706ED7BC);
          sub_2706E605C();
          swift_unknownObjectRelease();
          v173 = OUTLINED_FUNCTION_39();
          v174(v173);
          (*(v136 + 8))(v236, v237);
          v175 = v218;
          swift_storeEnumTagMultiPayload();
          v152 = v175;
          goto LABEL_22;
        case 7:
          HIBYTE(a10) = 7;
          sub_2706873F0();
          OUTLINED_FUNCTION_10(&type metadata for PasteboardMessage.PasteboardReceiverErrorCodingKeys, &a10 + 7);
          v239 = v109;
          sub_2706E576C();
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_0_0();
          sub_270688DEC(v127, v128, MEMORY[0x277CC9618]);
          OUTLINED_FUNCTION_36();
          v129 = v220;
          OUTLINED_FUNCTION_45(v91);
          v151 = v231;
          v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9A0, &qword_2706E7F18);
          OUTLINED_FUNCTION_57(v143);
          OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_1();
          sub_270688DEC(v144, v145, &unk_2706ED7BC);
          OUTLINED_FUNCTION_33();
          v232 = v129;
          OUTLINED_FUNCTION_21();
          sub_270687340();
          v171 = v220;
          OUTLINED_FUNCTION_47(&type metadata for PasteboardAcquisitionError);
          v172 = v171;
          swift_unknownObjectRelease();
          v181 = OUTLINED_FUNCTION_6();
          v182(v181, v101);
          v183 = OUTLINED_FUNCTION_22();
          v184(v183);
          goto LABEL_24;
        case 8:
          HIBYTE(a10) = 8;
          sub_2706872EC();
          OUTLINED_FUNCTION_10(&type metadata for PasteboardMessage.PasteboardProviderErrorCodingKeys, &a10 + 7);
          v239 = v109;
          sub_2706E576C();
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_0_0();
          sub_270688DEC(v137, v138, MEMORY[0x277CC9618]);
          OUTLINED_FUNCTION_36();
          v139 = v221;
          OUTLINED_FUNCTION_45(v91);
          v151 = v231;
          v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9A0, &qword_2706E7F18);
          OUTLINED_FUNCTION_57(v162);
          OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_1();
          sub_270688DEC(v163, v164, &unk_2706ED7BC);
          OUTLINED_FUNCTION_33();
          v232 = v139;
          OUTLINED_FUNCTION_21();
          sub_270687340();
          v176 = v221;
          OUTLINED_FUNCTION_47(&type metadata for PasteboardAcquisitionError);
          v172 = v176;
          swift_unknownObjectRelease();
          v190 = OUTLINED_FUNCTION_6();
          v191(v190, v101);
          v192 = OUTLINED_FUNCTION_22();
          v193(v192);
LABEL_24:
          swift_storeEnumTagMultiPayload();
          v152 = v172;
          v150 = v238;
          break;
        default:
          HIBYTE(a10) = 0;
          sub_2706876E4();
          OUTLINED_FUNCTION_10(&type metadata for PasteboardMessage.PasteboardDataSessionBeginCodingKeys, &a10 + 7);
          sub_2706E576C();
          OUTLINED_FUNCTION_0_0();
          sub_270688DEC(v111, v112, MEMORY[0x277CC9618]);
          v113 = v205;
          OUTLINED_FUNCTION_23();
          sub_2706E605C();
          swift_unknownObjectRelease();
          v146 = OUTLINED_FUNCTION_6();
          v147(v146, v89);
          OUTLINED_FUNCTION_52();
          v148 = OUTLINED_FUNCTION_28();
          v149(v148);
          swift_storeEnumTagMultiPayload();
          v150 = v238;
          v151 = v231;
          v152 = v113;
          break;
      }
    }

    v189 = v207;
    sub_270688D38(v152, v207, type metadata accessor for PasteboardMessage);
    sub_270688D38(v189, v151, type metadata accessor for PasteboardMessage);
    v119 = v150;
    goto LABEL_11;
  }

  v99 = v92;
  v100 = v91;
  v101 = v235;
LABEL_9:
  sub_2706E5E8C();
  swift_allocError();
  v115 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10);
  *v115 = v101;
  v116 = sub_2706E600C();
  OUTLINED_FUNCTION_59(v116);
  OUTLINED_FUNCTION_8();
  (*(v117 + 104))(v115);
  swift_willThrow();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_52();
  v118(v99, v100);
LABEL_10:
  v119 = v238;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v119);
  OUTLINED_FUNCTION_55();
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

uint64_t type metadata accessor for PasteboardMessage(uint64_t a1)
{
  result = qword_28081CA30;
  if (!qword_28081CA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_270686948()
{
  result = qword_28081C980;
  if (!qword_28081C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081C980);
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

uint64_t sub_2706869F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706826C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270686A38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270682788();
  *a1 = result;
  return result;
}

uint64_t sub_270686A60(uint64_t a1)
{
  v2 = sub_270688F88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270686A9C(uint64_t a1)
{
  v2 = sub_270688F88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270686AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706827E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_270686B04(uint64_t a1)
{
  v2 = sub_270689030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270686B40(uint64_t a1)
{
  v2 = sub_270689030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270686BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270682EE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270686C04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27068319C();
  *a1 = result;
  return result;
}

uint64_t sub_270686C2C(uint64_t a1)
{
  v2 = sub_270686948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270686C68(uint64_t a1)
{
  v2 = sub_270686948();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270686CAC(uint64_t a1)
{
  v2 = sub_2706876E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270686CE8(uint64_t a1)
{
  v2 = sub_2706876E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270686D44()
{
  sub_2706E65EC();
  MEMORY[0x2743A6A60](0);
  return sub_2706E660C();
}

uint64_t sub_270686D84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2706832B4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_270686DB0(uint64_t a1)
{
  v2 = sub_270687690();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270686DEC(uint64_t a1)
{
  v2 = sub_270687690();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270686E30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270683534();
  *a1 = result;
  return result;
}

uint64_t sub_270686E58(uint64_t a1)
{
  v2 = sub_27068763C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270686E94(uint64_t a1)
{
  v2 = sub_27068763C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270686F08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270683614();
  *a1 = result;
  return result;
}

uint64_t sub_270686F30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2706833A0();
  *a1 = result;
  return result;
}

uint64_t sub_270686F58(uint64_t a1)
{
  v2 = sub_2706872EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270686F94(uint64_t a1)
{
  v2 = sub_2706872EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270686FD0(uint64_t a1)
{
  v2 = sub_2706873F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27068700C(uint64_t a1)
{
  v2 = sub_2706873F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270687048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706833F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270687070@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27068352C();
  *a1 = result;
  return result;
}

uint64_t sub_270687098(uint64_t a1)
{
  v2 = sub_270687540();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706870D4(uint64_t a1)
{
  v2 = sub_270687540();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270687110(uint64_t a1)
{
  v2 = sub_270687498();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27068714C(uint64_t a1)
{
  v2 = sub_270687498();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270687188()
{
  v1 = *v0;
  sub_2706E65EC();
  MEMORY[0x2743A6A60](v1);
  return sub_2706E660C();
}

uint64_t sub_2706871CC(uint64_t a1)
{
  v2 = sub_270687444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270687208(uint64_t a1)
{
  v2 = sub_270687444();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270687244(uint64_t a1)
{
  v2 = sub_2706875E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270687280(uint64_t a1)
{
  v2 = sub_2706875E8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2706872EC()
{
  result = qword_28081C990;
  if (!qword_28081C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081C990);
  }

  return result;
}

unint64_t sub_270687340()
{
  result = qword_28081C9B0;
  if (!qword_28081C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081C9B0);
  }

  return result;
}

uint64_t sub_270687394(uint64_t a1)
{
  v2 = type metadata accessor for PasteboardDataTransferID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2706873F0()
{
  result = qword_28081C9B8;
  if (!qword_28081C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081C9B8);
  }

  return result;
}

unint64_t sub_270687444()
{
  result = qword_28081C9C0;
  if (!qword_28081C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081C9C0);
  }

  return result;
}

unint64_t sub_270687498()
{
  result = qword_28081C9D0;
  if (!qword_28081C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081C9D0);
  }

  return result;
}

unint64_t sub_2706874EC()
{
  result = qword_28081C9E0;
  if (!qword_28081C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081C9E0);
  }

  return result;
}

unint64_t sub_270687540()
{
  result = qword_28081C9E8;
  if (!qword_28081C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081C9E8);
  }

  return result;
}

unint64_t sub_270687594()
{
  result = qword_28081C9F8;
  if (!qword_28081C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081C9F8);
  }

  return result;
}

unint64_t sub_2706875E8()
{
  result = qword_28081CA00;
  if (!qword_28081CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CA00);
  }

  return result;
}

unint64_t sub_27068763C()
{
  result = qword_28081CA10;
  if (!qword_28081CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CA10);
  }

  return result;
}

unint64_t sub_270687690()
{
  result = qword_28081CA20;
  if (!qword_28081CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CA20);
  }

  return result;
}

unint64_t sub_2706876E4()
{
  result = qword_28081CA28;
  if (!qword_28081CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CA28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PasteboardMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for PasteboardMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270687898);
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

uint64_t sub_2706878F4(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_48(a1);
}

_BYTE *sub_270687944(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2706879E0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PasteboardMessage.PasteboardRepresentationBeginCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for PasteboardMessage.PasteboardRepresentationBeginCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270687BA8);
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

uint64_t getEnumTagSinglePayload for ArchiveTransferDestination.State(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_270687CA0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270687D68);
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
          result = OUTLINED_FUNCTION_46(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

void sub_270687E08(uint64_t a1)
{
  sub_2706E576C();
  if (v1 <= 0x3F)
  {
    sub_270687F00(319);
    if (v2 <= 0x3F)
    {
      sub_270687F68(319);
      if (v3 <= 0x3F)
      {
        sub_270687FDC(319);
        if (v4 <= 0x3F)
        {
          sub_270688130(319, &qword_28081CA60, MEMORY[0x277CC9318]);
          if (v5 <= 0x3F)
          {
            sub_2706880C0(319);
            if (v6 <= 0x3F)
            {
              sub_270688130(319, &qword_28081CA70, &type metadata for PasteboardAcquisitionError);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_270687F00(uint64_t a1)
{
  if (!qword_28081CA40)
  {
    sub_2706E576C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28081CA40);
    }
  }
}

void sub_270687F68(uint64_t a1)
{
  if (!qword_28081CA48)
  {
    sub_2706E576C();
    type metadata accessor for PasteboardDataTransferID(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_28081CA48);
    }
  }
}

void sub_270687FDC(uint64_t a1)
{
  if (!qword_28081CA50)
  {
    sub_2706E576C();
    type metadata accessor for PasteboardDataTransferID(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081CA58, &qword_2706E8148);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_28081CA50);
    }
  }
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

void sub_2706880C0(uint64_t a1)
{
  if (!qword_28081CA68)
  {
    sub_2706E576C();
    type metadata accessor for PasteboardDataTransferID(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28081CA68);
    }
  }
}

void sub_270688130(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_2706E576C();
    type metadata accessor for PasteboardDataTransferID(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t sub_2706881A8(uint64_t a1)
{
  *(a1 + 8) = sub_270688DEC(&qword_28081CA78, type metadata accessor for PasteboardMessage, &unk_2706E8150);
  result = sub_270688DEC(&qword_28081CA80, type metadata accessor for PasteboardMessage, &unk_2706E8C9C);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_270688230()
{
  result = qword_28081CA88;
  if (!qword_28081CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CA88);
  }

  return result;
}

unint64_t sub_270688288()
{
  result = qword_28081CA90;
  if (!qword_28081CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CA90);
  }

  return result;
}

unint64_t sub_2706882E0()
{
  result = qword_28081CA98;
  if (!qword_28081CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CA98);
  }

  return result;
}

unint64_t sub_270688338()
{
  result = qword_28081CAA0;
  if (!qword_28081CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAA0);
  }

  return result;
}

unint64_t sub_270688390()
{
  result = qword_28081CAA8;
  if (!qword_28081CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAA8);
  }

  return result;
}

unint64_t sub_2706883E8()
{
  result = qword_28081CAB0;
  if (!qword_28081CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAB0);
  }

  return result;
}

unint64_t sub_270688440()
{
  result = qword_28081CAB8;
  if (!qword_28081CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAB8);
  }

  return result;
}

unint64_t sub_270688498()
{
  result = qword_28081CAC0;
  if (!qword_28081CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAC0);
  }

  return result;
}

unint64_t sub_2706884F0()
{
  result = qword_28081CAC8;
  if (!qword_28081CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAC8);
  }

  return result;
}

unint64_t sub_270688548()
{
  result = qword_28081CAD0;
  if (!qword_28081CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAD0);
  }

  return result;
}

unint64_t sub_2706885A0()
{
  result = qword_28081CAD8;
  if (!qword_28081CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAD8);
  }

  return result;
}

unint64_t sub_2706885F8()
{
  result = qword_28081CAE0;
  if (!qword_28081CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAE0);
  }

  return result;
}

unint64_t sub_270688650()
{
  result = qword_28081CAE8;
  if (!qword_28081CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAE8);
  }

  return result;
}

unint64_t sub_2706886A8()
{
  result = qword_28081CAF0;
  if (!qword_28081CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAF0);
  }

  return result;
}

unint64_t sub_270688700()
{
  result = qword_28081CAF8;
  if (!qword_28081CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CAF8);
  }

  return result;
}

unint64_t sub_270688758()
{
  result = qword_28081CB00;
  if (!qword_28081CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB00);
  }

  return result;
}

unint64_t sub_2706887B0()
{
  result = qword_28081CB08;
  if (!qword_28081CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB08);
  }

  return result;
}

unint64_t sub_270688808()
{
  result = qword_28081CB10;
  if (!qword_28081CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB10);
  }

  return result;
}

unint64_t sub_270688860()
{
  result = qword_28081CB18;
  if (!qword_28081CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB18);
  }

  return result;
}

unint64_t sub_2706888B8()
{
  result = qword_28081CB20;
  if (!qword_28081CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB20);
  }

  return result;
}

unint64_t sub_270688910()
{
  result = qword_28081CB28;
  if (!qword_28081CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB28);
  }

  return result;
}

unint64_t sub_270688968()
{
  result = qword_28081CB30;
  if (!qword_28081CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB30);
  }

  return result;
}

unint64_t sub_2706889C0()
{
  result = qword_28081CB38;
  if (!qword_28081CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB38);
  }

  return result;
}

unint64_t sub_270688A18()
{
  result = qword_28081CB40;
  if (!qword_28081CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB40);
  }

  return result;
}

unint64_t sub_270688A70()
{
  result = qword_28081CB48;
  if (!qword_28081CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB48);
  }

  return result;
}

unint64_t sub_270688AC8()
{
  result = qword_28081CB50;
  if (!qword_28081CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB50);
  }

  return result;
}

unint64_t sub_270688B20()
{
  result = qword_28081CB58;
  if (!qword_28081CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB58);
  }

  return result;
}

unint64_t sub_270688B78()
{
  result = qword_28081CB60;
  if (!qword_28081CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB60);
  }

  return result;
}

unint64_t sub_270688BD0()
{
  result = qword_28081CB68;
  if (!qword_28081CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB68);
  }

  return result;
}

unint64_t sub_270688C28()
{
  result = qword_28081CB70;
  if (!qword_28081CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB70);
  }

  return result;
}

unint64_t sub_270688C80()
{
  result = qword_28081CB78;
  if (!qword_28081CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CB78);
  }

  return result;
}

uint64_t sub_270688CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasteboardMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270688D38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_16();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_270688D9C(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270688DEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_270688E34()
{
  result = qword_28081CBE0;
  if (!qword_28081CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CBE0);
  }

  return result;
}

uint64_t sub_270688E88(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_270688EE0()
{
  result = qword_28081CBE8;
  if (!qword_28081CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CBE8);
  }

  return result;
}

unint64_t sub_270688F34()
{
  result = qword_28081CBF0;
  if (!qword_28081CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CBF0);
  }

  return result;
}

unint64_t sub_270688F88()
{
  result = qword_28081CC10;
  if (!qword_28081CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CC10);
  }

  return result;
}

unint64_t sub_270688FDC()
{
  result = qword_28081CC18;
  if (!qword_28081CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CC18);
  }

  return result;
}

unint64_t sub_270689030()
{
  result = qword_28081CC20;
  if (!qword_28081CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CC20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DragPresentationUpdate.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_27068910C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706891D4);
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
          result = OUTLINED_FUNCTION_46(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_270689230()
{
  result = qword_28081CC40;
  if (!qword_28081CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CC40);
  }

  return result;
}

unint64_t sub_270689288()
{
  result = qword_28081CC48;
  if (!qword_28081CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CC48);
  }

  return result;
}

unint64_t sub_2706892E0()
{
  result = qword_28081CC50;
  if (!qword_28081CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CC50);
  }

  return result;
}

unint64_t sub_270689338()
{
  result = qword_28081CC58;
  if (!qword_28081CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CC58);
  }

  return result;
}

unint64_t sub_270689390()
{
  result = qword_28081CC60;
  if (!qword_28081CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CC60);
  }

  return result;
}

unint64_t sub_2706893E8()
{
  result = qword_28081CC68;
  if (!qword_28081CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CC68);
  }

  return result;
}

unint64_t sub_270689440()
{
  result = qword_28081CC70;
  if (!qword_28081CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CC70);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1, uint64_t a2)
{

  return sub_2706E5FFC();
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1)
{

  return sub_2706E631C();
}

uint64_t OUTLINED_FUNCTION_33()
{

  return sub_2706E605C();
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1)
{

  return sub_2706E605C();
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1)
{

  return sub_2706E605C();
}

uint64_t OUTLINED_FUNCTION_49(uint64_t a1, uint64_t a2)
{

  return sub_2706E5FFC();
}

uint64_t OUTLINED_FUNCTION_50(uint64_t a1)
{

  return sub_2706E60DC();
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1)
{

  return sub_2706E608C();
}

uint64_t OUTLINED_FUNCTION_57(uint64_t a1)
{
  *(v1 - 136) = a1;

  return type metadata accessor for PasteboardDataTransferID(0);
}

uint64_t OUTLINED_FUNCTION_58(uint64_t a1)
{

  return sub_2706E60DC();
}

uint64_t OUTLINED_FUNCTION_59(uint64_t a1)
{

  return sub_2706E5E6C();
}

uint64_t sub_270689978()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_privateDragPresentation;
  v3 = *&v0[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_privateDragPresentation];
  if (!v3)
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectUnownedLoadStrong();
    v10[3] = ObjectType;
    v10[4] = &off_28806B728;
    v10[0] = v1;
    v5 = v1;
    sub_2706E2540(&v11);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v10);
    v6 = v11;
    v7 = *&v5[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_druidSessionProxy];
    if (v7)
    {
      v10[0] = v11;
      v8 = v7;
      v3 = sub_270689A8C(v10);

      sub_27068F6CC(v6);
    }

    else
    {
      sub_27068F6CC(v11);
      v3 = 0;
    }

    *&v1[v2] = v3;
  }

  return v3;
}

uint64_t sub_270689A8C(void **a1)
{
  v5 = sub_2706E576C();
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  v9 = *a1;
  v58 = MEMORY[0x277D84F90];
  v10 = sub_270690978(v1);
  if (!sub_270690A3C(v1))
  {

    v16 = 0;
    v49 = MEMORY[0x277D84F90];
    goto LABEL_45;
  }

  v11 = sub_2706C2200();

  if ((v11 & 0x8000000000000000) == 0)
  {
    if (!v11)
    {

      v49 = MEMORY[0x277D84F90];
      goto LABEL_44;
    }

    v53 = v9;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      v54 = v13;
      v16 = v12;
      v12 = v14;
      while (1)
      {
        if (v12 >= v11)
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          v49 = v58;

          v16 = v12;
          goto LABEL_45;
        }

        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_47;
        }

        if (v10)
        {
          v17 = objc_allocWithZone(MEMORY[0x277CCABB0]);

          v18 = [v17 initWithInteger_];
          v19 = v18;
          if ((v10 & 0xC000000000000001) != 0)
          {
            if (!sub_2706E5F7C())
            {
              goto LABEL_17;
            }

            sub_270690D44(0, &qword_28081CEB0, 0x277D75EF0);
            swift_dynamicCast();
            v20 = v57;
          }

          else
          {
            if (!*(v10 + 16) || (v21 = sub_27068F720(v18), (v22 & 1) == 0))
            {
LABEL_17:

              goto LABEL_18;
            }

            v20 = *(*(v10 + 56) + 8 * v21);
          }

          if (v20)
          {
            break;
          }
        }

LABEL_18:
        type metadata accessor for DragPresentationItem();
        swift_allocObject();
        sub_2706A7994(v15, 0, 0.0, 0.0, 0.0, 0.0);

        MEMORY[0x2743A5F60](v23);
        OUTLINED_FUNCTION_30_0();
        if (v25)
        {
          OUTLINED_FUNCTION_28_0(v24);
          sub_2706E5B2C();
        }

        sub_2706E5B4C();

        ++v12;
        if (v14 == v11)
        {
          v49 = v58;

          if (v54)
          {
LABEL_45:
            sub_2706E575C();
            LOBYTE(v57) = 0;
            type metadata accessor for DragPresentation(0);
            swift_allocObject();
            return sub_270694FE0(v8, v49, v16, &v57);
          }

LABEL_44:
          v16 = v11 - 1;
          goto LABEL_45;
        }
      }

      [v20 previewScaledSize];
      OUTLINED_FUNCTION_26_0();
      type metadata accessor for CGImage(0);
      v55 = sub_2706E59AC();
      v26 = 0;
      if (v53 != 1)
      {
        v27 = objc_allocWithZone(MEMORY[0x277D75F00]);
        v28 = v53;
        v26 = [v27 init];
        [v26 setWindowSceneForSnapshotting_];
        sub_27068F6CC(v53);
      }

      v52 = v26;
      v29 = [v20 previewImageWithSnapshotSettings_];
      if (v29)
      {
        v30 = v29;
        v31 = [v29 CGImage];

        if (v31)
        {
          v51 = v31;
          swift_isUniquelyReferenced_nonNull_native();
          v57 = v55;
          v32 = sub_27068F6DC(0);
          v56 = v33;
          if (__OFADD__(v57[2], (v33 & 1) == 0))
          {
            goto LABEL_50;
          }

          v34 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CEA8, &qword_2706E9138);
          if (sub_2706E5F5C())
          {
            v35 = sub_27068F6DC(0);
            v37 = v56;
            if ((v56 & 1) != (v36 & 1))
            {
              goto LABEL_52;
            }

            v34 = v35;
            v38 = v51;
          }

          else
          {
            v38 = v51;
            v37 = v56;
          }

          v55 = v57;
          if (v37)
          {
            v39 = v57[7];
            v40 = *(v39 + 8 * v34);
            *(v39 + 8 * v34) = v38;

            v38 = v40;
          }

          else
          {
            v57[(v34 >> 6) + 8] |= 1 << v34;
            *(v55[6] + 8 * v34) = 0;
            *(v55[7] + 8 * v34) = v38;
            v41 = v55[2];
            v42 = __OFADD__(v41, 1);
            v43 = v41 + 1;
            if (v42)
            {
              goto LABEL_51;
            }

            v55[2] = v43;
          }
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CEA0, &qword_2706E9130);
      v44 = swift_allocObject();
      v45 = OUTLINED_FUNCTION_23_0(v44, xmmword_2706E8FC0);
      v45[2].n128_u64[0] = v46;
      v45[2].n128_u64[1] = 0xEB00000000776569;
      v45[3].n128_u64[0] = 0;
      v45[3].n128_u64[1] = 0;
      v45[4].n128_f64[0] = v2;
      v45[4].n128_f64[1] = v3;
      [v20 previewScaledSize];
      OUTLINED_FUNCTION_26_0();
      type metadata accessor for DragPresentationItem();
      swift_allocObject();
      sub_2706A7994(v44, v55, v2, v3, 0.0, 0.0);

      MEMORY[0x2743A5F60](v47);
      OUTLINED_FUNCTION_30_0();
      if (v25)
      {
        OUTLINED_FUNCTION_28_0(v48);
        sub_2706E5B2C();
      }

      sub_2706E5B4C();

      v13 = 1;
      if (v14 == v11)
      {
        goto LABEL_48;
      }
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_2706E652C();
  __break(1u);
  return result;
}

void sub_27068A0A4()
{
  v1 = v0;
  v2 = sub_2706E58BC();
  v3 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_7_0(v3))
  {
    v4 = OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_20_0(v4);
    OUTLINED_FUNCTION_5_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_8_0();
  }

  v10 = OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_druidSessionProxy;
  v11 = *(v1 + OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_druidSessionProxy);
  if (v11)
  {
    [v11 requestDrop];
    v12 = *(v1 + v10);
    if (v12)
    {
      [v12 sawDragEndEvent];
    }
  }

  sub_2706DD768();
}

uint64_t sub_27068A294(uint64_t a1)
{
  result = sub_2706E58DC();
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

void sub_27068A354(uint64_t a1, void (*a2)(unint64_t, uint64_t), void (*a3)(unint64_t, uint64_t))
{
  v4 = v3;
  v7 = sub_2706E58BC();
  v8 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_13_0(v8))
  {
    *OUTLINED_FUNCTION_15_0() = 0;
    OUTLINED_FUNCTION_29_0();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_12_0();
  }

  v14 = (v4 + OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_pasteboardCompletion);
  if (*(v4 + OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_pasteboardCompletion))
  {
    sub_2706E5F8C();
    __break(1u);
  }

  else
  {
    v15 = *(v4 + OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_druidSessionProxy);
    if (v15)
    {
      v35 = v15;
      v16 = sub_2706E58BC();
      v17 = sub_2706E5C1C();
      if (OUTLINED_FUNCTION_7_0(v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 67109120;
        v18[1] = [v35 sessionIdentifier];
        OUTLINED_FUNCTION_5_0();
        _os_log_impl(v19, v20, v21, v22, v23, 8u);
        OUTLINED_FUNCTION_8_0();
      }

      v24 = *v14;
      v25 = v14[1];
      *v14 = a2;
      v14[1] = a3;
      sub_27068F6BC(v24, v25);

      [v35 requestDrop];
      [v35 sawDragEndEvent];
      [v35 performOffscreenDrop];
    }

    else
    {
      v26 = sub_2706E58BC();
      v27 = sub_2706E5C1C();
      if (OUTLINED_FUNCTION_7_0(v27))
      {
        v28 = OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_20_0(v28);
        OUTLINED_FUNCTION_5_0();
        _os_log_impl(v29, v30, v31, v32, v33, 2u);
        OUTLINED_FUNCTION_8_0();
      }

      type metadata accessor for Completion();
      swift_allocObject();
      v34 = sub_2706DD84C();
      a2(0xC000000000000000, v34);
    }
  }
}

void sub_27068A654()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  ObjectType = swift_getObjectType();
  type metadata accessor for DragForwardingCoordinator.Event(0);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  swift_unknownObjectUnownedLoadStrong();
  v39[3] = ObjectType;
  v39[4] = &off_28806B728;
  v39[0] = v1;
  v35 = v1;
  sub_2706E2540(&v37);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v39);
  v9 = v37;
  v10 = sub_2706CAFB4(v3);
  if (!v10)
  {
    v15 = 0;
    goto LABEL_15;
  }

  v11 = v10;
  v34 = v8;
  v12 = sub_2706C2200();
  if (!v12)
  {

    v15 = MEMORY[0x277D84F90];
LABEL_14:
    v8 = v34;
LABEL_15:
    v21 = [v3 badgeUpdate];
    if (v21)
    {
      v22 = v21;
      v23 = sub_2706E58BC();
      v24 = sub_2706E5BEC();
      if (OUTLINED_FUNCTION_13_0(v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134217984;
        *(v25 + 4) = [v22 badgeStyle];

        OUTLINED_FUNCTION_29_0();
        _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
        OUTLINED_FUNCTION_12_0();
      }

      else
      {

        v23 = v22;
      }

      sub_27068AA48(&v37);
      v31 = v37;
      if (v15)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v31 = 5;
      if (v15)
      {
        goto LABEL_24;
      }
    }

    if (v31 == 5)
    {
      sub_27068F6CC(v9);
LABEL_27:
      OUTLINED_FUNCTION_16_0();
      return;
    }

LABEL_24:
    if (*&v35[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_privateDragPresentation])
    {
      v37 = v15;
      v38 = v31;

      sub_270695100(&v37);
    }

    swift_unknownObjectUnownedLoadStrong();
    *v8 = v15;
    *(v8 + 8) = v31;
    swift_storeEnumTagMultiPayload();

    sub_2706E05C8(v8);
    sub_27068F6CC(v9);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_9_0();
    sub_27069126C(v8, v32);
    goto LABEL_27;
  }

  v13 = v12;
  v37 = MEMORY[0x277D84F90];
  sub_2706BF8A4(0, v12 & ~(v12 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v33 = v3;
    v14 = 0;
    v15 = v37;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2743A62C0](v14, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v14 + 32);
      }

      v17 = v16;
      v36 = v9;
      sub_27068A9C0(&v36, v39);

      v37 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        v20 = OUTLINED_FUNCTION_28_0(v18);
        sub_2706BF8A4(v20, v19 + 1, 1);
        v15 = v37;
      }

      ++v14;
      *(v15 + 16) = v19 + 1;
      memcpy((v15 + 72 * v19 + 32), v39, 0x48uLL);
    }

    while (v13 != v14);

    goto LABEL_14;
  }

  __break(1u);
}

void *sub_27068A9C0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = [v2 preview];
  v7 = v4;
  sub_27068ED74([v2 index], &v7, __src);

  return memcpy(a2, __src, 0x48uLL);
}

id sub_27068AA48@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  result = [v2 badgeStyle];
  if (result >= 3)
  {
    sub_2706E5E3C();
    MEMORY[0x2743A5EF0](0xD000000000000015, 0x80000002706EFAC0);
    [v2 badgeStyle];
    type metadata accessor for _UIDragMonitorSessionBadgeStyle(0);
    sub_2706E5F2C();
    result = OUTLINED_FUNCTION_33_0("Fatal error", v5, v6, 0, 0xE000000000000000, "UniversalDrag/DragPlatformProvider_iOS.swift", v7, v8, 530, 0);
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

void sub_27068ABA8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_pasteboardCompletion);
  if (v3)
  {
    v5 = *(v2 + OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_pasteboardCompletion + 8);

    sub_270698A58(a2);
    type metadata accessor for Completion();
    swift_allocObject();
    v6 = sub_2706DD8C4(0xD000000000000060, 0x80000002706EF8B0, 152, nullsub_1, 0);
    v3(0xF000000000000007, v6);

    sub_27068F6BC(v3, v5);
  }

  else
  {
    oslog = sub_2706E58BC();
    v7 = sub_2706E5C1C();
    if (os_log_type_enabled(oslog, v7))
    {
      *OUTLINED_FUNCTION_15_0() = 0;
      OUTLINED_FUNCTION_31_1(&dword_270680000, v8, v9, "druid: drop completing with no outstanding pasteboard collection completion", v10, v11, v12, v13, v14, oslog);
      OUTLINED_FUNCTION_12_0();
    }
  }
}

void sub_27068AD9C(uint64_t a1, char a2)
{
  v3 = v2;
  type metadata accessor for DragForwardingCoordinator.Event(0);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = (v7 - v6);
  v9 = sub_2706E58BC();
  v10 = sub_2706E5BEC();
  if (OUTLINED_FUNCTION_13_0(v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a2 & 1;
    _os_log_impl(&dword_270680000, v9, v10, "dragMonitorSession didConcludeDragNormally %{BOOL}d", v11, 8u);
    OUTLINED_FUNCTION_12_0();
  }

  v12 = *(v3 + OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_druidSessionProxy);
  *(v3 + OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_druidSessionProxy) = 0;

  swift_unknownObjectUnownedLoadStrong();
  if (a2)
  {
    OUTLINED_FUNCTION_34_0();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_2706E05C8(v8);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_9_0();
    sub_27069126C(v8, v14);
    OUTLINED_FUNCTION_34_0();
  }
}

id sub_27068AF78(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_window] = 0;
  *&v1[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_relaySession] = 0;
  *&v1[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_dragItems] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_didBeginCompletion] = 0;
  *&v1[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_pasteboardDataSession] = 0;
  v1[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_hasSeenPreviewsFromOtherSources] = 0;
  if (qword_28081C730 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_28081C730);
  }

  v4 = sub_2706E58DC();
  v5 = __swift_project_value_buffer(v4, qword_2808292D8);
  (*(*(v4 - 8) + 16))(&v1[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_logger], v5, v4);
  *&v1[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_coordinator] = a1;
  swift_unownedRetainStrong();
  v6 = *(a1 + 32);
  swift_unownedRetain();

  *&v1[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_pasteboardController] = v6;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

void sub_27068B0D4()
{
  OUTLINED_FUNCTION_21_0();
  if (v5 != 1.0)
  {
    v48 = "tion should be nil";
    LODWORD(v52) = 0;
    v51 = 187;
    v49 = 0xD00000000000003BLL;
    goto LABEL_22;
  }

  v6 = v0;
  v7 = v2;
  v8 = v1;
  v56 = OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_logger;
  v9 = sub_2706E58BC();
  v10 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_7_0(v10))
  {
    v11 = OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_20_0(v11);
    OUTLINED_FUNCTION_5_0();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_8_0();
  }

  v17 = MEMORY[0x277D84F90];
  sub_2706E577C();
  v18 = *(v6 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_coordinator);
  swift_unownedRetainStrong();
  type metadata accessor for PasteboardDataSession(0);
  swift_allocObject();

  sub_2706CD600();
  v20 = v19;
  *(v6 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_pasteboardDataSession) = v19;

  sub_2706923C4(v8, v20);
  v21 = *(v8 + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_items);
  v22 = sub_2706C2200();
  if (v22)
  {
    v23 = v22;
    v57[0] = v17;
    sub_2706E5EFC();
    if (v23 < 0)
    {
      __break(1u);
LABEL_20:
      v48 = "repare local drag";
      LODWORD(v52) = 0;
      v51 = 211;
      v49 = 0xD000000000000025;
LABEL_22:
      OUTLINED_FUNCTION_33_0("Fatal error", v1, v2, v49, v48 | 0x8000000000000000, "UniversalDrag/DragPlatformProvider_iOS.swift", v3, v4, v51, v52);
      __break(1u);
      return;
    }

    v53 = v18;
    v54 = v6;
    v55 = v7;
    v24 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x2743A62C0](v24, v21);
      }

      else
      {
        v25 = *(v21 + 8 * v24 + 32);
      }

      ++v24;
      v26 = objc_allocWithZone(type metadata accessor for PasteboardItemProvider_iOS());

      v28 = sub_2706A12A0(v27);
      v29 = sub_2706A1318(v25);
      [objc_allocWithZone(MEMORY[0x277D75470]) initWithItemProvider_];

      sub_2706E5EDC();
      sub_2706E5F0C();
      sub_2706E5F1C();
      sub_2706E5EEC();
    }

    while (v23 != v24);
    v17 = v57[0];
    v6 = v54;
    v7 = v55;
  }

  sub_270690D44(0, &qword_28081CEE8, 0x277D75F08);

  v31 = sub_27068B668(v30);
  v32 = OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_relaySession;
  v33 = *(v6 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_relaySession);
  *(v6 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_relaySession) = v31;

  v34 = *(v6 + v32);
  if (v34)
  {
    [v34 setDelegate_];
  }

  v35 = OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_dragItems;
  swift_beginAccess();
  *(v6 + v35) = v17;

  swift_unownedRetainStrong();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    goto LABEL_20;
  }

  v37 = swift_unownedRetainStrong();
  v38 = sub_2706C7E5C(v37);
  swift_unknownObjectRelease();

  if (!v38)
  {
    goto LABEL_20;
  }

  v39 = sub_2706E58BC();
  v40 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_13_0(v40))
  {
    v41 = OUTLINED_FUNCTION_15_0();
    *v41 = 0;
    _os_log_impl(&dword_270680000, v39, v40, "surrogate: create shield window", v41, 2u);
    OUTLINED_FUNCTION_12_0();
  }

  v42 = [objc_allocWithZone(MEMORY[0x277D75DA0]) initWithWindowScene_];
  v43 = *(v6 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_window);
  *(v6 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_window) = v42;
  v44 = v42;

  [v44 setWindowLevel_];
  OUTLINED_FUNCTION_19_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_19_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = objc_allocWithZone(type metadata accessor for ShieldViewController());

  sub_27068D614(sub_270690AF0);
  v47 = v46;
  v51 = v44;
  v52 = MEMORY[0x28223BE20](v46);

  sub_27068BC58(sub_270690B04, &v50, sub_270690B0C, v7);

  OUTLINED_FUNCTION_16_0();
}

id sub_27068B668(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_270690D44(0, &qword_28081CF30, 0x277D75470);
  v2 = sub_2706E5B0C();

  v3 = [v1 initWithDragItems_];

  return v3;
}

void sub_27068B6F0(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = sub_2706E58DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (a4 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      (*(v10 + 16))(v12, Strong + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_logger, v9);
      v15 = a1;

      v16 = sub_2706E58BC();
      v17 = sub_2706E5C1C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_270680000, v16, v17, "surrogate: requesting drag relay session start", v18, 2u);
        MEMORY[0x2743A75B0](v18, -1, -1);
      }

      (*(v10 + 8))(v12, v9);
    }

    else
    {
      v19 = a1;
    }

    swift_beginAccess();
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = v20;
      v22 = *(v20 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_relaySession);
      if (v22)
      {
        v23 = *&a3;
        v24 = v22;

        [v24 beginDragFromView:a1 point:{*&a2, v23}];
        v21 = v24;
      }
    }

    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      swift_unownedRetainStrong();

      v27 = xmmword_2706E8FD0;
      v29 = 0;
      v30 = 0;
      v28 = 0;
      sub_2706AFBAC(&v27);
    }
  }
}

void sub_27068B984(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_2706E58BC();
    v4 = sub_2706E5C1C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_270680000, v3, v4, "DragSurrogate_iOS: readyToResumeEventsHandler", v5, 2u);
      MEMORY[0x2743A75B0](v5, -1, -1);
    }

    v7 = *&v2[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_window];
    if (v7)
    {
      MEMORY[0x28223BE20](v6);
      v11[2] = v2;
      v8 = swift_allocObject();
      *(v8 + 16) = v2;
      v9 = v7;
      v10 = v2;
      sub_27068BC58(sub_270690C8C, v11, sub_270690CC8, v8);
    }

    else
    {
    }
  }
}

void sub_27068BB10(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_window);
  if (v1)
  {
    v2 = [v1 layer];
    [v2 setAllowsHitTesting_];
  }
}

uint64_t sub_27068BB7C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_window;
  v3 = *(a1 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_window);
  if (v3 && ([v3 removeFromSuperview], (v4 = *(a1 + v2)) != 0))
  {
    [v4 setWindowScene_];
    v5 = *(a1 + v2);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + v2) = 0;

  return sub_27068BBE8();
}

uint64_t sub_27068BBE8()
{
  v1 = OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_didBeginCompletion;
  if (*(v0 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_didBeginCompletion))
  {

    sub_2706DD768();
  }

  *(v0 + v1) = 0;
}

void sub_27068BC58(void (*a1)(id), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  a1([v8 begin]);
  v9 = [v4 _boundContext];
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = a3;
    v11[4] = a4;
    v19 = sub_270690B54;
    v20 = v11;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    OUTLINED_FUNCTION_1_0();
    v17 = v12;
    v18 = &block_descriptor;
    v13 = _Block_copy(&v15);
    v14 = v10;

    [v8 addCommitHandler:v13 forPhase:{5, v15, v16}];
    _Block_release(v13);
    [v8 commit];
  }

  else
  {
    __break(1u);
  }
}

id sub_27068BDAC(void *a1, uint64_t a2)
{
  [a1 setRootViewController_];

  return [a1 setHidden_];
}

uint64_t sub_27068BE24(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2706E58BC();
  v5 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_7_0(v5))
  {
    v6 = OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_20_0(v6);
    OUTLINED_FUNCTION_5_0();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_8_0();
  }

  *(v2 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_didBeginCompletion) = a1;
}

void sub_27068BECC(uint64_t a1)
{
  OUTLINED_FUNCTION_21_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_2706E57CC();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  v14 = *v6;
  v15 = sub_2706E58BC();
  v16 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_13_0(v16))
  {
    v17 = OUTLINED_FUNCTION_15_0();
    *v17 = 0;
    _os_log_impl(&dword_270680000, v15, v16, "surrogate: updatePresentation", v17, 2u);
    OUTLINED_FUNCTION_12_0();
  }

  sub_2706E57BC();
  if (v14)
  {

    sub_27068C254(v14, v4, v2);
  }

  v18 = *&v2[OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_relaySession];
  if (v18)
  {
    v19 = v18;
    v20 = sub_2706E579C();
    [v19 updateDragPreviewForItemsAtIndexes_];
  }

  (*(v9 + 8))(v13, v7);
  OUTLINED_FUNCTION_16_0();
}

void sub_27068C05C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v3 + 16);

  v5 = 0;
  v6 = v3 + 72;
  x = 0.0;
  width = 1.0;
  height = 1.0;
  y = 0.0;
  while (v4 != v5)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_8;
    }

    ++v5;
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v14 = CGRectUnion(v13, *(v6 - 24));
    x = v14.origin.x;
    y = v14.origin.y;
    width = v14.size.width;
    height = v14.size.height;
    v6 += 48;
  }

  type metadata accessor for CGImage(0);
  v12 = v11;

  if (sub_270693430(width + width, height + height, v12, v1, a1))
  {
    return;
  }

LABEL_8:
  __break(1u);
}

id sub_27068C178(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  v3 = [objc_allocWithZone(MEMORY[0x277D75478]) initWithView_];
  return v3;
}

id sub_27068C204(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

uint64_t sub_27068C254(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *(a1 + 16);
  v22 = OBJC_IVAR____TtCC13UniversalDrag24DragSurrogateCoordinator7Context_presentation;
  v24 = OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_dragItems;
  v4 = (a1 + 96);
  if (!v3)
  {
LABEL_20:
  }

  while (1)
  {
    v5 = *v4;
    if (!*v4)
    {
      goto LABEL_16;
    }

    v6 = *(v4 - 8);
    v7 = *(v5 + 16);
    if (v7 < 2)
    {
      if (!v7)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    v8 = *(a2 + v22);
    if (v8)
    {
      break;
    }

LABEL_9:
    v12 = sub_27068F6DC(0);
    if (v13)
    {
      v14 = *(*(v5 + 56) + 8 * v12);

      v11 = v14;
      goto LABEL_11;
    }

LABEL_16:
    v4 += 9;
    if (!--v3)
    {
      goto LABEL_20;
    }
  }

  v9 = *(v8 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_items);
  sub_2706C2208(*(v4 - 8), (v9 & 0xC000000000000001) == 0, v9);

  if ((v9 & 0xC000000000000001) != 0)
  {

    MEMORY[0x2743A62C0](v6, v9);
  }

  else
  {
  }

  sub_27068C05C(v5);
  v11 = v10;

LABEL_11:
  result = swift_beginAccess();
  v16 = *&a3[v24];
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x2743A62C0](v6);
LABEL_15:
    v18 = v17;
    swift_endAccess();
    v19 = swift_allocObject();
    *(v19 + 16) = v11;
    aBlock[4] = sub_270690CD0;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_27068C204;
    aBlock[3] = &block_descriptor_54;
    v20 = _Block_copy(aBlock);
    v21 = v11;

    [v18 setPreviewProvider_];
    _Block_release(v20);

    sub_2706E57AC();

    goto LABEL_16;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    if (v6 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    v17 = *(v16 + 8 * v6 + 32);
    goto LABEL_15;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void sub_27068C52C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2706E58BC();
  v4 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_7_0(v4))
  {
    v5 = OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_20_0(v5);
    OUTLINED_FUNCTION_5_0();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_8_0();
  }

  v11 = *(v2 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_relaySession);
  if (v11)
  {
    [v11 cancelDrag];
  }

  sub_2706DD768();
}

id sub_27068C614()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27068C748(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27068C780(uint64_t a1)
{
  result = sub_2706E58DC();
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

void sub_27068C850(uint64_t a1)
{
  oslog = sub_2706E58BC();
  v1 = sub_2706E5C1C();
  if (os_log_type_enabled(oslog, v1))
  {
    *OUTLINED_FUNCTION_15_0() = 0;
    OUTLINED_FUNCTION_31_1(&dword_270680000, v2, v3, "UIDragRelaySessionDelegate: dragRelaySessionDidBegin", v4, v5, v6, v7, v8, oslog);
    OUTLINED_FUNCTION_12_0();
  }
}

void sub_27068C93C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_2706E58BC();
  v6 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_7_0(v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    v7[1] = a2 & 1;
    OUTLINED_FUNCTION_5_0();
    _os_log_impl(v8, v9, v10, v11, v12, 8u);
    OUTLINED_FUNCTION_8_0();
  }

  sub_27068BBE8();
  if (a2)
  {
    swift_unownedRetainStrong();
    v23 = xmmword_2706E8FE0;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    sub_2706AFBAC(&v23);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF68, &qword_2706E9178);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2706E8FC0;
    *(inited + 32) = sub_2706E5A3C();
    *(inited + 40) = v14;
    *(inited + 48) = 0xD000000000000011;
    *(inited + 56) = 0x80000002706EFB00;
    v15 = sub_2706E59AC();
    sub_2706E5A3C();
    v16 = sub_27068CB8C(v15);

    v17 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v18 = OUTLINED_FUNCTION_22_0();
    v20 = sub_2706C82B8(v18, v19, 301031, v16);
    swift_unownedRetainStrong();
    *&v23 = v20;
    *(&v23 + 1) = 0x6000000000000000;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    v21 = v20;
    sub_2706AFBAC(&v23);

    sub_2706911CC(v23, *(&v23 + 1));
    if (*(v3 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_pasteboardDataSession))
    {
      v22 = v21;

      sub_2706CB498();
    }

    else
    {
    }
  }
}

unint64_t sub_27068CB8C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF70, &qword_2706E9180);
    v2 = sub_2706E5FCC();
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

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    swift_dynamicCast();
    sub_270690AAC(&v22, v24);
    sub_270690AAC(v24, v25);
    sub_270690AAC(v25, &v23);
    result = sub_27068F7E8(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_1(v17);
      result = sub_270690AAC(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = sub_270690AAC(&v23, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
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
  return result;
}

void sub_27068CE40(uint64_t a1)
{
  v1 = sub_2706E58BC();
  v2 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_13_0(v2))
  {
    *OUTLINED_FUNCTION_15_0() = 0;
    OUTLINED_FUNCTION_18_0(&dword_270680000, v3, v4, "UIDragRelaySessionDelegate: dragRelaySessionDidFail");
    OUTLINED_FUNCTION_12_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF68, &qword_2706E9178);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2706E8FC0;
  *(inited + 32) = sub_2706E5A3C();
  *(inited + 40) = v6;
  *(inited + 48) = 0xD000000000000019;
  *(inited + 56) = 0x80000002706EFAE0;
  v7 = sub_2706E59AC();
  sub_2706E5A3C();
  v8 = sub_27068CB8C(v7);

  v9 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v10 = OUTLINED_FUNCTION_22_0();
  v12 = sub_2706C82B8(v10, v11, 301031, v8);
  swift_unownedRetainStrong();
  v14 = v12;
  v15 = 0x6000000000000000;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v13 = v12;
  sub_2706AFBAC(&v14);

  sub_2706911CC(v14, v15);
}

void sub_27068D04C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2706E58BC();
  v4 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_13_0(v4))
  {
    *OUTLINED_FUNCTION_15_0() = 0;
    OUTLINED_FUNCTION_18_0(&dword_270680000, v5, v6, "UIDragRelaySessionDelegate: dragRelaySessionDidEndDataTransfer");
    OUTLINED_FUNCTION_12_0();
  }

  if (*(v2 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_pasteboardDataSession))
  {

    sub_2706CB72C();
  }
}

void sub_27068D164(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2706CAFB4(a2);
  if (!v5)
  {
    v13 = 0;
LABEL_33:
    v40 = [v4 badgeUpdate];
    if (v40)
    {
      v41 = v40;
      v42 = sub_2706E58BC();
      v43 = sub_2706E5BEC();
      if (OUTLINED_FUNCTION_7_0(v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 134217984;
        *(v44 + 4) = [v41 badgeStyle];

        OUTLINED_FUNCTION_29_0();
        _os_log_impl(v45, v46, v47, v48, v49, 0xCu);
        OUTLINED_FUNCTION_12_0();
      }

      else
      {

        v42 = v41;
      }

      sub_27068AA48(&v53);
      v50 = v53;
      if (!v13)
      {
LABEL_40:
        if (v50 == 5)
        {
          return;
        }
      }
    }

    else
    {
      v50 = 5;
      if (!v13)
      {
        goto LABEL_40;
      }
    }

    swift_unownedRetainStrong();
    v53 = v13;
    v54 = v50;
    sub_2706AFB40(&v53);

    return;
  }

  v6 = v5;
  v51 = v4;
  v7 = sub_2706C2200();
  v8 = 0;
  v9 = v6 & 0xC000000000000001;
  do
  {
    if (v7 == v8)
    {
      goto LABEL_12;
    }

    if (v9)
    {
      v10 = MEMORY[0x2743A62C0](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v10 = *(v6 + 8 * v8 + 32);
    }

    v11 = v10;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v12 = [v10 isFromCurrentSession];

    ++v8;
  }

  while ((v12 & 1) != 0);
  *(v3 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_hasSeenPreviewsFromOtherSources) = 1;
LABEL_12:
  if (*(v3 + OBJC_IVAR____TtC13UniversalDrag17DragSurrogate_iOS_hasSeenPreviewsFromOtherSources) != 1)
  {

    v24 = sub_2706E58BC();
    v25 = sub_2706E5BEC();
    if (OUTLINED_FUNCTION_7_0(v25))
    {
      v26 = OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_20_0(v26);
      OUTLINED_FUNCTION_5_0();
      _os_log_impl(v27, v28, v29, v30, v31, 2u);
      OUTLINED_FUNCTION_8_0();
    }

    v13 = 0;
    goto LABEL_32;
  }

  v14 = sub_2706E58BC();
  v15 = sub_2706E5BEC();
  if (OUTLINED_FUNCTION_13_0(v15))
  {
    *OUTLINED_FUNCTION_15_0() = 0;
    OUTLINED_FUNCTION_29_0();
    _os_log_impl(v16, v17, v18, v19, v20, 2u);
    OUTLINED_FUNCTION_12_0();
  }

  swift_unownedRetainStrong();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v22 = swift_unownedRetainStrong();
    sub_2706C7DD0(__src, v22);

    swift_unknownObjectRelease();
    v23 = __src[0];
  }

  else
  {
    v23 = 1;
  }

  v32 = sub_2706C2200();
  if (!v32)
  {

    sub_27068F6CC(v23);
    v13 = MEMORY[0x277D84F90];
LABEL_32:
    v4 = v51;
    goto LABEL_33;
  }

  v33 = v32;
  v53 = MEMORY[0x277D84F90];
  sub_2706BF8A4(0, v32 & ~(v32 >> 63), 0);
  if ((v33 & 0x8000000000000000) == 0)
  {
    v34 = 0;
    v13 = v53;
    do
    {
      if (v9)
      {
        v35 = MEMORY[0x2743A62C0](v34, v6);
      }

      else
      {
        v35 = *(v6 + 8 * v34 + 32);
      }

      v36 = v35;
      v52 = v23;
      sub_27068A9C0(&v52, __src);

      v53 = v13;
      v38 = *(v13 + 16);
      v37 = *(v13 + 24);
      if (v38 >= v37 >> 1)
      {
        v39 = OUTLINED_FUNCTION_28_0(v37);
        sub_2706BF8A4(v39, v38 + 1, 1);
        v13 = v53;
      }

      ++v34;
      *(v13 + 16) = v38 + 1;
      memcpy((v13 + 72 * v38 + 32), __src, 0x48uLL);
    }

    while (v33 != v34);
    sub_27068F6CC(v23);

    goto LABEL_32;
  }

LABEL_45:
  __break(1u);
}

void sub_27068D614(uint64_t a1)
{
  OUTLINED_FUNCTION_21_0();
  v2 = v1;
  v23 = v3;
  v24 = v4;
  v21 = v5;
  v22 = v6;
  v7 = sub_2706E5C8C();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  v1[OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_hasCalledResumeHandler] = 0;
  v20 = OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_watchdogTimer;
  sub_270690D44(0, &qword_28081CF10, 0x277D85CA0);
  sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
  v14 = sub_2706E5C4C();
  v26 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_14_0();
  sub_270690BB8(v15, v16, MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF20, &unk_2706E9160);
  sub_270690C38(&qword_28081CF28, &qword_28081CF20, &unk_2706E9160);
  sub_2706E5D7C();
  v17 = sub_2706E5C9C();

  (*(v9 + 8))(v13, v7);
  *&v2[v20] = v17;
  v18 = &v2[OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_touchesBeganHandler];
  *v18 = v21;
  *(v18 + 1) = v22;
  v19 = &v2[OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_readyToResumeEventsHandler];
  *v19 = v23;
  *(v19 + 1) = v24;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for ShieldViewController();
  objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  OUTLINED_FUNCTION_16_0();
}

void sub_27068D81C(uint64_t a1)
{
  sub_2706E591C();
  OUTLINED_FUNCTION_4();
  v62 = v5;
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24();
  v61 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = (&v51 - v8);
  sub_2706E596C();
  OUTLINED_FUNCTION_4();
  v59 = v11;
  v60 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24();
  v55 = v12;
  MEMORY[0x28223BE20](v13);
  v57 = &v51 - v14;
  sub_2706E592C();
  OUTLINED_FUNCTION_4();
  v52 = v16;
  v53 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_0();
  v19 = v18 - v17;
  v51 = sub_2706E594C();
  OUTLINED_FUNCTION_4();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_0();
  v25 = v24 - v23;
  if (qword_28081C730 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_28081C730);
  }

  v26 = sub_2706E58DC();
  __swift_project_value_buffer(v26, qword_2808292D8);
  v27 = sub_2706E58BC();
  v28 = sub_2706E5C1C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_15_0();
    *v29 = 0;
    _os_log_impl(&dword_270680000, v27, v28, "shieldWindow: touchesBegan", v29, 2u);
    OUTLINED_FUNCTION_12_0();
  }

  v30 = sub_27068DDB8(a1);
  v31 = v58;
  v32 = *&v58[OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_watchdogTimer];
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_19_0();
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_270690DD4;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_1_0();
  aBlock[2] = v35;
  aBlock[3] = &block_descriptor_66;
  v36 = _Block_copy(aBlock);

  sub_2706E593C();
  sub_27068E090();
  v54 = ObjectType;
  v56 = v32;
  sub_2706E5CAC();
  _Block_release(v36);
  (*(v52 + 8))(v19, v53);
  (*(v21 + 8))(v25, v51);

  v37 = *&v31[OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_touchesBeganHandler];

  v38 = [v31 view];
  if (v30)
  {
    v39 = v30;
    v40 = [v31 view];
    [v39 locationInView_];
    OUTLINED_FUNCTION_26_0();

    v41 = v1;
    v42 = v2;
  }

  else
  {
    v41 = 0;
    v42 = 0;
  }

  v37(v38, v41, v42, v30 == 0);

  v43 = v55;
  sub_2706E595C();
  *v9 = 3;
  v45 = v62;
  v44 = v63;
  (v62)[13](v9, *MEMORY[0x277D85188], v63);
  v46 = v57;
  MEMORY[0x2743A5DE0](v43, v9);
  v47 = v45[1];
  v47(v9, v44);
  v48 = v60;
  v59 = *(v59 + 8);
  (v59)(v43, v60);
  v49 = v54;
  sub_27068E168(v9);
  v62 = v30;
  v50 = v61;
  sub_27068E1DC(v61);
  MEMORY[0x2743A6160](v46, v9, v50, v49);
  v47(v50, v44);
  v47(v9, v44);
  (v59)(v46, v48);
  sub_2706E5CCC();
}

uint64_t sub_27068DDB8(uint64_t a1)
{
  v2 = sub_270690DDC(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_270690E7C(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_2706910DC(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_270691110(v7, v9, v11 & 1);
  if (v12)
  {
    sub_270691110(v2, v4, v6 & 1);
    return 0;
  }

  else
  {
    sub_270690ED0(v2, v4, v6 & 1, a1);
    v13 = v14;
    sub_270691110(v2, v4, v6 & 1);
  }

  return v13;
}

uint64_t sub_27068DE8C@<X0>(_OWORD *a2@<X8>)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v3 = OUTLINED_FUNCTION_22_0();
  v4 = MEMORY[0x2743A6B20](v3);
  swift_unknownObjectRelease();
  if (v4)
  {
    result = swift_unknownObjectRelease();
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  else
  {
    OUTLINED_FUNCTION_22_0();
    sub_2706E5F4C();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_27068DF40(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_hasCalledResumeHandler;
    if ((*(Strong + OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_hasCalledResumeHandler) & 1) == 0)
    {
      if (qword_28081C730 != -1)
      {
        swift_once();
      }

      v4 = sub_2706E58DC();
      __swift_project_value_buffer(v4, qword_2808292D8);
      v5 = sub_2706E5BFC();
      v6 = sub_2706E58BC();
      if (os_log_type_enabled(v6, v5))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_270680000, v6, v5, "ShieldViewController: failed to receieve dropInteraction proposal in a timely fashion. Resuming HID event delivery, but the drag operation will fail.", v7, 2u);
        MEMORY[0x2743A75B0](v7, -1, -1);
      }

      v8 = *&v2[OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_readyToResumeEventsHandler];

      v8(v9);

      v2[v3] = 1;
    }
  }
}

uint64_t sub_27068E090()
{
  sub_2706E592C();
  sub_270690BB8(&qword_28081CEF8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
  sub_270690C38(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080);
  return sub_2706E5D7C();
}

uint64_t sub_27068E168@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85180];
  v3 = sub_2706E591C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_27068E1DC@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  v3 = sub_2706E591C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_27068E30C()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v2 = sub_2706E5C8C();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  *(v0 + OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_hasCalledResumeHandler) = 0;
  v13 = OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_watchdogTimer;
  sub_270690D44(0, &qword_28081CF10, 0x277D85CA0);
  sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
  v9 = sub_2706E5C4C();
  OUTLINED_FUNCTION_14_0();
  sub_270690BB8(v10, v11, MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF20, &unk_2706E9160);
  sub_270690C38(&qword_28081CF28, &qword_28081CF20, &unk_2706E9160);
  sub_2706E5D7C();
  v12 = sub_2706E5C9C();

  (*(v4 + 8))(v8, v2);
  *(v1 + v13) = v12;
  sub_2706E5F8C();
  __break(1u);
}

void sub_27068E530()
{
  v1 = v0;
  if (qword_28081C730 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_28081C730);
  }

  v2 = sub_2706E58DC();
  __swift_project_value_buffer(v2, qword_2808292D8);
  v3 = sub_2706E58BC();
  v4 = sub_2706E5C1C();
  if (OUTLINED_FUNCTION_13_0(v4))
  {
    *OUTLINED_FUNCTION_15_0() = 0;
    OUTLINED_FUNCTION_18_0(&dword_270680000, v5, v6, "shieldWindow: viewDidLoad");
    OUTLINED_FUNCTION_12_0();
  }

  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 layer];

  [v9 setHitTestsAsOpaque_];
  v10 = [objc_allocWithZone(MEMORY[0x277D754A0]) initWithDelegate_];
  v11 = [v1 view];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 addInteraction_];
}

void sub_27068E6E4()
{
  OUTLINED_FUNCTION_21_0();
  v1 = sub_2706E592C();
  OUTLINED_FUNCTION_4();
  v19 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v6 = v5 - v4;
  v18 = sub_2706E594C();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  swift_getObjectType();
  sub_2706E5CBC();
  sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
  v13 = sub_2706E5C4C();
  OUTLINED_FUNCTION_19_0();
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  v20[4] = sub_270690D3C;
  v20[5] = v14;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  OUTLINED_FUNCTION_1_0();
  v20[2] = v15;
  v20[3] = &block_descriptor_60;
  v16 = _Block_copy(v20);
  v17 = v0;

  sub_2706E593C();
  v20[0] = MEMORY[0x277D84F90];
  sub_270690BB8(&qword_28081CEF8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
  sub_270690C38(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080);
  sub_2706E5D7C();
  MEMORY[0x2743A60D0](0, v12, v6, v16);
  _Block_release(v16);

  (*(v19 + 8))(v6, v1);
  (*(v8 + 8))(v12, v18);
  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_27068E998(uint64_t result)
{
  v1 = OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_hasCalledResumeHandler;
  if ((*(result + OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_hasCalledResumeHandler) & 1) == 0)
  {
    v2 = result;
    if (qword_28081C730 != -1)
    {
      swift_once();
    }

    v3 = sub_2706E58DC();
    __swift_project_value_buffer(v3, qword_2808292D8);
    v4 = sub_2706E58BC();
    v5 = sub_2706E5C1C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_270680000, v4, v5, "ShieldViewController: received drop interaction proposal. Calling completion handler to resume HID event delivery.", v6, 2u);
      MEMORY[0x2743A75B0](v6, -1, -1);
    }

    v7 = *(v2 + OBJC_IVAR____TtC13UniversalDrag20ShieldViewController_readyToResumeEventsHandler);

    v7(v8);

    *(v2 + v1) = 1;
  }

  return result;
}

id sub_27068EB70(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ShieldViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_27068EC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericGray = CGColorCreateGenericGray(1.0, 0.668);
  v6 = OUTLINED_FUNCTION_22_0();
  CGContextSetFillColorWithColor(v6, v7);

  v8 = *(a2 + 48);
  v9 = *(v8 + 16);

  v10 = 0;
  v11 = v8 + 72;
  while (v9 != v10)
  {
    if (v10 >= *(v8 + 16))
    {
      __break(1u);
      return;
    }

    CGRectGetWidth(*(v11 - 24));
    if (a3 && *(a3 + 16) && (v12 = sub_27068F6DC(v10), (v13 & 1) != 0))
    {
      v14 = *(*(a3 + 56) + 8 * v12);
      OUTLINED_FUNCTION_25_0();
      sub_2706E5BBC();
    }

    else
    {
      v17.origin.x = OUTLINED_FUNCTION_25_0();
      CGContextFillRect(v15, v17);
    }

    v11 += 48;
    ++v10;
  }
}

void *sub_27068ED74@<X0>(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v6 = v3;
  v9 = *a2;
  [v6 previewScaledSize];
  OUTLINED_FUNCTION_26_0();
  if (v9 == 1)
  {
    v10 = 0;
  }

  else
  {
    v11 = objc_allocWithZone(MEMORY[0x277D75F00]);
    v12 = v9;
    v10 = [v11 init];
    [v10 setWindowSceneForSnapshotting_];
    sub_27068F6CC(v9);
  }

  type metadata accessor for CGImage(0);
  v13 = sub_2706E59AC();
  v14 = [v6 previewImageWithSnapshotSettings_];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 CGImage];

    if (v16)
    {
      v17 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37[0] = v13;
      sub_27068F9E0(v17, 0, isUniquelyReferenced_nonNull_native);

LABEL_9:
      v13 = v37[0];
      goto LABEL_13;
    }
  }

  v44.width = 1.0;
  v44.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v44, 0, 0.0);
  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v20 = [(UIImage *)v19 CGImage];
  if (v20)
  {
    v21 = v20;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v37[0] = v13;
    sub_27068F9E0(v21, 0, v22);

    goto LABEL_9;
  }

  v23 = sub_27068F6DC(0);
  if (v24)
  {
    v25 = v23;
    swift_isUniquelyReferenced_nonNull_native();
    v37[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CEA8, &qword_2706E9138);
    sub_2706E5F5C();
    v26 = *(*(v13 + 56) + 8 * v25);
    sub_2706E5F6C();
  }

LABEL_13:
  [v6 previewScaledSize];
  v28 = v27;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CEA0, &qword_2706E9130);
  v31 = swift_allocObject();
  v32 = OUTLINED_FUNCTION_23_0(v31, xmmword_2706E8FC0);
  v32[2].n128_u64[0] = v33;
  v32[2].n128_u64[1] = 0xEB00000000776569;
  v32[3].n128_u64[0] = 0;
  v32[3].n128_u64[1] = 0;
  v32[4].n128_u64[0] = v4;
  v32[4].n128_u64[1] = v5;

  v35[80] = 0;
  v35[72] = 0;
  __src[0] = a1;
  __src[1] = v28;
  __src[2] = v30;
  LOBYTE(__src[3]) = 0;
  memset(&__src[4], 0, 17);
  __src[7] = v31;
  __src[8] = v13;
  v37[0] = a1;
  v37[1] = v28;
  v37[2] = v30;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = v31;
  v43 = v13;
  sub_27069111C(__src, v35);
  sub_270691178(v37);
  return memcpy(a3, __src, 0x48uLL);
}

uint64_t sub_27068F094(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2706E592C();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2706E594C();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2706E571C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  sub_2706E570C();
  [a1 waitForRenderingWithTimeout_];
  sub_2706E570C();
  sub_2706E56EC();
  v20 = v19;
  v30 = *(v13 + 8);
  v31 = v12;
  v30(v16, v12);
  if (v20 >= 0.1)
  {
    if (qword_28081C730 != -1)
    {
      swift_once();
    }

    v21 = sub_2706E58DC();
    __swift_project_value_buffer(v21, qword_2808292D8);
    v22 = sub_2706E58BC();
    v23 = sub_2706E5C1C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v20;
      _os_log_impl(&dword_270680000, v22, v23, "shieldWindow: waited too long (> %f seconds) for shield to render", v24, 0xCu);
      MEMORY[0x2743A75B0](v24, -1, -1);
    }
  }

  sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
  v25 = sub_2706E5C4C();
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  aBlock[4] = sub_270690BB0;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2706DA6A0;
  aBlock[3] = &block_descriptor_45;
  v27 = _Block_copy(aBlock);

  sub_2706E593C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_270690BB8(&qword_28081CEF8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
  sub_270690C38(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080);
  v28 = v35;
  sub_2706E5D7C();
  MEMORY[0x2743A60D0](0, v11, v8, v27);
  _Block_release(v27);

  (*(v34 + 8))(v8, v28);
  (*(v32 + 8))(v11, v33);
  return (v30)(v18, v31);
}

uint64_t sub_27068F550(uint64_t (*a1)(void))
{
  if (qword_28081C730 != -1)
  {
    swift_once();
  }

  v2 = sub_2706E58DC();
  __swift_project_value_buffer(v2, qword_2808292D8);
  v3 = sub_2706E58BC();
  v4 = sub_2706E5C1C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_270680000, v3, v4, "shieldWindow: commit handler dispatched to MAIN QUEUE", v5, 2u);
    MEMORY[0x2743A75B0](v5, -1, -1);
  }

  return a1();
}

uint64_t sub_27068F648(uint64_t a1, uint64_t a2)
{
  sub_2706E5A3C();
  sub_2706E65EC();
  sub_2706E5A6C();
  v2 = sub_2706E660C();

  return v2;
}

uint64_t sub_27068F6BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_27068F6CC(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_27068F6DC(uint64_t a1)
{
  v2 = sub_2706E65DC();

  return sub_270690330(a1, v2);
}

unint64_t sub_27068F720(uint64_t a1)
{
  v2 = sub_2706E5D1C();

  return sub_270690390(a1, v2);
}

unint64_t sub_27068F764(uint64_t a1)
{
  sub_2706E576C();
  OUTLINED_FUNCTION_10_0();
  sub_270690BB8(v2, v3, MEMORY[0x277CC9600]);
  OUTLINED_FUNCTION_22_0();
  v4 = sub_2706E59CC();

  return sub_270690468(a1, v4);
}

unint64_t sub_27068F7E8(uint64_t a1, uint64_t a2)
{
  sub_2706E65EC();
  sub_2706E5A6C();
  v4 = sub_2706E660C();

  return sub_270690624(a1, a2, v4);
}

unint64_t sub_27068F860(uint64_t a1)
{
  sub_2706E65EC();
  sub_2706E576C();
  OUTLINED_FUNCTION_10_0();
  sub_270690BB8(v2, v3, MEMORY[0x277CC9600]);
  sub_2706E59DC();
  v4 = sub_2706E660C();

  return sub_2706906D8(a1, v4);
}

unint64_t sub_27068F904(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x2743A6A30](*(v1 + 40), a1, 4);

  return sub_270690820(v2, v3);
}

unint64_t sub_27068F94C(uint64_t a1)
{
  sub_2706E5A3C();
  sub_2706E65EC();
  sub_2706E5A6C();
  v2 = sub_2706E660C();

  return sub_270690880(a1, v2);
}

void sub_27068F9E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_27068F6DC(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CEA8, &qword_2706E9138);
  if ((sub_2706E5F5C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_27068F6DC(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    sub_2706E652C();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    v15 = v14[7];
    v16 = *(v15 + 8 * v10);
    *(v15 + 8 * v10) = a1;
  }

  else
  {

    sub_270690164(v10, a2, a1, v14);
  }
}

void sub_27068FB2C(uint64_t a1)
{
  OUTLINED_FUNCTION_21_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v24 = v9;
  v23 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_4_0();
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v13;
  v17 = v14;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v4);
  if ((OUTLINED_FUNCTION_17_0(v18) & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = sub_27068F764(v8);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_11:
    sub_2706E652C();
    __break(1u);
    return;
  }

  v16 = v19;
LABEL_5:
  v21 = *v1;
  if (v17)
  {
    *(*(v21 + 56) + 8 * v16) = v24;
    OUTLINED_FUNCTION_16_0();
  }

  else
  {
    (*(v11 + 16))(v2, v8, v23);
    sub_2706901A8(v16, v2, v24, v21);
    OUTLINED_FUNCTION_16_0();
  }
}

void sub_27068FC9C(uint64_t a1)
{
  OUTLINED_FUNCTION_21_0();
  v4 = v3;
  v6 = v5;
  v7 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_4_0();
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v11;
  v15 = v12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DB90, &qword_2706E9188);
  if ((OUTLINED_FUNCTION_17_0(v16) & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_27068F764(v4);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    sub_2706E652C();
    __break(1u);
    return;
  }

  v14 = v17;
LABEL_5:
  v19 = *v1;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v14) = v6;
    OUTLINED_FUNCTION_16_0();
  }

  else
  {
    (*(v9 + 16))(v2, v4, v7);
    sub_2706901A8(v14, v2, v6, v19);
    OUTLINED_FUNCTION_16_0();
  }
}

_OWORD *sub_27068FE04(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  sub_27068F7E8(a2, a3);
  OUTLINED_FUNCTION_4_0();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CED8, &qword_2706E9148);
  if ((OUTLINED_FUNCTION_17_0(v12) & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_27068F7E8(a2, a3);
  if ((v11 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_2706E652C();
    __break(1u);
    return result;
  }

  v10 = v13;
LABEL_5:
  v15 = *v3;
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1((v15[7] + 32 * v10));
    OUTLINED_FUNCTION_34_0();

    return sub_270690AAC(v16, v17);
  }

  else
  {
    sub_270690218(v10, a2, a3, a1, v15);
    OUTLINED_FUNCTION_34_0();
  }
}

void sub_27068FF28(uint64_t a1, uint64_t a2, char a3)
{
  sub_27068F904(a2);
  OUTLINED_FUNCTION_4_0();
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CEE0, &unk_2706E9150);
  if ((sub_2706E5F5C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_27068F904(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    sub_2706E652C();
    __break(1u);
    return;
  }

  v9 = v11;
LABEL_5:
  if (v10)
  {
    *(*(*v3 + 56) + 8 * v9) = a1;
    OUTLINED_FUNCTION_34_0();
  }

  else
  {
    OUTLINED_FUNCTION_34_0();

    sub_270690284(v15, v16, v17, v18);
  }
}

_OWORD *sub_270690038(_OWORD *a1, void *a2, char a3)
{
  sub_27068F94C(a2);
  OUTLINED_FUNCTION_4_0();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CED0, &qword_2706E9140);
  if ((sub_2706E5F5C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = sub_27068F94C(a2);
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_13:
    type metadata accessor for FileAttributeKey(0);
    result = sub_2706E652C();
    __break(1u);
    return result;
  }

  v8 = v10;
LABEL_5:
  v12 = *v3;
  if (v9)
  {
    v13 = (v12[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v13);

    return sub_270690AAC(a1, v13);
  }

  else
  {
    sub_2706902C8(v8, a2, a1, v12);

    return a2;
  }
}

unint64_t sub_270690164(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void sub_2706901A8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_11_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6_0();
  (*(v8 + 32))(v7 + *(v8 + 72) * v6, v5);
  OUTLINED_FUNCTION_27_0();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v9;
  }
}

_OWORD *sub_270690218(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_270690AAC(a4, (a5[7] + 32 * a1));
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

unint64_t sub_270690284(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_2706902C8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_270690AAC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_270690330(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_270690390(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_270690D44(0, &qword_28081CEB8, 0x277CCABB0);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_2706E5D2C();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_270690468(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_2706E576C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_270690BB8(&qword_28081CF40, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v9 = sub_2706E59FC();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_270690624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2706E631C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2706906D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasteboardDataTransferID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = ~(-1 << *(v2 + 32));
  for (i = a2 & v8; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v8)
  {
    sub_270690CD8(*(v2 + 48) + *(v5 + 72) * i, v7);
    v10 = sub_2706E573C();
    sub_27069126C(v7, type metadata accessor for PasteboardDataTransferID);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_270690820(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_270690880(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_2706E5A3C();
    v7 = v6;
    if (v5 == sub_2706E5A3C() && v7 == v8)
    {

      return i;
    }

    v10 = sub_2706E631C();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_270690978(void *a1)
{
  v1 = [a1 previewsByItemProviderIndex];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_270690D44(0, &qword_28081CEB8, 0x277CCABB0);
  sub_270690D44(0, &qword_28081CEB0, 0x277D75EF0);
  sub_270690D84(&qword_28081CEC8, &qword_28081CEB8, 0x277CCABB0);
  v3 = sub_2706E599C();

  return v3;
}

uint64_t sub_270690A3C(void *a1)
{
  v1 = [a1 itemProviders];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_270690D44(0, &qword_28081CEC0, 0x277CCAA88);
  v3 = sub_2706E5B1C();

  return v3;
}

_OWORD *sub_270690AAC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_270690ABC()
{
  MEMORY[0x2743A7670](v0 + 16);
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_270690B14()
{

  return MEMORY[0x2821FE8E8](v0);
}

double block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_270690B78()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_270690BB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_270690C38(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_270690C94()
{
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_270690CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasteboardDataTransferID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270690D44(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_270690D84(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_270690D44(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_270690DDC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_2706E5D9C();
  }

  else
  {
    return sub_2706E5D8C();
  }
}

uint64_t sub_270690E7C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_2706E5DEC();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

void sub_270690ED0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x2743A6240](a1, a2, v7);
      sub_270690D44(0, &qword_28081CF58, 0x277D75C68);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_270690D44(0, &qword_28081CF58, 0x277D75C68);
    if (sub_2706E5DBC() == *(a4 + 36))
    {
      sub_2706E5DCC();
      swift_dynamicCast();
      v4 = v14;
      v8 = sub_2706E5D1C();
      v9 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v8 & v9;
        if (((*(a4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v10 = *(*(a4 + 48) + 8 * v6);
        v11 = sub_2706E5D2C();

        if (v11)
        {
          goto LABEL_18;
        }

        v8 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v12 = *(*(a4 + 48) + 8 * v6);

  v13 = v12;
}

BOOL sub_2706910DC(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x2743A6210);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

uint64_t sub_270691110(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_2706911CC(void *a1, unint64_t a2)
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

      break;
    default:
      return;
  }
}

uint64_t sub_27069126C(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1)
{

  return swift_once();
}

BOOL OUTLINED_FUNCTION_7_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_8_0()
{

  JUMPOUT(0x2743A75B0);
}

uint64_t OUTLINED_FUNCTION_11_0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (a1 >> 6) + 64) |= 1 << a1;

  return sub_2706E576C();
}

void OUTLINED_FUNCTION_12_0()
{

  JUMPOUT(0x2743A75B0);
}

BOOL OUTLINED_FUNCTION_13_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_17_0(uint64_t a1)
{

  return sub_2706E5F5C();
}

void OUTLINED_FUNCTION_18_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_31_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

unint64_t OUTLINED_FUNCTION_32_0()
{

  return sub_27068F764(v0);
}

uint64_t OUTLINED_FUNCTION_33_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_2706E5F8C();
}

void sub_270691628(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_27068F764(a1);
    if (v2)
    {
    }
  }
}

uint64_t sub_270691678(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_27068F860(a1), (v2 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2706916C8()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_270691700(uint64_t a1)
{
  OUTLINED_FUNCTION_9_1(v1 + 24, v8);
  v3 = *(v1 + 24);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_27068F764(a1);
  if (v5)
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_270691780()
{
  OUTLINED_FUNCTION_9_1(v0 + 24, v7);
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2706A377C(*(v1 + 16), 0);
  sub_270692E68(v6, (v3 + 32), v2, v1);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_19_1();
  if (!v4)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_27069181C()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  sub_2706E576C();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8_1();
  if (qword_28081C738 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_28081C738);
  }

  v5 = sub_2706E58DC();
  __swift_project_value_buffer(v5, qword_2808292F0);
  v6 = OUTLINED_FUNCTION_6_1();
  v7(v6);
  v8 = sub_2706E58BC();
  v9 = sub_2706E5C1C();
  if (os_log_type_enabled(v8, v9))
  {
    v28 = v0;
    v10 = swift_slowAlloc();
    v27 = v3;
    v11 = swift_slowAlloc();
    v30[0] = v11;
    *v10 = 136446210;
    v12 = sub_2706E572C();
    v14 = OUTLINED_FUNCTION_1_1(v12, v13);
    v15 = MEMORY[0x2743A5EC0](v14);
    v17 = v16;

    v18 = OUTLINED_FUNCTION_51();
    v19(v18);
    v20 = sub_2706C83E8(v15, v17, v30);

    *(v10 + 4) = v20;
    OUTLINED_FUNCTION_16_1(&dword_270680000, v21, v22, "%{public}s: Provider session added");
    __swift_destroy_boxed_opaque_existential_1(v11);
    v3 = v27;
    OUTLINED_FUNCTION_12_0();
    v1 = v28;
    OUTLINED_FUNCTION_12_0();
  }

  else
  {

    v23 = OUTLINED_FUNCTION_51();
    v24(v23);
  }

  type metadata accessor for _BasePasteboardController.DataSessionProvider();
  v25 = swift_allocObject();
  type metadata accessor for PasteboardDataTransferID(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28081DB80, &qword_2706E92A8);
  sub_270693260(&qword_28081CF88, type metadata accessor for PasteboardDataTransferID, &unk_2706ED72C);
  *(v25 + 16) = sub_2706E59AC();
  OUTLINED_FUNCTION_11_1(v1 + 32, v30);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v1 + 32);
  sub_27068FB18(v25, v3, isUniquelyReferenced_nonNull_native);
  *(v1 + 32) = v29;
  swift_endAccess();
  OUTLINED_FUNCTION_16_0();
}

void sub_270691AD0()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  sub_2706E576C();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8_1();
  if (qword_28081C738 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_28081C738);
  }

  v5 = sub_2706E58DC();
  __swift_project_value_buffer(v5, qword_2808292F0);
  v6 = OUTLINED_FUNCTION_6_1();
  v7(v6);
  v8 = sub_2706E58BC();
  v9 = sub_2706E5C1C();
  if (os_log_type_enabled(v8, v9))
  {
    v25 = v0;
    v10 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26[0] = v24;
    *v10 = 136446210;
    v11 = sub_2706E572C();
    v13 = OUTLINED_FUNCTION_1_1(v11, v12);
    v14 = MEMORY[0x2743A5EC0](v13);
    v16 = v15;

    v17 = OUTLINED_FUNCTION_51();
    v18(v17);
    v19 = sub_2706C83E8(v14, v16, v26);

    *(v10 + 4) = v19;
    OUTLINED_FUNCTION_16_1(&dword_270680000, v20, v21, "%{public}s: Provider session removed");
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_12_0();
    v1 = v25;
    OUTLINED_FUNCTION_12_0();
  }

  else
  {

    v22 = OUTLINED_FUNCTION_51();
    v23(v22);
  }

  OUTLINED_FUNCTION_11_1(v1 + 32, v26);
  sub_2706CABB4(v3);
  swift_endAccess();
  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_270691CE0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1(v2 + 32, v12);
  v5 = *(v2 + 32);
  if (*(v5 + 16))
  {

    v6 = sub_27068F764(a2);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);

      OUTLINED_FUNCTION_9_1(v8 + 16, &v11);
      v9 = *(v8 + 16);

      sub_270691678(a1, v9);
    }

    else
    {
    }
  }

  return OUTLINED_FUNCTION_15_1();
}

char *sub_270691DAC()
{
  OUTLINED_FUNCTION_9_1(v0 + 32, v8);
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2706A3800(*(v1 + 16), 0);
  v4 = *(sub_2706E576C() - 8);
  sub_270692FC0(v7, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, v1);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_19_1();
  if (!v5)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_270691E80()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_1();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v69 - v13;
  v15 = type metadata accessor for PasteboardDataTransferID(0);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_5_1();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v69 - v20;
  OUTLINED_FUNCTION_9_1(v0 + 32, &v74);
  v22 = *(v0 + 32);

  sub_270691628(v2, v22);
  v24 = v23;

  if (v24)
  {
    if (qword_28081C738 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_28081C738);
    }

    v25 = sub_2706E58DC();
    __swift_project_value_buffer(v25, qword_2808292F0);
    v26 = OUTLINED_FUNCTION_3_1();
    sub_270692E04(v26, v21, v27);
    (*(v7 + 16))(v14, v2, v5);
    v28 = sub_2706E58BC();
    v29 = sub_2706E5C1C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v73[0] = v70;
      *v30 = 136446466;
      v31 = sub_2706E572C();
      v33 = OUTLINED_FUNCTION_1_1(v31, v32);
      v34 = MEMORY[0x2743A5EC0](v33);
      v71 = v4;
      v72 = v5;
      v35 = v34;
      v37 = v36;

      sub_270687394(v21);
      v38 = sub_2706C83E8(v35, v37, v73);

      *(v30 + 4) = v38;
      *(v30 + 12) = 2082;
      v39 = sub_2706E572C();
      v41 = OUTLINED_FUNCTION_1_1(v39, v40);
      v42 = MEMORY[0x2743A5EC0](v41);
      v44 = v43;

      (*(v7 + 8))(v14, v72);
      v45 = v42;
      v4 = v71;
      v46 = sub_2706C83E8(v45, v44, v73);

      *(v30 + 14) = v46;
      _os_log_impl(&dword_270680000, v28, v29, "%{public}s: Provider removed, session=%{public}s", v30, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();
    }

    else
    {

      (*(v7 + 8))(v14, v5);
      sub_270687394(v21);
    }

    OUTLINED_FUNCTION_11_1(v24 + 16, v73);
    sub_2706CADB0(v4);
    swift_endAccess();
  }

  else
  {
    if (qword_28081C738 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_28081C738);
    }

    v47 = sub_2706E58DC();
    __swift_project_value_buffer(v47, qword_2808292F0);
    v48 = OUTLINED_FUNCTION_3_1();
    sub_270692E04(v48, v18, v49);
    v50 = OUTLINED_FUNCTION_6_1();
    v51(v50);
    v52 = sub_2706E58BC();
    v53 = sub_2706E5BFC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v54 = 136446466;
      v55 = sub_2706E572C();
      v57 = OUTLINED_FUNCTION_1_1(v55, v56);
      v58 = MEMORY[0x2743A5EC0](v57);
      v72 = v5;
      v60 = v59;

      sub_270687394(v18);
      v61 = sub_2706C83E8(v58, v60, v73);

      *(v54 + 4) = v61;
      *(v54 + 12) = 2082;
      v62 = sub_2706E572C();
      v64 = OUTLINED_FUNCTION_1_1(v62, v63);
      v65 = MEMORY[0x2743A5EC0](v64);
      v67 = v66;

      (*(v7 + 8))(v11, v72);
      v68 = sub_2706C83E8(v65, v67, v73);

      *(v54 + 14) = v68;
      _os_log_impl(&dword_270680000, v52, v53, "%{public}s: Provider remove for session that is not active, session=%{public}s", v54, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();
    }

    else
    {

      (*(v7 + 8))(v11, v5);
      sub_270687394(v18);
    }
  }

  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_2706923C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_id;
  OUTLINED_FUNCTION_11_1(v3 + 24, v9);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + 24);
  sub_27068FB04(a2, a2 + v5, isUniquelyReferenced_nonNull_native);
  *(v3 + 24) = v8;
  return swift_endAccess();
}

void sub_27069244C()
{
  OUTLINED_FUNCTION_21_0();
  v59 = v1;
  v2 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v54 = v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF78, &qword_2706E9290);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_5_1();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v62 = v49 - v16;
  OUTLINED_FUNCTION_9_1(v0 + 24, &v66);
  v17 = *(v0 + 24);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;
  v51 = v0;
  v52 = v4 + 16;
  v63 = (v4 + 32);
  v60 = v4;
  v61 = v4 + 8;
  v57 = v17;

  v23 = 0;
  v55 = v8;
  v56 = v2;
  v53 = v14;
  v58 = v18;
  while (v21)
  {
    v24 = v23;
LABEL_11:
    v26 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v27 = v26 | (v24 << 6);
    v29 = v56;
    v28 = v57;
    v30 = v60;
    (*(v60 + 16))(v54, *(v57 + 48) + *(v60 + 72) * v27, v56);
    v31 = *(*(v28 + 56) + 8 * v27);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF80, &qword_2706E9298);
    v33 = *(v32 + 48);
    v34 = *(v30 + 32);
    v2 = v29;
    v14 = v53;
    v34();
    *(v14 + v33) = v31;
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v32);

    v8 = v55;
    v25 = v62;
LABEL_12:
    sub_270692D94(v14, v25);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF80, &qword_2706E9298);
    if (__swift_getEnumTagSinglePayload(v25, 1, v35) == 1)
    {

      OUTLINED_FUNCTION_16_0();
      return;
    }

    v36 = *(v25 + *(v35 + 48));
    (*v63)(v8, v25, v2);
    if (v36 == v59)
    {
      OUTLINED_FUNCTION_11_1(v51 + 24, &v65);
      v39 = sub_27068F764(v8);
      v18 = v58;
      if (v40)
      {
        v41 = v39;
        v42 = v51;
        LODWORD(v50) = swift_isUniquelyReferenced_nonNull_native();
        v64 = *(v42 + 24);
        v43 = v64;
        *(v42 + 24) = 0x8000000000000000;
        v49[1] = *(v43 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF48, &qword_2706E92A0);
        sub_2706E5F5C();
        v44 = v64;
        (*(v60 + 8))(*(v64 + 48) + *(v60 + 72) * v41, v2);

        v50 = type metadata accessor for PasteboardDataSession(0);
        OUTLINED_FUNCTION_4_1();
        sub_270693260(&qword_28081CF38, v45, MEMORY[0x277CC9600]);
        OUTLINED_FUNCTION_15_1();
        sub_2706E5F6C();
        *(v51 + 24) = v44;
      }

      swift_endAccess();

      v46 = OUTLINED_FUNCTION_14_1();
      v47(v46);
    }

    else
    {
      v37 = OUTLINED_FUNCTION_14_1();
      v38(v37);

      v18 = v58;
    }
  }

  v25 = v62;
  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v22)
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF80, &qword_2706E9298);
      __swift_storeEnumTagSinglePayload(v14, 1, 1, v48);
      v21 = 0;
      goto LABEL_12;
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      v23 = v24;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_2706928E0(uint64_t a1, uint64_t a2)
{
  v14[3] = type metadata accessor for PasteboardMessage(0);
  v14[4] = sub_270693260(&qword_28081CA80, type metadata accessor for PasteboardMessage, &unk_2706E8C9C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  sub_270692E04(a1, boxed_opaque_existential_1, type metadata accessor for PasteboardMessage);
  sub_2706DA8BC(v14);
  __swift_destroy_boxed_opaque_existential_1(v14);
  v5 = OUTLINED_FUNCTION_13_1();
  sub_270692D3C(v5, v6);
  v7 = OUTLINED_FUNCTION_13_1();
  sub_2706929FC(v7, v8, a2);
  v9 = OUTLINED_FUNCTION_13_1();
  sub_270688E88(v9, v10);
  v11 = OUTLINED_FUNCTION_13_1();
  return sub_270688E88(v11, v12);
}

void sub_2706929FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_weakLoadStrong())
  {
    v6[0] = a1;
    v6[1] = a2 | 0x2000000000000000;
    v6[2] = 0;
    v6[3] = 0;

    sub_2706C73B8(v6, sub_270690B0C, a3);
  }

  else
  {
    sub_2706DD768();
  }
}

uint64_t sub_270692AB0()
{
  swift_weakDestroy();

  return v0;
}

uint64_t sub_270692AE0()
{
  sub_270692AB0();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_270692BBC()
{
  swift_weakInit();
  sub_2706E576C();
  type metadata accessor for PasteboardDataSession(0);
  OUTLINED_FUNCTION_4_1();
  sub_270693260(v1, v2, MEMORY[0x277CC9600]);
  *(v0 + 24) = sub_2706E59AC();
  type metadata accessor for _BasePasteboardController.DataSessionProvider();
  *(v0 + 32) = sub_2706E59AC();
  return v0;
}

unint64_t sub_270692CBC(uint64_t a1, uint64_t a2)
{
  sub_2706E5E3C();

  MEMORY[0x2743A5EF0](a1, a2);
  return 0xD000000000000014;
}

double sub_270692D3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_270692D94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF78, &qword_2706E9290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_270692E04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  v4 = OUTLINED_FUNCTION_15_1();
  v5(v4);
  return a2;
}

void sub_270692E68(void *a1, void *a2, unint64_t a3, uint64_t a4)
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      if (v14 == a3)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_270692FC0(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_2706E576C();
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v32 - v12;
  v14 = a4 + 64;
  v13 = *(a4 + 64);
  v38 = -1 << *(a4 + 32);
  if (-v38 < 64)
  {
    v15 = ~(-1 << -v38);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  if (!a2)
  {
    v19 = 0;
    result = 0;
LABEL_22:
    v31 = ~v38;
    *a1 = a4;
    a1[1] = v14;
    a1[2] = v31;
    a1[3] = v19;
    a1[4] = v16;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v19 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = a1;
    v34 = a4 + 64;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v38) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    v37 = result;
    while (v18 < result)
    {
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }

      if (!v16)
      {
        v14 = v34;
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v20)
          {
            v16 = 0;
            result = v18;
            a1 = v33;
            goto LABEL_22;
          }

          v16 = *(v34 + 8 * v21);
          ++v19;
          if (v16)
          {
            v43 = v18 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v43 = v18 + 1;
      v21 = v19;
LABEL_17:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = a4;
      v24 = *(a4 + 48);
      v26 = v41;
      v25 = v42;
      v27 = *(v42 + 72);
      v28 = v40;
      (*(v42 + 16))(v40, v24 + v27 * (v22 | (v21 << 6)), v41);
      v29 = *(v25 + 32);
      v30 = v39;
      v29(v39, v28, v26);
      v29(a2, v30, v26);
      result = v37;
      v18 = v43;
      if (v43 == v37)
      {
        v19 = v21;
        a1 = v33;
        v14 = v34;
        a4 = v23;
        goto LABEL_22;
      }

      a2 += v27;
      v19 = v21;
      a4 = v23;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_270693260(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1, unint64_t a2)
{

  return sub_2706B8734(8, a1, a2);
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_1()
{
}

uint64_t OUTLINED_FUNCTION_11_1(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_16_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

CGImageRef sub_270693430(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = ceil(a2);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = ceil(a1);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = v6;
  if ((v6 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = 4 * v7 + 63;
  if (__OFADD__(4 * v7, 63))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v11 = *MEMORY[0x277CBF4B8];

  v12 = CGColorSpaceCreateWithName(v11);
  if (v12)
  {
    v13 = v8 & 0xFFFFFFFFFFFFFFC0;
    v14 = (v8 & 0xFFFFFFFFFFFFFFC0) * v5;
    if (((v8 & 0xFFFFFFFFFFFFFFC0) * v5) >> 64 == v14 >> 63)
    {
      v15 = v12;

      v16 = sub_2706936E4((v8 & 0xFFFFFFFFFFFFFFC0) * v5);
      if (v17)
      {
        v18 = v16;
        v19 = v17;
        v20 = __CGBitmapContextCreate(v16, v7, v5, v13, v15);
        if (v20)
        {
          v21 = v20;
          sub_27068EC2C(v20, a4, a5);
          if ((v14 & 0x8000000000000000) == 0)
          {
            MEMORY[0x2743A7730](*MEMORY[0x277D85F48], v18, v14, 1, 1);

            v22 = CGImageCreate(v7, v5, 8uLL, 0x20uLL, v13, v15, 0x2002u, v19, 0, 0, kCGRenderingIntentDefault);

LABEL_18:

            return v22;
          }

          goto LABEL_28;
        }
      }

      else
      {
      }

      v22 = 0;
      goto LABEL_18;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2706936E4(size_t a1)
{
  result = mmap(0, a1, 3, 4098, 0, 0);
  if (result)
  {
    v3 = result;
    if (!CGDataProviderCreateWithData(0, result, a1, sub_27069377C))
    {
      munmap(v3, a1);
      return 0;
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

CGImageRef sub_270693780()
{
  v0 = sub_2706E56AC();
  sub_2706E59AC();
  v1 = sub_2706E598C();

  v2 = CGImageSourceCreateWithData(v0, v1);

  if (!v2)
  {
    return 0;
  }

  sub_2706E59AC();
  v3 = sub_2706E598C();

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v2, 0, v3);

  return ImageAtIndex;
}

uint64_t sub_270693890()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
  v2 = sub_2706E5A0C();
  sub_2706E59AC();
  v3 = sub_2706E598C();

  v4 = CGImageDestinationCreateWithData(v1, v2, 1uLL, v3);

  if (v4)
  {
    if (CGImageGetBitsPerComponent(v0) < 9)
    {
      v8 = 0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF90, &qword_2706E92B8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2706E8FC0;
      v6 = *MEMORY[0x277CD2F38];
      *(inited + 32) = *MEMORY[0x277CD2F38];
      *(inited + 40) = 8;
      type metadata accessor for CFString(0);
      sub_270693A88();
      v7 = v6;
      sub_2706E59AC();
      v8 = sub_2706E598C();
    }

    CGImageDestinationAddImage(v4, v0, v8);
    CGImageDestinationFinalize(v4);
    v10 = v1;
    v9 = sub_2706E56BC();
  }

  else
  {

    return 0;
  }

  return v9;
}

unint64_t sub_270693A88()
{
  result = qword_28081C7B8;
  if (!qword_28081C7B8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081C7B8);
  }

  return result;
}

void sub_270693AF8(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1();
  v7 = sub_2706E557C();

  v8 = [v7 localizedDescription];
  sub_2706E5A3C();
  OUTLINED_FUNCTION_13_2();

  v9 = sub_2706E5E3C();
  sub_27069AC24(v9);
  v11 = v10;

  MEMORY[0x2743A5EF0](0xD00000000000002DLL, 0x80000002706EFC90);
  v28 = v7;

  v12 = sub_2706E58BC();
  LOBYTE(v7) = sub_2706E5BFC();

  if (os_log_type_enabled(v12, v7))
  {
    v13 = OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_2();
    *v13 = 136446979;
    v14 = OUTLINED_FUNCTION_11_2();
    v16 = sub_2706C83E8(v14, v11, v15);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    v17 = [v28 domain];
    sub_2706E5A3C();
    OUTLINED_FUNCTION_9_2();

    v18 = OUTLINED_FUNCTION_11_2();
    v20 = sub_2706C83E8(v18, v5, v19);

    *(v13 + 14) = v20;
    *(v13 + 22) = 2048;
    v21 = [v28 code];

    *(v13 + 24) = v21;
    OUTLINED_FUNCTION_4_2(v22, v23, v24, v25);
    OUTLINED_FUNCTION_5_2();
    *(v13 + 34) = v4;
    OUTLINED_FUNCTION_16_2(&dword_270680000, v26, v27, "%{public}s: %{public}s (%ld) %{private}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_12_0();
  }

  else
  {
  }
}

void sub_270693D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_15_2();
  a21 = v24;
  a22 = v25;
  v27 = v26;
  v29 = v28;
  sub_270694B50();
  v30 = swift_allocError();
  *v31 = v27;
  sub_270694BA4(v27);
  v32 = sub_2706E557C();

  v33 = [v32 localizedDescription];
  sub_2706E5A3C();
  OUTLINED_FUNCTION_13_2();

  v29();
  if (v34)
  {
    v35 = v34;
    v36 = v32;
    OUTLINED_FUNCTION_19_2();
    v37 = sub_2706E58BC();
    sub_2706E5BFC();
    OUTLINED_FUNCTION_18_1();
    if (OUTLINED_FUNCTION_17_1())
    {
      v38 = OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_8_2();
      *v38 = 136446979;
      v39 = OUTLINED_FUNCTION_14_2();
      v41 = sub_2706C83E8(v39, v35, v40);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2082;
      v42 = [v29 domain];
      sub_2706E5A3C();
      OUTLINED_FUNCTION_12_1();
      v44 = v43;

      v45 = OUTLINED_FUNCTION_14_2();
      v47 = sub_2706C83E8(v45, v44, v46);

      *(v38 + 14) = v47;
      *(v38 + 22) = 2048;
      v48 = [v29 code];

      *(v38 + 24) = v48;
      *(v38 + 32) = 2081;
      OUTLINED_FUNCTION_2_1(v49, v50);
      OUTLINED_FUNCTION_5_2();
      *(v38 + 34) = v48;
      OUTLINED_FUNCTION_0_2();
      _os_log_impl(v51, v52, v53, v54, v55, 0x2Au);
      OUTLINED_FUNCTION_10_2();
LABEL_6:
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();

      sub_270688D9C(a9);
      OUTLINED_FUNCTION_1_2();
      return;
    }
  }

  else
  {
    v56 = v32;
    OUTLINED_FUNCTION_19_2();
    v37 = sub_2706E58BC();
    sub_2706E5BFC();
    OUTLINED_FUNCTION_18_1();
    if (OUTLINED_FUNCTION_17_1())
    {
      v57 = swift_slowAlloc();
      swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      *v57 = 136446723;
      v58 = [v29 domain];
      OUTLINED_FUNCTION_12_1();
      v60 = v59;
      sub_2706E5A3C();
      OUTLINED_FUNCTION_9_2();

      v61 = sub_2706C83E8(v22, v23, &a10);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2048;
      v62 = [v29 code];

      *(v57 + 14) = v62;
      *(v57 + 22) = 2081;
      OUTLINED_FUNCTION_2_1(v63, v64);
      OUTLINED_FUNCTION_5_2();
      *(v57 + 24) = v62;
      OUTLINED_FUNCTION_0_2();
      _os_log_impl(v65, v66, v67, v68, v69, 0x20u);
      OUTLINED_FUNCTION_10_2();
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_1_2();

  sub_270688D9C(v70);
}

void sub_2706940CC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1();
  v7 = sub_2706E557C();

  v8 = [v7 localizedDescription];
  sub_2706E5A3C();
  OUTLINED_FUNCTION_13_2();

  sub_2706E5E3C();
  sub_2706CD480();
  v10 = v9;

  MEMORY[0x2743A5EF0](0xD00000000000001FLL, 0x80000002706EFC70);
  v27 = v7;

  v11 = sub_2706E58BC();
  LOBYTE(v7) = sub_2706E5BFC();

  if (os_log_type_enabled(v11, v7))
  {
    v12 = OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_2();
    *v12 = 136446979;
    v13 = OUTLINED_FUNCTION_11_2();
    v15 = sub_2706C83E8(v13, v10, v14);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    v16 = [v27 domain];
    sub_2706E5A3C();
    OUTLINED_FUNCTION_9_2();

    v17 = OUTLINED_FUNCTION_11_2();
    v19 = sub_2706C83E8(v17, v5, v18);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2048;
    v20 = [v27 code];

    *(v12 + 24) = v20;
    OUTLINED_FUNCTION_4_2(v21, v22, v23, v24);
    OUTLINED_FUNCTION_5_2();
    *(v12 + 34) = v4;
    OUTLINED_FUNCTION_16_2(&dword_270680000, v25, v26, "%{public}s: %{public}s (%ld) %{private}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_12_0();
  }

  else
  {
  }
}

void sub_270694348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_15_2();
  a21 = v24;
  a22 = v25;
  v27 = v26;
  v28 = sub_2706E557C();
  v29 = [v28 localizedDescription];
  sub_2706E5A3C();
  OUTLINED_FUNCTION_13_2();

  v27();
  if (v30)
  {
    v31 = v30;
    v32 = v28;
    OUTLINED_FUNCTION_19_2();
    v33 = sub_2706E58BC();
    sub_2706E5BFC();
    OUTLINED_FUNCTION_18_1();
    if (OUTLINED_FUNCTION_17_1())
    {
      v34 = OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_8_2();
      *v34 = 136446979;
      v35 = OUTLINED_FUNCTION_14_2();
      v37 = sub_2706C83E8(v35, v31, v36);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2082;
      v38 = [v28 domain];
      sub_2706E5A3C();
      OUTLINED_FUNCTION_12_1();
      v40 = v39;

      v41 = OUTLINED_FUNCTION_14_2();
      v43 = sub_2706C83E8(v41, v40, v42);

      *(v34 + 14) = v43;
      *(v34 + 22) = 2048;
      v44 = [v28 code];

      *(v34 + 24) = v44;
      *(v34 + 32) = 2081;
      OUTLINED_FUNCTION_2_1(v45, v46);
      OUTLINED_FUNCTION_5_2();
      *(v34 + 34) = v44;
      OUTLINED_FUNCTION_0_2();
      _os_log_impl(v47, v48, v49, v50, v51, 0x2Au);
      OUTLINED_FUNCTION_10_2();
LABEL_6:
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();

      OUTLINED_FUNCTION_1_2();
      return;
    }
  }

  else
  {
    v52 = v28;
    OUTLINED_FUNCTION_19_2();
    v33 = sub_2706E58BC();
    sub_2706E5BFC();
    OUTLINED_FUNCTION_18_1();
    if (OUTLINED_FUNCTION_17_1())
    {
      v53 = swift_slowAlloc();
      swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      *v53 = 136446723;
      v54 = [v28 domain];
      OUTLINED_FUNCTION_12_1();
      v56 = v55;
      sub_2706E5A3C();
      OUTLINED_FUNCTION_9_2();

      v57 = sub_2706C83E8(v22, v23, &a10);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2048;
      v58 = [v28 code];

      *(v53 + 14) = v58;
      *(v53 + 22) = 2081;
      OUTLINED_FUNCTION_2_1(v59, v60);
      OUTLINED_FUNCTION_5_2();
      *(v53 + 24) = v58;
      OUTLINED_FUNCTION_0_2();
      _os_log_impl(v61, v62, v63, v64, v65, 0x20u);
      OUTLINED_FUNCTION_10_2();
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_1_2();
}

void sub_270694664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_15_2();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26();
  v28 = sub_2706E557C();

  v29 = [v28 localizedDescription];
  v30 = sub_2706E5A3C();
  v32 = v31;

  v33 = v25();
  if (v34)
  {
    v35 = v33;
    v36 = v34;
    v59 = v28;

    v37 = sub_2706E58BC();
    v38 = sub_2706E5BFC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_7_1();
      a10 = OUTLINED_FUNCTION_6_2();
      *v39 = 136446979;
      v40 = sub_2706C83E8(v35, v36, &a10);

      *(v39 + 4) = v40;
      *(v39 + 12) = 2082;
      v41 = [v59 domain];
      v42 = sub_2706E5A3C();
      v44 = v43;

      v45 = sub_2706C83E8(v42, v44, &a10);

      *(v39 + 14) = v45;
      *(v39 + 22) = 2048;
      v46 = [v59 code];

      *(v39 + 24) = v46;
      *(v39 + 32) = 2081;
      v47 = sub_2706C83E8(v30, v32, &a10);

      *(v39 + 34) = v47;
      _os_log_impl(&dword_270680000, v37, v38, "%{public}s: %{public}s (%ld) %{private}s", v39, 0x2Au);
LABEL_6:
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();

      OUTLINED_FUNCTION_1_2();
      return;
    }
  }

  else
  {
    v59 = v28;

    v37 = sub_2706E58BC();
    v48 = sub_2706E5BFC();

    if (os_log_type_enabled(v37, v48))
    {
      v49 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      *v49 = 136446723;
      v50 = [v59 domain];
      v51 = sub_2706E5A3C();
      v53 = v52;

      v54 = sub_2706C83E8(v51, v53, &a10);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2048;
      v55 = [v59 code];

      *(v49 + 14) = v55;
      *(v49 + 22) = 2081;
      v56 = sub_2706C83E8(v30, v32, &a10);

      *(v49 + 24) = v56;
      _os_log_impl(&dword_270680000, v37, v48, "%{public}s (%ld) %{private}s", v49, 0x20u);
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_1_2();
}

uint64_t sub_270694A74(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2706E58DC();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2706E58CC();
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

unint64_t sub_270694B50()
{
  result = qword_28081CF98;
  if (!qword_28081CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CF98);
  }

  return result;
}

double sub_270694BA4(unint64_t a1)
{
  switch(a1 >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_2_1(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_2706C83E8(v2, v3, va);
}

unint64_t OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *(v6 + 32) = 2081;

  return sub_2706C83E8(v5, v4, va);
}

uint64_t OUTLINED_FUNCTION_5_2()
{
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_16_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x2Au);
}

BOOL OUTLINED_FUNCTION_17_1()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_18_1()
{
}

uint64_t OUTLINED_FUNCTION_19_2()
{
}

uint64_t sub_270694D88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_8_3(1684632949, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_8_3(0x736D657469, 0xE500000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_12_2();
      v9 = a1 == v7 && a2 == v8;
      if (v9 || (OUTLINED_FUNCTION_8_3(v7, v8) & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7974536567646162 && a2 == 0xEA0000000000656CLL)
      {

        return 3;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_8_3(0x7974536567646162, 0xEA0000000000656CLL);

        if (v11)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_270694EA0(char a1)
{
  result = 1684632949;
  switch(a1)
  {
    case 1:
      result = 0x736D657469;
      break;
    case 2:
      result = OUTLINED_FUNCTION_12_2();
      break;
    case 3:
      result = 0x7974536567646162;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270694F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270694D88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270694F68(uint64_t a1)
{
  v2 = sub_2706980B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270694FA4(uint64_t a1)
{
  v2 = sub_2706980B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270694FE0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = *a4;
  v9 = OBJC_IVAR____TtC13UniversalDrag16DragPresentation_badgeStyle;
  *(v4 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_badgeStyle) = 5;
  v10 = OBJC_IVAR____TtC13UniversalDrag16DragPresentation_uuid;
  sub_2706E576C();
  OUTLINED_FUNCTION_6_0();
  (*(v11 + 32))(v4 + v10, a1);
  *(v4 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_items) = a2;
  *(v4 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_leaderIndex) = a3;
  *(v4 + v9) = v8;
  return v4;
}

uint64_t sub_270695090@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13UniversalDrag16DragPresentation_uuid;
  sub_2706E576C();
  OUTLINED_FUNCTION_6_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

void sub_270695100(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v24 = *(a1 + 8);
  if (*a1 && (v4 = *(v3 + 16)) != 0)
  {
    v5 = 0;
    v6 = OBJC_IVAR____TtC13UniversalDrag16DragPresentation_items;
    v7 = (v3 + 32);
    v8 = 0x28081C000uLL;
    v9 = qword_2808292D8;
    v25 = OBJC_IVAR____TtC13UniversalDrag16DragPresentation_items;
    while (v5 < *(v3 + 16))
    {
      memcpy(__dst, v7, 0x48uLL);
      v10 = *(v2 + v6);
      if (v10 >> 62)
      {
        v11 = sub_2706E5F9C();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = __dst[0];
      if (__dst[0] >= v11)
      {
        if (*(v8 + 1840) != -1)
        {
          swift_once();
        }

        v14 = sub_2706E58DC();
        __swift_project_value_buffer(v14, v9);
        v15 = sub_2706E58BC();
        v16 = sub_2706E5C1C();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = v2;
          v18 = v3;
          v19 = v4;
          v20 = v9;
          v21 = v8;
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_270680000, v15, v16, "Received an update for an item outside our known range -- ignoring it.", v22, 2u);
          v23 = v22;
          v8 = v21;
          v9 = v20;
          v4 = v19;
          v3 = v18;
          v2 = v17;
          v6 = v25;
          MEMORY[0x2743A75B0](v23, -1, -1);
        }
      }

      else
      {
        v13 = *(v2 + v6);
        if ((v13 & 0xC000000000000001) != 0)
        {
          sub_27069111C(__dst, v26);

          MEMORY[0x2743A62C0](v12, v13);
        }

        else
        {
          if ((__dst[0] & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          if (__dst[0] >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          sub_27069111C(__dst, v26);
        }

        sub_2706A7BB0(__dst);
        sub_270691178(__dst);
      }

      ++v5;
      v7 += 72;
      if (v4 == v5)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_22:
    if (v24 != 5)
    {
      *(v2 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_badgeStyle) = v24;
    }
  }
}

uint64_t sub_27069536C()
{
  v1 = OBJC_IVAR____TtC13UniversalDrag16DragPresentation_uuid;
  sub_2706E576C();
  OUTLINED_FUNCTION_6_0();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_270695410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_60();
  v47 = v26;
  v48 = v27;
  v29 = v28;
  v30 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v46 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D128, &qword_2706E9A50);
  OUTLINED_FUNCTION_4();
  v38 = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v39);
  v41 = &v46 - v40;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_2706980B0();
  v42 = v47;
  sub_2706E66AC();
  (*(v32 + 16))(v35, v42 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_uuid, v30);
  OUTLINED_FUNCTION_4_3();
  sub_2706981A0(v43, v44, MEMORY[0x277CC95F8]);
  v45 = v48;
  sub_2706E60DC();
  if (v45)
  {
    (*(v32 + 8))(v35, v30);
  }

  else
  {
    (*(v32 + 8))(v35, v30);
    v49 = *(v42 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_items);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D110, &qword_2706E9A48);
    sub_270698104(&qword_28081D130, &qword_28081D138, &unk_2706EA390, MEMORY[0x277D83948]);
    sub_2706E60DC();
    OUTLINED_FUNCTION_13_3();
    sub_2706E60CC();
    sub_270697FE0();
    sub_2706E609C();
  }

  (*(v38 + 8))(v41, v36);
  OUTLINED_FUNCTION_55();
}

void sub_270695784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_60();
  v29 = v28;
  v30 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v50 = v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v47 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D100, &qword_2706E9A40);
  OUTLINED_FUNCTION_4();
  v36 = v35;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v37);
  v38 = OBJC_IVAR____TtC13UniversalDrag16DragPresentation_badgeStyle;
  v52 = v26;
  v53 = v29;
  *(v26 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_badgeStyle) = 5;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_2706980B0();
  sub_2706E668C();
  if (v27)
  {
    type metadata accessor for DragPresentation(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v48 = v38;
    v49 = v36;
    v39 = v50;
    OUTLINED_FUNCTION_4_3();
    sub_2706981A0(v40, v41, MEMORY[0x277CC9618]);
    sub_2706E605C();
    v42 = *(v39 + 32);
    v43 = v52;
    v47 = OBJC_IVAR____TtC13UniversalDrag16DragPresentation_uuid;
    v42(v52 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_uuid, v34, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D110, &qword_2706E9A48);
    sub_270698104(&qword_28081D118, &qword_28081D120, &unk_2706EA3B8, MEMORY[0x277D83978]);
    sub_2706E605C();
    *(v43 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_items) = v54;
    OUTLINED_FUNCTION_13_3();
    *(v43 + OBJC_IVAR____TtC13UniversalDrag16DragPresentation_leaderIndex) = sub_2706E604C();
    sub_270697EC0();
    v44 = v51;
    sub_2706E601C();
    v45 = OUTLINED_FUNCTION_3_2();
    v46(v45, v44);
    *(v43 + v48) = a13;
  }

  __swift_destroy_boxed_opaque_existential_1(v53);
  OUTLINED_FUNCTION_55();
}

uint64_t sub_270695B9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_270695734(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_270695C24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636972656E6567 && a2 == 0xE700000000000000;
  if (v4 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 2037411683 && a2 == 0xE400000000000000;
    if (v6 || (sub_2706E631C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x776F6C6C41746F6ELL && a2 == 0xEA00000000006465;
      if (v7 || (sub_2706E631C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1802398060 && a2 == 0xE400000000000000;
        if (v8 || (sub_2706E631C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6574656C6564 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_2706E631C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_270695DD0(char a1)
{
  result = 0x636972656E6567;
  switch(a1)
  {
    case 1:
      result = 2037411683;
      break;
    case 2:
      result = 0x776F6C6C41746F6ELL;
      break;
    case 3:
      result = 1802398060;
      break;
    case 4:
      result = 0x6574656C6564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270695E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270695C24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270695EA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270695DC8();
  *a1 = result;
  return result;
}

uint64_t sub_270695EC8(uint64_t a1)
{
  v2 = sub_2706965EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270695F04(uint64_t a1)
{
  v2 = sub_2706965EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270695F40(uint64_t a1)
{
  v2 = sub_27069673C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270695F7C(uint64_t a1)
{
  v2 = sub_27069673C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270695FB8(uint64_t a1)
{
  v2 = sub_270696640();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270695FF4(uint64_t a1)
{
  v2 = sub_270696640();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270696030(uint64_t a1)
{
  v2 = sub_270696790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27069606C(uint64_t a1)
{
  v2 = sub_270696790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706960A8(uint64_t a1)
{
  v2 = sub_270696694();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706960E4(uint64_t a1)
{
  v2 = sub_270696694();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270696120(uint64_t a1)
{
  v2 = sub_2706966E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27069615C(uint64_t a1)
{
  v2 = sub_2706966E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void DragBadgeStyle.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CFA0, &qword_2706E92D0);
  OUTLINED_FUNCTION_4();
  v72 = v28;
  v73 = v27;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_13();
  v71 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CFA8, &qword_2706E92D8);
  OUTLINED_FUNCTION_4();
  v69 = v32;
  v70 = v31;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_13();
  v68 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CFB0, &qword_2706E92E0);
  OUTLINED_FUNCTION_4();
  v66 = v36;
  v67 = v35;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_13();
  v65 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CFB8, &qword_2706E92E8);
  OUTLINED_FUNCTION_4();
  v63 = v40;
  v64 = v39;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_13();
  v62 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CFC0, &qword_2706E92F0);
  OUTLINED_FUNCTION_4();
  v60 = v44;
  v61 = v43;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v45);
  v47 = &v59 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CFC8, &qword_2706E92F8);
  OUTLINED_FUNCTION_4();
  v50 = v49;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v51);
  v53 = &v59 - v52;
  v54 = *v24;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_2706965EC();
  sub_2706E66AC();
  v55 = (v50 + 8);
  switch(v54)
  {
    case 1:
      sub_27069673C();
      v56 = v62;
      OUTLINED_FUNCTION_5_3(&type metadata for DragBadgeStyle.CopyCodingKeys);
      v58 = v63;
      v57 = v64;
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_13_3();
      sub_2706966E8();
      v56 = v65;
      OUTLINED_FUNCTION_5_3(&type metadata for DragBadgeStyle.NotAllowedCodingKeys);
      v58 = v66;
      v57 = v67;
      goto LABEL_7;
    case 3:
      sub_270696694();
      v56 = v68;
      OUTLINED_FUNCTION_5_3(&type metadata for DragBadgeStyle.LinkCodingKeys);
      v58 = v69;
      v57 = v70;
      goto LABEL_7;
    case 4:
      sub_270696640();
      v56 = v71;
      OUTLINED_FUNCTION_5_3(&type metadata for DragBadgeStyle.DeleteCodingKeys);
      v58 = v72;
      v57 = v73;
LABEL_7:
      (*(v58 + 8))(v56, v57);
      break;
    default:
      sub_270696790();
      sub_2706E608C();
      (*(v60 + 8))(v47, v61);
      break;
  }

  (*v55)(v53, v48);
  OUTLINED_FUNCTION_55();
}

unint64_t sub_2706965EC()
{
  result = qword_28081CFD0;
  if (!qword_28081CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CFD0);
  }

  return result;
}

unint64_t sub_270696640()
{
  result = qword_28081CFD8;
  if (!qword_28081CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CFD8);
  }

  return result;
}

unint64_t sub_270696694()
{
  result = qword_28081CFE0;
  if (!qword_28081CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CFE0);
  }

  return result;
}

unint64_t sub_2706966E8()
{
  result = qword_28081CFE8;
  if (!qword_28081CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CFE8);
  }

  return result;
}

unint64_t sub_27069673C()
{
  result = qword_28081CFF0;
  if (!qword_28081CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CFF0);
  }

  return result;
}