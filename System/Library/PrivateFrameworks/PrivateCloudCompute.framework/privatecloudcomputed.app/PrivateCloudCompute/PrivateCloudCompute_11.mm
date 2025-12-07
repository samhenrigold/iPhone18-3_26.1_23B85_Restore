uint64_t sub_100115D0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v33 = a4;
  v34 = a3;
  v35 = a2;
  v36 = a5;
  v8 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  v32 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_100011AC0(&qword_10022D898, &unk_1001DE650);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  v15 = type metadata accessor for OutgoingUserDataWriter.StateMachine.State(0);
  v16 = __chkstk_darwin(v15);
  v18 = (&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v20 = &v31 - v19;
  sub_100119C74(v6, &v31 - v19, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v30 = *(v12 + 32);
    v30(v14, v20, v11);
    *v18 = *sub_1001D0110();
    swift_storeEnumTagMultiPayload();

    sub_100119D3C(v18, v6);
    v30(v36, v14, v11);
    type metadata accessor for OutgoingUserDataWriter.StateMachine.SendAction(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload != 1)
  {
    *v36 = *v20;
    type metadata accessor for OutgoingUserDataWriter.StateMachine.SendAction(0);
    return swift_storeEnumTagMultiPayload();
  }

  v37 = *v20;
  v22 = v37;
  v23 = &v10[*(v8 + 48)];
  v24 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  result = (*(*(v24 - 8) + 16))(v10, v33, v24);
  v26 = v35;
  *v23 = a1;
  *(v23 + 1) = v26;
  v23[16] = v34 & 1;
  v27 = *(v22 + 24);
  v28 = v27 + 1;
  if (!__OFADD__(v27, 1))
  {
    sub_100012038(a1, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(v22 + 16) < v28 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000F7B84(isUniquelyReferenced_nonNull_native, v28, 0);
      v22 = v37;
    }

    sub_1000F81E4((v22 + 16), v22 + ((*(v32 + 80) + 40) & ~*(v32 + 80)), v10);
    sub_100011F00(v10, &qword_10022C908, &qword_1001DD4C0);
    sub_100119CDC(v6, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
    *v6 = v22;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for OutgoingUserDataWriter.StateMachine.SendAction(0);
    return swift_storeEnumTagMultiPayload();
  }

  __break(1u);
  return result;
}

uint64_t sub_1001160E0@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v75 = a1;
  v76 = a2;
  v6 = sub_100011AC0(&qword_10022D8D8, &unk_1001DE688);
  __chkstk_darwin(v6 - 8);
  v8 = &v71 - v7;
  v81 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  v84 = *(v81 - 8);
  v9 = __chkstk_darwin(v81);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v78 = &v71 - v13;
  v14 = __chkstk_darwin(v12);
  v80 = &v71 - v15;
  __chkstk_darwin(v14);
  v79 = &v71 - v16;
  v17 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v82 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v71 - v18;
  v20 = sub_1001D1AC0();
  v83 = *(v20 - 8);
  __chkstk_darwin(v20);
  v77 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OutgoingUserDataWriter.StateMachine.State(0);
  v23 = __chkstk_darwin(v22);
  v25 = (&v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v27 = (&v71 - v26);
  sub_100119C74(v4, &v71 - v26, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v29 = *v27;
    v86 = v29;
    if (sub_1001D1C30())
    {
      v75 = v19;
      v76 = a3;
      v74 = v17;
      v30 = v77;
      sub_1001D16E0();
      sub_100115B98();
      v31 = swift_allocError();
      v32 = *(v83 + 16);
      v32(v33, v30, v20);
      *v25 = v31;
      swift_storeEnumTagMultiPayload();
      v34 = v25;
      v35 = v30;
      sub_100119D3C(v34, v4);
      v36 = swift_allocError();
      v32(v37, v35, v20);
      v38 = v29[3];
      if (v38)
      {
        v72 = v36;
        v73 = v20;
        v85 = _swiftEmptyArrayStorage;
        sub_1001516F0(0, v38 & ~(v38 >> 63), 0);
        v40 = v74;
        v39 = v75;
        if ((v38 & 0x8000000000000000) == 0)
        {
          v41 = 0;
          v42 = v85;
          v78 = v29 + ((*(v84 + 80) + 40) & ~*(v84 + 80));
          v43 = (v82 + 32);
          while (v41 < v29[3])
          {
            v44 = v38;
            v45 = v29[4];
            if (v41 + v45 >= v29[2])
            {
              v46 = v29[2];
            }

            else
            {
              v46 = 0;
            }

            v47 = v79;
            sub_10001208C(v78 + (v41 + v45 - v46) * *(v84 + 72), v79, &qword_10022C908, &qword_1001DD4C0);
            v48 = v47;
            v49 = v80;
            sub_1000DBEF4(v48, v80, &qword_10022C908, &qword_1001DD4C0);
            sub_100011E48(*(v49 + *(v81 + 48)), *(v49 + *(v81 + 48) + 8));
            v50 = *v43;
            (*v43)(v39, v49, v40);
            v85 = v42;
            v51 = v39;
            v53 = v42[2];
            v52 = v42[3];
            if (v53 >= v52 >> 1)
            {
              sub_1001516F0((v52 > 1), v53 + 1, 1);
              v42 = v85;
            }

            ++v41;
            v42[2] = v53 + 1;
            v50(v42 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v53, v51, v40);
            v38 = v44;
            v39 = v51;
            if (v44 == v41)
            {
              (*(v83 + 8))(v77, v73);

              v67 = v76;
              v36 = v72;
              goto LABEL_25;
            }
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_30;
      }

      (*(v83 + 8))(v35, v20);

      v42 = _swiftEmptyArrayStorage;
      v67 = v76;
LABEL_25:
      *v67 = v36;
      v67[1] = v42;
      type metadata accessor for OutgoingUserDataWriter.StateMachine.NextOutgoingAction(0);
    }

    else
    {
      if (v29[3] >= 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100118FF8();
          v29 = v86;
        }

        sub_1000DBEF4(v29 + ((*(v84 + 80) + 40) & ~*(v84 + 80)) + *(v84 + 72) * v29[4], v8, &qword_10022C908, &qword_1001DD4C0);
        v54 = v29[4];
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (!v55)
        {
          v57 = v29[3];
          if (v56 >= v29[2])
          {
            v56 = 0;
          }

          v29[4] = v56;
          if (!__OFSUB__(v57, 1))
          {
            v58 = v4;
            v29[3] = v57 - 1;
            v59 = v81;
            (*(v84 + 56))(v8, 0, 1, v81);
            v60 = v78;
            sub_1000DBEF4(v8, v78, &qword_10022C908, &qword_1001DD4C0);
            sub_100119CDC(v58, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
            *v58 = v29;
            swift_storeEnumTagMultiPayload();
            v61 = a3 + *(v59 + 48);
            v62 = v80;
            sub_10001208C(v60, v80, &qword_10022C908, &qword_1001DD4C0);
            sub_100011E48(*(v62 + *(v59 + 48)), *(v62 + *(v59 + 48) + 8));
            v63 = v82;
            (*(v82 + 32))(a3, v62, v17);
            sub_1000DBEF4(v60, v11, &qword_10022C908, &qword_1001DD4C0);
            v64 = &v11[*(v59 + 48)];
            v65 = v64[16];
            *v61 = *v64;
            v61[16] = v65;
            type metadata accessor for OutgoingUserDataWriter.StateMachine.NextOutgoingAction(0);
            swift_storeEnumTagMultiPayload();
            return (*(v63 + 8))(v11, v17);
          }

          goto LABEL_31;
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      (*(v84 + 56))(v8, 1, 1, v81);

      sub_100011F00(v8, &qword_10022D8D8, &unk_1001DE688);
      sub_100119CDC(v4, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
      v68 = v4;
      v69 = *(sub_100011AC0(&qword_10022D8F0, &unk_1001DE6C0) + 48);
      v70 = sub_100011AC0(&qword_10022D898, &unk_1001DE650);
      (*(*(v70 - 8) + 16))(v68, v75, v70);
      *(v68 + v69) = v76;
      swift_storeEnumTagMultiPayload();
      type metadata accessor for OutgoingUserDataWriter.StateMachine.NextOutgoingAction(0);
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 2)
  {
    *a3 = *v27;
    a3[1] = _swiftEmptyArrayStorage;
    type metadata accessor for OutgoingUserDataWriter.StateMachine.NextOutgoingAction(0);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_32:
  result = sub_1001D2180();
  __break(1u);
  return result;
}

uint64_t sub_100116A0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_100011AC0(&qword_10022D898, &unk_1001DE650);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = type metadata accessor for OutgoingUserDataWriter.StateMachine.State(0);
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100119C74(v3, v12, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100119CDC(v3, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
      *v3 = a1;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();

      v15 = sub_100119248(v14, sub_100116D3C, 0);

      *a2 = v15;
      v16 = type metadata accessor for OutgoingUserDataWriter.StateMachine.CancelWriterAction(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
    }

    else
    {
      sub_100119CDC(v12, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
      v20 = type metadata accessor for OutgoingUserDataWriter.StateMachine.CancelWriterAction(0);
      return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
    }
  }

  else
  {
    v18 = *(v7 + 32);
    v18(v9, v12, v6);
    sub_100119CDC(v3, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
    *v3 = a1;
    swift_storeEnumTagMultiPayload();
    v18(a2, v9, v6);
    v19 = type metadata accessor for OutgoingUserDataWriter.StateMachine.CancelWriterAction(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
    return swift_errorRetain();
  }
}

uint64_t sub_100116D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_10001208C(a1, &v10 - v6, &qword_10022C908, &qword_1001DD4C0);
  sub_100011E48(*&v7[*(v5 + 56)], *&v7[*(v5 + 56) + 8]);
  v8 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  return (*(*(v8 - 8) + 32))(a2, v7, v8);
}

uint64_t sub_100116E38()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_stateLock;
  v2 = sub_100011AC0(&qword_10022D778, &qword_1001DE630);
  sub_100119CDC(v1 + *(v2 + 28), type metadata accessor for OutgoingUserDataWriter.StateMachine);

  return swift_deallocClassInstance();
}

void sub_100116EFC(uint64_t a1)
{
  sub_100116F94(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100116F94(uint64_t a1)
{
  if (!qword_10022D6F0)
  {
    type metadata accessor for OutgoingUserDataWriter.StateMachine(255);
    v1 = sub_1001CFF60();
    if (!v2)
    {
      atomic_store(v1, &qword_10022D6F0);
    }
  }
}

char *sub_10011700C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&qword_10022D778, &qword_1001DE630);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10011703C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return &unk_100222048;
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100117078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OutgoingUserDataWriter.StateMachine.State(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100117118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OutgoingUserDataWriter.StateMachine.State(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100117188(uint64_t a1)
{
  result = type metadata accessor for OutgoingUserDataWriter.StateMachine.State(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001171F4(uint64_t a1)
{
  sub_1001172A8(319);
  if (v1 <= 0x3F)
  {
    sub_10011A2B0(319, &unk_10022D8A0, &qword_10022C908, &qword_1001DD4C0, &type metadata accessor for Deque);
    if (v2 <= 0x3F)
    {
      sub_100113B60();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1001172A8(uint64_t a1)
{
  if (!qword_10022D890)
  {
    sub_100011DF4(&qword_10022D898, &unk_1001DE650);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10022D890);
    }
  }
}

uint64_t sub_100117320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100117348, 0, 0);
}

uint64_t sub_100117348(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 48);
  v10 = *(v9 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_waiterIDGenerator);
  v11 = (v9 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_waiterIDGenerator);
  do
  {
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    v12 = v10;
    atomic_compare_exchange_strong_explicit(v11, &v12, v10 + 1, memory_order_relaxed, memory_order_relaxed);
    v13 = v12 == v10;
    v10 = v12;
  }

  while (!v13);
  v14 = *(v8 + 40);
  v15 = *(v8 + 48);
  v16 = swift_task_alloc();
  *(v8 + 56) = v16;
  v17 = *(v8 + 24);
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  *(v16 + 32) = v10;
  *(v16 + 40) = v17;
  v18 = swift_task_alloc();
  *(v8 + 64) = v18;
  *(v18 + 16) = v15;
  *(v18 + 24) = v10;
  v19 = swift_task_alloc();
  *(v8 + 72) = v19;
  *v19 = v8;
  v19[1] = sub_100117490;
  a8 = *(v8 + 40);
  a1 = *(v8 + 16);
  a2 = &unk_1001DE6B0;
  a4 = sub_100119C4C;
  a3 = v16;
  a5 = v18;
  a6 = 0;
  a7 = 0;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100117490()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001175D8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1001175D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100117644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  v5[9] = swift_task_alloc();
  v6 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_100117754, 0, 0);
}

uint64_t sub_100117754()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_100117844;
  v6 = v0[8];
  v5 = v0[9];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000001BLL, 0x80000001001E58A0, sub_100119DA0, v3, v6);
}

uint64_t sub_100117844()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100117C6C;
  }

  else
  {

    v2 = sub_100117960;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100117960()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[6];
  v4 = (v0[9] + *(v0[8] + 48));
  v5 = *v4;
  v0[16] = *v4;
  v6 = v4[1];
  v0[17] = v6;
  v7 = *(v4 + 16);
  (*(v2 + 32))(v1);
  v11 = (v3 + *v3);
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_100117AA4;
  v9 = v0[3];

  return v11(v9, v5, v6, v7);
}

uint64_t sub_100117AA4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_100117CE4;
  }

  else
  {
    v2 = sub_100117BB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100117BB8(uint64_t a1)
{
  v3 = v1[16];
  v2 = v1[17];
  v5 = v1[11];
  v4 = v1[12];
  v6 = v1[10];
  sub_1001D1AA0();
  sub_100011E48(v3, v2);
  (*(v5 + 8))(v4, v6);

  v7 = v1[1];

  return v7();
}

uint64_t sub_100117C6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100117CE4()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v0[2] = v0[19];
  swift_errorRetain();
  sub_1001D1A90();
  swift_willThrow();
  sub_100011E48(v2, v1);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100117DC0(char *a1, uint64_t a2, uint64_t *a3)
{
  v41 = a3;
  v38 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  __chkstk_darwin(v38);
  v39 = &v37 - v5;
  v6 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  OutgoingAction = type metadata accessor for OutgoingUserDataWriter.StateMachine.NextOutgoingAction(0);
  v14 = __chkstk_darwin(OutgoingAction);
  v16 = (&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = (&v37 - v17);
  v19 = (a2 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_stateLock);
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_stateLock));
  sub_100011AC0(&qword_10022D778, &qword_1001DE630);
  v40 = a1;
  sub_1001160E0(a1, v41, v18);
  os_unfair_lock_unlock(v19);
  sub_100119C74(v18, v16, type metadata accessor for OutgoingUserDataWriter.StateMachine.NextOutgoingAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = *v16;
      v21 = v16[1];
      v42 = *v16;
      swift_errorRetain();
      sub_100011AC0(&qword_10022D898, &unk_1001DE650);
      sub_1001D1A90();
      v23 = *(v21 + 16);
      if (v23)
      {
        v40 = v21;
        v41 = v18;
        v26 = *(v7 + 16);
        v24 = v7 + 16;
        v25 = v26;
        v27 = v21 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
        v28 = *(v24 + 56);
        do
        {
          v25(v10, v27, v6);
          v42 = v22;
          swift_errorRetain();
          sub_1001D1A90();
          (*(v24 - 8))(v10, v6);
          v27 += v28;
          --v23;
        }

        while (v23);

        v18 = v41;
      }

      else
      {
      }
    }
  }

  else
  {
    v29 = v38;
    v30 = v16 + *(v38 + 48);
    v31 = v18;
    v32 = *v30;
    v33 = *(v30 + 1);
    v34 = v30[16];
    (*(v7 + 32))(v12, v16, v6);
    v35 = &v39[*(v29 + 48)];
    (*(v7 + 16))(v39, v12, v6);
    *v35 = v32;
    *(v35 + 1) = v33;
    v18 = v31;
    v35[16] = v34;
    sub_100011AC0(&qword_10022D898, &unk_1001DE650);
    sub_1001D1AA0();
    (*(v7 + 8))(v12, v6);
  }

  return sub_100119CDC(v18, type metadata accessor for OutgoingUserDataWriter.StateMachine.NextOutgoingAction);
}

uint64_t sub_10011819C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022D898, &unk_1001DE650);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - v6;
  v8 = type metadata accessor for OutgoingUserDataWriter.StateMachine.CancelAction(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = (v19 - v12);
  v14 = (a1 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_stateLock);
  os_unfair_lock_lock(v14);
  v15 = sub_100011AC0(&qword_10022D778, &qword_1001DE630);
  sub_1001183EC(v14 + *(v15 + 28), a2, v13);
  os_unfair_lock_unlock(v14);
  sub_100119C74(v13, v11, type metadata accessor for OutgoingUserDataWriter.StateMachine.CancelAction);
  v16 = sub_100011AC0(&qword_10022D8E8, &qword_1001DE6B8);
  if ((*(*(v16 - 8) + 48))(v11, 1, v16) != 1)
  {
    v17 = *v11;
    (*(v5 + 32))(v7, &v11[*(v16 + 48)], v4);
    v19[0] = v17;
    sub_1001D1A90();
    (*(v5 + 8))(v7, v4);
  }

  return sub_100119CDC(v13, type metadata accessor for OutgoingUserDataWriter.StateMachine.CancelAction);
}

uint64_t sub_1001183EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v29 = a2;
  v6 = sub_100011AC0(&qword_10022D898, &unk_1001DE650);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = type metadata accessor for OutgoingUserDataWriter.StateMachine.State(0);
  v11 = __chkstk_darwin(v10);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  sub_100119C74(a1, &v25 - v14, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100119CDC(v15, type metadata accessor for OutgoingUserDataWriter.StateMachine.State);
    v16 = sub_100011AC0(&qword_10022D8E8, &qword_1001DE6B8);
    return (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }

  else
  {
    v27 = a3;
    v28 = v3;
    v18 = *&v15[*(sub_100011AC0(&qword_10022D8F0, &unk_1001DE6C0) + 48)];
    v26 = *(v7 + 32);
    v26(v9, v15, v6);
    if (v18 == v29)
    {
      sub_1001D1AC0();
      sub_100115B98();
      v19 = swift_allocError();
      sub_1001D16E0();
      *v13 = v19;
      swift_storeEnumTagMultiPayload();
      sub_100119D3C(v13, a1);
      v20 = sub_100011AC0(&qword_10022D8E8, &qword_1001DE6B8);
      v21 = *(v20 + 48);
      v22 = swift_allocError();
      v23 = v27;
      *v27 = v22;
      sub_1001D16E0();
      v26(v23 + v21, v9, v6);
      return (*(*(v20 - 8) + 56))(v23, 0, 1, v20);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
      v24 = sub_100011AC0(&qword_10022D8E8, &qword_1001DE6B8);
      return (*(*(v24 - 8) + 56))(v27, 1, 1, v24);
    }
  }
}

uint64_t sub_100118764(uint64_t a1)
{
  v3 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - v5;
  v7 = sub_100011AC0(&qword_10022D898, &unk_1001DE650);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = sub_100011AC0(&qword_10022D8D0, &qword_1001DE680);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = (&v28 - v14);
  v16 = (v1 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_stateLock);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_stateLock));
  sub_100011AC0(&qword_10022D778, &qword_1001DE630);
  sub_100116A0C(a1, v15);
  os_unfair_lock_unlock(v16);
  sub_10001208C(v15, v13, &qword_10022D8D0, &qword_1001DE680);
  v17 = type metadata accessor for OutgoingUserDataWriter.StateMachine.CancelWriterAction(0);
  if ((*(*(v17 - 8) + 48))(v13, 1, v17) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = *v13;
      v19 = *(*v13 + 16);
      if (v19)
      {
        v29 = v18;
        v30 = v15;
        v22 = *(v4 + 16);
        v20 = v4 + 16;
        v21 = v22;
        v23 = v18 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
        v24 = *(v20 + 56);
        do
        {
          v21(v6, v23, v3);
          v31 = a1;
          swift_errorRetain();
          sub_1001D1A90();
          (*(v20 - 8))(v6, v3);
          v23 += v24;
          --v19;
        }

        while (v19);

        v15 = v30;
      }

      else
      {
      }
    }

    else
    {
      v26 = v29;
      v25 = v30;
      (*(v29 + 32))(v9, v13, v30);
      v31 = a1;
      swift_errorRetain();
      sub_1001D1A90();
      (*(v26 + 8))(v9, v25);
    }
  }

  return sub_100011F00(v15, &qword_10022D8D0, &qword_1001DE680);
}

uint64_t sub_100118AE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v36 = a5;
  v31 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  __chkstk_darwin(v31);
  v33 = &v30 - v9;
  v10 = sub_100011AC0(&qword_10022D898, &unk_1001DE650);
  v32 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for OutgoingUserDataWriter.StateMachine.SendAction(0);
  v14 = __chkstk_darwin(v13);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  v19 = (a2 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_stateLock);
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_stateLock));
  sub_100011AC0(&qword_10022D778, &qword_1001DE630);
  v34 = a3;
  v35 = a4;
  v20 = a3;
  v21 = v36;
  sub_100115D0C(v20, a4, v36, a1, v18);
  os_unfair_lock_unlock(v19);
  sub_100119C74(v18, v16, type metadata accessor for OutgoingUserDataWriter.StateMachine.SendAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v37 = *v16;
      sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
      sub_1001D1A90();
    }
  }

  else
  {
    v23 = v32;
    (*(v32 + 32))(v12, v16, v10);
    v24 = v33;
    v25 = &v33[*(v31 + 48)];
    v26 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
    (*(*(v26 - 8) + 16))(v24, a1, v26);
    v27 = v34;
    v28 = v35;
    *v25 = v34;
    *(v25 + 1) = v28;
    v25[16] = v21 & 1;
    sub_100012038(v27, v28);
    sub_1001D1AA0();
    (*(v23 + 8))(v12, v10);
  }

  return sub_100119CDC(v18, type metadata accessor for OutgoingUserDataWriter.StateMachine.SendAction);
}

uint64_t sub_100118E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000130E0;

  return sub_100117320(a1, a2, a3, a4);
}

uint64_t sub_100118F58()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  sub_100011AC0(&qword_10022C900, &qword_1001DE6D0);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_1000F8CB8(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
  return result;
}

