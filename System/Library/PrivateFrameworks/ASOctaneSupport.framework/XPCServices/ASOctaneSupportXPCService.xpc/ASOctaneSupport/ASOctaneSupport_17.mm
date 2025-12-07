uint64_t sub_100144524(uint64_t a1, uint64_t a2)
{
  sub_1001F6978();
  sub_10014437C(&qword_1002B2568, &type metadata accessor for SHA384, &protocol conformance descriptor for SHA384);
  return sub_1001F6838();
}

uint64_t sub_1001445F8(uint64_t a1, uint64_t a2)
{
  result = sub_1001F6058();
  if (!result || (result = sub_1001F6078(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1001F6068();
      sub_1001F6978();
      sub_10014437C(&qword_1002B2568, &type metadata accessor for SHA384, &protocol conformance descriptor for SHA384);
      return sub_1001F6838();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1001446D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_100143E78(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_10014472C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1001443C4(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

unint64_t sub_10014478C()
{
  result = qword_1002B6F60;
  if (!qword_1002B6F60)
  {
    sub_100019BC4(&qword_1002B6F58, &qword_10020FA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CheddarTransaction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD8)
  {
    if (a2 + 40 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 40) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 41;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x29;
  v5 = v6 - 41;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CheddarTransaction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 40 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 40) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD7)
  {
    v6 = ((a2 - 216) >> 8) + 1;
    *result = a2 + 40;
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
        JUMPOUT(0x100144944);
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
          *result = a2 + 40;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100144980()
{
  result = qword_1002B6F68;
  if (!qword_1002B6F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F68);
  }

  return result;
}

unint64_t sub_1001449D8()
{
  result = qword_1002B6F70;
  if (!qword_1002B6F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F70);
  }

  return result;
}

unint64_t sub_100144A30()
{
  result = qword_1002B6F78;
  if (!qword_1002B6F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F78);
  }

  return result;
}

void sub_100144AC0()
{
  *(v0 - 212) = 0;
  *(v0 - 72) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 160) = 0;
}

void sub_100144AF0()
{
  *(v0 - 72) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 160) = 0;
}

void sub_100144BC0()
{
  *(v0 - 192) = 0;
  *(v0 - 152) = 0;
  *(v0 - 168) = 0;
}

void sub_100144BD0(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void sub_100144C0C(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_100144C48@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

void sub_100144C74()
{
  v2 = *(v1 - 96) | ((*(v1 - 92) | (*(v1 - 90) << 16)) << 32);
  *v0 = *(v1 - 104);
  v0[1] = v2;
}

void sub_100144CE8(int a1@<W8>)
{
  *(v1 - 72) = a1;
  *(v1 - 184) = a1;
  *(v1 - 176) = a1;
}

uint64_t sub_100144D68@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;

  return sub_1001F7C78();
}

unint64_t sub_100144D8C()
{
  result = qword_1002B6F80;
  if (!qword_1002B6F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B6F80);
  }

  return result;
}

void sub_100144DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t *a9)
{
  v30 = sub_10013B560();
  v13 = 0;
  v14 = _swiftEmptyArrayStorage;
  v25 = a5;
  v27 = a5 >> 1;
  while (1)
  {
    if (v30 == v13)
    {
      swift_unknownObjectRelease();
      sub_10005E2F4(a7, a8);
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      sub_1001F7808();
    }

    else
    {
      if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }
    }

    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v27 < a6)
    {
      goto LABEL_24;
    }

    if (a6 < a4)
    {
      goto LABEL_25;
    }

    v15 = *a9;
    swift_unknownObjectRetain();

    sub_100145C18(a2, a3, a6, v25, a7, a8, v15);
    v17 = v16;

    swift_unknownObjectRelease();

    v18 = *(v17 + 16);
    v19 = v14[2];
    if (__OFADD__(v19, v18))
    {
      goto LABEL_26;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v19 + v18 > v14[3] >> 1)
    {
      sub_100032AF8();
      v14 = v20;
    }

    if (*(v17 + 16))
    {
      if ((v14[3] >> 1) - v14[2] < v18)
      {
        goto LABEL_28;
      }

      sub_1000183C4(&qword_1002ADC68, &qword_1002009B0);
      swift_arrayInitWithCopy();

      if (v18)
      {
        v21 = v14[2];
        v22 = __OFADD__(v21, v18);
        v23 = v21 + v18;
        if (v22)
        {
          goto LABEL_29;
        }

        v14[2] = v23;
      }
    }

    else
    {

      if (v18)
      {
        goto LABEL_27;
      }
    }

    ++v13;
  }

  __break(1u);
LABEL_23:
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

_OWORD *sub_100145028(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_10003708C(a1, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_1001E5BCC(v19, a2, isUniquelyReferenced_nonNull_native, v5, v6, v7, v8, v9, v16, *v2);
    *v2 = v17;
  }

  else
  {
    sub_10004BDE8(a1, &qword_1002B34A0, &qword_1002009E0);
    v11 = sub_1001110F0(a2);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v2;
      v15 = *(*v2 + 24);
      sub_1000183C4(&qword_1002B70E0, &qword_10021B450);
      sub_1001F7A98(v14, v15);
      sub_10003708C((*(v18 + 56) + 32 * v13), v19);
      sub_100098F08();
      sub_1001F7AB8();
      *v2 = v18;
    }

    else
    {
      memset(v19, 0, sizeof(v19));
    }

    return sub_10004BDE8(v19, &qword_1002B34A0, &qword_1002009E0);
  }

  return result;
}

uint64_t sub_100145170(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100103BD8(a1, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_1001E6490();
    result = sub_10005E2F4(a2, a3);
    *v3 = v7;
  }

  else
  {
    sub_10004BDE8(a1, &qword_1002B4130, &qword_10020CDC8);
    sub_1001EB37C(v8, a2);
    sub_10005E2F4(a2, a3);
    return sub_10004BDE8(v8, &qword_1002B4130, &qword_10020CDC8);
  }

  return result;
}

uint64_t sub_10014524C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000183C4(&qword_1002B70B0, &qword_1002198D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_1001F6028();
  sub_10001A278();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];

  sub_1001F6018();

  if (sub_10001C990(v6, 1, v7) == 1)
  {
    sub_10004BDE8(v6, &qword_1002B70B0, &qword_1002198D0);
    sub_1000B738C(0x6C727520646142, 0xE700000000000000, 6, &aBlock);
    v41 = aBlock;
    v42 = *v44;
    v14 = *&v44[16] | ((*&v44[20] | (v44[22] << 16)) << 32);
    type metadata accessor for HTTPResponseHead._Storage();
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    result = sub_1001479EC(v15, 21);
    v20 = _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v9 + 32))(v12, v6, v7);
    *&aBlock = sub_1001F6008();
    *(&aBlock + 1) = v21;
    v49 = 47;
    v50 = 0xE100000000000000;
    sub_10001C790();
    v22 = sub_1001F75B8();

    v23 = sub_1000C46A8(v22);
    v25 = v24;

    if (!v25)
    {
      v23 = sub_1001F6008();
      v25 = v26;
    }

    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v27 = sub_1001F6688();
    sub_100019C94(v27, qword_1002E6180);
    sub_1000593F4(a1, &aBlock);

    v28 = sub_1001F6668();
    v29 = sub_1001F7288();
    sub_1000402B8(a1);

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *&v42 = v9;
      v31 = v30;
      v40 = swift_slowAlloc();
      *&v41 = v12;
      *&aBlock = v40;
      *v31 = 136446466;
      v32 = HTTPMethod.rawValue.getter(*(v13 + 16), *(v13 + 24));
      v34 = sub_1000E4544(v32, v33, &aBlock);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2082;
      *(v31 + 14) = sub_1000E4544(v23, v25, &aBlock);
      _os_log_impl(&_mh_execute_header, v28, v29, "Request received: Method: %{public}s Endpoint: /%{public}s", v31, 0x16u);
      swift_arrayDestroy();
      v12 = v41;

      v9 = v42;
    }

    v35 = swift_allocObject();
    v35[2] = v23;
    v35[3] = v25;
    memcpy(v35 + 4, a1, 0x68uLL);
    sub_1000593F4(a1, &aBlock);
    v36 = sub_1001F6B48();
    v37 = swift_allocObject();
    *(v37 + 16) = sub_100146A3C;
    *(v37 + 24) = v35;
    *&v44[16] = sub_1000ACC74;
    *&v45 = v37;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *v44 = sub_100146934;
    *&v44[8] = &unk_10028D720;
    v38 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v38);

    if (qword_1002AC498 != -1)
    {
      swift_once();
    }

    sub_100145890(a1, &aBlock);

    (*(v9 + 8))(v12, v7);
    v18 = v45;
    v19 = *&v44[8];
    v14 = v46 | ((v47 | (v48 << 16)) << 32);
    v20 = *(&aBlock + 1);
    result = aBlock;
    v17 = v44[0];
  }

  *a2 = result;
  *(a2 + 8) = v20;
  *(a2 + 16) = v17;
  *(a2 + 24) = v19;
  *(a2 + 40) = v18;
  *(a2 + 56) = v14;
  *(a2 + 62) = BYTE6(v14);
  *(a2 + 60) = WORD2(v14);
  return result;
}

uint64_t sub_1001457FC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  sub_1000183C4(&qword_1002BCC90, &unk_10020FC30);
  sub_100146A98();
  *(v3 + 40) = sub_1001F69B8();
  type metadata accessor for Router.Node();
  *(v3 + 48) = sub_1001F69B8();
  *(v3 + 56) = _swiftEmptyArrayStorage;
  return v3;
}

uint64_t sub_100145890@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000183C4(&qword_1002ACE98, &qword_1001FF1A0);
  __chkstk_darwin(v4 - 8);
  v6 = v32 - v5;
  v7 = a1[4];

  sub_1001F6258();

  v8 = sub_1001F6288();
  if (sub_10001C990(v6, 1, v8) == 1)
  {
    sub_10004BDE8(v6, &qword_1002ACE98, &qword_1001FF1A0);
    v9 = _swiftEmptyArrayStorage;
  }

  else
  {
    v9 = sub_1001F61E8();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  v10 = sub_100146B84(v9, 0);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *(v7 + 16);
  v18 = *(v7 + 24);
  sub_10005E2E0(v17, v18);
  v19 = sub_1001F69B8();
  sub_100145C18(v10, v12, v14, v16, v17, v18, v19);
  v21 = v20;

  sub_10005E2F4(v17, v18);
  swift_unknownObjectRelease();
  sub_1000887FC(v21, &v42);

  if (v43)
  {
    v22 = v44;
    sub_100103BD8(&v42, v45);
    v23 = v46;
    v24 = v47;
    sub_10001AE68(v45, v46);
    v48 = a1[12];
    sub_1000593F4(a1, __dst);
    sub_10004BDE8(&v48, &qword_1002ACB78, &qword_1001FED30);
    memcpy(v40, a1, sizeof(v40));
    memcpy(__dst, a1, sizeof(__dst));
    v50 = v22;
    v41 = v22;
    sub_1000593F4(__dst, v33);
    sub_1000402B8(v40);
    (*(v24 + 24))(v33, __dst, v23, v24);
    sub_1000402B8(__dst);
    sub_100019CCC(v45);
    v25 = v36;
    v26 = v35;
    v27 = v37 | ((v38 | (v39 << 16)) << 32);
    result = v33[0];
    v29 = v33[1];
    v30 = v34;
  }

  else
  {
    sub_10004BDE8(&v42, &qword_1002B70D8, &unk_10020FC50);
    sub_1000B738C(0x6E756F6620746F4ELL, 0xE900000000000064, 6, __dst);
    v32[0] = __dst[0];
    v32[1] = __dst[1];
    v27 = LODWORD(__dst[2]) | ((WORD2(__dst[2]) | (BYTE6(__dst[2]) << 16)) << 32);
    type metadata accessor for HTTPResponseHead._Storage();
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    result = sub_1001479EC(v31, 25);
    v29 = _swiftEmptyArrayStorage;
  }

  *a2 = result;
  *(a2 + 8) = v29;
  *(a2 + 16) = v30;
  *(a2 + 24) = v26;
  *(a2 + 40) = v25;
  *(a2 + 56) = v27;
  *(a2 + 62) = BYTE6(v27);
  *(a2 + 60) = WORD2(v27);
  return result;
}

void sub_100145C18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v8 = a4 >> 1;
  if (a4 >> 1 == a3)
  {
    return;
  }

  v9 = v7;
  v11 = a6;
  v44 = a7;
  if (*(v9 + 32) == 1)
  {
    if (v8 <= a3)
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v37 = *(v9 + 16);
    v38 = *(v9 + 24);
    v16 = (a2 + 16 * a3);
    v18 = *v16;
    v19 = v16[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43[0] = a7;
    v21 = v19;
    v11 = a6;
    sub_1001E5CAC(v18, v21, v37, v38, isUniquelyReferenced_nonNull_native);
    v44 = a7;
  }

  else
  {
  }

  if (__OFSUB__(v8, a3))
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v8 - a3 == 1)
  {
    sub_100047940();
    swift_beginAccess();
    v22 = *(v9 + 40);

    sub_1001F11C0(v22, &v41);

    if (v42)
    {
      sub_100103BD8(&v41, v43);
      sub_1000183C4(&qword_1002ADC60, &unk_10020FC40);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1001FE9E0;
      sub_100026064(v43, v23 + 32);
      *(v23 + 72) = a7;
      sub_100019CCC(v43);
    }

    else
    {
      sub_10004BDE8(&v41, &qword_1002B4130, &qword_10020CDC8);
    }

    return;
  }

  v24 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    goto LABEL_23;
  }

  if (v24 < a3 || v24 >= v8)
  {
    goto LABEL_24;
  }

  v39 = a2;
  sub_100047940();
  swift_beginAccess();

  v26 = sub_1001F43D8();

  if (v26)
  {
    v27 = v8;
    v28 = a1;
    v29 = sub_100146C18(a3 + 1, v27, a1, v39, a3, a4);
    v30 = a5;
    sub_100145C18(v29, v31, v32, v33, a5, v11, a7);
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = a5;
    v28 = a1;
  }

  sub_100047940();
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_10005E2E0(v30, v11);

  sub_100144DE0(v34, v28, v39, a3, a4, a3 + 1, v30, v11, &v44);
  v36 = v35;

  sub_1001BA328(v36);
}

