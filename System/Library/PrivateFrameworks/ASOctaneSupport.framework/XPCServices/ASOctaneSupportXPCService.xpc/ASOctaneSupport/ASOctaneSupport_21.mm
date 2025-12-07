uint64_t sub_10019329C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v16 = sub_100106280(16);
  memset(v22, 0, sizeof(v22));
  *(v10 + 104) = sub_1001CAF14(v22, v16);
  *(v10 + 112) = 0;
  *(v10 + 120) = 0;
  *(v10 + 128) = 0;
  *(v10 + 136) = 1;
  *(v10 + 144) = 0;
  *(v10 + 152) = 0;
  *(v10 + 160) = xmmword_1002141E0;
  sub_1000183C4(&qword_1002BA560, &qword_1002142E0);
  swift_bufferAllocate();
  v17 = swift_unknownObjectRetain();
  sub_1000069C8((v17 + 16), 1);
  swift_unknownObjectRelease();
  sub_10002E0D8();
  *(v10 + 176) = swift_dynamicCastClassUnconditional();
  *(v10 + 184) = 1;
  *(v10 + 192) = 16;
  *(v10 + 200) = 1;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 48) = a3;
  *(v10 + 56) = a4;
  *(v10 + 64) = a5;
  *(v10 + 72) = a6;
  *(v10 + 32) = a7;
  *(v10 + 40) = a8;
  *(v10 + 80) = a9;
  *(v10 + 96) = a10;
  return v10;
}

uint64_t sub_1001933D8()
{
  result = swift_beginAccess();
  if (*(v0 + 136))
  {
    return 3;
  }

  v2 = *(v0 + 112);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(v2))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v3 = *(v0 + 104);
  v4 = sub_100191AD0(v2 | 0x1FFFFFF00000000, *(v0 + 128), v3, *(v0 + 112));
  v5 = *(v3 + 16);
  if ((v4 & 0x100000000000000) != 0)
  {
    v5 = 0;
  }

  return (v5 - v2 + v4) > 0;
}

uint64_t sub_100193474(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1001934A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a8(a1, a2, a3, a4, a5, a6, a7);
  if (v8)
  {
    return v10;
  }

  return result;
}

uint64_t sub_1001934DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v9 = a2;
  sub_100037AAC((v6 + 13), a2);
  if (v9)
  {
    if (a5)
    {
      sub_100192C50(a1);
    }

    else
    {
      sub_100192948(a1, a3);
    }

    v14 = v11;
    v15 = v12;
    v16 = v13;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 2;
  }

  swift_endAccess();
  if (v6[19] < v6[20])
  {
    sub_1000069C8((v6[22] + 16), 1);
  }

  sub_1001935BC(v14, v15);
  sub_10019389C(v14);
  return v16;
}

uint64_t sub_1001935BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_100193998(v3);
      sub_1000A13B0(a2);
    }

    else
    {

      swift_errorRetain();

      swift_errorRetain();
      sub_1000A13B0(0);
    }
  }

  return result;
}

uint64_t sub_100193694(uint64_t a1)
{
  v2 = v1;
  swift_errorRetain();
  sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
  if (swift_dynamicCast())
  {

    if (v11 == 65)
    {
      sub_10002D678();
      sub_10002E0D8();
      swift_allocError();
      v4 = 8;
      goto LABEL_7;
    }

    if (v11 == 40)
    {
      sub_10002D678();
      sub_10002E0D8();
      swift_allocError();
      v4 = 7;
LABEL_7:
      *v3 = v4;
      *(v3 + 8) = 3;
      swift_beginAccess();
      sub_100192828();
      v6 = v5;
      v8 = v7;
      v9 = *(v1 + 136);
      swift_endAccess();

      sub_1001935BC(v6, v8);
      sub_10019389C(v6);
      v2 = v9 ^ 1u;

      return v2;
    }
  }

  swift_willThrow();
  swift_errorRetain();
  return v2;
}

uint64_t sub_10019380C()
{

  return v0;
}

uint64_t sub_100193834()
{
  sub_10019380C();

  return swift_deallocClassInstance();
}

uint64_t sub_10019389C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double sub_1001938DC@<D0>(_OWORD *a1@<X8>)
{
  if ((*(v1 + 32) & 1) == 0)
  {
    v2 = *(v1 + 24);
    v3 = v2 < 1;
    v4 = v2 - 1;
    v5 = v3;
    if (v3)
    {
      v4 = 0;
    }

    *(v1 + 24) = v4;
    *(v1 + 32) = v5;
  }

  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = __OFSUB__(v7, v6);
  v9 = v7 - v6;
  if (v9 < 0 != v8)
  {
    v9 += *(*v1 + 16);
  }

  if (v9 < 1)
  {
    result = 0.0;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  else
  {
    sub_10019191C(a1);
  }

  return result;
}

uint64_t sub_100193930(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002ADC00, &qword_100205800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100193998(uint64_t result)
{
  if (result)
  {

    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_100193A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002ADC00, &qword_100205800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100193A80()
{

  sub_1000374AC(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100193AC4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100193B04(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100193B64(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100193BA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100193C08()
{
  result = qword_1002BAA08;
  if (!qword_1002BAA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAA08);
  }

  return result;
}

uint64_t sub_100193CC8()
{

  return sub_10007E65C(v1, v0);
}

uint64_t sub_100193CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);

  return sub_100193A10(&a43, va);
}

void sub_100193D28(unint64_t a1@<X0>, __int128 *a2@<X1>, Swift::String *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_13:
    __src[0] = *a2;
    sub_10001C838(__src);
    v17[0] = a2[1];
    sub_10001C838(v17);
    *&v22[0] = *(a2 + 4);
    sub_10001C88C(v22);
    sub_10001C7E4(a3);

    v11 = _swiftEmptyArrayStorage;
LABEL_14:
    sub_1001948C4();
    *(a5 + 32) = v11;
    return;
  }

  v9 = sub_1001F7B48();
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_3:
  v18 = _swiftEmptyArrayStorage;
  sub_10003412C(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v18;
    v12 = *a2;
    v21 = a2[1];
    v22[0] = v12;
    v20 = *(a2 + 4);
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = sub_1001F7808();
      }

      else
      {
        v13 = *(a1 + 8 * v10 + 32);
      }

      sub_1000552A0(v22, v17);
      sub_1000552A0(&v21, v17);
      sub_10007B8A0(&v20, v17);
      sub_10007B844(a3, v17);
      sub_10007736C(v13, a2, a3, a4 & 1, __src);
      v18 = v11;
      v15 = v11[2];
      v14 = v11[3];
      if (v15 >= v14 >> 1)
      {
        sub_10003412C((v14 > 1), v15 + 1, 1);
        v11 = v18;
      }

      ++v10;
      v11[2] = v15 + 1;
      memcpy(&v11[28 * v15 + 4], __src, 0xD9uLL);
    }

    while (v9 != v10);

    sub_10001C7E4(a3);
    sub_10001C838(v22);
    sub_10001C838(&v21);
    sub_10001C88C(&v20);
    goto LABEL_14;
  }

  __break(1u);
}

unint64_t sub_100193F48(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027CCF0;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100193F94(char a1)
{
  if (!a1)
  {
    return 0x65762D65726F7473;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0xD000000000000015;
}

uint64_t sub_100194004(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002BAA38, &unk_100214590);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v12[-v9];
  sub_10001AE68(a1, a1[3]);
  sub_10019452C();
  sub_1001F8198();
  v15 = 0;
  sub_1001F7D88();
  if (!v2)
  {
    v14 = 1;
    sub_1001F7D88();
    v13 = *(v3 + 32);
    v12[15] = 2;
    sub_1000183C4(&qword_1002BAA20, &qword_100219A00);
    sub_1001945D4(&qword_1002BAA40, sub_10019464C, &protocol conformance descriptor for <A> [A]);
    sub_1001F7DC8();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_1001941E0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002BAA10, &unk_100214580);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v12[-v9];
  sub_10001AE68(a1, a1[3]);
  sub_10019452C();
  sub_1001F8178();
  if (v2)
  {
    sub_100019CCC(a1);
  }

  else
  {
    sub_1000183C4(&qword_1002BAA20, &qword_100219A00);
    v12[15] = 2;
    sub_1001945D4(&qword_1002BAA28, sub_100194580, &protocol conformance descriptor for <A> [A]);
    sub_1001F7CB8();
    (*(v7 + 8))(v10, v5);
    v11 = v13;
    sub_100019CCC(a1);
    sub_1001948C4();
    *(a2 + 32) = v11;
  }
}

unint64_t sub_1001943C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100193F48(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1001943F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100193F94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10019442C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100193F48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100194454(uint64_t a1)
{
  v2 = sub_10019452C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100194490(uint64_t a1)
{
  v2 = sub_10019452C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001944CC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001941E0(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_10019452C()
{
  result = qword_1002BAA18;
  if (!qword_1002BAA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAA18);
  }

  return result;
}

unint64_t sub_100194580()
{
  result = qword_1002BAA30;
  if (!qword_1002BAA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAA30);
  }

  return result;
}

uint64_t sub_1001945D4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002BAA20, &qword_100219A00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10019464C()
{
  result = qword_1002BAA48;
  if (!qword_1002BAA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAA48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FetchSoftwareAddOnsResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10019476CLL);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001947B8()
{
  result = qword_1002BAA50;
  if (!qword_1002BAA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAA50);
  }

  return result;
}

unint64_t sub_100194810()
{
  result = qword_1002BAA58;
  if (!qword_1002BAA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAA58);
  }

  return result;
}

unint64_t sub_100194868()
{
  result = qword_1002BAA60;
  if (!qword_1002BAA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAA60);
  }

  return result;
}

void sub_1001948C4()
{
  *v0 = 3157553;
  v0[1] = 0xE300000000000000;
  v0[2] = 0x61502D6472696854;
  v0[3] = 0xEB00000000797472;
}

uint64_t sub_1001948F8()
{
  v1 = v0;
  v2 = sub_1001F60C8();
  sub_10001A278();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100023510();
  v8 = v7 - v6;
  v9 = *(v0 + 56);
  v10 = *(v9 + 176);
  v11 = *(v9 + 184);
  v12 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v12 setUnitsStyle:3];
  [v12 setAllowedUnits:4124];
  sub_1001EC818(v10, v11);
  isa = sub_1001F6098().super.isa;
  v45 = v2;
  v44 = *(v4 + 8);
  v44(v8, v2);
  v14 = [v12 stringFromDateComponents:isa];

  if (v14)
  {
    v48._countAndFlagsBits = sub_1001F6B58();
    v48._object = v15;
  }

  else
  {

    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
  }

  v16 = *(v1 + 32);
  v50[0] = *(v1 + 16);
  v50[1] = v16;
  v51 = *(v1 + 48);

  v18 = sub_1000E087C(v17);

  if (v18)
  {
    v19 = *(v18 + 40);
    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = *(v18 + 32) & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v47 = *(v18 + 32);

      goto LABEL_11;
    }
  }

  v47 = sub_1001E8450();
  v19 = v21;
LABEL_11:
  v22 = *(v9 + 16);
  v23 = *(v9 + 24);
  memcpy(__dst, (v1 + 64), sizeof(__dst));

  v24 = sub_10004B628(v22, v23, __dst, v50);
  v26 = v25;

  v27 = *(v1 + 8);
  if (sub_1000258F4(v9) == 2)
  {
    v28 = *(v27 + 176);
    v29 = *(v27 + 184);
    v30 = [objc_allocWithZone(NSDateComponentsFormatter) init];
    [v30 setUnitsStyle:3];
    [v30 setAllowedUnits:4124];
    sub_1001EC818(v28, v29);
    v31 = sub_1001F6098().super.isa;
    v44(v8, v45);
    v32 = [v30 stringFromDateComponents:v31];

    if (v32)
    {
      v46 = sub_1001F6B58();
      v34 = v33;
    }

    else
    {

      v46 = 0;
      v34 = 0xE000000000000000;
    }

    v36 = sub_1000E087C(v35);

    v37 = v24;
    v38 = v26;
    if (v36)
    {
      v40 = *(v36 + 32);
      v39 = *(v36 + 40);
      v41 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v41 = v40 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {

LABEL_23:
        sub_1001F77B8(149);
        v59._countAndFlagsBits = 0xD00000000000001ALL;
        v59._object = 0x800000010022C550;
        sub_1001F6CA8(v59);
        v60._countAndFlagsBits = v47;
        v60._object = v19;
        sub_1001F6CA8(v60);

        v61._countAndFlagsBits = 0x20726F6620;
        v61._object = 0xE500000000000000;
        sub_1001F6CA8(v61);
        sub_1001F6CA8(v48);

        v62._countAndFlagsBits = 544497952;
        v62._object = 0xE400000000000000;
        sub_1001F6CA8(v62);
        v63._countAndFlagsBits = v37;
        v63._object = v38;
        sub_1001F6CA8(v63);

        v64._countAndFlagsBits = 0xD000000000000056;
        v64._object = 0x800000010022C570;
        sub_1001F6CA8(v64);
        v65._countAndFlagsBits = v46;
        v65._object = v34;
        sub_1001F6CA8(v65);

        sub_100181134();
        v66._countAndFlagsBits = 0xD000000000000011;
        sub_1001F6CA8(v66);
        v67._countAndFlagsBits = v40;
        v67._object = v39;
        sub_1001F6CA8(v67);
        goto LABEL_24;
      }
    }

    v40 = sub_1001E8450();
    v39 = v42;
    goto LABEL_23;
  }

  sub_1001F77B8(162);
  v52._countAndFlagsBits = 0xD00000000000002BLL;
  v52._object = 0x800000010022C4B0;
  sub_1001F6CA8(v52);
  v53._countAndFlagsBits = v47;
  v53._object = v19;
  sub_1001F6CA8(v53);

  v54._countAndFlagsBits = 0x20726F6620;
  v54._object = 0xE500000000000000;
  sub_1001F6CA8(v54);
  sub_1001F6CA8(v48);

  v55._countAndFlagsBits = 544497952;
  v55._object = 0xE400000000000000;
  sub_1001F6CA8(v55);
  v56._countAndFlagsBits = v24;
  v56._object = v26;
  sub_1001F6CA8(v56);

  sub_100181134();
  v57._countAndFlagsBits = 0x1000000000000065;
  sub_1001F6CA8(v57);
  v58._countAndFlagsBits = sub_100194E6C();
  sub_1001F6CA8(v58);
LABEL_24:

  v68._countAndFlagsBits = 46;
  v68._object = 0xE100000000000000;
  sub_1001F6CA8(v68);
  return 0;
}

uint64_t sub_100194E6C()
{
  v0 = sub_1001F6508();
  sub_10001A278();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100023510();
  v6 = v5 - v4;
  sub_1000C5464(4);
  if (v7)
  {
    sub_1001F64F8();
  }

  else
  {
    sub_1001F6418();
  }

  if (qword_1002AC410 != -1)
  {
    swift_once();
  }

  v8 = qword_1002AE9E8;
  isa = sub_1001F6478().super.isa;
  v10 = [v8 stringFromDate:isa];

  v11 = sub_1001F6B58();
  (*(v2 + 8))(v6, v0);
  return v11;
}

unint64_t sub_100194FC4(char a1)
{
  v3 = sub_1001F60C8();
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100023510();
  v9 = v8 - v7;
  v10 = *(v1 + 8);
  if (sub_1000258F4(*(v1 + 56)) != 2)
  {
    sub_1001F77B8(78);
    v26._countAndFlagsBits = 0xD00000000000004BLL;
    v26._object = 0x800000010022C370;
    sub_1001F6CA8(v26);
    v27._countAndFlagsBits = sub_100194E6C();
    sub_1001F6CA8(v27);

    v28._countAndFlagsBits = 46;
    v28._object = 0xE100000000000000;
    sub_1001F6CA8(v28);
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    sub_100181134();
    return 0xD000000000000064;
  }

  v11 = *(v10 + 176);
  v12 = *(v10 + 184);
  v13 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v13 setUnitsStyle:3];
  [v13 setAllowedUnits:4124];
  sub_1001EC818(v11, v12);
  isa = sub_1001F6098().super.isa;
  (*(v5 + 8))(v9, v3);
  v15 = [v13 stringFromDateComponents:isa];

  if (v15)
  {
    v16 = sub_1001F6B58();
    v18 = v17;
  }

  else
  {

    v16 = 0;
    v18 = 0xE000000000000000;
  }

  v21 = sub_1000E087C(v20);

  if (!v21)
  {
    goto LABEL_14;
  }

  v23 = *(v21 + 32);
  v22 = *(v21 + 40);
  v24 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v24 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_14:
    v23 = sub_1001E8450();
    v22 = v25;
    goto LABEL_15;
  }

LABEL_15:
  sub_1001F77B8(106);
  v29._countAndFlagsBits = 0xD000000000000054;
  v29._object = 0x800000010022C430;
  sub_1001F6CA8(v29);
  v30._countAndFlagsBits = v16;
  v30._object = v18;
  sub_1001F6CA8(v30);

  sub_100181134();
  v31._countAndFlagsBits = 0xD000000000000011;
  sub_1001F6CA8(v31);
  v32._countAndFlagsBits = v23;
  v32._object = v22;
  sub_1001F6CA8(v32);

  v33._countAndFlagsBits = 46;
  v33._object = 0xE100000000000000;
  sub_1001F6CA8(v33);
  return 0;
}

uint64_t sub_1001952E4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_100195324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_100195398(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = sub_1001F6288();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v21 = _swiftEmptyArrayStorage;
  sub_100033EDC(0, v9, 0);
  v10 = v21;
  v16 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v12 = *i;
    v20[0] = *(i - 1);
    v20[1] = v12;

    v18(v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v21 = v10;
    v14 = v10[2];
    v13 = v10[3];
    if (v14 >= v13 >> 1)
    {
      sub_100033EDC(v13 > 1, v14 + 1, 1);
      v10 = v21;
    }

    v10[2] = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v17);
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

void *sub_100195564(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v14 = _swiftEmptyArrayStorage;
  sub_1000343AC(0, v5, 0);
  v6 = _swiftEmptyArrayStorage;
  for (i = a3 + 32; ; i += 80)
  {
    a1(v13, i);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v14 = v6;
    v11 = v6[2];
    v10 = v6[3];
    if (v11 >= v10 >> 1)
    {
      sub_1000343AC((v10 > 1), v11 + 1, 1);
      v6 = v14;
    }

    v6[2] = v11 + 1;
    memcpy(&v6[10 * v11 + 4], v13, 0x50uLL);
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t ChannelOptions.Storage.append<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = 0;
  v9 = *v4;
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a1;
  v19[5] = &v27;
  v19[6] = a2;
  v10 = sub_100195564(sub_1001961FC, v19, v9);

  *v4 = v10;
  if ((v27 & 1) == 0)
  {
    v25 = a3;
    v12 = sub_1000629FC(&v24);
    (*(*(a3 - 8) + 16))(v12, a1, a3);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v23 = AssociatedTypeWitness;
    v14 = sub_1000629FC(&v22);
    (*(*(AssociatedTypeWitness - 8) + 16))(v14, a2, AssociatedTypeWitness);
    sub_10004794C();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    sub_10003708C(&v24, v20);
    sub_10003708C(&v22, v21);
    sub_10003708C(v20, __src);
    sub_10003708C(v21, &__src[2]);
    sub_10004794C();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_100196240;
    *(v16 + 24) = v15;
    *&__src[4] = sub_1001581C0;
    *(&__src[4] + 1) = v16;
    sub_100032144();
    v17 = *(*v4 + 16);
    sub_1000322FC();
    v18 = *v4;
    *(v18 + 16) = v17 + 1;
    result = memcpy((v18 + 80 * v17 + 32), __src, 0x50uLL);
    *v4 = v18;
  }

  return result;
}

uint64_t ChannelOptions.Storage.applyAllChannelOptions(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_10019627C(a1, a3, ObjectType, a2);
}

ASOctaneSupportXPCService::ChannelOptions::Types::WriteBufferWaterMark __swiftcall ChannelOptions.Types.WriteBufferWaterMark.init(low:high:)(Swift::Int low, Swift::Int high)
{
  if (low < 1 || high < low)
  {
    __break(1u);
  }

  result.high = high;
  result.low = low;
  return result;
}

uint64_t (*ChannelOptions.Types.SocketOption.level.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_100195958;
}

uint64_t (*ChannelOptions.Types.SocketOption.name.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return sub_100195994;
}

uint64_t ChannelOptions.Storage._storage.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t (*sub_100195A38())(uint64_t a1, uint64_t a2)
{
  sub_100196E7C();
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v0;
  v4[4] = v3;
  v4[5] = v2;
  swift_unknownObjectRetain();
  return sub_100196D64;
}

uint64_t sub_100195AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a2;
  v21 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v12 = &v20 - v11;
  v13 = *(a5 - 8);
  __chkstk_darwin(v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  sub_10002F9B0(a1, v23);
  swift_dynamicCast();
  sub_10002F9B0(v20, v22);
  swift_dynamicCast();
  v18 = (*(v21 + 64))(v16, v12, a5, a6, ObjectType);
  (*(v10 + 8))(v12, AssociatedTypeWitness);
  (*(v13 + 8))(v16, a5);
  return v18;
}

double sub_100195CC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v31 = a2;
  *&v32 = a6;
  v29 = a3;
  v30 = a4;
  v33 = a7;
  v9 = sub_1001F74B8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  v13 = *(a5 - 8);
  __chkstk_darwin(v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100196D70(a1, v42);
  sub_10003708C(v42, __src);
  sub_10003708C(v43, &__src[2]);
  v17 = swift_allocObject();
  *(v17 + 16) = v43[2];
  *&__src[4] = sub_1001581B8;
  *(&__src[4] + 1) = v17;
  sub_100196D70(__src, v39);

  sub_10003708C(v39, v40);
  sub_100019CCC(&v39[2]);
  sub_10002F9B0(v40, v39);
  if (swift_dynamicCast())
  {
    sub_100018460(v12, 0, 1, a5);
    (*(v13 + 32))(v16, v12, a5);
    v18 = v32;
    if (sub_1001F6B28())
    {
      *v29 = 1;
      v37 = a5;
      v19 = sub_1000629FC(&v36);
      (*(v13 + 16))(v19, v16, a5);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v35 = AssociatedTypeWitness;
      v21 = sub_1000629FC(&v34);
      (*(*(AssociatedTypeWitness - 8) + 16))(v21, v30, AssociatedTypeWitness);
      (*(v13 + 8))(v16, a5);
      sub_100019CCC(v40);
      sub_100196DE0(__src);
      v22 = swift_allocObject();
      *(v22 + 16) = a5;
      *(v22 + 24) = v18;
      sub_10003708C(&v36, v39);
      sub_10003708C(&v34, &v39[2]);
      v23 = v33;
      sub_10003708C(v39, v33);
      sub_10003708C(&v39[2], v23 + 2);
      v24 = swift_allocObject();
      *(v24 + 16) = sub_100196E4C;
      *(v24 + 24) = v22;
      *(v23 + 8) = sub_100158A10;
      *(v23 + 9) = v24;
      return result;
    }

    (*(v13 + 8))(v16, a5);
    sub_100019CCC(v40);
  }

  else
  {
    sub_100018460(v12, 1, 1, a5);
    sub_100019CCC(v40);
    (*(v10 + 8))(v12, v9);
  }

  memcpy(v39, __src, sizeof(v39));
  v32 = v39[4];
  sub_10003708C(v39, &v36);
  sub_10003708C(&v39[2], v38);
  v26 = v33;
  sub_10003708C(&v36, v33);
  sub_10003708C(v38, v26 + 2);
  v27 = swift_allocObject();
  result = *&v32;
  *(v27 + 16) = v32;
  *(v26 + 8) = sub_100158A10;
  *(v26 + 9) = v27;
  return result;
}

uint64_t sub_100196138@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t (**a3)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v4 = a2(*a1, a1[1]);
  v6 = v5;
  sub_10004794C();
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v6;
  *a3 = sub_100196D24;
  a3[1] = result;
  return result;
}

uint64_t sub_1001961A8()
{
  sub_100196E7C();
  ObjectType = swift_getObjectType();

  return sub_100196A8C(v3, v2, v1, ObjectType, v0);
}

uint64_t sub_100196248()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10019627C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  (*(*(a4 + 8) + 80))(ObjectType);
  v10 = v9;
  v11 = swift_getObjectType();
  v12 = EventLoop.makePromise<A>(of:file:line:)(&type metadata for ()[1], "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelOption.swift", 115, 2, 368, v11, &type metadata for ()[1], v10);
  swift_unknownObjectRelease();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = 0;

  sub_100196A8C(v13, v12, a1, a3, a4);

  return v12;
}

