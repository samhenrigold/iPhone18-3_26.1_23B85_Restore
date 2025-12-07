uint64_t sub_23141BC70(uint64_t a1)
{
  v2 = sub_23141F168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23141BCAC(uint64_t a1)
{
  v2 = sub_23141F168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23141BD08@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_41_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23141BD34(uint64_t a1)
{
  v2 = sub_23141F210();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23141BD70(uint64_t a1)
{
  v2 = sub_23141F210();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23141BDAC(uint64_t a1)
{
  v2 = sub_23141F1BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23141BDE8(uint64_t a1)
{
  v2 = sub_23141F1BC();

  return MEMORY[0x2821FE720](a1, v2);
}

void UpdateStrategy.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_64();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D768, &qword_231479B08);
  OUTLINED_FUNCTION_4();
  v47 = v27;
  v48 = v26;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v28);
  v46 = &v44 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D770, &qword_231479B10);
  OUTLINED_FUNCTION_4();
  v44 = v31;
  v45 = v30;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v32);
  v34 = &v44 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D778, &qword_231479B18);
  OUTLINED_FUNCTION_4();
  v37 = v36;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v38);
  v40 = &v44 - v39;
  v41 = *v23;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_23141F168();
  sub_231478968();
  v42 = (v37 + 8);
  if (v41)
  {
    OUTLINED_FUNCTION_122();
    sub_23141F1BC();
    v43 = v46;
    sub_2314786F8();
    (*(v47 + 8))(v43, v48);
  }

  else
  {
    sub_23141F210();
    sub_2314786F8();
    (*(v44 + 8))(v34, v45);
  }

  (*v42)(v40, v35);
  OUTLINED_FUNCTION_62();
}

uint64_t UpdateStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_2314788E8();
  MEMORY[0x23192E9B0](v1);
  return sub_231478918();
}

void UpdateStrategy.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_64();
  a22 = v25;
  a23 = v26;
  v71 = v23;
  v28 = v27;
  v68 = v29;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D798, &qword_231479B20);
  OUTLINED_FUNCTION_4();
  v67 = v30;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v31);
  v33 = v63 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D7A0, &qword_231479B28);
  OUTLINED_FUNCTION_4();
  v66 = v35;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_141();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D7A8, &unk_231479B30);
  OUTLINED_FUNCTION_4();
  v69 = v38;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v39);
  v41 = v63 - v40;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_23141F168();
  v42 = v71;
  sub_231478948();
  if (v42)
  {
    goto LABEL_10;
  }

  v64 = v34;
  v65 = v24;
  v71 = v28;
  v43 = v70;
  v44 = sub_2314786D8();
  v45 = sub_2313F8D68(v44, 0);
  if (v47 == v48 >> 1)
  {
    v70 = v45;
LABEL_9:
    v57 = sub_231478548();
    swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D7B0, &qword_23147A870);
    *v59 = &type metadata for UpdateStrategy;
    sub_231478658();
    sub_231478538();
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D84160], v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v69 + 8))(v41, v37);
    v28 = v71;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v28);
LABEL_11:
    OUTLINED_FUNCTION_62();
    return;
  }

  v63[1] = 0;
  if (v47 < (v48 >> 1))
  {
    v49 = *(v46 + v47);
    v50 = sub_2313F8DB0(v47 + 1, v48 >> 1, v45, v46, v47, v48);
    v52 = v51;
    v54 = v53;
    swift_unknownObjectRelease();
    if (v52 == v54 >> 1)
    {
      if (v49)
      {
        OUTLINED_FUNCTION_122();
        sub_23141F1BC();
        v55 = v33;
        OUTLINED_FUNCTION_117(&type metadata for UpdateStrategy.OverwriteCodingKeys, &a13);
        v56 = v68;
        swift_unknownObjectRelease();
        (*(v67 + 8))(v55, v43);
      }

      else
      {
        a12 = 0;
        sub_23141F210();
        v60 = v65;
        OUTLINED_FUNCTION_117(&type metadata for UpdateStrategy.IgnoreCodingKeys, &a12);
        v56 = v68;
        swift_unknownObjectRelease();
        (*(v66 + 8))(v60, v64);
      }

      v61 = OUTLINED_FUNCTION_90();
      v62(v61);
      *v56 = v49;
      __swift_destroy_boxed_opaque_existential_0(v71);
      goto LABEL_11;
    }

    v70 = v50;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_23141C590()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_92();
  type metadata accessor for QueryValue(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_137();
  switch(v3)
  {
    case 6:
      v9 = *(v5 + 16);
      v10 = MEMORY[0x277D84F90];
      if (v9)
      {
        v17 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_86();
        v10 = v17;
        v11 = (v5 + 32);
        do
        {
          v12 = *v11++;
          *v1 = v12;
          OUTLINED_FUNCTION_144();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_136();
          if (v13)
          {
            OUTLINED_FUNCTION_95();
            sub_2313FC060(v14, v15, v16);
            v10 = v17;
          }

          *(v10 + 16) = v5;
          OUTLINED_FUNCTION_59();
          OUTLINED_FUNCTION_0_5();
          sub_2313F31EC();
          --v9;
        }

        while (v9);
      }

      *v0 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
      OUTLINED_FUNCTION_35();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_16();
      break;
    default:
      OUTLINED_FUNCTION_26_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_16();

      swift_storeEnumTagMultiPayload();
      break;
  }
}

void sub_23141C81C()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_92();
  type metadata accessor for QueryValue(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_137();
  switch(v3)
  {
    case 6:
      v9 = *(v5 + 16);
      v10 = MEMORY[0x277D84F90];
      if (v9)
      {
        v17 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_86();
        v10 = v17;
        v11 = (v5 + 32);
        do
        {
          v12 = *v11++;
          *v1 = v12;
          OUTLINED_FUNCTION_144();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_136();
          if (v13)
          {
            OUTLINED_FUNCTION_95();
            sub_2313FC060(v14, v15, v16);
            v10 = v17;
          }

          *(v10 + 16) = v5;
          OUTLINED_FUNCTION_59();
          OUTLINED_FUNCTION_0_5();
          sub_2313F31EC();
          --v9;
        }

        while (v9);
      }

      *v0 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
      OUTLINED_FUNCTION_35();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_16();
      break;
    default:
      OUTLINED_FUNCTION_33_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_16();

      swift_storeEnumTagMultiPayload();
      break;
  }
}

uint64_t sub_23141CAA8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v8 = a1;
  v9 = a2 & 1;
  sub_2314783C8();
  swift_beginAccess();
  if (*(a4 + 16) == 1)
  {
    swift_beginAccess();
    *(a4 + 16) = 0;
    a5(&v8);
  }

  return sub_2314783D8();
}

