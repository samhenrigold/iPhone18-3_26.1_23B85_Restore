uint64_t sub_252A034B8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_252A0351C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x69746E45656D6F68;
    v6 = 0xD000000000000010;
    if (a1 != 2)
    {
      v6 = 0x7954656369766564;
    }

    if (a1)
    {
      v5 = 1701869940;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1701670760;
    v2 = 0x70756F7267;
    if (a1 != 7)
    {
      v2 = 0x73656E6F7ALL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x707954656E656373;
    if (a1 != 4)
    {
      v3 = 1836019570;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_252A036A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252A0745C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252A036CC(uint64_t a1)
{
  v2 = sub_252A06038();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252A03708(uint64_t a1)
{
  v2 = sub_252A06038();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_252A03744(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541908, &qword_252E40EC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A06038();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for CodableEntity();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v16) = 0;
    *(v1 + 16) = sub_252E37BA4();
    *(v1 + 24) = v8;

    LOBYTE(v16) = 1;
    *(v1 + 32) = sub_252E37C44();
    LOBYTE(v16) = 2;
    *(v1 + 40) = sub_252E37BA4();
    *(v1 + 48) = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416D8, &qword_252E40998);
    v15 = 3;
    sub_252A06B28(&qword_27F541918, MEMORY[0x277D83BB8], MEMORY[0x277D83978]);
    sub_252E37C64();
    *(v1 + 56) = v16;
    LOBYTE(v16) = 4;
    *(v1 + 64) = sub_252E37C44();
    LOBYTE(v16) = 5;
    *(v1 + 72) = sub_252E37BA4();
    *(v1 + 80) = v11;

    LOBYTE(v16) = 6;
    *(v1 + 88) = sub_252E37BA4();
    *(v1 + 96) = v12;

    LOBYTE(v16) = 7;
    *(v1 + 104) = sub_252E37BA4();
    *(v1 + 112) = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    v15 = 8;
    sub_252A0608C();
    sub_252E37C64();
    (*(v5 + 8))(v7, v4);
    *(v1 + 120) = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_252A03B40(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541990, &qword_252E40F08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A06038();
  sub_252E37F84();
  v12 = *(v3 + 16);
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_25292FA38();
  sub_252E37D54();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_252E37D34();
    v12 = *(v3 + 40);
    v11 = 2;
    sub_252E37D54();
    *&v12 = *(v3 + 56);
    v11 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416D8, &qword_252E40998);
    sub_252A06B28(&qword_27F541998, MEMORY[0x277D83B90], MEMORY[0x277D83948]);
    sub_252E37D54();
    LOBYTE(v12) = 4;
    sub_252E37D34();
    v12 = *(v3 + 72);
    v11 = 5;
    sub_252E37D54();
    v12 = *(v3 + 88);
    v11 = 6;
    sub_252E37D54();
    v12 = *(v3 + 104);
    v11 = 7;
    sub_252E37D54();
    *&v12 = *(v3 + 120);
    v11 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    sub_252A06B94();
    sub_252E37D54();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_252A03EDC()
{
  v1 = v0;
  v2 = sub_252E25BD0(v0[4]);
  v4 = v3;
  v5 = v1[7];
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = MEMORY[0x277D84F90];
    v8 = 32;
    do
    {
      v9 = sub_252E25FC4(*(v5 + v8));
      if ((v10 & 1) == 0)
      {
        v11 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2529F7B8C(0, *(v7 + 2) + 1, 1, v7);
        }

        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          v7 = sub_2529F7B8C((v12 > 1), v13 + 1, 1, v7);
        }

        *(v7 + 2) = v13 + 1;
        *&v7[8 * v13 + 32] = v11;
      }

      v8 += 8;
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v4)
  {
    v14 = 0;
  }

  else
  {
    v14 = v2;
  }

  v15 = sub_252E263B8(v1[8]);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  HomeEntity.Builder.init()();
  v18 = v1[2];
  v19 = v1[3];
  v21 = *(*v20 + 376);

  v22 = v21(v18, v19);

  v23 = (*(*v22 + 384))(v14);

  v24 = v1[5];
  v25 = v1[6];
  v26 = *(*v23 + 392);

  v27 = v26(v24, v25);

  v28 = (*(*v27 + 400))(v7);

  v29 = (*(*v28 + 408))(v17);

  v30 = v1[9];
  v31 = v1[10];
  v32 = *(*v29 + 416);

  v33 = v32(v30, v31);

  v34 = v1[11];
  v35 = v1[12];
  v36 = *(*v33 + 424);

  v37 = v36(v34, v35);

  v38 = v1[13];
  v39 = v1[14];
  v40 = *(*v37 + 432);

  v41 = v40(v38, v39);

  v42 = *(*v41 + 440);

  v44 = v42(v43);

  v46 = (*(*v44 + 448))(v45);

  return v46;
}

void *sub_252A04394()
{

  return v0;
}

uint64_t sub_252A043E4()
{
  sub_252A04394();

  return swift_deallocClassInstance();
}

uint64_t sub_252A044A4()
{
  v1 = *v0;
  sub_252E37EC4();
  MEMORY[0x2530AE390](v1);
  return sub_252E37F14();
}

uint64_t sub_252A044EC(uint64_t a1)
{
  v2 = *v1;
  sub_252E37EC4();
  MEMORY[0x2530AE390](v2);
  return sub_252E37F14();
}

uint64_t sub_252A04530()
{
  if (*v0)
  {
    return 0x6374754F6B736174;
  }

  else
  {
    return 0x6B73615472657375;
  }
}

uint64_t sub_252A04574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B73615472657375 && a2 == 0xE800000000000000;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6374754F6B736174 && a2 == 0xEB00000000656D6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_252A04654(uint64_t a1)
{
  v2 = sub_252A06108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252A04690(uint64_t a1)
{
  v2 = sub_252A06108();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252A046CC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541920, &qword_252E40EC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A06108();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for CodableHomeUserTaskResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for CodableUserTask();
    v11[15] = 0;
    sub_252A06D60(&qword_27F541930, type metadata accessor for CodableUserTask, byte_252E40E58);
    sub_252E37BE4();
    *(v1 + 16) = v12;

    v11[14] = 1;
    v10 = sub_252E37C44();
    (*(v6 + 8))(v8, v5);
    *(v3 + 24) = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_252A048F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541970, &qword_252E40EF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A06108();
  sub_252E37F84();
  v11 = *(v3 + 16);
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541978, &qword_252E40F00);
  sub_252A06A74();
  sub_252E37D54();
  if (!v2)
  {
    v10[6] = 1;
    sub_252E37D34();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_252A04A9C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252A04B60()
{
  v1 = 0x7475626972747461;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657079546B736174;
  }
}

uint64_t sub_252A04BBC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252A07750(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252A04BE4(uint64_t a1)
{
  v2 = sub_252A05F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252A04C20(uint64_t a1)
{
  v2 = sub_252A05F90();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_252A04C5C(void *a1)
{
  v2 = v1;
  v1[4] = 0;
  v1[2] = [a1 taskType];
  v1[3] = [a1 attribute];
  v4 = [a1 value];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CodableAttributeValue();
    swift_allocObject();
    v6 = sub_252A061B0(v5);

    v2[4] = v6;
  }

  else
  {
  }

  return v2;
}

void *sub_252A04D10(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5418C0, &qword_252E40EA8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v1[4] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A05F90();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for CodableUserTask();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = 0;
    v1[2] = sub_252E37C44();
    v11 = 1;
    v1[3] = sub_252E37C44();
    type metadata accessor for CodableAttributeValue();
    v10 = 2;
    sub_252A06D60(&qword_27F5418D0, type metadata accessor for CodableAttributeValue, aO);
    sub_252E37BE4();
    (*(v5 + 8))(v7, v4);
    v1[4] = v9[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_252A04F7C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541950, &qword_252E40EE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A05F90();
  sub_252E37F84();
  v13 = 0;
  sub_252E37D34();
  if (!v2)
  {
    v12 = 1;
    sub_252E37D34();
    v11 = *(v3 + 32);
    v10[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541958, &qword_252E40EF0);
    sub_252A069C0();
    sub_252E37D54();
  }

  return (*(v6 + 8))(v8, v5);
}

id sub_252A05170()
{
  v1 = sub_252E26B5C(v0[2]);
  v3 = v2;
  v4 = sub_252E26F50(v0[3]);
  v6 = v5;
  if (v0[4])
  {

    v7 = sub_252A05A90();
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  if (v3)
  {
    v1 = 0;
  }

  v9 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v10 = sub_252E36F04();
  v11 = [v9 initWithIdentifier:0 displayString:v10];

  v12 = v11;
  [v12 setTaskType_];
  [v12 setAttribute_];
  [v12 setValue_];

  return v12;
}

uint64_t sub_252A05280()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252A052DC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1701869940;
    v6 = 0x6156656C62756F64;
    if (a1 != 2)
    {
      v6 = 0x5672656765746E69;
    }

    if (a1)
    {
      v5 = 0x756C61566C6F6F62;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6E61527265707075;
    v2 = 0x6E61527265776F6CLL;
    if (a1 != 7)
    {
      v2 = 1953066613;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6156676E69727473;
    if (a1 != 4)
    {
      v3 = 0x6C615674696D696CLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_252A0547C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252A0786C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252A054A4(uint64_t a1)
{
  v2 = sub_252A0615C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252A054E0(uint64_t a1)
{
  v2 = sub_252A0615C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252A0551C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541938, &qword_252E40ED0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-v7];
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A0615C();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for CodableAttributeValue();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15[31] = 0;
    *(v1 + 16) = sub_252E37C44();
    v15[30] = 1;
    *(v1 + 24) = sub_252E37C14() & 1;
    v15[29] = 2;
    sub_252E37C24();
    *(v1 + 32) = v9;
    v15[28] = 3;
    *(v1 + 40) = sub_252E37C44();
    v15[27] = 4;
    *(v1 + 48) = sub_252E37BA4();
    *(v1 + 56) = v11;

    v15[26] = 5;
    *(v1 + 64) = sub_252E37C44();
    v15[25] = 6;
    sub_252E37C24();
    *(v1 + 80) = v12;
    v15[24] = 7;
    sub_252E37C24();
    *(v1 + 88) = v13;
    v15[15] = 8;
    v14 = sub_252E37C44();
    (*(v6 + 8))(v8, v5);
    *(v3 + 72) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_252A057DC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541948, &unk_252E40ED8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A0615C();
  sub_252E37F84();
  LOBYTE(v11) = 0;
  sub_252E37D34();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_252E37D04();
    LOBYTE(v11) = 2;
    sub_252E37D14();
    LOBYTE(v11) = 3;
    sub_252E37D34();
    v11 = *(v3 + 48);
    v10[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    sub_25292FA38();
    sub_252E37D54();
    LOBYTE(v11) = 5;
    sub_252E37D34();
    LOBYTE(v11) = 6;
    sub_252E37D14();
    LOBYTE(v11) = 7;
    sub_252E37D14();
    LOBYTE(v11) = 8;
    sub_252E37D34();
  }

  return (*(v6 + 8))(v8, v5);
}

id sub_252A05A90()
{
  v1 = sub_252E27344(*(v0 + 16));
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  v4 = sub_252E263B8(*(v0 + 72));
  v5 = 0;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  if (v3 > 3)
  {
    switch(v3)
    {
      case 4:
        v25 = *(v0 + 40);
        v26 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v27 = sub_252E36F04();
        v28 = [v26 initWithIdentifier:0 displayString:v27];

        v5 = v28;
        [v5 setIntegerValue_];
        [v5 setUnit_];
        [v5 setType_];
        break;
      case 5:
        v33 = *(v0 + 64);
        if (v33 == 2)
        {
          v34 = 2;
        }

        else
        {
          v34 = v33 == 1;
        }

        v35 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v36 = sub_252E36F04();
        v37 = [v35 initWithIdentifier:0 displayString:v36];

        v5 = v37;
        [v5 setType_];
        [v5 setLimitValue_];
        break;
      case 6:
        v12 = *(v0 + 80);
        v11 = *(v0 + 88);
        v13 = objc_allocWithZone(type metadata accessor for HomeAttributeRange());
        v14 = sub_252E36F04();
        v15 = [v13 initWithIdentifier:0 displayString:v14];

        v16 = v15;
        [v16 setLowerValue_];
        [v16 setUpperValue_];

        v17 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v18 = sub_252E36F04();
        v19 = [v17 initWithIdentifier:0 displayString:v18];

        v5 = v19;
        [v5 setType_];
        v20 = v16;
        [v5 setRangeValue_];

        break;
      default:
        return v5;
    }

LABEL_24:

    return v5;
  }

  switch(v3)
  {
    case 1:
      v21 = *(v0 + 24);
      v22 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v23 = sub_252E36F04();
      v24 = [v22 initWithIdentifier:0 displayString:v23];

      v5 = v24;
      [v5 setBoolValue_];
      [v5 setType_];
      goto LABEL_24;
    case 2:
      v29 = *(v0 + 32);
      v30 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v31 = sub_252E36F04();
      v32 = [v30 initWithIdentifier:0 displayString:v31];

      v5 = v32;
      [v5 setDoubleValue_];
      [v5 setUnit_];
      [v5 setType_];
      goto LABEL_24;
    case 3:
      v8 = *(v0 + 56);
      if (v8)
      {
        v9 = *(v0 + 48);
        v10 = v8;
      }

      else
      {
        v9 = 0;
        v10 = 0xE000000000000000;
      }

      type metadata accessor for HomeAttributeValue();

      return HomeAttributeValue.__allocating_init(stringValue:unit:)(v9, v10, v7);
  }

  return v5;
}

uint64_t sub_252A05E5C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252A05EFC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  a2();
  v9 = swift_allocObject();
  result = a4(a1);
  if (!v5)
  {
    *a5 = v9;
  }

  return result;
}

unint64_t sub_252A05F90()
{
  result = qword_27F5418C8;
  if (!qword_27F5418C8)
  {
    result = swift_getWitnessTable(asc_252E41404, &type metadata for CodableUserTask.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5418C8);
  }

  return result;
}

unint64_t sub_252A05FE4()
{
  result = qword_27F5418E0;
  if (!qword_27F5418E0)
  {
    result = swift_getWitnessTable(aU_1, &type metadata for CodableEntityResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5418E0);
  }

  return result;
}

unint64_t sub_252A06038()
{
  result = qword_27F541910;
  if (!qword_27F541910)
  {
    result = swift_getWitnessTable(aT, &type metadata for CodableEntity.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F541910);
  }

  return result;
}

unint64_t sub_252A0608C()
{
  result = qword_27F540920;
  if (!qword_27F540920)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540480, &qword_252E3C910);
    v4[0] = MEMORY[0x277D83808];
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F540920);
  }

  return result;
}

unint64_t sub_252A06108()
{
  result = qword_27F541928;
  if (!qword_27F541928)
  {
    result = swift_getWitnessTable(byte_252E41314, &type metadata for CodableHomeUserTaskResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F541928);
  }

  return result;
}

unint64_t sub_252A0615C()
{
  result = qword_27F541940;
  if (!qword_27F541940)
  {
    result = swift_getWitnessTable(aE_1, &type metadata for CodableAttributeValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F541940);
  }

  return result;
}

uint64_t sub_252A061B0(void *a1)
{
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 16) = [a1 type];
  *(v1 + 24) = [a1 BOOLValue];
  [a1 doubleValue];
  *(v1 + 32) = v3;
  *(v1 + 40) = [a1 integerValue];
  v4 = [a1 stringValue];
  if (v4)
  {
    v5 = v4;
    v6 = sub_252E36F34();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *(v1 + 48) = v6;
  *(v1 + 56) = v8;

  *(v1 + 64) = [a1 limitValue];
  v9 = [a1 rangeValue];
  v10 = 0;
  v11 = 0;
  if (v9)
  {
    v12 = v9;
    [v9 upperValue];
    v11 = v13;
  }

  *(v1 + 80) = v11;
  v14 = [a1 rangeValue];
  if (v14)
  {
    v15 = v14;
    [v14 lowerValue];
    v10 = v16;
  }

  *(v1 + 88) = v10;
  *(v1 + 72) = [a1 unit];
  return v1;
}

void sub_252A06320(void *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  v3 = [a1 homeEntityName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_252E36F34();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v1 + 16) = v5;
  *(v1 + 24) = v7;

  *(v1 + 32) = [a1 type];
  v8 = [a1 entityIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_252E36F34();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v1 + 40) = v10;
  *(v1 + 48) = v12;

  v13 = [a1 deviceTypes];
  if (v13)
  {
    v14 = v13;
    v15 = sub_252E37264();

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = sub_2529F8104(0, 1, 1, MEMORY[0x277D84F90]);
      v18 = (v15 + 32);
      v19 = *(v17 + 2);
      do
      {
        v21 = *v18++;
        v20 = v21;
        v22 = *(v17 + 3);
        if (v19 >= v22 >> 1)
        {
          v17 = sub_2529F8104((v22 > 1), v19 + 1, 1, v17);
        }

        *(v17 + 2) = v19 + 1;
        *&v17[8 * v19++ + 32] = v20;
        --v16;
      }

      while (v16);
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v17 = &unk_2864A9290;
  }

  *(v1 + 56) = v17;
  *(v1 + 64) = [a1 sceneType];
  v23 = [a1 room];
  if (v23)
  {
    v24 = v23;
    v25 = sub_252E36F34();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  *(v1 + 72) = v25;
  *(v1 + 80) = v27;

  v28 = [a1 home];
  if (v28)
  {
    v29 = v28;
    v30 = sub_252E36F34();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  *(v1 + 88) = v30;
  *(v1 + 96) = v32;

  v33 = [a1 group];
  if (v33)
  {
    v34 = v33;
    v35 = sub_252E36F34();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  *(v1 + 104) = v35;
  *(v1 + 112) = v37;

  v38 = [a1 zones];
  if (!v38)
  {
    v44 = MEMORY[0x277D84F90];
LABEL_39:
    *(v1 + 120) = v44;
    return;
  }

  v39 = v38;
  v40 = sub_252E37264();

  v41 = *(v40 + 16);
  if (!v41)
  {
    v44 = MEMORY[0x277D84F90];
LABEL_38:

    goto LABEL_39;
  }

  v42 = 0;
  v43 = (v40 + 40);
  v44 = MEMORY[0x277D84F90];
  while (v42 < *(v40 + 16))
  {
    v46 = *(v43 - 1);
    v45 = *v43;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_2529F7A80(0, *(v44 + 2) + 1, 1, v44);
    }

    v48 = *(v44 + 2);
    v47 = *(v44 + 3);
    if (v48 >= v47 >> 1)
    {
      v44 = sub_2529F7A80((v47 > 1), v48 + 1, 1, v44);
    }

    ++v42;
    *(v44 + 2) = v48 + 1;
    v49 = &v44[16 * v48];
    *(v49 + 4) = v46;
    *(v49 + 5) = v45;
    v43 += 2;
    if (v41 == v42)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
}

unint64_t sub_252A066DC(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  v4 = [a1 entity];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for CodableEntity();
    swift_allocObject();
    sub_252A06320(v5);
    v7 = v6;

    *(v2 + 16) = v7;
  }

  v8 = [a1 taskResponses];
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = v8;
    type metadata accessor for HomeUserTaskResponse();
    v11 = sub_252E37264();

    v25 = v9;
    if (v11 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v24 = v2;
      v2 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x2530ADF00](v2, v11);
        }

        else
        {
          if (v2 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v13 = *(v11 + 8 * v2 + 32);
        }

        v14 = v13;
        v9 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        type metadata accessor for CodableHomeUserTaskResponse();
        v15 = swift_allocObject();
        *(v15 + 16) = 0;
        v16 = [v14 userTask];
        if (v16)
        {
          v17 = v16;
          type metadata accessor for CodableUserTask();
          v18 = swift_allocObject();
          v18[4] = 0;
          v18[2] = [v17 taskType];
          v18[3] = [v17 attribute];
          v19 = [v17 value];
          if (v19)
          {
            v20 = v19;
            type metadata accessor for CodableAttributeValue();
            swift_allocObject();
            v21 = sub_252A061B0(v20);

            v18[4] = v21;
          }

          else
          {
          }

          *(v15 + 16) = v18;
        }

        v22 = [v14 taskOutcome];

        *(v15 + 24) = v22;
        MEMORY[0x2530AD700]();
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v2;
        if (v9 == i)
        {
          v9 = v25;
          v2 = v24;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

LABEL_21:
  }

  *(v2 + 24) = v9;
  return v2;
}

unint64_t sub_252A069C0()
{
  result = qword_27F541960;
  if (!qword_27F541960)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F541958, &qword_252E40EF0);
    v4[0] = sub_252A06D60(&qword_27F541968, type metadata accessor for CodableAttributeValue, byte_252E40D18);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27F541960);
  }

  return result;
}

unint64_t sub_252A06A74()
{
  result = qword_27F541980;
  if (!qword_27F541980)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F541978, &qword_252E40F00);
    v4[0] = sub_252A06D60(&qword_27F541988, type metadata accessor for CodableUserTask, aY_10);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27F541980);
  }

  return result;
}

uint64_t sub_252A06B28(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5416D8, &qword_252E40998);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252A06B94()
{
  result = qword_27F540B18;
  if (!qword_27F540B18)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540480, &qword_252E3C910);
    v4[0] = MEMORY[0x277D837D8];
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27F540B18);
  }

  return result;
}