unint64_t sub_100196374(uint64_t a1)
{
  result = sub_10019639C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10019639C()
{
  result = qword_1002BAA80;
  if (!qword_1002BAA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAA80);
  }

  return result;
}

unint64_t sub_1001963F0(uint64_t a1)
{
  result = sub_100196418();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100196418()
{
  result = qword_1002BAAA0;
  if (!qword_1002BAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAAA0);
  }

  return result;
}

unint64_t sub_10019646C(uint64_t a1)
{
  result = sub_100196494();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100196494()
{
  result = qword_1002BAAC0;
  if (!qword_1002BAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAAC0);
  }

  return result;
}

unint64_t sub_1001964E8(uint64_t a1)
{
  result = sub_100196510();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100196510()
{
  result = qword_1002BAAE0;
  if (!qword_1002BAAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAAE0);
  }

  return result;
}

unint64_t sub_100196564(uint64_t a1)
{
  result = sub_10019658C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10019658C()
{
  result = qword_1002BAB00;
  if (!qword_1002BAB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAB00);
  }

  return result;
}

unint64_t sub_1001965E0(uint64_t a1)
{
  result = sub_100196608();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100196608()
{
  result = qword_1002BAB20;
  if (!qword_1002BAB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAB20);
  }

  return result;
}

unint64_t sub_10019665C(uint64_t a1)
{
  result = sub_100196684();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100196684()
{
  result = qword_1002BAB40;
  if (!qword_1002BAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAB40);
  }

  return result;
}

unint64_t sub_1001966D8(uint64_t a1)
{
  result = sub_100196700();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100196700()
{
  result = qword_1002BAB60;
  if (!qword_1002BAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAB60);
  }

  return result;
}

unint64_t sub_100196754(uint64_t a1)
{
  result = sub_10019677C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10019677C()
{
  result = qword_1002BAB80;
  if (!qword_1002BAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAB80);
  }

  return result;
}

unint64_t sub_1001967D0(uint64_t a1)
{
  result = sub_1001967F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001967F8()
{
  result = qword_1002BABA0;
  if (!qword_1002BABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BABA0);
  }

  return result;
}

unint64_t sub_10019684C(uint64_t a1)
{
  result = sub_100196874();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100196874()
{
  result = qword_1002BABC0;
  if (!qword_1002BABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BABC0);
  }

  return result;
}

unint64_t sub_1001968C8(uint64_t a1)
{
  result = sub_1001968F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001968F0()
{
  result = qword_1002BABE0;
  if (!qword_1002BABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BABE0);
  }

  return result;
}

unint64_t sub_100196944(uint64_t a1)
{
  result = sub_10019696C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10019696C()
{
  result = qword_1002BAC00;
  if (!qword_1002BAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC00);
  }

  return result;
}

uint64_t sub_100196A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(v10 + 16);
  if (v11 != v12)
  {
    if (v11 >= v12)
    {
      __break(1u);
      return result;
    }

    sub_100196D70(v10 + 80 * v11 + 32, &v20);
    *(a1 + 24) = v11 + 1;
    if (v21)
    {
      sub_10003708C(&v20, v16);
      sub_10003708C(&v22, v17);
      v13 = v23;
      sub_10003708C(v16, v18);
      sub_10003708C(v17, v19);
      sub_10003708C(v18, v25);
      sub_10003708C(v19, v24);
      *&v20 = a3;
      *(&v20 + 1) = a5;
      v13(v18, &v20);

      (*&v18[0])(&v20, v25, v24);

      v14 = swift_allocObject();
      v14[2] = a1;
      v14[3] = a2;
      v14[4] = a3;
      v14[5] = a5;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_100158108;
      *(v15 + 24) = v14;

      swift_unknownObjectRetain();
      sub_10019F6C8();

      sub_10002C6E0(a2);

      sub_100019CCC(v24);
      return sub_100019CCC(v25);
    }
  }

  return sub_1000A13B0(0);
}

uint64_t sub_100196CA8()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100196CF0()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100196D2C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100196D70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002ADC78, &unk_1002009C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100196DE0(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002ADC78, &unk_1002009C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100196EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1001F10F8(0x6D614E6567616D69, 0xE900000000000065, *(a1 + 96));
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    v7 = sub_1001EA8E8();
    v8 = sub_1001F10F8(0x726F6C6F63, 0xE500000000000000, v7);
    if (v9)
    {
      v10 = sub_1000DFF80(v8, v9);
    }

    else
    {
      v10 = 9;
    }

    v17 = sub_1001F10F8(0x746867696577, 0xE600000000000000, v7);
    v19 = v18;

    if (!v19 || (v20 = sub_1000DFC4C(v17, v19), v20 == 4))
    {
      v20 = 0;
    }

    if (qword_1002AC428 != -1)
    {
      swift_once();
    }

    v21 = *(off_1002AF690 + 2);
    os_unfair_lock_lock(v21);
    sub_1001970AC(v5, v6, v20, v10, v22);
    os_unfair_lock_unlock(v21);

    result = v22[0];
    v15 = v22[1];
    v14 = v23;
    v13 = v24;
    v16 = v25;
    v12 = v26 | ((v27 | (v28 << 16)) << 32);
  }

  else
  {
    type metadata accessor for HTTPResponseHead._Storage();
    result = swift_allocObject();
    v12 = 0;
    v13 = 0uLL;
    *(result + 16) = 0u;
    *(result + 32) = 21;
    *(result + 40) = 65537;
    v14 = 2;
    v15 = _swiftEmptyArrayStorage;
    v16 = 0uLL;
  }

  *a2 = result;
  *(a2 + 8) = v15;
  *(a2 + 16) = v14;
  *(a2 + 24) = v13;
  *(a2 + 40) = v16;
  *(a2 + 56) = v12;
  *(a2 + 62) = BYTE6(v12);
  *(a2 + 60) = WORD2(v12);
  return result;
}

__n128 sub_1001970AC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v20 = a1;
  v21 = a2;
  v22 = 0x4008000000000000;
  v23 = 3;
  v24 = a3;
  v25 = 0x4059000000000000;
  v26 = a4;
  v6 = sub_1000E0138();
  if (v7 >> 60 == 15)
  {
    v8 = 0;
    v14 = 0u;
    v15 = 0u;
    v9 = 25;
  }

  else
  {
    v10 = v6;
    v11 = v7;
    sub_100040C70(v6, v7);
    sub_1000B77D0(v10, v11, 0x76732F6567616D69, 0xED00006C6D782B67, v16);
    v14 = v16[1];
    v15 = v16[0];
    v8 = v17 | ((v18 | (v19 << 16)) << 32);
    sub_10003A36C(v10, v11);
    v9 = 3;
  }

  type metadata accessor for HTTPResponseHead._Storage();
  v12 = swift_allocObject();
  *(v12 + 32) = v9;
  *(v12 + 40) = 65537;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *a5 = v12;
  *(a5 + 8) = _swiftEmptyArrayStorage;
  *(a5 + 16) = 2;
  result = v15;
  *(a5 + 40) = v14;
  *(a5 + 24) = v15;
  *(a5 + 62) = BYTE6(v8);
  *(a5 + 60) = WORD2(v8);
  *(a5 + 56) = v8;
  return result;
}

double sub_100197204@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100196EBC(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  a2[2] = v6[0];
  result = *(v6 + 15);
  *(a2 + 47) = *(v6 + 15);
  return result;
}

void *sub_10019724C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v5 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[3];
  v45 = a1[2];
  v14 = type metadata accessor for PurchaseConfiguration(0);
  v15 = a1 + v14[7];
  v16 = v15[8];
  v44 = v13;
  if (v16)
  {

    v40 = 0;
    v41 = 0;
  }

  else
  {
    v50[0] = *v15;

    v17 = sub_1001F7E28();
    v40 = v18;
    v41 = v17;
  }

  if (*(a1 + v14[11]) == 1)
  {
    v38 = 0;
    v39 = 0;
  }

  else
  {
    v19 = (a1 + v14[10]);
    v20 = *v19;
    v38 = v19[1];
    v39 = v20;
  }

  v43 = v11;
  sub_10005E32C(v11, v12, v10);
  v21 = sub_1001F6578();
  if (sub_10001C990(v10, 1, v21) == 1)
  {
    sub_1000374B8(v10, &qword_1002AFA30, &unk_10020FA10);
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v22 = sub_1001F6528();
    v36 = v23;
    v37 = v22;
    (*(*(v21 - 8) + 8))(v10, v21);
  }

  sub_10019BE80(a1 + v14[6], v7, &qword_1002AFA30, &unk_10020FA10);
  if (sub_10001C990(v7, 1, v21) == 1)
  {
    sub_1000374B8(v7, &qword_1002AFA30, &unk_10020FA10);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v24 = sub_1001F6528();
    v25 = v26;
    (*(*(v21 - 8) + 8))(v7, v21);
  }

  v27 = sub_10016A174(1u);
  v29 = v28;

  LOBYTE(v50[0]) = 1;
  v48 = 1;
  v47 = 1;
  v46 = 1;
  v49[0] = 0;
  LOBYTE(v49[1]) = 1;
  memset(&v49[2], 0, 24);
  LOBYTE(v49[5]) = 1;
  memset(&v49[6], 0, 128);
  LOWORD(v49[22]) = 257;
  memset(&v49[23], 0, 24);
  LOBYTE(v49[26]) = 1;
  memset(&v49[27], 0, 96);
  LOBYTE(v49[39]) = 1;
  debugOnly(_:)();
  memcpy(v50 + 7, v49, 0x139uLL);
  sub_10016C29C(a1);
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = v43;
  *(a3 + 72) = v12;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  v30 = v44;
  *(a3 + 136) = v45;
  *(a3 + 144) = v30;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 200) = 2;
  *(a3 + 208) = 0u;
  v31 = v40;
  *(a3 + 224) = v41;
  *(a3 + 232) = v31;
  *(a3 + 240) = 0u;
  *(a3 + 256) = xmmword_100214E00;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  v32 = v38;
  *(a3 + 400) = v39;
  *(a3 + 408) = v32;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  v33 = v36;
  *(a3 + 496) = v37;
  *(a3 + 504) = v33;
  *(a3 + 512) = v24;
  *(a3 + 520) = v25;
  *(a3 + 528) = v27;
  *(a3 + 536) = v29;
  *(a3 + 544) = 2;
  *(a3 + 552) = 0u;
  *(a3 + 568) = 2;
  return memcpy((a3 + 569), v50, 0x140uLL);
}

uint64_t sub_100197678()
{
  v1 = v0[50];
  if (v0[51])
  {
    if (v0[57] || v0[53] || v0[55] || v0[59])
    {
      return 0;
    }

    else
    {
    }
  }

  return v1;
}

uint64_t sub_1001976E0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for PromotionalOfferData.SigningMethod(0);
  sub_100023520();
  __chkstk_darwin(v7);
  sub_100023510();
  v79 = (v9 - v8);
  v10 = sub_1001F6B98();
  __chkstk_darwin(v10 - 8);
  sub_100023510();
  type metadata accessor for PromotionalOfferData(0);
  sub_100023520();
  __chkstk_darwin(v11);
  sub_100023510();
  v15 = (v14 - v13);
  v94[0] = *(v2 + 400);
  v16 = *(&v94[0] + 1);
  if (*(&v94[0] + 1))
  {
    v84 = v12;
    v17 = *(v2 + 456);
    if ((a1 & 1) != 0 && !v17)
    {
      if (!*(v2 + 424) && !*(v2 + 440) && !*(v2 + 472))
      {
        v42 = a2;
        v43 = 1;
        v12 = v84;
        return sub_100018460(v42, v43, 1, v12);
      }

      v17 = 0;
    }

    v80 = *(v2 + 416);
    v85 = *(v2 + 424);
    v18 = *(v2 + 472);
    v81 = *(v2 + 464);
    v82 = *(&v94[0] + 1);
    v20 = *(v2 + 440);
    v19 = *(v2 + 448);
    v83 = *&v94[0];
    *v15 = *&v94[0];
    v15[1] = v16;
    if (v17)
    {
      v78 = v6;
      v76 = a2;
      v77 = v3;
      v90 = v19;
      v91 = v17;
      v88 = 45;
      v89 = 0xE100000000000000;
      v86 = 43;
      v87 = 0xE100000000000000;
      sub_10019C6F4();
      sub_10019C6F4();
      v21 = sub_10001C790();
      v73[4] = v85;

      v74 = v20;

      v75 = v18;

      v90 = sub_1001749C4(&v88, &v86, v22, v23, v24, v25, v26, v27, type metadata for String, v21, v21, v21);
      v91 = v28;
      v88 = 95;
      v89 = 0xE100000000000000;
      v86 = 47;
      v87 = 0xE100000000000000;
      v35 = sub_1001749C4(&v88, &v86, v29, v30, v31, v32, v33, v34, type metadata for String, v21, v21, v21);
      v37 = v36;

      v92 = v35;
      v93 = v37;

      v38 = sub_1001F6C38();

      if (v38 % 4)
      {
        v96._countAndFlagsBits = 61;
        v96._object = 0xE100000000000000;
        v97._countAndFlagsBits = sub_1001F6D78(v96, 4 - v38 % 4);
        sub_1001F6CA8(v97);
      }

      v39 = sub_1001F6328();
      v41 = v40;
      sub_100040C5C(v39, v40);

      a2 = v76;
      if (v41 >> 60 != 15)
      {
        v45 = sub_1000D4D4C();
        sub_10003A36C(v45, v46);
        v47 = sub_1000D4D4C();
        sub_100040C70(v47, v48);
        sub_1001F6B88();
        sub_1000D4D4C();
        v49 = sub_1001F6B78();
        v51 = v77;
        if (v50)
        {
          v52 = v49;
          v53 = v50;
          v92 = 46;
          v93 = 0xE100000000000000;
          __chkstk_darwin(v49);
          v73[2] = &v92;

          v54 = sub_1001BF6D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_100072CF0, v73, v52, v53)[2];

          if (v54 == 3)
          {
            v55 = sub_1000D4D4C();
            sub_10003A36C(v55, v56);
            sub_1000374B8(v94, &qword_1002AEBE0, &qword_100203700);

            v57 = v79;
            sub_100198798(&v95, v79, v52, v53);
            if (v51)
            {
              v58 = v95;
              sub_1000B2894();
              swift_allocError();
              *v59 = v58;
              v60 = sub_1000D4D4C();
              sub_10003A36C(v60, v61);
              return sub_1000374B8(v94, &qword_1002AEBE0, &qword_100203700);
            }

            v71 = sub_1000D4D4C();
            sub_10003A36C(v71, v72);
            swift_storeEnumTagMultiPayload();
            v67 = v84;
            sub_10019BC50(v57, v15 + *(v84 + 20), type metadata accessor for PromotionalOfferData.SigningMethod);
            goto LABEL_23;
          }

          v65 = sub_1000D4D4C();
          sub_10003A36C(v65, v66);
        }

        else
        {
          v63 = sub_1000D4D4C();
          sub_10003A36C(v63, v64);
        }
      }

      v18 = v75;
      v20 = v74;
      v44 = v85;
    }

    else
    {
      sub_10019C6D4();
      sub_10019C6D4();

      v44 = v85;
      v39 = 0;
      v41 = 0xF000000000000000;
    }

    v67 = v84;
    v68 = v15 + *(v84 + 20);
    v69 = v82;
    *v68 = v83;
    *(v68 + 1) = v69;
    v70 = v81;
    *(v68 + 2) = v80;
    *(v68 + 24) = v44;
    *(v68 + 5) = v20;
    *(v68 + 6) = v39;
    *(v68 + 7) = v41;
    *(v68 + 8) = v70;
    *(v68 + 9) = v18;
    swift_storeEnumTagMultiPayload();
LABEL_23:
    sub_10019BC50(v15, a2, type metadata accessor for PromotionalOfferData);
    v42 = a2;
    v43 = 0;
    v12 = v67;
    return sub_100018460(v42, v43, 1, v12);
  }

  v42 = a2;
  v43 = 1;
  return sub_100018460(v42, v43, 1, v12);
}

