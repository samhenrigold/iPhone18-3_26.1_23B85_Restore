void *sub_1B21EF594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[2] = a7;
  v20[0] = *v7;
  v20[1] = a6;
  v11 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  type metadata accessor for DatabasePool();
  v21 = a3;
  sub_1B21579F4(a3, v16);
  v16[41] = 1;
  sub_1B212392C(v16, v13);
  type metadata accessor for SerializedDatabase();
  swift_allocObject();

  v17 = v20[3];
  sub_1B2123A30();
  if (v17)
  {

    sub_1B2133D70(v21);
    sub_1B2133D70(v16);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7[2] = v18;
    MEMORY[0x1EEE9AC00](v18);
    v20[-2] = a1;
    v20[-1] = a2;

    sub_1B2113C20(sub_1B21EFCCC, &v20[-4]);

    sub_1B2133D70(v21);
    sub_1B2133D70(v16);
  }

  return v7;
}

void sub_1B21EF7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v6 = sub_1B215833C(a1, 0xD000000000000013, 0x80000001B226F510, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC8], v14);
  v8 = v7;
  sub_1B211EA78(v14);

  if (!v3)
  {
    if (!v8)
    {
LABEL_8:
      *&v14[0] = 0;
      *(&v14[0] + 1) = 0xE000000000000000;
      sub_1B2252CD0();

      *&v14[0] = 0xD000000000000023;
      *(&v14[0] + 1) = 0x80000001B226F530;
      MEMORY[0x1B2741EB0](a2, a3);
      v11 = v14[0];
      sub_1B21AC298();
      swift_allocError();
      *v12 = 1;
      *(v12 + 8) = v11;
      *(v12 + 24) = 0u;
      *(v12 + 40) = 0u;
      *(v12 + 56) = 0;
      swift_willThrow();
      return;
    }

    if (v6 == 7102839 && v8 == 0xE300000000000000)
    {
    }

    else
    {
      v10 = sub_1B22531F0();

      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    LOBYTE(v14[0]) = 0;
    Database.beginTransaction(_:)(v14);
    if (!v13)
    {
      sub_1B212DAFC(0xD00000000000002ALL, 0x80000001B226F560);
      v14[0] = 0uLL;
      sub_1B2133AC8(v14);

      sub_1B2133BF0();
    }
  }
}

uint64_t DatabaseSnapshot.deinit()
{

  sub_1B222401C(v1);

  return v0;
}

void sub_1B21EFA30(BOOL *a1@<X8>)
{
  Database.commit()();
  if (v2)
  {
  }

  *a1 = v2 != 0;
}

uint64_t DatabaseSnapshot.__deallocating_deinit()
{
  DatabaseSnapshot.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t DatabaseSnapshot._add<A>(observation:scheduling:onChange:)@<X0>(void *__src@<X0>, void *a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = *v7;
  memcpy(v16, __src, sizeof(v16));
  return sub_1B22216F8(v16, a2, a3, a4, v14, a5, &protocol witness table for DatabaseSnapshot, a6, a7);
}

uint64_t HasManyThroughAssociation._sqlAssociation.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t sub_1B21EFD74(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B21EFDB0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void (*sub_1B21EFDF4(void *a1))(void *a1)
{
  v2 = sub_1B2170FB8(0x28uLL);
  *a1 = v2;
  v2[4] = HasManyThroughAssociation._sqlAssociation.modify();
  return sub_1B2171E40;
}

uint64_t sub_1B21EFE50(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B21EFE8C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B21EFEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21EFF1C(_OWORD *a1)
{
  v1 = a1[6];
  v4[0] = a1[5];
  v4[1] = v1;
  v4[2] = a1[7];
  result = type metadata accessor for ReceiveValuesOnSubscription.State(319, v4);
  if (v3 <= 0x3F)
  {
    *&v4[0] = *(result - 8) + 64;
    *(&v4[0] + 1) = MEMORY[0x1E69E5CE0] + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B21EFFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v32 = a7;
  v33 = a5;
  v30 = a1;
  v31 = a2;
  swift_getAssociatedTypeWitness();
  v12 = sub_1B2252B00();
  sub_1B21115E0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  sub_1B21115E0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1B2111844();
  v23 = v22 - v21;
  sub_1B21115E0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1B2111844();
  v27 = v26 - v25;
  (*(v28 + 16))(v26 - v25, v8, a3);
  (*(v19 + 16))(v23, v30, a4);
  (*(v14 + 16))(v17, v31, v12);
  return sub_1B21F0558(v27, v23, v17, a3, a4, v33, a6, v32);
}

uint64_t sub_1B21F01E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a1;
  v45 = a4;
  sub_1B21115E0();
  v43 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1B2111844();
  v42 = v11 - v10;
  v13 = *(v12 + 40);
  v14 = *(v12 + 24);
  swift_getAssociatedTypeWitness();
  sub_1B2252B00();
  sub_1B21115E0();
  v40 = v16;
  v41 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v38 - v17;
  sub_1B21115E0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1B2111844();
  v23 = v22 - v21;
  v24 = *(a2 + 16);
  sub_1B21115E0();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  sub_1B2111844();
  v30 = v29 - v28;
  v31 = *(a2 + 32);
  v46[0] = v24;
  v46[1] = v14;
  v46[2] = a3;
  v47 = v31;
  WitnessTable = v13;
  v49 = v45;
  v32 = type metadata accessor for ReceiveValuesOnSubscription(0, v46);
  (*(v26 + 16))(v30, v5, v24);
  (*(v19 + 16))(v23, v5 + *(a2 + 52), v14);
  v33 = *(a2 + 56);
  v34 = v39;
  (*(v40 + 16))(v39, v5 + v33, v41);
  v35 = v42;
  (*(v43 + 16))(v42, v44, a3);
  v36 = sub_1B21F04F4(v30, v23, v34, v35);
  v47 = v32;
  WitnessTable = swift_getWitnessTable();
  v46[0] = v36;
  sub_1B2251FD0();
  return sub_1B2113208(v46);
}

uint64_t sub_1B21F0558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a7;
  v15 = type metadata accessor for ReceiveValuesOn(0, v19);
  (*(*(a5 - 8) + 32))(a8 + *(v15 + 52), a2, a5);
  v16 = *(v15 + 56);
  swift_getAssociatedTypeWitness();
  v17 = sub_1B2252B00();
  return (*(*(v17 - 8) + 32))(a8 + v16, a3, v17);
}

uint64_t sub_1B21F0698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v22[0] = a4;
  v22[1] = a5;
  v22[2] = a6;
  v22[3] = a7;
  v22[4] = a8;
  v22[5] = a10;
  v18 = type metadata accessor for ReceiveValuesOnSubscription.Target(0, v22);
  v19 = *(v18 + 68);
  swift_getAssociatedTypeWitness();
  v20 = sub_1B2252B00();
  (*(*(v20 - 8) + 32))(a9 + v19, a2, v20);
  return (*(*(a6 - 8) + 32))(a9 + *(v18 + 72), a3, a6);
}

uint64_t sub_1B21F0800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a3;
  v31 = a1;
  v6 = *v4;
  v7 = *(*v4 + 80);
  v8 = *(*v4 + 88);
  v28 = *(*v4 + 96);
  v27 = v6[13];
  v9 = v6[14];
  v10 = v6[15];
  v32 = v7;
  v33 = v8;
  v25 = v8;
  v26 = v10;
  v34 = v28;
  v35 = v27;
  v36 = v9;
  v37 = v10;
  v11 = v10;
  v12 = type metadata accessor for ReceiveValuesOnSubscription.Target(0, &v32);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  v16 = v6[17];
  *(v4 + v16) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v23 = v11;
  v17 = a4;
  v19 = v27;
  v18 = v28;
  sub_1B21F0698(v29, v30, v17, v7, v8, v28, v27, v9, v15, v23);
  v20 = v4 + *(*v4 + 128);
  v21 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(v7 - 8) + 32))(v20, v31, v7);
  (*(v13 + 32))(v20 + v21, v15, v12);
  v32 = v7;
  v33 = v25;
  v34 = v18;
  v35 = v19;
  v36 = v9;
  v37 = v26;
  type metadata accessor for ReceiveValuesOnSubscription.State(0, &v32);
  swift_storeEnumTagMultiPayload();
  return v4;
}

uint64_t sub_1B21F0AE8(uint64_t *a1, char *a2, uint64_t a3)
{
  v63 = a3;
  v64 = a1;
  v4 = *a2;
  v6 = *(*a2 + 88);
  v7 = *(*a2 + 96);
  v8 = *(*a2 + 104);
  v9 = *(*a2 + 112);
  v10 = *(*a2 + 120);
  *&v67 = *(*a2 + 80);
  v5 = v67;
  *(&v67 + 1) = v6;
  v68 = v7;
  v69 = v8;
  v70 = v9;
  v71 = v10;
  v11 = type metadata accessor for ReceiveValuesOnSubscription.Target(0, &v67);
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v51 - v12;
  v62 = *(v5 - 8);
  v13 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v51 - v16;
  *&v67 = v5;
  *(&v67 + 1) = v6;
  v57 = v8;
  v58 = v7;
  v68 = v7;
  v69 = v8;
  v55 = v10;
  v56 = v9;
  v70 = v9;
  v71 = v10;
  v17 = type metadata accessor for ReceiveValuesOnSubscription.State(0, &v67);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v51 - v25;
  v27 = *(v4 + 128);
  swift_beginAccess();
  v59 = v18;
  (*(v18 + 16))(v26, &a2[v27], v17);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v40 = v66;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v42 = *&v26[*(TupleTypeMetadata2 + 48)];
      v43 = v65;
      v44 = v60;
      (*(v65 + 32))(v60, v26, v40);
      (*(v43 + 16))(v20, v44, v40);
      sub_1B2252030();
      v45 = v63;
      LOBYTE(v40) = sub_1B2252010();
      v46 = sub_1B2252030();
      if (v40)
      {
        goto LABEL_9;
      }

      result = sub_1B2252010();
      if (result)
      {
        goto LABEL_8;
      }

      if ((v42 | v45) < 0)
      {
        goto LABEL_15;
      }

      v46 = v45 + v42;
      if (__OFADD__(v45, v42))
      {
LABEL_8:
        v46 = sub_1B2252030();
LABEL_9:
        (*(v65 + 8))(v60, v66);
LABEL_10:
        *&v20[*(TupleTypeMetadata2 + 48)] = v46;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        (*(v59 + 40))(&a2[v27], v20, v17);
        return swift_endAccess();
      }

      result = (*(v65 + 8))(v60, v66);
      if ((v46 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_15:
      __break(1u);
      return result;
    case 2:
      v47 = v64;
      sub_1B2112F4C(*v64, v64[1]);
      sub_1B2161A20(qword_1EB7A28C8, qword_1B225F080);
      v48 = v66;
      v49 = swift_getTupleTypeMetadata2();
      sub_1B21217FC(&v26[*(v49 + 48)], &v67);
      v50 = swift_allocObject();
      sub_1B21217FC(&v67, v50 + 16);
      *(v50 + 56) = v63;
      *v47 = sub_1B21F57C8;
      v47[1] = v50;
      return (*(v65 + 8))(v26, v48);
    case 3:
      return result;
    default:
      sub_1B2112F4C(*v64, v64[1]);
      v60 = v6;
      v29 = v65;
      v30 = v66;
      v53 = *(swift_getTupleTypeMetadata2() + 48);
      v31 = *(v62 + 32);
      v62 += 32;
      v31(v61, v26, v5);
      v52 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v29 + 32))(v23, &v26[v53], v30);
      *&v23[v52] = v63;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v59 + 40))(&a2[v27], v23, v17);
      swift_endAccess();
      v32 = v54;
      v33 = v62;
      v31(v54, v61, v5);
      v34 = (*(v33 + 48) + 64) & ~*(v33 + 48);
      v35 = swift_allocObject();
      v36 = v60;
      *(v35 + 2) = v5;
      *(v35 + 3) = v36;
      v37 = v57;
      *(v35 + 4) = v58;
      *(v35 + 5) = v37;
      v38 = v55;
      *(v35 + 6) = v56;
      *(v35 + 7) = v38;
      v31(&v35[v34], v32, v5);
      *&v35[(v13 + v34 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;
      v39 = v64;
      *v64 = sub_1B21F5758;
      v39[1] = v35;
  }
}

uint64_t sub_1B21F11BC(uint64_t a1, void *a2)
{
  v2 = *a2;
  v3 = *a2;
  v11 = a2;
  v4 = *(v2 + 96);
  v5 = *(v2 + 120);
  v7 = *(v3 + 80);
  v8 = v4;
  v9 = *(v3 + 104);
  v10 = v5;
  type metadata accessor for ReceiveValuesOnSubscription(0, &v7);
  swift_getWitnessTable();
  return sub_1B22520A0();
}

uint64_t sub_1B21F130C(uint64_t *a1, char *a2)
{
  v26 = a1;
  v3 = *a2;
  v4 = *(*a2 + 80);
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 96);
  v7 = *(*a2 + 104);
  v8 = *(*a2 + 112);
  v9 = *(*a2 + 120);
  *&v31 = v4;
  *(&v31 + 1) = v5;
  v32 = v6;
  v33 = v7;
  v27 = v8;
  v34 = v8;
  v35 = v9;
  v10 = type metadata accessor for ReceiveValuesOnSubscription.State(0, &v31);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v28 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = *(v3 + 128);
  swift_beginAccess();
  v29 = v11;
  (*(v11 + 16))(v15, &a2[v16], v10);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      *&v31 = v4;
      *(&v31 + 1) = v5;
      v32 = v6;
      v33 = v7;
      v34 = v27;
      v35 = v9;
      v4 = type metadata accessor for ReceiveValuesOnSubscription.Target(0, &v31);
      goto LABEL_4;
    case 2:
      sub_1B2112F4C(*v26, v26[1]);
      *&v31 = v4;
      *(&v31 + 1) = v5;
      v32 = v6;
      v33 = v7;
      v34 = v27;
      v35 = v9;
      v21 = type metadata accessor for ReceiveValuesOnSubscription.Target(255, &v31);
      sub_1B2161A20(qword_1EB7A28C8, qword_1B225F080);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1B21217FC(&v15[*(TupleTypeMetadata2 + 48)], &v31);
      v23 = v28;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v29 + 40))(&a2[v16], v23, v10);
      swift_endAccess();
      sub_1B21217FC(&v31, v30);
      v24 = swift_allocObject();
      sub_1B21217FC(v30, v24 + 16);
      v25 = v26;
      *v26 = sub_1B21F5734;
      v25[1] = v24;
      result = (*(*(v21 - 8) + 8))(v15, v21);
      break;
    case 3:
      return result;
    default:
      *&v31 = v4;
      *(&v31 + 1) = v5;
      v32 = v6;
      v33 = v7;
      v34 = v27;
      v35 = v9;
      v18 = type metadata accessor for ReceiveValuesOnSubscription.Target(255, &v31);
      v19 = swift_getTupleTypeMetadata2();
      (*(*(v18 - 8) + 8))(&v15[*(v19 + 48)], v18);
LABEL_4:
      (*(*(v4 - 8) + 8))(v15, v4);
      v20 = v28;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v29 + 40))(&a2[v16], v20, v10);
      result = swift_endAccess();
      break;
  }

  return result;
}

uint64_t sub_1B21F17D0(uint64_t *a1, char *a2, uint64_t a3)
{
  v35 = a3;
  v36 = a1;
  v4 = *a2;
  v5 = *(*a2 + 80);
  v6 = *(*a2 + 88);
  v7 = *(*a2 + 96);
  v8 = *(*a2 + 104);
  v9 = *(*a2 + 112);
  v33 = *(*a2 + 120);
  v34 = v5;
  *&v37 = v5;
  *(&v37 + 1) = v6;
  v38 = v7;
  v39 = v8;
  v40 = v9;
  v41 = v33;
  v10 = type metadata accessor for ReceiveValuesOnSubscription.State(0, &v37);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v17 = *(v4 + 128);
  swift_beginAccess();
  (*(v11 + 16))(v16, &a2[v17], v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B2112F4C(*v36, v36[1]);
      *&v37 = v34;
      *(&v37 + 1) = v6;
      v38 = v7;
      v39 = v8;
      v40 = v9;
      v41 = v33;
      v18 = type metadata accessor for ReceiveValuesOnSubscription.Target(255, &v37);
      v19 = *&v16[*(swift_getTupleTypeMetadata2() + 48)];
      sub_1B2161A20(qword_1EB7A28C8, qword_1B225F080);
      v20 = *(swift_getTupleTypeMetadata2() + 48);
      (*(*(v18 - 8) + 32))(v13, v16, v18);
      v21 = &v13[v20];
      v22 = v35;
      sub_1B211EE68(v35, v21);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v11 + 40))(&a2[v17], v13, v10);
      swift_endAccess();
      sub_1B211EE68(v22, &v37);
      v23 = swift_allocObject();
      result = sub_1B21217FC(&v37, v23 + 16);
      *(v23 + 56) = v19;
      v25 = v36;
      *v36 = sub_1B21F570C;
      v25[1] = v23;
      break;
    case 2u:
      *&v37 = v34;
      *(&v37 + 1) = v6;
      v38 = v7;
      v39 = v8;
      v40 = v9;
      v41 = v33;
      v28 = type metadata accessor for ReceiveValuesOnSubscription.Target(255, &v37);
      sub_1B2161A20(qword_1EB7A28C8, qword_1B225F080);
      v34 = v28;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1B2113208(&v16[*(TupleTypeMetadata2 + 48)]);
      goto LABEL_7;
    case 3u:
      v26 = v36;
      sub_1B2112F4C(*v36, v36[1]);
      sub_1B211EE68(v35, &v37);
      v27 = swift_allocObject();
      result = sub_1B21217FC(&v37, v27 + 16);
      *v26 = sub_1B21F57C0;
      v26[1] = v27;
      break;
    default:
      *&v37 = v34;
      *(&v37 + 1) = v6;
      v38 = v7;
      v39 = v8;
      v40 = v9;
      v41 = v33;
      v30 = type metadata accessor for ReceiveValuesOnSubscription.Target(255, &v37);
      v31 = swift_getTupleTypeMetadata2();
      (*(*(v30 - 8) + 8))(&v16[*(v31 + 48)], v30);
LABEL_7:
      result = (*(*(v34 - 8) + 8))(v16);
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1B21F1D60(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v37 = a3;
  v42 = a1;
  v4 = *a2;
  v5 = *a2;
  v6 = *(*a2 + 104);
  v7 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v34 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v40 = &v31 - v8;
  v9 = v4[14];
  v10 = v4[15];
  v44 = v7;
  v43 = *(v5 + 11);
  v45 = v43;
  v46 = v6;
  v47 = v9;
  v48 = v10;
  v11 = type metadata accessor for ReceiveValuesOnSubscription.Target(0, &v44);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v31 - v14;
  v44 = v7;
  v45 = v43;
  v46 = v6;
  v47 = v9;
  v35 = v10;
  v36 = v9;
  v48 = v10;
  v15 = type metadata accessor for ReceiveValuesOnSubscription.State(0, &v44);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - v17;
  v19 = v4[16];
  swift_beginAccess();
  (*(v16 + 16))(v18, a2 + v19, v15);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      result = (*(v12 + 8))(v18, v11);
      break;
    case 2:
      sub_1B2112F4C(*v42, v42[1]);
      sub_1B2161A20(qword_1EB7A28C8, qword_1B225F080);
      v22 = *(swift_getTupleTypeMetadata2() + 48);
      v32 = *(v12 + 32);
      v33 = v22;
      v32(v39, v18, v11);
      v23 = v38;
      (*(v38 + 16))(v40, v37, AssociatedTypeWitness);
      v24 = (*(v12 + 80) + 64) & ~*(v12 + 80);
      v37 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v25 = (*(v23 + 80) + v37 + 8) & ~*(v23 + 80);
      v26 = swift_allocObject();
      *&v27 = vdupq_laneq_s64(v43, 1).u64[0];
      *(&v27 + 1) = v6;
      v28.i64[0] = v7;
      *(v26 + 16) = vzip1q_s64(v28, v43);
      *(v26 + 32) = v27;
      v29 = v35;
      *(v26 + 48) = v36;
      *(v26 + 56) = v29;
      v32((v26 + v24), v39, v11);
      *(v26 + v37) = a2;
      (*(v23 + 32))(v26 + v25, v40, AssociatedTypeWitness);
      v30 = v42;
      *v42 = sub_1B21F5580;
      v30[1] = v26;

      result = sub_1B2113208(&v18[v33]);
      break;
    case 3:
      return result;
    default:
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(v12 + 8))(&v18[*(TupleTypeMetadata2 + 48)], v11);
      result = (*(*(v7 - 8) + 8))(v18, v7);
      break;
  }

  return result;
}

uint64_t sub_1B21F222C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v17 = a3;
  v18 = a1;
  v19.i64[0] = *a2;
  v4 = *(v19.i64[0] + 80);
  v16[0] = *(v19.i64[0] + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v16 - v8;
  v11 = *(v19.i64[0] + 120);
  v7.i64[0] = v4;
  v21 = *(v19.i64[0] + 112);
  v10 = v21;
  v22 = v11;
  v19 = *(v19.i64[0] + 88);
  *&v12 = vdupq_laneq_s64(v19, 1).u64[0];
  *(&v12 + 1) = v16[0];
  v20[0] = vzip1q_s64(v7, v19);
  v20[1] = v12;
  v16[1] = *(type metadata accessor for ReceiveValuesOnSubscription.Target(0, v20) + 68);
  (*(v6 + 16))(v9, v17, AssociatedTypeWitness);
  v13 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v19;
  *(v14 + 40) = v16[0];
  *(v14 + 48) = v10;
  *(v14 + 56) = v11;
  *(v14 + 64) = a2;
  (*(v6 + 32))(v14 + v13, v9, AssociatedTypeWitness);

  sub_1B22520C0();
}

uint64_t sub_1B21F24C4(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v38 = a3;
  v42 = a1;
  v4 = *a2;
  v5 = *a2;
  v6 = *(*a2 + 104);
  v7 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v41 = sub_1B2252000();
  v37 = *(v41 - 8);
  v34 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v31 - v8;
  v9 = v4[14];
  v10 = v4[15];
  v44 = v7;
  v43 = *(v5 + 11);
  v45 = v43;
  v46 = v6;
  v47 = v9;
  v48 = v10;
  v11 = type metadata accessor for ReceiveValuesOnSubscription.Target(0, &v44);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v31 - v14;
  v44 = v7;
  v45 = v43;
  v46 = v6;
  v47 = v9;
  v35 = v10;
  v36 = v9;
  v48 = v10;
  v15 = type metadata accessor for ReceiveValuesOnSubscription.State(0, &v44);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - v17;
  v19 = v4[16];
  swift_beginAccess();
  (*(v16 + 16))(v18, a2 + v19, v15);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      result = (*(v12 + 8))(v18, v11);
      break;
    case 2:
      sub_1B2112F4C(*v42, v42[1]);
      sub_1B2161A20(qword_1EB7A28C8, qword_1B225F080);
      v22 = *(swift_getTupleTypeMetadata2() + 48);
      v32 = *(v12 + 32);
      v33 = v22;
      v32(v39, v18, v11);
      v23 = v37;
      (*(v37 + 16))(v40, v38, v41);
      v24 = (*(v12 + 80) + 64) & ~*(v12 + 80);
      v38 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v25 = (*(v23 + 80) + v38 + 8) & ~*(v23 + 80);
      v26 = swift_allocObject();
      *&v27 = vdupq_laneq_s64(v43, 1).u64[0];
      *(&v27 + 1) = v6;
      v28.i64[0] = v7;
      *(v26 + 16) = vzip1q_s64(v28, v43);
      *(v26 + 32) = v27;
      v29 = v35;
      *(v26 + 48) = v36;
      *(v26 + 56) = v29;
      v32((v26 + v24), v39, v11);
      *(v26 + v38) = a2;
      (*(v23 + 32))(v26 + v25, v40, v41);
      v30 = v42;
      *v42 = sub_1B21F53A0;
      v30[1] = v26;

      result = sub_1B2113208(&v18[v33]);
      break;
    case 3:
      return result;
    default:
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(v12 + 8))(&v18[*(TupleTypeMetadata2 + 48)], v11);
      result = (*(*(v7 - 8) + 8))(v18, v7);
      break;
  }

  return result;
}

