void sub_1000F8D8C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

LABEL_7:
      if (a4)
      {
        sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
        swift_arrayInitWithCopy();
        goto LABEL_9;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = 0;
  v8 = 0;
  if (v7 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v9)
    {
      sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_17:
    __break(1u);
  }
}

void sub_1000F8F20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = a3[1];
  a5(0);
  if (v6 >= v8)
  {
    v10 = 0;
    v9 = 0;
    if (v8 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v8 - v6;
  if (__OFSUB__(v8, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = a4;
  if (v6 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v6 < v8 && v9 >= 1)
  {
    if (v10)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_1000F903C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  v7 = *(*a2 + 32);
  v6 = *(*a2 + 40);
  v8 = *(*a2 + 48);
  v9 = *(*a2 + 56);
  v15 = *(*a1 + 64);
  v16 = *(*a2 + 64);
  v10 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24);
  if (!v10 && (sub_1001D2470() & 1) == 0)
  {
    return 0;
  }

  v11 = v3 == v7 && v2 == v6;
  if (!v11 && (sub_1001D2470() & 1) == 0)
  {
    return 0;
  }

  v12 = v4 == v8 && v5 == v9;
  if (!v12 && (sub_1001D2470() & 1) == 0)
  {
    return 0;
  }

  v13 = sub_1000CF830(v15, v16);

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for RequestLog.Element(0);

  return sub_1001CFD30();
}

uint64_t sub_1000F9208(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1000F9258()
{
  result = qword_10022C8E0;
  if (!qword_10022C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C8E0);
  }

  return result;
}

uint64_t sub_1000F92AC(void *a1)
{
  v54 = type metadata accessor for RequestLog.Element(0);
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v57 = (&v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = sub_1001CFD60();
  v52 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100011AC0(&qword_10022C8E8, &qword_1001DD4A0);
  v51 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v46 - v5;
  v7 = sub_100011AC0(&qword_10022C8F0, &qword_1001DD4A8);
  v58 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v10 = sub_1001D0110();
  v11 = *v10;
  v12 = a1[3];
  v59 = a1;
  v13 = sub_100024DC8(a1, v12);
  sub_1000F65F4();

  v14 = v62;
  sub_1001D25E0();
  if (v14)
  {

    sub_100011CF0(v59);
    return v13;
  }

  v47 = v10;
  v48 = v6;
  v50 = v11;
  v49 = v4;
  v15 = v56;
  v16 = v57;
  LOBYTE(v65) = 1;
  sub_1001D2200();
  v46 = v9;
  v71 = _swiftEmptyArrayStorage;
  sub_100024DC8(v69, v70);
  v17 = sub_1001D23E0();
  if ((v18 & 1) == 0)
  {
    sub_1000F64E0(v17);
  }

  sub_100024DC8(v69, v70);
  while ((sub_1001D2400() & 1) == 0)
  {
    sub_1000F9208(v69, v70);
    sub_1000E544C();
    sub_1001D23F0();
    v61 = v66;
    v62 = v65;
    v19 = v67;
    type metadata accessor for RequestLog.Element.Storage();
    v60 = v68;
    v20 = swift_allocObject();
    v21 = v61;
    *(v20 + 16) = v62;
    *(v20 + 32) = v21;
    *(v20 + 48) = v19;
    *(v20 + 56) = v60;
    sub_1001D19B0();
    if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1001D19F0();
    }

    sub_1001D1A20();
    sub_100024DC8(v69, v70);
  }

  LOBYTE(v64) = 0;
  sub_1001D2200();
  v22 = *v47;
  v64 = *v47;
  sub_100024DC8(&v65, *(&v66 + 1));

  v23 = sub_1001D23E0();
  if ((v24 & 1) == 0)
  {
    v25 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v22[2] < v25 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000F7E2C(isUniquelyReferenced_nonNull_native, v25, 1, type metadata accessor for RequestLog.Element, &qword_10022C8F8, &unk_1001DD4B0, type metadata accessor for RequestLog.Element);
    }
  }

  sub_100024DC8(&v65, *(&v66 + 1));
  if (sub_1001D2400())
  {
LABEL_16:
    (*(v58 + 8))(v46, v7);

    v13 = v64;
    sub_100011CF0(&v65);

    sub_100011CF0(v69);
    sub_100011CF0(v59);
    return v13;
  }

  *&v62 = v52 + 16;
  *&v61 = v52 + 8;
  v28 = (v51 + 8);
  while (1)
  {
    sub_1000F9208(&v65, *(&v66 + 1));
    sub_1000F9258();
    sub_1001D23D0();
    v63 = 0;
    v29 = sub_1001D2270();
    v63 = 1;
    sub_1000FA208(&qword_100228910, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = sub_1001D2290();
    if ((v71 & 0xC000000000000001) != 0)
    {
      v32 = sub_1001D2040();
      v31 = v15;
      v30 = v55;
      goto LABEL_23;
    }

    v30 = v55;
    if ((v29 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v29 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v31 = v15;
    v32 = *(v71 + 8 * v29 + 32);

LABEL_23:
    result = (*v62)(v16 + *(v54 + 20), v30, v31);
    *v16 = v32;
    v33 = v64;
    v34 = v64[3];
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_40;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (v33[2] < v35 || (result & 1) == 0)
    {
      result = sub_1000F7E2C(result, v35, 0, type metadata accessor for RequestLog.Element, &qword_10022C8F8, &unk_1001DD4B0, type metadata accessor for RequestLog.Element);
      v33 = v64;
    }

    v37 = v33[3];
    v36 = v33[4];
    v41 = __OFADD__(v36, v37);
    v38 = v36 + v37;
    if (v41)
    {
      goto LABEL_42;
    }

    v39 = v49;
    if (v37 < 0)
    {
      if (v38 < 0)
      {
        v43 = v33[2];
        v41 = __OFADD__(v38, v43);
        v38 += v43;
        if (v41)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      v40 = v33[2];
      v41 = __OFSUB__(v38, v40);
      v42 = v38 - v40;
      if (v42 < 0 == v41)
      {
        v38 = v42;
        if (v41)
        {
          goto LABEL_44;
        }
      }
    }

    result = sub_10005EF28(v16, v33 + ((*(v53 + 80) + 40) & ~*(v53 + 80)) + *(v53 + 72) * v38);
    v44 = v33[3];
    v41 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (v41)
    {
      goto LABEL_43;
    }

    v33[3] = v45;
    (*v61)(v30, v31);
    (*v28)(v48, v39);
    sub_10005EF8C(v16);
    sub_100024DC8(&v65, *(&v66 + 1));
    if (sub_1001D2400())
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1000F9CAC(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022C7C0, &qword_1001DD040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F9D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F9DB8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001CFD60();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000F9E78(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1001CFD60();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000F9F1C(uint64_t a1)
{
  result = type metadata accessor for RequestLog.Element.Storage();
  if (v2 <= 0x3F)
  {
    result = sub_1001CFD60();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000F9FFC()
{
  result = qword_10022C9B8;
  if (!qword_10022C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C9B8);
  }

  return result;
}

unint64_t sub_1000FA054()
{
  result = qword_10022C9C0;
  if (!qword_10022C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C9C0);
  }

  return result;
}

unint64_t sub_1000FA0AC()
{
  result = qword_10022C9C8;
  if (!qword_10022C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C9C8);
  }

  return result;
}

unint64_t sub_1000FA104()
{
  result = qword_10022C9D0;
  if (!qword_10022C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C9D0);
  }

  return result;
}

unint64_t sub_1000FA15C()
{
  result = qword_10022C9D8;
  if (!qword_10022C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C9D8);
  }

  return result;
}

unint64_t sub_1000FA1B4()
{
  result = qword_10022C9E0;
  if (!qword_10022C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022C9E0);
  }

  return result;
}

uint64_t sub_1000FA208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000FA250(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022C7C0, &qword_1001DD040);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FA2C8(uint64_t a1, uint64_t a2, void *a3)
{
  v55 = a1;
  v56 = a2;
  v4 = sub_100011AC0(&qword_10022C9F8, &unk_1001DD808);
  __chkstk_darwin(v4 - 8);
  v51 = &v43 - v5;
  v52 = type metadata accessor for SessionLog.Element(0);
  v45 = *(v52 - 8);
  v6 = __chkstk_darwin(v52);
  v50 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v44 = &v43 - v9;
  v10 = __chkstk_darwin(v8);
  v46 = (&v43 - v11);
  __chkstk_darwin(v10);
  v48 = (&v43 - v12);
  v13 = sub_1001CFD60();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100011AC0(&qword_1002292A0, &qword_1001D6410);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v43 - v19;
  v21 = a3[3];
  v47 = a3;
  sub_100024DC8(a3, v21);
  sub_1001D0430();
  sub_1001D0210();
  v22 = *(v18 + 8);
  v43 = v17;
  v22(v20, v17);
  sub_1001CFCF0();
  v23 = *v54;
  v58 = v16;
  v24 = v54;
  v25 = sub_1000F2568(sub_1000F4384, v57, v23);

  *v24 = v25;
  v49 = v14;
  v26 = *(v14 + 8);
  v53 = v13;
  v26(v16, v13);
  if (!v25[2])
  {
    goto LABEL_7;
  }

  v27 = sub_100006598(v55);
  if ((v28 & 1) == 0)
  {
    goto LABEL_7;
  }

  v29 = v25[7];
  v30 = v44;
  sub_1000FB278(v29 + *(v45 + 72) * v27, v44);
  v31 = v46;
  sub_1000FB7B8(v30, v46);
  v32 = v22;
  v34 = *(v52 + 20);
  v33 = (v52 + 20);
  v35 = v47[3];
  v44 = v47[4];
  v45 = v34;
  sub_100024DC8(v47, v35);
  sub_1001D0430();
  sub_1001D0210();
  v32(v20, v43);
  sub_1001CFCE0();
  LOBYTE(v30) = sub_1001CFCC0();
  v26(v16, v53);
  if ((v30 & 1) == 0)
  {
    sub_1000FB398(v31);
LABEL_7:
    v33 = (v52 + 20);
    v39 = 1;
LABEL_8:
    v40 = v48;
    (*(v49 + 16))(v48 + *v33, v56, v53);
    *v40 = v39;
    v41 = v50;
    sub_1000FB278(v40, v50);
    v42 = v51;
    sub_1000FB538(v41, v55, v51);
    sub_100011F00(v42, &qword_10022C9F8, &unk_1001DD808);
    return sub_1000FB398(v40);
  }

  v36 = *v31;
  result = sub_1000FB398(v31);
  v38 = __CFADD__(v36, 1);
  v39 = v36 + 1;
  if (!v38)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FA7B0(void *a1)
{
  v3 = sub_100011AC0(&qword_10022CAE0, &qword_1001DD910);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100024DC8(a1, a1[3]);
  sub_1000FBD84();
  sub_1001D25F0();
  v8[15] = 0;
  sub_1001D2330();
  if (!v1)
  {
    type metadata accessor for SessionLog.Element(0);
    v8[14] = 1;
    sub_1001CFD60();
    sub_1000FBDD8(&qword_100228918, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1001D2340();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000FA968@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = sub_1001CFD60();
  v18 = *(v21 - 8);
  __chkstk_darwin(v21);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100011AC0(&qword_10022CAD0, &qword_1001DD908);
  v20 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = &v15 - v6;
  v8 = type metadata accessor for SessionLog.Element(0);
  __chkstk_darwin(v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100024DC8(a1, a1[3]);
  sub_1000FBD84();
  sub_1001D25E0();
  if (!v2)
  {
    v17 = v8;
    v11 = v20;
    v12 = v21;
    v24 = 0;
    v13 = v22;
    *v10 = sub_1001D2280();
    v23 = 1;
    sub_1000FBDD8(&qword_100228910, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v16 = v5;
    sub_1001D2290();
    (*(v11 + 8))(v7, v13);
    (*(v18 + 32))(v10 + *(v17 + 20), v16, v12);
    sub_1000FB7B8(v10, v19);
  }

  return sub_100011CF0(a1);
}

uint64_t sub_1000FAC4C(void *a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022CAB8, &qword_1001DD900);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100024DC8(a1, a1[3]);
  sub_1000FBB58();
  sub_1001D25F0();
  v9[1] = a2;
  sub_100011AC0(&qword_10022CAA0, &qword_1001DD8F8);
  sub_1000FBC98();
  sub_1001D2340();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000FADA8()
{
  if (*v0)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x746E756F63;
  }
}

uint64_t sub_1000FADE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v6 || (sub_1001D2470() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001D2470();

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

uint64_t sub_1000FAEC4(uint64_t a1)
{
  v2 = sub_1000FBD84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FAF00(uint64_t a1)
{
  v2 = sub_1000FBD84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000FAF6C(uint64_t a1)
{
  v2 = sub_1000FBB58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FAFA8(uint64_t a1)
{
  v2 = sub_1000FBB58();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000FAFE4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000FB9C4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

BOOL sub_1000FB02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[0] = a2;
  v20[1] = a3;
  v4 = sub_1001CFD60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&qword_10022C9F0, &qword_1001DD800);
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v20 - v13;
  v15 = sub_1001CFDA0();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a1, v15);
  sub_1000FB278(v20[0], &v14[*(v9 + 56)]);
  sub_1000FB328(v14, v12);
  v17 = &v12[*(v9 + 56)];
  v18 = type metadata accessor for SessionLog.Element(0);
  (*(v5 + 16))(v7, v17 + *(v18 + 20), v4);
  sub_1000FB398(v17);
  LOBYTE(v17) = sub_1001CFCD0();
  (*(v5 + 8))(v7, v4);
  sub_100011F00(v14, &qword_10022C9F0, &qword_1001DD800);
  (*(v16 + 8))(v12, v15);
  return (v17 & 1) == 0;
}

uint64_t sub_1000FB278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionLog.Element(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SessionLog.Element(uint64_t a1)
{
  result = qword_10022CA58;
  if (!qword_10022CA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FB328(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022C9F0, &qword_1001DD800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FB398(uint64_t a1)
{
  v2 = type metadata accessor for SessionLog.Element(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FB3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SessionLog.Element(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v16 - v10);
  if (!*(a3 + 16))
  {
    return 0;
  }

  v12 = sub_100006598(a2);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  sub_1000FB278(*(a3 + 56) + *(v6 + 72) * v12, v9);
  sub_1000FB7B8(v9, v11);
  if (sub_1001CFCD0())
  {
    v14 = *v11;
  }

  else
  {
    v14 = 0;
  }

  sub_1000FB398(v11);
  return v14;
}

uint64_t sub_1000FB538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v29 = a3;
  v8 = sub_1001CFDA0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  v30 = v13;
  v15 = sub_100006598(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v14;
  if (v13[3] >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v22 = v29;
      v21 = v30;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v11, a2, v8);
      sub_100018008(v15, v11, a1, v21);
      v28 = type metadata accessor for SessionLog.Element(0);
      result = (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
      goto LABEL_12;
    }

LABEL_10:
    sub_100010298();
    v22 = v29;
    v21 = v30;
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  sub_10000D19C(v18, isUniquelyReferenced_nonNull_native);
  v19 = sub_100006598(a2);
  if ((v4 & 1) == (v20 & 1))
  {
    v15 = v19;
    v22 = v29;
    v21 = v30;
    if ((v4 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    v23 = v21[7];
    v24 = type metadata accessor for SessionLog.Element(0);
    v25 = *(v24 - 8);
    v26 = *(v25 + 72) * v15;
    sub_1000FB7B8(v23 + v26, v22);
    sub_1000FB7B8(a1, v21[7] + v26);
    result = (*(v25 + 56))(v22, 0, 1, v24);
LABEL_12:
    *v5 = v21;
    return result;
  }

  result = sub_1001D24F0();
  __break(1u);
  return result;
}

uint64_t sub_1000FB7B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionLog.Element(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FB830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1001CFD60();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000FB8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1001CFD60();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000FB938(uint64_t a1)
{
  result = sub_1001CFD60();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1000FB9C4(void *a1)
{
  v3 = sub_100011AC0(&qword_10022CA90, &qword_1001DD8F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  sub_1000DB010(_swiftEmptyArrayStorage);

  v7 = sub_100024DC8(a1, a1[3]);
  sub_1000FBB58();
  sub_1001D25E0();
  if (v1)
  {
    sub_100011CF0(a1);
  }

  else
  {
    sub_100011AC0(&qword_10022CAA0, &qword_1001DD8F8);
    sub_1000FBBAC();
    sub_1001D2290();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100011CF0(a1);
  }

  return v7;
}

unint64_t sub_1000FBB58()
{
  result = qword_10022CA98;
  if (!qword_10022CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CA98);
  }

  return result;
}

unint64_t sub_1000FBBAC()
{
  result = qword_10022CAA8;
  if (!qword_10022CAA8)
  {
    sub_100011DF4(&qword_10022CAA0, &qword_1001DD8F8);
    sub_1000FBDD8(&qword_100228950, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1000FBDD8(&qword_10022CAB0, type metadata accessor for SessionLog.Element, &unk_1001DD878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CAA8);
  }

  return result;
}

unint64_t sub_1000FBC98()
{
  result = qword_10022CAC0;
  if (!qword_10022CAC0)
  {
    sub_100011DF4(&qword_10022CAA0, &qword_1001DD8F8);
    sub_1000FBDD8(&qword_100228B40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1000FBDD8(&qword_10022CAC8, type metadata accessor for SessionLog.Element, &unk_1001DD850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CAC0);
  }

  return result;
}

unint64_t sub_1000FBD84()
{
  result = qword_10022CAD8;
  if (!qword_10022CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CAD8);
  }

  return result;
}

uint64_t sub_1000FBDD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000FBE44()
{
  result = qword_10022CAE8;
  if (!qword_10022CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CAE8);
  }

  return result;
}

unint64_t sub_1000FBE9C()
{
  result = qword_10022CAF0;
  if (!qword_10022CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CAF0);
  }

  return result;
}

unint64_t sub_1000FBEF4()
{
  result = qword_10022CAF8;
  if (!qword_10022CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CAF8);
  }

  return result;
}

unint64_t sub_1000FBF4C()
{
  result = qword_10022CB00;
  if (!qword_10022CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CB00);
  }

  return result;
}

unint64_t sub_1000FBFA4()
{
  result = qword_10022CB08;
  if (!qword_10022CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CB08);
  }

  return result;
}

unint64_t sub_1000FBFFC()
{
  result = qword_10022CB10;
  if (!qword_10022CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CB10);
  }

  return result;
}

void *sub_1000FC050(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_1001D0160();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v22 = _swiftEmptyArrayStorage;
  sub_100151668(0, v9, 0);
  v10 = v22;
  v11 = *(type metadata accessor for RateLimitConfiguration(0) - 8);
  v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v18 = v6 + 32;
  v17 = *(v11 + 72);
  while (1)
  {
    v20(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = v10[2];
    v13 = v10[3];
    if (v14 >= v13 >> 1)
    {
      sub_100151668((v13 > 1), v14 + 1, 1);
      v10 = v22;
    }

    v10[2] = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v19);
    v12 += v17;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FC254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 464) = a4;
  *(v6 + 472) = v5;
  *(v6 + 600) = a5;
  *(v6 + 448) = a2;
  *(v6 + 456) = a3;
  *(v6 + 440) = a1;
  v7 = sub_1001CFD60();
  *(v6 + 480) = v7;
  *(v6 + 488) = *(v7 - 8);
  *(v6 + 496) = swift_task_alloc();
  v8 = sub_1001D02F0();
  *(v6 + 504) = v8;
  *(v6 + 512) = *(v8 - 8);
  *(v6 + 520) = swift_task_alloc();
  v9 = sub_1001CFDA0();
  *(v6 + 528) = v9;
  *(v6 + 536) = *(v9 - 8);
  *(v6 + 544) = swift_task_alloc();

  return _swift_task_switch(sub_1000FC3D8, 0, 0);
}

uint64_t sub_1000FC3D8(uint64_t a1)
{
  if (*(v1 + 600) == 1)
  {
    v2 = *(v1 + 544);
    v3 = *(v1 + 536);
    v4 = *(v1 + 520);
    v6 = *(v1 + 504);
    v5 = *(v1 + 512);
    v7 = *(v1 + 472);
    v38 = *(v1 + 456);
    v39 = *(v1 + 464);
    v37 = *(v1 + 448);
    v35 = *(v1 + 528);
    v36 = *(v1 + 440);
    v8 = *(v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter);

    sub_1001CFD90();
    v9 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_config;
    v10 = sub_1001D05B0();
    *(v1 + 392) = v10;
    *(v1 + 400) = &protocol witness table for DefaultConfiguration;
    v11 = sub_10003B47C((v1 + 368));
    (*(*(v10 - 8) + 16))(v11, v7 + v9, v10);
    v12 = (v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo);
    v14 = *(v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 16);
    v13 = *(v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 32);
    *(v1 + 16) = *(v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo);
    *(v1 + 32) = v14;
    *(v1 + 48) = v13;
    v15 = v12[6];
    v17 = v12[3];
    v16 = v12[4];
    *(v1 + 96) = v12[5];
    *(v1 + 112) = v15;
    *(v1 + 64) = v17;
    *(v1 + 80) = v16;
    v18 = v12[10];
    v20 = v12[7];
    v19 = v12[8];
    *(v1 + 160) = v12[9];
    *(v1 + 176) = v18;
    *(v1 + 128) = v20;
    *(v1 + 144) = v19;
    sub_100011AC0(&qword_10022CB48, &qword_1001DDB40);
    v21 = swift_allocObject();
    *(v1 + 552) = v21;
    (*(v5 + 104))(v4, enum case for TC2LogCategory.rateLimitRequest(_:), v6);
    sub_1000884D8(v1 + 16, v1 + 192);
    sub_1001D08B0();
    (*(v5 + 8))(v4, v6);
    sub_100101EF8(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v40 = sub_1001D23A0();
    v41 = v22;
    v43._countAndFlagsBits = 58;
    v43._object = 0xE100000000000000;
    sub_1001D18B0(v43);
    v23 = (v21 + qword_10022CB58);
    *v23 = v40;
    v23[1] = v41;
    *(v21 + *(*v21 + 152)) = v8;
    (*(v3 + 32))(v21 + *(*v21 + 160), v2, v35);
    sub_1000446FC((v1 + 368), v21 + *(*v21 + 168));
    v24 = (v21 + *(*v21 + 176));
    v25 = *(v1 + 32);
    *v24 = *(v1 + 16);
    v24[1] = v25;
    v26 = *(v1 + 96);
    v24[4] = *(v1 + 80);
    v24[5] = v26;
    v27 = *(v1 + 64);
    v24[2] = *(v1 + 48);
    v24[3] = v27;
    v28 = *(v1 + 176);
    v24[9] = *(v1 + 160);
    v24[10] = v28;
    v29 = *(v1 + 144);
    v24[7] = *(v1 + 128);
    v24[8] = v29;
    v24[6] = *(v1 + 112);
    v30 = (v21 + *(*v21 + 184));
    *v30 = v36;
    v30[1] = v37;
    v31 = (v21 + *(*v21 + 192));
    *v31 = v38;
    v31[1] = v39;

    v32 = swift_task_alloc();
    *(v1 + 560) = v32;
    *v32 = v1;
    v32[1] = sub_1000FC7F4;

    return sub_1000FCF28();
  }

  else
  {
    *(v1 + 576) = 0;
    v34 = *(*(v1 + 472) + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter);
    *(v1 + 584) = v34;
    _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();

    return _swift_task_switch(sub_1000FC9D0, v34, 0);
  }
}

uint64_t sub_1000FC7F4()
{
  *(*v1 + 568) = v0;

  if (v0)
  {
    v2 = sub_1000FCC94;
  }

  else
  {
    v2 = sub_1000FC908;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000FC908()
{
  swift_setDeallocating();
  sub_100101AB8();
  swift_deallocClassInstance();
  v0[72] = v0[71];
  v1 = *(v0[59] + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter);
  v0[73] = v1;
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();

  return _swift_task_switch(sub_1000FC9D0, v1, 0);
}

uint64_t sub_1000FC9D0()
{
  v1 = v0[73];
  v3 = v0[61];
  v2 = v0[62];
  v11 = v0[60];
  v5 = v0[57];
  v4 = v0[58];
  v7 = v0[55];
  v6 = v0[56];
  swift_beginAccess();
  v8 = sub_1000EA074(v2, v7, v6, v5, v4);
  swift_endAccess();
  v9 = swift_task_alloc();
  *(v9 + 16) = v1;
  *(v9 + 24) = v2;
  v0[74] = sub_1000FC050(sub_1000FCE6C, v9, v8);

  (*(v3 + 8))(v2, v11);

  return _swift_task_switch(sub_1000FCB0C, 0, 0);
}

uint64_t sub_1000FCB0C()
{
  v0[54] = v0[74];
  sub_100011AC0(&qword_10022CB18, &qword_1001E1530);
  sub_100024B78(&qword_10022CB20, &qword_10022CB18, &qword_1001E1530, &protocol conformance descriptor for <A> [A]);
  sub_1000FCE8C(&qword_10022CB28, &qword_10022CB30, &protocol conformance descriptor for TrustedCloudComputeRateLimit, &protocol conformance descriptor for <A> [A]);
  sub_1000FCE8C(&qword_10022CB38, &qword_10022CB40, &protocol conformance descriptor for TrustedCloudComputeRateLimit, &protocol conformance descriptor for <A> [A]);
  v1 = sub_1001D07B0();
  v3 = v2;

  v4 = v0[1];

  return v4(v1, v3);
}

uint64_t sub_1000FCC94()
{
  swift_setDeallocating();
  sub_100101AB8();
  swift_deallocClassInstance();
  swift_errorRetain();
  v1 = sub_1001D0E50();
  v2 = sub_1001D1DE0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "failure to process TC2RateLimitRequest send, error=%@", v3, 0xCu);
    sub_100011F00(v4, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6(0, 0xF000000000000000);
}

uint64_t sub_1000FCE8C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(&qword_10022CB18, &qword_1001E1530);
    sub_100101EF8(a2, &type metadata accessor for TrustedCloudComputeRateLimit, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000FCF28()
{
  v1[57] = v0;
  v2 = sub_1001D0F00();
  v1[58] = v2;
  v1[59] = *(v2 - 8);
  v1[60] = swift_task_alloc();
  v3 = sub_1001D0F40();
  v1[61] = v3;
  v1[62] = *(v3 - 8);
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v4 = sub_100011AC0(&qword_1002292F8, &unk_1001E1C80);
  v1[65] = v4;
  v1[66] = *(v4 - 8);
  v1[67] = swift_task_alloc();
  v5 = sub_1001D02E0();
  v1[68] = v5;
  v1[69] = *(v5 - 8);
  v1[70] = swift_task_alloc();

  return _swift_task_switch(sub_1000FD114, 0, 0);
}

uint64_t sub_1000FD114()
{
  v54 = v0;
  *(v0 + 568) = qword_10022CB50;

  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 456);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v53 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000954E0(*(v3 + qword_10022CB58), *(v3 + qword_10022CB58 + 8), &v53);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s executing ratelimit request", v4, 0xCu);
    sub_100011CF0(v5);
  }

  v6 = *(v0 + 560);
  v7 = *(v0 + 536);
  v8 = *(v0 + 528);
  v52 = *(v0 + 520);
  v9 = *(v0 + 456);
  v10 = (v9 + *(*v9 + 168));
  v11 = v10[3];
  v12 = v10[4];
  sub_100024DC8(v10, v11);
  v13 = (v9 + *(*v9 + 176));
  *(v0 + 440) = &type metadata for SystemInfo;
  *(v0 + 448) = &protocol witness table for SystemInfo;
  v14 = swift_allocObject();
  *(v0 + 416) = v14;
  v16 = v13[1];
  v15 = v13[2];
  *(v0 + 16) = *v13;
  *(v0 + 32) = v16;
  *(v0 + 48) = v15;
  v17 = v13[6];
  v19 = v13[3];
  v18 = v13[4];
  *(v0 + 96) = v13[5];
  *(v0 + 112) = v17;
  *(v0 + 64) = v19;
  *(v0 + 80) = v18;
  v20 = v13[10];
  v22 = v13[7];
  v21 = v13[8];
  *(v0 + 160) = v13[9];
  *(v0 + 176) = v20;
  *(v0 + 128) = v22;
  *(v0 + 144) = v21;
  v23 = *v13;
  v24 = v13[2];
  v14[2] = v13[1];
  v14[3] = v24;
  v14[1] = v23;
  v25 = v13[3];
  v26 = v13[4];
  v27 = v13[6];
  v14[6] = v13[5];
  v14[7] = v27;
  v14[4] = v25;
  v14[5] = v26;
  v28 = v13[7];
  v29 = v13[8];
  v30 = v13[10];
  v14[10] = v13[9];
  v14[11] = v30;
  v14[8] = v28;
  v14[9] = v29;
  sub_1000884D8(v0 + 16, v0 + 192);
  Configuration.environment(systemInfo:)((v0 + 416), v11, v12, v6);
  sub_100011CF0((v0 + 416));
  sub_100024DC8(v10, v10[3]);
  sub_1001D0400();
  sub_1001D0210();
  (*(v8 + 8))(v7, v52);
  v31 = *(v0 + 632);
  v32 = sub_1001D0280();
  v33 = *(v9 + *(*v9 + 184) + 8);
  sub_1001D1210();
  *(v0 + 576) = sub_1001D1200();
  sub_1001D1240();
  swift_allocObject();
  v34 = sub_1001D1230();
  sub_1001D1270();
  v35 = sub_1001D1260();
  if (v32)
  {
    sub_1001D11F0();
    nw_parameters_set_privacy_proxy_fail_closed();
    swift_unknownObjectRelease();
  }

  if (v33)
  {

    sub_1001D11E0();
  }

  if (v31)
  {
    v36 = sub_1001D1220();
    *(v0 + 400) = sub_100096568;
    *(v0 + 408) = 0;
    *(v0 + 368) = _NSConcreteStackBlock;
    *(v0 + 376) = 1107296256;
    *(v0 + 384) = sub_100059234;
    *(v0 + 392) = &unk_10021FEF8;
    v37 = _Block_copy((v0 + 368));
    sub_10005A1A4();
    v38 = sub_1001D1E40();
    sec_protocol_options_set_verify_block(v36, v37, v38);

    _Block_release(v37);
    swift_unknownObjectRelease();
  }

  v39 = *(v0 + 560);
  v40 = *(v0 + 512);
  v42 = *(v0 + 488);
  v41 = *(v0 + 496);
  v50 = *(v0 + 456);
  v51 = *(v0 + 504);
  sub_1001D11D0();
  sub_100011AC0(&qword_100228C30, &qword_1001D53E0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1001D54B0;
  *(v43 + 32) = v35;
  *(v43 + 40) = v34;

  sub_1001D11C0();

  sub_1001D02C0();
  (*(v41 + 104))(v40, enum case for NWEndpoint.url(_:), v42);
  sub_1001D0F30();
  *(v0 + 584) = sub_1001D0F10();
  sub_10005A1A4();
  v49 = sub_1001D1E40();
  *(v0 + 592) = v49;
  v48 = *(*v50 + 160);
  v44 = swift_task_alloc();
  *(v0 + 600) = v44;
  *(v44 + 16) = v50;
  *(v44 + 24) = v39;
  (*(v41 + 16))(v51, v40, v42);
  sub_1001D11A0();
  swift_allocObject();

  v45 = sub_1001D1140();
  *(v0 + 608) = v45;

  sub_1001D1030();
  v46 = swift_task_alloc();
  *(v0 + 616) = v46;
  *v46 = v0;
  v46[1] = sub_1000FD760;

  return sub_100135C64(sub_100135C64, v45, v49, v50 + v48, 0x6D696C5F65746172, 0xEA00000000007469, &unk_1001DDB58, v44);
}

uint64_t sub_1000FD760()
{
  *(*v1 + 624) = v0;

  if (v0)
  {
    v2 = sub_1000FDAD8;
  }

  else
  {
    v2 = sub_1000FD874;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000FD874()
{
  v19 = v0;
  v1 = v0[74];
  v17 = v0[70];
  v2 = v0[69];
  v16 = v0[68];
  v15 = v0[64];
  v3 = v0[62];
  v14 = v0[61];
  v5 = v0[59];
  v4 = v0[60];
  v6 = v0[58];
  (*(v5 + 104))(v4, enum case for NWActivity.CompletionReason.success(_:), v6);
  sub_1001D0F20();
  (*(v5 + 8))(v4, v6);

  (*(v3 + 8))(v15, v14);
  (*(v2 + 8))(v17, v16);

  v7 = sub_1001D0E50();
  v8 = sub_1001D1E00();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[57];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1000954E0(*(v9 + qword_10022CB58), *(v9 + qword_10022CB58 + 8), &v18);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s finished ratelimit request", v10, 0xCu);
    sub_100011CF0(v11);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000FDAD8()
{
  v19 = v0;
  v13 = v0[74];
  v17 = v0[70];
  v1 = v0[69];
  v16 = v0[68];
  v2 = v0[62];
  v14 = v0[61];
  v15 = v0[64];
  v4 = v0[59];
  v3 = v0[60];
  v5 = v0[58];
  (*(v4 + 104))(v3, enum case for NWActivity.CompletionReason.failure(_:), v5);
  sub_1001D0F20();
  (*(v4 + 8))(v3, v5);
  swift_willThrow();

  (*(v2 + 8))(v15, v14);
  (*(v1 + 8))(v17, v16);

  v6 = sub_1001D0E50();
  v7 = sub_1001D1E00();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[57];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1000954E0(*(v8 + qword_10022CB58), *(v8 + qword_10022CB58 + 8), &v18);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s finished ratelimit request", v9, 0xCu);
    sub_100011CF0(v10);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000FDD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[38] = a5;
  v6[39] = a6;
  v6[37] = a2;
  sub_100011AC0(&qword_100227DF8, &qword_1001DD020);
  v6[40] = swift_task_alloc();
  sub_100011AC0(&qword_100229348, &unk_1001D64C0);
  v6[41] = swift_task_alloc();
  v8 = type metadata accessor for RateLimitConfiguration(0);
  v6[42] = v8;
  v6[43] = *(v8 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v9 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
  v6[47] = v9;
  v6[48] = *(v9 - 8);
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  sub_100011AC0(&qword_10022AAB0, &unk_1001D9650);
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v6[54] = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  sub_1001D0980();
  v6[57] = swift_task_alloc();
  v6[58] = type metadata accessor for Proto_Ropes_HttpService_ConfigResponse(0);
  v6[59] = swift_task_alloc();
  v10 = sub_1001CFD60();
  v6[60] = v10;
  v6[61] = *(v10 - 8);
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v6[64] = type metadata accessor for NWAsyncConnection.Inbound(0);
  v6[65] = swift_task_alloc();
  v6[66] = type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator(0);
  v6[67] = swift_task_alloc();
  v11 = sub_100011AC0(&qword_100229328, &qword_1001D6480);
  v6[68] = v11;
  v6[69] = *(v11 - 8);
  v6[70] = swift_task_alloc();
  sub_1001D0F60();
  v6[71] = swift_task_alloc();
  v12 = sub_1001D0F80();
  v6[72] = v12;
  v6[73] = *(v12 - 8);
  v6[74] = swift_task_alloc();
  v6[75] = swift_task_alloc();
  v6[76] = swift_task_alloc();
  v13 = sub_1001D1380();
  v6[77] = v13;
  v6[78] = *(v13 - 8);
  v6[79] = swift_task_alloc();
  v14 = sub_1001D0ED0();
  v6[80] = v14;
  v6[81] = *(v14 - 8);
  v6[82] = swift_task_alloc();
  v6[83] = swift_task_alloc();
  v6[84] = type metadata accessor for Proto_Ropes_HttpService_ConfigRequest(0);
  v6[85] = swift_task_alloc();
  v6[33] = a3;

  return _swift_task_switch(sub_1000FE2B0, 0, 0);
}

uint64_t sub_1000FE2B0()
{
  v60 = v0;
  sub_100101EF8(&qword_10022ACC8, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest, &protocol conformance descriptor for Proto_Ropes_HttpService_ConfigRequest);
  sub_1001D0B50();
  v1 = sub_1001D0B00();
  v0[86] = v1;
  v0[87] = v2;
  v55 = v1;
  v56 = v2;
  sub_100011AC0(&qword_1002292D0, &qword_1001D6440);
  sub_1001D13D0();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001D7180;
  v57 = v3;
  if (qword_1002276A8 != -1)
  {
    swift_once();
  }

  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[77];
  v7 = sub_10003A37C(v6, qword_100242D78);
  v8 = *(v5 + 16);
  v8(v4, v7, v6);
  sub_1001CFD70();
  sub_1001D13A0();
  if (qword_1002276B0 != -1)
  {
    swift_once();
  }

  v9 = v0[79];
  v10 = v0[77];
  v11 = sub_10003A37C(v10, qword_100242D90);
  v50 = v8;
  v8(v9, v11, v10);

  sub_1001D13A0();
  sub_1001D1330();
  sub_1001D13A0();
  sub_1001D1370();
  sub_1001D13A0();
  v0[34] = v57;
  sub_100101EF8(&qword_1002292D8, &type metadata accessor for HTTPFields, &protocol conformance descriptor for HTTPFields);
  sub_1001D1D80();
  sub_100011AC0(&qword_1002292E0, &unk_1001D6448);
  sub_100024B78(&qword_1002292E8, &qword_1002292E0, &unk_1001D6448, &protocol conformance descriptor for [A]);
  sub_1001D1D50();
  v12 = [objc_opt_self() automatedDeviceGroup];
  if (v12)
  {
    v13 = v12;
    sub_1001D17D0();

    if (qword_1002276E8 != -1)
    {
      swift_once();
    }

    v14 = v0[79];
    v15 = v0[77];
    v16 = sub_10003A37C(v15, qword_100242E38);
    v50(v14, v16, v15);
    sub_1001D0EF0();
  }

  v47 = v0[82];
  v17 = v0[81];
  v48 = v0[80];
  v49 = v0[83];
  v51 = v0[76];
  v53 = v0[75];
  v58 = v0[73];
  v52 = v0[72];
  v18 = v0[70];
  v19 = v0[69];
  v46 = v0[68];
  v20 = v0[38];
  sub_1001D0F50();
  sub_1001D0290();
  v21 = *(*v20 + 168);
  v0[88] = v21;
  sub_100024DC8((v20 + v21), *(v20 + v21 + 24));
  sub_1001D03D0();
  sub_1001D0210();
  (*(v19 + 8))(v18, v46);
  (*(v17 + 16))(v47, v49, v48);
  sub_1001D0F70();
  v0[89] = qword_10022CB50;
  v22 = *(v58 + 16);
  v22(v53, v51, v52);

  v23 = sub_1001D0E50();
  v24 = sub_1001D1DC0();

  v25 = os_log_type_enabled(v23, v24);
  v26 = v0[75];
  if (v25)
  {
    v54 = v22;
    v27 = v0[74];
    v28 = v0[73];
    v29 = v0[72];
    v30 = v0[38];
    v31 = swift_slowAlloc();
    v59[0] = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = sub_1000954E0(*(v30 + qword_10022CB58), *(v30 + qword_10022CB58 + 8), v59);
    *(v31 + 12) = 2080;
    v54(v27, v26, v29);
    v32 = sub_1001D1830();
    v34 = v33;
    v35 = *(v28 + 8);
    v35(v26, v29);
    v36 = v32;
    v22 = v54;
    v37 = sub_1000954E0(v36, v34, v59);

    *(v31 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s sending request %s", v31, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v38 = v0[73];
    v39 = v0[72];

    v35 = *(v38 + 8);
    v35(v26, v39);
  }

  v0[90] = v35;
  v40 = v0[76];
  v41 = v0[74];
  v42 = v0[72];
  sub_1001D1090();
  v22(v41, v40, v42);
  sub_100012038(v55, v56);
  v43 = sub_1001D1080();
  v0[91] = v43;
  v44 = swift_task_alloc();
  v0[92] = v44;
  *v44 = v0;
  v44[1] = sub_1000FED44;

  return (sub_100138CDC)(v55, v56, v43, 1, &type metadata for NWAsyncConnection.Outbound, &protocol witness table for NWAsyncConnection.Outbound);
}

uint64_t sub_1000FED44()
{
  v2 = *v1;
  *(*v1 + 744) = v0;

  v3 = *(v2 + 696);
  v4 = *(v2 + 688);

  sub_100011E48(v4, v3);
  if (v0)
  {
    v5 = sub_1000FF1AC;
  }

  else
  {
    v5 = sub_1000FEEAC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000FEEAC()
{
  v21 = v0;

  v1 = sub_1001D0E50();
  v2 = sub_1001D1DC0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[38];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000954E0(*(v3 + qword_10022CB58), *(v3 + qword_10022CB58 + 8), &v20);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s waiting for response", v4, 0xCu);
    sub_100011CF0(v5);
  }

  v6 = v0[65];
  v7 = v0[64];
  sub_100101FA0(v0[37], v6, type metadata accessor for NWAsyncConnection.Inbound);
  v8 = *(v6 + *(v7 + 24));
  os_unfair_lock_lock((v8 + 20));
  if (*(v8 + 16) == 1)
  {
    return sub_1001D2180();
  }

  v10 = v0[67];
  v11 = v0[66];
  v12 = v0[65];
  v13 = v0[64];
  v14 = v0[38];
  *(v8 + 16) = 1;
  os_unfair_lock_unlock((v8 + 20));
  v15 = *v12;
  v16 = *(v13 + 20);
  v17 = v11[5];
  v18 = sub_1001D0E60();
  (*(*(v18 - 8) + 16))(&v10[v17], &v12[v16], v18);
  *&v10[v11[6]] = 0;
  v10[v11[7]] = 0;
  *v10 = v15;

  sub_100101F40(v12, type metadata accessor for NWAsyncConnection.Inbound);
  v0[94] = qword_10022CB58;
  v0[95] = *(*v14 + 152);
  v19 = swift_task_alloc();
  v0[96] = v19;
  *v19 = v0;
  v19[1] = sub_1000FF3F4;

  return NWAsyncConnection.Inbound.AsyncIterator.next()();
}

uint64_t sub_1000FF1AC()
{
  v1 = v0[90];
  v2 = v0[85];
  v3 = v0[83];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[76];
  v7 = v0[72];
  sub_100011E48(v0[86], v0[87]);
  v1(v6, v7);
  (*(v4 + 8))(v3, v5);
  sub_100101F40(v2, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000FF3F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *v5;
  *(v6 + 776) = a1;
  *(v6 + 784) = a2;
  *(v6 + 792) = a3;
  *(v6 + 868) = a4;
  *(v6 + 800) = v4;

  if (v4)
  {
    v7 = sub_1001005F8;
  }

  else
  {
    v7 = sub_1000FF518;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000FF518()
{
  v135 = v0;
  v1 = *(v0 + 792);
  if (v1 == 1)
  {
    v2 = *(v0 + 720);
    v3 = *(v0 + 680);
    v4 = *(v0 + 664);
    v5 = *(v0 + 648);
    v6 = *(v0 + 640);
    v7 = *(v0 + 608);
    v8 = *(v0 + 576);
    v9 = *(v0 + 536);
    sub_100011E48(*(v0 + 688), *(v0 + 696));
    sub_100101F40(v9, type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator);
    v2(v7, v8);
    (*(v5 + 8))(v4, v6);
    v10 = v3;
LABEL_20:
    sub_100101F40(v10, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest);

    v44 = *(v0 + 8);
    goto LABEL_21;
  }

  v11 = *(v0 + 784);
  v12 = *(v0 + 776);

  sub_100101EB4(v12, v11, v1);
  v13 = sub_1001D0E50();
  v14 = sub_1001D1DC0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 784);
    v16 = *(v0 + 304) + *(v0 + 752);
    v17 = -1;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *(v0 + 288) = v19;
    *v18 = 136315394;
    v20 = sub_1000954E0(*v16, *(v16 + 8), (v0 + 288));
    *(v18 + 4) = v20;
    *(v18 + 12) = 2048;
    v22 = *(v0 + 784);
    if (v15 >> 60 != 15)
    {
      v45 = v22 >> 62;
      if ((v22 >> 62) > 1)
      {
        if (v45 == 2)
        {
          v55 = *(*(v0 + 776) + 16);
          v56 = *(*(v0 + 776) + 24);
          v17 = v56 - v55;
          if (__OFSUB__(v56, v55))
          {
            __break(1u);
            goto LABEL_28;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else if (v45)
      {
        v73 = *(v0 + 776);
        v74 = *(v0 + 780);
        v75 = __OFSUB__(v74, v73);
        v76 = v74 - v73;
        if (v75)
        {
          __break(1u);
          return _swift_task_switch(v20, v22, v21);
        }

        v17 = v76;
      }

      else
      {
        v17 = BYTE6(v22);
      }
    }

    v23 = *(v0 + 792);
    v24 = *(v0 + 776);
    *(v18 + 14) = v17;
    sub_100089D40(v24, v22, v23);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s received response %ld", v18, 0x16u);
    sub_100011CF0(v19);
  }

  else
  {
    sub_100089D40(*(v0 + 776), *(v0 + 784), *(v0 + 792));
  }

  v25 = *(v0 + 784);
  if (v25 >> 60 != 15)
  {
    v34 = *(v0 + 800);
    v35 = *(v0 + 776);
    sub_100012038(v35, *(v0 + 784));
    _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
    *(v0 + 248) = v35;
    *(v0 + 256) = v25;
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0;
    sub_100012038(v35, v25);
    sub_1001D0970();
    sub_100101EF8(&qword_10022ACE0, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_ConfigResponse);
    sub_1001D0B10();
    if (v34)
    {
      v36 = *(v0 + 792);
      v37 = *(v0 + 784);
      v38 = *(v0 + 776);
      v125 = *(v0 + 720);
      v111 = *(v0 + 696);
      v39 = *(v0 + 688);
      v127 = *(v0 + 664);
      v130 = *(v0 + 680);
      v40 = *(v0 + 648);
      v119 = *(v0 + 608);
      v122 = *(v0 + 640);
      v116 = *(v0 + 576);
      v113 = *(v0 + 536);
      v41 = *(v0 + 504);
      v43 = *(v0 + 480);
      v42 = *(v0 + 488);
      sub_10002683C(v38, v37);
      sub_100089D40(v38, v37, v36);
      sub_100011E48(v39, v111);
      (*(v42 + 8))(v41, v43);
      sub_100101F40(v113, type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator);
      v125(v119, v116);
      (*(v40 + 8))(v127, v122);
      sub_100101F40(v130, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest);

      v44 = *(v0 + 8);
LABEL_21:

      return v44();
    }

    v46 = *(v0 + 424);
    sub_10001208C(*(v0 + 472), v46, &qword_10022AAB0, &unk_1001D9650);
    v14 = type metadata accessor for Proto_Ropes_HttpService_ConfigResponse.OneOf_Type(0);
    v15 = *(*(v14 - 8) + 48);
    v47 = (v15)(v46, 1, v14);
    v13 = *(v0 + 448);
    if (v47 == 1)
    {
      sub_100011F00(*(v0 + 424), &qword_10022AAB0, &unk_1001D9650);
      v13->isa = _swiftEmptyArrayStorage;
      _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
LABEL_29:
      v57 = *(v0 + 448);
      v58 = *v57;

      sub_100101F40(v57, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
      v59 = *(v58 + 16);

      v60 = sub_1001D0E50();
      v61 = sub_1001D1DC0();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = *(v0 + 304) + *(v0 + 752);
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v134[0] = v64;
        *v63 = 136315394;
        *(v63 + 4) = sub_1000954E0(*v62, *(v62 + 8), v134);
        *(v63 + 12) = 2048;
        *(v63 + 14) = v59;
        _os_log_impl(&_mh_execute_header, v60, v61, "%s decoded ratelimit response configuration count %ld", v63, 0x16u);
        sub_100011CF0(v64);
      }

      if (!v59)
      {
        v68 = *(v0 + 504);
        v69 = *(v0 + 480);
        v70 = *(v0 + 488);
        v71 = *(v0 + 472);
        sub_10002683C(*(v0 + 776), *(v0 + 784));
        sub_100101F40(v71, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse);
        (*(v70 + 8))(v68, v69);
        if (*(v0 + 868))
        {
          goto LABEL_9;
        }

        goto LABEL_35;
      }

      v65 = *(v0 + 416);
      sub_10001208C(*(v0 + 472), v65, &qword_10022AAB0, &unk_1001D9650);
      v66 = (v15)(v65, 1, v14);
      v67 = *(v0 + 440);
      if (v66 == 1)
      {
        sub_100011F00(*(v0 + 416), &qword_10022AAB0, &unk_1001D9650);
        *v67 = _swiftEmptyArrayStorage;
        _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
      }

      else
      {
        sub_100102008(*(v0 + 416), *(v0 + 440), type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
      }

      v77 = *(v0 + 440);
      v78 = *v77;
      *(v0 + 808) = *v77;

      sub_100101F40(v77, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
      v79 = *(v78 + 16);
      *(v0 + 816) = v79;
      if (v79)
      {
        v80 = 0;
        v81 = *(v0 + 384);
        *(v0 + 864) = *(v81 + 80);
        *(v0 + 824) = *(v81 + 72);
        while (1)
        {
          *(v0 + 832) = v80;
          v93 = *(v0 + 496);
          v92 = *(v0 + 504);
          v95 = *(v0 + 480);
          v94 = *(v0 + 488);
          v97 = *(v0 + 400);
          v96 = *(v0 + 408);
          v98 = *(v0 + 344);
          v131 = *(v0 + 704);
          v133 = *(v0 + 336);
          v99 = *(v0 + 328);
          v128 = *(v0 + 304);
          sub_100101FA0(*(v0 + 808) + ((*(v0 + 864) + 32) & ~*(v0 + 864)) + *(v0 + 824) * v80, v96, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
          (*(v94 + 16))(v93, v92, v95);
          sub_100101FA0(v96, v97, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
          sub_100044698(v128 + v131, v0 + 168);
          sub_1000E5BA4(v93, v97, (v0 + 168), v99);
          if ((*(v98 + 48))(v99, 1, v133) != 1)
          {
            break;
          }

          v100 = *(v0 + 408);
          v101 = *(v0 + 392);
          sub_100011F00(*(v0 + 328), &qword_100229348, &unk_1001D64C0);
          sub_100101FA0(v100, v101, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);

          v102 = sub_1001D0E50();
          v103 = sub_1001D1DE0();

          if (os_log_type_enabled(v102, v103))
          {
            v82 = *(v0 + 400);
            v83 = *(v0 + 408);
            v84 = *(v0 + 392);
            v85 = *(v0 + 304) + *(v0 + 752);
            v86 = swift_slowAlloc();
            v134[0] = swift_slowAlloc();
            *v86 = 136315394;
            *(v86 + 4) = sub_1000954E0(*v85, *(v85 + 8), v134);
            *(v86 + 12) = 2080;
            sub_100101FA0(v84, v82, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
            v87 = sub_1001D1820();
            v89 = v88;
            sub_100101F40(v84, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
            v90 = sub_1000954E0(v87, v89, v134);

            *(v86 + 14) = v90;
            _os_log_impl(&_mh_execute_header, v102, v103, "%s unable to process rate limit configuration %s", v86, 0x16u);
            swift_arrayDestroy();

            v91 = v83;
          }

          else
          {
            v104 = *(v0 + 408);
            v105 = *(v0 + 392);

            sub_100101F40(v105, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
            v91 = v104;
          }

          sub_100101F40(v91, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
          v80 = *(v0 + 832) + 1;
          if (v80 == *(v0 + 816))
          {
            goto LABEL_51;
          }
        }

        v106 = *(v0 + 760);
        v107 = *(v0 + 304);
        sub_100102008(*(v0 + 328), *(v0 + 368), type metadata accessor for RateLimitConfiguration);
        v22 = *(v107 + v106);
        *(v0 + 856) = v22;
        v108 = sub_100100F8C;
      }

      else
      {
LABEL_51:

        v22 = *(*(v0 + 304) + *(v0 + 760));
        *(v0 + 840) = v22;
        v108 = sub_1001008F0;
      }

      v20 = v108;
      v21 = 0;

      return _swift_task_switch(v20, v22, v21);
    }

LABEL_28:
    sub_100102008(*(v0 + 424), v13, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    goto LABEL_29;
  }

  if (*(v0 + 868))
  {
LABEL_9:

    v26 = sub_1001D0E50();
    v27 = sub_1001D1DC0();

    v28 = os_log_type_enabled(v26, v27);
    v129 = *(v0 + 784);
    v132 = *(v0 + 792);
    v126 = *(v0 + 776);
    if (v28)
    {
      v109 = *(v0 + 688);
      v110 = *(v0 + 696);
      v124 = *(v0 + 680);
      v118 = *(v0 + 720);
      v121 = *(v0 + 664);
      v29 = *(v0 + 648);
      v114 = *(v0 + 608);
      v115 = *(v0 + 640);
      v112 = *(v0 + 576);
      v30 = *(v0 + 304) + *(v0 + 752);
      v31 = *(v0 + 536);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v134[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1000954E0(*v30, *(v30 + 8), v134);
      _os_log_impl(&_mh_execute_header, v26, v27, "%s response completed", v32, 0xCu);
      sub_100011CF0(v33);

      sub_100089D40(v126, v129, v132);
      sub_100011E48(v109, v110);
      sub_100101F40(v31, type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator);
      v118(v114, v112);
      (*(v29 + 8))(v121, v115);
    }

    else
    {
      v48 = *(v0 + 696);
      v49 = *(v0 + 688);
      v124 = *(v0 + 680);
      v120 = *(v0 + 720);
      v123 = *(v0 + 664);
      v50 = *(v0 + 648);
      v117 = *(v0 + 640);
      v51 = *(v0 + 608);
      v52 = *(v0 + 576);
      v53 = *(v0 + 536);

      sub_100089D40(v126, v129, v132);
      sub_100011E48(v49, v48);
      sub_100101F40(v53, type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator);
      v120(v51, v52);
      (*(v50 + 8))(v123, v117);
    }

    v10 = v124;
    goto LABEL_20;
  }

LABEL_35:
  sub_100089D40(*(v0 + 776), *(v0 + 784), *(v0 + 792));
  v72 = swift_task_alloc();
  *(v0 + 768) = v72;
  *v72 = v0;
  v72[1] = sub_1000FF3F4;

  return NWAsyncConnection.Inbound.AsyncIterator.next()();
}

uint64_t sub_1001005F8()
{
  *(v0 + 280) = *(v0 + 800);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_100100688, 0, 0);
}

uint64_t sub_100100688()
{
  v1 = v0[90];
  v2 = v0[85];
  v3 = v0[83];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[76];
  v7 = v0[72];
  v8 = v0[67];
  sub_100011E48(v0[86], v0[87]);
  sub_100101F40(v8, type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator);
  v1(v6, v7);
  (*(v4 + 8))(v3, v5);
  sub_100101F40(v2, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001008F0()
{
  sub_1000EE40C(*(v0 + 504));
  v1 = swift_task_alloc();
  *(v0 + 848) = v1;
  *v1 = v0;
  v1[1] = sub_10010098C;

  return sub_1000ED278();
}

uint64_t sub_10010098C()
{

  return _swift_task_switch(sub_100100A88, 0, 0);
}

uint64_t sub_100100A88()
{
  v37 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v4 = *(v0 + 472);
  sub_10002683C(*(v0 + 776), *(v0 + 784));
  sub_100101F40(v4, type metadata accessor for Proto_Ropes_HttpService_ConfigResponse);
  (*(v3 + 8))(v1, v2);
  if (*(v0 + 868))
  {

    v5 = sub_1001D0E50();
    v6 = sub_1001D1DC0();

    v7 = os_log_type_enabled(v5, v6);
    v34 = *(v0 + 784);
    v35 = *(v0 + 792);
    v33 = *(v0 + 776);
    if (v7)
    {
      v22 = *(v0 + 688);
      v23 = *(v0 + 696);
      v32 = *(v0 + 680);
      v28 = *(v0 + 720);
      v30 = *(v0 + 664);
      v8 = *(v0 + 648);
      v25 = *(v0 + 608);
      v26 = *(v0 + 640);
      v24 = *(v0 + 576);
      v9 = *(v0 + 304) + *(v0 + 752);
      v10 = *(v0 + 536);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v36 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1000954E0(*v9, *(v9 + 8), &v36);
      _os_log_impl(&_mh_execute_header, v5, v6, "%s response completed", v11, 0xCu);
      sub_100011CF0(v12);

      sub_100089D40(v33, v34, v35);
      sub_100011E48(v22, v23);
      sub_100101F40(v10, type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator);
      v28(v25, v24);
      (*(v8 + 8))(v30, v26);
    }

    else
    {
      v15 = *(v0 + 696);
      v16 = *(v0 + 688);
      v32 = *(v0 + 680);
      v29 = *(v0 + 720);
      v31 = *(v0 + 664);
      v17 = *(v0 + 648);
      v27 = *(v0 + 640);
      v18 = *(v0 + 608);
      v19 = *(v0 + 576);
      v20 = *(v0 + 536);

      sub_100089D40(v33, v34, v35);
      sub_100011E48(v16, v15);
      sub_100101F40(v20, type metadata accessor for NWAsyncConnection.Inbound.AsyncIterator);
      v29(v18, v19);
      (*(v17 + 8))(v31, v27);
    }

    sub_100101F40(v32, type metadata accessor for Proto_Ropes_HttpService_ConfigRequest);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    sub_100089D40(*(v0 + 776), *(v0 + 784), *(v0 + 792));
    v13 = swift_task_alloc();
    *(v0 + 768) = v13;
    *v13 = v0;
    v13[1] = sub_1000FF3F4;

    return NWAsyncConnection.Inbound.AsyncIterator.next()();
  }
}

uint64_t sub_100100F8C()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);
  sub_100101FA0(v1, *(v0 + 360), type metadata accessor for RateLimitConfiguration);
  sub_100101FA0(v1, v2, type metadata accessor for RateLimitConfiguration);
  v3 = sub_1001D0E50();
  v4 = sub_1001D1DC0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 352);
  v7 = *(v0 + 360);
  if (v5)
  {
    v8 = *(v0 + 336);
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    v10 = *(v7 + *(v8 + 20));
    sub_100101F40(v7, type metadata accessor for RateLimitConfiguration);
    *(v9 + 4) = v10;
    *(v9 + 12) = 2048;
    v11 = *(v6 + *(v8 + 20) + 8);
    sub_100101F40(v6, type metadata accessor for RateLimitConfiguration);
    *(v9 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "rate limit discovered for rate with count=%lu, duration=%f", v9, 0x16u);
  }

  else
  {
    sub_100101F40(*(v0 + 360), type metadata accessor for RateLimitConfiguration);

    sub_100101F40(v6, type metadata accessor for RateLimitConfiguration);
  }

  v12 = *(v0 + 368);
  v13 = *(v0 + 336);
  v14 = *(v0 + 320);
  swift_beginAccess();
  v15 = *v12;
  v16 = v12[1];
  v17 = v12[2];
  *(v0 + 64) = *(v12 + 6);
  *(v0 + 32) = v16;
  *(v0 + 48) = v17;
  *(v0 + 16) = v15;
  sub_100101FA0(v12 + *(v13 + 20), v14, type metadata accessor for RateLimitTimingDetails);
  v18 = type metadata accessor for RateLimitTimingDetails(0);
  (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
  sub_10001B9AC(v0 + 16, v0 + 72);
  sub_100017758(v14, (v0 + 16));
  sub_1000E3E7C(v12);
  swift_endAccess();

  return _swift_task_switch(sub_10010122C, 0, 0);
}

uint64_t sub_10010122C()
{
  v38 = v0;
  v1 = *(v0 + 408);
  sub_100101F40(*(v0 + 368), type metadata accessor for RateLimitConfiguration);
  sub_100101F40(v1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
  v2 = *(v0 + 832) + 1;
  if (v2 == *(v0 + 816))
  {
LABEL_2:

    v3 = *(*(v0 + 304) + *(v0 + 760));
    *(v0 + 840) = v3;
    v4 = sub_1001008F0;
  }

  else
  {
    while (1)
    {
      *(v0 + 832) = v2;
      v16 = *(v0 + 496);
      v15 = *(v0 + 504);
      v18 = *(v0 + 480);
      v17 = *(v0 + 488);
      v20 = *(v0 + 400);
      v19 = *(v0 + 408);
      v21 = *(v0 + 344);
      v35 = *(v0 + 704);
      v36 = *(v0 + 336);
      v22 = *(v0 + 328);
      v34 = *(v0 + 304);
      sub_100101FA0(*(v0 + 808) + ((*(v0 + 864) + 32) & ~*(v0 + 864)) + *(v0 + 824) * v2, v19, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      (*(v17 + 16))(v16, v15, v18);
      sub_100101FA0(v19, v20, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      sub_100044698(v34 + v35, v0 + 168);
      sub_1000E5BA4(v16, v20, (v0 + 168), v22);
      v23 = (*(v21 + 48))(v22, 1, v36);
      v24 = *(v0 + 328);
      v25 = *(v0 + 304);
      if (v23 != 1)
      {
        break;
      }

      v26 = *(v0 + 408);
      v27 = *(v0 + 392);
      sub_100011F00(v24, &qword_100229348, &unk_1001D64C0);
      sub_100101FA0(v26, v27, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);

      v28 = sub_1001D0E50();
      v29 = sub_1001D1DE0();

      if (os_log_type_enabled(v28, v29))
      {
        v5 = *(v0 + 400);
        v6 = *(v0 + 408);
        v7 = *(v0 + 392);
        v8 = *(v0 + 304) + *(v0 + 752);
        v9 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v9 = 136315394;
        *(v9 + 4) = sub_1000954E0(*v8, *(v8 + 8), &v37);
        *(v9 + 12) = 2080;
        sub_100101FA0(v7, v5, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v10 = sub_1001D1820();
        v12 = v11;
        sub_100101F40(v7, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v13 = sub_1000954E0(v10, v12, &v37);

        *(v9 + 14) = v13;
        _os_log_impl(&_mh_execute_header, v28, v29, "%s unable to process rate limit configuration %s", v9, 0x16u);
        swift_arrayDestroy();

        v14 = v6;
      }

      else
      {
        v30 = *(v0 + 408);
        v31 = *(v0 + 392);

        sub_100101F40(v31, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v14 = v30;
      }

      sub_100101F40(v14, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      v2 = *(v0 + 832) + 1;
      if (v2 == *(v0 + 816))
      {
        goto LABEL_2;
      }
    }

    v32 = *(v0 + 760);
    sub_100102008(v24, *(v0 + 368), type metadata accessor for RateLimitConfiguration);
    v3 = *(v25 + v32);
    *(v0 + 856) = v3;
    v4 = sub_100100F8C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100101638(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100011AC0(&qword_10022AAA0, &qword_1001D9640);
  v5 = __chkstk_darwin(v4 - 8);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  v9 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v15 = &v35 - v14;
  v16 = *a2;
  v17 = (a2 + *(*a2 + 184));
  v18 = v17[1];
  if (v18)
  {
    v35 = *v17;
    sub_10001208C(a1, v8, &qword_10022AAA0, &qword_1001D9640);
    v19 = type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type(0);
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v8, 1, v19) == 1)
    {

      sub_100011F00(v8, &qword_10022AAA0, &qword_1001D9640);
      *v15 = sub_1000D66E8(_swiftEmptyArrayStorage);
      *(v15 + 1) = 0;
      v15[16] = 1;
      _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
      v21 = &v15[v9[7]];
      *v21 = 0;
      *(v21 + 1) = 0;
      v22 = &v15[v9[8]];
      *v22 = 0;
      *(v22 + 1) = 0;
      v23 = &v15[v9[9]];
      *v23 = 0;
      *(v23 + 1) = 0;
    }

    else
    {
      sub_100102008(v8, v15, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    }

    v24 = &v15[v9[7]];

    *v24 = v35;
    *(v24 + 1) = v18;
    sub_100011F00(a1, &qword_10022AAA0, &qword_1001D9640);
    sub_100102008(v15, a1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    result = (*(v20 + 56))(a1, 0, 1, v19);
    v16 = *a2;
  }

  v25 = (a2 + *(v16 + 192));
  v26 = v25[1];
  v27 = v36;
  if (v26)
  {
    v28 = *v25;
    sub_10001208C(a1, v36, &qword_10022AAA0, &qword_1001D9640);
    v29 = type metadata accessor for Proto_Ropes_HttpService_ConfigRequest.OneOf_Type(0);
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v27, 1, v29) == 1)
    {

      sub_100011F00(v27, &qword_10022AAA0, &qword_1001D9640);
      *v12 = sub_1000D66E8(_swiftEmptyArrayStorage);
      *(v12 + 1) = 0;
      v12[16] = 1;
      _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
      v31 = &v12[v9[7]];
      *v31 = 0;
      *(v31 + 1) = 0;
      v32 = &v12[v9[8]];
      *v32 = 0;
      *(v32 + 1) = 0;
      v33 = &v12[v9[9]];
      *v33 = 0;
      *(v33 + 1) = 0;
    }

    else
    {
      sub_100102008(v27, v12, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    }

    v34 = &v12[v9[8]];

    *v34 = v28;
    *(v34 + 1) = v26;
    sub_100011F00(a1, &qword_10022AAA0, &qword_1001D9640);
    sub_100102008(v12, a1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigRequest);
    return (*(v30 + 56))(a1, 0, 1, v29);
  }

  return result;
}

uint64_t sub_100101AB8()
{
  v1 = qword_10022CB50;
  v2 = sub_1001D0E60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 160);
  v4 = sub_1001CFDA0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_100011CF0((v0 + *(*v0 + 168)));
  v5 = (v0 + *(*v0 + 176));
  v6 = v5[9];
  v12[8] = v5[8];
  v12[9] = v6;
  v12[10] = v5[10];
  v7 = v5[5];
  v12[4] = v5[4];
  v12[5] = v7;
  v8 = v5[7];
  v12[6] = v5[6];
  v12[7] = v8;
  v9 = v5[1];
  v12[0] = *v5;
  v12[1] = v9;
  v10 = v5[3];
  v12[2] = v5[2];
  v12[3] = v10;
  sub_100088D84(v12);

  return v0;
}

uint64_t sub_100101C48()
{

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_100101CD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a3;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1000130E0;

  return sub_1000FDD48(a1, a2, v12, a4, a5, a6);
}

uint64_t sub_100101DA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1000130E0;

  return sub_100101CD0(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_100101E80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100101EB4(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    sub_100089C38(result, a2);
  }

  return result;
}

uint64_t sub_100101EF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100101F40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100101FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100102008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100102070(void *a1)
{
  result = sub_1001D0E60();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = sub_1001CFDA0();
        if (v5 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            return swift_initClassMetadata2();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100102214()
{
  v1 = *v0;
  v2 = qword_10022CB50;
  v3 = sub_1001D0E60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 144));
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 152));
  v4 = *(*v0 + 160);
  v5 = sub_1001CFDA0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_100011CF0((v0 + *(*v0 + 168)));
  (*(*(v1[12] - 8) + 8))(v0 + *(*v0 + 176));

  return v0;
}

uint64_t sub_100102438()
{
  sub_100102214();

  return swift_deallocClassInstance();
}

uint64_t sub_1001024A8(uint64_t a1)
{
  result = sub_1001D0E60();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100102568()
{
  sub_100011CF0((v0 + 16));

  v1 = qword_10022CBE0;
  v2 = sub_1001D0E60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1001025FC()
{
  sub_100102568();

  return swift_deallocClassInstance();
}

uint64_t sub_10010266C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1001CFD60();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  sub_100102864(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10009317C(v8);
    return *&a3;
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    sub_1001CFCA0();
    v17 = sub_1001CFCC0();
    v18 = *(v10 + 8);
    v18(v13, v9);
    v18(v15, v9);
    if (v17)
    {
      return 0;
    }

    else
    {
      return *&a3;
    }
  }
}

uint64_t sub_100102864(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001028D4(char a1)
{
  result = 0xD000000000000018;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
    case 10:
      result = 0xD000000000000024;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD00000000000001DLL;
      break;
    case 11:
      result = 0xD000000000000021;
      break;
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0xD000000000000025;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100102A80(void *a1)
{
  v3 = v1;
  v5 = sub_100011AC0(&qword_10022CD90, &unk_1001DDE08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100024DC8(a1, a1[3]);
  sub_10010815C();
  sub_1001D25F0();
  LOBYTE(v11) = 0;
  sub_1001D22E0();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1001D22E0();
    LOBYTE(v11) = 2;
    sub_1001D22E0();
    v11 = *(v3 + 48);
    HIBYTE(v10) = 3;
    sub_100011AC0(&qword_1002283B8, &qword_1001D4A50);
    sub_100024E0C(qword_1002283C8, &protocol witness table for String, &protocol witness table for Int, &protocol conformance descriptor for <> [A : B]);
    sub_1001D22F0();
    LOBYTE(v11) = 4;
    sub_1001D22D0();
    LOBYTE(v11) = 5;
    sub_1001D22D0();
    LOBYTE(v11) = 6;
    sub_1001D22E0();
    v11 = *(v3 + 104);
    HIBYTE(v10) = 7;
    sub_100011AC0(&unk_100230200, &qword_1001D4F80);
    sub_1000439E8(&qword_100228960, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1001D22F0();
    LOBYTE(v11) = 8;
    sub_1001D22E0();
    LOBYTE(v11) = 9;
    sub_1001D22E0();
    LOBYTE(v11) = 10;
    sub_1001D22E0();
    LOBYTE(v11) = 11;
    sub_1001D22E0();
    LOBYTE(v11) = 12;
    sub_1001D22E0();
    LOBYTE(v11) = 13;
    sub_1001D22E0();
    LOBYTE(v11) = 14;
    sub_1001D22D0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100102EB4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1001028D4(*a1);
  v5 = v4;
  if (v3 == sub_1001028D4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1001D2470();
  }

  return v8 & 1;
}

Swift::Int sub_100102F3C()
{
  v1 = *v0;
  sub_1001D2580();
  sub_1001028D4(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_100102FA0(uint64_t a1)
{
  sub_1001028D4(*v1);
  sub_1001D1880();
}

Swift::Int sub_100102FF4()
{
  v1 = *v0;
  sub_1001D2580();
  sub_1001028D4(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

unint64_t sub_100103054@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001073D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100103084@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1001028D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1001030CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001073D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100103100(uint64_t a1)
{
  v2 = sub_10010815C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10010313C(uint64_t a1)
{
  v2 = sub_10010815C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100103178@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100107424(a2, v11);
  if (!v2)
  {
    v5 = v11[11];
    a1[10] = v11[10];
    a1[11] = v5;
    a1[12] = v12[0];
    *(a1 + 201) = *(v12 + 9);
    v6 = v11[7];
    a1[6] = v11[6];
    a1[7] = v6;
    v7 = v11[9];
    a1[8] = v11[8];
    a1[9] = v7;
    v8 = v11[3];
    a1[2] = v11[2];
    a1[3] = v8;
    v9 = v11[5];
    a1[4] = v11[4];
    a1[5] = v9;
    result = *v11;
    v10 = v11[1];
    *a1 = v11[0];
    a1[1] = v10;
  }

  return result;
}

uint64_t sub_100103204()
{
  v0 = sub_1001D1810();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D1800();
  v4 = sub_1001D17E0();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10022CC78 = v4;
    unk_10022CC80 = v6;
  }

  return result;
}

uint64_t sub_100103314(_BYTE *a1)
{
  v64 = a1;
  v56 = sub_1001D0E60();
  v59 = *(v56 - 8);
  v2 = __chkstk_darwin(v56);
  v63 = &v55[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v60 = &v55[-v4];
  v66 = sub_1001CFA40();
  v5 = *(v66 - 8);
  __chkstk_darwin(v66);
  v7 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1001CFB10();
  v67 = *(v8 - 8);
  v68 = v8;
  v9 = __chkstk_darwin(v8);
  v62 = &v55[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v61 = &v55[-v12];
  __chkstk_darwin(v11);
  v14 = &v55[-v13];
  v15 = sub_1001D02F0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v55[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001CF7B0();
  swift_allocObject();
  *(v1 + 16) = sub_1001CF7A0();
  v19 = OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration_logger;
  (*(v16 + 104))(v18, enum case for TC2LogCategory.serverDrivenConfiguration(_:), v15);
  sub_1001D08B0();
  v20 = v18;
  v21 = v14;
  (*(v16 + 8))(v20, v15);
  *&v69[0] = 0xD00000000000001ELL;
  *(&v69[0] + 1) = 0x80000001001E5280;
  v22 = v66;
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v66);
  sub_100011EAC();
  sub_1001CFB00();
  (*(v5 + 8))(v7, v22);
  v23 = v67 + 16;
  v24 = *(v67 + 16);
  v65 = v1;
  v24(v1 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration_file, v21, v68);
  v66 = v21;
  v25 = sub_1001CFB30();
  v57 = v24;
  v58 = v23;
  v27 = v26;
  v28 = v59;
  v29 = v25;
  v30 = v56;
  v31 = v65;
  v32 = v60;
  (*(v59 + 16))(v60, v65 + v19, v56);

  sub_100108230(v70);

  (*(v28 + 8))(v32, v30);
  *(&v69[10] + 4) = v70[10];
  *(&v69[11] + 4) = v70[11];
  *(&v69[12] + 4) = v71[0];
  *(&v69[12] + 13) = *(v71 + 9);
  *(&v69[6] + 4) = v70[6];
  *(&v69[7] + 4) = v70[7];
  *(&v69[8] + 4) = v70[8];
  *(&v69[9] + 4) = v70[9];
  *(&v69[2] + 4) = v70[2];
  *(&v69[3] + 4) = v70[3];
  *(&v69[4] + 4) = v70[4];
  *(&v69[5] + 4) = v70[5];
  *(v69 + 4) = v70[0];
  *(&v69[1] + 4) = v70[1];
  v33 = v31 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  v34 = v69[11];
  *(v33 + 164) = v69[10];
  *(v33 + 180) = v34;
  *(v33 + 196) = v69[12];
  *(v33 + 209) = *(&v69[12] + 13);
  v35 = v69[7];
  *(v33 + 100) = v69[6];
  *(v33 + 116) = v35;
  v36 = v69[9];
  *(v33 + 132) = v69[8];
  *(v33 + 148) = v36;
  v37 = v69[3];
  *(v33 + 36) = v69[2];
  *(v33 + 52) = v37;
  v38 = v69[5];
  *(v33 + 68) = v69[4];
  *(v33 + 84) = v38;
  v39 = v69[1];
  *(v33 + 4) = v69[0];
  *v33 = 0;
  *(v33 + 20) = v39;
  v40 = v61;
  v57(v61, v66, v68);
  v41 = sub_1001D0E50();
  v42 = sub_1001D1DD0();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = v68;
    v63 = v27;
    v45 = v43;
    v46 = v40;
    v62 = swift_slowAlloc();
    *&v69[0] = v62;
    *v45 = 136315138;
    sub_1001081E8(&qword_1002302F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v47 = sub_1001D23A0();
    v49 = v48;
    v60 = v29;
    v50 = *(v67 + 8);
    v50(v46, v44);
    v51 = sub_1000954E0(v47, v49, v69);

    *(v45 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "initialized server driven configuration, file=%s", v45, 0xCu);
    sub_100011CF0(v62);

    sub_100011E48(v60, v63);

    v50(v64, v44);
    v50(v66, v44);
  }

  else
  {
    sub_100011E48(v29, v27);

    v52 = v68;
    v53 = *(v67 + 8);
    v53(v64, v68);
    v53(v40, v52);
    v53(v66, v52);
  }

  return v65;
}

uint64_t sub_100103CF0(uint64_t a1, uint64_t a2)
{
  v3[59] = a2;
  v3[60] = v2;
  v3[58] = a1;
  return _swift_task_switch(sub_100103D14, 0, 0);
}

uint64_t sub_100103D14()
{
  v1 = *(v0 + 480) + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock(v1);
  sub_100106D70();
  sub_1001CF790();
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 464);
  v5 = *(v1 + 24);
  *(v0 + 240) = *(v1 + 8);
  *(v0 + 256) = v5;
  v6 = *(v1 + 56);
  v7 = *(v1 + 88);
  v8 = *(v1 + 40);
  *(v0 + 304) = *(v1 + 72);
  *(v0 + 320) = v7;
  *(v0 + 272) = v8;
  *(v0 + 288) = v6;
  v9 = *(v1 + 120);
  v10 = *(v1 + 152);
  v11 = *(v1 + 104);
  *(v0 + 368) = *(v1 + 136);
  *(v0 + 384) = v10;
  *(v0 + 336) = v11;
  *(v0 + 352) = v9;
  v12 = *(v1 + 184);
  v13 = *(v1 + 200);
  v14 = *(v1 + 168);
  *(v0 + 441) = *(v1 + 209);
  *(v0 + 416) = v12;
  *(v0 + 432) = v13;
  *(v0 + 400) = v14;
  sub_100106DC4(v0 + 240);
  v15 = *(v0 + 32);
  *(v1 + 8) = *(v0 + 16);
  *(v1 + 24) = v15;
  v16 = *(v0 + 80);
  v17 = *(v0 + 96);
  v18 = *(v0 + 64);
  *(v1 + 40) = *(v0 + 48);
  *(v1 + 88) = v17;
  *(v1 + 72) = v16;
  *(v1 + 56) = v18;
  v19 = *(v0 + 144);
  v20 = *(v0 + 160);
  v21 = *(v0 + 128);
  *(v1 + 104) = *(v0 + 112);
  *(v1 + 152) = v20;
  *(v1 + 136) = v19;
  *(v1 + 120) = v21;
  v23 = *(v0 + 192);
  v22 = *(v0 + 208);
  v24 = *(v0 + 217);
  *(v1 + 168) = *(v0 + 176);
  *(v1 + 209) = v24;
  *(v1 + 200) = v22;
  *(v1 + 184) = v23;
  os_unfair_lock_unlock(v1);
  v25 = swift_allocObject();
  *(v0 + 488) = v25;
  v25[2] = v4;
  v25[3] = v3;
  v25[4] = v2;
  sub_100012038(v4, v3);
  v26 = qword_100227960;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = blockingIOQueue;
  v28 = swift_task_alloc();
  *(v0 + 496) = v28;
  v28[2] = v27;
  v28[3] = sub_100106E34;
  v28[4] = v25;
  v29 = swift_task_alloc();
  *(v0 + 504) = v29;
  *v29 = v0;
  v29[1] = sub_1001040E4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v29, 0, 0, 0xD000000000000024, 0x80000001001E3340, sub_10001582C, v28, &type metadata for () + 8);
}

uint64_t sub_1001040E4()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_1001043B0;
  }

  else
  {

    v2 = sub_100104208;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100104208()
{
  v11 = v0;

  v1 = sub_1001D0E50();
  v2 = sub_1001D1DD0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    sub_1001CFB10();
    sub_1001081E8(&qword_1002302F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v5 = sub_1001D23A0();
    v7 = sub_1000954E0(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "wrote persisted server driven configuration, file=%s", v3, 0xCu);
    sub_100011CF0(v4);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1001043B0()
{
  v20 = v0;

  swift_errorRetain();
  v1 = sub_1001D0E50();
  v2 = sub_1001D1DE0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v3 = 136315394;
    sub_1001CFB10();
    sub_1001081E8(&qword_1002302F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v6 = sub_1001D23A0();
    v8 = sub_1000954E0(v6, v7, &v19);

    *(v3 + 4) = v8;
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v9;
    *v4 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "unable to write persisted server driven configuration, file=%s, error=%@", v3, 0x16u);
    sub_100011F00(v4, &unk_1002301D0, &qword_1001D4F50);

    sub_100011CF0(v5);
  }

  else
  {
  }

  v10 = sub_1001D0E50();
  v11 = sub_1001D1DD0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    sub_1001CFB10();
    sub_1001081E8(&qword_1002302F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v14 = sub_1001D23A0();
    v16 = sub_1000954E0(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "wrote persisted server driven configuration, file=%s", v12, 0xCu);
    sub_100011CF0(v13);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100104730@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = [objc_opt_self() defaultManager];
  sub_1001CFAC0(1);
  v6 = sub_1001D17A0();

  v39[0] = 0;
  v7 = [v5 attributesOfItemAtPath:v6 error:v39];

  v8 = v39[0];
  if (v7)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_1001081E8(&qword_100227BE0, type metadata accessor for FileAttributeKey, &unk_1001D38D8);
    v9 = sub_1001D1700();
    v10 = v8;

    if (*(v9 + 16) && (v11 = sub_100006630(NSFileModificationDate), (v12 & 1) != 0))
    {
      sub_100089F9C(*(v9 + 56) + 32 * v11, v39);

      v13 = sub_1001CFD60();
      v14 = swift_dynamicCast();
      v15 = *(v13 - 8);
      v16 = *(v15 + 56);
      v16(v4, v14 ^ 1u, 1, v13);
      if ((*(v15 + 48))(v4, 1, v13) != 1)
      {
        (*(v15 + 32))(a1, v4, v13);
        return (v16)(a1, 0, 1, v13);
      }
    }

    else
    {

      v18 = sub_1001CFD60();
      (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    }

    sub_100011F00(v4, &qword_100227A38, &unk_1001D35F0);

    v19 = sub_1001D0E50();
    v20 = sub_1001D1E00();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39[0] = v22;
      *v21 = 136315138;
      sub_1001CFB10();
      sub_1001081E8(&qword_1002302F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v23 = sub_1001D23A0();
      v25 = sub_1000954E0(v23, v24, v39);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "can not read modificationDate of persisted server driven configuration, file=%s", v21, 0xCu);
      sub_100011CF0(v22);
    }
  }

  else
  {
    v26 = v39[0];
    sub_1001CFA20();

    swift_willThrow();

    swift_errorRetain();
    v19 = sub_1001D0E50();
    v27 = sub_1001D1E00();

    if (!os_log_type_enabled(v19, v27))
    {

      goto LABEL_13;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = a1;
    v30 = v29;
    v31 = swift_slowAlloc();
    v39[0] = v31;
    *v28 = 136315394;
    sub_1001CFB10();
    sub_1001081E8(&qword_1002302F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v32 = sub_1001D23A0();
    v34 = sub_1000954E0(v32, v33, v39);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2112;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 14) = v35;
    *v30 = v35;
    _os_log_impl(&_mh_execute_header, v19, v27, "can not read attributes of persisted server driven configuration, file=%s, error=%@", v28, 0x16u);
    sub_100011F00(v30, &unk_1002301D0, &qword_1001D4F50);
    a1 = v38;

    sub_100011CF0(v31);
  }

LABEL_13:
  v36 = sub_1001CFD60();
  return (*(*(v36 - 8) + 56))(a1, 1, 1, v36);
}

uint64_t sub_100104D84(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v5 = v2 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
    os_unfair_lock_lock((v2 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
    v6 = *(v5 + 56);

    os_unfair_lock_unlock(v5);
    if (v6)
    {
      if (*(v6 + 16))
      {
        v7 = sub_100006028(a1, a2);
        if (v8)
        {
          v9 = *(*(v6 + 56) + 8 * v7);

          v10 = sub_1001D0E50();
          v11 = sub_1001D1DC0();

          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            v13 = swift_slowAlloc();
            v25 = v13;
            *v12 = 136315394;
            *(v12 + 4) = sub_1000954E0(a1, a2, &v25);
            *(v12 + 12) = 2048;
            *(v12 + 14) = v9;
            _os_log_impl(&_mh_execute_header, v10, v11, "totalAttestations for region=%s: %ld (regional)", v12, 0x16u);
            sub_100011CF0(v13);
          }

          return v9;
        }
      }
    }

    v14 = a2;
  }

  else
  {
    v14 = 0xE600000000000000;
  }

  v15 = v2 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v9 = *(v15 + 8);
  v16 = *(v15 + 16);
  os_unfair_lock_unlock(v15);

  v17 = sub_1001D0E50();
  v18 = sub_1001D1DC0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v19 = 136315394;
    if (!a2)
    {
      a1 = 0x29656E6F6E28;
    }

    v20 = sub_1000954E0(a1, v14, &v27);

    *(v19 + 4) = v20;
    *(v19 + 12) = 2080;
    v25 = v9;
    v26 = v16;
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v21 = sub_1001D1820();
    v23 = sub_1000954E0(v21, v22, &v27);

    *(v19 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "totalAttestations for region=%s: %s (default)", v19, 0x16u);
    swift_arrayDestroy();
  }

  return v9;
}

uint64_t sub_1001050A8()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 24);
  os_unfair_lock_unlock(v1);
  v3 = sub_1001D0E50();
  v4 = sub_1001D1DC0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v7 = sub_1001D1820();
    v9 = sub_1000954E0(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "maxCachedAttestations: %s", v5, 0xCu);
    sub_100011CF0(v6);
  }

  return v2;
}

uint64_t sub_100105200()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 40);
  os_unfair_lock_unlock(v1);
  v3 = sub_1001D0E50();
  v4 = sub_1001D1DC0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v7 = sub_1001D1820();
    v9 = sub_1000954E0(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "maxPrefetchedAttestations: %s", v5, 0xCu);
    sub_100011CF0(v6);
  }

  return v2;
}

uint64_t sub_100105358()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 64);
  os_unfair_lock_unlock(v1);
  v3 = sub_1001D0E50();
  v4 = sub_1001D1DC0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    sub_100011AC0(&qword_10022CD70, &unk_1001DDDE0);
    v7 = sub_1001D1820();
    v9 = sub_1000954E0(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "liveOnProdSpillover: %s", v5, 0xCu);
    sub_100011CF0(v6);
  }

  return v2;
}

uint64_t sub_1001054B0()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 80);
  os_unfair_lock_unlock(v1);
  v3 = sub_1001D0E50();
  v4 = sub_1001D1DC0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    sub_100011AC0(&qword_10022CD70, &unk_1001DDDE0);
    v7 = sub_1001D1820();
    v9 = sub_1000954E0(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "prewarmAttestationsValidityInSeconds: %s", v5, 0xCu);
    sub_100011CF0(v6);
  }

  return v2;
}

uint64_t sub_100105608()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 96);
  os_unfair_lock_unlock(v1);
  v3 = sub_1001D0E50();
  v4 = sub_1001D1DC0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v7 = sub_1001D1820();
    v9 = sub_1000954E0(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "maxPrefetchBatches: %s", v5, 0xCu);
    sub_100011CF0(v6);
  }

  return v2;
}

void *sub_100105760()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 112);

  os_unfair_lock_unlock(v1);

  v3 = sub_1001D0E50();
  v4 = sub_1001D1DC0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;

    sub_100011AC0(&qword_10022CD98, &qword_1001DDE18);
    v7 = sub_1001D1820();
    v9 = sub_1000954E0(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "blockedBundleIds: %s", v5, 0xCu);
    sub_100011CF0(v6);
  }

  if (v2)
  {
    return v2;
  }

  else
  {
    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1001058D4()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 120);
  os_unfair_lock_unlock(v1);
  v3 = sub_1001D0E50();
  v4 = sub_1001D1DC0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v7 = sub_1001D1820();
    v9 = sub_1000954E0(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "maxPrefetchWorkloadCount: %s", v5, 0xCu);
    sub_100011CF0(v6);
  }

  return v2;
}

uint64_t sub_100105A2C()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 136);
  os_unfair_lock_unlock(v1);
  v3 = sub_1001D0E50();
  v4 = sub_1001D1DC0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v7 = sub_1001D1820();
    v9 = sub_1000954E0(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "maxPrefetchWorkloadAgeSeconds: %s", v5, 0xCu);
    sub_100011CF0(v6);
  }

  return v2;
}

uint64_t sub_100105B84()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 152);
  os_unfair_lock_unlock(v1);
  v3 = sub_1001D0E50();
  v4 = sub_1001D1DC0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v7 = sub_1001D1820();
    v9 = sub_1000954E0(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "trustedProxyDefaultTotalAttestations: %s", v5, 0xCu);
    sub_100011CF0(v6);
  }

  return v2;
}

uint64_t sub_100105CDC()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 184);
  os_unfair_lock_unlock(v1);
  v3 = sub_1001D0E50();
  v4 = sub_1001D1DC0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v7 = sub_1001D1820();
    v9 = sub_1000954E0(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "trustedProxyMaxPrefetchBatches: %s", v5, 0xCu);
    sub_100011CF0(v6);
  }

  return v2;
}

uint64_t sub_100105E34()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 168);
  os_unfair_lock_unlock(v1);
  v3 = sub_1001D0E50();
  v4 = sub_1001D1DC0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v7 = sub_1001D1820();
    v9 = sub_1000954E0(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "trustedProxyMaxCachedAttestations: %s", v5, 0xCu);
    sub_100011CF0(v6);
  }

  return v2;
}

uint64_t sub_100105F8C()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 200);
  os_unfair_lock_unlock(v1);
  v3 = sub_1001D0E50();
  v4 = sub_1001D1DC0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v7 = sub_1001D1820();
    v9 = sub_1000954E0(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "trustedProxyMaxPrefetchedAttestations: %s", v5, 0xCu);
    sub_100011CF0(v6);
  }

  return v2;
}

uint64_t sub_1001060E4()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v2 = *(v1 + 216);
  os_unfair_lock_unlock(v1);
  v3 = sub_1001D0E50();
  v4 = sub_1001D1DC0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    sub_100011AC0(&qword_10022CD70, &unk_1001DDDE0);
    v7 = sub_1001D1820();
    v9 = sub_1000954E0(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "trustedProxyRollout: %s", v5, 0xCu);
    sub_100011CF0(v6);
  }

  return v2;
}

uint64_t sub_10010623C()
{

  v1 = OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration_logger;
  v2 = sub_1001D0E60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration_file;
  v4 = sub_1001CFB10();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_100106DC4(v0 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel + 8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ServerDrivenConfiguration(uint64_t a1)
{
  result = qword_10022CCC8;
  if (!qword_10022CCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100106388(uint64_t a1)
{
  result = sub_1001D0E60();
  if (v2 <= 0x3F)
  {
    result = sub_1001CFB10();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

char *sub_10010646C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&qword_10022CD68, &qword_1001DDD38);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

__n128 sub_10010649C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 201) = *(a2 + 201);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1001064E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 217))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_10010653C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 216) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 217) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 217) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_1001065D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000130E0;

  return sub_100103CF0(a1, a2);
}

BOOL sub_100106770(uint64_t a1, void *a2, void *a3)
{
  v5 = *v3;
  v6 = a3[3];
  v7 = a3[4];
  v8 = sub_100024DC8(a3, v6);

  return sub_1001067D0(a2, v8, v5, v6, v7);
}

BOOL sub_1001067D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v44 = a3;
  v7 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v48 = *(v7 - 8);
  v49 = v7;
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  v10 = sub_1001D0180();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v50 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v16;
  (*(v16 + 16))();
  v17 = v11[13];
  v17(v14, enum case for PrivateCloudComputeFeatureFlags.trustedProxyProtocol(_:), v10);
  v55 = v10;
  v46 = sub_1001081E8(&qword_100229588, &type metadata accessor for PrivateCloudComputeFeatureFlags, &protocol conformance descriptor for PrivateCloudComputeFeatureFlags);
  v56 = v46;
  v18 = sub_10003B47C(&v53);
  v47 = v11[2];
  v47(v18, v14, v10);
  v19 = sub_1001CFEC0();
  v45 = v11[1];
  v45(v14, v10);
  sub_100011CF0(&v53);
  if ((v19 & 1) == 0)
  {
    v23 = 0;
LABEL_18:
    v34 = v50;
    goto LABEL_19;
  }

  v41 = a4;
  sub_100024DC8(a1, a1[3]);
  sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  v42 = v17;
  sub_1001D0350();
  sub_10005956C();
  v20 = v42;
  sub_1001D0210();
  (v48[1].isa)(v9, v49);
  v21 = v54;
  if (v54)
  {
    v22 = v53;
    if (v53 == 0x79786F7270 && v54 == 0xE500000000000000 || (sub_1001D2470() & 1) != 0)
    {

LABEL_16:
      v23 = 1;
      goto LABEL_17;
    }

    if (v22 == 0x746365726964 && v21 == 0xE600000000000000 || (sub_1001D2470() & 1) != 0)
    {

      v23 = 0;
LABEL_17:
      a4 = v41;
      goto LABEL_18;
    }

    v24 = sub_1001D0E50();
    v25 = sub_1001D1E00();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      LODWORD(v49) = v25;
      v27 = v26;
      v28 = swift_slowAlloc();
      v48 = v24;
      v29 = v28;
      v52 = v28;
      *v27 = 136446210;
      v30 = sub_1000954E0(v22, v21, &v52);

      *(v27 + 4) = v30;
      v20 = v42;
      v31 = v48;
      _os_log_impl(&_mh_execute_header, v48, v49, "unexpected node kind override, ignoring, overrideNodeKind=%{public}s", v27, 0xCu);
      sub_100011CF0(v29);
    }

    else
    {
    }
  }

  v20(v14, enum case for PrivateCloudComputeFeatureFlags.forceTrustedProxyProtocol(_:), v10);
  v55 = v10;
  v56 = v46;
  v32 = sub_10003B47C(&v53);
  v47(v32, v14, v10);
  v33 = sub_1001CFEC0();
  v45(v14, v10);
  sub_100011CF0(&v53);
  if (v33)
  {
    goto LABEL_16;
  }

  v36 = sub_1001060E4();
  a4 = v41;
  if (v37)
  {
    v23 = 0;
    v34 = v50;
  }

  else
  {
    v38 = *&v36;
    v39 = v50;
    SystemInfoProtocol.uniqueDeviceIDPercentile.getter(v41, v43);
    v34 = v39;
    v23 = v40 < v38;
  }

LABEL_19:
  (*(v51 + 8))(v34, a4);
  return v23;
}

unint64_t sub_100106D70()
{
  result = qword_10022CD78;
  if (!qword_10022CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CD78);
  }

  return result;
}

uint64_t sub_100106DF4()
{
  sub_100011E48(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

BOOL sub_100106E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v43 = a5;
  v36 = a2;
  v37 = a3;
  v42 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v7 = *(v42 - 8);
  __chkstk_darwin(v42);
  v9 = &v34 - v8;
  v10 = sub_1001D0180();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v17;
  (*(v17 + 16))(v16, a1, a4);
  v41 = v11[13];
  v41(v14, enum case for PrivateCloudComputeFeatureFlags.trustedProxyProtocol(_:), v10);
  v48 = v10;
  v39 = sub_1001081E8(&qword_100229588, &type metadata accessor for PrivateCloudComputeFeatureFlags, &protocol conformance descriptor for PrivateCloudComputeFeatureFlags);
  v49 = v39;
  v18 = sub_10003B47C(&v46);
  v40 = v11[2];
  v40(v18, v14, v10);
  LOBYTE(a1) = sub_1001CFEC0();
  v38 = v11[1];
  v38(v14, v10);
  sub_100011CF0(&v46);
  if ((a1 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  sub_1001D0350();
  sub_10005956C();
  v34 = v16;
  v35 = a4;
  sub_1001D0210();
  (*(v7 + 8))(v9, v42);
  v19 = v47;
  if (!v47)
  {
LABEL_14:
    v41(v14, enum case for PrivateCloudComputeFeatureFlags.forceTrustedProxyProtocol(_:), v10);
    v48 = v10;
    v49 = v39;
    v27 = sub_10003B47C(&v46);
    v40(v27, v14, v10);
    v28 = sub_1001CFEC0();
    v38(v14, v10);
    sub_100011CF0(&v46);
    if (v28)
    {
      goto LABEL_15;
    }

    v29 = sub_1001060E4();
    v16 = v34;
    a4 = v35;
    if ((v30 & 1) == 0)
    {
      v32 = *&v29;
      sub_100108A1C();
      v21 = v33 < v32;
      goto LABEL_19;
    }

LABEL_18:
    v21 = 0;
    goto LABEL_19;
  }

  v20 = v46;
  if (v46 == 0x79786F7270 && v47 == 0xE500000000000000 || (sub_1001D2470() & 1) != 0)
  {

LABEL_15:
    v21 = 1;
    goto LABEL_16;
  }

  if ((v20 != 0x746365726964 || v19 != 0xE600000000000000) && (sub_1001D2470() & 1) == 0)
  {

    v22 = sub_1001D0E50();
    v23 = sub_1001D1E00();

    v24 = v22;
    if (os_log_type_enabled(v22, v23))
    {
      v25 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v45 = v43;
      *v25 = 136446210;
      v26 = sub_1000954E0(v20, v19, &v45);

      *(v25 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v24, v23, "unexpected node kind override, ignoring, overrideNodeKind=%{public}s", v25, 0xCu);
      sub_100011CF0(v43);
    }

    else
    {
    }

    goto LABEL_14;
  }

  v21 = 0;
LABEL_16:
  v16 = v34;
  a4 = v35;
LABEL_19:
  (*(v44 + 8))(v16, a4);
  return v21;
}

unint64_t sub_1001073D8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021CD38;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100107424@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100011AC0(&qword_10022CD80, &qword_1001DDE00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - v7;
  v153 = 1;
  v151 = 1;
  v149 = 1;
  v147 = 1;
  v145 = 1;
  v143 = 1;
  v141 = 1;
  v139 = 1;
  v137 = 1;
  v135 = 1;
  v133 = 1;
  v131 = 1;
  v129 = 1;
  v9 = a1[3];
  v68 = a1;
  sub_100024DC8(a1, v9);
  sub_10010815C();
  sub_1001D25E0();
  if (v2)
  {
    v154 = v2;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v69 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
LABEL_4:
    sub_100011CF0(v68);
    v89 = v16;
    v90 = v153;
    *v91 = *v152;
    *&v91[3] = *&v152[3];
    v92 = v15;
    v93 = v151;
    *v94 = *v150;
    *&v94[3] = *&v150[3];
    v95 = v14;
    v96 = v149;
    *&v97[3] = *&v148[3];
    *v97 = *v148;
    v98 = v13;
    v99 = v12;
    v100 = v147;
    *v101 = *v146;
    *&v101[3] = *&v146[3];
    v102 = v11;
    v103 = v145;
    *v104 = *v144;
    *&v104[3] = *&v144[3];
    v105 = v10;
    v106 = v143;
    *&v107[3] = *&v142[3];
    *v107 = *v142;
    v108 = 0;
    v109 = v69;
    v110 = v141;
    *&v111[3] = *&v140[3];
    *v111 = *v140;
    v112 = v74;
    v113 = v139;
    *&v114[3] = *&v138[3];
    *v114 = *v138;
    v115 = v73;
    v116 = v137;
    *&v117[3] = *&v136[3];
    *v117 = *v136;
    v118 = v72;
    v119 = v135;
    *&v120[3] = *&v134[3];
    *v120 = *v134;
    v121 = v71;
    v122 = v133;
    *&v123[3] = *&v132[3];
    *v123 = *v132;
    v124 = v70;
    v125 = v131;
    *&v126[3] = *&v130[3];
    *v126 = *v130;
    v127 = 0;
    v128 = v129;
    return sub_100106DC4(&v89);
  }

  LOBYTE(v89) = 0;
  v67 = sub_1001D2230();
  v153 = v18 & 1;
  LOBYTE(v89) = 1;
  v66 = sub_1001D2230();
  v151 = v19 & 1;
  LOBYTE(v89) = 2;
  v20 = sub_1001D2230();
  v154 = 0;
  v65 = v20;
  v149 = v21 & 1;
  sub_100011AC0(&qword_1002283B8, &qword_1001D4A50);
  LOBYTE(v75) = 3;
  sub_100024E0C(&qword_1002283C0, &protocol witness table for String, &protocol witness table for Int, &protocol conformance descriptor for <> [A : B]);
  v22 = v154;
  sub_1001D2240();
  if (v22)
  {
    v154 = v22;
    (*(v6 + 8))(v8, v5);
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v69 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v15 = v66;
    v16 = v67;
    v14 = v65;
    goto LABEL_4;
  }

  v13 = v89;
  LOBYTE(v89) = 4;
  v64 = sub_1001D2220();
  v147 = v23 & 1;
  LOBYTE(v89) = 5;
  v63 = sub_1001D2220();
  v145 = v24 & 1;
  LOBYTE(v89) = 6;
  v25 = sub_1001D2230();
  v154 = 0;
  v62 = v25;
  v143 = v26 & 1;
  sub_100011AC0(&unk_100230200, &qword_1001D4F80);
  LOBYTE(v75) = 7;
  sub_1000439E8(&qword_1002287F0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  v27 = v154;
  sub_1001D2240();
  if (v27)
  {
    v154 = v27;
    (*(v6 + 8))(v8, v5);
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v69 = 0;
    v15 = v66;
    v16 = v67;
    v12 = v64;
    v14 = v65;
    v10 = v62;
    v11 = v63;
    goto LABEL_4;
  }

  v60 = v89;
  v61 = v13;
  LOBYTE(v89) = 8;
  v28 = sub_1001D2230();
  v154 = 0;
  v69 = v28;
  v141 = v29 & 1;
  LOBYTE(v89) = 9;
  v74 = sub_1001D2230();
  v154 = 0;
  v139 = v30 & 1;
  LOBYTE(v89) = 10;
  v73 = sub_1001D2230();
  v154 = 0;
  v137 = v31 & 1;
  LOBYTE(v89) = 11;
  v72 = sub_1001D2230();
  v154 = 0;
  v135 = v32 & 1;
  LOBYTE(v89) = 12;
  v71 = sub_1001D2230();
  v154 = 0;
  v133 = v33 & 1;
  LOBYTE(v89) = 13;
  v70 = sub_1001D2230();
  v154 = 0;
  v131 = v34 & 1;
  v88 = 14;
  v35 = sub_1001D2220();
  v154 = 0;
  v36 = v35;
  v38 = v37;
  (*(v6 + 8))(v8, v5);
  v129 = v38 & 1;
  *&v75 = v67;
  v59 = v153;
  BYTE8(v75) = v153;
  *(&v75 + 9) = *v152;
  HIDWORD(v75) = *&v152[3];
  *&v76 = v66;
  v58 = v151;
  BYTE8(v76) = v151;
  *(&v76 + 9) = *v150;
  HIDWORD(v76) = *&v150[3];
  *&v77 = v65;
  v57 = v149;
  BYTE8(v77) = v149;
  HIDWORD(v77) = *&v148[3];
  *(&v77 + 9) = *v148;
  *&v78 = v61;
  *(&v78 + 1) = v64;
  v56 = v147;
  LOBYTE(v79) = v147;
  *(&v79 + 1) = *v146;
  DWORD1(v79) = *&v146[3];
  *(&v79 + 1) = v63;
  v55 = v145;
  LOBYTE(v80) = v145;
  *(&v80 + 1) = *v144;
  DWORD1(v80) = *&v144[3];
  *(&v80 + 1) = v62;
  v54 = v143;
  LOBYTE(v81) = v143;
  DWORD1(v81) = *&v142[3];
  *(&v81 + 1) = *v142;
  *(&v81 + 1) = v60;
  *&v82 = v69;
  v53 = v141;
  BYTE8(v82) = v141;
  HIDWORD(v82) = *&v140[3];
  *(&v82 + 9) = *v140;
  *&v83 = v74;
  v52 = v139;
  BYTE8(v83) = v139;
  HIDWORD(v83) = *&v138[3];
  *(&v83 + 9) = *v138;
  *&v84 = v73;
  v51 = v137;
  BYTE8(v84) = v137;
  HIDWORD(v84) = *&v136[3];
  *(&v84 + 9) = *v136;
  v39 = v71;
  *&v85 = v72;
  v50 = v135;
  BYTE8(v85) = v135;
  HIDWORD(v85) = *&v134[3];
  *(&v85 + 9) = *v134;
  *&v86 = v71;
  v49 = v133;
  BYTE8(v86) = v133;
  HIDWORD(v86) = *&v132[3];
  *(&v86 + 9) = *v132;
  v40 = v70;
  *v87 = v70;
  v41 = v131;
  v87[8] = v131;
  *&v87[12] = *&v130[3];
  *&v87[9] = *v130;
  *&v87[16] = v36;
  v38 &= 1u;
  v87[24] = v38;
  sub_1001081B0(&v75, &v89);
  sub_100011CF0(v68);
  v89 = v67;
  v90 = v59;
  *v91 = *v152;
  *&v91[3] = *&v152[3];
  v92 = v66;
  v93 = v58;
  *v94 = *v150;
  *&v94[3] = *&v150[3];
  v95 = v65;
  v96 = v57;
  *v97 = *v148;
  *&v97[3] = *&v148[3];
  v98 = v61;
  v99 = v64;
  v100 = v56;
  *v101 = *v146;
  *&v101[3] = *&v146[3];
  v102 = v63;
  v103 = v55;
  *v104 = *v144;
  *&v104[3] = *&v144[3];
  v105 = v62;
  v106 = v54;
  *v107 = *v142;
  *&v107[3] = *&v142[3];
  v108 = v60;
  v109 = v69;
  v110 = v53;
  *&v111[3] = *&v140[3];
  *v111 = *v140;
  v112 = v74;
  v113 = v52;
  *&v114[3] = *&v138[3];
  *v114 = *v138;
  v115 = v73;
  v116 = v51;
  *&v117[3] = *&v136[3];
  *v117 = *v136;
  v118 = v72;
  v119 = v50;
  *&v120[3] = *&v134[3];
  *v120 = *v134;
  v121 = v39;
  v122 = v49;
  *&v123[3] = *&v132[3];
  *v123 = *v132;
  v124 = v40;
  v125 = v41;
  *&v126[3] = *&v130[3];
  *v126 = *v130;
  v127 = v36;
  v128 = v38;
  result = sub_100106DC4(&v89);
  v42 = v86;
  a2[10] = v85;
  a2[11] = v42;
  a2[12] = *v87;
  *(a2 + 201) = *&v87[9];
  v43 = v82;
  a2[6] = v81;
  a2[7] = v43;
  v44 = v84;
  a2[8] = v83;
  a2[9] = v44;
  v45 = v78;
  a2[2] = v77;
  a2[3] = v45;
  v46 = v80;
  a2[4] = v79;
  a2[5] = v46;
  v47 = v76;
  *a2 = v75;
  a2[1] = v47;
  return result;
}

unint64_t sub_10010815C()
{
  result = qword_10022CD88;
  if (!qword_10022CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CD88);
  }

  return result;
}

uint64_t sub_1001081E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100108230@<X0>(uint64_t a3@<X8>)
{
  sub_100106D70();
  sub_1001CF790();
  result = v27;
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  *(a3 + 48) = v11;
  *(a3 + 64) = v12;
  *(a3 + 72) = v13;
  *(a3 + 80) = v14;
  *(a3 + 88) = v15;
  *(a3 + 96) = v16;
  *(a3 + 104) = v17;
  *(a3 + 120) = v18;
  *(a3 + 128) = v19;
  *(a3 + 136) = v20;
  *(a3 + 144) = v21;
  *(a3 + 152) = v22;
  *(a3 + 160) = v23;
  *(a3 + 168) = v24;
  *(a3 + 176) = v25;
  *(a3 + 184) = v26;
  *(a3 + 192) = v27;
  *(a3 + 200) = v28;
  *(a3 + 208) = v29;
  *(a3 + 216) = v30;
  return result;
}

uint64_t sub_100108538(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v2 = sub_1001CFA40();
  v22 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001CFB10();
  v24 = *(v6 - 8);
  v25 = v6;
  v7 = __chkstk_darwin(v6);
  v23 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  v27 = 0xD00000000000001ELL;
  v28 = 0x80000001001E5280;
  v11 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v12 = *(v3 + 104);
  v12(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
  sub_100011EAC();
  sub_1001CFB00();
  v13 = *(v3 + 8);
  v14 = v22;
  v13(v5, v22);
  v27 = 0xD00000000000001ELL;
  v28 = 0x80000001001E5280;
  v12(v5, v11, v14);
  v15 = v23;
  sub_1001CFB00();
  v13(v5, v14);
  v16 = v15;
  sub_10014D240(v10, v15);
  v17 = *(v24 + 8);
  v18 = v16;
  v19 = v25;
  v17(v18, v25);
  return (v17)(v10, v19);
}

uint64_t getEnumTagSinglePayload for ServerDrivenConfiguration.JsonModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServerDrivenConfiguration.JsonModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100108918()
{
  result = qword_10022CDA0;
  if (!qword_10022CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CDA0);
  }

  return result;
}

unint64_t sub_100108970()
{
  result = qword_10022CDA8;
  if (!qword_10022CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CDA8);
  }

  return result;
}

unint64_t sub_1001089C8()
{
  result = qword_10022CDB0;
  if (!qword_10022CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CDB0);
  }

  return result;
}

uint64_t sub_100108A1C()
{
  v0 = sub_1001D1470();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001D1460();
  v15 = *(v4 - 8);
  v16 = v4;
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001D1810();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D1800();
  v11 = sub_1001D17E0();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  if (v13 >> 60 == 15)
  {
    result = sub_1001D2180();
    __break(1u);
  }

  else
  {
    sub_10010D1A8(&qword_100229378, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    sub_1001D1440();
    sub_100012038(v11, v13);
    sub_100158DE0(v11, v13, v3);
    sub_10002683C(v11, v13);
    sub_1001D1430();
    (*(v1 + 8))(v3, v0);
    sub_1001D1450();
    sub_10002683C(v11, v13);
    return (*(v15 + 8))(v6, v16);
  }

  return result;
}

uint64_t sub_100108D90()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_fetchServerDrivenConfigurationValve);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_100108DC0, v1, 0);
}

uint64_t sub_100108DC0()
{
  *(v0 + 40) = sub_10019B804() & 1;

  return _swift_task_switch(sub_100108E30, 0, 0);
}

uint64_t sub_100108E30(uint64_t a1)
{
  if (*(v1 + 40) == 1)
  {
    v2 = swift_task_alloc();
    *(v1 + 32) = v2;
    *v2 = v1;
    v2[1] = sub_100108F88;

    return sub_100109090();
  }

  else
  {
    v4 = sub_1001D0E50();
    v5 = sub_1001D1DD0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "received a request to fetch server driven configuration but it is too soon", v6, 2u);
    }

    v7 = *(v1 + 8);

    return v7();
  }
}

uint64_t sub_100108F88(uint64_t a1, unint64_t a2)
{
  v7 = *v2;

  sub_100011E48(a1, a2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100109090()
{
  v1[130] = v0;
  sub_1001CF7E0();
  v1[131] = swift_task_alloc();
  v2 = sub_1001D05B0();
  v1[132] = v2;
  v1[133] = *(v2 - 8);
  v1[134] = swift_task_alloc();
  sub_1001CFDA0();
  v1[135] = swift_task_alloc();

  return _swift_task_switch(sub_1001091A8, 0, 0);
}

uint64_t sub_1001091A8()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1064);
  v4 = *(v0 + 1056);
  v5 = *(v0 + 1040);
  v6 = *(v5 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_serverDrivenConfig);
  *(v0 + 1088) = v6;
  v7 = (v5 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo);
  v8 = *(v5 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 32);
  v9 = *(v5 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo);
  *(v0 + 704) = *(v5 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 16);
  *(v0 + 720) = v8;
  *(v0 + 688) = v9;
  v10 = v7[6];
  v12 = v7[3];
  v11 = v7[4];
  *(v0 + 768) = v7[5];
  *(v0 + 784) = v10;
  *(v0 + 736) = v12;
  *(v0 + 752) = v11;
  v13 = v7[10];
  v15 = v7[7];
  v14 = v7[8];
  *(v0 + 832) = v7[9];
  *(v0 + 848) = v13;
  *(v0 + 800) = v15;
  *(v0 + 816) = v14;

  sub_1000884D8(v0 + 688, v0 + 864);
  sub_1001CFD90();
  (*(v3 + 16))(v2, v5 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_config, v4);
  *(v0 + 1096) = sub_10010CE40(v6, (v0 + 688), v1, v2);
  v16 = swift_task_alloc();
  *(v0 + 1104) = v16;
  *v16 = v0;
  v16[1] = sub_100109324;

  return sub_100109BB0();
}

uint64_t sub_100109324()
{
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v2 = sub_1001097B8;
  }

  else
  {
    v2 = sub_100109438;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100109438(uint64_t a1)
{
  v2 = sub_1001D0E50();
  v3 = sub_1001D1DD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "UpdateServerDrivenConfigurationRequest send succeeded", v4, 2u);
  }

  v5 = *(v1 + 1112);
  v6 = *(v1 + 1088);
  sub_1001CF820();
  swift_allocObject();
  sub_1001CF810();
  sub_1001CF7C0();
  sub_1001CF7F0();
  v7 = v6 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v6 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v8 = *(v7 + 24);
  *(v1 + 16) = *(v7 + 8);
  *(v1 + 32) = v8;
  v9 = *(v7 + 40);
  v10 = *(v7 + 56);
  v11 = *(v7 + 88);
  *(v1 + 80) = *(v7 + 72);
  *(v1 + 96) = v11;
  *(v1 + 48) = v9;
  *(v1 + 64) = v10;
  v12 = *(v7 + 104);
  v13 = *(v7 + 120);
  v14 = *(v7 + 152);
  *(v1 + 144) = *(v7 + 136);
  *(v1 + 160) = v14;
  *(v1 + 112) = v12;
  *(v1 + 128) = v13;
  v15 = *(v7 + 168);
  v16 = *(v7 + 184);
  v17 = *(v7 + 200);
  *(v1 + 217) = *(v7 + 209);
  *(v1 + 192) = v16;
  *(v1 + 208) = v17;
  *(v1 + 176) = v15;
  sub_1001081B0(v1 + 16, v1 + 240);
  os_unfair_lock_unlock(v7);
  v18 = *(v1 + 192);
  *(v1 + 624) = *(v1 + 176);
  *(v1 + 640) = v18;
  *(v1 + 656) = *(v1 + 208);
  *(v1 + 665) = *(v1 + 217);
  v19 = *(v1 + 128);
  *(v1 + 560) = *(v1 + 112);
  *(v1 + 576) = v19;
  v20 = *(v1 + 160);
  *(v1 + 592) = *(v1 + 144);
  *(v1 + 608) = v20;
  v21 = *(v1 + 64);
  *(v1 + 496) = *(v1 + 48);
  *(v1 + 512) = v21;
  v22 = *(v1 + 96);
  *(v1 + 528) = *(v1 + 80);
  *(v1 + 544) = v22;
  v23 = *(v1 + 32);
  *(v1 + 464) = *(v1 + 16);
  *(v1 + 480) = v23;
  sub_10010CDEC();
  v24 = sub_1001CF800();
  if (v5)
  {
    sub_100106DC4(v1 + 16);
    swift_errorRetain();
    v26 = sub_1001D0E50();
    v27 = sub_1001D1DE0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "failure to encode server driven config for display, error=%@", v28, 0xCu);
      sub_100024B10(v29);
    }

    else
    {
    }

    v31 = 0;
    v32 = 0xC000000000000000;
  }

  else
  {
    v31 = v24;
    v32 = v25;

    sub_100106DC4(v1 + 16);
  }

  v33 = *(v1 + 8);

  return v33(v31, v32);
}

uint64_t sub_1001097B8()
{
  swift_errorRetain();
  v1 = sub_1001D0E50();
  v2 = sub_1001D1DE0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "failure to process UpdateServerDrivenConfigurationRequest send, error=%@", v3, 0xCu);
    sub_100024B10(v4);
  }

  else
  {
  }

  v6 = *(v0 + 1088);
  sub_1001CF820();
  swift_allocObject();
  sub_1001CF810();
  sub_1001CF7C0();
  sub_1001CF7F0();
  v7 = v6 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v6 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v8 = *(v7 + 24);
  *(v0 + 16) = *(v7 + 8);
  *(v0 + 32) = v8;
  v9 = *(v7 + 40);
  v10 = *(v7 + 56);
  v11 = *(v7 + 88);
  *(v0 + 80) = *(v7 + 72);
  *(v0 + 96) = v11;
  *(v0 + 48) = v9;
  *(v0 + 64) = v10;
  v12 = *(v7 + 104);
  v13 = *(v7 + 120);
  v14 = *(v7 + 152);
  *(v0 + 144) = *(v7 + 136);
  *(v0 + 160) = v14;
  *(v0 + 112) = v12;
  *(v0 + 128) = v13;
  v15 = *(v7 + 168);
  v16 = *(v7 + 184);
  v17 = *(v7 + 200);
  *(v0 + 217) = *(v7 + 209);
  *(v0 + 192) = v16;
  *(v0 + 208) = v17;
  *(v0 + 176) = v15;
  sub_1001081B0(v0 + 16, v0 + 240);
  os_unfair_lock_unlock(v7);
  v18 = *(v0 + 192);
  *(v0 + 624) = *(v0 + 176);
  *(v0 + 640) = v18;
  *(v0 + 656) = *(v0 + 208);
  *(v0 + 665) = *(v0 + 217);
  v19 = *(v0 + 128);
  *(v0 + 560) = *(v0 + 112);
  *(v0 + 576) = v19;
  v20 = *(v0 + 160);
  *(v0 + 592) = *(v0 + 144);
  *(v0 + 608) = v20;
  v21 = *(v0 + 64);
  *(v0 + 496) = *(v0 + 48);
  *(v0 + 512) = v21;
  v22 = *(v0 + 96);
  *(v0 + 528) = *(v0 + 80);
  *(v0 + 544) = v22;
  v23 = *(v0 + 32);
  *(v0 + 464) = *(v0 + 16);
  *(v0 + 480) = v23;
  sub_10010CDEC();
  v24 = sub_1001CF800();
  v26 = v25;

  sub_100106DC4(v0 + 16);

  v27 = *(v0 + 8);

  return v27(v24, v26);
}

uint64_t sub_100109BB0()
{
  v1[83] = v0;
  v2 = sub_1001D1380();
  v1[84] = v2;
  v1[85] = *(v2 - 8);
  v1[86] = swift_task_alloc();
  sub_1001CFB10();
  v1[87] = swift_task_alloc();
  v3 = sub_1001D02E0();
  v1[88] = v3;
  v1[89] = *(v3 - 8);
  v1[90] = swift_task_alloc();
  v4 = sub_1001CF780();
  v1[91] = v4;
  v1[92] = *(v4 - 8);
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();

  return _swift_task_switch(sub_100109D60, 0, 0);
}

uint64_t sub_100109D60()
{
  v89 = v0;
  *(v0 + 760) = qword_10022CE78;

  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 664);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v88 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000954E0(*(v3 + qword_10022CE80), *(v3 + qword_10022CE80 + 8), &v88);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s executing configbag request", v4, 0xCu);
    sub_100011CF0(v5);
  }

  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  v8 = *(v0 + 704);
  v9 = *(v0 + 664);
  v10 = *(v9 + qword_10022CE90 + 24);
  v11 = *(v9 + qword_10022CE90 + 32);
  sub_100024DC8((v9 + qword_10022CE90), v10);
  v12 = *(*v9 + 152);
  *(v0 + 768) = v12;
  v13 = (v9 + v12);
  *(v0 + 568) = &type metadata for SystemInfo;
  *(v0 + 576) = &protocol witness table for SystemInfo;
  v14 = swift_allocObject();
  *(v0 + 544) = v14;
  v16 = v13[1];
  v15 = v13[2];
  *(v0 + 192) = *v13;
  *(v0 + 208) = v16;
  *(v0 + 224) = v15;
  v17 = v13[6];
  v19 = v13[3];
  v18 = v13[4];
  *(v0 + 272) = v13[5];
  *(v0 + 288) = v17;
  *(v0 + 240) = v19;
  *(v0 + 256) = v18;
  v20 = v13[10];
  v22 = v13[7];
  v21 = v13[8];
  *(v0 + 336) = v13[9];
  *(v0 + 352) = v20;
  *(v0 + 304) = v22;
  *(v0 + 320) = v21;
  v86 = *(v0 + 344);
  v87 = *(v0 + 336);
  v24 = v13[1];
  v23 = v13[2];
  v14[1] = *v13;
  v14[2] = v24;
  v14[3] = v23;
  v25 = v13[6];
  v27 = v13[3];
  v26 = v13[4];
  v14[6] = v13[5];
  v14[7] = v25;
  v14[4] = v27;
  v14[5] = v26;
  v28 = v13[10];
  v30 = v13[7];
  v29 = v13[8];
  v14[10] = v13[9];
  v14[11] = v28;
  v14[8] = v30;
  v14[9] = v29;
  sub_1000884D8(v0 + 192, v0 + 368);
  Configuration.environment(systemInfo:)((v0 + 544), v10, v11, v6);
  sub_100011CF0((v0 + 544));
  sub_1001D02D0();
  (*(v7 + 8))(v6, v8);
  sub_1001CF760();
  v31 = sub_1001CFD70();
  v33 = v32;
  if (qword_1002276A8 != -1)
  {
    swift_once();
  }

  sub_10003A37C(*(v0 + 672), qword_100242D78);
  v96._countAndFlagsBits = sub_1001D1320();
  v35 = v34;
  v91._countAndFlagsBits = v31;
  v91._object = v33;
  v96._object = v35;
  sub_1001CF770(v91, v96);

  if (qword_1002276B0 != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 688);
  v37 = *(v0 + 680);
  v38 = *(v0 + 672);
  sub_10003A37C(v38, qword_100242D90);
  v97._countAndFlagsBits = sub_1001D1320();
  v40 = v39;
  v92._object = v86;
  v92._countAndFlagsBits = v87;
  v97._object = v40;
  sub_1001CF770(v92, v97);

  sub_1001D1330();
  v41 = sub_1001D1320();
  v43 = v42;
  v44 = *(v37 + 8);
  v44(v36, v38);
  v93._countAndFlagsBits = 0xD000000000000014;
  v93._object = 0x80000001001E3CA0;
  v98._countAndFlagsBits = v41;
  v98._object = v43;
  sub_1001CF770(v93, v98);

  v45 = [objc_opt_self() automatedDeviceGroup];
  if (v45)
  {
    v46 = v45;
    v47 = sub_1001D17D0();
    v49 = v48;

    if (qword_1002276E8 != -1)
    {
      swift_once();
    }

    sub_10003A37C(*(v0 + 672), qword_100242E38);
    v99._countAndFlagsBits = sub_1001D1320();
    v51 = v50;
    v94._countAndFlagsBits = v47;
    v94._object = v49;
    v99._object = v51;
    sub_1001CF770(v94, v99);
  }

  v52 = *(v0 + 688);
  v53 = *(v0 + 672);
  sub_1001D1360();
  v54 = sub_1001D1320();
  v56 = v55;
  v44(v52, v53);
  v95._object = 0x80000001001E5520;
  v95._countAndFlagsBits = 0xD000000000000010;
  v100._countAndFlagsBits = v54;
  v100._object = v56;
  sub_1001CF770(v95, v100);

  v57 = sub_1001D0E50();
  v58 = sub_1001D1DD0();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = *(v0 + 664);
    v60 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v60 = 136315394;
    *(v60 + 4) = sub_1000954E0(*(v59 + qword_10022CE80), *(v59 + qword_10022CE80 + 8), &v88);
    *(v60 + 12) = 2080;
    swift_beginAccess();
    sub_10010D1A8(&qword_10022CDE0, &type metadata accessor for URLRequest, &protocol conformance descriptor for URLRequest);
    v61 = sub_1001D23A0();
    v63 = sub_1000954E0(v61, v62, &v88);

    *(v60 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v57, v58, "%s request ready, request=%s", v60, 0x16u);
    swift_arrayDestroy();
  }

  v64 = [objc_opt_self() ephemeralSessionConfiguration];
  *(v0 + 776) = v64;
  [v64 setUsesClassicLoadingMode:0];
  v65 = [objc_opt_self() sessionWithConfiguration:v64];
  *(v0 + 784) = v65;

  v66 = v65;
  v67 = sub_1001D0E50();
  v68 = sub_1001D1DD0();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = *(v0 + 664);
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v88 = v72;
    *v70 = 136315394;
    *(v70 + 4) = sub_1000954E0(*(v69 + qword_10022CE80), *(v69 + qword_10022CE80 + 8), &v88);
    *(v70 + 12) = 2112;
    *(v70 + 14) = v66;
    *v71 = v66;
    v73 = v66;
    _os_log_impl(&_mh_execute_header, v67, v68, "%s session ready, session=%@", v70, 0x16u);
    sub_100024B10(v71);

    sub_100011CF0(v72);
  }

  v74 = sub_1001D0E50();
  v75 = sub_1001D1DD0();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = *(v0 + 664);
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v88 = v78;
    *v77 = 136315138;
    *(v77 + 4) = sub_1000954E0(*(v76 + qword_10022CE80), *(v76 + qword_10022CE80 + 8), &v88);
    _os_log_impl(&_mh_execute_header, v74, v75, "%s running session async", v77, 0xCu);
    sub_100011CF0(v78);
  }

  v79 = *(v0 + 752);
  v80 = *(v0 + 744);
  v81 = *(v0 + 736);
  v82 = *(v0 + 728);
  swift_beginAccess();
  (*(v81 + 16))(v80, v79, v82);
  v83 = swift_task_alloc();
  *(v0 + 792) = v83;
  *v83 = v0;
  v83[1] = sub_10010A6F0;
  v84 = *(v0 + 744);

  return NSURLSession.data(for:delegate:)(v84, 0);
}