unint64_t sub_252A06C10()
{
  result = qword_27F5419B0;
  if (!qword_27F5419B0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5419A8, &qword_252E40F18);
    v4[0] = sub_252A06D60(&qword_27F5419B8, type metadata accessor for CodableEntity, asc_252E40DB8);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27F5419B0);
  }

  return result;
}

uint64_t sub_252A06CC4(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5418F0, &qword_252E40EB8);
    v10 = sub_252A06D60(a2, type metadata accessor for CodableHomeUserTaskResponse, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252A06D60(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2();
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeAutomationIntent.Verb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeAutomationIntent.Verb(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252A06F38()
{
  result = qword_27F5419D0;
  if (!qword_27F5419D0)
  {
    result = swift_getWitnessTable(asc_252E40FBC, &type metadata for CodableUserTask.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5419D0);
  }

  return result;
}

unint64_t sub_252A06F90()
{
  result = qword_27F5419D8;
  if (!qword_27F5419D8)
  {
    result = swift_getWitnessTable(aU_2, &type metadata for CodableEntityResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5419D8);
  }

  return result;
}

unint64_t sub_252A06FE8()
{
  result = qword_27F5419E0;
  if (!qword_27F5419E0)
  {
    result = swift_getWitnessTable(byte_252E4112C, &type metadata for CodableEntity.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5419E0);
  }

  return result;
}

unint64_t sub_252A07040()
{
  result = qword_27F5419E8;
  if (!qword_27F5419E8)
  {
    result = swift_getWitnessTable(byte_252E411E4, &type metadata for CodableHomeUserTaskResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5419E8);
  }

  return result;
}

unint64_t sub_252A07098()
{
  result = qword_27F5419F0;
  if (!qword_27F5419F0)
  {
    result = swift_getWitnessTable(asc_252E4129C, &type metadata for CodableAttributeValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5419F0);
  }

  return result;
}

unint64_t sub_252A070F0()
{
  result = qword_27F5419F8;
  if (!qword_27F5419F8)
  {
    result = swift_getWitnessTable(byte_252E4120C, &type metadata for CodableAttributeValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5419F8);
  }

  return result;
}

unint64_t sub_252A07148()
{
  result = qword_27F541A00;
  if (!qword_27F541A00)
  {
    result = swift_getWitnessTable(byte_252E41234, &type metadata for CodableAttributeValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F541A00);
  }

  return result;
}

unint64_t sub_252A071A0()
{
  result = qword_27F541A08;
  if (!qword_27F541A08)
  {
    result = swift_getWitnessTable(aM_0, &type metadata for CodableHomeUserTaskResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F541A08);
  }

  return result;
}

unint64_t sub_252A071F8()
{
  result = qword_27F541A10;
  if (!qword_27F541A10)
  {
    result = swift_getWitnessTable(asc_252E4117C, &type metadata for CodableHomeUserTaskResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F541A10);
  }

  return result;
}

unint64_t sub_252A07250()
{
  result = qword_27F541A18;
  if (!qword_27F541A18)
  {
    result = swift_getWitnessTable(byte_252E4109C, &type metadata for CodableEntity.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F541A18);
  }

  return result;
}

unint64_t sub_252A072A8()
{
  result = qword_27F541A20;
  if (!qword_27F541A20)
  {
    result = swift_getWitnessTable(byte_252E410C4, &type metadata for CodableEntity.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F541A20);
  }

  return result;
}

unint64_t sub_252A07300()
{
  result = qword_27F541A28;
  if (!qword_27F541A28)
  {
    result = swift_getWitnessTable(byte_252E40FE4, &type metadata for CodableEntityResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F541A28);
  }

  return result;
}

unint64_t sub_252A07358()
{
  result = qword_27F541A30;
  if (!qword_27F541A30)
  {
    result = swift_getWitnessTable(aD0, &type metadata for CodableEntityResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F541A30);
  }

  return result;
}

unint64_t sub_252A073B0()
{
  result = qword_27F541A38;
  if (!qword_27F541A38)
  {
    result = swift_getWitnessTable(aU_3, &type metadata for CodableUserTask.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F541A38);
  }

  return result;
}

unint64_t sub_252A07408()
{
  result = qword_27F541A40;
  if (!qword_27F541A40)
  {
    result = swift_getWitnessTable(byte_252E40F54, &type metadata for CodableUserTask.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F541A40);
  }

  return result;
}

uint64_t sub_252A0745C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746E45656D6F68 && a2 == 0xEE00656D614E7974;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000252E66560 == a2 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEB00000000736570 || (sub_252E37DB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x707954656E656373 && a2 == 0xE900000000000065 || (sub_252E37DB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1836019570 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701670760 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x73656E6F7ALL && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_252A07750(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657079546B736174 && a2 == 0xE800000000000000;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xE900000000000065 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_252A0786C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756C61566C6F6F62 && a2 == 0xE900000000000065 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6156656C62756F64 && a2 == 0xEB0000000065756CLL || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5672656765746E69 && a2 == 0xEC00000065756C61 || (sub_252E37DB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6156676E69727473 && a2 == 0xEB0000000065756CLL || (sub_252E37DB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C615674696D696CLL && a2 == 0xEA00000000006575 || (sub_252E37DB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E61527265707075 && a2 == 0xEA00000000006567 || (sub_252E37DB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E61527265776F6CLL && a2 == 0xEA00000000006567 || (sub_252E37DB4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

id EventTriggerValue.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id EventTriggerValue.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EventTriggerValue(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EventTriggerValue(uint64_t a1)
{
  result = qword_27F541A50;
  if (!qword_27F541A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252A07F00(uint64_t a1)
{
  sub_252A08028(319, &qword_27F541A60, MEMORY[0x277CC8990]);
  if (v1 <= 0x3F)
  {
    sub_252A08028(319, &qword_27F5415C0, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_252A08028(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_252E37734();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_252A080E8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return (sub_252A081D4)(a2);
}

void *sub_252A08198@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BlockMissingSceneHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

uint64_t sub_252A081D4()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A08270, 0, 0);
}

uint64_t sub_252A08270()
{

  sub_252E362B4();

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_25295A234;
  v2 = *(v0 + 24);

  return sub_252958618(v2);
}

uint64_t sub_252A08364()
{
  v1 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_event;
  v2 = sub_252E36324();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_time) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_offset) = 0;
  v3(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_home, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isOffsetToPast) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isRecurrence) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isWeekday) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isWeekend) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isEveryday) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_recurrence) = 0;
  return v0;
}

uint64_t sub_252A08464()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_event);

  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_home);

  return swift_deallocClassInstance();
}

uint64_t sub_252A08508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  if (a1 == 0x746E657665 && a2 == 0xE500000000000000 || (result = sub_252E37DB4(), (result & 1) != 0))
  {
    sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, v15);
    v17 = sub_252E36324();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v15, 1, v17) == 1)
    {
      v19 = v15;
LABEL_6:
      result = sub_252938BBC(v19);
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v17;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(v18 + 32))(boxed_opaque_existential_0, v15, v17);
  }

  if (a1 == 1701669236 && a2 == 0xE400000000000000 || (result = sub_252E37DB4(), (result & 1) != 0))
  {
    v21 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_time);
    if (!v21)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  result = 0x74657366666FLL;
  if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000 || (result = sub_252E37DB4(), (result & 1) != 0))
  {
    v21 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_offset);
    if (!v21)
    {
      goto LABEL_7;
    }

    v22 = sub_252E36294();
    goto LABEL_14;
  }

  if ((a1 != 1701670760 || a2 != 0xE400000000000000) && (sub_252E37DB4() & 1) == 0)
  {
    result = 0x74657366664F7369;
    if (a1 == 0x74657366664F7369 && a2 == 0xEE00747361506F54 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v26 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isOffsetToPast;
    }

    else
    {
      result = 0x7272756365527369;
      if (a1 == 0x7272756365527369 && a2 == 0xEC00000065636E65 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v26 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isRecurrence;
      }

      else
      {
        result = 0x61646B6565577369;
        if (a1 == 0x61646B6565577369 && a2 == 0xE900000000000079 || (result = sub_252E37DB4(), (result & 1) != 0))
        {
          v26 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isWeekday;
        }

        else
        {
          result = 0x6E656B6565577369;
          if (a1 == 0x6E656B6565577369 && a2 == 0xE900000000000064 || (result = sub_252E37DB4(), (result & 1) != 0))
          {
            v26 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isWeekend;
          }

          else
          {
            result = 0x6479726576457369;
            if (a1 != 0x6479726576457369 || a2 != 0xEA00000000007961)
            {
              result = sub_252E37DB4();
              if ((result & 1) == 0)
              {
                result = 0x6E65727275636572;
                if (a1 == 0x6E65727275636572 && a2 == 0xEA00000000006563 || (result = sub_252E37DB4(), (result & 1) != 0))
                {
                  v21 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_recurrence);
                  if (!v21)
                  {
                    goto LABEL_7;
                  }

LABEL_13:
                  v22 = sub_252E36224();
LABEL_14:
                  *(a3 + 24) = v22;
                  *a3 = v21;
                }

                if (a1 == 0x42746E6576457369 && a2 == 0xEC00000064657361 || (sub_252E37DB4() & 1) != 0)
                {
                  sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, v10);
                  v28 = sub_252E36324();
                  v29 = (*(*(v28 - 8) + 48))(v10, 1, v28) != 1;
                  result = sub_252938BBC(v10);
                  *(a3 + 24) = MEMORY[0x277D839B0];
                  *a3 = v29;
                  return result;
                }

                result = 0x6142656D69547369;
                if (a1 != 0x6142656D69547369 || a2 != 0xEB00000000646573)
                {
                  result = sub_252E37DB4();
                  if ((result & 1) == 0)
                  {
                    goto LABEL_7;
                  }
                }

                v27 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_time) != 0;
LABEL_33:
                *(a3 + 24) = MEMORY[0x277D839B0];
                *a3 = v27;
                return result;
              }
            }

            v26 = OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isEveryday;
          }
        }
      }
    }

    v27 = *(v3 + v26);
    goto LABEL_33;
  }

  sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_home, v13);
  v23 = sub_252E36324();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v13, 1, v23) == 1)
  {
    v19 = v13;
    goto LABEL_6;
  }

  *(a3 + 24) = v23;
  v25 = __swift_allocate_boxed_opaque_existential_0(a3);
  return (*(v24 + 32))(v25, v13, v23);
}

