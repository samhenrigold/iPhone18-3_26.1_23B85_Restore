__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26F1389DC(uint64_t a1, int a2)
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

uint64_t sub_26F1389FC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26F138A44(uint64_t a1, int a2)
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

uint64_t sub_26F138A64(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26F138AEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26F138B48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_26F138BCC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_26F138C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D40A0, &qword_26F181AC0);
  MEMORY[0x28223BE20](v4);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D40A8, &qword_26F181AC8);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  *&v24 = v11;
  *(&v24 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4090, &qword_26F181AB0);
  sub_26F180414();
  v12 = v29;
  if (v29)
  {
    sub_26F13AA48(0, &qword_2806D40B0, 0x277CD9ED0);
    v22[1] = a2;
    *(swift_allocObject() + 16) = v12;
    v13 = v12;
    sub_26F17F994();
    sub_26F180564();
    sub_26F17F9A4();
    v14 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D40B8, &qword_26F181AD0) + 36)];
    v15 = v25;
    *v14 = v24;
    *(v14 + 1) = v15;
    *(v14 + 2) = v26;
    v16 = *a1;
    v30 = *(a1 + 8);
    v31 = v11;
    v32 = v10;
    v17 = *(a1 + 40);
    v28 = *(a1 + 32);
    v29 = v16;
    v27 = v17;
    v18 = swift_allocObject();
    v19 = *(a1 + 16);
    *(v18 + 1) = *a1;
    *(v18 + 2) = v19;
    *(v18 + 3) = *(a1 + 32);
    v20 = &v6[*(v4 + 36)];
    *v20 = sub_26F13A84C;
    v20[1] = v18;
    v20[2] = 0;
    v20[3] = 0;
    sub_26F13A854(v6, v9, &qword_2806D40A0, &qword_26F181AC0);
    swift_storeEnumTagMultiPayload();
    sub_26F13A854(&v29, v23, &qword_2806D4060, &qword_26F181A88);
    sub_26F13A854(&v31, v23, &qword_2806D4068, &qword_26F181A90);
    sub_26F13A854(&v32, v23, &qword_2806D4070, &qword_26F181A98);
    sub_26F13A854(&v28, v23, &qword_2806D4078, &qword_26F181AA0);
    sub_26F13A854(&v27, v23, &qword_2806D4080, &qword_26F181AA8);
    sub_26F13A8BC();
    sub_26F17FE44();

    return sub_26F13AB10(v6, &qword_2806D40A0, &qword_26F181AC0);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_26F13A8BC();
    return sub_26F17FE44();
  }
}

uint64_t sub_26F138FAC(uint64_t *a1)
{
  v2 = sub_26F180644();
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26F180684();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26F1806A4();
  v26 = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  sub_26F13AA48(0, &qword_2806D4340, 0x277D85C78);
  v24 = sub_26F180984();
  sub_26F180694();
  sub_26F1806B4();
  v25 = *(v9 + 8);
  v25(v12, v8);
  v15 = *a1;
  v37 = *(a1 + 8);
  v16 = a1[3];
  v35 = a1[2];
  v36 = v15;
  v17 = a1[5];
  v33 = a1[4];
  v34 = v16;
  v32 = v17;
  v18 = swift_allocObject();
  v19 = *(a1 + 1);
  v18[1] = *a1;
  v18[2] = v19;
  v18[3] = *(a1 + 2);
  aBlock[4] = sub_26F13AA90;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F1673F4;
  aBlock[3] = &block_descriptor;
  v20 = _Block_copy(aBlock);
  sub_26F13A854(&v36, v30, &qword_2806D4060, &qword_26F181A88);
  sub_26F13A854(&v35, v30, &qword_2806D4068, &qword_26F181A90);
  sub_26F13A854(&v34, v30, &qword_2806D4070, &qword_26F181A98);
  sub_26F13A854(&v33, v30, &qword_2806D4078, &qword_26F181AA0);
  sub_26F13A854(&v32, v30, &qword_2806D4080, &qword_26F181AA8);

  sub_26F180664();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26F13A120(&qword_2806D40E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4350, &qword_26F181AE0);
  sub_26F13AC54(&qword_2806D40E8, &unk_2806D4350, &qword_26F181AE0, MEMORY[0x277D83970]);
  sub_26F180A44();
  v21 = v24;
  MEMORY[0x27438A580](v14, v7, v4, v20);
  _Block_release(v20);

  (*(v29 + 8))(v4, v2);
  (*(v27 + 8))(v7, v28);
  return (v25)(v14, v26);
}

uint64_t sub_26F139434(uint64_t *a1)
{
  v30 = sub_26F180644();
  v33 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26F180684();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26F1806A4();
  v27 = v5;
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = a1[4];
  v13 = a1[2];
  sub_26F13A208(v13, a1[3], v12, a1[5]);
  v14 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
  [v14 impactOccurred];

  sub_26F13AA48(0, &qword_2806D4340, 0x277D85C78);
  v25 = sub_26F180984();
  sub_26F180694();
  sub_26F1806B4();
  v26 = *(v6 + 8);
  v26(v9, v5);
  v36 = *a1;
  v37 = *(a1 + 8);
  v15 = swift_allocObject();
  v16 = *(a1 + 1);
  v15[1] = *a1;
  v15[2] = v16;
  v15[3] = *(a1 + 2);
  aBlock[4] = sub_26F13AB08;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F1673F4;
  aBlock[3] = &block_descriptor_49;
  v17 = _Block_copy(aBlock);
  sub_26F13A854(&v36, v34, &qword_2806D4060, &qword_26F181A88);

  v18 = v13;

  v19 = v12;

  v20 = v28;
  sub_26F180664();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26F13A120(&qword_2806D40E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4350, &qword_26F181AE0);
  sub_26F13AC54(&qword_2806D40E8, &unk_2806D4350, &qword_26F181AE0, MEMORY[0x277D83970]);
  v22 = v29;
  v21 = v30;
  sub_26F180A44();
  v23 = v25;
  MEMORY[0x27438A580](v11, v20, v22, v17);
  _Block_release(v17);

  (*(v33 + 8))(v22, v21);
  (*(v31 + 8))(v20, v32);
  return (v26)(v11, v27);
}

uint64_t sub_26F1398B0(uint64_t *a1)
{
  v2 = sub_26F17FC84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 8);
  v6 = *a1;
  v13 = v6;
  v7 = v14;

  if ((v7 & 1) == 0)
  {
    sub_26F180944();
    v8 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();
    sub_26F13AB10(&v13, &qword_2806D4060, &qword_26F181A88);
    (*(v3 + 8))(v5, v2);
    v6 = v12;
  }

  if (*(v6 + 53) == 1)
  {
    *(v6 + 53) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v11 - 2) = v6;
    *(&v11 - 8) = 1;
    v12 = v6;
    sub_26F13A120(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
    sub_26F17F7B4();
  }
}

uint64_t sub_26F139B1C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v10 = *v1;
  v11 = v3;
  v12 = v1[2];
  *a1 = sub_26F17FD74();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4050, &qword_26F181A78);
  sub_26F138C34(&v10, a1 + *(v4 + 44));
  v13 = v10;
  v14 = BYTE8(v10);
  v15 = *(&v11 + 1);
  v16 = v11;
  v17 = *(&v12 + 1);
  v18 = v12;
  v5 = swift_allocObject();
  v6 = v11;
  *(v5 + 1) = v10;
  *(v5 + 2) = v6;
  *(v5 + 3) = v12;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4058, &qword_26F181A80) + 36));
  *v7 = sub_26F13A1FC;
  v7[1] = v5;
  v7[2] = 0;
  v7[3] = 0;
  sub_26F13A854(&v13, v9, &qword_2806D4060, &qword_26F181A88);
  sub_26F13A854(&v16, v9, &qword_2806D4068, &qword_26F181A90);
  sub_26F13A854(&v15, v9, &qword_2806D4070, &qword_26F181A98);
  sub_26F13A854(&v18, v9, &qword_2806D4078, &qword_26F181AA0);
  return sub_26F13A854(&v17, v9, &qword_2806D4080, &qword_26F181AA8);
}

uint64_t sub_26F139C90()
{
  v0 = sub_26F180754();
  v1 = MEMORY[0x27438A450](v0);

  return v1;
}

uint64_t sub_26F139CCC(uint64_t a1)
{
  sub_26F180754();
  sub_26F1807B4();
}

uint64_t sub_26F139D20(uint64_t a1)
{
  sub_26F180754();
  sub_26F180B94();
  sub_26F1807B4();
  v1 = sub_26F180BB4();

  return v1;
}

uint64_t sub_26F139D9C(uint64_t a1, id *a2)
{
  result = sub_26F180734();
  *a2 = 0;
  return result;
}

uint64_t sub_26F139E14(uint64_t a1, id *a2)
{
  v3 = sub_26F180744();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26F139E94@<X0>(uint64_t *a2@<X8>)
{
  sub_26F180754();
  v3 = sub_26F180724();

  *a2 = v3;
  return result;
}

uint64_t sub_26F139ED8(void *a1, uint64_t *a2)
{
  v2 = sub_26F180754();
  v4 = v3;
  if (v2 == sub_26F180754() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26F180B44();
  }

  return v7 & 1;
}

uint64_t sub_26F139F60@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_26F180724();

  *a2 = v3;
  return result;
}

uint64_t sub_26F139FA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F180754();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26F139FD4(uint64_t a1)
{
  v2 = sub_26F13A120(&qword_2806D4040, type metadata accessor for Key, &unk_26F181A34);
  v3 = sub_26F13A120(&qword_2806D4048, type metadata accessor for Key, &unk_26F181988);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26F13A120(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26F13A208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4090, &qword_26F181AB0);
  sub_26F180414();
  if (v12)
  {

    v4 = sub_26F180724();

    v5 = [v12 stateWithName_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4098, &qword_26F181AB8);
    sub_26F180414();
    v6 = v12;
    LODWORD(v7) = 1.0;
    [v12 setState:v5 ofLayer:v6 transitionSpeed:v7];

    v8 = sub_26F180724();

    v9 = [v12 stateWithName_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4098, &qword_26F181AB8);
    sub_26F180414();
    v10 = v12;
    LODWORD(v11) = 1.0;
    [v12 setState:v9 ofLayer:v10 transitionSpeed:v11];
  }
}

void sub_26F13A3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x277D85DE8];
  sub_26F13AA48(0, &qword_2806D4088, 0x277CCA8D8);
  v8 = sub_26F1809E4();
  if (!v8)
  {
    v8 = [objc_opt_self() mainBundle];
  }

  v9 = v8;
  v10 = objc_allocWithZone(MEMORY[0x277D74218]);
  v11 = sub_26F180724();
  v12 = [v10 initWithName:v11 bundle:v9];

  if (v12)
  {
    v13 = [v12 data];

    v14 = sub_26F17F754();
    v16 = v15;

    sub_26F13A764(v14, v16);
    v17 = sub_26F17F744();
    v18 = sub_26F180724();
    v29.m11 = 0.0;
    v19 = [objc_opt_self() packageWithData:v17 type:v18 options:0 error:&v29];

    if (v19)
    {
      v20 = *&v29.m11;
      sub_26F13A7B8(v14, v16);
      v21 = [v19 rootLayer];
      if (v21)
      {
        *&v29.m11 = a1;
        *&v29.m12 = a2;
        v30 = v21;
        v22 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4090, &qword_26F181AB0);
        sub_26F180424();
        v23 = [objc_allocWithZone(MEMORY[0x277CD9FB8]) initWithLayer_];
        *&v29.m11 = a3;
        *&v29.m12 = a4;
        v30 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4098, &qword_26F181AB8);
        sub_26F180424();
        CATransform3DMakeScale(&v29, 1.0, -1.0, 1.0);
        [v22 setTransform_];
        v24 = sub_26F180724();
        v25 = [v22 stateWithName_];

        *&v29.m11 = a3;
        *&v29.m12 = a4;
        sub_26F180414();
        v26 = v30;
        [v30 setState:v25 ofLayer:v22];
        sub_26F13A7B8(v14, v16);

        return;
      }
    }

    else
    {
      v27 = *&v29.m11;
      v28 = sub_26F17F6A4();

      swift_willThrow();
      sub_26F13A7B8(v14, v16);
    }

    sub_26F13A7B8(v14, v16);
  }
}

uint64_t sub_26F13A764(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_26F13A7B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_26F13A80C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26F13A854(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_26F13A8BC()
{
  result = qword_2806D40C0;
  if (!qword_2806D40C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D40A0, &qword_26F181AC0);
    sub_26F13A990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D40C0);
  }

  return result;
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

unint64_t sub_26F13A990()
{
  result = qword_2806D40C8;
  if (!qword_2806D40C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D40B8, &qword_26F181AD0);
    sub_26F13AC54(&qword_2806D40D0, &qword_2806D40D8, &qword_26F181AD8, MEMORY[0x277CDF660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D40C8);
  }

  return result;
}

uint64_t sub_26F13AA48(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26F13AB10(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_26F13AB9C()
{
  result = qword_2806D40F8;
  if (!qword_2806D40F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4058, &qword_26F181A80);
    sub_26F13AC54(&qword_2806D4100, &qword_2806D4108, &unk_26F181B10, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D40F8);
  }

  return result;
}

uint64_t sub_26F13AC54(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_26F13ACB8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_26F17FC84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_26F13A854(v2, &v13 - v9, &unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26F140EA0(v10, a1);
  }

  sub_26F180944();
  v12 = sub_26F17FFE4();
  sub_26F17F884();

  sub_26F17FC74();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26F13AE88()
{
  v1 = sub_26F17FC84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SelectTextView(0) + 20));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_26F180944();
    v8 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_26F13AFD8()
{
  v0 = sub_26F17F6C4();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26F17F7A4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = sub_26F180714();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = sub_26F17F6D4();
  MEMORY[0x28223BE20](v17 - 8);
  v28 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F13AA48(0, &qword_2806D4088, 0x277CCA8D8);
  v19 = sub_26F1809E4();
  if (!v19)
  {
    v19 = [objc_opt_self() mainBundle];
  }

  v20 = v19;
  sub_26F17F794();
  (*(v11 + 16))(v14, v16, v10);
  (*(v4 + 16))(v7, v9, v3);
  v21 = [v20 bundleURL];
  v27 = v10;
  v22 = v3;
  v23 = v21;
  sub_26F17F714();

  (*(v29 + 104))(v2, *MEMORY[0x277CC9118], v30);
  sub_26F17F6E4();

  (*(v4 + 8))(v9, v22);
  (*(v11 + 8))(v16, v27);
  result = sub_26F180774();
  qword_2806D6BF0 = result;
  *algn_2806D6BF8 = v25;
  return result;
}

uint64_t sub_26F13B390@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SelectTextView(0);
  v5 = v1 + v4[7];
  v6 = *v5;
  v7 = *(v5 + 8);
  LOBYTE(v24[0]) = v6;
  *(&v24[0] + 1) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180434();
  v8 = v1 + v4[6];
  v9 = *v8;
  v10 = *(v8 + 8);
  LOBYTE(v24[0]) = v9;
  *(&v24[0] + 1) = v10;
  sub_26F180434();
  v11 = (v1 + v4[9]);
  v12 = *v11;
  v13 = v11[1];
  *&v24[0] = v12;
  *(&v24[0] + 1) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
  sub_26F180434();
  v14 = sub_26F13AE88();
  if (qword_2806D3FC0 != -1)
  {
    swift_once();
  }

  v16 = qword_2806D6BF0;
  v15 = *algn_2806D6BF8;
  v17 = objc_allocWithZone(MEMORY[0x277D75C40]);

  *&v27[8] = v26;
  v27[24] = v27[0];
  v28 = v26;
  *&v29 = *v27;
  *(&v29 + 1) = v14;
  *&v30 = [v17 init];
  *(&v30 + 1) = v16;
  v31 = v15;
  v25 = v15;
  v24[4] = v29;
  v24[5] = v30;
  v24[0] = v26;
  v24[1] = *v27;
  v24[2] = *&v27[16];
  v24[3] = v26;
  *a1 = sub_26F180564();
  a1[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4238, &qword_26F181C68);
  sub_26F13B614(v2, v24, a1 + *(v19 + 44));
  if (qword_2806D3FD8 != -1)
  {
    swift_once();
  }

  v20 = qword_2806D6C10;
  v21 = sub_26F180014();
  sub_26F140220(&v26);
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4240, &qword_26F181C70) + 36);
  *v22 = v20;
  v22[8] = v21;
}

uint64_t sub_26F13B614@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4248, &qword_26F181C78);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v19[-v10];
  *v11 = sub_26F17FD74();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4250, &qword_26F181C80);
  sub_26F13B7AC(a1, a2, &v11[*(v12 + 44)]);
  v13 = (a1 + *(type metadata accessor for SelectTextView(0) + 24));
  v14 = *v13;
  v15 = *(v13 + 1);
  v19[16] = v14;
  v20 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180414();
  if (v19[15])
  {
    v16 = 0.01;
  }

  else
  {
    v16 = 0.0;
  }

  sub_26F140250(v11, v9);
  sub_26F140250(v9, a3);
  v17 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4258, &qword_26F181C88) + 48);
  *v17 = v16;
  *(v17 + 4) = 256;
  sub_26F1402C0(v11);
  return sub_26F1402C0(v9);
}

