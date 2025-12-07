unint64_t sub_25298594C()
{
  result = qword_27F540C28;
  if (!qword_27F540C28)
  {
    result = swift_getWitnessTable(byte_252E3E0E8, &type metadata for HomeAutomationIntentCodingKeys, v0, v1);
    atomic_store(result, &qword_27F540C28);
  }

  return result;
}

unint64_t sub_2529859A4()
{
  result = qword_27F540C30;
  if (!qword_27F540C30)
  {
    result = swift_getWitnessTable(byte_252E3E020, &type metadata for HomeAutomationIntentCodingKeys, v0, v1);
    atomic_store(result, &qword_27F540C30);
  }

  return result;
}

unint64_t sub_2529859FC()
{
  result = qword_27F540C38;
  if (!qword_27F540C38)
  {
    result = swift_getWitnessTable(byte_252E3E048, &type metadata for HomeAutomationIntentCodingKeys, v0, v1);
    atomic_store(result, &qword_27F540C38);
  }

  return result;
}

unint64_t sub_252985A50(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37DE4();

  if (v2 >= 0x39)
  {
    return 57;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252985AA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  result = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  if (v6)
  {
    v18 = sub_252E36324();
    v7 = *(v18 - 8);
    v8 = *(v7 + 16);
    v20 = v7 + 16;
    v21 = v8;
    v9 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v19 = *(v7 + 72);
    v10 = (v7 + 56);
    do
    {
      v11 = v18;
      v21(v4, v9, v18);
      v12 = *v10;
      (*v10)(v4, 0, 1, v11);
      type metadata accessor for HomeAutomationHomeLocation.Builder(0);
      v13 = swift_allocObject();
      v14 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
      v12(v13 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v11);
      swift_beginAccess();
      sub_252956BAC(v4, v13 + v14);
      swift_endAccess();
      sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
      type metadata accessor for HomeAutomationHomeLocation(0);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      sub_252938414(v13 + v14, v15 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, &qword_27F540298, &unk_252E3C270);
      swift_setDeallocating();
      sub_25293847C(v13 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
      v16 = swift_deallocClassInstance();
      MEMORY[0x2530AD700](v16);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17[1] = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v9 += v19;
      --v6;
    }

    while (v6);
    return v22;
  }

  return result;
}

uint64_t sub_252985D44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (v2)
  {
    v4 = "ues";
  }

  else
  {
    v4 = "withGenitiveArticle";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (*a2)
  {
    v7 = "withGenitiveArticle";
  }

  else
  {
    v7 = "ues";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252985DF0()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252985E70(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252985EDC(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252985F58@<X0>(char *a2@<X8>)
{
  v3 = sub_252E37B74();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_252985FB8(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (*v1)
  {
    v3 = "withGenitiveArticle";
  }

  else
  {
    v3 = "ues";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_252985FF8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_252E33CB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E33A74();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = sub_252E33C74();
  if (*(v13 + 16))
  {
    (*(v3 + 16))(v5, v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

    sub_252E33CA4();
    (*(v3 + 8))(v5, v2);
    (*(v7 + 32))(v12, v10, v6);
    sub_252E33A64();
    sub_252E33A54();
    sub_252E362F4();
    (*(v7 + 8))(v12, v6);
    v14 = sub_252E36324();
    return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
  }

  else
  {

    v16 = sub_252E36324();
    v17 = *(*(v16 - 8) + 56);

    return v17(a1, 1, 1, v16);
  }
}

uint64_t sub_2529862C8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_252E33C84();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v29 - v16;
  _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v15);
  swift_beginAccess();

  v34 = a1;
  sub_252E37024();

  v18 = sub_252E36324();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v20(v10, 0, 1, v18);
  (*(v19 + 16))(v8, v36, v18);
  v33 = v20;
  v20(v8, 0, 1, v18);
  sub_252BFDFA0(v10, v8);

  sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
  sub_252938414(v17, v14, &qword_27F540330, &unk_252E3C7F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v14;
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v22 = sub_252E36AD4();
    __swift_project_value_buffer(v22, qword_27F544D18);
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E6CF40);
    LOBYTE(v37) = v34 & 1;
    sub_252E37AE4();
    MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E6CF60);
    v23 = sub_252E36304();
    MEMORY[0x2530AD570](v23);

    MEMORY[0x2530AD570](0x203A726F72724520, 0xE900000000000020);
    v37 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC3D90(v38, v39, 0xD00000000000007BLL, 0x8000000252E6CF80);

    sub_25293847C(v17, &qword_27F540330, &unk_252E3C7F0);
    return v33(v35, 1, 1, v18);
  }

  else
  {
    v25 = v30;
    v26 = v31;
    v27 = v14;
    v28 = v32;
    (*(v31 + 32))(v30, v27, v32);
    sub_252985FF8(v35);
    (*(v26 + 8))(v25, v28);
    return sub_25293847C(v17, &qword_27F540330, &unk_252E3C7F0);
  }
}

uint64_t getEnumTagSinglePayload for DeltaSemantic(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeltaSemantic(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25298695C()
{
  result = qword_27F540C40;
  if (!qword_27F540C40)
  {
    result = swift_getWitnessTable(aP8, &type metadata for InflectionType, v0, v1);
    atomic_store(result, &qword_27F540C40);
  }

  return result;
}

uint64_t sub_2529869B0()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationAccessoryIcon7Builder_name);
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationAccessoryIcon7Builder_color);

  return swift_deallocClassInstance();
}

uint64_t *sub_252986A24(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  *(v1 + 16) = 0;
  v9 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationAccessoryIcon7Builder_name;
  swift_beginAccess();
  sub_252956C1C(a1 + v9, v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationAccessoryIcon_name);
  v10 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationAccessoryIcon7Builder_color;
  swift_beginAccess();
  sub_252956C1C(a1 + v10, v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationAccessoryIcon_color);
  sub_252956C1C(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationAccessoryIcon_name, v8);
  v11 = sub_252E36324();
  v12 = *(*(v11 - 8) + 48);
  v13 = v12(v8, 1, v11);
  sub_252938BBC(v8);
  if (v13 != 1)
  {
    sub_252956C1C(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationAccessoryIcon_color, v6);
    if (v12(v6, 1, v11) != 1)
    {

      sub_252938BBC(v6);
      return v1;
    }

    sub_252938BBC(v6);
  }

  v14 = sub_252E36384();
  sub_252E374D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_252E3C290;
  v20[1] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540C88, &qword_252E3E340);
  v16 = sub_252E36F94();
  v18 = v17;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_252987BC8();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  sub_252E36A64("Building an instance of %s without all required inputs", v20[0]);

  return v1;
}

uint64_t sub_252986CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationAccessoryIcon_name, v12);
    v13 = sub_252E36324();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      v15 = v12;
LABEL_6:
      result = sub_252938BBC(v15);
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v13;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(v14 + 32))(boxed_opaque_existential_0, v12, v13);
  }

  else
  {
    if (a1 != 0x726F6C6F63 || a2 != 0xE500000000000000)
    {
      result = sub_252E37DB4();
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationAccessoryIcon_color, v10);
    v18 = sub_252E36324();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v10, 1, v18) == 1)
    {
      v15 = v10;
      goto LABEL_6;
    }

    *(a3 + 24) = v18;
    v20 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(v19 + 32))(v20, v10, v18);
  }
}

uint64_t sub_252986F48(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F6C6F63;
  }

  else
  {
    v3 = 1701667182;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x726F6C6F63;
  }

  else
  {
    v5 = 1701667182;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252986FE4()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_25298705C(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_2529870C0(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252987134@<X0>(char *a2@<X8>)
{
  v3 = sub_252E37B74();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_252987194(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (*v1)
  {
    v2 = 0x726F6C6F63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2529871C8()
{
  if (*v0)
  {
    return 0x726F6C6F63;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_2529871F8@<X0>(char *a3@<X8>)
{
  v4 = sub_252E37B74();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_25298725C(uint64_t a1)
{
  v2 = sub_252987B74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252987298(uint64_t a1)
{
  v2 = sub_252987B74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2529872D4()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationAccessoryIcon_name);
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationAccessoryIcon_color);

  return swift_deallocClassInstance();
}

void sub_252987378(uint64_t a1)
{
  sub_2529576E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_252987414(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540C98, &qword_252E3E348);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252987B74();
  sub_252E37F84();
  v8[15] = 0;
  sub_252E36324();
  sub_252987B2C(&qword_27F540548, MEMORY[0x277D55C48], MEMORY[0x277D55C50]);
  sub_252E37CD4();
  if (!v1)
  {
    v8[14] = 1;
    sub_252E37CD4();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_252987620(uint64_t a1)
{
  sub_2529576E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id *sub_2529876B0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v16 = &v14 - v8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540C78, &unk_252E3E330);
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v14 - v10;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252987B74();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for HomeAutomationAccessoryIcon(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v9;
    sub_252E36324();
    v19 = 0;
    sub_252987B2C(&qword_27F540538, MEMORY[0x277D55C48], MEMORY[0x277D55C60]);
    v12 = v16;
    sub_252E37BE4();
    sub_2529439A0(v12, v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationAccessoryIcon_name);
    v18 = 1;
    sub_252E37BE4();
    (*(v15 + 8))(v11, v17);
    sub_2529439A0(v7, v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationAccessoryIcon_color);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

id *sub_252987A1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for HomeAutomationAccessoryIcon(0);
  v5 = swift_allocObject();
  result = sub_2529876B0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_252987B2C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252987B74()
{
  result = qword_27F540C80;
  if (!qword_27F540C80)
  {
    result = swift_getWitnessTable(byte_252E3E44C, &type metadata for HomeAutomationAccessoryIcon.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540C80);
  }

  return result;
}

unint64_t sub_252987BC8()
{
  result = qword_27F540C90;
  if (!qword_27F540C90)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9C00], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_27F540C90);
  }

  return result;
}

unint64_t sub_252987C30()
{
  result = qword_27F540CA0;
  if (!qword_27F540CA0)
  {
    result = swift_getWitnessTable(byte_252E3E424, &type metadata for HomeAutomationAccessoryIcon.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540CA0);
  }

  return result;
}

unint64_t sub_252987C88()
{
  result = qword_27F540CA8;
  if (!qword_27F540CA8)
  {
    result = swift_getWitnessTable(aE_0, &type metadata for HomeAutomationAccessoryIcon.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540CA8);
  }

  return result;
}

unint64_t sub_252987CE0()
{
  result = qword_27F540CB0;
  if (!qword_27F540CB0)
  {
    result = swift_getWitnessTable(aU, &type metadata for HomeAutomationAccessoryIcon.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540CB0);
  }

  return result;
}

uint64_t sub_252987D34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_252987D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[38] = a6;
  v7[39] = a7;
  v7[36] = a4;
  v7[37] = a5;
  return MEMORY[0x2822009F8](sub_252987D9C, 0, 0);
}

uint64_t sub_252987D9C(uint64_t a1)
{
  sub_252C4B778(a1);
  if (qword_27F53F498 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v2 = *(v1 + 288);
    v3 = sub_252E36AD4();
    *(v1 + 320) = v3;
    *(v1 + 328) = __swift_project_value_buffer(v3, qword_27F544C70);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000066, 0x8000000252E6D140);
    v4 = [v2 description];
    v5 = sub_252E36F34();
    v7 = v6;

    MEMORY[0x2530AD570](v5, v7);

    sub_252CC3D90(0, 0xE000000000000000, 0xD0000000000000A1, 0x8000000252E6D1B0);

    v8 = [v2 userTask];
    *(v1 + 336) = v8;
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = v8;
    v10 = [*(v1 + 288) filters];
    if (!v10)
    {
      goto LABEL_6;
    }

    v11 = v10;
    type metadata accessor for HomeFilter();
    v12 = sub_252E37264();

    v13 = type metadata accessor for HomeStore(0);
    v14 = static HomeStore.shared.getter(v13);
    v15 = HomeStore.services(matching:supporting:)(v12, 0);
    v17 = v16;

    *(v1 + 344) = v15;
    if (v17)
    {
      sub_252929F10(v15, 1);
LABEL_6:

LABEL_7:
      v18 = sub_252E36AC4();
      v19 = sub_252E374D4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_252917000, v18, v19, "Failed to retrieve list of targeted accessories from intent filters.", v20, 2u);
        MEMORY[0x2530AED00](v20, -1, -1);
      }

      v21 = *(v1 + 296);

      type metadata accessor for ControlHomeIntentResponse.Builder();
      v22 = swift_allocObject();
      v23 = MEMORY[0x277D84F90];
      *(v22 + 16) = 102;
      *(v22 + 24) = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C290;
      type metadata accessor for HomeEntity.Builder();
      swift_allocObject();
      v25.n128_f64[0] = HomeEntity.Builder.init()();
      v27 = (*(*v26 + 448))(v25);

      v28 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
      v29 = v27;
      v30 = sub_252E36F04();
      v31 = [v28 initWithIdentifier:0 displayString:v30];

      v32 = v31;
      [v32 setEntity_];
      type metadata accessor for HomeUserTaskResponse();
      v33 = sub_252E37254();
      [v32 setTaskResponses_];

      *(inited + 32) = v32;
      v34 = sub_25297D0C0(inited);

      swift_setDeallocating();
      v35 = sub_25298AB24(inited + 32);
      v36 = (*(*v34 + 176))(v35);

      v21(v36);

      v37 = *(v1 + 8);

      return v37();
    }

    v70 = v1;
    v71 = MEMORY[0x277D84F90];
    v1 = v15 & 0xFFFFFFFFFFFFFF8;
    v39 = v15 >> 62 ? sub_252E378C4() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v40 = MEMORY[0x277D84F90];
    if (!v39)
    {
      break;
    }

    v41 = 0;
    while ((v15 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x2530ADF00](v41, v15);
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_54;
      }

LABEL_22:
      v44 = [*(v42 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v45 = sub_252E36F34();
      v47 = v46;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v48 = off_27F546230;
      if (*(off_27F546230 + 2) && (v49 = sub_252A44A10(v45, v47), (v50 & 1) != 0))
      {
        v51 = *(v48[7] + 8 * v49);

        if (v51 == 29)
        {
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          goto LABEL_18;
        }
      }

      else
      {
      }

LABEL_18:
      ++v41;
      if (v43 == v39)
      {
        v52 = v71;
        v40 = MEMORY[0x277D84F90];
        goto LABEL_33;
      }
    }

    if (v41 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_55;
    }

    v42 = *(v15 + 8 * v41 + 32);

    v43 = v41 + 1;
    if (!__OFADD__(v41, 1))
    {
      goto LABEL_22;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

  v52 = MEMORY[0x277D84F90];
LABEL_33:
  v69 = sub_252C421E8(v52);

  v72 = v40;
  if (!v39)
  {
    goto LABEL_51;
  }

  v53 = 0;
  while (2)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x2530ADF00](v53, v15);
      v55 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v53 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v54 = *(v15 + 8 * v53 + 32);

      v55 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        goto LABEL_56;
      }
    }

    v56 = [*(v54 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v57 = sub_252E36F34();
    v59 = v58;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v60 = off_27F546230;
    if (!*(off_27F546230 + 2) || (v61 = sub_252A44A10(v57, v59), (v62 & 1) == 0))
    {

LABEL_36:

      goto LABEL_37;
    }

    v63 = *(v60[7] + 8 * v61);

    if (v63 != 3)
    {
      goto LABEL_36;
    }

    sub_252E37A94();
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
LABEL_37:
    ++v53;
    if (v55 != v39)
    {
      continue;
    }

    break;
  }

  v40 = v72;
LABEL_51:
  v64 = sub_252C421E8(v40);

  sub_252E379F4();

  v65 = type metadata accessor for DeviceEntity(0);
  v66 = MEMORY[0x2530AD730](v69, v65);
  MEMORY[0x2530AD570](v66);

  sub_252CC3D90(0xD000000000000022, 0x8000000252E6D260, 0xD0000000000000A1, 0x8000000252E6D1B0);

  sub_252E379F4();

  v67 = MEMORY[0x2530AD730](v64, v65);
  MEMORY[0x2530AD570](v67);

  sub_252CC3D90(0xD000000000000020, 0x8000000252E6D290, 0xD0000000000000A1, 0x8000000252E6D1B0);

  sub_25297B2E8(v64);
  *(v70 + 352) = v69;
  v68 = swift_task_alloc();
  *(v70 + 360) = v68;
  *v68 = v70;
  v68[1] = sub_2529886D4;

  return sub_252989624(v69);
}

uint64_t sub_2529886D4(uint64_t a1)
{
  *(*v1 + 368) = a1;

  return MEMORY[0x2822009F8](sub_2529887D4, 0, 0);
}

uint64_t sub_2529887D4()
{
  v95 = v0;
  v1 = *(v0 + 368);
  if (!v1)
  {
    sub_252929F10(*(v0 + 344), 0);
LABEL_7:
    v7 = *(v0 + 336);
    v8 = *(v0 + 296);

    type metadata accessor for ControlHomeIntentResponse.Builder();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D84F90];
    *(v9 + 16) = 5;
    *(v9 + 24) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    type metadata accessor for HomeEntity.Builder();
    swift_allocObject();
    v12.n128_f64[0] = HomeEntity.Builder.init()();
    v14 = (*(*v13 + 448))(v12);

    v15 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
    v16 = v14;
    v17 = sub_252E36F04();
    v18 = [v15 initWithIdentifier:0 displayString:v17];

    v19 = v18;
    [v19 setEntity_];
    type metadata accessor for HomeUserTaskResponse();
    v20 = sub_252E37254();
    [v19 setTaskResponses_];

    *(inited + 32) = v19;
    v21 = sub_25297D0C0(inited);

    swift_setDeallocating();
    v22 = sub_25298AB24(inited + 32);
    v23 = (*(*v21 + 176))(v22);

    v8(v23);
LABEL_8:

    v24 = *(v0 + 8);

    return v24();
  }

  v2 = sub_252C7092C(*(v0 + 368));
  if (v3)
  {
    v4 = *(v0 + 344);
LABEL_6:
    sub_252929F10(v4, 0);

    goto LABEL_7;
  }

  v5 = *&v2;
  v6 = sub_2529355B8(v1);
  v4 = *(v0 + 344);
  if (v6 == 6)
  {
    goto LABEL_6;
  }

  v26 = *(v0 + 312);
  v27 = *(v0 + 288);
  v28 = v5;
  v91 = *(v0 + 344);
  v89 = sub_252C70938(v1);
  v86 = v29;
  v87 = sub_252C70944(v1);
  v31 = v30;

  v32 = (*(*v26 + 168))(v27, v6, v28);
  *(v0 + 376) = v32;
  sub_252E379F4();

  v93 = 0xD000000000000016;
  v94 = 0x8000000252E6D2C0;
  *(v0 + 216) = v32;
  v85 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD0, &unk_252E3E540);
  v33 = sub_252E36F94();
  MEMORY[0x2530AD570](v33);

  sub_252CC3D90(v93, v94, 0xD0000000000000A1, 0x8000000252E6D1B0);

  v34 = (*(*v26 + 176))(v27, v32, v89, v86 & 1, v87, v31 & 1, v28);
  v35 = v34;
  sub_252E379F4();

  v93 = 0xD00000000000001DLL;
  v94 = 0x8000000252E6D2E0;
  *(v0 + 224) = v34;
  v36 = sub_252E36F94();
  MEMORY[0x2530AD570](v36);

  sub_252CC3D90(v93, v94, 0xD0000000000000A1, 0x8000000252E6D1B0);

  v37 = sub_25298AE30(v34, v91);
  *(v0 + 384) = v37;
  sub_252929F10(v91, 0);

  v38 = v37;
  sub_252E379F4();

  v93 = 0xD00000000000002DLL;
  v94 = 0x8000000252E6D300;
  *(v0 + 232) = v37;
  v39 = sub_252E36F94();
  MEMORY[0x2530AD570](v39);

  v40 = v32;
  sub_252CC3D90(v93, v94, 0xD0000000000000A1, 0x8000000252E6D1B0);

  v41 = sub_252BFA054(v37, v32);

  if (!v41)
  {

    if (qword_27F53F4B8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 320), qword_27F544CD0);
    v58 = v85;
    v23 = v38;
    v59 = sub_252E36AC4();
    v60 = sub_252E374D4();

    v90 = v58;
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v93 = v88;
      *v61 = 136315394;
      *(v0 + 240) = v37;
      v62 = v23;
      v63 = sub_252E36F94();
      v65 = sub_252BE2CE0(v63, v64, &v93);

      *(v61 + 4) = v65;
      *(v61 + 12) = 2080;
      *(v0 + 248) = v40;
      v66 = v58;
      v67 = sub_252E36F94();
      v69 = sub_252BE2CE0(v67, v68, &v93);

      *(v61 + 14) = v69;
      _os_log_impl(&dword_252917000, v59, v60, "Couldn't get attributeValue for targetTemperature: %s\ntargetMode: %s", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v88, -1, -1);
      MEMORY[0x2530AED00](v61, -1, -1);
    }

    v92 = *(v0 + 336);
    v70 = *(v0 + 296);
    type metadata accessor for ControlHomeIntentResponse.Builder();
    v71 = swift_allocObject();
    v72 = MEMORY[0x277D84F90];
    *(v71 + 16) = 5;
    *(v71 + 24) = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
    v73 = swift_initStackObject();
    *(v73 + 16) = xmmword_252E3C290;
    type metadata accessor for HomeEntity.Builder();
    swift_allocObject();
    v74.n128_f64[0] = HomeEntity.Builder.init()();
    v76 = (*(*v75 + 448))(v74);

    v77 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
    v78 = v76;
    v79 = sub_252E36F04();
    v80 = [v77 initWithIdentifier:0 displayString:v79];

    v81 = v80;
    [v81 setEntity_];
    type metadata accessor for HomeUserTaskResponse();
    v82 = sub_252E37254();
    [v81 setTaskResponses_];

    *(v73 + 32) = v81;
    v83 = sub_25297D0C0(v73);

    swift_setDeallocating();
    v84 = sub_25298AB24(v73 + 32);
    v7 = (*(*v83 + 176))(v84);

    v70(v7);

    goto LABEL_8;
  }

  v42 = sub_252E36AC4();
  v43 = sub_252E374C4();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v93 = v45;
    *v44 = 136315138;
    v46 = MEMORY[0x2530AD730](v41, &type metadata for Attribute);
    v48 = sub_252BE2CE0(v46, v47, &v93);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_252917000, v42, v43, "Constructed SetAttributeValue %s, performing.", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x2530AED00](v45, -1, -1);
    MEMORY[0x2530AED00](v44, -1, -1);
  }

  v49 = *(v0 + 352);
  *(v0 + 256) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD8, &unk_252E3F900);
  swift_allocObject();
  v50 = sub_252E36754();
  *(v0 + 392) = v50;
  *(v0 + 264) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CE0, &unk_252E3E550);
  swift_allocObject();
  v51 = sub_252E36754();
  *(v0 + 400) = v51;
  *(v0 + 192) = 0;
  *(v0 + 184) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CE8, &unk_252E3F910);
  swift_allocObject();
  v52 = sub_252E36754();
  *(v0 + 408) = v52;
  *(v0 + 272) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CF0, &unk_252E3E560);
  swift_allocObject();
  v53 = sub_252E36754();
  *(v0 + 416) = v53;
  *(v0 + 280) = 0;
  swift_allocObject();
  v54 = sub_252E36754();
  *(v0 + 424) = v54;
  *(v0 + 200) = 0x401C000000000000;
  *(v0 + 208) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CF8, &qword_252E3F920);
  swift_allocObject();
  v55 = sub_252E36754();
  *(v0 + 432) = v55;
  *(v0 + 16) = v50;
  *(v0 + 24) = v51;
  *(v0 + 32) = v52;
  *(v0 + 40) = v53;
  *(v0 + 48) = v54;
  *(v0 + 56) = v55;
  v56 = swift_task_alloc();
  *(v0 + 440) = v56;
  *v56 = v0;
  v56[1] = sub_2529893D8;
  v57 = *(v0 + 288);

  return sub_2529BD264((v0 + 16), v57, 1, 0);
}

