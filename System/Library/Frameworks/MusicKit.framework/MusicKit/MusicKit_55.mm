uint64_t sub_217696DA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25468, &qword_21775CD00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217696E14(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_217696F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_77();
  OUTLINED_FUNCTION_3_111();
  sub_217752338();
  sub_217752FF8();
  OUTLINED_FUNCTION_7_77();
  OUTLINED_FUNCTION_3_111();
  sub_217752338();
  sub_217752FF8();
  v7 = (v3 + *(*v3 + 384));
  *v7 = a2;
  v7[1] = a3;
  v9 = *a1;
  v10 = *(a1 + 8);
  return AnyLibraryRequestConfigurationParameters.init(filteringOptions:)(&v9);
}

uint64_t sub_2176970A0()
{
  OUTLINED_FUNCTION_1_127();
  v2 = *(v1 + 336);
  OUTLINED_FUNCTION_6_95();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v13[-v6 - 8];
  OUTLINED_FUNCTION_1_127();
  OUTLINED_FUNCTION_138(v0 + *(v8 + 368), v13);
  v9 = OUTLINED_FUNCTION_2_121();
  v10(v9);
  OUTLINED_FUNCTION_1_127();
  OUTLINED_FUNCTION_4_114();
  (*(v4 + 8))(v7, v2);
  return v12;
}

uint64_t sub_2176971A0()
{
  OUTLINED_FUNCTION_1_127();
  v2 = *(v1 + 344);
  OUTLINED_FUNCTION_6_95();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v13[-v6 - 8];
  OUTLINED_FUNCTION_1_127();
  OUTLINED_FUNCTION_138(v0 + *(v8 + 376), v13);
  v9 = OUTLINED_FUNCTION_2_121();
  v10(v9);
  OUTLINED_FUNCTION_1_127();
  OUTLINED_FUNCTION_4_114();
  (*(v4 + 8))(v7, v2);
  return v12;
}

uint64_t sub_2176972A0()
{
  OUTLINED_FUNCTION_8_80();
  v2 = *(v1 + 344);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  OUTLINED_FUNCTION_8_80();
  v8 = *(v7 + 336);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  OUTLINED_FUNCTION_8_80();
  v14 = *(v0 + *(v13 + 384));
  OUTLINED_FUNCTION_8_80();
  v16 = *(v15 + 368);
  OUTLINED_FUNCTION_138(v0 + v16, v25);
  (*(v9 + 16))(v12, v0 + v16, v8);
  v17 = *(*v0 + 376);
  OUTLINED_FUNCTION_138(v0 + v17, v24);
  (*(v3 + 16))(v6, v0 + v17, v2);
  OUTLINED_FUNCTION_138(v0 + 56, v23);
  v21 = *(v0 + 56);
  v22 = *(v0 + 64);
  v18 = v14(v12, v6, &v21);
  (*(v3 + 8))(v6, v2);
  (*(v9 + 8))(v12, v8);
  return v18;
}

uint64_t sub_217697528()
{
  OUTLINED_FUNCTION_0_136();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_0_136();
  (*(v3 + 8))(v0 + v4);
}

uint64_t sub_21769760C()
{
  v0 = AnyLibraryRequestConfigurationParameters.deinit();
  OUTLINED_FUNCTION_0_136();
  (*(v1 + 8))(v2 + v3);
  OUTLINED_FUNCTION_0_136();
  (*(v4 + 8))(v0 + v5);

  return v0;
}

uint64_t sub_2176976F8()
{
  v0 = sub_21769760C();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t Genre.init(propertyProvider:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 24))(v11, v4, v5);
  v7 = v11[0];
  v6 = v11[1];
  sub_217751DE8();
  sub_217269F50(v11);
  *a2 = v7;
  a2[1] = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  PropertyProvider.eraseToAnyPropertyProvider()(v8, v9, a2 + 2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Genre.name.getter()
{
  if (qword_280BE6A88 != -1)
  {
    OUTLINED_FUNCTION_71(&qword_280BE6A88);
  }

  result = sub_2172A4344();
  if (!v1)
  {
    return 0;
  }

  return result;
}

void *Genre._editorialNotes.getter(void x0_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6AD0 != -1)
  {
    swift_once();
  }

  v26 = qword_280C02228;

  return sub_2176CAE24(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_217697D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7, uint64_t *a8, uint64_t (*a9)(void))
{
  if (!a3)
  {
    goto LABEL_11;
  }

  v11 = *(a3 + 16);
  if (!v11)
  {

LABEL_11:
    OUTLINED_FUNCTION_2_122();
    v26 = MEMORY[0x277D84F90];
    v27 = a6;
    *&v25 = MEMORY[0x277D84F90];
    *(&v25 + 1) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_11_72();
    return sub_2173C381C(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26, v27);
  }

  v32 = MEMORY[0x277D84F90];
  sub_217752BF8();
  v12 = 0;
  v13 = a3 + 48;
  do
  {
    if (v12 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_14;
    }

    ++v12;
    v13 += 24;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    OUTLINED_FUNCTION_31_11(v14);
    OUTLINED_FUNCTION_12_58();
    a9();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217752BC8();
    sub_217752C08();
    sub_217752C18();
    sub_217752BD8();
  }

  while (v11 != v12);

  if ((v32 & 0x8000000000000000) == 0 && (v32 & 0x4000000000000000) == 0)
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v11 = v32;
    goto LABEL_9;
  }

LABEL_14:
  type metadata accessor for AnyMusicProperty();
  OUTLINED_FUNCTION_23_51();
  sub_217751DE8();
  sub_217752D28();
  OUTLINED_FUNCTION_23_51();

LABEL_9:
  v15 = MEMORY[0x277D84F90];

  OUTLINED_FUNCTION_2_122();
  v26 = v15;
  v27 = qword_282959AF8;
  *&v25 = v11;
  *(&v25 + 1) = v15;
  OUTLINED_FUNCTION_6();
  v20 = a4;
  v21 = a5;
  v22 = 0;
  v23 = 1;
  return sub_2173C381C(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26, v27);
}

uint64_t sub_217697F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (!a3)
  {
    goto LABEL_11;
  }

  v8 = *(a3 + 16);
  if (!v8)
  {

LABEL_11:
    OUTLINED_FUNCTION_2_122();
    v29 = MEMORY[0x277D84F90];
    v30 = a6;
    *&v28 = MEMORY[0x277D84F90];
    *(&v28 + 1) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_11_72();
    return sub_2173C381C(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30);
  }

  v33 = MEMORY[0x277D84F90];
  sub_217752BF8();
  v9 = 0;
  v10 = a3 + 48;
  do
  {
    if (v9 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_14;
    }

    ++v9;
    v10 += 24;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25658, &unk_2177657D0);
    OUTLINED_FUNCTION_31_11(v11);
    OUTLINED_FUNCTION_12_58();
    sub_217698370(v12, v13, v14, v15, v16, v17);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217752BC8();
    sub_217752C08();
    sub_217752C18();
    sub_217752BD8();
  }

  while (v8 != v9);

  if ((v33 & 0x8000000000000000) == 0 && (v33 & 0x4000000000000000) == 0)
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v10 = v33;
    goto LABEL_9;
  }

LABEL_14:
  type metadata accessor for AnyMusicProperty();
  OUTLINED_FUNCTION_23_51();
  sub_217751DE8();
  sub_217752D28();
  OUTLINED_FUNCTION_23_51();

LABEL_9:
  v18 = MEMORY[0x277D84F90];

  OUTLINED_FUNCTION_2_122();
  v29 = v18;
  v30 = qword_282959AF8;
  *&v28 = v10;
  *(&v28 + 1) = v18;
  OUTLINED_FUNCTION_6();
  v23 = a4;
  v24 = a5;
  v25 = 0;
  v26 = 1;
  return sub_2173C381C(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30);
}

uint64_t sub_217698154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = 0;
  *(v6 + 112) = 1;
  *&v8 = MEMORY[0x277D84F90];
  *(&v8 + 1) = MEMORY[0x277D84F90];
  return sub_2173C381C(a1, a2, a3, a4, 7630409, 0xE300000000000000, 0, 0, v8, MEMORY[0x277D84F90], a6);
}

uint64_t sub_2176981A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = 0;
  *(v6 + 112) = 1;
  *&v8 = MEMORY[0x277D84F90];
  *(&v8 + 1) = MEMORY[0x277D84F90];
  return sub_2173C381C(a1, a2, a3, a4, 0xD000000000000035, 0x80000002177B4C10, 0, 0, v8, MEMORY[0x277D84F90], a6);
}

uint64_t sub_217698200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = 0;
  *(v6 + 112) = 1;
  *&v8 = MEMORY[0x277D84F90];
  *(&v8 + 1) = MEMORY[0x277D84F90];
  return sub_2173C381C(a1, a2, a3, a4, 0xD000000000000030, 0x80000002177B4C50, 0, 0, v8, MEMORY[0x277D84F90], a6);
}

uint64_t sub_21769825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = 0;
  *(v6 + 112) = 1;
  *&v8 = MEMORY[0x277D84F90];
  *(&v8 + 1) = MEMORY[0x277D84F90];
  return sub_2173C381C(a1, a2, a3, a4, 0xD00000000000002DLL, 0x80000002177B4CB0, 0, 0, v8, MEMORY[0x277D84F90], a6);
}

uint64_t sub_2176982B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = 0;
  *(v6 + 112) = 1;
  *&v8 = MEMORY[0x277D84F90];
  *(&v8 + 1) = MEMORY[0x277D84F90];
  return sub_2173C381C(a1, a2, a3, a4, 0xD000000000000017, 0x80000002177B4CE0, 0, 0, v8, MEMORY[0x277D84F90], a6);
}

uint64_t sub_217698314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = 0;
  *(v6 + 112) = 1;
  *&v8 = MEMORY[0x277D84F90];
  *(&v8 + 1) = MEMORY[0x277D84F90];
  return sub_2173C381C(a1, a2, a3, a4, 0xD000000000000021, 0x80000002177B49A0, 0, 0, v8, MEMORY[0x277D84F90], a6);
}

uint64_t sub_217698370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = 0;
  *(v6 + 112) = 1;
  *&v8 = MEMORY[0x277D84F90];
  *(&v8 + 1) = MEMORY[0x277D84F90];
  return sub_2173C381C(a1, a2, a3, a4, 5001813, 0xE300000000000000, 0, 0, v8, MEMORY[0x277D84F90], a6);
}

uint64_t sub_2176983C0(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_217698420(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_217698490(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_2176984F4(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_217698558(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_2176985BC(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_217698628(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_217698690(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_2176986F4(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_217698758(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_2176987C0(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_21769882C(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_2176988E0()
{
  OUTLINED_FUNCTION_23_0();
  if (!v0)
  {
    swift_once();
  }

  return sub_2172A4344();
}

uint64_t sub_217698990(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_23_0();
  if (!v5)
  {
    swift_once();
  }

  return a3(*a2);
}

void *Genre.parent.getter(void x0_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6A80 != -1)
  {
    OUTLINED_FUNCTION_35_34(&qword_280BE6A80);
  }

  v26 = qword_280C021F0;

  return sub_2176CA6B8(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t Genre.debugDescription.getter()
{
  v28 = 0x2865726E6547;
  v29 = 0xE600000000000000;
  *&v23 = 0x22203A6469;
  *(&v23 + 1) = 0xE500000000000000;
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  OUTLINED_FUNCTION_19_45();
  OUTLINED_FUNCTION_17_58();

  *&v23 = 0x203A656D616E202CLL;
  *(&v23 + 1) = 0xE900000000000022;
  if (qword_280BE6A88 != -1)
  {
    OUTLINED_FUNCTION_71(&qword_280BE6A88);
  }

  v1 = sub_2172A4344();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0xE000000000000000;
  }

  MEMORY[0x21CEA23B0](v1, v3);

  OUTLINED_FUNCTION_19_45();
  OUTLINED_FUNCTION_17_58();

  if (qword_280BE6AF8 != -1)
  {
    swift_once();
  }

  v4 = sub_2172A4344();
  if (v5)
  {
    v12 = v4;
    v13 = v5;
    sub_217752AA8();

    strcpy(&v23, ", shortName: ");
    HIBYTE(v23) = -18;
    MEMORY[0x21CEA23B0](v12, v13, v14);

    OUTLINED_FUNCTION_19_45();
    OUTLINED_FUNCTION_17_58();
  }

  if (qword_280BE6A80 != -1)
  {
    OUTLINED_FUNCTION_35_34(&qword_280BE6A80);
  }

  sub_2176CA6B8(qword_280C021F0, v5, v6, v7, v8, v9, v10, v11, v18, v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, v27, v28, v29);
  if (*(&v19 + 1))
  {
    v23 = v19;
    v24 = v20;
    v25 = v21;
    v26 = v22;
    *&v19 = 0x746E65726170202CLL;
    *(&v19 + 1) = 0xEA0000000000203ALL;
    v15 = Genre.description.getter();
    MEMORY[0x21CEA23B0](v15);

    MEMORY[0x21CEA23B0](0x746E65726170202CLL, 0xEA0000000000203ALL, v16);

    sub_21728418C(&v23);
  }

  else
  {
    sub_217699F38(&v19);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return v28;
}

uint64_t Genre.id.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t sub_217698D60(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_23_0();
  if (!v4)
  {
    v7 = v3;
    swift_once();
    v3 = v7;
  }

  v5 = *a2;

  return v3(v5);
}

void *sub_217698DF0(void x0_0, uint64_t *a1, void a3, void a4, void a5, void a6, void a7, void a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_23_0();
  if (!v28)
  {
    swift_once();
  }

  v29 = *a1;

  return sub_2176CAE18(v29, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

void Genre._playlists.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (qword_280BE6B08 != -1)
  {
    swift_once();
  }

  v30 = qword_280BE6B10;

  sub_2176CB634(v30, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t static Genre.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v5);
  v7 = *(v6 + 104);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
  return v7(a2 + 2, v8, v5, v6) & 1;
}

uint64_t Genre.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 112))(a1, v3, v4);
}

uint64_t Genre.hashValue.getter()
{
  sub_2177531E8();
  sub_217751FF8();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 112))(v4, v1, v2);
  return sub_217753238();
}

uint64_t sub_217699058@<X0>(uint64_t *a1@<X8>)
{
  result = Genre.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Genre.subscript.getter()
{
  OUTLINED_FUNCTION_62_0();
  sub_2172E2134(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_62_0();
  sub_2172E2134(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_62_0();
  v3 = type metadata accessor for MusicItemCollection(0, *(v1 + 264), *(v0 + 272), v2);
  sub_2172E2134(v3, v4, v5);
  swift_getWitnessTable();
  v6 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v6, v7, v8);
}

uint64_t sub_217699230()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C308, &qword_217791B98);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6B726F77747261, 0xE700000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C021E8 = result;
  return result;
}

uint64_t sub_2176992A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2177586E0;
  if (qword_280BE4BF0 != -1)
  {
    OUTLINED_FUNCTION_23_3(&qword_280BE4BF0);
  }

  OUTLINED_FUNCTION_9_80(&qword_280BE4BF8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C328, &qword_217791BC0);
  OUTLINED_FUNCTION_31_11(v1);
  sub_217751DE8();
  result = OUTLINED_FUNCTION_18_55(0xD000000000000010, 0x80000002177AB890, inited, 0x6B726F77747241, 0xE700000000000000, qword_282959AF8, v2, v3, sub_217698200);
  qword_280C02210 = result;
  return result;
}

uint64_t sub_2176993B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C3A8, &qword_217791C40);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_212();
  result = OUTLINED_FUNCTION_26(v1, 0xEE007365746F4E6CLL, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02228 = result;
  return result;
}

uint64_t sub_217699428()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2177586E0;
  if (qword_280BE4BF0 != -1)
  {
    OUTLINED_FUNCTION_23_3(&qword_280BE4BF0);
  }

  OUTLINED_FUNCTION_9_80(&qword_280BE4BF8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C320, &qword_217791BB8);
  OUTLINED_FUNCTION_31_11(v1);
  sub_217751DE8();
  v2 = OUTLINED_FUNCTION_212();
  result = OUTLINED_FUNCTION_18_55(v2, 0xEE006F656469566CLL, inited, 0xD000000000000035, 0x80000002177ABB30, v3, v4, v5, sub_2176981A4);
  qword_280C02208 = result;
  return result;
}

uint64_t sub_217699538()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C308, &qword_217791B98);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x73616D2E72656275, 0xEE00747241726574, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02220 = result;
  return result;
}

uint64_t sub_2176995B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C3B0, qword_217791C48);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1701667182, 0xE400000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C021F8 = result;
  return result;
}

uint64_t sub_217699624()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C318, &unk_217791BA8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x746E657261705FLL, 0xE700000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C021F0 = result;
  return result;
}

uint64_t sub_217699698()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C3B0, qword_217791C48);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6D614E74726F6873, 0xE900000000000065, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02230 = result;
  return result;
}

uint64_t sub_217699710()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C310, &qword_217791BA0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(7107189, 0xE300000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02200 = result;
  return result;
}

uint64_t sub_21769977C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C3A0, &qword_217791C38);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0xD000000000000011, 0x80000002177B48C0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02218 = result;
  return result;
}

uint64_t sub_2176997F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2177586E0;
  if (qword_280BE4A88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_9_80(&qword_280BE4A90);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C330, &qword_217791BC8);
  OUTLINED_FUNCTION_31_11(v1);
  sub_217751DE8();
  result = OUTLINED_FUNCTION_18_55(0x62614C7472616863, 0xEA00000000006C65, inited, 0x676E69727453, 0xE600000000000000, qword_282959AF8, v2, v3, sub_21769A090);
  qword_280BE6AE8 = result;
  return result;
}

uint64_t sub_217699938()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C300, &qword_217791B90);
  swift_allocObject();
  result = sub_217698758(0x7473696C79616C70, 0xE900000000000073, 0);
  qword_280BE6B10 = result;
  return result;
}