void sub_23141CB80()
{
  OUTLINED_FUNCTION_54_0();
  if (v4)
  {
    OUTLINED_FUNCTION_53_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_111();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_52_0();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_119(v2, v5, &qword_27DD4D5D0, &unk_231479880);
  v8 = OUTLINED_FUNCTION_94();
  type metadata accessor for Entity(v8);
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_59();
  if (v1)
  {
    OUTLINED_FUNCTION_84(v9, type metadata accessor for Entity);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_50_0();
  }
}

void sub_23141CC58()
{
  OUTLINED_FUNCTION_54();
  if (v4)
  {
    OUTLINED_FUNCTION_13_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_37();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  OUTLINED_FUNCTION_43();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D610, &qword_2314798D0);
    v7 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_98_0(v7);
    OUTLINED_FUNCTION_101(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_143();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_23141CD28()
{
  OUTLINED_FUNCTION_54();
  if (v4)
  {
    OUTLINED_FUNCTION_13_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_37();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  OUTLINED_FUNCTION_51_0();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D870, &qword_23147A1F8);
    v7 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_98_0(v7);
    OUTLINED_FUNCTION_75(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_108();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_23141CDF0()
{
  OUTLINED_FUNCTION_54();
  if (v4)
  {
    OUTLINED_FUNCTION_13_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_37();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  OUTLINED_FUNCTION_43();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D670, &qword_231479A68);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_143();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_23141CEC0()
{
  OUTLINED_FUNCTION_54_0();
  if (v4)
  {
    OUTLINED_FUNCTION_53_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_111();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_52_0();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_119(v2, v5, &qword_27DD4D6A0, &qword_2314795D0);
  v8 = OUTLINED_FUNCTION_94();
  type metadata accessor for QueryValue(v8);
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_59();
  if (v1)
  {
    OUTLINED_FUNCTION_84(v9, type metadata accessor for QueryValue);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_50_0();
  }
}

void sub_23141CF98()
{
  OUTLINED_FUNCTION_54_0();
  if (v4)
  {
    OUTLINED_FUNCTION_53_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_111();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_52_0();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_119(v2, v5, &qword_27DD4D598, &qword_231479840);
  OUTLINED_FUNCTION_94();
  sub_2314770C8();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_59();
  if (v1)
  {
    OUTLINED_FUNCTION_84(v8, MEMORY[0x277D0B720]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_50_0();
  }
}

void sub_23141D070()
{
  OUTLINED_FUNCTION_54();
  if (v4)
  {
    OUTLINED_FUNCTION_13_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_37();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  OUTLINED_FUNCTION_43();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D820, &qword_23147A1D8);
    v7 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_98_0(v7);
    OUTLINED_FUNCTION_101(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || v0 + 32 + 8 * v2 <= (v7 + 32))
    {
      memmove((v7 + 32), (v0 + 32), 8 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D828, &qword_23147A1E0);
    swift_arrayInitWithCopy();
  }
}

void sub_23141D16C()
{
  OUTLINED_FUNCTION_54();
  if (v4)
  {
    OUTLINED_FUNCTION_13_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_37();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  OUTLINED_FUNCTION_51_0();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D8E0, &unk_2314798A0);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_98_0(v7);
    v7[2] = v3;
    v7[3] = 2 * (v8 / 40);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_108();
  if (v1)
  {
    if (v7 != v0 || &v10[40 * v3] <= v9)
    {
      memmove(v9, v10, 40 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_23141D258()
{
  OUTLINED_FUNCTION_54();
  if (v4)
  {
    OUTLINED_FUNCTION_13_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_37();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  OUTLINED_FUNCTION_43();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D8F0, &qword_23147A248);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_98_0(v7);
    v7[2] = v2;
    v7[3] = 2 * (v8 / 48);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_143();
  if (v1)
  {
    if (v7 != v0 || &v10[48 * v2] <= v9)
    {
      memmove(v9, v10, 48 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_23141D348()
{
  OUTLINED_FUNCTION_54();
  if (v4)
  {
    OUTLINED_FUNCTION_13_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_37();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  OUTLINED_FUNCTION_51_0();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D860, &qword_231479838);
    v7 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_98_0(v7);
    OUTLINED_FUNCTION_75(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_108();
  if (v1)
  {
    if (v7 != v0 || &v10[2 * v3] <= v9)
    {
      memmove(v9, v10, 2 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 2 * v3);
  }
}

void sub_23141D410()
{
  OUTLINED_FUNCTION_54();
  if (v4)
  {
    OUTLINED_FUNCTION_13_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_37();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  OUTLINED_FUNCTION_51_0();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5B0, &qword_231479860);
    v7 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_98_0(v7);
    OUTLINED_FUNCTION_75(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_108();
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_23141D4D8()
{
  OUTLINED_FUNCTION_54_0();
  if (v4)
  {
    OUTLINED_FUNCTION_53_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_111();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_52_0();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_119(v2, v5, &unk_27DD4D850, &qword_23147A1E8);
  v8 = OUTLINED_FUNCTION_94();
  type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript(v8);
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_59();
  if (v1)
  {
    OUTLINED_FUNCTION_84(v9, type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_50_0();
  }
}

void sub_23141D5B0()
{
  OUTLINED_FUNCTION_54_0();
  if (v4)
  {
    OUTLINED_FUNCTION_53_0();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_111();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_52_0();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_119(v2, v5, &unk_27DD4D840, &qword_231479848);
  v8 = OUTLINED_FUNCTION_94();
  type metadata accessor for InteractionWithParameters(v8);
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_59();
  if (v1)
  {
    OUTLINED_FUNCTION_84(v9, type metadata accessor for InteractionWithParameters);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_50_0();
  }
}

void sub_23141D688()
{
  OUTLINED_FUNCTION_54();
  if (v4)
  {
    OUTLINED_FUNCTION_13_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_37();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_3();
    }
  }

  OUTLINED_FUNCTION_51_0();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5A0, &qword_231479850);
    v7 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_98_0(v7);
    OUTLINED_FUNCTION_75(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_108();
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void *sub_23141D774(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_149(a1, a2, a3, a4);
  v8 = OUTLINED_FUNCTION_94();
  v9 = a5(v8);
  OUTLINED_FUNCTION_29(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v11)
  {
    if ((result - v13) != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_23141D85C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_3(a3, result);
  }

  return result;
}

char *sub_23141D894(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_3(a3, result);
  }

  return result;
}

char *sub_23141D8B8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_3(a3, result);
  }

  return result;
}

char *sub_23141D8E0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_3(a3, result);
  }

  return result;
}

char *sub_23141D948(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_3(a3, result);
  }

  return result;
}

char *sub_23141D984(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[2 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_3(a3, result);
  }

  return result;
}

char *sub_23141D9A4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_3(a3, result);
  }

  return result;
}

void sub_23141D9F4(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_73();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_3(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_39_0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_39_0();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_23141DAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Interaction(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_23141DB14(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v100 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = *a3;
        v12 = (*a3 + 40 * v10);
        v13 = *v12;
        v14 = v12[1];
        v15 = (*a3 + 40 * v9);
        if (v13 == *v15 && v14 == v15[1])
        {
          v17 = 0;
        }

        else
        {
          v17 = sub_2314787C8();
        }

        v10 = v9 + 2;
        v18 = (v11 + 40 * v9 + 88);
        while (v10 < v6)
        {
          if (*(v18 - 1) == *(v18 - 6) && *v18 == *(v18 - 5))
          {
            if (v17)
            {
              goto LABEL_21;
            }
          }

          else if ((v17 ^ sub_2314787C8()))
          {
            break;
          }

          ++v10;
          v18 += 5;
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v10)
        {
          v20 = 40 * v10 - 8;
          v21 = 40 * v9 + 32;
          v22 = v10;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v21);
              v26 = (v24 + v20);
              v27 = *(v25 - 4);
              v28 = *(v25 - 3);
              v29 = *v25;
              v30 = *(v25 - 1);
              v31 = *v26;
              v32 = *(v26 - 1);
              *(v25 - 2) = *(v26 - 2);
              *(v25 - 1) = v32;
              *v25 = v31;
              *(v26 - 4) = v27;
              *(v26 - 3) = v28;
              *(v26 - 1) = v30;
              *v26 = v29;
            }

            ++v23;
            v20 -= 40;
            v21 += 40;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v33 = a3[1];
      if (v10 < v33)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_121;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          __src = v5;
          if (v9 + a4 >= v33)
          {
            v34 = a3[1];
          }

          else
          {
            v34 = v9 + a4;
          }

          if (v34 < v9)
          {
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
            return;
          }

          if (v10 != v34)
          {
            v35 = *a3;
            v36 = *a3 + 40 * v10 - 40;
            v96 = v9;
            v37 = v9 - v10;
            do
            {
              v38 = v37;
              v39 = v36;
              do
              {
                v40 = v39 + 40;
                v41 = *(v39 + 40) == *v39 && *(v39 + 48) == *(v39 + 8);
                if (v41 || (sub_2314787C8() & 1) == 0)
                {
                  break;
                }

                if (!v35)
                {
                  goto LABEL_125;
                }

                v43 = *(v39 + 40);
                v42 = *(v39 + 48);
                v44 = *(v39 + 72);
                v45 = *(v39 + 56);
                v46 = *(v39 + 16);
                v47 = *(v39 + 32);
                *v40 = *v39;
                *(v39 + 56) = v46;
                *v39 = v43;
                *(v39 + 8) = v42;
                *(v39 + 16) = v45;
                *(v39 + 32) = v44;
                v39 -= 40;
                *(v40 + 32) = v47;
              }

              while (!__CFADD__(v38++, 1));
              ++v10;
              v36 += 40;
              --v37;
            }

            while (v10 != v34);
            v10 = v34;
            v9 = v96;
          }

          v5 = __src;
        }
      }

      if (v10 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_0();
        sub_23141CD28();
        v8 = v92;
      }

      v49 = v8[2];
      v50 = v49 + 1;
      if (v49 >= v8[3] >> 1)
      {
        sub_23141CD28();
        v8 = v93;
      }

      v8[2] = v50;
      v51 = v8 + 4;
      v52 = &v8[2 * v49 + 4];
      *v52 = v9;
      v52[1] = v10;
      __srca = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v49)
      {
        while (1)
        {
          v53 = v50 - 1;
          v54 = &v51[2 * v50 - 2];
          v55 = &v8[2 * v50];
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            v56 = v8[4];
            v57 = v8[5];
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
LABEL_70:
            if (v59)
            {
              goto LABEL_110;
            }

            v71 = *v55;
            v70 = v55[1];
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_113;
            }

            v75 = v54[1];
            v76 = v75 - *v54;
            if (__OFSUB__(v75, *v54))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v73, v76))
            {
              goto LABEL_118;
            }

            if (v73 + v76 >= v58)
            {
              if (v58 < v76)
              {
                v53 = v50 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v50 < 2)
          {
            goto LABEL_112;
          }

          v78 = *v55;
          v77 = v55[1];
          v66 = __OFSUB__(v77, v78);
          v73 = v77 - v78;
          v74 = v66;
LABEL_85:
          if (v74)
          {
            goto LABEL_115;
          }

          v80 = *v54;
          v79 = v54[1];
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_117;
          }

          if (v81 < v73)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v53 - 1 >= v50)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v85 = &v51[2 * v53 - 2];
          v86 = *v85;
          v87 = &v51[2 * v53];
          v88 = v87[1];
          sub_23141E82C((*a3 + 40 * *v85), (*a3 + 40 * *v87), *a3 + 40 * v88, __srca);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v88 < v86)
          {
            goto LABEL_105;
          }

          v89 = v8;
          v90 = v8[2];
          if (v53 > v90)
          {
            goto LABEL_106;
          }

          *v85 = v86;
          v85[1] = v88;
          if (v53 >= v90)
          {
            goto LABEL_107;
          }

          v50 = v90 - 1;
          memmove(&v51[2 * v53], v87 + 2, 16 * (v90 - 1 - v53));
          v89[2] = v90 - 1;
          v91 = v90 > 2;
          v8 = v89;
          v5 = 0;
          if (!v91)
          {
            goto LABEL_99;
          }
        }

        v60 = &v51[2 * v50];
        v61 = *(v60 - 8);
        v62 = *(v60 - 7);
        v66 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        if (v66)
        {
          goto LABEL_108;
        }

        v65 = *(v60 - 6);
        v64 = *(v60 - 5);
        v66 = __OFSUB__(v64, v65);
        v58 = v64 - v65;
        v59 = v66;
        if (v66)
        {
          goto LABEL_109;
        }

        v67 = v55[1];
        v68 = v67 - *v55;
        if (__OFSUB__(v67, *v55))
        {
          goto LABEL_111;
        }

        v66 = __OFADD__(v58, v68);
        v69 = v58 + v68;
        if (v66)
        {
          goto LABEL_114;
        }

        if (v69 >= v63)
        {
          v83 = *v54;
          v82 = v54[1];
          v66 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v66)
          {
            goto LABEL_119;
          }

          if (v58 < v84)
          {
            v53 = v50 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      v7 = v10;
      if (v10 >= v6)
      {
        v100 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_23141E5BC(&v100, *a1, a3);
LABEL_103:
}

void sub_23141E06C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_2314787C8();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_2314787C8()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = v24 + v21;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
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
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v93 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == *(v39 + 8);
                if (v40 || (sub_2314787C8() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v41 = *(v39 + 32);
                v42 = *(v39 + 16);
                v36 = *(v39 + 24);
                *(v39 + 24) = *v39;
                *(v39 + 40) = v42;
                *v39 = v36;
                *(v39 + 8) = v41;
                v37 = v41;
                v39 -= 24;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v93;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23141CD28();
        v8 = v88;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_23141CD28();
        v8 = v89;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v7;
      v94 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        v92 = v8 + 4;
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = v48;
          v83 = &v46[2 * v48];
          v84 = v83[1];
          sub_23141EA1C((*a3 + 24 * *v80), (*a3 + 24 * *v83), *a3 + 24 * v84, v94);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v82 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v82 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(v83, v83 + 2, 16 * (v86 - 1 - v82));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          v46 = v92;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_23141E6F4(&v96, *a1, a3);
LABEL_103:
}

uint64_t sub_23141E5BC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2314490FC(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_23141E82C((*a3 + 40 * *v4), (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_23141E6F4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2314490FC(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_23141EA1C((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_23141E82C(char *a1, char *__dst, unint64_t a3, char *__src)
{
  v4 = __src;
  v5 = a3;
  v6 = __dst;
  v7 = a1;
  v8 = (__dst - a1) / 40;
  v9 = (a3 - __dst) / 40;
  if (v8 < v9)
  {
    v10 = 40 * v8;
    v11 = &a1[40 * v8];
    if (__src != a1 || v11 <= __src)
    {
      v13 = OUTLINED_FUNCTION_134();
      memmove(v13, v14, v10);
    }

    v15 = &v4[v10];
    while (1)
    {
      if (v4 >= v15 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v17 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v17 || (sub_2314787C8() & 1) == 0)
      {
        break;
      }

      v18 = v6;
      v17 = v7 == v6;
      v6 += 40;
      if (!v17)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 40;
    }

    v18 = v4;
    v17 = v7 == v4;
    v4 += 40;
    if (v17)
    {
      goto LABEL_22;
    }

LABEL_21:
    v19 = *v18;
    v20 = *(v18 + 1);
    *(v7 + 4) = *(v18 + 4);
    *v7 = v19;
    *(v7 + 1) = v20;
    goto LABEL_22;
  }

  v21 = 40 * v9;
  if (__src != __dst || &__dst[40 * v9] <= __src)
  {
    memmove(__src, __dst, 40 * v9);
  }

  v15 = &v4[v21];
LABEL_29:
  v23 = v6 - 40;
  for (v5 -= 40; v15 > v4 && v6 > v7; v5 -= 40)
  {
    v25 = *(v15 - 5) == *(v6 - 5) && *(v15 - 4) == *(v6 - 4);
    if (!v25 && (sub_2314787C8() & 1) != 0)
    {
      v17 = v5 + 40 == v6;
      v6 -= 40;
      if (!v17)
      {
        v28 = *v23;
        v29 = *(v23 + 1);
        *(v5 + 32) = *(v23 + 4);
        *v5 = v28;
        *(v5 + 16) = v29;
        v6 = v23;
      }

      goto LABEL_29;
    }

    if (v15 != (v5 + 40))
    {
      v26 = *(v15 - 40);
      v27 = *(v15 - 24);
      *(v5 + 32) = *(v15 - 1);
      *v5 = v26;
      *(v5 + 16) = v27;
    }

    v15 -= 40;
  }

LABEL_46:
  v30 = 40 * ((v15 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v30])
  {
    memmove(v6, v4, v30);
  }

  return 1;
}

uint64_t sub_23141EA1C(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 24;
  v9 = (a3 - __dst) / 24;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[24 * v8] <= a4)
    {
      memmove(a4, __src, 24 * v8);
    }

    v11 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_2314787C8() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 24;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v15;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[24 * v9] <= a4)
  {
    memmove(a4, __dst, 24 * v9);
  }

  v11 = &v4[24 * v9];
LABEL_29:
  v17 = v6 - 24;
  for (v5 -= 24; v11 > v4 && v6 > v7; v5 -= 24)
  {
    v19 = *(v11 - 3) == *(v6 - 3) && *(v11 - 2) == *(v6 - 2);
    if (!v19 && (sub_2314787C8() & 1) != 0)
    {
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v21;
        v6 = v17;
      }

      goto LABEL_29;
    }

    if (v11 != (v5 + 24))
    {
      v20 = *(v11 - 24);
      *(v5 + 16) = *(v11 - 1);
      *v5 = v20;
    }

    v11 -= 24;
  }

LABEL_46:
  v22 = (v11 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_23141EC70(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

unint64_t sub_23141ECFC()
{
  result = qword_27DD4D6C0;
  if (!qword_27DD4D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D6C0);
  }

  return result;
}

unint64_t sub_23141ED50()
{
  result = qword_27DD4D6E8;
  if (!qword_27DD4D6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4D6E0, &unk_23147C540);
    sub_23141F028(&qword_27DD4D6F0, &qword_27DD4D6F8, &protocol conformance descriptor for Entity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D6E8);
  }

  return result;
}

unint64_t sub_23141EE14()
{
  result = qword_27DD4D700;
  if (!qword_27DD4D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D700);
  }

  return result;
}

unint64_t sub_23141EE68()
{
  result = qword_280C3C638;
  if (!qword_280C3C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C638);
  }

  return result;
}

unint64_t sub_23141EEBC()
{
  result = qword_27DD4D710;
  if (!qword_27DD4D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D710);
  }

  return result;
}

unint64_t sub_23141EF10()
{
  result = qword_27DD4D718;
  if (!qword_27DD4D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D718);
  }

  return result;
}

unint64_t sub_23141EF64()
{
  result = qword_27DD4D730;
  if (!qword_27DD4D730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4D6E0, &unk_23147C540);
    sub_23141F028(&qword_27DD4D738, &qword_27DD4D740, &protocol conformance descriptor for Entity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D730);
  }

  return result;
}

uint64_t sub_23141F028(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4D6B0, qword_23147B940);
    sub_2313F7138(a2, type metadata accessor for Entity, a3);
    OUTLINED_FUNCTION_134();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23141F0C0()
{
  result = qword_27DD4D748;
  if (!qword_27DD4D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D748);
  }

  return result;
}

unint64_t sub_23141F114()
{
  result = qword_280C3BEB0[0];
  if (!qword_280C3BEB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C3BEB0);
  }

  return result;
}

unint64_t sub_23141F168()
{
  result = qword_27DD4D780;
  if (!qword_27DD4D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D780);
  }

  return result;
}

unint64_t sub_23141F1BC()
{
  result = qword_27DD4D788;
  if (!qword_27DD4D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D788);
  }

  return result;
}

unint64_t sub_23141F210()
{
  result = qword_27DD4D790;
  if (!qword_27DD4D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D790);
  }

  return result;
}

unint64_t sub_23141F268()
{
  result = qword_27DD4D7B8;
  if (!qword_27DD4D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D7B8);
  }

  return result;
}

void sub_23141F2BC(uint64_t a1)
{
  type metadata accessor for Interaction(319);
  if (v1 <= 0x3F)
  {
    sub_23141F374(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23141F374(uint64_t a1)
{
  if (!qword_280C3C908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4D6B0, qword_23147B940);
    v1 = sub_231477DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_280C3C908);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for DonationConversionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23141F52C(uint64_t a1)
{
  result = sub_2313F17E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23141F558()
{
  result = qword_27DD4D7C8;
  if (!qword_27DD4D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D7C8);
  }

  return result;
}

unint64_t sub_23141F5B0()
{
  result = qword_27DD4D7D0;
  if (!qword_27DD4D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D7D0);
  }

  return result;
}

unint64_t sub_23141F608()
{
  result = qword_27DD4D7D8;
  if (!qword_27DD4D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D7D8);
  }

  return result;
}

unint64_t sub_23141F660()
{
  result = qword_27DD4D7E0;
  if (!qword_27DD4D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D7E0);
  }

  return result;
}

unint64_t sub_23141F6B8()
{
  result = qword_27DD4D7E8;
  if (!qword_27DD4D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D7E8);
  }

  return result;
}

unint64_t sub_23141F710()
{
  result = qword_27DD4D7F0;
  if (!qword_27DD4D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D7F0);
  }

  return result;
}

unint64_t sub_23141F768()
{
  result = qword_27DD4D7F8;
  if (!qword_27DD4D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D7F8);
  }

  return result;
}

unint64_t sub_23141F7C0()
{
  result = qword_27DD4D800;
  if (!qword_27DD4D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D800);
  }

  return result;
}

unint64_t sub_23141F818()
{
  result = qword_27DD4D808;
  if (!qword_27DD4D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D808);
  }

  return result;
}

unint64_t sub_23141F870()
{
  result = qword_27DD4D810;
  if (!qword_27DD4D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D810);
  }

  return result;
}

unint64_t sub_23141F8C8()
{
  result = qword_27DD4D818;
  if (!qword_27DD4D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D818);
  }

  return result;
}

unint64_t sub_23141F91C()
{
  result = qword_280C3BEA8;
  if (!qword_280C3BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BEA8);
  }

  return result;
}