uint64_t sub_2529893D8(uint64_t a1)
{
  *(*v1 + 448) = a1;

  return MEMORY[0x2822009F8](sub_252989594, 0, 0);
}

uint64_t sub_252989594()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 376);
  v3 = *(v0 + 336);
  (*(v0 + 296))(v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252989624(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_252989644, 0, 0);
}

uint64_t sub_252989644()
{
  v62 = v0;
  v1 = *(v0 + 152);
  if (v1 >> 62)
  {
    goto LABEL_42;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_43:
    v21 = 1;
    v59 = 1;
    goto LABEL_44;
  }

LABEL_3:
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = *(v0 + 152) + 32;
  while (1)
  {
    if (v4)
    {
      v7 = MEMORY[0x2530ADF00](v3, *(v0 + 152));
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_17:
        __break(1u);
LABEL_18:
        v58 = 1;
        goto LABEL_21;
      }
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        v2 = sub_252E378C4();
        if (!v2)
        {
          goto LABEL_43;
        }

        goto LABEL_3;
      }

      v7 = *(v6 + 8 * v3);

      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_17;
      }
    }

    v1 = *(v7 + qword_27F5427B0);

    sub_252E36744();

    v9 = *(v0 + 113);
    if ((v9 & 0xC000) != 0 || (v9 & 0xC0C0) == 0xC0C0)
    {

      goto LABEL_5;
    }

    v10 = sub_252A97788(v9);
    v1 = v11;
    if (v10 == 0x74736F6D72656874 && v11 == 0xEA00000000007461)
    {
      break;
    }

    v12 = sub_252E37DB4();

    if (v12)
    {
      goto LABEL_20;
    }

LABEL_5:
    ++v3;
    if (v8 == v2)
    {
      goto LABEL_18;
    }
  }

LABEL_20:
  v58 = 0;
LABEL_21:
  v13 = 0;
  v14 = *(v0 + 152) + 32;
  while (2)
  {
    if (v4)
    {
      v15 = MEMORY[0x2530ADF00](v13, *(v0 + 152));
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v13 >= *(v5 + 16))
      {
        goto LABEL_41;
      }

      v15 = *(v14 + 8 * v13);

      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        v59 = 1;
        goto LABEL_39;
      }
    }

    v1 = *(v15 + qword_27F5427B0);

    sub_252E36744();

    v17 = *(v0 + 115);
    if ((v17 & 0xC000) != 0 || (v17 & 0xC0C0) == 0xC0C0)
    {

LABEL_23:
      ++v13;
      if (v16 == v2)
      {
        goto LABEL_36;
      }

      continue;
    }

    break;
  }

  v18 = sub_252A97788(v17);
  v1 = v19;
  if (v18 != 0x6F43726574616568 || v19 != 0xEC00000072656C6FLL)
  {
    v20 = sub_252E37DB4();

    if (v20)
    {
      goto LABEL_38;
    }

    goto LABEL_23;
  }

LABEL_38:
  v59 = 0;
LABEL_39:
  v21 = v58;
LABEL_44:
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 152);
  v23 = sub_252E36AD4();
  *(v0 + 168) = v23;
  *(v0 + 176) = __swift_project_value_buffer(v23, qword_27F544C70);
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E6D370);
  if (v21)
  {
    v24 = 0x65736C6166;
  }

  else
  {
    v24 = 1702195828;
  }

  if (v21)
  {
    v25 = 0xE500000000000000;
  }

  else
  {
    v25 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v24, v25);

  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E6D390);
  if (v59)
  {
    v26 = 0x65736C6166;
  }

  else
  {
    v26 = 1702195828;
  }

  if (v59)
  {
    v27 = 0xE500000000000000;
  }

  else
  {
    v27 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v26, v27);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E6D3B0);
  v28 = type metadata accessor for DeviceEntity(0);
  v29 = MEMORY[0x2530AD730](v22, v28);
  MEMORY[0x2530AD570](v29);

  sub_252CC3D90(v60, v61, 0xD0000000000000A1, 0x8000000252E6D1B0);

  v30 = sub_252E36AC4();
  v31 = sub_252E374C4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v0 + 152);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v60 = v34;
    *v33 = 136315394;
    v35 = MEMORY[0x2530AD730](&unk_2864A85A0, &type metadata for AttributeKind);
    v37 = sub_252BE2CE0(v35, v36, &v60);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    v38 = MEMORY[0x2530AD730](v32, v28);
    v40 = sub_252BE2CE0(v38, v39, &v60);

    *(v33 + 14) = v40;
    _os_log_impl(&dword_252917000, v30, v31, "Sending GetAttributeValueIntent for temperature attribute: %s \n for devices: %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530AED00](v34, -1, -1);
    MEMORY[0x2530AED00](v33, -1, -1);
  }

  v41 = *(v0 + 152);
  *(v0 + 120) = &unk_2864A85A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540D00, &unk_252E3E580);
  swift_allocObject();
  v42 = sub_252E36754();
  *(v0 + 184) = v42;
  *(v0 + 128) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CE0, &unk_252E3E550);
  swift_allocObject();

  v43 = sub_252E36754();
  *(v0 + 192) = v43;
  *(v0 + 96) = 0;
  *(v0 + 88) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CE8, &unk_252E3F910);
  swift_allocObject();
  v44 = sub_252E36754();
  *(v0 + 200) = v44;
  *(v0 + 136) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CF0, &unk_252E3E560);
  swift_allocObject();
  v45 = sub_252E36754();
  *(v0 + 208) = v45;
  *(v0 + 144) = 0;
  swift_allocObject();
  v46 = sub_252E36754();
  *(v0 + 216) = v46;
  *(v0 + 104) = 0x4000000000000000;
  *(v0 + 112) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CF8, &qword_252E3F920);
  swift_allocObject();
  v47 = sub_252E36754();
  *(v0 + 16) = v42;
  *(v0 + 224) = v47;
  *(v0 + 24) = v43;
  *(v0 + 32) = v44;
  *(v0 + 40) = v45;
  *(v0 + 48) = v46;
  *(v0 + 56) = v47;
  type metadata accessor for ControlHomeIntent.Builder();
  swift_allocObject();
  v48 = ControlHomeIntent.Builder.init()();
  v49 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v50 = sub_252E36F04();
  v51 = [v49 initWithIdentifier:0 displayString:v50];

  v52 = v51;
  [v52 setTaskType_];
  [v52 setAttribute_];
  [v52 setValue_];

  v53 = (*(*v48 + 184))(v52);

  v55 = (*(*v53 + 224))(v54);
  *(v0 + 232) = v55;

  v56 = swift_task_alloc();
  *(v0 + 240) = v56;
  *v56 = v0;
  v56[1] = sub_252989F40;

  return sub_2529BC1C0((v0 + 16), v55, 0, 1);
}

uint64_t sub_252989F40(uint64_t a1)
{
  v2 = *(*v1 + 232);
  *(*v1 + 248) = a1;

  return MEMORY[0x2822009F8](sub_25298A11C, 0, 0);
}

uint64_t sub_25298A11C()
{
  v48 = v0;
  v1 = *(v0 + 248);
  v2 = sub_252E36AC4();
  v3 = sub_252E374C4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 248);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v45 = v6;
    *v5 = 136315138;
    v7 = [v4 entityResponses];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for HomeEntityResponse();
      v9 = sub_252E37264();
    }

    else
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v10 = *(v0 + 248);
      __swift_project_value_buffer(*(v0 + 168), qword_27F544D60);
      sub_252E379F4();

      v46 = 0xD00000000000002FLL;
      v47 = 0x8000000252E69700;
      v11 = v10;
      v12 = [v11 description];
      v13 = sub_252E36F34();
      v15 = v14;

      MEMORY[0x2530AD570](v13, v15);

      sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

      v9 = MEMORY[0x277D84F90];
    }

    v16 = type metadata accessor for HomeEntityResponse();
    v17 = MEMORY[0x2530AD730](v9, v16);
    v19 = v18;

    v20 = sub_252BE2CE0(v17, v19, &v45);

    *(v5 + 4) = v20;
    _os_log_impl(&dword_252917000, v2, v3, "Received entity responses: %s \n", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2530AED00](v6, -1, -1);
    MEMORY[0x2530AED00](v5, -1, -1);
  }

  v21 = *(v0 + 248);
  v22 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  v23 = *(v0 + 248);
  if (*(v21 + v22) == 4)
  {
    v24 = [v23 entityResponses];
    if (v24)
    {
      v25 = v24;
      v26 = *(v0 + 248);
      type metadata accessor for HomeEntityResponse();
      v27 = sub_252E37264();
    }

    else
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v38 = *(v0 + 248);
      __swift_project_value_buffer(*(v0 + 168), qword_27F544D60);
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_252E379F4();

      v46 = 0xD00000000000002FLL;
      v47 = 0x8000000252E69700;
      v25 = v38;
      v39 = [v25 description];
      v40 = sub_252E36F34();
      v42 = v41;

      MEMORY[0x2530AD570](v40, v42);

      sub_252CC3D90(v46, v47, 0xD000000000000098, 0x8000000252E69730);

      v27 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v28 = v23;
    v29 = sub_252E36AC4();
    v30 = sub_252E374D4();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 248);
    if (v31)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = v34;
      *v33 = 136315138;
      v35 = sub_252B9AAC4();
      v37 = sub_252BE2CE0(v35, v36, &v46);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_252917000, v29, v30, "Received %s for retriving responses from get climate control AppIntent.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x2530AED00](v34, -1, -1);
      MEMORY[0x2530AED00](v33, -1, -1);
    }

    v27 = 0;
  }

  v43 = *(v0 + 8);

  return v43(v27);
}

int64_t sub_25298A638(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_25298A6EC()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544C70);
  v1 = sub_252E36AC4();
  v2 = sub_252E374D4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_252917000, v1, v2, "getThermostatMode() shouldn't be call in parent class SetClimateControlAppIntentHandleDelegate, returning nil.", v3, 2u);
    MEMORY[0x2530AED00](v3, -1, -1);
  }

  return 0;
}

uint64_t sub_25298A7C8()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544C70);
  v1 = sub_252E36AC4();
  v2 = sub_252E374D4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_252917000, v1, v2, "getThermostatValue() shouldn't be call in parent class SetClimateControlAppIntentHandleDelegate, returning nil.", v3, 2u);
    MEMORY[0x2530AED00](v3, -1, -1);
  }

  return 0;
}

uint64_t sub_25298A8E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25294B954;

  return sub_252987D78(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_25298A9FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_252E37344();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = v7;
  v17 = a1;

  sub_2529D89C4(0, 0, v14, a7, v16);
}

uint64_t sub_25298AB24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC8, &unk_252E3F8F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_25298AB8C(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6)
{
  if (a2 & 1) != 0 || (a4)
  {
    if (a5 < a6)
    {
      v7 = a6 + 3.0;
    }

    else
    {
      v7 = a6;
    }

    if (a5 < a6)
    {
      v8 = a6;
    }

    else
    {
      v8 = a6 + -3.0;
    }

    goto LABEL_9;
  }

  v7 = *&a1;
  v8 = *&a3;
  v21 = *&a1 - *&a3;
  if (*&a1 - *&a3 <= 3.0)
  {
    if (a5 < a6)
    {
      v22 = v21 + a6;
LABEL_17:
      v8 = a6;
      if (v22 > *&a1)
      {
        v7 = v22;
        v8 = a6;
      }

      goto LABEL_9;
    }

    v23 = a6 - v21;
  }

  else
  {
    if (a5 < a6)
    {
      v22 = a6 + 3.0;
      goto LABEL_17;
    }

    v23 = a6 + -3.0;
    v21 = 3.0;
  }

  v7 = a6;
  if (v23 < *&a3)
  {
    v8 = a6 - v21;
    v7 = a6;
  }

LABEL_9:
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v9 = sub_252E36AD4();
  __swift_project_value_buffer(v9, qword_27F544C70);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E6D330);
  v10 = sub_252E37364();
  MEMORY[0x2530AD570](v10);

  sub_252CC3D90(0, 0xE000000000000000, 0xD0000000000000A1, 0x8000000252E6D1B0);

  v11 = objc_allocWithZone(type metadata accessor for HomeAttributeRange());
  v12 = sub_252E36F04();
  v13 = [v11 initWithIdentifier:0 displayString:v12];

  v14 = v13;
  [v14 setLowerValue_];
  [v14 setUpperValue_];

  v15 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v16 = sub_252E36F04();
  v17 = [v15 initWithIdentifier:0 displayString:v16];

  v18 = v17;
  [v18 setType_];
  v19 = v14;
  [v18 setRangeValue_];

  return v18;
}

