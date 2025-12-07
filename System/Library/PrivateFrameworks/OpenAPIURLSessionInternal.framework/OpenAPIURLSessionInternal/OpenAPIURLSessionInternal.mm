uint64_t sub_25DDB7448(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_25DDC6C24(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_25DDB7474(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25DDB7484()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25DDB74BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25DDB74CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for BufferedStream._StateMachine._State(0, *(a3 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_25DDB753C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for BufferedStream._StateMachine._State(0, *(a4 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

uint64_t get_enum_tag_for_layout_string_xSiRi_zRi0_zlyxIseghnd_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25DDB75C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_25DDDD088();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
    sub_25DDDCF38();
    v8 = sub_25DDDD088();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25DDB76B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    sub_25DDDD088();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
    sub_25DDDCF38();
    v7 = sub_25DDDD088();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25DDB779C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25DDB783C()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25DDB7898()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25DDB78D0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25DDB7920()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25DDB7970()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25DDB79B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25DDB79E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25DDB7AC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA98, &qword_25DDDECE8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_25DDDC9F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_25DDB7C94()
{
  sub_25DDB7E38(type metadata accessor for BufferedStream._StateMachine.SequenceDeinitializedAction, sub_25DDBD518, sub_25DDC93B8);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25DDB7D0C(uint64_t a1)
{
  v1 = sub_25DDC6AE4(a1);

  return v1;
}

uint64_t sub_25DDB7D40(uint64_t a1)
{
  v1 = sub_25DDC6AB0(a1);

  return v1;
}

uint64_t sub_25DDB7E38(uint64_t (*a1)(uint64_t, uint64_t), void (*a2)(uint64_t), uint64_t (*a3)(void (*)(void), void (*)(uint64_t), uint64_t, uint64_t))
{

  sub_25DDB7EE4(a1, a2, a3, v7);

  return v3;
}

pthread_mutex_t *sub_25DDB7EE4(uint64_t (*a1)(uint64_t, uint64_t), void (*a2)(uint64_t), uint64_t (*a3)(void (*)(void), void (*)(uint64_t), uint64_t, uint64_t), uint64_t a4)
{
  v23 = *(*v4 + 80);
  type metadata accessor for BufferedStream._StateMachine(0, v23, a3, a4);
  a1(255, v23);
  sub_25DDDD088();
  result = sub_25DDC9AC8(a2);
  v9 = v27;
  if (v27 != 255)
  {
    v10 = v25;
    if (v27)
    {
      v20 = v26;
      v21 = a3;
      v22 = v24;
      v11 = v24[2];
      if (v11)
      {
        sub_25DDBD574();
        v12 = (v24 + 5);
        do
        {
          v13 = *(v12 - 1);
          v14 = swift_allocError();
          v24 = v14;
          LOBYTE(v25) = 1;

          v13(&v24);

          v12 += 16;
          --v11;
        }

        while (v11);
      }

      if (v10)
      {

        v10(v15);
        sub_25DDB7474(v10, v20);
        v16 = v22;
        v17 = v10;
      }

      else
      {
        v16 = v22;
        v17 = 0;
      }

      return v21(v16, v17, v20, v9);
    }

    else
    {
      if (v24)
      {

        (v24)(v18);
        a3(v24, v25, v26, v27);
        v19 = v24;
      }

      else
      {
        v19 = 0;
      }

      return a3(v19, v25, v26, v27);
    }
  }

  return result;
}

uint64_t sub_25DDB80D8()
{
  sub_25DDB7E38(type metadata accessor for BufferedStream._StateMachine.IteratorDeinitializedAction, sub_25DDC6B7C, sub_25DDC93B8);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25DDB8168(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25DDB8188, 0, 0);
}

uint64_t sub_25DDB8188()
{
  v1 = **(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 40) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_25DDB8240;
  v3 = *(v0 + 16);

  return sub_25DDB842C(v3);
}

uint64_t sub_25DDB8240()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_25DDB83C0;
  }

  else
  {

    v2 = sub_25DDB835C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DDB835C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DDB83C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DDB842C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*v1 + 80);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  Action = type metadata accessor for BufferedStream._StateMachine.NextAction(0, v3, v4, v5);
  v2[7] = Action;
  v2[8] = *(Action - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DDB8568, 0, 0);
}

uint64_t sub_25DDB8568()
{
  v49 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[4];
  *(swift_task_alloc() + 16) = v5;
  type metadata accessor for BufferedStream._StateMachine(0, v5, v6, v7);
  sub_25DDC9AC8(sub_25DDC6C90);

  (*(v4 + 16))(v1, v2, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v25 = v0[9];
      v27 = v0[5];
      v26 = v0[6];
      v28 = v0[4];
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE588, &qword_25DDDDB18);
      v29 = *(v25 + *(swift_getTupleTypeMetadata2() + 48));
      v46 = *(v27 + 32);
      v46(v26, v25, v28);
      v30 = *(v29 + 16);
      if (v30)
      {
        v31 = v29 + 40;
        do
        {
          v32 = *(v31 - 8);
          v47 = 0;
          v48 = 0;

          v32(&v47);

          v31 += 16;
          --v30;
        }

        while (v30);
      }

      v33 = v0[10];
      v34 = v0[7];
      v35 = v0[8];
      v37 = v0[5];
      v36 = v0[6];
      v38 = v0[4];
      v39 = v0[2];

      (*(v35 + 8))(v33, v34);
      v46(v39, v36, v38);
      (*(v37 + 56))(v39, 0, 1, v38);
    }

    else
    {
      v12 = v0[9];
      v13 = v0[4];
      v14 = v0[5];
      v15 = v0[2];
      (*(v0[8] + 8))(v0[10], v0[7]);
      (*(v14 + 32))(v15, v12, v13);
      (*(v14 + 56))(v15, 0, 1, v13);
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v16 = v0[9];
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    if (v18)
    {

      v18(v20);
      sub_25DDB7474(v18, v19);
    }

    if (v17)
    {
      swift_willThrow();
      sub_25DDB7474(v18, v19);
      (*(v0[8] + 8))(v0[10], v0[7]);

      v21 = v0[1];
LABEL_20:

      return v21();
    }

    v40 = v0[10];
    v41 = v0[7];
    v42 = v0[8];
    v43 = v0[4];
    v44 = v0[5];
    v45 = v0[2];
    sub_25DDB7474(v18, v19);
    (*(v42 + 8))(v40, v41);
    (*(v44 + 56))(v45, 1, 1, v43);
LABEL_19:

    v21 = v0[1];
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[2];
    (*(v0[8] + 8))(v0[10], v0[7]);
    (*(v10 + 56))(v11, 1, 1, v9);
    goto LABEL_19;
  }

  v22 = swift_task_alloc();
  v0[11] = v22;
  *v22 = v0;
  v22[1] = sub_25DDB89AC;
  v23 = v0[2];

  return sub_25DDC19C0(v23);
}

uint64_t sub_25DDB89AC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_25DDB8B50;
  }

  else
  {
    v2 = sub_25DDB8AC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DDB8AC0()
{
  (*(v0[8] + 8))(v0[10], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25DDB8B50()
{
  (*(v0[8] + 8))(v0[10], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25DDB8BEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25DDB8C84;

  return sub_25DDB8168(a1);
}

uint64_t sub_25DDB8C84()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25DDB8D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_25DDB8E4C;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_25DDB8E4C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_25DDB8F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BufferedStream.Iterator._Backing(0, a2, a3, a4);

  v5 = sub_25DDC6AE4(v4);

  return v5;
}

uint64_t sub_25DDB8FA8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = sub_25DDB8F5C(*v4, *(a2 + 16), a3, a4);

  *a1 = v6;
  return result;
}

uint64_t sub_25DDB8FF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DDC6D3C(a1, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t sub_25DDB9080@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  if (a2 < result)
  {
    __break(1u);
  }

  else
  {
    v14 = v5;
    v15 = v6;
    v11[0] = result;
    v11[1] = a2;
    memset(&v11[2], 0, 24);
    v8 = type metadata accessor for BufferedStream._InternalBackPressureStrategy(0, a3, a3, a5);
    result = (*(*(v8 - 8) + 32))(v12, v11, v8);
    v9 = v13;
    v10 = v12[1];
    *a4 = v12[0];
    *(a4 + 16) = v10;
    *(a4 + 32) = v9;
  }

  return result;
}

uint64_t sub_25DDB9110@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a2 < result)
  {
    __break(1u);
  }

  else
  {
    *a5 = result;
    a5[1] = a2;
    a5[2] = 0;
    a5[3] = a3;
    a5[4] = a4;
  }

  return result;
}

double sub_25DDB912C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for BufferedStream._InternalBackPressureStrategy(0, a2, a4, a5);
  (*(*(v7 - 8) + 32))(v11, a1, v7);
  v8 = v12;
  result = *v11;
  v10 = v11[1];
  *a3 = v11[0];
  *(a3 + 16) = v10;
  *(a3 + 32) = v8;
  return result;
}

uint64_t sub_25DDB91A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a2 < result)
  {
    __break(1u);
  }

  else
  {
    v15 = v6;
    v16 = v7;
    v12[0] = result;
    v12[1] = a2;
    v12[2] = 0;
    v12[3] = a3;
    v12[4] = a4;
    v9 = type metadata accessor for BufferedStream._InternalBackPressureStrategy(0, a5, a3, a4);
    (*(*(v9 - 8) + 32))(v13, v12, v9);
    v10 = v14;
    v11 = v13[1];
    *a6 = v13[0];
    *(a6 + 16) = v11;
    *(a6 + 32) = v10;
  }

  return result;
}

uint64_t sub_25DDB9240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for BufferedStream._InternalBackPressureStrategy(0, *(a1 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4, v6);
}

uint64_t sub_25DDB92AC(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_25DDB92EC()
{

  sub_25DDB9330();

  return v0;
}

uint64_t sub_25DDB9330()
{
  v1 = *(*v0 + 80);
  v2 = sub_25DDDD088();
  MEMORY[0x28223BE20](v2);
  v53 = &v49 - v3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v4 = sub_25DDDCF38();
  v5 = sub_25DDDD088();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v49 - v9;
  v12 = type metadata accessor for BufferedStream._StateMachine.SourceDeinitializedAction(255, v1, v10, v11);
  v13 = sub_25DDDD088();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - v18;
  v57 = v1;
  type metadata accessor for BufferedStream._StateMachine(0, v1, v20, v21);
  sub_25DDC9AC8(sub_25DDC6E24);
  (*(v14 + 16))(v17, v19, v13);
  if ((*(*(v12 - 8) + 48))(v17, 1, v12) == 1)
  {
    return (*(v14 + 8))(v19, v13);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v42 = *v17;
    if (*v17)
    {
      v43 = *(v17 + 1);

      v42(v44);
      sub_25DDB7474(v42, v43);
      sub_25DDB7474(v42, v43);
    }

    return (*(v14 + 8))(v19, v13);
  }

  v52 = v13;
  if (EnumCaseMultiPayload == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE588, &qword_25DDDDB18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
    v24 = v56;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v26 = *&v17[*(TupleTypeMetadata3 + 48)];
    v27 = &v17[*(TupleTypeMetadata3 + 64)];
    v29 = *v27;
    v28 = *(v27 + 1);
    v50 = v29;
    v51 = v26;
    v49 = v28;
    v31 = v54;
    v30 = v55;
    (*(v55 + 32))(v54, v17, v24);
    (*(v30 + 16))(v8, v31, v24);
    v32 = *(v4 - 8);
    v33 = (*(v32 + 48))(v8, 1, v4);
    v34 = v30;
    if (v33 != 1)
    {
      (*(*(v1 - 8) + 56))(v53, 1, 1, v1);
      sub_25DDDCF28();
      v34 = v32;
      v24 = v4;
    }

    (*(v34 + 8))(v8, v24);
    v35 = *(v51 + 16);
    if (v35)
    {
      sub_25DDBD574();
      v36 = v51 + 40;
      do
      {
        v37 = *(v36 - 8);
        v38 = swift_allocError();
        v58 = v38;
        v59 = 1;

        v37(&v58);

        v36 += 16;
        --v35;
      }

      while (v35);
    }

    v39 = v50;
    if (v50)
    {
      v40 = v49;

      v39(v41);
      sub_25DDB7474(v39, v40);
      sub_25DDB7474(v39, v40);
    }

    (*(v55 + 8))(v54, v56);
  }

  else
  {
    v56 = *v17;
    v45 = *(v56 + 16);
    if (v45)
    {
      sub_25DDBD574();
      v46 = v56 + 40;
      do
      {
        v47 = *(v46 - 8);
        v48 = swift_allocError();
        v58 = v48;
        v59 = 1;

        v47(&v58);

        v46 += 16;
        --v45;
      }

      while (v45);
    }
  }

  return (*(v14 + 8))(v19, v52);
}

uint64_t sub_25DDB9934()
{
  sub_25DDB92EC();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25DDB9968(uint64_t a1, uint64_t a2)
{

  sub_25DDC6E70(a1, a2, v4, v5);
  sub_25DDB7474(a1, a2);
}

uint64_t sub_25DDB99D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25DDC6E70(a1, a2, a3, a4);

  return sub_25DDB7474(a1, a2);
}

uint64_t (*sub_25DDB9A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  type metadata accessor for BufferedStream._StateMachine(0, *(*v4 + 80), a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE598, &qword_25DDDDB30);
  sub_25DDC9AC8(sub_25DDC6EFC);
  if (!v7)
  {
    return 0;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v7;
  *(v5 + 24) = v8;
  return sub_25DDC6FCC;
}

uint64_t (*sub_25DDB9B1C(uint64_t (**a1)(), uint64_t (*a2)(), uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  a1[2] = a2;
  a1[3] = v4;
  *a1 = sub_25DDB9A3C(a1, a2, a3, a4);
  a1[1] = v6;
  return sub_25DDB9B6C;
}

uint64_t sub_25DDB9B6C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_25DDB9968(*a1, v3);
  }

  sub_25DDB74BC(*a1, v3);
  sub_25DDB9968(v2, v3);

  return sub_25DDB7474(v2, v3);
}

uint64_t sub_25DDB9BE8(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_25DDB9C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_25DDB9C64(a1, a4, a5);
  if (v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_25DDB9C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 80);
  v8 = sub_25DDDD088();
  v9 = MEMORY[0x28223BE20](v8);
  v50 = &v46 - v10;
  v51 = *(v7 - 8);
  MEMORY[0x28223BE20](v9);
  v49 = &v46 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v52 = sub_25DDDCF38();
  v48 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v53 = &v46 - v12;
  v15 = type metadata accessor for BufferedStream._StateMachine.WriteAction(0, v7, v13, v14);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v46 - v20;
  v54 = v7;
  v55 = a2;
  v56 = a3;
  v57 = a1;
  type metadata accessor for BufferedStream._StateMachine(0, v7, v22, v23);
  v24 = v58;
  sub_25DDC9AC8(sub_25DDC7024);
  v58 = v24;
  (*(v16 + 16))(v19, v21, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v38 = v52;
      v39 = *(swift_getTupleTypeMetadata2() + 48);
      v40 = v48;
      (*(v48 + 32))(v53, v19, v38);
      v41 = v51;
      v42 = v49;
      (*(v51 + 32))(v49, &v19[v39], v7);
      v43 = v50;
      (*(v41 + 16))(v50, v42, v7);
      (*(v41 + 56))(v43, 0, 1, v7);
      v45 = v52;
      v44 = v53;
      sub_25DDDCF28();
      (*(v41 + 8))(v42, v7);
      (*(v40 + 8))(v44, v45);
      (*(v16 + 8))(v21, v15);
      return 0;
    }

    else
    {
      (*(v16 + 8))(v21, v15);
      return *v19;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    type metadata accessor for BufferedStream.Source.WriteResult.CallbackToken(255, v7, v26, v27);
    v29 = v52;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v31 = *(TupleTypeMetadata3 + 48);
    v47 = *&v19[*(TupleTypeMetadata3 + 64)];
    v32 = v48;
    (*(v48 + 32))(v53, v19, v29);
    v33 = v51;
    v34 = &v19[v31];
    v35 = v49;
    (*(v51 + 32))(v49, v34, v7);
    v36 = v50;
    (*(v33 + 16))(v50, v35, v7);
    (*(v33 + 56))(v36, 0, 1, v7);
    v37 = v53;
    sub_25DDDCF28();
    (*(v33 + 8))(v35, v7);
    (*(v32 + 8))(v37, v29);
    (*(v16 + 8))(v21, v15);
    return v47;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    (*(v16 + 8))(v21, v15);
    return 0;
  }

  else
  {
    sub_25DDBD574();
    v58 = swift_allocError();
    swift_willThrow();
    return (*(v16 + 8))(v21, v15);
  }
}

uint64_t sub_25DDBA234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25DDDD108();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - v10;
  (*(v5 + 16))(v7, a1, a3);
  sub_25DDDD118();
  WitnessTable = swift_getWitnessTable();
  v13 = v17[1];
  v14 = sub_25DDB9C64(v11, v8, WitnessTable);
  if (v13)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v16 = v14;
  (*(v9 + 8))(v11, v8);
  return v16;
}

void sub_25DDBA43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 80);
  type metadata accessor for BufferedStream._StateMachine(0, v9, a3, a4);
  type metadata accessor for BufferedStream._StateMachine.EnqueueProducerAction(255, v9, v5, v6);
  sub_25DDDD088();
  sub_25DDC9AC8(sub_25DDC70A4);
  if ((~v12 & 0xF000000000000007) != 0)
  {
    if (v12 < 0)
    {
      v7 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
      v8 = (v12 & 0x7FFFFFFFFFFFFFFFLL);

      v10(v12 & 0x7FFFFFFFFFFFFFFFLL, 1);
      sub_25DDC7128(v10, v11, v12);
    }

    else
    {
      sub_25DDC718C(v10, v11, v12);
      v10(0, 0);
      sub_25DDC7128(v10, v11, v12);
      sub_25DDC7128(v10, v11, v12);
    }
  }
}

pthread_mutex_t *sub_25DDBA5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 80);
  type metadata accessor for BufferedStream._StateMachine(0, v9, a3, a4);
  type metadata accessor for BufferedStream._StateMachine.CancelProducerAction(255, v9, v5, v6);
  sub_25DDDD088();
  result = sub_25DDC9AC8(sub_25DDC71DC);
  if (v10)
  {
    sub_25DDDCF48();
    sub_25DDC7248();
    v8 = swift_allocError();

    sub_25DDDCDD8();
    v10(v8, 1);
    sub_25DDB7474(v10, v11);

    return sub_25DDB7474(v10, v11);
  }

  return result;
}

void sub_25DDBA6C8(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_25DDB9C64(a1, a6, a7);
  if (v11)
  {
    a2(0, 0);
  }

  else
  {
    sub_25DDBA43C(v9, a2, a3, v10);
  }
}

uint64_t sub_25DDBA79C(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25DDDD108();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  (*(v10 + 16))(v12, a1, a5);
  sub_25DDDD118();
  WitnessTable = swift_getWitnessTable();
  sub_25DDBA6C8(v16, a2, a3, a4, v18, v13, WitnessTable);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_25DDBA950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25DDBA978, 0, 0);
}