uint64_t static Genre.catalogFilterID(for:)@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(aP_4);
  sub_2177529D8();
  v3 = sub_217751F08();

  if (v3)
  {
    *a2 = 25705;
    a2[1] = 0xE200000000000000;
  }

  else
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000021, 0x80000002177AB8F0);
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_217699B0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t static Genre.validateParametersForLibrarySectionedRequest<A>(with:itemPredicates:itemSortDescriptors:)(uint64_t result, uint64_t a2, uint64_t a3, ValueMetadata *a4)
{
  if (a4 != &type metadata for Track && a4 != &type metadata for Song && a4 != &type metadata for Album && a4 != &type metadata for MusicVideo)
  {
    sub_2173546F8(result, a2, a3);
    swift_allocError();
    *v7 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t Genre.init(from:)(void *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EE3F8();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Genre.description.getter()
{
  sub_217752AA8();

  MEMORY[0x21CEA23B0](*v0, v0[1], v1);
  MEMORY[0x21CEA23B0](0x3A656D616E202C22, 0xEA00000000002220);
  if (qword_280BE6A88 != -1)
  {
    OUTLINED_FUNCTION_71(&qword_280BE6A88);
  }

  v2 = sub_2172A4344();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  MEMORY[0x21CEA23B0](v2, v4);

  MEMORY[0x21CEA23B0](10530, 0xE200000000000000, v5);
  return 0x64692865726E6547;
}

uint64_t static Genre.typeValue.getter()
{
  if (qword_280BE2A80 != -1)
  {
    OUTLINED_FUNCTION_6_96(&qword_280BE2A80);
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE2A88);

  return sub_217751DE8();
}

uint64_t sub_217699E68()
{
  if (qword_280BE2A80 != -1)
  {
    OUTLINED_FUNCTION_6_96(&qword_280BE2A80);
  }

  xmmword_280BE62D0 = xmmword_280BE2A88;
  qword_280BE62E0 = qword_280BE2A98;
  unk_280BE62E8 = unk_280BE2AA0;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.genre.getter()
{
  if (qword_280BE62C8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE62D0);

  return sub_217751DE8();
}

uint64_t sub_217699F38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27760, &unk_21775A2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217699FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C2F8;
  if (!qword_27CB2C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C2F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void))
{

  return sub_217697D44(a1, a2, a3, a4, a5, a6, v9, v10, a9);
}

void sub_21769A0D8(uint64_t a1, void (*a2)(__int128 *__return_ptr, unint64_t, _OWORD *))
{
  v2 = *a1;
  v3 = *a1;
  v33 = *(a1 + 8);
  if (v33 == 1)
  {
    swift_beginAccess();
    v3 = *(v2 + 56);
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v32 = MEMORY[0x277D84F90];
    sub_217275DB0(0, v4, 0);
    v5 = 0;
    v6 = v2 + 32;
    v7 = v32;
    v16 = v4;
    do
    {
      if (v33)
      {
        swift_beginAccess();
        if (v5 >= *(*(v2 + 56) + 16))
        {
          goto LABEL_17;
        }

        sub_217294634();
        sub_21725CF00(v2, 1);
      }

      else
      {
        if (v5 >= *(v2 + 16))
        {
LABEL_17:
          __break(1u);
          return;
        }

        sub_217202078(v6, &v25, &dword_27CB27E20, &unk_2177589C0);
        sub_217202078(&v25, &v18, &dword_27CB27E20, &unk_2177589C0);
        if (v21)
        {
          v8 = *(v18 + 16);
          v9 = *(v18 + 24);
          sub_217751DE8();
          sub_21729366C(v8, v9);

          sub_2171F06D8(&v25, &dword_27CB27E20, &unk_2177589C0);
        }

        else
        {
          sub_2171F06D8(&v25, &dword_27CB27E20, &unk_2177589C0);
          v22 = v18;
          v23 = v19;
          v24[0] = *v20;
          *(v24 + 9) = *&v20[9];
        }

        v28 = v22;
        v29 = v23;
        v30[0] = v24[0];
        *(v30 + 9) = *(v24 + 9);
      }

      v30[4] = v28;
      v30[5] = v29;
      v31[0] = v30[0];
      *(v31 + 9) = *(v30 + 9);
      v25 = v5;
      v26[0] = v28;
      v26[1] = v29;
      v27[0] = v31[0];
      *(v27 + 9) = *(v30 + 9);
      a2(&v18, v5, v26);
      sub_2171F06D8(&v25, &qword_27CB2C410, &unk_217791F20);
      v32 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_217275DB0(v10 > 1, v11 + 1, 1);
        v7 = v32;
      }

      ++v5;
      *(v7 + 16) = v11 + 1;
      v12 = v7 + 56 * v11;
      v13 = v18;
      v14 = v19;
      v15 = *v20;
      *(v12 + 80) = *&v20[16];
      *(v12 + 48) = v14;
      *(v12 + 64) = v15;
      *(v12 + 32) = v13;
      v6 += 64;
    }

    while (v16 != v5);
  }
}

uint64_t sub_21769A3D0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *(a5 + 32) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  v6 = *(v5 + 64);
  if (v6)
  {
    v10 = result;
    v12 = *(v5 + 56);
    sub_217751DE8();
    MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(a3, a4, &__src[4]);
    __src[0] = v12;
    __src[1] = v6;
    __src[2] = a2;
    __src[3] = v10;
    v13 = swift_allocObject();
    memcpy((v13 + 16), __src, 0x48uLL);
    sub_217751DE8();
    result = sub_2171F06D8(a5, &qword_27CB24188, &dword_217758930);
    *a5 = v13;
    *(a5 + 24) = &type metadata for MusicCatalogPlaylistEntryResourceIncrementalLoader;
    *(a5 + 32) = &off_28297A108;
  }

  return result;
}

uint64_t sub_21769A540(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 752) = v6;
  *(v7 + 744) = a6;
  *(v7 + 736) = a5;
  *(v7 + 728) = a4;
  *(v7 + 194) = a3;
  *(v7 + 720) = a2;
  *(v7 + 712) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21769A56C()
{
  v1 = *(v0 + 752);
  v2 = v1[1];
  if (!v2)
  {
    return OUTLINED_FUNCTION_2_123("Fatal error");
  }

  v3 = *(v0 + 194);
  v4 = *(v0 + 720);
  v5 = *v1;
  v6 = MEMORY[0x277D84F90];
  *(v0 + 32) = MEMORY[0x277D84F90];
  *(v0 + 40) = v6;
  swift_beginAccess();
  v7 = off_280BEBCD0;
  sub_217751DE8();

  (v7)(v8);

  v9 = *(v0 + 576);
  v10 = *(v0 + 584);
  __swift_project_boxed_opaque_existential_1((v0 + 552), v9);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v9, v10, v0 + 144);
  __swift_destroy_boxed_opaque_existential_1((v0 + 552));
  *(v0 + 184) = v6;
  *(v0 + 192) = 0;
  *(v0 + 48) = v5;
  *(v0 + 56) = v2;
  *(v0 + 80) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  sub_21725EE54((v1 + 4), v0 + 144);
  *(v0 + 16) = v4;
  *(v0 + 24) = v3 & 1;
  v11 = swift_task_alloc();
  *(v0 + 760) = v11;
  *v11 = v0;
  v11[1] = sub_21769A748;

  return (sub_2173EF9B8)(v0 + 200);
}

uint64_t sub_21769A748()
{
  *(*v1 + 768) = v0;

  if (v0)
  {
    v2 = sub_21769ACCC;
  }

  else
  {
    v2 = sub_21769A85C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_21769A85C()
{
  v38 = v0;
  v1 = *(v0 + 752);
  *(v0 + 696) = *(v1 + 24);
  sub_217202078(v0 + 200, v0 + 304, &qword_27CB240D0, &unk_21775D400);
  v2 = swift_task_alloc();
  *(v2 + 16) = v0 + 696;
  *(v2 + 24) = v1;
  sub_217751DE8();
  sub_21769A0D8(v0 + 304, sub_21769BD24);
  v4 = v3;

  sub_2171F06D8(v0 + 304, &qword_27CB2C400, &qword_217791F08);
  v5 = sub_217752DB8();
  if (!v5)
  {

    sub_217752D08();
    return;
  }

  v6 = v5;
  *(v0 + 472) = 0;
  *(v0 + 440) = 0u;
  *(v0 + 456) = 0u;
  *(v0 + 408) = 0u;
  *(v0 + 424) = 0u;
  sub_217202078(v0 + 216, v0 + 632, &qword_27CB24188, &dword_217758930);
  if (*(v0 + 656))
  {
    v7 = *(v0 + 752);
    *(v0 + 624) = *(v0 + 664);
    v8 = *(v0 + 648);
    *(v0 + 592) = *(v0 + 632);
    *(v0 + 608) = v8;
    v9 = *(v0 + 616);
    v10 = *(v0 + 624);
    __swift_project_boxed_opaque_existential_1((v0 + 592), v9);
    v11 = (*(v10 + 8))(v9, v10);
    v13 = v12;
    v14 = *(v0 + 696);
    v15 = *(v7 + 16);
    v16 = *(v4 + 16);
    sub_217751DE8();

    if (__OFADD__(v15, v16))
    {
      __break(1u);
      return;
    }

    sub_2172CA838(*(v0 + 752) + 32, v0 + 512);
    *(v0 + 480) = v11;
    *(v0 + 488) = v13;
    *(v0 + 496) = v15 + v16;
    *(v0 + 504) = v14;
    sub_217283154(v0 + 592);
    sub_21769BD50(v0 + 480, v0 + 408);
  }

  else
  {

    sub_2171F06D8(v0 + 632, &qword_27CB24188, &dword_217758930);
  }

  v17 = *(v0 + 728);
  *(v0 + 704) = v6;
  v18 = swift_task_alloc();
  v35 = *(v0 + 736);
  *(v18 + 16) = v17;
  *(v18 + 24) = v35;
  v19 = sub_217752418();
  v21 = type metadata accessor for RelatedItem(0, v17, v35, v20);
  WitnessTable = swift_getWitnessTable();
  v36 = sub_2175FA70C(sub_21769BD2C, v18, v19, v21, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v23);

  v24 = *(v0 + 432);
  if (v24)
  {
    v25 = swift_allocObject();
    sub_21769B9B0(v0 + 408, v25 + 16);
    v24 = &off_28297A108;
    v26 = &type metadata for MusicCatalogPlaylistEntryResourceIncrementalLoader;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v37[1] = 0;
    v37[2] = 0;
  }

  v27 = *(v0 + 712);
  v37[0] = v25;
  v37[3] = v26;
  v37[4] = v24;
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  v30 = *(v0 + 272);
  v31 = *(v0 + 280);
  v32 = *(v0 + 288);
  v33 = *(v0 + 296);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F06D8(v0 + 200, &qword_27CB27E18, &qword_217791F10);
  sub_217741DEC(v36, 0, v37, v28, v29, v30, v31, v32, v27, v33);
  sub_2171F06D8(v0 + 408, &qword_27CB2C408, &qword_217791F18);

  sub_2171F06D8(v0 + 16, &unk_27CB27E00, &qword_21776BC90);
  v34 = *(v0 + 8);

  v34();
}

uint64_t sub_21769ACCC()
{
  sub_2171F06D8(v0 + 16, &unk_27CB27E00, &qword_21776BC90);
  v1 = *(v0 + 8);

  return v1();
}

void sub_21769AD40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  Track.innerItem.getter();
  v8 = v20;
  v9 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v10 = (*(v9 + 8))(v8, v9);
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_1(v19);
  v13 = sub_2173AC898(v10, v12, *a3);
  LOBYTE(v9) = v14;

  if (v9)
  {
    Track.innerItem.getter();
    v15 = v20;
    v16 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v16 + 8))(v15, v16);
    __swift_destroy_boxed_opaque_existential_1(v19);
    swift_isUniquelyReferenced_nonNull_native();
    v19[0] = *a3;
    sub_2172C8018();
    *a3 = v19[0];
  }

  else
  {
    if (__OFADD__(v13, 1))
    {
      goto LABEL_8;
    }

    Track.innerItem.getter();
    v17 = v20;
    v18 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v18 + 8))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v19);
    swift_isUniquelyReferenced_nonNull_native();
    v19[0] = *a3;
    sub_2172C8018();
    *a3 = v19[0];
  }

  sub_217275710(a2, v19);
  if (!__OFADD__(a1, *(a4 + 16)))
  {
    Playlist.Entry.init(track:position:occurrence:)();
    return;
  }

  __break(1u);
LABEL_8:
  __break(1u);
}

uint64_t sub_21769AF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 16))(a4, a1, a2);
  type metadata accessor for RelatedItem(0, a2, a3, v6);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21769AFDC(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    sub_2172634BC();
    if (v7)
    {
      v8 = a1[7];
      v9 = a1[8];
      __swift_project_boxed_opaque_existential_1(a1 + 4, v8);
      v10 = *(v9 + 112);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241B8, &unk_2177583E0);
      return v10(a2 + 4, v11, v8, v9) & 1;
    }
  }

  return 0;
}

uint64_t sub_21769B0C0(uint64_t a1)
{
  v2 = v1;
  if (v2[1])
  {
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  MEMORY[0x21CEA3550](v2[2]);
  sub_217269FA4(a1, v2[3]);
  v4 = v2[7];
  v5 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v4);
  return (*(v5 + 120))(a1, v4, v5);
}

uint64_t sub_21769B168()
{
  sub_2177531E8();
  sub_21769B0C0(v1);
  return sub_217753238();
}

uint64_t sub_21769B1A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21769BDC0;

  return sub_21769A4CC();
}

uint64_t sub_21769B234(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_217514FAC;

  return sub_21769A540(a1, a2, a3 & 1, a4, a5, a6);
}

uint64_t sub_21769B318(uint64_t a1)
{
  sub_2177531E8();
  sub_21769B0C0(v2);
  return sub_217753238();
}

unint64_t sub_21769B378@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21722D0B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_21769B3A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21722D0FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_21769B3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21722D0B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21769B404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21769B95C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21769B440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21769B95C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_21769B47C(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C3B8, &qword_217791CA0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21769B95C(v6, v7, v8);
  sub_2177532C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v19) = 0;
    OUTLINED_FUNCTION_4_115();
    v17[0] = sub_217752E68();
    v17[1] = v9;
    LOBYTE(v19) = 1;
    OUTLINED_FUNCTION_4_115();
    v10 = sub_217752EC8();
    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C3C8, &qword_217791CA8);
      sub_21769BA18(&qword_27CB2C3D0, sub_2172E1C68, MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
      sub_217752EA8();
      v18 = v19;
    }

    else
    {
      sub_2172CAE0C(v10, v11, v12);
      v18 = sub_217751DC8();
    }

    LOBYTE(v19) = 2;
    OUTLINED_FUNCTION_4_115();
    v17[2] = sub_217752E98();
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    Decoder.dataRequestConfiguration.getter(v13, v14);
    v15 = OUTLINED_FUNCTION_1_3();
    v16(v15);
    sub_21769B9B0(v17, a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_21769B9E8(v17);
  }
}

uint64_t sub_21769B754(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C3D8, &qword_217791CB0);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21769B95C(v11, v12, v13);
  sub_2177532F8();
  v19 = *v3;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B10, &unk_217758190);
  v14 = sub_21725E964();
  OUTLINED_FUNCTION_28_24(v14);
  if (!v2)
  {
    *&v19 = *(v3 + 3);
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C3C8, &qword_217791CA8);
    v15 = sub_21769BA18(&qword_27CB2C3E0, sub_2172E1B18, MEMORY[0x277D83B90], MEMORY[0x277D83508]);
    OUTLINED_FUNCTION_28_24(v15);
    LOBYTE(v19) = 2;
    sub_217752F78();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_21769B95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C3C0;
  if (!qword_27CB2C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C3C0);
  }

  return result;
}

uint64_t sub_21769BA18(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2C3C8, &qword_217791CA8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicCatalogPlaylistEntryResourceIncrementalLoader.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21769BB78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_21769BBB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21769BC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C3E8;
  if (!qword_27CB2C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C3E8);
  }

  return result;
}

unint64_t sub_21769BC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C3F0;
  if (!qword_27CB2C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C3F0);
  }

  return result;
}

unint64_t sub_21769BCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C3F8;
  if (!qword_27CB2C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C3F8);
  }

  return result;
}

uint64_t sub_21769BD50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C408, &qword_217791F18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *CloudPlaylist.Collaboration.init(id:attributes:relationships:views:meta:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X3>, char *a4@<X4>, char *a5@<X5>, void *a6@<X8>)
{
  v9 = *a4;
  v10 = *a5;
  *a6 = a1;
  a6[1] = a2;
  type metadata accessor for CloudPlaylist.Collaboration(0);
  v11 = OUTLINED_FUNCTION_32_44();
  sub_21769BE5C(v11, v12);
  result = memcpy(a6 + v6[6], a3, 0x180uLL);
  *(a6 + v6[7]) = v9;
  *(a6 + v6[8]) = v10;
  return result;
}

uint64_t sub_21769BE5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudPlaylist.Collaboration.Attributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CloudPlaylist.Collaboration.Attributes.init(expirationDate:invitationUrl:joinedStatus:openInvitation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, char a4@<W4>, void *a5@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  *a5 = a1;
  a5[1] = a2;
  type metadata accessor for CloudPlaylist.Collaboration.Attributes(0);
  v10 = OUTLINED_FUNCTION_32_44();
  result = sub_21751AF10(v10, v11);
  v13 = (a5 + *(v5 + 24));
  *v13 = v8;
  v13[1] = v9;
  *(a5 + *(v5 + 28)) = a4;
  return result;
}

uint64_t CloudPlaylist.Collaboration.Attributes.invitationUrl.getter()
{
  v0 = OUTLINED_FUNCTION_105_0();
  type metadata accessor for CloudPlaylist.Collaboration.Attributes(v0);
  return sub_217284868();
}

uint64_t CloudPlaylist.Collaboration.Attributes.joinedStatus.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = (v1 + *(type metadata accessor for CloudPlaylist.Collaboration.Attributes(v2) + 24));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;

  return sub_217751DE8();
}

BOOL static CloudPlaylist.Collaboration.Attributes.== infix(_:_:)(void *a1, void *a2)
{
  v5 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_128();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    v19 = *a1 == *a2 && v17 == v18;
    if (!v19 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v38 = v7;
  v37 = type metadata accessor for CloudPlaylist.Collaboration.Attributes(0);
  v20 = *(v13 + 48);
  sub_217284868();
  sub_217284868();
  OUTLINED_FUNCTION_73(v16);
  if (v19)
  {
    OUTLINED_FUNCTION_73(&v16[v20]);
    if (v19)
    {
      sub_2171F0738(v16, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_21;
    }

LABEL_18:
    sub_2171F0738(v16, &qword_27CB24840, &unk_217758DD0);
    return 0;
  }

  sub_217284868();
  OUTLINED_FUNCTION_73(&v16[v20]);
  if (v21)
  {
    (*(v38 + 8))(v2, v5);
    goto LABEL_18;
  }

  v23 = v38;
  (*(v38 + 32))(v11, &v16[v20], v5);
  OUTLINED_FUNCTION_0_137();
  sub_21769F06C(v24);
  v25 = sub_217751F08();
  v26 = *(v23 + 8);
  v26(v11, v5);
  v26(v2, v5);
  sub_2171F0738(v16, &unk_27CB277C0, &qword_217758DC0);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v27 = v37;
  v28 = *(v37 + 24);
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32)
    {
      return 0;
    }

    v33 = *v29 == *v31 && v30 == v32;
    if (!v33 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v32)
    {
      return 0;
    }
  }

  v34 = *(v27 + 28);
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35 != 2)
  {
    return v36 != 2 && ((v36 ^ v35) & 1) == 0;
  }

  return v36 == 2;
}

uint64_t sub_21769C3A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6974617469766E69 && a2 == 0xED00006C72556E6FLL;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x745364656E696F6ALL && a2 == 0xEC00000073757461;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x69766E496E65706FLL && a2 == 0xEE006E6F69746174)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

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

uint64_t sub_21769C514(char a1)
{
  result = 0x6974617269707865;
  switch(a1)
  {
    case 1:
      result = 0x6974617469766E69;
      break;
    case 2:
      result = 0x745364656E696F6ALL;
      break;
    case 3:
      result = 0x69766E496E65706FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21769C5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21769C3A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21769C60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21769F018(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21769C648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21769F018(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudPlaylist.Collaboration.Attributes.encode(to:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C428, &qword_217791F40);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v8 = &v20[-v7];
  v9 = OUTLINED_FUNCTION_68();
  sub_21769F018(v9, v10, v11);
  OUTLINED_FUNCTION_106();
  sub_2177532F8();
  LOBYTE(v21) = 0;
  OUTLINED_FUNCTION_72();
  sub_217752EF8();
  if (!v1)
  {
    type metadata accessor for CloudPlaylist.Collaboration.Attributes(0);
    OUTLINED_FUNCTION_16_68();
    sub_2177516D8();
    OUTLINED_FUNCTION_0_137();
    sub_21769F06C(v12);
    OUTLINED_FUNCTION_72();
    v13 = sub_217752F38();
    v16 = (v0 + *(v2 + 24));
    v17 = v16[1];
    v21 = *v16;
    v22 = v17;
    v20[15] = 2;
    v18 = sub_21769F0B0(v13, v14, v15);
    sub_217751DE8();
    OUTLINED_FUNCTION_72();
    sub_217752F38();

    if (!v18)
    {
      LOBYTE(v21) = 3;
      OUTLINED_FUNCTION_67_0();
      sub_217752F08();
    }
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t CloudPlaylist.Collaboration.Attributes.hash(into:)(uint64_t a1)
{
  v3 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_128();
  if (*(v1 + 8))
  {
    OUTLINED_FUNCTION_24();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v11 = type metadata accessor for CloudPlaylist.Collaboration.Attributes(0);
  sub_217284868();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    (*(v5 + 32))(v9, v2, v3);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_0_137();
    sub_21769F06C(v12);
    sub_217751EB8();
    (*(v5 + 8))(v9, v3);
  }

  if (*(v1 + *(v11 + 24) + 8))
  {
    OUTLINED_FUNCTION_24();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (*(v1 + *(v11 + 28)) != 2)
  {
    OUTLINED_FUNCTION_24();
  }

  return sub_217753208();
}

void CloudPlaylist.Collaboration.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v25 = v24;
  v52 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27);
  v29 = v50 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C440, &qword_217791F48);
  OUTLINED_FUNCTION_0_0();
  v53 = v31;
  v54 = v30;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  v33 = type metadata accessor for CloudPlaylist.Collaboration.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  v37 = (v36 - v35);
  v38 = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_21769F018(v38, v39, v40);
  sub_2177532C8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    LOBYTE(v55) = 0;
    *v37 = sub_217752E18();
    v37[1] = v41;
    v50[1] = v41;
    v51 = v37;
    sub_2177516D8();
    LOBYTE(v55) = 1;
    OUTLINED_FUNCTION_0_137();
    sub_21769F06C(v42);
    sub_217752E58();
    v43 = sub_21751AF10(v29, v51 + v33[5]);
    sub_21769F104(v43, v44, v45);
    sub_217752E58();
    v46 = v51;
    *(v51 + v33[6]) = v55;
    LOBYTE(v55) = 3;
    v47 = sub_217752E28();
    v48 = OUTLINED_FUNCTION_13_64();
    v49(v48);
    *(v46 + v33[7]) = v47;
    sub_21769F744();
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_21769F79C(v46, type metadata accessor for CloudPlaylist.Collaboration.Attributes);
  }

  OUTLINED_FUNCTION_170();
}

void *CloudPlaylist.Collaboration.Relationships.init(collaborators:pendingCollaborators:playlists:)@<X0>(void *__src@<X0>, const void *a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(a4, __src, 0x80uLL);
  memcpy((a4 + 128), a2, 0x80uLL);

  return memcpy((a4 + 256), a3, 0x80uLL);
}

void CloudPlaylist.Collaboration.Relationships.CodingKeys.init(stringValue:)(char *a2@<X8>)
{
  v3 = sub_217752DC8();

  v4 = 3;
  if (v3 < 3)
  {
    v4 = v3;
  }

  *a2 = v4;
}

unint64_t CloudPlaylist.Collaboration.Relationships.CodingKeys.stringValue.getter()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x7473696C79616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F62616C6C6F63;
  }
}