id sub_25298AE30(id result, unint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = result;
  if ([v6 type] == 2)
  {
    [v6 doubleValue];
    v8 = v7;
    v9 = v6;
    if (a2 >> 62)
    {
      goto LABEL_197;
    }

    v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v130 = v9;
    v9 = v10 & ~(v10 >> 63);
    if (v10)
    {
      v132 = MEMORY[0x277D84F90];
      sub_2529AA5C0(0, v10 & ~(v10 >> 63), 0);
      if ((v10 & 0x8000000000000000) == 0)
      {
        v11 = 0;
        v12 = v132;
        do
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](v11, a2);
          }

          else
          {
          }

          v13 = sub_252BAC3A4();

          v9 = *(v132 + 16);
          v14 = *(v132 + 24);
          v15 = v9 + 1;
          if (v9 >= v14 >> 1)
          {
            sub_2529AA5C0((v14 > 1), v9 + 1, 1);
          }

          ++v11;
          *(v132 + 16) = v15;
          *(v132 + 8 * v9 + 32) = v13;
        }

        while (v10 != v11);
        goto LABEL_31;
      }

      __break(1u);
      goto LABEL_199;
    }

    v12 = MEMORY[0x277D84F90];
    v15 = *(MEMORY[0x277D84F90] + 16);
    v28 = MEMORY[0x277D84F90];
    if (v15)
    {
LABEL_31:
      v29 = 0;
      v28 = MEMORY[0x277D84F90];
      do
      {
        if (v29 >= *(v12 + 16))
        {
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          v10 = sub_252E378C4();
          goto LABEL_5;
        }

        v30 = *(v12 + 8 * v29 + 32);
        v31 = *(v30 + 16);
        v9 = *(v28 + 2);
        v32 = v9 + v31;
        if (__OFADD__(v9, v31))
        {
          goto LABEL_178;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v32 <= *(v28 + 3) >> 1)
        {
          if (!*(v30 + 16))
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v9 <= v32)
          {
            v34 = v9 + v31;
          }

          else
          {
            v34 = v9;
          }

          v28 = sub_2529F7D44(isUniquelyReferenced_nonNull_native, v34, 1, v28);
          if (!*(v30 + 16))
          {
LABEL_32:

            if (v31)
            {
              goto LABEL_179;
            }

            goto LABEL_33;
          }
        }

        v35 = *(v28 + 2);
        if ((*(v28 + 3) >> 1) - v35 < v31)
        {
          goto LABEL_183;
        }

        memcpy(&v28[8 * v35 + 32], (v30 + 32), 8 * v31);

        if (v31)
        {
          v36 = *(v28 + 2);
          v37 = __OFADD__(v36, v31);
          v38 = v36 + v31;
          if (v37)
          {
            goto LABEL_185;
          }

          *(v28 + 2) = v38;
        }

LABEL_33:
        ++v29;
      }

      while (v15 != v29);
    }

    v39 = *(v28 + 2);
    if (v39)
    {
      v2 = *(v28 + 4);
      v40 = v39 - 1;
      if (v40)
      {
        v41 = (v28 + 40);
        v9 = v10 & ~(v10 >> 63);
        do
        {
          v42 = *v41++;
          v43 = v42;
          if (v2 < v42)
          {
            v2 = v43;
          }

          --v40;
        }

        while (v40);
      }

      else
      {
        v9 = v10 & ~(v10 >> 63);
      }

      if (v8 < v2)
      {
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        v44 = sub_252E36AD4();
        __swift_project_value_buffer(v44, qword_27F544C70);
        v45 = sub_252E36AC4();
        v46 = sub_252E374C4();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 134218496;
          *(v47 + 4) = v8;
          *(v47 + 12) = 2048;
          *(v47 + 14) = v2;
          *(v47 + 22) = 2048;
          *(v47 + 24) = v2;
          _os_log_impl(&dword_252917000, v45, v46, "targetTemperature: {%f} is lower than service's minTargetTemperature: {%f}.\nUpdating targetTemperature to: {%f}.", v47, 0x20u);
          MEMORY[0x2530AED00](v47, -1, -1);
        }

        v8 = v2;
      }
    }

    else
    {

      v9 = v10 & ~(v10 >> 63);
    }

    if (v10)
    {
      v135 = MEMORY[0x277D84F90];
      sub_2529AA5C0(0, v9, 0);
      if (v10 < 0)
      {
LABEL_199:
        __break(1u);
        goto LABEL_200;
      }

      v48 = 0;
      v49 = v135;
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v48, a2);
        }

        else
        {
        }

        v50 = sub_252BAC3B8();

        v9 = *(v135 + 16);
        v51 = *(v135 + 24);
        v52 = v9 + 1;
        if (v9 >= v51 >> 1)
        {
          sub_2529AA5C0((v51 > 1), v9 + 1, 1);
        }

        ++v48;
        *(v135 + 16) = v52;
        *(v135 + 8 * v9 + 32) = v50;
      }

      while (v10 != v48);
      goto LABEL_73;
    }

    v49 = MEMORY[0x277D84F90];
    v52 = *(MEMORY[0x277D84F90] + 16);
    v53 = MEMORY[0x277D84F90];
    if (v52)
    {
LABEL_73:
      v54 = 0;
      v53 = MEMORY[0x277D84F90];
      do
      {
        if (v54 >= *(v49 + 16))
        {
          goto LABEL_180;
        }

        a2 = *(v49 + 8 * v54 + 32);
        v55 = *(a2 + 16);
        v9 = *(v53 + 2);
        v56 = v9 + v55;
        if (__OFADD__(v9, v55))
        {
          goto LABEL_181;
        }

        v57 = swift_isUniquelyReferenced_nonNull_native();
        if (v57 && v56 <= *(v53 + 3) >> 1)
        {
          if (!*(a2 + 16))
          {
            goto LABEL_74;
          }
        }

        else
        {
          if (v9 <= v56)
          {
            v58 = v9 + v55;
          }

          else
          {
            v58 = v9;
          }

          v53 = sub_2529F7D44(v57, v58, 1, v53);
          if (!*(a2 + 16))
          {
LABEL_74:

            if (v55)
            {
              goto LABEL_182;
            }

            goto LABEL_75;
          }
        }

        v59 = *(v53 + 2);
        if ((*(v53 + 3) >> 1) - v59 < v55)
        {
          goto LABEL_184;
        }

        memcpy(&v53[8 * v59 + 32], (a2 + 32), 8 * v55);

        if (v55)
        {
          v60 = *(v53 + 2);
          v37 = __OFADD__(v60, v55);
          v61 = v60 + v55;
          if (v37)
          {
            goto LABEL_186;
          }

          *(v53 + 2) = v61;
        }

LABEL_75:
        ++v54;
      }

      while (v52 != v54);
    }

    v62 = *(v53 + 2);
    if (v62)
    {
      v63 = *(v53 + 4);
      v64 = v62 - 1;
      if (v64)
      {
        v65 = (v53 + 40);
        do
        {
          v66 = *v65++;
          v67 = v66;
          if (v66 < v63)
          {
            v63 = v67;
          }

          --v64;
        }

        while (v64);
      }

      if (v8 > v63)
      {
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        v68 = sub_252E36AD4();
        __swift_project_value_buffer(v68, qword_27F544C70);
        v69 = sub_252E36AC4();
        v70 = sub_252E374C4();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 134218496;
          *(v71 + 4) = v8;
          *(v71 + 12) = 2048;
          *(v71 + 14) = v63;
          *(v71 + 22) = 2048;
          *(v71 + 24) = v63;
          _os_log_impl(&dword_252917000, v69, v70, "targetTemperature: {%f} is higher than service's maxTargetTemperature: {%f}.\nUpdating targetTemperature to: {%f}.", v71, 0x20u);
          MEMORY[0x2530AED00](v71, -1, -1);
        }

        v8 = v63;
      }
    }

    else
    {
    }

    v72 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v73 = sub_252E36F04();
    v74 = [v72 initWithIdentifier:0 displayString:v73];

    v5 = v74;
    [v5 setDoubleValue_];
    [v5 setUnit_];
    [v5 setType_];

    return v5;
  }

  if ([v6 type] != 6 || (v16 = objc_msgSend(v6, sel_rangeValue)) == 0)
  {

    v27 = v6;
    return v5;
  }

  v9 = v16;
  v130 = v6;
  [v16 lowerValue];
  v8 = v17;
  [v9 upperValue];
  v2 = v18;
  v129 = v9;
  if (a2 >> 62)
  {
LABEL_200:
    v19 = sub_252E378C4();
    goto LABEL_19;
  }

  v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
  v20 = MEMORY[0x277D84F90];
  v128 = v19 & ~(v19 >> 63);
  if (v19)
  {
    v133 = MEMORY[0x277D84F90];
    sub_2529AA5C0(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
      goto LABEL_202;
    }

    v21 = 0;
    v22 = v133;
    do
    {
      v23 = v22;
      if ((a2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v21, a2);
      }

      else
      {
      }

      v24 = sub_252BAC3CC();

      v22 = v23;
      v134 = v23;
      v9 = *(v23 + 16);
      v25 = *(v22 + 24);
      v26 = v9 + 1;
      if (v9 >= v25 >> 1)
      {
        sub_2529AA5C0((v25 > 1), v9 + 1, 1);
        v22 = v134;
      }

      ++v21;
      *(v22 + 16) = v26;
      *(v22 + 8 * v9 + 32) = v24;
    }

    while (v19 != v21);
LABEL_107:
    v76 = 0;
    v75 = MEMORY[0x277D84F90];
    v131 = v22;
    while (v76 < *(v22 + 16))
    {
      v77 = v20;
      v78 = a2;
      a2 = v19;
      v79 = *(v22 + 8 * v76 + 32);
      v80 = *(v79 + 16);
      v9 = *(v75 + 2);
      v81 = v9 + v80;
      if (__OFADD__(v9, v80))
      {
        goto LABEL_188;
      }

      v82 = swift_isUniquelyReferenced_nonNull_native();
      if (!v82 || v81 > *(v75 + 3) >> 1)
      {
        if (v9 <= v81)
        {
          v83 = v9 + v80;
        }

        else
        {
          v83 = v9;
        }

        v75 = sub_2529F7D44(v82, v83, 1, v75);
      }

      v19 = a2;
      a2 = v78;
      if (*(v79 + 16))
      {
        v84 = *(v75 + 2);
        if ((*(v75 + 3) >> 1) - v84 < v80)
        {
          goto LABEL_193;
        }

        v20 = v77;
        memcpy(&v75[8 * v84 + 32], (v79 + 32), 8 * v80);

        v22 = v131;
        if (v80)
        {
          v85 = *(v75 + 2);
          v37 = __OFADD__(v85, v80);
          v86 = v85 + v80;
          if (v37)
          {
            goto LABEL_195;
          }

          *(v75 + 2) = v86;
        }
      }

      else
      {

        v20 = v77;
        v22 = v131;
        if (v80)
        {
          goto LABEL_189;
        }
      }

      if (v26 == ++v76)
      {
        goto LABEL_123;
      }
    }

    goto LABEL_187;
  }

  v26 = *(MEMORY[0x277D84F90] + 16);
  v22 = MEMORY[0x277D84F90];
  v75 = MEMORY[0x277D84F90];
  if (v26)
  {
    goto LABEL_107;
  }

LABEL_123:

  v87 = *(v75 + 2);
  if (v87)
  {
    v3 = *(v75 + 4);
    v88 = v87 - 1;
    if (v88)
    {
      v89 = (v75 + 40);
      do
      {
        v90 = *v89++;
        v91 = v90;
        if (v3 < v90)
        {
          v3 = v91;
        }

        --v88;
      }

      while (v88);
    }

    if (v8 >= v3)
    {
      goto LABEL_134;
    }

    if (qword_27F53F498 != -1)
    {
      goto LABEL_203;
    }

    while (1)
    {
      v92 = sub_252E36AD4();
      __swift_project_value_buffer(v92, qword_27F544C70);
      v93 = sub_252E36AC4();
      v94 = sub_252E374C4();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 134218496;
        *(v95 + 4) = v3;
        *(v95 + 12) = 2048;
        *(v95 + 14) = v3;
        *(v95 + 22) = 2048;
        *(v95 + 24) = v3;
        _os_log_impl(&dword_252917000, v93, v94, "heatingThreshold: {%f} is lower than service's minHeatingThreadhold: {%f}.\nUpdating heatingThreshold to: {%f}.", v95, 0x20u);
        MEMORY[0x2530AED00](v95, -1, -1);
      }

      v8 = v3;
LABEL_134:
      if (!v19)
      {
        goto LABEL_145;
      }

LABEL_135:
      sub_2529AA5C0(0, v128, 0);
      if ((v19 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_202:
      __break(1u);
LABEL_203:
      swift_once();
    }

    for (i = 0; i != v19; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](i, a2);
      }

      else
      {
      }

      v97 = sub_252BAC3E0();

      v9 = *(v20 + 16);
      v98 = *(v20 + 24);
      v99 = v9 + 1;
      if (v9 >= v98 >> 1)
      {
        sub_2529AA5C0((v98 > 1), v9 + 1, 1);
      }

      *(v20 + 16) = v99;
      *(v20 + 8 * v9 + 32) = v97;
    }

    goto LABEL_146;
  }

  if (v19)
  {
    goto LABEL_135;
  }

LABEL_145:
  v99 = *(v20 + 16);
  v100 = v20;
  if (v99)
  {
LABEL_146:
    v101 = 0;
    v100 = MEMORY[0x277D84F90];
    do
    {
      if (v101 >= *(v20 + 16))
      {
        goto LABEL_190;
      }

      a2 = *(v20 + 8 * v101 + 32);
      v102 = *(a2 + 16);
      v9 = *(v100 + 2);
      v103 = v9 + v102;
      if (__OFADD__(v9, v102))
      {
        goto LABEL_191;
      }

      v104 = swift_isUniquelyReferenced_nonNull_native();
      if (v104 && v103 <= *(v100 + 3) >> 1)
      {
        if (!*(a2 + 16))
        {
          goto LABEL_147;
        }
      }

      else
      {
        if (v9 <= v103)
        {
          v105 = v9 + v102;
        }

        else
        {
          v105 = v9;
        }

        v100 = sub_2529F7D44(v104, v105, 1, v100);
        if (!*(a2 + 16))
        {
LABEL_147:

          if (v102)
          {
            goto LABEL_192;
          }

          goto LABEL_148;
        }
      }

      v106 = *(v100 + 2);
      if ((*(v100 + 3) >> 1) - v106 < v102)
      {
        goto LABEL_194;
      }

      memcpy(&v100[8 * v106 + 32], (a2 + 32), 8 * v102);

      if (v102)
      {
        v107 = *(v100 + 2);
        v37 = __OFADD__(v107, v102);
        v108 = v107 + v102;
        if (v37)
        {
          goto LABEL_196;
        }

        *(v100 + 2) = v108;
      }

LABEL_148:
      ++v101;
    }

    while (v99 != v101);
  }

  v109 = *(v100 + 2);
  if (v109)
  {
    v110 = *(v100 + 4);
    v111 = v109 - 1;
    if (v111)
    {
      v112 = (v100 + 40);
      do
      {
        v113 = *v112++;
        v114 = v113;
        if (v113 < v110)
        {
          v110 = v114;
        }

        --v111;
      }

      while (v111);
    }

    if (v2 > v110)
    {
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v115 = sub_252E36AD4();
      __swift_project_value_buffer(v115, qword_27F544C70);
      v116 = sub_252E36AC4();
      v117 = sub_252E374C4();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 134218496;
        *(v118 + 4) = v110;
        *(v118 + 12) = 2048;
        *(v118 + 14) = v110;
        *(v118 + 22) = 2048;
        *(v118 + 24) = v110;
        _os_log_impl(&dword_252917000, v116, v117, "coolingThreshold: {%f} is higher than service's maxCoolingThreshold: {%f}.\nUpdating coolingThreshold to: {%f}.", v118, 0x20u);
        MEMORY[0x2530AED00](v118, -1, -1);
      }

      v2 = v110;
    }
  }

  else
  {
  }

  v119 = objc_allocWithZone(type metadata accessor for HomeAttributeRange());
  v120 = sub_252E36F04();
  v121 = [v119 initWithIdentifier:0 displayString:v120];

  v122 = v121;
  [v122 setLowerValue_];
  [v122 setUpperValue_];

  v123 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v124 = sub_252E36F04();
  v125 = [v123 initWithIdentifier:0 displayString:v124];

  v126 = v125;
  [v126 setType_];
  v127 = v122;
  [v126 setRangeValue_];

  return v126;
}

uint64_t sub_25298BD04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25293B808;

  return sub_252987D78(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25298BE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  if ((a1 != 0x784F6E6F62726163 || a2 != 0xEF65707954656469) && (sub_252E37DB4() & 1) == 0)
  {
    if (a1 == 0x65526C616D726F6ELL && a2 == 0xEF7365736E6F7073 || (sub_252E37DB4() & 1) != 0)
    {
      result = sub_252B3C50C();
      if (!result)
      {
        goto LABEL_6;
      }
    }

    else if (a1 == 0xD000000000000011 && 0x8000000252E6D470 == a2 || (sub_252E37DB4() & 1) != 0)
    {
      result = sub_252B3CB9C();
      if (!result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if ((a1 != 0xD000000000000012 || 0x8000000252E6D490 != a2) && (sub_252E37DB4() & 1) == 0)
      {

        return sub_252CDF514(a1, a2, a3);
      }

      result = sub_252B3D26C();
      if (!result)
      {
        goto LABEL_6;
      }
    }

    v13 = result;
    result = type metadata accessor for HomeAutomationCarbonOxideResponses();
    *(a3 + 24) = result;
    *a3 = v13;
    return result;
  }

  sub_252B3B970(v8);
  v9 = sub_252E36324();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_252938BBC(v8);
LABEL_6:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  return (*(v10 + 32))(boxed_opaque_existential_0, v8, v9);
}

uint64_t EventSemantic.rawValue.getter()
{
  v1 = 0x685F657669727261;
  v2 = 0x657369726E7573;
  if (*v0 != 2)
  {
    v2 = 0x7465736E7573;
  }

  if (*v0)
  {
    v1 = 0x6F685F657661656CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

HomeAutomationInternal::EventSemantic_optional __swiftcall EventSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25298C22C()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_25298C2F8(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_25298C3B0(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_25298C484(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000656D6FLL;
  v3 = 0x685F657669727261;
  v4 = 0xE700000000000000;
  v5 = 0x657369726E7573;
  if (*v1 != 2)
  {
    v5 = 0x7465736E7573;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6F685F657661656CLL;
    v2 = 0xEA0000000000656DLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_25298C5F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25298C92C();
  v5 = sub_25298C980();
  v6 = sub_25298C9D4();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

uint64_t _s22HomeAutomationInternal13EventSemanticO1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB00000000656D6FLL;
  v3 = 0x685F657669727261;
  v4 = *a1;
  v5 = 0xE700000000000000;
  v6 = 0x657369726E7573;
  if (v4 != 2)
  {
    v6 = 0x7465736E7573;
    v5 = 0xE600000000000000;
  }

  v7 = 0x6F685F657661656CLL;
  v8 = 0xEA0000000000656DLL;
  if (!*a1)
  {
    v7 = 0x685F657669727261;
    v8 = 0xEB00000000656D6FLL;
  }

  if (*a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  v11 = 0xE700000000000000;
  v12 = 0x657369726E7573;
  if (*a2 != 2)
  {
    v12 = 0x7465736E7573;
    v11 = 0xE600000000000000;
  }

  if (*a2)
  {
    v3 = 0x6F685F657661656CLL;
    v2 = 0xEA0000000000656DLL;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v11;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_252E37DB4();
  }

  return v15 & 1;
}

unint64_t sub_25298C7B0()
{
  result = qword_27F540D08;
  if (!qword_27F540D08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EventSemantic, &type metadata for EventSemantic, v0, v1);
    atomic_store(result, &qword_27F540D08);
  }

  return result;
}

unint64_t sub_25298C808()
{
  result = qword_27F540D10;
  if (!qword_27F540D10)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540D18, &qword_252E3E6E8);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F540D10);
  }

  return result;
}

unint64_t sub_25298C870()
{
  result = qword_27F540D20;
  if (!qword_27F540D20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EventSemantic, &type metadata for EventSemantic, v0, v1);
    atomic_store(result, &qword_27F540D20);
  }

  return result;
}

unint64_t sub_25298C8C8()
{
  result = qword_27F540D28;
  if (!qword_27F540D28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EventSemantic, &type metadata for EventSemantic, v0, v1);
    atomic_store(result, &qword_27F540D28);
  }

  return result;
}

unint64_t sub_25298C92C()
{
  result = qword_27F540D30;
  if (!qword_27F540D30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EventSemantic, &type metadata for EventSemantic, v0, v1);
    atomic_store(result, &qword_27F540D30);
  }

  return result;
}

unint64_t sub_25298C980()
{
  result = qword_27F540D38;
  if (!qword_27F540D38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EventSemantic, &type metadata for EventSemantic, v0, v1);
    atomic_store(result, &qword_27F540D38);
  }

  return result;
}

unint64_t sub_25298C9D4()
{
  result = qword_27F540D40;
  if (!qword_27F540D40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EventSemantic, &type metadata for EventSemantic, v0, v1);
    atomic_store(result, &qword_27F540D40);
  }

  return result;
}

uint64_t sub_25298CA58()
{
  type metadata accessor for SprinklerHandleDelegate();

  return swift_allocObject();
}

char *sub_25298CA88(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v3 = 0;
    v28 = v1 & 0xC000000000000001;
    v25 = v1 & 0xFFFFFFFFFFFFFF8;
    v30 = MEMORY[0x277D84F90];
    v24 = v1 + 32;
    v26 = i;
    v27 = v1;
    while (1)
    {
      if (v28)
      {
        v4 = MEMORY[0x2530ADF00](v3, v1);
        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          break;
        }

        goto LABEL_11;
      }

      if (v3 >= *(v25 + 16))
      {
        goto LABEL_37;
      }

      v4 = *(v24 + 8 * v3);

      v5 = __OFADD__(v3++, 1);
      if (v5)
      {
        break;
      }

LABEL_11:
      v6 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
      if (v6 >> 62)
      {
        v7 = sub_252E378C4();
        if (v7)
        {
          goto LABEL_13;
        }

LABEL_33:

        if (v3 == i)
        {
          return v30;
        }
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
          goto LABEL_33;
        }

LABEL_13:
        if (v7 < 1)
        {
          goto LABEL_36;
        }

        v29 = v3;

        for (j = 0; j != v7; ++j)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x2530ADF00](j, v6);
          }

          else
          {
            v9 = *(v6 + 8 * j + 32);
          }

          v10 = [*(v9 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
          v11 = sub_252E36F34();
          v13 = v12;

          if (qword_27F53F8B8 != -1)
          {
            swift_once();
          }

          v14 = off_27F546230;
          if (!*(off_27F546230 + 2) || (v15 = sub_252A44A10(v11, v13), (v16 & 1) == 0))
          {

LABEL_16:

            continue;
          }

          v17 = *(v14[7] + 8 * v15);

          if (v17 != 33)
          {
            goto LABEL_16;
          }

          v18 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
          if (!v18)
          {
            goto LABEL_16;
          }

          v19 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_2529F7A80(0, *(v30 + 2) + 1, 1, v30);
          }

          v21 = *(v30 + 2);
          v20 = *(v30 + 3);
          if (v21 >= v20 >> 1)
          {
            v30 = sub_2529F7A80((v20 > 1), v21 + 1, 1, v30);
          }

          *(v30 + 2) = v21 + 1;
          v22 = &v30[16 * v21];
          *(v22 + 4) = v19;
          *(v22 + 5) = v18;
        }

        i = v26;
        v1 = v27;
        v3 = v29;
        if (v29 == v26)
        {
          return v30;
        }
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  return MEMORY[0x277D84F90];
}

