__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t *sub_24DD1C974(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  *(a1 + 16) = *(a2 + 16);
  a1[3] = a2[3];
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 5) = *(a2 + 5);
  return a1;
}

uint64_t sub_24DD1C9D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24DD1CA1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t BufferedStream.Source.write(_:onProduceMore:)(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24DD4B594();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - v14;
  v19[1] = *v4;
  (*(v9 + 16))(v11, a1, v8);
  sub_24DD4B5A4();
  WitnessTable = swift_getWitnessTable();
  BufferedStream.Source.write<A>(contentsOf:onProduceMore:)(v15, a2, a3, v17, v12, WitnessTable);
  return (*(v13 + 8))(v15, v12);
}

uint64_t BufferedStream.Source.finish(throwing:)(uint64_t a1)
{

  sub_24DD209B0(a1);
}

uint64_t BufferedStream.Source.write<A>(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *x8_0@<X8>)
{

  sub_24DD1E768(a1, a3, a4, x8_0);
}

uint64_t BufferedStream.Source.enqueueCallback(callbackToken:onProduceMore:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;

  sub_24DD1EF38(&v7, a2, a3, v5);
}

uint64_t BufferedStream.Source.write<A>(contentsOf:onProduceMore:)(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;

  sub_24DD1E768(a1, a5, a6, &v16);

  if (v17 == 1)
  {
    return a2(0, 0);
  }

  v14 = v16;
  v16 = v12;
  v15 = v14;
  return BufferedStream.Source.enqueueCallback(callbackToken:onProduceMore:)(&v15, a2, a3);
}

uint64_t sub_24DD1CF1C()
{
  sub_24DD1D050(type metadata accessor for BufferedStream._StateMachine.SequenceDeinitializedAction, sub_24DD2B890, sub_24DD2CF4C);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_24DD1CF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v9 = *(*v4 + 80);
  v6 = type metadata accessor for BufferedStream._StateMachine(0, v9, a3, a4);
  return sub_24DD49B88(sub_24DD2BB78, &v8, v5, v6, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_24DD1D050(uint64_t (*a1)(uint64_t, uint64_t), void (*a2)(uint64_t), uint64_t (*a3)(void (*)(uint64_t), void (*)(uint64_t), uint64_t, uint64_t))
{

  sub_24DD1D0FC(a1, a2, a3, v7);

  return v3;
}

uint64_t sub_24DD1D0FC(uint64_t (*a1)(uint64_t, uint64_t), void (*a2)(uint64_t), uint64_t (*a3)(void (*)(uint64_t), void (*)(uint64_t), uint64_t, uint64_t), uint64_t a4)
{
  v8 = v4[2];
  v29 = *(*v4 + 80);
  v9 = type metadata accessor for BufferedStream._StateMachine(0, v29, a3, a4);
  a1(255, v29);
  v10 = sub_24DD4B4B4();
  result = sub_24DD49B88(a2, v28, v8, v9, v10);
  v12 = v33;
  if (v33 != 255)
  {
    v14 = v30;
    v13 = v31;
    v15 = v32;
    if (v33)
    {
      v25 = v32;
      v26 = a3;
      v27 = v30;
      v16 = *(v30 + 2);
      if (v16)
      {
        sub_24DD1C09C();
        v17 = v27 + 40;
        do
        {
          v18 = *(v17 - 8);
          v19 = swift_allocError();
          v30 = v19;
          LOBYTE(v31) = 1;

          v18(&v30);

          v17 += 16;
          --v16;
        }

        while (v16);
      }

      if (v13)
      {

        v13(v20);
        sub_24DD1C134(v13, v25);
        v21 = v27;
        v22 = v13;
      }

      else
      {
        v21 = v27;
        v22 = 0;
      }

      return v26(v21, v22, v25, v12);
    }

    else
    {
      if (v30)
      {

        v14(v23);
        a3(v14, v13, v15, v12);
        v24 = v14;
      }

      else
      {
        v24 = 0;
      }

      return a3(v24, v13, v15, v12);
    }
  }

  return result;
}

uint64_t sub_24DD1D2F0()
{
  sub_24DD1D050(type metadata accessor for BufferedStream._StateMachine.IteratorDeinitializedAction, sub_24DD2B820, sub_24DD2CF4C);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t BufferedStream.Iterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24DD1D380, 0, 0);
}

uint64_t sub_24DD1D380()
{
  v1 = **(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 40) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_24DD1D438;
  v3 = *(v0 + 16);

  return sub_24DD1D624(v3);
}

uint64_t sub_24DD1D438()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_24DD1D5B8;
  }

  else
  {

    v2 = sub_24DD1D554;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DD1D554()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DD1D5B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DD1D624(uint64_t a1)
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

  return MEMORY[0x2822009F8](sub_24DD1D760, 0, 0);
}

uint64_t sub_24DD1D760()
{
  v52 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[4];
  v6 = *(v0[3] + 16);
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  v10 = type metadata accessor for BufferedStream._StateMachine(0, v5, v8, v9);
  sub_24DD49B88(sub_24DD2BDBC, v7, v6, v10, v3);

  (*(v4 + 16))(v1, v2, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v28 = v0[9];
      v30 = v0[5];
      v29 = v0[6];
      v31 = v0[4];
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C0, &qword_24DD4D260);
      v32 = *(v28 + *(swift_getTupleTypeMetadata2() + 48));
      v49 = *(v30 + 32);
      v49(v29, v28, v31);
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = v32 + 40;
        do
        {
          v35 = *(v34 - 8);
          v50 = 0;
          v51 = 0;

          v35(&v50);

          v34 += 16;
          --v33;
        }

        while (v33);
      }

      v36 = v0[10];
      v37 = v0[7];
      v38 = v0[8];
      v40 = v0[5];
      v39 = v0[6];
      v41 = v0[4];
      v42 = v0[2];

      (*(v38 + 8))(v36, v37);
      v49(v42, v39, v41);
      (*(v40 + 56))(v42, 0, 1, v41);
    }

    else
    {
      v15 = v0[9];
      v16 = v0[4];
      v17 = v0[5];
      v18 = v0[2];
      (*(v0[8] + 8))(v0[10], v0[7]);
      (*(v17 + 32))(v18, v15, v16);
      (*(v17 + 56))(v18, 0, 1, v16);
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v19 = v0[9];
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    if (v21)
    {

      v21(v23);
      sub_24DD1C134(v21, v22);
    }

    if (v20)
    {
      swift_willThrow();
      sub_24DD1C134(v21, v22);
      (*(v0[8] + 8))(v0[10], v0[7]);

      v24 = v0[1];
LABEL_20:

      return v24();
    }

    v43 = v0[10];
    v44 = v0[7];
    v45 = v0[8];
    v46 = v0[4];
    v47 = v0[5];
    v48 = v0[2];
    sub_24DD1C134(v21, v22);
    (*(v45 + 8))(v43, v44);
    (*(v47 + 56))(v48, 1, 1, v46);
LABEL_19:

    v24 = v0[1];
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v12 = v0[4];
    v13 = v0[5];
    v14 = v0[2];
    (*(v0[8] + 8))(v0[10], v0[7]);
    (*(v13 + 56))(v14, 1, 1, v12);
    goto LABEL_19;
  }

  v25 = swift_task_alloc();
  v0[11] = v25;
  *v25 = v0;
  v25[1] = sub_24DD1DBA4;
  v26 = v0[2];

  return sub_24DD25A00(v26);
}

uint64_t sub_24DD1DBA4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24DD1DD48;
  }

  else
  {
    v2 = sub_24DD1DCB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DD1DCB8()
{
  (*(v0[8] + 8))(v0[10], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24DD1DD48()
{
  (*(v0[8] + 8))(v0[10], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24DD1DDE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24DD0C914;

  return BufferedStream.Iterator.next()(a1);
}

uint64_t BufferedStream.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  type metadata accessor for BufferedStream.Iterator._Backing(0, *(a1 + 16), a3, a4);

  v6 = sub_24DD2A808(v5);

  *a2 = v6;
  return result;
}

uint64_t sub_24DD1DED8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  BufferedStream.makeAsyncIterator()(a1, a2, a3, a4);
}

void static BufferedStream.Source.BackPressureStrategy.watermark(low:high:)(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 < result)
  {
    __break(1u);
  }

  else
  {
    v7[5] = v5;
    v7[6] = v6;
    v7[0] = result;
    v7[1] = a2;
    memset(&v7[2], 0, 24);
    sub_24DD1DF78(v7, a5, a3, a3, a4);
  }
}

uint64_t sub_24DD1DF5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
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

double sub_24DD1DF78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for BufferedStream._InternalBackPressureStrategy(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(v11, a1, v7);
  v8 = v12;
  result = *v11;
  v10 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v10;
  *(a2 + 32) = v8;
  return result;
}

uint64_t static BufferedStream.Source.BackPressureStrategy.customWatermark(low:high:waterLevelForElement:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, uint64_t a6@<X4>)
{
  if (a2 < result)
  {
    __break(1u);
  }

  else
  {
    v8[7] = v6;
    v9 = v7;
    v8[0] = result;
    v8[1] = a2;
    v8[2] = 0;
    v8[3] = a3;
    v8[4] = a4;
    sub_24DD1DF78(v8, a5, a6, a3, a4);
  }

  return result;
}

uint64_t sub_24DD1E058(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_24DD1E098()
{

  sub_24DD1E0DC();

  return v0;
}

uint64_t sub_24DD1E0DC()
{
  v1 = *(*v0 + 80);
  v2 = sub_24DD4B4B4();
  MEMORY[0x28223BE20](v2);
  v55 = &v51 - v3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v4 = sub_24DD4B324();
  v5 = sub_24DD4B4B4();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v51 - v9;
  v12 = type metadata accessor for BufferedStream._StateMachine.SourceDeinitializedAction(255, v1, v10, v11);
  v13 = sub_24DD4B4B4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v20 = v0[2];
  v60 = v1;
  v23 = type metadata accessor for BufferedStream._StateMachine(0, v1, v21, v22);
  sub_24DD49B88(sub_24DD2B7D4, v59, v20, v23, v13);
  (*(v14 + 16))(v17, v19, v13);
  if ((*(*(v12 - 8) + 48))(v17, 1, v12) == 1)
  {
    return (*(v14 + 8))(v19, v13);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v44 = *v17;
    if (*v17)
    {
      v45 = *(v17 + 1);

      v44(v46);
      sub_24DD1C134(v44, v45);
      sub_24DD1C134(v44, v45);
    }

    return (*(v14 + 8))(v19, v13);
  }

  v54 = v13;
  if (EnumCaseMultiPayload == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C0, &qword_24DD4D260);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
    v26 = v58;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v28 = *&v17[*(TupleTypeMetadata3 + 48)];
    v29 = &v17[*(TupleTypeMetadata3 + 64)];
    v31 = *v29;
    v30 = *(v29 + 1);
    v52 = v31;
    v53 = v28;
    v51 = v30;
    v33 = v56;
    v32 = v57;
    (*(v57 + 32))(v56, v17, v26);
    (*(v32 + 16))(v8, v33, v26);
    v34 = *(v4 - 8);
    v35 = (*(v34 + 48))(v8, 1, v4);
    v36 = v32;
    if (v35 != 1)
    {
      (*(*(v1 - 8) + 56))(v55, 1, 1, v1);
      sub_24DD4B314();
      v36 = v34;
      v26 = v4;
    }

    (*(v36 + 8))(v8, v26);
    v37 = *(v53 + 16);
    if (v37)
    {
      sub_24DD1C09C();
      v38 = v53 + 40;
      do
      {
        v39 = *(v38 - 8);
        v40 = swift_allocError();
        v61 = v40;
        v62 = 1;

        v39(&v61);

        v38 += 16;
        --v37;
      }

      while (v37);
    }

    v41 = v52;
    if (v52)
    {
      v42 = v51;

      v41(v43);
      sub_24DD1C134(v41, v42);
      sub_24DD1C134(v41, v42);
    }

    (*(v57 + 8))(v56, v58);
  }

  else
  {
    v58 = *v17;
    v47 = *(v58 + 16);
    if (v47)
    {
      sub_24DD1C09C();
      v48 = v58 + 40;
      do
      {
        v49 = *(v48 - 8);
        v50 = swift_allocError();
        v61 = v50;
        v62 = 1;

        v49(&v61);

        v48 += 16;
        --v47;
      }

      while (v47);
    }
  }

  return (*(v14 + 8))(v19, v54);
}

uint64_t sub_24DD1E6E0()
{
  sub_24DD1E098();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t BufferedStream.Source.init(storage:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  type metadata accessor for BufferedStream.Source._Backing(0, *(*a1 + 80), a3, a4);
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

uint64_t sub_24DD1E768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v58 = a4;
  v8 = *(*v4 + 80);
  v9 = sub_24DD4B4B4();
  v10 = MEMORY[0x28223BE20](v9);
  v52 = &v51 - v11;
  v53 = *(v8 - 8);
  MEMORY[0x28223BE20](v10);
  v56 = &v51 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v55 = sub_24DD4B324();
  v57 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v51 - v13;
  v16 = type metadata accessor for BufferedStream._StateMachine.WriteAction(0, v8, v14, v15);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v51 - v21;
  v23 = v4[2];
  v60 = v8;
  v61 = a2;
  v62 = a3;
  v63 = a1;
  v26 = type metadata accessor for BufferedStream._StateMachine(0, v8, v24, v25);
  v27 = v64;
  sub_24DD49B88(sub_24DD2BF3C, v59, v23, v26, v16);
  (*(v17 + 16))(v20, v22, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v42 = v55;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v64 = v27;
      v44 = *(TupleTypeMetadata2 + 48);
      (*(v57 + 32))(v54, v20, v42);
      v45 = v53;
      v46 = &v20[v44];
      v47 = v56;
      (*(v53 + 32))(v56, v46, v8);
      v48 = v52;
      (*(v45 + 16))(v52, v47, v8);
      v33 = 1;
      (*(v45 + 56))(v48, 0, 1, v8);
      v49 = v54;
      sub_24DD4B314();
      (*(v45 + 8))(v56, v8);
      (*(v57 + 8))(v49, v42);
      result = (*(v17 + 8))(v22, v16);
      v32 = 0;
    }

    else
    {
      result = (*(v17 + 8))(v22, v16);
      v33 = 0;
      v32 = *v20;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    type metadata accessor for BufferedStream.Source.WriteResult.CallbackToken(255, v8, v29, v30);
    v34 = v55;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v64 = v27;
    v36 = *(TupleTypeMetadata3 + 48);
    v51 = *&v20[*(TupleTypeMetadata3 + 64)];
    v37 = v54;
    (*(v57 + 32))(v54, v20, v34);
    v38 = v53;
    v39 = v56;
    (*(v53 + 32))(v56, &v20[v36], v8);
    v40 = v52;
    (*(v38 + 16))(v52, v39, v8);
    (*(v38 + 56))(v40, 0, 1, v8);
    v41 = v55;
    sub_24DD4B314();
    (*(v38 + 8))(v39, v8);
    (*(v57 + 8))(v37, v41);
    result = (*(v17 + 8))(v22, v16);
    v32 = v51;
    v33 = 0;
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      sub_24DD1C09C();
      swift_allocError();
      swift_willThrow();
      return (*(v17 + 8))(v22, v16);
    }

    result = (*(v17 + 8))(v22, v16);
    v32 = 0;
    v33 = 1;
  }

  v50 = v58;
  *v58 = v32;
  *(v50 + 8) = v33;
  return result;
}

uint64_t BufferedStream.Source.write(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v15 = a3;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24DD4B594();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v5 + 16))(v7, a1, v4);

  sub_24DD4B5A4();
  WitnessTable = swift_getWitnessTable();
  sub_24DD1E768(v11, v8, WitnessTable, v15);
  (*(v9 + 8))(v11, v8);
}