uint64_t sub_10010A6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[100] = a1;
  v6[101] = a2;
  v6[102] = a3;
  v6[103] = v3;

  v7 = v5[93];
  v8 = v5[92];
  v9 = v5[91];
  v10 = *(v8 + 8);
  v11 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v3)
  {
    v6[106] = v10;
    v6[107] = v11;
    v10(v7, v9);
    v12 = sub_10010B388;
  }

  else
  {
    v6[104] = v10;
    v6[105] = v11;
    v10(v7, v9);
    v12 = sub_10010A890;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_10010A890()
{
  v79 = v0;
  v1 = v0[102];
  v2 = v0[101];
  v3 = v0[100];

  v4 = v1;
  sub_100012038(v3, v2);
  v5 = sub_1001D0E50();
  v6 = sub_1001D1DD0();

  sub_100011E48(v3, v2);
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[102];
  v9 = &off_10022C000;
  if (v7)
  {
    v10 = v0[101];
    v11 = v0[100];
    v12 = v0[83];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_1000954E0(*(v12 + qword_10022CE80), *(v12 + qword_10022CE80 + 8), v78);
    *(v13 + 12) = 2112;
    *(v13 + 14) = v8;
    *v14 = v8;
    *(v13 + 22) = 2080;
    sub_100012038(v11, v10);
    v15 = sub_1001CFB50();
    v17 = v16;
    sub_100011E48(v11, v10);
    v18 = sub_1000954E0(v15, v17, v78);
    v9 = &off_10022C000;

    *(v13 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s response returning, response=%@ data=%s", v13, 0x20u);
    sub_100024B10(v14);

    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = v0[103];
  sub_100011AC0(&qword_10022CDD0, &qword_1001DDFA0);
  sub_100024B78(&qword_10022CDD8, &qword_10022CDD0, &qword_1001DDFA0, &unk_1001DE208);
  sub_1001CF790();
  if (v19)
  {

    swift_errorRetain();
    v20 = sub_1001D0E50();
    v21 = sub_1001D1DE0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = v0[83];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v78[0] = v25;
      *v23 = 136315394;
      *(v23 + 4) = sub_1000954E0(*(v9[464] + v22), *(v9[464] + v22 + 8), v78);
      *(v23 + 12) = 2112;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v26;
      *v24 = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s unable to decode json response data, error=%@", v23, 0x16u);
      sub_100024B10(v24);

      sub_100011CF0(v25);
    }

    v27 = v0[102];
    v74 = v0[101];
    v76 = v0[104];
    v28 = v0[100];
    v29 = v0[98];
    v30 = v0[97];
    v71 = v0[91];
    v72 = v0[94];
    sub_100011AC0(&qword_10022CDC0, &qword_1001DDF98);
    sub_100024B78(&qword_10022CDC8, &qword_10022CDC0, &qword_1001DDF98, &unk_1001DE230);
    swift_allocError();
    *v31 = 1;
    swift_willThrow();

    sub_100011E48(v28, v74);
    v76(v72, v71);

    v32 = sub_1001D0E50();
    v33 = sub_1001D1E00();
LABEL_15:

    if (os_log_type_enabled(v32, v33))
    {
      v57 = v0[83];
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v78[0] = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_1000954E0(*(v57 + qword_10022CE80), *(v57 + qword_10022CE80 + 8), v78);
      _os_log_impl(&_mh_execute_header, v32, v33, "%s finished configbag request", v58, 0xCu);
      sub_100011CF0(v59);
    }

    v60 = v0[1];

    return v60();
  }

  v34 = v0[79];
  v35 = v0[80];

  v36 = sub_1001D0E50();
  v37 = sub_1001D1DD0();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = v0[83];
    v39 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_1000954E0(*(v9[464] + v38), *(v9[464] + v38 + 8), v78);
    *(v39 + 12) = 2080;
    v0[81] = v34;
    v0[82] = v35;
    v40 = sub_1001D1820();
    v42 = sub_1000954E0(v40, v41, v78);

    *(v39 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v36, v37, "%s model decoded, model=%s", v39, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v43 = sub_1001CFB70();
  v45 = v44;

  v0[108] = v43;
  v0[109] = v45;

  if (v45 >> 60 == 15)
  {
    v46 = sub_1001D0E50();
    v47 = sub_1001D1DE0();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = v0[83];
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v78[0] = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_1000954E0(*(v9[464] + v48), *(v9[464] + v48 + 8), v78);
      _os_log_impl(&_mh_execute_header, v46, v47, "%s unable to decode base64 bag", v49, 0xCu);
      sub_100011CF0(v50);
    }

    v51 = v0[102];
    v75 = v0[101];
    v77 = v0[104];
    v52 = v0[100];
    v53 = v0[98];
    v54 = v0[97];
    v73 = v0[94];
    v55 = v0[91];
    sub_100011AC0(&qword_10022CDC0, &qword_1001DDF98);
    sub_100024B78(&qword_10022CDC8, &qword_10022CDC0, &qword_1001DDF98, &unk_1001DE230);
    swift_allocError();
    *v56 = 2;
    swift_willThrow();

    sub_100011E48(v52, v75);
    v77(v73, v55);

    v32 = sub_1001D0E50();
    v33 = sub_1001D1E00();
    goto LABEL_15;
  }

  sub_100089C38(v43, v45);
  v62 = sub_1001D0E50();
  v63 = sub_1001D1DD0();

  sub_10002683C(v43, v45);
  if (os_log_type_enabled(v62, v63))
  {
    v64 = v0[83];
    v65 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v65 = 136315394;
    *(v65 + 4) = sub_1000954E0(*(v9[464] + v64), *(v9[464] + v64 + 8), v78);
    *(v65 + 12) = 2080;
    sub_100012038(v43, v45);
    v66 = sub_1001CFB50();
    v68 = v67;
    sub_10002683C(v43, v45);
    v69 = sub_1000954E0(v66, v68, v78);

    *(v65 + 14) = v69;
    _os_log_impl(&_mh_execute_header, v62, v63, "%s base64 bag decoded, pushing update of utf8jsonBag=%s", v65, 0x16u);
    swift_arrayDestroy();
  }

  v0[110] = *(v0[83] + *(*v0[83] + 160));
  v70 = swift_task_alloc();
  v0[111] = v70;
  *v70 = v0;
  v70[1] = sub_10010B708;

  return sub_100103CF0(v43, v45);
}

uint64_t sub_10010B388()
{
  v22 = v0;

  swift_errorRetain();
  v1 = sub_1001D0E50();
  v2 = sub_1001D1DE0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[83];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21[0] = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1000954E0(*(v3 + qword_10022CE80), *(v3 + qword_10022CE80 + 8), v21);
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s response throwing, error=%@", v4, 0x16u);
    sub_100024B10(v5);

    sub_100011CF0(v6);
  }

  v20 = v0[106];
  v8 = v0[98];
  v9 = v0[97];
  v10 = v0[94];
  v11 = v0[91];
  sub_100011AC0(&qword_10022CDC0, &qword_1001DDF98);
  sub_100024B78(&qword_10022CDC8, &qword_10022CDC0, &qword_1001DDF98, &unk_1001DE230);
  swift_allocError();
  *v12 = 0;
  swift_willThrow();

  v20(v10, v11);

  v13 = sub_1001D0E50();
  v14 = sub_1001D1E00();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[83];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1000954E0(*(v15 + qword_10022CE80), *(v15 + qword_10022CE80 + 8), v21);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s finished configbag request", v16, 0xCu);
    sub_100011CF0(v17);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_10010B708()
{

  return _swift_task_switch(sub_10010B804, 0, 0);
}

uint64_t sub_10010B804()
{
  v29 = v0;
  v1 = *(v0 + 880);
  v2 = *(v0 + 864);
  v27 = *(v0 + 832);
  v3 = *(v0 + 816);
  v4 = *(v0 + 808);
  v5 = *(v0 + 800);
  v6 = *(v0 + 784);
  v7 = *(v0 + 776);
  v26 = *(v0 + 872);
  v8 = *(v0 + 752);
  v9 = *(v0 + 728);
  v10 = (*(v0 + 664) + *(v0 + 768));
  v11 = v10[6];
  v13 = v10[3];
  v12 = v10[4];
  *(v0 + 96) = v10[5];
  *(v0 + 112) = v11;
  *(v0 + 64) = v13;
  *(v0 + 80) = v12;
  v14 = v10[10];
  v16 = v10[7];
  v15 = v10[8];
  *(v0 + 160) = v10[9];
  *(v0 + 176) = v14;
  *(v0 + 128) = v16;
  *(v0 + 144) = v15;
  v17 = *v10;
  v18 = v10[2];
  *(v0 + 32) = v10[1];
  *(v0 + 48) = v18;
  *(v0 + 16) = v17;
  sub_10010C318(v1, v0 + 16);

  sub_10002683C(v2, v26);
  sub_100011E48(v5, v4);
  v27(v8, v9);

  v19 = sub_1001D0E50();
  v20 = sub_1001D1E00();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 664);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1000954E0(*(v21 + qword_10022CE80), *(v21 + qword_10022CE80 + 8), &v28);
    _os_log_impl(&_mh_execute_header, v19, v20, "%s finished configbag request", v22, 0xCu);
    sub_100011CF0(v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10010BA44()
{
  *(v1 + 688) = v0;
  sub_1001CF7E0();
  *(v1 + 696) = swift_task_alloc();

  return _swift_task_switch(sub_10010BAD4, 0, 0);
}

uint64_t sub_10010BAD4()
{
  v1 = *(v0 + 688);
  sub_1001CF820();
  swift_allocObject();
  sub_1001CF810();
  sub_1001CF7C0();
  sub_1001CF7F0();
  v2 = *(v1 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_serverDrivenConfig) + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock(v2);
  v3 = *(v2 + 24);
  *(v0 + 16) = *(v2 + 8);
  *(v0 + 32) = v3;
  v4 = *(v2 + 40);
  v5 = *(v2 + 56);
  v6 = *(v2 + 88);
  *(v0 + 80) = *(v2 + 72);
  *(v0 + 96) = v6;
  *(v0 + 48) = v4;
  *(v0 + 64) = v5;
  v7 = *(v2 + 104);
  v8 = *(v2 + 120);
  v9 = *(v2 + 152);
  *(v0 + 144) = *(v2 + 136);
  *(v0 + 160) = v9;
  *(v0 + 112) = v7;
  *(v0 + 128) = v8;
  v10 = *(v2 + 168);
  v11 = *(v2 + 184);
  v12 = *(v2 + 200);
  *(v0 + 217) = *(v2 + 209);
  *(v0 + 192) = v11;
  *(v0 + 208) = v12;
  *(v0 + 176) = v10;
  sub_1001081B0(v0 + 16, v0 + 240);
  os_unfair_lock_unlock(v2);
  v13 = *(v0 + 192);
  *(v0 + 624) = *(v0 + 176);
  *(v0 + 640) = v13;
  *(v0 + 656) = *(v0 + 208);
  *(v0 + 665) = *(v0 + 217);
  v14 = *(v0 + 128);
  *(v0 + 560) = *(v0 + 112);
  *(v0 + 576) = v14;
  v15 = *(v0 + 160);
  *(v0 + 592) = *(v0 + 144);
  *(v0 + 608) = v15;
  v16 = *(v0 + 64);
  *(v0 + 496) = *(v0 + 48);
  *(v0 + 512) = v16;
  v17 = *(v0 + 96);
  *(v0 + 528) = *(v0 + 80);
  *(v0 + 544) = v17;
  v18 = *(v0 + 32);
  *(v0 + 464) = *(v0 + 16);
  *(v0 + 480) = v18;
  sub_10010CDEC();
  v19 = sub_1001CF800();
  v21 = v20;

  sub_100106DC4(v0 + 16);

  v22 = *(v0 + 8);

  return v22(v19, v21);
}

uint64_t sub_10010BDB4(uint64_t a1, uint64_t a2)
{
  v3[110] = v2;
  v3[109] = a2;
  v3[108] = a1;
  sub_1001CF7E0();
  v3[111] = swift_task_alloc();

  return _swift_task_switch(sub_10010BE4C, 0, 0);
}

uint64_t sub_10010BE4C()
{
  v0[112] = *(v0[110] + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_serverDrivenConfig);
  v1 = swift_task_alloc();
  v0[113] = v1;
  *v1 = v0;
  v1[1] = sub_10010BEFC;
  v2 = v0[109];
  v3 = v0[108];

  return sub_100103CF0(v3, v2);
}

uint64_t sub_10010BEFC()
{

  return _swift_task_switch(sub_10010BFF8, 0, 0);
}

uint64_t sub_10010BFF8()
{
  v1 = *(v0 + 896);
  v2 = (*(v0 + 880) + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo);
  v4 = v2[1];
  v3 = v2[2];
  *(v0 + 688) = *v2;
  *(v0 + 704) = v4;
  *(v0 + 720) = v3;
  v5 = v2[6];
  v7 = v2[3];
  v6 = v2[4];
  *(v0 + 768) = v2[5];
  *(v0 + 784) = v5;
  *(v0 + 736) = v7;
  *(v0 + 752) = v6;
  v8 = v2[10];
  v10 = v2[7];
  v9 = v2[8];
  *(v0 + 832) = v2[9];
  *(v0 + 848) = v8;
  *(v0 + 800) = v10;
  *(v0 + 816) = v9;
  sub_10010C318(v1, v0 + 688);
  sub_1001CF820();
  swift_allocObject();
  sub_1001CF810();
  sub_1001CF7C0();
  sub_1001CF7F0();
  v11 = v1 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC20privatecloudcomputed25ServerDrivenConfiguration__jsonModel));
  v12 = *(v11 + 24);
  *(v0 + 16) = *(v11 + 8);
  *(v0 + 32) = v12;
  v13 = *(v11 + 40);
  v14 = *(v11 + 56);
  v15 = *(v11 + 88);
  *(v0 + 80) = *(v11 + 72);
  *(v0 + 96) = v15;
  *(v0 + 48) = v13;
  *(v0 + 64) = v14;
  v16 = *(v11 + 104);
  v17 = *(v11 + 120);
  v18 = *(v11 + 152);
  *(v0 + 144) = *(v11 + 136);
  *(v0 + 160) = v18;
  *(v0 + 112) = v16;
  *(v0 + 128) = v17;
  v19 = *(v11 + 168);
  v20 = *(v11 + 184);
  v21 = *(v11 + 200);
  *(v0 + 217) = *(v11 + 209);
  *(v0 + 192) = v20;
  *(v0 + 208) = v21;
  *(v0 + 176) = v19;
  sub_1001081B0(v0 + 16, v0 + 240);
  os_unfair_lock_unlock(v11);
  v22 = *(v0 + 192);
  *(v0 + 624) = *(v0 + 176);
  *(v0 + 640) = v22;
  *(v0 + 656) = *(v0 + 208);
  *(v0 + 665) = *(v0 + 217);
  v23 = *(v0 + 128);
  *(v0 + 560) = *(v0 + 112);
  *(v0 + 576) = v23;
  v24 = *(v0 + 160);
  *(v0 + 592) = *(v0 + 144);
  *(v0 + 608) = v24;
  v25 = *(v0 + 64);
  *(v0 + 496) = *(v0 + 48);
  *(v0 + 512) = v25;
  v26 = *(v0 + 96);
  *(v0 + 528) = *(v0 + 80);
  *(v0 + 544) = v26;
  v27 = *(v0 + 32);
  *(v0 + 464) = *(v0 + 16);
  *(v0 + 480) = v27;
  sub_10010CDEC();
  v28 = sub_1001CF800();
  v30 = v29;

  sub_100106DC4(v0 + 16);

  v31 = *(v0 + 8);

  return v31(v28, v30);
}

uint64_t sub_10010C318(uint64_t a1, uint64_t a2)
{
  v99 = a2;
  v104 = a1;
  v2 = sub_1001D02E0();
  v100 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v105 = *(v107 - 8);
  v5 = __chkstk_darwin(v107);
  v108 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v97 - v8;
  v10 = __chkstk_darwin(v7);
  v102 = (&v97 - v11);
  v12 = __chkstk_darwin(v10);
  v101 = &v97 - v13;
  v14 = __chkstk_darwin(v12);
  v103 = &v97 - v15;
  __chkstk_darwin(v14);
  v17 = &v97 - v16;
  v18 = sub_1001D02F0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1001D0E60();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 104))(v21, enum case for TC2LogCategory.updateServerDrivenConfiguration(_:), v18);
  sub_1001D08B0();
  (*(v19 + 8))(v21, v18);
  sub_1001D0170();
  sub_1001D1840();

  LODWORD(v21) = os_variant_has_internal_content();

  if (!v21)
  {
    return (*(v23 + 8))(v25, v22);
  }

  v106 = v25;
  v97 = v23;
  v98 = v22;
  v26 = sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  sub_1001D0420();
  v27 = COERCE_DOUBLE(sub_100105358());
  v28 = v17;
  if ((v29 & 1) != 0 || (v52 = v27, v53 = v27, v27 < 0.0) || v27 > 1.0)
  {
    v104 = v26;
    v30 = sub_1001D0E50();
    v31 = sub_1001D1E00();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v107;
    if (v32)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "With no spillover, deleted environment proposal", v34, 2u);
    }

    v35 = v105;
    v36 = *(v105 + 16);
    v36(v9, v17, v33);
    v37 = v108;
    v103 = v17;
    v36(v108, v17, v33);
    v38 = sub_1001D0E50();
    v39 = sub_1001D1E00();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v109[0] = v102;
      *v40 = 136315394;
      v41 = sub_1001D0570();
      v43 = v42;
      v44 = *(v35 + 8);
      v44(v9, v33);
      v45 = sub_1000954E0(v41, v43, v109);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2080;
      v46 = v108;
      v47 = sub_1001D0560();
      v49 = v48;
      v44(v46, v33);
      v50 = sub_1000954E0(v47, v49, v109);

      *(v40 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v38, v39, "DefaultConfiguration deleted %s %s", v40, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v44 = *(v35 + 8);
      v44(v37, v33);
      v44(v9, v33);
    }

    v109[0] = 0;
    v109[1] = 0;
    v88 = v103;
    sub_1001D0570();
    sub_1001D0560();
    sub_1001D1EF0();

    v44(v88, v33);
    return (*(v97 + 8))(v106, v98);
  }

  else
  {
    sub_100108A1C();
    v55 = v54;
    v56 = v100;
    v57 = &enum case for TC2Environment.production(_:);
    if (v54 >= v53)
    {
      v57 = &enum case for TC2Environment.carry(_:);
    }

    (*(v100 + 104))(v4, *v57, v2);
    v58 = sub_1001D02B0();
    v60 = v59;
    (*(v56 + 8))(v4, v2);
    swift_bridgeObjectRetain_n();
    v61 = sub_1001D0E50();
    v62 = sub_1001D1E00();

    v63 = os_log_type_enabled(v61, v62);
    v64 = v107;
    v108 = v58;
    if (v63)
    {
      v65 = swift_slowAlloc();
      v104 = v26;
      v66 = v65;
      v67 = swift_slowAlloc();
      v109[0] = v67;
      *v66 = 134218498;
      *(v66 + 4) = v55;
      *(v66 + 12) = 2048;
      *(v66 + 14) = v52;
      *(v66 + 22) = 2080;
      *(v66 + 24) = sub_1000954E0(v58, v60, v109);
      _os_log_impl(&_mh_execute_header, v61, v62, "With device_p=%f, spillover=%f, proposed environment=%s", v66, 0x20u);
      sub_100011CF0(v67);
    }

    v69 = v101;
    v68 = v102;
    v70 = v103;
    sub_1001D0420();
    v71 = v105;
    v72 = *(v105 + 16);
    v72(v69, v70, v64);
    v72(v68, v70, v64);

    v73 = sub_1001D0E50();
    v74 = sub_1001D1E00();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v109[0] = v104;
      *v75 = 136315650;
      v102 = v73;
      v76 = sub_1001D0570();
      LODWORD(v101) = v74;
      v78 = v77;
      v79 = v69;
      v80 = *(v71 + 8);
      v80(v79, v64);
      v81 = sub_1000954E0(v76, v78, v109);

      *(v75 + 4) = v81;
      *(v75 + 12) = 2080;
      v82 = sub_1001D0560();
      v84 = v83;
      v80(v68, v64);
      v85 = sub_1000954E0(v82, v84, v109);

      *(v75 + 14) = v85;
      *(v75 + 22) = 2080;
      v86 = sub_1000954E0(v108, v60, v109);

      *(v75 + 24) = v86;
      v87 = v102;
      _os_log_impl(&_mh_execute_header, v102, v101, "DefaultConfiguration wrote %s %s = %s", v75, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v89 = v69;
      v80 = *(v71 + 8);
      v80(v68, v64);
      v80(v89, v64);
    }

    v90 = v98;
    v91 = v103;
    v92 = sub_1001D0570();
    v94 = v93;
    v111._countAndFlagsBits = sub_1001D0560();
    v96 = v95;
    v110._countAndFlagsBits = v92;
    v110._object = v94;
    v111._object = v96;
    sub_1001D1870(v110, v111);

    v80(v91, v64);
    v80(v28, v64);
    return (*(v97 + 8))(v106, v90);
  }
}

