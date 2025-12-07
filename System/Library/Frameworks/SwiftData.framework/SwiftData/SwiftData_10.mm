uint64_t sub_1974BA1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v46 = a6;
  v44 = a1;
  v45 = a5;
  v42 = a4;
  v43 = a2;
  v55 = a7;
  v13 = sub_19752139C();
  v14 = sub_197521F5C();
  v38 = *(v14 - 8);
  v39 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &Descriptor - v17;
  v37 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v16, v19);
  v40 = &Descriptor - v20;
  Descriptor = type metadata accessor for FetchDescriptor(0, a7, a9, v21);
  v22 = *(Descriptor + 48);
  v41 = a3;
  LOBYTE(a3) = *(a3 + v22);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = a7;
  v52 = AssociatedTypeWitness;
  v53 = a9;
  v54 = AssociatedConformanceWitness;
  v25 = type metadata accessor for DataStoreFetchResult(0, &v51);
  v26 = sub_197401480(v43, a7, a3, *(v42 + *(v25 + 56)), AssociatedTypeWitness, a7, AssociatedConformanceWitness, a9);
  v27 = v26;
  if (*v45 == 1)
  {
    v29 = v38;
    v28 = v39;
    (*(v38 + 16))(v18, v41, v39);
    v30 = v37;
    if ((*(v37 + 48))(v18, 1, v13) == 1)
    {
      (*(v29 + 8))(v18, v28);
      v51 = 0;
      v52 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000005FLL, 0x8000000197527770);
      sub_1975227FC();
      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      v31 = v40;
      (*(v30 + 32))(v40, v18, v13);
      v49 = v27;
      v50 = &v49;
      swift_unknownObjectRetain();
      v32 = v47;
      v33 = sub_19752137C();
      if (v32)
      {
        (*(v30 + 8))(v31, v13);
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        *a11 = v32;
      }

      else
      {
        v35 = v33;
        swift_unknownObjectRelease();
        if (v35)
        {
          v48 = v27;
          swift_beginAccess();
          sub_197521AAC();
          swift_unknownObjectRetain();
          sub_197521A7C();
          swift_endAccess();
          swift_unknownObjectRelease();
          return (*(v30 + 8))(v31, v13);
        }

        else
        {
          (*(v30 + 8))(v31, v13);
          return swift_unknownObjectRelease();
        }
      }
    }
  }

  else
  {
    v50 = v26;
    swift_beginAccess();
    sub_197521AAC();
    swift_unknownObjectRetain();
    sub_197521A7C();
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1974BA630(unint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_197520C4C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v24 - v15;
  v17 = *a1;
  v18 = *a2;
  v20 = *(a3 + *(type metadata accessor for FetchDescriptor(0, a4, a6, v19) + 36));

  if (sub_197521A5C())
  {
    v21 = sub_197521A3C();
    sub_1975219EC();
    if (v21)
    {
      (*(v12 + 16))(v16, v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);
    }

    else
    {
      v23 = sub_19752222C();
      if (v13 != 8)
      {
        __break(1u);
LABEL_12:
        type metadata accessor for ComparisonResult(0);
        v25 = v13;
        result = sub_19752299C();
        __break(1u);
        return result;
      }

      v25 = v23;
      (*(v12 + 16))(v16, &v25, v11);
      swift_unknownObjectRelease();
    }

    v25 = v17;
    v24[1] = v18;
    v13 = sub_197520C2C();
    (*(v12 + 8))(v16, v11);
    if (v13 != -1)
    {
      if (v13 <= 1)
      {

        return 0;
      }

      goto LABEL_12;
    }
  }

  return 1;
}

void sub_1974BA86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = MEMORY[0x19A8E1370]();
  sub_1974BA928(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  objc_autoreleasePoolPop(v17);
  if (v18)
  {
    __break(1u);
  }
}

uint64_t sub_1974BA928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v54 = a8;
  v55 = a4;
  v56 = a5;
  v57 = a6;
  v53 = a3;
  v64 = a2;
  v52 = a9;
  v58 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v14 = v50 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v17);
  v19 = v50 - v18;
  v20 = *(v16 + 16);
  v20(v50 - v18, a1, TupleTypeMetadata2);
  v59 = *v19;
  v21 = v19[8];
  v22 = &v19[*(TupleTypeMetadata2 + 48)];
  v50[0] = *(v11 + 8);
  v50[1] = v11 + 8;
  (v50[0])(v22, AssociatedTypeWitness);
  v20(v19, a1, TupleTypeMetadata2);
  v23 = v64;
  sub_1974028C8(*v19, v19[8]);
  v24 = *(v11 + 32);
  v25 = &v19[*(TupleTypeMetadata2 + 48)];
  v51 = AssociatedTypeWitness;
  v24(v14, v25, AssociatedTypeWitness);
  if (*(v23 + 16))
  {
    v26 = *(v23 + 16);
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v26 = Strong;
  }

  v28 = v59;
  v29 = *(v26 + 16);

  v30 = *(v29 + 72);

  if (v21)
  {
    if (v21 == 1)
    {
      v32 = v28[9];
      v31 = v28[10];
    }

    else
    {
      v32 = sub_19750A588();
      v31 = v35;
    }
  }

  else
  {
    v33 = [v28 entityName];
    v32 = sub_1975217BC();
    v31 = v34;
  }

  if (!*(v30 + 16))
  {

    goto LABEL_15;
  }

  v36 = sub_1973F4028(v32, v31);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  v39 = *(*(v30 + 56) + 8 * v36);

  v40 = *(v39 + 144);
  v41 = *(v39 + 152);

  if (v40)
  {
    sub_1974BAE10(v40, v53, v23, v14, v55, v56, v57, v58, v40, v54, v52, v41);
    sub_1974028C8(v28, v21);
    return (v50[0])(v14, v51);
  }

LABEL_16:
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197527710);
  v60 = v28;
  v61 = v21;
  sub_19752235C();
  MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197527750);
  Strong = *(v23 + 16);
  if (!Strong)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v43 = Strong;
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  v43 = Strong;
LABEL_22:
  v44 = *(v43 + 16);

  v45 = *(v44 + 64);

  v46 = type metadata accessor for Schema.Entity();
  v47 = MEMORY[0x19A8E0100](v45, v46);
  v49 = v48;

  MEMORY[0x19A8DFF80](v47, v49);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974BAE10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(a5 + *(type metadata accessor for FetchDescriptor(0, a7, a10, a4) + 48));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28[0] = a7;
  v28[1] = AssociatedTypeWitness;
  v28[2] = a10;
  v28[3] = AssociatedConformanceWitness;
  v17 = type metadata accessor for DataStoreFetchResult(0, v28);
  v18 = sub_197401480(a4, a1, v14, *(a6 + *(v17 + 56)), AssociatedTypeWitness, a9, AssociatedConformanceWitness, a12);
  swift_beginAccess();
  v19 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_197433F80(0, v19[2] + 1, 1, v19);
    *(a2 + 16) = v19;
  }

  v21 = v19[2];
  v22 = v19[3];
  if (v21 >= v22 >> 1)
  {
    v24 = v19[2];
    v19 = sub_197433F80((v22 > 1), v21 + 1, 1, v19);
    v21 = v24;
    *(a2 + 16) = v19;
  }

  sub_19743F3E4(v21, v18, (a2 + 16), a9, a12);
  *(a2 + 16) = v19;
  return swift_endAccess();
}

void sub_1974BAFC4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v45 = a2;
  v40 = a5;
  Descriptor = type metadata accessor for FetchDescriptor(0, a3, a4, a4);
  v44 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor, v11);
  v43 = &v39 - v12;
  v13 = type metadata accessor for EditingState(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for DataStoreBatchFetchRequest(0, a3, a4, v17);
  v41 = *(Request - 8);
  v42 = Request;
  MEMORY[0x1EEE9AC00](Request, v19);
  v21 = &v39 - v20;
  sub_197407130();
  if (*(a1 + *(Descriptor + 48)))
  {
    if (qword_1EAF2AD18 == -1)
    {
LABEL_3:
      v22 = byte_1EAF2B6C8;
      v24 = qword_1EAF2B6D0;
      v23 = unk_1EAF2B6D8;
      sub_19744BE3C();
      swift_allocError();
      *v25 = v22;
      *(v25 + 8) = v24;
      *(v25 + 16) = v23;
      swift_willThrow();

      return;
    }

LABEL_17:
    swift_once();
    goto LABEL_3;
  }

  v26 = a1;
  v50 = MEMORY[0x1E69E7CC0];
  v27 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  sub_197404E70(v5 + v27, v16);
  v28 = v43;
  (*(v44 + 16))(v43, v26, Descriptor);
  sub_19749E874(v16, v28, v45, a3, a4, v21);
  v29 = *(v5 + 16);
  v39 = v5;
  v46 = v21;
  if (v29)
  {
    v30 = v29;
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      __break(1u);
      return;
    }

    v30 = Strong;
  }

  v32 = a3;
  swift_beginAccess();
  v33 = *(v30 + 48);

  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = 0;
    v36 = v33 + 32;
    while (v35 < *(v33 + 16))
    {
      sub_1974047F8(v36, v47, &qword_1EAF2AF38, &qword_19752C6A8);
      sub_1974BB3EC(v47, v48, v49, &v50, v46, v32, a4);
      if (v6)
      {

        sub_1974050A8(v47, &qword_1EAF2AF38, &qword_19752C6A8);
        (*(v41 + 8))(v46, v42);
        goto LABEL_15;
      }

      ++v35;
      sub_1974050A8(v47, &qword_1EAF2AF38, &qword_19752C6A8);
      v36 += 56;
      if (v34 == v35)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_13:

  v37 = v50;

  v38 = v39;

  sub_19751E8C0(v37, v38, v45, 0, v40);
  (*(v41 + 8))(v46, v42);
LABEL_15:
}

uint64_t sub_1974BB3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a2)
  {
    swift_unknownObjectRetain();
    v13 = sub_19746A79C(a5, a6, a7, v12);
    if (!v7)
    {
      sub_1974EE6D0(v13);
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000027, 0x80000001975275E0);
    MEMORY[0x19A8DFF80](0xD000000000000013, 0x8000000197527610);
    MEMORY[0x19A8DFF80](0xD000000000000040, 0x8000000197527630);
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974BB550@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v10 = sub_1974BFC08(MEMORY[0x1E69E7CC0]);
  if (a4 & 1 | (a3 < 1))
  {
    a3 = a1[2];
  }

  if (!a3)
  {
    goto LABEL_23;
  }

  v11 = v10;
  v33 = a2;
  v32 = a1[2];
  sub_1974C1878(0, v32, a3, a1, a3);
  v13 = v12;

  v14 = *(v13 + 16);
  if (!v14)
  {
LABEL_19:

    *a5 = v11;
    a5[1] = v33;
    a5[2] = a3;
    a5[3] = v32;
    return result;
  }

  v15 = 0;
  while (v15 < *(v13 + 16))
  {
    v16 = *(v13 + 32 + 8 * v15);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_19749ED9C(v15, v18);
    v21 = v11[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_21;
    }

    v25 = v20;
    if (v11[3] < v24)
    {
      sub_197479384(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_19749ED9C(v15, v26);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }

LABEL_14:
      if (v25)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v30 = v19;
    sub_19747BF8C();
    v19 = v30;
    if (v25)
    {
LABEL_6:
      *(v11[7] + 8 * v19) = v16;

      goto LABEL_7;
    }

LABEL_15:
    v11[(v19 >> 6) + 8] |= 1 << v19;
    *(v11[6] + 8 * v19) = v15;
    *(v11[7] + 8 * v19) = v16;
    v28 = v11[2];
    v23 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v23)
    {
      goto LABEL_22;
    }

    v11[2] = v29;
LABEL_7:
    if (v14 == ++v15)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1975229CC();
  __break(1u);
  return result;
}

uint64_t sub_1974BB758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Descriptor = type metadata accessor for FetchDescriptor(0, a2, a3, a4);
  v35 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor, v9);
  v11 = &v33[-v10];
  v12 = type metadata accessor for EditingState(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v33[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Request = type metadata accessor for DataStoreFetchRequest(0, a2, a3, v16);
  v37 = *(Request - 8);
  v38 = Request;
  MEMORY[0x1EEE9AC00](Request, v18);
  v20 = &v33[-v19];
  v39 = v4;
  sub_197407130();
  v34 = *(a1 + *(Descriptor + 48));
  if (v34 == 1 && (v40[0] = *(a1 + *(Descriptor + 36)), sub_197520C4C(), sub_197521AAC(), swift_getWitnessTable(), (sub_197521D0C() & 1) == 0))
  {
    if (qword_1EAF2AD30 != -1)
    {
      swift_once();
    }

    v28 = byte_1EAF2B710;
    v29 = qword_1EAF2B718;
    v25 = unk_1EAF2B720;
    sub_19744BE3C();
    swift_allocError();
    *v30 = v28;
    *(v30 + 8) = v29;
    *(v30 + 16) = v25;
    swift_willThrow();
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
    v21 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    v22 = v39;
    swift_beginAccess();
    sub_197404E70(v22 + v21, v15);
    (*(v35 + 16))(v11, a1, Descriptor);
    v23 = v22;
    v24 = sub_197407438(v15, v11, a2, a3, v20);
    v25 = a1;
    MEMORY[0x1EEE9AC00](v24, v26);
    *&v33[-32] = a2;
    *&v33[-24] = a3;
    *&v33[-16] = &v41;
    *&v33[-8] = v20;
    v27 = v36;
    sub_1974072C4(sub_1974C1DF0, &v33[-48], a2, a3);
    if (!v27)
    {
      if ((v34 & 1) != 0 && *(v23 + 48) == 1)
      {
        sub_1974BD55C(a1, v41, a2, a3);
        v25 = v32;
      }

      else
      {
        v25 = v41;
      }
    }

    (*(v37 + 8))(v20, v38);
  }

  return v25;
}

void sub_1974BBB6C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v33 = a5;
  v34 = a2;
  Descriptor = type metadata accessor for FetchDescriptor(0, a3, a4, a4);
  v35 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor, v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for EditingState(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for DataStoreFetchRequest(0, a3, a4, v17);
  v36 = *(Request - 8);
  v37 = Request;
  MEMORY[0x1EEE9AC00](Request, v19);
  v21 = &v32 - v20;
  sub_197407130();
  if (*(a1 + *(Descriptor + 48)))
  {
    if (qword_1EAF2AD18 != -1)
    {
      swift_once();
    }

    v22 = byte_1EAF2B6C8;
    v24 = qword_1EAF2B6D0;
    v23 = unk_1EAF2B6D8;
    sub_19744BE3C();
    swift_allocError();
    *v25 = v22;
    *(v25 + 8) = v24;
    *(v25 + 16) = v23;
    swift_willThrow();
  }

  else
  {
    v26 = a1;
    v39 = MEMORY[0x1E69E7CC0];
    v27 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    sub_197404E70(v5 + v27, v16);
    (*(v35 + 16))(v12, v26, Descriptor);
    v28 = sub_197407438(v16, v12, a3, a4, v21);
    MEMORY[0x1EEE9AC00](v28, v29);
    *(&v32 - 4) = a3;
    *(&v32 - 3) = a4;
    *(&v32 - 2) = &v39;
    *(&v32 - 1) = v21;
    v30 = v38;
    sub_1974072C4(sub_1974C0BE8, (&v32 - 6), a3, a4);
    if (!v30)
    {
      v31 = sub_1974AE8BC(v39);

      sub_1974BB550(v31, v5, v34, 0, v33);
    }

    (*(v36 + 8))(v21, v37);
  }
}

char *sub_1974BBEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 96))(a4, a5, a6, ObjectType, a2);
  if (!v6)
  {
    return sub_19744673C(result);
  }

  return result;
}

void sub_1974BBF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v117 = a4;
  v116 = a2;
  v109 = a1;
  v119 = a3;
  v125 = a3;
  v111 = sub_19752139C();
  v5 = sub_197521F5C();
  v108 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v101 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v100 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v118 = (v12 + 16);
  swift_beginAccess();
  v13 = *(v4 + 104);
  swift_beginAccess();
  v102 = v4;

  v15 = sub_19743E380(v14, v13);
  v16 = v15 + 56;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 56);
  v20 = (v17 + 63) >> 6;
  v114 = v15;

  v21 = 0;
  *&v113 = v11;
  while (v19)
  {
    v22 = v21;
    v23 = v119;
LABEL_12:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v120 = *(*(v114 + 48) + ((v22 << 10) | (16 * v24)));
    v112 = v120;
    v25 = v120;
    swift_unknownObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      sub_1974BCF24(v12, v116, v23, v117);
      swift_beginAccess();
      if (*(v12 + 16))
      {
        sub_1974580E0(v25, *(&v112 + 1));
        swift_endAccess();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_endAccess();
      }
    }

    swift_unknownObjectRelease();
    v21 = v22;
    v11 = v113;
  }

  v23 = v119;
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (v22 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v22);
    ++v21;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  v26 = v114;

  v27 = v102;
  swift_beginAccess();
  v28 = *(v27 + 88);
  swift_beginAccess();

  v30 = sub_19743E380(v29, v28);
  if (*(v26 + 16) <= *(v30 + 16) >> 3)
  {
    *&v120 = v30;
    sub_1974AA194(v26);
    v31 = v120;
  }

  else
  {
    v31 = sub_1974AA2BC(v26, v30);
  }

  v32 = v11;
  v33 = 0;
  v34 = v31 + 56;
  v35 = 1 << *(v31 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v31 + 56);
  v38 = (v35 + 63) >> 6;
  v107 = (v108 + 16);
  v106 = v111 - 8;
  v103 = (v108 + 8);
  v115 = v12;
  v104 = v5;
  v108 = v31;
  if (v37)
  {
    while (1)
    {
      v39 = v33;
      v40 = v119;
LABEL_26:
      v41 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v120 = *(*(v31 + 48) + ((v39 << 10) | (16 * v41)));
      v112 = v120;
      v42 = v120;
      swift_unknownObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
      if (swift_dynamicCast())
      {
        v105 = v42;
        v43 = v124;
        (*v107)(v32, v109, v5);
        v44 = v5;
        v45 = v111;
        v46 = *(v111 - 8);
        if ((*(v46 + 48))(v32, 1, v111) == 1)
        {
          (*v103)(v32, v44);
          v47 = v115;
          v48 = v117;
          v5 = v44;
          v49 = v119;
          v42 = v105;
LABEL_35:
          sub_1974BCF24(v47, v116, v49, v48);
          swift_beginAccess();
          if (*(v47 + 16))
          {
            swift_unknownObjectRetain();
            sub_1974327FC(&v124, v42, *(&v112 + 1));
            swift_endAccess();
            swift_unknownObjectRelease();
          }

          else
          {
            swift_endAccess();
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v33 = v39;
          v32 = v113;
          goto LABEL_41;
        }

        v124 = v43;
        *&v120 = &v124;
        v100 = v43;
        swift_unknownObjectRetain();
        v53 = v110;
        v54 = sub_19752137C();
        v110 = v53;
        if (v53)
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          (*(v46 + 8))(v32, v45);
          goto LABEL_80;
        }

        v55 = v54;
        swift_unknownObjectRelease();
        (*(v46 + 8))(v32, v45);
        v42 = v105;
        if (v55)
        {
          v47 = v115;
          v49 = v119;
          v48 = v117;
          v5 = v104;
          goto LABEL_35;
        }

        v50 = v32;
        swift_unknownObjectRelease();
        v40 = v119;
        v5 = v104;
      }

      else
      {
        v50 = v32;
      }

      v51 = v40;
      v52 = v115;
      sub_1974BCF24(v115, v116, v51, v117);
      swift_beginAccess();
      if (*(v52 + 16))
      {
        sub_1974580E0(v42, *(&v112 + 1));
        swift_endAccess();
        swift_unknownObjectRelease();
        v32 = v50;
        swift_unknownObjectRelease();
        v33 = v39;
LABEL_41:
        v31 = v108;
        if (!v37)
        {
          break;
        }
      }

      else
      {
        swift_endAccess();
        swift_unknownObjectRelease();
        v33 = v39;
        v31 = v108;
        v32 = v50;
        if (!v37)
        {
          break;
        }
      }
    }
  }

  v40 = v119;
  while (1)
  {
    v39 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_82;
    }

    if (v39 >= v38)
    {
      break;
    }

    v37 = *(v34 + 8 * v39);
    ++v33;
    if (v37)
    {
      goto LABEL_26;
    }
  }

  v56 = v102;
  swift_beginAccess();
  v57 = *(v56 + 72);
  swift_beginAccess();

  v59 = sub_19743E380(v58, v57);
  if (*(v114 + 16) <= *(v59 + 16) >> 3)
  {
    *&v120 = v59;
    sub_1974AA194(v114);
    v63 = v118;
    v40 = v119;

    v61 = v120;
    v62 = v101;
  }

  else
  {
    v60 = sub_1974AA2BC(v114, v59);

    v61 = v60;
    v62 = v101;
    v63 = v118;
  }

  v64 = 0;
  v65 = v61 + 56;
  v66 = 1 << *(v61 + 32);
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & *(v61 + 56);
  v69 = (v66 + 63) >> 6;
  v114 = v61;
  if (v68)
  {
    while (2)
    {
      v70 = v64;
LABEL_54:
      v71 = __clz(__rbit64(v68));
      v68 &= v68 - 1;
      v120 = *(*(v61 + 48) + ((v70 << 10) | (16 * v71)));
      v113 = v120;
      v72 = v120;
      swift_unknownObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_65;
      }

      v108 = v72;
      v73 = v123[0];
      v74 = v104;
      (*v107)(v62, v109, v104);
      v75 = v111;
      v76 = *(v111 - 8);
      v77 = (*(v76 + 48))(v62, 1, v111);
      *&v112 = v73;
      if (v77 == 1)
      {
        (*v103)(v62, v74);
        v78 = v115;
        v40 = v119;
        goto LABEL_61;
      }

      v123[0] = v73;
      *&v120 = v123;
      swift_unknownObjectRetain();
      v79 = v110;
      v80 = sub_19752137C();
      v110 = v79;
      if (v79)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        (*(v76 + 8))(v62, v75);
        goto LABEL_80;
      }

      v81 = v80;
      swift_unknownObjectRelease();
      (*(v76 + 8))(v62, v75);
      if (v81)
      {
        v78 = v115;
        v40 = v119;
        v62 = v101;
LABEL_61:
        sub_1974BCF24(v78, v116, v40, v117);
        v63 = v118;
        swift_beginAccess();
        if (*(v78 + 16))
        {
          v82 = v108;
          swift_unknownObjectRetain();
          sub_1974327FC(v123, v82, *(&v113 + 1));
          v63 = v118;
          v40 = v119;
          swift_endAccess();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_endAccess();
        }

        swift_unknownObjectRelease();
LABEL_65:
        swift_unknownObjectRelease();
        v64 = v70;
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v64 = v70;
        v40 = v119;
        v62 = v101;
        v63 = v118;
      }

      v61 = v114;
      if (!v68)
      {
        break;
      }

      continue;
    }
  }

  while (1)
  {
    v70 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      break;
    }

    if (v70 >= v69)
    {

      v83 = swift_beginAccess();
      if (*v63)
      {
        *&v120 = *v63;
        MEMORY[0x1EEE9AC00](v83, v84);
        v85 = v117;
        *(&v100 - 2) = v40;
        *(&v100 - 1) = v85;

        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B678, &unk_19752F340);
        v87 = sub_19742A020(&qword_1ED7C7138, &qword_1EAF2B678, &unk_19752F340, MEMORY[0x1E69E6518]);
        v89 = sub_1974048EC(sub_1974C1C48, (&v100 - 4), v86, v40, MEMORY[0x1E69E73E0], v87, MEMORY[0x1E69E7410], v88);

        Descriptor = type metadata accessor for FetchDescriptor(0, v40, v85, v90);
        v92 = v109;
        sub_197520C4C();
        v93 = sub_197521A5C();
        if (v93 > 0)
        {
          *&v120 = v89;
          MEMORY[0x1EEE9AC00](v93, v94);
          *(&v100 - 4) = v40;
          *(&v100 - 3) = v85;
          *(&v100 - 2) = v92;
          sub_197521AAC();

          swift_getWitnessTable();
          v92 = v109;
          sub_19752194C();
          swift_bridgeObjectRelease_n();
        }

        v95 = v92 + *(Descriptor + 40);
        if (*(v95 + 8) == 1 || *v95 < 1 || (v96 = *v95, v96 >= sub_197521A5C()))
        {
LABEL_80:
        }

        else
        {
          *&v120 = sub_197521AEC();
          *(&v120 + 1) = v97;
          v121 = v98;
          v122 = v99;
          sub_19752203C();
          swift_getWitnessTable();
          sub_197521ADC();
        }
      }

      else
      {
      }

      return;
    }

    v68 = *(v65 + 8 * v70);
    ++v64;
    if (v68)
    {
      goto LABEL_54;
    }
  }