unint64_t sub_21769D0BC@<X0>(unint64_t *a1@<X8>)
{
  result = CloudPlaylist.Collaboration.Relationships.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21769D100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21769F158(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21769D13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21769F158(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

BOOL static CloudPlaylist.Collaboration.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_22_55();
  OUTLINED_FUNCTION_22_55();
  if (v33)
  {
    v0 = sub_217284868();
    if (!v34)
    {
LABEL_11:
      sub_2171F0738(v31, &qword_27CB24260, &qword_217758678);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_75(v0, v1, v2, v3, v4, v5, v6, v7, v30[0]);
    v8 = sub_2172DE208(v31, v30);
    OUTLINED_FUNCTION_63(v30);
    OUTLINED_FUNCTION_63(v31);
    sub_2171F0738(v32, &qword_27CB24258, &unk_217791F50);
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v34)
    {
      goto LABEL_13;
    }

    sub_2171F0738(v32, &qword_27CB24258, &unk_217791F50);
  }

  OUTLINED_FUNCTION_22_55();
  OUTLINED_FUNCTION_22_55();
  if (!v33)
  {
    if (!v34)
    {
      sub_2171F0738(v32, &qword_27CB24258, &unk_217791F50);
      goto LABEL_18;
    }

LABEL_13:
    v18 = &unk_27CB26330;
    v19 = &unk_217791F60;
LABEL_14:
    sub_2171F0738(v32, v18, v19);
    return 0;
  }

  v9 = sub_217284868();
  if (!v34)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_75(v9, v10, v11, v12, v13, v14, v15, v16, v30[0]);
  v17 = sub_2172DE208(v31, v30);
  OUTLINED_FUNCTION_63(v30);
  OUTLINED_FUNCTION_63(v31);
  sub_2171F0738(v32, &qword_27CB24258, &unk_217791F50);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  OUTLINED_FUNCTION_22_55();
  OUTLINED_FUNCTION_22_55();
  if (!v33)
  {
    if (!v34)
    {
      sub_2171F0738(v32, &qword_27CB242C0, &unk_21775D650);
      return 1;
    }

    goto LABEL_26;
  }

  v21 = sub_217284868();
  if (!v34)
  {
    sub_2171F0738(v31, &qword_27CB242C8, &unk_217758970);
LABEL_26:
    v18 = &qword_27CB25198;
    v19 = &qword_21775B550;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_75(v21, v22, v23, v24, v25, v26, v27, v28, v30[0]);
  v29 = sub_2172DE118(v31, v30);
  sub_2171F0738(v30, &qword_27CB242C8, &unk_217758970);
  sub_2171F0738(v31, &qword_27CB242C8, &unk_217758970);
  sub_2171F0738(v32, &qword_27CB242C0, &unk_21775D650);
  return (v29 & 1) != 0;
}

uint64_t CloudPlaylist.Collaboration.Relationships.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C450, &qword_217791F70);
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = &v13[-v5];
  v7 = OUTLINED_FUNCTION_68();
  sub_21769F158(v7, v8, v9);
  OUTLINED_FUNCTION_106();
  sub_2177532F8();
  v13[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24260, &qword_217758678);
  OUTLINED_FUNCTION_4_9();
  sub_21769F270(v10);
  OUTLINED_FUNCTION_106();
  sub_217752F38();
  if (!v0)
  {
    v13[14] = 1;
    OUTLINED_FUNCTION_106();
    sub_217752F38();
    v13[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
    OUTLINED_FUNCTION_4_9();
    sub_21769F3A4(v11);
    sub_217752F38();
  }

  return (*(v3 + 8))(v6, v1);
}

uint64_t CloudPlaylist.Collaboration.Relationships.hash(into:)(uint64_t a1)
{
  v2 = sub_217284868();
  if (v43)
  {
    OUTLINED_FUNCTION_10_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
    OUTLINED_FUNCTION_24();
    sub_2172DE73C(a1);
    sub_2171F0738(&v27, &qword_27CB24260, &qword_217758678);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v10 = sub_217284868();
  if (v43)
  {
    OUTLINED_FUNCTION_10_1(v10, v11, v12, v13, v14, v15, v16, v17, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
    OUTLINED_FUNCTION_24();
    sub_2172DE73C(a1);
    sub_2171F0738(&v27, &qword_27CB24260, &qword_217758678);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v18 = sub_217284868();
  if (!v43)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  OUTLINED_FUNCTION_24();
  sub_2172DE724(a1);
  return sub_2171F0738(&v27, &qword_27CB242C8, &unk_217758970);
}

uint64_t CloudPlaylist.Collaboration.Relationships.hashValue.getter()
{
  sub_2177531E8();
  v0 = sub_217284868();
  if (v42)
  {
    OUTLINED_FUNCTION_180(v0, v1, v2, v3, v4, v5, v6, v7, v25, v26[0], v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
    sub_217753208();
    sub_2172DE73C(v43);
    sub_2171F0738(v26, &qword_27CB24260, &qword_217758678);
  }

  else
  {
    sub_217753208();
  }

  v8 = sub_217284868();
  if (v42)
  {
    OUTLINED_FUNCTION_180(v8, v9, v10, v11, v12, v13, v14, v15, v25, v26[0], v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
    sub_217753208();
    sub_2172DE73C(v43);
    sub_2171F0738(v26, &qword_27CB24260, &qword_217758678);
  }

  else
  {
    sub_217753208();
  }

  v16 = sub_217284868();
  if (v42)
  {
    OUTLINED_FUNCTION_180(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26[0], v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
    sub_217753208();
    sub_2172DE724(v43);
    sub_2171F0738(v26, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

void CloudPlaylist.Collaboration.Relationships.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C460, &qword_217791F78);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_128();
  v31 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_21769F158(v31, v32, v33);
  sub_2177532C8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24260, &qword_217758678);
    a13 = 0;
    OUTLINED_FUNCTION_3_90();
    sub_21769F270(v35);
    OUTLINED_FUNCTION_24_46(v34, &a13);
    memcpy(v40, v39, sizeof(v40));
    a13 = 1;
    OUTLINED_FUNCTION_24_46(v34, &a13);
    memcpy(v41, v39, sizeof(v41));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
    a13 = 2;
    OUTLINED_FUNCTION_3_90();
    sub_21769F3A4(v36);
    sub_217752E58();
    v37 = OUTLINED_FUNCTION_5_3();
    v38(v37);
    memcpy(v42, v39, sizeof(v42));
    sub_21769F418(v40, v29);
    __swift_destroy_boxed_opaque_existential_1(v27);
    sub_217269E04(v40);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_21769DC6C(uint64_t a1)
{
  sub_2177531E8();
  sub_217284868();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE73C(v4);
    sub_2171F0738(__dst, &qword_27CB24260, &qword_217758678);
  }

  else
  {
    sub_217753208();
  }

  sub_217284868();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE73C(v4);
    sub_2171F0738(__dst, &qword_27CB24260, &qword_217758678);
  }

  else
  {
    sub_217753208();
  }

  sub_217284868();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE724(v4);
    sub_2171F0738(__dst, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

uint64_t sub_21769DE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21769F450(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21769DE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21769F450(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21769DF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21769F4A4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21769DF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21769F4A4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_21769E00C()
{
  OUTLINED_FUNCTION_171();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_128();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1();
  sub_2177532F8();
  v7 = OUTLINED_FUNCTION_5_3();
  v8(v7);
  OUTLINED_FUNCTION_170();
}

void CloudPlaylist.Collaboration.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t CloudPlaylist.Collaboration.attributes.getter()
{
  v0 = OUTLINED_FUNCTION_105_0();
  type metadata accessor for CloudPlaylist.Collaboration(v0);
  return sub_21769F744();
}

uint64_t CloudPlaylist.Collaboration.relationships.getter()
{
  v0 = OUTLINED_FUNCTION_105_0();
  type metadata accessor for CloudPlaylist.Collaboration(v0);
  return sub_217284868();
}

uint64_t CloudPlaylist.Collaboration.views.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  result = type metadata accessor for CloudPlaylist.Collaboration(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t CloudPlaylist.Collaboration.meta.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  result = type metadata accessor for CloudPlaylist.Collaboration(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_21769E2D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BE4AD0 != -1)
  {
    swift_once();
  }

  v1 = unk_280BE4AE0;
  v2 = byte_280BE4AE8;
  *(v0 + 32) = qword_280BE4AD8;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  qword_27CB2C420 = v0;

  return sub_217751DE8();
}

uint64_t static CloudPlaylist.Collaboration.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_15;
  }

  v4 = type metadata accessor for CloudPlaylist.Collaboration(0);
  if (!static CloudPlaylist.Collaboration.Attributes.== infix(_:_:)((v1 + v4[5]), (v0 + v4[5])))
  {
    goto LABEL_15;
  }

  sub_217284868();
  sub_217284868();
  if (v11 != 1)
  {
    sub_217284868();
    if (v12[2] != 1)
    {
      memcpy(v8, v12, sizeof(v8));
      v5 = static CloudPlaylist.Collaboration.Relationships.== infix(_:_:)();
      sub_217269E04(v8);
      sub_217269E04(v9);
      sub_2171F0738(v10, &qword_27CB24250, &qword_217791F90);
      if (!v5)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    sub_217269E04(v9);
LABEL_12:
    sub_2171F0738(v10, &qword_27CB2C488, &qword_217791F98);
    goto LABEL_15;
  }

  if (v12[2] != 1)
  {
    goto LABEL_12;
  }

  sub_2171F0738(v10, &qword_27CB24250, &qword_217791F90);
LABEL_14:
  if (*(v1 + v4[7]) == *(v0 + v4[7]))
  {
    v6 = *(v1 + v4[8]) ^ *(v0 + v4[8]) ^ 1;
    return v6 & 1;
  }

LABEL_15:
  v6 = 0;
  return v6 & 1;
}

uint64_t sub_21769E564(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21769E5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_21769E64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21769F4F8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21769E688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21769F4F8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudPlaylist.Collaboration.encode(to:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C490, &qword_217791FA0);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = OUTLINED_FUNCTION_68();
  sub_21769F4F8(v9, v10, v11);
  OUTLINED_FUNCTION_106();
  v12 = sub_2177532F8();
  v13 = v0[1];
  v30 = *v0;
  v31 = v13;
  v29 = 0;
  sub_2172E1B18(v12, v14, v15);
  OUTLINED_FUNCTION_67_0();
  sub_217752F88();
  if (!v1)
  {
    type metadata accessor for CloudPlaylist.Collaboration(0);
    v16 = OUTLINED_FUNCTION_16_68();
    type metadata accessor for CloudPlaylist.Collaboration.Attributes(v16);
    OUTLINED_FUNCTION_9_81();
    sub_21769F06C(v17);
    OUTLINED_FUNCTION_72();
    v18 = sub_217752F88();
    LOBYTE(v30) = 2;
    sub_21769F54C(v18, v19, v20);
    OUTLINED_FUNCTION_67_0();
    v21 = sub_217752F38();
    LOBYTE(v30) = *(v0 + *(v2 + 28));
    v29 = 3;
    sub_21769F5A0(v21, v22, v23);
    OUTLINED_FUNCTION_67_0();
    v24 = sub_217752F38();
    LOBYTE(v30) = *(v0 + *(v2 + 32));
    v29 = 4;
    sub_21769F5F4(v24, v25, v26);
    OUTLINED_FUNCTION_67_0();
    sub_217752F38();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t CloudPlaylist.Collaboration.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  type metadata accessor for CloudPlaylist.Collaboration(0);
  CloudPlaylist.Collaboration.Attributes.hash(into:)(a1);
  sub_217264EA8(a1);
  sub_217753208();
  return sub_217753208();
}

uint64_t sub_21769E99C(uint64_t (*a1)(_BYTE *))
{
  sub_2177531E8();
  a1(v3);
  return sub_217753238();
}

void CloudPlaylist.Collaboration.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v65 = v23;
  v25 = v24;
  v60[1] = v26;
  v61 = type metadata accessor for CloudPlaylist.Collaboration.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C4C0, &qword_217791FA8);
  OUTLINED_FUNCTION_0_0();
  v62 = v31;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  v34 = v60 - v33;
  v35 = type metadata accessor for CloudPlaylist.Collaboration(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1();
  v39 = (v38 - v37);
  v40 = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_21769F4F8(v40, v41, v42);
  v63 = v34;
  v43 = v65;
  v44 = sub_2177532C8();
  if (v43)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_2172E1C68(v44, v45, v46);
    sub_217752EA8();
    v47 = v66[1];
    *v39 = v66[0];
    v39[1] = v47;
    v65 = v47;
    LOBYTE(v66[0]) = 1;
    OUTLINED_FUNCTION_9_81();
    sub_21769F06C(v48);
    sub_217752EA8();
    v49 = sub_21769BE5C(v30, v39 + v35[5]);
    sub_21769F648(v49, v50, v51);
    OUTLINED_FUNCTION_11_73();
    v61 = 0;
    sub_217752E58();
    v52 = memcpy(v39 + v35[6], v66, 0x180uLL);
    sub_21769F69C(v52, v53, v54);
    OUTLINED_FUNCTION_11_73();
    v55 = sub_217752E58();
    *(v39 + v35[7]) = v66[0];
    sub_21769F6F0(v55, v56, v57);
    OUTLINED_FUNCTION_11_73();
    sub_217752E58();
    v58 = OUTLINED_FUNCTION_2_124();
    v59(v58);
    *(v39 + v35[8]) = v66[0];
    sub_21769F744();
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_21769F79C(v39, type metadata accessor for CloudPlaylist.Collaboration);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_21769EE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_2177531E8();
  a4(v6);
  return sub_217753238();
}

uint64_t CloudPlaylist.Collaboration.CollaboratorStatus.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_21769EF00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = CloudPlaylist.Collaboration.CollaboratorStatus.init(rawValue:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_21769EF40@<X0>(uint64_t *a1@<X8>)
{
  result = CloudPlaylist.Collaboration.CollaboratorStatus.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_21769F018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C430;
  if (!qword_27CB2C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C430);
  }

  return result;
}

unint64_t sub_21769F06C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21769F0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C438;
  if (!qword_27CB2C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C438);
  }

  return result;
}

unint64_t sub_21769F104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C448;
  if (!qword_27CB2C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C448);
  }

  return result;
}

unint64_t sub_21769F158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C458;
  if (!qword_27CB2C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C458);
  }

  return result;
}

unint64_t sub_21769F1AC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24790, &unk_21775A220);
    sub_21769F06C(&unk_27CB251C8);
    v3 = sub_21769F06C(&unk_27CB251D0);
    result = OUTLINED_FUNCTION_44(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21769F270(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24260, &qword_217758678);
    v5 = sub_21769F2E4(v4);
    result = OUTLINED_FUNCTION_20_3(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21769F2E4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24A30, &qword_217758FE8);
    sub_21769F06C(&unk_27CB26358);
    v3 = sub_21769F06C(&unk_27CB26360);
    result = OUTLINED_FUNCTION_44(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21769F3A4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242C8, &unk_217758970);
    v5 = sub_21769F1AC(v4);
    result = OUTLINED_FUNCTION_20_3(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21769F450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C470;
  if (!qword_27CB2C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C470);
  }

  return result;
}

unint64_t sub_21769F4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C480;
  if (!qword_27CB2C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C480);
  }

  return result;
}

unint64_t sub_21769F4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C498;
  if (!qword_27CB2C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C498);
  }

  return result;
}

unint64_t sub_21769F54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C4A8;
  if (!qword_27CB2C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C4A8);
  }

  return result;
}

unint64_t sub_21769F5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C4B0;
  if (!qword_27CB2C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C4B0);
  }

  return result;
}

unint64_t sub_21769F5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C4B8;
  if (!qword_27CB2C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C4B8);
  }

  return result;
}

unint64_t sub_21769F648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C4D0;
  if (!qword_27CB2C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C4D0);
  }

  return result;
}

unint64_t sub_21769F69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C4D8;
  if (!qword_27CB2C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C4D8);
  }

  return result;
}

unint64_t sub_21769F6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C4E0;
  if (!qword_27CB2C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C4E0);
  }

  return result;
}

uint64_t sub_21769F744()
{
  OUTLINED_FUNCTION_169();
  v1(0);
  OUTLINED_FUNCTION_43();
  v2 = OUTLINED_FUNCTION_93();
  v3(v2);
  return v0;
}

uint64_t sub_21769F79C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_21769F840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C4F0;
  if (!qword_27CB2C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C4F0);
  }

  return result;
}

unint64_t sub_21769F898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C4F8;
  if (!qword_27CB2C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C4F8);
  }

  return result;
}

unint64_t sub_21769F8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C500;
  if (!qword_27CB2C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C500);
  }

  return result;
}

unint64_t sub_21769F948()
{
  result = qword_27CB2C508;
  if (!qword_27CB2C508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2C510, &qword_217792158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C508);
  }

  return result;
}

unint64_t sub_21769F9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C518;
  if (!qword_27CB2C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C518);
  }

  return result;
}

unint64_t sub_21769FA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C520;
  if (!qword_27CB2C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C520);
  }

  return result;
}

unint64_t sub_21769FA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C528;
  if (!qword_27CB2C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C528);
  }

  return result;
}

unint64_t sub_21769FBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C538;
  if (!qword_27CB2C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C538);
  }

  return result;
}

void sub_21769FC28(uint64_t a1)
{
  type metadata accessor for CloudPlaylist.Collaboration.Attributes(319);
  if (v1 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE4568, &type metadata for CloudPlaylist.Collaboration.Relationships);
    if (v2 <= 0x3F)
    {
      sub_2172E2E58(319, qword_280BE4570, &type metadata for CloudPlaylist.Collaboration.Associations);
      if (v3 <= 0x3F)
      {
        sub_2172E2E58(319, &qword_280BE4558, &type metadata for CloudPlaylist.Collaboration.Metadata);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21769FD44(uint64_t a1)
{
  sub_2172E2E58(319, &qword_280BE7598, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_2172E2DB0(319);
    if (v2 <= 0x3F)
    {
      sub_2172E2E58(319, &qword_280BE4560, &type metadata for CloudPlaylist.Collaboration.CollaboratorStatus);
      if (v3 <= 0x3F)
      {
        sub_2172E2E58(319, &qword_280BE7540, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8MusicKit23CloudResourceCollectionVyAA0cD0VyAA0C8PlaylistV12CollaboratorVGGSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21769FE48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 384))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_21769FE9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 376) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 384) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 384) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *_s13CollaborationV13RelationshipsV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_2176A0050(_BYTE *result, int a2, int a3)
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

_BYTE *_s13CollaborationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s13CollaborationV10AttributesV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2176A02E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C540;
  if (!qword_27CB2C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C540);
  }

  return result;
}

unint64_t sub_2176A0340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C548;
  if (!qword_27CB2C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C548);
  }

  return result;
}

unint64_t sub_2176A0398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C550;
  if (!qword_27CB2C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C550);
  }

  return result;
}

unint64_t sub_2176A03F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C558;
  if (!qword_27CB2C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C558);
  }

  return result;
}

unint64_t sub_2176A0448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C560;
  if (!qword_27CB2C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C560);
  }

  return result;
}

unint64_t sub_2176A04A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C568;
  if (!qword_27CB2C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C568);
  }

  return result;
}

unint64_t sub_2176A04F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C570;
  if (!qword_27CB2C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C570);
  }

  return result;
}

unint64_t sub_2176A0550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C578;
  if (!qword_27CB2C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C578);
  }

  return result;
}

unint64_t sub_2176A05A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C580;
  if (!qword_27CB2C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C580);
  }

  return result;
}

unint64_t sub_2176A0600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C588;
  if (!qword_27CB2C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C588);
  }

  return result;
}

unint64_t sub_2176A0654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C590;
  if (!qword_27CB2C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C590);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_55()
{

  return sub_217284868();
}