void sub_100145F48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v95 = a3;
  v11 = sub_1000183C4(&qword_1002ACE98, &qword_1001FF1A0);
  __chkstk_darwin(v11 - 8);
  v13 = v91 - v12;
  v14 = sub_1001F6288();
  sub_10001A278();
  v16 = v15;
  __chkstk_darwin(v17);
  v19 = v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v92 = v5;
    v20 = a1[3];
    v21 = a1[4];
    sub_10001AE68(a1, v20);
    (*(v21 + 8))(v20, v21);
    sub_1001F6258();

    if (sub_10001C990(v13, 1, v14) == 1)
    {
      sub_10004BDE8(v13, &qword_1002ACE98, &qword_1001FF1A0);
      v22 = a1[4];
      sub_10001AE68(a1, a1[3]);
      v23 = sub_100013EFC();
      v25 = v24(v23, v22);
      v27 = v26;
      sub_100146B30();
      swift_allocError();
      *v28 = v25;
      *(v28 + 8) = v27;
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0;
      swift_willThrow();
      return;
    }

    v93 = a1;
    (*(v16 + 32))(v19, v13, v14);
    v29 = sub_1001F61E8();
    if (v29[2])
    {
      v31 = v29[4];
      v30 = v29[5];

      v32 = v31 == 47 && v30 == 0xE100000000000000;
      v6 = v92;
      if (v32)
      {

LABEL_14:
        sub_1001F61E8();
        sub_100103BE0(0);
        v95 = v42;
        a4 = v43;
        a5 = v44;

        (*(v16 + 8))(v19, v14);
        goto LABEL_15;
      }

      v33 = sub_1001F7EA8();

      if (v33)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    v34 = sub_100146B84(&off_100278E10, 0);
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = sub_1001F61E8();
    v96 = v34;
    v97 = v36;
    v98 = v38;
    v99 = v40;
    v6 = v92;
    sub_100146DF0(v41);
    (*(v16 + 8))(v19, v14);
    v95 = v97;
    a4 = v98;
    a5 = v99;
LABEL_15:
    swift_unknownObjectRetain();
    a1 = v93;
  }

  if (a4 == a5 >> 1)
  {
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    sub_100146B30();
    swift_allocError();
    *v45 = 0u;
    *(v45 + 16) = 0u;
    *(v45 + 32) = 2;
    swift_willThrow();
LABEL_41:
    swift_unknownObjectRelease();
    return;
  }

  v46 = a5 >> 1;
  if (a4 >= (a5 >> 1))
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v93 = a1;
  v47 = (v95 + 16 * a4);
  v49 = *v47;
  v48 = v47[1];
  swift_unknownObjectRetain_n();

  swift_unknownObjectRelease();
  v50 = *v47;
  v51 = v47[1];
  v52 = v94;
  v53 = v50 == *(v94 + 16) && v51 == *(v94 + 24);
  if (!v53 && (sub_1001F7EA8() & 1) == 0 && (*(v52 + 32) & 1) == 0)
  {
    v89 = *(v52 + 16);
    v88 = *(v52 + 24);
    sub_100146B30();
    swift_allocError();
    *v90 = v89;
    *(v90 + 8) = v88;
    *(v90 + 16) = v49;
    *(v90 + 24) = v48;
    *(v90 + 32) = 1;
    swift_willThrow();

    goto LABEL_41;
  }

  if (__OFSUB__(v46, a4))
  {
    goto LABEL_44;
  }

  if (v46 - a4 == 1)
  {
    v54 = v93;
    v55 = v93[4];
    sub_10001AE68(v93, v93[3]);
    v56 = sub_100013EFC();
    v58 = v57(v56, v55);
    v60 = v59;
    sub_100026064(v54, &v96);
    swift_beginAccess();
    sub_100145170(&v96, v58, v60);
    swift_endAccess();
    goto LABEL_41;
  }

  if (a4 + 1 < v46)
  {
    v91[1] = a4 + 1;
    v61 = (v95 + 16 * (a4 + 1));
    v62 = *v61;
    v63 = v61[1];

    v64 = sub_100088678(v62, v63);
    v66 = v65;

    if (v66)
    {
      if (v64 == 58 && v66 == 0xE100000000000000)
      {
      }

      else
      {
        v68 = sub_1001F7EA8();

        if ((v68 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v80 = *v61;
      v79 = v61[1];

      sub_10005E758(1uLL, v80, v79);
      v81 = sub_1001F6BE8();
      v83 = v82;

      type metadata accessor for Router.Node();
      sub_1000DFBD8();
      swift_allocObject();
      sub_1001457FC(v81, v83, 1);
      swift_beginAccess();

      sub_1001F6F08();
      sub_1000375FC();
      sub_1001F6F98();
      swift_endAccess();
      v84 = sub_1001479C4();
      sub_100145F48(v93, v84, v85, v86, v87);
      swift_unknownObjectRelease();

      goto LABEL_41;
    }

LABEL_35:
    v92 = v6;
    sub_100047940();
    swift_beginAccess();

    v69 = sub_1001F43D8();

    if (v69 || (v70 = v61[1], v91[0] = *v61, v71 = v91[0], type metadata accessor for Router.Node(), sub_1000DFBD8(), swift_allocObject(), sub_100013EFC(), swift_bridgeObjectRetain_n(), v72 = sub_1001457FC(v71, v70, 0), v73 = v94, swift_beginAccess(), isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(), v100 = *(v73 + 48), sub_1001E647C(v72, v91[0], v70, isUniquelyReferenced_nonNull_native), *(v73 + 48) = v100, , swift_endAccess(), , , sub_1001F43D8(), sub_100013EFC(), , , &vars0 != 72))
    {
      v75 = sub_1001479C4();
      sub_100145F48(v93, v75, v76, v77, v78);
      swift_unknownObjectRelease();
    }

    goto LABEL_41;
  }

LABEL_45:
  __break(1u);
}

uint64_t sub_100146754(uint64_t a1)
{
  type metadata accessor for Router.Node();
  sub_1000DFBD8();
  swift_allocObject();
  result = sub_1001457FC(47, 0xE100000000000000, 0);
  qword_1002E60E8 = result;
  return result;
}

uint64_t sub_100146798()
{

  return v0;
}

uint64_t sub_1001467D0()
{
  sub_100146798();
  sub_1000DFBD8();

  return swift_deallocClassInstance();
}

uint64_t sub_100146800(uint64_t a1)
{
  sub_1000183C4(&qword_1002B70C8, &unk_100215A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001FEBE0;
  *(inited + 32) = 0x746E696F70646E65;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_1001F6B48();
  *(inited + 56) = 0x6973726556697061;
  *(inited + 64) = 0xEA00000000006E6FLL;
  sub_1001EADD8();
  v2 = sub_1001F6B48();

  *(inited + 72) = v2;
  sub_100146AEC();
  return sub_1001F69B8();
}

id sub_100146934(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_100146AEC();
    sub_1001F6988();
    sub_100013EFC();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1001469BC()
{

  if (*(v0 + 40) >= 2uLL)
  {
  }

  swift_unknownObjectRelease();

  if (*(v0 + 104))
  {
  }

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_100146A48()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100146A80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100146A98()
{
  result = qword_1002B70B8;
  if (!qword_1002B70B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B70B8);
  }

  return result;
}

unint64_t sub_100146AEC()
{
  result = qword_1002B70C0;
  if (!qword_1002B70C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002B70C0);
  }

  return result;
}

unint64_t sub_100146B30()
{
  result = qword_1002B70D0;
  if (!qword_1002B70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B70D0);
  }

  return result;
}

uint64_t sub_100146B84(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_100146BCC(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_100146C18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100146C94(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0 || (v5 = *v1, result = swift_isUniquelyReferenced_nonNull(), *v1 = v5, (result & 1) == 0))
  {
LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_100017AE0(v4 - v14, v2);
      if (v4 >= v14)
      {
        v15 = result;
        swift_arrayInitWithCopy();
        v5 = sub_100146B84(v15, v14);
        v17 = v16;
        v19 = v18;
        v21 = v20;
        result = swift_unknownObjectRelease();
        v1[1] = v17;
        v1[2] = v19;
        v1[3] = v21;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v1[1];
  sub_1001F7F38();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  if ((v8 + 16 * v6 + 16 * v7) != &v9[2 * v10 + 4])
  {

    goto LABEL_9;
  }

  v11 = v9[3];

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_13:
      *v1 = v5;
      return result;
    }

    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_100146DF0(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_1001471A8(v3);
  v5 = v1[2];
  v4 = v1[3];
  v6 = (v4 >> 1) - v5;
  if (__OFSUB__(v4 >> 1, v5))
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = v1[1] + 16 * v5 + 16 * v6;
  if ((v4 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_1001F7F38();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = v8[2];
  if (v7 != &v8[2 * v9 + 4])
  {

LABEL_7:
    v10 = v6;
    goto LABEL_9;
  }

  v11 = v8[3];

  v12 = (v11 >> 1) - v9;
  v13 = __OFADD__(v6, v12);
  v10 = v6 + v12;
  if (v13)
  {
LABEL_28:
    __break(1u);
    return;
  }

LABEL_9:
  v14 = v10 - v6;
  if (__OFSUB__(v10, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    if (v14 >= v3)
    {
      swift_arrayInitWithCopy();
      if (!v3)
      {
        goto LABEL_16;
      }

      if (!__OFADD__(v6, v3))
      {
        sub_1001472B0((v6 + v3));
        goto LABEL_16;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v3)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_16:
  if (v3 == v14)
  {

    sub_100147368(a1, v15);
  }

  else
  {
  }
}

uint64_t *sub_100146F68(uint64_t *result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = (v6 - v5);
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = &v14[-v13];
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v15;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 16 * a2;
  v32 = (v18 + 16 * a3);
  result = sub_10014779C(v7);
  if (result)
  {
    v19 = result;
    v29 = v4[2];
    v28 = a4;
    v20 = &v4[1][2 * v29];
    swift_arrayDestroy();
    sub_100033C80(v20, a2, v17);
    swift_arrayDestroy();
    v28(v18, a3);
    sub_100033C80(&v20[16 * a2 + 16 * v30], v13, v32);
    v21 = v29;
    swift_arrayDestroy();
    *(v19 + 16) = 0;

LABEL_15:

    swift_unknownObjectRelease();
    result = sub_100146B84(v9, v21);
    *v4 = result;
    v4[1] = v25;
    v4[2] = v26;
    v4[3] = v27;
    return result;
  }

  v21 = v4[2];
  v22 = v21 + a2;
  if (__OFADD__(v21, a2))
  {
    goto LABEL_21;
  }

  if (v22 < v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFSUB__(v22, v21))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  swift_arrayInitWithCopy();
  result = (a4)(&v17[16 * a2], a3);
  v23 = &v30[v22];
  if (__OFADD__(v22, v30))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = v4[3] >> 1;
  if (v24 < v23)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!__OFSUB__(v24, v23))
  {
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1001471A8(uint64_t result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = v1[1];
  sub_1001F7F38();
  swift_unknownObjectRetain();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = v7[2];
  if ((v6 + 16 * v3 + 16 * v4) != &v7[2 * v8 + 4])
  {

LABEL_7:
    v9 = v4;
    goto LABEL_9;
  }

  v10 = v7[3];

  v11 = (v10 >> 1) - v8;
  v12 = __OFADD__(v4, v11);
  v9 = v4 + v11;
  if (v12)
  {
LABEL_20:
    __break(1u);
    return result;
  }

LABEL_9:
  result = v4 + v5;
  if (__OFADD__(v4, v5))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v9 < result)
  {
    if (v9 + 0x4000000000000000 >= 0)
    {
      v13 = 2 * v9;
      if (v13 > result)
      {
        result = v13;
      }

      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_14:

  return sub_100146C94(result);
}

void *sub_1001472B0(void *result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  sub_1001F7F38();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v8 = result[2];
  v5 = __OFADD__(v8, v7);
  v9 = &v7[v8];
  if (v5)
  {
    goto LABEL_13;
  }

  result[2] = v9;

  v10 = &v7[v4];
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

void sub_100147368(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24) >> 1;
  v5 = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
    goto LABEL_33;
  }

  v6 = *(a1 + 16);
  v27 = v6;
  if (v6 != a2)
  {
    if (v6 <= a2)
    {
LABEL_34:
      __break(1u);
      return;
    }

    v7 = a2 + 1;
    v8 = *(a1 + 16 * a2 + 40);
    v29 = *(a1 + 16 * a2 + 32);

    while (2)
    {
      if (__OFADD__(v5, 1))
      {
LABEL_30:
        __break(1u);
      }

      else
      {
        v30 = sub_1001475C0(v5, v5 + 1, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
        v9 = sub_100147780();
        sub_100146F68(&v30, v5, 0, v9);

        v11 = *(v2 + 16);
        v10 = *(v2 + 24);
        v12 = (v10 >> 1) - v11;
        if (!__OFSUB__(v10 >> 1, v11))
        {
          v13 = *(v2 + 8);
          if ((v10 & 1) == 0)
          {
            v16 = *(v2 + 8);
LABEL_14:
            v21 = 0;
            v22 = 0;
            v23 = v16 + 16 * v5 + 16 * v11;
            v24 = a1;
            v25 = a1 + 16 * v7;
            while (1)
            {
              if (v5 + v22 >= v12)
              {
                v7 += v22;
                v5 += v22;
                goto LABEL_22;
              }

              v26 = (v23 + v21);
              *v26 = v29;
              v26[1] = v8;
              if (!(v7 - v27 + v22))
              {
                break;
              }

              if (v7 < 0)
              {
                __break(1u);
LABEL_29:
                __break(1u);
                goto LABEL_30;
              }

              if ((v7 + v22) >= *(v24 + 16))
              {
                goto LABEL_29;
              }

              v8 = *(v25 + v21 + 40);
              v29 = *(v25 + v21 + 32);

              v24 = a1;
              ++v22;
              v21 += 16;
            }

            v29 = 0;
            v8 = 0;
            v5 += v22 + 1;
            v7 = v27;
LABEL_22:
            sub_1001472B0(v5);
            if (v8)
            {
              continue;
            }

            goto LABEL_25;
          }

          sub_1001F7F38();
          swift_unknownObjectRetain();
          v14 = swift_dynamicCastClass();
          if (!v14)
          {
            swift_unknownObjectRelease();
            v14 = _swiftEmptyArrayStorage;
          }

          v15 = v14[2];
          if ((v13 + 16 * v11 + 16 * v12) != &v14[2 * v15 + 4])
          {
            v16 = v13;

            goto LABEL_14;
          }

          v17 = v5;
          v18 = v14[3];

          v19 = (v18 >> 1) - v15;
          v20 = __OFADD__(v12, v19);
          v12 += v19;
          if (!v20)
          {
            v16 = v13;
            v5 = v17;
            goto LABEL_14;
          }

          goto LABEL_32;
        }
      }

      break;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_25:
}

void *sub_1001475C0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_1001F7F38();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];
  v13 = a4 + 16 * a5 + 16 * v8;
  if (v13 == &v11[2 * v12 + 4])
  {
    v15 = v11[3];

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = _swiftEmptyArrayStorage;
    }

    v18 = v17[2];
    if (v13 == &v17[2 * v18 + 4])
    {
      v20 = v17[3];

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = _swiftEmptyArrayStorage;
  }

  v19 = v17[2];
  if (v13 == &v17[2 * v19 + 4])
  {
    v23 = v17[3];

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_100017AE0(v6, v25);
}

void *sub_10014779C(void *a1)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  if (!isUniquelyReferenced_nonNull)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = v1[1] + 16 * v6;
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1001F7F38();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  if ((v8 + 16 * v7) != &v9[2 * v10 + 4])
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = v9[3];

  v14 = (v12 >> 1) - v10;
  v15 = __OFADD__(v7, v14);
  v11 = v7 + v14;
  if (!v15)
  {
LABEL_10:
    if (v11 < a1)
    {
      return 0;
    }

    sub_1001F7F38();
    swift_unknownObjectRetain();
    a1 = swift_dynamicCastClass();
    if (!a1)
    {
      swift_unknownObjectRelease();
      a1 = _swiftEmptyArrayStorage;
    }

    v16 = (v8 - a1 - 32) / 16;
    isUniquelyReferenced_nonNull = v7 + v16;
    if (!__OFADD__(v7, v16))
    {
      v4 = a1[2];
      if (isUniquelyReferenced_nonNull >= v4)
      {
        return a1;
      }

LABEL_19:
      sub_1000C8530(isUniquelyReferenced_nonNull, v4, 0);
      return a1;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001478F4(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_100147910(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100147950(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_100147998(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1001479C4()
{
  v6 = *(v4 - 184);
  v7 = *(v4 - 152);

  return sub_100146C18(v6, v3, v2, v7, v1, v0);
}

uint64_t sub_1001479EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = 65537;
  return result;
}

uint64_t sub_100147AA8(int a1, const char *a2, void *a3)
{
  result = inet_pton(a1, a2, a3);
  if (result)
  {
    if (result == 1)
    {
      return result;
    }

    v4 = sub_1001F66A8();
  }

  else
  {
    v4 = 22;
  }

  sub_1000274C4();
  swift_allocError();
  *v5 = 0xD000000000000034;
  *(v5 + 8) = 0x80000001002291B0;
  *(v5 + 16) = v4;
  return swift_willThrow();
}

const char *sub_100147B3C(int a1, const void *a2, char *a3, socklen_t a4)
{
  v4 = inet_ntop(a1, a2, a3, a4);
  if (!v4)
  {
    v5 = sub_1001F66A8();
    sub_1000274C4();
    swift_allocError();
    *v6 = 0xD000000000000052;
    *(v6 + 8) = 0x80000001002291F0;
    *(v6 + 16) = v5;
    swift_willThrow();
  }

  return v4;
}

unint64_t sub_100147D3C()
{
  result = qword_1002B7140;
  if (!qword_1002B7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7140);
  }

  return result;
}

unint64_t sub_100147D94()
{
  result = qword_1002B7148;
  if (!qword_1002B7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7148);
  }

  return result;
}

unint64_t sub_100147DEC()
{
  result = qword_1002B7150;
  if (!qword_1002B7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7150);
  }

  return result;
}

unint64_t sub_100147E44()
{
  result = qword_1002B7158[0];
  if (!qword_1002B7158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002B7158);
  }

  return result;
}

uint64_t sub_100147EE0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100147F60(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 32) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return sub_10001C990((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1001480F8(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 32) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        return;
      case 2:
        *&a1[v11] = v17;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x10014834CLL);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if ((v8 & 0x80000000) != 0)
        {
          v21 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

          sub_100018460(v21, a2, v8, v6);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 1) = 0;
        }

        else
        {
          *(a1 + 1) = (a2 - 1);
        }
      }

      return;
  }
}

uint64_t sub_10014838C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001483C8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100148408(uint64_t result, int a2, int a3)
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

uint64_t sub_10014846C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736B6E696CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1001F7EA8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1635018093 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1001F7EA8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_100148574(char a1)
{
  result = 1635017060;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0x736B6E696CLL;
    }

    else
    {
      return 1635018093;
    }
  }

  return result;
}

void sub_1001485B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10001E850();
  v45 = v21;
  v22 = v20;
  v24 = v23;
  v44.val[0] = *(v25 + 16);
  v44.val[1] = v44.val[0];
  v42 = *&v44.val[0].f64[1];
  v43 = *&v44.val[0].f64[0];
  type metadata accessor for AppStoreConnectResponse.CodingKeys(255, *&v44.val[0].f64[0], *&v44.val[0].f64[1], v26);
  swift_getWitnessTable();
  v27 = sub_10014A33C();
  sub_10001A278();
  v29 = v28;
  sub_10001E844();
  __chkstk_darwin(v30);
  v32 = &v42 - v31;
  sub_10001AE68(v24, v24[3]);
  sub_1001F8198();
  v48 = 0;
  v33 = v47;
  v49 = v44;
  vst2q_f64(v33, v49);
  type metadata accessor for AppStoreConnectResponse.Item(255, v47);
  sub_1001F6FC8();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v34 = v45;
  sub_1001F7DC8();
  if (!v34)
  {
    v36 = *(v22 + 24);
    v47[0] = *(v22 + 8);
    v47[1] = v36;
    v38 = v42;
    v37 = v43;
    type metadata accessor for AppStoreConnectResponse.Links(0, v43, v42, v35);
    v39 = swift_getWitnessTable();
    sub_10014A2E0(v39);
    v47[0] = *(v22 + 40);
    type metadata accessor for AppStoreConnectResponse.Meta(0, v37, v38, v40);
    v41 = swift_getWitnessTable();
    sub_10014A2E0(v41);
  }

  (*(v29 + 8))(v32, v27);
  sub_10001E868();
}

uint64_t sub_100148838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10014846C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10014888C@<X0>(_BYTE *a1@<X8>)
{
  result = static NIOHTTPObjectAggregatorError.unexpectedMessageHead.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001488BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100148910(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_10014897C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_1001F7EA8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
    {

      return 2;
    }

    else
    {
      v8 = sub_1001F7EA8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_100148A8C(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 25705;
  }

  return 0x7475626972747461;
}

void sub_100148AD4()
{
  sub_10001E850();
  v14 = v0;
  v3 = v2;
  v5 = *(v4 + 40);
  v15 = *(v4 + 16);
  v12 = *(v4 + 24);
  v16 = v12;
  v13 = v5;
  v17 = v5;
  type metadata accessor for AppStoreConnectResponse.Item.CodingKeys(255, &v15);
  swift_getWitnessTable();
  v6 = sub_10014A33C();
  sub_10001A278();
  v8 = v7;
  sub_10001E844();
  __chkstk_darwin(v9);
  v11 = &v12 - v10;
  sub_10001AE68(v3, v3[3]);
  sub_1001F8198();
  LOBYTE(v15) = 0;
  sub_1001F7D88();
  if (!v1)
  {
    LOBYTE(v15) = 1;
    sub_1001F7D88();
    LOBYTE(v15) = 2;
    sub_1001F7DC8();
  }

  (*(v8 + 8))(v11, v6);
  sub_10001E868();
}

uint64_t sub_100148C98(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_10027C770;
  v7._object = a2;
  v4 = sub_1001F7BD8(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100148CF0(char a1)
{
  if (a1)
  {
    return 1954047342;
  }

  else
  {
    return 1718379891;
  }
}

void sub_100148D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10001E850();
  v38[2] = v24;
  v39 = v23;
  v38[0] = v25;
  v38[1] = v26;
  v28 = v27;
  type metadata accessor for AppStoreConnectResponse.Links.CodingKeys(255, v29, v30, v25);
  swift_getWitnessTable();
  sub_10014A31C();
  v31 = sub_1001F7DE8();
  sub_10001A278();
  v33 = v32;
  sub_10001E844();
  __chkstk_darwin(v34);
  v36 = v38 - v35;
  sub_10001AE68(v28, v28[3]);
  sub_10014A31C();
  sub_1001F8198();
  v37 = v39;
  sub_1001F7D88();
  if (!v37)
  {
    sub_1001F7D18();
  }

  (*(v33 + 8))(v36, v31);
  sub_10001E868();
}

uint64_t sub_100148E80(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x676E69676170 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1001F7EA8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_100148F08()
{
  sub_10001E850();
  v18 = v2;
  v19 = v1;
  v4 = v3;
  v20 = v5;
  v6 = sub_10014A328();
  type metadata accessor for AppStoreConnectResponse.Meta.CodingKeys(v6, v7, v8, v9);
  swift_getWitnessTable();
  sub_10014A31C();
  v10 = sub_1001F7DE8();
  sub_10001A278();
  v12 = v11;
  sub_10001E844();
  __chkstk_darwin(v13);
  v15 = &v17 - v14;
  sub_10001AE68(v0, v0[3]);
  sub_10014A31C();
  sub_1001F8198();
  v21 = v19;
  v22 = v20;
  type metadata accessor for AppStoreConnectResponse.Meta.Paging(0, v4, v18, v16);
  swift_getWitnessTable();
  sub_1001F7DC8();
  (*(v12 + 8))(v15, v10);
  sub_10001E868();
}

uint64_t sub_100149080(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61746F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1001F7EA8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100149148(char a1)
{
  if (a1)
  {
    return 0x74696D696CLL;
  }

  else
  {
    return 0x6C61746F74;
  }
}

void sub_100149170()
{
  sub_10001E850();
  v14 = v2;
  v15 = v1;
  v3 = sub_10014A328();
  type metadata accessor for AppStoreConnectResponse.Meta.Paging.CodingKeys(v3, v4, v5, v6);
  swift_getWitnessTable();
  v7 = sub_1001F7DE8();
  sub_10001A278();
  v9 = v8;
  sub_10001E844();
  __chkstk_darwin(v10);
  v12 = &v14 - v11;
  sub_10001AE68(v0, v0[3]);
  sub_1001F8198();
  v13 = v15;
  sub_1001F7DA8();
  if (!v13)
  {
    sub_1001F7DA8();
  }

  (*(v9 + 8))(v12, v7);
  sub_10001E868();
}

Swift::Int sub_100149310()
{
  sub_1001F8068();
  CloseMode.hash(into:)(v2, *v0);
  return sub_1001F80D8();
}

uint64_t sub_10014936C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10014897C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001493C8@<X0>(_BYTE *a1@<X8>)
{
  result = static NIOHTTPObjectAggregatorError.unexpectedMessageHead.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001493FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100149450(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100149528(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10014A30C(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return sub_10014A30C((*a1 | (v4 << 8)) - 3);
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

      return sub_10014A30C((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10014A30C((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_10014A30C(v8);
}

_BYTE *sub_1001495B0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x100149678);
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
          result = sub_10014A314(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1001496A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001496DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100149788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1001497FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_100149868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1001498D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_100149948@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100148C98(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100149980@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100148CF0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001499C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100148CEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100149A0C@<X0>(_BYTE *a1@<X8>)
{
  result = static NIOHTTPObjectAggregatorError.endingIgnoredMessage.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100149A3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100149A90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

Swift::Int sub_100149B2C()
{
  sub_1001F8068();
  ByteBufferFoundationError.hash(into:)();
  return sub_1001F80D8();
}

uint64_t sub_100149B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100148E80(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100149BD4@<X0>(_BYTE *a1@<X8>)
{
  result = static System.hasAsyncAwaitSupport.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100149C08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100149C5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

_BYTE *sub_100149D54(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100149DF0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100149E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100149E54(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return sub_10014A30C(*a1);
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_100149EDC()
{
  sub_1001F8068();
  NIOHTTPObjectAggregatorEvent.hash(into:)(v2, *v0);
  return sub_1001F80D8();
}

uint64_t sub_100149F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100149080(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100149F94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100149FE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_10014A0EC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10014A30C(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_10014A30C((*a1 | (v4 << 8)) - 2);
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

      return sub_10014A30C((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10014A30C((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_10014A30C(v8);
}

_BYTE *sub_10014A174(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10014A23CLL);
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
          result = sub_10014A314(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10014A2E0(uint64_t a1)
{

  return sub_1001F7DC8();
}

uint64_t sub_10014A33C()
{

  return sub_1001F7DE8();
}

void *sub_10014A35C()
{
  v1 = *(v0 + 128);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1000ADA68(0xD000000000000013, 0x80000001002292B0, 1819112552, 0xE400000000000000);
    v3 = *(v0 + 128);
    *(v0 + 128) = v2;
    *(v0 + 136) = v4;

    sub_10001F734(v3);
  }

  sub_10001F78C(v1);
  return v2;
}

void sub_10014A400(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F6508();
  sub_10001A278();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100023510();
  v10 = v9 - v8;
  v11 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  __chkstk_darwin(v11 - 8);
  *&v166 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v147 - v14;
  sub_1001F60C8();
  sub_10001A278();
  v164 = v17;
  v165 = v16;
  __chkstk_darwin(v16);
  sub_100023510();
  v163 = v19 - v18;
  v20 = sub_1001F10F8(0x444970756F7267, 0xE700000000000000, *(a1 + 96));
  if (!v21)
  {
    goto LABEL_21;
  }

  v22 = v20;
  v23 = v21;
  v160 = v10;
  v161 = v15;
  v24 = sub_1001EA8E8();
  v25 = sub_1001F10F8(7368801, 0xE300000000000000, v24);
  v27 = v26;

  if (!v27)
  {

LABEL_21:
    v42 = type metadata accessor for HTTPResponseHead._Storage();
    sub_100021728(v42);
    *&v44 = sub_10014B7C0();
    v45 = _swiftEmptyArrayStorage;
    v46 = 21;
    goto LABEL_22;
  }

  v28 = v168;
  sub_10001AE68((v168 + 48), *(v168 + 72));
  v29 = sub_1000795A8(v25, v27);
  v162 = sub_1000EE77C(v22, v23);
  if (v162)
  {
    v153 = v6;
    v154 = v4;
    v158 = v29;
    sub_10001AE68((v28 + 88), *(v28 + 112));
    sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
    v30 = swift_allocObject();
    v157 = xmmword_1001FE9E0;
    *(v30 + 16) = xmmword_1001FE9E0;
    *(v30 + 32) = v22;
    *(v30 + 40) = v23;

    v159 = v27;
    sub_10008B3C8();
    v32 = v31;
    swift_setDeallocating();
    sub_1001E56B4();
    if (sub_10013B560())
    {

      sub_1001C19A8();
      v155 = a2;
      v156 = v25;
      if ((v32 & 0xC000000000000001) != 0)
      {
        goto LABEL_69;
      }

      v33 = *(v32 + 32);
LABEL_7:
      v167 = v33;

      v34 = v162[7];
      v35 = sub_10013B560();

      for (i = 0; v35 != i; ++i)
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          v37 = sub_1001F7808();
        }

        else
        {
          if (i >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_68;
          }

          v37 = *(v34 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          v33 = sub_1001F7808();
          goto LABEL_7;
        }

        v38 = *(v37 + 80);
        v39 = *(v37 + 88);

        if (v38 == sub_1000BFC14() && v39 == v40)
        {

LABEL_34:

          v67 = v168;
          v68 = sub_10014A35C();
          a2 = v155;
          v4 = v156;
          if (!v68)
          {

            v96 = type metadata accessor for HTTPResponseHead._Storage();
            sub_100021728(v96);
            *&v44 = sub_10014B7C0();
            v45 = _swiftEmptyArrayStorage;
            v46 = 49;
            goto LABEL_22;
          }

          v152 = v69;
          *&v157 = v68;
          sub_10001AE68((v67 + 48), *(v67 + 72));
          sub_10007992C();
          sub_10001AE68((v67 + 48), *(v67 + 72));
          sub_10007A340();
          v70 = v162[7];
          v71 = sub_10001A07C();
          v72 = _swiftEmptyArrayStorage;
          if (v71)
          {
            v73 = v71;
            *&v174 = _swiftEmptyArrayStorage;
            v74 = v71 & ~(v71 >> 63);

            sub_10003410C(0, v74, 0);
            if ((v73 & 0x8000000000000000) == 0)
            {
              v75 = 0;
              v72 = v174;
              do
              {
                if ((v70 & 0xC000000000000001) != 0)
                {
                  v76 = sub_1001F7808();
                }

                else
                {
                  v76 = *(v70 + 8 * v75 + 32);
                }

                sub_10014B340(v76, v169, &v171, v173);

                *&v174 = v72;
                v78 = v72[2];
                v77 = v72[3];
                if (v78 >= v77 >> 1)
                {
                  sub_10003410C((v77 > 1), v78 + 1, 1);
                  v72 = v174;
                }

                ++v75;
                v72[2] = v78 + 1;
                v79 = &v72[8 * v78];
                v80 = v173[0];
                v81 = v173[1];
                v82 = v173[3];
                v79[4] = v173[2];
                v79[5] = v82;
                v79[2] = v80;
                v79[3] = v81;
              }

              while (v73 != v75);

              a2 = v155;
              goto LABEL_47;
            }

            __break(1u);
LABEL_71:
            swift_once();
LABEL_65:
            v126 = qword_1002AE9E8;
            isa = sub_1001F6478().super.isa;
            v128 = v38;
            v129 = [v126 stringFromDate:isa];

            v124 = sub_1001F6B58();
            v125 = v130;

            (*(v74 + 8))(v128, v154);
            sub_10004BDE8(v161, &unk_1002B3450, &qword_100202EE0);
          }

          else
          {
LABEL_47:
            v85 = *(v37 + 16);
            v86 = *(v37 + 24);

            *&v168 = sub_10004B628(v85, v86, &v171, v169);
            v155 = v87;
            sub_10001C7E4(&v171);

            v88 = *(v37 + 176);
            LOBYTE(v85) = *(v37 + 184);
            v89 = [objc_allocWithZone(NSDateComponentsFormatter) init];
            [v89 setUnitsStyle:3];
            [v89 setAllowedUnits:4124];
            v90 = v163;
            sub_1001EC818(v88, v85);
            v91 = sub_1001F6098().super.isa;
            (*(v164 + 8))(v90, v165);
            v92 = [v89 stringFromDateComponents:v91];

            if (v92)
            {
              v93 = sub_1001F6B58();
              v95 = v94;
            }

            else
            {
              v93 = 0;
              v95 = 0xE000000000000000;
            }

            if (v88 == 1)
            {
              *&v174 = v93;
              *(&v174 + 1) = v95;
              *&v181 = 32;
              *(&v181 + 1) = 0xE100000000000000;
              sub_10001C790();
              v100 = sub_1001F75B8();

              *&v174 = sub_10005E8A0(1, v100);
              *(&v174 + 1) = v101;
              *&v175 = v102;
              *(&v175 + 1) = v103;
              sub_1000183C4(&qword_1002AF8A8, &unk_100203E00);
              sub_10005C2DC();
              v93 = sub_1001F6A68();
              v95 = v104;
              swift_unknownObjectRelease();
            }

            v105 = v158;
            v106 = v159;
            v107 = v168;
            type metadata accessor for AppIconRoute();
            *&v168 = sub_10005DC24(v156, v106);
            v165 = v108;

            if (v105[3])
            {
              v109 = v105[2];
              v163 = v105[3];
              v164 = v109;
            }

            else
            {
              v163 = 0xE800000000000000;
              v164 = 0x656D614E20707041;
            }

            v110 = v154;
            v112 = v162[5];
            v111 = v162[6];
            v113 = v162[3];
            v150 = v162[2];
            v151 = v112;
            v159 = v111;

            v156 = v113;

            v114 = sub_10014B520(v37);
            v148 = v115;
            v149 = v114;
            v181 = v169[0];
            sub_10001C838(&v181);
            v180 = v169[1];
            sub_10001C838(&v180);
            v179 = v170;
            sub_10004BDE8(&v179, &qword_1002ACA10, qword_1001FEBF0);
            *&v174 = v107;
            *(&v174 + 1) = v155;
            v184._countAndFlagsBits = 47;
            v184._object = 0xE100000000000000;
            sub_1001F6CA8(v184);
            v185._countAndFlagsBits = v93;
            v185._object = v95;
            sub_1001F6CA8(v185);

            v116 = sub_1001F6BB8();
            v118 = v117;

            sub_1000C5464(4);
            if (v119)
            {
              v120 = 1;
              v38 = v160;
              v121 = v161;
            }

            else
            {
              v121 = v161;
              sub_1001F6418();
              v120 = 0;
              v38 = v160;
            }

            v122 = v166;
            sub_100018460(v121, v120, 1, v110);
            sub_10014B5C0(v121, v122);
            v123 = sub_10001C990(v122, 1, v110);
            v155 = v116;
            v147 = v118;
            if (v123 != 1)
            {
              v74 = v153;
              (*(v153 + 32))(v38, v122, v110);
              if (qword_1002AC410 != -1)
              {
                goto LABEL_71;
              }

              goto LABEL_65;
            }

            sub_10004BDE8(v121, &unk_1002B3450, &qword_100202EE0);
            v124 = 0;
            v125 = 0;
          }

          v131 = v159;
          v132 = v167;
          v133 = sub_1000C1A68();
          *(&v175 + 1) = &type metadata for EditSubscriptionUIRoute.ViewProperties;
          v134 = swift_allocObject();
          *&v174 = v134;
          v136 = v164;
          v135 = v165;
          v134[2] = v168;
          v134[3] = v135;
          v137 = v163;
          v134[4] = v136;
          v134[5] = v137;
          v138 = v150;
          v134[6] = v151;
          v134[7] = v131;
          v139 = v156;
          v140 = v157;
          v134[8] = v138;
          v134[9] = v139;
          v141 = v148;
          v134[10] = v149;
          v134[11] = v141;
          v142 = v147;
          v134[12] = v155;
          v134[13] = v142;
          v134[14] = v124;
          v134[15] = v125;
          v134[16] = v133;
          v134[17] = v72;
          v143 = sub_1000ADFF4(&v174, v140, v152);
          v145 = v144;

          sub_100019CCC(&v174);
          sub_1000B738C(v143, v145, 1, &v174);
          v168 = v174;
          v166 = v175;
          v4 = (v176 | ((v177 | (v178 << 16)) << 32));

          v146 = type metadata accessor for HTTPResponseHead._Storage();
          v43 = sub_100021728(v146);
          v47 = v166;
          v44 = v168;
          v45 = _swiftEmptyArrayStorage;
          v46 = 3;
          goto LABEL_23;
        }

        v38 = sub_1001F7EA8();

        if (v38)
        {
          goto LABEL_34;
        }
      }

      if (qword_1002AC510 != -1)
      {
        sub_10001B230(&qword_1002AC510);
      }

      v57 = sub_1001F6688();
      sub_100019C94(v57, qword_1002E6180);
      v4 = v167;
      v58 = v159;

      v45 = sub_1001F6668();
      v59 = sub_1001F7298();

      v60 = os_log_type_enabled(v45, v59);
      a2 = v155;
      if (v60)
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v171 = v62;
        *v61 = 136315394;
        v63 = sub_1000BFC14();
        v65 = sub_1000E4544(v63, v64, &v171);

        *(v61 + 4) = v65;
        *(v61 + 12) = 2080;
        v66 = v156;
        *(v61 + 14) = sub_1000E4544(v156, v58, &v171);
        _os_log_impl(&_mh_execute_header, v45, v59, "no subscription for %s and %s", v61, 0x16u);
        swift_arrayDestroy();
        sub_10003A72C(v62);
        sub_10003A72C(v61);
      }

      else
      {

        v66 = v156;
      }

      sub_1000183C4(&qword_1002AC840, &qword_1001FE6A0);
      v97 = swift_allocObject();
      sub_10014B760(v97);

      sub_10014B7A4("/subscriptions/list?app=");
      v183._countAndFlagsBits = v66;
      v183._object = v58;
      sub_1001F6CA8(v183);

      v98 = v172;
      v45[6].isa = v171;
      v45[7].isa = v98;
    }

    else
    {

      if (qword_1002AC510 != -1)
      {
        sub_10001B230(&qword_1002AC510);
      }

      v49 = sub_1001F6688();
      sub_100019C94(v49, qword_1002E6180);

      v50 = v159;

      v51 = sub_1001F6668();
      v45 = sub_1001F7298();

      if (os_log_type_enabled(v51, v45))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v171 = v53;
        *v52 = 136315394;
        v54 = sub_1000E4544(v22, v23, &v171);
        v55 = v25;
        v56 = v54;

        *(v52 + 4) = v56;
        v25 = v55;
        *(v52 + 12) = 2080;
        *(v52 + 14) = sub_1000E4544(v55, v50, &v171);
        _os_log_impl(&_mh_execute_header, v51, v45, "no transaction for %s and %s", v52, 0x16u);
        swift_arrayDestroy();
        sub_10003A72C(v53);
        sub_10003A72C(v52);
      }

      else
      {
      }

      v4 = v158;
      sub_1000183C4(&qword_1002AC840, &qword_1001FE6A0);
      v83 = swift_allocObject();
      sub_10014B760(v83);

      sub_10014B7A4("/subscriptions/list?app=");
      v182._countAndFlagsBits = v25;
      v182._object = v50;
      sub_1001F6CA8(v182);

      v84 = v172;
      v45[6].isa = v171;
      v45[7].isa = v84;
    }

    v99 = type metadata accessor for HTTPResponseHead._Storage();
    sub_100021728(v99);
    *&v44 = sub_10014B7C0();
    v46 = 16;
  }

  else
  {

    v48 = type metadata accessor for HTTPResponseHead._Storage();
    sub_100021728(v48);
    *&v44 = sub_10014B7C0();
    v45 = _swiftEmptyArrayStorage;
    v46 = 25;
  }

LABEL_22:
  v47 = 0uLL;
LABEL_23:
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = v46;
  *(v43 + 40) = 65537;
  *a2 = v43;
  *(a2 + 8) = v45;
  *(a2 + 16) = 2;
  *(a2 + 24) = v44;
  *(a2 + 40) = v47;
  *(a2 + 56) = v4;
  *(a2 + 62) = BYTE6(v4);
  *(a2 + 60) = WORD2(v4);
}

double sub_10014B340@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_1001F60C8();
  sub_10001A278();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100023510();
  v13 = v12 - v11;
  v32 = sub_10014B520(a1);
  v15 = v14;
  v16 = *(a1 + 176);
  v17 = *(a1 + 184);
  v18 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v18 setUnitsStyle:3];
  [v18 setAllowedUnits:4124];
  sub_1001EC818(v16, v17);
  isa = sub_1001F6098().super.isa;
  (*(v9 + 8))(v13, v7);
  v20 = [v18 stringFromDateComponents:isa];

  if (v20)
  {
    v21 = sub_1001F6B58();
    v23 = v22;
  }

  else
  {

    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = *(a1 + 16);
  v25 = *(a1 + 24);

  v26 = sub_10004B628(v24, v25, a3, a2);
  v28 = v27;

  v30 = *(a1 + 80);
  v29 = *(a1 + 88);
  *a4 = v32;
  a4[1] = v15;
  a4[2] = v21;
  a4[3] = v23;
  a4[4] = v26;
  a4[5] = v28;
  a4[6] = v30;
  a4[7] = v29;

  return result;
}

uint64_t sub_10014B520(uint64_t a1)
{

  v2 = sub_1000E087C(v1);

  if (!v2)
  {
    return sub_1001E8450();
  }

  v3 = *(v2 + 32);

  return v3;
}

uint64_t sub_10014B5C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014B630()
{

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_10014B6B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_10014B6F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10014B760(uint64_t a1)
{
  *(a1 + 16) = *(v1 + 80);
  *(a1 + 32) = 0x6E6F697461636F4CLL;
  *(a1 + 40) = 0xE800000000000000;
  *(v1 + 256) = 0;
  *(v1 + 264) = 0xE000000000000000;

  sub_1001F77B8(26);
}

uint64_t sub_10014B7DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (qword_1002AC4A8 != -1)
  {
    result = swift_once();
  }

  v6 = *(qword_1002E6140 + 16);
  v7 = (qword_1002E6140 + 32);
  if (v6)
  {
    while (1)
    {
      memcpy(__dst, v7, sizeof(__dst));
      v8 = __dst[0];
      v16 = *&__dst[5];
      v17 = *&__dst[3];
      v15 = *&__dst[7];
      v9 = __dst[9];
      v18 = *&__dst[1];
      if (__dst[0] == v4 && __dst[1] == a2)
      {
        result = sub_10007B844(__dst, v19);
        v8 = v4;
        goto LABEL_13;
      }

      result = sub_1001F7EA8();
      if (result)
      {
        break;
      }

      v7 += 80;
      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    result = sub_10007B844(__dst, v19);
LABEL_13:
    v12 = v17;
    v11 = v18;
    v14 = v15;
    v13 = v16;
  }

  else
  {
LABEL_10:
    v8 = 0;
    v9 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a3 = v8;
  *(a3 + 8) = v11;
  *(a3 + 24) = v12;
  *(a3 + 40) = v13;
  *(a3 + 56) = v14;
  *(a3 + 72) = v9;
  return result;
}

uint64_t sub_10014B92C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001AE68(a1, a1[3]);
  sub_1000E1DC8();
  sub_1001F8168();
  if (v2)
  {
    return sub_100019CCC(a1);
  }

  sub_10001AE68(v19, v20);
  sub_1000E1DC8();
  v5 = sub_1001F7EC8();
  v8 = v5;
  v9 = v6;
  sub_10014B7DC(v5, v6, &v21);
  v10 = v22;
  if (!v22)
  {
    v12 = sub_1001F7848();
    swift_allocError();
    v14 = v13;
    v27 = *(sub_1000183C4(&qword_1002B3738, &qword_10020BFA0) + 48);
    *v14 = &type metadata for OctaneStorefront;
    sub_10001AE68(v19, v20);
    sub_1001F7EB8();
    sub_1001F77B8(35);

    v28._countAndFlagsBits = v8;
    v28._object = v9;
    sub_1001F6CA8(v28);

    sub_1001F7838();
    (*(*(v12 - 8) + 104))(v14, enum case for DecodingError.valueNotFound(_:), v12);
    swift_willThrow();
    sub_100019CCC(v19);
    return sub_100019CCC(a1);
  }

  v11 = v21;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  v18 = v26;

  sub_100019CCC(v19);
  result = sub_100019CCC(a1);
  *a2 = v11;
  *(a2 + 8) = v10;
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  *(a2 + 64) = v18;
  return result;
}

uint64_t sub_10014BB58()
{
  sub_1000183C4(&qword_1002AC840, &qword_1001FE6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002109C0;
  v2 = *v0;
  v10 = v0[1];
  v3 = v10;
  v11 = v2;
  *(inited + 48) = v2;
  *(inited + 80) = v3;
  v4 = v0[3];
  v9 = v0[2];
  *(inited + 112) = v9;
  *(inited + 32) = 0x437972746E756F63;
  *(inited + 40) = 0xEB0000000065646FLL;
  strcpy((inited + 64), "currencyCode");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 96) = 0x696669746E656469;
  *(inited + 104) = 0xEA00000000007265;
  strcpy((inited + 128), "ISOCountryCode");
  *(inited + 143) = -18;
  *(inited + 144) = v4;
  *(inited + 160) = 1701667182;
  *(inited + 168) = 0xE400000000000000;
  v7 = v0[4];
  v8 = v4;
  *(inited + 176) = v7;
  sub_1000552A0(&v11, v6);
  sub_1000552A0(&v10, v6);
  sub_1000552A0(&v9, v6);
  sub_1000552A0(&v8, v6);
  sub_1000552A0(&v7, v6);
  return sub_1001F69B8();
}

void sub_10014BCBC()
{
  qword_1002E60F0 = 4281173;
  *algn_1002E60F8 = 0xE300000000000000;
  qword_1002E6100 = 4477781;
  unk_1002E6108 = 0xE300000000000000;
  qword_1002E6110 = 0x313434333431;
  unk_1002E6118 = 0xE600000000000000;
  qword_1002E6120 = 21333;
  unk_1002E6128 = 0xE200000000000000;
  strcpy(&qword_1002E6130, "United States");
  unk_1002E613E = -4864;
}

uint64_t sub_10014BD24()
{
  sub_1000183C4(&qword_1002B7770, &qword_100210B48);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002109D0;
  if (qword_1002AC4A0 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_1002E60F0, 0x50uLL);
  memcpy((v0 + 32), &qword_1002E60F0, 0x50uLL);
  *(v0 + 112) = 4671041;
  *(v0 + 144) = 0x303136333431;
  *(v0 + 160) = 17985;
  *(v0 + 176) = 0x73696E6168676641;
  *(v0 + 184) = 0xEB000000006E6174;
  *(v0 + 192) = 4344897;
  *(v0 + 224) = 0x353735333431;
  *(v0 + 240) = 19521;
  *(v0 + 256) = 0x61696E61626C41;
  *(v0 + 272) = 4282948;
  *(v0 + 304) = 0x333635333431;
  *(v0 + 320) = 23108;
  *(v0 + 336) = 0x61697265676C41;
  *(v0 + 352) = 5195585;
  *(v0 + 384) = 0x343635333431;
  *(v0 + 400) = 20289;
  *(v0 + 432) = 4278593;
  *(v0 + 480) = 18753;
  *(v0 + 512) = 4674625;
  *(v0 + 544) = 0x303435333431;
  *(v0 + 560) = 18241;
  *(v0 + 584) = 0x80000001002292D0;
  *(v0 + 592) = 4674113;
  *(v0 + 624) = 0x353035333431;
  *(v0 + 640) = 21057;
  *(v0 + 656) = 0x6E69746E65677241;
  *(v0 + 704) = 0x343235333431;
  *(v0 + 720) = 19777;
  *(v0 + 736) = 0x61696E656D7241;
  *(v0 + 752) = 5461313;
  *(v0 + 768) = 4478273;
  *(v0 + 784) = 0x303634333431;
  *(v0 + 800) = 21825;
  *(v0 + 816) = 0x696C617274737541;
  *(v0 + 832) = 5526849;
  *(v0 + 864) = 0x353434333431;
  *(v0 + 880) = 21569;
  *(v0 + 896) = 0x61697274737541;
  *(v0 + 944) = 0x383635333431;
  *(v0 + 960) = 23105;
  *(v0 + 976) = 0x6A69616272657A41;
  *(v0 + 1024) = 0x393335333431;
  *(v0 + 1040) = 21314;
  *(v0 + 1056) = 0x73616D61686142;
  *(v0 + 1072) = 5392450;
  *(v0 + 1104) = 0x393535333431;
  *(v0 + 1120) = 18498;
  *(v0 + 1136) = 0x6E696172686142;
  *(v0 + 1184) = 0x313435333431;
  *(v0 + 1200) = 16962;
  *(v0 + 1216) = 0x736F646162726142;
  *(v0 + 1232) = 5393474;
  *(v0 + 1264) = 0x353635333431;
  *(v0 + 1280) = 22850;
  *(v0 + 1296) = 0x737572616C6542;
  *(v0 + 1344) = 0x363434333431;
  *(v0 + 1360) = 17730;
  *(v0 + 1376) = 0x6D7569676C6542;
  *(v0 + 1392) = 5917762;
  *(v0 + 1424) = 0x353535333431;
  *(v0 + 1440) = 23106;
  *(v0 + 1456) = 0x657A696C6542;
  *(v0 + 1472) = 5129538;
  *(v0 + 1504) = 0x363735333431;
  *(v0 + 1520) = 19010;
  *(v0 + 1536) = 0x6E696E6542;
  *(v0 + 1552) = 5590338;
  *(v0 + 1584) = 0x323435333431;
  *(v0 + 1600) = 19778;
  *(v0 + 1616) = 0x6164756D726542;
  *(v0 + 1632) = 5133378;
  *(v0 + 1664) = 0x373735333431;
  *(v0 + 1680) = 21570;
  *(v0 + 1696) = 0x6E6174756842;
  *(v0 + 1712) = 5001026;
  *(v0 + 1744) = 0x363535333431;
  *(v0 + 1760) = 20290;
  *(v0 + 1776) = 0x616976696C6F42;
  *(v0 + 1792) = 4737346;
  *(v0 + 1824) = 0x323136333431;
  *(v0 + 1840) = 16706;
  *(v0 + 1856) = 0xD000000000000016;
  *(v0 + 1864) = 0x80000001002292F0;
  *(v0 + 1872) = 4282178;
  *(v0 + 1904) = 0x353235333431;
  *(v0 + 1920) = 22338;
  *(v0 + 1936) = 0x616E617773746F42;
  *(v0 + 1952) = 4280898;
  *(v0 + 1968) = 5001794;
  *(v0 + 1984) = 0x333035333431;
  *(v0 + 2000) = 21058;
  *(v0 + 2016) = 0x6C697A617242;
  *(v0 + 2064) = 0x303635333431;
  *(v0 + 2080) = 20034;
  *(v0 + 2096) = 0xD000000000000011;
  *(v0 + 2104) = 0x8000000100229310;
  *(v0 + 2112) = 5392194;
  *(v0 + 2128) = 5130050;
  *(v0 + 2144) = 0x363235333431;
  *(v0 + 2160) = 18242;
  *(v0 + 2176) = 0x61697261676C7542;
  *(v0 + 2192) = 4277826;
  *(v0 + 2224) = 0x383735333431;
  *(v0 + 2240) = 17986;
  strcpy((v0 + 2256), "Burkina Faso");
  *(v0 + 2269) = 0;
  *(v0 + 2270) = -5120;
  *(v0 + 2272) = 5064779;
  *(v0 + 2304) = 0x393735333431;
  *(v0 + 2320) = 18507;
  *(v0 + 2336) = 0x6169646F626D6143;
  *(v0 + 2352) = 5393731;
  *(v0 + 2384) = 0x343735333431;
  *(v0 + 2400) = 19779;
  *(v0 + 2416) = 0x6E6F6F72656D6143;
  *(v0 + 2464) = 0x353534333431;
  *(v0 + 2480) = 16707;
  *(v0 + 2496) = 0x6164616E6143;
  *(v0 + 2512) = 5656643;
  *(v0 + 2544) = 0x303835333431;
  *(v0 + 2560) = 22083;
  *(v0 + 2576) = 0x7265562065706143;
  *(v0 + 2584) = 0xEA00000000006564;
  *(v0 + 2592) = 5069123;
  *(v0 + 2624) = 0x343435333431;
  *(v0 + 2640) = 22859;
  strcpy((v0 + 2656), "Cayman Islands");
  *(v0 + 2671) = -18;
  *(v0 + 2672) = 4473684;
  *(v0 + 2704) = 0x313835333431;
  *(v0 + 2720) = 17492;
  *(v0 + 2736) = 1684105283;
  *(v0 + 2752) = 4999235;
  *(v0 + 2768) = 5262403;
  *(v0 + 2784) = 0x333834333431;
  *(v0 + 2800) = 19523;
  *(v0 + 2816) = 0x656C696843;
  *(v0 + 2832) = 5130307;
  *(v0 + 2848) = 5852739;
  *(v0 + 2864) = 0x353634333431;
  *(v0 + 2880) = 20035;
  strcpy((v0 + 2896), "China mainland");
  *(v0 + 2911) = -18;
  *(v0 + 2912) = 5001027;
  *(v0 + 2928) = 5263171;
  *(v0 + 2944) = 0x313035333431;
  *(v0 + 2960) = 20291;
  *(v0 + 2976) = 0x6169626D6F6C6F43;
  *(v0 + 2992) = 4476739;
  *(v0 + 3024) = 0x333136333431;
  *(v0 + 3040) = 17475;
  *(v0 + 3056) = 0xD000000000000021;
  *(v0 + 3064) = 0x8000000100229330;
  *(v0 + 3072) = 4673347;
  *(v0 + 3104) = 0x323835333431;
  *(v0 + 3120) = 18243;
  *(v0 + 3144) = 0x8000000100229360;
  *(v0 + 3152) = 4805187;
  *(v0 + 3184) = 0x353934333431;
  *(v0 + 3200) = 21059;
  *(v0 + 3216) = 0x6952206174736F43;
  *(v0 + 3224) = 0xEA00000000006163;
  *(v0 + 3232) = 5654851;
  *(v0 + 3264) = 0x373235333431;
  *(v0 + 3280) = 18755;
  strcpy((v0 + 3296), "Cote D'Ivoire");
  *(v0 + 3310) = -4864;
  *(v0 + 3312) = 5657160;
  *(v0 + 3344) = 0x343934333431;
  *(v0 + 3360) = 21064;
  *(v0 + 3376) = 0x616974616F7243;
  *(v0 + 3392) = 5265731;
  *(v0 + 3424) = 0x373535333431;
  *(v0 + 3440) = 22851;
  *(v0 + 3456) = 0x737572707943;
  *(v0 + 912) = 4545089;
  *(v0 + 3472) = 4545091;
  *(v0 + 3488) = 4938307;
  *(v0 + 3504) = 0x393834333431;
  *(v0 + 3520) = 23107;
  strcpy((v0 + 3536), "Czech Republic");
  *(v0 + 3551) = -18;
  *(v0 + 3552) = 4935236;
  *(v0 + 3568) = 4934468;
  *(v0 + 3584) = 0x383534333431;
  *(v0 + 3600) = 19268;
  *(v0 + 3616) = 0x6B72616D6E6544;
  *(v0 + 3632) = 4279620;
  *(v0 + 3664) = 0x353435333431;
  *(v0 + 3680) = 19780;
  *(v0 + 3696) = 0x6163696E696D6F44;
  *(v0 + 3712) = 5066564;
  *(v0 + 3744) = 0x383035333431;
  *(v0 + 3760) = 20292;
  *(v0 + 3784) = 0x8000000100229380;
  *(v0 + 3792) = 5587781;
  *(v0 + 3824) = 0x393035333431;
  *(v0 + 3840) = 17221;
  *(v0 + 3856) = 0x726F6461756345;
  *(v0 + 3872) = 5850949;
  *(v0 + 3888) = 5261125;
  *(v0 + 3904) = 0x363135333431;
  *(v0 + 3920) = 18245;
  *(v0 + 3936) = 0x7470796745;
  *(v0 + 3952) = 5655635;
  *(v0 + 3984) = 0x363035333431;
  *(v0 + 4000) = 22099;
  *(v0 + 4016) = 0x61766C6153206C45;
  *(v0 + 4024) = 0xEB00000000726F64;
  *(v0 + 4032) = 5526341;
  *(v0 + 4064) = 0x383135333431;
  *(v0 + 4080) = 17733;
  *(v0 + 4096) = 0x61696E6F747345;
  *(v0 + 4144) = 0x333835333431;
  *(v0 + 4160) = 19014;
  *(v0 + 4176) = 1768581446;
  *(v0 + 4192) = 5130566;
  *(v0 + 4224) = 0x373434333431;
  *(v0 + 4240) = 18758;
  *(v0 + 4256) = 0x646E616C6E6946;
  *(v0 + 4272) = 4280902;
  *(v0 + 4304) = 0x323434333431;
  *(v0 + 4320) = 21062;
  *(v0 + 4336) = 0x65636E617246;
  *(v0 + 4384) = 0x343136333431;
  *(v0 + 4400) = 16711;
  *(v0 + 4416) = 0x6E6F626147;
  *(v0 + 4432) = 4345159;
  *(v0 + 4464) = 0x343835333431;
  *(v0 + 4480) = 19783;
  *(v0 + 4512) = 5195079;
  *(v0 + 4544) = 0x353136333431;
  *(v0 + 4560) = 17735;
  *(v0 + 4576) = 0x616967726F6547;
  *(v0 + 4592) = 5588292;
  *(v0 + 4624) = 0x333434333431;
  *(v0 + 4640) = 17732;
  *(v0 + 4656) = 0x796E616D726547;
  *(v0 + 4672) = 4278343;
  *(v0 + 4704) = 0x333735333431;
  *(v0 + 4720) = 18503;
  *(v0 + 4736) = 0x616E616847;
  *(v0 + 4784) = 0x383434333431;
  *(v0 + 4800) = 21063;
  *(v0 + 4816) = 0x656365657247;
  *(v0 + 4832) = 4477511;
  *(v0 + 4864) = 0x363435333431;
  *(v0 + 4880) = 17479;
  *(v0 + 4896) = 0x6164616E657247;
  *(v0 + 4912) = 5067847;
  *(v0 + 4944) = 0x343035333431;
  *(v0 + 4960) = 21575;
  *(v0 + 4976) = 0x6C616D6574617547;
  *(v0 + 4992) = 4345415;
  *(v0 + 5024) = 0x353835333431;
  *(v0 + 1688) = 0xE200000000000000;
  *(v0 + 1704) = 0xE600000000000000;
  *(v0 + 5040) = 22343;
  strcpy((v0 + 5056), "Guinea-Bissau");
  *(v0 + 1648) = 4477781;
  *(v0 + 1656) = 0xE300000000000000;
  *(v0 + 1672) = 0xE600000000000000;
  *(v0 + 5070) = -4864;
  *(v0 + 1624) = 0xE700000000000000;
  *(v0 + 1640) = 0xE300000000000000;
  *(v0 + 5072) = 5854535;
  *(v0 + 5104) = 0x333535333431;
  *(v0 + 1592) = 0xE600000000000000;
  *(v0 + 1608) = 0xE200000000000000;
  *(v0 + 5120) = 22855;
  *(v0 + 5136) = 0x616E61797547;
  *(v0 + 1560) = 0xE300000000000000;
  *(v0 + 1568) = 4477781;
  *(v0 + 1576) = 0xE300000000000000;
  *(v0 + 5152) = 4476488;
  *(v0 + 1512) = 0xE600000000000000;
  *(v0 + 1528) = 0xE200000000000000;
  *(v0 + 1544) = 0xE500000000000000;
  *(v0 + 5184) = 0x303135333431;
  *(v0 + 1480) = 0xE300000000000000;
  *(v0 + 1488) = 4477781;
  *(v0 + 1496) = 0xE300000000000000;
  *(v0 + 5200) = 20040;
  *(v0 + 5216) = 0x73617275646E6F48;
  *(v0 + 1448) = 0xE200000000000000;
  *(v0 + 1464) = 0xE600000000000000;
  *(v0 + 5232) = 4672328;
  *(v0 + 5248) = 4475720;
  *(v0 + 1416) = 0xE300000000000000;
  *(v0 + 1432) = 0xE600000000000000;
  *(v0 + 5264) = 0x333634333431;
  *(v0 + 5280) = 19272;
  *(v0 + 1384) = 0xE700000000000000;
  *(v0 + 1400) = 0xE300000000000000;
  *(v0 + 1408) = 4477781;
  *(v0 + 5296) = 0x6E6F4B20676E6F48;
  *(v0 + 1352) = 0xE600000000000000;
  *(v0 + 1368) = 0xE200000000000000;
  *(v0 + 5304) = 0xE900000000000067;
  *(v0 + 1320) = 0xE300000000000000;
  *(v0 + 1328) = 5395781;
  *(v0 + 1336) = 0xE300000000000000;
  *(v0 + 5312) = 5133640;
  *(v0 + 5328) = 4609352;
  *(v0 + 1288) = 0xE200000000000000;
  *(v0 + 1304) = 0xE700000000000000;
  *(v0 + 1312) = 4998466;
  *(v0 + 5344) = 0x323834333431;
  *(v0 + 5360) = 21832;
  *(v0 + 1256) = 0xE300000000000000;
  *(v0 + 1272) = 0xE600000000000000;
  *(v0 + 5376) = 0x797261676E7548;
  *(v0 + 1224) = 0xE800000000000000;
  *(v0 + 1240) = 0xE300000000000000;
  *(v0 + 1248) = 4477781;
  *(v0 + 5392) = 5002057;
  *(v0 + 5424) = 0x383535333431;
  *(v0 + 1192) = 0xE600000000000000;
  *(v0 + 1208) = 0xE200000000000000;
  *(v0 + 1152) = 4346434;
  *(v0 + 1160) = 0xE300000000000000;
  *(v0 + 1168) = 4477781;
  *(v0 + 1176) = 0xE300000000000000;
  *(v0 + 5440) = 21321;
  *(v0 + 5472) = 4476489;
  *(v0 + 1112) = 0xE600000000000000;
  *(v0 + 1128) = 0xE200000000000000;
  *(v0 + 1144) = 0xE700000000000000;
  *(v0 + 5488) = 5393993;
  *(v0 + 1080) = 0xE300000000000000;
  *(v0 + 1088) = 4477781;
  *(v0 + 1096) = 0xE300000000000000;
  *(v0 + 5504) = 0x373634333431;
  *(v0 + 5520) = 20041;
  *(v0 + 1048) = 0xE200000000000000;
  *(v0 + 1064) = 0xE700000000000000;
  *(v0 + 5536) = 0x6169646E49;
  *(v0 + 5552) = 5129289;
  *(v0 + 1008) = 4477781;
  *(v0 + 1016) = 0xE300000000000000;
  *(v0 + 1032) = 0xE600000000000000;
  *(v0 + 5568) = 5391433;
  *(v0 + 984) = 0xEA00000000006E61;
  *(v0 + 992) = 5457986;
  *(v0 + 1000) = 0xE300000000000000;
  *(v0 + 5584) = 0x363734333431;
  *(v0 + 5600) = 17481;
  *(v0 + 936) = 0xE300000000000000;
  *(v0 + 952) = 0xE600000000000000;
  *(v0 + 968) = 0xE200000000000000;
  *(v0 + 5616) = 0x6973656E6F646E49;
  *(v0 + 904) = 0xE700000000000000;
  *(v0 + 920) = 0xE300000000000000;
  *(v0 + 928) = 4477781;
  *(v0 + 5632) = 5329481;
  *(v0 + 5664) = 0x373136333431;
  *(v0 + 872) = 0xE600000000000000;
  *(v0 + 888) = 0xE200000000000000;
  *(v0 + 5680) = 20809;
  *(v0 + 5696) = 1902211657;
  *(v0 + 840) = 0xE300000000000000;
  *(v0 + 848) = 5395781;
  *(v0 + 856) = 0xE300000000000000;
  *(v0 + 5712) = 5001801;
  *(v0 + 5744) = 0x393434333431;
  *(v0 + 808) = 0xE200000000000000;
  *(v0 + 824) = 0xE900000000000061;
  *(v0 + 5760) = 17737;
  *(v0 + 776) = 0xE300000000000000;
  *(v0 + 792) = 0xE600000000000000;
  *(v0 + 5456) = 0x646E616C656349;
  *(v0 + 5776) = 0x646E616C657249;
  *(v0 + 5792) = 5395273;
  *(v0 + 744) = 0xE700000000000000;
  *(v0 + 760) = 0xE300000000000000;
  *(v0 + 5808) = 5459017;
  *(v0 + 696) = 0xE300000000000000;
  *(v0 + 712) = 0xE600000000000000;
  *(v0 + 728) = 0xE200000000000000;
  *(v0 + 5824) = 0x313934333431;
  *(v0 + 664) = 0xE900000000000061;
  *(v0 + 672) = 5067329;
  *(v0 + 680) = 0xE300000000000000;
  *(v0 + 688) = 4477781;
  *(v0 + 5840) = 19529;
  *(v0 + 5856) = 0x6C6561727349;
  *(v0 + 632) = 0xE600000000000000;
  *(v0 + 648) = 0xE200000000000000;
  *(v0 + 5904) = 0x303534333431;
  *(v0 + 5920) = 21577;
  *(v0 + 600) = 0xE300000000000000;
  *(v0 + 608) = 4477781;
  *(v0 + 616) = 0xE300000000000000;
  *(v0 + 5936) = 0x796C617449;
  *(v0 + 568) = 0xE200000000000000;
  *(v0 + 576) = 0xD000000000000013;
  *(v0 + 5984) = 0x313135333431;
  *(v0 + 6000) = 19786;
  *(v0 + 536) = 0xE300000000000000;
  *(v0 + 552) = 0xE600000000000000;
  *(v0 + 6016) = 0x616369616D614ALL;
  *(v0 + 496) = 0x616C6C6975676E41;
  *(v0 + 504) = 0xE800000000000000;
  *(v0 + 520) = 0xE300000000000000;
  *(v0 + 528) = 4477781;
  *(v0 + 6032) = 5132362;
  *(v0 + 464) = 0x383335333431;
  *(v0 + 472) = 0xE600000000000000;
  *(v0 + 488) = 0xE200000000000000;
  *(v0 + 416) = 0x616C6F676E41;
  *(v0 + 424) = 0xE600000000000000;
  *(v0 + 440) = 0xE300000000000000;
  *(v0 + 448) = 4477781;
  *(v0 + 456) = 0xE300000000000000;
  *(v0 + 120) = 0xE300000000000000;
  *(v0 + 128) = 4477781;
  *(v0 + 368) = 4477781;
  *(v0 + 376) = 0xE300000000000000;
  *(v0 + 392) = 0xE600000000000000;
  *(v0 + 408) = 0xE200000000000000;
  *(v0 + 136) = 0xE300000000000000;
  *(v0 + 152) = 0xE600000000000000;
  *(v0 + 168) = 0xE200000000000000;
  *(v0 + 328) = 0xE200000000000000;
  *(v0 + 344) = 0xE700000000000000;
  *(v0 + 360) = 0xE300000000000000;
  *(v0 + 200) = 0xE300000000000000;
  *(v0 + 208) = 4477781;
  *(v0 + 280) = 0xE300000000000000;
  *(v0 + 288) = 4477781;
  *(v0 + 296) = 0xE300000000000000;
  *(v0 + 312) = 0xE600000000000000;
  *(v0 + 216) = 0xE300000000000000;
  *(v0 + 232) = 0xE600000000000000;
  *(v0 + 248) = 0xE200000000000000;
  *(v0 + 264) = 0xE700000000000000;
  *(v0 + 1720) = 0xE300000000000000;
  *(v0 + 1728) = 4477781;
  *(v0 + 1736) = 0xE300000000000000;
  *(v0 + 1752) = 0xE600000000000000;
  *(v0 + 1768) = 0xE200000000000000;
  *(v0 + 1784) = 0xE700000000000000;
  *(v0 + 1800) = 0xE300000000000000;
  *(v0 + 1808) = 5395781;
  *(v0 + 1816) = 0xE300000000000000;
  *(v0 + 1832) = 0xE600000000000000;
  *(v0 + 1848) = 0xE200000000000000;
  *(v0 + 1880) = 0xE300000000000000;
  *(v0 + 1888) = 4477781;
  *(v0 + 1896) = 0xE300000000000000;
  *(v0 + 1912) = 0xE600000000000000;
  *(v0 + 1928) = 0xE200000000000000;
  *(v0 + 1944) = 0xE800000000000000;
  *(v0 + 1960) = 0xE300000000000000;
  *(v0 + 1976) = 0xE300000000000000;
  *(v0 + 1992) = 0xE600000000000000;
  *(v0 + 2008) = 0xE200000000000000;
  *(v0 + 2024) = 0xE600000000000000;
  *(v0 + 2032) = 5132866;
  *(v0 + 6040) = 0xE300000000000000;
  *(v0 + 6048) = 5853258;
  *(v0 + 6064) = 0x323634333431;
  *(v0 + 6080) = 20554;
  *(v0 + 6096) = 0x6E6170614ALL;
  *(v0 + 6112) = 5394250;
  *(v0 + 6144) = 0x383235333431;
  *(v0 + 6160) = 20298;
  *(v0 + 6176) = 0x6E6164726F4ALL;
  *(v0 + 6208) = 5528139;
  *(v0 + 6224) = 0x373135333431;
  *(v0 + 6240) = 23115;
  *(v0 + 6256) = 0x7473686B617A614BLL;
  *(v0 + 6272) = 5129547;
  *(v0 + 6304) = 0x393235333431;
  *(v0 + 6320) = 17739;
  *(v0 + 6336) = 0x61796E654BLL;
  *(v0 + 6352) = 5394251;
  *(v0 + 6368) = 5722699;
  *(v0 + 6384) = 0x363634333431;
  *(v0 + 6400) = 21067;
  *(v0 + 6424) = 0x80000001002293A0;
  *(v0 + 6432) = 5458776;
  *(v0 + 6464) = 0x343236333431;
  *(v0 + 6480) = 19288;
  *(v0 + 6496) = 0x6F766F736F4BLL;
  *(v0 + 6512) = 5527371;
  *(v0 + 6544) = 0x333934333431;
  *(v0 + 6560) = 22347;
  *(v0 + 6576) = 0x74696177754BLL;
  *(v0 + 6592) = 5916491;
  *(v0 + 6624) = 0x363835333431;
  *(v0 + 6640) = 18251;
  *(v0 + 6656) = 0x74737A796772794BLL;
  *(v0 + 6672) = 5194060;
  *(v0 + 6704) = 0x373835333431;
  *(v0 + 6720) = 16716;
  *(v0 + 6736) = 0xD000000000000020;
  *(v0 + 5704) = 0xE400000000000000;
  *(v0 + 5672) = 0xE600000000000000;
  *(v0 + 5688) = 0xE200000000000000;
  *(v0 + 6744) = 0x80000001002293C0;
  *(v0 + 6752) = 4281932;
  *(v0 + 5640) = 0xE300000000000000;
  *(v0 + 5648) = 4477781;
  *(v0 + 5656) = 0xE300000000000000;
  *(v0 + 6784) = 0x393135333431;
  *(v0 + 6800) = 22092;
  *(v0 + 5608) = 0xE200000000000000;
  *(v0 + 5624) = 0xE900000000000061;
  *(v0 + 6816) = 0x61697674614CLL;
  *(v0 + 6832) = 5128780;
  *(v0 + 5576) = 0xE300000000000000;
  *(v0 + 5592) = 0xE600000000000000;
  *(v0 + 6864) = 0x373934333431;
  *(v0 + 6880) = 16972;
  *(v0 + 5544) = 0xE500000000000000;
  *(v0 + 5560) = 0xE300000000000000;
  *(v0 + 6896) = 0x6E6F6E6162654CLL;
  *(v0 + 6912) = 5390924;
  *(v0 + 5512) = 0xE600000000000000;
  *(v0 + 5528) = 0xE200000000000000;
  *(v0 + 6944) = 0x383835333431;
  *(v0 + 6960) = 21068;
  *(v0 + 5480) = 0xE300000000000000;
  *(v0 + 5496) = 0xE300000000000000;
  *(v0 + 6976) = 0x6169726562694CLL;
  *(v0 + 6992) = 5849676;
  *(v0 + 5448) = 0xE200000000000000;
  *(v0 + 5464) = 0xE700000000000000;
  *(v0 + 7024) = 0x373635333431;
  *(v0 + 7040) = 22860;
  *(v0 + 5408) = 4477781;
  *(v0 + 5416) = 0xE300000000000000;
  *(v0 + 5432) = 0xE600000000000000;
  *(v0 + 7056) = 0x617962694CLL;
  *(v0 + 5384) = 0xE700000000000000;
  *(v0 + 5400) = 0xE300000000000000;
  *(v0 + 7072) = 5592140;
  *(v0 + 7104) = 0x303235333431;
  *(v0 + 5352) = 0xE600000000000000;
  *(v0 + 5368) = 0xE200000000000000;
  *(v0 + 7120) = 21580;
  *(v0 + 7136) = 0x696E61756874694CLL;
  *(v0 + 5320) = 0xE300000000000000;
  *(v0 + 5336) = 0xE300000000000000;
  *(v0 + 7152) = 5789004;
  *(v0 + 7184) = 0x313534333431;
  *(v0 + 5288) = 0xE200000000000000;
  *(v0 + 7200) = 21836;
  *(v0 + 7216) = 0x756F626D6578754CLL;
  *(v0 + 5256) = 0xE300000000000000;
  *(v0 + 5272) = 0xE600000000000000;
  *(v0 + 7224) = 0xEA00000000006772;
  *(v0 + 7264) = 0x353135333431;
  *(v0 + 5224) = 0xE800000000000000;
  *(v0 + 5240) = 0xE300000000000000;
  *(v0 + 7280) = 20301;
  *(v0 + 7296) = 0x756163614DLL;
  *(v0 + 5192) = 0xE600000000000000;
  *(v0 + 5208) = 0xE200000000000000;
  *(v0 + 7344) = 0x313335333431;
  *(v0 + 7360) = 18253;
  *(v0 + 5160) = 0xE300000000000000;
  *(v0 + 5168) = 4477781;
  *(v0 + 5176) = 0xE300000000000000;
  *(v0 + 7376) = 0x637361676164614DLL;
  *(v0 + 7392) = 4806477;
  *(v0 + 5128) = 0xE200000000000000;
  *(v0 + 5144) = 0xE600000000000000;
  *(v0 + 7424) = 0x393835333431;
  *(v0 + 7440) = 22349;
  *(v0 + 5096) = 0xE300000000000000;
  *(v0 + 5112) = 0xE600000000000000;
  *(v0 + 7456) = 0x6977616C614DLL;
  *(v0 + 7488) = 5396813;
  *(v0 + 5080) = 0xE300000000000000;
  *(v0 + 5088) = 4477781;
  *(v0 + 7504) = 0x333734333431;
  *(v0 + 7520) = 22861;
  *(v0 + 5032) = 0xE600000000000000;
  *(v0 + 5048) = 0xE200000000000000;
  *(v0 + 7536) = 0x61697379616C614DLL;
  *(v0 + 4984) = 0xE900000000000061;
  *(v0 + 5000) = 0xE300000000000000;
  *(v0 + 5008) = 4477781;
  *(v0 + 5016) = 0xE300000000000000;
  *(v0 + 7552) = 5653581;
  *(v0 + 7584) = 0x383834333431;
  *(v0 + 4952) = 0xE600000000000000;
  *(v0 + 4968) = 0xE200000000000000;
  *(v0 + 7600) = 22093;
  *(v0 + 7616) = 0x73657669646C614DLL;
  *(v0 + 4920) = 0xE300000000000000;
  *(v0 + 4928) = 4477781;
  *(v0 + 4936) = 0xE300000000000000;
  *(v0 + 4112) = 4803142;
  *(v0 + 7632) = 4803661;
  *(v0 + 4888) = 0xE200000000000000;
  *(v0 + 4904) = 0xE700000000000000;
  *(v0 + 7664) = 0x323335333431;
  *(v0 + 7680) = 19533;
  *(v0 + 4848) = 4477781;
  *(v0 + 4856) = 0xE300000000000000;
  *(v0 + 4872) = 0xE600000000000000;
  *(v0 + 7696) = 1768710477;
  *(v0 + 4824) = 0xE600000000000000;
  *(v0 + 4840) = 0xE300000000000000;
  *(v0 + 7712) = 5524557;
  *(v0 + 7744) = 0x313235333431;
  *(v0 + 4776) = 0xE300000000000000;
  *(v0 + 4792) = 0xE600000000000000;
  *(v0 + 4808) = 0xE200000000000000;
  *(v0 + 4744) = 0xE500000000000000;
  *(v0 + 4752) = 4411975;
  *(v0 + 4760) = 0xE300000000000000;
  *(v0 + 4768) = 5395781;
  *(v0 + 7760) = 21581;
  *(v0 + 7776) = 0x61746C614DLL;
  *(v0 + 4712) = 0xE600000000000000;
  *(v0 + 4728) = 0xE200000000000000;
  *(v0 + 7824) = 0x303935333431;
  *(v0 + 7840) = 21069;
  *(v0 + 4680) = 0xE300000000000000;
  *(v0 + 4688) = 4477781;
  *(v0 + 4696) = 0xE300000000000000;
  *(v0 + 7856) = 0x6E6174697275614DLL;
  *(v0 + 7864) = 0xEA00000000006169;
  *(v0 + 4648) = 0xE200000000000000;
  *(v0 + 4664) = 0xE700000000000000;
  *(v0 + 7872) = 5461325;
  *(v0 + 4608) = 5395781;
  *(v0 + 4616) = 0xE300000000000000;
  *(v0 + 4632) = 0xE600000000000000;
  *(v0 + 7904) = 0x333335333431;
  *(v0 + 7920) = 21837;
  *(v0 + 4584) = 0xE700000000000000;
  *(v0 + 4600) = 0xE300000000000000;
  *(v0 + 7936) = 0x756974697275614DLL;
  *(v0 + 4536) = 0xE300000000000000;
  *(v0 + 4552) = 0xE600000000000000;
  *(v0 + 4568) = 0xE200000000000000;
  *(v0 + 7944) = 0xE900000000000073;
  *(v0 + 7952) = 5784909;
  *(v0 + 4504) = 0xE600000000000000;
  *(v0 + 4520) = 0xE300000000000000;
  *(v0 + 4528) = 4477781;
  *(v0 + 7968) = 5134413;
  *(v0 + 4472) = 0xE600000000000000;
  *(v0 + 4488) = 0xE200000000000000;
  *(v0 + 4496) = 0x6169626D6147;
  *(v0 + 7984) = 0x383634333431;
  *(v0 + 8000) = 22605;
  *(v0 + 4440) = 0xE300000000000000;
  *(v0 + 4448) = 4477781;
  *(v0 + 4456) = 0xE300000000000000;
  *(v0 + 8016) = 0x6F636978654DLL;
  *(v0 + 8032) = 5067590;
  *(v0 + 4408) = 0xE200000000000000;
  *(v0 + 4424) = 0xE500000000000000;
  *(v0 + 8064) = 0x313935333431;
  *(v0 + 8080) = 19782;
  *(v0 + 4376) = 0xE300000000000000;
  *(v0 + 4392) = 0xE600000000000000;
  *(v0 + 8096) = 0xD00000000000001FLL;
  *(v0 + 4352) = 4342087;
  *(v0 + 4360) = 0xE300000000000000;
  *(v0 + 4368) = 4477781;
  *(v0 + 4328) = 0xE200000000000000;
  *(v0 + 4344) = 0xE600000000000000;
  *(v0 + 8104) = 0x80000001002293F0;
  *(v0 + 8112) = 4277325;
  *(v0 + 4288) = 5395781;
  *(v0 + 4296) = 0xE300000000000000;
  *(v0 + 4312) = 0xE600000000000000;
  *(v0 + 8144) = 0x333235333431;
  *(v0 + 8160) = 17485;
  *(v0 + 4264) = 0xE700000000000000;
  *(v0 + 4280) = 0xE300000000000000;
  *(v0 + 4232) = 0xE600000000000000;
  *(v0 + 4248) = 0xE200000000000000;
  *(v0 + 8184) = 0x8000000100229410;
  *(v0 + 0x2000) = 4673101;
  *(v0 + 4200) = 0xE300000000000000;
  *(v0 + 4208) = 5395781;
  *(v0 + 4216) = 0xE300000000000000;
  *(v0 + 8224) = 0x323935333431;
  *(v0 + 8240) = 20045;
  *(v0 + 4168) = 0xE200000000000000;
  *(v0 + 4184) = 0xE400000000000000;
  *(v0 + 8256) = 0x61696C6F676E6F4DLL;
  *(v0 + 4136) = 0xE300000000000000;
  *(v0 + 4152) = 0xE600000000000000;
  *(v0 + 8272) = 4542029;
  *(v0 + 8304) = 0x393136333431;
  *(v0 + 4104) = 0xE700000000000000;
  *(v0 + 4120) = 0xE300000000000000;
  *(v0 + 4128) = 4477781;
  *(v0 + 8320) = 17741;
  *(v0 + 8336) = 0x67656E65746E6F4DLL;
  *(v0 + 4072) = 0xE600000000000000;
  *(v0 + 4088) = 0xE200000000000000;
  *(v0 + 8344) = 0xEA00000000006F72;
  *(v0 + 4040) = 0xE300000000000000;
  *(v0 + 4048) = 5395781;
  *(v0 + 4056) = 0xE300000000000000;
  *(v0 + 8352) = 5395277;
  *(v0 + 8384) = 0x373435333431;
  *(v0 + 8400) = 21325;
  *(v0 + 4008) = 0xE200000000000000;
  *(v0 + 8416) = 0x72726573746E6F4DLL;
  *(v0 + 3976) = 0xE300000000000000;
  *(v0 + 3992) = 0xE600000000000000;
  *(v0 + 8424) = 0xEA00000000007461;
  *(v0 + 8464) = 0x303236333431;
  *(v0 + 3944) = 0xE500000000000000;
  *(v0 + 3960) = 0xE300000000000000;
  *(v0 + 3968) = 4477781;
  *(v0 + 8480) = 16717;
  *(v0 + 8496) = 0x6F63636F726F4DLL;
  *(v0 + 3912) = 0xE600000000000000;
  *(v0 + 3928) = 0xE200000000000000;
  *(v0 + 6192) = 5914955;
  *(v0 + 8512) = 5918541;
  *(v0 + 3880) = 0xE300000000000000;
  *(v0 + 3896) = 0xE300000000000000;
  *(v0 + 8544) = 0x333935333431;
  *(v0 + 8560) = 23117;
  *(v0 + 3832) = 0xE600000000000000;
  *(v0 + 3848) = 0xE200000000000000;
  *(v0 + 3864) = 0xE700000000000000;
  *(v0 + 8576) = 0x7169626D617A6F4DLL;
  *(v0 + 3800) = 0xE300000000000000;
  *(v0 + 3808) = 4477781;
  *(v0 + 3816) = 0xE300000000000000;
  *(v0 + 8584) = 0xEA00000000006575;
  *(v0 + 8592) = 5393741;
  *(v0 + 3768) = 0xE200000000000000;
  *(v0 + 3776) = 0xD000000000000012;
  *(v0 + 8624) = 0x303735333431;
  *(v0 + 8640) = 19789;
  *(v0 + 3736) = 0xE300000000000000;
  *(v0 + 3752) = 0xE600000000000000;
  *(v0 + 8656) = 0x72616D6E61794DLL;
  *(v0 + 8672) = 5062990;
  *(v0 + 3704) = 0xE800000000000000;
  *(v0 + 3720) = 0xE300000000000000;
  *(v0 + 3728) = 4477781;
  *(v0 + 8704) = 0x343935333431;
  *(v0 + 8720) = 16718;
  *(v0 + 3672) = 0xE600000000000000;
  *(v0 + 3688) = 0xE200000000000000;
  *(v0 + 8736) = 0x616962696D614ELL;
  *(v0 + 8752) = 5591630;
  *(v0 + 3640) = 0xE300000000000000;
  *(v0 + 3648) = 4477781;
  *(v0 + 3656) = 0xE300000000000000;
  *(v0 + 8784) = 0x363036333431;
  *(v0 + 8800) = 21070;
  *(v0 + 3608) = 0xE200000000000000;
  *(v0 + 3624) = 0xE700000000000000;
  *(v0 + 8816) = 0x757275614ELL;
  *(v0 + 8832) = 5001294;
  *(v0 + 3576) = 0xE300000000000000;
  *(v0 + 3592) = 0xE600000000000000;
  *(v0 + 8864) = 0x343834333431;
  *(v0 + 8880) = 20558;
  *(v0 + 3560) = 0xE300000000000000;
  *(v0 + 8896) = 0x6C6170654ELL;
  *(v0 + 8912) = 4475982;
  *(v0 + 3512) = 0xE600000000000000;
  *(v0 + 3528) = 0xE200000000000000;
  *(v0 + 8944) = 0x323534333431;
  *(v0 + 8960) = 19534;
  *(v0 + 3480) = 0xE300000000000000;
  *(v0 + 3496) = 0xE300000000000000;
  *(v0 + 8976) = 0x616C72656874654ELL;
  *(v0 + 8992) = 5003854;
  *(v0 + 3432) = 0xE600000000000000;
  *(v0 + 3448) = 0xE200000000000000;
  *(v0 + 3464) = 0xE600000000000000;
  *(v0 + 9008) = 4479566;
  *(v0 + 3400) = 0xE300000000000000;
  *(v0 + 3408) = 5395781;
  *(v0 + 3416) = 0xE300000000000000;
  *(v0 + 9024) = 0x313634333431;
  *(v0 + 9040) = 23118;
  *(v0 + 3368) = 0xE200000000000000;
  *(v0 + 3384) = 0xE700000000000000;
  *(v0 + 9056) = 0x6C61655A2077654ELL;
  *(v0 + 3336) = 0xE300000000000000;
  *(v0 + 3352) = 0xE600000000000000;
  *(v0 + 7232) = 4407629;
  *(v0 + 9072) = 4409678;
  *(v0 + 9104) = 0x323135333431;
  *(v0 + 3320) = 0xE300000000000000;
  *(v0 + 3328) = 4936264;
  *(v0 + 9120) = 18766;
  *(v0 + 9136) = 0x756761726163694ELL;
  *(v0 + 3272) = 0xE600000000000000;
  *(v0 + 3288) = 0xE200000000000000;
  *(v0 + 9152) = 5391694;
  *(v0 + 9184) = 0x343335333431;
  *(v0 + 3248) = 4477781;
  *(v0 + 3256) = 0xE300000000000000;
  *(v0 + 9200) = 17742;
  *(v0 + 9216) = 0x726567694ELL;
  *(v0 + 3240) = 0xE300000000000000;
  *(v0 + 9232) = 4278094;
  *(v0 + 9248) = 5130062;
  *(v0 + 3192) = 0xE600000000000000;
  *(v0 + 3208) = 0xE200000000000000;
  *(v0 + 9264) = 0x313635333431;
  *(v0 + 9280) = 18254;
  *(v0 + 3160) = 0xE300000000000000;
  *(v0 + 3168) = 4477781;
  *(v0 + 3176) = 0xE300000000000000;
  *(v0 + 9296) = 0x6169726567694ELL;
  *(v0 + 9312) = 4475725;
  *(v0 + 3112) = 0xE600000000000000;
  *(v0 + 3128) = 0xE200000000000000;
  *(v0 + 3136) = 0xD000000000000012;
  *(v0 + 9344) = 0x303335333431;
  *(v0 + 3080) = 0xE300000000000000;
  *(v0 + 3088) = 4477781;
  *(v0 + 3096) = 0xE300000000000000;
  *(v0 + 9360) = 19277;
  *(v0 + 9376) = 0x614D206874726F4ELL;
  *(v0 + 9384) = 0xEF61696E6F646563;
  *(v0 + 3048) = 0xE200000000000000;
  *(v0 + 9392) = 5394254;
  *(v0 + 3008) = 4477781;
  *(v0 + 3016) = 0xE300000000000000;
  *(v0 + 3032) = 0xE600000000000000;
  *(v0 + 9408) = 4935502;
  *(v0 + 9424) = 0x373534333431;
  *(v0 + 2984) = 0xE800000000000000;
  *(v0 + 3000) = 0xE300000000000000;
  *(v0 + 9440) = 20302;
  *(v0 + 9456) = 0x796177726F4ELL;
  *(v0 + 2952) = 0xE600000000000000;
  *(v0 + 2968) = 0xE200000000000000;
  *(v0 + 9472) = 5131599;
  *(v0 + 9504) = 0x323635333431;
  *(v0 + 2920) = 0xE300000000000000;
  *(v0 + 2936) = 0xE300000000000000;
  *(v0 + 9520) = 19791;
  *(v0 + 9536) = 1851878735;
  *(v0 + 2888) = 0xE200000000000000;
  *(v0 + 9568) = 5393232;
  *(v0 + 9584) = 0x373734333431;
  *(v0 + 2856) = 0xE300000000000000;
  *(v0 + 2872) = 0xE600000000000000;
  *(v0 + 9600) = 19280;
  *(v0 + 9616) = 0x6E617473696B6150;
  *(v0 + 9632) = 5721168;
  *(v0 + 2824) = 0xE500000000000000;
  *(v0 + 2840) = 0xE300000000000000;
  *(v0 + 9664) = 0x353935333431;
  *(v0 + 9680) = 22352;
  *(v0 + 2792) = 0xE600000000000000;
  *(v0 + 2808) = 0xE200000000000000;
  *(v0 + 9696) = 0x75616C6150;
  *(v0 + 9712) = 5128528;
  *(v0 + 2760) = 0xE300000000000000;
  *(v0 + 2776) = 0xE300000000000000;
  *(v0 + 9744) = 0x353834333431;
  *(v0 + 9760) = 16720;
  *(v0 + 2728) = 0xE200000000000000;
  *(v0 + 2744) = 0xE400000000000000;
  *(v0 + 9776) = 0x616D616E6150;
  *(v0 + 2688) = 4477781;
  *(v0 + 2696) = 0xE300000000000000;
  *(v0 + 2712) = 0xE600000000000000;
  *(v0 + 7312) = 4670541;
  *(v0 + 9792) = 4673104;
  *(v0 + 9824) = 0x373935333431;
  *(v0 + 2680) = 0xE300000000000000;
  *(v0 + 9840) = 18256;
  *(v0 + 2648) = 0xE200000000000000;
  *(v0 + 9864) = 0x8000000100229430;
  *(v0 + 9904) = 0x333135333431;
  *(v0 + 2608) = 4477781;
  *(v0 + 2616) = 0xE300000000000000;
  *(v0 + 2632) = 0xE600000000000000;
  *(v0 + 9920) = 22864;
  *(v0 + 9936) = 0x7961756761726150;
  *(v0 + 2600) = 0xE300000000000000;
  *(v0 + 9952) = 5391696;
  *(v0 + 9968) = 5129552;
  *(v0 + 2536) = 0xE300000000000000;
  *(v0 + 2552) = 0xE600000000000000;
  *(v0 + 2568) = 0xE200000000000000;
  *(v0 + 9984) = 0x373035333431;
  *(v0 + 2504) = 0xE600000000000000;
  *(v0 + 2520) = 0xE300000000000000;
  *(v0 + 2528) = 4477781;
  *(v0 + 10000) = 17744;
  *(v0 + 10016) = 1970431312;
  *(v0 + 2456) = 0xE300000000000000;
  *(v0 + 2472) = 0xE600000000000000;
  *(v0 + 2488) = 0xE200000000000000;
  *(v0 + 2408) = 0xE200000000000000;
  *(v0 + 2424) = 0xE800000000000000;
  *(v0 + 2432) = 5128515;
  *(v0 + 2440) = 0xE300000000000000;
  *(v0 + 2448) = 4473155;
  *(v0 + 7704) = 0xE400000000000000;
  *(v0 + 9544) = 0xE400000000000000;
  *(v0 + 10024) = 0xE400000000000000;
  *(v0 + 2368) = 4477781;
  *(v0 + 2376) = 0xE300000000000000;
  *(v0 + 2392) = 0xE600000000000000;
  *(v0 + 10032) = 4999248;
  *(v0 + 2040) = 0xE300000000000000;
  *(v0 + 2048) = 4477781;
  *(v0 + 2328) = 0xE200000000000000;
  *(v0 + 2344) = 0xE800000000000000;
  *(v0 + 2360) = 0xE300000000000000;
  *(v0 + 2056) = 0xE300000000000000;
  *(v0 + 2072) = 0xE600000000000000;
  *(v0 + 2280) = 0xE300000000000000;
  *(v0 + 2288) = 4477781;
  *(v0 + 2296) = 0xE300000000000000;
  *(v0 + 2312) = 0xE600000000000000;
  *(v0 + 2088) = 0xE200000000000000;
  *(v0 + 2120) = 0xE300000000000000;
  *(v0 + 2136) = 0xE300000000000000;
  *(v0 + 2152) = 0xE600000000000000;
  *(v0 + 2232) = 0xE600000000000000;
  *(v0 + 2248) = 0xE200000000000000;
  *(v0 + 2168) = 0xE200000000000000;
  *(v0 + 2184) = 0xE800000000000000;
  *(v0 + 2200) = 0xE300000000000000;
  *(v0 + 2208) = 4477781;
  *(v0 + 2216) = 0xE300000000000000;
  *(v0 + 5720) = 0xE300000000000000;
  *(v0 + 5728) = 5395781;
  *(v0 + 5736) = 0xE300000000000000;
  *(v0 + 5752) = 0xE600000000000000;
  *(v0 + 5768) = 0xE200000000000000;
  *(v0 + 5784) = 0xE700000000000000;
  *(v0 + 5800) = 0xE300000000000000;
  *(v0 + 5816) = 0xE300000000000000;
  *(v0 + 5832) = 0xE600000000000000;
  *(v0 + 5848) = 0xE200000000000000;
  *(v0 + 5864) = 0xE600000000000000;
  *(v0 + 5872) = 4281417;
  *(v0 + 5880) = 0xE300000000000000;
  *(v0 + 5888) = 5395781;
  *(v0 + 5896) = 0xE300000000000000;
  *(v0 + 5912) = 0xE600000000000000;
  *(v0 + 5928) = 0xE200000000000000;
  *(v0 + 5944) = 0xE500000000000000;
  *(v0 + 5952) = 5062986;
  *(v0 + 5960) = 0xE300000000000000;
  *(v0 + 5968) = 4477781;
  *(v0 + 5976) = 0xE300000000000000;
  *(v0 + 5992) = 0xE600000000000000;
  *(v0 + 6008) = 0xE200000000000000;
  *(v0 + 6024) = 0xE700000000000000;
  *(v0 + 10040) = 0xE300000000000000;
  *(v0 + 10048) = 5261392;
  *(v0 + 10064) = 0x343734333431;
  *(v0 + 10080) = 18512;
  *(v0 + 10096) = 0x697070696C696850;
  *(v0 + 8984) = 0xEB0000000073646ELL;
  *(v0 + 10104) = 0xEB0000000073656ELL;
  *(v0 + 10112) = 5001040;
  *(v0 + 10128) = 5131344;
  *(v0 + 10144) = 0x383734333431;
  *(v0 + 10160) = 19536;
  *(v0 + 10176) = 0x646E616C6F50;
  *(v0 + 10192) = 5526096;
  *(v0 + 10224) = 0x333534333431;
  *(v0 + 10240) = 21584;
  *(v0 + 10256) = 0x6C61677574726F50;
  *(v0 + 10288) = 5390673;
  *(v0 + 10304) = 0x383934333431;
  *(v0 + 10320) = 16721;
  *(v0 + 10336) = 0x7261746151;
  *(v0 + 10352) = 5590866;
  *(v0 + 10368) = 5132114;
  *(v0 + 10384) = 0x373834333431;
  *(v0 + 10400) = 20306;
  *(v0 + 10416) = 0x61696E616D6F52;
  *(v0 + 10432) = 5461330;
  *(v0 + 10448) = 4347218;
  *(v0 + 10464) = 0x393634333431;
  *(v0 + 10480) = 21842;
  *(v0 + 10496) = 0x616973737552;
  *(v0 + 10512) = 4282194;
  *(v0 + 10544) = 0x313236333431;
  *(v0 + 10560) = 22354;
  *(v0 + 10976) = 0x6C6C656863796553;
  *(v0 + 11680) = 20043;
  *(v0 + 11920) = 23123;
  *(v0 + 11952) = 4544339;
  *(v0 + 11968) = 4932947;
  *(v0 + 11960) = 0xE300000000000000;
  *(v0 + 11976) = 0xE300000000000000;
  *(v0 + 11936) = 0x6E616C697A617753;
  *(v0 + 11944) = 0xE900000000000064;
  *(v0 + 11928) = 0xE200000000000000;
  *(v0 + 11776) = 0xD00000000000001ELL;
  *(v0 + 11904) = 0x323036333431;
  *(v0 + 11888) = 4477781;
  *(v0 + 11896) = 0xE300000000000000;
  *(v0 + 11912) = 0xE600000000000000;
  *(v0 + 11856) = 0x656D616E69727553;
  *(v0 + 11872) = 5920595;
  *(v0 + 11864) = 0xE800000000000000;
  *(v0 + 11880) = 0xE300000000000000;
  *(v0 + 11824) = 0x343535333431;
  *(v0 + 11840) = 21075;
  *(v0 + 11832) = 0xE600000000000000;
  *(v0 + 11848) = 0xE200000000000000;
  *(v0 + 11800) = 0xE300000000000000;
  *(v0 + 11808) = 4477781;
  *(v0 + 11816) = 0xE300000000000000;
  *(v0 + 11784) = 0x8000000100229470;
  *(v0 + 11792) = 5395795;
  *(v0 + 11768) = 0xE200000000000000;
  *(v0 + 11744) = 0x303535333431;
  *(v0 + 11760) = 17238;
  *(v0 + 10272) = 5521745;
  *(v0 + 11736) = 0xE300000000000000;
  *(v0 + 11752) = 0xE600000000000000;
  *(v0 + 11712) = 5522262;
  *(v0 + 11720) = 0xE300000000000000;
  *(v0 + 11728) = 4477781;
  *(v0 + 11704) = 0x8000000100229450;
  *(v0 + 11672) = 0xE600000000000000;
  *(v0 + 11688) = 0xE200000000000000;
  *(v0 + 11696) = 0xD000000000000013;
  *(v0 + 11664) = 0x383435333431;
  *(v0 + 11640) = 0xE300000000000000;
  *(v0 + 11648) = 4477781;
  *(v0 + 11656) = 0xE300000000000000;
  *(v0 + 11616) = 0x6B6E614C20697253;
  *(v0 + 11632) = 4279883;
  *(v0 + 11608) = 0xE200000000000000;
  *(v0 + 11624) = 0xE900000000000061;
  *(v0 + 11584) = 0x363834333431;
  *(v0 + 11600) = 19276;
  *(v0 + 11576) = 0xE300000000000000;
  *(v0 + 11592) = 0xE600000000000000;
  *(v0 + 11504) = 0x343534333431;
  *(v0 + 11552) = 4279116;
  *(v0 + 11544) = 0xE500000000000000;
  *(v0 + 11560) = 0xE300000000000000;
  *(v0 + 11568) = 4477781;
  *(v0 + 11520) = 21317;
  *(v0 + 11536) = 0x6E69617053;
  *(v0 + 11512) = 0xE600000000000000;
  *(v0 + 11528) = 0xE200000000000000;
  *(v0 + 11440) = 16730;
  *(v0 + 11472) = 5264197;
  *(v0 + 11480) = 0xE300000000000000;
  *(v0 + 11488) = 5395781;
  *(v0 + 11496) = 0xE300000000000000;
  strcpy((v0 + 11456), "South Africa");
  *(v0 + 11469) = 0;
  *(v0 + 11470) = -5120;
  *(v0 + 11448) = 0xE200000000000000;
  *(v0 + 11344) = 0x313036333431;
  *(v0 + 11424) = 0x323734333431;
  *(v0 + 11416) = 0xE300000000000000;
  *(v0 + 11432) = 0xE600000000000000;
  *(v0 + 11384) = 0xEF73646E616C7349;
  *(v0 + 11408) = 5390682;
  *(v0 + 11392) = 4604250;
  *(v0 + 11400) = 0xE300000000000000;
  *(v0 + 11360) = 16979;
  *(v0 + 11376) = 0x206E6F6D6F6C6F53;
  *(v0 + 11352) = 0xE600000000000000;
  *(v0 + 11368) = 0xE200000000000000;
  *(v0 + 11312) = 4344915;
  *(v0 + 11320) = 0xE300000000000000;
  *(v0 + 11328) = 4477781;
  *(v0 + 11336) = 0xE300000000000000;
  *(v0 + 11280) = 18771;
  *(v0 + 11296) = 0x61696E65766F6C53;
  *(v0 + 11288) = 0xE200000000000000;
  *(v0 + 11304) = 0xE800000000000000;
  *(v0 + 11216) = 0x61696B61766F6C53;
  *(v0 + 11264) = 0x393934333431;
  *(v0 + 11248) = 5395781;
  *(v0 + 11256) = 0xE300000000000000;
  *(v0 + 11272) = 0xE600000000000000;
  *(v0 + 11232) = 5133907;
  *(v0 + 11224) = 0xE800000000000000;
  *(v0 + 11240) = 0xE300000000000000;
  *(v0 + 11184) = 0x363934333431;
  *(v0 + 11200) = 19283;
  *(v0 + 11192) = 0xE600000000000000;
  *(v0 + 11208) = 0xE200000000000000;
  *(v0 + 11120) = 18259;
  *(v0 + 11152) = 4937299;
  *(v0 + 11160) = 0xE300000000000000;
  *(v0 + 11168) = 5395781;
  *(v0 + 11176) = 0xE300000000000000;
  *(v0 + 11136) = 0x726F7061676E6953;
  *(v0 + 11144) = 0xE900000000000065;
  *(v0 + 11128) = 0xE200000000000000;
  *(v0 + 11069) = 0;
  *(v0 + 11070) = -5120;
  *(v0 + 11104) = 0x343634333431;
  *(v0 + 11096) = 0xE300000000000000;
  *(v0 + 11112) = 0xE600000000000000;
  *(v0 + 11072) = 5261139;
  *(v0 + 11088) = 4474707;
  *(v0 + 11080) = 0xE300000000000000;
  *(v0 + 11040) = 19539;
  strcpy((v0 + 11056), "Sierra Leone");
  *(v0 + 7384) = 0xEA00000000007261;
  *(v0 + 11032) = 0xE600000000000000;
  *(v0 + 11048) = 0xE200000000000000;
  *(v0 + 11024) = 0x303036333431;
  *(v0 + 11008) = 4477781;
  *(v0 + 11016) = 0xE300000000000000;
  *(v0 + 10984) = 0xEA00000000007365;
  *(v0 + 10992) = 4541523;
  *(v0 + 11000) = 0xE300000000000000;
  *(v0 + 10944) = 0x393935333431;
  *(v0 + 10960) = 17235;
  *(v0 + 10936) = 0xE300000000000000;
  *(v0 + 10952) = 0xE600000000000000;
  *(v0 + 10968) = 0xE200000000000000;
  *(v0 + 10912) = 4413779;
  *(v0 + 10904) = 0xE600000000000000;
  *(v0 + 10920) = 0xE300000000000000;
  *(v0 + 10928) = 4477781;
  *(v0 + 10880) = 21330;
  *(v0 + 10896) = 0x616962726553;
  *(v0 + 10872) = 0xE600000000000000;
  *(v0 + 10888) = 0xE200000000000000;
  *(v0 + 10816) = 0x6C6167656E6553;
  *(v0 + 10864) = 0x303035333431;
  *(v0 + 10840) = 0xE300000000000000;
  *(v0 + 10848) = 5395781;
  *(v0 + 10856) = 0xE300000000000000;
  *(v0 + 10832) = 4346451;
  *(v0 + 10808) = 0xE200000000000000;
  *(v0 + 10824) = 0xE700000000000000;
  *(v0 + 10784) = 0x353335333431;
  *(v0 + 10800) = 20051;
  *(v0 + 10776) = 0xE300000000000000;
  *(v0 + 10792) = 0xE600000000000000;
  *(v0 + 10749) = 0;
  *(v0 + 10750) = -5120;
  *(v0 + 10752) = 5129555;
  *(v0 + 10760) = 0xE300000000000000;
  *(v0 + 10768) = 4477781;
  *(v0 + 10720) = 16723;
  strcpy((v0 + 10736), "Saudi Arabia");
  *(v0 + 10712) = 0xE600000000000000;
  *(v0 + 10728) = 0xE200000000000000;
  *(v0 + 10688) = 5390675;
  *(v0 + 10704) = 0x393734333431;
  *(v0 + 10680) = 0xE300000000000000;
  *(v0 + 10696) = 0xE300000000000000;
  *(v0 + 10656) = 0x754C20746E696153;
  *(v0 + 10664) = 0xEB00000000616963;
  *(v0 + 10672) = 5587283;
  *(v0 + 10648) = 0xE200000000000000;
  *(v0 + 10624) = 0x393435333431;
  *(v0 + 10640) = 17228;
  *(v0 + 10616) = 0xE300000000000000;
  *(v0 + 10632) = 0xE600000000000000;
  *(v0 + 10576) = 0x61646E617752;
  *(v0 + 10584) = 0xE600000000000000;
  *(v0 + 10592) = 4277068;
  *(v0 + 10600) = 0xE300000000000000;
  *(v0 + 10608) = 4477781;
  *(v0 + 11984) = 0x363534333431;
  *(v0 + 12000) = 17747;
  *(v0 + 10552) = 0xE600000000000000;
  *(v0 + 10568) = 0xE200000000000000;
  *(v0 + 12016) = 0x6E6564657753;
  *(v0 + 10504) = 0xE600000000000000;
  *(v0 + 10520) = 0xE300000000000000;
  *(v0 + 10528) = 4477781;
  *(v0 + 10536) = 0xE300000000000000;
  *(v0 + 10440) = 0xE300000000000000;
  *(v0 + 10456) = 0xE300000000000000;
  *(v0 + 10472) = 0xE600000000000000;
  *(v0 + 10488) = 0xE200000000000000;
  *(v0 + 12048) = 4606019;
  *(v0 + 12064) = 0x393534333431;
  *(v0 + 12080) = 18499;
  *(v0 + 12096) = 0x6C72657A74697753;
  *(v0 + 9064) = 0xEB00000000646E61;
  *(v0 + 12104) = 0xEB00000000646E61;
  *(v0 + 10392) = 0xE600000000000000;
  *(v0 + 10408) = 0xE200000000000000;
  *(v0 + 10424) = 0xE700000000000000;
  *(v0 + 10264) = 0xE800000000000000;
  *(v0 + 10280) = 0xE300000000000000;
  *(v0 + 10296) = 0xE300000000000000;
  *(v0 + 10312) = 0xE600000000000000;
  *(v0 + 10360) = 0xE300000000000000;
  *(v0 + 10376) = 0xE300000000000000;
  *(v0 + 10328) = 0xE200000000000000;
  *(v0 + 10344) = 0xE500000000000000;
  *(v0 + 12112) = 5264467;
  *(v0 + 12144) = 0x383935333431;
  *(v0 + 12160) = 21587;
  *(v0 + 12176) = 0x1000000000000018;
  *(v0 + 12184) = 0x8000000100229490;
  *(v0 + 12192) = 5134164;
  *(v0 + 12208) = 4478804;
  *(v0 + 12224) = 0x303734333431;
  *(v0 + 12240) = 22356;
  *(v0 + 12256) = 0x6E6177696154;
  *(v0 + 9552) = 4931920;
  *(v0 + 10200) = 0xE300000000000000;
  *(v0 + 10208) = 5395781;
  *(v0 + 10232) = 0xE600000000000000;
  *(v0 + 10248) = 0xE200000000000000;
  *(v0 + 10216) = 0xE300000000000000;
  *(v0 + 12272) = 4934228;
  *(v0 + 12304) = 0x333036333431;
  *(v0 + 12320) = 19028;
  *(v0 + 12336) = 0x7473696B696A6154;
  *(v0 + 10168) = 0xE200000000000000;
  *(v0 + 10184) = 0xE600000000000000;
  *(v0 + 12352) = 4282964;
  *(v0 + 7472) = 5462349;
  *(v0 + 10120) = 0xE300000000000000;
  *(v0 + 10136) = 0xE300000000000000;
  *(v0 + 10152) = 0xE600000000000000;
  *(v0 + 9832) = 0xE600000000000000;
  *(v0 + 9848) = 0xE200000000000000;
  *(v0 + 9880) = 0xE300000000000000;
  *(v0 + 9888) = 4477781;
  *(v0 + 10072) = 0xE600000000000000;
  *(v0 + 10088) = 0xE200000000000000;
  *(v0 + 9896) = 0xE300000000000000;
  *(v0 + 9912) = 0xE600000000000000;
  *(v0 + 9928) = 0xE200000000000000;
  *(v0 + 9944) = 0xE800000000000000;
  *(v0 + 9960) = 0xE300000000000000;
  *(v0 + 10056) = 0xE300000000000000;
  *(v0 + 9992) = 0xE600000000000000;
  *(v0 + 10008) = 0xE200000000000000;
  *(v0 + 12368) = 5462612;
  *(v0 + 12384) = 0x323735333431;
  *(v0 + 12400) = 23124;
  *(v0 + 12416) = 0xD00000000000001CLL;
  *(v0 + 9976) = 0xE300000000000000;
  *(v0 + 12424) = 0x80000001002294B0;
  *(v0 + 12432) = 4278356;
  *(v0 + 12448) = 4343892;
  *(v0 + 12464) = 0x353734333431;
  *(v0 + 12480) = 18516;
  *(v0 + 12496) = 0x646E616C69616854;
  *(v0 + 12512) = 5132116;
  *(v0 + 12544) = 0x383036333431;
  *(v0 + 12560) = 20308;
  *(v0 + 12576) = 0x61676E6F54;
  *(v0 + 12592) = 5198932;
  *(v0 + 12624) = 0x313535333431;
  *(v0 + 12640) = 21588;
  *(v0 + 9872) = 5853776;
  *(v0 + 9856) = 0xD000000000000010;
  *(v0 + 12656) = 0xD000000000000013;
  *(v0 + 12664) = 0x80000001002294D0;
  *(v0 + 9768) = 0xE200000000000000;
  *(v0 + 9784) = 0xE600000000000000;
  *(v0 + 9800) = 0xE300000000000000;
  *(v0 + 9808) = 4477781;
  *(v0 + 9816) = 0xE300000000000000;
  *(v0 + 12672) = 5133652;
  *(v0 + 12704) = 0x363335333431;
  *(v0 + 12720) = 20052;
  *(v0 + 12736) = 0x616973696E7554;
  *(v0 + 9720) = 0xE300000000000000;
  *(v0 + 9728) = 4477781;
  *(v0 + 9736) = 0xE300000000000000;
  *(v0 + 9752) = 0xE600000000000000;
  *(v0 + 6448) = 5395781;
  *(v0 + 6768) = 5395781;
  *(v0 + 7088) = 5395781;
  *(v0 + 9672) = 0xE600000000000000;
  *(v0 + 9688) = 0xE200000000000000;
  *(v0 + 9704) = 0xE500000000000000;
  *(v0 + 7168) = 5395781;
  *(v0 + 7728) = 5395781;
  *(v0 + 9624) = 0xE800000000000000;
  *(v0 + 9640) = 0xE300000000000000;
  *(v0 + 9648) = 4477781;
  *(v0 + 9656) = 0xE300000000000000;
  *(v0 + 8288) = 5395781;
  *(v0 + 8928) = 5395781;
  *(v0 + 9432) = 0xE600000000000000;
  *(v0 + 9576) = 0xE300000000000000;
  *(v0 + 9592) = 0xE600000000000000;
  *(v0 + 9608) = 0xE200000000000000;
  *(v0 + 9448) = 0xE200000000000000;
  *(v0 + 9464) = 0xE600000000000000;
  *(v0 + 9480) = 0xE300000000000000;
  *(v0 + 9488) = 4477781;
  *(v0 + 9496) = 0xE300000000000000;
  *(v0 + 9560) = 0xE300000000000000;
  *(v0 + 9512) = 0xE600000000000000;
  *(v0 + 9528) = 0xE200000000000000;
  *(v0 + 12752) = 5395796;
  *(v0 + 12768) = 5853780;
  *(v0 + 12784) = 0x303834333431;
  *(v0 + 12800) = 21076;
  *(v0 + 12816) = 0x79656B727554;
  *(v0 + 12832) = 5065556;
  *(v0 + 12864) = 0x343036333431;
  *(v0 + 12880) = 19796;
  strcpy((v0 + 12896), "Turkmenistan");
  *(v0 + 12909) = 0;
  *(v0 + 12910) = -5120;
  *(v0 + 12912) = 4277076;
  *(v0 + 12944) = 0x323535333431;
  *(v0 + 12960) = 17236;
  *(v0 + 9416) = 0xE300000000000000;
  *(v0 + 12976) = 0xD000000000000010;
  *(v0 + 12984) = 0x80000001002294F0;
  *(v0 + 9400) = 0xE300000000000000;
  *(v0 + 9352) = 0xE600000000000000;
  *(v0 + 9368) = 0xE200000000000000;
  *(v0 + 12992) = 4278101;
  *(v0 + 13024) = 0x373335333431;
  *(v0 + 13040) = 18261;
  *(v0 + 9304) = 0xE700000000000000;
  *(v0 + 9320) = 0xE300000000000000;
  *(v0 + 9328) = 4477781;
  *(v0 + 9336) = 0xE300000000000000;
  *(v0 + 9176) = 0xE300000000000000;
  *(v0 + 9192) = 0xE600000000000000;
  *(v0 + 9208) = 0xE200000000000000;
  *(v0 + 9256) = 0xE300000000000000;
  *(v0 + 9272) = 0xE600000000000000;
  *(v0 + 9288) = 0xE200000000000000;
  *(v0 + 9224) = 0xE500000000000000;
  *(v0 + 9240) = 0xE300000000000000;
  *(v0 + 13056) = 0x61646E616755;
  *(v0 + 13072) = 5393237;
  *(v0 + 13104) = 0x323934333431;
  *(v0 + 13120) = 16725;
  *(v0 + 13136) = 0x656E6961726B55;
  *(v0 + 13152) = 4543041;
  *(v0 + 13168) = 4474177;
  *(v0 + 13184) = 0x313834333431;
  *(v0 + 13200) = 17729;
  *(v0 + 8176) = 0xD000000000000014;
  *(v0 + 9144) = 0xE900000000000061;
  *(v0 + 9160) = 0xE300000000000000;
  *(v0 + 9168) = 4477781;
  *(v0 + 9112) = 0xE600000000000000;
  *(v0 + 9128) = 0xE200000000000000;
  *(v0 + 13216) = 0xD000000000000014;
  *(v0 + 13224) = 0x8000000100229510;
  *(v0 + 8432) = 5390669;
  *(v0 + 9080) = 0xE300000000000000;
  *(v0 + 9088) = 4477781;
  *(v0 + 9096) = 0xE300000000000000;
  *(v0 + 13232) = 5390919;
  *(v0 + 8952) = 0xE600000000000000;
  *(v0 + 8968) = 0xE200000000000000;
  *(v0 + 9032) = 0xE600000000000000;
  *(v0 + 9048) = 0xE200000000000000;
  *(v0 + 9000) = 0xE300000000000000;
  *(v0 + 9016) = 0xE300000000000000;
  *(v0 + 13248) = 5259847;
  *(v0 + 13264) = 0x343434333431;
  *(v0 + 13280) = 16967;
  strcpy((v0 + 13296), "United Kingdom");
  *(v0 + 13311) = -18;
  *(v0 + 13312) = 5853781;
  *(v0 + 13344) = 0x343135333431;
  *(v0 + 13360) = 22869;
  *(v0 + 13376) = 0x79617567757255;
  *(v0 + 8888) = 0xE200000000000000;
  *(v0 + 8904) = 0xE500000000000000;
  *(v0 + 8920) = 0xE300000000000000;
  *(v0 + 8936) = 0xE300000000000000;
  *(v0 + 13392) = 4348501;
  *(v0 + 13424) = 0x363635333431;
  *(v0 + 13440) = 23125;
  *(v0 + 13456) = 0x7473696B65627A55;
  *(v0 + 8840) = 0xE300000000000000;
  *(v0 + 8848) = 4477781;
  *(v0 + 8856) = 0xE300000000000000;
  *(v0 + 8872) = 0xE600000000000000;
  *(v0 + 6264) = 0xEA00000000006E61;
  *(v0 + 6664) = 0xEA00000000006E61;
  *(v0 + 8792) = 0xE600000000000000;
  *(v0 + 8808) = 0xE200000000000000;
  *(v0 + 8824) = 0xE500000000000000;
  *(v0 + 12344) = 0xEA00000000006E61;
  *(v0 + 13464) = 0xEA00000000006E61;
  *(v0 + 7792) = 5526093;
  *(v0 + 8744) = 0xE700000000000000;
  *(v0 + 8760) = 0xE300000000000000;
  *(v0 + 8768) = 4477781;
  *(v0 + 8776) = 0xE300000000000000;
  *(v0 + 8680) = 0xE300000000000000;
  *(v0 + 8688) = 4477781;
  *(v0 + 8696) = 0xE300000000000000;
  *(v0 + 8712) = 0xE600000000000000;
  *(v0 + 8728) = 0xE200000000000000;
  *(v0 + 13472) = 5526870;
  *(v0 + 13504) = 0x393036333431;
  *(v0 + 13520) = 21846;
  *(v0 + 13536) = 0x757461756E6156;
  *(v0 + 8616) = 0xE300000000000000;
  *(v0 + 8632) = 0xE600000000000000;
  *(v0 + 8648) = 0xE200000000000000;
  *(v0 + 8664) = 0xE700000000000000;
  *(v0 + 13552) = 5129558;
  *(v0 + 13584) = 0x323035333431;
  *(v0 + 13600) = 17750;
  *(v0 + 13616) = 0x6C65757A656E6556;
  *(v0 + 7144) = 0xE900000000000061;
  *(v0 + 8600) = 0xE300000000000000;
  *(v0 + 8608) = 4477781;
  *(v0 + 13624) = 0xE900000000000061;
  *(v0 + 13632) = 5066326;
  *(v0 + 8520) = 0xE300000000000000;
  *(v0 + 8528) = 4477781;
  *(v0 + 8536) = 0xE300000000000000;
  *(v0 + 8552) = 0xE600000000000000;
  *(v0 + 8568) = 0xE200000000000000;
  *(v0 + 13648) = 4476502;
  *(v0 + 13664) = 0x313734333431;
  *(v0 + 13680) = 20054;
  *(v0 + 13696) = 0x6D616E74656956;
  *(v0 + 6904) = 0xE700000000000000;
  *(v0 + 8472) = 0xE600000000000000;
  *(v0 + 8488) = 0xE200000000000000;
  *(v0 + 8504) = 0xE700000000000000;
  *(v0 + 6984) = 0xE700000000000000;
  *(v0 + 8360) = 0xE300000000000000;
  *(v0 + 8368) = 4477781;
  *(v0 + 8440) = 0xE300000000000000;
  *(v0 + 8448) = 4477781;
  *(v0 + 8456) = 0xE300000000000000;
  *(v0 + 8376) = 0xE300000000000000;
  *(v0 + 8392) = 0xE600000000000000;
  *(v0 + 8408) = 0xE200000000000000;
  *(v0 + 12744) = 0xE700000000000000;
  *(v0 + 13144) = 0xE700000000000000;
  *(v0 + 13384) = 0xE700000000000000;
  *(v0 + 13544) = 0xE700000000000000;
  *(v0 + 13704) = 0xE700000000000000;
  *(v0 + 13712) = 4343638;
  *(v0 + 13744) = 0x333435333431;
  *(v0 + 13760) = 18262;
  *(v0 + 6416) = 0xD000000000000012;
  *(v0 + 8296) = 0xE300000000000000;
  *(v0 + 8328) = 0xE200000000000000;
  *(v0 + 8312) = 0xE600000000000000;
  *(v0 + 13776) = 0xD000000000000017;
  *(v0 + 13784) = 0x8000000100229530;
  *(v0 + 8232) = 0xE600000000000000;
  *(v0 + 8248) = 0xE200000000000000;
  *(v0 + 8264) = 0xE800000000000000;
  *(v0 + 8280) = 0xE300000000000000;
  *(v0 + 13792) = 5064025;
  *(v0 + 13824) = 0x313735333431;
  *(v0 + 13840) = 17753;
  *(v0 + 13856) = 0x6E656D6559;
  *(v0 + 6104) = 0xE500000000000000;
  *(v0 + 6344) = 0xE500000000000000;
  *(v0 + 8200) = 0xE300000000000000;
  *(v0 + 8208) = 4477781;
  *(v0 + 8216) = 0xE300000000000000;
  *(v0 + 7064) = 0xE500000000000000;
  *(v0 + 7304) = 0xE500000000000000;
  *(v0 + 7784) = 0xE500000000000000;
  *(v0 + 8136) = 0xE300000000000000;
  *(v0 + 8152) = 0xE600000000000000;
  *(v0 + 8168) = 0xE200000000000000;
  *(v0 + 12584) = 0xE500000000000000;
  *(v0 + 13864) = 0xE500000000000000;
  *(v0 + 8120) = 0xE300000000000000;
  *(v0 + 8128) = 4477781;
  *(v0 + 13872) = 4345178;
  *(v0 + 13904) = 0x323236333431;
  *(v0 + 13920) = 19802;
  *(v0 + 8072) = 0xE600000000000000;
  *(v0 + 8088) = 0xE200000000000000;
  *(v0 + 13936) = 0x6169626D615ALL;
  *(v0 + 8024) = 0xE600000000000000;
  *(v0 + 8040) = 0xE300000000000000;
  *(v0 + 8048) = 4477781;
  *(v0 + 8056) = 0xE300000000000000;
  *(v0 + 12032) = 4540483;
  *(v0 + 13952) = 4544346;
  *(v0 + 7976) = 0xE300000000000000;
  *(v0 + 7992) = 0xE600000000000000;
  *(v0 + 8008) = 0xE200000000000000;
  *(v0 + 6128) = 4477781;
  *(v0 + 6288) = 4477781;
  *(v0 + 6528) = 4477781;
  *(v0 + 6608) = 4477781;
  *(v0 + 7928) = 0xE200000000000000;
  *(v0 + 7960) = 0xE300000000000000;
  *(v0 + 6688) = 4477781;
  *(v0 + 6848) = 4477781;
  *(v0 + 7880) = 0xE300000000000000;
  *(v0 + 7888) = 4477781;
  *(v0 + 7896) = 0xE300000000000000;
  *(v0 + 7912) = 0xE600000000000000;
  *(v0 + 6928) = 4477781;
  *(v0 + 7008) = 4477781;
  *(v0 + 7248) = 4477781;
  *(v0 + 7328) = 4477781;
  *(v0 + 7832) = 0xE600000000000000;
  *(v0 + 7848) = 0xE200000000000000;
  *(v0 + 7408) = 4477781;
  *(v0 + 7544) = 0xE800000000000000;
  *(v0 + 7560) = 0xE300000000000000;
  *(v0 + 7800) = 0xE300000000000000;
  *(v0 + 7808) = 4477781;
  *(v0 + 7816) = 0xE300000000000000;
  *(v0 + 7568) = 4477781;
  *(v0 + 7576) = 0xE300000000000000;
  *(v0 + 7592) = 0xE600000000000000;
  *(v0 + 7736) = 0xE300000000000000;
  *(v0 + 7752) = 0xE600000000000000;
  *(v0 + 7768) = 0xE200000000000000;
  *(v0 + 7608) = 0xE200000000000000;
  *(v0 + 7624) = 0xE800000000000000;
  *(v0 + 7640) = 0xE300000000000000;
  *(v0 + 7648) = 4477781;
  *(v0 + 7688) = 0xE200000000000000;
  *(v0 + 7720) = 0xE300000000000000;
  *(v0 + 7656) = 0xE300000000000000;
  *(v0 + 7672) = 0xE600000000000000;
  *(v0 + 12128) = 4477781;
  *(v0 + 12288) = 4477781;
  *(v0 + 12528) = 4477781;
  *(v0 + 12608) = 4477781;
  *(v0 + 12688) = 4477781;
  *(v0 + 12848) = 4477781;
  *(v0 + 12928) = 4477781;
  *(v0 + 13008) = 4477781;
  *(v0 + 13088) = 4477781;
  *(v0 + 13328) = 4477781;
  *(v0 + 13408) = 4477781;
  *(v0 + 13488) = 4477781;
  *(v0 + 13568) = 4477781;
  *(v0 + 13728) = 4477781;
  *(v0 + 13808) = 4477781;
  *(v0 + 13888) = 4477781;
  *(v0 + 13968) = 4477781;
  *(v0 + 6056) = 0xE300000000000000;
  *(v0 + 6120) = 0xE300000000000000;
  *(v0 + 7496) = 0xE300000000000000;
  *(v0 + 7512) = 0xE600000000000000;
  *(v0 + 7528) = 0xE200000000000000;
  *(v0 + 6136) = 0xE300000000000000;
  *(v0 + 6200) = 0xE300000000000000;
  *(v0 + 6216) = 0xE300000000000000;
  *(v0 + 7448) = 0xE200000000000000;
  *(v0 + 7464) = 0xE600000000000000;
  *(v0 + 7480) = 0xE300000000000000;
  *(v0 + 6280) = 0xE300000000000000;
  *(v0 + 6296) = 0xE300000000000000;
  *(v0 + 6360) = 0xE300000000000000;
  *(v0 + 7400) = 0xE300000000000000;
  *(v0 + 7416) = 0xE300000000000000;
  *(v0 + 7432) = 0xE600000000000000;
  *(v0 + 6376) = 0xE300000000000000;
  *(v0 + 6440) = 0xE300000000000000;
  *(v0 + 6456) = 0xE300000000000000;
  *(v0 + 6520) = 0xE300000000000000;
  *(v0 + 7352) = 0xE600000000000000;
  *(v0 + 7368) = 0xE200000000000000;
  *(v0 + 6536) = 0xE300000000000000;
  *(v0 + 6600) = 0xE300000000000000;
  *(v0 + 6616) = 0xE300000000000000;
  *(v0 + 6648) = 0xE200000000000000;
  *(v0 + 7320) = 0xE300000000000000;
  *(v0 + 7336) = 0xE300000000000000;
  *(v0 + 6680) = 0xE300000000000000;
  *(v0 + 6696) = 0xE300000000000000;
  *(v0 + 6712) = 0xE600000000000000;
  *(v0 + 7256) = 0xE300000000000000;
  *(v0 + 7272) = 0xE600000000000000;
  *(v0 + 7288) = 0xE200000000000000;
  *(v0 + 6728) = 0xE200000000000000;
  *(v0 + 6760) = 0xE300000000000000;
  *(v0 + 6776) = 0xE300000000000000;
  *(v0 + 6792) = 0xE600000000000000;
  *(v0 + 7208) = 0xE200000000000000;
  *(v0 + 7240) = 0xE300000000000000;
  *(v0 + 6808) = 0xE200000000000000;
  *(v0 + 6824) = 0xE600000000000000;
  *(v0 + 6840) = 0xE300000000000000;
  *(v0 + 7160) = 0xE300000000000000;
  *(v0 + 7176) = 0xE300000000000000;
  *(v0 + 7192) = 0xE600000000000000;
  *(v0 + 6856) = 0xE300000000000000;
  *(v0 + 6872) = 0xE600000000000000;
  *(v0 + 6888) = 0xE200000000000000;
  *(v0 + 6920) = 0xE300000000000000;
  *(v0 + 7112) = 0xE600000000000000;
  *(v0 + 7128) = 0xE200000000000000;
  *(v0 + 6936) = 0xE300000000000000;
  *(v0 + 6952) = 0xE600000000000000;
  *(v0 + 6968) = 0xE200000000000000;
  *(v0 + 7000) = 0xE300000000000000;
  *(v0 + 7080) = 0xE300000000000000;
  *(v0 + 7096) = 0xE300000000000000;
  *(v0 + 7016) = 0xE300000000000000;
  *(v0 + 7032) = 0xE600000000000000;
  *(v0 + 7048) = 0xE200000000000000;
  *(v0 + 12040) = 0xE300000000000000;
  *(v0 + 12056) = 0xE300000000000000;
  *(v0 + 12120) = 0xE300000000000000;
  *(v0 + 12136) = 0xE300000000000000;
  *(v0 + 12200) = 0xE300000000000000;
  *(v0 + 12216) = 0xE300000000000000;
  *(v0 + 12280) = 0xE300000000000000;
  *(v0 + 12296) = 0xE300000000000000;
  *(v0 + 12360) = 0xE300000000000000;
  *(v0 + 12376) = 0xE300000000000000;
  *(v0 + 12440) = 0xE300000000000000;
  *(v0 + 12456) = 0xE300000000000000;
  *(v0 + 12520) = 0xE300000000000000;
  *(v0 + 12536) = 0xE300000000000000;
  *(v0 + 12600) = 0xE300000000000000;
  *(v0 + 12616) = 0xE300000000000000;
  *(v0 + 12680) = 0xE300000000000000;
  *(v0 + 12696) = 0xE300000000000000;
  *(v0 + 12760) = 0xE300000000000000;
  *(v0 + 12776) = 0xE300000000000000;
  *(v0 + 12840) = 0xE300000000000000;
  *(v0 + 12856) = 0xE300000000000000;
  *(v0 + 12920) = 0xE300000000000000;
  *(v0 + 12936) = 0xE300000000000000;
  *(v0 + 13000) = 0xE300000000000000;
  *(v0 + 13016) = 0xE300000000000000;
  *(v0 + 13080) = 0xE300000000000000;
  *(v0 + 13096) = 0xE300000000000000;
  *(v0 + 13160) = 0xE300000000000000;
  *(v0 + 13176) = 0xE300000000000000;
  *(v0 + 13240) = 0xE300000000000000;
  *(v0 + 13256) = 0xE300000000000000;
  *(v0 + 13320) = 0xE300000000000000;
  *(v0 + 13336) = 0xE300000000000000;
  *(v0 + 13400) = 0xE300000000000000;
  *(v0 + 13416) = 0xE300000000000000;
  *(v0 + 13480) = 0xE300000000000000;
  *(v0 + 13496) = 0xE300000000000000;
  *(v0 + 13560) = 0xE300000000000000;
  *(v0 + 13576) = 0xE300000000000000;
  *(v0 + 13640) = 0xE300000000000000;
  *(v0 + 13656) = 0xE300000000000000;
  *(v0 + 13720) = 0xE300000000000000;
  *(v0 + 13736) = 0xE300000000000000;
  *(v0 + 13800) = 0xE300000000000000;
  *(v0 + 13816) = 0xE300000000000000;
  *(v0 + 13880) = 0xE300000000000000;
  *(v0 + 13896) = 0xE300000000000000;
  *(v0 + 13960) = 0xE300000000000000;
  *(v0 + 13976) = 0xE300000000000000;
  *(v0 + 13984) = 0x353036333431;
  *(v0 + 6072) = 0xE600000000000000;
  *(v0 + 6152) = 0xE600000000000000;
  *(v0 + 6184) = 0xE600000000000000;
  *(v0 + 6232) = 0xE600000000000000;
  *(v0 + 6632) = 0xE600000000000000;
  *(v0 + 6312) = 0xE600000000000000;
  *(v0 + 6328) = 0xE200000000000000;
  *(v0 + 6392) = 0xE600000000000000;
  *(v0 + 6552) = 0xE600000000000000;
  *(v0 + 6568) = 0xE200000000000000;
  *(v0 + 6584) = 0xE600000000000000;
  *(v0 + 6408) = 0xE200000000000000;
  *(v0 + 6472) = 0xE600000000000000;
  *(v0 + 6488) = 0xE200000000000000;
  *(v0 + 6504) = 0xE600000000000000;
  *(v0 + 11992) = 0xE600000000000000;
  *(v0 + 12024) = 0xE600000000000000;
  *(v0 + 12072) = 0xE600000000000000;
  *(v0 + 12152) = 0xE600000000000000;
  *(v0 + 12232) = 0xE600000000000000;
  *(v0 + 12264) = 0xE600000000000000;
  *(v0 + 12312) = 0xE600000000000000;
  *(v0 + 12392) = 0xE600000000000000;
  *(v0 + 12472) = 0xE600000000000000;
  *(v0 + 12552) = 0xE600000000000000;
  *(v0 + 12632) = 0xE600000000000000;
  *(v0 + 12712) = 0xE600000000000000;
  *(v0 + 12792) = 0xE600000000000000;
  *(v0 + 12824) = 0xE600000000000000;
  *(v0 + 12872) = 0xE600000000000000;
  *(v0 + 12952) = 0xE600000000000000;
  *(v0 + 13032) = 0xE600000000000000;
  *(v0 + 13064) = 0xE600000000000000;
  *(v0 + 13112) = 0xE600000000000000;
  *(v0 + 13192) = 0xE600000000000000;
  *(v0 + 13272) = 0xE600000000000000;
  *(v0 + 13352) = 0xE600000000000000;
  *(v0 + 13432) = 0xE600000000000000;
  *(v0 + 13512) = 0xE600000000000000;
  *(v0 + 13592) = 0xE600000000000000;
  *(v0 + 13672) = 0xE600000000000000;
  *(v0 + 13752) = 0xE600000000000000;
  *(v0 + 13832) = 0xE600000000000000;
  *(v0 + 13912) = 0xE600000000000000;
  *(v0 + 13944) = 0xE600000000000000;
  *(v0 + 13992) = 0xE600000000000000;
  *(v0 + 14000) = 22362;
  *(v0 + 6088) = 0xE200000000000000;
  *(v0 + 6168) = 0xE200000000000000;
  *(v0 + 6248) = 0xE200000000000000;
  *(v0 + 12008) = 0xE200000000000000;
  *(v0 + 12088) = 0xE200000000000000;
  *(v0 + 12168) = 0xE200000000000000;
  *(v0 + 12248) = 0xE200000000000000;
  *(v0 + 12328) = 0xE200000000000000;
  *(v0 + 12408) = 0xE200000000000000;
  *(v0 + 12488) = 0xE200000000000000;
  *(v0 + 12568) = 0xE200000000000000;
  *(v0 + 12648) = 0xE200000000000000;
  *(v0 + 12728) = 0xE200000000000000;
  *(v0 + 12808) = 0xE200000000000000;
  *(v0 + 12888) = 0xE200000000000000;
  *(v0 + 12968) = 0xE200000000000000;
  *(v0 + 13048) = 0xE200000000000000;
  *(v0 + 13128) = 0xE200000000000000;
  *(v0 + 13208) = 0xE200000000000000;
  *(v0 + 13288) = 0xE200000000000000;
  *(v0 + 13368) = 0xE200000000000000;
  *(v0 + 13448) = 0xE200000000000000;
  *(v0 + 13528) = 0xE200000000000000;
  *(v0 + 13608) = 0xE200000000000000;
  *(v0 + 13688) = 0xE200000000000000;
  *(v0 + 13768) = 0xE200000000000000;
  *(v0 + 13848) = 0xE200000000000000;
  *(v0 + 13928) = 0xE200000000000000;
  *(v0 + 14008) = 0xE200000000000000;
  *(v0 + 14016) = 0x65776261626D695ALL;
  *(v0 + 12504) = 0xE800000000000000;
  *(v0 + 14024) = 0xE800000000000000;
  qword_1002E6140 = v0;
  return sub_10007B844(__dst, v2);
}

void *sub_10014F534@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10014B92C(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x50uLL);
  }

  return result;
}

unint64_t sub_10014F584()
{
  result = qword_1002B7768;
  if (!qword_1002B7768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7768);
  }

  return result;
}

uint64_t sub_10014F5D8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return 1;
  }

  else
  {
    return sub_1001F7EA8();
  }
}

uint64_t sub_10014F60C()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_10014F63C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10014F60C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int sub_10014F66C()
{
  sub_1001F8068();
  sub_1001F6C28();
  return sub_1001F80D8();
}

Swift::Int sub_10014F6C0()
{
  sub_1001F8068();
  sub_1001F6C28();
  return sub_1001F80D8();
}

uint64_t NIOClientTCPBootstrap.channelOption<A>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v11 = v6[3];
  v12 = v6[4];
  sub_10001AE68(v6, v11);
  v13 = *(v12 + 24);
  a5[3] = v11;
  a5[4] = v12;
  sub_1000629FC(a5);
  v13(a1, a2, a3, a4, v11, v12);
  v14 = v6[6];
  a5[5] = v6[5];
  a5[6] = v14;
}

uint64_t NIOClientTCPBootstrap.init<A, B>(_:tls:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  a7[3] = a3;
  a7[4] = a5;
  v14 = sub_1000629FC(a7);
  (*(*(a3 - 8) + 32))(v14, a1, a3);
  v15 = *(a4 - 8);
  v16 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a3;
  *(v17 + 3) = a4;
  *(v17 + 4) = a5;
  *(v17 + 5) = a6;
  result = (*(v15 + 32))(&v17[v16], a2, a4);
  a7[5] = sub_10014FAE0;
  a7[6] = v17;
  return result;
}

uint64_t sub_10014F91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v11 = *(a2 - 8);
  __chkstk_darwin(a1);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100026064(v14, v18);
  sub_1000183C4(&qword_1002B7810, &qword_100210C48);
  swift_dynamicCast();
  v15 = *(a5 + 16);
  a6[3] = a2;
  a6[4] = a4;
  sub_1000629FC(a6);
  v15(v13, a3, a5);
  return (*(v11 + 8))(v13, a2);
}

uint64_t sub_10014FA60()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t NIOClientTCPBootstrap.channelInitializer(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = v4[3];
  v9 = v4[4];
  sub_10001AE68(v4, v8);
  v10 = *(v9 + 8);
  a3[3] = v8;
  a3[4] = v9;
  sub_1000629FC(a3);
  v10(a1, a2, v8, v9);
  v11 = v4[6];
  a3[5] = v4[5];
  a3[6] = v11;
}

uint64_t NIOClientTCPBootstrap.connectTimeout(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = v3[3];
  v7 = v3[4];
  sub_10001AE68(v3, v6);
  v8 = *(v7 + 40);
  a2[3] = v6;
  a2[4] = v7;
  sub_1000629FC(a2);
  v8(a1, v6, v7);
  v9 = v3[6];
  a2[5] = v3[5];
  a2[6] = v9;
}

uint64_t NIOClientTCPBootstrap.connect(host:port:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  sub_10001AE68(v3, v7);
  return (*(v8 + 48))(a1, a2, a3, v7, v8);
}

uint64_t NIOClientTCPBootstrap.connect(to:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  sub_10001AE68(v1, v3);
  return (*(v4 + 56))(a1, v3, v4);
}

uint64_t NIOClientTCPBootstrap.connect(unixDomainSocketPath:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  sub_10001AE68(v2, v5);
  return (*(v6 + 64))(a1, a2, v5, v6);
}

uint64_t NIOClientTCPBootstrap.enableTLS()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v5 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5(v2);
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
}

uint64_t sub_10014FE68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_10014FEA8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10014FF1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10014FF34(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10014FF50(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 63))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10014FF90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 62) = 0;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 63) = 1;
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

    *(result + 63) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10014FFF8(uint64_t a1, uint64_t (*a2)(void))
{
  if ((*(*v2 + 584))())
  {
    sub_100158D18(v2 + 224, v5);
    v6 = *(v2 + 249);
    swift_getObjectType();
    sub_10002E0AC();
    debugOnly(_:)();
    if ((v6 & 0xFFFFFFFB) != 0)
    {
      if (a1)
      {
        sub_10002D678();
        v7 = swift_allocError();
        *v8 = 12;
        *(v8 + 8) = 3;
LABEL_14:
        swift_errorRetain();
        sub_1000A13B0(v7);
      }
    }

    else if (*(*(v2 + 48) + 88))
    {
      a2();
      sub_10002D864();
      sub_100158E14(&type metadata for EventLoopError);
      *v11 = 2;
      swift_getObjectType();
      debugOnly(_:)();
      if (sub_10009D370())
      {
        sub_10009E508();
      }

      v12 = sub_100158E14(&type metadata for EventLoopError);
      *v13 = 2;
      (*(*v2 + 760))(v12, 2, 0);

      if (a1)
      {
        v7 = sub_100158E14(&type metadata for EventLoopError);
        *v14 = 2;
        goto LABEL_14;
      }
    }

    else
    {
      sub_10002E0AC();
      debugOnly(_:)();
      if (v6)
      {
        __break(1u);
      }

      else
      {
        *(v2 + 249) = 1;
        sub_10002E0AC();
        debugOnly(_:)();
        a2();
        if (a1)
        {
          sub_1000A13B0(0);
        }

        swift_getObjectType();
        debugOnly(_:)();
        if (sub_10009D370())
        {
          sub_10009DDCC();
        }
      }
    }
  }

  else if (a1)
  {
    sub_10002D678();
    v9 = swift_allocError();
    *v10 = 2;
    *(v10 + 8) = 3;
    swift_errorRetain();
    sub_1000A13B0(v9);
  }
}

uint64_t sub_100150360(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void), void (*a5)(uint64_t))
{
  v9 = v5;
  v11 = *(v5 + 48);
  sub_1000183C4(&qword_1002ADC18, &qword_100200960);
  v12 = swift_allocObject();
  *(v12 + 32) = v11;
  *(v12 + 40) = &protocol witness table for SelectableEventLoop;
  *(v12 + 16) = 0;
  *(v12 + 24) = -1;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 48) = 0;

  sub_10014FFF8(v12, a2);
  swift_retain_n();
  swift_retain_n();
  sub_10011DD5C();

  sub_10002C6E0(a1);

  sub_1000675D4(v9 + 224, v13);
  LODWORD(a2) = *(v9 + 249);
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)();
  if ((a2 & 0xFFFFFFFB) != 0)
  {
    a4();
    v14 = *(v9 + 249);
    swift_getObjectType();
    sub_10002E0AC();
    debugOnly(_:)();
    if (v14 > 4 || ((1 << v14) & 0x13) == 0)
    {
      a5(a1);
    }
  }
}

uint64_t sub_100150534(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a1);
  ChannelPipeline.close(mode:promise:)(2, 0, v3, v4, v5, v6, v7, v8, v10, v11);
}

uint64_t sub_100150580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 32);
  v10 = *(v4 + 40);
  v11 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v13 = sub_10012DA48(v9, 0, 255, a1, a2, a3, a4, v11, ObjectType, v10);
  swift_retain_n();
  swift_unknownObjectRetain();

  sub_10011E57C();

  return v13;
}

uint64_t sub_100150690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a6(a2, a3, a4, a5);
  sub_100180E50();
  sub_100158DF0();

  ChannelPipeline.bind(to:promise:)(a1, v7, v8);

  return v7;
}

uint64_t sub_100150700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000379FC();
  sub_100158C20();
  v9 = v8();
  sub_1000A41C8();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v6;
  v10[4] = v5;

  SelectableEventLoop.execute(_:)(a5, v10);

  return v9;
}

__objc2_class *ServerBootstrap.__allocating_init(group:)()
{
  sub_100037B94();
  ObjectType = swift_getObjectType();

  return sub_1001579C8(v2, v1, ObjectType, v0);
}

uint64_t ServerBootstrap.serverChannelOption<A>(_:value:)()
{
  sub_100158C08();
  sub_100037AAC(v0 + 80, v1);
  sub_100158CBC();
  swift_endAccess();
}

uint64_t ServerBootstrap.childChannelOption<A>(_:value:)()
{
  sub_100158C08();
  sub_100037AAC(v0 + 88, v1);
  sub_100158CBC();
  swift_endAccess();
}

uint64_t ServerBootstrap.childChannelInitializer(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);
  v4 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  sub_100037408(v5, v4);
}

uint64_t ServerBootstrap.bind(host:port:)(uint64_t a1, uint64_t a2)
{
  sub_100158EB4(a1, a2);
  v4 = sub_10009967C();

  return sub_100151384(v4, v5, v3, v2);
}

uint64_t sub_100150924(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(v2 + 32) == a1)
  {
  }

  else
  {
    ObjectType = swift_getObjectType();
    v6 = EventLoop.makePromise<A>(of:file:line:)(&type metadata for ()[1], "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 1379, ObjectType, &type metadata for ()[1], a2);

    sub_10002FEFC(v7);

    return v6;
  }

  return v3;
}

uint64_t sub_1001509C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(v2 + 40) == a1)
  {
  }

  else
  {
    ObjectType = swift_getObjectType();
    v6 = sub_1000183C4(&qword_1002ADD88, &qword_10020DE50);
    v7 = EventLoop.makePromise<A>(of:file:line:)(v6, "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 1379, ObjectType, v6, a2);

    sub_10002FF28(v8);

    return v7;
  }

  return v3;
}

double ServerBootstrap._serverChannelOptions.getter(uint64_t a1, uint64_t a2)
{
  sub_1000675D4(v2 + 80, a2);

  return result;
}

uint64_t ServerBootstrap._serverChannelOptions.setter(uint64_t a1, uint64_t a2)
{
  sub_100158D18(v2 + 80, a2);
  *(v2 + 80) = a1;
}

double ServerBootstrap._childChannelOptions.getter(uint64_t a1, uint64_t a2)
{
  sub_1000675D4(v2 + 88, a2);

  return result;
}

uint64_t ServerBootstrap._childChannelOptions.setter(uint64_t a1, uint64_t a2)
{
  sub_100158D18(v2 + 88, a2);
  *(v2 + 88) = a1;
}

__objc2_class *ServerBootstrap.__allocating_init(group:childGroup:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = object_getClass(a1);
  if (result != _TtC25ASOctaneSupportXPCService27MultiThreadedEventLoopGroup && result != _TtC25ASOctaneSupportXPCService19SelectableEventLoop || a1 == 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = object_getClass(a3);
  if (result != _TtC25ASOctaneSupportXPCService27MultiThreadedEventLoopGroup && result != _TtC25ASOctaneSupportXPCService19SelectableEventLoop || a3 == 0)
  {
    goto LABEL_18;
  }

  sub_100158DB8();
  v13 = swift_allocObject();
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  result = sub_100157A74(a1, a3, a4, v13, ObjectType, a2);
  if (result)
  {
    v15 = result;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v15;
  }

LABEL_19:
  __break(1u);
  return result;
}

void *ServerBootstrap.__allocating_init(validatingGroup:childGroup:)()
{
  sub_1000379FC();
  sub_100158DB8();
  swift_allocObject();
  swift_getObjectType();
  v0 = sub_100158D80();

  return sub_100157A74(v0, v1, v2, v3, v4, v5);
}

void *ServerBootstrap.init(validatingGroup:childGroup:)()
{
  sub_1000379FC();
  swift_getObjectType();
  v0 = sub_100158D80();

  return sub_100157A74(v0, v1, v2, v3, v4, v5);
}

uint64_t sub_100150D5C(unint64_t a1, int a2)
{
  v23[0] = 0;
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4)
  {
    *&v18 = _swiftEmptyArrayStorage;
    sub_1000343AC(0, v4, 0);
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    v7 = v3 + 32;
    v8 = a2;
    do
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        sub_10004BDE8(v20, &qword_1002ADC78, &unk_1002009C0);

        __break(1u);
        return result;
      }

      sub_100057CB8(v7, v20, &qword_1002ADC78, &unk_1002009C0);
      sub_10015739C(v20, a1, v23, v8, __src);
      sub_10004BDE8(v20, &qword_1002ADC78, &unk_1002009C0);
      *&v18 = v6;
      v10 = v6[2];
      v9 = v6[3];
      if (v10 >= v9 >> 1)
      {
        sub_1000343AC((v9 > 1), v10 + 1, 1);
        v8 = a2;
        v6 = v18;
      }

      ++v5;
      v6[2] = v10 + 1;
      memcpy(&v6[10 * v10 + 4], __src, 0x50uLL);
      v7 += 80;
    }

    while (v4 != v5);

    v12 = v23[0];
    v2 = v13;
    *v13 = v6;
    if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {

    *v2 = _swiftEmptyArrayStorage;
LABEL_10:
    v19 = &type metadata for ChannelOptions.Types.SocketOption;
    *&v18 = a1;
    v17 = &type metadata for Int32;
    LODWORD(v16) = a2;
    sub_10003708C(&v18, v20);
    sub_10003708C(&v16, v21);
    sub_10003708C(v20, __src);
    sub_10003708C(v21, &__src[2]);
    *&__src[4] = sub_1001576B0;
    *(&__src[4] + 1) = 0;
    sub_100032144();
    sub_1000322FC();
    result = sub_100158D50();
    *v2 = __src;
  }

  return result;
}

uint64_t sub_100150FAC(int a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v29 = _swiftEmptyArrayStorage;
    v17 = v2;
    sub_1000343AC(0, v3, 0);
    result = v17;
    v5 = 0;
    v15 = 0;
    v6 = _swiftEmptyArrayStorage;
    v7 = v17 + 32;
    v8 = a1;
    do
    {
      if (v5 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      sub_100057CB8(v7, v26, &qword_1002ADC78, &unk_1002009C0);
      sub_10003708C(v26, __src);
      sub_10003708C(v27, &__src[2]);
      sub_10004794C();
      v9 = swift_allocObject();
      *(v9 + 16) = v27[2];
      *&__src[4] = sub_1001581B8;
      *(&__src[4] + 1) = v9;
      sub_100057CB8(__src, __dst, &qword_1002ADC78, &unk_1002009C0);

      sub_10003708C(__dst, v24);
      sub_100019CCC(&__dst[2]);
      sub_10002F9B0(v24, __dst);
      if (swift_dynamicCast())
      {
        v21 = &type metadata for ChannelOptions.Types.BacklogOption;
        v19 = &type metadata for Int32;
        LODWORD(v18) = v8;
        sub_100019CCC(v24);
        sub_10004BDE8(__src, &qword_1002ADC78, &unk_1002009C0);
        sub_10003708C(&v20, __dst);
        sub_10003708C(&v18, &__dst[2]);
        sub_10003708C(__dst, v28);
        sub_10003708C(&__dst[2], &v28[2]);
        sub_100158CA4();
        v15 = 1;
      }

      else
      {
        LOBYTE(v20) = 1;
        sub_100019CCC(v24);
        memcpy(__dst, __src, sizeof(__dst));
        v16 = __dst[4];
        sub_10003708C(__dst, &v20);
        sub_10003708C(&__dst[2], v22);
        sub_10003708C(&v20, v28);
        sub_10003708C(v22, &v28[2]);
        sub_10004794C();
        v10 = swift_allocObject();
        *(v10 + 16) = v16;
        *&v28[4] = sub_1001581C0;
        *(&v28[4] + 1) = v10;
      }

      v29 = v6;
      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        sub_1000343AC((v11 > 1), v12 + 1, 1);
        v8 = a1;
        v6 = v29;
      }

      ++v5;
      v6[2] = v12 + 1;
      memcpy(&v6[10 * v12 + 4], v28, 0x50uLL);
      v7 += 80;
      result = v17;
    }

    while (v3 != v5);

    v1 = v13;
    *v13 = v6;
    if ((v15 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {

    *v1 = _swiftEmptyArrayStorage;
LABEL_13:
    *(&__src[1] + 1) = &type metadata for ChannelOptions.Types.BacklogOption;
    *(&__dst[1] + 1) = &type metadata for Int32;
    LODWORD(__dst[0]) = a1;
    sub_10003708C(__src, v26);
    sub_10003708C(__dst, v27);
    sub_10003708C(v26, v28);
    sub_10003708C(v27, &v28[2]);
    sub_100158CA4();
    sub_100032144();
    sub_1000322FC();
    result = sub_100158D50();
    *v1 = v28;
  }

  return result;
}

uint64_t ServerBootstrap.serverChannelInitializer(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v4 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  sub_100037408(v5, v4);
}

uint64_t sub_100151384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = static SocketAddress.makeAddressResolvingHost(_:port:)(a2, a3, a4);
  __chkstk_darwin(v5);
  v9[2] = v6;
  sub_10012F3D4();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;

  sub_1001518FC(sub_100158B7C, v9, sub_100158B28, v7);
  sub_100013EFC();

  return a1;
}

__objc2_class *sub_1001514FC(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v5 = SocketAddress.init(unixDomainSocketPath:)(a2, a3);
  __chkstk_darwin(v5);
  v10[2] = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = v5;

  v8 = sub_1001518FC(sub_100158B7C, v10, sub_100158B28, v7);

  return v8;
}

__objc2_class *ServerBootstrap.bind(unixDomainSocketPath:)()
{
  sub_100037B94();

  return sub_1001514FC(v1, v2, v0);
}

uint64_t sub_1001517B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ServerSocketChannel(0);

  swift_unknownObjectRetain();
  return sub_10017C30C(a4, a1, a2, a3);
}

uint64_t sub_100151828(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = EventLoop.makePromise<A>(of:file:line:)(&type metadata for ()[1], "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 265, ObjectType, &type metadata for ()[1], a2);

  sub_100150360(v5, sub_100180E50, sub_1001582B4, sub_100180EC0, sub_100180ED8);

  return v4;
}

__objc2_class *sub_1001518FC(uint64_t (*a1)(void *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_getObjectType();
  sub_100158CEC();
  v7 = v6();
  v9 = v8;
  v10 = v4[4];
  v38 = v5[5];
  sub_100037C40((v5 + 10), v43);
  v11 = v5[10];
  v13 = v5[6];
  v12 = v5[7];
  v41 = v9;
  sub_10004794C();
  v14 = swift_allocObject();
  if (v13)
  {
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    v15 = sub_100158BB0;
  }

  else
  {
    *(v14 + 16) = v7;
    *(v14 + 24) = v9;
    swift_unknownObjectRetain();
    v15 = sub_1001586BC;
  }

  v16 = v15;
  sub_10004794C();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;
  v19 = v5[8];
  v18 = v5[9];
  sub_100037C40((v5 + 11), v42);
  v20 = v5[11];
  result = object_getClass(v7);
  if (result == _TtC25ASOctaneSupportXPCService19SelectableEventLoop)
  {
    swift_unknownObjectRetain();

    sub_10003742C(v13, v12);
    v22 = sub_1000701E4();
    sub_10003742C(v22, v23);

    v24 = a1(v7, v10, v38);
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    v25 = swift_allocObject();
    v25[2] = v11;
    v25[3] = v24;
    v25[4] = sub_100158BAC;
    v25[5] = v17;
    v25[6] = v19;
    v25[7] = v18;
    v25[8] = v20;
    v25[9] = a3;
    v25[10] = a4;
    v25[11] = v7;
    v25[12] = v41;
    v26 = *(v41 + 32);
    swift_unknownObjectRetain();
    v27 = sub_1000701E4();
    sub_10003742C(v27, v28);

    v29 = sub_1000183C4(&qword_1002B46D8, &qword_100210E70);
    v30 = v26(sub_100158774, v25, v29, ObjectType, v41);

    sub_100158C20();
    sub_100112C40(v31, v32, v33, 321, v30);
    sub_100158DFC();

    v34 = sub_1000701E4();
    sub_100037408(v34, v35);
    swift_unknownObjectRelease();

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100151C30(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for ServerSocketChannel(0);

  swift_unknownObjectRetain();
  return sub_10017C454(a1, a2, a3);
}

__n128 *sub_100151CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a4;

  v6 = sub_100151DCC(sub_100158954, v5, sub_1001D5D60, &unk_10028ED20, sub_1001589A0);

  return v6;
}

__n128 *sub_100151DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000379FC();
  sub_100158C20();
  v10 = v9();
  sub_1000A41C8();
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = v7;
  v11[4] = v6;

  sub_100158C20();
  v15 = sub_100112C28(v12, v13, v14, 405, v10, a5, v11);

  return v15;
}

void sub_100151E90(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  EventLoop.makeSucceededFuture<A>(_:file:line:)();
  *a2 = v3;
}

uint64_t sub_100151EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = sub_10004292C("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelOption.swift", 115, 2, 368);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = 0;

  sub_1001577B0(v20, v19, a2, &unk_10028ECA8, &unk_10028ECD0, sub_100158BD8, sub_10008149C);

  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a2;

  v22 = sub_100112C28("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 307, v19, sub_100158BE0, v21);

  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;

  sub_10003742C(a5, a6);

  v24 = sub_100112C28("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 309, v22, sub_100158864, v23);

  v25 = swift_allocObject();
  v25[2] = a8;
  v25[3] = a10;
  v25[4] = a11;
  v25[5] = a12;
  v25[6] = a2;
  swift_retain_n();

  swift_unknownObjectRetain();
  sub_100112C28("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 313, v24, sub_1001588B0, v25);

  v26 = swift_allocObject();
  *(v26 + 16) = sub_100158AE0;
  *(v26 + 24) = a2;
  v27 = sub_10019F88C("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 315, sub_100158BB4, v26);

  v28 = *(v27 + 40);
  v29 = *(v27 + 48);
  sub_1000183C4(&qword_1002B46D8, &qword_100210E70);
  v30 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v32 = sub_10012DE0C(v28, 0, 0, 255, "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 317, v30, ObjectType, v29);
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_unknownObjectRetain();

  sub_1001210E8();

  swift_unknownObjectRelease();

  *a9 = v32;
  return result;
}

uint64_t sub_1001522E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100180E50();
  type metadata accessor for ServerBootstrap.AcceptHandler();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  sub_10003742C(a2, a3);

  v10 = sub_1000E5F74(v9, 0x6148747065636341, 0xED000072656C646ELL, 1, 0x8000000000000000, v7);

  return v10;
}

uint64_t sub_1001523B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100178858(a1, 2, 0);
  swift_getObjectType();
  sub_1000183C4(&qword_1002ADD50, &unk_10020E140);
  return EventLoop.makeFailedFuture<A>(_:file:line:)(a1);
}

uint64_t sub_100152448(uint64_t a1, uint64_t a2)
{
  sub_10002F9B0(a2, v4);
  if (swift_dynamicCast())
  {
    v2 = sub_10009B39C();
    swift_getObjectType();
    v4[0] = v2;
    ChannelOutboundInvoker.close(mode:file:line:)();
    swift_unknownObjectRelease();

    swift_retain_n();
    sub_10011DD5C();
  }

  return ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
}

uint64_t sub_10015254C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for SocketChannel(0);
  v31 = a2;
  sub_100031058(v6, v7, v8, v9, v10);
  v12 = v11;
  v13 = *(a1 + 32);
  v14 = *(v13 + 48);
  v32 = *(v13 + 56);
  v15 = *(v11 + 48);
  v17 = v3[2];
  v16 = v3[3];
  v18 = swift_allocObject();
  if (v17)
  {
    *(v18 + 16) = v17;
    *(v18 + 24) = v16;
    v19 = sub_100158BB0;
  }

  else
  {
    *(v18 + 16) = v15;
    *(v18 + 24) = &protocol witness table for SelectableEventLoop;

    v19 = sub_100157F08;
  }

  v20 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v18;
  swift_getObjectType();
  if (v15 == v14)
  {
    v26 = v3[4];
    v30 = sub_10004292C("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelOption.swift", 115, 2, 368);
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = 0;

    swift_unknownObjectRetain();
    sub_10003742C(v17, v16);

    sub_1001577B0(v27, v30, v12, &unk_10028E348, &unk_10028E370, sub_100158108, sub_100081370);

    v28 = swift_allocObject();
    v28[2] = v15;
    v28[3] = &protocol witness table for SelectableEventLoop;
    v28[4] = sub_100158BAC;
    v28[5] = v21;
    v28[6] = v12;

    sub_100112C28("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 354, v30, sub_100157FDC, v28);
  }

  else
  {
    v22 = swift_allocObject();
    v22[2] = v3;
    v22[3] = v12;
    v22[4] = v15;
    v22[5] = &protocol witness table for SelectableEventLoop;
    v22[6] = sub_100158BAC;
    v22[7] = v21;
    swift_retain_n();
    swift_unknownObjectRetain();
    sub_10003742C(v17, v16);

    sub_100152F78(sub_100157F5C, v22);

    sub_100150924(v14, v32);
  }

  debugOnly(_:)();
  sub_10002EE44(v31, v33);
  v23 = swift_allocObject();
  *(v23 + 16) = v14;
  *(v23 + 24) = v32;
  *(v23 + 32) = a1;
  v24 = v33[1];
  *(v23 + 40) = v33[0];
  *(v23 + 56) = v24;
  *(v23 + 72) = v34[0];
  *(v23 + 81) = *(v34 + 9);
  swift_unknownObjectRetain();

  sub_100150580("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 363);

  v25 = swift_allocObject();
  v25[2] = v14;
  v25[3] = v32;
  v25[4] = v3;
  v25[5] = a1;
  v25[6] = v12;
  swift_unknownObjectRetain();

  sub_10011DD5C();

  swift_unknownObjectRelease();
}

void sub_100152B1C(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  EventLoop.makeSucceededFuture<A>(_:file:line:)();
  *a2 = v3;
}

uint64_t sub_100152B84(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _UNKNOWN **), uint64_t a4, uint64_t a5)
{
  swift_getObjectType();
  debugOnly(_:)();
  return a3(a5, &off_10027FE88);
}

uint64_t sub_100152C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  debugOnly(_:)();
  sub_10009B39C();
  v5 = v4;
  ObjectType = swift_getObjectType();
  LOBYTE(v5) = (*(v5 + 88))(ObjectType, v5);
  swift_unknownObjectRelease();
  if (v5)
  {
    ChannelHandlerContext.fireChannelRead(_:)();
    swift_getObjectType();
    swift_unknownObjectRetain();
    EventLoop.makeSucceededFuture<A>(_:file:line:)();
    v8 = v7;
    swift_unknownObjectRelease();
  }

  else
  {
    swift_getObjectType();
    sub_10002D678();
    v9 = swift_allocError();
    *v10 = 2;
    *(v10 + 8) = 3;
    v8 = EventLoop.makeFailedFuture<A>(_:file:line:)(v9);
  }

  return v8;
}

uint64_t sub_100152D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  debugOnly(_:)();
  return sub_100153120(a5, a6, a1);
}

__n128 *sub_100152E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 32);
  v12 = sub_10004292C("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelOption.swift", 115, 2, 368);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = 0;

  sub_1001577B0(v13, v12, a2, &unk_10028E348, &unk_10028E370, sub_100158108, sub_100081370);

  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a2;

  swift_unknownObjectRetain();

  v15 = sub_100112C28("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 354, v12, sub_100158AB4, v14);

  return v15;
}

__n128 *sub_100152F78(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_100150700(sub_100158BB8, v4, sub_100042948, &unk_10028E3E8, sub_10015814C);

  v6 = sub_100112CF0("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoop.swift", 111, 2, 582, v5);

  return v6;
}

uint64_t sub_10015304C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_100150700(sub_100158574, v4, sub_100042964, &unk_10028E9D8, sub_1001585C0);

  v6 = sub_100112C58("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoop.swift", 111, 2, 582, v5);

  return v6;
}

uint64_t sub_100153120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100180E50();
  ChannelPipeline.close(mode:promise:)(2, 0, v5, v6, v7, v8, v9, v10, v20, v21);

  v11 = *(a1 + 32);
  v12 = *(v11 + 56);
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 16);
  swift_unknownObjectRetain();
  LOBYTE(v12) = v14(ObjectType, v12);
  swift_unknownObjectRelease();
  if (v12)
  {
    return ChannelHandlerContext.fireErrorCaught(_:)();
  }

  v16 = *(v11 + 56);
  v17 = swift_getObjectType();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a3;
  v19 = *(v16 + 24);
  swift_unknownObjectRetain();

  swift_errorRetain();
  v19(sub_100157EE0, v18, v17, v16);
  swift_unknownObjectRelease();
}

uint64_t sub_10015327C()
{
  sub_100037408(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t sub_1001532A4()
{
  sub_10015327C();

  return swift_deallocClassInstance();
}

uint64_t *ServerBootstrap.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100037408(v0[6], v0[7]);
  sub_100037408(v0[8], v0[9]);

  return v0;
}

uint64_t ServerBootstrap.__deallocating_deinit()
{
  ServerBootstrap.deinit();
  sub_100158DB8();

  return swift_deallocClassInstance();
}

__n128 *(*sub_100153350())(uint64_t a1, uint64_t a2)
{
  v1 = v0[4];
  v2 = v0[5];
  if (v1)
  {
    v3 = swift_allocObject();
    v3[2] = v0;
    v3[3] = v1;
    v3[4] = v2;

    v4 = sub_10015846C;
  }

  else
  {
    v4 = v0[6];
  }

  sub_10003742C(v1, v2);
  return v4;
}

__n128 *sub_1001533E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + 48);

  v10 = v9(a1, a2);

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a4;
  v11[5] = a5;

  swift_unknownObjectRetain();

  v12 = sub_100112C28("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 445, v10, sub_1001584B0, v11);

  return v12;
}

double ClientBootstrap._channelOptions.getter(uint64_t a1, uint64_t a2)
{
  sub_1000675D4(v2 + 64, a2);

  return result;
}

uint64_t ClientBootstrap._channelOptions.setter(uint64_t a1, uint64_t a2)
{
  sub_100158D18(v2 + 64, a2);
  *(v2 + 64) = a1;
}

void *ClientBootstrap.__allocating_init(validatingGroup:)()
{
  sub_100037B94();
  swift_allocObject();
  v1 = sub_100158DF0();
  return ClientBootstrap.init(validatingGroup:)(v1, v0);
}

void *ClientBootstrap.init(validatingGroup:)(void *a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 72) = 10000000000;
  Class = object_getClass(a1);
  if (Class != _TtC25ASOctaneSupportXPCService27MultiThreadedEventLoopGroup && Class != _TtC25ASOctaneSupportXPCService19SelectableEventLoop || a1 == 0)
  {
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
    swift_unknownObjectRetain();
    *(v2 + 64) = sub_1000336E8();
    swift_beginAccess();
    sub_100150D5C(0x100000006uLL, 1);
    swift_endAccess();
    swift_unknownObjectRelease();
    *(v2 + 48) = sub_1001537A4;
    *(v2 + 56) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 80) = 0u;
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0;
    *(v2 + 120) = 0xF000000000000007;
  }

  return v3;
}

uint64_t ClientBootstrap.channelInitializer(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t ClientBootstrap.protocolHandlers(_:)(uint64_t result, uint64_t a2)
{
  if (*(v2 + 32))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 32) = result;
    *(v2 + 40) = a2;
  }

  return result;
}

uint64_t ClientBootstrap.channelOption<A>(_:value:)()
{
  sub_100158C08();
  sub_100037AAC(v0 + 64, v1);
  sub_100158CBC();
  swift_endAccess();
}

uint64_t ClientBootstrap.resolver(_:)(uint64_t a1, uint64_t a2)
{
  sub_100037AAC(v2 + 80, a2);
  sub_100157C80(a1, v2 + 80);
  swift_endAccess();
}

uint64_t ClientBootstrap.bind(to:)(uint64_t a1)
{
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
  sub_10002D83C(v3);
}

uint64_t ClientBootstrap.connect(host:port:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  sub_1000379FC();
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 8))(ObjectType, v8);
  v12 = v11;
  sub_100037C40(v3 + 80, v20);
  sub_100057CB8(v3 + 80, &v18, &qword_1002B7818, &qword_100210CD8);
  if (v19)
  {
    sub_10002DD3C(&v18, v21);
  }

  else
  {
    v13 = type metadata accessor for GetaddrinfoResolver();
    sub_1000A41C8();
    swift_allocObject();
    sub_100158DF0();
    v14 = swift_unknownObjectRetain();
    v15 = sub_10004A284(v14, v12, 1, 6);
    v21[3] = v13;
    v21[4] = &off_100281308;
    v21[0] = v15;
    if (v19)
    {
      sub_10004BDE8(&v18, &qword_1002B7818, &qword_100210CD8);
    }
  }

  sub_100026064(v21, &v18);
  v16 = *(v3 + 72);
  type metadata accessor for HappyEyeballsConnector();
  swift_allocObject();
  swift_unknownObjectRetain();

  sub_10018F3C8(&v18, v10, v12, v5, v4, a3, v16, 50000000, 250000000, sub_100157CF0, v6);
  sub_10018F538();
  sub_1000A3FB8();

  swift_unknownObjectRelease();
  sub_100019CCC(v21);
  return a3;
}

