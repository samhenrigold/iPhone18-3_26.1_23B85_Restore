uint64_t sub_21B2D9E68(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = type metadata accessor for _RangeSetStorage._Storage(0, *(a3 + 16), *(a3 + 24), a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v19 - v10);
  (*(v9 + 16))(&v19 - v10, v4, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    if (!a2)
    {
      v13 = *(v9 + 8);
      v13(v4, v8);
      v14 = sub_21B34B424();
      (*(*(v14 - 8) + 32))(v4, a1, v14);
      swift_storeEnumTagMultiPayload();
      return v13(v11, v8);
    }

    __break(1u);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_8:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v20 = *v11;
  v16 = *(v9 + 8);
  v16(v4, v8);
  swift_storeEnumTagMultiPayload();
  v17 = sub_21B34B424();
  sub_21B34B054();
  sub_21B34AFC4();
  v18 = v20;
  sub_21B305254(a2, v20, v17);
  (*(*(v17 - 8) + 40))(v18 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)) + *(*(v17 - 8) + 72) * a2, a1, v17);
  nullsub_14();
  v16(v5, v8);
  *v5 = v20;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21B2DA140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v53 = a6;
  v51 = a3;
  v48 = a2;
  v49 = a1;
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);
  v52 = sub_21B34B424();
  v11 = *(v52 - 8);
  v12 = MEMORY[0x28223BE20](v52);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v47 - v16;
  v54 = a5;
  v18 = *(a5 - 8);
  MEMORY[0x28223BE20](v15);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for _RangeSetStorage._Storage(0, v9, v10, v21);
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = (&v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v28 = (&v47 - v27);
  v29 = *(v23 + 16);
  v50 = v7;
  v29(&v47 - v27, v7, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v55 = *v28;
      v31 = *(v23 + 8);
      v32 = v50;
      v31(v50, v22);
      swift_storeEnumTagMultiPayload();
      (*(v18 + 16))(v20, v51, v54);
      sub_21B34B054();
      sub_21B34AFB4();
      v31(v32, v22);
      *v32 = v55;
      return swift_storeEnumTagMultiPayload();
    }

    v39 = v51;
    v40 = v54;
    result = sub_21B34B214();
    if ((result & 1) == 0)
    {
      (*(v18 + 16))(v20, v39, v40);
      *v26 = sub_21B34B084();
LABEL_15:
      swift_storeEnumTagMultiPayload();
      return (*(v23 + 40))(v50, v26, v22);
    }
  }

  else
  {
    v34 = *(v11 + 32);
    v47 = v17;
    v35 = v17;
    v36 = v52;
    v34(v35, v28, v52);
    v37 = v51;
    v38 = sub_21B34B214();
    if (v49 != v48)
    {
      if (v38)
      {
        (*(v11 + 8))(v47, v36);
        (*(v23 + 8))(v50, v22);
        return swift_storeEnumTagMultiPayload();
      }

      (*(v18 + 16))(v20, v37, v54);
      v45 = sub_21B34B084();
      (*(v11 + 8))(v47, v36);
      *v26 = v45;
      goto LABEL_15;
    }

    if ((v38 & 1) == 0)
    {
      if (v49)
      {
        sub_21B34B954();
        swift_allocObject();
        v41 = v36;
        v42 = sub_21B34AF94();
        (*(v11 + 16))(v43, v47, v41);
        v56 = v42;
        sub_21B34B054();
        nullsub_14();
        (*(v18 + 16))(v20, v37, v54);
        v36 = v41;
        v44 = v47;
        sub_21B34B014();
      }

      else
      {
        (*(v18 + 16))(v20, v37, v54);
        v56 = sub_21B34B084();
        v44 = v47;
        (*(v11 + 16))(v14, v47, v36);
        sub_21B34B054();
        sub_21B34B024();
      }

      (*(v11 + 8))(v44, v36);
      v46 = v50;
      (*(v23 + 8))(v50, v22);
      *v46 = v56;
      return swift_storeEnumTagMultiPayload();
    }

    return (*(v11 + 8))(v47, v36);
  }

  return result;
}

uint64_t sub_21B2DA730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for _RangeSetStorage._Storage(255, a3, a4, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = TupleTypeMetadata2 - 8;
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = (v40 - v11);
  v40[1] = a3;
  v40[2] = a4;
  v13 = sub_21B34B424();
  v41 = *(v13 - 8);
  v42 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v40[0] = v40 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v40 - v19;
  v21 = (v12 + *(v10 + 56));
  v22 = *(v8 - 8);
  v23 = *(v22 + 16);
  v23(v12, a1, v8);
  v23(v21, a2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v30 = swift_getEnumCaseMultiPayload();
      if (!v30)
      {
        (*(v22 + 8))(v21, v8);
        v27 = 0;
        return v27 & 1;
      }

      if (v30 != 1)
      {
        v27 = 1;
        return v27 & 1;
      }

      v25 = *v21;
      goto LABEL_12;
    }

    v25 = *v12;
    v26 = swift_getEnumCaseMultiPayload();
    if (v26)
    {
      if (v26 == 1)
      {
        swift_getWitnessTable();
        v27 = sub_21B34B074();

LABEL_13:

        return v27 & 1;
      }

LABEL_12:
      v43 = v25;
      sub_21B34B054();
      swift_getWitnessTable();
      v27 = sub_21B34B2B4();
      goto LABEL_13;
    }

    v12 = v21;
    v29 = v41;
  }

  else
  {
    v28 = swift_getEnumCaseMultiPayload();
    if (!v28)
    {
      v35 = v41;
      v34 = v42;
      v36 = *(v41 + 32);
      v37 = v40[0];
      v36(v40[0], v12, v42);
      v36(v16, v21, v34);
      v27 = sub_21B34B3F4();
      v38 = *(v35 + 8);
      v38(v16, v34);
      v38(v37, v34);
      return v27 & 1;
    }

    v29 = v41;
    if (v28 != 1)
    {
      (*(v41 + 8))(v12, v42);
      v27 = 0;
      return v27 & 1;
    }
  }

  v31 = v42;
  (*(v29 + 32))(v20, v12, v42);
  if (sub_21B34B004() == 1)
  {
    v32 = v40[0];
    sub_21B34B094();

    v27 = sub_21B34B3F4();
    v33 = *(v29 + 8);
    v33(v32, v31);
    v33(v20, v31);
  }

  else
  {
    (*(v29 + 8))(v20, v31);

    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_21B2DABCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v6 = sub_21B34B424();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  swift_getWitnessTable();
  v10 = sub_21B34B7D4();
  v24 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  (*(*(a2 - 8) + 16))(&v24 - v11, v3, a2);
  v25 = v10;
  v13 = *(v10 + 36);
  *&v12[v13] = 0;
  if (sub_21B2D9D24(a2, v14, v15, v16))
  {
    v18 = 0;
    do
    {
      sub_21B2D91CC(v18, a2, v17, v9);
      v27 = v18;
      swift_getWitnessTable();
      sub_21B34B164();
      MEMORY[0x21CEEDC10](a1, v6, v26);
      (*(v7 + 8))(v9, v6);
      v22 = sub_21B2D9D24(a2, v19, v20, v21);
      v18 = *&v12[v13];
    }

    while (v18 != v22);
  }

  return (*(v24 + 8))(v12, v25);
}

uint64_t sub_21B2DAE38(uint64_t a1, uint64_t a2)
{
  sub_21B34BBC4();
  sub_21B2DABCC(v5, a1, a2);
  return sub_21B34BC24();
}

uint64_t sub_21B2DAEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_21B34BBC4();
  sub_21B2DABCC(v6, a2, v4);
  return sub_21B34BC24();
}

void (*sub_21B2DAEFC(void *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = v3;
  v8[1] = a3;
  v10 = sub_21B34B424();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v15 = v13;
  v16 = *a2;
  v9[5] = v15;
  v9[6] = v16;
  sub_21B2D91CC(v16, a3, v14, v15);
  return sub_21B2DB020;
}

void sub_21B2DB020(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[4];
  if (a2)
  {
    v8 = v4[2];
    v9 = v4[3];
    v10 = v4[1];
    (*(v9 + 16))((*a1)[4], v5, v8, a4);
    sub_21B2D9E68(v7, v6, v10, v11);
    (*(v9 + 8))(v5, v8);
  }

  else
  {
    sub_21B2D9E68((*a1)[5], v6, v4[1], a4);
  }

  free(v5);
  free(v7);

  free(v4);
}

uint64_t sub_21B2DB0EC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  sub_21B2DBAB4(a1, &v7, a3, a4);
  swift_getWitnessTable();
  v5 = sub_21B34BB44();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

void (*sub_21B2DB18C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_21B2D9394(v8, a2, a3, a4);
  return sub_21B2444C0;
}

uint64_t sub_21B2DB29C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_21B2DB324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_21B2D9D24(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

void (*sub_21B2DB34C(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B2DB3D4(v6, *a2, a3);
  return sub_21B285370;
}

void (*sub_21B2DB3D4(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = sub_21B34B424();
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  sub_21B2D91CC(a2, a3, v9, v8);
  return sub_21B2854A4;
}

uint64_t sub_21B2DB4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21B2D9760(a1, a2, WitnessTable, a3);
}

void *sub_21B2DB514()
{
  swift_getWitnessTable();

  return sub_21B34B194();
}

uint64_t sub_21B2DB598(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_21B34B164();
}

uint64_t sub_21B2DB620(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_21B2DB698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  (*(*(a1 - 8) + 32))(a2, v3, a1);
  swift_getWitnessTable();
  result = sub_21B34B7D4();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_21B2DB724(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21B2DB778(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_21B2DBAB0(v1, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v4;
}

uint64_t sub_21B2DB810(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21B2DA140(*a1, a1[1], a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

uint64_t sub_21B2DBAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B34BB44();
  swift_getWitnessTable();

  return sub_21B34B934();
}

uint64_t static Column.+= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DC36C(a1, a2, a3, a4, a5, a6, sub_21B2DF5B4, sub_21B2DBB8C);
}

{
  return sub_21B2DC36C(a1, a2, a3, a4, a5, a6, sub_21B2DF5B4, sub_21B2DBC20);
}

uint64_t static Column.-= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DC36C(a1, a2, a3, a4, a5, a6, sub_21B2DF5B4, sub_21B2DBCBC);
}

{
  return sub_21B2DC36C(a1, a2, a3, a4, a5, a6, sub_21B2DF5B4, sub_21B2DBD28);
}

uint64_t static Column.*= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DC36C(a1, a2, a3, a4, a5, a6, sub_21B2DF5B4, sub_21B2DBD94);
}

{
  return sub_21B2DC36C(a1, a2, a3, a4, a5, a6, sub_21B2DF5B4, sub_21B2DBE00);
}

uint64_t static Column./= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DC36C(a1, a2, a3, a4, a5, a6, sub_21B2DF5B4, sub_21B2DBE6C);
}

{
  return sub_21B2DC36C(a1, a2, a3, a4, a5, a6, sub_21B2DF5B4, sub_21B2DBED8);
}

{
  return sub_21B2DC36C(a1, a2, a3, a4, a5, a6, sub_21B2DBF44, sub_21B2DC300);
}

{
  return sub_21B2DC36C(a1, a2, a3, a4, a5, a6, sub_21B2DF5B4, sub_21B2DCD28);
}

uint64_t sub_21B2DBF60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, char *, uint64_t, uint64_t))
{
  v37 = a8;
  v35 = a6;
  v33 = a3;
  v31 = a4;
  v39 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v32 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v11;
  v34 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v40 = *(TupleTypeMetadata2 - 8);
  v26[0] = *(v40 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = v26 - v14;
  result = sub_21B34B004();
  if (result)
  {
    v17 = 0;
    v18 = *(TupleTypeMetadata2 + 48);
    v29 = a2;
    v30 = (v40 + 16);
    v27 = *a1;
    v28 = v18;
    v26[3] = AssociatedTypeWitness - 8;
    v26[4] = v39 + 16;
    v26[2] = v39 + 8;
    do
    {
      v19 = sub_21B34AFF4();
      sub_21B34AFA4();
      if (v19)
      {
        result = (*(v40 + 16))(v15, a2 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v17, TupleTypeMetadata2);
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_21B34B684();
        if (v26[0] != 8)
        {
          __break(1u);
          return result;
        }

        v41[0] = result;
        (*v30)(v15, v41, TupleTypeMetadata2);
        result = swift_unknownObjectRelease();
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_10:
          __break(1u);
          return result;
        }
      }

      v42 = *v15;
      v21 = v28;
      v22 = sub_21B34B314();
      v23 = v39;
      v24 = v31;
      v25 = v32;
      (*(v39 + 16))(v32);
      v22(v41, 0);
      (*(*(AssociatedTypeWitness - 8) + 8))(&v15[v21]);
      a2 = v29;
      v37(v27 + *(v23 + 72) * v42, v25, v24, v35);
      (*(v23 + 8))(v25, v24);
      result = sub_21B34B004();
      ++v17;
    }

    while (v20 != result);
  }

  return result;
}

uint64_t sub_21B2DC36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void *))
{
  v33 = a8;
  v32 = a7;
  v31 = a5;
  v30 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E978, &qword_21B353910);
  v28[2] = v15;
  v16 = sub_21B2A85CC();
  v28[1] = v16;
  v17 = *(swift_getAssociatedConformanceWitness() + 8);
  v48 = v15;
  *&v49 = AssociatedTypeWitness;
  *(&v49 + 1) = v16;
  v50 = v17;
  v18 = sub_21B34B674();
  MEMORY[0x28223BE20](v18);
  v28[0] = a1;
  v48 = *a1;
  v49 = *(a1 + 8);
  type metadata accessor for Column(0, a3, v19, v20);
  swift_getWitnessTable();
  sub_21B34B194();
  v46 = v47;
  v21 = v30;
  sub_21B34B204();
  sub_21B34BA54();
  (*(v29 + 8))(v14, AssociatedTypeWitness);
  v41 = a3;
  v42 = a4;
  v22 = v31;
  v43 = v31;
  v44 = a6;
  v45 = v28[0];
  swift_getWitnessTable();
  v23 = sub_21B34AF24();
  v35 = a3;
  v36 = a4;
  v37 = v22;
  v38 = a6;
  v39 = v23;
  v40 = v21;
  v26 = type metadata accessor for PackedOptionalsArray(0, a3, v24, v25);
  sub_21B32ABE8(v33, v34, v26, MEMORY[0x277D84F78] + 8);
}

BOOL sub_21B2DC690(Swift::Int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  type metadata accessor for Column(0, a3, a3, a4);
  v5 = Column.isNil(at:)(v4);

  return !v5;
}

uint64_t sub_21B2DC728(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, char *, uint64_t, uint64_t))
{
  v41 = a8;
  v40 = a6;
  v43 = a1;
  v61 = a4;
  v12 = sub_21B34B474();
  v62 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v42 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  v59 = a7;
  v60 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = &v35 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v55 = *(TupleTypeMetadata2 - 8);
  v36 = *(v55 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v64 = &v35 - v22;
  result = sub_21B34B004();
  if (result)
  {
    v24 = 0;
    v25 = *(TupleTypeMetadata2 + 48);
    v51 = (v18 + 32);
    v52 = v25;
    v53 = (v62 + 16);
    v54 = (v55 + 16);
    v49 = (v62 + 8);
    v50 = v61 - 8;
    v45 = (v18 + 8);
    v47 = v16;
    v39 = a3;
    v48 = a2;
    v38 = v12;
    v46 = TupleTypeMetadata2;
    v58 = v20;
    v37 = AssociatedTypeWitness;
    while (1)
    {
      v27 = sub_21B34AFF4();
      sub_21B34AFA4();
      if (v27)
      {
        result = (*(v55 + 16))(v64, a2 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v24, TupleTypeMetadata2);
      }

      else
      {
        result = sub_21B34B684();
        if (v36 != 8)
        {
          goto LABEL_16;
        }

        v63[0] = result;
        (*v54)(v64, v63, TupleTypeMetadata2);
        result = swift_unknownObjectRelease();
      }

      v28 = v53;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v62 = v24 + 1;
      v56 = *v64;
      (*v51)(v20, &v64[v52], AssociatedTypeWitness);
      v29 = sub_21B34B314();
      v57 = *v28;
      v57(v16);
      v29(v63, 0);
      v30 = *(v61 - 8);
      v31 = *(v30 + 48);
      if ((v31)(v16, 1) == 1)
      {
        v26 = v58;
        (*v45)(v58, AssociatedTypeWitness);
        (*v49)(v16, v12);
        a2 = v48;
        v20 = v26;
      }

      else
      {
        (*v49)(v16, v12);
        v32 = *v43;
        v33 = v61;
        v44 = sub_21B34B314();
        v34 = v42;
        v57(v42);
        v44(v63, 0);
        result = v31(v34, 1, v33);
        if (result == 1)
        {
          goto LABEL_15;
        }

        v41(v32 + *(v30 + 72) * v56, v34, v33, v40);
        v20 = v58;
        AssociatedTypeWitness = v37;
        (*v45)(v58, v37);
        (*(v30 + 8))(v34, v33);
        a2 = v48;
        v12 = v38;
      }

      TupleTypeMetadata2 = v46;
      result = sub_21B34B004();
      ++v24;
      v16 = v47;
      if (v62 == result)
      {
        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t static ColumnSlice.+= infix<A>(_:_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DCE40(a1, a2, a3, a4, a5, a6, MEMORY[0x277D843D0]);
}

{
  return sub_21B2DD6A4(a1, a2, a3, a4, a5, a6, MEMORY[0x277D843D0]);
}

uint64_t static ColumnSlice.-= infix<A>(_:_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DCE40(a1, a2, a3, a4, a5, a6, MEMORY[0x277D843D8]);
}

{
  return sub_21B2DD6A4(a1, a2, a3, a4, a5, a6, MEMORY[0x277D843D8]);
}

uint64_t static ColumnSlice.*= infix<A>(_:_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DCE40(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83C20]);
}

{
  return sub_21B2DD6A4(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83C20]);
}

uint64_t static ColumnSlice./= infix<A>(_:_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DCE40(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83F50]);
}

{
  return sub_21B2DD6A4(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83F50]);
}

{
  return sub_21B2DCE40(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83558]);
}

{
  return sub_21B2DD6A4(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83558]);
}