unint64_t sub_10010CDEC()
{
  result = qword_10022CDB8;
  if (!qword_10022CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022CDB8);
  }

  return result;
}

uint64_t sub_10010CE40(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1001D02F0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001D05B0();
  v31 = v12;
  v32 = &protocol witness table for DefaultConfiguration;
  v13 = sub_10003B47C(&v30);
  (*(*(v12 - 8) + 32))(v13, a4, v12);
  sub_100011AC0(&qword_10022CDE8, &qword_1001DDFA8);
  v14 = swift_allocObject();
  (*(v9 + 104))(v11, enum case for TC2LogCategory.updateServerDrivenConfiguration(_:), v8);
  sub_1001D08B0();
  (*(v9 + 8))(v11, v8);
  v15 = qword_10022CE98;
  sub_1001CF7B0();
  swift_allocObject();
  *(v14 + v15) = sub_1001CF7A0();
  v16 = sub_1001CFDA0();
  sub_10010D1A8(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v28 = sub_1001D23A0();
  v29 = v17;
  v33._countAndFlagsBits = 58;
  v33._object = 0xE100000000000000;
  sub_1001D18B0(v33);
  v18 = v29;
  v19 = (v14 + qword_10022CE80);
  *v19 = v28;
  v19[1] = v18;
  *(v14 + *(*v14 + 160)) = a1;
  v20 = (v14 + *(*v14 + 152));
  v21 = a2[9];
  v20[8] = a2[8];
  v20[9] = v21;
  v20[10] = a2[10];
  v22 = a2[5];
  v20[4] = a2[4];
  v20[5] = v22;
  v23 = a2[7];
  v20[6] = a2[6];
  v20[7] = v23;
  v24 = a2[1];
  *v20 = *a2;
  v20[1] = v24;
  v25 = a2[3];
  v20[2] = a2[2];
  v20[3] = v25;
  (*(*(v16 - 8) + 32))(v14 + qword_10022CE88, a3, v16);
  sub_1000446FC(&v30, v14 + qword_10022CE90);
  return v14;
}

uint64_t sub_10010D120()
{

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10010D1A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10010D1F0(uint64_t a1)
{
  result = sub_1001D0E60();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_10010D304()
{
  v1[11] = v0;
  v2 = *v0;
  v1[12] = *v0;
  sub_1001CFDA0();
  v1[13] = swift_task_alloc();
  v3 = *(v2 + 88);
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v4 = *(v2 + 80);
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_10010D490, 0, 0);
}

uint64_t sub_10010D490(uint64_t a1)
{
  *(v1 + 160) = qword_10022CDF0;
  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running fetchServerDrivenConfig activity", v4, 2u);
  }

  v6 = *(v1 + 144);
  v5 = *(v1 + 152);
  v7 = *(v1 + 136);
  v16 = *(v1 + 128);
  v8 = *(v1 + 112);
  v9 = *(v1 + 120);
  v11 = *(v1 + 96);
  v10 = *(v1 + 104);
  v12 = *(v1 + 88);

  v13 = *(v11 + 96);
  *(v1 + 56) = v7;
  *(v1 + 64) = v8;
  *(v1 + 72) = v13;
  type metadata accessor for UpdateServerDrivenConfigurationRequest(0, v1 + 56);
  (*(v6 + 16))(v5, v12 + *(*v12 + 120), v7);
  (*(v9 + 16))(v16, v12 + *(*v12 + 128), v8);
  sub_1001CFD90();
  sub_100044698(v12 + *(*v12 + 136), v1 + 16);
  *(v1 + 168) = sub_10010DE40(v5, v16, v10, (v1 + 16));
  v14 = swift_task_alloc();
  *(v1 + 176) = v14;
  *v14 = v1;
  v14[1] = sub_10010D6A4;

  return sub_10010DEA8();
}

uint64_t sub_10010D6A4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10010D84C;
  }

  else
  {
    v2 = sub_10010D7B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10010D7B8()
{

  sub_10010D9E4(*(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10010D84C()
{
  swift_errorRetain();
  v1 = sub_1001D0E50();
  v2 = sub_1001D1DE0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "fetchServerDrivenConfig activity could not update, error=%@", v3, 0xCu);
    sub_100024B10(v4);
  }

  else
  {
  }

  sub_10010D9E4(*(v0 + 88));

  v6 = *(v0 + 8);

  return v6();
}

void sub_10010D9E4(uint64_t a1)
{
  oslog = sub_1001D0E50();
  v1 = sub_1001D1E00();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Finished fetchServerDrivenConfig activity", v2, 2u);
  }
}

uint64_t *sub_10010DA90()
{
  v1 = *v0;
  v2 = qword_10022CDF0;
  v3 = sub_1001D0E60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 128));
  sub_100011CF0((v0 + *(*v0 + 136)));
  return v0;
}