uint64_t sub_25DDBA978()
{
  v1 = sub_25DDB9C64(v0[2], v0[5], v0[6]);
  if (v2)
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[5];
    v5 = v0[6];
    v8 = v0[3];
    v7 = v0[4];
    v9 = v1;
    v10 = swift_task_alloc();
    v0[7] = v10;
    v10[2] = v7;
    v10[3] = v6;
    v10[4] = v5;
    v10[5] = v8;
    v10[6] = v9;
    v11 = swift_task_alloc();
    v0[8] = v11;
    v11[2] = v7;
    v11[3] = v6;
    v11[4] = v5;
    v11[5] = v8;
    v11[6] = v9;
    v12 = swift_task_alloc();
    v0[9] = v12;
    *v12 = v0;
    v12[1] = sub_25DDBAB14;

    return MEMORY[0x282200830](v12, &unk_25DDDDB48);
  }
}

uint64_t sub_25DDBAB14()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_25DDBAC50;
  }

  else
  {

    v2 = sub_25DDBAC38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DDBAC50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DDBACBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_25DDBACE4, 0, 0);
}

uint64_t sub_25DDBACE4()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_25DDBADF8;
  v6 = *(v0 + 16);
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000012, 0x800000025DDDF9B0, sub_25DDC91B4, v4, v7);
}

uint64_t sub_25DDBADF8()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DDBAF34, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25DDBAF34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DDBAF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  (*(v6 + 16))(&v13 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_25DDBA43C(a3, sub_25DDC91BC, v10, v11);
}

uint64_t sub_25DDBB0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = *(a3 - 8);
  v3[6] = swift_task_alloc();
  v4 = sub_25DDDD108();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DDBB20C, 0, 0);
}

uint64_t sub_25DDBB20C()
{
  (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
  sub_25DDDD118();
  v1 = swift_task_alloc();
  v0[10] = v1;
  WitnessTable = swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_25DDBB308;
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[3];
  v6 = v0[4];

  return sub_25DDBA950(v3, v5, v6, v4, WitnessTable);
}

uint64_t sub_25DDBB308()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(v5 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DDBB4C0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_25DDBB4C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DDBB530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *(a3 - 8);
  v5[8] = swift_task_alloc();
  v7 = sub_25DDDD108();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[12] = AssociatedTypeWitness;
  v5[13] = *(AssociatedTypeWitness - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  sub_25DDDD088();
  v5[16] = swift_task_alloc();
  v5[17] = *(a4 - 8);
  v5[18] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DDBB7E4, 0, 0);
}

uint64_t sub_25DDBB7E4()
{
  (*(v0[17] + 16))(v0[18], v0[2], v0[5]);
  sub_25DDDCFB8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[22] = AssociatedConformanceWitness;
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_25DDBB8F8;
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];

  return MEMORY[0x282200310](v4, 0, 0, v5, v3, AssociatedConformanceWitness);
}

uint64_t sub_25DDBB8F8()
{

  if (v0)
  {
    v1 = sub_25DDBBDF8;
  }

  else
  {
    v1 = sub_25DDBBA08;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_25DDBBA08()
{
  v1 = v0[16];
  v2 = v0[7];
  v3 = v0[4];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v2 + 32))(v0[8], v1, v3);
    sub_25DDDD118();
    v6 = swift_task_alloc();
    v0[24] = v6;
    WitnessTable = swift_getWitnessTable();
    *v6 = v0;
    v6[1] = sub_25DDBBBE4;
    v8 = v0[11];
    v9 = v0[9];
    v10 = v0[3];
    v11 = v0[4];

    return sub_25DDBA950(v8, v10, v11, v9, WitnessTable);
  }
}

uint64_t sub_25DDBBBE4()
{
  v2 = *v1;
  v3 = *v1;
  v2[25] = v0;

  v4 = v2[11];
  v5 = v2[9];
  v6 = (v2[10] + 8);
  if (v0)
  {
    (*v6)(v4, v5);

    return MEMORY[0x2822009F8](sub_25DDBBF84, 0, 0);
  }

  else
  {
    (*v6)(v4, v5);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v2[22] = AssociatedConformanceWitness;
    v8 = swift_task_alloc();
    v2[23] = v8;
    *v8 = v3;
    v8[1] = sub_25DDBB8F8;
    v9 = v2[19];
    v11 = v2[15];
    v10 = v2[16];

    return MEMORY[0x282200310](v10, 0, 0, v11, v9, AssociatedConformanceWitness);
  }
}

uint64_t sub_25DDBBDF8()
{
  v1 = *(v0[13] + 32);
  v1(v0[14], v0[15], v0[12]);
  swift_getAssociatedConformanceWitness();
  v2 = sub_25DDDD188();
  v3 = v0[14];
  if (v2)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
  }

  else
  {
    v4 = v0[12];
    swift_allocError();
    v1(v5, v3, v4);
  }

  (*(v0[20] + 8))(v0[21], v0[19]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_25DDBBF84()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25DDBC080(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_25DDDD088();
  MEMORY[0x28223BE20](v4);
  v40 = &v38 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v6 = sub_25DDDCF38();
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v11 = type metadata accessor for BufferedStream._StateMachine.FinishAction(255, v3, v9, v10);
  v12 = sub_25DDDD088();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v42 = v3;
  v43 = a1;
  type metadata accessor for BufferedStream._StateMachine(0, v3, v19, v20);
  sub_25DDC9AC8(sub_25DDC73A8);
  (*(v13 + 16))(v16, v18, v12);
  if ((*(*(v11 - 8) + 48))(v16, 1, v11) == 1)
  {
    return (*(v13 + 8))(v18, v12);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v31 = *v16;
    if (*v16)
    {
      v32 = *(v16 + 1);

      v31(v33);
      sub_25DDB7474(v31, v32);
      sub_25DDB7474(v31, v32);
    }

    return (*(v13 + 8))(v18, v12);
  }

  v39 = v12;
  if (EnumCaseMultiPayload != 1)
  {
    v41 = *v16;
    v34 = *(v41 + 2);
    if (v34)
    {
      sub_25DDBD574();
      v35 = v41 + 40;
      do
      {
        v36 = *(v35 - 8);
        v37 = swift_allocError();
        v44 = v37;
        v45 = 1;

        v36(&v44);

        v35 += 16;
        --v34;
      }

      while (v34);
    }

    return (*(v13 + 8))(v18, v39);
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE5A8, &qword_25DDDDB60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v24 = *&v16[*(TupleTypeMetadata3 + 48)];
  v25 = &v16[*(TupleTypeMetadata3 + 64)];
  v26 = *v25;
  v38 = *(v25 + 1);
  v27 = v41;
  (*(v41 + 4))(v8, v16, v6);
  if (!v24)
  {
    (*(*(v3 - 8) + 56))(v40, 1, 1, v3);
    sub_25DDDCF28();
    if (v26)
    {
      goto LABEL_7;
    }

LABEL_15:

    goto LABEL_16;
  }

  v44 = v24;
  v28 = v24;
  sub_25DDDCF18();
  if (!v26)
  {
    goto LABEL_15;
  }

LABEL_7:
  v29 = v38;

  v26(v30);
  sub_25DDB7474(v26, v29);

  sub_25DDB7474(v26, v29);
LABEL_16:
  v27[1](v8, v6);
  return (*(v13 + 8))(v18, v39);
}

uint64_t sub_25DDBC59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for BufferedStream._BackPressuredStorage(0, a5, a3, a4);
  v9 = type metadata accessor for BufferedStream._InternalBackPressureStrategy(0, a5, v7, v8);
  v10 = *(v9 - 8);
  (*(v10 + 32))(v18, a4, v9);
  (*(v10 + 16))(&v17, v18, v9);
  v11 = swift_allocObject();
  sub_25DDBD35C(v18, v12, v13, v14);
  sub_25DDBC718(v11, type metadata accessor for BufferedStream.Source._Backing);
  v15 = sub_25DDBC718(v11, type metadata accessor for BufferedStream._Backing);

  return v15;
}

uint64_t sub_25DDBC6C0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_25DDBD35C(a1, v3, v4, v5);
  return v2;
}