void sub_24DD1EF38(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = v4[2];
  v17 = *(*v4 + 80);
  v18 = v5;
  v19 = a2;
  v20 = a3;
  v7 = type metadata accessor for BufferedStream._StateMachine(0, v17, a3, a4);
  type metadata accessor for BufferedStream._StateMachine.EnqueueProducerAction(255, v17, v8, v9);
  v10 = sub_24DD4B4B4();
  sub_24DD49B88(sub_24DD2BE5C, &v16, v6, v7, v10);
  v11 = v23;
  if ((~v23 & 0xF000000000000007) != 0)
  {
    v13 = v21;
    v12 = v22;
    if (v23 < 0)
    {
      v14 = (v23 & 0x7FFFFFFFFFFFFFFFLL);
      v15 = (v11 & 0x7FFFFFFFFFFFFFFFLL);

      v13(v11 & 0x7FFFFFFFFFFFFFFFLL, 1);
      sub_24DD1BFE8(v13, v12, v11);
    }

    else
    {
      sub_24DD1C04C(v21, v22, v23);
      v13(0, 0);
      sub_24DD1BFE8(v13, v12, v11);
      sub_24DD1BFE8(v13, v12, v11);
    }
  }
}

uint64_t BufferedStream.Source.cancelCallback(callbackToken:)(uint64_t *a1)
{
  v5 = *a1;

  sub_24DD1F0E4(&v5, v1, v2, v3);
}

uint64_t sub_24DD1F0E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = v4[2];
  v16 = *(*v4 + 80);
  v17 = v5;
  v7 = type metadata accessor for BufferedStream._StateMachine(0, v16, a3, a4);
  type metadata accessor for BufferedStream._StateMachine.CancelProducerAction(255, v16, v8, v9);
  v10 = sub_24DD4B4B4();
  result = sub_24DD49B88(sub_24DD2BCEC, &v15, v6, v7, v10);
  v12 = v18;
  if (v18)
  {
    v13 = v19;
    sub_24DD4B334();
    sub_24DD2BA94();
    v14 = swift_allocError();

    sub_24DD4B104();
    v12(v14, 1);
    sub_24DD1C134(v12, v13);

    return sub_24DD1C134(v12, v13);
  }

  return result;
}

uint64_t BufferedStream.Source.write<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = *v4;
  return MEMORY[0x2822009F8](sub_24DD1F22C, 0, 0);
}

{
  v5[5] = a3;
  v5[6] = a4;
  v5[3] = a1;
  v5[4] = a2;
  v7 = *(a2 + 16);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_24DD4B594();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[13] = AssociatedTypeWitness;
  v5[14] = *(AssociatedTypeWitness - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  sub_24DD4B4B4();
  v5[17] = swift_task_alloc();
  v5[18] = *(a3 - 8);
  v5[19] = swift_task_alloc();
  v10 = swift_getAssociatedTypeWitness();
  v5[20] = v10;
  v5[21] = *(v10 - 8);
  v11 = swift_task_alloc();
  v12 = *v4;
  v5[22] = v11;
  v5[23] = v12;

  return MEMORY[0x2822009F8](sub_24DD2015C, 0, 0);
}

uint64_t sub_24DD1F22C()
{
  v16 = v0;
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(v0[3] + 16);

  sub_24DD1E768(v3, v2, v1, &v14);

  if (v15)
  {
    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v14;
    v9 = v0[5];
    v8 = v0[6];
    v10 = v0[4];
    v11 = swift_task_alloc();
    v0[7] = v11;
    v11[2] = v4;
    v11[3] = v10;
    v11[4] = v9;
    v11[5] = v8;
    v11[6] = v7;
    v12 = swift_task_alloc();
    v0[8] = v12;
    v12[2] = v4;
    v12[3] = v10;
    v12[4] = v9;
    v12[5] = v8;
    v12[6] = v7;
    v13 = swift_task_alloc();
    v0[9] = v13;
    *v13 = v0;
    v13[1] = sub_24DD1F3F8;

    return MEMORY[0x282200830](v13, &unk_24DD4CC20);
  }
}

uint64_t sub_24DD1F3F8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24DD1F534;
  }

  else
  {

    v2 = sub_24DD1F51C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DD1F534()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DD1F5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_24DD1F5C8, 0, 0);
}

uint64_t sub_24DD1F5C8()
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
  v5[1] = sub_24DD1F6DC;
  v6 = *(v0 + 16);
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000012, 0x800000024DD52440, sub_24DD2BBBC, v4, v7);
}

uint64_t sub_24DD1F6DC()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DD1F818, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24DD1F818()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DD1F87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  v13[0] = a3;
  v13[1] = a2;
  (*(v7 + 16))(v13 - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  BufferedStream.Source.enqueueCallback(callbackToken:onProduceMore:)(v13, sub_24DD2BC60, v11);
}

uint64_t sub_24DD1F9D8(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    return sub_24DD4B304();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    return sub_24DD4B314();
  }
}

uint64_t BufferedStream.Source.write(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  v4 = *(a2 + 16);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_24DD4B594();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v2;
  v3[10] = v6;
  v3[11] = v7;

  return MEMORY[0x2822009F8](sub_24DD1FB70, 0, 0);
}

uint64_t sub_24DD1FB70()
{
  v1 = v0[7];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v0[2] = v0[11];
  (*(v2 + 16))(v1, v4, v3);
  sub_24DD4B5A4();
  v5 = swift_task_alloc();
  v0[12] = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v0;
  v5[1] = sub_24DD1FC7C;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return BufferedStream.Source.write<A>(contentsOf:)(v7, v9, v8, WitnessTable);
}

uint64_t sub_24DD1FC7C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DD1FE34, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24DD1FE34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DD2015C()
{
  (*(v0[18] + 16))(v0[19], v0[3], v0[5]);
  sub_24DD4B3A4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[24] = AssociatedConformanceWitness;
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_24DD20270;
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];

  return MEMORY[0x282200310](v4, 0, 0, v5, v3, AssociatedConformanceWitness);
}

uint64_t sub_24DD20270()
{

  if (v0)
  {
    v1 = sub_24DD2074C;
  }

  else
  {
    v1 = sub_24DD20380;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24DD20380()
{
  v1 = v0[17];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[9];
    v0[2] = v0[23];
    (*(v3 + 32))(v6, v1, v2);
    sub_24DD4B5A4();
    v7 = swift_task_alloc();
    v0[26] = v7;
    WitnessTable = swift_getWitnessTable();
    *v7 = v0;
    v7[1] = sub_24DD20564;
    v9 = v0[12];
    v10 = v0[10];
    v11 = v0[4];

    return BufferedStream.Source.write<A>(contentsOf:)(v9, v11, v10, WitnessTable);
  }
}

uint64_t sub_24DD20564()
{
  v2 = *v1;
  v2[27] = v0;

  if (v0)
  {
    (*(v2[11] + 8))(v2[12], v2[10]);

    return MEMORY[0x2822009F8](sub_24DD208D8, 0, 0);
  }

  else
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v2[24] = AssociatedConformanceWitness;
    v4 = swift_task_alloc();
    v2[25] = v4;
    *v4 = v2;
    v4[1] = sub_24DD20270;
    v5 = v2[20];
    v7 = v2[16];
    v6 = v2[17];

    return MEMORY[0x282200310](v6, 0, 0, v7, v5, AssociatedConformanceWitness);
  }
}

uint64_t sub_24DD2074C()
{
  v1 = *(v0[14] + 32);
  v1(v0[15], v0[16], v0[13]);
  swift_getAssociatedConformanceWitness();
  v2 = sub_24DD4B634();
  v3 = v0[15];
  if (v2)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
  }

  else
  {
    v4 = v0[13];
    swift_allocError();
    v1(v5, v3, v4);
  }

  (*(v0[21] + 8))(v0[22], v0[20]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24DD208D8()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24DD209B0(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_24DD4B4B4();
  MEMORY[0x28223BE20](v4);
  v42 = &v40 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v6 = sub_24DD4B324();
  v43 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v11 = type metadata accessor for BufferedStream._StateMachine.FinishAction(255, v3, v9, v10);
  v12 = sub_24DD4B4B4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  v19 = v1[2];
  v45 = v3;
  v46 = a1;
  v22 = type metadata accessor for BufferedStream._StateMachine(0, v3, v20, v21);
  sub_24DD49B88(sub_24DD2C020, v44, v19, v22, v12);
  (*(v13 + 16))(v16, v18, v12);
  if ((*(*(v11 - 8) + 48))(v16, 1, v11) == 1)
  {
    return (*(v13 + 8))(v18, v12);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v33 = *v16;
    if (*v16)
    {
      v34 = *(v16 + 1);

      v33(v35);
      sub_24DD1C134(v33, v34);
      sub_24DD1C134(v33, v34);
    }

    return (*(v13 + 8))(v18, v12);
  }

  v41 = v12;
  if (EnumCaseMultiPayload != 1)
  {
    v43 = *v16;
    v36 = *(v43 + 2);
    if (v36)
    {
      sub_24DD1C09C();
      v37 = v43 + 40;
      do
      {
        v38 = *(v37 - 8);
        v39 = swift_allocError();
        v47 = v39;
        v48 = 1;

        v38(&v47);

        v37 += 16;
        --v36;
      }

      while (v36);
    }

    return (*(v13 + 8))(v18, v41);
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00D8, &unk_24DD4D290);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v26 = *&v16[*(TupleTypeMetadata3 + 48)];
  v27 = &v16[*(TupleTypeMetadata3 + 64)];
  v28 = *v27;
  v40 = *(v27 + 1);
  v29 = v43;
  (*(v43 + 4))(v8, v16, v6);
  if (!v26)
  {
    (*(*(v3 - 8) + 56))(v42, 1, 1, v3);
    sub_24DD4B314();
    if (v28)
    {
      goto LABEL_7;
    }

LABEL_15:

    goto LABEL_16;
  }

  v47 = v26;
  v30 = v26;
  sub_24DD4B304();
  if (!v28)
  {
    goto LABEL_15;
  }

LABEL_7:
  v31 = v40;

  v28(v32);
  sub_24DD1C134(v28, v31);

  sub_24DD1C134(v28, v31);
LABEL_16:
  v29[1](v8, v6);
  return (*(v13 + 8))(v18, v41);
}

uint64_t static BufferedStream.makeStream(of:throwing:backPressureStrategy:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for BufferedStream._InternalBackPressureStrategy(0, a7, a3, a4);
  v12 = *(v11 - 8);
  (*(v12 + 32))(v26, a6, v11);
  type metadata accessor for BufferedStream._BackPressuredStorage(0, a7, v13, v14);
  (*(v12 + 16))(&v25, v26, v11);
  v15 = swift_allocObject();
  sub_24DD213F0(v26, v16, v17, v18);
  type metadata accessor for BufferedStream.Source._Backing(0, *(*v15 + 80), v19, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  sub_24DD21038(v15, a1, v22, v23);
  *a2 = v21;
}

uint64_t sub_24DD20FF8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24DD213F0(a1, v3, v4, v5);
  return v2;
}

uint64_t sub_24DD21038@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  type metadata accessor for BufferedStream._Backing(0, *(*a1 + 80), a3, a4);
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

uint64_t sub_24DD2108C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3[3];
  if (!v4)
  {
LABEL_5:
    sub_24DD4B074();
    swift_getWitnessTable();
    sub_24DD4B6D4();
    swift_getWitnessTable();
    v6 = sub_24DD4B3E4();
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
  sub_24DD4B074();

  swift_getWitnessTable();
  sub_24DD4B6D4();
  swift_getWitnessTable();
  sub_24DD4B264();
  v6 = sub_24DD1C134(v4, v5);
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

uint64_t sub_24DD21270(uint64_t result)
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
  result = sub_24DD1C134(v3, v5);
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

uint64_t sub_24DD21310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = v4[1];
  v12 = *(v4 + 4);
  type metadata accessor for BufferedStream._WatermarkBackPressureStrategy(0, *(a4 + 16), a3, a4);
  v8 = sub_24DD2108C(a1, a2, a3);
  *v4 = v10;
  v4[1] = v11;
  *(v4 + 4) = v12;
  return v8 & 1;
}

uint64_t sub_24DD2139C(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 4);
  v2 = sub_24DD21270(a1);
  *v1 = v4;
  v1[1] = v5;
  *(v1 + 4) = v6;
  return v2 & 1;
}