unint64_t sub_23141F970()
{
  result = qword_280C3C470;
  if (!qword_280C3C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C470);
  }

  return result;
}

unint64_t sub_23141F9C4()
{
  result = qword_280C3BC28;
  if (!qword_280C3BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BC28);
  }

  return result;
}

unint64_t sub_23141FA18()
{
  result = qword_27DD4D8C8;
  if (!qword_27DD4D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D8C8);
  }

  return result;
}

_BYTE *sub_23141FA74(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23141FB54()
{
  result = qword_27DD4D9B0;
  if (!qword_27DD4D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D9B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_0()
{
  *v0 = v1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_34_0()
{
  *v0 = v2;
  v0[1] = v1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_43_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_231478748();
}

uint64_t OUTLINED_FUNCTION_44_0(uint64_t a1)
{

  return sub_2314786B8();
}

uint64_t OUTLINED_FUNCTION_50_0()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_66()
{

  return sub_2313EB328();
}

uint64_t OUTLINED_FUNCTION_79@<X0>(uint64_t a1@<X8>)
{
  *v2 = a1;
  v2[1] = v1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_82(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2314787C8();
}

void OUTLINED_FUNCTION_107()
{
  *(v0 + 16) = v1;
  v7 = v0 + 32 * v2;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v7 + 48) = v6;
  *(v7 + 56) = v3;
}

void OUTLINED_FUNCTION_124()
{
  v3 = *(v2 - 72);
  *(v2 - 144) = v0;
  *(v2 - 136) = v1;
  *(v2 - 128) = v3;
}

uint64_t OUTLINED_FUNCTION_148(uint64_t a1)
{

  return sub_2314785F8();
}

uint64_t OUTLINED_FUNCTION_149(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t Entity.init()()
{
  OUTLINED_FUNCTION_8_4();
  v0 = OUTLINED_FUNCTION_12_5(MEMORY[0x277D84F98]);
  type metadata accessor for Entity(v0);
  return sub_231476C98();
}

uint64_t Entity.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Entity.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Entity.type.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Entity.type.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Entity.fields.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Entity.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Entity(0) + 28);
  sub_231476CA8();
  OUTLINED_FUNCTION_3();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Entity.createdAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Entity(0) + 28);
  sub_231476CA8();
  OUTLINED_FUNCTION_3();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t sub_2314200DC()
{
  sub_231476788();
  swift_allocObject();
  result = sub_231476778();
  qword_280C3C260 = result;
  return result;
}

void sub_23142011C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_231477EA8();
  OUTLINED_FUNCTION_4();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2();
  v33 = v32 - v31;
  OUTLINED_FUNCTION_8_4();
  v34 = OUTLINED_FUNCTION_12_5(MEMORY[0x277D84F98]);
  v35 = *(type metadata accessor for Entity(v34) + 28);
  sub_231476C98();
  sub_231477E98();
  v36 = sub_231477E78();
  v38 = v37;
  (*(v29 + 8))(v33, v27);
  if (v38 >> 60 == 15)
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_280C3CF50);
    }

    v39 = sub_231477B68();
    __swift_project_value_buffer(v39, qword_280C3D970);
    v40 = sub_231477B58();
    v41 = sub_2314782B8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      *v42 = 136446722;
      v43 = sub_2313EB684(0xD00000000000005CLL, 0x8000000231482720, &a10);
      v44 = OUTLINED_FUNCTION_9_3(v43);
      *(v42 + 14) = sub_2313EB684(v44 | 0x6E6E692800000000, 0xEC000000293A7265, &a10);
      *(v42 + 22) = 2050;
      *(v42 + 24) = 33;
      OUTLINED_FUNCTION_13_0(&dword_2313E1000, v45, v46, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_2();
    }

    sub_23141F91C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    if (qword_280C3C258 != -1)
    {
      OUTLINED_FUNCTION_6_3(&qword_280C3C258);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA30, &qword_23147D060);
    OUTLINED_FUNCTION_1_4();
    sub_2313F6580(v47, v48, v49, MEMORY[0x277D83528]);
    sub_231476768();
    sub_2313F3D2C(v36, v38);
    if (!v20)
    {
      v54 = a10;
      v55 = *(v24 + 2);
      *v26 = *(v24 + 1);
      *(v26 + 1) = v55;
      v56 = *(v24 + 4);
      *(v26 + 2) = *(v24 + 3);
      *(v26 + 3) = v56;
      v57 = OUTLINED_FUNCTION_12_5(v54);
      v61 = *(type metadata accessor for _Entity(v57) + 32);
      v58 = sub_231476CA8();
      v59 = *(v58 - 8);
      v60 = *(v59 + 8);

      v60(&v26[v35], v58);
      (*(v59 + 16))(&v26[v35], &v24[v61], v58);
      v53 = OUTLINED_FUNCTION_5_2();
      goto LABEL_11;
    }
  }

  v50 = OUTLINED_FUNCTION_5_2();
  sub_2314217C8(v50, v51);
  OUTLINED_FUNCTION_0_6();
  v53 = v26;
LABEL_11:
  sub_2314217C8(v53, v52);
  OUTLINED_FUNCTION_62();
}

void sub_2314204D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  sub_231476CA8();
  OUTLINED_FUNCTION_4();
  v62 = v28;
  v63 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2();
  v61 = v30 - v29;
  v31 = sub_231477EA8();
  OUTLINED_FUNCTION_4();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2();
  v37 = v36 - v35;
  OUTLINED_FUNCTION_8_4();
  v38 = OUTLINED_FUNCTION_12_5(MEMORY[0x277D84F98]);
  v39 = *(type metadata accessor for Entity(v38) + 28);
  sub_231476C98();
  v64 = v24;
  sub_2314778B8();
  sub_231477E98();
  v40 = sub_231477E78();
  v42 = v41;

  (*(v33 + 8))(v37, v31);
  if (v42 >> 60 == 15)
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_280C3CF50);
    }

    v43 = sub_231477B68();
    __swift_project_value_buffer(v43, qword_280C3D970);
    v44 = sub_231477B58();
    v45 = sub_2314782B8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      *v46 = 136446722;
      v47 = sub_2313EB684(0xD00000000000005CLL, 0x8000000231482720, &a10);
      v48 = OUTLINED_FUNCTION_9_3(v47);
      *(v46 + 14) = sub_2313EB684(v48 | 0x746E652800000000, 0xED0000293A797469, &a10);
      *(v46 + 22) = 2050;
      *(v46 + 24) = 43;
      OUTLINED_FUNCTION_13_0(&dword_2313E1000, v49, v50, "unwrapped nil. file=%{public}s function=%{public}s line=%{public}ld");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_2();
    }

    sub_23141F91C();
    swift_allocError();
    swift_willThrow();
    sub_2314779E8();
    OUTLINED_FUNCTION_3();
    (*(v51 + 8))(v64);
  }

  else
  {
    if (qword_280C3C258 != -1)
    {
      OUTLINED_FUNCTION_6_3(&qword_280C3C258);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA30, &qword_23147D060);
    OUTLINED_FUNCTION_1_4();
    sub_2313F6580(v52, v53, v54, MEMORY[0x277D83528]);
    sub_231476768();
    if (!v20)
    {
      v57 = a10;
      *v26 = sub_2314778A8();
      v26[1] = v58;
      v26[2] = sub_2314778D8();
      v26[3] = v59;
      v26[4] = v57;
      sub_2314779D8();
      sub_2313F3D2C(v40, v42);
      sub_2314779E8();
      OUTLINED_FUNCTION_3();
      (*(v60 + 8))(v24);
      (*(v62 + 40))(v26 + v39, v61, v63);
      goto LABEL_12;
    }

    sub_2314779E8();
    OUTLINED_FUNCTION_3();
    (*(v55 + 8))(v24);
    sub_2313F3D2C(v40, v42);
  }

  OUTLINED_FUNCTION_0_6();
  sub_2314217C8(v26, v56);
LABEL_12:
  OUTLINED_FUNCTION_62();
}

Swift::String __swiftcall Entity.fieldsTokens()()
{
  sub_2314212C8();
  v7 = v0;

  v1 = sub_231402B08(0, 0xE000000000000000);
  v3 = v2;

  sub_231403090(v7, 0, 5);
  v4 = v1;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t static Entity.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2314787C8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_2314787C8() & 1) == 0)
  {
    return 0;
  }

  sub_23141AB28(a1[4], a2[4]);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Entity(0);

  return sub_231476C68();
}

uint64_t sub_231420A6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73646C656966 && a2 == 0xE600000000000000;
      if (v7 || (sub_2314787C8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074)
      {

        return 3;
      }

      else
      {
        v9 = sub_2314787C8();

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

uint64_t sub_231420BC8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x73646C656966;
      break;
    case 3:
      result = 0x4164657461657263;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231420C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231420A6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231420C68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231420BC0();
  *a1 = result;
  return result;
}

uint64_t sub_231420C90(uint64_t a1)
{
  v2 = sub_231421434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231420CCC(uint64_t a1)
{
  v2 = sub_231421434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Entity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA20, &qword_23147A360);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231421434();
  sub_231478968();
  v15 = 0;
  OUTLINED_FUNCTION_10_3();
  sub_231478718();
  if (!v2)
  {
    v14 = 1;
    OUTLINED_FUNCTION_10_3();
    sub_231478718();
    v13 = *(v3 + 32);
    v12[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA30, &qword_23147D060);
    sub_2313F6580(&qword_280C3C158, sub_23140518C, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    OUTLINED_FUNCTION_10_3();
    sub_231478748();
    type metadata accessor for Entity(0);
    v12[14] = 3;
    sub_231476CA8();
    sub_2313F8198(&qword_280C3CB70, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_10_3();
    sub_231478748();
  }

  return (*(v7 + 8))(v10, v5);
}

void Entity.init(from:)()
{
  OUTLINED_FUNCTION_64();
  v2 = v1;
  v33 = v3;
  v4 = sub_231476CA8();
  OUTLINED_FUNCTION_4();
  v32 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA38, &qword_23147A368);
  OUTLINED_FUNCTION_4();
  v34 = v11;
  v35 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v14 = type metadata accessor for Entity(0);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_2();
  v17 = (v16 - v15);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v17[2] = 0;
  v17[3] = 0xE000000000000000;
  v17[4] = MEMORY[0x277D84F98];
  v19 = *(v18 + 36);
  sub_231476C98();
  v20 = v2[3];
  v36 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v20);
  sub_231421434();
  sub_231478948();
  if (!v0)
  {
    v31 = v19;
    v21 = v9;
    v22 = v34;
    v23 = v35;
    OUTLINED_FUNCTION_11_4();
    *v17 = sub_231478688();
    v17[1] = v24;
    OUTLINED_FUNCTION_11_4();
    v17[2] = sub_231478688();
    v17[3] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA30, &qword_23147D060);
    OUTLINED_FUNCTION_1_4();
    sub_2313F6580(v26, v27, v28, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_11_4();
    sub_2314786B8();
    v17[4] = v37;
    sub_2313F8198(&qword_280C3C0E8, MEMORY[0x277CC95A0]);
    OUTLINED_FUNCTION_11_4();
    sub_2314786B8();
    (*(v22 + 8))(v13, v23);
    (*(v32 + 40))(v17 + v31, v21, v4);
    sub_2313F0868(v17, v33);
  }

  __swift_destroy_boxed_opaque_existential_0(v36);
  OUTLINED_FUNCTION_0_6();
  sub_2314217C8(v17, v29);
  OUTLINED_FUNCTION_62();
}

void sub_2314212C8()
{
  OUTLINED_FUNCTION_64();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D8B8, &unk_23147A238);
  v2 = sub_231478628();
  v3 = v2;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v2 + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(v1 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = 3 * v13;
      v18 = *(v1 + 56) + 24 * v13;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v22 = (v3[6] + 16 * v13);
      *v22 = v16;
      v22[1] = v15;
      v23 = v3[7] + 8 * v17;
      *v23 = v19;
      *(v23 + 8) = v20;
      *(v23 + 16) = v21;
      v24 = v3[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v3[2] = v26;

      sub_231401AEC(v19, v20, v21);
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        OUTLINED_FUNCTION_62();
        return;
      }

      v12 = *(v1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t sub_231421434()
{
  result = qword_27DD4DA28;
  if (!qword_27DD4DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DA28);
  }

  return result;
}

unint64_t sub_231421488()
{
  result = qword_280C3C930;
  if (!qword_280C3C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C930);
  }

  return result;
}

void sub_2314214F0(uint64_t a1)
{
  sub_231421584();
  if (v1 <= 0x3F)
  {
    sub_231476CA8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_231421584()
{
  if (!qword_280C3CE48)
  {
    v0 = sub_231477DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_280C3CE48);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Entity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2314216C4()
{
  result = qword_27DD4DA40;
  if (!qword_27DD4DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DA40);
  }

  return result;
}

unint64_t sub_23142171C()
{
  result = qword_27DD4DA48;
  if (!qword_27DD4DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DA48);
  }

  return result;
}

unint64_t sub_231421774()
{
  result = qword_27DD4DA50;
  if (!qword_27DD4DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DA50);
  }

  return result;
}

uint64_t sub_2314217C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

void *sub_231421820()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v35 - v5;
  sub_231476AF8();
  OUTLINED_FUNCTION_1_5();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231421E24();
  v12 = sub_231421E68(0xD00000000000001CLL, 0x8000000231482780);
  if (!v12)
  {
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v0);
LABEL_7:
    sub_23140224C(v6, &qword_27DD4DA58, &unk_23147A530);
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_280C3CF50);
    }

    v16 = sub_231477B68();
    __swift_project_value_buffer(v16, qword_280C3D970);
    v17 = sub_231477B58();
    v18 = sub_2314782B8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2313E1000, v17, v18, "AppIntentListenerFilter: no bundle/url", v19, 2u);
      OUTLINED_FUNCTION_16_2();
    }

    return MEMORY[0x277D84FA0];
  }

  v13 = sub_231422238(0xD000000000000017, 0x800000023147A520, 0x7473696C70, 0xE500000000000000, v12);
  if (v13)
  {
    v14 = v13;
    sub_231476AA8();

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v15, 1, v0);
  sub_2314222CC(v4, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v0) == 1)
  {
    goto LABEL_7;
  }

  (*(v8 + 32))(v11, v6, v0);
  v20 = sub_231476B38();
  v22 = v21;
  sub_2314769D8();
  swift_allocObject();
  sub_2314769C8();
  sub_23142233C();
  sub_2314769B8();

  v23 = v39;
  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_280C3CF50);
  }

  v25 = sub_231477B68();
  __swift_project_value_buffer(v25, qword_280C3D970);

  v26 = sub_231477B58();
  v27 = sub_2314782A8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v38 = v27;
    v29 = v28;
    v37 = swift_slowAlloc();
    v39 = v37;
    *v29 = 136315138;

    v30 = sub_2314781F8();
    v36 = v26;
    v31 = v30;
    v33 = v32;

    v34 = sub_2313EB684(v31, v33, &v39);

    *(v29 + 4) = v34;
    v26 = v36;
    _os_log_impl(&dword_2313E1000, v36, v38, "AppIntentListenerFilter: Read %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_16_2();
    sub_2313EB8A4(v20, v22);
  }

  else
  {

    sub_2313EB8A4(v20, v22);
  }

  (*(v8 + 8))(v11, v0);
  return v23;
}