uint64_t sub_26F13B7AC@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a3;
  v5 = type metadata accessor for SelectTextView(0);
  v81 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v82 = v6;
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4260, &qword_26F181C90);
  v84 = *(v8 - 8);
  v85 = v8;
  MEMORY[0x28223BE20](v8);
  v83 = &v80 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4268, &qword_26F181C98);
  v88 = *(v10 - 8);
  v89 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v87 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v92 = &v80 - v13;
  v93 = sub_26F17FCB4();
  LOBYTE(v111[0]) = 1;
  sub_26F13C568(a1, v96);
  v145 = v96[6];
  v146[0] = v96[7];
  *(v146 + 9) = *(&v96[7] + 9);
  v141 = v96[2];
  v142 = v96[3];
  v144 = v96[5];
  v143 = v96[4];
  v140 = v96[1];
  v139 = v96[0];
  v147[6] = v96[6];
  v148[0] = v96[7];
  *(v148 + 9) = *(&v96[7] + 9);
  v147[2] = v96[2];
  v147[3] = v96[3];
  v147[5] = v96[5];
  v147[4] = v96[4];
  v147[1] = v96[1];
  v147[0] = v96[0];
  sub_26F13A854(&v139, v95, &qword_2806D4270, &qword_26F181CA0);
  sub_26F13AB10(v147, &qword_2806D4270, &qword_26F181CA0);
  *(&v138[5] + 7) = v144;
  *(&v138[6] + 7) = v145;
  *(&v138[7] + 7) = v146[0];
  v138[8] = *(v146 + 9);
  *(&v138[1] + 7) = v140;
  *(&v138[2] + 7) = v141;
  *(&v138[3] + 7) = v142;
  *(&v138[4] + 7) = v143;
  *(v138 + 7) = v139;
  v91 = LOBYTE(v111[0]);
  v14 = (a1 + *(v5 + 32));
  v15 = *v14;
  v16 = v14[1];
  *&v96[0] = v15;
  *(&v96[0] + 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
  sub_26F180414();
  sub_26F180564();
  v90 = v5;
  sub_26F17FB44();
  v17 = a2[5];
  v126 = a2[4];
  v127 = v17;
  *&v128 = *(a2 + 12);
  v18 = a2[2];
  v125 = a2[3];
  v124 = v18;
  v19 = a2[1];
  v122 = *a2;
  v123 = v19;
  v20 = (a1 + *(v5 + 36));
  v21 = *v20;
  v22 = v20[1];
  *&v95[0] = v21;
  *(&v95[0] + 1) = v22;
  sub_26F140328(a2, v96);
  sub_26F180414();
  sub_26F180564();
  sub_26F17FB44();
  *&v136[160] = v132;
  *&v136[176] = v133;
  *&v136[192] = v134;
  *&v136[208] = v135;
  *&v136[96] = v128;
  *&v136[112] = v129;
  *&v136[128] = v130;
  *&v136[144] = v131;
  *&v136[32] = v124;
  *&v136[48] = v125;
  *&v136[64] = v126;
  *&v136[80] = v127;
  *v136 = v122;
  *&v136[16] = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4278, &qword_26F181CA8);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26F181B20;
  v24 = sub_26F180044();
  *(v23 + 32) = v24;
  v25 = sub_26F180064();
  *(v23 + 33) = v25;
  v26 = sub_26F180054();
  sub_26F180054();
  if (sub_26F180054() != v24)
  {
    v26 = sub_26F180054();
  }

  sub_26F180054();
  if (sub_26F180054() != v25)
  {
    v26 = sub_26F180054();
  }

  sub_26F17F894();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v137 = 0;
  sub_26F140360(a1, v7);
  v35 = v7;
  v36 = *(v81 + 80);
  v80 = (v36 + 16) & ~v36;
  v81 = v80 + v82;
  v37 = (v80 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  sub_26F1405D4(v35, v38 + ((v36 + 16) & ~v36));
  v39 = v38 + v37;
  v40 = a2[5];
  *(v39 + 64) = a2[4];
  *(v39 + 80) = v40;
  *(v39 + 96) = *(a2 + 12);
  v41 = a2[1];
  *v39 = *a2;
  *(v39 + 16) = v41;
  v42 = a2[3];
  *(v39 + 32) = a2[2];
  *(v39 + 48) = v42;
  memcpy(v95, v136, 0x148uLL);
  WORD4(v95[20]) = 256;
  LOBYTE(v95[21]) = v26;
  *(&v95[21] + 1) = v28;
  *&v95[22] = v30;
  *(&v95[22] + 1) = v32;
  *&v95[23] = v34;
  BYTE8(v95[23]) = 0;
  *&v95[24] = sub_26F140638;
  *(&v95[24] + 1) = v38;
  v95[25] = 0uLL;
  sub_26F140328(a2, v96);
  v43 = sub_26F13AE88();
  swift_getKeyPath();
  *&v96[0] = v43;
  sub_26F141008(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F17F7C4();

  v44 = *(v43 + 51);

  LOBYTE(v111[0]) = v44;
  sub_26F140360(a1, v35);
  v45 = swift_allocObject();
  v46 = a2[5];
  *(v45 + 80) = a2[4];
  *(v45 + 96) = v46;
  *(v45 + 112) = *(a2 + 12);
  v47 = a2[1];
  *(v45 + 16) = *a2;
  *(v45 + 32) = v47;
  v48 = a2[3];
  *(v45 + 48) = a2[2];
  *(v45 + 64) = v48;
  sub_26F1405D4(v35, v45 + ((v36 + 120) & ~v36));
  sub_26F140328(a2, v96);
  v49 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4290, &qword_26F181CE0);
  v51 = sub_26F140950();
  v52 = v83;
  sub_26F180314();

  memcpy(v96, v95, sizeof(v96));
  sub_26F13AB10(v96, &qword_2806D4290, &qword_26F181CE0);
  v53 = v49 + *(v90 + 28);
  v54 = *v53;
  v55 = *(v53 + 8);
  LOBYTE(v95[0]) = v54;
  *(&v95[0] + 1) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180414();
  sub_26F140360(v49, v35);
  v56 = swift_allocObject();
  sub_26F1405D4(v35, v56 + v80);
  *&v95[0] = v50;
  *(&v95[0] + 1) = MEMORY[0x277D839B0];
  *&v95[1] = v51;
  *(&v95[1] + 1) = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  v57 = v92;
  v58 = v85;
  sub_26F180314();

  (*(v84 + 8))(v52, v58);
  v90 = sub_26F17FCB4();
  LOBYTE(v109) = 1;
  sub_26F13D4D4(v49, v95);
  v103 = v95[6];
  v104[0] = v95[7];
  *(v104 + 9) = *(&v95[7] + 9);
  v99 = v95[2];
  v100 = v95[3];
  v102 = v95[5];
  v101 = v95[4];
  v98 = v95[1];
  v97 = v95[0];
  v105[6] = v95[6];
  v106[0] = v95[7];
  *(v106 + 9) = *(&v95[7] + 9);
  v105[2] = v95[2];
  v105[3] = v95[3];
  v105[5] = v95[5];
  v105[4] = v95[4];
  v105[1] = v95[1];
  v105[0] = v95[0];
  sub_26F13A854(&v97, v111, &qword_2806D42E8, &qword_26F181D08);
  sub_26F13AB10(v105, &qword_2806D42E8, &qword_26F181D08);
  *(&v94[5] + 7) = v102;
  *(&v94[6] + 7) = v103;
  *(&v94[7] + 7) = v104[0];
  v94[8] = *(v104 + 9);
  *(&v94[1] + 7) = v98;
  *(&v94[2] + 7) = v99;
  *(&v94[3] + 7) = v100;
  *(&v94[4] + 7) = v101;
  *(v94 + 7) = v97;
  LODWORD(v85) = v109;
  v60 = v87;
  v59 = v88;
  v61 = *(v88 + 16);
  v62 = v89;
  v61(v87, v57, v89);
  *&v108[33] = v138[2];
  *&v108[17] = v138[1];
  *&v108[81] = v138[5];
  *&v108[97] = v138[6];
  *&v108[113] = v138[7];
  *&v108[129] = v138[8];
  *&v108[49] = v138[3];
  v107 = v93;
  v108[0] = v91;
  *&v108[65] = v138[4];
  *&v108[1] = v138[0];
  v63 = *&v108[128];
  v64 = v86;
  *(v86 + 128) = *&v108[112];
  *(v64 + 144) = v63;
  *(v64 + 160) = v108[144];
  v65 = *&v108[64];
  *(v64 + 64) = *&v108[48];
  *(v64 + 80) = v65;
  v66 = *&v108[96];
  *(v64 + 96) = *&v108[80];
  *(v64 + 112) = v66;
  v67 = *v108;
  *v64 = v107;
  *(v64 + 16) = v67;
  v68 = *&v108[32];
  *(v64 + 32) = *&v108[16];
  *(v64 + 48) = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D42F0, &qword_26F181D10);
  v61((v64 + *(v69 + 48)), v60, v62);
  v70 = *(v69 + 64);
  *&v110[81] = v94[5];
  *&v110[97] = v94[6];
  *&v110[113] = v94[7];
  *&v110[129] = v94[8];
  *&v110[33] = v94[2];
  *&v110[17] = v94[1];
  *&v110[49] = v94[3];
  v71 = v64 + v70;
  v72 = v90;
  v109 = v90;
  LOBYTE(v37) = v85;
  v110[0] = v85;
  *&v110[65] = v94[4];
  *&v110[1] = v94[0];
  v73 = *&v110[128];
  *(v71 + 128) = *&v110[112];
  *(v71 + 144) = v73;
  *(v71 + 160) = v110[144];
  v74 = *&v110[64];
  *(v71 + 64) = *&v110[48];
  *(v71 + 80) = v74;
  v75 = *&v110[96];
  *(v71 + 96) = *&v110[80];
  *(v71 + 112) = v75;
  v76 = *v110;
  *v71 = v109;
  *(v71 + 16) = v76;
  v77 = *&v110[32];
  *(v71 + 32) = *&v110[16];
  *(v71 + 48) = v77;
  sub_26F13A854(&v107, v95, &qword_2806D42F8, &qword_26F181D18);
  sub_26F13A854(&v109, v95, &qword_2806D4300, &unk_26F181D20);
  v78 = *(v59 + 8);
  v78(v92, v62);
  v118 = v94[5];
  v119 = v94[6];
  v120 = v94[7];
  v121 = v94[8];
  v114 = v94[1];
  v115 = v94[2];
  v116 = v94[3];
  v117 = v94[4];
  v111[0] = v72;
  v111[1] = 0;
  v112 = v37;
  v113 = v94[0];
  sub_26F13AB10(v111, &qword_2806D4300, &unk_26F181D20);
  v78(v60, v62);
  *(&v95[6] + 1) = v138[5];
  *(&v95[7] + 1) = v138[6];
  *(&v95[8] + 1) = v138[7];
  *(&v95[9] + 1) = v138[8];
  *(&v95[2] + 1) = v138[1];
  *(&v95[3] + 1) = v138[2];
  *(&v95[4] + 1) = v138[3];
  *(&v95[5] + 1) = v138[4];
  v95[0] = v93;
  LOBYTE(v95[1]) = v91;
  *(&v95[1] + 1) = v138[0];
  return sub_26F13AB10(v95, &qword_2806D42F8, &qword_26F181D18);
}

uint64_t sub_26F13C568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = sub_26F17FE84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v63 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4308, &qword_26F182E30);
  v7 = MEMORY[0x28223BE20](v6);
  v76 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4200, &qword_26F181B88);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v64 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v81 = &v62 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v80 = (&v62 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v62 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v62 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = (&v62 - v24);
  v26 = off_2806D4118;
  *&v78 = qword_2806D4110;
  KeyPath = swift_getKeyPath();
  *(&v78 + 1) = v26;

  v74 = a1;
  sub_26F13ACB8(v25);
  v27 = v4[13];
  v69 = *MEMORY[0x277CE0558];
  v67 = v27;
  v68 = v4 + 13;
  v27(v23);
  v65 = v4[7];
  v66 = v4 + 7;
  v65(v23, 0, 1, v3);
  v73 = v6;
  v28 = *(v6 + 48);
  sub_26F13A854(v25, v10, &qword_2806D4200, &qword_26F181B88);
  sub_26F13A854(v23, &v10[v28], &qword_2806D4200, &qword_26F181B88);
  v75 = v4;
  v29 = v4[6];
  v30 = v29(v10, 1, v3);
  v71 = v29;
  v72 = v4 + 6;
  if (v30 == 1)
  {
    sub_26F13AB10(v23, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v25, &qword_2806D4200, &qword_26F181B88);
    if (v29(&v10[v28], 1, v3) == 1)
    {
      sub_26F13AB10(v10, &qword_2806D4200, &qword_26F181B88);
      v31 = 0x4054000000000000;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_26F13A854(v10, v20, &qword_2806D4200, &qword_26F181B88);
  if (v29(&v10[v28], 1, v3) == 1)
  {
    sub_26F13AB10(v23, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v25, &qword_2806D4200, &qword_26F181B88);
    (v75[1])(v20, v3);
LABEL_6:
    sub_26F13AB10(v10, &qword_2806D4308, &qword_26F182E30);
    v31 = 0x405E000000000000;
    goto LABEL_9;
  }

  v32 = v75;
  v33 = v63;
  (v75[4])(v63, &v10[v28], v3);
  sub_26F141008(&qword_2806D4318, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  LODWORD(v70) = sub_26F1806F4();
  v34 = v32[1];
  v34(v33, v3);
  sub_26F13AB10(v23, &qword_2806D4200, &qword_26F181B88);
  sub_26F13AB10(v25, &qword_2806D4200, &qword_26F181B88);
  v34(v20, v3);
  sub_26F13AB10(v10, &qword_2806D4200, &qword_26F181B88);
  v31 = 0x405E000000000000;
  if (v70)
  {
    v31 = 0x4054000000000000;
  }

LABEL_9:
  v70 = v31;
  v36 = v80;
  v35 = v81;
  sub_26F13ACB8(v80);
  v67(v35, v69, v3);
  v65(v35, 0, 1, v3);
  v37 = *(v73 + 48);
  v38 = v76;
  sub_26F13A854(v36, v76, &qword_2806D4200, &qword_26F181B88);
  sub_26F13A854(v35, v38 + v37, &qword_2806D4200, &qword_26F181B88);
  v39 = v71;
  if (v71(v38, 1, v3) != 1)
  {
    v40 = v64;
    sub_26F13A854(v38, v64, &qword_2806D4200, &qword_26F181B88);
    if (v39(v38 + v37, 1, v3) != 1)
    {
      v41 = v75;
      v42 = v38 + v37;
      v43 = v63;
      (v75[4])(v63, v42, v3);
      sub_26F141008(&qword_2806D4318, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      sub_26F1806F4();
      v44 = v41[1];
      v44(v43, v3);
      sub_26F13AB10(v81, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v80, &qword_2806D4200, &qword_26F181B88);
      v44(v64, v3);
      sub_26F13AB10(v38, &qword_2806D4200, &qword_26F181B88);
      goto LABEL_16;
    }

    sub_26F13AB10(v81, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v36, &qword_2806D4200, &qword_26F181B88);
    (v75[1])(v40, v3);
    goto LABEL_14;
  }

  sub_26F13AB10(v35, &qword_2806D4200, &qword_26F181B88);
  sub_26F13AB10(v36, &qword_2806D4200, &qword_26F181B88);
  if (v39(v38 + v37, 1, v3) != 1)
  {
LABEL_14:
    sub_26F13AB10(v38, &qword_2806D4308, &qword_26F182E30);
    goto LABEL_16;
  }

  sub_26F13AB10(v38, &qword_2806D4200, &qword_26F181B88);
LABEL_16:
  sub_26F180574();
  sub_26F17F9A4();
  v112 = 0;
  v45 = sub_26F180044();
  sub_26F17F894();
  v47 = KeyPath;
  v46 = v78;
  *&v86[0] = KeyPath;
  BYTE8(v86[0]) = 0;
  *(v86 + 9) = *v111;
  HIDWORD(v86[0]) = *&v111[3];
  v48 = *(&v78 + 1);
  v86[1] = v78;
  v49 = v84;
  v86[4] = v85;
  v50 = v83;
  v86[2] = v83;
  v86[3] = v84;
  LOBYTE(v87) = v45;
  DWORD1(v87) = *(v114 + 3);
  *(&v87 + 1) = v114[0];
  *(&v87 + 1) = v51;
  *&v88[0] = v52;
  *(&v88[0] + 1) = v53;
  *&v88[1] = v54;
  BYTE8(v88[1]) = 0;
  v91 = v83;
  v92 = v84;
  v55 = v85;
  v89 = v86[0];
  v90 = v78;
  *(v95 + 9) = *(v88 + 9);
  v94 = v87;
  v95[0] = v88[0];
  v113 = 0;
  v93 = v85;
  v82[128] = 1;
  v56 = v84;
  v57 = v79;
  *(v79 + 32) = v83;
  *(v57 + 48) = v56;
  v58 = v90;
  *v57 = v89;
  *(v57 + 16) = v58;
  v59 = v95[1];
  *(v57 + 96) = v95[0];
  *(v57 + 112) = v59;
  v60 = v94;
  *(v57 + 64) = v93;
  *(v57 + 80) = v60;
  *(v57 + 128) = 0;
  *(v57 + 136) = 1;
  v96 = v47;
  v97 = 0;
  *&v98[3] = *&v111[3];
  *v98 = *v111;
  v99 = v46;
  v100 = v48;
  v102 = v49;
  v103 = v55;
  v101 = v50;
  v104 = v45;
  *&v105[3] = *(v114 + 3);
  *v105 = v114[0];
  v106 = v51;
  v107 = v52;
  v108 = v53;
  v109 = v54;
  v110 = 0;
  sub_26F13A854(v86, v82, &qword_2806D4310, &qword_26F181D58);
  return sub_26F13AB10(&v96, &qword_2806D4310, &qword_26F181D58);
}

uint64_t sub_26F13CEF8(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = sub_26F13AE88();
  if (*(v4 + 52) == 1)
  {
    *(v4 + 52) = 1;
  }

  else
  {
    v5 = v4;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v31[0] = v5;
    sub_26F141008(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
    sub_26F17F7B4();
  }

  *(sub_26F13AE88() + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93) = 4;

  v31[0] = 0;
  v31[1] = 0;
  v7 = [*(a2 + 80) attributedText];
  if (!v7)
  {
    __break(1u);
  }

  v8 = v7;
  v9 = [v7 attributesAtIndex:0 effectiveRange:v31];

  type metadata accessor for Key(0);
  v11 = v10;
  sub_26F141008(&qword_2806D4040, type metadata accessor for Key, &unk_26F181A34);
  sub_26F1806D4();

  if (qword_2806D3FC0 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v32 = qword_2806D6BF0;
    v33 = *algn_2806D6BF8;
    sub_26F140F5C();
    v12 = sub_26F180A24();
    v13 = v12;
    v14 = *(v12 + 16);
    if (!v14)
    {
    }

    v30 = a1;
    a1 = *(v12 + 32);

    if (v14 == 1)
    {
      break;
    }

    v28 = v14 - 1;
    v29 = v11;
    v16 = v14;
    v17 = v13 + 40;
    v18 = 1;
LABEL_11:
    v19 = v17 + 16 * v18;
    while (v18 < *(v13 + 16))
    {
      v20 = *(v19 - 8);
      v11 = v18 + 1;

      v21 = sub_26F1807C4();
      if (sub_26F1807C4() < v21)
      {

        a1 = v20;
        v17 = v13 + 40;
        v22 = v28 == v18++;
        v11 = v29;
        if (v22)
        {
          goto LABEL_18;
        }

        goto LABEL_11;
      }

      v19 += 16;
      ++v18;
      if (v16 == v11)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

LABEL_18:

  v23 = sub_26F180724();

  v24 = sub_26F1806C4();

  [v23 sizeWithAttributes_];

  v25 = (v30 + *(type metadata accessor for SelectTextView(0) + 32));
  v26 = *v25;
  v27 = v25[1];
  v32 = v26;
  v33 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
  return sub_26F180424();
}

void sub_26F13D374(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4320, &qword_26F181D60);
    sub_26F180484();
    type metadata accessor for SelectTextView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
    sub_26F180424();
  }
}

void sub_26F13D430(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    type metadata accessor for SelectTextView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
    sub_26F180424();
    *(sub_26F13AE88() + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93) = 4;
  }
}

uint64_t sub_26F13D4D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v79 = a2;
  v3 = sub_26F17FE84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v63 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4308, &qword_26F182E30);
  v7 = MEMORY[0x28223BE20](v6);
  v76 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v63 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4200, &qword_26F181B88);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v64 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v81 = &v63 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v80 = (&v63 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v63 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v63 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = (&v63 - v24);
  v26 = off_2806D4128;
  *&v78 = qword_2806D4120;
  KeyPath = swift_getKeyPath();
  *(&v78 + 1) = v26;

  v74 = a1;
  sub_26F13ACB8(v25);
  v27 = v4[13];
  v69 = *MEMORY[0x277CE0558];
  v67 = v27;
  v68 = v4 + 13;
  v27(v23);
  v65 = v4[7];
  v66 = v4 + 7;
  v65(v23, 0, 1, v3);
  v73 = v6;
  v28 = *(v6 + 48);
  sub_26F13A854(v25, v10, &qword_2806D4200, &qword_26F181B88);
  sub_26F13A854(v23, &v10[v28], &qword_2806D4200, &qword_26F181B88);
  v75 = v4;
  v29 = v4[6];
  v30 = v29(v10, 1, v3);
  v71 = v29;
  v72 = v4 + 6;
  if (v30 == 1)
  {
    sub_26F13AB10(v23, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v25, &qword_2806D4200, &qword_26F181B88);
    v31 = v29(&v10[v28], 1, v3);
    v32 = v81;
    if (v31 == 1)
    {
      sub_26F13AB10(v10, &qword_2806D4200, &qword_26F181B88);
      v33 = 0x4054000000000000;
LABEL_7:
      v70 = v33;
      v34 = v76;
      goto LABEL_11;
    }

LABEL_6:
    sub_26F13AB10(v10, &qword_2806D4308, &qword_26F182E30);
    v33 = 0x405E000000000000;
    goto LABEL_7;
  }

  sub_26F13A854(v10, v20, &qword_2806D4200, &qword_26F181B88);
  if (v29(&v10[v28], 1, v3) == 1)
  {
    sub_26F13AB10(v23, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v25, &qword_2806D4200, &qword_26F181B88);
    (v75[1])(v20, v3);
    v32 = v81;
    goto LABEL_6;
  }

  v35 = v75;
  v36 = v63;
  (v75[4])(v63, &v10[v28], v3);
  sub_26F141008(&qword_2806D4318, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  LODWORD(v70) = sub_26F1806F4();
  v37 = v35[1];
  v37(v36, v3);
  sub_26F13AB10(v23, &qword_2806D4200, &qword_26F181B88);
  sub_26F13AB10(v25, &qword_2806D4200, &qword_26F181B88);
  v37(v20, v3);
  sub_26F13AB10(v10, &qword_2806D4200, &qword_26F181B88);
  v38 = 0x405E000000000000;
  if (v70)
  {
    v38 = 0x4054000000000000;
  }

  v70 = v38;
  v34 = v76;
  v32 = v81;
LABEL_11:
  v39 = v80;
  sub_26F13ACB8(v80);
  v67(v32, v69, v3);
  v65(v32, 0, 1, v3);
  v40 = v3;
  v41 = *(v73 + 48);
  sub_26F13A854(v39, v34, &qword_2806D4200, &qword_26F181B88);
  sub_26F13A854(v32, v34 + v41, &qword_2806D4200, &qword_26F181B88);
  v42 = v71;
  if (v71(v34, 1, v40) != 1)
  {
    v43 = v64;
    sub_26F13A854(v34, v64, &qword_2806D4200, &qword_26F181B88);
    if (v42(v34 + v41, 1, v40) != 1)
    {
      v44 = v75;
      v45 = v63;
      (v75[4])(v63, v34 + v41, v40);
      sub_26F141008(&qword_2806D4318, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      sub_26F1806F4();
      v46 = v44[1];
      v46(v45, v40);
      sub_26F13AB10(v81, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v80, &qword_2806D4200, &qword_26F181B88);
      v46(v64, v40);
      sub_26F13AB10(v34, &qword_2806D4200, &qword_26F181B88);
      goto LABEL_18;
    }

    sub_26F13AB10(v81, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v39, &qword_2806D4200, &qword_26F181B88);
    (v75[1])(v43, v40);
    goto LABEL_16;
  }

  sub_26F13AB10(v32, &qword_2806D4200, &qword_26F181B88);
  sub_26F13AB10(v39, &qword_2806D4200, &qword_26F181B88);
  if (v42(v34 + v41, 1, v40) != 1)
  {
LABEL_16:
    sub_26F13AB10(v34, &qword_2806D4308, &qword_26F182E30);
    goto LABEL_18;
  }

  sub_26F13AB10(v34, &qword_2806D4200, &qword_26F181B88);
LABEL_18:
  sub_26F180584();
  sub_26F17F9A4();
  v107 = 0;
  v47 = sub_26F180064();
  sub_26F17F894();
  v108 = 0;
  v84 = 1;
  v49 = KeyPath;
  v48 = v78;
  *&v88[0] = KeyPath;
  BYTE8(v88[0]) = 0;
  *(v88 + 9) = *v106;
  HIDWORD(v88[0]) = *&v106[3];
  v50 = *(&v78 + 1);
  v88[1] = v78;
  v88[4] = v87;
  v88[3] = v86;
  v88[2] = v85;
  LOBYTE(v89) = v47;
  DWORD1(v89) = *(v109 + 3);
  *(&v89 + 1) = v109[0];
  *(&v89 + 1) = v51;
  *&v90[0] = v52;
  *(&v90[0] + 1) = v53;
  *&v90[1] = v54;
  BYTE8(v90[1]) = 0;
  *(&v83[3] + 7) = v86;
  *(&v83[2] + 7) = v85;
  *(&v83[1] + 7) = v78;
  *(v83 + 7) = v88[0];
  v83[7] = *(v90 + 9);
  *(&v83[6] + 7) = v90[0];
  *(&v83[5] + 7) = v89;
  *(&v83[4] + 7) = v87;
  v55 = v79;
  *v79 = 0;
  *(v55 + 8) = 1;
  v56 = v83[0];
  v57 = v83[1];
  v58 = v83[2];
  *(v55 + 57) = v83[3];
  *(v55 + 41) = v58;
  *(v55 + 25) = v57;
  *(v55 + 9) = v56;
  v59 = v83[4];
  v60 = v83[5];
  v61 = v83[6];
  *(v55 + 121) = v83[7];
  *(v55 + 105) = v61;
  *(v55 + 89) = v60;
  *(v55 + 73) = v59;
  v91 = v49;
  v92 = 0;
  *&v93[3] = *&v106[3];
  *v93 = *v106;
  v94 = v48;
  v95 = v50;
  v97 = v86;
  v98 = v87;
  v96 = v85;
  v99 = v47;
  *&v100[3] = *(v109 + 3);
  *v100 = v109[0];
  v101 = v51;
  v102 = v52;
  v103 = v53;
  v104 = v54;
  v105 = 0;
  sub_26F13A854(v88, &v82, &qword_2806D4310, &qword_26F181D58);
  return sub_26F13AB10(&v91, &qword_2806D4310, &qword_26F181D58);
}

double sub_26F13DEB4@<D0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for SelectTextView(0);
  v3 = a1 + v2[5];
  type metadata accessor for TrainingManager(0);
  sub_26F141008(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  *v3 = sub_26F17F914();
  v3[8] = v4 & 1;
  v5 = a1 + v2[6];
  sub_26F180404();
  *v5 = LOBYTE(v19);
  *(v5 + 1) = v20;
  v6 = a1 + v2[7];
  sub_26F180404();
  *v6 = LOBYTE(v19);
  *(v6 + 1) = v20;
  v7 = (a1 + v2[8]);
  v8 = [objc_opt_self() mainScreen];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v21.origin.x = v10;
  v21.origin.y = v12;
  v21.size.width = v14;
  v21.size.height = v16;
  CGRectGetWidth(v21);
  sub_26F180404();
  *v7 = v19;
  *(v7 + 1) = v20;
  v17 = (a1 + v2[9]);
  sub_26F180404();
  result = v19;
  *v17 = v19;
  *(v17 + 1) = v20;
  return result;
}

id sub_26F13E0B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D43A0, &qword_26F181EF0);
  sub_26F17FF24();
  v2 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v31 action:sel_handleTapWithSender_];

  v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v4 = [v3 fontDescriptorWithDesign_];

  if (v4)
  {
    v5 = [v4 fontDescriptorWithSize_];

    if (v5)
    {
      v6 = [objc_opt_self() fontWithDescriptor:v5 size:54.0];
      v7 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
      [v7 setLineSpacing_];
      [v7 setAlignment_];
      LODWORD(v8) = 1045220557;
      [v7 setHyphenationFactor_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D43B0, &qword_26F181EF8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26F181B30;
      v10 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      v11 = sub_26F13AA48(0, &qword_2806D43B8, 0x277D74300);
      *(inited + 40) = v6;
      v12 = v2;
      v13 = *MEMORY[0x277D74118];
      *(inited + 64) = v11;
      *(inited + 72) = v13;
      v14 = sub_26F13AA48(0, &qword_2806D43C0, 0x277D74240);
      *(inited + 80) = v7;
      v15 = *MEMORY[0x277D740D0];
      *(inited + 104) = v14;
      *(inited + 112) = v15;
      *(inited + 144) = MEMORY[0x277D839F8];
      *(inited + 120) = 0xBFF0000000000000;
      v16 = v10;
      v30 = v6;
      v17 = v13;
      v2 = v12;
      v18 = v7;
      v19 = v15;
      sub_26F151828(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D43C8, &unk_26F181F00);
      swift_arrayDestroy();
      v20 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v21 = sub_26F180724();
      type metadata accessor for Key(0);
      sub_26F141008(&qword_2806D4040, type metadata accessor for Key, &unk_26F181A34);
      v22 = sub_26F1806C4();

      v23 = [v20 initWithString:v21 attributes:v22];

      [*(v1 + 80) setAttributedText_];
    }
  }

  v24 = *(v1 + 80);
  [v24 addGestureRecognizer_];
  v25 = [v24 textContainer];
  [v25 setLineBreakMode_];

  LODWORD(v26) = 1132068864;
  [v24 setContentCompressionResistancePriority:0 forAxis:v26];
  sub_26F13AA48(0, &qword_2806D43A8, 0x277D75348);
  if (qword_2806D3FE0 != -1)
  {
    swift_once();
  }

  v27 = sub_26F1809D4();
  [v24 setTextColor_];

  v28 = [objc_opt_self() clearColor];
  [v24 setBackgroundColor_];

  sub_26F17FF24();
  [v24 setDelegate_];

  [v24 setScrollEnabled_];
  [v24 setEditable_];

  return v24;
}

uint64_t sub_26F13E5F0(void *a1)
{
  v2 = v1;
  v4 = sub_26F180644();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_26F180684();
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26F180724();
  [a1 setText_];

  v23 = *v2;
  v24 = *(v2 + 16);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4320, &qword_26F181D60);
  MEMORY[0x27438A090](aBlock, v11);
  if (LOBYTE(aBlock[0]) == 1)
  {
    [a1 setSelectedTextRange_];
  }

  sub_26F13AA48(0, &qword_2806D4340, 0x277D85C78);
  v12 = sub_26F180984();
  v13 = swift_allocObject();
  v14 = *(v2 + 80);
  *(v13 + 80) = *(v2 + 64);
  *(v13 + 96) = v14;
  v15 = *(v2 + 96);
  v16 = *(v2 + 16);
  *(v13 + 16) = *v2;
  *(v13 + 32) = v16;
  v17 = *(v2 + 48);
  *(v13 + 48) = *(v2 + 32);
  *(v13 + 64) = v17;
  *(v13 + 112) = v15;
  *(v13 + 120) = a1;
  aBlock[4] = sub_26F141710;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F1673F4;
  aBlock[3] = &block_descriptor_71;
  v18 = _Block_copy(aBlock);
  sub_26F140328(v2, &v23);
  v19 = a1;

  sub_26F180664();
  *&v23 = MEMORY[0x277D84F90];
  sub_26F141008(&qword_2806D40E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4350, &qword_26F181AE0);
  sub_26F13AC54(&qword_2806D40E8, &unk_2806D4350, &qword_26F181AE0, MEMORY[0x277D83970]);
  sub_26F180A44();
  MEMORY[0x27438A5B0](0, v9, v6, v18);
  _Block_release(v18);

  (*(v22 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v21);
}

uint64_t sub_26F13E984(uint64_t a1, id a2)
{
  [a2 bounds];
  [a2 sizeThatFits_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4398, &qword_26F181EE8);
  return sub_26F180484();
}

id sub_26F13EA14()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v19 = *(v0 + 24);
  v20 = *(v0 + 40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4320, &qword_26F181D60);
  sub_26F180494();
  v5 = v16;
  v6 = v17;
  v7 = v18;
  v8 = type metadata accessor for UITextViewRepresentable.Coordinator();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_isWordSelected] = 0;
  v9[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_isFirstStepComplete] = 0;
  *&v9[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_firstStepSelectionLength] = 0;
  v10 = &v9[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_firstStepSelectedRange];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v9[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_text];
  *v11 = v4;
  v11[1] = v3;
  v12 = &v9[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator__disableInteraction];
  *v12 = v5;
  *(v12 + 1) = v6;
  v12[16] = v7;
  *&v9[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_textView] = v2;
  *&v9[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_trainingManager] = v1;
  v15.receiver = v9;
  v15.super_class = v8;
  v13 = v2;

  return objc_msgSendSuper2(&v15, sel_init);
}