uint64_t sub_1B21F29C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v20 = a3;
  v21 = a1;
  v4 = *a2;
  v5 = *a2;
  v6 = *(*a2 + 104);
  v7 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = sub_1B2252000();
  v19[0] = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - v11;
  v13 = *(v4 + 112);
  v14 = *(v4 + 120);
  v10.i64[0] = v7;
  v24 = v13;
  v25 = v14;
  v22 = *(v5 + 88);
  *&v15 = vdupq_laneq_s64(v22, 1).u64[0];
  *(&v15 + 1) = v6;
  v23[0] = vzip1q_s64(v10, v22);
  v23[1] = v15;
  v19[1] = *(type metadata accessor for ReceiveValuesOnSubscription.Target(0, v23) + 68);
  (*(v9 + 16))(v12, v20, v8);
  v16 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v7;
  *(v17 + 24) = v22;
  *(v17 + 40) = v6;
  *(v17 + 48) = v13;
  *(v17 + 56) = v14;
  *(v17 + 64) = a2;
  (*(v9 + 32))(v17 + v16, v12, v19[0]);

  sub_1B22520C0();
}

uint64_t sub_1B21F2C8C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v39 = a1;
  v4 = *a2;
  v5 = *a2;
  v6 = *(*a2 + 104);
  v7 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v34 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v41 = &v31 - v8;
  v9 = v4[14];
  v10 = v4[15];
  v44 = v7;
  v43 = *(v5 + 11);
  v45 = v43;
  v46 = v6;
  v47 = v9;
  v48 = v10;
  v11 = type metadata accessor for ReceiveValuesOnSubscription.Target(0, &v44);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v31 - v14;
  v44 = v7;
  v45 = v43;
  v46 = v6;
  v47 = v9;
  v35 = v10;
  v36 = v9;
  v48 = v10;
  v15 = type metadata accessor for ReceiveValuesOnSubscription.State(0, &v44);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - v17;
  v19 = v4[16];
  swift_beginAccess();
  (*(v16 + 16))(v18, a2 + v19, v15);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      result = (*(v12 + 8))(v18, v11);
      break;
    case 2:
      v22 = v39;
      sub_1B2112F4C(*v39, v39[1]);
      sub_1B2161A20(qword_1EB7A28C8, qword_1B225F080);
      v23 = *(swift_getTupleTypeMetadata2() + 48);
      v32 = *(v12 + 32);
      v33 = v23;
      v32(v40, v18, v11);
      v24 = v38;
      (*(v38 + 16))(v41, v37, AssociatedTypeWitness);
      v25 = (*(v12 + 80) + 64) & ~*(v12 + 80);
      v26 = (v13 + v25 + *(v24 + 80)) & ~*(v24 + 80);
      v27 = swift_allocObject();
      *&v28 = vdupq_laneq_s64(v43, 1).u64[0];
      *(&v28 + 1) = v6;
      v29.i64[0] = v7;
      *(v27 + 16) = vzip1q_s64(v29, v43);
      *(v27 + 32) = v28;
      v30 = v35;
      *(v27 + 48) = v36;
      *(v27 + 56) = v30;
      v32((v27 + v25), v40, v11);
      (*(v24 + 32))(v27 + v26, v41, AssociatedTypeWitness);
      *v22 = sub_1B21F5278;
      v22[1] = v27;
      result = sub_1B2113208(&v18[v33]);
      break;
    case 3:
      return result;
    default:
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(v12 + 8))(&v18[*(TupleTypeMetadata2 + 48)], v11);
      result = (*(*(v7 - 8) + 8))(v18, v7);
      break;
  }

  return result;
}

uint64_t sub_1B21F3134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  v9[4] = a7;
  v9[5] = a8;
  type metadata accessor for ReceiveValuesOnSubscription.Target(0, v9);
  return sub_1B2251FE0();
}

uint64_t sub_1B21F323C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v55 = a1;
  v4 = *a2;
  v5 = *a2;
  v6 = *(*a2 + 104);
  v7 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v53 = sub_1B2252000();
  v51 = *(v53 - 8);
  v47 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v42 - v8;
  v9 = v4[14];
  v10 = v4[15];
  v58 = v7;
  v56 = *(v5 + 11);
  v59 = v56;
  v60 = v6;
  v61 = v9;
  v62 = v10;
  v57 = type metadata accessor for ReceiveValuesOnSubscription.Target(0, &v58);
  v11 = *(v57 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v46 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v42 - v14;
  v58 = v7;
  v59 = v56;
  v60 = v6;
  v61 = v9;
  v48 = v10;
  v49 = v9;
  v62 = v10;
  v15 = type metadata accessor for ReceiveValuesOnSubscription.State(0, &v58);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v22 = v4[16];
  swift_beginAccess();
  (*(v16 + 16))(v21, a2 + v22, v15);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      result = (*(v11 + 8))(v21, v57);
      break;
    case 2:
      sub_1B2112F4C(*v55, v55[1]);
      sub_1B2161A20(qword_1EB7A28C8, qword_1B225F080);
      v45 = v11;
      v26 = v57;
      v44 = *(swift_getTupleTypeMetadata2() + 48);
      v43 = v6;
      v27 = *(v45 + 32);
      v45 += 32;
      v28 = v26;
      v29 = v27;
      v42 = v27;
      v27(v54, v21, v28);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v16 + 40))(a2 + v22, v18, v15);
      swift_endAccess();
      v30 = v46;
      v31 = v45;
      v29(v46, v54, v57);
      v33 = v50;
      v32 = v51;
      v34 = v53;
      (*(v51 + 16))(v50, v52, v53);
      v35 = (*(v31 + 48) + 64) & ~*(v31 + 48);
      v36 = (v12 + v35 + *(v32 + 80)) & ~*(v32 + 80);
      v37 = swift_allocObject();
      *&v38 = vdupq_laneq_s64(v56, 1).u64[0];
      *(&v38 + 1) = v43;
      v39.i64[0] = v7;
      *(v37 + 16) = vzip1q_s64(v39, v56);
      *(v37 + 32) = v38;
      v40 = v48;
      *(v37 + 48) = v49;
      *(v37 + 56) = v40;
      v42(v37 + v35, v30, v57);
      (*(v32 + 32))(v37 + v36, v33, v34);
      v41 = v55;
      *v55 = sub_1B21F511C;
      v41[1] = v37;
      result = sub_1B2113208(&v21[v44]);
      break;
    case 3:
      return result;
    default:
      v24 = v57;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(v11 + 8))(&v21[*(TupleTypeMetadata2 + 48)], v24);
      result = (*(*(v7 - 8) + 8))(v21, v7);
      break;
  }

  return result;
}

uint64_t sub_1B21F383C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  v9[4] = a7;
  v9[5] = a8;
  type metadata accessor for ReceiveValuesOnSubscription.Target(0, v9);
  return sub_1B2251FC0();
}

uint64_t *sub_1B21F38A8()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 96);
  v6[0] = *(*v0 + 80);
  v6[1] = v3;
  v6[2] = *(v1 + 112);
  v4 = type metadata accessor for ReceiveValuesOnSubscription.State(0, v6);
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return v0;
}