uint64_t sub_252A08B58(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6E656B6565577369;
    v6 = 0x6479726576457369;
    if (a1 != 8)
    {
      v6 = 0x6E65727275636572;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7272756365527369;
    if (a1 != 5)
    {
      v7 = 0x61646B6565577369;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746E657665;
    v2 = 0x74657366666FLL;
    v3 = 1701670760;
    if (a1 != 3)
    {
      v3 = 0x74657366664F7369;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701669236;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_252A08CA0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_252A08B58(*a1);
  v5 = v4;
  if (v3 == sub_252A08B58(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252A08D28()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252A08B58(v1);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A08D8C(uint64_t a1)
{
  sub_252A08B58(*v1);
  sub_252E37044();
}

uint64_t sub_252A08DE0(uint64_t a1)
{
  v2 = *v1;
  sub_252E37EC4();
  sub_252A08B58(v2);
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252A08E40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252A0A218(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_252A08E70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252A08B58(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_252A08EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252A0A218(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252A08EEC(uint64_t a1)
{
  v2 = sub_252A09DF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252A08F28(uint64_t a1)
{
  v2 = sub_252A09DF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252A08F64()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event);

  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_home);

  return swift_deallocClassInstance();
}

void sub_252A09038(uint64_t a1)
{
  sub_2529576E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_252A090EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AB0, &qword_252E41650);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A09DF8();
  sub_252E37F84();
  LOBYTE(v15) = 0;
  sub_252E36324();
  sub_252A09DB0(&qword_27F540548, MEMORY[0x277D55C48], MEMORY[0x277D55C50]);
  v13 = v3;
  sub_252E37CD4();
  if (!v2)
  {
    v15 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_time);
    v14 = 1;
    v9 = sub_252E36224();
    v10 = sub_252A09DB0(&qword_27F541AB8, MEMORY[0x277D55B90], MEMORY[0x277D55B98]);
    sub_252E37CD4();
    v12[0] = v10;
    v12[1] = v9;
    v15 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_offset);
    v14 = 2;
    sub_252E36294();
    sub_252A09DB0(&qword_27F540E10, MEMORY[0x277D55BB0], MEMORY[0x277D55BB8]);
    sub_252E37CD4();
    LOBYTE(v15) = 3;
    sub_252E37CD4();
    LOBYTE(v15) = 4;
    sub_252E37D04();
    LOBYTE(v15) = 5;
    sub_252E37D04();
    LOBYTE(v15) = 6;
    sub_252E37D04();
    LOBYTE(v15) = 7;
    sub_252E37D04();
    LOBYTE(v15) = 8;
    sub_252E37D04();
    v15 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_recurrence);
    v14 = 9;
    sub_252E37CD4();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_252A09540(uint64_t a1)
{
  sub_2529576E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id *sub_252A095F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541A98, &qword_252E41648);
  v11 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v13 = v19 - v12;
  *(v3 + 16) = 0;
  v14 = a1[3];
  v22 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_252A09DF8();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for HomeAutomationDialogTrigger(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v11;
    sub_252E36324();
    LOBYTE(v24) = 0;
    v15 = sub_252A09DB0(&qword_27F540538, MEMORY[0x277D55C48], MEMORY[0x277D55C60]);
    sub_252E37BE4();
    v19[3] = v15;
    sub_2529439A0(v10, v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event);
    v17 = sub_252E36224();
    v23 = 1;
    v18 = sub_252A09DB0(&qword_27F541AA8, MEMORY[0x277D55B90], MEMORY[0x277D55BA0]);
    sub_252E37BE4();
    v19[1] = v18;
    v19[2] = v17;
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_time) = v24;
    sub_252E36294();
    v23 = 2;
    sub_252A09DB0(&qword_27F540DF8, MEMORY[0x277D55BB0], MEMORY[0x277D55BC0]);
    sub_252E37BE4();
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_offset) = v24;
    LOBYTE(v24) = 3;
    sub_252E37BE4();
    sub_2529439A0(v8, v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_home);
    LOBYTE(v24) = 4;
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isOffsetToPast) = sub_252E37C14() & 1;
    LOBYTE(v24) = 5;
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isRecurrence) = sub_252E37C14() & 1;
    LOBYTE(v24) = 6;
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isWeekday) = sub_252E37C14() & 1;
    LOBYTE(v24) = 7;
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isWeekend) = sub_252E37C14() & 1;
    LOBYTE(v24) = 8;
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isEveryday) = sub_252E37C14() & 1;
    v23 = 9;
    sub_252E37BE4();
    (*(v20 + 8))(v13, v21);
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_recurrence) = v24;
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  return v3;
}

id *sub_252A09CA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for HomeAutomationDialogTrigger(0);
  v5 = swift_allocObject();
  result = sub_252A095F0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_252A09DB0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_252A09DF8()
{
  result = qword_27F541AA0;
  if (!qword_27F541AA0)
  {
    result = swift_getWitnessTable(asc_252E41754, &type metadata for HomeAutomationDialogTrigger.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F541AA0);
  }

  return result;
}

uint64_t sub_252A09E4C(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_event;
  swift_beginAccess();
  sub_252956C1C(a1 + v3, v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_time) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_time);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_offset) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_offset);
  v4 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_home;
  swift_beginAccess();
  sub_252956C1C(a1 + v4, v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_home);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isOffsetToPast) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isOffsetToPast);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isRecurrence) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isRecurrence);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isWeekday) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isWeekday);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isWeekend) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isWeekend);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_isEveryday) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_isEveryday);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_recurrence) = *(a1 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationDialogTrigger7Builder_recurrence);

  return v1;
}

uint64_t getEnumTagSinglePayload for HomeAutomationDialogTrigger.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeAutomationDialogTrigger.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252A0A114()
{
  result = qword_27F541AC0;
  if (!qword_27F541AC0)
  {
    result = swift_getWitnessTable(byte_252E4172C, &type metadata for HomeAutomationDialogTrigger.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F541AC0);
  }

  return result;
}

unint64_t sub_252A0A16C()
{
  result = qword_27F541AC8;
  if (!qword_27F541AC8)
  {
    result = swift_getWitnessTable(asc_252E41664, &type metadata for HomeAutomationDialogTrigger.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F541AC8);
  }

  return result;
}

unint64_t sub_252A0A1C4()
{
  result = qword_27F541AD0;
  if (!qword_27F541AD0)
  {
    result = swift_getWitnessTable(aM_1, &type metadata for HomeAutomationDialogTrigger.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F541AD0);
  }

  return result;
}

unint64_t sub_252A0A218(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252A0A2B4()
{
  type metadata accessor for AutomateHomeIntentDefaultHandleDelegate();
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntentResponse()) init];
  v2 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  *&v1[v2] = 5;
  [v1 setUserActivity_];
  *(v0 + 16) = v1;
  return v0;
}

id sub_252A0A354()
{
  v1 = [v0 type];
  if (v1 >= 7)
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  v28 = [v0 BOOLValue];
  [v0 doubleValue];
  v4 = v3;
  v5 = [v0 integerValue];
  v6 = [v0 stringValue];
  if (v6)
  {
    v7 = v6;
    sub_252E36F34();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v0 limitValue];
  v11 = [v0 unit];
  if (v11 >= 6)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v0 rangeValue];
  [v13 lowerValue];
  v15 = v14;
  [v13 upperValue];
  v17 = v16;
  v18 = objc_allocWithZone(type metadata accessor for HomeAttributeRange());
  v19 = sub_252E36F04();
  v20 = [v18 initWithIdentifier:0 displayString:v19];

  v21 = v20;
  [v21 setLowerValue_];
  [v21 setUpperValue_];

  v22 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v23 = sub_252E36F04();
  v24 = [v22 initWithIdentifier:0 displayString:v23];

  [v24 setType_];
  [v24 setUnit_];
  if (v2 > 2)
  {
    if (v2 > 4)
    {
      if (v2 == 5)
      {
        if (v10 >= 3)
        {
          v26 = 0;
        }

        else
        {
          v26 = v10;
        }

        [v24 setLimitValue_];
      }

      else
      {

        [v24 setRangeValue_];
      }
    }

    else if (v2 == 3)
    {
      if (v9)
      {
        v25 = sub_252E36F04();

        [v24 setStringValue_];
      }
    }

    else
    {

      [v24 setIntegerValue_];
    }

    goto LABEL_27;
  }

  if (v2)
  {

    if (v2 == 1)
    {
      [v24 setBoolValue_];
    }

    else
    {
      [v24 setDoubleValue_];
    }

LABEL_27:

    return v24;
  }

  return v24;
}

unint64_t HomeAttributeUnit.toProtobuf()(unint64_t result)
{
  if (result >= 6)
  {
    return 0;
  }

  return result;
}

id sub_252A0A6A0()
{
  result = [v0 doubleValue];
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    v3 = v2;
    v4 = [v0 unit];
    v5 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v6 = sub_252E36F04();
    v7 = [v5 initWithIdentifier:0 displayString:v6];

    [v7 setType_];
    [v7 setUnit_];
    [v7 setIntegerValue_];
    return v7;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t HomeDeviceType.toProtobuf()(unint64_t a1)
{
  if (a1 < 0x30)
  {
    return qword_252E417F8[a1];
  }

  result = sub_252E37DF4();
  __break(1u);
  return result;
}

unint64_t INHomeDeviceType.toCustom()(unint64_t result)
{
  if (result >= 0x2E)
  {
    return 0;
  }

  return result;
}

uint64_t sub_252A0A844(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006B63;
  v3 = 0x616C426863746970;
  v4 = a1;
  v5 = 0x6769724279726576;
  v6 = 0xEA00000000007468;
  if (a1 != 5)
  {
    v5 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7170404;
  if (a1 != 3)
  {
    v8 = 0x746867697262;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6B72614479726576;
  if (a1 != 1)
  {
    v10 = 1802658148;
    v9 = 0xE400000000000000;
  }

  if (!a1)
  {
    v10 = 0x616C426863746970;
    v9 = 0xEA00000000006B63;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x6B72614479726576)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v11 != 1802658148)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEA00000000007468;
        if (v11 != 0x6769724279726576)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x6E776F6E6B6E75)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE300000000000000;
      if (v11 != 7170404)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0xE600000000000000;
    v3 = 0x746867697262;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_252E37DB4();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_252A0AA3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64656B636F6C6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x64656D6D616ALL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x64656B636F6CLL;
    }

    else
    {
      v4 = 0x64656B636F6C6E75;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x64656D6D616ALL;
  if (a2 != 2)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x64656B636F6CLL;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252A0AB70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1919508838;
  v6 = 0xE800000000000000;
  v7 = 0x726F697265666E69;
  if (a1 != 4)
  {
    v7 = 1919905648;
    v6 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x6E656C6C65637865;
  v9 = 0xE900000000000074;
  if (a1 != 1)
  {
    v8 = 1685024615;
    v9 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1919508838)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x726F697265666E69)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1919905648)
      {
LABEL_34:
        v13 = sub_252E37DB4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000074;
      if (v10 != 0x6E656C6C65637865)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1685024615)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6E776F6E6B6E75)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_252A0AD2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6465736F6C63;
    }

    else
    {
      v5 = 1852141679;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    if (a1 == 2)
    {
      v4 = 1852141679;
      goto LABEL_12;
    }

    if (a1 == 3)
    {
      v4 = 1936682083;
LABEL_12:
      v5 = v4 | 0x676E6900000000;
      goto LABEL_14;
    }

    v5 = 0x646570706F7473;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6465736F6C63;
    }

    else
    {
      v9 = 1852141679;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v5 != v9)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v6 = 0x676E69736F6C63;
    if (a2 != 3)
    {
      v6 = 0x646570706F7473;
    }

    if (a2 == 2)
    {
      v7 = 0x676E696E65706FLL;
    }

    else
    {
      v7 = v6;
    }

    v8 = 0xE700000000000000;
    if (v5 != v7)
    {
      goto LABEL_31;
    }
  }

  if (v3 != v8)
  {
LABEL_31:
    v10 = sub_252E37DB4();
    goto LABEL_32;
  }

  v10 = 1;
LABEL_32:

  return v10 & 1;
}