uint64_t sub_21B2DCE40(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, char *, uint64_t, uint64_t))
{
  v69 = a7;
  v68 = a5;
  v76 = a2;
  v67 = sub_21B34B474();
  v57 = *(v67 - 8);
  v11 = MEMORY[0x28223BE20](v67);
  v71 = &v55 - v12;
  v56 = *(a3 - 8);
  MEMORY[0x28223BE20](v11);
  v70 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v60 = &v55 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = sub_21B34B474();
  MEMORY[0x28223BE20](v17 - 8);
  v75 = (&v55 - v18);
  v19 = swift_getAssociatedTypeWitness();
  v80 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v79 = &v55 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E978, &qword_21B353910);
  v22 = sub_21B2A85CC();
  v23 = *(swift_getAssociatedConformanceWitness() + 8);
  *&v85 = v21;
  *(&v85 + 1) = v19;
  v66 = v21;
  v24 = v19;
  v62 = v19;
  v77 = v22;
  v86 = v22;
  *&v87 = v23;
  v25 = v23;
  v65 = v23;
  v78 = sub_21B34B674();
  MEMORY[0x28223BE20](v78);
  v61 = (&v55 - v26);
  *&v85 = v21;
  *(&v85 + 1) = v24;
  v86 = v22;
  *&v87 = v25;
  v27 = sub_21B34B664();
  v58 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v81 = &v55 - v28;
  v29 = *(a1 + 2);
  v85 = *a1;
  v86 = v29;
  v87 = *(a1 + 24);
  v72 = a3;
  v82 = type metadata accessor for ColumnSlice(0, a3, v30, v31);
  swift_getWitnessTable();
  sub_21B34B194();
  v83 = v84;
  v32 = v79;
  v33 = v75;
  v73 = a4;
  v74 = a6;
  v34 = v60;
  v35 = AssociatedTypeWitness;
  sub_21B34B204();
  v36 = v62;
  sub_21B34BA54();
  (*(v80 + 1))(v32, v36);
  sub_21B34B644();
  sub_21B34B654();
  v37 = *(TupleTypeMetadata2 - 8);
  v38 = *(v37 + 48);
  v79 = (v37 + 48);
  v80 = v38;
  if (v38(v33, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v58 + 8))(v81, v27);
  }

  v41 = *(v14 + 32);
  v40 = v14 + 32;
  v78 = v41;
  v66 = (v56 + 16);
  v65 = (v56 + 48);
  v62 = (v56 + 8);
  v61 = (v57 + 8);
  v77 = (v40 - 24);
  v64 = v27;
  v63 = TupleTypeMetadata2;
  while (1)
  {
    v42 = *v33;
    v78(v34, v33 + *(TupleTypeMetadata2 + 48), v35);
    v44 = *(a1 + 2);
    v43 = *(a1 + 3);
    v45 = *(a1 + 4);
    v85 = *a1;
    v86 = v44;
    *&v87 = v43;
    *(&v87 + 1) = v45;

    LOBYTE(v45) = ColumnSlice.isNil(at:)(v42);

    if ((v45 & 1) == 0)
    {
      break;
    }

LABEL_4:
    (*v77)(v34, v35);
    sub_21B34B654();
    if (v80(v33, 1, TupleTypeMetadata2) == 1)
    {
      return (*(v58 + 8))(v81, v27);
    }
  }

  v46 = v40;
  v47 = v35;
  v48 = v34;
  v49 = sub_21B34B314();
  v50 = v70;
  v51 = v72;
  (*v66)(v70);
  v49(&v85, 0);
  v52 = *(a1 + 2);
  v85 = *a1;
  v86 = v52;
  v87 = *(a1 + 24);
  v53 = v71;
  v54 = v82;
  ColumnSlice.subscript.getter(v42, v82);
  result = (*v65)(v53, 1, v51);
  if (result != 1)
  {
    v69(v53, v50, v51, v68);
    (*v62)(v50, v51);
    sub_21B29318C(v53, v42, v54);
    (*v61)(v53, v67);
    v35 = v47;
    v40 = v46;
    v34 = v48;
    TupleTypeMetadata2 = v63;
    v33 = v75;
    v27 = v64;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2DD6A4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, char *, uint64_t, uint64_t))
{
  v62 = a7;
  v61 = a5;
  v74 = a2;
  v82 = sub_21B34B474();
  v78 = *(v82 - 8);
  v11 = MEMORY[0x28223BE20](v82);
  v64 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v65 = &v58 - v14;
  MEMORY[0x28223BE20](v13);
  v66 = &v58 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v59 = &v58 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = sub_21B34B474();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v58 - v18);
  v76 = a6;
  v75 = a4;
  v20 = swift_getAssociatedTypeWitness();
  v86 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E978, &qword_21B353910);
  v24 = sub_21B2A85CC();
  v25 = *(swift_getAssociatedConformanceWitness() + 8);
  *&v90 = v23;
  *(&v90 + 1) = v20;
  v80 = v23;
  v81 = v25;
  v91 = v24;
  *&v92 = v25;
  v83 = v24;
  v26 = v25;
  v84 = sub_21B34B674();
  MEMORY[0x28223BE20](v84);
  *&v90 = v23;
  *(&v90 + 1) = v20;
  v91 = v24;
  *&v92 = v26;
  v27 = sub_21B34B664();
  v58 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v58 - v28;
  v30 = *(a1 + 2);
  v90 = *a1;
  v91 = v30;
  v92 = *(a1 + 24);
  v73 = a3;
  v33 = type metadata accessor for ColumnSlice(0, a3, v31, v32);
  swift_getWitnessTable();
  sub_21B34B194();
  v88 = v89;
  v34 = v59;
  sub_21B34B204();
  sub_21B34BA54();
  v35 = v20;
  v36 = TupleTypeMetadata2;
  (*(v86 + 8))(v22, v35);
  sub_21B34B644();
  v83 = v29;
  v84 = v27;
  sub_21B34B654();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v80 = v37 + 48;
  v81 = v38;
  if (v38(v19, 1, v36) == 1)
  {
    return (*(v58 + 8))(v83, v84);
  }

  v79 = *(v85 + 32);
  v72 = (v78 + 2);
  v63 = v73 - 8;
  v70 = v78 + 1;
  v85 += 32;
  v78 = (v85 - 24);
  v71 = v33;
  while (1)
  {
    v40 = *v19;
    v79(v34, v19 + *(v36 + 48), AssociatedTypeWitness);
    v42 = *(a1 + 2);
    v41 = *(a1 + 3);
    v43 = *(a1 + 4);
    v90 = *a1;
    v91 = v42;
    *&v92 = v41;
    *(&v92 + 1) = v43;

    v86 = v40;
    LOBYTE(v43) = ColumnSlice.isNil(at:)(v40);

    if ((v43 & 1) == 0)
    {
      v44 = sub_21B34B314();
      v45 = a1;
      v46 = v66;
      v47 = v82;
      v69 = *v72;
      v69(v66);
      v44(&v90, 0);
      v68 = *(v73 - 8);
      v77 = *(v68 + 48);
      LODWORD(v44) = v77(v46, 1);
      v48 = v46;
      a1 = v45;
      v67 = *v70;
      v67(v48, v47);
      if (v44 != 1)
      {
        break;
      }
    }

    (*v78)(v34, AssociatedTypeWitness);
LABEL_5:
    sub_21B34B654();
    if (v81(v19, 1, v36) == 1)
    {
      return (*(v58 + 8))(v83, v84);
    }
  }

  v49 = sub_21B34B314();
  v50 = v65;
  v69(v65);
  v49(&v90, 0);
  v51 = v73;
  result = (v77)(v50, 1, v73);
  if (result == 1)
  {
    goto LABEL_12;
  }

  v52 = *(v45 + 2);
  v90 = *v45;
  v91 = v52;
  v92 = *(v45 + 24);
  v53 = v64;
  v54 = v86;
  v55 = v71;
  ColumnSlice.subscript.getter(v86, v71);
  result = (v77)(v53, 1, v51);
  if (result != 1)
  {
    v56 = v64;
    v57 = v65;
    v62(v64, v65, v51, v61);
    sub_21B29318C(v56, v54, v55);
    v67(v56, v82);
    (*v78)(v34, AssociatedTypeWitness);
    (*(v68 + 8))(v57, v51);
    goto LABEL_5;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t static DiscontiguousColumnSlice.+= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DE098(a1, a2, a3, a4, a5, a6, MEMORY[0x277D843D0]);
}

{
  return sub_21B2DEAB8(a1, a2, a3, a4, a5, a6, MEMORY[0x277D843D0]);
}

uint64_t static DiscontiguousColumnSlice.-= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DE098(a1, a2, a3, a4, a5, a6, MEMORY[0x277D843D8]);
}

{
  return sub_21B2DEAB8(a1, a2, a3, a4, a5, a6, MEMORY[0x277D843D8]);
}

uint64_t static DiscontiguousColumnSlice.*= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DE098(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83C20]);
}

{
  return sub_21B2DEAB8(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83C20]);
}

uint64_t static DiscontiguousColumnSlice./= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DE098(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83F50]);
}

{
  return sub_21B2DEAB8(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83F50]);
}

{
  return sub_21B2DE098(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83558]);
}

{
  return sub_21B2DEAB8(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83558]);
}

uint64_t sub_21B2DE098(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, char *, uint64_t, uint64_t))
{
  v62 = a7;
  v61 = a5;
  v68 = a2;
  v60 = sub_21B34B474();
  v56 = *(v60 - 8);
  v11 = MEMORY[0x28223BE20](v60);
  v64 = &v54 - v12;
  v57 = *(a3 - 8);
  MEMORY[0x28223BE20](v11);
  v63 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v78 = &v54 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_21B34B474();
  MEMORY[0x28223BE20](v16 - 8);
  v76 = (&v54 - v17);
  v18 = swift_getAssociatedTypeWitness();
  v82 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v81 = &v54 - v19;
  v65 = a3;
  v83 = type metadata accessor for DiscontiguousColumnSlice(255, a3, v20, v21);
  WitnessTable = swift_getWitnessTable();
  v22 = sub_21B34AAF4();
  v23 = swift_getWitnessTable();
  v24 = *(swift_getAssociatedConformanceWitness() + 8);
  *&v94 = v22;
  *(&v94 + 1) = v18;
  v69 = v18;
  *&v95 = v23;
  *(&v95 + 1) = v24;
  v73 = v23;
  v75 = sub_21B34B674();
  MEMORY[0x28223BE20](v75);
  v71 = (&v54 - v25);
  *&v94 = v22;
  *(&v94 + 1) = v18;
  *&v95 = v23;
  *(&v95 + 1) = v24;
  v80 = sub_21B34B664();
  v55 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v27 = &v54 - v26;
  v28 = *(a1 + 40);
  v90 = *a1;
  v91 = *(a1 + 1);
  v92 = *(a1 + 3);
  v93 = v28;
  sub_21B34B2E4();
  v84 = *v88;
  v85 = *&v88[16];
  v86 = *&v88[32];
  v87 = v89;
  v29 = v81;
  v66 = a4;
  v67 = a6;
  v30 = v78;
  v31 = v76;
  sub_21B34B204();
  v32 = v29;
  v33 = v69;
  v34 = TupleTypeMetadata2;
  sub_21B34BA54();
  (*(v82 + 8))(v32, v33);
  v94 = v84;
  v95 = v85;
  v96 = v86;
  v97 = v87;
  (*(*(v22 - 8) + 8))(&v94, v22);
  sub_21B34B644();
  v75 = v27;
  sub_21B34B654();
  v35 = *(v34 - 8);
  WitnessTable = *(v35 + 48);
  v73 = v35 + 48;
  if (WitnessTable(v31, 1, v34) == 1)
  {
    return (*(v55 + 8))(v75, v80);
  }

  v71 = *(v79 + 32);
  v59 = (v57 + 2);
  v58 = (v57 + 6);
  ++v57;
  ++v56;
  v79 += 32;
  v69 = (v79 - 24);
  v72 = a1;
  v70 = AssociatedTypeWitness;
  while (1)
  {
    v37 = *v31;
    v71(v30, v31 + *(v34 + 48), AssociatedTypeWitness);
    v38 = a1[1];
    v40 = a1[2];
    v39 = a1[3];
    v41 = a1[4];
    v42 = *(a1 + 40);
    *v88 = *a1;
    *&v88[8] = v38;
    *&v88[16] = v40;
    *&v88[24] = v39;
    *&v88[32] = v41;
    v88[40] = v42;
    v81 = v37;
    v43 = DiscontiguousColumnSlice.isNil(at:)(v37);
    v44 = *&v88[24];
    v82 = *&v88[32];
    v45 = v88[40];

    v46 = v42;
    v30 = v78;
    sub_21B254074(v39, v41, v46);

    v47 = v44;
    a1 = v72;
    sub_21B23A9F4(v47, v82, v45);
    if (!v43)
    {
      break;
    }

LABEL_4:
    AssociatedTypeWitness = v70;
    (*v69)(v30, v70);
    v31 = v76;
    sub_21B34B654();
    v34 = TupleTypeMetadata2;
    if (WitnessTable(v31, 1, TupleTypeMetadata2) == 1)
    {
      return (*(v55 + 8))(v75, v80);
    }
  }

  v48 = sub_21B34B314();
  v49 = v63;
  v50 = v65;
  (*v59)(v63);
  v48(v88, 0);
  v51 = *(a1 + 40);
  *v88 = *a1;
  *&v88[8] = *(a1 + 1);
  *&v88[24] = *(a1 + 3);
  v88[40] = v51;
  v52 = v64;
  v53 = v81;
  DiscontiguousColumnSlice.subscript.getter(v81, v83, v64);
  result = (*v58)(v52, 1, v50);
  if (result != 1)
  {
    v62(v52, v49, v50, v61);
    (*v57)(v49, v50);
    sub_21B2D8534(v52, v53, v83);
    (*v56)(v52, v60);
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2DEAB8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, char *, uint64_t, uint64_t))
{
  v67 = a7;
  v66 = a5;
  v75 = a2;
  v83 = sub_21B34B474();
  v78 = *(v83 - 8);
  v11 = MEMORY[0x28223BE20](v83);
  v68 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v70 = &v64 - v14;
  MEMORY[0x28223BE20](v13);
  v71 = &v64 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v89 = &v64 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = sub_21B34B474();
  MEMORY[0x28223BE20](v17 - 8);
  v86 = (&v64 - v18);
  v77 = a6;
  v76 = a4;
  v19 = swift_getAssociatedTypeWitness();
  v91 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v64 - v20;
  v74 = a3;
  v24 = type metadata accessor for DiscontiguousColumnSlice(255, a3, v22, v23);
  WitnessTable = swift_getWitnessTable();
  v25 = sub_21B34AAF4();
  v26 = swift_getWitnessTable();
  v27 = *(swift_getAssociatedConformanceWitness() + 8);
  *&v104 = v25;
  *(&v104 + 1) = v19;
  *&v105 = v26;
  *(&v105 + 1) = v27;
  v93 = sub_21B34B674();
  MEMORY[0x28223BE20](v93);
  v84 = &v64 - v28;
  *&v104 = v25;
  *(&v104 + 1) = v19;
  *&v105 = v26;
  *(&v105 + 1) = v27;
  v29 = sub_21B34B664();
  v65 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v64 - v30;
  v32 = *(a1 + 40);
  v100 = *a1;
  v101 = *(a1 + 1);
  v102 = *(a1 + 3);
  v103 = v32;
  sub_21B34B2E4();
  v94 = *v98;
  v95 = *&v98[16];
  v96 = *&v98[32];
  v97 = v99;
  sub_21B34B204();
  sub_21B34BA54();
  (*(v91 + 8))(v21, v19);
  v104 = v94;
  v105 = v95;
  v106 = v96;
  v107 = v97;
  v33 = v89;
  v34 = v86;
  v35 = TupleTypeMetadata2;
  (*(*(v25 - 8) + 8))(&v104, v25);
  sub_21B34B644();
  WitnessTable = v29;
  v36 = AssociatedTypeWitness;
  v84 = v31;
  sub_21B34B654();
  v37 = *(v35 - 8);
  v82 = *(v37 + 48);
  v81 = v37 + 48;
  if (v82(v34, 1, v35) == 1)
  {
    return (*(v65 + 8))(v84, WitnessTable);
  }

  v80 = *(v90 + 32);
  v73 = (v78 + 2);
  v69 = v74 - 8;
  v72 = v78 + 1;
  v90 += 32;
  v78 = (v90 - 24);
  v79 = a1;
  v92 = v24;
  while (1)
  {
    v39 = *v34;
    v80(v33, v34 + *(v35 + 48), v36);
    v40 = a1[1];
    v42 = a1[2];
    v41 = a1[3];
    v43 = a1[4];
    v44 = *(a1 + 40);
    *v98 = *a1;
    *&v98[8] = v40;
    *&v98[16] = v42;
    *&v98[24] = v41;
    *&v98[32] = v43;
    v98[40] = v44;
    v91 = v39;
    LODWORD(v93) = DiscontiguousColumnSlice.isNil(at:)(v39);
    v45 = *&v98[24];
    v46 = *&v98[32];
    v47 = v98[40];

    sub_21B254074(v41, v43, v44);

    v33 = v89;
    sub_21B23A9F4(v45, v46, v47);
    if ((v93 & 1) == 0)
    {
      v48 = sub_21B34B314();
      v49 = *v73;
      v50 = v71;
      v51 = v83;
      (*v73)(v71);
      v48(v98, 0);
      v52 = *(v74 - 8);
      v53 = *(v52 + 48);
      LODWORD(v48) = v53(v50, 1);
      v54 = *v72;
      (*v72)(v50, v51);
      if (v48 != 1)
      {
        break;
      }
    }

    v36 = AssociatedTypeWitness;
    (*v78)(v33, AssociatedTypeWitness);
    a1 = v79;
LABEL_5:
    v34 = v86;
    sub_21B34B654();
    v35 = TupleTypeMetadata2;
    if (v82(v34, 1, TupleTypeMetadata2) == 1)
    {
      return (*(v65 + 8))(v84, WitnessTable);
    }
  }

  v93 = v54;
  v55 = sub_21B34B314();
  v56 = v70;
  v49(v70);
  v55(v98, 0);
  v57 = v74;
  result = (v53)(v56, 1, v74);
  if (result == 1)
  {
    goto LABEL_12;
  }

  a1 = v79;
  v58 = *(v79 + 40);
  *v98 = *v79;
  *&v98[8] = *(v79 + 1);
  *&v98[24] = *(v79 + 3);
  v98[40] = v58;
  v59 = v68;
  v60 = v91;
  v61 = v92;
  DiscontiguousColumnSlice.subscript.getter(v91, v92, v68);
  result = (v53)(v59, 1, v57);
  v62 = AssociatedTypeWitness;
  if (result != 1)
  {
    v63 = v70;
    v67(v59, v70, v57, v66);
    sub_21B2D8534(v59, v60, v61);
    (v93)(v59, v83);
    (*v78)(v33, v62);
    (*(v52 + 8))(v63, v57);
    v36 = v62;
    goto LABEL_5;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_21B2DF5D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = a2;
  v6 = result;
  v30 = *(a3 + 16);
  if (v30 >= v3)
  {
    v7 = a2 - result;
  }

  else
  {
    v7 = *(a3 + 16);
  }

  v33 = MEMORY[0x277D84F90];
  result = sub_21B254348(0, v7 & ~(v7 >> 63), 0);
  if (v3 < 0)
  {
    goto LABEL_41;
  }

  v28 = v6;
  v29 = v7;
  v26 = a3;
  if (v7)
  {
    if (v5 < v6)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v8 = (a3 + 40);
    v9 = v30;
    v10 = v6;
    v11 = v7;
    v31 = v5;
    while (v5 != v10)
    {
      if (v10 >= v5)
      {
        goto LABEL_34;
      }

      if (!v9)
      {
        goto LABEL_35;
      }

      v13 = *(v8 - 1);
      v12 = *v8;
      v15 = *(v33 + 16);
      v14 = *(v33 + 24);

      if (v15 >= v14 >> 1)
      {
        result = sub_21B254348((v14 > 1), v15 + 1, 1);
      }

      *(v33 + 16) = v15 + 1;
      v16 = v33 + 32 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      *(v16 + 48) = v10;
      *(v16 + 56) = 7;
      v8 += 2;
      --v9;
      ++v10;
      --v11;
      v5 = v31;
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v10 = v6;
LABEL_17:
  if (v10 == v5)
  {
    return v33;
  }

  v17 = v28;
  if (v5 >= v28)
  {
    v18 = 0;
    v27 = v10 - v5;
    if (v10 <= v5)
    {
      v19 = v5;
    }

    else
    {
      v19 = v10;
    }

    v32 = v19 - v10;
    v20 = (v26 + 16 * v29 + 40);
    while (v10 >= v17)
    {
      if (v32 == v18)
      {
        goto LABEL_37;
      }

      if (v30 - v29 == v18)
      {
        return v33;
      }

      if (v29 + v18 >= v30)
      {
        goto LABEL_38;
      }

      if (__OFADD__(v29 + v18, 1))
      {
        goto LABEL_39;
      }

      v22 = *(v20 - 1);
      v21 = *v20;
      v23 = *(v33 + 16);
      v24 = *(v33 + 24);

      if (v23 >= v24 >> 1)
      {
        result = sub_21B254348((v24 > 1), v23 + 1, 1);
      }

      *(v33 + 16) = v23 + 1;
      v25 = v33 + 32 * v23;
      *(v25 + 32) = v22;
      *(v25 + 40) = v21;
      *(v25 + 48) = v10 + v18;
      *(v25 + 56) = 7;
      ++v18;
      v20 += 2;
      v17 = v28;
      if (!(v27 + v18))
      {
        return v33;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t DataFrame.init(contentsOfJSONFile:columns:types:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  v9 = sub_21B34A6E4();
  if (v4)
  {
    v11 = sub_21B34A6D4();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  else
  {
    v20 = v10;
    v21 = v9;
    v13 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    [v13 setFormatOptions_];
    v14 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    [v14 setFormatOptions_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E460, &qword_21B352890);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21B352080;
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v15 + 32) = sub_21B2E0908;
    *(v15 + 40) = v16;
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    *(v15 + 48) = sub_21B2E0908;
    *(v15 + 56) = v17;
    v24 = v15;
    DataFrame.init(jsonData:columns:types:options:)(v21, v20, a3, &v24, &v22, a2);
    v18 = sub_21B34A6D4();
    result = (*(*(v18 - 8) + 8))(a1, v18);
    v19 = v23;
    *a4 = v22;
    *(a4 + 16) = v19;
  }

  return result;
}

uint64_t DataFrame.init(jsonData:columns:types:options:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>, uint64_t a6@<X2>)
{
  v41 = *MEMORY[0x277D85DE8];
  v11 = *a4;
  v12 = objc_opt_self();
  v13 = sub_21B34A724();
  *&v39 = 0;
  v14 = [v12 JSONObjectWithData:v13 options:0 error:&v39];

  if (!v14)
  {
    v17 = v39;

    sub_21B34A654();

LABEL_7:
    swift_willThrow();
    return sub_21B234324(a1, a2);
  }

  v15 = v39;
  sub_21B34B554();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EFF0, &qword_21B355BB8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_21B2735F8();
    swift_allocError();
    *v18 = 0u;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0u;
    *(v18 + 48) = 0u;
    *(v18 + 64) = 3;
    goto LABEL_7;
  }

  v16 = sub_21B2E1348(v38);
  if (v6)
  {

    sub_21B234324(a1, a2);
  }

  else
  {
    v36 = v38;
    v19 = sub_21B2E1470(v16, a6);

    v20 = *(v19 + 2);
    if (v20)
    {
      v33 = v11;
      v34 = a1;
      v35 = a2;
      v21 = 0;
      for (i = 0; i != v20; ++i)
      {
        if (i >= *(v19 + 2))
        {
          __break(1u);
LABEL_22:
          __break(1u);
        }

        v23 = *&v19[v21 + 32];
        v24 = *&v19[v21 + 40];
        v25 = *&v19[v21 + 48];
        v26 = *(a3 + 16);

        if (v26)
        {
          v27 = sub_21B24B534(v23, v24);
          if (v28)
          {
            v29 = *(*(a3 + 56) + v27);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = sub_21B23A394(v19);
            }

            if (i >= *(v19 + 2))
            {
              goto LABEL_22;
            }

            v30 = &v19[v21];
            *(v30 + 4) = v23;
            *(v30 + 5) = v24;
            *(v30 + 6) = v25;
            v30[56] = v29;
          }
        }

        v21 += 32;
      }

      a1 = v34;
      a2 = v35;
      v11 = v33;
    }

    else
    {
    }

    v38 = v11;
    sub_21B2DFE18(v36, v19, &v38, &v39);

    sub_21B234324(a1, a2);

    v32 = v40;
    *a5 = v39;
    *(a5 + 16) = v32;
  }

  return result;
}

uint64_t sub_21B2DFE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_51:
    v10 = v9[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_64:
      v9 = sub_21B23A380(v9);
    }

    v31 = (v9 + 4);
    v32 = -v10;
    v33 = -1;
    v34 = (v9 + 4);
    while (v32 + v33 != -1)
    {
      if (++v33 >= v9[2])
      {
        __break(1u);
        goto LABEL_61;
      }

      v35 = v34 + 40;
      v36 = *(v34 + 24);
      v37 = *(v34 + 32);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v34, v36);
      v38 = v53;
      (*(v37 + 24))(a1, v36, v37);
      v34 = v35;
      v53 = v38;
      if (v38)
      {
      }
    }

    *&v48 = MEMORY[0x277D84F90];
    *(&v48 + 1) = MEMORY[0x277D84F90];
    v49 = sub_21B25DC2C(MEMORY[0x277D84F90]);
    for (i = v9[2]; i; --i)
    {
      sub_21B233A10(v31, &v50);
      v40 = v51;
      v41 = v52;
      __swift_project_boxed_opaque_existential_1(&v50, v51);
      (v41[2])(v47, v40, v41);
      DataFrame.append(column:)(v47);
      sub_21B233960(v47);
      __swift_destroy_boxed_opaque_existential_1Tm(&v50);
      v31 += 40;
    }

    v42 = v49;
    *a4 = v48;
    *(a4 + 16) = v42;
    return result;
  }

  v46 = *a3;
  *&v48 = MEMORY[0x277D84F90];
  sub_21B254368(0, v5, 0);
  v8 = (a2 + 56);
  v9 = v48;
  v43 = a1;
  a1 = *(a1 + 16);
  v45 = a1;
  while (1)
  {
    v11 = *(v8 - 3);
    v10 = *(v8 - 2);
    v12 = *v8;
    if (v12 <= 3)
    {
      break;
    }

    if (*v8 > 5u)
    {
      if (v12 != 6)
      {
        v51 = &type metadata for InferringJSONColumnProcessor;
        v52 = &off_282CAB2A0;
        v21 = swift_allocObject();
        *&v50 = v21;
        swift_bridgeObjectRetain_n();

        sub_21B233050(v6);
        v23 = v22;
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E7B0, &qword_21B352730);
        *(v21 + 48) = 0;
        *(v21 + 56) = 0xE000000000000000;
        *(v21 + 64) = v23;
        *(v21 + 72) = v24;
        *(v21 + 16) = v46;
        *(v21 + 24) = v46;
        *(v21 + 32) = 0;
        *(v21 + 40) = 1;
        *(v21 + 80) = &off_282CAA128;
        *(v21 + 88) = v11;
        *(v21 + 96) = v10;

        v25 = sub_21B25DFE0(v6);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          swift_beginAccess();
          sub_21B2AFD1C(*(v25 + 16), 0, v47);
          sub_21B2B0954(*(v25 + 16));
          *(v25 + 16) = *v47;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
          v30 = swift_allocObject();
          swift_beginAccess();
          sub_21B2AEFEC(*(v25 + 16), 0, v47);
          *(v30 + 16) = *v47;

          v25 = v30;
          v6 = MEMORY[0x277D84F90];
        }

        a1 = v45;
        *(v21 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E158, &unk_21B3526B0);
        *(v21 + 136) = &off_282CAA128;

        *(v21 + 104) = v11;
        *(v21 + 112) = v10;
        *(v21 + 120) = v25;
        goto LABEL_42;
      }

      v51 = &type metadata for ObjectJSONColumnProcessor;
      v52 = &off_282CA9B28;
      v13 = swift_allocObject();
      *&v50 = v13;
      v13[2] = v11;
      v13[3] = v10;
      swift_bridgeObjectRetain_n();
      v15 = sub_21B26117C(v6);
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3C0, &qword_21B355BC0);
        v26 = swift_allocObject();
        swift_beginAccess();
        sub_21B2B4360();
        goto LABEL_40;
      }

      swift_beginAccess();
      sub_21B2B4364(v47, *(v15 + 16), a1);
      sub_21B2B0D10(*(v15 + 16), *(v15 + 24));
    }

    else if (v12 == 4)
    {
      v51 = &type metadata for StringJSONColumnProcessor;
      v52 = &off_282CA9AB0;
      v13 = swift_allocObject();
      *&v50 = v13;
      v13[2] = v11;
      v13[3] = v10;
      swift_bridgeObjectRetain_n();
      v15 = sub_21B25DFE0(v6);
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
        v26 = swift_allocObject();
        swift_beginAccess();
        sub_21B2AEFEC(*(v15 + 16), a1, v47);
        goto LABEL_40;
      }

      swift_beginAccess();
      sub_21B2AFD1C(*(v15 + 16), a1, v47);
      sub_21B2B0954(*(v15 + 16));
    }

    else
    {
      v51 = &type metadata for ArrayJSONColumnProcessor;
      v52 = &off_282CA9B00;
      v13 = swift_allocObject();
      *&v50 = v13;
      v13[2] = v11;
      v13[3] = v10;
      swift_bridgeObjectRetain_n();
      v15 = sub_21B260F5C(v6);
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3A8, &qword_21B351CB8);
        v26 = swift_allocObject();
        swift_beginAccess();
        sub_21B2B4360();
        goto LABEL_40;
      }

      swift_beginAccess();
      sub_21B2B4364(v47, *(v15 + 16), a1);
      sub_21B2B0C0C(*(v15 + 16), *(v15 + 24));
    }

    *(v15 + 16) = *v47;