uint64_t sub_1B21F3978()
{
  v0 = sub_1B21F38A8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B21F3A04(_OWORD *a1)
{
  v1 = a1[2];
  v7[0] = a1[1];
  v2 = a1[3];
  v7[1] = v1;
  v7[2] = v2;
  type metadata accessor for ReceiveValuesOnSubscription.Target(255, v7);
  result = swift_getTupleTypeMetadata2();
  if (v4 <= 0x3F)
  {
    v8 = result;
    result = swift_getTupleTypeMetadata2();
    if (v5 <= 0x3F)
    {
      v9 = result;
      sub_1B2161A20(qword_1EB7A28C8, qword_1B225F080);
      result = swift_getTupleTypeMetadata2();
      if (v6 <= 0x3F)
      {
        v10 = result;
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B21F3AF8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = *(*(a3[2] - 8) + 64);
  v7 = *(a3[3] - 8);
  v8 = *(v7 + 80);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 80);
  v11 = *(a3[4] - 8);
  v12 = *(v11 + 80);
  v13 = *(v9 + 64) + v12 + ((*(v7 + 64) + v10) & ~v10);
  if (!*(v9 + 84))
  {
    ++v13;
  }

  v14 = (v13 & ~v12) + *(v11 + 64);
  v15 = v14 + ((v6 + (v10 | v8 | v12)) & ~(v10 | v8 | v12));
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v16 + 8 > v15)
  {
    v15 = v16 + 8;
  }

  v17 = v16 + 40;
  if (v17 > v15)
  {
    v15 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_26;
  }

  v18 = v15 + 1;
  v19 = 8 * (v15 + 1);
  if ((v15 + 1) <= 3)
  {
    v22 = ((a2 + ~(-1 << v19) - 252) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v22 < 2)
    {
LABEL_26:
      v24 = *(a1 + v15);
      if (v24 >= 4)
      {
        return (v24 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_26;
  }

LABEL_18:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 > 3)
    {
      LODWORD(v18) = 4;
    }

    switch(v18)
    {
      case 2:
        LODWORD(v18) = *a1;
        break;
      case 3:
        LODWORD(v18) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v18) = *a1;
        break;
      default:
        LODWORD(v18) = *a1;
        break;
    }
  }

  return (v18 | v23) + 253;
}

void sub_1B21F3D98(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v8 = *(*(a4[2] - 8) + 64);
  v9 = *(a4[3] - 8);
  v10 = *(v9 + 80);
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 80);
  v13 = *(a4[4] - 8);
  v14 = *(v13 + 80);
  v15 = *(v11 + 64) + v14 + ((*(v9 + 64) + v12) & ~v12);
  if (!*(v11 + 84))
  {
    ++v15;
  }

  v16 = (v15 & ~v14) + *(v13 + 64);
  v17 = v16 + ((v8 + (v12 | v10 | v14)) & ~(v12 | v10 | v14));
  v18 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v18 + 8 > v17)
  {
    v17 = v18 + 8;
  }

  v19 = v18 + 40;
  if (v19 <= v17)
  {
    v19 = v17;
  }

  v20 = v19 + 1;
  v21 = 8 * (v19 + 1);
  if (a3 < 0xFD)
  {
    v22 = 0;
  }

  else if (v20 <= 3)
  {
    v25 = ((a3 + ~(-1 << v21) - 252) >> v21) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (a2 > 0xFC)
  {
    v23 = a2 - 253;
    if (v20 < 4)
    {
      v24 = (v23 >> v21) + 1;
      if (v19 != -1)
      {
        v27 = v23 & ~(-1 << v21);
        bzero(a1, v20);
        if (v20 == 3)
        {
          *a1 = v27;
          a1[2] = BYTE2(v27);
        }

        else if (v20 == 2)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v23;
        }
      }
    }

    else
    {
      bzero(a1, v19 + 1);
      *a1 = v23;
      v24 = 1;
    }

    switch(v22)
    {
      case 1:
        a1[v20] = v24;
        break;
      case 2:
        *&a1[v20] = v24;
        break;
      case 3:
LABEL_41:
        __break(1u);
        break;
      case 4:
        *&a1[v20] = v24;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v22)
    {
      case 1:
        a1[v20] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      case 2:
        *&a1[v20] = 0;
        goto LABEL_29;
      case 3:
        goto LABEL_41;
      case 4:
        *&a1[v20] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          a1[v19] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1B21F40D0(void *a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v1 = sub_1B2252B00();
    if (v3 <= 0x3F)
    {
      v1 = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_1B21F41A4(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[3];
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = a3[4];
  v14 = *(v13 - 8);
  if (v12 <= v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = v12;
  }

  v16 = *(v14 + 84);
  if (v16 > v15)
  {
    v15 = *(v14 + 84);
  }

  v17 = *(v10 + 80);
  if (v11)
  {
    v18 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v18 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  v19 = *(v14 + 80);
  v20 = *(v14 + 64);
  if (!a2)
  {
    return 0;
  }

  v21 = *(v7 + 64) + v17;
  if (a2 > v15)
  {
    v22 = ((v18 + v19 + (v21 & ~v17)) & ~v19) + v20;
    v23 = 8 * v22;
    if (v22 <= 3)
    {
      v25 = ((a2 - v15 + ~(-1 << v23)) >> v23) + 1;
      if (HIWORD(v25))
      {
        v24 = *(a1 + v22);
        if (!v24)
        {
          goto LABEL_32;
        }

        goto LABEL_22;
      }

      if (v25 > 0xFF)
      {
        v24 = *(a1 + v22);
        if (!*(a1 + v22))
        {
          goto LABEL_32;
        }

        goto LABEL_22;
      }

      if (v25 < 2)
      {
LABEL_32:
        if (v15)
        {
          goto LABEL_33;
        }

        return 0;
      }
    }

    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_32;
    }

LABEL_22:
    v26 = (v24 - 1) << v23;
    if (v22 > 3)
    {
      v26 = 0;
    }

    if (v22)
    {
      if (v22 <= 3)
      {
        v27 = v22;
      }

      else
      {
        v27 = 4;
      }

      switch(v27)
      {
        case 2:
          v28 = *a1;
          break;
        case 3:
          v28 = *a1 | (*(a1 + 2) << 16);
          break;
        case 4:
          v28 = *a1;
          break;
        default:
          v28 = *a1;
          break;
      }
    }

    else
    {
      v28 = 0;
    }

    return v15 + (v28 | v26) + 1;
  }

LABEL_33:
  if (v8 == v15)
  {
    v29 = a1;
    v30 = v8;
    v13 = v6;
  }

  else
  {
    v32 = (a1 + v21) & ~v17;
    if (v12 == v15)
    {
      v33 = sub_1B2122A98(v32, v11, AssociatedTypeWitness);
      if (v33 >= 2)
      {
        return v33 - 1;
      }

      else
      {
        return 0;
      }
    }

    v29 = ((v32 + v18 + v19) & ~v19);
    v30 = v16;
  }

  return sub_1B2122A98(v29, v30, v13);
}

void sub_1B21F4494(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[3];
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = 0;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = a4[4];
  v18 = *(v17 - 8);
  v19 = *(v18 + 84);
  if (v19 > v16)
  {
    v16 = *(v18 + 84);
  }

  v20 = *(v13 + 80);
  v21 = *(v9 + 64) + v20;
  if (v14)
  {
    v22 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v22 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  v23 = *(v18 + 80);
  v24 = ((v22 + v23 + (v21 & ~v20)) & ~v23) + *(v18 + 64);
  v25 = 8 * v24;
  if (a3 > v16)
  {
    if (v24 <= 3)
    {
      v26 = ((a3 - v16 + ~(-1 << v25)) >> v25) + 1;
      if (HIWORD(v26))
      {
        v12 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v12 = v27;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  if (v16 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v24] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v24] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_52:
        __break(1u);
        break;
      case 4:
        *&a1[v24] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          if (v10 == v16)
          {
            v31 = a1;
            v32 = a2;
            v14 = v10;
            v17 = v8;
          }

          else
          {
            v31 = (&a1[v21] & ~v20);
            if (v15 == v16)
            {
              v32 = (a2 + 1);
              v17 = AssociatedTypeWitness;
            }

            else
            {
              v31 = (&v31[v22 + v23] & ~v23);
              v32 = a2;
              v14 = v19;
            }
          }

          sub_1B21117B4(v31, v32, v14, v17);
        }

        break;
    }
  }

  else
  {
    v28 = ~v16 + a2;
    if (v24 < 4)
    {
      v29 = (v28 >> v25) + 1;
      if (v24)
      {
        v30 = v28 & ~(-1 << v25);
        bzero(a1, v24);
        if (v24 == 3)
        {
          *a1 = v30;
          a1[2] = BYTE2(v30);
        }

        else if (v24 == 2)
        {
          *a1 = v30;
        }

        else
        {
          *a1 = v28;
        }
      }
    }

    else
    {
      bzero(a1, v24);
      *a1 = v28;
      v29 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v24] = v29;
        break;
      case 2:
        *&a1[v24] = v29;
        break;
      case 3:
        goto LABEL_52;
      case 4:
        *&a1[v24] = v29;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1B21F4804(void *a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v1 = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      v1 = sub_1B2252B00();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_1B21F48D8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = a3[3];
  v32 = a3[2];
  v5 = *(v32 - 8);
  v6 = *(v5 + 84);
  v7 = *(v4 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v13 = v9;
  }

  v14 = *(v7 + 80);
  v15 = *(v7 + 64);
  v16 = *(v11 + 80);
  if (v12)
  {
    v17 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v17 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = AssociatedTypeWitness;
  v19 = *(v5 + 64) + v14;
  v20 = a1;
  if (a2 > v13)
  {
    v21 = v17 + ((v15 + v16 + (v19 & ~v14)) & ~v16);
    v22 = 8 * v21;
    if (v21 <= 3)
    {
      v24 = ((a2 - v13 + ~(-1 << v22)) >> v22) + 1;
      if (HIWORD(v24))
      {
        v23 = *(a1 + v21);
        if (!v23)
        {
          goto LABEL_31;
        }

        goto LABEL_21;
      }

      if (v24 > 0xFF)
      {
        v23 = *(a1 + v21);
        if (!*(a1 + v21))
        {
          goto LABEL_31;
        }

        goto LABEL_21;
      }

      if (v24 < 2)
      {
LABEL_31:
        if (v13)
        {
          goto LABEL_32;
        }

        return 0;
      }
    }

    v23 = *(a1 + v21);
    if (!*(a1 + v21))
    {
      goto LABEL_31;
    }

LABEL_21:
    v25 = (v23 - 1) << v22;
    if (v21 > 3)
    {
      v25 = 0;
    }

    if (v21)
    {
      if (v21 <= 3)
      {
        v26 = v21;
      }

      else
      {
        v26 = 4;
      }

      switch(v26)
      {
        case 2:
          v27 = *a1;
          break;
        case 3:
          v27 = *a1 | (*(a1 + 2) << 16);
          break;
        case 4:
          v27 = *a1;
          break;
        default:
          v27 = *a1;
          break;
      }
    }

    else
    {
      v27 = 0;
    }

    return v13 + (v27 | v25) + 1;
  }

LABEL_32:
  if (v6 == v13)
  {
    v28 = v6;
    v29 = v32;
  }

  else
  {
    v20 = ((a1 + v19) & ~v14);
    if (v8 != v13)
    {
      v31 = sub_1B2122A98((v20 + v15 + v16) & ~v16, v12, v18);
      if (v31 >= 2)
      {
        return v31 - 1;
      }

      else
      {
        return 0;
      }
    }

    v28 = v8;
    v29 = v4;
  }

  return sub_1B2122A98(v20, v28, v29);
}

void sub_1B21F4BD4(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = a4[3];
  v40 = a4[2];
  v6 = *(v40 - 8);
  v7 = *(v6 + 84);
  v8 = *(v5 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = 0;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v8 + 80);
  v18 = *(v6 + 64) + v17;
  v19 = *(v8 + 64);
  v20 = *(v13 + 80);
  v21 = (v19 + v20 + (v18 & ~v17)) & ~v20;
  if (v14)
  {
    v22 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v22 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  v23 = v21 + v22;
  v24 = 8 * (v21 + v22);
  if (a3 > v16)
  {
    if (v23 <= 3)
    {
      v25 = ((a3 - v16 + ~(-1 << v24)) >> v24) + 1;
      if (HIWORD(v25))
      {
        v12 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v12 = v26;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  if (v16 < a2)
  {
    v27 = ~v16 + a2;
    if (v23 < 4)
    {
      v29 = (v27 >> v24) + 1;
      if (v23)
      {
        v33 = v12;
        v34 = v27 & ~(-1 << v24);
        bzero(a1, v23);
        if (v23 == 3)
        {
          *a1 = v34;
          a1[2] = BYTE2(v34);
          v12 = v33;
        }

        else
        {
          v12 = v33;
          if (v23 == 2)
          {
            *a1 = v34;
          }

          else
          {
            *a1 = v27;
          }
        }
      }
    }

    else
    {
      v28 = v12;
      bzero(a1, v23);
      v12 = v28;
      *a1 = v27;
      v29 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v23] = v29;
        break;
      case 2:
        *&a1[v23] = v29;
        break;
      case 3:
        goto LABEL_65;
      case 4:
        *&a1[v23] = v29;
        break;
      default:
        return;
    }

    return;
  }

  v30 = ~v17;
  v31 = ~v20;
  v32 = a1;
  switch(v12)
  {
    case 1:
      a1[v23] = 0;
      if (a2)
      {
        goto LABEL_35;
      }

      return;
    case 2:
      *&a1[v23] = 0;
      if (a2)
      {
        goto LABEL_35;
      }

      return;
    case 3:
LABEL_65:
      __break(1u);
      return;
    case 4:
      *&a1[v23] = 0;
      goto LABEL_34;
    default:
LABEL_34:
      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v7 == v16)
      {
        v35 = a2;
        v14 = v7;
        AssociatedTypeWitness = v40;
LABEL_59:

        sub_1B21117B4(v32, v35, v14, AssociatedTypeWitness);
        return;
      }

      v32 = (&a1[v18] & v30);
      if (v9 == v16)
      {
        v35 = a2;
        v14 = v9;
        AssociatedTypeWitness = v5;
        goto LABEL_59;
      }

      v36 = (&v32[v19 + v20] & v31);
      if (v15 >= a2)
      {
        v35 = a2 + 1;
        v32 = (&v32[v19 + v20] & v31);
        goto LABEL_59;
      }

      if (v22 <= 3)
      {
        v37 = ~(-1 << (8 * v22));
      }

      else
      {
        v37 = -1;
      }

      if (v22)
      {
        v38 = v37 & (~v15 + a2);
        if (v22 <= 3)
        {
          v39 = v22;
        }

        else
        {
          v39 = 4;
        }

        bzero(v36, v22);
        switch(v39)
        {
          case 2:
            *v36 = v38;
            break;
          case 3:
            *v36 = v38;
            v36[2] = BYTE2(v38);
            break;
          case 4:
            *v36 = v38;
            break;
          default:
            *v36 = v38;
            break;
        }
      }

      return;
  }
}

uint64_t sub_1B21F511C()
{
  v16 = v0[3];
  v17[0] = v0[2];
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v17[1] = v16;
  v17[2] = v1;
  v17[3] = v2;
  v17[4] = v3;
  v17[5] = v4;
  v5 = type metadata accessor for ReceiveValuesOnSubscription.Target(0, v17);
  sub_1B211208C(v5);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1B2114880();
  v6 = sub_1B2252000();
  sub_1B2111894(v6);
  sub_1B2117D80();

  return sub_1B21F383C(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1B21F5278()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v17[0] = v0[2];
  v17[1] = v1;
  v17[2] = v2;
  v17[3] = v3;
  v17[4] = v4;
  v17[5] = v5;
  v6 = type metadata accessor for ReceiveValuesOnSubscription.Target(0, v17);
  sub_1B211208C(v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2111894(AssociatedTypeWitness);
  sub_1B2117D80();

  return sub_1B21F3134(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1B21F53A0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  v13 = *(v0 + 16);
  v14 = v1;
  v15 = *(v0 + 40);
  v16 = v2;
  v3 = type metadata accessor for ReceiveValuesOnSubscription.Target(0, &v13);
  sub_1B211208C(v3);
  v6 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B212DF3C();
  sub_1B212CEAC();
  sub_1B2114880();
  v8 = sub_1B2252000();
  sub_1B2111894(v8);
  v10 = *(v0 + v7);
  v11 = v0 + ((v7 + *(v9 + 80) + 8) & ~*(v9 + 80));

  return sub_1B21F29C4(v0 + v6, v10, v11);
}

id sub_1B21F54E8()
{
  sub_1B212DF3C();
  sub_1B212CEAC();
  sub_1B2114880();
  v0 = sub_1B2252000();
  sub_1B2111894(v0);
  v2 = sub_1B2122280(*(v1 + 80));
  return sub_1B21F31A0(v2);
}

uint64_t sub_1B21F5580()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  v22 = *(v0 + 16);
  v21 = v22;
  v23 = v1;
  v24 = *(v0 + 40);
  v20 = v24;
  v25 = v2;
  v3 = type metadata accessor for ReceiveValuesOnSubscription.Target(0, &v22);
  v4 = sub_1B211208C(v3);
  v7 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B2114454(v4, v9, v21, v10, v11, v12, v13, v14, v20);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2111894(AssociatedTypeWitness);
  v17 = *(v0 + v8);
  v18 = v0 + ((v8 + *(v16 + 80) + 8) & ~*(v16 + 80));

  return sub_1B21F222C(v0 + v7, v17, v18);
}

id sub_1B21F569C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2111894(AssociatedTypeWitness);
  v2 = sub_1B2122280(*(v1 + 80));
  return sub_1B21F2C40(v2);
}

void CommonTableExpression<A>.init<A>(recursive:named:columns:request:)()
{
  sub_1B2111F14();
  v2 = v1;
  v4 = v3;
  sub_1B21158C8();
  v6 = v5;
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v8 + 16))(v12, v13, v14, v10);
  type metadata accessor for Row();
  v15 = sub_1B2116700();
  sub_1B21F5A70(v15, v16, v17, v18, v12, v4, v19, v2);
  (*(v8 + 8))(v0, v4);
  memcpy(v6, v21, 0xBBuLL);
  sub_1B2111588();
}

void *CommonTableExpression.contains(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v12[0] = v5;
  v12[1] = v6;
  sub_1B2181890(v12);
  memcpy(__dst, v12, sizeof(__dst));
  v7 = a1[3];
  v8 = a1[4];
  sub_1B21139A0(a1, v7);
  v9 = *(v8 + 8);

  v9(__src, v7, v8);
  v10 = swift_allocObject();
  memcpy(v10 + 16, __src, 0xA3uLL);
  memcpy(v10 + 184, __dst, 0xA2uLL);
  v10[346] = 0;
  v15[0] = v10;
  sub_1B214C468(v15);
  return memcpy(a2, v15, 0xA3uLL);
}

uint64_t CommonTableExpression.tableName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CommonTableExpression.tableName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *sub_1B21F5A70@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  *a7 = a2;
  *(a7 + 8) = a3;
  (*(a8 + 16))(__src, a6, a8);
  (*(*(a6 - 8) + 8))(a5, a6);
  *(a7 + 16) = a4;
  result = memcpy((a7 + 24), __src, 0xA2uLL);
  *(a7 + 186) = a1;
  return result;
}

void CommonTableExpression.init<A>(recursive:named:columns:request:)()
{
  sub_1B2111F14();
  v2 = v1;
  v4 = v3;
  sub_1B21158C8();
  v19 = v5;
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v7 + 16))(v11, v12, v13, v9);
  v14 = sub_1B2116700();
  sub_1B21F5A70(v14, v15, v16, v17, v11, v4, v18, v2);
  (*(v7 + 8))(v0, v4);
  memcpy(v19, v20, 0xBBuLL);
  sub_1B2111588();
}

void CommonTableExpression.init(recursive:named:columns:sql:arguments:)()
{
  sub_1B2111F14();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1B2111FC0();
  v10 = v9;
  v12 = v11;
  memset(v20, 0, 40);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B22546B0;
  *__src = v8;
  *&__src[8] = v6;
  *&__src[16] = *v4;
  sub_1B2114CC4(__src);
  memcpy((v13 + 32), __src, 0xB8uLL);
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v17 = v13;
  sub_1B2142B5C(v20, v15);
  v18 = 2;
  v14 = sub_1B21619D8(&qword_1EB7A1C18, &qword_1B2259C90);
  sub_1B21F5A70(v10, v2, v1, v0, v15, v14, v20, &protocol witness table for SQLRequest<A>);
  memcpy(v12, v20, 0xBBuLL);
  sub_1B2111588();
}

void *CommonTableExpression.init(recursive:named:columns:literal:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v11 = *a5;
  memset(__src, 0, 40);
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v16 = v11;
  sub_1B2142B5C(__src, v14);
  v17 = 2;
  v12 = sub_1B21619D8(&qword_1EB7A1C18, &qword_1B2259C90);
  sub_1B21F5A70(a1, a2, a3, a4, v14, v12, __src, &protocol witness table for SQLRequest<A>);
  return memcpy(a6, __src, 0xBBuLL);
}

void CommonTableExpression<A>.init(recursive:named:columns:sql:arguments:)()
{
  sub_1B2111F14();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1B2111FC0();
  v10 = v9;
  v12 = v11;
  memset(v18, 0, 40);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B22546B0;
  *__src = v8;
  *&__src[8] = v6;
  *&__src[16] = *v4;
  sub_1B2114CC4(__src);
  memcpy((v13 + 32), __src, 0xB8uLL);
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v16 = v13;
  sub_1B2142B5C(v18, v14);
  sub_1B2118434();
  sub_1B21F5F44(v14);
  *&v18[0] = v4;
  sub_1B21F5FAC(v18);
  *v12 = v2;
  *(v12 + 8) = v1;
  *(v12 + 16) = v0;
  memcpy((v12 + 24), v18, 0xA2uLL);
  *(v12 + 186) = v10;
  sub_1B2111588();
}

uint64_t sub_1B21F5F44(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A1C18, &qword_1B2259C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B21F5FAC(uint64_t result)
{
  v1 = *(result + 104) & 1;
  v2 = *(result + 160) & 0x1FF;
  *(result + 64) &= 1uLL;
  *(result + 104) = v1;
  *(result + 160) = v2;
  return result;
}

void *CommonTableExpression<A>.init(recursive:named:columns:literal:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *a5;
  memset(__src, 0, 40);
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v16 = v12;
  sub_1B2142B5C(__src, v14);
  sub_1B2118434();
  sub_1B21F5F44(v14);
  *&__src[0] = v6;
  sub_1B21F5FAC(__src);
  *a6 = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  result = memcpy((a6 + 24), __src, 0xA2uLL);
  *(a6 + 186) = a1;
  return result;
}

uint64_t CommonTableExpression.association<A>(to:on:)()
{
  sub_1B2111FC0();
  v4 = v3;
  sub_1B21518F0(v20);
  sub_1B2111904();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v16 = v5;
  sub_1B2112C7C();
  v13 = sub_1B2116254(v6, v7, *(v0 + 16), v8, v9, v10, v11, v12, sub_1B21F6640, v16, v17, v18, v19, v20[0]);
  sub_1B21D92BC(v13, v14, v4);
}

{
  sub_1B2111FC0();
  v3 = v2;
  v5 = v4[1];
  v12 = *v4;
  v13 = v5;
  type metadata accessor for Table(0, v8, v6, v7);
  sub_1B21518F0(__src);
  sub_1B2111904();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v0;
  *&v11 = sub_1B21F63B8;
  *(&v11 + 1) = v9;
  sub_1B2112C7C();
  sub_1B21D92BC(__src, &v11, v3);
}

uint64_t CommonTableExpression.association<A>(to:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1B21518F0(v19);
  sub_1B21176AC();
  v11 = sub_1B2116254(v4, v5, *(a1 + 16), v6, v7, v8, v9, v10, v14, v15, v16, v17, v18, v19[0]);
  return sub_1B21D92BC(v11, v12, a2);
}

{
  sub_1B213574C();
  sub_1B21176AC();
  v11 = sub_1B2116254(v4, v5, *(a1 + 16), v6, v7, v8, v9, v10, v14, v15, v16, v17, v18, v19);
  return sub_1B21D92BC(v11, v12, a2);
}

uint64_t CommonTableExpression.association<A>(to:on:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  sub_1B213574C();
  sub_1B2111904();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v19 = v8;
  sub_1B2112C7C();
  v16 = sub_1B2116254(v9, v10, *(a3 + 16), v11, v12, v13, v14, v15, sub_1B21F6640, v19, v20, v21, v22, v23);
  sub_1B21D92BC(v16, v17, a4);
}

uint64_t CommonTableExpression.association<A>(to:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  type metadata accessor for Table(0, a2, a2, a3);
  sub_1B21518F0(__src);
  sub_1B21176AC();
  return sub_1B21D92BC(__src, &v7, a4);
}

uint64_t sub_1B21F6450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21F6494(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 187))
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

uint64_t sub_1B21F64D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 186) = 0;
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 187) = 1;
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

    *(result + 187) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21F6550(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 171))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1B21F6598(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 170) = 0;
    *(a1 + 168) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 171) = 1;
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
      result = 0.0;
      *(a1 + 56) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 8) = 0u;
      *(a1 + 72) = 2 * -a2;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 154) = 0u;
      return result;
    }

    *(a1 + 171) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B21F6678(uint64_t a1)
{
  if (qword_1EB7A0C78 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB7A0C80;
  sub_1B2253510();
  v2 = sub_1B2252290();

  v3 = [v1 objectForKey_];

  if (v3)
  {
    v4 = sub_1B22522A0();

    return v4;
  }

  sub_1B2253510();
  strcpy(v35, "(.)\\b.*$");
  BYTE1(v35[1]) = 0;
  WORD1(v35[1]) = 0;
  HIDWORD(v35[1]) = -402653184;
  v33 = 12580;
  v34 = 0xE200000000000000;
  v5 = sub_1B2156990();
  v6 = MEMORY[0x1E69E6158];
  v4 = sub_1B2117D94(v35, &v33);
  v8 = v7;

  v31 = v4;
  v32 = v8;
  strcpy(v35, "^([A-Z]+).*$");
  BYTE5(v35[1]) = 0;
  HIWORD(v35[1]) = -5120;
  v33 = 12580;
  v34 = 0xE200000000000000;
  v29 = v5;
  v30 = v5;
  v27 = v6;
  v28 = v5;
  v9 = sub_1B2117D94(v35, &v33);
  v11 = v10;
  v12 = sub_1B2252380();
  if (sub_1B2252380() == v12)
  {

    v4 = sub_1B2252220();
LABEL_9:

LABEL_14:

    v25 = sub_1B2252290();

    sub_1B2253510();
    v26 = sub_1B2252290();

    [v1 setObject:v25 forKey:{v26, v27, v28, v29, v30, v31, v32}];

    return v4;
  }

  if (v12 == 1)
  {
    v13 = sub_1B2252220();
    v15 = v14;

    v16 = sub_1B21FD2F0(1uLL, v4, v8);
    v35[0] = v13;
LABEL_13:
    v35[1] = v15;
    v31 = v16;
    v32 = v17;
    sub_1B21F7FE8();

    sub_1B22523C0();

    v4 = v35[0];
    goto LABEL_14;
  }

  if (!v12)
  {
    goto LABEL_9;
  }

  sub_1B2228DCC(1, v9, v11, v18, v19, v20);
  v21 = sub_1B2252B10();
  v15 = v22;

  v23 = sub_1B2252380();

  result = v23 - 1;
  if (!__OFSUB__(v23, 1))
  {
    v16 = sub_1B21FD2F0(result, v4, v8);
    v35[0] = v21;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void static TableRecord.numberOfSelectedColumns(_:)()
{
  sub_1B2111640();
  v1 = v0;
  v3 = v2;
  v4 = (*(v0 + 8))(v2, v0);
  v6 = v5;
  type metadata accessor for TableAlias();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 1;
  type metadata accessor for StatementArgumentsSink();
  swift_allocObject();
  v14 = sub_1B2114D98(0, v8, v9, v10, v11, v12, v13);
  v15 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v17 = sub_1B2117164(v16, v14, v15);
  v18 = (*(v1 + 16))(v3, v1);
  v19 = *(v18 + 16);
  if (v19)
  {
    sub_1B213A1C8();
    v20 = v15;
    v21 = v18 + 32;
    for (i = v19 - 1; ; --i)
    {
      sub_1B211EE68(v21, v41);
      v23 = v42;
      v24 = v43;
      sub_1B21139A0(v41, v42);
      (*(v24 + 8))(__src, v23, v24);
      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v46, __src, 0xB8uLL);
      switch(sub_1B213A580(v46))
      {
        case 1u:
          v33 = sub_1B213AA9C(v46);
          memcpy(v37, v33, 0xA3uLL);
          sub_1B213A774(__dst, v39);
          v34 = sub_1B21180FC();
          sub_1B213BBD8(v34, v35);
          sub_1B213A5CC(__dst);
          sub_1B213A5CC(__dst);
          memcpy(v39, v38, 0xA3uLL);
          sub_1B214D464(v39);
          goto LABEL_9;
        case 2u:
          v26 = sub_1B213AA9C(v46);
          v28 = v26[21];
          v27 = v26[22];
          memcpy(v37, v26, 0xA3uLL);
          sub_1B213A774(__dst, v39);
          v29 = sub_1B21180FC();
          sub_1B213BBD8(v29, v30);
          sub_1B21356F8(v26);
          sub_1B213A5CC(__dst);
          memcpy(v39, v38, 0xA8uLL);
          v39[21] = v28;
          v39[22] = v27;
          sub_1B2155A5C(v39);
          goto LABEL_9;
        case 3u:
          v37[0] = *sub_1B213AA9C(v46);
          sub_1B213A774(__dst, v39);
          v31 = sub_1B21180FC();
          sub_1B2153E58(v31, v32);
          sub_1B213A5CC(__dst);
          sub_1B213A5CC(__dst);
          v39[0] = v38[0];
          sub_1B216ED24(v39);
          goto LABEL_9;
        case 4u:
          v39[0] = v7;
          sub_1B213A59C(v39);

          sub_1B213A5CC(__dst);
LABEL_9:
          v25 = v39;
          break;
        default:
          sub_1B213AA9C(v46);
          v25 = __dst;
          break;
      }

      memcpy(v44, v25, sizeof(v44));
      sub_1B2113208(v41);
      v36 = *(v20 + 16);
      if (v36 >= *(v20 + 24) >> 1)
      {
        sub_1B213A1C8();
      }

      *(v20 + 16) = v36 + 1;
      memcpy((v20 + 184 * v36 + 32), v44, 0xB8uLL);
      if (!i)
      {
        break;
      }

      v21 += 40;
    }
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  sub_1B2178F60(v17, v20);
  sub_1B2115BF0();

  sub_1B2112FDC();
}

void (*sub_1B21F6E04(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t)))(uint64_t, uint64_t)
{
  static TableRecord.all()(v52);
  v6 = sub_1B2111634();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(v6, v7, v8, v9);
  a4(a1, InterfaceRequest);
  sub_1B2115BF0();
  sub_1B211608C(v11, v12, v13, v14, v15, v16, v17, v18, v30, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  sub_1B21142DC();
  v27 = sub_1B2112FF4(v19, v20, v21, v22, v23, v24, v25, v26, v31);
  v28(v27);
  return a4;
}

void static TableRecord.exists<A>(_:key:)()
{
  sub_1B2111640();
  v24 = v0;
  v25 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1B2252B00();
  sub_1B21115E0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  sub_1B2111808();
  (*(v18 + 16))(v17, v11, v7);
  sub_1B21117B4(v17, 0, 1, v7);
  static TableRecord.filter<A>(key:)(v27, v17, v9, v7, v5, v3);
  (*(v14 + 8))(v17, v12);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(0, v9, v19, v20);
  QueryInterfaceRequest.isEmpty(_:)(v25, InterfaceRequest);
  memcpy(v26, v27, 0xA2uLL);
  sub_1B2111808();
  (*(v22 + 8))(v26, InterfaceRequest);
  sub_1B2112FDC();
}

uint64_t static TableRecord<>.exists(_:id:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B2115288(a1, a2);
  static TableRecord<>.filter(id:)(v3);
  v4 = sub_1B2111634();
  type metadata accessor for QueryInterfaceRequest(v4, v5, v6, v7);
  v8 = sub_1B2115680();
  v10 = QueryInterfaceRequest.isEmpty(_:)(v8, v9);
  if (v2)
  {
    sub_1B211608C(v10, v11, v12, v13, v14, v15, v16, v17, v41, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
    sub_1B21142DC();
    v26 = sub_1B2112FF4(v18, v19, v20, v21, v22, v23, v24, v25, v42);
    v27(v26);
  }

  else
  {
    v29 = v10;
    sub_1B211608C(v10, v11, v12, v13, v14, v15, v16, v17, v41, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
    sub_1B21142DC();
    v38 = sub_1B2112FF4(v30, v31, v32, v33, v34, v35, v36, v37, v43);
    v39(v38);
    v28 = v29 ^ 1;
  }

  return sub_1B211D8B0(v28);
}

{
  sub_1B2115288(a1, a2);
  static TableRecord<>.filter(id:)();
  v3 = sub_1B2111634();
  type metadata accessor for QueryInterfaceRequest(v3, v4, v5, v6);
  v7 = sub_1B2115680();
  v9 = QueryInterfaceRequest.isEmpty(_:)(v7, v8);
  if (v2)
  {
    sub_1B211608C(v9, v10, v11, v12, v13, v14, v15, v16, v40, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
    sub_1B21142DC();
    v25 = sub_1B2112FF4(v17, v18, v19, v20, v21, v22, v23, v24, v41);
    v26(v25);
  }

  else
  {
    v28 = v9;
    sub_1B211608C(v9, v10, v11, v12, v13, v14, v15, v16, v40, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
    sub_1B21142DC();
    v37 = sub_1B2112FF4(v29, v30, v31, v32, v33, v34, v35, v36, v42);
    v38(v37);
    v27 = v28 ^ 1;
  }

  return sub_1B211D8B0(v27);
}

uint64_t static TableRecord.exists(_:key:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B2115288(a1, a2);
  static TableRecord.filter(key:)(v3, v4, v5);
  v6 = sub_1B2111634();
  type metadata accessor for QueryInterfaceRequest(v6, v7, v8, v9);
  v10 = sub_1B2115680();
  v12 = QueryInterfaceRequest.isEmpty(_:)(v10, v11);
  if (v2)
  {
    sub_1B211608C(v12, v13, v14, v15, v16, v17, v18, v19, v43, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
    sub_1B21142DC();
    v28 = sub_1B2112FF4(v20, v21, v22, v23, v24, v25, v26, v27, v44);
    v29(v28);
  }

  else
  {
    v31 = v12;
    sub_1B211608C(v12, v13, v14, v15, v16, v17, v18, v19, v43, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
    sub_1B21142DC();
    v40 = sub_1B2112FF4(v32, v33, v34, v35, v36, v37, v38, v39, v45);
    v41(v40);
    v30 = v31 ^ 1;
  }

  return sub_1B211D8B0(v30);
}

void static TableRecord.deleteAll<A>(_:keys:)()
{
  sub_1B2111640();
  v13 = v0;
  v2 = v1;
  v16 = v3;
  sub_1B21115E0();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  swift_getAssociatedTypeWitness();
  v8 = sub_1B22526C0();
  v15[0] = v8;
  sub_1B22526A0();
  sub_1B2111968();
  swift_getWitnessTable();
  if (sub_1B2252900())
  {
  }

  else
  {
    v14[0] = v8;
    sub_1B2111B28();
    swift_getWitnessTable();
    static TableRecord.filter<A>(keys:)();

    InterfaceRequest = type metadata accessor for QueryInterfaceRequest(0, v2, v9, v10);
    QueryInterfaceRequest.deleteAll(_:)(v16);
    memcpy(v14, v15, 0xA2uLL);
    sub_1B2111808();
    (*(v12 + 8))(v14, InterfaceRequest);
  }

  sub_1B2112FDC();
}

void static TableRecord.deleteOne<A>(_:key:)()
{
  sub_1B2111640();
  v26[2] = v2;
  v27 = v0;
  v26[0] = v3;
  v26[1] = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_1B2252B00();
  sub_1B21115E0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  sub_1B21115E0();
  v16 = v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v8, v9, v18);
  if (sub_1B2122A98(v14, 1, v6) == 1)
  {
    (*(v11 + 8))(v14, v9);
    v21 = 0;
  }

  else
  {
    (*(v16 + 32))(v20, v14, v6);
    sub_1B2152D64(v6, v6);
    swift_allocObject();
    v22 = sub_1B22525B0();
    (*(v16 + 16))(v23, v20, v6);
    sub_1B2152E00(v22, v6);
    sub_1B2111634();
    sub_1B22526A0();
    sub_1B2111B28();
    swift_getWitnessTable();
    static TableRecord.deleteAll<A>(_:keys:)();
    v25 = v24;

    (*(v16 + 8))(v20, v6);
    if (!v1)
    {
      v21 = v25 > 0;
    }
  }

  sub_1B211D8B0(v21);
  sub_1B2112FDC();
}

void *static TableRecord<>.deleteAll<A>(_:ids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (sub_1B2118454(a1, a2, a3, a4, a5, a6, a7))
  {
    return 0;
  }

  v9 = sub_1B2122298();
  static TableRecord<>.filter<A>(ids:)(v9, v10, v11, v12, v13, v14, v15);
  v16 = sub_1B2111634();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(v16, v17, v18, v19);
  v21 = sub_1B2122630(InterfaceRequest);
  if (!v8)
  {
    v7 = v21;
  }

  sub_1B211D5DC(v21, v22, v23, v24, v25, v26, v27, v28, v40, v42, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
  sub_1B21142DC();
  v37 = sub_1B212DF5C(v29, v30, v31, v32, v33, v34, v35, v36, v41, v43);
  v38(v37);
  return v7;
}

{
  if (sub_1B2118454(a1, a2, a3, a4, a5, a6, a7))
  {
    return 0;
  }

  v9 = sub_1B2122298();
  static TableRecord<>.filter<A>(ids:)(v9, v10, v11, v12, v13, v14, v15, v16);
  v17 = sub_1B2111634();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(v17, v18, v19, v20);
  v22 = sub_1B2122630(InterfaceRequest);
  if (!v8)
  {
    v7 = v22;
  }

  sub_1B211D5DC(v22, v23, v24, v25, v26, v27, v28, v29, v41, v43, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
  sub_1B21142DC();
  v38 = sub_1B212DF5C(v30, v31, v32, v33, v34, v35, v36, v37, v42, v44);
  v39(v38);
  return v7;
}

BOOL static TableRecord<>.deleteOne(_:id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2152D64(AssociatedTypeWitness, AssociatedTypeWitness);
  v11 = *(AssociatedTypeWitness - 8);
  sub_1B211AD38();
  v12 = sub_1B22525B0();
  (*(v11 + 16))(v13, a2, AssociatedTypeWitness);
  sub_1B2152E00(v12, AssociatedTypeWitness);
  v19 = v14;
  v15 = sub_1B22526A0();
  sub_1B2111968();
  WitnessTable = swift_getWitnessTable();
  v17 = static TableRecord<>.deleteAll<A>(_:ids:)(a1, &v19, a3, v15, a4, a5, WitnessTable);

  return v17 > 0;
}

{
  swift_getAssociatedTypeWitness();
  sub_1B2111634();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2152D64(AssociatedTypeWitness, AssociatedTypeWitness);
  v10 = *(AssociatedTypeWitness - 8);
  sub_1B211AD38();
  v11 = sub_1B22525B0();
  (*(v10 + 16))(v12, a2, AssociatedTypeWitness);
  sub_1B2152E00(v11, AssociatedTypeWitness);
  v18 = v13;
  v14 = sub_1B22526A0();
  sub_1B2111968();
  WitnessTable = swift_getWitnessTable();
  static TableRecord<>.deleteAll<A>(_:ids:)(a1, &v18, a3, v14, a4, a5, WitnessTable);
  sub_1B2115BF0();

  return v14 > 0;
}

void *static TableRecord.deleteAll(_:keys:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_1B2115288(a1, a2);
  static TableRecord.filter(keys:)(v4, v5, v6);
  v7 = sub_1B2111634();
  type metadata accessor for QueryInterfaceRequest(v7, v8, v9, v10);
  v11 = sub_1B2115680();
  v12 = QueryInterfaceRequest.deleteAll(_:)(v11);
  if (!v3)
  {
    v2 = v12;
  }

  sub_1B211608C(v12, v13, v14, v15, v16, v17, v18, v19, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  sub_1B21142DC();
  v28 = sub_1B2112FF4(v20, v21, v22, v23, v24, v25, v26, v27, v32);
  v29(v28);
  return v2;
}

BOOL static TableRecord.deleteOne(_:key:)(uint64_t a1, uint64_t a2)
{
  sub_1B21619D8(&qword_1EB7A1BB0, &qword_1B22598E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B22546B0;
  *(v5 + 32) = a2;

  static TableRecord.deleteAll(_:keys:)(a1, v5);
  sub_1B2115BF0();

  return v2 > 0;
}

uint64_t static TableRecord.updateAll(_:onConflict:_:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  static TableRecord.all()(v22);
  v23 = v7;
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(0, a4, v8, v9);
  v11 = QueryInterfaceRequest.updateAll(_:onConflict:_:)(a1, &v23, a3, InterfaceRequest);
  sub_1B211608C(v11, v12, v13, v14, v15, v16, v17, v18, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], v21[9], v21[10], v21[11], v21[12], v21[13], v21[14], v21[15], v21[16], v21[17], v21[18], v21[19], v21[20]);
  sub_1B2111808();
  (*(v19 + 8))(v21, InterfaceRequest);
  return v11;
}

uint64_t static TableRecord.updateAll(_:onConflict:_:_:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *a2;
  sub_1B21619D8(&qword_1EB7A0F68, &unk_1B2254680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  sub_1B214FAC0(a3, inited + 32);

  sub_1B216CE64(v10);
  static TableRecord.updateAll(_:onConflict:_:)(a1, &v12, inited, a5);
  sub_1B2115BF0();

  return v5;
}

id sub_1B21F7F8C()
{
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  qword_1EB7A0C80 = result;
  return result;
}

unint64_t sub_1B21F7FE8()
{
  result = qword_1EB7A0C70;
  if (!qword_1EB7A0C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A0C70);
  }

  return result;
}

GRDBInternal::FTS4 __swiftcall FTS4.init()()
{
  *v0 = 879981670;
  v0[1] = 0xE400000000000000;
  return result;
}

double FTS4.makeTableDefinition(configuration:)(char *a1)
{
  v1 = *a1;
  type metadata accessor for FTS4TableDefinition();
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = v3;
  *(v2 + 48) = 0;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 16) = v1;
  return result;
}

uint64_t FTS4.moduleArguments(for:in:)(uint64_t a1)
{
  sub_1B21115FC();
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = sub_1B2116B08();
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = v4;
    if (v4 >= 1)
    {
      v117 = a1;

      v7 = 0;
      v8 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1B27427E0](v7, v3);
        }

        else
        {
          v9 = *(v3 + 8 * v7 + 32);
        }

        if (*(v9 + 33) == 1)
        {
          break;
        }

        v17 = *(v9 + 16);
        v16 = *(v9 + 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B21176D0();
          v8 = v26;
        }

        v19 = *(v8 + 16);
        v18 = *(v8 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1B211156C(v18);
          sub_1B214400C();
          v8 = v27;
        }

        *(v8 + 16) = v19 + 1;
        v20 = v8 + 16 * v19;
        *(v20 + 32) = v17;
        *(v20 + 40) = v16;
        if ((*(v9 + 32) & 1) == 0)
        {
          strcpy(v129, "notindexed=");
          HIDWORD(v129[1]) = -352321536;
          v21 = *(v9 + 16);
          v22 = *(v9 + 24);

          MEMORY[0x1B2741EB0](v21, v22);

          v13 = v129[0];
          v14 = v129[1];
LABEL_17:
          v23 = *(v8 + 16);
          if (v23 >= *(v8 + 24) >> 1)
          {
            sub_1B2112C8C();
            v8 = v25;
          }

          *(v8 + 16) = v23 + 1;
          v24 = v8 + 16 * v23;
          *(v24 + 32) = v13;
          *(v24 + 40) = v14;
          goto LABEL_20;
        }

LABEL_20:
        if (v6 == ++v7)
        {

          v5 = MEMORY[0x1E69E7CC0];
          a1 = v117;
          goto LABEL_23;
        }
      }

      strcpy(v129, "languageid=");
      BYTE5(v129[1]) = 0;
      HIWORD(v129[1]) = -5120;
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);

      MEMORY[0x1B2741EB0](v10, v11);

      v12 = sub_1B2111B50();
      MEMORY[0x1B2741EB0](v12);
      v13 = v129[0];
      v14 = v129[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B21176D0();
        v8 = v15;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_76:
    sub_1B21176D0();
    v8 = v101;
LABEL_35:
    sub_1B2116718();
    if (v58)
    {
      sub_1B2112C8C();
      v8 = v102;
    }

    sub_1B2116260();
    goto LABEL_38;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v1 = 0xE900000000000022;
  sub_1B21115FC();
  swift_beginAccess();
  v28 = *(a1 + 64);
  if (v28)
  {
    v29 = *(a1 + 56);
    v30 = *(a1 + 72);
    if (*(v30 + 16))
    {
      v127 = 0x657A696E656B6F74;
      v128 = 0xE90000000000003DLL;
      v31 = sub_1B2114460();
      sub_1B21D911C(v31, v32);

      MEMORY[0x1B2741EB0](v29, v28);

      MEMORY[0x1B2741EB0](32, 0xE100000000000000);
      v115 = 0x657A696E656B6F74;
      v116 = 0xE90000000000003DLL;
      v37 = *(v30 + 16);
      if (v37)
      {
        v112 = v29;
        v114 = v28;
        v117 = a1;
        v125 = v5;
        sub_1B2116B10(0, v37, 0, v33, v34, v35, v36);
        v38 = v5;
        v113 = v30;
        v39 = (v30 + 40);
        do
        {
          v41 = *(v39 - 1);
          v40 = *v39;
          v127 = 34;
          v128 = 0xE100000000000000;

          MEMORY[0x1B2741EB0](v41, v40);
          v42 = sub_1B21152A4();
          MEMORY[0x1B2741EB0](v42);

          v125 = v38;
          v44 = *(v38 + 16);
          v43 = *(v38 + 24);
          if (v44 >= v43 >> 1)
          {
            v46 = sub_1B211156C(v43);
            sub_1B2116B10(v46, v44 + 1, 1, v47, v48, v49, v50);
            v38 = v125;
          }

          *(v38 + 16) = v44 + 1;
          v45 = v38 + 16 * v44;
          *(v45 + 32) = 34;
          *(v45 + 40) = 0xE100000000000000;
          v39 += 2;
          --v37;
        }

        while (v37);
        sub_1B21C2654(v29, v114);
        v5 = MEMORY[0x1E69E7CC0];
        a1 = v117;
        v1 = 0xE900000000000022;
      }

      else
      {
        v55 = sub_1B2114460();
        sub_1B21C2654(v55, v56);
      }

      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B215175C();
      sub_1B2252250();

      v127 = 0x657A696E656B6F74;
      v128 = 0xE90000000000003DLL;

      v57 = sub_1B2113B50();
      MEMORY[0x1B2741EB0](v57);
    }

    else
    {
      v127 = 0x657A696E656B6F74;
      v128 = 0xE90000000000003DLL;
      v51 = sub_1B2114460();
      sub_1B21D911C(v51, v52);

      MEMORY[0x1B2741EB0](v29, v28);
      v53 = sub_1B2114460();
      sub_1B21C2654(v53, v54);
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_35;
    }

    goto LABEL_76;
  }

LABEL_38:
  if (*(a1 + 48) == 1 || *(a1 + 40))
  {
    v127 = 0x3D746E65746E6F63;
    v128 = v1;
    sub_1B2113B50();
    sub_1B21F9EDC();
    v59 = sub_1B2113B50();
    MEMORY[0x1B2741EB0](v59);
    sub_1B2113B50();
    sub_1B21F9EE4();
    v60 = sub_1B21152A4();
    MEMORY[0x1B2741EB0](v60);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B21176D0();
      v8 = v99;
    }

    sub_1B2116718();
    if (v58)
    {
      sub_1B2112C8C();
      v8 = v100;
    }

    sub_1B2116260();
  }

  sub_1B21115FC();
  swift_beginAccess();
  v61 = *(a1 + 88);
  if (v61)
  {
    v62 = *(a1 + 80);
    v125 = 0x73736572706D6F63;
    v126 = 0xEA0000000000223DLL;

    MEMORY[0x1B2741EB0](v62, v61);

    v63 = sub_1B2111B50();
    MEMORY[0x1B2741EB0](v63);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B21176D0();
      v8 = v103;
    }

    sub_1B2116718();
    if (v58)
    {
      sub_1B2112C8C();
      v8 = v104;
    }

    sub_1B2116260();
  }

  sub_1B21115FC();
  swift_beginAccess();
  v64 = *(a1 + 104);
  if (v64)
  {
    v65 = *(a1 + 96);
    strcpy(v124, "uncompress=");
    BYTE5(v124[1]) = 0;
    HIWORD(v124[1]) = -5120;

    MEMORY[0x1B2741EB0](v65, v64);

    v66 = sub_1B2111B50();
    MEMORY[0x1B2741EB0](v66);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B21176D0();
      v8 = v105;
    }

    sub_1B2116718();
    if (v58)
    {
      sub_1B2112C8C();
      v8 = v106;
    }

    sub_1B2116260();
  }

  sub_1B21115FC();
  swift_beginAccess();
  v67 = *(a1 + 120);
  if (v67)
  {
    v68 = *(a1 + 112);
    v121 = 0x666E69686374616DLL;
    v122 = 0xEB00000000223D6FLL;

    MEMORY[0x1B2741EB0](v68, v67);

    v69 = sub_1B2111B50();
    MEMORY[0x1B2741EB0](v69);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B21176D0();
      v8 = v107;
    }

    sub_1B2116718();
    if (v58)
    {
      sub_1B2112C8C();
      v8 = v108;
    }

    sub_1B2116260();
  }

  sub_1B21115FC();
  swift_beginAccess();
  if (*(a1 + 128))
  {

    sub_1B219C484(v70, v71, v72, v73, v74, v75, v76, v77, v111, v112, v113, v114, v115, v116, v117, v118, v119, 0x223D786966657270, 0xE800000000000000, v121, v122, v123, v124[0], v124[1], v124[2], v125);
    v79 = v78;

    v84 = *(v79 + 16);
    if (v84)
    {
      v120 = v5;
      sub_1B2116B10(0, v84, 0, v80, v81, v82, v83);
      v85 = 32;
      do
      {
        v90 = sub_1B2252FD0();
        v92 = v91;
        v94 = *(v120 + 16);
        v93 = *(v120 + 24);
        if (v94 >= v93 >> 1)
        {
          sub_1B2116B10(v93 > 1, v94 + 1, 1, v86, v87, v88, v89);
        }

        *(v120 + 16) = v94 + 1;
        v95 = v120 + 16 * v94;
        *(v95 + 32) = v90;
        *(v95 + 40) = v92;
        v85 += 8;
        --v84;
      }

      while (v84);
    }

    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    sub_1B2252250();

    v96 = sub_1B2113B50();
    MEMORY[0x1B2741EB0](v96);

    v97 = sub_1B2111B50();
    MEMORY[0x1B2741EB0](v97);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B21176D0();
      v8 = v109;
    }

    sub_1B2116718();
    if (v58)
    {
      sub_1B2112C8C();
      v8 = v110;
    }

    sub_1B2116260();
  }

  return v8;
}

void FTS4.database(_:didCreate:using:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 48) == 1)
  {

    sub_1B2122058();
    Database.primaryKey(_:)();
    if (v4)
    {
      sub_1B2122058();
      sub_1B21F9EE4();
      return;
    }

    v97 = a4;
    v98 = a2;
    v99 = a3;
    if (v103)
    {
      v95 = 0x6469776F72;
      if (v103 == 1)
      {
        sub_1B21424A0(v101, v102, 1u);
      }

      v96 = 0xE500000000000000;
    }

    else
    {
      v95 = v101;
      v96 = v102;
    }

    MEMORY[0x1B2741EB0](a2, a3);
    v8 = sub_1B2111B50();
    MEMORY[0x1B2741EB0](v8);
    v101 = 34;
    v102 = 0xE100000000000000;
    v9 = sub_1B2122058();
    MEMORY[0x1B2741EB0](v9);
    v10 = sub_1B2111B50();
    MEMORY[0x1B2741EB0](v10);
    sub_1B2122058();
    sub_1B21F9EE4();
    sub_1B21115FC();
    swift_beginAccess();
    v11 = *(a4 + 24);
    v12 = sub_1B2116B08();
    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v14 = v12;
      v100[0] = MEMORY[0x1E69E7CC0];
      v15 = v12 & ~(v12 >> 63);

      sub_1B2116B10(0, v15, 0, v16, v17, v18, v19);
      if (v14 < 0)
      {
        __break(1u);
        return;
      }

      v20 = 0;
      v21 = v100[0];
      v22 = v11 & 0xC000000000000001;
      v23 = v11;
      do
      {
        if (v22)
        {
          v24 = MEMORY[0x1B27427E0](v20, v23);
        }

        else
        {
          v24 = *(v23 + 8 * v20 + 32);
        }

        v26 = *(v24 + 16);
        v25 = *(v24 + 24);

        v100[0] = v21;
        v28 = *(v21 + 16);
        v27 = *(v21 + 24);
        if (v28 >= v27 >> 1)
        {
          v30 = sub_1B211156C(v27);
          sub_1B2116B10(v30, v28 + 1, 1, v31, v32, v33, v34);
          v21 = v100[0];
        }

        ++v20;
        *(v21 + 16) = v28 + 1;
        v29 = v21 + 16 * v28;
        *(v29 + 32) = v26;
        *(v29 + 40) = v25;
      }

      while (v14 != v20);

      v13 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    v100[0] = &unk_1F2968F10;

    sub_1B2156C88(v35);
    v40 = qword_1F2968F20[0];
    if (qword_1F2968F20[0])
    {
      sub_1B2116B10(0, qword_1F2968F20[0], 0, v36, v37, v38, v39);
      v41 = v13;
      v42 = &qword_1F2968F20[3];
      do
      {
        v43 = *(v42 - 1);
        v44 = *v42;
        v100[0] = 34;
        v100[1] = 0xE100000000000000;

        MEMORY[0x1B2741EB0](v43, v44);
        v45 = sub_1B2111B50();
        MEMORY[0x1B2741EB0](v45);

        v47 = *(v41 + 16);
        v46 = *(v41 + 24);
        if (v47 >= v46 >> 1)
        {
          v49 = sub_1B211156C(v46);
          sub_1B2116B10(v49, v47 + 1, 1, v50, v51, v52, v53);
        }

        *(v41 + 16) = v47 + 1;
        v48 = v41 + 16 * v47;
        *(v48 + 32) = 34;
        *(v48 + 40) = 0xE100000000000000;
        v42 += 2;
        --v40;
      }

      while (v40);

      v13 = MEMORY[0x1E69E7CC0];
    }

    else
    {
    }

    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v93 = sub_1B21116BC();
    v94 = v54;

    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B22546B0;
    *(inited + 32) = v95;
    *(inited + 40) = v96;
    v100[0] = inited;

    sub_1B2156C88(v21);
    v60 = *(v100[0] + 16);
    if (v60)
    {
      v104 = v13;
      sub_1B2116B10(0, v60, 0, v56, v57, v58, v59);
      v61 = (v100[0] + 40);
      v62 = v13;
      do
      {
        v63 = *(v61 - 1);
        v64 = *v61;
        v100[0] = 779576686;
        v100[1] = 0xE400000000000000;

        MEMORY[0x1B2741EB0](v63, v64);
        v65 = sub_1B21152A4();
        MEMORY[0x1B2741EB0](v65);
        MEMORY[0x1B2741EB0](34, 0xE100000000000000);

        v104 = v62;
        v67 = *(v62 + 16);
        v66 = *(v62 + 24);
        if (v67 >= v66 >> 1)
        {
          v69 = sub_1B211156C(v66);
          sub_1B2116B10(v69, v67 + 1, 1, v70, v71, v72, v73);
          v62 = v104;
        }

        *(v62 + 16) = v67 + 1;
        v68 = v62 + 16 * v67;
        *(v68 + 32) = 779576686;
        *(v68 + 40) = 0xE400000000000000;
        v61 += 2;
        --v60;
      }

      while (v60);
    }

    v74 = sub_1B21116BC();
    v91 = v75;
    v92 = v74;

    v100[0] = 778333295;
    v100[1] = 0xE400000000000000;
    MEMORY[0x1B2741EB0](v95, v96);
    v76 = sub_1B21152A4();
    MEMORY[0x1B2741EB0](v76);

    sub_1B212CECC();

    if (*(v97 + 16))
    {
      v77 = 0x4520544F4E204649;
    }

    else
    {
      v77 = 0;
    }

    if (*(v97 + 16))
    {
      v78 = 0xEE00205354534958;
    }

    else
    {
      v78 = 0xE000000000000000;
    }

    sub_1B2252CD0();
    MEMORY[0x1B2741EB0](0x5420455441455243, 0xEF20524547474952);
    MEMORY[0x1B2741EB0](v77, v78);
    sub_1B21158E0();
    MEMORY[0x1B2741EB0](v98, v99);
    MEMORY[0x1B2741EB0](7692895, 0xE300000000000000);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    v79 = sub_1B21152A4();
    MEMORY[0x1B2741EB0](v79);

    sub_1B212CECC();

    MEMORY[0x1B2741EB0]();
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    sub_1B2117DBC();
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    sub_1B2115D08();
    MEMORY[0x1B2741EB0](778333295, 0xE400000000000000);
    MEMORY[0x1B2741EB0](0xD000000000000016, 0x80000001B226F640);
    MEMORY[0x1B2741EB0](v77, v78);
    sub_1B21158E0();
    MEMORY[0x1B2741EB0](v98, v99);
    MEMORY[0x1B2741EB0](6578783, 0xE300000000000000);
    sub_1B2118494();
    MEMORY[0x1B2741EB0]();
    v80 = sub_1B21152A4();
    MEMORY[0x1B2741EB0](v80);

    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    MEMORY[0x1B2741EB0](0xD000000000000012, 0x80000001B226F660);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    sub_1B2117DBC();
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    sub_1B2115D08();
    MEMORY[0x1B2741EB0](778333295, 0xE400000000000000);

    MEMORY[0x1B2741EB0](0xD000000000000016, 0x80000001B226F640);
    MEMORY[0x1B2741EB0](v77, v78);
    sub_1B21158E0();
    MEMORY[0x1B2741EB0](v98, v99);
    MEMORY[0x1B2741EB0](7692639, 0xE300000000000000);
    sub_1B2118494();
    MEMORY[0x1B2741EB0]();
    v81 = sub_1B21152A4();
    MEMORY[0x1B2741EB0](v81);

    sub_1B212CECC();

    MEMORY[0x1B2741EB0]();
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    sub_1B2117DBC();
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    MEMORY[0x1B2741EB0](40, 0xE100000000000000);
    MEMORY[0x1B2741EB0](v93, v94);
    sub_1B212DF68();
    MEMORY[0x1B2741EB0](v92, v91);
    sub_1B2117DBC();
    MEMORY[0x1B2741EB0](v77, v78);

    sub_1B21158E0();
    MEMORY[0x1B2741EB0](v98, v99);
    MEMORY[0x1B2741EB0](6906207, 0xE300000000000000);
    sub_1B2118494();
    MEMORY[0x1B2741EB0]();
    v82 = sub_1B21152A4();
    MEMORY[0x1B2741EB0](v82);

    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    MEMORY[0x1B2741EB0](0xD000000000000011, 0x80000001B226DA70);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    sub_1B2117DBC();
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    MEMORY[0x1B2741EB0](40, 0xE100000000000000);
    MEMORY[0x1B2741EB0](v93, v94);

    sub_1B212DF68();
    MEMORY[0x1B2741EB0](v92, v91);

    MEMORY[0x1B2741EB0](0x3B444E450A3B29, 0xE700000000000000);
    v83._countAndFlagsBits = 0;
    v84 = MEMORY[0x1E69E7CC8];
    v85 = MEMORY[0x1E69E7CC0];
    v100[0] = MEMORY[0x1E69E7CC0];
    v100[1] = MEMORY[0x1E69E7CC8];
    v86.values._rawValue = v100;
    v83._object = 0xE000000000000000;
    Database.execute(sql:arguments:)(v83, v86);

    if (!v87)
    {

      v100[0] = 0;
      v100[1] = 0xE000000000000000;
      sub_1B2252CD0();

      strcpy(v100, "INSERT INTO ");
      BYTE5(v100[1]) = 0;
      HIWORD(v100[1]) = -5120;
      MEMORY[0x1B2741EB0](34, 0xE100000000000000);
      MEMORY[0x1B2741EB0](40, 0xE100000000000000);
      MEMORY[0x1B2741EB0](34, 0xE100000000000000);

      MEMORY[0x1B2741EB0](0xD000000000000013, 0x80000001B226DB50);
      v88._countAndFlagsBits = v100[0];
      v89 = v100[1];
      v100[0] = v85;
      v100[1] = v84;
      v90.values._rawValue = v100;
      v88._object = v89;
      Database.execute(sql:arguments:)(v88, v90);
    }
  }
}

uint64_t FTS4TableDefinition.tokenizer.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_1B21115FC();
  swift_beginAccess();
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return sub_1B21D911C(v3, v4);
}