uint64_t MusicIdentifierKind.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t MusicIdentifierKind.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_217752B38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2171FF30C(a1, v24);
  v12 = sub_2176A0A9C(v9, v10, v11);
  sub_21758ABC8(v12, v13, v14);
  sub_217752258();
  if (!v2)
  {
    v16 = v25;
    v15 = v26;
    sub_217751DE8();
    sub_21758AC1C(v16, v15, v24);
    v17 = v24[0];
    if (LOBYTE(v24[0]) == 4)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_217753298();
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000029, 0x80000002177B4DD0);
      v25 = v16;
      v26 = v15;
      sub_217752C78();

      MEMORY[0x21CEA23B0](46, 0xE100000000000000, v18);
      sub_217752B08();
      v19 = sub_217752B48();
      swift_allocError();
      v21 = v20;
      (*(v6 + 16))(v20, v8, v5);
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84168], v19);
      swift_willThrow();
      (*(v6 + 8))(v8, v5);
    }

    else
    {

      *a2 = v17;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2176A0A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8300;
  if (!qword_280BE8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8300);
  }

  return result;
}

double MusicIdentifierKind.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2176A0C2C(a1, a2, a3);
  sub_21758ABC8(v3, v4, v5);
  sub_217752208();
}

unint64_t sub_2176A0C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8308;
  if (!qword_280BE8308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8308);
  }

  return result;
}

unint64_t sub_2176A0C84()
{
  result = qword_27CB2C598;
  if (!qword_27CB2C598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2C5A0, &qword_217792C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C598);
  }

  return result;
}

unint64_t sub_2176A0CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C5A8;
  if (!qword_27CB2C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C5A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicIdentifierKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PropertyProvider.mergeProperty<A>(for:from:using:key:preferring:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28[1] = a1;
  v28[0] = a8;
  v12 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = v28 - v16;
  OUTLINED_FUNCTION_0();
  v19 = v18;
  v21.n128_f64[0] = MEMORY[0x28223BE20](v20);
  v23 = v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a5 & 1) != 0 || (swift_getAtKeyPath(), memcpy(v31, v30, 0x221uLL), memcpy(v32, v30, 0x221uLL), get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v32) == 1))
  {
    (*(v14 + 16))(v17, a4, v12, v21);
    if (__swift_getEnumTagSinglePayload(v17, 1, a6) == 1)
    {
      return (*(v14 + 8))(v17, v12);
    }

    (*(v19 + 32))(v23, v17, a6);
    sub_2176A11C4(a3, &v33);
    if (v34)
    {
      sub_2171F3F0C(&v33, v35);
      sub_2171FF30C(v35, v32);
      v30[0] = 1;
      memset(&v30[1], 0, 24);
      Artwork.init(_:alternateText:existingColorAnalysis:)(v32, 0, 0, v30, v31);
      memcpy(v32, v31, 0x221uLL);
      nullsub_1();
      memcpy(v30, v32, 0x221uLL);
      sub_217284028(v31, &v29);
      swift_setAtWritableKeyPath();
      sub_217284084(v31);
      __swift_destroy_boxed_opaque_existential_1(v35);
      return (*(v19 + 8))(v23, a6);
    }

    (*(v19 + 8))(v23, a6);
    v25 = &qword_27CB28308;
    v26 = &qword_21776C430;
    v27 = &v33;
  }

  else
  {
    v25 = &qword_27CB24400;
    v26 = &unk_21775E9A0;
    v27 = v31;
  }

  return sub_2171F06D8(v27, v25, v26);
}

uint64_t LegacyModelArtworkKind.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

void sub_2176A11C4(void *a1@<X0>, uint64_t *a4@<X8>)
{
  sub_2177521E8();
  v6 = sub_217751F18();
  v7 = [a1 musicKit:v6 artworkCatalogForProperty:];

  if (v7)
  {
    swift_getObjectType();
    v8 = sub_217717634();
    swift_unknownObjectRelease();
    v9 = &off_28297F3C8;
    v10 = &type metadata for SoftLinking_ArtworkCatalog;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v9 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  *a4 = v8;
  a4[3] = v10;
  a4[4] = v9;
}

uint64_t PropertyProvider.mergeProperty<A, B>(for:from:relationship:ofType:property:preferring:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((*a6 & 1) != 0 || (swift_getAtKeyPath(), memcpy(__dst, __src, 0x221uLL), memcpy(v19, __src, 0x221uLL), get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v19) == 1))
  {
    result = sub_2175FB398(MEMORY[0x277D84F68] + 8, v19);
    v12 = v19[0];
    if (!v19[0])
    {
      return result;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_2176A11C4(v12, &v20);
    if (v21)
    {
      sub_2171F3F0C(&v20, v22);
      sub_2171FF30C(v22, v19);
      __src[0] = 1;
      memset(&__src[1], 0, 24);
      Artwork.init(_:alternateText:existingColorAnalysis:)(v19, 0, 0, __src, __dst);
      memcpy(v19, __dst, 0x221uLL);
      nullsub_1();
      memcpy(__src, v19, 0x221uLL);
      sub_217284028(__dst, v16);
      swift_setAtWritableKeyPath();
      swift_unknownObjectRelease();
      sub_217284084(__dst);
      return __swift_destroy_boxed_opaque_existential_1(v22);
    }

    swift_unknownObjectRelease();
    v13 = &qword_27CB28308;
    v14 = &qword_21776C430;
    v15 = &v20;
  }

  else
  {
    v13 = &qword_27CB24400;
    v14 = &unk_21775E9A0;
    v15 = __dst;
  }

  return sub_2171F06D8(v15, v13, v14);
}

_OWORD *Artwork._convertToLegacyModelArtworkCatalog(rawCropStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 520);
  if (v5)
  {
    swift_beginAccess();
    v6 = v5[7];
    v7 = v5[8];
    __swift_project_boxed_opaque_existential_1(v5 + 4, v6);
    OUTLINED_FUNCTION_0();
    v9 = v8;
    v11 = MEMORY[0x28223BE20](v10);
    v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v9 + 16))(v13, v11);
    (*(v7 + 104))(&v31, v6, v7);
    (*(v9 + 8))(v13, v6);
    return sub_2172124CC(&v31, a3);
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    memcpy(v27, v3, sizeof(v27));
    v28 = 0;
    v29 = *(v3 + 528);
    v30 = *(v3 + 544);
    v17 = Artwork._makeCloudArtworkCatalog(cropStyle:)(a1, a2);
    swift_beginAccess();
    v18 = v17[7];
    v19 = v17[8];
    __swift_project_boxed_opaque_existential_1(v17 + 4, v18);
    OUTLINED_FUNCTION_0();
    v21 = v20;
    v23 = MEMORY[0x28223BE20](v22);
    v25 = &v27[-v24 - 8];
    (*(v21 + 16))(&v27[-v24 - 8], v23);

    (*(v19 + 104))(v18, v19);
    result = (*(v21 + 8))(v25, v18);
    if (*(&v32 + 1))
    {
      return sub_2171F06D8(&v31, &qword_27CB2AD40, &qword_2177583F0);
    }
  }

  return result;
}

unint64_t sub_2176A1758()
{
  result = qword_27CB2C5B0;
  if (!qword_27CB2C5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2C5B8, &qword_217792D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C5B0);
  }

  return result;
}

unint64_t sub_2176A17C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C5C0;
  if (!qword_27CB2C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C5C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LegacyModelArtworkKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 CloudCoverArtworkRecipe.init(expressionID:version:colorInformation:textColor:)@<Q0>(void *__src@<X4>, uint64_t a2@<X0>, char a3@<W1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(a6 + 32);
  *a7 = a2;
  *(a7 + 8) = a3 & 1;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  memcpy((a7 + 32), __src, 0xA0uLL);
  result = *a6;
  v11 = *(a6 + 16);
  *(a7 + 192) = *a6;
  *(a7 + 208) = v11;
  *(a7 + 224) = v9;
  return result;
}

uint64_t CloudCoverArtworkRecipe.version.getter()
{
  v1 = *(v0 + 16);
  sub_217751DE8();
  return v1;
}

uint64_t CloudCoverArtworkRecipe.colorInformation.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 32), 0xA0uLL);
  memcpy(a1, (v1 + 32), 0xA0uLL);
  return sub_2176A19DC(__dst, v4);
}

uint64_t sub_2176A19DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C5C8, &qword_217792E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

MusicKit::CloudCoverArtworkRecipe::CodingKeys_optional __swiftcall CloudCoverArtworkRecipe.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_217752DC8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CloudCoverArtworkRecipe.CodingKeys.stringValue.getter()
{
  result = 0x6973736572707865;
  switch(*v0)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0x666E49726F6C6F63;
      break;
    case 3:
      result = 0x6F6C6F4374786574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2176A1B9C@<X0>(uint64_t *a1@<X8>)
{
  result = CloudCoverArtworkRecipe.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2176A1BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176A2CD8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176A1C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176A2CD8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

BOOL static CloudCoverArtworkRecipe.== infix(_:_:)(uint64_t *a1, double *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a1[2];
  v7 = a1[3];
  OUTLINED_FUNCTION_6_97(v36);
  v8 = *(a1 + 24);
  v9 = *(a1 + 25);
  v10 = *(a1 + 26);
  v27 = a1[27];
  v28 = a1[28];
  v11 = *a2;
  v12 = *(a2 + 8);
  v14 = *(a2 + 2);
  v13 = *(a2 + 3);
  OUTLINED_FUNCTION_8_81(v37);
  v15 = a2[24];
  v16 = a2[25];
  v17 = a2[26];
  if (v5)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v11)
    {
      v18 = v12;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v13)
    {
      return 0;
    }

    v19 = *(a2 + 27);
    v20 = *(a2 + 28);
    v21 = v6 == v14 && v7 == v13;
    if (!v21 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v19 = *(a2 + 27);
    v20 = *(a2 + 28);
    if (v13)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_6_97(__src);
  OUTLINED_FUNCTION_8_81(&__src[160]);
  OUTLINED_FUNCTION_6_97(v35);
  if (sub_21726A474(v35) == 1)
  {
    OUTLINED_FUNCTION_8_81(__dst);
    if (sub_21726A474(__dst) == 1)
    {
      OUTLINED_FUNCTION_6_97(v33);
      sub_2176A19DC(v36, v31);
      sub_2176A19DC(v37, v31);
      sub_2171F06D8(v33, &qword_27CB2C5C8, &qword_217792E50);
      goto LABEL_25;
    }

    sub_2176A19DC(v36, v33);
    sub_2176A19DC(v37, v33);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_6_97(v33);
  OUTLINED_FUNCTION_8_81(__dst);
  if (sub_21726A474(__dst) == 1)
  {
    OUTLINED_FUNCTION_6_97(v31);
    sub_2176A19DC(v36, v30);
    sub_2176A19DC(v37, v30);
    sub_2176A19DC(v33, v30);
    sub_2176A1F98(v31);
LABEL_23:
    memcpy(__dst, __src, sizeof(__dst));
    sub_2171F06D8(__dst, &qword_27CB2C5D0, &qword_217792E58);
    return 0;
  }

  sub_2176A19DC(v36, v31);
  sub_2176A19DC(v37, v31);
  sub_2176A19DC(v33, v31);
  v22 = static CloudCoverArtworkRecipe.ColorInformation.== infix(_:_:)((a1 + 4), (a2 + 4));
  OUTLINED_FUNCTION_8_81(v29);
  sub_2176A1F98(v29);
  OUTLINED_FUNCTION_6_97(v30);
  sub_2176A1F98(v30);
  OUTLINED_FUNCTION_6_97(v31);
  sub_2171F06D8(v31, &qword_27CB2C5C8, &qword_217792E50);
  if (!v22)
  {
    return 0;
  }

LABEL_25:
  if (!v28)
  {
    if (!v20)
    {

      return 1;
    }

LABEL_36:
    sub_217751DE8();

    return 0;
  }

  if (!v20)
  {
    goto LABEL_36;
  }

  if (v8 != v15 || v9 != v16 || v10 != v17)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRelease_n();
    return 0;
  }

  v26 = v27 == v19 && v28 == v20;
  return v26 || (sub_217753058() & 1) != 0;
}

void CloudCoverArtworkRecipe.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v54 = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C5D8, &qword_217792E60);
  OUTLINED_FUNCTION_0_0();
  v29 = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  v32 = &v48 - v31;
  v33 = *v23;
  v34 = v23[3];
  v52 = v23[2];
  v53 = v33;
  v51 = v34;
  memcpy(v60, v23 + 4, 0xA0uLL);
  v35 = *(v23 + 12);
  v48 = *(v23 + 13);
  v49 = v35;
  v50 = v23[28];
  v36 = __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_2176A2CD8(v36, v37, v38);
  sub_2177532F8();
  v59[0] = 0;
  v39 = v54;
  sub_217752F28();
  if (v39)
  {
    (*(v29 + 8))(v32, v27);
  }

  else
  {
    v40 = v50;
    v59[0] = 1;
    sub_217752EF8();
    OUTLINED_FUNCTION_14_61(v59);
    v41 = sub_2176A19DC(v60, v58);
    sub_2176A2D2C(v41, v42, v43);
    sub_217752F38();
    memcpy(v58, v59, sizeof(v58));
    v44 = sub_2171F06D8(v58, &qword_27CB2C5C8, &qword_217792E50);
    v55 = v49;
    v56 = v48;
    v57 = v40;
    sub_2172A9724(v44, v45, v46);
    sub_217751DE8();
    sub_217752F38();

    (*(v29 + 8))(v32, 0, v47);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t CloudCoverArtworkRecipe.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[11];
  v16 = v1[10];
  v17 = v1[8];
  v10 = v1[13];
  v14 = v1[9];
  v15 = v1[12];
  v13 = v1[14];
  v25 = v1[16];
  v26 = v1[15];
  v24 = v1[17];
  v22 = v1[19];
  v23 = v1[18];
  v20 = v1[21];
  v21 = v1[20];
  v18 = v1[23];
  v19 = v1[22];
  v11 = *(v1 + 13);
  v28 = *(v1 + 12);
  v29 = v11;
  v30 = v1[28];
  if (v3 == 1)
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    MEMORY[0x21CEA3550](v2);
  }

  sub_217753208();
  if (v4)
  {
    sub_217751FF8();
  }

  v27[0] = v5;
  v27[1] = v6;
  v27[2] = v7;
  v27[3] = v8;
  v27[4] = v17;
  v27[5] = v14;
  v27[6] = v16;
  v27[7] = v9;
  v27[8] = v15;
  v27[9] = v10;
  v27[10] = v13;
  v27[11] = v26;
  v27[12] = v25;
  v27[13] = v24;
  v27[14] = v23;
  v27[15] = v22;
  v27[16] = v21;
  v27[17] = v20;
  v27[18] = v19;
  v27[19] = v18;
  if (sub_21726A474(v27) == 1)
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    v46 = v5;
    v47 = v6;
    v48 = v7;
    v49 = v8;
    v50 = v17;
    v41 = v14;
    v42 = v16;
    v43 = v9;
    v44 = v15;
    v45 = v10;
    v36 = v13;
    v37 = v26;
    v38 = v25;
    v39 = v24;
    v40 = v23;
    v31 = v22;
    v32 = v21;
    v33 = v20;
    v34 = v19;
    v35 = v18;
    sub_21726519C();
    sub_21726519C();
    sub_21726519C();
    sub_21726519C();
  }

  return sub_21726519C();
}

uint64_t CloudCoverArtworkRecipe.hashValue.getter()
{
  sub_2177531E8();
  CloudCoverArtworkRecipe.hash(into:)(v1);
  return sub_217753238();
}

void CloudCoverArtworkRecipe.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_171();
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C5F0, &unk_217792E68);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  v30 = __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_2176A2CD8(v30, v31, v32);
  sub_2177532C8();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v52 = v28;
    OUTLINED_FUNCTION_11_74();
    v33 = sub_217752E48();
    v66 = v34 & 1;
    LOBYTE(v54) = 1;
    OUTLINED_FUNCTION_11_74();
    v35 = sub_217752E18();
    v37 = v36;
    v38 = v35;
    sub_2176A371C(v35, v36, v39);
    OUTLINED_FUNCTION_11_74();
    sub_217752E58();
    v40 = memcpy(v65, v64, sizeof(v65));
    sub_2172A9B6C(v40, v41, v42);
    OUTLINED_FUNCTION_11_74();
    sub_217752E58();
    v43 = OUTLINED_FUNCTION_5_95();
    v44(v43);
    v45 = v59;
    v46 = v60;
    v47 = v61;
    v50 = v61;
    v51 = v59;
    v48 = v63;
    v49 = v62;
    v53[0] = v33;
    LOBYTE(v53[1]) = v66;
    v53[2] = v38;
    v53[3] = v37;
    OUTLINED_FUNCTION_14_61(&v53[4]);
    v53[24] = v45;
    v53[25] = v46;
    v53[26] = v47;
    v53[27] = v49;
    v53[28] = v48;
    memcpy(v52, v53, 0xE8uLL);
    sub_217350FD0(v53, &v54);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v54 = v33;
    v55 = v66;
    v56 = v38;
    v57 = v37;
    OUTLINED_FUNCTION_14_61(v58);
    v58[20] = v51;
    v58[21] = v46;
    v58[22] = v50;
    v58[23] = v49;
    v58[24] = v48;
    sub_21735129C(&v54);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176A2828(uint64_t a1)
{
  sub_2177531E8();
  CloudCoverArtworkRecipe.hash(into:)(v2);
  return sub_217753238();
}

__n128 CloudCoverArtworkRecipe.ColorInformation.init(color1:color2:color3:color4:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v5;
  v6 = *(a2 + 16);
  *(a5 + 40) = *a2;
  *(a5 + 56) = v6;
  v7 = *(a3 + 16);
  *(a5 + 80) = *a3;
  *(a5 + 96) = v7;
  result = *a4;
  v9 = *(a4 + 16);
  *(a5 + 120) = *a4;
  v10 = *(a2 + 32);
  v11 = *(a3 + 32);
  v12 = *(a4 + 32);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 72) = v10;
  *(a5 + 112) = v11;
  *(a5 + 136) = v9;
  *(a5 + 152) = v12;
  return result;
}

BOOL static CloudCoverArtworkRecipe.ColorInformation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v55 = *(a1 + 48);
  v53 = *(a1 + 40);
  v54 = *(a1 + 56);
  v49 = *(a1 + 64);
  v57 = *(a1 + 72);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v50 = *(a2 + 40);
  v52 = *(a2 + 48);
  v51 = *(a2 + 56);
  v48 = *(a2 + 64);
  v56 = *(a2 + 72);
  v45 = *(a2 + 80);
  v47 = *(a2 + 88);
  v46 = *(a2 + 96);
  if (!v6)
  {
    if (!v11)
    {
      v15 = *(a1 + 80);
      v16 = *(a1 + 96);
      v17 = *(a1 + 88);
      v43 = *(a1 + 152);
      v44 = *(a2 + 104);
      v18 = *(a2 + 112);
      v19 = *(a1 + 104);
      v20 = *(a1 + 112);
      v37 = *(a1 + 136);
      v38 = *(a2 + 120);
      v40 = *(a2 + 136);
      v41 = *(a2 + 128);
      OUTLINED_FUNCTION_10_66();

      goto LABEL_21;
    }

LABEL_12:
    sub_217751DE8();
    v58 = v2;
    v59 = v3;
    v60 = v4;
    v61 = v5;
    v62 = v6;
    v63 = v7;
    v64 = v8;
    v65 = v10;
    v66 = v9;
    v67 = v11;
LABEL_13:
    sub_2171F06D8(&v58, &qword_27CB24C98, &qword_2177800E0);
    return 0;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  if (v2 != v7 || v3 != v8 || v4 != v10)
  {
    goto LABEL_10;
  }

  v15 = *(a1 + 80);
  v16 = *(a1 + 96);
  v17 = *(a1 + 88);
  v43 = *(a1 + 152);
  v44 = *(a2 + 104);
  v18 = *(a2 + 112);
  v19 = *(a1 + 104);
  v20 = *(a1 + 112);
  v37 = *(a1 + 136);
  v38 = *(a2 + 120);
  v40 = *(a2 + 136);
  v41 = *(a2 + 128);
  OUTLINED_FUNCTION_10_66();
  v21 = v5 == v9 && v6 == v11;
  if (!v21 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  if (!v57)
  {
    v22 = v56;
    if (!v56)
    {

      goto LABEL_39;
    }

    goto LABEL_32;
  }

  v22 = v56;
  if (!v56)
  {
LABEL_32:
    sub_217751DE8();
    v58 = v53;
    v59 = v55;
    v60 = v54;
    v61 = v49;
    v62 = v57;
    v63 = v50;
    v64 = v52;
    v65 = v51;
    v66 = v48;
    v67 = v22;
    goto LABEL_13;
  }

  if (v53 != v50 || v55 != v52 || v54 != v51)
  {
    goto LABEL_10;
  }

  v25 = v49 == v48 && v57 == v56;
  if (!v25 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  if (!v20)
  {
    if (!v18)
    {

      goto LABEL_57;
    }

    goto LABEL_50;
  }

  if (!v18)
  {
LABEL_50:
    sub_217751DE8();
    v58 = v15;
    v59 = v17;
    v60 = v16;
    v61 = v19;
    v62 = v20;
    v63 = v45;
    v64 = v47;
    v65 = v46;
    v66 = v44;
    v67 = v18;
    goto LABEL_13;
  }

  if (v15 != v45 || v17 != v47 || v16 != v46)
  {
    goto LABEL_10;
  }

  v28 = v19 == v44 && v20 == v18;
  if (!v28 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

LABEL_57:
  if (!v43)
  {
    v29 = v42;
    if (!v42)
    {

      return 1;
    }

    goto LABEL_68;
  }

  v29 = v42;
  if (!v42)
  {
LABEL_68:
    v32 = v29;
    sub_217751DE8();
    v58 = v36;
    v59 = v39;
    v60 = v37;
    v61 = v34;
    v62 = v43;
    v63 = v38;
    v64 = v41;
    v65 = v40;
    v66 = v35;
    v67 = v32;
    goto LABEL_13;
  }

  if (v36 != v38 || v39 != v41 || v37 != v40)
  {
LABEL_10:
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRelease_n();
    return 0;
  }

  v33 = v34 == v35 && v43 == v42;
  return v33 || (sub_217753058() & 1) != 0;
}

unint64_t sub_2176A2CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C5E0;
  if (!qword_27CB2C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C5E0);
  }

  return result;
}

unint64_t sub_2176A2D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C5E8;
  if (!qword_27CB2C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C5E8);
  }

  return result;
}