char *sub_25298CDB0(unint64_t a1)
{
  v51 = sub_252E32E84();
  v2 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v63 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_252E36CA4();
  v4 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_252E36D04();
  v6 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v58 = a1 & 0xC000000000000001;
    v9 = MEMORY[0x277D84F90];
    v10 = type metadata accessor for HomeStore(0);
    v11 = a1;
    v64 = v10;
    a1 = 0;
    v49 = v11 & 0xFFFFFFFFFFFFFF8;
    v48 = v11 + 32;
    v56 = (v4 + 8);
    v57 = v70;
    v55 = (v6 + 8);
    v50 = v2 + 4;
    v2 = &unk_2814B0000;
    v54 = xmmword_252E3E810;
    v53 = v11;
    v52 = i;
    while (1)
    {
      if (v58)
      {
        v66 = MEMORY[0x2530ADF00](a1);
        v12 = __OFADD__(a1++, 1);
        if (v12)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (a1 >= *(v49 + 16))
        {
          goto LABEL_54;
        }

        v66 = *(v48 + 8 * a1);

        v12 = __OFADD__(a1++, 1);
        if (v12)
        {
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }
      }

      if (qword_2814B0DB8 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      v13 = v2[440];
      v67 = v9;
      v65 = a1;
      if (v13)
      {
      }

      else
      {
        type metadata accessor for LifeCycleManager();
        swift_allocObject();
        v13 = sub_252D7EAE8();
        v2[440] = v13;

        sub_252D7E92C();
      }

      sub_252E37614();
      v14 = swift_allocObject();
      *(v14 + 16) = v64;
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      *(v15 + 24) = v54;
      *(v15 + 40) = 0xE900000000000065;
      *(v15 + 48) = sub_252990558;
      *(v15 + 56) = v14;
      v70[2] = sub_252990560;
      v70[3] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v70[0] = sub_252AD686C;
      v70[1] = &block_descriptor_1;
      v16 = _Block_copy(aBlock);

      v17 = v59;
      sub_252E36CD4();
      v68 = MEMORY[0x277D84F90];
      sub_252990588(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
      sub_2529905D0();
      v18 = v61;
      v2 = v62;
      sub_252E37824();
      MEMORY[0x2530ADA30](0, v17, v18, v16);
      _Block_release(v16);
      (*v56)(v18, v2);
      (*v55)(v17, v60);

      if (qword_2814B0E18 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      a1 = &unk_2814B0000;
      if (qword_2814B0E30)
      {
        v19 = qword_2814B0E30;
      }

      else
      {
        v20 = [objc_allocWithZone(v64) init];
        v2 = qword_2814B0E30;
        qword_2814B0E30 = v20;
        v19 = v20;
      }

      v9 = v67;
      sub_252E37614();
      v21 = v66;
      v22 = sub_252D4E984();
      v23 = [*(v21 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
      if (v23)
      {
        v24 = v23;
        type metadata accessor for Home(0);
        v25 = swift_allocObject();
        *(v25 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v24;
        v26 = v24;
        v27 = [v26 uniqueIdentifier];
        sub_252E32E64();

        a1 = [v26 name];
        v28 = sub_252E36F34();
        v30 = v29;

        v31 = [v26 assistantIdentifier];
        if (v31)
        {
          a1 = v31;
          v32 = sub_252E36F34();
          v34 = v33;
        }

        else
        {

          v32 = 0;
          v34 = 0;
        }

        (*v50)(v25 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v63, v51);
        v35 = (v25 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        *v35 = v28;
        v35[1] = v30;
        *(v25 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 1;
        v36 = (v25 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v36 = v32;
        v36[1] = v34;
        v9 = v67;
      }

      else
      {
        v25 = 0;
      }

      v37 = HomeStore.accessories(with:in:)(v22, v25);
      v4 = v38;

      if (v4)
      {
        sub_252929F10(v37, 1);
        v37 = MEMORY[0x277D84F90];
      }

      if (v37 >> 62)
      {
        break;
      }

      v6 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_32;
      }

LABEL_5:

      a1 = v65;
      v2 = &unk_2814B0000;
      if (v65 == v52)
      {
        return v9;
      }
    }

    v6 = sub_252E378C4();
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_32:
    if (v6 >= 1)
    {
      v39 = 0;
      while (1)
      {
        if ((v37 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x2530ADF00](v39, v37);
        }

        else
        {
          v40 = *(v37 + 8 * v39 + 32);
        }

        v4 = v40;
        v41 = sub_252D4DFC8();
        if (v41)
        {
          v4 = v41;
          if (sub_252CD941C() == 33)
          {
            v42 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
            if (v42)
            {
              v67 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v9 = sub_2529F7A80(0, *(v9 + 2) + 1, 1, v9);
              }

              v44 = *(v9 + 2);
              v43 = *(v9 + 3);
              v45 = v9;
              if (v44 >= v43 >> 1)
              {
                v45 = sub_2529F7A80((v43 > 1), v44 + 1, 1, v9);
              }

              *(v45 + 2) = v44 + 1;
              v9 = v45;
              v46 = &v45[16 * v44];
              *(v46 + 4) = v67;
              *(v46 + 5) = v42;
              goto LABEL_36;
            }
          }
        }

LABEL_36:
        if (v6 == ++v39)
        {
          goto LABEL_5;
        }
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    ;
  }

  return MEMORY[0x277D84F90];
}

void sub_25298D6E0(unint64_t a1)
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544C70);

  v3 = sub_252E36AC4();
  v4 = sub_252E374C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v56 = v6;
    *v5 = 136315138;
    v7 = type metadata accessor for HomeFilter();
    v8 = MEMORY[0x2530AD730](a1, v7);
    v10 = sub_252BE2CE0(v8, v9, &v56);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_252917000, v3, v4, "Creating valve filters from originalInclusiveFilters: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2530AED00](v6, -1, -1);
    MEMORY[0x2530AED00](v5, -1, -1);
  }

  v11 = type metadata accessor for HomeStore(0);
  v12 = static HomeStore.shared.getter(v11);
  v13 = HomeStore.services(matching:supporting:)(a1, 0);
  v15 = v14;

  v52 = v11;
  v53 = a1;
  v55 = v15;
  if (v15)
  {
    goto LABEL_28;
  }

  if (v13 >> 62)
  {
    v16 = sub_252E378C4();
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_28:
    v18 = MEMORY[0x277D84F90];
LABEL_29:
    sub_252929F10(v13, v55 & 1);
    if (*(v18 + 2))
    {
      goto LABEL_30;
    }

    v39 = static HomeStore.shared.getter(v38);
    v40 = HomeStore.accessories(matching:supporting:)(v53, 0);
    v42 = v41;

    if (v42)
    {
      sub_252929F10(v40, 1);
      return;
    }

    v43 = sub_25298CA88(v40);
    if (v43)
    {
      v18 = v43;
      if (*(v43 + 2))
      {
        goto LABEL_37;
      }
    }

    v18 = sub_25298CDB0(v40);
LABEL_37:
    sub_252929F10(v40, 0);
    if (!*(v18 + 2))
    {

      v32 = MEMORY[0x277D84F90];
      goto LABEL_39;
    }

LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_252E3C130;
    type metadata accessor for HomeFilter.Builder();
    swift_allocObject();
    v33.n128_f64[0] = HomeFilter.Builder.init()();
    v35 = (*(*v34 + 568))(v18, v33);

    v37 = (*(*v35 + 760))(v36);

    *(v32 + 32) = v37;
LABEL_39:

    v44 = sub_252E36AC4();
    v45 = sub_252E374C4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v56 = v47;
      *v46 = 136315138;
      v48 = type metadata accessor for HomeFilter();
      v49 = MEMORY[0x2530AD730](v32, v48);
      v51 = sub_252BE2CE0(v49, v50, &v56);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_252917000, v44, v45, "Created valve filters: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x2530AED00](v47, -1, -1);
      MEMORY[0x2530AED00](v46, -1, -1);
    }

    return;
  }

  v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_28;
  }

LABEL_8:
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x2530ADF00](v17, v13);
      }

      else
      {
        v19 = *(v13 + 8 * v17 + 32);
      }

      v20 = [*(v19 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v21 = sub_252E36F34();
      v23 = v22;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v24 = off_27F546230;
      if (*(off_27F546230 + 2) && (v25 = sub_252A44A10(v21, v23), (v26 & 1) != 0))
      {
        v27 = *(v24[7] + 8 * v25);

        if (v27 == 33)
        {
          v28 = *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
          if (v28)
          {
            v54 = *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_2529F7A80(0, *(v18 + 2) + 1, 1, v18);
            }

            v30 = *(v18 + 2);
            v29 = *(v18 + 3);
            if (v30 >= v29 >> 1)
            {
              v18 = sub_2529F7A80((v29 > 1), v30 + 1, 1, v18);
            }

            *(v18 + 2) = v30 + 1;
            v31 = &v18[16 * v30];
            *(v31 + 4) = v54;
            *(v31 + 5) = v28;
            goto LABEL_12;
          }
        }
      }

      else
      {
      }

LABEL_12:
      if (v16 == ++v17)
      {
        goto LABEL_29;
      }
    }
  }

  __break(1u);
}

uint64_t sub_25298DCF8(uint64_t a1)
{
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v1.n128_f64[0] = HomeFilter.Builder.init()();
  v3 = (*(*v2 + 624))(32, v1);

  v5 = (*(*v3 + 760))(v4);

  v6 = type metadata accessor for HomeStore(0);
  v7 = static HomeStore.shared.getter(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E3C130;
  *(v8 + 32) = v5;
  v9 = v5;
  v10 = HomeStore.accessories(matching:supporting:)(v8, 0);
  v12 = v11;

  if (v12)
  {
    sub_252929F10(v10, 1);
    if (qword_27F53F498 != -1)
    {
LABEL_23:
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544C70);
    sub_252CC4050(0xD000000000000025, 0x8000000252E6D6F0, 0xD00000000000007DLL, 0x8000000252E6D540, 0xD00000000000001ALL, 0x8000000252E6D720, 326);
    v14 = 0;
    goto LABEL_27;
  }

  v15 = v10 & 0xFFFFFFFFFFFFFF8;
  v34 = v9;
  if (v10 >> 62)
  {
    v9 = sub_252E378C4();
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_25:
    sub_252929F10(v10, 0);
    v14 = 0;
    goto LABEL_26;
  }

  v9 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_25;
  }

LABEL_6:
  v16 = 0;
  v17 = v10 & 0xC000000000000001;
  v18 = v10 + 32;
  v32 = v10 & 0xFFFFFFFFFFFFFF8;
  v33 = v10;
  v30 = v10 & 0xC000000000000001;
  v31 = v9;
  v29 = v10 + 32;
  while (v17)
  {
    v19 = MEMORY[0x2530ADF00](v16, v10);
    v20 = __OFADD__(v16++, 1);
    if (v20)
    {
      goto LABEL_20;
    }

LABEL_11:
    v21 = [*(v19 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifiersForBridgedAccessories];
    if (v21)
    {
      v22 = v21;
      sub_252E32E84();
      v23 = sub_252E37264();

      v24 = 0;
      v25 = *(v23 + 16);
      while (v25 != v24)
      {
        v26 = v24 + 1;
        sub_252990588(&qword_27F540D48, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v27 = sub_252E36EF4();
        v24 = v26;
        if (v27)
        {
          goto LABEL_21;
        }
      }

      v15 = v32;
      v10 = v33;
      v17 = v30;
      v9 = v31;
      v18 = v29;
      if (v16 == v31)
      {
        goto LABEL_25;
      }
    }

    else
    {

      if (v16 == v9)
      {
        goto LABEL_25;
      }
    }
  }

  if (v16 >= *(v15 + 16))
  {
    __break(1u);
    goto LABEL_23;
  }

  v19 = *(v18 + 8 * v16);

  v20 = __OFADD__(v16++, 1);
  if (!v20)
  {
    goto LABEL_11;
  }

LABEL_20:
  __break(1u);
LABEL_21:

  sub_252929F10(v33, 0);
  v14 = sub_252D4DFC8();

LABEL_26:
  v9 = v34;
LABEL_27:

  return v14;
}

void sub_25298E148(unint64_t a1)
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544C70);

  v3 = sub_252E36AC4();
  v4 = sub_252E374C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v49 = v6;
    *v5 = 136315138;
    v7 = type metadata accessor for HomeFilter();
    v8 = MEMORY[0x2530AD730](a1, v7);
    v10 = sub_252BE2CE0(v8, v9, &v49);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_252917000, v3, v4, "Creating sprinkler service filters from originalInclusiveFilters: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2530AED00](v6, -1, -1);
    MEMORY[0x2530AED00](v5, -1, -1);
  }

  v11 = type metadata accessor for HomeStore(0);
  v12 = static HomeStore.shared.getter(v11);
  v13 = HomeStore.accessories(matching:supporting:)(a1, 0);
  v15 = v14;

  if (v15)
  {
    sub_252929F10(v13, 1);
    return;
  }

  if (v13 >> 62)
  {
    v16 = sub_252E378C4();
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_41:
    v19 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_41;
  }

LABEL_9:
  if (v16 < 1)
  {
    __break(1u);
    return;
  }

  v17 = 0;
  v18 = v13 & 0xC000000000000001;
  v19 = MEMORY[0x277D84F90];
  do
  {
    if (v18)
    {
      MEMORY[0x2530ADF00](v17, v13);
    }

    else
    {
    }

    v20 = sub_252D4DFC8();
    if (!v20)
    {
      goto LABEL_12;
    }

    v21 = v20;
    if (sub_252CD941C() != 32 || (v22 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8)) == 0)
    {

LABEL_12:

      goto LABEL_13;
    }

    v23 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_2529F7A80(0, *(v19 + 2) + 1, 1, v19);
    }

    v25 = *(v19 + 2);
    v24 = *(v19 + 3);
    if (v25 >= v24 >> 1)
    {
      v19 = sub_2529F7A80((v24 > 1), v25 + 1, 1, v19);
    }

    *(v19 + 2) = v25 + 1;
    v26 = &v19[16 * v25];
    *(v26 + 4) = v23;
    *(v26 + 5) = v22;
    v18 = v13 & 0xC000000000000001;
LABEL_13:
    ++v17;
  }

  while (v16 != v17);
  if (!*(v19 + 2))
  {
    for (i = 0; v16 != i; ++i)
    {
      if (v18)
      {
        v28 = MEMORY[0x2530ADF00](i, v13);
      }

      else
      {
        v28 = *(v13 + 8 * i + 32);
      }

      v29 = sub_25298DCF8(v28);
      if (v29)
      {
        v30 = *(v29 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
        if (v30)
        {
          v31 = *(v29 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_2529F7A80(0, *(v19 + 2) + 1, 1, v19);
          }

          v33 = *(v19 + 2);
          v32 = *(v19 + 3);
          if (v33 >= v32 >> 1)
          {
            v19 = sub_2529F7A80((v32 > 1), v33 + 1, 1, v19);
          }

          *(v19 + 2) = v33 + 1;
          v34 = &v19[16 * v33];
          *(v34 + 4) = v31;
          *(v34 + 5) = v30;
          v18 = v13 & 0xC000000000000001;
          continue;
        }
      }
    }
  }

LABEL_42:
  sub_252929F10(v13, 0);
  if (*(v19 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_252E3C130;
    type metadata accessor for HomeFilter.Builder();
    swift_allocObject();
    v36.n128_f64[0] = HomeFilter.Builder.init()();
    v38 = (*(*v37 + 568))(v19, v36);

    v40 = (*(*v38 + 760))(v39);

    *(v35 + 32) = v40;
  }

  else
  {

    v35 = MEMORY[0x277D84F90];
  }

  v41 = sub_252E36AC4();
  v42 = sub_252E374C4();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v49 = v44;
    *v43 = 136315138;
    v45 = type metadata accessor for HomeFilter();
    v46 = MEMORY[0x2530AD730](v35, v45);
    v48 = sub_252BE2CE0(v46, v47, &v49);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_252917000, v41, v42, "Created sprinkler filters: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x2530AED00](v44, -1, -1);
    MEMORY[0x2530AED00](v43, -1, -1);
  }
}