uint64_t FTS4TableDefinition.tokenizer.setter(__int128 *a1)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  swift_beginAccess();
  v3 = v1[7];
  v4 = v1[8];
  *(v1 + 7) = v6;
  v1[9] = v2;
  return sub_1B21C2654(v3, v4);
}

uint64_t FTS4TableDefinition.content.getter()
{
  v1 = *(v0 + 32);
  sub_1B21F9EDC();
  return v1;
}

uint64_t sub_1B21F9640(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return FTS4TableDefinition.content.setter(v1, v2);
}

uint64_t FTS4TableDefinition.content.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = 0;
  return sub_1B21F9EE4();
}

uint64_t (*FTS4TableDefinition.content.modify(uint64_t *a1))()
{
  a1[2] = v1;
  *a1 = FTS4TableDefinition.content.getter();
  a1[1] = v3;
  return sub_1B21F96E4;
}

uint64_t sub_1B21F96E4(void *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  *(v2 + 32) = *a1;
  *(v2 + 40) = v3;
  *(v2 + 48) = 0;
  if (a2)
  {

    sub_1B21F9EE4();
  }

  else
  {

    return sub_1B21F9EE4();
  }
}

uint64_t FTS4TableDefinition.compress.getter()
{
  sub_1B21115FC();
  swift_beginAccess();

  return sub_1B2112FD0();
}