uint64_t sub_25DDBC718(uint64_t a1, uint64_t (*a2)(void, void))
{
  a2(0, *(*a1 + 80));
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_25DDBC78C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3[3];
  if (!v4)
  {
LABEL_5:
    sub_25DDDCCE8();
    swift_getWitnessTable();
    sub_25DDDD218();
    swift_getWitnessTable();
    v6 = sub_25DDDD008();
    v9 = v3[2];
    v10 = __OFADD__(v9, v6);
    v8 = v9 + v6;
    if (v10)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v5 = v3[4];
  MEMORY[0x28223BE20](result);
  sub_25DDDCCE8();

  swift_getWitnessTable();
  sub_25DDDD218();
  swift_getWitnessTable();
  sub_25DDDCEF8();
  v6 = sub_25DDB7474(v4, v5);
  v7 = v3[2];
  v8 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  v3[2] = v8;
  if ((v8 & 0x8000000000000000) == 0)
  {
    return v8 < v3[1];
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return v6;
}

uint64_t sub_25DDBC970(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3[3];
  if (!v4)
  {
LABEL_5:
    sub_25DDDCCE8();
    swift_getWitnessTable();
    sub_25DDDD218();
    swift_getWitnessTable();
    v6 = sub_25DDDD008();
    v9 = v3[2];
    v10 = __OFSUB__(v9, v6);
    v8 = v9 - v6;
    if (v10)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v5 = v3[4];
  MEMORY[0x28223BE20](result);
  sub_25DDDCCE8();

  swift_getWitnessTable();
  sub_25DDDD218();
  swift_getWitnessTable();
  sub_25DDDCEF8();
  v6 = sub_25DDB7474(v4, v5);
  v7 = v3[2];
  v8 = v7 - v11;
  if (__OFSUB__(v7, v11))
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  v3[2] = v8;
  if ((v8 & 0x8000000000000000) == 0)
  {
    return v8 < *v3;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return v6;
}

uint64_t sub_25DDBCB54(uint64_t result)
{
  v2 = v1;
  v3 = v1[3];
  if (!v3)
  {
LABEL_5:
    v8 = v2 + 2;
    v11 = v2[2];
    v9 = __OFSUB__(v11, 1);
    v10 = v11 - 1;
    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v4 = result;
  v5 = v2[4];

  v6 = v3(v4);
  result = sub_25DDB7474(v3, v5);
  v8 = v2 + 2;
  v7 = v2[2];
  v9 = __OFSUB__(v7, v6);
  v10 = v7 - v6;
  if (v9)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  *v8 = v10;
  if ((v10 & 0x8000000000000000) == 0)
  {
    return v10 < *v2;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_25DDBCC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 4);
  v10 = type metadata accessor for BufferedStream._WatermarkBackPressureStrategy(0, *(a4 + 16), a3, a4);
  v11 = a5(a1, a2, a3, v10);
  *v5 = v13;
  v5[1] = v14;
  *(v5 + 4) = v15;
  return v11 & 1;
}

uint64_t sub_25DDBCCB8(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 4);
  v2 = sub_25DDBCB54(a1);
  *v1 = v4;
  v1[1] = v5;
  *(v1 + 4) = v6;
  return v2 & 1;
}

uint64_t sub_25DDBCD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  v8 = type metadata accessor for BufferedStream._StateMachine._State.Streaming(0, v7, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v14 = type metadata accessor for BufferedStream._StateMachine._State(0, v7, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - v16;
  (*(v15 + 16))(&v29 - v16, v4, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v26 = *v17;
      v27 = *(v17 + 1);
      v28 = *(v17 + 2);
      sub_25DDB7474(*(v17 + 3), *(v17 + 4));
      (*(v15 + 8))(v4, v14);
      *v4 = v26;
      *(v4 + 8) = v27;
      *(v4 + 16) = v28;
      *(v4 + 24) = a1;
      *(v4 + 32) = a2;
      return swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload == 3)
    {
      return sub_25DDB7474(a1, a2);
    }

    else
    {
      result = sub_25DDDD138();
      __break(1u);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v9 + 32))(v11, v17, v8);
    sub_25DDB7474(*(v11 + 6), *(v11 + 7));
    *(v11 + 6) = a1;
    *(v11 + 7) = a2;
    (*(v15 + 8))(v4, v14);
    (*(v9 + 16))(v4, v11, v8);
    swift_storeEnumTagMultiPayload();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v19 = *(v17 + 4);
    v20 = v17[40];
    v21 = *(v17 + 6);
    v22 = *(v17 + 7);
    v23 = *v17;
    v29 = *(v17 + 1);
    v30 = v23;
    sub_25DDB7474(v21, v22);
    (*(v15 + 8))(v4, v14);
    v24 = v29;
    *v4 = v30;
    *(v4 + 16) = v24;
    *(v4 + 32) = v19;
    *(v4 + 40) = v20;
    *(v4 + 41) = *v31;
    *(v4 + 44) = *&v31[3];
    *(v4 + 48) = a1;
    *(v4 + 56) = a2;
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_25DDBD03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(a1 + 16);
  v7 = type metadata accessor for BufferedStream._StateMachine._State.Streaming(0, v6, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v13 = type metadata accessor for BufferedStream._StateMachine._State(0, v6, v11, v12);
  MEMORY[0x28223BE20](v13);
  v15 = (&v22 - v14);
  (*(v16 + 16))(&v22 - v14, v5, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v8 + 32))(v10, v15, v7);
      v18 = *(v10 + 6);
      sub_25DDB74BC(v18, *(v10 + 7));
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      v18 = v15[6];
      sub_25DDB7474(v15[3], v15[4]);
    }

    return v18;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v19 = v15[2];
    v18 = v15[3];
    v20 = v15[4];
    sub_25DDB74BC(v18, v20);

    sub_25DDB7474(v18, v20);
    return v18;
  }

  v18 = 0;
  if (EnumCaseMultiPayload == 3)
  {
    return v18;
  }

  result = sub_25DDDD138();
  __break(1u);
  return result;
}

uint64_t (*sub_25DDBD29C(uint64_t (**a1)(), uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  a1[2] = v4;
  *a1 = sub_25DDB9A3C(a1, a2, a3, a4);
  a1[1] = v6;
  return sub_25DDBD2E4;
}

uint64_t sub_25DDBD2E4(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a1;
  if (a2)
  {
    sub_25DDB74BC(v6, v5);
    sub_25DDC6E70(v4, v5, v7, v8);
    sub_25DDB7474(v4, v5);
  }

  else
  {
    sub_25DDC6E70(v6, v5, a3, a4);
  }

  return sub_25DDB7474(v4, v5);
}

void *sub_25DDBD35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for BufferedStream._StateMachine(0, v6, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  sub_25DDBD45C(a1, v6, &v15 - v9, v11, v12);
  v13 = sub_25DDC6D3C(v10, v7);
  (*(v8 + 8))(v10, v7);
  v4[2] = v13;
  return v4;
}

uint64_t sub_25DDBD45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  *(a3 + *(type metadata accessor for BufferedStream._StateMachine(0, a2, a4, a5) + 28)) = 0;
  v10 = type metadata accessor for BufferedStream._InternalBackPressureStrategy(0, a2, v8, v9);
  (*(*(v10 - 8) + 32))(v16, a1, v10);
  v11 = v17;
  v12 = v16[1];
  *a3 = v16[0];
  *(a3 + 16) = v12;
  *(a3 + 32) = v11;
  *(a3 + 40) = 0;
  type metadata accessor for BufferedStream._StateMachine._State(0, a2, v13, v14);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_25DDBD574()
{
  result = qword_27FCCE580;
  if (!qword_27FCCE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCCE580);
  }

  return result;
}

uint64_t sub_25DDBD5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(a1 + 16);
  v7 = type metadata accessor for BufferedStream._StateMachine._State.Streaming(0, v6, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v13 = type metadata accessor for BufferedStream._StateMachine._State(0, v6, v11, v12);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  (*(v14 + 16))(&v36 - v15, v5, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v23 = *v16;
      v24 = *(v16 + 2);
      v21 = *(v16 + 3);
      v22 = *(v16 + 4);
      if (v23 == 1)
      {

        goto LABEL_8;
      }

      (*(v14 + 8))(v5, v13);
      *v5 = 0;
      swift_storeEnumTagMultiPayload();
      sub_25DDB74BC(v21, v22);

      v25 = v21;
      v26 = v22;
LABEL_15:
      sub_25DDB7474(v25, v26);
      return v21;
    }

    if (EnumCaseMultiPayload == 3)
    {
      return 0;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v18 = *(v16 + 3);
      v19 = *(v16 + 4);
      v20 = v16[40];
      v21 = *(v16 + 6);
      v22 = *(v16 + 7);
      if (v20 == 1)
      {
        sub_25DDB7474(v18, v19);
LABEL_8:
        sub_25DDB7474(v21, v22);
        return 0;
      }

      (*(v14 + 8))(v5, v13);
      *v5 = 0;
      swift_storeEnumTagMultiPayload();
      v25 = v18;
      v26 = v19;
      goto LABEL_15;
    }

    (*(v8 + 32))(v10, v16, v7);
    if (v10[40] == 1)
    {
      (*(v8 + 8))(v10, v7);
      return 0;
    }

    (*(v14 + 8))(v5, v13);
    *v5 = 0;
    swift_storeEnumTagMultiPayload();
    v27 = *&v10[*(v7 + 44)];
    v28 = v27[3];
    v21 = MEMORY[0x277D84F90];
    if (!v28)
    {
LABEL_27:
      sub_25DDB74BC(*(v10 + 6), *(v10 + 7));
      (*(v8 + 8))(v10, v7);
      return v21;
    }

    v36 = v8;
    v37 = v7;
    v39 = MEMORY[0x277D84F90];
    sub_25DDC695C(0, v28 & ~(v28 >> 63), 0);
    if ((v28 & 0x8000000000000000) == 0)
    {
      v29 = 0;
      v21 = v39;
      while (v29 < v27[3])
      {
        v30 = v27[4];
        if (v29 + v30 >= v27[2])
        {
          v31 = v27[2];
        }

        else
        {
          v31 = 0;
        }

        v32 = *&v27[3 * v29 + 6 + 3 * (v30 - v31)];
        v39 = v21;
        v34 = *(v21 + 16);
        v33 = *(v21 + 24);
        v38 = v32;

        if (v34 >= v33 >> 1)
        {
          sub_25DDC695C((v33 > 1), v34 + 1, 1);
          v21 = v39;
        }

        ++v29;
        *(v21 + 16) = v34 + 1;
        *(v21 + 16 * v34 + 32) = v38;
        if (v28 == v29)
        {
          v8 = v36;
          v7 = v37;
          goto LABEL_27;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  result = sub_25DDDD138();
  __break(1u);
  return result;
}

uint64_t sub_25DDBDA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for BufferedStream._StateMachine._State.Streaming(0, v5, a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v12 = type metadata accessor for BufferedStream._StateMachine._State(0, v5, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  (*(v13 + 16))(&v27 - v14, v4, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (*v15 != 1)
      {
        v24 = *(v15 + 3);
        v23 = *(v15 + 4);
        v28 = *(v15 + 8);
        (*(v13 + 8))(v4, v12);
        *v4 = 1;
        *(v4 + 8) = v28;
        *(v4 + 24) = v24;
        *(v4 + 32) = v23;
        return swift_storeEnumTagMultiPayload();
      }
    }

    else if (EnumCaseMultiPayload == 3 && *v15 != 1)
    {
      (*(v13 + 8))(v4, v12);
      *v4 = 1;
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v25 = *(v7 + 32);
    v25(v9, v15, v6);
    if (v9[40] != 1)
    {
      v9[40] = 1;
      (*(v13 + 8))(v4, v12);
      v25(v4, v9, v6);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (v15[40] != 1)
  {
    v18 = *(v15 + 6);
    v17 = *(v15 + 7);
    v19 = *(v15 + 4);
    v20 = *(v13 + 8);
    v21 = *v15;
    v27 = *(v15 + 1);
    v28 = v21;
    v20(v4, v12);
    v22 = v27;
    *v4 = v28;
    *(v4 + 16) = v22;
    *(v4 + 32) = v19;
    *(v4 + 40) = 1;
    *(v4 + 41) = *v29;
    *(v4 + 44) = *&v29[3];
    *(v4 + 48) = v18;
    *(v4 + 56) = v17;
    return swift_storeEnumTagMultiPayload();
  }

  result = sub_25DDDD138();
  __break(1u);
  return result;
}

uint64_t sub_25DDBDE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(a1 + 16);
  v7 = type metadata accessor for BufferedStream._StateMachine._State.Streaming(0, v6, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v13 = type metadata accessor for BufferedStream._StateMachine._State(0, v6, v11, v12);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  (*(v14 + 16))(&v34 - v15, v5, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (*v16 == 1)
      {
        v18 = *(v16 + 3);
        v23 = *(v16 + 4);
        v24 = *(v16 + 2);
        (*(v14 + 8))(v5, v13);
        *v5 = 1;
        swift_storeEnumTagMultiPayload();
        sub_25DDB74BC(v18, v23);

        v21 = v18;
        v22 = v23;
        goto LABEL_8;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      return 0;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v8 + 32))(v10, v16, v7);
    if (v10[40] == 1)
    {
      (*(v14 + 8))(v5, v13);
      *v5 = 1;
      swift_storeEnumTagMultiPayload();
      v25 = *&v10[*(v7 + 44)];
      v26 = v25[3];
      v18 = MEMORY[0x277D84F90];
      if (!v26)
      {
LABEL_23:
        sub_25DDB74BC(*(v10 + 6), *(v10 + 7));
        (*(v8 + 8))(v10, v7);
        return v18;
      }

      v34 = v8;
      v35 = v7;
      v37 = MEMORY[0x277D84F90];
      sub_25DDC695C(0, v26 & ~(v26 >> 63), 0);
      if ((v26 & 0x8000000000000000) == 0)
      {
        v27 = 0;
        v18 = v37;
        while (v27 < v25[3])
        {
          v28 = v25[4];
          if (v27 + v28 >= v25[2])
          {
            v29 = v25[2];
          }

          else
          {
            v29 = 0;
          }

          v30 = *&v25[3 * v27 + 6 + 3 * (v28 - v29)];
          v37 = v18;
          v32 = *(v18 + 16);
          v31 = *(v18 + 24);
          v36 = v30;

          if (v32 >= v31 >> 1)
          {
            sub_25DDC695C((v31 > 1), v32 + 1, 1);
            v18 = v37;
          }

          ++v27;
          *(v18 + 16) = v32 + 1;
          *(v18 + 16 * v32 + 32) = v36;
          if (v26 == v27)
          {
            v8 = v34;
            v7 = v35;
            goto LABEL_23;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }

  else if (v16[40] == 1)
  {
    v18 = *(v16 + 6);
    v20 = *(v16 + 3);
    v19 = *(v16 + 4);
    (*(v14 + 8))(v5, v13);
    *v5 = 1;
    swift_storeEnumTagMultiPayload();
    v21 = v20;
    v22 = v19;
LABEL_8:
    sub_25DDB7474(v21, v22);
    return v18;
  }

  result = sub_25DDDD138();
  __break(1u);
  return result;
}

uint64_t sub_25DDBE288@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v6 = sub_25DDDCF38();
  v79 = sub_25DDDD088();
  v7 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v9 = &v76 - v8;
  v12 = type metadata accessor for BufferedStream._StateMachine._State.Streaming(0, v5, v10, v11);
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = &v76 - v13;
  v16 = type metadata accessor for BufferedStream._StateMachine._State(0, v5, v14, v15);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v76 - v18;
  (*(v17 + 16))(&v76 - v18, v3, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v17 + 8))(v19, v16);
    }

    else if (EnumCaseMultiPayload != 3)
    {
LABEL_44:
      result = sub_25DDDD138();
      __break(1u);
      return result;
    }

    v48 = type metadata accessor for BufferedStream._StateMachine.SourceDeinitializedAction(0, v5, v21, v22);
    return (*(*(v48 - 8) + 56))(a2, 1, 1, v48);
  }

  v78 = a2;
  if (!EnumCaseMultiPayload)
  {
    v23 = *(v19 + 3);
    v24 = *(v19 + 4);
    v25 = v19[40];
    v27 = *(v19 + 6);
    v26 = *(v19 + 7);
    (*(v17 + 8))(v3, v16);
    *v3 = v25;
    swift_storeEnumTagMultiPayload();
    sub_25DDB7474(v23, v24);
    if (v27)
    {
      v30 = v26;
    }

    else
    {
      v30 = 0;
    }

    v31 = v78;
    *v78 = v27;
    v31[1] = v30;
    v32 = type metadata accessor for BufferedStream._StateMachine.SourceDeinitializedAction(0, v5, v28, v29);
    swift_storeEnumTagMultiPayload();
    return (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  }

  v34 = v5;
  v35 = v80;
  (*(v81 + 32))(v80, v19, v12);
  *&v82 = *(v35 + 8);
  v83 = v82;
  v77 = v34;
  sub_25DDDCCE8();
  v36 = v12;
  swift_getWitnessTable();
  v37 = sub_25DDDD018();
  v76 = v12;
  if (v37)
  {
    (*(v17 + 8))(v3, v16);
    *v3 = v35[40];
    swift_storeEnumTagMultiPayload();
    (*(v7 + 16))(v78, &v35[*(v12 + 40)], v79);
    v38 = *&v35[*(v12 + 44)];
    v39 = v38[3];
    v40 = MEMORY[0x277D84F90];
    if (v39)
    {
      v83 = MEMORY[0x277D84F90];
      sub_25DDC695C(0, v39 & ~(v39 >> 63), 0);
      if (v39 < 0)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v41 = 0;
      v40 = v83;
      v42 = v77;
      while (v41 < v38[3])
      {
        v43 = v38[4];
        if (v41 + v43 >= v38[2])
        {
          v44 = v38[2];
        }

        else
        {
          v44 = 0;
        }

        v45 = *&v38[3 * v41 + 6 + 3 * (v43 - v44)];
        v83 = v40;
        v46 = *(v40 + 16);
        v47 = *(v40 + 24);
        v82 = v45;

        if (v46 >= v47 >> 1)
        {
          sub_25DDC695C((v47 > 1), v46 + 1, 1);
          v40 = v83;
        }

        ++v41;
        *(v40 + 16) = v46 + 1;
        *(v40 + 16 * v46 + 32) = v82;
        if (v39 == v41)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

    v42 = v77;
LABEL_36:
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE588, &qword_25DDDDB18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v66 = v78;
    v67 = (v78 + *(TupleTypeMetadata3 + 64));
    *(v78 + *(TupleTypeMetadata3 + 48)) = v40;
    v68 = v80;
    v69 = *(v80 + 6);
    v70 = *(v80 + 7);
    *v67 = v69;
    v67[1] = v70;
    v73 = type metadata accessor for BufferedStream._StateMachine.SourceDeinitializedAction(0, v42, v71, v72);
    swift_storeEnumTagMultiPayload();
    (*(*(v73 - 8) + 56))(v66, 0, 1, v73);
    sub_25DDB74BC(v69, v70);
    return (*(v81 + 8))(v68, v76);
  }

  else
  {
    v49 = v79;
    (*(v7 + 16))(v9, &v35[*(v36 + 40)], v79);
    v50 = (*(*(v6 - 8) + 48))(v9, 1, v6);
    (*(v7 + 8))(v9, v49);
    if (v50 != 1)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    (*(v17 + 8))(v3, v16);
    v51 = *(v35 + 6);
    v52 = *(v35 + 7);
    *v3 = v35[40];
    *(v3 + 1) = *v84;
    *(v3 + 4) = *&v84[3];
    *(v3 + 8) = v82;
    *(v3 + 16) = 0;
    *(v3 + 24) = v51;
    *(v3 + 32) = v52;
    swift_storeEnumTagMultiPayload();
    v53 = *&v35[*(v36 + 44)];
    v54 = v53[3];
    if (v54)
    {

      sub_25DDB74BC(v51, v52);
      v83 = MEMORY[0x277D84F90];
      sub_25DDC695C(0, v54 & ~(v54 >> 63), 0);
      if (v54 < 0)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v55 = 0;
      v56 = v83;
      v57 = v77;
      while (v55 < v53[3])
      {
        v58 = v53[4];
        if (v55 + v58 >= v53[2])
        {
          v59 = v53[2];
        }

        else
        {
          v59 = 0;
        }

        v60 = *&v53[3 * v55 + 6 + 3 * (v58 - v59)];
        v83 = v56;
        v61 = *(v56 + 16);
        v62 = *(v56 + 24);
        v82 = v60;

        if (v61 >= v62 >> 1)
        {
          sub_25DDC695C((v62 > 1), v61 + 1, 1);
          v56 = v83;
        }

        ++v55;
        *(v56 + 16) = v61 + 1;
        *(v56 + 16 * v61 + 32) = v82;
        if (v54 == v55)
        {
          goto LABEL_38;
        }
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    sub_25DDB74BC(v51, v52);
    v56 = MEMORY[0x277D84F90];
    v57 = v77;
LABEL_38:
    v74 = v78;
    *v78 = v56;
    v75 = type metadata accessor for BufferedStream._StateMachine.SourceDeinitializedAction(0, v57, v63, v64);
    swift_storeEnumTagMultiPayload();
    (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
    return (*(v81 + 8))(v80, v76);
  }
}

uint64_t sub_25DDBEB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v140 = a4;
  v139 = a3;
  v138 = a1;
  v132 = a2;
  v8 = *(a2 + 16);
  v9 = sub_25DDDD088();
  v125 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v129 = &v117 - v11;
  v131 = *(v8 - 8);
  MEMORY[0x28223BE20](v10);
  v128 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v126 = v9;
  v13 = sub_25DDDCF38();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v130 = &v117 - v15;
  v18 = type metadata accessor for BufferedStream._StateMachine._State.Streaming(0, v8, v16, v17);
  v141 = *(v18 - 8);
  v142 = v18;
  MEMORY[0x28223BE20](v18);
  v135 = &v117 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = sub_25DDDD088();
  MEMORY[0x28223BE20](v20 - 8);
  v137 = &v117 - v21;
  v143 = v13;
  v134 = sub_25DDDD088();
  v133 = *(v134 - 8);
  v22 = MEMORY[0x28223BE20](v134);
  v24 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v117 - v25;
  v29 = type metadata accessor for BufferedStream._StateMachine._State(0, v8, v27, v28);
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v117 - v34;
  (*(v30 + 16))(&v117 - v34, v6, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v144 = v8;
    v124 = v14;
    v123 = a5;
    v127 = v6;
    if (!EnumCaseMultiPayload)
    {
      v39 = *(v35 + 4);
      LODWORD(v135) = v35[40];
      v40 = *(v35 + 6);
      v41 = *(v35 + 7);
      v42 = *(v35 + 1);
      v147[0] = *v35;
      v147[1] = v42;
      v148 = v39;
      v141 = v40;
      v43 = v41;
      sub_25DDB74BC(v40, v41);
      v44 = v144;
      v146 = sub_25DDDCCD8();
      sub_25DDDCCE8();
      sub_25DDDCCA8();
      swift_getWitnessTable();
      sub_25DDDCE28();
      v46 = v149;
      v45 = v150;
      v47 = v151;
      v50 = type metadata accessor for BufferedStream._InternalBackPressureStrategy(0, v44, v48, v49);
      v51 = sub_25DDBCC24(v46, v45, v47, v50, sub_25DDBC78C);

      v142 = 0;
      v52 = v124;
      if (v51)
      {
LABEL_6:
        v54 = *(v50 - 8);
        (*(v54 + 32))(&v149, v147, v50);
        v55 = v146;
        (*(v52 + 56))(v26, 1, 1, v143);
        (*(v54 + 16))(v145, &v149, v50);

        v56 = *sub_25DDDCC98();
        swift_retain_n();
        LODWORD(v143) = v51 & 1;
        v116 = v51 & 1;
        v57 = v141;
        sub_25DDC44F0(&v149, v135, v141, v43, v55, v26, v56, v56, v33, v116, v144);
        sub_25DDB7474(v57, v43);

        (*(v54 + 8))(&v149, v50);
        swift_storeEnumTagMultiPayload();
        (*(v30 + 40))(v127, v33, v29);
        v58 = v137;
        (*(*(TupleTypeMetadata2 - 8) + 56))(v137, 1, 1);
        return sub_25DDC4A18(v142, v143, v58, v144, v123);
      }

      v53 = *(v132 + 28);
      v142 = *(v127 + v53);
      if (v142 != -1)
      {
        *(v127 + v53) = v142 + 1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_29;
    }

    v60 = v142;
    v61 = v135;
    (*(v141 + 32))(v135, v35, v142);
    v122 = *(v30 + 8);
    v122(v6, v29);
    swift_storeEnumTagMultiPayload();
    v62 = v144;
    sub_25DDC4E70(sub_25DDC4E64, 0, *(v61 + 8), MEMORY[0x277CFB918], v144, MEMORY[0x277D84A98], MEMORY[0x277D83B88], MEMORY[0x277D84AC0], v115);
    v63 = v149;
    sub_25DDDCCE8();
    sub_25DDDCCA8();
    *&v147[0] = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE5B0, &qword_25DDDDB68);
    swift_getWitnessTable();
    sub_25DDC74E0();
    v140 = (v61 + 64);
    sub_25DDDCE18();
    v64 = v149;
    v65 = v150;
    v66 = v151;
    v139 = type metadata accessor for BufferedStream._InternalBackPressureStrategy(0, v62, v67, v68);
    LOBYTE(v64) = sub_25DDBCC24(v64, v65, v66, v139, sub_25DDBC78C);

    v69 = v64 & 1;
    v121 = *(v60 + 52);
    v61[v121] = v64 & 1;
    v70 = v133;
    v71 = *(v133 + 16);
    v138 = *(v60 + 40);
    v72 = v134;
    v71(v24, &v61[v138], v134);
    v73 = v124;
    v74 = v143;
    if ((*(v124 + 48))(v24, 1, v143) != 1)
    {
      v120 = v69;
      v80 = v122;
      v81 = *(v73 + 32);
      v82 = v130;
      v119 = v73 + 32;
      v118 = v81;
      v81(v130, v24, v74);
      v83 = v129;
      v84 = v74;
      sub_25DDDCCC8();
      v85 = v131;
      v86 = v144;
      if ((*(v131 + 48))(v83, 1, v144) != 1)
      {
        v98 = *(v85 + 32);
        v99 = v128;
        v131 = v85 + 32;
        v140 = v98;
        v98(v128, v83, v86);
        v100 = v135;
        LOBYTE(v99) = sub_25DDBCCB8(v99);
        v101 = v99 & 1;
        v100[v121] = v99 & 1;
        v102 = v138;
        (*(v133 + 8))(&v100[v138], v134);
        (*(v73 + 56))(&v100[v102], 1, 1, v84);
        v103 = v127;
        v80(v127, v29);
        v105 = v141;
        v104 = v142;
        (*(v141 + 16))(v103, v100, v142);
        swift_storeEnumTagMultiPayload();
        if (v99)
        {
          v106 = 0;
          v107 = v123;
        }

        else
        {
          v110 = *(v132 + 28);
          v106 = *(v103 + v110);
          v107 = v123;
          if (v106 == -1)
          {
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          *(v103 + v110) = v106 + 1;
        }

        v111 = TupleTypeMetadata2;
        v112 = *(TupleTypeMetadata2 + 48);
        v113 = v137;
        v118(v137, v130, v143);
        v114 = v144;
        v140((v113 + v112), v128, v144);
        (*(*(v111 - 8) + 56))(v113, 0, 1, v111);
        sub_25DDC4A18(v106, v101, v113, v114, v107);
        return (*(v105 + 8))(v135, v104);
      }

      (*(v73 + 8))(v82, v84);
      (*(v125 + 8))(v83, v126);
      v87 = v127;
      v80(v127, v29);
      v89 = v141;
      v88 = v142;
      v90 = v135;
      (*(v141 + 16))(v87, v135, v142);
      swift_storeEnumTagMultiPayload();
      v91 = v123;
      v92 = v120;
      if (v120)
      {
        v93 = 0;
        v94 = v144;
      }

      else
      {
        v108 = *(v132 + 28);
        v93 = *(v87 + v108);
        v94 = v144;
        if (v93 == -1)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        *(v87 + v108) = v93 + 1;
      }

      v109 = v137;
      (*(*(TupleTypeMetadata2 - 8) + 56))(v137, 1, 1);
      sub_25DDC4A18(v93, v92, v109, v94, v91);
      return (*(v89 + 8))(v90, v88);
    }

    (*(v70 + 8))(v24, v72);
    v75 = v127;
    v122(v127, v29);
    v77 = v141;
    v76 = v142;
    (*(v141 + 16))(v75, v61, v142);
    swift_storeEnumTagMultiPayload();
    v78 = v123;
    if (v69)
    {
      v79 = 0;
    }

    else
    {
      v95 = v75;
      v96 = *(v132 + 28);
      v79 = *(v75 + v96);
      if (v79 == -1)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      *(v95 + v96) = v79 + 1;
    }

    v97 = v137;
    (*(*(TupleTypeMetadata2 - 8) + 56))(v137, 1, 1);
    sub_25DDC4A18(v79, v69, v97, v144, v78);
    return (*(v77 + 8))(v61, v76);
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v30 + 8))(v35, v29);
LABEL_13:
    type metadata accessor for BufferedStream._StateMachine.WriteAction(0, v8, v37, v38);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 3)
  {
    goto LABEL_13;
  }

LABEL_32:
  result = sub_25DDDD138();
  __break(1u);
  return result;
}

uint64_t sub_25DDBFAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a4 + 16);
  v10 = type metadata accessor for BufferedStream._StateMachine._State.Streaming(0, v9, a3, a4);
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v16 = type metadata accessor for BufferedStream._StateMachine._State(0, v9, v14, v15);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - v18;
  (*(v17 + 16))(&v36 - v18, v5, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v40 = a2;
    v41 = a3;
    if (EnumCaseMultiPayload == 1)
    {
      v38 = *(v11 + 32);
      v39 = v11 + 32;
      v38(v13, v19, v10);
      v21 = v10[12];
      v22 = *&v13[v21];
      v23 = v22[3];
      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if ((v23 & ~(v23 >> 63)) == v24)
          {
            __break(1u);
            goto LABEL_29;
          }

          v25 = v22[4];
          v26 = v24 + v25 >= v22[2] ? v22[2] : 0;
          if (v22[v24 + 5 + v25 - v26] == a1)
          {
            break;
          }

          if (v23 == ++v24)
          {
            goto LABEL_13;
          }
        }

        v34 = *(v17 + 8);
        v34(v5, v16);
        swift_storeEnumTagMultiPayload();
        if (v24 >= v22[3])
        {
          goto LABEL_30;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25DDC5304();
        }

        v35 = *&v13[v21];
        if (v24 < *(v35 + 24))
        {
          sub_25DDC5ABC(v24, v24 + 1, (v35 + 16), v35 + 40, v42);

          sub_25DDC5D88(v24, v24 + 1, (v35 + 16), (v35 + 40));

          v34(v5, v16);
          (*(v11 + 16))(v5, v13, v10);
          swift_storeEnumTagMultiPayload();
          sub_25DDDCF48();
          sub_25DDC7248();
          swift_allocError();
          sub_25DDDCDD8();
          (*(v11 + 8))(v13, v10);

          return v40;
        }
      }

      else
      {
LABEL_13:
        if (v13[v10[13]] == 1)
        {
          (*(v11 + 8))(v13, v10);

          return v40;
        }

        v37 = *(v17 + 8);
        v37(v5, v16);
        swift_storeEnumTagMultiPayload();
        v28 = swift_allocObject();
        *(v28 + 16) = v40;
        *(v28 + 24) = v41;
        v29 = v10[11];
        v30 = *(*&v13[v29] + 24);
        v31 = v30 + 1;
        if (!__OFADD__(v30, 1))
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = *&v13[v29];
          if (*(v33 + 16) < v31 || (isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_25DDC4F74(isUniquelyReferenced_nonNull_native, v31, 0);
            v33 = *&v13[v29];
          }

          sub_25DDC5BB0((v33 + 16), v33 + 40, a1, sub_25DDC7544, v28);

          v37(v5, v16);
          v38(v5, v13, v10);
          swift_storeEnumTagMultiPayload();
          return 0;
        }

LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
      }

      __break(1u);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v17 + 8))(v19, v16);
LABEL_16:
      sub_25DDBD574();
      swift_allocError();

      return a2;
    }

    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_16;
    }
  }

  result = sub_25DDDD138();
  __break(1u);
  return result;
}

uint64_t (*sub_25DDC0024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v7 = *(a2 + 16);
  v8 = type metadata accessor for BufferedStream._StateMachine._State.Streaming(0, v7, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v14 = type metadata accessor for BufferedStream._StateMachine._State(0, v7, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - v16;
  (*(v15 + 16))(&v41 - v16, v5, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v44 = *(v9 + 32);
      v44(v11, v17, v8);
      v19 = *(v8 + 44);
      v20 = *&v11[v19];
      v21 = v20[3];
      v45 = v9 + 32;
      if (v21)
      {
        v22 = 0;
        while (1)
        {
          if ((v21 & ~(v21 >> 63)) == v22)
          {
            __break(1u);
            goto LABEL_31;
          }

          v23 = v20[4];
          v24 = v22 + v23 >= v20[2] ? v20[2] : 0;
          if (v20[3 * v22 + 5 + 3 * (v23 - v24)] == a1)
          {
            break;
          }

          if (v21 == ++v22)
          {
            goto LABEL_13;
          }
        }

        v33 = *(v15 + 8);
        v33(v5, v14);
        swift_storeEnumTagMultiPayload();
        if (v22 >= v20[3])
        {
          goto LABEL_32;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25DDC53A4();
        }

        v43 = v33;
        v34 = *&v11[v19];
        if (v22 < *(v34 + 24))
        {
          v35 = *(v34 + 32);
          if (v35 + v22 >= *(v34 + 16))
          {
            v36 = *(v34 + 16);
          }

          else
          {
            v36 = 0;
          }

          v37 = v34 + 40 + 24 * (v35 - v36 + v22);
          v38 = *(v37 + 16);
          v42 = *(v37 + 8);

          sub_25DDC5C8C(v22, v22 + 1, (v34 + 16), (v34 + 40));

          v39 = swift_allocObject();
          v40 = v43;
          *(v39 + 16) = v42;
          *(v39 + 24) = v38;
          v40(v5, v14);
          v44(v5, v11, v8);
          swift_storeEnumTagMultiPayload();
          return sub_25DDC7578;
        }
      }

      else
      {
LABEL_13:
        v25 = *(v15 + 8);
        v25(v5, v14);
        swift_storeEnumTagMultiPayload();
        v26 = *(v8 + 48);
        v27 = *(*&v11[v26] + 24);
        v28 = v27 + 1;
        if (!__OFADD__(v27, 1))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v30 = *&v11[v26];
          if (*(v30 + 16) < v28 || (isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_25DDC5158(isUniquelyReferenced_nonNull_native, v28, 0);
            v30 = *&v11[v26];
          }

          sub_25DDC5C30((v30 + 16), v30 + 40, a1);
          v25(v5, v14);
          v44(v5, v11, v8);
          swift_storeEnumTagMultiPayload();
          return 0;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
      }

      __break(1u);
    }

LABEL_34:
    result = sub_25DDDD138();
    __break(1u);
    return result;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v15 + 8))(v17, v14);
    return 0;
  }

  v32 = EnumCaseMultiPayload;
  result = 0;
  if (v32 != 3)
  {
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_25DDC04D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v92 = a3;
  v6 = *(a2 + 16);
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v7 = sub_25DDDCF38();
  v8 = sub_25DDDD088();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v86 - v11;
  *&v94 = *(v7 - 8);
  MEMORY[0x28223BE20](v10);
  v88 = &v86 - v13;
  v16 = type metadata accessor for BufferedStream._StateMachine._State.Streaming(0, v6, v14, v15);
  v90 = *(v16 - 8);
  v91 = v16;
  MEMORY[0x28223BE20](v16);
  v89 = &v86 - v17;
  v93 = v6;
  v20 = type metadata accessor for BufferedStream._StateMachine._State(0, v6, v18, v19);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v86 - v25;
  (*(v21 + 16))(&v86 - v25, v4, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v21 + 8))(v26, v20);
      v45 = v93;
    }

    else
    {
      v45 = v93;
      if (EnumCaseMultiPayload != 3)
      {
LABEL_35:
        result = sub_25DDDD138();
        __break(1u);
        return result;
      }
    }

    v66 = type metadata accessor for BufferedStream._StateMachine.FinishAction(0, v45, v28, v29);
    return (*(*(v66 - 8) + 56))(v92, 1, 1, v66);
  }

  v87 = a1;
  if (!EnumCaseMultiPayload)
  {
    v30 = *(v26 + 3);
    v31 = *(v26 + 4);
    v32 = v26[40];
    v34 = *(v26 + 6);
    v33 = *(v26 + 7);
    v35 = v93;
    v36 = sub_25DDDCCD8();
    *v24 = v32;
    *(v24 + 1) = v95;
    *(v24 + 1) = *(&v95 + 3);
    v37 = v87;
    *(v24 + 1) = v36;
    *(v24 + 2) = v37;
    *(v24 + 3) = v34;
    *(v24 + 4) = v33;
    swift_storeEnumTagMultiPayload();
    v38 = v37;
    sub_25DDB74BC(v34, v33);
    (*(v21 + 40))(v4, v24, v20);
    sub_25DDB7474(v30, v31);
    if (v34)
    {
      v41 = v33;
    }

    else
    {
      v41 = 0;
    }

    v42 = v92;
    *v92 = v34;
    v42[1] = v41;
    v43 = type metadata accessor for BufferedStream._StateMachine.FinishAction(0, v35, v39, v40);
    swift_storeEnumTagMultiPayload();
    return (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  }

  v46 = v89;
  v47 = v91;
  (*(v90 + 32))(v89, v26, v91);
  (*(v9 + 16))(v12, &v46[*(v47 + 40)], v8);
  v48 = v94;
  if ((*(v94 + 48))(v12, 1, v7) == 1)
  {
    (*(v9 + 8))(v12, v8);
    (*(v21 + 8))(v4, v20);
    v49 = *(v46 + 7);
    v50 = *(v46 + 8);
    v51 = *(v46 + 6);
    *v4 = v46[40];
    *(v4 + 1) = *v96;
    *(v4 + 4) = *&v96[3];
    v52 = v87;
    *(v4 + 8) = v50;
    *(v4 + 16) = v52;
    *(v4 + 24) = v51;
    *(v4 + 32) = v49;
    swift_storeEnumTagMultiPayload();
    v53 = *&v46[*(v47 + 44)];
    v54 = v53[3];
    if (v54)
    {
      v55 = v52;

      sub_25DDB74BC(v51, v49);
      v95 = MEMORY[0x277D84F90];
      sub_25DDC695C(0, v54 & ~(v54 >> 63), 0);
      if (v54 < 0)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v56 = 0;
      v57 = v95;
      v58 = v93;
      while (v56 < v53[3])
      {
        v59 = v53[4];
        if (v56 + v59 >= v53[2])
        {
          v60 = v53[2];
        }

        else
        {
          v60 = 0;
        }

        v61 = *&v53[3 * v56 + 6 + 3 * (v59 - v60)];
        v95 = v57;
        v62 = *(v57 + 16);
        v63 = *(v57 + 24);
        v94 = v61;

        if (v62 >= v63 >> 1)
        {
          sub_25DDC695C((v63 > 1), v62 + 1, 1);
          v57 = v95;
        }

        ++v56;
        *(v57 + 16) = v62 + 1;
        *(v57 + 16 * v62 + 32) = v94;
        if (v54 == v56)
        {
          v82 = v91;
          goto LABEL_30;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

    v82 = v47;
    v83 = v52;

    sub_25DDB74BC(v51, v49);
    v57 = MEMORY[0x277D84F90];
    v58 = v93;
LABEL_30:
    v84 = v92;
    *v92 = v57;
    v85 = type metadata accessor for BufferedStream._StateMachine.FinishAction(0, v58, v64, v65);
    swift_storeEnumTagMultiPayload();
    (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
    return (*(v90 + 8))(v89, v82);
  }

  else
  {
    v67 = v48 + 32;
    v68 = *(v48 + 32);
    *&v94 = v67;
    v68(v88, v12, v7);
    v95 = *(v46 + 8);
    v69 = v93;
    sub_25DDDCCE8();
    swift_getWitnessTable();
    if ((sub_25DDDD018() & 1) == 0)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (*(*&v46[*(v91 + 44)] + 24))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    (*(v21 + 8))(v4, v20);
    *v4 = v46[40];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE5A8, &qword_25DDDDB60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v71 = *(TupleTypeMetadata3 + 48);
    v72 = v92;
    v73 = (v92 + *(TupleTypeMetadata3 + 64));
    v68(v92, v88, v7);
    v76 = v87;
    *(v72 + v71) = v87;
    v77 = *(v46 + 6);
    v78 = *(v46 + 7);
    if (v77)
    {
      v79 = *(v46 + 7);
    }

    else
    {
      v79 = 0;
    }

    *v73 = v77;
    v73[1] = v79;
    v80 = type metadata accessor for BufferedStream._StateMachine.FinishAction(0, v69, v74, v75);
    swift_storeEnumTagMultiPayload();
    (*(*(v80 - 8) + 56))(v72, 0, 1, v80);
    v81 = v76;
    sub_25DDB74BC(v77, v78);
    return (*(v90 + 8))(v46, v91);
  }
}

uint64_t sub_25DDC0DAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v104 = a2;
  v3 = *(a1 + 16);
  v4 = sub_25DDDD088();
  v96 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v95 = &v94 - v9;
  v101 = *(v3 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v94 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v98 = &v94 - v12;
  v15 = type metadata accessor for BufferedStream._StateMachine._State.Streaming(0, v3, v13, v14);
  v16 = *(v15 - 8);
  v99 = v15;
  v100 = v16;
  MEMORY[0x28223BE20](v15);
  v97 = &v94 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  *&v106 = v4;
  v18 = sub_25DDDCF38();
  v19 = sub_25DDDD088();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v94 - v24;
  v105 = v3;
  v28 = type metadata accessor for BufferedStream._StateMachine._State(0, v3, v26, v27);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v94 - v32;
  v102 = v2;
  v103 = v34;
  (*(v34 + 16))(&v94 - v32, v2, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      LODWORD(v100) = *v33;
      v45 = *(v33 + 2);
      v46 = *(v33 + 3);
      v47 = *(v33 + 4);
      v108[0] = *(v33 + 1);
      v48 = v102;
      v49 = *(v103 + 8);
      v49(v102, v28);
      swift_storeEnumTagMultiPayload();
      v50 = v105;
      sub_25DDDCCE8();
      sub_25DDDCCC8();
      v51 = v101;
      if ((*(v101 + 48))(v7, 1, v50) == 1)
      {

        (*(v96 + 1))(v7, v106);
        v49(v48, v28);
        *v48 = v100;
        swift_storeEnumTagMultiPayload();
        if (v46)
        {
          v54 = v47;
        }

        else
        {
          v54 = 0;
        }

        v55 = v104;
        *v104 = v45;
        v55[1] = v46;
        v55[2] = v54;
        type metadata accessor for BufferedStream._StateMachine.NextAction(0, v50, v52, v53);
        return swift_storeEnumTagMultiPayload();
      }

      *&v106 = v46;
      v68 = *(v51 + 32);
      v103 = v47;
      v69 = v94;
      v68(v94, v7, v50);
      v49(v48, v28);
      v70 = v108[0];
      *v48 = v100;
      *(v48 + 8) = v70;
      *(v48 + 16) = v45;
      v71 = v103;
      *(v48 + 24) = v106;
      *(v48 + 32) = v71;
      swift_storeEnumTagMultiPayload();
      v68(v104, v69, v50);
      v44 = v50;
LABEL_29:
      type metadata accessor for BufferedStream._StateMachine.NextAction(0, v44, v36, v37);
      return swift_storeEnumTagMultiPayload();
    }

    v44 = v105;
    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v38 = v105;
      v39 = type metadata accessor for BufferedStream._InternalBackPressureStrategy(0, v105, v36, v37);
      v40 = *(v39 - 8);
      (*(v40 + 32))(v108, v33, v39);
      LODWORD(v106) = v33[40];
      v42 = *(v33 + 6);
      v41 = *(v33 + 7);
      (*(v40 + 16))(v107, v108, v39);
      sub_25DDB74BC(v42, v41);
      v101 = sub_25DDDCCD8();
      (*(*(v18 - 8) + 56))(v25, 1, 1, v18);
      v43 = *sub_25DDDCC98();
      swift_retain_n();
      sub_25DDC44F0(v108, v106, v42, v41, v101, v25, v43, v43, v31, 0, v38);
      (*(v40 + 8))(v108, v39);
      sub_25DDB7474(v42, v41);
      swift_storeEnumTagMultiPayload();
      (*(v103 + 40))(v102, v31, v28);
      v44 = v38;
      goto LABEL_29;
    }

    v56 = v99;
    v57 = *(v100 + 32);
    v58 = v97;
    v100 += 32;
    v94 = v57;
    (v57)(v97, v33, v99);
    (*(v20 + 16))(v23, &v58[*(v56 + 40)], v19);
    LODWORD(v56) = (*(*(v18 - 8) + 48))(v23, 1, v18);
    (*(v20 + 8))(v23, v19);
    if (v56 == 1)
    {
      v59 = v102;
      v60 = v103 + 8;
      v61 = *(v103 + 8);
      v61(v102, v28);
      swift_storeEnumTagMultiPayload();
      v62 = v105;
      sub_25DDDCCE8();
      v63 = v95;
      sub_25DDDCCC8();
      v64 = v101;
      v65 = (*(v101 + 48))(v63, 1, v62);
      v66 = v98;
      v67 = v58;
      if (v65 == 1)
      {
        (*(v96 + 1))(v63, v106);
        v61(v59, v28);
        (v94)(v59, v58, v99);
        swift_storeEnumTagMultiPayload();
        v44 = v62;
        goto LABEL_29;
      }

      v72 = *(v64 + 32);
      v101 = v64 + 32;
      v72(v98, v63, v62);
      type metadata accessor for BufferedStream._InternalBackPressureStrategy(0, v62, v73, v74);
      v75 = sub_25DDBCCB8(v66);
      v76 = v99;
      v67[*(v99 + 52)] = v75 & 1;
      if ((v75 & 1) == 0)
      {
        v61(v59, v28);
        (v94)(v59, v67, v76);
        swift_storeEnumTagMultiPayload();
        v72(v104, v66, v62);
        v44 = v62;
        goto LABEL_29;
      }

      v96 = v72;
      v95 = v61;
      v77 = *(v76 + 44);
      v78 = *&v67[v77];
      v79 = v78[3];
      if (!v79)
      {

        v81 = MEMORY[0x277D84F90];
LABEL_31:
        *&v67[v77] = *sub_25DDDCC98();

        v87 = v102;
        (v95)(v102, v28);
        (v94)(v87, v67, v76);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE588, &qword_25DDDDB18);
        v88 = v105;
        v89 = *(swift_getTupleTypeMetadata2() + 48);
        v90 = v104;
        v96(v104, v66, v88);
        *(v90 + v89) = v81;
        type metadata accessor for BufferedStream._StateMachine.NextAction(0, v88, v91, v92);
        return swift_storeEnumTagMultiPayload();
      }

      v103 = v60;
      v108[0] = MEMORY[0x277D84F90];
      sub_25DDC695C(0, v79 & ~(v79 >> 63), 0);
      if ((v79 & 0x8000000000000000) == 0)
      {
        v80 = 0;
        v81 = v108[0];
        while (v80 < v78[3])
        {
          v82 = v78[4];
          if (v80 + v82 >= v78[2])
          {
            v83 = v78[2];
          }

          else
          {
            v83 = 0;
          }

          v84 = *&v78[3 * v80 + 6 + 3 * (v82 - v83)];
          v108[0] = v81;
          v85 = *(v81 + 16);
          v86 = *(v81 + 24);
          v106 = v84;

          if (v85 >= v86 >> 1)
          {
            sub_25DDC695C((v86 > 1), v85 + 1, 1);
            v81 = v108[0];
          }

          ++v80;
          *(v81 + 16) = v85 + 1;
          *(v81 + 16 * v85 + 32) = v106;
          if (v79 == v80)
          {

            v66 = v98;
            v76 = v99;
            v67 = v97;
            goto LABEL_31;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }

  result = sub_25DDDD138();
  __break(1u);
  return result;
}

uint64_t sub_25DDC19C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_25DDC1A08, 0, 0);
}

uint64_t sub_25DDC1A08()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  sub_25DDDD088();
  *v1 = v0;
  v1[1] = sub_25DDC1AE8;
  v2 = *(v0 + 16);

  return MEMORY[0x282200830](v2, &unk_25DDDDB78);
}

uint64_t sub_25DDC1AE8()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DDC938C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25DDC1C1C(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *a2;
  return MEMORY[0x2822009F8](sub_25DDC1C64, 0, 0);
}

uint64_t sub_25DDC1C64()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  v2 = sub_25DDDD088();
  *v1 = v0;
  v1[1] = sub_25DDC1D4C;
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x2822008A0](v3, 0, 0, 0x4E646E6570737573, 0xED00002928747865, sub_25DDC9154, v4, v2);
}

uint64_t sub_25DDC1D4C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DDC1E80, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25DDC1E98(uint64_t a1, void *a2)
{
  v3 = *(*a2 + 80);
  v4 = sub_25DDDD088();
  v5 = MEMORY[0x28223BE20](v4);
  v62 = &v58 - v6;
  v64 = *(v3 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v61 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v58 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v63 = sub_25DDDCF38();
  v65 = *(v63 - 8);
  v11 = MEMORY[0x28223BE20](v63);
  v59 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v60 = &v58 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - v15;
  Action = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction(255, v3, v17, v18);
  v20 = sub_25DDDD088();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v58 - v25;
  v66 = v3;
  v67 = a1;
  type metadata accessor for BufferedStream._StateMachine(0, v3, v27, v28);
  sub_25DDC9AC8(sub_25DDC915C);
  (*(v21 + 16))(v24, v26, v20);
  if ((*(*(Action - 8) + 48))(v24, 1, Action) == 1)
  {
    return (*(v21 + 8))(v26, v20);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v55 = v65;
      v56 = v63;
      (*(v65 + 32))(v16, v24, v63);
      (*(v64 + 56))(v62, 1, 1, v3);
      sub_25DDDCF28();
      (*(v55 + 8))(v16, v56);
      return (*(v21 + 8))(v26, v20);
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE5A8, &qword_25DDDDB60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
    v34 = v63;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v36 = *&v24[*(TupleTypeMetadata3 + 48)];
    v37 = &v24[*(TupleTypeMetadata3 + 64)];
    v38 = *v37;
    v39 = *(v37 + 1);
    v40 = v59;
    (*(v65 + 32))(v59, v24, v34);
    if (v36)
    {
      v68 = v36;
      v41 = v36;
      sub_25DDDCF18();
      v42 = v40;
      if (v38)
      {
LABEL_8:

        v38(v43);
        sub_25DDB7474(v38, v39);

        sub_25DDB7474(v38, v39);
LABEL_16:
        (*(v65 + 8))(v42, v34);
        return (*(v21 + 8))(v26, v20);
      }
    }

    else
    {
      (*(v64 + 56))(v62, 1, 1, v3);
      sub_25DDDCF28();
      v42 = v40;
      if (v38)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE588, &qword_25DDDDB18);
    v44 = v63;
    v45 = swift_getTupleTypeMetadata3();
    v46 = *(v45 + 48);
    v47 = *&v24[*(v45 + 64)];
    (*(v65 + 32))(v60, v24, v44);
    v48 = v64;
    v49 = &v24[v46];
    v50 = v61;
    (*(v64 + 32))(v61, v49, v3);
    v51 = v62;
    (*(v48 + 16))(v62, v50, v3);
    (*(v48 + 56))(v51, 0, 1, v3);
    sub_25DDDCF28();
    v52 = *(v47 + 16);
    if (v52)
    {
      v53 = v47 + 40;
      do
      {
        v54 = *(v53 - 8);
        v68 = 0;
        v69 = 0;

        v54(&v68);

        v53 += 16;
        --v52;
      }

      while (v52);
    }

    (*(v64 + 8))(v61, v3);
    (*(v65 + 8))(v60, v44);
  }

  else
  {
    v30 = v63;
    v61 = *(swift_getTupleTypeMetadata2() + 48);
    v31 = v65;
    (*(v65 + 32))(v16, v24, v30);
    v32 = v64;
    (*(v64 + 32))(v10, &v61[v24], v3);
    v33 = v62;
    (*(v32 + 16))(v62, v10, v3);
    (*(v32 + 56))(v33, 0, 1, v3);
    sub_25DDDCF28();
    (*(v32 + 8))(v10, v3);
    (*(v31 + 8))(v16, v30);
  }

  return (*(v21 + 8))(v26, v20);
}

uint64_t sub_25DDC2648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v143 = a1;
  v144 = a3;
  v5 = *(a2 + 16);
  v6 = sub_25DDDD088();
  v138 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v136 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v131 - v10;
  v141 = *(v5 - 8);
  v12 = MEMORY[0x28223BE20](v9);
  v137 = (&v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v15 = &v131 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v139 = v6;
  v146 = sub_25DDDCF38();
  v16 = sub_25DDDD088();
  *&v147 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v131 - v17;
  v21 = type metadata accessor for BufferedStream._StateMachine._State.Streaming(0, v5, v19, v20);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v131 - v23;
  v145 = v5;
  v27 = type metadata accessor for BufferedStream._StateMachine._State(0, v5, v25, v26);
  MEMORY[0x28223BE20](v27);
  v29 = &v131 - v28;
  v142 = v30;
  v31 = *(v30 + 16);
  v140 = v4;
  v32 = v4;
  v34 = v33;
  v31(&v131 - v28, v32, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v36 = *v29;
      v37 = *(v29 + 1);
      *&v147 = *(v29 + 2);
      v38 = *(v29 + 3);
      v39 = *(v29 + 4);
      v148 = v37;
      v40 = *(v142 + 8);
      v41 = v140;
      v40(v140, v34);
      swift_storeEnumTagMultiPayload();
      v42 = v34;
      v43 = v145;
      sub_25DDDCCE8();
      v44 = v136;
      sub_25DDDCCC8();
      v45 = v141;
      if ((*(v141 + 48))(v44, 1, v43) == 1)
      {

        v138[1](v44, v139);
        v40(v41, v42);
        *v41 = v36;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE5A8, &qword_25DDDDB60);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
        v46 = v146;
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v48 = *(TupleTypeMetadata3 + 48);
        v49 = v144;
        v50 = (v144 + *(TupleTypeMetadata3 + 64));
        (*(*(v46 - 8) + 16))(v144, v143, v46);
        *(v49 + v48) = v147;
        if (v38)
        {
          v53 = v39;
        }

        else
        {
          v53 = 0;
        }

        *v50 = v38;
        v50[1] = v53;
        Action = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction(0, v43, v51, v52);
      }

      else
      {
        v142 = *(v45 + 32);
        (v142)(v137, v44, v43);
        v40(v41, v42);
        v86 = v148;
        *v41 = v36;
        v87 = v147;
        *(v41 + 1) = v86;
        *(v41 + 2) = v87;
        *(v41 + 3) = v38;
        *(v41 + 4) = v39;
        swift_storeEnumTagMultiPayload();
        v88 = v146;
        v89 = *(swift_getTupleTypeMetadata2() + 48);
        v49 = v144;
        (*(*(v88 - 8) + 16))(v144, v143, v88);
        (v142)(v49 + v89, v137, v43);
        Action = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction(0, v43, v90, v91);
      }

      swift_storeEnumTagMultiPayload();
      return (*(*(Action - 8) + 56))(v49, 0, 1, Action);
    }

    if (EnumCaseMultiPayload == 3)
    {
      v82 = v144;
      (*(*(v146 - 8) + 16))(v144, v143);
      v85 = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction(0, v145, v83, v84);
      swift_storeEnumTagMultiPayload();
      return (*(*(v85 - 8) + 56))(v82, 0, 1, v85);
    }

LABEL_34:
    result = sub_25DDDD138();
    __break(1u);
    return result;
  }

  v55 = v11;
  v56 = v147;
  v134 = v24;
  v135 = v16;
  v132 = v15;
  v133 = v55;
  v136 = v21;
  v137 = v22;
  if (EnumCaseMultiPayload != 1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v57 = v136;
  v58 = v134;
  v137[4](v134, v29, v136);
  v59 = *(v56 + 16);
  v131 = *(v57 + 10);
  v60 = v135;
  v59(v18, &v58[v131], v135);
  v61 = *(v146 - 8);
  v62 = (*(v61 + 48))(v18, 1);
  v63 = *(v56 + 8);
  *&v147 = v56 + 8;
  v63(v18, v60);
  if (v62 != 1)
  {
    goto LABEL_34;
  }

  v64 = v142 + 8;
  v65 = *(v142 + 8);
  v66 = v140;
  (v65)(v140, v34);
  swift_storeEnumTagMultiPayload();
  v67 = v145;
  sub_25DDDCCE8();
  v68 = v133;
  sub_25DDDCCC8();
  v69 = v141;
  if ((*(v141 + 48))(v68, 1, v67) == 1)
  {
    v138[1](v68, v139);
    v70 = v131;
    v63(&v58[v131], v135);
    v71 = *(v61 + 16);
    v72 = &v58[v70];
    v73 = v61;
    v74 = v58;
    v75 = v146;
    v71(v72, v143, v146);
    (*(v73 + 56))(&v74[v70], 0, 1, v75);
    (v65)(v66, v34);
    v76 = v136;
    v77 = v137;
    v137[2](v66, v74, v136);
    swift_storeEnumTagMultiPayload();
    v80 = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction(0, v67, v78, v79);
    (*(*(v80 - 8) + 56))(v144, 1, 1, v80);
    return (v77[1])(v74, v76);
  }

  v138 = v65;
  v139 = v61;
  v92 = v34;
  v142 = v64;
  v93 = *(v69 + 32);
  v94 = v132;
  v93(v132, v68, v67);
  type metadata accessor for BufferedStream._InternalBackPressureStrategy(0, v67, v95, v96);
  v97 = sub_25DDBCCB8(v94);
  v98 = v136;
  v58[*(v136 + 13)] = v97 & 1;
  if ((v97 & 1) == 0)
  {
    (v138)(v66, v92);
    v110 = v93;
    v111 = v94;
    v112 = v137;
    v137[2](v66, v58, v98);
    swift_storeEnumTagMultiPayload();
    v113 = v146;
    v114 = v58;
    v115 = *(swift_getTupleTypeMetadata2() + 48);
    v116 = v144;
    (*(v139 + 16))(v144, v143, v113);
    v110(v116 + v115, v111, v67);
    v119 = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction(0, v67, v117, v118);
    swift_storeEnumTagMultiPayload();
    (*(*(v119 - 8) + 56))(v116, 0, 1, v119);
    return (v112[1])(v114, v98);
  }

  v141 = v69 + 32;
  v99 = *(v98 + 11);
  v100 = *&v99[v58];
  v101 = v100[3];
  v102 = v137;
  v135 = v93;
  if (v101)
  {
    v133 = v99;
    v148 = MEMORY[0x277D84F90];
    sub_25DDC695C(0, v101 & ~(v101 >> 63), 0);
    if ((v101 & 0x8000000000000000) == 0)
    {
      v103 = 0;
      v104 = v148;
      while (v103 < v100[3])
      {
        v105 = v100[4];
        if (v103 + v105 >= v100[2])
        {
          v106 = v100[2];
        }

        else
        {
          v106 = 0;
        }

        v107 = *&v100[3 * v103 + 6 + 3 * (v105 - v106)];
        v148 = v104;
        v109 = *(v104 + 16);
        v108 = *(v104 + 24);
        v147 = v107;

        if (v109 >= v108 >> 1)
        {
          sub_25DDC695C((v108 > 1), v109 + 1, 1);
          v104 = v148;
        }

        ++v103;
        *(v104 + 16) = v109 + 1;
        *(v104 + 16 * v109 + 32) = v147;
        if (v101 == v103)
        {

          v67 = v145;
          v66 = v140;
          v98 = v136;
          v102 = v137;
          v99 = v133;
          goto LABEL_30;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  v104 = MEMORY[0x277D84F90];
LABEL_30:
  v120 = sub_25DDDCC98();
  v121 = v134;
  *&v99[v134] = *v120;

  (v138)(v66, v92);
  v102[2](v66, v121, v98);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE588, &qword_25DDDDB18);
  v122 = v102;
  v123 = v146;
  v124 = swift_getTupleTypeMetadata3();
  v125 = *(v124 + 48);
  v126 = *(v124 + 64);
  v127 = v144;
  (*(v139 + 16))(v144, v143, v123);
  v135(v127 + v125, v132, v67);
  *(v127 + v126) = v104;
  v130 = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction(0, v67, v128, v129);
  swift_storeEnumTagMultiPayload();
  (*(*(v130 - 8) + 56))(v127, 0, 1, v130);
  return v122[1](v121, v98);
}

uint64_t sub_25DDC3404(void *a1)
{
  v1 = *(*a1 + 80);
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v2 = sub_25DDDCF38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - v4;
  Action = type metadata accessor for BufferedStream._StateMachine.CancelNextAction(255, v1, v6, v7);
  v9 = sub_25DDDD088();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v36 = v1;
  type metadata accessor for BufferedStream._StateMachine(0, v1, v16, v17);
  sub_25DDC9AC8(sub_25DDC9108);
  (*(v10 + 16))(v13, v15, v9);
  if ((*(*(Action - 8) + 48))(v13, 1, Action) == 1)
  {
    return (*(v10 + 8))(v15, v9);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
    v27 = v13 + *(swift_getTupleTypeMetadata2() + 48);
    v28 = *v27;
    v29 = *(v27 + 1);
    (*(v3 + 32))(v5, v13, v2);
    sub_25DDDCF48();
    sub_25DDC7248();
    v30 = swift_allocError();
    sub_25DDDCDD8();
    v37 = v30;
    sub_25DDDCF18();
    if (v28)
    {

      v28(v31);
      sub_25DDB7474(v28, v29);
      sub_25DDB7474(v28, v29);
    }

    (*(v3 + 8))(v5, v2);
    return (*(v10 + 8))(v15, v9);
  }

  v18 = *v13;
  v33 = v13[1];
  v34 = v9;
  v32 = v13[2];
  v35 = v18;
  v19 = *(v18 + 16);
  if (v19)
  {
    sub_25DDBD574();
    v20 = v35 + 40;
    do
    {
      v21 = *(v20 - 8);
      v22 = swift_allocError();
      v37 = v22;
      v38 = 1;

      v21(&v37);

      v20 += 16;
      --v19;
    }

    while (v19);
  }

  v23 = v33;
  if (v33)
  {
    v24 = v32;

    v23(v25);
    sub_25DDB7474(v23, v24);
    sub_25DDB7474(v23, v24);
  }

  return (*(v10 + 8))(v15, v34);
}

uint64_t sub_25DDC383C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v75 = a2;
  v3 = *(a1 + 16);
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v4 = sub_25DDDCF38();
  v5 = sub_25DDDD088();
  v6 = *(v5 - 8);
  v72 = v5;
  v73 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v69 - v8;
  *&v77 = *(v4 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v69 - v10;
  v14 = type metadata accessor for BufferedStream._StateMachine._State.Streaming(0, v3, v12, v13);
  v76 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v69 - v15;
  v74 = v3;
  v19 = type metadata accessor for BufferedStream._StateMachine._State(0, v3, v17, v18);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v69 - v21;
  (*(v20 + 16))(&v69 - v21, v2, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v20 + 8))(v22, v19);
LABEL_18:
      Action = type metadata accessor for BufferedStream._StateMachine.CancelNextAction(0, v74, v24, v25);
      return (*(*(Action - 8) + 56))(v75, 1, 1, Action);
    }

    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_18;
    }

    goto LABEL_31;
  }

  v69 = v9;
  v70 = v2;
  v26 = v72;
  v71 = v14;
  if (EnumCaseMultiPayload != 1)
  {
LABEL_31:
    result = sub_25DDDD138();
    __break(1u);
    return result;
  }

  v27 = v76;
  v28 = v16;
  v29 = v22;
  v30 = v71;
  (*(v76 + 32))(v16, v29, v71);
  v31 = v70;
  (*(v20 + 8))(v70, v19);
  *v31 = v28[40];
  v32 = v30;
  swift_storeEnumTagMultiPayload();
  v33 = v73;
  v34 = &v28[*(v30 + 40)];
  v35 = v69;
  v36 = v26;
  (*(v73 + 16))(v69, v34, v26);
  v37 = v77;
  if ((*(v77 + 48))(v35, 1, v4) == 1)
  {
    (*(v33 + 8))(v35, v36);
    v40 = *&v28[*(v32 + 44)];
    v41 = v40[3];
    v42 = MEMORY[0x277D84F90];
    if (v41)
    {
      v78 = MEMORY[0x277D84F90];
      sub_25DDC695C(0, v41 & ~(v41 >> 63), 0);
      if (v41 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v43 = 0;
      v42 = v78;
      while (v43 < v40[3])
      {
        v44 = v40[4];
        if (v43 + v44 >= v40[2])
        {
          v45 = v40[2];
        }

        else
        {
          v45 = 0;
        }

        v46 = *&v40[3 * v43 + 6 + 3 * (v44 - v45)];
        v78 = v42;
        v48 = *(v42 + 16);
        v47 = *(v42 + 24);
        v77 = v46;

        if (v48 >= v47 >> 1)
        {
          sub_25DDC695C((v47 > 1), v48 + 1, 1);
          v42 = v78;
        }

        ++v43;
        *(v42 + 16) = v48 + 1;
        *(v42 + 16 * v48 + 32) = v77;
        v27 = v76;
        if (v41 == v43)
        {
          v32 = v71;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_24:
    v62 = *(v28 + 6);
    v63 = *(v28 + 7);
    if (v62)
    {
      v64 = *(v28 + 7);
    }

    else
    {
      v64 = 0;
    }

    v65 = v74;
    v66 = v75;
    *v75 = v42;
    v66[1] = v62;
    v66[2] = v64;
    v67 = v28;
    v68 = type metadata accessor for BufferedStream._StateMachine.CancelNextAction(0, v65, v38, v39);
    swift_storeEnumTagMultiPayload();
    (*(*(v68 - 8) + 56))(v66, 0, 1, v68);
    sub_25DDB74BC(v62, v63);
    return (*(v27 + 8))(v67, v32);
  }

  else
  {
    v51 = *(v37 + 32);
    v51(v11, v35, v4);
    if (*(*&v28[*(v32 + 44)] + 24))
    {
      goto LABEL_29;
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v53 = v75;
    v54 = (v75 + *(TupleTypeMetadata2 + 48));
    v51(v75, v11, v4);
    v57 = *(v28 + 6);
    v58 = *(v28 + 7);
    if (v57)
    {
      v59 = *(v28 + 7);
    }

    else
    {
      v59 = 0;
    }

    *v54 = v57;
    v54[1] = v59;
    v60 = v28;
    v61 = type metadata accessor for BufferedStream._StateMachine.CancelNextAction(0, v74, v55, v56);
    swift_storeEnumTagMultiPayload();
    (*(*(v61 - 8) + 56))(v53, 0, 1, v61);
    sub_25DDB74BC(v57, v58);
    return (*(v76 + 8))(v60, v32);
  }
}

uint64_t sub_25DDC3F48()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25DDC3F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for BufferedStream._InternalBackPressureStrategy(0, *(a2 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 40);

  return v7(v4, a1, v6);
}

uint64_t sub_25DDC4028()
{
  v1 = *(v0 + 48);
  sub_25DDB74BC(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_25DDC405C(uint64_t a1, uint64_t a2)
{
  result = sub_25DDB7474(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

double sub_25DDC40B4@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for BufferedStream._InternalBackPressureStrategy(0, a5, a3, a4);
  (*(*(v11 - 8) + 32))(v15, a1, v11);
  v12 = v16;
  result = *v15;
  v14 = v15[1];
  *a6 = v15[0];
  *(a6 + 16) = v14;
  *(a6 + 32) = v12;
  *(a6 + 40) = a2;
  *(a6 + 41) = v15[0];
  *(a6 + 44) = *(v15 + 3);
  *(a6 + 48) = a3;
  *(a6 + 56) = a4;
  return result;
}

uint64_t sub_25DDC416C(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_25DDC41B8@<X0>(uint64_t a2@<X8>)
{
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v3 = sub_25DDDCF38();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_25DDC4258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  sub_25DDDCF38();
  v5 = sub_25DDDD088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_25DDC430C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  sub_25DDDCF38();
  v5 = sub_25DDDD088();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_25DDC43F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_25DDC4458(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_25DDC44F0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v17 = type metadata accessor for BufferedStream._StateMachine._State.Streaming(0, a11, a3, a4);
  v18 = v17[10];
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v19 = sub_25DDDCF38();
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  v22 = type metadata accessor for BufferedStream._InternalBackPressureStrategy(0, a11, v20, v21);
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  v23 = sub_25DDDD088();
  result = (*(*(v23 - 8) + 40))(a9 + v18, a6, v23);
  *(a9 + v17[11]) = a7;
  *(a9 + v17[12]) = a8;
  *(a9 + v17[13]) = a10;
  return result;
}

uint64_t sub_25DDC46B0(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

void *sub_25DDC4704()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_25DDC477C()
{
  v1 = *(v0 + 24);
  sub_25DDB74BC(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_25DDC47B0(uint64_t a1, uint64_t a2)
{
  result = sub_25DDB7474(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_25DDC4808@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_25DDC4818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for BufferedStream._StateMachine._State(0, *(a1 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4, v6);
}

uint64_t sub_25DDC4884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for BufferedStream._StateMachine._State(0, *(a2 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 40);

  return v7(v4, a1, v6);
}

uint64_t (*sub_25DDC492C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  a1[2] = a2;
  a1[3] = v4;
  *a1 = sub_25DDBD03C(a2, a2, a3, a4);
  a1[1] = v6;
  return sub_25DDC4978;
}

uint64_t sub_25DDC4978(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if ((a2 & 1) == 0)
  {
    return sub_25DDBCD14(*a1, v5, v6, a4);
  }

  sub_25DDB74BC(*a1, v5);
  sub_25DDBCD14(v4, v5, v6, v7);

  return sub_25DDB7474(v4, v5);
}

uint64_t sub_25DDC49FC(uint64_t a1)
{
  v2 = *(a1 + 28);
  result = *(v1 + v2);
  if (result == -1)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v2) = result + 1;
  }

  return result;
}

uint64_t sub_25DDC4A18@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  LODWORD(v39) = a2;
  v40 = a5;
  v7 = *(a4 - 8);
  v37 = a1;
  v38 = v7;
  MEMORY[0x28223BE20](a1);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v10 = sub_25DDDCF38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  type metadata accessor for BufferedStream.Source.WriteResult.CallbackToken(255, a4, v14, v15);
  sub_25DDDD088();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = sub_25DDDD088();
  v18 = swift_getTupleTypeMetadata2();
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v37 + *(v19 + 56) - v20;
  (*(*(v17 - 8) + 32))(v21, a3, v17);
  v22 = (*(*(TupleTypeMetadata2 - 8) + 48))(v21, 1, TupleTypeMetadata2);
  if (v39)
  {
    if (v22 != 1)
    {
      v25 = *(TupleTypeMetadata2 + 48);
      v26 = *(v11 + 32);
      v26(v13, v21, v10);
      v27 = *(v38 + 32);
      v27(v9, &v21[v25], a4);
      v28 = *(swift_getTupleTypeMetadata2() + 48);
      v29 = v40;
      v26(v40, v13, v10);
      v27(&v29[v28], v9, a4);
    }
  }

  else if (v22 == 1)
  {
    *v40 = v37;
  }

  else
  {
    v30 = *(TupleTypeMetadata2 + 48);
    v39 = *(v11 + 32);
    v39(v13, v21, v10);
    v31 = *(v38 + 32);
    v31(v9, &v21[v30], a4);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v33 = *(TupleTypeMetadata3 + 48);
    v34 = *(TupleTypeMetadata3 + 64);
    v35 = v40;
    v39(v40, v13, v10);
    v31(&v35[v33], v9, a4);
    *&v35[v34] = v37;
  }

  type metadata accessor for BufferedStream._StateMachine.WriteAction(0, a4, v23, v24);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25DDC4E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v15 + ((*(*(v14 - 8) + 80) + 16) & ~*(*(v14 - 8) + 80)), v13);
  if (v9)
  {
    return (*(v11 + 32))(a9, v13, a6);
  }

  return result;
}

uint64_t sub_25DDC4F74(char a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE628, &qword_25DDDE5C8);
    v9 = swift_allocObject();
    v10 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v10;
    if (v10 >= 1)
    {
      sub_25DDC5448(v9 + 16, v9 + 40, v5, v4 + 40);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE5E0, qword_25DDDE218);
    sub_25DDDCCB8();
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE628, &qword_25DDDE5C8);
      v9 = swift_allocObject();
      *(v9 + 16) = (_swift_stdlib_malloc_size(v9) - 40) / 24;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_25DDC5648(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE628, &qword_25DDDE5C8);
      v9 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v9);
      v12 = *(v4 + 24);
      *(v9 + 16) = (v11 - 40) / 24;
      *(v9 + 24) = v12;
      *(v9 + 32) = 0;
      if (v12 >= 1)
      {
        sub_25DDC58B0(v9 + 16, v9 + 40, v5, v4 + 40);
      }
    }
  }

  *v3 = v9;
  return result;
}

uint64_t sub_25DDC5158(char a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE618, &qword_25DDDE5B8);
    v9 = swift_allocObject();
    v12 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v12;
    if (v12 >= 1)
    {
      sub_25DDC5560(v9 + 16, (v9 + 40), v5, (v4 + 40));
    }
  }

  else
  {
    sub_25DDDCCB8();
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE618, &qword_25DDDE5B8);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 40;
      if (v10 < 40)
      {
        v11 = v10 - 33;
      }

      *(v9 + 16) = v11 >> 3;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_25DDC5788(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE618, &qword_25DDDE5B8);
      v9 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v9);
      v14 = v13 - 40;
      if (v13 < 40)
      {
        v14 = v13 - 33;
      }

      v15 = *(v4 + 24);
      *(v9 + 16) = v14 >> 3;
      *(v9 + 24) = v15;
      *(v9 + 32) = 0;
      if (v15 >= 1)
      {
        sub_25DDC59C4(v9 + 16, (v9 + 40), v5, (v4 + 40));
      }
    }
  }

  *v3 = v9;
  return result;
}

uint64_t sub_25DDC5304()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE618, &qword_25DDDE5B8);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_25DDC5560(v4 + 16, (v4 + 40), v2, (v1 + 40));
  }

  *v0 = v4;
  return result;
}