void *sub_24DD213F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for BufferedStream._StateMachine(0, v6, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  sub_24DD214F0(a1, v6, &v17 - v9, v11, v12);
  v15 = sub_24DD49EF8(v10, v7, v13, v14);
  (*(v8 + 8))(v10, v7);
  v4[2] = v15;
  return v4;
}

uint64_t sub_24DD214F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
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

uint64_t sub_24DD215AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_24DD1CA8C(v21, v22);

      v25 = v21;
      v26 = v22;
LABEL_15:
      sub_24DD1C134(v25, v26);
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
        sub_24DD1C134(v18, v19);
LABEL_8:
        sub_24DD1C134(v21, v22);
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
      sub_24DD1CA8C(*(v10 + 6), *(v10 + 7));
      (*(v8 + 8))(v10, v7);
      return v21;
    }

    v36 = v8;
    v37 = v7;
    v39 = MEMORY[0x277D84F90];
    sub_24DD286D4(0, v28 & ~(v28 >> 63), 0);
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
          sub_24DD286D4((v33 > 1), v34 + 1, 1);
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

  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD21A18(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_24DD21A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD21E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_24DD1CA8C(v18, v23);

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
        sub_24DD1CA8C(*(v10 + 6), *(v10 + 7));
        (*(v8 + 8))(v10, v7);
        return v18;
      }

      v34 = v8;
      v35 = v7;
      v37 = MEMORY[0x277D84F90];
      sub_24DD286D4(0, v26 & ~(v26 >> 63), 0);
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
            sub_24DD286D4((v31 > 1), v32 + 1, 1);
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
    sub_24DD1C134(v21, v22);
    return v18;
  }

  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD222AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  sub_24DD4B4B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v6 = sub_24DD4B324();
  v79 = sub_24DD4B4B4();
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
      result = sub_24DD4B5B4();
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
    sub_24DD1C134(v23, v24);
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
  sub_24DD4B074();
  v36 = v12;
  swift_getWitnessTable();
  v37 = sub_24DD4B3F4();
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
      sub_24DD286D4(0, v39 & ~(v39 >> 63), 0);
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
          sub_24DD286D4((v47 > 1), v46 + 1, 1);
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
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C0, &qword_24DD4D260);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
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
    sub_24DD1CA8C(v69, v70);
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

      sub_24DD1CA8C(v51, v52);
      v83 = MEMORY[0x277D84F90];
      sub_24DD286D4(0, v54 & ~(v54 >> 63), 0);
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
          sub_24DD286D4((v62 > 1), v61 + 1, 1);
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

    sub_24DD1CA8C(v51, v52);
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

uint64_t sub_24DD22B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, char *a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v142 = a4;
  v141 = a3;
  v140 = a1;
  v134 = a2;
  v8 = *(a2 + 16);
  v9 = sub_24DD4B4B4();
  v128 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v131 = &v119 - v11;
  v133 = *(v8 - 8);
  MEMORY[0x28223BE20](v10);
  v130 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v129 = v9;
  v13 = sub_24DD4B324();
  v139 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v132 = &v119 - v14;
  v17 = type metadata accessor for BufferedStream._StateMachine._State.Streaming(0, v8, v15, v16);
  v143 = *(v17 - 8);
  v144 = v17;
  MEMORY[0x28223BE20](v17);
  v137 = &v119 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = sub_24DD4B4B4();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v119 - v20;
  v145 = v13;
  v136 = sub_24DD4B4B4();
  v135 = *(v136 - 8);
  v22 = MEMORY[0x28223BE20](v136);
  v24 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v119 - v25;
  v29 = type metadata accessor for BufferedStream._StateMachine._State(0, v8, v27, v28);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v119 - v33;
  v146 = v35;
  (*(v35 + 16))(&v119 - v33, v6, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v126 = v21;
    v127 = a5;
    if (!EnumCaseMultiPayload)
    {
      v144 = v6;
      v39 = *(v34 + 4);
      LODWORD(v136) = v34[40];
      v40 = *(v34 + 6);
      v41 = *(v34 + 7);
      v42 = *(v34 + 1);
      v150[0] = *v34;
      v150[1] = v42;
      v151 = v39;
      v143 = v40;
      v137 = v41;
      sub_24DD1CA8C(v40, v41);
      v149 = sub_24DD4B064();
      sub_24DD4B074();
      sub_24DD4B034();
      swift_getWitnessTable();
      sub_24DD4B144();
      v44 = v152;
      v43 = v153;
      v45 = v154;
      v48 = type metadata accessor for BufferedStream._InternalBackPressureStrategy(0, v8, v46, v47);
      v49 = sub_24DD21310(v44, v43, v45, v48);

      v50 = 0;
      if (v49)
      {
LABEL_6:
        v142 = v50;
        v52 = *(v48 - 8);
        (*(v52 + 32))(&v152, v150, v48);
        v53 = v149;
        (*(v139 + 56))(v26, 1, 1, v145);
        (*(v52 + 16))(&v147, &v152, v48);

        v54 = *sub_24DD4B024();
        swift_retain_n();
        v125 = v8;
        v118 = v8;
        v55 = v49 & 1;
        v56 = v143;
        v57 = v137;
        sub_24DD28070(&v152, v136, v143, v137, v53, v26, v54, v54, v32, v55, v118);
        sub_24DD1C134(v56, v57);

        (*(v52 + 8))(&v152, v48);
        swift_storeEnumTagMultiPayload();
        (*(v146 + 40))(v144, v32, v29);
        v147 = v142;
        v148 = v55;
        v58 = v126;
        (*(*(TupleTypeMetadata2 - 8) + 56))(v126, 1, 1);
        return sub_24DD28248(&v147, v58, v125, v127);
      }

      v51 = *(v134 + 28);
      v50 = *(v144 + v51);
      if (v50 != -1)
      {
        *(v144 + v51) = v50 + 1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_29;
    }

    v60 = v144;
    v61 = v137;
    (*(v143 + 32))(v137, v34, v144);
    v62 = *(v146 + 8);
    v146 += 8;
    v124 = v62;
    v62(v6, v29);
    swift_storeEnumTagMultiPayload();
    sub_24DD28978(sub_24DD2896C, 0, *(v61 + 64), MEMORY[0x277CFB918], v8, MEMORY[0x277D84A98], MEMORY[0x277D83B88], MEMORY[0x277D84AC0], v117);
    v63 = v152;
    v64 = sub_24DD4B074();
    sub_24DD4B034();
    *&v150[0] = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0108, &qword_24DD4D2D8);
    swift_getWitnessTable();
    sub_24DD2BFA4();
    v141 = v64;
    v142 = (v61 + 64);
    sub_24DD4B134();
    v65 = v152;
    v66 = v153;
    v67 = v6;
    v68 = v154;
    v140 = type metadata accessor for BufferedStream._InternalBackPressureStrategy(0, v8, v69, v70);
    v71 = sub_24DD21310(v65, v66, v68, v140);

    v122 = *(v60 + 52);
    *(v61 + v122) = v71 & 1;
    v72 = v135;
    v73 = *(v135 + 16);
    v123 = *(v60 + 40);
    v74 = v136;
    v73(v24, v61 + v123, v136);
    v75 = v8;
    v76 = v139;
    v77 = v145;
    if ((*(v139 + 48))(v24, 1, v145) != 1)
    {
      v121 = v71;
      v82 = v124;
      v83 = v76;
      v85 = *(v76 + 32);
      v84 = (v76 + 32);
      v86 = v132;
      v120 = v85;
      v85(v132, v24, v77);
      v87 = v131;
      v88 = v77;
      sub_24DD4B054();
      v89 = v133;
      if ((*(v133 + 48))(v87, 1, v75) != 1)
      {
        v142 = v84;
        v100 = *(v89 + 32);
        v101 = v87;
        v102 = v130;
        v125 = v75;
        v133 = v89 + 32;
        v141 = v100;
        v100(v130, v101, v75);
        v103 = v137;
        v104 = sub_24DD2139C(v102);
        *(v103 + v122) = v104 & 1;
        v105 = v123;
        (*(v135 + 8))(v103 + v123, v136);
        (*(v83 + 56))(v103 + v105, 1, 1, v88);
        v82(v67, v29);
        v106 = v103;
        v108 = v143;
        v107 = v144;
        (*(v143 + 16))(v67, v103, v144);
        swift_storeEnumTagMultiPayload();
        if (v104)
        {
          v109 = 0;
          v110 = v127;
        }

        else
        {
          v112 = *(v134 + 28);
          v109 = *(v67 + v112);
          v110 = v127;
          if (v109 == -1)
          {
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          *(v67 + v112) = v109 + 1;
        }

        v113 = v125;
        v152 = v109;
        LOBYTE(v153) = v104 & 1;
        v114 = TupleTypeMetadata2;
        v115 = *(TupleTypeMetadata2 + 48);
        v116 = v126;
        v120(v126, v132, v145);
        v141((v116 + v115), v130, v113);
        (*(*(v114 - 8) + 56))(v116, 0, 1, v114);
        sub_24DD28248(&v152, v116, v113, v110);
        return (*(v108 + 8))(v106, v107);
      }

      (*(v83 + 8))(v86, v88);
      (*(v128 + 8))(v87, v129);
      v90 = v67;
      v82(v67, v29);
      v92 = v143;
      v91 = v144;
      v93 = v137;
      (*(v143 + 16))(v90, v137, v144);
      swift_storeEnumTagMultiPayload();
      v94 = v127;
      v95 = v121;
      if (v121)
      {
        v96 = 0;
        v97 = v126;
      }

      else
      {
        v111 = *(v134 + 28);
        v96 = *(v90 + v111);
        v97 = v126;
        if (v96 == -1)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        *(v90 + v111) = v96 + 1;
      }

      v152 = v96;
      LOBYTE(v153) = v95 & 1;
      (*(*(TupleTypeMetadata2 - 8) + 56))(v97, 1, 1);
      sub_24DD28248(&v152, v97, v75, v94);
      return (*(v92 + 8))(v93, v91);
    }

    (*(v72 + 8))(v24, v74);
    v124(v67, v29);
    v79 = v143;
    v78 = v144;
    (*(v143 + 16))(v67, v61, v144);
    swift_storeEnumTagMultiPayload();
    v80 = v127;
    if (v71)
    {
      v81 = 0;
    }

    else
    {
      v98 = *(v134 + 28);
      v81 = *(v67 + v98);
      if (v81 == -1)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      *(v67 + v98) = v81 + 1;
    }

    v152 = v81;
    LOBYTE(v153) = v71 & 1;
    v99 = v126;
    (*(*(TupleTypeMetadata2 - 8) + 56))(v126, 1, 1);
    sub_24DD28248(&v152, v99, v75, v80);
    return (*(v79 + 8))(v61, v78);
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v146 + 8))(v34, v29);
LABEL_13:
    type metadata accessor for BufferedStream._StateMachine.WriteAction(0, v8, v37, v38);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 3)
  {
    goto LABEL_13;
  }