uint64_t FTS4TableDefinition.compress.setter(uint64_t a1, uint64_t a2)
{
  sub_1B211D8D0(v2 + 80, a2);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t FTS4TableDefinition.uncompress.getter()
{
  sub_1B21115FC();
  swift_beginAccess();

  return sub_1B2112FD0();
}

uint64_t FTS4TableDefinition.uncompress.setter(uint64_t a1, uint64_t a2)
{
  sub_1B211D8D0(v2 + 96, a2);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t FTS4TableDefinition.matchinfo.getter()
{
  sub_1B21115FC();
  swift_beginAccess();

  return sub_1B2112FD0();
}

uint64_t FTS4TableDefinition.matchinfo.setter(uint64_t a1, uint64_t a2)
{
  sub_1B211D8D0(v2 + 112, a2);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

uint64_t FTS4TableDefinition.prefixes.getter()
{
  sub_1B21115FC();
  swift_beginAccess();
}

uint64_t FTS4TableDefinition.prefixes.setter(uint64_t a1, uint64_t a2)
{
  sub_1B211D8D0(v2 + 128, a2);
  *(v2 + 128) = a1;
}

uint64_t FTS4TableDefinition.column(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for FTS4ColumnDefinition();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = 1;
  swift_beginAccess();

  MEMORY[0x1B2742060](v7);
  sub_1B212B4C4(*((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1B2252630();
  swift_endAccess();
  return v6;
}

Swift::Void __swiftcall FTS4TableDefinition.synchronize(withTable:)(Swift::String withTable)
{
  *(v1 + 32) = withTable;
  *(v1 + 48) = 1;
  sub_1B21F9EE4();
}

void *FTS4TableDefinition.deinit()
{

  sub_1B21F9EE4();
  sub_1B21C2654(*(v0 + 56), *(v0 + 64));

  return v0;
}

uint64_t FTS4TableDefinition.__deallocating_deinit()
{
  FTS4TableDefinition.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

uint64_t FTS4ColumnDefinition.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 34, 7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.dropFTS4SynchronizationTriggers(forTable:)(Swift::String forTable)
{
  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD000000000000017, 0x80000001B226DB70);
  sub_1B21222C0();
  MEMORY[0x1B2741EB0](7692895, 0xE300000000000000);
  sub_1B212D0C4();
  v1 = sub_1B2111B50();
  MEMORY[0x1B2741EB0](v1);

  sub_1B211AE64();

  sub_1B2122654();
  sub_1B21222C0();
  MEMORY[0x1B2741EB0](6578783, 0xE300000000000000);
  sub_1B212D0C4();
  v2 = sub_1B2111B50();
  MEMORY[0x1B2741EB0](v2);

  sub_1B211AE64();

  sub_1B2122654();
  sub_1B21222C0();
  MEMORY[0x1B2741EB0](7692639, 0xE300000000000000);
  sub_1B212D0C4();
  v3 = sub_1B2111B50();
  MEMORY[0x1B2741EB0](v3);

  sub_1B211AE64();

  sub_1B2122654();
  sub_1B21222C0();
  MEMORY[0x1B2741EB0](6906207, 0xE300000000000000);
  MEMORY[0x1B2741EB0]();
  v4 = sub_1B2111B50();
  MEMORY[0x1B2741EB0](v4);

  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  MEMORY[0x1B2741EB0](59, 0xE100000000000000);
  v5._countAndFlagsBits = 0;
  v7[0] = MEMORY[0x1E69E7CC0];
  v7[1] = MEMORY[0x1E69E7CC8];
  v6.values._rawValue = v7;
  v5._object = 0xE000000000000000;
  Database.execute(sql:arguments:)(v5, v6);
}

uint64_t sub_1B21F9F6C()
{
  v1 = *v0;
  v3 = 0;
  v4 = 0;
  v5 = 4;
  v1(&v3);
  return sub_1B2113A44(v3, v4, v5);
}

uint64_t sub_1B21F9FC0(char a1)
{
  v2 = *v1;
  v4 = a1 & 1;
  v5 = 0;
  v6 = 0;
  v2(&v4);
  return sub_1B2113A44(v4, v5, v6);
}

uint64_t sub_1B21FA014(char a1)
{
  v2 = *v1;
  v4 = a1;
  v5 = 0;
  v6 = 0;
  v2(&v4);
  return sub_1B2113A44(v4, v5, v6);
}

uint64_t sub_1B21FA068(__int16 a1)
{
  v2 = *v1;
  v4 = a1;
  v5 = 0;
  v6 = 0;
  v2(&v4);
  return sub_1B2113A44(v4, v5, v6);
}

uint64_t sub_1B21FA0BC(int a1)
{
  v2 = *v1;
  v4 = a1;
  v5 = 0;
  v6 = 0;
  v2(&v4);
  return sub_1B2113A44(v4, v5, v6);
}

uint64_t sub_1B21FA110(uint64_t a1)
{
  v2 = *v1;
  v4 = a1;
  v5 = 0;
  v6 = 0;
  v2(&v4);
  return sub_1B2113A44(v4, v5, v6);
}

uint64_t sub_1B21FA160(unsigned __int8 a1)
{
  v2 = *v1;
  v4 = a1;
  v5 = 0;
  v6 = 0;
  v2(&v4);
  return sub_1B2113A44(v4, v5, v6);
}

uint64_t sub_1B21FA1B4(unsigned __int16 a1)
{
  v2 = *v1;
  v4 = a1;
  v5 = 0;
  v6 = 0;
  v2(&v4);
  return sub_1B2113A44(v4, v5, v6);
}

uint64_t sub_1B21FA208(unsigned int a1)
{
  v2 = *v1;
  v4 = a1;
  v5 = 0;
  v6 = 0;
  v2(&v4);
  return sub_1B2113A44(v4, v5, v6);
}

uint64_t sub_1B21FA25C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *v1;
    v3 = result;
    v4 = 0;
    v5 = 0;
    v2(&v3);
    return sub_1B2113A44(v3, v4, v5);
  }

  return result;
}

uint64_t sub_1B21FA2B8(float a1)
{
  v2 = *v1;
  *&v4 = a1;
  v5 = 0;
  v6 = 1;
  v2(&v4);
  return sub_1B2113A44(v4, v5, v6);
}

uint64_t sub_1B21FA314(double a1)
{
  v2 = *v1;
  v4 = *&a1;
  v5 = 0;
  v6 = 1;
  v2(&v4);
  return sub_1B2113A44(v4, v5, v6);
}

uint64_t sub_1B21FA36C(uint64_t a1, unint64_t a2)
{
  v3 = *v2;
  v5 = a1;
  v6 = a2;
  v7 = 2;

  v3(&v5);
  return sub_1B2113A44(v5, v6, v7);
}

uint64_t sub_1B21FA3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v7);
  sub_1B21619D8(&qword_1EB7A1290, &qword_1B226A750);
  if (swift_dynamicCast())
  {
    sub_1B21217FC(&v18, v21);
    v10 = *v3;
    v11 = v22;
    v12 = v23;
    sub_1B21139A0(v21, v22);
    (*(v12 + 24))(&v18, v11, v12);
    v16 = v18;
    v17 = v19;
    v10(&v16);
    sub_1B2113A44(v16, *(&v16 + 1), v17);
    return sub_1B2113208(v21);
  }

  else
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_1B2122B98(&v18);
    v15 = *v3;
    v14 = v3[1];
    type metadata accessor for DatabaseValueEncoder();
    swift_allocObject();

    sub_1B21FA6D8(v15, v14);
    sub_1B21FA878(a1, a2, a3);
  }
}

uint64_t sub_1B21FA6D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  sub_1B2252E60();
  *(v2 + 40) = sub_1B2252190();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1B21FA740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = 1;
  nullsub_1();
  type metadata accessor for JSONRequiredEncoder.KeyedContainer(0, a2, a3, v6);
  swift_getWitnessTable();
  return sub_1B2252FA0();
}

unint64_t sub_1B21FA7D8@<X0>(void *a1@<X8>)
{
  *(v1 + 32) = 1;
  a1[3] = &type metadata for JSONRequiredEncoder;
  result = sub_1B2187B18();
  a1[4] = result;
  *a1 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1B21FA820@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  a1[3] = &type metadata for DatabaseValueEncodingContainer;
  a1[4] = sub_1B21FAFE0();
  *a1 = v4;
  a1[1] = v3;
}

void sub_1B21FA878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = sub_1B22522F0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v31 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B2251A70();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v37 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B2251AD0();
  v35 = *(v14 - 8);
  v36 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v34 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B2251AA0();
  v32 = *(v16 - 8);
  v33 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B2251A90();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DatabaseValueEncoder();
  v42 = v30;
  v29 = sub_1B21FB034();
  v43 = v29;
  v41[0] = v6;

  v38 = a1;
  v39 = a2;
  v40 = a3;
  sub_1B2252200();
  if (v4)
  {
    sub_1B2113208(v41);
  }

  else
  {
    sub_1B2113208(v41);
    if (*(v6 + 32) != 1)
    {
      return;
    }

    sub_1B2155660();
    v5 = swift_allocError();
    swift_willThrow();
  }

  v44 = v5;
  v23 = v5;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  if (swift_dynamicCast())
  {
    sub_1B2251B20();
    swift_allocObject();
    sub_1B2251B10();
    (*(v20 + 104))(v22, *MEMORY[0x1E6967F98], v19);
    sub_1B2251AB0();
    (*(v32 + 104))(v18, *MEMORY[0x1E6967FB0], v33);
    sub_1B2251AC0();
    (*(v35 + 104))(v34, *MEMORY[0x1E6967FE8], v36);
    sub_1B2251AE0();
    sub_1B2251A60();
    sub_1B2251A80();
    v24 = sub_1B2251AF0();
    v26 = v25;
    sub_1B22522E0();
    sub_1B22522C0();
    if (!v27)
    {
      __break(1u);
      return;
    }

    v42 = v30;
    v43 = v29;
    v41[0] = v6;

    sub_1B22523E0();
    sub_1B21267A8(v24, v26);

    sub_1B2113208(v41);
  }
}

uint64_t sub_1B21FAD18()
{

  return v0;
}

uint64_t sub_1B21FAD40()
{
  v0 = sub_1B21FAD18();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t DatabaseValueConvertible<>.databaseValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = -1;
  type metadata accessor for DatabaseValueEncoder();
  swift_allocObject();

  sub_1B21FA6D8(sub_1B21FAFB4, v7);
  sub_1B21FA878(v3, a1, a2);

  swift_beginAccess();
  v8 = *(v7 + 32);
  if (v8 == 255)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v10 = *(v7 + 16);
    v9 = *(v7 + 24);
    sub_1B2113A20(v10, v9, *(v7 + 32));

    *a3 = v10;
    *(a3 + 8) = v9;
    *(a3 + 16) = v8;
  }

  return result;
}

uint64_t sub_1B21FAF28(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  v8 = *(a2 + 32);
  *(a2 + 32) = v5;
  sub_1B2113A20(v3, v4, v5);
  return sub_1B21678F0(v6, v7, v8);
}

unint64_t sub_1B21FAFE0()
{
  result = qword_1EB7A0B28[0];
  if (!qword_1EB7A0B28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7A0B28);
  }

  return result;
}

unint64_t sub_1B21FB034()
{
  result = qword_1EB7A0BB0[0];
  if (!qword_1EB7A0BB0[0])
  {
    type metadata accessor for DatabaseValueEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7A0BB0);
  }

  return result;
}

void sub_1B21FB0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10(0, v7, 0, a4, a5, a6, a7);
    v11 = sub_1B2132AEC();
    v12 = 0;
    v13 = v8 + 56;
    v33 = v8 + 64;
    v34 = v8 + 56;
    v35 = v8;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(v8 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v8 + 36) != v9)
        {
          goto LABEL_25;
        }

        v38 = v10;
        v36 = v12;
        v37 = v9;
        v15 = (*(v8 + 48) + 16 * v11);
        v16 = *v15;
        v17 = v15[1];
        v19 = *(v39 + 16);
        v18 = *(v39 + 24);

        if (v19 >= v18 >> 1)
        {
          sub_1B2116B10(v18 > 1, v19 + 1, 1, v20, v21, v22, v23);
        }

        *(v39 + 16) = v19 + 1;
        v24 = v39 + 16 * v19;
        *(v24 + 32) = v16;
        *(v24 + 40) = v17;
        if (v38)
        {
          goto LABEL_29;
        }

        v13 = v34;
        v8 = v35;
        v25 = 1 << *(v35 + 32);
        if (v11 >= v25)
        {
          goto LABEL_26;
        }

        v26 = *(v34 + 8 * v14);
        if ((v26 & (1 << v11)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v35 + 36) != v37)
        {
          goto LABEL_28;
        }

        v27 = v26 & (-2 << (v11 & 0x3F));
        if (v27)
        {
          v25 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = v14 << 6;
          v29 = v14 + 1;
          v30 = (v33 + 8 * v14);
          while (v29 < (v25 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              sub_1B21268C8(v11, v37, 0);
              v25 = __clz(__rbit64(v31)) + v28;
              goto LABEL_19;
            }
          }

          sub_1B21268C8(v11, v37, 0);
        }

LABEL_19:
        v12 = v36 + 1;
        if (v36 + 1 == v7)
        {
          return;
        }

        v10 = 0;
        v9 = *(v35 + 36);
        v11 = v25;
        if (v25 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void static FTS5TokenizerDescriptor.ascii(separators:tokenCharacters:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for Configuration(0);
  sub_1B2114470();
  MEMORY[0x1EEE9AC00](v6);
  sub_1B21222E0();
  if (*(a1 + 16))
  {
    sub_1B2112CB0();
    v7 = sub_1B21176F4();
    sub_1B211488C(v7);
    v8 = sub_1B2117DD8();
    MEMORY[0x1EEE9AC00](v8);
    sub_1B2116270();
    *(v9 - 16) = a1;
    v11 = sub_1B21FB5C4(sub_1B21FBB60, v10);

    sub_1B2156C88(v11);
  }

  if (*(a2 + 16))
  {
    sub_1B2112CB0();
    v12 = sub_1B21176F4();
    sub_1B211488C(v12);
    v13 = sub_1B2117DD8();
    MEMORY[0x1EEE9AC00](v13);
    sub_1B2116270();
    *(v14 - 16) = a2;
    v16 = sub_1B21FB5C4(sub_1B21FBB7C, v15);

    sub_1B2156C88(v16);
  }

  if (unk_1F29696C0)
  {
    *a3 = &unk_1F29696B0;
  }

  else
  {
    sub_1B2116728();
    sub_1B21152B4("Fatal error");
    __break(1u);
  }
}

uint64_t sub_1B21FB4C4(uint64_t a1)
{
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1B21B6648();
  v3 = v2;
  v5 = v4;
  if ((v4 & 1) == 0)
  {
LABEL_3:
    sub_1B216E90C();
    v7 = v6;
LABEL_10:
    swift_unknownObjectRelease();
    return v7;
  }

  sub_1B2253280();
  swift_unknownObjectRetain_n();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v8 + 16);

  if (__OFSUB__(v5 >> 1, v3))
  {
    goto LABEL_13;
  }

  if (v9 != (v5 >> 1) - v3)
  {
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v7 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v7)
  {
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  return v7;
}

uint64_t sub_1B21FB5C4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SchedulingWatchdog();
  if (!sub_1B21114CC())
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    result = sub_1B2252A50();
    if (v3)
    {
      return result;
    }

    return v7;
  }

  v4 = sub_1B211A144(*(v2 + 16));
  if (v4)
  {
    sub_1B2116728();
    sub_1B2112A88();
    result = sub_1B21184AC(v6);
    __break(1u);
    return result;
  }

  MEMORY[0x1EEE9AC00](v4);
  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B2252A50();

  if (!v3)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1B21FB770(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SchedulingWatchdog();
  v6 = sub_1B21114CC();
  if (!v6)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1B2111B5C();
    *(v11 - 32) = v2;
    *(v11 - 24) = a1;
    *(v11 - 16) = a2;
    result = sub_1B2252A50();
    if (v3)
    {
      return result;
    }

    return v13;
  }

  v7 = v6;
  v8 = sub_1B211A144(*(v2 + 16));
  if (v8)
  {
    sub_1B2116728();
    sub_1B2112A88();
    result = sub_1B21184AC(v12);
    __break(1u);
    return result;
  }

  MEMORY[0x1EEE9AC00](v8);
  sub_1B2111B5C();
  *(v9 - 32) = v7;
  *(v9 - 24) = v2;
  *(v9 - 16) = a1;
  *(v9 - 8) = a2;
  sub_1B2252A50();

  if (!v3)
  {
    return v13;
  }

  return result;
}

GRDBInternal::FTS5TokenizerDescriptor __swiftcall FTS5TokenizerDescriptor.init(components:)(GRDBInternal::FTS5TokenizerDescriptor components)
{
  if (*(components.components._rawValue + 2))
  {
    v1->components._rawValue = components.components._rawValue;
  }

  else
  {
    sub_1B211D724();
    components.components._rawValue = sub_1B21152B4("Fatal error");
    __break(1u);
  }

  return components;
}

uint64_t sub_1B21FB92C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B225B140;
  *(v5 + 32) = 0x6F74617261706573;
  *(v5 + 40) = 0xEA00000000007372;
  sub_1B21FB0CC(a1, v6, v7, v8, v9, v10, v11);
  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v12 = sub_1B2252250();
  v14 = v13;

  __src[0] = v12;
  __src[1] = v14;
  LOBYTE(__src[2]) = 2;
  sub_1B2127D7C(__src);
  memcpy(__dst, __src, sizeof(__dst));
  if (qword_1ED85D658 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED861900;

  v16 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v18 = sub_1B2117164(v17, v15, v16);
  v19 = sub_1B2127E58(v18, 0);
  if (v2)
  {

    *(v5 + 16) = 0;

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v21 = v19;
    v22 = v20;

    *(v5 + 48) = v21;
    *(v5 + 56) = v22;
    *a2 = v5;
  }

  return result;
}

void static FTS5TokenizerDescriptor.porter(wrapping:)(void *a1@<X0>, void *a2@<X8>)
{
  if (!*a1)
  {
    goto LABEL_4;
  }

  sub_1B2156C88(v3);
  v4 = &unk_1F2969A98;
  if (!unk_1F2969AA8)
  {
    sub_1B211D724();
    sub_1B21152B4("Fatal error");
    __break(1u);
LABEL_4:
    v4 = &unk_1F2969AC8;
  }

  *a2 = v4;
}

void static FTS5TokenizerDescriptor.unicode61(diacritics:separators:tokenCharacters:)(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for Configuration(0);
  sub_1B2114470();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B21222E0();
  if (*a1)
  {
    if (*a1 == 1)
    {
      goto LABEL_6;
    }

    v9 = &unk_1F2969B68;
  }

  else
  {
    v9 = &unk_1F2969B28;
  }

  sub_1B2156C88(v9);
LABEL_6:
  if (*(a2 + 16))
  {
    sub_1B2112CB0();
    v10 = sub_1B21176F4();
    sub_1B211488C(v10);
    v11 = sub_1B2117DD8();
    MEMORY[0x1EEE9AC00](v11);
    sub_1B2116270();
    *(v12 - 16) = a2;
    v14 = sub_1B21FB5C4(sub_1B21FBE18, v13);

    sub_1B2156C88(v14);
  }

  if (*(a3 + 16))
  {
    sub_1B2112CB0();
    v15 = sub_1B21176F4();
    sub_1B211488C(v15);
    v16 = sub_1B2117DD8();
    MEMORY[0x1EEE9AC00](v16);
    sub_1B2116270();
    *(v17 - 16) = a3;
    v19 = sub_1B21FB5C4(sub_1B21FC124, v18);

    sub_1B2156C88(v19);
  }

  if (unk_1F2969B08)
  {
    *a4 = &unk_1F2969AF8;
  }

  else
  {
    sub_1B2116728();
    sub_1B21152B4("Fatal error");
    __break(1u);
  }
}

uint64_t sub_1B21FBE48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B225B140;
  *(v7 + 32) = a2;
  *(v7 + 40) = 0xEA00000000007372;
  sub_1B219C6B0(a1, v8, v9, v10, v11, v12, v13, v14, v46, a3);
  v20 = v19;
  v21 = *(v19 + 16);
  if (v21)
  {
    v48 = v7;
    v49 = a4;
    __src[0] = MEMORY[0x1E69E7CC0];
    sub_1B2116B10(0, v21, 0, v15, v16, v17, v18);
    v22 = __src[0];
    v23 = (v20 + 40);
    do
    {
      v25 = *(v23 - 1);
      v24 = *v23;
      __src[0] = v22;
      v27 = *(v22 + 16);
      v26 = *(v22 + 24);

      if (v27 >= v26 >> 1)
      {
        sub_1B2116B10(v26 > 1, v27 + 1, 1, v28, v29, v30, v31);
        v22 = __src[0];
      }

      *(v22 + 16) = v27 + 1;
      v32 = v22 + 16 * v27;
      *(v32 + 32) = v25;
      *(v32 + 40) = v24;
      v23 += 2;
      --v21;
    }

    while (v21);

    v7 = v48;
    a4 = v49;
  }

  else
  {
  }

  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v33 = sub_1B2252250();
  v35 = v34;

  __src[0] = v33;
  __src[1] = v35;
  LOBYTE(__src[2]) = 2;
  sub_1B2127D7C(__src);
  memcpy(__dst, __src, sizeof(__dst));
  if (qword_1ED85D658 != -1)
  {
    swift_once();
  }

  v36 = qword_1ED861900;

  v37 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v39 = sub_1B2117164(v38, v36, v37);
  v40 = v52;
  v41 = sub_1B2127E58(v39, 0);
  if (v40)
  {

    *(v7 + 16) = 0;

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v43 = v41;
    v44 = v42;

    *(v7 + 48) = v43;
    *(v7 + 56) = v44;
    *a4 = v7;
  }

  return result;
}

void sub_1B21FC154(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  v3 = *(a1 + 16);
  a2(&v4, v3);
  sub_1B21343E4(v3, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, 108, a1);
}