LABEL_83:
  __break(1u);
}

uint64_t sub_1974BCF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (!*(a1 + 16))
  {
    v15[5] = a2;
    MEMORY[0x1EEE9AC00](result, v9);
    v15[2] = a3;
    v15[3] = a4;
    v10 = sub_197521AAC();
    WitnessTable = swift_getWitnessTable();
    v13 = sub_1974048EC(sub_1974C1C8C, v15, v10, &type metadata for ModelContext.AnyPersistentObject, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v12);
    v14 = sub_1974F9648(v13);

    swift_beginAccess();
    *(a1 + 16) = v14;
  }

  return result;
}

uint64_t sub_1974BD058()
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
  return swift_dynamicCast();
}

uint64_t sub_1974BD0D0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_197520C4C();
  v11 = *(v10 - 8);
  v24 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v24 - v13;
  v15 = *a1;
  v25 = *a2;
  v26 = v15;
  v17 = *(a3 + *(type metadata accessor for FetchDescriptor(0, a4, a5, v16) + 36));
  v27 = (v11 + 16);

  v18 = 0;
  while (1)
  {
    v19 = sub_197521A5C();
    v20 = v18 != v19;
    if (v18 == v19)
    {
      goto LABEL_14;
    }

    v21 = sub_197521A3C();
    sub_1975219EC();
    if (v21)
    {
      (*(v11 + 16))(v14, v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v18, v10);
      if (__OFADD__(v18, 1))
      {
        break;
      }

      goto LABEL_5;
    }

    v22 = sub_19752222C();
    if (v24 != 8)
    {
      __break(1u);
      goto LABEL_16;
    }

    v29 = v22;
    (*v27)(v14, &v29, v10);
    swift_unknownObjectRelease();
    if (__OFADD__(v18, 1))
    {
      break;
    }

LABEL_5:
    v29 = v26;
    v28 = v25;
    a2 = sub_197520C2C();
    (*(v11 + 8))(v14, v10);
    type metadata accessor for ComparisonResult(0);
    ++v18;
    if (a2)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  if (a2 == -1)
  {
LABEL_14:

    return v20;
  }

  if (a2 == 1)
  {
    v20 = 0;
    goto LABEL_14;
  }

LABEL_16:
  v29 = a2;
  result = sub_19752299C();
  __break(1u);
  return result;
}

void sub_1974BD55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v105 = a1;
  v92 = a4;
  v100 = a2;
  v109 = a3;
  v124 = a3;
  v108 = sub_19752139C();
  v103 = sub_197521F5C();
  v98 = *(v103 - 8);
  v6 = MEMORY[0x1EEE9AC00](v103 - 8, v5);
  v93 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v96 = &v91 - v9;
  v123 = 0;
  swift_beginAccess();
  v10 = *(v4 + 104);
  swift_beginAccess();
  v94 = v4;

  v12 = sub_19743E380(v11, v10);
  v13 = v12 + 56;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 56);

  swift_beginAccess();
  v17 = 0;
  v18 = (v14 + 63) >> 6;
  for (i = v12; v16; v12 = i)
  {
LABEL_10:
    while (1)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v110[0] = *(*(v12 + 48) + ((v17 << 10) | (16 * v20)));
      v107 = v110[0];
      swift_unknownObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
      if (swift_dynamicCast())
      {
        break;
      }

      swift_unknownObjectRelease();
      if (!v16)
      {
        goto LABEL_6;
      }
    }

    swift_unknownObjectRelease();
    if (!v123)
    {

      v22 = sub_1974F96E0(v21);

      v123 = v22;
    }

    swift_beginAccess();
    ObjectType = swift_getObjectType();
    PersistentModel.persistentModelID.getter(ObjectType, *(&v107 + 1), &v119);
    v24 = v119;
    v25 = v120;
    sub_19751C33C(v119, v120, &v121);
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1974028C8(v24, v25);
    sub_1974A1014(v121, v122);
  }

  while (1)
  {
LABEL_6:
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (v19 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v19);
    ++v17;
    if (v16)
    {
      v17 = v19;
      goto LABEL_10;
    }
  }

  v26 = v94;
  swift_beginAccess();
  v27 = *(v26 + 88);
  swift_beginAccess();

  v29 = sub_19743E380(v28, v27);
  if (*(v12 + 16) <= *(v29 + 16) >> 3)
  {
    *&v110[0] = v29;
    sub_1974AA194(v12);
    v30 = *&v110[0];
  }

  else
  {
    v30 = sub_1974AA2BC(v12, v29);
  }

  v31 = v30 + 56;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v30 + 56);
  swift_beginAccess();
  v35 = 0;
  v36 = (v32 + 63) >> 6;
  v37 = v108;
  v101 = v108 - 8;
  v102 = (v98 + 16);
  v95 = (v98 + 8);
  v104 = v30;
  while (v34)
  {
LABEL_31:
    v42 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v110[0] = *(*(v30 + 48) + ((v35 << 10) | (16 * v42)));
    v107 = v110[0];
    v43 = *&v110[0];
    swift_unknownObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
    if (swift_dynamicCast())
    {
      v98 = v43;
      v44 = v37;
      v45 = v117;
      v46 = v103;
      v47 = v96;
      (*v102)(v96, v105, v103);
      v97 = *(v44 - 8);
      if ((*(v97 + 48))(v47, 1, v44) == 1)
      {
        (*v95)(v47, v46);
LABEL_36:
        if (!v123)
        {

          v52 = sub_1974F96E0(v51);

          v123 = v52;
        }

        swift_beginAccess();
        v53 = swift_getObjectType();
        PersistentModel.persistentModelID.getter(v53, *(&v107 + 1), &v115);
        sub_19742AE44(&v117, v115, v116);
        swift_endAccess();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_1974028C8(v117, v118);
        goto LABEL_25;
      }

      v117 = v45;
      *&v110[0] = &v117;
      swift_unknownObjectRetain();
      v48 = v106;
      v49 = sub_19752137C();
      v106 = v48;
      if (v48)
      {
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        (*(v97 + 8))(v47, v44);
LABEL_71:

        return;
      }

      v50 = v49;
      swift_unknownObjectRelease();
      (*(v97 + 8))(v47, v44);
      if (v50)
      {
        goto LABEL_36;
      }

      swift_unknownObjectRelease();
    }

    if (!v123)
    {

      v55 = sub_1974F96E0(v54);

      v123 = v55;
    }

    swift_beginAccess();
    v38 = swift_getObjectType();
    PersistentModel.persistentModelID.getter(v38, *(&v107 + 1), &v115);
    v39 = v115;
    v40 = v116;
    sub_19751C33C(v115, v116, &v117);
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1974028C8(v39, v40);
    sub_1974A1014(v117, v118);
LABEL_25:
    v37 = v108;
    v30 = v104;
  }

  while (1)
  {
    v41 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_75;
    }

    if (v41 >= v36)
    {
      break;
    }

    v34 = *(v31 + 8 * v41);
    ++v35;
    if (v34)
    {
      v35 = v41;
      goto LABEL_31;
    }
  }

  v56 = v94;
  swift_beginAccess();
  v57 = *(v56 + 72);
  swift_beginAccess();

  v59 = sub_19743E380(v58, v57);
  if (*(i + 16) <= *(v59 + 16) >> 3)
  {
    *&v110[0] = v59;
    sub_1974AA194(i);

    v60 = *&v110[0];
  }

  else
  {
    v60 = sub_1974AA2BC(i, v59);
  }

  v61 = v60 + 56;
  v62 = 1 << *(v60 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v60 + 56);
  swift_beginAccess();
  v65 = 0;
  v66 = (v62 + 63) >> 6;
  v67 = v108;
  v97 = v60;
  while (v64)
  {
LABEL_51:
    v69 = __clz(__rbit64(v64));
    v64 &= v64 - 1;
    v110[0] = *(*(v60 + 48) + ((v65 << 10) | (16 * v69)));
    v107 = v110[0];
    v70 = *&v110[0];
    swift_unknownObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
    if ((swift_dynamicCast() & 1) == 0)
    {
      swift_unknownObjectRelease();
      continue;
    }

    i = v70;
    v71 = v111;
    v72 = v103;
    v73 = v93;
    (*v102)(v93, v105, v103);
    v98 = *(v67 - 8);
    v74 = (*(v98 + 48))(v73, 1, v67);
    v104 = v71;
    if (v74 == 1)
    {
      (*v95)(v73, v72);
      v60 = v97;
      if (!v123)
      {
        goto LABEL_54;
      }

      goto LABEL_55;
    }

    v111 = v71;
    *&v110[0] = &v111;
    swift_unknownObjectRetain();
    v78 = v106;
    v79 = sub_19752137C();
    v106 = v78;
    if (v78)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      (*(v98 + 8))(v73, v67);
      goto LABEL_71;
    }

    v80 = v79;
    swift_unknownObjectRelease();
    (*(v98 + 8))(v73, v67);
    if (v80)
    {
      v60 = v97;
      if (!v123)
      {
LABEL_54:

        v76 = sub_1974F96E0(v75);

        v123 = v76;
      }

LABEL_55:
      swift_beginAccess();
      v77 = swift_getObjectType();
      PersistentModel.persistentModelID.getter(v77, *(&v107 + 1), &v113);
      sub_19742AE44(&v111, v113, v114);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_1974028C8(v111, v112);
      v67 = v108;
      continue;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v67 = v108;
    v60 = v97;
  }

  while (1)
  {
    v68 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v68 >= v66)
    {

      swift_beginAccess();
      v82 = v123;
      if (!v123)
      {

        return;
      }

      v83 = *(v123 + 16);
      if (v83)
      {
        v84 = sub_1974D1EFC(*(v123 + 16), 0);
        v85 = sub_1974D373C(v110, (v84 + 4), v83, v82);
        v86 = *&v110[0];

        sub_197458C2C(v86);
        if (v85 != v83)
        {
          goto LABEL_77;
        }

        v87 = v84;
      }

      else
      {
        v87 = MEMORY[0x1E69E7CC0];
      }

      Descriptor = type metadata accessor for FetchDescriptor(0, v109, v92, v81);
      v89 = v105 + *(Descriptor + 40);
      if ((*(v89 + 8) & 1) == 0)
      {
        v90 = *v89;
        if (v90 >= 1 && v90 < *(v87 + 16))
        {
          sub_1974F64F8(v87, v87 + 32, 0, (2 * v90) | 1);

          return;
        }
      }

      goto LABEL_71;
    }

    v64 = *(v61 + 8 * v68);
    ++v65;
    if (v64)
    {
      v65 = v68;
      goto LABEL_51;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
}