uint64_t sub_100153B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  (*(*(a2 + 8) + 80))(ObjectType);
  swift_getObjectType();
  EventLoop.makeSucceededFuture<A>(_:file:line:)();
  sub_1000A3FB8();
  swift_unknownObjectRelease();
  return a3;
}

__objc2_class *sub_100153BD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = object_getClass(a1);
  if (result == _TtC25ASOctaneSupportXPCService19SelectableEventLoop)
  {
    type metadata accessor for SocketChannel(0);
    swift_allocObject();
    swift_unknownObjectRetain();
    sub_10017C60C();

    sub_100154044();
    v7 = v6;

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100153CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a2 + 8);
  v8 = *(v7 + 80);
  v8(ObjectType, v7);
  v10 = v9;
  v11 = swift_getObjectType();
  v12 = EventLoop.makePromise<A>(of:file:line:)(&type metadata for ()[1], "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 598, v11, &type metadata for ()[1], v10);
  swift_unknownObjectRelease();
  v13 = *(v7 + 24);

  v13(a3, v12, ObjectType, v7);

  v8(ObjectType, v7);
  v15 = v14;
  v16 = swift_getObjectType();
  v17 = *(v3 + 72);
  v18 = swift_allocObject();
  v18[2] = v12;
  v18[3] = v3;
  v18[4] = a1;
  v18[5] = a2;
  v19 = *(v15 + 48);

  swift_unknownObjectRetain();
  v19(v17, sub_10015868C, v18, &type metadata for ()[1], v16, v15);

  swift_unknownObjectRelease();
  swift_retain_n();
  swift_retain_n();
  sub_10011DE78();

  return v12;
}