void sub_26F13EB38(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_26F180714();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_isWordSelected];

    if ((v9 & 1) == 0)
    {
      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;

        sub_26F180704();
        (*(v5 + 56))(v3, 1, 1, v4);
        sub_26F15BCB8(v7, 1, v3);

        sub_26F13AB10(v3, &qword_2806D4360, &qword_26F181DC0);
        (*(v5 + 8))(v7, v4);
      }

      swift_beginAccess();
      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        v13 = *(v12 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_trainingManager);
        v14 = v12;

        v15 = *(v13 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64);
        v16 = __OFADD__(v15, 1);
        v17 = v15 + 1;
        if (v16)
        {
          __break(1u);
        }

        else
        {
          *(v13 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64) = v17;
        }
      }
    }
  }
}

id sub_26F13EEA0(void *a1)
{
  v2 = v1;
  v4 = sub_26F180644();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v51 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26F180684();
  v52 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_26F1806A4();
  v49 = *(v53 - 8);
  v9 = MEMORY[0x28223BE20](v53);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  result = [a1 selectedRange];
  v16 = v15;
  v17 = OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_isFirstStepComplete;
  if (*(v2 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_isFirstStepComplete) == 1)
  {
    v48 = v7;
    v46 = v4;
    v18 = *(v2 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_trainingManager) + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys;
    *(v18 + 93) = 5;
    v19 = OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_firstStepSelectionLength;
    v20 = *(v2 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_firstStepSelectionLength);
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v47 = v5;
    v60.location = [a1 selectedRange];
    v22 = (v2 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_firstStepSelectedRange);
    v23 = NSIntersectionRange(v60, *(v2 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_firstStepSelectedRange));
    result = v23.location;
    if (v21 < v16 && v23.length >= 1)
    {
      v24 = *(v18 + 64);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (!v25)
      {
        *(v18 + 64) = v26;
        sub_26F13AA48(0, &qword_2806D4340, 0x277D85C78);
        v45 = sub_26F180984();
        sub_26F180694();
        sub_26F1806B4();
        v49 = *(v49 + 8);
        (v49)(v11, v53);
        v27 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v58 = sub_26F141050;
        v59 = v27;
        aBlock = MEMORY[0x277D85DD0];
        v55 = 1107296256;
        v56 = sub_26F1673F4;
        v57 = &block_descriptor_47;
        v28 = _Block_copy(&aBlock);

        v29 = v50;
        sub_26F180664();
        aBlock = MEMORY[0x277D84F90];
        sub_26F141008(&qword_2806D40E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4350, &qword_26F181AE0);
        sub_26F13AC54(&qword_2806D40E8, &unk_2806D4350, &qword_26F181AE0, MEMORY[0x277D83970]);
        v30 = v51;
        v31 = v46;
        sub_26F180A44();
        v32 = v45;
        MEMORY[0x27438A580](v13, v29, v30, v28);
        _Block_release(v28);

        (*(v47 + 8))(v30, v31);
        (*(v52 + 8))(v29, v48);
        return (v49)(v13, v53);
      }

      goto LABEL_12;
    }

    *(v2 + v19) = v16;
    result = [a1 selectedRange];
    *v22 = result;
    v22[1] = v43;
  }

  else if (v15 >= 1)
  {
    v48 = v7;
    v33 = *(v2 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_trainingManager);
    v47 = v5;
    v34 = v33 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;

    sub_26F15D9C8();
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;

    *(v2 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_isWordSelected) = 1;
    *(v2 + v17) = 1;
    *(v2 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_firstStepSelectionLength) = v16;
    v35 = [a1 selectedRange];
    v36 = (v2 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_firstStepSelectedRange);
    *v36 = v35;
    v36[1] = v37;
    sub_26F13AA48(0, &qword_2806D4340, 0x277D85C78);
    v46 = sub_26F180984();
    sub_26F180694();
    sub_26F1806B4();
    v49 = *(v49 + 8);
    (v49)(v11, v53);
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v58 = sub_26F140FE8;
    v59 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v55 = 1107296256;
    v56 = sub_26F1673F4;
    v57 = &block_descriptor_0;
    v39 = _Block_copy(&aBlock);

    v40 = v50;
    sub_26F180664();
    aBlock = MEMORY[0x277D84F90];
    sub_26F141008(&qword_2806D40E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4350, &qword_26F181AE0);
    sub_26F13AC54(&qword_2806D40E8, &unk_2806D4350, &qword_26F181AE0, MEMORY[0x277D83970]);
    v41 = v51;
    sub_26F180A44();
    v42 = v46;
    MEMORY[0x27438A580](v13, v40, v41, v39);
    _Block_release(v39);

    (*(v47 + 8))(v41, v4);
    (*(v52 + 8))(v40, v48);
    return (v49)(v13, v53);
  }

  return result;
}

void sub_26F13F60C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    sub_26F15B0EC(1, 1, 0);
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_trainingManager);
    v5 = v3;

    if (*(v4 + 50))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_26F141008(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
      sub_26F17F7B4();
    }

    else
    {
      *(v4 + 50) = 0;
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4320, &qword_26F181D60);
    sub_26F180484();
    v8[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_isWordSelected] = 0;
    v8[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_isFirstStepComplete] = 0;
    *&v8[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_firstStepSelectionLength] = 0;
    v9 = &v8[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_firstStepSelectedRange];
    *v9 = 0;
    v9[1] = 0;
  }
}

void *sub_26F13F85C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_26F180714();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;

    sub_26F180704();
    (*(v5 + 56))(v3, 1, 1, v4);
    sub_26F15BCB8(v7, 0, v3);

    sub_26F13AB10(v3, &qword_2806D4360, &qword_26F181DC0);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

id sub_26F13FAB8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UITextViewRepresentable.Coordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26F13FBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_26F13FC8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for SelectTextView(uint64_t a1)
{
  result = qword_2806D41E8;
  if (!qword_2806D41E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F13FDA0(uint64_t a1)
{
  sub_26F13FE74(319);
  if (v1 <= 0x3F)
  {
    sub_26F13FED8(319);
    if (v2 <= 0x3F)
    {
      sub_26F13FF30(319, &qword_2806D4210, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_26F13FF30(319, &unk_2806D4218, MEMORY[0x277D85048]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26F13FE74(uint64_t a1)
{
  if (!qword_2806D41F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4200, &qword_26F181B88);
    v1 = sub_26F17F904();
    if (!v2)
    {
      atomic_store(v1, &qword_2806D41F8);
    }
  }
}

void sub_26F13FED8(uint64_t a1)
{
  if (!qword_2806D4208)
  {
    type metadata accessor for TrainingManager(255);
    v1 = sub_26F17F904();
    if (!v2)
    {
      atomic_store(v1, &qword_2806D4208);
    }
  }
}

void sub_26F13FF30(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26F180444();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_26F13FFF0@<X0>(void *a1@<X8>)
{
  result = sub_26F13EA14();
  *a1 = result;
  return result;
}

uint64_t sub_26F140060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F14163C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_26F1400C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F14163C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_26F140128(uint64_t a1)
{
  sub_26F14163C();
  sub_26F17FE24();
  __break(1u);
}

uint64_t sub_26F140150@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F141008(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F17F7C4();

  *a2 = *(v3 + 52);
  return result;
}

uint64_t sub_26F140250(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4248, &qword_26F181C78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F1402C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4248, &qword_26F181C78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F140360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectTextView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F1403C4()
{
  v1 = *(type metadata accessor for SelectTextView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26F17FE84();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  else
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v7 + 104, v2 | 7);
}

uint64_t sub_26F1405D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectTextView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F140638()
{
  v1 = *(type metadata accessor for SelectTextView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_26F13CEF8(v0 + v2, v3);
}

uint64_t sub_26F1406CC()
{
  v1 = *(type metadata accessor for SelectTextView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 120) & ~v2;
  v4 = *(v1 + 64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26F17FE84();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_26F1408CC(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for SelectTextView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 120) & ~*(v5 + 80));

  sub_26F13D374(a1, a2, v2 + 16, v6);
}

unint64_t sub_26F140950()
{
  result = qword_2806D4298;
  if (!qword_2806D4298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4290, &qword_26F181CE0);
    sub_26F1409DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4298);
  }

  return result;
}

unint64_t sub_26F1409DC()
{
  result = qword_2806D42A0;
  if (!qword_2806D42A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D42A8, &qword_26F181CE8);
    sub_26F140A68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D42A0);
  }

  return result;
}

unint64_t sub_26F140A68()
{
  result = qword_2806D42B0;
  if (!qword_2806D42B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D42B8, &qword_26F181CF0);
    sub_26F140AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D42B0);
  }

  return result;
}

unint64_t sub_26F140AF4()
{
  result = qword_2806D42C0;
  if (!qword_2806D42C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D42C8, &qword_26F181CF8);
    sub_26F140B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D42C0);
  }

  return result;
}

unint64_t sub_26F140B80()
{
  result = qword_2806D42D0;
  if (!qword_2806D42D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D42D8, &qword_26F181D00);
    sub_26F140C0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D42D0);
  }

  return result;
}

unint64_t sub_26F140C0C()
{
  result = qword_2806D42E0;
  if (!qword_2806D42E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D42E0);
  }

  return result;
}