unint64_t sub_231421E24()
{
  result = qword_280C3BBC0;
  if (!qword_280C3BBC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C3BBC0);
  }

  return result;
}

id sub_231421E68(uint64_t a1, uint64_t a2)
{
  v2 = sub_231477E58();

  v3 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v3;
}

uint64_t sub_231421ECC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000002314827A0 == a2)
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

uint64_t sub_231421F4C()
{
  sub_2314788E8();
  MEMORY[0x23192E9B0](0);
  return sub_231478918();
}

void *sub_231421FAC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA60, &qword_23147A5A8);
  OUTLINED_FUNCTION_1_5();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2314223A0();
  sub_231478948();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA68, &qword_23147A5B0);
    sub_2314223F4();
    sub_2314786B8();
    (*(v5 + 8))(v8, v2);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

uint64_t sub_231422124(uint64_t a1)
{
  sub_2314788E8();
  MEMORY[0x23192E9B0](0);
  return sub_231478918();
}

uint64_t sub_231422168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231421ECC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_231422194(uint64_t a1)
{
  v2 = sub_2314223A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314221D0(uint64_t a1)
{
  v2 = sub_2314223A0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_23142220C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_231421FAC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_231422238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_231477E58();

  v7 = sub_231477E58();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_2314222CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23142233C()
{
  result = qword_280C3BC98;
  if (!qword_280C3BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BC98);
  }

  return result;
}

unint64_t sub_2314223A0()
{
  result = qword_280C3BCB0;
  if (!qword_280C3BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BCB0);
  }

  return result;
}

unint64_t sub_2314223F4()
{
  result = qword_280C3BC10;
  if (!qword_280C3BC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4DA68, &qword_23147A5B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BC10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppIntentListenerFilter.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_231422520()
{
  result = qword_27DD4DA70;
  if (!qword_27DD4DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DA70);
  }

  return result;
}

unint64_t sub_231422578()
{
  result = qword_280C3BCA0;
  if (!qword_280C3BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BCA0);
  }

  return result;
}

unint64_t sub_2314225D0()
{
  result = qword_280C3BCA8;
  if (!qword_280C3BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BCA8);
  }

  return result;
}

double EntityQuery.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  *(a1 + 40) = MEMORY[0x277D84F90];
  return result;
}

uint64_t EntityQuery.filter(matchingTokens:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v19 = *a1;
  *(a2 + 40) = *(v2 + 40);
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_19_1();
  sub_2313E9688(v8, v9, v10, v11, v12);

  sub_231412700(v19, v4, v6, v5, v7);
  OUTLINED_FUNCTION_19_1();
  result = sub_231412668(v13, v14, v15, v16, v17);
  *a2 = v19;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  return result;
}

void sub_231422710(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17[1] = a1;
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_34();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  v12 = *v3;
  v13 = *(v3 + 8);
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  v16 = *(v3 + 40);
  LOBYTE(v3) = *(v3 + 32);
  sub_2313FBD8C();
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v3;
  *(a2 + 40) = v16;
  sub_2313E9628(v11, v8, &unk_27DD4D680, &unk_2314795C0);
  sub_2313E9688(v12, v13, v14, v15, v3);

  sub_2313E8CDC();
  sub_2313F3390();
  sub_2313F34A0(*(*(a2 + 40) + 16));
  sub_2313E937C(v11, &unk_27DD4D680, &unk_2314795C0);
  OUTLINED_FUNCTION_10_4();
}

void EntityQuery.fetchAll(_:)()
{
  OUTLINED_FUNCTION_64();
  v1 = type metadata accessor for _Entity(0);
  v2 = OUTLINED_FUNCTION_29(v1);
  v4 = v3;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_34();
  v56 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - v8;
  v10 = type metadata accessor for Entity(0);
  v11 = OUTLINED_FUNCTION_29(v10);
  v13 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA78, &qword_23147CDE0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22_0();
  if (v19)
  {
    OUTLINED_FUNCTION_11_5(v19);
    sub_231422D04();
LABEL_5:
    OUTLINED_FUNCTION_62();
    return;
  }

  v54 = v20;
  v51 = v21;
  OUTLINED_FUNCTION_11_5(v19);
  v22 = sub_2313F4D04();
  if (v0)
  {
    goto LABEL_5;
  }

  v55 = v4;
  v50 = v17;
  v23 = v22;
  OUTLINED_FUNCTION_5_3();
  v24 = v54;
  v30 = sub_2313E7E78(v25, v26, v27, v28, type metadata accessor for _Entity, &unk_23148073C, v29, v54);
  MEMORY[0x28223BE20](v30);
  *(&v49 - 2) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA80, &qword_23147A6D0);
  sub_231477098();
  v49 = v23;
  v31 = v57;
  v32 = *(v57 + 16);
  if (!v32)
  {

LABEL_14:
    (*(v51 + 8))(v54, v50);
    goto LABEL_5;
  }

  v52 = v13;
  v61 = MEMORY[0x277D84F90];
  sub_2313FA208(0, v32, 0);
  v33 = 0;
  OUTLINED_FUNCTION_6();
  v53 = v31 + v35;
  while (v33 < *(v31 + 16))
  {
    sub_2313EEFC8(v53 + *(v34 + 72) * v33, v9, type metadata accessor for _Entity);
    v36 = v56;
    sub_2313EEFC8(v9, v56, type metadata accessor for _Entity);
    sub_23142011C(v36, v37, v38, v39, v40, v41, v42, v43, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
    v44 = v31;
    OUTLINED_FUNCTION_9_4();
    v46 = *(v61 + 16);
    v45 = *(v61 + 24);
    if (v46 >= v45 >> 1)
    {
      OUTLINED_FUNCTION_18_0(v45);
    }

    ++v33;
    *(v61 + 16) = v46 + 1;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_8_5();
    sub_231423674(v16, v47, v48);
    v34 = v55;
    v31 = v44;
    if (v32 == v33)
    {

      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_231422D04()
{
  OUTLINED_FUNCTION_64();
  v3 = v2;
  v4 = sub_2314779E8();
  OUTLINED_FUNCTION_4();
  v65 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_34();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  v13 = type metadata accessor for Entity(0);
  v14 = OUTLINED_FUNCTION_29(v13);
  v64 = v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA98, &qword_23147CD60);
  OUTLINED_FUNCTION_4();
  v21 = v20;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_2();
  v23 = v3[1];
  v68 = *v3;
  *v69 = v23;
  *&v69[9] = *(v3 + 25);
  OUTLINED_FUNCTION_22_0();
  v24 = sub_2313F4D04();
  if (v0)
  {
LABEL_3:
    OUTLINED_FUNCTION_62();
    return;
  }

  v57 = v21;
  v58 = v19;
  v67 = v18;
  v63 = v9;
  v25 = v24;
  OUTLINED_FUNCTION_4_3();
  v31 = sub_2313E7E78(v26, v27, v28, v29, MEMORY[0x277D1F258], MEMORY[0x277D1F248], v30, v1);
  MEMORY[0x28223BE20](v31);
  *(&v54 - 2) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAD0, &qword_23147A7F8);
  sub_231477098();
  v66 = 0;
  v62 = v4;
  v55 = v25;
  v56 = v1;
  v32 = v68;
  v33 = *(v68 + 16);
  if (!v33)
  {

LABEL_14:
    OUTLINED_FUNCTION_13_1();
    v53(v56);
    goto LABEL_3;
  }

  v70 = MEMORY[0x277D84F90];
  sub_2313FA208(0, v33, 0);
  v34 = 0;
  OUTLINED_FUNCTION_6();
  v60 = v32 + v35;
  v59 = v36 + 16;
  v61 = (v36 + 8);
  while (v34 < *(v32 + 16))
  {
    v37 = *(v65 + 16);
    v38 = v62;
    v37(v12, v60 + *(v65 + 72) * v34, v62);
    v39 = v63;
    v37(v63, v12, v38);
    v40 = v66;
    sub_2314204D8(v39, v41, v42, v43, v44, v45, v46, v47, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
    v66 = v40;
    if (v40)
    {

      (*v61)(v12, v38);

      OUTLINED_FUNCTION_13_1();
      v52(v56, v58);
      goto LABEL_3;
    }

    (*v61)(v12, v38);
    v49 = *(v70 + 16);
    v48 = *(v70 + 24);
    if (v49 >= v48 >> 1)
    {
      OUTLINED_FUNCTION_18_0(v48);
    }

    ++v34;
    *(v70 + 16) = v49 + 1;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_8_5();
    sub_231423674(v67, v50, v51);
    if (v33 == v34)
    {

      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_2314232B4@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA78, &qword_23147CDE0);
  sub_2313ED944(&qword_27DD4DAC0, &qword_27DD4DA78, &qword_23147CDE0, MEMORY[0x277D0B768]);
  sub_2313F3500(&qword_27DD4DAC8, type metadata accessor for _Entity, &unk_231480824);
  result = sub_231476F58();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_231423398@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA98, &qword_23147CD60);
  sub_2313ED944(&qword_27DD4DAB0, &qword_27DD4DA98, &qword_23147CD60, MEMORY[0x277D0B768]);
  sub_2313F3500(&qword_27DD4DAB8, MEMORY[0x277D1F258], MEMORY[0x277D1F250]);
  result = sub_231476F58();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_23142347C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA78, &qword_23147CDE0);
  sub_2313ED944(&qword_27DD4DAC0, &qword_27DD4DA78, &qword_23147CDE0, MEMORY[0x277D0B768]);
  sub_2313F3500(&qword_27DD4DAC8, type metadata accessor for _Entity, &unk_231480824);
  return sub_231476F68();
}

uint64_t sub_23142355C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA98, &qword_23147CD60);
  sub_2313ED944(&qword_27DD4DAB0, &qword_27DD4DA98, &qword_23147CD60, MEMORY[0x277D0B768]);
  sub_2313F3500(&qword_27DD4DAB8, MEMORY[0x277D1F258], MEMORY[0x277D1F250]);
  return sub_231476F68();
}

uint64_t sub_231423674(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 32))(a2, a1);
  return a2;
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

unint64_t sub_231423704()
{
  result = qword_280C3C168;
  if (!qword_280C3C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C168);
  }

  return result;
}

unint64_t sub_231423790(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  switch(*(v1 + 32))
  {
    case 1:
      v13 = *(v3 + 16);
      if (!v13)
      {
        goto LABEL_23;
      }

      if (v13 == 1)
      {
        return sub_231423790(a1);
      }

      OUTLINED_FUNCTION_14_3();
      do
      {
        OUTLINED_FUNCTION_11_6(v14);
        OUTLINED_FUNCTION_9_5();
        if (v8)
        {
          sub_23141252C(v15 > 1, v2, 1);
        }

        OUTLINED_FUNCTION_12_7();
      }

      while (!v9);
      goto LABEL_23;
    case 2:
      return sub_231423A04(*v1, *(v1 + 8));
    case 3:
      v12 = *(v1 + 16);
      v11 = *(v1 + 24);
      v20 = *v1;

      MEMORY[0x23192E060](61, 0xE100000000000000);
      MEMORY[0x23192E060](v12, v11);
      v3 = sub_231423A04(v20, v4);

      return v3;
    case 4:

      return v3;
    default:
      v5 = *(v3 + 16);
      if (!v5)
      {
        goto LABEL_23;
      }

      if (v5 == 1)
      {
        return sub_231423790(a1);
      }

      else
      {
        OUTLINED_FUNCTION_14_3();
        do
        {
          OUTLINED_FUNCTION_11_6(v6);
          OUTLINED_FUNCTION_9_5();
          if (v8)
          {
            sub_23141252C(v7 > 1, v2, 1);
          }

          OUTLINED_FUNCTION_12_7();
        }

        while (!v9);
LABEL_23:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D638, qword_231479978);
        sub_2313EF69C();
        v16 = sub_231477E28();
        v18 = v17;

        MEMORY[0x23192E060](v16, v18);

        MEMORY[0x23192E060](41, 0xE100000000000000);
        return 40;
      }
  }
}

unint64_t sub_231423A04(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v2 = sub_231477FF8();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = __OFADD__(v2, 2);
  result = v2 + 2;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x23192DFD0](result);
    MEMORY[0x23192E050](34, 0xE100000000000000);

    while (1)
    {
      v5 = sub_231477FE8();
      if (!v6)
      {
        break;
      }

      v9 = v5;
      v10 = v6;
      MEMORY[0x23192E050](v5, v6, v7, v8);
      v11 = v9 == 34 && v10 == 0xE100000000000000;
      if (v11 || (sub_2314787C8() & 1) != 0)
      {
        MEMORY[0x23192E050](v9, v10);
      }
    }

    MEMORY[0x23192E050](34, 0xE100000000000000);
    return 0;
  }

  return result;
}