void sub_25298E760(void *a1, void (*a2)(char *), id a3)
{
  v149 = a2;
  v5 = sub_252E32FF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v148 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252E32BA4();
  v9 = *(v8 - 1);
  v10 = MEMORY[0x28223BE20](v8);
  v147 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v138 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v138 - v15;
  v17 = [a1 userTask];
  if (!v17)
  {
    goto LABEL_93;
  }

  v18 = v17;
  v145 = v6;
  v146 = a1;
  v19 = [a1 filters];
  if (!v19)
  {

LABEL_93:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v128 = sub_252E36AD4();
    __swift_project_value_buffer(v128, qword_27F544C70);
    sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD00000000000007DLL, 0x8000000252E6D540, 0xD000000000000021, 0x8000000252E68B10, 42);
    v16 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v129 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v16[v129] = 5;
    [v16 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v130 = sub_252E37254();
    [v16 setEntityResponses_];

    v149(v16);
    goto LABEL_96;
  }

  v20 = v19;
  v141 = v5;
  v142 = v14;
  type metadata accessor for HomeFilter();
  v21 = sub_252E37264();

  if (v21 >> 62)
  {
    goto LABEL_91;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
LABEL_92:

    goto LABEL_93;
  }

LABEL_5:
  v138 = v9;
  v139 = v16;
  v140 = v8;
  v143 = a3;
  v144 = v18;
  v16 = 0;
  v151 = v21 & 0xC000000000000001;
  v8 = (v21 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v22 == v16)
    {

      goto LABEL_93;
    }

    if (v151)
    {
      v23 = MEMORY[0x2530ADF00](v16, v21);
    }

    else
    {
      if (v16 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_89;
      }

      v23 = *(v21 + 8 * v16 + 32);
    }

    v24 = v23;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      v22 = sub_252E378C4();
      if (!v22)
      {
        goto LABEL_92;
      }

      goto LABEL_5;
    }

    a3 = [v23 isExcludeFilter];
    v9 = sub_252956D08();
    v25 = sub_252E37674();
    v18 = v25;
    if (!a3)
    {
      break;
    }

    v26 = sub_252E37694();

    ++v16;
    if ((v26 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_18:
  v150 = v21 & 0xFFFFFFFFFFFFFF8;
  v16 = 0;
  v153 = MEMORY[0x277D84F90];
  v8 = v21;
  while (2)
  {
    if (v151)
    {
      v28 = MEMORY[0x2530ADF00](v16, v21);
    }

    else
    {
      if (v16 >= *(v150 + 16))
      {
        goto LABEL_90;
      }

      v28 = *(v21 + 8 * v16 + 32);
    }

    v29 = v28;
    v30 = (v16 + 1);
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_61;
    }

    a3 = [v28 isExcludeFilter];
    v31 = sub_252E37674();
    v18 = v31;
    if (!a3)
    {

LABEL_20:
      sub_252E37A94();
      a3 = *(v153 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
      goto LABEL_21;
    }

    v32 = sub_252E37694();

    if ((v32 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_21:
    ++v16;
    v27 = v30 == v22;
    v21 = v8;
    if (!v27)
    {
      continue;
    }

    break;
  }

  v33 = v153;
  v34 = v146;
  v35 = [v146 userTask];
  if (!v35)
  {

    sub_252C515AC();
    v16 = v144;
    goto LABEL_40;
  }

  v36 = v35;
  v37 = [v35 taskType];

  v16 = v144;
  if (v37 != 1)
  {

LABEL_40:
    v47 = [v34 userTask];
    if (v47)
    {
      v48 = v47;
      if ([v47 taskType] == 4)
      {

LABEL_45:
        type metadata accessor for MutableHomeUserTask();
        swift_initStackObject();
        sub_252D6CA80(v16)[3] = 46;
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        v50 = sub_252E36AD4();
        __swift_project_value_buffer(v50, qword_27F544C70);
        sub_252CC3D90(0xD000000000000031, 0x8000000252E6D5C0, 0xD00000000000007DLL, 0x8000000252E6D540);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_252E3C130;
        *(inited + 32) = sub_252D6CB58();
        v52 = sub_252B4CA9C(v21, inited, 0, 1);
        v54 = v53;

        swift_setDeallocating();
        swift_arrayDestroy();
        v55 = sub_2529F7BEC(0, 1, 1, MEMORY[0x277D84F90]);
        v57 = v55[2];
        v56 = v55[3];
        if (v57 >= v56 >> 1)
        {
          v55 = sub_2529F7BEC((v56 > 1), v57 + 1, 1, v55);
        }

        v55[2] = v57 + 1;
        v58 = &v55[2 * v57];
        v58[4] = v52;
        v59 = v54 & 1;
LABEL_53:
        *(v58 + 40) = v59;
        goto LABEL_54;
      }

      v49 = [v48 taskType];

      if (v49 == 5)
      {
        goto LABEL_45;
      }
    }

    else
    {
      sub_252C515AC();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v60 = swift_initStackObject();
    *(v60 + 16) = xmmword_252E3C130;
    *(v60 + 32) = v16;
    v61 = v16;
    v62 = sub_252B4CA9C(v21, v60, 0, 1);
    v64 = v63;

    swift_setDeallocating();
    swift_arrayDestroy();
    v55 = sub_2529F7BEC(0, 1, 1, MEMORY[0x277D84F90]);
    v66 = v55[2];
    v65 = v55[3];
    if (v66 >= v65 >> 1)
    {
      v55 = sub_2529F7BEC((v65 > 1), v66 + 1, 1, v55);
    }

    v55[2] = v66 + 1;
    v58 = &v55[2 * v66];
    v58[4] = v62;
    v59 = v64 & 1;
    goto LABEL_53;
  }

  sub_25298D6E0(v33);
  v9 = v38;
  sub_25298E148(v33);
  v22 = v39;

  if (v9 >> 62)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_98;
    }

LABEL_34:

    v30 = &qword_252E3C000;
    if (sub_252C4BDE8())
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_252E3C130;
      *(v40 + 32) = v16;
      v41 = v16;

      v42 = sub_2529F7C10(0, 1, 1, MEMORY[0x277D84F90]);
      v44 = v42[2];
      v43 = v42[3];
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v42 = sub_2529F7C10((v43 > 1), v44 + 1, 1, v42);
      }

      v46 = v9;
LABEL_72:
      v42[2] = v45;
      v103 = &v42[2 * v44];
      v103[4] = v46;
      v103[5] = v40;
      v104 = sub_252B4D7EC(v42, 0, 1);
      v106 = v105;

      if (v106)
      {

        v107 = v104;
        v55 = sub_2529F7BEC(0, 1, 1, MEMORY[0x277D84F90]);
        v109 = v55[2];
        v108 = v55[3];
        if (v109 >= v108 >> 1)
        {
          v55 = sub_2529F7BEC((v108 > 1), v109 + 1, 1, v55);
        }

        v55[2] = v109 + 1;
        v110 = &v55[2 * v109];
        v110[4] = v104;
        *(v110 + 40) = 1;
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        v111 = sub_252E36AD4();
        __swift_project_value_buffer(v111, qword_27F544C70);
        v153 = 0;
        v154 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E6D600);
        v152 = v104;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
        sub_252E37AE4();
        MEMORY[0x2530AD570](46, 0xE100000000000000);
        sub_252CC4050(v153, v154, 0xD00000000000007DLL, 0x8000000252E6D540, 0xD000000000000021, 0x8000000252E68B10, 102);

        v112 = v104;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v113 = swift_initStackObject();
        *(v113 + 16) = *(v30 + 19);
        v114 = objc_allocWithZone(type metadata accessor for HomeUserTask());
        v115 = sub_252E36F04();
        v116 = [v114 initWithIdentifier:0 displayString:v115];

        v117 = v116;
        [v117 setTaskType_];
        [v117 setAttribute_];
        [v117 setValue_];

        *(v113 + 32) = v117;
        v118 = sub_252B4CA9C(v9, v113, 0, 1);
        LOBYTE(v117) = v119;

        swift_setDeallocating();
        swift_arrayDestroy();
        if ((v117 & 1) == 0)
        {
          v124 = v118;
          v55 = sub_2529F7BEC(0, 1, 1, MEMORY[0x277D84F90]);
          v126 = v55[2];
          v125 = v55[3];
          if (v126 >= v125 >> 1)
          {
            v55 = sub_2529F7BEC((v125 > 1), v126 + 1, 1, v55);
          }

          sub_252927D3C(v118);
          sub_252927D3C(v104);
          v55[2] = v126 + 1;
          v127 = &v55[2 * v126];
          v127[4] = v118;
          *(v127 + 40) = 0;
          goto LABEL_54;
        }

        sub_2529904E4(v118);
        sub_2529904E4(v104);
        v55 = sub_2529F7BEC(0, 1, 1, MEMORY[0x277D84F90]);
        v121 = v55[2];
        v120 = v55[3];
        if (v121 >= v120 >> 1)
        {
          v55 = sub_2529F7BEC((v120 > 1), v121 + 1, 1, v55);
        }

        v55[2] = v121 + 1;
        v122 = &v55[2 * v121];
        v122[4] = v104;
        *(v122 + 40) = 0;
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        v123 = sub_252E36AD4();
        __swift_project_value_buffer(v123, qword_27F544C70);
        v153 = 0;
        v154 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E6D620);
        v152 = v118;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
        sub_252E37AE4();
        MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E6D650);
        sub_252CC4050(v153, v154, 0xD00000000000007DLL, 0x8000000252E6D540, 0xD000000000000021, 0x8000000252E68B10, 98);
        sub_252927D3C(v118);
        sub_252927D3C(v104);

        v112 = v118;
      }

      sub_252927D3C(v112);
LABEL_54:
      v67 = sub_252B4F134(v55);

      v68 = combineResults(results:)(v67);

      sub_25298FCB0(v68);
      v149(v68);

      goto LABEL_96;
    }

    v69 = [v34 time];
    if (!v69)
    {
      goto LABEL_63;
    }

    v8 = v69;
    v70 = [v69 startDateComponents];
    if (!v70)
    {
LABEL_62:

LABEL_63:
      v42 = MEMORY[0x277D84F90];
LABEL_68:
      v153 = v22;

      sub_25297A8D8(v100);
      v46 = v153;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v40 = swift_allocObject();
      *(v40 + 16) = *(v30 + 19);
      *(v40 + 32) = v16;
      v101 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_2529F7C10(0, v42[2] + 1, 1, v42);
      }

      v44 = v42[2];
      v102 = v42[3];
      v45 = v44 + 1;
      if (v44 >= v102 >> 1)
      {
        v42 = sub_2529F7C10((v102 > 1), v44 + 1, 1, v42);
      }

      goto LABEL_72;
    }

    v18 = v139;
    v71 = v70;
    sub_252E32B24();

    v72 = [v8 endDateComponents];
    if (v72)
    {
      v150 = v22;
      v151 = v9;
      v73 = v72;
      sub_252E32B24();

      v74 = v148;
      sub_252E32FC4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404D0, &qword_252E3CCA0);
      v75 = sub_252E32FE4();
      v76 = *(v75 - 8);
      v77 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_252E3C290;
      (*(v76 + 104))(v78 + v77, *MEMORY[0x277CC99A8], v75);
      sub_2529FE09C(v78);
      swift_setDeallocating();
      (*(v76 + 8))(v78 + v77, v75);
      v79 = v142;
      swift_deallocClassInstance();
      v80 = v147;
      sub_252E32F34();

      (*(v145 + 8))(v74, v141);
      v81 = sub_252E32B74();
      LOBYTE(v78) = v82;
      v83 = v80;
      v84 = *(v138 + 8);
      v85 = v140;
      v84(v83, v140);
      if (v78)
      {

        v84(v79, v85);
        v84(v18, v85);
        v42 = MEMORY[0x277D84F90];
        v9 = v151;
      }

      else
      {
        v86 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v87 = sub_252E36F04();
        v88 = [v86 initWithIdentifier:0 displayString:v87];

        v89 = v88;
        [v89 setIntegerValue_];
        [v89 setUnit_];
        [v89 setType_];

        v90 = objc_allocWithZone(type metadata accessor for HomeUserTask());
        v91 = sub_252E36F04();
        v92 = [v90 initWithIdentifier:0 displayString:v91];

        v93 = v92;
        [v93 setTaskType_];
        [v93 setAttribute_];
        [v93 setValue_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v94 = swift_allocObject();
        *(v94 + 16) = xmmword_252E3C130;
        *(v94 + 32) = v93;

        v95 = v93;
        v42 = sub_2529F7C10(0, 1, 1, MEMORY[0x277D84F90]);
        v97 = v42[2];
        v96 = v42[3];
        if (v97 >= v96 >> 1)
        {
          v42 = sub_2529F7C10((v96 > 1), v97 + 1, 1, v42);
        }

        v98 = v140;
        v84(v142, v140);
        v84(v139, v98);
        v42[2] = v97 + 1;
        v99 = &v42[2 * v97];
        v9 = v151;
        v99[4] = v151;
        v99[5] = v94;
        v16 = v144;
      }

      v30 = &qword_252E3C000;
      v22 = v150;
      goto LABEL_68;
    }

LABEL_61:
    (*(v138 + 8))(v18, v140);
    goto LABEL_62;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_98:

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v131 = sub_252E36AD4();
  __swift_project_value_buffer(v131, qword_27F544C70);
  sub_252CC4050(0xD000000000000069, 0x8000000252E6D680, 0xD00000000000007DLL, 0x8000000252E6D540, 0xD000000000000021, 0x8000000252E68B10, 54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402A8, &unk_252E3E850);
  v132 = swift_initStackObject();
  *(v132 + 16) = xmmword_252E3C290;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v133 = swift_initStackObject();
  *(v133 + 16) = xmmword_252E3C130;
  *(v133 + 32) = v16;
  v16 = v16;
  v134 = sub_252B4CA9C(v21, v133, 0, 1);
  v136 = v135;

  swift_setDeallocating();
  swift_arrayDestroy();
  *(v132 + 32) = v134;
  *(v132 + 40) = v136 & 1;
  v137 = combineResults(results:)(v132);
  swift_setDeallocating();
  sub_2529904F0(v132 + 32);
  v149(v137);

LABEL_96:
}

void sub_25298FCB0(void *a1)
{
  v1 = [a1 entityResponses];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();

    if (!(v3 >> 62))
    {
      goto LABEL_3;
    }

LABEL_28:
    v4 = sub_252E378C4();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_29:

LABEL_31:

    return;
  }

  v3 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_28;
  }

LABEL_3:
  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_29;
  }

LABEL_4:
  v5 = 0;
  v25 = v4;
  v26 = v3 & 0xC000000000000001;
  v23 = v3 & 0xFFFFFFFFFFFFFF8;
  v24 = v3;
  v22 = v3 + 32;
  while (1)
  {
    if (v26)
    {
      v6 = MEMORY[0x2530ADF00](v5, v24);
    }

    else
    {
      if (v5 >= *(v23 + 16))
      {
        goto LABEL_34;
      }

      v6 = *(v22 + 8 * v5);
    }

    v7 = v6;
    if (__OFADD__(v5++, 1))
    {
      break;
    }

    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544C70);
    [v7 entity];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540D50, &qword_252E3E868);
    v10 = sub_252E36F94();
    MEMORY[0x2530AD570](v10);

    MEMORY[0x2530AD570](44, 0xE100000000000000);
    sub_252CC3D90(0x3A797469746E6522, 0xE900000000000020, 0xD000000000000074, 0x8000000252E6D740);

    v11 = [v7 taskResponses];
    if (v11)
    {
      v12 = v11;
      type metadata accessor for HomeUserTaskResponse();
      v13 = sub_252E37264();
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v27 = v7;
    if (v13 >> 62)
    {
      v14 = sub_252E378C4();
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    if (v14 < 1)
    {
      goto LABEL_33;
    }

    v15 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2530ADF00](v15, v13);
      }

      else
      {
        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      ++v15;
      sub_252E379F4();

      v18 = [v17 description];
      v19 = sub_252E36F34();
      v21 = v20;

      MEMORY[0x2530AD570](v19, v21);

      MEMORY[0x2530AD570](44, 0xE100000000000000);
      sub_252CC3D90(0x7365526B73617422, 0xEF203A65736E6F70, 0xD000000000000074, 0x8000000252E6D740);
    }

    while (v14 != v15);
LABEL_5:

    if (v5 == v25)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

BOOL sub_2529900A8(void *a1)
{
  v2 = type metadata accessor for HomeStore(0);
  v3 = static HomeStore.shared.getter(v2);
  v4 = v3[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v4 != 2 && (v4 & 1) == 0 || (v5 = [a1 filters]) == 0)
  {

    return 0;
  }

  v6 = v5;
  type metadata accessor for HomeFilter();
  v7 = sub_252E37264();

  v8 = [a1 userTask];
  v9 = HomeStore.accessories(matching:supporting:)(v7, v8);
  v11 = v10;

  if (v11)
  {
    sub_252929F10(v9, 1);
    return 0;
  }

  if (v9 >> 62)
  {
    goto LABEL_40;
  }

  v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
LABEL_11:
    v14 = 0;
    v15 = v9 & 0xC000000000000001;
    do
    {
      while (1)
      {
        if (v15)
        {
          v16 = MEMORY[0x2530ADF00](v14, v9);
          v17 = __OFADD__(v14++, 1);
          if (v17)
          {
LABEL_37:
            __break(1u);
LABEL_38:

            sub_252929F10(v9, 0);
            return 0;
          }
        }

        else
        {
          if (v14 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_40:
            v13 = sub_252E378C4();
            if (!v13)
            {
              goto LABEL_41;
            }

            goto LABEL_11;
          }

          v16 = *(v9 + 32 + 8 * v14);

          v17 = __OFADD__(v14++, 1);
          if (v17)
          {
            goto LABEL_37;
          }
        }

        v18 = (*v16 + 256);
        v19 = *v18;
        if ((*v18)() != 32)
        {
          break;
        }

        if (v14 == v13)
        {
          goto LABEL_41;
        }
      }

      v20 = (*(*v16 + 272))();
      if (*(v20 + 16))
      {
        sub_252E37EC4();
        MEMORY[0x2530AE390](32);
        v21 = sub_252E37F14();
        v22 = -1 << *(v20 + 32);
        v23 = v21 & ~v22;
        if ((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          v24 = ~v22;
          while (*(*(v20 + 48) + 8 * v23) != 32)
          {
            v23 = (v23 + 1) & v24;
            if (((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          goto LABEL_33;
        }
      }

LABEL_22:

      v26 = (v19)(v25);
      if (v26 == 38)
      {
        v28 = &unk_2864A8698;
      }

      else
      {
        v27 = MEMORY[0x277D84FA0];
        if (v26 != 41)
        {
          goto LABEL_27;
        }

        v28 = &unk_2864A86C0;
      }

      v27 = sub_2529FC004(v28);
LABEL_27:
      if (!*(v27 + 16))
      {
        goto LABEL_38;
      }

      sub_252E37EC4();
      MEMORY[0x2530AE390](32);
      v29 = sub_252E37F14();
      v30 = -1 << *(v27 + 32);
      v31 = v29 & ~v30;
      if (((*(v27 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
        goto LABEL_38;
      }

      v32 = ~v30;
      while (*(*(v27 + 48) + 8 * v31) != 32)
      {
        v31 = (v31 + 1) & v32;
        if (((*(v27 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          goto LABEL_38;
        }
      }

LABEL_33:

      v15 = v9 & 0xC000000000000001;
    }

    while (v14 != v13);
  }

LABEL_41:
  sub_252929F10(v9, 0);
  v33 = [a1 userTask];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 attribute];

    if (v35 == 27)
    {
      return 1;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v36 = [a1 userTask];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 attribute];

    return v38 == 46;
  }

  sub_252C515AC();
  return 0;
}

uint64_t sub_2529904F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402B0, &qword_252E3C0E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252990588(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2529905D0()
{
  result = qword_2814B0280;
  if (!qword_2814B0280)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5402F8, &qword_252E3E860);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_2814B0280);
  }

  return result;
}

uint64_t sub_25299065C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252990734(a1);
}

uint64_t sub_252990704()
{
  type metadata accessor for AccessoriesHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252990754()
{
  v1 = sub_252990F34(*(v0 + 112), &unk_2864B13B8, &unk_2864B13E0, sub_252990558, sub_252990E7C, &block_descriptor_2);
  if (v2)
  {
    sub_252929F10(v1, 1);
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544C70);
    sub_252CC4050(0xD00000000000001FLL, 0x8000000252E6D800, 0xD000000000000080, 0x8000000252E6D820, 0x6928656C646E6168, 0xEF293A746E65746ELL, 20);
    v4 = [objc_allocWithZone(type metadata accessor for DiscoverHomeIntentResponse()) init];
    v5 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
    swift_beginAccess();
    v6 = 5;
    goto LABEL_5;
  }

  v7 = v1;
  v8 = type metadata accessor for HomeStore(0);
  v9 = static HomeStore.shared.getter(v8);
  v10 = HomeStore.accessories(matching:supporting:)(v7, 0);
  v12 = v11;
  sub_252929F10(v7, 0);

  if (v12)
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544C70);
    sub_252E379F4();
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E6D8B0);
    *(v0 + 40) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(*(v0 + 16), *(v0 + 24), 0xD000000000000080, 0x8000000252E6D820, 0x6928656C646E6168, 0xEF293A746E65746ELL, 35);

    v4 = [objc_allocWithZone(type metadata accessor for DiscoverHomeIntentResponse()) init];
    v14 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
    swift_beginAccess();
    *&v4[v14] = 5;
    [v4 setUserActivity_];
    sub_252929F10(v10, 1);
    goto LABEL_25;
  }

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_29:
    sub_252929F10(v10, 0);
    if (qword_27F53F498 == -1)
    {
LABEL_30:
      v23 = sub_252E36AD4();
      __swift_project_value_buffer(v23, qword_27F544C70);
      sub_252CC4050(0xD000000000000041, 0x8000000252E6D900, 0xD000000000000080, 0x8000000252E6D820, 0x6928656C646E6168, 0xEF293A746E65746ELL, 27);
      v4 = [objc_allocWithZone(type metadata accessor for DiscoverHomeIntentResponse()) init];
      v5 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
      swift_beginAccess();
      v6 = 100;
LABEL_5:
      *&v4[v5] = v6;
      [v4 setUserActivity_];
      goto LABEL_25;
    }

LABEL_32:
    swift_once();
    goto LABEL_30;
  }

  if (!sub_252E378C4())
  {
    goto LABEL_29;
  }

LABEL_12:
  v4 = [objc_allocWithZone(type metadata accessor for DiscoverHomeIntentResponse()) init];
  v15 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  swift_beginAccess();
  *&v4[v15] = 4;
  [v4 setUserActivity_];
  if (v10 >> 62)
  {
    v16 = sub_252E378C4();
    if (v16)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v16 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_14:
      v24 = MEMORY[0x277D84F90];
      sub_252E37AB4();
      if ((v16 & 0x8000000000000000) == 0)
      {
        v17 = 0;
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](v17, v10);
          }

          else
          {
          }

          ++v17;
          sub_252B9CE7C();

          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        while (v16 != v17);
        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_32;
    }
  }

LABEL_22:
  sub_252929F10(v10, 0);
  type metadata accessor for HomeEntity();
  v18 = sub_252E37254();

  [v4 setMatchedEntities_];

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544C70);
  sub_252E379F4();

  *(v0 + 16) = v16;
  v20 = sub_252E37D94();
  MEMORY[0x2530AD570](v20);

  MEMORY[0x2530AD570](0x65697469746E6520, 0xE900000000000073);
  sub_252CC3D90(0xD000000000000010, 0x8000000252E6D8E0, 0xD000000000000080, 0x8000000252E6D820);