uint64_t sub_1B21FC1D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  type metadata accessor for SchedulingWatchdog();
  result = sub_1B21114CC();
  if (result)
  {
    v7 = result;
    swift_beginAccess();
    v8 = *(v7 + 16);
    swift_beginAccess();
    swift_beginAccess();

    sub_1B2150300(v9);
    swift_endAccess();
    sub_1B221DA58(a2, a3);
    *(v7 + 16) = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B21FC2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for SchedulingWatchdog();
  result = sub_1B21114CC();
  if (result)
  {
    v11 = result;

    v12 = a5(a1, v11, a2, a3, a4);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B21FC3A0(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, void *a3@<X8>)
{
  sub_1B21FC154(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

uint64_t sub_1B21FC3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1B21FC2F8(a1, a2, a3, a4, sub_1B221D960);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1B21FC46C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1B2252480();
  }

  else
  {
    return 0;
  }
}

GRDBInternal::Inflections __swiftcall Inflections.init()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v2;
  sub_1B21E8558(0, &qword_1ED85D6F0, 0x1E696AE70);
  v3 = sub_1B2252190();
  v1[2] = v3;
  result.uncountablesRegularExpressions._rawValue = v5;
  result.singularizeRules._rawValue = v4;
  result.pluralizeRules._rawValue = v3;
  return result;
}

Swift::Void __swiftcall Inflections.plural(_:options:_:)(Swift::String _, NSRegularExpressionOptions options, Swift::String a3)
{
  sub_1B2114484();
  v5 = objc_allocWithZone(MEMORY[0x1E696AE70]);

  sub_1B212DF90();
  if (v4)
  {
    sub_1B211D738();
    swift_unexpectedError();
    __break(1u);
  }

  else
  {

    sub_1B21614C0();
    v6 = *(*v3 + 16);
    sub_1B21617C4(v6);
    sub_1B211812C(v6 + 1);
    *v3 = v7;
  }
}

Swift::Void __swiftcall Inflections.singular(_:options:_:)(Swift::String _, NSRegularExpressionOptions options, Swift::String a3)
{
  sub_1B2114484();
  v5 = objc_allocWithZone(MEMORY[0x1E696AE70]);

  sub_1B212DF90();
  if (v4)
  {
    sub_1B211D738();
    swift_unexpectedError();
    __break(1u);
  }

  else
  {

    sub_1B21614C0();
    v6 = *(*(v3 + 8) + 16);
    sub_1B21617C4(v6);
    sub_1B211812C(v6 + 1);
    *(v3 + 8) = v7;
  }
}

Swift::Void __swiftcall Inflections.uncountableWords(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  if (v2)
  {
    v3 = v1;
    v29 = objc_opt_self();
    v5 = a1._rawValue + 40;
    while (1)
    {
      v31 = v2;
      v6 = *(v5 - 1);
      v7 = *v5;
      v30 = v5;

      v8 = sub_1B2252290();
      v9 = [v29 escapedPatternForString_];

      v10 = sub_1B22522A0();
      v12 = v11;

      MEMORY[0x1B2741EB0](v10, v12);

      MEMORY[0x1B2741EB0](23132, 0xE200000000000000);
      v13 = objc_allocWithZone(MEMORY[0x1E696AE70]);
      v14 = sub_1B21FE21C(25180, 0xE200000000000000, 1);
      swift_isUniquelyReferenced_nonNull_native();
      v15 = v3;
      v16 = *(v3 + 16);
      v17 = sub_1B211E590();
      if (__OFADD__(v16[2], (v18 & 1) == 0))
      {
        break;
      }

      v19 = v17;
      v20 = v18;
      sub_1B21619D8(&qword_1EB7A29D0, qword_1B225F828);
      if (sub_1B2252E70())
      {
        v21 = sub_1B211E590();
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_15;
        }

        v19 = v21;
      }

      if (v20)
      {
        v23 = v16[7];
        v24 = *(v23 + 8 * v19);
        *(v23 + 8 * v19) = v14;
      }

      else
      {
        v16[(v19 >> 6) + 8] |= 1 << v19;
        v25 = (v16[6] + 16 * v19);
        *v25 = v6;
        v25[1] = v7;
        *(v16[7] + 8 * v19) = v14;
        v26 = v16[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_14;
        }

        v16[2] = v28;
      }

      v3 = v15;
      *(v15 + 16) = v16;
      v5 = v30 + 2;
      v2 = v31 - 1;
      if (v31 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_15:
    sub_1B2253390();
    __break(1u);
  }
}

Swift::Void __swiftcall Inflections.irregularSuffix(_:_:)(Swift::String a1, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v4 = a1._object;
  v5 = a1._countAndFlagsBits;
  v6 = sub_1B21FC46C(a1._countAndFlagsBits, a1._object);
  if (v7)
  {
    v8 = v6;
    v9 = v7;

    v10 = sub_1B21FD2F0(1uLL, v5, v4);
    v12 = v11;
    v14 = v13;
    v249 = v15;
    v16 = sub_1B21FC46C(countAndFlagsBits, object);
    if (v17)
    {
      v18 = v16;
      v19 = v17;

      v257 = sub_1B21FD2F0(1uLL, countAndFlagsBits, object);
      v233 = v20;
      v241 = v21;
      v189 = v22;
      v23 = v8;
      v24 = v9;
      v25 = sub_1B2252230();
      v27 = v26;
      v29 = v25 == sub_1B2252230() && v27 == v28;
      v167 = v24;
      if (v29)
      {
      }

      else
      {
        v30 = sub_1B22531F0();

        if ((v30 & 1) == 0)
        {
          sub_1B2252230();
          sub_1B2112D00();
          v31 = v249;
          MEMORY[0x1B2741E40](v10, v12, v14, v249);
          sub_1B2122674();

          sub_1B21152E0();
          sub_1B2252230();
          v32 = sub_1B21F7FE8();
          sub_1B21148A8(v32, MEMORY[0x1E69E67B0], v32, v33, v34, v35, v36, v37, v152, v32, v167, v23, v19, v189, v14, v10, v12, v218, v18, v233, v241, v249, v257, v257);
          sub_1B22523C0();
          v38._countAndFlagsBits = sub_1B2117748();
          Inflections.plural(_:options:_:)(v38, v39, v40);

          sub_1B2252220();
          sub_1B2112D00();
          MEMORY[0x1B2741E40](v10, v12, v14, v31);
          sub_1B2122674();

          sub_1B21152E0();
          v41 = sub_1B2252220();
          v42 = v258;
          v43 = v234;
          v44 = v242;
          v45 = v190;
          sub_1B21148A8(v41, v46, v47, v48, v49, v50, v51, v52, v153, v160, v168, v175, v182, v190, v197, v204, v211, v219, v226, v234, v242, v250, v258, v258);
          sub_1B22523C0();
          v53._countAndFlagsBits = sub_1B2117748();
          Inflections.plural(_:options:_:)(v53, v54, v55);

          sub_1B2252230();
          sub_1B2112D00();
          MEMORY[0x1B2741E40](v42, v43, v44, v45);
          sub_1B2122674();

          sub_1B21152E0();
          v56 = sub_1B2252230();
          sub_1B21148A8(v56, v57, v58, v59, v60, v61, v62, v63, v154, v161, v169, v176, v183, v191, v198, v205, v212, v220, v227, v235, v243, v251, v259, v42);
          sub_1B22523C0();
          v64._countAndFlagsBits = sub_1B2117748();
          Inflections.plural(_:options:_:)(v64, v65, v66);

          sub_1B2252220();
          sub_1B2112D00();
          MEMORY[0x1B2741E40](v260, v43, v44, v192);
          sub_1B2122674();

          sub_1B21152E0();
          v67 = sub_1B2252220();
          sub_1B21148A8(v67, v68, v69, v70, v71, v72, v73, v74, v155, v162, v170, v177, v184, v192, v199, v206, v213, v221, v228, v236, v244, v252, v260, v260);
          sub_1B22523C0();
          v75._countAndFlagsBits = sub_1B2117748();
          Inflections.plural(_:options:_:)(v75, v76, v77);

          sub_1B2252230();
          sub_1B2112D00();
          v79 = v207;
          v78 = v214;
          v80 = v200;
          MEMORY[0x1B2741E40](v207, v214, v200, v253);
          sub_1B2122674();

          sub_1B21152E0();
          v81 = sub_1B2252230();
          sub_1B21148A8(v81, v82, v83, v84, v85, v86, v87, v88, v156, v163, v171, v178, v185, v193, v200, v207, v214, v222, v229, v237, v245, v253, v261, v207);
          sub_1B22523C0();
          v89._countAndFlagsBits = sub_1B2117748();
          Inflections.singular(_:options:_:)(v89, v90, v91);

          sub_1B2252220();
          sub_1B2112D00();
          MEMORY[0x1B2741E40](v79, v78, v80, v254);
          sub_1B2122674();

          sub_1B21152E0();
          v92 = sub_1B2252220();
          sub_1B21148A8(v92, v93, v94, v95, v96, v97, v98, v99, v157, v164, v172, v179, v186, v194, v201, v208, v215, v223, v230, v238, v246, v254, v262, v79);
          sub_1B22523C0();
          v100._countAndFlagsBits = sub_1B2117748();
          Inflections.singular(_:options:_:)(v100, v101, v102);

          sub_1B2252230();
          sub_1B2112D00();
          v103 = v195;
          MEMORY[0x1B2741E40](v263, v239, v247, v195);
          sub_1B2122674();

          sub_1B21152E0();
          v104 = sub_1B2252230();
          sub_1B21148A8(v104, v105, v106, v107, v108, v109, v110, v111, v158, v165, v173, v180, v187, v195, v202, v209, v216, v224, v231, v239, v247, v255, v263, v209);
          sub_1B22523C0();
          v112._countAndFlagsBits = sub_1B2117748();
          Inflections.singular(_:options:_:)(v112, v113, v114);

          sub_1B2252220();

          MEMORY[0x1B2741EB0](694763304, 0xE400000000000000);
          v115 = MEMORY[0x1B2741E40](v264, v240, v248, v103);
          v117 = v116;

          MEMORY[0x1B2741EB0](v115, v117);

          sub_1B21152E0();
          sub_1B2252220();
          v119 = v118;

          sub_1B21148A8(v120, v121, v122, v123, v124, v125, v126, v127, v159, v166, v174, v181, v188, v196, v203, v210, v217, v225, v232, v240, v248, v256, v264, v210);
          sub_1B22523C0();

          v128 = v119;
          v129 = sub_1B2113060();
          v132 = 0;
LABEL_11:
          v151 = v128;
          Inflections.singular(_:options:_:)(*&v129, v132, *&v131);

          return;
        }
      }

      sub_1B21158F8();
      sub_1B2252240();
      sub_1B21121A0();
      v133 = MEMORY[0x1B2741E40](v10, v12, v14, v249);
      MEMORY[0x1B2741EB0](v133);

      sub_1B21152E0();
      v134 = MEMORY[0x1B2741E40](v257, v233);
      MEMORY[0x1B2741EB0](v134);

      v135._countAndFlagsBits = sub_1B21222F8();
      Inflections.plural(_:options:_:)(v135, v136, v137);

      sub_1B21158F8();
      sub_1B2252240();
      sub_1B21121A0();
      sub_1B2122A44();
      MEMORY[0x1B2741EB0]();

      sub_1B21152E0();
      sub_1B2111B6C();
      sub_1B2122A44();
      MEMORY[0x1B2741EB0]();

      v138._countAndFlagsBits = sub_1B21222F8();
      Inflections.plural(_:options:_:)(v138, v139, v140);

      sub_1B21158F8();
      sub_1B2252240();

      sub_1B21121A0();
      v141 = MEMORY[0x1B2741E40](v10, v12, v14, v249);
      MEMORY[0x1B2741EB0](v141);

      sub_1B21152E0();
      sub_1B2111B6C();
      v142 = MEMORY[0x1B2741E40](v10, v12, v14, v249);
      MEMORY[0x1B2741EB0](v142);

      v143._countAndFlagsBits = 12580;
      v144._countAndFlagsBits = 12580;
      v144._object = 0xE200000000000000;
      v143._object = 0xE200000000000000;
      Inflections.singular(_:options:_:)(v144, 1uLL, v143);

      sub_1B21158F8();
      sub_1B2252240();

      sub_1B21121A0();
      v145 = MEMORY[0x1B2741E40](v257, v233, v241, v189);
      v147 = v146;

      MEMORY[0x1B2741EB0](v145, v147);

      sub_1B21152E0();
      sub_1B2111B6C();
      v148 = MEMORY[0x1B2741E40](v10, v12, v14, v249);
      v150 = v149;

      MEMORY[0x1B2741EB0](v148, v150);

      v128 = 0xE200000000000000;
      v129 = sub_1B2113060();
      v132 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B21FD218()
{
  sub_1B21116E0();
  if (v0)
  {
    sub_1B21184CC();
    sub_1B2252480();
    sub_1B2252230();

    sub_1B21184CC();
    sub_1B21FD2F0(v1, v2, v3);
    sub_1B21F7FE8();

    sub_1B22523C0();
  }

  else
  {
  }

  return sub_1B2115C84();
}

unint64_t sub_1B21FD2F0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1B22523B0();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_1B2117DF0();
      sub_1B22524A0();
      sub_1B21148B4();
      return sub_1B21121BC();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21FD3A0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    sub_1B2117DF0();
    result = sub_1B222EED0();
    if (v3)
    {
      result = v2;
    }

    if (v2 >= result)
    {
      sub_1B21184CC();
      sub_1B21B6648();
      sub_1B21148B4();
      return sub_1B21121BC();
    }
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall Inflections.pluralize(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = sub_1B21FDA08(a1._countAndFlagsBits, a1._object);
  sub_1B2113060();
  v5 = sub_1B21FD8E0();
  if (v5 >> 14 >= v4 >> 14)
  {
    v34 = v5;
    v35 = countAndFlagsBits;
    v36 = object;
    v7 = sub_1B22524A0();
    v8 = MEMORY[0x1B2741E40](v7);
    v10 = v9;

    v37 = v8;
    v11 = MEMORY[0x1B2741F40](v8, v10);
    sub_1B2116738();
    v14 = v13 & v12;
    v16 = (v15 + 63) >> 6;
    while (v14)
    {
      v17 = v1;
LABEL_9:
      v14 &= v14 - 1;
      v18 = sub_1B211F72C(v17);
      v19 = sub_1B2252290();
      v20 = [v18 firstMatchInString:v19 options:0 range:{0, v11}];

      if (v20)
      {

        v21 = v36;

        v5 = v35;
LABEL_12:
        v6 = v21;
        goto LABEL_15;
      }
    }

    while (1)
    {
      v17 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v17 >= v16)
      {

        v22 = sub_1B22524A0();
        v23 = MEMORY[0x1B2741E40](v22);
        v25 = v24;

        v26 = sub_1B21FDE44(v37, v10);
        v28 = v27;

        MEMORY[0x1B2741EB0](v26, v28);

        v29 = sub_1B21DC54C(v34, v35, v36);
        v30 = MEMORY[0x1B2741E40](v29);
        v32 = v31;

        MEMORY[0x1B2741EB0](v30, v32);

        v5 = v23;
        v21 = v25;
        goto LABEL_12;
      }

      v14 = *(v4 + 8 * v17);
      ++v1;
      if (v14)
      {
        v1 = v17;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_15:
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall Inflections.singularize(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = sub_1B21FDA08(a1._countAndFlagsBits, a1._object);
  sub_1B2113060();
  v5 = sub_1B21FD8E0();
  if (v5 >> 14 >= v4 >> 14)
  {
    v34 = v5;
    v35 = countAndFlagsBits;
    v36 = object;
    v7 = sub_1B22524A0();
    v8 = MEMORY[0x1B2741E40](v7);
    v10 = v9;

    v37 = v8;
    v11 = MEMORY[0x1B2741F40](v8, v10);
    sub_1B2116738();
    v14 = v13 & v12;
    v16 = (v15 + 63) >> 6;
    while (v14)
    {
      v17 = v1;
LABEL_9:
      v14 &= v14 - 1;
      v18 = sub_1B211F72C(v17);
      v19 = sub_1B2252290();
      v20 = [v18 firstMatchInString:v19 options:0 range:{0, v11}];

      if (v20)
      {

        v21 = v36;

        v5 = v35;
LABEL_12:
        v6 = v21;
        goto LABEL_15;
      }
    }

    while (1)
    {
      v17 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v17 >= v16)
      {

        v22 = sub_1B22524A0();
        v23 = MEMORY[0x1B2741E40](v22);
        v25 = v24;

        v26 = sub_1B21FDE44(v37, v10);
        v28 = v27;

        MEMORY[0x1B2741EB0](v26, v28);

        v29 = sub_1B21DC54C(v34, v35, v36);
        v30 = MEMORY[0x1B2741E40](v29);
        v32 = v31;

        MEMORY[0x1B2741EB0](v30, v32);

        v5 = v23;
        v21 = v25;
        goto LABEL_12;
      }

      v14 = *(v4 + 8 * v17);
      ++v1;
      if (v14)
      {
        v1 = v17;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_15:
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

unint64_t sub_1B21FD8E0()
{
  result = sub_1B22531F0();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v1 = sub_1B2115C84();
    result = sub_1B21FE36C(v1, v2);
    v3 = result;
    while (1)
    {
      v4 = result;
      if (result < 0x4000)
      {
        break;
      }

      sub_1B21184CC();
      sub_1B22523A0();
      sub_1B21184CC();
      v6 = sub_1B2252480();
      v7 = v5;
      if (v6 == 48 && v5 == 0xE100000000000000)
      {
        goto LABEL_13;
      }

      if (sub_1B22531F0())
      {

        break;
      }

      if (v6 == 57 && v7 == 0xE100000000000000)
      {
      }

      else
      {
LABEL_13:
        v10 = sub_1B22531F0();

        if (v10)
        {
          break;
        }
      }

      sub_1B21184CC();
      result = sub_1B22523A0();
    }

    if (v3 >> 14 >= v4 >> 14)
    {
      return v4;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B21FDA08(uint64_t a1, unint64_t a2)
{

  sub_1B21619D8(&qword_1EB7A29D8, &qword_1B225F878);
  sub_1B21FE308();
  sub_1B2156990();
  sub_1B2252AC0();
  if (qword_1ED85D848 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED85D850;
  sub_1B2115C84();
  v3 = sub_1B2252290();
  v4 = sub_1B211D9EC(v2, sel_firstMatchInString_options_range_, v3);

  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [v4 range];
  if (v5 == sub_1B22519B0())
  {

LABEL_6:
    v41 = 0;
    v6 = 1;
    goto LABEL_11;
  }

  [v4 range];
  sub_1B2117DF0();
  v7 = sub_1B2252990();
  v6 = v8;

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  v41 = v9;
LABEL_11:
  if (qword_1ED85D838 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED85D840;
  sub_1B2115C84();
  v11 = sub_1B2252290();
  v12 = sub_1B211D9EC(v10, sel_firstMatchInString_options_range_, v11);

  if (v12)
  {
    v13 = [v12 range];
    if (v13 == sub_1B22519B0() || ([v12 range], sub_1B2117DF0(), sub_1B2252990(), (v14 & 1) != 0))
    {
      v40 = 0;
      v15 = 1;
    }

    else
    {
      sub_1B21184CC();
      v40 = sub_1B2252390();
      v15 = 0;
    }
  }

  else
  {
    v40 = 0;
    v15 = 1;
  }

  if (qword_1ED85D858 != -1)
  {
    swift_once();
  }

  v16 = qword_1ED85D860;
  sub_1B2115C84();
  v17 = sub_1B2252290();
  v18 = sub_1B211D9EC(v16, sel_firstMatchInString_options_range_, v17);

  if (v18)
  {
    v19 = [v18 range];
    if (v19 == sub_1B22519B0() || ([v18 range], sub_1B2117DF0(), sub_1B2252990(), (v20 & 1) != 0))
    {
      v21 = 0;
      v22 = 1;
    }

    else
    {
      sub_1B21184CC();
      v21 = sub_1B2252390();
      v22 = 0;
    }

    if (v6)
    {
LABEL_33:
      v24 = MEMORY[0x1E69E7CC0];
      if (v15)
      {
        goto LABEL_39;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v21 = 0;
    v22 = 1;
    if (v6)
    {
      goto LABEL_33;
    }
  }

  sub_1B2162630(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v24 = v23;
  v26 = v23[2];
  v25 = v23[3];
  if (v26 >= v25 >> 1)
  {
    sub_1B2116280(v25);
    v24 = v35;
  }

  v24[2] = v26 + 1;
  v24[v26 + 4] = v41;
  if ((v15 & 1) == 0)
  {
LABEL_34:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B212D0E0();
      v24 = v36;
    }

    v28 = v24[2];
    v27 = v24[3];
    if (v28 >= v27 >> 1)
    {
      sub_1B2116280(v27);
      v24 = v37;
    }

    v24[2] = v28 + 1;
    v24[v28 + 4] = v40;
  }

LABEL_39:
  if ((v22 & 1) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B212D0E0();
      v24 = v38;
    }

    v30 = v24[2];
    v29 = v24[3];
    if (v30 >= v29 >> 1)
    {
      sub_1B2116280(v29);
      v24 = v39;
    }

    v24[2] = v30 + 1;
    v24[v30 + 4] = v21;
  }

  v31 = sub_1B21FE080(v24);
  v33 = v32;

  if (v33)
  {
    return 15;
  }

  else
  {
    return v31;
  }
}

uint64_t sub_1B21FDE44(uint64_t a1, uint64_t a2)
{
  sub_1B21116E0();
  if (v5 && (v6 = v4, , sub_1B21619D8(&qword_1EB7A29D8, &qword_1B225F878), sub_1B21FE308(), sub_1B2156990(), v18 = sub_1B2252AC0(), (v8 = *(v6 + 16)) != 0))
  {
    v9 = v7;
    sub_1B21E8558(0, &qword_1ED85D6F8, 0x1E696AD60);
    v10 = v6 + 24 * v8 + 24;
    while (1)
    {
      v11 = *(v10 - 16);

      v12 = v11;

      v13 = a1;
      v14 = sub_1B21FE00C(a1, a2);
      v15 = sub_1B2252290();

      v16 = [v12 replaceMatchesInString:v14 options:0 range:v18 withTemplate:{v9, v15}];

      if (v16 >= 1)
      {
        break;
      }

      --v8;

      v10 -= 24;
      a1 = v13;
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    a1 = sub_1B2252300();
  }

  else
  {
LABEL_6:
  }

  return a1;
}

id sub_1B21FE00C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1B2252290();

  v4 = [v2 initWithString_];

  return v4;
}

unint64_t sub_1B21FE080(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result >> 14 < v7 >> 14)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

id sub_1B21FE10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1B21FE21C(a2, a3, 0);
  *a4 = result;
  return result;
}

id sub_1B21FE190()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1B21FE21C(0xD000000000000016, 0x80000001B226F950, 0);
  qword_1ED85D860 = result;
  return result;
}

id sub_1B21FE21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B2252290();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1B2251D10();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_1B21FE308()
{
  result = qword_1ED85D700[0];
  if (!qword_1ED85D700[0])
  {
    sub_1B2161A20(&qword_1EB7A29D8, &qword_1B225F878);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED85D700);
  }

  return result;
}

unint64_t sub_1B21FE36C(unint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1;
  }

  v3 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v3 = 11;
  }

  return v3 | (v2 << 16);
}

uint64_t sub_1B21FE3C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v11 = a5;
  v12 = a4;
  v54 = a1;
  v55 = a2;
  v58[0] = a4;
  v58[1] = a5;
  LOBYTE(v56) = a3;
  type metadata accessor for FTS5TableDefinition();
  swift_allocObject();
  v14 = sub_1B219DAA8(&v56);
  v59 = v14;
  if (a6)
  {

    a6(&v59);
    sub_1B2112F4C(a6, a7);
    if (v8)
    {
    }
  }

  v53 = v7;
  sub_1B214400C();
  v17 = v16;
  v18 = *(v16 + 16);
  v19 = v18 + 1;
  if (v18 >= *(v16 + 24) >> 1)
  {
    sub_1B214400C();
    v17 = v46;
  }

  *(v17 + 16) = v19;
  v20 = v17 + 16 * v18;
  *(v20 + 32) = 0xD000000000000014;
  *(v20 + 40) = 0x80000001B226CD90;
  if (a3)
  {
    if ((v18 + 2) > *(v17 + 24) >> 1)
    {
      sub_1B214400C();
      v17 = v49;
    }

    *(v17 + 16) = v18 + 2;
    v21 = v17 + 16 * v19;
    strcpy((v21 + 32), "IF NOT EXISTS");
    *(v21 + 46) = -4864;
  }

  v56 = 34;
  v57 = 0xE100000000000000;
  MEMORY[0x1B2741EB0](v54, v55);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  v22 = v56;
  v23 = v57;
  v24 = *(v17 + 16);
  v25 = *(v17 + 24) >> 1;
  v26 = v24 + 1;
  if (v25 <= v24)
  {
    sub_1B214400C();
    v17 = v47;
    v25 = *(v47 + 24) >> 1;
  }

  *(v17 + 16) = v26;
  v27 = v17 + 16 * v24;
  *(v27 + 32) = v22;
  *(v27 + 40) = v23;
  v28 = v24 + 2;
  if (v25 < (v24 + 2))
  {
    sub_1B214400C();
    v17 = v48;
  }

  v29 = v53;
  *(v17 + 16) = v28;
  v30 = v17 + 16 * v26;
  *(v30 + 32) = 0x474E495355;
  *(v30 + 40) = 0xE500000000000000;
  v31 = FTS5.moduleArguments(for:in:)(v14, v29);
  if (v8)
  {
  }

  else
  {
    v32 = v31;
    if (*(v31 + 16))
    {
      v53 = v29;
      v56 = v12;
      v57 = v11;

      MEMORY[0x1B2741EB0](40, 0xE100000000000000);
      v33 = v56;
      v34 = v57;
      v56 = v32;
      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B215175C();
      v35 = sub_1B2252250();
      v37 = v36;

      v56 = v33;
      v57 = v34;

      MEMORY[0x1B2741EB0](v35, v37);

      MEMORY[0x1B2741EB0](41, 0xE100000000000000);

      v12 = v56;
      v11 = v57;
      v38 = *(v17 + 16);
      v39 = v38 + 1;
      if (v38 >= *(v17 + 24) >> 1)
      {
        sub_1B214400C();
        v17 = v50;
      }

      v29 = v53;
    }

    else
    {

      v38 = *(v17 + 16);
      v40 = *(v17 + 24);
      v39 = v38 + 1;

      if (v38 >= v40 >> 1)
      {
        sub_1B214400C();
        v17 = v51;
      }
    }

    *(v17 + 16) = v39;
    v41 = v17 + 16 * v38;
    *(v41 + 32) = v12;
    *(v41 + 40) = v11;
    v56 = v17;
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v42 = sub_1B2252250();
    v44 = v43;

    MEMORY[0x1EEE9AC00](v45);
    v52[2] = v29;
    v52[3] = v42;
    v52[4] = v44;
    v52[5] = v58;
    v52[6] = v54;
    v52[7] = v55;
    v52[8] = &v59;
    Database.inSavepoint(_:)(sub_1B21FF540, v52);
  }
}

uint64_t sub_1B21FE864(uint64_t a1, Swift::String sql, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  object = sql._object;
  v15[2] = a3;
  v15[3] = a4;
  v15[0] = MEMORY[0x1E69E7CC0];
  v15[1] = MEMORY[0x1E69E7CC8];
  sql._object = v15;
  countAndFlagsBits = sql._countAndFlagsBits;
  sql._countAndFlagsBits = object;
  Database.execute(sql:arguments:)(*(&sql - 8), *&sql._object);

  if (!v13)
  {
    FTS5.database(_:didCreate:using:)(a1, a5, a6, a7);
  }

  return 0;
}

uint64_t FTS5Pattern.rawPattern.getter()
{
  v1 = *v0;

  return v1;
}

GRDBInternal::FTS5Pattern_optional __swiftcall FTS5Pattern.init(matchingAnyTokenIn:)(Swift::String matchingAnyTokenIn)
{
  sub_1B21FEC0C(matchingAnyTokenIn._countAndFlagsBits, matchingAnyTokenIn._object, 542265120, 0xE400000000000000);
  result.value.rawPattern._object = v2;
  result.value.rawPattern._countAndFlagsBits = v1;
  result.is_nil = v3;
  return result;
}

void sub_1B21FE958(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = type metadata accessor for Configuration(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v12 = 1;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 23) = 0;
  *(v12 + 4) = MEMORY[0x1E69E7CC0];
  *(v12 + 20) = 0;
  *(v12 + 6) = 0;
  *(v12 + 7) = 0;
  v12[64] = 2;
  *(v12 + 9) = 0;
  *(v12 + 10) = 0;
  v12[88] = -1;
  *(v12 + 12) = 5;
  sub_1B2252110();
  *&v12[v10[19]] = 0;
  *&v12[v10[20]] = 0;
  v12[v10[21]] = 1;
  v12[v10[22]] = 0;
  v13 = &v12[v10[23]];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v12[v10[24]];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v12[v10[25]];
  type metadata accessor for DatabaseQueue();
  *v15 = 0;
  v15[1] = 0;
  swift_allocObject();
  DatabaseQueue.init(configuration:)(v12);
  v24 = a3;
  v25 = a1;
  v26 = a2;
  sub_1B2113C20(sub_1B21FF4D0, v23);
  if (!v4)
  {

    *a4 = a1;
    a4[1] = a2;
    return;
  }

  v32 = v4;
  v16 = v4;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  v27[0] = v29;
  v27[1] = v30;
  v28[0] = v31[0];
  *(v28 + 9) = *(v31 + 9);
  v17 = v29;
  v19 = *(&v29 + 1);
  v18 = v30;
  sub_1B21AC298();
  swift_allocError();
  v21 = v20;
  if (v18)
  {
    v22 = v18;
LABEL_8:
    *v21 = v17;
    *(v21 + 8) = v19;
    *(v21 + 16) = v22;
    *(v21 + 24) = 0u;
    *(v21 + 40) = 0u;
    *(v21 + 56) = 0;

    sub_1B21DC4E8(v27);
    swift_willThrow();
LABEL_9:

    return;
  }

  if (sqlite3_errstr(v17))
  {
    v19 = sub_1B22523F0();
    goto LABEL_8;
  }

  __break(1u);
}

GRDBInternal::FTS5Pattern_optional __swiftcall FTS5Pattern.init(matchingAllTokensIn:)(Swift::String matchingAllTokensIn)
{
  sub_1B21FEC0C(matchingAllTokensIn._countAndFlagsBits, matchingAllTokensIn._object, 32, 0xE100000000000000);
  result.value.rawPattern._object = v2;
  result.value.rawPattern._countAndFlagsBits = v1;
  result.is_nil = v3;
  return result;
}

void sub_1B21FEC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B2117760(a1, a2);
  if (v5)
  {

LABEL_3:

    *v4 = 0;
    v4[1] = 0;
    return;
  }

  v7 = v6;

  if (!*(v7 + 16))
  {
    goto LABEL_3;
  }

  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v8 = sub_1B2252250();
  v10 = v9;

  sub_1B21FE958(v8, v10, MEMORY[0x1E69E7CC0], v12);
  v11 = v12[1];
  *v4 = v12[0];
  v4[1] = v11;
}

GRDBInternal::FTS5Pattern_optional __swiftcall FTS5Pattern.init(matchingAllPrefixesIn:)(Swift::String matchingAllPrefixesIn)
{
  v3 = sub_1B2117760(matchingAllPrefixesIn._countAndFlagsBits, matchingAllPrefixesIn._object);
  if (v2)
  {

LABEL_3:

    *v1 = 0;
    v1[1] = 0;
    goto LABEL_11;
  }

  v7 = v3;

  v12 = *(v7 + 16);
  if (!v12)
  {
    goto LABEL_3;
  }

  v25 = v1;
  v28 = MEMORY[0x1E69E7CC0];
  sub_1B2116B10(0, v12, 0, v8, v9, v10, v11);
  v13 = (v7 + 40);
  do
  {
    v26 = *(v13 - 1);
    v27 = *v13;
    swift_bridgeObjectRetain_n();
    MEMORY[0x1B2741EB0](42, 0xE100000000000000);

    v19 = *(v28 + 16);
    v18 = *(v28 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1B2116B10(v18 > 1, v19 + 1, 1, v14, v15, v16, v17);
    }

    *(v28 + 16) = v19 + 1;
    v20 = v28 + 16 * v19;
    *(v20 + 32) = v26;
    *(v20 + 40) = v27;
    v13 += 2;
    --v12;
  }

  while (v12);

  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v21 = sub_1B2252250();
  v23 = v22;

  sub_1B21FE958(v21, v23, MEMORY[0x1E69E7CC0], v29);
  v24 = v29[1];
  *v25 = v29[0];
  v25[1] = v24;
LABEL_11:
  result.value.rawPattern._object = v5;
  result.value.rawPattern._countAndFlagsBits = v4;
  result.is_nil = v6;
  return result;
}

GRDBInternal::FTS5Pattern_optional __swiftcall FTS5Pattern.init(matchingPhrase:)(Swift::String matchingPhrase)
{
  sub_1B21FEED0(matchingPhrase._countAndFlagsBits, matchingPhrase._object, 34, 0xE100000000000000);
  result.value.rawPattern._object = v2;
  result.value.rawPattern._countAndFlagsBits = v1;
  result.is_nil = v3;
  return result;
}

GRDBInternal::FTS5Pattern_optional __swiftcall FTS5Pattern.init(matchingPrefixPhrase:)(Swift::String matchingPrefixPhrase)
{
  sub_1B21FEED0(matchingPrefixPhrase._countAndFlagsBits, matchingPrefixPhrase._object, 8798, 0xE200000000000000);
  result.value.rawPattern._object = v2;
  result.value.rawPattern._countAndFlagsBits = v1;
  result.is_nil = v3;
  return result;
}

void sub_1B21FEED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B2117760(a1, a2);
  if (v5)
  {

LABEL_3:

    *v4 = 0;
    v4[1] = 0;
    return;
  }

  v9 = v8;

  if (!*(v9 + 16))
  {
    goto LABEL_3;
  }

  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v10 = sub_1B2252250();
  v12 = v11;

  MEMORY[0x1B2741EB0](v10, v12);

  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  sub_1B21FE958(a3, a4, MEMORY[0x1E69E7CC0], v14);
  v13 = v14[1];
  *v4 = v14[0];
  v4[1] = v13;
}

uint64_t sub_1B21FF008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;

  sub_1B21FE3C4(0x746E656D75636F64, 0xE800000000000000, 0, 896758886, 0xE400000000000000, sub_1B21FF4F0, v8);

  if (!v4)
  {
    sub_1B212641C(0xD00000000000002DLL, 0x80000001B226F970, 0);
    sub_1B21619D8(&qword_1EB7A0E28, &unk_1B2254540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B22546B0;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = &protocol witness table for String;
    *(inited + 32) = a3;
    *(inited + 40) = a4;

    sub_1B2112554(inited, v15, v11, v12, v13, v14);
    sub_1B2133AC8(v15);
    sub_1B211A378(v15[0], v15[1]);

    sub_1B2133BF0();
  }

  return result;
}

uint64_t sub_1B21FF19C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      FTS5TableDefinition.column(_:)(v4, v5);

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    FTS5TableDefinition.column(_:)(0x5F5F626472675F5FLL, 0xE800000000000000);
  }

  return result;
}

GRDBInternal::FTS5Pattern __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.makeFTS5Pattern(rawPattern:forTable:)(Swift::String rawPattern, Swift::String forTable)
{
  object = rawPattern._object;
  countAndFlagsBits = rawPattern._countAndFlagsBits;
  v6 = v2;
  v7 = Database.columns(in:)(forTable._countAndFlagsBits, forTable._object);
  if (!v3)
  {
    v13 = v7;
    v14 = *(v7 + 16);
    if (v14)
    {
      v27 = v6;
      v28 = countAndFlagsBits;
      v29 = object;
      v30 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10(0, v14, 0, v9, v10, v11, v12);
      v15 = v30;
      v16 = (v13 + 64);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;
        v20 = *(v30 + 16);
        v19 = *(v30 + 24);

        if (v20 >= v19 >> 1)
        {
          sub_1B2116B10(v19 > 1, v20 + 1, 1, v21, v22, v23, v24);
        }

        *(v30 + 16) = v20 + 1;
        v25 = v30 + 16 * v20;
        *(v25 + 32) = v17;
        *(v25 + 40) = v18;
        v16 += 11;
        --v14;
      }

      while (v14);

      countAndFlagsBits = v28;
      object = v29;
      v6 = v27;
    }

    else
    {

      v15 = MEMORY[0x1E69E7CC0];
    }

    sub_1B21FE958(countAndFlagsBits, object, v15, v6);
  }

  result.rawPattern._object = v8;
  result.rawPattern._countAndFlagsBits = v7;
  return result;
}

uint64_t FTS5Pattern.databaseValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 2;
}

void static FTS5Pattern.fromDatabaseValue(_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1B22522F0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v7 == 3)
  {
    sub_1B22522E0();
    v8 = sub_1B22522C0();
    if (v9)
    {
      v6 = v8;
      v5 = v9;
      goto LABEL_6;
    }
  }

  else if (v7 == 2)
  {

LABEL_6:
    swift_bridgeObjectRetain_n();
    sub_1B21FE958(v6, v5, MEMORY[0x1E69E7CC0], v11);
    swift_bridgeObjectRelease_n();
    v10 = v11[1];
    *a2 = v11[0];
    a2[1] = v10;
    return;
  }

  *a2 = 0;
  a2[1] = 0;
}

uint64_t sub_1B21FF578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for JSONRequiredEncoder.KeyedContainer(0, a3, a4, a4);

  sub_1B211777C();
  WitnessTable = swift_getWitnessTable();
  return sub_1B2116764(WitnessTable, v5);
}

uint64_t sub_1B21FF5E0@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 24) = &type metadata for JSONRequiredEncoder;
  v2 = a1();
  sub_1B211591C(v2);
}