LABEL_32:
  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD23AE0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a4 + 16);
  v10 = type metadata accessor for BufferedStream._StateMachine._State.Streaming(0, v9, a3, a4);
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v16 = type metadata accessor for BufferedStream._StateMachine._State(0, v9, v14, v15);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - v18;
  v20 = *a1;
  (*(v17 + 16))(&v37 - v18, v5, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v41 = a2;
    v42 = a3;
    if (EnumCaseMultiPayload == 1)
    {
      v39 = *(v11 + 32);
      v40 = v11 + 32;
      v39(v13, v19, v10);
      v22 = v10[12];
      v23 = *&v13[v22];
      v24 = v23[3];
      if (v24)
      {
        v25 = 0;
        while (1)
        {
          if ((v24 & ~(v24 >> 63)) == v25)
          {
            __break(1u);
            goto LABEL_29;
          }

          v26 = v23[4];
          v27 = v25 + v26 >= v23[2] ? v23[2] : 0;
          if (v23[v25 + 5 + v26 - v27] == v20)
          {
            break;
          }

          if (v24 == ++v25)
          {
            goto LABEL_13;
          }
        }

        v35 = *(v17 + 8);
        v35(v5, v16);
        swift_storeEnumTagMultiPayload();
        if (v25 >= v23[3])
        {
          goto LABEL_30;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24DD4910C();
        }

        v36 = *&v13[v22];
        if (v25 < *(v36 + 24))
        {
          sub_24DD2987C(v25, v25 + 1, (v36 + 16), v36 + 40, v43);

          sub_24DD29C34(v25, v25 + 1, (v36 + 16), (v36 + 40));

          v35(v5, v16);
          (*(v11 + 16))(v5, v13, v10);
          swift_storeEnumTagMultiPayload();
          sub_24DD4B334();
          sub_24DD2BA94();
          swift_allocError();
          sub_24DD4B104();
          (*(v11 + 8))(v13, v10);

          return v41;
        }
      }

      else
      {
LABEL_13:
        if (v13[v10[13]] == 1)
        {
          (*(v11 + 8))(v13, v10);

          return v41;
        }

        v38 = *(v17 + 8);
        v38(v5, v16);
        swift_storeEnumTagMultiPayload();
        v29 = swift_allocObject();
        *(v29 + 16) = v41;
        *(v29 + 24) = v42;
        v30 = v10[11];
        v31 = *(*&v13[v30] + 24);
        v32 = v31 + 1;
        if (!__OFADD__(v31, 1))
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v34 = *&v13[v30];
          if (*(v34 + 16) < v32 || (isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24DD28A7C(isUniquelyReferenced_nonNull_native, v32, 0);
            v34 = *&v13[v30];
          }

          sub_24DD29A5C((v34 + 16), v34 + 40, v20, sub_24DD2BF1C, v29);

          v38(v5, v16);
          v39(v5, v13, v10);
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
      sub_24DD1C09C();
      swift_allocError();

      return a2;
    }

    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_16;
    }
  }

  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t (*sub_24DD24060(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v7 = *(a2 + 16);
  v8 = type metadata accessor for BufferedStream._StateMachine._State.Streaming(0, v7, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v14 = type metadata accessor for BufferedStream._StateMachine._State(0, v7, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  v18 = *a1;
  (*(v15 + 16))(&v42 - v16, v5, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v45 = *(v9 + 32);
      v45(v11, v17, v8);
      v20 = *(v8 + 44);
      v21 = *&v11[v20];
      v22 = v21[3];
      v46 = v9 + 32;
      if (v22)
      {
        v23 = 0;
        while (1)
        {
          if ((v22 & ~(v22 >> 63)) == v23)
          {
            __break(1u);
            goto LABEL_31;
          }

          v24 = v21[4];
          v25 = v23 + v24 >= v21[2] ? v21[2] : 0;
          if (v21[3 * v23 + 5 + 3 * (v24 - v25)] == v18)
          {
            break;
          }

          if (v22 == ++v23)
          {
            goto LABEL_13;
          }
        }

        v34 = *(v15 + 8);
        v34(v5, v14);
        swift_storeEnumTagMultiPayload();
        if (v23 >= v21[3])
        {
          goto LABEL_32;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24DD491D0();
        }

        v44 = v34;
        v35 = *&v11[v20];
        if (v23 < *(v35 + 24))
        {
          v36 = *(v35 + 32);
          if (v36 + v23 >= *(v35 + 16))
          {
            v37 = *(v35 + 16);
          }

          else
          {
            v37 = 0;
          }

          v38 = v35 + 40 + 24 * (v36 - v37 + v23);
          v39 = *(v38 + 16);
          v43 = *(v38 + 8);

          sub_24DD29B38(v23, v23 + 1, (v35 + 16), (v35 + 40));

          v40 = swift_allocObject();
          v41 = v44;
          *(v40 + 16) = v43;
          *(v40 + 24) = v39;
          v41(v5, v14);
          v45(v5, v11, v8);
          swift_storeEnumTagMultiPayload();
          return sub_24DD2BD64;
        }
      }

      else
      {
LABEL_13:
        v26 = *(v15 + 8);
        v26(v5, v14);
        swift_storeEnumTagMultiPayload();
        v27 = *(v8 + 48);
        v28 = *(*&v11[v27] + 24);
        v29 = v28 + 1;
        if (!__OFADD__(v28, 1))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v31 = *&v11[v27];
          if (*(v31 + 16) < v29 || (isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24DD28EDC(isUniquelyReferenced_nonNull_native, v29, 0);
            v31 = *&v11[v27];
          }

          sub_24DD29ADC((v31 + 16), v31 + 40, v18);
          v26(v5, v14);
          v45(v5, v11, v8);
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
    result = sub_24DD4B5B4();
    __break(1u);
    return result;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v15 + 8))(v17, v14);
    return 0;
  }

  v33 = EnumCaseMultiPayload;
  result = 0;
  if (v33 != 3)
  {
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_24DD24514@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v92 = a3;
  v6 = *(a2 + 16);
  sub_24DD4B4B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v7 = sub_24DD4B324();
  v8 = sub_24DD4B4B4();
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
        result = sub_24DD4B5B4();
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
    v36 = sub_24DD4B064();
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
    sub_24DD1CA8C(v34, v33);
    (*(v21 + 40))(v4, v24, v20);
    sub_24DD1C134(v30, v31);
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

      sub_24DD1CA8C(v51, v49);
      v95 = MEMORY[0x277D84F90];
      sub_24DD286D4(0, v54 & ~(v54 >> 63), 0);
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
          sub_24DD286D4((v63 > 1), v62 + 1, 1);
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

    sub_24DD1CA8C(v51, v49);
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
    sub_24DD4B074();
    swift_getWitnessTable();
    if ((sub_24DD4B3F4() & 1) == 0)
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
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00D8, &unk_24DD4D290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
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
    sub_24DD1CA8C(v77, v78);
    return (*(v90 + 8))(v46, v91);
  }
}

uint64_t sub_24DD24DEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v104 = a2;
  v3 = *(a1 + 16);
  v4 = sub_24DD4B4B4();
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
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  *&v106 = v4;
  v18 = sub_24DD4B324();
  v19 = sub_24DD4B4B4();
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
      sub_24DD4B074();
      sub_24DD4B054();
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
      sub_24DD1CA8C(v42, v41);
      v101 = sub_24DD4B064();
      (*(*(v18 - 8) + 56))(v25, 1, 1, v18);
      v43 = *sub_24DD4B024();
      swift_retain_n();
      sub_24DD28070(v108, v106, v42, v41, v101, v25, v43, v43, v31, 0, v38);
      (*(v40 + 8))(v108, v39);
      sub_24DD1C134(v42, v41);
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
      sub_24DD4B074();
      v63 = v95;
      sub_24DD4B054();
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
      v75 = sub_24DD2139C(v66);
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
        *&v67[v77] = *sub_24DD4B024();

        v87 = v102;
        (v95)(v102, v28);
        (v94)(v87, v67, v76);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C0, &qword_24DD4D260);
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
      sub_24DD286D4(0, v79 & ~(v79 >> 63), 0);
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
            sub_24DD286D4((v86 > 1), v85 + 1, 1);
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

  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD25A00(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_24DD25A48, 0, 0);
}

uint64_t sub_24DD25A48()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  sub_24DD4B4B4();
  *v1 = v0;
  v1[1] = sub_24DD25B28;
  v2 = *(v0 + 16);

  return MEMORY[0x282200830](v2, &unk_24DD4D288);
}

uint64_t sub_24DD25B28()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DD2CF28, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24DD25C5C(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *a2;
  return MEMORY[0x2822009F8](sub_24DD25CA4, 0, 0);
}

uint64_t sub_24DD25CA4()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  v2 = sub_24DD4B4B4();
  *v1 = v0;
  v1[1] = sub_24DD25D8C;
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x2822008A0](v3, 0, 0, 0x4E646E6570737573, 0xED00002928747865, sub_24DD2BAEC, v4, v2);
}

uint64_t sub_24DD25D8C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DD25EC0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24DD25ED8(uint64_t a1, void *a2)
{
  v4 = *(*a2 + 80);
  v5 = sub_24DD4B4B4();
  v6 = MEMORY[0x28223BE20](v5);
  v65 = &v61 - v7;
  v67 = *(v4 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v64 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v61 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v66 = sub_24DD4B324();
  v68 = *(v66 - 8);
  v12 = MEMORY[0x28223BE20](v66);
  v62 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v63 = &v61 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v61 - v16;
  Action = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction(255, v4, v18, v19);
  v21 = sub_24DD4B4B4();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v61 - v26;
  v28 = a2[2];
  v70 = v4;
  v71 = a1;
  v31 = type metadata accessor for BufferedStream._StateMachine(0, v4, v29, v30);
  sub_24DD49B88(sub_24DD2BB0C, v69, v28, v31, v21);
  (*(v22 + 16))(v25, v27, v21);
  if ((*(*(Action - 8) + 48))(v25, 1, Action) == 1)
  {
    return (*(v22 + 8))(v27, v21);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v58 = v68;
      v59 = v66;
      (*(v68 + 32))(v17, v25, v66);
      (*(v67 + 56))(v65, 1, 1, v4);
      sub_24DD4B314();
      (*(v58 + 8))(v17, v59);
      return (*(v22 + 8))(v27, v21);
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00D8, &unk_24DD4D290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
    v37 = v66;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v39 = *&v25[*(TupleTypeMetadata3 + 48)];
    v40 = &v25[*(TupleTypeMetadata3 + 64)];
    v41 = *v40;
    v42 = *(v40 + 1);
    v43 = v62;
    (*(v68 + 32))(v62, v25, v37);
    if (v39)
    {
      v72 = v39;
      v44 = v39;
      sub_24DD4B304();
      v45 = v43;
      if (v41)
      {
LABEL_8:

        v41(v46);
        sub_24DD1C134(v41, v42);

        sub_24DD1C134(v41, v42);
LABEL_16:
        (*(v68 + 8))(v45, v37);
        return (*(v22 + 8))(v27, v21);
      }
    }

    else
    {
      (*(v67 + 56))(v65, 1, 1, v4);
      sub_24DD4B314();
      v45 = v43;
      if (v41)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C0, &qword_24DD4D260);
    v47 = v66;
    v48 = swift_getTupleTypeMetadata3();
    v49 = *(v48 + 48);
    v50 = *&v25[*(v48 + 64)];
    (*(v68 + 32))(v63, v25, v47);
    v51 = v67;
    v52 = &v25[v49];
    v53 = v64;
    (*(v67 + 32))(v64, v52, v4);
    v54 = v65;
    (*(v51 + 16))(v65, v53, v4);
    (*(v51 + 56))(v54, 0, 1, v4);
    sub_24DD4B314();
    v55 = *(v50 + 16);
    if (v55)
    {
      v56 = v50 + 40;
      do
      {
        v57 = *(v56 - 8);
        v72 = 0;
        v73 = 0;

        v57(&v72);

        v56 += 16;
        --v55;
      }

      while (v55);
    }

    (*(v67 + 8))(v64, v4);
    (*(v68 + 8))(v63, v47);
  }

  else
  {
    v33 = v66;
    v64 = *(swift_getTupleTypeMetadata2() + 48);
    v34 = v68;
    (*(v68 + 32))(v17, v25, v33);
    v35 = v67;
    (*(v67 + 32))(v11, &v64[v25], v4);
    v36 = v65;
    (*(v35 + 16))(v65, v11, v4);
    (*(v35 + 56))(v36, 0, 1, v4);
    sub_24DD4B314();
    (*(v35 + 8))(v11, v4);
    (*(v34 + 8))(v17, v33);
  }

  return (*(v22 + 8))(v27, v21);
}

uint64_t sub_24DD26688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v143 = a1;
  v144 = a3;
  v5 = *(a2 + 16);
  v6 = sub_24DD4B4B4();
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
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v139 = v6;
  v146 = sub_24DD4B324();
  v16 = sub_24DD4B4B4();
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
      sub_24DD4B074();
      v44 = v136;
      sub_24DD4B054();
      v45 = v141;
      if ((*(v141 + 48))(v44, 1, v43) == 1)
      {

        v138[1](v44, v139);
        v40(v41, v42);
        *v41 = v36;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00D8, &unk_24DD4D290);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
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
    result = sub_24DD4B5B4();
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
  sub_24DD4B074();
  v68 = v133;
  sub_24DD4B054();
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
  v97 = sub_24DD2139C(v94);
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
    sub_24DD286D4(0, v101 & ~(v101 >> 63), 0);
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
          sub_24DD286D4((v108 > 1), v109 + 1, 1);
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
  v120 = sub_24DD4B024();
  v121 = v134;
  *&v99[v134] = *v120;

  (v138)(v66, v92);
  v102[2](v66, v121, v98);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C0, &qword_24DD4D260);
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

uint64_t sub_24DD27444(void *a1)
{
  v2 = *(*a1 + 80);
  sub_24DD4B4B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v3 = sub_24DD4B324();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - v5;
  Action = type metadata accessor for BufferedStream._StateMachine.CancelNextAction(255, v2, v7, v8);
  v10 = sub_24DD4B4B4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = a1[2];
  v40 = v2;
  v20 = type metadata accessor for BufferedStream._StateMachine(0, v2, v18, v19);
  sub_24DD49B88(sub_24DD2BA48, v39, v17, v20, v10);
  (*(v11 + 16))(v14, v16, v10);
  if ((*(*(Action - 8) + 48))(v14, 1, Action) == 1)
  {
    return (*(v11 + 8))(v16, v10);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
    v30 = v14 + *(swift_getTupleTypeMetadata2() + 48);
    v31 = *v30;
    v32 = *(v30 + 1);
    (*(v4 + 32))(v6, v14, v3);
    sub_24DD4B334();
    sub_24DD2BA94();
    v33 = swift_allocError();
    sub_24DD4B104();
    v41 = v33;
    sub_24DD4B304();
    if (v31)
    {

      v31(v34);
      sub_24DD1C134(v31, v32);
      sub_24DD1C134(v31, v32);
    }

    (*(v4 + 8))(v6, v3);
    return (*(v11 + 8))(v16, v10);
  }

  v21 = *v14;
  v36 = v14[1];
  v37 = v10;
  v35 = v14[2];
  v38 = v21;
  v22 = *(v21 + 16);
  if (v22)
  {
    sub_24DD1C09C();
    v23 = v38 + 40;
    do
    {
      v24 = *(v23 - 8);
      v25 = swift_allocError();
      v41 = v25;
      v42 = 1;

      v24(&v41);

      v23 += 16;
      --v22;
    }

    while (v22);
  }

  v26 = v36;
  if (v36)
  {
    v27 = v35;

    v26(v28);
    sub_24DD1C134(v26, v27);
    sub_24DD1C134(v26, v27);
  }

  return (*(v11 + 8))(v16, v37);
}

uint64_t sub_24DD2787C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v75 = a2;
  v3 = *(a1 + 16);
  sub_24DD4B4B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v4 = sub_24DD4B324();
  v5 = sub_24DD4B4B4();
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
    result = sub_24DD4B5B4();
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
      sub_24DD286D4(0, v41 & ~(v41 >> 63), 0);
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
          sub_24DD286D4((v47 > 1), v48 + 1, 1);
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
    sub_24DD1CA8C(v62, v63);
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

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
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
    sub_24DD1CA8C(v57, v58);
    return (*(v76 + 8))(v60, v32);
  }
}