uint64_t sub_2176A2D80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x31726F6C6F63 && a2 == 0xE600000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x32726F6C6F63 && a2 == 0xE600000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x33726F6C6F63 && a2 == 0xE600000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x34726F6C6F63 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

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

uint64_t sub_2176A2EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176A2D80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2176A2F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176A3770(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176A2F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176A3770(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudCoverArtworkRecipe.ColorInformation.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C600, &qword_217792E78);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = *(v1 + 4);
  v11 = *(v1 + 40);
  v44 = *(v1 + 56);
  v45 = v11;
  v46 = *(v1 + 9);
  v12 = v1[5];
  v40 = v1[6];
  v41 = v12;
  v13 = *(v1 + 14);
  v14 = *(v1 + 120);
  v38 = *(v1 + 136);
  v39 = v14;
  v42 = *(v1 + 19);
  v43 = v13;
  v15 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v18 = sub_2176A3770(v15, v16, v17);
  sub_217751DE8();
  v19 = sub_2177532F8();
  v20 = v1[1];
  v47 = *v1;
  v48 = v20;
  v49 = v10;
  v23 = sub_2172A9724(v19, v21, v22);
  OUTLINED_FUNCTION_1_128(v23, v24, v25, &type metadata for Artwork.Color);
  if (!v18)
  {
    v27 = v42;
    v28 = v43;

    v47 = v45;
    v48 = v44;
    v49 = v46;
    v29 = sub_217751DE8();
    OUTLINED_FUNCTION_1_128(v29, v30, v31, &type metadata for Artwork.Color);

    v47 = v41;
    v48 = v40;
    v49 = v28;
    v32 = sub_217751DE8();
    OUTLINED_FUNCTION_1_128(v32, v33, v34, &type metadata for Artwork.Color);

    v47 = v39;
    v48 = v38;
    v49 = v27;
    v35 = sub_217751DE8();
    OUTLINED_FUNCTION_1_128(v35, v36, v37, &type metadata for Artwork.Color);
  }

  (*(v6 + 8))(v9, v4, v26);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudCoverArtworkRecipe.ColorInformation.hash(into:)()
{
  sub_21726519C();
  sub_21726519C();
  sub_21726519C();
  return sub_21726519C();
}

uint64_t CloudCoverArtworkRecipe.ColorInformation.hashValue.getter()
{
  sub_2177531E8();
  sub_21726519C();
  sub_21726519C();
  sub_21726519C();
  sub_21726519C();
  return sub_217753238();
}

void CloudCoverArtworkRecipe.ColorInformation.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C610, &qword_217792E80);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2176A3770(v6, v7, v8);
  v9 = sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v33 = v4;
    sub_2172A9B6C(v9, v10, v11);
    OUTLINED_FUNCTION_3_112();
    sub_217752E58();
    v30 = v37;
    v31 = v36;
    v29 = v38;
    v32 = v40;
    OUTLINED_FUNCTION_3_112();
    sub_217752E58();
    v23 = v36;
    v24 = v39;
    v25 = v38;
    v26 = v37;
    v28 = v40;
    LOBYTE(v35[0]) = 2;
    OUTLINED_FUNCTION_3_112();
    sub_217752E58();
    v21 = v36;
    v22 = v39;
    v19 = v38;
    v20 = v37;
    v18 = v39;
    v12 = v40;
    OUTLINED_FUNCTION_3_112();
    sub_217752E58();
    v13 = OUTLINED_FUNCTION_4_116();
    v14(v13);
    v27 = v57;
    v16 = v59;
    v17 = v58;
    v15 = v60;
    v34 = v56;
    v35[0] = v31;
    v35[1] = v30;
    v35[2] = v29;
    v35[3] = v24;
    v35[4] = v32;
    v35[5] = v23;
    v35[6] = v26;
    v35[7] = v25;
    v35[8] = v22;
    v35[9] = v28;
    v35[10] = v21;
    v35[11] = v20;
    v35[12] = v19;
    v35[13] = v18;
    v35[14] = v12;
    v35[15] = v56;
    v35[16] = v57;
    v35[17] = v58;
    v35[18] = v59;
    v35[19] = v60;
    memcpy(v33, v35, 0xA0uLL);
    sub_2176A37C4(v35, &v36);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v36 = v31;
    v37 = v30;
    v38 = v29;
    v39 = v24;
    v40 = v32;
    v41 = v23;
    v42 = v26;
    v43 = v25;
    v44 = v22;
    v45 = v28;
    v46 = v21;
    v47 = v20;
    v48 = v19;
    v49 = v18;
    v50 = v12;
    v51 = v34;
    v52 = v27;
    v53 = v17;
    v54 = v16;
    v55 = v15;
    sub_2176A1F98(&v36);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176A36E0(uint64_t a1)
{
  sub_2177531E8();
  CloudCoverArtworkRecipe.ColorInformation.hash(into:)();
  return sub_217753238();
}

unint64_t sub_2176A371C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C5F8;
  if (!qword_27CB2C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C5F8);
  }

  return result;
}

unint64_t sub_2176A3770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C608;
  if (!qword_27CB2C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C608);
  }

  return result;
}

unint64_t sub_2176A3800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C618;
  if (!qword_27CB2C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C618);
  }

  return result;
}

unint64_t sub_2176A3858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C620;
  if (!qword_27CB2C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C620);
  }

  return result;
}

unint64_t sub_2176A38B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C628;
  if (!qword_27CB2C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C628);
  }

  return result;
}

unint64_t sub_2176A3908()
{
  result = qword_27CB2C630;
  if (!qword_27CB2C630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2C638, &qword_217792F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C630);
  }

  return result;
}

unint64_t sub_2176A3970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C640;
  if (!qword_27CB2C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C640);
  }

  return result;
}

unint64_t sub_2176A39C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C648;
  if (!qword_27CB2C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C648);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit23CloudCoverArtworkRecipeV16ColorInformationVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2176A3A48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 232))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_2176A3A9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 232) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 232) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_2176A3B40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 160))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_2176A3B94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

_BYTE *sub_2176A3C1C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2176A3CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C650;
  if (!qword_27CB2C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C650);
  }

  return result;
}

unint64_t sub_2176A3D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C658;
  if (!qword_27CB2C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C658);
  }

  return result;
}

unint64_t sub_2176A3DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C660;
  if (!qword_27CB2C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C660);
  }

  return result;
}

void *OUTLINED_FUNCTION_14_61(void *a1)
{

  return memcpy(a1, (v1 - 248), 0xA0uLL);
}

MusicKit::CatalogAsset_optional __swiftcall CatalogAsset.init(endpointType:isRedownloadable:isSubscriptionRequired:needsUserUpload:shouldReportPlayEvents:)(MusicKit::CatalogAsset::EndpointType_optional endpointType, Swift::Bool_optional isRedownloadable, Swift::Bool_optional isSubscriptionRequired, Swift::Bool_optional needsUserUpload, Swift::Bool_optional shouldReportPlayEvents)
{
  v6 = *endpointType.value;
  if (v6 == 4)
  {
    v6 = 0;
  }

  v7 = 256;
  if (!isRedownloadable.value)
  {
    v7 = 0;
  }

  v8 = 0x10000;
  if (!isSubscriptionRequired.value)
  {
    v8 = 0;
  }

  v9 = v7 | v8;
  v10 = 0x1000000;
  if (!needsUserUpload.value)
  {
    v10 = 0;
  }

  *(v5 + 4) = shouldReportPlayEvents.value;
  *v5 = v9 | v10 | v6;
  result.value.endpointType = endpointType.value;
  return result;
}

uint64_t sub_2176A3F4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70646E65 && a2 == 0xEC00000065707954;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000002177B4E00 == a2;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000002177B4E20 == a2;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x657355736465656ELL && a2 == 0xEF64616F6C705572;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000016 && 0x80000002177B4E40 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_217753058();

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

unint64_t sub_2176A4104(char a1)
{
  result = 0x746E696F70646E65;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x657355736465656ELL;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2176A41DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176A3F4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2176A4204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176A4448(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176A4240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176A4448(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CatalogAsset.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C668, &qword_2177933A0);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  v10 = v0[1];
  v18[2] = v0[2];
  v18[3] = v10;
  v11 = v0[3];
  v18[0] = v0[4];
  v18[1] = v11;
  v12 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2176A4448(v12, v13, v14);
  v15 = sub_2177532F8();
  sub_2176A449C(v15, v16, v17);
  OUTLINED_FUNCTION_48();
  sub_217752F88();
  if (!v1)
  {
    OUTLINED_FUNCTION_8_82();
    OUTLINED_FUNCTION_48();
    sub_217752F58();
    OUTLINED_FUNCTION_48();
    sub_217752F58();
    OUTLINED_FUNCTION_48();
    sub_217752F58();
    OUTLINED_FUNCTION_48();
    sub_217752F58();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_2176A4448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C670;
  if (!qword_27CB2C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C670);
  }

  return result;
}

unint64_t sub_2176A449C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C678;
  if (!qword_27CB2C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C678);
  }

  return result;
}

uint64_t CatalogAsset.hash(into:)()
{
  OUTLINED_FUNCTION_7_78();
  MEMORY[0x21CEA3550]();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  return sub_217753208();
}

uint64_t CatalogAsset.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_7_78();
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  sub_217753208();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  return sub_217753238();
}

void CatalogAsset.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_171();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C680, &qword_2177933A8);
  OUTLINED_FUNCTION_0_0();
  v35 = v34;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v36);
  v38 = &v49 - v37;
  v39 = __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  sub_2176A4448(v39, v40, v41);
  v42 = sub_2177532C8();
  if (!v26)
  {
    a15 = 0;
    sub_2176A57E4(v42, v43, v44);
    sub_217752EA8();
    v45 = a16;
    OUTLINED_FUNCTION_8_82();
    v46 = OUTLINED_FUNCTION_5_96(&a14);
    a13 = 2;
    v51 = OUTLINED_FUNCTION_5_96(&a13);
    a12 = 3;
    v50 = OUTLINED_FUNCTION_5_96(&a12);
    a11 = 4;
    v47 = OUTLINED_FUNCTION_5_96(&a11);
    HIDWORD(v49) = v46 & 1;
    v51 &= 1u;
    v48 = v50 & 1;
    (*(v35 + 8))(v38, v33);
    *v32 = v45;
    v32[1] = BYTE4(v49);
    v32[2] = v51;
    v32[3] = v48;
    v32[4] = v47 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176A47F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6573616863727570 && a2 == 0xE900000000000073;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x686374616DLL && a2 == 0xE500000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7069726373627573 && a2 == 0xEC0000006E6F6974)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

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

uint64_t sub_2176A4954(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6573616863727570;
      break;
    case 2:
      result = 0x686374616DLL;
      break;
    case 3:
      result = 0x7069726373627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2176A4A1C(uint64_t a1)
{
  v2 = *v1;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v2);
  sub_217753208();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  return sub_217753238();
}

uint64_t sub_2176A4AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2176A4B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176A47F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2176A4B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176A5838(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176A4B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176A5838(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2176A4BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176A58E0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176A4BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176A58E0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2176A4C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176A5934(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176A4C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176A5934(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2176A4C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176A588C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176A4CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176A588C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2176A4D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176A5988(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176A4D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176A5988(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CatalogAsset.EndpointType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_171();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C690, &qword_2177933B0);
  OUTLINED_FUNCTION_0_0();
  v74 = v30;
  v75 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_150();
  v73 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C698, &qword_2177933B8);
  OUTLINED_FUNCTION_0_0();
  v71 = v34;
  v72 = v33;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_150();
  v70 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C6A0, &qword_2177933C0);
  OUTLINED_FUNCTION_0_0();
  v68 = v38;
  v69 = v37;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_150();
  v67 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C6A8, &qword_2177933C8);
  OUTLINED_FUNCTION_0_0();
  v65 = v42;
  v66 = v41;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v43);
  v45 = &v65 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C6B0, &qword_2177933D0);
  OUTLINED_FUNCTION_0_0();
  v48 = v47;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v49);
  v51 = &v65 - v50;
  v52 = *v24;
  v53 = __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_2176A5838(v53, v54, v55);
  v56 = sub_2177532F8();
  switch(v52)
  {
    case 1:
      OUTLINED_FUNCTION_8_82();
      sub_2176A5934(v62, v63, v64);
      v59 = v67;
      OUTLINED_FUNCTION_3_113(&type metadata for CatalogAsset.EndpointType.PurchasesCodingKeys, &a12);
      v61 = v68;
      v60 = v69;
      goto LABEL_6;
    case 2:
      a13 = 2;
      sub_2176A58E0(v56, v57, v58);
      v59 = v70;
      OUTLINED_FUNCTION_3_113(&type metadata for CatalogAsset.EndpointType.MatchCodingKeys, &a13);
      v61 = v71;
      v60 = v72;
      goto LABEL_6;
    case 3:
      a14 = 3;
      sub_2176A588C(v56, v57, v58);
      v59 = v73;
      OUTLINED_FUNCTION_3_113(&type metadata for CatalogAsset.EndpointType.SubscriptionCodingKeys, &a14);
      v61 = v74;
      v60 = v75;
LABEL_6:
      (*(v61 + 8))(v59, v60);
      break;
    default:
      sub_2176A5988(v56, v57, v58);
      sub_217752EE8();
      (*(v65 + 8))(v45, v66);
      break;
  }

  (*(v48 + 8))(v51, v46);
  OUTLINED_FUNCTION_170();
}

uint64_t CatalogAsset.EndpointType.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

void CatalogAsset.EndpointType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_171();
  a23 = v25;
  a24 = v26;
  v103 = v24;
  v28 = v27;
  v99 = v29;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C6E0, &qword_2177933D8);
  OUTLINED_FUNCTION_0_0();
  v98 = v30;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_150();
  v101 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C6E8, &qword_2177933E0);
  OUTLINED_FUNCTION_0_0();
  v95 = v34;
  v96 = v33;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_150();
  v97 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C6F0, &qword_2177933E8);
  OUTLINED_FUNCTION_0_0();
  v93 = v38;
  v94 = v37;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v39);
  v41 = &v86 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C6F8, &qword_2177933F0);
  OUTLINED_FUNCTION_0_0();
  v92 = v43;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v44);
  v46 = &v86 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C700, &unk_2177933F8);
  OUTLINED_FUNCTION_0_0();
  v100 = v48;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v49);
  v51 = &v86 - v50;
  v52 = __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_2176A5838(v52, v53, v54);
  v55 = v103;
  sub_2177532C8();
  if (v55)
  {
    goto LABEL_9;
  }

  v89 = v42;
  v90 = v46;
  v91 = v41;
  v56 = v101;
  v57 = v102;
  v103 = v28;
  v58 = v51;
  sub_217752EB8();
  sub_21733CF68();
  if (v60 == v61 >> 1)
  {
LABEL_8:
    v75 = v100;
    v76 = sub_217752B48();
    swift_allocError();
    v78 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0);
    *v78 = &type metadata for CatalogAsset.EndpointType;
    sub_217752DF8();
    sub_217752B08();
    (*(*(v76 - 8) + 104))(v78, *MEMORY[0x277D84160], v76);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v75 + 8))(v58, v47);
    v28 = v103;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_10:
    OUTLINED_FUNCTION_170();
    return;
  }

  v88 = 0;
  if (v60 < (v61 >> 1))
  {
    v62 = *(v59 + v60);
    sub_21733CF64();
    v64 = v63;
    v66 = v65;
    v67 = swift_unknownObjectRelease();
    if (v64 == v66 >> 1)
    {
      v70 = v99;
      v71 = v100;
      v87 = v62;
      v72 = v62;
      v73 = v98;
      switch(v72)
      {
        case 1:
          OUTLINED_FUNCTION_8_82();
          sub_2176A5934(v83, v84, v85);
          v79 = v91;
          OUTLINED_FUNCTION_4_117(&type metadata for CatalogAsset.EndpointType.PurchasesCodingKeys, &a12);
          swift_unknownObjectRelease();
          v81 = v93;
          v80 = v94;
          goto LABEL_18;
        case 2:
          a13 = 2;
          sub_2176A58E0(v67, v68, v69);
          v79 = v97;
          OUTLINED_FUNCTION_4_117(&type metadata for CatalogAsset.EndpointType.MatchCodingKeys, &a13);
          swift_unknownObjectRelease();
          v81 = v95;
          v80 = v96;
LABEL_18:
          (*(v81 + 8))(v79, v80);
          goto LABEL_19;
        case 3:
          a14 = 3;
          sub_2176A588C(v67, v68, v69);
          v82 = v88;
          sub_217752DE8();
          if (v82)
          {
            (*(v71 + 8))(v58, v47);
            swift_unknownObjectRelease();
            v28 = v103;
            goto LABEL_9;
          }

          swift_unknownObjectRelease();
          (*(v73 + 8))(v56, v57);
LABEL_19:
          (*(v71 + 8))(v58, v47);
          *v70 = v87;
          __swift_destroy_boxed_opaque_existential_1(v103);
          break;
        default:
          a11 = 0;
          sub_2176A5988(v67, v68, v69);
          v74 = v90;
          OUTLINED_FUNCTION_4_117(&type metadata for CatalogAsset.EndpointType.UnknownCodingKeys, &a11);
          swift_unknownObjectRelease();
          (*(v92 + 8))(v74, v89);
          goto LABEL_19;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

unint64_t sub_2176A57E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C688;
  if (!qword_27CB2C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C688);
  }

  return result;
}

unint64_t sub_2176A5838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C6B8;
  if (!qword_27CB2C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C6B8);
  }

  return result;
}

unint64_t sub_2176A588C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C6C0;
  if (!qword_27CB2C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C6C0);
  }

  return result;
}

unint64_t sub_2176A58E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C6C8;
  if (!qword_27CB2C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C6C8);
  }

  return result;
}

unint64_t sub_2176A5934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C6D0;
  if (!qword_27CB2C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C6D0);
  }

  return result;
}

unint64_t sub_2176A5988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C6D8;
  if (!qword_27CB2C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C6D8);
  }

  return result;
}

unint64_t sub_2176A59F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C708;
  if (!qword_27CB2C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C708);
  }

  return result;
}

unint64_t sub_2176A5A50()
{
  result = qword_27CB2C710;
  if (!qword_27CB2C710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2C718, &qword_2177934C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C710);
  }

  return result;
}

unint64_t sub_2176A5AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C720;
  if (!qword_27CB2C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C720);
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CatalogAsset(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 5))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 1);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for CatalogAsset(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_2176A5BD0(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CatalogAsset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2176A5DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C728;
  if (!qword_27CB2C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C728);
  }

  return result;
}

unint64_t sub_2176A5E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C730;
  if (!qword_27CB2C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C730);
  }

  return result;
}

unint64_t sub_2176A5E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C738;
  if (!qword_27CB2C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C738);
  }

  return result;
}

unint64_t sub_2176A5ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C740;
  if (!qword_27CB2C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C740);
  }

  return result;
}