uint64_t sub_10010DBC0()
{
  sub_10010DA90();

  return swift_deallocClassInstance();
}

uint64_t sub_10010DC48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000130E0;

  return sub_10010D304();
}

uint64_t sub_10010DCD8(uint64_t a1)
{
  result = sub_1001D0E60();
  if (v2 <= 0x3F)
  {
    result = sub_1001CFDA0();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_10010DE40(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  sub_100110CF4(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_10010DEA8()
{
  v1[38] = v0;
  v1[39] = *v0;
  v2 = sub_1001D1380();
  v1[40] = v2;
  v1[41] = *(v2 - 8);
  v1[42] = swift_task_alloc();
  sub_1001CFB10();
  v1[43] = swift_task_alloc();
  v3 = sub_1001D02E0();
  v1[44] = v3;
  v1[45] = *(v3 - 8);
  v1[46] = swift_task_alloc();
  v4 = sub_1001CF780();
  v1[47] = v4;
  v1[48] = *(v4 - 8);
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();

  return _swift_task_switch(sub_10010E080, 0, 0);
}

uint64_t sub_10010E080()
{
  v79 = v0;
  v0[51] = qword_10022CE78;

  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[38];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v78 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000954E0(*(v3 + qword_10022CE80), *(v3 + qword_10022CE80 + 8), &v78);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s executing configbag request", v4, 0xCu);
    sub_100011CF0(v5);
  }

  v6 = v0[45];
  v7 = v0[46];
  v76 = v0[44];
  v8 = v0[38];
  v9 = v0[39];
  v10 = *(v8 + qword_10022CE90 + 24);
  v74 = *(v8 + qword_10022CE90 + 32);
  sub_100024DC8((v8 + qword_10022CE90), v10);
  v11 = *(*v8 + 152);
  v0[52] = v11;
  v12 = *(v9 + 88);
  v0[53] = v12;
  v0[5] = v12;
  v13 = *(v9 + 104);
  v0[54] = v13;
  v0[6] = v13;
  v14 = sub_10003B47C(v0 + 2);
  v15 = *(v12 - 8);
  v16 = *(v15 + 16);
  v0[55] = v16;
  v0[56] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v14, v8 + v11, v12);
  Configuration.environment(systemInfo:)(v0 + 2, v10, v74, v7);
  sub_100011CF0(v0 + 2);
  sub_1001D02D0();
  (*(v6 + 8))(v7, v76);
  sub_1001CF760();
  v17 = sub_1001CFD70();
  v19 = v18;
  if (qword_1002276A8 != -1)
  {
    swift_once();
  }

  sub_10003A37C(v0[40], qword_100242D78);
  v86._countAndFlagsBits = sub_1001D1320();
  v21 = v20;
  v81._countAndFlagsBits = v17;
  v81._object = v19;
  v86._object = v21;
  sub_1001CF770(v81, v86);

  v22 = (*(v13 + 88))(v12, v13);
  v24 = v23;
  v75 = v12;
  v77 = v13;
  if (qword_1002276B0 != -1)
  {
    swift_once();
  }

  v26 = v0[41];
  v25 = v0[42];
  v27 = v0[40];
  sub_10003A37C(v27, qword_100242D90);
  v87._countAndFlagsBits = sub_1001D1320();
  v29 = v28;
  v82._countAndFlagsBits = v22;
  v82._object = v24;
  v87._object = v29;
  sub_1001CF770(v82, v87);

  sub_1001D1330();
  v30 = sub_1001D1320();
  v32 = v31;
  v33 = *(v26 + 8);
  v33(v25, v27);
  v83._countAndFlagsBits = 0xD000000000000014;
  v83._object = 0x80000001001DE030;
  v88._countAndFlagsBits = v30;
  v88._object = v32;
  sub_1001CF770(v83, v88);

  v34 = (*(v77 + 80))(v75);
  if (v35)
  {
    v36 = v34;
    v37 = v35;
    if (qword_1002276E8 != -1)
    {
      swift_once();
    }

    sub_10003A37C(v0[40], qword_100242E38);
    v89._countAndFlagsBits = sub_1001D1320();
    v39 = v38;
    v84._countAndFlagsBits = v36;
    v84._object = v37;
    v89._object = v39;
    sub_1001CF770(v84, v89);
  }

  v40 = v0[42];
  v41 = v0[40];
  sub_1001D1360();
  v42 = sub_1001D1320();
  v44 = v43;
  v33(v40, v41);
  v85._object = 0x80000001001E5520;
  v85._countAndFlagsBits = 0xD000000000000010;
  v90._countAndFlagsBits = v42;
  v90._object = v44;
  sub_1001CF770(v85, v90);

  v45 = sub_1001D0E50();
  v46 = sub_1001D1DD0();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = v0[38];
    v48 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v48 = 136315394;
    *(v48 + 4) = sub_1000954E0(*(v47 + qword_10022CE80), *(v47 + qword_10022CE80 + 8), &v78);
    *(v48 + 12) = 2080;
    swift_beginAccess();
    sub_1001112FC(&qword_10022CDE0, &type metadata accessor for URLRequest, &protocol conformance descriptor for URLRequest);
    v49 = sub_1001D23A0();
    v51 = sub_1000954E0(v49, v50, &v78);

    *(v48 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v45, v46, "%s request ready, request=%s", v48, 0x16u);
    swift_arrayDestroy();
  }

  v52 = [objc_opt_self() ephemeralSessionConfiguration];
  v0[57] = v52;
  [v52 setUsesClassicLoadingMode:0];
  v53 = [objc_opt_self() sessionWithConfiguration:v52];
  v0[58] = v53;

  v54 = v53;
  v55 = sub_1001D0E50();
  v56 = sub_1001D1DD0();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = v0[38];
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v78 = v60;
    *v58 = 136315394;
    *(v58 + 4) = sub_1000954E0(*(v57 + qword_10022CE80), *(v57 + qword_10022CE80 + 8), &v78);
    *(v58 + 12) = 2112;
    *(v58 + 14) = v54;
    *v59 = v54;
    v61 = v54;
    _os_log_impl(&_mh_execute_header, v55, v56, "%s session ready, session=%@", v58, 0x16u);
    sub_100024B10(v59);

    sub_100011CF0(v60);
  }

  v62 = sub_1001D0E50();
  v63 = sub_1001D1DD0();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = v0[38];
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v78 = v66;
    *v65 = 136315138;
    *(v65 + 4) = sub_1000954E0(*(v64 + qword_10022CE80), *(v64 + qword_10022CE80 + 8), &v78);
    _os_log_impl(&_mh_execute_header, v62, v63, "%s running session async", v65, 0xCu);
    sub_100011CF0(v66);
  }

  v67 = v0[49];
  v68 = v0[50];
  v69 = v0[47];
  v70 = v0[48];
  swift_beginAccess();
  (*(v70 + 16))(v67, v68, v69);
  v71 = swift_task_alloc();
  v0[59] = v71;
  *v71 = v0;
  v71[1] = sub_10010E9E4;
  v72 = v0[49];

  return NSURLSession.data(for:delegate:)(v72, 0);
}