uint64_t static FTSFilter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v69[0] = *a1;
  v69[1] = v3;
  v69[2] = v5;
  v69[3] = v4;
  v70 = v6;
  v71 = v7;
  v72 = v8;
  v73 = v10;
  v74 = v9;
  v75 = v11;
  switch(v6)
  {
    case 1:
      if (v11 != 1)
      {
        goto LABEL_31;
      }

      v44 = OUTLINED_FUNCTION_2_4();
      sub_231412700(v44, v45, v46, v47, v48);
      v17 = OUTLINED_FUNCTION_1_6();
      v21 = 1;
      goto LABEL_30;
    case 2:
      if (v11 != 2)
      {
        goto LABEL_31;
      }

      if (v2 != v7 || v3 != v8)
      {
        v23 = OUTLINED_FUNCTION_15_2(v2, v3);
        v34 = OUTLINED_FUNCTION_2_4();
        sub_231412700(v34, v35, v36, v37, 2);
        v28 = OUTLINED_FUNCTION_1_6();
        v32 = 2;
        goto LABEL_27;
      }

      sub_231412700(v2, v3, v10, v9, 2);
      v60 = OUTLINED_FUNCTION_1_6();
      v64 = 2;
      goto LABEL_37;
    case 3:
      if (v11 != 3)
      {
        goto LABEL_31;
      }

      v38 = v2 == v7 && v3 == v8;
      if (!v38 && (OUTLINED_FUNCTION_15_2(v2, v3) & 1) == 0)
      {
        v65 = OUTLINED_FUNCTION_2_4();
        sub_231412700(v65, v66, v67, v68, 3);
        v54 = OUTLINED_FUNCTION_1_6();
        v58 = 3;
        goto LABEL_32;
      }

      if (v5 != v10 || v4 != v9)
      {
        v23 = sub_2314787C8();
        v40 = OUTLINED_FUNCTION_2_4();
        sub_231412700(v40, v41, v42, v43, 3);
        v28 = OUTLINED_FUNCTION_1_6();
        v32 = 3;
        goto LABEL_27;
      }

      sub_231412700(v7, v8, v5, v4, 3);
      v60 = OUTLINED_FUNCTION_1_6();
      v64 = 3;
      goto LABEL_37;
    case 4:
      if (v11 != 4)
      {
        goto LABEL_31;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_231412700(v2, v3, v10, v9, 4);
        v60 = OUTLINED_FUNCTION_1_6();
        v64 = 4;
LABEL_37:
        sub_231412700(v60, v61, v62, v63, v64);
        v23 = 1;
      }

      else
      {
        v23 = OUTLINED_FUNCTION_15_2(v2, v3);
        v24 = OUTLINED_FUNCTION_2_4();
        sub_231412700(v24, v25, v26, v27, 4);
        v28 = OUTLINED_FUNCTION_1_6();
        v32 = 4;
LABEL_27:
        sub_231412700(v28, v29, v30, v31, v32);
      }

LABEL_33:
      sub_231423D8C(v69);
      return v23 & 1;
    default:
      if (v11)
      {
LABEL_31:
        v49 = OUTLINED_FUNCTION_2_4();
        sub_231412700(v49, v50, v51, v52, v53);
        v54 = OUTLINED_FUNCTION_1_6();
        v58 = v6;
LABEL_32:
        sub_231412700(v54, v55, v56, v57, v58);
        v23 = 0;
      }

      else
      {
        v12 = OUTLINED_FUNCTION_2_4();
        sub_231412700(v12, v13, v14, v15, v16);
        v17 = OUTLINED_FUNCTION_1_6();
        v21 = 0;
LABEL_30:
        sub_231412700(v17, v18, v19, v20, v21);
        v23 = sub_23140F83C(v2, v7);
      }

      goto LABEL_33;
  }
}

uint64_t sub_231423D8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5C8, &qword_23147A800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231423E00(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7958113 && a2 == 0xE300000000000000;
  if (v3 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7105633 && a2 == 0xE300000000000000;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
      if (v7 || (sub_2314787C8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x646C656966 && a2 == 0xE500000000000000;
        if (v8 || (sub_2314787C8() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7972657551776172 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_2314787C8();

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

uint64_t sub_231423FA8(char a1)
{
  result = 7958113;
  switch(a1)
  {
    case 1:
      result = 7105633;
      break;
    case 2:
      result = 0x6E656B6F74;
      break;
    case 3:
      result = 0x646C656966;
      break;
    case 4:
      result = 0x7972657551776172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231424028(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2314787C8();

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

uint64_t sub_2314240EC(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_231424118(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_23142418C(uint64_t a1)
{
  v2 = sub_231424C64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314241C8(uint64_t a1)
{
  v2 = sub_231424C64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231424204(uint64_t a1)
{
  v2 = sub_231424D0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231424240(uint64_t a1)
{
  v2 = sub_231424D0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231424284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231423E00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2314242AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231423FA0();
  *a1 = result;
  return result;
}

uint64_t sub_2314242D4(uint64_t a1)
{
  v2 = sub_231424B14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231424310(uint64_t a1)
{
  v2 = sub_231424B14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23142435C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231424028(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231424384(uint64_t a1)
{
  v2 = sub_231424BBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314243C0(uint64_t a1)
{
  v2 = sub_231424BBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2314243FC(uint64_t a1)
{
  v2 = sub_231424B68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231424438(uint64_t a1)
{
  v2 = sub_231424B68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231424474(uint64_t a1)
{
  v2 = sub_231424C10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314244B0(uint64_t a1)
{
  v2 = sub_231424C10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FTSFilter.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAE0, &qword_23147A808);
  OUTLINED_FUNCTION_4();
  v59 = v4;
  v60 = v3;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13();
  v56 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAE8, &qword_23147A810);
  OUTLINED_FUNCTION_4();
  v57 = v8;
  v58 = v7;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13();
  v55 = v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAF0, &qword_23147A818);
  OUTLINED_FUNCTION_4();
  v52 = v11;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v12);
  v14 = v48 - v13;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAF8, &qword_23147A820);
  OUTLINED_FUNCTION_4();
  v51 = v15;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v16);
  v18 = v48 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB00, &qword_23147A828);
  OUTLINED_FUNCTION_4();
  v49 = v20;
  v50 = v19;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v21);
  v23 = v48 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB08, &qword_23147A830);
  OUTLINED_FUNCTION_4();
  v63 = v25;
  v64 = v24;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v26);
  v28 = v48 - v27;
  v29 = *v1;
  v61 = v1[1];
  v62 = v29;
  v30 = v1[2];
  v48[1] = v1[3];
  v48[2] = v30;
  v31 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231424B14();
  sub_231478968();
  switch(v31)
  {
    case 1:
      OUTLINED_FUNCTION_19_2();
      sub_231424C64();
      v42 = v64;
      sub_2314786F8();
      v66 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB38, &qword_23147A838);
      OUTLINED_FUNCTION_5_4();
      sub_2314257AC(v43, v44, MEMORY[0x277D83948]);
      v45 = v53;
      sub_231478748();
      (*(v51 + 8))(v18, v45);
      v46 = OUTLINED_FUNCTION_10_5();
      return v47(v46, v42);
    case 2:
      LOBYTE(v66) = 2;
      sub_231424C10();
      OUTLINED_FUNCTION_7_2(&type metadata for FTSFilter.TokenCodingKeys, &v66);
      v38 = v54;
      sub_231478718();
      (*(v52 + 8))(v14, v38);
      goto LABEL_8;
    case 3:
      LOBYTE(v66) = 3;
      sub_231424BBC();
      OUTLINED_FUNCTION_7_2(&type metadata for FTSFilter.FieldCodingKeys, &v66);
      LOBYTE(v66) = 0;
      v37 = v58;
      v39 = v65;
      sub_231478718();
      if (!v39)
      {
        OUTLINED_FUNCTION_19_2();
        sub_231478718();
      }

      goto LABEL_7;
    case 4:
      LOBYTE(v66) = 4;
      sub_231424B68();
      OUTLINED_FUNCTION_7_2(&type metadata for FTSFilter.RawQueryCodingKeys, &v66);
      v37 = v60;
      sub_231478718();
LABEL_7:
      v40 = OUTLINED_FUNCTION_10_5();
      v41(v40, v37);
LABEL_8:
      result = (*(v63 + 8))(v18, v31);
      break;
    default:
      LOBYTE(v66) = 0;
      sub_231424D0C();
      v32 = v64;
      sub_2314786F8();
      v66 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB38, &qword_23147A838);
      OUTLINED_FUNCTION_5_4();
      sub_2314257AC(v33, v34, MEMORY[0x277D83948]);
      v35 = v50;
      sub_231478748();
      (*(v49 + 8))(v23, v35);
      result = (*(v63 + 8))(v28, v32);
      break;
  }

  return result;
}

unint64_t sub_231424B14()
{
  result = qword_27DD4DB10;
  if (!qword_27DD4DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DB10);
  }

  return result;
}

unint64_t sub_231424B68()
{
  result = qword_27DD4DB18;
  if (!qword_27DD4DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DB18);
  }

  return result;
}

unint64_t sub_231424BBC()
{
  result = qword_27DD4DB20;
  if (!qword_27DD4DB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DB20);
  }

  return result;
}

unint64_t sub_231424C10()
{
  result = qword_27DD4DB28;
  if (!qword_27DD4DB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DB28);
  }

  return result;
}

unint64_t sub_231424C64()
{
  result = qword_27DD4DB30;
  if (!qword_27DD4DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DB30);
  }

  return result;
}

unint64_t sub_231424CB8()
{
  result = qword_27DD4DB48;
  if (!qword_27DD4DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DB48);
  }

  return result;
}

unint64_t sub_231424D0C()
{
  result = qword_27DD4DB50;
  if (!qword_27DD4DB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DB50);
  }

  return result;
}

uint64_t FTSFilter.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v96 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB58, &qword_23147A840);
  OUTLINED_FUNCTION_4();
  v94 = v3;
  v95 = v4;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13();
  v98 = v6;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB60, &qword_23147A848);
  OUTLINED_FUNCTION_4();
  v100 = v7;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13();
  v99 = v9;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB68, &qword_23147A850);
  OUTLINED_FUNCTION_4();
  v93 = v10;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13();
  v97 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB70, &qword_23147A858);
  OUTLINED_FUNCTION_4();
  v91 = v14;
  v92 = v13;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v15);
  v17 = &v84 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB78, &qword_23147A860);
  OUTLINED_FUNCTION_4();
  v90 = v19;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v20);
  v22 = &v84 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB80, &qword_23147A868);
  OUTLINED_FUNCTION_4();
  v25 = v24;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v26);
  v28 = &v84 - v27;
  v29 = a1[3];
  v103 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_231424B14();
  v30 = v104;
  sub_231478948();
  if (v30)
  {
    goto LABEL_10;
  }

  v86 = v18;
  v87 = v22;
  v88 = v17;
  v31 = v101;
  v104 = v25;
  v32 = sub_2314786D8();
  result = sub_2313F8D60(v32, 0);
  v37 = v23;
  if (v35 == v36 >> 1)
  {
    v38 = v28;
LABEL_9:
    v48 = sub_231478548();
    swift_allocError();
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D7B0, &qword_23147A870);
    *v50 = &type metadata for FTSFilter;
    sub_231478658();
    sub_231478538();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84160], v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v104 + 8))(v38, v37);
LABEL_10:
    v39 = v103;
    return __swift_destroy_boxed_opaque_existential_0(v39);
  }

  v89 = v23;
  if (v35 < (v36 >> 1))
  {
    v39 = 0;
    v40 = *(v34 + v35);
    sub_2313F8D58(v35 + 1);
    v42 = v41;
    v44 = v43;
    swift_unknownObjectRelease();
    if (v42 == v44 >> 1)
    {
      v45 = v100;
      switch(v40)
      {
        case 1:
          v85 = v40;
          OUTLINED_FUNCTION_19_2();
          sub_231424C64();
          v53 = v88;
          OUTLINED_FUNCTION_6_4(&type metadata for FTSFilter.AllCodingKeys, v105);
          OUTLINED_FUNCTION_18_1();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB38, &qword_23147A838);
          OUTLINED_FUNCTION_4_4();
          sub_2314257AC(v59, v60, MEMORY[0x277D83978]);
          v75 = v92;
          v57 = v53;
          sub_2314786B8();
          swift_unknownObjectRelease();
          v78 = OUTLINED_FUNCTION_10_5();
          v79(v78, v75);
          v80 = OUTLINED_FUNCTION_8_6();
          v81(v80, v89);
          OUTLINED_FUNCTION_17_1();
          break;
        case 2:
          v85 = v40;
          v105[0] = 2;
          sub_231424C10();
          v51 = v97;
          OUTLINED_FUNCTION_6_4(&type metadata for FTSFilter.TokenCodingKeys, v105);
          OUTLINED_FUNCTION_18_1();
          v75 = sub_231478688();
          v62 = v65;
          swift_unknownObjectRelease();
          v64 = *(v93 + 8);
          v63 = v51;
          goto LABEL_16;
        case 3:
          v85 = v40;
          v105[0] = 3;
          sub_231424BBC();
          v52 = v99;
          OUTLINED_FUNCTION_6_4(&type metadata for FTSFilter.FieldCodingKeys, v105);
          OUTLINED_FUNCTION_18_1();
          v101 = v28;
          v105[0] = 0;
          v75 = sub_231478688();
          v98 = v68;
          OUTLINED_FUNCTION_19_2();
          v69 = sub_231478688();
          v70 = v52;
          v71 = (v45 + 8);
          v72 = (v104 + 8);
          v57 = v69;
          v28 = v82;
          swift_unknownObjectRelease();
          (*v71)(v70, v102);
          (*v72)(v101, v89);
          v77 = v98;
          break;
        case 4:
          v85 = v40;
          v105[0] = 4;
          sub_231424B68();
          OUTLINED_FUNCTION_6_4(&type metadata for FTSFilter.RawQueryCodingKeys, v105);
          OUTLINED_FUNCTION_18_1();
          v31 = v94;
          v75 = sub_231478688();
          v62 = v61;
          swift_unknownObjectRelease();
          v63 = OUTLINED_FUNCTION_10_5();
LABEL_16:
          v64(v63, v31);
          v66 = OUTLINED_FUNCTION_8_6();
          v67(v66, v89);
          v77 = v62;
          v57 = 0;
          v28 = 0;
          break;
        default:
          v105[0] = 0;
          sub_231424D0C();
          v46 = v87;
          v47 = v28;
          v28 = v89;
          sub_231478648();
          v85 = v40;
          v54 = v47;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DB38, &qword_23147A838);
          OUTLINED_FUNCTION_4_4();
          sub_2314257AC(v55, v56, MEMORY[0x277D83978]);
          v57 = v46;
          sub_2314786B8();
          v58 = v104;
          swift_unknownObjectRelease();
          v73 = OUTLINED_FUNCTION_16_3();
          v74(v73);
          v76 = *(v58 + 8);
          v75 = v58 + 8;
          v76(v54, v28);
          OUTLINED_FUNCTION_17_1();
          v39 = v103;
          break;
      }

      v83 = v96;
      *v96 = v75;
      v83[1] = v77;
      v83[2] = v57;
      v83[3] = v28;
      *(v83 + 32) = v85;
      return __swift_destroy_boxed_opaque_existential_0(v39);
    }

    v38 = v28;
    v37 = v89;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_2314257AC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4DB38, &qword_23147A838);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_231425824()
{
  result = qword_27DD4DB90;
  if (!qword_27DD4DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DB90);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23142588C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 33))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 4)
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