uint64_t sub_26F140C60()
{
  v1 = *(type metadata accessor for SelectTextView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26F17FE84();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_26F140E18(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for SelectTextView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_26F13D430(a1, a2, v6);
}

uint64_t sub_26F140EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4200, &qword_26F181B88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26F140F5C()
{
  result = qword_2806D4330;
  if (!qword_2806D4330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4330);
  }

  return result;
}

uint64_t sub_26F140FB0()
{
  MEMORY[0x27438AE00](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F141008(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F141080()
{
  v0 = sub_26F180644();
  v22 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26F180684();
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26F1806A4();
  v19 = v6;
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_26F13AA48(0, &qword_2806D4340, 0x277D85C78);
  v17 = sub_26F180984();
  sub_26F180694();
  sub_26F1806B4();
  v18 = *(v7 + 8);
  v18(v10, v6);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_26F141458;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F1673F4;
  aBlock[3] = &block_descriptor_55;
  v14 = _Block_copy(aBlock);

  sub_26F180664();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26F141008(&qword_2806D40E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4350, &qword_26F181AE0);
  sub_26F13AC54(&qword_2806D40E8, &unk_2806D4350, &qword_26F181AE0, MEMORY[0x277D83970]);
  sub_26F180A44();
  v15 = v17;
  MEMORY[0x27438A580](v12, v5, v2, v14);
  _Block_release(v14);

  (*(v22 + 8))(v2, v0);
  (*(v20 + 8))(v5, v21);
  return (v18)(v12, v19);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_26F141494(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26F1414DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26F141548()
{
  result = qword_2806D4368;
  if (!qword_2806D4368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4240, &qword_26F181C70);
    sub_26F13AC54(&qword_2806D4370, &qword_2806D4378, &qword_26F181DF8, MEMORY[0x277CE11A8]);
    sub_26F13AC54(&qword_2806D4380, &qword_2806D4388, &qword_26F181E00, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4368);
  }

  return result;
}

unint64_t sub_26F14163C()
{
  result = qword_2806D4390;
  if (!qword_2806D4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4390);
  }

  return result;
}

uint64_t sub_26F141690()
{

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_26F14174C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F180714();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26F141820(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26F180714();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for LocationItemView(uint64_t a1)
{
  result = qword_2806D4490;
  if (!qword_2806D4490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F141928(uint64_t a1)
{
  result = sub_26F180714();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26F1419B8@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_26F17FD34();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v38[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = sub_26F1803C4();
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v6 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44A0, &qword_26F181F88);
  v7 = MEMORY[0x28223BE20](v45);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v44 = &v38[-v10];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44A8, &qword_26F181F90);
  MEMORY[0x28223BE20](v41);
  v12 = &v38[-v11];
  v42 = sub_26F17FD74();
  v52 = 1;
  sub_26F141FB0(v1, v50);
  memcpy(v54, v50, 0x119uLL);
  memcpy(v55, v50, 0x119uLL);
  sub_26F13A854(v54, v49, &qword_2806D44B0, &qword_26F181F98);
  sub_26F13AB10(v55, &qword_2806D44B0, &qword_26F181F98);
  memcpy(&v51[7], v54, 0x119uLL);
  v39 = v52;
  sub_26F180564();
  sub_26F17FB44();
  *&v53[55] = v50[3];
  *&v53[71] = v50[4];
  *&v53[87] = v50[5];
  *&v53[103] = v50[6];
  *&v53[7] = v50[0];
  *&v53[23] = v50[1];
  *&v53[39] = v50[2];
  type metadata accessor for LocationItemView(0);
  sub_26F1427C4();

  if (!sub_26F1809E4())
  {
    v13 = [objc_opt_self() mainBundle];
  }

  sub_26F1803F4();
  v14 = v43;
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v43);
  v15 = sub_26F1803E4();

  (*(v4 + 8))(v6, v14);
  v49[0] = v15;
  v16 = v40;
  sub_26F17FD24();
  sub_26F1802E4();
  (*(v46 + 8))(v16, v47);

  v17 = v44;
  sub_26F17FA94();
  sub_26F13AB10(v9, &qword_2806D44A0, &qword_26F181F88);
  v18 = sub_26F180564();
  v20 = v19;
  v21 = &v12[*(v41 + 36)];
  sub_26F142810(v17, v21, &qword_2806D44A0, &qword_26F181F88);
  v22 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44B8, &qword_26F181FA0) + 36));
  *v22 = v18;
  v22[1] = v20;
  *v12 = v42;
  *(v12 + 1) = 0;
  v12[16] = v39;
  memcpy(v12 + 17, v51, 0x120uLL);
  v23 = *&v53[80];
  *(v12 + 369) = *&v53[64];
  *(v12 + 385) = v23;
  *(v12 + 401) = *&v53[96];
  *(v12 + 52) = *&v53[111];
  v24 = *&v53[16];
  *(v12 + 305) = *v53;
  *(v12 + 321) = v24;
  v25 = *&v53[48];
  *(v12 + 337) = *&v53[32];
  *(v12 + 353) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44C0, &qword_26F181FA8);
  v27 = v48;
  v28 = (v48 + *(v26 + 36));
  v29 = *(sub_26F17FB14() + 20);
  v30 = *MEMORY[0x277CE0118];
  v31 = sub_26F17FD14();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  __asm { FMOV            V0.2D, #16.0 }

  *v28 = _Q0;
  *&v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44C8, &qword_26F181FB0) + 36)] = 256;
  return sub_26F142810(v12, v27, &qword_2806D44A8, &qword_26F181F90);
}

uint64_t sub_26F141FB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44D0, &qword_26F181FB8);
  MEMORY[0x28223BE20](v3 - 8);
  v71 = &v63 - v4;
  v70 = sub_26F17F6C4();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v69 = sub_26F17F7A4();
  v6 = *(v69 - 8);
  v7 = MEMORY[0x28223BE20](v69);
  v64 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v63 - v9;
  v11 = sub_26F180714();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v63 - v16;
  v18 = sub_26F17F6D4();
  MEMORY[0x28223BE20](v18 - 8);
  v65 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v12;
  v20 = *(v12 + 16);
  v20(v17, a1, v11);
  sub_26F1427C4();
  v21 = sub_26F1809E4();
  if (!v21)
  {
    v21 = [objc_opt_self() mainBundle];
  }

  v22 = v21;
  sub_26F17F794();
  v63 = v17;
  v20(v15, v17, v11);
  v23 = v69;
  (*(v6 + 16))(v64, v10, v69);
  v24 = [v22 bundleURL];
  v25 = v67;
  sub_26F17F714();

  (*(v68 + 104))(v25, *MEMORY[0x277CC9118], v70);
  sub_26F17F6E4();

  (*(v6 + 8))(v10, v23);
  (*(v66 + 8))(v63, v11);
  v26 = sub_26F1801A4();
  v28 = v27;
  v30 = v29;
  v31 = sub_26F1800A4();
  v32 = v71;
  (*(*(v31 - 8) + 56))(v71, 1, 1, v31);
  sub_26F1800D4();
  sub_26F13AB10(v32, &qword_2806D44D0, &qword_26F181FB8);
  sub_26F1800B4();
  sub_26F1800E4();

  v33 = sub_26F180184();
  v35 = v34;
  v37 = v36;

  sub_26F142878(v26, v28, v30 & 1);

  sub_26F180364();
  v38 = sub_26F180174();
  v70 = v39;
  v71 = v38;
  v40 = v39;
  LOBYTE(v32) = v41;
  v43 = v42;

  sub_26F142878(v33, v35, v37 & 1);

  sub_26F180534();
  sub_26F17FB44();
  LOBYTE(v35) = v32 & 1;
  v113 = v32 & 1;
  sub_26F180344();
  v44 = sub_26F180374();

  LOBYTE(v33) = sub_26F180024();
  sub_26F17F894();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v114 = 0;
  LOBYTE(v26) = sub_26F180004();
  sub_26F17F894();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v116 = 0;
  *&v81[0] = v38;
  *(&v81[0] + 1) = v40;
  LOBYTE(v81[1]) = v35;
  *(&v81[1] + 1) = *v112;
  DWORD1(v81[1]) = *&v112[3];
  v81[2] = v74;
  v81[3] = v75;
  v81[7] = v79;
  v81[8] = v80;
  v81[5] = v77;
  v81[6] = v78;
  v81[4] = v76;
  *(&v81[1] + 1) = v43;
  *&v81[9] = v44;
  v69 = xmmword_26F181F10;
  *(&v81[9] + 8) = xmmword_26F181F10;
  *(&v81[10] + 1) = 0x4000000000000000;
  LOBYTE(v81[11]) = v33;
  DWORD1(v81[11]) = *&v115[3];
  *(&v81[11] + 1) = *v115;
  *(&v81[11] + 1) = v46;
  *&v81[12] = v48;
  *(&v81[12] + 1) = v50;
  *&v81[13] = v52;
  BYTE8(v81[13]) = 0;
  HIDWORD(v81[13]) = *(v118 + 3);
  *(&v81[13] + 9) = v118[0];
  LOBYTE(v81[14]) = v26;
  DWORD1(v81[14]) = *&v117[3];
  *(&v81[14] + 1) = *v117;
  *(&v81[14] + 1) = v53;
  *&v81[15] = v55;
  *(&v81[15] + 1) = v57;
  *&v81[16] = v59;
  BYTE8(v81[16]) = 0;
  memcpy(v82, v81, 0x109uLL);
  v73[272] = 1;
  v61 = v72;
  memcpy(v72, v82, 0x110uLL);
  v61[34] = 0;
  *(v61 + 280) = 1;
  v83[0] = v71;
  v83[1] = v70;
  v84 = v35;
  *v85 = *v112;
  *&v85[3] = *&v112[3];
  v91 = v78;
  v92 = v79;
  v93 = v80;
  v87 = v74;
  v88 = v75;
  v89 = v76;
  v90 = v77;
  v86 = v43;
  v94 = v44;
  v95 = v69;
  v96 = 0x4000000000000000;
  v97 = v33;
  *&v98[3] = *&v115[3];
  *v98 = *v115;
  v99 = v46;
  v100 = v48;
  v101 = v50;
  v102 = v52;
  v103 = 0;
  *&v104[3] = *(v118 + 3);
  *v104 = v118[0];
  v105 = v26;
  *v106 = *v117;
  *&v106[3] = *&v117[3];
  v107 = v54;
  v108 = v56;
  v109 = v58;
  v110 = v60;
  v111 = 0;
  sub_26F13A854(v81, v73, &qword_2806D44D8, &qword_26F181FC0);
  return sub_26F13AB10(v83, &qword_2806D44D8, &qword_26F181FC0);
}

unint64_t sub_26F1427C4()
{
  result = qword_2806D4088;
  if (!qword_2806D4088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806D4088);
  }

  return result;
}

uint64_t sub_26F142810(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_26F142878(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_26F14288C()
{
  result = qword_2806D44E0;
  if (!qword_2806D44E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D44C0, &qword_26F181FA8);
    sub_26F142944();
    sub_26F13AC54(&qword_2806D4518, &qword_2806D44C8, &qword_26F181FB0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D44E0);
  }

  return result;
}

unint64_t sub_26F142944()
{
  result = qword_2806D44E8;
  if (!qword_2806D44E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D44A8, &qword_26F181F90);
    sub_26F1429FC();
    sub_26F13AC54(&qword_2806D4510, &qword_2806D44B8, &qword_26F181FA0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D44E8);
  }

  return result;
}

unint64_t sub_26F1429FC()
{
  result = qword_2806D44F0;
  if (!qword_2806D44F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D44F8, &qword_26F181FC8);
    sub_26F13AC54(&qword_2806D4500, &qword_2806D4508, &unk_26F181FD0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D44F0);
  }

  return result;
}

uint64_t sub_26F142AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_26F142BB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for TapView(uint64_t a1)
{
  result = qword_2806D4520;
  if (!qword_2806D4520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F142CC8(uint64_t a1)
{
  sub_26F13FE74(319);
  if (v1 <= 0x3F)
  {
    sub_26F13FED8(319);
    if (v2 <= 0x3F)
    {
      sub_26F13FF30(319, &qword_2806D4530, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        sub_26F13FF30(319, &qword_2806D4210, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_26F13FF30(319, &qword_2806D4538, MEMORY[0x277D839F8]);
          if (v5 <= 0x3F)
          {
            sub_26F13FF30(319, &unk_2806D4218, MEMORY[0x277D85048]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_26F142E20()
{
  v1 = sub_26F17FC84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for TapView(0) + 20));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_26F180944();
    v8 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

void *sub_26F142F70(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  v7 = sub_26F142E20();
  swift_getKeyPath();
  v18 = v7;
  sub_26F14B314(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F17F7C4();

  v8 = *(v7 + 48);

  if ((v8 & 1) == 0)
  {
    v10 = (v2 + *(type metadata accessor for TapView(0) + 24));
    v12 = *v10;
    v11 = v10[1];
    v18 = *v10;
    v19 = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4558, &qword_26F182078);
    result = sub_26F180414();
    if (__OFADD__(v20, 1))
    {
      __break(1u);
    }

    else
    {
      v17[1] = v12;
      v17[2] = v11;
      v17[0] = v20 + 1;
      sub_26F180424();

      result = sub_26F142E20();
      v13 = *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64);
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (!v14)
      {
        *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64) = v15;

        sub_26F142E20();
        v16 = sub_26F180714();
        (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
        sub_26F15BCB8(a1, 1, v6);

        return sub_26F13AB10(v6, &qword_2806D4360, &qword_26F181DC0);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26F1431A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4540, &qword_26F182068);
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-v5];
  v18 = a2;
  v19 = a1;
  sub_26F17FFF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4548, &qword_26F182070);
  sub_26F13AC54(&qword_2806D4550, &qword_2806D4548, &qword_26F182070, MEMORY[0x277CE1198]);
  sub_26F17F8A4();
  v7 = type metadata accessor for TapView(0);
  v8 = (a2 + v7[12]);
  v9 = *v8;
  v10 = v8[1];
  *&v21 = v9;
  *(&v21 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
  sub_26F180414();
  v11 = v20;
  v12 = &v6[*(v4 + 36)];
  *v12 = 0;
  v12[1] = v11;
  v21 = *(a2 + v7[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4558, &qword_26F182078);
  sub_26F180414();
  if (v20 >= 4)
  {
    v13 = (a2 + v7[8]);
    v14 = *v13;
    v15 = *(v13 + 1);
    LOBYTE(v21) = v14;
    *(&v21 + 1) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
    sub_26F180414();
  }

  sub_26F1492A0();
  sub_26F180274();
  return sub_26F13AB10(v6, &qword_2806D4540, &qword_26F182068);
}

uint64_t sub_26F1433C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_26F17FD74();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4578, &qword_26F182088);
  return sub_26F143428(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_26F143428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a2;
  v67 = a3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4580, &qword_26F182090);
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v57 = (&v57 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4588, &qword_26F182098);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v66 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v57 - v8;
  v58 = sub_26F17FAC4();
  v9 = *(v58 - 8);
  v59 = *(v9 + 64);
  MEMORY[0x28223BE20](v58);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for TapView(0);
  v12 = *(v60 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v60);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4590, &qword_26F1820A0);
  v16 = v15 - 8;
  v17 = MEMORY[0x28223BE20](v15);
  v62 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v57 - v19;
  *v20 = sub_26F180564();
  *(v20 + 1) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4598, &qword_26F1820A8);
  sub_26F143AB0(a1, &v20[*(v22 + 44)]);
  v23 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45A0, &qword_26F1820B0) + 52)];
  *v23 = 0x7267206F746F6870;
  *(v23 + 1) = 0xEA00000000006469;
  sub_26F1491B0(a1, v14);
  v24 = v58;
  (*(v9 + 16))(v11, v61, v58);
  v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v26 = (v13 + *(v9 + 80) + v25) & ~*(v9 + 80);
  v27 = swift_allocObject();
  sub_26F1499C8(v14, v27 + v25, type metadata accessor for TapView);
  (*(v9 + 32))(v27 + v26, v11, v24);
  v28 = sub_26F180564();
  v29 = &v20[*(v16 + 44)];
  *v29 = sub_26F149358;
  v29[1] = v27;
  v30 = v60;
  v29[2] = v28;
  v29[3] = v31;
  v69 = *(a1 + v30[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4558, &qword_26F182078);
  sub_26F180414();
  if (v68 < 4 || (v32 = (a1 + v30[8]), v33 = *v32, v34 = *(v32 + 1), LOBYTE(v69) = v33, *(&v69 + 1) = v34, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50), sub_26F180414(), (v68 & 1) != 0))
  {
    v35 = 1;
    v37 = v64;
    v36 = v65;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v39 = v57;
    *v57 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
    swift_storeEnumTagMultiPayload();
    v40 = v39 + *(type metadata accessor for HapticTouchButtonView(0) + 20);
    type metadata accessor for TrainingManager(0);
    sub_26F14B314(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
    *v40 = sub_26F17F914();
    *(v40 + 8) = v41 & 1;
    v42 = sub_26F180034();
    v43 = (a1 + v30[12]);
    v44 = *v43;
    v45 = v43[1];
    *&v69 = v44;
    *(&v69 + 1) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
    sub_26F180414();
    sub_26F17F894();
    v37 = v64;
    v46 = v65;
    v47 = v39 + *(v65 + 36);
    *v47 = v42;
    *(v47 + 8) = v48;
    *(v47 + 16) = v49;
    *(v47 + 24) = v50;
    *(v47 + 32) = v51;
    *(v47 + 40) = 0;
    sub_26F142810(v39, v37, &qword_2806D4580, &qword_26F182090);
    v36 = v46;
    v35 = 0;
  }

  (*(v63 + 56))(v37, v35, 1, v36);
  v52 = v62;
  sub_26F13A854(v20, v62, &qword_2806D4590, &qword_26F1820A0);
  v53 = v66;
  sub_26F13A854(v37, v66, &qword_2806D4588, &qword_26F182098);
  v54 = v67;
  sub_26F13A854(v52, v67, &qword_2806D4590, &qword_26F1820A0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45A8, &qword_26F1820B8);
  sub_26F13A854(v53, v54 + *(v55 + 48), &qword_2806D4588, &qword_26F182098);
  sub_26F13AB10(v37, &qword_2806D4588, &qword_26F182098);
  sub_26F13AB10(v20, &qword_2806D4590, &qword_26F1820A0);
  sub_26F13AB10(v53, &qword_2806D4588, &qword_26F182098);
  return sub_26F13AB10(v52, &qword_2806D4590, &qword_26F1820A0);
}

uint64_t sub_26F143AB0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v119 = a2;
  v113 = sub_26F17FE74();
  MEMORY[0x28223BE20](v113);
  v112 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_26F1804F4();
  v105 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v104 = (&v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_26F180504();
  v109 = *(v5 - 8);
  v110 = v5 - 8;
  v106 = v5;
  v107 = v109;
  MEMORY[0x28223BE20](v5);
  v103 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46A0, &qword_26F182220) - 8;
  v7 = MEMORY[0x28223BE20](v117);
  v118 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v122 = &v90 - v9;
  v10 = sub_26F17FAE4();
  v11 = *(v10 - 8);
  v97 = v10;
  v98 = v11;
  MEMORY[0x28223BE20](v10);
  v92 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46A8, &qword_26F182228);
  v14 = *(v13 - 8);
  v101 = v13;
  v102 = v14;
  MEMORY[0x28223BE20](v13);
  v93 = &v90 - v15;
  v16 = type metadata accessor for TapView(0);
  v17 = *(v16 - 8);
  v111 = v16 - 8;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46B0, &qword_26F182230);
  v20 = *(v19 - 8);
  v94 = v19;
  v95 = v20;
  MEMORY[0x28223BE20](v19);
  v120 = &v90 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46B8, &qword_26F182238);
  v115 = *(v22 - 8);
  v116 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v114 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v123 = &v90 - v25;
  v26 = sub_26F180354();
  sub_26F180564();
  sub_26F17FB44();
  *(&v129[6] + 5) = *&v129[21];
  *(&v129[8] + 5) = *&v129[23];
  *(&v129[10] + 5) = *&v129[25];
  *(&v129[12] + 5) = v130;
  *(v129 + 5) = *&v129[15];
  *(&v129[2] + 5) = *&v129[17];
  *(&v129[4] + 5) = *&v129[19];
  *(&v128[4] + 11) = *&v129[8];
  *(&v128[5] + 11) = *&v129[10];
  *(&v128[6] + 11) = *&v129[12];
  *(v128 + 11) = *v129;
  *(&v128[1] + 11) = *&v129[2];
  *(&v128[2] + 11) = *&v129[4];
  *&v128[0] = v26;
  WORD4(v128[0]) = 256;
  BYTE10(v128[0]) = 0;
  *(&v128[7] + 1) = *(&v130 + 1);
  *(&v128[3] + 11) = *&v129[6];
  v91 = a1;
  v121 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F1491B0(a1, v121);
  v27 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v99 = *(v17 + 80);
  v100 = v18;
  v28 = swift_allocObject();
  v90 = type metadata accessor for TapView;
  sub_26F1499C8(&v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for TapView);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46C0, &qword_26F182240);
  v30 = sub_26F14AAE8();
  sub_26F180254();

  v131[4] = v128[4];
  v131[5] = v128[5];
  v131[6] = v128[6];
  v131[7] = v128[7];
  v131[0] = v128[0];
  v131[1] = v128[1];
  v131[2] = v128[2];
  v131[3] = v128[3];
  sub_26F13AB10(v131, &qword_2806D46C0, &qword_26F182240);
  v31 = v92;
  sub_26F17FAD4();
  v32 = v121;
  sub_26F1491B0(a1, v121);
  v96 = v27;
  v33 = swift_allocObject() + v27;
  v34 = v90;
  sub_26F1499C8(v32, v33, v90);
  sub_26F14B314(&qword_2806D4700, MEMORY[0x277CDDAD8], MEMORY[0x277CDDAD0]);
  v35 = v93;
  v36 = v97;
  sub_26F1804C4();

  (*(v98 + 8))(v31, v36);
  sub_26F17F924();
  *&v128[0] = v29;
  *(&v128[0] + 1) = v30;
  swift_getOpaqueTypeConformance2();
  sub_26F13AC54(&qword_2806D4708, &qword_2806D46A8, &qword_26F182228, MEMORY[0x277CDF728]);
  v37 = v94;
  v38 = v101;
  v39 = v120;
  sub_26F1802C4();
  (*(v102 + 8))(v35, v38);
  (*(v95 + 8))(v39, v37);
  v41 = v104;
  v40 = v105;
  *v104 = xmmword_26F181FE0;
  (*(v40 + 104))(v41, *MEMORY[0x277CDF108], v108);
  v42 = v103;
  sub_26F180514();
  v43 = v106;
  v44 = sub_26F180894();
  *(v44 + 16) = 3;
  v45 = v107;
  v46 = v44 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
  v47 = *(v107 + 16);
  v47(v46, v42, v43);
  v48 = *(v109 + 72);
  v47(v46 + v48, v42, v43);
  (*(v45 + 32))(v46 + 2 * v48, v42, v43);
  sub_26F17FD74();
  v49 = v91;
  v124 = v91;
  LODWORD(v128[0]) = 0;
  sub_26F14B314(&qword_2806D4710, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_26F180BD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4718, &qword_26F182260);
  sub_26F14AC78();
  v50 = v122;
  sub_26F180614();
  sub_26F180564();
  sub_26F17FB44();
  v51 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D47B0, &qword_26F1822A8) + 36));
  v52 = v50;
  v53 = v128[5];
  v54 = v128[6];
  v51[4] = v128[4];
  v51[5] = v53;
  v51[6] = v54;
  v55 = v128[1];
  *v51 = v128[0];
  v51[1] = v55;
  v56 = v128[3];
  v51[2] = v128[2];
  v51[3] = v56;
  LOBYTE(v46) = sub_26F180004();
  sub_26F17F894();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D47B8, &qword_26F1822B0) + 36);
  *v65 = v46;
  *(v65 + 8) = v58;
  *(v65 + 16) = v60;
  *(v65 + 24) = v62;
  *(v65 + 32) = v64;
  *(v65 + 40) = 0;
  v66 = (v49 + *(v111 + 44));
  v67 = *v66;
  v68 = v66[1];
  v126 = v67;
  v127 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45F0, &qword_26F183A90);
  sub_26F180414();
  v69 = v125;
  v70 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D47C0, &qword_26F1822B8) + 36));
  *v70 = v69;
  v70[1] = 0;
  v71 = v121;
  sub_26F1491B0(v49, v121);
  v72 = v96;
  v73 = swift_allocObject();
  sub_26F1499C8(v71, v73 + v72, v34);
  v74 = sub_26F180564();
  v76 = v75;
  v77 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D47C8, &qword_26F1822C0) + 36));
  *v77 = sub_26F150C28;
  v77[1] = 0;
  v77[2] = v74;
  v77[3] = v76;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_26F14B25C;
  *(v78 + 24) = v73;
  v79 = v116;
  v80 = (v50 + *(v117 + 44));
  *v80 = sub_26F14B30C;
  v80[1] = v78;
  v82 = v114;
  v81 = v115;
  v83 = *(v115 + 16);
  v83(v114, v123, v79);
  v84 = v52;
  v85 = v118;
  sub_26F13A854(v84, v118, &qword_2806D46A0, &qword_26F182220);
  v86 = v119;
  v83(v119, v82, v79);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D47D0, &unk_26F1822C8);
  sub_26F13A854(v85, &v86[*(v87 + 48)], &qword_2806D46A0, &qword_26F182220);
  sub_26F13AB10(v122, &qword_2806D46A0, &qword_26F182220);
  v88 = *(v81 + 8);
  v88(v123, v79);
  sub_26F13AB10(v85, &qword_2806D46A0, &qword_26F182220);
  return (v88)(v82, v79);
}