uint64_t sub_1B21FF62C()
{
  v0 = sub_1B2155660();
  sub_1B21152FC(&type metadata for JSONRequiredError, v0);
  return sub_1B2112D24();
}

uint64_t sub_1B21FF664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B21619D8(&qword_1EB7A0DD0, &unk_1B226A780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  *(inited + 56) = a4;
  *(inited + 64) = a6;
  v13 = sub_1B212FF14((inited + 32));
  (*(*(a4 - 8) + 16))(v13, a2, a4);

  sub_1B2130EC8(inited);
  type metadata accessor for JSONRequiredEncoder.KeyedContainer(0, a5, a7, v14);
  sub_1B211777C();
  swift_getWitnessTable();
  return sub_1B2252FA0();
}

uint64_t sub_1B21FF77C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for JSONRequiredEncoder;
  v1 = sub_1B2200154();
  sub_1B211591C(v1);
}

uint64_t sub_1B21FF7C4@<X0>(uint64_t (*a1)(void)@<X4>, uint64_t a2@<X8>)
{
  *(a2 + 24) = &type metadata for JSONRequiredEncoder;
  v2 = a1();
  sub_1B211591C(v2);
}

uint64_t sub_1B21FFC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for JSONRequiredEncoder.KeyedContainer(0, a2, a3, a4);

  sub_1B211777C();
  WitnessTable = swift_getWitnessTable();
  return sub_1B2116764(WitnessTable, v5);
}

uint64_t sub_1B21FFCBC@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  a2[3] = &type metadata for JSONRequiredEncoder;
  a2[4] = a1();
  *a2 = v4;
}

unint64_t sub_1B2200154()
{
  result = qword_1EB7A29E0;
  if (!qword_1EB7A29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A29E0);
  }

  return result;
}

unint64_t sub_1B22001C0()
{
  result = qword_1EB7A29E8;
  if (!qword_1EB7A29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A29E8);
  }

  return result;
}

uint64_t sub_1B2200214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t NSURL.databaseValue.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B220048C(v1);
  if (v4)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 4;
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  return result;
}

uint64_t static NSURL.fromDatabaseValue(_:)(uint64_t a1)
{
  v3 = sub_1B21619D8(&qword_1EB7A1280, &unk_1B2254AA0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - v4;
  v6 = sub_1B22522F0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *(a1 + 16);
  if (v7 == 3)
  {
    sub_1B22522E0();
    sub_1B22522C0();
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else if (v7 == 2)
  {

LABEL_5:
    sub_1B2251D60();

    sub_1B21EA36C(v1, &v11);
    sub_1B22004F0(v5);
    return v11;
  }

  return 0;
}

uint64_t sub_1B2200464@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static NSURL.fromDatabaseValue(_:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B220048C(void *a1)
{
  v1 = [a1 absoluteString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B22522A0();

  return v3;
}

uint64_t sub_1B22004F0(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A1280, &unk_1B2254AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SQLRequest.init(stringInterpolation:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  return SQLRequest.init(literal:adapter:cached:)(&v5, v3, 0, a2);
}

uint64_t SQLRequest<A>.init(sql:arguments:adapter:cached:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B22546B0;
  *__src = a1;
  *&__src[8] = a2;
  *&__src[16] = *a3;
  sub_1B2114CC4(__src);
  memcpy((v12 + 32), __src, 0xB8uLL);
  *a6 = 0u;
  *(a6 + 16) = 0u;
  if (a5)
  {
    v13 = 0;
  }

  else
  {
    v13 = 2;
  }

  *(a6 + 32) = 0;
  *(a6 + 40) = v12;
  result = sub_1B2142B5C(a4, a6);
  *(a6 + 48) = v13;
  return result;
}

uint64_t SQLRequest<A>.init(literal:adapter:cached:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  *(a4 + 32) = 0;
  *(a4 + 40) = v5;
  result = sub_1B2142B5C(a2, a4);
  *(a4 + 48) = v6;
  return result;
}

uint64_t sub_1B22006EC(char a1)
{
  sub_1B2253420();
  MEMORY[0x1B2742F10](a1 & 1);
  return sub_1B2253470();
}

uint64_t sub_1B2200750(uint64_t a1)
{
  sub_1B2253420();
  sub_1B22006C4(v3, *v1);
  return sub_1B2253470();
}

uint64_t SQLRequest.init(sql:arguments:adapter:cached:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B22546B0;
  *__src = a1;
  *&__src[8] = a2;
  *&__src[16] = *a3;
  sub_1B2114CC4(__src);
  memcpy((v12 + 32), __src, 0xB8uLL);
  sub_1B2122784(a4, v15);
  *a6 = 0u;
  *(a6 + 16) = 0u;
  if (a5)
  {
    v13 = 0;
  }

  else
  {
    v13 = 2;
  }

  *(a6 + 32) = 0;
  *(a6 + 40) = v12;
  sub_1B2142B5C(v15, a6);
  *(a6 + 48) = v13;
  return sub_1B212AC5C(a4, &qword_1EB7A1370, &unk_1B2257580);
}

uint64_t SQLRequest.init(literal:adapter:cached:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  sub_1B2122784(a2, v10);
  *a4 = 0u;
  *(a4 + 16) = 0u;
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  *(a4 + 32) = 0;
  *(a4 + 40) = v7;
  sub_1B2142B5C(v10, a4);
  *(a4 + 48) = v8;
  return sub_1B212AC5C(a2, &qword_1EB7A1370, &unk_1B2257580);
}

uint64_t SQLRequest.sqlSubquery.getter@<X0>(void *a1@<X8>)
{
  __src[0] = *(v1 + 40);
  sub_1B21F5FAC(__src);
  memcpy(a1, __src, 0xA2uLL);
}

uint64_t *SQLRequest.fetchCount(_:)(uint64_t a1, uint64_t a2)
{
  sub_1B2127C14();
  *&v13[0] = v5;
  v6._object = 0x80000001B226E860;
  v6._countAndFlagsBits = 0xD000000000000016;
  SQLInterpolation.appendLiteral(_:)(v6);
  SQLInterpolation.appendInterpolation<A>(_:)(v2, a2);
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  SQLInterpolation.appendLiteral(_:)(v7);
  v8 = *&v13[0];
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v17 = v8;
  sub_1B2142B5C(v13, v15);
  v18 = 2;
  v9 = v15;
  sub_1B2146A54(v13);
  if (v3)
  {
    sub_1B212AC5C(v15, &qword_1EB7A2248, &unk_1B225BB60);
    return v9;
  }

  v9 = sub_1B2181098();
  v11 = v10;
  sub_1B2142D18(v13);
  result = sub_1B212AC5C(v15, &qword_1EB7A2248, &unk_1B225BB60);
  if ((v11 & 1) == 0)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2200B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v4 = MEMORY[0x1E69E7CC0];
  return SQLRequest.init(sql:arguments:adapter:cached:)(a1, a2, &v4, v5, 0, a3);
}

unint64_t sub_1B2200B94()
{
  result = qword_1EB7A29F0[0];
  if (!qword_1EB7A29F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7A29F0);
  }

  return result;
}

uint64_t sub_1B2200C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1B2200C74(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B2200C90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1B2200CD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharedValueObservationExtent(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1B2200DC0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t SharedValueObservationExtent.hashValue.getter()
{
  v1 = *v0;
  sub_1B2253420();
  MEMORY[0x1B2742F10](v1);
  return sub_1B2253470();
}

uint64_t *ValueObservation.shared(in:scheduling:extent:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a4;
  memcpy(__dst, v6, sizeof(__dst));
  v12 = *(a5 + 16);
  v13 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for SharedValueObservation(0, AssociatedTypeWitness, v15, v16);
  v20 = v11;
  v17 = swift_allocObject();
  v17[2] = v12;
  v17[3] = v13;
  memcpy(v17 + 4, v6, 0x70uLL);
  v17[18] = a1;
  v17[19] = a2;
  v17[20] = a3;
  swift_retain_n();
  (*(*(a5 - 8) + 16))(v19, __dst, a5);
  swift_unknownObjectRetain();
  return sub_1B22011AC(a3, &v20, sub_1B2201178, v17);
}

uint64_t sub_1B22010C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__src, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  memcpy(v20, __src, sizeof(v20));
  v18 = type metadata accessor for ValueObservation(0, a9, a10, v17);
  return ValueObservation.start(in:scheduling:onError:onChange:)(a6, a7, a8, a1, a2, a3, a4, v18);
}

uint64_t sub_1B2201210()
{

  return v0;
}

uint64_t sub_1B2201238()
{
  v0 = sub_1B2201210();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t *sub_1B2201268(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *a2;
  v4[6] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *(v4 + 64) = 0;
  v4[9] = 0;
  v10 = *(*v4 + 144);
  v11 = *(v8 + 80);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v12 = sub_1B2253480();
  sub_1B21117B4(v4 + v10, 1, 1, v12);
  v4[2] = a1;
  *(v4 + 24) = v9;
  v4[4] = a3;
  v4[5] = a4;
  type metadata accessor for SharedValueObservation.Client(0, v11, v13, v14);
  v4[7] = sub_1B2252600();
  return v4;
}

uint64_t sub_1B22013E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v75 = a6;
  v11 = *(*a1 + 80);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v12 = sub_1B2253480();
  v13 = sub_1B2252B00();
  v69 = *(v13 - 8);
  v70 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v61 - v14;
  v72 = v12;
  v63 = *(v12 - 8);
  v15 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v71 = &v61 - v18;
  v19 = *(a1 + 64);
  v73 = v11;
  type metadata accessor for SharedValueObservation.Client(0, v11, v20, v21);
  v64 = a2;
  v65 = a4;
  v22 = sub_1B21DFB5C(a2, a3, a4, a5);
  v79 = v22;
  swift_beginAccess();
  sub_1B22526A0();
  v66 = a3;

  v67 = a5;

  v74 = v22;

  sub_1B2252660();
  swift_endAccess();
  *(a1 + 64) = 1;
  if (v19)
  {
    v23 = *(*a1 + 144);
    swift_beginAccess();
    v25 = v69;
    v24 = v70;
    v26 = a1 + v23;
    v27 = v68;
    (*(v69 + 16))(v68, v26, v70);
    v28 = v72;
    if (sub_1B2122A98(v27, 1, v72) == 1)
    {
      (*(v25 + 8))(v27, v24);
    }

    else
    {
      v44 = v63;
      v69 = *(v63 + 32);
      v45 = v71;
      (v69)(v71, v27, v28);
      v70 = *(a1 + 16);
      v46 = v62;
      (*(v44 + 16))(v62, v45, v28);
      v47 = (*(v44 + 80) + 24) & ~*(v44 + 80);
      v48 = (v15 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      v49 = swift_allocObject();
      *(v49 + 16) = v73;
      (v69)(v49 + v47, v46, v28);
      v50 = (v49 + v48);
      v51 = v65;
      v52 = v66;
      v53 = v67;
      *v50 = v64;
      v50[1] = v52;
      v54 = (v49 + ((v48 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v54 = v51;
      v54[1] = v53;

      sub_1B224EAB8(sub_1B2202C00, v49);

      (*(v44 + 8))(v71, v28);
    }
  }

  else
  {
    v29 = type metadata accessor for AnyDatabaseCancellable();
    v30 = *(a1 + 32);
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    v33 = v73;
    *(v32 + 16) = v73;
    *(v32 + 24) = v31;
    v34 = swift_allocObject();
    swift_weakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    *(v35 + 24) = v34;

    v30(v76, sub_1B2202BC8, v32, sub_1B2202BD0, v35);

    v36 = v77;
    v37 = v78;
    v38 = sub_1B21A1628(v76, v77);
    v39 = MEMORY[0x1EEE9AC00](v38);
    v41 = &v61 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v42 + 16))(v41, v39);
    v43 = sub_1B21E9F54(v41, v29, v36, v37);
    sub_1B2113208(v76);
    *(a1 + 72) = v43;
  }

  v55 = swift_allocObject();
  v56 = v74;
  *(v55 + 16) = a1;
  *(v55 + 24) = v56;
  v57 = type metadata accessor for AnyDatabaseCancellable();
  swift_allocObject();
  v58 = AnyDatabaseCancellable.init(cancel:)(sub_1B2202BD8, v55);
  v59 = v75;
  v75[3] = v57;
  v59[4] = &protocol witness table for AnyDatabaseCancellable;
  *v59 = v58;
}

uint64_t sub_1B2201A3C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B2201A9C(a1);
  }

  return result;
}

uint64_t sub_1B2201AF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B2201B50(a1);
  }

  return result;
}

void sub_1B2201BA4(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v10 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v13 = sub_1B2253480();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v19 - v15);
  (*(v17 + 16))(&v19 - v15, a1, v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v16;
    a2(*v16);
  }

  else
  {
    (*(v10 + 32))(v12, v16, a6);
    a4(v12);
    (*(v10 + 8))(v12, a6);
  }
}

uint64_t SharedValueObservation.publisher()@<X0>(void *a1@<X8>)
{
  sub_1B21AF404(j_j___s12GRDBInternal22SharedValueObservationC5start7onError0F6ChangeAA19DatabaseCancellable_pys0G0_pc_yxctF, v1, a1);
}

uint64_t sub_1B2201EB8(uint64_t a1, void *a2)
{
  v4 = *(*a1 + 80);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v5 = sub_1B2253480();
  v6 = sub_1B2252B00();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v21 - v8);
  swift_beginAccess();
  v10 = *(a1 + 56);
  type metadata accessor for SharedValueObservation.Client(0, v4, v11, v12);

  *(a1 + 56) = sub_1B2252600();

  if (*(a1 + 24) == 1)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;

    sub_1B21117B4(v9, 1, 1, v5);
    v13 = *(*a1 + 144);
    swift_beginAccess();
  }

  else
  {
    *v9 = a2;
    swift_storeEnumTagMultiPayload();
    sub_1B21117B4(v9, 0, 1, v5);
    v13 = *(*a1 + 144);
    swift_beginAccess();
    v14 = a2;
  }

  (*(v7 + 40))(a1 + v13, v9, v6);
  swift_endAccess();

  v15 = sub_1B2252590();

  v21 = v15;
  if (v15 != sub_1B2252640())
  {
    do
    {
      v17 = sub_1B2252620();
      sub_1B22525C0();
      if (v17)
      {
        v18 = *(v10 + 32 + 8 * v15);
      }

      else
      {
        v18 = sub_1B2252CF0();
      }

      sub_1B2252690();
      v19 = *(v18 + 16);

      v19(a2);

      v20 = sub_1B2252640();
      v15 = v21;
    }

    while (v21 != v20);
  }
}

uint64_t sub_1B22021CC(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 80);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v5 = sub_1B2253480();
  v6 = sub_1B2252B00();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  (*(*(v4 - 8) + 16))(&v21 - v9, a2, v4, v8);
  swift_storeEnumTagMultiPayload();
  sub_1B21117B4(v10, 0, 1, v5);
  v11 = *(*a1 + 144);
  swift_beginAccess();
  (*(v7 + 40))(&a1[v11], v10, v6);
  swift_endAccess();
  swift_beginAccess();
  v12 = *(a1 + 7);
  type metadata accessor for SharedValueObservation.Client(0, v4, v13, v14);

  v15 = sub_1B2252590();
  v21 = v15;
  if (v15 != sub_1B2252640())
  {
    do
    {
      v17 = sub_1B2252620();
      sub_1B22525C0();
      if (v17)
      {
        v18 = *(v12 + 32 + 8 * v15);
      }

      else
      {
        v18 = sub_1B2252CF0();
      }

      sub_1B2252690();
      v19 = *(v18 + 32);

      v19(a2);

      v20 = sub_1B2252640();
      v15 = v21;
    }

    while (v21 != v20);
  }
}