uint64_t BufferedStream._BackPressuredStorage.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

double sub_24DD27FC0@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, uint64_t a6@<X4>)
{
  v11 = type metadata accessor for BufferedStream._InternalBackPressureStrategy(0, a6, a3, a4);
  (*(*(v11 - 8) + 32))(v15, a1, v11);
  v12 = v16;
  result = *v15;
  v14 = v15[1];
  *a5 = v15[0];
  *(a5 + 16) = v14;
  *(a5 + 32) = v12;
  *(a5 + 40) = a2;
  *(a5 + 41) = v15[0];
  *(a5 + 44) = *(v15 + 3);
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  return result;
}

uint64_t sub_24DD28070@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v17 = type metadata accessor for BufferedStream._StateMachine._State.Streaming(0, a11, a3, a4);
  v18 = v17[10];
  sub_24DD4B4B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v19 = sub_24DD4B324();
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  v22 = type metadata accessor for BufferedStream._InternalBackPressureStrategy(0, a11, v20, v21);
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  v23 = sub_24DD4B4B4();
  result = (*(*(v23 - 8) + 40))(a9 + v18, a6, v23);
  *(a9 + v17[11]) = a7;
  *(a9 + v17[12]) = a8;
  *(a9 + v17[13]) = a10;
  return result;
}

uint64_t sub_24DD28218@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_24DD28228@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 28);
  v4 = *(v2 + v3);
  if (v4 == -1)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v3) = v4 + 1;
    *a2 = v4;
  }

  return result;
}

uint64_t sub_24DD28248@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v44 = a4;
  v43 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD4B4B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v8 = sub_24DD4B324();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  type metadata accessor for BufferedStream.Source.WriteResult.CallbackToken(255, a3, v12, v13);
  sub_24DD4B4B4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = sub_24DD4B4B4();
  v16 = swift_getTupleTypeMetadata2();
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v41 - v18;
  v20 = *a1;
  v21 = *(a1 + 8);
  v22 = &v19[*(v17 + 56)];
  *v19 = v20;
  v19[8] = v21;
  (*(*(v15 - 8) + 32))(v22, a2, v15);
  v23 = *v19;
  LODWORD(a2) = v19[8];
  v24 = (*(*(TupleTypeMetadata2 - 8) + 48))(v22, 1, TupleTypeMetadata2);
  if (a2 == 1)
  {
    if (v24 != 1)
    {
      v27 = *(TupleTypeMetadata2 + 48);
      v28 = *(v9 + 32);
      v28(v11, v22, v8);
      v29 = v42;
      v30 = *(v43 + 32);
      v30(v42, &v22[v27], a3);
      v31 = *(swift_getTupleTypeMetadata2() + 48);
      v32 = v44;
      v28(v44, v11, v8);
      v30(&v32[v31], v29, a3);
    }
  }

  else if (v24 == 1)
  {
    *v44 = v23;
  }

  else
  {
    v33 = *(TupleTypeMetadata2 + 48);
    v41 = *(v9 + 32);
    v41(v11, v22, v8);
    v34 = *(v43 + 32);
    v35 = &v22[v33];
    v36 = v42;
    v34(v42, v35, a3);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v38 = *(TupleTypeMetadata3 + 48);
    v43 = *(TupleTypeMetadata3 + 64);
    v39 = v44;
    v41(v44, v11, v8);
    v34(&v39[v38], v36, a3);
    *&v39[v43] = v23;
  }

  type metadata accessor for BufferedStream._StateMachine.WriteAction(0, a3, v25, v26);
  return swift_storeEnumTagMultiPayload();
}

void *sub_24DD286B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24DD286F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24DD286D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24DD28838(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24DD286F4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00E8, &qword_24DD4D2B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00F0, &qword_24DD4D2B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24DD28838(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00D0, &qword_24DD4D270);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AFE20, &qword_24DD4D070);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24DD28978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t sub_24DD28A7C(char a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00F8, &unk_24DD4D2C0);
    v9 = swift_allocObject();
    v10 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v10;
    if (v10 >= 1)
    {
      sub_24DD49380(v9 + 16, v9 + 40, v5, v4 + 40);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AFE30, qword_24DD4D078);
    sub_24DD4B044();
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00F8, &unk_24DD4D2C0);
      v9 = swift_allocObject();
      *(v9 + 16) = (_swift_stdlib_malloc_size(v9) - 40) / 24;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_24DD29088(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00F8, &unk_24DD4D2C0);
      v9 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v9);
      v12 = *(v4 + 24);
      *(v9 + 16) = (v11 - 40) / 24;
      *(v9 + 24) = v12;
      *(v9 + 32) = 0;
      if (v12 >= 1)
      {
        sub_24DD294FC(v9 + 16, v9 + 40, v5, v4 + 40);
      }
    }
  }

  *v3 = v9;
  return result;
}

size_t sub_24DD28C60(char a1, uint64_t a2, char a3)
{
  v6 = *v3;
  v7 = (*v3 + 16);
  v8 = *v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v10 = v9;
  if (v8 >= a2)
  {
    v19 = *(*(v9 - 8) + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0100, &qword_24DD4D2D0);
    v16 = swift_allocObject();
    v20 = *(v6 + 24);
    *(v16 + 16) = v8;
    *(v16 + 24) = v20;
    if (v20 >= 1)
    {
      sub_24DD49580(v16 + 16, v16 + ((v19 + 40) & ~v19), v7, v6 + ((v19 + 40) & ~v19));
    }

    goto LABEL_19;
  }

  sub_24DD4B044();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  if (a1)
  {
    v13 = *(v6 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0100, &qword_24DD4D2D0);
    v14 = *(v11 + 72);
    v15 = (v12 + 40) & ~v12;
    v16 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v16);
    if (v14)
    {
      if (result - v15 != 0x8000000000000000 || v14 != -1)
      {
        *(v16 + 16) = (result - v15) / v14;
        *(v16 + 24) = v13;
        *(v16 + 32) = 0;
        if (v13 >= 1)
        {
          sub_24DD291C8(v16 + 16, v16 + v15, v7, v6 + v15);
          *(v6 + 24) = 0;
        }

LABEL_19:

        *v3 = v16;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0100, &qword_24DD4D2D0);
  v21 = *(v11 + 72);
  v22 = (v12 + 40) & ~v12;
  v16 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v16);
  if (!v21)
  {
    goto LABEL_21;
  }

  if (result - v22 != 0x8000000000000000 || v21 != -1)
  {
    v24 = *(v6 + 24);
    *(v16 + 16) = (result - v22) / v21;
    *(v16 + 24) = v24;
    *(v16 + 32) = 0;
    if (v24 >= 1)
    {
      sub_24DD29610(v16 + 16, v16 + v22, v7, v6 + v22);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_24DD28EDC(char a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00E0, &unk_24DD4D2A0);
    v9 = swift_allocObject();
    v12 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v12;
    if (v12 >= 1)
    {
      sub_24DD49498(v9 + 16, (v9 + 40), v5, (v4 + 40));
    }
  }

  else
  {
    sub_24DD4B044();
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00E0, &unk_24DD4D2A0);
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
        sub_24DD293D4(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00E0, &unk_24DD4D2A0);
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
        sub_24DD29784(v9 + 16, (v9 + 40), v5, (v4 + 40));
      }
    }
  }

  *v3 = v9;
  return result;
}

void sub_24DD29088(int a1, char *__dst, void *a3, char *a4)
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

void sub_24DD291C8(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = a3[1];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20) - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = a4 + *(v9 + 72) * v4;
  if (v15 > a2 || v15 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20) - 8) + 72) * v11 <= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v15 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v5 >= v8)
  {
    return;
  }