LABEL_29:

LABEL_41:
    v13[4] = v11;
    v13[5] = v10;
    v13[6] = v15;
LABEL_42:
    *&v48 = v9;
    v28 = v9[2];
    v27 = v9[3];
    if (v28 >= v27 >> 1)
    {
      sub_21B254368((v27 > 1), v28 + 1, 1);
      v9 = v48;
    }

    v8 += 32;
    v9[2] = v28 + 1;
    sub_21B234878(&v50, &v9[5 * v28 + 4]);
    if (!--v5)
    {
      a1 = v43;
      goto LABEL_51;
    }
  }

  if (*v8 > 1u)
  {
    if (v12 != 2)
    {
      v51 = &type metadata for DateJSONColumnProcessor;
      v52 = &off_282CA9AD8;
      v19 = swift_allocObject();
      *&v50 = v19;
      *(v19 + 16) = v11;
      *(v19 + 24) = v10;
      *(v19 + 32) = v46;
      *(v19 + 40) = 0;
      *(v19 + 48) = 1;
      swift_bridgeObjectRetain_n();

      v20 = sub_21B260568(v6);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        swift_beginAccess();
        a1 = v45;
        sub_21B2AFF0C(*(v20 + 16), v45, v47);
        sub_21B2B0A2C(*(v20 + 16));
        *(v20 + 16) = *v47;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4B8, &unk_21B354C70);
        v29 = swift_allocObject();
        swift_beginAccess();
        a1 = v45;
        sub_21B2AF188(*(v20 + 16), v45, v47);
        *(v29 + 16) = *v47;

        v20 = v29;
        v6 = MEMORY[0x277D84F90];
      }

      *(v19 + 56) = v11;
      *(v19 + 64) = v10;
      *(v19 + 72) = v20;
      goto LABEL_42;
    }

    v51 = &type metadata for DoubleJSONColumnProcessor;
    v52 = &off_282CA9A88;
    v13 = swift_allocObject();
    *&v50 = v13;
    v13[2] = v11;
    v13[3] = v10;
    swift_bridgeObjectRetain_n();
    sub_21B25E224(v6);
    v15 = v17;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E490, &unk_21B354C80);
      v26 = swift_allocObject();
      swift_beginAccess();
      sub_21B2AEE64(*(v15 + 16), a1, v47);
      goto LABEL_40;
    }

    swift_beginAccess();
    sub_21B235334(*(v15 + 16), a1, v47);
    result = *(v15 + 16);
    if (!result)
    {
      goto LABEL_66;
    }

    if ((*(result + 8) & 0x8000000000000000) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_25;
  }

  if (*v8)
  {
    v51 = &type metadata for BooleanJSONColumnProcessor;
    v52 = &off_282CA9A60;
    v13 = swift_allocObject();
    *&v50 = v13;
    v13[2] = v11;
    v13[3] = v10;
    swift_bridgeObjectRetain_n();
    sub_21B260114(v6);
    v15 = v18;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A8, &unk_21B354C90);
      v26 = swift_allocObject();
      swift_beginAccess();
      sub_21B2AF39C(*(v15 + 16), a1, v47);
      goto LABEL_40;
    }

    swift_beginAccess();
    sub_21B2B0190(*(v15 + 16), a1, v47);
    result = *(v15 + 16);
    if (!result)
    {
      goto LABEL_67;
    }

    if ((*(result + 8) & 0x8000000000000000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_25;
  }

  v51 = &type metadata for IntegerJSONColumnProcessor;
  v52 = &off_282CA9A38;
  v13 = swift_allocObject();
  *&v50 = v13;
  v13[2] = v11;
  v13[3] = v10;
  swift_bridgeObjectRetain_n();
  sub_21B234EF8(v6);
  v15 = v14;
  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E488, &unk_21B3544A0);
    v26 = swift_allocObject();
    swift_beginAccess();
    sub_21B2AECDC(*(v15 + 16), a1, v47);