uint64_t sub_100197CC4()
{
  v1 = sub_1001F8138();
  sub_10001A278();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100023510();
  v7 = v6 - v5;
  v35 = 0;
  v36 = 0xE000000000000000;
  *(&v31 + 1) = &type metadata for InAppBuyRequest;
  *&v30 = swift_allocObject();
  memcpy((v30 + 16), v0, 0x379uLL);
  sub_1000AC5F4(v0, &v33);
  sub_1001F80E8();
  sub_1001F8128();
  (*(v3 + 8))(v7, v1);
  sub_1001F7A18();

  while (1)
  {
    sub_1001F7B88();
    if (!v32)
    {
      break;
    }

    sub_10003708C(&v31, &v29);
    sub_10019C5E0();
    object = v33._object;
    if (v33._object)
    {
      countAndFlagsBits = v33._countAndFlagsBits;
      sub_100019CCC(v34);
      if (qword_1002AC4B8 != -1)
      {
        swift_once();
      }

      v10 = qword_1002E6150;
      if (*(qword_1002E6150 + 16))
      {
        v11 = sub_10011108C(countAndFlagsBits);
        if (v12)
        {
          v13 = (*(v10 + 56) + 16 * v11);
          countAndFlagsBits = *v13;
          v14 = v13[1];

          object = v14;
        }
      }

      if (qword_1002AC470 != -1)
      {
        swift_once();
      }

      v15 = qword_1002E60D0;
      if (*(qword_1002E60D0 + 16))
      {
        sub_1001F8068();
        sub_1001F6C28();
        v16 = sub_1001F80D8();
        v17 = ~(-1 << *(v15 + 32));
        do
        {
          v18 = v16 & v17;
          if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
          {
            goto LABEL_22;
          }

          v19 = (*(v15 + 48) + 16 * v18);
          if (*v19 == countAndFlagsBits && v19[1] == object)
          {
            break;
          }

          v21 = sub_1001F7EA8();
          v16 = v18 + 1;
        }

        while ((v21 & 1) == 0);
        sub_10019C5E0();

        if (swift_dynamicCast())
        {
          v22 = v28;
          sub_10019C640();
          v23._countAndFlagsBits = v27;
LABEL_37:
          v23._object = v22;
          sub_1001F6CA8(v23);

          v37._countAndFlagsBits = 38;
          v37._object = 0xE100000000000000;
          sub_1001F6CA8(v37);
          sub_1001F6CA8(v33);

          sub_10019C660();
          continue;
        }

        sub_10019C5E0();

        if (swift_dynamicCast())
        {
          sub_10019C640();
          if (v27)
          {
            v23._countAndFlagsBits = 0x4C4452445453;
          }

          else
          {
            v23._countAndFlagsBits = 1363432531;
          }

          if (v27)
          {
            v22 = 0xE600000000000000;
          }

          else
          {
            v22 = 0xE400000000000000;
          }

          goto LABEL_37;
        }

        sub_10019C5E0();

        if (swift_dynamicCast())
        {
          sub_10019C640();
          if (v27)
          {
            v23._countAndFlagsBits = 1702195828;
          }

          else
          {
            v23._countAndFlagsBits = 0x65736C6166;
          }

          if (v27)
          {
            v22 = 0xE400000000000000;
          }

          else
          {
            v22 = 0xE500000000000000;
          }

          goto LABEL_37;
        }

        sub_10019C660();
      }

      else
      {
LABEL_22:

        sub_10019C660();
      }
    }

    else
    {
      sub_10019C660();
      sub_100019CCC(v34);
    }
  }

  v24 = v35;
  v25 = sub_1001F6C38();
  if (v25 >= 1)
  {
    sub_1001D639C(v25);

    return v35;
  }

  return v24;
}