uint64_t sub_1B2202478(uint64_t a1, uint64_t *a2)
{
  v5 = (a1 + 56);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v6 = sub_1B2253480();
  v7 = sub_1B2252B00();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  swift_beginAccess();
  v11 = sub_1B22526A0();
  WitnessTable = swift_getWitnessTable();
  sub_1B21EA44C(sub_1B2202CF0, a2, v11, WitnessTable);
  if (v2)
  {
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    swift_endAccess();
    v15[1] = *v5;
    swift_getWitnessTable();
    result = sub_1B2252900();
    if (result & 1) != 0 && (*(a1 + 24))
    {
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;

      sub_1B21117B4(v10, 1, 1, v6);
      v14 = *(*a1 + 144);
      swift_beginAccess();
      (*(v8 + 40))(a1 + v14, v10, v7);
      return swift_endAccess();
    }
  }

  return result;
}

id *SharedValueObservation.deinit()
{

  v1 = *(*v0 + 18);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B2253480();
  v2 = sub_1B2252B00();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SharedValueObservation.__deallocating_deinit()
{
  SharedValueObservation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t SharedValueObservation.values(bufferingPolicy:)(uint64_t a1)
{
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v2 = sub_1B2252730();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  sub_1B21AE23C();
}

unint64_t sub_1B2202958()
{
  result = qword_1EB7A2A80[0];
  if (!qword_1EB7A2A80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7A2A80);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SharedValueObservationExtent(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B2202A88(uint64_t a1)
{
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B2253480();
  result = sub_1B2252B00();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_1B2202C00()
{
  v1 = *(v0 + 16);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v2 = *(sub_1B2253480() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v0 + v5);
  v10 = *(v0 + v5 + 8);

  sub_1B2201BA4(v0 + v3, v7, v8, v9, v10, v1);
}

void *ColumnExpression.detached.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = (*(a1 + 16))();
  MEMORY[0x1B2741EB0](v3);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B22546B0;
  v6[0] = 34;
  v6[1] = 0xE100000000000000;
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = MEMORY[0x1E69E7CC8];
  sub_1B2114CC4(v6);
  memcpy((v4 + 32), v6, 0xB8uLL);
  __src[0] = v4;
  sub_1B2153E14(__src);
  return memcpy(a2, __src, 0xA3uLL);
}

uint64_t Column.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Column.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Column.init(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B21139A0(a1, a1[3]);
  *a2 = sub_1B22534D0();
  a2[1] = v4;

  return sub_1B2113208(a1);
}

uint64_t static Column.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B22531F0();
  }
}

uint64_t sub_1B2202FD4(__int128 *a1)
{
  v1 = a1[1];
  __src = *a1;
  v7 = v1;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  sub_1B22037B0(a1, v4);
  sub_1B21AC298();
  if (sub_1B22531B0())
  {
    v4[0] = __src;
    v4[1] = v7;
    v5[0] = v8[0];
    *(v5 + 9) = *(v8 + 9);
    sub_1B21DC4E8(v4);
  }

  else
  {
    swift_allocError();
    memmove(v2, &__src, 0x39uLL);
  }

  return swift_willThrow();
}

void static FTS5CustomTokenizer.tokenizerDescriptor(arguments:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B22546B0;
  *(v6 + 32) = (*(a2 + 16))(a1, a2);
  *(v6 + 40) = v7;

  sub_1B2156C88(v8);
  if (*(v6 + 16))
  {
    *a3 = v6;
  }

  else
  {
    sub_1B2252EC0();
    __break(1u);
  }
}

uint64_t Database.throwingAdd<A>(tokenizer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  result = sub_1B219D2C4(v3);
  if (!v4)
  {
    v8 = result;
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    _s24FTS5TokenizerConstructorCMa();
    v10 = swift_allocObject();
    v10[2] = v3;
    v10[3] = sub_1B2203464;
    v10[4] = v9;
    v15[0] = sub_1B22036AC;
    v15[1] = sub_1B2203810;
    v15[2] = sub_1B22036B0;

    sub_1B22036B4(v15, v8, v10, a2, a3, &v14);
    v11 = v14;
    if (v14)
    {
      v12 = Database.lastErrorMessage.getter();
      if (!v13)
      {
        if (!sqlite3_errstr(v11))
        {
          __break(1u);
        }

        v12 = sub_1B22523F0();
      }

      LODWORD(v16) = v11;
      *(&v16 + 1) = v12;
      v17 = v13;
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
      sub_1B2202FD4(&v16);
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1B2203338(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    return 1;
  }

  v10 = *(a5 + 24);

  v11 = v10(a1, a2, a4, a5);
  v12 = 0;
  *a3 = v11;
  return v12;
}

uint64_t sub_1B220346C(void *a1, uint64_t *a2, int a3, uint64_t a4)
{
  if (!a1)
  {
    return 1;
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  if ((a3 & 0x80000000) == 0)
  {
    if (a3)
    {
      v9 = a3;
      v10 = MEMORY[0x1E69E7CC0];
      do
      {
        if (*a2++)
        {
          v12 = sub_1B22523F0();
          v14 = v13;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B214400C();
            v10 = v17;
          }

          v15 = *(v10 + 16);
          if (v15 >= *(v10 + 24) >> 1)
          {
            sub_1B214400C();
            v10 = v18;
          }

          *(v10 + 16) = v15 + 1;
          v16 = v10 + 16 * v15;
          *(v16 + 32) = v12;
          *(v16 + 40) = v14;
        }

        --v9;
      }

      while (v9);
      goto LABEL_15;
    }

LABEL_14:
    v10 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v19 = a1[3];

    v21 = v19(v20, v10, a4);

    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B22035C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return 1;
  }

  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  result = sub_1B212FED0(a1, ObjectType, &protocol descriptor for FTS5Tokenizer);
  if (!result)
  {
    swift_unknownObjectRelease();
    return 1;
  }

  v18 = a3;
  if (a6)
  {
    v15 = v14;
    v16 = swift_getObjectType();
    v17 = (*(v15 + 8))(a2, &v18, a4, a5, a6, v16, v15);
    swift_unknownObjectRelease();
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B22036B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X8>)
{
  v6 = *(a2 + 8);
  if (v6)
  {
    v9 = result;
    (*(a5 + 16))(a4, a5);
    v11 = sub_1B2252350();

    v12 = v6(a2, v11 + 32, a3, v9, sub_1B220380C);

    *a6 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1B2203814(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v4 = (a3 + 56);
  v5 = *(a3 + 16) + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *(v4 - 2);
    v7 = *(v4 - 1);
    v8 = *v4;
    v24[0] = *(v4 - 3);
    v24[1] = v6;
    v24[2] = v7;
    v25 = v8;
    v9 = sub_1B211779C();
    sub_1B21785C4(v9, v10, v11, v12);
    v13 = v26(v24);
    if (v3)
    {
      v19 = sub_1B211779C();
      sub_1B21505F8(v19, v20, v21, v22);
      return v5 != 0;
    }

    v14 = v13;
    v4 += 32;
    v15 = sub_1B211779C();
    sub_1B21505F8(v15, v16, v17, v18);
  }

  while ((v14 & 1) == 0);
  return v5 != 0;
}

uint64_t DatabaseMigrator.ForeignKeyChecks.hashValue.getter()
{
  v1 = *v0;
  sub_1B2253420();
  MEMORY[0x1B2742F10](v1);
  return sub_1B2253470();
}

GRDBInternal::DatabaseMigrator __swiftcall DatabaseMigrator.init()()
{
  *v0 = 256;
  *(v0 + 8) = MEMORY[0x1E69E7CC0];
  return result;
}

GRDBInternal::DatabaseMigrator __swiftcall DatabaseMigrator.disablingDeferredForeignKeyChecks()()
{
  v2 = *(v1 + 1);
  *v0 = *v1;
  *(v0 + 8) = v2;

  result._migrations._rawValue = v4;
  result.eraseDatabaseOnSchemaChange = v3;
  result.defersForeignKeyChecks = HIBYTE(v3);
  return result;
}

uint64_t DatabaseMigrator.migrate(_:upTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = v4[1];
  v10 = *(v4 + 1);
  ObjectType = swift_getObjectType();
  v13[16] = v8;
  v13[17] = v9;
  v14 = v10;
  v15 = a3;
  v16 = a4;
  return (*(a2 + 32))(sub_1B2205680, v13, MEMORY[0x1E69E7CA8] + 8, ObjectType, a2);
}

void sub_1B2203A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v4 + 1);
  if (v9 != 1)
  {
    goto LABEL_8;
  }

  v13[0] = 0;
  v15 = 0;

  if (v10)
  {
    v12 = 257;
  }

  else
  {
    v12 = 1;
  }

  sub_1B2236ABC(&v15, a1, v12, v11, a1, v13);
  if (!v5)
  {
    if (v13[0] == 1)
    {
      sub_1B2236D30();
    }

LABEL_8:
    v13[0] = v9;
    v13[1] = v10;
    v14 = v11;
    sub_1B21593B0(a1, a2, a3, a4);
  }
}

uint64_t DatabaseMigrator.asyncMigrate(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = v4[1];
  v10 = *(v4 + 1);
  ObjectType = swift_getObjectType();
  sub_1B2113B74();
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v12 + 17) = v9;
  *(v12 + 24) = v10;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  v13 = *(a2 + 40);

  v13(sub_1B2203D58, v12, ObjectType, a2);
}

uint64_t sub_1B2203C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 40 * v6);
    v8 = *(v7 - 1);
    v9 = *v7;

    sub_1B2203A8C(a1, v8, v9, v10);
  }

  return a4(a1, 0);
}

uint64_t DatabaseMigrator.migrations.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + 8);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10(0, v9, 0, a4, a5, a6, a7);
    v10 = v22;
    v11 = (v8 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v14 = *(v22 + 16);
      v15 = *(v22 + 24);

      if (v14 >= v15 >> 1)
      {
        sub_1B2116B10(v15 > 1, v14 + 1, 1, v16, v17, v18, v19);
      }

      *(v22 + 16) = v14 + 1;
      v20 = v22 + 16 * v14;
      *(v20 + 32) = v13;
      *(v20 + 40) = v12;
      v11 += 5;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void DatabaseMigrator.completedMigrations(_:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  DatabaseMigrator.appliedMigrations(_:)(a1);
  if (!v2)
  {
    v52 = v4;
    v9 = *(v3 + 16);
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v54 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10(0, v9, 0, v5, v6, v7, v8);
      v10 = v54;
      v11 = (v3 + 40);
      v12 = v52;
      do
      {
        v13 = *(v11 - 1);
        v14 = *v11;
        v16 = *(v54 + 16);
        v15 = *(v54 + 24);

        if (v16 >= v15 >> 1)
        {
          v18 = sub_1B2112D3C();
          sub_1B2116B10(v18, v16 + 1, 1, v19, v20, v21, v22);
          v12 = v52;
        }

        *(v54 + 16) = v16 + 1;
        v17 = v54 + 16 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        v11 += 5;
        --v9;
      }

      while (v9);
    }

    else
    {
      v12 = v4;
    }

    v23 = 0;
    v24 = 0;
    v53 = *(v12 + 16);
    v25 = MEMORY[0x1E69E7CC0];
    while (v53 != v24)
    {
      if (v24 >= *(v12 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      v26 = *(v10 + 16);
      if (v24 == v26)
      {
        break;
      }

      if (v24 >= v26)
      {
        goto LABEL_34;
      }

      v28 = *(v12 + v23 + 32);
      v27 = *(v12 + v23 + 40);
      v29 = *(v10 + v23 + 32);
      v30 = *(v10 + v23 + 40);
      v31 = v28 == v29 && v27 == v30;
      if (!v31 && (sub_1B22531F0() & 1) == 0)
      {

        break;
      }

      v56 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B216F030(0, v25[2] + 1, 1);
        v12 = v52;
      }

      v33 = v25[2];
      v32 = v25[3];
      v34 = v25;
      if (v33 >= v32 >> 1)
      {
        sub_1B216F030(v32 > 1, v33 + 1, 1);
        v12 = v52;
        v34 = v25;
      }

      v34[2] = v33 + 1;
      v35 = &v34[4 * v33];
      v35[4] = v28;
      v35[5] = v27;
      v35[6] = v29;
      v35[7] = v30;
      v23 = v56 + 16;
      ++v24;
      v25 = v34;
    }

    v40 = v25[2];
    if (v40)
    {
      v55 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10(0, v40, 0, v36, v37, v38, v39);
      v41 = v25 + 5;
      do
      {
        v43 = *(v41 - 1);
        v42 = *v41;
        v45 = *(v55 + 16);
        v44 = *(v55 + 24);

        if (v45 >= v44 >> 1)
        {
          v47 = sub_1B2112D3C();
          sub_1B2116B10(v47, v45 + 1, 1, v48, v49, v50, v51);
        }

        *(v55 + 16) = v45 + 1;
        v46 = v55 + 16 * v45;
        *(v46 + 32) = v43;
        *(v46 + 40) = v42;
        v41 += 4;
        --v40;
      }

      while (v40);
    }

    else
    {
    }
  }
}

uint64_t DatabaseMigrator.hasCompletedMigrations(_:)(uint64_t a1)
{
  v4 = *(v1 + 8);
  DatabaseMigrator.completedMigrations(_:)(a1);
  if (!v2)
  {
    v6 = sub_1B215A638(v5);
    v8 = v7;

    sub_1B215AAC8(v4, &v13);
    v9 = v14;
    if (v14)
    {
      v10 = v13;

      if (v8)
      {
        if (v6 == v10 && v8 == v9)
        {

          v3 = 1;
        }

        else
        {
          v3 = sub_1B22531F0();
        }
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      if (!v8)
      {
        v3 = 1;
        return v3 & 1;
      }

      v3 = 0;
    }
  }

  return v3 & 1;
}

uint64_t sub_1B2204220(int a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v9 = DatabaseMigrator.appliedIdentifiers(_:)(a3);
  if (v4)
  {
    return 0;
  }

  v16 = v9;
  v66 = a1;
  v65 = a3;
  v67 = a4;
  v17 = *(a2 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  v68 = v9;
  if (v17)
  {
    v69 = MEMORY[0x1E69E7CC0];
    sub_1B2111B80(v9, v10, v11, v12, v13, v14, v15);
    v64 = a2;
    v19 = (a2 + 40);
    v20 = v17;
    do
    {
      v21 = *(v19 - 1);
      v22 = *v19;
      v69 = v18;
      v24 = *(v18 + 16);
      v23 = *(v18 + 24);

      if (v24 >= v23 >> 1)
      {
        sub_1B2116B10(v23 > 1, v24 + 1, 1, v25, v26, v27, v28);
        v18 = v69;
      }

      *(v18 + 16) = v24 + 1;
      v29 = v18 + 16 * v24;
      *(v29 + 32) = v21;
      *(v29 + 40) = v22;
      v19 += 5;
      --v20;
    }

    while (v20);
    a2 = v64;
    v16 = v68;
  }

  v30 = sub_1B2140648(v18);
  v31 = sub_1B21414EC(v30, v16);

  if ((v31 & 1) == 0)
  {

LABEL_16:
    *v67 = 1;
    return 0;
  }

  v39 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v69 = MEMORY[0x1E69E7CC0];
    sub_1B2111B80(v32, v33, v34, v35, v36, v37, v38);
    v39 = v69;
    v40 = a2;
    v41 = (a2 + 40);
    do
    {
      v42 = *(v41 - 1);
      v43 = *v41;
      v69 = v39;
      v45 = *(v39 + 16);
      v44 = *(v39 + 24);

      if (v45 >= v44 >> 1)
      {
        v47 = sub_1B2112D3C();
        sub_1B2116B10(v47, v45 + 1, 1, v48, v49, v50, v51);
        v39 = v69;
      }

      *(v39 + 16) = v45 + 1;
      v46 = v39 + 16 * v45;
      *(v46 + 32) = v42;
      *(v46 + 40) = v43;
      v41 += 5;
      --v17;
    }

    while (v17);
    a2 = v40;
    v16 = v68;
  }

  v69 = v39;

  v52 = sub_1B2205218(v39, v16);
  MEMORY[0x1EEE9AC00](v52);
  v63[2] = &v69;
  v55 = sub_1B220539C(sub_1B2205634, v63, v54, v53 & 1);
  v57 = v56;

  if (v57)
  {
    v58 = sub_1B22044FC(v65, v66 & 0x101, a2, v55, v57);

    v59 = sub_1B213DF08();
    sub_1B21C93D8(v59, v58);
    v61 = v60;

    if ((v61 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t sub_1B22044FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a5;
  v39 = a3;
  v38 = a2;
  v6 = sub_1B2251D70();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37[-v11];
  v13 = type metadata accessor for Configuration(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37[-v18];
  sub_1B212392C(a1 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration, &v37[-v18]);
  v20 = *(v14 + 76);

  *&v19[v20] = 0;
  v21 = *(v14 + 80);

  *&v19[v21] = 0;

  *(v19 + 1) = 0xD00000000000001FLL;
  *(v19 + 2) = 0x80000001B226FB30;
  v22 = NSTemporaryDirectory();
  sub_1B22522A0();

  sub_1B2251D20();

  v23 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v24 = [v23 globallyUniqueString];

  sub_1B22522A0();
  sub_1B2251D40();

  v25 = *(v7 + 8);
  v25(v9, v6);
  v26 = sub_1B2251D50();
  v28 = v27;
  sub_1B212392C(v19, v16);
  type metadata accessor for DatabaseQueue();
  v29 = swift_allocObject();
  v30 = v26;
  v31 = v29;
  v32 = v42;
  v33 = DatabaseQueue.init(path:configuration:)(v30, v28, v16);
  if (!v32)
  {
    MEMORY[0x1EEE9AC00](v33);
    v34 = BYTE1(v38);
    v37[-32] = v38 & 1;
    v37[-31] = v34 & 1;
    v35 = v40;
    *&v37[-24] = v39;
    *&v37[-16] = v35;
    *&v37[-8] = v41;
    v31 = sub_1B21FB770(sub_1B2205654, &v37[-48]);
  }

  sub_1B220489C();
  v25(v12, v6);
  sub_1B2133D70(v19);
  return v31;
}

void sub_1B220489C()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v1 = sub_1B2251D30();
  v7[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v7];

  v3 = v7[0];
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    v6 = sub_1B2251D10();

    swift_willThrow();
  }
}

void sub_1B22049B4(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  sub_1B21593B0(a1, a2, a3, a2);
  if (!v4)
  {
    *a4 = sub_1B213DF08();
  }
}

void DatabaseMigrator.migratePublisher(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 1);
  sub_1B2111770();
  v10 = sub_1B2252A30();
  v12 = v10;
  if (v8)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  sub_1B2204AC8(a1, a2, v10, v11 | v7, v9, a3);
}

uint64_t sub_1B2204AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v22 = a6;
  v11 = sub_1B21619D8(&qword_1EB7A2BB8, &qword_1B22604E8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v21 - v12);
  v14 = swift_allocObject();
  *(v14 + 16) = a4 & 1;
  *(v14 + 17) = HIBYTE(a4) & 1;
  *(v14 + 24) = a5;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v23 = sub_1B220569C;
  v24 = v14;

  swift_unknownObjectRetain();
  sub_1B21619D8(&qword_1EB7A2BA0, &unk_1B2260390);
  sub_1B211AB74(&qword_1EB7A2BA8, &qword_1EB7A2BA0, &unk_1B2260390, &unk_1B2262630);
  v15 = sub_1B22520B0();

  v16 = *(v11 + 56);
  v17 = sub_1B2252A00();
  sub_1B21117B4(v13 + v16, 1, 1, v17);
  *v13 = v15;
  v13[1] = a3;
  sub_1B211AB74(&qword_1EB7A2BC0, &qword_1EB7A2BB8, &qword_1B22604E8, &unk_1B225F1B0);
  v18 = a3;
  v19 = sub_1B22520B0();
  result = sub_1B212AC5C(v13, &qword_1EB7A2BB8, &qword_1B22604E8);
  *v22 = v19;
  return result;
}

uint64_t DatabaseMigrator.migratePublisher<A>(_:receiveOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v36 = a3;
  v37 = a6;
  v29 = a2;
  v8 = a5;
  v32 = a4;
  v33 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = sub_1B2252B00();
  sub_1B211280C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = sub_1B2161A20(&qword_1EB7A2B90, &qword_1B2260388);
  v31 = v15;
  v30 = sub_1B211AB74(&qword_1EB7A2B98, &qword_1EB7A2B90, &qword_1B2260388, MEMORY[0x1E695BED8]);
  v38 = v15;
  v39 = a4;
  v40 = v30;
  v41 = v8;
  v16 = type metadata accessor for ReceiveValuesOn(0, &v38);
  sub_1B211280C();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  LOBYTE(v8) = *v6;
  v22 = *(v6 + 1);
  v23 = *(v6 + 8);
  sub_1B2113B74();
  v24 = swift_allocObject();
  *(v24 + 16) = v8;
  *(v24 + 17) = v22;
  *(v24 + 24) = v23;
  *(v24 + 32) = a1;
  *(v24 + 40) = v29;
  v38 = sub_1B22053F8;
  v39 = v24;

  swift_unknownObjectRetain();
  sub_1B21619D8(&qword_1EB7A2BA0, &unk_1B2260390);
  sub_1B211AB74(&qword_1EB7A2BA8, &qword_1EB7A2BA0, &unk_1B2260390, &unk_1B2262630);
  v25 = sub_1B22520B0();

  v38 = v25;
  sub_1B21117B4(v14, 1, 1, AssociatedTypeWitness);
  sub_1B21EFFCC(v36, v14, v31, v32, v30, v33, v21);
  (*(v11 + 8))(v14, v35);

  swift_getWitnessTable();
  v26 = sub_1B22520B0();
  result = (*(v18 + 8))(v21, v16);
  *v37 = v26;
  return result;
}

uint64_t sub_1B2204FD0(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1B220552C;
  *(v12 + 24) = v11;
  ObjectType = swift_getObjectType();
  v14 = swift_allocObject();
  *(v14 + 16) = a3 & 1;
  *(v14 + 17) = HIBYTE(a3) & 1;
  *(v14 + 24) = a4;
  *(v14 + 32) = sub_1B220556C;
  *(v14 + 40) = v12;
  v15 = *(a6 + 40);

  v15(sub_1B2205698, v14, ObjectType, a6);
}

void sub_1B2205120(int a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else
  {
    (a3)(0);
  }
}

uint64_t DatabasePublishers.Migrate.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB5BC8](a1, v7, v9, v8, a2, a3);
}

uint64_t sub_1B2205218(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = a1 + 32;
  v5 = a2 + 56;
LABEL_2:
  while (v3)
  {
    --v3;
    if (*(a2 + 16))
    {
      v6 = (v4 + 16 * v3);
      v8 = *v6;
      v7 = v6[1];
      sub_1B2253420();

      sub_1B2252370();
      v9 = sub_1B2253470();
      v10 = ~(-1 << *(a2 + 32));
      do
      {
        v11 = v9 & v10;
        if (((*(v5 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {

          goto LABEL_2;
        }

        v12 = (*(a2 + 48) + 16 * v11);
        if (*v12 == v8 && v12[1] == v7)
        {
          break;
        }

        v14 = sub_1B22531F0();
        v9 = v11 + 1;
      }

      while ((v14 & 1) == 0);

      break;
    }
  }

  return v3;
}

unint64_t sub_1B2205350(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v2 = *(a2 + 16 * result + 32);

    return v2;
  }

  __break(1u);
  return result;
}

void *sub_1B220539C(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v7 = a3;
  result = a1(&v6, &v7);
  if (!v4)
  {
    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B2205400()
{
  result = qword_1EB7A2BB0;
  if (!qword_1EB7A2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2BB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DatabaseMigrator.ForeignKeyChecks(_BYTE *result, unsigned int a2, unsigned int a3)
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