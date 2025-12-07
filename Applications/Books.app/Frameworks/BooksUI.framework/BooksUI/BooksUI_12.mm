uint64_t sub_13F67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for ListItemMetadataEyebrowView(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  sub_2EF0(&qword_318170, &unk_26AF40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v9 = sub_261690();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  (*(*(v5 - 8) + 8))(v7 + *(v6 + 36), v5);

  return swift_deallocObject();
}

double sub_13F7E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for ListItemMetadataEyebrowView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  *&result = sub_13EDB0(a1, v9, v6, v7, a3).n128_u64[0];
  return result;
}

unint64_t sub_13F87C()
{
  result = qword_31FCE0;
  if (!qword_31FCE0)
  {
    sub_2F9C(&qword_31FCD8, &qword_27B570);
    sub_13F938();
    sub_13FB8C(&qword_3193A8, type metadata accessor for DefaultBlendModeModifier, &unk_28233C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FCE0);
  }

  return result;
}

unint64_t sub_13F938()
{
  result = qword_31FCE8;
  if (!qword_31FCE8)
  {
    sub_2F9C(&qword_31FCF0, &qword_27B578);
    sub_13F9F0();
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FCE8);
  }

  return result;
}

unint64_t sub_13F9F0()
{
  result = qword_31FCF8;
  if (!qword_31FCF8)
  {
    sub_2F9C(&qword_31FD00, &qword_27B580);
    sub_13FAA8();
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FCF8);
  }

  return result;
}

unint64_t sub_13FAA8()
{
  result = qword_31FD08;
  if (!qword_31FD08)
  {
    sub_2F9C(&qword_31FD10, &qword_27B588);
    sub_8E38(&qword_31FD18, &qword_31FD20, &unk_27B590, &protocol conformance descriptor for ViewThatFits<A>);
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FD08);
  }

  return result;
}

uint64_t sub_13FB8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_13FBD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31FD28, &qword_27B5A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_13FC60(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_43B58(result, a2, a3 & 1);
  }

  return result;
}

double sub_13FCA4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_39DBC(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t static ActionKinds.table.getter()
{
  if (qword_315A40 != -1)
  {
    swift_once();
  }

  sub_2EF0(&qword_31FD50, &qword_27B670);
  sub_260D20();
  return v1;
}

uint64_t sub_13FDB0()
{
  if (qword_315A48 != -1)
  {
    swift_once();
  }

  v0 = qword_31FD48;
  sub_2EF0(&qword_31FD88, &qword_27B728);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = v0;
  qword_31FD40 = v1;
}

uint64_t sub_13FE48()
{
  sub_2EF0(&qword_31FD90, &qword_27B730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D20;
  *(inited + 32) = 0x7463417465737361;
  *(inited + 40) = 0xEB000000006E6F69;
  v1 = type metadata accessor for AssetAction(0);
  v2 = sub_141658(&qword_319AE8, type metadata accessor for AssetAction, &protocol conformance descriptor for AssetAction);
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 64) = 0x69746341776F6C66;
  *(inited + 72) = 0xEA00000000006E6FLL;
  v3 = type metadata accessor for FlowAction(0);
  v4 = sub_141658(&qword_31FD98, type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
  *(inited + 80) = v3;
  *(inited + 88) = v4;
  strcpy((inited + 96), "flowBackAction");
  *(inited + 111) = -18;
  *(inited + 112) = sub_264180();
  *(inited + 120) = &protocol witness table for Models.FlowBackAction;
  v5 = sub_F354(inited);
  swift_setDeallocating();
  sub_2EF0(&qword_31FDA0, &qword_27B738);
  result = swift_arrayDestroy();
  qword_31FD48 = v5;
  return result;
}

void static ActionKinds.register<A>(_:name:)(uint64_t a1)
{
  if (qword_315A40 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v1 = qword_31FD40;
  __chkstk_darwin(a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1400C4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1400C4(uint64_t *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  result = sub_E134(v6, v3, v4, v5, isUniquelyReferenced_nonNull_native);
  *a1 = v9;
  return result;
}

uint64_t sub_140140(uint64_t a1)
{
  sub_140D10();
  v1 = sub_263C20();
  v2 = sub_264060();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v1;
  sub_1413C0(v2, sub_140F8C, 0, isUniquelyReferenced_nonNull_native, &v7);

  sub_140D64(v7);
  v5 = v4;

  return v5;
}

void *sub_140210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v96 = a2;
  v86 = a3;
  v4 = sub_263840();
  __chkstk_darwin(v4 - 8);
  v85 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_263B50();
  v84 = *(v90 - 8);
  __chkstk_darwin(v90);
  v82 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_31FD58, &qword_27B700);
  __chkstk_darwin(v7 - 8);
  v89 = &v78 - v8;
  v9 = sub_2EF0(&qword_31FD60, &qword_27B708);
  v88 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v78 - v13;
  v15 = sub_2EF0(&qword_31FD68, &qword_27B710);
  v91 = *(v15 - 8);
  v92 = v15;
  __chkstk_darwin(v15);
  v83 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v78 - v18;
  v102 = sub_263980();
  v95 = *(v102 - 8);
  __chkstk_darwin(v102);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v78 - v23;
  __chkstk_darwin(v25);
  v94 = &v78 - v26;
  __chkstk_darwin(v27);
  v29 = &v78 - v28;
  v30 = sub_A8C6C(a1, a1, &protocol descriptor for ActionModel, &protocol descriptor for Decodable);
  if (v30)
  {
    v88 = v31;
    v89 = v32;
    v90 = v30;
    v33 = v96;
    sub_2E18(v96, *(v96 + 24));
    sub_265100();
    sub_263970();
    sub_263940();
    sub_2EF0(&qword_31FD78, &qword_27B718);
    sub_263990();
    v34 = v92;
    v35 = *(v91 + 1);
    v35(v19, v92);
    v36 = v102;
    if (!v98)
    {
      v37 = sub_140D10();
      v98 = v87;
      v99 = v37;
      v38 = v83;
      sub_263940();
      v39 = v94;
      sub_263910();
      v35(v38, v34);
      v40 = v95;
      (*(v95 + 8))(v29, v102);
      v41 = v39;
      v36 = v102;
      (*(v40 + 32))(v29, v41, v102);
    }

    sub_2E18(v33, v33[3]);
    v42 = v95;
    (*(v95 + 16))(v94, v29, v36);
    sub_2642B0();
    sub_265110();

    *&v100 = v90;
    *(&v100 + 1) = v88;
    v101 = v89;
    sub_10934(&v98);
    v43 = v93;
    sub_2647C0();
    if (v43)
    {
      (*(v42 + 8))(v29, v36);
      return sub_A8CF4(&v98);
    }

    v96 = v100;
    v64 = v100;
    v65 = sub_2E18(&v98, v100);
    v66 = v86;
    *(v86 + 24) = v96;
    v67 = sub_10934(v66);
    (*(*(v64 - 8) + 16))(v67, v65, v64);
    (*(v42 + 8))(v29, v36);
    return sub_3080(&v98);
  }

  v45 = v89;
  v91 = v11;
  v83 = v21;
  v46 = v88;
  v92 = v24;
  v47 = v90;
  v48 = sub_A8C6C(a1, a1, &protocol descriptor for ActionModel, &protocol descriptor for ExpressibleByJSON);
  if (v48)
  {
    v79 = v49;
    v80 = v50;
    v81 = v48;
    sub_2E18(v96, *(v96 + 24));
    sub_265100();
    sub_263970();
    v51 = v14;
    sub_263920();
    v52 = v47;
    sub_263990();
    v53 = *(v46 + 8);
    v54 = v51;
    v55 = v9;
    v53(v54, v9);
    v56 = v84;
    v57 = (*(v84 + 48))(v45, 1, v47);
    sub_140CA8(v45);
    if (v57 == 1)
    {
      sub_140D10();
      v58 = v82;
      sub_263B60();
      v59 = v91;
      sub_263920();
      v60 = v92;
      sub_263910();
      v53(v59, v55);
      (*(v56 + 8))(v58, v52);
      v61 = v95;
      v62 = v102;
      (*(v95 + 8))(v60, v102);
      (*(v61 + 32))(v60, v94, v62);
    }

    sub_30CC(v96, v97);
    v63 = v93;
    sub_263810();
    if (v63)
    {
      return (*(v95 + 8))(v92, v102);
    }

    v71 = v95;
    v72 = v92;
    v73 = v102;
    (*(v95 + 16))(v83, v92, v102);
    *&v100 = v81;
    *(&v100 + 1) = v79;
    v101 = v80;
    sub_10934(&v98);
    sub_263DE0();
    v96 = v100;
    v74 = v100;
    v75 = sub_2E18(&v98, v100);
    v76 = v86;
    *(v86 + 24) = v96;
    v77 = sub_10934(v76);
    (*(*(v74 - 8) + 16))(v77, v75, v74);
    (*(v71 + 8))(v72, v73);
    return sub_3080(&v98);
  }

  v68 = sub_264C10();
  swift_allocError();
  v70 = v69;
  sub_2EF0(&qword_315CD0, &qword_266E00);
  *v70 = a1;
  sub_2E18(v96, *(v96 + 24));
  sub_2650E0();
  v98 = 0;
  v99 = 0xE000000000000000;
  sub_264BC0(21);

  v98 = 60;
  v99 = 0xE100000000000000;
  v103._countAndFlagsBits = sub_265260();
  sub_264530(v103);

  v104._object = 0x80000000002917A0;
  v104._countAndFlagsBits = 0xD000000000000012;
  sub_264530(v104);
  sub_264BF0();
  (*(*(v68 - 8) + 104))(v70, enum case for DecodingError.typeMismatch(_:), v68);
  return swift_willThrow();
}

uint64_t sub_140CA8(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31FD58, &qword_27B700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_140D10()
{
  result = qword_31FD70;
  if (!qword_31FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FD70);
  }

  return result;
}

void sub_140D64(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2EF0(&qword_31B6B8, &qword_27C7C0);
    v2 = sub_264D10();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
        v14 = *v12;
        v13 = v12[1];

        sub_2EF0(&qword_31FD80, &qword_27B720);
        sub_2EF0(&qword_31B6C8, &qword_27C7D0);
        swift_dynamicCast();
        v15 = sub_D410(v14, v13);
        if (v16)
        {
          v8 = (v2[6] + 16 * v15);
          *v8 = v14;
          v8[1] = v13;
          v9 = v15;

          *(v2[7] + 8 * v9) = v21;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
          v17 = (v2[6] + 16 * v15);
          *v17 = v14;
          v17[1] = v13;
          *(v2[7] + 8 * v15) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_140F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
}

void sub_140FAC()
{
  v1 = v0;
  sub_2EF0(&qword_316160, &qword_267F50);
  v2 = *v0;
  v3 = sub_264CF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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
}

void sub_141114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2EF0(&qword_316160, &qword_267F50);
  v34 = v4;
  v6 = sub_264D00();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v35 = *(*(v5 + 56) + v21);
      if ((v34 & 1) == 0)
      {
      }

      sub_265050();
      sub_264500();
      v25 = sub_265080();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1413C0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v38 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = *(a1 + 56);
    v16 = (*(a1 + 48) + v14);
    v17 = v16[1];
    v42[0] = *v16;
    v42[1] = v17;
    v43 = *(v15 + v14);

    a2(&v39, v42);

    v18 = v39;
    v19 = v40;
    v36 = v41;
    v20 = *v44;
    v22 = sub_D410(v39, v40);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v26 = v21;
    if (v20[3] >= v25)
    {
      if ((v38 & 1) == 0)
      {
        sub_140FAC();
      }
    }

    else
    {
      sub_141114(v25, v38 & 1);
      v27 = sub_D410(v18, v19);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_27;
      }

      v22 = v27;
    }

    v9 &= v9 - 1;
    v29 = *v44;
    if (v26)
    {
      v37 = *(v29[7] + 16 * v22);

      *(v29[7] + 16 * v22) = v37;
    }

    else
    {
      v29[(v22 >> 6) + 8] |= 1 << v22;
      v30 = (v29[6] + 16 * v22);
      *v30 = v18;
      v30[1] = v19;
      *(v29[7] + 16 * v22) = v36;
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_26;
      }

      v29[2] = v33;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_141650(a1);

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_264FB0();
  __break(1u);
}

uint64_t sub_141658(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double FlowAction.init(id:actionMetrics:clickData:destination:origin:sourceViewIdentifer:presentation:shouldInheritFigaroRestriction:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v50 = a7;
  v51 = a8;
  v46 = a5;
  v45 = a4;
  v49 = a12;
  v48 = a11;
  v47 = a10;
  v17 = sub_2601E0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a6[7];
  v58 = a6[6];
  v59 = v21;
  v60 = a6[8];
  v61 = *(a6 + 144);
  v22 = a6[3];
  v54 = a6[2];
  v55 = v22;
  v23 = a6[5];
  v56 = a6[4];
  v57 = v23;
  v24 = a6[1];
  v52 = *a6;
  v53 = v24;
  sub_2601D0();
  v25 = sub_2601C0();
  v27 = v26;
  v28 = *(v18 + 8);
  v28(v20, v17);
  *a9 = v25;
  a9[1] = v27;
  v29 = type metadata accessor for FlowAction(0);
  v30 = v29[11];
  *(a9 + v30) = 0;
  if (!a2)
  {
    sub_2601D0();
    a1 = sub_2601C0();
    a2 = v31;
    v28(v20, v17);
  }

  *a9 = a1;
  a9[1] = a2;
  v32 = v29[5];
  v33 = sub_263AF0();
  (*(*(v33 - 8) + 32))(a9 + v32, a3, v33);
  sub_129C04(v45, a9 + v29[6]);
  sub_F7CC(v46, a9 + v29[7]);
  v34 = a9 + v29[8];
  v35 = v59;
  *(v34 + 6) = v58;
  *(v34 + 7) = v35;
  *(v34 + 8) = v60;
  v34[144] = v61;
  v36 = v55;
  *(v34 + 2) = v54;
  *(v34 + 3) = v36;
  v37 = v57;
  *(v34 + 4) = v56;
  *(v34 + 5) = v37;
  result = *&v52;
  v39 = v53;
  *v34 = v52;
  *(v34 + 1) = v39;
  v40 = (a9 + v29[9]);
  v41 = v51;
  *v40 = v50;
  v40[1] = v41;
  v42 = (a9 + v29[10]);
  v43 = v48;
  *v42 = v47;
  v42[1] = v43;
  *(a9 + v30) = v49 & 1;
  return result;
}

uint64_t FlowAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for FlowAction(0) + 20);
  v5 = sub_263AF0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v2 + v4, v5);
}

uint64_t FlowAction.destination.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for FlowAction(0);
  sub_8198(v2 + *(v4 + 28), v6, &qword_31FDA8, &qword_27B740);
  return sub_F7CC(v6, a1);
}

uint64_t sub_141A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FlowAction(0);
  sub_8198(a1 + *(v5 + 28), v7, &qword_31FDA8, &qword_27B740);
  return sub_F7CC(v7, a2);
}

uint64_t FlowAction.destination.setter(__int128 *a1, __n128 a2)
{
  v4 = *(type metadata accessor for FlowAction(0) + 28);
  sub_3080((v2 + v4));

  return sub_F7CC(a1, v2 + v4);
}

uint64_t FlowAction.origin.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + *(type metadata accessor for FlowAction(0) + 32);
  v5 = *(v4 + 112);
  v6 = *(v4 + 80);
  v23 = *(v4 + 96);
  v24 = v5;
  v7 = *(v4 + 112);
  v25 = *(v4 + 128);
  v8 = *(v4 + 48);
  v10 = *(v4 + 16);
  v19 = *(v4 + 32);
  v9 = v19;
  v20 = v8;
  v11 = *(v4 + 48);
  v12 = *(v4 + 80);
  v21 = *(v4 + 64);
  v13 = v21;
  v22 = v12;
  v14 = *(v4 + 16);
  v18[0] = *v4;
  v15 = v18[0];
  v18[1] = v14;
  *(a1 + 96) = v23;
  *(a1 + 112) = v7;
  *(a1 + 128) = *(v4 + 128);
  *(a1 + 32) = v9;
  *(a1 + 48) = v11;
  *(a1 + 64) = v13;
  *(a1 + 80) = v6;
  v26 = *(v4 + 144);
  *(a1 + 144) = *(v4 + 144);
  *a1 = v15;
  *(a1 + 16) = v10;
  return sub_8198(v18, v17, &qword_31FDB0, &qword_27B748);
}

uint64_t FlowAction.sourceViewIdentifier.getter(__n128 a1)
{
  v2 = *(v1 + *(type metadata accessor for FlowAction(0) + 36));

  return v2;
}

uint64_t FlowAction.presentation.getter(__n128 a1)
{
  v2 = *(v1 + *(type metadata accessor for FlowAction(0) + 40));

  return v2;
}

uint64_t FlowAction.shouldInheritFigaroRestriction.setter(char a1, __n128 a2)
{
  result = type metadata accessor for FlowAction(0);
  *(v2 + *(result + 44)) = a1;
  return result;
}