uint64_t sub_10010E9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[60] = a1;
  v6[61] = a2;
  v6[62] = a3;
  v6[63] = v3;

  v7 = v5[49];
  v8 = v5[48];
  v9 = v5[47];
  v10 = *(v8 + 8);
  v11 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v3)
  {
    v6[72] = v10;
    v6[73] = v11;
    v10(v7, v9);
    v12 = sub_10010F7F8;
  }

  else
  {
    v6[64] = v10;
    v6[65] = v11;
    v10(v7, v9);
    v12 = sub_10010EB7C;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_10010EB7C()
{
  v83 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 496);
  v3 = *(v0 + 480);

  v4 = v2;
  sub_100012038(v3, v1);
  v5 = sub_1001D0E50();
  v6 = sub_1001D1DD0();

  sub_100011E48(v3, v1);
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 496);
  if (v7)
  {
    v10 = *(v0 + 480);
    v9 = *(v0 + 488);
    v11 = *(v0 + 304);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    *v12 = 136315650;
    *(v12 + 4) = sub_1000954E0(*(v11 + qword_10022CE80), *(v11 + qword_10022CE80 + 8), v82);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v8;
    *v13 = v8;
    *(v12 + 22) = 2080;
    sub_100012038(v10, v9);
    v14 = sub_1001CFB50();
    v16 = v15;
    sub_100011E48(v10, v9);
    v17 = sub_1000954E0(v14, v16, v82);

    *(v12 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s response returning, response=%@ data=%s", v12, 0x20u);
    sub_100024B10(v13);

    swift_arrayDestroy();
  }

  else
  {
  }

  v18 = *(v0 + 504);
  v20 = *(v0 + 424);
  v19 = *(v0 + 432);
  v21 = *(v0 + 312);
  v22 = *(v21 + 80);
  *(v0 + 528) = v22;
  v23 = *(v21 + 96);
  *(v0 + 536) = v23;
  *(v0 + 128) = v22;
  *(v0 + 136) = v20;
  *(v0 + 144) = v23;
  *(v0 + 152) = v19;
  type metadata accessor for UpdateServerDrivenConfigurationRequest.BagContainerModel(0, v0 + 128);
  swift_getWitnessTable();
  sub_1001CF790();
  if (v18)
  {
    v79 = v23;

    swift_errorRetain();
    v24 = sub_1001D0E50();
    v25 = sub_1001D1DE0();

    v26 = v22;
    if (os_log_type_enabled(v24, v25))
    {
      v27 = *(v0 + 304);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v82[0] = v30;
      *v28 = 136315394;
      *(v28 + 4) = sub_1000954E0(*(v27 + qword_10022CE80), *(v27 + qword_10022CE80 + 8), v82);
      *(v28 + 12) = 2112;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v31;
      *v29 = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s unable to decode json response data, error=%@", v28, 0x16u);
      sub_100024B10(v29);

      sub_100011CF0(v30);
    }

    v32 = *(v0 + 488);
    v33 = *(v0 + 496);
    v34 = *(v0 + 480);
    v35 = *(v0 + 456);
    v36 = *(v0 + 464);
    v38 = *(v0 + 424);
    v37 = *(v0 + 432);
    *(v0 + 160) = v26;
    *(v0 + 168) = v38;
    *(v0 + 176) = v79;
    *(v0 + 184) = v37;
    type metadata accessor for UpdateServerDrivenConfigurationRequest.Error(0, v0 + 160);
    swift_getWitnessTable();
    swift_allocError();
    *v39 = 1;
    swift_willThrow();

    v40 = v34;
    v41 = v32;
LABEL_15:
    sub_100011E48(v40, v41);
    v67 = *(v0 + 304);
    (*(v0 + 512))(*(v0 + 400), *(v0 + 376));
    sub_100110FC0(v67);

    v68 = *(v0 + 8);

    return v68();
  }

  v42 = *(v0 + 272);
  v43 = *(v0 + 280);

  v44 = sub_1001D0E50();
  v45 = sub_1001D1DD0();

  if (os_log_type_enabled(v44, v45))
  {
    v80 = v42;
    v46 = *(v0 + 304);
    v47 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    *v47 = 136315394;
    *(v47 + 4) = sub_1000954E0(*(v46 + qword_10022CE80), *(v46 + qword_10022CE80 + 8), v82);
    *(v47 + 12) = 2080;
    *(v0 + 288) = v80;
    *(v0 + 296) = v43;
    v48 = sub_1001D1820();
    v50 = sub_1000954E0(v48, v49, v82);

    *(v47 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v44, v45, "%s model decoded, model=%s", v47, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v51 = sub_1001CFB70();
  v53 = v52;

  *(v0 + 544) = v51;
  *(v0 + 552) = v53;

  if (v53 >> 60 == 15)
  {
    v54 = sub_1001D0E50();
    v55 = sub_1001D1DE0();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = *(v0 + 304);
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v82[0] = v58;
      *v57 = 136315138;
      *(v57 + 4) = sub_1000954E0(*(v56 + qword_10022CE80), *(v56 + qword_10022CE80 + 8), v82);
      _os_log_impl(&_mh_execute_header, v54, v55, "%s unable to decode base64 bag", v57, 0xCu);
      sub_100011CF0(v58);
    }

    v59 = *(v0 + 488);
    v60 = *(v0 + 496);
    v61 = *(v0 + 480);
    v63 = *(v0 + 456);
    v62 = *(v0 + 464);
    v65 = *(v0 + 424);
    v64 = *(v0 + 432);
    *(v0 + 192) = v22;
    *(v0 + 200) = v65;
    *(v0 + 208) = v23;
    *(v0 + 216) = v64;
    type metadata accessor for UpdateServerDrivenConfigurationRequest.Error(0, v0 + 192);
    swift_getWitnessTable();
    swift_allocError();
    *v66 = 2;
    swift_willThrow();

    v40 = v61;
    v41 = v59;
    goto LABEL_15;
  }

  sub_100089C38(v51, v53);
  v70 = sub_1001D0E50();
  v71 = sub_1001D1DD0();

  sub_10002683C(v51, v53);
  if (os_log_type_enabled(v70, v71))
  {
    v72 = *(v0 + 304);
    v73 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    *v73 = 136315394;
    *(v73 + 4) = sub_1000954E0(*(v72 + qword_10022CE80), *(v72 + qword_10022CE80 + 8), v82);
    *(v73 + 12) = 2080;
    sub_100012038(v51, v53);
    v74 = sub_1001CFB50();
    v76 = v75;
    sub_10002683C(v51, v53);
    v77 = sub_1000954E0(v74, v76, v82);

    *(v73 + 14) = v77;
    _os_log_impl(&_mh_execute_header, v70, v71, "%s base64 bag decoded, pushing update of utf8jsonBag=%s", v73, 0x16u);
    swift_arrayDestroy();
  }

  *(v0 + 560) = *(**(v0 + 304) + 160);
  v81 = (*(v23 + 8) + **(v23 + 8));
  v78 = swift_task_alloc();
  *(v0 + 568) = v78;
  *v78 = v0;
  v78[1] = sub_10010F574;

  return v81(v51, v53, v22, v23);
}

uint64_t sub_10010F574()
{

  return _swift_task_switch(sub_10010F670, 0, 0);
}

uint64_t sub_10010F670()
{
  v1 = *(v0 + 560);
  v18 = *(v0 + 544);
  v19 = *(v0 + 552);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v20 = *(v0 + 512);
  v15 = *(v0 + 480);
  v4 = *(v0 + 456);
  v13 = *(v0 + 496);
  v14 = *(v0 + 464);
  v5 = *(v0 + 440);
  v6 = *(v0 + 416);
  v7 = *(v0 + 400);
  v16 = *(v0 + 376);
  v17 = *(v0 + 488);
  v8 = *(v0 + 304);
  v12 = *(v0 + 424);
  *(v0 + 80) = v12;
  v9 = sub_10003B47C((v0 + 56));
  v5(v9, v8 + v6, v12);
  sub_10010FA78(v8 + v1, (v0 + 56), v3, v2);

  sub_10002683C(v18, v19);
  sub_100011E48(v15, v17);
  sub_100011CF0((v0 + 56));
  v20(v7, v16);
  sub_100110FC0(v8);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10010F7F8()
{
  v20 = v0;

  swift_errorRetain();
  v1 = sub_1001D0E50();
  v2 = sub_1001D1DE0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 304);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1000954E0(*(v3 + qword_10022CE80), *(v3 + qword_10022CE80 + 8), &v19);
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s response throwing, error=%@", v4, 0x16u);
    sub_100024B10(v5);

    sub_100011CF0(v6);
  }

  v9 = *(v0 + 456);
  v8 = *(v0 + 464);
  v11 = *(v0 + 424);
  v10 = *(v0 + 432);
  v12 = *(v0 + 312);
  v13 = *(v12 + 80);
  v14 = *(v12 + 96);
  *(v0 + 96) = v13;
  *(v0 + 104) = v11;
  *(v0 + 112) = v14;
  *(v0 + 120) = v10;
  type metadata accessor for UpdateServerDrivenConfigurationRequest.Error(0, v0 + 96);
  swift_getWitnessTable();
  swift_allocError();
  *v15 = 0;
  swift_willThrow();

  v16 = *(v0 + 304);
  (*(v0 + 576))(*(v0 + 400), *(v0 + 376));
  sub_100110FC0(v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10010FA78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v114 = a1;
  v115 = a3;
  v107 = a2;
  v5 = sub_1001D02E0();
  v108 = *(v5 - 8);
  v109 = v5;
  __chkstk_darwin(v5);
  v7 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v116 = *(v118 - 8);
  v8 = __chkstk_darwin(v118);
  v113 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v104 - v11;
  v13 = __chkstk_darwin(v10);
  v111 = &v104 - v14;
  v15 = __chkstk_darwin(v13);
  v110 = &v104 - v16;
  v17 = __chkstk_darwin(v15);
  v112 = &v104 - v18;
  __chkstk_darwin(v17);
  v20 = &v104 - v19;
  v21 = sub_1001D02F0();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1001D0E60();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 104))(v24, enum case for TC2LogCategory.updateServerDrivenConfiguration(_:), v21);
  sub_1001D08B0();
  (*(v22 + 8))(v24, v21);
  sub_1001D0170();
  sub_1001D1840();

  LODWORD(v24) = os_variant_has_internal_content();

  if (!v24)
  {
    return (*(v26 + 8))(v28, v25);
  }

  v117 = v28;
  v105 = v26;
  v106 = v25;
  v29 = sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  sub_1001D0420();
  v30 = COERCE_DOUBLE((*(a4 + 40))(v115, a4));
  v31 = v20;
  if ((v32 & 1) != 0 || (v53 = v30, v30 < 0.0) || v30 > 1.0)
  {
    v33 = sub_1001D0E50();
    v34 = sub_1001D1E00();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "With no spillover, deleted environment proposal", v35, 2u);
    }

    v115 = v29;

    v36 = v116;
    v37 = *(v116 + 2);
    v38 = v118;
    v37(v12, v31, v118);
    v39 = v113;
    v37(v113, v31, v38);
    v40 = sub_1001D0E50();
    v41 = sub_1001D1E00();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v119[0] = v114;
      *v42 = 136315394;
      LODWORD(v112) = v41;
      v43 = sub_1001D0570();
      v104 = v31;
      v45 = v44;
      v46 = *(v36 + 1);
      v46(v12, v38);
      v47 = sub_1000954E0(v43, v45, v119);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;
      v48 = sub_1001D0560();
      v50 = v49;
      v46(v39, v38);
      v51 = sub_1000954E0(v48, v50, v119);
      v31 = v104;

      *(v42 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v40, v112, "DefaultConfiguration deleted %s %s", v42, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v46 = *(v36 + 1);
      v46(v39, v38);
      v46(v12, v38);
    }

    v119[0] = 0;
    v119[1] = 0;
    sub_1001D0570();
    sub_1001D0560();
    sub_1001D1EF0();

    v46(v31, v38);
    return (*(v105 + 8))(v117, v106);
  }

  else
  {
    v54 = v30;
    v55 = v107[3];
    v56 = v107[4];
    sub_100024DC8(v107, v55);
    SystemInfoProtocol.uniqueDeviceIDPercentile.getter(v55, v56);
    v58 = v57;
    v60 = v108;
    v59 = v109;
    v61 = &enum case for TC2Environment.production(_:);
    if (v57 >= v53)
    {
      v61 = &enum case for TC2Environment.carry(_:);
    }

    (*(v108 + 104))(v7, *v61, v109);
    v62 = sub_1001D02B0();
    v64 = v63;
    (*(v60 + 8))(v7, v59);
    swift_bridgeObjectRetain_n();
    v65 = sub_1001D0E50();
    v66 = sub_1001D1E00();

    v67 = os_log_type_enabled(v65, v66);
    v104 = v31;
    v115 = v62;
    if (v67)
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v119[0] = v69;
      *v68 = 134218498;
      *(v68 + 4) = v58;
      *(v68 + 12) = 2048;
      *(v68 + 14) = v54;
      *(v68 + 22) = 2080;
      *(v68 + 24) = sub_1000954E0(v62, v64, v119);
      _os_log_impl(&_mh_execute_header, v65, v66, "With device_p=%f, spillover=%f, proposed environment=%s", v68, 0x20u);
      sub_100011CF0(v69);
    }

    v70 = v110;
    v71 = v112;
    sub_1001D0420();
    v72 = v116;
    v73 = *(v116 + 2);
    v74 = v118;
    v73(v70, v71, v118);
    v75 = v111;
    v73(v111, v71, v74);

    v76 = sub_1001D0E50();
    v77 = sub_1001D1E00();

    v78 = os_log_type_enabled(v76, v77);
    v114 = v64;
    if (v78)
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      LODWORD(v110) = v77;
      v81 = v70;
      v113 = v80;
      v119[0] = v80;
      *v79 = 136315650;
      v82 = sub_1001D0570();
      v84 = v83;
      v85 = *(v72 + 1);
      v85(v81, v118);
      v86 = sub_1000954E0(v82, v84, v119);

      *(v79 + 4) = v86;
      *(v79 + 12) = 2080;
      v87 = sub_1001D0560();
      v89 = v88;
      v116 = v85;
      v85(v75, v118);
      v90 = sub_1000954E0(v87, v89, v119);

      *(v79 + 14) = v90;
      *(v79 + 22) = 2080;
      v91 = sub_1000954E0(v115, v64, v119);

      *(v79 + 24) = v91;
      _os_log_impl(&_mh_execute_header, v76, v110, "DefaultConfiguration wrote %s %s = %s", v79, 0x20u);
      swift_arrayDestroy();
      v74 = v118;
    }

    else
    {

      v95 = *(v72 + 1);
      v95(v75, v74);
      v116 = v95;
      v95(v70, v74);
    }

    v92 = v104;
    v93 = v105;
    v94 = v106;
    v96 = v112;
    v97 = sub_1001D0570();
    v99 = v98;
    v121._countAndFlagsBits = sub_1001D0560();
    v101 = v100;
    v120._countAndFlagsBits = v97;
    v120._object = v99;
    v121._object = v101;
    sub_1001D1870(v120, v121);

    v102 = v96;
    v103 = v116;
    v116(v102, v74);
    v103(v92, v74);
    return (*(v93 + 8))(v117, v94);
  }
}