uint64_t sub_252A0AE98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x6964696D75686564;
  v5 = 0xEA00000000007966;
  v6 = 1869903201;
  if (a1 != 4)
  {
    v6 = 1701736302;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28271;
  if (a1 != 1)
  {
    v8 = 0x79666964696D7568;
    v7 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 6710895;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEA00000000007966;
      if (v9 != 0x6964696D75686564)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (a2 == 4)
      {
        if (v9 != 1869903201)
        {
          goto LABEL_34;
        }
      }

      else if (v9 != 1701736302)
      {
LABEL_34:
        v12 = sub_252E37DB4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE200000000000000;
      if (v9 != 28271)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x79666964696D7568)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v11 = 0xE300000000000000;
    if (v9 != 6710895)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_252A0B044(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1701670760;
    }

    else
    {
      v4 = 6710895;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 2036430689;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x746867696ELL;
  }

  else
  {
    v4 = 0x6572656767697274;
    v3 = 0xE900000000000064;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1701670760;
    }

    else
    {
      v9 = 6710895;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x746867696ELL;
    if (a2 != 3)
    {
      v6 = 0x6572656767697274;
      v5 = 0xE900000000000064;
    }

    if (a2 == 2)
    {
      v7 = 2036430689;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_252E37DB4();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_252A0B1A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 1952540008;
  v5 = 1819242339;
  if (a1 != 4)
  {
    v5 = 1869903201;
  }

  if (a1 != 3)
  {
    v4 = v5;
  }

  v6 = 0xE300000000000000;
  v7 = 6710895;
  if (a1 != 1)
  {
    v7 = 28271;
    v6 = 0xE200000000000000;
  }

  if (a1)
  {
    v3 = v6;
  }

  else
  {
    v7 = 1701736302;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (a2 > 2u)
  {
    v10 = 0xE400000000000000;
    if (a2 == 3)
    {
      if (v8 != 1952540008)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      if (v8 != 1819242339)
      {
        goto LABEL_34;
      }
    }

    else if (v8 != 1869903201)
    {
LABEL_34:
      v11 = sub_252E37DB4();
      goto LABEL_35;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0xE300000000000000;
      if (v8 != 6710895)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v10 = 0xE200000000000000;
      if (v8 != 28271)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v10 = 0xE400000000000000;
    if (v8 != 1701736302)
    {
      goto LABEL_34;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_34;
  }

  v11 = 1;
LABEL_35:

  return v11 & 1;
}

uint64_t sub_252A0B328(char a1, unsigned __int8 a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x656D75736572;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    v3 = 0xE600000000000000;
    v4 = a2;
    if (a2)
    {
LABEL_6:
      if (v4 == 1)
      {
        v5 = 0x656D75736572;
      }

      else
      {
        v5 = 0x6C65636E6163;
      }

      v6 = 0xE600000000000000;
      if (v2 != v5)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v2 = 0x6573756170;
    v4 = a2;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v6 = 0xE500000000000000;
  if (v2 != 0x6573756170)
  {
LABEL_15:
    v7 = sub_252E37DB4();
    goto LABEL_16;
  }

LABEL_13:
  if (v3 != v6)
  {
    goto LABEL_15;
  }

  v7 = 1;
LABEL_16:

  return v7 & 1;
}

uint64_t sub_252A0B420(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006C616369;
  v3 = 0x6863726172656968;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6F7268636F6E6F6DLL;
    }

    else
    {
      v5 = 0x657474656C6170;
    }

    if (v4 == 2)
    {
      v6 = 0xEA0000000000656DLL;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6C6F6369746C756DLL;
    }

    else
    {
      v5 = 0x6863726172656968;
    }

    if (v4)
    {
      v6 = 0xEA0000000000726FLL;
    }

    else
    {
      v6 = 0xEC0000006C616369;
    }
  }

  v7 = 0x6F7268636F6E6F6DLL;
  v8 = 0xE700000000000000;
  if (a2 == 2)
  {
    v8 = 0xEA0000000000656DLL;
  }

  else
  {
    v7 = 0x657474656C6170;
  }

  if (a2)
  {
    v3 = 0x6C6F6369746C756DLL;
    v2 = 0xEA0000000000726FLL;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
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

uint64_t sub_252A0B578(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000016;
    }

    else
    {
      v4 = 0x656D695469726973;
    }

    if (v2)
    {
      v3 = 0x8000000252E68640;
    }

    else
    {
      v3 = 0xEB0000000074756FLL;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x8000000252E68660;
    v4 = 0xD000000000000015;
  }

  else if (a1 == 3)
  {
    v3 = 0x8000000252E68680;
    v4 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0x656D695469726973;
    }

    if (a2)
    {
      v5 = 0x8000000252E68640;
    }

    else
    {
      v5 = 0xEB0000000074756FLL;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x8000000252E68660;
    if (v4 != 0xD000000000000015)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x8000000252E68680;
    if (v4 != 0xD000000000000017)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (v4 != 0x6E776F6E6B6E75)
    {
LABEL_31:
      v7 = sub_252E37DB4();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_252A0B718(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF73736563637573;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0xD000000000000023;
    }

    if (v3 == 2)
    {
      v4 = 0x8000000252E684C0;
    }

    else
    {
      v4 = 0x8000000252E684E0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xEF6572756C696166;
    }

    else
    {
      v4 = 0xEF73736563637573;
    }

    v5 = 0x2E656D6F6374754FLL;
  }

  v6 = 0xD000000000000015;
  v7 = 0x8000000252E684E0;
  if (a2 == 2)
  {
    v7 = 0x8000000252E684C0;
  }

  else
  {
    v6 = 0xD000000000000023;
  }

  if (a2)
  {
    v2 = 0xEF6572756C696166;
  }

  if (a2 <= 1u)
  {
    v8 = 0x2E656D6F6374754FLL;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v5 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_252E37DB4();
  }

  return v10 & 1;
}

uint64_t sub_252A0B850(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 12639;
  v5 = 0xE600000000000000;
  v6 = 0x444961657261;
  v7 = 0xE500000000000000;
  v8 = 0x444970616DLL;
  if (a1 != 4)
  {
    v8 = 1701667182;
    v7 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x65746174536E7572;
  if (a1 != 1)
  {
    v10 = 0x646F4D6E61656C63;
    v9 = 0xEA00000000007365;
  }

  if (a1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x444961657261)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x444970616DLL)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0xE400000000000000;
      if (v11 != 1701667182)
      {
LABEL_33:
        v14 = sub_252E37DB4();
        goto LABEL_34;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x65746174536E7572)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0xEA00000000007365;
      if (v11 != 0x646F4D6E61656C63)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v13 = 0xE200000000000000;
    if (v11 != 12639)
    {
      goto LABEL_33;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_33;
  }

  v14 = 1;
LABEL_34:

  return v14 & 1;
}

uint64_t sub_252A0BA18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000014;
  v3 = "assistantIdentifier";
  v4 = a1;
  v5 = 0xD00000000000002FLL;
  if (a1 == 4)
  {
    v6 = "estrictedGuestUserDueToRemote";
  }

  else
  {
    v5 = 0xD00000000000001CLL;
    v6 = "estrictedGuestUserDueToSchedule";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000002DLL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = "proceedAsNonRestrictedUser";
  }

  v8 = 0xD00000000000001ALL;
  if (v4 == 1)
  {
    v8 = 0xD000000000000014;
    v9 = "ueToNoTargetedHome";
  }

  else
  {
    v9 = "unableToProceedAtAll";
  }

  if (!v4)
  {
    v8 = 0xD000000000000022;
    v9 = "assistantIdentifier";
  }

  if (v4 <= 2)
  {
    v10 = v9;
  }

  else
  {
    v8 = v7;
    v10 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000002DLL;
      v3 = "proceedAsNonRestrictedUser";
    }

    else if (a2 == 4)
    {
      v2 = 0xD00000000000002FLL;
      v3 = "estrictedGuestUserDueToRemote";
    }

    else
    {
      v2 = 0xD00000000000001CLL;
      v3 = "estrictedGuestUserDueToSchedule";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = "ueToNoTargetedHome";
    }

    else
    {
      v2 = 0xD00000000000001ALL;
      v3 = "unableToProceedAtAll";
    }
  }

  else
  {
    v2 = 0xD000000000000022;
  }

  if (v8 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252A0BB8C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1701670771;
    }

    else
    {
      v4 = 6647407;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE300000000000000;
    v4 = 7105633;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1752461154;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x747065637865;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1701670771;
    }

    else
    {
      v9 = 6647407;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1752461154;
    if (a2 != 3)
    {
      v6 = 0x747065637865;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 7105633;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_252E37DB4();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_252A0BCD8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000747865;
  v3 = 0x547972616D697270;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0x4C6D7269666E6F63;
    v14 = 0xEC0000006C656261;
    if (a1 != 2)
    {
      v13 = 0x6562614C796E6564;
      v14 = 0xE90000000000006CLL;
    }

    v15 = 0x7261646E6F636573;
    v16 = 0xED00007478655479;
    if (!a1)
    {
      v15 = 0x547972616D697270;
      v16 = 0xEB00000000747865;
    }

    if (a1 <= 1u)
    {
      v11 = v15;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 1)
    {
      v12 = v16;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v5 = 0x7572747365447369;
    v6 = 0xED00006576697463;
    v7 = 0x8000000252E67840;
    v8 = 0xD000000000000011;
    if (a1 != 7)
    {
      v8 = 0xD000000000000010;
      v7 = 0x8000000252E67860;
    }

    if (a1 != 6)
    {
      v5 = v8;
      v6 = v7;
    }

    v9 = 0x8000000252E677F0;
    v10 = 0xD000000000000017;
    if (a1 != 4)
    {
      v10 = 0xD000000000000014;
      v9 = 0x8000000252E67810;
    }

    if (a1 <= 5u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 5)
    {
      v12 = v9;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0x8000000252E677F0;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0x8000000252E67810;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v2 = 0x8000000252E67840;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      v3 = 0xD000000000000010;
      v2 = 0x8000000252E67860;
      goto LABEL_45;
    }

    v17 = 0x7572747365447369;
    v18 = 0x6576697463;
LABEL_40:
    v2 = v18 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v11 != v17)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0xEC0000006C656261;
      if (v11 != 0x4C6D7269666E6F63)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v2 = 0xE90000000000006CLL;
      if (v11 != 0x6562614C796E6564)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_46;
  }

  if (a2)
  {
    v17 = 0x7261646E6F636573;
    v18 = 0x7478655479;
    goto LABEL_40;
  }

LABEL_45:
  if (v11 != v3)
  {
LABEL_49:
    v19 = sub_252E37DB4();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v19 = 1;
LABEL_50:

  return v19 & 1;
}

uint64_t sub_252A0BFF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657275;
  v3 = 0x74617265706D6574;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x547972616D697270;
    }

    else
    {
      v5 = 0x74617265706D6574;
    }

    if (v4)
    {
      v6 = 0xEB00000000747865;
    }

    else
    {
      v6 = 0xEB00000000657275;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x7261646E6F636573;
    v6 = 0xED00007478655479;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6E69746165487369;
    }

    else
    {
      v5 = 0x74754F68636E7570;
    }

    if (v4 == 3)
    {
      v6 = 0xE900000000000067;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  v7 = 0x7261646E6F636573;
  v8 = 0xED00007478655479;
  v9 = 0x6E69746165487369;
  v10 = 0xE900000000000067;
  if (a2 != 3)
  {
    v9 = 0x74754F68636E7570;
    v10 = 0xE800000000000000;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v3 = 0x547972616D697270;
    v2 = 0xEB00000000747865;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_252E37DB4();
  }

  return v13 & 1;
}

uint64_t sub_252A0C1A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000747865;
  v3 = 0x547972616D697270;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x6572676F72506E69;
    v12 = 0xEA00000000007373;
    if (a1 != 6)
    {
      v11 = 0x6E45656C67676F74;
      v12 = 0xED000064656C6261;
    }

    v13 = 0x7365636375537369;
    v14 = 0xE900000000000073;
    if (a1 != 4)
    {
      v13 = 0x74754F68636E7570;
      v14 = 0xE800000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v14;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0x8000000252E67EC0;
    v6 = 0xD000000000000015;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
      v5 = 0x8000000252E67840;
    }

    v7 = 0x7261646E6F636573;
    v8 = 0xED00007478655479;
    if (!a1)
    {
      v7 = 0x547972616D697270;
      v8 = 0xEB00000000747865;
    }

    if (a1 <= 1u)
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
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xE900000000000073;
        if (v9 != 0x7365636375537369)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v9 != 0x74754F68636E7570)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_40;
    }

    if (a2 == 6)
    {
      v2 = 0xEA00000000007373;
      if (v9 != 0x6572676F72506E69)
      {
        goto LABEL_44;
      }

      goto LABEL_40;
    }

    v15 = 0x6E45656C67676F74;
    v16 = 0x64656C6261;
    goto LABEL_43;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0x8000000252E67EC0;
      if (v9 != 0xD000000000000015)
      {
        goto LABEL_44;
      }

      goto LABEL_40;
    }

    v3 = 0xD000000000000011;
    v2 = 0x8000000252E67840;
  }

  else if (a2)
  {
    v15 = 0x7261646E6F636573;
    v16 = 0x7478655479;
LABEL_43:
    v2 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v9 != v15)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  if (v9 != v3)
  {
LABEL_44:
    v17 = sub_252E37DB4();
    goto LABEL_45;
  }

LABEL_40:
  if (v10 != v2)
  {
    goto LABEL_44;
  }

  v17 = 1;
LABEL_45:

  return v17 & 1;
}

uint64_t sub_252A0C460(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000079746974;
  v3 = 0x6E45656369766544;
  v4 = a1;
  v5 = 0x79726F6765746143;
  v6 = 0xEE00797469746E45;
  v7 = 0x69746E456D6F6F52;
  v8 = 0xEA00000000007974;
  if (a1 != 4)
  {
    v7 = 1701736302;
    v8 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x69746E45656D6F48;
  v10 = 0xEA00000000007974;
  if (a1 != 1)
  {
    v9 = 0x746E45656E656353;
    v10 = 0xEB00000000797469;
  }

  if (!a1)
  {
    v9 = 0x6E45656369766544;
    v10 = 0xEC00000079746974;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEE00797469746E45;
      if (v11 != 0x79726F6765746143)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    if (a2 == 4)
    {
      v13 = 1836019538;
LABEL_22:
      v2 = 0xEA00000000007974;
      if (v11 != (v13 | 0x69746E4500000000))
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    v2 = 0xE400000000000000;
    if (v11 != 1701736302)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 1701670728;
        goto LABEL_22;
      }

      v3 = 0x746E45656E656353;
      v2 = 0xEB00000000797469;
    }

    if (v11 != v3)
    {
LABEL_31:
      v14 = sub_252E37DB4();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v14 = 1;
LABEL_32:

  return v14 & 1;
}

uint64_t sub_252A0C64C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C6562616CLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6E6F69746361;
    }

    else
    {
      v4 = 0x666E6F436E6F6369;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEA00000000006769;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x614C686365657073;
    }

    else
    {
      v4 = 0x6C6562616CLL;
    }

    if (v3)
    {
      v5 = 0xEB000000006C6562;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6E6F69746361;
  if (a2 != 2)
  {
    v8 = 0x666E6F436E6F6369;
    v7 = 0xEA00000000006769;
  }

  if (a2)
  {
    v2 = 0x614C686365657073;
    v6 = 0xEB000000006C6562;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252A0C79C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746E6563726570;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0x4773656572676564;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000252E67E40;
    }

    else
    {
      v5 = 0xEE00636972656E65;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x4373656572676564;
    }

    else
    {
      v4 = 0x746E6563726570;
    }

    if (v3)
    {
      v5 = 0xEE00737569736C65;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000011;
  v8 = 0x8000000252E67E40;
  if (a2 != 2)
  {
    v7 = 0x4773656572676564;
    v8 = 0xEE00636972656E65;
  }

  if (a2)
  {
    v2 = 0x4373656572676564;
    v6 = 0xEE00737569736C65;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252A0C910(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x61746C6564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65766F6261;
    }

    else
    {
      v4 = 0x776F6C6562;
    }

    v5 = 0xE500000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x61746C65646E6F6ELL;
    }

    else
    {
      v4 = 0x61746C6564;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x65766F6261;
  if (a2 != 2)
  {
    v7 = 0x776F6C6562;
  }

  if (a2)
  {
    v2 = 0x61746C65646E6F6ELL;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_252E37DB4();
  }

  return v10 & 1;
}

uint64_t sub_252A0CA40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006570;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 1701667182;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0x8000000252E66720;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x7954797469746E65;
    }

    else
    {
      v5 = 0x696669746E656469;
    }

    if (v4)
    {
      v6 = 0xEA00000000006570;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  v7 = 1701667182;
  v8 = 0x8000000252E66720;
  if (a2 == 2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (a2)
  {
    v3 = 0x7954797469746E65;
  }

  else
  {
    v2 = 0xEA00000000007265;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
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

uint64_t sub_252A0CB74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000073;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0x8000000252E67D00;
    v13 = 0xD000000000000013;
    if (a1 != 2)
    {
      v13 = 0xD000000000000015;
      v12 = 0x8000000252E67D20;
    }

    v14 = 0x8000000252E67CE0;
    v15 = 0xD000000000000014;
    if (!a1)
    {
      v15 = 0x746867694C6D6964;
      v14 = 0xE900000000000073;
    }

    if (a1 <= 1u)
    {
      v10 = v15;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 1)
    {
      v11 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0x8000000252E67D80;
    v5 = 0x8000000252E67DA0;
    v6 = 0xD000000000000011;
    if (a1 == 7)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v5 = 0x8000000252E67DC0;
    }

    if (a1 == 6)
    {
      v7 = 0xD000000000000015;
    }

    else
    {
      v7 = v6;
    }

    if (a1 != 6)
    {
      v4 = v5;
    }

    v8 = 0x8000000252E67D40;
    v9 = 0xD000000000000019;
    if (a1 != 4)
    {
      v9 = 0xD000000000000012;
      v8 = 0x8000000252E67D60;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v16 = "getStateOfGarageDoors";
LABEL_47:
        v2 = (v16 - 32) | 0x8000000000000000;
        if (v10 != 0xD000000000000015)
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }

      v2 = 0x8000000252E67D00;
      if (v10 != 0xD000000000000013)
      {
        goto LABEL_54;
      }
    }

    else if (a2)
    {
      v2 = 0x8000000252E67CE0;
      if (v10 != 0xD000000000000014)
      {
        goto LABEL_54;
      }
    }

    else if (v10 != 0x746867694C6D6964)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v16 = "getStateOfLightsPower";
      }

      else
      {
        if (a2 != 7)
        {
          v2 = 0x8000000252E67DC0;
          if (v10 != 0xD000000000000011)
          {
            goto LABEL_54;
          }

          goto LABEL_52;
        }

        v16 = "getStateOfTemperature";
      }

      goto LABEL_47;
    }

    if (a2 == 4)
    {
      v2 = 0x8000000252E67D40;
      if (v10 != 0xD000000000000019)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v2 = 0x8000000252E67D60;
      if (v10 != 0xD000000000000012)
      {
LABEL_54:
        v17 = sub_252E37DB4();
        goto LABEL_55;
      }
    }
  }

LABEL_52:
  if (v11 != v2)
  {
    goto LABEL_54;
  }

  v17 = 1;
LABEL_55:

  return v17 & 1;
}

uint64_t sub_252A0CE08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65756C615678616DLL;
    }

    else
    {
      v4 = 0x6574656C706D6F63;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEA0000000000796CLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x65756C61566E696DLL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x65756C615678616DLL;
  if (a2 != 2)
  {
    v8 = 0x6574656C706D6F63;
    v7 = 0xEA0000000000796CLL;
  }

  if (a2)
  {
    v2 = 0x65756C61566E696DLL;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252A0CF54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656D6FLL;
  v3 = 0x685F657669727261;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x657369726E7573;
    }

    else
    {
      v5 = 0x7465736E7573;
    }

    if (v4 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6F685F657661656CLL;
    }

    else
    {
      v5 = 0x685F657669727261;
    }

    if (v4)
    {
      v6 = 0xEA0000000000656DLL;
    }

    else
    {
      v6 = 0xEB00000000656D6FLL;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x657369726E7573;
  if (a2 != 2)
  {
    v8 = 0x7465736E7573;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x6F685F657661656CLL;
    v2 = 0xEA0000000000656DLL;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
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

uint64_t sub_252A0D09C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x474E4954414548;
  v3 = a1;
  v4 = 0xE700000000000000;
  v5 = 0x5455415F54414548;
  v6 = 0xE90000000000004FLL;
  if (a1 != 5)
  {
    v5 = 0x5455415F4C4F4F43;
    v6 = 0xE90000000000004FLL;
  }

  v7 = 1162626121;
  if (a1 != 3)
  {
    v7 = 1330926913;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = 0xE400000000000000;
  }

  v8 = 0xE700000000000000;
  v9 = 0x474E494C4F4F43;
  if (a1 != 1)
  {
    v9 = 4605519;
    v8 = 0xE300000000000000;
  }

  if (a1)
  {
    v4 = v8;
  }

  else
  {
    v9 = 0x474E4954414548;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v3 <= 2)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        v2 = 0x474E494C4F4F43;
      }

      else
      {
        v12 = 0xE300000000000000;
        v2 = 4605519;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 1413563720;
    }

    else
    {
      v13 = 1280266051;
    }

    v2 = v13 | 0x5455415F00000000;
    v12 = 0xE90000000000004FLL;
  }

  else
  {
    v12 = 0xE400000000000000;
    if (a2 == 3)
    {
      v2 = 1162626121;
    }

    else
    {
      v2 = 1330926913;
    }
  }

  if (v10 == v2 && v11 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_252E37DB4();
  }

  return v14 & 1;
}