void sub_1974BE168(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_197404860(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_1974028B8(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_1974050A8(v20, &qword_1EAF2B930, &unk_19752FC38);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

id sub_1974BE358(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1974BE3F0(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

SwiftData::ModelContext::NotificationKey_optional __swiftcall ModelContext.NotificationKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1975224CC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1974BE4B8()
{
  sub_197522A5C();
  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_1974BE5AC(uint64_t a1)
{
  sub_19752180C();
}

uint64_t sub_1974BE68C(uint64_t a1)
{
  sub_197522A5C();
  sub_19752180C();

  return sub_197522A9C();
}

void sub_1974BE788(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006C6C41646574;
  v4 = 0x6164696C61766E69;
  v5 = 0xE800000000000000;
  v6 = 0x6465747265736E69;
  v7 = 0x64657461647075;
  if (v2 != 3)
  {
    v7 = 0x646574656C6564;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x8000000197523740;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1974BE838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  if (*(v3 + 16))
  {
    v7 = *(v3 + 16);
  }

  else
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
      goto LABEL_13;
    }

    v7 = result;
  }

  swift_beginAccess();
  v9 = *(v7 + 48);

  v10 = *(v9 + 16);
  if (!v10)
  {
  }

  v11 = 0;
  v12 = v9 + 32;
  while (v11 < *(v9 + 16))
  {
    sub_1974047F8(v12, v13, &qword_1EAF2AF38, &qword_19752C6A8);
    sub_1974BE99C(v13, v13[5], v13[6], a1, a2, v14);
    if (v4)
    {

      return sub_1974050A8(v13, &qword_1EAF2AF38, &qword_19752C6A8);
    }

    ++v11;
    result = sub_1974050A8(v13, &qword_1EAF2AF38, &qword_19752C6A8);
    v12 += 56;
    if (v10 == v11)
    {
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1974BE99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a2;
  v14 = a3;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B980, &qword_19752FCC8);
  if (swift_dynamicCast())
  {
    sub_197402778(v11, v15);
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    DynamicType = swift_getDynamicType();
    sub_1974BEAB4(DynamicType, v15, a4, a5, DynamicType, a6, v15[4]);
    return __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    return sub_1974050A8(v11, &qword_1EAF2B988, &unk_19752FCD0);
  }
}

uint64_t sub_1974BEAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a5 - 8);
  v13 = MEMORY[0x1EEE9AC00](a2, a2);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1973FFC48(v13, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B980, &qword_19752FCC8);
  swift_dynamicCast();
  if ((*(a7 + 24))(a5, a7) == a4)
  {
    sub_1974BEC20(a4, a3, v15, a4, a5, a4, a6, a7, a6);
  }

  return (*(v12 + 8))(v15, a5);
}

uint64_t sub_1974BEC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26[1] = a3;
  v12 = type metadata accessor for HistoryDescriptor(0, a6, a9, a4);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v26 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = type metadata accessor for HistoryDescriptor(0, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = v26 - v23;
  (*(v13 + 16))(v16, a2, v12);
  swift_dynamicCast();
  (*(a8 + 40))(v24, a5, a8);
  return (*(v21 + 8))(v24, v20);
}

BOOL sub_1974BEE44(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
    goto LABEL_32;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = v4 - 1;
  if (v4 < 1)
  {
    goto LABEL_33;
  }

  do
  {
    v6 = 0;
    if (!v5)
    {
LABEL_6:
      if ((v6 & 1) == 0)
      {
        v7 = 0;
        v6 = 1;
        goto LABEL_9;
      }

      break;
    }

    while (1)
    {
      v7 = v5 - 1;
LABEL_9:
      v8 = *(v1 + 16);
      if ((v8 & 0xC000000000000001) != 0)
      {

        v9 = MEMORY[0x19A8E0960](v5, v8);

        goto LABEL_12;
      }

      if (v5 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v9 = *(v8 + 8 * v5 + 32);

LABEL_12:
      if (swift_weakLoadStrong())
      {

        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v11 = Strong;

          if (v11 == a1)
          {
            swift_beginAccess();
            v12 = *(v1 + 16);
            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            *(v1 + 16) = v12;
            if (!isUniquelyReferenced_nonNull_bridgeObject || v12 < 0 || (v12 & 0x4000000000000000) != 0)
            {
              v12 = sub_19751E880();
              *(v1 + 16) = v12;
            }

            v14 = v12 & 0xFFFFFFFFFFFFFF8;
            v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v5 >= v15)
            {
              goto LABEL_31;
            }

            goto LABEL_26;
          }
        }

        v5 = v7;
        if (!v7)
        {
          goto LABEL_6;
        }
      }

      else
      {
        swift_beginAccess();
        v12 = *(v1 + 16);
        v16 = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v1 + 16) = v12;
        if (!v16 || v12 < 0 || (v12 & 0x4000000000000000) != 0)
        {
          v12 = sub_19751E880();
          *(v1 + 16) = v12;
        }

        v14 = v12 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v5 >= v15)
        {
          goto LABEL_30;
        }

LABEL_26:
        v17 = v15 - 1;
        memmove((v14 + 8 * v5 + 32), (v14 + 8 * v5 + 40), 8 * (v15 - 1 - v5));
        *(v14 + 16) = v17;
        *(v1 + 16) = v12;
        swift_endAccess();

        *(v9 + 24) = 0;

        v5 = v7;
        if (!v7)
        {
          goto LABEL_6;
        }
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v18 = sub_1975220EC();
    v5 = v18 - 1;
  }

  while (v18 >= 1);
LABEL_33:
  v19 = *(v1 + 16);
  if (v19 >> 62)
  {
    v20 = sub_1975220EC();
    if (!v20)
    {
LABEL_35:
      _SD_remove_current_context_tsd();
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_35;
    }
  }

  return v20 == 0;
}

uint64_t sub_1974BF0C8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1974432E0(a1, a2);
  return v4;
}

uint64_t sub_1974BF118(uint64_t a1)
{
  swift_beginAccess();
  sub_19743B4F0(a1, v1 + 56);
  return swift_endAccess();
}

uint64_t sub_1974BF168(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(*a3 + 80);
  v8 = sub_197521F5C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v19 - v11;
  v13 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  swift_beginAccess();
  *&v19[0] = v13;
  BYTE8(v19[0]) = a1;
  sub_1974028EC(v13, a1);
  sub_197405108();

  sub_19752167C();

  sub_1974028C8(*&v19[0], SBYTE8(v19[0]));
  LODWORD(v7) = (*(*(v7 - 8) + 48))(v12, 1, v7);
  result = (*(v9 + 8))(v12, v8);
  if (v7 == 1)
  {
    sub_1973FFC48(a2, v19);
    v15 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_197443758(0, v15[2] + 1, 1, v15);
      *a4 = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = sub_197443758((v17 > 1), v18 + 1, 1, v15);
      *a4 = v15;
    }

    v15[2] = v18 + 1;
    return sub_197402778(v19, &v15[5 * v18 + 4]);
  }

  return result;
}

void _Destroy_SwiftDataContextThreadLocalState(uint64_t a1)
{
  v1 = MEMORY[0x19A8E1370]();

  objc_autoreleasePoolPop(v1);
}

double sub_1974BF3EC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_197404860((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

void sub_1974BF438(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  PersistentModel.persistentModelID.getter(a3, a4, &v16);
  v8 = v16;
  v9 = BYTE8(v16);
  v10 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  swift_beginAccess();
  v11 = *(a2 + v10);
  v12 = *(v11 + 16);
  if (v12)
  {

    v13 = sub_197403C30(v8, v9);
    if (v14)
    {
      sub_19742FE50(*(v11 + 56) + 32 * v13, &v16);

      LODWORD(v12) = *(&v16 + 1) != 1;
      if (v16)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    LODWORD(v12) = 0;
  }

  v16 = xmmword_19752EA60;
  v17 = 0;
  v18 = 0;
LABEL_7:
  if (!v12)
  {
    sub_1974050A8(&v16, &qword_1EAF2B640, &unk_19752F160);
LABEL_11:
    sub_1974339E4(a1, a2, a3, a4);
    swift_unknownObjectRelease();
    sub_1974028C8(v8, v9);
    return;
  }

LABEL_9:
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1974050A8(&v16, &qword_1EAF2B640, &unk_19752F160);
  if (!Strong || Strong == a1)
  {
    goto LABEL_11;
  }

  *&v16 = 0;
  *(&v16 + 1) = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000026, 0x8000000197527B00);
  sub_19752235C();
  sub_1975223EC();
  __break(1u);
}

unint64_t sub_1974BF658(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B8C0, &qword_19752FB68);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3A0, &unk_19752FB70);
    v8 = sub_19752245C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_1974047F8(v10, v6, &qword_1EAF2B8C0, &qword_19752FB68);
      v20 = *v6;
      result = sub_1973F7950(v20, *(&v20 + 1));
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 16 * result) = v20;
      v15 = v8[7];
      v16 = sub_1975213EC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

BOOL sub_1974BF844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, a2, &v19);
  v7 = v19;
  v8 = v20;
  v9 = swift_getObjectType();
  v16 = a4;
  PersistentModel.persistentModelID.getter(v9, a4, &v17);
  v10 = v17;
  v11 = v18;
  LOBYTE(a4) = sub_19742291C(v7, v8, v17, v18);
  sub_1974028C8(v10, v11);
  sub_1974028C8(v7, v8);
  if (a4)
  {
    v12 = PersistentModel.modelContext.getter(ObjectType, a2);
    v13 = PersistentModel.modelContext.getter(v9, v16);
    if (v12)
    {
      if (v13)
      {
        v14 = v13;

        return v12 == v14;
      }
    }

    else if (!v13)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1974BF988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B950, &qword_19752FC68);
    v3 = sub_19752245C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1974047F8(v4, v13, &qword_1EAF2B958, &qword_19752FC70);
      result = sub_197445520(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1974028B8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1974BFAD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B258, &qword_19752D3F0);
    v3 = sub_19752245C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1974047F8(v4, &v15, &qword_1EAF2B938, &qword_19752FC48);
      v5 = v15;
      v6 = v16;
      result = sub_1973F4028(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1974BFC08(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3B8, &qword_19752D578);
  v3 = sub_19752245C();
  v4 = a1[4];
  v5 = a1[5];
  v7 = sub_19749ED9C(v4, v6);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = a1 + 7;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    *(v3[7] + 8 * v9) = result;
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v3[2] = v14;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v15 = v11 + 2;
    v4 = *(v11 - 1);
    v16 = *v11;

    v9 = sub_19749ED9C(v4, v17);
    v11 = v15;
    result = v16;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1974BFD24(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_10:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
    v12 = *v11;
    v13 = v11[1];
    v14 = swift_unknownObjectRetain();
    if (sub_197473494(v14, v13, a2))
    {
      sub_1974580E0(v12, v13);
      swift_unknownObjectRelease();
    }

    v7 &= v7 - 1;
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1974BFE44(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1975220AC();
    sub_1974C179C(0, qword_1ED7C7910, 0x1E695D630);
    sub_1974C1734();
    sub_197521C1C();
    v2 = v29;
    v3 = v30;
    v4 = v31;
    v5 = v32;
    v6 = v33;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
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

    v5 = 0;
  }

  while (v2 < 0)
  {
    v15 = sub_19752212C();
    if (!v15 || (v34 = v15, sub_1974C179C(0, qword_1ED7C7910, 0x1E695D630), swift_dynamicCast(), v14 = v26, v12 = v5, v13 = v6, !v26))
    {
LABEL_28:
      sub_197458C2C(v2);
      return;
    }

LABEL_19:
    v16 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
    swift_beginAccess();
    v17 = *(a2 + v16);
    if (*(v17 + 16))
    {
      v18 = v14;

      v19 = sub_197403C30(v14, 0);
      if (v20)
      {
        sub_19742FE50(*(v17 + 56) + 32 * v19, &v26);

        v21 = *(&v26 + 1) != 1;
        if (v26)
        {
          goto LABEL_26;
        }
      }

      else
      {

        v21 = 0;
        v26 = xmmword_19752EA60;
        v27 = 0;
        v28 = 0;
      }
    }

    else
    {
      v26 = xmmword_19752EA60;
      v27 = 0;
      v28 = 0;
      v22 = v14;
      v21 = 0;
    }

    if (!v21)
    {
      sub_1974050A8(&v26, &qword_1EAF2B640, &unk_19752F160);

LABEL_8:
      goto LABEL_9;
    }

LABEL_26:
    Strong = swift_unknownObjectWeakLoadStrong();
    v24 = *(&v26 + 1);
    sub_1974050A8(&v26, &qword_1EAF2B640, &unk_19752F160);

    if (!Strong)
    {
      goto LABEL_8;
    }

    sub_1974327FC(&v26, Strong, v24);

    swift_unknownObjectRelease();
LABEL_9:
    v5 = v12;
    v6 = v13;
  }

  v10 = v5;
  v11 = v6;
  v12 = v5;
  if (v6)
  {
LABEL_15:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_28;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_1974C0170(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1975220AC();
    sub_1974C179C(0, qword_1ED7C7910, 0x1E695D630);
    sub_1974C1734();
    sub_197521C1C();
    v2 = v31;
    v3 = v32;
    v4 = v33;
    v5 = v34;
    v6 = v35;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
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

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  while (v2 < 0)
  {
    v16 = sub_19752212C();
    if (!v16 || (v36 = v16, sub_1974C179C(0, qword_1ED7C7910, 0x1E695D630), swift_dynamicCast(), v15 = v28, v13 = v5, v14 = v6, !v28))
    {
LABEL_31:
      sub_197458C2C(v2);
      return;
    }

LABEL_20:
    v17 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
    swift_beginAccess();
    v18 = *(a2 + v17);
    if (*(v18 + 16))
    {
      v19 = v15;

      v20 = sub_197403C30(v15, 0);
      if (v21)
      {
        sub_19742FE50(*(v18 + 56) + 32 * v20, &v28);

        v22 = *(&v28 + 1) != 1;
        if (v28)
        {
          goto LABEL_27;
        }
      }

      else
      {

        v22 = 0;
        v28 = xmmword_19752EA60;
        v29 = 0;
        v30 = 0;
      }
    }

    else
    {
      v28 = xmmword_19752EA60;
      v29 = 0;
      v30 = 0;
      v23 = v15;
      v22 = 0;
    }

    if (!v22)
    {
      sub_1974050A8(&v28, &qword_1EAF2B640, &unk_19752F160);

LABEL_9:
      goto LABEL_10;
    }

LABEL_27:
    Strong = swift_unknownObjectWeakLoadStrong();
    v25 = *(&v28 + 1);
    sub_1974050A8(&v28, &qword_1EAF2B640, &unk_19752F160);

    if (!Strong)
    {
      goto LABEL_9;
    }

    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    if (sub_19744377C(ObjectType, v25))
    {
      sub_1974327FC(&v28, Strong, v25);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease_n();
    }

LABEL_10:
    v5 = v13;
    v6 = v14;
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_31;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1974C04E4(uint64_t result, void **a2, _BYTE *a3, uint64_t a4, char **a5)
{
  v5 = *(result + 16);
  if (v5)
  {
    v6 = (result + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1974A6118(ObjectType, v8);
      v11 = v10;
      v13 = v12;
      v14 = *a2;
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_197477820(0, v14[2] + 1, 1, v14);
        *a2 = v14;
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = sub_197477820((v16 > 1), v17 + 1, 1, v14);
        *a2 = v14;
      }

      v14[2] = v17 + 1;
      v18 = &v14[2 * v17];
      v18[4] = v11;
      v18[5] = v13;
      if (*a3 == 1)
      {
        v19 = sub_197473494(v7, v8, a4);
        v20 = *a5;
        v21 = swift_isUniquelyReferenced_nonNull_native();
        *a5 = v20;
        if (v19)
        {
          if ((v21 & 1) == 0)
          {
            v20 = sub_19747772C(0, *(v20 + 2) + 1, 1, v20);
            *a5 = v20;
          }

          v23 = *(v20 + 2);
          v22 = *(v20 + 3);
          if (v23 >= v22 >> 1)
          {
            *a5 = sub_19747772C((v22 > 1), v23 + 1, 1, v20);
          }

          swift_unknownObjectRelease();
          v24 = *a5;
          *(v24 + 2) = v23 + 1;
          v24[v23 + 32] = 1;
        }

        else
        {
          if ((v21 & 1) == 0)
          {
            v20 = sub_19747772C(0, *(v20 + 2) + 1, 1, v20);
            *a5 = v20;
          }

          v26 = *(v20 + 2);
          v25 = *(v20 + 3);
          if (v26 >= v25 >> 1)
          {
            *a5 = sub_19747772C((v25 > 1), v26 + 1, 1, v20);
          }

          swift_unknownObjectRelease();
          v27 = *a5;
          *(v27 + 2) = v26 + 1;
          v27[v26 + 32] = 0;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      result = swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1974C075C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditingState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1974C07C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_1974BE168(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_1974028B8(v44, v42);
  v14 = *a5;
  result = sub_1973F4028(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_1973FF860(v20, a4 & 1);
    result = sub_1973F4028(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1975229CC();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_197422CFC();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    sub_1974028B8(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_1974028B8(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_1974BE168(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_1974028B8(v44, v42);
        v32 = *a5;
        result = sub_1973F4028(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_1973FF860(v36, 1);
          result = sub_1973F4028(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0Tm(v31);
          sub_1974028B8(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_1974028B8(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_1974BE168(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_197458C2C(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1974C0AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1974A46D0(a2, a3);
  if (!result)
  {
    sub_1974A6118(a2, a3);
    v7 = v6;
    v9 = v8;
    v10 = swift_unknownObjectRetain();
    sub_1974A4718(v10, v9, a2, a3);
    swift_unknownObjectRelease();
    return v7;
  }

  return result;
}

void sub_1974C0B50(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 40);
  v14 = *(v2 + 32);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v10 = *(v2 + 64);
  v11 = *(v2 + 72);
  ObjectType = swift_getObjectType();
  LOBYTE(v13) = v11;
  sub_1974B7C2C(ObjectType, a1, a2, v14, v7, v8, v9, v10, v13, v5, ObjectType, v6, a2);
}

unint64_t sub_1974C0C0C()
{
  result = qword_1EAF2B860;
  if (!qword_1EAF2B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B860);
  }

  return result;
}

unint64_t sub_1974C0C64()
{
  result = qword_1EAF2B868;
  if (!qword_1EAF2B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B868);
  }

  return result;
}

uint64_t sub_1974C0CB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1974C0D14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelContext.NotificationKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelContext.NotificationKey(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1974C1460(uint64_t *a1, int a2)
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

uint64_t sub_1974C14A8(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SwiftDataError._Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SwiftDataError._Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1974C1638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1974C1684()
{
  result = qword_1EAF2B8A0;
  if (!qword_1EAF2B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B8A0);
  }

  return result;
}

unint64_t sub_1974C16DC()
{
  result = qword_1EAF2B8A8;
  if (!qword_1EAF2B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B8A8);
  }

  return result;
}

unint64_t sub_1974C1734()
{
  result = qword_1EAF2B918;
  if (!qword_1EAF2B918)
  {
    sub_1974C179C(255, qword_1ED7C7910, 0x1E695D630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B918);
  }

  return result;
}

uint64_t sub_1974C179C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t objectdestroy_324Tm()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

void sub_1974C1878(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v35 = MEMORY[0x1E69E7CC0];
  sub_1974F6650(0, v9, 0);
  v34 = v7;
  if (v9)
  {
    v13 = a4[2];
    v14 = a5;
    while (1)
    {
      v15 = v8 <= v7;
      if (a3 > 0)
      {
        v15 = v8 >= v7;
      }

      if (v15)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v16 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v16 = v8 + a3;
      }

      v17 = v8 + v14;
      if (__OFADD__(v8, v14))
      {
        goto LABEL_58;
      }

      if (v13 < v17)
      {
        v17 = v13;
      }

      v18 = v17 - v8;
      if (v17 < v8)
      {
        goto LABEL_59;
      }

      if (v8 < 0)
      {
        goto LABEL_60;
      }

      if (v13 == v18)
      {

        v19 = a4;
      }

      else
      {
        v19 = MEMORY[0x1E69E7CC0];
        if (v17 != v8)
        {
          if (v18 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B330, &unk_19752FCE0);
            v19 = swift_allocObject();
            v22 = _swift_stdlib_malloc_size_1(v19);
            v19[2] = v18;
            v19[3] = 2 * ((v22 - 32) / 40);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B338, &qword_19752D4E0);
          swift_arrayInitWithCopy();
          v14 = a5;
        }
      }

      v21 = *(v35 + 16);
      v20 = *(v35 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1974F6650((v20 > 1), v21 + 1, 1);
        v14 = a5;
      }

      *(v35 + 16) = v21 + 1;
      *(v35 + 8 * v21 + 32) = v19;
      v8 = v16;
      --v9;
      v7 = v34;
      if (!v9)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v16 = v8;
  v14 = a5;
LABEL_34:
  v23 = v16 <= v7;
  if (a3 > 0)
  {
    v23 = v16 >= v7;
  }

  if (!v23)
  {
    while (1)
    {
      v24 = __OFADD__(v16, a3) ? ((v16 + a3) >> 63) ^ 0x8000000000000000 : v16 + a3;
      v25 = v16 + v14;
      if (__OFADD__(v16, v14))
      {
        break;
      }

      v26 = a4[2];
      if (v26 < v25)
      {
        v25 = a4[2];
      }

      v27 = v25 - v16;
      if (v25 < v16)
      {
        goto LABEL_62;
      }

      if (v16 < 0)
      {
        goto LABEL_63;
      }

      if (v26 == v27)
      {

        v28 = a4;
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC0];
        if (v25 != v16)
        {
          if (v27 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B330, &unk_19752FCE0);
            v28 = swift_allocObject();
            v32 = _swift_stdlib_malloc_size_1(v28);
            v28[2] = v27;
            v28[3] = 2 * ((v32 - 32) / 40);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B338, &qword_19752D4E0);
          swift_arrayInitWithCopy();
          v14 = a5;
        }
      }

      v30 = *(v35 + 16);
      v29 = *(v35 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1974F6650((v29 > 1), v30 + 1, 1);
        v14 = a5;
      }

      *(v35 + 16) = v30 + 1;
      *(v35 + 8 * v30 + 32) = v28;
      v31 = v24 <= v34;
      if (a3 > 0)
      {
        v31 = v24 >= v34;
      }

      v16 = v24;
      if (v31)
      {
        return;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }
}

uint64_t sub_1974C1C8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 24);
  *a2 = *a1;
  a2[1] = v3;
  return swift_unknownObjectRetain();
}

unint64_t sub_1974C1D0C()
{
  result = qword_1EAF2B990;
  if (!qword_1EAF2B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B990);
  }

  return result;
}

uint64_t sub_1974C1E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v19 - v10;
  v12 = sub_1975213EC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1973FE21C(a2, v11, &qword_1EAF2B658, &unk_19752F180);
  v17 = *(v13 + 48);
  if (v17(v11, 1, v12) == 1)
  {
    sub_1974CD170(a3, a3, a4, a4, v16);
    if (v17(v11, 1, v12) != 1)
    {
      sub_1973F7E04(v11, &qword_1EAF2B658, &unk_19752F180);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
  }

  sub_1974CD3CC(v20, v16, v4, a3, a4);
  return (*(v13 + 8))(v16, v12);
}

BOOL PersistentModel.hasChanges.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 24);

  return (v2 & 0x3F) != 0;
}

uint64_t sub_1974C2050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1973FFCAC(a1, &v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B220, &qword_19752D3B0);
  type metadata accessor for _StitchedBackingData(0, a2, a3, v7);
  if (swift_dynamicCast())
  {
    *(&v15 + 1) = a2;
    *&v14 = v3;
    __swift_project_boxed_opaque_existential_1Tm_2(&v14, a2);
    DynamicType = swift_getDynamicType();
    swift_unknownObjectRetain();
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v14);
    sub_1974CBBF0(DynamicType, a2, v3, v13[0], a2, a3);
    goto LABEL_6;
  }

  sub_1973FFCAC(a1, v13);
  swift_getExtendedExistentialTypeMetadata();
  if (swift_dynamicCast())
  {
    sub_197434660(&v12, &v14);
    sub_1973FFCAC(&v14, v13);
    (*(a3 + 64))(v13, a2, a3);
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v14);
LABEL_7:
    sub_197458088(0, a2, a3);
    sub_197442A5C(0, a2, a3);
    sub_1974A7F6C(0, a2, a3);
    sub_1974A7F04(a2, a3);
    sub_1974A7ED0(a2, a3);
    return sub_1974A7F38(a2, a3);
  }

  *(&v15 + 1) = a2;
  *&v14 = v3;
  __swift_project_boxed_opaque_existential_1Tm_2(&v14, a2);
  v9 = swift_getDynamicType();
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_1Tm_3(&v14);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  sub_1974CC0F4(v9, a2, &v14, a1, v10, v3, a2, a2, a3, a3);
  sub_1973F7E04(&v14, &qword_1EAF2B9B0, &qword_19752FE10);
  swift_beginAccess();
  if (*(v10 + 16))
  {
LABEL_6:

    goto LABEL_7;
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000023, 0x8000000197527F70);
  sub_19752235C();
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974C2378(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 80);

  return v2;
}

void *sub_1974C23A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for _StitchedBackingData(0, a1, a2, a4);
  PersistentModel.persistentModelID.getter(a1, a2, &v11);
  v14 = v11;
  v15 = v12;
  v8 = sub_197512F10(a1, &v14);
  v8[3] = sub_1973FE074(a1, a2);

  v13 = a1;
  v11 = v4;
  __swift_project_boxed_opaque_existential_1Tm_2(&v11, a1);
  DynamicType = swift_getDynamicType();
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_1Tm_3(&v11);
  sub_1974C2924(DynamicType, a1, v5, v8, a1, a2);
  return v8;
}

uint64_t sub_1974C24A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v28 = a8;
  v29 = a3;
  v33 = a7;
  v34 = a6;
  v31 = a2;
  v32 = a5;
  v30 = a4;
  v35 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9B8, &qword_19752FE18);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v26 - v12;
  v27 = sub_197522AEC();
  v14 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_197522ADC();
  sub_19752233C();
  sub_19752248C();
  if (!*(&v40 + 1))
  {
LABEL_17:

    v19 = v34;
LABEL_18:
    sub_197522AAC();
    v24 = v27;
    if ((*(v14 + 48))(v13, 1, v27) == 1)
    {
      sub_1973F7E04(v13, &qword_1EAF2B9B8, &qword_19752FE18);
      *&v41 = 0;
      *(&v41 + 1) = 0xE000000000000000;
      sub_1975221EC();

      *&v41 = 0xD000000000000021;
      *(&v41 + 1) = 0x8000000197528270;
      v25 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v25);

      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      (*(v14 + 32))(v17, v13, v24);
      sub_1974C24A0(v17, v31, v29, v30, v32, v19, v33, v28, v35);
      return (*(v14 + 8))(v17, v24);
    }

    return result;
  }

  while (1)
  {
    v36 = v39[0];
    v37 = v39[1];
    v38 = v40;
    if (*(&v39[0] + 1))
    {
      v18 = v36 == 0x6E696B636162245FLL && *(&v39[0] + 1) == 0xED00006174614467;
      if (v18 || (sub_19752282C() & 1) != 0)
      {
        break;
      }
    }

    sub_1973F7E04(&v36, &qword_1EAF2B9C0, &qword_19752FE20);
    sub_19752248C();
    if (!*(&v40 + 1))
    {
      goto LABEL_17;
    }
  }

  v41 = v36;
  v42[0] = v37;
  v42[1] = v38;

  sub_1974028B8(v42, &v43);
  v19 = v34;
  *&v41 = v34;
  swift_getExtendedExistentialTypeMetadata();
  if ((swift_dynamicCast() & 1) == 0 || !v45)
  {
    goto LABEL_18;
  }

  sub_197434660(&v44, v46);
  sub_1973FFCAC(v46, &v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9C8, &qword_19752FE28);
  if (swift_dynamicCast())
  {
    v20 = *(&v39[0] + 1);
    sub_1973FE074(v32, v33);
    v21 = sub_1974CE0F0(&v41);
    if (*v22)
    {
      *(&v39[0] + 1) = v20;
      swift_unknownObjectWeakInit();
      sub_19749B4B8(v39, v29, v30);
    }

    (v21)(&v41, 0);

    swift_unknownObjectRelease();
  }

  return sub_197434660(v46, v35);
}

uint64_t sub_1974C2924(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  sub_197434244(*(*a4 + 232), a5, *(*a4 + 240), a6, v49);
  v48 = a5;
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _KKMDBackingData(0, a5, v6, v10);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    result = sub_1975214CC();
    if (result)
    {
      v40 = result;
      result = swift_conformsToProtocol2();
      if (result)
      {
        return sub_1974C2924(v40, v40, a3, a4, v40, result);
      }
    }

    return result;
  }

  v44 = *&v47[0];
  type metadata accessor for Schema.Entity();
  v11 = sub_1973FDF38(a2, v6);
  swift_beginAccess();
  v12 = *(v11 + 64);
  v43 = *(v12 + 16);
  if (!v43)
  {

LABEL_23:
    v38 = sub_197512FA0();

    sub_197512F08(v38 & 1);
    goto LABEL_24;
  }

  v41 = a3;
  v13 = v12 + 32;

  v14 = 0;
  v42 = v12;
  while (v14 < *(v12 + 16))
  {
    sub_1973FFCAC(v13, v49);
    v15 = a4[2];
    v16 = v50;
    v17 = v51;
    __swift_project_boxed_opaque_existential_1Tm_2(v49, v50);
    v18 = *(v17 + 32);

    v46 = v18(v16, v17);
    v6 = v19;
    v20 = *(v44 + 16);
    v21 = v50;
    v22 = v51;
    __swift_project_boxed_opaque_existential_1Tm_2(v49, v50);
    v23 = *(v22 + 32);

    v24 = v23(v21, v22);
    v26 = v25;
    __swift_destroy_boxed_opaque_existential_1Tm_3(v49);
    v27 = *(v20 + 16);
    if (!*(v27 + 16))
    {

LABEL_11:
      memset(v47, 0, sizeof(v47));
      goto LABEL_12;
    }

    v28 = sub_1973F4028(v24, v26);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      goto LABEL_11;
    }

    v12 = *(*(v27 + 56) + 8 * v28);
    swift_beginAccess();
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_30;
    }

    v31 = *(v20 + 32);
    if (v12 >= *(v31 + 16))
    {
      goto LABEL_31;
    }

    sub_1973FE21C(v31 + 32 * v12 + 32, v47, &qword_1EAF2AF20, &unk_19752F320);
LABEL_12:

    v32 = *(v15 + 16);
    v12 = v46;
    if (!*(v32 + 16))
    {
      goto LABEL_32;
    }

    v33 = sub_1973F4028(v46, v6);
    if ((v34 & 1) == 0)
    {
      goto LABEL_32;
    }

    v35 = v33;

    v12 = *(*(v32 + 56) + 8 * v35);
    swift_beginAccess();
    v36 = *(v15 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v15 + 32) = v36;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v36 = sub_19751C104(v36);
      *(v15 + 32) = v36;
      if ((v12 & 0x8000000000000000) != 0)
      {
LABEL_20:
        __break(1u);
LABEL_21:

        a3 = v41;
        goto LABEL_23;
      }
    }

    if (v12 >= v36[2])
    {
      goto LABEL_29;
    }

    ++v14;
    sub_1973F7958(v47, &v36[4 * v12 + 4]);
    *(v15 + 32) = v36;
    swift_endAccess();
    sub_1973F7E04(v47, &qword_1EAF2AF20, &unk_19752F320);

    v13 += 40;
    v12 = v42;
    if (v43 == v14)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  sub_1975221EC();

  MEMORY[0x19A8DFF80](v12, v6);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974C2DAC@<X0>(void *a1@<X0>, char *a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *(*a1 + *MEMORY[0x1E69E6B90]);
  sub_1973F51F0(v6, a2, v23);
  sub_1974D4F38(a1, v16);
  v7 = v23[0];
  v24 = v23[2];
  v25 = v23[1];
  if (*(&v16[0] + 1))
  {
    v19 = v16[2];
    v20 = v16[3];
    v21 = v16[4];
    v22 = v16[5];
    v17 = v16[0];
    v18 = v16[1];
LABEL_3:
    v8 = v20;
    a3[2] = v19;
    a3[3] = v8;
    v9 = v22;
    a3[4] = v21;
    a3[5] = v9;
    v10 = v18;
    *a3 = v17;
    a3[1] = v10;

    sub_1973F7E04(&v25, &qword_1EAF2B570, &qword_19752E998);
    return sub_1973F7E04(&v24, &qword_1EAF2B578, &qword_19752E9A0);
  }

  sub_1973FE21C(&v24, v15, &qword_1EAF2B578, &qword_19752E9A0);

  sub_1973FE21C(&v25, v15, &qword_1EAF2B570, &qword_19752E998);
  v12 = sub_1973F7BBC(a1, v6, a2);
  sub_1974D4CB4(v12, v13, &v17);

  if (*(&v16[0] + 1))
  {
    sub_1973F7E04(v16, &qword_1EAF2B580, &qword_19752E9A8);
  }

  sub_1973F7E04(&v25, &qword_1EAF2B570, &qword_19752E998);
  sub_1973F7E04(&v24, &qword_1EAF2B578, &qword_19752E9A0);
  if (*(&v17 + 1))
  {
    goto LABEL_3;
  }

  sub_1973F7E04(&v17, &qword_1EAF2B580, &qword_19752E9A8);
  *&v17 = 0;
  *(&v17 + 1) = 0xE000000000000000;
  sub_1973FE21C(&v24, v16, &qword_1EAF2B578, &qword_19752E9A0);

  sub_1973FE21C(&v25, v16, &qword_1EAF2B570, &qword_19752E998);
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000017, 0x8000000197528460);
  *&v16[0] = a1;
  sub_19752228C();
  sub_1975227FC();
  MEMORY[0x19A8DFF80](544106784, 0xE400000000000000);
  v14 = MEMORY[0x19A8E0100](v7, &type metadata for Schema.PropertyMetadata);
  MEMORY[0x19A8DFF80](v14);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974C30BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_197522B2C();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;

    sub_197434244(a4, a6, a7, a9, &v21);
    v16 = v22;
    v17 = v23;
    __swift_project_boxed_opaque_existential_1Tm_2(&v21, v22);
    (*(v17 + 64))(v15, a5, a8, v16, v17);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v21);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v19 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v19);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t PersistentModel.getValue<A, B>(forKey:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (sub_1973FE6F0(v11, a3))
  {
    sub_1974258A4(v11, a3);
  }

  if (PersistentModel.modelContext.getter(v11, a3))
  {
    sub_1974B3098(a1, a3);
  }

  if (swift_getAssociatedTypeWitness() == v11)
  {
    (*(a3 + 56))(&v21, v11, a3);
    v17 = v23;
    v18 = v24;
    __swift_project_boxed_opaque_existential_1Tm_2(&v21, v23);
    (*(v18 + 96))(a1, *(v10 + *MEMORY[0x1E69E77B0] + 8), a2, a4, a5, v17, v18);
    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v21);
  }

  else
  {
    sub_1974C2DAC(a1, a3, &v21);
    v12 = v22;
    v13 = sub_197521FFC();
    v14 = swift_conformsToProtocol2();
    if (v14)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
      v19 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v19);

      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      sub_1974C384C(v13, v12, v5, v11, *(v10 + *MEMORY[0x1E69E77B0] + 8), a2, v13, a3, a4, a5, v14);
      return sub_1973F82A8(&v21);
    }
  }

  return result;
}