uint64_t sub_25DDC53A4()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE628, &qword_25DDDE5C8);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_25DDC5448(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
  return result;
}

void sub_25DDC5448(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
    if (v6 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE620, &qword_25DDDE5C0);
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE620, &qword_25DDDE5C0);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_25DDC5560(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (__src)
    {
      memcpy(&__dst[8 * v4], &__src[8 * v4], 8 * v9);
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(__dst, v10, 8 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

void sub_25DDC5648(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = &a4[24 * v4];
  if (v12 != __dst || &v12[24 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 24 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v16 = &__dst[24 * v8];
  if (v16 != v11 || v16 >= &v11[24 * v7])
  {

    memmove(v16, v11, 24 * v7);
  }
}

void sub_25DDC5788(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[8 * v4];
  if (v12 != __dst || &v12[8 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 8 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[8 * v8];
  if (v16 != v11 || v16 >= &v11[8 * v7])
  {

    memmove(v16, v11, 8 * v7);
  }
}

void sub_25DDC58B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE620, &qword_25DDDE5C0);
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE620, &qword_25DDDE5C0);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_25DDC59C4(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  memcpy(__dst, &__src[8 * v4], 8 * v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[8 * v9], v10, 8 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_25DDC5ABC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[2];
  v6 = v5 + result;
  v7 = *a3;
  if (v5 + result >= *a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 + a2;
  if (v5 + a2 >= v7)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = v6 - v8;
    v13 = v9 - v10;
    if (v11)
    {
      v14 = v12 < v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == 1)
    {
      v16 = 0;
      v13 = 0;
LABEL_18:
      *a5 = a4 + 8 * v12;
      *(a5 + 8) = v11;
      *(a5 + 16) = v16;
      *(a5 + 24) = v13;
      *(a5 + 32) = v15;
      return result;
    }

    v11 = v7 - v12;
    if (!__OFSUB__(v7, v12))
    {
      v16 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25DDC5B34@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[2];
  v6 = v5 + result;
  v7 = *a3;
  if (v5 + result >= *a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 + a2;
  if (v5 + a2 >= v7)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = v6 - v8;
    v13 = v9 - v10;
    if (v11)
    {
      v14 = v12 < v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == 1)
    {
      v16 = 0;
      v13 = 0;
LABEL_18:
      *a5 = a4 + 24 * v12;
      *(a5 + 8) = v11;
      *(a5 + 16) = v16;
      *(a5 + 24) = v13;
      *(a5 + 32) = v15;
      return result;
    }

    v11 = v7 - v12;
    if (!__OFSUB__(v7, v12))
    {
      v16 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

void *sub_25DDC5BB0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result[1];
  v5 = result[2];
  v8 = __OFADD__(v5, v6);
  v7 = v5 + v6;
  if (!v8)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      v8 = __OFSUB__(v7, *result);
      if (v7 < *result || (v7 -= *result, !v8))
      {
LABEL_9:
        v9 = (a2 + 24 * v7);
        *v9 = a3;
        v9[1] = a4;
        v9[2] = a5;
        v10 = result[1];
        v8 = __OFADD__(v10, 1);
        v11 = v10 + 1;
        if (!v8)
        {
          result[1] = v11;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v7 < 0)
    {
      v8 = __OFADD__(v7, *result);
      v7 += *result;
      if (v8)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *sub_25DDC5C30(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v3 = result[2];
  v6 = __OFADD__(v3, v4);
  v5 = v3 + v4;
  if (!v6)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v6))
      {
LABEL_9:
        *(a2 + 8 * v5) = a3;
        v7 = result[1];
        v6 = __OFADD__(v7, 1);
        v8 = v7 + 1;
        if (!v6)
        {
          result[1] = v8;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *result);
      v5 += *result;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_25DDC5C8C(unint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  sub_25DDC5B34(a1, a2, a3, a4, v12);
  if (v12[3])
  {
    v8 = v13;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v12[2];
  }

  if (v12[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE620, &qword_25DDDE5C0);
    swift_arrayDestroy();
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE620, &qword_25DDDE5C0);
    swift_arrayDestroy();
  }

  return sub_25DDC6340(a1, a2, a3, a4);
}

unint64_t sub_25DDC5D88(unint64_t result, uint64_t a2, uint64_t *a3, char *__src)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v6 < 1)
  {
    return result;
  }

  v8 = a3[1];
  v7 = a3[2];
  v9 = v7 + result;
  v10 = *a3;
  if ((v7 + result) >= *a3)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v7 + a2;
  if (v7 + a2 >= v10)
  {
    v13 = *a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
    goto LABEL_143;
  }

  v15 = v9 - v11;
  v16 = v12 - v13;
  if (v14 <= result)
  {
    goto LABEL_31;
  }

  v14 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v17 = __OFSUB__(v14, v10);
  if (v14 >= v10)
  {
    v14 -= v10;
    if (v17)
    {
      goto LABEL_148;
    }
  }

  if (!result)
  {
    goto LABEL_117;
  }

  if (v16 <= 0)
  {
    v8 = *a3;
  }

  else
  {
    v8 = v12 - v13;
  }

  if (v15 <= 0)
  {
    v18 = *a3;
  }

  else
  {
    v18 = v9 - v11;
  }

  if (v7 < v18)
  {
    if (v8 >= v14)
    {
      if (result <= 0)
      {
        goto LABEL_117;
      }

      v46 = &__src[8 * v7];
      if (v14 >= v7 && &__src[8 * v14] < &v46[8 * result] && v14 == v7)
      {
        goto LABEL_117;
      }

      v47 = 8 * result;
      result = &__src[8 * v14];
      v16 = a3;
      v48 = v47;
      goto LABEL_116;
    }

    if (v16 > 0)
    {
      v19 = &__src[8 * (v10 - v6)];
      if (v10 - v6 > 0 || (v7 = &v19[8 * v16], v7 <= __src) || v10 != v6)
      {
        v15 = result;
        v20 = a3;
        v21 = __src;
        memmove(__src, v19, 8 * v16);
        result = v15;
        __src = v21;
        a3 = v20;
      }
    }

    v10 = result - v16;
    if (!__OFSUB__(result, v16))
    {
      goto LABEL_111;
    }

    __break(1u);
LABEL_31:
    v5 = v7 + v8;
    if (!__OFADD__(v7, v8))
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v22 = __OFSUB__(v5, v10);
        if (v5 < v10)
        {
          goto LABEL_39;
        }

        v5 -= v10;
        if (!v22)
        {
          goto LABEL_39;
        }

        __break(1u);
      }

      if (v5 < 0)
      {
        v17 = __OFADD__(v5, v10);
        v5 += v10;
        if (v17)
        {
          goto LABEL_155;
        }
      }

LABEL_39:
      v17 = __OFSUB__(v8, v6);
      v23 = v8 - v6;
      if (!v17)
      {
        v24 = v23 + v7;
        if (v24 >= v10)
        {
          v25 = v10;
        }

        else
        {
          v25 = 0;
        }

        if (!v14)
        {
          goto LABEL_139;
        }

        v4 = v24 - v25;
        if (v24 - v25 <= 0)
        {
          v26 = v10;
        }

        else
        {
          v26 = v24 - v25;
        }

        if (v5 <= 0)
        {
          v27 = v10;
        }

        else
        {
          v27 = v5;
        }

        if (v16 < v27)
        {
          if (v26 >= v15)
          {
            goto LABEL_120;
          }

          v28 = v10 - v15;
          if (__OFSUB__(v10, v15))
          {
LABEL_150:
            __break(1u);
            goto LABEL_151;
          }

          if (v28 > 0)
          {
            result = &__src[8 * v15];
            v29 = &__src[8 * v16];
            if (v15 != v16 || result >= &v29[8 * v28])
            {
              v30 = a3;
              v31 = __src;
              result = memmove(result, v29, 8 * v28);
              __src = v31;
              a3 = v30;
            }

            v17 = __OFADD__(v16, v28);
            v16 += v28;
            if (v17)
            {
              goto LABEL_156;
            }

            v32 = __OFSUB__(v16, *a3);
            if (v16 >= *a3)
            {
              v16 -= *a3;
              if (v32)
              {
                goto LABEL_160;
              }
            }
          }

          v33 = v14 - v28;
          if (__OFSUB__(v14, v28))
          {
            goto LABEL_154;
          }

          if (v33 < 1)
          {
            goto LABEL_139;
          }

          v34 = &__src[8 * v16];
          if (v16 <= 0 && &v34[8 * v33] > __src && !v16)
          {
            goto LABEL_139;
          }

          v35 = 8 * v33;
LABEL_99:
          result = __src;
LABEL_138:
          v59 = a3;
          result = memmove(result, v34, v35);
          a3 = v59;
          goto LABEL_139;
        }

LABEL_76:
        v37 = v10 - v16;
        v38 = __OFSUB__(v10, v16);
        if (v26 >= v15)
        {
          if (v38)
          {
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
            return result;
          }

          if (v37 > 0)
          {
            result = &__src[8 * v15];
            v55 = &__src[8 * v16];
            if (v15 != v16 || result >= &v55[8 * v37])
            {
              v56 = a3;
              v57 = __src;
              result = memmove(result, v55, 8 * v37);
              __src = v57;
              a3 = v56;
            }

            v17 = __OFADD__(v15, v37);
            v15 += v37;
            if (v17)
            {
              goto LABEL_158;
            }

            v58 = __OFSUB__(v15, *a3);
            if (v15 >= *a3)
            {
              v15 -= *a3;
              if (v58)
              {
                goto LABEL_162;
              }
            }
          }

          if (v5 >= 1)
          {
            result = &__src[8 * v15];
            if (v15 < 0 || v15 >= v5 || v15)
            {
              v35 = 8 * v5;
              v34 = __src;
              goto LABEL_138;
            }
          }

          goto LABEL_139;
        }

        if (v38)
        {
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (v37 > 0)
        {
          result = &__src[8 * v15];
          v39 = &__src[8 * v16];
          if (v15 != v16 || result >= &v39[8 * v37])
          {
            v40 = a3;
            v41 = __src;
            result = memmove(result, v39, 8 * v37);
            __src = v41;
            a3 = v40;
          }

          v17 = __OFADD__(v15, v37);
          v15 += v37;
          if (v17)
          {
            goto LABEL_157;
          }

          v42 = __OFSUB__(v15, *a3);
          if (v15 >= *a3)
          {
            v15 -= *a3;
            if (v42)
            {
              goto LABEL_161;
            }
          }
        }

        result = &__src[8 * v15];
        if (v15 < 0 || v15 >= v6 || v15)
        {
          v43 = a3;
          v44 = __src;
          result = memmove(result, __src, 8 * v6);
          __src = v44;
          a3 = v43;
        }

        v45 = v6;
        if (v6 >= *a3)
        {
          v45 = v6 - *a3;
          if (__OFSUB__(v6, *a3))
          {
            goto LABEL_159;
          }
        }

        if (v4 <= 0)
        {
          goto LABEL_139;
        }

        v34 = &__src[8 * v45];
        if (v45 <= 0 && &v34[8 * v4] > __src && !v45)
        {
          goto LABEL_139;
        }

        v35 = 8 * v4;
        goto LABEL_99;
      }

LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v8 >= v14)
  {
    if (__OFSUB__(0, v15))
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    if (v15 > 0)
    {
      v49 = &__src[8 * v16 + -8 * v15];
      if (v49 != __src || v49 >= &__src[8 * v15])
      {
        v16 = result;
        v50 = a3;
        v51 = __src;
        memmove(v49, __src, 8 * v15);
        result = v16;
        __src = v51;
        a3 = v50;
      }
    }

    v10 = result - v15;
    if (__OFSUB__(result, v15))
    {
      goto LABEL_153;
    }

    goto LABEL_111;
  }

  if (v15 > 0)
  {
    v36 = 8 * v15;
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(&__src[8 * v6], __src, v36);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v26 = *a3 - v6;
  if (*a3 < 1 || v26 > 0 || *a3 != v6)
  {
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(__src, &__src[8 * v26], 8 * v6);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v10 = result - v16;
  if (__OFSUB__(result, v16))
  {
    __break(1u);
    goto LABEL_76;
  }

LABEL_111:
  if (v10 < 1)
  {
    goto LABEL_117;
  }

  v52 = a3[2];
  result = &__src[8 * v14];
  v46 = &__src[8 * v52];
  if (v14 >= v52 && result < &v46[8 * v10] && v14 == v52)
  {
    goto LABEL_117;
  }

  v16 = a3;
  v48 = 8 * v10;
LABEL_116:
  result = memmove(result, v46, v48);
  a3 = v16;
LABEL_117:
  a3[2] = v14;
  v53 = a3[1];
  v17 = __OFSUB__(v53, v6);
  v54 = v53 - v6;
  if (!v17)
  {
    goto LABEL_140;
  }

  __break(1u);
LABEL_120:
  if (v14 > 0)
  {
    result = &__src[8 * v15];
    v34 = &__src[8 * v16];
    if (v15 < v16 || result >= &v34[8 * v14] || v15 != v16)
    {
      v35 = 8 * v14;
      goto LABEL_138;
    }
  }

LABEL_139:
  v60 = a3[1];
  v17 = __OFSUB__(v60, v6);
  v54 = v60 - v6;
  if (v17)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

LABEL_140:
  a3[1] = v54;
  return result;
}

unint64_t sub_25DDC6340(unint64_t result, uint64_t a2, uint64_t *a3, char *__src)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v6 < 1)
  {
    return result;
  }

  v8 = a3[1];
  v7 = a3[2];
  v9 = v7 + result;
  v10 = *a3;
  if ((v7 + result) >= *a3)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v7 + a2;
  if (v7 + a2 >= v10)
  {
    v13 = *a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
    goto LABEL_148;
  }

  v15 = v9 - v11;
  v16 = v12 - v13;
  if (v14 <= result)
  {
    goto LABEL_33;
  }

  v14 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  v17 = __OFSUB__(v14, v10);
  if (v14 >= v10)
  {
    v14 -= v10;
    if (v17)
    {
      goto LABEL_153;
    }
  }

  if (!result)
  {
    goto LABEL_122;
  }

  if (v16 <= 0)
  {
    v8 = *a3;
  }

  else
  {
    v8 = v12 - v13;
  }

  if (v15 <= 0)
  {
    v18 = *a3;
  }

  else
  {
    v18 = v9 - v11;
  }

  if (v7 < v18)
  {
    if (v8 >= v14)
    {
      if (result <= 0)
      {
        goto LABEL_122;
      }

      v49 = &__src[24 * v7];
      if (v14 >= v7 && &__src[24 * v14] < &v49[24 * result] && v14 == v7)
      {
        goto LABEL_122;
      }

      v50 = 24 * result;
      result = &__src[24 * v14];
      v16 = a3;
      v51 = v50;
      goto LABEL_121;
    }

    if (v16 > 0)
    {
      v8 = v10 - v6;
      v19 = &__src[24 * (v10 - v6)];
      if (v10 - v6 > 0 || ((v7 = &v19[24 * v16], v7 > __src) ? (v20 = v10 == v6) : (v20 = 0), !v20))
      {
        v15 = result;
        v21 = a3;
        v22 = __src;
        memmove(__src, v19, 24 * v16);
        result = v15;
        __src = v22;
        a3 = v21;
      }
    }

    v10 = result - v16;
    if (!__OFSUB__(result, v16))
    {
      goto LABEL_116;
    }

    __break(1u);
LABEL_33:
    v5 = v7 + v8;
    if (!__OFADD__(v7, v8))
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v23 = __OFSUB__(v5, v10);
        if (v5 < v10)
        {
          goto LABEL_41;
        }

        v5 -= v10;
        if (!v23)
        {
          goto LABEL_41;
        }

        __break(1u);
      }

      if (v5 < 0)
      {
        v17 = __OFADD__(v5, v10);
        v5 += v10;
        if (v17)
        {
          goto LABEL_160;
        }
      }

LABEL_41:
      v17 = __OFSUB__(v8, v6);
      v24 = v8 - v6;
      if (!v17)
      {
        v25 = v24 + v7;
        if (v25 >= v10)
        {
          v26 = v10;
        }

        else
        {
          v26 = 0;
        }

        if (!v14)
        {
          goto LABEL_144;
        }

        v4 = v25 - v26;
        if (v25 - v26 <= 0)
        {
          v27 = v10;
        }

        else
        {
          v27 = v25 - v26;
        }

        if (v5 <= 0)
        {
          v28 = v10;
        }

        else
        {
          v28 = v5;
        }

        if (v16 < v28)
        {
          if (v27 >= v15)
          {
            goto LABEL_125;
          }

          v29 = v10 - v15;
          if (__OFSUB__(v10, v15))
          {
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          if (v29 > 0)
          {
            result = &__src[24 * v15];
            v30 = &__src[24 * v16];
            if (v15 != v16 || result >= &v30[24 * v29])
            {
              v31 = a3;
              v32 = __src;
              result = memmove(result, v30, 24 * v29);
              __src = v32;
              a3 = v31;
            }

            v17 = __OFADD__(v16, v29);
            v16 += v29;
            if (v17)
            {
              goto LABEL_161;
            }

            v33 = __OFSUB__(v16, *a3);
            if (v16 >= *a3)
            {
              v16 -= *a3;
              if (v33)
              {
                goto LABEL_165;
              }
            }
          }

          v34 = v14 - v29;
          if (__OFSUB__(v14, v29))
          {
            goto LABEL_159;
          }

          if (v34 < 1)
          {
            goto LABEL_144;
          }

          v35 = &__src[24 * v16];
          if (v16 <= 0 && &v35[24 * v34] > __src && !v16)
          {
            goto LABEL_144;
          }

          v36 = 3 * v34;
LABEL_101:
          v48 = 8 * v36;
          result = __src;
LABEL_143:
          v63 = a3;
          result = memmove(result, v35, v48);
          a3 = v63;
          goto LABEL_144;
        }

LABEL_78:
        v39 = v10 - v16;
        v40 = __OFSUB__(v10, v16);
        if (v27 >= v15)
        {
          if (v40)
          {
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
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
            return result;
          }

          if (v39 > 0)
          {
            result = &__src[24 * v15];
            v59 = &__src[24 * v16];
            if (v15 != v16 || result >= &v59[24 * v39])
            {
              v60 = a3;
              v61 = __src;
              result = memmove(result, v59, 24 * v39);
              __src = v61;
              a3 = v60;
            }

            v17 = __OFADD__(v15, v39);
            v15 += v39;
            if (v17)
            {
              goto LABEL_163;
            }

            v62 = __OFSUB__(v15, *a3);
            if (v15 >= *a3)
            {
              v15 -= *a3;
              if (v62)
              {
                goto LABEL_167;
              }
            }
          }

          if (v5 >= 1)
          {
            result = &__src[24 * v15];
            if (v15 < 0 || v15 >= v5 || v15)
            {
              v48 = 24 * v5;
              v35 = __src;
              goto LABEL_143;
            }
          }

          goto LABEL_144;
        }

        if (v40)
        {
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        if (v39 > 0)
        {
          result = &__src[24 * v15];
          v41 = &__src[24 * v16];
          if (v15 != v16 || result >= &v41[24 * v39])
          {
            v42 = a3;
            v43 = __src;
            result = memmove(result, v41, 24 * v39);
            __src = v43;
            a3 = v42;
          }

          v17 = __OFADD__(v15, v39);
          v15 += v39;
          if (v17)
          {
            goto LABEL_162;
          }

          v44 = __OFSUB__(v15, *a3);
          if (v15 >= *a3)
          {
            v15 -= *a3;
            if (v44)
            {
              goto LABEL_166;
            }
          }
        }

        result = &__src[24 * v15];
        if (v15 < 0 || v15 >= v6 || v15)
        {
          v45 = a3;
          v46 = __src;
          result = memmove(result, __src, 24 * v6);
          __src = v46;
          a3 = v45;
        }

        v47 = v6;
        if (v6 >= *a3)
        {
          v47 = v6 - *a3;
          if (__OFSUB__(v6, *a3))
          {
            goto LABEL_164;
          }
        }

        if (v4 <= 0)
        {
          goto LABEL_144;
        }

        v35 = &__src[24 * v47];
        if (v47 <= 0 && &v35[24 * v4] > __src && !v47)
        {
          goto LABEL_144;
        }

        v36 = 3 * v4;
        goto LABEL_101;
      }

LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v8 >= v14)
  {
    if (__OFSUB__(0, v15))
    {
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    if (v15 > 0)
    {
      v52 = &__src[24 * v16 + -24 * v15];
      if (v52 != __src || v52 >= &__src[24 * v15])
      {
        v16 = result;
        v54 = a3;
        v55 = __src;
        memmove(v52, __src, 24 * v15);
        result = v16;
        __src = v55;
        a3 = v54;
      }
    }

    v10 = result - v15;
    if (__OFSUB__(result, v15))
    {
      goto LABEL_158;
    }

    goto LABEL_116;
  }

  if (v15 > 0)
  {
    v37 = 24 * v15;
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(&__src[24 * v6], __src, v37);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v27 = *a3;
  v38 = *a3 - v6;
  if (*a3 < 1 || v38 > 0 || v27 != v6)
  {
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(__src, &__src[24 * v38], 24 * v6);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v10 = result - v16;
  if (__OFSUB__(result, v16))
  {
    __break(1u);
    goto LABEL_78;
  }

LABEL_116:
  if (v10 < 1)
  {
    goto LABEL_122;
  }

  v56 = a3[2];
  result = &__src[24 * v14];
  v49 = &__src[24 * v56];
  if (v14 >= v56 && result < &v49[24 * v10] && v14 == v56)
  {
    goto LABEL_122;
  }

  v16 = a3;
  v51 = 24 * v10;
LABEL_121:
  result = memmove(result, v49, v51);
  a3 = v16;
LABEL_122:
  a3[2] = v14;
  v57 = a3[1];
  v17 = __OFSUB__(v57, v6);
  v58 = v57 - v6;
  if (!v17)
  {
    goto LABEL_145;
  }

  __break(1u);
LABEL_125:
  if (v14 > 0)
  {
    result = &__src[24 * v15];
    v35 = &__src[24 * v16];
    if (v15 < v16 || result >= &v35[24 * v14] || v15 != v16)
    {
      v48 = 24 * v14;
      goto LABEL_143;
    }
  }

LABEL_144:
  v64 = a3[1];
  v17 = __OFSUB__(v64, v6);
  v58 = v64 - v6;
  if (v17)
  {
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

LABEL_145:
  a3[1] = v58;
  return result;
}

void *sub_25DDC695C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25DDC697C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25DDC697C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE630, &unk_25DDDE5D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE5D0, &qword_25DDDE210);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25DDC6AB0(uint64_t a1)
{
  *(v1 + 16) = a1;

  sub_25DDB7D74(v2, v3, v4, v5);
  return v1;
}

uint64_t sub_25DDC6AE4(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  sub_25DDB7D74(v3, v4, v5, v6);
  return v2;
}

uint64_t sub_25DDC6BA8@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for BufferedStream._StateMachine(0, *(v4 + 16), a2, a3);
  result = a1(v7);
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
  return result;
}

uint64_t sub_25DDC6C24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v6 = a2;

    a1 = v6;
    a2 = a3;
  }

  return sub_25DDB7474(a1, a2);
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

uint64_t sub_25DDC6D3C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4);
  return sub_25DDC9A38(v4, a2, v6, v7);
}

uint64_t sub_25DDC6EFC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t (**a3)()@<X8>)
{
  v5 = type metadata accessor for BufferedStream._StateMachine(0, *(v3 + 16), a1, a2);
  result = sub_25DDBD03C(v5, v6, v7, v8);
  if (result)
  {
    v11 = result;
    v12 = v10;
    result = swift_allocObject();
    *(result + 16) = v11;
    *(result + 24) = v12;
    v13 = sub_25DDC9278;
  }

  else
  {
    v13 = 0;
  }

  *a3 = v13;
  a3[1] = result;
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

uint64_t sub_25DDC7024@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v5 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v7 = v3[5];
  v9 = type metadata accessor for BufferedStream._StateMachine(0, v5, a1, a2);
  return sub_25DDBEB18(v7, v9, v6, v8, a3);
}

uint64_t sub_25DDC70A4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v7 = v3[5];
  v9 = type metadata accessor for BufferedStream._StateMachine(0, v5, a1, a2);
  result = sub_25DDBFAA8(v6, v8, v7, v9);
  *a3 = result;
  a3[1] = v11;
  a3[2] = v12;
  return result;
}

void sub_25DDC7128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0xF000000000000007) != 0)
  {
    sub_25DDC713C(a1, a2, a3);
  }
}

void sub_25DDC713C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
  }

  else
  {
  }
}

id sub_25DDC718C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {

    return (a3 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
  }
}

uint64_t (*sub_25DDC71DC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t (**a3)()@<X8>))()
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for BufferedStream._StateMachine(0, v5, a1, a2);
  result = sub_25DDC0024(v6, v7, v8, v9);
  *a3 = result;
  a3[1] = v11;
  return result;
}

unint64_t sub_25DDC7248()
{
  result = qword_27FCCE5A0;
  if (!qword_27FCCE5A0)
  {
    sub_25DDDCF48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCCE5A0);
  }

  return result;
}