unint64_t sub_2176A5F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C748;
  if (!qword_27CB2C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C748);
  }

  return result;
}

unint64_t sub_2176A5F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C750;
  if (!qword_27CB2C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C750);
  }

  return result;
}

unint64_t sub_2176A5FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C758;
  if (!qword_27CB2C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C758);
  }

  return result;
}

unint64_t sub_2176A6034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C760;
  if (!qword_27CB2C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C760);
  }

  return result;
}

unint64_t sub_2176A608C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C768;
  if (!qword_27CB2C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C768);
  }

  return result;
}

unint64_t sub_2176A60E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C770;
  if (!qword_27CB2C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C770);
  }

  return result;
}

unint64_t sub_2176A613C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C778;
  if (!qword_27CB2C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C778);
  }

  return result;
}

unint64_t sub_2176A6194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C780;
  if (!qword_27CB2C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C780);
  }

  return result;
}

unint64_t sub_2176A61EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C788;
  if (!qword_27CB2C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C788);
  }

  return result;
}

unint64_t sub_2176A6244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C790;
  if (!qword_27CB2C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C790);
  }

  return result;
}

uint64_t Artist.init(propertyProvider:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = OUTLINED_FUNCTION_204();
  v5(v4);
  v7 = v11[0];
  v6 = v11[1];
  sub_217751DE8();
  sub_217269F50(v11);
  *a2 = v7;
  a2[1] = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  PropertyProvider.eraseToAnyPropertyProvider()(v8, v9, a2 + 2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Artist.name.getter()
{
  if (qword_280BE6898 != -1)
  {
    OUTLINED_FUNCTION_6_98(&qword_280BE6898);
  }

  result = sub_2172A3FF0();
  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2176A656C()
{
  OUTLINED_FUNCTION_23_0();
  if (!v0)
  {
    swift_once();
  }

  return sub_2172A44CC();
}

uint64_t Artist._biography.getter()
{
  if (qword_280BE6A48 != -1)
  {
    swift_once();
  }

  return sub_2172A3FF0();
}

void *Artist.editorialNotes.getter(void x0_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6998 != -1)
  {
    OUTLINED_FUNCTION_16(&qword_280BE6998);
  }

  v26 = qword_280C021A0;

  return sub_2176CA7A8(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2176A6780(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_23_0();
  if (!v5)
  {
    swift_once();
  }

  return a3(*a2);
}

void Artist._defaultPlayableItems.getter(void x0_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (qword_280BE68E0 != -1)
  {
    swift_once();
  }

  v30 = qword_280C02168;

  sub_2176CB058(v30, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_2176A6BD4(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_23_0();
  if (!v4)
  {
    v7 = v3;
    swift_once();
    v3 = v7;
  }

  v5 = *a2;

  return v3(v5);
}

uint64_t static Artist.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v5);
  v7 = *(v6 + 104);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
  return v7(a2 + 2, v8, v5, v6) & 1;
}

uint64_t Artist.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v295 - v3;
  v5 = sub_2177516D8();
  *&v299 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  *&v298 = &v295 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v344 = 0x28747369747241;
  v345 = 0xE700000000000000;
  *&v329 = 0x22203A646920200ALL;
  *(&v329 + 1) = 0xE800000000000000;
  MEMORY[0x21CEA23B0](*v0, v0[1], v6);
  OUTLINED_FUNCTION_36_10();
  MEMORY[0x21CEA23B0](v329, *(&v329 + 1));

  OUTLINED_FUNCTION_24_0();
  v342 = v8 | 0x656D616E00000000;
  v343 = 0xEB0000000022203ALL;
  if (qword_280BE6898 == -1)
  {
    goto LABEL_2;
  }

LABEL_164:
  OUTLINED_FUNCTION_6_98(&qword_280BE6898);
LABEL_2:
  v9 = sub_2172A3FF0();
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  MEMORY[0x21CEA23B0](v9, v11);

  OUTLINED_FUNCTION_36_10();
  MEMORY[0x21CEA23B0](v342, v343);

  if (qword_280BE6998 != -1)
  {
    OUTLINED_FUNCTION_16(&qword_280BE6998);
  }

  OUTLINED_FUNCTION_32_45();
  sub_2176CA7A8(v12, v13, v14, v15, v16, v17, v18, v19, v295, v296, v297, *(&v297 + 1), v298, *(&v298 + 1), v299, *(&v299 + 1), v300, v301, v302, v303, v304, v305, v306, v307, v308, v309);
  v338[0] = v329;
  v338[1] = v330;
  v338[2] = v331;
  v338[3] = v332;
  v339 = v330;
  v340 = v331;
  v341 = v332;
  v20 = &v318;
  if (*(&v329 + 1) != 1)
  {
    *&v336[0] = 0xD000000000000014;
    *(&v336[0] + 1) = 0x80000002177AB940;
    v330 = v339;
    v331 = v340;
    v332 = v341;
    v21 = EditorialNotes.debugDescription.getter();
    v23 = v22;
    v24 = sub_2171F06D8(v338, &qword_27CB24B70, &unk_217759460);
    *&v325 = v21;
    *(&v325 + 1) = v23;
    OUTLINED_FUNCTION_28_49(v24, v25, v26);
    OUTLINED_FUNCTION_3_114();
    v295 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    v35 = OUTLINED_FUNCTION_49_30(v27, v28, v29, v30, v31, v32, v33, v34, v295);
    v37 = v36;

    MEMORY[0x21CEA23B0](v35, v37, v38);

    OUTLINED_FUNCTION_54_24();
  }

  if (qword_280BE6A28 != -1)
  {
    swift_once();
  }

  v39 = sub_2172A4364(qword_280C021D0);
  v296 = v1;
  if (v39)
  {
    *&v329 = 0;
    *(&v329 + 1) = 0xE000000000000000;
    v47 = *(v39 + 16);
    if (v47)
    {
      *&v297 = v5;
      v48 = (v39 + 40);
      do
      {
        v50 = *(v48 - 1);
        v49 = *v48;
        if ((*(&v329 + 1) & 0x2000000000000000) != 0)
        {
          v51 = HIBYTE(*(&v329 + 1)) & 0xFLL;
        }

        else
        {
          v51 = v329 & 0xFFFFFFFFFFFFLL;
        }

        sub_217751DE8();
        if (v51)
        {
          OUTLINED_FUNCTION_48_1();
        }

        *&v336[0] = 0x22202020200ALL;
        *(&v336[0] + 1) = 0xE600000000000000;
        MEMORY[0x21CEA23B0](v50, v49);

        OUTLINED_FUNCTION_36_10();
        MEMORY[0x21CEA23B0](*&v336[0], *(&v336[0] + 1));

        v48 += 2;
        --v47;
      }

      while (v47);

      v53 = *(&v329 + 1);
      v52 = v329;
      v1 = v296;
      v5 = v297;
    }

    else
    {

      v52 = 0;
      v53 = 0xE000000000000000;
    }

    v54 = HIBYTE(v53) & 0xF;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v54 = v52 & 0xFFFFFFFFFFFFLL;
    }

    v20 = &v318;
    if (v54)
    {
      OUTLINED_FUNCTION_7_79();
      *&v336[0] = v55 - 3;
      *(&v336[0] + 1) = v56;
      MEMORY[0x21CEA23B0]();

      MEMORY[0x21CEA23B0](1562386442, 0xE400000000000000, v57);
      OUTLINED_FUNCTION_54_24();
    }
  }

  if (qword_280BE6928 != -1)
  {
    swift_once();
  }

  sub_2172A4358(qword_280C02180, v40, v41, v42, v43, v44, v45, v46, v298, *(&v298 + 1), v299, *(&v299 + 1), v300, v301, SWORD2(v301), SBYTE6(v301), HIBYTE(v301), v302, v303, v304, v305, v306, v307, v308, v309);
  LOBYTE(v66) = 102;
  if (v65 != 2)
  {
    OUTLINED_FUNCTION_7_79();
    *&v329 = v68 + 1;
    *(&v329 + 1) = v67;
    v70 = (v69 & 1) == 0;
    if (v69)
    {
      v71 = 1702195828;
    }

    else
    {
      v71 = 0x65736C6166;
    }

    if (v70)
    {
      v72 = 0xE500000000000000;
    }

    else
    {
      v72 = 0xE400000000000000;
    }

    MEMORY[0x21CEA23B0](v71, v72);

    MEMORY[0x21CEA23B0](v329, *(&v329 + 1), v73);
  }

  if (qword_280BE6A50 != -1)
  {
    swift_once();
  }

  sub_2172A4358(qword_280C021E0, v58, v59, v60, v61, v62, v63, v64, v298, *(&v298 + 1), v299, *(&v299 + 1), v300, v301, SWORD2(v301), SBYTE6(v301), HIBYTE(v301), v302, v303, v304, v305, v306, v307, v308, v309);
  if (v81 != 2)
  {
    OUTLINED_FUNCTION_7_79();
    *&v329 = v83;
    *(&v329 + 1) = v82;
    v85 = (v84 & 1) == 0;
    if (v84)
    {
      v86 = 1702195828;
    }

    else
    {
      v86 = 0x65736C6166;
    }

    if (v85)
    {
      v87 = 0xE500000000000000;
    }

    else
    {
      v87 = 0xE400000000000000;
    }

    MEMORY[0x21CEA23B0](v86, v87);

    MEMORY[0x21CEA23B0](v329, *(&v329 + 1), v88);
  }

  if (qword_280BE68A0 != -1)
  {
    swift_once();
  }

  sub_2176CA788(qword_280C02140, v74, v75, v76, v77, v78, v79, v80, v298, *(&v298 + 1), v299, *(&v299 + 1), v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2171F06D8(v4, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    v66 = v299;
    v89 = v298;
    (*(v299 + 32))(v298, v4, v5);
    OUTLINED_FUNCTION_24_0();
    *&v329 = v90 | 0x3A6C727500000000;
    *(&v329 + 1) = 0xEA00000000002220;
    sub_21736C310();
    v91 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v91);

    OUTLINED_FUNCTION_36_10();
    LOBYTE(v4) = BYTE8(v329);
    MEMORY[0x21CEA23B0](v329, *(&v329 + 1));

    v93 = *(v66 + 8);
    LOBYTE(v66) = v66 + 8;
    v93(v89, v5, v92);
  }

  if (qword_280BE6880 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_32_45();
  sub_2176CA76C(v94, v95, v96, v97, v98, v99, v100, v101, v298, *(&v298 + 1), v299, *(&v299 + 1), v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317);
  if (v333)
  {
    OUTLINED_FUNCTION_29_41();
    *&v318 = 0;
    *(&v318 + 1) = 0xE000000000000000;
    v102 = &qword_27CB25388;
    v1 = &unk_21775D410;
    v103 = OUTLINED_FUNCTION_20_50();
    sub_217202078(v103, v104, v105, &unk_21775D410);
    v106 = OUTLINED_FUNCTION_19_46();
    sub_217202078(v106, v107, v108, &unk_21775D410);
    OUTLINED_FUNCTION_43_30();
    sub_21725CF00(v5, v4);
    OUTLINED_FUNCTION_18_56();
    LODWORD(v66) = BYTE8(v329);
    v4 = (v5 + 32);
    if (BYTE8(v329))
    {
LABEL_56:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_17_59();
      if (!v70)
      {

        OUTLINED_FUNCTION_50_32();
        sub_217294574();
        goto LABEL_62;
      }
    }

    else
    {
      while (1)
      {
        OUTLINED_FUNCTION_49_32();
        if (v70)
        {
          break;
        }

        if ((&unk_21775D410 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        if (&unk_21775D410 >= v109)
        {
          goto LABEL_151;
        }

        v110 = OUTLINED_FUNCTION_52_28();
        sub_217202078(v110, v111, &unk_27CB276C0, &qword_217758A00);
        v112 = sub_217751DE8();
        v102 = &v325;
        sub_2172940A0(v112, v113, v114, v115, v116, v117, v118, v119);
        sub_2171F06D8(&v325, &unk_27CB276C0, &qword_217758A00);
LABEL_62:
        OUTLINED_FUNCTION_27_47();
        if (v120)
        {
          v121 = 1;
        }

        else
        {
          v121 = 0;
        }

        if (v66)
        {
          sub_21725CF00(v5, 1);
          if (v121)
          {
            goto LABEL_150;
          }
        }

        else
        {
          sub_21725CF00(v5, 0);
          if (v121)
          {
            goto LABEL_149;
          }
        }

        v325 = v299;
        v326 = v298;
        v327 = v297;
        v328 = v102;
        OUTLINED_FUNCTION_4_6();
        if (v122)
        {
          OUTLINED_FUNCTION_48_1();
        }

        v310 = 10;
        v311 = 0xE100000000000000;
        v123 = Album.debugDescription.getter();
        MEMORY[0x21CEA23B0](v123);

        v102 = &v318;
        MEMORY[0x21CEA23B0](v310, v311, v124);

        sub_21725CE44(&v325);
        OUTLINED_FUNCTION_47_30();
        if (v66)
        {
          goto LABEL_56;
        }
      }
    }

    v334 = &unk_21775D410;
    sub_2171F06D8(&v329, &qword_27CB276B0, &unk_21777D6C0);
    OUTLINED_FUNCTION_24_0();
    *&v329 = v125 | 0x75626C6100000000;
    *(&v329 + 1) = 0xED00005B203A736DLL;
    v325 = v318;
    OUTLINED_FUNCTION_4_118();
    *&v324 = v127;
    *(&v324 + 1) = v126;
    sub_21733A5C8(v128, v129, v130);
    OUTLINED_FUNCTION_5_97();
    *(&v298 + 1) = v131;
    *&v298 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    v5 = OUTLINED_FUNCTION_49_30(v132, v133, v134, v135, v136, v137, v138, v139, v298);
    v4 = v140;

    MEMORY[0x21CEA23B0](v5, v4, v141);

    OUTLINED_FUNCTION_13_65();
    MEMORY[0x21CEA23B0](v329, *(&v329 + 1));

    sub_2171F06D8(v336, &qword_27CB25388, &unk_21775D410);
    v1 = v296;
    v20 = &v318;
  }

  else
  {
    sub_2171F06D8(&v329, &qword_27CB25318, &qword_2177657C0);
  }

  if (qword_280BE6870 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_32_45();
  sub_2176CA750(v142, v143, v144, v145, v146, v147, v148, v149, v298, *(&v298 + 1), v299, *(&v299 + 1), v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317);
  if (v333)
  {
    OUTLINED_FUNCTION_29_41();
    *&v324 = 0;
    *(&v324 + 1) = 0xE000000000000000;
    v1 = &unk_21775D420;
    v150 = OUTLINED_FUNCTION_20_50();
    sub_217202078(v150, v151, v152, &unk_21775D420);
    v153 = OUTLINED_FUNCTION_19_46();
    sub_217202078(v153, v154, v155, &unk_21775D420);
    OUTLINED_FUNCTION_43_30();
    sub_21725CF00(v5, v4);
    OUTLINED_FUNCTION_18_56();
    v156 = BYTE8(v329);
    v4 = (v5 + 32);
    if (BYTE8(v329))
    {
LABEL_79:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_17_59();
      if (!v70)
      {

        OUTLINED_FUNCTION_50_32();
        sub_21729464C();
        goto LABEL_88;
      }
    }

    else
    {
      while (1)
      {
        OUTLINED_FUNCTION_49_32();
        if (v70)
        {
          break;
        }

        if ((&unk_21775D420 & 0x8000000000000000) != 0)
        {
          goto LABEL_152;
        }

        if (&unk_21775D420 >= v157)
        {
          goto LABEL_155;
        }

        v158 = OUTLINED_FUNCTION_52_28();
        sub_217202078(v158, v159, &qword_27CB24618, &qword_217778790);
        OUTLINED_FUNCTION_55_24();
        if (v317)
        {
          v66 = *(v310 + 16);
          v160 = *(v310 + 24);
          sub_217283C5C(v5, 0);
          sub_217751DE8();

          sub_2172937E4(v66, v160, v161, v162, v163, v164, v165, v166, v298, *(&v298 + 1), v299, *(&v299 + 1), v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, *(&v318 + 1), v319, v320, v321, v322, v323, v324);

          v20 = &v318;
        }

        else
        {
          OUTLINED_FUNCTION_23_52();
        }

        sub_2171F06D8(&v325, &qword_27CB24618, &qword_217778790);
LABEL_88:
        v167 = OUTLINED_FUNCTION_22_56();
        if (v156)
        {
          sub_21725CF00(v167, 1);
          if (v66)
          {
            goto LABEL_154;
          }
        }

        else
        {
          sub_21725CF00(v167, 0);
          if (v66)
          {
            goto LABEL_153;
          }
        }

        OUTLINED_FUNCTION_34_39();
        OUTLINED_FUNCTION_4_6();
        if (v168)
        {
          OUTLINED_FUNCTION_48_1();
        }

        v310 = 10;
        v311 = 0xE100000000000000;
        v169 = Genre.debugDescription.getter();
        MEMORY[0x21CEA23B0](v169);

        LOBYTE(v66) = v311;
        MEMORY[0x21CEA23B0](v310, v311, v170);

        sub_21728418C(&v325);
        OUTLINED_FUNCTION_47_30();
        if (v156)
        {
          goto LABEL_79;
        }
      }
    }

    v334 = &unk_21775D420;
    sub_2171F06D8(&v329, &qword_27CB27C88, &qword_21779F250);
    OUTLINED_FUNCTION_24_0();
    *&v329 = v171 | 0x726E656700000000;
    *(&v329 + 1) = 0xED00005B203A7365;
    v325 = v324;
    OUTLINED_FUNCTION_4_118();
    *&v318 = v173;
    *(&v318 + 1) = v172;
    sub_21733A5C8(v174, v175, v176);
    OUTLINED_FUNCTION_3_114();
    *&v298 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30(v177, v178, v179, v180, v181, v182, v183, v184, v298);
    OUTLINED_FUNCTION_58_0();
    v185 = OUTLINED_FUNCTION_204();
    MEMORY[0x21CEA23B0](v185);

    OUTLINED_FUNCTION_13_65();
    OUTLINED_FUNCTION_42_37();

    sub_2171F06D8(v336, &qword_27CB27C80, &unk_21775D420);
    v1 = v296;
  }

  else
  {
    sub_2171F06D8(&v329, &qword_27CB25320, &unk_21776E020);
  }

  if (qword_280BE69E8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_32_45();
  sub_2176CA69C(v186, v187, v188, v189, v190, v191, v192, v193, v298, *(&v298 + 1), v299, *(&v299 + 1), v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317);
  if (v333)
  {
    OUTLINED_FUNCTION_29_41();
    *&v318 = 0;
    *(&v318 + 1) = 0xE000000000000000;
    v194 = &qword_27CB25380;
    v195 = OUTLINED_FUNCTION_20_50();
    sub_217202078(v195, v196, v197, &unk_21775DAA0);
    v198 = OUTLINED_FUNCTION_19_46();
    sub_217202078(v198, v199, v200, &unk_21775DAA0);
    OUTLINED_FUNCTION_41_37();
    sub_21725CF00(&v318, v1);
    OUTLINED_FUNCTION_18_56();
    v20 = BYTE8(v329);
    v4 = (v5 + 32);
    if (BYTE8(v329))
    {
LABEL_102:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_17_59();
      if (!v70)
      {

        OUTLINED_FUNCTION_50_32();
        sub_2172945BC();
        goto LABEL_108;
      }
    }

    else
    {
      while (1)
      {
        OUTLINED_FUNCTION_49_32();
        if (v70)
        {
          break;
        }

        if ((v1 & 0x8000000000000000) != 0)
        {
          goto LABEL_156;
        }

        if (v1 >= v201)
        {
          goto LABEL_159;
        }

        v202 = OUTLINED_FUNCTION_52_28();
        sub_217202078(v202, v203, &qword_27CB27900, &qword_217771CE0);
        v204 = sub_217751DE8();
        v194 = &v325;
        sub_2172940F0(v204, v205, v206, v207, v208, v209, v210, v211);
        sub_2171F06D8(&v325, &qword_27CB27900, &qword_217771CE0);
LABEL_108:
        OUTLINED_FUNCTION_27_47();
        if (v120)
        {
          v212 = 1;
        }

        else
        {
          v212 = 0;
        }

        if (v20)
        {
          sub_21725CF00(v5, 1);
          if (v212)
          {
            goto LABEL_158;
          }
        }

        else
        {
          sub_21725CF00(v5, 0);
          if (v212)
          {
            goto LABEL_157;
          }
        }

        v325 = v299;
        v326 = v298;
        v327 = v297;
        v328 = v194;
        OUTLINED_FUNCTION_4_6();
        if (v213)
        {
          OUTLINED_FUNCTION_48_1();
        }

        v310 = 10;
        v311 = 0xE100000000000000;
        v214 = MusicVideo.debugDescription.getter();
        MEMORY[0x21CEA23B0](v214);

        v194 = &v318;
        MEMORY[0x21CEA23B0](v310, v311, v215);

        sub_217283C08(&v325);
        OUTLINED_FUNCTION_47_30();
        if (v20)
        {
          goto LABEL_102;
        }
      }
    }

    v334 = v1;
    sub_2171F06D8(&v329, &qword_27CB278F0, &unk_217793B40);
    OUTLINED_FUNCTION_7_79();
    *&v329 = v217 - 2;
    *(&v329 + 1) = v216;
    v325 = v318;
    OUTLINED_FUNCTION_4_118();
    *&v324 = v219;
    *(&v324 + 1) = v218;
    sub_21733A5C8(v220, v221, v222);
    OUTLINED_FUNCTION_5_97();
    *(&v298 + 1) = v223;
    *&v298 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30(v224, v225, v226, v227, v228, v229, v230, v231, v298);
    OUTLINED_FUNCTION_58_0();
    v232 = OUTLINED_FUNCTION_204();
    MEMORY[0x21CEA23B0](v232);

    OUTLINED_FUNCTION_13_65();
    OUTLINED_FUNCTION_42_37();

    sub_2171F06D8(v336, &qword_27CB25380, &unk_21775DAA0);
    v1 = v296;
  }

  else
  {
    sub_2171F06D8(&v329, &qword_27CB25338, &unk_21775D3E0);
  }

  if (qword_280BE6820 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_32_45();
  sub_2176CA4F0(v233, v234, v235, v236, v237, v238, v239, v240, v298, *(&v298 + 1), v299, *(&v299 + 1), v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317);
  if (v333)
  {
    OUTLINED_FUNCTION_29_41();
    *&v335 = 0;
    *(&v335 + 1) = 0xE000000000000000;
    v241 = &unk_21775CD50;
    v242 = OUTLINED_FUNCTION_20_50();
    sub_217202078(v242, v243, v244, &unk_21775CD50);
    v245 = OUTLINED_FUNCTION_19_46();
    sub_217202078(v245, v246, v247, &unk_21775CD50);
    OUTLINED_FUNCTION_41_37();
    sub_21725CF00(v20, v1);
    OUTLINED_FUNCTION_18_56();
    v248 = BYTE8(v329);
    v4 = (v5 + 32);
    if (BYTE8(v329))
    {
LABEL_125:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_17_59();
      if (!v70)
      {

        v249 = OUTLINED_FUNCTION_50_32();
        sub_2172944E4(v249);
        goto LABEL_134;
      }
    }

    else
    {
      while (1)
      {
        OUTLINED_FUNCTION_49_32();
        if (v70)
        {
          break;
        }

        if ((v1 & 0x8000000000000000) != 0)
        {
          goto LABEL_160;
        }

        if (v1 >= v250)
        {
          goto LABEL_163;
        }

        v251 = OUTLINED_FUNCTION_52_28();
        sub_217202078(v251, v252, &qword_27CB24830, &qword_217771D40);
        OUTLINED_FUNCTION_55_24();
        if (v317)
        {
          LOBYTE(v241) = v310;
          v253 = *(v310 + 16);
          v254 = *(v310 + 24);
          sub_217283C5C(v5, 0);
          sub_217751DE8();

          sub_21729290C(v253, v254, v255, v256, v257, v258, v259, v260, v298, *(&v298 + 1), v299, *(&v299 + 1), v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, *(&v318 + 1), v319, v320, v321, v322, v323, v324);
        }

        else
        {
          OUTLINED_FUNCTION_23_52();
        }

        sub_2171F06D8(&v325, &qword_27CB24830, &qword_217771D40);
LABEL_134:
        v261 = OUTLINED_FUNCTION_22_56();
        if (v248)
        {
          sub_21725CF00(v261, 1);
          if (v241)
          {
            goto LABEL_162;
          }
        }

        else
        {
          sub_21725CF00(v261, 0);
          if (v241)
          {
            goto LABEL_161;
          }
        }

        OUTLINED_FUNCTION_34_39();
        OUTLINED_FUNCTION_4_6();
        if (v262)
        {
          OUTLINED_FUNCTION_48_1();
        }

        v310 = 10;
        v311 = 0xE100000000000000;
        v263 = Playlist.debugDescription.getter();
        MEMORY[0x21CEA23B0](v263);

        LOBYTE(v241) = v311;
        MEMORY[0x21CEA23B0](v310, v311, v264);

        sub_21726B8C4(&v325);
        OUTLINED_FUNCTION_47_30();
        if (v248)
        {
          goto LABEL_125;
        }
      }
    }

    v334 = v1;
    sub_2171F06D8(&v329, &qword_27CB254C0, &unk_21775CD60);
    OUTLINED_FUNCTION_7_79();
    *&v329 = v266 - 4;
    *(&v329 + 1) = v265;
    v325 = v335;
    OUTLINED_FUNCTION_4_118();
    *&v318 = v268;
    *(&v318 + 1) = v267;
    sub_21733A5C8(v269, v270, v271);
    OUTLINED_FUNCTION_3_114();
    *&v298 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30(v272, v273, v274, v275, v276, v277, v278, v279, v298);
    v280 = OUTLINED_FUNCTION_58_0();
    MEMORY[0x21CEA23B0](&v318, v1, v280);

    OUTLINED_FUNCTION_13_65();
    OUTLINED_FUNCTION_42_37();

    sub_2171F06D8(v336, &unk_27CB28230, &unk_21775CD50);
  }

  else
  {
    sub_2171F06D8(&v329, &qword_27CB25330, &unk_21775E9B0);
  }

  Artist.station.getter();
  if (*(&v336[0] + 1))
  {
    v329 = v336[0];
    v330 = v336[1];
    v331 = v336[2];
    *&v332 = v337;
    OUTLINED_FUNCTION_24_0();
    *&v336[0] = v281 | 0x7461747300000000;
    *(&v336[0] + 1) = 0xED0000203A6E6F69;
    *&v325 = Station.debugDescription.getter();
    *(&v325 + 1) = v282;
    OUTLINED_FUNCTION_28_49(v325, v282, v283);
    OUTLINED_FUNCTION_3_114();
    *&v298 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30(v284, v285, v286, v287, v288, v289, v290, v291, v298);
    OUTLINED_FUNCTION_58_0();
    v292 = OUTLINED_FUNCTION_204();
    MEMORY[0x21CEA23B0](v292);

    MEMORY[0x21CEA23B0](*&v336[0], *(&v336[0] + 1), v293);

    sub_217283DC8(&v329);
  }

  else
  {
    sub_2171F06D8(v336, &unk_27CB2AF80, &qword_217758C30);
  }

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return v344;
}

uint64_t Artist.id.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t Artist.subscript.getter()
{
  OUTLINED_FUNCTION_62_0();
  sub_2172E2188(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_62_0();
  sub_2172E2188(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_62_0();
  v3 = type metadata accessor for MusicItemCollection(0, *(v1 + 264), *(v0 + 272), v2);
  sub_2172E2188(v3, v4, v5);
  swift_getWitnessTable();
  v6 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v6, v7, v8);
}

uint64_t sub_2176A8130(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_23_0();
  if (!v4)
  {
    v7 = v3;
    swift_once();
    v3 = v7;
  }

  v5 = *a2;

  return v3(v5);
}

void *Artist.mainUberArtwork.getter(void x0_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6940 != -1)
  {
    swift_once();
  }

  v26 = qword_280C02190;

  return sub_2176CB030(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t Artist.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 112))(a1, v3, v4);
}

uint64_t Artist.hashValue.getter()
{
  sub_2177531E8();
  sub_217751FF8();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 112))(v4, v1, v2);
  return sub_217753238();
}

uint64_t sub_2176A8518@<X0>(uint64_t *a1@<X8>)
{
  result = Artist.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2176A867C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C820, &qword_217793F08);
  OUTLINED_FUNCTION_31_11(v0);
  OUTLINED_FUNCTION_31_43();
  result = sub_217729830();
  qword_280C02170 = result;
  return result;
}

uint64_t sub_2176A86EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C818, &qword_217793F00);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_212();
  result = OUTLINED_FUNCTION_26(v1, 0xEE007365746F4E6CLL, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C021A0 = result;
  return result;
}

uint64_t sub_2176A8760()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C810, &qword_217793EF8);
  OUTLINED_FUNCTION_31_11(v0);
  OUTLINED_FUNCTION_212();
  result = sub_217729830();
  qword_280C02158 = result;
  return result;
}

uint64_t sub_2176A87D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C808, &qword_217793EF0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6D614E65726E6567, 0xEA00000000007365, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C021D0 = result;
  return result;
}