uint64_t sub_1974C384C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_197522B2C();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;

    sub_197434244(a4, a7, a8, a11, &v23);
    v16 = v24;
    v17 = v25;
    __swift_project_boxed_opaque_existential_1Tm_2(&v23, v24);
    (*(v17 + 96))(v15, a5, a6, a9, a10, v16, v17);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v23);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v19 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v19);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974C3A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_197522B2C();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;

    sub_197434244(a4, a6, a7, a8, &v20);
    v15 = v21;
    v16 = v22;
    __swift_project_boxed_opaque_existential_1Tm_2(&v20, v21);
    (*(v16 + 104))(v14, a5, v15, v16);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v20);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v18 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v18);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v19 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v19);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974C3C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_197522B2C();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;

    sub_197434244(a5, a7, a8, a10, &v22);
    v17 = v23;
    v18 = v24;
    __swift_project_boxed_opaque_existential_1Tm_2(&v22, v23);
    (*(v18 + 112))(v16, a4, a6, a9, v17, v18);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v22);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v21 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v21);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974C457C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = MEMORY[0x1E69E77B0];
  v10 = *(*a2 + *MEMORY[0x1E69E77B0]);
  if (swift_getAssociatedTypeWitness() == v10)
  {
    (*(a3 + 56))(&v19, v10, a3);
    v16 = v21;
    v17 = v22;
    __swift_project_boxed_opaque_existential_1Tm_2(&v19, v21);
    v15 = (*(v17 + 72))(a2, *(v8 + *v9 + 8), a4, v16, v17);
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v19);
    return v15;
  }

  sub_1974C2DAC(a2, a3, &v19);
  v11 = v20;

  v12 = sub_197521FFC();
  v13 = swift_conformsToProtocol2();
  if (v13)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = sub_1974C47A8(v12, v11, a1, v10, *(v8 + *v9 + 8), v12, a3, a4, v13, 320);

    sub_1973F82A8(&v19);
    return v15;
  }

  sub_1973F82A8(&v19);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974C47A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_197522B2C();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;

    sub_197434244(a4, a6, a7, a9, &v23);
    v17 = v24;
    v18 = v25;
    __swift_project_boxed_opaque_existential_1Tm_2(&v23, v24);
    v19 = (*(v18 + 72))(v16, a5, a8, v17, v18);

    __swift_destroy_boxed_opaque_existential_1Tm_3(&v23);
    return v19;
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v21 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v21);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v22 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v22);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974C49B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_197522B2C();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;

    sub_197434244(a5, a7, a8, a10, &v22);
    v17 = v23;
    v18 = v24;
    __swift_project_boxed_opaque_existential_1Tm_2(&v22, v23);
    (*(v18 + 120))(v16, a4, a6, a9, v17, v18);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v22);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v21 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v21);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974C4BBC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = MEMORY[0x1E69E77B0];
  v10 = *(*a2 + *MEMORY[0x1E69E77B0]);
  if (swift_getAssociatedTypeWitness() == v10)
  {
    (*(a3 + 56))(&v19, v10, a3);
    v15 = v21;
    v16 = v22;
    __swift_project_boxed_opaque_existential_1Tm_2(&v19, v21);
    v17 = (*(v16 + 80))(a2, *(*(v8 + *v9 + 8) + 16), a4, v15, v16);
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v19);
  }

  else
  {
    sub_1974C2DAC(a2, a3, &v19);
    v11 = v20;

    v12 = sub_197521FFC();
    v13 = swift_conformsToProtocol2();
    if (v13)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      sub_1973F82A8(&v19);

      return 0;
    }

    else
    {
      v17 = sub_1974C4DD8(v12, v11, a1, v10, *(*(v8 + *v9 + 8) + 16), v12, a3, a4, v13, 44, 0x20646E6120, 0xE500000000000000, 398);

      sub_1973F82A8(&v19);
    }
  }

  return v17;
}

uint64_t sub_1974C4DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_197521F5C();
  sub_197522B2C();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;

    sub_197434244(a4, a6, a7, a9, &v26);
    v20 = v27;
    v21 = v28;
    __swift_project_boxed_opaque_existential_1Tm_2(&v26, v27);
    v22 = (*(v21 + 80))(v19, a5, a8, v20, v21);

    __swift_destroy_boxed_opaque_existential_1Tm_3(&v26);
    return v22;
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v24 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v24);

    MEMORY[0x19A8DFF80](a11, a12);
    v25 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v25);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974C4FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_197521F5C();
  sub_197522B2C();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;

    sub_197434244(a5, a7, a8, a10, &v22);
    v17 = v23;
    v18 = v24;
    __swift_project_boxed_opaque_existential_1Tm_2(&v22, v23);
    (*(v18 + 128))(v16, a4, a6, a9, v17, v18);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v22);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    MEMORY[0x19A8DFF80](0x74706F20646E6120, 0xEE00206C616E6F69);
    v21 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v21);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t PersistentModel.setValue<A, B>(forKey:to:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v102 = a5;
  v100 = a1;
  v8 = (*a1 + *MEMORY[0x1E69E77B0]);
  v9 = v8[1];
  v91 = sub_197521F5C();
  v90 = *(v91 - 8);
  v11 = MEMORY[0x1EEE9AC00](v91, v10);
  v95 = &v90 - v12;
  v98 = *(v9 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v90 - v18;
  v20 = *v8;
  if (sub_1973FE6F0(*v8, a4))
  {
    sub_1974258A4(v20, a4);
  }

  v103 = v5;
  v117 = PersistentModel.modelContext.getter(v20, a4);
  v116 = MEMORY[0x1E69E7CD0];
  v115 = sub_1975215CC();
  v113 = MEMORY[0x1E69E7CC0];
  v114 = MEMORY[0x1E69E7CC0];
  v21 = sub_19744C800(v100, v20, a4);
  v22 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v22, v23);
  *(&v90 - 12) = v20;
  *(&v90 - 11) = v9;
  *(&v90 - 10) = a3;
  *(&v90 - 9) = a4;
  v24 = v102;
  *(&v90 - 8) = v102;
  LODWORD(v99) = v25;
  *(&v90 - 56) = v25;
  *(&v90 - 6) = &v113;
  *(&v90 - 5) = &v116;
  v86 = &v115;
  v87 = &v117;
  v88 = &v114;
  sub_197512FA8(sub_1974CEB60, (&v90 - 14), v9, v24);
  v26 = v113;
  if (*(v113 + 16) && v117)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1974BD348(a3, v26, a3, AssociatedConformanceWitness);
  }

  v96 = v26;
  v28 = PersistentModel.modelContext.getter(v20, a4);
  v101 = v21;
  if (!v28)
  {
    v29 = v117;
    v30 = v102;
    if (v117)
    {
      v31 = v114;
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = v31;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      goto LABEL_45;
    }

    goto LABEL_14;
  }

  while (1)
  {
    v30 = v102;
LABEL_14:
    v112 = MEMORY[0x1E69E7CD0];
    v31 = sub_197405108();
    v111 = sub_1975215BC();
    v36 = v103;
    v37 = sub_1974C6238(v103, v100, a3, a4, v30);
    MEMORY[0x1EEE9AC00](v37, v38);
    *(&v90 - 12) = v20;
    *(&v90 - 11) = v9;
    *(&v90 - 10) = a3;
    *(&v90 - 9) = a4;
    *(&v90 - 8) = v39;
    *(&v90 - 7) = &v112;
    *(&v90 - 6) = &v116;
    *(&v90 - 40) = v99;
    v86 = &v111;
    v87 = v36;
    v88 = v101;
    sub_197512FA8(sub_1974CEBA4, (&v90 - 14), v9, v39);
    v40 = v98;
    v41 = *(v98 + 8);
    v94 = v98 + 8;
    v93 = v41;
    v41(v19, v9);
    v42 = v111;
    v43 = MEMORY[0x19A8DFD80](v111, &type metadata for PersistentIdentifier, a3, v31);
    v97 = v16;
    if (v43)
    {
      break;
    }

    v99 = a4;
    if (v117)
    {
      *&v107 = v42;
      sub_19752163C();

      swift_getWitnessTable();
      v31 = sub_197521ADC();
      v44 = swift_getAssociatedConformanceWitness();
      sub_1974BD348(a3, v31, a3, v44);
    }

    a4 = v9;
    v45 = v42;
    v47 = *(v42 + 64);
    v19 = (v42 + 64);
    v46 = v47;
    v48 = 1 << *(v45 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v16 = v49 & v46;
    v29 = (v48 + 63) >> 6;
    v9 = v45;

    v50 = 0;
    while (v16)
    {
      v51 = v50;
LABEL_25:
      v52 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v31 = *(*(v9 + 56) + ((v51 << 9) | (8 * v52)));
      v53 = swift_getAssociatedConformanceWitness();
      swift_unknownObjectRetain();
      sub_197454D38(v101, v31, v20, a3, v99, v53);
      swift_unknownObjectRelease();
    }

    while (1)
    {
      v51 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v51 >= v29)
      {
        v42 = v9;

        v16 = v97;
        v40 = v98;
        v9 = a4;
        a4 = v99;
        goto LABEL_28;
      }

      v16 = *&v19[8 * v51];
      ++v50;
      if (v16)
      {
        v50 = v51;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_45:
    v31 = sub_197433F80(0, v31[2] + 1, 1, v31);
    v114 = v31;
LABEL_10:
    v34 = v31[2];
    v33 = v31[3];
    if (v34 >= v33 >> 1)
    {
      v31 = sub_197433F80((v33 > 1), v34 + 1, 1, v31);
    }

    v31[2] = v34 + 1;
    v35 = &v31[2 * v34];
    v35[4] = v103;
    v35[5] = a4;
    v114 = v31;
    sub_197452A84(v29, v20, a4);
  }

LABEL_28:
  v92 = v42;
  v54 = v115;
  *&v107 = v115;
  v55 = sub_197521AAC();
  v99 = v54;
  swift_bridgeObjectRetain_n();
  v56 = v95;
  v57 = swift_dynamicCast();
  v58 = *(v40 + 56);
  if (!v57)
  {
    v58(v56, 1, 1, v9);
    (*(v90 + 8))(v56, v91);
    *&v107 = 0;
    *(&v107 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000032, 0x8000000197527E30);
    v85 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v85);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    v105 = v99;
    swift_getWitnessTable();
    sub_19752280C();
    LODWORD(v89) = 0;
    v84 = 547;
    goto LABEL_48;
  }

  v58(v56, 0, 1, v9);
  (*(v40 + 32))(v16, v56, v9);
  v59 = v103;
  v60 = PersistentModel.modelContext.getter(v20, a4);
  v61 = v102;
  if (v60)
  {
    sub_197432658(v59, v20, a4);
  }

  v98 = v55;
  if (swift_getAssociatedTypeWitness() == v20)
  {
    (*(a4 + 56))(&v107, v20, a4);
    v69 = v109;
    v70 = v110;
    __swift_project_boxed_opaque_existential_1Tm_2(&v107, v109);
    v71 = *(v70 + 136);
    v72 = v70;
    v66 = v103;
    v71(v100, v16, v9, a3, v61, v69, v72);
    v67 = __swift_destroy_boxed_opaque_existential_1Tm_3(&v107);
    goto LABEL_36;
  }

  sub_1974C2DAC(v100, a4, &v107);
  v62 = v108;
  v63 = sub_197521FFC();
  v64 = swift_conformsToProtocol2();
  if (!v64 || !v63)
  {
    v105 = 0;
    v106 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
    v83 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v83);

    LODWORD(v89) = 0;
    v84 = 566;
LABEL_48:
    v88 = v84;
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v65 = v62;
  v66 = v103;
  sub_1974C682C(v63, v65, v103, v16, v20, v9, a3, v63, a4, v61, v64);
  v67 = sub_1973F82A8(&v107);
LABEL_36:
  *&v107 = v99;
  MEMORY[0x1EEE9AC00](v67, v68);
  *(&v90 - 8) = v20;
  *(&v90 - 7) = v9;
  *(&v90 - 6) = a3;
  *(&v90 - 5) = a4;
  v86 = v61;
  v87 = &v112;
  v88 = v66;
  v89 = v101;
  v104 = swift_getAssociatedConformanceWitness();
  v73 = v98;
  WitnessTable = swift_getWitnessTable();
  sub_197512FA8(sub_1974CEBE8, (&v90 - 10), v73, WitnessTable);

  if (v117)
  {
    v75 = v114;
    v76 = v114[2];
    v77 = v97;
    if (v76)
    {

      v78 = v75 + 5;
      do
      {
        v79 = *v78;
        ObjectType = swift_getObjectType();
        v81 = swift_unknownObjectRetain();
        sub_197454EEC(v81, ObjectType, v79);
        swift_unknownObjectRelease();
        v78 += 2;
        --v76;
      }

      while (v76);
    }

    v93(v77, v9);
  }

  else
  {
    v93(v97, v9);
  }
}

void sub_1974C5F20(void *a1, char a2, char **a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  PersistentModel.persistentModelID.getter(a10, AssociatedConformanceWitness, &v36);
  v18 = v36;
  v19 = v37;
  if (a2 & 1) != 0 && (sub_1973FE6F0(a10, AssociatedConformanceWitness))
  {
    v20 = *a3;
    sub_1974028EC(v18, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v20;
    v34 = a6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_197445BA8(0, *(v20 + 2) + 1, 1, v20);
      *a3 = v20;
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_197445BA8((v22 > 1), v23 + 1, 1, v20);
      *a3 = v20;
    }

    *(v20 + 2) = v23 + 1;
    v24 = &v20[16 * v23];
    *(v24 + 4) = v18;
    v24[40] = v19;
    a6 = v34;
  }

  v25 = *a4;

  v26 = sub_197455CE4(v18, v19, v25);

  if (v26)
  {

    goto LABEL_14;
  }

  sub_1974028EC(v18, v19);
  sub_19742AE44(&v36, v18, v19);
  sub_1974028C8(v36, v37);
  v36 = a1;
  sub_197521AAC();
  swift_unknownObjectRetain();
  sub_197521A7C();
  if (PersistentModel.modelContext.getter(a10, AssociatedConformanceWitness))
  {

    if (*a6)
    {
LABEL_14:
      sub_1974028C8(v18, v19);
      return;
    }
  }

  else if (*a6)
  {
    v27 = *a7;
    swift_unknownObjectRetain();
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v27;
    if ((v28 & 1) == 0)
    {
      v27 = sub_197433F80(0, v27[2] + 1, 1, v27);
      *a7 = v27;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      v27 = sub_197433F80((v29 > 1), v30 + 1, 1, v27);
      *a7 = v27;
    }

    v27[2] = v30 + 1;
    v31 = &v27[2 * v30];
    v31[4] = a1;
    v31[5] = AssociatedConformanceWitness;

    sub_197452A84(v32, a10, AssociatedConformanceWitness);
    sub_1974028C8(v18, v19);
    goto LABEL_22;
  }

  v33 = PersistentModel.modelContext.getter(a10, AssociatedConformanceWitness);
  sub_1974028C8(v18, v19);
  *a6 = v33;
LABEL_22:
}