Swift::Int sub_1001105C8()
{
  sub_1001D2580();
  sub_100022968(v2, *v0);
  return sub_1001D25C0();
}

BOOL sub_100110608(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021CEC0;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  return v4 != 0;
}

uint64_t sub_100110650(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[1] = a3;
  v14[0] = a4;
  v14[1] = a5;
  v14[2] = a6;
  v14[3] = a7;
  type metadata accessor for UpdateServerDrivenConfigurationRequest.BagContainerModel.CodingKeys(255, v14);
  swift_getWitnessTable();
  v8 = sub_1001D2350();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  sub_100024DC8(a1, a1[3]);
  sub_1001D25F0();
  sub_1001D2300();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1001107C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  type metadata accessor for UpdateServerDrivenConfigurationRequest.BagContainerModel.CodingKeys(255, v13);
  swift_getWitnessTable();
  v7 = sub_1001D22A0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v13 - v9;
  v11 = sub_100024DC8(a1, a1[3]);
  sub_1001D25E0();
  if (!v5)
  {
    v11 = sub_1001D2250();
    (*(v8 + 8))(v10, v7);
  }

  sub_100011CF0(a1);
  return v11;
}

uint64_t sub_100110970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1001109E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_100110A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_100110AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

BOOL sub_100110B30@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100110608(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_100110B88@<W0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100110608(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100110BB4@<X0>(_BYTE *a1@<X8>)
{
  result = default argument 2 of NWAsyncConnection.Outbound.write(content:contentContext:isComplete:)();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100110BEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100110C40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100110C94@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1001107C0(a1, a2[2], a2[3], a2[4], a2[5]);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

char *sub_100110CF4(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1001D02F0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, enum case for TC2LogCategory.updateServerDrivenConfiguration(_:), v11);
  sub_1001D08B0();
  (*(v12 + 8))(v14, v11);
  v15 = qword_10022CE98;
  sub_1001CF7B0();
  swift_allocObject();
  *&v5[v15] = sub_1001CF7A0();
  v16 = sub_1001CFDA0();
  sub_1001112FC(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v21 = sub_1001D23A0();
  v22 = v17;
  v23._countAndFlagsBits = 58;
  v23._object = 0xE100000000000000;
  sub_1001D18B0(v23);
  v18 = v22;
  v19 = &v5[qword_10022CE80];
  *v19 = v21;
  v19[1] = v18;
  (*(*(*(v10 + 80) - 8) + 32))(&v5[*(*v5 + 160)], a1);
  (*(*(*(v10 + 88) - 8) + 32))(&v5[*(*v5 + 152)], a2);
  (*(*(v16 - 8) + 32))(&v5[qword_10022CE88], a3, v16);
  sub_1000446FC(a4, &v5[qword_10022CE90]);
  return v5;
}

void sub_100110FC0(uint64_t a1)
{

  oslog = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000954E0(*(a1 + qword_10022CE80), *(a1 + qword_10022CE80 + 8), &v6);
    _os_log_impl(&_mh_execute_header, oslog, v2, "%s finished configbag request", v3, 0xCu);
    sub_100011CF0(v4);
  }
}

uint64_t *sub_1001110D4()
{
  v1 = *v0;
  v2 = qword_10022CE78;
  v3 = sub_1001D0E60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = qword_10022CE88;
  v5 = sub_1001CFDA0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_100011CF0((v0 + qword_10022CE90));

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 152));
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 160));
  return v0;
}