LABEL_40:
    *(v26 + 16) = *v47;

    v15 = v26;
    v6 = MEMORY[0x277D84F90];
    goto LABEL_41;
  }

  swift_beginAccess();
  sub_21B235334(*(v15 + 16), a1, v47);
  result = *(v15 + 16);
  if (result)
  {
    if ((*(result + 8) & 0x8000000000000000) != 0)
    {
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_25:
    MEMORY[0x21CEEEA30]();
    *(v15 + 16) = *v47;
    goto LABEL_29;
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_21B2E0910(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21B33EA48(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_21B2E097C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_21B2E097C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21B34B914();
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
        v5 = sub_21B34AFE4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_21B2E0B44(v7, v8, a1, v4);
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
    return sub_21B2E0A74(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21B2E0A74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_21B34B9F4(), (result & 1) == 0))
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

uint64_t sub_21B2E0B44(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_21B23A330(v8);
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
        sub_21B2E1120((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_21B34B9F4();
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
            result = sub_21B34B9F4();
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
      result = sub_21B2356AC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_21B2356AC((v39 > 1), v40 + 1, 1, v8);
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
        sub_21B2E1120((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_21B23A330(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_21B2327F4(v44);
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
    if (v37 || (result = sub_21B34B9F4(), (result & 1) == 0))
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

uint64_t sub_21B2E1120(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_21B34B9F4() & 1) != 0)
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
      if (!v21 && (sub_21B34B9F4() & 1) != 0)
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

char *sub_21B2E1348(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x277D84FA0];
  v13 = MEMORY[0x277D84FA0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 32;
    do
    {
      v5 += 8;

      sub_21B24028C(v6);
      --v4;
    }

    while (v4);
    v3 = v13;
  }

  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = sub_21B26432C(*(v3 + 16), 0);
    v9 = sub_21B26589C(&v12, v8 + 4, v7, v3);
    v10 = v12;

    sub_21B26139C(v10);
    if (v9 == v7)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v8 = MEMORY[0x277D84F90];
LABEL_9:
  v12 = v8;
  sub_21B2E0910(&v12);
  if (v2)
  {
    MEMORY[0x21CEEE840](v2);

    __break(1u);
  }

  else
  {

    return v12;
  }

  return result;
}

char *sub_21B2E1470(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return sub_21B2DF5D0(0, *(a1 + 16), a1);
  }

  v4 = *(a2 + 16);
  v5 = sub_21B24A9A4(0, v4, 0, MEMORY[0x277D84F90]);
  if (v4)
  {
    v6 = 0;
    v7 = *(a1 + 16);
    v18 = (a1 + 40);
    v19 = a2 + 32;
    do
    {
      if (v7)
      {
        v11 = 0;
        v12 = v18;
        v13 = (v19 + 16 * v6);
        v14 = *v13;
        v15 = v13[1];
        while (1)
        {
          v16 = *(v12 - 1) == v14 && *v12 == v15;
          if (v16 || (sub_21B34B9F4() & 1) != 0)
          {
            break;
          }

          ++v11;
          v12 += 2;
          if (v7 == v11)
          {
            goto LABEL_7;
          }
        }

        v8 = *(v5 + 2);
        v9 = *(v5 + 3);

        if (v8 >= v9 >> 1)
        {
          v5 = sub_21B24A9A4((v9 > 1), v8 + 1, 1, v5);
        }

        *(v5 + 2) = v8 + 1;
        v10 = &v5[32 * v8];
        *(v10 + 4) = v14;
        *(v10 + 5) = v15;
        *(v10 + 6) = v11;
        v10[56] = 7;
      }

LABEL_7:
      ++v6;
    }

    while (v6 != v4);
  }

  return v5;
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_21B2E1618(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_21B34AEB4();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2E1664(uint64_t a1, unint64_t a2)
{
  v2 = sub_21B34AEB4();
  v6 = sub_21B2E16E4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_21B2E16E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_21B34B4B4();
    if (!v9 || (v10 = v9, v11 = sub_21B2E183C(v9, 0), v12 = sub_21B2E18B0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_21B34AD84();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_21B34AD84();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_21B34B6F4();
LABEL_4:

  return sub_21B34AD84();
}

void *sub_21B2E183C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3F8, &qword_21B351CF8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_21B2E18B0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_21B2E1AD0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21B34AE54();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_21B34B6F4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_21B2E1AD0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_21B34AE24();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_21B2E1AD0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21B34AE64();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CEED610](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_21B2E1B4C(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_21B34ADC4();
    v13[0] = sub_21B34AE94();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

unsigned __int8 *sub_21B2E1C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_21B2E34B8();

  result = sub_21B34AEA4();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_21B2E1664(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21B34B6F4();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_21B2E21E8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_21B34B6F4();
  }

  result = sub_21B2E230C(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_21B2E22B4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21B34B9F4() & 1;
  }
}

uint64_t sub_21B2E230C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_21B2E1AD0(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_21B34AE44();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_21B2E1AD0(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_21B2E1AD0(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_21B34AE44();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_21B2E2778(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_21B34B924() & 1;
  }
}

uint64_t sub_21B2E27F0(unint64_t a1, unint64_t a2)
{
  v34 = 46;
  v35 = 0xE100000000000000;
  v33 = &v34;
  v4 = sub_21B2E1B4C(sub_21B2E349C, v32, a1, a2);
  if (v5)
  {
    return 0;
  }

  v6 = v4;
  v34 = 58;
  v35 = 0xE100000000000000;
  MEMORY[0x28223BE20](v4);
  v31[2] = &v34;
  v7 = sub_21B2E1B4C(sub_21B2E352C, v31, a1, a2);
  if (v8)
  {
    return 0;
  }

  v9 = v7 >> 14;
  if (v7 >> 14 < v6 >> 14)
  {
    __break(1u);
LABEL_15:

    return 0;
  }

  v10 = sub_21B34AEB4();
  v14 = sub_21B2E2778(v10, v11, v12, v13, 0x786469732ELL, 0xE500000000000000);

  if ((v14 & 1) == 0 || v9 >= sub_21B34ADC4() >> 14)
  {
    return 0;
  }

  v15 = sub_21B34ADB4();
  v16 = sub_21B2E1618(v15, a1, a2);
  v20 = v19;
  if (!((v16 ^ v17) >> 14))
  {
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v17;
  v23 = v18;
  sub_21B2E21E8(v16, v17, v18, v19, 10);
  if ((v24 & 0x100) != 0)
  {
    sub_21B2E1C50(v21, v22, v23, v20, 10);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
LABEL_13:
      v29 = sub_21B34AEB4();
      v30 = MEMORY[0x21CEED540](v29);

      return v30;
    }
  }

  else
  {
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  return 0;
}

char *sub_21B2E2A48(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v5 = sub_21B30FB6C(a1, a2);
  if (v2)
  {
    MEMORY[0x21CEEE850](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4C8, &unk_21B3553F0);
    if (swift_dynamicCast())
    {
      MEMORY[0x21CEEE840](v2);
      sub_21B239564();
      swift_allocError();
      *v6 = 0xD00000000000001ALL;
      *(v6 + 8) = 0x800000021B34D2B0;
      *(v6 + 16) = 0;
      swift_willThrow();
    }

    sub_21B234324(a1, v3);
    MEMORY[0x21CEEE840](v2);
    return v3;
  }

  v81 = v5;
  v83 = *(v5 + 16);
  v7 = (v5 + 48);
  v8 = v83 + 1;
  do
  {
    if (!--v8)
    {

      sub_21B239564();
      swift_allocError();
      *v27 = 0xD00000000000002DLL;
      *(v27 + 8) = 0x800000021B34D4A0;
      *(v27 + 16) = 0;
      swift_willThrow();
      v28 = a1;
LABEL_32:
      v30 = v3;
LABEL_41:
      sub_21B234324(v28, v30);
      return v3;
    }

    v9 = *v7;
    if (*(v7 - 2) == 0x656D61726673 && *(v7 - 1) == 0xE600000000000000)
    {
      break;
    }

    v7 += 3;
  }

  while ((sub_21B34B9F4() & 1) == 0);
  v11 = (v81 + 48);
  v12 = v83 + 1;
  do
  {
    if (!--v12)
    {

      sub_21B239564();
      swift_allocError();
      *v29 = 0xD000000000000033;
      *(v29 + 8) = 0x800000021B34D460;
      *(v29 + 16) = 0;
      swift_willThrow();
      v28 = a1;
      goto LABEL_32;
    }

    v13 = *v11;
    if (*(v11 - 2) == 0x6E5F6E6D756C6F63 && *(v11 - 1) == 0xEC00000073656D61)
    {
      break;
    }

    v11 += 3;
  }

  while ((sub_21B34B9F4() & 1) == 0);
  v80 = v3;
  v15 = (v81 + 48);
  v3 = v83 + 1;
  do
  {
    if (!--v3)
    {

      v24 = 0x800000021B34D420;
      sub_21B239564();
      swift_allocError();
      v26 = 0xD000000000000033;
LABEL_39:
      *v25 = v26;
      *(v25 + 8) = v24;
      *(v25 + 16) = 0;
LABEL_40:
      swift_willThrow();
      v30 = v80;
      v28 = a1;
      goto LABEL_41;
    }

    v84 = *v15;
    if (*(v15 - 2) == 0x665F6E6D756C6F63 && *(v15 - 1) == 0xEC00000073656C69)
    {
      break;
    }

    v15 += 3;
  }

  while ((sub_21B34B9F4() & 1) == 0);

  if (!*(v9 + 16) || (v17 = sub_21B24B534(0x756C6F635F6D756ELL, 0xEB00000000736E6DLL), (v18 & 1) == 0) || (v19 = (*(v9 + 56) + 16 * v17), v20 = *v19, v21 = v19[1], , v22 = sub_21B33F63C(v20, v21), (v23 & 1) != 0))
  {

    v24 = 0x800000021B34D2D0;
    sub_21B239564();
    swift_allocError();
    v26 = 0xD00000000000002ELL;
    goto LABEL_39;
  }

  if (!*(v9 + 16) || (v31 = v22, v32 = sub_21B24B534(0x73776F726ELL, 0xE500000000000000), (v33 & 1) == 0) || (v34 = (*(v9 + 56) + 16 * v32), v35 = *v34, v36 = v34[1], , v37 = sub_21B33F63C(v35, v36), (v38 & 1) != 0))
  {

    v39 = "SFrame index is missing the number of rows.";
    goto LABEL_38;
  }

  if (!*(v9 + 16) || (v3 = v37, v41 = sub_21B24B534(0x6E6F6973726576, 0xE700000000000000), (v42 & 1) == 0))
  {

    v39 = "SFrame index is missing the version number.";
LABEL_38:
    v24 = (v39 - 32) | 0x8000000000000000;
    sub_21B239564();
    swift_allocError();
    v26 = 0xD00000000000002BLL;
    goto LABEL_39;
  }

  v76 = v31;
  v43 = (*(v9 + 56) + 16 * v41);
  v44 = *v43;
  v45 = v43[1];

  if ((v44 != 48 || v45 != 0xE100000000000000) && (sub_21B34B9F4() & 1) == 0)
  {

    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000021, 0x800000021B34D360);
    MEMORY[0x21CEED5E0](v44, v45);

    MEMORY[0x21CEED5E0](0xD000000000000010, 0x800000021B34D390);
    sub_21B239564();
    swift_allocError();
    *v70 = 0;
    *(v70 + 8) = 0xE000000000000000;
    *(v70 + 16) = 1;
    goto LABEL_40;
  }

  result = sub_21B24AC38(0, v31 & ~(v31 >> 63), 0, MEMORY[0x277D84F90]);
  if ((v31 & 0x8000000000000000) == 0)
  {
    v82 = result;
    if (v31)
    {
      v46 = 0;
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EFF8, &qword_21B355C08);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_21B351EA0;
        *(v47 + 56) = MEMORY[0x277D83B88];
        *(v47 + 64) = MEMORY[0x277D83C10];
        *(v47 + 32) = v46;
        v48 = sub_21B34ACC4();
        v50 = v48;
        v51 = v49;
        if (!*(v13 + 16))
        {
          break;
        }

        v52 = sub_21B24B534(v48, v49);
        if ((v53 & 1) == 0)
        {
          break;
        }

        if (!*(v84 + 16))
        {
          v71 = v50;

LABEL_66:
          v72 = v80;

          sub_21B34B634();

          MEMORY[0x21CEED5E0](v71, v51);

          MEMORY[0x21CEED5E0](39, 0xE100000000000000);
          v73 = 0xD000000000000019;
          v74 = 0x800000021B34D3D0;
          goto LABEL_69;
        }

        v54 = (*(v13 + 56) + 16 * v52);
        v78 = *v54;
        v79 = v54[1];

        v55 = sub_21B24B534(v50, v51);
        if ((v56 & 1) == 0)
        {
          v71 = v50;

          goto LABEL_66;
        }

        v57 = v55;

        v58 = (*(v84 + 56) + 16 * v57);
        v60 = *v58;
        v59 = v58[1];

        v61 = sub_21B2E27F0(v60, v59);
        v77 = v63;
        if (!v62)
        {

          sub_21B34B634();

          v85 = 0xD000000000000021;
          v86 = 0x800000021B34D3F0;
          MEMORY[0x21CEED5E0](v60, v59);
          goto LABEL_68;
        }

        v64 = v61;
        v65 = v62;

        v66 = v82;
        v68 = *(v82 + 2);
        v67 = *(v82 + 3);
        if (v68 >= v67 >> 1)
        {
          v66 = sub_21B24AC38((v67 > 1), v68 + 1, 1, v82);
        }

        ++v46;
        *(v66 + 2) = v68 + 1;
        v82 = v66;
        v69 = &v66[40 * v68];
        *(v69 + 4) = v78;
        *(v69 + 5) = v79;
        *(v69 + 6) = v64;
        *(v69 + 7) = v65;
        *(v69 + 8) = v77;
        if (v76 == v46)
        {
          goto LABEL_61;
        }
      }

      sub_21B34B634();

      v85 = 0xD000000000000019;
      v86 = 0x800000021B34D3B0;
      MEMORY[0x21CEED5E0](v50, v51);
LABEL_68:

      MEMORY[0x21CEED5E0](39, 0xE100000000000000);
      v73 = v85;
      v74 = v86;
      v72 = v80;
LABEL_69:
      sub_21B239564();
      swift_allocError();
      *v75 = v73;
      *(v75 + 8) = v74;
      *(v75 + 16) = 0;
      swift_willThrow();
      sub_21B234324(a1, v72);
    }

    else
    {
LABEL_61:

      sub_21B234324(a1, v80);
    }

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_21B2E34B8()
{
  result = qword_27CD7F000[0];
  if (!qword_27CD7F000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD7F000);
  }

  return result;
}

uint64_t sub_21B2E3550(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v4 = a1[4];
  v3 = a1[5];
  v8 = v2;
  v9 = v1;
  v10 = v2;
  v11 = v4;
  v12 = v3;
  v13 = v4;
  result = type metadata accessor for HashJoin.JoinItem(319, &v8);
  if (v6 <= 0x3F)
  {
    v14 = 0;
    v16 = result;
    v8 = v2;
    v9 = v1;
    v10 = v1;
    v11 = v4;
    v12 = v3;
    v13 = v3;
    result = type metadata accessor for HashJoin.JoinItem(319, &v8);
    if (v7 <= 0x3F)
    {
      v15 = 0;
      v17 = result;
      v18 = &type metadata for JoinKind;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21B2E3614(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(*(*(a3 + 16) - 8) + 64);
  if (v9 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v8 + 80) & 0xF8 | 7;
  v13 = ((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 16;
  v14 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_23;
  }

  v15 = ((((((*(*(v7 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v13 & ~v12) + 17;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = (v14 + ~(-1 << v16)) >> v16;
    if (v19 > 0xFFFE)
    {
      v17 = *&a1[v15];
      if (!v17)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFE)
    {
      v17 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    if (!v19)
    {
LABEL_23:
      if (v9 > v6)
      {
        return (*(v8 + 48))(&a1[v13] & ~v12, v9, v7);
      }

      if (v5 >= 0x7FFFFFFF)
      {
        return (*(v4 + 48))();
      }

      v22 = *((&a1[v10 + 7] & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }
  }

  v17 = a1[v15];
  if (!a1[v15])
  {
    goto LABEL_23;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 <= 3)
  {
    v21 = *a1;
  }

  else
  {
    v20 = 0;
    v21 = *a1;
  }

  return v11 + (v21 | v20) + 1;
}

double sub_21B2E3820(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  if (v7 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(v8 - 8);
  v12 = *(v9 + 84);
  v13 = *(*(*(a4 + 16) - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(v9 + 64);
  if (v12 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v12;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  v18 = ((((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = v14 & 0xF8 | 7;
  v20 = v18 + v19;
  v21 = ((((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v22 = (((v18 + v19) & ~v19) + v21) | 1;
  v23 = a3 >= v17;
  v24 = a3 - v17;
  if (v24 != 0 && v23)
  {
    if (v22 <= 3)
    {
      v29 = (v24 + ~(-1 << (8 * v22))) >> (8 * v22);
      if (v29 > 0xFFFE)
      {
        v25 = 4;
      }

      else
      {
        if (v29 < 0xFF)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29)
        {
          v25 = v30;
        }

        else
        {
          v25 = 0;
        }
      }
    }

    else
    {
      v25 = 1;
    }
  }

  else
  {
    v25 = 0;
  }

  if (v17 >= a2)
  {
    if (v25 > 1)
    {
      if (v25 != 2)
      {
        *&a1[v22] = 0;
        if (!a2)
        {
          return result;
        }

LABEL_36:
        if (v12 <= v10)
        {
          if (v10 >= a2)
          {
            if (v7 < 0x7FFFFFFF)
            {
              v37 = &a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8;
              if ((a2 & 0x80000000) != 0)
              {
                result = 0.0;
                *(v37 + 8) = 0u;
                *(v37 + 24) = 0u;
                *v37 = a2 & 0x7FFFFFFF;
              }

              else
              {
                *(v37 + 24) = a2 - 1;
              }
            }

            else
            {
              v36 = *(v6 + 56);

              v36(a1);
            }

            return result;
          }

          if (((((((v13 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
          {
            return result;
          }

          v32 = ~v10 + a2;
          v31 = a1;
          v33 = ((((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          v31 = (&a1[v20] & ~v19);
          if (v16 >= a2)
          {
            v35 = *(v11 + 56);

            v35(v31);
            return result;
          }

          if (!v21)
          {
            return result;
          }

          v32 = ~v16 + a2;
          a1 = (&a1[v20] & ~v19);
          v33 = v21;
        }

        bzero(v31, v33);
        *a1 = v32;
        return result;
      }

      *&a1[v22] = 0;
    }

    else if (v25)
    {
      a1[v22] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  v26 = ~v17 + a2;
  if (v22 < 4)
  {
    v28 = (v26 >> (8 * v22)) + 1;
    bzero(a1, v22);
    if (v22 == 1)
    {
      *a1 = v26;
      if (v25 <= 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v34 = v26 & ~(-1 << (8 * v22));
      *a1 = v34;
      a1[2] = BYTE2(v34);
      if (v25 <= 1)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    bzero(a1, v22);
    *a1 = v26;
    v28 = 1;
    if (v25 <= 1)
    {
LABEL_46:
      if (v25)
      {
        a1[v22] = v28;
      }

      return result;
    }
  }

  if (v25 == 2)
  {
    *&a1[v22] = v28;
  }

  else
  {
    *&a1[v22] = v28;
  }

  return result;
}

uint64_t sub_21B2E3BD8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_21B2E3FA4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21B2E3C78(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_21B2E3DC4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 32) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 32) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&a1[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&a1[v9] = 0;
      }

      else if (v13)
      {
        a1[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v20 = &a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          result = 0.0;
          *(v20 + 8) = 0u;
          *(v20 + 24) = 0u;
          *v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v20 + 24) = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        v19();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&a1[v9] = v15;
    }

    else
    {
      *&a1[v9] = v15;
    }
  }

  else if (v13)
  {
    a1[v9] = v15;
  }

  return result;
}

unint64_t sub_21B2E3FA4()
{
  result = qword_27CD7F108;
  if (!qword_27CD7F108)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CD7F108);
  }

  return result;
}

uint64_t sub_21B2E4008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7)
{
  v29 = a1;
  v32 = a5;
  v10 = *(a4 - 8);
  v30 = a7;
  v31 = a6;
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v11);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v18;
  v20 = v18[1];
  v22 = *v21;
  v27 = v21[1];
  v28 = v19;
  v24 = *v23;
  (*(v15 + 16))(v17);
  (*(v10 + 16))(v13, a2, a4);
  v33 = v24;
  sub_21B2E4200(v17, v13, v28, v20, v22, v27, a3, v32, a4, v31, v30);
  (*(v10 + 8))(a2, a4);
  return (*(v15 + 8))(v29, a3);
}

uint64_t sub_21B2E4200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v47 = a5;
  v53 = a2;
  v45 = a8;
  v49 = *(a9 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  v48 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v15);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *v22;
  v23 = *(a10 + 24);
  v52 = v19;
  v23(&v54, v24, a10);
  v59 = v54;
  v60 = v55;
  v25._countAndFlagsBits = a3;
  v50 = a4;
  v25._object = a4;
  v61 = DataFrame.indexOfColumn(_:)(v25);
  value = v61.value;
  is_nil = v61.is_nil;

  if (is_nil)
  {
    *&v54 = 0;
    *(&v54 + 1) = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000011, 0x800000021B34D4F0);
    MEMORY[0x21CEED5E0](a3, v50);
    MEMORY[0x21CEED5E0](0xD000000000000027, 0x800000021B34D510);
  }

  else
  {
    (*(a11 + 24))(&v54, a9, a11);
    v59 = v54;
    v60 = v55;
    v27._countAndFlagsBits = v47;
    v51 = a6;
    v27._object = a6;
    v62 = DataFrame.indexOfColumn(_:)(v27);
    v43 = v62.value;
    v28 = v62.is_nil;

    if (v28)
    {
      *&v54 = 0;
      *(&v54 + 1) = 0xE000000000000000;
      sub_21B34B634();
      MEMORY[0x21CEED5E0](0xD000000000000011, 0x800000021B34D4F0);
      MEMORY[0x21CEED5E0](v47, v51);
      MEMORY[0x21CEED5E0](0xD000000000000028, 0x800000021B34D540);
    }

    else
    {
      (*(v18 + 16))(v21, v52, a7);
      v29 = v45;
      sub_21B2E4750(v21, value, 1952867692, 0xE400000000000000, a7, a9, a7, a10, v45, a11, a10);
      v30 = v48;
      v31 = v49;
      (*(v49 + 16))(v48, v53, a9);
      *&v54 = a7;
      *(&v54 + 1) = a9;
      v55 = a10;
      v56 = a11;
      v32 = type metadata accessor for HashJoin(0, &v54);
      v33 = v29 + *(v32 + 52);
      sub_21B2E4750(v30, v43, 0x7468676972, 0xE500000000000000, a7, a9, a9, a10, v33, a11, a11);
      *(v29 + *(v32 + 56)) = v46;
      *&v54 = a7;
      *(&v54 + 1) = a9;
      v55 = a7;
      v56 = a10;
      v57 = a11;
      v58 = a10;
      v34 = (v29 + *(type metadata accessor for HashJoin.JoinItem(0, &v54) + 68));
      v35 = v34[3];
      v36 = v34[4];
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v37 = (*(v36 + 40))(v35, v36);
      *&v54 = a7;
      *(&v54 + 1) = a9;
      v55 = a9;
      v56 = a10;
      v57 = a11;
      v58 = a11;
      v38 = (v33 + *(type metadata accessor for HashJoin.JoinItem(0, &v54) + 68));
      v39 = v38[3];
      v40 = v38[4];
      __swift_project_boxed_opaque_existential_1(v38, v39);
      if (v37 == (*(v40 + 40))(v39, v40))
      {

        (*(v31 + 8))(v53, a9);
        return (*(v18 + 8))(v52, a7);
      }
    }
  }

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2E4750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = *(a7 - 8);
  (*(v18 + 16))(a9, a1, a7);
  v25[0] = a5;
  v25[1] = a6;
  v25[2] = a7;
  v25[3] = a8;
  v25[4] = a10;
  v25[5] = a11;
  v19 = type metadata accessor for HashJoin.JoinItem(0, v25);
  *(a9 + v19[18]) = a2;
  (*(a11 + 56))(a7, a11);
  v20 = (a9 + v19[17]);
  v20[3] = swift_getAssociatedTypeWitness();
  v20[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_21B34B094();

  result = (*(v18 + 8))(a1, a7);
  v22 = (a9 + v19[19]);
  *v22 = a3;
  v22[1] = a4;
  return result;
}

void sub_21B2E4900(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(v2 + *(a1 + 56)) > 1u)
  {
    if (*(v2 + *(a1 + 56)) == 2)
    {
      v13 = sub_21B2E594C;
      v14 = sub_21B2E5FBC;
    }

    else
    {
      v13 = sub_21B2E64AC;
      v14 = sub_21B2E70D8;
    }

    v15 = v14;
    goto LABEL_12;
  }

  if (!*(v2 + *(a1 + 56)))
  {
    v16 = a2;
    v3 = a1;
    (*(*(a1 + 32) + 32))(&v21, *(a1 + 16));
    v4 = v22;
    v5 = v23;
    v6 = v24;
    v7 = sub_21B2FB1D4(v22, v23, v24);

    sub_21B23A9F4(v4, v5, v6);
    v8 = v3;
    (*(*(v3 + 40) + 32))(&v17, *(v3 + 24));
    v9 = v18;
    v10 = v19;
    v11 = v20;
    v12 = sub_21B2FB1D4(v18, v19, v20);

    sub_21B23A9F4(v9, v10, v11);
    if (v12 < v7)
    {
      a2 = v16;
      a1 = v8;
      goto LABEL_5;
    }

    v13 = sub_21B2E594C;
    v15 = sub_21B2E5FBC;
    a1 = v8;
LABEL_12:
    sub_21B2E4C88(a1, v13, v15);
    return;
  }

LABEL_5:

  sub_21B2E4B20(a1, a2);
}

void sub_21B2E4B20(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2 + *(a1 + 52);
  v6 = *(a1 + 40);
  v13[0] = *(a1 + 16);
  v7 = *(a1 + 24);
  v13[1] = *(a1 + 24);
  v14 = v7;
  v15 = v6;
  v16 = v6;
  v8 = (v5 + *(type metadata accessor for HashJoin.JoinItem(0, v13) + 68));
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v10 + 40))(v9, v10);
  if (swift_dynamicCastMetatype())
  {
    v11 = MEMORY[0x277D83B88];
    v12 = MEMORY[0x277D83B98];
  }

  else if (swift_dynamicCastMetatype())
  {
    v11 = MEMORY[0x277D837D0];
    v12 = MEMORY[0x277D837E0];
  }

  else if (swift_dynamicCastMetatype())
  {
    v11 = MEMORY[0x277D839F8];
    v12 = MEMORY[0x277D83A18];
  }

  else
  {
    if (!swift_dynamicCastMetatype())
    {
      sub_21B2E5460(a1, a2);
      return;
    }

    v11 = MEMORY[0x277D839B0];
    v12 = MEMORY[0x277D839C0];
  }

  sub_21B2E4DF8(a1, v11, v12, a2);
}

uint64_t sub_21B2E4C88(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a3)(uint64_t))
{
  v7 = *(a1 + 32);
  v14 = *(a1 + 16);
  v15 = v14;
  v16 = v7;
  v17 = v7;
  v8 = (v3 + *(type metadata accessor for HashJoin.JoinItem(0, &v14) + 68));
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v10 + 40))(v9, v10);
  if (swift_dynamicCastMetatype())
  {
    v11 = MEMORY[0x277D83B88];
    v12 = MEMORY[0x277D83B98];
  }

  else if (swift_dynamicCastMetatype())
  {
    v11 = MEMORY[0x277D837D0];
    v12 = MEMORY[0x277D837E0];
  }

  else if (swift_dynamicCastMetatype())
  {
    v11 = MEMORY[0x277D839F8];
    v12 = MEMORY[0x277D83A18];
  }

  else
  {
    if (!swift_dynamicCastMetatype())
    {
      return a3(a1);
    }

    v11 = MEMORY[0x277D839B0];
    v12 = MEMORY[0x277D839C0];
  }

  return a2(v11, a1, v11, v12);
}

double sub_21B2E4DF8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v68 = a3;
  v61 = a4;
  v65 = sub_21B34B474();
  v62 = *(v65 - 8);
  v7 = MEMORY[0x28223BE20](v65);
  v67 = &v60 - v8;
  v63 = *(a2 - 8);
  MEMORY[0x28223BE20](v7);
  v73 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 52);
  v11 = *(a1 + 40);
  v12 = *(v11 + 32);
  v69 = a1;
  v70 = v4;
  v13 = *(a1 + 24);
  v77 = v10;
  v78 = v13;
  v12(&v92);
  v76 = v92;
  v15 = v93;
  v14 = v94;
  v16 = v95;
  v17 = v96;
  v18 = v94;
  if (v96)
  {
    if (v96 == 1 && *(v94 + 16))
    {
      v18 = *(v94 + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v20)
      {
        v18 = 0;
      }

      else
      {
        v18 = v19;
      }
    }
  }

  sub_21B2A6400();
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  v87 = v76;
  *&v88 = v15;
  *(&v88 + 1) = v14;
  *&v89 = v16;
  BYTE8(v89) = v17;
  *&v90 = v18;
  *(&v90 + 1) = v23;
  v24 = v69[2];
  v25 = v69;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E510, &unk_21B351F10);
  v27 = v25[4];
  v28 = sub_21B278F78(&qword_27CD7E838, &qword_27CD7E510, &unk_21B351F10, MEMORY[0x277D83588]);
  v29 = v70;
  v30 = v78;
  v66 = sub_21B2E8990(v70 + v77, v31, &v87, v24, v78, v78, a2, v26, v27, v11, v11, v68, v28);
  v91[0] = v87;
  v91[1] = v88;
  v91[2] = v89;
  v91[3] = v90;
  sub_21B261664(v91, &qword_27CD7E510, &unk_21B351F10);
  (*(v27 + 24))(&v79, v24, v27);
  v32 = v79;
  v33 = v80;
  v34 = v81;
  *&v87 = v24;
  *(&v87 + 1) = v30;
  *&v88 = v24;
  *(&v88 + 1) = v27;
  *&v76 = v24;
  *&v89 = v11;
  *(&v89 + 1) = v27;
  v35 = *(v29 + *(type metadata accessor for HashJoin.JoinItem(0, &v87) + 72));
  *&v87 = v32;
  *(&v87 + 1) = v33;
  *&v88 = v34;
  DataFrame.subscript.getter(v35, a2, a2);

  v72 = v85;
  v77 = v86;
  v78 = *(&v85 + 1);
  v75 = *(v27 + 32);
  v75(&v87, v24, v27);
  v36 = *(&v88 + 1);
  v37 = v89;
  LOBYTE(v24) = BYTE8(v89);
  v74 = sub_21B2FB1D4(*(&v88 + 1), v89, SBYTE8(v89));

  sub_21B23A9F4(v36, v37, v24);
  sub_21B2E7A64(v74, v69, &v85);
  v75(&v87, v76, v27);
  v75 = *(&v87 + 1);
  *&v76 = v87;
  v38 = *(&v88 + 1);
  v74 = v88;
  v39 = v89;
  v40 = BYTE8(v89);
  v41 = *(&v88 + 1);
  v42 = v67;
  if (BYTE8(v89))
  {
    if (BYTE8(v89) == 1 && *(*(&v88 + 1) + 16))
    {
      v41 = *(*(&v88 + 1) + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v44)
      {
        v41 = 0;
      }

      else
      {
        v41 = v43;
      }
    }
  }

  sub_21B2A6400();
  if (v46)
  {
    v47 = 0;
  }

  else
  {
    v47 = v45;
  }

  v71 = v47;
  if (v41 != v47)
  {
    v51 = v63;
    v52 = (v63 + 6);
    ++v63;
    v64 = (v51 + 4);
    ++v62;
    do
    {
      v79 = v76;
      v80 = v75;
      v81 = v74;
      v82 = v38;
      v54 = v39;
      v83 = v39;
      v55 = v40;
      v84 = v40;
      v56 = DataFrame.Rows.index(after:)(v41);
      v79 = v72;
      v80 = v78;
      v81 = v77;
      v59 = type metadata accessor for Column(0, a2, v57, v58);
      Column.subscript.getter(v41, v59, v42);
      if ((*v52)(v42, 1, a2) == 1)
      {
        (*v62)(v42, v65);
      }

      else
      {
        (*v64)(v73, v42, a2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
        sub_21B34AA14();
        if (v79)
        {
          sub_21B2E811C(v41, v79, &v85, v69);
        }

        else if ((*(v70 + *(v69 + 14)) | 2) == 3)
        {
          sub_21B2E8194(v41, &v85, v69);
        }

        (*v63)(v73, a2);
        v42 = v67;
      }

      v41 = v56;
      v53 = v56 == v71;
      v40 = v55;
      v39 = v54;
    }

    while (!v53);
  }

  sub_21B23A9F4(v38, v39, v40);
  v48 = v86;
  result = *&v85;
  v50 = v61;
  *v61 = v85;
  *(v50 + 2) = v48;
  return result;
}

uint64_t sub_21B2E5460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 52);
  v3 = *(a1 + 40);
  v4 = *(a1 + 24);
  (*(v3 + 32))(&v76, v4, v3);
  v48 = v76;
  v6 = v77;
  v5 = v78;
  v7 = v79;
  v8 = v80;
  v9 = v78;
  if (v80)
  {
    if (v80 == 1 && *(v78 + 16))
    {
      v9 = *(v78 + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v11)
      {
        v9 = 0;
      }

      else
      {
        v9 = v10;
      }
    }
  }

  sub_21B2A6400();
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  v69 = v48;
  v70 = v6;
  v71 = v5;
  v72 = v7;
  v73 = v8;
  v74 = v9;
  v75 = v14;
  v15 = *(a1 + 16);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E510, &unk_21B351F10);
  v17 = *(a1 + 32);
  sub_21B278F78(&qword_27CD7E838, &qword_27CD7E510, &unk_21B351F10, MEMORY[0x277D83588]);
  v43 = sub_21B2E9AE4(v45 + v2, v15, v4, v4, v16, v17, v3, v3);
  sub_21B261664(&v69, &qword_27CD7E510, &unk_21B351F10);
  (*(v17 + 24))(&v54, v15, v17);
  v18 = v54;
  v60 = v15;
  v61 = v4;
  v62 = v15;
  v63 = v17;
  v64 = v3;
  v65 = v17;
  result = type metadata accessor for HashJoin.JoinItem(0, &v60);
  v20 = *(v45 + *(result + 72));
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v20 < *(v18 + 16))
  {
    sub_21B233A74(v18 + 40 * v20 + 32, v66);

    v46 = v15;
    v49 = *(v17 + 32);
    v49(&v60, v15, v17);
    v21 = v63;
    v22 = v64;
    v23 = v65;
    v24 = sub_21B2FB1D4(v63, v64, v65);

    sub_21B23A9F4(v21, v22, v23);
    sub_21B2E7A64(v24, a1, &v58);
    v49(&v60, v46, v17);
    v47 = v61;
    v50 = v60;
    v25 = v62;
    v26 = v63;
    v27 = v64;
    v28 = v65;
    v29 = v63;
    if (v65)
    {
      if (v65 == 1 && *(v63 + 16))
      {
        v29 = *(v63 + 32);
      }

      else
      {
        sub_21B2A6400();
        if (v31)
        {
          v29 = 0;
        }

        else
        {
          v29 = v30;
        }
      }
    }

    sub_21B2A6400();
    if (v33)
    {
      v34 = 0;
    }

    else
    {
      v34 = v32;
    }

    if (v29 == v34)
    {
LABEL_24:

      sub_21B23A9F4(v26, v27, v28);
      result = sub_21B233960(v66);
      v35 = v59;
      *a2 = v58;
      *(a2 + 16) = v35;
      return result;
    }

    while (1)
    {
      *&v54 = v50;
      *(&v54 + 1) = v47;
      *&v55 = v25;
      *(&v55 + 1) = v26;
      v56 = v27;
      v57 = v28;
      v36 = DataFrame.Rows.index(after:)(v29);
      v37 = v67;
      v38 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      (*(*(v38 + 8) + 128))(&v54, v29, v37);
      if (*(&v55 + 1))
      {
        if (swift_dynamicCast())
        {
          if (*(&v52 + 1))
          {
            v54 = v51;
            v55 = v52;
            v56 = v53;
            if (v43[2] && (v39 = sub_21B24B560(&v54), (v40 & 1) != 0))
            {
              v41 = *(v43[7] + 8 * v39);

              sub_21B2E811C(v29, v41, &v58, a1);
            }

            else if ((*(v45 + *(a1 + 56)) | 2) == 3)
            {
              sub_21B2E8194(v29, &v58, a1);
            }

            sub_21B260E14(&v54);
            goto LABEL_27;
          }
        }

        else
        {
          v53 = 0;
          v51 = 0u;
          v52 = 0u;
        }
      }

      else
      {
        sub_21B261664(&v54, &qword_27CD7E0F8, &unk_21B3557C0);
        v51 = 0u;
        v52 = 0u;
        v53 = 0;
      }

      sub_21B261664(&v51, &qword_27CD7E200, &unk_21B352050);
LABEL_27:
      v29 = v36;
      if (v36 == v34)
      {
        goto LABEL_24;
      }
    }
  }

  __break(1u);
  return result;
}

double sub_21B2E594C@<D0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v67 = a3;
  v60 = a4;
  v64 = sub_21B34B474();
  v61 = *(v64 - 8);
  v7 = MEMORY[0x28223BE20](v64);
  v9 = &v60 - v8;
  v62 = *(a2 - 8);
  MEMORY[0x28223BE20](v7);
  v72 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[4];
  v12 = *(v11 + 32);
  v68 = a1;
  v69 = v4;
  v77 = a1[2];
  v12(&v91);
  v76 = v91;
  v14 = v92;
  v13 = v93;
  v15 = v94;
  v16 = v95;
  v17 = v93;
  if (v95)
  {
    if (v95 == 1 && *(v93 + 16))
    {
      v17 = *(v93 + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v19)
      {
        v17 = 0;
      }

      else
      {
        v17 = v18;
      }
    }
  }

  v66 = v9;
  sub_21B2A6400();
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  v86 = v76;
  *&v87 = v14;
  *(&v87 + 1) = v13;
  *&v88 = v15;
  BYTE8(v88) = v16;
  *&v89 = v17;
  *(&v89 + 1) = v22;
  v23 = v68[3];
  v24 = v68;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E510, &unk_21B351F10);
  v26 = v24[5];
  v27 = sub_21B278F78(&qword_27CD7E838, &qword_27CD7E510, &unk_21B351F10, MEMORY[0x277D83588]);
  v28 = v69;
  v29 = v77;
  v65 = sub_21B2E8990(v69, v30, &v86, v77, v23, v77, a2, v25, v11, v26, v11, v67, v27);
  v90[0] = v86;
  v90[1] = v87;
  v90[2] = v88;
  v90[3] = v89;
  sub_21B261664(v90, &qword_27CD7E510, &unk_21B351F10);
  v75 = v28 + *(v24 + 13);
  (*(v26 + 24))(&v78, v23, v26);
  v32 = v78;
  v31 = v79;
  v33 = v80;
  *&v86 = v29;
  *(&v86 + 1) = v23;
  *&v87 = v23;
  *(&v87 + 1) = v11;
  v74 = v23;
  *&v88 = v26;
  *(&v88 + 1) = v26;
  v34 = type metadata accessor for HashJoin.JoinItem(0, &v86);
  v35 = *(v75 + *(v34 + 72));
  *&v86 = v32;
  *(&v86 + 1) = v31;
  *&v87 = v33;
  DataFrame.subscript.getter(v35, a2, a2);

  v77 = *(&v84 + 1);
  v71 = v84;
  *&v76 = v85;
  v73 = *(v26 + 32);
  v73(&v86, v23, v26);
  v36 = *(&v87 + 1);
  v37 = v88;
  LOBYTE(v29) = BYTE8(v88);
  v70 = sub_21B2FB1D4(*(&v87 + 1), v88, SBYTE8(v88));

  sub_21B23A9F4(v36, v37, v29);
  sub_21B2E7A64(v70, v68, &v84);
  v73(&v86, v74, v26);
  v74 = *(&v86 + 1);
  v75 = v86;
  v38 = *(&v87 + 1);
  v73 = v87;
  v39 = v88;
  v40 = BYTE8(v88);
  v41 = *(&v87 + 1);
  if (BYTE8(v88))
  {
    if (BYTE8(v88) == 1 && *(*(&v87 + 1) + 16))
    {
      v41 = *(*(&v87 + 1) + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v43)
      {
        v41 = 0;
      }

      else
      {
        v41 = v42;
      }
    }
  }

  sub_21B2A6400();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v44;
  }

  v70 = v46;
  v47 = v66;
  if (v41 != v46)
  {
    v51 = v62;
    v52 = (v62 + 6);
    ++v62;
    v63 = (v51 + 4);
    ++v61;
    do
    {
      v78 = v75;
      v79 = v74;
      v80 = v73;
      v81 = v38;
      v54 = v39;
      v82 = v39;
      v55 = v40;
      v83 = v40;
      v56 = DataFrame.Rows.index(after:)(v41);
      v78 = v71;
      v79 = v77;
      v80 = v76;
      v59 = type metadata accessor for Column(0, a2, v57, v58);
      Column.subscript.getter(v41, v59, v47);
      if ((*v52)(v47, 1, a2) == 1)
      {
        (*v61)(v47, v64);
      }

      else
      {
        (*v63)(v72, v47, a2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
        sub_21B34AA14();
        if (v78)
        {
          sub_21B2E8474(v78, v41, &v84, v68);
        }

        else if ((*(v69 + *(v68 + 14)) & 0xFE) == 2)
        {
          sub_21B2E84E0(v41, &v84, v68);
        }

        (*v62)(v72, a2);
        v47 = v66;
      }

      v41 = v56;
      v53 = v56 == v70;
      v40 = v55;
      v39 = v54;
    }

    while (!v53);
  }

  sub_21B23A9F4(v38, v39, v40);
  v48 = v85;
  result = *&v84;
  v50 = v60;
  *v60 = v84;
  *(v50 + 2) = v48;
  return result;
}

uint64_t sub_21B2E5FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  (*(v3 + 32))(&v76, v4, v3);
  v48 = v76;
  v6 = v77;
  v5 = v78;
  v7 = v79;
  v8 = v80;
  v9 = v78;
  if (v80)
  {
    if (v80 == 1 && *(v78 + 16))
    {
      v9 = *(v78 + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v11)
      {
        v9 = 0;
      }

      else
      {
        v9 = v10;
      }
    }
  }

  sub_21B2A6400();
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  v69 = v48;
  v70 = v6;
  v71 = v5;
  v72 = v7;
  v73 = v8;
  v74 = v9;
  v75 = v14;
  v15 = *(a1 + 24);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E510, &unk_21B351F10);
  v17 = *(a1 + 40);
  sub_21B278F78(&qword_27CD7E838, &qword_27CD7E510, &unk_21B351F10, MEMORY[0x277D83588]);
  v43 = sub_21B2E9AE4(v45, v4, v15, v4, v16, v3, v17, v3);
  sub_21B261664(&v69, &qword_27CD7E510, &unk_21B351F10);
  v18 = v45 + *(a1 + 52);
  (*(v17 + 24))(&v54, v15, v17);
  v19 = v54;
  v60 = v4;
  v61 = v15;
  v62 = v15;
  v63 = v3;
  v64 = v17;
  v65 = v17;
  result = type metadata accessor for HashJoin.JoinItem(0, &v60);
  v21 = *(v18 + *(result + 72));
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v21 < *(v19 + 16))
  {
    v42 = a2;
    sub_21B233A74(v19 + 40 * v21 + 32, v66);

    v49 = *(v17 + 32);
    v49(&v60, v15, v17);
    v22 = v63;
    v23 = v64;
    v24 = v65;
    v46 = v15;
    v25 = sub_21B2FB1D4(v63, v64, v65);

    sub_21B23A9F4(v22, v23, v24);
    sub_21B2E7A64(v25, a1, &v58);
    v49(&v60, v46, v17);
    v47 = v61;
    v50 = v60;
    v26 = v62;
    v27 = v63;
    v28 = v64;
    v29 = v65;
    v30 = v63;
    if (v65)
    {
      if (v65 == 1 && *(v63 + 16))
      {
        v30 = *(v63 + 32);
      }

      else
      {
        sub_21B2A6400();
        if (v32)
        {
          v30 = 0;
        }

        else
        {
          v30 = v31;
        }
      }
    }

    sub_21B2A6400();
    if (v34)
    {
      v35 = 0;
    }

    else
    {
      v35 = v33;
    }

    if (v30 == v35)
    {
LABEL_24:

      sub_21B23A9F4(v27, v28, v29);
      result = sub_21B233960(v66);
      v36 = v59;
      *v42 = v58;
      *(v42 + 16) = v36;
      return result;
    }

    while (1)
    {
      *&v54 = v50;
      *(&v54 + 1) = v47;
      *&v55 = v26;
      *(&v55 + 1) = v27;
      v56 = v28;
      v57 = v29;
      v37 = DataFrame.Rows.index(after:)(v30);
      v38 = v67;
      v39 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      (*(*(v39 + 8) + 128))(&v54, v30, v38);
      if (*(&v55 + 1))
      {
        if (swift_dynamicCast())
        {
          if (*(&v52 + 1))
          {
            v54 = v51;
            v55 = v52;
            v56 = v53;
            if (v43[2] && (sub_21B24B560(&v54), (v40 & 1) != 0))
            {

              sub_21B2E8474(v41, v30, &v58, a1);
            }

            else if ((*(v45 + *(a1 + 56)) & 0xFE) == 2)
            {
              sub_21B2E84E0(v30, &v58, a1);
            }

            sub_21B260E14(&v54);
            goto LABEL_27;
          }
        }

        else
        {
          v53 = 0;
          v51 = 0u;
          v52 = 0u;
        }
      }

      else
      {
        sub_21B261664(&v54, &qword_27CD7E0F8, &unk_21B3557C0);
        v51 = 0u;
        v52 = 0u;
        v53 = 0;
      }

      sub_21B261664(&v51, &qword_27CD7E200, &unk_21B352050);
LABEL_27:
      v30 = v37;
      if (v37 == v35)
      {
        goto LABEL_24;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2E64AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v145 = a3;
  v119 = a4;
  v140 = sub_21B34B474();
  v123 = *(v140 - 8);
  v7 = MEMORY[0x28223BE20](v140);
  v144 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v135 = &v119 - v10;
  v150 = a2;
  v122 = *(a2 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v143 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v141 = &v119 - v13;
  v14 = *(a1 + 32);
  v15 = *(v14 + 32);
  v16 = *(a1 + 16);
  v149 = v4;
  v128 = v16;
  v129 = v14;
  v124 = v15;
  v125 = v14 + 32;
  (v15)(&v186);
  v17 = *(&v187 + 1);
  v18 = v188;
  v19 = v189;
  *&v147 = sub_21B2FB1D4(*(&v187 + 1), v188, v189);

  sub_21B23A9F4(v17, v18, v19);
  v148 = a1;
  v130 = v4 + *(a1 + 52);
  v20 = *(a1 + 40);
  v146 = *(v20 + 32);
  v21 = *(a1 + 24);
  v146(&v174, v21, v20);
  v142 = v174;
  v22 = *(&v175 + 1);
  v23 = v176;
  v24 = BYTE8(v176);
  v25 = sub_21B2FB1D4(*(&v175 + 1), v176, SBYTE8(v176));

  v26 = v23;
  v27 = v146;
  sub_21B23A9F4(v22, v26, v24);
  if (v25 <= v147)
  {
    v28 = v147;
  }

  else
  {
    v28 = v25;
  }

  sub_21B2E7A64(v28, v148, &v184);
  v126 = v21;
  v127 = v20;
  v27(&v174, v21, v20);
  v147 = v174;
  v29 = v175;
  v30 = v176;
  v31 = BYTE8(v176);
  v32 = *(&v175 + 1);
  if (BYTE8(v176))
  {
    if (BYTE8(v176) == 1 && *(*(&v175 + 1) + 16))
    {
      v32 = *(*(&v175 + 1) + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v34)
      {
        v32 = 0;
      }

      else
      {
        v32 = v33;
      }
    }
  }

  sub_21B2A6400();
  v186 = v147;
  if (v36)
  {
    v37 = 0;
  }

  else
  {
    v37 = v35;
  }

  v187 = v29;
  v188 = v30;
  v189 = v31;
  v190 = v32;
  v191 = v37;
  v183 = sub_21B23B6C4(&v186);
  v27(&v178, v126, v127);
  v147 = v178;
  v39 = v179;
  v38 = v180;
  v40 = v181;
  v41 = v182;
  v42 = v180;
  if (v182)
  {
    if (v182 == 1 && *(v180 + 16))
    {
      v42 = *(v180 + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v44)
      {
        v42 = 0;
      }

      else
      {
        v42 = v43;
      }
    }
  }

  sub_21B2A6400();
  v170 = v147;
  if (v46)
  {
    v47 = 0;
  }

  else
  {
    v47 = v45;
  }

  *&v171 = v39;
  *(&v171 + 1) = v38;
  *&v172 = v40;
  BYTE8(v172) = v41;
  *&v173 = v42;
  *(&v173 + 1) = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E510, &unk_21B351F10);
  v120 = sub_21B278F78(&qword_27CD7E838, &qword_27CD7E510, &unk_21B351F10, MEMORY[0x277D83588]);
  v49 = v127;
  v50 = v129;
  v51 = v128;
  v52 = v126;
  v53 = v150;
  v121 = v48;
  v134 = sub_21B2E8990(v130, v54, &v170, v128, v126, v126, v150, v48, v129, v127, v127, v145, v120);
  v174 = v170;
  v175 = v171;
  v176 = v172;
  v177 = v173;
  sub_21B261664(&v174, &qword_27CD7E510, &unk_21B351F10);
  v55 = v149;
  (*(v50 + 24))(&v155, v51, v50);
  v57 = *(&v155 + 1);
  v56 = v155;
  v58 = v156;
  *&v170 = v51;
  *(&v170 + 1) = v52;
  *&v171 = v51;
  *(&v171 + 1) = v50;
  *&v172 = v49;
  *(&v172 + 1) = v50;
  v59 = *(v55 + *(type metadata accessor for HashJoin.JoinItem(0, &v170) + 72));
  v170 = __PAIR128__(v57, v56);
  *&v171 = v58;
  DataFrame.subscript.getter(v59, v53, v53);

  v139 = v165;
  v137 = v164;
  v138 = v166;
  v124(&v164, v51, v50);
  v146 = v165;
  *&v147 = v164;
  v60 = v167;
  v142 = v166;
  v61 = v168;
  v62 = v169;
  v63 = v167;
  v64 = v135;
  if (v169)
  {
    if (v169 == 1 && *(v167 + 16))
    {
      v63 = *(v167 + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v66)
      {
        v63 = 0;
      }

      else
      {
        v63 = v65;
      }
    }
  }

  sub_21B2A6400();
  if (v68)
  {
    v69 = 0;
  }

  else
  {
    v69 = v67;
  }

  v136 = v69;
  if (v63 != v69)
  {
    v75 = (v122 + 48);
    v132 = (v122 + 8);
    v133 = (v122 + 32);
    v131 = (v123 + 8);
    do
    {
      *&v170 = v147;
      *(&v170 + 1) = v146;
      *&v171 = v142;
      *(&v171 + 1) = v60;
      v76 = v61;
      *&v172 = v61;
      v77 = v62;
      BYTE8(v172) = v62;
      v78 = DataFrame.Rows.index(after:)(v63);
      *&v170 = v137;
      *(&v170 + 1) = v139;
      *&v171 = v138;
      v79 = v150;
      v82 = type metadata accessor for Column(0, v150, v80, v81);
      Column.subscript.getter(v63, v82, v64);
      if ((*v75)(v64, 1, v79) == 1)
      {
        (*v131)(v64, v140);
      }

      else
      {
        (*v133)(v141, v64, v79);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
        sub_21B34AA14();
        v83 = v170;
        if (v170)
        {
          sub_21B2E811C(v63, v170, &v184, v148);
          if (*(v183 + 16))
          {
            v84 = *(v83 + 16);
            if (v84)
            {
              v85 = 32;
              do
              {
                sub_21B2644EC(*(v83 + v85));
                v85 += 8;
                --v84;
              }

              while (v84);
            }
          }
        }

        else if ((*(v149 + *(v148 + 14)) | 2) == 3)
        {
          sub_21B2E8194(v63, &v184, v148);
        }

        (*v132)(v141, v150);
        v64 = v135;
      }

      v63 = v78;
      v62 = v77;
      v61 = v76;
    }

    while (v78 != v136);
  }

  sub_21B23A9F4(v60, v61, v62);
  v124(&v159, v128, v129);
  v147 = v159;
  v71 = v160;
  v70 = v161;
  v72 = v162;
  v73 = v163;
  v74 = v161;
  if (v163)
  {
    if (v163 == 1 && *(v161 + 16))
    {
      v74 = *(v161 + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v87)
      {
        v74 = 0;
      }

      else
      {
        v74 = v86;
      }
    }
  }

  sub_21B2A6400();
  v155 = v147;
  if (v89)
  {
    v90 = 0;
  }

  else
  {
    v90 = v88;
  }

  *&v156 = v71;
  *(&v156 + 1) = v70;
  *&v157 = v72;
  BYTE8(v157) = v73;
  *&v158 = v74;
  *(&v158 + 1) = v90;
  v91 = v129;
  v92 = v127;
  v93 = v150;
  v94 = v128;
  v95 = v126;
  v137 = sub_21B2E8990(v149, v88, &v155, v128, v126, v128, v150, v121, v129, v127, v129, v145, v120);
  v170 = v155;
  v171 = v156;
  v172 = v157;
  v173 = v158;
  sub_21B261664(&v170, &qword_27CD7E510, &unk_21B351F10);
  v96 = v130;
  (*(v92 + 24))(v154, v95, v92);
  v97 = v154[0];
  v98 = v154[1];
  v99 = v154[2];
  *&v155 = v94;
  *(&v155 + 1) = v95;
  *&v156 = v95;
  *(&v156 + 1) = v91;
  *&v157 = v92;
  *(&v157 + 1) = v92;
  v100 = *(v96 + *(type metadata accessor for HashJoin.JoinItem(0, &v155) + 72));
  *&v155 = v97;
  *(&v155 + 1) = v98;
  *&v156 = v99;
  DataFrame.subscript.getter(v100, v93, v93);

  v142 = v151;
  v146 = v153;
  *&v147 = v152;
  v101 = v183;
  v102 = *(v183 + 16);
  if (v102)
  {
    v103 = sub_21B2642A8(*(v183 + 16), 0);
    v104 = sub_21B26566C(&v155, v103 + 4, v102, v101);
    v105 = v155;

    sub_21B26139C(v105);
    if (v104 != v102)
    {
      __break(1u);
      MEMORY[0x21CEEE840](v103);

      __break(1u);
      return result;
    }

    v93 = v150;
  }

  else
  {
    v103 = MEMORY[0x277D84F90];
  }

  *&v155 = v103;
  sub_21B264924(&v155);

  v135 = v155;
  v108 = *(v155 + 16);
  if (v108)
  {
    v109 = (v135 + 32);
    v141 = type metadata accessor for Column(0, v93, v106, v107);
    v110 = (v122 + 48);
    v136 = (v122 + 32);
    v111 = (v122 + 8);
    v112 = (v123 + 8);
    do
    {
      while (1)
      {
        v114 = *v109++;
        v113 = v114;
        *&v155 = v142;
        *(&v155 + 1) = v147;
        *&v156 = v146;
        v115 = v144;
        Column.subscript.getter(v114, v141, v144);
        if ((*v110)(v115, 1, v93) != 1)
        {
          break;
        }

        (*v112)(v115, v140);
        if (!--v108)
        {
          goto LABEL_71;
        }
      }

      (*v136)(v143, v115, v93);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
      sub_21B34AA14();
      if (v155)
      {
        sub_21B2E8474(v155, v113, &v184, v148);
      }

      else if ((*(v149 + *(v148 + 14)) & 0xFE) == 2)
      {
        sub_21B2E84E0(v113, &v184, v148);
      }

      v93 = v150;
      (*v111)(v143, v150);
      --v108;
    }

    while (v108);
  }

LABEL_71:

  v117 = v185;
  v118 = v119;
  *v119 = v184;
  *(v118 + 2) = v117;
  return result;
}

uint64_t sub_21B2E70D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = *(a1 + 16);
  v76 = (*(a1 + 32) + 32);
  v77 = *(a1 + 32);
  v75 = *v76;
  (*v76)(&v124);
  v4 = v126;
  v5 = v127;
  v6 = v128;
  v87 = sub_21B2FB1D4(v126, v127, v128);

  sub_21B23A9F4(v4, v5, v6);
  v7 = *(a1 + 40);
  v85 = *(v7 + 32);
  v78 = *(a1 + 24);
  v79 = v2 + *(a1 + 52);
  v85(&v109);
  v8 = v111;
  v9 = v112;
  v10 = v113;
  v11 = sub_21B2FB1D4(v111, v112, v113);

  sub_21B23A9F4(v8, v9, v10);
  if (v11 <= v87)
  {
    v12 = v87;
  }

  else
  {
    v12 = v11;
  }

  v81 = a1;
  sub_21B2E7A64(v12, a1, &v122);
  (v85)(&v109, v78, v7);
  v88 = v109;
  v14 = v110;
  v13 = v111;
  v15 = v112;
  v16 = v113;
  v17 = v111;
  if (v113)
  {
    if (v113 == 1 && *(v111 + 16))
    {
      v17 = *(v111 + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v19)
      {
        v17 = 0;
      }

      else
      {
        v17 = v18;
      }
    }
  }

  sub_21B2A6400();
  v124 = v88;
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  v125 = v14;
  v126 = v13;
  v127 = v15;
  v128 = v16;
  v129 = v17;
  v130 = v22;
  v83 = sub_21B23B6C4(&v124);
  v121 = v83;
  (v85)(&v116, v78, v7);
  v89 = v116;
  v24 = v117;
  v23 = v118;
  v25 = v119;
  v26 = v120;
  v27 = v118;
  if (v120)
  {
    if (v120 == 1 && *(v118 + 16))
    {
      v27 = *(v118 + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v29)
      {
        v27 = 0;
      }

      else
      {
        v27 = v28;
      }
    }
  }

  sub_21B2A6400();
  v109 = v89;
  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = v30;
  }

  v110 = v24;
  v111 = v23;
  v112 = v25;
  v113 = v26;
  v114 = v27;
  v115 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E510, &unk_21B351F10);
  sub_21B278F78(&qword_27CD7E838, &qword_27CD7E510, &unk_21B351F10, MEMORY[0x277D83588]);
  v34 = v77;
  v82 = sub_21B2E9AE4(v79, v80, v78, v78, v33, v77, v7, v7);
  sub_21B261664(&v109, &qword_27CD7E510, &unk_21B351F10);
  (*(v34 + 24))(v98, v80, v34);
  v35 = v98[0];
  *&v102 = v80;
  *(&v102 + 1) = v78;
  *&v103 = v80;
  *(&v103 + 1) = v77;
  v104 = v7;
  v105 = v77;
  result = type metadata accessor for HashJoin.JoinItem(0, &v102);
  v37 = *(v84 + *(result + 72));
  if ((v37 & 0x8000000000000000) != 0)
  {
    goto LABEL_81;
  }

  if (v37 >= *(v35 + 16))
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v74 = v7;
  sub_21B233A74(v35 + 40 * v37 + 32, v106);

  (v75)(v98, v80, v77);
  v86 = v98[1];
  v90 = v98[0];
  v39 = v98[2];
  v38 = v99;
  v40 = v100;
  v41 = v101;
  v42 = v99;
  if (v101)
  {
    if (v101 == 1 && *(v99 + 16))
    {
      v42 = *(v99 + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v44)
      {
        v42 = 0;
      }

      else
      {
        v42 = v43;
      }
    }
  }

  sub_21B2A6400();
  if (v46)
  {
    v47 = 0;
  }

  else
  {
    v47 = v45;
  }

  if (v42 == v47)
  {

    goto LABEL_56;
  }

  do
  {
    *&v102 = v90;
    *(&v102 + 1) = v86;
    *&v103 = v39;
    *(&v103 + 1) = v38;
    v104 = v40;
    LOBYTE(v105) = v41;
    v48 = DataFrame.Rows.index(after:)(v42);
    v49 = v107;
    v50 = v108;
    __swift_project_boxed_opaque_existential_1(v106, v107);
    (*(*(v50 + 8) + 128))(&v102, v42, v49);
    if (!*(&v103 + 1))
    {
      sub_21B261664(&v102, &qword_27CD7E0F8, &unk_21B3557C0);
      v95 = 0u;
      v96 = 0u;
      v97 = 0;
LABEL_39:
      sub_21B261664(&v95, &qword_27CD7E200, &unk_21B352050);
      goto LABEL_40;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      v97 = 0;
      v95 = 0u;
      v96 = 0u;
      goto LABEL_39;
    }

    if (!*(&v96 + 1))
    {
      goto LABEL_39;
    }

    v102 = v95;
    v103 = v96;
    v104 = v97;
    if (v82[2] && (v51 = sub_21B24B560(&v102), (v52 & 1) != 0))
    {
      v53 = *(v82[7] + 8 * v51);

      sub_21B2E811C(v42, v53, &v122, v81);
      if (*(v121 + 16))
      {
        v54 = *(v53 + 16);
        if (v54)
        {
          v55 = 32;
          do
          {
            sub_21B2644EC(*(v53 + v55));
            v55 += 8;
            --v54;
          }

          while (v54);
        }
      }
    }

    else if ((*(v84 + *(v81 + 56)) | 2) == 3)
    {
      sub_21B2E8194(v42, &v122, v81);
    }

    sub_21B260E14(&v102);
LABEL_40:
    v42 = v48;
  }

  while (v48 != v47);

  v83 = v121;
  v34 = v77;
LABEL_56:

  sub_21B23A9F4(v38, v40, v41);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F110, &qword_21B355CB0);
  sub_21B278F78(&qword_27CD7F118, &qword_27CD7F110, &qword_21B355CB0, MEMORY[0x277D83B68]);
  v57 = sub_21B2E9AE4(v84, v80, v78, v80, v56, v34, v74, v34);
  (*(v74 + 24))(&v95, v78, v74);
  v58 = v95;
  *&v102 = v80;
  *(&v102 + 1) = v78;
  *&v103 = v78;
  *(&v103 + 1) = v34;
  v104 = v74;
  v105 = v74;
  result = type metadata accessor for HashJoin.JoinItem(0, &v102);
  v59 = *(v79 + *(result + 72));
  if ((v59 & 0x8000000000000000) != 0)
  {
    goto LABEL_83;
  }

  if (v59 < *(v58 + 16))
  {
    sub_21B233A74(v58 + 40 * v59 + 32, &v102);

    v60 = 0;
    v61 = 1 << *(v83 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v62 & *(v83 + 56);
    v64 = (v61 + 63) >> 6;
    if (!v63)
    {
LABEL_64:
      while (1)
      {
        v65 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          break;
        }

        if (v65 >= v64)
        {

          sub_21B233960(&v102);
          result = sub_21B233960(v106);
          v72 = v123;
          *a2 = v122;
          *(a2 + 16) = v72;
          return result;
        }

        v63 = *(v83 + 56 + 8 * v65);
        ++v60;
        if (v63)
        {
          v60 = v65;
          goto LABEL_68;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

LABEL_68:
    while (1)
    {
      v66 = __clz(__rbit64(v63));
      v63 &= v63 - 1;
      v67 = *(*(v83 + 48) + ((v60 << 9) | (8 * v66)));
      v69 = *(&v103 + 1);
      v68 = v104;
      __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
      (*(*(v68 + 8) + 128))(v91, v67, v69);
      if (!v91[3])
      {
        break;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        v94 = 0;
        v92 = 0u;
        v93 = 0u;
LABEL_63:
        result = sub_21B261664(&v92, &qword_27CD7E200, &unk_21B352050);
        if (!v63)
        {
          goto LABEL_64;
        }

        continue;
      }

      if (!*(&v93 + 1))
      {
        goto LABEL_63;
      }

      v95 = v92;
      v96 = v93;
      v97 = v94;
      if (v57[2] && (sub_21B24B560(&v95), (v70 & 1) != 0))
      {

        sub_21B2E8474(v71, v67, &v122, v81);
      }

      else if ((*(v84 + *(v81 + 56)) & 0xFE) == 2)
      {
        sub_21B2E84E0(v67, &v122, v81);
      }

      result = sub_21B260E14(&v95);
      if (!v63)
      {
        goto LABEL_64;
      }
    }

    sub_21B261664(v91, &qword_27CD7E0F8, &unk_21B3557C0);
    v92 = 0u;
    v93 = 0u;
    v94 = 0;
    goto LABEL_63;
  }

LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_21B2E7A64@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  *&v103 = MEMORY[0x277D84F90];
  *(&v103 + 1) = MEMORY[0x277D84F90];
  v104 = sub_21B25DC2C(MEMORY[0x277D84F90]);
  v7 = a2[4];
  v8 = a2[2];
  (*(v7 + 56))(v8, v7);
  v86 = v8;
  v88 = v7;
  swift_getAssociatedTypeWitness();
  v9 = sub_21B34B004();

  if (v9 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v82 = a3;
  if (v9)
  {
    v84 = *(v7 + 24);
    v11 = a2[3];
    v12 = a2[5];
    v97 = v8;
    v98 = v11;
    v81 = v11;
    v99 = v8;
    v100 = v7;
    v79 = a2;
    v80 = v12;
    v101 = v12;
    v102 = v7;
    v13 = 0;
    v83 = type metadata accessor for HashJoin.JoinItem(0, &v97);
    v14 = *(v3 + *(v83 + 72));
    v15 = 32;
    while (1)
    {
      v84(&v94, v86, v88);
      v16 = v94;

      if (v13 >= *(v16 + 16))
      {
        break;
      }

      sub_21B233A74(v16 + v15, &v97);

      v18 = v100;
      v17 = v101;
      __swift_project_boxed_opaque_existential_1(&v97, v100);
      (*(*(v17 + 8) + 88))(&v90, v18);
      v20 = v92;
      v19 = v93;
      __swift_project_boxed_opaque_existential_1(&v90, v92);
      (*(v19 + 32))(&v94, a1, v20, v19);
      __swift_destroy_boxed_opaque_existential_1Tm(&v90);
      if (v14 == v13)
      {
        DataFrame.append(column:)(&v94);
      }

      else
      {
        v21 = (v4 + *(v83 + 76));
        v22 = v21[1];
        v90 = *v21;
        v91 = v22;

        MEMORY[0x21CEED5E0](46, 0xE100000000000000);
        v24 = v100;
        v23 = v101;
        __swift_project_boxed_opaque_existential_1(&v97, v100);
        v25 = (*(*(v23 + 8) + 8))(v24);
        MEMORY[0x21CEED5E0](v25);

        v26 = v90;
        v27 = v91;
        v29 = v95;
        v28 = v96;
        __swift_mutable_project_boxed_opaque_existential_1(&v94, v95);
        (*(*(v28 + 8) + 16))(v26, v27, v29);
        DataFrame.append(column:)(&v94);
        v31 = v100;
        v30 = v101;
        __swift_project_boxed_opaque_existential_1(&v97, v100);
        v32 = (*(*(v30 + 8) + 8))(v31);
        v34 = v33;
        v35 = v95;
        v36 = v96;
        __swift_project_boxed_opaque_existential_1(&v94, v95);
        v37._countAndFlagsBits = (*(*(v36 + 8) + 8))(v35);
        v39 = v38;
        v40._countAndFlagsBits = v32;
        v40._object = v34;
        v37._object = v39;
        DataFrame.addAlias(_:forColumn:)(v40, v37);
      }

      ++v13;
      sub_21B233960(&v94);
      sub_21B233960(&v97);
      v15 += 40;
      if (v9 == v13)
      {
        v42 = v80;
        v41 = v81;
        v43 = v79;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v43 = a2;
  v42 = a2[5];
  v41 = v43[3];
LABEL_11:
  v44 = v4 + *(v43 + 13);
  (*(v42 + 56))(v41, v42);
  swift_getAssociatedTypeWitness();
  v45 = sub_21B34B004();

  if (v45 < 0)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  if (!v45)
  {
    goto LABEL_19;
  }

  v97 = v86;
  v98 = v41;
  v99 = v41;
  v100 = v88;
  v101 = v42;
  v102 = v42;
  result = type metadata accessor for HashJoin.JoinItem(0, &v97);
  v46 = 0;
  v47 = *(v44 + *(result + 72));
  v87 = result;
  v48 = 32;
  v85 = v47;
  while (1)
  {
    if (v47 == v46)
    {
      goto LABEL_15;
    }

    (*(v42 + 24))(&v94, v41, v42);
    v77 = v94;

    if (v46 >= *(v77 + 16))
    {
      break;
    }

    sub_21B233A74(v77 + v48, &v97);

    v50 = v100;
    v49 = v101;
    __swift_project_boxed_opaque_existential_1(&v97, v100);
    (*(*(v49 + 8) + 88))(&v90, v50);
    v51 = v41;
    v52 = v92;
    v53 = v93;
    __swift_project_boxed_opaque_existential_1(&v90, v92);
    (*(v53 + 32))(&v94, a1, v52, v53);
    __swift_destroy_boxed_opaque_existential_1Tm(&v90);
    v54 = (v44 + *(v87 + 76));
    v55 = v54[1];
    v90 = *v54;
    v91 = v55;

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    v57 = v100;
    v56 = v101;
    __swift_project_boxed_opaque_existential_1(&v97, v100);
    v58 = (*(*(v56 + 8) + 8))(v57);
    MEMORY[0x21CEED5E0](v58);

    v59 = v90;
    v60 = v91;
    v61 = v45;
    v62 = v44;
    v63 = v42;
    v64 = v95;
    v65 = v96;
    __swift_mutable_project_boxed_opaque_existential_1(&v94, v95);
    (*(*(v65 + 8) + 16))(v59, v60, v64);
    DataFrame.append(column:)(&v94);
    v67 = v100;
    v66 = v101;
    __swift_project_boxed_opaque_existential_1(&v97, v100);
    v68 = (*(*(v66 + 8) + 8))(v67);
    v70 = v69;
    v72 = v95;
    v71 = v96;
    __swift_project_boxed_opaque_existential_1(&v94, v95);
    v73._countAndFlagsBits = (*(*(v71 + 8) + 8))(v72);
    v75 = v74;
    v76._countAndFlagsBits = v68;
    v76._object = v70;
    v73._object = v75;
    DataFrame.addAlias(_:forColumn:)(v76, v73);
    v41 = v51;
    v47 = v85;

    v42 = v63;
    v44 = v62;
    v45 = v61;

    sub_21B233960(&v94);
    result = sub_21B233960(&v97);
LABEL_15:
    ++v46;
    v48 += 40;
    if (v45 == v46)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_19:
  v78 = v104;
  *v82 = v103;
  *(v82 + 16) = v78;
  return result;
}

uint64_t sub_21B2E811C(uint64_t result, uint64_t a2, char **a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = result;
    v8 = (a2 + 32);
    do
    {
      v9 = *v8++;
      sub_21B2E916C(v7, a3, a4);
      result = sub_21B2E9330(v9, a3, a4);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_21B2E8194(uint64_t a1, char **a2, uint64_t a3)
{
  v4 = a3;
  v6 = *(a3 + 32);
  v7 = *(a3 + 16);
  (*(v6 + 24))(v35, v7, v6);
  v8 = v35[0];

  v9 = *(v8 + 16);
  if (!v9)
  {

    goto LABEL_8;
  }

  v32 = v7;
  v7 = *a2;
  v33 = v6;
  v30 = v3;
  v31 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      sub_21B233A74(v8 + v10 + 32, v35);
      if (v11 >= *(v7 + 2))
      {
        __break(1u);
        goto LABEL_20;
      }

      ++v11;
      v12 = v36;
      v13 = v37;
      v14 = a2;
      v15 = __swift_project_boxed_opaque_existential_1(v35, v36);
      v39[3] = v12;
      v39[4] = *(v13 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
      (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v15, v12);
      v18 = *&v7[v10 + 56];
      v17 = *&v7[v10 + 64];
      __swift_mutable_project_boxed_opaque_existential_1(&v7[v10 + 32], v18);
      v19 = v18;
      a2 = v14;
      (*(v17 + 56))(a1, v39, v19, v17);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      *v14 = v7;
      sub_21B233960(v35);
      v10 += 40;
    }

    while (v9 != v11);

    v7 = v32;
    v6 = v33;
    v3 = v30;
    v4 = v31;
LABEL_8:
    v20 = v3 + *(v4 + 52);
    v21 = *(v4 + 40);
    v22 = *(v4 + 24);
    (*(v21 + 56))(v22, v21);
    swift_getAssociatedTypeWitness();
    v23 = sub_21B34B004();

    if ((v23 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    v7 = sub_21B23A2F4(v7);
  }

  if (!v23)
  {
    return result;
  }

  v35[0] = v7;
  v35[1] = v22;
  v35[2] = v22;
  v36 = v6;
  v37 = v21;
  v38 = v21;
  v25 = *(v20 + *(type metadata accessor for HashJoin.JoinItem(0, v35) + 72));
  v26 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21B23A2F4(v26);
    v26 = result;
  }

  *a2 = v26;
  while (1)
  {
    if (!v25)
    {
      goto LABEL_14;
    }

    if (v9 >= *(v26 + 16))
    {
      break;
    }

    v27 = v26 + 32 + 40 * v9;
    v28 = *(v27 + 24);
    v29 = *(v27 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
    result = (*(v29 + 16))(v28, v29);
    *a2 = v26;
    ++v9;
LABEL_14:
    --v25;
    if (!--v23)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2E8474(uint64_t result, uint64_t a2, char **a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v8 = (result + 32);
    do
    {
      v9 = *v8++;
      sub_21B2E916C(v9, a3, a4);
      result = sub_21B2E9330(a2, a3, a4);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_21B2E84E0(uint64_t a1, char **a2, uint64_t a3)
{
  v4 = v3;
  v6 = v3 + *(a3 + 52);
  v7 = *(a3 + 40);
  v8 = *(v7 + 24);
  v9 = *(a3 + 24);
  (v8)(v50, v9, v7);
  v10 = v50[0];

  v11 = *(a3 + 16);
  v12 = *(a3 + 32);
  *v51 = v11;
  *&v51[8] = v9;
  v45 = v9;
  v46 = v7;
  *&v51[16] = v9;
  v52 = v12;
  v53 = v7;
  v54 = v7;
  v13 = *(v6 + *(type metadata accessor for HashJoin.JoinItem(0, v51) + 72));
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

  if (v13 >= *(v10 + 16))
  {
    goto LABEL_35;
  }

  v43 = v8;
  v44 = v13;
  sub_21B233A74(v10 + 40 * v13 + 32, v55);

  (*(v12 + 24))(v51, v11, v12);
  v14 = *v51;

  v15 = *(v14 + 16);

  if (v15)
  {
    *v51 = v11;
    *&v51[8] = v45;
    *&v51[16] = v11;
    v52 = v12;
    v53 = v7;
    v54 = v12;
    v16 = *(v4 + *(type metadata accessor for HashJoin.JoinItem(0, v51) + 72));
    v17 = *a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_21B23A2F4(v17);
    }

    v10 = 0;
    v12 = (v17 + 32);
    v11 = &v17[40 * v16 + 32];
    v48 = v16;
    do
    {
      v18 = v10 + 1;
      v19 = __OFADD__(v10, 1);
      v20 = *(v17 + 2);
      if (v16 == v10)
      {
        if (v16 >= v20)
        {
          goto LABEL_32;
        }

        v21 = v56;
        v22 = v57;
        v23 = __swift_project_boxed_opaque_existential_1(v55, v56);
        v52 = v21;
        v53 = *(v22 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
        (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v23, v21);
        v25 = *(v11 + 3);
        v8 = *(v11 + 4);
        __swift_mutable_project_boxed_opaque_existential_1(v11, v25);
        (*(v8 + 7))(a1, v51, v25, v8);
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
      }

      else
      {
        if (v10 >= v20)
        {
          goto LABEL_33;
        }

        v8 = *(v12 + 24);
        v26 = *(v12 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v12, v8);
        (*(v26 + 16))(v8, v26);
      }

      *a2 = v17;
      if (v19)
      {
        __break(1u);
        goto LABEL_31;
      }

      ++v10;
      v12 += 40;
      v16 = v48;
    }

    while (v18 != v15);
  }

  v11 = v51;
  (v43)(v51, v45, v46);
  v10 = *v51;

  v8 = *a2;
  v12 = v15;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v27 = *(v10 + 16);
    *a2 = v8;
    v28 = v44;
    if (!v27)
    {
      break;
    }

    v29 = 0;
LABEL_20:
    v30 = v10 + 32 + 40 * v29;
    while (v29 < *(v10 + 16))
    {
      *v51 = v29;
      result = sub_21B233A74(v30, (v11 + 8));
      v32 = v53;
      if (!v53)
      {
        goto LABEL_29;
      }

      v33 = *v51;
      v34 = v54;
      *v51 = *&v51[8];
      *&v51[16] = v52;
      v52 = v53;
      v53 = v54;
      if (v33 != v28)
      {
        if (v12 >= *(v8 + 2))
        {
          __break(1u);
          return result;
        }

        v35 = v12;
        v36 = &v8[40 * v12 + 32];
        v37 = __swift_project_boxed_opaque_existential_1(v51, v32);
        v50[3] = v32;
        v50[4] = *(v34 + 8);
        v38 = __swift_allocate_boxed_opaque_existential_1(v50);
        (*(*(v32 - 8) + 16))(v38, v37, v32);
        v39 = v36;
        v40 = *(v36 + 24);
        v41 = *(v39 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
        (*(v41 + 56))(a1, v50, v40, v41);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        *a2 = v8;
        sub_21B233960(v51);
        v12 = v35 + 1;
        v28 = v44;
        if (v27 - 1 == v29++)
        {
          goto LABEL_29;
        }

        goto LABEL_20;
      }

      ++v29;
      sub_21B233960(v51);
      v30 += 40;
      if (v27 == v29)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v8 = sub_21B23A2F4(v8);
  }

LABEL_29:

  return sub_21B233960(v55);
}

unint64_t sub_21B2E8990(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v66 = a8;
  v76 = a4;
  v77 = a5;
  v70 = a3;
  v75 = a10;
  v72 = a9;
  v73 = a12;
  v68 = a13;
  v74 = sub_21B34B474();
  v63 = *(v74 - 8);
  v17 = MEMORY[0x28223BE20](v74);
  v19 = &v61 - v18;
  v62 = *(a7 - 8);
  v20 = MEMORY[0x28223BE20](v17);
  v61 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v71 = &v61 - v23;
  v69 = *(a8 - 8);
  MEMORY[0x28223BE20](v22);
  v67 = (&v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v27 = &v61 - v26;
  (*(a11 + 24))(v87, a6, a11);
  v28 = v87[0];
  v29 = v87[1];
  v30 = v87[2];
  v81 = v76;
  v82 = v77;
  v83 = a6;
  v84 = v72;
  v85 = v75;
  v86 = a11;
  v31 = *(a1 + *(type metadata accessor for HashJoin.JoinItem(0, &v81) + 72));
  v81 = v28;
  v82 = v29;
  v83 = v30;
  DataFrame.subscript.getter(v31, a7, a7);

  v77 = v79;
  v75 = v78;
  v76 = v80;
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E760, &unk_21B352380);
  swift_getTupleTypeMetadata2();
  v33 = sub_21B34AFD4();
  v64 = v32;
  v72 = sub_21B2E97E8(v33, a7, v32, v73);

  v69[2](v67, v70, v66);
  sub_21B34AEC4();
  swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  sub_21B34B4D4();
  if (v82)
  {
    v37 = 0;
LABEL_20:
    (*(v65 + 8))(v27, v34);

    sub_21B2E9AD4(v37);
    return v72;
  }

  else
  {
    v38 = v81;
    v39 = type metadata accessor for Column(0, a7, v35, v36);
    v37 = 0;
    v40 = (v62 + 48);
    v41 = (v63 + 1);
    v69 = (v62 + 32);
    v63 = (v62 + 16);
    v67 = (v62 + 8);
    while (1)
    {
      v70 = v37;
      while (1)
      {
        v81 = v75;
        v82 = v77;
        v83 = v76;
        Column.subscript.getter(v38, v39, v19);
        if ((*v40)(v19, 1, a7) != 1)
        {
          break;
        }

        (*v41)(v19, v74);
        sub_21B34B4D4();
        v38 = v81;
        if (v82 == 1)
        {
          v37 = v70;
          goto LABEL_20;
        }
      }

      (*v69)(v71, v19, a7);
      sub_21B2E9AD4(v70);
      v42 = v72;
      LODWORD(v68) = swift_isUniquelyReferenced_nonNull_native();
      v81 = v42;
      v70 = sub_21B2E9604(v71, a7, v73);
      v44 = *(v42 + 16);
      v45 = (v43 & 1) == 0;
      v46 = __OFADD__(v44, v45);
      v47 = v44 + v45;
      if (v46)
      {
        break;
      }

      LODWORD(v66) = v43;
      v72 = v47;
      sub_21B34B814();
      v48 = sub_21B34B7F4();
      v49 = v81;
      v72 = v81;
      if (v48)
      {
        v70 = sub_21B2E9604(v71, a7, v73);
        v51 = v66;
        if ((v66 & 1) != (v50 & 1))
        {
          goto LABEL_22;
        }

        v49 = v72;
      }

      else
      {
        v51 = v66;
      }

      v66 = v27;
      if ((v51 & 1) == 0)
      {
        v81 = MEMORY[0x277D84F90];
        (*v63)(v61, v71, a7);
        v49 = v72;
        sub_21B34B804();
      }

      v52 = *(v49 + 56);
      v68 = v52;
      v53 = *(v52 + 8 * v70);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v53;
      *(v52 + 8 * v70) = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = sub_21B22E2C4(0, *(v53 + 16) + 1, 1, v53);
        *(v68 + 8 * v70) = v55;
      }

      v27 = v66;
      v57 = *(v55 + 2);
      v56 = *(v55 + 3);
      v66 = v57 + 1;
      if (v57 >= v56 >> 1)
      {
        v59 = sub_21B22E2C4((v56 > 1), v66, 1, v55);
        *(v68 + 8 * v70) = v59;
      }

      (*v67)(v71, a7);
      v58 = *(v68 + 8 * v70);
      *(v58 + 16) = v66;
      *(v58 + 8 * v57 + 32) = v38;
      sub_21B34B4D4();
      v38 = v81;
      v37 = sub_21B2E9EE4;
      if (v82)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    result = sub_21B34BA84();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B2E916C(uint64_t a1, char **a2, uint64_t a3)
{
  (*(*(a3 + 32) + 24))(&v18, *(a3 + 16));
  v4 = v18;

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_11:
      v6 = sub_21B23A2F4(v6);
    }

    v7 = 0;
    v8 = 0;
    do
    {
      sub_21B233A74(v4 + v7 + 32, &v18);
      if (v8 >= *(v6 + 2))
      {
        __break(1u);
        goto LABEL_11;
      }

      ++v8;
      v9 = v19;
      v10 = v20;
      v11 = __swift_project_boxed_opaque_existential_1(&v18, v19);
      v17[3] = v9;
      v17[4] = *(v10 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
      (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v11, v9);
      v13 = *&v6[v7 + 56];
      v14 = *&v6[v7 + 64];
      __swift_mutable_project_boxed_opaque_existential_1(&v6[v7 + 32], v13);
      (*(v14 + 56))(a1, v17, v13, v14);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      *a2 = v6;
      sub_21B233960(&v18);
      v7 += 40;
    }

    while (v5 != v8);
  }

  else
  {
  }
}

uint64_t sub_21B2E9330(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v28 = *(a3 + 16);
  v29 = *(a3 + 32);
  (*(v29 + 24))(&v34);
  v6 = v34;

  v26 = *(v6 + 16);

  v7 = v3 + *(a3 + 52);
  v8 = *(a3 + 40);
  v9 = *(a3 + 24);
  (*(v8 + 24))(&v34, v9, v8);
  v10 = v34;

  v11 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v11 = sub_21B23A2F4(v11);
  }

  v12 = *(v10 + 16);
  v25 = a2;
  v27 = v11;
  *a2 = v11;
  if (!v12)
  {
  }

  a2 = 0;
  v23 = v26;
  while (1)
  {
    for (i = v10 + 32 + 40 * a2; ; i += 40)
    {
      if (a2 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v34 = a2;
      sub_21B233A74(i, &v35);
      v11 = v37;
      if (!v37)
      {
      }

      v14 = v34;
      v15 = v38;
      v30 = v35;
      v31 = v36;
      v32 = v37;
      v33 = v38;
      v34 = v28;
      *&v35 = v9;
      *(&v35 + 1) = v9;
      v36 = v29;
      v37 = v8;
      v38 = v8;
      result = type metadata accessor for HashJoin.JoinItem(0, &v34);
      if (v14 != *(v7 + *(result + 72)))
      {
        break;
      }

      a2 = (a2 + 1);
      sub_21B233960(&v30);
      if (v12 == a2)
      {
      }
    }

    if ((v26 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v23 >= *(v27 + 16))
    {
      goto LABEL_18;
    }

    v22 = v27 + 32 + 40 * v23;
    v17 = __swift_project_boxed_opaque_existential_1(&v30, v11);
    v36 = v11;
    v37 = *(v15 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v17, v11);
    v19 = *(v22 + 24);
    v20 = *(v22 + 32);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v22, v19);
    (*(v20 + 56))(a1, &v34, v19, v20);
    __swift_destroy_boxed_opaque_existential_1Tm(&v34);
    *v25 = v27;
    sub_21B233960(&v30);
    ++v23;
    v21 = (v12 - 1) == a2;
    a2 = (a2 + 1);
    if (v21)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_21B2E9604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B34AAA4();

  return sub_21B2E9660(a1, v6, a2, a3);
}

unint64_t sub_21B2E9660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_21B34AC54();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_21B2E97E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_21B34B004())
  {
    sub_21B34B8A4();
    v13 = sub_21B34B894();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_21B34B004();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_21B34AFF4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_21B34B684();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_21B2E9604(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_21B2E9AD4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_21B2E9AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_21B25F054(MEMORY[0x277D84F90]);
  (*(a8 + 32))(v61, a4, a8);
  v14 = v61[0];
  v15 = v62;
  v51 = v61[2];
  v52 = v61[1];
  v16 = v64;
  v17 = v62;
  v53 = v63;
  if (v64)
  {
    if (v64 == 1 && *(v62 + 16))
    {
      v17 = *(v62 + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v19)
      {
        v17 = 0;
      }

      else
      {
        v17 = v18;
      }
    }
  }

  sub_21B2A6400();
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  v50 = v22;
  if (v17 == v22)
  {
    v49 = 0;
    v23 = v53;
LABEL_13:

    sub_21B23A9F4(v15, v23, v16);
    sub_21B2E9AD4(v49);
    return v13;
  }

  *&v57 = a2;
  *(&v57 + 1) = a3;
  *&v58 = a4;
  *(&v58 + 1) = a6;
  v59 = a7;
  v60 = a8;
  v47 = v15;
  v49 = 0;
  v25 = (a1 + *(type metadata accessor for HashJoin.JoinItem(0, &v57) + 68));
  v23 = v53;
  v45 = v14;
  while (1)
  {
    *&v57 = v14;
    *(&v57 + 1) = v52;
    *&v58 = v51;
    *(&v58 + 1) = v15;
    v59 = v23;
    LOBYTE(v60) = v16;
    v26 = DataFrame.Rows.index(after:)(v17);
    v27 = v25[3];
    v28 = v25[4];
    __swift_project_boxed_opaque_existential_1(v25, v27);
    (*(v28 + 48))(&v57, v17, v27, v28);
    if (!*(&v58 + 1))
    {
      sub_21B261664(&v57, &qword_27CD7E0F8, &unk_21B3557C0);
      v54 = 0u;
      v55 = 0u;
      v56 = 0;
      goto LABEL_16;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      v56 = 0;
      v54 = 0u;
      v55 = 0u;
      goto LABEL_16;
    }

    if (*(&v55 + 1))
    {
      break;
    }

LABEL_16:
    sub_21B261664(&v54, &qword_27CD7E200, &unk_21B352050);
LABEL_17:
    v17 = v26;
    v23 = v53;
    if (v26 == v50)
    {
      goto LABEL_13;
    }
  }

  v29 = v16;
  v57 = v54;
  v58 = v55;
  v59 = v56;
  sub_21B2E9AD4(v49);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v54 = v13;
  v32 = sub_21B24B560(&v57);
  v33 = v13[2];
  v34 = (v31 & 1) == 0;
  v35 = v33 + v34;
  if (!__OFADD__(v33, v34))
  {
    v36 = v31;
    if (v13[3] >= v35)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v13 = v54;
        if ((v31 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_21B252F24();
        v13 = v54;
        if ((v36 & 1) == 0)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      sub_21B24D8F4(v35, isUniquelyReferenced_nonNull_native);
      v37 = sub_21B24B560(&v57);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_38;
      }

      v32 = v37;
      v13 = v54;
      if (v36)
      {
        goto LABEL_30;
      }

LABEL_29:
      sub_21B260E68(&v57, &v54);
      sub_21B24FCF8(v32, &v54, MEMORY[0x277D84F90], v13);
    }

LABEL_30:
    v39 = v13[7];
    v40 = *(v39 + 8 * v32);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    *(v39 + 8 * v32) = v40;
    if ((v41 & 1) == 0)
    {
      v40 = sub_21B22E2C4(0, *(v40 + 2) + 1, 1, v40);
      *(v39 + 8 * v32) = v40;
    }

    v43 = *(v40 + 2);
    v42 = *(v40 + 3);
    if (v43 >= v42 >> 1)
    {
      *(v39 + 8 * v32) = sub_21B22E2C4((v42 > 1), v43 + 1, 1, v40);
    }

    sub_21B260E14(&v57);
    v44 = *(v39 + 8 * v32);
    *(v44 + 16) = v43 + 1;
    *(v44 + 8 * v43 + 32) = v17;
    v49 = sub_21B2E9EE4;
    v16 = v29;
    v14 = v45;
    v15 = v47;
    goto LABEL_17;
  }

  __break(1u);
LABEL_38:
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

uint64_t Column<A>.encoded<A>(using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v94 = a4;
  v92 = a1;
  v76 = a6;
  v74 = sub_21B34B6E4();
  v72 = *(v74 - 8);
  v10 = MEMORY[0x28223BE20](v74);
  v75 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v71 = &v69 - v13;
  MEMORY[0x28223BE20](v12);
  v73 = &v69 - v14;
  v95 = a5;
  v93 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v91 = sub_21B34B474();
  v85 = *(v91 - 8);
  v16 = MEMORY[0x28223BE20](v91);
  v90 = &v69 - v17;
  v86 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v16);
  v89 = &v69 - v18;
  v19 = *(a2 + 16);
  v20 = sub_21B34B474();
  v87 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v78 = &v69 - v22;
  v100 = v19;
  v84 = *(v19 - 8);
  MEMORY[0x28223BE20](v21);
  v96 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24 = sub_21B34B474();
  MEMORY[0x28223BE20](v24 - 8);
  v26 = (&v69 - v25);
  v27 = v6[1];
  v29 = v6[2];
  *&v116 = *v6;
  v28 = v116;
  *(&v116 + 1) = v27;
  *&v117 = v29;
  v30 = Column.count.getter();
  swift_bridgeObjectRetain_n();
  v97 = AssociatedTypeWitness;
  Column.init(name:capacity:)(v28, v27, v30, AssociatedTypeWitness, &v119);
  *&v111 = v28;
  *(&v111 + 1) = v27;
  v112 = v29;
  swift_getWitnessTable();
  sub_21B34B194();
  v114 = v115;
  v70 = v28;
  v107 = v28;
  v108 = v27;
  v79 = v27;
  v109 = v29;
  v31 = TupleTypeMetadata2;
  v32 = v78;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
  v34 = sub_21B2A85CC();
  v35 = a2;
  WitnessTable = swift_getWitnessTable();
  sub_21B34BA54();
  v111 = v105;
  v112 = *&v106[0];
  v113 = *(v106 + 8);
  v107 = v33;
  v108 = v35;
  v103 = v34;
  v104 = v35;
  v109 = v34;
  v110 = WitnessTable;
  v102 = WitnessTable;
  sub_21B34B674();
  sub_21B34B644();
  v101 = v31 - 8;
  v98 = (v84 + 6);
  v99 = (v87 + 4);
  v88 = (v84 + 4);
  v81 = (v86 + 1);
  v82 = v33;
  ++v87;
  v86 += 7;
  ++v84;
  ++v85;
  for (i = v26; ; v26 = i)
  {
    while (1)
    {
      *&v105 = v33;
      *(&v105 + 1) = v104;
      *&v106[0] = v103;
      *(&v106[0] + 1) = v102;
      v44 = sub_21B34B664();
      sub_21B34B654();
      if ((*(*(v31 - 8) + 48))(v26, 1, v31) == 1)
      {

        v105 = v116;
        v106[0] = v117;
        v106[1] = v118[0];
        *(&v106[1] + 9) = *(v118 + 9);
        result = (*(*(v44 - 8) + 8))(&v105, v44);
        v58 = v76;
        *v76 = v119;
        *(v58 + 1) = v120;
        return result;
      }

      v45 = *v26;
      (*v99)(v32, v26 + *(v31 + 48), v20);
      v46 = v100;
      if ((*v98)(v32, 1, v100) != 1)
      {
        break;
      }

      (*v87)(v32, v20);
      v37 = v90;
      v38 = v97;
      (*v86)(v90, 1, 1, v97);
      v41 = type metadata accessor for Column(0, v38, v39, v40);
      Column.append(_:)(v37, v41, v42, v43);
      (*v85)(v37, v91);
    }

    v80 = v45;
    v47 = v31;
    v48 = v20;
    v49 = v96;
    v50 = v32;
    (*v88)(v96, v32, v46);
    v51 = v89;
    v52 = v121;
    sub_21B34A964();
    v121 = v52;
    if (v52)
    {
      break;
    }

    v55 = v97;
    v56 = type metadata accessor for Column(0, v97, v53, v54);
    Column.append(_:)(v51, v56);
    (*v81)(v51, v55);
    (*v84)(v49, v46);
    v20 = v48;
    v32 = v50;
    v31 = v47;
    v33 = v82;
  }

  v59 = v121;
  *&v111 = v121;
  MEMORY[0x21CEEE850](v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4C8, &unk_21B3553F0);
  v60 = v73;
  v61 = v74;
  if (swift_dynamicCast())
  {
    MEMORY[0x21CEEE840](v59);
    v62 = v71;
    v63 = v72;
    v64 = *(v72 + 32);
    v64(v71, v60, v61);
    (*(v63 + 16))(v75, v62, v61);
    v65 = type metadata accessor for ColumnEncodingError(0);
    sub_21B2EA87C();
    swift_allocError();
    v67 = v79;
    v66 = v80;
    *v68 = v70;
    v68[1] = v67;
    v68[2] = v66;
    v64(v68 + *(v65 + 24), v75, v61);
    swift_willThrow();
    (*(v63 + 8))(v62, v61);
  }

  else
  {
  }

  (*v84)(v96, v100);
  v105 = v116;
  v106[0] = v117;
  v106[1] = v118[0];
  *(&v106[1] + 9) = *(v118 + 9);
  (*(*(v44 - 8) + 8))(&v105, v44);

  return MEMORY[0x21CEEE840](v111);
}

uint64_t type metadata accessor for ColumnEncodingError(uint64_t a1)
{
  result = qword_27CD7F130;
  if (!qword_27CD7F130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21B2EA87C()
{
  result = qword_27CD7F120;
  if (!qword_27CD7F120)
  {
    type metadata accessor for ColumnEncodingError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F120);
  }

  return result;
}

uint64_t ColumnEncodingError.init(columnName:rowIndex:encodingError:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for ColumnEncodingError(0) + 24);
  v8 = sub_21B34B6E4();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a4, v8);
}

uint64_t AnyColumn.encoded<A, B>(_:using:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v8 = v6;
  v34 = a6;
  v14 = v6[3];
  v15 = v6[4];
  __swift_project_boxed_opaque_existential_1(v8, v14);
  if ((*(*(v15 + 8) + 80))(v14) == a2)
  {
    sub_21B233A10(v8, &v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    v18 = type metadata accessor for Column(0, a2, v16, v17);
    swift_dynamicCast();
    Column<A>.encoded<A>(using:)(a1, v18, a3, a4, a5, &v32);

    if (!v7)
    {
      v30 = v32;
      v31 = v33;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v23 = type metadata accessor for Column(0, AssociatedTypeWitness, v21, v22);
      Column.eraseToAnyColumn()(v23, v24, v25, v34);
    }
  }

  else
  {
    v30 = 0;
    *&v31 = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001ELL, 0x800000021B34D5E0);
    v26 = v8[3];
    v27 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v26);
    (*(*(v27 + 8) + 80))(v26);
    v28 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v28);

    MEMORY[0x21CEED5E0](0xD00000000000001ALL, 0x800000021B34CD80);
    v29 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v29);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t AnyColumn.encode<A, B>(_:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v15 = v6[3];
  v14 = v6[4];
  __swift_project_boxed_opaque_existential_1(v8, v15);
  if ((*(*(v14 + 8) + 80))(v15) == a3)
  {
    sub_21B233A10(v8, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    v18 = type metadata accessor for Column(0, a3, v16, v17);
    swift_dynamicCast();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v29 = type metadata accessor for Column(0, AssociatedTypeWitness, v20, v21);
    v30 = &off_282CAA128;
    Column<A>.encoded<A>(using:)(a2, v18, a4, a5, a6, &v28);

    if (v7)
    {
      return __swift_deallocate_boxed_opaque_existential_1(&v28);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      return sub_21B234878(&v28, v8);
    }
  }

  else
  {
    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001ELL, 0x800000021B34D5E0);
    v24 = v8[3];
    v23 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v24);
    (*(*(v23 + 8) + 80))(v24);
    v25 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v25);

    MEMORY[0x21CEED5E0](0xD00000000000001ALL, 0x800000021B34CD80);
    v26 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v26);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t DataFrame.encodeColumn<A, B>(_:_:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v16 = *v8;

  v17 = sub_21B23AC94(a1, a2);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_21B23A2F4(v16);
  v16 = result;
  if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v17 < *(v16 + 16))
  {
    result = AnyColumn.encode<A, B>(_:using:)(result, a4, a5, a6, a7, a8);
    *v9 = v16;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t DataFrame.encodeColumn<A, B>(_:using:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = *a1;
  v13 = a1[1];
  v14 = *v6;

  v15 = sub_21B23AC94(v12, v13);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_21B23A2F4(v14);
  v14 = result;
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v15 < *(v14 + 16))
  {
    result = AnyColumn.encode<A, B>(_:using:)(result, a2, a3, a4, a5, a6);
    *v7 = v14;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t ColumnEncodingError.columnName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ColumnEncodingError.columnName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ColumnEncodingError.encodingError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ColumnEncodingError(0) + 24);
  v4 = sub_21B34B6E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ColumnEncodingError.encodingError.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ColumnEncodingError(0) + 24);
  v4 = sub_21B34B6E4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ColumnEncodingError.debugDescription.getter()
{
  v1 = sub_21B34B6D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21B34B6E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ColumnEncodingError(0);
  (*(v6 + 16))(v8, &v0[*(v9 + 24)], v5);
  if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D841A8])
  {
    (*(v6 + 96))(v8, v5);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F128, &qword_21B355CB8);
    (*(v2 + 32))(v4, &v8[*(v10 + 48)], v1);
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_21B34B634();

    v18 = 0x6D756C6F63206E49;
    v19 = 0xEB0000000027206ELL;
    MEMORY[0x21CEED5E0](*v0, *(v0 + 1));
    MEMORY[0x21CEED5E0](0x776F722074612027, 0xE900000000000020);
    v17 = *(v0 + 2);
    v11 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v11);

    MEMORY[0x21CEED5E0](8250, 0xE200000000000000);
    v12 = sub_21B34B694();
    MEMORY[0x21CEED5E0](v12);

    v13 = v18;
    (*(v2 + 8))(v4, v1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0x6D756C6F63206E49, 0xEB0000000027206ELL);
    MEMORY[0x21CEED5E0](*v0, *(v0 + 1));
    MEMORY[0x21CEED5E0](0x776F722074612027, 0xE900000000000020);
    v17 = *(v0 + 2);
    v14 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v14);

    MEMORY[0x21CEED5E0](8250, 0xE200000000000000);
    sub_21B34B7C4();
    v13 = v18;
    (*(v6 + 8))(v8, v5);
  }

  return v13;
}

uint64_t sub_21B2EB698(uint64_t a1)
{
  result = sub_21B34B6E4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_21B2EB760(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
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

uint64_t sub_21B2EB7A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B2EB838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = sub_21B34A834();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v43 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21B22EBA0(a1, a2, *(v5 + 104)))
  {
    (*(v16 + 56))(v12, 1, 1, v15);
    sub_21B2FDE8C(v12);
    return sub_21B27DF7C(v12);
  }

  v35 = a3;
  v36 = v4;
  v19 = sub_21B22EA68(a1, a2);
  if (!v20)
  {
    v21 = *(v5 + 200);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E7F0, &qword_21B355E70);
    v41 = v29;
    v42 = sub_21B27A8D0();
    v39 = a1;
    v40 = a2;
    v30 = __swift_project_boxed_opaque_existential_1(&v39, v29);
    if (*v30)
    {
      v31 = (v30[1] + *v30);
    }

    else
    {
      v31 = 0;
    }

    sub_21B273F78(*v30, v31, &v37);
    v27 = v37;
    v25 = v38;
    __swift_destroy_boxed_opaque_existential_1Tm(&v39);
    v26 = 0;
    v28 = 0;
    goto LABEL_13;
  }

  sub_21B2D12C4(v19, v20, v14);

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_21B27DF7C(v14);
    v21 = *(v5 + 200);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E7F0, &qword_21B355E70);
    v41 = v22;
    v42 = sub_21B27A8D0();
    v39 = a1;
    v40 = a2;
    v23 = __swift_project_boxed_opaque_existential_1(&v39, v22);
    if (*v23)
    {
      v24 = (v23[1] + *v23);
    }

    else
    {
      v24 = 0;
    }

    sub_21B273F78(*v23, v24, &v37);
    v25 = v37;
    v26 = v38;
    __swift_destroy_boxed_opaque_existential_1Tm(&v39);
    v27 = 4;
    v28 = 4;
LABEL_13:
    sub_21B27A934();
    swift_allocError();
    *v32 = v35;
    *(v32 + 8) = v21;
    *(v32 + 16) = v27;
    *(v32 + 24) = v25;
    *(v32 + 32) = v26;
    *(v32 + 40) = v28;
    return swift_willThrow();
  }

  v33 = v43;
  (*(v16 + 32))(v43, v14, v15);
  (*(v16 + 16))(v12, v33, v15);
  (*(v16 + 56))(v12, 0, 1, v15);
  sub_21B2FDE8C(v12);
  sub_21B27DF7C(v12);
  return (*(v16 + 8))(v33, v15);
}