uint64_t sub_1974C6238(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = MEMORY[0x1E69E77B0];
  v12 = *(*a2 + *MEMORY[0x1E69E77B0]);
  if (swift_getAssociatedTypeWitness() == v12)
  {
    (*(a4 + 56))(&v20, v12, a4);
    v18 = v22;
    v19 = v23;
    __swift_project_boxed_opaque_existential_1Tm_2(&v20, v22);
    (*(v19 + 88))(a2, *(v10 + *v11 + 8), a3, a5, v18, v19);
    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v20);
  }

  else
  {
    sub_1974C2DAC(a2, a4, &v20);
    v13 = v21;

    v14 = sub_197521FFC();
    v15 = swift_conformsToProtocol2();
    if (v15)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      sub_1973F82A8(&v20);

      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      sub_1974C6478(v14, v13, a1, v12, *(v10 + *v11 + 8), a3, v14, a4, a5, v15, 516);

      return sub_1973F82A8(&v20);
    }
  }

  return result;
}

uint64_t sub_1974C6478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_197522B2C();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;

    sub_197434244(a4, a7, a8, a10, &v23);
    v17 = v24;
    v18 = v25;
    __swift_project_boxed_opaque_existential_1Tm_2(&v23, v24);
    (*(v18 + 88))(v16, a5, a6, a9, v17, v18);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v23);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v21 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v21);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

void sub_1974C6688(uint64_t a1, uint64_t a2, uint64_t *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  PersistentModel.persistentModelID.getter(a10, AssociatedConformanceWitness, &v21);
  v16 = v21;
  v17 = v22;
  sub_1974028EC(v21, v22);
  sub_19742AE44(&v21, v16, v17);
  sub_1974028C8(v21, v22);
  v18 = *a3;

  LOBYTE(a3) = sub_197455CE4(v16, v17, v18);

  if (a3 & 1) == 0 && (a4)
  {
    if (sub_1973FE6F0(a10, AssociatedConformanceWitness))
    {
      v21 = v16;
      v22 = v17;
      sub_197405108();
      sub_19752166C();
      swift_unknownObjectRetain();
      sub_19752168C();
      return;
    }

    sub_197454D38(a7, a1, a8, a10, a11, AssociatedConformanceWitness);
  }

  sub_1974028C8(v16, v17);
}

uint64_t sub_1974C682C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_197522B2C();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;

    sub_197434244(a5, a8, a9, a11, &v23);
    v17 = v24;
    v18 = v25;
    __swift_project_boxed_opaque_existential_1Tm_2(&v23, v24);
    (*(v18 + 136))(v16, a4, a6, a7, a10, v17, v18);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v23);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v21 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v21);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

void sub_1974C6A38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  PersistentModel.persistentModelID.getter(a7, AssociatedConformanceWitness, &v19);
  v15 = v19;
  v16 = v20;
  v17 = sub_197455CE4(v19, v20, v13);

  sub_1974028C8(v15, v16);
  if ((v17 & 1) == 0)
  {
    sub_197452DB8(a1, AssociatedConformanceWitness, a5, a8);
    sub_1974530DC(a4, a1, a5, a7, a8, AssociatedConformanceWitness);
  }
}

uint64_t PersistentModel.setValue<A, B>(forKey:to:)(uint64_t *a1, uint64_t a2, ValueMetadata *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v115 = a6;
  v112 = a5;
  v111 = a1;
  v9 = (*a1 + *MEMORY[0x1E69E77B0]);
  v10 = v9[1];
  v101 = sub_197521F5C();
  v100 = *(v101 - 8);
  v12 = MEMORY[0x1EEE9AC00](v101, v11);
  v103 = &v100 - v13;
  v107 = *(v10 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v100 - v19;
  v21 = *v9;
  if (sub_1973FE6F0(*v9, a4))
  {
    sub_1974258A4(v21, a4);
  }

  v114 = v6;
  v129 = PersistentModel.modelContext.getter(v21, a4);
  v22 = MEMORY[0x1E69E7CC0];
  v128 = MEMORY[0x1E69E7CC0];
  v127 = MEMORY[0x1E69E7CD0];
  v126 = sub_1975215CC();
  v23 = sub_19744C800(v111, v21, a4);
  v24 = swift_beginAccess();
  v113 = v23;
  v125 = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  *(&v100 - 12) = v21;
  *(&v100 - 11) = v10;
  *(&v100 - 10) = a3;
  *(&v100 - 9) = a4;
  v26 = v115;
  *(&v100 - 8) = v112;
  *(&v100 - 7) = v26;
  LODWORD(v110) = v27;
  *(&v100 - 48) = v27;
  *(&v100 - 5) = &v125;
  v96 = &v127;
  v97 = &v126;
  v98 = &v129;
  v99 = &v128;
  sub_197512FA8(sub_1974CEC1C, (&v100 - 14), v10, v26);
  v28 = v125;
  if (*(v125 + 16) && v129)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1974BD348(a3, v28, a3, AssociatedConformanceWitness);
  }

  v106 = v28;
  v30 = v114;
  v31 = PersistentModel.modelContext.getter(v21, a4);
  v108 = v17;
  if (v31)
  {

    v32 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    v33 = v129;
    v32 = MEMORY[0x1E69E7CD0];
    if (v129)
    {
      v34 = v128;
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v128 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_197433F80(0, v34[2] + 1, 1, v34);
        v128 = v34;
      }

      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        v34 = sub_197433F80((v36 > 1), v37 + 1, 1, v34);
      }

      v34[2] = v37 + 1;
      v38 = &v34[2 * v37];
      v30 = v114;
      v38[4] = v114;
      v38[5] = a4;
      v128 = v34;
      sub_197452A84(v33, v21, a4);
    }
  }

  v124 = v32;
  v39 = sub_197405108();
  v40 = &type metadata for PersistentIdentifier;
  v123 = sub_1975215BC();
  v41 = v112;
  v42 = v115;
  v43 = sub_1974C7C68(v30, v111, a3, a4, v112, v115);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v100 - 12) = v21;
  *(&v100 - 11) = v10;
  *(&v100 - 10) = a3;
  *(&v100 - 9) = a4;
  *(&v100 - 8) = v41;
  *(&v100 - 7) = v42;
  *(&v100 - 6) = &v124;
  *(&v100 - 5) = &v127;
  LOBYTE(v96) = v110;
  v97 = &v123;
  v98 = v45;
  v99 = v113;
  sub_197512FA8(sub_1974CEC64, (&v100 - 14), v10, v42);
  v46 = v107;
  v47 = *(v107 + 8);
  v105 = v107 + 8;
  v104 = v47;
  v47(v20, v10);
  v48 = v123;
  v49 = MEMORY[0x19A8DFD80](v123, &type metadata for PersistentIdentifier, a3, v39);
  v50 = v108;
  if ((v49 & 1) == 0)
  {
    v51 = v129;
    if (v129)
    {
      *&v119 = v48;
      sub_19752163C();

      swift_getWitnessTable();
      v52 = sub_197521ADC();
      v53 = swift_getAssociatedConformanceWitness();
      sub_1974BD348(a3, v52, a3, v53);
    }

    v110 = a3;
    v109 = v10;
    v50 = v48 + 64;
    v54 = 1 << *(v48 + 32);
    v55 = -1;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    v56 = v55 & *(v48 + 64);
    v57 = (v54 + 63) >> 6;
    v10 = v48;

    v58 = 0;
    a3 = v21;
    while (v56)
    {
      v59 = a4;
      v60 = v58;
LABEL_25:
      v61 = __clz(__rbit64(v56));
      v56 &= v56 - 1;
      v40 = *(*(v10 + 56) + ((v60 << 9) | (8 * v61)));
      v62 = v110;
      v63 = swift_getAssociatedConformanceWitness();
      swift_unknownObjectRetain();
      v64 = v62;
      a4 = v59;
      v21 = a3;
      v65 = v63;
      v51 = v114;
      sub_197454D38(v113, v40, a3, v64, a4, v65);
      swift_unknownObjectRelease();
    }

    while (1)
    {
      v60 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      if (v60 >= v57)
      {
        v48 = v10;

        v50 = v108;
        v10 = v109;
        a3 = v110;
        v46 = v107;
        goto LABEL_28;
      }

      v56 = *(v50 + 8 * v60);
      ++v58;
      if (v56)
      {
        v59 = a4;
        v58 = v60;
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

LABEL_28:
  v102 = v48;
  v66 = v126;
  *&v119 = v126;
  v67 = sub_197521AAC();
  swift_bridgeObjectRetain_n();
  v68 = v103;
  v69 = swift_dynamicCast();
  v70 = *(v46 + 56);
  if (!v69)
  {
    v70(v68, 1, 1, v10);
    (*(v100 + 8))(v68, v101);
    *&v119 = 0;
    *(&v119 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000032, 0x8000000197527E30);
    v95 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v95);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    v117 = v66;
    swift_getWitnessTable();
    sub_19752280C();
    LODWORD(v99) = 0;
    v94 = 663;
    goto LABEL_55;
  }

  v70(v68, 0, 1, v10);
  (*(v46 + 32))(v50, v68, v10);
  v71 = v114;
  if (PersistentModel.modelContext.getter(v21, a4))
  {
    sub_197432658(v71, v21, a4);
  }

  v56 = v67;
  v110 = v66;
  if (swift_getAssociatedTypeWitness() != v21)
  {
    sub_1974C2DAC(v111, a4, &v119);
    v72 = v120;
    v73 = sub_197521FFC();
    v74 = swift_conformsToProtocol2();
    if (v74 && v73)
    {
      sub_1974C8268(v73, v72, v71, v50, v21, v10, a3, v73, a4, v112, v115, v74);
      sub_1973F82A8(&v119);
      goto LABEL_36;
    }

    v117 = 0;
    v118 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
    v93 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v93);

    LODWORD(v99) = 0;
    v94 = 683;
LABEL_55:
    v98 = v94;
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  (*(a4 + 56))(&v119, v21, a4);
  v75 = v121;
  v76 = v122;
  __swift_project_boxed_opaque_existential_1Tm_2(&v119, v121);
  (*(v76 + 144))(v111, v50, v10, a3, v112, v115, v75, v76);
  __swift_destroy_boxed_opaque_existential_1Tm_3(&v119);
LABEL_36:
  v77 = PersistentModel.modelContext.getter(v21, a4);
  v40 = v110;
  if (!v77)
  {
    v51 = v128;
    swift_unknownObjectRetain();
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v51;
    if (v78)
    {
LABEL_39:
      v81 = v51[2];
      v80 = v51[3];
      if (v81 >= v80 >> 1)
      {
        v78 = sub_197433F80((v80 > 1), v81 + 1, 1, v51);
        v51 = v78;
      }

      v51[2] = v81 + 1;
      v82 = &v51[2 * v81];
      v82[4] = v114;
      v82[5] = a4;
      v128 = v51;
      goto LABEL_42;
    }

LABEL_52:
    v78 = sub_197433F80(0, v51[2] + 1, 1, v51);
    v51 = v78;
    v128 = v78;
    goto LABEL_39;
  }

LABEL_42:
  *&v119 = v40;
  MEMORY[0x1EEE9AC00](v78, v79);
  *(&v100 - 10) = v21;
  *(&v100 - 9) = v10;
  *(&v100 - 8) = a3;
  *(&v100 - 7) = a4;
  v83 = v115;
  *(&v100 - 6) = v112;
  *(&v100 - 5) = v83;
  v96 = &v124;
  v97 = v84;
  v98 = v113;
  v116 = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  sub_197512FA8(sub_1974CECAC, (&v100 - 12), v56, WitnessTable);

  if (v129)
  {
    v86 = v128;
    v87 = v128[2];
    if (v87)
    {

      v88 = v86 + 5;
      do
      {
        v89 = *v88;
        ObjectType = swift_getObjectType();
        v91 = swift_unknownObjectRetain();
        sub_197454EEC(v91, ObjectType, v89);
        swift_unknownObjectRelease();
        v88 += 2;
        --v87;
      }

      while (v87);
    }

    else
    {
    }

    v104(v50, v10);
  }

  else
  {
    v104(v50, v10);
  }
}

void sub_1974C7950(void *a1, char a2, char **a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  PersistentModel.persistentModelID.getter(a10, AssociatedConformanceWitness, &v37);
  v19 = v37;
  v20 = v38;
  if (a2 & 1) != 0 && (sub_1973FE6F0(a10, AssociatedConformanceWitness))
  {
    v21 = *a3;
    sub_1974028EC(v19, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v21;
    v35 = a6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_197445BA8(0, *(v21 + 2) + 1, 1, v21);
      *a3 = v21;
    }

    v24 = *(v21 + 2);
    v23 = *(v21 + 3);
    if (v24 >= v23 >> 1)
    {
      v21 = sub_197445BA8((v23 > 1), v24 + 1, 1, v21);
      *a3 = v21;
    }

    *(v21 + 2) = v24 + 1;
    v25 = &v21[16 * v24];
    *(v25 + 4) = v19;
    v25[40] = v20;
    a6 = v35;
  }

  v26 = *a4;

  v27 = sub_197455CE4(v19, v20, v26);

  if (v27)
  {

    goto LABEL_14;
  }

  sub_1974028EC(v19, v20);
  sub_19742AE44(&v37, v19, v20);
  sub_1974028C8(v37, v38);
  v37 = a1;
  sub_197521AAC();
  swift_unknownObjectRetain();
  sub_197521A7C();
  if (PersistentModel.modelContext.getter(a10, AssociatedConformanceWitness))
  {

    if (*a6)
    {
LABEL_14:
      sub_1974028C8(v19, v20);
      return;
    }
  }

  else if (*a6)
  {
    v28 = *a7;
    swift_unknownObjectRetain();
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v28;
    if ((v29 & 1) == 0)
    {
      v28 = sub_197433F80(0, v28[2] + 1, 1, v28);
      *a7 = v28;
    }

    v31 = v28[2];
    v30 = v28[3];
    if (v31 >= v30 >> 1)
    {
      v28 = sub_197433F80((v30 > 1), v31 + 1, 1, v28);
      *a7 = v28;
    }

    v28[2] = v31 + 1;
    v32 = &v28[2 * v31];
    v32[4] = a1;
    v32[5] = AssociatedConformanceWitness;

    sub_197452A84(v33, a10, AssociatedConformanceWitness);
    sub_1974028C8(v19, v20);
    goto LABEL_22;
  }

  v34 = PersistentModel.modelContext.getter(a10, AssociatedConformanceWitness);
  sub_1974028C8(v19, v20);
  *a6 = v34;
LABEL_22:
}

uint64_t sub_1974C7C68(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a2;
  v13 = MEMORY[0x1E69E77B0];
  v14 = *(*a2 + *MEMORY[0x1E69E77B0]);
  if (swift_getAssociatedTypeWitness() == v14)
  {
    (*(a4 + 56))(&v23, v14, a4);
    v21 = v25;
    v22 = v26;
    __swift_project_boxed_opaque_existential_1Tm_2(&v23, v25);
    (*(v22 + 88))(a2, *(v12 + *v13 + 8), a3, a6, v21, v22);
    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v23);
  }

  else
  {
    v15 = a5;
    sub_1974C2DAC(a2, a4, &v23);
    v16 = v24;

    v17 = sub_197521FFC();
    v18 = swift_conformsToProtocol2();
    if (v18)
    {
      v19 = v17 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      sub_1973F82A8(&v23);

      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      sub_1974C7EB0(v17, v16, a1, v14, *(v12 + *v13 + 8), a3, v17, a4, v15, a6, v18);

      return sub_1973F82A8(&v23);
    }
  }

  return result;
}

uint64_t sub_1974C7EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_197522B2C();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;

    sub_197434244(a4, a7, a8, a11, &v23);
    v17 = v24;
    v18 = v25;
    __swift_project_boxed_opaque_existential_1Tm_2(&v23, v24);
    (*(v18 + 88))(v16, a5, a6, a10, v17, v18);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v23);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v21 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v21);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

void sub_1974C80C0(uint64_t a1, uint64_t a2, uint64_t *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  PersistentModel.persistentModelID.getter(a10, AssociatedConformanceWitness, &v22);
  v17 = v22;
  v18 = v23;
  sub_1974028EC(v22, v23);
  sub_19742AE44(&v22, v17, v18);
  sub_1974028C8(v22, v23);
  v19 = *a3;

  LOBYTE(a3) = sub_197455CE4(v17, v18, v19);

  if (a3 & 1) == 0 && (a4)
  {
    if (sub_1973FE6F0(a10, AssociatedConformanceWitness))
    {
      v22 = v17;
      v23 = v18;
      sub_197405108();
      sub_19752166C();
      swift_unknownObjectRetain();
      sub_19752168C();
      return;
    }

    sub_197454D38(a7, a1, a8, a10, a11, AssociatedConformanceWitness);
  }

  sub_1974028C8(v17, v18);
}

uint64_t sub_1974C8268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_197522B2C();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;

    sub_197434244(a5, a8, a9, a12, &v24);
    v17 = v25;
    v18 = v26;
    __swift_project_boxed_opaque_existential_1Tm_2(&v24, v25);
    (*(v18 + 144))(v16, a4, a6, a7, a10, a11, v17, v18);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v24);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v21 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v21);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

void sub_1974C8470(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = *a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  PersistentModel.persistentModelID.getter(a7, AssociatedConformanceWitness, &v20);
  v16 = v20;
  v17 = v21;
  v18 = sub_197455CE4(v20, v21, v14);

  sub_1974028C8(v16, v17);
  if ((v18 & 1) == 0)
  {
    sub_197452DB8(a1, AssociatedConformanceWitness, a5, a8);
    sub_1974530DC(a4, a1, a5, a7, a8, AssociatedConformanceWitness);
  }
}

uint64_t sub_1974C8578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_197522B2C();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;

    sub_197434244(a5, a7, a8, a9, &v21);
    v16 = v22;
    v17 = v23;
    __swift_project_boxed_opaque_existential_1Tm_2(&v21, v22);
    (*(v17 + 152))(v15, a4, a6, v16, v17);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v21);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v19 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v19);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974C877C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (sub_1973FE6F0(a6, a9))
  {
    sub_1974258A4(a6, a9);
  }

  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a8;
  v15[4] = a9;
  v15[5] = a10;
  v15[6] = a2;
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a8;
  v16[4] = a9;
  v16[5] = a10;
  v16[6] = a2;
  v20 = a6;
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a8;
  v17[4] = a9;
  v17[5] = a10;
  v17[6] = a2;
  v17[7] = a3;
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a8;
  v18[4] = a9;
  v18[5] = a10;
  v18[6] = a2;
  v18[7] = a3;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  sub_1974CE944(a4, sub_1974CF524, v15, sub_1974CF53C, v16, sub_1974CF56C, v17, sub_1974CF5C4, v18, a5, a7, v20, a8, a10, a9);
}