unint64_t sub_141D28()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x61746E6573657270;
    if (v1 != 6)
    {
      v5 = 0xD00000000000001ELL;
    }

    v6 = 0x6E696769726FLL;
    if (v1 != 4)
    {
      v6 = 0xD000000000000014;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 25705;
    v3 = 0x7461446B63696C63;
    if (v1 != 2)
    {
      v3 = 0x74616E6974736564;
    }

    if (*v0)
    {
      v2 = 0x654D6E6F69746361;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_141E3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1434E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_141E64(uint64_t a1)
{
  v2 = sub_142AE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_141EA0(uint64_t a1)
{
  v2 = sub_142AE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void FlowAction.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v47 = a2;
  v2 = sub_2EF0(&qword_316B98, &unk_275840);
  __chkstk_darwin(v2 - 8);
  v48 = &v44 - v3;
  v54 = sub_263AF0();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v49 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2EF0(&qword_31FDB8, &qword_27B750);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v6 = &v44 - v5;
  v7 = sub_2601E0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FlowAction(0);
  __chkstk_darwin(v11);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2601D0();
  v14 = sub_2601C0();
  v16 = v15;
  v17 = *(v8 + 8);
  v50 = v7;
  v17(v10, v7);
  *v13 = v14;
  v13[1] = v16;
  v56 = v11;
  v18 = *(v11 + 44);
  v57 = v13;
  *(v13 + v18) = 0;
  sub_2E18(v72, v72[3]);
  sub_142AE8();
  v19 = v55;
  sub_265120();
  if (v19)
  {
    sub_3080(v72);
  }

  else
  {
    v55 = v17;
    v20 = v50;
    v46 = v18;
    LOBYTE(v59) = 0;
    sub_2EF0(&qword_31FDC8, &qword_27B758);
    sub_8E38(&qword_31FDD0, &qword_31FDC8, &qword_27B758, &protocol conformance descriptor for _DecodeDefault_Wrapper<A>);
    sub_264DB0();
    v45 = v6;
    v21 = *(&v62 + 1);
    v22 = v56;
    if (*(&v62 + 1))
    {
      v23 = v62;
      v24 = v57;
    }

    else
    {
      sub_2601D0();
      v23 = sub_2601C0();
      v21 = v25;
      v55(v10, v20);
      v24 = v57;
      if (*(&v62 + 1))
      {
      }
    }

    v26 = v54;
    v27 = v48;

    *v24 = v23;
    v24[1] = v21;
    LOBYTE(v62) = 1;
    sub_142D48(&qword_31C5A0, &type metadata accessor for ActionMetrics, &protocol conformance descriptor for ActionMetrics);
    v28 = v49;
    v29 = v45;
    sub_264DF0();
    (*(v53 + 32))(v24 + v22[5], v28, v26);
    sub_260620();
    LOBYTE(v62) = 2;
    sub_142D48(&qword_31F0B8, &type metadata accessor for ClickData, &protocol conformance descriptor for ClickData);
    sub_264DB0();
    sub_129C04(v27, v24 + v22[6]);
    sub_2EF0(&qword_31FDA8, &qword_27B740);
    LOBYTE(v59) = 3;
    sub_8E38(&qword_31FDD8, &qword_31FDA8, &qword_27B740, &protocol conformance descriptor for CodeByKind<A>);
    sub_264DF0();
    v30 = v24 + v22[7];
    v31 = v63;
    *v30 = v62;
    *(v30 + 1) = v31;
    *(v30 + 4) = v64;
    v61 = 4;
    sub_CD7F0();
    sub_264DB0();
    v32 = v24 + v22[8];
    v33 = v69;
    v34 = v70;
    *(v32 + 6) = v68;
    *(v32 + 7) = v33;
    *(v32 + 8) = v34;
    v32[144] = v71;
    v35 = v65;
    *(v32 + 2) = v64;
    *(v32 + 3) = v35;
    v36 = v67;
    *(v32 + 4) = v66;
    *(v32 + 5) = v36;
    v37 = v63;
    *v32 = v62;
    *(v32 + 1) = v37;
    LOBYTE(v59) = 5;
    v38 = sub_264D70();
    v39 = (v24 + v22[9]);
    *v39 = v38;
    v39[1] = v40;
    v58 = 6;
    sub_142B3C();
    sub_264DF0();
    v41 = v60;
    v42 = (v24 + v22[10]);
    *v42 = v59;
    v42[1] = v41;
    LOBYTE(v59) = 7;
    sub_2EF0(&qword_316BD8, &qword_268BC0);
    v43 = v52;
    sub_8E38(&qword_316BE0, &qword_316BD8, &qword_268BC0, &protocol conformance descriptor for _DecodeDefault_Wrapper<A>);
    sub_264DB0();
    (*(v51 + 8))(v29, v43);
    *(v24 + v46) = v58 & 1;
    sub_142B90(v24, v47);
    sub_3080(v72);
    sub_142BF4(v24);
  }
}

uint64_t sub_142A10(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t type metadata accessor for FlowAction(uint64_t a1)
{
  result = qword_31FE48;
  if (!qword_31FE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_142AE8()
{
  result = qword_31FDC0;
  if (!qword_31FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FDC0);
  }

  return result;
}

unint64_t sub_142B3C()
{
  result = qword_31FDE0;
  if (!qword_31FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FDE0);
  }

  return result;
}

uint64_t sub_142B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_142BF4(uint64_t a1)
{
  v2 = type metadata accessor for FlowAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_142C98(uint64_t a1, __n128 a2)
{
  result = sub_142D48(&qword_31FD98, type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_142CF0(uint64_t a1, __n128 a2)
{
  result = sub_142D48(&qword_31FDE8, type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_142D48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_142D90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

void sub_142D9C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
}

double sub_142DE4(uint64_t *a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for FlowAction(0) + 28));

  return sub_AF618(v3, a1);
}

uint64_t sub_142E2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for FlowAction(0);
  *a2 = *(a1 + *(result + 44));
  return result;
}

uint64_t sub_142E64(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for FlowAction(0);
  *(a2 + *(result + 44)) = v3;
  return result;
}

uint64_t sub_142EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_263AF0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_2EF0(&qword_316B98, &unk_275840);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_142FF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_263AF0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_2EF0(&qword_316B98, &unk_275840);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_143120(uint64_t a1)
{
  sub_14337C(319, &qword_31FE58, &type metadata for DecodeDefault.Providers.UUIDString, &protocol witness table for DecodeDefault.Providers.UUIDString);
  if (v1 <= 0x3F)
  {
    sub_263AF0();
    if (v2 <= 0x3F)
    {
      sub_143274(319);
      if (v3 <= 0x3F)
      {
        sub_1432CC(319);
        if (v4 <= 0x3F)
        {
          sub_CE950(319, &unk_31FE70, &type metadata for ActionOrigin);
          if (v5 <= 0x3F)
          {
            sub_CE950(319, &qword_316CB8, &type metadata for String);
            if (v6 <= 0x3F)
            {
              sub_14337C(319, &qword_316CC0, &type metadata for DecodeDefault.Providers.False, &protocol witness table for DecodeDefault.Providers.False);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_143274(uint64_t a1)
{
  if (!qword_31F140)
  {
    sub_260620();
    v1 = sub_264A60();
    if (!v2)
    {
      atomic_store(v1, &qword_31F140);
    }
  }
}

void sub_1432CC(uint64_t a1)
{
  if (!qword_31FE60)
  {
    sub_143328();
    v1 = sub_2637D0();
    if (!v2)
    {
      atomic_store(v1, &qword_31FE60);
    }
  }
}

unint64_t sub_143328()
{
  result = qword_31FE68;
  if (!qword_31FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FE68);
  }

  return result;
}

void sub_14337C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for _DecodeDefault_Wrapper(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1433E0()
{
  result = qword_31FEB8;
  if (!qword_31FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FEB8);
  }

  return result;
}

unint64_t sub_143438()
{
  result = qword_31FEC0;
  if (!qword_31FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FEC0);
  }

  return result;
}

unint64_t sub_143490()
{
  result = qword_31FEC8;
  if (!qword_31FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FEC8);
  }

  return result;
}

uint64_t sub_1434E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461446B63696C63 && a2 == 0xE900000000000061 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000293010 == a2 || (sub_264F10() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974 || (sub_264F10() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000000293030 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t NavigationActionMenuButtonView.init(menuIconKind:menus:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for NavigationActionMenuButtonView(0);
  v7 = *(v6 + 28);
  *(a3 + v7) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + *(v6 + 32);
  result = swift_getKeyPath();
  *v8 = result;
  *(v8 + 8) = 0;
  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = a2;
  return result;
}

uint64_t NavigationActionMenuButtonView.init(title:menus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for NavigationActionMenuButtonView(0);
  v9 = *(v8 + 28);
  *(a4 + v9) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v10 = a4 + *(v8 + 32);
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *a4 = 8;
  *(a4 + 24) = a3;
  return result;
}

uint64_t NavigationActionMenuButtonView.body.getter()
{
  v1 = type metadata accessor for NavigationActionMenuButtonView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  sub_147D2C(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationActionMenuButtonView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_147F04(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for NavigationActionMenuButtonView);
  sub_2EF0(&qword_31FED0, &qword_27BA18);
  sub_260A70();
  sub_260A50();
  sub_146CD0();
  sub_1473B4(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_1473B4(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

uint64_t sub_143B18@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v155 = a1;
  v171 = a3;
  v4 = sub_2EF0(&qword_31FF48, &qword_27BA78);
  v135 = *(v4 - 8);
  __chkstk_darwin(v4);
  v134 = &v132[-v5];
  v162 = sub_2EF0(&qword_31FF40, &qword_27BA70);
  v137 = *(v162 - 8);
  __chkstk_darwin(v162);
  v136 = &v132[-v6];
  v7 = sub_2EF0(&qword_31FF38, &qword_27BA68);
  v139 = *(v7 - 8);
  __chkstk_darwin(v7);
  v138 = &v132[-v8];
  v9 = sub_2EF0(&qword_3200E0, &qword_27BBA8);
  v142 = *(v9 - 8);
  __chkstk_darwin(v9);
  v140 = &v132[-v10];
  v11 = sub_2EF0(&qword_3200E8, &qword_27BBB0);
  __chkstk_darwin(v11);
  v13 = &v132[-v12];
  v14 = sub_2616D0();
  v161 = *(v14 - 8);
  __chkstk_darwin(v14);
  v169 = &v132[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_260BD0();
  __chkstk_darwin(v16 - 8);
  v154 = &v132[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_262370();
  v165 = *(v18 - 8);
  v166 = v18;
  __chkstk_darwin(v18);
  v164 = &v132[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v172 = sub_2EF0(&qword_31CEF8, &qword_274050);
  v163 = *(v172 - 8);
  __chkstk_darwin(v172);
  v21 = &v132[-v20];
  v22 = sub_2EF0(&qword_31FF10, &unk_27BA48);
  v143 = *(v22 - 8);
  __chkstk_darwin(v22);
  v141 = &v132[-v23];
  v147 = sub_2EF0(&qword_31FF08, &qword_27BA40);
  v145 = *(v147 - 8);
  __chkstk_darwin(v147);
  v144 = &v132[-v24];
  v150 = sub_2EF0(&qword_3200F0, &qword_27BBB8);
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v148 = &v132[-v25];
  v167 = sub_2EF0(&qword_31FEF8, &unk_27BA30);
  __chkstk_darwin(v167);
  v151 = &v132[-v26];
  v168 = sub_2EF0(&qword_31FEF0, &qword_27BA28);
  v153 = *(v168 - 8);
  __chkstk_darwin(v168);
  v152 = &v132[-v27];
  v28 = sub_2EF0(&qword_3200F8, &qword_27BBC0);
  __chkstk_darwin(v28);
  if (*a2 == 8)
  {
    v155 = v21;
    if (*(a2 + 16))
    {
      v153 = v132;
      __chkstk_darwin(v29);
      __chkstk_darwin(v30);
      v158 = v31;
      v152 = sub_2EF0(&qword_320100, &qword_27BBC8);
      v32 = type metadata accessor for MenuContentView(0);
      v159 = v13;
      v151 = v32;
      v33 = sub_2F9C(&qword_320108, &qword_27BBD0);
      v160 = v9;
      v34 = v33;
      v157 = v11;
      v35 = v4;
      v36 = sub_2F9C(&qword_320110, &qword_27BBD8);
      v37 = sub_148154();
      v170 = v7;
      v38 = v37;
      v156 = v14;
      v174 = &type metadata for Solarium;
      v175 = &protocol witness table for Solarium;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v40 = sub_148450(&qword_320130, &qword_320110, &qword_27BBD8, sub_148154);
      v41 = v172;
      v174 = v34;
      v175 = v172;
      v176 = v36;
      v177 = v38;
      v178 = OpaqueTypeConformance2;
      v179 = v40;
      v154 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
      swift_getOpaqueTypeConformance2();
      sub_1473B4(&qword_320138, type metadata accessor for MenuContentView, &unk_27BB28);
      v42 = v134;
      sub_262750();
      sub_263500();
      v43 = v155;
      sub_261DF0();
      v44 = sub_2EF0(&qword_31FF50, &qword_27BA80);
      v45 = sub_8E38(&qword_31FF58, &qword_31FF48, &qword_27BA78, &protocol conformance descriptor for Menu<A, B>);
      v46 = sub_261760();
      v47 = sub_1473B4(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
      v174 = v35;
      v175 = v46;
      v176 = v45;
      v177 = v47;
      v130 = swift_getOpaqueTypeConformance2();
      v48 = v136;
      sub_262E80();
      (*(v163 + 8))(v43, v41);
      (*(v135 + 8))(v42, v35);
      v49 = v164;
      sub_262350();
      v174 = v35;
      v175 = v41;
      v176 = v44;
      v177 = v45;
      v178 = OpaqueTypeConformance2;
      v179 = v130;
      v50 = swift_getOpaqueTypeConformance2();
      v51 = v138;
      v52 = v162;
      sub_262C70();
      (*(v165 + 8))(v49, v166);
      (*(v137 + 1))(v48, v52);
      v53 = v169;
      sub_2618B0();
      v174 = v52;
      v175 = v50;
      v172 = swift_getOpaqueTypeConformance2();
      v54 = sub_1473B4(&qword_31D590, &type metadata accessor for LiftHoverEffect, &protocol conformance descriptor for LiftHoverEffect);
      v55 = v140;
      v56 = v170;
      v57 = v156;
      sub_262AA0();
      v58 = v57;
      (*(v161 + 8))(v53, v57);
      (v139)[1](v51, v56);
      v59 = v142;
      v60 = v160;
      (*(v142 + 2))(v159, v55, v160);
      swift_storeEnumTagMultiPayload();
      v61 = sub_2F9C(&qword_3193D0, &qword_26CDD0);
      v62 = sub_1470D4();
      v63 = sub_8E38(&qword_319408, &qword_3193D0, &qword_26CDD0, &protocol conformance descriptor for TupleView<A>);
      v174 = v167;
      v175 = v61;
      v176 = v62;
      v177 = v63;
      v64 = swift_getOpaqueTypeConformance2();
      v174 = v168;
      v175 = v58;
      v176 = v64;
      v177 = v54;
      swift_getOpaqueTypeConformance2();
      v174 = v170;
      v175 = v58;
      v176 = v172;
      v177 = v54;
      swift_getOpaqueTypeConformance2();
      v65 = v171;
      sub_261F80();
      v59[1](v55, v60);
      v66 = sub_2EF0(&qword_31FEE8, &qword_27BA20);
      return (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
    }

    else
    {
      v126 = sub_2EF0(&qword_31FEE8, &qword_27BA20);
      v127 = *(*(v126 - 8) + 56);
      v128 = v126;
      v129 = v171;

      return v127(v129, 1, 1, v128);
    }
  }

  else
  {
    v137 = v132;
    __chkstk_darwin(v29);
    v160 = v9;
    __chkstk_darwin(v68);
    v159 = v13;
    v146 = v69;
    v158 = v70;
    v138 = v71;
    v133 = v72;
    v136 = sub_2EF0(&qword_320140, &qword_27BBE8);
    v135 = type metadata accessor for MenuContentView(0);
    v73 = sub_2F9C(&qword_320148, &qword_27BBF0);
    v156 = v14;
    v74 = v73;
    v157 = v11;
    v170 = v7;
    v75 = sub_2F9C(&qword_320150, &qword_27BBF8);
    v139 = v4;
    v76 = v75;
    v77 = sub_148218();
    v174 = &type metadata for Solarium;
    v175 = &protocol witness table for Solarium;
    v78 = v22;
    v79 = swift_getOpaqueTypeConformance2();
    v140 = v79;
    v80 = sub_148450(&qword_320180, &qword_320150, &qword_27BBF8, sub_148218);
    v174 = v74;
    v175 = v172;
    v81 = v172;
    v176 = v76;
    v177 = v77;
    v178 = v79;
    v179 = v80;
    v142 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
    swift_getOpaqueTypeConformance2();
    sub_1473B4(&qword_320138, type metadata accessor for MenuContentView, &unk_27BB28);
    v82 = v141;
    sub_262750();
    sub_263500();
    v83 = v21;
    sub_261DF0();
    v84 = sub_2EF0(&qword_31FF18, &qword_27BA58);
    v137 = &protocol conformance descriptor for Menu<A, B>;
    v85 = sub_8E38(&qword_31FF20, &qword_31FF10, &unk_27BA48, &protocol conformance descriptor for Menu<A, B>);
    v86 = sub_2F9C(&qword_31FF28, &qword_27BA60);
    v87 = sub_261760();
    v136 = v87;
    v88 = sub_2615E0();
    v89 = sub_1473B4(&qword_31FF30, &type metadata accessor for ButtonMenuStyle, &protocol conformance descriptor for ButtonMenuStyle);
    v174 = v78;
    v175 = v88;
    v176 = v85;
    v177 = v89;
    v90 = swift_getOpaqueTypeConformance2();
    v135 = sub_1473B4(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v174 = v86;
    v175 = v87;
    v176 = v90;
    v177 = v135;
    v134 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
    v131 = swift_getOpaqueTypeConformance2();
    v91 = v144;
    v92 = v140;
    sub_262E80();
    v93 = v81;
    (*(v163 + 8))(v83, v81);
    (*(v143 + 8))(v82, v78);
    v94 = v164;
    sub_262350();
    v174 = v78;
    v175 = v93;
    v176 = v84;
    v177 = v85;
    v178 = v92;
    v179 = v131;
    v95 = swift_getOpaqueTypeConformance2();
    v96 = v148;
    v97 = v147;
    sub_262C70();
    (*(v165 + 8))(v94, v166);
    (*(v145 + 8))(v91, v97);
    v173 = v133;
    SymbolImage.Kind.accessibilityLocalizable.getter();
    sub_30CC(v155, &v174);
    v98 = sub_2627B0();
    v100 = v99;
    LOBYTE(v94) = v101;
    v174 = v97;
    v175 = v95;
    v166 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
    swift_getOpaqueTypeConformance2();
    v102 = v151;
    v103 = v150;
    sub_262BF0();
    sub_39DBC(v98, v100, v94 & 1);

    v104 = (*(v149 + 8))(v96, v103);
    __chkstk_darwin(v104);
    v105 = sub_2EF0(&qword_3193D0, &qword_26CDD0);
    v106 = sub_1470D4();
    v107 = sub_8E38(&qword_319408, &qword_3193D0, &qword_26CDD0, &protocol conformance descriptor for TupleView<A>);
    v108 = v152;
    v109 = v167;
    sub_262D60();
    sub_148510(v102);
    v110 = v169;
    sub_2618B0();
    v174 = v109;
    v175 = v105;
    v176 = v106;
    v177 = v107;
    v111 = swift_getOpaqueTypeConformance2();
    v112 = sub_1473B4(&qword_31D590, &type metadata accessor for LiftHoverEffect, &protocol conformance descriptor for LiftHoverEffect);
    v113 = v146;
    v114 = v168;
    v115 = v156;
    sub_262AA0();
    (*(v161 + 8))(v110, v115);
    (*(v153 + 1))(v108, v114);
    v116 = v138;
    v117 = v158;
    (*(v138 + 2))(v159, v113, v158);
    swift_storeEnumTagMultiPayload();
    v174 = v114;
    v175 = v115;
    v176 = v111;
    v177 = v112;
    swift_getOpaqueTypeConformance2();
    v118 = sub_2F9C(&qword_31FF50, &qword_27BA80);
    v119 = sub_8E38(&qword_31FF58, &qword_31FF48, &qword_27BA78, v137);
    v120 = v139;
    v174 = v139;
    v175 = v136;
    v176 = v119;
    v177 = v135;
    v121 = swift_getOpaqueTypeConformance2();
    v174 = v120;
    v175 = v172;
    v176 = v118;
    v177 = v119;
    v178 = v140;
    v179 = v121;
    v122 = swift_getOpaqueTypeConformance2();
    v174 = v162;
    v175 = v122;
    v123 = swift_getOpaqueTypeConformance2();
    v174 = v170;
    v175 = v115;
    v176 = v123;
    v177 = v112;
    swift_getOpaqueTypeConformance2();
    v124 = v171;
    sub_261F80();
    v116[1](v146, v117);
    v125 = sub_2EF0(&qword_31FEE8, &qword_27BA20);
    return (*(*(v125 - 8) + 56))(v124, 0, 1, v125);
  }
}

uint64_t sub_145338@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v15[0] = sub_2EF0(&qword_31CEF8, &qword_274050);
  v3 = *(v15[0] - 8);
  __chkstk_darwin(v15[0]);
  v5 = v15 - v4;
  v6 = sub_2EF0(&qword_320148, &qword_27BBF0);
  __chkstk_darwin(v6);
  v8 = v15 - v7;
  sub_263500();
  v17 = a1;
  v16 = a1;
  type metadata accessor for PlainToolbarIconView(0);
  sub_1473B4(&qword_31D150, type metadata accessor for PlainToolbarIconView, &protocol conformance descriptor for PlainToolbarIconView);
  sub_6684C();
  sub_263510();
  v9 = &v8[*(sub_2EF0(&qword_320168, &qword_27BC00) + 36)];
  v10 = sub_2EF0(&qword_317530, &qword_26FCC0);
  sub_1456F8(v9 + *(v10 + 28));
  *v9 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v12 = &v8[*(v6 + 36)];
  *v12 = KeyPath;
  v12[8] = 2;
  sub_263500();
  sub_261DF0();
  sub_2EF0(&qword_320150, &qword_27BBF8);
  sub_148218();
  v18 = &type metadata for Solarium;
  v19 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_148450(&qword_320180, &qword_320150, &qword_27BBF8, sub_148218);
  v13 = v15[0];
  sub_262E80();
  (*(v3 + 8))(v5, v13);
  return sub_8E80(v8, &qword_320148, &qword_27BBF0);
}

uint64_t sub_145688@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *(type metadata accessor for PlainToolbarIconView(0) + 20);
  *&a2[v4] = swift_getKeyPath();
  sub_2EF0(&qword_318F68, &qword_26C578);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t sub_1456F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 == 8 || (sub_D6684(v3, 7u) & 1) == 0)
  {
    v4 = &enum case for Image.Scale.medium(_:);
  }

  else
  {
    v4 = &enum case for Image.Scale.large(_:);
  }

  v5 = *v4;
  v6 = sub_2630F0();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

uint64_t sub_145790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(sub_2EF0(&qword_320150, &qword_27BBF8) + 36);
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier(0);
  v6 = *(v5 + 20);
  *(v4 + v6) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  *(v4 + *(v5 + 24)) = 1;
  return sub_8198(a1, a2, &qword_320148, &qword_27BBF0);
}

uint64_t sub_145860@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_261760();
  v2 = *(v1 - 8);
  v19 = v1;
  v20 = v2;
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2615E0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2EF0(&qword_31FF28, &qword_27BA60);
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v18 - v10;
  sub_2615D0();
  v12 = sub_2EF0(&qword_31FF10, &unk_27BA48);
  v13 = sub_8E38(&qword_31FF20, &qword_31FF10, &unk_27BA48, &protocol conformance descriptor for Menu<A, B>);
  v14 = sub_1473B4(&qword_31FF30, &type metadata accessor for ButtonMenuStyle, &protocol conformance descriptor for ButtonMenuStyle);
  sub_262EC0();
  (*(v6 + 8))(v8, v5);
  sub_261750();
  v22 = v12;
  v23 = v5;
  v24 = v13;
  v25 = v14;
  swift_getOpaqueTypeConformance2();
  sub_1473B4(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v16 = v18;
  v15 = v19;
  sub_262A50();
  (*(v20 + 8))(v4, v15);
  return (*(v9 + 8))(v11, v16);
}

double sub_145B98@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_260BD0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_2630B0();
  v15[47] = a1;
  SymbolImage.Kind.accessibilityLocalizable.getter();
  sub_30CC(a2, v15);
  v8 = sub_2627B0();
  v10 = v9;
  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  v12 = v11 & 1;
  *(a3 + 24) = v11 & 1;
  *(a3 + 32) = v13;

  sub_43B58(v8, v10, v12);

  sub_39DBC(v8, v10, v12);

  return result;
}

uint64_t sub_145DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  type metadata accessor for ProfileRestrictions(0);
  sub_1473B4(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);

  *a2 = sub_261900();
  *(a2 + 8) = v4;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 56) = 0;
  v5 = type metadata accessor for MenuContentView(0);
  v6 = *(v5 + 24);
  *(a2 + v6) = swift_getKeyPath();
  sub_2EF0(&qword_318150, &qword_279A70);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + *(v5 + 28)) = v3;
  return result;
}

double sub_145E9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v17 = sub_2EF0(&qword_31CEF8, &qword_274050);
  v19 = *(v17 - 8);
  __chkstk_darwin(v17);
  v6 = v15 - v5;
  v22 = a1;
  v23 = a2;
  sub_10A84();

  v7 = sub_2628F0();
  v9 = v8;
  LOBYTE(a2) = v10;
  v12 = v11;
  KeyPath = swift_getKeyPath();
  v22 = v7;
  v23 = v9;
  v24 = a2 & 1;
  v25 = v12;
  v26 = KeyPath;
  v27 = 2;
  sub_43B58(v7, v9, a2 & 1);

  sub_263500();
  sub_261DF0();
  v15[1] = sub_2EF0(&qword_320108, &qword_27BBD0);
  v15[0] = sub_2EF0(&qword_320110, &qword_27BBD8);
  sub_148154();
  v20 = &type metadata for Solarium;
  v21 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_148450(&qword_320130, &qword_320110, &qword_27BBD8, sub_148154);
  v13 = v17;
  sub_262E80();
  sub_39DBC(v7, v9, a2 & 1);

  (*(v19 + 8))(v6, v13);
  sub_39DBC(v7, v9, a2 & 1);

  return result;
}

uint64_t sub_14612C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = a2 + *(sub_2EF0(&qword_320110, &qword_27BBD8) + 36);
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier(0);
  v11 = *(v10 + 20);
  *(v9 + v11) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  *(v9 + *(v10 + 24)) = 1;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v6;
  *(a2 + 40) = v8;
  sub_43B58(v3, v4, v5);
}

uint64_t sub_146238()
{
  v0 = sub_261760();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261750();
  sub_2EF0(&qword_31FF48, &qword_27BA78);
  sub_8E38(&qword_31FF58, &qword_31FF48, &qword_27BA78, &protocol conformance descriptor for Menu<A, B>);
  sub_1473B4(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  sub_262A50();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1463AC(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_147D2C(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationActionMenuButtonView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_147F04(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for NavigationActionMenuButtonView);
  sub_2EF0(&qword_31FED0, &qword_27BA18);
  sub_260A70();
  sub_260A50();
  sub_146CD0();
  sub_1473B4(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
  sub_1473B4(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

uint64_t sub_1465B4(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31AA18, &qword_26FB18);
  __chkstk_darwin(v2);
  v6 = a1;
  sub_1468E4(a1, &v5[-v3]);
  sub_2EF0(&qword_31BAF0, &qword_271290);
  sub_147C70();
  sub_148640(&qword_31BAE8, &qword_31BAF0, &qword_271290, sub_AAD6C);
  return sub_263400();
}

uint64_t sub_1466E0(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarActionMenu(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v9[1] = *(a1 + *(v5 + 32));
  sub_147D2C(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ToolbarActionMenu);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_147F04(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ToolbarActionMenu);

  sub_2EF0(&qword_31B6D0, &qword_27BBA0);
  sub_2EF0(&qword_31B6D8, &unk_270F10);
  sub_8E38(&qword_31B6E0, &qword_31B6D0, &qword_27BBA0, &protocol conformance descriptor for [A]);
  sub_AAD6C();
  sub_1473B4(&qword_31B718, type metadata accessor for ToolbarActionMenuItem, &protocol conformance descriptor for ToolbarActionMenuItem);
  return sub_2633C0();
}

uint64_t sub_1468E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_260B00();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_260BD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  v17 = type metadata accessor for ToolbarActionMenu(0);
  sub_8198(a1 + *(v17 + 20), v9, &qword_316208, &qword_268BD0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_8E80(v9, &qword_316208, &qword_268BD0);
    v18 = 1;
    v19 = v23;
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v13, v16, v10);
    sub_260B10();
    (*(v11 + 8))(v16, v10);
    v20 = v23;
    (*(v4 + 32))(v23, v6, v3);
    v18 = 0;
    v19 = v20;
  }

  return (*(v4 + 56))(v19, v18, 1, v3);
}

uint64_t sub_146BA8(uint64_t a1)
{

  sub_2EF0(&qword_31BA80, &unk_277F20);
  sub_2EF0(&qword_3200B8, &unk_27BB80);
  sub_8E38(&qword_3200C0, &qword_31BA80, &unk_277F20, &protocol conformance descriptor for [A]);
  sub_147BAC();
  sub_1473B4(&qword_3200D8, type metadata accessor for ToolbarActionMenu, &protocol conformance descriptor for ToolbarActionMenu);
  return sub_2633C0();
}

unint64_t sub_146CD0()
{
  result = qword_31FED8;
  if (!qword_31FED8)
  {
    sub_2F9C(&qword_31FED0, &qword_27BA18);
    sub_146D54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FED8);
  }

  return result;
}

unint64_t sub_146D54()
{
  result = qword_31FEE0;
  if (!qword_31FEE0)
  {
    sub_2F9C(&qword_31FEE8, &qword_27BA20);
    sub_2F9C(&qword_31FEF0, &qword_27BA28);
    sub_2616D0();
    sub_2F9C(&qword_31FEF8, &unk_27BA30);
    sub_2F9C(&qword_3193D0, &qword_26CDD0);
    sub_1470D4();
    sub_8E38(&qword_319408, &qword_3193D0, &qword_26CDD0, &protocol conformance descriptor for TupleView<A>);
    swift_getOpaqueTypeConformance2();
    sub_1473B4(&qword_31D590, &type metadata accessor for LiftHoverEffect, &protocol conformance descriptor for LiftHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_2F9C(&qword_31FF38, &qword_27BA68);
    sub_2F9C(&qword_31FF40, &qword_27BA70);
    sub_2F9C(&qword_31FF48, &qword_27BA78);
    sub_2F9C(&qword_31CEF8, &qword_274050);
    sub_2F9C(&qword_31FF50, &qword_27BA80);
    sub_8E38(&qword_31FF58, &qword_31FF48, &qword_27BA78, &protocol conformance descriptor for Menu<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_261760();
    sub_1473B4(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FEE0);
  }

  return result;
}

unint64_t sub_1470D4()
{
  result = qword_31FF00;
  if (!qword_31FF00)
  {
    sub_2F9C(&qword_31FEF8, &unk_27BA30);
    sub_2F9C(&qword_31FF08, &qword_27BA40);
    sub_2F9C(&qword_31FF10, &unk_27BA48);
    sub_2F9C(&qword_31CEF8, &qword_274050);
    sub_2F9C(&qword_31FF18, &qword_27BA58);
    sub_8E38(&qword_31FF20, &qword_31FF10, &unk_27BA48, &protocol conformance descriptor for Menu<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_2F9C(&qword_31FF28, &qword_27BA60);
    sub_261760();
    sub_2615E0();
    sub_1473B4(&qword_31FF30, &type metadata accessor for ButtonMenuStyle, &protocol conformance descriptor for ButtonMenuStyle);
    swift_getOpaqueTypeConformance2();
    sub_1473B4(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1473B4(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31FF00);
  }

  return result;
}

uint64_t sub_1473B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_14742C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2EF0(&qword_316F68, &unk_269C50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1474FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2EF0(&qword_316F68, &unk_269C50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1475AC(uint64_t a1)
{
  sub_147744(319, &qword_31FFC8, &type metadata for SymbolImage.Kind, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_147744(319, &qword_316CB8, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_147B2C(319, &unk_31FFD0, type metadata accessor for ToolbarActionMenu, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_147B2C(319, &qword_316FE8, type metadata accessor for ColorConstants, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_147744(319, &unk_319020, &type metadata for HostingViewBarType, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_147744(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1477EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_31EFC8, &unk_279C60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1478CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_31EFC8, &unk_279C60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_1479B4(uint64_t a1)
{
  sub_95884(319);
  if (v1 <= 0x3F)
  {
    sub_147AC8(319);
    if (v2 <= 0x3F)
    {
      sub_147B2C(319, &qword_31A1F8, &type metadata accessor for OpaqueMetricsFieldsContext, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_147B2C(319, &unk_31FFD0, type metadata accessor for ToolbarActionMenu, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_147AC8(uint64_t a1)
{
  if (!qword_31A200)
  {
    sub_2F9C(&qword_31A208, &unk_27A5E0);
    v1 = sub_2611E0();
    if (!v2)
    {
      atomic_store(v1, &qword_31A200);
    }
  }
}

void sub_147B2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_147BAC()
{
  result = qword_3200C8;
  if (!qword_3200C8)
  {
    sub_2F9C(&qword_3200B8, &unk_27BB80);
    sub_147C70();
    sub_148640(&qword_31BAE8, &qword_31BAF0, &qword_271290, sub_AAD6C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3200C8);
  }

  return result;
}

unint64_t sub_147C70()
{
  result = qword_3200D0;
  if (!qword_3200D0)
  {
    sub_2F9C(&qword_31AA18, &qword_26FB18);
    sub_1473B4(&qword_3184E0, &type metadata accessor for LocalizedText, &protocol conformance descriptor for LocalizedText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3200D0);
  }

  return result;
}

uint64_t sub_147D2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_147D94()
{
  v1 = type metadata accessor for ToolbarActionMenu(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = sub_260BD0();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  if (*(v2 + v1[7]))
  {
  }

  if (*(v2 + v1[8]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_147F04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_147F6C()
{
  v1 = type metadata accessor for NavigationActionMenuButtonView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 28);
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_261180();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_3074(*(v2 + *(v1 + 32)), *(v2 + *(v1 + 32) + 8));

  return swift_deallocObject();
}

uint64_t sub_1480B0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NavigationActionMenuButtonView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_143B18(a1, v6, a2);
}

unint64_t sub_148154()
{
  result = qword_320118;
  if (!qword_320118)
  {
    sub_2F9C(&qword_320108, &qword_27BBD0);
    sub_8E38(&qword_320120, &qword_320128, &qword_27BBE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320118);
  }

  return result;
}

unint64_t sub_148218()
{
  result = qword_320158;
  if (!qword_320158)
  {
    sub_2F9C(&qword_320148, &qword_27BBF0);
    sub_1482D0();
    sub_8E38(&qword_320120, &qword_320128, &qword_27BBE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320158);
  }

  return result;
}

unint64_t sub_1482D0()
{
  result = qword_320160;
  if (!qword_320160)
  {
    sub_2F9C(&qword_320168, &qword_27BC00);
    sub_148388();
    sub_8E38(&qword_317590, &qword_317530, &qword_26FCC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320160);
  }

  return result;
}

unint64_t sub_148388()
{
  result = qword_320170;
  if (!qword_320170)
  {
    sub_2F9C(&qword_320178, &unk_27BC08);
    sub_1473B4(&qword_31D150, type metadata accessor for PlainToolbarIconView, &protocol conformance descriptor for PlainToolbarIconView);
    sub_6684C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320170);
  }

  return result;
}

uint64_t sub_148450(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    sub_1473B4(&qword_319450, type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier, "ݨ\b");
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_148510(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31FEF8, &unk_27BA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_148588@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261BA0();
  *a1 = result;
  return result;
}

uint64_t sub_148640(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ThumbOpinionButtonViewModel.init(state:assetInfo:isLikedButton:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  result = sub_F7CC(a2, a4 + 24);
  *(a4 + 64) = a3;
  return result;
}

uint64_t sub_148710@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ThumbOpinionButton(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_14B700(v9, a1, type metadata accessor for SizeConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1488FC@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ThumbOpinionButton(0);
  sub_8198(v1 + *(v10 + 24), v9, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_14B700(v9, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ThumbOpinionButton.init(viewModel:nextAction:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v99 = a2;
  v96 = type metadata accessor for DelayAction(0);
  __chkstk_darwin(v96);
  v98 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_260560();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_260600();
  __chkstk_darwin(v7 - 8);
  v74 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_2601E0();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_316B98, &unk_275840);
  __chkstk_darwin(v10 - 8);
  v86 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v90 = &v73 - v13;
  __chkstk_darwin(v14);
  v84 = &v73 - v15;
  v16 = type metadata accessor for AssetAction.Kind(0);
  __chkstk_darwin(v16);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for AssetAction(0);
  __chkstk_darwin(v103);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v104 = &v73 - v22;
  v102 = sub_263AF0();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v73 - v25;
  v95 = sub_263B30();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ThumbOpinionButton(0);
  v30 = *(v29 + 20);
  *(a3 + v30) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v91 = v29;
  v31 = *(v29 + 24);
  *(a3 + v31) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v97 = a3;
  sub_1497C8(a1, a3);
  LOBYTE(a3) = *(a1 + 64);
  sub_263AC0();
  sub_1497C8(a1, &v105);
  v32 = swift_allocObject();
  v33 = v108;
  *(v32 + 48) = v107;
  *(v32 + 64) = v33;
  *(v32 + 80) = v109;
  v34 = v106;
  *(v32 + 16) = v105;
  *(v32 + 32) = v34;
  *(v32 + 81) = a3;
  v92 = v28;
  v93 = v26;
  sub_263B10();
  sub_2E18((a1 + 24), *(a1 + 48));
  v81 = sub_2606E0();
  v80 = v35;
  sub_2E18((a1 + 24), *(a1 + 48));
  v79 = sub_2606E0();
  v78 = v36;
  v37 = *(a1 + 48);
  v89 = a1;
  sub_2E18((a1 + 24), v37);
  v38 = sub_260870();
  v39 = v100;
  sub_263AC0();
  *v18 = a3;
  v40 = v18;
  swift_storeEnumTagMultiPayload();
  v41 = sub_260620();
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v44 = v84;
  v83 = v42 + 56;
  v82 = v43;
  v43(v84, 1, 1, v41);
  v45 = v85;
  sub_2601D0();
  v46 = sub_2601C0();
  v48 = v47;
  (*(v87 + 8))(v45, v88);
  *v20 = v46;
  *(v20 + 1) = v48;
  v49 = v86;
  v50 = v80;
  *(v20 + 2) = v81;
  *(v20 + 3) = v50;
  v51 = v78;
  *(v20 + 4) = v79;
  *(v20 + 5) = v51;
  v20[48] = v38 & 1;
  v52 = v103;
  (*(v101 + 16))(&v20[*(v103 + 32)], v39, v102);
  sub_14B5F0(v40, &v20[*(v52 + 40)], type metadata accessor for AssetAction.Kind);
  sub_8198(v44, v49, &qword_316B98, &unk_275840);
  v53 = *(v42 + 48);
  if (v53(v49, 1, v41) == 1)
  {
    AssetAction.Kind.appAnalyticsClickTargetType.getter(v74);
    (*(v76 + 104))(v75, enum case for LinkActionType.click(_:), v77);
    v54 = v90;
    sub_260610();
    sub_8E80(v44, &qword_316B98, &unk_275840);
    sub_14B6A0(v40, type metadata accessor for AssetAction.Kind);
    (*(v101 + 8))(v100, v102);
    if (v53(v49, 1, v41) != 1)
    {
      sub_8E80(v49, &qword_316B98, &unk_275840);
    }
  }

  else
  {
    sub_8E80(v44, &qword_316B98, &unk_275840);
    sub_14B6A0(v40, type metadata accessor for AssetAction.Kind);
    (*(v101 + 8))(v100, v102);
    v55 = v90;
    (*(v42 + 32))(v90, v49, v41);
    v54 = v55;
  }

  v82(v54, 0, 1, v41);
  v56 = v103;
  sub_129C04(v54, &v20[*(v103 + 36)]);
  sub_14B700(v20, v104, type metadata accessor for AssetAction);
  v57 = v89;
  sub_2E18((v89 + 24), *(v89 + 48));
  v58 = sub_2606E0();
  *&v105 = 0xD000000000000010;
  *(&v105 + 1) = 0x8000000000293050;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = v58;
  v114 = v59;
  v115 = 2;
  sub_54B4(&v105);
  v60 = v98;
  sub_263AC0();
  v61 = v96;
  *(v60 + *(v96 + 20)) = 0x3FD999999999999ALL;
  sub_263AC0();
  sub_2EF0(&qword_317258, &unk_27A660);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_2683F0;
  v63 = v95;
  *(v62 + 56) = v95;
  *(v62 + 64) = &protocol witness table for ClosureAction;
  v64 = sub_10934((v62 + 32));
  v65 = v94;
  v66 = v92;
  (*(v94 + 16))(v64, v92, v63);
  *(v62 + 96) = v56;
  *(v62 + 104) = sub_14B658(&qword_319AE8, type metadata accessor for AssetAction, &protocol conformance descriptor for AssetAction);
  v67 = sub_10934((v62 + 72));
  v68 = v104;
  sub_14B5F0(v104, v67, type metadata accessor for AssetAction);
  *(v62 + 136) = v61;
  *(v62 + 144) = sub_14B658(&qword_320198, type metadata accessor for DelayAction, &protocol conformance descriptor for DelayAction);
  v69 = sub_10934((v62 + 112));
  sub_14B5F0(v60, v69, type metadata accessor for DelayAction);
  v70 = v99;
  sub_30CC(v99, v62 + 152);
  v71 = (v97 + *(v91 + 28));
  v71[3] = sub_263BD0();
  v71[4] = &protocol witness table for CompoundAction;
  sub_10934(v71);
  sub_263BC0();
  sub_3080(v70);
  sub_14B6A0(v60, type metadata accessor for DelayAction);
  sub_14B6A0(v68, type metadata accessor for AssetAction);
  (*(v65 + 8))(v66, v63);
  return sub_1498F0(v57);
}

uint64_t type metadata accessor for ThumbOpinionButton(uint64_t a1)
{
  result = qword_320228;
  if (!qword_320228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_149800(uint64_t *a1, char a2)
{

  sub_2EF0(&qword_320290, &qword_27C088);
  sub_263330();
}

uint64_t sub_149888()
{

  sub_3080((v0 + 40));

  return swift_deallocObject();
}

double ThumbOpinionButton.body.getter@<D0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_261760();
  v2 = *(v1 - 8);
  v34 = v1;
  v35 = v2;
  __chkstk_darwin(v1);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2604E0();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for ThumbOpinionButton(0);
  v6 = v5 - 8;
  v31 = *(v5 - 8);
  v7 = *(v31 + 64);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_3201A0, &qword_27BDE0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v13 = (&v31 + *(v12 + 48) - v10);
  v14 = sub_2EF0(&qword_3201A8, &qword_27BDE8);
  v13[3] = v14;
  v13[4] = sub_8E38(&qword_3201B0, &qword_3201A8, &qword_27BDE8, &unk_268B6C);
  v15 = sub_10934(v13);
  v16 = sub_2610B0();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = *(v6 + 36);
  v18 = v32;
  sub_30CC(v32 + v17, &v11[v9[13]]);
  sub_14B5F0(v18, v8, type metadata accessor for ThumbOpinionButton);
  v19 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v20 = swift_allocObject();
  sub_14B700(v8, v20 + v19, type metadata accessor for ThumbOpinionButton);
  sub_2604C0();
  sub_260420();
  v21 = &v11[v9[9]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v9[10];
  *&v11[v22] = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v23 = &v11[v9[11]];
  *v23 = swift_getKeyPath();
  v23[40] = 0;
  v24 = (v15 + *(v14 + 36));
  *v24 = sub_14A3F4;
  v24[1] = v20;
  v25 = v33;
  sub_261750();
  sub_8E38(&qword_3201B8, &qword_3201A0, &qword_27BDE0, &protocol conformance descriptor for BooksActionButton<A>);
  sub_14B658(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v26 = v36;
  v27 = v34;
  sub_262A50();
  (*(v35 + 8))(v25, v27);
  sub_8E80(v11, &qword_3201A0, &qword_27BDE0);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v28 = (v26 + *(sub_2EF0(&qword_3201C0, &qword_27BE88) + 36));
  v29 = v38;
  *v28 = v37;
  v28[1] = v29;
  result = *&v39;
  v28[2] = v39;
  return result;
}

uint64_t sub_149DD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a1;
  v44 = a2;
  v43 = sub_2EF0(&qword_31B578, &qword_270C30) - 8;
  __chkstk_darwin(v43);
  v42 = &v39 - v2;
  v3 = type metadata accessor for SizeConstants.Environment(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_262730();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v40 = sub_2EF0(&qword_31B4C0, &qword_27C030) - 8;
  __chkstk_darwin(v40);
  v15 = &v39 - v14;
  v16 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v39 - v20;
  sub_148710((&v39 - v20));
  v22 = *(v8 + 104);
  v39 = v13;
  v22(v13, enum case for Font.TextStyle.body(_:), v7);
  sub_14B5F0(v21, v18, type metadata accessor for SizeConstants);
  v23 = v13;
  v24 = v7;
  (*(v8 + 16))(v10, v23, v7);
  sub_14B5F0(v18, v15, type metadata accessor for SizeConstants);
  v25 = v6;
  sub_14B5F0(v18, v6, type metadata accessor for SizeConstants.Environment);
  v26 = *(v4 + 32);
  v27 = sub_1CF30(v10, &v6[v26]);
  v28 = *(v8 + 8);
  v28(v10, v24);
  sub_14B6A0(v18, type metadata accessor for SizeConstants);
  v29 = sub_261690();
  (*(*(v29 - 8) + 8))(&v25[v26], v29);
  v30 = 1.0;
  if ((*&v27 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v30 = v27;
  }

  if ((~*&v27 & 0x7FF0000000000000) == 0)
  {
    v27 = v30;
  }

  v31 = v39;
  *&v15[*(v40 + 44)] = v27;
  v28(v31, v24);
  sub_14B6A0(v21, type metadata accessor for SizeConstants);
  v32 = v42;
  sub_14B5F0(v15, v42, type metadata accessor for SizeConstants.Environment);
  sub_8E80(v15, &qword_31B4C0, &qword_27C030);
  *(v32 + *(v43 + 44)) = v27;
  v33 = sub_21FA68(8.0);
  sub_8E80(v32, &qword_31B578, &qword_270C30);
  v34 = sub_261E50();
  v35 = v44;
  *v44 = v34;
  *(v35 + 1) = v33;
  *(v35 + 16) = 0;
  v36 = v35;
  v37 = sub_2EF0(&qword_320270, &qword_27C038);
  return sub_14A464(v41, v36 + *(v37 + 44));
}

uint64_t sub_14A230()
{
  v1 = type metadata accessor for ThumbOpinionButton(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  sub_3080((v2 + 24));
  v3 = v2 + v1[5];
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v5 = sub_261690();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_261180();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  sub_3080((v2 + v1[7]));

  return swift_deallocObject();
}

uint64_t sub_14A3F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ThumbOpinionButton(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_149DD4(v4, a1);
}

uint64_t sub_14A464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v61 = sub_260290();
  v55 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v60 = v51 - v5;
  v59 = sub_264410();
  v54 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = v51 - v8;
  v9 = sub_2EF0(&qword_320278, &qword_27C040);
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin(v9);
  v11 = v51 - v10;
  v12 = sub_2EF0(&qword_320280, &qword_27C048);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v62 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v51 - v16;
  __chkstk_darwin(v18);
  v20 = v51 - v19;
  v51[3] = *(a1 + 64);
  v21 = sub_2630B0();
  v22 = sub_262570();
  KeyPath = swift_getKeyPath();
  v65 = v21;
  v66 = KeyPath;
  v67 = v22;
  sub_2EF0(&qword_317578, &unk_269A20);
  sub_3076C();
  sub_262D70();

  v24 = v20;

  v57 = a1;
  v25 = sub_14AB3C();
  (*(v52 + 32))(v17, v11, v53);
  *&v17[*(v13 + 44)] = v25;
  v26 = v17;
  v28 = v54;
  v27 = v55;
  sub_14B510(v26, v20);
  v29 = v64;
  sub_2643A0();
  v30 = v60;
  sub_260260();
  v31 = v59;
  (*(v28 + 16))(v56, v29, v59);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v33 = v61;
  (*(v27 + 16))(v58, v30, v61);
  sub_264490();
  (*(v27 + 8))(v30, v33);
  (*(v28 + 8))(v64, v31);
  sub_262580();
  v34 = sub_262840();
  v36 = v35;
  v38 = v37;

  if (sub_14ADC8())
  {
    v39 = sub_262120();
  }

  else
  {
    v39 = sub_262140();
  }

  LODWORD(v65) = v39;
  v40 = sub_2627F0();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_39DBC(v34, v36, v38 & 1);

  v47 = v62;
  sub_14B580(v24, v62);
  v48 = v63;
  sub_14B580(v47, v63);
  v49 = v48 + *(sub_2EF0(&qword_320288, &qword_27C080) + 48);
  *v49 = v40;
  *(v49 + 8) = v42;
  *(v49 + 16) = v44 & 1;
  *(v49 + 24) = v46;
  sub_43B58(v40, v42, v44 & 1);

  sub_8E80(v24, &qword_320280, &qword_27C048);
  sub_39DBC(v40, v42, v44 & 1);

  return sub_8E80(v47, &qword_320280, &qword_27C048);
}

uint64_t sub_14AB3C()
{
  v0 = sub_261180();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v7 - 8);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_14ADC8())
  {
    sub_1488FC(v9);
    sub_14B5F0(v9, v6, type metadata accessor for ColorConstants.Environment);
    (*(v1 + 104))(v3, enum case for ColorScheme.dark(_:), v0);
    sub_14B658(&qword_3183A0, &type metadata accessor for ColorScheme, &protocol conformance descriptor for ColorScheme);
    v10 = sub_264390();
    v11 = *(v1 + 8);
    v11(v3, v0);
    v11(v6, v0);
    if (v10)
    {
      v12 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
    }

    else
    {
      v12 = sub_262F80();
    }

    v15 = v12;
    sub_14B6A0(v9, type metadata accessor for ColorConstants);
    return v15;
  }

  else
  {
    v13 = [objc_opt_self() systemFillColor];

    return sub_262EE0();
  }
}

BOOL sub_14ADC8()
{
  if (*(v0 + 64) == 1)
  {
    sub_2EF0(&qword_320290, &qword_27C088);
    sub_263320();
    return v3 == 0;
  }

  else
  {
    sub_2EF0(&qword_320290, &qword_27C088);
    sub_263320();
    return v3 == 1;
  }
}

unint64_t sub_14AE90()
{
  result = qword_3201C8;
  if (!qword_3201C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3201C8);
  }

  return result;
}

__n128 sub_14AF10(uint64_t a1, uint64_t a2)
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

uint64_t sub_14AF34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_14AF7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_14AFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2EF0(&qword_317BF8, &unk_26F930);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_2EF0(&qword_316F68, &unk_269C50);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_14B144(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_2EF0(&qword_317BF8, &unk_26F930);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_2EF0(&qword_316F68, &unk_269C50);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_14B280(uint64_t a1)
{
  sub_14B364(319, &qword_317C68, type metadata accessor for SizeConstants);
  if (v1 <= 0x3F)
  {
    sub_14B364(319, &qword_316FE8, type metadata accessor for ColorConstants);
    if (v2 <= 0x3F)
    {
      sub_134888();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_14B364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_14B3BC()
{
  result = qword_320268;
  if (!qword_320268)
  {
    sub_2F9C(&qword_3201C0, &qword_27BE88);
    sub_2F9C(&qword_3201A0, &qword_27BDE0);
    sub_261760();
    sub_8E38(&qword_3201B8, &qword_3201A0, &qword_27BDE0, &protocol conformance descriptor for BooksActionButton<A>);
    sub_14B658(&qword_319400, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320268);
  }

  return result;
}

uint64_t sub_14B510(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_320280, &qword_27C048);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_14B580(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_320280, &qword_27C048);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14B5F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_14B658(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_14B6A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_14B700(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Bool __swiftcall ListItemThumbnailViewModel.isSmallGenreStyle(isCompact:)(Swift::Bool isCompact)
{
  sub_3F27C(v1, v7);
  if (v10)
  {
    goto LABEL_5;
  }

  v3 = v8;
  if (!isCompact && v9 != -1)
  {
    v3 = v9;
  }

  if (v3)
  {
LABEL_5:
    v4 = 0;
  }

  else
  {
    v6 = 7;
    if (isCompact || v9 == -1)
    {
      v6 = 5;
    }

    v4 = LOBYTE(v7[v6]) == 1;
  }

  sub_3080(v7);
  return v4;
}

uint64_t static ListItemThumbnailStyle.single(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  result = sub_30CC(a1, a3);
  *(a3 + 40) = v4;
  *(a3 + 48) = v5;
  *(a3 + 56) = 0;
  *(a3 + 64) = 255;
  return result;
}

__n128 ListItemThumbnailViewModel.init(style:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

double ListItemThumbnailViewModel.unscaledTrailingPadding(isCompact:)(char a1)
{
  sub_3F27C(v1, v6);
  if ((v10 & 1) == 0)
  {
    v5 = v8;
    if (!(a1 & 1 | (v9 == 0xFF)))
    {
      v5 = v9;
    }

    if (v5 <= 1u)
    {
      if (v5)
      {
        sub_3080(v6);
        return 12.0;
      }
    }

    else if (v5 - 2 < 2)
    {
      sub_3080(v6);
      return 16.0;
    }

    sub_3080(v6);
    return 10.0;
  }

  v3 = v7;
  sub_3080(v6);
  result = 10.0;
  if (v3)
  {
    return 12.0;
  }

  return result;
}

unint64_t sub_14BB30()
{
  result = qword_320298;
  if (!qword_320298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320298);
  }

  return result;
}

unint64_t sub_14BB88()
{
  result = qword_3202A0;
  if (!qword_3202A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3202A0);
  }

  return result;
}

uint64_t sub_14BBE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 66))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 65);
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

uint64_t sub_14BC30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 65) = -a2;
    }
  }

  return result;
}

uint64_t sub_14BC98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 66))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 65);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_14BCD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 65) = -a2;
    }
  }

  return result;
}

uint64_t sub_14BD24(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 65) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SingleThumbnailStyle(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SingleThumbnailStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_14BDEC(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_14BE04(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

void Metrics.NavigationType.init(rawValue:)(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_300CF8;
  v8._object = a2;
  v6 = sub_264D40(v5, v8);

  v7 = 6;
  if (v6 < 6)
  {
    v7 = v6;
  }

  *a3 = v7;
}

uint64_t Metrics.NavigationType.rawValue.getter()
{
  v1 = *v0;
  v2 = 1801675106;
  v3 = 7368560;
  v4 = 1952867692;
  if (v1 != 4)
  {
    v4 = 0x7468676972;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x64726177726F66;
  if (v1 != 1)
  {
    v5 = 1752397168;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

double sub_14BF78(uint64_t a1)
{
  sub_264500();

  return result;
}

void sub_14C058(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1801675106;
  v5 = 0xE300000000000000;
  v6 = 7368560;
  v7 = 0xE400000000000000;
  v8 = 1952867692;
  if (v2 != 4)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x64726177726F66;
  if (v2 != 1)
  {
    v10 = 1752397168;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t static Metrics.createPageMetrics(pageType:pageId:navigationType:networkPerformance:includePageInstruction:includeImpressionsInstruction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v71 = a8;
  v68 = a7;
  v80 = a4;
  v78 = a3;
  v79 = a2;
  v77 = a1;
  v82 = a9;
  v11 = sub_263DD0();
  __chkstk_darwin(v11 - 8);
  v81 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_263A30();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v67 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v66 = &v63 - v15;
  v65 = sub_2601E0();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2EF0(&qword_320358, &qword_27C330);
  __chkstk_darwin(v18 - 8);
  v20 = &v63 - v19;
  v21 = sub_2640D0();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_263A10();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v69 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v72 = &v63 - v27;
  __chkstk_darwin(v28);
  v83 = &v63 - v29;
  v30 = *a5;
  v70 = sub_2EF0(&qword_3160C0, &qword_267D48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D30;
  *(inited + 32) = 0x697461676976616ELL;
  v32 = inited + 32;
  *(inited + 40) = 0xEA00000000006E6FLL;
  if (v30 > 2)
  {
    if (v30 == 3)
    {
      v33 = 0xE300000000000000;
      v34 = 7368560;
    }

    else if (v30 == 4)
    {
      v33 = 0xE400000000000000;
      v34 = 1952867692;
    }

    else
    {
      v33 = 0xE500000000000000;
      v34 = 0x7468676972;
    }
  }

  else if (v30)
  {
    if (v30 == 1)
    {
      v33 = 0xE700000000000000;
      v34 = 0x64726177726F66;
    }

    else
    {
      v33 = 0xE400000000000000;
      v34 = 1752397168;
    }
  }

  else
  {
    v33 = 0xE400000000000000;
    v34 = 1801675106;
  }

  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v34;
  *(inited + 56) = v33;
  sub_E678(inited);
  swift_setDeallocating();
  sub_8E80(v32, &qword_3160C8, &unk_267D50);
  sub_14CEE0(a6, v20);
  v35 = *(v22 + 48);
  if (v35(v20, 1, v21) == 1)
  {
    sub_2601D0();
    v63 = sub_2601C0();
    (*(v64 + 8))(v17, v65);
    sub_2640C0();
    v36 = v35(v20, 1, v21);
    v37 = v73;
    v38 = v83;
    if (v36 != 1)
    {
      sub_8E80(v20, &qword_320358, &qword_27C330);
    }
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
    v37 = v73;
    v38 = v83;
  }

  if (qword_3158E0 != -1)
  {
    swift_once();
  }

  v39 = sub_2639E0();
  sub_B080(v39, qword_353F10);
  sub_2639B0();

  (*(v22 + 8))(v24, v21);
  v40 = _swiftEmptyArrayStorage;
  sub_E678(_swiftEmptyArrayStorage);
  v41 = v72;
  sub_2639A0();

  v42 = v74;
  v43 = v69;
  if (v68)
  {
    (*(v37 + 16))(v69, v38, v74);
    sub_2EF0(&qword_320360, &qword_27C338);
    v44 = sub_263A90();
    v45 = *(v44 - 8);
    v46 = *(v45 + 72);
    v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_269100;
    v49 = v48 + v47;
    sub_263A80();
    if (qword_315A50 != -1)
    {
      swift_once();
    }

    v50 = sub_B080(v44, qword_320340);
    (*(v45 + 16))(v49 + v46, v50, v44);
    sub_39E3C(v48);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v51 = v66;
    sub_263A20();
    v40 = sub_E9564(0, 1, 1, _swiftEmptyArrayStorage);
    v53 = v40[2];
    v52 = v40[3];
    if (v53 >= v52 >> 1)
    {
      v40 = sub_E9564((v52 > 1), v53 + 1, 1, v40);
    }

    v40[2] = v53 + 1;
    (*(v75 + 32))(v40 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v53, v51, v76);
  }

  if (v71)
  {
    (*(v37 + 16))(v43, v41, v42);
    sub_2EF0(&qword_320360, &qword_27C338);
    sub_263A90();
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_269100;
    sub_263A60();
    sub_263A50();
    sub_39E3C(v54);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v55 = v67;
    sub_263A20();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_E9564(0, v40[2] + 1, 1, v40);
    }

    v57 = v40[2];
    v56 = v40[3];
    v38 = v83;
    if (v57 >= v56 >> 1)
    {
      v40 = sub_E9564((v56 > 1), v57 + 1, 1, v40);
    }

    v40[2] = v57 + 1;
    (*(v75 + 32))(v40 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v57, v55, v76);
  }

  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_269100;
  *(v58 + 32) = 0x6570795465676170;
  v59 = v77;
  *(v58 + 40) = 0xE800000000000000;
  *(v58 + 48) = v59;
  *(v58 + 56) = v79;
  *(v58 + 72) = &type metadata for String;
  *(v58 + 80) = 0x644965676170;
  *(v58 + 120) = &type metadata for String;
  v60 = v78;
  *(v58 + 88) = 0xE600000000000000;
  *(v58 + 96) = v60;
  *(v58 + 104) = v80;

  sub_E678(v58);
  swift_setDeallocating();
  sub_2EF0(&qword_3160C8, &unk_267D50);
  swift_arrayDestroy();
  sub_263DC0();
  sub_D0B04(_swiftEmptyArrayStorage);
  sub_263A40();
  v61 = *(v37 + 8);
  v61(v41, v42);
  return (v61)(v38, v42);
}

uint64_t sub_14CDC8()
{
  v0 = sub_263A90();
  sub_B600(v0, qword_320340);
  sub_B080(v0, qword_320340);
  return sub_263A70();
}

uint64_t static PageMetrics.InvocationPoint.cardDidAppear.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_315A50 != -1)
  {
    swift_once();
  }

  v2 = sub_263A90();
  v3 = sub_B080(v2, qword_320340);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_14CEE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_320358, &qword_27C330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_14CF54()
{
  result = qword_320368;
  if (!qword_320368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320368);
  }

  return result;
}

unint64_t sub_14CFB8()
{
  result = qword_320370;
  if (!qword_320370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_320370);
  }

  return result;
}

unint64_t static SynchronousNativeIntentDispatcher.Builder.buildBlock(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  v4 = (a2 + 8);
  sub_8E80(a2 + 8, &qword_320378, &qword_28A310);
  *v4 = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0;
  result = sub_F484(_swiftEmptyArrayStorage);
  *v3 = result;
  v42 = *(a1 + 16);
  if (!v42)
  {
    return result;
  }

  v6 = 0;
  v43 = a1 + 32;
  v41 = v3;
LABEL_5:
  v44 = v6;
  sub_14FE2C(v43 + 48 * v6, v57);
  v7 = v57[0];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  v56 = *v3;
  v10 = v7 + 64;
  v11 = 1 << *(v7 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v7 + 64);
  v14 = (v11 + 63) >> 6;
  v45 = v7;

  v15 = 0;
  while (v13)
  {
    v17 = v15;
LABEL_21:
    v20 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v21 = v20 | (v17 << 6);
    v22 = (*(v45 + 48) + 16 * v21);
    v24 = *v22;
    v23 = v22[1];
    sub_30CC(*(v45 + 56) + 40 * v21, &v46);
    *&v49 = v24;
    *(&v49 + 1) = v23;
    sub_F7CC(&v46, &v50);

LABEL_22:
    v46 = v49;
    v47[0] = v50;
    v47[1] = v51;
    v48 = v52;
    v25 = *(&v49 + 1);
    if (!*(&v49 + 1))
    {
      v55 = 0;
      memset(v54, 0, sizeof(v54));
      v53 = 0u;
LABEL_4:

      v6 = v44 + 1;
      v3 = v41;
      *v41 = v9;
      result = sub_14FE88(v57);
      if (v44 + 1 == v42)
      {
        return result;
      }

      goto LABEL_5;
    }

    v26 = v46;
    sub_30CC(v47, v54);
    *&v53 = v26;
    *(&v53 + 1) = v25;

    sub_8E80(&v46, &qword_320380, &qword_27C460);
    v27 = *(&v53 + 1);
    if (!*(&v53 + 1))
    {
      goto LABEL_4;
    }

    v28 = v53;
    sub_F7CC(v54, &v49);
    v30 = sub_D410(v28, v27);
    v31 = v9[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_38;
    }

    v34 = v29;
    if (v9[3] >= v33)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v9 = v56;
        if (v29)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_14F5C4(&qword_316150, &qword_267F40, sub_FBD4);
        v9 = v56;
        if (v34)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      sub_14E67C(v33, isUniquelyReferenced_nonNull_native & 1, &qword_316150, &qword_267F40, sub_FBD4);
      v35 = sub_D410(v28, v27);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_40;
      }

      v30 = v35;
      v9 = v56;
      if (v34)
      {
LABEL_9:

        v16 = (v9[7] + 40 * v30);
        sub_3080(v16);
        sub_F7CC(&v49, v16);
        goto LABEL_10;
      }
    }

    v9[(v30 >> 6) + 8] |= 1 << v30;
    v37 = (v9[6] + 16 * v30);
    *v37 = v28;
    v37[1] = v27;
    sub_F7CC(&v49, v9[7] + 40 * v30);
    v38 = v9[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_39;
    }

    v9[2] = v40;
LABEL_10:
    isUniquelyReferenced_nonNull_native = 1;
  }

  if (v14 <= v15 + 1)
  {
    v18 = v15 + 1;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18 - 1;
  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      v13 = 0;
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      v15 = v19;
      v49 = 0u;
      goto LABEL_22;
    }

    v13 = *(v10 + 8 * v17);
    ++v15;
    if (v13)
    {
      v15 = v17;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_264FB0();
  __break(1u);
  return result;
}

uint64_t static SynchronousNativeIntentDispatcher.Builder.buildExpression<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  v11 = 0u;
  v10 = 0u;
  sub_8E80(&v10, &qword_320378, &qword_28A310);
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v9 = sub_F484(_swiftEmptyArrayStorage);
  SynchronousNativeIntentDispatcher.registering<A>(_:)(a1, a2, a3, a4);
  return sub_14FE88(&v9);
}

uint64_t static SynchronousNativeIntentDispatcher.Builder.buildOptional(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_14FEDC(a1, v5);
  if (*&v5[0])
  {
    v4 = v5[1];
    *a2 = v5[0];
    *(a2 + 16) = v4;
    *(a2 + 32) = v5[2];
  }

  else
  {
    *(a2 + 40) = 0;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    sub_8E80(a2 + 8, &qword_320378, &qword_28A310);
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0;
    result = sub_F484(_swiftEmptyArrayStorage);
    *a2 = result;
    if (*&v5[0])
    {
      return sub_8E80(v5, &qword_320388, &qword_27C468);
    }
  }

  return result;
}

void sub_14D604(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_2EF0(a3, a4);
  v37 = v7;
  v9 = sub_264D00();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 32 * v23;
      if (v37)
      {
        a5(v27, v39);
      }

      else
      {
        sub_A7C18(v27, v39);
      }

      sub_265050();
      sub_264500();
      v28 = sub_265080();
      v29 = -1 << *(v10 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      a5(v39, (*(v10 + 56) + 32 * v18));
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v36 = 1 << *(v8 + 32);
    v6 = v5;
    if (v36 >= 64)
    {
      bzero((v8 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
}

void sub_14D8C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2EF0(&qword_3161A8, &qword_267F88);
  v6 = sub_264D00();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (v4)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_F7CC((*(v5 + 56) + 40 * v23), v37);
      }

      else
      {
        sub_F7E4(v24, &v38);
        sub_30CC(*(v5 + 56) + 40 * v23, v37);
      }

      v27 = sub_264B40(*(v7 + 40));
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 40 * v15;
      v17 = *(v7 + 48) + v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      sub_F7CC(v37, *(v7 + 56) + v16);
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_14DB8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = _s8RatioKeyVMa(0);
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_2EF0(&qword_3161A0, &qword_267F80);
  v40 = v4;
  v9 = sub_264D00();
  v10 = v9;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v8 + 48);
      v41 = *(v38 + 72);
      v24 = v23 + v41 * v22;
      if (v40)
      {
        sub_FB18(v24, v7);
      }

      else
      {
        sub_FA58(v24, v7);
      }

      v25 = *(*(v8 + 56) + 8 * v22);
      sub_265050();
      sub_262730();
      sub_14FFB8(&qword_316188, &type metadata accessor for Font.TextStyle, &protocol conformance descriptor for Font.TextStyle);
      sub_264330();
      sub_261690();
      sub_14FFB8(&qword_316190, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
      sub_264330();
      v26 = sub_265080();
      v27 = -1 << *(v10 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v8 = v37;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v8 = v37;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_FB18(v7, *(v10 + 48) + v41 * v18);
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_14DF7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2EF0(&qword_31E960, &qword_278FD8);
  v47 = v4;
  v6 = sub_264D00();
  v7 = v6;
  if (*(v5 + 16))
  {
    v44 = v3;
    v45 = v5;
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
    v14 = v6 + 64;
    v46 = v6;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v48 = (v12 - 1) & v12;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v51 = *v25;
      v27 = (*(v5 + 56) + 48 * v24);
      v28 = v27[1];
      v49 = *v27;
      v30 = v27[2];
      v29 = v27[3];
      v32 = v27[4];
      v31 = v27[5];
      if ((v47 & 1) == 0)
      {
      }

      v50 = v29;
      v33 = v30;
      v34 = v28;
      sub_265050();
      sub_264500();
      v35 = sub_265080();
      v7 = v46;
      v36 = -1 << *(v46 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v16 = v50;
        v17 = v31;
        v18 = v32;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v14 + 8 * v38);
          if (v42 != -1)
          {
            v15 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v37) & ~*(v14 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v16 = v50;
      v17 = v31;
      v18 = v32;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v19 = (*(v46 + 48) + 16 * v15);
      *v19 = v51;
      v19[1] = v26;
      v20 = (*(v46 + 56) + 48 * v15);
      v12 = v48;
      *v20 = v49;
      v20[1] = v34;
      v20[2] = v33;
      v20[3] = v16;
      v20[4] = v18;
      v20[5] = v17;
      ++*(v46 + 16);
      v5 = v45;
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v48 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if (v47)
    {
      v43 = 1 << *(v5 + 32);
      if (v43 >= 64)
      {
        bzero(v9, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v43;
      }

      *(v5 + 16) = 0;
    }

    v3 = v44;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_14E2B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2EF0(&qword_3160F0, &unk_267EE0);
  v38 = v4;
  v6 = sub_264D00();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 72 * v21;
      if (v38)
      {
        v45 = *(v25 + 16);
        v46 = *(v25 + 32);
        v47 = *(v25 + 48);
        v48 = *(v25 + 64);
        v44 = *v25;
      }

      else
      {
        v39 = *v25;
        v27 = *(v25 + 32);
        v26 = *(v25 + 48);
        v28 = *(v25 + 16);
        v43 = *(v25 + 64);
        v41 = v27;
        v42 = v26;
        v40 = v28;

        sub_14FF5C(&v39, &v44);
        v46 = v41;
        v47 = v42;
        v48 = v43;
        v44 = v39;
        v45 = v40;
      }

      sub_265050();
      sub_264500();
      v29 = sub_265080();
      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 72 * v15;
      *(v17 + 16) = v45;
      *(v17 + 32) = v46;
      *(v17 + 48) = v47;
      *(v17 + 64) = v48;
      *v17 = v44;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_14E67C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_2EF0(a3, a4);
  v37 = v7;
  v9 = sub_264D00();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 40 * v23;
      if (v37)
      {
        a5(v27, v39);
      }

      else
      {
        sub_30CC(v27, v39);
      }

      sub_265050();
      sub_264500();
      v28 = sub_265080();
      v29 = -1 << *(v10 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      a5(v39, (*(v10 + 56) + 40 * v18));
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v36 = 1 << *(v8 + 32);
    v6 = v5;
    if (v36 >= 64)
    {
      bzero((v8 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
}

void sub_14E960(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_2EF0(a3, a4);
  v36 = v6;
  v8 = sub_264D00();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = 16 * (v20 | (v10 << 6));
      v24 = (*(v7 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v37 = *(*(v7 + 56) + v23);
      if ((v36 & 1) == 0)
      {
      }

      sub_265050();
      sub_264500();
      v27 = sub_265080();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = 16 * v17;
      v19 = (*(v9 + 48) + v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v9 + 56) + v18) = v37;
      ++*(v9 + 16);
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_14EC54(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  sub_2EF0(a1, a2);
  v5 = *v3;
  v6 = sub_264CF0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    v8 = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 64 + 8 * v9)
    {
      memmove(v8, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_A7C18(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }
}

void sub_14EDF4()
{
  v1 = v0;
  sub_2EF0(&qword_3161A8, &qword_267F88);
  v2 = *v0;
  v3 = sub_264CF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 40 * (v14 | (v8 << 6));
        sub_F7E4(*(v2 + 48) + v17, v22);
        sub_30CC(*(v2 + 56) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v22[0];
        v20 = v22[1];
        *(v18 + 32) = v23;
        *v18 = v19;
        *(v18 + 16) = v20;
        sub_F7CC(v21, *(v4 + 56) + v17);
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
}

void sub_14EF8C()
{
  v1 = v0;
  v2 = _s8RatioKeyVMa(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2EF0(&qword_3161A0, &qword_267F80);
  v6 = *v0;
  v7 = sub_264CF0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v25 = v1;
    v9 = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_FA58(*(v6 + 48) + v22, v5);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_FB18(v5, *(v8 + 48) + v22);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v25;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_14F1A0()
{
  sub_2EF0(&qword_31E960, &qword_278FD8);
  v28 = v0;
  v1 = *v0;
  v29 = sub_264CF0();
  if (*(v1 + 16))
  {
    v2 = (v29 + 64);
    v3 = ((1 << *(v29 + 32)) + 63) >> 6;
    if (v29 != v1 || v2 >= v1 + 64 + 8 * v3)
    {
      memmove(v2, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v29 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = 16 * v14;
        v16 = (*(v1 + 48) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        v14 *= 48;
        v19 = (*(v1 + 56) + v14);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v24 = v19[4];
        v25 = v19[5];
        v26 = (*(v29 + 48) + v15);
        *v26 = v18;
        v26[1] = v17;
        v27 = (*(v29 + 56) + v14);
        *v27 = v20;
        v27[1] = v21;
        v27[2] = v22;
        v27[3] = v23;
        v27[4] = v24;
        v27[5] = v25;
      }

      while (v9);
    }

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
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v28 = v29;
  }
}

void sub_14F388()
{
  v1 = v0;
  sub_2EF0(&qword_3160F0, &unk_267EE0);
  v2 = *v0;
  v3 = sub_264CF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 72;
        v22 = *(v2 + 56) + v17;
        v24 = *(v22 + 16);
        v23 = *(v22 + 32);
        v25 = *(v22 + 48);
        v36 = *(v22 + 64);
        v35 = v25;
        v32 = *v22;
        v33 = v24;
        v34 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v32;
        v28 = v33;
        v29 = v34;
        v30 = v35;
        *(v27 + 64) = v36;
        *(v27 + 32) = v29;
        *(v27 + 48) = v30;
        *(v27 + 16) = v28;

        sub_14FF5C(&v32, v31);
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
}

void sub_14F5C4(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  sub_2EF0(a1, a2);
  v5 = *v3;
  v6 = sub_264CF0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    v8 = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 64 + 8 * v9)
    {
      memmove(v8, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 40 * v20;
        sub_30CC(*(v5 + 56) + 40 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }
}

void sub_14F77C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_2EF0(a1, a2);
  v4 = *v2;
  v5 = sub_264CF0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + v19);
        v24 = (*(v6 + 48) + v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + v19) = v23;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

uint64_t sub_14F8D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_30CC((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_14F920@<X0>(uint64_t a1@<X8>)
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
    sub_30CC(*(v3 + 56) + 40 * v13, v21);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_F7CC(v21, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v24;
      v21[2] = v25;
      v22 = v26;
      v20(v21);
      return sub_8E80(v21, &qword_320380, &qword_27C460);
    }

    else
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
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
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
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

  return result;
}

void sub_14FA98(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v6) = a4;
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;

  sub_14F920(&v45);
  v12 = v46;
  if (!v46)
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_F7CC(v47, v44);
  v14 = *a5;
  v15 = sub_D410(v13, v12);
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

  LOBYTE(v21) = v16;
  if (v14[3] < v20)
  {
    sub_14E67C(v20, v6 & 1, &qword_316150, &qword_267F40, sub_FBD4);
    v15 = sub_D410(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v15 = sub_264FB0();
    __break(1u);
  }

  if ((v6 & 1) == 0)
  {
    v26 = v15;
    sub_14F5C4(&qword_316150, &qword_267F40, sub_FBD4);
    v15 = v26;
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
    v24 = v15;

    v25 = (v23[7] + 40 * v24);
    sub_3080(v25);
    sub_F7CC(v44, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v23[6] + 16 * v15);
  *v27 = v13;
  v27[1] = v12;
  sub_F7CC(v44, v23[7] + 40 * v15);
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_14F920(&v45);
    v6 = v46;
    if (v46)
    {
      v12 = 40;
      v13 = &qword_267F40;
      do
      {
        v21 = v45;
        sub_F7CC(v47, v44);
        v32 = *a5;
        v33 = sub_D410(v21, v6);
        v35 = v32[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        v38 = v34;
        if (v32[3] < v37)
        {
          sub_14E67C(v37, 1, &qword_316150, &qword_267F40, sub_FBD4);
          v33 = sub_D410(v21, v6);
          if ((v38 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (v38)
        {
          v30 = v33;

          v31 = (v40[7] + 40 * v30);
          sub_3080(v31);
          sub_F7CC(v44, v31);
        }

        else
        {
          v40[(v33 >> 6) + 8] |= 1 << v33;
          v41 = (v40[6] + 16 * v33);
          *v41 = v21;
          v41[1] = v6;
          sub_F7CC(v44, v40[7] + 40 * v33);
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_14F920(&v45);
        v6 = v46;
      }

      while (v46);
    }

LABEL_25:
    sub_141650(v48);

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_14FEDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_320388, &qword_27C468);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14FFB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t View.impressionable(_:position:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_263F70();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_263F60();
  sub_262910();
  return (*(v6 + 8))(v8, v5);
}

uint64_t PDFCoverEffect.init(shadowScale:cornerRadius:)@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = *(type metadata accessor for PDFCoverEffect(0) + 24);
  *(a1 + v6) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  result = swift_storeEnumTagMultiPayload();
  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t type metadata accessor for PDFCoverEffect(uint64_t a1)
{
  result = qword_320440;
  if (!qword_320440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_150224@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PDFCoverEffect(0);
  sub_8198(v1 + *(v10 + 24), v9, &qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_261180();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t PDFCoverEffect.body(cover:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for PDFCoverEffect(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_2EF0(&qword_320398, &qword_27C500);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v18 - v12;
  (*(v9 + 16))(&v18 - v12, a1, v8, v11);
  sub_150980(v2, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + *(v6 + 80) + v14) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v14, v13, v8);
  result = sub_1509E8(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  *a2 = sub_150A4C;
  a2[1] = v16;
  return result;
}

double sub_15060C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = a2;
  v38 = a3;
  v37 = sub_261180();
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = sub_2EF0(&qword_3204B8, &qword_27C690);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = (&v35 - v11);
  sub_261420();
  v14 = v13;
  *v12 = sub_263530();
  v12[1] = v15;
  v16 = sub_2EF0(&qword_3204C0, &qword_27C698);
  sub_150A50(a1, v12 + *(v16 + 44), v14);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v17 = v39;
  LOBYTE(a1) = v40;
  v18 = v41;
  v19 = v42;
  v20 = v43;
  v21 = v44;
  v46 = v40;
  v45 = v42;
  v22 = v12 + *(sub_2EF0(&qword_3204C8, &qword_27C6A0) + 36);
  *v22 = xmmword_27C480;
  *(v22 + 2) = v17;
  v22[24] = a1;
  *(v22 + 4) = v18;
  v22[40] = v19;
  *(v22 + 6) = v20;
  *(v22 + 7) = v21;
  v23 = *(v35 + 8);
  v24 = v12 + *(v10 + 44);
  v25 = *(sub_2617E0() + 20);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = sub_261DD0();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  *v24 = v23;
  *(v24 + 1) = v23;
  *&v24[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  sub_262F80();
  sub_150224(v8);
  v29 = v36;
  v28 = v37;
  (*(v4 + 104))(v36, enum case for ColorScheme.dark(_:), v37);
  sub_261170();
  v30 = *(v4 + 8);
  v30(v29, v28);
  v30(v8, v28);
  v31 = sub_263000();

  v32 = v38;
  sub_15238C(v12, v38);
  v33 = v32 + *(sub_2EF0(&qword_3204D0, &qword_27C6A8) + 36);
  *v33 = v31;
  result = 8.0;
  *(v33 + 8) = xmmword_26BA30;
  *(v33 + 24) = 0x4000000000000000;
  return result;
}

uint64_t sub_150980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PDFCoverEffect(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1509E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PDFCoverEffect(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_150A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v113 = a2;
  v111 = sub_2EF0(&qword_3204D8, &qword_27C6B0) - 8;
  __chkstk_darwin(v111);
  v112 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v109 = &v96 - v8;
  v9 = sub_2EF0(&qword_3204E0, &qword_27C6B8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v110 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v96 - v13;
  v15 = sub_2EF0(&qword_3204E8, &qword_27C6C0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v116 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v96 - v19;
  v21 = sub_2EF0(&qword_3204F0, &qword_27C6C8);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v115 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v96 - v25;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v27 = sub_2EF0(&qword_320398, &qword_27C500);
  v28 = *(*(v27 - 8) + 16);
  v117 = v26;
  v28(v26, a1, v27);
  v29 = &v26[*(v22 + 44)];
  v30 = v122;
  *v29 = v121;
  *(v29 + 1) = v30;
  *(v29 + 2) = v123;
  v103 = sub_2EF0(&qword_319268, &qword_279380);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_269100;
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v31 + 32) = sub_263450();
  *(v31 + 40) = v32;
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v31 + 48) = sub_263450();
  *(v31 + 56) = v33;
  sub_263700();
  sub_263710();
  sub_263460();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v34 = *(sub_2EF0(&qword_319250, &qword_279370) + 36);
  v35 = enum case for BlendMode.multiply(_:);
  v36 = sub_263640();
  (*(*(v36 - 8) + 104))(&v20[v34], v35, v36);
  v37 = *&v119[63];
  *(v20 + 2) = *&v119[55];
  *(v20 + 3) = v37;
  *(v20 + 4) = *&v119[71];
  v38 = v120;
  v39 = *&v119[47];
  *v20 = *&v119[39];
  *(v20 + 1) = v39;
  *(v20 + 10) = v38;
  *(v20 + 11) = 0x3FD999999999999ALL;
  v114 = v20;
  KeyPath = swift_getKeyPath();
  v41 = &v20[*(v16 + 44)];
  v108 = sub_2EF0(&qword_3173A0, &qword_26D0C0);
  v42 = *(v108 + 28);
  v43 = enum case for ColorScheme.light(_:);
  v106 = enum case for ColorScheme.light(_:);
  v105 = sub_261180();
  v44 = *(v105 - 8);
  v104 = *(v44 + 104);
  v107 = v44 + 104;
  v104(v41 + v42, v43, v105);
  *v41 = KeyPath;
  v102 = sub_262170();
  v45 = *(v102 + 20);
  v46 = enum case for RoundedCornerStyle.continuous(_:);
  v99 = sub_261DD0();
  v47 = *(v99 - 8);
  v98 = *(v47 + 104);
  v100 = v47 + 104;
  v98(&v14[v45], v46, v99);
  sub_261FD0();
  *v14 = v48;
  *(v14 + 1) = v49;
  *(v14 + 2) = v50;
  *(v14 + 3) = v51;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v52 = &v14[*(sub_2EF0(&qword_3204F8, &qword_27C6D0) + 36)];
  v53 = v125;
  *v52 = v124;
  *(v52 + 1) = v53;
  *(v52 + 2) = v126;
  sub_263720();
  v55 = v54;
  v57 = v56;
  v58 = &v14[*(sub_2EF0(&qword_320500, &qword_27C6D8) + 36)];
  *v58 = vdupq_n_s64(0x3FEE666666666666uLL);
  v58[1].i64[0] = v55;
  v58[1].i64[1] = v57;
  sub_263720();
  v60 = v59;
  v62 = v61;
  v63 = &v14[*(sub_2EF0(&qword_320508, &qword_27C6E0) + 36)];
  *v63 = xmmword_27C490;
  *(v63 + 1) = xmmword_27C4A0;
  *(v63 + 4) = v60;
  *(v63 + 5) = v62;
  *(v63 + 3) = xmmword_27C4B0;
  v64 = *(sub_2EF0(&qword_320510, &qword_27C6E8) + 36);
  v101 = v14;
  v65 = &v14[v64];
  *v65 = 0x4028000000000000;
  v65[8] = 0;
  *&v14[*(v10 + 44)] = 0x3FD3333333333333;
  v97 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  v66 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v68 = v67;
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_267D20;
  sub_262F80();
  *(v69 + 32) = sub_263450();
  *(v69 + 40) = v70;
  sub_262F80();
  sub_263000();

  *(v69 + 48) = sub_263450();
  *(v69 + 56) = v71;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  *(v69 + 64) = sub_263450();
  *(v69 + 72) = v72;
  sub_2636E0();
  sub_2636F0();
  sub_263460();
  sub_261590();
  v130[0] = v127;
  v130[1] = v128;
  *&v131 = v129;
  *(&v131 + 1) = 0x3FC3333333333333;
  LOBYTE(v132) = 1;
  *(&v132 + 1) = v66;
  *&v119[27] = v132;
  *&v119[11] = v128;
  *&v119[19] = v131;
  v133 = v68;
  *&v119[35] = v68;
  *&v119[3] = v127;
  v134[0] = v127;
  v134[1] = v128;
  v135 = v129;
  v136 = 0x3FC3333333333333;
  v137 = 1;
  v138 = v66;
  v139 = v68;
  sub_8198(v130, v118, &qword_320518, &qword_27C6F0);
  sub_8E80(v134, &qword_320518, &qword_27C6F0);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v73 = sub_2EF0(&qword_320520, &qword_27C6F8);
  v74 = v109;
  v75 = &v109[*(v73 + 36)];
  v98(&v75[*(v102 + 20)], v46, v99);
  sub_261FD0();
  *v75 = v76;
  *(v75 + 1) = v77;
  *(v75 + 2) = v78;
  *(v75 + 3) = v79;
  *&v75[*(sub_2EF0(&qword_320528, &qword_27C700) + 36)] = 256;
  v80 = *v119;
  *(v74 + 26) = *&v119[8];
  v81 = *&v119[24];
  *(v74 + 42) = *&v119[16];
  *(v74 + 58) = v81;
  *(v74 + 72) = *&v119[31];
  *(v74 + 10) = v80;
  v82 = v118[1];
  *(v74 + 88) = v118[0];
  *v74 = v97;
  *(v74 + 8) = 256;
  *(v74 + 104) = v82;
  *(v74 + 120) = v118[2];
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v83 = sub_263000();

  v84 = v74 + *(sub_2EF0(&qword_320530, &qword_27C708) + 36);
  *v84 = v83;
  *(v84 + 8) = a3 * 0.25;
  *(v84 + 16) = 0;
  *(v84 + 24) = a3 * 0.02;
  v85 = swift_getKeyPath();
  v86 = (v74 + *(v111 + 44));
  v104(v86 + *(v108 + 28), v106, v105);
  *v86 = v85;
  v87 = v115;
  sub_8198(v117, v115, &qword_3204F0, &qword_27C6C8);
  v88 = v116;
  sub_8198(v114, v116, &qword_3204E8, &qword_27C6C0);
  v89 = v101;
  v90 = v110;
  sub_8198(v101, v110, &qword_3204E0, &qword_27C6B8);
  v91 = v112;
  sub_8198(v74, v112, &qword_3204D8, &qword_27C6B0);
  v92 = v87;
  v93 = v113;
  sub_8198(v92, v113, &qword_3204F0, &qword_27C6C8);
  v94 = sub_2EF0(&qword_320538, &unk_27C710);
  sub_8198(v88, v93 + v94[12], &qword_3204E8, &qword_27C6C0);
  sub_8198(v90, v93 + v94[16], &qword_3204E0, &qword_27C6B8);
  sub_8198(v91, v93 + v94[20], &qword_3204D8, &qword_27C6B0);
  sub_8E80(v74, &qword_3204D8, &qword_27C6B0);
  sub_8E80(v89, &qword_3204E0, &qword_27C6B8);
  sub_8E80(v114, &qword_3204E8, &qword_27C6C0);
  sub_8E80(v117, &qword_3204F0, &qword_27C6C8);
  sub_8E80(v91, &qword_3204D8, &qword_27C6B0);
  sub_8E80(v90, &qword_3204E0, &qword_27C6B8);
  sub_8E80(v116, &qword_3204E8, &qword_27C6C0);
  return sub_8E80(v115, &qword_3204F0, &qword_27C6C8);
}

uint64_t sub_151634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_320398, &qword_27C500);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v20 - v14;
  (*(v11 + 16))(&v20 - v14, a1, v10, v13);
  sub_150980(v4, v9);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + *(v7 + 80) + v16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v16, v15, v10);
  result = sub_1509E8(v9, v18 + v17);
  *a3 = sub_152400;
  a3[1] = v18;
  return result;
}

uint64_t sub_15180C(uint64_t a1)
{
  result = sub_1519DC(&qword_3203E0, type metadata accessor for PDFCoverEffect, &protocol conformance descriptor for PDFCoverEffect);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_151878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_151910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1519DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_151A78@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_2627A0();
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetMinX(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMinY(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetWidth(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetWidth(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMinY(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetWidth(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMinY(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetWidth(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetWidth(v24);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMinY(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetWidth(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  CGRectGetMaxX(v27);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  CGRectGetWidth(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  CGRectGetMaxX(v29);
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  CGRectGetWidth(v30);
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  CGRectGetWidth(v31);
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  CGRectGetWidth(v32);
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  CGRectGetMaxX(v33);
  v34.origin.x = a2;
  v34.origin.y = a3;
  v34.size.width = a4;
  v34.size.height = a5;
  CGRectGetWidth(v34);
  v35.origin.x = a2;
  v35.origin.y = a3;
  v35.size.width = a4;
  v35.size.height = a5;
  CGRectGetWidth(v35);
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  CGRectGetMaxX(v36);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  CGRectGetMaxY(v37);
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetMinX(v38);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  CGRectGetMaxY(v39);
  sub_262780();
  sub_262790();
  sub_262770();
  sub_262790();
  sub_262770();
  sub_262790();
  sub_262790();
  result = *&v13;
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  return result;
}

double sub_151DE8@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_151A78(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_151E50(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261040();
  return sub_F4138;
}

uint64_t sub_151ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_15209C();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_151F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_15209C();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_151FA0(uint64_t a1)
{
  v2 = sub_15209C();

  return Shape.body.getter(a1, v2);
}

unint64_t sub_151FF0()
{
  result = qword_3204A0;
  if (!qword_3204A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3204A0);
  }

  return result;
}

unint64_t sub_152048()
{
  result = qword_3204A8;
  if (!qword_3204A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3204A8);
  }

  return result;
}

unint64_t sub_15209C()
{
  result = qword_3204B0;
  if (!qword_3204B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3204B0);
  }

  return result;
}

uint64_t sub_1520F0()
{
  v1 = sub_2EF0(&qword_320398, &qword_27C500);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for PDFCoverEffect(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v5[8];
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_261180();
    (*(*(v8 - 8) + 8))(v7 + v6, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_15229C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(sub_2EF0(&qword_320398, &qword_27C500) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PDFCoverEffect(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_15060C(v1 + v4, v7, a1);
}

uint64_t sub_15238C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_3204B8, &qword_27C690);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static FlowActionDestinationKinds._table.getter()
{
  if (qword_315A58 != -1)
  {
    swift_once();
  }

  sub_2EF0(&qword_320550, &unk_27C720);
  sub_260D20();
  sub_1524A0(v3);
  v1 = v0;

  return v1;
}

void sub_1524A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2EF0(&qword_31B6B8, &qword_27C7C0);
    v2 = sub_264D10();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
        v14 = *v12;
        v13 = v12[1];

        sub_2EF0(&qword_320558, &qword_27C7C8);
        sub_2EF0(&qword_31B6C8, &qword_27C7D0);
        swift_dynamicCast();
        v15 = sub_D410(v14, v13);
        if (v16)
        {
          v8 = (v2[6] + 16 * v15);
          *v8 = v14;
          v8[1] = v13;
          v9 = v15;

          *(v2[7] + 8 * v9) = v21;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
          v17 = (v2[6] + 16 * v15);
          *v17 = v14;
          v17[1] = v13;
          *(v2[7] + 8 * v15) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1526C8()
{
  if (qword_315A60 != -1)
  {
    swift_once();
  }

  v0 = qword_320548;
  sub_2EF0(&qword_320560, &qword_27C7D8);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = v0;
  qword_320540 = v1;
}

uint64_t sub_152760()
{
  sub_2EF0(&qword_320568, &qword_27C7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D20;
  *(inited + 32) = 1684366694;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = &type metadata for FlowAction.FeedDestination;
  *(inited + 56) = &protocol witness table for FlowAction.FeedDestination;
  *(inited + 64) = 0x536472614377656ELL;
  *(inited + 72) = 0xEA00000000007465;
  *(inited + 80) = &type metadata for FlowAction.NewCardSetDestination;
  *(inited + 88) = &protocol witness table for FlowAction.NewCardSetDestination;
  strcpy((inited + 96), "newSingleCard");
  *(inited + 110) = -4864;
  *(inited + 112) = type metadata accessor for FlowAction.NewSingleCardDestination(0);
  *(inited + 120) = &protocol witness table for FlowAction.NewSingleCardDestination;
  v1 = sub_F368(inited);
  swift_setDeallocating();
  sub_2EF0(&qword_320570, &qword_27C7E8);
  result = swift_arrayDestroy();
  qword_320548 = v1;
  return result;
}

void static FlowActionDestinationKinds.register<A>(_:name:)(uint64_t a1)
{
  if (qword_315A58 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v1 = qword_320540;
  __chkstk_darwin(a1);
  os_unfair_lock_lock((v1 + 24));
  sub_15296C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_15296C(uint64_t *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  result = sub_E2C8(v6, v3, v4, v5, isUniquelyReferenced_nonNull_native);
  *a1 = v9;
  return result;
}

void *static FlowActionDestinationKinds._decode(_:from:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_263980();
  __chkstk_darwin(v7 - 8);
  v8 = sub_263840();
  __chkstk_darwin(v8 - 8);
  v9 = sub_A8C6C(a1, a1, &protocol descriptor for FlowActionDestination, &protocol descriptor for Decodable);
  if (v9)
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    sub_30CC(a2, v29);
    *&v31 = v12;
    *(&v31 + 1) = v13;
    v32 = v14;
    sub_10934(v30);
    sub_2647C0();
    if (v3)
    {
      return sub_A8CF4(v30);
    }

LABEL_7:
    v28 = v31;
    v22 = v31;
    v23 = sub_2E18(v30, v31);
    *(a3 + 24) = v28;
    v24 = sub_10934(a3);
    (*(*(v22 - 8) + 16))(v24, v23, v22);
    return sub_3080(v30);
  }

  v16 = sub_A8C6C(a1, a1, &protocol descriptor for FlowActionDestination, &protocol descriptor for ExpressibleByJSON);
  if (v16)
  {
    v19 = v16;
    v20 = v17;
    v21 = v18;
    sub_30CC(a2, v29);
    result = sub_263810();
    if (v3)
    {
      return result;
    }

    sub_2E18(a2, a2[3]);
    sub_265100();
    sub_263970();
    *&v31 = v19;
    *(&v31 + 1) = v20;
    v32 = v21;
    sub_10934(v30);
    sub_263DE0();
    goto LABEL_7;
  }

  v25 = sub_264C10();
  swift_allocError();
  v27 = v26;
  sub_2EF0(&qword_315CD0, &qword_266E00);
  *v27 = a1;
  sub_2E18(a2, a2[3]);
  sub_2650E0();
  sub_264BC0(21);

  v30[0] = 60;
  v30[1] = 0xE100000000000000;
  v33._countAndFlagsBits = sub_265260();
  sub_264530(v33);

  v34._object = 0x80000000002917A0;
  v34._countAndFlagsBits = 0xD000000000000012;
  sub_264530(v34);
  sub_264BF0();
  (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
  return swift_willThrow();
}

uint64_t static ListItemMetadata.recommendationsPage(assetInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2E18(a1, a1[3]);
  v4 = sub_2609A0();
  v6 = v5;
  sub_2E18(a1, a1[3]);
  v7 = sub_2609B0();
  v9 = v8;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v28[3] = &type metadata for ListItemMetadataTitleWithSubtitle;
  v28[4] = sub_2E5C();
  v10 = swift_allocObject();
  v28[0] = v10;
  *(v10 + 16) = v4;
  *(v10 + 24) = v6;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  *(v10 + 48) = 3;
  v27[3] = sub_2EF0(&qword_315B48, &qword_2664C0);
  v27[4] = sub_8E38(&qword_315B50, &qword_315B48, &qword_2664C0, &protocol conformance descriptor for ListItemMetadataFormatAndDescriptorBase<A>);
  v11 = swift_allocObject();
  v27[0] = v11;
  sub_30CC(a1, v11 + 120);
  KeyPath = swift_getKeyPath();
  v31 = 0;
  v13 = swift_getKeyPath();
  v14 = swift_getKeyPath();
  *(v11 + 16) = KeyPath;
  *(v11 + 82) = 0;
  *(v11 + 88) = v13;
  *(v11 + 96) = 0;
  *(v11 + 104) = v14;
  *(v11 + 112) = 0;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_30CC(a1, v21);
  v22[3] = sub_2EF0(&qword_320578, &qword_27C868);
  v22[4] = sub_8E38(&qword_320580, &qword_320578, &qword_27C868, &protocol conformance descriptor for ListItemMetadataRecommendationCreatorDescriptorBase<A>);
  v15 = swift_allocObject();
  v22[0] = v15;
  sub_2E18(v21, v21[3]);
  v16 = sub_260960();
  v18 = v17;
  v19 = swift_getKeyPath();
  *(v15 + 16) = v19;
  *(v15 + 24) = 0;
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  sub_39D6C(v19, 0);

  sub_3080(v21);
  sub_3074(v19, 0);

  *(a2 + 272) = 0;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 80) = 0u;
  sub_34A0(v29, a2, &qword_315B58, &unk_266540);
  sub_34A0(v28, a2 + 40, &qword_315B60, &unk_276FA0);
  sub_34A0(v27, a2 + 80, &qword_315B68, &unk_266550);
  sub_34A0(v25, a2 + 160, &qword_315B70, &unk_276FB0);
  sub_34A0(v23, a2 + 200, &qword_315B78, &unk_266560);
  return sub_34A0(v22, a2 + 240, &qword_315B80, &qword_276FC0);
}

uint64_t sub_153144()
{

  return swift_deallocObject();
}

uint64_t sub_153184()
{
  sub_3060(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 82));
  sub_3074(*(v0 + 88), *(v0 + 96));
  sub_3074(*(v0 + 104), *(v0 + 112));
  sub_3080((v0 + 120));

  return swift_deallocObject();
}

uint64_t sub_153214()
{
  sub_3074(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

void ShelfGridBlurEdgeMaskView.init(insets:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = 0x4028000000000000;
}

void *ShelfGridBlurEdgeMaskView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v30 = *v2;
  v31 = v4;
  v32 = *(v2 + 4);
  v5 = sub_261D30();
  v29 = 0;
  sub_1533DC(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v34, __src, sizeof(v34));
  sub_8198(__dst, &v26, &qword_320588, &qword_27C8A0);
  sub_8E80(v34, &qword_320588, &qword_27C8A0);
  memcpy(&v28[7], __dst, 0x128uLL);
  v6 = v29;
  v7 = sub_262510();
  sub_2610C0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(__src[0]) = 0;
  v16 = sub_262520();
  sub_2610C0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  result = memcpy((a2 + 17), v28, 0x12FuLL);
  *(a2 + 320) = v7;
  *(a2 + 328) = v9;
  *(a2 + 336) = v11;
  *(a2 + 344) = v13;
  *(a2 + 352) = v15;
  *(a2 + 360) = 0;
  *(a2 + 368) = v16;
  *(a2 + 376) = v18;
  *(a2 + 384) = v20;
  *(a2 + 392) = v22;
  *(a2 + 400) = v24;
  *(a2 + 408) = 0;
  return result;
}

void sub_1533DC(uint64_t a2@<X8>)
{
  v3 = sub_262FA0();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  sub_2EF0(&qword_3205C0, &qword_27C958);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_269100;
  *(v4 + 32) = sub_262FA0();
  *(v4 + 40) = sub_262F80();
  sub_263470();
  sub_263730();
  sub_263740();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v5 = sub_262F80();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_269100;
  *(v6 + 32) = sub_262FA0();
  *(v6 + 40) = sub_262F80();
  sub_263470();
  sub_263740();
  sub_263730();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v7 = sub_262FA0();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v31[2] = v16;
  v31[3] = v17;
  v31[4] = v18;
  v31[0] = v14;
  v31[1] = v15;
  v33[0] = v8;
  v33[1] = v9;
  v33[3] = v11;
  v33[4] = v12;
  v33[2] = v10;
  *(a2 + 72) = v15;
  *(a2 + 56) = v14;
  *(a2 + 120) = v18;
  *(a2 + 104) = v17;
  *(a2 + 88) = v16;
  *(a2 + 168) = v9;
  *(a2 + 152) = v8;
  v32 = v19;
  v34 = v13;
  *a2 = v3;
  *(a2 + 8) = v20;
  *(a2 + 16) = v21;
  *(a2 + 24) = v22;
  *(a2 + 32) = v23;
  *(a2 + 40) = v24;
  *(a2 + 48) = v25;
  *(a2 + 136) = v19;
  *(a2 + 144) = v5;
  *(a2 + 216) = v12;
  *(a2 + 200) = v11;
  *(a2 + 184) = v10;
  *(a2 + 232) = v13;
  *(a2 + 240) = v7;
  *(a2 + 248) = v26;
  *(a2 + 256) = v27;
  *(a2 + 264) = v28;
  *(a2 + 272) = v29;
  *(a2 + 280) = v30;

  sub_8198(v31, v37, &qword_3205C8, &unk_27C960);

  sub_8198(v33, v37, &qword_3205C8, &unk_27C960);
  v35[2] = v10;
  v35[3] = v11;
  v35[4] = v12;
  v36 = v13;
  v35[0] = v8;
  v35[1] = v9;
  sub_8E80(v35, &qword_3205C8, &unk_27C960);

  v37[2] = v16;
  v37[3] = v17;
  v37[4] = v18;
  v38 = v19;
  v37[0] = v14;
  v37[1] = v15;
  sub_8E80(v37, &qword_3205C8, &unk_27C960);
}

uint64_t sub_1537C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1537E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_1538A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_153924()
{
  result = qword_3205B0;
  if (!qword_3205B0)
  {
    sub_2F9C(&qword_3205B8, &qword_27C950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3205B0);
  }

  return result;
}

uint64_t sub_153988@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_318148, &unk_26AEE0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_8198(v2, &v14 - v9, &qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_261690();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_153B88@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SingleBookLockupView(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_15CF50(v9, a1, type metadata accessor for SizeConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_153D74@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SingleBookLockupView(0);
  sub_8198(v1 + *(v10 + 24), v9, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_15CF50(v9, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_153F60@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_3205D0, &qword_27CA78);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SingleBookLockupView(0);
  sub_8198(v1 + *(v10 + 32), v9, &qword_3205D0, &qword_27CA78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_15CF50(v9, a1, type metadata accessor for FontConstants.SingleBookWidget);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_15414C()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SingleBookLockupView(0) + 36);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_264900();
    v7 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

__n128 SingleBookLockupView.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for SingleBookLockupView(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v7 = v4[7];
  *(a2 + v7) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v8 = v4[8];
  *(a2 + v8) = swift_getKeyPath();
  sub_2EF0(&qword_3205D0, &qword_27CA78);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v4[9];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = a2 + v4[10];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = a2 + v4[11];
  v12 = *(a1 + 112);
  *(v11 + 6) = *(a1 + 96);
  *(v11 + 7) = v12;
  *(v11 + 8) = *(a1 + 128);
  v11[144] = *(a1 + 144);
  v13 = *(a1 + 48);
  *(v11 + 2) = *(a1 + 32);
  *(v11 + 3) = v13;
  v14 = *(a1 + 80);
  *(v11 + 4) = *(a1 + 64);
  *(v11 + 5) = v14;
  result = *a1;
  v16 = *(a1 + 16);
  *v11 = *a1;
  *(v11 + 1) = v16;
  return result;
}

uint64_t SingleBookLockupView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_2EF0(&qword_3205D8, &qword_27CAD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v29 - v2;
  v4 = sub_2EF0(&qword_3205E0, &qword_27CAD8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v29 - v6;
  v8 = sub_2EF0(&qword_3205E8, &qword_27CAE0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  sub_154750(v3);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  sub_22148(v3, v7, &qword_3205D8, &qword_27CAD0);
  v12 = &v7[*(v5 + 44)];
  v13 = v40;
  *(v12 + 4) = v39;
  *(v12 + 5) = v13;
  *(v12 + 6) = v41;
  v14 = v36;
  *v12 = v35;
  *(v12 + 1) = v14;
  v15 = v38;
  *(v12 + 2) = v37;
  *(v12 + 3) = v15;
  KeyPath = swift_getKeyPath();
  v34 = 0;
  v17 = swift_getKeyPath();
  v33 = 0;
  v18 = swift_getKeyPath();
  v32 = 0;
  v19 = swift_getKeyPath();
  v31 = 0;
  v20 = v34;
  v21 = v33;
  v22 = v32;
  sub_22148(v7, v11, &qword_3205E0, &qword_27CAD8);
  v23 = &v11[*(v9 + 44)];
  *v23 = KeyPath;
  v23[8] = v20;
  *(v23 + 2) = v17;
  v23[24] = v21;
  *(v23 + 4) = v18;
  v23[40] = v22;
  *(v23 + 6) = v19;
  v23[56] = 0;
  *(v23 + 57) = 1;
  v24 = sub_2EF0(&qword_3205F0, &unk_27CB60);
  v25 = v30;
  v26 = (v30 + *(v24 + 36));
  v27 = sub_2EF0(&qword_3173A0, &qword_26D0C0);
  sub_155154((v26 + *(v27 + 28)));
  *v26 = swift_getKeyPath();
  return sub_22148(v11, v25, &qword_3205E8, &qword_27CAE0);
}

uint64_t sub_154750@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v87 = sub_2EF0(&qword_320728, &qword_27CC40);
  __chkstk_darwin(v87);
  v3 = &v75 - v2;
  v88 = sub_2EF0(&qword_320740, &qword_27CC50);
  __chkstk_darwin(v88);
  v89 = &v75 - v4;
  v86 = sub_2EF0(&qword_320708, &qword_27CC30);
  __chkstk_darwin(v86);
  v81 = (&v75 - v5);
  v84 = sub_2EF0(&qword_320748, &qword_27CC58);
  __chkstk_darwin(v84);
  v85 = &v75 - v6;
  v7 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v10 - 8);
  v12 = (&v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_2EF0(&qword_3206F8, &qword_27CC28);
  __chkstk_darwin(v13 - 8);
  v79 = (&v75 - v14);
  v83 = sub_2EF0(&qword_3206E8, &qword_27CC20);
  __chkstk_darwin(v83);
  v78 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v80 = &v75 - v17;
  v18 = sub_261690();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v75 - v23;
  v25 = sub_2EF0(&qword_3206D8, &qword_27CC18);
  __chkstk_darwin(v25);
  v82 = &v75 - v26;
  v27 = v1;
  if (sub_15414C())
  {
    v76 = v12;
    v77 = v25;
    sub_153988(v24);
    (*(v19 + 104))(v21, enum case for DynamicTypeSize.xxxLarge(_:), v18);
    sub_15CEF0(&qword_317538, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    v28 = sub_264360();
    v29 = *(v19 + 8);
    v29(v21, v18);
    v29(v24, v18);
    v30 = sub_261E60();
    if (v28)
    {
      v31 = v81;
      *v81 = v30;
      *(v31 + 8) = 0;
      *(v31 + 16) = 1;
      v32 = sub_2EF0(&qword_320758, &qword_27CCE8);
      sub_1571A0(v27, v31 + *(v32 + 44));
      v33 = sub_262560();
      v34 = v76;
      sub_153B88(v76);
      sub_15CF50(v34, v9, type metadata accessor for SizeConstants.Environment);
      sub_15C9F4(v9, type metadata accessor for SizeConstants.Spacing);
      sub_2610C0();
      v35 = v85;
      v36 = v31 + *(v86 + 36);
      *v36 = v33;
      *(v36 + 8) = v37;
      *(v36 + 16) = v38;
      *(v36 + 24) = v39;
      *(v36 + 32) = v40;
      *(v36 + 40) = 0;
      sub_8198(v31, v35, &qword_320708, &qword_27CC30);
      swift_storeEnumTagMultiPayload();
      sub_15C6F0();
      sub_15C7A8();
      v41 = v82;
      sub_261F80();
      sub_8E80(v31, &qword_320708, &qword_27CC30);
      v42 = v89;
    }

    else
    {
      v56 = v79;
      *v79 = v30;
      *(v56 + 8) = 0;
      *(v56 + 16) = 1;
      v57 = sub_2EF0(&qword_320750, &qword_27CCD8);
      sub_156488(v27, v56 + *(v57 + 44));
      sub_2EF0(qword_31B050, &qword_27CCE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_269100;
      v59 = sub_262510();
      *(inited + 32) = v59;
      v60 = sub_262520();
      *(inited + 33) = v60;
      v61 = sub_262540();
      sub_262540();
      if (sub_262540() != v59)
      {
        v61 = sub_262540();
      }

      sub_262540();
      if (sub_262540() != v60)
      {
        v61 = sub_262540();
      }

      v42 = v89;
      v62 = v76;
      sub_153B88(v76);
      sub_15CF50(v62, v9, type metadata accessor for SizeConstants.Environment);
      sub_15C9F4(v9, type metadata accessor for SizeConstants.Spacing);
      sub_2610C0();
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v71 = v78;
      sub_22148(v56, v78, &qword_3206F8, &qword_27CC28);
      v72 = v71 + *(v83 + 36);
      *v72 = v61;
      *(v72 + 8) = v64;
      *(v72 + 16) = v66;
      *(v72 + 24) = v68;
      *(v72 + 32) = v70;
      *(v72 + 40) = 0;
      v73 = v80;
      sub_22148(v71, v80, &qword_3206E8, &qword_27CC20);
      sub_8198(v73, v85, &qword_3206E8, &qword_27CC20);
      swift_storeEnumTagMultiPayload();
      sub_15C6F0();
      sub_15C7A8();
      v41 = v82;
      sub_261F80();
      sub_8E80(v73, &qword_3206E8, &qword_27CC20);
    }

    v53 = &qword_3206D8;
    v54 = &qword_27CC18;
    sub_8198(v41, v42, &qword_3206D8, &qword_27CC18);
    swift_storeEnumTagMultiPayload();
    sub_15C664();
    sub_15C860();
    sub_261F80();
    v55 = v41;
  }

  else
  {
    v43 = sub_261D10();
    v44 = sub_2EF0(&qword_320738, &qword_27CC48);
    v45 = &v3[v44[11]];
    *v45 = swift_getKeyPath();
    v45[8] = 0;
    v46 = &v3[v44[12]];
    *v46 = swift_getKeyPath();
    v46[8] = 0;
    v47 = &v3[v44[13]];
    *v47 = swift_getKeyPath();
    v47[8] = 0;
    *v3 = v43;
    v3[8] = 1;
    sub_1553D8(v27, &v3[v44[10]]);
    LOBYTE(v44) = sub_262560();
    sub_153B88(v12);
    sub_15CF50(v12, v9, type metadata accessor for SizeConstants.Environment);
    sub_15C9F4(v9, type metadata accessor for SizeConstants.Spacing);
    sub_2610C0();
    v48 = &v3[*(v87 + 36)];
    *v48 = v44;
    *(v48 + 1) = v49;
    *(v48 + 2) = v50;
    *(v48 + 3) = v51;
    *(v48 + 4) = v52;
    v48[40] = 0;
    v53 = &qword_320728;
    v54 = &qword_27CC40;
    sub_8198(v3, v89, &qword_320728, &qword_27CC40);
    swift_storeEnumTagMultiPayload();
    sub_15C664();
    sub_15C860();
    sub_261F80();
    v55 = v3;
  }

  return sub_8E80(v55, v53, v54);
}

uint64_t sub_155154@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for SingleBookLockupView(0);
  if (*(v1 + *(v10 + 44) + 144) == 1)
  {
    v11 = enum case for ColorScheme.dark(_:);
    v12 = sub_261180();
    v13 = *(*(v12 - 8) + 104);

    return v13(a1, v11, v12);
  }

  else
  {
    sub_8198(v1 + *(v10 + 28), v9, &qword_316DC0, &qword_2691C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = sub_261180();
      return (*(*(v15 - 8) + 32))(a1, v9, v15);
    }

    else
    {
      sub_264900();
      v16 = sub_2624B0();
      sub_260D10();

      sub_261C80();
      swift_getAtKeyPath();

      return (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t sub_1553D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_2EF0(&qword_3208A8, &qword_27CFF0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v40 - v7;
  v9 = sub_2EF0(&qword_320870, &qword_27CF90);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v40 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = a1 + *(type metadata accessor for SingleBookLockupView(0) + 44);
  sub_2E18((v15 + 88), *(v15 + 112));
  sub_260950();
  sub_30CC(v15 + 88, &v48);
  CoverViewModel.CoverImageInfo.init(assetInfo:)(&v48, v46);
  *(&v47 + 1) = 0x4066800000000000;
  sub_230A8(v46);
  v52 = v46[4];
  v53 = v46[5];
  v54 = v46[6];
  v55 = v47;
  v48 = v46[0];
  v49 = v46[1];
  v50 = v46[2];
  v51 = v46[3];
  *v14 = swift_getKeyPath();
  v14[40] = 0;
  *(v14 + 6) = swift_getKeyPath();
  v14[56] = 0;
  v16 = type metadata accessor for CoverView(0);
  v17 = v16[6];
  *&v14[v17] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v18 = v16[7];
  *&v14[v18] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v19 = &v14[v16[8]];
  type metadata accessor for ProfileRestrictions(0);
  sub_15CEF0(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v19 = sub_261900();
  v19[1] = v20;
  v21 = &v14[v16[9]];
  v43 = 1;
  sub_2631D0();
  v22 = v45;
  *v21 = v44;
  *(v21 + 1) = v22;
  v23 = &v14[v16[10]];
  v24 = v53;
  *(v23 + 4) = v52;
  *(v23 + 5) = v24;
  v25 = v55;
  *(v23 + 6) = v54;
  *(v23 + 7) = v25;
  v26 = v49;
  *v23 = v48;
  *(v23 + 1) = v26;
  v27 = v51;
  *(v23 + 2) = v50;
  *(v23 + 3) = v27;
  v14[v16[11]] = 1;
  v28 = sub_15584C();
  KeyPath = swift_getKeyPath();
  v30 = &v14[*(v10 + 44)];
  *v30 = KeyPath;
  v30[1] = v28;
  *v8 = sub_261E60();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v31 = sub_2EF0(&qword_3208B0, &qword_27CFF8);
  sub_1559C8(a1, &v8[*(v31 + 44)]);
  v32 = sub_156324();
  v33 = swift_getKeyPath();
  v34 = &v8[*(v4 + 44)];
  *v34 = v33;
  v34[1] = v32;
  v35 = v40;
  sub_8198(v14, v40, &qword_320870, &qword_27CF90);
  v36 = v41;
  sub_8198(v8, v41, &qword_3208A8, &qword_27CFF0);
  v37 = v42;
  sub_8198(v35, v42, &qword_320870, &qword_27CF90);
  v38 = sub_2EF0(&qword_3208B8, &qword_27D000);
  sub_8198(v36, v37 + *(v38 + 48), &qword_3208A8, &qword_27CFF0);
  sub_8E80(v8, &qword_3208A8, &qword_27CFF0);
  sub_8E80(v14, &qword_320870, &qword_27CF90);
  sub_8E80(v36, &qword_3208A8, &qword_27CFF0);
  return sub_8E80(v35, &qword_320870, &qword_27CF90);
}

uint64_t sub_15584C()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SingleBookLockupView(0) + 40);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
    if (v6 > 6u)
    {
      return 3;
    }
  }

  else
  {

    sub_264900();
    v9 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = v11;
    if (v11 > 6u)
    {
      return 3;
    }
  }

  return qword_27D018[v7];
}

uint64_t sub_1559C8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v62 = a2;
  v61 = sub_2EF0(&qword_320760, &qword_27CCF0) - 8;
  __chkstk_darwin(v61);
  v67 = &v59[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v68 = &v59[-v5];
  v6 = sub_2EF0(&qword_320768, &qword_27CCF8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v66 = &v59[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v63 = &v59[-v10];
  v11 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v59[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v59[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_2EF0(&qword_320770, &qword_27CD00);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v64 = &v59[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v59[-v21];
  sub_157F0C(a1, 1, &v69);
  *v22 = sub_261E60();
  *(v22 + 1) = 0;
  v22[16] = 0;
  v23 = &v22[*(sub_2EF0(&qword_320780, &qword_27CD90) + 44)];
  v65 = v22;
  sub_158548(a1, v23);
  v24 = sub_262520();
  sub_153B88(v16);
  sub_15CF50(v16, v13, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v13, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v25 = &v22[*(v18 + 44)];
  *v25 = v24;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  v30 = sub_261D30();
  v31 = v63;
  *v63 = v30;
  v31[1] = 0;
  *(v31 + 16) = 1;
  v32 = sub_2EF0(&qword_320788, &qword_27CD98);
  sub_15968C(a1, v31 + *(v32 + 44));
  LOBYTE(v18) = sub_262520();
  sub_153B88(v16);
  sub_15CF50(v16, v13, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v13, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v33 = v31 + *(v7 + 44);
  *v33 = v18;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  v38 = v68;
  sub_2633A0();
  LOBYTE(v7) = sub_262520();
  sub_153B88(v16);
  sub_15CF50(v16, v13, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v13, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v39 = &v38[*(v61 + 44)];
  *v39 = v7;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  v61 = sub_261D10();
  sub_153B88(v16);
  sub_15CF50(v16, v13, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v13, type metadata accessor for SizeConstants.Spacing);
  LOBYTE(v98[0]) = 0;
  sub_15AB0C(a1, 0, &v96);
  v88 = *&v97[20];
  v89 = *&v97[22];
  v90[0] = *&v97[24];
  *(v90 + 9) = *(&v97[25] + 1);
  v85 = *&v97[14];
  v86 = *&v97[16];
  v87 = *&v97[18];
  v81 = *&v97[6];
  v82 = *&v97[8];
  v83 = *&v97[10];
  v84 = *&v97[12];
  v77 = v96;
  v78 = *v97;
  v79 = *&v97[2];
  v80 = *&v97[4];
  v91[11] = *&v97[20];
  v91[12] = *&v97[22];
  v92[0] = *&v97[24];
  *(v92 + 9) = *(&v97[25] + 1);
  v91[8] = *&v97[14];
  v91[9] = *&v97[16];
  v91[10] = *&v97[18];
  v91[4] = *&v97[6];
  v91[5] = *&v97[8];
  v91[6] = *&v97[10];
  v91[7] = *&v97[12];
  v91[0] = v96;
  v91[1] = *v97;
  v91[2] = *&v97[2];
  v91[3] = *&v97[4];
  sub_8198(&v77, v95, &qword_320790, &qword_27CDA0);
  sub_8E80(v91, &qword_320790, &qword_27CDA0);
  *(&v76[11] + 7) = v88;
  *(&v76[12] + 7) = v89;
  *(&v76[13] + 7) = v90[0];
  v76[14] = *(v90 + 9);
  *(&v76[7] + 7) = v84;
  *(&v76[8] + 7) = v85;
  *(&v76[9] + 7) = v86;
  *(&v76[10] + 7) = v87;
  *(&v76[3] + 7) = v80;
  *(&v76[4] + 7) = v81;
  *(&v76[5] + 7) = v82;
  *(&v76[6] + 7) = v83;
  *(v76 + 7) = v77;
  *(&v76[1] + 7) = v78;
  *(&v76[2] + 7) = v79;
  v60 = LOBYTE(v98[0]);
  v44 = v64;
  sub_8198(v65, v64, &qword_320770, &qword_27CD00);
  v45 = v66;
  sub_8198(v31, v66, &qword_320768, &qword_27CCF8);
  v46 = v67;
  sub_8198(v68, v67, &qword_320760, &qword_27CCF0);
  v47 = v73;
  v48 = v74;
  v93[4] = v73;
  v93[5] = v74;
  v49 = v75;
  v94 = v75;
  v50 = v70;
  v93[0] = v69;
  v93[1] = v70;
  v51 = v72;
  v52 = v71;
  v93[2] = v71;
  v93[3] = v72;
  v53 = v62;
  *v62 = v69;
  v53[1] = v50;
  *(v53 + 48) = v49;
  v53[2] = v52;
  v53[3] = v51;
  v53[4] = v47;
  v53[5] = v48;
  v54 = sub_2EF0(&qword_3208C0, &unk_27D008);
  sub_8198(v44, v53 + v54[12], &qword_320770, &qword_27CD00);
  sub_8198(v45, v53 + v54[16], &qword_320768, &qword_27CCF8);
  sub_8198(v46, v53 + v54[20], &qword_320760, &qword_27CCF0);
  v55 = v54[24];
  *(&v95[24] + 1) = v76[11];
  *(&v95[26] + 1) = v76[12];
  *(&v95[28] + 1) = v76[13];
  *(&v95[30] + 1) = v76[14];
  *(&v95[16] + 1) = v76[7];
  *(&v95[18] + 1) = v76[8];
  *(&v95[20] + 1) = v76[9];
  *(&v95[22] + 1) = v76[10];
  *(&v95[10] + 1) = v76[4];
  *(&v95[12] + 1) = v76[5];
  *(&v95[14] + 1) = v76[6];
  *(&v95[8] + 1) = v76[3];
  *(&v95[2] + 1) = v76[0];
  *(&v95[4] + 1) = v76[1];
  v56 = v61;
  v95[0] = v61;
  v95[1] = 0x4018000000000000;
  LOBYTE(v46) = v60;
  LOBYTE(v95[2]) = v60;
  *(&v95[6] + 1) = v76[2];
  memcpy(v53 + v55, v95, 0x101uLL);
  v57 = v53 + v54[28];
  *v57 = 0;
  v57[8] = 1;
  sub_8198(v93, &v96, &qword_3207A0, &qword_27CDB0);
  sub_8198(v95, &v96, &qword_3207A8, &qword_27CDB8);
  sub_8E80(v68, &qword_320760, &qword_27CCF0);
  sub_8E80(v63, &qword_320768, &qword_27CCF8);
  sub_8E80(v65, &qword_320770, &qword_27CD00);
  *(&v97[22] + 1) = v76[11];
  *(&v97[24] + 1) = v76[12];
  *(&v97[26] + 1) = v76[13];
  *(&v97[28] + 1) = v76[14];
  *(&v97[14] + 1) = v76[7];
  *(&v97[16] + 1) = v76[8];
  *(&v97[18] + 1) = v76[9];
  *(&v97[20] + 1) = v76[10];
  *(&v97[6] + 1) = v76[3];
  *(&v97[8] + 1) = v76[4];
  *(&v97[10] + 1) = v76[5];
  *(&v97[12] + 1) = v76[6];
  *(v97 + 1) = v76[0];
  *(&v97[2] + 1) = v76[1];
  *&v96 = v56;
  *(&v96 + 1) = 0x4018000000000000;
  LOBYTE(v97[0]) = v46;
  *(&v97[4] + 1) = v76[2];
  sub_8E80(&v96, &qword_3207A8, &qword_27CDB8);
  sub_8E80(v67, &qword_320760, &qword_27CCF0);
  sub_8E80(v66, &qword_320768, &qword_27CCF8);
  sub_8E80(v64, &qword_320770, &qword_27CD00);
  v98[4] = v73;
  v98[5] = v74;
  v99 = v75;
  v98[0] = v69;
  v98[1] = v70;
  v98[2] = v71;
  v98[3] = v72;
  return sub_8E80(v98, &qword_3207A0, &qword_27CDB0);
}

uint64_t sub_156324()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SingleBookLockupView(0) + 40);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_264900();
    v7 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return qword_27D050[v6];
}

uint64_t sub_156488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_320808, &qword_27CEF0);
  __chkstk_darwin(v4 - 8);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v9 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v9 - 8);
  v42 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_2EF0(&qword_320810, &qword_27CEF8);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v43 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v42 - v18;
  sub_157F0C(a1, 0, &v45);
  v20 = sub_261D10();
  v21 = sub_2EF0(&qword_320818, &qword_27CF00);
  v22 = &v19[v21[11]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = &v19[v21[12]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = &v19[v21[13]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  *v19 = v20;
  v19[8] = 1;
  sub_15692C(a1, &v19[v21[10]]);
  LOBYTE(v20) = sub_262520();
  sub_153B88(v13);
  v25 = v42;
  sub_15CF50(v13, v42, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v25, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v26 = &v19[*(v15 + 44)];
  *v26 = v20;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  *v8 = sub_261E50();
  *(v8 + 1) = 0x4028000000000000;
  v8[16] = 0;
  v31 = sub_2EF0(&qword_320820, &qword_27CF08);
  sub_159B48(a1, &v8[*(v31 + 44)]);
  v32 = v43;
  sub_8198(v19, v43, &qword_320810, &qword_27CEF8);
  v33 = v44;
  sub_8198(v8, v44, &qword_320808, &qword_27CEF0);
  v34 = v49;
  v35 = v50;
  v52[4] = v49;
  v52[5] = v50;
  v36 = v51;
  v53 = v51;
  v37 = v46;
  v52[0] = v45;
  v52[1] = v46;
  v38 = v48;
  v39 = v47;
  v52[2] = v47;
  v52[3] = v48;
  *a2 = v45;
  *(a2 + 16) = v37;
  *(a2 + 96) = v36;
  *(a2 + 32) = v39;
  *(a2 + 48) = v38;
  *(a2 + 64) = v34;
  *(a2 + 80) = v35;
  v40 = sub_2EF0(&qword_320828, &qword_27CF10);
  sub_8198(v32, a2 + *(v40 + 48), &qword_320810, &qword_27CEF8);
  sub_8198(v33, a2 + *(v40 + 64), &qword_320808, &qword_27CEF0);
  sub_8198(v52, v54, &qword_3207A0, &qword_27CDB0);
  sub_8E80(v8, &qword_320808, &qword_27CEF0);
  sub_8E80(v19, &qword_320810, &qword_27CEF8);
  sub_8E80(v33, &qword_320808, &qword_27CEF0);
  sub_8E80(v32, &qword_320810, &qword_27CEF8);
  v54[4] = v49;
  v54[5] = v50;
  v55 = v51;
  v54[0] = v45;
  v54[1] = v46;
  v54[2] = v47;
  v54[3] = v48;
  return sub_8E80(v54, &qword_3207A0, &qword_27CDB0);
}

uint64_t sub_15692C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v47 = sub_2EF0(&qword_320870, &qword_27CF90) - 8;
  __chkstk_darwin(v47);
  v48 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v45 - v5;
  v7 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v10 - 8);
  v12 = (&v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_2EF0(&qword_320878, &qword_27CF98);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v46 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  v19 = sub_261E60();
  sub_153B88(v12);
  sub_15CF50(v12, v9, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v9, type metadata accessor for SizeConstants.Spacing);
  *v18 = v19;
  *(v18 + 1) = 0x4030000000000000;
  v18[16] = 0;
  v20 = sub_2EF0(&qword_320880, &qword_27CFA0);
  sub_156E74(a1, &v18[*(v20 + 44)]);
  v21 = sub_156324();
  KeyPath = swift_getKeyPath();
  v23 = &v18[*(v14 + 44)];
  *v23 = KeyPath;
  v23[1] = v21;
  v24 = a1 + *(type metadata accessor for SingleBookLockupView(0) + 44);
  sub_2E18((v24 + 88), *(v24 + 112));
  sub_260950();
  sub_30CC(v24 + 88, &v55);
  CoverViewModel.CoverImageInfo.init(assetInfo:)(&v55, v53);
  *(&v54 + 1) = 0x4066800000000000;
  sub_230A8(v53);
  v59 = v53[4];
  v60 = v53[5];
  v61 = v53[6];
  v62 = v54;
  v55 = v53[0];
  v56 = v53[1];
  v57 = v53[2];
  v58 = v53[3];
  *v6 = swift_getKeyPath();
  v6[40] = 0;
  *(v6 + 6) = swift_getKeyPath();
  v6[56] = 0;
  v25 = type metadata accessor for CoverView(0);
  v26 = v25[6];
  *&v6[v26] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v27 = v25[7];
  *&v6[v27] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v28 = &v6[v25[8]];
  type metadata accessor for ProfileRestrictions(0);
  sub_15CEF0(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v28 = sub_261900();
  v28[1] = v29;
  v30 = &v6[v25[9]];
  v50 = 1;
  sub_2631D0();
  v31 = v52;
  *v30 = v51;
  *(v30 + 1) = v31;
  v32 = &v6[v25[10]];
  v33 = v60;
  *(v32 + 4) = v59;
  *(v32 + 5) = v33;
  v34 = v62;
  *(v32 + 6) = v61;
  *(v32 + 7) = v34;
  v35 = v56;
  *v32 = v55;
  *(v32 + 1) = v35;
  v36 = v58;
  *(v32 + 2) = v57;
  *(v32 + 3) = v36;
  v6[v25[11]] = 1;
  v37 = sub_15584C();
  v38 = swift_getKeyPath();
  v39 = v46;
  v40 = &v6[*(v47 + 44)];
  *v40 = v38;
  v40[1] = v37;
  sub_8198(v18, v39, &qword_320878, &qword_27CF98);
  v41 = v48;
  sub_8198(v6, v48, &qword_320870, &qword_27CF90);
  v42 = v49;
  sub_8198(v39, v49, &qword_320878, &qword_27CF98);
  v43 = sub_2EF0(&qword_320888, &qword_27CFD0);
  sub_8198(v41, v42 + *(v43 + 48), &qword_320870, &qword_27CF90);
  sub_8E80(v6, &qword_320870, &qword_27CF90);
  sub_8E80(v18, &qword_320878, &qword_27CF98);
  sub_8E80(v41, &qword_320870, &qword_27CF90);
  return sub_8E80(v39, &qword_320878, &qword_27CF98);
}

uint64_t sub_156E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_320890, &qword_27CFD8);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v13 - 8);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_2EF0(&qword_320898, &qword_27CFE0);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v27 - v20;
  *v21 = sub_261E60();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = sub_2EF0(&qword_320780, &qword_27CD90);
  sub_158548(a1, &v21[*(v22 + 44)]);
  sub_153B88(v15);
  sub_15CF50(v15, v12, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v12, type metadata accessor for SizeConstants.Spacing);
  *v9 = sub_261D30();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v23 = sub_2EF0(&qword_320788, &qword_27CD98);
  sub_15968C(a1, &v9[*(v23 + 44)]);
  sub_8198(v21, v18, &qword_320898, &qword_27CFE0);
  sub_8198(v9, v6, &qword_320890, &qword_27CFD8);
  sub_8198(v18, a2, &qword_320898, &qword_27CFE0);
  v24 = sub_2EF0(&qword_3208A0, &qword_27CFE8);
  v25 = a2 + *(v24 + 48);
  *v25 = 0x4038000000000000;
  *(v25 + 8) = 0;
  sub_8198(v6, a2 + *(v24 + 64), &qword_320890, &qword_27CFD8);
  sub_8E80(v9, &qword_320890, &qword_27CFD8);
  sub_8E80(v21, &qword_320898, &qword_27CFE0);
  sub_8E80(v6, &qword_320890, &qword_27CFD8);
  return sub_8E80(v18, &qword_320898, &qword_27CFE0);
}

uint64_t sub_1571A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v86 = sub_2EF0(&qword_320760, &qword_27CCF0) - 8;
  __chkstk_darwin(v86);
  v92 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v95 = &v83 - v5;
  v85 = sub_2EF0(&qword_320768, &qword_27CCF8) - 8;
  __chkstk_darwin(v85);
  v91 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v93 = (&v83 - v8);
  v84 = sub_2EF0(&qword_320770, &qword_27CD00) - 8;
  __chkstk_darwin(v84);
  v90 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v94 = (&v83 - v11);
  v12 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v15 - 8);
  v17 = (&v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = sub_2EF0(&qword_320778, &qword_27CD08) - 8;
  __chkstk_darwin(v83);
  v89 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v83 - v20;
  v22 = a1 + *(type metadata accessor for SingleBookLockupView(0) + 44);
  sub_2E18((v22 + 88), *(v22 + 112));
  sub_260950();
  sub_30CC(v22 + 88, &v135);
  CoverViewModel.CoverImageInfo.init(assetInfo:)(&v135, v104);
  *(&v105 + 1) = 0x4066800000000000;
  sub_230A8(v104);
  v110 = v104[4];
  v111 = v104[5];
  v112 = v104[6];
  v113 = v105;
  v106 = v104[0];
  v107 = v104[1];
  v108 = v104[2];
  v109 = v104[3];
  *v21 = swift_getKeyPath();
  v21[40] = 0;
  *(v21 + 6) = swift_getKeyPath();
  v21[56] = 0;
  v23 = type metadata accessor for CoverView(0);
  v24 = v23[6];
  *&v21[v24] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v25 = v23[7];
  *&v21[v25] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v26 = &v21[v23[8]];
  type metadata accessor for ProfileRestrictions(0);
  sub_15CEF0(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v26 = sub_261900();
  v26[1] = v27;
  v28 = &v21[v23[9]];
  LOBYTE(v134[0]) = 1;
  sub_2631D0();
  v29 = *(&v135 + 1);
  *v28 = v135;
  *(v28 + 1) = v29;
  v30 = &v21[v23[10]];
  v31 = v111;
  *(v30 + 4) = v110;
  *(v30 + 5) = v31;
  v32 = v113;
  *(v30 + 6) = v112;
  *(v30 + 7) = v32;
  v33 = v107;
  *v30 = v106;
  *(v30 + 1) = v33;
  v34 = v109;
  *(v30 + 2) = v108;
  *(v30 + 3) = v34;
  v21[v23[11]] = 1;
  sub_2E18((v22 + 88), *(v22 + 112));
  sub_260950();
  sub_30CC(v22 + 88, &v135);
  CoverViewModel.CoverImageInfo.init(assetInfo:)(&v135, v114);
  sub_EA708(v114);
  sub_2E18((v22 + 88), *(v22 + 112));
  sub_260950();
  sub_30CC(v22 + 88, &v135);
  CoverViewModel.CoverImageInfo.init(assetInfo:)(&v135, v115);
  sub_EA708(v115);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v35 = *(sub_2EF0(&qword_3188E0, &qword_274300) + 36);
  v88 = v21;
  v36 = &v21[v35];
  v37 = v103[16];
  *v36 = v103[15];
  *(v36 + 1) = v37;
  *(v36 + 2) = v103[17];
  LOBYTE(v22) = sub_262520();
  v38 = a1;
  sub_153B88(v17);
  sub_15CF50(v17, v14, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v14, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v39 = &v21[*(v83 + 44)];
  *v39 = v22;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  sub_157F0C(a1, 1, &v96);
  v44 = sub_261E60();
  v45 = v94;
  *v94 = v44;
  v45[1] = 0;
  *(v45 + 16) = 0;
  v46 = sub_2EF0(&qword_320780, &qword_27CD90);
  sub_158548(v38, v45 + *(v46 + 44));
  LOBYTE(v22) = sub_262520();
  sub_153B88(v17);
  sub_15CF50(v17, v14, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v14, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v47 = v45 + *(v84 + 44);
  *v47 = v22;
  *(v47 + 1) = v48;
  *(v47 + 2) = v49;
  *(v47 + 3) = v50;
  *(v47 + 4) = v51;
  v47[40] = 0;
  v52 = sub_261D30();
  v53 = v93;
  *v93 = v52;
  v53[1] = 0;
  *(v53 + 16) = 1;
  v54 = sub_2EF0(&qword_320788, &qword_27CD98);
  sub_15968C(v38, v53 + *(v54 + 44));
  LOBYTE(v22) = sub_262520();
  sub_153B88(v17);
  sub_15CF50(v17, v14, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v14, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v55 = v53 + *(v85 + 44);
  *v55 = v22;
  *(v55 + 1) = v56;
  *(v55 + 2) = v57;
  *(v55 + 3) = v58;
  *(v55 + 4) = v59;
  v55[40] = 0;
  v60 = v95;
  sub_2633A0();
  LOBYTE(v22) = sub_262520();
  sub_153B88(v17);
  sub_15CF50(v17, v14, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v14, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v61 = v60 + *(v86 + 44);
  *v61 = v22;
  *(v61 + 8) = v62;
  *(v61 + 16) = v63;
  *(v61 + 24) = v64;
  *(v61 + 32) = v65;
  *(v61 + 40) = 0;
  v86 = sub_261D10();
  sub_153B88(v17);
  sub_15CF50(v17, v14, type metadata accessor for SizeConstants.Environment);
  sub_15C9F4(v14, type metadata accessor for SizeConstants.Spacing);
  LOBYTE(v137[0]) = 0;
  sub_15AB0C(v38, 1, &v135);
  v127 = *&v136[20];
  v128 = *&v136[22];
  v129[0] = *&v136[24];
  *(v129 + 9) = *(&v136[25] + 1);
  v124 = *&v136[14];
  v125 = *&v136[16];
  v126 = *&v136[18];
  v120 = *&v136[6];
  v121 = *&v136[8];
  v122 = *&v136[10];
  v123 = *&v136[12];
  v116 = v135;
  v117 = *v136;
  v118 = *&v136[2];
  v119 = *&v136[4];
  v130[11] = *&v136[20];
  v130[12] = *&v136[22];
  v131[0] = *&v136[24];
  *(v131 + 9) = *(&v136[25] + 1);
  v130[8] = *&v136[14];
  v130[9] = *&v136[16];
  v130[10] = *&v136[18];
  v130[4] = *&v136[6];
  v130[5] = *&v136[8];
  v130[6] = *&v136[10];
  v130[7] = *&v136[12];
  v130[0] = v135;
  v130[1] = *v136;
  v130[2] = *&v136[2];
  v130[3] = *&v136[4];
  sub_8198(&v116, v134, &qword_320790, &qword_27CDA0);
  sub_8E80(v130, &qword_320790, &qword_27CDA0);
  *(&v103[11] + 7) = v127;
  *(&v103[12] + 7) = v128;
  *(&v103[13] + 7) = v129[0];
  v103[14] = *(v129 + 9);
  *(&v103[7] + 7) = v123;
  *(&v103[8] + 7) = v124;
  *(&v103[9] + 7) = v125;
  *(&v103[10] + 7) = v126;
  *(&v103[3] + 7) = v119;
  *(&v103[4] + 7) = v120;
  *(&v103[5] + 7) = v121;
  *(&v103[6] + 7) = v122;
  *(v103 + 7) = v116;
  *(&v103[1] + 7) = v117;
  *(&v103[2] + 7) = v118;
  LODWORD(v85) = LOBYTE(v137[0]);
  v66 = v89;
  sub_8198(v88, v89, &qword_320778, &qword_27CD08);
  v67 = v90;
  sub_8198(v94, v90, &qword_320770, &qword_27CD00);
  v68 = v91;
  sub_8198(v93, v91, &qword_320768, &qword_27CCF8);
  v69 = v92;
  sub_8198(v95, v92, &qword_320760, &qword_27CCF0);
  v70 = v66;
  v71 = v87;
  sub_8198(v70, v87, &qword_320778, &qword_27CD08);
  v72 = sub_2EF0(&qword_320798, &qword_27CDA8);
  v73 = v71 + v72[12];
  v74 = v100;
  v75 = v101;
  v132[4] = v100;
  v132[5] = v101;
  v76 = v102;
  v133 = v102;
  v77 = v97;
  v132[0] = v96;
  v132[1] = v97;
  v78 = v99;
  v79 = v98;
  v132[2] = v98;
  v132[3] = v99;
  *v73 = v96;
  *(v73 + 16) = v77;
  *(v73 + 64) = v74;
  *(v73 + 80) = v75;
  *(v73 + 32) = v79;
  *(v73 + 48) = v78;
  *(v73 + 96) = v76;
  sub_8198(v67, v71 + v72[16], &qword_320770, &qword_27CD00);
  sub_8198(v68, v71 + v72[20], &qword_320768, &qword_27CCF8);
  sub_8198(v69, v71 + v72[24], &qword_320760, &qword_27CCF0);
  v80 = v72[28];
  *(&v134[24] + 1) = v103[11];
  *(&v134[26] + 1) = v103[12];
  *(&v134[28] + 1) = v103[13];
  *(&v134[30] + 1) = v103[14];
  *(&v134[16] + 1) = v103[7];
  *(&v134[18] + 1) = v103[8];
  *(&v134[20] + 1) = v103[9];
  *(&v134[22] + 1) = v103[10];
  *(&v134[12] + 1) = v103[5];
  *(&v134[14] + 1) = v103[6];
  *(&v134[8] + 1) = v103[3];
  *(&v134[10] + 1) = v103[4];
  *(&v134[2] + 1) = v103[0];
  *(&v134[4] + 1) = v103[1];
  v81 = v86;
  v134[0] = v86;
  v134[1] = 0x4018000000000000;
  LOBYTE(v28) = v85;
  LOBYTE(v134[2]) = v85;
  *(&v134[6] + 1) = v103[2];
  memcpy((v71 + v80), v134, 0x101uLL);
  sub_8198(v132, &v135, &qword_3207A0, &qword_27CDB0);
  sub_8198(v134, &v135, &qword_3207A8, &qword_27CDB8);
  sub_8E80(v95, &qword_320760, &qword_27CCF0);
  sub_8E80(v93, &qword_320768, &qword_27CCF8);
  sub_8E80(v94, &qword_320770, &qword_27CD00);
  sub_8E80(v88, &qword_320778, &qword_27CD08);
  *(&v136[22] + 1) = v103[11];
  *(&v136[24] + 1) = v103[12];
  *(&v136[26] + 1) = v103[13];
  *(&v136[28] + 1) = v103[14];
  *(&v136[14] + 1) = v103[7];
  *(&v136[16] + 1) = v103[8];
  *(&v136[18] + 1) = v103[9];
  *(&v136[20] + 1) = v103[10];
  *(&v136[6] + 1) = v103[3];
  *(&v136[8] + 1) = v103[4];
  *(&v136[10] + 1) = v103[5];
  *(&v136[12] + 1) = v103[6];
  *(v136 + 1) = v103[0];
  *(&v136[2] + 1) = v103[1];
  *&v135 = v81;
  *(&v135 + 1) = 0x4018000000000000;
  LOBYTE(v136[0]) = v28;
  *(&v136[4] + 1) = v103[2];
  sub_8E80(&v135, &qword_3207A8, &qword_27CDB8);
  sub_8E80(v92, &qword_320760, &qword_27CCF0);
  sub_8E80(v91, &qword_320768, &qword_27CCF8);
  sub_8E80(v90, &qword_320770, &qword_27CD00);
  v137[4] = v100;
  v137[5] = v101;
  v138 = v102;
  v137[0] = v96;
  v137[1] = v97;
  v137[2] = v98;
  v137[3] = v99;
  sub_8E80(v137, &qword_3207A0, &qword_27CDB0);
  return sub_8E80(v89, &qword_320778, &qword_27CD08);
}

__n128 sub_157F0C@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v6 - 8);
  v57 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v8 - 8);
  v56 = (v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v10 - 8);
  v58 = (v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v12 - 8);
  v14 = v53 - v13;
  v15 = sub_262730();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FontConstants.SingleBookWidget(0);
  __chkstk_darwin(v19 - 8);
  v21 = (v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (a1 + *(type metadata accessor for SingleBookLockupView(0) + 44));
  if (v22[1])
  {
    v55 = a3;
    v53[1] = *v22;

    sub_153F60(v21);
    (*(v16 + 104))(v18, enum case for Font.TextStyle.caption(_:), v15);
    v54 = a2;
    v23 = enum case for Font.Design.rounded(_:);
    v24 = sub_2625C0();
    v25 = *(v24 - 8);
    (*(v25 + 104))(v14, v23, v24);
    (*(v25 + 56))(v14, 0, 1, v24);
    sub_262680();
    sub_8E80(v14, &qword_318458, &unk_26B270);
    (*(v16 + 8))(v18, v15);
    sub_2625A0();

    sub_15C9F4(v21, type metadata accessor for FontConstants.SingleBookWidget);
    v26 = sub_262840();
    v28 = v27;
    LOBYTE(v24) = v29;

    v30 = v58;
    sub_153D74(v58);
    v31 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    sub_15C9F4(v30, type metadata accessor for ColorConstants);
    *&v76 = v31;
    v32 = sub_2627F0();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    sub_39DBC(v26, v28, v24 & 1);

    KeyPath = swift_getKeyPath();
    v40 = sub_262520();
    if (v54)
    {
      v41 = v34;
      v42 = v56;
      sub_153B88(v56);
      v43 = v42;
      v44 = v57;
      sub_15CF50(v43, v57, type metadata accessor for SizeConstants.Environment);
      v45 = v44;
      v34 = v41;
      sub_15C9F4(v45, type metadata accessor for SizeConstants.Spacing);
    }

    sub_2610C0();
    v75 = v36 & 1;
    v61 = 0;
    v60 = 0;
    v59 = 0;
    v62 = v32;
    v63 = v34;
    v64 = v36 & 1;
    v65 = v38;
    v66 = KeyPath;
    v67 = 1;
    v68 = 0;
    v69 = v40;
    v70 = v46;
    v71 = v47;
    v72 = v48;
    v73 = v49;
    v74 = 0;
    sub_2EF0(&qword_3189C8, &qword_27CEA0);
    sub_58040();
    sub_261F80();
    a3 = v55;
  }

  else
  {
    v75 = 1;
    HIBYTE(v74) = 1;
    sub_2EF0(&qword_3189C8, &qword_27CEA0);
    sub_58040();
    sub_261F80();
  }

  v50 = v81;
  *(a3 + 64) = v80;
  *(a3 + 80) = v50;
  *(a3 + 96) = v82;
  v51 = v77;
  *a3 = v76;
  *(a3 + 16) = v51;
  result = v79;
  *(a3 + 32) = v78;
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_158548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v4 = type metadata accessor for SingleBookLockupView(0);
  v5 = v4 - 8;
  v117[0] = *(v4 - 8);
  __chkstk_darwin(v4);
  v117[1] = v6;
  v118 = v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_2EF0(&qword_3207D8, &qword_27CE80);
  v141 = *(v138 - 8);
  __chkstk_darwin(v138);
  v119 = v117 - v7;
  v8 = sub_2EF0(&qword_3207E0, &qword_27CE88);
  __chkstk_darwin(v8 - 8);
  v139 = v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v150 = v117 - v11;
  v12 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v12 - 8);
  v137 = v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v14 - 8);
  v135 = (v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v16 - 8);
  v142 = (v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v18 - 8);
  v134 = v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v117 - v21;
  v23 = sub_262730();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v133 = v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v117 - v27;
  v29 = type metadata accessor for FontConstants.SingleBookWidget(0);
  __chkstk_darwin(v29 - 8);
  v132 = (v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v31);
  v33 = (v117 - v32);
  v143 = a1 + *(v5 + 52);

  v140 = a1;
  sub_153F60(v33);
  v151 = v24;
  v34 = v24 + 104;
  v35 = *(v24 + 104);
  v131 = enum case for Font.TextStyle.body(_:);
  v36 = v23;
  v129 = v35;
  v130 = v34;
  v35(v28);
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v37 = sub_2625C0();
    v38 = *(*(v37 - 8) + 56);
    v127 = (v37 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v128 = v37;
    v38(v22, 1, 1);
  }

  else
  {
    v39 = enum case for Font.Design.serif (_:);
    v40 = sub_2625C0();
    v41 = *(v40 - 8);
    v42 = *(v41 + 104);
    v127 = (v40 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v42(v22, v39, v40);
    v43 = *(v41 + 56);
    v128 = v40;
    v43(v22, 0, 1, v40);
  }

  sub_262680();
  sub_8E80(v22, &qword_318458, &unk_26B270);
  v44 = *(v151 + 8);
  v151 += 8;
  v126 = v44;
  v121 = v36;
  v44(v28, v36);
  sub_2625A0();

  v125 = type metadata accessor for FontConstants.SingleBookWidget;
  sub_15C9F4(v33, type metadata accessor for FontConstants.SingleBookWidget);
  v45 = sub_262840();
  v47 = v46;
  v49 = v48;

  v50 = v142;
  sub_153D74(v142);
  v51 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  v124 = type metadata accessor for ColorConstants;
  sub_15C9F4(v50, type metadata accessor for ColorConstants);
  v181[0] = v51;
  v52 = sub_2627F0();
  v147 = v53;
  v148 = v52;
  v55 = v54;
  v149 = v56;
  sub_39DBC(v45, v47, v49 & 1);

  KeyPath = swift_getKeyPath();
  v144 = v55 & 1;
  v203 = v55 & 1;
  v201 = 0;
  v145 = sub_262520();
  v57 = v135;
  sub_153B88(v135);
  v123 = type metadata accessor for SizeConstants.Environment;
  v58 = v137;
  sub_15CF50(v57, v137, type metadata accessor for SizeConstants.Environment);
  v122 = type metadata accessor for SizeConstants.Spacing;
  sub_15C9F4(v58, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v204 = 0;
  v120 = *(v143 + 32);

  v67 = v132;
  sub_153F60(v132);
  v68 = v133;
  v69 = v121;
  v129(v133, v131, v121);
  sub_2625C0();
  v70 = v134;
  (*(*(v128 - 8) + 56))(v134, 1, 1);
  sub_262680();
  sub_8E80(v70, &qword_318458, &unk_26B270);
  v126(v68, v69);
  sub_15C9F4(v67, v125);
  v80 = sub_262840();
  v72 = v71;
  LOBYTE(v70) = v73;

  v74 = v142;
  sub_153D74(v142);
  v75 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  sub_15C9F4(v74, v124);
  v181[0] = v75;
  v142 = sub_2627F0();
  v134 = v76;
  LOBYTE(v74) = v77;
  v151 = v78;
  sub_39DBC(v80, v72, v70 & 1);

  v79 = swift_getKeyPath();
  LODWORD(v80) = sub_262520();
  sub_153B88(v57);
  sub_15CF50(v57, v58, v123);
  sub_15C9F4(v58, v122);
  sub_2610C0();
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v89 = v74 & 1;
  LOBYTE(v181[0]) = v74 & 1;
  LOBYTE(v166[0]) = 0;
  LOBYTE(v159) = 0;
  v90 = 1;
  v91 = v138;
  if ((*(v143 + 64) & 1) == 0)
  {
    v135 = v66;
    v92 = v64;
    v93 = v62;
    v94 = v60;
    v95 = *(v143 + 48);
    if (v95 > 0.0)
    {
      v96 = *(v143 + 56);
      v97 = v118;
      sub_15CFB8(v140, v118, type metadata accessor for SingleBookLockupView);
      v98 = *(v117[0] + 80);
      LODWORD(v143) = v80;
      v80 = (v98 + 32) & ~v98;
      v99 = swift_allocObject();
      *(v99 + 16) = v95;
      *(v99 + 24) = v96;
      sub_15CF50(v97, v99 + v80, type metadata accessor for SingleBookLockupView);
      sub_2EF0(&qword_3207F8, &unk_27CEA8);
      sub_260A70();
      sub_260A50();
      sub_15CE38();
      sub_15CEF0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking, &protocol conformance descriptor for _JetLocalizeDefaultWorking);
      sub_15CEF0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed, &protocol conformance descriptor for _JetLocalizeDefaultFailed);
      LOBYTE(v80) = v143;
      v100 = v119;
      sub_260A80();
      (*(v141 + 32))(v150, v100, v91);
      v90 = 0;
    }

    v60 = v94;
    v62 = v93;
    v64 = v92;
    v66 = v135;
  }

  v133 = v79;
  LODWORD(v137) = v89;
  v101 = v150;
  (*(v141 + 56))(v150, v90, 1, v91);
  v102 = v139;
  sub_8198(v101, v139, &qword_3207E0, &qword_27CE88);
  *&v152 = v148;
  *(&v152 + 1) = v147;
  LOBYTE(v153) = v144;
  *(&v153 + 1) = *v202;
  DWORD1(v153) = *&v202[3];
  *(&v153 + 1) = v149;
  *&v154 = KeyPath;
  *(&v154 + 1) = 2;
  LOWORD(v155) = 0;
  BYTE2(v155) = 1;
  *(&v155 + 3) = v206;
  BYTE7(v155) = v207;
  BYTE8(v155) = v145;
  HIDWORD(v155) = *&v205[3];
  *(&v155 + 9) = *v205;
  *&v156 = v60;
  *(&v156 + 1) = v62;
  *&v157 = v64;
  *(&v157 + 1) = v66;
  v158 = 0;
  v103 = v136;
  *(v136 + 96) = 0;
  v104 = v153;
  *v103 = v152;
  *(v103 + 16) = v104;
  v105 = v155;
  *(v103 + 32) = v154;
  *(v103 + 48) = v105;
  v106 = v157;
  *(v103 + 64) = v156;
  *(v103 + 80) = v106;
  v107 = v142;
  v108 = v134;
  *&v159 = v142;
  *(&v159 + 1) = v134;
  LOBYTE(v160) = v89;
  DWORD1(v160) = *(v200 + 3);
  *(&v160 + 1) = v200[0];
  v109 = v151;
  *(&v160 + 1) = v151;
  *&v161 = v79;
  *(&v161 + 1) = 2;
  LOBYTE(v162) = 0;
  DWORD1(v162) = *&v199[3];
  *(&v162 + 1) = *v199;
  BYTE8(v162) = v80;
  HIDWORD(v162) = *&v198[3];
  *(&v162 + 9) = *v198;
  *&v163 = v82;
  *(&v163 + 1) = v84;
  *&v164 = v86;
  *(&v164 + 1) = v88;
  v165 = 0;
  v110 = v163;
  v111 = v164;
  *(v103 + 200) = 0;
  *(v103 + 184) = v111;
  *(v103 + 168) = v110;
  v112 = v161;
  *(v103 + 152) = v162;
  v113 = v159;
  v114 = v160;
  *(v103 + 136) = v112;
  *(v103 + 120) = v114;
  *(v103 + 104) = v113;
  v115 = v103 + *(sub_2EF0(&qword_3207E8, &qword_27CE90) + 64);
  sub_8198(v102, v115, &qword_3207E0, &qword_27CE88);
  sub_8198(&v152, v181, &qword_3207F0, &qword_27CE98);
  sub_8198(&v159, v181, &qword_3189C8, &qword_27CEA0);
  sub_8E80(v150, &qword_3207E0, &qword_27CE88);
  sub_8E80(v102, &qword_3207E0, &qword_27CE88);
  v166[0] = v107;
  v166[1] = v108;
  v167 = v137;
  *v168 = v200[0];
  *&v168[3] = *(v200 + 3);
  v169 = v109;
  v170 = v133;
  v171 = 2;
  v172 = 0;
  *v173 = *v199;
  *&v173[3] = *&v199[3];
  v174 = v80;
  *&v175[3] = *&v198[3];
  *v175 = *v198;
  v176 = v82;
  v177 = v84;
  v178 = v86;
  v179 = v88;
  v180 = 0;
  sub_8E80(v166, &qword_3189C8, &qword_27CEA0);
  v181[0] = v148;
  v181[1] = v147;
  v182 = v144;
  *v183 = *v202;
  *&v183[3] = *&v202[3];
  v184 = v149;
  v185 = KeyPath;
  v186 = 2;
  v187 = 0;
  v188 = 1;
  v189 = v206;
  v190 = v207;
  v191 = v145;
  *&v192[3] = *&v205[3];
  *v192 = *v205;
  v193 = v60;
  v194 = v62;
  v195 = v64;
  v196 = v66;
  v197 = 0;
  return sub_8E80(v181, &qword_3207F0, &qword_27CE98);
}