uint64_t sub_252A0D268(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000011;
  v3 = a1;
  if (a1 > 4u)
  {
    v10 = 0x8000000252E68440;
    v11 = 0x8000000252E68460;
    v12 = 0xD000000000000018;
    if (a1 == 8)
    {
      v12 = 0xD000000000000013;
    }

    else
    {
      v11 = 0x8000000252E68480;
    }

    if (a1 == 7)
    {
      v13 = 0xD000000000000011;
    }

    else
    {
      v13 = v12;
    }

    if (a1 != 7)
    {
      v10 = v11;
    }

    v14 = 0x4274737544637672;
    if (a1 == 5)
    {
      v15 = 0xEE006C6C75466E69;
    }

    else
    {
      v14 = 0xD000000000000013;
      v15 = 0x8000000252E68420;
    }

    if (a1 <= 6u)
    {
      v8 = v14;
    }

    else
    {
      v8 = v13;
    }

    if (v3 <= 6)
    {
      v9 = v15;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v4 = 0x8000000252E683D0;
    v5 = 0xD00000000000001BLL;
    if (a1 != 3)
    {
      v5 = 0xD000000000000011;
      v4 = 0x8000000252E683F0;
    }

    if (a1 == 2)
    {
      v5 = 0x6E776F6E6B6E75;
      v4 = 0xE700000000000000;
    }

    v6 = 0x8000000252E67470;
    v7 = 0xD000000000000016;
    if (a1)
    {
      v7 = 0xD00000000000001DLL;
      v6 = 0x8000000252E683B0;
    }

    if (a1 <= 1u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v3 <= 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0x4274737544637672;
        v16 = 0xEE006C6C75466E69;
        goto LABEL_52;
      }

      v17 = "rvcWaterTankMissing";
    }

    else
    {
      if (a2 == 7)
      {
        v18 = "rvcWaterTankEmpty";
        goto LABEL_47;
      }

      if (a2 != 8)
      {
        v16 = 0x8000000252E68480;
        v2 = 0xD000000000000018;
        goto LABEL_52;
      }

      v17 = "rvcWaterTankLidOpen";
    }

    v16 = (v17 - 32) | 0x8000000000000000;
    v2 = 0xD000000000000013;
    goto LABEL_52;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v16 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      goto LABEL_52;
    }

    if (a2 == 3)
    {
      v16 = 0x8000000252E683D0;
      v2 = 0xD00000000000001BLL;
      goto LABEL_52;
    }

    v18 = "rvcDustBinMissing";
LABEL_47:
    v16 = (v18 - 32) | 0x8000000000000000;
    goto LABEL_52;
  }

  if (a2)
  {
    v16 = 0x8000000252E683B0;
    v2 = 0xD00000000000001DLL;
  }

  else
  {
    v16 = 0x8000000252E67470;
    v2 = 0xD000000000000016;
  }

LABEL_52:
  if (v8 == v2 && v9 == v16)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_252E37DB4();
  }

  return v19 & 1;
}

uint64_t sub_252A0D524(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7628135;
  v3 = a1;
  if (a1 <= 3u)
  {
    v11 = 7628147;
    v12 = 0xE600000000000000;
    v13 = 0x656C67676F74;
    if (a1 != 2)
    {
      v13 = 2003789939;
      v12 = 0xE400000000000000;
    }

    if (a1)
    {
      v11 = 7628135;
    }

    if (a1 <= 1u)
    {
      v9 = v11;
    }

    else
    {
      v9 = v13;
    }

    if (v3 <= 1)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v4 = 0x8000000252E678C0;
    v5 = 0x8000000252E678E0;
    v6 = 0xD000000000000012;
    if (a1 != 7)
    {
      v6 = 0x656E4F6863696877;
      v5 = 0xEF64656C69614673;
    }

    if (a1 == 6)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v4 = v5;
    }

    v7 = 0xE500000000000000;
    v8 = 0xD000000000000011;
    if (a1 == 4)
    {
      v8 = 0x746E756F63;
    }

    else
    {
      v7 = 0x8000000252E678A0;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v3 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xE600000000000000;
        if (v9 != 0x656C67676F74)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v14 = 0xE400000000000000;
        if (v9 != 2003789939)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      if (!a2)
      {
        v2 = 7628147;
      }

      v14 = 0xE300000000000000;
      if (v9 != v2)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v14 = 0xE500000000000000;
      if (v9 != 0x746E756F63)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0x8000000252E678A0;
      if (v9 != 0xD000000000000011)
      {
LABEL_52:
        v15 = sub_252E37DB4();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v14 = 0x8000000252E678C0;
    if (v9 != 0xD000000000000010)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v14 = 0x8000000252E678E0;
    if (v9 != 0xD000000000000012)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v14 = 0xEF64656C69614673;
    if (v9 != 0x656E4F6863696877)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v14)
  {
    goto LABEL_52;
  }

  v15 = 1;
LABEL_53:

  return v15 & 1;
}

uint64_t sub_252A0D7C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x4D74636566726570;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0x74614D7361696C61;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000252E65390;
    }

    else
    {
      v5 = 0xEA00000000006863;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x4D6C616974726170;
    }

    else
    {
      v4 = 0x4D74636566726570;
    }

    v5 = 0xEC00000068637461;
  }

  v6 = 0xD000000000000010;
  v7 = 0x8000000252E65390;
  if (a2 != 2)
  {
    v6 = 0x74614D7361696C61;
    v7 = 0xEA00000000006863;
  }

  if (a2)
  {
    v2 = 0x4D6C616974726170;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xEC00000068637461;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_252E37DB4();
  }

  return v10 & 1;
}

uint64_t sub_252A0D908(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v8 = 0xE500000000000000;
        v7 = 0x7365707974;
      }

      else
      {
        v8 = 0xE600000000000000;
        v7 = 0x736574617473;
      }
    }

    else
    {
      v8 = 0xE400000000000000;
      if (a1 == 4)
      {
        v7 = 1701670760;
      }

      else
      {
        v7 = 1701869940;
      }
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1836019570;
    if (a1 != 2)
    {
      v4 = 0x73656E6F7ALL;
      v3 = 0xE500000000000000;
    }

    v5 = 0xD000000000000010;
    v6 = 0x8000000252E66560;
    if (!a1)
    {
      v5 = 0x614E797469746E65;
      v6 = 0xEA0000000000656DLL;
    }

    if (a1 <= 1u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v9 = 0xD000000000000010;
      }

      else
      {
        v9 = 0x614E797469746E65;
      }

      if (a2)
      {
        v10 = 0x8000000252E66560;
      }

      else
      {
        v10 = 0xEA0000000000656DLL;
      }

      if (v7 != v9)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    if (a2 == 2)
    {
      v10 = 0xE400000000000000;
      if (v7 != 1836019570)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    v10 = 0xE500000000000000;
    v11 = 1701736314;
LABEL_40:
    if (v7 != (v11 & 0xFFFF0000FFFFFFFFLL | 0x7300000000))
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v10 = 0xE500000000000000;
      v11 = 1701869940;
      goto LABEL_40;
    }

    v10 = 0xE600000000000000;
    if (v7 != 0x736574617473)
    {
LABEL_46:
      v12 = sub_252E37DB4();
      goto LABEL_47;
    }
  }

  else
  {
    v10 = 0xE400000000000000;
    if (a2 == 4)
    {
      if (v7 != 1701670760)
      {
        goto LABEL_46;
      }
    }

    else if (v7 != 1701869940)
    {
      goto LABEL_46;
    }
  }

LABEL_44:
  if (v8 != v10)
  {
    goto LABEL_46;
  }

  v12 = 1;
LABEL_47:

  return v12 & 1;
}