uint64_t sub_1974C8948(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (PersistentModel.modelContext.getter(v9, a5))
  {
    sub_197432658(a2, v9, a5);
  }

  sub_197434244(v9, v9, a5, a5, v13);
  sub_1973FFCAC(v13, v12);
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _KKMDBackingData(0, v9, a5, v10);
  if (swift_dynamicCast())
  {
    sub_197513168(a1);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(v13);
  }

  else
  {
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000035, 0x80000001975283C0);
    sub_1975227FC();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974C8B0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v40 = a4;
  v41 = a5;
  v39 = a3;
  v11 = *a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v45 = &v37 - v14;
  v15 = MEMORY[0x1E69E77B0];
  v42 = *(v11 + *MEMORY[0x1E69E77B0]);
  v44 = a6;
  v46 = a2;
  sub_197434244(v42, v42, a6, a6, v49);
  v16 = v50;
  v17 = v51;
  __swift_project_boxed_opaque_existential_1Tm_2(v49, v50);
  v18 = *(v17 + 88);
  v19 = *(v11 + *v15 + 8);
  v20 = *(*(v19 + 16) + 16);
  v47[2] = swift_getWitnessTable();
  v47[3] = a7;
  v43 = a7;
  WitnessTable = swift_getWitnessTable();
  v18(v47, a1, v19, v20, WitnessTable, v16, v17);
  if (v47[0])
  {
    v38 = WitnessTable;
    v48 = v47[0];
    v23 = v40;
    v22 = v41;
    v24 = PersistentModel.persistentModelID.getter(v40, v41, v47);
    MEMORY[0x1EEE9AC00](v24, v25);
    *(&v37 - 8) = v23;
    v27 = v42;
    v26 = v43;
    *(&v37 - 7) = v42;
    *(&v37 - 6) = v20;
    v28 = v44;
    *(&v37 - 5) = v22;
    *(&v37 - 4) = v28;
    *(&v37 - 3) = v26;
    *(&v37 - 2) = v29;
    v43 = v29;
    LODWORD(v41) = v30;
    *(&v37 - 8) = v30;
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_197521D3C();
    v31 = v46;
    if (PersistentModel.modelContext.getter(v27, v28))
    {
      sub_197432658(v31, v27, v28);
    }

    v32 = v50;
    v33 = v51;
    __swift_project_boxed_opaque_existential_1Tm_2(v49, v50);
    v47[0] = v48;
    (*(v33 + 136))(a1, v47, v19, v20, v38, v32, v33);

    v34 = sub_1975213EC();
    v35 = v45;
    (*(*(v34 - 8) + 56))(v45, 1, 1, v34);
    sub_1974C1E20(a1, v35, v27, v28);
    sub_1974028C8(v43, v41);
    sub_1973F7E04(v35, &qword_1EAF2B658, &unk_19752F180);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_3(v49);
}

uint64_t sub_1974C8EA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v32 = a7;
  v36 = a5;
  v33 = a4;
  v35 = a3;
  v31 = a2;
  v9 = *a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v37 = &v29 - v12;
  v13 = MEMORY[0x1E69E77B0];
  v14 = *(v9 + *MEMORY[0x1E69E77B0]);
  sub_197434244(v14, v14, a6, a6, v51);
  v15 = v53;
  __swift_project_boxed_opaque_existential_1Tm_2(v51, v52);
  v30 = *(v15 + 88);
  v16 = *(v9 + *v13 + 8);
  v17 = *(v16 + 16);
  v18 = v32;
  v49 = v32;
  WitnessTable = swift_getWitnessTable();
  v38 = a1;
  v34 = WitnessTable;
  v20 = v31;
  v30(&v50, a1, v16, v17);
  v21 = v33;
  v22 = v36;
  PersistentModel.persistentModelID.getter(v33, v36, &v47);
  v39 = v21;
  v40 = v14;
  v33 = v17;
  v41 = v17;
  v42 = v22;
  v43 = a6;
  v44 = v18;
  v36 = v47;
  v45 = v47;
  LODWORD(v35) = v48;
  v46 = v48;
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_197521D3C();
  if (PersistentModel.modelContext.getter(v14, a6))
  {
    sub_197432658(v20, v14, a6);
  }

  v23 = v52;
  v24 = v53;
  __swift_project_boxed_opaque_existential_1Tm_2(v51, v52);
  v47 = v50;
  v25 = v38;
  (*(v24 + 136))(v38, &v47, v16, v33, v34, v23, v24);

  v26 = sub_1975213EC();
  v27 = v37;
  (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
  sub_1974C1E20(v25, v27, v14, a6);
  sub_1974028C8(v36, v35);
  sub_1973F7E04(v27, &qword_1EAF2B658, &unk_19752F180);
  return __swift_destroy_boxed_opaque_existential_1Tm_3(v51);
}

uint64_t sub_1974C9260(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  PersistentModel.persistentModelID.getter(a6, a9, &v15);
  v11 = v15;
  v12 = v16;
  sub_1974028EC(a2, a3);
  v13 = sub_19742291C(v11, v12, a2, a3);
  sub_1974028C8(a2, a3);
  sub_1974028C8(v11, v12);
  return v13 & 1;
}

uint64_t sub_1974C9300(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  v9 = *a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v21[-1] - v12;
  v14 = MEMORY[0x1E69E77B0];
  v15 = *(v9 + *MEMORY[0x1E69E77B0]);
  if (PersistentModel.modelContext.getter(v15, a5))
  {
    sub_197432658(a2, v15, a5);
  }

  sub_197434244(v15, v15, a5, a5, v21);
  v16 = v22;
  v17 = v23;
  __swift_project_boxed_opaque_existential_1Tm_2(v21, v22);
  (*(v17 + 128))(a1, 0, *(*(v9 + *v14 + 8) + 16), v20, v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm_3(v21);
  v18 = sub_1975213EC();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  sub_1974C1E20(a1, v13, v15, a5);
  return sub_1973F7E04(v13, &qword_1EAF2B658, &unk_19752F180);
}

uint64_t sub_1974C94E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a1;
  if (PersistentModel.modelContext.getter(a4, a7))
  {
    sub_197432658(a2, a4, a7);
  }

  v14 = *(v13 + *MEMORY[0x1E69E77B0]);
  sub_197434244(a4, v14, a7, a8, v18);
  sub_1973FFCAC(v18, v17);
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _KKMDBackingData(0, v14, a8, v15);
  if (swift_dynamicCast())
  {
    sub_197513168(a1);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(v18);
  }

  else
  {
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000035, 0x80000001975283C0);
    sub_1975227FC();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974C96C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a8;
  v41 = a6;
  v36 = a5;
  v40 = a4;
  v38 = a3;
  v34 = a2;
  v37 = a9;
  v13 = *a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v42 = &v34 - v16;
  v17 = MEMORY[0x1E69E77B0];
  v18 = *(v13 + *MEMORY[0x1E69E77B0]);
  sub_197434244(a5, v18, a8, a9, v58);
  v19 = v60;
  __swift_project_boxed_opaque_existential_1Tm_2(v58, v59);
  v20 = *(v19 + 88);
  v21 = *(v13 + *v17 + 8);
  v22 = *(v21 + 16);
  v56 = a7;
  WitnessTable = swift_getWitnessTable();
  v43 = a1;
  v24 = a1;
  v39 = WitnessTable;
  v25 = v34;
  v26 = v35;
  v27 = v36;
  v20(&v57, v24, v21, v22);
  PersistentModel.persistentModelID.getter(v22, a7, &v54);
  v44 = v40;
  v45 = v22;
  v46 = v27;
  v47 = v18;
  v48 = v41;
  v49 = a7;
  v50 = v26;
  v51 = v37;
  v41 = v54;
  v52 = v54;
  LODWORD(v40) = v55;
  v53 = v55;
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_197521D3C();
  if (PersistentModel.modelContext.getter(v27, v26))
  {
    sub_197432658(v25, v27, v26);
  }

  v28 = v59;
  v29 = v60;
  __swift_project_boxed_opaque_existential_1Tm_2(v58, v59);
  v54 = v57;
  v30 = v43;
  (*(v29 + 136))(v43, &v54, v21, v22, v39, v28, v29);

  v31 = sub_1975213EC();
  v32 = v42;
  (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
  sub_1974C1E20(v30, v32, v27, v26);
  sub_1974028C8(v41, v40);
  sub_1973F7E04(v32, &qword_1EAF2B658, &unk_19752F180);
  return __swift_destroy_boxed_opaque_existential_1Tm_3(v58);
}

uint64_t sub_1974C9A8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v47 = a6;
  v44 = a3;
  v45 = a4;
  v14 = *a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v49 = &v42 - v17;
  v18 = MEMORY[0x1E69E77B0];
  v19 = *(v14 + *MEMORY[0x1E69E77B0]);
  v52 = a5;
  v43 = v19;
  v53 = a8;
  v46 = a9;
  v51 = a2;
  sub_197434244(a5, v19, a8, a9, v56);
  v20 = v57;
  v21 = v58;
  __swift_project_boxed_opaque_existential_1Tm_2(v56, v57);
  v22 = *(v21 + 88);
  v23 = *(v14 + *v18 + 8);
  v24 = *(*(v23 + 16) + 16);
  v54[2] = swift_getWitnessTable();
  v54[3] = a7;
  v48 = a7;
  WitnessTable = swift_getWitnessTable();
  v50 = a1;
  v22(v54, a1, v23, v24, WitnessTable, v20, v21);
  if (v54[0])
  {
    v42 = WitnessTable;
    v55 = v54[0];
    v26 = v48;
    v27 = PersistentModel.persistentModelID.getter(v24, v48, v54);
    MEMORY[0x1EEE9AC00](v27, v28);
    *(&v42 - 10) = v45;
    *(&v42 - 9) = v24;
    v30 = v52;
    v29 = v53;
    v31 = v43;
    *(&v42 - 8) = v52;
    *(&v42 - 7) = v31;
    v32 = v46;
    *(&v42 - 6) = v47;
    *(&v42 - 5) = v26;
    *(&v42 - 4) = v29;
    *(&v42 - 3) = v32;
    v48 = v33;
    *(&v42 - 2) = v33;
    LODWORD(v47) = v34;
    *(&v42 - 8) = v34;
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_197521D3C();
    v35 = v51;
    if (PersistentModel.modelContext.getter(v30, v29))
    {
      sub_197432658(v35, v30, v29);
    }

    v36 = v57;
    v37 = v58;
    __swift_project_boxed_opaque_existential_1Tm_2(v56, v57);
    v54[0] = v55;
    v38 = v50;
    (*(v37 + 136))(v50, v54, v23, v24, v42, v36, v37);

    v39 = sub_1975213EC();
    v40 = v49;
    (*(*(v39 - 8) + 56))(v49, 1, 1, v39);
    sub_1974C1E20(v38, v40, v30, v29);
    sub_1974028C8(v48, v47);
    sub_1973F7E04(v40, &qword_1EAF2B658, &unk_19752F180);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_3(v56);
}

uint64_t sub_1974C9E60(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  PersistentModel.persistentModelID.getter(a5, a9, &v15);
  v11 = v15;
  v12 = v16;
  sub_1974028EC(a2, a3);
  v13 = sub_19742291C(v11, v12, a2, a3);
  sub_1974028C8(a2, a3);
  sub_1974028C8(v11, v12);
  return v13 & 1;
}

uint64_t sub_1974C9F00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a6;
  v13 = *a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v24[-1] - v16;
  if (PersistentModel.modelContext.getter(a4, a7))
  {
    sub_197432658(a2, a4, a7);
  }

  v18 = MEMORY[0x1E69E77B0];
  sub_197434244(a4, *(v13 + *MEMORY[0x1E69E77B0]), a7, a8, v24);
  v19 = v25;
  v20 = v26;
  __swift_project_boxed_opaque_existential_1Tm_2(v24, v25);
  (*(v20 + 128))(a1, 0, *(*(v13 + *v18 + 8) + 16), v23, v19, v20);
  __swift_destroy_boxed_opaque_existential_1Tm_3(v24);
  v21 = sub_1975213EC();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  sub_1974C1E20(a1, v17, a4, a7);
  return sub_1973F7E04(v17, &qword_1EAF2B658, &unk_19752F180);
}

uint64_t sub_1974CA0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a8;
  v15[4] = a9;
  v15[5] = a10;
  v15[6] = a2;
  v15[7] = a3;
  v15[8] = a4;
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a8;
  v16[4] = a9;
  v16[5] = a10;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a4;
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a8;
  v17[4] = a9;
  v17[5] = a10;
  v17[6] = a2;
  v17[7] = a3;
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a8;
  v18[4] = a9;
  v18[5] = a10;
  v18[6] = a2;
  v18[7] = a3;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  v19 = swift_retain_n();
  sub_1974CE944(v19, sub_1974CEF0C, v15, sub_1974CEF6C, v16, sub_1974CEFA0, v17, sub_1974CEFB8, v18, a5, a7, a6, a8, a10, a9);
}

uint64_t sub_1974CA2AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a6;
  v32 = a4;
  v14 = *a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v36 = &v31 - v17;
  v18 = MEMORY[0x1E69E77B0];
  v19 = *(v14 + *MEMORY[0x1E69E77B0]);
  v33 = a7;
  v37 = a2;
  sub_197434244(v19, v19, a7, a7, v40);
  v21 = v41;
  v20 = v42;
  __swift_project_boxed_opaque_existential_1Tm_2(v40, v41);
  v22 = *(v14 + *v18 + 8);
  v23 = (*(v20 + 72))(a1, v22, a8, v21, v20);
  v39 = a3;
  swift_unknownObjectRetain();
  v34 = a5;
  swift_dynamicCast();
  v24 = v38;
  v39 = v23;
  if (sub_19752173C())
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = v33;
    if (PersistentModel.modelContext.getter(v19, v33))
    {
      sub_197432658(v37, v19, v25);
    }

    v26 = v41;
    v27 = v42;
    __swift_project_boxed_opaque_existential_1Tm_2(v40, v41);
    (*(v27 + 120))(a1, v24, v22, a8, v26, v27);
    sub_1974CF1AC(v37, v32, v23, v34, v19, v22, v35, v25, a8);
    v28 = sub_1975213EC();
    v29 = v36;
    (*(*(v28 - 8) + 56))(v36, 1, 1, v28);
    sub_1974C1E20(a1, v29, v19, v25);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1973F7E04(v29, &qword_1EAF2B658, &unk_19752F180);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_3(v40);
}

uint64_t sub_1974CA590(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a6;
  v36 = a4;
  v14 = *a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v40 = &v35 - v17;
  v18 = MEMORY[0x1E69E77B0];
  v19 = *(v14 + *MEMORY[0x1E69E77B0]);
  v39 = a7;
  v41 = a2;
  sub_197434244(v19, v19, a7, a7, v44);
  v20 = v45;
  v21 = v46;
  __swift_project_boxed_opaque_existential_1Tm_2(v44, v45);
  v22 = *(*(v14 + *v18 + 8) + 16);
  v23 = (*(v21 + 80))(a1, v22, a8, v20, v21);
  v43 = a3;
  swift_unknownObjectRetain();
  v37 = a5;
  swift_dynamicCast();
  v24 = v42;
  if (v23)
  {
    v43 = v23;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v25 = sub_19752173C();
    swift_unknownObjectRelease();
    if (v25)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
      return __swift_destroy_boxed_opaque_existential_1Tm_3(v44);
    }
  }

  else
  {
    swift_unknownObjectRetain();
  }

  v26 = v39;
  v27 = v41;
  if (PersistentModel.modelContext.getter(v19, v39))
  {
    sub_197432658(v27, v19, v26);
  }

  v28 = v45;
  v29 = v46;
  __swift_project_boxed_opaque_existential_1Tm_2(v44, v45);
  v30 = v28;
  v31 = v41;
  (*(v29 + 128))(a1, v24, v22, a8, v30, v29);
  swift_unknownObjectRelease();
  if (v23)
  {
    swift_unknownObjectRetain();
    sub_1974CF1AC(v31, v36, v23, v37, v19, v22, v38, v26, a8);
    swift_unknownObjectRelease();
  }

  v32 = sub_1975213EC();
  v33 = v40;
  (*(*(v32 - 8) + 56))(v40, 1, 1, v32);
  sub_1974C1E20(a1, v33, v19, v26);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1973F7E04(v33, &qword_1EAF2B658, &unk_19752F180);
  return __swift_destroy_boxed_opaque_existential_1Tm_3(v44);
}

uint64_t sub_1974CA8CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a7;
  v30 = a3;
  v31 = a4;
  v10 = *a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v32 = &v28 - v13;
  v14 = MEMORY[0x1E69E77B0];
  v15 = *(v10 + *MEMORY[0x1E69E77B0]);
  v33 = a2;
  v34 = a6;
  sub_197434244(v15, v15, a6, a6, v41);
  v16 = v43;
  __swift_project_boxed_opaque_existential_1Tm_2(v41, v42);
  v17 = *(v16 + 88);
  v18 = *(v10 + *v14 + 8);
  v19 = *(*(v18 + 16) + 16);
  WitnessTable = swift_getWitnessTable();
  v38 = v29;
  v29 = swift_getWitnessTable();
  v17(&v39, a1, v18, v19);
  v20 = v39;
  if (!v39)
  {
    v20 = sub_197521A1C();
  }

  v40 = v20;
  v39 = v30;
  swift_unknownObjectRetain();
  swift_dynamicCast();
  v35 = v36;
  sub_197521A7C();
  v22 = v33;
  v21 = v34;
  if (PersistentModel.modelContext.getter(v15, v34))
  {
    sub_197432658(v22, v15, v21);
  }

  v23 = v42;
  v24 = v43;
  __swift_project_boxed_opaque_existential_1Tm_2(v41, v42);
  v39 = v40;
  (*(v24 + 136))(a1, &v39, v18, v19, v29, v23, v24);

  v25 = sub_1975213EC();
  v26 = v32;
  (*(*(v25 - 8) + 56))(v32, 1, 1, v25);
  sub_1974C1E20(a1, v26, v15, v21);
  sub_1973F7E04(v26, &qword_1EAF2B658, &unk_19752F180);
  return __swift_destroy_boxed_opaque_existential_1Tm_3(v41);
}

uint64_t sub_1974CABBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v29 = a7;
  v30 = a3;
  v31 = a4;
  v27 = a2;
  v9 = *a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v32 = &v27 - v12;
  v13 = MEMORY[0x1E69E77B0];
  v14 = *(v9 + *MEMORY[0x1E69E77B0]);
  sub_197434244(v14, v14, a6, a6, v37);
  v15 = v39;
  __swift_project_boxed_opaque_existential_1Tm_2(v37, v38);
  v16 = *(v15 + 88);
  v17 = *(v9 + *v13 + 8);
  v18 = *(v17 + 16);
  v35[1] = v29;
  WitnessTable = swift_getWitnessTable();
  v29 = a1;
  v19 = a6;
  v20 = v27;
  v16(&v36, a1, v17, v18);
  v35[0] = v30;
  swift_unknownObjectRetain();
  swift_dynamicCast();
  v33 = v34;
  sub_197521A7C();
  if (PersistentModel.modelContext.getter(v14, v19))
  {
    sub_197432658(v20, v14, v19);
  }

  v21 = v38;
  v22 = v39;
  __swift_project_boxed_opaque_existential_1Tm_2(v37, v38);
  v35[0] = v36;
  v23 = v29;
  (*(v22 + 136))(v29, v35, v17, v18, WitnessTable, v21, v22);

  v24 = sub_1975213EC();
  v25 = v32;
  (*(*(v24 - 8) + 56))(v32, 1, 1, v24);
  sub_1974C1E20(v23, v25, v14, v19);
  sub_1973F7E04(v25, &qword_1EAF2B658, &unk_19752F180);
  return __swift_destroy_boxed_opaque_existential_1Tm_3(v37);
}

uint64_t sub_1974CAE7C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {

    a1(a3);

    return sub_19745E20C(a1, a2);
  }

  else
  {
    sub_1975221EC();

    v11 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v11);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974CAF78(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*a1 + *MEMORY[0x1E69E77B0]);
  v10 = *v8;
  v9 = v8[1];
  v11 = sub_197522B2C();
  return sub_1974CAE7C(a2, v7, a1, a4, v9, v10, v11);
}

uint64_t sub_1974CB04C(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*a1 + *MEMORY[0x1E69E77B0]);
  v9 = *v8;
  v10 = *(v8[1] + 16);
  v11 = sub_197522B2C();
  return sub_1974CAE7C(a2, v7, a1, a4, v10, v9, v11);
}

uint64_t sub_1974CB120(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*a1 + *MEMORY[0x1E69E77B0]);
  v9 = *v8;
  v10 = *(*(v8[1] + 16) + 16);
  v11 = sub_197522B2C();
  return sub_1974CAE7C(a2, v7, a1, a4, v10, v9, v11);
}