uint64_t sub_2314258CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FTSFilter.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FTSFilter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for FTSFilter.FieldCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_231425B9C(_BYTE *result, int a2, int a3)
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

unint64_t sub_231425C4C()
{
  result = qword_27DD4DB98;
  if (!qword_27DD4DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DB98);
  }

  return result;
}

unint64_t sub_231425CA4()
{
  result = qword_27DD4DBA0;
  if (!qword_27DD4DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBA0);
  }

  return result;
}

unint64_t sub_231425CFC()
{
  result = qword_27DD4DBA8;
  if (!qword_27DD4DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBA8);
  }

  return result;
}

unint64_t sub_231425D54()
{
  result = qword_27DD4DBB0;
  if (!qword_27DD4DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBB0);
  }

  return result;
}

unint64_t sub_231425DAC()
{
  result = qword_27DD4DBB8;
  if (!qword_27DD4DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBB8);
  }

  return result;
}

unint64_t sub_231425E04()
{
  result = qword_27DD4DBC0;
  if (!qword_27DD4DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBC0);
  }

  return result;
}

unint64_t sub_231425E5C()
{
  result = qword_27DD4DBC8;
  if (!qword_27DD4DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBC8);
  }

  return result;
}

unint64_t sub_231425EB4()
{
  result = qword_27DD4DBD0;
  if (!qword_27DD4DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBD0);
  }

  return result;
}

unint64_t sub_231425F0C()
{
  result = qword_27DD4DBD8;
  if (!qword_27DD4DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBD8);
  }

  return result;
}

unint64_t sub_231425F64()
{
  result = qword_27DD4DBE0;
  if (!qword_27DD4DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBE0);
  }

  return result;
}

unint64_t sub_231425FBC()
{
  result = qword_27DD4DBE8;
  if (!qword_27DD4DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBE8);
  }

  return result;
}

unint64_t sub_231426014()
{
  result = qword_27DD4DBF0;
  if (!qword_27DD4DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBF0);
  }

  return result;
}

unint64_t sub_23142606C()
{
  result = qword_27DD4DBF8;
  if (!qword_27DD4DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DBF8);
  }

  return result;
}

unint64_t sub_2314260C4()
{
  result = qword_27DD4DC00;
  if (!qword_27DD4DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DC00);
  }

  return result;
}

unint64_t sub_23142611C()
{
  result = qword_27DD4DC08;
  if (!qword_27DD4DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DC08);
  }

  return result;
}

unint64_t sub_231426174()
{
  result = qword_27DD4DC10;
  if (!qword_27DD4DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DC10);
  }

  return result;
}

unint64_t sub_2314261CC()
{
  result = qword_27DD4DC18;
  if (!qword_27DD4DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DC18);
  }

  return result;
}

unint64_t sub_231426224()
{
  result = qword_27DD4DC20;
  if (!qword_27DD4DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DC20);
  }

  return result;
}

id sub_231426290()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC28, &qword_23147B970);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v26 = type metadata accessor for Entity(0);
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2314265D8(v0);
  if (v7)
  {
    v8 = v7;
    result = sub_2313F3038(v7);
    v10 = result;
    v11 = 0;
    v25 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v10 == v11)
      {

        v21 = v25;
        goto LABEL_18;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x23192E5D0](v11, v8);
      }

      else
      {
        if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        result = *(v8 + 8 * v11 + 32);
      }

      v12 = result;
      v13 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      sub_2314724A4(v5);
      if (v2)
      {

        __swift_storeEnumTagSinglePayload(v5, 1, 1, v26);
        result = sub_231426638(v5);
        v2 = 0;
        ++v11;
      }

      else
      {

        __swift_storeEnumTagSinglePayload(v5, 0, 1, v26);
        sub_2313F0804(v5, v24);
        v14 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23141CB80();
          v14 = v19;
        }

        v16 = *(v14 + 16);
        v15 = *(v14 + 24);
        v25 = v14;
        if (v16 >= v15 >> 1)
        {
          sub_23141CB80();
          v25 = v20;
        }

        v17 = v24;
        v18 = v25;
        *(v25 + 16) = v16 + 1;
        result = sub_2313F0804(v17, v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v16);
        v11 = v13;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D658, &unk_23147B6C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_231479580;
    *(inited + 32) = 0x6974736567677573;
    *(inited + 40) = 0xEB00000000736E6FLL;
    *(inited + 48) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
    return sub_231477DC8();
  }

  return result;
}