uint64_t sub_26F1447D0()
{
  v0 = sub_26F180714();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F142F70(v3);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26F1448B4()
{
  v0 = sub_26F180714();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F142F70(v3);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26F144998(uint64_t a1)
{
  v2 = type metadata accessor for TapView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8 = xmmword_26F181FF0;
  swift_getKeyPath();
  sub_26F1491B0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_26F1499C8(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for TapView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D47D8, &qword_26F1822F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4730, &qword_26F182268);
  sub_26F14B3DC();
  sub_26F14ACFC();
  return sub_26F1804B4();
}

uint64_t sub_26F144B30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v115 = a2;
  v94 = a3;
  v91 = sub_26F17FAE4();
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v88 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46A8, &qword_26F182228);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v81 - v6;
  v7 = sub_26F17FCF4();
  MEMORY[0x28223BE20](v7 - 8);
  v112 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_26F17F6C4();
  v108 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_26F17F7A4();
  v107 = *(v110 - 8);
  v10 = MEMORY[0x28223BE20](v110);
  v103 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v106 = &v81 - v12;
  v105 = sub_26F180714();
  v102 = *(v105 - 8);
  v13 = MEMORY[0x28223BE20](v105);
  v100 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v116 = &v81 - v15;
  v16 = sub_26F17F6D4();
  MEMORY[0x28223BE20](v16 - 8);
  v101 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TapView(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4748, &qword_26F182278);
  MEMORY[0x28223BE20](v118);
  v23 = &v81 - v22;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D47F0, &qword_26F1822F8);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v117 = &v81 - v24;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4738, &qword_26F182270);
  v25 = MEMORY[0x28223BE20](v114);
  v104 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v84 = &v81 - v27;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D47F8, &qword_26F182300);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v81 - v28;
  v119 = *a1;
  strcpy(v125, "TapTouchGrid");
  BYTE13(v125[0]) = 0;
  HIWORD(v125[0]) = -5120;
  v122 = v119;
  v29 = sub_26F180B34();
  MEMORY[0x27438A3F0](v29);

  v96 = *(&v125[0] + 1);
  v113 = *&v125[0];
  KeyPath = swift_getKeyPath();
  sub_26F1491B0(a2, v21);
  v30 = *(v19 + 80);
  v31 = (v30 + 16) & ~v30;
  v32 = v31 + v20;
  v33 = swift_allocObject();
  v97 = type metadata accessor for TapView;
  sub_26F1499C8(v21, v33 + v31, type metadata accessor for TapView);
  v124 = 0;
  sub_26F180564();
  sub_26F17FB44();
  v34 = v124;
  LOBYTE(v122) = 0;
  v35 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4760, &qword_26F182280) + 36)];
  v36 = *(sub_26F17FB14() + 20);
  v37 = *MEMORY[0x277CE0118];
  v38 = sub_26F17FD14();
  (*(*(v38 - 8) + 104))(&v35[v36], v37, v38);
  __asm { FMOV            V0.2D, #18.0 }

  *v35 = _Q0;
  *&v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44C8, &qword_26F181FB0) + 36)] = 256;
  *v23 = KeyPath;
  v23[8] = v34;
  v44 = v96;
  *(v23 + 2) = v113;
  *(v23 + 3) = v44;
  *(v23 + 4) = sub_26F14B4BC;
  *(v23 + 5) = v33;
  *(v23 + 6) = 0;
  *(v23 + 7) = 0;
  v45 = v125[5];
  *(v23 + 8) = v125[4];
  *(v23 + 9) = v45;
  *(v23 + 10) = v125[6];
  v46 = v125[1];
  *(v23 + 4) = v125[0];
  *(v23 + 5) = v46;
  v47 = v125[3];
  *(v23 + 6) = v125[2];
  *(v23 + 7) = v47;
  *(v23 + 22) = 0x3FF0000000000000;
  *(v23 + 92) = 256;
  v48 = swift_getKeyPath();
  v49 = &v23[*(v118 + 9)];
  *v49 = v48;
  v49[8] = 1;
  sub_26F1491B0(v115, v21);
  v83 = v32;
  v113 = v30;
  v50 = swift_allocObject();
  v96 = v31;
  KeyPath = v21;
  sub_26F1499C8(v21, v50 + v31, v97);
  v82 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v50 + v82) = v119;
  v97 = sub_26F14AF48();
  sub_26F180254();

  sub_26F13AB10(v23, &qword_2806D4748, &qword_26F182278);
  v51 = v116;
  sub_26F180704();
  sub_26F1427C4();
  v52 = sub_26F1809E4();
  if (!v52)
  {
    v52 = [objc_opt_self() mainBundle];
  }

  v53 = v52;
  v54 = v106;
  sub_26F17F794();
  v55 = v102;
  v56 = v105;
  (*(v102 + 16))(v100, v51, v105);
  v57 = v107;
  v58 = v110;
  (*(v107 + 16))(v103, v54, v110);
  v59 = [v53 bundleURL];
  v60 = v109;
  sub_26F17F714();

  (*(v108 + 104))(v60, *MEMORY[0x277CC9118], v111);
  sub_26F17F6E4();

  (*(v57 + 8))(v54, v58);
  (*(v55 + 8))(v116, v56);
  v122 = sub_26F180774();
  v123 = v61;
  v120 = v118;
  v121 = v97;
  swift_getOpaqueTypeConformance2();
  sub_26F140F5C();
  v62 = v104;
  v63 = v99;
  v64 = v117;
  sub_26F180294();

  (*(v98 + 8))(v64, v63);
  sub_26F17FCE4();
  result = sub_26F17FCD4();
  if (__OFADD__(v119, 1))
  {
    __break(1u);
  }

  else
  {
    v122 = v119 + 1;
    sub_26F17FCC4();
    sub_26F17FCD4();
    sub_26F17FD04();
    v66 = v84;
    sub_26F17FA84();

    sub_26F13AB10(v62, &qword_2806D4738, &qword_26F182270);
    v67 = v88;
    sub_26F17FAD4();
    v68 = v115;
    v69 = KeyPath;
    sub_26F1491B0(v115, KeyPath);
    v70 = swift_allocObject();
    v118 = type metadata accessor for TapView;
    v71 = v96;
    sub_26F1499C8(v69, v70 + v96, type metadata accessor for TapView);
    sub_26F14B314(&qword_2806D4700, MEMORY[0x277CDDAD8], MEMORY[0x277CDDAD0]);
    v72 = v90;
    v73 = v91;
    sub_26F1804C4();

    (*(v89 + 8))(v67, v73);
    sub_26F17F924();
    sub_26F14AE50();
    sub_26F13AC54(&qword_2806D4708, &qword_2806D46A8, &qword_26F182228, MEMORY[0x277CDF728]);
    v74 = v85;
    v75 = v93;
    sub_26F1802C4();
    (*(v92 + 8))(v72, v75);
    sub_26F13AB10(v66, &qword_2806D4738, &qword_26F182270);
    v76 = sub_26F180454();
    sub_26F1491B0(v68, v69);
    v77 = v82;
    v78 = swift_allocObject();
    sub_26F1499C8(v69, v78 + v71, v118);
    *(v78 + v77) = v119;
    v79 = v94;
    (*(v86 + 32))(v94, v74, v87);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4730, &qword_26F182268);
    v80 = (v79 + *(result + 36));
    *v80 = v76;
    v80[1] = sub_26F14BA50;
    v80[2] = v78;
  }

  return result;
}

uint64_t sub_26F145A88(uint64_t a1)
{
  v2 = sub_26F17FC84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for TapView(0) + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_26F180944();
    v9 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v7 = v11[1];
  }

  *(v7 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93) = 0;
}

uint64_t sub_26F145BF4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TapView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4558, &qword_26F182078);
  sub_26F180424();
  result = sub_26F142E20();
  v3 = *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64) = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
    sub_26F180424();
    *(sub_26F142E20() + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 88) = 1;

    v6 = sub_26F142E20() + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys;
    *(v6 + 48) = 0;
    *(v6 + 56) = 0;

    sub_26F15D9C8();
    *(v6 + 48) = 0;
    *(v6 + 56) = 0;
  }

  return result;
}

uint64_t sub_26F145D2C()
{
  v0 = sub_26F180714();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F142F70(v3);
  return (*(v1 + 8))(v3, v0);
}

void *sub_26F145E10@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for TapView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  result = sub_26F180414();
  if (v8 == 1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4558, &qword_26F182078), result = sub_26F180414(), v8 == a3) && (result = sub_26F180414(), (v8 & 0x8000000000000000) == 0) && (result = sub_26F180414(), v8 <= 8))
  {
  }

  else
  {
    a1 = 0;
  }

  *a4 = a1;
  return result;
}

uint64_t sub_26F145F3C(uint64_t a1, double a2, double a3)
{
  v5 = sub_26F17FE84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v35 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4308, &qword_26F182E30);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4200, &qword_26F181B88);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v36 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  v37 = a1;
  sub_26F14E9B4((&v35 - v18));
  (*(v6 + 104))(v17, *MEMORY[0x277CE0558], v5);
  (*(v6 + 56))(v17, 0, 1, v5);
  v20 = *(v9 + 56);
  sub_26F13A854(v19, v11, &qword_2806D4200, &qword_26F181B88);
  sub_26F13A854(v17, &v11[v20], &qword_2806D4200, &qword_26F181B88);
  v21 = *(v6 + 48);
  if (v21(v11, 1, v5) == 1)
  {
    sub_26F13AB10(v17, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v19, &qword_2806D4200, &qword_26F181B88);
    if (v21(&v11[v20], 1, v5) == 1)
    {
      sub_26F13AB10(v11, &qword_2806D4200, &qword_26F181B88);
      v22 = v37;
LABEL_8:
      v23 = *(v22 + *(type metadata accessor for TapView(0) + 56)) * 0.5;
      goto LABEL_10;
    }
  }

  else
  {
    sub_26F13A854(v11, v36, &qword_2806D4200, &qword_26F181B88);
    if (v21(&v11[v20], 1, v5) != 1)
    {
      v24 = &v11[v20];
      v25 = v35;
      (*(v6 + 32))(v35, v24, v5);
      sub_26F14B314(&qword_2806D4318, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v26 = v36;
      v27 = sub_26F1806F4();
      v28 = *(v6 + 8);
      v28(v25, v5);
      sub_26F13AB10(v17, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v19, &qword_2806D4200, &qword_26F181B88);
      v28(v26, v5);
      sub_26F13AB10(v11, &qword_2806D4200, &qword_26F181B88);
      v22 = v37;
      if ((v27 & 1) == 0)
      {
        v23 = 373.0;
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_26F13AB10(v17, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v19, &qword_2806D4200, &qword_26F181B88);
    (*(v6 + 8))(v36, v5);
  }

  sub_26F13AB10(v11, &qword_2806D4308, &qword_26F182E30);
  v23 = 373.0;
  v22 = v37;
LABEL_10:
  v29 = v23 + a3 * -0.5;
  v30 = (v22 + *(type metadata accessor for TapView(0) + 48));
  v31 = *v30;
  v32 = v30[1];
  v38 = v29;
  v39 = v31;
  v40 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
  sub_26F180424();
  v33 = sub_26F142E20();
  v39 = v31;
  v40 = v32;
  sub_26F180414();
  *(v33 + 64) = v38;
}

uint64_t sub_26F146460@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v23 = a3;
  v7 = sub_26F17FAC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TapView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  if (v15)
  {
    sub_26F1491B0(a2, &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v7);
    v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = (*(v8 + 80) + v17 + 8) & ~*(v8 + 80);
    v19 = swift_allocObject();
    sub_26F1499C8(v14, v19 + v16, type metadata accessor for TapView);
    *(v19 + v17) = v15;
    (*(v8 + 32))(v19 + v18, v10, v7);
    v20 = sub_26F1498CC;
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  *a4 = v20;
  a4[1] = v19;
}

void *sub_26F14667C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v125 = a4;
  v123 = a3;
  v144 = a1;
  v100 = a5;
  v6 = sub_26F17FCF4();
  MEMORY[0x28223BE20](v6 - 8);
  v143 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_26F17F6C4();
  v137 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_26F17F7A4();
  v139 = *(v141 - 8);
  v9 = MEMORY[0x28223BE20](v141);
  v133 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v135 = &v98 - v11;
  v136 = sub_26F180714();
  v134 = *(v136 - 8);
  v12 = MEMORY[0x28223BE20](v136);
  v131 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v149 = &v98 - v14;
  v15 = sub_26F17F6D4();
  MEMORY[0x28223BE20](v15 - 8);
  v132 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_26F17FAC4();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = v17;
  v112 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TapView(0);
  v117 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v118 = v19;
  v124 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26F17FB14();
  MEMORY[0x28223BE20](v20);
  v106 = (&v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45B0, &qword_26F1820F0);
  MEMORY[0x28223BE20](v105);
  v23 = &v98 - v22;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45B8, &qword_26F1820F8);
  MEMORY[0x28223BE20](v107);
  v108 = &v98 - v24;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45C0, &qword_26F182100);
  MEMORY[0x28223BE20](v109);
  v110 = &v98 - v25;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45C8, &qword_26F182108);
  MEMORY[0x28223BE20](v111);
  v115 = &v98 - v26;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45D0, &qword_26F182110);
  MEMORY[0x28223BE20](v113);
  v116 = &v98 - v27;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45D8, &qword_26F182118);
  MEMORY[0x28223BE20](v114);
  v119 = &v98 - v28;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45E0, &qword_26F182120);
  MEMORY[0x28223BE20](v145);
  v146 = &v98 - v29;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45E8, &qword_26F182128);
  MEMORY[0x28223BE20](v99);
  v130 = &v98 - v30;
  strcpy(v151, "TapTouchGrid");
  BYTE13(v151[0]) = 0;
  HIWORD(v151[0]) = -5120;
  v31 = (a2 + *(v18 + 28));
  v33 = *v31;
  v32 = v31[1];
  v129 = v33;
  v150.origin.x = v33;
  v128 = v32;
  v150.origin.y = v32;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4558, &qword_26F182078);
  sub_26F180414();
  v34 = sub_26F180B34();
  MEMORY[0x27438A3F0](v34);

  v103 = *(&v151[0] + 1);
  v104 = *&v151[0];
  KeyPath = swift_getKeyPath();
  v126 = v18;
  v35 = a2 + *(v18 + 44);
  v37 = *(v35 + 8);
  LOBYTE(v151[0]) = *v35;
  v36 = LOBYTE(v151[0]);
  *(v151 + 1) = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180414();
  v148 = v36;
  LOBYTE(v151[0]) = v36;
  *(v151 + 1) = v37;
  v147 = v38;
  sub_26F180414();
  sub_26F180564();
  v142 = v37;
  sub_26F17FB44();
  v153 = 0;
  v39 = v148;
  LOBYTE(v150.origin.x) = v148;
  v150.origin.y = v37;
  sub_26F180414();
  v40 = v152;
  v41 = *(v20 + 20);
  v42 = *MEMORY[0x277CE0118];
  v43 = sub_26F17FD14();
  v44 = v106;
  (*(*(v43 - 8) + 104))(v106 + v41, v42, v43);
  v45 = 18.0;
  if (v40)
  {
    v45 = 0.0;
  }

  *v44 = v45;
  v44[1] = v45;
  v46 = &v23[*(v105 + 36)];
  sub_26F1499C8(v44, v46, MEMORY[0x277CDFC08]);
  *(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44C8, &qword_26F181FB0) + 36)) = 256;
  v47 = v151[2];
  *(v23 + 88) = v151[3];
  v48 = v151[5];
  *(v23 + 104) = v151[4];
  *(v23 + 120) = v48;
  *(v23 + 136) = v151[6];
  v49 = v151[1];
  *(v23 + 40) = v151[0];
  *(v23 + 56) = v49;
  *v23 = KeyPath;
  v23[8] = 0;
  v50 = v103;
  *(v23 + 2) = v104;
  *(v23 + 3) = v50;
  *(v23 + 4) = 0x3FF0000000000000;
  *(v23 + 72) = v47;
  v51 = swift_getKeyPath();
  v52 = v23;
  v53 = v108;
  sub_26F142810(v52, v108, &qword_2806D45B0, &qword_26F1820F0);
  v54 = v53 + *(v107 + 36);
  *v54 = v51;
  *(v54 + 8) = 1;
  LOBYTE(v150.origin.x) = v39;
  v150.origin.y = v37;
  sub_26F180414();
  if (v152)
  {
    sub_26F17F9C4();
    MidX = v55 * 0.5;
  }

  else
  {
    type metadata accessor for CGRect(0);
    sub_26F17F9F4();
    MidX = CGRectGetMidX(v150);
  }

  LOBYTE(v150.origin.x) = v148;
  v150.origin.y = v37;
  sub_26F180414();
  if (v152 == 1)
  {
    sub_26F17F9C4();
    MidY = v57 * 0.5;
  }

  else
  {
    type metadata accessor for CGRect(0);
    sub_26F17F9F4();
    MidY = CGRectGetMidY(v150);
  }

  v59 = v110;
  sub_26F142810(v53, v110, &qword_2806D45B8, &qword_26F1820F8);
  v60 = (v59 + *(v109 + 36));
  *v60 = MidX;
  v60[1] = MidY;
  v101 = a2;
  v61 = v124;
  sub_26F1491B0(a2, v124);
  v62 = v121;
  v63 = v112;
  v64 = v122;
  (*(v121 + 16))(v112, v125, v122);
  v65 = (*(v117 + 80) + 16) & ~*(v117 + 80);
  v144 = v65 + v118;
  v66 = (v65 + v118 + *(v62 + 80)) & ~*(v62 + 80);
  v67 = swift_allocObject();
  sub_26F1499C8(v61, v67 + v65, type metadata accessor for TapView);
  (*(v62 + 32))(v67 + v66, v63, v64);
  v68 = v115;
  v69 = sub_26F142810(v59, v115, &qword_2806D45C0, &qword_26F182100);
  v70 = (v68 + *(v111 + 36));
  *v70 = sub_26F149CB0;
  v70[1] = v67;
  v70[2] = 0;
  v70[3] = 0;
  v71 = MEMORY[0x27438A200](v69, 0.2, 1.0, 0.0);
  LOBYTE(v150.origin.x) = v148;
  v150.origin.y = v142;
  sub_26F180414();
  LOBYTE(v67) = v152;
  v72 = v68;
  v73 = v116;
  sub_26F142810(v72, v116, &qword_2806D45C8, &qword_26F182108);
  v74 = v73 + *(v113 + 36);
  *v74 = v71;
  *(v74 + 8) = v67;
  v75 = v101;
  sub_26F1491B0(v101, v61);
  v76 = swift_allocObject();
  sub_26F1499C8(v61, v76 + v65, type metadata accessor for TapView);
  v77 = v119;
  v78 = &v119[*(v114 + 36)];
  sub_26F17FA24();
  sub_26F1808F4();
  *v78 = &unk_26F182160;
  *(v78 + 1) = v76;
  sub_26F142810(v73, v77, &qword_2806D45D0, &qword_26F182110);
  v79 = (v75 + *(v126 + 40));
  v80 = *v79;
  v81 = v79[1];
  v150.origin.x = v80;
  v150.origin.y = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45F0, &qword_26F183A90);
  sub_26F180414();
  v82 = v152;
  v83 = v146;
  sub_26F142810(v77, v146, &qword_2806D45D8, &qword_26F182118);
  v84 = (v83 + *(v145 + 36));
  *v84 = v82;
  v84[1] = 0;
  sub_26F180704();
  sub_26F1427C4();
  v85 = sub_26F1809E4();
  if (!v85)
  {
    v85 = [objc_opt_self() mainBundle];
  }

  v86 = v85;
  v87 = v135;
  sub_26F17F794();
  v88 = v134;
  v89 = v136;
  (*(v134 + 16))(v131, v149, v136);
  v90 = v139;
  v91 = v141;
  (*(v139 + 16))(v133, v87, v141);
  v92 = [v86 bundleURL];
  v93 = v138;
  sub_26F17F714();

  (*(v137 + 104))(v93, *MEMORY[0x277CC9118], v140);
  sub_26F17F6E4();

  (*(v90 + 8))(v87, v91);
  (*(v88 + 8))(v149, v89);
  *&v150.origin.x = sub_26F180774();
  v150.origin.y = v94;
  sub_26F149F3C();
  sub_26F140F5C();
  v95 = v130;
  v96 = v146;
  sub_26F180294();

  sub_26F13AB10(v96, &qword_2806D45E0, &qword_26F182120);
  sub_26F17FCE4();
  sub_26F17FCD4();
  v150.origin.x = v129;
  v150.origin.y = v128;
  result = sub_26F180414();
  if (__OFADD__(v152, 1))
  {
    __break(1u);
  }

  else
  {
    *&v150.origin.x = v152 + 1;
    sub_26F17FCC4();
    sub_26F17FCD4();
    sub_26F17FD04();
    sub_26F17FA84();

    return sub_26F13AB10(v95, &qword_2806D45E8, &qword_26F182128);
  }

  return result;
}