LABEL_23:
  if (v10 < 1)
  {
    return;
  }

  if (!v14)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20) - 8) + 72);
  v17 = a2 + v16 * v11;
  v18 = v14 + v16 * v10;
  if (v17 < v14 || v17 >= v18)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v17 != v14)
  {
    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_24DD293D4(int a1, char *__dst, void *a3, char *a4)
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

void sub_24DD294FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B50, &unk_24DD4DDF0);
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B50, &unk_24DD4DDF0);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_24DD29610(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = a4;
      if (v5 < 1)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = 0;
  v8 = 0;
  if (v7 < 1)
  {
LABEL_5:
    if (v5 >= v7)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_8:
  if (!a4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  swift_arrayInitWithCopy();
  if (v5 >= v7)
  {
    return;
  }

LABEL_10:
  if (v8 < 1)
  {
    return;
  }

  if (!v9)
  {
LABEL_17:
    __break(1u);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  swift_arrayInitWithCopy();
}

void sub_24DD29784(int a1, char *__dst, void *a3, char *__src)
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

uint64_t sub_24DD2987C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
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

uint64_t sub_24DD298F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3[2];
  v7 = v6 + result;
  v8 = *a3;
  if (v6 + result >= *a3)
  {
    v9 = *a3;
  }

  else
  {
    v9 = 0;
  }

  v10 = v6 + a2;
  if (v10 >= v8)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v14 = v7 - v9;
    v15 = v10 - v11;
    if (v12)
    {
      v16 = v14 < v15;
    }

    else
    {
      v16 = 1;
    }

    v17 = v16;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
    v20 = *(v18 - 8);
    result = v18 - 8;
    v19 = v20;
    if (v17 == 1)
    {
      v21 = 0;
      v15 = 0;
LABEL_18:
      *a5 = a4 + *(v19 + 72) * v14;
      *(a5 + 8) = v12;
      *(a5 + 16) = v21;
      *(a5 + 24) = v15;
      *(a5 + 32) = v17;
      return result;
    }

    v12 = v8 - v14;
    if (!__OFSUB__(v8, v14))
    {
      v21 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD299E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
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

void *sub_24DD29A5C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void *sub_24DD29ADC(void *result, uint64_t a2, uint64_t a3)
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

unint64_t sub_24DD29B38(unint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  sub_24DD299E0(a1, a2, a3, a4, v12);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B50, &unk_24DD4DDF0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B50, &unk_24DD4DDF0);
    swift_arrayDestroy();
  }

  return sub_24DD2A1EC(a1, a2, a3, a4);
}

unint64_t sub_24DD29C34(unint64_t result, uint64_t a2, uint64_t *a3, char *__src)
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

unint64_t sub_24DD2A1EC(unint64_t result, uint64_t a2, uint64_t *a3, char *__src)
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

uint64_t sub_24DD2A808(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  sub_24DD1CF8C(v3, v4, v5, v6);
  return v2;
}

uint64_t sub_24DD2A874(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24DD0D4B0;

  return sub_24DD1F5A0(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_24DD2A93C()
{
  v1 = *(v0 + 40);
  v3[0] = *(v0 + 48);
  v3[1] = v1;
  return BufferedStream.Source.cancelCallback(callbackToken:)(v3);
}

uint64_t sub_24DD2A9C0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_24DD2AAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2AB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2AB94(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_24DD2AC04(uint64_t a1, int a2)
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

uint64_t sub_24DD2AC24(uint64_t result, int a2, int a3)
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

uint64_t sub_24DD2AC54(uint64_t a1)
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

uint64_t sub_24DD2AC70(uint64_t result, int a2)
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

uint64_t sub_24DD2ACA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2AD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for BufferedStream._StateMachine._State(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DD2ADE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for BufferedStream._StateMachine._State(0, *(a3 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_24DD2AE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for BufferedStream._StateMachine._State(0, *(a4 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

uint64_t sub_24DD2AF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        result = sub_24DD2B014();
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

unint64_t sub_24DD2B014()
{
  result = qword_27F1AFD10[0];
  if (!qword_27F1AFD10[0])
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], qword_27F1AFD10);
  }

  return result;
}

uint64_t sub_24DD2B044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2B080(uint64_t a1, int a2)
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

uint64_t sub_24DD2B0C8(uint64_t result, int a2, int a3)
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

void sub_24DD2B118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BufferedStream._InternalBackPressureStrategy(319, *(a1 + 16), a3, a4);
  if (v4 <= 0x3F)
  {
    sub_24DD2C48C(319, &qword_27F1AFE18, &qword_27F1AFE20, &qword_24DD4D070, MEMORY[0x277D83D88]);
    if (v5 <= 0x3F)
    {
      sub_24DD4B074();
      if (v6 <= 0x3F)
      {
        sub_24DD4B4B4();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
        sub_24DD4B324();
        sub_24DD4B4B4();
        if (v7 <= 0x3F)
        {
          sub_24DD2C48C(319, &qword_27F1AFE28, &qword_27F1AFE30, qword_24DD4D078, MEMORY[0x277CFB920]);
          if (v8 <= 0x3F)
          {
            sub_24DD2B4AC();
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

uint64_t sub_24DD2B2C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_24DD4B4B4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
    sub_24DD4B324();
    v8 = sub_24DD4B4B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24DD2B3C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    sub_24DD4B4B4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
    sub_24DD4B324();
    v7 = sub_24DD4B4B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24DD2B4AC()
{
  if (!qword_27F1AFE38[0])
  {
    v0 = sub_24DD4B074();
    if (!v1)
    {
      atomic_store(v0, qword_27F1AFE38);
    }
  }
}

uint64_t sub_24DD2B4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2B538(uint64_t a1, unsigned int a2)
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

uint64_t sub_24DD2B594(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24DD2B5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2B64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2B6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2B6DC(uint64_t *a1, int a2)
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

uint64_t sub_24DD2B724(uint64_t result, int a2, int a3)
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

uint64_t sub_24DD2B778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2B864(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_24DD2B938(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_24DD2B8BC@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for BufferedStream._StateMachine(0, *(v4 + 16), a2, a3);
  result = a1(v7);
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
  return result;
}

uint64_t sub_24DD2B938(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v6 = a2;

    a1 = v6;
    a2 = a3;
  }

  return sub_24DD1C134(a1, a2);
}

uint64_t sub_24DD2B98C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24DD0C914;

  return sub_24DD25C5C(a1, v1);
}

unint64_t sub_24DD2BA94()
{
  result = qword_27F1AF598;
  if (!qword_27F1AF598)
  {
    sub_24DD4B334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF598);
  }

  return result;
}

uint64_t sub_24DD2BB0C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for BufferedStream._StateMachine(0, v5, a1, a2);
  return sub_24DD26688(v6, v7, a3);
}

uint64_t sub_24DD2BBCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24DD2BC60(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);

  return sub_24DD1F9D8(a1, a2 & 1);
}

uint64_t (*sub_24DD2BCEC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t (**a3)()@<X8>))()
{
  v5 = *(v3 + 16);
  v11 = *(v3 + 24);
  v6 = type metadata accessor for BufferedStream._StateMachine(0, v5, a1, a2);
  result = sub_24DD24060(&v11, v6, v7, v8);
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t sub_24DD2BD64(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_24DD2BE08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
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

uint64_t sub_24DD2BE5C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v7 = v3[5];
  v13 = v6;
  v9 = type metadata accessor for BufferedStream._StateMachine(0, v5, a1, a2);
  result = sub_24DD23AE0(&v13, v8, v7, v9);
  *a3 = result;
  a3[1] = v11;
  a3[2] = v12;
  return result;
}

uint64_t sub_24DD2BEE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DD2BF3C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v5 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v7 = v3[5];
  v9 = type metadata accessor for BufferedStream._StateMachine(0, v5, a1, a2);
  return sub_24DD22B3C(v7, v9, v6, v8, a3);
}

unint64_t sub_24DD2BFA4()
{
  result = qword_27F1B0110[0];
  if (!qword_27F1B0110[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B0108, &qword_24DD4D2D8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1B0110);
  }

  return result;
}

uint64_t sub_24DD2C020@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for BufferedStream._StateMachine(0, v5, a1, a2);
  return sub_24DD24514(v6, v7, a3);
}

uint64_t sub_24DD2C074(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_24DD2C0D0(uint64_t a1, unsigned int a2)
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

uint64_t sub_24DD2C12C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24DD2C1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for BufferedStream.Source.WriteResult.CallbackToken(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    sub_24DD4B4B4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
    sub_24DD4B324();
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

uint64_t sub_24DD2C2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_24DD2C2EC(uint64_t a1)
{
  sub_24DD2C48C(319, &qword_27F1AFE18, &qword_27F1AFE20, &qword_24DD4D070, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24DD4B4B4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
    sub_24DD4B324();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00D8, &unk_24DD4D290);
    swift_getTupleTypeMetadata3();
    if (v2 <= 0x3F)
    {
      sub_24DD2C418();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24DD2C418()
{
  if (!qword_27F1B0318)
  {
    sub_24DD2C48C(0, &qword_27F1B0320, qword_27F1B0328, qword_24DD4D408, MEMORY[0x277D83940]);
    if (!v1)
    {
      atomic_store(v0, &qword_27F1B0318);
    }
  }
}

void sub_24DD2C48C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_24DD2C4F0(uint64_t a1)
{
  sub_24DD4B4B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v1 = sub_24DD4B324();
  v3 = v2;
  result = swift_getTupleTypeMetadata2();
  if (v5 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C0, &qword_24DD4D260);
    result = swift_getTupleTypeMetadata3();
    if (v6 <= 0x3F)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00D8, &unk_24DD4D290);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
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

void sub_24DD2C658(uint64_t a1)
{
  sub_24DD4B4B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  sub_24DD4B324();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
  swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    sub_24DD2CB54(319, qword_27F1B0430, &qword_27F1B00C0, &qword_24DD4D260);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24DD2C748(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C0, &qword_24DD4D260);
    swift_getTupleTypeMetadata2();
    if (v2 <= 0x3F)
    {
      sub_24DD2CB54(319, qword_27F1B04B8, &qword_27F1B00D8, &unk_24DD4D290);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_24DD2C818(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_24DD2C96C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

void sub_24DD2CB54(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24DD2CBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2CC34(uint64_t a1, unsigned int a2)
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

uint64_t sub_24DD2CC80(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_24DD2CCE4(uint64_t a1)
{
  sub_24DD2C48C(319, &qword_27F1AFE18, &qword_27F1AFE20, &qword_24DD4D070, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24DD4B4B4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
    sub_24DD4B324();
    sub_24DD4B4B4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C0, &qword_24DD4D260);
    swift_getTupleTypeMetadata3();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_24DD2CE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2CE44(uint64_t a1, unsigned int a2)
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

uint64_t sub_24DD2CEA0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24DD2CF50(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    sub_24DD4B5C4();
LABEL_9:
    result = sub_24DD4B554();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t sub_24DD2CFEC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A0, &qword_24DD4CB48);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A8, &qword_24DD4CB50);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0860, &qword_24DD4D9F8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v37 - v14);
  v16 = *(v1 + 16);
  v17 = (*(*v16 + 48) + 7) & 0x1FFFFFFF8;
  result = pthread_mutex_lock((v16 + v17));
  if (result)
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_24DD2DC90(a1, v15);
  result = pthread_mutex_unlock((v16 + v17));
  if (result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  sub_24DD1C3AC(v15, v13, &qword_27F1B0860, &qword_24DD4D9F8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0868, &qword_24DD4DA00);
  if ((*(*(v19 - 8) + 48))(v13, 1, v19) == 1)
  {
    return sub_24DD1C414(v15, &qword_27F1B0860, &qword_24DD4D9F8);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v28 = *v13;
    if (*v13)
    {
      v29 = v13[1];

      v28(v30);
      sub_24DD1C134(v28, v29);
      sub_24DD1C134(v28, v29);
    }

    return sub_24DD1C414(v15, &qword_27F1B0860, &qword_24DD4D9F8);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0870, &qword_24DD4DA08);
    v22 = *(v13 + *(v21 + 48));
    v23 = v13 + *(v21 + 64);
    v24 = *v23;
    v25 = *(v23 + 1);
    (*(v7 + 32))(v9, v13, v6);
    if (v22)
    {
      v37 = v22;
      v26 = v22;
      sub_24DD4B304();
      if (v24)
      {
LABEL_8:

        v24(v27);
        sub_24DD1C134(v24, v25);

        sub_24DD1C134(v24, v25);
LABEL_17:
        (*(v7 + 8))(v9, v6);
        return sub_24DD1C414(v15, &qword_27F1B0860, &qword_24DD4D9F8);
      }
    }

    else
    {
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
      (*(*(v36 - 8) + 56))(v5, 1, 1, v36);
      sub_24DD4B314();
      if (v24)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_17;
  }

  v31 = *v13;
  v32 = *(*v13 + 2);
  if (v32)
  {
    sub_24DD1C09C();
    v33 = v31 + 40;
    do
    {
      v34 = *(v33 - 1);
      v35 = swift_allocError();
      v37 = v35;
      v38 = 1;

      v34(&v37);

      v33 += 16;
      --v32;
    }

    while (v32);
  }

  sub_24DD1C414(v15, &qword_27F1B0860, &qword_24DD4D9F8);
}

uint64_t sub_24DD2D480(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  sub_24DD1C474(a1, v15, &qword_27F1B0880, &qword_24DD4DA28);
  v2 = v16;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0888, &qword_24DD4DA30);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14 - v8;
  *&v9[*(v7 + 36)] = 0;
  v10 = v15[1];
  *v9 = v15[0];
  *(v9 + 1) = v10;
  *(v9 + 4) = v2;
  v9[40] = 0;
  *(v9 + 6) = 0;
  *(v9 + 7) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0878, &qword_24DD4DA20);
  swift_storeEnumTagMultiPayload();
  sub_24DD1C3AC(v9, v6, &qword_27F1B0888, &qword_24DD4DA30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0890, &qword_24DD4DA38);
  v11 = swift_allocObject();
  sub_24DD1C3AC(v6, v11 + *(*v11 + *MEMORY[0x277D841D0] + 16), &qword_27F1B0888, &qword_24DD4DA30);
  v12 = (*(*v11 + 48) + 7) & 0x1FFFFFFF8;
  v14.__sig = 0;
  *v14.__opaque = 0;

  pthread_mutexattr_init(&v14);
  LODWORD(v12) = pthread_mutex_init((v11 + v12), &v14);

  if (v12)
  {
    __break(1u);
  }

  sub_24DD1C414(v6, &qword_27F1B0888, &qword_24DD4DA30);
  sub_24DD1C414(v9, &qword_27F1B0888, &qword_24DD4DA30);
  *(v1 + 16) = v11;
  return v1;
}

uint64_t sub_24DD2D6DC(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  sub_24DD1C474(a1, v15, &qword_27F1B0898, &unk_24DD4DA40);
  v2 = v16;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E0, &qword_24DD4CB88);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14 - v8;
  *&v9[*(v7 + 36)] = 0;
  v10 = v15[1];
  *v9 = v15[0];
  *(v9 + 1) = v10;
  *(v9 + 4) = v2;
  v9[40] = 0;
  *(v9 + 6) = 0;
  *(v9 + 7) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF588, &qword_24DD4CB40);
  swift_storeEnumTagMultiPayload();
  sub_24DD1C3AC(v9, v6, &qword_27F1AF5E0, &qword_24DD4CB88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B08A0, &unk_24DD4DA50);
  v11 = swift_allocObject();
  sub_24DD1C3AC(v6, v11 + *(*v11 + *MEMORY[0x277D841D0] + 16), &qword_27F1AF5E0, &qword_24DD4CB88);
  v12 = (*(*v11 + 48) + 7) & 0x1FFFFFFF8;
  v14.__sig = 0;
  *v14.__opaque = 0;

  pthread_mutexattr_init(&v14);
  LODWORD(v12) = pthread_mutex_init((v11 + v12), &v14);

  if (v12)
  {
    __break(1u);
  }

  sub_24DD1C414(v6, &qword_27F1AF5E0, &qword_24DD4CB88);
  sub_24DD1C414(v9, &qword_27F1AF5E0, &qword_24DD4CB88);
  *(v1 + 16) = v11;
  return v1;
}

uint64_t sub_24DD2D938()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B00, &unk_24DD4DDA0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0878, &qword_24DD4DA20);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  sub_24DD1C3AC(v0, &v16 - v5, &qword_27F1B0878, &qword_24DD4DA20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if ((*v6 & 1) == 0)
      {
        v14 = *(v6 + 3);
        v13 = *(v6 + 4);
        v17 = *(v6 + 8);
        sub_24DD1C414(v0, &qword_27F1B0878, &qword_24DD4DA20);
        *v0 = 1;
        *(v0 + 8) = v17;
        *(v0 + 24) = v14;
        *(v0 + 32) = v13;
        return swift_storeEnumTagMultiPayload();
      }
    }

    else if (EnumCaseMultiPayload == 3 && (*v6 & 1) == 0)
    {
      sub_24DD1C414(v0, &qword_27F1B0878, &qword_24DD4DA20);
      *v0 = 1;
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_24DD1C474(v6, v3, &unk_27F1B0B00, &unk_24DD4DDA0);
    if ((v3[40] & 1) == 0)
    {
      v3[40] = 1;
      sub_24DD1C414(v0, &qword_27F1B0878, &qword_24DD4DA20);
      sub_24DD1C474(v3, v0, &unk_27F1B0B00, &unk_24DD4DDA0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if ((v6[40] & 1) == 0)
  {
    v9 = *(v6 + 6);
    v8 = *(v6 + 7);
    v10 = *(v6 + 4);
    v11 = *v6;
    v16 = *(v6 + 1);
    v17 = v11;
    sub_24DD1C414(v0, &qword_27F1B0878, &qword_24DD4DA20);
    v12 = v16;
    *v0 = v17;
    *(v0 + 16) = v12;
    *(v0 + 32) = v10;
    *(v0 + 40) = 1;
    *(v0 + 48) = v9;
    *(v0 + 56) = v8;
    return swift_storeEnumTagMultiPayload();
  }

  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD2DC90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v67 = a2;
  *&v68 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5D0, &unk_24DD4DA10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v64 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A8, &qword_24DD4CB50);
  v66 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v65 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF580, &qword_24DD4CB38);
  MEMORY[0x28223BE20](v9);
  v11 = &v64 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF588, &qword_24DD4CB40);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v64 - v16;
  sub_24DD1C3AC(v3, &v64 - v16, &qword_27F1AF588, &qword_24DD4CB40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_24DD1C414(v17, &qword_27F1AF588, &qword_24DD4CB40);
    }

    else if (EnumCaseMultiPayload != 3)
    {
LABEL_36:
      result = sub_24DD4B5B4();
      __break(1u);
      return result;
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0868, &qword_24DD4DA00);
    return (*(*(v48 - 8) + 56))(v67, 1, 1, v48);
  }

  if (EnumCaseMultiPayload)
  {
    v31 = v11;
    sub_24DD1C474(v17, v11, &qword_27F1AF580, &qword_24DD4CB38);
    sub_24DD1C3AC(&v11[*(v9 + 40)], v6, &qword_27F1AF5D0, &unk_24DD4DA10);
    v32 = v66;
    if ((*(v66 + 48))(v6, 1, v7) == 1)
    {
      sub_24DD1C414(v6, &qword_27F1AF5D0, &unk_24DD4DA10);
      sub_24DD1C414(v3, &qword_27F1AF588, &qword_24DD4CB40);
      v33 = v11[40];
      v34 = *(v11 + 7);
      v35 = *(v11 + 8);
      v36 = *(v31 + 48);
      *v3 = v33;
      v37 = v68;
      *(v3 + 8) = v35;
      *(v3 + 16) = v37;
      *(v3 + 24) = v36;
      *(v3 + 32) = v34;
      swift_storeEnumTagMultiPayload();
      v38 = *(v31 + *(v9 + 44));
      v39 = v38[3];
      if (v39)
      {
        v40 = v37;

        sub_24DD1CA8C(v36, v34);
        v69 = MEMORY[0x277D84F90];
        sub_24DD286D4(0, v39 & ~(v39 >> 63), 0);
        if (v39 < 0)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v41 = 0;
        v42 = v69;
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
          v69 = v42;
          v46 = *(v42 + 16);
          v47 = *(v42 + 24);
          v68 = v45;

          if (v46 >= v47 >> 1)
          {
            sub_24DD286D4((v47 > 1), v46 + 1, 1);
            v42 = v69;
          }

          ++v41;
          *(v42 + 16) = v46 + 1;
          *(v42 + 16 * v46 + 32) = v68;
          if (v39 == v41)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
        goto LABEL_33;
      }

      v61 = v37;

      sub_24DD1CA8C(v36, v34);
      v42 = MEMORY[0x277D84F90];
LABEL_30:
      v62 = v67;
      *v67 = v42;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0868, &qword_24DD4DA00);
      swift_storeEnumTagMultiPayload();
      (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
    }

    else
    {
      v49 = *(v32 + 32);
      v49(v65, v6, v7);
      if (*(*(v11 + 8) + 24))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v50 = *(*&v11[*(v9 + 44)] + 24);
      v51 = v68;
      if (v50)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      sub_24DD1C414(v3, &qword_27F1AF588, &qword_24DD4CB40);
      *v3 = *(v31 + 40);
      swift_storeEnumTagMultiPayload();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0870, &qword_24DD4DA08);
      v53 = *(v52 + 48);
      v54 = v67;
      v55 = (v67 + *(v52 + 64));
      v49(v67, v65, v7);
      *(v54 + v53) = v51;
      v56 = *(v31 + 48);
      v57 = *(v31 + 56);
      if (v56)
      {
        v58 = *(v31 + 56);
      }

      else
      {
        v58 = 0;
      }

      *v55 = v56;
      v55[1] = v58;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0868, &qword_24DD4DA00);
      swift_storeEnumTagMultiPayload();
      (*(*(v59 - 8) + 56))(v54, 0, 1, v59);
      v60 = v51;
      sub_24DD1CA8C(v56, v57);
    }

    return sub_24DD1C414(v31, &qword_27F1AF580, &qword_24DD4CB38);
  }

  v19 = *(v17 + 3);
  v20 = *(v17 + 4);
  v21 = v17[40];
  v23 = *(v17 + 6);
  v22 = *(v17 + 7);
  v24 = *sub_24DD4B024();
  *v15 = v21;
  v25 = v68;
  *(v15 + 1) = v24;
  *(v15 + 2) = v25;
  *(v15 + 3) = v23;
  *(v15 + 4) = v22;
  swift_storeEnumTagMultiPayload();

  sub_24DD1CA8C(v23, v22);
  v26 = v25;
  sub_24DD3D224(v15, v3);
  sub_24DD1C134(v19, v20);
  if (v23)
  {
    v27 = v22;
  }

  else
  {
    v27 = 0;
  }

  v28 = v67;
  *v67 = v23;
  v28[1] = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0868, &qword_24DD4DA00);
  swift_storeEnumTagMultiPayload();
  return (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
}

uint64_t URLSessionTransport.__allocating_init(baseURL:session:serviceConfig:config:)(uint64_t a1, void (**a2)(uint64_t, char *, uint64_t), uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_24DD3AE34(a1, a2, a3, a4);

  return v8;
}

uint64_t URLSessionTransport.init(baseURL:session:serviceConfig:config:)(uint64_t a1, void (**a2)(uint64_t, char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = sub_24DD3AE34(a1, a2, a3, a4);

  return v5;
}

uint64_t URLSessionTransport.config(forMethod:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v39 = a1;
  v3 = sub_24DD4AD74();
  MEMORY[0x28223BE20](v3 - 8);
  v36 = sub_24DD4AD44();
  v4 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_24DD4AC74();
  v7 = *(v37 - 8);
  v8 = MEMORY[0x28223BE20](v37);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = *(v2 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_methodConfig);
  if (*(v19 + 16) && (v20 = sub_24DD39324(v39), (v21 & 1) != 0))
  {
    v22 = *(v19 + 56) + *(v7 + 72) * v20;
    v23 = v37;
    (*(v7 + 16))(v16, v22, v37);
    v24 = *(v7 + 32);
    v24(v18, v16, v23);
    v25 = v38;
    v24(v38, v18, v23);
    v26 = 0;
  }

  else
  {
    v27 = v36;
    (*(v4 + 16))(v6, v39, v36);
    sub_24DD4AD24();
    if (!*(v19 + 16) || (v28 = sub_24DD39324(v6), (v29 & 1) == 0))
    {
      sub_24DD4AD64();
      sub_24DD4AD34();
      if (*(v19 + 16))
      {
        v32 = sub_24DD39324(v6);
        v25 = v38;
        if (v33)
        {
          v34 = *(v19 + 56) + *(v7 + 72) * v32;
          v23 = v37;
          (*(v7 + 16))(v38, v34, v37);
          (*(v4 + 8))(v6, v27);
          v26 = 0;
          return (*(v7 + 56))(v25, v26, 1, v23);
        }

        (*(v4 + 8))(v6, v27);
        v26 = 1;
      }

      else
      {
        (*(v4 + 8))(v6, v27);
        v26 = 1;
        v25 = v38;
      }

      v23 = v37;
      return (*(v7 + 56))(v25, v26, 1, v23);
    }

    v30 = *(v19 + 56) + *(v7 + 72) * v28;
    v23 = v37;
    (*(v7 + 16))(v10, v30, v37);
    (*(v4 + 8))(v6, v27);
    v31 = *(v7 + 32);
    v31(v13, v10, v23);
    v25 = v38;
    v31(v38, v13, v23);
    v26 = 0;
  }

  return (*(v7 + 56))(v25, v26, 1, v23);
}

uint64_t sub_24DD2E8EC()
{
  v1 = sub_24DD4B084();
  v2 = sub_24DD4B414();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24DD09000, v1, v2, "Starting URLSession transport", v3, 2u);
    MEMORY[0x253038870](v3, -1, -1);
  }

  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_24DD2EA44;

  return MEMORY[0x282200830](v4, &unk_24DD4D6E0);
}

uint64_t sub_24DD2EA44()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_24DD2EBBC;
  }

  else
  {
    v2 = sub_24DD2EB58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DD2EB58()
{
  sub_24DD2EC20();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DD2EBBC()
{
  sub_24DD2EC20();
  v1 = *(v0 + 8);

  return v1();
}

void sub_24DD2EC20()
{
  oslog = sub_24DD4B084();
  v0 = sub_24DD4B414();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&dword_24DD09000, oslog, v0, "Finished running URLSession transport", v1, 2u);
    MEMORY[0x253038870](v1, -1, -1);
  }
}

uint64_t sub_24DD2ECCC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24DD2ECEC, 0, 0);
}

uint64_t sub_24DD2ECEC()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24DD2EDC4;
  v2 = v0[2];
  v3 = v0[3];
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0x287463656E6E6F63, 0xE900000000000029, sub_24DD3D2E0, v3, v4);
}