uint64_t sub_25DDC72A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25DDC9384;

  return sub_25DDBACBC(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_25DDC73A8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for BufferedStream._StateMachine(0, v5, a1, a2);
  return sub_25DDC04D4(v6, v7, a3);
}

uint64_t sub_25DDC7444@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = (*(v3 + 24))(a2);
  if (__OFADD__(v5, result))
  {
    __break(1u);
  }

  else
  {
    *a3 = v5 + result;
  }

  return result;
}

unint64_t sub_25DDC74E0()
{
  result = qword_27FCCE5B8;
  if (!qword_27FCCE5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE5B0, &qword_25DDDDB68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCCE5B8);
  }

  return result;
}

uint64_t sub_25DDC7578(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_25DDC75B8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25DDB8C84;

  return sub_25DDC1C1C(a1, v1);
}

uint64_t sub_25DDC76B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC7708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_25DDC7820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC7874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC78B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25DDC78F8(uint64_t result, int a2, int a3)
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

uint64_t sub_25DDC794C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC79B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC7A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_25DDC7A8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DDC7AAC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_25DDC7ADC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DDC7AF8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_25DDC7B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC7B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC7BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC7BE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_25DDC7C48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_25DDC7CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for BufferedStream._StateMachine._State(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25DDC7D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  result = type metadata accessor for BufferedStream._StateMachine._State.Initial(319, v4, a3, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for BufferedStream._StateMachine._State.Streaming(319, v4, v6, v7);
    if (v11 <= 0x3F)
    {
      result = type metadata accessor for BufferedStream._StateMachine._State.SourceFinished(319, v4, v9, v10);
      if (v12 <= 0x3F)
      {
        result = sub_25DDC7E80();
        if (v13 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_25DDC7E80()
{
  result = qword_27FCCE5C0;
  if (!qword_27FCCE5C0)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27FCCE5C0);
  }

  return result;
}

uint64_t sub_25DDC7EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25DDC7F00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_25DDC7F5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_25DDC7FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BufferedStream._InternalBackPressureStrategy(319, *(a1 + 16), a3, a4);
  if (v4 <= 0x3F)
  {
    sub_25DDC8970(319, &qword_27FCCE5C8, &qword_27FCCE5D0, &qword_25DDDE210, MEMORY[0x277D83D88]);
    if (v5 <= 0x3F)
    {
      sub_25DDDCCE8();
      if (v6 <= 0x3F)
      {
        sub_25DDDD088();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
        sub_25DDDCF38();
        sub_25DDDD088();
        if (v7 <= 0x3F)
        {
          sub_25DDC8970(319, &qword_27FCCE5D8, &qword_27FCCE5E0, qword_25DDDE218, MEMORY[0x277CFB920]);
          if (v8 <= 0x3F)
          {
            sub_25DDC8188();
            if (v9 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_25DDC8188()
{
  if (!qword_27FCCE5E8)
  {
    v0 = sub_25DDDCCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCCE5E8);
    }
  }
}

uint64_t sub_25DDC81D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC8214(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25DDC825C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_25DDC82C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC8304(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25DDC8350(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_25DDC83A4(uint64_t a1)
{
  sub_25DDC8970(319, &qword_27FCCE5C8, &qword_27FCCE5D0, &qword_25DDDE210, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_25DDDD088();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
    sub_25DDDCF38();
    sub_25DDDD088();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE588, &qword_25DDDDB18);
    swift_getTupleTypeMetadata3();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_25DDC84C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for BufferedStream.Source.WriteResult.CallbackToken(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    sub_25DDDD088();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
    sub_25DDDCF38();
    result = swift_getTupleTypeMetadata2();
    if (v6 <= 0x3F)
    {
      result = swift_getTupleTypeMetadata3();
      if (v7 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25DDC85D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25DDC862C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 16) >> 57) >> 6) | (2 * ((*(a1 + 16) >> 57) & 0x38 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25DDC8688(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_25DDC8704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25DDC874C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25DDC8794(uint64_t result, int a2, int a3)
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

void sub_25DDC87D0(uint64_t a1)
{
  sub_25DDC8970(319, &qword_27FCCE5C8, &qword_27FCCE5D0, &qword_25DDDE210, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_25DDDD088();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
    sub_25DDDCF38();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE5A8, &qword_25DDDDB60);
    swift_getTupleTypeMetadata3();
    if (v2 <= 0x3F)
    {
      sub_25DDC88FC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_25DDC88FC()
{
  if (!qword_27FCCE5F0)
  {
    sub_25DDC8970(0, &qword_27FCCE5F8, &qword_27FCCE600, " \v", MEMORY[0x277D83940]);
    if (!v1)
    {
      atomic_store(v0, &qword_27FCCE5F0);
    }
  }
}

void sub_25DDC8970(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_25DDC89D4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE588, &qword_25DDDDB18);
    swift_getTupleTypeMetadata2();
    if (v2 <= 0x3F)
    {
      sub_25DDC9088(319, &qword_27FCCE608, &qword_27FCCE5A8, &qword_25DDDDB60);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_25DDC8AA4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v3)
  {
    v3 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v4 = 24;
  if (v3 > 0x18)
  {
    v4 = v3;
  }

  v5 = 252 - (1u >> (8 * v4));
  if (v4 >= 4)
  {
    v5 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_29;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v10 < 2)
    {
LABEL_29:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_29;
  }

LABEL_18:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_25DDC8BF8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v5)
  {
    v5 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v5 <= 0x18)
  {
    v5 = 24;
  }

  v6 = 252 - (1u >> (8 * v5));
  if (v5 >= 4)
  {
    v6 = 252;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_19;
    }

LABEL_23:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_23;
  }

LABEL_19:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_39:
    if (v8 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_39;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_43:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v8)
  {
    a1[v7] = v14;
  }
}

uint64_t sub_25DDC8DE0(uint64_t a1)
{
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v1 = sub_25DDDCF38();
  v3 = v2;
  result = swift_getTupleTypeMetadata2();
  if (v5 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE588, &qword_25DDDDB18);
    result = swift_getTupleTypeMetadata3();
    if (v6 <= 0x3F)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE5A8, &qword_25DDDDB60);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
      result = swift_getTupleTypeMetadata3();
      if (v7 <= 0x3F)
      {
        if (v3 > 0x3F)
        {
          return v1;
        }

        else
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_25DDC8F48(uint64_t a1)
{
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  sub_25DDDCF38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
  swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    sub_25DDC9088(319, &qword_27FCCE610, &qword_27FCCE588, &qword_25DDDDB18);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25DDC9088(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_25DDC915C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for BufferedStream._StateMachine(0, v5, a1, a2);
  return sub_25DDC2648(v6, v7, a3);
}

uint64_t sub_25DDC91BC(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  if ((a2 & 1) == 0)
  {
    return sub_25DDDCF28();
  }

  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  return sub_25DDDCF18();
}

uint64_t sub_25DDC92A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_25DDB74BC(v2, v3);
  v6 = type metadata accessor for BufferedStream._StateMachine(0, v1, v4, v5);
  return sub_25DDBCD14(v2, v3, v6, v7);
}

uint64_t sub_25DDC93BC(pthread_mutex_t *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_mutexattr_init(&v3);
  result = pthread_mutex_init(a1, &v3);
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25DDC9478(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = a2(a1);
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25DDC949C(uint64_t a1)
{
  sub_25DDDD0D8();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = (*(*v1 + 48) + 7) & 0x1FFFFFFF8;
  v4.__sig = 0;
  *v4.__opaque = 0;
  pthread_mutexattr_init(&v4);
  result = pthread_mutex_init((v1 + v2), &v4);
  if (!result)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_25DDC9614(uint64_t (*a1)(uint64_t))
{
  result = a1(v1 + ((*(*v1 + 48) + 7) & 0x1FFFFFFF8));
  if (result)
  {
    __break(1u);
  }

  return result;
}

void sub_25DDC9670()
{
  if (pthread_mutex_destroy((v0 + ((*(*v0 + 48) + 7) & 0x1FFFFFFF8))))
  {
    __break(1u);
  }

  JUMPOUT(0x25F8A4E60);
}

uint64_t sub_25DDC96D4()
{
  sub_25DDC9670();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

pthread_mutex_t *sub_25DDC9788(void (*a1)(uint64_t))
{
  v4 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v1 + 48) + 7) & 0x1FFFFFFF8;
  result = pthread_mutex_lock((v1 + v5));
  if (result)
  {
    __break(1u);
    goto LABEL_8;
  }

  a1(v1 + v4);
  result = (v1 + v5);
  if (v2)
  {
    result = pthread_mutex_unlock(result);
    if (!result)
    {
      return result;
    }

    __break(1u);
  }

  result = pthread_mutex_unlock(result);
  if (result)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_25DDC9860()
{
  v3 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE638, qword_25DDDE5F0);
  v0 = swift_allocObject();
  v2.__sig = 0;
  *v2.__opaque = 0;
  pthread_mutexattr_init(&v2);
  if (pthread_mutex_init((v0 + 16), &v2))
  {
    __break(1u);
  }

  return v0;
}

uint64_t sub_25DDC9928(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = a2(a1 + 16);
  if (result)
  {
    __break(1u);
  }

  return result;
}

pthread_mutex_t *sub_25DDC99B0(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  result = pthread_mutex_lock((a3 + 16));
  if (result)
  {
    __break(1u);
    goto LABEL_8;
  }

  a1();
  result = (a3 + 16);
  if (v3)
  {
    result = pthread_mutex_unlock(result);
    if (!result)
    {
      return result;
    }

    __break(1u);
  }

  result = pthread_mutex_unlock(result);
  if (result)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_25DDC9A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LockStorage(0, a2, a3, a4);
  v6 = sub_25DDC949C(a1);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

uint64_t sub_25DDC9B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC9BA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DDC9BC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

void type metadata accessor for _opaque_pthread_mutex_t()
{
  if (!qword_27FCCE640)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FCCE640);
    }
  }
}

uint64_t sub_25DDC9C60()
{
  v1 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_hasAlreadyIteratedRequestBody;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_25DDC9CA4(char a1)
{
  v3 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_hasAlreadyIteratedRequestBody;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_25DDC9DE0()
{
  v1 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestStream;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_25DDC9E2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestStream;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_25DDC9EE4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE678, "d\v");
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_25DDC9F5C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseContinuation;
  swift_beginAccess();
  return sub_25DDCC97C(v1 + v3, a1, &qword_27FCCE680, &qword_25DDDE728);
}

uint64_t sub_25DDC9FC4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseContinuation;
  swift_beginAccess();
  sub_25DDCA024(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_25DDCA024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE680, &qword_25DDDE728);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DDCA1C8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

id sub_25DDCA290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestStream] = 0;
  v10 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseContinuation;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE678, "d\v");
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_callbackLock;
  *&v9[v12] = sub_25DDC9860();
  *&v9[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestBody] = a1;
  v9[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_hasAlreadyIteratedRequestBody] = 0;
  v24[0] = 0;

  *&v9[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_hasSuspendedURLSessionTask] = sub_25DDC9A38(v24, MEMORY[0x277D839B0], v13, v14);
  *&v9[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestStreamBufferSize] = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE688, &qword_25DDDE730);
  sub_25DDCD270(&qword_27FCCE690, &qword_27FCCE688, &qword_25DDDE730, MEMORY[0x277D83FB8]);
  sub_25DDB91A4(a3, a4, sub_25DDCA6C0, 0, v15, v24);
  nullsub_1();
  v16 = sub_25DDBC56C();
  v18 = sub_25DDBC59C(v15, v16, v17, v24, v15);
  v20 = v19;
  sub_25DDCC9E4(v24, &qword_27FCCE698, &unk_25DDDE738);
  *&v9[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseBodyStream] = v18;
  *&v9[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseBodyStreamSource] = v20;
  v23.receiver = v9;
  v23.super_class = v4;
  v21 = objc_msgSendSuper2(&v23, sel_init);

  return v21;
}

id sub_25DDCA4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestStream] = 0;
  v10 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseContinuation;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE678, "d\v");
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_callbackLock;
  *&v4[v12] = sub_25DDC9860();
  *&v4[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestBody] = a1;
  v4[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_hasAlreadyIteratedRequestBody] = 0;
  v24[0] = 0;

  *&v4[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_hasSuspendedURLSessionTask] = sub_25DDC9A38(v24, MEMORY[0x277D839B0], v13, v14);
  *&v4[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestStreamBufferSize] = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE688, &qword_25DDDE730);
  sub_25DDCD270(&qword_27FCCE690, &qword_27FCCE688, &qword_25DDDE730, MEMORY[0x277D83FB8]);
  sub_25DDB91A4(a3, a4, sub_25DDCA6C0, 0, v15, v24);
  nullsub_1();
  v16 = sub_25DDBC56C();
  v18 = sub_25DDBC59C(v15, v16, v17, v24, v15);
  v20 = v19;
  sub_25DDCC9E4(v24, &qword_27FCCE698, &unk_25DDDE738);
  *&v4[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseBodyStream] = v18;
  *&v4[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseBodyStreamSource] = v20;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v23, sel_init);

  return v21;
}

uint64_t sub_25DDCA6C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24) >> 1;
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25DDCA6D8(uint64_t a1, uint64_t a2)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_25DDCA6F8, 0, 0);
}

uint64_t sub_25DDCA6F8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v1 + OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_callbackLock);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE6A0, qword_25DDDE748);
  sub_25DDC99B0(sub_25DDCAB24, v4, v3);

  v5 = v0[2];
  v6 = v0[1];

  return v6(v5);
}

void sub_25DDCA7CC(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v27 = a2;
  v28 = a3;
  v4 = sub_25DDDCD08();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  nullsub_1();
  v11 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_hasAlreadyIteratedRequestBody;
  swift_beginAccess();
  if (*(a1 + v11) == 1)
  {
    v12 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestBody;
    if (!*(a1 + OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestBody))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    sub_25DDDCD18();
    (*(v5 + 104))(v8, *MEMORY[0x277D379D0], v4);
    v13 = sub_25DDDCCF8();
    v14 = *(v5 + 8);
    v14(v8, v4);
    v14(v10, v4);
    if ((v13 & 1) == 0)
    {
      nullsub_1();
      [v27 cancel];
      v21 = 0;
      goto LABEL_9;
    }
  }

  *(a1 + v11) = 1;
  v15 = *(a1 + OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestStreamBufferSize);
  v16 = objc_opt_self();
  v29 = 0;
  v30 = 0;
  [v16 getBoundStreamsWithBufferSize:v15 inputStream:&v29 outputStream:&v30];
  v12 = v30;
  v17 = v29;
  if (!v29)
  {
LABEL_12:
    v25 = v12;
    goto LABEL_13;
  }

  if (v30)
  {
    v18 = *(a1 + OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestBody);
    v19 = v30;
    v20 = v17;
    if (v18)
    {
      v21 = v20;
      type metadata accessor for HTTPBodyOutputStreamBridge(0);

      v22 = sub_25DDCDE90(v19, v18);
      v23 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestStream;
      swift_beginAccess();
      v24 = *(a1 + v23);
      *(a1 + v23) = v22;

LABEL_9:
      *v28 = v21;
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_13:
  sub_25DDDD138();
  __break(1u);
}

uint64_t sub_25DDCAD18(int a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[5] = _Block_copy(aBlock);
  v7 = a2;
  v8 = a4;

  return MEMORY[0x2822009F8](sub_25DDCADA4, 0, 0);
}

uint64_t sub_25DDCADA4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *&v2[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_callbackLock];
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE6A0, qword_25DDDE748);
  sub_25DDC99B0(sub_25DDCD5F0, v5, v4);

  v6 = v0[2];
  (v1)[2](v1, v6);
  _Block_release(v1);

  v7 = v0[1];

  return v7();
}

pthread_mutex_t *sub_25DDCAEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_callbackLock);
  v7[2] = a3;
  v7[3] = a4;
  v7[5] = a2;
  return sub_25DDC99B0(sub_25DDCB250, v7, v5);
}