uint64_t sub_26F1478E0(uint64_t a1)
{
  type metadata accessor for TapView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180424();
  return sub_26F17FAB4();
}

uint64_t sub_26F14799C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_26F180AA4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = sub_26F1808E4();
  v1[8] = sub_26F1808D4();
  v3 = swift_task_alloc();
  v1[9] = v3;
  *v3 = v1;
  v3[1] = sub_26F147AB4;

  return sub_26F148464();
}

uint64_t sub_26F147AB4()
{
  v1 = *v0;

  v3 = sub_26F1808C4();
  *(v1 + 80) = v3;
  *(v1 + 88) = v2;

  return MEMORY[0x2822009F8](sub_26F147BF8, v3, v2);
}

uint64_t sub_26F147BF8()
{
  v1 = sub_26F180BC4();
  v3 = v2;
  sub_26F180B84();
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_26F147CD4;

  return sub_26F14A55C(v1, v3, 0, 0, 1);
}

uint64_t sub_26F147CD4()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[6], v2[3]);
    v3 = v2[10];
    v4 = v2[11];

    return MEMORY[0x2822009F8](sub_26F14821C, v3, v4);
  }

  else
  {
    v5 = v2[6];
    v6 = v2[3];
    v7 = v2[4];
    v8 = *(v7 + 8);
    v2[14] = v8;
    v2[15] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v6);
    v9 = swift_task_alloc();
    v2[16] = v9;
    *v9 = v2;
    v9[1] = sub_26F147E78;

    return sub_26F148B4C();
  }
}

uint64_t sub_26F147E78()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26F147F98, v3, v2);
}

uint64_t sub_26F147F98()
{
  v1 = sub_26F180BC4();
  v3 = v2;
  sub_26F180B84();
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_26F148074;

  return sub_26F14A55C(v1, v3, 0, 0, 1);
}

uint64_t sub_26F148074()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  *(*v1 + 144) = v0;

  v3(v4, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_26F148384;
  }

  else
  {
    v8 = sub_26F1482FC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_26F14821C()
{
  v1 = *(v0 + 104);

  if (qword_2806D3FE8 != -1)
  {
    swift_once();
  }

  v2._object = 0x800000026F184670;
  v2._countAndFlagsBits = 0xD000000000000064;
  TryItLog.error(_:)(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26F1482FC()
{

  sub_26F142E20();
  sub_26F15C40C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F148384()
{
  v1 = *(v0 + 144);

  if (qword_2806D3FE8 != -1)
  {
    swift_once();
  }

  v2._object = 0x800000026F184670;
  v2._countAndFlagsBits = 0xD000000000000064;
  TryItLog.error(_:)(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26F148464()
{
  v1[5] = v0;
  v2 = sub_26F17F6C4();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_26F17F7A4();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v4 = sub_26F180714();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  sub_26F17F6D4();
  v1[17] = swift_task_alloc();
  sub_26F1808E4();
  v1[18] = sub_26F1808D4();
  v6 = sub_26F1808C4();

  return MEMORY[0x2822009F8](sub_26F148654, v6, v5);
}

uint64_t sub_26F148654()
{

  v1 = sub_26F142E20();
  if (*(v1 + 48) == 1)
  {
    *(v1 + 48) = 1;
  }

  else
  {
    v2 = v1;
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 1;
    v0[2] = v2;
    sub_26F14B314(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
    sub_26F17F7B4();
  }

  v4 = sub_26F142E20();
  if (*(v4 + 51))
  {
    v5 = v4;
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    v0[4] = v5;
    sub_26F14B314(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
    sub_26F17F7B4();
  }

  else
  {
    *(v4 + 51) = 0;
  }

  v7 = sub_26F142E20();
  if (*(v7 + 50) == 1)
  {
    *(v7 + 50) = 1;
  }

  else
  {
    v8 = v7;
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v8;
    *(v9 + 24) = 1;
    v0[3] = v8;
    sub_26F14B314(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
    sub_26F17F7B4();
  }

  sub_26F142E20();
  sub_26F180704();
  sub_26F1427C4();
  v10 = sub_26F1809E4();
  if (!v10)
  {
    v10 = [objc_opt_self() mainBundle];
  }

  v11 = v0[16];
  v27 = v10;
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[12];
  v15 = v0[13];
  v16 = v0[10];
  v17 = v0[11];
  v18 = v0[9];
  v25 = v0[8];
  v19 = v0[7];
  v26 = v0[6];
  sub_26F17F794();
  (*(v13 + 16))(v12, v11, v15);
  (*(v16 + 16))(v17, v14, v18);
  v20 = [v27 bundleURL];
  sub_26F17F714();

  (*(v19 + 104))(v25, *MEMORY[0x277CC9118], v26);
  sub_26F17F6E4();

  (*(v16 + 8))(v14, v18);
  (*(v13 + 8))(v11, v15);
  v21 = sub_26F180774();
  sub_26F15A234(v21, v22);

  v23 = v0[1];

  return v23();
}

uint64_t sub_26F148B4C()
{
  *(v1 + 40) = v0;
  sub_26F1808E4();
  *(v1 + 48) = sub_26F1808D4();
  v3 = sub_26F1808C4();

  return MEMORY[0x2822009F8](sub_26F148BE4, v3, v2);
}

uint64_t sub_26F148BE4()
{
  v1 = v0[5];

  v2 = type metadata accessor for TapView(0);
  v3 = *(v1 + *(v2 + 52));
  v4 = (v1 + *(v2 + 36));
  v5 = *v4;
  v6 = v4[1];
  v0[2] = v5;
  v0[3] = v6;
  v0[4] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45F0, &qword_26F183A90);
  v7 = sub_26F180424();
  MEMORY[0x27438A200](v7, 0.5, 1.0, 0.0);
  *(swift_task_alloc() + 16) = v1;
  sub_26F17FA44();

  v8 = v0[1];

  return v8();
}

double sub_26F148D04(uint64_t a1)
{
  type metadata accessor for TapView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45F0, &qword_26F183A90);
  sub_26F180424();
  sub_26F180424();
  return result;
}

void sub_26F148DCC(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for TapView(0);
  v3 = a1 + v2[5];
  type metadata accessor for TrainingManager(0);
  sub_26F14B314(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  *v3 = sub_26F17F914();
  v3[8] = v4 & 1;
  v5 = v2[6];
  sub_26F180404();
  *(a1 + v5) = v33;
  v6 = v2[7];
  sub_26F180404();
  *(a1 + v6) = v33;
  v7 = a1 + v2[8];
  sub_26F180404();
  *v7 = v33;
  *(v7 + 1) = *(&v33 + 1);
  v8 = (a1 + v2[9]);
  sub_26F180404();
  *v8 = v33;
  v9 = (a1 + v2[10]);
  sub_26F180404();
  *v9 = v33;
  v10 = a1 + v2[11];
  sub_26F180404();
  *v10 = v33;
  *(v10 + 1) = *(&v33 + 1);
  v11 = (a1 + v2[12]);
  sub_26F180404();
  *v11 = v33;
  v12 = v2[13];
  v13 = objc_opt_self();
  v14 = [v13 mainScreen];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v34.origin.x = v16;
  v34.origin.y = v18;
  v34.size.width = v20;
  v34.size.height = v22;
  *(a1 + v12) = CGRectGetWidth(v34);
  v23 = v2[14];
  v24 = [v13 mainScreen];
  [v24 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v35.origin.x = v26;
  v35.origin.y = v28;
  v35.size.width = v30;
  v35.size.height = v32;
  *(a1 + v23) = CGRectGetHeight(v35);
}

uint64_t sub_26F1490B0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_26F1491B0(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_26F1499C8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for TapView);
  *a2 = sub_26F149218;
  a2[1] = v7;
  return result;
}

uint64_t sub_26F1491B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F149218(uint64_t a1)
{
  v3 = *(type metadata accessor for TapView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26F1431A4(a1, v4);
}

unint64_t sub_26F1492A0()
{
  result = qword_2806D4560;
  if (!qword_2806D4560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4540, &qword_26F182068);
    sub_26F13AC54(&qword_2806D4568, &qword_2806D4570, &qword_26F182080, MEMORY[0x277CDD6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4560);
  }

  return result;
}

uint64_t sub_26F149358@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v5 = *(type metadata accessor for TapView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_26F17FAC4() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_26F146460(a1, v2 + v6, v9, a2);
}

void *sub_26F149444(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (!*result)
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t sub_26F149494@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F14B314(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F17F7C4();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_26F149564@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F14B314(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F17F7C4();

  *a2 = *(v3 + 50);
  return result;
}

uint64_t sub_26F14963C()
{
  v1 = *(type metadata accessor for TapView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v13 = sub_26F17FAC4();
  v5 = *(v13 - 8);
  v6 = *(v5 + 80);
  v12 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_26F17FE84();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v0 + v3, 1, v7))
    {
      (*(v8 + 8))(v0 + v3, v7);
    }
  }

  else
  {
  }

  v9 = v2 | v6;
  v10 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6;

  (*(v5 + 8))(v0 + v10, v13);

  return MEMORY[0x2821FE8E8](v0, v10 + v12, v9 | 7);
}

void *sub_26F1498CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TapView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_26F17FAC4() - 8);
  v9 = *(v2 + v7);
  v10 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  return sub_26F14667C(a1, v2 + v6, v9, v10, a2);
}

uint64_t sub_26F1499C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(type metadata accessor for TapView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v13 = sub_26F17FAC4();
  v5 = *(v13 - 8);
  v6 = *(v5 + 80);
  v12 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_26F17FE84();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v0 + v3, 1, v7))
    {
      (*(v8 + 8))(v0 + v3, v7);
    }
  }

  else
  {
  }

  v9 = v2 | v6;
  v10 = (v3 + v4 + v6) & ~v6;

  (*(v5 + 8))(v0 + v10, v13);

  return MEMORY[0x2821FE8E8](v0, v10 + v12, v9 | 7);
}

uint64_t sub_26F149CB0()
{
  v1 = *(type metadata accessor for TapView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_26F17FAC4();

  return sub_26F1478E0(v0 + v2);
}

uint64_t sub_26F149D7C()
{
  v2 = *(type metadata accessor for TapView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26F149E48;

  return sub_26F14799C(v0 + v3);
}

uint64_t sub_26F149E48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_26F149F3C()
{
  result = qword_2806D45F8;
  if (!qword_2806D45F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D45E0, &qword_26F182120);
    sub_26F149FC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D45F8);
  }

  return result;
}

unint64_t sub_26F149FC8()
{
  result = qword_2806D4600;
  if (!qword_2806D4600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D45D8, &qword_26F182118);
    sub_26F14A084();
    sub_26F14B314(&qword_2806D4688, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4600);
  }

  return result;
}

unint64_t sub_26F14A084()
{
  result = qword_2806D4608;
  if (!qword_2806D4608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D45D0, &qword_26F182110);
    sub_26F14A13C();
    sub_26F13AC54(&qword_2806D4678, &qword_2806D4680, &qword_26F182188, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4608);
  }

  return result;
}

unint64_t sub_26F14A13C()
{
  result = qword_2806D4610;
  if (!qword_2806D4610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D45C8, &qword_26F182108);
    sub_26F14A1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4610);
  }

  return result;
}

unint64_t sub_26F14A1C8()
{
  result = qword_2806D4618;
  if (!qword_2806D4618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D45C0, &qword_26F182100);
    sub_26F14A254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4618);
  }

  return result;
}

unint64_t sub_26F14A254()
{
  result = qword_2806D4620;
  if (!qword_2806D4620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D45B8, &qword_26F1820F8);
    sub_26F14A30C();
    sub_26F13AC54(&qword_2806D4668, &qword_2806D4670, &qword_26F182180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4620);
  }

  return result;
}

unint64_t sub_26F14A30C()
{
  result = qword_2806D4628;
  if (!qword_2806D4628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D45B0, &qword_26F1820F0);
    sub_26F14A3C4();
    sub_26F13AC54(&qword_2806D4518, &qword_2806D44C8, &qword_26F181FB0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4628);
  }

  return result;
}

unint64_t sub_26F14A3C4()
{
  result = qword_2806D4630;
  if (!qword_2806D4630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4638, &qword_26F182168);
    sub_26F14A450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4630);
  }

  return result;
}

unint64_t sub_26F14A450()
{
  result = qword_2806D4640;
  if (!qword_2806D4640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4648, &qword_26F182170);
    sub_26F14A508();
    sub_26F13AC54(&qword_2806D4658, &qword_2806D4660, &qword_26F182178, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4640);
  }

  return result;
}

unint64_t sub_26F14A508()
{
  result = qword_2806D4650;
  if (!qword_2806D4650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4650);
  }

  return result;
}

uint64_t sub_26F14A55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_26F180A94();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_26F14A65C, 0, 0);
}

uint64_t sub_26F14A65C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_26F180AA4();
  v5 = sub_26F14B314(&qword_2806D4690, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_26F180B64();
  sub_26F14B314(&qword_2806D4698, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_26F180AB4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_26F14A7EC;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_26F14A7EC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26F14A9A8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_26F14A9A8()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_26F14AAE8()
{
  result = qword_2806D46C8;
  if (!qword_2806D46C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D46C0, &qword_26F182240);
    sub_26F14AB74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D46C8);
  }

  return result;
}

unint64_t sub_26F14AB74()
{
  result = qword_2806D46D0;
  if (!qword_2806D46D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D46D8, &qword_26F182248);
    sub_26F13AC54(&qword_2806D46E0, &qword_2806D46E8, &qword_26F182250, MEMORY[0x277CDF3A0]);
    sub_26F13AC54(&qword_2806D46F0, &qword_2806D46F8, &qword_26F182258, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D46D0);
  }

  return result;
}

unint64_t sub_26F14AC78()
{
  result = qword_2806D4720;
  if (!qword_2806D4720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4718, &qword_26F182260);
    sub_26F14ACFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4720);
  }

  return result;
}

unint64_t sub_26F14ACFC()
{
  result = qword_2806D4728;
  if (!qword_2806D4728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4730, &qword_26F182268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4738, &qword_26F182270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D46A8, &qword_26F182228);
    sub_26F14AE50();
    sub_26F13AC54(&qword_2806D4708, &qword_2806D46A8, &qword_26F182228, MEMORY[0x277CDF728]);
    swift_getOpaqueTypeConformance2();
    sub_26F13AC54(&qword_2806D47A0, &qword_2806D47A8, &qword_26F1822A0, MEMORY[0x277CE0598]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4728);
  }

  return result;
}

unint64_t sub_26F14AE50()
{
  result = qword_2806D4740;
  if (!qword_2806D4740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4738, &qword_26F182270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4748, &qword_26F182278);
    sub_26F14AF48();
    swift_getOpaqueTypeConformance2();
    sub_26F14B314(&qword_2806D4798, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4740);
  }

  return result;
}

unint64_t sub_26F14AF48()
{
  result = qword_2806D4750;
  if (!qword_2806D4750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4748, &qword_26F182278);
    sub_26F14B000();
    sub_26F13AC54(&qword_2806D4668, &qword_2806D4670, &qword_26F182180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4750);
  }

  return result;
}

unint64_t sub_26F14B000()
{
  result = qword_2806D4758;
  if (!qword_2806D4758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4760, &qword_26F182280);
    sub_26F14B0B8();
    sub_26F13AC54(&qword_2806D4518, &qword_2806D44C8, &qword_26F181FB0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4758);
  }

  return result;
}

unint64_t sub_26F14B0B8()
{
  result = qword_2806D4768;
  if (!qword_2806D4768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4770, &qword_26F182288);
    sub_26F14B144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4768);
  }

  return result;
}

unint64_t sub_26F14B144()
{
  result = qword_2806D4778;
  if (!qword_2806D4778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4780, &qword_26F182290);
    sub_26F14B1D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4778);
  }

  return result;
}

unint64_t sub_26F14B1D0()
{
  result = qword_2806D4788;
  if (!qword_2806D4788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4790, &qword_26F182298);
    sub_26F14A508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4788);
  }

  return result;
}

uint64_t sub_26F14B25C(double a1, double a2)
{
  v5 = *(type metadata accessor for TapView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F145F3C(v6, a1, a2);
}

uint64_t sub_26F14B2D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26F14B314(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F14B35C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TapView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F144B30(a1, v6, a2);
}

unint64_t sub_26F14B3DC()
{
  result = qword_2806D47E0;
  if (!qword_2806D47E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D47D8, &qword_26F1822F0);
    sub_26F14B468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D47E0);
  }

  return result;
}

unint64_t sub_26F14B468()
{
  result = qword_2806D47E8;
  if (!qword_2806D47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D47E8);
  }

  return result;
}