uint64_t sub_100153F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 72);
  sub_10002D678();
  v4 = swift_allocError();
  *v5 = v3;
  *(v5 + 8) = 0;
  swift_errorRetain();
  sub_1000A13B0(v4);

  ObjectType = swift_getObjectType();
  v7 = static NIOHTTPObjectAggregatorError.endingIgnoredMessage.getter();
  return Channel.close(mode:promise:)(v7, 0, ObjectType);
}

uint64_t sub_100153FCC()
{
  sub_10002D864();
  v0 = swift_allocError();
  *v1 = 1;
  swift_errorRetain();
  sub_1000A13B0(v0);
}

void sub_100154044()
{
  sub_1000A409C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_100153350();
  v10 = v9;
  sub_1000675D4(v0 + 64, v9);
  v11 = *(v0 + 64);
  v12 = *(v7 + 48);

  if (sub_1000B3348())
  {
    sub_100158CDC();
    v17 = sub_10004292C(v13, v14, v15, v16);
    sub_10004794C();
    v18 = swift_allocObject();
    *(v18 + 16) = v11;
    *(v18 + 24) = 0;

    sub_100158C8C();
    sub_1001577B0(v18, v17, v7, v19, v20, v21, sub_100081370);

    v22 = swift_allocObject();
    v22[2] = v1;
    v22[3] = v7;
    v22[4] = v8;
    v22[5] = v10;

    sub_100158C20();
    v27 = sub_100112C28(v23, v24, v25, 716, v17, v26, v22);

    v28 = swift_allocObject();
    v28[2] = v12;
    v28[3] = &protocol witness table for SelectableEventLoop;
    v28[4] = v7;
    v28[5] = v5;
    v28[6] = v3;

    sub_100158C20();
    sub_100112C28(v29, v30, v31, 724, v27, v32, v28);

    sub_10004794C();
    v33 = swift_allocObject();
    *(v33 + 16) = sub_100158AE0;
    *(v33 + 24) = v7;

    sub_100158C20();
    v38 = sub_10019F88C(v34, v35, v36, 727, v37, v33);

    sub_100158C20();
    sub_10011711C(v39, v40, v41, 729, v38, v7);
  }

  else
  {
    v42 = swift_allocObject();
    v42[2] = v12;
    v42[3] = &protocol witness table for SelectableEventLoop;
    v42[4] = v11;
    v42[5] = v7;
    v42[6] = v0;
    v42[7] = v8;
    v42[8] = v10;
    v42[9] = v5;
    v42[10] = v3;

    sub_10015304C(sub_10015851C, v42);
  }

  sub_100013EFC();

  sub_1000814C0();
}