uint64_t sub_100118FF8()
{
  v1 = *v0;
  v2 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  v3 = *(v1 + 16);
  v4 = *(*(v2 - 8) + 80);
  sub_100011AC0(&qword_10022C918, &qword_1001DD4D8);
  v5 = swift_allocObject();
  v6 = *(v1 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v6;
  if (v6 >= 1)
  {
    sub_1000F8D8C(v5 + 16, v5 + ((v4 + 40) & ~v4), (v1 + 16), v1 + ((v4 + 40) & ~v4));
  }

  *v0 = v5;
  return result;
}

uint64_t sub_100119138(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v4;
  v9 = a1(0);
  v10 = *(v8 + 16);
  v11 = *(*(v9 - 8) + 80);
  sub_100011AC0(a2, a3);
  v12 = swift_allocObject();
  v13 = *(v8 + 24);
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  if (v13 >= 1)
  {
    a4(v12 + 16, v12 + ((v11 + 40) & ~v11), v8 + 16, v8 + ((v11 + 40) & ~v11));
  }

  *v4 = v12;
  return result;
}

unint64_t *sub_100119248(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v79 = a2;
  v80 = a3;
  v90 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  v87 = *(v90 - 8);
  __chkstk_darwin(v90);
  v78 = &v73 - v4;
  v5 = sub_100011AC0(&qword_10022D8D8, &unk_1001DE688);
  v6 = __chkstk_darwin(v5 - 8);
  v84 = (&v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v10 = &v73 - v9;
  v11 = __chkstk_darwin(v8);
  v89 = &v73 - v12;
  __chkstk_darwin(v11);
  v85 = &v73 - v13;
  v14 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  v15 = __chkstk_darwin(v14 - 8);
  v83 = (&v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v88 = &v73 - v17;
  v94 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v92 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v73 - v18;
  v19 = a1[3];
  if (v19)
  {
    if (v19 <= 0)
    {
      v93 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_100011AC0(&qword_10022D8E0, &qword_1001DE698);
      v20 = *(v92 + 72);
      v21 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v93 = swift_allocObject();
      result = j__malloc_size(v93);
      if (!v20)
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        return result;
      }

      if ((result - v21) == 0x8000000000000000 && v20 == -1)
      {
        goto LABEL_70;
      }

      v24 = v93;
      v93[2] = v19;
      v24[3] = 2 * ((result - v21) / v20);
    }
  }

  else
  {
    v93 = _swiftEmptyArrayStorage;
  }

  v25 = v93[3];

  v26 = *(v87 + 80);
  v27 = a1[4];
  v28 = a1[3] + v27;
  if (a1[2] < v28)
  {
    v28 = a1[2];
  }

  v29 = *(v92 + 80);
  v95 = a1;
  v96 = v27;
  v97 = v28;
  if (v19 < 0)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v73 = v29;
  v74 = (v29 + 32) & ~v29;
  v30 = v93 + v74;
  v31 = v25 >> 1;
  v86 = (v26 + 40) & ~v26;
  if (v19)
  {
    v77 = (v87 + 56);
    v81 = (v92 + 56);
    v82 = (v87 + 48);
    v32 = (v92 + 48);
    v76 = v92 + 32;
    v31 -= v19;

    v75 = v10;
    while (1)
    {
      v34 = v96;
      if (v96 != v97)
      {
        goto LABEL_20;
      }

      if (sub_1000FA2C0(v33))
      {
        break;
      }

      v35 = 1;
LABEL_22:
      v36 = 1;
      v37 = v90;
      (*v77)(v10, v35, 1, v90);
      v38 = v10;
      v39 = v84;
      sub_1000DBEF4(v38, v84, &qword_10022D8D8, &unk_1001DE688);
      v40 = (*v82)(v39, 1, v37);
      v41 = v83;
      if (v40 != 1)
      {
        v42 = v78;
        sub_1000DBEF4(v84, v78, &qword_10022C908, &qword_1001DD4C0);
        v79(v42);
        sub_100011F00(v42, &qword_10022C908, &qword_1001DD4C0);
        v36 = 0;
      }

      v43 = v36;
      v44 = v94;
      (*v81)(v41, v43, 1, v94);
      result = (*v32)(v41, 1, v44);
      if (result == 1)
      {
        goto LABEL_71;
      }

      v45 = v92;
      v33 = (*(v92 + 32))(v30, v41, v94);
      v30 += *(v45 + 72);
      --v19;
      v46 = v85;
      v10 = v75;
      if (!v19)
      {
        goto LABEL_28;
      }
    }

    v34 = v96;
LABEL_20:
    v96 = v34 + 1;
    sub_10001208C(v95 + v86 + *(v87 + 72) * v34, v10, &qword_10022C908, &qword_1001DD4C0);
    v35 = 0;
    goto LABEL_22;
  }

  v46 = v85;
LABEL_28:
  v83 = (v87 + 48);
  v84 = (v87 + 56);
  v81 = (v92 + 48);
  v82 = (v92 + 56);
  v47 = (v92 + 32);
  while (1)
  {
    v48 = v96;
    if (v96 != v97)
    {
      goto LABEL_32;
    }

    if (sub_1000FA2C0(v33))
    {
      v48 = v96;
LABEL_32:
      v96 = v48 + 1;
      sub_10001208C(v95 + v86 + *(v87 + 72) * v48, v46, &qword_10022C908, &qword_1001DD4C0);
      v49 = 0;
      goto LABEL_34;
    }

    v49 = 1;
LABEL_34:
    v50 = v90;
    (*v84)(v46, v49, 1, v90);
    v51 = v89;
    sub_1000DBEF4(v46, v89, &qword_10022D8D8, &unk_1001DE688);
    if ((*v83)(v51, 1, v50) != 1)
    {
      v52 = v78;
      sub_1000DBEF4(v89, v78, &qword_10022C908, &qword_1001DD4C0);
      v79(v52);
      sub_100011F00(v52, &qword_10022C908, &qword_1001DD4C0);
    }

    v53 = v88;
    v54 = v94;
    (*v82)(v88);
    if ((*v81)(v53, 1, v54) == 1)
    {
      break;
    }

    v55 = *v47;
    result = (*v47)(v91, v53, v94);
    if (v31)
    {
      v56 = v93;
      v57 = __OFSUB__(v31--, 1);
      if (v57)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v58 = v93[3];
      if (((v58 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_64;
      }

      v59 = v58 & 0xFFFFFFFFFFFFFFFELL;
      if (v59 <= 1)
      {
        v60 = 1;
      }

      else
      {
        v60 = v59;
      }

      sub_100011AC0(&qword_10022D8E0, &qword_1001DE698);
      v61 = *(v92 + 72);
      v62 = v74;
      v56 = swift_allocObject();
      result = j__malloc_size(v56);
      if (!v61)
      {
        goto LABEL_65;
      }

      v63 = result - v62;
      if ((result - v62) == 0x8000000000000000 && v61 == -1)
      {
        goto LABEL_66;
      }

      v65 = v63 / v61;
      v56[2] = v60;
      v56[3] = 2 * (v63 / v61);
      v66 = v56 + v62;
      v67 = v93[3] >> 1;
      v68 = v67 * v61;
      if (v93[2])
      {
        if (v56 < v93 || v66 >= v93 + v74 + v68)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v56 != v93)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v93[2] = 0;
      }

      v30 = &v66[v68];
      v69 = (v65 & 0x7FFFFFFFFFFFFFFFLL) - v67;

      v46 = v85;
      v57 = __OFSUB__(v69, 1);
      v31 = v69 - 1;
      if (v57)
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    v33 = v55(v30, v91, v94);
    v30 += *(v92 + 72);
    v93 = v56;
  }

  result = sub_100011F00(v53, &qword_10022D298, &qword_1001DE530);
  v70 = v93[3];
  if (v70 >= 2)
  {
    v71 = v70 >> 1;
    v57 = __OFSUB__(v71, v31);
    v72 = v71 - v31;
    if (v57)
    {
      goto LABEL_68;
    }

    v93[2] = v72;
  }

  return v93;
}

uint64_t sub_100119B84(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000130E0;

  return sub_100117644(a1, v4, v5, v6, v7);
}

uint64_t sub_100119C74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100119CDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100119D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OutgoingUserDataWriter.StateMachine.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100119DE8(uint64_t a1)
{
  sub_100119E5C(319);
  if (v1 <= 0x3F)
  {
    sub_100113B60();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100119E5C(uint64_t a1)
{
  if (!qword_10022D978)
  {
    sub_100011DF4(&qword_10022C908, &qword_1001DD4C0);
    sub_100011DF4(&qword_100227A58, &qword_1001D3600);
    v1 = sub_1001D1AB0();
    if (!v2)
    {
      atomic_store(v1, &qword_10022D978);
    }
  }
}

void sub_100119EE4(uint64_t a1)
{
  sub_100119F70(319);
  if (v1 <= 0x3F)
  {
    sub_10011A180(319, &qword_10022DA30, &unk_10022DA38, &qword_1001DE708);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100119F70(uint64_t a1)
{
  if (!qword_10022DA28)
  {
    sub_100011DF4(&qword_100227B38, &qword_1001D36D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10022DA28);
    }
  }
}

uint64_t sub_100119FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022D8E8, &qword_1001DE6B8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011A084(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100011AC0(&qword_10022D8E8, &qword_1001DE6B8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10011A110(uint64_t a1)
{
  sub_10011A180(319, &unk_10022DAE8, &qword_10022D898, &unk_1001DE650);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_10011A180(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100011DF4(&qword_100227A58, &qword_1001D3600);
    sub_100011DF4(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10011A210(uint64_t a1)
{
  sub_100119E5C(319);
  if (v1 <= 0x3F)
  {
    sub_10011A2B0(319, &unk_10022DB90, &qword_100227B38, &qword_1001D36D0, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10011A2B0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100011DF4(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10011A314(uint64_t a1)
{
  v1 = *(a1 + 88);
  v3 = *(a1 + 96);
  v2 = *(a1 + 104);
  v36 = *(a1 + 80);
  v37 = v1;
  v38 = v3;
  v39 = v2;
  v4 = *(a1 + 128);
  v40 = *(a1 + 112);
  v41 = v4;
  type metadata accessor for RequestMetrics.State(255, &v36);
  v5 = sub_1001CFF60();
  if (v6 <= 0x3F)
  {
    v36 = *(v5 - 8) + 64;
    v7 = swift_checkMetadataState();
    if (v8 <= 0x3F)
    {
      v37 = *(v7 - 8) + 64;
      v9 = sub_1001CFDA0();
      if (v10 <= 0x3F)
      {
        v11 = *(v9 - 8) + 64;
        v38 = v11;
        v39 = v11;
        v12 = sub_1001CFD60();
        if (v13 <= 0x3F)
        {
          *&v40 = *(v12 - 8) + 64;
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          if (v15 <= 0x3F)
          {
            *(&v40 + 1) = *(AssociatedTypeWitness - 8) + 64;
            *&v41 = &unk_1001DE768;
            *(&v41 + 1) = &unk_1001DE780;
            v42 = &unk_1001DE780;
            sub_1001234B0(319, qword_10022DC40, &type metadata accessor for UUID, &type metadata accessor for Optional);
            if (v17 <= 0x3F)
            {
              v43 = *(v16 - 8) + 64;
              v44 = &unk_1001DE768;
              v45 = &unk_1001DE798;
              v18 = sub_1001D08A0();
              if (v19 <= 0x3F)
              {
                v46 = *(v18 - 8) + 64;
                v47 = &unk_1001DE7B0;
                v20 = swift_checkMetadataState();
                if (v21 <= 0x3F)
                {
                  v48 = *(v20 - 8) + 64;
                  v22 = sub_1001CFDD0();
                  if (v23 <= 0x3F)
                  {
                    v49 = *(v22 - 8) + 64;
                    v24 = sub_1001D0E60();
                    if (v25 <= 0x3F)
                    {
                      v50 = *(v24 - 8) + 64;
                      v51 = &unk_1001DE768;
                      sub_1001234B0(319, &qword_100227C88, type metadata accessor for ThimbledEvent, &type metadata accessor for AsyncStream.Continuation);
                      if (v27 <= 0x3F)
                      {
                        v52 = *(v26 - 8) + 64;
                        v28 = sub_1001D0DF0();
                        if (v29 <= 0x3F)
                        {
                          v53 = *(v28 - 8) + 64;
                          v30 = sub_1001D0DC0();
                          if (v31 <= 0x3F)
                          {
                            v54 = *(v30 - 8) + 64;
                            v55 = &value witness table for Builtin.NativeObject + 64;
                            v56 = v11;
                            v32 = sub_1001D1F00();
                            if (v33 <= 0x3F)
                            {
                              v57 = *(v32 - 8) + 64;
                              v34 = swift_checkMetadataState();
                              if (v35 <= 0x3F)
                              {
                                v58 = *(v34 - 8) + 64;
                                v59 = &value witness table for Builtin.NativeObject + 64;
                                swift_initClassMetadata2();
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10011A7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[99] = v5;
  v6[98] = a5;
  v6[97] = a4;
  v6[96] = a3;
  v6[95] = a2;
  v6[89] = a1;
  v6[100] = sub_100011AC0(&qword_100229520, &unk_1001DEF70);
  v6[101] = swift_task_alloc();
  v6[102] = swift_task_alloc();
  sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v6[103] = swift_task_alloc();
  v7 = sub_1001D20D0();
  v6[104] = v7;
  v8 = *(v7 - 8);
  v6[105] = v8;
  v6[106] = *(v8 + 64);
  v6[107] = swift_task_alloc();
  v6[108] = swift_task_alloc();
  v9 = sub_1001D20F0();
  v6[109] = v9;
  v10 = *(v9 - 8);
  v6[110] = v10;
  v6[111] = *(v10 + 64);
  v6[112] = swift_task_alloc();
  v6[113] = swift_task_alloc();
  v6[114] = sub_100011AC0(&qword_100229568, &unk_1001DEF80);
  v6[115] = swift_task_alloc();
  v11 = sub_1001D00F0();
  v6[116] = v11;
  v6[117] = *(v11 - 8);
  v6[118] = swift_task_alloc();
  v6[119] = swift_task_alloc();
  v12 = sub_1001CFD60();
  v6[120] = v12;
  v6[121] = *(v12 - 8);
  v6[122] = swift_task_alloc();
  v6[123] = swift_task_alloc();
  v6[124] = swift_task_alloc();
  v13 = sub_1001D0040();
  v6[125] = v13;
  v6[126] = *(v13 - 8);
  v6[127] = swift_task_alloc();
  v6[128] = swift_task_alloc();
  v6[129] = swift_task_alloc();
  v14 = sub_1001CFFB0();
  v6[130] = v14;
  v6[131] = *(v14 - 8);
  v6[132] = swift_task_alloc();
  v6[133] = swift_task_alloc();

  return _swift_task_switch(sub_10011ABC4, 0, 0);
}

uint64_t sub_10011ABC4()
{
  sub_100012038(v0[97], v0[98]);
  sub_1001CFFA0();
  v1 = v0[99];
  (*(v0[131] + 32))(v0[133], v0[132], v0[130]);
  v2 = swift_task_alloc();
  v0[134] = v2;
  *(v2 + 16) = v1;
  sub_1001D20E0();

  return _swift_task_switch(sub_10011AE24, 0, 0);
}

uint64_t sub_10011AE24()
{
  v29 = *(v0 + 920);
  v1 = *(v0 + 904);
  v25 = *(v0 + 896);
  v26 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);
  v4 = *(v0 + 864);
  v5 = *(v0 + 856);
  v27 = *(v0 + 1072);
  v6 = *(v0 + 840);
  v7 = *(v0 + 832);
  v8 = *(v0 + 824);
  v28 = *(v0 + 912);
  sub_100128614(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  *(v0 + 696) = 0x158E460913D00000;
  *(v0 + 704) = 1;
  sub_100128614(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2100();
  v9 = *(v6 + 8);
  *(v0 + 1080) = v9;
  *(v0 + 1088) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v7);
  v10 = sub_1001D1BA0();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v2 + 16))(v25, v1, v3);
  (*(v6 + 16))(v5, v4, v7);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = (v26 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v2 + 32))(v13 + v11, v25, v3);
  (*(v6 + 32))(v13 + v12, v5, v7);
  v14 = sub_10008F210(0, 0, v8, &unk_1001D6BC0, v13);
  *(v0 + 1096) = v14;
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = sub_1001282CC;
  v15[4] = v27;
  v16 = swift_allocObject();
  *(v0 + 1104) = v16;
  *(v16 + 16) = &unk_1001DEF90;
  *(v16 + 24) = v15;

  swift_asyncLet_begin();
  v17 = *(v28 + 48);
  *(v0 + 1128) = v17;
  v18 = *(v28 + 64);
  *(v0 + 1132) = v18;
  v19 = swift_task_alloc();
  *(v0 + 1112) = v19;
  v20 = sub_1001D0020();
  v21 = sub_100128614(&qword_1002295A8, &type metadata accessor for NodeValidator, &protocol conformance descriptor for NodeValidator);
  *v19 = v0;
  v19[1] = sub_10011B24C;
  v22 = *(v0 + 1064);
  v23 = *(v0 + 920);

  return Validator.validate(bundle:)(v23, v29 + v17, v29 + v18, v22, v20, v21);
}

uint64_t sub_10011B24C()
{
  *(*v1 + 1120) = v0;

  if (v0)
  {
    v2 = sub_10011BCA0;
  }

  else
  {
    v2 = sub_10011B360;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10011B360()
{
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  sub_1001D1C20();

  return _swift_asyncLet_finish(v0 + 16, v1, sub_10011B3F8, v0 + 720);
}

uint64_t sub_10011B414()
{
  v1 = v0[135];
  v2 = v0[113];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[108];
  v6 = v0[104];

  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10011B4F4, 0, 0);
}

uint64_t sub_10011B4F4()
{
  v100 = v0;
  v81 = *(v0 + 1128);
  v89 = *(v0 + 1032);
  v90 = *(v0 + 1132);
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  v95 = *(v0 + 1024);
  v97 = *(v0 + 984);
  v4 = *(v0 + 968);
  v5 = *(v0 + 960);
  v6 = *(v0 + 952);
  v92 = *(v0 + 944);
  v7 = *(v0 + 936);
  v8 = *(v0 + 928);
  v9 = *(v0 + 920);
  v84 = *(v0 + 792);
  v86 = *(v0 + 816);
  (*(v1 + 32))();
  (*(v4 + 32))(v3, v9 + v81, v5);
  (*(v7 + 32))(v6, v9 + v90, v8);
  sub_10001208C(v84, v86, &qword_100229520, &unk_1001DEF70);
  v87 = *(v1 + 16);
  v87(v95, v89, v2);
  (*(v7 + 16))(v92, v6, v8);
  v96 = *(v4 + 16);
  v96(v97, v3, v5);
  v10 = sub_1001D0E50();
  v11 = sub_1001D1E00();
  v91 = v10;
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 1024);
  if (v12)
  {
    v14 = *(v0 + 1016);
    v15 = *(v0 + 1008);
    v16 = *(v0 + 1000);
    v79 = *(v0 + 984);
    v76 = *(v0 + 976);
    v85 = *(v0 + 968);
    v77 = *(v0 + 960);
    v75 = *(v0 + 944);
    v80 = *(v0 + 936);
    v82 = *(v0 + 928);
    v17 = *(v0 + 816);
    v18 = swift_slowAlloc();
    v99[0] = swift_slowAlloc();
    *v18 = 136446978;
    v19 = sub_1001D02B0();
    v78 = v11;
    v21 = v20;
    sub_100011F00(v17, &qword_100229520, &unk_1001DEF70);
    v22 = sub_1000954E0(v19, v21, v99);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v87(v14, v13, v16);
    v23 = sub_1001D1820();
    v25 = v24;
    v93 = *(v15 + 8);
    v93(v13, v16);
    v26 = sub_1000954E0(v23, v25, v99);

    *(v18 + 14) = v26;
    *(v18 + 22) = 2080;
    sub_1001D00D0();
    sub_100128614(&qword_100227A40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v27 = sub_1001D23A0();
    v29 = v28;
    v30 = *(v85 + 8);
    v30(v76, v77);
    v31 = v82;
    v83 = *(v80 + 8);
    v83(v75, v31);
    v32 = sub_1000954E0(v27, v29, v99);

    *(v18 + 24) = v32;
    *(v18 + 32) = 2080;
    v33 = sub_1001D23A0();
    v35 = v34;
    v88 = v30;
    v30(v79, v77);
    v36 = sub_1000954E0(v33, v35, v99);

    *(v18 + 34) = v36;
    _os_log_impl(&_mh_execute_header, v91, v78, "verified attestation bundle environment=%{public}s publicKey=%s keyExpiration=%s attestationExpiry=%s", v18, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v37 = *(v0 + 1008);
    v94 = *(v0 + 1000);
    v38 = *(v0 + 984);
    v39 = *(v0 + 968);
    v40 = *(v0 + 960);
    v41 = *(v0 + 944);
    v42 = *(v0 + 936);
    v43 = *(v0 + 928);
    v44 = *(v0 + 816);

    v88 = *(v39 + 8);
    v88(v38, v40);
    v83 = *(v42 + 8);
    v83(v41, v43);
    v45 = v94;
    v93 = *(v37 + 8);
    v93(v13, v45);
    sub_100011F00(v44, &qword_100229520, &unk_1001DEF70);
  }

  v74 = *(v0 + 1064);
  v72 = *(v0 + 1048);
  v73 = *(v0 + 1040);
  v46 = *(v0 + 1032);
  v71 = *(v0 + 1000);
  v47 = *(v0 + 992);
  v48 = *(v0 + 960);
  v49 = *(v0 + 952);
  v67 = *(v0 + 928);
  v69 = *(v0 + 776);
  v70 = *(v0 + 784);
  v68 = *(v0 + 768);
  v66 = *(v0 + 760);
  v50 = *(v0 + 712);
  v51 = sub_100079920();
  v64 = v52;
  v65 = v51;
  v53 = type metadata accessor for ValidatedProxiedAttestation(0);
  v96(v50 + v53[6], v47, v48);
  v54 = v49;
  v98 = sub_1001D00E0();
  v56 = v55;
  v57 = sub_1001D00C0();
  v59 = v58;
  v83(v54, v67);
  v88(v47, v48);
  v93(v46, v71);
  *v50 = v66;
  v50[1] = v68;
  v50[2] = v69;
  v50[3] = v70;
  v50[4] = v65;
  v50[5] = v64;
  v60 = (v50 + v53[7]);
  *v60 = v98;
  v60[1] = v56;
  v61 = (v50 + v53[8]);
  *v61 = v57;
  v61[1] = v59;

  sub_100012038(v69, v70);
  (*(v72 + 8))(v74, v73);

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_10011BCA0()
{
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  sub_1001D1C20();

  return _swift_asyncLet_finish(v0 + 16, v1, sub_10011BD38, v0 + 656);
}

uint64_t sub_10011BD54()
{
  v1 = v0[135];
  v2 = v0[113];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[108];
  v6 = v0[104];

  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10011BE20, 0, 0);
}

uint64_t sub_10011BE20()
{
  v21 = v0;
  v1 = v0[101];
  v2 = v0[99];

  sub_10001208C(v2, v1, &qword_100229520, &unk_1001DEF70);
  swift_errorRetain();
  v3 = sub_1001D0E50();
  v4 = sub_1001D1DE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[101];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v6 = 136446466;
    v9 = sub_1001D02B0();
    v11 = v10;
    sub_100011F00(v5, &qword_100229520, &unk_1001DEF70);
    v12 = sub_1000954E0(v9, v11, &v20);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "unable to verify attestation, environment=%{public}s error=%@", v6, 0x16u);
    sub_100011F00(v7, &unk_1002301D0, &qword_1001D4F50);

    sub_100011CF0(v8);
  }

  else
  {
    v14 = v0[101];

    sub_100011F00(v14, &qword_100229520, &unk_1001DEF70);
  }

  v15 = v0[133];
  v16 = v0[131];
  v17 = v0[130];
  swift_willThrow();
  (*(v16 + 8))(v15, v17);

  v18 = v0[1];

  return v18();
}

void sub_10011C16C(uint64_t a1)
{
  oslog = sub_1001D0E50();
  v1 = sub_1001D1DE0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    v4 = sub_1001D2610();
    v6 = sub_1000954E0(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "latency issue: validate is taking longer than expected, delay=%s", v2, 0xCu);
    sub_100011CF0(v3);
  }
}

uint64_t sub_10011C284(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001D0200();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  __chkstk_darwin(v6);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v2, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v9 + 8))(v11, a1);
        return 0x2074736575716552;
      }

      else
      {
        (*(v9 + 8))(v11, a1);
        return 0xD000000000000016;
      }
    }

    else
    {
      (*(v9 + 8))(v11, a1);
      return 0xD000000000000022;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return 0x696C616974696E49;
    }

    else
    {
      return 0xD000000000000015;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x64656873696E6946;
  }

  else
  {
    (*(v5 + 32))(v8, v11, v4);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_1001D2030(18);

    v15 = 0x282064656C696146;
    v16 = 0xEF203A726F727265;
    sub_100128614(&qword_10022E2F8, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    v17._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v17);

    v18._countAndFlagsBits = 41;
    v18._object = 0xE100000000000000;
    sub_1001D18B0(v18);
    v14 = v15;
    (*(v5 + 8))(v8, v4);
    return v14;
  }
}

unint64_t sub_10011C5EC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      return 0x6C65732065646F4ELL;
    }

    else
    {
      sub_1001D2030(32);

      v4 = 0xD00000000000001DLL;
      if (!__OFSUB__(0x10000, a1))
      {
        v6._countAndFlagsBits = sub_1001D23A0();
        sub_1001D18B0(v6);

        goto LABEL_8;
      }

      __break(1u);
    }
  }

  else if (a2 == 2)
  {
    return 0x64656873696E6946;
  }

  else
  {
    if (a2 == 3)
    {
      v4 = 0;
      sub_1001D2030(18);
      v5._countAndFlagsBits = 0x282064656C696146;
      v5._object = 0xEF203A726F727265;
      sub_1001D18B0(v5);
      swift_getErrorValue();
      sub_1001D2440();
LABEL_8:
      v7._countAndFlagsBits = 41;
      v7._object = 0xE100000000000000;
      sub_1001D18B0(v7);
      return v4;
    }

    if (a1)
    {
      return 0x656B6F5468747541;
    }

    else
    {
      return 0x696C616974696E49;
    }
  }

  return result;
}

uint64_t sub_10011C7CC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 61;
  if ((a4 >> 61) <= 2)
  {
    if (!v4)
    {
      return 0xD000000000000019;
    }

    if (v4 == 1)
    {
      return 0xD000000000000010;
    }

    sub_1001D2030(17);

    v9 = 0x6E69766965636552;
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    goto LABEL_11;
  }

  if (v4 == 3)
  {
    return 0x64656873696E6946;
  }

  if (v4 == 4)
  {
    v9 = 0;
    sub_1001D2030(18);
    v10._countAndFlagsBits = 0x282064656C696146;
    v10._object = 0xEF203A726F727265;
    sub_1001D18B0(v10);
    swift_getErrorValue();
    sub_1001D2440();
    v6._countAndFlagsBits = 41;
    v6._object = 0xE100000000000000;
LABEL_11:
    sub_1001D18B0(v6);
    return v9;
  }

  return 0x696C616974696E49;
}

BOOL sub_10011C968(_BOOL8 a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    return a4 >> 60 == 15;
  }

  if (a4 >> 60 == 15)
  {
    return 0;
  }

  return sub_1000A1A5C(a1, a2, a3, a4);
}

uint64_t sub_10011C9FC(unint64_t a1, uint64_t a2)
{
  v2 = 0x6465696669726576;
  v3 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v3 == 2)
    {
      return 0x64656873696E6966;
    }

    else
    {
      v5 = 0x6966697265766E75;
      if (a1 ^ 0xC000000000000008 | a2)
      {
        v2 = 0x79654B746E6573;
      }

      if (a1 ^ 0xC000000000000000 | a2)
      {
        v5 = 0x6E69796669726576;
      }

      if (a1 <= 0xC000000000000007)
      {
        return v5;
      }

      else
      {
        return v2;
      }
    }
  }

  else if (v3)
  {
    return 0x6E69766965636572;
  }

  else
  {
    return 0x6465696669726576;
  }
}

uint64_t sub_10011CB2C(uint64_t a1)
{
  v1 = 0x6465696669726576;
  v2 = 0x6465696669726576;
  if (a1 == 1)
  {
    v2 = 0x6E69796669726576;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6966697265766E75;
  }
}

uint64_t sub_10011CBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = sub_1001D20D0();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_10011CCB0, 0, 0);
}

uint64_t sub_10011CCB0()
{
  v1 = v0[21];
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 304);
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_10011CDAC;
  v5 = v0[22];

  return sub_10011D52C((v0 + 9), "FetchOTT", 8, 2, v1 + v3, v1 + v2, v5);
}

uint64_t sub_10011CDAC()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_10011CED4, 0, 0);
  }
}

void sub_10011CED4()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  sub_1001D20F0();
  sub_100128614(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  sub_100128614(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v3 + 8))(v2, v4);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v8 = (v5 + *(*v5 + 144));
  os_unfair_lock_lock(v8);
  v9 = *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  v10 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v10;
  *(v0 + 48) = *(v0 + 104);
  *(v0 + 64) = *(v0 + 120);
  sub_10011DA10(v8 + v9, v0 + 16, v7, v6);
  os_unfair_lock_unlock(v8);
  if (!v1)
  {
    v11 = *(v0 + 72);
    if (*(v0 + 120))
    {
      *(v0 + 152) = v11;
      swift_errorRetain();
      sub_100011AC0(&qword_100227A58, &qword_1001D3600);
      swift_willThrowTypedImpl();
      sub_1001286C4(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
    }

    else
    {
      v13 = *(v0 + 80);
      v14 = *(v0 + 88);
      v15 = *(v0 + 96);
      v16 = *(v0 + 104);
      v17 = *(v0 + 112);
      v18 = *(v0 + 160);
      *v18 = v11;
      v18[1] = v13;
      v18[2] = v14;
      v18[3] = v15;
      v18[4] = v16;
      v18[5] = v17;
      sub_100012038(v11, v13);
      sub_100012038(v14, v15);
      sub_100012038(v16, v17);
      sub_1001286C4(v11, v13, v14, v15, v16, v17, 0);
    }

    v12 = *(v0 + 8);

    v12();
  }
}

uint64_t sub_10011D1CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return _swift_task_switch(sub_10011D1EC, 0, 0);
}

uint64_t sub_10011D1EC()
{
  v1 = sub_10007A850();
  *(v0 + 80) = v1;
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_10011D2AC;

  return sub_10007AB70(v0 + 16, v1);
}

uint64_t sub_10011D2AC()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(v2 + 104) = *(v2 + 16);
  *(v2 + 96) = v0;
  *(v2 + 120) = v3;
  *(v2 + 136) = *(v2 + 48);

  if (v0)
  {
    v4 = sub_10011D468;
  }

  else
  {
    v4 = sub_10011D3D4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10011D3D4()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 96) != 0;
  v3 = *(v0 + 120);
  v4 = *(v0 + 136);
  *v1 = *(v0 + 104);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *(v1 + 48) = v2;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10011D468()
{
  v1 = *(v0 + 96);

  v2 = sub_100089D84(v1);
  swift_willThrow();

  v3 = *(v0 + 64);
  v4 = *(v0 + 96) != 0;
  *v3 = v2;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0;
  *(v3 + 48) = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10011D52C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 120) = a4;
  *(v7 + 40) = a3;
  *(v7 + 48) = a5;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  v8 = sub_1001D0DC0();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_10011D608, 0, 0);
}

uint64_t sub_10011D608()
{
  v1 = sub_1001D0DE0();
  v2 = sub_1001D1E90();
  result = sub_1001D1ED0();
  if (result)
  {
    v4 = *(v0 + 32);
    if ((*(v0 + 120) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = sub_1001D0DB0();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, v2, v6, v4, "", v5, 2u);

        goto LABEL_10;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 48), *(v0 + 72));
  sub_1001D0E30();
  swift_allocObject();
  *(v0 + 96) = sub_1001D0E20();

  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_10011D7CC;
  v8 = *(v0 + 64);
  v9 = *(v0 + 24);

  return sub_10011D1CC(v9, v8);
}

uint64_t sub_10011D7CC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_10011D978;
  }

  else
  {
    v2 = sub_10011D8E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10011D8E0()
{
  sub_100124054(*(v0 + 56), *(v0 + 32), *(v0 + 40), *(v0 + 120), *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10011D978()
{
  sub_100124054(*(v0 + 56), *(v0 + 32), *(v0 + 40), *(v0 + 120), *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10011DA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 48))
  {
    v8 = *a2;
    v18 = *a2;
    sub_10001208C(a2, v16, qword_10022E338, &qword_1001DEFF8);
    swift_errorRetain();
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    if (swift_dynamicCast())
    {
      v9 = v17;
      if (*(v17 + 16))
      {
        v8 = *(v17 + 32);
        swift_errorRetain();
        sub_100011F00(a2, qword_10022E338, &qword_1001DEFF8);
      }

      else
      {
        v12 = v16[56];
        v13 = v16[57];
        sub_100089BE4();
        v8 = swift_allocError();
        *v14 = v12;
        *(v14 + 1) = v13;
        *(v14 + 8) = v9;
        sub_100011F00(a2, qword_10022E338, &qword_1001DEFF8);
      }
    }

    v15 = a1 + *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 104);
    result = sub_100128734(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24));
    *v15 = v8;
    *(v15 + 8) = a3;
    *(v15 + 16) = a4;
    *(v15 + 24) = 1;
  }

  else
  {
    v10 = a1 + *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 104);
    result = sub_100128734(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24));
    *v10 = a3;
    *(v10 + 8) = a4;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
  }

  return result;
}

uint64_t sub_10011DBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[214] = a6;
  v6[213] = a5;
  v6[212] = a4;
  v6[211] = a3;
  v6[210] = a2;
  v6[209] = a1;
  sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  v6[215] = swift_task_alloc();
  v6[216] = type metadata accessor for ThimbledEvent(0);
  v6[217] = swift_task_alloc();
  v9 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v6[218] = v9;
  v6[219] = *(v9 - 8);
  v6[220] = swift_task_alloc();
  v10 = sub_1001CFDD0();
  v6[221] = v10;
  v6[222] = *(v10 - 8);
  v6[223] = swift_task_alloc();
  v6[224] = swift_task_alloc();
  v11 = sub_1001CFDA0();
  v6[225] = v11;
  v6[226] = *(v11 - 8);
  v6[227] = swift_task_alloc();
  v6[228] = swift_task_alloc();
  v12 = sub_1001CFD60();
  v6[229] = v12;
  v6[230] = *(v12 - 8);
  v6[231] = swift_task_alloc();
  v6[232] = swift_task_alloc();
  v6[233] = sub_100011AC0(&qword_10022E328, &qword_1001DEFA8);
  v6[234] = swift_task_alloc();
  v6[235] = swift_task_alloc();
  v6[236] = swift_task_alloc();
  v6[237] = swift_task_alloc();
  v6[238] = swift_task_alloc();
  v13 = sub_1001D20D0();
  v6[239] = v13;
  v6[240] = *(v13 - 8);
  v6[241] = swift_task_alloc();
  v6[242] = swift_task_alloc();
  v14 = sub_1001D0DC0();
  v6[243] = v14;
  v6[244] = *(v14 - 8);
  v6[245] = swift_task_alloc();
  v6[246] = swift_task_alloc();
  v15 = swift_task_alloc();
  v6[247] = v15;
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;

  sub_100089C90(a6, (v6 + 148));

  return _swift_task_switch(sub_10011DFC4, 0, 0);
}

uint64_t sub_10011DFC4()
{
  v1 = *(v0 + 1696);
  v2 = *(*v1 + 144);
  *(v0 + 1984) = v2;
  v3 = (v1 + v2);
  os_unfair_lock_lock((v1 + v2));
  v4 = *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  *(v0 + 668) = v4;
  v5 = v3 + v4;
  v6 = *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 144);
  v7 = *&v5[v6];
  if (*(v7 + 16))
  {
    v8 = sub_100006028(*(v0 + 1680), *(v0 + 1688));
    if (v9)
    {
      v10 = *(v0 + 1688);
      v11 = *(v0 + 1680);
      v12 = (*(v7 + 56) + (v8 << 7));
      v13 = v12[3];
      v15 = *v12;
      v14 = v12[1];
      *(v0 + 832) = v12[2];
      *(v0 + 848) = v13;
      *(v0 + 800) = v15;
      *(v0 + 816) = v14;
      v17 = v12[5];
      v16 = v12[6];
      v18 = v12[4];
      *(v0 + 905) = *(v12 + 105);
      *(v0 + 880) = v17;
      *(v0 + 896) = v16;
      *(v0 + 864) = v18;
      v19 = *(v0 + 800);
      sub_10001208C(v0 + 800, v0 + 928, &qword_100230150, &unk_1001D3700);
      sub_10012853C(v19);
      v20 = *(v0 + 896);
      v44 = *(v0 + 880);
      *v45 = v20;
      *&v45[9] = *(v0 + 905);
      v40 = *(v0 + 816);
      v41 = *(v0 + 832);
      v42 = *(v0 + 848);
      v43 = *(v0 + 864);
      *(v0 + 544) = xmmword_1001DE740;
      *(v0 + 560) = v40;
      *(v0 + 576) = v41;
      *(v0 + 592) = v42;
      *(v0 + 649) = *&v45[9];
      *(v0 + 624) = v44;
      *(v0 + 640) = v20;
      *(v0 + 608) = v43;

      sub_10001208C(v0 + 544, v0 + 1056, &qword_100230150, &unk_1001D3700);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = *&v5[v6];
      sub_10001B1A4((v0 + 544), v11, v10, isUniquelyReferenced_nonNull_native);

      *&v5[v6] = v46;
      *(v0 + 736) = v43;
      *(v0 + 752) = v44;
      *(v0 + 768) = *v45;
      *(v0 + 777) = *&v45[9];
      *(v0 + 672) = xmmword_1001DE740;
      *(v0 + 688) = v40;
      *(v0 + 704) = v41;
      *(v0 + 720) = v42;
      sub_100011F00(v0 + 672, &qword_100230150, &unk_1001D3700);
    }
  }

  v22 = *(v0 + 1712);
  v23 = *(v0 + 1704);
  v24 = *(v0 + 1696);
  os_unfair_lock_unlock(v3);
  *(v0 + 1992) = *(*v24 + 296);
  sub_1001D0DE0();
  sub_1001D0DA0();
  *(v0 + 2000) = *(*v24 + 152);
  *(v0 + 2008) = sub_1001D20F0();
  *(v0 + 2016) = sub_100128614(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  v25 = swift_task_alloc();
  *(v0 + 2024) = v25;
  *(v25 + 16) = v23;
  *(v25 + 24) = v22;

  sub_100089C90(v22, v0 + 1280);

  sub_100089C90(v22, v0 + 1376);
  v26 = sub_1001D0DE0();
  v27 = sub_1001D1E90();
  if (sub_1001D1ED0())
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = sub_1001D0DB0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v27, v29, "VerifyAttestation", "", v28, 2u);
  }

  v30 = *(v0 + 1968);
  v31 = *(v0 + 1960);
  v32 = *(v0 + 1952);
  v33 = *(v0 + 1944);
  v34 = *(v0 + 1712);

  (*(v32 + 16))(v31, v30, v33);
  sub_1001D0E30();
  swift_allocObject();
  *(v0 + 2032) = sub_1001D0E20();

  sub_100089C90(v34, v0 + 1472);
  v35 = swift_task_alloc();
  *(v0 + 2040) = v35;
  *v35 = v0;
  v35[1] = sub_10011E42C;
  v36 = *(v0 + 1904);
  v37 = *(v0 + 1712);
  v38 = *(v0 + 1704);

  return sub_10011F90C(v36, v38, v37);
}

uint64_t sub_10011E42C()
{
  *(*v1 + 2048) = v0;

  if (v0)
  {
    v2 = sub_10011F838;
  }

  else
  {
    v2 = sub_10011E540;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10011E540()
{
  v158 = *(v0 + 668);
  v1 = *(v0 + 1928);
  v166 = *(v0 + 2048);
  v169 = *(v0 + 1920);
  v2 = *(v0 + 1912);
  v161 = *(v0 + 1904);
  v3 = *(v0 + 1712);
  v4 = *(v0 + 1696);
  v5 = (v4 + *(v0 + 1984));
  v154 = *(v0 + 1680);
  v156 = *(v0 + 1688);
  sub_100124054(v4 + *(v0 + 1992), "VerifyAttestation", 17, 2, *(v0 + 2032));

  sub_10005AF88(v3);

  sub_10005AF88(v3);

  sub_1001D2500();
  sub_100128614(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  v6 = *(v169 + 8);
  v6(v1, v2);
  v7 = *(v0 + 1632);
  v8 = *(v0 + 1640);
  os_unfair_lock_lock(v5);
  sub_10011FCC0(v5 + v158, v154, v156, v161);
  v9 = *(v0 + 1984);
  if (v166)
  {
    v10 = *(v0 + 1712);
    v11 = *(v0 + 1696);

    sub_10005AF88(v10);

    os_unfair_lock_unlock((v11 + v9));
    return;
  }

  v148 = v8;
  v143 = v6;
  v12 = *(v0 + 1904);
  v13 = *(v0 + 1896);
  os_unfair_lock_unlock((*(v0 + 1696) + v9));
  sub_10001208C(v12, v13, &qword_10022E328, &qword_1001DEFA8);
  v150 = v7;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v144 = *(v0 + 1856);
    v14 = *(v0 + 1824);
    v15 = *(v0 + 1808);
    v16 = *(v0 + 1800);
    v17 = *(v0 + 1792);
    v18 = *(v0 + 1776);
    v125 = v17;
    v127 = *(v0 + 1768);
    v159 = *(v0 + 1760);
    v162 = *(v0 + 1752);
    v167 = *(v0 + 1744);
    v136 = *(v0 + 1736);
    v19 = *(v0 + 1696);
    v131 = *(v0 + 1688);
    v146 = *(v0 + 1680);
    swift_getErrorValue();
    v128 = *(v0 + 1608);
    v20 = *(v0 + 1616);
    v133 = *(v0 + 1624);
    _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
    (*(v15 + 16))(v14, v19 + *(*v19 + 320), v16);
    v21 = *v19;
    v22 = (v19 + *(*v19 + 192));
    v23 = v22[1];
    v139 = *v22;
    v24 = (v19 + *(*v19 + 224));
    v25 = v24[1];
    v138 = *v24;
    v26 = (v19 + *(*v19 + 256));
    v28 = v26[1];
    v27 = v26[2];
    *(v0 + 16) = *v26;
    *(v0 + 32) = v28;
    *(v0 + 48) = v27;
    v29 = v26[6];
    v31 = v26[3];
    v30 = v26[4];
    *(v0 + 96) = v26[5];
    *(v0 + 112) = v29;
    *(v0 + 64) = v31;
    *(v0 + 80) = v30;
    v32 = v26[10];
    v34 = v26[7];
    v33 = v26[8];
    *(v0 + 160) = v26[9];
    *(v0 + 176) = v32;
    *(v0 + 128) = v34;
    *(v0 + 144) = v33;
    v35 = *v26;
    v36 = v26[2];
    *(v0 + 208) = v26[1];
    *(v0 + 224) = v36;
    *(v0 + 192) = v35;
    v37 = v26[3];
    v38 = v26[4];
    v39 = v26[6];
    *(v0 + 272) = v26[5];
    *(v0 + 288) = v39;
    *(v0 + 240) = v37;
    *(v0 + 256) = v38;
    v40 = v26[7];
    v41 = v26[8];
    v42 = v26[10];
    *(v0 + 336) = v26[9];
    *(v0 + 352) = v42;
    *(v0 + 304) = v40;
    *(v0 + 320) = v41;
    (*(v18 + 16))(v17, v19 + *(v21 + 264), v127);
    v43 = *(v20 - 8);
    v44 = swift_task_alloc();
    (*(v43 + 16))(v44, v128, v20);
    v45 = (v19 + *(*v19 + 208));
    v46 = *v45;
    v47 = v45[1];
    LOBYTE(v16) = *(v19 + *(*v19 + 248));

    sub_1000884D8(v0 + 16, v0 + 368);

    sub_10001C2C8(v144, v14, v139, v23, v138, v25, v0 + 192, v125, (v0 + 1568), 0, v146, v131, v44, v150, v148, v46, v47, v16, &type metadata for SystemInfo, v20, &protocol witness table for SystemInfo, v133);

    v136[3] = &type metadata for AttestationVerificationErrorMetric;
    v136[4] = sub_10005AFDC();
    v48 = swift_allocObject();
    *v136 = v48;
    *(v48 + 48) = *(v0 + 1600);
    v49 = *(v0 + 1584);
    *(v48 + 16) = *(v0 + 1568);
    *(v48 + 32) = v49;
    swift_storeEnumTagMultiPayload();
    sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
    sub_1001D1BC0();

    (*(v162 + 8))(v159, v167);
  }

  else
  {
    sub_100011F00(*(v0 + 1896), &qword_10022E328, &qword_1001DEFA8);
  }

  v50 = *(v0 + 1904);
  v163 = *(v0 + 1888);
  v51 = *(v0 + 1816);
  v52 = *(v0 + 1808);
  v53 = *(v0 + 1800);
  v54 = *(v0 + 1784);
  v55 = *(v0 + 1776);
  v56 = *(v0 + 1768);
  v57 = *(v0 + 1696);
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  v58 = (v57 + *(*v57 + 192));
  v59 = v58[1];
  v155 = *v58;
  (*(v52 + 16))(v51, v57 + *(*v57 + 320), v53);
  v60 = (v57 + *(*v57 + 224));
  v61 = v60[1];
  v145 = *v60;
  v62 = v57 + *(*v57 + 256);
  v147 = *(v62 + 160);
  v160 = *(v62 + 168);
  v63 = (v57 + *(*v57 + 208));
  v64 = v63[1];
  v129 = *v63;
  (*(v55 + 16))(v54, v57 + *(*v57 + 264), v56);
  sub_10001208C(v50, v163, &qword_10022E328, &qword_1001DEFA8);
  v65 = *(v57 + *(*v57 + 248));
  sub_100011AC0(&qword_10022E310, &qword_1001DEF50);
  v66 = sub_100011AC0(&qword_10022BCE8, &qword_1001DB7F8);
  v67 = (*(*(v66 - 8) + 80) + 32) & ~*(*(v66 - 8) + 80);
  v152 = *(*(v66 - 8) + 72);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1001D5480;
  v69 = v68 + v67;
  v70 = *(v66 + 48);
  *(v68 + v67) = 0;
  v141 = v64;

  v157 = v59;

  sub_1001CFD20();
  if ((*&v71 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v71 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v71 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v134 = v68;
  *(v69 + v70) = v71;
  v72 = enum case for EventValue.int(_:);
  v73 = sub_1001CFEE0();
  v140 = *(v73 - 8);
  v74 = *(v140 + 104);
  v132 = v72;
  (v74)(v69 + v70, v72, v73);
  v75 = (v69 + v152 + *(v66 + 48));
  *(v69 + v152) = 6;
  *v75 = sub_1001CFD70();
  v75[1] = v76;
  v77 = enum case for EventValue.string(_:);
  (v74)(v75, enum case for EventValue.string(_:), v73);
  v78 = (v69 + 2 * v152);
  v79 = *(v66 + 48);
  *v78 = 1;
  v80 = &v78[v79];
  *v80 = v145;
  v80[1] = v61;
  v74();
  v81 = (v69 + 3 * v152);
  v82 = *(v66 + 48);
  *v81 = 2;
  v83 = &v81[v82];
  *v83 = v147;
  v83[1] = v160;
  v74();
  v84 = (v69 + 4 * v152);
  v85 = *(v66 + 48);
  *v84 = 4;
  v86 = &v84[v85];
  *v86 = v155;
  v86[1] = v157;
  v74();
  v87 = (v69 + 5 * v152);
  v88 = &v87[*(v66 + 48)];
  *v87 = 5;
  *v88 = sub_1001CFDB0();
  v88[1] = v89;
  v164 = v73;
  (v74)(v88, v77);
  *(v69 + 6 * v152) = 7;

  sub_1001CFED0();
  v90 = (v69 - v152 + 8 * v152);
  v91 = *(v66 + 48);
  *v90 = 11;
  v92 = sub_1001D2600();
  v93 = 1000 * v92;
  if ((v92 * 1000) >> 64 != (1000 * v92) >> 63)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1001D2600();
  if (__OFADD__(v93, v94 / 1000000000000000))
  {
LABEL_28:
    __break(1u);
    return;
  }

  *&v90[v91] = v93 + v94 / 1000000000000000;
  (v74)(&v90[v91], v132, v73);
  v95 = (v69 + 8 * v152);
  v96 = *(v66 + 48);
  *v95 = 12;
  v95[v96] = v65;
  (v74)(&v95[v96], enum case for EventValue.BOOL(_:), v73);
  v97 = sub_1000D5390(v134);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v141)
  {
    v98 = *(v0 + 1720);
    *v98 = v129;
    v98[1] = v141;
    (v74)(v98, v77, v73);
    (*(v140 + 56))(v98, 0, 1, v73);
    sub_1000168A0(v98, 3);
  }

  sub_10001208C(*(v0 + 1888), *(v0 + 1880), &qword_10022E328, &qword_1001DEFA8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v142 = *(v0 + 1888);
  v100 = *(v0 + 1848);
  v101 = *(v0 + 1840);
  v168 = *(v0 + 1832);
  v151 = *(v0 + 1816);
  v153 = *(v0 + 1808);
  v149 = *(v0 + 1800);
  v102 = *(v0 + 1776);
  v135 = *(v0 + 1768);
  v137 = *(v0 + 1784);
  v103 = *(v0 + 1720);
  if (EnumCaseMultiPayload == 1)
  {
    v104 = *(v0 + 1688);
    v126 = *(v0 + 1680);
    v130 = **(v0 + 1880);
    sub_1001CFED0();
    v105 = *(v140 + 56);
    v105(v103, 0, 1, v164);
    sub_1000168A0(v103, 8);
    *v103 = v126;
    v103[1] = v104;
    (v74)(v103, v77, v164);
    v105(v103, 0, 1, v164);

    sub_1000168A0(v103, 10);
    *v103 = sub_10012603C(v130);
    v103[1] = v106;
    (v74)(v103, v77, v164);
    v105(v103, 0, 1, v164);
    sub_1000168A0(v103, 9);

    sub_100011F00(v142, &qword_10022E328, &qword_1001DEFA8);
    (*(v102 + 8))(v137, v135);
    (*(v153 + 8))(v151, v149);
    (*(v101 + 8))(v100, v168);
  }

  else
  {
    v107 = *(v0 + 1880);
    sub_1001CFED0();
    (*(v140 + 56))(v103, 0, 1, v164);
    sub_1000168A0(v103, 8);
    sub_100011F00(v142, &qword_10022E328, &qword_1001DEFA8);
    (*(v102 + 8))(v137, v135);
    (*(v153 + 8))(v151, v149);
    (*(v101 + 8))(v100, v168);
    sub_100011F00(v107, &qword_10022E328, &qword_1001DEFA8);
  }

  v108 = *(v0 + 1872);
  v165 = *(v0 + 1904);
  v109 = *(v0 + 1760);
  v110 = *(v0 + 1752);
  v111 = *(v0 + 1744);
  v112 = *(v0 + 1736);
  v112[3] = &type metadata for AttestationVerificationMetric;
  v112[4] = sub_100127C7C();
  v113 = swift_allocObject();
  *v112 = v113;
  v113[2] = 0xD000000000000015;
  v113[3] = 0x80000001001E5B30;
  v113[4] = v97;
  v113[5] = v155;
  v113[6] = v157;
  swift_storeEnumTagMultiPayload();
  sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  sub_1001D1BC0();
  (*(v110 + 8))(v109, v111);
  sub_10001208C(v165, v108, &qword_10022E328, &qword_1001DEFA8);
  v114 = swift_getEnumCaseMultiPayload();
  v115 = *(v0 + 1968);
  v116 = *(v0 + 1952);
  v117 = *(v0 + 1944);
  v118 = *(v0 + 1936);
  v119 = *(v0 + 1912);
  v120 = *(v0 + 1904);
  v121 = *(v0 + 1712);
  if (v114 == 1)
  {
    *(v0 + 1656) = **(v0 + 1872);
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    v143(v118, v119);
    (*(v116 + 8))(v115, v117);
    sub_100011F00(v120, &qword_10022E328, &qword_1001DEFA8);

    sub_10005AF88(v121);

    sub_10005AF88(v121);
  }

  else
  {
    v123 = *(v0 + 1672);
    v124 = *(v0 + 1872);
    v143(v118, *(v0 + 1912));
    (*(v116 + 8))(v115, v117);
    sub_10012865C(v124, v123, type metadata accessor for ValidatedAttestation);
    sub_100011F00(v120, &qword_10022E328, &qword_1001DEFA8);

    sub_10005AF88(v121);

    sub_10005AF88(v121);
  }

  v122 = *(v0 + 8);

  v122();
}

uint64_t sub_10011F838()
{
  v1 = v0[214];
  sub_100124054(v0[212] + v0[249], "VerifyAttestation", 17, 2, v0[254]);

  sub_10005AF88(v1);

  sub_10005AF88(v1);

  sub_10005AF88(v1);
}

uint64_t sub_10011F90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_100011AC0(&qword_10022E328, &qword_1001DEFA8);
  v6 = swift_task_alloc();
  v3[6] = v6;
  v3[7] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[8] = v7;
  *v7 = v3;
  v7[1] = sub_10011FA0C;

  return sub_100124FC8(v6, a2, a3);
}

uint64_t sub_10011FA0C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10011FC00;
  }

  else
  {
    v2 = sub_10011FB20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10011FB20()
{
  v1 = v0[6];
  v2 = v0[7];
  swift_storeEnumTagMultiPayload();
  sub_1000DBEF4(v1, v2, &qword_10022E328, &qword_1001DEFA8);
  v3 = v0[4];
  sub_1000DBEF4(v0[7], v0[2], &qword_10022E328, &qword_1001DEFA8);

  sub_10005AF88(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10011FC00()
{
  *v0[7] = v0[9];
  swift_storeEnumTagMultiPayload();
  v1 = v0[4];
  sub_1000DBEF4(v0[7], v0[2], &qword_10022E328, &qword_1001DEFA8);

  sub_10005AF88(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10011FCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100011AC0(&qword_10022E328, &qword_1001DEFA8);
  __chkstk_darwin(v8);
  v10 = (v30 - v9);
  result = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v12 = *(result + 144);
  v13 = *(a1 + v12);
  if (*(v13 + 16))
  {
    result = sub_100006028(a2, a3);
    if (v14)
    {
      v15 = (*(v13 + 56) + (result << 7));
      v16 = v15[3];
      v18 = *v15;
      v17 = v15[1];
      v37[2] = v15[2];
      v37[3] = v16;
      v37[0] = v18;
      v37[1] = v17;
      v19 = v15[4];
      v20 = v15[5];
      v21 = v15[6];
      *(v38 + 9) = *(v15 + 105);
      v37[5] = v20;
      v38[0] = v21;
      v37[4] = v19;
      v22 = v18;
      v23 = v15[2];
      v39 = v15[1];
      v40 = v23;
      v24 = v15[3];
      v25 = v15[4];
      *(v44 + 9) = *(v15 + 105);
      v26 = v15[6];
      v43 = v15[5];
      v44[0] = v26;
      v41 = v24;
      v42 = v25;
      if (v22 >> 62 == 3 && v22 == 0xC000000000000001)
      {
        sub_10001208C(a4, v10, &qword_10022E328, &qword_1001DEFA8);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v27 = *v10;
          sub_10001208C(v37, &v45, &qword_100230150, &unk_1001D3700);
        }

        else
        {
          sub_10001208C(v37, &v45, &qword_100230150, &unk_1001D3700);
          sub_100011F00(v10, &qword_10022E328, &qword_1001DEFA8);
          v27 = 0xC000000000000008;
        }

        v45 = v27;
        v50 = v43;
        v51[0] = v44[0];
        *(v51 + 9) = *(v44 + 9);
        v46 = v39;
        v47 = v40;
        v48 = v41;
        v49 = v42;

        sub_10001208C(&v45, v30, &qword_100230150, &unk_1001D3700);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30[0] = *(a1 + v12);
        sub_10001B1A4(&v45, a2, a3, isUniquelyReferenced_nonNull_native);

        *(a1 + v12) = v30[0];
        v30[0] = v27;
        v30[1] = 0;
        v35 = v43;
        v36[0] = v44[0];
        *(v36 + 9) = *(v44 + 9);
        v31 = v39;
        v32 = v40;
        v33 = v41;
        v34 = v42;
        v28 = v30;
      }

      else
      {
        v45 = v22;
        v50 = v43;
        v51[0] = v44[0];
        *(v51 + 9) = *(v44 + 9);
        v46 = v39;
        v47 = v40;
        v48 = v41;
        v49 = v42;
        sub_10001208C(v37, v30, &qword_100230150, &unk_1001D3700);
        v28 = &v45;
      }

      return sub_100011F00(v28, &qword_100230150, &unk_1001D3700);
    }
  }

  return result;
}

uint64_t sub_10011FFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[134] = v22;
  v8[133] = a8;
  v8[132] = a7;
  v8[131] = a6;
  v8[130] = a5;
  v8[129] = a4;
  v8[128] = a3;
  v8[127] = a2;
  v8[126] = a1;
  sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  v8[135] = swift_task_alloc();
  v8[136] = type metadata accessor for ThimbledEvent(0);
  v8[137] = swift_task_alloc();
  v13 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v8[138] = v13;
  v8[139] = *(v13 - 8);
  v8[140] = swift_task_alloc();
  v14 = sub_1001CFDD0();
  v8[141] = v14;
  v8[142] = *(v14 - 8);
  v8[143] = swift_task_alloc();
  v8[144] = swift_task_alloc();
  v15 = sub_1001CFDA0();
  v8[145] = v15;
  v8[146] = *(v15 - 8);
  v8[147] = swift_task_alloc();
  v8[148] = swift_task_alloc();
  v16 = sub_1001CFD60();
  v8[149] = v16;
  v8[150] = *(v16 - 8);
  v8[151] = swift_task_alloc();
  v8[152] = swift_task_alloc();
  v8[153] = sub_100011AC0(&qword_10022E300, &qword_1001DEF28);
  v8[154] = swift_task_alloc();
  v8[155] = swift_task_alloc();
  v8[156] = swift_task_alloc();
  v8[157] = swift_task_alloc();
  v8[158] = swift_task_alloc();
  v17 = sub_1001D20D0();
  v8[159] = v17;
  v8[160] = *(v17 - 8);
  v8[161] = swift_task_alloc();
  v8[162] = swift_task_alloc();
  v18 = sub_1001D0DC0();
  v8[163] = v18;
  v8[164] = *(v18 - 8);
  v8[165] = swift_task_alloc();
  v8[166] = swift_task_alloc();
  v19 = swift_task_alloc();
  v8[167] = v19;
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v19[5] = a8;
  v19[6] = v22;

  sub_100012038(a8, v22);

  return _swift_task_switch(sub_1001203F4, 0, 0);
}

uint64_t sub_1001203F4()
{
  v1 = *(v0 + 1032);
  v2 = *(*v1 + 144);
  *(v0 + 1344) = v2;
  v3 = (v1 + v2);
  os_unfair_lock_lock((v1 + v2));
  v4 = *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  *(v0 + 1416) = v4;
  v5 = v3 + v4;
  v6 = *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 148);
  v7 = *&v5[v6];
  if (*(v7 + 16))
  {
    v8 = sub_100006028(*(v0 + 1016), *(v0 + 1024));
    if (v9)
    {
      v10 = *(v0 + 1024);
      v41 = *(v0 + 1016);
      v11 = *(v7 + 56) + 72 * v8;
      v13 = *(v11 + 32);
      v12 = *(v11 + 48);
      v14 = *(v11 + 16);
      *(v0 + 752) = *(v11 + 64);
      *(v0 + 720) = v13;
      *(v0 + 736) = v12;
      *(v0 + 704) = v14;
      *(v0 + 688) = *v11;
      v15 = *(v0 + 704);
      sub_10001208C(v0 + 688, v0 + 760, &qword_100230140, &qword_1001D36F0);
      sub_100127D1C(v15);
      v43 = *(v0 + 688);
      v44 = *(v0 + 712);
      v45 = *(v0 + 728);
      v46 = *(v0 + 744);
      *(v0 + 544) = v43;
      *(v0 + 560) = 1;
      *(v0 + 568) = v44;
      *(v0 + 584) = v45;
      *(v0 + 600) = v46;

      sub_10001208C(v0 + 544, v0 + 832, &qword_100230140, &qword_1001D36F0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = *&v5[v6];
      sub_10001B348(v0 + 544, v41, v10, isUniquelyReferenced_nonNull_native);

      *&v5[v6] = v47;
      *(v0 + 616) = v43;
      *(v0 + 632) = 1;
      *(v0 + 640) = v44;
      *(v0 + 656) = v45;
      *(v0 + 672) = v46;
      sub_100011F00(v0 + 616, &qword_100230140, &qword_1001D36F0);
    }
  }

  v17 = *(v0 + 1072);
  v18 = *(v0 + 1064);
  v19 = *(v0 + 1056);
  v42 = *(v0 + 1048);
  v20 = *(v0 + 1040);
  v21 = *(v0 + 1032);
  os_unfair_lock_unlock(v3);
  *(v0 + 1352) = *(*v21 + 296);
  sub_1001D0DE0();
  sub_1001D0DA0();
  *(v0 + 1360) = *(*v21 + 152);
  *(v0 + 1368) = sub_1001D20F0();
  *(v0 + 1376) = sub_100128614(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  v22 = swift_task_alloc();
  *(v0 + 1384) = v22;
  v22[2] = v20;
  v22[3] = v42;
  v22[4] = v19;
  v22[5] = v18;
  v22[6] = v17;

  sub_100012038(v18, v17);

  sub_100012038(v18, v17);
  v23 = sub_1001D0DE0();
  v24 = sub_1001D1E90();
  if (sub_1001D1ED0())
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = sub_1001D0DB0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, v24, v26, "VerifyAttestation", "", v25, 2u);
  }

  v27 = *(v0 + 1328);
  v28 = *(v0 + 1320);
  v29 = *(v0 + 1312);
  v30 = *(v0 + 1304);
  v31 = *(v0 + 1072);
  v32 = *(v0 + 1064);

  (*(v29 + 16))(v28, v27, v30);
  sub_1001D0E30();
  swift_allocObject();
  *(v0 + 1392) = sub_1001D0E20();

  sub_100012038(v32, v31);
  v33 = swift_task_alloc();
  *(v0 + 1400) = v33;
  *v33 = v0;
  v33[1] = sub_100120874;
  v34 = *(v0 + 1264);
  v35 = *(v0 + 1072);
  v36 = *(v0 + 1064);
  v37 = *(v0 + 1056);
  v38 = *(v0 + 1048);
  v39 = *(v0 + 1040);

  return sub_100121DC8(v34, v39, v38, v37, v36, v35);
}

uint64_t sub_100120874()
{
  *(*v1 + 1408) = v0;

  if (v0)
  {
    v2 = sub_100121CC0;
  }

  else
  {
    v2 = sub_100120988;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100120988()
{
  v166 = *(v0 + 1408);
  v1 = *(v0 + 1288);
  v169 = *(v0 + 1280);
  v2 = *(v0 + 1272);
  v158 = *(v0 + 1416);
  v161 = *(v0 + 1264);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1064);
  v5 = *(v0 + 1032);
  v6 = (v5 + *(v0 + 1344));
  v154 = *(v0 + 1016);
  v156 = *(v0 + 1024);
  sub_100124054(v5 + *(v0 + 1352), "VerifyAttestation", 17, 2, *(v0 + 1392));

  sub_100011E48(v4, v3);

  sub_100011E48(v4, v3);

  sub_1001D2500();
  sub_100128614(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  v7 = *(v169 + 8);
  v7(v1, v2);
  v8 = *(v0 + 968);
  v9 = *(v0 + 976);
  os_unfair_lock_lock(v6);
  sub_1001221D8(v6 + v158, v154, v156, v161);
  v10 = *(v0 + 1344);
  if (v166)
  {
    v11 = *(v0 + 1072);
    v12 = *(v0 + 1064);
    v13 = *(v0 + 1032);

    sub_100011E48(v12, v11);

    os_unfair_lock_unlock((v13 + v10));
    return;
  }

  v149 = v8;
  v142 = v7;
  v14 = *(v0 + 1264);
  v15 = *(v0 + 1256);
  os_unfair_lock_unlock((*(v0 + 1032) + v10));
  sub_10001208C(v14, v15, &qword_10022E300, &qword_1001DEF28);
  v147 = v9;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v151 = *(v0 + 1216);
    v16 = *(v0 + 1184);
    v145 = v16;
    v17 = *(v0 + 1168);
    v18 = *(v0 + 1160);
    v19 = *(v0 + 1136);
    v126 = *(v0 + 1128);
    v129 = *(v0 + 1152);
    v159 = *(v0 + 1120);
    v162 = *(v0 + 1112);
    v167 = *(v0 + 1104);
    v137 = *(v0 + 1096);
    v20 = *(v0 + 1032);
    swift_getErrorValue();
    v21 = *(v0 + 952);
    v131 = *(v0 + 944);
    v135 = *(v0 + 960);
    _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
    (*(v17 + 16))(v16, v20 + *(*v20 + 320), v18);
    v22 = *v20;
    v23 = (v20 + *(*v20 + 192));
    v24 = v23[1];
    v143 = *v23;
    v25 = (v20 + *(*v20 + 224));
    v26 = v25[1];
    v139 = *v25;
    v27 = (v20 + *(*v20 + 256));
    v29 = v27[1];
    v28 = v27[2];
    *(v0 + 16) = *v27;
    *(v0 + 32) = v29;
    *(v0 + 48) = v28;
    v30 = v27[6];
    v32 = v27[3];
    v31 = v27[4];
    *(v0 + 96) = v27[5];
    *(v0 + 112) = v30;
    *(v0 + 64) = v32;
    *(v0 + 80) = v31;
    v33 = v27[10];
    v35 = v27[7];
    v34 = v27[8];
    *(v0 + 160) = v27[9];
    *(v0 + 176) = v33;
    *(v0 + 128) = v35;
    *(v0 + 144) = v34;
    v36 = *v27;
    v37 = v27[2];
    *(v0 + 208) = v27[1];
    *(v0 + 224) = v37;
    *(v0 + 192) = v36;
    v38 = v27[3];
    v39 = v27[4];
    v40 = v27[6];
    *(v0 + 272) = v27[5];
    *(v0 + 288) = v40;
    *(v0 + 240) = v38;
    *(v0 + 256) = v39;
    v41 = v27[7];
    v42 = v27[8];
    v43 = v27[10];
    *(v0 + 336) = v27[9];
    *(v0 + 352) = v43;
    *(v0 + 304) = v41;
    *(v0 + 320) = v42;
    (*(v19 + 16))(v129, v20 + *(v22 + 264), v126);
    v44 = *(v21 - 8);
    v45 = swift_task_alloc();
    (*(v44 + 16))(v45, v131, v21);
    v46 = (v20 + *(*v20 + 208));
    v48 = *v46;
    v47 = v46[1];
    LOBYTE(v18) = *(v20 + *(*v20 + 248));

    sub_1000884D8(v0 + 16, v0 + 368);

    sub_10001C2C8(v151, v145, v143, v24, v139, v26, v0 + 192, v129, (v0 + 904), 0, 0, 0xE000000000000000, v45, v149, v147, v48, v47, v18, &type metadata for SystemInfo, v21, &protocol witness table for SystemInfo, v135);

    v137[3] = &type metadata for AttestationVerificationErrorMetric;
    v137[4] = sub_10005AFDC();
    v49 = swift_allocObject();
    *v137 = v49;
    *(v49 + 48) = *(v0 + 936);
    v50 = *(v0 + 920);
    *(v49 + 16) = *(v0 + 904);
    *(v49 + 32) = v50;
    swift_storeEnumTagMultiPayload();
    sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
    sub_1001D1BC0();

    (*(v162 + 8))(v159, v167);
  }

  else
  {
    sub_100011F00(*(v0 + 1256), &qword_10022E300, &qword_1001DEF28);
  }

  v51 = *(v0 + 1264);
  v163 = *(v0 + 1248);
  v52 = *(v0 + 1176);
  v53 = *(v0 + 1168);
  v54 = *(v0 + 1160);
  v55 = *(v0 + 1144);
  v56 = *(v0 + 1136);
  v57 = *(v0 + 1128);
  v58 = *(v0 + 1032);
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  v59 = (v58 + *(*v58 + 192));
  v60 = v59[1];
  v155 = *v59;
  (*(v53 + 16))(v52, v58 + *(*v58 + 320), v54);
  v61 = (v58 + *(*v58 + 224));
  v62 = v61[1];
  v144 = *v61;
  v63 = v58 + *(*v58 + 256);
  v146 = *(v63 + 160);
  v160 = *(v63 + 168);
  v64 = (v58 + *(*v58 + 208));
  v65 = v64[1];
  v127 = *v64;
  (*(v56 + 16))(v55, v58 + *(*v58 + 264), v57);
  sub_10001208C(v51, v163, &qword_10022E300, &qword_1001DEF28);
  v66 = *(v58 + *(*v58 + 248));
  sub_100011AC0(&qword_10022E310, &qword_1001DEF50);
  v67 = sub_100011AC0(&qword_10022BCE8, &qword_1001DB7F8);
  v68 = (*(*(v67 - 8) + 80) + 32) & ~*(*(v67 - 8) + 80);
  v152 = *(*(v67 - 8) + 72);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1001D5480;
  v70 = v69 + v68;
  v71 = *(v67 + 48);
  *(v69 + v68) = 0;
  v140 = v65;

  v157 = v60;

  sub_1001CFD20();
  if ((*&v72 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v72 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v72 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v132 = v69;
  *(v70 + v71) = v72;
  v73 = enum case for EventValue.int(_:);
  v74 = sub_1001CFEE0();
  v138 = *(v74 - 8);
  v75 = *(v138 + 104);
  v130 = v73;
  (v75)(v70 + v71, v73, v74);
  v76 = (v70 + v152 + *(v67 + 48));
  *(v70 + v152) = 6;
  *v76 = sub_1001CFD70();
  v76[1] = v77;
  v78 = enum case for EventValue.string(_:);
  (v75)(v76, enum case for EventValue.string(_:), v74);
  v79 = (v70 + 2 * v152);
  v80 = *(v67 + 48);
  *v79 = 1;
  v81 = &v79[v80];
  *v81 = v144;
  v81[1] = v62;
  v75();
  v82 = (v70 + 3 * v152);
  v83 = *(v67 + 48);
  *v82 = 2;
  v84 = &v82[v83];
  *v84 = v146;
  v84[1] = v160;
  v75();
  v85 = (v70 + 4 * v152);
  v86 = *(v67 + 48);
  *v85 = 4;
  v87 = &v85[v86];
  *v87 = v155;
  v87[1] = v157;
  v75();
  v88 = (v70 + 5 * v152);
  v89 = &v88[*(v67 + 48)];
  *v88 = 5;
  *v89 = sub_1001CFDB0();
  v89[1] = v90;
  v164 = v74;
  (v75)(v89, v78);
  *(v70 + 6 * v152) = 7;

  sub_1001CFED0();
  v91 = (v70 - v152 + 8 * v152);
  v92 = *(v67 + 48);
  *v91 = 11;
  v93 = sub_1001D2600();
  v94 = 1000 * v93;
  if ((v93 * 1000) >> 64 != (1000 * v93) >> 63)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1001D2600();
  if (__OFADD__(v94, v95 / 1000000000000000))
  {
LABEL_28:
    __break(1u);
    return;
  }

  *&v91[v92] = v94 + v95 / 1000000000000000;
  (v75)(&v91[v92], v130, v74);
  v96 = (v70 + 8 * v152);
  v97 = *(v67 + 48);
  *v96 = 12;
  v96[v97] = v66;
  (v75)(&v96[v97], enum case for EventValue.BOOL(_:), v74);
  v98 = sub_1000D5390(v132);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v140)
  {
    v99 = *(v0 + 1080);
    *v99 = v127;
    v99[1] = v140;
    (v75)(v99, v78, v74);
    (*(v138 + 56))(v99, 0, 1, v74);
    sub_1000168A0(v99, 3);
  }

  sub_10001208C(*(v0 + 1248), *(v0 + 1240), &qword_10022E300, &qword_1001DEF28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v141 = *(v0 + 1248);
  v101 = *(v0 + 1240);
  v102 = *(v0 + 1208);
  v103 = *(v0 + 1200);
  v168 = *(v0 + 1192);
  v150 = *(v0 + 1176);
  v153 = *(v0 + 1168);
  v148 = *(v0 + 1160);
  v104 = *(v0 + 1136);
  v133 = *(v0 + 1128);
  v136 = *(v0 + 1144);
  v105 = *(v0 + 1080);
  if (EnumCaseMultiPayload == 1)
  {
    v106 = *v101;
    sub_1001CFED0();
    v107 = *(v138 + 56);
    v107(v105, 0, 1, v164);
    sub_1000168A0(v105, 8);
    *v105 = 0;
    v105[1] = 0xE000000000000000;
    (v75)(v105, v78, v164);
    v107(v105, 0, 1, v164);
    sub_1000168A0(v105, 10);
    *v105 = sub_10012603C(v106);
    v105[1] = v108;
    (v75)(v105, v78, v164);
    v107(v105, 0, 1, v164);
    sub_1000168A0(v105, 9);

    sub_100011F00(v141, &qword_10022E300, &qword_1001DEF28);
    (*(v104 + 8))(v136, v133);
    (*(v153 + 8))(v150, v148);
    (*(v103 + 8))(v102, v168);
  }

  else
  {
    sub_1001CFED0();
    (*(v138 + 56))(v105, 0, 1, v164);
    sub_1000168A0(v105, 8);
    sub_100011F00(v141, &qword_10022E300, &qword_1001DEF28);
    (*(v104 + 8))(v136, v133);
    (*(v153 + 8))(v150, v148);
    (*(v103 + 8))(v102, v168);
    sub_100011F00(v101, &qword_10022E300, &qword_1001DEF28);
  }

  v109 = *(v0 + 1232);
  v165 = *(v0 + 1264);
  v110 = *(v0 + 1120);
  v111 = *(v0 + 1112);
  v112 = *(v0 + 1104);
  v113 = *(v0 + 1096);
  v113[3] = &type metadata for AttestationVerificationMetric;
  v113[4] = sub_100127C7C();
  v114 = swift_allocObject();
  *v113 = v114;
  v114[2] = 0xD000000000000015;
  v114[3] = 0x80000001001E5B30;
  v114[4] = v98;
  v114[5] = v155;
  v114[6] = v157;
  swift_storeEnumTagMultiPayload();
  sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  sub_1001D1BC0();
  (*(v111 + 8))(v110, v112);
  sub_10001208C(v165, v109, &qword_10022E300, &qword_1001DEF28);
  v115 = swift_getEnumCaseMultiPayload();
  v128 = *(v0 + 1328);
  v116 = *(v0 + 1312);
  v117 = *(v0 + 1304);
  v118 = *(v0 + 1296);
  v119 = *(v0 + 1272);
  v134 = *(v0 + 1264);
  v120 = *(v0 + 1232);
  v121 = *(v0 + 1072);
  v122 = *(v0 + 1064);
  if (v115 == 1)
  {
    *(v0 + 992) = *v120;
    v123 = v118;
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    v142(v123, v119);
    (*(v116 + 8))(v128, v117);
    sub_100011F00(v134, &qword_10022E300, &qword_1001DEF28);

    sub_100011E48(v122, v121);

    sub_100011E48(v122, v121);
  }

  else
  {
    v125 = *(v0 + 1008);
    v142(v118, v119);
    (*(v116 + 8))(v128, v117);
    sub_10012865C(v120, v125, type metadata accessor for ValidatedProxiedAttestation);
    sub_100011F00(v134, &qword_10022E300, &qword_1001DEF28);

    sub_100011E48(v122, v121);

    sub_100011E48(v122, v121);
  }

  v124 = *(v0 + 8);

  v124();
}

uint64_t sub_100121CC0()
{
  v1 = v0[134];
  v2 = v0[133];
  sub_100124054(v0[129] + v0[169], "VerifyAttestation", 17, 2, v0[174]);

  sub_100011E48(v2, v1);

  sub_100011E48(v2, v1);

  sub_100011E48(v2, v1);
}

uint64_t sub_100121DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a4;
  v6[2] = a1;
  v6[7] = sub_100011AC0(&qword_10022E300, &qword_1001DEF28);
  v12 = swift_task_alloc();
  v6[8] = v12;
  v6[9] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[10] = v13;
  *v13 = v6;
  v13[1] = sub_100121EF4;

  return sub_100125828(v12, a2, a3, a4, a5, a6);
}

uint64_t sub_100121EF4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100122100;
  }

  else
  {
    v2 = sub_100122008;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100122008()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_storeEnumTagMultiPayload();
  sub_1000DBEF4(v1, v2, &qword_10022E300, &qword_1001DEF28);
  v4 = v0[5];
  v3 = v0[6];
  sub_1000DBEF4(v0[9], v0[2], &qword_10022E300, &qword_1001DEF28);

  sub_100011E48(v4, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100122100()
{
  *v0[9] = v0[11];
  swift_storeEnumTagMultiPayload();
  v2 = v0[5];
  v1 = v0[6];
  sub_1000DBEF4(v0[9], v0[2], &qword_10022E300, &qword_1001DEF28);

  sub_100011E48(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001221D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v7 = type metadata accessor for ValidatedProxiedAttestation(0);
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100011AC0(&qword_10022E300, &qword_1001DEF28);
  __chkstk_darwin(v10);
  v12 = (&v32 - v11);
  result = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v14 = *(result + 148);
  v35 = a1;
  v15 = *(a1 + v14);
  if (*(v15 + 16))
  {
    result = sub_100006028(a2, a3);
    if (v16)
    {
      v32 = a2;
      v33 = a3;
      v17 = *(v15 + 56) + 72 * result;
      v19 = *(v17 + 32);
      v18 = *(v17 + 48);
      v20 = *(v17 + 64);
      v43 = *(v17 + 16);
      v42 = *v17;
      v44 = v19;
      v45 = v18;
      v46 = v20;
      v49 = *v17;
      v21 = *(v17 + 40);
      v47 = *(v17 + 24);
      v48 = v21;
      v22 = *(&v18 + 1);
      v23 = v20;
      if (v43 == 1)
      {
        sub_10001208C(v34, v12, &qword_10022E300, &qword_1001DEF28);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v24 = *v12;
          sub_10001208C(&v42, &v50, &qword_100230140, &qword_1001D36F0);
          v25 = v23;
        }

        else
        {
          sub_10012865C(v12, v9, type metadata accessor for ValidatedProxiedAttestation);
          v27 = &v9[*(v7 + 32)];
          v22 = *v27;
          v25 = *(v27 + 1);
          sub_10001208C(&v42, &v50, &qword_100230140, &qword_1001D36F0);

          sub_1001285B4(v9, type metadata accessor for ValidatedProxiedAttestation);

          v24 = 2;
        }

        v28 = v33;
        v50 = v49;
        v52 = v47;
        v53 = v48;
        v51 = v24;
        v54 = v22;
        v55 = v25;

        sub_10001208C(&v50, &v36, &qword_100230140, &qword_1001D36F0);
        v29 = v22;
        v30 = v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v36 = *(v30 + v14);
        sub_10001B348(&v50, v32, v28, isUniquelyReferenced_nonNull_native);

        *(v30 + v14) = v36;
        v36 = v49;
        v37 = v24;
        v38 = v47;
        v39 = v48;
        v40 = v29;
        v41 = v25;
        v26 = &v36;
      }

      else
      {
        v50 = v49;
        v52 = v47;
        v53 = v48;
        v51 = v43;
        v54 = *(&v18 + 1);
        v55 = v20;
        sub_10001208C(&v42, &v36, &qword_100230140, &qword_1001D36F0);
        v26 = &v50;
      }

      return sub_100011F00(v26, &qword_100230140, &qword_1001D36F0);
    }
  }

  return result;
}

void sub_10012254C(char a1)
{
  v2 = *v1;
  lock = (v1 + *(*v1 + 144));
  os_unfair_lock_lock(lock);
  v12 = v2[10];
  v3 = v2[11];
  v4 = v2[12];
  v5 = v2[13];
  v6 = v2[14];
  v7 = v2[15];
  v8 = v2[16];
  v9 = v2[17];
  v14 = v12;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  type metadata accessor for RequestMetrics.State(255, &v14);
  v10 = lock + *(sub_1001CFF60() + 28);
  v14 = v12;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v10[*(type metadata accessor for RequestMetrics.State(0, &v14) + 152)] = a1 & 1;
  j__os_unfair_lock_unlock(lock);
}

char *sub_1001226EC()
{
  v1 = v0;
  v2 = *v0;
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 96);
  v6 = *(*v0 + 104);
  v31[0] = *(*v0 + 80);
  v3 = v31[0];
  v31[1] = v4;
  v31[2] = v5;
  v31[3] = v6;
  v7 = *(v2 + 128);
  v32 = *(v2 + 112);
  v33 = v7;
  type metadata accessor for RequestMetrics.State(255, v31);
  sub_1001CFF60();
  v8 = sub_1001CFF70();
  sub_10015607C(v8);
  (*(*(v3 - 8) + 8))(&v1[*(*v1 + 152)], v3);
  v9 = *(*v0 + 160);
  v10 = sub_1001CFDA0();
  v11 = *(*(v10 - 8) + 8);
  v11(&v1[v9], v10);
  v11(&v1[*(*v1 + 168)], v10);
  v12 = *(*v1 + 176);
  v13 = sub_1001CFD60();
  (*(*(v13 - 8) + 8))(&v1[v12], v13);
  v14 = *(*v1 + 184);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&v1[v14], AssociatedTypeWitness);

  sub_100011F00(&v1[*(*v1 + 216)], &qword_1002288B0, &qword_1001D5FC0);

  v16 = *(*v1 + 240);
  v17 = sub_1001D08A0();
  (*(*(v17 - 8) + 8))(&v1[v16], v17);
  (*(*(v5 - 8) + 8))(&v1[*(*v1 + 256)], v5);
  v18 = *(*v1 + 264);
  v19 = sub_1001CFDD0();
  (*(*(v19 - 8) + 8))(&v1[v18], v19);
  v20 = *(*v1 + 272);
  v21 = sub_1001D0E60();
  (*(*(v21 - 8) + 8))(&v1[v20], v21);

  v22 = *(*v1 + 288);
  v23 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  (*(*(v23 - 8) + 8))(&v1[v22], v23);
  v24 = *(*v1 + 296);
  v25 = sub_1001D0DF0();
  (*(*(v25 - 8) + 8))(&v1[v24], v25);
  v26 = *(*v1 + 304);
  v27 = sub_1001D0DC0();
  (*(*(v27 - 8) + 8))(&v1[v26], v27);

  v11(&v1[*(*v1 + 320)], v10);
  v28 = *(*v1 + 328);
  v29 = sub_1001D1F00();
  (*(*(v29 - 8) + 8))(&v1[v28], v29);
  (*(*(v6 - 8) + 8))(&v1[*(*v1 + 336)], v6);

  return v1;
}

uint64_t sub_100122D5C()
{
  sub_1001226EC();

  return swift_deallocClassInstance();
}

char *sub_100122DE4(_OWORD *a1)
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  type metadata accessor for RequestMetrics.State(255, v4);
  return sub_1001CFF60();
}

void sub_100122E50(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  v70 = v1;
  v71 = v2;
  v72 = v3;
  v73 = v4;
  v74 = v5;
  v75 = v6;
  v76 = v7;
  v77 = v8;
  v9 = type metadata accessor for RequestMetrics.State.OHTTPConnectionEstablishmentState(319, &v70);
  if (v10 <= 0x3F)
  {
    v52 = 0;
    v70 = v9;
    v44 = v1;
    v45 = v2;
    v46 = v3;
    v47 = v4;
    v48 = v5;
    v49 = v6;
    v50 = v7;
    v51 = v8;
    v11 = type metadata accessor for RequestMetrics.State.RopesRequestState(319, &v44);
    if (v12 <= 0x3F)
    {
      v53 = 0;
      v71 = v11;
      v44 = v1;
      v45 = v2;
      v46 = v3;
      v47 = v4;
      v48 = v5;
      v49 = v6;
      v50 = v7;
      v51 = v8;
      v13 = type metadata accessor for RequestMetrics.State.RopesRequestSentState(319, &v44);
      if (v14 <= 0x3F)
      {
        v54 = 0;
        v72 = v13;
        sub_1001234B0(319, &qword_10022DCC8, &type metadata accessor for HTTPFields, &type metadata accessor for Optional);
        if (v16 <= 0x3F)
        {
          v55 = 0;
          v73 = v15;
          v44 = v1;
          v45 = v2;
          v46 = v3;
          v47 = v4;
          v48 = v5;
          v49 = v6;
          v50 = v7;
          v51 = v8;
          v17 = type metadata accessor for RequestMetrics.State.DataStreamState(319, &v44);
          if (v18 <= 0x3F)
          {
            v56 = 0;
            v74 = v17;
            v44 = v1;
            v45 = v2;
            v46 = v3;
            v47 = v4;
            v48 = v5;
            v49 = v6;
            v50 = v7;
            v51 = v8;
            v19 = type metadata accessor for RequestMetrics.State.ResponseStreamState(319, &v44);
            if (v20 <= 0x3F)
            {
              v57 = 0;
              v75 = v19;
              v44 = v1;
              v45 = v2;
              v46 = v3;
              v47 = v4;
              v48 = v5;
              v49 = v6;
              v50 = v7;
              v51 = v8;
              State = type metadata accessor for RequestMetrics.State.AuthTokenFetchState(319, &v44);
              if (v22 <= 0x3F)
              {
                v58 = 0;
                v76 = State;
                v44 = v1;
                v45 = v2;
                v46 = v3;
                v47 = v4;
                v48 = v5;
                v49 = v6;
                v50 = v7;
                v51 = v8;
                v23 = type metadata accessor for RequestMetrics.State.AuthTokenSendState(319, &v44);
                if (v24 <= 0x3F)
                {
                  v59 = 0;
                  v77 = v23;
                  v44 = v1;
                  v45 = v2;
                  v46 = v3;
                  v47 = v4;
                  v48 = v5;
                  v49 = v6;
                  v50 = v7;
                  v51 = v8;
                  ChunkSentState = type metadata accessor for RequestMetrics.State.FirstChunkSentState(319, &v44);
                  if (v26 <= 0x3F)
                  {
                    v60 = 0;
                    v78 = ChunkSentState;
                    v44 = v1;
                    v45 = v2;
                    v46 = v3;
                    v47 = v4;
                    v48 = v5;
                    v49 = v6;
                    v50 = v7;
                    v51 = v8;
                    v27 = type metadata accessor for RequestMetrics.State.AttestationsReceivedState(319, &v44);
                    if (v28 <= 0x3F)
                    {
                      v61 = 0;
                      v79 = v27;
                      v44 = v1;
                      v45 = v2;
                      v46 = v3;
                      v47 = v4;
                      v48 = v5;
                      v49 = v6;
                      v50 = v7;
                      v51 = v8;
                      v29 = type metadata accessor for RequestMetrics.State.KDataSendState(319, &v44);
                      if (v30 <= 0x3F)
                      {
                        v62 = 0;
                        v80 = v29;
                        sub_1001235EC(319, &qword_10022DCD0, &type metadata for Duration);
                        if (v32 <= 0x3F)
                        {
                          v63 = 0;
                          v81 = v31;
                          v82 = v31;
                          v64 = 0;
                          v83 = v31;
                          sub_1001235EC(319, &qword_10022DCD8, &type metadata for Int);
                          if (v34 <= 0x3F)
                          {
                            v65 = 0;
                            v43 = v33;
                            v84 = v33;
                            sub_1001235EC(319, &qword_100229738, &type metadata for String);
                            if (v36 <= 0x3F)
                            {
                              v66 = 0;
                              v85 = v35;
                              v44 = v1;
                              v45 = v2;
                              v46 = v3;
                              v47 = v4;
                              v48 = v5;
                              v49 = v6;
                              v50 = v7;
                              v51 = v8;
                              type metadata accessor for RequestMetrics.State.NodeMetadata(255, &v44);
                              v37 = sub_1001D1720();
                              if (v38 <= 0x3F)
                              {
                                v67 = 0;
                                v86 = v37;
                                v44 = v1;
                                v45 = v2;
                                v46 = v3;
                                v47 = v4;
                                v48 = v5;
                                v49 = v6;
                                v50 = v7;
                                v51 = v8;
                                type metadata accessor for RequestMetrics.State.ProxiedNodeMetadata(255, &v44);
                                v39 = sub_1001D1720();
                                if (v40 <= 0x3F)
                                {
                                  v68 = 0;
                                  v87 = v39;
                                  sub_1001235EC(319, qword_10022DCE0, &type metadata for TrustedRequestCancellationReason);
                                  if (v42 <= 0x3F)
                                  {
                                    v69 = 0;
                                    v88 = v41;
                                    v89 = v43;
                                    swift_cvw_initStructMetadataWithLayoutString();
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100123228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  v15[0] = *(a3 + 16);
  v15[1] = v6;
  v7 = *(a3 + 64);
  v15[2] = *(a3 + 48);
  v15[3] = v7;
  v8 = type metadata accessor for RequestMetrics.State.RopesRequestState(0, v15);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = *(a3 + 84);
    return (*(v10 + 48))(a1 + v11, a2, v9);
  }

  v12 = sub_100011AC0(&unk_100230110, &unk_1001D6520);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = *(a3 + 92);
    return (*(v10 + 48))(a1 + v11, a2, v9);
  }

  v14 = *(a1 + *(a3 + 144));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10012336C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 32);
  v15[0] = *(a4 + 16);
  v15[1] = v8;
  v9 = *(a4 + 64);
  v15[2] = *(a4 + 48);
  v15[3] = v9;
  v10 = type metadata accessor for RequestMetrics.State.RopesRequestState(0, v15);
  if (*(*(v10 - 8) + 84) == a3)
  {
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = *(a4 + 84);
    return (*(v12 + 56))(a1 + v13, a2, a2, v11);
  }

  result = sub_100011AC0(&unk_100230110, &unk_1001D6520);
  if (*(*(result - 8) + 84) == a3)
  {
    v11 = result;
    v12 = *(result - 8);
    v13 = *(a4 + 92);
    return (*(v12 + 56))(a1 + v13, a2, a2, v11);
  }

  *(a1 + *(a4 + 144)) = (a2 - 1);
  return result;
}

void sub_1001234B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1001235EC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1001D1F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100123638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100123674(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10012368C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001236B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1001236F8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100123748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100123784(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return ((*a1 >> 2) & 0xFFFFFFFE | *a1 & 1) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001237A4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1001237CC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1001237F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100123840(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001238A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1001238BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_1001238EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012390C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_100123940(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012395C(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 24) = 1;
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_100123980(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001239D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_100123A1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100123A38(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = a2 + 1;
  }

  return result;
}

uint64_t sub_100123A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100123A9C(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_100123AC0(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_100123ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100123B18(uint64_t a1)
{
  v1 = *(a1 + 24) >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_100123B34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 32))
  {
    return (*a1 + 123);
  }

  v3 = (((*(a1 + 24) >> 57) >> 4) | (8 * ((*(a1 + 24) >> 57) & 8 | *(a1 + 24) & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100123B90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 123;
    *(result + 8) = 0;
    if (a3 >= 0x7B)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_100123BF8(void *result, uint64_t a2)
{
  if (a2 < 5)
  {
    result[3] = result[3] & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 5);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0xA000000000000000;
  }

  return result;
}

uint64_t sub_100123C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100123C60(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_100123C7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100123CC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100123D08(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_100123D20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100123D68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_100123DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100123DEC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100123E04(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

__n128 sub_100123E20(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100123E3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100123E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_100123EC8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

void sub_100123EFC(uint64_t a1)
{
  sub_100123F7C();
  if (v1 <= 0x3F)
  {
    sub_100123FC4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100123F7C()
{
  if (!qword_10022E2E8)
  {
    v0 = sub_1001D0F30();
    if (!v1)
    {
      atomic_store(v0, &qword_10022E2E8);
    }
  }
}

void sub_100123FC4(uint64_t a1)
{
  if (!qword_10022E2F0)
  {
    sub_1001D0200();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10022E2F0);
    }
  }
}

uint64_t sub_100124054(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_1001D0E00();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1001D0DC0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1001D0DE0();
  sub_1001D0E10();
  v21 = sub_1001D1E80();
  result = sub_1001D1ED0();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_1001D0E40();

      if ((*(v7 + 88))(v9, v6) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1001D0DB0();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v21, v19, v16, v17, v18, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1001242F0()
{
  v1[2] = v0;
  v1[3] = sub_100011AC0(&qword_10022E330, &unk_1001DEFD8);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = *(type metadata accessor for ValidatedAttestationOrAttestation(0) - 8);
  v1[7] = swift_task_alloc();
  sub_100011AC0(&qword_1002292B0, &unk_1001D6420);
  v1[8] = swift_task_alloc();
  v2 = sub_1001D08A0();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_100124488, 0, 0);
}

uint64_t sub_100124488()
{
  v26 = v0;
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 296));
  *(v0 + 96) = v1;
  if (!v1)
  {

    v11 = sub_1001D0E50();
    v12 = sub_1001D1DE0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      sub_1001CFDA0();
      sub_100128614(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = sub_1001D23A0();
      v25 = v15;
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      sub_1001D18B0(v29);
      v16 = sub_1000954E0(v24, v25, &v23);

      *(v13 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s unable to access attestation store", v13, 0xCu);
      sub_100011CF0(v14);
    }

    goto LABEL_9;
  }

  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);

  sub_100096A60(v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_100011F00(*(v0 + 64), &qword_1002292B0, &unk_1001D6420);

    v5 = sub_1001D0E50();
    v6 = sub_1001D1DE0();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23 = v8;
      *v7 = 136315138;
      sub_1001CFDA0();
      sub_100128614(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = sub_1001D23A0();
      v25 = v9;
      v28._countAndFlagsBits = 58;
      v28._object = 0xE100000000000000;
      sub_1001D18B0(v28);
      v10 = sub_1000954E0(v24, v25, &v23);

      *(v7 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s invalid set of parameters for prefetching", v7, 0xCu);
      sub_100011CF0(v8);
    }

LABEL_9:

    v17 = *(v0 + 8);

    return v17(_swiftEmptyArrayStorage);
  }

  v19 = *(v0 + 16);
  (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
  v20 = v19 + qword_100243500;
  *(v0 + 104) = *(v19 + qword_100243500);
  *(v0 + 128) = *(v20 + 72);
  *(v0 + 112) = qword_1002434F8;
  type metadata accessor for AttestationStore();
  sub_100128614(&qword_1002287B8, type metadata accessor for AttestationStore, &unk_1001D4F10);
  v22 = sub_1001D1A70();

  return _swift_task_switch(sub_100124990, v22, v21);
}

uint64_t sub_100124990()
{
  *(v0 + 120) = sub_10002ACBC(*(v0 + 128), *(v0 + 88), *(v0 + 16) + *(v0 + 112), *(v0 + 104));

  return _swift_task_switch(sub_100124A0C, 0, 0);
}

uint64_t sub_100124A0C()
{
  v66 = v0;
  v1 = v0;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 120);
  if (v4)
  {
    v61 = *(v0 + 128);
    v6 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v63 = v8;
    *v7 = 136315906;
    sub_1001CFDA0();
    sub_100128614(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v64 = sub_1001D23A0();
    v65 = v9;
    v68._countAndFlagsBits = 58;
    v68._object = 0xE100000000000000;
    sub_1001D18B0(v68);
    v10 = sub_1000954E0(v64, v65, &v63);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2048;
    v11 = *(v5 + 16);

    *(v7 + 14) = v11;

    *(v7 + 22) = 2048;
    *(v7 + 24) = v6;
    v1 = v0;
    *(v7 + 32) = 1024;

    *(v7 + 34) = v61;

    _os_log_impl(&_mh_execute_header, v2, v3, "%s Total cached attestations from store: %ld maxCachedAttestations: %ld proxy: %{BOOL}d", v7, 0x26u);
    sub_100011CF0(v8);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v12 = v1[15];
  v63 = 0;
  v13 = *(v12 + 16);
  if (v13)
  {
    v57 = v1[4];
    v58 = v1[6];
    v56 = v1[3];
    v64 = _swiftEmptyArrayStorage;
    sub_100151730(0, v13, 0);
    v14 = v64;
    v15 = v12 + 64;
    result = sub_1001D1FB0();
    v17 = result;
    v18 = 0;
    v52 = *(v12 + 36);
    v19 = *(v12 + 32);
    v50 = v12 + 72;
    v51 = v13;
    v53 = v12 + 64;
    v54 = v12;
    v55 = v1;
    while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << v19)
    {
      v22 = v17 >> 6;
      if ((*(v15 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_27;
      }

      v23 = *(v56 + 48);
      v60 = v1[7];
      v62 = v14;
      v25 = v1[4];
      v24 = v1[5];
      v59 = v18;
      v26 = *(v12 + 56);
      v27 = (*(v12 + 48) + 16 * v17);
      v29 = *v27;
      v28 = v27[1];
      v30 = type metadata accessor for ValidatedAttestation(0);
      sub_10012854C(v26 + *(*(v30 - 8) + 72) * v17, v24 + v23, type metadata accessor for ValidatedAttestation);
      *v25 = v29;
      *(v57 + 8) = v28;
      v31 = *(v56 + 48);
      sub_10012865C(v24 + v23, v25 + v31, type metadata accessor for ValidatedAttestation);

      v32 = v25 + v31;
      v14 = v62;
      sub_1001291E8(v29, v28, v32, &v63, v60);
      sub_100011F00(v25, &qword_10022E330, &unk_1001DEFD8);
      v64 = v62;
      v34 = v62[2];
      v33 = v62[3];
      if (v34 >= v33 >> 1)
      {
        sub_100151730((v33 > 1), v34 + 1, 1);
        v14 = v64;
      }

      v35 = v55[7];
      v14[2] = v34 + 1;
      result = sub_10012865C(v35, v14 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v34, type metadata accessor for ValidatedAttestationOrAttestation);
      v12 = v54;
      v19 = *(v54 + 32);
      v20 = 1 << v19;
      if (v17 >= 1 << v19)
      {
        goto LABEL_28;
      }

      v1 = v55;
      v15 = v53;
      v36 = *(v53 + 8 * v22);
      if ((v36 & (1 << v17)) == 0)
      {
        goto LABEL_29;
      }

      if (v52 != *(v54 + 36))
      {
        goto LABEL_30;
      }

      v37 = v36 & (-2 << (v17 & 0x3F));
      if (v37)
      {
        v20 = __clz(__rbit64(v37)) | v17 & 0x7FFFFFFFFFFFFFC0;
        v21 = v51;
      }

      else
      {
        v38 = v22 << 6;
        v21 = v51;
        v39 = (v50 + 8 * v22);
        v40 = v22 + 1;
        while (v40 < (v20 + 63) >> 6)
        {
          v42 = *v39++;
          v41 = v42;
          v38 += 64;
          ++v40;
          if (v42)
          {
            v20 = __clz(__rbit64(v41)) + v38;
            break;
          }
        }
      }

      v17 = v20;
      v18 = v59 + 1;
      if (v59 + 1 == v21)
      {
        v43 = v55[11];
        v45 = v55[9];
        v44 = v55[10];

        (*(v44 + 8))(v43, v45);

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v46 = v1[11];
    v48 = v1[9];
    v47 = v1[10];

    (*(v47 + 8))(v46, v48);

    v14 = _swiftEmptyArrayStorage;
LABEL_23:

    v49 = v1[1];

    return v49(v14);
  }

  return result;
}

uint64_t sub_100124FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for ValidatedAttestation(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10012506C, 0, 0);
}

uint64_t sub_10012506C()
{
  v1 = *(v0[3] + qword_100243500 + 72);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100125154;
  v3 = v0[4];
  v4 = v0[2];

  return sub_100076C40(v4, v3, v1);
}

uint64_t sub_100125154()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1001255C0;
  }

  else
  {
    v2 = sub_100125268;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100125268()
{
  v24 = v0;
  v1 = v0[6];
  v2 = v0[2];
  sub_10012854C(v2, v0[7], type metadata accessor for ValidatedAttestation);
  sub_10012854C(v2, v1, type metadata accessor for ValidatedAttestation);

  v3 = sub_1001D0E50();
  v4 = sub_1001D1E00();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  v7 = v0[7];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v8 = 136315650;
    sub_1001CFDA0();
    sub_100128614(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = sub_1001D23A0();
    v23 = v9;
    v26._countAndFlagsBits = 58;
    v26._object = 0xE100000000000000;
    sub_1001D18B0(v26);
    v10 = sub_1000954E0(v22, v23, &v21);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v11 = sub_1001CFB50();
    v13 = v12;
    sub_1001285B4(v7, type metadata accessor for ValidatedAttestation);
    v14 = sub_1000954E0(v11, v13, &v21);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2080;
    sub_1001CFD60();
    sub_100128614(&qword_100227A40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v15 = sub_1001D23A0();
    v17 = v16;
    sub_1001285B4(v6, type metadata accessor for ValidatedAttestation);
    v18 = sub_1000954E0(v15, v17, &v21);

    *(v8 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s attestation success with package key %s, validationExpiration: %s", v8, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1001285B4(v6, type metadata accessor for ValidatedAttestation);
    sub_1001285B4(v7, type metadata accessor for ValidatedAttestation);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1001255C0()
{
  v14 = v0;

  swift_errorRetain();
  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v3 = 136315394;
    sub_1001CFDA0();
    sub_100128614(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = sub_1001D23A0();
    v13 = v6;
    v16._countAndFlagsBits = 58;
    v16._object = 0xE100000000000000;
    sub_1001D18B0(v16);
    v7 = sub_1000954E0(v12, v13, &v11);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v8;
    *v4 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s attestation failure with error %@", v3, 0x16u);
    sub_100011F00(v4, &unk_1002301D0, &qword_1001D4F50);

    sub_100011CF0(v5);
  }

  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100125828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = type metadata accessor for ValidatedProxiedAttestation(0);
  v11[5] = swift_task_alloc();
  v11[6] = swift_task_alloc();
  v13 = swift_task_alloc();
  v11[7] = v13;
  *v13 = v11;
  v13[1] = sub_10012596C;

  return sub_10011A7F8(a1, a3, a4, a5, a6);
}

uint64_t sub_10012596C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100125DD4;
  }

  else
  {
    v2 = sub_100125A80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100125A80()
{
  v24 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_10012854C(v2, v0[6], type metadata accessor for ValidatedProxiedAttestation);
  sub_10012854C(v2, v1, type metadata accessor for ValidatedProxiedAttestation);

  v3 = sub_1001D0E50();
  v4 = sub_1001D1E00();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[5];
  v7 = v0[6];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v8 = 136315650;
    sub_1001CFDA0();
    sub_100128614(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = sub_1001D23A0();
    v23 = v9;
    v26._countAndFlagsBits = 58;
    v26._object = 0xE100000000000000;
    sub_1001D18B0(v26);
    v10 = sub_1000954E0(v22, v23, &v21);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v11 = sub_1001CFB50();
    v13 = v12;
    sub_1001285B4(v7, type metadata accessor for ValidatedProxiedAttestation);
    v14 = sub_1000954E0(v11, v13, &v21);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2080;
    sub_1001CFD60();
    sub_100128614(&qword_100227A40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v15 = sub_1001D23A0();
    v17 = v16;
    sub_1001285B4(v6, type metadata accessor for ValidatedProxiedAttestation);
    v18 = sub_1000954E0(v15, v17, &v21);

    *(v8 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s proxied attestation success with package key %s, validationExpiration: %s", v8, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1001285B4(v6, type metadata accessor for ValidatedProxiedAttestation);
    sub_1001285B4(v7, type metadata accessor for ValidatedProxiedAttestation);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_100125DD4()
{
  v14 = v0;

  swift_errorRetain();
  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v3 = 136315394;
    sub_1001CFDA0();
    sub_100128614(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = sub_1001D23A0();
    v13 = v6;
    v16._countAndFlagsBits = 58;
    v16._object = 0xE100000000000000;
    sub_1001D18B0(v16);
    v7 = sub_1000954E0(v12, v13, &v11);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v8;
    *v4 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s proxied attestation failure with error %@", v3, 0x16u);
    sub_100011F00(v4, &unk_1002301D0, &qword_1001D4F50);

    sub_100011CF0(v5);
  }

  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

unint64_t sub_10012603C(uint64_t a1)
{
  v65 = sub_1001D1310();
  v60 = *(v65 - 8);
  v2 = __chkstk_darwin(v65);
  v59 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v64 = &v58 - v4;
  v70 = sub_1001D0950();
  v63 = *(v70 - 8);
  v5 = __chkstk_darwin(v70);
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v67 = &v58 - v7;
  v74 = sub_1001D0960();
  v69 = *(v74 - 8);
  v8 = __chkstk_darwin(v74);
  v68 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v66 = &v58 - v11;
  __chkstk_darwin(v10);
  v73 = &v58 - v12;
  v77 = sub_1001D0050();
  v72 = *(v77 - 8);
  v13 = __chkstk_darwin(v77);
  v71 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v76 = &v58 - v15;
  v79 = sub_1001D0060();
  v75 = *(v79 - 8);
  v16 = __chkstk_darwin(v79);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v58 - v19;
  v21 = sub_1001CFFC0();
  v78 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v58 - v25;
  v27 = sub_1001D0200();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v58 - v32;
  v81 = a1;
  v61 = a1;
  swift_errorRetain();
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  if (swift_dynamicCast())
  {
    (*(v28 + 32))(v31, v33, v27);
    v34 = sub_1001D0190();
    (*(v28 + 8))(v31, v27);
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v34 = sub_1001281A0(v80, SBYTE1(v80));

    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v35 = v78;
    (*(v78 + 32))(v24, v26, v21);
    v34 = sub_10012698C(v24);
    (*(v35 + 8))(v24, v21);
    goto LABEL_12;
  }

  v36 = v79;
  if (swift_dynamicCast())
  {
    v37 = v75;
    (*(v75 + 32))(v18, v20, v36);
    v34 = sub_100126DF4(v18);
    (*(v37 + 8))(v18, v36);
    goto LABEL_12;
  }

  v38 = v76;
  v39 = v77;
  if (swift_dynamicCast())
  {
    v41 = v71;
    v40 = v72;
    (*(v72 + 32))(v71, v38, v39);
    v42 = sub_1001272F0(v41);
LABEL_11:
    v34 = v42;
    (*(v40 + 8))(v41, v39);
    goto LABEL_12;
  }

  v44 = v73;
  v45 = v74;
  if (swift_dynamicCast())
  {
    v34 = 0xD000000000000024;
    v46 = v69;
    v47 = v66;
    (*(v69 + 32))(v66, v44, v45);
    v48 = v68;
    (*(v46 + 16))(v68, v47, v45);
    v49 = (*(v46 + 88))(v48, v45);
    v50 = *(v46 + 8);
    if (v49 == enum case for BinaryEncodingError.anyTranscodeFailure(_:))
    {
      v50(v47, v45);
      v34 = 0xD000000000000027;
    }

    else
    {
      v52 = v49;
      v53 = enum case for BinaryEncodingError.missingRequiredFields(_:);
      v50(v47, v45);
      if (v52 == v53)
      {
        v34 = 0xD000000000000029;
      }

      else
      {
        v50(v48, v45);
      }
    }
  }

  else
  {
    v51 = v67;
    v39 = v70;
    if (swift_dynamicCast())
    {
      v41 = v62;
      v40 = v63;
      (*(v63 + 32))(v62, v51, v39);
      v42 = sub_1001275A8(v41);
      goto LABEL_11;
    }

    v54 = v64;
    v39 = v65;
    if (swift_dynamicCast())
    {
      v40 = v60;
      v41 = v59;
      (*(v60 + 32))(v59, v54, v39);
      v42 = sub_1001277D8(v41);
      goto LABEL_11;
    }

    v55 = v61;
    v80 = v61;
    swift_errorRetain();
    if (sub_1001D2430())
    {
    }

    else
    {
      swift_allocError();
      *v56 = v55;
    }

    v57 = sub_1001CFA10();

    v34 = sub_100127B28(v57);
  }

LABEL_12:

  return v34;
}

unint64_t sub_10012698C(uint64_t a1)
{
  v2 = sub_1001CFFC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for CloudAttestationError.unexpected(_:))
  {
    (*(v3 + 96))(v5, v2);
    v8 = *v5;
    v7 = v5[1];
    v9 = v8 == 0xD000000000000017 && 0x80000001001E5DD0 == v7;
    if (v9 || (sub_1001D2470() & 1) != 0)
    {

      return 0xD000000000000035;
    }

    else if (v8 == 0x6C706D6920746F4ELL && v7 == 0xEF6465746E656D65)
    {

      return 0xD00000000000002FLL;
    }

    else
    {
      v12 = sub_1001D2470();

      if (v12)
      {
        return 0xD00000000000002FLL;
      }

      else
      {
        return 0xD000000000000020;
      }
    }
  }

  else if (v6 == enum case for CloudAttestationError.attestError(_:))
  {
    (*(v3 + 8))(v5, v2);
    return 0xD000000000000021;
  }

  else if (v6 == enum case for CloudAttestationError.validateError(_:))
  {
    (*(v3 + 8))(v5, v2);
    return 0xD000000000000023;
  }

  else if (v6 == enum case for CloudAttestationError.expired(_:))
  {
    (*(v3 + 96))(v5, v2);
    v13 = sub_1001CFD60();
    (*(*(v13 - 8) + 8))(v5, v13);
    return 0xD00000000000001DLL;
  }

  else if (v6 == enum case for CloudAttestationError.missingSealedHash(_:))
  {
    (*(v3 + 96))(v5, v2);
    v14 = sub_1001CFDA0();
    (*(*(v14 - 8) + 8))(v5, v14);
    return 0xD000000000000027;
  }

  else if (v6 == enum case for CloudAttestationError.invalidNonce(_:))
  {
    return 0xD000000000000022;
  }

  else
  {
    v15 = v6;
    result = 0xD00000000000002BLL;
    if (v15 != enum case for CloudAttestationError.emptyCertificateChain(_:) && v15 != enum case for CloudAttestationError.malformedSecureConfig(_:))
    {
      if (v15 == enum case for CloudAttestationError.missingAttestingKey(_:))
      {
        return 0xD000000000000029;
      }

      else
      {
        result = 0xD000000000000026;
        if (v15 != enum case for CloudAttestationError.untrustedAppData(_:))
        {
          (*(v3 + 8))(v5, v2);
          return 0xD000000000000026;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100126DF4(uint64_t a1)
{
  v2 = 0xD000000000000022;
  v3 = sub_1001D0060();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for TransparencyLogError.httpError(_:))
  {
    v8 = *(v4 + 96);
    v4 += 96;
    v7 = v8(v6, v3);
    v9 = *v6;
    v22 = 0xD00000000000001FLL;
    v23 = 0x80000001001E60D0;
    if ((v9 & 0x8000000000000000) == 0)
    {
      v20 = v9;
LABEL_7:
      v12._countAndFlagsBits = sub_1001D23A0();
      object = v12._object;
LABEL_18:
      v12._object = object;
      sub_1001D18B0(v12);

      return v22;
    }

    v20 = 78;
    v21 = 0xE100000000000000;
    v14 = __OFSUB__(0, v9);
    v15 = -v9;
    if (!v14)
    {
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (v7 != enum case for TransparencyLogError.unrecognized(_:))
  {
    if (v7 == enum case for TransparencyLogError.unknown(_:))
    {
      (*(v4 + 8))(v6, v3);
      return 0xD00000000000001CLL;
    }

LABEL_14:
    if (v7 == enum case for TransparencyLogError.clientError(_:))
    {
      (*(v4 + 8))(v6, v3);
      return 0xD000000000000020;
    }

    if (v7 == enum case for TransparencyLogError.pendingExpiration(_:))
    {
      (*(v4 + 96))(v6, v3);
      v16 = *(sub_100011AC0(&qword_10022E320, &qword_1001DEF58) + 48);
      v17 = sub_1001CFD60();
      v18 = *(*(v17 - 8) + 8);
      v18(v6 + v16, v17);
      v18(v6, v17);
      return 0xD000000000000026;
    }

    if (v7 == enum case for TransparencyLogError.internalError(_:))
    {
      return v2;
    }

    if (v7 == enum case for TransparencyLogError.mutationPending(_:))
    {
      return 0xD000000000000024;
    }

    if (v7 == enum case for TransparencyLogError.invalidRequest(_:))
    {
      return 0xD000000000000023;
    }

    if (v7 == enum case for TransparencyLogError.notFound(_:))
    {
      return 0xD00000000000001DLL;
    }

    if (v7 == enum case for TransparencyLogError.invalidProof(_:))
    {
      return 0xD000000000000021;
    }

    if (v7 == enum case for TransparencyLogError.unknownStatus(_:))
    {
      return v2;
    }

    if (v7 == enum case for TransparencyLogError.insertFailed(_:))
    {
      return 0xD000000000000021;
    }

    if (v7 != enum case for TransparencyLogError.expired(_:))
    {
      (*(v4 + 8))(v6, v3);
      return 0xD000000000000025;
    }

    return 0xD00000000000001CLL;
  }

  (*(v4 + 96))(v6, v3);
  v10 = *v6;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1001D2030(18);

  v22 = 0xD000000000000022;
  v23 = 0x80000001001E5F90;
  if ((v10 & 0x8000000000000000) == 0)
  {
    v20 = v10;
    goto LABEL_7;
  }

  v20 = 78;
  v21 = 0xE100000000000000;
  v15 = -v10;
  if (!__OFSUB__(0, v10))
  {
LABEL_17:
    v19[1] = v15;
    v24._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v24);

    v12._countAndFlagsBits = v20;
    object = v21;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

unint64_t sub_1001272F0(uint64_t a1)
{
  v2 = 0xD00000000000001FLL;
  v3 = sub_1001D0050();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for TransparencyPolicy.Error.malformedRelease(_:))
  {
    (*(v4 + 96))(v6, v3);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_1001D2030(22);

    v15 = 0xD000000000000029;
    v16 = 0x80000001001E61B0;
    v8 = sub_1001CFA10();
    v9 = sub_100127B28(v8);
    v11 = v10;

LABEL_5:
    v17._countAndFlagsBits = v9;
    v17._object = v11;
    sub_1001D18B0(v17);

    return v15;
  }

  if (v7 == enum case for TransparencyPolicy.Error.unknown(_:))
  {
    (*(v4 + 96))(v6, v3);
    v15 = 0xD000000000000020;
    v16 = 0x80000001001E6120;
    v12 = sub_1001CFA10();
    v9 = sub_100127B28(v12);
    v11 = v13;

    goto LABEL_5;
  }

  if (v7 == enum case for TransparencyPolicy.Error.missingProofs(_:))
  {
    return 0xD000000000000025;
  }

  if (v7 == enum case for TransparencyPolicy.Error.notIncluded(_:))
  {
    return 0xD000000000000023;
  }

  if (v7 != enum case for TransparencyPolicy.Error.expired(_:))
  {
    (*(v4 + 8))(v6, v3);
    return 0xD000000000000028;
  }

  return v2;
}

unint64_t sub_1001275A8(uint64_t a1)
{
  v2 = 0xD000000000000025;
  v3 = sub_1001D0950();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for BinaryDecodingError.trailingGarbage(_:))
  {
    return 0xD000000000000023;
  }

  if (v7 == enum case for BinaryDecodingError.truncated(_:))
  {
    return 0xD00000000000001DLL;
  }

  if (v7 == enum case for BinaryDecodingError.invalidUTF8(_:))
  {
    return 0xD00000000000001FLL;
  }

  if (v7 != enum case for BinaryDecodingError.malformedProtobuf(_:))
  {
    if (v7 == enum case for BinaryDecodingError.missingRequiredFields(_:))
    {
      return 0xD000000000000029;
    }

    else if (v7 == enum case for BinaryDecodingError.internalExtensionError(_:))
    {
      return 0xD00000000000002ALL;
    }

    else if (v7 != enum case for BinaryDecodingError.messageDepthLimit(_:))
    {
      (*(v4 + 8))(v6, v3);
      return 0xD000000000000024;
    }
  }

  return v2;
}

uint64_t sub_1001277D8(uint64_t a1)
{
  v2 = sub_1001D1310();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for NWError.posix(_:))
  {
    (*(v3 + 96))(v5, v2);
    strcpy(v17, "NWError_posix_");
    HIBYTE(v17[1]) = -18;
    result = sub_1001D0EA0();
    if ((result & 0x80000000) == 0)
    {
      LODWORD(v15) = result;
LABEL_19:
      v12._countAndFlagsBits = sub_1001D23A0();
      object = v12._object;
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (v6 == enum case for NWError.dns(_:))
  {
    v8 = *(v3 + 96);
    v3 += 96;
    v6 = v8(v5, v2);
    v9 = *v5;
    strcpy(v17, "NWError_dns_");
    BYTE5(v17[1]) = 0;
    HIWORD(v17[1]) = -5120;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = 78;
    v16 = 0xE100000000000000;
    v10 = __OFSUB__(0, v9);
    v11 = -v9;
    if (!v10)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  if (v6 != enum case for NWError.tls(_:))
  {
    if (v6 != enum case for NWError.wifiAware(_:))
    {
      (*(v3 + 8))(v5, v2);
      return 0xD000000000000018;
    }

    result = (*(v3 + 96))(v5, v2);
    v9 = *v5;
    v17[0] = 0xD000000000000012;
    v17[1] = 0x80000001001E6380;
    if (v9 < 0)
    {
      v15 = 78;
      v16 = 0xE100000000000000;
      v10 = __OFSUB__(0, v9);
      v11 = -v9;
      if (!v10)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_18:
    LODWORD(v15) = v9;
    goto LABEL_19;
  }

  result = (*(v3 + 96))(v5, v2);
  v9 = *v5;
  strcpy(v17, "NWError_tls_");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  v15 = 78;
  v16 = 0xE100000000000000;
  v10 = __OFSUB__(0, v9);
  v11 = -v9;
  if (!v10)
  {
    goto LABEL_15;
  }

  __break(1u);
LABEL_14:
  v15 = 78;
  v16 = 0xE100000000000000;
  v11 = -result;
  if (__OFSUB__(0, result))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14[3] = v11;
  v18._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v18);

  v12._countAndFlagsBits = v15;
  object = v16;
LABEL_20:
  v12._object = object;
  sub_1001D18B0(v12);

  return v17[0];
}

unint64_t sub_100127B28(void *a1)
{
  v2 = [a1 domain];
  sub_1001D17D0();

  v6._countAndFlagsBits = sub_1001D1910();
  sub_1001D18B0(v6);

  v7._countAndFlagsBits = 95;
  v7._object = 0xE100000000000000;
  sub_1001D18B0(v7);
  result = [a1 code];
  if ((result & 0x8000000000000000) == 0)
  {
    v4._countAndFlagsBits = sub_1001D23A0();
    object = v4._object;
LABEL_5:
    v4._object = object;
    sub_1001D18B0(v4);

    return 0x5F726F727245534ELL;
  }

  if (!__OFSUB__(0, result))
  {
    v8._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v8);

    v4._countAndFlagsBits = 78;
    object = 0xE100000000000000;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_100127C7C()
{
  result = qword_10022E318;
  if (!qword_10022E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022E318);
  }

  return result;
}

uint64_t sub_100127CD4()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100127D1C(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_100127D2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 32) = a2;
  *(v6 + 40) = a4;
  *(v6 + 112) = a3;
  *(v6 + 24) = a1;
  v7 = sub_1001D0DC0();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100127E08, 0, 0);
}

uint64_t sub_100127E08(uint64_t a1)
{
  v2 = sub_1001D0DE0();
  v3 = sub_1001D1E90();
  result = sub_1001D1ED0();
  if (result)
  {
    v5 = *(v1 + 24);
    if ((*(v1 + 112) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = sub_1001D0DB0();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v7, v5, "", v6, 2u);

        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  (*(*(v1 + 72) + 16))(*(v1 + 80), *(v1 + 40), *(v1 + 64));
  sub_1001D0E30();
  swift_allocObject();
  *(v1 + 88) = sub_1001D0E20();

  v8 = swift_task_alloc();
  *(v1 + 96) = v8;
  *v8 = v1;
  v8[1] = sub_100127FD8;

  return sub_1001242F0();
}

uint64_t sub_100127FD8(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_1001280D8, 0, 0);
}

uint64_t sub_1001280D8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 112);

  sub_100124054(v3, v5, v4, v6, v2);

  v7 = *(v0 + 8);

  return v7(v1, 0);
}

unint64_t sub_1001281A0(uint64_t a1, char a2)
{
  v2 = a1;
  if (a2 == 23)
  {
    sub_1001D2030(22);

    v4 = 0xD000000000000014;
    v5._countAndFlagsBits = sub_10012DB48(v2);
    sub_1001D18B0(v5);
  }

  else
  {
    v4 = 0;
    sub_1001D2030(25);
    v6._object = 0x80000001001E5BE0;
    v6._countAndFlagsBits = 0xD000000000000014;
    sub_1001D18B0(v6);
    v7._countAndFlagsBits = sub_10012DB48(v2);
    sub_1001D18B0(v7);

    v8._countAndFlagsBits = 95;
    v8._object = 0xE100000000000000;
    sub_1001D18B0(v8);
    sub_1001D2120();
  }

  return v4;
}

uint64_t sub_1001282D4()
{
  v1 = sub_1001D20F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1001D20D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100128424()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10012845C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000130E0;

  return sub_100159A10(v2, v3, v4);
}

uint64_t sub_100128504()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10012853C(unint64_t result)
{
  if (!(result >> 62))
  {
  }

  return result;
}

uint64_t sub_10012854C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001285B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100128614(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10012865C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001286C4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
    sub_100011E48(a1, a2);
    sub_100011E48(a3, a4);

    return sub_100011E48(a5, a6);
  }
}

uint64_t sub_100128734(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  return v4;
}

uint64_t sub_100128748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100128790(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001287A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 33))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100128800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
    }
  }

  return result;
}

uint64_t sub_10012889C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001288E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 33))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 8) >> 50) >> 13) | (2 * ((*(a1 + 8) >> 50) & 0x1C00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10012895C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
    }
  }

  return result;
}

void *sub_1001289E8(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

uint64_t sub_100128A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100128A54(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100128AB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_100128B00(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_100128B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100128B74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100128BC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_100128C18(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_100128C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100128C9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 16))
  {
    return (*a1 + 61);
  }

  v3 = (((*a1 >> 58) >> 4) | (4 * ((*a1 >> 58) & 0xC | (*a1 >> 1) & 3))) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100128CF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *result = a2 - 61;
    *(result + 8) = 0;
    if (a3 >= 0x3D)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xF | (16 * (-a2 & 0x3F));
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

void *sub_100128D4C(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF9 | (a2 << 62);
  }

  else
  {
    *result = (4 * (a2 - 3)) & 0x3FFFFFFF8 | (a2 - 3) & 1 | 0xC000000000000000;
    result[1] = 0;
  }

  return result;
}

void sub_100128DCC(void *a1)
{
  sub_1001CFDA0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TrustedRequestConfiguration(319);
    if (v2 <= 0x3F)
    {
      sub_1001D08A0();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              sub_1001D1F00();
              if (v7 <= 0x3F)
              {
                swift_checkMetadataState();
                if (v8 <= 0x3F)
                {
                  swift_checkMetadataState();
                  if (v9 <= 0x3F)
                  {
                    swift_checkMetadataState();
                    if (v10 <= 0x3F)
                    {
                      swift_checkMetadataState();
                      if (v11 <= 0x3F)
                      {
                        swift_checkMetadataState();
                        if (v12 <= 0x3F)
                        {
                          swift_checkMetadataState();
                          if (v13 <= 0x3F)
                          {
                            sub_100012FF8(319);
                            if (v14 <= 0x3F)
                            {
                              sub_1001D0E60();
                              if (v15 <= 0x3F)
                              {
                                swift_initClassMetadata2();
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1001291E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for ValidatedAttestation(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003C450(a3, v13);

  v14 = sub_1001D0E50();
  v15 = sub_1001D1E00();

  if (os_log_type_enabled(v14, v15))
  {
    v27 = a3;
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29[0] = v26;
    *v16 = 136315906;
    sub_1001CFDA0();
    v28 = a1;
    sub_10012AA68(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v30 = sub_1001D23A0();
    v31 = v17;
    v32._countAndFlagsBits = 58;
    v32._object = 0xE100000000000000;
    sub_1001D18B0(v32);
    v18 = sub_1000954E0(v30, v31, v29);

    *(v16 + 4) = v18;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1000954E0(v28, a2, v29);
    *(v16 + 22) = 2048;
    result = swift_beginAccess();
    if (__OFADD__(*a4, 10))
    {
      goto LABEL_16;
    }

    *(v16 + 24) = *a4 + 10;
    *(v16 + 32) = 2080;
    if (v13[96])
    {
      v20 = 0x79786F7270;
    }

    else
    {
      v20 = 0x746365726964;
    }

    if (v13[96])
    {
      v21 = 0xE500000000000000;
    }

    else
    {
      v21 = 0xE600000000000000;
    }

    sub_10012AAB0(v13, type metadata accessor for ValidatedAttestation);
    v22 = sub_1000954E0(v20, v21, v29);

    *(v16 + 34) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s creating verified node with identifier: %s, ohttpcontext: %ld, kind: %s", v16, 0x2Au);
    swift_arrayDestroy();

    a3 = v27;
  }

  else
  {

    sub_10012AAB0(v13, type metadata accessor for ValidatedAttestation);
  }

  v23 = *(sub_100011AC0(qword_10022E650, &unk_1001DF500) + 48);
  sub_10003C450(a3, a6);
  result = swift_beginAccess();
  v24 = *a4;
  v25 = *a4 + 10;
  if (__OFADD__(*a4, 10))
  {
    __break(1u);
  }

  else if ((v25 & 0x8000000000000000) == 0)
  {
    *(a6 + v23) = v25;
    type metadata accessor for ValidatedAttestationOrAttestation(0);
    swift_storeEnumTagMultiPayload();
    result = swift_beginAccess();
    *a4 = v24 + 1;
    return result;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_100129580(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  sub_100011F00(a1, &qword_100229920, &qword_1001D7190);
  *a1 = a2;
  a1[1] = a3;
  v6 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  return sub_100012038(a2, a3);
}

uint64_t sub_100129638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v81 = a3;
  v88 = sub_1001D1380();
  v75 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100011AC0(&unk_100230110, &unk_1001D6520);
  __chkstk_darwin(v5 - 8);
  v77 = v68 - v6;
  v87 = sub_1001D13D0();
  v74 = *(v87 - 8);
  v7 = __chkstk_darwin(v87);
  v72 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v85 = v68 - v9;
  v89 = sub_1001D0ED0();
  v10 = *(v89 - 8);
  v11 = __chkstk_darwin(v89);
  v73 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v68 - v13;
  v15 = sub_100011AC0(&qword_10022E648, &qword_1001DF4F8);
  v16 = __chkstk_darwin(v15);
  v80 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v68 - v18;
  v20 = sub_1001CFD60();
  __chkstk_darwin(v20 - 8);
  v21 = sub_1001D0FD0();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D0FE0();
  sub_1001D0FC0();
  v25 = v24;
  v26 = v81;
  v27 = v21;
  v28 = v89;
  (*(v22 + 8))(v25, v27);
  sub_1001D0660();
  sub_1001D0650();
  v78 = a1;
  sub_1001D0F90();
  v29 = *(v10 + 16);
  v68[1] = v10 + 16;
  v68[0] = v29;
  v29(v19, v14, v28);
  v69 = v15;
  v30 = *(v15 + 36);
  v31 = sub_10012AA68(&qword_100229338, &type metadata accessor for HTTPFields, &protocol conformance descriptor for HTTPFields);
  sub_1001D1CF0();
  v76 = v10;
  v32 = *(v10 + 8);
  v71 = v10 + 8;
  v70 = v32;
  v32(v14, v28);
  sub_1001D1D10();
  if (*&v19[v30] != v90[0])
  {
    v83 = (v74 + 8);
    v84 = (v74 + 16);
    v82 = (v75 + 8);
    do
    {
      v33 = sub_1001D1D40();
      v34 = v85;
      v35 = v87;
      (*v84)(v85);
      v33(v90, 0);
      sub_1001D1D20();
      v36 = v26;
      v37 = sub_1001D13C0();
      v39 = v38;
      v40 = v86;
      sub_1001D13B0();
      (*v83)(v34, v35);
      v41 = sub_1001D1320();
      v43 = v42;
      (*v82)(v40, v88);
      v91._countAndFlagsBits = v37;
      v26 = v36;
      v91._object = v39;
      v93._countAndFlagsBits = v41;
      v93._object = v43;
      sub_1001D0670(v91, v93);
      v28 = v89;

      sub_1001D1D10();
    }

    while (*&v19[v30] != v90[0]);
  }

  v85 = v31;
  v44 = v86;
  sub_100011F00(v19, &qword_10022E648, &qword_1001DF4F8);
  sub_1001D12A0();
  sub_1001D1250();
  v45 = sub_1001D1070();

  if (!v45)
  {

    v47 = v77;
LABEL_10:
    v50 = sub_1001D0FF0();
    (*(*(v50 - 8) + 8))(v78, v50);
    (*(v76 + 56))(v47, 1, 1, v28);
    return sub_100011F00(v47, &unk_100230110, &unk_1001D6520);
  }

  sub_1001D1290();
  v46 = swift_dynamicCastClass();
  v47 = v77;
  if (!v46)
  {

    goto LABEL_10;
  }

  sub_1001D1280();

  v48 = v76;
  if ((*(v76 + 48))(v47, 1, v28) == 1)
  {
    v49 = sub_1001D0FF0();
    (*(*(v49 - 8) + 8))(v78, v49);

    return sub_100011F00(v47, &unk_100230110, &unk_1001D6520);
  }

  v52 = v73;
  (*(v48 + 32))(v73, v47, v28);
  v53 = v80;
  (v68[0])(v80, v52, v28);
  v54 = *(v69 + 36);
  sub_1001D1CF0();
  sub_1001D1D10();
  v55 = v72;
  if (*(v53 + v54) != v90[0])
  {
    v56 = v44;
    v84 = (v74 + 16);
    v57 = (v74 + 8);
    v58 = (v75 + 8);
    do
    {
      v59 = sub_1001D1D40();
      v60 = v87;
      (*v84)(v55);
      v59(v90, 0);
      sub_1001D1D20();
      v61 = sub_1001D13C0();
      v63 = v62;
      sub_1001D13B0();
      (*v57)(v55, v60);
      v64 = sub_1001D1320();
      v66 = v65;
      (*v58)(v56, v88);
      v92._countAndFlagsBits = v61;
      v92._object = v63;
      v94._countAndFlagsBits = v64;
      v94._object = v66;
      v53 = v80;
      sub_1001D0670(v92, v94);

      v28 = v89;

      sub_1001D1D10();
    }

    while (*(v53 + v54) != v90[0]);
  }

  v67 = sub_1001D0FF0();
  (*(*(v67 - 8) + 8))(v78, v67);
  sub_100011F00(v53, &qword_10022E648, &qword_1001DF4F8);
  return v70(v73, v28);
}

uint64_t sub_10012A010(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v2[2] = a1;
  v2[3] = v4;
  v2[4] = v3;
  sub_100089C38(v4, v3);

  return _swift_task_switch(sub_10012A084, 0, 0);
}

uint64_t sub_10012A0A4()
{
  type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_10012A16C;

  return sub_10013F73C(v1);
}

uint64_t sub_10012A16C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_10012A344;
  }

  else
  {
    v2 = sub_10012A280;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012A280()
{
  v1 = *(v0 + 16);
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_100012038(v2, v3);
  sub_100012038(v4, v5);
  sub_10012AAB0(v1, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);

  v6 = *(v0 + 8);

  return v6(v2, v3, v4, v5);
}

uint64_t sub_10012A344()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012A3A8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v2[2] = a1;
  v2[3] = v4;
  v2[4] = v3;
  sub_100089C38(v4, v3);

  return _swift_task_switch(sub_10012B040, 0, 0);
}

uint64_t sub_10012A41C()
{
  v1 = *v0;
  v2 = qword_1002434F0;
  v3 = sub_1001CFDA0();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + qword_1002434F8, v3);
  sub_10012AAB0(v0 + qword_100243500, type metadata accessor for TrustedRequestConfiguration);
  v5 = qword_100243508;
  v6 = sub_1001D08A0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 272));
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 280));
  (*(*(v1[12] - 8) + 8))(v0 + *(*v0 + 288));
  v7 = *(*v0 + 296);
  v8 = sub_1001D1F00();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  (*(*(v1[14] - 8) + 8))(v0 + *(*v0 + 304));
  (*(*(v1[15] - 8) + 8))(v0 + *(*v0 + 312));
  (*(*(v1[16] - 8) + 8))(v0 + *(*v0 + 320));
  (*(*(v1[17] - 8) + 8))(v0 + *(*v0 + 328));
  (*(*(v1[19] - 8) + 8))(v0 + *(*v0 + 336));

  (*(*(v1[18] - 8) + 8))(v0 + *(*v0 + 352));
  v9 = *(*v0 + 360);
  v10 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  v11 = *(*v0 + 392);
  v12 = sub_1001D0E60();
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  return v0;
}

uint64_t sub_10012A944()
{
  sub_10012A41C();

  return swift_deallocClassInstance();
}

unint64_t sub_10012A9C8()
{
  result = qword_10022E640;
  if (!qword_10022E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022E640);
  }

  return result;
}

uint64_t type metadata accessor for ValidatedAttestationOrAttestation(uint64_t a1)
{
  result = qword_10022E8C8;
  if (!qword_10022E8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10012AA68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10012AAB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10012AB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10012AB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10012ABA0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10012ABB8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012AC0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10012AC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10012ACC8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_10012ACE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 9))
  {
    return (*a1 + 124);
  }

  v3 = ((*(a1 + 8) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 8) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10012AD3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 8) = 0;
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_10012ADA0(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 8) = *(result + 8) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t sub_10012ADE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10012AE20(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10012AE34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10012AE88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_10012AEFC(uint64_t a1)
{
  sub_10012AF70(319);
  if (v1 <= 0x3F)
  {
    sub_10012AFDC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10012AF70(uint64_t a1)
{
  if (!qword_10022E8D8)
  {
    type metadata accessor for ValidatedAttestation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10022E8D8);
    }
  }
}

void sub_10012AFDC()
{
  if (!qword_10022E8E0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10022E8E0);
    }
  }
}

void sub_10012B050(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v160 = a3;
  v161 = a4;
  v164 = a1;
  v5 = type metadata accessor for TrustedRequestConfiguration(0);
  __chkstk_darwin(v5 - 8);
  v155 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100011AC0(&qword_10022BF10, &qword_1001DB9A8);
  v8 = __chkstk_darwin(v7 - 8);
  v154 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v153 = &v136 - v10;
  v168 = sub_1001D0900();
  v162 = *(v168 - 8);
  v11 = __chkstk_darwin(v168);
  v156 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v165 = &v136 - v13;
  v14 = sub_100011AC0(&qword_10022BF08, &qword_1001DB9A0);
  v15 = __chkstk_darwin(v14 - 8);
  v152 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v170 = &v136 - v17;
  v18 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate(0);
  v171 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v136 - v22;
  v24 = sub_1001CFD60();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for RateLimitTimingDetails(0);
  v29 = __chkstk_darwin(v28);
  v31 = &v136 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v136 - v32;
  v34 = sub_100011AC0(&qword_10022BDF0, &qword_1001DB888);
  v35 = __chkstk_darwin(v34);
  if (*(a2 + 7))
  {
    sub_10012BFB8(v160, type metadata accessor for TrustedRequestConfiguration);
    (*(v25 + 8))(v164, v24);
    sub_10012BFB8(a2, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
    v37 = type metadata accessor for RateLimitConfiguration(0);
    v38 = *(*(v37 - 8) + 56);
    v39 = v37;
    v40 = v161;

    v38(v40, 1, 1, v39);
  }

  else
  {
    v169 = &v136 - v36;
    v159 = v35;
    v136 = v23;
    v158 = v18;
    v137 = v21;
    v41 = v168;
    v149 = v27;
    v144 = v31;
    v145 = v28;
    v150 = v25;
    v146 = v33;
    v42 = *(a2 + 1);
    v43 = a2;
    v44 = HIBYTE(v42) & 0xF;
    if ((v42 & 0x2000000000000000) == 0)
    {
      v44 = *a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v44)
    {
      v143 = *a2;
      v142 = v42;
    }

    else
    {
      v143 = 0;
      v142 = 0;
    }

    v45 = v41;
    v46 = v165;
    v47 = v170;
    v48 = v171;
    v49 = v159;
    v50 = a2;
    v51 = *(a2 + 3);
    v52 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v52 = a2[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v52)
    {
      v141 = *(a2 + 2);
      v140 = v51;
    }

    else
    {
      v141 = 0;
      v140 = 0;
    }

    v157 = v24;
    v53 = *(a2 + 5);
    v54 = HIBYTE(v53) & 0xF;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v54 = a2[4] & 0xFFFFFFFFFFFFLL;
    }

    if (v54)
    {
      v139 = *(a2 + 4);
      v138 = v53;
    }

    else
    {
      v139 = 0;
      v138 = 0;
    }

    v55 = *(a2 + 6);
    v56 = *(v55 + 64);
    v148 = v55 + 64;
    v57 = 1 << *(v55 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & v56;
    v147 = (v57 + 63) >> 6;
    v163 = v55;

    v60 = 0;
    v61 = _swiftEmptyArrayStorage;
    v151 = v43;
    while (v59)
    {
LABEL_30:
      v172 = v60;
      v173 = v59;
      v65 = __clz(__rbit64(v59)) | (v60 << 6);
      v66 = *(v163 + 56);
      v67 = (*(v163 + 48) + 16 * v65);
      v68 = *v67;
      v69 = v67[1];
      v70 = v66 + *(*(type metadata accessor for Proto_Ropes_RateLimit_Values(0) - 8) + 72) * v65;
      v71 = *(v49 + 48);
      v72 = v169;
      sub_10012C018(v70, &v169[v71], type metadata accessor for Proto_Ropes_RateLimit_Values);
      v166 = v68;
      *v72 = v68;
      v72[1] = v69;
      v73 = *(v72 + v71);
      v74 = *(v73 + 16);
      if (v74)
      {
        v167 = v61;
        v174 = _swiftEmptyArrayStorage;

        sub_100151604(0, v74, 0);
        v75 = v174;
        v76 = (v73 + 40);
        v77 = v166;
        do
        {
          v79 = *(v76 - 1);
          v78 = *v76;
          v174 = v75;
          v80 = v75[2];
          v81 = v75[3];

          if (v80 >= v81 >> 1)
          {
            sub_100151604((v81 > 1), v80 + 1, 1);
            v77 = v166;
            v75 = v174;
          }

          v75[2] = v80 + 1;
          v82 = &v75[4 * v80];
          v82[4] = v77;
          v82[5] = v69;
          v82[6] = v79;
          v82[7] = v78;
          v76 += 2;
          --v74;
        }

        while (v74);
        v50 = v151;
        v61 = v167;
        v45 = v168;
        v46 = v165;
        v49 = v159;
        v72 = v169;
      }

      else
      {

        v75 = _swiftEmptyArrayStorage;
      }

      sub_100011F00(v72, &qword_10022BDF0, &qword_1001DB888);
      v83 = v75[2];
      v84 = *(v61 + 2);
      v85 = v84 + v83;
      v48 = v171;
      if (__OFADD__(v84, v83))
      {
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v85 > *(v61 + 3) >> 1)
      {
        if (v84 <= v85)
        {
          v87 = v84 + v83;
        }

        else
        {
          v87 = v84;
        }

        v61 = sub_1000094BC(isUniquelyReferenced_nonNull_native, v87, 1, v61);
      }

      v59 = (v173 - 1) & v173;
      if (v75[2])
      {
        if ((*(v61 + 3) >> 1) - *(v61 + 2) < v83)
        {
          goto LABEL_81;
        }

        swift_arrayInitWithCopy();

        v47 = v170;
        v60 = v172;
        if (v83)
        {
          v88 = *(v61 + 2);
          v89 = __OFADD__(v88, v83);
          v90 = v88 + v83;
          if (v89)
          {
            goto LABEL_82;
          }

          *(v61 + 2) = v90;
        }
      }

      else
      {

        v47 = v170;
        v60 = v172;
        if (v83)
        {
          goto LABEL_80;
        }
      }
    }

    v62 = v157;
    v63 = v162;
    while (1)
    {
      v64 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        __break(1u);
        goto LABEL_79;
      }

      if (v64 >= v147)
      {
        break;
      }

      v59 = *(v148 + 8 * v64);
      ++v60;
      if (v59)
      {
        v60 = v64;
        goto LABEL_30;
      }
    }

    (*(v150 + 16))(v149, v164, v62);
    v172 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
    v91 = *(v172 + 44);
    sub_10001208C(v50 + v91, v47, &qword_10022BF08, &qword_1001DB9A0);
    v92 = *(v48 + 48);
    v93 = v158;
    if (v92(v47, 1, v158) == 1)
    {
      v94 = v50;
      v95 = v45;
      v96 = v136;
      *v136 = 0;
      _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
      v97 = v95;
      v50 = v94;
      v46 = v165;
      (*(v63 + 56))(&v96[*(v93 + 24)], 1, 1, v97);
      if (v92(v47, 1, v93) != 1)
      {
        sub_100011F00(v47, &qword_10022BF08, &qword_1001DB9A0);
      }
    }

    else
    {
      v96 = v136;
      sub_10012C080(v47, v136, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate);
    }

    v98 = *v96;
    sub_10012BFB8(v96, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate);
    v99 = v50 + v91;
    v100 = v152;
    sub_10001208C(v99, v152, &qword_10022BF08, &qword_1001DB9A0);
    v101 = v158;
    v102 = v92(v100, 1, v158);
    v167 = v61;
    v173 = v98;
    if (v102 == 1)
    {
      v103 = v100;
      v104 = v137;
      *v137 = 0;
      _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
      v105 = v162;
      v106 = v168;
      (*(v162 + 56))(&v104[*(v101 + 24)], 1, 1, v168);
      v107 = v92(v103, 1, v101);
      v108 = v172;
      if (v107 != 1)
      {
        sub_100011F00(v103, &qword_10022BF08, &qword_1001DB9A0);
      }
    }

    else
    {
      v109 = v100;
      v104 = v137;
      sub_10012C080(v109, v137, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate);
      v106 = v168;
      v105 = v162;
      v108 = v172;
    }

    v110 = v153;
    sub_10001208C(&v104[*(v158 + 24)], v153, &qword_10022BF10, &qword_1001DB9A8);
    v111 = *(v105 + 48);
    if (v111(v110, 1, v106) == 1)
    {
      sub_1001D08F0();
      sub_10012BFB8(v104, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate);
      if (v111(v110, 1, v106) != 1)
      {
        sub_100011F00(v110, &qword_10022BF10, &qword_1001DB9A8);
      }
    }

    else
    {
      sub_10012BFB8(v104, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration.Rate);
      (*(v105 + 32))(v46, v110, v106);
    }

    sub_1001D08E0();
    v113 = v112;
    v114 = v105;
    v115 = *(v105 + 8);
    v115(v46, v106);
    v116 = v154;
    sub_10001208C(v50 + *(v108 + 48), v154, &qword_10022BF10, &qword_1001DB9A8);
    if (v111(v116, 1, v106) == 1)
    {
      v117 = v156;
      sub_1001D08F0();
      v118 = v111(v116, 1, v106);
      v119 = v161;
      v120 = v146;
      if (v118 != 1)
      {
        sub_100011F00(v116, &qword_10022BF10, &qword_1001DB9A8);
      }
    }

    else
    {
      v117 = v156;
      (*(v114 + 32))(v156, v116, v106);
      v119 = v161;
      v120 = v146;
    }

    sub_1001D08E0();
    v115(v117, v106);
    v121 = v50[9];
    v122 = v160;
    v123 = v155;
    sub_10012C018(v160, v155, type metadata accessor for TrustedRequestConfiguration);
    v124 = v144;
    *v144 = v173;
    if (v113 < 0.0)
    {
      v125 = 0.0;
    }

    else
    {
      v125 = v113;
    }

    if (*(v123 + 48) >= v125)
    {
      v126 = v125;
    }

    else
    {
      v126 = *(v123 + 48);
    }

    *(v124 + 8) = v126;
    v127 = v145;
    v128 = v149;
    sub_1001CFCE0();
    sub_10012BFB8(v122, type metadata accessor for TrustedRequestConfiguration);
    v129 = *(v150 + 8);
    v130 = v157;
    v129(v164, v157);
    v129(v128, v130);
    if (v121 == 0.0)
    {
      v121 = *(v123 + 64);
    }

    sub_10012BFB8(v123, type metadata accessor for TrustedRequestConfiguration);
    v131 = 1.0;
    if (v121 <= 1.0)
    {
      v131 = v121;
    }

    if (v121 < 0.0)
    {
      v131 = 0.0;
    }

    *(v124 + *(v127 + 28)) = v126 * v131;
    sub_10012C080(v124, v120, type metadata accessor for RateLimitTimingDetails);
    v132 = v142;
    *v119 = v143;
    v119[1] = v132;
    v133 = v140;
    v119[2] = v141;
    v119[3] = v133;
    v134 = v138;
    v119[4] = v139;
    v119[5] = v134;
    v119[6] = v167;
    v135 = type metadata accessor for RateLimitConfiguration(0);
    sub_10012C080(v120, v119 + *(v135 + 20), type metadata accessor for RateLimitTimingDetails);
    sub_10012BFB8(v50, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
    (*(*(v135 - 8) + 56))(v119, 0, 1, v135);
  }
}

uint64_t sub_10012BFB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10012C018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10012C080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10012C0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 88);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001CFB10();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 64);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 116);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10012C240(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 88) = (a2 - 1);
  }

  else
  {
    v8 = sub_1001CFB10();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 64);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 116);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for TrustedRequestConfiguration(uint64_t a1)
{
  result = qword_10022E968;
  if (!qword_10022E968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10012C3BC(uint64_t a1)
{
  sub_1001235EC(319, &qword_100229738, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_1001CFB10();
    if (v2 <= 0x3F)
    {
      sub_1001235EC(319, &unk_10022E978, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        sub_10012C534(319);
        if (v4 <= 0x3F)
        {
          sub_1001235EC(319, &qword_10022A698, &type metadata for UInt32);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10012C534(uint64_t a1)
{
  if (!qword_10022DC40[0])
  {
    sub_1001CFDA0();
    v1 = sub_1001D1F00();
    if (!v2)
    {
      atomic_store(v1, qword_10022DC40);
    }
  }
}

uint64_t sub_10012C59C(void *a1)
{
  v2 = sub_1001D1810();
  v22 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_100024DC8(a1, a1[3]);
  sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  sub_1001D0330();
  sub_10005956C();
  sub_1001D0210();
  (*(v6 + 8))(v8, v5);
  if (!v24)
  {
    goto LABEL_12;
  }

  if (sub_1001D1890() <= 0)
  {

LABEL_12:
    sub_1001CF8C0();
    v14 = swift_allocObject();
    v18 = sub_1001CF880();
    v23 = 0x1000000000;
    v24 = v18 | 0x4000000000000000;
    if (!sub_10012D430(&v23))
    {
      return v23;
    }

    sub_100089BE4();
    swift_allocError();
    *v19 = 5888;
    *(v19 + 8) = _swiftEmptyArrayStorage;
    swift_willThrow();
    sub_100011E48(v23, v24);
    return v14;
  }

  sub_1001D1800();
  v9 = sub_1001D17E0();
  v11 = v10;

  (*(v22 + 8))(v4, v2);
  if (v11 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  if (v11 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = v11;
  }

  v14 = sub_1001CFB60();
  v16 = v15;
  sub_100011E48(v12, v13);
  if (v16 >> 60 == 15)
  {
    sub_100089BE4();
    swift_allocError();
    *v17 = 5888;
    *(v17 + 8) = _swiftEmptyArrayStorage;
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_10012C8DC()
{
  v28 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  __chkstk_darwin(v28);
  v27 = &v27 - v1;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1001D2030(762);
  v33._countAndFlagsBits = 0xD000000000000038;
  v33._object = 0x80000001001E64A0;
  sub_1001D18B0(v33);
  v29 = *v0;
  v34._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v34);

  v35._countAndFlagsBits = 0xD00000000000001BLL;
  v35._object = 0x80000001001E64E0;
  sub_1001D18B0(v35);
  v29 = v0[1];
  v36._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v36);

  v37._countAndFlagsBits = 0xD00000000000001CLL;
  v37._object = 0x80000001001E6500;
  sub_1001D18B0(v37);
  v29 = v0[2];
  v38._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v38);

  v39._countAndFlagsBits = 0xD000000000000016;
  v39._object = 0x80000001001E6520;
  sub_1001D18B0(v39);
  v2 = v0[5];
  v29 = v0[4];
  v30 = v2;

  sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  v40._countAndFlagsBits = sub_1001D1820();
  sub_1001D18B0(v40);

  v41._countAndFlagsBits = 0xD00000000000002BLL;
  v41._object = 0x80000001001E6540;
  sub_1001D18B0(v41);
  sub_1001D1CB0();
  v42._countAndFlagsBits = 0xD000000000000025;
  v42._object = 0x80000001001E6570;
  sub_1001D18B0(v42);
  sub_1001D1CB0();
  v43._countAndFlagsBits = 0xD000000000000025;
  v43._object = 0x80000001001E65A0;
  sub_1001D18B0(v43);
  sub_1001D1CB0();
  v44._countAndFlagsBits = 0xD000000000000017;
  v44._object = 0x80000001001E65D0;
  sub_1001D18B0(v44);
  if (*(v0 + 72))
  {
    v3._countAndFlagsBits = 1702195828;
  }

  else
  {
    v3._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + 72))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v3._object = v4;
  sub_1001D18B0(v3);

  v45._countAndFlagsBits = 0xD000000000000024;
  v45._object = 0x80000001001E65F0;
  sub_1001D18B0(v45);
  v5 = type metadata accessor for TrustedRequestConfiguration(0);
  v6 = (v0 + v5[25]);
  v7 = v6[1];
  v29 = *v6;
  v30 = v7;

  v46._countAndFlagsBits = sub_1001D1820();
  sub_1001D18B0(v46);

  v47._countAndFlagsBits = 0xD00000000000001FLL;
  v47._object = 0x80000001001E6620;
  sub_1001D18B0(v47);
  if (*(v0 + 73))
  {
    v8._countAndFlagsBits = 1702195828;
  }

  else
  {
    v8._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + 73))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v8._object = v9;
  sub_1001D18B0(v8);

  v48._countAndFlagsBits = 0xD000000000000012;
  v48._object = 0x80000001001E6640;
  sub_1001D18B0(v48);
  sub_1001D18B0(*(v0 + 5));
  v49._countAndFlagsBits = 0xD000000000000011;
  v49._object = 0x80000001001E6660;
  sub_1001D18B0(v49);
  if (*(v0 + 96))
  {
    v10._countAndFlagsBits = 1702195828;
  }

  else
  {
    v10._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + 96))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v10._object = v11;
  sub_1001D18B0(v10);

  v50._countAndFlagsBits = 0xD000000000000012;
  v50._object = 0x80000001001E6680;
  sub_1001D18B0(v50);
  sub_1001CFB10();
  sub_10012DAF0(&qword_1002302F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v51._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v51);

  v52._countAndFlagsBits = 0xD00000000000001DLL;
  v52._object = 0x80000001001E66A0;
  sub_1001D18B0(v52);
  sub_1001D18B0(*(v0 + v5[17]));
  v53._countAndFlagsBits = 0xD000000000000019;
  v53._object = 0x80000001001E66C0;
  sub_1001D18B0(v53);
  sub_1001D18B0(*(v0 + v5[18]));
  v54._countAndFlagsBits = 0xD000000000000029;
  v54._object = 0x80000001001E66E0;
  sub_1001D18B0(v54);
  if (*(v0 + v5[19]))
  {
    v12._countAndFlagsBits = 1702195828;
  }

  else
  {
    v12._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + v5[19]))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  v12._object = v13;
  sub_1001D18B0(v12);

  v55._countAndFlagsBits = 0xD000000000000018;
  v55._object = 0x80000001001E6710;
  sub_1001D18B0(v55);
  v14 = (v0 + v5[20]);
  v15 = v14[1];
  v29 = *v14;
  v30 = v15;

  v56._countAndFlagsBits = sub_1001D1820();
  sub_1001D18B0(v56);

  v57._countAndFlagsBits = 0xD000000000000018;
  v57._object = 0x80000001001E6730;
  sub_1001D18B0(v57);
  v16 = (v0 + v5[21]);
  v17 = v16[1];
  v29 = *v16;
  v30 = v17;

  v58._countAndFlagsBits = sub_1001D1820();
  sub_1001D18B0(v58);

  v59._countAndFlagsBits = 0xD000000000000018;
  v59._object = 0x80000001001E6750;
  sub_1001D18B0(v59);
  v18 = (v0 + v5[22]);
  v19 = v18[1];
  v29 = *v18;
  v30 = v19;

  v60._countAndFlagsBits = sub_1001D1820();
  sub_1001D18B0(v60);

  v61._object = 0x80000001001E6770;
  v61._countAndFlagsBits = 0xD000000000000010;
  sub_1001D18B0(v61);
  sub_1001D18B0(*(v0 + v5[27]));
  v62._object = 0x80000001001E6790;
  v62._countAndFlagsBits = 0xD000000000000010;
  sub_1001D18B0(v62);
  v20 = (v0 + v5[28]);
  v21 = v20[1];
  v29 = *v20;
  v30 = v21;

  v63._countAndFlagsBits = sub_1001D1820();
  sub_1001D18B0(v63);

  v64._object = 0x80000001001E67B0;
  v64._countAndFlagsBits = 0xD000000000000010;
  sub_1001D18B0(v64);
  sub_100043820(v0 + v5[29], v27);
  v65._countAndFlagsBits = sub_1001D1820();
  sub_1001D18B0(v65);

  v66._countAndFlagsBits = 0xD00000000000001ALL;
  v66._object = 0x80000001001E67D0;
  sub_1001D18B0(v66);
  v22 = (v0 + v5[30]);
  v23 = v22[1];
  v29 = *v22;
  v30 = v23;

  v67._countAndFlagsBits = sub_1001D1820();
  sub_1001D18B0(v67);

  v68._countAndFlagsBits = 0x6561202020200A0ALL;
  v68._object = 0xEF203A79654B6461;
  sub_1001D18B0(v68);
  v69._countAndFlagsBits = sub_1001CFB50();
  sub_1001D18B0(v69);

  v70._object = 0x80000001001E67F0;
  v70._countAndFlagsBits = 0xD000000000000010;
  sub_1001D18B0(v70);
  LOBYTE(v29) = *(v0 + v5[33]);
  sub_1001D2120();
  v71._countAndFlagsBits = 0xD00000000000002BLL;
  v71._object = 0x80000001001E6810;
  sub_1001D18B0(v71);
  if (*(v0 + v5[34]))
  {
    v24._countAndFlagsBits = 1702195828;
  }

  else
  {
    v24._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + v5[34]))
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  v24._object = v25;
  sub_1001D18B0(v24);

  v72._countAndFlagsBits = 15882;
  v72._object = 0xE200000000000000;
  sub_1001D18B0(v72);
  return v31;
}

uint64_t sub_10012D0B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7827308;
  if (v2 != 1)
  {
    v4 = 0x756F72676B636162;
    v3 = 0xEA0000000000646ELL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1751607656;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7827308;
  if (*a2 != 1)
  {
    v8 = 0x756F72676B636162;
    v7 = 0xEA0000000000646ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1751607656;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1001D2470();
  }

  return v11 & 1;
}

Swift::Int sub_10012D1A4()
{
  sub_1001D2580();
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_10012D23C(uint64_t a1)
{
  sub_1001D1880();
}

Swift::Int sub_10012D2C0()
{
  sub_1001D2580();
  sub_1001D1880();

  return sub_1001D25C0();
}

unint64_t sub_10012D354@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10012DAA4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10012D384(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 7827308;
  if (v2 != 1)
  {
    v5 = 0x756F72676B636162;
    v4 = 0xEA0000000000646ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1751607656;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_10012D3DC()
{
  result = qword_10022EA20;
  if (!qword_10022EA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022EA20);
  }

  return result;
}

uint64_t sub_10012D430(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      *(&bytes + 7) = 0;
      *&bytes = 0;
      return SecRandomCopyBytes(kSecRandomDefault, 0x10uLL, &bytes);
    }

    sub_100011E48(v3, v2);
    *&bytes = v3;
    *(&bytes + 1) = v2 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1001D3A00;
    sub_100011E48(0, 0xC000000000000000);
    sub_1001CFB20();
    v7 = *(&bytes + 1);
    v8 = *(bytes + 16);
    result = sub_1001CF870();
    if (!result)
    {
      __break(1u);
      goto LABEL_25;
    }

    v9 = result;
    v10 = sub_1001CF8A0();
    v11 = __OFSUB__(v8, v10);
    v12 = v8 - v10;
    if (!v11)
    {
      sub_1001CF890();
      result = SecRandomCopyBytes(kSecRandomDefault, 0x10uLL, (v9 + v12));
      *a1 = bytes;
      a1[1] = v7 | 0x8000000000000000;
      return result;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v4)
  {
    sub_100011E48(v3, v2);
    *&bytes = v3;
    WORD4(bytes) = v2;
    BYTE10(bytes) = BYTE2(v2);
    BYTE11(bytes) = BYTE3(v2);
    BYTE12(bytes) = BYTE4(v2);
    BYTE13(bytes) = BYTE5(v2);
    BYTE14(bytes) = BYTE6(v2);
    result = SecRandomCopyBytes(kSecRandomDefault, 0x10uLL, &bytes);
    v6 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);
    *a1 = bytes;
    a1[1] = v6;
    return result;
  }

  v13 = v2 & 0x3FFFFFFFFFFFFFFFLL;

  sub_100011E48(v3, v2);
  *a1 = xmmword_1001D3A00;
  sub_100011E48(0, 0xC000000000000000);
  v14 = v3 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v14 < v3)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (sub_1001CF870() && __OFSUB__(v3, sub_1001CF8A0()))
    {
LABEL_23:
      __break(1u);
    }

    sub_1001CF8C0();
    swift_allocObject();
    v15 = sub_1001CF850();

    v13 = v15;
  }

  if (v14 < v3)
  {
    goto LABEL_20;
  }

  result = sub_1001CF870();
  if (result)
  {
    v16 = result;
    v17 = sub_1001CF8A0();
    v18 = v3 - v17;
    if (!__OFSUB__(v3, v17))
    {
      sub_1001CF890();
      v19 = SecRandomCopyBytes(kSecRandomDefault, 0x10uLL, (v16 + v18));

      *a1 = v3;
      a1[1] = v13 | 0x4000000000000000;
      return v19;
    }

    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10012D7B8(char *a1)
{
  v2 = sub_1001D1BA0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  (*(v3 + 16))(&v18 - v7, a1, v2);
  sub_1001D1B30();
  sub_10012DAF0(&qword_10022EA28, &type metadata accessor for TaskPriority, &protocol conformance descriptor for TaskPriority);
  v9 = sub_1001D1790();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v9)
  {
    v10(a1, v2);
    v11 = 2;
  }

  else
  {
    sub_1001D1B70();
    v12 = sub_1001D1790();
    v10(v6, v2);
    if (v12 & 1) != 0 || (sub_1001D1B50(), v13 = sub_1001D1790(), v10(v6, v2), (v13))
    {
      v10(a1, v2);
      v11 = 1;
    }

    else
    {
      sub_1001D1B80();
      v14 = sub_1001D1790();
      v10(v6, v2);
      if (v14 & 1) != 0 || (sub_1001D1B60(), v15 = sub_1001D1790(), v10(v6, v2), (v15))
      {
        v16 = a1;
      }

      else
      {
        sub_1001D1B40();
        sub_1001D1790();
        v10(a1, v2);
        v16 = v6;
      }

      v10(v16, v2);
      v11 = 0;
    }
  }

  v10(v8, v2);
  return v11;
}

unint64_t sub_10012DAA4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021CF48;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10012DAF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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