void sub_10019814C()
{
  v26 = *(v0 + 224);
  if (*(&v26 + 1))
  {
    sub_10019C6AC();
    if (v3)
    {
      if ((*(&v26 + 1) & 0x1000000000000000) != 0)
      {
        sub_10019BE80(&v26, v24, &qword_1002AEBE0, &qword_100203700);
        v22 = sub_10012F960();
        sub_1001ED558(v22, v23, 10);
        sub_1000374B8(&v26, &qword_1002AEBE0, &qword_100203700);
        return;
      }

      if ((*(&v26 + 1) & 0x2000000000000000) != 0)
      {
        v24[0] = v26;
        v24[1] = *(&v26 + 1) & 0xFFFFFFFFFFFFFFLL;
        if (v26 == 43)
        {
          if (v2)
          {
            if (v2 != 1)
            {
              sub_10019C600();
              while (1)
              {
                sub_100027240();
                if (!v7 & v6)
                {
                  break;
                }

                sub_10018EDCC();
                if (!v7 || __OFADD__(v16, v15))
                {
                  break;
                }

                sub_10002727C();
                if (v7)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_68;
          }

LABEL_76:
          __break(1u);
          return;
        }

        if (v26 != 45)
        {
          if (v2)
          {
            while (1)
            {
              sub_100027240();
              if (!v7 & v6)
              {
                break;
              }

              sub_10018EDCC();
              if (!v7 || __OFADD__(v21, v20))
              {
                break;
              }

              sub_10002727C();
              if (v7)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_68;
        }

        if (v2)
        {
          if (v2 != 1)
          {
            sub_10019C600();
            while (1)
            {
              sub_100027240();
              if (!v7 & v6)
              {
                break;
              }

              sub_10018EDCC();
              if (!v7 || __OFSUB__(v12, v11))
              {
                break;
              }

              sub_10002727C();
              if (v7)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_68;
        }
      }

      else
      {
        if ((v26 & 0x1000000000000000) != 0)
        {
          v4 = ((*(&v26 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          sub_10012F960();
          v4 = sub_1001F7858();
        }

        v5 = *v4;
        if (v5 == 43)
        {
          if (v1 >= 1)
          {
            if (v1 != 1)
            {
              if (v4)
              {
                sub_10018EE30();
                while (1)
                {
                  sub_100027240();
                  if (!v7 & v6)
                  {
                    goto LABEL_68;
                  }

                  sub_10018EDCC();
                  if (!v7 || __OFADD__(v14, v13))
                  {
                    goto LABEL_68;
                  }

                  sub_10002727C();
                  if (v7)
                  {
                    goto LABEL_69;
                  }
                }
              }

              goto LABEL_59;
            }

            goto LABEL_68;
          }

          goto LABEL_75;
        }

        if (v5 != 45)
        {
          if (v1)
          {
            v17 = 0;
            if (v4)
            {
              while (1)
              {
                v18 = *v4 - 48;
                if (v18 > 9)
                {
                  goto LABEL_68;
                }

                v19 = 10 * v17;
                if ((v17 * 10) >> 64 != (10 * v17) >> 63)
                {
                  goto LABEL_68;
                }

                v17 = v19 + v18;
                if (__OFADD__(v19, v18))
                {
                  goto LABEL_68;
                }

                ++v4;
                if (!--v1)
                {
                  goto LABEL_59;
                }
              }
            }

            goto LABEL_59;
          }

LABEL_68:
          v10 = 1;
          goto LABEL_69;
        }

        if (v1 >= 1)
        {
          if (v1 != 1)
          {
            if (v4)
            {
              sub_10018EE30();
              while (1)
              {
                sub_100027240();
                if (!v7 & v6)
                {
                  goto LABEL_68;
                }

                sub_10018EDCC();
                if (!v7 || __OFSUB__(v9, v8))
                {
                  goto LABEL_68;
                }

                sub_10002727C();
                if (v7)
                {
                  goto LABEL_69;
                }
              }
            }

LABEL_59:
            v10 = 0;
LABEL_69:
            v25 = v10;
            return;
          }

          goto LABEL_68;
        }

        __break(1u);
      }

      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }
  }
}

void sub_1001983D4()
{
  v1 = *(v0 + 232);
  if (v1)
  {
    v2 = *(v0 + 224);
    sub_10019C6AC();
    if (!v5)
    {

      goto LABEL_73;
    }

    if ((v1 & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n();
      v21 = sub_10012F960();
      sub_1001EE478(v21, v22, 10);
      v24 = v23;

      if (v24)
      {
        goto LABEL_73;
      }

LABEL_76:

      return;
    }

    if ((v1 & 0x2000000000000000) != 0)
    {
      if (v2 == 43)
      {
        if (v4)
        {
          if (v4 != 1)
          {
            sub_10019C600();
            while (1)
            {
              sub_100027240();
              if (!v10 && v9)
              {
                break;
              }

              sub_10019C68C();
              if (!v10)
              {
                break;
              }

              sub_10019C67C();
              if (v9)
              {
                break;
              }

              sub_10002727C();
              if (v10)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

        goto LABEL_81;
      }

      if (v2 != 45)
      {
        if (v4)
        {
          while (1)
          {
            sub_100027240();
            if (!v10 && v9)
            {
              break;
            }

            sub_10019C68C();
            if (!v10)
            {
              break;
            }

            sub_10019C67C();
            if (v9)
            {
              break;
            }

            sub_10002727C();
            if (v10)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if (v4)
      {
        if (v4 != 1)
        {
          v13 = 0;
          sub_10019C600();
          while (1)
          {
            sub_100027240();
            if (!v10 && v9)
            {
              break;
            }

            sub_10019C68C();
            if (!v10)
            {
              break;
            }

            v9 = 10 * v13 >= v14;
            v13 = 10 * v13 - v14;
            if (!v9)
            {
              break;
            }

            sub_10002727C();
            if (v10)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v6 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        sub_10012F960();
        v6 = sub_1001F7858();
      }

      v7 = *v6;
      if (v7 == 43)
      {
        if (v3 >= 1)
        {
          if (v3 != 1)
          {
            if (v6)
            {
              sub_10018EE30();
              while (1)
              {
                sub_100027240();
                if (!v10 && v9)
                {
                  goto LABEL_71;
                }

                sub_10019C68C();
                if (!v10)
                {
                  goto LABEL_71;
                }

                sub_10019C67C();
                if (v9)
                {
                  goto LABEL_71;
                }

                sub_10002727C();
                if (v10)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_71;
        }

        goto LABEL_80;
      }

      if (v7 != 45)
      {
        if (v3)
        {
          v15 = 0;
          if (v6)
          {
            while (1)
            {
              v16 = *v6 - 48;
              if (v16 > 9)
              {
                goto LABEL_71;
              }

              if (!is_mul_ok(v15, 0xAuLL))
              {
                goto LABEL_71;
              }

              v9 = __CFADD__(10 * v15, v16);
              v15 = 10 * v15 + v16;
              if (v9)
              {
                goto LABEL_71;
              }

              ++v6;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_71:
        v12 = 1;
LABEL_72:
        v17 = v12;

        if (v17)
        {
LABEL_73:
          v18 = sub_10012F960();
          sub_1001EE474(v18, v19, v20);
          return;
        }

        goto LABEL_76;
      }

      if (v3 >= 1)
      {
        if (v3 != 1)
        {
          v8 = 0;
          if (v6)
          {
            sub_10018EE30();
            while (1)
            {
              sub_100027240();
              if (!v10 && v9)
              {
                goto LABEL_71;
              }

              sub_10019C68C();
              if (!v10)
              {
                goto LABEL_71;
              }

              v9 = 10 * v8 >= v11;
              v8 = 10 * v8 - v11;
              if (!v9)
              {
                goto LABEL_71;
              }

              sub_10002727C();
              if (v10)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_62:
          v12 = 0;
          goto LABEL_72;
        }

        goto LABEL_71;
      }

      __break(1u);
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
  }
}

uint64_t sub_100198684@<X0>(char *a1@<X8>)
{
  v3 = v2;
  v5 = *(v1 + 488);
  if (v5)
  {
    v6 = *(v1 + 480);

    sub_100199180(&v12, a1, v6, v5);
    if (v3)
    {
      v7 = v12;
      sub_1000B2894();
      result = swift_allocError();
      *v9 = v7;
    }

    else
    {
      v11 = sub_1000183C4(&qword_1002B23C0, &unk_1002087B0);
      return sub_100018460(a1, 0, 1, v11);
    }
  }

  else
  {
    v10 = sub_1000183C4(&qword_1002B23C0, &unk_1002087B0);
    return sub_100018460(a1, 1, 1, v10);
  }

  return result;
}

uint64_t sub_10019876C(char a1)
{
  if (a1)
  {
    return 0x4C4452445453;
  }

  else
  {
    return 1363432531;
  }
}

uint64_t sub_100198798@<X0>(_BYTE *a1@<X2>, char *a2@<X8>, uint64_t a3@<X0>, unint64_t a4@<X1>)
{
  v81 = a1;
  v71 = a2;
  v65 = type metadata accessor for PromotionalOfferData.JWTPayload(0);
  __chkstk_darwin(v65);
  v66 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1001F5E48();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __src[0] = 46;
  __src[1] = 0xE100000000000000;
  v73 = __src;
  v9 = sub_1001BF6D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_100072CF0, v72, a3, a4);
  v67 = v4;
  v10 = 0;
  v11 = v9[2];
  v12 = v9 + 7;
  v13 = _swiftEmptyArrayStorage;
  while (v11 != v10)
  {
    if (v10 >= v9[2])
    {
      __break(1u);
LABEL_36:
      swift_once();
LABEL_15:
      v31 = sub_1001F6688();
      sub_100019C94(v31, qword_1002E6180);
      v32 = sub_1001F6668();
      v33 = sub_1001F7298();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Invalid JWS header and/or payload components", v34, 2u);
      }

      LOBYTE(__src[0]) = 0;
      sub_1000B2894();
      result = swift_willThrowTypedImpl();
LABEL_18:
      *v81 = 0;
      return result;
    }

    v14 = sub_1001F6BE8();
    v16 = v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100032370();
      v13 = v19;
    }

    v17 = v13[2];
    if (v17 >= v13[3] >> 1)
    {
      sub_100032370();
      v13 = v20;
    }

    v13[2] = v17 + 1;
    v18 = &v13[2 * v17];
    v18[4] = v14;
    v18[5] = v16;
    v12 += 4;
    ++v10;
  }

  if (v13[2] != 3)
  {
    goto LABEL_13;
  }

  v21 = v13[5];
  v79 = v13[4];
  v80 = v21;
  v77 = 45;
  v78 = 0xE100000000000000;
  v75 = 43;
  v76 = 0xE100000000000000;
  sub_10001C790();
  v22 = type metadata for String;
  v79 = sub_1001F75F8();
  v80 = v23;
  v77 = 95;
  v78 = 0xE100000000000000;
  v75 = 47;
  v76 = 0xE100000000000000;
  v24 = sub_1001F75F8();
  v26 = v25;

  __src[0] = v24;
  __src[1] = v26;

  v27 = sub_1001F6C38();

  if (v27 % 4)
  {
    v82._countAndFlagsBits = 61;
    v82._object = 0xE100000000000000;
    v83._countAndFlagsBits = sub_1001F6D78(v82, 4 - v27 % 4);
    sub_1001F6CA8(v83);
  }

  v28 = sub_1001F6328();
  v30 = v29;
  sub_100040C5C(v28, v29);

  if (v30 >> 60 == 15)
  {
LABEL_13:

    goto LABEL_14;
  }

  sub_10003A36C(v28, v30);
  if (v13[2] < 2uLL)
  {
    __break(1u);
LABEL_38:
    swift_once();
LABEL_28:
    v51 = sub_1001F6688();
    sub_100019C94(v51, qword_1002E6180);
    swift_errorRetain();
    v52 = sub_1001F6668();
    v53 = sub_1001F7298();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v70 = v28;
      v56 = v55;
      *v54 = 138412290;
      swift_errorRetain();
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 4) = v57;
      *v56 = v57;
      _os_log_impl(&_mh_execute_header, v52, v53, "Failed to decode JWS data: %@", v54, 0xCu);
      sub_1000374B8(v56, &unk_1002BA650, &unk_100203AA0);
      v28 = v70;
    }

    LOBYTE(__src[0]) = 0;
    sub_1000B2894();
    swift_willThrowTypedImpl();
    sub_10003A36C(v28, v30);
    sub_10003A36C(v64, v22);

    if (!v12)
    {
      memcpy(__src, v71, sizeof(__src));
      sub_1000374B8(__src, &qword_1002BAC58, qword_100214E90);
    }

    goto LABEL_18;
  }

  v36 = v13[7];
  v79 = v13[6];
  v80 = v36;
  v77 = 45;
  v78 = 0xE100000000000000;
  v75 = 43;
  v76 = 0xE100000000000000;
  v79 = sub_1001F75F8();
  v80 = v37;
  v77 = 95;
  v78 = 0xE100000000000000;
  v75 = 47;
  v76 = 0xE100000000000000;
  v38 = sub_1001F75F8();
  v40 = v39;

  __src[0] = v38;
  __src[1] = v40;

  v41 = sub_1001F6C38();

  if (v41 % 4)
  {
    v84._countAndFlagsBits = 61;
    v84._object = 0xE100000000000000;
    v85._countAndFlagsBits = sub_1001F6D78(v84, 4 - v41 % 4);
    sub_1001F6CA8(v85);
  }

  v42 = sub_1001F6328();
  v44 = v43;
  sub_100040C5C(v42, v43);

  v45 = v71;
  if (v44 >> 60 == 15)
  {

    sub_10003A36C(v28, v30);
LABEL_14:
    if (qword_1002AC510 != -1)
    {
      goto LABEL_36;
    }

    goto LABEL_15;
  }

  sub_10003A36C(v42, v44);
  v46 = sub_1000183C4(&qword_1002B23B8, &unk_1002087A0);
  *&v45[*(v46 + 52)] = v13;
  sub_1001F5E88();
  swift_allocObject();
  v64 = v42;
  v63 = v44;

  sub_1001F5E78();
  (*(v69 + 104))(v68, enum case for JSONDecoder.DateDecodingStrategy.millisecondsSince1970(_:), v70);
  sub_1001F5E58();
  sub_1000183C4(&qword_1002BAC58, qword_100214E90);
  v47 = v45;
  sub_10019BBB4(&qword_1002BAC60, &qword_1002BAC58, qword_100214E90);
  v48 = v67;
  sub_1001F5E68();
  v12 = v48;
  if (v48)
  {
    v22 = v63;

    if (qword_1002AC510 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

  v70 = v46;
  memcpy(v47, __src, 0x48uLL);
  sub_10019BC08(&qword_1002BAC68, type metadata accessor for PromotionalOfferData.JWTPayload, &unk_100219B80);
  v49 = v66;
  v50 = v63;
  sub_1001F5E68();

  v58 = v70;
  result = sub_10019BC50(v49, &v47[*(v70 + 44)], type metadata accessor for PromotionalOfferData.JWTPayload);
  if (v13[2] < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v60 = v13[8];
    v59 = v13[9];

    sub_10003A36C(v28, v30);
    result = sub_10003A36C(v64, v50);
    v61 = &v47[*(v58 + 48)];
    *v61 = v60;
    *(v61 + 1) = v59;
  }

  return result;
}

uint64_t sub_100199180@<X0>(_BYTE *a1@<X2>, char *a2@<X8>, uint64_t a3@<X0>, unint64_t a4@<X1>)
{
  v81 = a1;
  v71 = a2;
  v65 = type metadata accessor for IntroOfferEligibilityOverride(0);
  __chkstk_darwin(v65);
  v66 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1001F5E48();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __src[0] = 46;
  __src[1] = 0xE100000000000000;
  v73 = __src;
  v9 = sub_1001BF6D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_100048E80, v72, a3, a4);
  v67 = v4;
  v10 = 0;
  v11 = v9[2];
  v12 = v9 + 7;
  v13 = _swiftEmptyArrayStorage;
  while (v11 != v10)
  {
    if (v10 >= v9[2])
    {
      __break(1u);
LABEL_36:
      swift_once();
LABEL_15:
      v31 = sub_1001F6688();
      sub_100019C94(v31, qword_1002E6180);
      v32 = sub_1001F6668();
      v33 = sub_1001F7298();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Invalid JWS header and/or payload components", v34, 2u);
      }

      LOBYTE(__src[0]) = 0;
      sub_1000B2894();
      result = swift_willThrowTypedImpl();
LABEL_18:
      *v81 = 0;
      return result;
    }

    v14 = sub_1001F6BE8();
    v16 = v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100032370();
      v13 = v19;
    }

    v17 = v13[2];
    if (v17 >= v13[3] >> 1)
    {
      sub_100032370();
      v13 = v20;
    }

    v13[2] = v17 + 1;
    v18 = &v13[2 * v17];
    v18[4] = v14;
    v18[5] = v16;
    v12 += 4;
    ++v10;
  }

  if (v13[2] != 3)
  {
    goto LABEL_13;
  }

  v21 = v13[5];
  v79 = v13[4];
  v80 = v21;
  v77 = 45;
  v78 = 0xE100000000000000;
  v75 = 43;
  v76 = 0xE100000000000000;
  sub_10001C790();
  v22 = type metadata for String;
  v79 = sub_1001F75F8();
  v80 = v23;
  v77 = 95;
  v78 = 0xE100000000000000;
  v75 = 47;
  v76 = 0xE100000000000000;
  v24 = sub_1001F75F8();
  v26 = v25;

  __src[0] = v24;
  __src[1] = v26;

  v27 = sub_1001F6C38();

  if (v27 % 4)
  {
    v82._countAndFlagsBits = 61;
    v82._object = 0xE100000000000000;
    v83._countAndFlagsBits = sub_1001F6D78(v82, 4 - v27 % 4);
    sub_1001F6CA8(v83);
  }

  v28 = sub_1001F6328();
  v30 = v29;
  sub_100040C5C(v28, v29);

  if (v30 >> 60 == 15)
  {
LABEL_13:

    goto LABEL_14;
  }

  sub_10003A36C(v28, v30);
  if (v13[2] < 2uLL)
  {
    __break(1u);
LABEL_38:
    swift_once();
LABEL_28:
    v51 = sub_1001F6688();
    sub_100019C94(v51, qword_1002E6180);
    swift_errorRetain();
    v52 = sub_1001F6668();
    v53 = sub_1001F7298();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v70 = v28;
      v56 = v55;
      *v54 = 138412290;
      swift_errorRetain();
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 4) = v57;
      *v56 = v57;
      _os_log_impl(&_mh_execute_header, v52, v53, "Failed to decode JWS data: %@", v54, 0xCu);
      sub_1000374B8(v56, &unk_1002BA650, &unk_100203AA0);
      v28 = v70;
    }

    LOBYTE(__src[0]) = 0;
    sub_1000B2894();
    swift_willThrowTypedImpl();
    sub_10003A36C(v28, v30);
    sub_10003A36C(v64, v22);

    if (!v12)
    {
      memcpy(__src, v71, sizeof(__src));
      sub_1000374B8(__src, &qword_1002BAC40, &unk_100214E80);
    }

    goto LABEL_18;
  }

  v36 = v13[7];
  v79 = v13[6];
  v80 = v36;
  v77 = 45;
  v78 = 0xE100000000000000;
  v75 = 43;
  v76 = 0xE100000000000000;
  v79 = sub_1001F75F8();
  v80 = v37;
  v77 = 95;
  v78 = 0xE100000000000000;
  v75 = 47;
  v76 = 0xE100000000000000;
  v38 = sub_1001F75F8();
  v40 = v39;

  __src[0] = v38;
  __src[1] = v40;

  v41 = sub_1001F6C38();

  if (v41 % 4)
  {
    v84._countAndFlagsBits = 61;
    v84._object = 0xE100000000000000;
    v85._countAndFlagsBits = sub_1001F6D78(v84, 4 - v41 % 4);
    sub_1001F6CA8(v85);
  }

  v42 = sub_1001F6328();
  v44 = v43;
  sub_100040C5C(v42, v43);

  v45 = v71;
  if (v44 >> 60 == 15)
  {

    sub_10003A36C(v28, v30);
LABEL_14:
    if (qword_1002AC510 != -1)
    {
      goto LABEL_36;
    }

    goto LABEL_15;
  }

  sub_10003A36C(v42, v44);
  v46 = sub_1000183C4(&qword_1002B23C0, &unk_1002087B0);
  *&v45[*(v46 + 52)] = v13;
  sub_1001F5E88();
  swift_allocObject();
  v64 = v42;
  v63 = v44;

  sub_1001F5E78();
  (*(v69 + 104))(v68, enum case for JSONDecoder.DateDecodingStrategy.millisecondsSince1970(_:), v70);
  sub_1001F5E58();
  sub_1000183C4(&qword_1002BAC40, &unk_100214E80);
  v47 = v45;
  sub_10019BBB4(&qword_1002BAC48, &qword_1002BAC40, &unk_100214E80);
  v48 = v67;
  sub_1001F5E68();
  v12 = v48;
  if (v48)
  {
    v22 = v63;

    if (qword_1002AC510 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

  v70 = v46;
  memcpy(v47, __src, 0x48uLL);
  sub_10019BC08(&qword_1002BAC50, type metadata accessor for IntroOfferEligibilityOverride, &unk_1001FF718);
  v49 = v66;
  v50 = v63;
  sub_1001F5E68();

  v58 = v70;
  result = sub_10019BC50(v49, &v47[*(v70 + 44)], type metadata accessor for IntroOfferEligibilityOverride);
  if (v13[2] < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v60 = v13[8];
    v59 = v13[9];

    sub_10003A36C(v28, v30);
    result = sub_10003A36C(v64, v50);
    v61 = &v47[*(v58 + 48)];
    *v61 = v60;
    *(v61 + 1) = v59;
  }

  return result;
}

uint64_t sub_100199B68(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_10027CD58;
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

uint64_t sub_100199BE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100199B68(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100199C10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10019876C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100199CEC()
{
  result = sub_1001F69B8();
  qword_1002E6150 = result;
  return result;
}

unint64_t sub_100199D28(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001F7F58();

  if (v2 >= 0x26)
  {
    return 38;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100199D88(char a1)
{
  result = 1935959649;
  switch(a1)
  {
    case 1:
      result = 0x756F636341707061;
      break;
    case 2:
      result = 0x496D616441707061;
      break;
    case 3:
      result = 0x64697344707061;
      break;
    case 4:
      result = 0x7256747845707061;
      break;
    case 5:
    case 21:
      sub_10001E818();
      result = v5 | 2;
      break;
    case 6:
      result = 6580578;
      break;
    case 7:
      result = 1936881250;
      break;
    case 8:
    case 31:
      sub_10001E818();
      result = v6 + 1;
      break;
    case 9:
      sub_10001E818();
      result = v4 + 15;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 1684632935;
      break;
    case 12:
      result = 0x6E4F707041534F69;
      break;
    case 13:
      result = 0x636E7973626BLL;
      break;
    case 14:
      result = 0x6D614E726566666FLL;
      break;
    case 15:
      result = 0x646F43726566666FLL;
      break;
    case 16:
      result = 0x66664F636F486461;
      break;
    case 17:
      result = 0x79654B636F486461;
      break;
    case 18:
      result = 0x6E6F4E636F486461;
      break;
    case 19:
      result = 0x676953636F486461;
      break;
    case 20:
      result = 0x6D6954636F486461;
      break;
    case 22:
      sub_10001E818();
      result = v8 + 9;
      break;
    case 23:
      result = 26480;
      break;
    case 24:
      result = 0x6563697270;
      break;
    case 25:
      result = 0xD000000000000011;
      break;
    case 26:
      result = 0x54746375646F7270;
      break;
    case 27:
      result = 0x797469746E617571;
      break;
    case 28:
      result = 0x7975626572;
      break;
    case 29:
      result = 0x41656C62616C6173;
      break;
    case 30:
      result = 0x754E6C6169726573;
      break;
    case 32:
      sub_10001E818();
      result = v7 + 3;
      break;
    case 33:
      result = 0x686F4365726F7473;
      break;
    case 34:
      sub_10001E818();
      result = v3 | 4;
      break;
    case 35:
      result = 0x704F626557736168;
      break;
    case 36:
      result = 1682534515;
      break;
    case 37:
      result = 6580598;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10019A244(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002BAC28, &unk_100214E70);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v12 - v9;
  sub_10001AE68(a1, a1[3]);
  sub_10019BA10();
  sub_1001F8198();
  v14 = 0;
  sub_10019C5C0();
  sub_1001F7D18();
  if (!v2)
  {
    sub_10019C4D0(1);
    sub_1001F7D18();
    sub_10019C4D0(2);
    sub_1001F7D18();
    sub_10019C4D0(3);
    sub_1001F7D18();
    sub_10019C4D0(4);
    sub_1001F7D18();
    sub_10019C4D0(5);
    sub_1001F7D18();
    sub_10019C4D0(6);
    sub_1001F7D88();
    sub_10019C4D0(7);
    sub_1001F7D18();
    sub_10019C4D0(8);
    sub_1001F7D18();
    v14 = v3[544];
    v13 = 9;
    sub_10019BB0C();
    sub_10019C620();
    sub_10019C5C0();
    sub_1001F7D58();
    v14 = v3[96];
    v13 = 10;
    sub_10019C620();
    sub_10019C5C0();
    sub_1001F7D58();
    sub_10019C4D0(11);
    sub_1001F7D18();
    sub_10019C4D0(12);
    sub_1001F7D18();
    sub_10019C4D0(13);
    sub_1001F7D18();
    sub_10019C4D0(14);
    sub_1001F7D18();
    sub_10019C4D0(15);
    sub_1001F7D18();
    sub_10019C4D0(16);
    sub_1001F7D18();
    sub_10019C4D0(17);
    sub_1001F7D18();
    sub_10019C4D0(18);
    sub_1001F7D18();
    sub_10019C4D0(19);
    sub_1001F7D18();
    sub_10019C4D0(20);
    sub_1001F7D18();
    sub_10019C4D0(21);
    sub_1001F7D18();
    sub_10019C4D0(22);
    sub_1001F7D18();
    sub_10019C4D0(23);
    sub_1001F7D18();
    sub_10019C4D0(24);
    sub_1001F7D18();
    v14 = v3[200];
    v13 = 25;
    sub_10019BB60();
    sub_10019C620();
    sub_10019C5C0();
    sub_1001F7D58();
    sub_10019C4D0(26);
    sub_1001F7D18();
    sub_10019C4D0(27);
    sub_1001F7D18();
    sub_10019C4D0(28);
    sub_1001F7D18();
    sub_10019C4D0(29);
    sub_1001F7D18();
    sub_10019C4D0(30);
    sub_1001F7D18();
    sub_10019C4D0(31);
    sub_1001F7D18();
    sub_10019C4D0(32);
    sub_1001F7D18();
    sub_10019C4D0(33);
    sub_1001F7D18();
    v14 = v3[568];
    v13 = 34;
    sub_10019C620();
    sub_10019C5C0();
    sub_1001F7D58();
    sub_10019C4D0(35);
    sub_1001F7D18();
    sub_10019C4D0(36);
    sub_1001F7D18();
    sub_10019C4D0(37);
    sub_1001F7D18();
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_10019A760@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002BAC08, &unk_100214E60);
  sub_10001A278();
  __chkstk_darwin(v6);
  sub_1000402A0(v129);
  memcpy(&v125[7], v129, 0x139uLL);
  sub_10001AE68(a1, a1[3]);
  sub_10019BA10();
  sub_1001F8178();
  if (v2)
  {
    sub_10019C58C();
    sub_10019C560();
    sub_10019C4A8();
    sub_10019C630();
    sub_100019CCC(a1);

    if (v5)
    {
    }

    if (v91)
    {
    }

    if (v89)
    {
    }

    memcpy(v118, &v125[7], 0x139uLL);
    return sub_1000374B8(v118, &qword_1002ADF78, &qword_1002011D0);
  }

  else
  {
    v7 = a2;
    LOBYTE(v118[0]) = 0;
    sub_10019C5B4();
    v8 = sub_1001F7C08();
    v85 = v9;
    sub_10019C4E8(1);
    v10 = sub_1001F7C08();
    v84 = v11;
    sub_10019C4E8(2);
    v92 = sub_1001F7C08();
    v83 = v12;
    sub_10019C4E8(3);
    v90 = sub_1001F7C08();
    v82 = v13;
    sub_10019C4E8(4);
    v80 = sub_1001F7C08();
    v81 = v14;
    sub_10019C4E8(5);
    v79 = sub_1001F7C08();
    v114 = v15;
    sub_10019C4E8(6);
    v78 = sub_1001F7C78();
    v88 = v16;
    sub_10019C4E8(7);
    v76 = sub_1001F7C08();
    v112 = v17;
    sub_10019C4E8(8);
    v77 = sub_1001F7C08();
    v75 = v10;
    v115 = v18;
    sub_10019BA64();
    sub_10019C5CC();
    sub_10019C5B4();
    sub_1001F7C48();
    sub_10019C5CC();
    sub_10019C5B4();
    sub_1001F7C48();
    sub_10019C4E8(11);
    v74 = sub_1001F7C08();
    v87 = v19;
    sub_10019C4E8(12);
    v73 = sub_1001F7C08();
    v86 = v20;
    sub_10019C4E8(13);
    v72 = sub_1001F7C08();
    v130 = v21;
    sub_10019C4E8(14);
    v71 = sub_1001F7C08();
    v116 = v22;
    sub_10019C4E8(15);
    v70 = sub_1001F7C08();
    v113 = v23;
    sub_10019C4E8(16);
    v69 = sub_1001F7C08();
    v111 = v24;
    sub_10019C4E8(17);
    v68 = sub_1001F7C08();
    v110 = v25;
    sub_10019C4E8(18);
    v67 = sub_1001F7C08();
    v109 = v26;
    sub_10019C4E8(19);
    v66 = sub_1001F7C08();
    v108 = v27;
    sub_10019C4E8(20);
    v65 = sub_1001F7C08();
    v107 = v28;
    sub_10019C4E8(21);
    v64 = sub_1001F7C08();
    v104 = v29;
    sub_10019C4E8(22);
    v63 = sub_1001F7C08();
    v106 = v30;
    sub_10019C4E8(23);
    v62 = sub_1001F7C08();
    v103 = v31;
    sub_10019C4E8(24);
    v61 = sub_1001F7C08();
    v101 = v32;
    sub_10019BAB8();
    sub_10019C5CC();
    sub_10019C5B4();
    sub_1001F7C48();
    sub_10019C4E8(26);
    v60 = sub_1001F7C08();
    v96 = v33;
    sub_10019C4E8(27);
    v59 = sub_1001F7C08();
    v95 = v34;
    sub_10019C4E8(28);
    v58 = sub_1001F7C08();
    v97 = v35;
    sub_10019C4E8(29);
    v57 = sub_1001F7C08();
    v98 = v36;
    sub_10019C4E8(30);
    v56 = sub_1001F7C08();
    v99 = v37;
    sub_10019C4E8(31);
    v55 = sub_1001F7C08();
    v100 = v38;
    sub_10019C4E8(32);
    v54 = sub_1001F7C08();
    v102 = v39;
    sub_10019C4E8(33);
    v53 = sub_1001F7C08();
    v94 = v40;
    LOBYTE(v117[0]) = 34;
    sub_10019C5CC();
    sub_10019C5B4();
    sub_1001F7C48();
    sub_10019C4E8(35);
    v41 = sub_1001F7C08();
    v93 = v42;
    v43 = v41;
    sub_10019C4E8(36);
    v52 = sub_1001F7C08();
    v105 = v44;
    v124[326] = 37;
    sub_10019C5B4();
    v45 = sub_1001F7C08();
    v50 = v46;
    v51 = v45;
    v47 = sub_10019C5A4();
    v48(v47);
    *(&v117[68] + 1) = *v126;
    *(&v117[12] + 1) = *v128;
    HIDWORD(v117[12]) = *&v128[3];
    HIDWORD(v117[25]) = *&v127[3];
    *(&v117[25] + 1) = *v127;
    HIDWORD(v117[68]) = *&v126[3];
    v117[0] = v8;
    v117[1] = v85;
    v117[2] = v92;
    v117[3] = v83;
    v117[4] = v90;
    v117[5] = v82;
    v117[6] = v80;
    v117[7] = v81;
    v117[8] = v78;
    v117[9] = v88;
    v117[10] = v76;
    v117[11] = v112;
    LOBYTE(v117[12]) = 0;
    v117[13] = v43;
    v117[14] = v93;
    v117[15] = v72;
    v117[16] = v130;
    v117[17] = v71;
    v117[18] = v116;
    v117[19] = v64;
    v117[20] = v104;
    v117[21] = v62;
    v117[22] = v103;
    v117[23] = v61;
    v117[24] = v101;
    LOBYTE(v117[25]) = 0;
    v117[26] = v60;
    v117[27] = v96;
    v117[28] = v59;
    v117[29] = v95;
    v117[30] = v53;
    v117[31] = v94;
    v117[32] = v58;
    v117[33] = v97;
    v117[34] = v57;
    v117[35] = v98;
    v117[36] = v56;
    v117[37] = v99;
    v117[38] = v55;
    v117[39] = v100;
    v117[40] = v54;
    v117[41] = v102;
    v117[42] = v79;
    v117[43] = v114;
    v117[44] = v74;
    v117[45] = v87;
    v117[46] = v73;
    v117[47] = v86;
    v117[48] = v51;
    v117[49] = v50;
    v117[50] = v69;
    v117[51] = v111;
    v117[52] = v68;
    v117[53] = v110;
    v117[54] = v67;
    v117[55] = v109;
    v117[56] = v66;
    v117[57] = v108;
    v117[58] = v65;
    v117[59] = v107;
    v117[60] = v63;
    v117[61] = v106;
    v117[62] = v77;
    v117[63] = v115;
    v117[64] = v75;
    v117[65] = v84;
    v117[66] = v70;
    v117[67] = v113;
    LOBYTE(v117[68]) = 0;
    v117[69] = v52;
    v117[70] = v105;
    LOBYTE(v117[71]) = 0;
    memcpy(&v117[71] + 1, v125, 0x140uLL);
    sub_1000AC5F4(v117, v118);
    sub_100019CCC(a1);
    v118[0] = v8;
    v118[1] = v85;
    v118[2] = v92;
    v118[3] = v83;
    v118[4] = v90;
    v118[5] = v82;
    v118[6] = v80;
    v118[7] = v81;
    v118[8] = v78;
    v118[9] = v88;
    v118[10] = v76;
    v118[11] = v112;
    LOBYTE(v118[12]) = 0;
    v118[13] = v43;
    v118[14] = v93;
    v118[15] = v72;
    v118[16] = v130;
    v118[17] = v71;
    v118[18] = v116;
    v118[19] = v64;
    v118[20] = v104;
    v118[21] = v62;
    v118[22] = v103;
    v118[23] = v61;
    v118[24] = v101;
    LOBYTE(v118[25]) = 0;
    v118[26] = v60;
    v118[27] = v96;
    v118[28] = v59;
    v118[29] = v95;
    v118[30] = v53;
    v118[31] = v94;
    v118[32] = v58;
    v118[33] = v97;
    v118[34] = v57;
    v118[35] = v98;
    v118[36] = v56;
    v118[37] = v99;
    v118[38] = v55;
    v118[39] = v100;
    v118[40] = v54;
    v118[41] = v102;
    v118[42] = v79;
    v118[43] = v114;
    *(&v118[12] + 1) = *v128;
    HIDWORD(v118[12]) = *&v128[3];
    HIDWORD(v118[25]) = *&v127[3];
    *(&v118[25] + 1) = *v127;
    v118[44] = v74;
    v118[45] = v87;
    v118[46] = v73;
    v118[47] = v86;
    v118[48] = v51;
    v118[49] = v50;
    v118[50] = v69;
    v118[51] = v111;
    v118[52] = v68;
    v118[53] = v110;
    v118[54] = v67;
    v118[55] = v109;
    v118[56] = v66;
    v118[57] = v108;
    v118[58] = v65;
    v118[59] = v107;
    v118[60] = v63;
    v118[61] = v106;
    v118[62] = v77;
    v118[63] = v115;
    v118[64] = v75;
    v118[65] = v84;
    v118[66] = v70;
    v118[67] = v113;
    v119 = 0;
    *v120 = *v126;
    *&v120[3] = *&v126[3];
    v121 = v52;
    v122 = v105;
    v123 = 0;
    memcpy(v124, v125, 0x140uLL);
    sub_1000ACE5C(v118);
    return memcpy(v7, v117, 0x379uLL);
  }
}

unint64_t sub_10019B878@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100199D28(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10019B8A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100199D88(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10019B8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100199D7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10019B904@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100199D80();
  *a1 = result;
  return result;
}

uint64_t sub_10019B92C(uint64_t a1)
{
  v2 = sub_10019BA10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019B968(uint64_t a1)
{
  v2 = sub_10019BA10();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10019B9A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10019A760(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x379uLL);
  }

  return result;
}

unint64_t sub_10019BA10()
{
  result = qword_1002BAC10;
  if (!qword_1002BAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC10);
  }

  return result;
}

unint64_t sub_10019BA64()
{
  result = qword_1002BAC18;
  if (!qword_1002BAC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC18);
  }

  return result;
}

unint64_t sub_10019BAB8()
{
  result = qword_1002BAC20;
  if (!qword_1002BAC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC20);
  }

  return result;
}

unint64_t sub_10019BB0C()
{
  result = qword_1002BAC30;
  if (!qword_1002BAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC30);
  }

  return result;
}

unint64_t sub_10019BB60()
{
  result = qword_1002BAC38;
  if (!qword_1002BAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC38);
  }

  return result;
}

uint64_t sub_10019BBB4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10019BC08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10019BC50(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100023520();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10019BCB0()
{

  if (*(v0 + 616) != 1)
  {
  }

  return _swift_deallocObject(v0, 905, 7);
}

uint64_t sub_10019BE80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000183C4(a3, a4);
  sub_100023520();
  (*(v6 + 16))(a2, a1);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for PricingParameters(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10019BFACLL);
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

uint64_t getEnumTagSinglePayload for InAppBuyRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDB)
  {
    if (a2 + 37 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 37) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 38;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v5 = v6 - 38;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InAppBuyRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDA)
  {
    v6 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
        JUMPOUT(0x10019C138);
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
          *result = a2 + 37;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10019C178(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 889))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_10019C1B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
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
    *(result + 888) = 0;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 889) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 889) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10019C2F8()
{
  result = qword_1002BAC70;
  if (!qword_1002BAC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC70);
  }

  return result;
}

unint64_t sub_10019C350()
{
  result = qword_1002BAC78;
  if (!qword_1002BAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC78);
  }

  return result;
}

unint64_t sub_10019C3A8()
{
  result = qword_1002BAC80;
  if (!qword_1002BAC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC80);
  }

  return result;
}

unint64_t sub_10019C400()
{
  result = qword_1002BAC88;
  if (!qword_1002BAC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC88);
  }

  return result;
}

unint64_t sub_10019C454()
{
  result = qword_1002BAC90;
  if (!qword_1002BAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAC90);
  }

  return result;
}

void sub_10019C4A8()
{
  v0[56] = 0;
  v0[57] = 0;
  v0[54] = 0;
  v0[55] = 0;
  v0[52] = 0;
  v0[53] = 0;
  v0[49] = 0;
  v0[50] = 0;
  v0[51] = 0;
  v0[58] = 0;
  v0[59] = 0;
  v0[71] = 0;
  *(v1 - 72) = 0;
  v0[48] = 0;
}

void sub_10019C500()
{
  v0[56] = 0;
  v0[57] = 0;
  v0[54] = 0;
  v0[55] = 0;
  v0[52] = 0;
  v0[53] = 0;
  v0[49] = 0;
  v0[50] = 0;
  v0[51] = 0;
  v0[58] = 0;
  v0[59] = 0;
  v0[71] = 0;
}

void sub_10019C520()
{
  v0[56] = 0;
  v0[57] = 0;
  v0[54] = 0;
  v0[55] = 0;
  v0[52] = 0;
  v0[53] = 0;
  v0[49] = 0;
  v0[50] = 0;
  v0[51] = 0;
}

void sub_10019C538()
{
  *(v0 + 376) = 0;
  *(v0 + 368) = 0;
  *(v0 + 480) = 0;
  *(v0 + 488) = 0;
  *(v0 + 544) = 0;
  *(v0 + 560) = 0;
  *(v0 + 496) = 0;
  *(v0 + 504) = 0;
  *(v0 + 512) = 0;
  *(v0 + 520) = 0;
  *(v0 + 528) = 0;
}

void sub_10019C560()
{
  v0[70] = 0;
  v0[62] = 0;
  v0[63] = 0;
  v0[64] = 0;
  v0[65] = 0;
  v0[66] = 0;
}

void sub_10019C578()
{
  v0[62] = 0;
  v0[63] = 0;
  v0[64] = 0;
  v0[65] = 0;
  v0[66] = 0;
}

void sub_10019C58C()
{
  *(v0 + 376) = 0;
  *(v0 + 368) = 0;
  *(v0 + 480) = 0;
  *(v0 + 488) = 0;
  *(v0 + 544) = 0;
}

uint64_t sub_10019C5E0()
{

  return sub_10019BE80(v0 + 16, v0 + 120, v1, v2);
}

void sub_10019C610()
{
  v0[60] = 0;
  v0[57] = 0;
  v0[54] = 0;
  v0[55] = 0;
}

void sub_10019C640()
{
  *(v0 + 120) = v2;
  *(v0 + 128) = v1;
  v4._countAndFlagsBits = 61;
  v4._object = 0xE100000000000000;

  sub_1001F6CA8(v4);
}

uint64_t sub_10019C660()
{

  return sub_1000374B8(v0 + 16, v1, v2);
}

void sub_10019C698()
{
  v0[61] = 0;
  v0[62] = 0;
  v0[63] = 0;
  v0[64] = 0;
  v0[65] = 0;
  v0[66] = 0;
}

void sub_10019C6C0()
{
  *(v0 + 376) = 0;
  *(v0 + 368) = 0;
  *(v0 + 480) = 0;
  *(v0 + 544) = 0;
}

uint64_t sub_10019C6D4()
{

  return sub_10019BE80(v2 - 112, v2 - 128, v0, v1);
}

uint64_t sub_10019C6F4()
{

  return sub_10019BE80(v2 - 112, v2 - 192, v0, v1);
}

BOOL sub_10019C714(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027D158;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  return v4 != 0;
}

unint64_t sub_10019C770(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027D190;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10019C7BC(char a1)
{
  result = 0xD000000000000041;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000003BLL;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
    case 7:
      result = 0xD000000000000030;
      break;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0xD000000000000036;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_10019C8B4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10019C714(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10019C9D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10019C770(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10019CA04@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10019C7BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10019CAE0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027D270;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10019CB30(char a1)
{
  result = 0x6449676F6C616964;
  switch(a1)
  {
    case 1:
      result = 0x6567617373656DLL;
      break;
    case 2:
      result = 0x736E6F6974706FLL;
      break;
    case 3:
      result = 0x497463656A627573;
      break;
    case 4:
      result = 0x707954746E657665;
      break;
    case 5:
      result = 0x72556E6F69746361;
      break;
    case 6:
      result = 0x54746E657645746DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10019CC34(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002BACB8, &qword_100215370);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v12 - v9;
  sub_10001AE68(a1, a1[3]);
  sub_10019D4A0();
  sub_1001F8198();
  LOBYTE(v12) = *v3;
  v13 = 0;
  sub_10019D604();
  sub_10019DD3C();
  sub_1001F7D58();
  if (!v2)
  {
    sub_10019DCDC(1);
    v12 = *(v3 + 24);
    v13 = 2;
    sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
    sub_10001DE1C(&qword_1002ACB30, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_10019DD3C();
    sub_1001F7D58();
    sub_10019DCDC(3);
    LOBYTE(v12) = *(v3 + 48);
    v13 = 4;
    sub_10019D658();
    sub_10019DD3C();
    sub_1001F7D58();
    sub_10019DCDC(5);
    sub_10019DCDC(6);
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_10019CE6C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002BAC98, &unk_100215360);
  sub_10001A278();
  __chkstk_darwin(v6);
  v43 = 1;
  v7 = a1[3];
  v8 = a1[4];
  v27 = a1;
  sub_10001AE68(a1, v7);
  sub_10019D4A0();
  sub_1001F8178();
  if (v2)
  {
    v45 = v2;
    sub_10019DCC8();
    sub_100019CCC(a1);
    LOBYTE(v30) = 8;
    *(&v30 + 1) = *v44;
    HIDWORD(v30) = *&v44[3];
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = v7;
    v35 = v8;
    v36 = v43;
    *v37 = *v42;
    *&v37[3] = *&v42[3];
    v38 = a1;
    v39 = v2;
    v40 = 0;
    v41 = 0;
    return sub_10019D4F4(&v30);
  }

  else
  {
    sub_10019D524();
    sub_10019DD5C(&unk_100292080);
    v26 = v30;
    v24 = sub_10019DD00(1);
    v25 = v10;
    sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
    sub_10001DE1C(&qword_1002ACB50, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1001F7C48();
    v11 = v30;
    v12 = sub_10019DD00(3);
    v23 = v13;
    LOBYTE(__src[0]) = 4;
    sub_10019D578();
    sub_10019DD5C(&unk_100291FF0);
    v43 = v30;
    v14 = sub_10019DD00(5);
    v16 = v15;
    v29 = 6;
    v45 = 0;
    v17 = sub_1001F7C08();
    v18 = sub_10019DCB4();
    v20 = v19;
    v21(v18, v5);
    LOBYTE(__src[0]) = v26;
    __src[1] = v24;
    __src[2] = v25;
    __src[3] = v11;
    __src[4] = v12;
    __src[5] = v23;
    v22 = v43;
    LOBYTE(__src[6]) = v43;
    __src[7] = v14;
    __src[8] = v16;
    __src[9] = v17;
    __src[10] = v20;
    sub_10019D5CC(__src, &v30);
    sub_100019CCC(v27);
    LOBYTE(v30) = v26;
    v31 = v24;
    v32 = v25;
    v33 = v11;
    v34 = v12;
    v35 = v23;
    v36 = v22;
    v38 = v14;
    v39 = v16;
    v40 = v17;
    v41 = v20;
    sub_10019D4F4(&v30);
    return memcpy(a2, __src, 0x58uLL);
  }
}

unint64_t sub_10019D338@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10019CAE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10019D368@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10019CB30(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10019D39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10019CB2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10019D3C4(uint64_t a1)
{
  v2 = sub_10019D4A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019D400(uint64_t a1)
{
  v2 = sub_10019D4A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10019D43C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10019CE6C(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x58uLL);
  }

  return result;
}

unint64_t sub_10019D4A0()
{
  result = qword_1002BACA0;
  if (!qword_1002BACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACA0);
  }

  return result;
}

unint64_t sub_10019D524()
{
  result = qword_1002BACA8;
  if (!qword_1002BACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACA8);
  }

  return result;
}

unint64_t sub_10019D578()
{
  result = qword_1002BACB0;
  if (!qword_1002BACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACB0);
  }

  return result;
}

unint64_t sub_10019D604()
{
  result = qword_1002BACC0;
  if (!qword_1002BACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACC0);
  }

  return result;
}

unint64_t sub_10019D658()
{
  result = qword_1002BACC8;
  if (!qword_1002BACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACC8);
  }

  return result;
}

_BYTE *sub_10019D6AC(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10019D748);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_10019D77C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x10019D848);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Metrics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x10019D948);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10019D988(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 88))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10019D9DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_10019DA54()
{
  result = qword_1002BACD0;
  if (!qword_1002BACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACD0);
  }

  return result;
}

unint64_t sub_10019DAAC()
{
  result = qword_1002BACD8;
  if (!qword_1002BACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACD8);
  }

  return result;
}

unint64_t sub_10019DB04()
{
  result = qword_1002BACE0;
  if (!qword_1002BACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACE0);
  }

  return result;
}

unint64_t sub_10019DB5C()
{
  result = qword_1002BACE8;
  if (!qword_1002BACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACE8);
  }

  return result;
}

unint64_t sub_10019DBB4()
{
  result = qword_1002BACF0;
  if (!qword_1002BACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACF0);
  }

  return result;
}

unint64_t sub_10019DC08()
{
  result = qword_1002BACF8;
  if (!qword_1002BACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BACF8);
  }

  return result;
}

unint64_t sub_10019DC5C()
{
  result = qword_1002BAD00;
  if (!qword_1002BAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAD00);
  }

  return result;
}

uint64_t sub_10019DCDC@<X0>(char a3@<W8>)
{
  *(v3 - 80) = a3;

  return sub_1001F7D18();
}

uint64_t sub_10019DD00@<X0>(char a1@<W8>)
{
  *(v1 - 192) = a1;

  return sub_1001F7C08();
}

uint64_t sub_10019DD5C(uint64_t a1)
{

  return sub_1001F7C48();
}

void sub_10019DD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10019F5B8();
  sub_10019F598();
  sub_10019F478();
  do
  {
    sub_1001F66B8(v5, v4, v3);
    sub_10019F544();
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  while (sub_1001F66A8() == 4);
  sub_10019F4EC();
  v7 = v7 || v6 == 14;
  if (!v7)
  {
    v8 = sub_1000274C4();
    sub_1000276A0(&type metadata for IOError, v8);
    sub_10019F484(v9, 32);
    sub_10019F52C(v10, v11);
LABEL_10:
    sub_10019F58C();
    sub_10019F578();
    return;
  }

  __break(1u);
}

void sub_10019DE1C(int a1)
{
  if (close(a1) == -1 && sub_1001F66A8() != 4)
  {
    sub_10019F4B0();
    v2 = v2 || v1 == 14;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      v3 = sub_1000274C4();
      v4 = sub_1000276A0(&type metadata for IOError, v3);
      *v5 = 0x65736F6C63;
      v5[1] = 0xE500000000000000;
      sub_10019F4BC(v4, v5);
    }
  }
}

void sub_10019DE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10019F5B8();
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = v5;
  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v5 <= 0x7FFFFFFF)
  {
    sub_10019F4F8();
    sub_10019F478();
    do
    {
      if (writev(v4, v3, v7) != -1)
      {
        goto LABEL_13;
      }

      v8 = sub_1001F66A8();
    }

    while (v8 == 4);
    v9 = v8;
    if (v8 == 35)
    {
LABEL_13:
      sub_10019F578();
      return;
    }

    if (v8 != 9 && v8 != 14)
    {
      v11 = sub_1000274C4();
      sub_1000276A0(&type metadata for IOError, v11);
      sub_10019F484(v12, 26);
      *(v13 + 16) = v9;
      swift_willThrow();
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_10019DF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10019F5B8();
  sub_10019F490();
  sub_10019F478();
  do
  {
    v5 = sub_10012F2E8();
    read(v5, v6, v4);
    sub_10019F5AC();
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  while (sub_1001F66A8() == 4);
  sub_10019F4A4();
  if (v7)
  {
LABEL_11:
    sub_10019F578();
    return;
  }

  v7 = v3 == 9 || v3 == 14;
  if (!v7)
  {
    v8 = sub_1000274C4();
    sub_1000276A0(&type metadata for IOError, v8);
    sub_10019F438(v9, 30);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_10019E03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10019F5B8();
  sub_10019F490();
  sub_10019F478();
  do
  {
    v5 = sub_10012F2E8();
    write(v5, v6, v4);
    sub_10019F5AC();
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  while (sub_1001F66A8() == 4);
  sub_10019F4A4();
  if (v7)
  {
LABEL_11:
    sub_10019F578();
    return;
  }

  v7 = v3 == 9 || v3 == 14;
  if (!v7)
  {
    v8 = sub_1000274C4();
    sub_1000276A0(&type metadata for IOError, v8);
    sub_10019F438(v9, 31);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_10019E0EC()
{
  sub_10019F508();
  sub_10019F520();
  while (1)
  {
    v1 = sub_10019F564();
    if (pread(v1, v2, v3, v4) != -1)
    {
      break;
    }

    if (sub_1001F66A8() != 4)
    {
      sub_10019F4A4();
      if (!v5)
      {
        v5 = v0 == 9 || v0 == 14;
        if (v5)
        {
          __break(1u);
        }

        else
        {
          v6 = sub_1000274C4();
          sub_1000276A0(&type metadata for IOError, v6);
          sub_10019F458(v7, 38);
        }
      }

      return;
    }
  }
}

void sub_10019E1A4()
{
  sub_10019F4D4();
  do
  {
    v0 = sub_1000C9970();
    ftruncate(v0, v1);
    sub_10019F544();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  while (sub_1001F66A8() == 4);
  sub_10019F4EC();
  v3 = v3 || v2 == 14;
  if (!v3)
  {
    v4 = sub_1000274C4();
    sub_1000276A0(&type metadata for IOError, v4);
    sub_10019F4E0(v5, 27);
    sub_10019F52C(v6, v7);
LABEL_10:
    sub_10019F58C();
    return;
  }

  __break(1u);
}

void sub_10019E23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10019F5B8();
  sub_10012F50C();
  sub_10019F478();
  do
  {
    v4 = sub_10012F2E8();
    if (lseek(v4, v5, v3) != -1)
    {
      goto LABEL_9;
    }
  }

  while (sub_1001F66A8() == 4);
  sub_10019F4EC();
  v7 = v7 || v6 == 14;
  if (!v7)
  {
    v8 = sub_1000274C4();
    sub_1000276A0(&type metadata for IOError, v8);
    sub_10019F484(v9, 32);
    sub_10019F52C(v10, v11);
LABEL_9:
    sub_10019F578();
    return;
  }

  __break(1u);
}

void sub_10019E2DC()
{
  sub_10019F508();
  sub_10019F520();
  while (1)
  {
    v1 = sub_10019F564();
    if (pwrite(v1, v2, v3, v4) != -1)
    {
      break;
    }

    if (sub_1001F66A8() != 4)
    {
      sub_10019F4A4();
      if (!v5)
      {
        v5 = v0 == 9 || v0 == 14;
        if (v5)
        {
          __break(1u);
        }

        else
        {
          v6 = sub_1000274C4();
          sub_1000276A0(&type metadata for IOError, v6);
          sub_10019F458(v7, 39);
        }
      }

      return;
    }
  }
}

void sub_10019E394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10019F5B8();
  sub_10019F490();
  sub_10019F478();
  do
  {
    v5 = sub_10012F2E8();
    if (accept(v5, v6, v4) != -1)
    {
      goto LABEL_10;
    }
  }

  while (sub_1001F66A8() == 4);
  sub_10019F4A4();
  if (v7)
  {
LABEL_10:
    sub_10019F578();
    return;
  }

  v7 = v3 == 9 || v3 == 14;
  if (!v7)
  {
    v8 = sub_1000274C4();
    sub_1000276A0(&type metadata for IOError, v8);
    sub_10019F438(v9, 28);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_10019E458(uint64_t result, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!HIDWORD(a3))
    {
      sub_10019F4F8();
      sub_10019F4D4();
      while (bind(v4, v3, v5) == -1)
      {
        v6 = sub_1001F66A8();
        if (v6 != 4)
        {
          v7 = v6;
          if (v6 != 9 && v6 != 14)
          {
            v9 = sub_1000274C4();
            sub_1000276A0(&type metadata for IOError, v9);
            sub_10019F4E0(v10, 27);
            *(v11 + 16) = v7;
            swift_willThrow();
            return;
          }

          goto LABEL_14;
        }
      }

      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_10019E514(uint64_t a1, uint64_t a2, socklen_t a3)
{
  sub_10019F4D4();
  while (1)
  {
    v4 = sub_1000C9970();
    if (connect(v4, v5, a3) != -1)
    {
      break;
    }

    if (sub_1001F66A8() != 4)
    {
      sub_10019F4EC();
      v7 = v7 || v6 == 14;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        v8 = sub_1000274C4();
        sub_1000276A0(&type metadata for IOError, v8);
        sub_10019F4E0(v9, 30);
        sub_10019F52C(v10, v11);
        swift_errorRetain();
        sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
        if (swift_dynamicCast())
        {

          if (v15 == 36)
          {

            return;
          }

          sub_1000276A0(&type metadata for IOError, v8);
          *v12 = v13;
          *(v12 + 8) = v14;
          *(v12 + 16) = v15;
          swift_willThrow();
        }
      }

      return;
    }
  }
}

void sub_10019E670()
{
  sub_10019F550();
  sub_10019F4D4();
  while (1)
  {
    v1 = sub_1000C9970();
    if (getpeername(v1, v2, v0) != -1)
    {
      break;
    }

    if (sub_1001F66A8() != 4)
    {
      sub_10019F4B0();
      v4 = v4 || v3 == 14;
      if (v4)
      {
        __break(1u);
      }

      else
      {
        v5 = sub_1000274C4();
        sub_1000276A0(&type metadata for IOError, v5);
        sub_10019F4E0(v6, 42);
        sub_10019F4BC(v7, v8);
      }

      return;
    }
  }
}

void sub_10019E704()
{
  sub_10019F550();
  sub_10019F4D4();
  while (1)
  {
    v1 = sub_1000C9970();
    if (getsockname(v1, v2, v0) != -1)
    {
      break;
    }

    if (sub_1001F66A8() != 4)
    {
      sub_10019F4B0();
      v4 = v4 || v3 == 14;
      if (v4)
      {
        __break(1u);
      }

      else
      {
        v5 = sub_1000274C4();
        sub_1000276A0(&type metadata for IOError, v5);
        sub_10019F4E0(v6, 42);
        sub_10019F4BC(v7, v8);
      }

      return;
    }
  }
}

void sub_10019E798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, socklen_t *a5)
{
  sub_10018D958();
  sub_10019F520();
  while (1)
  {
    v6 = sub_1000C9318();
    if (getsockopt(v6, v7, v8, v9, a5) != -1)
    {
      break;
    }

    if (sub_1001F66A8() != 4)
    {
      sub_10019F4B0();
      v11 = v11 || v10 == 14;
      if (v11)
      {
        __break(1u);
      }

      else
      {
        v12 = sub_1000274C4();
        sub_1000276A0(&type metadata for IOError, v12);
        sub_10019F458(v13, 58);
      }

      return;
    }
  }
}

void sub_10019E838(int a1, int a2)
{
  while (listen(a1, a2) == -1)
  {
    if (sub_1001F66A8() != 4)
    {
      sub_10019F4B0();
      v5 = v5 || v4 == 14;
      if (v5)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_1000274C4();
        v7 = sub_1000276A0(&type metadata for IOError, v6);
        *v8 = 0xD00000000000001BLL;
        v8[1] = 0x800000010022C8E0;
        sub_10019F4BC(v7, v8);
      }

      return;
    }
  }
}

void sub_10019E8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10019F5B8();
  sub_10012F50C();
  sub_10019F478();
  do
  {
    v5 = sub_10012F2E8();
    recvmsg(v5, v6, v4);
    sub_10019F5AC();
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  while (sub_1001F66A8() == 4);
  sub_10019F4A4();
  if (v7)
  {
LABEL_11:
    sub_10019F578();
    return;
  }

  v7 = v3 == 9 || v3 == 14;
  if (!v7)
  {
    v8 = sub_1000274C4();
    sub_1000276A0(&type metadata for IOError, v8);
    sub_10019F438(v9, 33);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_10019E990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10019F5B8();
  sub_10012F50C();
  sub_10019F478();
  do
  {
    v5 = sub_10012F2E8();
    sendmsg(v5, v6, v4);
    sub_10019F5AC();
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  while (sub_1001F66A8() == 4);
  sub_10019F4A4();
  if (v7)
  {
LABEL_11:
    sub_10019F578();
    return;
  }

  v7 = v3 == 9 || v3 == 14;
  if (!v7)
  {
    v8 = sub_1000274C4();
    sub_1000276A0(&type metadata for IOError, v8);
    sub_10019F438(v9, 33);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_10019EA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, socklen_t a5)
{
  sub_10018D958();
  sub_10019F520();
  while (1)
  {
    v6 = sub_1000C9318();
    if (setsockopt(v6, v7, v8, v9, a5) != -1)
    {
      break;
    }

    if (sub_1001F66A8() != 4)
    {
      sub_10019F4B0();
      v11 = v11 || v10 == 14;
      if (v11)
      {
        __break(1u);
      }

      else
      {
        v12 = sub_1000274C4();
        sub_1000276A0(&type metadata for IOError, v12);
        sub_10019F458(v13, 58);
      }

      return;
    }
  }
}

void sub_10019EAE4(int a1, unsigned __int8 a2)
{
  while (shutdown(a1, a2) == -1)
  {
    if (sub_1001F66A8() != 4)
    {
      sub_10019F4B0();
      v5 = v5 || v4 == 14;
      if (v5)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_1000274C4();
        v7 = sub_1000276A0(&type metadata for IOError, v6);
        *v8 = 0xD000000000000019;
        v8[1] = 0x800000010022C7F0;
        sub_10019F4BC(v7, v8);
      }

      return;
    }
  }
}

void sub_10019EB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10019F5B8();
  sub_10019F598();
  sub_10019F478();
  do
  {
    socket(v5, v4, v3);
    sub_10019F544();
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  while (sub_1001F66A8() == 4);
  sub_10019F4EC();
  v7 = v7 || v6 == 14;
  if (!v7)
  {
    v8 = sub_1000274C4();
    sub_1000276A0(&type metadata for IOError, v8);
    sub_10019F484(v9, 29);
    sub_10019F52C(v10, v11);
LABEL_10:
    sub_10019F58C();
    sub_10019F578();
    return;
  }

  __break(1u);
}

void sub_10019EC20(uint64_t a1, msghdr *a2, unsigned int a3, int a4)
{
  v8 = a1;
  sub_10019F520();
  while (sub_10000B920(v8, a2, a3, a4) == -1)
  {
    if (sub_1001F66A8() != 4)
    {
      sub_10019F4A4();
      if (!v9)
      {
        v9 = v4 == 9 || v4 == 14;
        if (v9)
        {
          __break(1u);
        }

        else
        {
          v10 = sub_1000274C4();
          sub_1000276A0(&type metadata for IOError, v10);
          sub_10019F458(v11, 35);
        }
      }

      return;
    }
  }
}

off_t sub_10019ECF4(int a1, int a2, off_t a3, off_t a4)
{
  while (1)
  {
    v20[0] = a4;
    v8 = sendfile(a2, a1, a3, v20, 0, 0);
    v9 = v20[0];
    if (v8 != -1)
    {
      break;
    }

    v10 = sub_1001F66A8();
    if (v10 != 4)
    {
      v11 = v10;
      if (v10 == 9 || v10 == 14)
      {
        __break(1u);
      }

      v13 = sub_1000274C4();
      v14 = sub_1000276A0(&type metadata for IOError, v13);
      *v15 = 0xD000000000000025;
      *(v15 + 8) = 0x800000010022C810;
      *(v15 + 16) = v11;
      swift_willThrow();
      v22 = v14;
      swift_errorRetain();
      sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
      if (swift_dynamicCast())
      {

        v16 = v20[1];
        v17 = v21;
        if (v21 == 35)
        {

          return v9;
        }

        v9 = v20[0];
        sub_1000276A0(&type metadata for IOError, v13);
        *v18 = v9;
        *(v18 + 8) = v16;
        *(v18 + 16) = v17;
        swift_willThrow();
      }

      return v9;
    }
  }

  return v9;
}

void sub_10019EEBC(uint64_t a1)
{
  sub_10019DD84(a1, 3, 0);
  if (!v1)
  {
    sub_10019DD84(a1, 4, v3 | 4u);
  }
}

void sub_10019EFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10019F5B8();
  v4 = v3;
  sub_10019F478();
  do
  {
    v5 = sub_1001F6BD8();
    v6 = stat((v5 + 32), v4);

    if (v6 != -1)
    {
      goto LABEL_9;
    }

    v7 = sub_1001F66A8();
  }

  while (v7 == 4);
  v8 = v7;
  if (v7 != 9 && v7 != 14)
  {
    v10 = sub_1000274C4();
    sub_1000276A0(&type metadata for IOError, v10);
    sub_10019F484(v11, 23);
    *(v12 + 16) = v8;
    swift_willThrow();
LABEL_9:
    sub_10019F578();
    return;
  }

  __break(1u);
}

uint64_t sub_10019F098(uint64_t a1, uint64_t a2)
{
  sub_10019F4D4();
  while (1)
  {
    v2 = sub_1001F6BD8();
    v3 = unlink((v2 + 32));

    if (v3 != -1)
    {
      break;
    }

    result = sub_1001F66A8();
    if (result != 4)
    {
      v5 = result;
      if (result == 9 || result == 14)
      {
        __break(1u);
      }

      else
      {
        v7 = sub_1000274C4();
        sub_1000276A0(&type metadata for IOError, v7);
        sub_10019F4E0(v8, 17);
        *(v9 + 16) = v5;
        return swift_willThrow();
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_10019F158(int kq, kevent *changelist, int nchanges, kevent *eventlist, int nevents, timespec *timeout)
{
  do
  {
    v12 = kevent(kq, changelist, nchanges, eventlist, nevents, timeout);
    if (v12 != -1)
    {
      return v12;
    }

    result = sub_1001F66A8();
  }

  while (result == 4);
  v14 = result;
  if (result != 9 && result != 14)
  {
    v16 = sub_1000274C4();
    sub_1000276A0(&type metadata for IOError, v16);
    *v17 = 0xD000000000000039;
    *(v17 + 8) = 0x800000010022C700;
    *(v17 + 16) = v14;
    swift_willThrow();
    return v12;
  }

  __break(1u);
  return result;
}

void sub_10019F24C()
{
  do
  {
    kqueue();
    sub_10019F544();
    if (!v1)
    {
      goto LABEL_9;
    }
  }

  while (sub_1001F66A8() == 4);
  sub_10019F4EC();
  v1 = v1 || v0 == 14;
  if (!v1)
  {
    v2 = sub_1000274C4();
    v3 = sub_1000276A0(&type metadata for IOError, v2);
    *v4 = 0x292865756575716BLL;
    v4[1] = 0xE800000000000000;
    sub_10019F52C(v3, v4);
LABEL_9:
    sub_10019F58C();
    return;
  }

  __break(1u);
}

void sub_10019F2D4(uint64_t a1)
{
  sub_10019F4F8();
  while (fstat(v2, v1) == -1)
  {
    if (sub_1001F66A8() != 4)
    {
      sub_10019F4B0();
      v4 = v4 || v3 == 14;
      if (v4)
      {
        __break(1u);
      }

      else
      {
        v5 = sub_1000274C4();
        v6 = sub_1000276A0(&type metadata for IOError, v5);
        *v7 = 0xD00000000000001ALL;
        v7[1] = 0x800000010022C900;
        sub_10019F4BC(v6, v7);
      }

      return;
    }
  }
}

uint64_t sub_10019F438@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = a3 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;

  return swift_willThrow();
}

uint64_t sub_10019F458@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = a3 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;

  return swift_willThrow();
}

uint64_t sub_10019F4BC(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = v2;

  return swift_willThrow();
}

uint64_t sub_10019F52C(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = v2;

  return swift_willThrow();
}

uint64_t sub_10019F5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 80);
  v10 = *(v4 + 88);
  sub_1000183C4(&qword_1002ADC18, &qword_100200960);
  v11 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v13 = sub_10012DA48(v9, 0, 255, a1, a2, a3, a4, v11, ObjectType, v10);
  swift_retain_n();
  swift_unknownObjectRetain();

  sub_10011F070();

  return v13;
}

uint64_t sub_10019F6C8()
{
  sub_10004794C();
  v0 = swift_allocObject();
  sub_10012F744(v0);

  sub_10011E218();
}

uint64_t sub_10019F760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  sub_1000183C4(&qword_1002B4568, &qword_10020DE48);
  swift_allocObject();
  v9 = sub_10016E918(v7, v8, 0, 0, 255);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_unknownObjectRetain();
  sub_10011FBFC();

  return v9;
}

uint64_t sub_10019F88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1000183C4(&qword_1002ADD50, &unk_10020E140) == &type metadata for ()[1])
  {

    sub_1000183C4(&qword_1002BAE80, &qword_1002158B8);
    sub_1000183C4(&qword_1002BAE88, qword_1002158C0);
    swift_dynamicCast();
    sub_10004794C();
    *(swift_allocObject() + 16) = v17;

    sub_10011E218();

    __break(1u);
  }

  else
  {
    v11 = *(v6 + 32);
    v12 = *(v6 + 40);
    sub_1000183C4(&qword_1002B46D8, &qword_100210E70);
    v13 = swift_allocObject();
    ObjectType = swift_getObjectType();
    v15 = sub_10012DE0C(v11, 0, 0, 255, a1, a2, a3, a4, v13, ObjectType, v12);
    swift_retain_n();

    swift_unknownObjectRetain();
    sub_10011E708();

    return v15;
  }

  return result;
}

uint64_t sub_10019FA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = v7;
  v16 = *(v8 + 32);
  v15 = *(v8 + 40);
  sub_1000183C4(&qword_1002ADC18, &qword_100200960);
  v17 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v19 = sub_10012DA48(v16, 0, 255, a1, a2, a3, a4, v17, ObjectType, v15);
  swift_retain_n();
  swift_unknownObjectRetain();

  a7(v8, v19, v8, a5, a6);

  return v19;
}

uint64_t sub_10019FB84()
{
  sub_10004794C();
  v0 = swift_allocObject();
  sub_10012F744(v0);

  sub_10011DE78();
}

uint64_t sub_10019FC18(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_10019FC58()
{
  result = sub_1000C85D8(&off_100279AE8);
  qword_1002BAD08 = result;
  return result;
}

uint64_t sub_10019FC80()
{
  *(v0 + 136) = 0;
  sub_1001A12FC(0);
  *(v0 + 24) = v1;
  swift_unknownObjectWeakInit();
  *(v0 + 16) = 0;
  sub_10012F774(v0 + 24, &v3);
  memcpy(__dst, (v0 + 24), sizeof(__dst));
  *(v0 + 24) = 0u;
  sub_1001A12FC(0);
  sub_1001A1158(__dst);
  return v0;
}

unsigned __int8 *sub_10019FCFC(uint64_t a1)
{
  v2 = v1;
  v4 = ChannelHandlerContext.remoteAddress.getter();
  if ((~v4 & 0xF000000000000007) == 0 || (v6 = v4, SocketAddress.ipAddress.getter(v4, v5), v8 = v7, v10 = v9, sub_10002D83C(v6), !v10))
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v27 = sub_1001F6688();
    sub_100019C94(v27, qword_1002E6180);
    v28 = sub_1001F6668();
    v29 = sub_1001F7298();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_19;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Blocking request from unknown remote", v30, 2u);
    goto LABEL_18;
  }

  v11 = qword_1002AC508;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_1000BFAC4(v8, v10, qword_1002BAD08);

  if (!v12)
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v32 = sub_1001F6688();
    sub_100019C94(v32, qword_1002E6180);

    v28 = sub_1001F6668();
    v33 = sub_1001F7298();

    if (!os_log_type_enabled(v28, v33))
    {

      goto LABEL_19;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v95 = v35;
    *v34 = 136315138;
    v36 = sub_1000E4544(v8, v10, &v95);

    *(v34 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v28, v33, "Blocking request from external remote: %s", v34, 0xCu);
    sub_100019CCC(v35);

LABEL_18:

LABEL_19:

    sub_10012F774(v2 + 24, __src);
    sub_1001A1318(&v95);
    sub_1001A12DC();
    *(v2 + 15) = 0;
    sub_1001A1158(&v95);
    sub_1001A0E8C(a1);
    sub_1001A0558(a1);
  }

  v13 = sub_1000183C4(&qword_1002ADD40, &qword_1002158B0);
  v14 = sub_1000375EC(v13);
  v16 = v14;
  v18 = v17;
  v19 = v15;
  if (HIBYTE(v15))
  {
    if (HIBYTE(v15) != 1)
    {
      sub_10012F774(v2 + 24, v93);
      sub_1001A1318(__src);
      if (!__src[2])
      {
        v55 = sub_1001A12CC();
        v58 = 2;
        return sub_100037548(v55, v56, v57, v58);
      }

      v95 = *(v2 + 24);
      v96 = __src[2];
      memcpy(v97, v2 + 48, sizeof(v97));
      sub_1001A1318(v91);
      sub_1000593F4(v91, v92);
      sub_1001A0D1C(&v95);
      sub_1001A1318(v92);
      sub_1001A12DC();
      *(v2 + 15) = 0;
      sub_1001A1158(v92);
      sub_1001A0558(a1);
      v51 = sub_1001A12CC();
      sub_100037548(v51, v52, v53, 2);

      v54 = __src;
      return sub_1001A1158(v54);
    }

    v2 = ByteBuffer._Storage.bytes.modify(&v95);
    if (!*(v20 + 16))
    {
      goto LABEL_48;
    }

    a1 = v20;
    if (!*(v20 + 72))
    {
      goto LABEL_48;
    }

    v21 = *(v20 + 84);
    swift_beginAccess();
    if (HIDWORD(v18) < v18)
    {
      __break(1u);
    }

    else
    {
      v22 = *(v16 + 24) + ((v19 >> 24) & 0xFFFF00 | BYTE6(v19)) + v18;
      ByteBuffer._setBytes(_:at:)(v22, v22 + (HIDWORD(v18) - v18), v21);
      v23 = *(a1 + 84);
      v25 = __CFADD__(v23, v24);
      v26 = v23 + v24;
      if (!v25)
      {
        *(a1 + 84) = v26;
LABEL_48:
        (v2)(&v95, 0);
        v55 = sub_1001A12CC();
        v58 = 1;
        return sub_100037548(v55, v56, v57, v58);
      }
    }

    __break(1u);
    goto LABEL_111;
  }

  v37 = *(v14 + 48);

  sub_1001B8BE0(v37, v18, v19);
  *(v2 + 16) = (v38 & 1) == 0;
  HTTPHeaders.subscript.getter();
  if (!v39[2] || ((v41 = v39[4], v40 = v39[5], , result = , v42 = HIBYTE(v40) & 0xF, v43 = v41 & 0xFFFFFFFFFFFFLL, (v40 & 0x2000000000000000) != 0) ? (v44 = HIBYTE(v40) & 0xF) : (v44 = v41 & 0xFFFFFFFFFFFFLL), !v44))
  {

    v59 = 0;
    v60 = 0;
LABEL_105:
    v84 = *(*(a1 + 32) + 56);
    v85 = swift_unknownObjectRetain();
    sub_1001EAE28(v85, v84, v16, v18, v19, v59, 0, v60, __src);

    v86 = sub_1001A12CC();
    sub_100037548(v86, v87, v88, 0);
    sub_10012F774(v2 + 24, v92);
    sub_1001A1318(&v95);
    memcpy(v2 + 24, __src, 0x68uLL);
    v54 = &v95;
    return sub_1001A1158(v54);
  }

  if ((v40 & 0x1000000000000000) != 0)
  {
    v46 = sub_1001ED558(v41, v40, 10);
    v71 = v89;
LABEL_101:

    v59 = 0;
    if (v71)
    {
      v60 = 0;
    }

    else
    {
      v60 = 0;
      if (v46 >= 1)
      {
        sub_10009B39C();
        v73 = v72;
        ObjectType = swift_getObjectType();
        v75 = (*(v73 + 16))(ObjectType, v73);
        v77 = v76;
        v79 = v78;
        v90 = v19;
        v19 = v18;
        v80 = v16;
        v82 = v81;
        swift_unknownObjectRelease();
        type metadata accessor for ByteBuffer._Storage();
        v83 = v82;
        v16 = v80;
        v18 = v19;
        LOBYTE(v19) = v90;
        v59 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(v46, v75, v77, v79, v83);
        v60 = *(v59 + 16);
      }
    }

    goto LABEL_105;
  }

  if ((v40 & 0x2000000000000000) == 0)
  {
    if ((v41 & 0x1000000000000000) != 0)
    {
      result = ((v40 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_34:
      v45 = *result;
      if (v45 == 43)
      {
        if (v43 >= 1)
        {
          if (v43 != 1)
          {
            v46 = 0;
            if (result)
            {
              while (1)
              {
                sub_100027240();
                if (!v47 && v25)
                {
                  goto LABEL_99;
                }

                sub_1001A12B8();
                if (!v47)
                {
                  goto LABEL_99;
                }

                v46 = v64 + v63;
                if (__OFADD__(v64, v63))
                {
                  goto LABEL_99;
                }

                sub_10002727C();
                if (v47)
                {
                  goto LABEL_100;
                }
              }
            }

            goto LABEL_90;
          }

          goto LABEL_99;
        }

        goto LABEL_114;
      }

      if (v45 != 45)
      {
        if (v43)
        {
          v46 = 0;
          if (result)
          {
            while (1)
            {
              v67 = *result - 48;
              if (v67 > 9)
              {
                goto LABEL_99;
              }

              v68 = 10 * v46;
              if ((v46 * 10) >> 64 != (10 * v46) >> 63)
              {
                goto LABEL_99;
              }

              v46 = v68 + v67;
              if (__OFADD__(v68, v67))
              {
                goto LABEL_99;
              }

              ++result;
              if (!--v43)
              {
                goto LABEL_90;
              }
            }
          }

          goto LABEL_90;
        }

LABEL_99:
        v46 = 0;
        v50 = 1;
        goto LABEL_100;
      }

      if (v43 >= 1)
      {
        if (v43 != 1)
        {
          v46 = 0;
          if (result)
          {
            while (1)
            {
              sub_100027240();
              if (!v47 && v25)
              {
                goto LABEL_99;
              }

              sub_1001A12B8();
              if (!v47)
              {
                goto LABEL_99;
              }

              v46 = v49 - v48;
              if (__OFSUB__(v49, v48))
              {
                goto LABEL_99;
              }

              sub_10002727C();
              if (v47)
              {
                goto LABEL_100;
              }
            }
          }

LABEL_90:
          v50 = 0;
LABEL_100:
          LOBYTE(__src[0]) = v50;
          v71 = v50;
          goto LABEL_101;
        }

        goto LABEL_99;
      }

      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

LABEL_111:
    result = sub_1001F7858();
    goto LABEL_34;
  }

  *&v95 = v41;
  *(&v95 + 1) = v40 & 0xFFFFFFFFFFFFFFLL;
  if (v41 != 43)
  {
    if (v41 != 45)
    {
      if (v42)
      {
        while (1)
        {
          sub_100027240();
          if (!v47 && v25)
          {
            break;
          }

          sub_1001A12B8();
          if (!v47)
          {
            break;
          }

          v46 = v70 + v69;
          if (__OFADD__(v70, v69))
          {
            break;
          }

          sub_10002727C();
          if (v47)
          {
            goto LABEL_100;
          }
        }
      }

      goto LABEL_99;
    }

    if (v42)
    {
      if (v42 != 1)
      {
        sub_1001A1330();
        while (1)
        {
          sub_100027240();
          if (!v47 && v25)
          {
            break;
          }

          sub_1001A12B8();
          if (!v47)
          {
            break;
          }

          v46 = v62 - v61;
          if (__OFSUB__(v62, v61))
          {
            break;
          }

          sub_10002727C();
          if (v47)
          {
            goto LABEL_100;
          }
        }
      }

      goto LABEL_99;
    }

    goto LABEL_113;
  }

  if (v42)
  {
    if (v42 != 1)
    {
      sub_1001A1330();
      while (1)
      {
        sub_100027240();
        if (!v47 && v25)
        {
          break;
        }

        sub_1001A12B8();
        if (!v47)
        {
          break;
        }

        v46 = v66 + v65;
        if (__OFADD__(v66, v65))
        {
          break;
        }

        sub_10002727C();
        if (v47)
        {
          goto LABEL_100;
        }
      }
    }

    goto LABEL_99;
  }

LABEL_115:
  __break(1u);
  return result;
}

uint64_t sub_1001A0558(uint64_t a1)
{
  sub_10004794C();
  v3 = swift_allocObject();
  sub_10012F744(v3);

  sub_10019F5CC("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/HTTPHandler.swift", 104, 2, 83);

  sub_10004794C();
  v4 = swift_allocObject();
  sub_10012F744(v4);

  sub_10019FB84();

  sub_10004794C();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;

  sub_10011DE78();
}

uint64_t sub_1001A06B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5 = *(a1 + 38);
  v12 = sub_1000183C4(&qword_1002ADA10, &unk_10020E830);
  v7[0] = v1;
  v7[1] = v2;
  v10 = v5;
  v9 = v4;
  v8 = v3;
  v11 = 1;
  v13 = 2;

  ChannelHandlerContext.write(_:promise:)(v7, 0);
  return sub_100034310(v7);
}

uint64_t sub_1001A0754(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = a3;
  v10 = sub_1000183C4(&qword_1002ADA10, &unk_10020E830);
  v7[0] = a1;
  v7[1] = a2;
  v8 = v5;
  v9 = 0;
  v11 = 2;

  ChannelHandlerContext.write(_:promise:)(v7, 0);
  return sub_100034310(v7);
}

uint64_t sub_1001A07DC(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v36 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(a1 + 56) | ((*(a1 + 60) | (*(a1 + 62) << 16)) << 32);
  v41 = v5;
  v38 = v9;
  v39 = v7;
  sub_1001A10D0(v7, v8, v10);

  v35 = sub_100030BD4(0x697463656E6E6F63, 0xEA00000000006E6FLL, 0x2D746E65746E6F63, 0xEE006874676E656CLL);
  v12 = sub_10003653C(&v41, sub_100034364);
  v16 = v41[2];
  if (v16 < v12)
  {
    __break(1u);
    goto LABEL_24;
  }

  sub_100036918(v12, v16, v13, v14, v15);
  if (v10)
  {
    v42[0] = v39;
    v42[1] = v8;
    v42[2] = v10;
    v42[3] = v38;
    v43 = v11;
    v44 = WORD2(v11);
    v45 = BYTE6(v11);
    v40 = HIDWORD(v38);

    a2 = &v40;
    v5 = sub_1001F7E28();
    a3 = v17;
    if ((sub_10002E9FC(0x2D746E65746E6F63uLL, 0xEE006874676E656CLL) & 1) == 0)
    {
      a2 = v41;
      v34 = v6;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_5;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    a2 = sub_1000375BC(0, a2[2] + 1, 1, a2);
LABEL_5:
    v19 = a2[2];
    v18 = a2[3];
    if (v19 >= v18 >> 1)
    {
      a2 = sub_1000375BC(v18 > 1, v19 + 1, 1, a2);
    }

    a2[2] = (v19 + 1);
    v20 = &a2[4 * v19];
    strcpy(v20 + 32, "content-length");
    *(v20 + 47) = -18;
    v20[6] = v5;
    v20[7] = a3;
    v41 = a2;
    if ((sub_100030BD4(0x697463656E6E6F63, 0xEA00000000006E6FLL, 0x2D746E65746E6F63, 0xEE006874676E656CLL) | v35))
    {
      v21 = 2;
    }

    else
    {
      v21 = v36;
    }

    if (!v8)
    {
      v28 = v34;
      v32 = v39;
LABEL_21:
      sub_1001A0754(v28, a2, v21);
      sub_1001A06B8(v42);

      sub_1001A1114(v32, v8, v10);
      goto LABEL_22;
    }

    a2 = 0xEC00000065707974;

    v22 = sub_100030BD4(0x697463656E6E6F63, 0xEA00000000006E6FLL, 0x2D746E65746E6F63, 0xEC00000065707974);
    v37 = v22;
    __chkstk_darwin(v22);
    v23 = sub_10003653C(&v41, sub_100053260);
    v27 = v41[2];
    v28 = v34;
    if (v27 < v23)
    {
      __break(1u);
    }

    else
    {
      a2 = &v41;
      sub_100036918(v23, v27, v24, v25, v26);
      if ((sub_10002E9FC(0x2D746E65746E6F63uLL, 0xEC00000065707974) & 1) == 0)
      {
        a2 = v41;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_14:
          v30 = a2[2];
          v29 = a2[3];
          if (v30 >= v29 >> 1)
          {
            a2 = sub_1000375BC(v29 > 1, v30 + 1, 1, a2);
          }

          a2[2] = (v30 + 1);
          v31 = &a2[4 * v30];
          strcpy(v31 + 32, "content-type");
          *(v31 + 45) = 0;
          *(v31 + 23) = -5120;
          v32 = v39;
          v31[6] = v39;
          v31[7] = v8;
          v41 = a2;
          if ((sub_100030BD4(0x697463656E6E6F63, 0xEA00000000006E6FLL, 0x2D746E65746E6F63, 0xEC00000065707974) | v37))
          {
            v21 = 2;
          }

          goto LABEL_21;
        }

LABEL_28:
        a2 = sub_1000375BC(0, a2[2] + 1, 1, a2);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_1001A0754(v6, v5, v36);
LABEL_22:
}

uint64_t sub_1001A0C54()
{
  v4 = sub_1000183C4(&qword_1002ADA10, &unk_10020E830);
  memset(v2, 0, sizeof(v2));
  v3 = 2;
  v5 = 2;
  sub_100030794("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/HTTPHandler.swift", 104, 2, 104);
  ChannelHandlerContext.writeAndFlush(_:promise:)(v2, v0);

  return sub_100034310(v2);
}

void sub_1001A0CE0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    ChannelHandlerContext.close(mode:promise:)();
  }
}

uint64_t sub_1001A0D1C(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 136);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(a1, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000B738C(0x6E756F6620746F4ELL, 0xE900000000000064, 6, v18);
    v6 = v20;
    v7 = v19;
    v8 = v21;
    type metadata accessor for HTTPResponseHead._Storage();
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 25;
    *(v9 + 40) = 65537;
    v12[0] = v9;
    v12[1] = _swiftEmptyArrayStorage;
    LOBYTE(v13[0]) = 2;
    *&v13[1] = v18[0];
    v14 = v18[1];
    v17 = v8;
    v16 = v6;
    v15 = v7;
    swift_getObjectType();
    EventLoop.makeSucceededFuture<A>(_:file:line:)();
    v5 = v10;
    sub_1000E5E28(v12);
  }

  return v5;
}

uint64_t sub_1001A0E8C(uint64_t a1)
{
  sub_1000B738C(0xD000000000000024, 0x800000010022CA60, 6, v8);
  v1 = v10;
  v2 = v9;
  v3 = v11;
  type metadata accessor for HTTPResponseHead._Storage();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 24;
  *(v4 + 40) = 65537;
  v12[0] = v4;
  v12[1] = _swiftEmptyArrayStorage;
  v13 = 2;
  v14[1] = v8[1];
  v14[0] = v8[0];
  v17 = v3;
  v16 = v1;
  v15 = v2;
  swift_getObjectType();
  swift_unknownObjectRetain();
  EventLoop.makeSucceededFuture<A>(_:file:line:)();
  v6 = v5;
  swift_unknownObjectRelease();
  sub_1000E5E28(v12);
  return v6;
}

uint64_t sub_1001A0FD0()
{
  sub_1001A11C0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  sub_1000876E4(v0 + 128);

  return swift_deallocClassInstance();
}

uint64_t sub_1001A1094()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001A10D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1001A1114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1001A1158(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002BAE78, &qword_1002158A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A11C0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a3)
  {
    sub_1001A1268(a1, a2);

    swift_unknownObjectRelease();
    sub_1001A1114(a8, a9, a10);
  }

  return a1;
}

uint64_t sub_1001A1268(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

double sub_1001A12DC()
{
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  return result;
}

void sub_1001A12FC(__n128 a1)
{
  *(v1 + 40) = a1;
  *(v1 + 56) = a1;
  *(v1 + 72) = a1;
  *(v1 + 88) = a1;
  *(v1 + 104) = a1;
  *(v1 + 120) = 0;
}

void *sub_1001A1318(void *a1)
{

  return memcpy(a1, (v1 + 24), 0x68uLL);
}

unint64_t sub_1001A1348()
{
  result = qword_1002BAE90;
  if (!qword_1002BAE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BAE90);
  }

  return result;
}

uint64_t sub_1001A139C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v280 = a4;
  v279 = a3;
  v274 = a2;
  v273 = a1;
  v271 = sub_1001F6938();
  sub_10001A278();
  v270 = v7;
  __chkstk_darwin(v8);
  sub_10004FE10();
  v272 = v9;
  __chkstk_darwin(v10);
  v269 = &v254 - v11;
  v12 = sub_1001F6968();
  sub_10001A278();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_10004FE10();
  v278 = v16;
  __chkstk_darwin(v17);
  v19 = &v254 - v18;
  v20 = sub_1001F6B98();
  sub_10001A278();
  v281 = v21;
  __chkstk_darwin(v22);
  v24 = &v254 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = sub_1001F6B58();
  v285 = v25;
  sub_1001F7758();
  sub_10003A6AC();
  v26 = sub_10003A1F8(&v286);
  v276 = v12;
  if (v294)
  {
    if (sub_10003A660(v26, v27, v28, type metadata for String))
    {
      v29 = v284;
      goto LABEL_6;
    }
  }

  else
  {
    sub_10003A24C(&v291);
  }

  v29 = 3157553;
LABEL_6:
  v282 = v29;
  v277 = v19;
  v291 = sub_1001F6B58();
  v292 = v30;
  sub_10003A76C(v291, type metadata for String, &protocol witness table for String);
  sub_10003A6AC();
  v31 = sub_10003A1F8(&v286);
  v275 = v14;
  if (v294)
  {
    v34 = sub_10003A660(v31, v32, v33, type metadata for String);
    v35 = v34 == 0;
    if (v34)
    {
      v36 = v284;
    }

    else
    {
      v36 = 0;
    }

    if (v35)
    {
      v37 = 0;
    }

    else
    {
      v37 = v285;
    }
  }

  else
  {
    sub_10003A24C(&v291);
    v36 = 0;
    v37 = 0;
  }

  v38 = sub_1001A28A0(v36, v37, 0, 0, 0);
  if (v5)
  {

    return v51 & 1;
  }

  v40 = v39;
  v268 = v38;

  v291 = sub_1001F6B58();
  v292 = v41;
  sub_10003A76C(v291, type metadata for String, &protocol witness table for String);
  sub_10003A6AC();
  v42 = sub_10003A1F8(&v286);
  if (v294)
  {
    v45 = sub_10003A660(v42, v43, v44, &type metadata for UInt64);
    sub_1001A316C(v45);
  }

  else
  {
    sub_10003A24C(&v291);
  }

  sub_1001A30B8();
  v267 = sub_1001A2A98(v46, v47, v48, v49, v50);
  v291 = sub_1001F6B58();
  v292 = v53;
  sub_10003A76C(v291, type metadata for String, &protocol witness table for String);
  sub_10003A6AC();
  v54 = sub_10003A1F8(&v286);
  if (v294)
  {
    sub_10003A660(v54, v55, v56, type metadata for String);
  }

  else
  {
    sub_10003A24C(&v291);
  }

  sub_1001A30B8();
  v265 = sub_1001A28A0(v57, v58, v59, v60, v61);
  v266 = v62;

  v291 = sub_1001F6B58();
  v292 = v63;
  sub_10003A76C(v291, type metadata for String, &protocol witness table for String);
  sub_10003A6AC();
  v64 = sub_10003A1F8(&v286);
  if (v294)
  {
    v67 = sub_10003A660(v64, v65, v66, &type metadata for UInt64);
    sub_1001A316C(v67);
  }

  else
  {
    sub_10003A24C(&v291);
  }

  sub_1001A30B8();
  v257 = sub_1001A2A98(v68, v69, v70, v71, v72);
  v291 = sub_1001F6B58();
  v292 = v73;
  sub_10003A76C(v291, type metadata for String, &protocol witness table for String);
  sub_10003A6AC();
  v74 = sub_10003A1F8(&v286);
  if (v294)
  {
    sub_10003A660(v74, v75, v76, &type metadata for Int);
    sub_10003A6E4();
    v263 = v77;
    v79 = v78 ^ 1;
  }

  else
  {
    sub_10003A24C(&v291);
    v263 = 0;
    v79 = 1;
  }

  LODWORD(v262) = v79;
  v291 = sub_1001F6B58();
  v292 = v80;
  sub_10003A76C(v291, type metadata for String, &protocol witness table for String);
  sub_10003A6AC();
  v81 = sub_10003A1F8(&v286);
  if (v294)
  {
    sub_10003A660(v81, v82, v83, &type metadata for Int);
    sub_10003A6E4();
    v259 = v84;
    v86 = v85 ^ 1;
  }

  else
  {
    sub_10003A24C(&v291);
    v259 = 0;
    v86 = 1;
  }

  v258 = v86;
  v291 = sub_1001F6B58();
  v292 = v87;
  sub_10003A76C(v291, type metadata for String, &protocol witness table for String);
  sub_10003A6AC();
  v88 = sub_10003A1F8(&v286);
  if (v294)
  {
    sub_10003A660(v88, v89, v90, &type metadata for UInt64);
    sub_10003A6E4();
    v260 = v91;
    v93 = v92 ^ 1;
  }

  else
  {
    sub_10003A24C(&v291);
    v260 = 0;
    v93 = 1;
  }

  LODWORD(v261) = v93;
  v291 = sub_1001F6B58();
  v292 = v94;
  sub_10003A76C(v291, type metadata for String, &protocol witness table for String);
  sub_10003A6AC();
  v95 = sub_10003A1F8(&v286);
  if (v294)
  {
    v98 = sub_10003A660(v95, v96, v97, type metadata for String);
    v99 = v284;
    if (!v98)
    {
      v99 = 0;
    }

    v255 = v99;
    if (v98)
    {
      v100 = v285;
    }

    else
    {
      v100 = 0;
    }

    v264 = v100;
  }

  else
  {
    sub_10003A24C(&v291);
    v255 = 0;
    v264 = 0;
  }

  v291 = sub_1001F6B58();
  v292 = v101;
  sub_10003A76C(v291, type metadata for String, &protocol witness table for String);
  sub_10003A6AC();
  v102 = sub_10003A1F8(&v286);
  if (v294)
  {
    sub_10003A660(v102, v103, v104, &type metadata for Int);
    sub_10003A6E4();
    v256 = v105;
    v107 = v106 ^ 1;
  }

  else
  {
    sub_10003A24C(&v291);
    v256 = 0;
    v107 = 1;
  }

  v108 = sub_1001F6B48();
  v109 = [v108 skan_version];

  if ((v109 - 200) < 2)
  {
    sub_1001A3184();

    sub_1001A30B8();
    v120 = sub_1001A2A98(v115, v116, v117, v118, v119);
    sub_1001A30B8();
    v126 = sub_1001A2A98(v121, v122, v123, v124, v125);
    sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
    v127 = swift_allocObject();
    sub_1001A30E4(v127, xmmword_100200CB0);
    v286 = v120;
    *(v127 + 64) = sub_1001F7E28();
    *(v127 + 72) = v128;
    sub_10003A6D8(v293);
    v129 = sub_1001A31C4();
    sub_1001A30C8(v129, v130);
    v286 = v126;
    *(v127 + 112) = sub_1001A31C4();
    *(v127 + 120) = v131;
    sub_10003A6D8(&v283);
    *(v127 + 128) = sub_1001A31C4();
    *(v127 + 136) = v132;
    goto LABEL_75;
  }

  if (v109 == 400)
  {
    sub_1001A30B8();
    v263 = sub_1001A2A98(v156, v157, v158, v159, v160);
    sub_1001A30B8();
    v189 = sub_1001A2A98(v161, v162, v163, v164, v165);
    if (a5 == 4)
    {
      sub_1001A30B8();
      v195 = sub_1001A28A0(v190, v191, v192, v193, v194);
      v260 = v203;
      v261 = v195;
      v262 = v189;
    }

    else
    {
      sub_1001A3184();

      sub_1001A30B8();
      v201 = sub_1001A2A98(v196, v197, v198, v199, v200);
      v262 = v189;
      v286 = v201;
      v261 = sub_1001F7E28();
      v260 = v202;
    }

    v204 = v267;
    sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
    v127 = swift_allocObject();
    sub_1001A30E4(v127, xmmword_100200CA0);
    sub_10003A6D8(v289);
    *(v127 + 64) = sub_1001F7E28();
    *(v127 + 72) = v205;
    v286 = v204;
    v206 = sub_1001A3208();
    sub_1001A30C8(v206, v207);
    v208 = v260;
    *(v127 + 112) = v261;
    *(v127 + 120) = v208;
    v155 = &v288;
    goto LABEL_74;
  }

  if (v109 == 202 || v109 == 300)
  {
    sub_1001A3184();

    sub_1001A30B8();
    v138 = sub_1001A2A98(v133, v134, v135, v136, v137);
    sub_1001A30B8();
    v144 = sub_1001A2A98(v139, v140, v141, v142, v143);
    sub_1001A30B8();
    v264 = sub_1001A2A98(v145, v146, v147, v148, v149);
    sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
    v150 = v144;
    v127 = swift_allocObject();
    sub_1001A30E4(v127, xmmword_100200CA0);
    v286 = v138;
    *(v127 + 64) = sub_1001F7E28();
    *(v127 + 72) = v151;
    sub_10003A6D8(v293);
    v152 = sub_1001A3208();
    sub_1001A30C8(v152, v153);
    v286 = v150;
    *(v127 + 112) = sub_1001A3208();
    *(v127 + 120) = v154;
    v155 = &v290;
LABEL_74:
    sub_10003A6D8(v155);
    *(v127 + 128) = sub_1001F7E28();
    *(v127 + 136) = v209;
    sub_10003A6D8(&v283);
    *(v127 + 144) = sub_1001A3208();
    *(v127 + 152) = v210;
    goto LABEL_75;
  }

  if (v109 != 100)
  {

    sub_1001A31AC();

LABEL_76:

    sub_1001A31DC();
    if (!v35)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v217 = sub_1001F6688();
    sub_100019C94(v217, qword_1002E6180);
    v218 = sub_1001F6668();
    v219 = sub_1001F7278();
    if (os_log_type_enabled(v218, v219))
    {
      v220 = sub_10003A87C();
      *v220 = 0;
      _os_log_impl(&_mh_execute_header, v218, v219, "SKAdNetwork signature verification: Unable to compose digest.", v220, 2u);
      sub_10003A72C(v220);
    }

    v51 = 0;
    return v51 & 1;
  }

  sub_1001A3184();

  sub_1001A30B8();
  v166 = sub_1001A2A98(v110, v111, v112, v113, v114);
  if ((v107 & 1) == 0)
  {
    sub_1001A31DC();
    if (!v35)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v167 = sub_1001F6688();
    sub_100019C94(v167, qword_1002E6180);
    v168 = sub_1001F6668();
    v169 = sub_1001F7278();
    if (os_log_type_enabled(v168, v169))
    {
      v170 = sub_10003A87C();
      *v170 = 0;
      sub_1001A315C();
      _os_log_impl(v171, v172, v173, v174, v175, 2u);
      sub_10003A72C(v170);
    }
  }

  if ((v261 & 1) == 0)
  {
    sub_1001A31DC();
    if (!v35)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v176 = sub_1001F6688();
    sub_100019C94(v176, qword_1002E6180);
    v177 = sub_1001F6668();
    v178 = sub_1001F7278();
    if (os_log_type_enabled(v177, v178))
    {
      v179 = sub_10003A87C();
      *v179 = 0;
      sub_1001A315C();
      _os_log_impl(v180, v181, v182, v183, v184, 2u);
      sub_10003A72C(v179);
    }
  }

  sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_1002109C0;
  *(v127 + 32) = v268;
  *(v127 + 40) = v40;
  v286 = v166;
  *(v127 + 48) = sub_1001F7E28();
  *(v127 + 56) = v185;
  sub_10003A6D8(v293);
  *(v127 + 64) = sub_1001A31C4();
  *(v127 + 72) = v186;
  v187 = v266;
  *(v127 + 80) = v265;
  *(v127 + 88) = v187;
  sub_10003A6D8(&v283);
  *(v127 + 96) = sub_1001A31C4();
  *(v127 + 104) = v188;
LABEL_75:
  v286 = v127;
  sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
  sub_10003A2B4();
  v211 = sub_1001F6A68();
  v213 = v212;

  sub_1001F6B88();
  v214 = sub_1001F6B68();
  v216 = v215;
  (*(v281 + 8))(v24, v20);
  if (v216 >> 60 == 15)
  {
    goto LABEL_76;
  }

  sub_1001A31DC();
  if (!v35)
  {
    sub_10001B230(&qword_1002AC510);
  }

  v221 = sub_1001F6688();
  v222 = sub_100019C94(v221, qword_1002E6180);

  v223 = sub_1001F6668();
  v224 = sub_1001F7278();

  v225 = os_log_type_enabled(v223, v224);
  v282 = v222;
  if (v225)
  {
    v226 = sub_10003A8AC();
    v227 = v216;
    v228 = sub_10003A894();
    v286 = v228;
    *v226 = 136315138;
    v229 = sub_1000E4544(v211, v213, &v286);

    *(v226 + 4) = v229;
    _os_log_impl(&_mh_execute_header, v223, v224, "Composed digest: %s", v226, 0xCu);
    sub_100019CCC(v228);
    v230 = v228;
    v216 = v227;
    sub_10003A72C(v230);
    sub_10003A72C(v226);
  }

  else
  {
  }

  v231 = sub_1001F6328();
  v233 = v232;
  sub_1001A2C3C(v231, v232, 8, 0xD000000000000037, 0x800000010022CE70, &v286);
  sub_10003A36C(v231, v233);
  v235 = v286;
  v234 = v287;
  sub_100040C70(v286, v287);
  sub_10003A318();
  v236 = v278;
  sub_1001F6958();
  v279 = v235;
  v280 = v234;
  v281 = v214;
  (*(v275 + 32))(v277, v236, v276);
  v237 = sub_1001F6328();
  v239 = v238;
  sub_1001A2C3C(v237, v238, 7, 0xD00000000000003DLL, 0x800000010022CEB0, &v286);
  sub_10003A36C(v237, v239);
  v278 = v287;
  sub_100040C70(v286, v287);
  sub_10003A3D8();
  sub_1001F6908();
  (*(v270 + 32))(v269, v272, v271);
  v286 = v281;
  v287 = v216;
  if (sub_1001F6948())
  {
    sub_1001A3220();
    sub_1001A3190();
    sub_1001A3140();
    v240 = sub_1001A3100();
    v241(v240);
    v242 = sub_1001A3120();
    v243(v242);
    v51 = 1;
  }

  else
  {
    v244 = sub_1001F6668();
    v245 = sub_1001F7278();
    if (os_log_type_enabled(v244, v245))
    {
      v246 = sub_10003A87C();
      *v246 = 0;
      _os_log_impl(&_mh_execute_header, v244, v245, "Verification failed", v246, 2u);
      sub_10003A72C(v246);
    }

    v247 = sub_1001A1348();
    v248 = sub_1000276A0(&type metadata for SKANSignatureError, v247);
    sub_1001A31E8(v248, v249);
    sub_1001A3220();
    sub_1001A3190();
    sub_1001A3140();
    v250 = sub_1001A3100();
    v251(v250);
    v252 = sub_1001A3120();
    v253(v252);
  }

  return v51 & 1;
}

unint64_t sub_1001A28A0(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
  }

  else
  {
    if (a5)
    {
      a1 = a5;
    }

    else
    {
      v19 = a3;
      sub_1001A1348();
      a4 = sub_1001F7FE8();
      a1 = v8;
    }

    v9 = qword_1002AC510;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_1001F6688();
    sub_100019C94(v10, qword_1002E6180);

    v11 = sub_1001F6668();
    v12 = sub_1001F7298();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      v15 = sub_1000E4544(a4, a1, &v18);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
      sub_100019CCC(v14);
    }

    else
    {
    }

    sub_1001A1348();
    swift_allocError();
    *v16 = a3;
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1001A2A98(uint64_t a1, char a2, char a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      v8 = a5;
    }

    else
    {
      v26 = a3;
      sub_1001A1348();
      a4 = sub_1001F7FE8();
      v8 = v9;
    }

    v10 = qword_1002AC510;

    if (v10 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v11 = sub_1001F6688();
    sub_100019C94(v11, qword_1002E6180);

    v12 = sub_1001F6668();
    v13 = sub_1001F7298();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = sub_10003A8AC();
      v15 = sub_10003A894();
      v25 = v15;
      *v14 = 136315138;
      v16 = sub_1000E4544(a4, v8, &v25);

      *(v14 + 4) = v16;
      sub_1001A315C();
      _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
      sub_100019CCC(v15);
      sub_10003A72C(v15);
      sub_10003A72C(v14);
    }

    else
    {
    }

    v22 = sub_1001A1348();
    sub_1000276A0(&type metadata for SKANSignatureError, v22);
    *v23 = a3;
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1001A2C3C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (a2 >> 60 == 15)
  {
    if (a5)
    {
      v8 = a5;
    }

    else
    {
      v20 = a3;
      sub_1001A1348();
      a4 = sub_1001F7FE8();
      v8 = v10;
    }

    v11 = qword_1002AC510;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = sub_1001F6688();
    sub_100019C94(v12, qword_1002E6180);

    v13 = sub_1001F6668();
    v14 = sub_1001F7298();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      v17 = sub_1000E4544(a4, v8, &v19);

      *(v15 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s", v15, 0xCu);
      sub_100019CCC(v16);
    }

    else
    {
    }

    sub_1001A1348();
    swift_allocError();
    *v18 = a3;
    return swift_willThrow();
  }

  else
  {
    *a6 = a1;
    a6[1] = a2;
    return sub_100040C70(a1, a2);
  }
}

unint64_t sub_1001A2E2C(char a1)
{
  result = 0xD000000000000043;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000041;
      break;
    case 3:
    case 9:
      result = 0xD00000000000003BLL;
      break;
    case 4:
      result = 0xD000000000000048;
      break;
    case 6:
    case 7:
      result = 0xD00000000000003FLL;
      break;
    case 8:
      result = 0xD000000000000039;
      break;
    case 10:
      result = 0xD000000000000047;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SKANSignatureError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x1001A3028);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001A3064()
{
  result = qword_1002BAE98[0];
  if (!qword_1002BAE98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002BAE98);
  }

  return result;
}

uint64_t sub_1001A30C8(uint64_t result, uint64_t a2)
{
  v2[10] = result;
  v2[11] = a2;
  v4 = *(v3 - 368);
  v2[12] = *(v3 - 376);
  v2[13] = v4;
  return result;
}

__n128 *sub_1001A30E4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = *(v4 - 240);
  result[2].n128_u64[1] = v3;
  result[3].n128_u64[0] = *(v4 - 352);
  result[3].n128_u64[1] = v2;
  return result;
}

uint64_t sub_1001A3140()
{
  v2 = *(v0 - 264);
  v3 = *(v0 - 256);

  return sub_10003A380(v2, v3);
}

uint64_t sub_1001A316C(int a1)
{
  if (a1)
  {
    return *(v1 - 176);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001A3190()
{
  v3 = *(v1 - 272);

  return sub_10003A380(v0, v3);
}

uint64_t sub_1001A31AC()
{
}

uint64_t sub_1001A31C4()
{

  return sub_1001F7E28();
}

uint64_t sub_1001A31E8(uint64_t a1, _BYTE *a2)
{
  *a2 = 7;

  return swift_willThrow();
}

uint64_t sub_1001A3208()
{

  return sub_1001F7E28();
}

uint64_t sub_1001A3220()
{
  v3 = *(v1 - 248);

  return sub_10003A36C(v3, v0);
}

uint64_t sub_1001A3238()
{
  sub_1000183C4(&qword_1002B70C8, &unk_100215A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100215A00;
  *(inited + 32) = 0x6853796C696D6166;
  *(inited + 40) = 0xEF656C6261657261;
  *(inited + 48) = sub_1001F6FE8();
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x800000010022CEF0;
  sub_100019C0C(0, qword_1002B23E0, NSNumber_ptr);
  *(inited + 72) = sub_1001F73B8(0);
  strcpy((inited + 80), "hasPromoOffer");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_1001F73B8(0);
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x800000010022CF10;
  sub_10001A07C();
  *(inited + 120) = sub_1001F70D8();
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x800000010022CF30;
  *(inited + 144) = sub_1001F73C8(0);
  *(inited + 152) = 1701869940;
  *(inited + 160) = 0xE400000000000000;
  v1 = sub_1001F6B48();

  *(inited + 168) = v1;
  sub_100019C0C(0, &qword_1002B70C0, NSObject_ptr);
  v2 = sub_1001F69B8();
  type metadata accessor for OctaneSubscription();
  if (swift_dynamicCastClass())
  {

    isa = sub_1001F6FE8().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1001E6354(isa, 0xD000000000000014, 0x800000010022CEF0, isUniquelyReferenced_nonNull_native);
    sub_10001A07C();
    v5 = sub_1001F70D8().super.super.isa;
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001E6354(v5, 0xD000000000000015, 0x800000010022CF30, v6);
  }

  return v2;
}

unint64_t sub_1001A353C(char a1)
{
  if (a1)
  {
    return 0xD000000000000021;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1001A359C(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v44 = a1;
  v45 = a2;
  sub_10002DFFC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000D4804();
  v46 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10002DFFC();
  v48 = v14;
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  __chkstk_darwin(v18);
  sub_1000D4804();
  v42 = v19;
  swift_getAssociatedTypeWitness();
  sub_10002DFFC();
  v36 = v21;
  v37 = v20;
  __chkstk_darwin(v20);
  v23 = &v33 - v22;
  sub_100062888();
  v24 = sub_1001F7118();
  if (!v24)
  {
    return sub_1001F6F78();
  }

  v47 = v24;
  v51 = sub_1001F7978();
  v38 = sub_1001F7988();
  sub_1001F78B8(v47);
  sub_100062888();
  result = sub_1001F7108();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v33 = v11;
    v34 = a5;
    v26 = 0;
    v39 = (v48 + 16);
    v40 = v48 + 8;
    v41 = v8;
    while (!__OFADD__(v26, 1))
    {
      v48 = v26 + 1;
      v27 = sub_1001F71D8();
      (*v39)(v17);
      v27(v50, 0);
      v28 = v49;
      v44(v17, v46);
      if (v28)
      {
        v31 = sub_1001A4F20();
        v32(v31);
        (*(v36 + 8))(v23, v37);

        return (*(v33 + 32))(v35, v46, v34);
      }

      v49 = 0;
      v29 = sub_1001A4F20();
      v30(v29);
      sub_1001F7948();
      result = sub_1001F7138();
      ++v26;
      if (v48 == v47)
      {
        (*(v36 + 8))(v23, v37);
        return v51;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Heap.init()(uint64_t a1)
{
  sub_10010B19C();
  sub_1001F6F78();

  return sub_1001F78A8();
}

uint64_t Heap.remove(value:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001F74B8();
  sub_10002DFFC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = v11 - v7;
  v11[1] = *v2;
  sub_1001F7988();
  sub_10002E9AC();
  swift_getWitnessTable();
  sub_1001F71C8();
  v9 = v12;
  if ((v12 & 1) == 0)
  {
    Heap._remove(index:)();
    (*(v5 + 8))(v8, v3);
  }

  return v9 ^ 1u;
}

void Heap.append(_:)()
{
  sub_100037C08();
  v1 = v0;
  v22 = v2;
  v3 = *(v2 + 16);
  sub_10002DFFC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100099484();
  v21 = v7 - v8;
  __chkstk_darwin(v9);
  v11 = v18 - v10;
  v12 = _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
  (*(v5 + 16))(v11, v1, v3);
  v13 = sub_1001F7988();
  v20 = v11;
  v18[1] = v13;
  sub_1001F7948();
  v19 = (v5 + 8);
  while (v12 >= 1)
  {

    v14 = v20;
    _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
    _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
    v15 = sub_1001F6A78();

    v16 = *v19;
    v17 = sub_100062888();
    v16(v17);
    (v16)(v14, v3);
    if ((v15 & 1) == 0)
    {
      break;
    }

    v23 = (v12 - 1) >> 1;
    v24 = v12;
    sub_10010AF90();
    swift_getWitnessTable();
    sub_1001A4EE4();
    sub_1001F6AF8();
    v12 = (v12 - 1) >> 1;
  }

  sub_100037B00();
}

Swift::Int __swiftcall Heap.parentIndex(_:)(Swift::Int result)
{
  if (!__OFSUB__(result, 1))
  {
    return (result - 1) / 2;
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall Heap.leftIndex(_:)(Swift::Int result)
{
  if (result + 0x4000000000000000 >= 0)
  {
    return (2 * result) | 1;
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall Heap.rightIndex(_:)(Swift::Int result)
{
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = __OFADD__(2 * result, 2);
  result = 2 * result + 2;
  if (v1)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Heap._heapify(_:)(Swift::Int a1)
{
  sub_100037C08();
  v31 = v1;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  sub_10002DFFC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100099484();
  v12 = (v10 - v11);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  if (v16 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = *(v3 + 24);
  v18 = Heap.rightIndex(_:)(v5);
  v19 = _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
  if (__OFSUB__(v19, 1))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v20 = v5;
  if (v19 - 1 > 2 * v5)
  {
    v20 = (2 * v5) | 1;

    sub_1001A4F54(v20);
    sub_1001A4F54(v5);
    HIDWORD(v28) = sub_1001A4F34();

    v29 = v17;
    v30 = v3;
    v21 = v18;
    v22 = v8;
    v23 = *(v8 + 8);
    v23(v12, v6);
    v23(v15, v6);
    v8 = v22;
    v18 = v21;
    if ((v28 & 0x100000000) == 0)
    {
      v20 = v5;
    }
  }

  v24 = _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
  if (__OFSUB__(v24, 1))
  {
    goto LABEL_15;
  }

  if (v24 - 1 >= v18)
  {

    sub_1001A4F54(v18);
    sub_1001A4F54(v20);
    v25 = v18;
    v26 = sub_1001A4F34();

    v27 = *(v8 + 8);
    v27(v12, v6);
    v27(v15, v6);
    if (v26)
    {
      v20 = v25;
    }
  }

  if (v20 != v5)
  {
    v32 = v20;
    v33 = v5;
    sub_1001F7988();
    sub_10010AF90();
    swift_getWitnessTable();
    sub_1001A4EE4();
    sub_1001F6AF8();
    Heap._heapify(_:)(v20);
  }

  sub_100037B00();
}

void Heap._heapRootify(index:key:)()
{
  sub_100037C08();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *(v6 + 16);
  sub_10002DFFC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100099484();
  v13 = (v11 - v12);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;

  _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
  sub_1001A4ED8();
  v25 = v17;
  v18 = sub_1001F6A78();

  v23 = *(v9 + 8);
  v24 = v9 + 8;
  v23(v16, v7);
  if (v18)
  {
    sub_1001F7AC8();
    __break(1u);
  }

  else
  {
    sub_1001F7988();
    sub_1001F78E8();
    v19 = *v1;
    sub_10010AA80(v5, *v1);
    (*(v9 + 24))(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v5, v3, v7);
    debugOnly(_:)();
    while (v5 >= 1)
    {

      _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
      _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
      sub_100062888();
      v20 = sub_1001F6A78();

      v21 = v23;
      v23(v13, v7);
      v21(v16, v7);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v26 = (v5 - 1) >> 1;
      v27 = v5;
      sub_10010AF90();
      swift_getWitnessTable();
      sub_1001A4EE4();
      sub_1001F6AF8();
      v5 = (v5 - 1) >> 1;
    }

    sub_100037B00();
  }
}

void Heap._remove(index:)()
{
  sub_100037C08();
  v2 = v1;
  v4 = v3;
  v49 = v5;
  v6 = *(v5 + 16);
  sub_10002DFFC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100099484();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  __chkstk_darwin(v16);
  v18 = &v44 - v17;
  if (sub_1001A4EF4() >= 1)
  {
    v47 = v0;
    v48 = v4;
    v46 = v18;
    sub_1001A4ECC();
    _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
    if (sub_1001A4EF4() == 1)
    {
LABEL_5:
      sub_10010B19C();
      sub_1001F7988();
      sub_1001A4EB4();
      swift_getWitnessTable();
      sub_1001A4E9C();
      swift_getWitnessTable();
      sub_1001F7258();
      v23 = sub_1001A4ED8();
      v24(v23);
LABEL_6:
      v25 = v48;
      (*(v8 + 32))(v48, v46, v6);
      sub_100018460(v25, 0, 1, v6);
      sub_100037B00();
      return;
    }

    sub_1001A4ECC();
    _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
    if (__OFSUB__(sub_1001A4EF4(), 1))
    {
      __break(1u);
    }

    else
    {
      sub_1001A4ECC();
      _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
      sub_1001A4F0C();
      v19 = sub_1001F6B28();
      v20 = v2;
      v21 = *(v8 + 8);
      v21(v12, v6);
      v22 = sub_1001A4ED8();
      v45 = v21;
      (v21)(v22);
      if (v19)
      {
        goto LABEL_5;
      }

      v44 = v20;
      sub_1001A4ECC();
      _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
      if (!__OFSUB__(sub_1001A4EF4(), 1))
      {
        sub_1001A4ECC();
        _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
        sub_1001A4F0C();
        v31 = sub_1001F6A78();

        v32 = v12;
        v33 = v45;
        (v45)(v32, v6);
        v34 = sub_1001A4ED8();
        v33(v34);
        v35 = __OFSUB__(sub_1001A4EF4(), 1);
        if ((v31 & 1) == 0)
        {
          if (!v35)
          {
            sub_1001A4ECC();
            _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
            Heap._heapRootify(index:key:)();
            v42 = sub_1001A4ED8();
            v33(v42);
            sub_10010B19C();
            sub_1001F7988();
            sub_1001A4EB4();
            swift_getWitnessTable();
            sub_1001A4E9C();
            swift_getWitnessTable();
            sub_1001F7258();
            v43 = sub_1001A4ED8();
            v33(v43);
            goto LABEL_6;
          }

          goto LABEL_22;
        }

        if (!v35)
        {
          sub_1001A4ECC();
          _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
          sub_10010B19C();
          sub_1001F7988();
          v36 = v47;
          sub_1001F78E8();
          v37 = *v36;
          v38 = v44;
          sub_1001A4ECC();
          sub_10010AA80(v39, v40);
          (*(v8 + 40))(v37 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v38, v15, v6);
          debugOnly(_:)();
          sub_1001A4EB4();
          swift_getWitnessTable();
          sub_1001A4E9C();
          swift_getWitnessTable();
          sub_1001F7258();
          v41 = sub_1001A4ED8();
          v33(v41);
          Heap._heapify(_:)(v38);
          goto LABEL_6;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  sub_100037B00();

  sub_100018460(v26, v27, v28, v29);
}

void Heap.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
  if (v6 < 1)
  {

    return;
  }

  v52 = a1;
  __chkstk_darwin(v6);
  v46[2] = a2;
  v46[3] = a3;
  v49 = a2;
  v50 = a3;
  v7 = sub_1001F7988();
  sub_10002E9AC();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1001A359C(sub_1001A4DB4, v46, v7, type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v9);

  v11 = *(v10 + 16);
  if (v11)
  {
    v52 = _swiftEmptyArrayStorage;
    sub_1000375D0(0, v11, 0);
    v12 = v52;
    v13 = v10 + 40;
    v14 = v11;
    do
    {

      v15 = sub_1001F6C38();

      v52 = v12;
      v17 = v12[2];
      v16 = v12[3];
      if (v17 >= v16 >> 1)
      {
        sub_1000375D0(v16 > 1, v17 + 1, 1);
        v12 = v52;
      }

      v12[2] = v17 + 1;
      v12[v17 + 4] = v15;
      v13 += 16;
      --v14;
    }

    while (v14);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v18 = sub_1000A103C(v12);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    v51 = a1;
    if (v11)
    {
      v54 = _swiftEmptyArrayStorage;
      sub_1000375CC(0, v11, 0);
      v21 = 0;
      v22 = v54;
      v47._object = (v10 + 32);
      v48 = v10;
      while (v21 < *(v10 + 16))
      {
        v23 = v11;
        v24 = v22;
        v25 = (v47._object + 16 * v21);
        v27 = *v25;
        v26 = v25[1];

        sub_1000994F8();
        if (sub_1001F6C38() < v18)
        {
          do
          {
            sub_1000994F8();
            if (sub_1001F6C38())
            {
              v52 = v27;
              v53 = v26;
              v56._countAndFlagsBits = sub_1000A40B8();
              sub_1001F6CA8(v56);
            }

            else
            {
              v52 = 32;
              v53 = 0xE100000000000000;
              v55._countAndFlagsBits = sub_1000994F8();
              sub_1001F6CA8(v55);
            }

            v27 = v52;
            v26 = v53;

            sub_1000994F8();
            v28 = sub_1001F6C38();
          }

          while (v28 < v18);
        }

        v22 = v24;
        v54 = v24;
        v30 = v24[2];
        v29 = v24[3];
        if (v30 >= v29 >> 1)
        {
          sub_1000375CC(v29 > 1, v30 + 1, 1);
          v22 = v54;
        }

        ++v21;
        v22[2] = v30 + 1;
        v31 = &v22[2 * v30];
        v31[4] = v27;
        v31[5] = v26;
        v11 = v23;
        v10 = v48;
        if (v21 == v23)
        {

          goto LABEL_24;
        }
      }
    }

    else
    {

      v22 = _swiftEmptyArrayStorage;
LABEL_24:
      v52 = 10;
      v53 = 0xE100000000000000;
      v57._countAndFlagsBits = sub_1000A40B8();
      v47._countAndFlagsBits = sub_1001F6D78(v57, v18);
      v47._object = v32;
      v33 = 0;
      v34 = v22[2];
      v35 = (v22 + 5);
      v48 = v22;
      if (!v34)
      {
LABEL_36:

        v63._countAndFlagsBits = 10;
        v63._object = 0xE100000000000000;
        sub_1001F6CA8(v63);
        return;
      }

      while (v33 < v22[2])
      {
        v37 = *(v35 - 1);
        v36 = *v35;
        v38 = v35;

        sub_1001A4C4C(v33, v51, v18, v49, v50);
        v40 = v39;
        v58._countAndFlagsBits = sub_1000A40B8();
        v59._countAndFlagsBits = sub_1001F6D78(v58, v41);
        sub_1001F6CA8(v59);

        v60._countAndFlagsBits = v37;
        v60._object = v36;
        sub_1001F6CA8(v60);

        v61._countAndFlagsBits = sub_1000A40B8();
        v62._countAndFlagsBits = sub_1001F6D78(v61, v40);
        sub_1001F6CA8(v62);

        v42 = log2((v33 + 1));
        v43 = v42;
        if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_38;
        }

        if (v42 <= -9.22337204e18)
        {
          goto LABEL_39;
        }

        if (v42 >= 9.22337204e18)
        {
          goto LABEL_40;
        }

        v44 = log2((v33 + 2));
        if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_41;
        }

        if (v44 <= -9.22337204e18)
        {
          goto LABEL_42;
        }

        if (v44 >= 9.22337204e18)
        {
          goto LABEL_43;
        }

        if (*&v43 == *&v44)
        {
          v45 = v47;
        }

        else
        {
          v45._countAndFlagsBits = 10;
          v45._object = 0xE100000000000000;
        }

        sub_1001F6CA8(v45);
        v35 = v38 + 2;
        --v34;
        ++v33;
        v22 = v48;
        if (!v34)
        {
          goto LABEL_36;
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
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}