uint64_t sub_10011125C()
{
  sub_1001110D4();

  return swift_deallocClassInstance();
}

uint64_t sub_1001112FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100111344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100111428(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001D0E60();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001114A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001D0E60();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for BiomeReporter(uint64_t a1)
{
  result = qword_10022D0F8;
  if (!qword_10022D0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100111564(uint64_t a1)
{
  result = sub_1001D0E60();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1001115D0(uint64_t a1)
{
  sub_1001D0C90();
  sub_100111668();
  result = sub_1001D0CA0();
  if (!v1)
  {
    sub_100024DC8(v3, v3[3]);
    sub_1001D0D80();
    return sub_100011CF0(v3);
  }

  return result;
}

unint64_t sub_100111668()
{
  result = qword_10022D130;
  if (!qword_10022D130)
  {
    sub_1001D0C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022D130);
  }

  return result;
}

uint64_t sub_1001116C0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return _swift_task_switch(sub_10011170C, 0, 0);
}

uint64_t sub_10011170C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v6 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v6;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_10011181C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0x4464726177726F66, 0xEF293A5F28617461, sub_100113D50, v3, &type metadata for () + 8);
}

uint64_t sub_10011181C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100111938;
  }

  else
  {

    v2 = sub_100013F2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100111938()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10011199C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v75 = a3;
  v76 = a4;
  v77 = a1;
  v5 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v72 = &v70 - v7;
  v8 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  __chkstk_darwin(v8 - 8);
  v10 = &v70 - v9;
  v11 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
  v73 = *(v11 - 8);
  v74 = v11;
  __chkstk_darwin(v11);
  v13 = (&v70 - v12);
  v14 = type metadata accessor for IncomingUserDataReader.State(0);
  __chkstk_darwin(v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100011AC0(&qword_10022D2E8, &qword_1001DE490);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v70 - v21;
  v23 = (a2 + OBJC_IVAR____TtC20privatecloudcomputed22IncomingUserDataReader_stateLock);
  os_unfair_lock_lock(v23);
  v24 = *(sub_100011AC0(&qword_10022D1F0, &qword_1001E15C0) + 28);
  v78 = v23;
  v25 = v23 + v24;
  sub_100113C90(v23 + v24, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
LABEL_26:
      result = sub_1001D2180();
      __break(1u);
      return result;
    }

    v42 = *v16;
    v43 = *(sub_100011AC0(&qword_10022D2F0, &qword_1001DE498) + 48);
    v6[2](v22, v77, v5);
    *&v22[v43] = v42;
    v41 = type metadata accessor for IncomingUserDataReader.ForwardDataAction(0);
    goto LABEL_16;
  }

  v71 = v5;
  if (EnumCaseMultiPayload)
  {
    v70 = v6;
    if (v16[8])
    {
      goto LABEL_26;
    }

    v44 = *v16;
    v45 = sub_100011AC0(&qword_10022D2D8, &unk_1001DE470);
    v46 = *(v45 + 64);
    v79 = v44;
    sub_100113D7C(&v16[v46], v10);
    if (v70[6](v10, 1, v5) != 1)
    {
      goto LABEL_26;
    }

    sub_100113CF4(v25);
    v47 = *(v44 + 24);
    v48 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(v44 + 16) < v48 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000F79D8(isUniquelyReferenced_nonNull_native, v48, 0);
      v44 = v79;
    }

    sub_1000F815C((v44 + 16), v44 + 40, v75, v76);
    v50 = *(v44 + 24);
    v51 = *(v45 + 64);
    *v25 = v44;
    sub_100011F00(v10, &qword_10022D298, &qword_1001DE530);
    *(v25 + 8) = 0;
    if (v50 == 4)
    {
      v6 = v70;
      v5 = v71;
      v70[2]((v25 + v51), v77, v71);
      (v6[7])(v25 + v51, 0, 1, v5);
      swift_storeEnumTagMultiPayload();
      v41 = type metadata accessor for IncomingUserDataReader.ForwardDataAction(0);
      (*(*(v41 - 8) + 56))(v22, 1, 1, v41);
      goto LABEL_17;
    }

    v6 = v70;
    v5 = v71;
    (v70[7])(v25 + v51, 1, 1, v71);
    swift_storeEnumTagMultiPayload();
    v6[2](v22, v77, v5);
    v41 = type metadata accessor for IncomingUserDataReader.ForwardDataAction(0);
LABEL_16:
    swift_storeEnumTagMultiPayload();
    (*(*(v41 - 8) + 56))(v22, 0, 1, v41);
    goto LABEL_17;
  }

  v27 = v6;
  sub_100113CF4(v25);
  v28 = *v16;
  v29 = sub_100011AC0(&qword_10022D2E0, &qword_1001DE480);
  v30 = *(v73 + 32);
  v31 = &v16[*(v29 + 48)];
  v70 = v13;
  v32 = v74;
  v30(v13, v31, v74);
  if (*(v28 + 24))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v33 = *(sub_100011AC0(&qword_10022D2D8, &unk_1001DE470) + 64);
  *v25 = v28;
  *(v25 + 8) = 0;
  v6 = v27;
  v34 = v27[7];
  v5 = v71;
  (v34)(v25 + v33, 1, 1, v71);
  swift_storeEnumTagMultiPayload();
  v35 = sub_100011AC0(&qword_10022D2F8, &qword_1001DE4A0);
  v36 = v32;
  v37 = &v22[*(v35 + 48)];
  v38 = *(v35 + 64);
  v13 = v70;
  v30(v22, v70, v36);
  v40 = v75;
  v39 = v76;
  *v37 = v75;
  *(v37 + 1) = v39;
  v6[2](&v22[v38], v77, v5);
  v41 = type metadata accessor for IncomingUserDataReader.ForwardDataAction(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v41 - 8) + 56))(v22, 0, 1, v41);
  sub_100012038(v40, v39);
LABEL_17:
  os_unfair_lock_unlock(v78);
  sub_10001208C(v22, v20, &qword_10022D2E8, &qword_1001DE490);
  type metadata accessor for IncomingUserDataReader.ForwardDataAction(0);
  if ((*(*(v41 - 8) + 48))(v20, 1, v41) != 1)
  {
    v52 = swift_getEnumCaseMultiPayload();
    if (v52)
    {
      if (v52 == 1)
      {
        v53 = v5;
        v54 = *&v20[*(sub_100011AC0(&qword_10022D2F0, &qword_1001DE498) + 48)];
        v55 = v72;
        v6[4](v72, v20, v53);
        v79 = v54;
        sub_1001D1A90();
        (v6[1])(v55, v53);
      }

      else
      {
        v68 = v72;
        v6[4](v72, v20, v5);
        sub_1001D1AA0();
        (v6[1])(v68, v5);
      }
    }

    else
    {
      v56 = sub_100011AC0(&qword_10022D2F8, &qword_1001DE4A0);
      v57 = &v20[*(v56 + 48)];
      v58 = *v57;
      v59 = v57[1];
      v60 = v5;
      v61 = *(v56 + 64);
      v62 = v13;
      v64 = v73;
      v63 = v74;
      v65 = v62;
      (*(v73 + 32))();
      v66 = &v20[v61];
      v67 = v72;
      v6[4](v72, v66, v60);
      v79 = v58;
      v80 = v59;
      sub_100089C38(v58, v59);
      sub_1001D1AA0();
      sub_1001D1AA0();
      sub_10002683C(v58, v59);
      (v6[1])(v67, v60);
      (*(v64 + 8))(v65, v63);
    }
  }

  return sub_100011F00(v22, &qword_10022D2E8, &qword_1001DE490);
}