LABEL_25:
  v21 = *(v0 + 8);

  return v21(v4);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_252990E98()
{
  result = qword_2814B0298[0];
  if (!qword_2814B0298[0])
  {
    v3 = sub_252E36CA4();
    result = swift_getWitnessTable(MEMORY[0x277D851A0], v3, v0, v1);
    atomic_store(result, qword_2814B0298);
  }

  return result;
}

uint64_t sub_252990F34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v75 = a5;
  v76 = a6;
  v73 = a3;
  v74 = a4;
  v72 = a2;
  v71 = sub_252E36CA4();
  v7 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_252E36D04();
  v9 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 filters];
  if (v11)
  {
    type metadata accessor for HomeFilter();
    v12 = sub_252E37264();

    if (v12 >> 62)
    {
      goto LABEL_66;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v14 = 0;
      v82 = v12 & 0xFFFFFFFFFFFFFF8;
      v83 = v12 & 0xC000000000000001;
      v81 = i;
      while (1)
      {
        if (v83)
        {
          v15 = MEMORY[0x2530ADF00](v14, v12);
        }

        else
        {
          if (v14 >= *(v82 + 16))
          {
            goto LABEL_59;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v18 = [v15 homeName];
        if (v18)
        {
          break;
        }

        ++v14;
        if (v17 == i)
        {
          v62[1] = v11;
          v25 = 0;
          v66 = v86;
          v87 = MEMORY[0x277D84F90];
          v65 = (v7 + 1);
          v64 = (v9 + 8);
          v9 = &unk_2814B0000;
          v63 = xmmword_252E3E810;
          v67 = v12;
          while (1)
          {
            if (v83)
            {
              v26 = MEMORY[0x2530ADF00](v25, v12);
            }

            else
            {
              if (v25 >= *(v82 + 16))
              {
                goto LABEL_62;
              }

              v26 = *(v12 + 8 * v25 + 32);
            }

            v11 = v26;
            if (__OFADD__(v25, 1))
            {
              goto LABEL_61;
            }

            type metadata accessor for HomeFilter.Builder();
            v27 = swift_allocObject();
            *(v27 + 16) = 0;
            *(v27 + 24) = 0;
            *(v27 + 32) = 0;
            *(v27 + 40) = 7;
            *(v27 + 48) = 0u;
            *(v27 + 64) = 0u;
            *(v27 + 80) = 0u;
            *(v27 + 96) = 0u;
            *(v27 + 112) = 0u;
            *(v27 + 128) = 0u;
            *(v27 + 144) = 0u;
            *(v27 + 160) = 0u;
            *(v27 + 175) = 0;
            v28 = sub_252B72040(v11);

            v29 = type metadata accessor for HomeStore(0);
            if (qword_2814B0DB8 != -1)
            {
              swift_once();
            }

            sub_252E37604();
            v30 = *(v9 + 440);
            v79 = v25 + 1;
            v80 = v25;
            v78 = v11;
            if (v30)
            {
            }

            else
            {
              type metadata accessor for LifeCycleManager();
              swift_allocObject();
              v30 = sub_252D7EAE8();
              *(v9 + 440) = v30;

              sub_252D7E92C();
            }

            sub_252E37614();
            v31 = swift_allocObject();
            v77 = v29;
            *(v31 + 16) = v29;
            v32 = swift_allocObject();
            *(v32 + 16) = v30;
            *(v32 + 24) = v63;
            *(v32 + 40) = 0xE900000000000065;
            v33 = v75;
            *(v32 + 48) = v74;
            *(v32 + 56) = v31;
            v86[2] = v33;
            v86[3] = v32;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            v86[0] = sub_252AD686C;
            v86[1] = v76;
            v34 = _Block_copy(aBlock);

            v35 = v68;
            sub_252E36CD4();
            v84 = MEMORY[0x277D84F90];
            sub_252990E98();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
            sub_2529905D0();
            v36 = v70;
            v37 = v71;
            sub_252E37824();
            MEMORY[0x2530ADA30](0, v35, v36, v34);
            _Block_release(v34);

            (*v65)(v36, v37);
            (*v64)(v35, v69);

            if (qword_2814B0E18 != -1)
            {
              swift_once();
            }

            sub_252E37604();
            if (qword_2814B0E30)
            {
              v38 = qword_2814B0E30;
            }

            else
            {
              v39 = [objc_allocWithZone(v77) init];
              v40 = qword_2814B0E30;
              qword_2814B0E30 = v39;
              v38 = v39;
            }

            v12 = v67;
            v11 = v79;
            v41 = v80;
            v9 = &unk_2814B0000;
            v42 = v78;
            sub_252E37614();
            v43 = sub_2529D9114();

            if (v43)
            {
              v44 = *(v43 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
              v45 = *(v43 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
            }

            else
            {
              v44 = 0;
              v45 = 0;
            }

            v46 = (*(*v28 + 632))(v44, v45);

            (*(*v46 + 760))(v47);

            v7 = &v87;
            MEMORY[0x2530AD700](v48);
            if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();
            v25 = v41 + 1;
            if (v11 == v81)
            {
              v19 = v87;
              goto LABEL_68;
            }
          }
        }
      }

      v21 = 0;
      while (1)
      {
        if (v83)
        {
          v22 = MEMORY[0x2530ADF00](v21, v12);
        }

        else
        {
          if (v21 >= *(v82 + 16))
          {
            goto LABEL_65;
          }

          v22 = *(v12 + 8 * v21 + 32);
        }

        v7 = v22;
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v24 = [v22 homeName];
        if (v24)
        {

          v49 = [v7 homeName];
          if (v49)
          {
            v9 = sub_252E36F34();
            v51 = v50;
          }

          else
          {
LABEL_47:
            v9 = 0;
            v51 = 0;
          }

          v52 = 0;
          aBlock[0] = MEMORY[0x277D84F90];
          v11 = 7;
          while (1)
          {
            if (v83)
            {
              v53 = MEMORY[0x2530ADF00](v52, v12);
            }

            else
            {
              if (v52 >= *(v82 + 16))
              {
                goto LABEL_64;
              }

              v53 = *(v12 + 8 * v52 + 32);
            }

            v54 = v53;
            v55 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
              goto LABEL_60;
            }

            type metadata accessor for HomeFilter.Builder();
            v56 = swift_allocObject();
            *(v56 + 16) = 0;
            *(v56 + 24) = 0;
            *(v56 + 32) = 0;
            *(v56 + 40) = 7;
            *(v56 + 48) = 0u;
            *(v56 + 64) = 0u;
            *(v56 + 80) = 0u;
            *(v56 + 96) = 0u;
            *(v56 + 112) = 0u;
            *(v56 + 128) = 0u;
            *(v56 + 144) = 0u;
            *(v56 + 160) = 0u;
            *(v56 + 175) = 0;
            v57 = sub_252B72040(v54);

            v58 = (*(*v57 + 632))(v9, v51);

            (*(*v58 + 760))(v59);

            v7 = aBlock;
            MEMORY[0x2530AD700](v60);
            if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();
            ++v52;
            if (v55 == v81)
            {
              v19 = aBlock[0];

              return v19;
            }
          }
        }

        ++v21;
        if (v23 == i)
        {
          goto LABEL_47;
        }
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      ;
    }

    v19 = MEMORY[0x277D84F90];
LABEL_68:
  }

  else
  {
    sub_2529318DC();
    v19 = swift_allocError();
    *v20 = 17;
  }

  return v19;
}

uint64_t objectdestroy_4Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2529919DC()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_attribute);

  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal25HomeAutomationEntityState7Builder_userTaskType);

  return swift_deallocClassInstance();
}

uint64_t sub_252991A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  if (a1 == 0x7475626972747461 && a2 == 0xE900000000000065 || (sub_252E37DB4() & 1) != 0)
  {
    sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v15);
    v16 = sub_252E36324();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      v18 = v15;
LABEL_6:
      result = sub_252938BBC(v18);
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v16;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(v17 + 32))(boxed_opaque_existential_0, v15, v16);
  }

  else
  {
    result = 0x6C61566574617473;
    if (a1 == 0x6C61566574617473 && a2 == 0xEA00000000006575 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v21 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (!v21)
      {
        goto LABEL_7;
      }

      *(a3 + 24) = type metadata accessor for HomeAutomationEntityStateValue(0);
      *a3 = v21;
    }

    else if (a1 == 0x6B73615472657375 && a2 == 0xEC00000065707954 || (sub_252E37DB4() & 1) != 0)
    {
      sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, v13);
      v22 = sub_252E36324();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v13, 1, v22) == 1)
      {
        v18 = v13;
        goto LABEL_6;
      }

      *(a3 + 24) = v22;
      v24 = __swift_allocate_boxed_opaque_existential_0(a3);
      return (*(v23 + 32))(v24, v13, v22);
    }

    else if (a1 == 0x676E697274536F74 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      sub_252A657C0(v10);
      v25 = sub_252E36324();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v10, 1, v25) == 1)
      {
        v18 = v10;
        goto LABEL_6;
      }

      *(a3 + 24) = v25;
      v27 = __swift_allocate_boxed_opaque_existential_0(a3);
      return (*(v26 + 32))(v27, v10, v25);
    }

    else
    {
      if (a1 != 0x6972656D754E7369 || a2 != 0xE900000000000063)
      {
        result = sub_252E37DB4();
        if ((result & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      if (sub_252A65F0C() == 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = sub_252E37DB4();
      }

      *(a3 + 24) = MEMORY[0x277D839B0];
      *a3 = v28 & 1;
    }
  }

  return result;
}

uint64_t sub_252991F24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6C61566574617473;
  v4 = 0xEA00000000006575;
  if (v2 != 1)
  {
    v3 = 0x6B73615472657375;
    v4 = 0xEC00000065707954;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7475626972747461;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0x6C61566574617473;
  v8 = 0xEA00000000006575;
  if (*a2 != 1)
  {
    v7 = 0x6B73615472657375;
    v8 = 0xEC00000065707954;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7475626972747461;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252992040()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_2529920F4(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252992194(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252992244@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252993074(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252992274(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0xEA00000000006575;
  v5 = 0x6C61566574617473;
  if (v2 != 1)
  {
    v5 = 0x6B73615472657375;
    v4 = 0xEC00000065707954;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7475626972747461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2529922E4()
{
  v1 = 0x6C61566574617473;
  if (*v0 != 1)
  {
    v1 = 0x6B73615472657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7475626972747461;
  }
}

unint64_t sub_252992350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252993074(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252992378(uint64_t a1)
{
  v2 = sub_252992DC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2529923B4(uint64_t a1)
{
  v2 = sub_252992DC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2529923F0()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);

  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType);

  return swift_deallocClassInstance();
}

void sub_2529924A4(uint64_t a1)
{
  sub_2529576E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_252992544(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540D90, &qword_252E3E9F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252992DC8();
  sub_252E37F84();
  v12 = 0;
  sub_252E36324();
  sub_252992D80(&qword_27F540548, MEMORY[0x277D55C48], MEMORY[0x277D55C50]);
  sub_252E37CD4();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
    v10[15] = 1;
    type metadata accessor for HomeAutomationEntityStateValue(0);
    sub_252992D80(&qword_27F540D98, type metadata accessor for HomeAutomationEntityStateValue, protocol conformance descriptor for HomeAutomationEntityStateValue);
    sub_252E37CD4();
    v10[14] = 2;
    sub_252E37CD4();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_2529927B4(uint64_t a1)
{
  sub_2529576E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id *sub_252992850(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540D78, &qword_252E3E9F0);
  v11 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v13 = &v17 - v12;
  *(v3 + 16) = 0;
  v14 = a1[3];
  v19 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_252992DC8();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for HomeAutomationEntityState(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v8;
    sub_252E36324();
    v23 = 0;
    sub_252992D80(&qword_27F540538, MEMORY[0x277D55C48], MEMORY[0x277D55C60]);
    v15 = v18;
    sub_252E37BE4();
    sub_2529439A0(v10, v3 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
    type metadata accessor for HomeAutomationEntityStateValue(0);
    v22 = 1;
    sub_252992D80(&qword_27F540D88, type metadata accessor for HomeAutomationEntityStateValue, protocol conformance descriptor for HomeAutomationEntityStateValue);
    sub_252E37BE4();
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue) = v20;
    v21 = 2;
    sub_252E37BE4();
    (*(v11 + 8))(v13, v15);
    sub_2529439A0(v17, v3 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType);
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v3;
}

id *sub_252992C70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for HomeAutomationEntityState(0);
  v5 = swift_allocObject();
  result = sub_252992850(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_252992D80(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252992DC8()
{
  result = qword_27F540D80;
  if (!qword_27F540D80)
  {
    result = swift_getWitnessTable(asc_252E3EAFC, &type metadata for HomeAutomationEntityState.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540D80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CapabilityAttributeSemantic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CapabilityAttributeSemantic(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252992F70()
{
  result = qword_27F540DA0;
  if (!qword_27F540DA0)
  {
    result = swift_getWitnessTable(byte_252E3EAD4, &type metadata for HomeAutomationEntityState.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540DA0);
  }

  return result;
}

unint64_t sub_252992FC8()
{
  result = qword_27F540DA8;
  if (!qword_27F540DA8)
  {
    result = swift_getWitnessTable(byte_252E3EA0C, &type metadata for HomeAutomationEntityState.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540DA8);
  }

  return result;
}

unint64_t sub_252993020()
{
  result = qword_27F540DB0;
  if (!qword_27F540DB0)
  {
    result = swift_getWitnessTable(byte_252E3EA34, &type metadata for HomeAutomationEntityState.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540DB0);
  }

  return result;
}

unint64_t sub_252993074(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2529930C0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v1 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_attribute;
  v2 = sub_252E36324();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v4 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_entityNames) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_roomNames) = v4;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_zoneNames) = v4;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetedHomeName) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_deviceTypes) = v4;
  v3(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetState, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isSensorTrippedRequest) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isGarageDoorRequest) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_userDefinedDuration) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isOpenRequest) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isCloseRequest) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isLockRequest) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isUnlockRequest) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isDisarmRequest) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isArmAwayRequest) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isArmStayRequest) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isArmNightRequest) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isTVRequest) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_numericValue) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isInCurrentRoom) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isColorRequest) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isScheduleRequest) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isSceneRequest) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isPowerOnRequest) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isPowerOffRequest) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isTemperatureRequest) = 0;
  v3(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetColor, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isJobResumed) = 0;
  v3(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_secondaryCleanMode, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isRVC) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_serviceAreaNames) = v4;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_numOverflowServiceAreas) = 0;
  return v0;
}

uint64_t sub_252993318()
{

  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_attribute);

  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetState);

  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetColor);
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_secondaryCleanMode);

  return v0;
}