__objc2_class *ClientBootstrap.connect(to:)(unint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 8))(ObjectType, v4);
  v8 = v7;
  v9 = *(&unk_100210E7C + ((a1 >> 60) & 0xC));
  sub_10004794C();
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = a1;

  v11 = sub_100153BD0(v6, v8, v9, sub_100157CF8, v10);
  swift_unknownObjectRelease();

  return v11;
}

__objc2_class *ClientBootstrap.connect(unixDomainSocketPath:)()
{
  sub_100037B94();

  v2 = SocketAddress.init(unixDomainSocketPath:)(v1, v0);
  v3 = ClientBootstrap.connect(to:)(v2);

  return v3;
}

__objc2_class *ClientBootstrap.withConnectedSocket(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_100158CEC();
  v4 = v3();
  v6 = v5;
  v7 = sub_100153350();
  v9 = v8;
  result = object_getClass(v4);
  if (result == _TtC25ASOctaneSupportXPCService19SelectableEventLoop)
  {
    type metadata accessor for SocketChannel(0);
    swift_allocObject();
    sub_100013EFC();
    swift_unknownObjectRetain();
    sub_10017C6DC();
    sub_100158E68();
    swift_getObjectType();
    sub_100158CFC();
    if (v11())
    {
      sub_100154750();
      sub_100158DFC();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1000DFBD8();
      v12 = swift_allocObject();
      v12[2] = v4;
      v12[3] = v6;
      v12[4] = v1;
      v12[5] = v2;
      v12[6] = v7;
      v12[7] = v9;
      swift_unknownObjectRetain();

      sub_1000183C4(&qword_1002ADD50, &unk_10020E140);
      v1 = v4;
      EventLoop.flatSubmit<A>(_:)();
      sub_100158DFC();
      swift_unknownObjectRelease();
    }

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100154750()
{
  sub_1000A409C();
  sub_100158DC8(v5);
  sub_100158BE8();
  sub_100158E74();
  debugOnly(_:)();
  sub_1000675D4(v3 + 64, v6);
  sub_100158CDC();
  v11 = sub_10004292C(v7, v8, v9, v10);
  sub_10004794C();
  v12 = swift_allocObject();
  sub_100158E94(v12);
  sub_100158C8C();
  sub_1001577B0(v4, v11, v0, v13, v14, v15, sub_100081370);

  sub_1000A41C8();
  v16 = swift_allocObject();
  v16[2] = v2;
  v16[3] = v1;
  v16[4] = v0;

  v17 = sub_100158BE8();
  v21 = sub_100112C28(v17, v18, v19, 673, v11, v20, v16);

  sub_1000A41C8();
  v22 = swift_allocObject();
  sub_100158E30(v22);

  swift_unknownObjectRetain();
  v23 = sub_100158BE8();
  sub_100112C28(v23, v24, v25, 675, v21, v26, v11);

  sub_10004794C();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10015844C;
  *(v27 + 24) = v0;
  sub_100158BE8();
  sub_100158E74();
  v34 = sub_10019F88C(v28, v29, v30, v31, v32, v33);

  v35 = sub_100158BE8();
  sub_100117134(v35, v36, v37, 682, v34, v0);
  sub_1000A3FB8();

  sub_1000814C0();
}

uint64_t sub_100154970(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  debugOnly(_:)();
  v4 = EventLoop.makePromise<A>(of:file:line:)(&type metadata for ()[1], "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 677, ObjectType, &type metadata for ()[1], a2);

  sub_100150360(v5, sub_100180E50, sub_1001582B4, sub_100180EC0, sub_100180ED8);

  return v4;
}

__n128 *sub_100154AB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _UNKNOWN **), uint64_t a4)
{
  v7 = *(a1 + 120);
  if ((~v7 & 0xF000000000000007) == 0)
  {
    return a3(a2, &off_10027FE88);
  }

  v9 = sub_100150690(v7, "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 718, sub_1000375DC);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a2;

  v11 = sub_100112C28("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 718, v9, sub_100158BE0, v10);

  sub_10002D83C(v7);
  return v11;
}

__n128 *sub_100154BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();
  debugOnly(_:)();
  return sub_100151DCC(a4, a5, sub_1001D5D60, &unk_10028E960, sub_100158BE4);
}

uint64_t sub_100154C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_getObjectType();
  debugOnly(_:)();
  v16 = sub_10004292C("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelOption.swift", 115, 2, 368);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = 0;

  sub_1001577B0(v17, v16, a4, &unk_10028E348, &unk_10028E370, sub_100158108, sub_100081370);

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a4;
  v18[4] = a6;
  v18[5] = a7;

  v19 = sub_100112C28("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 716, v16, sub_100158BDC, v18);

  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a4;
  v20[5] = a8;
  v20[6] = a9;

  swift_unknownObjectRetain();

  sub_100112C28("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 724, v19, sub_100158B04, v20);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_100158AE0;
  *(v21 + 24) = a4;

  v22 = sub_10019F88C("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 727, sub_100158BB4, v21);

  v23 = sub_10011711C("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 729, v22, a4);

  return v23;
}

uint64_t *ClientBootstrap.deinit()
{
  swift_unknownObjectRelease();
  sub_100037408(v0[4], v0[5]);

  sub_10004BDE8((v0 + 10), &qword_1002B7818, &qword_100210CD8);
  sub_10002D83C(v0[15]);
  return v0;
}

uint64_t ClientBootstrap.__deallocating_deinit()
{
  ClientBootstrap.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100154FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  result = ClientBootstrap.channelInitializer(_:)(a1, a2);
  *a3 = v5;
  return result;
}

uint64_t sub_100155024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  result = ClientBootstrap.protocolHandlers(_:)(a1, a2);
  *a3 = v5;
  return result;
}

uint64_t sub_100155050@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = ClientBootstrap.channelOption<A>(_:value:)();
  *a1 = v3;
  return result;
}

uint64_t sub_10015507C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = ClientBootstrap.connectTimeout(_:)(a1);
  *a2 = v4;
  return result;
}

__objc2_class *sub_100155170(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  result = object_getClass(a1);
  if (result != _TtC25ASOctaneSupportXPCService27MultiThreadedEventLoopGroup && result != _TtC25ASOctaneSupportXPCService19SelectableEventLoop || a1 == 0)
  {
    __break(1u);
  }

  else
  {
    sub_10009967C();
    swift_allocObject();
    sub_100013EFC();
    v11 = swift_unknownObjectRetain();
    result = a4(v11, a2);
    if (result)
    {
      sub_100013EFC();
      swift_unknownObjectRelease();
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100155270(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DatagramChannel(0);

  return sub_10017C514(v3, a2);
}

uint64_t sub_1001552C4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = EventLoop.makePromise<A>(of:file:line:)(&type metadata for ()[1], "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 846, ObjectType, &type metadata for ()[1], a2);

  sub_100150360(v5, sub_100180E50, sub_1001582B4, sub_100180EC0, sub_100180ED8);

  return v4;
}

__objc2_class *sub_100155398(void (*a1)(__n128 *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_getObjectType();
  sub_100158CEC();
  v8 = v7();
  v10 = v9;
  v11 = *(v4 + 32);
  v12 = *(v5 + 40);
  sub_10004794C();
  v13 = swift_allocObject();
  if (v11)
  {
    *(v13 + 16) = v11;
    *(v13 + 24) = v12;
    v14 = sub_100158BB0;
  }

  else
  {
    *(v13 + 16) = v8;
    *(v13 + 24) = v10;
    swift_unknownObjectRetain();
    v14 = sub_100158334;
  }

  v15 = v14;
  sub_10004794C();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v13;
  sub_100037C40(v5 + 48, v51);
  v17 = *(v5 + 48);
  result = object_getClass(v8);
  if (result == _TtC25ASOctaneSupportXPCService19SelectableEventLoop)
  {
    swift_unknownObjectRetain();
    sub_10003742C(v11, v12);

    a1(v8);
    sub_100158E68();
    swift_unknownObjectRelease();
    swift_getObjectType();
    sub_100158CFC();
    if (v19())
    {
      sub_100158BE8();
      debugOnly(_:)();
      sub_100158CDC();
      v24 = sub_10004292C(v20, v21, v22, v23);
      sub_10004794C();
      v25 = swift_allocObject();
      *(v25 + 16) = v17;
      *(v25 + 24) = 0;

      sub_1001577B0(v25, v24, a1, &unk_10028E730, &unk_10028E758, sub_100158BD8, sub_10008149C);

      sub_1000A41C8();
      v26 = swift_allocObject();
      v26[2] = sub_100158BAC;
      v26[3] = v16;
      v26[4] = a1;
      swift_retain_n();

      v27 = sub_100158BE8();
      v31 = sub_100112C28(v27, v28, v29, 930, v24, v30, v26);

      v32 = swift_allocObject();
      v32[2] = v8;
      v32[3] = v10;
      v32[4] = a3;
      v32[5] = a4;
      v32[6] = a1;
      swift_unknownObjectRetain();

      v33 = sub_100158BE8();
      v37 = sub_100112C28(v33, v34, v35, 932, v31, v36, v32);

      sub_10004794C();
      v38 = swift_allocObject();
      *(v38 + 16) = sub_100158AE0;
      *(v38 + 24) = a1;

      v39 = sub_100158BE8();
      v40 = v37;
      v44 = sub_10019F88C(v39, v41, v42, 935, v43, v38);

      swift_unknownObjectRetain();
      v45 = sub_100158BE8();
      sub_1001171E0(v45, v46, v47, 937, v44, v8, v10);
    }

    else
    {
      v48 = swift_allocObject();
      v48[2] = v8;
      v48[3] = v10;
      v48[4] = v17;
      v48[5] = a1;
      v48[6] = sub_100158BAC;
      v48[7] = v16;
      v48[8] = a3;
      v48[9] = a4;
      swift_unknownObjectRetain();

      sub_1000183C4(&qword_1002ADD50, &unk_10020E140);
      v40 = v8;
      EventLoop.flatSubmit<A>(_:)();
    }

    sub_100158DFC();
    swift_unknownObjectRelease();

    return v40;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__objc2_class *DatagramBootstrap.bind(host:port:)(uint64_t a1, uint64_t a2)
{
  sub_100158EB4(a1, a2);
  v4 = sub_10009967C();

  return sub_1001558D8(v4, v5, v3, v2);
}

__objc2_class *sub_1001558D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = static SocketAddress.makeAddressResolvingHost(_:port:)(a2, a3, a4);
  __chkstk_darwin(v4);
  v9[2] = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;

  v7 = sub_100155398(sub_100158B44, v9, sub_100158B24, v6);

  return v7;
}

__objc2_class *sub_100155A6C(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v5 = SocketAddress.init(unixDomainSocketPath:)(a2, a3);
  __chkstk_darwin(v5);
  v10[2] = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = v5;

  v8 = sub_100155398(sub_100158B44, v10, sub_100158B24, v7);

  return v8;
}

uint64_t sub_100155C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t, uint64_t))
{
  v12[2] = a1;
  sub_10012F3D4();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  swift_retain_n();
  v10 = a5(a3, v12, a4, v9);

  return v10;
}

__objc2_class *DatagramBootstrap.bind(unixDomainSocketPath:)()
{
  sub_100037B94();

  return sub_100155A6C(v1, v2, v0);
}

uint64_t sub_100155D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1000379FC();
  if (v8)
  {
    sub_10013E9CC(v7, v6);
  }

  return a5(v5, v7, v6);
}

uint64_t sub_100155E64(uint64_t a1, unint64_t a2)
{
  v2 = *(&unk_100210E7C + ((a2 >> 60) & 0xC));
  type metadata accessor for DatagramChannel(0);
  swift_allocObject();

  return sub_10017DFB0(v3, v2);
}

__n128 *sub_100155ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v6 = sub_1001D5D60("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 910);
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  v8 = sub_100112C28("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 910, v6, sub_10015832C, v7);

  return v8;
}

void sub_100155FF4(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  EventLoop.makeSucceededFuture<A>(_:file:line:)();
  *a2 = v3;
}

uint64_t sub_10015605C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  swift_getObjectType();
  debugOnly(_:)();
  return a3(a1, a2, a5);
}

uint64_t sub_1001560D8(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_1000183C4(&qword_1002ADD50, &unk_10020E140);
  v2 = sub_100158BF8();
  return EventLoop.makeFailedFuture<A>(_:file:line:)(v2);
}

uint64_t sub_100156148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getObjectType();
  debugOnly(_:)();
  v15 = sub_10004292C("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelOption.swift", 115, 2, 368);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = 0;

  sub_1001577B0(v16, v15, a4, &unk_10028E730, &unk_10028E758, sub_100158BD8, sub_10008149C);

  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a4;
  swift_retain_n();

  v18 = sub_100112C28("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 930, v15, sub_100158BE0, v17);

  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a7;
  v19[5] = a8;
  v19[6] = a4;

  swift_unknownObjectRetain();

  sub_100112C28("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 932, v18, sub_100158ADC, v19);

  v20 = swift_allocObject();
  *(v20 + 16) = sub_100158AE0;
  *(v20 + 24) = a4;

  v21 = sub_10019F88C("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 935, sub_100158BB4, v20);

  swift_unknownObjectRetain();
  v22 = sub_1001171E0("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 937, v21, a1, a2);

  return v22;
}

double sub_100156420(uint64_t a1, uint64_t a2)
{
  sub_1000675D4(v2 + 48, a2);

  return result;
}

uint64_t sub_100156450(uint64_t a1, uint64_t a2)
{
  sub_100158D18(v2 + 48, a2);
  *(v2 + 48) = a1;
}

uint64_t NIOPipeBootstrap.__allocating_init(validatingGroup:)()
{
  sub_100037B94();
  sub_10012F014();
  swift_allocObject();
  v1 = sub_100158DF0();
  return NIOPipeBootstrap.init(validatingGroup:)(v1, v0);
}

void *sub_1001564E4(void *a1, uint64_t a2)
{
  Class = object_getClass(a1);
  if (Class != _TtC25ASOctaneSupportXPCService27MultiThreadedEventLoopGroup && Class != _TtC25ASOctaneSupportXPCService19SelectableEventLoop || a1 == 0)
  {
    swift_unknownObjectRelease();
    sub_10009967C();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v8 = sub_1000336E8();
    v2[5] = 0;
    v2[6] = v8;
    v2[2] = a1;
    v2[3] = a2;
    v2[4] = 0;
  }

  return v2;
}

uint64_t sub_1001565A8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  sub_100037408(v5, v4);
}

uint64_t sub_1001565F8()
{
  sub_100158C08();
  sub_100037AAC(v0 + 48, v1);
  sub_100158CBC();
  swift_endAccess();
}

void sub_100156650(uint64_t a1)
{
  type metadata accessor for MultiThreadedEventLoopGroup();
  if (static MultiThreadedEventLoopGroup.currentEventLoop.getter())
  {
    swift_unknownObjectRelease();
    __break(1u);
  }

  bzero(v6, 0x90uLL);
  sub_10019F2D4(a1);
  if (!v1)
  {
    v3 = v7;
    v4 = sub_1001F66C8() & v3;
    if (sub_1001F6708() == v4 || sub_1001F66E8() == v4 || sub_1001F66F8() == v4 || sub_1001F66D8() == v4)
    {
      sub_10002D678();
      swift_allocError();
      *v5 = 1;
      *(v5 + 8) = 3;
      swift_willThrow();
    }
  }
}

uint64_t NIOPipeBootstrap.withInputOutputDescriptor(_:)(uint64_t a1)
{
  v2 = dup(a1);
  NIOPipeBootstrap.withPipes(inputDescriptor:outputDescriptor:)();
  v4 = v3;
  sub_100158C20();
  sub_100113520(v5, v6, v7, 1055, v4, v2);
  sub_100013EFC();

  return v1;
}

void NIOPipeBootstrap.withPipes(inputDescriptor:outputDescriptor:)()
{
  sub_1000A409C();
  if (v1 == v2 || (v3 = v2, v4 = v1, ((v2 | v1) & 0x80000000) != 0))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v5 = v0;
  swift_getObjectType();
  sub_100158CEC();
  v7 = v6();
  v9 = v8;
  sub_100156650(v4);
  sub_100156650(v3);
  v10 = *(v0 + 32);
  v11 = *(v5 + 40);
  sub_10004794C();
  v12 = swift_allocObject();
  if (v10)
  {
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    v13 = sub_100157DEC;
  }

  else
  {
    *(v12 + 16) = v7;
    *(v12 + 24) = v9;
    swift_unknownObjectRetain();
    v13 = sub_100157D78;
  }

  v14 = v13;
  sub_10004794C();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v12;
  v20 = v15;
  type metadata accessor for NIOFileHandle();
  sub_10012F3D4();
  v16 = swift_allocObject();
  *(v16 + 20) = v4;
  *(v16 + 16) = 1;
  sub_10012F3D4();
  v17 = swift_allocObject();
  *(v17 + 20) = v3;
  *(v17 + 16) = 1;
  if (object_getClass(v7) != _TtC25ASOctaneSupportXPCService19SelectableEventLoop)
  {
    goto LABEL_12;
  }

  type metadata accessor for PipeChannel(0);
  swift_allocObject();
  sub_100158E68();
  swift_unknownObjectRetain();
  sub_10003742C(v10, v11);
  sub_1000B6304(v7, v16, v17);
  sub_100158E68();
  swift_getObjectType();
  sub_100158CFC();
  if (v18())
  {
    sub_100156C14();
    sub_100158DFC();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000DFBD8();
    v19 = swift_allocObject();
    v19[2] = v7;
    v19[3] = v9;
    v19[4] = v5;
    v19[5] = v3;
    v19[6] = sub_100157D80;
    v19[7] = v20;
    swift_unknownObjectRetain();

    sub_1000183C4(&qword_1002ADD50, &unk_10020E140);
    EventLoop.flatSubmit<A>(_:)();
    sub_100158DFC();
    swift_unknownObjectRelease();
  }

  sub_1000814C0();
}

uint64_t sub_100156B4C(uint64_t a1, uint64_t a2)
{
  sub_10019DE1C(a2);
  if (v2)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    swift_willThrow();
    return swift_errorRetain();
  }

  return result;
}

void sub_100156BAC(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  EventLoop.makeSucceededFuture<A>(_:file:line:)();
  *a2 = v3;
}

void sub_100156C14()
{
  sub_1000A409C();
  sub_100158DC8(v5);
  sub_100158BE8();
  sub_100158E74();
  debugOnly(_:)();
  sub_1000675D4(v3 + 48, v6);
  sub_100158CDC();
  v11 = sub_10004292C(v7, v8, v9, v10);
  sub_10004794C();
  v12 = swift_allocObject();
  sub_100158E94(v12);
  sub_1001577B0(v4, v11, v0, &unk_10028E550, &unk_10028E578, sub_100158BD8, sub_10008149C);

  sub_1000A41C8();
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = v1;
  v13[4] = v0;

  v14 = sub_100158BE8();
  v18 = sub_100112C28(v14, v15, v16, 1103, v11, v17, v13);

  sub_1000A41C8();
  v19 = swift_allocObject();
  sub_100158E30(v19);

  swift_unknownObjectRetain();
  v20 = sub_100158BE8();
  sub_100112C28(v20, v21, v22, 1105, v18, v23, v11);

  sub_10004794C();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_100158AE0;
  *(v24 + 24) = v0;
  sub_100158BE8();
  sub_100158E74();
  v31 = sub_10019F88C(v25, v26, v27, v28, v29, v30);

  v32 = sub_100158BE8();
  sub_100117274(v32, v33, v34, 1112, v31, v0);
  sub_1000A3FB8();

  sub_1000814C0();
}

uint64_t sub_100156E44(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  debugOnly(_:)();
  v4 = EventLoop.makePromise<A>(of:file:line:)(&type metadata for ()[1], "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 1107, ObjectType, &type metadata for ()[1], a2);

  sub_100150360(v5, sub_100180E50, sub_1001582B4, sub_100180EC0, sub_100180ED8);

  return v4;
}

uint64_t sub_100156F58(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void))
{
  a3(a1, 2, 0);
  v5 = *(a2 + 48);
  sub_1000183C4(&qword_1002B46D8, &qword_100210E70);
  v6 = swift_allocObject();
  *(v6 + 40) = v5;
  *(v6 + 48) = &protocol witness table for SelectableEventLoop;
  *(v6 + 16) = a1;
  *(v6 + 24) = 0;
  *(v6 + 32) = 1;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 56) = 0;

  swift_errorRetain();
  return v6;
}

void *sub_100156FF8()
{
  swift_unknownObjectRelease();
  sub_100037408(*(v0 + 32), *(v0 + 40));

  return v0;
}

uint64_t NIOPipeBootstrap.__deallocating_deinit()
{
  NIOPipeBootstrap.deinit();
  sub_10012F014();

  return swift_deallocClassInstance();
}

uint64_t sub_100157054(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, void (*a4)(uint64_t, void, uint64_t))
{
  a2(&v8);

  a4(v6, 0, a1);
}

uint64_t (*sub_100157114(uint64_t a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return sub_1001586B4;
}

uint64_t (*sub_100157180(uint64_t a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return sub_10015822C;
}

uint64_t sub_1001571EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  sub_10002F9B0(a1, v14);
  swift_dynamicCast();
  sub_10002F9B0(a2, v12);
  swift_dynamicCast();
  v8 = *(a4 + 64);
  v9 = sub_10006389C();
  return v8(v13, v11, &type metadata for ChannelOptions.Types.SocketOption, v9, ObjectType, a4);
}

uint64_t sub_1001572C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  sub_10002F9B0(a1, v13);
  swift_dynamicCast();
  sub_10002F9B0(a2, v12);
  swift_dynamicCast();
  v8 = *(a4 + 64);
  v9 = sub_100158234();
  return v8(v9, v11, &type metadata for ChannelOptions.Types.BacklogOption, v9, ObjectType, a4);
}

__n128 sub_10015739C@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  sub_100057CB8(a1, v22, &qword_1002ADC78, &unk_1002009C0);
  sub_10003708C(v22, __src);
  sub_10003708C(v23, &__src[2]);
  v9 = swift_allocObject();
  *(v9 + 16) = v23[2];
  *&__src[4] = sub_100158A0C;
  *(&__src[4] + 1) = v9;
  sub_100057CB8(__src, __dst, &qword_1002ADC78, &unk_1002009C0);

  sub_10003708C(__dst, v20);
  sub_100019CCC(&__dst[2]);
  sub_10002F9B0(v20, __dst);
  if (swift_dynamicCast())
  {
    if (v16 == a2 && DWORD1(v16) == HIDWORD(a2))
    {
      *a3 = 1;
      v17 = &type metadata for ChannelOptions.Types.SocketOption;
      *&v16 = a2;
      v15 = &type metadata for Int32;
      LODWORD(v14) = a4;
      sub_100019CCC(v20);
      sub_10004BDE8(__src, &qword_1002ADC78, &unk_1002009C0);
      sub_10003708C(&v16, __dst);
      sub_10003708C(&v14, &__dst[2]);
      sub_10003708C(__dst, a5);
      sub_10003708C(&__dst[2], (a5 + 32));
      *(a5 + 64) = sub_1001576B0;
      *(a5 + 72) = 0;
      return result;
    }
  }

  else
  {
    *&v16 = 0;
    BYTE8(v16) = 1;
  }

  sub_100019CCC(v20);
  memcpy(__dst, __src, sizeof(__dst));
  v13 = __dst[4];
  sub_10003708C(__dst, &v16);
  sub_10003708C(&__dst[2], v18);
  sub_10003708C(&v16, a5);
  sub_10003708C(v18, (a5 + 32));
  v12 = swift_allocObject();
  result = v13;
  *(v12 + 16) = v13;
  *(a5 + 64) = sub_100158A10;
  *(a5 + 72) = v12;
  return result;
}

uint64_t (*sub_10015760C(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, void *)))()
{
  v5[0] = a1;
  v5[1] = a2;
  a3(&v4, v5);
  sub_10004794C();
  *(swift_allocObject() + 16) = v4;
  return sub_100158114;
}

uint64_t sub_100157718@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v6 = a2(*a1, a1[1]);
  v8 = v7;
  sub_10004794C();
  result = swift_allocObject();
  *(result + 16) = v6;
  *(result + 24) = v8;
  *a4 = a3;
  a4[1] = result;
  return result;
}

uint64_t sub_100157780@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1001577B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_beginAccess();
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(v12 + 16);
  if (v13 != v14)
  {
    if (v13 >= v14)
    {
      __break(1u);
      return result;
    }

    sub_100057CB8(v12 + 80 * v13 + 32, &v22, &qword_1002ADC78, &unk_1002009C0);
    *(a1 + 24) = v13 + 1;
    if (v23)
    {
      sub_10003708C(&v22, v18);
      sub_10003708C(&v24, v19);
      v15 = v25;
      sub_10003708C(v18, v20);
      sub_10003708C(v19, v21);
      sub_10003708C(v20, v27);
      sub_10003708C(v21, v26);
      *&v22 = a3;
      *(&v22 + 1) = &off_10027FE88;
      v15(v20, &v22);

      (*&v20[0])(&v22, v27, v26);

      v16 = swift_allocObject();
      v16[2] = a1;
      v16[3] = a2;
      v16[4] = a3;
      v16[5] = &off_10027FE88;
      sub_10004794C();
      v17 = swift_allocObject();
      *(v17 + 16) = a6;
      *(v17 + 24) = v16;

      sub_10019F6C8();

      sub_10002C6E0(a2);

      sub_100019CCC(v26);
      return sub_100019CCC(v27);
    }
  }

  return sub_1000A13B0(0);
}