uint64_t sub_26F14B4D4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TapView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_26F14B54C()
{
  v1 = *(type metadata accessor for TapView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26F145BF4(v0 + v2, v3);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(type metadata accessor for TapView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26F17FE84();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26F14B7D8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TapView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroy_60Tm()
{
  v1 = *(type metadata accessor for TapView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26F17FE84();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void *sub_26F14BA50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for TapView(0) - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26F145E10(a1, v6, a2);
}

uint64_t sub_26F14BB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26F14BC64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for DragView(uint64_t a1)
{
  result = qword_2806D4810;
  if (!qword_2806D4810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F14BD74(uint64_t a1)
{
  sub_26F14BF64(319, &qword_2806D41F8, &qword_2806D4200, &qword_26F181B88, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_26F14BF00(319, &qword_2806D4208, type metadata accessor for TrainingManager, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_26F14BF00(319, &qword_2806D4820, type metadata accessor for CGRect, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_26F14BF64(319, &qword_2806D4828, &qword_2806D4830, "~m", MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_26F14BFC8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26F14BF00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26F14BF64(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_26F14BFC8()
{
  if (!qword_2806D4838)
  {
    v0 = sub_26F1808A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2806D4838);
    }
  }
}

uint64_t sub_26F14C034()
{
  v1 = sub_26F17FC84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for DragView(0) + 20));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_26F180944();
    v8 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_26F14C184()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4918, &qword_26F182490);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4920, &qword_26F182498) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26F181B30;
  v4 = (v3 + v2);
  *v4 = 0x6B726F592077654ELL;
  v4[1] = 0xE800000000000000;
  sub_26F180704();
  v5 = (v4 + v1);
  *v5 = 0x79656E647953;
  v5[1] = 0xE600000000000000;
  sub_26F180704();
  v6 = (v4 + 2 * v1);
  *v6 = 0x6F796B6F54;
  v6[1] = 0xE500000000000000;
  sub_26F180704();
  v7 = sub_26F151950(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_2806D6C00 = v7;
  return result;
}

uint64_t sub_26F14C34C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v17 = a1;
  v3 = type metadata accessor for DragView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_26F14E670(v1, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_26F14E6D8(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v19 = sub_26F14E73C;
  v20 = v7;
  v8 = sub_26F14C034();
  swift_getKeyPath();
  v18 = v8;
  sub_26F150AE8(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F17F7C4();

  v9 = *(v8 + 51);

  LOBYTE(v18) = v9;
  sub_26F14E670(v2, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  sub_26F14E6D8(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4840, &qword_26F1823F8);
  sub_26F13AC54(&qword_2806D4848, &qword_2806D4840, &qword_26F1823F8, MEMORY[0x277CDF7D8]);
  v11 = v17;
  sub_26F180324();

  v12 = [objc_opt_self() defaultCenter];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4850, &qword_26F182400);
  sub_26F1809C4();

  sub_26F14E670(v2, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  result = sub_26F14E6D8(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v6);
  v16 = (v11 + *(v13 + 56));
  *v16 = sub_26F14E944;
  v16[1] = v14;
  return result;
}

uint64_t sub_26F14C65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a1;
  v90 = a3;
  v95 = sub_26F17F9E4();
  v89 = *(v95 - 8);
  v96 = *(v89 + 64);
  MEMORY[0x28223BE20](v95);
  v88 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DragView(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4860, &qword_26F182410);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v76 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4868, &qword_26F182418);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v76 - v15;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4870, &qword_26F182420) - 8;
  MEMORY[0x28223BE20](v83);
  v93 = &v76 - v17;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4878, &qword_26F182428) - 8;
  MEMORY[0x28223BE20](v85);
  v84 = &v76 - v18;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4880, &qword_26F182430);
  MEMORY[0x28223BE20](v87);
  v86 = &v76 - v19;
  *v12 = sub_26F17FD74();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4888, &qword_26F182438) + 44);
  v20 = *(v6 + 44);
  v92 = a2;
  v97 = sub_26F14FC14(0, *(*(a2 + v20) + 16), *(a2 + v20));
  KeyPath = swift_getKeyPath();
  v91 = v9;
  sub_26F14E670(a2, v9);
  v21 = *(v7 + 80);
  v80 = ((v21 + 16) & ~v21) + v8;
  v22 = (v21 + 16) & ~v21;
  v82 = v22;
  v81 = v21 | 7;
  v23 = swift_allocObject();
  sub_26F14E6D8(v9, v23 + v22);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26F14FFC0;
  *(v24 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4890, &qword_26F182460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4898, &qword_26F182468);
  sub_26F13AC54(&qword_2806D48A0, &qword_2806D4890, &qword_26F182460, MEMORY[0x277D83980]);
  v25 = type metadata accessor for DraggableLocationItem(255);
  v26 = type metadata accessor for TrainingManager(255);
  v27 = sub_26F150AE8(&qword_2806D48A8, type metadata accessor for DraggableLocationItem, &unk_26F183948);
  v28 = sub_26F150AE8(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  *&v99 = v25;
  *(&v99 + 1) = v26;
  *&v100 = v27;
  *(&v100 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  sub_26F1804B4();
  sub_26F180564();
  sub_26F17FB44();
  sub_26F142810(v12, v16, &qword_2806D4860, &qword_26F182410);
  v29 = &v16[*(v14 + 44)];
  v30 = v104;
  *(v29 + 4) = v103;
  *(v29 + 5) = v30;
  *(v29 + 6) = v105;
  v31 = v100;
  *v29 = v99;
  *(v29 + 1) = v31;
  v32 = v102;
  *(v29 + 2) = v101;
  *(v29 + 3) = v32;
  LOBYTE(v23) = sub_26F180004();
  sub_26F17F894();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v93;
  sub_26F142810(v16, v93, &qword_2806D4868, &qword_26F182418);
  v42 = v41 + *(v83 + 44);
  *v42 = v23;
  *(v42 + 8) = v34;
  *(v42 + 16) = v36;
  *(v42 + 24) = v38;
  *(v42 + 32) = v40;
  *(v42 + 40) = 0;
  v43 = v92;
  v44 = v91;
  sub_26F14E670(v92, v91);
  v45 = v89;
  v46 = *(v89 + 16);
  v79 = v89 + 16;
  v83 = v46;
  v47 = v88;
  v48 = v95;
  v46(v88, v94, v95);
  KeyPath = *(v45 + 80);
  v49 = (v80 + KeyPath) & ~KeyPath;
  v77 = v49;
  v50 = swift_allocObject();
  v51 = v82;
  sub_26F14E6D8(v44, v50 + v82);
  v89 = *(v45 + 32);
  v52 = v50 + v49;
  v53 = v47;
  (v89)(v52, v47, v48);
  v54 = v84;
  sub_26F142810(v93, v84, &qword_2806D4870, &qword_26F182420);
  v55 = (v54 + *(v85 + 44));
  *v55 = sub_26F1500C8;
  v55[1] = v50;
  v55[2] = 0;
  v55[3] = 0;
  v56 = v91;
  sub_26F14E670(v43, v91);
  v57 = swift_allocObject();
  v58 = v51;
  sub_26F14E6D8(v56, v57 + v51);
  v59 = sub_26F180564();
  v61 = v60;
  v62 = v54;
  v63 = v86;
  sub_26F142810(v62, v86, &qword_2806D4878, &qword_26F182428);
  v64 = (v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D48B0, &qword_26F182470) + 36));
  *v64 = sub_26F150C28;
  v64[1] = 0;
  v64[2] = v59;
  v64[3] = v61;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_26F150358;
  *(v65 + 24) = v57;
  v66 = (v63 + *(v87 + 36));
  *v66 = sub_26F1503D0;
  v66[1] = v65;
  v67 = v94;
  sub_26F17F9C4();
  v97 = v68;
  v98 = v69;
  sub_26F14E670(v92, v56);
  v70 = v53;
  v71 = v53;
  v72 = v95;
  (v83)(v71, v67, v95);
  v73 = v77;
  v74 = swift_allocObject();
  sub_26F14E6D8(v56, v74 + v58);
  (v89)(v74 + v73, v70, v72);
  type metadata accessor for CGSize(0);
  sub_26F150740();
  sub_26F150AE8(&qword_2806D4908, type metadata accessor for CGSize, MEMORY[0x277CBF298]);
  sub_26F180314();

  return sub_26F150A80(v63);
}

uint64_t sub_26F14D03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a2;
  v56 = a3;
  v53 = a1;
  v54 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - v10;
  v12 = sub_26F180714();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DraggableLocationItem(0);
  MEMORY[0x28223BE20](v52);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DragView(0);
  v19 = (a4 + v18[7]);
  v21 = *v19;
  v20 = v19[1];
  *&v59 = v21;
  *(&v59 + 1) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4858, &qword_26F182408);
  sub_26F180434();
  v50 = v57;
  v51 = *v58;
  v22 = (a4 + v18[8]);
  v24 = *v22;
  v23 = v22[1];
  *&v59 = v24;
  *(&v59 + 1) = v23;
  sub_26F180434();
  v48 = v57;
  v49 = *v58;
  v25 = (a4 + v18[6]);
  v26 = *(v25 + 4);
  v27 = v25[1];
  v59 = *v25;
  v60 = v27;
  v61 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4910, &qword_26F182488);
  sub_26F180434();
  v29 = v57;
  v28 = v58[0];
  v46 = *&v58[3];
  v47 = *&v58[1];
  if (qword_2806D3FC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v30 = qword_2806D6C00;
  if (*(qword_2806D6C00 + 16) && (v31 = sub_26F14ECAC(v55, v56), (v32 & 1) != 0))
  {
    (*(v13 + 16))(v11, *(v30 + 56) + *(v13 + 72) * v31, v12);
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  (*(v13 + 56))(v11, v33, 1, v12);
  sub_26F142810(v11, v9, &qword_2806D4360, &qword_26F181DC0);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    sub_26F180704();
    sub_26F13AB10(v9, &qword_2806D4360, &qword_26F181DC0);
  }

  else
  {
    (*(v13 + 32))(v15, v9, v12);
  }

  swift_endAccess();
  type metadata accessor for TrainingManager(0);
  sub_26F150AE8(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  *v17 = sub_26F17F914();
  v17[8] = v34 & 1;
  *(v17 + 2) = v50;
  *(v17 + 24) = v51;
  *(v17 + 5) = v48;
  *(v17 + 3) = v49;
  *(v17 + 8) = v29;
  *(v17 + 9) = v28;
  v35 = v46;
  *(v17 + 5) = v47;
  *(v17 + 6) = v35;
  LOBYTE(v59) = 0;
  sub_26F180404();
  v36 = v58[0];
  v17[112] = v57;
  *(v17 + 15) = v36;
  LOBYTE(v59) = 0;
  sub_26F180404();
  v37 = v58[0];
  v17[128] = v57;
  *(v17 + 17) = v37;
  LOBYTE(v59) = 1;
  sub_26F180404();
  v38 = v58[0];
  v17[144] = v57;
  *(v17 + 19) = v38;
  LOBYTE(v59) = 0;
  sub_26F180404();
  v39 = v58[0];
  v17[160] = v57;
  *(v17 + 21) = v39;
  *&v59 = 0;
  sub_26F180404();
  v40 = v58[0];
  *(v17 + 22) = v57;
  *(v17 + 23) = v40;
  LOBYTE(v59) = 0;
  sub_26F180404();
  v41 = v58[0];
  v17[192] = v57;
  v43 = v52;
  v42 = v53;
  *(v17 + 25) = v41;
  *(v17 + 26) = v42;
  v44 = v56;
  *(v17 + 27) = v55;
  *(v17 + 28) = v44;
  (*(v13 + 32))(&v17[*(v43 + 64)], v15, v12);

  sub_26F14C034();
  sub_26F150AE8(&qword_2806D48A8, type metadata accessor for DraggableLocationItem, &unk_26F183948);
  sub_26F180244();

  return sub_26F150B30(v17);
}

void sub_26F14D610(uint64_t a1)
{
  v2 = sub_26F17FE64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(sub_26F14C034() + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93) = 2;

  sub_26F17FEA4();
  sub_26F17F9D4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v14 = (a1 + *(type metadata accessor for DragView(0) + 24));
  v15 = *(v14 + 4);
  v16 = v14[1];
  v18 = *v14;
  v19 = v16;
  v20 = v15;
  v17[0] = v7;
  v17[1] = v9;
  v17[2] = v11;
  v17[3] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4910, &qword_26F182488);
  sub_26F180424();
}

uint64_t sub_26F14D78C(uint64_t a1, double a2, double a3)
{
  v5 = sub_26F17FE84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4308, &qword_26F182E30);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4200, &qword_26F181B88);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v31 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = (&v30 - v18);
  v32 = sub_26F14C034();
  v33 = a1;
  sub_26F14E9B4(v19);
  (*(v6 + 104))(v17, *MEMORY[0x277CE0558], v5);
  (*(v6 + 56))(v17, 0, 1, v5);
  v20 = *(v9 + 56);
  sub_26F13A854(v19, v11, &qword_2806D4200, &qword_26F181B88);
  sub_26F13A854(v17, &v11[v20], &qword_2806D4200, &qword_26F181B88);
  v21 = *(v6 + 48);
  if (v21(v11, 1, v5) == 1)
  {
    sub_26F13AB10(v17, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v19, &qword_2806D4200, &qword_26F181B88);
    if (v21(&v11[v20], 1, v5) == 1)
    {
      sub_26F13AB10(v11, &qword_2806D4200, &qword_26F181B88);
      v22 = v33;
LABEL_8:
      v23 = *(v22 + *(type metadata accessor for DragView(0) + 40)) * 0.5;
      goto LABEL_10;
    }
  }

  else
  {
    sub_26F13A854(v11, v31, &qword_2806D4200, &qword_26F181B88);
    if (v21(&v11[v20], 1, v5) != 1)
    {
      v24 = v30;
      (*(v6 + 32))(v30, &v11[v20], v5);
      sub_26F150AE8(&qword_2806D4318, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v25 = v31;
      v26 = sub_26F1806F4();
      v27 = *(v6 + 8);
      v27(v24, v5);
      sub_26F13AB10(v17, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v19, &qword_2806D4200, &qword_26F181B88);
      v27(v25, v5);
      sub_26F13AB10(v11, &qword_2806D4200, &qword_26F181B88);
      v22 = v33;
      if ((v26 & 1) == 0)
      {
        v23 = 373.0;
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_26F13AB10(v17, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v19, &qword_2806D4200, &qword_26F181B88);
    (*(v6 + 8))(v31, v5);
  }

  sub_26F13AB10(v11, &qword_2806D4308, &qword_26F182E30);
  v23 = 373.0;
LABEL_10:
  v28 = a3 * 0.5;
  *(v32 + 64) = v23 - v28;

  *(sub_26F14C034() + 56) = v28;
}

void sub_26F14DC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26F17FE64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F17FEA4();
  sub_26F17F9D4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  v16 = (a3 + *(type metadata accessor for DragView(0) + 24));
  v17 = *(v16 + 4);
  v18 = v16[1];
  v20 = *v16;
  v21 = v18;
  v22 = v17;
  v19[0] = v9;
  v19[1] = v11;
  v19[2] = v13;
  v19[3] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4910, &qword_26F182488);
  sub_26F180424();
}

uint64_t sub_26F14DDA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v20 - v3;
  v5 = sub_26F180714();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26F14C034();
  swift_getKeyPath();
  v21 = v9;
  sub_26F150AE8(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F17F7C4();

  v10 = *(v9 + 51);

  if (v10 == 1)
  {
    v12 = sub_26F180894();
    v12[2] = 3;
    v13 = type metadata accessor for DragView(0);
    v12[5] = 0;
    v12[6] = 0;
    v12[4] = 0;
    v14 = (a1 + *(v13 + 32));
    v16 = *v14;
    v15 = v14[1];
    v21 = v16;
    v22 = v15;
    v20[1] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4858, &qword_26F182408);
    sub_26F180424();
    sub_26F14C034();
    sub_26F180704();
    (*(v6 + 56))(v4, 1, 1, v5);
    sub_26F15BCB8(v8, 0, v4);

    sub_26F13AB10(v4, &qword_2806D4360, &qword_26F181DC0);
    (*(v6 + 8))(v8, v5);
    v17 = sub_26F14C034();
    if (*(v17 + 51))
    {
      v18 = v17;
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v20[-2] = v18;
      LOBYTE(v20[-1]) = 0;
      v21 = v18;
      sub_26F17F7B4();
    }

    else
    {
      *(v17 + 51) = 0;
    }
  }

  return result;
}

uint64_t sub_26F14E0F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_26F17FC84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a2 + *(type metadata accessor for DragView(0) + 20));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_26F180944();
    v10 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v8 = v14;
  }

  if (*(v8 + 51) == 1)
  {
    *(v8 + 51) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v13 - 2) = v8;
    *(&v13 - 8) = 1;
    v14 = v8;
    sub_26F150AE8(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
    sub_26F17F7B4();
  }
}