uint64_t sub_252993410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v47 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v47 - v15;
  result = MEMORY[0x28223BE20](v14);
  v19 = &v47 - v18;
  if (a1 == 0xD000000000000010 && 0x8000000252E66BA0 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
  {
    v20 = *(v3 + 24);
LABEL_5:
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v20;
    return result;
  }

  result = 0xD000000000000023;
  if (a1 == 0xD000000000000023 && 0x8000000252E66BC0 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
  {
    v21 = *(v3 + 32);
    if (v21)
    {
LABEL_10:
      v22 = type metadata accessor for HomeAutomationHomeLocation(0);
LABEL_11:
      *(a3 + 24) = v22;
      *a3 = v21;
    }

LABEL_24:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  if (a1 == 0xD000000000000013 && 0x8000000252E66BF0 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
  {
    v20 = *(v3 + 40);
    goto LABEL_5;
  }

  if (a1 == 0x7475626972747461 && a2 == 0xE900000000000065 || (sub_252E37DB4() & 1) != 0)
  {
    sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_attribute, v19);
    v23 = sub_252E36324();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v19, 1, v23) != 1)
    {
      *(a3 + 24) = v23;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
      return (*(v24 + 32))(boxed_opaque_existential_0, v19, v23);
    }

    v25 = v19;
LABEL_23:
    result = sub_252938BBC(v25);
    goto LABEL_24;
  }

  if ((a1 != 0x614E797469746E65 || a2 != 0xEB0000000073656DLL) && (sub_252E37DB4() & 1) == 0)
  {
    if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE900000000000073 || (sub_252E37DB4() & 1) != 0)
    {
      v31 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_roomNames;
LABEL_35:
      v28 = *(v3 + v31);
      v29 = &qword_27F5405F0;
      v30 = &qword_252E3ECF0;
      goto LABEL_36;
    }

    if (a1 == 0x656D614E656E6F7ALL && a2 == 0xE900000000000073 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v31 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_zoneNames;
      goto LABEL_35;
    }

    if (a1 == 0xD000000000000010 && 0x8000000252E66C20 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v21 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_targetedHomeName);
      if (v21)
      {
        goto LABEL_10;
      }

      goto LABEL_24;
    }

    if (a1 == 0x7954656369766564 && a2 == 0xEB00000000736570 || (sub_252E37DB4() & 1) != 0)
    {
      v27 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_deviceTypes;
      goto LABEL_30;
    }

    if (a1 == 0x7453746567726174 && a2 == 0xEB00000000657461 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_targetState, v16);
      v32 = sub_252E36324();
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v16, 1, v32) != 1)
      {
        *(a3 + 24) = v32;
        v34 = __swift_allocate_boxed_opaque_existential_0(a3);
        return (*(v33 + 32))(v34, v16, v32);
      }

      v25 = v16;
      goto LABEL_23;
    }

    if (a1 == 0xD000000000000016 && 0x8000000252E66C50 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v35 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isSensorTrippedRequest;
LABEL_62:
      v20 = *(v3 + v35);
      goto LABEL_5;
    }

    if (a1 == 0xD000000000000013 && 0x8000000252E66C70 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v35 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isGarageDoorRequest;
      goto LABEL_62;
    }

    if (a1 == 0xD000000000000013 && 0x8000000252E66C90 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v21 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_userDefinedDuration);
      if (v21)
      {
        v22 = sub_252E36294();
        goto LABEL_11;
      }

      goto LABEL_24;
    }

    result = 0x65526E65704F7369;
    if (a1 == 0x65526E65704F7369 && a2 == 0xED00007473657571 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v35 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isOpenRequest;
      goto LABEL_62;
    }

    result = 0x5265736F6C437369;
    if (a1 == 0x5265736F6C437369 && a2 == 0xEE00747365757165 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
LABEL_79:
      v35 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isCloseRequest;
      goto LABEL_62;
    }

    result = 0x65526B636F4C7369;
    if (a1 == 0x65526B636F4C7369 && a2 == 0xED00007473657571 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v35 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isLockRequest;
      goto LABEL_62;
    }

    result = 0x6B636F6C6E557369;
    if (a1 == 0x6B636F6C6E557369 && a2 == 0xEF74736575716552 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v35 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isUnlockRequest;
      goto LABEL_62;
    }

    result = 0x6D72617369447369;
    if (a1 == 0x6D72617369447369 && a2 == 0xEF74736575716552 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v35 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isDisarmRequest;
      goto LABEL_62;
    }

    if (a1 == 0xD000000000000010 && 0x8000000252E66CF0 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v35 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isArmAwayRequest;
      goto LABEL_62;
    }

    if (a1 == 0xD000000000000010 && 0x8000000252E66D10 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v35 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isArmStayRequest;
      goto LABEL_62;
    }

    if (a1 == 0xD000000000000011 && 0x8000000252E66D30 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v35 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isArmNightRequest;
      goto LABEL_62;
    }

    result = 0x7571655256547369;
    if (a1 == 0x7571655256547369 && a2 == 0xEB00000000747365 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v35 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isTVRequest;
      goto LABEL_62;
    }

    result = 0x56636972656D756ELL;
    if (a1 == 0x56636972656D756ELL && a2 == 0xEC00000065756C61 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v21 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_numericValue);
      if (v21)
      {
        v22 = type metadata accessor for HomeAutomationAbstractMeasurement(0);
        goto LABEL_11;
      }

      goto LABEL_24;
    }

    result = 0x727275436E497369;
    if (a1 == 0x727275436E497369 && a2 == 0xEF6D6F6F52746E65 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v35 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isInCurrentRoom;
      goto LABEL_62;
    }

    result = 0x52726F6C6F437369;
    if (a1 == 0x52726F6C6F437369 && a2 == 0xEE00747365757165 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v35 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isColorRequest;
      goto LABEL_62;
    }

    if (a1 == 0xD000000000000011 && 0x8000000252E66D80 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v35 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isScheduleRequest;
      goto LABEL_62;
    }

    result = 0x52656E6563537369;
    if (a1 == 0x52656E6563537369 && a2 == 0xEE00747365757165 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v35 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isSceneRequest;
      goto LABEL_62;
    }

    if (a1 == 0xD000000000000010 && 0x8000000252E66DB0 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v35 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isPowerOnRequest;
      goto LABEL_62;
    }

    if (a1 == 0xD000000000000011 && 0x8000000252E66DD0 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v35 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isPowerOffRequest;
      goto LABEL_62;
    }

    result = 0xD000000000000014;
    if (a1 == 0xD000000000000014 && 0x8000000252E66DF0 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v35 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isTemperatureRequest;
      goto LABEL_62;
    }

    if (a1 == 0x6F43746567726174 && a2 == 0xEB00000000726F6CLL || (sub_252E37DB4() & 1) != 0)
    {
      sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_targetColor, v13);
      v36 = sub_252E36324();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v13, 1, v36) != 1)
      {
        *(a3 + 24) = v36;
        v38 = __swift_allocate_boxed_opaque_existential_0(a3);
        return (*(v37 + 32))(v38, v13, v36);
      }

      v25 = v13;
      goto LABEL_23;
    }

    result = 0x736552626F4A7369;
    if (a1 == 0x736552626F4A7369 && a2 == 0xEC00000064656D75 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v35 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isJobResumed;
      goto LABEL_62;
    }

    if (a1 == 0xD000000000000012 && 0x8000000252E66E20 == a2 || (sub_252E37DB4() & 1) != 0)
    {
      v39 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_secondaryCleanMode;
      swift_beginAccess();
      sub_252956C1C(v3 + v39, v10);
      v40 = sub_252E36324();
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(v10, 1, v40) != 1)
      {
        *(a3 + 24) = v40;
        v42 = __swift_allocate_boxed_opaque_existential_0(a3);
        return (*(v41 + 32))(v42, v10, v40);
      }

      v25 = v10;
      goto LABEL_23;
    }

    if (a1 == 0xD000000000000010 && 0x8000000252E66E40 == a2 || (sub_252E37DB4() & 1) != 0)
    {
      v31 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_serviceAreaNames;
      goto LABEL_35;
    }

    result = 0xD000000000000017;
    if (a1 == 0xD000000000000017 && 0x8000000252E66E60 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v43 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_numOverflowServiceAreas);
      *(a3 + 24) = MEMORY[0x277D83B88];
      *a3 = v43;
      return result;
    }

    result = 0x4356527369;
    if (a1 == 0x4356527369 && a2 == 0xE500000000000000 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v35 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isRVC;
      goto LABEL_62;
    }

    result = 0x7469746E456D756ELL;
    if (a1 == 0x7469746E456D756ELL && a2 == 0xEE0073656D614E79 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v44 = *(*(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_entityNames) + 16);
      *(a3 + 24) = MEMORY[0x277D839F8];
      *a3 = v44;
      return result;
    }

    if (a1 == 0xD000000000000010 && 0x8000000252E6DAD0 == a2 || (sub_252E37DB4() & 1) != 0)
    {
      v45 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_roomNames;
    }

    else
    {
      if (a1 != 0xD000000000000010 || 0x8000000252E6DAF0 != a2)
      {
        result = sub_252E37DB4();
        if ((result & 1) == 0)
        {
          if (a1 == 0xD000000000000016 && 0x8000000252E6DB10 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
          {
            v20 = *(*(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_deviceTypes) + 16) == 0;
            goto LABEL_5;
          }

          if (a1 == 0xD000000000000016 && 0x8000000252E6DB30 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
          {
            v20 = *(*(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_deviceTypes) + 16) == 1;
            goto LABEL_5;
          }

          result = 0xD00000000000001ELL;
          if (a1 == 0xD00000000000001ELL && 0x8000000252E6DB50 == a2 || (result = sub_252E37DB4(), (result & 1) != 0))
          {
            v20 = *(*(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_deviceTypes) + 16) > 1uLL;
            goto LABEL_5;
          }

          if (a1 != 0xD000000000000016 || 0x8000000252E6DB70 != a2)
          {
            result = sub_252E37DB4();
            if ((result & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          if (*(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isLockRequest))
          {
            v20 = 1;
            goto LABEL_5;
          }

          goto LABEL_79;
        }
      }

      v45 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_zoneNames;
    }

    v46 = *(v3 + v45);
    if (v46 >> 62)
    {
      result = sub_252E378C4();
    }

    else
    {
      result = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = result == 0;
    return result;
  }

  v27 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_entityNames;
LABEL_30:
  v28 = *(v3 + v27);
  v29 = &qword_27F540600;
  v30 = &qword_252E3CF90;
LABEL_36:
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  *a3 = v28;
}

uint64_t sub_25299450C(char a1)
{
  result = 0x7475626972747461;
  switch(a1)
  {
    case 1:
      return 0xD000000000000023;
    case 2:
    case 11:
    case 12:
      return 0xD000000000000013;
    case 3:
      return result;
    case 4:
      return 0x614E797469746E65;
    case 5:
      v5 = 1836019570;
      return v5 | 0x656D614E00000000;
    case 6:
      v5 = 1701736314;
      return v5 | 0x656D614E00000000;
    case 7:
      return 0xD000000000000010;
    case 8:
      return 0x7954656369766564;
    case 9:
      return 0x7453746567726174;
    case 10:
      return 0xD000000000000016;
    case 13:
      v4 = 0x6E65704F7369;
      goto LABEL_22;
    case 14:
      v3 = 0x736F6C437369;
      goto LABEL_37;
    case 15:
      v4 = 0x6B636F4C7369;
LABEL_22:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
      break;
    case 16:
      result = 0x6B636F6C6E557369;
      break;
    case 17:
      result = 0x6D72617369447369;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
    case 25:
    case 28:
      result = 0xD000000000000011;
      break;
    case 21:
      result = 0x7571655256547369;
      break;
    case 22:
      result = 0x56636972656D756ELL;
      break;
    case 23:
      result = 0x727275436E497369;
      break;
    case 24:
      result = 0x52726F6C6F437369;
      break;
    case 26:
      v3 = 0x6E6563537369;
LABEL_37:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x5265000000000000;
      break;
    case 27:
      result = 0xD000000000000010;
      break;
    case 29:
      result = 0xD000000000000014;
      break;
    case 30:
      result = 0x6F43746567726174;
      break;
    case 31:
      result = 0x736552626F4A7369;
      break;
    case 32:
      result = 0xD000000000000012;
      break;
    case 33:
      result = 0xD000000000000010;
      break;
    case 34:
      result = 0xD000000000000017;
      break;
    case 35:
      result = 0x4356527369;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_2529948D8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_25299450C(*a1);
  v5 = v4;
  if (v3 == sub_25299450C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252994960()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_25299450C(v1);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_2529949C4(uint64_t a1)
{
  sub_25299450C(*v1);
  sub_252E37044();
}

uint64_t sub_252994A18(uint64_t a1)
{
  v2 = *v1;
  sub_252E37EC4();
  sub_25299450C(v2);
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252994A78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252997560(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_252994AA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25299450C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_252994ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252997560(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252994B10(uint64_t a1)
{
  v2 = sub_252996CAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252994B4C(uint64_t a1)
{
  v2 = sub_252996CAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252994B88()
{

  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_attribute);

  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_targetState);

  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_targetColor);
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_secondaryCleanMode);

  return v0;
}

uint64_t sub_252994C88(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_252994D0C(uint64_t a1)
{
  sub_2529576E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_252994E10(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E08, &qword_252E3ECF8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252996CAC();
  sub_252E37F84();
  LOBYTE(v24) = 0;
  sub_252E37D04();
  if (!v2)
  {
    v22 = v7;
    v24 = *(v3 + 32);
    LOBYTE(v25) = 1;
    type metadata accessor for HomeAutomationHomeLocation(0);
    sub_252996C64(&qword_27F540520, type metadata accessor for HomeAutomationHomeLocation, byte_252E3CA10);
    sub_252E37CD4();
    LOBYTE(v24) = 2;
    sub_252E37D04();
    v21 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_attribute;
    LOBYTE(v24) = 3;
    v12 = sub_252E36324();
    v13 = sub_252996C64(&qword_27F540548, MEMORY[0x277D55C48], MEMORY[0x277D55C50]);
    v21 = v12;
    sub_252E37CD4();
    v20[4] = v13;
    v24 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_entityNames);
    LOBYTE(v25) = 4;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
    v15 = sub_25299726C(&qword_27F540638, &qword_27F540548, MEMORY[0x277D55C50], MEMORY[0x277D83948]);
    v20[5] = v14;
    sub_252E37D54();
    v20[2] = v15;
    v24 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_roomNames);
    LOBYTE(v25) = 5;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5405F0, &qword_252E3ECF0);
    v17 = sub_252996D00(&qword_27F540630, &qword_27F540520, byte_252E3CA10, MEMORY[0x277D83948]);
    v20[3] = v16;
    sub_252E37D54();
    v24 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_zoneNames);
    LOBYTE(v25) = 6;
    sub_252E37D54();
    v20[1] = v17;
    v24 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_targetedHomeName);
    LOBYTE(v25) = 7;
    sub_252E37CD4();
    v24 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_deviceTypes);
    LOBYTE(v25) = 8;
    sub_252E37D54();
    LOBYTE(v24) = 9;
    sub_252E37CD4();
    LOBYTE(v24) = 10;
    sub_252E37D04();
    LOBYTE(v24) = 11;
    sub_252E37D04();
    v24 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_userDefinedDuration);
    LOBYTE(v25) = 12;
    sub_252E36294();
    sub_252996C64(&qword_27F540E10, MEMORY[0x277D55BB0], MEMORY[0x277D55BB8]);
    sub_252E37CD4();
    LOBYTE(v24) = 13;
    sub_252E37D04();
    LOBYTE(v24) = 14;
    sub_252E37D04();
    LOBYTE(v24) = 15;
    sub_252E37D04();
    LOBYTE(v24) = 16;
    sub_252E37D04();
    LOBYTE(v24) = 17;
    sub_252E37D04();
    LOBYTE(v24) = 18;
    sub_252E37D04();
    LOBYTE(v24) = 19;
    sub_252E37D04();
    LOBYTE(v24) = 20;
    sub_252E37D04();
    LOBYTE(v24) = 21;
    sub_252E37D04();
    v24 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_numericValue);
    LOBYTE(v25) = 22;
    type metadata accessor for HomeAutomationAbstractMeasurement(0);
    sub_252996C64(&qword_27F540E18, type metadata accessor for HomeAutomationAbstractMeasurement, protocol conformance descriptor for HomeAutomationAbstractMeasurement);
    sub_252E37CD4();
    LOBYTE(v24) = 23;
    sub_252E37D04();
    LOBYTE(v24) = 24;
    sub_252E37D04();
    LOBYTE(v24) = 25;
    sub_252E37D04();
    LOBYTE(v24) = 26;
    sub_252E37D04();
    LOBYTE(v24) = 27;
    sub_252E37D04();
    LOBYTE(v24) = 28;
    sub_252E37D04();
    LOBYTE(v24) = 29;
    sub_252E37D04();
    LOBYTE(v24) = 30;
    sub_252E37CD4();
    LOBYTE(v24) = 31;
    sub_252E37D04();
    v18 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_secondaryCleanMode;
    swift_beginAccess();
    sub_252956C1C(v3 + v18, v22);
    LOBYTE(v25) = 32;
    sub_252E37CD4();
    sub_252938BBC(v22);
    v25 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_serviceAreaNames);
    v23 = 33;
    sub_252E37D54();
    LOBYTE(v25) = 34;
    sub_252E37D34();
    LOBYTE(v25) = 35;
    sub_252E37D04();
  }

  return (*(v9 + 8))(v11, v8);
}

void sub_25299590C(uint64_t a1)
{
  sub_2529576E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_252995A10(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v77 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v76 = v73 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v73 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v73 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540DE8, &unk_252E3ECE0);
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v14 = v73 - v13;
  *(v1 + 16) = 0;
  v15 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_secondaryCleanMode;
  v16 = sub_252E36324();
  v17 = *(*(v16 - 8) + 56);
  v82 = v1;
  v17(v1 + v15, 1, 1, v16);
  v18 = a1[3];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_252996CAC();
  v79 = v14;
  v19 = v83;
  sub_252E37F74();
  if (!v19)
  {
    v20 = v12;
    v21 = v10;
    v74 = v15;
    v75 = v16;
    v23 = v78;
    v22 = v79;
    LOBYTE(v84) = 0;
    v24 = v80;
    v25 = sub_252E37C14();
    v83 = 0;
    v26 = v82;
    *(v82 + 24) = v25 & 1;
    v28 = type metadata accessor for HomeAutomationHomeLocation(0);
    v85 = 1;
    v29 = sub_252996C64(&qword_27F540518, type metadata accessor for HomeAutomationHomeLocation, byte_252E3CA38);
    v30 = v83;
    sub_252E37BE4();
    if (v30)
    {
      v83 = v30;
      (*(v23 + 8))(v22, v24);
      goto LABEL_4;
    }

    v73[4] = v29;
    *(v26 + 32) = v84;
    LOBYTE(v84) = 2;
    v31 = sub_252E37C14();
    v83 = 0;
    v73[3] = v28;
    *(v26 + 40) = v31 & 1;
    LOBYTE(v84) = 3;
    v32 = sub_252996C64(&qword_27F540538, MEMORY[0x277D55C48], MEMORY[0x277D55C60]);
    v33 = v83;
    sub_252E37BE4();
    v83 = v33;
    if (v33)
    {
      (*(v23 + 8))(v22, v24);
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      LODWORD(v78) = 0;
      LODWORD(v79) = 0;
      LODWORD(v80) = 0;
    }

    else
    {
      v73[2] = v32;
      sub_2529439A0(v20, v26 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_attribute);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
      v85 = 4;
      sub_25299726C(&qword_27F540608, &qword_27F540538, MEMORY[0x277D55C60], MEMORY[0x277D83978]);
      v42 = v83;
      sub_252E37C64();
      v83 = v42;
      if (v42)
      {
        (*(v23 + 8))(v22, v24);
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = 0;
        LODWORD(v78) = 0;
        LODWORD(v79) = 0;
        LODWORD(v80) = 0;
        v34 = 1;
      }

      else
      {
        *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_entityNames) = v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5405F0, &qword_252E3ECF0);
        v85 = 5;
        v73[1] = sub_252996D00(&qword_27F5405F8, &qword_27F540518, byte_252E3CA38, MEMORY[0x277D83978]);
        v43 = v83;
        sub_252E37C64();
        if (v43)
        {
          v83 = v43;
          (*(v23 + 8))(v22, v24);
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          LODWORD(v78) = 0;
          LODWORD(v79) = 0;
          LODWORD(v80) = 0;
          v34 = 1;
          v35 = 1;
        }

        else
        {
          *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_roomNames) = v84;
          v85 = 6;
          sub_252E37C64();
          *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_zoneNames) = v84;
          v85 = 7;
          sub_252E37BE4();
          *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_targetedHomeName) = v84;
          v85 = 8;
          sub_252E37C64();
          v83 = 0;
          *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_deviceTypes) = v84;
          LOBYTE(v84) = 9;
          sub_252E37BE4();
          v83 = 0;
          sub_2529439A0(v21, v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_targetState);
          LOBYTE(v84) = 10;
          v44 = v83;
          v45 = sub_252E37C14();
          v83 = v44;
          if (v44 || (*(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isSensorTrippedRequest) = v45 & 1, LOBYTE(v84) = 11, v46 = sub_252E37C14(), v83 = 0, *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isGarageDoorRequest) = v46 & 1, sub_252E36294(), v85 = 12, sub_252996C64(&qword_27F540DF8, MEMORY[0x277D55BB0], MEMORY[0x277D55BC0]), v47 = v83, sub_252E37BE4(), (v83 = v47) != 0))
          {
            (*(v23 + 8))(v79, v80);
            v41 = 0;
            LODWORD(v78) = 0;
            LODWORD(v79) = 0;
            LODWORD(v80) = 0;
            v34 = 1;
            v35 = 1;
            v36 = 1;
            v37 = 1;
            v38 = 1;
            v39 = 1;
            v40 = 1;
            v26 = v82;
          }

          else
          {
            *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_userDefinedDuration) = v84;
            LOBYTE(v84) = 13;
            v48 = sub_252E37C14();
            v83 = 0;
            *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isOpenRequest) = v48 & 1;
            LOBYTE(v84) = 14;
            v49 = sub_252E37C14();
            v83 = 0;
            *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isCloseRequest) = v49 & 1;
            LOBYTE(v84) = 15;
            v50 = sub_252E37C14();
            v83 = 0;
            *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isLockRequest) = v50 & 1;
            LOBYTE(v84) = 16;
            v51 = sub_252E37C14();
            v83 = 0;
            *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isUnlockRequest) = v51 & 1;
            LOBYTE(v84) = 17;
            v52 = sub_252E37C14();
            v83 = 0;
            *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isDisarmRequest) = v52 & 1;
            LOBYTE(v84) = 18;
            v53 = sub_252E37C14();
            v83 = 0;
            *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isArmAwayRequest) = v53 & 1;
            LOBYTE(v84) = 19;
            v54 = sub_252E37C14();
            v83 = 0;
            *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isArmStayRequest) = v54 & 1;
            LOBYTE(v84) = 20;
            v55 = sub_252E37C14();
            v83 = 0;
            *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isArmNightRequest) = v55 & 1;
            LOBYTE(v84) = 21;
            v56 = sub_252E37C14();
            v83 = 0;
            *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isTVRequest) = v56 & 1;
            type metadata accessor for HomeAutomationAbstractMeasurement(0);
            v85 = 22;
            sub_252996C64(&qword_27F540E00, type metadata accessor for HomeAutomationAbstractMeasurement, protocol conformance descriptor for HomeAutomationAbstractMeasurement);
            v57 = v83;
            sub_252E37BE4();
            v83 = v57;
            if (v57)
            {
              (*(v23 + 8))(v79, v80);
              LODWORD(v78) = 0;
              LODWORD(v79) = 0;
              LODWORD(v80) = 0;
              v34 = 1;
              v35 = 1;
              v36 = 1;
              v37 = 1;
              v38 = 1;
              v39 = 1;
              v40 = 1;
              v41 = 1;
              v26 = v82;
            }

            else
            {
              *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_numericValue) = v84;
              LOBYTE(v84) = 23;
              v58 = sub_252E37C14();
              v83 = 0;
              *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isInCurrentRoom) = v58 & 1;
              LOBYTE(v84) = 24;
              v59 = sub_252E37C14();
              v83 = 0;
              *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isColorRequest) = v59 & 1;
              LOBYTE(v84) = 25;
              v60 = sub_252E37C14();
              v83 = 0;
              *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isScheduleRequest) = v60 & 1;
              LOBYTE(v84) = 26;
              v61 = sub_252E37C14();
              v83 = 0;
              *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isSceneRequest) = v61 & 1;
              LOBYTE(v84) = 27;
              v62 = sub_252E37C14();
              v83 = 0;
              *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isPowerOnRequest) = v62 & 1;
              LOBYTE(v84) = 28;
              v63 = sub_252E37C14();
              v83 = 0;
              *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isPowerOffRequest) = v63 & 1;
              LOBYTE(v84) = 29;
              v64 = sub_252E37C14();
              v83 = 0;
              *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isTemperatureRequest) = v64 & 1;
              LOBYTE(v84) = 30;
              sub_252E37BE4();
              v83 = 0;
              sub_2529439A0(v76, v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_targetColor);
              LOBYTE(v84) = 31;
              v65 = v83;
              v66 = sub_252E37C14();
              v83 = v65;
              if (!v65)
              {
                *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isJobResumed) = v66 & 1;
                LOBYTE(v84) = 32;
                sub_252E37BE4();
                v83 = 0;
                v67 = v82;
                v68 = v74;
                swift_beginAccess();
                sub_252956C98(v77, v67 + v68);
                swift_endAccess();
                v85 = 33;
                v69 = v83;
                sub_252E37C64();
                v83 = v69;
                if (!v69)
                {
                  *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_serviceAreaNames) = v84;
                  LOBYTE(v84) = 34;
                  v70 = sub_252E37C44();
                  v83 = 0;
                  *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_numOverflowServiceAreas) = v70;
                  LOBYTE(v84) = 35;
                  v71 = sub_252E37C14();
                  v83 = 0;
                  v72 = v71;
                  (*(v23 + 8))(v79, v80);
                  v26 = v82;
                  *(v82 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isRVC) = v72 & 1;
                  goto LABEL_6;
                }
              }

              (*(v23 + 8))(v79, v80);
              LODWORD(v80) = 0;
              v34 = 1;
              v35 = 1;
              v36 = 1;
              v37 = 1;
              v38 = 1;
              v39 = 1;
              v40 = 1;
              v41 = 1;
              LODWORD(v78) = 1;
              LODWORD(v79) = 1;
              v26 = v82;
            }
          }
        }
      }
    }

    if (v34)
    {
      sub_252938BBC(v26 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_attribute);
      if ((v35 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (!v35)
    {
LABEL_13:
      if (v36)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }

    if (v36)
    {
LABEL_14:

      if ((v37 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_26;
    }

LABEL_25:
    if (!v37)
    {
LABEL_15:
      if (v38)
      {
        goto LABEL_16;
      }

      goto LABEL_27;
    }

LABEL_26:

    if (v38)
    {
LABEL_16:

      if ((v39 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_28;
    }

LABEL_27:
    if (!v39)
    {
LABEL_17:
      if (v40)
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }

LABEL_28:

    if (v40)
    {
LABEL_18:
      sub_252938BBC(v26 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_targetState);
      if ((v41 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_30;
    }

LABEL_29:
    if (!v41)
    {
LABEL_19:
      if (v78)
      {
        goto LABEL_20;
      }

      goto LABEL_31;
    }

LABEL_30:

    if (v78)
    {
LABEL_20:

      if ((v79 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_32;
    }

LABEL_31:
    if (!v79)
    {
LABEL_21:
      sub_252938BBC(v26 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_secondaryCleanMode);
      if (!v80)
      {
        goto LABEL_5;
      }

LABEL_33:

      goto LABEL_5;
    }

LABEL_32:
    sub_252938BBC(v26 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_targetColor);
    sub_252938BBC(v26 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_secondaryCleanMode);
    if ((v80 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

  v83 = v19;
  v26 = v82;
LABEL_4:

  sub_252938BBC(v26 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_secondaryCleanMode);
LABEL_5:
  type metadata accessor for HomeAutomationIntentContext(0);
  swift_deallocPartialClassInstance();
LABEL_6:
  __swift_destroy_boxed_opaque_existential_1(v81);
  return v26;
}

uint64_t sub_252996B54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for HomeAutomationIntentContext(0);
  v5 = swift_allocObject();
  result = sub_252995A10(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_252996C64(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252996CAC()
{
  result = qword_27F540DF0;
  if (!qword_27F540DF0)
  {
    result = swift_getWitnessTable(asc_252E3EDFC, &type metadata for HomeAutomationIntentContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540DF0);
  }

  return result;
}

uint64_t sub_252996D00(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5405F0, &qword_252E3ECF0);
    v10 = sub_252996C64(a2, type metadata accessor for HomeAutomationHomeLocation, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252996D9C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  *(v1 + 16) = 0;
  v6 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_secondaryCleanMode;
  v7 = sub_252E36324();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + 24) = *(a1 + 16);
  v15 = *(a1 + 24);
  *(v1 + 32) = v15;
  *(v1 + 40) = *(a1 + 32);
  v8 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_attribute;
  swift_beginAccess();
  sub_252956C1C(a1 + v8, v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_attribute);
  v14 = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_entityNames);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_entityNames) = v14;
  v13 = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_roomNames);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_roomNames) = v13;
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_zoneNames) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_zoneNames);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_targetedHomeName) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetedHomeName);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_deviceTypes) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_deviceTypes);
  sub_252956C1C(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetState, v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_targetState);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isSensorTrippedRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isSensorTrippedRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isGarageDoorRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isGarageDoorRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_userDefinedDuration) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_userDefinedDuration);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isOpenRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isOpenRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isCloseRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isCloseRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isLockRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isLockRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isUnlockRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isUnlockRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isDisarmRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isDisarmRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isArmAwayRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isArmAwayRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isArmStayRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isArmStayRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isArmNightRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isArmNightRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isTVRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isTVRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_numericValue) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_numericValue);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isInCurrentRoom) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isInCurrentRoom);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isColorRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isColorRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isScheduleRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isScheduleRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isSceneRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isSceneRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isPowerOnRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isPowerOnRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isPowerOffRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isPowerOffRequest);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isTemperatureRequest) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isTemperatureRequest);
  v9 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetColor;
  swift_beginAccess();
  sub_252956C1C(a1 + v9, v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_targetColor);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isJobResumed) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isJobResumed);
  v10 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_secondaryCleanMode;
  swift_beginAccess();
  sub_252956C1C(a1 + v10, v5);
  swift_beginAccess();

  sub_252956C98(v5, v1 + v6);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_serviceAreaNames) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_serviceAreaNames);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_numOverflowServiceAreas) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_numOverflowServiceAreas);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isRVC) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isRVC);

  return v1;
}