uint64_t sub_24DD2EDC4()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DD2EEF8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24DD2EF10(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06D0, &qword_24DD4D6E8);
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v35 = &v28 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B08B0, &qword_24DD4DA70);
  MEMORY[0x28223BE20](v32);
  v10 = &v28 - v9;
  v11 = type metadata accessor for URLSessionTransport.State.ConnectAction(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = (&v28 - v15);
  v17 = (a2 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state);
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8);
  v36[0] = *(a2 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_transportID);
  sub_24DD2F350(v33, v36, v16);
  os_unfair_lock_unlock(v17);
  sub_24DD3BD4C(v16, v14, type metadata accessor for URLSessionTransport.State.ConnectAction);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    (*(v4 + 32))(v6, v14, v3);
    sub_24DD4B314();
    (*(v4 + 8))(v6, v3);
    return sub_24DD3BCCC(v16, type metadata accessor for URLSessionTransport.State.ConnectAction);
  }

  v29 = v16;
  v19 = *v14;
  v33 = v14[1];
  v31 = *(v19 + 16);
  if (!v31)
  {
LABEL_9:

LABEL_11:
    v16 = v29;
    return sub_24DD3BCCC(v16, type metadata accessor for URLSessionTransport.State.ConnectAction);
  }

  v20 = 0;
  v30 = v34 + 16;
  v21 = (v34 + 32);
  v22 = (v34 + 8);
  v23 = (v33 + 40);
  while (v20 < *(v19 + 16))
  {
    result = (*(v34 + 16))(v35, v19 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v20, v7);
    v24 = *(v33 + 16);
    if (v20 == v24)
    {

      (*v22)(v35, v7);
      goto LABEL_11;
    }

    if (v20 >= v24)
    {
      goto LABEL_14;
    }

    ++v20;
    v25 = *(v23 - 1);
    v26 = *v23;
    v27 = &v10[*(v32 + 48)];
    (*v21)(v10, v35, v7);
    *v27 = v25;
    v27[1] = v26;
    v36[0] = v25;
    v36[1] = v26;
    sub_24DD4B314();
    result = (*v22)(v10, v7);
    v23 += 2;
    if (v31 == v20)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_24DD2F350@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = sub_24DD3C18C(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for URLSessionTransport.State(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  sub_24DD3CBF8(v4, v13, type metadata accessor for URLSessionTransport.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v16 = *v13;
      v17 = *(v8 + 20);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
      (*(*(v18 - 8) + 16))(v10 + v17, a1, v18);
      v19 = MEMORY[0x277D84F90];
      *v10 = sub_24DD3AD24(MEMORY[0x277D84F90]);
      v10[1] = v14;
      v10[2] = 0;
      v51 = v16;
      v20 = *(v16 + 16);
      v21 = sub_24DD4A19C(0, v20, 0, v19);
      if (!v20)
      {
LABEL_26:
        sub_24DD3CBF8(v10, v4, sub_24DD3C18C);
        swift_storeEnumTagMultiPayload();
        *a3 = v51;
        a3[1] = v21;
        type metadata accessor for URLSessionTransport.State.ConnectAction(0);
        return swift_storeEnumTagMultiPayload();
      }

      v50 = a3;
      v22 = 0;
      v23 = v10[1];
      while (1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = *v10;
        v25 = v52;
        v26 = sub_24DD393BC(v23, v22);
        v28 = v25[2];
        v29 = (v27 & 1) == 0;
        v30 = __OFADD__(v28, v29);
        v31 = v28 + v29;
        if (v30)
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          result = sub_24DD4B684();
          __break(1u);
          return result;
        }

        v32 = v27;
        if (v25[3] < v31)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_10;
        }

        v37 = v26;
        sub_24DD3A4D4();
        v26 = v37;
        v34 = v52;
        if (v32)
        {
LABEL_11:
          v35 = v34[7];
          v36 = *(v35 + 8 * v26);
          *(v35 + 8 * v26) = 0;
          sub_24DD3CC60(v36);
          goto LABEL_15;
        }

LABEL_13:
        v34[(v26 >> 6) + 8] |= 1 << v26;
        v38 = (v34[6] + 16 * v26);
        *v38 = v23;
        v38[1] = v22;
        *(v34[7] + 8 * v26) = 0;
        v39 = v34[2];
        v30 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v30)
        {
          goto LABEL_33;
        }

        v34[2] = v40;
LABEL_15:
        *v10 = v34;
        v42 = *(v21 + 2);
        v41 = *(v21 + 3);
        if (v42 >= v41 >> 1)
        {
          v21 = sub_24DD4A19C((v41 > 1), v42 + 1, 1, v21);
        }

        v43 = &v21[16 * v42];
        *(v43 + 4) = v23;
        *(v43 + 5) = v22;
        *(v21 + 2) = v42 + 1;
        if (v20 == ++v22)
        {
          v10[2] = v20;
          a3 = v50;
          goto LABEL_26;
        }
      }

      sub_24DD39BD4(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_24DD393BC(v23, v22);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_34;
      }

LABEL_10:
      v34 = v52;
      if (v32)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    sub_24DD3CBF8(v13, v4, sub_24DD3C18C);
LABEL_22:
    swift_storeEnumTagMultiPayload();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    (*(*(v44 - 8) + 16))(a3, a1, v44);
    type metadata accessor for URLSessionTransport.State.ConnectAction(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_24DD3CBF8(v13, v4, sub_24DD3C1AC);
    goto LABEL_22;
  }

  swift_storeEnumTagMultiPayload();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v47 = *(v46 - 8);
  (*(v47 + 16))(a3, a1, v46);
  type metadata accessor for URLSessionTransport.State.ConnectAction(0);
  swift_storeEnumTagMultiPayload();
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      return result;
    }

    v48 = *(sub_24DD3C1AC(0) + 20);
  }

  else
  {
    if (!result)
    {
    }

    v48 = *(v8 + 20);
  }

  return (*(v47 + 8))(&v13[v48], v46);
}