uint64_t sub_2176A8850()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255A0, &unk_21775D430);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x73616D2E72656275, 0xEE00747241726574, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02190 = result;
  return result;
}

uint64_t sub_2176A88D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C800, &unk_217793EE0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1701667182, 0xE400000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02138 = result;
  return result;
}

uint64_t sub_2176A893C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7F8, &qword_217793ED8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(7107189, 0xE300000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02140 = result;
  return result;
}

uint64_t sub_2176A89A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7A8, &qword_217793E80);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_54_22();
  result = OUTLINED_FUNCTION_26(v1, 0xEE00657461446465, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C021B0 = result;
  return result;
}

uint64_t sub_2176A8A1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7B8, &qword_217793E90);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_54_22();
  result = OUTLINED_FUNCTION_26(v1, 0xEF73757461745365, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02198 = result;
  return result;
}

uint64_t sub_2176A8A90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7A0, &qword_217793E78);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6F436B636172745FLL, 0xEB00000000746E75, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C021C0 = result;
  return result;
}

uint64_t sub_2176A8B0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7A0, &qword_217793E78);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6F436D75626C615FLL, 0xEB00000000746E75, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C021C8 = result;
  return result;
}

uint64_t sub_2176A8B88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7A8, &qword_217793E80);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0xD000000000000011, 0x80000002177B48C0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02178 = result;
  return result;
}

uint64_t sub_2176A8C00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7D0, &qword_217793EA8);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21769A070();
  qword_280BE6888 = result;
  return result;
}

uint64_t sub_2176A8C84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7D8, &qword_217793EB0);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21769A074();
  qword_280C021A8 = result;
  return result;
}

uint64_t sub_2176A8CE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7F0, &unk_217793EC8);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21769A06C();
  qword_280BE6878 = result;
  return result;
}

uint64_t sub_2176A8D6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7C8, &qword_217793EA0);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21769A07C();
  qword_280BE69F0 = result;
  return result;
}

uint64_t static PartialMusicProperty<A>.musicVideos.getter()
{
  return sub_21767CE84(&qword_280BE69E8, &qword_280BE69F0);
}

{
  return sub_2177286EC();
}

uint64_t sub_2176A8DFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7E0, &qword_217793EB8);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21769A084();
  qword_280BE6828 = result;
  return result;
}

uint64_t sub_2176A8E88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7E8, &qword_217793EC0);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21769A080();
  qword_280BE6850 = result;
  return result;
}

uint64_t static PartialMusicProperty<A>.station.getter()
{
  return sub_21767CE84(&qword_280BE6848, &qword_280BE6850);
}

{
  return sub_2177286EC();
}

uint64_t sub_2176A8F10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7D0, &qword_217793EA8);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21736C3E8();
  qword_280BE6958 = result;
  return result;
}

uint64_t sub_2176A8F94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7D0, &qword_217793EA8);
  OUTLINED_FUNCTION_60(v0);
  OUTLINED_FUNCTION_35_38();
  result = sub_21736C3E8();
  qword_280BE6910 = result;
  return result;
}

uint64_t sub_2176A9058()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7E0, &qword_217793EB8);
  OUTLINED_FUNCTION_60(v0);
  OUTLINED_FUNCTION_35_38();
  result = sub_21736C3EC();
  qword_280BE6900 = result;
  return result;
}

uint64_t sub_2176A918C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7D8, &qword_217793EB0);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21736C3F0();
  qword_280BE6970 = result;
  return result;
}

uint64_t sub_2176A9238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7D0, &qword_217793EA8);
  OUTLINED_FUNCTION_60(v5);
  result = sub_21736C3E8();
  *a4 = result;
  return result;
}

uint64_t sub_2176A92C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7C8, &qword_217793EA0);
  OUTLINED_FUNCTION_60(v0);
  OUTLINED_FUNCTION_31_43();
  result = sub_21736C3E4();
  qword_280BE6A60 = result;
  return result;
}

uint64_t sub_2176A933C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7C0, &qword_217793E98);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21736C160(0x676E6F732D706F74, 0xE900000000000073, 1);
  qword_280BE6838 = result;
  return result;
}

uint64_t sub_2176A93C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C370, qword_217793F10);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_217697A14(0x6942747369747261, 0xE90000000000006FLL, 0, 0x676E69727453, 0xE600000000000000, qword_282959AF8);
  qword_280C021D8 = result;
  return result;
}

uint64_t sub_2176A9438()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27B48, &qword_21776B800);
  v1 = OUTLINED_FUNCTION_31_11(v0);
  *(v1 + 104) = 0;
  *(v1 + 112) = 1;
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_6();
  result = sub_2173C381C(v2, v3, v4, v5, v6, v7, 1, 0, v9, v10, v11);
  qword_280C02168 = result;
  return result;
}

uint64_t sub_2176A94E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7F8, &qword_217793ED8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6163697373616C63, 0xEC0000006C72556CLL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C021B8 = result;
  return result;
}

uint64_t sub_2176A9560()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7B0, &qword_217793E88);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0xD00000000000001ELL, 0x80000002177B4EE0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02148 = result;
  return result;
}

uint64_t sub_2176A9604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C368, &unk_217791C00);
  OUTLINED_FUNCTION_31_11(v7);
  result = sub_2176979D0(a2, a3, 0, 1819242306, 0xE400000000000000, qword_282959AF8);
  *a4 = result;
  return result;
}

uint64_t sub_2176A96A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7A0, &qword_217793E78);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_31_43();
  result = OUTLINED_FUNCTION_26(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12);
  qword_280C02188 = result;
  return result;
}

uint64_t sub_2176A9718()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7A0, &qword_217793E78);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0xD00000000000001ALL, 0x80000002177B4F20, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02150 = result;
  return result;
}

uint64_t sub_2176A9790()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7A0, &qword_217793E78);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0xD000000000000015, 0x80000002177B4F00, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02160 = result;
  return result;
}

uint64_t sub_2176A9808()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7B0, &qword_217793E88);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x64656E6E69507369, 0xE800000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02130 = result;
  return result;
}