uint64_t sub_25299726C(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540600, &qword_252E3CF90);
    v10 = sub_252996C64(a2, MEMORY[0x277D55C48], a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeAutomationIntentContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeAutomationIntentContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25299745C()
{
  result = qword_27F540E20;
  if (!qword_27F540E20)
  {
    result = swift_getWitnessTable(byte_252E3EDD4, &type metadata for HomeAutomationIntentContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540E20);
  }

  return result;
}

unint64_t sub_2529974B4()
{
  result = qword_27F540E28;
  if (!qword_27F540E28)
  {
    result = swift_getWitnessTable(byte_252E3ED0C, &type metadata for HomeAutomationIntentContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540E28);
  }

  return result;
}

unint64_t sub_25299750C()
{
  result = qword_27F540E30;
  if (!qword_27F540E30)
  {
    result = swift_getWitnessTable(byte_252E3ED34, &type metadata for HomeAutomationIntentContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540E30);
  }

  return result;
}

unint64_t sub_252997560(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37DE4();

  if (v2 >= 0x24)
  {
    return 36;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2529975D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  if (a1 == 0x6F66696E55736168 && a2 == 0xEF65676E61526D72 || (sub_252E37DB4() & 1) != 0)
  {
    sub_252B3B048(v11);
    v12 = sub_252E36324();
    v13 = (*(*(v12 - 8) + 48))(v11, 1, v12) != 1;
    result = sub_252938BBC(v11);
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v13;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000252E6DC30 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    sub_252B3B048(v9);
    v15 = sub_252E36324();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v9, 1, v15) == 1)
    {
      result = sub_252938BBC(v9);
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    else
    {
      *(a3 + 24) = v15;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
      return (*(v16 + 32))(boxed_opaque_existential_0, v9, v15);
    }
  }

  else
  {

    return sub_252CDF514(a1, a2, a3);
  }

  return result;
}

unint64_t sub_252997898(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v26 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v25);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v28 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v6 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_252E378C4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v11 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_252E378C4();
        goto LABEL_19;
      }

      if (v9)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v13 >> 1) - v12) < v8)
          {
            goto LABEL_43;
          }

          v32 = v3;
          v16 = v11 + 8 * v12 + 32;
          v27 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_45;
            }

            sub_25299EB54();
            for (i = 0; i != v14; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540610, &qword_252E3CF98);
              v18 = sub_2529FBE00(v31, i, v6);
              v20 = *v19;

              (v18)(v31, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            type metadata accessor for HomeAutomationEntityState(0);
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v32;
          if (v8 >= 1)
          {
            v21 = *(v27 + 16);
            v5 = __OFADD__(v21, v8);
            v22 = v21 + v8;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v27 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_24;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x277D84F90];
}

void *sub_252997BE4(uint64_t a1)
{
  v1 = a1;
  v25 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for HomeAutomationEntityState(0);
    sub_25299EBD8(&qword_27F540E40, type metadata accessor for HomeAutomationEntityState, byte_252E430B8);
    result = sub_252E373E4();
    v1 = v20;
    v3 = v21;
    v5 = v22;
    v4 = v23;
    v6 = v24;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

  v10 = (v5 + 64) >> 6;
  v11 = MEMORY[0x277D84F90];
  v12 = v4;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v12;
    v14 = v6;
    v15 = v12;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_20:
      sub_25291AE30(v1);
      return v11;
    }

    while (1)
    {
      MEMORY[0x2530AD700](v18);
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v11 = v25;
      v12 = v15;
      v6 = v16;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_252E37904())
      {
        type metadata accessor for HomeAutomationEntityState(0);
        v18 = swift_dynamicCast();
        v15 = v12;
        v16 = v6;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      goto LABEL_20;
    }

    v14 = *(v3 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.removeDuplicates()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v22 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  MEMORY[0x28223BE20](v8);
  v23 = &v20 - v11;
  v12 = sub_252E36E14();
  v29 = v12;
  if (sub_252E372F4())
  {
    v21 = v6;
    v13 = 0;
    v27 = (v5 + 16);
    v24 = (v5 + 8);
    v25 = (v5 + 32);
    v14 = v23;
    while (1)
    {
      v15 = sub_252E372C4();
      sub_252E37294();
      if (v15)
      {
        v16 = *(v5 + 16);
        v16(v14, (a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13), a2);
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = sub_252E37A34();
        if (v21 != 8)
        {
          __break(1u);
          return result;
        }

        v28 = result;
        v16 = *v27;
        (*v27)(v14, &v28, a2);
        swift_unknownObjectRelease();
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_11:
          __break(1u);
          return v29;
        }
      }

      (*v25)(v10, v14, a2);
      v28 = v29;
      v18 = sub_252E37304();
      swift_getWitnessTable(MEMORY[0x277D83970], v18);
      if ((sub_252E371D4() & 1) == 0)
      {
        v16(v22, v10, a2);
        v14 = v23;
        sub_252E372E4();
      }

      (*v24)(v10, a2);
      ++v13;
      if (v17 == sub_252E372F4())
      {
        return v29;
      }
    }
  }

  return v12;
}

uint64_t sub_252998158(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_15:
    v5 = sub_252E378C4();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x2530ADF00](i, a3);
          v8 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            v9 = 0;
            return v9 & 1;
          }
        }

        else
        {
          if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v7 = *(a3 + 8 * i + 32);

          v8 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_12;
          }
        }

        v12 = v7;
        v9 = a1(&v12);

        if (v3)
        {
          goto LABEL_13;
        }

        if ((v9 & (v8 != v5)) == 0)
        {
          return v9 & 1;
        }
      }
    }
  }

  v9 = 1;
  return v9 & 1;
}

void *sub_2529982A8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_252E36324();
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 24);
  if (v9 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v11 = 0;
    v28 = v9 & 0xFFFFFFFFFFFFFF8;
    v29 = v9 & 0xC000000000000001;
    v12 = (v25 + 48);
    v26 = (v25 + 32);
    v13 = MEMORY[0x277D84F90];
    v23 = v9;
    v24 = v8;
    v27 = i;
    while (v29)
    {
      v14 = MEMORY[0x2530ADF00](v11, v9);
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      sub_252956C1C(v14 + *a1, v5);

      if ((*v12)(v5, 1, v6) == 1)
      {
        sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
      }

      else
      {
        v16 = a1;
        v17 = *v26;
        (*v26)(v8, v5, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2529F7F74(0, v13[2] + 1, 1, v13);
        }

        v19 = v13[2];
        v18 = v13[3];
        if (v19 >= v18 >> 1)
        {
          v13 = sub_2529F7F74((v18 > 1), v19 + 1, 1, v13);
        }

        v13[2] = v19 + 1;
        v20 = v13 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v19;
        v8 = v24;
        v17(v20, v24, v6);
        a1 = v16;
        v9 = v23;
      }

      ++v11;
      if (v15 == v27)
      {
        return v13;
      }
    }

    if (v11 >= *(v28 + 16))
    {
      goto LABEL_18;
    }

    v14 = *(v9 + 8 * v11 + 32);

    v15 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529985B8(void *a1)
{
  v3 = *(v1 + 24);
  v12 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_21:
    v4 = sub_252E378C4();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2530ADF00](v7, v3);
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return result;
      }

      v9 = *(result + *a1);

      v10 = swift_unknownObjectRelease();
      if (v9)
      {
        goto LABEL_15;
      }

LABEL_9:
      v7 = v5;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v5 = v7 + 1;
    if (!*(*(v3 + 32 + 8 * v7) + *a1))
    {
      goto LABEL_9;
    }

LABEL_15:
    MEMORY[0x2530AD700](v10);
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    v6 = v12;
  }

  while (v5 != v4);
LABEL_23:
  v11 = sub_252DF8E14(v6);

  return v11;
}

char *sub_25299875C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  v4 = sub_252E36324();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 24);
  if (v7 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v9 = 0;
    v25 = v7 & 0xFFFFFFFFFFFFFF8;
    v26 = v7 & 0xC000000000000001;
    v10 = (v23 + 48);
    v24 = (v23 + 32);
    v11 = MEMORY[0x277D84F90];
    v21 = i;
    v22 = v6;
    while (v26)
    {
      v12 = MEMORY[0x2530ADF00](v9, v7);
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      sub_252956C1C(v12 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type, v3);

      if ((*v10)(v3, 1, v4) == 1)
      {
        sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
      }

      else
      {
        v14 = v7;
        v15 = *v24;
        (*v24)(v6, v3, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_2529F7F74(0, v11[2] + 1, 1, v11);
        }

        v17 = v11[2];
        v16 = v11[3];
        if (v17 >= v16 >> 1)
        {
          v11 = sub_2529F7F74((v16 > 1), v17 + 1, 1, v11);
        }

        v11[2] = v17 + 1;
        v18 = v11 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v17;
        v6 = v22;
        v15(v18, v22, v4);
        v7 = v14;
        i = v21;
      }

      ++v9;
      if (v13 == i)
      {
        goto LABEL_21;
      }
    }

    if (v9 >= *(v25 + 16))
    {
      goto LABEL_18;
    }

    v12 = *(v7 + 8 * v9 + 32);

    v13 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_21:
  v19 = sub_252DF8B58(v11);

  return v19;
}

uint64_t sub_252998A68()
{
  v1 = sub_252997898(*(v0 + 24));
  v2 = v1;
  v8 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v4, v2);
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_13;
      }

LABEL_7:
      MEMORY[0x2530AD700]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v4;
      if (v5 == i)
      {
        v6 = v8;
        goto LABEL_17;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v5 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_17:

  return v6;
}

uint64_t sub_252998BC8()
{
  v1 = sub_252997898(*(v0 + 24));
  v14 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_21:
    v13 = v1;
    v2 = sub_252E378C4();
    v1 = v13;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_22:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = v1 + 32;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v3;
    while (v4)
    {
      v9 = v1;
      result = MEMORY[0x2530ADF00](v8);
      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      v11 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);

      v12 = swift_unknownObjectRelease();
      if (v11)
      {
        goto LABEL_15;
      }

      v1 = v9;
LABEL_9:
      v8 = v3;
      if (v3 == v2)
      {
        goto LABEL_23;
      }
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v8 >= *(v5 + 16))
    {
      goto LABEL_20;
    }

    v3 = v8 + 1;
    if (!*(*(v6 + 8 * v8) + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue))
    {
      goto LABEL_9;
    }

    v9 = v1;

LABEL_15:
    MEMORY[0x2530AD700](v12);
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    v7 = v14;
    v1 = v9;
  }

  while (v3 != v2);
LABEL_23:

  return v7;
}

char *sub_252998D84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  v4 = sub_252E36324();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252997898(*(v0 + 24));
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v11 = (v24 + 48);
    v25 = (v24 + 32);
    v26 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = MEMORY[0x277D84F90];
    v22 = v7 & 0xC000000000000001;
    v23 = v7;
    while (v10)
    {
      v13 = MEMORY[0x2530ADF00](v9, v7);
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      sub_252956C1C(v13 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v3);

      if ((*v11)(v3, 1, v4) == 1)
      {
        sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
      }

      else
      {
        v15 = i;
        v16 = *v25;
        (*v25)(v27, v3, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2529F7F74(0, *(v12 + 2) + 1, 1, v12);
        }

        v18 = *(v12 + 2);
        v17 = *(v12 + 3);
        if (v18 >= v17 >> 1)
        {
          v12 = sub_2529F7F74((v17 > 1), v18 + 1, 1, v12);
        }

        *(v12 + 2) = v18 + 1;
        v16(&v12[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18], v27, v4);
        i = v15;
        v10 = v22;
        v7 = v23;
      }

      ++v9;
      if (v14 == i)
      {
        goto LABEL_21;
      }
    }

    if (v9 >= *(v26 + 16))
    {
      goto LABEL_18;
    }

    v13 = *(v7 + 8 * v9 + 32);

    v14 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_21:

  v19 = sub_252DF8B58(v12);

  return v19;
}

uint64_t sub_25299909C()
{
  v1 = sub_252997898(*(v0 + 24));
  v16 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_21:
    v13 = v1;
    v2 = sub_252E378C4();
    v1 = v13;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_22:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = v1 + 32;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v3;
    while (v4)
    {
      v9 = v1;
      result = MEMORY[0x2530ADF00](v8);
      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_34;
      }

      v11 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);

      v12 = swift_unknownObjectRelease();
      if (v11)
      {
        goto LABEL_15;
      }

      v1 = v9;
LABEL_9:
      v8 = v3;
      if (v3 == v2)
      {
        goto LABEL_23;
      }
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v8 >= *(v5 + 16))
    {
      goto LABEL_20;
    }

    v3 = v8 + 1;
    if (!*(*(v6 + 8 * v8) + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue))
    {
      goto LABEL_9;
    }

    v9 = v1;

LABEL_15:
    MEMORY[0x2530AD700](v12);
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    v7 = v16;
    v1 = v9;
  }

  while (v3 != v2);
LABEL_23:

  v14 = sub_252DF8E40(v7);

  if (v14 >> 62)
  {
    result = sub_252E378C4();
    if (result != 1)
    {
      goto LABEL_30;
    }

LABEL_25:
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x2530ADF00](0, v14);
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      v15 = *(v14 + 32);
    }

    return v15;
  }

  result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result == 1)
  {
    goto LABEL_25;
  }

LABEL_30:

  return 0;
}

uint64_t sub_2529992EC()
{
  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
    if (sub_252E378C4() == 1)
    {
      goto LABEL_3;
    }

    result = sub_252E378C4();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == 1)
    {
LABEL_3:
      if ((v2 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2530ADF00](0, v2);
        goto LABEL_6;
      }

      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v2 + 32);

LABEL_6:
        v5 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);

        v6 = sub_252C75BA4(v5);

LABEL_17:
        v10 = sub_252997BE4(v6);

        return v10;
      }

      __break(1u);
      goto LABEL_27;
    }
  }

  if (result < 2)
  {
    v6 = MEMORY[0x277D84FA0];
    goto LABEL_17;
  }

  v1 = v2 & 0xC000000000000001;
  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_27:
    v7 = MEMORY[0x2530ADF00](0, v2);
    goto LABEL_13;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_29;
  }

  v7 = *(v2 + 32);

LABEL_13:
  v8 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);

  v6 = sub_252C75BA4(v8);

  if (v2 >> 62)
  {
    result = sub_252E378C4();
    v9 = result;
    if (!result)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  if (v9 >= 1)
  {
    v11 = 0;
    do
    {
      if (v1)
      {
        MEMORY[0x2530ADF00](v11, v2);
      }

      else
      {
      }

      ++v11;

      v13 = sub_252C75BA4(v12);

      v6 = sub_2529F9DE8(v13, v6);
    }

    while (v9 != v11);
    goto LABEL_17;
  }

LABEL_29:
  __break(1u);
  return result;
}