uint64_t sub_100112354(uint64_t a1)
{
  v3 = sub_100011AC0(&qword_10022D2D0, &qword_1001E1670);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v20 - v8;
  __chkstk_darwin(v7);
  v11 = v20 - v10;
  v12 = (v1 + OBJC_IVAR____TtC20privatecloudcomputed22IncomingUserDataReader_stateLock);
  os_unfair_lock_lock(v12);
  v13 = sub_100011AC0(&qword_10022D1F0, &qword_1001E15C0);
  sub_100112654(v12 + *(v13 + 28), a1, v11);
  os_unfair_lock_unlock(v12);
  if (a1)
  {
    sub_10001208C(v11, v9, &qword_10022D2D0, &qword_1001E1670);
    v14 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v9, 1, v14) == 1)
    {
      sub_100011F00(v11, &qword_10022D2D0, &qword_1001E1670);
      v16 = v9;
      return sub_100011F00(v16, &qword_10022D2D0, &qword_1001E1670);
    }

    *&v20[0] = a1;
    swift_errorRetain();
    sub_1001D1A90();
    sub_100011F00(v11, &qword_10022D2D0, &qword_1001E1670);
    return (*(v15 + 8))(v9, v14);
  }

  else
  {
    sub_10001208C(v11, v6, &qword_10022D2D0, &qword_1001E1670);
    v17 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v6, 1, v17) == 1)
    {
      sub_100011F00(v11, &qword_10022D2D0, &qword_1001E1670);
      v16 = v6;
      return sub_100011F00(v16, &qword_10022D2D0, &qword_1001E1670);
    }

    v20[0] = xmmword_1001D6800;
    sub_1001D1AA0();
    sub_100011F00(v11, &qword_10022D2D0, &qword_1001E1670);
    return (*(v18 + 8))(v6, v17);
  }
}

uint64_t sub_100112654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v30 = a2;
  v6 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v10 = type metadata accessor for IncomingUserDataReader.State(0);
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100113C90(a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_100113CF4(v12);
      return (*(v7 + 56))(a3, 1, 1, v6);
    }

    goto LABEL_17;
  }

  v28 = a3;
  v29 = v3;
  if (!EnumCaseMultiPayload)
  {
    sub_100113CF4(a1);
    v14 = *v12;
    v15 = sub_100011AC0(&qword_10022D2E0, &qword_1001DE480);
    v16 = *(v7 + 32);
    v16(v9, v12 + *(v15 + 48), v6);
    v12 = *(v14 + 24);

    if (!v12)
    {
      if (v30)
      {
        *a1 = v30;
      }

      swift_storeEnumTagMultiPayload();
      v25 = v28;
      v16(v28, v9, v6);
      (*(v7 + 56))(v25, 0, 1, v6);
      return swift_errorRetain();
    }

    __break(1u);
    goto LABEL_16;
  }

  v27 = *v12;
  v18 = *(v12 + 8);
  v19 = sub_100011AC0(&qword_10022D2D8, &unk_1001DE470);
  v16 = *(v19 + 64);
  if (v18)
  {
LABEL_16:
    sub_100011F00(v16 + v12, &qword_10022D298, &qword_1001DE530);

    goto LABEL_17;
  }

  v20 = v19;
  v21 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v16 + v12, 1, v21) != 1)
  {
LABEL_17:
    result = sub_1001D2180();
    __break(1u);
    return result;
  }

  sub_100113CF4(a1);
  v23 = v30;
  if (v30)
  {
    swift_errorRetain();

    *a1 = v23;
  }

  else
  {
    v24 = *(v20 + 64);
    *a1 = v27;
    *(a1 + 8) = 1;
    (*(v22 + 56))(a1 + v24, 1, 1, v21);
  }

  swift_storeEnumTagMultiPayload();
  return (*(v7 + 56))(v28, 1, 1, v6);
}

uint64_t sub_100112A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  v5 = __chkstk_darwin(v4 - 8);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v39 - v7;
  v9 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
  v41 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  v15 = sub_100011AC0(&qword_10022D300, &qword_1001DE4A8);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v39 - v19;
  v21 = (a2 + OBJC_IVAR____TtC20privatecloudcomputed22IncomingUserDataReader_stateLock);
  os_unfair_lock_lock(v21);
  v22 = sub_100011AC0(&qword_10022D1F0, &qword_1001E15C0);
  sub_100112F78(v21 + *(v22 + 28), a1, v20);
  os_unfair_lock_unlock(v21);
  sub_10001208C(v20, v18, &qword_10022D300, &qword_1001DE4A8);
  Action = type metadata accessor for IncomingUserDataReader.NextAction(0);
  if ((*(*(Action - 8) + 48))(v18, 1, Action) == 1)
  {
    goto LABEL_4;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *&v18[*(sub_100011AC0(&qword_10022D308, &qword_1001DE4B0) + 48)];
    v25 = v41;
    (*(v41 + 32))(v12, v18, v9);
    v42 = v24;
    sub_1001D1A90();
    (*(v25 + 8))(v12, v9);
LABEL_4:
    v26 = &qword_10022D300;
    v27 = &qword_1001DE4A8;
    v28 = v20;
    return sub_100011F00(v28, v26, v27);
  }

  v30 = sub_100011AC0(&qword_10022D310, &qword_1001DE4B8);
  v31 = &v18[*(v30 + 48)];
  v32 = *v31;
  v33 = v31[1];
  v34 = *(v30 + 64);
  v35 = v41;
  (*(v41 + 32))(v14, v18, v9);
  sub_100113D7C(&v18[v34], v8);
  v42 = v32;
  v43 = v33;
  sub_100089C38(v32, v33);
  sub_1001D1AA0();
  v36 = v40;
  sub_10001208C(v8, v40, &qword_10022D298, &qword_1001DE530);
  v37 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v36, 1, v37) != 1)
  {
    sub_1001D1AA0();
    sub_10002683C(v32, v33);
    sub_100011F00(v8, &qword_10022D298, &qword_1001DE530);
    (*(v35 + 8))(v14, v9);
    sub_100011F00(v20, &qword_10022D300, &qword_1001DE4A8);
    return (*(v38 + 8))(v36, v37);
  }

  sub_10002683C(v32, v33);
  sub_100011F00(v8, &qword_10022D298, &qword_1001DE530);
  (*(v35 + 8))(v14, v9);
  sub_100011F00(v20, &qword_10022D300, &qword_1001DE4A8);
  v28 = v36;
  v26 = &qword_10022D298;
  v27 = &qword_1001DE530;
  return sub_100011F00(v28, v26, v27);
}

uint64_t sub_100112F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  __chkstk_darwin(v7 - 8);
  v9 = &v63 - v8;
  v10 = type metadata accessor for IncomingUserDataReader.State(0);
  __chkstk_darwin(v10);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100113C90(a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v33 = sub_100011AC0(&qword_10022D310, &qword_1001DE4B8);
    v34 = *(v33 + 48);
    v35 = *(v33 + 64);
    v36 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
    (*(*(v36 - 8) + 16))(a3, a2, v36);
    *(a3 + v34) = xmmword_1001D6800;
    v37 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
    (*(*(v37 - 8) + 56))(a3 + v35, 1, 1, v37);
    Action = type metadata accessor for IncomingUserDataReader.NextAction(0);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_32;
    }

    v39 = *v12;
    v40 = *(sub_100011AC0(&qword_10022D308, &qword_1001DE4B0) + 48);
    v41 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
    (*(*(v41 - 8) + 16))(a3, a2, v41);
    *(a3 + v40) = v39;
    Action = type metadata accessor for IncomingUserDataReader.NextAction(0);
LABEL_16:
    swift_storeEnumTagMultiPayload();
    return (*(*(Action - 8) + 56))(a3, 0, 1, Action);
  }

  v65 = a2;
  v66 = v3;
  v14 = *v12;
  v15 = v12[8];
  v16 = sub_100011AC0(&qword_10022D2D8, &unk_1001DE470);
  v17 = *(v16 + 64);
  if ((v15 & 1) == 0)
  {
    sub_100113CF4(a1);
    v67 = v14;
    sub_100113D7C(&v12[v17], v9);
    if (v14[3] < 1)
    {
      sub_100011F00(v9, &qword_10022D298, &qword_1001DE530);
      v55 = *(sub_100011AC0(&qword_10022D2E0, &qword_1001DE480) + 48);
      *a1 = v14;
      v56 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
      (*(*(v56 - 8) + 16))(a1 + v55, v65, v56);
      swift_storeEnumTagMultiPayload();
      v57 = type metadata accessor for IncomingUserDataReader.NextAction(0);
      return (*(*(v57 - 8) + 56))(a3, 1, 1, v57);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100118F58();
      v14 = v67;
    }

    v43 = v14[4];
    v44 = v43 + 1;
    if (!__OFADD__(v43, 1))
    {
      v45 = &v14[2 * v43];
      v46 = v45[5];
      v47 = v45[6];
      v48 = v14[3];
      if (v44 >= v14[2])
      {
        v44 = 0;
      }

      v14[4] = v44;
      if (!__OFSUB__(v48, 1))
      {
        v14[3] = v48 - 1;
        v49 = *(v16 + 64);
        *a1 = v14;
        *(a1 + 8) = 0;
        v50 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
        (*(*(v50 - 8) + 56))(a1 + v49, 1, 1, v50);
        swift_storeEnumTagMultiPayload();
        v51 = sub_100011AC0(&qword_10022D310, &qword_1001DE4B8);
        v52 = (a3 + *(v51 + 48));
        v53 = *(v51 + 64);
        v54 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
        (*(*(v54 - 8) + 16))(a3, v65, v54);
        *v52 = v46;
        v52[1] = v47;
        sub_100113D7C(v9, a3 + v53);
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v18 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(&v12[v17], 1, v18) == 1)
  {
    sub_100113CF4(a1);
    v67 = v14;
    if (v14[3] < 1)
    {

      swift_storeEnumTagMultiPayload();
      v58 = sub_100011AC0(&qword_10022D310, &qword_1001DE4B8);
      v59 = *(v58 + 48);
      v60 = *(v58 + 64);
      v61 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
      (*(*(v61 - 8) + 16))(a3, v65, v61);
      *(a3 + v59) = xmmword_1001D6800;
      (*(v19 + 56))(a3 + v60, 1, 1, v18);
      goto LABEL_27;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100118F58();
      v14 = v67;
    }

    v20 = v14[4];
    v21 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      v22 = &v14[2 * v20];
      v23 = v22[5];
      v64 = v22[6];
      v24 = v14[3];
      if (v21 >= v14[2])
      {
        v21 = 0;
      }

      v14[4] = v21;
      if (!__OFSUB__(v24, 1))
      {
        v14[3] = v24 - 1;
        v25 = *(v16 + 64);
        *a1 = v14;
        *(a1 + 8) = 1;
        v26 = *(v19 + 56);
        v26(a1 + v25, 1, 1, v18);
        swift_storeEnumTagMultiPayload();
        v27 = sub_100011AC0(&qword_10022D310, &qword_1001DE4B8);
        v28 = (a3 + *(v27 + 48));
        v29 = v18;
        v30 = *(v27 + 64);
        v31 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
        (*(*(v31 - 8) + 16))(a3, v65, v31);
        v32 = v64;
        *v28 = v23;
        v28[1] = v32;
        v26(a3 + v30, 1, 1, v29);
LABEL_27:
        v62 = type metadata accessor for IncomingUserDataReader.NextAction(0);
        swift_storeEnumTagMultiPayload();
        return (*(*(v62 - 8) + 56))(a3, 0, 1, v62);
      }

      goto LABEL_31;
    }

    goto LABEL_29;
  }

LABEL_32:
  result = sub_1001D2180();
  __break(1u);
  return result;
}

uint64_t sub_1001137D4()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed22IncomingUserDataReader_stateLock;
  v2 = sub_100011AC0(&qword_10022D1F0, &qword_1001E15C0);
  sub_100113CF4(v1 + *(v2 + 28));

  return swift_deallocClassInstance();
}

void sub_100113884(uint64_t a1)
{
  sub_100113914(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100113914(uint64_t a1)
{
  if (!qword_10022D170)
  {
    type metadata accessor for IncomingUserDataReader.State(255);
    v1 = sub_1001CFF60();
    if (!v2)
    {
      atomic_store(v1, &qword_10022D170);
    }
  }
}

char *sub_10011398C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&qword_10022D1F0, &qword_1001E15C0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

void sub_1001139BC(uint64_t a1)
{
  sub_100113A44(319);
  if (v1 <= 0x3F)
  {
    sub_100113ACC(319);
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

void sub_100113A44(uint64_t a1)
{
  if (!qword_10022D278)
  {
    sub_100011DF4(&qword_10022D280, &qword_1001DE438);
    sub_100011DF4(&qword_10022D288, &unk_1001DE440);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10022D278);
    }
  }
}

void sub_100113ACC(uint64_t a1)
{
  if (!qword_10022D290)
  {
    sub_100011DF4(&qword_10022D280, &qword_1001DE438);
    sub_100011DF4(&qword_10022D298, &qword_1001DE530);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_10022D290);
    }
  }
}

unint64_t sub_100113B60()
{
  result = qword_10022D2A0;
  if (!qword_10022D2A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10022D2A0);
  }

  return result;
}

uint64_t sub_100113BC4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000130E0;

  return sub_1001116C0(a1, a2);
}

uint64_t sub_100113C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IncomingUserDataReader.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100113CF4(uint64_t a1)
{
  v2 = type metadata accessor for IncomingUserDataReader.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100113D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100113E0C(uint64_t a1)
{
  sub_100113E98(319);
  if (v1 <= 0x3F)
  {
    sub_100113F48(319, &unk_10022D3A0, &qword_10022D288, &unk_1001DE440);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100113E98(uint64_t a1)
{
  if (!qword_10022D398)
  {
    sub_100011DF4(&qword_10022D288, &unk_1001DE440);
    sub_100011DF4(qword_100229648, &unk_1001D6B30);
    sub_100011DF4(&qword_10022D298, &qword_1001DE530);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_10022D398);
    }
  }
}

void sub_100113F48(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100011DF4(a3, a4);
    sub_100011DF4(&qword_100227A58, &qword_1001D3600);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_100113FC8(uint64_t a1)
{
  sub_100114068(319);
  if (v1 <= 0x3F)
  {
    sub_100113F48(319, &qword_10022D458, &qword_100227B38, &qword_1001D36D0);
    if (v2 <= 0x3F)
    {
      sub_100114114(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100114068(uint64_t a1)
{
  if (!qword_10022D450)
  {
    sub_100011DF4(&qword_10022D288, &unk_1001DE440);
    sub_100011DF4(qword_100229648, &unk_1001D6B30);
    sub_100011DF4(&qword_100227B38, &qword_1001D36D0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_10022D450);
    }
  }
}

void sub_100114114(uint64_t a1)
{
  if (!qword_10022D460)
  {
    sub_100011DF4(&qword_100227A58, &qword_1001D3600);
    v1 = sub_1001D1AB0();
    if (!v2)
    {
      atomic_store(v1, &qword_10022D460);
    }
  }
}

uint64_t sub_10011418C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v45 = a2;
  v9 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v42 - v13;
  v15 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v46 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  v18 = type metadata accessor for NodeStreamController.StateMachine.State(0);
  __chkstk_darwin(v18);
  v20 = (&v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_1001D1C30() & 1) == 0)
  {
    v43 = a4;
    v44 = a3;
    sub_100115794(v5, v20);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v40 = v43;
        (*(v46 + 16))(v43, v44, v15);
        return (*(v46 + 56))(v40, 0, 1, v15);
      }

      v25 = *v20;
      v24 = v20[1];
      v26 = sub_100011AC0(&qword_10022D6A0, &qword_1001DE538);
      sub_100113D7C(v20 + *(v26 + 48), v12);
      v27 = v25 == a1 && v24 == v45;
      if (!v27 && (sub_1001D2470() & 1) == 0)
      {

        v41 = v43;
        (*(v46 + 16))(v43, v44, v15);
        (*(v46 + 56))(v41, 0, 1, v15);
        return sub_10011572C(v12);
      }

      v28 = v26;
      result = (*(v46 + 48))(v12, 1, v15);
      v30 = v43;
      v29 = v44;
      if (result == 1)
      {
        sub_100115BF0(v5, type metadata accessor for NodeStreamController.StateMachine.State);
        v31 = *(v28 + 48);
        *v5 = v25;
        *(v5 + 1) = v24;
        (*(v46 + 16))(&v5[v31], v29, v15);
        v32 = *(v46 + 56);
        v46 += 56;
        v32(&v5[v31], 0, 1, v15);
        swift_storeEnumTagMultiPayload();
        v32(v30, 1, 1, v15);
        return sub_10011572C(v12);
      }
    }

    else
    {
      v33 = *v20;
      v34 = v45;
      if (!*(*v20 + 16) || (v35 = sub_100006028(a1, v45), (v36 & 1) == 0))
      {
        v37 = *(v46 + 56);
        v37(v14, 1, 1, v15);
        sub_10011572C(v14);
        (*(v46 + 16))(v17, v44, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v33;
        sub_10001AE84(v17, a1, v34, isUniquelyReferenced_nonNull_native);
        v39 = v47;

        sub_100115BF0(v5, type metadata accessor for NodeStreamController.StateMachine.State);
        *v5 = v39;
        swift_storeEnumTagMultiPayload();
        v37(v43, 1, 1, v15);
      }

      (*(v46 + 16))(v14, *(v33 + 56) + *(v46 + 72) * v35, v15);
      (*(v46 + 56))(v14, 0, 1, v15);
      result = sub_10011572C(v14);
      __break(1u);
    }

    __break(1u);
    return result;
  }

  (*(v46 + 16))(a4, a3, v15);
  v21 = *(v46 + 56);

  return v21(a4, 0, 1, v15);
}

uint64_t sub_1001146D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = type metadata accessor for NodeStreamController.StateMachine.State(0);
  __chkstk_darwin(v14);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100115794(v4, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
LABEL_9:
      v23 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
      return (*(*(v23 - 8) + 56))(a3, 1, 1, v23);
    }

    v19 = *v16;
    v18 = v16[1];
    v20 = sub_100011AC0(&qword_10022D6A0, &qword_1001DE538);
    sub_100113D7C(v16 + *(v20 + 48), v13);
    if (v19 == a1 && v18 == a2)
    {
    }

    else
    {
      v22 = sub_1001D2470();

      if ((v22 & 1) == 0)
      {
        sub_10011572C(v13);
        goto LABEL_9;
      }
    }

    sub_100115BF0(v4, type metadata accessor for NodeStreamController.StateMachine.State);
    swift_storeEnumTagMultiPayload();
    return sub_100113D7C(v13, a3);
  }

  else
  {
    v28 = *v16;
    sub_1000E4ED4(a1, a2, v11);
    v25 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v11, 1, v25) == 1)
    {

      sub_10011572C(v11);
      return (*(v26 + 56))(a3, 1, 1, v25);
    }

    else
    {
      (*(v26 + 32))(a3, v11, v25);
      sub_100115BF0(v4, type metadata accessor for NodeStreamController.StateMachine.State);
      *v4 = v28;
      swift_storeEnumTagMultiPayload();
      return (*(v26 + 56))(a3, 0, 1, v25);
    }
  }
}

uint64_t sub_100114A1C()
{
  v1 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for NodeStreamController.StateMachine.State(0);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v0 + OBJC_IVAR____TtC20privatecloudcomputed20NodeStreamController_stateLock);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed20NodeStreamController_stateLock));
  v8 = *(sub_100011AC0(&qword_10022D550, &qword_1001DE508) + 28);
  sub_100115794(v7 + v8, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
LABEL_7:
      os_unfair_lock_unlock(v7);
      goto LABEL_8;
    }

    v10 = sub_100011AC0(&qword_10022D6A0, &qword_1001DE538);
    sub_100113D7C(&v6[*(v10 + 48)], v3);
    v11 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
    v12 = (*(*(v11 - 8) + 48))(v3, 1, v11);
    sub_10011572C(v3);
    os_unfair_lock_unlock(v7);
    if (v12 != 1)
    {
LABEL_6:
      __break(1u);
      goto LABEL_7;
    }
  }

  else
  {
    v13 = *(*v6 + 16);

    os_unfair_lock_unlock(v7);
    if (v13)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  sub_100115BF0(v7 + v8, type metadata accessor for NodeStreamController.StateMachine);
  return v0;
}

uint64_t sub_100114C0C()
{
  sub_100114A1C();

  return swift_deallocClassInstance();
}

void sub_100114C8C(uint64_t a1)
{
  sub_100114D1C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100114D1C(uint64_t a1)
{
  if (!qword_10022D4D0)
  {
    type metadata accessor for NodeStreamController.StateMachine(255);
    v1 = sub_1001CFF60();
    if (!v2)
    {
      atomic_store(v1, &qword_10022D4D0);
    }
  }
}

char *sub_100114D94()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&qword_10022D550, &qword_1001DE508);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100114DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeStreamController.StateMachine.State(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100114E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeStreamController.StateMachine.State(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100114EE8(uint64_t a1)
{
  result = type metadata accessor for NodeStreamController.StateMachine.State(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100114F54(uint64_t a1)
{
  sub_100114FC8(319);
  if (v1 <= 0x3F)
  {
    sub_10011503C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100114FC8(uint64_t a1)
{
  if (!qword_10022D668)
  {
    sub_100011DF4(&qword_100227B38, &qword_1001D36D0);
    v1 = sub_1001D1720();
    if (!v2)
    {
      atomic_store(v1, &qword_10022D668);
    }
  }
}

void sub_10011503C(uint64_t a1)
{
  if (!qword_10022D670)
  {
    sub_100011DF4(&qword_10022D298, &qword_1001DE530);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10022D670);
    }
  }
}

uint64_t sub_1001150B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1001150D8, 0, 0);
}

uint64_t sub_1001150D8()
{
  v1 = *(v0 + 40);
  v6 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1001151E4;
  v4 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD00000000000001BLL, 0x80000001001E5820, sub_100115B8C, v2, &type metadata for () + 8);
}

uint64_t sub_1001151E4()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100111938, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100115320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v19 - v12;
  v14 = (a2 + OBJC_IVAR____TtC20privatecloudcomputed20NodeStreamController_stateLock);
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC20privatecloudcomputed20NodeStreamController_stateLock));
  sub_100011AC0(&qword_10022D550, &qword_1001DE508);
  sub_10011418C(a3, a4, a1, v13);
  os_unfair_lock_unlock(v14);
  sub_1001156BC(v13, v11);
  v15 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v11, 1, v15) == 1)
  {
    sub_10011572C(v13);
    return sub_10011572C(v11);
  }

  else
  {
    sub_1001D1AC0();
    sub_100115B98();
    v18 = swift_allocError();
    sub_1001D16E0();
    v19[1] = v18;
    sub_1001D1A90();
    sub_10011572C(v13);
    return (*(v16 + 8))(v11, v15);
  }
}

uint64_t sub_100115514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  v12 = (a1 + OBJC_IVAR____TtC20privatecloudcomputed20NodeStreamController_stateLock);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC20privatecloudcomputed20NodeStreamController_stateLock));
  sub_100011AC0(&qword_10022D550, &qword_1001DE508);
  sub_1001146D8(a2, a3, v11);
  os_unfair_lock_unlock(v12);
  sub_1001156BC(v11, v9);
  v13 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_10011572C(v11);
    return sub_10011572C(v9);
  }

  else
  {
    sub_1001D1AA0();
    sub_10011572C(v11);
    return (*(v14 + 8))(v9, v13);
  }
}

uint64_t sub_1001156BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011572C(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100115794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeStreamController.StateMachine.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001157F8(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - v6;
  v8 = sub_100011AC0(&qword_10022D298, &qword_1001DE530);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for NodeStreamController.StateMachine.State(0);
  __chkstk_darwin(v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v2 + OBJC_IVAR____TtC20privatecloudcomputed20NodeStreamController_stateLock);
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC20privatecloudcomputed20NodeStreamController_stateLock));
  v15 = (v14 + *(sub_100011AC0(&qword_10022D550, &qword_1001DE508) + 28));
  sub_100115794(v15, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v29 = *v13;
    v17 = v28;
    sub_1000E4ED4(v28, a2, v10);
    sub_100115BF0(v15, type metadata accessor for NodeStreamController.StateMachine.State);
    v18 = *(sub_100011AC0(&qword_10022D6A0, &qword_1001DE538) + 48);
    *v15 = v17;
    v15[1] = a2;
    sub_100113D7C(v10, v15 + v18);
    swift_storeEnumTagMultiPayload();
    v19 = v29;

    os_unfair_lock_unlock(v14);
    v20 = 1 << *(v19 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v13 = v21 & *(v19 + 64);
    v22 = (v20 + 63) >> 6;
    v28 = v5 + 16;

    for (i = 0; v13; EnumCaseMultiPayload = (*(v5 + 8))(v7, v4))
    {
      v24 = i;
LABEL_10:
      v25 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v5 + 16))(v7, *(v19 + 56) + *(v5 + 72) * (v25 | (v24 << 6)), v4);
      sub_1001D1AC0();
      sub_100115B98();
      v26 = swift_allocError();
      sub_1001D16E0();
      v29 = v26;
      sub_1001D1A90();
    }

    while (1)
    {
      v24 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v24 >= v22)
      {

        return;
      }

      v13 = *(v19 + 64 + 8 * v24);
      ++i;
      if (v13)
      {
        i = v24;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  if (EnumCaseMultiPayload == 1)
  {

    v27 = sub_100011AC0(&qword_10022D6A0, &qword_1001DE538);
    sub_10011572C(v13 + *(v27 + 48));
  }

  __break(1u);
}

unint64_t sub_100115B98()
{
  result = qword_1002295E0;
  if (!qword_1002295E0)
  {
    sub_1001D1AC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002295E0);
  }

  return result;
}

uint64_t sub_100115BF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_100115C50(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100115C64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100115CB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}