uint64_t sub_252A0DB28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x797469746E45;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x5374736575716552;
    }

    else
    {
      v4 = 0x6574617453;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000746E65;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E6F707365526F4ELL;
    }

    else
    {
      v4 = 0x797469746E45;
    }

    if (v3)
    {
      v5 = 0xEA00000000006573;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x5374736575716552;
  v8 = 0xEB00000000746E65;
  if (a2 != 2)
  {
    v7 = 0x6574617453;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6E6F707365526F4ELL;
    v6 = 0xEA00000000006573;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252A0DC78(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000065756C61;
  v3 = 0x5672656767697274;
  v4 = a1;
  v5 = 0x8000000252E68060;
  v6 = 0x656C756465686373;
  v7 = 0xED00007478655464;
  if (a1 != 4)
  {
    v6 = 0xD000000000000011;
    v7 = 0x8000000252E68080;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x8000000252E68030;
  v9 = 0xD000000000000015;
  if (a1 != 1)
  {
    v9 = 0x4972656767697274;
    v8 = 0xEB000000006E6F63;
  }

  if (!a1)
  {
    v9 = 0x5672656767697274;
    v8 = 0xEC00000065756C61;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x8000000252E68060;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xED00007478655464;
      if (v10 != 0x656C756465686373)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0x8000000252E68080;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x8000000252E68030;
        if (v10 != 0xD000000000000015)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0x4972656767697274;
      v2 = 0xEB000000006E6F63;
    }

    if (v10 != v3)
    {
LABEL_32:
      v12 = sub_252E37DB4();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v11 != v2)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_252A0DE70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xEE00657475636578;
  v4 = 0x6574656C706D6F63;
  if (a1 == 2)
  {
    v4 = 0x456F547964616572;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  v5 = 0xD000000000000010;
  v6 = 0x8000000252E67F20;
  if (a1)
  {
    v5 = 0x6553746E65746E69;
    v6 = 0xEF6E6F697463656CLL;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x456F547964616572;
    }

    else
    {
      v11 = 0x6574656C706D6F63;
    }

    if (a2 == 2)
    {
      v10 = 0xEE00657475636578;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x6553746E65746E69;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (a2)
    {
      v10 = 0xEF6E6F697463656CLL;
    }

    else
    {
      v10 = 0x8000000252E67F20;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_252E37DB4();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_252A0DFD8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6553746E65746E69;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = 0xEF6E6F697463656CLL;
    }

    else
    {
      v4 = 0x8000000252E67F20;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6572506E69676562;
    v4 = 0xEF737365636F7270;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x456F547964616572;
    }

    else
    {
      v3 = 0x6574656C706D6F63;
    }

    if (v2 == 3)
    {
      v4 = 0xEE00657475636578;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6553746E65746E69;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (a2)
    {
      v5 = 0xEF6E6F697463656CLL;
    }

    else
    {
      v5 = 0x8000000252E67F20;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEF737365636F7270;
    if (v3 != 0x6572506E69676562)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEE00657475636578;
    if (v3 != 0x456F547964616572)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x6574656C706D6F63)
    {
LABEL_34:
      v7 = sub_252E37DB4();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

Swift::Bool __swiftcall HomeAutomationIntent.hasVerb(_:)(HomeAutomationInternal::HomeAutomationIntent::Verb a1)
{
  v2 = *a1;
  v3 = *(v1 + 208);
  v4 = v2 == 9 && v3 == 9;
  if (v3 == 9 || v2 == 9)
  {
    return v4;
  }

  else
  {
    return sub_252A0D524(v3, v2);
  }
}

uint64_t sub_252A0E1E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B08, &qword_252E41A00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B10, &qword_252E5B650);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  if (*(v0 + 16))
  {
    if (sub_252E35DA4() || sub_252E35DB4())
    {

      v7 = 1;
    }

    else
    {
      sub_252E35D44();
      v9 = sub_252E35C84();
      v7 = 1;
      v10 = (*(*(v9 - 8) + 48))(v6, 1, v9);
      sub_25293847C(v6, &qword_27F541B10, &qword_252E5B650);
      if (v10 == 1)
      {
        if (sub_252E35D84())
        {
        }

        else
        {
          sub_252E35D64();
          v11 = sub_252E35D54();
          v12 = (*(*(v11 - 8) + 48))(v3, 1, v11);
          sub_25293847C(v3, &qword_27F541B08, &qword_252E41A00);
          if (v12 == 1 && sub_252E35D34())
          {
            v13 = sub_252B085DC();

            v7 = v13 ^ 1;
          }
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL sub_252A0E3E4()
{

  v1 = sub_252C760C8(v0);

  v3 = sub_252C7613C(v2);

  v5 = sub_252C75D8C(v4);

  v7 = sub_252C762B4(v6);

  v8 = *(v1 + 16);

  if (v8 >= 3)
  {

LABEL_4:

    goto LABEL_5;
  }

  v9 = *(v3 + 16);

  if (v9 >= 3)
  {
    goto LABEL_4;
  }

  v11 = *(v5 + 16);

  if (v11 < 2 || (sub_252A11078() & 1) != 0)
  {
    v12 = *(v7 + 16);

    return v12 > 1;
  }

LABEL_5:

  return 1;
}

void *sub_252A0E5E4()
{
  v53 = sub_252E32A64();
  v0 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_252CC5C94(qword_2864A6E80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B18, &qword_252E41A08);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B20, qword_252E41A10);
  result = sub_252E37B34();
  v4 = result;
  v5 = 0;
  v6 = v2[8];
  v41 = v2 + 8;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v51 = (v0 + 8);
  v44 = v2;
  v45 = result + 8;
  v42 = v10;
  v43 = result;
  if ((v8 & v6) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = v2[6];
      v16 = *(v15 + 8 * v14);
      v17 = *(v2[7] + 8 * v14);
      v18 = *(v17 + 16);
      if (v18)
      {
        v47 = *(v15 + 8 * v14);
        v48 = v14;
        v49 = v9;
        v50 = v5;
        v60 = MEMORY[0x277D84F90];

        sub_2529AA3A0(0, v18, 0);
        v19 = v60;
        v46 = v17;
        v20 = (v17 + 40);
        do
        {
          v56 = v19;
          v57 = v18;
          v21 = *(v20 - 1);
          v55 = *v20;
          v58 = v21;
          v59 = v55;

          v22 = v52;
          sub_252E32A44();
          v54 = sub_252947DBC();
          v23 = sub_252E37784();
          v24 = *v51;
          v25 = v53;
          (*v51)(v22, v53);
          v58 = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
          sub_2529508A0();
          v26 = sub_252E36EA4();
          v28 = v27;

          v58 = v26;
          v59 = v28;
          sub_252E32A34();
          v29 = sub_252E37784();
          v24(v22, v25);

          v58 = v29;
          sub_252E36EA4();

          v30 = sub_252E36FA4();
          v32 = v31;

          v19 = v56;
          v60 = v56;
          v34 = *(v56 + 16);
          v33 = *(v56 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_2529AA3A0((v33 > 1), v34 + 1, 1);
            v19 = v60;
          }

          *(v19 + 16) = v34 + 1;
          v35 = v19 + 16 * v34;
          *(v35 + 32) = v30;
          *(v35 + 40) = v32;
          v20 += 2;
          v18 = v57 - 1;
        }

        while (v57 != 1);
        v4 = v43;
        v2 = v44;
        v9 = v49;
        v5 = v50;
        v10 = v42;
        v16 = v47;
        v14 = v48;
      }

      else
      {

        v19 = MEMORY[0x277D84F90];
      }

      v36 = sub_252C75848(v19);

      *(v45 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(v4[6] + 8 * v14) = v16;
      *(v4[7] + 8 * v14) = v36;
      v37 = v4[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        break;
      }

      v4[2] = v39;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        qword_27F575728 = v4;
        return result;
      }

      v13 = v41[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252A0EA28()
{
  result = sub_2529FC004(&unk_2864A5DF0);
  qword_27F575730 = result;
  return result;
}

uint64_t sub_252A0EA50()
{
  v57 = sub_252E32A64();
  v1 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(v0 + 128);
  v4 = *(v3 + 16);
  if (v4)
  {
    v66 = MEMORY[0x277D84F90];
    result = sub_2529AA540(0, v4, 0);
    v6 = 0;
    v54 = (v1 + 8);
    v55 = v3 + 32;
    v7 = v66;
    v52 = v4;
    v53 = v3;
LABEL_3:
    if (v6 < *(v3 + 16))
    {
      v60 = v7;
      v8 = (v55 + 16 * v6);
      v9 = v8[1];
      v64 = *v8;
      v65 = v9;
      v58 = v9;

      v10 = v56;
      sub_252E32A44();
      sub_252947DBC();
      v11 = sub_252E37784();
      v12 = *v54;
      v13 = v57;
      (*v54)(v10, v57);
      v64 = v11;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
      sub_2529508A0();
      v14 = sub_252E36EA4();
      v15 = v6;
      v17 = v16;

      v64 = v14;
      v65 = v17;
      sub_252E32A34();
      v18 = sub_252E37784();
      v12(v10, v13);

      v64 = v18;
      sub_252E36EA4();

      v63 = sub_252E36FA4();
      v20 = v19;

      if (qword_27F53F240 != -1)
      {
        swift_once();
      }

      v59 = v15 + 1;
      v21 = qword_27F575728 + 64;
      v22 = 1 << *(qword_27F575728 + 32);
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v24 = v23 & *(qword_27F575728 + 64);
      v25 = (v22 + 63) >> 6;
      v62 = qword_27F575728;

      v26 = 0;
LABEL_11:
      if (v24)
      {
        v27 = v26;
LABEL_16:
        v28 = 0;
        v29 = (v27 << 9) | (8 * __clz(__rbit64(v24)));
        v30 = *(v62 + 56);
        v61 = *(*(v62 + 48) + v29);
        v31 = *(v30 + v29);
        v24 &= v24 - 1;
        v32 = 1 << *(v31 + 32);
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        else
        {
          v33 = -1;
        }

        v34 = v33 & *(v31 + 56);
        v35 = (v32 + 63) >> 6;
        while (v34)
        {
LABEL_25:
          v37 = (*(v31 + 48) + ((v28 << 10) | (16 * __clz(__rbit64(v34)))));
          if (*v37 != v63 || v37[1] != v20)
          {
            v34 &= v34 - 1;
            result = sub_252E37DB4();
            if ((result & 1) == 0)
            {
              continue;
            }
          }

          v39 = 0;
          v40 = v61;
          goto LABEL_32;
        }

        while (1)
        {
          v36 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v36 >= v35)
          {
            v26 = v27;
            goto LABEL_11;
          }

          v34 = *(v31 + 56 + 8 * v36);
          ++v28;
          if (v34)
          {
            v28 = v36;
            goto LABEL_25;
          }
        }

        __break(1u);
      }

      else
      {
        while (1)
        {
          v27 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v27 >= v25)
          {

            v40 = 0;
            v39 = 1;
LABEL_32:
            v6 = v59;
            v7 = v60;
            v66 = v60;
            v42 = *(v60 + 16);
            v41 = *(v60 + 24);
            v43 = v42 + 1;
            v44 = v52;
            if (v42 >= v41 >> 1)
            {
              result = sub_2529AA540((v41 > 1), v42 + 1, 1);
              v7 = v66;
            }

            *(v7 + 16) = v43;
            v45 = v7 + 16 * v42;
            *(v45 + 32) = v40;
            *(v45 + 40) = v39;
            v3 = v53;
            if (v6 != v44)
            {
              goto LABEL_3;
            }

            goto LABEL_37;
          }

          v24 = *(v21 + 8 * v27);
          ++v26;
          if (v24)
          {
            goto LABEL_16;
          }
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    v43 = *(MEMORY[0x277D84F90] + 16);
    v46 = MEMORY[0x277D84F90];
    if (v43)
    {
LABEL_37:
      v47 = (v7 + 40);
      v46 = MEMORY[0x277D84F90];
      do
      {
        if ((*v47 & 1) == 0)
        {
          v48 = *(v47 - 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_2529F8264(0, *(v46 + 2) + 1, 1, v46);
          }

          v50 = *(v46 + 2);
          v49 = *(v46 + 3);
          if (v50 >= v49 >> 1)
          {
            v46 = sub_2529F8264((v49 > 1), v50 + 1, 1, v46);
          }

          *(v46 + 2) = v50 + 1;
          *&v46[8 * v50 + 32] = v48;
        }

        v47 += 16;
        --v43;
      }

      while (v43);
    }

    return v46;
  }

  return result;
}

void sub_252A0EF78()
{
  v1 = *v0;
  v2 = v0[60];
  if (*(v2 + 16) || (__dst[0] = *v0, memcpy(&__dst[1], v0 + 1, 0x1D8uLL), v10 = v2, v11 = *(v0 + 61), v8 = *(sub_252A0EA50() + 16), , !v8))
  {
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = v1;
      while (v4 < *(v1 + 16))
      {
        v6 = *(v5 + 512);
        if (*(v6 + 16) || (memcpy(__dst, (v5 + 32), sizeof(__dst)), v10 = v6, v11 = *(v5 + 520), v7 = *(sub_252A0EA50() + 16), , !v7))
        {
          ++v4;
          v5 += 504;
          if (v3 != v4)
          {
            continue;
          }
        }

        return;
      }

      __break(1u);
    }
  }
}

unint64_t sub_252A0F090()
{
  v1 = *v0;
  memcpy(v10, v0 + 1, sizeof(v10));
  v9 = v1;
  result = sub_252A0F154();
  if (result)
  {
    LOBYTE(result) = 1;
    return result & 1;
  }

  v3 = *(v1 + 16);
  if (!v3)
  {
    LOBYTE(result) = 0;
    return result & 1;
  }

  v4 = 0;
  v5 = (v1 + 32);
  v6 = v3 - 1;
  while (v4 < *(v1 + 16))
  {
    memcpy(v8, v5, sizeof(v8));
    result = sub_252A0F154();
    if ((result & 1) == 0)
    {
      v5 += 504;
      if (v6 != v4++)
      {
        continue;
      }
    }

    return result & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_252A0F154()
{
  v0 = sub_252A0EA50();
  v1 = *(v0 + 16);
  if (!v1)
  {
LABEL_24:

    v0 = 0;
LABEL_26:
    if (qword_27F53F4E8 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_27;
  }

  if (qword_27F53F240 != -1)
  {
    swift_once();
  }

  v2 = 0;
  v3 = qword_27F575728;
  v20 = v1;
  v21 = v0;
  v19 = qword_27F575728;
  while (1)
  {
    if (v2 >= *(v0 + 16))
    {
      goto LABEL_36;
    }

    if (!*(v3 + 16))
    {
      goto LABEL_6;
    }

    v4 = sub_252A488EC();
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(*(v3 + 56) + 8 * v4);
    type metadata accessor for HomeStore(0);
    v22 = v6;

    v8 = static HomeStore.shared.getter(v7);
    v9 = sub_2529DA828();

    if (!(v9 >> 62))
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        break;
      }

      goto LABEL_5;
    }

    v10 = sub_252E378C4();
    if (v10)
    {
      break;
    }

LABEL_5:

    v1 = v20;
    v0 = v21;
    v3 = v19;
LABEL_6:
    if (++v2 == v1)
    {
      goto LABEL_24;
    }
  }

  v11 = 0;
  v0 = v9 & 0xC000000000000001;
  while (v0)
  {
    v12 = MEMORY[0x2530ADF00](v11, v9);
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_34;
    }

LABEL_16:
    v23 = v12;
    v14 = sub_252A10390(&v23, v22);

    if (v14)
    {

      v0 = 1;
      goto LABEL_26;
    }

    ++v11;
    if (v13 == v10)
    {
      goto LABEL_5;
    }
  }

  if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

  v12 = *(v9 + 8 * v11 + 32);

  v13 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_16;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  swift_once();
LABEL_27:
  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544D60);
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_252E379F4();

  v23 = 0x207365686374614DLL;
  v24 = 0xEF203A656E656373;
  if (v0)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v0)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v16, v17);

  sub_252CC3D90(v23, v24, 0xD000000000000078, 0x8000000252E71D80);

  return v0;
}

uint64_t (*sub_252A0F454())(uint64_t)
{
  v144 = sub_252E32E84();
  v129 = *(v144 - 8);
  v1 = MEMORY[0x28223BE20](v144);
  v134 = &v129 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v143 = (&v129 - v4);
  MEMORY[0x28223BE20](v3);
  v142 = &v129 - v5;
  v6 = v0[5];
  v153 = v0[4];
  v154 = v6;
  v7 = v0[7];
  v155 = v0[6];
  v156 = v7;
  v8 = v0[1];
  v149 = *v0;
  v150 = v8;
  v9 = v0[3];
  v151 = v0[2];
  v152 = v9;
  v10 = *(v0 + 16);
  memcpy(v158, v0 + 136, sizeof(v158));
  v157 = v10;
  v11 = sub_252BAC7E4();
  if (*(v10 + 16))
  {
    v12 = type metadata accessor for HomeStore(0);
    v13 = static HomeStore.shared.getter(v12);
    v14 = HomeStore.scenes(matching:)(v11);
    LOBYTE(v16) = v15;

    if ((v16 & 1) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFFF8;
      if (v14 >> 62)
      {
        goto LABEL_54;
      }

      for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
      {

        v19 = 0;
        v20 = MEMORY[0x277D84F90];
        v148 = MEMORY[0x277D84F90];
        v133 = v14 + 32;
        v134 = (v14 & 0xC000000000000001);
        v141 = (v129 + 8);
        v129 = MEMORY[0x277D84F90];
        v130 = i;
        v131 = v17;
        v132 = v14;
        while (1)
        {
          if (v134)
          {
            v21 = MEMORY[0x2530ADF00](v19, v14);
            v22 = __OFADD__(v19, 1);
            v23 = v19 + 1;
            if (v22)
            {
              goto LABEL_52;
            }
          }

          else
          {
            if (v19 >= *(v17 + 16))
            {
              goto LABEL_53;
            }

            v22 = __OFADD__(v19, 1);
            v23 = v19 + 1;
            if (v22)
            {
              goto LABEL_52;
            }
          }

          v139 = v23;
          v138 = v21;
          v135 = OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate;
          v24 = [*(v21 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
          v25 = sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
          sub_2529E6100();
          v26 = sub_252E373A4();

          v147 = v20;
          v137 = v26;
          v140 = v25;
          if ((v26 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            sub_252E37874();
            sub_252E373E4();
            v17 = *(&v149 + 1);
            v26 = v149;
            v11 = *(&v150 + 1);
            v16 = v150;
            v27 = v151;
          }

          else
          {
            v28 = -1 << *(v26 + 32);
            v17 = v26 + 56;
            v16 = ~v28;
            v29 = -v28;
            v30 = v29 < 64 ? ~(-1 << v29) : -1;
            v27 = v30 & *(v26 + 56);

            v11 = 0;
          }

          v136 = v16;
          v31 = (v16 + 64) >> 6;
          v143 = v17;
          if ((v26 & 0x8000000000000000) == 0)
          {
            break;
          }

          while (1)
          {
            v36 = sub_252E37904();
            if (!v36)
            {
              break;
            }

            v145 = v36;
            swift_dynamicCast();
            v35 = v146;
            v14 = v11;
            v34 = v27;
            if (!v146)
            {
              break;
            }

LABEL_26:
            v37 = v26;
            type metadata accessor for Action();
            v38 = swift_allocObject();
            *(v38 + 16) = v35;
            v39 = v35;
            v40 = [v39 uniqueIdentifier];
            v41 = v142;
            sub_252E32E64();

            v42 = sub_252E32E24();
            v44 = v43;
            (*v141)(v41, v144);
            *(v38 + 24) = v42;
            *(v38 + 32) = v44;
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v45 = 1;
              v26 = v37;
            }

            else
            {
              objc_opt_self();
              v26 = v37;
              if (!swift_dynamicCastObjCClass())
              {
                objc_opt_self();
                v46 = swift_dynamicCastObjCClass();
                v27 = v34;
                v17 = v143;
                if (v46)
                {
                  v45 = 3;
                }

                else
                {
                  objc_opt_self();
                  v45 = 4 * (swift_dynamicCastObjCClass() != 0);
                }

                goto LABEL_31;
              }

              v45 = 2;
            }

            v27 = v34;
            v17 = v143;
LABEL_31:

            *(v38 + 40) = v45;
            MEMORY[0x2530AD700]();
            if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            v16 = &v147;
            sub_252E372D4();
            v20 = v147;
            v11 = v14;
            if ((v26 & 0x8000000000000000) == 0)
            {
              goto LABEL_18;
            }
          }

LABEL_38:
          sub_25291AE30(v26);

          if (v20 >> 62)
          {
            v16 = sub_252E378C4();
          }

          else
          {
            v16 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v17 = v131;
          v14 = v132;
          v47 = v130;
          v11 = v138;
          v19 = v139;

          if (v16)
          {
            v48 = [*(v11 + v135) home];
            v20 = MEMORY[0x277D84F90];
            if (v48)
            {
              v49 = v48;
              type metadata accessor for Home(0);
              swift_allocObject();
              sub_2529E65BC(v49);

              MEMORY[0x2530AD700](v50);
              if (*((v148 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v148 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v11 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_252E372A4();
              }

              v16 = &v148;
              sub_252E372D4();
              v129 = v148;
            }

            else
            {
            }
          }

          else
          {

            v20 = MEMORY[0x277D84F90];
          }

          if (v19 == v47)
          {
            sub_252929F10(v14, 0);
            v51 = v129;
            goto LABEL_138;
          }
        }

LABEL_18:
        v32 = v11;
        v33 = v27;
        v14 = v11;
        if (v27)
        {
LABEL_22:
          v34 = (v33 - 1) & v33;
          v35 = *(*(v26 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v33)))));
          if (!v35)
          {
            goto LABEL_38;
          }

          goto LABEL_26;
        }

        while (1)
        {
          v14 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v14 >= v31)
          {
            goto LABEL_38;
          }

          v33 = *(v17 + 8 * v14);
          ++v32;
          if (v33)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        ;
      }
    }

    sub_252929F10(v14, v16 & 1);
  }

  v52 = type metadata accessor for HomeStore(0);
  v53 = static HomeStore.shared.getter(v52);
  v54 = HomeStore.services(matching:supporting:)(v11, 0);
  LODWORD(v56) = v55;

  if ((v56 & 1) == 0)
  {
    v140 = v54 & 0xFFFFFFFFFFFFFF8;
    if (v54 >> 62)
    {
      goto LABEL_87;
    }

    v57 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v141 = v57;
    if (v57)
    {
LABEL_59:
      *&v149 = MEMORY[0x277D84F90];
      sub_2529AA380(0, v57 & ~(v57 >> 63), 0);
      if ((v57 & 0x8000000000000000) == 0)
      {
        LODWORD(v137) = v56;
        v138 = v52;
        v139 = v11;
        v58 = 0;
        v59 = v149;
        v142 = (v54 & 0xC000000000000001);
        v60 = v54;
        do
        {
          if (v142)
          {
            MEMORY[0x2530ADF00](v58, v54);
          }

          else
          {
          }

          v61 = v57;
          sub_252CDB4B0();
          v63 = v62;

          if (v63)
          {
            v64 = *(v63 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
            v65 = *(v63 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
          }

          else
          {
            v64 = 0;
            v65 = 0;
          }

          *&v149 = v59;
          v67 = *(v59 + 16);
          v66 = *(v59 + 24);
          if (v67 >= v66 >> 1)
          {
            sub_2529AA380((v66 > 1), v67 + 1, 1);
            v59 = v149;
          }

          ++v58;
          *(v59 + 16) = v67 + 1;
          v68 = v59 + 16 * v67;
          *(v68 + 32) = v64;
          *(v68 + 40) = v65;
          v57 = v61;
          v54 = v60;
        }

        while (v61 != v58);
        v52 = v138;
        v11 = v139;
        LOBYTE(v56) = v137;
        while (1)
        {
          v69 = sub_252C75A1C(v59);

          v70 = *(v69 + 16);

          if (!v70)
          {
            goto LABEL_90;
          }

          v71 = 0;
          v51 = MEMORY[0x277D84F90];
          *&v149 = MEMORY[0x277D84F90];
          v56 = v54 & 0xC000000000000001;
          while (1)
          {
            if (v141 == v71)
            {
              v74 = v54;
LABEL_137:
              sub_252929F10(v74, 0);
LABEL_138:
              v128 = sub_252C758E0(v51);

              return v128;
            }

            if (!v56)
            {
              break;
            }

            MEMORY[0x2530ADF00](v71, v54);
            v11 = (v71 + 1);
            if (__OFADD__(v71, 1))
            {
              goto LABEL_85;
            }

LABEL_77:
            sub_252CDB4B0();
            v52 = v72;

            ++v71;
            if (v52)
            {
              MEMORY[0x2530AD700](v73);
              if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v149 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_252E372A4();
              }

              sub_252E372D4();
              v51 = v149;
              v71 = v11;
            }
          }

          if (v71 >= *(v140 + 16))
          {
            goto LABEL_86;
          }

          v11 = (v71 + 1);
          if (!__OFADD__(v71, 1))
          {
            goto LABEL_77;
          }

LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          v141 = sub_252E378C4();
          if (!v141)
          {
            goto LABEL_90;
          }

          v75 = sub_252E378C4();
          if (v75)
          {
            v57 = v75;
            goto LABEL_59;
          }

LABEL_113:
          v59 = MEMORY[0x277D84F90];
        }
      }

      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }
  }

LABEL_90:
  sub_252929F10(v54, v56 & 1);
  v77 = static HomeStore.shared.getter(v76);
  v78 = HomeStore.accessories(matching:supporting:)(v11, 0);
  v80 = v79;

  if (v80)
  {
    v81 = v78;
    v82 = 1;
LABEL_135:
    sub_252929F10(v81, v82);
    return 0;
  }

  v136 = v78 & 0xFFFFFFFFFFFFFF8;
  if (!(v78 >> 62))
  {
    v52 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v135 = v52;
    if (v52)
    {
      goto LABEL_94;
    }

LABEL_134:
    v81 = v78;
    v82 = 0;
    goto LABEL_135;
  }

  v135 = sub_252E378C4();
  if (!v135)
  {
    goto LABEL_134;
  }

  v100 = sub_252E378C4();
  if (!v100)
  {
    v84 = MEMORY[0x277D84F90];
    goto LABEL_115;
  }

  v52 = v100;
LABEL_94:
  *&v149 = MEMORY[0x277D84F90];
  sub_2529AA380(0, v52 & ~(v52 >> 63), 0);
  if (v52 < 0)
  {
    goto LABEL_112;
  }

  v83 = 0;
  v140 = v78;
  v141 = (v78 & 0xC000000000000001);
  v84 = v149;
  v137 = (v129 + 8);
  v138 = (v129 + 32);
  v139 = v52;
  do
  {
    if (v141)
    {
      v85 = MEMORY[0x2530ADF00](v83, v78);
    }

    else
    {
      v85 = *(v78 + 8 * v83 + 32);
    }

    v86 = [*(v85 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
    if (v86)
    {
      type metadata accessor for Home(0);
      v87 = swift_allocObject();
      v88 = v86;
      v89 = [v88 uniqueIdentifier];
      sub_252E32E64();

      v90 = [v88 name];
      v91 = sub_252E36F34();
      v93 = v92;

      v94 = [v88 assistantIdentifier];
      v142 = v91;
      if (v94)
      {
        v95 = v94;
        sub_252E36F34();
      }

      v96 = v144;
      (*v138)(v87 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v143, v144);

      swift_setDeallocating();
      (*v137)(v87 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v96);

      swift_deallocClassInstance();
      v52 = v139;
      v78 = v140;
      v86 = v142;
    }

    else
    {

      v93 = 0;
    }

    *&v149 = v84;
    v98 = *(v84 + 16);
    v97 = *(v84 + 24);
    if (v98 >= v97 >> 1)
    {
      sub_2529AA380((v97 > 1), v98 + 1, 1);
      v84 = v149;
    }

    ++v83;
    *(v84 + 16) = v98 + 1;
    v99 = v84 + 16 * v98;
    *(v99 + 32) = v86;
    *(v99 + 40) = v93;
  }

  while (v52 != v83);
LABEL_115:
  v101 = sub_252C75A1C(v84);

  v102 = *(v101 + 16);

  if (!v102)
  {
    goto LABEL_134;
  }

  v104 = 0;
  v51 = MEMORY[0x277D84F90];
  *&v149 = MEMORY[0x277D84F90];
  v105 = v78 & 0xC000000000000001;
  v106 = (v129 + 32);
LABEL_117:
  v107 = v104;
  while (v105)
  {
    result = MEMORY[0x2530ADF00](v107, v78);
    v108 = result;
    v104 = v107 + 1;
    if (__OFADD__(v107, 1))
    {
      goto LABEL_139;
    }

LABEL_121:
    v109 = [*(v108 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
    if (v109)
    {
      v143 = v106;
      v110 = v109;
      type metadata accessor for Home(0);
      v111 = swift_allocObject();
      *(v111 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v110;
      v112 = v110;
      v113 = [v112 uniqueIdentifier];
      sub_252E32E64();

      v114 = [v112 name];
      v115 = sub_252E36F34();
      v141 = v116;
      v142 = v115;

      v117 = [v112 assistantIdentifier];
      if (v117)
      {
        v118 = v78;
        v119 = v117;
        v139 = sub_252E36F34();
        v121 = v120;

        v78 = v118;
        v122 = v121;
        v123 = v139;
      }

      else
      {

        v123 = 0;
        v122 = 0;
      }

      v106 = v143;
      v124 = (*v143)(v111 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v134, v144);
      v125 = (v111 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v126 = v141;
      *v125 = v142;
      v125[1] = v126;
      *(v111 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 1;
      v127 = (v111 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v127 = v123;
      v127[1] = v122;
      MEMORY[0x2530AD700](v124);
      if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v149 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v51 = v149;
      if (v104 == v135)
      {
LABEL_136:
        v74 = v78;
        goto LABEL_137;
      }

      goto LABEL_117;
    }

    ++v107;
    if (v104 == v135)
    {
      goto LABEL_136;
    }
  }

  if (v107 >= *(v136 + 16))
  {
    goto LABEL_140;
  }

  v108 = *(v78 + 8 * v107 + 32);

  v104 = v107 + 1;
  if (!__OFADD__(v107, 1))
  {
    goto LABEL_121;
  }

LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
  return result;
}

uint64_t sub_252A10390(char **a1, uint64_t a2)
{
  v50 = a2;
  v49 = sub_252E32A64();
  v4 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = [*&(*a1)[OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate] actions];
  sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
  sub_2529E6100();
  v8 = sub_252E373A4();

  v9 = sub_252B2E20C(v8);
  v10 = v2;

  if (v9 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {

    if (!i)
    {
      break;
    }

    v44[1] = v10;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544D60);
    v55[0] = 0;
    v55[1] = 0xE000000000000000;
    sub_252E379F4();

    strcpy(v55, "Checking for ");
    HIWORD(v55[1]) = -4864;
    v13 = *&v6[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
    v14 = *&v6[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8];
    v44[0] = &v6[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
    v15 = sub_252AD26C8(v13, v14);
    MEMORY[0x2530AD570](v15);

    MEMORY[0x2530AD570](544106784, 0xE400000000000000);
    v16 = v50;
    v17 = sub_252E373B4();
    MEMORY[0x2530AD570](v17);

    sub_252CC3D90(v55[0], v55[1], 0xD000000000000078, 0x8000000252E71D80);

    v18 = v16 + 56;
    v19 = 1 << *(v16 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v16 + 56);
    v22 = (v19 + 63) >> 6;
    v45 = (v4 + 8);

    v10 = 0;
    v6 = MEMORY[0x277D84F90];
    v46 = v22;
    for (j = v18; v21; v18 = j)
    {
      v56 = v6;
LABEL_14:
      v24 = (*(v50 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v21)))));
      v25 = *v24;
      v54 = v24[1];
      v55[0] = v25;
      v55[1] = v54;

      v26 = v48;
      sub_252E32A44();
      sub_252947DBC();
      v27 = sub_252E37784();
      v53 = *v45;
      v28 = v49;
      v53(v26, v49);
      v55[0] = v27;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
      v51 = sub_2529508A0();
      v29 = sub_252E36EA4();
      v31 = v30;

      v55[0] = v29;
      v55[1] = v31;
      sub_252E32A34();
      v32 = sub_252E37784();
      v53(v26, v28);

      v55[0] = v32;
      sub_252E36EA4();

      v33 = sub_252E36FA4();
      v35 = v34;

      v6 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_2529F7A80(0, *(v6 + 2) + 1, 1, v6);
      }

      v4 = *(v6 + 2);
      v36 = *(v6 + 3);
      if (v4 >= v36 >> 1)
      {
        v6 = sub_2529F7A80((v36 > 1), v4 + 1, 1, v6);
      }

      v21 &= v21 - 1;
      *(v6 + 2) = v4 + 1;
      v37 = &v6[16 * v4];
      *(v37 + 4) = v33;
      *(v37 + 5) = v35;
      v22 = v46;
    }

    while (1)
    {
      v23 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v23 >= v22)
      {

        v55[0] = sub_252AD26C8(*v44[0], *(v44[0] + 8));
        v55[1] = v38;
        MEMORY[0x28223BE20](v55[0]);
        v44[-2] = v55;
        v39 = sub_2529ED970(sub_25296A69C, &v44[-4], v6);

        return v39 & 1;
      }

      v21 = *(v18 + 8 * v23);
      ++v10;
      if (v21)
      {
        v56 = v6;
        v10 = v23;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_26:
    ;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v40 = sub_252E36AD4();
  __swift_project_value_buffer(v40, qword_27F544D60);
  v55[0] = 0;
  v55[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v55, "Found scene: ");
  HIWORD(v55[1]) = -4864;
  v41 = *&v6[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
  v42 = *&v6[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8];

  MEMORY[0x2530AD570](v41, v42);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E71EB0);
  sub_252CC3D90(v55[0], v55[1], 0xD000000000000078, 0x8000000252E71D80);

  v39 = 0;
  return v39 & 1;
}

uint64_t sub_252A10A34()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 26);
  result = *(v0 + 64);
  v4 = *(v0 + 192);
  v5 = *(v0 + 256);
  if (result != 4)
  {
    result = sub_252A0CE08(result, 0);
    if ((result & 1) == 0)
    {
      return 1;
    }
  }

  if (v2 != 4)
  {
    if (sub_252A0C910(v2, 2u))
    {
      return 1;
    }

    result = sub_252A0C910(v2, 3u);
    if (result)
    {
      return 1;
    }
  }

  if (v1 != 2)
  {
    if ((v1 & 1) == 0 || (v15 = sub_252E37DB4(), swift_bridgeObjectRelease_n(), (v15 & 1) == 0))
    {
      swift_bridgeObjectRelease_n();
    }

    return 1;
  }

  if (*(v5 + 16))
  {
    return 1;
  }

  v6 = 0;
  v7 = *(v4 + 16);
  do
  {
    v9 = v7 != v6;
    if (v7 == v6)
    {
      break;
    }

    if (v6 >= *(v4 + 16))
    {
      __break(1u);
      return result;
    }

    if (StateSemantic.rawValue.getter() == 7827308 && v10 == 0xE300000000000000)
    {
      goto LABEL_21;
    }

    v11 = sub_252E37DB4();

    if (v11)
    {
      return v9;
    }

    if (StateSemantic.rawValue.getter() == 0x6D756964656DLL && v12 == 0xE600000000000000)
    {
      goto LABEL_21;
    }

    v13 = sub_252E37DB4();

    if (v13)
    {
      return v9;
    }

    if (StateSemantic.rawValue.getter() == 1751607656 && v14 == 0xE400000000000000)
    {
LABEL_21:

      return 1;
    }

    v8 = sub_252E37DB4();

    ++v6;
  }

  while ((v8 & 1) == 0);
  return v9;
}

uint64_t sub_252A10C68(unint64_t a1)
{
  v2 = *(v1 + 208);
  if (v2 == 9)
  {
    return (v2 == 9) & (sub_252B9D64C(a1) ^ 1);
  }

  v3 = a1;
  v4 = sub_252A0D524(v2, 0);
  a1 = v3;
  if ((v4 & 1) == 0)
  {
    return (v2 == 9) & (sub_252B9D64C(a1) ^ 1);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_252A10CC8()
{
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) != 2)
    {
      v1 = 0;
      return v1 & 1;
    }
  }

  else if (*(v0 + 8))
  {
    v1 = 1;
    goto LABEL_7;
  }

  v1 = sub_252E37DB4();
LABEL_7:

  return v1 & 1;
}

uint64_t sub_252A10D90()
{
  v1 = *(v0 + 209);
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (v1)
    {
      v2 = sub_252E37DB4();
    }

    else
    {
      v2 = 1;
    }
  }

  return v2 & 1;
}

void sub_252A10E18(char *a1@<X8>)
{
  v3 = *(v1 + 192);
  v4 = *(v3 + 16);
  if (v4 < 2 || (v5 = sub_2529A78B0(0, *(v1 + 192)), v4 = *(v3 + 16), !v5))
  {
    if (v4)
    {
      v8 = *(v3 + 32);
    }

    else
    {
      v8 = 77;
    }

    goto LABEL_15;
  }

  if (!v4)
  {
LABEL_14:
    v8 = 0;
LABEL_15:
    *a1 = v8;
    return;
  }

  v6 = 0;
  while (v6 < *(v3 + 16))
  {
    v8 = *(v3 + 32 + v6);
    if (StateSemantic.rawValue.getter() == 28271 && v9 == 0xE200000000000000)
    {
    }

    else
    {
      v7 = sub_252E37DB4();

      if ((v7 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (v4 == ++v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

char *sub_252A10F24()
{
  v0 = sub_252A12828();
  v1 = v0[2];
  if (v1)
  {
    v2 = (v0 + 4);
    v3 = MEMORY[0x277D84F90];
    do
    {
      v4 = *v2++;
      v5 = sub_252A9AD58(v4);
      v7 = sub_252A9B42C(v5, v6);
      if (v7 != 71)
      {
        if (qword_27F53F2B0 != -1)
        {
          v14 = v7;
          swift_once();
          v7 = v14;
        }

        v8 = off_27F541CE0;
        if (*(off_27F541CE0 + 2))
        {
          v9 = sub_252A45194(v7);
          if (v10)
          {
            v11 = *(v8[7] + 8 * v9);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_2529F7A6C(0, *(v3 + 2) + 1, 1, v3);
            }

            v13 = *(v3 + 2);
            v12 = *(v3 + 3);
            if (v13 >= v12 >> 1)
            {
              v3 = sub_2529F7A6C((v12 > 1), v13 + 1, 1, v3);
            }

            *(v3 + 2) = v13 + 1;
            *&v3[8 * v13 + 32] = v11;
          }
        }
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_252A11078()
{
  v86 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 144);
  v82 = *(v0 + 128);
  v83 = v1;
  v2 = *(v0 + 176);
  v84 = *(v0 + 160);
  v85 = v2;
  v3 = *(v0 + 80);
  v78 = *(v0 + 64);
  v79 = v3;
  v4 = *(v0 + 112);
  v80 = *(v0 + 96);
  v81 = v4;
  v5 = *(v0 + 16);
  v74 = *v0;
  v75 = v5;
  v6 = *(v0 + 48);
  v76 = *(v0 + 32);
  v77 = v6;
  v7 = *(v0 + 192);
  memcpy(v73, (v0 + 200), sizeof(v73));

  v9 = sub_252C75D8C(v8);

  if (*(v9 + 16) == 2)
  {
    v66 = 0;
    if (sub_252DA0454(0, v9))
    {
      v10 = *(v9 + 32);
      v11 = v10 & 0x3F;
      v12 = ((1 << v10) + 63) >> 6;
      v13 = 8 * v12;

      if (v11 <= 0xD)
      {
        goto LABEL_4;
      }

      if (swift_stdlib_isStackAllocationSafe())
      {

LABEL_4:
        v69 = v7;
        v64 = &v63;
        v65 = v12;
        MEMORY[0x28223BE20](v14);
        v67 = &v63 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
        bzero(v67, v13);
        v68 = 0;
        v15 = 0;
        v16 = 1 << *(v9 + 32);
        v17 = -1;
        if (v16 < 64)
        {
          v17 = ~(-1 << v16);
        }

        v18 = v17 & *(v9 + 56);
        v19 = (v16 + 63) >> 6;
        while (v18)
        {
          v21 = __clz(__rbit64(v18));
          v18 &= v18 - 1;
LABEL_15:
          v7 = v21 | (v15 << 6);
          LOBYTE(v70[0]) = *(*(v9 + 48) + v7);
          if (StateSemantic.rawValue.getter() == 28271 && v24 == 0xE200000000000000)
          {
          }

          else
          {
            v20 = sub_252E37DB4();

            if ((v20 & 1) == 0)
            {
              *&v67[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
              v25 = __OFADD__(v68++, 1);
              if (v25)
              {
                __break(1u);
                goto LABEL_21;
              }
            }
          }
        }

        v22 = v15;
        while (1)
        {
          v15 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v15 >= v19)
          {
            v26 = sub_252C540C0(v67, v65, v68, v9);
            v7 = v69;
            goto LABEL_24;
          }

          v23 = *(v9 + 56 + 8 * v15);
          ++v22;
          if (v23)
          {
            v21 = __clz(__rbit64(v23));
            v18 = (v23 - 1) & v23;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_85;
      }

      v59 = swift_slowAlloc();

      v26 = sub_252A19280(v59, v12, v9, sub_252A11988);
      swift_bridgeObjectRelease_n();
      MEMORY[0x2530AED00](v59, -1, -1);
LABEL_24:
      if (qword_27F53F268 != -1)
      {
        swift_once();
      }

      v27 = sub_252A11F64(qword_27F575750, v26);

      LODWORD(v19) = v27 ^ 1;
    }

    else
    {
      LODWORD(v19) = 0;
    }

    if (*(v9 + 16) == 2)
    {
      if (sub_252DA0454(1, v9))
      {
        LODWORD(v68) = v19;
        v69 = v7;
        v28 = *(v9 + 32);
        v29 = v28 & 0x3F;
        v30 = ((1 << v28) + 63) >> 6;
        v31 = 8 * v30;

        if (v29 <= 0xD)
        {
          goto LABEL_30;
        }

        if (swift_stdlib_isStackAllocationSafe())
        {

LABEL_30:
          v63 = &v63;
          v64 = v30;
          MEMORY[0x28223BE20](v32);
          v65 = &v63 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
          bzero(v65, v31);
          v67 = 0;
          v19 = 0;
          v33 = 1 << *(v9 + 32);
          v34 = -1;
          if (v33 < 64)
          {
            v34 = ~(-1 << v33);
          }

          v35 = v34 & *(v9 + 56);
          v36 = (v33 + 63) >> 6;
          while (v35)
          {
            v38 = __clz(__rbit64(v35));
            v35 &= v35 - 1;
LABEL_41:
            v7 = v38 | (v19 << 6);
            LOBYTE(v70[0]) = *(*(v9 + 48) + v7);
            if (StateSemantic.rawValue.getter() == 6710895 && v41 == 0xE300000000000000)
            {
            }

            else
            {
              v37 = sub_252E37DB4();

              if ((v37 & 1) == 0)
              {
                *&v65[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
                v25 = __OFADD__(v67++, 1);
                if (v25)
                {
                  __break(1u);
                  goto LABEL_47;
                }
              }
            }
          }

          v39 = v19;
          while (1)
          {
            v19 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              break;
            }

            if (v19 >= v36)
            {
              v43 = sub_252C540C0(v65, v64, v67, v9);
              goto LABEL_50;
            }

            v40 = *(v9 + 56 + 8 * v19);
            ++v39;
            if (v40)
            {
              v38 = __clz(__rbit64(v40));
              v35 = (v40 - 1) & v40;
              goto LABEL_41;
            }
          }

LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v60 = swift_slowAlloc();

        v61 = v66;
        v62 = sub_252A19280(v60, v30, v9, sub_252A124E4);
        if (v61)
        {

          swift_bridgeObjectRelease_n();
          result = MEMORY[0x2530AED00](v60, -1, -1);
          __break(1u);
          return result;
        }

        v43 = v62;
        swift_bridgeObjectRelease_n();
        MEMORY[0x2530AED00](v60, -1, -1);
LABEL_50:
        v7 = v69;
        if (qword_27F53F268 != -1)
        {
          swift_once();
        }

        v44 = sub_252A11F64(qword_27F575750, v43);

        v42 = v44 ^ 1;
        LODWORD(v19) = v68;
      }

      else
      {
        v42 = 0;
      }

      v45 = *(v9 + 16) == 2;
      LODWORD(v67) = v42;
      if (v45 && ((sub_252DA0454(10, v9) & 1) != 0 || (sub_252DA0454(9, v9) & 1) != 0))
      {
        v46 = sub_252DA0454(18, v9);
        goto LABEL_58;
      }
    }

    else
    {
LABEL_47:
      LODWORD(v67) = 0;
    }
  }

  else
  {
LABEL_21:
    LODWORD(v19) = 0;
    LODWORD(v67) = 0;
  }

  v46 = 0;
LABEL_58:
  LODWORD(v66) = v46;

  v70[8] = v82;
  v70[9] = v83;
  v70[10] = v84;
  v70[11] = v85;
  v70[4] = v78;
  v70[5] = v79;
  v70[6] = v80;
  v70[7] = v81;
  v70[0] = v74;
  v70[1] = v75;
  v70[2] = v76;
  v70[3] = v77;
  v71 = v7;
  memcpy(v72, v73, sizeof(v72));
  LODWORD(v69) = sub_252E10C30(v70);
  if (qword_27F53F4E8 != -1)
  {
LABEL_86:
    swift_once();
  }

  v47 = sub_252E36AD4();
  v65 = __swift_project_value_buffer(v47, qword_27F544D60);
  *&v70[0] = 0;
  *(&v70[0] + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E71E20);
  if (v19)
  {
    v48 = 1702195828;
  }

  else
  {
    v48 = 0x65736C6166;
  }

  LODWORD(v68) = v19;
  if (v19)
  {
    v49 = 0xE400000000000000;
  }

  else
  {
    v49 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v48, v49);

  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E71E40);
  v50 = v67;
  if (v67)
  {
    v51 = 1702195828;
  }

  else
  {
    v51 = 0x65736C6166;
  }

  if (v67)
  {
    v52 = 0xE400000000000000;
  }

  else
  {
    v52 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v51, v52);

  MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E71E60);
  v53 = v66;
  if (v66)
  {
    v54 = 1702195828;
  }

  else
  {
    v54 = 0x65736C6166;
  }

  if (v66)
  {
    v55 = 0xE400000000000000;
  }

  else
  {
    v55 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v54, v55);

  MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E71E80);
  if (v69)
  {
    v56 = 1702195828;
  }

  else
  {
    v56 = 0x65736C6166;
  }

  if (v69)
  {
    v57 = 0xE400000000000000;
  }

  else
  {
    v57 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v56, v57);

  sub_252CC3D90(*&v70[0], *(&v70[0] + 1), 0xD000000000000078, 0x8000000252E71D80);

  return (v68 | v50 | v53 | v69) & 1;
}