__objc2_class *sub_1001579C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = object_getClass(a1);
  if (result != _TtC25ASOctaneSupportXPCService27MultiThreadedEventLoopGroup && result != _TtC25ASOctaneSupportXPCService19SelectableEventLoop || a1 == 0)
  {
    __break(1u);
  }

  else
  {
    v10 = swift_allocObject();
    v11 = swift_unknownObjectRetain_n();
    result = sub_100157A74(v11, a1, a4, v10, a3, a4);
    if (result)
    {
      v12 = result;
      swift_unknownObjectRelease();
      return v12;
    }
  }

  __break(1u);
  return result;
}

void *sub_100157A74(id a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    swift_unknownObjectRetain();
    v10 = a1;
    a3 = a6;
  }

  Class = object_getClass(a1);
  v13 = Class != _TtC25ASOctaneSupportXPCService27MultiThreadedEventLoopGroup && Class != _TtC25ASOctaneSupportXPCService19SelectableEventLoop || a1 == 0;
  if (v13 || (v14 = object_getClass(v10), v14 != _TtC25ASOctaneSupportXPCService27MultiThreadedEventLoopGroup ? (v15 = v14 == _TtC25ASOctaneSupportXPCService19SelectableEventLoop) : (v15 = 1), v15 ? (v16 = v10 == 0) : (v16 = 1), v16))
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    a4[2] = a1;
    a4[3] = a6;
    a4[4] = v10;
    a4[5] = a3;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    a4[10] = sub_1000336E8();
    a4[11] = sub_1000336E8();
    *(a4 + 3) = 0u;
    *(a4 + 4) = 0u;
    swift_beginAccess();
    sub_100150D5C(0x100000006uLL, 1);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return a4;
}