void sub_25DDCAF14(uint64_t a1, unint64_t a2, char *a3, void *a4)
{
  nullsub_1();
  v8 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseBodyStreamSource;
  swift_beginAccess();
  v9 = *&a3[v8];

  sub_25DDCD21C(a1, a2);
  v10 = sub_25DDCD0A0(a1, a2);
  v11 = (2 * v10[2]) | 1;
  v25[0] = v10;
  v25[1] = v10 + 4;
  v25[2] = 0;
  v25[3] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE688, &qword_25DDDE730);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE790, &unk_25DDDE8A0);
  v14 = sub_25DDCD270(&qword_27FCCE798, &qword_27FCCE790, &unk_25DDDE8A0, MEMORY[0x277D84230]);
  v15 = sub_25DDB9C2C(v25, v9, v12, v13, v14);
  if (v4)
  {

    nullsub_1();
    [a4 cancel];
  }

  else
  {
    v17 = v16;
    v23 = v15;

    if ((v17 & 1) == 0)
    {
      v18 = swift_beginAccess();
      MEMORY[0x28223BE20](v18);

      sub_25DDC9AC8(sub_25DDCD2B8);

      if (v26 == 1)
      {
        v19 = *&a3[v8];
        v20 = swift_allocObject();
        *(v20 + 16) = a3;
        *(v20 + 24) = a4;

        v21 = a3;
        v22 = a4;
        sub_25DDBA418(v23, sub_25DDCD3A8, v20, v19);
      }
    }
  }
}