uint64_t sub_1974CB1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_197434244(a4, a5, a6, a7, v22);
  sub_1973FFCAC(v22, v21);
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _KKMDBackingData(0, a5, a7, v13);
  if (swift_dynamicCast())
  {

    sub_1975131E4(v14);
  }

  else
  {
    sub_1973FFCAC(v22, v21);
    type metadata accessor for _FullFutureBackingData(0, a5, a7, v15);
    if (!swift_dynamicCast())
    {
      v21[0] = 0;
      v21[1] = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000030, 0x80000001975282F0);
      sub_1975227FC();
      result = sub_1975223EC();
      __break(1u);
      return result;
    }

    *(a3 + 112) = 1;
    *(v20 + 40) = a3;
  }

  v16 = sub_1975214CC();
  if (v16)
  {
    v17 = v16;
    v18 = swift_conformsToProtocol2();
    if (v18)
    {
      sub_1974CB1F8(v17, a2, a3, a4, v17, a6, v18);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_3(v22);
}

void *sub_1974CB414(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  v10 = *result;
  if ((*result - 2048) < 0xFFFFFFFFFFFFF801 || ((result = sub_19752147C(), result < 0x800) ? (v11 = result == v10) : (v11 = 0), !v11 ? (v12 = 0) : (v12 = 1), v10 - 515 >= 2 ? (v13 = v12 == 0) : (v13 = 0), !v13))
  {
    if (v9[1])
    {
      v14 = v9[1];
      result = swift_conformsToProtocol2();
      if (result)
      {
        sub_197434244(a4, v14, a5, result, v19);
        v15 = v20;
        v16 = v21;
        v17 = __swift_project_boxed_opaque_existential_1Tm_2(v19, v20);
        v22[3] = v15;
        v22[4] = v16;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
        (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v17, v15);
        __swift_destroy_boxed_opaque_existential_1Tm_3(v19);
        *(sub_1973FE71C(v15, v16) + 16) = a3;

        sub_1974CB414(v14, a2, a3, a4, a5);
        return __swift_destroy_boxed_opaque_existential_1Tm_3(v22);
      }
    }
  }

  return result;
}

uint64_t sub_1974CB5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  v30 = a5;
  v31 = a4;
  v29 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9B8, &qword_19752FE18);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v28 - v9;
  v11 = sub_197522AEC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  sub_197522ADC();
  sub_19752233C();
  sub_19752248C();
  if (!*(&v39 + 1))
  {
LABEL_12:

    goto LABEL_13;
  }

  while (1)
  {
    v34 = v37;
    v35 = v38;
    v36 = v39;
    if (*(&v37 + 1))
    {
      v16 = v34 == 0x6E696B636162245FLL && *(&v37 + 1) == 0xED00006174614467;
      if (v16 || (sub_19752282C() & 1) != 0)
      {
        break;
      }
    }

    sub_1973F7E04(&v34, &qword_1EAF2B9C0, &qword_19752FE20);
    sub_19752248C();
    if (!*(&v39 + 1))
    {
      goto LABEL_12;
    }
  }

  v40 = v34;
  v41[0] = v35;
  v41[1] = v36;

  sub_1974028B8(v41, &v42);
  v17 = v31;
  v18 = v32;
  type metadata accessor for _KKMDBackingData(0, v31, v32, v19);
  if (swift_dynamicCast())
  {
    v20 = v40;
    sub_197512E44();
    sub_19743A12C();

    type metadata accessor for KnownKeysDictionary();
    v21 = swift_allocObject();
    v22 = sub_1973FCD6C(v17, v18);
    v21[2] = v22;
    v21[3] = v23;
    v40 = 0u;
    v41[0] = 0u;
    v21[4] = sub_1973FE64C(&v40, v22[2]);
    *(v20 + 16) = v21;

LABEL_13:
  }

  sub_197522AAC();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1973F7E04(v10, &qword_1EAF2B9B8, &qword_19752FE18);
  }

  (*(v12 + 32))(v15, v10, v11);
  v25 = sub_197522ACC();
  v26 = swift_conformsToProtocol2();
  if (v26)
  {
    v27 = v25 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (!v27)
  {
    sub_1974CB5B4(v15, v25, v29, v25, v30, v26);
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1974CB990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for Schema();
  sub_1974D4C70(a1, a6, v15);
  v11 = v15[0];
  v12 = v15[2];
  v17 = v15[1];
  sub_1973F7E04(&v17, &qword_1EAF2B570, &qword_19752E998);
  v16 = v12;
  sub_1973F7E04(&v16, &qword_1EAF2B578, &qword_19752E9A0);
  swift_beginAccess();
  sub_1974EE598(v11);
  swift_endAccess();
  result = sub_1975214CC();
  if (result)
  {
    v14 = result;
    result = swift_conformsToProtocol2();
    if (result)
    {
      return sub_1974CB990(v14, a2, a3, v14, a5, result);
    }
  }

  return result;
}

uint64_t PersistentModel.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v8 = &v10 - v7;
  v11 = v3;
  sub_19752220C();
  swift_getAssociatedConformanceWitness();
  sub_1975216BC();
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

uint64_t sub_1974CBBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v11 = *a4;
  sub_197434244(*(*a4 + 232), a5, *(*a4 + 240), a6, &v55);
  v54 = a5;
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _KKMDBackingData(0, a5, v7, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    result = sub_1975214CC();
    if (result)
    {
      v45 = result;
      result = swift_conformsToProtocol2();
      if (result)
      {
        return sub_1974CBBF0(v45, v45, a3, a4, v45, result);
      }
    }

    return result;
  }

  v50 = *&v53[0];
  type metadata accessor for Schema.Entity();
  v13 = sub_1973FDF38(a2, v7);
  swift_beginAccess();
  v14 = *(v13 + 64);
  v49 = *(v14 + 16);
  if (!v49)
  {
LABEL_22:
    sub_1975131F4(&v55);
    *&v53[0] = v55;
    BYTE8(v53[0]) = v56;
    sub_197459D38(v53);
    v55 = a4;
    WitnessTable = swift_getWitnessTable();
    v42 = sub_1973FE71C(v11, WitnessTable);
    sub_1975131E4(v42);
    v43 = sub_197513208();
    sub_197430254(v43 & 1);

    goto LABEL_23;
  }

  v46 = v11;
  v47 = a3;
  v15 = v14 + 32;

  v17 = 0;
  v48 = v16;
  while (v17 < *(v16 + 16))
  {
    sub_1973FFCAC(v15, &v55);
    v18 = *(v50 + 16);
    v19 = v57;
    v20 = v58;
    __swift_project_boxed_opaque_existential_1Tm_2(&v55, v57);
    v21 = *(v20 + 32);

    v52 = v21(v19, v20);
    v7 = v22;
    v23 = a4[2];
    v24 = v57;
    v25 = v58;
    __swift_project_boxed_opaque_existential_1Tm_2(&v55, v57);
    v26 = *(v25 + 32);

    v27 = v26(v24, v25);
    v29 = v28;
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v55);
    v30 = *(v23 + 16);
    if (!*(v30 + 16))
    {

LABEL_11:
      memset(v53, 0, sizeof(v53));
      goto LABEL_12;
    }

    v31 = sub_1973F4028(v27, v29);
    v33 = v32;

    if ((v33 & 1) == 0)
    {
      goto LABEL_11;
    }

    v6 = *(*(v30 + 56) + 8 * v31);
    swift_beginAccess();
    if ((v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v34 = *(v23 + 32);
    if (v6 >= *(v34 + 16))
    {
      goto LABEL_30;
    }

    sub_1973FE21C(v34 + 32 * v6 + 32, v53, &qword_1EAF2AF20, &unk_19752F320);
LABEL_12:

    v35 = *(v18 + 16);
    v6 = v52;
    if (!*(v35 + 16))
    {
      goto LABEL_31;
    }

    v36 = sub_1973F4028(v52, v7);
    if ((v37 & 1) == 0)
    {
      goto LABEL_31;
    }

    v38 = v36;

    v6 = *(*(v35 + 56) + 8 * v38);
    swift_beginAccess();
    v39 = *(v18 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v18 + 32) = v39;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v39 = sub_19751C104(v39);
      *(v18 + 32) = v39;
      if ((v6 & 0x8000000000000000) != 0)
      {
LABEL_20:
        __break(1u);
LABEL_21:

        a3 = v47;
        v11 = v46;
        goto LABEL_22;
      }
    }

    if (v6 >= v39[2])
    {
      goto LABEL_28;
    }

    ++v17;
    sub_1973F7958(v53, &v39[4 * v6 + 4]);
    *(v18 + 32) = v39;
    swift_endAccess();
    sub_1973F7E04(v53, &qword_1EAF2AF20, &unk_19752F320);

    v15 += 40;
    v16 = v48;
    if (v49 == v17)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  sub_1975221EC();

  MEMORY[0x19A8DFF80](v6, v7);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974CC0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1973FE21C(a3, v76, &qword_1EAF2B9B0, &qword_19752FE10);
  sub_1973FE21C(v76, &v72, &qword_1EAF2B9B0, &qword_19752FE10);
  if (v74)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B220, &qword_19752D3B0);
    type metadata accessor for _StitchedBackingData(0, a8, a10, v13);
    if (swift_dynamicCast())
    {
      v15 = v71;
      v16 = a9;
      if (!v71)
      {
        goto LABEL_33;
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_1973F7E04(&v72, &qword_1EAF2B9B0, &qword_19752FE10);
  }

  sub_1973FFCAC(a4, &v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B220, &qword_19752D3B0);
  type metadata accessor for _StitchedBackingData(0, a8, a10, v17);
  if (swift_dynamicCast())
  {
    v15 = *&v69[0];
  }

  else
  {
    v15 = 0;
  }

  v16 = a9;
  if (!v15)
  {
LABEL_33:
    v53 = sub_1975214CC();
    if (v53)
    {
      v54 = v53;
      v55 = swift_conformsToProtocol2();
      if (v55)
      {
        sub_1974CC0F4(v54, v54, v76, a4, a5, a6, a7, v54, v16, v55);
      }
    }

    return sub_1973F7E04(v76, &qword_1EAF2B9B0, &qword_19752FE10);
  }

LABEL_10:
  v18 = type metadata accessor for _StitchedBackingData(0, a8, a10, v14);
  WitnessTable = swift_getWitnessTable();

  sub_1973F7E04(v76, &qword_1EAF2B9B0, &qword_19752FE10);
  v76[0] = v15;
  v58 = WitnessTable;
  v59 = v18;
  v76[3] = v18;
  v76[4] = WitnessTable;
  v20 = a5;
  swift_beginAccess();
  *(a5 + 16) = 1;
  v60 = v16;
  sub_197434244(a7, a8, v16, a10, &v72);
  v70 = a8;
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _KKMDBackingData(0, a8, a10, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:

    v16 = v60;
    goto LABEL_33;
  }

  v66 = *&v69[0];
  type metadata accessor for Schema.Entity();
  v22 = sub_1973FDF38(a2, a10);
  swift_beginAccess();
  v23 = v22[8];
  v65 = *(v23 + 16);
  if (!v65)
  {
LABEL_31:
    sub_1975131F4(&v72);
    *&v69[0] = v72;
    BYTE8(v69[0]) = v73;
    sub_197459D38(v69);
    v72 = v15;
    v51 = sub_1973FE71C(v59, v58);
    sub_1975131E4(v51);
    v52 = sub_197513208();
    sub_197430254(v52 & 1);

    goto LABEL_32;
  }

  v57 = a7;
  v24 = v23 + 32;

  v26 = 0;
  v64 = v25;
  while (v26 < *(v25 + 16))
  {
    sub_1973FFCAC(v24, &v72);
    v27 = *(v66 + 16);
    v28 = v74;
    v29 = v75;
    __swift_project_boxed_opaque_existential_1Tm_2(&v72, v74);
    v30 = *(v29 + 32);

    v67 = v30(v28, v29);
    v68 = v31;
    v20 = v15;
    v22 = *(v15 + 16);
    v32 = v74;
    v33 = v75;
    __swift_project_boxed_opaque_existential_1Tm_2(&v72, v74);
    v34 = *(v33 + 32);

    v35 = v34(v32, v33);
    v37 = v36;
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v72);
    v38 = v22[2];
    if (!*(v38 + 16))
    {

LABEL_20:
      memset(v69, 0, sizeof(v69));
      v15 = v20;
      goto LABEL_21;
    }

    v39 = sub_1973F4028(v35, v37);
    v41 = v40;

    if ((v41 & 1) == 0)
    {
      goto LABEL_20;
    }

    v42 = *(*(v38 + 56) + 8 * v39);
    swift_beginAccess();
    if ((v42 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    v43 = v22[4];
    if (v42 >= *(v43 + 16))
    {
      goto LABEL_40;
    }

    v15 = v20;
    sub_1973FE21C(v43 + 32 * v42 + 32, v69, &qword_1EAF2AF20, &unk_19752F320);
LABEL_21:

    v44 = *(v27 + 16);
    v20 = v67;
    v22 = v68;
    if (!*(v44 + 16))
    {
      goto LABEL_41;
    }

    v45 = sub_1973F4028(v67, v68);
    if ((v46 & 1) == 0)
    {
      goto LABEL_41;
    }

    v47 = v45;

    v48 = *(*(v44 + 56) + 8 * v47);
    swift_beginAccess();
    v49 = *(v27 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v27 + 32) = v49;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v48 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v49 = sub_19751C104(v49);
      *(v27 + 32) = v49;
      if ((v48 & 0x8000000000000000) != 0)
      {
LABEL_29:
        __break(1u);
LABEL_30:

        a7 = v57;
        goto LABEL_31;
      }
    }

    if (v48 >= v49[2])
    {
      goto LABEL_38;
    }

    ++v26;
    sub_1973F7958(v69, &v49[4 * v48 + 4]);
    *(v27 + 32) = v49;
    swift_endAccess();
    sub_1973F7E04(v69, &qword_1EAF2AF20, &unk_19752F320);

    v24 += 40;
    v25 = v64;
    if (v65 == v26)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  sub_1975221EC();

  MEMORY[0x19A8DFF80](v20, v22);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974CC744(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v13 = a4;
  v19 = a3;
  v20 = a4;
  sub_1973FC6F4(&v19, a7, a9, v22);
  sub_1973FFCAC(v22, &v19);
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _StitchedBackingData(0, a7, a9, v15);
  if (swift_dynamicCast())
  {
    v21 = a6;
    v19 = a5;
    __swift_project_boxed_opaque_existential_1Tm_2(&v19, a6);
    DynamicType = swift_getDynamicType();
    swift_unknownObjectRetain();
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v19);
    sub_1974CC890(DynamicType, a7, a5, a3, v13, v18, a6, a7, a8, a9);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_3(v22);
}

uint64_t sub_1974CC890(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v59 = *a6;
  sub_197434244(a7, a8, a9, a10, v72);
  sub_1973FFCAC(v72, &v69);
  v68 = a8;
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _FullFutureBackingData(0, a8, a10, v15);
  v57 = a3;
  v58 = a7;
  if (swift_dynamicCast())
  {

    *&v69 = a3;
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      v10 = type metadata accessor for _KKMDBackingData(0, a8, a10, v16);
      *&v69 = a4;
      BYTE8(v69) = a5;
      sub_1974028EC(a4, a5);
      v17 = sub_197512DF4(a8, &v69);
      v70 = v10;
      WitnessTable = swift_getWitnessTable();
      v71 = WitnessTable;
      *&v69 = v17;
      v19 = *(a10 + 64);

      v19(&v69, a8, a10);
      v70 = v10;
      v71 = WitnessTable;
      swift_unknownObjectRelease();
      *&v69 = v17;
      __swift_destroy_boxed_opaque_existential_1Tm_3(v72);
      sub_197434660(&v69, v72);
    }
  }

  sub_1973FFCAC(v72, &v69);
  type metadata accessor for _KKMDBackingData(0, a8, a10, v20);
  if (!swift_dynamicCast())
  {
    goto LABEL_35;
  }

  v64 = *&v67[0];
  type metadata accessor for Schema.Entity();
  v21 = sub_1973FDF38(a2, a10);
  swift_beginAccess();
  v22 = *(v21 + 64);
  v63 = *(v22 + 16);
  if (!v63)
  {
    goto LABEL_25;
  }

  v23 = v22 + 32;

  v25 = 0;
  v62 = v24;
  while (1)
  {
    if (v25 >= *(v24 + 16))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      sub_1975221EC();

      MEMORY[0x19A8DFF80](v21, v10);
      while (1)
      {
        sub_1975223EC();
        __break(1u);
LABEL_35:
        *&v69 = 0;
        *(&v69 + 1) = 0xE000000000000000;
        sub_1975221EC();

        *&v67[0] = 0xD000000000000019;
        *(&v67[0] + 1) = 0x80000001975284B0;
        sub_1973FFCAC(v72, &v69);
        v56 = sub_1975217CC();
        MEMORY[0x19A8DFF80](v56);
      }
    }

    sub_1973FFCAC(v23, &v69);
    v26 = *(v64 + 16);
    v27 = v70;
    v28 = v71;
    __swift_project_boxed_opaque_existential_1Tm_2(&v69, v70);
    v29 = *(v28 + 32);

    v66 = v29(v27, v28);
    v10 = v30;
    v31 = a6[2];
    v32 = v70;
    v33 = v71;
    __swift_project_boxed_opaque_existential_1Tm_2(&v69, v70);
    v34 = *(v33 + 32);

    v35 = v34(v32, v33);
    v37 = v36;
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v69);
    v38 = *(v31 + 16);
    if (!*(v38 + 16))
    {

LABEL_14:
      memset(v67, 0, sizeof(v67));
      goto LABEL_15;
    }

    v21 = sub_1973F4028(v35, v37);
    v40 = v39;

    if ((v40 & 1) == 0)
    {
      goto LABEL_14;
    }

    v41 = *(*(v38 + 56) + 8 * v21);
    swift_beginAccess();
    if ((v41 & 0x8000000000000000) != 0)
    {
      goto LABEL_31;
    }

    v42 = *(v31 + 32);
    if (v41 >= *(v42 + 16))
    {
      goto LABEL_32;
    }

    sub_1973FE21C(v42 + 32 * v41 + 32, v67, &qword_1EAF2AF20, &unk_19752F320);
LABEL_15:

    v43 = *(v26 + 16);
    v21 = v66;
    if (!*(v43 + 16))
    {
      goto LABEL_33;
    }

    v44 = sub_1973F4028(v66, v10);
    if ((v45 & 1) == 0)
    {
      goto LABEL_33;
    }

    v46 = v44;

    v47 = *(*(v43 + 56) + 8 * v46);
    swift_beginAccess();
    v48 = *(v26 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v26 + 32) = v48;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v47 & 0x8000000000000000) != 0)
      {
        break;
      }

      goto LABEL_19;
    }

    v48 = sub_19751C104(v48);
    *(v26 + 32) = v48;
    if ((v47 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_19:
    if (v47 >= v48[2])
    {
      goto LABEL_30;
    }

    ++v25;
    sub_1973F7958(v67, &v48[4 * v47 + 4]);
    *(v26 + 32) = v48;
    swift_endAccess();
    sub_1973F7E04(v67, &qword_1EAF2AF20, &unk_19752F320);

    v23 += 40;
    v24 = v62;
    if (v63 == v25)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_24:

LABEL_25:
  *&v69 = a4;
  BYTE8(v69) = a5;
  sub_1974028EC(a4, a5);
  sub_197459D38(&v69);
  *&v69 = a6;
  v50 = swift_getWitnessTable();
  v51 = sub_1973FE71C(v59, v50);
  sub_1975131E4(v51);
  sub_197430254(1);

  v52 = sub_1975214CC();
  if (v52)
  {
    v53 = v52;
    v54 = swift_conformsToProtocol2();
    if (v54)
    {
      sub_1974CC890(v53, v53, v57, a4, a5, a6, v58, v53, a9, v54);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_3(v72);
}

Swift::Void __swiftcall PersistentModel.markDirty()()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v21 - v6;
  v8 = sub_1975213EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1974CD170(v3, v3, v2, v2, v12);
  v13 = sub_1973F68A4(v3, v2);
  v14 = *(v13 + 16);
  if (v14)
  {
    v23 = v13;
    v24 = v12;
    v15 = v13 + 32;
    v16 = (v9 + 16);
    v17 = v3;
    v18 = v2;
    v22 = v9;
    v19 = (v9 + 56);
    do
    {
      sub_1973F7E64(v15, v25);
      v20 = v26;

      sub_1973F82A8(v25);
      (*v16)(v7, v24, v8);
      (*v19)(v7, 0, 1, v8);
      sub_1974C1E20(v20, v7, v17, v18);

      sub_1973F7E04(v7, &qword_1EAF2B658, &unk_19752F180);
      v15 += 96;
      --v14;
    }

    while (v14);

    v9 = v22;
    v12 = v24;
  }

  else
  {
  }

  (*(v9 + 8))(v12, v8);
}

uint64_t sub_1974CD170@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v29 = a5;
  v27 = sub_197522AEC();
  v11 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1975213EC();
  v26 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a3;
  v19 = sub_1973FE074(a1, a3);
  swift_beginAccess();
  v20 = *(v19 + 104);

  if (v20)
  {
    if (*(v20 + 16))
    {
      v21 = sub_1973F7950(a2, a4);
      if (v22)
      {
        v23 = v26;
        (*(v26 + 16))(v18, *(v20 + 56) + *(v26 + 72) * v21, v15);

        return (*(v23 + 32))(v29, v18, v15);
      }
    }
  }

  v31 = a1;
  v30 = v6;
  swift_unknownObjectRetain();
  sub_197522ABC();
  sub_1974CD884(v14, v6, a2, a4, a1, a2, v28, a4, v29);
  return (*(v11 + 8))(v14, v27);
}

uint64_t sub_1974CD3CC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_197521FFC();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = result;
    sub_197521FFC();
    return sub_1974CD4C8(v14, a1, a3, a2, a4, v10, v14, a5, v13);
  }

  return result;
}

uint64_t sub_1974CD4C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = sub_197521F5C();
  v29 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v28 - v16;
  v18 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v15, v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a7;
  sub_197522B2C();
  if (swift_dynamicCastClass())
  {
    v32 = a3;

    swift_unknownObjectRetain();
    v22 = swift_dynamicCast();
    v23 = *(v18 + 56);
    if (v22)
    {
      v23(v17, 0, 1, a6);
      (*(v18 + 32))(v21, v17, a6);
      sub_1975213DC();
      sub_1975213CC();

      return (*(v18 + 8))(v21, a6);
    }

    v23(v17, 1, 1, a6);
    (*(v29 + 8))(v17, v13);
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1975221EC();

    v32 = 0xD00000000000001BLL;
    v33 = 0x8000000197528250;
    v27 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v27);
  }

  else
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000017, 0x8000000197528230);
    v31 = a2;
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v25 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v25);

    MEMORY[0x19A8DFF80](32, 0xE100000000000000);
    v26 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v26);
  }

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974CD884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v49 = a8;
  v54 = a7;
  v57 = a6;
  v53 = a5;
  v51 = a4;
  v50 = a3;
  v52 = a2;
  v55 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9B8, &qword_19752FE18);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v44 - v12;
  v14 = sub_197522AEC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v44 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v46 = &v44 - v24;
  v48 = sub_1975213EC();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v25);
  v45 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  sub_197522ADC();
  sub_19752233C();
  sub_19752248C();
  if (!*(&v63 + 1))
  {
LABEL_25:

LABEL_26:
    v28 = v57;
LABEL_27:
    sub_197522AAC();
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_1973F7E04(v13, &qword_1EAF2B9B8, &qword_19752FE18);
      *&v64 = 0;
      *(&v64 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000021, 0x8000000197528270);
      v43 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v43);

      MEMORY[0x19A8DFF80](0xD000000000000029, 0x80000001975282A0);
      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      (*(v15 + 32))(v18, v13, v14);
      sub_1974CD884(v18, v52, v50, v51, v53, v28, v54, v49, v55);
      return (*(v15 + 8))(v18, v14);
    }

    return result;
  }

  while (1)
  {
    v58 = v61;
    v59 = v62;
    v60 = v63;
    if (*(&v61 + 1))
    {
      v27 = v58 == 0x6E696B636162245FLL && *(&v61 + 1) == 0xED00006174614467;
      if (v27 || (sub_19752282C() & 1) != 0)
      {
        break;
      }
    }

    sub_1973F7E04(&v58, &qword_1EAF2B9C0, &qword_19752FE20);
    sub_19752248C();
    if (!*(&v63 + 1))
    {
      goto LABEL_25;
    }
  }

  v64 = v58;
  v65 = v59;
  v66 = v60;

  sub_1974028B8(&v65, &v67);
  v28 = v57;
  *&v64 = v57;
  swift_getExtendedExistentialTypeMetadata();
  if ((swift_dynamicCast() & 1) == 0 || !v69)
  {
    goto LABEL_27;
  }

  __swift_destroy_boxed_opaque_existential_1Tm_3(&v68);
  sub_197522ADC();
  sub_19752233C();
  sub_19752248C();
  if (!*(&v63 + 1))
  {
LABEL_30:

    v30 = v46;
    (*(v47 + 56))(v46, 1, 1, v48);
LABEL_31:
    sub_1973F7E04(v30, &qword_1EAF2B658, &unk_19752F180);
    goto LABEL_26;
  }

  while (1)
  {
    v58 = v61;
    v59 = v62;
    v60 = v63;
    if (*(&v61 + 1))
    {
      v29 = v58 == 0xD000000000000016 && *(&v61 + 1) == 0x8000000197525EF0;
      if (v29 || (sub_19752282C() & 1) != 0)
      {
        break;
      }
    }

    sub_1973F7E04(&v58, &qword_1EAF2B9C0, &qword_19752FE20);
    sub_19752248C();
    if (!*(&v63 + 1))
    {
      goto LABEL_30;
    }
  }

  v64 = v58;
  v65 = v59;
  v66 = v60;

  sub_1974028B8(&v65, &v68);
  v30 = v46;
  v31 = v48;
  v32 = swift_dynamicCast();
  v33 = v47;
  v34 = *(v47 + 56);
  v34(v30, v32 ^ 1u, 1, v31);
  if ((*(v33 + 48))(v30, 1, v31) == 1)
  {
    goto LABEL_31;
  }

  v35 = *(v33 + 32);
  v36 = v45;
  v35(v45, v30, v31);
  sub_1973FE074(v53, v54);
  v37 = sub_1974CE144(&v64);
  if (*v38)
  {
    v39 = v44;
    (*(v33 + 16))(v44, v45, v31);
    v34(v39, 0, 1, v31);
    v40 = v39;
    v36 = v45;
    sub_19749B95C(v40, v50, v51);
  }

  (v37)(&v64, 0);
  v41 = v55;

  return (v35)(v41, v36, v31);
}