uint64_t sub_100157C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002B7818, &qword_100210CD8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100157D88()
{
  swift_unknownObjectRelease();

  sub_1000DFBD8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100157EA4()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100157F10()
{

  swift_unknownObjectRelease();

  sub_1000DFBD8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100157FA8()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100157FF4()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 96);
  if (v1 == 2)
  {
    sub_100019CCC((v0 + 40));
  }

  else if (v1 == 1)
  {

    if (*(v0 + 72) != 4 && (~*(v0 + 80) & 0xF000000000000007) != 0)
    {
    }
  }

  else if (!*(v0 + 96))
  {
    sub_100034300(*(v0 + 40));
  }

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_1001580B0()
{
  swift_unknownObjectRelease();

  v0 = sub_10012F014();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100158184()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001581C8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1001581F8()
{
  swift_unknownObjectRelease();
  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

unint64_t sub_100158234()
{
  result = qword_1002B7C28;
  if (!qword_1002B7C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7C28);
  }

  return result;
}

uint64_t sub_1001582EC()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10015833C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1001583C8()
{
  swift_unknownObjectRelease();

  v0 = sub_10012F014();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100158478()
{
  swift_unknownObjectRelease();

  v0 = sub_1000A3D40();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001584BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10015858C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001585F4()
{

  v0 = sub_1000A3D40();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100158634()
{
  swift_unknownObjectRelease();

  v0 = sub_10012F014();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001586C4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v3(&v5, v6);
  return v5;
}

uint64_t sub_100158704()
{

  if (*(v0 + 48))
  {
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1001587A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1001587E0()
{

  sub_1000A41C8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10015881C()
{

  if (*(v0 + 24))
  {
  }

  v1 = sub_1000A3D40();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100158870()
{

  swift_unknownObjectRelease();

  v0 = sub_10012F014();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001588E4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100158914()
{

  swift_unknownObjectRelease();
  v0 = sub_1000A3D40();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10015895C(void (*a1)(void))
{
  a1(*(v1 + 16));

  sub_1000A41C8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1001589D4()
{

  sub_10012F3D4();

  return _swift_deallocObject(v0, v1, v2);
}

__objc2_class *sub_100158C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_100155398(v9, &a9, sub_1001552C4, 0);
}

__objc2_class *sub_100158C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1001518FC(v9, &a9, sub_100151828, 0);
}

uint64_t sub_100158CBC()
{

  return ChannelOptions.Storage.append<A>(key:value:)(v3, v2, v1, v0);
}

uint64_t sub_100158D18(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_100158D34(uint64_t a1)
{

  return swift_beginAccess();
}

void *sub_100158D50()
{
  v4 = *v1;
  *(*v1 + 16) = v0 + 1;

  return memcpy((v4 + 80 * v0 + 32), (v2 - 176), 0x50uLL);
}

uint64_t sub_100158D9C(uint64_t a1)
{

  return EventLoop.makeFailedFuture<A>(_:file:line:)(a1);
}

uint64_t sub_100158DC8(uint64_t a1)
{

  return swift_getObjectType();
}

uint64_t sub_100158DFC()
{
}

uint64_t sub_100158E14(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_100158E30(void *a1)
{
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v1;

  return swift_retain_n();
}

uint64_t sub_100158E94(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = 0;

  return swift_bridgeObjectRetain_n();
}

double sub_100158EB4(uint64_t a1, uint64_t a2)
{

  return result;
}

void *sub_100158ED4@<X0>(uint64_t a1@<X0>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1000402A0(__src);
  memcpy(__dst, __src, sizeof(__dst));
  v9 = sub_1001F10F8(0xD000000000000013, 0x8000000100229990, a1);
  if (!v10)
  {
    goto LABEL_37;
  }

  v11 = v9;
  v12 = v10;
  v73 = a3;
  v13 = sub_1001F10F8(0xD000000000000011, 0x80000001002299B0, a1);
  if (v14)
  {
    sub_10015A288(v13, v14);
    sub_10015A258();
    v15 = sub_1001F75B8();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1001F10F8(0xD00000000000001CLL, 0x80000001002299D0, a1);
  if (v17)
  {
    sub_10015A288(v16, v17);
    sub_10015A258();
    v18 = sub_1001F75B8();

    if (!v15)
    {
      if (!v18)
      {
        goto LABEL_36;
      }

LABEL_12:
      v19 = sub_1001F10F8(108, 0xE100000000000000, a1);
      v68 = v20;
      v69 = v19;
      v65 = sub_1001F10F8(0x6F726665726F7473, 0xEA0000000000746ELL, a4);
      v74 = v21;

      v22 = sub_1001F10F8(0x6D726F6674616C70, 0xE800000000000000, a1);
      v66 = v23;
      v67 = v22;
      v24 = sub_1001F10F8(0x646E65747865, 0xE600000000000000, a1);
      v75 = v12;
      v76 = v15;
      v71 = v11;
      v72 = a5;
      v70 = v18;
      if (v25)
      {
        v87[0] = v24;
        v87[1] = v25;
        v81[0] = 44;
        v81[1] = 0xE100000000000000;
        sub_10001C790();
        sub_10015A258();
        v26 = sub_1001F75B8();
      }

      else
      {
        v26 = _swiftEmptyArrayStorage;
      }

      v27 = 0;
      v28 = v26[2];
      v29 = _swiftEmptyArrayStorage;
      v30 = &off_100279D20;
LABEL_16:
      v31 = &v26[2 * v27 + 5];
      while (v28 != v27)
      {
        if (v27 >= v26[2])
        {
          __break(1u);
          JUMPOUT(0x100159764);
        }

        ++v27;
        v32 = v31 + 2;
        v33 = *(v31 - 1);
        v34 = *v31;

        v35._rawValue = &off_100279D20;
        v89._countAndFlagsBits = v33;
        v89._object = v34;
        v36 = sub_1001F7BD8(v35, v89);

        v31 = v32;
        if (v36 < 5)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100032BD4(0, v29[2] + 1, 1, v29);
            v29 = v39;
          }

          v38 = v29[2];
          v37 = v29[3];
          if (v38 >= v37 >> 1)
          {
            sub_100032BD4(v37 > 1, v38 + 1, 1, v29);
            v29 = v40;
          }

          v29[2] = v38 + 1;
          *(v29 + v38 + 32) = v36;
          goto LABEL_16;
        }
      }

      v41 = sub_1001B87B8(v29);
      v42 = sub_1001F10F8(1752459639, 0xE400000000000000, a1);
      v44 = v43;

      if (v44)
      {
        v45 = 0xEB00000000737265;
        v46 = 0x66664F636F486461;
        v87[0] = v42;
        v87[1] = v44;
        sub_10015A2C8();
        v81[0] = 0x66664F636F486461;
        v81[1] = 0xEB00000000737265;
        sub_10001C790();
        sub_10015A258();
        v47 = v76;
        if (sub_1001F7618())
        {
          sub_1001F8068();
          sub_1001F6C28();
          sub_1001F80D8();
          sub_10015A2DC();
          v50 = v49 & ~v48;
          if ((*(v42 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
          {
            v51 = ~v48;
            while (1)
            {
              switch(*(*(v41 + 48) + v50))
              {
                case 1:
                case 3:
                  break;
                case 2:

                  goto LABEL_35;
                case 4:
                  sub_1000DBE30();
                  break;
                default:
                  sub_10015A268();
                  break;
              }

              v30 = v46;
              v52 = v45;
              v53 = sub_1001F7EA8();

              if (v53)
              {
                break;
              }

              v50 = (v50 + 1) & v51;
              v45 = v52;
              v46 = v30;
              if (((*(v42 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
              {
                goto LABEL_34;
              }
            }

            v47 = v76;
          }

          else
          {
LABEL_34:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v87[0] = v41;
            sub_1001D3048(2, v50, isUniquelyReferenced_nonNull_native);
            v41 = v87[0];
LABEL_35:
            v47 = v76;
          }

          sub_10015A2C8();
        }

        v87[0] = v42;
        v87[1] = v44;
        v81[0] = v30;
        v81[1] = 0xED00007372656666;
        sub_10015A258();
        v55 = sub_1001F7618();

        if ((v55 & 1) == 0)
        {
          v62 = v41;
          v63 = v47;
          goto LABEL_52;
        }

        sub_1001F8068();
        sub_1001F6C28();
        sub_1001F80D8();
        sub_10015A2DC();
        v58 = v57 & ~v56;
        if ((*(((v58 >> 3) & 0xFFFFFFFFFFFFFF8) - 0x12FFFF8C8D9A999ALL) >> v58))
        {
          v59 = ~v56;
          while (2)
          {
            switch(*(*(v41 + 48) + v58))
            {
              case 1:
              case 2:
                goto LABEL_46;
              case 3:
                v62 = v41;

                goto LABEL_50;
              case 4:
                sub_1000DBE30();
                goto LABEL_46;
              default:
                sub_10015A268();
LABEL_46:
                v60 = sub_1001F7EA8();

                if (v60)
                {
                  goto LABEL_49;
                }

                v58 = (v58 + 1) & v59;
                if (((*(((v58 >> 3) & 0xFFFFFFFFFFFFFF8) - 0x12FFFF8C8D9A999ALL) >> v58) & 1) == 0)
                {
                  break;
                }

                continue;
            }

            break;
          }
        }

        v61 = swift_isUniquelyReferenced_nonNull_native();
        v87[0] = v41;
        sub_1001D3048(3, v58, v61);
        v62 = v87[0];
      }

      else
      {
LABEL_49:
        v62 = v41;
      }

LABEL_50:
      v63 = v76;
LABEL_52:
      sub_1000E32F8(v73, v77);
      debugOnly(_:)();
      memcpy(v78, __dst, 0x139uLL);
      sub_10004030C(v78);
      memcpy(__dst, v77, sizeof(__dst));
      v84 = 1;
      v86 = 1;
      v79[0] = v71;
      v79[1] = v75;
      v79[2] = v69;
      v79[3] = v68;
      v79[4] = v65;
      v79[5] = v74;
      v79[6] = v63;
      memset(&v79[7], 0, 24);
      LOBYTE(v79[10]) = 1;
      *(&v79[10] + 1) = *v85;
      HIDWORD(v79[10]) = *&v85[3];
      v79[11] = 0;
      LOBYTE(v79[12]) = 1;
      *(&v79[12] + 1) = *v83;
      HIDWORD(v79[12]) = *&v83[3];
      v79[13] = v67;
      v79[14] = v66;
      v79[15] = v62;
      v79[16] = v70;
      memcpy(&v79[17], v77, 0x139uLL);
      memcpy(v80, v79, sizeof(v80));
      debugOnly(_:)();
      v81[0] = v71;
      v81[1] = v75;
      v81[2] = v69;
      v81[3] = v68;
      v81[4] = v65;
      v81[5] = v74;
      v81[6] = v76;
      memset(&v81[7], 0, 24);
      LOBYTE(v81[10]) = 1;
      *(&v81[10] + 1) = *v85;
      HIDWORD(v81[10]) = *&v85[3];
      v81[11] = 0;
      LOBYTE(v81[12]) = 1;
      HIDWORD(v81[12]) = *&v83[3];
      *(&v81[12] + 1) = *v83;
      v81[13] = v67;
      v81[14] = v66;
      v81[15] = v62;
      v81[16] = v70;
      memcpy(&v81[17], __dst, 0x139uLL);
      sub_100041BB4(v79, v87);
      sub_100159FA8(v81);
      memcpy(v87, v80, 0x1C1uLL);
      a5 = v72;
      return memcpy(a5, v87, 0x1C1uLL);
    }

LABEL_11:

    goto LABEL_12;
  }

  if (v15)
  {
    v18 = 0;
    goto LABEL_11;
  }

LABEL_36:

LABEL_37:

  memcpy(v81, __dst, 0x139uLL);
  sub_10004030C(v81);
  sub_100159FA0(v87);
  return memcpy(a5, v87, 0x1C1uLL);
}