id sub_25DDCB2A8(_BYTE *a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    MEMORY[0x28223BE20](a1);
    nullsub_1();
    return [a4 cancel];
  }

  else
  {
    nullsub_1();
    result = [a4 resume];
    *a1 = 0;
  }

  return result;
}

uint64_t sub_25DDCB4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  return MEMORY[0x2822009F8](sub_25DDCB4DC, 0, 0);
}

uint64_t sub_25DDCB4DC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v1 + OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_callbackLock);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  type metadata accessor for ResponseDisposition();
  sub_25DDC99B0(sub_25DDCB7F0, v4, v3);

  v5 = v0[2];
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_25DDCB5A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE680, &qword_25DDDE728);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE678, "d\v");
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  nullsub_1();
  v13 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseContinuation;
  swift_beginAccess();
  if (!(*(v10 + 48))(a1 + v13, 1, v9))
  {
    (*(v10 + 16))(v12, a1 + v13, v9);
    v16[0] = a2;
    v14 = a2;
    sub_25DDDCF28();
    (*(v10 + 8))(v12, v9);
  }

  (*(v10 + 56))(v8, 1, 1, v9);
  swift_beginAccess();
  sub_25DDCA024(v8, a1 + v13);
  result = swift_endAccess();
  *a3 = 1;
  return result;
}