uint64_t sub_2314265D8(void *a1)
{
  v1 = [a1 suggestions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_231477AD8();
  v3 = sub_231478128();

  return v3;
}

uint64_t sub_231426638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC28, &qword_23147B970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HistoryStats.frequency.getter()
{
  v1 = *(v0 + *(type metadata accessor for HistoryStats(0) + 20));
  if (*(v1 + 16))
  {
    v16 = MEMORY[0x277D84F90];
    v2 = OUTLINED_FUNCTION_5_5();
    sub_2314127A4(v2, v3, v4);
    v5 = v1 + 32;
    do
    {
      v5 += 2;
      OUTLINED_FUNCTION_9_6();
      if (v8)
      {
        v11 = OUTLINED_FUNCTION_20(v7);
        sub_2314127A4(v11, v1, 1);
        v6 = v16;
      }

      result = OUTLINED_FUNCTION_6_5(v6);
    }

    while (!v10);
LABEL_9:
    v12 = 0;
    v13 = 32;
    while (1)
    {
      v14 = *(result + v13);
      v15 = __OFADD__(v12, v14);
      v12 += v14;
      if (v15)
      {
        break;
      }

      v13 += 8;
      if (!--v1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    return result;
  }

  result = MEMORY[0x277D84F90];
  v1 = *(MEMORY[0x277D84F90] + 16);
  if (v1)
  {
    goto LABEL_9;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

char *sub_231426788(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v17 = result;
  v18 = a6 >> 1;
  v7 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = v6;
  v9 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v9;
  }

  v23 = MEMORY[0x277D84F90];
  result = sub_2314127E8(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v9 = v23;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ((a5 + v11) >= v18 || v11 >= v7)
      {
        goto LABEL_18;
      }

      v21 = *(a4 + a5 + v11);
      result = (v17)(&v22, &v21, &v20);
      if (v8)
      {

        return v9;
      }

      v8 = 0;
      v14 = v22;
      v23 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_2314127E8((v15 > 1), v16 + 1, 1);
        v9 = v23;
      }

      *(v9 + 16) = v16 + 1;
      *(v9 + 2 * v16 + 32) = v14;
      ++v11;
      if (v12 == v7)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t HistoryStats.recency.getter@<X0>(uint64_t a1@<X8>)
{
  sub_231476CA8();
  OUTLINED_FUNCTION_3();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t HistoryStats.frequencies.getter()
{
  type metadata accessor for HistoryStats(0);
}

uint64_t HistoryStats.init()@<X0>(uint64_t a1@<X8>)
{
  sub_231476BD8();
  v2 = sub_231478178();
  v2[2] = 8;
  v2[4] = 0;
  v2[5] = 0;
  result = type metadata accessor for HistoryStats(0);
  *(a1 + *(result + 20)) = v2;
  return result;
}

uint64_t HistoryStats.init(recency:frequencies:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_231476CA8();
  OUTLINED_FUNCTION_3();
  (*(v6 + 32))(a3, a1);
  result = type metadata accessor for HistoryStats(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

void HistoryStats.insert(date:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_231476CA8();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v21[-v11];
  sub_2313F8198(&qword_280C3CB68, MEMORY[0x277CC9590]);
  v13 = sub_231477E48();
  v14 = *(v6 + 16);
  if (v13)
  {
    v15 = a1;
  }

  else
  {
    v15 = v2;
  }

  v14(v12, v15, v4);
  (*(v6 + 40))(v2, v12, v4);
  v14(v10, a1, v4);
  sub_231426C18(v10, &v22);
  v16 = v22;
  v17 = *(type metadata accessor for HistoryStats(0) + 20);
  v18 = *(v2 + v17);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231428604();
    v18 = v20;
  }

  if (*(v18 + 16) <= v16)
  {
    __break(1u);
  }

  else
  {
    v19 = *(v18 + 32 + 2 * v16) + 1;
    if ((*(v18 + 32 + 2 * v16) + 1) == v19)
    {
      *(v18 + 32 + 2 * v16) = v19;
      *(v2 + v17) = v18;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_231426C18@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_231476C38();
  v5 = v4;
  v6 = v4;
  sub_231476CA8();
  OUTLINED_FUNCTION_3();
  result = (*(v7 + 8))(a1);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = -v5;
  if (__OFSUB__(0, v5))
  {
LABEL_24:
    __break(1u);
    return result;
  }

  if (v9 < 121)
  {
    v10 = 0;
  }

  else if (v9 < 0x259)
  {
    v10 = 1;
  }

  else if (v9 < 0xE11)
  {
    v10 = 2;
  }

  else if (v9 < 0x5461)
  {
    v10 = 3;
  }

  else if (v9 < 0x15181)
  {
    v10 = 4;
  }

  else if (v9 < 0x93A81)
  {
    v10 = 5;
  }

  else if (v9 <= 0x24EA00)
  {
    v10 = 6;
  }

  else
  {
    v10 = 7;
  }

  *a2 = v10;
  return result;
}

uint64_t HistoryStats.subscript.getter(unsigned __int8 *a1)
{
  v2 = *a1;
  result = type metadata accessor for HistoryStats(0);
  v4 = *(v1 + *(result + 20));
  if (*(v4 + 16) > v2)
  {
    return *(v4 + 2 * v2 + 32);
  }

  __break(1u);
  return result;
}

unint64_t sub_231426DB0()
{
  result = sub_2314290D4(1uLL, 9, &unk_284608830);
  qword_280C3C600 = result;
  *algn_280C3C608 = v1;
  qword_280C3C610 = v2;
  unk_280C3C618 = v3;
  return result;
}

unint64_t sub_231426DF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_231478638();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_231426E50(char a1)
{
  result = 0x79636E65636572;
  switch(a1)
  {
    case 1:
      result = 7156326;
      break;
    case 2:
      result = 1831874918;
      break;
    case 3:
      result = 1919431014;
      break;
    case 4:
      result = 1919432294;
      break;
    case 5:
      result = 0x7961643166;
      break;
    case 6:
      result = 0x7961643766;
      break;
    case 7:
      result = 0x796164383266;
      break;
    case 8:
      result = 1718511974;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_231426F44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_231426DF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_231426F74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231426E50(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_231426FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231426E40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231426FE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231426E44();
  *a1 = result;
  return result;
}

void *sub_23142700C@<X0>(void *a1@<X8>)
{
  result = sub_231426DE8();
  *a1 = result;
  return result;
}

uint64_t sub_231427034(uint64_t a1)
{
  v2 = sub_231428618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231427070(uint64_t a1)
{
  v2 = sub_231428618();

  return MEMORY[0x2821FE720](a1, v2);
}

void HistoryStats.encode(to:)()
{
  OUTLINED_FUNCTION_64();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC30, &qword_23147B090);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v8);
  v10 = v18 - v9;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v11 = sub_231428618();
  OUTLINED_FUNCTION_11_7(&type metadata for HistoryStats.CodingKeys, v12, v11);
  sub_231476CA8();
  sub_2313F8198(&qword_280C3CB70, MEMORY[0x277CC9580]);
  OUTLINED_FUNCTION_8_7();
  sub_231478748();
  if (v1)
  {
    (*(v7 + 8))(v10, v5);
  }

  else
  {
    v19 = v7;
    v20 = v5;
    if (qword_280C3C620 != -1)
    {
LABEL_16:
      OUTLINED_FUNCTION_3_3(&qword_280C3C620);
    }

    v13 = qword_280C3C600;
    v15 = qword_280C3C610;
    v14 = unk_280C3C618;
    v2 = *(v2 + *(type metadata accessor for HistoryStats(0) + 20));
    v18[1] = v13;
    swift_unknownObjectRetain();

    for (i = 0; v15 - (v14 >> 1) + i; ++i)
    {
      if ((v15 + i) >= (v14 >> 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v17 = *(v2 + 16);
      if (i == v17)
      {
        break;
      }

      if (i >= v17)
      {
        goto LABEL_15;
      }

      if (*(v2 + 2 * i + 32))
      {
        OUTLINED_FUNCTION_8_7();
        sub_231478758();
      }
    }

    (*(v19 + 8))(v10, v20);

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_62();
}

void HistoryStats.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_64();
  v25 = v24;
  v56 = v26;
  v60 = sub_231476CA8();
  OUTLINED_FUNCTION_4();
  v58 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2();
  v59 = v30 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC38, &qword_23147B098);
  OUTLINED_FUNCTION_4();
  v57 = v31;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v32);
  v34 = &v53 - v33;
  v35 = type metadata accessor for HistoryStats(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2();
  v39 = v38 - v37;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_231428618();
  sub_231478948();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    v54 = v39;
    v55 = v25;
    v40 = v58;
    sub_2313F8198(&qword_280C3C0E8, MEMORY[0x277CC95A0]);
    v41 = v59;
    v42 = v60;
    sub_2314786B8();
    v43 = (*(v40 + 32))(v54, v41, v42);
    if (qword_280C3C620 != -1)
    {
      v43 = OUTLINED_FUNCTION_3_3(&qword_280C3C620);
    }

    MEMORY[0x28223BE20](v43);
    *(&v53 - 2) = v34;
    v48 = sub_231426788(sub_23142866C, (&v53 - 4), v44, v45, v46, v47);
    v49 = v56;
    v50 = v54;
    *(v54 + *(v35 + 20)) = v48;
    v51 = OUTLINED_FUNCTION_4_5();
    v52(v51);
    sub_23142868C(v50, v49);
    __swift_destroy_boxed_opaque_existential_0(v55);
    sub_2314286F0(v50);
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_231427610@<X0>(void *a2@<X2>, _WORD *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC38, &qword_23147B098);
  result = sub_231478678();
  if (v3)
  {
    *a2 = v3;
  }

  else if ((result & 0x10000) != 0)
  {
    *a3 = 0;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

void HistoryStats.privatized.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HistoryStats(0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  sub_23142868C(v1, v5 - v4);
  sub_231427718(v6, a1);
}

void sub_231427718(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_231476CA8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  (*(v8 + 16))(v6 - v5, a1);
  sub_231426C18(v7, &v26);
  v9 = v26;
  v10 = *(a1 + *(type metadata accessor for HistoryStats(0) + 20));
  v11 = *(v10 + 16);
  if (!v11)
  {
    sub_2314286F0(a1);
    v12 = MEMORY[0x277D84F90];
LABEL_14:
    *a2 = v9;
    *(a2 + 8) = v12;
    return;
  }

  v24 = v9;
  v25 = MEMORY[0x277D84F90];
  sub_231412808(0, v11, 0);
  v12 = v25;
  v13 = (v10 + 32);
  while (1)
  {
    v15 = *v13++;
    v14 = v15;
    if (!v15)
    {
      v20 = 0;
      goto LABEL_9;
    }

    v16 = v14;
    v17 = log10(fabs(v16));
    v18 = __exp10(round(v17) + -1.0);
    v19 = v18 * round(v16 / v18);
    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v19 <= -2147483650.0)
    {
      goto LABEL_16;
    }

    if (v19 >= 2147483650.0)
    {
      goto LABEL_17;
    }

    v20 = v19;
LABEL_9:
    v22 = *(v25 + 16);
    v21 = *(v25 + 24);
    if (v22 >= v21 >> 1)
    {
      v23 = OUTLINED_FUNCTION_20(v21);
      sub_231412808(v23, v22 + 1, 1);
    }

    *(v25 + 16) = v22 + 1;
    *(v25 + 4 * v22 + 32) = v20;
    if (!--v11)
    {
      sub_2314286F0(a1);
      v9 = v24;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_231427934()
{
  v1 = *(v0 + *(type metadata accessor for HistoryStats(0) + 20));
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_231412828(0, v2, 0);
    v4 = 0;
    result = v12;
    v5 = *(v1 + 16);
    while (v5 != v4)
    {
      if (v4 >= *(v1 + 16))
      {
        goto LABEL_11;
      }

      if (v4 == 8)
      {
        goto LABEL_12;
      }

      v6 = *(v1 + 32 + 2 * v4);
      v7 = qword_23147B648[byte_284608958[v4 + 32]];
      v13 = result;
      v9 = *(result + 16);
      v8 = *(result + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = OUTLINED_FUNCTION_20(v8);
        sub_231412828(v11, v9 + 1, 1);
        result = v13;
      }

      *(result + 16) = v9 + 1;
      v10 = result + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
      if (v2 == ++v4)
      {
        return result;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

Swift::Double __swiftcall HistoryStats.computeDirichlet(bandwidth:)(Swift::Double bandwidth)
{
  v2 = sub_231427934();
  v3 = static PriorDistributionUtils.computeDirichlet(frequencies:bandwidth:)(v2, bandwidth);

  return v3;
}

uint64_t static HistoryStats.computeNormalizedDirichlet(stats:bandwidth:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for HistoryStats(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v23 = MEMORY[0x277D84F90];
    v11 = OUTLINED_FUNCTION_5_5();
    sub_231412848(v11, v12, v13);
    v10 = v23;
    v14 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v15 = *(v5 + 72);
    do
    {
      sub_23142868C(v14, v8);
      v16 = sub_231427934();
      v17 = static PriorDistributionUtils.computeDirichlet(frequencies:bandwidth:)(v16, a2);

      sub_2314286F0(v8);
      v19 = *(v23 + 16);
      v18 = *(v23 + 24);
      if (v19 >= v18 >> 1)
      {
        v20 = OUTLINED_FUNCTION_20(v18);
        sub_231412848(v20, v19 + 1, 1);
      }

      *(v23 + 16) = v19 + 1;
      *(v23 + 8 * v19 + 32) = v17;
      v14 += v15;
      --v9;
    }

    while (v9);
  }

  v21 = static PriorDistributionUtils.normalize(scores:)(v10);

  return v21;
}

uint64_t static HistoryStats.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_231476C68() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for HistoryStats(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_23140FCFC(v5, v6);
}

uint64_t PrivatizedHistoryStats.frequency.getter()
{
  v1 = *(v0 + 8);
  if (*(v1 + 16))
  {
    v15 = MEMORY[0x277D84F90];
    v2 = OUTLINED_FUNCTION_5_5();
    sub_2314127A4(v2, v3, v4);
    v5 = v1 + 32;
    do
    {
      v5 += 4;
      OUTLINED_FUNCTION_9_6();
      if (v8)
      {
        sub_2314127A4(v7 > 1, v1, 1);
        v6 = v15;
      }

      result = OUTLINED_FUNCTION_6_5(v6);
    }

    while (!v10);
LABEL_9:
    v11 = 0;
    v12 = 32;
    while (1)
    {
      v13 = *(result + v12);
      v14 = __OFADD__(v11, v13);
      v11 += v13;
      if (v14)
      {
        break;
      }

      v12 += 8;
      if (!--v1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    return result;
  }

  result = MEMORY[0x277D84F90];
  v1 = *(MEMORY[0x277D84F90] + 16);
  if (v1)
  {
    goto LABEL_9;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

unsigned __int8 *PrivatizedHistoryStats.subscript.getter(unsigned __int8 *result)
{
  v2 = *result;
  v3 = *(v1 + 8);
  if (*(v3 + 16) > v2)
  {
    return *(v3 + 4 * v2 + 32);
  }

  __break(1u);
  return result;
}

uint64_t static PrivatizedHistoryStats.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_23140FC14(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_231427E10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79636E65636572 && a2 == 0xE700000000000000;
  if (v4 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xEB00000000736569)
  {

    return 1;
  }

  else
  {
    v7 = sub_2314787C8();

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

uint64_t sub_231427EDC(char a1)
{
  if (a1)
  {
    return 0x636E657571657266;
  }

  else
  {
    return 0x79636E65636572;
  }
}

uint64_t sub_231427F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231427E10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231427F4C(uint64_t a1)
{
  v2 = sub_23142874C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231427F88(uint64_t a1)
{
  v2 = sub_23142874C();

  return MEMORY[0x2821FE720](a1, v2);
}

void PrivatizedHistoryStats.encode(to:)()
{
  OUTLINED_FUNCTION_64();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC40, &qword_23147B0A0);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v7);
  v9 = v12 - v8;
  v12[0] = *(v0 + 8);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v10 = sub_23142874C();
  OUTLINED_FUNCTION_11_7(&type metadata for PrivatizedHistoryStats.CodingKeys, v11, v10);
  sub_2314287A0();
  OUTLINED_FUNCTION_8_7();
  sub_231478748();
  if (!v1)
  {
    v12[1] = v12[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC58, &qword_23147B0A8);
    sub_231428848(&qword_27DD4DC60, MEMORY[0x277D849B0], MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_8_7();
    sub_231478748();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_62();
}

void PrivatizedHistoryStats.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_64();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC68, &qword_23147B0B0);
  OUTLINED_FUNCTION_4();
  v31 = v30;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v32);
  v34 = v36 - v33;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_23142874C();
  sub_231478948();
  if (!v24)
  {
    sub_2314287F4();
    sub_2314786B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DC58, &qword_23147B0A8);
    sub_231428848(&qword_27DD4DC78, MEMORY[0x277D849D8], MEMORY[0x277D83978]);
    sub_2314786B8();
    (*(v31 + 8))(v34, v29);
    v35 = v36[1];
    *v28 = a14;
    *(v28 + 8) = v35;
  }

  __swift_destroy_boxed_opaque_existential_0(v26);
  OUTLINED_FUNCTION_62();
}

uint64_t IntervalBucket.description.getter()
{
  result = 0x6E694D3274736170;
  switch(*v0)
  {
    case 1:
      result = 0x316F543274736170;
      break;
    case 2:
      result = 0x694D303174736170;
      break;
    case 3:
      v2 = 0x483174736170;
      goto LABEL_6;
    case 4:
      v2 = 0x483674736170;
LABEL_6:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x5472000000000000;
      break;
    case 5:
      result = 0x376F543174736170;
      break;
    case 6:
      result = 0x326F543774736170;
      break;
    case 7:
      result = 0x6168547265646C6FLL;
      break;
    default:
      return result;
  }

  return result;
}

SiriRemembers::IntervalBucket_optional __swiftcall IntervalBucket.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2314284F0@<X0>(uint64_t *a1@<X8>)
{
  result = IntervalBucket.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_231428618()
{
  result = qword_280C3C5F8;
  if (!qword_280C3C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C5F8);
  }

  return result;
}

uint64_t sub_23142868C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryStats(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314286F0(uint64_t a1)
{
  v2 = type metadata accessor for HistoryStats(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23142874C()
{
  result = qword_27DD4DC48;
  if (!qword_27DD4DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DC48);
  }

  return result;
}

unint64_t sub_2314287A0()
{
  result = qword_27DD4DC50;
  if (!qword_27DD4DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DC50);
  }

  return result;
}

unint64_t sub_2314287F4()
{
  result = qword_27DD4DC70;
  if (!qword_27DD4DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DC70);
  }

  return result;
}

uint64_t sub_231428848(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4DC58, &qword_23147B0A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2314288B8()
{
  result = qword_27DD4DC80;
  if (!qword_27DD4DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DC80);
  }

  return result;
}

void sub_231428964(uint64_t a1)
{
  sub_231476CA8();
  if (v1 <= 0x3F)
  {
    sub_2314289E8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2314289E8()
{
  if (!qword_280C3C900)
  {
    v0 = sub_231478198();
    if (!v1)
    {
      atomic_store(v0, &qword_280C3C900);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_231428A44(uint64_t a1, int a2)
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

uint64_t sub_231428A84(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for QueryOperator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for IntervalBucket(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrivatizedHistoryStats.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for HistoryStats.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_231428E1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_231428E74()
{
  result = qword_27DD4DCA8;
  if (!qword_27DD4DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DCA8);
  }

  return result;
}

unint64_t sub_231428ECC()
{
  result = qword_27DD4DCB0;
  if (!qword_27DD4DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DCB0);
  }

  return result;
}

unint64_t sub_231428F24()
{
  result = qword_27DD4DCB8;
  if (!qword_27DD4DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DCB8);
  }

  return result;
}

unint64_t sub_231428F7C()
{
  result = qword_27DD4DCC0;
  if (!qword_27DD4DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DCC0);
  }

  return result;
}

unint64_t sub_231428FD4()
{
  result = qword_280C3C5E8;
  if (!qword_280C3C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C5E8);
  }

  return result;
}

unint64_t sub_23142902C()
{
  result = qword_280C3C5F0;
  if (!qword_280C3C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C5F0);
  }

  return result;
}

unint64_t sub_231429080()
{
  result = qword_27DD4DCC8;
  if (!qword_27DD4DCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DCC8);
  }

  return result;
}

unint64_t sub_2314290D4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_231429140()
{
  v2 = type metadata accessor for Entity(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [v0 spatialEventTrigger];
  if (v6 && (v7 = v6, v8 = [v6 placemark], v7, v8))
  {
    sub_231414A00(v5);
    if (v1)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D658, &unk_23147B6C0);
      inited = swift_initStackObject();
      v13 = xmmword_231479580;
      *(inited + 16) = xmmword_231479580;
      *(inited + 32) = 0xD000000000000013;
      *(inited + 40) = 0x8000000231482800;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5D0, &unk_231479880);
      v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = v13;
      sub_2313F0868(v5, v12 + v11);
      *(inited + 48) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
      v3 = sub_231477DC8();

      sub_2313F09B4(v5);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
    return sub_231477DC8();
  }

  return v3;
}

uint64_t sub_231429384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  sub_2314788E8();
  sub_231477F38();
  sub_231477F38();
  v10 = sub_231478918();
  v11 = a5 + 56;
  v12 = -1 << *(a5 + 32);
  v13 = v10 & ~v12;
  if (((*(a5 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  v15 = *(a5 + 48);
  while (1)
  {
    v16 = (v15 + 32 * v13);
    v17 = v16[2];
    v18 = v16[3];
    v19 = *v16 == a1 && v16[1] == a2;
    if (v19 || (sub_2314787C8() & 1) != 0)
    {
      v20 = v17 == a3 && v18 == a4;
      if (v20 || (sub_2314787C8() & 1) != 0)
      {
        break;
      }
    }

    v13 = (v13 + 1) & v14;
    if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2314294D0(uint64_t a1)
{
  sub_23142C724();
  v3 = sub_231477DC8();
  v4 = MEMORY[0x277D84FA0];
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  *(v1 + 48) = *(a1 + 32);
  return v1;
}

uint64_t sub_231429534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v174 = a1;
  v9 = sub_231477B98();
  v10 = OUTLINED_FUNCTION_0_0(v9, v183);
  v167 = v11;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_0();
  v159 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DCD8, &qword_23147B7F8);
  v14 = OUTLINED_FUNCTION_0_0(v13, v178);
  v151 = v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_28(&v134 - v16);
  v17 = sub_231477BD8();
  v18 = OUTLINED_FUNCTION_0_0(v17, v182);
  v20 = v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_81();
  v154 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DCE0, &qword_23147B800);
  MEMORY[0x28223BE20](v24 - 8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v26);
  v27 = sub_231477C58();
  v28 = OUTLINED_FUNCTION_0_0(v27, &v186);
  v30 = v29;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v31);
  v32 = sub_231476D08();
  v33 = OUTLINED_FUNCTION_0_0(v32, &v185);
  v170 = v34;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v36);
  v37 = sub_231477C38();
  v38 = OUTLINED_FUNCTION_0_0(v37, &v188);
  v169 = v39;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_81();
  v161 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DCE8, &qword_23147B808);
  v43 = OUTLINED_FUNCTION_0_0(v42, v184);
  v168 = v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_28(&v134 - v45);
  v46 = sub_231477C88();
  v47 = OUTLINED_FUNCTION_0_0(v46, &v187);
  v49 = v48;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v50);
  v52 = &v134 - v51;
  swift_beginAccess();
  v53 = *(v4 + 56);
  v54 = *(v53 + 16);
  v175 = a2;

  if (v54)
  {
    v157 = v52;
    v55 = v175;

    v56 = sub_23142F590(v174, v55, a3, a4);
    if (v57)
    {
      v58 = v56;

      v59 = (*(v53 + 56) + 16 * v58);
      v60 = *v59;
      v175 = v59[1];

      return v60;
    }

    v52 = v157;
  }

  swift_beginAccess();
  v61 = *(v5 + 64);

  v62 = sub_231429384(v174, v175, a3, a4, v61);

  if (v62)
  {

    return v174;
  }

  sub_23142AC0C(v5 + 16, &v177);
  if (!v179)
  {

    sub_23140224C(&v177, &qword_27DD4DCF0, &qword_23147B810);

    return v174;
  }

  v148 = v5;
  v143 = v30;
  v147 = a4;
  v144 = v20;
  v146 = a3;
  sub_2313F198C(&v177, &v180);
  v63 = v160;
  sub_231477C78();
  swift_getKeyPath();
  v64 = swift_allocObject();
  v65 = v175;
  *(v64 + 16) = v174;
  *(v64 + 24) = v65;
  v66 = v163;
  *v163 = v64;
  v67 = v168;
  v68 = *(v168 + 13);
  v142 = *MEMORY[0x277D721C8];
  v69 = v164;
  v141 = v168 + 104;
  v140 = v68;
  v68(v66);
  sub_23142AE50(&qword_27DD4DCF8, MEMORY[0x277D73330], MEMORY[0x277D73328]);
  v70 = sub_23142AE98(&qword_27DD4DD00, &qword_27DD4DCE8, &qword_23147B808);

  v139 = v70;
  sub_231477C28();

  v138 = *(v67 + 1);
  v138(v66, v69);
  v71 = *(v49 + 8);
  v160 = v49 + 8;
  v145 = v71;
  v71(v63, v171);
  __swift_project_boxed_opaque_existential_1(&v180, v181);
  LODWORD(v65) = *MEMORY[0x277D72858];
  v72 = v169;
  v74 = v169 + 104;
  v73 = *(v169 + 104);
  v75 = v161;
  v73(v161, *MEMORY[0x277D72858], v173);
  v76 = v162;
  sub_231476CF8();
  v77 = sub_231477BE8();
  v135 = v73;
  v136 = v65;
  v137 = v74;
  v168 = (v67 + 8);
  v157 = v52;
  v78 = *(v170 + 8);
  v170 += 8;
  v78(v76, v165);
  v79 = *(v72 + 8);
  v169 = v72 + 8;
  v79(v75, v173);
  v60 = v155;
  sub_23142A614(v77, v155);

  v80 = v166;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 1, v166);
  v82 = v147;
  if (EnumTagSinglePayload == 1)
  {
    sub_23140224C(v60, &qword_27DD4DCE0, &qword_23147B800);
    v83 = v146;
    OUTLINED_FUNCTION_13_5();
    OUTLINED_FUNCTION_15_3();
    v84 = OUTLINED_FUNCTION_4_6();
    sub_23142AC7C(v84, v85, v86, v83, v82);
    swift_endAccess();
  }

  else
  {
    v161 = v79;
    v162 = v78;
    v89 = v143;
    v90 = v156;
    (*(v143 + 32))(v156, v60, v80);
    v91 = v149;
    sub_231477BB8();
    swift_getKeyPath();
    v92 = swift_allocBox();
    (*(v89 + 16))(v93, v90, v80);
    v94 = v150;
    *v150 = v92;
    v95 = v151;
    v96 = v153;
    (*(v151 + 104))(v94, v142, v153);
    v155 = sub_23142AE50(&qword_27DD4DD08, MEMORY[0x277D724B8], MEMORY[0x277D724A0]);
    sub_23142AE98(&qword_27DD4DD10, &qword_27DD4DCD8, &qword_23147B7F8);
    sub_231477C28();

    (*(v95 + 8))(v94, v96);
    v97 = v144 + 8;
    v98 = *(v144 + 8);
    (v98)(v91, v158);
    swift_getKeyPath();
    v99 = swift_allocObject();
    *&v177 = sub_231477C48();
    *(&v177 + 1) = v100;

    MEMORY[0x23192E060](46, 0xE100000000000000);

    MEMORY[0x23192E060](v146, v82);

    v101 = *(&v177 + 1);
    *(v99 + 16) = v177;
    *(v99 + 24) = v101;
    v102 = v163;
    *v163 = v99;
    v103 = v164;
    v140(v102, v142, v164);
    sub_231477C28();

    v104 = v103;
    v105 = v98;
    v138(v102, v104);
    OUTLINED_FUNCTION_10_6();
    *(v106 - 256) = v97;
    v98();
    __swift_project_boxed_opaque_existential_1(&v180, v181);
    sub_231476CF8();
    v107 = v173;
    v135(v152, v136, v173);
    v113 = sub_231477BF8();
    v114 = OUTLINED_FUNCTION_9_7();
    v115(v114);
    v116 = OUTLINED_FUNCTION_5_6();
    v117(v116);
    v60 = *(v113 + 16);
    v118 = v166;
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_13_5();
    if (v60)
    {
      v168 = v105;
      v173 = *(v167 + 16);
      v119 = (*(v167 + 80) + 32) & ~*(v167 + 80);
      v165 = v113;
      v120 = v113 + v119;
      v170 = *(v167 + 72);
      v167 += 16;
      v121 = (v167 - 8);
      v107 = (v143 + 8);
      v122 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_6_6();
      do
      {
        (v173)(v113, v120, v105);
        sub_231477B88();
        v123 = v172;
        if (__swift_getEnumTagSinglePayload(v172, 1, v118) == 1)
        {
          (*v121)(v113, v105);
          sub_23140224C(v123, &qword_27DD4DCE0, &qword_23147B800);
        }

        else
        {
          v169 = sub_231477C48();
          v90 = v124;
          (*v121)(v113, v105);
          (*v107)(v123, v118);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_23141CC58();
            v122 = v126;
          }

          v105 = v122[2];
          v113 = v105 + 1;
          if (v105 >= v122[3] >> 1)
          {
            sub_23141CC58();
            v122 = v127;
          }

          v122[2] = v113;
          v125 = &v122[2 * v105];
          v125[4] = v169;
          v125[5] = v90;
          OUTLINED_FUNCTION_13_5();
          v118 = v166;
          OUTLINED_FUNCTION_6_6();
        }

        v120 += v170;
        --v60;
      }

      while (v60);

      v128 = v146;
      v105 = v168;
      OUTLINED_FUNCTION_12_8();
    }

    else
    {

      v122 = MEMORY[0x277D84F90];
      v128 = v146;
    }

    if (v122[2])
    {
      v60 = v122[4];
      v129 = v122[5];

      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v176 = *(v90 + 56);
      sub_23142F834(v60, v129, v174, v175, v128, v107, isUniquelyReferenced_nonNull_native);
      *(v90 + 56) = v176;

      swift_endAccess();
      OUTLINED_FUNCTION_10_6();
      (v105)();
      v131 = OUTLINED_FUNCTION_8_8();
      v132(v131);
      OUTLINED_FUNCTION_7_3();
      v133();
      __swift_destroy_boxed_opaque_existential_0(&v180);
      v175 = v129;
      return v60;
    }

    OUTLINED_FUNCTION_15_3();
    v108 = OUTLINED_FUNCTION_4_6();
    sub_23142AC7C(v108, v109, v110, v128, v107);
    swift_endAccess();

    OUTLINED_FUNCTION_10_6();
    (v105)();
    v111 = OUTLINED_FUNCTION_8_8();
    v112(v111);
  }

  OUTLINED_FUNCTION_7_3();
  v87();

  __swift_destroy_boxed_opaque_existential_0(&v180);
  return v60;
}

uint64_t sub_23142A614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_231477C58();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_23142A6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for InteractionWithParameters(0);
  v6 = v5;
  if (v4)
  {
    sub_23142C2A0(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_23142A760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a7(v11);
}

uint64_t sub_23142A830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_231477F38();

  return sub_231477F38();
}

uint64_t sub_23142A880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_2314787C8(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_2314787C8();
    }
  }

  return result;
}

uint64_t sub_23142A920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2314788E8();
  sub_231477F38();
  sub_231477F38();
  return sub_231478918();
}

uint64_t sub_23142A9A8(uint64_t a1)
{
  sub_2314788E8();
  sub_231477F38();
  sub_231477F38();
  return sub_231478918();
}

uint64_t sub_23142AA28()
{
  sub_23140224C(v0 + 16, &qword_27DD4DCF0, &qword_23147B810);

  return v0;
}

uint64_t sub_23142AA68()
{
  sub_23142AA28();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_23142AAC0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23142AB00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23142AB54()
{
  result = qword_27DD4DCD0;
  if (!qword_27DD4DCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4DCD0);
  }

  return result;
}

uint64_t sub_23142ABA8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_23147B6D0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_23142AC0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DCF0, &qword_23147B810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23142AC7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_2314788E8();
  sub_231477F38();
  sub_231477F38();
  v11 = sub_231478918();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v28 = v10;
    v16 = *(v10 + 48);
    while (1)
    {
      v17 = (v16 + 32 * v14);
      v18 = v17[2];
      v19 = v17[3];
      v20 = *v17 == a2 && v17[1] == a3;
      if (v20 || (sub_2314787C8() & 1) != 0)
      {
        v21 = v18 == a4 && v19 == a5;
        if (v21 || (sub_2314787C8() & 1) != 0)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v24 = (*(v28 + 48) + 32 * v14);
    v25 = v24[1];
    v26 = v24[2];
    v27 = v24[3];
    *a1 = *v24;
    a1[1] = v25;
    a1[2] = v26;
    a1[3] = v27;

    return 0;
  }

  else
  {
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v29;

    sub_23142B80C(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v29 = v31;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_23142AE50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23142AE98(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

BOOL sub_23142AEEC(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_2314788E8();
  sub_231477F38();
  v8 = sub_231478918();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_2314787C8() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_23142B9D4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

BOOL sub_23142B038(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_2314788D8();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  sub_23142BB3C(a2, v9, isUniquelyReferenced_nonNull_native);
  *v3 = v13;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_23142B108(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD18, &unk_23147B8A8);
  result = sub_2314784B8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v31 = v2;
  v32 = v3;
  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_23142ABA8(0, (v30 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 32 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    sub_2314788E8();
    v33 = v17;
    sub_231477F38();
    sub_231477F38();
    result = sub_231478918();
    v21 = -1 << *(v5 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v5 + 48) + 32 * v24);
    v3 = v32;
    *v29 = v33;
    v29[1] = v18;
    v29[2] = v19;
    v29[3] = v20;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v12 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_23142B38C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D558, &qword_231479560);
  result = sub_2314784B8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_23142ABA8(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2314788E8();
    sub_231477F38();
    result = sub_231478918();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_23142B5E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD20, &qword_23147B8B8);
  result = sub_2314784B8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_23142ABA8(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_2314788D8();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_23142B80C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a6)
  {
    sub_23142B108(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_23142BC40();
      goto LABEL_21;
    }

    sub_23142C040(v12 + 1);
  }

  v14 = *v6;
  sub_2314788E8();
  sub_231477F38();
  sub_231477F38();
  result = sub_231478918();
  v15 = v14 + 56;
  v16 = -1 << *(v14 + 32);
  a5 = result & ~v16;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    v18 = *(v14 + 48);
    do
    {
      v19 = (v18 + 32 * a5);
      v20 = v19[2];
      v21 = v19[3];
      v22 = *v19 == v11 && v19[1] == a2;
      if (v22 || (result = sub_2314787C8(), (result & 1) != 0))
      {
        if (v20 == a3 && v21 == a4)
        {
          goto LABEL_24;
        }

        result = sub_2314787C8();
        if (result)
        {
          goto LABEL_24;
        }
      }

      a5 = (a5 + 1) & v17;
    }

    while (((*(v15 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_21:
  v24 = *v29;
  *(*v29 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = (*(v24 + 48) + 32 * a5);
  *v25 = v11;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_24:
  result = sub_231478878();
  __break(1u);
  return result;
}

unint64_t sub_23142B9D4(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_23142B38C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_23142C304(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_2314788E8();
      sub_231477F38();
      result = sub_231478918();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_2314787C8() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_23142BDA8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_231478878();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

unint64_t sub_23142BB3C(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_23142B5E8(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_23142C538(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = sub_2314788D8();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_23142BF00();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_231478878();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_23142BC40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD18, &unk_23147B8A8);
  v2 = *v0;
  v3 = sub_2314784A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + 32 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_23142BDA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D558, &qword_231479560);
  v2 = *v0;
  v3 = sub_2314784A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}