void sub_26F14E32C(uint64_t *a1@<X8>)
{
  v1 = a1;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for DragView(0);
  v3 = v1 + v2[5];
  type metadata accessor for TrainingManager(0);
  sub_26F150AE8(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  *v3 = sub_26F17F914();
  v3[8] = v4 & 1;
  v5 = v1 + v2[6];
  type metadata accessor for CGRect(0);
  sub_26F180404();
  v6 = v31;
  v7 = v30[1];
  *v5 = v30[0];
  *(v5 + 1) = v7;
  *(v5 + 4) = v6;
  v8 = (v1 + v2[7]);
  v9 = sub_26F180894();
  v9[2] = 3;
  v9[5] = 0;
  v9[6] = 0;
  v9[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4830, "~m");
  sub_26F180404();
  v10 = *(&v30[0] + 1);
  *v8 = *&v30[0];
  v8[1] = v10;
  v11 = (v1 + v2[8]);
  v12 = sub_26F180894();
  v12[2] = 3;
  v12[5] = 0;
  v12[6] = 0;
  v12[4] = 0;
  sub_26F180404();
  v13 = *(&v30[0] + 1);
  *v11 = *&v30[0];
  v11[1] = v13;
  if (qword_2806D3FC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = qword_2806D6C00;
  v15 = *(qword_2806D6C00 + 16);
  if (!v15)
  {
    v16 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v29 = v1;
  v16 = sub_26F14EB94(v15, 0);
  v17 = sub_26F14FABC(v30, v16 + 4, v15, v14);
  v18 = *&v30[0];

  sub_26F150BAC(v18);
  if (v17 == v15)
  {
    v1 = v29;
LABEL_7:
    *&v30[0] = v16;

    sub_26F14EEE0(v30);

    *(v1 + v2[9]) = *&v30[0];
    v19 = v2[10];
    v20 = [objc_opt_self() mainScreen];
    [v20 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v32.origin.x = v22;
    v32.origin.y = v24;
    v32.size.width = v26;
    v32.size.height = v28;
    *(v1 + v19) = CGRectGetHeight(v32);
    return;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_26F14E670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F14E6D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F14E73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DragView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F14C65C(a1, v6, a2);
}

uint64_t sub_26F14E7E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F150AE8(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F17F7C4();

  *a2 = *(v3 + 51);
  return result;
}

uint64_t sub_26F14E8E4()
{
  v1 = *(type metadata accessor for DragView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26F14DDA4(v2);
}

uint64_t sub_26F14E944(uint64_t a1)
{
  v3 = *(type metadata accessor for DragView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26F14E0F0(a1, v4);
}

uint64_t sub_26F14E9B4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_26F17FC84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_26F13A854(v2, &v13 - v9, &unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26F142810(v10, a1, &qword_2806D4200, &qword_26F181B88);
  }

  sub_26F180944();
  v12 = sub_26F17FFE4();
  sub_26F17F884();

  sub_26F17FC74();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

void *sub_26F14EB94(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4938, &unk_26F1824E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_26F14EC18(uint64_t a1)
{
  sub_26F180754();
  sub_26F180B94();
  sub_26F1807B4();
  v2 = sub_26F180BB4();

  return sub_26F14ED24(a1, v2);
}

unint64_t sub_26F14ECAC(uint64_t a1, uint64_t a2)
{
  sub_26F180B94();
  sub_26F1807B4();
  v4 = sub_26F180BB4();

  return sub_26F14EE28(a1, a2, v4);
}

unint64_t sub_26F14ED24(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_26F180754();
      v8 = v7;
      if (v6 == sub_26F180754() && v8 == v9)
      {
        break;
      }

      v11 = sub_26F180B44();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_26F14EE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26F180B44())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_26F14EEE0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26F150B8C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26F14EF4C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26F14EF4C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26F180B24();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26F180894();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26F14F114(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26F14F044(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26F14F044(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_26F180B44(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26F14F114(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_26F14F9A4(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_26F14F6F0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_26F180B44();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_26F180B44();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26F14F9B8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_26F14F9B8((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_26F14F6F0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26F14F9A4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_26F14F918(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_26F180B44(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_26F14F6F0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_26F180B44() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_26F180B44() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_26F14F918(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26F14F9A4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_26F14F9B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4930, &qword_26F1824D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_26F14FABC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26F14FC14(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v4 = a3;
  v6 = result;
  v39 = *(a3 + 16);
  if (v39 >= v3)
  {
    v7 = a2 - result;
  }

  else
  {
    v7 = *(a3 + 16);
  }

  if (v7)
  {
    if (v7 <= 0)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4928, &qword_26F1824A0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      *(v8 + 2) = v7;
      *(v8 + 3) = 2 * ((v9 - 32) / 24);
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = *(v8 + 3);

  if (v3 < 0)
  {
    goto LABEL_67;
  }

  v11 = v10 >> 1;
  v44 = v8;
  if (!v7)
  {
    v14 = v8 + 32;
    v18 = v6;
    if (v6 == a2)
    {
      goto LABEL_53;
    }

LABEL_27:
    if (v6 > a2)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v19 = 0;
    v40 = v18 - a2;
    if (v18 <= a2)
    {
      v20 = a2;
    }

    else
    {
      v20 = v18;
    }

    v43 = v20 - v18;
    v21 = v39;
    v41 = v39 - v7;
    v22 = (v4 + 16 * v7 + 40);
    v38 = v7;
    while (v18 >= v6)
    {
      if (v43 == v19)
      {
        goto LABEL_61;
      }

      if (v41 == v19)
      {
        goto LABEL_53;
      }

      if (v7 + v19 >= v21)
      {
        goto LABEL_62;
      }

      if (__OFADD__(v7 + v19, 1))
      {
        goto LABEL_63;
      }

      v23 = *(v22 - 1);
      v24 = *v22;
      if (v11)
      {

        v25 = __OFSUB__(v11--, 1);
        if (v25)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v26 = *(v44 + 24);
        if (((v26 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_65;
        }

        v27 = v26 & 0xFFFFFFFFFFFFFFFELL;
        if (v27 <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = v27;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4928, &qword_26F1824A0);
        v29 = swift_allocObject();
        v30 = (_swift_stdlib_malloc_size(v29) - 32) / 24;
        *(v29 + 2) = v28;
        *(v29 + 3) = 2 * v30;
        v31 = v29 + 32;
        v32 = *(v44 + 24) >> 1;
        v14 = &v29[24 * v32 + 32];
        v33 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;
        if (*(v44 + 16))
        {
          v34 = (v44 + 32);
          if (v29 != v44 || v31 >= &v34[24 * v32])
          {
            memmove(v31, v34, 24 * v32);
          }

          *(v44 + 16) = 0;
        }

        else
        {
        }

        v44 = v29;
        v7 = v38;
        v21 = v39;
        v25 = __OFSUB__(v33, 1);
        v11 = v33 - 1;
        if (v25)
        {
          goto LABEL_64;
        }
      }

      *v14 = v18 + v19;
      *(v14 + 1) = v23;
      *(v14 + 2) = v24;
      v14 += 24;
      ++v19;
      v22 += 2;
      if (!(v40 + v19))
      {
        goto LABEL_53;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v6 > a2)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v12 = 0;
  v11 -= v7;
  v42 = v4;
  v13 = (v4 + 40);
  v14 = v8 + 56;
  v15 = 1;
  do
  {
    if (v6 - a2 + v15 == 1)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (v15 - v39 == 1)
    {
      goto LABEL_58;
    }

    if (v12)
    {
      goto LABEL_59;
    }

    v17 = *(v13 - 1);
    v16 = *v13;
    *(v14 - 3) = v6 + v15 - 1;
    *(v14 - 2) = v17;
    *(v14 - 1) = v16;
    if (v7 == v15)
    {
      goto LABEL_24;
    }

    v12 = __OFADD__(v15, 1);

    ++v15;
    v13 += 2;
    v14 += 24;
  }

  while (v6 + v15 - 1 >= v6);
  __break(1u);
LABEL_24:

  v18 = v6 + v15;
  v4 = v42;
  if (v6 + v15 != a2)
  {
    goto LABEL_27;
  }

LABEL_53:
  result = v44;
  v35 = *(v44 + 24);
  if (v35 < 2)
  {
    return result;
  }

  v36 = v35 >> 1;
  v25 = __OFSUB__(v36, v11);
  v37 = v36 - v11;
  if (v25)
  {
LABEL_70:
    __break(1u);
    return result;
  }

  *(v44 + 16) = v37;
  return result;
}

uint64_t sub_26F14FFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for DragView(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_26F14D03C(a1, a2, a3, v10, a4);
}

uint64_t sub_26F150058()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_26F1500C8()
{
  v1 = *(type metadata accessor for DragView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_26F17F9E4();

  sub_26F14D610(v0 + v2);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(type metadata accessor for DragView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26F17FE84();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26F150358(double a1, double a2)
{
  v5 = *(type metadata accessor for DragView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F14D78C(v6, a1, a2);
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(type metadata accessor for DragView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = *(v1 + 64);
  v4 = sub_26F17F9E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v13 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_26F17FE84();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v0 + v3, 1, v7))
    {
      (*(v8 + 8))(v0 + v3, v7);
    }
  }

  else
  {
  }

  v9 = v2 | v6;
  v10 = (v3 + v12 + v6) & ~v6;

  (*(v5 + 8))(v0 + v10, v4);

  return MEMORY[0x2821FE8E8](v0, v10 + v13, v9 | 7);
}

void sub_26F15065C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DragView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  sub_26F17F9E4();

  sub_26F14DC50(a1, a2, v2 + v6);
}

unint64_t sub_26F150740()
{
  result = qword_2806D48B8;
  if (!qword_2806D48B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4880, &qword_26F182430);
    sub_26F1507F8();
    sub_26F13AC54(&qword_2806D48F8, &qword_2806D4900, &qword_26F182480, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D48B8);
  }

  return result;
}

unint64_t sub_26F1507F8()
{
  result = qword_2806D48C0;
  if (!qword_2806D48C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D48B0, &qword_26F182470);
    sub_26F1508B0();
    sub_26F13AC54(&qword_2806D48E8, &qword_2806D48F0, &qword_26F182478, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D48C0);
  }

  return result;
}

unint64_t sub_26F1508B0()
{
  result = qword_2806D48C8;
  if (!qword_2806D48C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4878, &qword_26F182428);
    sub_26F15093C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D48C8);
  }

  return result;
}

unint64_t sub_26F15093C()
{
  result = qword_2806D48D0;
  if (!qword_2806D48D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4870, &qword_26F182420);
    sub_26F1509C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D48D0);
  }

  return result;
}

unint64_t sub_26F1509C8()
{
  result = qword_2806D48D8;
  if (!qword_2806D48D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4868, &qword_26F182418);
    sub_26F13AC54(&qword_2806D48E0, &qword_2806D4860, &qword_26F182410, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D48D8);
  }

  return result;
}

uint64_t sub_26F150A80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4880, &qword_26F182430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F150AE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F150B30(uint64_t a1)
{
  v2 = type metadata accessor for DraggableLocationItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26F150C28(uint64_t *a2@<X8>)
{
  v3 = sub_26F180354();
  sub_26F17F9C4();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
}

void *TryItAnalyticsEvent.__allocating_init(identifier:tipId:correlationId:collectionId:lessonId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  result[9] = a8;
  result[10] = a9;
  result[11] = a10;
  return result;
}

void *TryItAnalyticsEvent.init(identifier:tipId:correlationId:collectionId:lessonId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[10] = 0;
  v10[11] = 0;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  v10[7] = a6;
  v10[8] = a7;
  v10[9] = a8;

  v10[10] = a9;
  v10[11] = a10;

  return v10;
}

unint64_t sub_26F150D68()
{
  v8 = sub_26F151B3C(MEMORY[0x277D84F90]);
  if (v0[5])
  {

    v1 = sub_26F180724();
  }

  else
  {
    v1 = 0;
  }

  sub_26F150F60(v1, 0x64695F706974, 0xE600000000000000);
  if (v0[7])
  {

    v2 = sub_26F180724();
  }

  else
  {
    v2 = 0;
  }

  sub_26F150F60(v2, 0xD000000000000012, 0x800000026F184810);
  if (v0[9])
  {

    v3 = sub_26F180724();
  }

  else
  {
    v3 = 0;
  }

  sub_26F150F60(v3, 0x697463656C6C6F63, 0xED000044495F6E6FLL);
  if (v0[11])
  {

    v4 = sub_26F180724();
  }

  else
  {
    v4 = 0;
  }

  sub_26F150F60(v4, 0x495F6E6F7373656CLL, 0xE900000000000044);
  [objc_opt_self() isSeniorUser];
  v5 = sub_26F1808B4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v5, 0x67616C665F353675, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  return v8;
}

uint64_t sub_26F150F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_26F151544(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_26F14ECAC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_26F1516BC();
        v14 = v16;
      }

      result = sub_26F151394(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

void *TryItAnalyticsEvent.deinit()
{

  return v0;
}

uint64_t TryItAnalyticsEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26F1510F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4950, &qword_26F1825B8);
  v35 = v4;
  result = sub_26F180AE4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_26F180B94();
      sub_26F1807B4();
      result = sub_26F180BB4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26F151394(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26F180A54() + 1) & ~v5;
    do
    {
      sub_26F180B94();

      sub_26F1807B4();
      v9 = sub_26F180BB4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26F151544(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26F14ECAC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26F1510F0(v16, a4 & 1);
      v11 = sub_26F14ECAC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_26F180B54();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_26F1516BC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_26F1516BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4950, &qword_26F1825B8);
  v2 = *v0;
  v3 = sub_26F180AD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_26F151828(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4958, &unk_26F1825C0);
    v3 = sub_26F180AF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_26F13A854(v4, &v11, &qword_2806D43C8, &unk_26F181F00);
      v5 = v11;
      result = sub_26F14EC18(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_26F151CBC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26F151950(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4920, &qword_26F182498);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4948, &qword_26F1825B0);
    v7 = sub_26F180AF4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26F13A854(v9, v5, &qword_2806D4920, &qword_26F182498);
      v11 = *v5;
      v12 = v5[1];
      result = sub_26F14ECAC(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_26F180714();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26F151B3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4950, &qword_26F1825B8);
    v3 = sub_26F180AF4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_26F14ECAC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_26F151CBC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26F151CCC()
{
  v1 = sub_26F17FC84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_26F180944();
    v7 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_26F151E0C@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v2 = sub_26F17F874();
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x28223BE20](v2);
  v62 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_26F17F834();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v52 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PinchZoomView(0);
  v54 = *(v5 - 8);
  v53 = *(v54 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26F17F854();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4980, &qword_26F182668);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4988, &qword_26F182670);
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4990, &qword_26F182678);
  v50 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4998, &qword_26F182680);
  v59 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v66 = &v47 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49A0, &qword_26F182688);
  v18 = *(v17 - 8);
  v60 = v17;
  v61 = v18;
  MEMORY[0x28223BE20](v17);
  v55 = &v47 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4960, &qword_26F182600);
  sub_26F180434();
  v20 = sub_26F17F804();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  sub_26F17F844();
  v51 = v15;
  sub_26F17F7F4();
  v21 = v1;
  v22 = v7;
  sub_26F152E48(v1, v7);
  v23 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v54 = *(v54 + 80);
  v24 = swift_allocObject();
  sub_26F152EB0(v7, v24 + v23);
  v25 = &v15[*(v13 + 36)];
  *v25 = sub_26F152F14;
  v25[1] = v24;
  v25[2] = 0;
  v25[3] = 0;
  v26 = v21;
  v27 = v52;
  sub_26F180414();
  sub_26F17F814();
  (*(v56 + 8))(v27, v58);
  v28 = v71;
  v29 = v72;
  if (v73)
  {
    v28 = 0;
    v29 = 0;
  }

  v67 = v28;
  v68 = v29;
  LOBYTE(v69) = v73 & 1;
  v49 = v21;
  sub_26F152E48(v21, v7);
  v30 = swift_allocObject();
  sub_26F152EB0(v7, v30 + v23);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49A8, &qword_26F182690);
  v32 = sub_26F152F44();
  v33 = sub_26F153034();
  v34 = v50;
  v35 = v51;
  sub_26F180324();

  sub_26F13AB10(v35, &qword_2806D4990, &qword_26F182678);
  v36 = v62;
  sub_26F17F864();
  v48 = v22;
  sub_26F152E48(v26, v22);
  v37 = swift_allocObject();
  sub_26F152EB0(v22, v37 + v23);
  v67 = v34;
  v68 = v31;
  v69 = v32;
  v70 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v55;
  v40 = v36;
  v41 = v57;
  v42 = v66;
  sub_26F1801C4();

  (*(v63 + 8))(v40, v64);
  (*(v59 + 8))(v42, v41);
  v43 = v48;
  sub_26F152E48(v49, v48);
  v44 = swift_allocObject();
  sub_26F152EB0(v43, v44 + v23);
  v67 = v41;
  v68 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v45 = v60;
  sub_26F180254();

  return (*(v61 + 8))(v39, v45);
}

uint64_t sub_26F152600()
{
  v0 = sub_26F151CCC();
  if (*(v0 + 52) == 1)
  {
    *(v0 + 52) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F1532A8(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
    sub_26F17F7B4();
  }

  *(sub_26F151CCC() + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93) = 3;
}

double sub_26F152754(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180414();
  if ((v2 & 1) == 0)
  {
    sub_26F180424();
  }

  return result;
}

void *sub_26F1527DC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  result = sub_26F180414();
  if (v5 == 1)
  {
    sub_26F151CCC();
    sub_26F15B0EC(1, 1, 0);

    result = sub_26F151CCC();
    v2 = *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64);
    v3 = __OFADD__(v2, 1);
    v4 = v2 + 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64) = v4;
    }
  }

  return result;
}

uint64_t sub_26F152894()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_26F180714();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F151CCC();
  sub_26F180704();
  (*(v4 + 56))(v2, 1, 1, v3);
  sub_26F15BCB8(v6, 1, v2);

  sub_26F13AB10(v2, &qword_2806D4360, &qword_26F181DC0);
  (*(v4 + 8))(v6, v3);
  result = sub_26F151CCC();
  v8 = *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64) = v10;
  }

  return result;
}

uint64_t sub_26F152AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4960, &qword_26F182600);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_26F152B80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4960, &qword_26F182600);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PinchZoomView(uint64_t a1)
{
  result = qword_2806D4968;
  if (!qword_2806D4968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F152C7C(uint64_t a1)
{
  sub_26F152DC8(319, &qword_2806D4208, type metadata accessor for TrainingManager, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_26F152D78();
    if (v2 <= 0x3F)
    {
      sub_26F152DC8(319, &qword_2806D4978, MEMORY[0x277CE42C8], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26F152D78()
{
  if (!qword_2806D4210)
  {
    v0 = sub_26F180444();
    if (!v1)
    {
      atomic_store(v0, &qword_2806D4210);
    }
  }
}

void sub_26F152DC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_26F152E48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PinchZoomView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F152EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PinchZoomView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26F152F44()
{
  result = qword_2806D49B0;
  if (!qword_2806D49B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4990, &qword_26F182678);
    sub_26F152FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D49B0);
  }

  return result;
}

unint64_t sub_26F152FD0()
{
  result = qword_2806D49B8;
  if (!qword_2806D49B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D49C0, &qword_26F182698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D49B8);
  }

  return result;
}

unint64_t sub_26F153034()
{
  result = qword_2806D49C8;
  if (!qword_2806D49C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D49A8, &qword_26F182690);
    sub_26F1532A8(&qword_2806D49D0, type metadata accessor for MKCoordinateSpan, &protocol conformance descriptor for MKCoordinateSpan);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D49C8);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for PinchZoomView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[8];
  v6 = sub_26F17F834();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4960, &qword_26F182600);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26F15322C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PinchZoomView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_26F1532A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F1532F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D49A0, &qword_26F182688);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4998, &qword_26F182680);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4990, &qword_26F182678);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D49A8, &qword_26F182690);
  sub_26F152F44();
  sub_26F153034();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26F15340C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_26F17FC84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_26F13A854(v2, &v13 - v9, &unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26F142810(v10, a1, &qword_2806D4200, &qword_26F181B88);
  }

  sub_26F180944();
  v12 = sub_26F17FFE4();
  sub_26F17F884();

  sub_26F17FC74();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26F1535EC@<X0>(void *a1@<X8>)
{
  v3 = sub_26F17FC84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49D8, &qword_26F183520);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TipsTryItView(0);
  sub_26F13A854(v1 + *(v10 + 20), v9, &qword_2806D49D8, &qword_26F183520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26F142810(v9, a1, &qword_2806D4A68, "Vo");
  }

  sub_26F180944();
  v12 = sub_26F17FFE4();
  sub_26F17F884();

  sub_26F17FC74();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26F1537D4@<X0>(void *a1@<X8>)
{
  v3 = sub_26F17FC84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49E0, &qword_26F182780);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TipsTryItView(0);
  sub_26F13A854(v1 + *(v10 + 24), v9, &qword_2806D49E0, &qword_26F182780);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26F17FD64();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26F180944();
    v13 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t TipsTryItView.init(lesson:tipId:collectionId:correlationId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v41 = a6;
  v42 = a7;
  v39 = a4;
  v40 = a5;
  v12 = sub_26F17F6D4();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26F180104();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for TipsTryItView(0);
  v20 = v19[5];
  *(a8 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49D8, &qword_26F183520);
  swift_storeEnumTagMultiPayload();
  v21 = v19[6];
  *(a8 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49E0, &qword_26F182780);
  swift_storeEnumTagMultiPayload();
  v44 = 0x3FF8000000000000;
  (*(v16 + 104))(v18, *MEMORY[0x277CE0A68], v15);
  sub_26F1580A0();
  sub_26F17F934();
  v22 = a8 + v19[8];
  LOBYTE(v43) = 0;
  sub_26F180404();
  v23 = v45;
  *v22 = v44;
  *(v22 + 1) = v23;
  v24 = (a8 + v19[9]);
  v43 = 0;
  sub_26F180404();
  v25 = v45;
  *v24 = v44;
  v24[1] = v25;
  v26 = (a8 + v19[10]);
  v43 = 0;
  sub_26F180404();
  v27 = v45;
  *v26 = v44;
  v26[1] = v27;
  v28 = v19[11];
  type metadata accessor for TrainingManager(0);
  v29 = swift_allocObject();
  v30 = sub_26F15DEDC(v29);
  *(a8 + v28) = v30;
  if (*(v30 + 32) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v39 - 2) = v30;
    *(&v39 - 1) = a1;
    v44 = v30;
    sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);

    sub_26F17F7B4();
  }

  swift_getKeyPath();
  v44 = v30;
  sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F17F7C4();

  TryItLesson.initialInstruction.getter(*(v30 + 32), v14);
  v32 = sub_26F180774();
  sub_26F15A234(v32, v33);
  swift_getKeyPath();
  v44 = v30;
  sub_26F17F7C4();

  sub_26F15A524(v34);
  v35 = (v30 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys);
  *v35 = a2;
  v35[1] = a3;
  v36 = v40;
  v35[2] = v39;
  v35[3] = v36;
  v37 = v42;
  v35[4] = v41;
  v35[5] = v37;

  sub_26F15D5A4();
}

uint64_t TipsTryItView.init(lesson:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26F180104();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for TipsTryItView(0);
  v9 = v8[5];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49D8, &qword_26F183520);
  swift_storeEnumTagMultiPayload();
  v10 = v8[6];
  *(a2 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49E0, &qword_26F182780);
  swift_storeEnumTagMultiPayload();
  v24 = 0x3FF8000000000000;
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A68], v4);
  sub_26F1580A0();
  sub_26F17F934();
  v11 = a2 + v8[8];
  LOBYTE(v23) = 0;
  sub_26F180404();
  v12 = v25;
  *v11 = v24;
  *(v11 + 1) = v12;
  v13 = (a2 + v8[9]);
  v23 = 0;
  sub_26F180404();
  v14 = v25;
  *v13 = v24;
  v13[1] = v14;
  v15 = (a2 + v8[10]);
  v23 = 0;
  sub_26F180404();
  v16 = v25;
  *v15 = v24;
  v15[1] = v16;
  v17 = v8[11];
  type metadata accessor for TrainingManager(0);
  v18 = swift_allocObject();
  result = sub_26F15DEDC(v18);
  *(a2 + v17) = result;
  if (*(result + 32) != a1)
  {
    v20 = result;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v22 - 2) = v20;
    *(&v22 - 1) = a1;
    v24 = v20;
    sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);

    sub_26F17F7B4();
  }

  return result;
}

uint64_t TipsTryItView.init(lessons:tipId:collectionId:correlationId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v44 = a2;
  v45 = a3;
  v42 = a1;
  v13 = sub_26F17F6D4();
  MEMORY[0x28223BE20](v13 - 8);
  v43 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26F180104();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for TipsTryItView(0);
  v20 = v19[5];
  *(a8 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49D8, &qword_26F183520);
  swift_storeEnumTagMultiPayload();
  v21 = v19[6];
  *(a8 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49E0, &qword_26F182780);
  swift_storeEnumTagMultiPayload();
  v47 = 0x3FF8000000000000;
  (*(v16 + 104))(v18, *MEMORY[0x277CE0A68], v15);
  sub_26F1580A0();
  sub_26F17F934();
  v22 = a8 + v19[8];
  LOBYTE(v46) = 0;
  sub_26F180404();
  v23 = v48;
  *v22 = v47;
  *(v22 + 1) = v23;
  v24 = (a8 + v19[9]);
  v46 = 0;
  sub_26F180404();
  v25 = v48;
  *v24 = v47;
  v24[1] = v25;
  v26 = (a8 + v19[10]);
  v46 = 0;
  sub_26F180404();
  v27 = v48;
  *v26 = v47;
  v26[1] = v27;
  v28 = v19[11];
  type metadata accessor for TrainingManager(0);
  v29 = swift_allocObject();
  v30 = sub_26F15DEDC(v29);
  v31 = v30;
  *(a8 + v28) = v30;
  v32 = v42;
  if (*(v42 + 16))
  {
    v33 = *(v42 + 32);
  }

  else
  {
    v33 = 0;
  }

  if (*(v30 + 32) == v33)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v41 = a4;
    MEMORY[0x28223BE20](KeyPath);
    *(&v40 - 2) = v31;
    *(&v40 - 1) = v33;
    v47 = v31;
    sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);

    sub_26F17F7B4();

    a4 = v41;
  }

  swift_getKeyPath();
  v47 = v31;
  sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F17F7C4();

  TryItLesson.initialInstruction.getter(*(v31 + 32), v43);
  v35 = sub_26F180774();
  sub_26F15A234(v35, v36);
  sub_26F15A524(v32);
  v37 = (v31 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys);
  v38 = v45;
  *v37 = v44;
  v37[1] = v38;
  v37[2] = a4;
  v37[3] = a5;
  v37[4] = a6;
  v37[5] = a7;

  sub_26F15D5A4();
}