void type metadata accessor for ResponseDisposition()
{
  if (!qword_27FCCE778)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FCCE778);
    }
  }
}

uint64_t sub_25DDCBA2C(int a1, int a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[5] = _Block_copy(aBlock);
  v8 = a3;
  v9 = a5;

  return MEMORY[0x2822009F8](sub_25DDCBAB8, 0, 0);
}

uint64_t sub_25DDCBAB8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *&v2[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_callbackLock];
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  type metadata accessor for ResponseDisposition();
  sub_25DDC99B0(sub_25DDCD5D8, v5, v4);

  v1[2](v1, v0[2]);
  _Block_release(v1);
  v6 = v0[1];

  return v6();
}

pthread_mutex_t *sub_25DDCBBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_callbackLock);
  v6[2] = a3;
  return sub_25DDC99B0(sub_25DDCBEB0, v6, v4);
}

uint64_t sub_25DDCBC10(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE680, &qword_25DDDE728);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE678, "d\v");
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-v9];
  v15 = a1;
  nullsub_1();
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE688, &qword_25DDDE730);
  sub_25DDBC05C(a1);

  if (a1)
  {
    v12 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseContinuation;
    swift_beginAccess();
    if (!(*(v8 + 48))(a2 + v12, 1, v7))
    {
      (*(v8 + 16))(v10, a2 + v12, v7);
      v16 = a1;
      v13 = a1;
      sub_25DDDCF18();
      (*(v8 + 8))(v10, v7);
    }

    (*(v8 + 56))(v6, 1, 1, v7);
    swift_beginAccess();
    sub_25DDCA024(v6, a2 + v12);
    return swift_endAccess();
  }

  return result;
}

id sub_25DDCBF64()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_25DDCBFF8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BidirectionalStreamingURLSessionDelegate(uint64_t a1)
{
  result = qword_27FCCFC20;
  if (!qword_27FCCFC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25DDCC130(uint64_t a1)
{
  sub_25DDCC1F8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_25DDCC1F8(uint64_t a1)
{
  if (!qword_27FCCE770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE678, "d\v");
    v1 = sub_25DDDD088();
    if (!v2)
    {
      atomic_store(v1, &qword_27FCCE770);
    }
  }
}

uint64_t sub_25DDCC25C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_25DDC9384;

  return sub_25DDCBA2C(v2, v3, v4, v5, v6);
}

uint64_t sub_25DDCC324(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_25DDC9384;

  return v6();
}

uint64_t sub_25DDCC40C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25DDC9384;

  return sub_25DDCC324(v2, v3, v4);
}

uint64_t sub_25DDCC4CC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_25DDB8C84;

  return v7();
}

uint64_t sub_25DDCC5B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25DDC9384;

  return sub_25DDCC4CC(a1, v4, v5, v6);
}

uint64_t sub_25DDCC680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE780, "6\v");
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_25DDCC97C(a3, v23 - v10, &unk_27FCCE780, "6\v");
  v12 = sub_25DDDCF98();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_25DDCC9E4(v11, &unk_27FCCE780, "6\v");
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_25DDDCF88();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_25DDDCF08();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_25DDDCE58() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_25DDCC9E4(a3, &unk_27FCCE780, "6\v");

    return v21;
  }

LABEL_8:
  sub_25DDCC9E4(a3, &unk_27FCCE780, "6\v");
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_25DDCC97C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25DDCC9E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25DDCCA44(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25DDCCB3C;

  return v6(a1);
}

uint64_t sub_25DDCCB3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25DDCCC34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25DDC9384;

  return sub_25DDCCA44(a1, v4);
}

uint64_t sub_25DDCCCEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25DDB8C84;

  return sub_25DDCCA44(a1, v4);
}

uint64_t sub_25DDCCDA4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25DDCCDF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25DDB8C84;

  return sub_25DDCAD18(v2, v3, v5, v4);
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25DDCCEF8()
{
  v1 = *(v0 + 16);
  sub_25DDDD0C8();

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE5A8, &qword_25DDDDB60);
  v3 = sub_25DDDCE48();
  MEMORY[0x25F8A4C20](v3);

  MEMORY[0x25F8A4C20](41, 0xE100000000000000);
  return 0xD00000000000002CLL;
}

uint64_t sub_25DDCCFAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_25DDDD0C8();

  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2 || !__OFSUB__(*(v1 + 24), *(v1 + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v4)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(v1), v1))
  {
LABEL_9:
    v5 = sub_25DDDD178();
    MEMORY[0x25F8A4C20](v5);

    MEMORY[0x25F8A4C20](41, 0xE100000000000000);
    return 0xD00000000000002ALL;
  }

  __break(1u);
  return result;
}

void *sub_25DDCD0A0(uint64_t a1, unint64_t a2)
{
  v4 = sub_25DDDCAF8();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_25DDCCDA4(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_25DDCD534(v10, 0);
      v14 = sub_25DDDCAC8();
      sub_25DDCCDA4(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_25DDCD21C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25DDCD270(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void sub_25DDCD2B8(_BYTE *a1@<X0>, char *a2@<X8>)
{
  if (*a1 == 1)
  {
    nullsub_1();
    v4 = 0;
  }

  else
  {
    v6 = *(v2 + 16);
    nullsub_1();
    [v6 suspend];
    v4 = 1;
    *a1 = 1;
  }

  *a2 = v4;
}

uint64_t sub_25DDCD3A8()
{
  swift_beginAccess();

  sub_25DDC9AC8(sub_25DDCD460);
}

uint64_t sub_25DDCD494()
{
  sub_25DDDD0C8();
  MEMORY[0x25F8A4C20](0xD000000000000041, 0x800000025DDDFDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  sub_25DDDD128();
  return 0;
}

void *sub_25DDCD534(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE7A8, &qword_25DDDE8B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_25DDCD60C()
{
  v0 = sub_25DDDD048();
  MEMORY[0x28223BE20](v0);
  v1 = sub_25DDDCDA8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_25DDDD058();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDD3B60();
  (*(v3 + 104))(v5, *MEMORY[0x277D85268], v2);
  sub_25DDDCD98();
  v7[1] = MEMORY[0x277D84F90];
  sub_25DDD3BAC(&qword_27FCCE970, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE978, ",\v");
  sub_25DDD3BF4(&qword_27FCCE980, &qword_27FCCE978, ",\v");
  sub_25DDDD098();
  result = sub_25DDDD078();
  qword_27FCD0040 = result;
  return result;
}

uint64_t *sub_25DDCD85C()
{
  if (qword_27FCCFC30 != -1)
  {
    swift_once();
  }

  return &qword_27FCD0040;
}

id sub_25DDCD8AC()
{
  if (qword_27FCCFC30 != -1)
  {
    swift_once();
  }

  v0 = qword_27FCD0040;

  return v0;
}