uint64_t sub_1974CE198(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t), uint64_t a6, void (*a7)(uint64_t), uint64_t a8, void (*a9)(uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (sub_197521FFC() != a1)
  {
    goto LABEL_43;
  }

  sub_197521FFC();
  v18 = v17;
  v47 = v17;
  v19 = swift_conformsToProtocol2();
  if (v19)
  {
    v20 = v18 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v21 = v19;
    do
    {
      sub_1973F732C(v18, &v47, v18, v21);
      v18 = v47;
      v21 = swift_conformsToProtocol2();
      if (v21)
      {
        v22 = v18 == 0;
      }

      else
      {
        v22 = 1;
      }
    }

    while (!v22);
  }

  sub_197521FFC();
  v24 = v23;
  if (swift_conformsToProtocol2())
  {
    v25 = v24 == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = v25;
  if (!swift_dynamicCastMetatype())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B588, &unk_19752E9B0);
    v30 = sub_1975214EC();
    v31 = sub_1975214EC();
    if (v30)
    {
      if (v31 && v30 == v31)
      {
        goto LABEL_25;
      }
    }

    else if (!v31)
    {
LABEL_25:
      v32 = sub_1975214DC();
      if (v33 >= 1)
      {
        v34 = *v32;
        if (swift_conformsToProtocol2() && v34)
        {
          if (v34 == a13)
          {
            if (v26)
            {
              v35 = a7;
              if (!a7)
              {
                v47 = 0;
                v48 = 0xE000000000000000;
                sub_1975221EC();
                MEMORY[0x19A8DFF80](0xD000000000000067, 0x8000000197528040);
                sub_19752202C();
                sub_19752235C();
                goto LABEL_50;
              }

              sub_197521AAC();
              sub_197522B2C();
              v36 = swift_dynamicCastClassUnconditional();
              v37 = a8;
            }

            else
            {
              v35 = a9;
              if (!a9)
              {
                v47 = 0;
                v48 = 0xE000000000000000;
                sub_1975221EC();
                MEMORY[0x19A8DFF80](0xD000000000000071, 0x80000001975280B0);
                sub_19752202C();
                sub_19752235C();
                goto LABEL_50;
              }

              sub_197521AAC();
              sub_197521F5C();
              sub_197522B2C();
              v36 = swift_dynamicCastClassUnconditional();
              v37 = a10;
            }

            v35(v36);
            v28 = v35;
            v29 = v37;
            goto LABEL_37;
          }

          v47 = 0;
          v48 = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000013, 0x8000000197528000);
          v43 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v43);

          MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x8000000197528020);
          v44 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v44);
        }

        else
        {
          v47 = 0;
          v48 = 0xE000000000000000;
          sub_1975221EC();

          v47 = 0xD00000000000002BLL;
          v48 = 0x8000000197527FD0;
          v42 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v42);
        }

LABEL_50:
        result = sub_1975223EC();
        __break(1u);
        return result;
      }

      __break(1u);
LABEL_43:
      v47 = 0;
      v48 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000027, 0x8000000197525450);
      v41 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v41);

      MEMORY[0x19A8DFF80](0x74796E61206F7420, 0xEF202D20676E6968);
      sub_19752202C();
      sub_19752235C();
      goto LABEL_50;
    }

    v47 = 0;
    v48 = 0xE000000000000000;
    sub_1975221EC();

    v47 = 0xD000000000000029;
    v48 = 0x8000000197527FA0;
    v40 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v40);

    goto LABEL_50;
  }

  if ((v26 & 1) == 0)
  {
    if (a5)
    {
      sub_197521F5C();
      sub_197522B2C();
      v38 = swift_dynamicCastClassUnconditional();

      a5(v38);
      v28 = a5;
      v29 = a6;
      goto LABEL_37;
    }

    v47 = 0;
    v48 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000066, 0x8000000197528190);
    sub_19752202C();
    sub_19752235C();
    goto LABEL_50;
  }

  if (!a3)
  {
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000005CLL, 0x8000000197528130);
    sub_19752202C();
    sub_19752235C();
    goto LABEL_50;
  }

  sub_197522B2C();
  v27 = swift_dynamicCastClassUnconditional();

  a3(v27);
  v28 = a3;
  v29 = a4;
LABEL_37:

  return sub_19745E20C(v28, v29);
}

uint64_t sub_1974CE944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  result = swift_beginAccess();
  if (*(a1 + 112))
  {
    v26 = a4;
    v29 = *(a1 + 112);
    v25 = a6;
    v21 = swift_allocObject();
    v21[2] = a10;
    v21[3] = a13;
    v21[4] = a14;
    v21[5] = a15;
    v21[6] = a2;
    v21[7] = a3;
    v27 = a3;
    v22 = swift_allocObject();
    v22[2] = a10;
    v22[3] = a13;
    v22[4] = a14;
    v22[5] = a15;
    v22[6] = a4;
    v22[7] = a5;
    v23 = swift_allocObject();
    v23[2] = a10;
    v23[3] = a13;
    v23[4] = a14;
    v23[5] = a15;
    v23[6] = a6;
    v23[7] = a7;
    v24 = swift_allocObject();
    v24[2] = a10;
    v24[3] = a13;
    v24[4] = a14;
    v24[5] = a15;
    v24[6] = a8;
    v24[7] = a9;

    sub_19745E220(a2, v27);
    sub_19745E220(v26, a5);
    sub_19745E220(v25, a7);
    sub_19745E220(a8, a9);
    sub_1974CE198(a12, v29, sub_1974CEE5C, v21, sub_1974CEE74, v22, sub_1974CF698, v23, sub_1974CEEDC, v24, a10, a12, a11);
  }

  return result;
}

uint64_t sub_1974CECE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1974CEDC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1974CEE0C(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

uint64_t objectdestroy_38Tm_0()
{
  if (*(v0 + 48))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroy_53Tm_0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1974CEFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a6;
  v15[4] = a8;
  v15[5] = a9;
  v15[6] = a10;
  v15[7] = a11;
  v15[8] = a1;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a6;
  v16[4] = a8;
  v16[5] = a9;
  v20 = a8;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a1;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a6;
  v17[4] = a8;
  v17[5] = a9;
  v17[6] = a10;
  v17[7] = a11;
  v17[8] = a1;
  v17[9] = a2;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a6;
  v18[4] = v20;
  v18[5] = a9;
  v18[6] = a10;
  v18[7] = a11;
  v18[8] = a1;
  v18[9] = a2;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  sub_1974CE198(a7, a3, sub_1974CF3CC, v15, sub_1974CF3E4, v16, sub_1974CF418, v17, sub_1974CF470, v18, a4, a7, a5);
}

uint64_t sub_1974CF1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  v17 = *(a2 + 48);
  if (v17)
  {

    v18 = sub_197521FFC();
    v19 = swift_conformsToProtocol2();
    if (v19)
    {
      v20 = v18 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      sub_1974CEFD0(a3, a1, v17, a4, a5, a6, v18, a7, a8, a9, v19);
    }

    sub_1975221EC();

    v22 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v22);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000028, 0x8000000197528360);
    type metadata accessor for Schema.Relationship();
    sub_19752235C();
  }

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t objectdestroy_71Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t objectdestroy_59Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1974CF640(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1974CF6D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  *a4 = result;
  return result;
}

uint64_t sub_1974CF6EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  *(a5 + 8) = a2;
  *(a5 + 16) = v5;
  *(a5 + 24) = v6;
  *a5 = result;
  *(a5 + 32) = a4;
  return result;
}

uint64_t sub_1974CF708@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B000, &qword_19752C760);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *a2 = v3;
  v4 = sub_19752228C();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2B9D0, &qword_19752FEA0);
  swift_getTupleTypeMetadata2();
  v6 = sub_197521A1C();
  v7 = sub_1974A0B6C(v6, v4, v5, MEMORY[0x1E69E6930]);

  a2[1] = v7;
  return result;
}

void sub_1974CF7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  os_unfair_lock_lock(*v3 + 4);
  sub_1974D4B9C(a2, v6);
  sub_19752228C();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2B9D0, &qword_19752FEA0);
  sub_19752166C();
  sub_19752168C();
  os_unfair_lock_unlock(v5 + 4);
}

__n128 sub_1974CF888@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, __n128 *a5@<X8>)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  a5->n128_u64[1] = a2;
  a5[1].n128_u64[0] = v5;
  a5[1].n128_u8[8] = v6;
  a5->n128_u64[0] = a1;
  result = *a4;
  a5[2] = *a4;
  return result;
}

uint64_t sub_1974CF8B0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1974DB0A4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1974D1F8C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1974CF91C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1974DB0A4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1974D2084(v5);
  *a1 = v2;
  return result;
}

uint64_t HistoryChange.changedPersistentIdentifier.getter()
{
  sub_1974713D0(v0, v7);
  sub_19745E2D4(v7, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1Tm_3(v4, v5);
  (*(v2 + 88))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm_4(v4);
}

uint64_t HistoryTombstone.Iterator.next()@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_19752228C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9D0, &qword_19752FEA0);

  v5 = sub_19752164C();

  if (v4 >= v5)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v11 = *(v2 + 16);
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (!v12)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    nullsub_26();
    v15[0] = v7;
    sub_19752163C();

    swift_getWitnessTable();
    sub_197521ADC();
    sub_197521AFC();

    sub_19752167C();

    v8 = v16;
    if (v16)
    {
      v9 = __swift_project_boxed_opaque_existential_1Tm_3(v15, v16);
      *(a2 + 24) = v8;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
      (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v9, v8);

      result = __swift_destroy_boxed_opaque_existential_1Tm_4(v15);
      goto LABEL_8;
    }
  }

  result = sub_1974D389C(v15);
  *a2 = 0u;
  *(a2 + 16) = 0u;
LABEL_8:
  v14 = *(v2 + 16);
  v12 = __OFADD__(v14, 1);
  v13 = v14 + 1;
  if (!v12)
  {
LABEL_9:
    *(v2 + 16) = v13;
    return result;
  }

  __break(1u);
  return result;
}

void HistoryTombstone.subscript.getter()
{
  v4 = *v3;
  os_unfair_lock_lock(*v3 + 4);
  sub_19752228C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9D0, &qword_19752FEA0);
  sub_19752167C();

  os_unfair_lock_unlock(v4 + 4);
}

double HistoryTombstone.makeIterator()@<D0>(void *a1@<X8>)
{
  v2 = *v1;
  a1[1] = v1[1];
  a1[2] = 0;
  *a1 = v2;

  return result;
}

uint64_t sub_1974CFDA4@<X0>(void *a1@<X8>)
{
  HistoryTombstone.makeIterator()(a1);
}

uint64_t sub_1974CFDF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1974D3C94(v2, a1, a2);

  return v3;
}

uint64_t HistoryDescriptor.predicate.getter@<X0>(uint64_t a2@<X8>)
{
  sub_19752139C();
  v4 = sub_197521F5C();
  return (*(*(v4 - 8) + 16))(a2, v2, v4);
}

uint64_t HistoryDescriptor.predicate.setter(uint64_t a1, uint64_t a2)
{
  sub_19752139C();
  v4 = sub_197521F5C();
  return (*(*(v4 - 8) + 40))(v2, a1, v4);
}

uint64_t HistoryDescriptor.sortBy.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);

  *(v2 + v4) = a1;
  return result;
}

uint64_t HistoryDescriptor.init(predicate:sortBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_19752139C();
  (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  v12 = type metadata accessor for HistoryDescriptor(0, a3, a4, v11);
  v13 = *(v12 + 40);
  v14 = sub_197521F5C();
  result = (*(*(v14 - 8) + 40))(a5, a1, v14);
  *(a5 + v13) = a2;
  *(a5 + *(v12 + 36)) = 0;
  return result;
}

uint64_t DefaultHistoryTransaction.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19752132C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double DefaultHistoryTransaction.changes.getter()
{
  type metadata accessor for DefaultHistoryTransaction(0);

  return result;
}

double DefaultHistoryTransaction.token.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for DefaultHistoryTransaction(0) + 24));

  return result;
}

uint64_t DefaultHistoryTransaction.storeIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for DefaultHistoryTransaction(0) + 32));

  return v1;
}

uint64_t DefaultHistoryTransaction.bundleIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for DefaultHistoryTransaction(0) + 36));

  return v1;
}

uint64_t DefaultHistoryTransaction.processIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for DefaultHistoryTransaction(0) + 40));

  return v1;
}

uint64_t DefaultHistoryTransaction.author.getter()
{
  v1 = *(v0 + *(type metadata accessor for DefaultHistoryTransaction(0) + 44));

  return v1;
}

uint64_t DefaultHistoryTransaction.hashValue.getter()
{
  sub_197522A5C();
  v1 = type metadata accessor for DefaultHistoryTransaction(0);
  MEMORY[0x19A8E11B0](*(v0 + *(v1 + 28)));
  return sub_197522A9C();
}

uint64_t sub_1974D03FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19752132C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double sub_1974D0470@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(v2 + *(a1 + 24));

  return result;
}

uint64_t sub_1974D0480(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

uint64_t sub_1974D04B8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t sub_1974D04F0(uint64_t a1)
{
  sub_197522A5C();
  MEMORY[0x19A8E11B0](*(v1 + *(a1 + 28)));
  return sub_197522A9C();
}

uint64_t sub_1974D056C(uint64_t a1, uint64_t a2)
{
  sub_197522A5C();
  MEMORY[0x19A8E11B0](*(v2 + *(a2 + 28)));
  return sub_197522A9C();
}

id DefaultHistoryInsert.changedPersistentIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = *(v1 + 24);
  *(a1 + 8) = v3;
  return sub_1974028EC(v2, v3);
}

uint64_t DefaultHistoryInsert.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x19A8E11B0](v0[1]);
  return MEMORY[0x19A8E11B0](v1);
}

uint64_t sub_1974D0644@<X0>(uint64_t *a1@<X8>)
{
  result = DefaultHistoryInsert.changeIdentifier.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1974D066C@<X0>(uint64_t *a1@<X8>)
{
  result = DefaultHistoryInsert.transactionIdentifier.getter();
  *a1 = result;
  return result;
}

id DefaultHistoryUpdate.changedPersistentIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = *(v1 + 24);
  *(a1 + 8) = v3;
  return sub_1974028EC(v2, v3);
}

double DefaultHistoryUpdate.updatedAttributes.getter()
{
  sub_1974D3C98();

  return result;
}

uint64_t DefaultHistoryUpdate.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x19A8E11B0](v0[1]);
  return MEMORY[0x19A8E11B0](v1);
}

uint64_t sub_1974D0738@<X0>(uint64_t *a1@<X8>)
{
  result = DefaultHistoryUpdate.changeIdentifier.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1974D0760@<X0>(uint64_t *a1@<X8>)
{
  result = DefaultHistoryUpdate.transactionIdentifier.getter();
  *a1 = result;
  return result;
}

double sub_1974D078C()
{
  sub_1974D3C98();

  return result;
}

id DefaultHistoryDelete.changedPersistentIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = *(v1 + 24);
  *(a1 + 8) = v3;
  return sub_1974028EC(v2, v3);
}

double DefaultHistoryDelete.tombstone.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;

  return result;
}

uint64_t DefaultHistoryDelete.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x19A8E11B0](v0[1]);
  return MEMORY[0x19A8E11B0](v1);
}

uint64_t sub_1974D0868@<X0>(uint64_t *a1@<X8>)
{
  result = DefaultHistoryDelete.changeIdentifier.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1974D0890@<X0>(uint64_t *a1@<X8>)
{
  result = DefaultHistoryDelete.transactionIdentifier.getter();
  *a1 = result;
  return result;
}

uint64_t TokenCompareError.hashValue.getter()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_1974D0974()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_1974D09E8(uint64_t a1)
{
  v2 = *v1;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v2);
  return sub_197522A9C();
}

void *DefaultHistoryToken.hashValue.getter()
{
  v1 = *v0;
  result = sub_197522A5C();
  v3 = 0;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = MEMORY[0x19A8E11B0](*(*(v1 + 56) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {
      return sub_197522A9C();
    }

    v6 = *(v1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t DefaultHistoryToken.hash(into:)()
{
  v1 = 0;
  v2 = *v0;
  v3 = *v0;
  v4 = 1 << *(*v0 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v7 = *(v3 + 64);
  v6 = v3 + 64;
  v8 = v5 & v7;
  v9 = (v4 + 63) >> 6;
  if ((v5 & v7) != 0)
  {
    do
    {
      v10 = v1;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      result = MEMORY[0x19A8E11B0](*(*(v2 + 56) + ((v10 << 9) | (8 * v11))));
    }

    while (v8);
  }

  while (1)
  {
    v10 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      return result;
    }

    v8 = *(v6 + 8 * v10);
    ++v1;
    if (v8)
    {
      v1 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t DefaultHistoryToken.compare(_:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *v1;
  v5 = *(*v1 + 16);
  if (v5 != *(*a1 + 16))
  {
    v8 = 0;
LABEL_25:
    sub_1974D3CA0();
    swift_allocError();
    *v27 = v8;
    return swift_willThrow();
  }

  if (v5)
  {
    v29 = v2;
    v6 = sub_1974D1F10(v5, 0, &qword_1EAF2AE50, &qword_19752D530);
    v7 = sub_1974D3324(&v28, v6 + 4, v5, v4);
    v2 = v28;

    sub_1974D3CF4(v2);
    if (v7 != v5)
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v2 = v29;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v28 = v6;
  sub_1974CF8B0(&v28);
  if (v2)
  {
LABEL_34:

    __break(1u);
    return result;
  }

  v9 = v28;
  v10 = *(v3 + 16);
  if (v10)
  {
    v11 = sub_1974D1F10(v10, 0, &qword_1EAF2AE50, &qword_19752D530);
    v29 = sub_1974D3324(&v28, v11 + 4, v10, v3);
    v2 = v28;

    sub_1974D3CF4(v2);
    if (v29 == v10)
    {
      v2 = 0;
      goto LABEL_12;
    }

    goto LABEL_33;
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v28 = v11;
  sub_1974CF8B0(&v28);
  v12 = sub_1974D188C(v9, v28);

  if ((v12 & 1) == 0)
  {

    v8 = 1;
    goto LABEL_25;
  }

  v13 = *(v9 + 2);
  v29 = v9;
  v14 = (v9 + 40);
  v15 = -v13;
  v16 = -1;
  do
  {
    if (v15 + v16 == -1)
    {

      return 0;
    }

    if (++v16 >= *(v29 + 2))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (!*(v4 + 16))
    {
      goto LABEL_28;
    }

    v18 = *(v14 - 1);
    v17 = *v14;

    v19 = sub_1973F4028(v18, v17);
    if ((v20 & 1) == 0)
    {
      goto LABEL_29;
    }

    if (!*(v3 + 16))
    {
      goto LABEL_30;
    }

    v21 = *(*(v4 + 56) + 8 * v19);
    v22 = sub_1973F4028(v18, v17);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_31;
    }

    v14 += 2;
    v25 = *(*(v3 + 56) + 8 * v22);
  }

  while (v21 == v25);

  if (v21 < v25)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1974D0F1C()
{
  sub_197522A5C();
  MEMORY[0x19A8E1190](0);
  return sub_197522A9C();
}

uint64_t sub_1974D0F88(uint64_t a1)
{
  sub_197522A5C();
  MEMORY[0x19A8E1190](0);
  return sub_197522A9C();
}

uint64_t sub_1974D0FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B6F5465726F7473 && a2 == 0xEB00000000736E65)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19752282C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1974D108C(uint64_t a1)
{
  v2 = sub_1974D3CFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1974D10C8(uint64_t a1)
{
  v2 = sub_1974D3CFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}