uint64_t static Artist.catalogFilterID(for:)@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_217793B60);
  sub_2177529D8();
  v3 = sub_217751F08();

  if (v3)
  {
    *a2 = 25705;
    a2[1] = 0xE200000000000000;
  }

  else
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000021, 0x80000002177AB8F0);
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_2176A99BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t static Artist.validateParametersForLibrarySectionedRequest<A>(with:itemPredicates:itemSortDescriptors:)(uint64_t result, uint64_t a2, uint64_t a3, ValueMetadata *a4)
{
  if (a4 != &type metadata for Track && a4 != &type metadata for Song && a4 != &type metadata for Album && a4 != &type metadata for MusicVideo)
  {
    sub_2173546F8(result, a2, a3);
    swift_allocError();
    *v7 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t Artist.init(from:)(void *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EE2B0();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Artist.description.getter()
{
  sub_217752AA8();

  strcpy(v7, "Artist(id: ");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  MEMORY[0x21CEA23B0](*v0, v0[1], v1);
  MEMORY[0x21CEA23B0](0x3A656D616E202C22, 0xEA00000000002220);
  if (qword_280BE6898 != -1)
  {
    OUTLINED_FUNCTION_6_98(&qword_280BE6898);
  }

  v2 = sub_2172A3FF0();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  MEMORY[0x21CEA23B0](v2, v4);

  MEMORY[0x21CEA23B0](10530, 0xE200000000000000, v5);
  return v7[0];
}

uint64_t static Artist.typeValue.getter()
{
  if (qword_280BE2A18 != -1)
  {
    OUTLINED_FUNCTION_15_63(&qword_280BE2A18);
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE2A20);

  return sub_217751DE8();
}

uint64_t sub_2176A9D18()
{
  if (qword_280BE2A18 != -1)
  {
    OUTLINED_FUNCTION_15_63(&qword_280BE2A18);
  }

  xmmword_280BE6278 = xmmword_280BE2A20;
  xmmword_280BE6288 = xmmword_280BE2A30;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.artist.getter()
{
  if (qword_280BE6270 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE6278);

  return sub_217751DE8();
}

unint64_t sub_2176A9DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C798;
  if (!qword_27CB2C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C798);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_63(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_56()
{
  v3 = *v1;
  v0[2] = v1[1];
  v0[3] = v3;
  v0[1] = v1[2];
  return v2;
}

void *OUTLINED_FUNCTION_29_41()
{

  return memcpy((v0 + 536), (v0 + 400), 0x68uLL);
}

__n128 OUTLINED_FUNCTION_34_39()
{
  v3 = *(v0 + 32);
  *(v2 + 80) = *(v0 + 48);
  *(v2 + 96) = v3;
  result = *(v0 + 16);
  *(v2 + 112) = result;
  *(v0 + 336) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_37()
{
  sub_217283C5C(*(v0 + 288), *(v0 + 296));

  return sub_2171F06D8(v0 + 288, v1, v2);
}

void OUTLINED_FUNCTION_42_37()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_43_30()
{
  sub_217283C5C(*(v0 + 288), *(v0 + 296));

  return sub_2171F06D8(v0 + 288, v1, v2);
}

void OUTLINED_FUNCTION_54_24()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_55_24()
{

  return sub_217202078(v0 + 288, v0 + 144, v1, v2);
}

void sub_2176AA0A8(uint64_t a1)
{
  OUTLINED_FUNCTION_2_126(a1);
  v5 = v5 && v3 == v4;
  if (v5 || (sub_217753058()) && (sub_217707D80(*(v2 + 16), *(v1 + 16)))
  {
    v6 = *(v2 + 24) == *(v1 + 24) && *(v2 + 32) == *(v1 + 32);
    if (v6 || (sub_217753058() & 1) != 0)
    {

      sub_217270790();
    }
  }
}

uint64_t sub_2176AA134(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000002177B5020 == a2;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000002177B5040 == a2;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x80000002177B5060 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

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

unint64_t sub_2176AA298(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_2176AA31C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C8B0, &qword_217794630);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v20[-v9];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_2176AD4FC(v11, v12, v13);
  OUTLINED_FUNCTION_105(&type metadata for Storefront.Attributes.CodingKeys, v15, v14);
  v25 = 0;
  OUTLINED_FUNCTION_44_2();
  v16 = sub_217752F48();
  if (!v2)
  {
    v24 = *(v3 + 16);
    v23 = 1;
    sub_2176AD5A4(v16, v17, v18);
    OUTLINED_FUNCTION_44_2();
    sub_217752F88();
    v22 = 2;
    OUTLINED_FUNCTION_44_2();
    sub_217752F48();
    v21 = *(v3 + 40);
    v20[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    sub_2176AD5F8(&qword_280BE2328, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_44_2();
    sub_217752F88();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_2176AA508(uint64_t a1)
{
  sub_217751FF8();
  sub_217751FF8();

  sub_217751FF8();

  sub_217281100();
}

uint64_t sub_2176AA5C8()
{
  OUTLINED_FUNCTION_238();
  sub_2176AA508(v1);
  return sub_217753238();
}

void sub_2176AA600(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C8A8, &unk_217794620);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2176AD4FC(v6, v7, v8);
  sub_2177532C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    OUTLINED_FUNCTION_4_7();
    v9 = sub_217752E68();
    v11 = v10;
    sub_2176AD550(v9, v10, v12);
    OUTLINED_FUNCTION_4_7();
    sub_217752EA8();
    OUTLINED_FUNCTION_4_7();
    v16 = sub_217752E68();
    v17 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    sub_2176AD5F8(&qword_280BE2318, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_4_7();
    sub_217752EA8();
    v14 = OUTLINED_FUNCTION_1_3();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v19;
    *(a2 + 24) = v16;
    *(a2 + 32) = v17;
    *(a2 + 40) = v18;
  }
}

void sub_2176AA8A4(uint64_t a1)
{
  OUTLINED_FUNCTION_2_126(a1);
  v4 = v4 && v2 == v3;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    sub_2176AA0A8(v1 + 16);
  }
}

uint64_t sub_2176AA900(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C888, &qword_217794408);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v21[-v9];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_2176AD100(v11, v12, v13);
  OUTLINED_FUNCTION_105(&type metadata for Storefront.CodingKeys, v15, v14);
  LOBYTE(v22) = 0;
  v16 = sub_217752F48();
  if (!v2)
  {
    v19 = v3[2];
    v22 = v3[1];
    v23 = v19;
    v24 = v3[3];
    v21[15] = 1;
    sub_2176AD210(v16, v17, v18);
    sub_217752F88();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_2176AAA94()
{
  OUTLINED_FUNCTION_238();
  sub_217751FF8();
  sub_2176AA508(v1);
  return sub_217753238();
}

void sub_2176AAAD8(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C880, &qword_217794400);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2176AD100(v6, v7, v8);
  sub_2177532C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v25[0]) = 0;
    v9 = sub_217752E68();
    v11 = v10;
    v34 = 1;
    sub_2176AD154(v9, v10, v12);
    sub_217752EA8();
    v13 = OUTLINED_FUNCTION_1_37();
    v14(v13);
    v15 = v30;
    v16 = v31;
    v17 = v32;
    v18 = v33;
    *&v21 = v9;
    *(&v21 + 1) = v11;
    v22 = v30;
    LOBYTE(v23) = v31;
    *(&v23 + 1) = v32;
    v24 = v33;
    sub_2176AD1A8(&v21, v25);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v25[0] = v9;
    v25[1] = v11;
    v26 = v15;
    v27 = v16;
    v28 = v17;
    v29 = v18;
    sub_2176AD1E0(v25);
    v19 = v22;
    *a2 = v21;
    a2[1] = v19;
    v20 = v24;
    a2[2] = v23;
    a2[3] = v20;
  }
}

unint64_t sub_2176AAD2C(uint64_t a1)
{
  v1 = sub_217752DC8();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2176AAD78(char a1)
{
  if (!a1)
  {
    return 0x6465776F6C6C61;
  }

  if (a1 == 1)
  {
    return 0x6E692D74706FLL;
  }

  return 0x74696269686F7270;
}

uint64_t sub_2176AADF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176AA134(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2176AAE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176AD4FC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176AAE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176AD4FC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

double sub_2176AAE90@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2176AA600(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_2176AAEF8(uint64_t a1)
{
  sub_2177531E8();
  sub_2176AA508(v2);
  return sub_217753238();
}

uint64_t sub_2176AAF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176AD100(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176AAF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176AD100(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

double sub_2176AAFC4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2176AAAD8(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_2176AB02C(uint64_t a1)
{
  sub_2177531E8();
  sub_2176AAA64(v2);
  return sub_217753238();
}

unint64_t sub_2176AB068@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2176AAD2C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2176AB098@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2176AAD78(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2176AB1A8(char a1)
{
  if (!a1)
  {
    return 0x6465776F6C6C612ELL;
  }

  if (a1 == 1)
  {
    return 0x6E4974706F2ELL;
  }

  return 0x696269686F72702ELL;
}

uint64_t sub_2176AB20C(uint64_t a1, unint64_t a2)
{
  v24 = 45;
  v25 = 0xE100000000000000;
  v23 = &v24;
  sub_217751DE8();
  sub_2176B5914(0x7FFFFFFFFFFFFFFFLL, 1, sub_2172CB708, v22, a1, a2, v4);
  if (v5[2] < 2uLL)
  {

    v24 = 95;
    v25 = 0xE100000000000000;
    MEMORY[0x28223BE20](v14);
    v21[2] = &v24;
    sub_217751DE8();
    sub_2176B5914(0x7FFFFFFFFFFFFFFFLL, 1, sub_2172CB708, v21, a1, a2, v15);
    if (v16[2] < 2uLL)
    {

      sub_217751DE8();
      return a1;
    }

    v17 = v16[4];
    v18 = v16[5];
    v19 = v16[6];
    v9 = v16[7];
    sub_217751DE8();

    v11 = v17;
    v12 = v18;
    v13 = v19;
  }

  else
  {
    v6 = v5[4];
    v7 = v5[5];
    v8 = v5[6];
    v9 = v5[7];
    sub_217751DE8();

    v11 = v6;
    v12 = v7;
    v13 = v8;
  }

  a1 = MEMORY[0x21CEA2320](v11, v12, v13, v9, v10);

  return a1;
}

void *sub_2176AB3AC()
{
  result = sub_217751DC8();
  off_280BE5410 = result;
  return result;
}

uint64_t sub_2176AB3E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (qword_280BE73E0 != -1)
  {
    swift_once();
  }

  v7 = sub_217751AF8();
  __swift_project_value_buffer(v7, qword_280C023A8);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v8 = sub_217751AD8();
  v9 = sub_217752828();

  v63 = a4;
  if (os_log_type_enabled(v8, v9))
  {
    v61 = v9;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v87 = v11;
    *v10 = 136446210;
    v12 = sub_2174F1264(a1, a2, a3, a4);
    v14 = sub_21729C0E8(v12, v13, &v87);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2171EE000, v8, v61, "The localization info for the current bundle is: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_28_4();
  }

  v68 = MEMORY[0x277D84F90];
  v15 = sub_217751DE8();
  sub_2175437A8(v15);
  sub_2176ABAAC(a1, 0, &v69);
  v17 = v70;
  if (v70)
  {
    v18 = v74;
    v19 = v72;
    v20 = v73;
    v21 = v71;
    v22 = v69;

    v23 = (v18 >> 8) & 1;
    v66 = v22;
    v24 = v22;
    v25 = v17;
    v26 = v21;
    v62 = v19;
    v27 = v19;
LABEL_7:
    v28 = v20;
    v29 = v18;
    goto LABEL_34;
  }

  if (a4)
  {
    v30 = v68;
    v87 = a3;
    v88 = a4;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    sub_217751DE8();
    if (sub_2171F8728())
    {
    }

    else
    {
      sub_217751DE8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172AFF2C(0, *(v68 + 16) + 1, 1, v68);
        v30 = v56;
      }

      v33 = *(v30 + 16);
      v32 = *(v30 + 24);
      v58 = a2;
      if (v33 >= v32 >> 1)
      {
        sub_2172AFF2C(v32 > 1, v33 + 1, 1, v30);
        v30 = v57;
      }

      *(v30 + 16) = v33 + 1;
      v34 = v30 + 16 * v33;
      *(v34 + 32) = a3;
      *(v34 + 40) = v63;
      v68 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27780, &unk_21775A2F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2177586E0;
      *(inited + 32) = a3;
      *(inited + 40) = v63;
      sub_2176ABAAC(inited, 1, v75);
      v17 = v75[1];
      v36 = v77;
      v64 = v76;
      v66 = v75[0];
      v59 = v78;
      v18 = v79;
      swift_setDeallocating();
      isUniquelyReferenced_nonNull_native = sub_2171FD064();
      if (v17)
      {

        v23 = (v18 >> 8) & 1;
        v24 = v66;
        v25 = v17;
        v26 = v64;
        v62 = v36;
        v27 = v36;
        v20 = v59;
        goto LABEL_7;
      }

      a2 = v58;
    }

    v31 = *(a2 + 16);
    if (v31)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v31 = *(a2 + 16);
    if (v31)
    {
LABEL_21:
      v37 = (a2 + 40);
      v38 = MEMORY[0x277D84F90];
      do
      {
        v40 = *(v37 - 1);
        v39 = *v37;
        v87 = v40;
        v88 = v39;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        sub_217751DE8();
        if (sub_2171F8728())
        {
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2172AFF2C(0, *(v38 + 16) + 1, 1, v38);
            v38 = isUniquelyReferenced_nonNull_native;
          }

          v42 = *(v38 + 16);
          v41 = *(v38 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_2172AFF2C(v41 > 1, v42 + 1, 1, v38);
            v38 = isUniquelyReferenced_nonNull_native;
          }

          *(v38 + 16) = v42 + 1;
          v43 = v38 + 16 * v42;
          *(v43 + 32) = v40;
          *(v43 + 40) = v39;
        }

        v37 += 2;
        --v31;
      }

      while (v31);
      goto LABEL_32;
    }
  }

  v38 = MEMORY[0x277D84F90];
LABEL_32:
  v44 = sub_217751DE8();
  sub_2175437A8(v44);

  sub_2176ABAAC(v38, 2, &v80);
  v45 = v80;
  v17 = v81;
  v62 = v83;
  LOBYTE(v18) = v85;

  v25 = v81;
  if (!v81)
  {
    return 0;
  }

  v66 = v45;
  v27 = v83;
  v28 = v84;
  v26 = v82;
  v24 = v80;
  LOBYTE(v23) = v86;
  v29 = v85;
LABEL_34:
  v87 = v24;
  v88 = v25;
  v89 = v26;
  v90 = v27;
  v91 = v28;
  v92 = v29 & 1;
  v93 = v23 & 1;
  sub_217751DE8();
  sub_217751DE8();
  v46 = sub_217751AD8();
  v47 = sub_217752828();
  if (os_log_type_enabled(v46, v47))
  {
    v60 = v17;
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v67 = v49;
    *v48 = 136446210;
    v50 = sub_2176AC990();
    v52 = v51;

    v53 = sub_21729C0E8(v50, v52, &v67);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_2171EE000, v46, v47, "Preferred language tag candidate: %{public}s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    OUTLINED_FUNCTION_28_4();
    v17 = v60;
    OUTLINED_FUNCTION_28_4();
  }

  else
  {
  }

  if (v18)
  {
    v54 = 0;
  }

  else
  {
    sub_217751DE8();
    v54 = v62;
  }

  sub_2176ACC80(v66, v17);
  return v54;
}

void sub_2176ABAAC(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  LOBYTE(v5) = a2;
  v132 = 0;
  v8 = v4[3];
  v125 = v4[2];
  v113 = v4[7];
  if (qword_280BE5408 != -1)
  {
LABEL_116:
    swift_once();
  }

  v9 = *(a1 + 16);
  v112 = v9;
  if (!v9)
  {
    v22 = 0;
    v100 = 0;
    v97 = 0;
    v99 = 0;
    v96 = 0;
    v98 = 0;
    goto LABEL_114;
  }

  v107 = a3;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v119 = 0;
  v13 = 0;
  a3 = 0;
  v14 = off_280BE5410;
  v118 = a1 + 32;
  v5 = v5;
  v110 = (v113 + 40);
  a1 = v112;
  v115 = off_280BE5410;
  v111 = v5;
  do
  {
    if (v13 == a1)
    {
      __break(1u);
      goto LABEL_116;
    }

    v15 = (v118 + 16 * v13);
    v16 = v15[1];
    if (!((v12 == 0) | v10 & 1))
    {
      sub_217751DE8();
      goto LABEL_14;
    }

    v123 = *v15;
    v124 = v16;
    v17 = v123 == v125 && v16 == v8;
    if (v17 || (sub_217753058() & 1) != 0)
    {
      swift_bridgeObjectRetain_n();
      sub_217751DE8();
      v18 = v124;
      sub_2176ACC80(v11, v12);
      v132 = 0;
      v119 = 1;
      if (v18)
      {
        goto LABEL_12;
      }

      v10 = 0;
      v12 = 0;
      v121 = v8;
      v122 = v125;
      v120 = v5;
      v11 = v123;
    }

    else
    {
      v19 = sub_217751DE8();
      if (v12)
      {
        if ((v10 & 1) == 0)
        {
          goto LABEL_14;
        }

        v10 = 1;
      }
    }

    if (v14[2] && (v19 = sub_21763246C(v123, v124), (v20 & 1) != 0) && ((v23 = (v14[7] + 16 * v19), *v23 == v125) ? (v24 = v23[1] == v8) : (v24 = 0), v24 || (v19 = sub_217753058(), (v19 & 1) != 0)))
    {
      v25 = v124;
      sub_217751DE8();
      sub_217751DE8();
      v18 = v25;
      sub_2176ACC80(v11, v12);
      v132 = 0;
      v119 = 1;
      if (v25)
      {
LABEL_12:
        v121 = v8;
        v122 = v125;
        v120 = v5;
        v12 = v18;
        v11 = v123;
        goto LABEL_14;
      }

      v117 = a3;
      v120 = v5;
      v121 = v8;
      v26 = v125;
      v27 = v123;
      v11 = v123;
    }

    else
    {
      if (v12)
      {
        v28 = v12;
        v29 = v124;
        if ((v10 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_43;
      }

      v117 = a3;
      v26 = v122;
      v27 = v123;
      v18 = v124;
    }

    v30 = sub_2176AB20C(v27, v18);
    v32 = v31;
    if (v30 == sub_2176AB20C(v125, v8) && v32 == v33)
    {

LABEL_42:
      v36 = v124;
      sub_217751DE8();
      sub_217751DE8();
      v29 = v36;
      sub_2176ACC80(v11, 0);
      v119 = 1;
      v132 = 1;
      v121 = v8;
      v122 = v125;
      v120 = v5;
      v28 = v36;
      v11 = v123;
      a1 = v112;
      a3 = v117;
      goto LABEL_43;
    }

    v35 = sub_217753058();

    if (v35)
    {
      goto LABEL_42;
    }

    v122 = v26;
    v28 = 0;
    a1 = v112;
    a3 = v117;
    v29 = v124;
LABEL_43:
    v37 = *(v113 + 16);
    if (!v37)
    {
      goto LABEL_59;
    }

    v38 = v28;
    v39 = a3;
    v40 = v110;
    v21 = v125;
    while (1)
    {
      v42 = *(v40 - 1);
      v41 = *v40;
      if (v42 == v21 && v41 == v8)
      {
        goto LABEL_55;
      }

      v19 = sub_217753058();
      v21 = v125;
      if (v19)
      {
        goto LABEL_55;
      }

      if (v123 == v42 && v124 == v41)
      {
        break;
      }

      v19 = sub_217753058();
      v21 = v125;
      if (v19)
      {
        goto LABEL_58;
      }

LABEL_55:
      v40 += 2;
      if (!--v37)
      {
        a1 = v112;
        a3 = v39;
        v5 = v111;
        v29 = v124;
        v28 = v38;
        goto LABEL_59;
      }
    }

    v42 = v123;
LABEL_58:
    v45 = v124;
    sub_217751DE8();
    sub_217751DE8();
    sub_2176ACC80(v11, v38);
    v119 = 0;
    v11 = v123;
    v132 = 0;
    v28 = v45;
    v120 = v111;
    v121 = v41;
    v122 = v42;
    v29 = v45;
    a1 = v112;
    a3 = v39;
    v5 = v111;
LABEL_59:
    v12 = v28;
    if (v28 && v132 != 1)
    {
      goto LABEL_14;
    }

    if (v14[2] && (v19 = sub_21763246C(v123, v29), v29 = v124, (v20 & 1) != 0))
    {
      v46 = (v14[7] + 16 * v19);
      v47 = v46[1];
      v114 = *v46;
      v116 = v47;
      sub_217751DE8();
    }

    else
    {
      v130 = v123;
      v131 = v29;
      v128 = 95;
      v129 = 0xE100000000000000;
      v126 = 45;
      v127 = 0xE100000000000000;
      v105 = sub_21733A5C8(v19, v20, v21);
      v106 = v105;
      v104 = v105;
      v103 = MEMORY[0x277D837D0];
      v48 = sub_217752998();
      v29 = v124;
      v114 = v48;
      v116 = v49;
    }

    v117 = a3;
    v50 = *(v113 + 16);
    v51 = v125;
    if (!v50)
    {
LABEL_83:

      v54 = v122;
      v67 = v123;
      v5 = v111;
      if (!v12)
      {
        goto LABEL_87;
      }

LABEL_84:
      v122 = v54;
      a1 = v112;
      a3 = v117;
LABEL_14:

      v22 = v11;
      goto LABEL_15;
    }

    v52 = v110;
    while (2)
    {
      v54 = *(v52 - 1);
      v53 = *v52;
      v55 = v54 == v51 && v53 == v8;
      if (v55 || (v56 = sub_217753058(), v51 = v125, (v56 & 1) != 0))
      {
LABEL_82:
        v52 += 2;
        if (!--v50)
        {
          goto LABEL_83;
        }

        continue;
      }

      break;
    }

    v57 = v14[2];
    v58 = sub_217751DE8();
    if (v57 && (v58 = sub_21763246C(v54, v53), (v59 & 1) != 0))
    {
      v61 = (v14[7] + 16 * v58);
      v63 = *v61;
      v62 = v61[1];
      sub_217751DE8();
    }

    else
    {
      v130 = v54;
      v131 = v53;
      v128 = 95;
      v129 = 0xE100000000000000;
      v126 = 45;
      v127 = 0xE100000000000000;
      v105 = sub_21733A5C8(v58, v59, v60);
      v106 = v105;
      v104 = v105;
      v103 = MEMORY[0x277D837D0];
      v63 = sub_217752998();
      v62 = v64;
    }

    if (v114 != v63 || v116 != v62)
    {
      v66 = sub_217753058();

      if (v66)
      {
        goto LABEL_86;
      }

      v14 = v115;
      v29 = v124;
      v51 = v125;
      goto LABEL_82;
    }

LABEL_86:

    v68 = v124;
    sub_217751DE8();
    v29 = v68;
    sub_2176ACC80(v11, v12);
    v119 = 0;
    v132 = 0;
    v67 = v123;
    v11 = v123;
    v12 = v68;
    v5 = v111;
    v120 = v111;
    v121 = v53;
    v14 = v115;
    if (v68)
    {
      goto LABEL_84;
    }

LABEL_87:
    v108 = v11;
    v69 = sub_2176AB20C(v67, v29);
    v116 = v70;
    v71 = *(v113 + 16);
    if (!v71)
    {

      v12 = 0;
      v22 = v108;
      v122 = v54;
      goto LABEL_111;
    }

    v72 = v110;
    v73 = v125;
    v114 = v69;
    while (2)
    {
      v75 = *(v72 - 1);
      v74 = *v72;
      if (v75 == v73 && v74 == v8)
      {
        goto LABEL_106;
      }

      v77 = sub_217753058();
      if (v77)
      {
        goto LABEL_105;
      }

      v130 = 45;
      v131 = 0xE100000000000000;
      MEMORY[0x28223BE20](v77);
      v105 = &v130;
      swift_bridgeObjectRetain_n();
      v78 = v75;
      v79 = v117;
      sub_2176B5914(0x7FFFFFFFFFFFFFFFLL, 1, sub_2171F87CC, &v103, v78, v74, v80);
      v82 = v81;
      v83 = v81[2];
      v122 = v78;
      if (v83 >= 2)
      {
        v117 = v79;
        goto LABEL_97;
      }

      v130 = 95;
      v131 = 0xE100000000000000;
      MEMORY[0x28223BE20](v84);
      v105 = &v130;
      sub_217751DE8();
      sub_2176B5914(0x7FFFFFFFFFFFFFFFLL, 1, sub_2172CB708, &v103, v78, v74, v85);
      v82 = v86;
      v117 = v79;
      if (v86[2] <= 1uLL)
      {

        sub_217751DE8();
        v91 = v78;
        v93 = v74;
      }

      else
      {
LABEL_97:
        v87 = v82[4];
        v88 = v82[5];
        v89 = v82[7];
        v109 = v82[6];
        sub_217751DE8();

        v91 = MEMORY[0x21CEA2320](v87, v88, v109, v89, v90);
        v93 = v92;
      }

      if (v114 != v91 || v116 != v93)
      {
        v95 = sub_217753058();

        if (v95)
        {
          goto LABEL_110;
        }

        v14 = v115;
LABEL_105:
        v73 = v125;
LABEL_106:
        v72 += 2;
        if (!--v71)
        {

          v12 = 0;
          v22 = v108;
          v122 = v54;
          a1 = v112;
          a3 = v117;
          v5 = v111;
          goto LABEL_15;
        }

        continue;
      }

      break;
    }

LABEL_110:
    v14 = v115;

    sub_2176ACC80(v108, 0);
    v119 = 0;
    v132 = 1;
    v22 = v123;
    v12 = v124;
    v5 = v111;
    v120 = v111;
    v121 = v74;
LABEL_111:
    a1 = v112;
    a3 = v117;
LABEL_15:
    if (++v13 == a1)
    {
      break;
    }

    v10 = v132 & 1;
    v11 = v22;
  }

  while (((v12 != 0) & (v132 ^ 1)) == 0);
  LOWORD(v9) = v132;
  a3 = v107;
  v97 = v120;
  v96 = v121;
  v98 = v119;
  v99 = v122;
  v100 = v12;
LABEL_114:
  v101 = v98 | (v9 << 8);
  v102 = v22;
  sub_2176ACCC4(v22, v100);
  sub_2176ACC80(v102, v100);
  *a3 = v102;
  *(a3 + 8) = v100;
  *(a3 + 16) = v97;
  *(a3 + 24) = v99;
  *(a3 + 32) = v96;
  *(a3 + 40) = v101;
}