uint64_t sub_24DD2F888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06D0, &qword_24DD4D6E8);
  v42 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v41 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  v8 = type metadata accessor for URLSessionTransport.State.CancelConnectAction(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  v14 = sub_24DD4B084();
  v15 = sub_24DD4B414();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24DD09000, v14, v15, "Cancelling transport's connection", v16, 2u);
    MEMORY[0x253038870](v16, -1, -1);
  }

  v17 = (a1 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8);
  sub_24DD2FD8C(v13);
  os_unfair_lock_unlock(v17);
  sub_24DD3BD4C(v13, v11, type metadata accessor for URLSessionTransport.State.CancelConnectAction);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      v19 = v13;
      v20 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B08A8, &qword_24DD4DA68) + 48)];
      v21 = *v20;
      v22 = v20[8];
      v24 = v43;
      v23 = v44;
      (*(v43 + 32))(v7, v11, v44);
      if (v22)
      {
        v45 = v21;
        sub_24DD4B304();
      }

      else
      {
        sub_24DD4B314();
      }

      (*(v24 + 8))(v7, v23);
      v40 = v19;
      return sub_24DD3BCCC(v40, type metadata accessor for URLSessionTransport.State.CancelConnectAction);
    }

    v30 = *v11;
    v31 = *(v11 + 1);
    v43 = *(v11 + 2);
    LODWORD(v44) = v11[24];
    v32 = *(v30 + 16);
    if (v32)
    {
      v33 = v42 + 16;
      v34 = *(v42 + 16);
      v35 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v41 = v13;
      v42 = v30;
      v36 = v30 + v35;
      v37 = *(v33 + 56);
      v38 = (v33 - 8);
      v34(v4, v30 + v35, v2);
      while (1)
      {
        if (v44)
        {
          v45 = v31;
          v39 = v31;
          sub_24DD4B304();
        }

        else
        {
          v45 = v31;
          v46 = v43;
          sub_24DD4B314();
        }

        (*v38)(v4, v2);
        v36 += v37;
        if (!--v32)
        {
          break;
        }

        v34(v4, v36, v2);
      }

      v13 = v41;
    }

    else
    {
    }

    sub_24DD3D2D4(v31, v43, v44);
    goto LABEL_28;
  }

  if (result != 2)
  {
LABEL_28:
    v40 = v13;
    return sub_24DD3BCCC(v40, type metadata accessor for URLSessionTransport.State.CancelConnectAction);
  }

  v25 = *v11;
  if (!(*v11 >> 62))
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_10;
    }

LABEL_30:

    v40 = v13;
    return sub_24DD3BCCC(v40, type metadata accessor for URLSessionTransport.State.CancelConnectAction);
  }

  result = sub_24DD4B5C4();
  v26 = result;
  if (!result)
  {
    goto LABEL_30;
  }

LABEL_10:
  if (v26 >= 1)
  {
    for (i = 0; i != v26; ++i)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x253037FE0](i, v25);
      }

      else
      {
        v28 = *(v25 + 8 * i + 32);
      }

      v29 = v28;
      [v28 cancel];
    }

    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD2FD8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24DD3C1AC(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24DD3C18C(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URLSessionTransport.State(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD3CBF8(v2, v12, type metadata accessor for URLSessionTransport.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_24DD3CBF8(v12, v6, sub_24DD3C1AC);
      sub_24DD37960();
      v18 = v17;
      sub_24DD3CBF8(v6, v2, sub_24DD3C1AC);
      swift_storeEnumTagMultiPayload();
      *a1 = v18;
LABEL_8:
      type metadata accessor for URLSessionTransport.State.CancelConnectAction(0);
      return swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
    type metadata accessor for URLSessionTransport.State.CancelConnectAction(0);
    swift_storeEnumTagMultiPayload();
    result = swift_getEnumCaseMultiPayload();
    if (result > 1)
    {
      if (result != 2)
      {
        return result;
      }

      v25 = *(v4 + 20);
    }

    else
    {
      if (!result)
      {
      }

      v25 = *(v7 + 20);
    }

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    return (*(*(v31 - 8) + 8))(&v12[v25], v31);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v14 = *v12;
      swift_storeEnumTagMultiPayload();
      sub_24DD4B334();
      sub_24DD3D308(&qword_27F1AF598, MEMORY[0x277D85678], MEMORY[0x277D85680]);
      v15 = swift_allocError();
      sub_24DD4B104();
      *a1 = v14;
      *(a1 + 8) = v15;
      *(a1 + 16) = 0;
      *(a1 + 24) = 1;
      type metadata accessor for URLSessionTransport.State.CancelConnectAction(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_24DD3CBF8(v12, v9, sub_24DD3C18C);
    if (*(*v9 + 16))
    {
      sub_24DD37960();
      v20 = v19;
      *v2 = *v9;
      *(v2 + 8) = *(v9 + 8);
      v21 = *(v7 + 20);
      v22 = *(v4 + 20);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
      v24 = *(v23 - 8);
      (*(v24 + 16))(v2 + v22, &v9[v21], v23);

      (*(v24 + 8))(&v9[v21], v23);
      swift_storeEnumTagMultiPayload();
      *a1 = v20;
      goto LABEL_8;
    }

    swift_storeEnumTagMultiPayload();
    v26 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B08A8, &qword_24DD4DA68) + 48);
    v27 = *(v7 + 20);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    v29 = *(v28 - 8);
    (*(v29 + 16))(a1, &v9[v27], v28);
    sub_24DD4B334();
    sub_24DD3D308(&qword_27F1AF598, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v30 = swift_allocError();
    sub_24DD4B104();
    *v26 = v30;
    *(v26 + 8) = 1;
    type metadata accessor for URLSessionTransport.State.CancelConnectAction(0);
    swift_storeEnumTagMultiPayload();

    return (*(v29 + 8))(&v9[v27], v28);
  }
}

Swift::Void __swiftcall URLSessionTransport.beginGracefulShutdown()()
{
  v1 = v0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06D0, &qword_24DD4D6E8);
  v35 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v3 = &v34 - v2;
  v4 = sub_24DD4AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v36 = *(v39 - 1);
  MEMORY[0x28223BE20](v39);
  v8 = &v34 - v7;
  v9 = type metadata accessor for URLSessionTransport.State.BeginGracefulShutdownAction(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v38 = (&v34 - v13);
  v14 = sub_24DD4B084();
  v15 = sub_24DD4B414();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24DD09000, v14, v15, "Beginning graceful shutdown for URLSession transport", v16, 2u);
    MEMORY[0x253038870](v16, -1, -1);
  }

  v17 = (v1 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8);
  v18 = v38;
  sub_24DD307EC(v38);
  os_unfair_lock_unlock(v17);
  sub_24DD3BD4C(v18, v12, type metadata accessor for URLSessionTransport.State.BeginGracefulShutdownAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = *v12;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E8, &qword_24DD4D700);
      v22 = v37;
      (*(v5 + 32))(v37, &v12[*(v21 + 48)], v4);
      v23 = *(v20 + 16);
      if (v23)
      {
        v24 = v35 + 16;
        v39 = *(v35 + 16);
        v25 = v20 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
        v26 = v5;
        v27 = *(v35 + 72);
        v35 = v20;
        v36 = v26;
        v28 = (v26 + 16);
        v29 = v40;
        do
        {
          v39(v3, v25, v29);
          sub_24DD3D308(&qword_27F1AF400, MEMORY[0x277D0B938], MEMORY[0x277D0B940]);
          v30 = swift_allocError();
          (*v28)(v31, v22, v4);
          v41 = v30;
          sub_24DD4B304();
          v29 = v40;
          (*(v24 - 8))(v3, v40);
          v25 += v27;
          --v23;
        }

        while (v23);

        v5 = v36;
        v18 = v38;
      }

      else
      {
      }

      (*(v5 + 8))(v22, v4);
    }
  }

  else
  {
    v32 = v36;
    v33 = v39;
    (*(v36 + 32))(v8, v12, v39);
    sub_24DD4B314();
    (*(v32 + 8))(v8, v33);
  }

  sub_24DD3BCCC(v18, type metadata accessor for URLSessionTransport.State.BeginGracefulShutdownAction);
}

uint64_t sub_24DD307EC@<X0>(void *a1@<X8>)
{
  v3 = sub_24DD3C18C(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = sub_24DD4AF64();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_24DD4AFC4();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for URLSessionTransport.State(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD3CBF8(v1, v13, type metadata accessor for URLSessionTransport.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_24DD3CBF8(v13, v1, sub_24DD3C1AC);
LABEL_8:
      swift_storeEnumTagMultiPayload();
      type metadata accessor for URLSessionTransport.State.BeginGracefulShutdownAction(0);
      return swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
    type metadata accessor for URLSessionTransport.State.BeginGracefulShutdownAction(0);
    swift_storeEnumTagMultiPayload();
    result = swift_getEnumCaseMultiPayload();
    if (result > 1)
    {
      if (result != 2)
      {
        return result;
      }

      v21 = *(sub_24DD3C1AC(0) + 20);
    }

    else
    {
      if (!result)
      {
      }

      v21 = *(v3 + 20);
    }

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    return (*(*(v25 - 8) + 8))(&v13[v21], v25);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v15 = *v13;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E8, &qword_24DD4D700);
      *a1 = v15;

      sub_24DD4AF84();
      MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
      sub_24DD4AFD4();

      type metadata accessor for URLSessionTransport.State.BeginGracefulShutdownAction(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_24DD3CBF8(v13, v8, sub_24DD3C18C);
    if (*(*v8 + 16))
    {
      sub_24DD3CBF8(v8, v6, sub_24DD3C18C);
      *v1 = *v6;
      *(v1 + 8) = *(v6 + 8);
      v17 = *(v3 + 20);
      v18 = *(sub_24DD3C1AC(0) + 20);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
      v20 = *(v19 - 8);
      (*(v20 + 16))(v1 + v18, &v6[v17], v19);

      (*(v20 + 8))(&v6[v17], v19);
      goto LABEL_8;
    }

    swift_storeEnumTagMultiPayload();
    v22 = *(v3 + 20);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    v24 = *(v23 - 8);
    (*(v24 + 16))(a1, &v8[v22], v23);
    type metadata accessor for URLSessionTransport.State.BeginGracefulShutdownAction(0);
    swift_storeEnumTagMultiPayload();

    return (*(v24 + 8))(&v8[v22], v23);
  }
}

void sub_24DD30D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DD4AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URLSessionTransport.State.EnqueueAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (a2 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state);
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8);
  sub_24DD311E0(a1, v10);
  os_unfair_lock_unlock(v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v5 + 32))(v7, v10, v4);
      v13 = sub_24DD4B084();
      v14 = sub_24DD4B424();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_24DD09000, v13, v14, "Rejecting stream", v15, 2u);
        MEMORY[0x253038870](v15, -1, -1);
      }

      sub_24DD3D308(&qword_27F1AF400, MEMORY[0x277D0B938], MEMORY[0x277D0B940]);
      v16 = swift_allocError();
      (*(v5 + 16))(v17, v7, v4);
      v34 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06D0, &qword_24DD4D6E8);
      sub_24DD4B304();
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v27 = sub_24DD4B084();
      v28 = sub_24DD4B424();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_24DD09000, v27, v28, "Enqueued request for a stream", v29, 2u);
        MEMORY[0x253038870](v29, -1, -1);
      }
    }
  }

  else
  {
    v19 = *v10;
    v18 = v10[1];
    v20 = sub_24DD4B084();
    v21 = sub_24DD4B424();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33 = v23;
      v34 = 0;
      *v22 = 136315138;
      v35 = 0xE000000000000000;
      v31 = 0x726F70736E617274;
      v32 = 0xEA00000000005F74;
      v30 = v19;
      v24 = sub_24DD4B624();
      MEMORY[0x253037C70](v24);

      MEMORY[0x253037C70](v31, v32);

      MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
      v31 = v18;
      v25 = sub_24DD4B624();
      MEMORY[0x253037C70](v25);

      v26 = sub_24DD38DE0(v34, v35, &v33);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_24DD09000, v20, v21, "Dequeued stream %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x253038870](v23, -1, -1);
      MEMORY[0x253038870](v22, -1, -1);
    }

    v34 = v19;
    v35 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06D0, &qword_24DD4D6E8);
    sub_24DD4B314();
  }
}

uint64_t sub_24DD311E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a1;
  v28 = a2;
  v3 = sub_24DD4AF64();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_24DD4AFC4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_24DD3C18C(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06D0, &qword_24DD4D6E8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for URLSessionTransport.State(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD3CBF8(v2, v14, type metadata accessor for URLSessionTransport.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_24DD3CBF8(v14, v2, sub_24DD3C1AC);
      swift_storeEnumTagMultiPayload();
      sub_24DD4AF84();
      MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
      sub_24DD4AFD4();
      type metadata accessor for URLSessionTransport.State.EnqueueAction(0);
      return swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
    sub_24DD4AF84();
    MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
    sub_24DD4AFD4();
    type metadata accessor for URLSessionTransport.State.EnqueueAction(0);
    swift_storeEnumTagMultiPayload();
    result = swift_getEnumCaseMultiPayload();
    if (result > 1)
    {
      if (result != 2)
      {
        return result;
      }

      v24 = *(sub_24DD3C1AC(0) + 20);
    }

    else
    {
      if (!result)
      {
      }

      v24 = *(v5 + 20);
    }

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    return (*(*(v25 - 8) + 8))(&v14[v24], v25);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_24DD3CBF8(v14, v7, sub_24DD3C18C);
    v21 = v7[1];
    v20 = v7[2];
    v7[2] = v20 + 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v7;
    sub_24DD3A018(0, v21, v20, isUniquelyReferenced_nonNull_native);
    *v7 = v29;
    sub_24DD3CBF8(v7, v2, sub_24DD3C18C);
    swift_storeEnumTagMultiPayload();
    v23 = v28;
    *v28 = v21;
    v23[1] = v20;
    type metadata accessor for URLSessionTransport.State.EnqueueAction(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v16 = *v14;
    (*(v9 + 16))(v11, v27, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_24DD4A2A0(0, v16[2] + 1, 1, v16);
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_24DD4A2A0((v17 > 1), v18 + 1, 1, v16);
    }

    v16[2] = v18 + 1;
    (*(v9 + 32))(v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18, v11, v8);
    *v2 = v16;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for URLSessionTransport.State.EnqueueAction(0);
    return swift_storeEnumTagMultiPayload();
  }
}