uint64_t sub_100018BBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100018C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013A34(&qword_100066710, &unk_100047120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100018C74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_100018C84(uint64_t a1, unint64_t a2)
{
  v7 = _swiftEmptyArrayStorage;
  sub_100018D54(a1, a2, &v7);
  sub_10001316C(a1, a2);
  v5 = v7;
  if (v2)
  {
  }

  return v5;
}

uint64_t sub_100018CEC(uint64_t result)
{
  v3 = *(result + 16);
  v4 = (result + 32);
  do
  {
    if (!v3)
    {
      break;
    }

    v5 = *v4++;
    result = (*(**(v1 + 40) + 136))(v5);
    --v3;
  }

  while (!v2);
  return result;
}

uint64_t sub_100018D54(uint64_t result, unint64_t a2, uint64_t *a3)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      __break(1u);
      return result;
    }

    v6 = *(result + 16);
    v7 = *(result + 24);
    return sub_100018FE0(v6, v7, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  if (v4)
  {
    v6 = result;
    v7 = result >> 32;
    if (result >> 32 < result)
    {
      __break(1u);
      goto LABEL_18;
    }

    return sub_100018FE0(v6, v7, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  v15 = result;
  v16 = a2;
  v17 = BYTE2(a2);
  v18 = BYTE3(a2);
  v19 = BYTE4(a2);
  v20 = BYTE5(a2);
  if ((a2 & 0x3000000000000) != 0)
  {
    sub_100018F7C();
    swift_allocError();
    *v5 = xmmword_100047130;
    *(v5 + 16) = 2;
    return swift_willThrow();
  }

  v8 = (a2 >> 50) & 0x3F;
  if (!v8)
  {
LABEL_18:
    __break(1u);
  }

  v9 = 0;
  v10 = 4 * v8;
  do
  {
    v11 = *(&v15 + v9);
    v12 = *a3;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v12;
    if ((result & 1) == 0)
    {
      result = sub_100019164(0, *(v12 + 16) + 1, 1, v12);
      v12 = result;
      *a3 = result;
    }

    v14 = *(v12 + 16);
    v13 = *(v12 + 24);
    if (v14 >= v13 >> 1)
    {
      result = sub_100019164((v13 > 1), v14 + 1, 1, v12);
      v12 = result;
      *a3 = result;
    }

    *(v12 + 16) = v14 + 1;
    *(v12 + 4 * v14 + 32) = bswap32(v11);
    v9 += 4;
  }

  while (v10 != v9);
  return result;
}

unint64_t sub_100018F7C()
{
  result = qword_100066718;
  if (!qword_100066718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066718);
  }

  return result;
}

uint64_t sub_100018FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = sub_100042DF4();
  v8 = result;
  if (result)
  {
    result = sub_100042E24();
    if (__OFSUB__(a1, result))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = sub_100042E14();
  if (!v8)
  {
    goto LABEL_23;
  }

  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if ((v11 & 3) != 0)
  {
    sub_100018F7C();
    swift_allocError();
    *v12 = xmmword_100047130;
    *(v12 + 16) = 2;
    return swift_willThrow();
  }

  if (v11 < 4)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v13 = (v11 >> 2) - 1;
  v14 = 0x2000000000000000;
  while (1)
  {
    v16 = *v8++;
    v15 = v16;
    v17 = *a4;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v17;
    if ((result & 1) == 0)
    {
      result = sub_100019164(0, *(v17 + 16) + 1, 1, v17);
      v17 = result;
      *a4 = result;
    }

    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_100019164((v18 > 1), v19 + 1, 1, v17);
      v17 = result;
      *a4 = result;
    }

    *(v17 + 16) = v19 + 1;
    *(v17 + 4 * v19 + 32) = bswap32(v15);
    if (!v13)
    {
      return result;
    }

    --v13;
    if (!--v14)
    {
      __break(1u);
      goto LABEL_21;
    }
  }
}

char *sub_100019164(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100013A34(&qword_100066720, "ľ");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_100019268(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  v5 = sub_100019AC4;
  if (a1 == 0x363532616873 && a2 == 0xE600000000000000)
  {
    goto LABEL_8;
  }

  v6 = result;
  v7 = sub_1000437F4();
  v5 = sub_100019AC4;
  if (v7 & 1) != 0 || (v5 = sub_100019FC0, a1 == 0x323135616873) && a2 == 0xE600000000000000 || (v8 = sub_1000437F4(), v5 = sub_100019FC0, (v8))
  {
    result = v6;
LABEL_8:
    result[4] = v5;
    result[5] = 0;
    return result;
  }

  sub_100018F7C();
  swift_allocError();
  *v9 = xmmword_100047180;
  *(v9 + 16) = 2;
  swift_willThrow();

  swift_deallocPartialClassInstance();
  return v6;
}

Swift::Int sub_1000193E0()
{
  sub_1000438A4();
  sub_100043384();
  return sub_1000438C4();
}

Swift::Int sub_10001943C(uint64_t a1)
{
  sub_1000438A4();
  sub_100043384();
  return sub_1000438C4();
}

uint64_t sub_100019484@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10005E438;
  v7._object = v3;
  v5 = sub_100043714(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000194FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_10005E470;
  v8._object = a2;
  v6 = sub_100043714(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10001956C(uint64_t a1)
{
  v2 = sub_10001A614();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000195A8(uint64_t a1)
{
  v2 = sub_10001A614();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000195E4(void *a1)
{
  v2 = swift_allocObject();
  sub_100019634(a1);
  return v2;
}

void *sub_100019634(void *a1)
{
  v4 = sub_100013A34(&qword_100066728, &qword_1000471B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  sub_100013B38(a1, a1[3]);
  sub_10001A614();
  sub_1000438E4();
  if (!v2)
  {
    v8 = sub_100043744();
    v11 = v8;
    v12 = v9;
    v1[2] = v8;
    v1[3] = v9;
    v13 = sub_100019AC4;
    v14 = v8 == 0x363532616873 && v9 == 0xE600000000000000;
    if (v14 || (v15 = sub_1000437F4(), v13 = sub_100019AC4, (v15 & 1) != 0) || ((v13 = sub_100019FC0, v11 == 0x323135616873) ? (v16 = v12 == 0xE600000000000000) : (v16 = 0), v16 || (v17 = sub_1000437F4(), v13 = sub_100019FC0, (v17 & 1) != 0)))
    {
      v18 = v13;
      (*(v5 + 8))(v7, v4);
      v1[4] = v18;
      v1[5] = 0;
      goto LABEL_4;
    }

    sub_100018F7C();
    swift_allocError();
    *v19 = xmmword_100047180;
    *(v19 + 16) = 2;
    swift_willThrow();
    (*(v5 + 8))(v7, v4);
  }

  type metadata accessor for BloomFilterAlgorithm();
  swift_deallocPartialClassInstance();
LABEL_4:
  sub_100013B7C(a1);
  return v1;
}

uint64_t sub_1000198D4(void *a1)
{
  v2 = sub_100013A34(&qword_100066738, &qword_1000471B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100013B38(a1, a1[3]);
  sub_10001A614();
  sub_1000438F4();
  sub_1000437A4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100019A04()
{

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100019A44@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100019AC4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100043284();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100043264();
  v50 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001ABA8(&qword_100066740, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  sub_100043254();
  sub_100013104(a1, a2);
  sub_10001A6FC(a1, a2, v7);
  sub_10001316C(a1, a2);
  sub_100043244();
  (*(v5 + 8))(v7, v4);
  v54 = v8;
  v55 = sub_10001ABA8(&qword_100066748, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v11 = sub_10001A920(v53);
  v12 = v50;
  (*(v50 + 16))(v11, v10, v8);
  sub_100013B38(v53, v54);
  sub_100042E44();
  (*(v12 + 8))(v10, v8);
  v13 = v51;
  v14 = v52;
  sub_100013B7C(v53);
  sub_100013A34(&qword_100066750, &qword_1000471C0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100047190;
  v16 = sub_100019F54(0, 3, v13, v14);
  v18 = v17;
  v19 = sub_100016E38(v16, v17);
  sub_10001316C(v16, v18);
  *(v15 + 32) = v19;
  v20 = sub_100019F54(4, 7, v13, v14);
  v22 = v21;
  v23 = sub_100016E38(v20, v21);
  sub_10001316C(v20, v22);
  *(v15 + 40) = v23;
  v24 = sub_100019F54(8, 11, v13, v14);
  v26 = v25;
  v27 = sub_100016E38(v24, v25);
  sub_10001316C(v24, v26);
  *(v15 + 48) = v27;
  v28 = sub_100019F54(12, 15, v13, v14);
  v30 = v29;
  v31 = sub_100016E38(v28, v29);
  sub_10001316C(v28, v30);
  *(v15 + 56) = v31;
  v32 = sub_100019F54(16, 19, v13, v14);
  v34 = v33;
  v35 = sub_100016E38(v32, v33);
  sub_10001316C(v32, v34);
  *(v15 + 64) = v35;
  v36 = sub_100019F54(20, 23, v13, v14);
  v38 = v37;
  v39 = sub_100016E38(v36, v37);
  sub_10001316C(v36, v38);
  *(v15 + 72) = v39;
  v40 = sub_100019F54(24, 27, v13, v14);
  v42 = v41;
  v43 = sub_100016E38(v40, v41);
  sub_10001316C(v40, v42);
  *(v15 + 80) = v43;
  v44 = sub_100019F54(28, 31, v13, v14);
  v46 = v45;
  v47 = sub_100016E38(v44, v45);
  sub_10001316C(v44, v46);
  *(v15 + 88) = v47;
  sub_10001316C(v13, v14);
  return v15;
}

uint64_t sub_100019F54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a3 + 16);
      v6 = *(a3 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v5 = v4 == 0;
    if (v4)
    {
      v6 = a3 >> 32;
    }

    else
    {
      v6 = BYTE6(a4);
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = a3;
    }
  }

  if (v7 > a2)
  {
    __break(1u);
  }

  else if (v6 > a2)
  {
    if (a2 + 1 >= a1)
    {
      return Data._Representation.subscript.getter();
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return Data._Representation.subscript.getter();
}

uint64_t sub_100019FC0(uint64_t a1, unint64_t a2)
{
  v4 = sub_100043294();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100043274();
  v82 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001ABA8(&qword_100066758, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
  sub_100043254();
  sub_100013104(a1, a2);
  sub_10001A984(a1, a2, v7);
  sub_10001316C(a1, a2);
  sub_100043244();
  (*(v5 + 8))(v7, v4);
  v86 = v8;
  v87 = sub_10001ABA8(&qword_100066760, &type metadata accessor for SHA512Digest, &protocol conformance descriptor for SHA512Digest);
  v11 = sub_10001A920(v85);
  v12 = v82;
  (*(v82 + 16))(v11, v10, v8);
  sub_100013B38(v85, v86);
  sub_100042E44();
  (*(v12 + 8))(v10, v8);
  v13 = v83;
  v14 = v84;
  sub_100013B7C(v85);
  sub_100013A34(&qword_100066750, &qword_1000471C0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000471A0;
  v16 = sub_100019F54(0, 3, v13, v14);
  v18 = v17;
  v19 = sub_100016E38(v16, v17);
  sub_10001316C(v16, v18);
  *(v15 + 32) = v19;
  v20 = sub_100019F54(4, 7, v13, v14);
  v22 = v21;
  v23 = sub_100016E38(v20, v21);
  sub_10001316C(v20, v22);
  *(v15 + 40) = v23;
  v24 = sub_100019F54(8, 11, v13, v14);
  v26 = v25;
  v27 = sub_100016E38(v24, v25);
  sub_10001316C(v24, v26);
  *(v15 + 48) = v27;
  v28 = sub_100019F54(12, 15, v13, v14);
  v30 = v29;
  v31 = sub_100016E38(v28, v29);
  sub_10001316C(v28, v30);
  *(v15 + 56) = v31;
  v32 = sub_100019F54(16, 19, v13, v14);
  v34 = v33;
  v35 = sub_100016E38(v32, v33);
  sub_10001316C(v32, v34);
  *(v15 + 64) = v35;
  v36 = sub_100019F54(20, 23, v13, v14);
  v38 = v37;
  v39 = sub_100016E38(v36, v37);
  sub_10001316C(v36, v38);
  *(v15 + 72) = v39;
  v40 = sub_100019F54(24, 27, v13, v14);
  v42 = v41;
  v43 = sub_100016E38(v40, v41);
  sub_10001316C(v40, v42);
  *(v15 + 80) = v43;
  v44 = sub_100019F54(28, 31, v13, v14);
  v46 = v45;
  v47 = sub_100016E38(v44, v45);
  sub_10001316C(v44, v46);
  *(v15 + 88) = v47;
  v48 = sub_100019F54(32, 35, v13, v14);
  v50 = v49;
  v51 = sub_100016E38(v48, v49);
  sub_10001316C(v48, v50);
  *(v15 + 96) = v51;
  v52 = sub_100019F54(36, 39, v13, v14);
  v54 = v53;
  v55 = sub_100016E38(v52, v53);
  sub_10001316C(v52, v54);
  *(v15 + 104) = v55;
  v56 = sub_100019F54(40, 43, v13, v14);
  v58 = v57;
  v59 = sub_100016E38(v56, v57);
  sub_10001316C(v56, v58);
  *(v15 + 112) = v59;
  v60 = sub_100019F54(44, 47, v13, v14);
  v62 = v61;
  v63 = sub_100016E38(v60, v61);
  sub_10001316C(v60, v62);
  *(v15 + 120) = v63;
  v64 = sub_100019F54(48, 51, v13, v14);
  v66 = v65;
  v67 = sub_100016E38(v64, v65);
  sub_10001316C(v64, v66);
  *(v15 + 128) = v67;
  v68 = sub_100019F54(52, 55, v13, v14);
  v70 = v69;
  v71 = sub_100016E38(v68, v69);
  sub_10001316C(v68, v70);
  *(v15 + 136) = v71;
  v72 = sub_100019F54(56, 59, v13, v14);
  v74 = v73;
  v75 = sub_100016E38(v72, v73);
  sub_10001316C(v72, v74);
  *(v15 + 144) = v75;
  v76 = sub_100019F54(60, 63, v13, v14);
  v78 = v77;
  v79 = sub_100016E38(v76, v77);
  sub_10001316C(v76, v78);
  *(v15 + 152) = v79;
  sub_10001316C(v13, v14);
  return v15;
}

unint64_t sub_10001A614()
{
  result = qword_100066730;
  if (!qword_100066730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066730);
  }

  return result;
}

_BYTE *sub_10001A668@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1000131C0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10001AEC8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10001AF44(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_10001A6FC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_100043284();
      sub_10001ABA8(&qword_100066740, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return sub_100043234();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10001ADE8(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA256, &qword_100066740, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_10001ADE8(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA256, &qword_100066740, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  }

  sub_100043284();
  sub_10001ABA8(&qword_100066740, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return sub_100043234();
}

uint64_t *sub_10001A920(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10001A984(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_100043294();
      sub_10001ABA8(&qword_100066758, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
      return sub_100043234();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10001ADE8(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA512, &qword_100066758, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_10001ADE8(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA512, &qword_100066758, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
  }

  sub_100043294();
  sub_10001ABA8(&qword_100066758, &type metadata accessor for SHA512, &protocol conformance descriptor for SHA512);
  return sub_100043234();
}

uint64_t sub_10001ABA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001ABF4()
{
  result = qword_100066768;
  if (!qword_100066768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066768);
  }

  return result;
}

unint64_t sub_10001AC4C()
{
  result = qword_100066770;
  if (!qword_100066770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066770);
  }

  return result;
}

unint64_t sub_10001ACA4()
{
  result = qword_100066778;
  if (!qword_100066778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066778);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BloomFilterAlgorithm.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for BloomFilterAlgorithm.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_10001ADE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  result = sub_100042DF4();
  if (!result || (result = sub_100042E24(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_100042E14();
      a5(0);
      sub_10001ABA8(a6, a7, a8);
      return sub_100043234();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001AEC8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_100042E34();
  swift_allocObject();
  result = sub_100042DE4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100043054();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10001AF44(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_100042E34();
  swift_allocObject();
  result = sub_100042DE4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_10001B038()
{
  v1 = sub_1000432E4();
  [v0 deleteSetting:v1];
}

id sub_10001B0FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000432E4();
  v4 = [v2 readSetting:v3];

  if (v4)
  {
    sub_100043314();

    v4 = sub_100043044();
  }

  return v4;
}

void sub_10001B1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1000432E4();
  sub_1000430A4(0);
  v6 = sub_1000432E4();

  [v4 setSetting:v5 toValue:v6];
}

void sub_10001B250()
{
  v1 = sub_1000432E4();
  [v0 deleteSetting:v1];
}

uint64_t sub_10001B2D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000432E4();
  v4 = [v2 readSetting:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_100043314();

  return v5;
}

void sub_10001B370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1000432E4();
  v6 = sub_1000432E4();
  [v4 setSetting:v5 toValue:v6];
}

uint64_t sub_10001B3F4(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_10001B42C()
{
  v1 = *v0;
  sub_1000438A4();
  sub_1000438B4(v1);
  return sub_1000438C4();
}

Swift::Int sub_10001B4A0(uint64_t a1)
{
  v2 = *v1;
  sub_1000438A4();
  sub_1000438B4(v2);
  return sub_1000438C4();
}

void *sub_10001B4E4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

BOOL sub_10001B578(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10001B5A8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10001B5D4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_10001B6C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10001B6F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10001BFD8(a1);

  *a2 = v3;
  return result;
}

uint64_t type metadata accessor for LaunchWarningDetails(uint64_t a1)
{
  result = qword_100068660;
  if (!qword_100068660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001B77C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  v13 = type metadata accessor for LaunchWarningDetails(0);
  v14 = v13[6];
  v15 = sub_100043174();
  (*(*(v15 - 8) + 32))(a8 + v14, a4, v15);
  *(a8 + v13[7]) = a5 & 1;
  *(a8 + v13[8]) = a6;
  v16 = a8 + v13[9];

  return sub_10001B848(a7, v16);
}

uint64_t sub_10001B848(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013A34(&qword_100066838, &qword_1000473E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001B8BC()
{
  result = qword_100066840;
  if (!qword_100066840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066840);
  }

  return result;
}

unint64_t sub_10001B914()
{
  result = qword_100066848;
  if (!qword_100066848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066848);
  }

  return result;
}

unint64_t sub_10001B96C()
{
  result = qword_100067130;
  if (!qword_100067130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100067130);
  }

  return result;
}

unint64_t sub_10001B9C4()
{
  result = qword_100066850;
  if (!qword_100066850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066850);
  }

  return result;
}

unint64_t sub_10001BA1C()
{
  result = qword_100066858;
  if (!qword_100066858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066858);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchWarningReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LaunchWarningReason(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10001BC04(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100043174();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 254)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_100013A34(&qword_100066838, &qword_1000473E0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[9];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_10001BD44(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100043174();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 254)
  {
    *(a1 + a4[7]) = a2 + 1;
  }

  else
  {
    v13 = sub_100013A34(&qword_100066838, &qword_1000473E0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_10001BE74(uint64_t a1)
{
  type metadata accessor for SecCSDigestAlgorithm();
  if (v1 <= 0x3F)
  {
    sub_100043174();
    if (v2 <= 0x3F)
    {
      sub_10001BF80(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for SecCSDigestAlgorithm()
{
  if (!qword_1000668F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000668F8);
    }
  }
}

void sub_10001BF80(uint64_t a1)
{
  if (!qword_1000668B8)
  {
    sub_100043004();
    v1 = sub_1000435A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1000668B8);
    }
  }
}

uint64_t sub_10001BFD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10001C014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 == 1634564716 && a2 == 0xE400000000000000;
  if (v4 || (sub_1000437F4() & 1) != 0)
  {
    v7 = &enum case for Algorithm.lzma(_:);
LABEL_7:
    v8 = *v7;
    v9 = sub_1000431B4();
    v16 = *(v9 - 8);
    (*(v16 + 104))(a3, v8, v9);
    v10 = *(v16 + 56);
    v11 = a3;
    v12 = 0;
    v13 = v9;
    goto LABEL_8;
  }

  if (a1 == 1651076218 && a2 == 0xE400000000000000 || (sub_1000437F4() & 1) != 0)
  {
    v7 = &enum case for Algorithm.zlib(_:);
    goto LABEL_7;
  }

  v15 = sub_1000431B4();
  v10 = *(*(v15 - 8) + 56);
  v13 = v15;
  v11 = a3;
  v12 = 1;
LABEL_8:

  return v10(v11, v12, 1, v13);
}

void sub_10001C1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v48 = a2;
  v50 = a1;
  v46 = sub_1000431B4();
  v49 = *(v46 - 8);
  __chkstk_darwin(v46);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000431A4();
  v47 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100043004();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  v15 = sub_10001C6AC();
  v16 = *(v9 + 16);
  v16(v14, v50, v8);
  v17 = v53;
  v18 = sub_10001C6F8(v14, &selRef_fileHandleForReadingFromURL_error_);
  if (!v17)
  {
    v41 = v16;
    v42 = v15;
    v43 = v12;
    v44 = v18;
    v50 = v5;
    v19 = v46;
    v39 = v7;
    v40 = v4;
    v53 = 0;
    v20 = objc_opt_self();
    v21 = [v20 defaultManager];
    v22 = v48;
    sub_100042FC4();
    v23 = sub_1000432E4();

    v24 = [v21 fileExistsAtPath:v23];

    if ((v24 & 1) == 0)
    {
      v25 = [v20 defaultManager];
      sub_100042FC4();
      v26 = sub_1000432E4();

      [v25 createFileAtPath:v26 contents:0 attributes:0];
    }

    v27 = v43;
    v41(v43, v22, v8);
    v28 = v53;
    v29 = sub_10001C6F8(v27, &selRef_fileHandleForWritingToURL_error_);
    v30 = v49;
    if (v28)
    {
    }

    else
    {
      v31 = v29;
      (*(v47 + 104))(v39, enum case for FilterOperation.decompress(_:), v50);
      (*(v30 + 16))(v40, v45, v19);
      v32 = swift_allocObject();
      v33 = v44;
      *(v32 + 16) = v44;
      sub_100013A34(&qword_100066908, &qword_1000476A8);
      swift_allocObject();
      v34 = v33;
      sub_100043194();
      v35 = sub_100043184();
      for (i = v36; i >> 60 != 15; i = v38)
      {
        v51 = v35;
        v52 = i;
        sub_10001C8B8();
        sub_100043484();
        sub_100013158(v35, i);
        v35 = sub_100043184();
      }
    }
  }
}

unint64_t sub_10001C6AC()
{
  result = qword_100066900;
  if (!qword_100066900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100066900);
  }

  return result;
}

id sub_10001C6F8(uint64_t a1, SEL *a2)
{
  sub_100042F84(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [swift_getObjCClassFromMetadata() *a2];

  v7 = v14;
  if (v6)
  {
    v8 = sub_100043004();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_100042F44();

    swift_willThrow();
    v12 = sub_100043004();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_10001C850()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C888@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100043474();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

unint64_t sub_10001C8B8()
{
  result = qword_100066910;
  if (!qword_100066910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066910);
  }

  return result;
}

uint64_t sub_10001C90C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v27 = sub_1000431B4();
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000431A4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_allocObject();
  *(result + 16) = 0;
  v30 = a2;
  v15 = a2 >> 62;
  v28 = v3;
  if ((a2 >> 62) > 1)
  {
    v16 = result;
    v17 = 0;
    if (v15 != 2)
    {
      goto LABEL_10;
    }

    v19 = *(a1 + 16);
    v18 = *(a1 + 24);
    v17 = v18 - v19;
    if (!__OFSUB__(v18, v19))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v16 = result;
    v17 = BYTE6(v30);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    return result;
  }

  v16 = result;
  v17 = HIDWORD(a1) - a1;
LABEL_10:
  (*(v11 + 104))(v13, enum case for FilterOperation.decompress(_:), v10);
  (*(v7 + 16))(v9, a3, v27);
  v20 = swift_allocObject();
  v20[2] = v17;
  v20[3] = v16;
  v21 = v30;
  v20[4] = a1;
  v20[5] = v21;
  sub_100013A34(&qword_100066908, &qword_1000476A8);
  swift_allocObject();

  sub_100013104(a1, v21);
  v22 = v28;
  sub_100043194();
  if (v22)
  {
  }

  v29 = xmmword_100046EE0;
  v23 = sub_100043184();
  while (v24 >> 60 != 15)
  {
    v25 = v23;
    v26 = v24;
    sub_1000430D4();
    sub_100013158(v25, v26);
    v23 = sub_100043184();
  }

  return v29;
}

uint64_t sub_10001CC60()
{

  sub_10001316C(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001CCA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  swift_beginAccess();
  result = *(v5 + 16);
  if (__OFSUB__(v6, result))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v6 - result >= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = v6 - result;
  }

  if (__OFADD__(result, v8))
  {
    goto LABEL_10;
  }

  if (result + v8 < result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = sub_1000430E4();
  v11 = v10;
  result = swift_beginAccess();
  v12 = *(v5 + 16);
  v13 = __OFADD__(v12, v8);
  v14 = v12 + v8;
  if (!v13)
  {
    *(v5 + 16) = v14;
    *a2 = v9;
    a2[1] = v11;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10001CD78(void *a1)
{
  v2 = sub_100043004();
  v131 = *(v2 - 8);
  v132 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v122 - v7;
  v9 = __chkstk_darwin(v6);
  v129 = &v122 - v10;
  v11 = __chkstk_darwin(v9);
  v126 = &v122 - v12;
  __chkstk_darwin(v11);
  v124 = &v122 - v13;
  v14 = sub_1000431E4();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v122 - v20;
  v22 = __chkstk_darwin(v19);
  v128 = (&v122 - v23);
  v24 = __chkstk_darwin(v22);
  v127 = &v122 - v25;
  __chkstk_darwin(v24);
  v125 = &v122 - v26;
  staticCode = 0;
  v130 = a1;
  sub_100042F84((&v122 - v26));
  v28 = v27;
  v29 = SecStaticCodeCreateWithPath(v27, 0, &staticCode);

  if (v29 || !staticCode)
  {
    v35 = sub_1000212A8();
    v36 = v15;
    v37 = *(v15 + 16);
    v129 = v14;
    v37(v18, v35, v14);
    v38 = v131;
    v39 = v132;
    (*(v131 + 16))(v5, v130, v132);
    v40 = sub_1000431C4();
    v41 = sub_1000434A4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      *&v136 = v128;
      *v42 = 67109378;
      *(v42 + 4) = v29;
      *(v42 + 8) = 2082;
      v43 = sub_100042FC4();
      v130 = v36;
      v45 = v44;
      (*(v38 + 8))(v5, v132);
      v46 = sub_100015730(v43, v45, &v136);

      *(v42 + 10) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "Unable to create code object (%d) for: %{public}s", v42, 0x12u);
      sub_100013B7C(v128);

      (v130[1])(v18, v129);
    }

    else
    {

      (*(v38 + 8))(v5, v39);
      (*(v36 + 8))(v18, v129);
    }

    sub_10001DB34();
    swift_allocError();
    *v47 = v29;
    *(v47 + 4) = 0;
    swift_willThrow();
    goto LABEL_42;
  }

  information = 0;
  v123 = staticCode;
  v30 = SecCodeCopySigningInformation(v123, 0x21u, &information);
  if (v30 || (v31 = information) == 0)
  {
    v48 = v30;
    v49 = sub_1000212A8();
    v50 = v15;
    v51 = *(v15 + 16);
    v52 = v14;
    v51(v21, v49, v14);
    v53 = v131;
    v54 = v132;
    (*(v131 + 16))(v8, v130, v132);
    v40 = sub_1000431C4();
    v55 = sub_1000434A4();
    if (os_log_type_enabled(v40, v55))
    {
      v56 = swift_slowAlloc();
      v129 = v52;
      v57 = v56;
      v130 = swift_slowAlloc();
      *&v136 = v130;
      *v57 = 67109378;
      v128 = v40;
      v58 = v48;
      *(v57 + 4) = v48;
      *(v57 + 8) = 2082;
      LODWORD(v127) = v55;
      v59 = sub_100042FC4();
      v61 = v60;
      (*(v53 + 8))(v8, v54);
      v62 = sub_100015730(v59, v61, &v136);
      v48 = v58;

      *(v57 + 10) = v62;
      v40 = v128;
      _os_log_impl(&_mh_execute_header, v128, v127, "Unable to create signing info (%d) for: %{public}s", v57, 0x12u);
      sub_100013B7C(v130);

      (*(v50 + 8))(v21, v129);
    }

    else
    {

      (*(v53 + 8))(v8, v54);
      (*(v50 + 8))(v21, v52);
    }

    sub_10001DB34();
    swift_allocError();
    *v63 = v48;
    *(v63 + 4) = 0;
    swift_willThrow();
    goto LABEL_41;
  }

  *&v134 = kSecCodeInfoCdHashesFull;
  v32 = kSecCodeInfoCdHashesFull;
  v33 = v31;
  sub_100013A34(&qword_100066920, &qword_1000476B0);
  v34 = [(__CFDictionary *)v33 __swift_objectForKeyedSubscript:sub_100043804()];
  swift_unknownObjectRelease();
  if (v34)
  {
    sub_1000435C4();
    swift_unknownObjectRelease();
  }

  else
  {
    v134 = 0u;
    v135 = 0u;
  }

  v64 = v15;
  v65 = v132;
  v66 = v129;
  v136 = v134;
  v137 = v135;
  v67 = v14;
  if (!*(&v135 + 1))
  {
    sub_10001DB88(&v136);
LABEL_22:
    v69 = sub_1000212A8();
    v70 = v128;
    (*(v64 + 16))(v128, v69, v14);
    v71 = v64;
    v72 = v131;
    (*(v131 + 16))(v66, v130, v65);
    v73 = v66;
    v74 = sub_1000431C4();
    v75 = sub_1000434A4();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v122 = v33;
      v78 = v77;
      *&v136 = v77;
      *v76 = 136446210;
      v79 = sub_100042FC4();
      v80 = v65;
      v81 = v79;
      v129 = v67;
      v83 = v82;
      (*(v72 + 8))(v73, v80);
      v84 = sub_100015730(v81, v83, &v136);

      *(v76 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v74, v75, "Unable to get full cdhash information for: %{public}s", v76, 0xCu);
      sub_100013B7C(v78);
      v33 = v122;

      v85 = *(v71 + 8);
      v40 = v71 + 8;
      v85(v128, v129);
    }

    else
    {

      (*(v72 + 8))(v73, v65);
      v86 = *(v71 + 8);
      v40 = v71 + 8;
      v86(v70, v67);
    }

    sub_10001DB34();
    swift_allocError();
    *v87 = 0;
    *(v87 + 4) = 1;
    swift_willThrow();

    goto LABEL_41;
  }

  sub_100013A34(&qword_100066930, &qword_1000476C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v65 = v132;
    v66 = v129;
    goto LABEL_22;
  }

  v68 = v133;
  if ([(__CFDictionary *)v33 __swift_objectForKeyedSubscript:kSecCodeInfoDigestAlgorithm])
  {
    sub_1000435C4();
    swift_unknownObjectRelease();
  }

  else
  {
    v134 = 0u;
    v135 = 0u;
  }

  v136 = v134;
  v137 = v135;
  v122 = v33;
  if (!*(&v135 + 1))
  {

    sub_10001DB88(&v136);
    goto LABEL_34;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_34:
    v91 = sub_1000212A8();
    v92 = v127;
    (*(v64 + 16))(v127, v91, v14);
    v93 = v131;
    v94 = v126;
    v95 = v132;
    (*(v131 + 16))(v126, v130, v132);
    v96 = sub_1000431C4();
    v97 = sub_1000434A4();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = v94;
      v130 = v64;
      v100 = v95;
      v101 = v98;
      v102 = swift_slowAlloc();
      *&v136 = v102;
      *v101 = 136446210;
      v103 = sub_100042FC4();
      v104 = v93;
      v106 = v105;
      (*(v104 + 8))(v99, v100);
      v107 = sub_100015730(v103, v106, &v136);

      *(v101 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v96, v97, "Unable to get best cdhash digest algorithm: %{public}s", v101, 0xCu);
      sub_100013B7C(v102);

      (v130[1])(v127, v67);
LABEL_40:
      sub_10001DB34();
      swift_allocError();
      *v120 = 0;
      *(v120 + 4) = 1;
      swift_willThrow();
      v40 = v122;

LABEL_41:
LABEL_42:

      return v40;
    }

LABEL_39:

    (*(v93 + 8))(v94, v95);
    (*(v64 + 8))(v92, v67);
    goto LABEL_40;
  }

  if (!*(v68 + 16) || (v40 = v133, v88 = sub_10001DBF0(v133), (v89 & 1) == 0))
  {

    v108 = sub_1000212A8();
    v92 = v125;
    (*(v64 + 16))(v125, v108, v67);
    v93 = v131;
    v94 = v124;
    v95 = v132;
    (*(v131 + 16))(v124, v130, v132);
    v96 = sub_1000431C4();
    v109 = sub_1000434A4();
    if (os_log_type_enabled(v96, v109))
    {
      v110 = swift_slowAlloc();
      v111 = v94;
      v130 = v64;
      v112 = v95;
      v113 = v110;
      v114 = swift_slowAlloc();
      *&v136 = v114;
      *v113 = 136446210;
      v115 = sub_100042FC4();
      v116 = v93;
      v118 = v117;
      (*(v116 + 8))(v111, v112);
      v119 = sub_100015730(v115, v118, &v136);

      *(v113 + 4) = v119;
      _os_log_impl(&_mh_execute_header, v96, v109, "Unable to get best cdhash data: %{public}s", v113, 0xCu);
      sub_100013B7C(v114);

      (v130[1])(v125, v67);
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v90 = v88;

  sub_100013104(*(*(v68 + 56) + 16 * v90), *(*(v68 + 56) + 16 * v90 + 8));

  return v40;
}

unint64_t sub_10001DB34()
{
  result = qword_100066918;
  if (!qword_100066918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066918);
  }

  return result;
}

uint64_t sub_10001DB88(uint64_t a1)
{
  v2 = sub_100013A34(&qword_100066928, &qword_1000476B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001DBF0(uint64_t a1)
{
  v1 = a1;
  v2 = sub_100043894();

  return sub_10001DE28(v1, v2);
}

uint64_t initializeBufferWithCopyOfBuffer for CodeSignatureError(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CodeSignatureError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CodeSignatureError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_10001DC98(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001DCB4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_10001DCE4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_10001DD00(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001DD14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10001DD68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_10001DDDC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_10001DE28(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_10001DE9C()
{
  if (*v0)
  {
    return 0x64696C61766E69;
  }

  else
  {
    return 0x64696C6176;
  }
}

uint64_t sub_10001DED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64696C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_1000437F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64696C61766E69 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000437F4();

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

uint64_t sub_10001DFB8(uint64_t a1)
{
  v2 = sub_10001E418();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001DFF4(uint64_t a1)
{
  v2 = sub_10001E418();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E03C(uint64_t a1)
{
  v2 = sub_10001E46C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E078(uint64_t a1)
{
  v2 = sub_10001E46C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E0B4@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_10001E0E4(uint64_t a1)
{
  v2 = sub_10001E4C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E120(uint64_t a1)
{
  v2 = sub_10001E4C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E15C(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_100013A34(&qword_100066940, &qword_1000477E0);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_100013A34(&qword_100066948, &qword_1000477E8);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_100013A34(&qword_100066950, &unk_1000477F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_100013B38(a1, a1[3]);
  sub_10001E418();
  sub_1000438F4();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_10001E46C();
    sub_100043794();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_10001E4C0();
    sub_100043794();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_10001E418()
{
  result = qword_1000686F8;
  if (!qword_1000686F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000686F8);
  }

  return result;
}

unint64_t sub_10001E46C()
{
  result = qword_100068700;
  if (!qword_100068700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068700);
  }

  return result;
}

unint64_t sub_10001E4C0()
{
  result = qword_100068708[0];
  if (!qword_100068708[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100068708);
  }

  return result;
}

uint64_t sub_10001E514@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10001ED48(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

void sub_10001E560()
{
  v0 = sub_1000432E4();
  v1 = sub_1000432E4();
  v2 = sub_1000432E4();
  ApplePinned = SecPolicyCreateApplePinned();

  if (ApplePinned)
  {
    qword_10006A9A0 = ApplePinned;
  }

  else
  {
    sub_1000436A4();
    __break(1u);
  }
}

uint64_t sub_10001E668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1000431E4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v56 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v55 - v9;
  __chkstk_darwin(v8);
  v12 = &v55 - v11;
  v13 = [objc_allocWithZone(MSDecodeOptions) init];
  v14 = objc_opt_self();
  isa = sub_100043094().super.isa;
  v58 = 0;
  v57 = v13;
  v16 = [v14 decodeMessageSecurityObject:isa options:v13 error:&v58];

  if (v16)
  {
    v17 = v58;
    v18 = v5;
    if ([v16 embeddedContent])
    {
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v20 = v19;
        v21 = sub_100043094().super.isa;
        [v20 setDataContent:v21];

        v22 = [v20 signers];
        sub_10001F184();
        v23 = sub_100043404();

        if (v23 >> 62)
        {
          v50 = sub_1000436B4();

          if (v50)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (v24)
          {
LABEL_6:
            sub_100013A34(&qword_100066960, qword_100047800);
            v25 = swift_allocObject();
            *(v25 + 16) = xmmword_100046DE0;
            if (qword_1000686F0 != -1)
            {
              swift_once();
            }

            v26 = qword_10006A9A0;
            type metadata accessor for SecPolicy();
            *(v25 + 56) = v27;
            *(v25 + 32) = v26;
            v28 = v26;
            v29 = sub_1000433F4().super.isa;

            v58 = 0;
            v30 = [v20 verifySignaturesAndSignersWithPolicies:v29 verifyTime:0 error:&v58];

            if (v30)
            {
              v31 = v58;

              swift_unknownObjectRelease();
              return 0;
            }

            v49 = v58;
            sub_100042F44();

            swift_willThrow();
            swift_unknownObjectRelease();
            goto LABEL_11;
          }
        }

        v51 = sub_1000211D4();
        (*(v5 + 16))(v12, v51, v4);
        v52 = sub_1000431C4();
        v53 = sub_1000434A4();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "CMS signers is empty", v54, 2u);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        (*(v18 + 8))(v12, v4);
        return 1;
      }

      swift_unknownObjectRelease();
    }

    v41 = sub_1000211D4();
    (*(v5 + 16))(v10, v41, v4);
    v42 = v16;
    v43 = sub_1000431C4();
    v44 = sub_1000434A4();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138543362;
      *(v45 + 4) = v42;
      *v46 = v16;
      v47 = v42;
      _os_log_impl(&_mh_execute_header, v43, v44, "Not MSCMSSignedData: %{public}@", v45, 0xCu);
      sub_100015C64(v46);

      v48 = v57;
    }

    else
    {
      v48 = v43;
      v43 = v57;
    }

    (*(v18 + 8))(v10, v4);
    return 1;
  }

  v33 = v58;
  sub_100042F44();

  swift_willThrow();
  v18 = v5;
LABEL_11:

  v34 = sub_1000211D4();
  v35 = v56;
  (*(v18 + 16))(v56, v34, v4);
  swift_errorRetain();
  v36 = sub_1000431C4();
  v37 = sub_1000434A4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138543362;
    swift_errorRetain();
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 4) = v40;
    *v39 = v40;
    _os_log_impl(&_mh_execute_header, v36, v37, "Signature validation error: %{public}@", v38, 0xCu);
    sub_100015C64(v39);
  }

  else
  {
  }

  (*(v18 + 8))(v35, v4);
  return 1;
}

uint64_t sub_10001ED48(void *a1)
{
  v24 = sub_100013A34(&qword_100066A18, &qword_100047BB0);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = v20 - v2;
  v4 = sub_100013A34(&qword_100066A20, &qword_100047BB8);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_100013A34(&qword_100066A28, &qword_100047BC0);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  sub_100013B38(a1, a1[3]);
  sub_10001E418();
  v10 = v26;
  sub_1000438E4();
  if (v10)
  {
    return sub_100013B7C(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = sub_100043784();
  if (*(v14 + 16) != 1)
  {
    v16 = sub_100043644();
    swift_allocError();
    v18 = v17;
    sub_100013A34(&qword_100066A30, &qword_100047BC8);
    *v18 = &type metadata for SignatureStatus;
    sub_100043734();
    sub_100043634();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_100013B7C(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_10001E46C();
    sub_100043724();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_10001E4C0();
    sub_100043724();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_100013B7C(v26);
  return v27;
}

unint64_t sub_10001F184()
{
  result = qword_100066958;
  if (!qword_100066958)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100066958);
  }

  return result;
}

void type metadata accessor for SecPolicy()
{
  if (!qword_100066A10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100066A10);
    }
  }
}

unint64_t sub_10001F224()
{
  result = qword_100066968;
  if (!qword_100066968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066968);
  }

  return result;
}

unint64_t sub_10001F2E8()
{
  result = qword_100068C90[0];
  if (!qword_100068C90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100068C90);
  }

  return result;
}

unint64_t sub_10001F340()
{
  result = qword_100068DA0;
  if (!qword_100068DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068DA0);
  }

  return result;
}

unint64_t sub_10001F398()
{
  result = qword_100068DA8[0];
  if (!qword_100068DA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100068DA8);
  }

  return result;
}

unint64_t sub_10001F3F0()
{
  result = qword_100068E30;
  if (!qword_100068E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068E30);
  }

  return result;
}

unint64_t sub_10001F448()
{
  result = qword_100068E38[0];
  if (!qword_100068E38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100068E38);
  }

  return result;
}

unint64_t sub_10001F4A0()
{
  result = qword_100068EC0;
  if (!qword_100068EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068EC0);
  }

  return result;
}

unint64_t sub_10001F4F8()
{
  result = qword_100068EC8[0];
  if (!qword_100068EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100068EC8);
  }

  return result;
}

uint64_t sub_10001F578(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1702521203;
  }

  else
  {
    v3 = 7107189;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1702521203;
  }

  else
  {
    v5 = 7107189;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000437F4();
  }

  return v8 & 1;
}

Swift::Int sub_10001F610()
{
  sub_1000438A4();
  sub_100043384();

  return sub_1000438C4();
}

uint64_t sub_10001F684(uint64_t a1)
{
  sub_100043384();
}

Swift::Int sub_10001F6E4(uint64_t a1)
{
  sub_1000438A4();
  sub_100043384();

  return sub_1000438C4();
}

uint64_t sub_10001F754@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10005E978;
  v8._object = v3;
  v5 = sub_100043714(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10001F7B4(uint64_t *a1@<X8>)
{
  v2 = 7107189;
  if (*v1)
  {
    v2 = 1702521203;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10001F7E4()
{
  if (*v0)
  {
    return 1702521203;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_10001F810@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_10005E978;
  v9._object = a2;
  v6 = sub_100043714(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10001F874(uint64_t a1)
{
  v2 = sub_100020F08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001F8B0(uint64_t a1)
{
  v2 = sub_100020F08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001F8EC(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  sub_10001F944(a1, a2);
  return v4;
}

uint64_t sub_10001F944(uint64_t a1, unint64_t a2)
{
  v40 = sub_100043004();
  v5 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 defaultManager];
  sub_100042FC4();
  v9 = sub_1000432E4();

  v10 = [v8 fileExistsAtPath:v9];

  v37 = a2;
  if ((v10 & 1) == 0)
  {
    v42 = sub_100018A0C(a2 >> 3);
    v43 = v21;
    sub_100020BAC(&v42, 0);
    v23 = v42;
    v22 = v43;
    v24 = [v7 defaultManager];
    sub_100042FC4();
    v25 = sub_1000432E4();

    isa = sub_100043094().super.isa;
    [v24 createFileAtPath:v25 contents:isa attributes:0];

    sub_10001316C(v23, v22);
    v20 = v39;
    v17 = v40;
    goto LABEL_12;
  }

  v11 = [v7 defaultManager];
  sub_100042FC4();
  v12 = sub_1000432E4();

  v42 = 0;
  v13 = [v11 attributesOfItemAtPath:v12 error:&v42];

  v14 = v42;
  if (!v13)
  {
    v34 = v42;
    sub_100042F44();

    swift_willThrow();
    (*(v5 + 8))(a1, v40);
    v20 = v39;
    goto LABEL_17;
  }

  type metadata accessor for FileAttributeKey();
  sub_100021128(&qword_1000666C0, type metadata accessor for FileAttributeKey, &unk_1000470C8);
  v15 = sub_1000432B4();
  v16 = v14;

  v17 = v40;
  if (*(v15 + 16) && (v18 = sub_100018488(NSFileSize), (v19 & 1) != 0))
  {
    sub_10001607C(*(v15 + 56) + 32 * v18, &v42);

    if (swift_dynamicCast())
    {
      v20 = v39;
      if (v41 >> 61)
      {
        __break(1u);
      }

      if (v37 != 8 * v41)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  v20 = v39;
  if (v37)
  {
LABEL_16:
    sub_100018F7C();
    swift_allocError();
    *v35 = 0;
    *(v35 + 8) = 0;
    *(v35 + 16) = 2;
    swift_willThrow();
    (*(v5 + 8))(a1, v17);
    goto LABEL_17;
  }

LABEL_12:
  v27 = a1;
  v28 = v5;
  v29 = *(v5 + 16);
  v40 = OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_url;
  v29(v20 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_url, v27, v17);
  sub_10001C6AC();
  v30 = v38;
  v29(v38, v27, v17);
  v31 = sub_10001FE78(v30);
  if (v2)
  {
    v32 = *(v28 + 8);
    v32(v27, v17);
    v32(v20 + v40, v17);
LABEL_17:
    type metadata accessor for BloomFilterDiskStorage(0);
    swift_deallocPartialClassInstance();
    return v20;
  }

  v33 = v31;
  (*(v28 + 8))(v27, v17);
  *(v20 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_fh) = v33;
  *(v20 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_size) = v37;
  return v20;
}

id sub_10001FE78(uint64_t a1)
{
  sub_100042F84(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForUpdatingURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = sub_100043004();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    sub_100042F44();

    swift_willThrow();
    v10 = sub_100043004();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

uint64_t sub_10001FFD0(void *a1)
{
  v2 = swift_allocObject();
  sub_100020020(a1);
  return v2;
}

uint64_t sub_100020020(void *a1)
{
  v3 = sub_100043004();
  v24 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v25 = v21 - v7;
  v8 = sub_100013A34(&qword_100066A38, &qword_100047BE0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v12 = a1[3];
  v27 = a1;
  sub_100013B38(a1, v12);
  sub_100020F08();
  sub_1000438E4();
  if (v1)
  {
    v13 = v26;
    type metadata accessor for BloomFilterDiskStorage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v22 = v6;
    v23 = v9;
    v14 = v24;
    v29 = 0;
    sub_100021128(&qword_100066A48, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v15 = v25;
    sub_100043764();
    v16 = OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_url;
    v13 = v26;
    (*(v14 + 32))(v26 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_url, v15, v3);
    v28 = 1;
    v17 = sub_100043774();
    v21[1] = v16;
    *(v13 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_size) = v17;
    sub_10001C6AC();
    v18 = v22;
    (*(v14 + 16))(v22, v13 + v16, v3);
    v20 = sub_10001FE78(v18);
    (*(v23 + 8))(v11, v8);
    *(v13 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_fh) = v20;
  }

  sub_100013B7C(v27);
  return v13;
}

uint64_t sub_1000203D0(void *a1)
{
  v3 = sub_100013A34(&qword_100066A50, &qword_100047BE8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100013B38(a1, a1[3]);
  sub_100020F08();
  sub_1000438F4();
  v8[15] = 0;
  sub_100043004();
  sub_100021128(&qword_100066A58, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  sub_1000437C4();
  if (!v1)
  {
    v8[14] = 1;
    sub_1000437D4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000205A8(unint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_size) <= a1)
  {
    sub_100018F7C();
    swift_allocError();
    *v10 = a1;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
LABEL_8:
    swift_willThrow();
    return v8 & 1;
  }

  v4 = *(v1 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_fh);
  v17 = 0;
  if (![v4 seekToOffset:a1 >> 3 error:&v17])
  {
    v11 = v17;
    sub_100042F44();

    goto LABEL_8;
  }

  v5 = v17;
  v6 = sub_100043474();
  if (!v2)
  {
    if (v7 >> 60 != 15)
    {
      v13 = ~a1 & 7;
      v14 = v6;
      v15 = v7;
      v16 = sub_100016E38(v6, v7);
      sub_100013158(v14, v15);
      v8 = (v16 >> v13) & 1;
      return v8 & 1;
    }

    sub_100018F7C();
    swift_allocError();
    *v9 = xmmword_100047BD0;
    *(v9 + 16) = 0;
    goto LABEL_8;
  }

  return v8 & 1;
}

void sub_10002073C(unint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_size) <= a1)
  {
    sub_100018F7C();
    swift_allocError();
    *v10 = a1;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
    goto LABEL_8;
  }

  v4 = a1 >> 3;
  v5 = *(v1 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_fh);
  __src = 0;
  if (![v5 seekToOffset:a1 >> 3 error:&__src])
  {
    v11 = __src;
    sub_100042F44();

    goto LABEL_8;
  }

  v6 = __src;
  v7 = sub_100043474();
  if (v2)
  {
    return;
  }

  if (v8 >> 60 == 15)
  {
    sub_100018F7C();
    swift_allocError();
    *v9 = xmmword_100047BD0;
    *(v9 + 16) = 0;
LABEL_8:
    swift_willThrow();
    return;
  }

  v12 = ~a1 & 7;
  v13 = v7;
  v14 = v8;
  v21 = 0;
  __src = (sub_100016E38(v7, v8) | (1 << v12));
  if ([v5 seekToOffset:v4 error:&v21])
  {
    v15 = v21;
    v16 = sub_1000131C0(&__src, &__src + 1);
    v18 = v17;
    isa = sub_100043094().super.isa;
    sub_10001316C(v16, v18 & 0xFFFFFFFFFFFFFFLL);
    [v5 writeData:isa];
    sub_100013158(v13, v14);
  }

  else
  {
    v20 = v21;
    sub_100042F44();

    swift_willThrow();
    sub_100013158(v13, v14);
  }
}

id sub_100020970()
{
  v0 = [objc_opt_self() defaultManager];
  sub_100042F84(OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_url);
  v2 = v1;
  sub_100042F84(v3);
  v5 = v4;
  v9 = 0;
  v6 = [v0 copyItemAtURL:v2 toURL:v4 error:&v9];

  if (v6)
  {
    return v9;
  }

  v8 = v9;
  sub_100042F44();

  return swift_willThrow();
}

uint64_t sub_100020A80()
{
  v1 = OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_url;
  v2 = sub_100043004();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100020B2C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_100020BAC(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_10001316C(v5, v4);
      __b = v5;
      v22 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *result = xmmword_100046EE0;
      sub_10001316C(0, 0xC000000000000000);
      sub_100020E14(&__b, v2);
      v7 = __b;
      v8 = v22 | 0x4000000000000000;
    }

    else
    {
      __c = a2;
      sub_10001316C(v5, v4);
      __b = v5;
      LOWORD(v22) = v4;
      BYTE2(v22) = BYTE2(v4);
      BYTE3(v22) = BYTE3(v4);
      BYTE4(v22) = BYTE4(v4);
      BYTE5(v22) = BYTE5(v4);
      BYTE6(v22) = BYTE6(v4);
      memset(&__b, __c, BYTE6(v4));
      v7 = __b;
      v8 = v22 | ((WORD2(v22) | (BYTE6(v22) << 16)) << 32);
    }

    *result = v7;
    result[1] = v8;
    return;
  }

  if (v6 != 2)
  {
    return;
  }

  sub_10001316C(v5, v4);
  __b = v5;
  v22 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *result = xmmword_100046EE0;
  sub_10001316C(0, 0xC000000000000000);
  sub_100043014();
  v9 = v22;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  v12 = sub_100042DF4();
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = sub_100042E24();
  v15 = v10 - v14;
  if (__OFSUB__(v10, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v16 = __OFSUB__(v11, v10);
  v17 = v11 - v10;
  if (v16)
  {
    goto LABEL_16;
  }

  v18 = sub_100042E14();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  memset((v13 + v15), v2, v19);
  *result = __b;
  result[1] = v9 | 0x8000000000000000;
}

void sub_100020E14(int *a1, int a2)
{
  sub_100043034();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = sub_100042DF4();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = sub_100042E24();
  v9 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v5 - v4;
  v11 = sub_100042E14();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v7 + v9), a2, v12);
}

uint64_t type metadata accessor for BloomFilterDiskStorage(uint64_t a1)
{
  result = qword_100069350;
  if (!qword_100069350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100020F08()
{
  result = qword_100066A40;
  if (!qword_100066A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066A40);
  }

  return result;
}

unint64_t sub_100020F60()
{
  result = qword_100066A60;
  if (!qword_100066A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066A60);
  }

  return result;
}

unint64_t sub_100020FB8()
{
  result = qword_100066A68;
  if (!qword_100066A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066A68);
  }

  return result;
}

unint64_t sub_100021010()
{
  result = qword_100066A70;
  if (!qword_100066A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066A70);
  }

  return result;
}

uint64_t sub_10002106C(uint64_t a1)
{
  result = sub_100043004();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100021128(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100021224(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1000431E4();
  sub_1000168B0(v5, a2);
  sub_1000161D0(v5, a2);
  return sub_1000431D4();
}

uint64_t sub_1000212CC(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_1000431E4();

  return sub_1000161D0(v4, a2);
}

Swift::String __swiftcall MISError.hexString()()
{
  sub_10002138C();
  v3._countAndFlagsBits = sub_1000433D4();
  sub_100043394(v3);

  v0 = 30768;
  v1 = 0xE200000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

unint64_t sub_10002138C()
{
  result = qword_100066B50;
  if (!qword_100066B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066B50);
  }

  return result;
}

uint64_t sub_1000213E0(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 1;
  *(result + 24) = a1;
  return result;
}

uint64_t sub_10002141C(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  sub_100021474(a1, a2);
  return v4;
}

uint64_t sub_100021474(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_15;
    }

    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v6)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) != a1)
      {
        goto LABEL_8;
      }

LABEL_15:
      v12 = 1;
LABEL_25:
      sub_100021AB8();
      swift_allocError();
      *v22 = v12;
      swift_willThrow();
      sub_10001316C(a1, a2);
      type metadata accessor for LaunchWarningMark();
      swift_deallocPartialClassInstance();
      return v3;
    }

    goto LABEL_61;
  }

  if (!BYTE6(a2))
  {
    goto LABEL_15;
  }

LABEL_8:
  if (sub_100043084() != 1)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if (v6 != 2)
  {
    if (v6 == 1)
    {
      LODWORD(v11) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v11 = v11;
        goto LABEL_21;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    goto LABEL_20;
  }

  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  v9 = __OFSUB__(v13, v14);
  v11 = v13 - v14;
  if (v9)
  {
    __break(1u);
LABEL_20:
    v11 = BYTE6(a2);
  }

LABEL_21:
  v12 = 1;
  if (v11 != 9)
  {
    goto LABEL_25;
  }

  *(v3 + 16) = 1;
  v49[3] = &type metadata for Data;
  v49[4] = &protocol witness table for Data;
  v49[0] = sub_100019F54(1, 8, a1, a2);
  v49[1] = v15;
  v16 = sub_100013B38(v49, &type metadata for Data);
  v17 = *v16;
  v18 = v16[1];
  v19 = v18 >> 62;
  if ((v18 >> 62) <= 1)
  {
    if (!v19)
    {
      v47[0] = *v16;
      LOWORD(v47[1]) = v18;
      BYTE2(v47[1]) = BYTE2(v18);
      BYTE3(v47[1]) = BYTE3(v18);
      BYTE4(v47[1]) = BYTE4(v18);
      BYTE5(v47[1]) = BYTE5(v18);
      v20 = v47 + BYTE6(v18);
      v21 = v47;
      goto LABEL_46;
    }

LABEL_34:
    v29 = v17;
    v30 = v17 >> 32;
    v28 = v30 - v29;
    if (v30 >= v29)
    {
      v26 = sub_100042DF4();
      if (v26)
      {
        v31 = sub_100042E24();
        if (__OFSUB__(v29, v31))
        {
          goto LABEL_68;
        }

        v26 += v29 - v31;
      }

      goto LABEL_38;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v19 != 2)
  {
    memset(v47, 0, 14);
    v21 = v47;
    v20 = v47;
    goto LABEL_46;
  }

  v24 = *(v17 + 16);
  v25 = *(v17 + 24);
  v26 = sub_100042DF4();
  if (v26)
  {
    v27 = sub_100042E24();
    v17 = v24 - v27;
    if (__OFSUB__(v24, v27))
    {
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
    }

    v26 += v17;
  }

  v9 = __OFSUB__(v25, v24);
  v28 = v25 - v24;
  if (v9)
  {
    __break(1u);
    goto LABEL_34;
  }

LABEL_38:
  v32 = sub_100042E14();
  if (v32 >= v28)
  {
    v33 = v28;
  }

  else
  {
    v33 = v32;
  }

  v34 = (v33 + v26);
  if (v26)
  {
    v20 = v34;
  }

  else
  {
    v20 = 0;
  }

  v21 = v26;
LABEL_46:
  sub_10001A668(v21, v20, v48);
  v35 = v48[0];
  v36 = v48[1];
  sub_100013B7C(v49);
  v37 = v36 >> 62;
  if ((v36 >> 62) > 1)
  {
    if (v37 != 2)
    {
      sub_10001316C(a1, a2);
      *(v3 + 24) = 0;
      return v3;
    }

    v38 = *(v35 + 16);
    v39 = sub_100042DF4();
    if (v39)
    {
      v40 = v39;
      v41 = sub_100042E24();
      if (__OFSUB__(v38, v41))
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v42 = (v38 - v41 + v40);
      sub_100042E14();
      if (v42)
      {
LABEL_58:
        v46 = *v42;
        sub_10001316C(a1, a2);
        sub_10001316C(v35, v36);
        *(v3 + 24) = v46;
        return v3;
      }
    }

    else
    {
      sub_100042E14();
    }

    __break(1u);
    goto LABEL_71;
  }

  if (!v37)
  {
    sub_10001316C(a1, a2);
    *(v3 + 24) = v35;
    return v3;
  }

  if (v35 > v35 >> 32)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v43 = sub_100042DF4();
  if (!v43)
  {
LABEL_71:
    result = sub_100042E14();
    __break(1u);
    goto LABEL_72;
  }

  v44 = v43;
  v45 = sub_100042E24();
  if (__OFSUB__(v35, v45))
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v42 = (v35 - v45 + v44);
  result = sub_100042E14();
  if (v42)
  {
    goto LABEL_58;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1000218B4(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_100013B38(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1000131C0(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_10001AEC8(v3, v4);
    }

    else
    {
      v6 = sub_10001AF44(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_100013B7C(v8);
  return v6;
}

uint64_t sub_100021970()
{
  v6 = xmmword_100047DB0;
  v5 = *(v0 + 24);
  v1 = sub_1000218B4(&v5, &v6);
  v3 = v2;
  sub_1000430D4();
  sub_10001316C(v1, v3);
  return v6;
}

uint64_t sub_100021A14()
{
  result = (*(*v0 + 112))();
  if (!v1)
  {
    v4 = v3;
    v5 = result;
    sub_100017558(0xD000000000000015, 0x800000010004BAB0, result, v3);
    return sub_10001316C(v5, v4);
  }

  return result;
}

unint64_t sub_100021AB8()
{
  result = qword_100066B58;
  if (!qword_100066B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066B58);
  }

  return result;
}

unint64_t sub_100021B34()
{
  result = qword_100066B60;
  if (!qword_100066B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066B60);
  }

  return result;
}

void *sub_100021BA8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = *(a1 + OBJC_IVAR____TtC17online_auth_agent22BloomFilterDiskStorage_size);
  v17[5] = a1;
  v17[8] = a2;
  v17[9] = a3;
  type metadata accessor for BloomFilterAlgorithm();

  sub_100013104(a2, a3);
  v18 = sub_100019268(a4, a5);
  if (!v8)
  {
    v17[6] = v18;
    v19 = v18[4];

    v20 = v19(0, 0xC000000000000000);

    v21 = *(v20 + 16);

    if (a6 >= 1 && v21 >= a6)
    {
      sub_10001316C(a2, a3);

      v17[7] = a6;
      return v17;
    }

    sub_100018F7C();
    swift_allocError();
    *v22 = xmmword_100047EC0;
    *(v22 + 16) = 2;
    swift_willThrow();
  }

  sub_10001316C(a2, a3);

  if (!v9)
  {
  }

  sub_10001316C(v17[8], v17[9]);
  swift_deallocPartialClassInstance();
  return v17;
}

uint64_t sub_100021DAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x4572655073746962;
  v5 = 0xEC0000007972746ELL;
  v6 = 0xE400000000000000;
  v7 = 1953259891;
  if (a1 != 4)
  {
    v7 = 25705;
    v6 = 0xE200000000000000;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x656761726F7473;
  if (a1 != 1)
  {
    v9 = 0x687469726F676C61;
    v8 = 0xE90000000000006DLL;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1702521203;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xEC0000007972746ELL;
      if (v10 != 0x4572655073746962)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1953259891)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      if (v10 != 25705)
      {
LABEL_34:
        v13 = sub_1000437F4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x656761726F7473)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE90000000000006DLL;
      if (v10 != 0x687469726F676C61)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1702521203)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

Swift::Int sub_100021F84(unsigned __int8 a1)
{
  sub_1000438A4();
  sub_100043384();

  return sub_1000438C4();
}

uint64_t sub_10002207C(uint64_t a1)
{
  sub_100043384();
}

Swift::Int sub_100022164(uint64_t a1, unsigned __int8 a2)
{
  sub_1000438A4();
  sub_100043384();

  return sub_1000438C4();
}

unint64_t sub_100022258@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000232BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100022288(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1702521203;
  v5 = 0xEC0000007972746ELL;
  v6 = 0x4572655073746962;
  v7 = 0xE400000000000000;
  v8 = 1953259891;
  if (v2 != 4)
  {
    v8 = 25705;
    v7 = 0xE200000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x656761726F7473;
  if (v2 != 1)
  {
    v10 = 0x687469726F676C61;
    v9 = 0xE90000000000006DLL;
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

uint64_t sub_100022338()
{
  v1 = *v0;
  v2 = 1702521203;
  v3 = 0x4572655073746962;
  v4 = 1953259891;
  if (v1 != 4)
  {
    v4 = 25705;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656761726F7473;
  if (v1 != 1)
  {
    v5 = 0x687469726F676C61;
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

unint64_t sub_1000223E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000232BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100022418(uint64_t a1)
{
  v2 = sub_100023308();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100022454(uint64_t a1)
{
  v2 = sub_100023308();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100022490(void *a1)
{
  v2 = swift_allocObject();
  sub_1000224E0(a1);
  return v2;
}

uint64_t sub_1000224E0(void *a1)
{
  v4 = sub_100013A34(&qword_100066C28, &qword_100047ED0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_100013B38(a1, a1[3]);
  sub_100023308();
  sub_1000438E4();
  if (v2)
  {
    type metadata accessor for BloomFilter();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v10) = 0;
    *(v1 + 32) = sub_100043774();
    LOBYTE(v10) = 3;
    *(v1 + 56) = sub_100043754();
    v11 = 4;
    sub_10002335C();
    sub_100043764();
    *(v1 + 64) = v10;
    LOBYTE(v10) = 5;
    *(v1 + 16) = sub_100043744();
    *(v1 + 24) = v9;
    type metadata accessor for BloomFilterAlgorithm();
    v11 = 2;
    sub_100023404(&qword_100066C40, type metadata accessor for BloomFilterAlgorithm, &unk_100047308);
    sub_100043764();
    *(v1 + 48) = v10;
    type metadata accessor for BloomFilterDiskStorage(0);
    v11 = 1;
    sub_100023404(&qword_100066C48, type metadata accessor for BloomFilterDiskStorage, &unk_100047D30);
    sub_100043764();
    (*(v5 + 8))(v7, v4);
    *(v1 + 40) = v10;
  }

  sub_100013B7C(a1);
  return v1;
}

uint64_t sub_10002286C(void *a1)
{
  v3 = v1;
  v5 = sub_100013A34(&qword_100066C50, &qword_100047ED8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100013B38(a1, a1[3]);
  sub_100023308();
  sub_1000438F4();
  LOBYTE(v13) = 0;
  sub_1000437D4();
  if (!v2)
  {
    LOBYTE(v13) = 3;
    sub_1000437B4();
    v9 = v3[9];
    v13 = v3[8];
    v14 = v9;
    v12 = 4;
    sub_100013104(v13, v9);
    sub_1000233B0();
    sub_1000437C4();
    sub_10001316C(v13, v14);
    LOBYTE(v13) = 5;
    sub_1000437A4();
    v13 = v3[6];
    v12 = 2;
    type metadata accessor for BloomFilterAlgorithm();
    sub_100023404(&qword_100066C60, type metadata accessor for BloomFilterAlgorithm, &unk_100047330);
    sub_1000437C4();
    v13 = v3[5];
    v12 = 1;
    type metadata accessor for BloomFilterDiskStorage(0);
    sub_100023404(&qword_100066C68, type metadata accessor for BloomFilterDiskStorage, &unk_100047D58);
    sub_1000437C4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100022B34(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 64);
  v3 = *(v2 + 72);
  v29 = &type metadata for Data;
  v30 = &protocol witness table for Data;
  v27 = v4;
  v28 = v3;
  v5 = sub_100013B38(&v27, &type metadata for Data);
  v6 = *v5;
  v7 = v5[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v25, 0, 14);
      sub_100013104(v4, v3);
      v9 = v25;
      v10 = v25;
      goto LABEL_23;
    }

    v11 = *(v6 + 16);
    v12 = *(v6 + 24);
    sub_100013104(v4, v3);
    v3 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v4 = sub_100042DF4();
    if (v4)
    {
      v3 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = sub_100042E24();
      v6 = v11 - v13;
      if (__OFSUB__(v11, v13))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v4 += v6;
    }

    v14 = __OFSUB__(v12, v11);
    v15 = v12 - v11;
    if (!v14)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v25[0] = *v5;
    LOWORD(v25[1]) = v7;
    BYTE2(v25[1]) = BYTE2(v7);
    BYTE3(v25[1]) = BYTE3(v7);
    BYTE4(v25[1]) = BYTE4(v7);
    BYTE5(v25[1]) = BYTE5(v7);
    sub_100013104(v4, v3);
    v9 = v25;
    v10 = v25 + BYTE6(v7);
    goto LABEL_23;
  }

  v16 = v6;
  v17 = v6 >> 32;
  v15 = v17 - v16;
  if (v17 < v16)
  {
    __break(1u);
    goto LABEL_25;
  }

  sub_100013104(v4, v3);
  v4 = sub_100042DF4();
  if (v4)
  {
    v18 = sub_100042E24();
    if (!__OFSUB__(v16, v18))
    {
      v4 += v16 - v18;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v19 = sub_100042E14();
  if (v19 >= v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = v19;
  }

  v21 = (v20 + v4);
  if (v4)
  {
    v10 = v21;
  }

  else
  {
    v10 = 0;
  }

  v9 = v4;
LABEL_23:
  sub_10001A668(v9, v10, v26);
  v22 = v26[0];
  v23 = v26[1];
  sub_100013B7C(&v27);
  v27 = v22;
  v28 = v23;
  sub_1000430D4();
  return v27;
}

void *sub_100022D74()
{
  v1 = (*(*v0 + 152))();
  v3 = v2;
  v4 = *(v0[6] + 32);

  v5 = v4(v1, v3);

  v7 = v0[7];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (*(v5 + 16) >= v7)
    {
      v8 = v0[7];
    }

    else
    {
      v8 = *(v5 + 16);
    }

    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      sub_10001316C(v1, v3);
      swift_unknownObjectRelease();
      return _swiftEmptyArrayStorage;
    }

    result = sub_100023198(0, v8, 0);
    v10 = v0[4];
    if (v10)
    {
      v15 = v3;
      v11 = 32;
      do
      {
        v12 = *(v5 + v11);
        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          sub_100023198((v13 > 1), v14 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v14 + 1;
        _swiftEmptyArrayStorage[v14 + 4] = v12 % v10;
        v11 += 8;
        --v8;
      }

      while (v8);
      sub_10001316C(v1, v15);
      swift_unknownObjectRelease();
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100022F10()
{
  v2 = v0;
  result = ((*v0)[20])();
  if (v1)
  {
    return v2;
  }

  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  while (1)
  {
    v7 = v5;
    if (v6 == v5)
    {
LABEL_6:
      v2 = v6 != v7;

      return v2;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    result = (*(*v0[5] + 128))(*(v4 + 8 * v5 + 32));
    v5 = v7 + 1;
    if ((result & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100023000()
{
  result = ((*v0)[20])();
  if (!v1)
  {
    v3 = result;
    v4 = 0;
    v5 = *(result + 16);
    while (1)
    {
      if (v5 == v4)
      {
      }

      if (v4 >= *(v3 + 16))
      {
        break;
      }

      v6 = v4 + 1;
      result = (*(*v0[5] + 136))(*(v3 + 8 * v4 + 32));
      v4 = v6;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000230C8()
{

  sub_10001316C(*(v0 + 64), *(v0 + 72));

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_100023118@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

char *sub_100023198(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000231B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000231B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100013A34(&qword_100066750, &qword_1000471C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_1000232BC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10005EAE8;
  v6._object = a2;
  v4 = sub_100043714(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100023308()
{
  result = qword_100066C30;
  if (!qword_100066C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066C30);
  }

  return result;
}

unint64_t sub_10002335C()
{
  result = qword_100066C38;
  if (!qword_100066C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066C38);
  }

  return result;
}

unint64_t sub_1000233B0()
{
  result = qword_100066C58;
  if (!qword_100066C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066C58);
  }

  return result;
}

uint64_t sub_100023404(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100023450()
{
  result = qword_100066C70;
  if (!qword_100066C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066C70);
  }

  return result;
}

unint64_t sub_1000234A8()
{
  result = qword_100066C78;
  if (!qword_100066C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066C78);
  }

  return result;
}

unint64_t sub_100023500()
{
  result = qword_100066C80;
  if (!qword_100066C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066C80);
  }

  return result;
}

unint64_t sub_100023558()
{
  result = qword_100066C88;
  if (!qword_100066C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066C88);
  }

  return result;
}

uint64_t sub_1000235AC(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_1000235C8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000235DC(uint64_t a1, unsigned int a2)
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

uint64_t sub_100023624(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100023668(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for BloomFilter.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BloomFilter.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100023860@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_100069A80 != -1)
  {
    swift_once();
  }

  v4 = *(&xmmword_10006AA08 + 1);
  v5 = xmmword_10006AA08;
  v6 = qword_10006AA18;
  v29 = unk_10006AA20;
  v7 = xmmword_10006AA28;
  sub_10001AFC8();

  v8 = sub_1000432E4();

  v9 = [a1 readSetting:v8];

  if (v9)
  {
    v5 = sub_100043314();
    v4 = v10;
  }

  else
  {
  }

  v30 = v5;
  sub_10001AFD4();

  v11 = sub_1000432E4();

  v12 = [a1 readSetting:v11];

  if (v12)
  {
    v13 = sub_100043314();
    v15 = v14;

    if (v13 == 0x786F62646E6173 && v15 == 0xE700000000000000 || (sub_1000437F4() & 1) != 0)
    {

      v6 = 2;
      goto LABEL_11;
    }

    if (v13 == 0x69746375646F7270 && v15 == 0xEA00000000006E6FLL)
    {
    }

    else
    {
      v28 = sub_1000437F4();

      if ((v28 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v6 = 1;
  }

LABEL_11:
  v16 = sub_10001AFE0();
  if (v17)
  {
    v18 = v16;
    v19 = v17;
  }

  else
  {

    v18 = v29;
    v19 = v7;
  }

  v20 = sub_10001B2BC();
  v22 = v21;
  v23 = sub_10001B0A0();
  v25 = v24;

  *&v32 = v30;
  *(&v32 + 1) = v4;
  v33.n128_u64[0] = v6;
  v33.n128_u64[1] = v18;
  *&v34 = v19;
  *(&v34 + 1) = v20;
  *&v35 = v22;
  *(&v35 + 1) = v23;
  v36 = v25;
  v37[0] = v30;
  v37[1] = v4;
  v37[2] = v6;
  v37[3] = v18;
  v37[4] = v19;
  v37[5] = v20;
  v37[6] = v22;
  v37[7] = v23;
  v37[8] = v25;
  sub_1000237F8(&v32, v31);
  sub_100023830(v37);
  v26 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v26;
  *(a2 + 64) = v36;
  result = v33;
  *a2 = v32;
  *(a2 + 16) = result;
  return result;
}

double sub_100023B14()
{
  *&v2 = 0xD00000000000001ELL;
  *(&v2 + 1) = 0x800000010004BB90;
  v3 = xmmword_100048200;
  *v4 = 0x800000010004BB70;
  memset(&v4[8], 0, 32);
  v5[0] = 0xD00000000000001ELL;
  v5[1] = 0x800000010004BB90;
  v6 = xmmword_100048200;
  v7 = 0x800000010004BB70;
  v8 = 0u;
  v9 = 0u;
  sub_1000237F8(&v2, v1);
  sub_100023830(v5);
  xmmword_10006AA28 = *v4;
  unk_10006AA38 = *&v4[16];
  qword_10006AA48 = *&v4[32];
  result = *&v3;
  xmmword_10006AA08 = v2;
  *&qword_10006AA18 = v3;
  return result;
}

void sub_100023BC0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = objc_allocWithZone(CKContainerID);
  v6 = sub_1000432E4();
  v7 = [v5 initWithContainerIdentifier:v6 environment:v4];

  v8 = [objc_allocWithZone(CKContainer) initWithContainerID:v7];
  v9 = [v8 publicCloudDatabase];
  v10 = objc_allocWithZone(CKRecordZone);
  v11 = v9;
  v12 = sub_1000432E4();
  v13 = [v10 initWithZoneName:v12];

  v24 = *(a1 + 40);
  if (*(&v24 + 1))
  {
    v14 = objc_allocWithZone(CKRecordZone);
    v15 = v13;
    sub_100023E04(&v24, v23);
    v16 = sub_1000432E4();
    sub_100023E74(&v24);
    v17 = [v14 initWithZoneName:v16];

    v18 = v17;
  }

  else
  {
    v18 = 0;
    v17 = v13;
  }

  v19 = v17;
  if (*(a1 + 64))
  {

    sub_100023830(a1);
    v20 = objc_allocWithZone(CKRecordZone);
    v21 = sub_1000432E4();

    v22 = [v20 initWithZoneName:v21];
  }

  else
  {

    sub_100023830(a1);
    v22 = 0;
  }

  *a2 = v8;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v22;
  a2[4] = v18;
}

uint64_t sub_100023E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013A34(&qword_100066D88, &qword_100048210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023E74(uint64_t a1)
{
  v2 = sub_100013A34(&qword_100066D88, &qword_100048210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100023EDC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100023F00(uint64_t a1, int a2)
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

uint64_t sub_100023F48(uint64_t result, int a2, int a3)
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

__n128 sub_100023FA8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100023FBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100024004(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void type metadata accessor for CKContainerEnvironment()
{
  if (!qword_100066D90)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100066D90);
    }
  }
}

uint64_t sub_1000240AC(uint64_t a1, id a2)
{
  v4 = [a2 profileUUID];
  v5 = sub_100043314();
  v7 = v6;

  (*(*a1 + 184))(v5, v7, 1);

  v8 = [a2 cdHash];
  v9 = sub_1000430B4();
  v11 = v10;

  (*(*a1 + 120))(v9, v11, 2);
  sub_10001316C(v9, v11);
  v12 = [a2 gracePeriod];
  v13 = *(*a1 + 152);
  v13(v12, 3);
  v13([a2 lastSuccessMonotonicTime], 4);
  v13([a2 lastSuccessResetCount], 5);
  v13([a2 isRejected], 6);
  return (v13)([a2 isRejectedByWholeProfile], 7);
}

uint64_t sub_100024270()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000243A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = *(*a1 + 152);
  v15(a2, 1);
  v15(a3, 2);
  (*(*a1 + 184))(a4, a5, 3);
  (*(*a1 + 120))(a6, a7, 4);
  return (v15)(a8, 5);
}

uint64_t sub_100024614(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    v9 = 0xD000000000000024;
  }

  else
  {
    v9 = 0xD000000000000085;
  }

  if (a5)
  {
    v10 = "ted_by_whole_profile = 0";
  }

  else
  {
    v10 = ", cdhash) DO NOTHING";
  }

  sub_100043624(216);
  v13._countAndFlagsBits = 0xD0000000000000D6;
  v13._object = 0x800000010004BFB0;
  sub_100043394(v13);
  v14._object = (v10 | 0x8000000000000000);
  v14._countAndFlagsBits = v9;
  sub_100043394(v14);

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;

  sub_100013104(a3, a4);
  sub_100012AE8(0, 0xE000000000000000, sub_1000275F4, v11, 0, 0);
}

id sub_100024868(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = v5;
  v12 = sub_1000431E4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v16 = sub_1000432E4();
  isa = sub_100043094().super.isa;
  v32 = 0;
  v30 = a5;
  LODWORD(v6) = [v6 recordIndeterminateEntryWithProfileUUID:v16 cdHash:isa onConflictDoNothing:a5 & 1 error:&v32];

  v18 = v32;
  if (v6)
  {

    return v18;
  }

  else
  {
    v31 = v32;
    v20 = v32;
    sub_100042F44();

    swift_willThrow();
    v21 = sub_100021190();
    v22 = *(v13 + 16);
    v31 = v12;
    v22(v15, v21, v12);

    sub_100013104(a3, a4);
    v23 = sub_1000431C4();
    v24 = sub_1000434A4();

    sub_10001316C(a3, a4);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v25 = 136446722;
      *(v25 + 4) = sub_100015730(v29, a2, &v32);
      *(v25 + 12) = 2082;
      v26 = sub_1000137B0(a3, a4);
      v28 = sub_100015730(v26, v27, &v32);

      *(v25 + 14) = v28;
      *(v25 + 22) = 1024;
      *(v25 + 24) = v30 & 1;
      _os_log_impl(&_mh_execute_header, v23, v24, "Error recording indeterminate entry %{public}s, %{public}s, %{BOOL}d", v25, 0x1Cu);
      swift_arrayDestroy();
    }

    return (*(v13 + 8))(v15, v31);
  }
}

id sub_100024D74(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000431E4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000432E4();
  v23 = 0;
  LODWORD(v4) = [v4 setGracePeriodWithProfileUUID:v12 gracePeriod:a3 error:&v23];

  v13 = v23;
  if (v4)
  {

    return v13;
  }

  else
  {
    v22 = v23;
    v15 = v23;
    sub_100042F44();

    swift_willThrow();
    v16 = sub_100021190();
    (*(v9 + 16))(v11, v16, v8);

    v17 = sub_1000431C4();
    v18 = sub_1000434A4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      LODWORD(v22) = a3;
      v20 = v19;
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_100015730(a1, a2, &v23);
      *(v20 + 12) = 1024;
      *(v20 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error setting grace period for %{public}s, %d", v20, 0x12u);
      sub_100013B7C(v21);
    }

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1000250A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  (*(*a1 + 184))(a2, a3, 1);
  (*(*a1 + 120))(a4, a5, 2);
  return (*(*a1 + 152))(a6 & 1, 3);
}

void sub_1000254C4(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 192))(0);
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = (*(*a1 + 128))(1);
  if (v6 >> 60 != 15)
  {
    v7 = v5;
    v8 = v6;
    v9 = *(*a1 + 160);
    v10 = v9(2);
    if (v10 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else
    {
      v11 = v10;
      if (v10 <= 0x7FFFFFFF)
      {
        v21 = v9(3);
        v20 = v9(4);
        v12 = v9(5) != 0;
        v13 = v9(6) != 0;
        v14 = objc_allocWithZone(MISOnlineAuthEntry);
        v15 = sub_1000432E4();

        isa = sub_100043094().super.isa;
        LOBYTE(v19) = v13;
        v17 = [v14 initWithProfileUUID:v15 cdHash:isa gracePeriod:v11 lastSuccessMonotonicTime:v21 lastSuccessResetCount:v20 isRejected:v12 isRejectedByWholeProfile:v19];

        sub_100013158(v7, v8);
        swift_beginAccess();
        v18 = *(a2 + 16);
        *(a2 + 16) = v17;

        return;
      }
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
}

void *sub_1000256C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1000431E4();
  __chkstk_darwin(v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;

  sub_100013104(a3, a4);

  sub_100012AE8(0xD0000000000000D0, 0x800000010004C2B0, sub_1000275F4, v10, sub_100027610, v9);

  swift_beginAccess();
  v11 = *(v9 + 16);
  v12 = v11;

  return v11;
}

void sub_100025AA0(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 192))(0);
  if (v4)
  {
    v5 = (*(*a1 + 128))(1);
    if (v6 >> 60 != 15)
    {
      v7 = v5;
      v8 = v6;
      v9 = *(*a1 + 160);
      v10 = (*a1 + 160);
      v11 = v9(2);
      if (v11 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else
      {
        v12 = v11;
        if (v11 <= 0x7FFFFFFF)
        {
          v21 = v9(3);
          v22 = a2;
          v13 = v9(4);
          v14 = v9(5) != 0;
          v15 = v9(6) != 0;
          v16 = objc_allocWithZone(MISOnlineAuthEntry);
          v17 = sub_1000432E4();

          isa = sub_100043094().super.isa;
          LOBYTE(v20) = v15;
          v19 = [v16 initWithProfileUUID:v17 cdHash:isa gracePeriod:v12 lastSuccessMonotonicTime:v21 lastSuccessResetCount:v13 isRejected:v14 isRejectedByWholeProfile:v20];

          sub_100013158(v7, v8);
          swift_beginAccess();
          v10 = v19;
          sub_1000433E4();
          if (*((*(v22 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v22 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_6:
            sub_100043424();
            swift_endAccess();

            return;
          }

LABEL_9:
          sub_100043414();
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100025CFC()
{
  v0 = sub_1000431E4();
  __chkstk_darwin(v0);
  v1 = swift_allocObject();
  *(v1 + 16) = _swiftEmptyArrayStorage;

  sub_100012AE8(0xD0000000000000B0, 0x800000010004C390, 0, 0, sub_100027628, v1);

  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_100025FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000431E4();
  __chkstk_darwin(v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_100012AE8(0xD00000000000006ALL, 0x800000010004C450, sub_1000275F8, v6, sub_100027640, v5);

  swift_beginAccess();
  v7 = *(v5 + 16);

  return v7;
}

id sub_100026434(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_1000431E4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000432E4();
  isa = sub_100043094().super.isa;
  v31 = 0;
  LODWORD(v5) = [v5 deleteOnlineAuthEntryWithProfileUUID:v14 cdHash:isa error:&v31];

  v16 = v31;
  if (v5)
  {

    return v16;
  }

  else
  {
    v30 = v31;
    v18 = v31;
    v19 = sub_100042F44();

    swift_willThrow();
    v20 = sub_100021190();
    (*(v11 + 16))(v13, v20, v10);

    sub_100013104(a3, a4);
    v21 = sub_1000431C4();
    v22 = sub_1000434A4();

    sub_10001316C(a3, a4);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v30 = v10;
      v24 = v23;
      v25 = swift_slowAlloc();
      v29[1] = v19;
      v31 = v25;
      *v24 = 136446466;
      *(v24 + 4) = sub_100015730(a1, a2, &v31);
      *(v24 + 12) = 2082;
      v26 = sub_1000137B0(a3, a4);
      v28 = sub_100015730(v26, v27, &v31);

      *(v24 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Error deleting online auth entry %{public}s, %{public}s", v24, 0x16u);
      swift_arrayDestroy();

      return (*(v11 + 8))(v13, v30);
    }

    else
    {

      return (*(v11 + 8))(v13, v10);
    }
  }
}

id sub_10002693C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1000431E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_100043094().super.isa;
  v23 = 0;
  LODWORD(v3) = [v3 deleteOnlineAuthEntryWithCdHash:isa error:&v23];

  v11 = v23;
  if (v3)
  {

    return v11;
  }

  else
  {
    v22 = v23;
    v13 = v23;
    sub_100042F44();

    swift_willThrow();
    v14 = sub_100021190();
    (*(v7 + 16))(v9, v14, v6);
    sub_100013104(a1, a2);
    v15 = sub_1000431C4();
    v16 = sub_1000434A4();
    sub_10001316C(a1, a2);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136446210;
      v19 = sub_1000137B0(a1, a2);
      v21 = sub_100015730(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error deleting online auth entry %{public}s", v17, 0xCu);
      sub_100013B7C(v18);
    }

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t MISDBManager.addMonotonicTimeOffset(_:cdHash:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (a3 >> 60 == 15)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0x800000010004C590;
  }

  sub_100043624(88);
  v10._countAndFlagsBits = 0xD000000000000056;
  v10._object = 0x800000010004C530;
  sub_100043394(v10);
  v11._countAndFlagsBits = v6;
  v11._object = v7;
  sub_100043394(v11);

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1000130F0(a2, a3);
  sub_100012AE8(0, 0xE000000000000000, sub_100027184, v8, 0, 0);
}

uint64_t MISDBManager.addRTCResetCountOffset(_:cdHash:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (a3 >> 60 == 15)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0x800000010004C590;
  }

  sub_100043624(82);
  v10._countAndFlagsBits = 0xD000000000000050;
  v10._object = 0x800000010004C5B0;
  sub_100043394(v10);
  v11._countAndFlagsBits = v6;
  v11._object = v7;
  sub_100043394(v11);

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1000130F0(a2, a3);
  sub_100012AE8(0, 0xE000000000000000, sub_1000275FC, v8, 0, 0);
}

uint64_t sub_100026F4C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, void *, unint64_t))
{
  v7 = a4;
  if (a4)
  {
    v10 = a1;
    v11 = v7;
    v7 = sub_1000430B4();
    v13 = v12;
  }

  else
  {
    v14 = a1;
    v13 = 0xF000000000000000;
  }

  a6(a3, v7, v13);

  sub_100013158(v7, v13);
  return 1;
}

uint64_t sub_10002706C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000270FC(uint64_t a1)
{
  v2 = v1;
  v3 = (*(*a1 + 160))(0);
  result = swift_beginAccess();
  *(v2 + 16) = v3;
  return result;
}

uint64_t sub_100027188()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_10001316C(*(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000271D0(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  (*(*a1 + 152))(v1[2], 1);
  return (*(*a1 + 120))(v3, v4, 2);
}

uint64_t sub_10002725C(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  (*(*a1 + 184))(v1[2], v1[3], 1);
  return (*(*a1 + 120))(v3, v4, 2);
}

unint64_t sub_1000272E8()
{
  result = qword_100066D98;
  if (!qword_100066D98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100066D98);
  }

  return result;
}

uint64_t sub_100027338()
{
  sub_10001316C(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000273C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100027450(uint64_t a1)
{

  sub_10001316C(*(v1 + 32), *(v1 + 40));

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000274AC()
{

  return _swift_deallocObject(v0, 36, 7);
}

uint64_t sub_1000274E4(uint64_t a1)
{
  v3 = *(v1 + 32);
  (*(*a1 + 184))(*(v1 + 16), *(v1 + 24), 1);
  return (*(*a1 + 152))(v3, 2);
}

uint64_t sub_100027574(uint64_t a1)
{

  sub_10001316C(*(v1 + 48), *(v1 + 56));

  return _swift_deallocObject(v1, a1, 7);
}

Swift::Int sub_10002765C()
{
  sub_1000438A4();
  sub_1000438B4(0);
  return sub_1000438C4();
}

Swift::Int sub_1000276C8(uint64_t a1)
{
  sub_1000438A4();
  sub_1000438B4(0);
  return sub_1000438C4();
}

uint64_t sub_100027708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_1000431E4();
  v71 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v65 = &v62 - v7;
  v8 = sub_100013A34(&qword_100066838, &qword_1000473E0);
  v9 = __chkstk_darwin(v8 - 8);
  v64 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v62 - v11;
  v13 = sub_100043174();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = __chkstk_darwin(v13);
  v63 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v62 - v16;
  v18 = *(*a1 + 160);
  v19 = v18(0);
  v75 = (*(*a1 + 128))(1);
  v21 = v20;
  v67 = v18(2);
  v62 = v18(3);
  v22 = *(*a1 + 144);
  v68 = v17;
  v22(4);
  result = (*(*a1 + 192))(5);
  v25 = v24;
  v72 = v21;
  if (v21 >> 60 == 15)
  {

    v26 = sub_100021190();
    v27 = v71;
    (*(v71 + 16))(v6, v26, v3);
    v28 = sub_1000431C4();
    v29 = sub_1000434A4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "cdhash is nil in database", v30, 2u);
    }

    (*(v27 + 8))(v6, v3);
    v31 = v75;
    v32 = v72;
    v73 = v75;
    v74 = v72;
    sub_1000130F0(v75, v72);
    sub_100013A34(&qword_1000666C8, &qword_100046EF0);
    v33 = sub_100043364();
    v35 = v34;
    v36 = 0x687361686463;
LABEL_11:
    sub_100013550();
    swift_allocError();
    *v47 = v36;
    *(v47 + 8) = 0xE600000000000000;
    *(v47 + 16) = v33;
    *(v47 + 24) = v35;
    *(v47 + 32) = 1;
    swift_willThrow();
    sub_100013158(v31, v32);
    return (*(v69 + 8))(v68, v70);
  }

  v37 = v71;
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(v19))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v38 = v75;
  v32 = v72;
  sub_100013104(v75, v72);
  v39 = sub_10001B3F4(v67);
  if (v39 == 2)
  {
    sub_100013158(v38, v32);

    v40 = sub_100021190();
    v41 = v37;
    v42 = v65;
    (*(v37 + 16))(v65, v40, v3);
    v43 = sub_1000431C4();
    v44 = sub_1000434A4();
    v31 = v38;
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134217984;
      *(v45 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v43, v44, "Invalid reason in database: %lld", v45, 0xCu);
    }

    (*(v41 + 8))(v42, v3);
    v73 = v67;
    v33 = sub_1000437E4();
    v35 = v46;
    v36 = 0x6E6F73616572;
    goto LABEL_11;
  }

  v48 = v39;
  v49 = v19;
  v50 = sub_100043004();
  (*(*(v50 - 8) + 56))(v12, 1, 1, v50);
  v51 = v64;
  if (v25)
  {
    sub_100042FD4();

    sub_100029814(v12, &qword_100066838, &qword_1000473E0);
    sub_10001B848(v51, v12);
  }

  v52 = v68;
  v53 = v69;
  v54 = v63;
  v55 = v70;
  (*(v69 + 16))(v63, v68, v70);
  nullsub_1();
  v57 = v56;
  sub_100029070(v12, v51, &qword_100066838, &qword_1000473E0);
  v58 = v48 & 1;
  v59 = v49;
  v60 = v75;
  v61 = v72;
  sub_10001B77C(v59, v75, v72, v54, v58, v57, v51, v66);
  sub_100013158(v60, v61);
  sub_100029814(v12, &qword_100066838, &qword_1000473E0);
  return (*(v53 + 8))(v52, v55);
}

uint64_t sub_100027DFC(uint64_t a1, unsigned int *a2)
{
  v4 = sub_100013A34(&qword_100066838, &qword_1000473E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = *(*a1 + 152);
  v7(*a2, 1);
  (*(*a1 + 120))(*(a2 + 1), *(a2 + 2), 2);
  v8 = type metadata accessor for LaunchWarningDetails(0);
  v9 = sub_10001B40C(*(a2 + v8[7]));
  v7(v9, 3);
  v7(*(a2 + v8[8]), 4);
  v7(0, 5);
  (*(*a1 + 136))(a2 + v8[6], 6);
  sub_100029070(a2 + v8[9], v6, &qword_100066838, &qword_1000473E0);
  v10 = sub_100043004();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_100029814(v6, &qword_100066838, &qword_1000473E0);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v14 = sub_100042F64();
    v13 = v15;
    (*(v11 + 8))(v6, v10);
    v12 = v14;
  }

  (*(*a1 + 184))(v12, v13, 7);
}

uint64_t sub_100028074@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100013A34(&qword_100066DA0, &qword_1000482E0);
  v7 = swift_allocBox();
  v9 = v8;
  v10 = _s18LaunchWarningEntryVMa(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_100043624(87);
  v15._countAndFlagsBits = 0x205443454C4553;
  v15._object = 0xE700000000000000;
  sub_100043394(v15);
  v16._object = 0x800000010004C740;
  v16._countAndFlagsBits = 0xD000000000000035;
  sub_100043394(v16);
  v17._countAndFlagsBits = 0xD00000000000004ELL;
  v17._object = 0x800000010004C810;
  sub_100043394(v17);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  sub_100013104(a2, a3);

  sub_100012AE8(0, 0xE000000000000000, sub_100029050, v11, sub_100029054, v7);

  if (v14)
  {
  }

  swift_beginAccess();
  sub_100029070(v9, a4, &qword_100066DA0, &qword_1000482E0);
}

uint64_t sub_10002829C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100013A34(&qword_100066DA0, &qword_1000482E0);
  v5 = swift_allocBox();
  v7 = v6;
  v8 = _s18LaunchWarningEntryVMa(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_100043624(62);
  v10._countAndFlagsBits = 0x205443454C4553;
  v10._object = 0xE700000000000000;
  sub_100043394(v10);
  v11._object = 0x800000010004C740;
  v11._countAndFlagsBits = 0xD000000000000035;
  sub_100043394(v11);
  v12._object = 0x800000010004C860;
  v12._countAndFlagsBits = 0xD000000000000035;
  sub_100043394(v12);

  sub_100012AE8(0, 0xE000000000000000, sub_1000290D8, a1, sub_100029B80, v5);

  if (v2)
  {
  }

  swift_beginAccess();
  sub_100029070(v7, a2, &qword_100066DA0, &qword_1000482E0);
}

uint64_t sub_100028490(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013A34(&qword_100066DA0, &qword_1000482E0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v15 - v5);
  v7 = type metadata accessor for LaunchWarningDetails(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_projectBox();
  result = sub_100027708(a1, v9);
  if (!v2)
  {
    v12 = (*(*a1 + 176))(6);
    result = (*(*a1 + 160))(7);
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v13 = result;
      v14 = _s18LaunchWarningEntryVMa(0);
      sub_1000293AC(v9, v6 + *(v14 + 20), type metadata accessor for LaunchWarningDetails);
      *v6 = v13;
      *(v6 + *(v14 + 24)) = v12 & 1;
      (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
      swift_beginAccess();
      return sub_100029A9C(v6, v10);
    }
  }

  return result;
}

uint64_t sub_100028688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  v5 = sub_100013A34(&qword_100066DA0, &qword_1000482E0);
  __chkstk_darwin(v5);
  v33 = &v28 - v6;
  v7 = type metadata accessor for LaunchWarningDetails(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v35 = (v11 + 16);
  v12 = swift_allocBox();
  v14 = v13;
  v15 = _s18LaunchWarningEntryVMa(0);
  v29 = *(v15 - 8);
  v30 = v14;
  v16 = *(v29 + 56);
  v31 = v15;
  v16(v14, 1, 1);
  sub_100029B0C(a1, v10, type metadata accessor for LaunchWarningDetails);
  v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  sub_1000293AC(v10, v19 + v17, type metadata accessor for LaunchWarningDetails);
  *(v19 + v18) = v12;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v11;
  aBlock[4] = sub_1000292F8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028F14;
  aBlock[3] = &unk_10005F180;
  v20 = _Block_copy(aBlock);
  v21 = v3;

  [v21 transaction:v20];
  _Block_release(v20);
  v22 = v35;
  swift_beginAccess();
  if (*v22)
  {
    swift_willThrow();
    swift_errorRetain();
  }

  else
  {
    v24 = v32;
    v25 = v30;
    swift_beginAccess();
    v26 = v25;
    v27 = v33;
    sub_100029070(v26, v33, &qword_100066DA0, &qword_1000482E0);
    result = (*(v29 + 48))(v27, 1, v31);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1000293AC(v27, v24, _s18LaunchWarningEntryVMa);
    }
  }

  return result;
}

uint64_t sub_100028A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v5 = type metadata accessor for LaunchWarningDetails(0);
  v45 = *(v5 - 8);
  v6 = *(v45 + 64);
  __chkstk_darwin(v5 - 8);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100013A34(&qword_100066DA0, &qword_1000482E0);
  v8 = __chkstk_darwin(v7 - 8);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v44 = &v40 - v11;
  __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v14 = _s18LaunchWarningEntryVMa(0);
  v48 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  v20 = swift_projectBox();
  v21 = *a2;
  sub_100028074(*a2, *(a2 + 8), *(a2 + 16), v13);
  v42 = v21;
  v43 = 0;
  v40 = v17;
  v25 = a2;
  v26 = v48;
  v41 = *(v48 + 48);
  v27 = v14;
  if (v41(v13, 1, v14) == 1)
  {
    sub_100029814(v13, &qword_100066DA0, &qword_1000482E0);
    v28 = v25;
    v29 = v25;
    v30 = v46;
    sub_100029B0C(v29, v46, type metadata accessor for LaunchWarningDetails);
    v31 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v32 = swift_allocObject();
    sub_1000293AC(v30, v32 + v31, type metadata accessor for LaunchWarningDetails);
    v33 = v43;
    sub_100012AE8(0xD000000000000085, 0x800000010004C780, sub_100029B7C, v32, 0, 0);

    if (!v33)
    {
      v34 = v44;
      sub_100028074(v42, *(v28 + 8), *(v28 + 16), v44);
      if (v41(v34, 1, v27) != 1)
      {
        v37 = v40;
        sub_1000293AC(v34, v40, _s18LaunchWarningEntryVMa);
        v38 = v37;
        v39 = v47;
        sub_1000293AC(v38, v47, _s18LaunchWarningEntryVMa);
        v23 = 1;
        (*(v48 + 56))(v39, 0, 1, v27);
        swift_beginAccess();
        sub_100029A9C(v39, v20);
        return v23;
      }

      sub_100029814(v34, &qword_100066DA0, &qword_1000482E0);
      sub_100029A48();
      v35 = swift_allocError();
      swift_willThrow();
      v33 = v35;
    }

    v22 = v49;
    swift_beginAccess();
    *(v22 + 16) = v33;

    return 0;
  }

  else
  {
    sub_1000293AC(v13, v19, _s18LaunchWarningEntryVMa);
    v36 = v47;
    sub_1000293AC(v19, v47, _s18LaunchWarningEntryVMa);
    v23 = 1;
    (*(v26 + 56))(v36, 0, 1, v14);
    swift_beginAccess();
    sub_100029A9C(v36, v20);
  }

  return v23;
}

uint64_t sub_100028F14(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

uint64_t sub_100028F54(char a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_100012AE8(0xD00000000000003ALL, 0x800000010004C8A0, sub_100029428, v4, 0, 0);
}

uint64_t _s18LaunchWarningEntryVMa(uint64_t a1)
{
  result = qword_100069C10;
  if (!qword_100069C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100029070(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100013A34(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000290D8(uint64_t a1)
{
  result = *(v1 + 24);
  if ((result & 0x8000000000000000) == 0)
  {
    return (*(*a1 + 152))();
  }

  __break(1u);
  return result;
}

uint64_t sub_100029130()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100029168()
{
  v1 = (type metadata accessor for LaunchWarningDetails(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  sub_10001316C(*(v0 + v3 + 8), *(v0 + v3 + 16));
  v5 = v1[8];
  v6 = sub_100043174();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[11];
  v8 = sub_100043004();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v3 + v7, v8);
  }

  return _swift_deallocObject(v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000292F8()
{
  v1 = *(type metadata accessor for LaunchWarningDetails(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100028A30(v4, v0 + v2, v5, v6);
}

uint64_t sub_100029394(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000293AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100029428(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 24);
  result = (*(*a1 + 168))(*(v2 + 16), 1);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return (*(*a1 + 152))(v4, 2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000294B0()
{
  sub_10001316C(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000294E8(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  (*(*a1 + 152))(*(v1 + 16), 1);
  return (*(*a1 + 120))(v3, v4, 2);
}

unint64_t sub_100029578()
{
  result = qword_100066DA8;
  if (!qword_100066DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066DA8);
  }

  return result;
}

uint64_t sub_1000295F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LaunchWarningDetails(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000296D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LaunchWarningDetails(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100029790(uint64_t a1)
{
  result = type metadata accessor for LaunchWarningDetails(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100029814(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100013A34(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100029874()
{
  v1 = (type metadata accessor for LaunchWarningDetails(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_10001316C(*(v0 + v3 + 8), *(v0 + v3 + 16));
  v5 = v1[8];
  v6 = sub_100043174();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[11];
  v8 = sub_100043004();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v3 + v7, v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000299D8(uint64_t a1)
{
  v3 = *(type metadata accessor for LaunchWarningDetails(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_100027DFC(a1, v4);
}

unint64_t sub_100029A48()
{
  result = qword_100066E38;
  if (!qword_100066E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066E38);
  }

  return result;
}

uint64_t sub_100029A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013A34(&qword_100066DA0, &qword_1000482E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100029B0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_100029B98()
{
  v1 = v0;
  v2 = sub_1000434C4();
  v20 = *(v2 - 8);
  v21 = v2;
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000434F4();
  __chkstk_darwin(v5);
  v6 = sub_100043224();
  __chkstk_darwin(v6 - 8);
  type metadata accessor for LaunchWarningDB();
  v7 = sub_100016208();
  v8 = sub_100016210(v7 & 1);
  v9 = OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_db;
  *&v0[OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_db] = v8;
  sub_100023860(v8, v24);
  v10 = type metadata accessor for MetricReporter();
  v11 = sub_100015538();
  v12 = &v1[OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics];
  v12[3] = v10;
  v12[4] = &off_10005F9E8;
  *v12 = v11;
  v13 = type metadata accessor for CloudKitOperations();
  sub_100029EB0(v12, v23);
  v14 = sub_10002C8EC(v24, v23);
  type metadata accessor for LaunchWarningController(0);
  v15 = *&v1[v9];
  v23[3] = v13;
  v23[4] = &off_10005F598;
  v23[0] = v14;
  v16 = v15;

  *&v1[OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_launchWarningController] = sub_100036BE8(v16, v23);
  sub_100029F14();
  sub_100043214();
  v23[0] = _swiftEmptyArrayStorage;
  sub_100029F60();
  sub_100013A34(&qword_100066E68, &unk_1000483D0);
  sub_100029FB8();
  sub_1000435F4();
  (*(v20 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v21);
  v17 = sub_100043504();

  *&v1[OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_syncQueue] = v17;
  v18 = type metadata accessor for LaunchWarningOperations();
  v22.receiver = v1;
  v22.super_class = v18;
  return objc_msgSendSuper2(&v22, "init");
}

uint64_t sub_100029EB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100029F14()
{
  result = qword_100066E58;
  if (!qword_100066E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100066E58);
  }

  return result;
}

unint64_t sub_100029F60()
{
  result = qword_100066E60;
  if (!qword_100066E60)
  {
    sub_1000434F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066E60);
  }

  return result;
}

unint64_t sub_100029FB8()
{
  result = qword_100066E70;
  if (!qword_100066E70)
  {
    sub_100013AF0(&qword_100066E68, &unk_1000483D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066E70);
  }

  return result;
}

uint64_t sub_10002A064(char a1, uint64_t a2)
{
  v4 = sub_100013A34(&qword_100066DA0, &qword_1000482E0);
  __chkstk_darwin(v4 - 8);
  v44 = v38 - v5;
  v6 = _s18LaunchWarningEntryVMa(0);
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v39 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000431E4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v45 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v38 - v12;
  v14 = sub_1000212A8();
  v40 = *(v9 + 16);
  v41 = v14;
  v40(v13);
  v15 = sub_1000431C4();
  v16 = sub_1000434B4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134218240;
    *(v17 + 4) = a2;
    *(v17 + 12) = 1024;
    *(v17 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "Setting user override: %llu to %{BOOL}d", v17, 0x12u);
  }

  v18 = *(v9 + 8);
  v18(v13, v8);
  v19 = v46;
  result = sub_100028F54(a1 & 1, a2);
  if (!v19 && (a1 & 1) != 0)
  {
    type metadata accessor for LaunchWarningMark();
    v38[0] = a2;
    v21 = sub_1000213E0(a2);
    v22 = v44;
    v38[1] = v21;
    sub_10002829C(v21, v44);
    v46 = 0;
    v23 = v43;
    v24 = (*(v42 + 48))(v22, 1, v43);
    v25 = v45;
    if (v24 == 1)
    {
      sub_100029814(v22, &qword_100066DA0, &qword_1000482E0);
      (v40)(v25, v41, v8);
      v26 = sub_1000431C4();
      v27 = sub_1000434A4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 134217984;
        *(v28 + 4) = v38[0];
        _os_log_impl(&_mh_execute_header, v26, v27, "Unable to look up launch warning info for ID: %llu", v28, 0xCu);
      }

      return (v18)(v25, v8);
    }

    else
    {
      v29 = v39;
      sub_10002C150(v22, v39, _s18LaunchWarningEntryVMa);
      sub_100013104(*(v29 + *(v23 + 20) + 8), *(v29 + *(v23 + 20) + 16));
      nullsub_1();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v36 = *(v47 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics + 24);
      v37 = *(v47 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics + 32);
      sub_100013B38((v47 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics), v36);
      (*(v37 + 32))(v31, v33, v35, v36, v37);
      sub_10001316C(v33, v35);

      return sub_10002C2A4(v29, _s18LaunchWarningEntryVMa);
    }
  }

  return result;
}

uint64_t sub_10002A5E4(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v4 = v3;
  v108 = a3;
  v7 = _s18LaunchWarningEntryVMa(0);
  __chkstk_darwin(v7 - 8);
  v93 = (&v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100013A34(&qword_100066E80, &qword_1000483E0);
  __chkstk_darwin(v9 - 8);
  v105 = (&v91 - v10);
  v101 = type metadata accessor for LaunchWarningDetails(0);
  v99 = *(v101 - 8);
  v11 = __chkstk_darwin(v101);
  v91 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v92 = &v91 - v14;
  __chkstk_darwin(v13);
  v96 = &v91 - v15;
  v16 = sub_1000431E4();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v97 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v102 = &v91 - v21;
  v22 = __chkstk_darwin(v20);
  v95 = &v91 - v23;
  __chkstk_darwin(v22);
  v25 = &v91 - v24;
  v26 = sub_1000212A8();
  v27 = *(v17 + 16);
  v103 = v26;
  v104 = v27;
  (v27)(v25);
  sub_100013104(a1, a2);
  v28 = sub_1000431C4();
  v29 = sub_1000434B4();
  sub_10001316C(a1, a2);
  v30 = os_log_type_enabled(v28, v29);
  v98 = v4;
  v106 = a1;
  v107 = a2;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v94 = v17;
    v33 = v16;
    v34 = v32;
    v109 = v32;
    *v31 = 67109378;
    *(v31 + 4) = v108;
    *(v31 + 8) = 2082;
    v35 = sub_1000137B0(a1, a2);
    v37 = sub_100015730(v35, v36, &v109);

    *(v31 + 10) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "Looking up launch warning for cdhash: %u, %{public}s", v31, 0x12u);
    sub_100013B7C(v34);
    v16 = v33;
    v17 = v94;

    v4 = v98;
  }

  v38 = *(v17 + 8);
  v38(v25, v16);
  v39 = *(v4 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_launchWarningController);
  v40 = v105;
  if (v39)
  {
    v41 = *(*v39 + 280);

    v42 = v100;
    v41(v106, v107, v108);
    if (v42)
    {

      (*(v99 + 56))(v40, 1, 1, v101);
      v100 = 0;
      v43 = v102;
LABEL_10:
      sub_100029814(v40, &qword_100066E80, &qword_1000483E0);
      v104(v43, v103, v16);
      v50 = v106;
      v51 = v107;
      sub_100013104(v106, v107);
      v52 = sub_1000431C4();
      v53 = sub_100043494();
      sub_10001316C(v50, v51);
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v105 = v38;
        v56 = v55;
        v109 = v55;
        *v54 = 67109378;
        *(v54 + 4) = v108;
        *(v54 + 8) = 2080;
        v57 = sub_1000137B0(v50, v51);
        v59 = v16;
        v60 = sub_100015730(v57, v58, &v109);

        *(v54 + 10) = v60;
        _os_log_impl(&_mh_execute_header, v52, v53, "Found no launch warning for cdhash: %u, %s", v54, 0x12u);
        sub_100013B7C(v56);

        v105(v102, v59);
      }

      else
      {

        v38(v43, v16);
      }

      return 0;
    }

    v100 = 0;
    v49 = (*(v99 + 48))(v40, 1, v101);
    v43 = v102;
    if (v49 == 1)
    {
      goto LABEL_10;
    }

    v61 = v96;
    sub_10002C150(v40, v96, type metadata accessor for LaunchWarningDetails);
    v62 = v95;
    v104(v95, v103, v16);
    v63 = v61;
    v64 = v61;
    v65 = v92;
    sub_10002C23C(v64, v92, type metadata accessor for LaunchWarningDetails);
    v66 = sub_1000431C4();
    v67 = sub_1000434B4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v94 = v17;
      v69 = v68;
      v70 = v65;
      v71 = swift_slowAlloc();
      v109 = v71;
      *v69 = 136446210;
      sub_10002C23C(v70, v91, type metadata accessor for LaunchWarningDetails);
      v72 = sub_100043364();
      v105 = v38;
      v73 = v72;
      v74 = v16;
      v76 = v75;
      sub_10002C2A4(v70, type metadata accessor for LaunchWarningDetails);
      v77 = sub_100015730(v73, v76, &v109);

      *(v69 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v66, v67, "Found launch warning with details: %{public}s", v69, 0xCu);
      sub_100013B7C(v71);

      v78 = v74;
      v63 = v96;
      v105(v95, v78);
    }

    else
    {

      sub_10002C2A4(v65, type metadata accessor for LaunchWarningDetails);
      v38(v62, v16);
    }

    sub_100013104(*(v63 + 8), *(v63 + 16));
    nullsub_1();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v85 = *(v98 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics + 24);
    v86 = *(v98 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics + 32);
    sub_100013B38((v98 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics), v85);
    (*(v86 + 24))(v80, v82, v84, 0, 1, v85, v86);
    v87 = v93;
    v88 = v100;
    sub_100028688(v63, v93);
    if (v88)
    {
      sub_10002C2A4(v63, type metadata accessor for LaunchWarningDetails);
      sub_10001316C(v82, v84);
    }

    else
    {
      type metadata accessor for LaunchWarningMark();
      v89 = sub_1000213E0(*v87);
      v90 = (*(*v89 + 112))();

      sub_10001316C(v82, v84);

      sub_10002C2A4(v87, _s18LaunchWarningEntryVMa);
      sub_10002C2A4(v63, type metadata accessor for LaunchWarningDetails);
      return v90;
    }
  }

  else
  {
    v44 = v97;
    v104(v97, v103, v16);
    v45 = sub_1000431C4();
    v46 = sub_1000434A4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Launch warning lookup failed due to missing controller.", v47, 2u);
    }

    v38(v44, v16);
    sub_10002C0FC();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_10002B1CC()
{
  v1 = v0;
  v2 = sub_1000431E4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  result = sub_1000193D8();
  if (result)
  {
    v10 = sub_1000212A8();
    v11 = *(v3 + 16);
    v23 = v10;
    v22 = v11;
    (v11)(v8);
    v12 = sub_1000431C4();
    v13 = sub_1000434B4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v21 = v1;
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Performing regular launch warning sync.", v14, 2u);
      v1 = v21;
    }

    v15 = *(v3 + 8);
    v16 = v15(v8, v2);
    v17 = *(v1 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_launchWarningController);
    if (v17)
    {
      __chkstk_darwin(v16);
      *(&v21 - 2) = v17;
      *(&v21 - 1) = v1;

      sub_1000434D4();
    }

    else
    {
      v22(v6, v23, v2);
      v18 = sub_1000431C4();
      v19 = sub_1000434A4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Launch warning sync failed due to missing controller.", v20, 2u);
      }

      v15(v6, v2);
      sub_10002C0FC();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10002B4C8(uint64_t a1, uint64_t a2)
{
  v125 = a2;
  v119 = type metadata accessor for LaunchWarningController.NewLaunchWarning(0);
  v121 = *(v119 - 8);
  v4 = __chkstk_darwin(v119);
  v120 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v123 = &v104 - v6;
  v124 = sub_1000431E4();
  v122 = *(v124 - 8);
  v7 = __chkstk_darwin(v124);
  v115 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v104 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v104 - v13;
  __chkstk_darwin(v12);
  v16 = (&v104 - v15);
  v126 = sub_100043174();
  v17 = *(v126 - 8);
  v18 = __chkstk_darwin(v126);
  v20 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v104 - v21;
  v23 = sub_100043164();
  v24 = (*(*a1 + 288))(v23);
  v117 = v26;
  if (v2)
  {
    v27 = *(v125 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics + 24);
    v28 = *(v125 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics + 32);
    sub_100013B38((v125 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics), v27);
    sub_100043164();
    sub_100043114();
    v30 = v29;
    v31 = *(v17 + 8);
    v32 = v20;
    v33 = v126;
    v31(v32, v126);
    (*(v28 + 16))(v2, v27, v28, v30);

    return (v31)(v22, v33);
  }

  v35 = v24;
  v110 = v16;
  *&v106 = v14;
  v111 = v11;
  v118 = 0;
  v37 = *(v125 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics + 24);
  v36 = *(v125 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics + 32);
  v113 = a1;
  v114 = (v125 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics);
  v38 = v25;
  sub_100013B38((v125 + OBJC_IVAR____TtC17online_auth_agent23LaunchWarningOperations_metrics), v37);
  sub_100043164();
  v116 = v22;
  sub_100043114();
  v40 = v39;
  v41 = *(v17 + 8);
  v42 = v20;
  v43 = v126;
  v125 = v17 + 8;
  v112 = v41;
  v41(v42, v126);
  v44 = v38 & 0x101;
  v45 = v117;
  (*(v36 + 8))(v35 & 0x101, v117, v44, v37, v36, v40);
  if ((v35 & 1) == 0 && v45 < 1)
  {
    v46 = v116;
    goto LABEL_6;
  }

  v48 = sub_1000212A8();
  v49 = v122;
  v50 = *(v122 + 16);
  v51 = v110;
  v108 = v48;
  v109 = v122 + 16;
  v52 = v124;
  v107 = v50;
  (v50)(v110);
  v53 = sub_1000431C4();
  v54 = sub_1000434B4();
  v55 = os_log_type_enabled(v53, v54);
  v56 = v118;
  if (v55)
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "Launch warning sync triggered an update.", v57, 2u);
  }

  v60 = *(v49 + 8);
  v59 = v49 + 8;
  v58 = v60;
  v61 = (v60)(v51, v52);
  v62 = (*(*v113 + 296))(v61);
  v63 = v116;
  if (v56)
  {
    return v112(v116, v43);
  }

  v122 = v59;
  v118 = 0;
  v64 = v62;
  if (!*(v62 + 16))
  {

    v69 = v115;
    v107(v115, v108, v52);
    v70 = sub_1000431C4();
    v71 = sub_1000434B4();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "Launch warning sync found no impacted apps.", v72, 2u);
    }

    v58(v69, v52);
    v46 = v63;
LABEL_6:
    v47 = v43;
    return v112(v46, v47);
  }

  v110 = v58;
  v65 = v106;
  v107(v106, v108, v52);

  v66 = sub_1000431C4();
  v67 = sub_1000434B4();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 134217984;
    *(v68 + 4) = *(v64 + 16);

    _os_log_impl(&_mh_execute_header, v66, v67, "Launch warning sync found %ld local warnings.", v68, 0xCu);
  }

  else
  {
  }

  v73 = v123;
  result = (v110)(v65, v52);
  v117 = *(v64 + 16);
  if (v117)
  {
    v75 = 0;
    v76 = v121;
    v115 = (v64 + ((*(v121 + 80) + 32) & ~*(v121 + 80)));
    *&v74 = 136446210;
    v106 = v74;
    v105 = v64;
    while (1)
    {
      v86 = v120;
      if (v75 >= *(v64 + 16))
      {
        break;
      }

      sub_10002C23C(&v115[*(v76 + 72) * v75], v73, type metadata accessor for LaunchWarningController.NewLaunchWarning);
      v87 = v73 + *(v119 + 20);
      v88 = *(v87 + *(type metadata accessor for LaunchWarningDetails(0) + 32));
      v89 = *sub_10001B51C();
      v127 = v88;
      v128 = v89;
      sub_10001B96C();
      if (sub_1000435D4())
      {
        v77 = 0;
      }

      else
      {
        v90 = v111;
        v107(v111, v108, v52);
        sub_10002C23C(v73, v86, type metadata accessor for LaunchWarningController.NewLaunchWarning);
        v91 = sub_1000431C4();
        v92 = sub_1000434B4();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v128 = v94;
          *v93 = v106;
          v95 = (v86 + *(type metadata accessor for AppRecord(0) + 20));
          v96 = v86;
          v97 = *v95;
          v98 = v95[1];

          sub_10002C2A4(v96, type metadata accessor for LaunchWarningController.NewLaunchWarning);
          v99 = sub_100015730(v97, v98, &v128);

          *(v93 + 4) = v99;
          _os_log_impl(&_mh_execute_header, v91, v92, "Terminating app: %{public}s", v93, 0xCu);
          sub_100013B7C(v94);
          v73 = v123;

          v100 = v90;
          v101 = v124;
        }

        else
        {

          sub_10002C2A4(v86, type metadata accessor for LaunchWarningController.NewLaunchWarning);
          v100 = v90;
          v101 = v52;
        }

        v110(v100, v101);
        v102 = v118;
        v103 = (*(*v113 + 304))(v73);
        v118 = v102;
        v64 = v105;
        if (v102)
        {

          sub_10002C2A4(v73, type metadata accessor for LaunchWarningController.NewLaunchWarning);
          v46 = v116;
          v47 = v126;
          return v112(v46, v47);
        }

        v77 = v103;
      }

      ++v75;
      sub_100013104(*(v87 + 8), *(v87 + 16));
      nullsub_1();
      v79 = v78;
      v81 = v80;
      v83 = v82;
      v84 = v114[3];
      v85 = v114[4];
      sub_100013B38(v114, v84);
      (*(v85 + 24))(v79, v81, v83, v77 & 1, 0, v84, v85);
      sub_10001316C(v81, v83);
      v73 = v123;
      result = sub_10002C2A4(v123, type metadata accessor for LaunchWarningController.NewLaunchWarning);
      v63 = v116;
      v52 = v124;
      v76 = v121;
      if (v117 == v75)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_30:

    return v112(v63, v126);
  }

  return result;
}

id sub_10002C05C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LaunchWarningOperations();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10002C0FC()
{
  result = qword_100066E88;
  if (!qword_100066E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066E88);
  }

  return result;
}

uint64_t sub_10002C150(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10002C1D8()
{
  result = qword_100066E90;
  if (!qword_100066E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066E90);
  }

  return result;
}

uint64_t sub_10002C23C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002C2A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_10002C318(void *a1, void *a2)
{
  v27 = a1;
  v3 = sub_100043174();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v26 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - v12;
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  if (a2)
  {
    v16 = a2;
    v17 = [v27 creationDate];
    if (v17)
    {
      v18 = v17;
      sub_100043154();

      v19 = *(v4 + 32);
      v19(v15, v13, v3);
      v20 = [v27 creationDate];
      if (v20)
      {
        v21 = v20;
        sub_100043154();

        v19(v10, v7, v3);
        v22 = sub_100043124();
        v23 = *(v4 + 8);
        v23(v10, v3);
        v23(v15, v3);
        if (v22)
        {

          goto LABEL_6;
        }
      }

      else
      {
        (*(v4 + 8))(v15, v3);
      }
    }

    return v16;
  }

LABEL_6:
  v24 = v27;

  return v24;
}

id sub_10002C568@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v12 = v1[6];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v12;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;

  return v12;
}

void sub_10002C5F4(uint64_t a1)
{
  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = *(a1 + 16);
  *(v1 + 1) = *a1;
  *(v1 + 2) = v8;
  v1[6] = *(a1 + 32);
}

uint64_t sub_10002C718(uint64_t a1)
{
  swift_beginAccess();
  sub_10002C768(a1, v1 + 56);
  return swift_endAccess();
}

uint64_t sub_10002C768(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013A34(&unk_100066EC0, &unk_1000484E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002C85C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_10002C8EC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 72) = 0u;
  *(v4 + 81) = 0u;
  *(v4 + 56) = 0u;
  sub_100023BC0(a1, v7);
  v5 = v7[1];
  *(v4 + 16) = v7[0];
  *(v4 + 32) = v5;
  *(v4 + 48) = v8;
  swift_beginAccess();
  sub_10002C768(a2, v4 + 56);
  swift_endAccess();
  return v4;
}

uint64_t sub_10002C994(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 72) = 0u;
  *(v4 + 81) = 0u;
  *(v4 + 56) = 0u;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  swift_beginAccess();
  sub_10002C768(a2, v4 + 56);
  swift_endAccess();
  return v4;
}

uint64_t sub_10002CA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_allocWithZone(CKRecordZone);
  v6 = sub_1000432E4();
  v7 = [v5 initWithZoneName:v6];

  v8 = *(*v4 + 120);
  v9 = v8(v19);
  v11 = *(v10 + 24);
  *(v10 + 24) = v7;

  v9(v19, 0);
  v12 = objc_allocWithZone(CKRecordZone);
  v13 = sub_1000432E4();
  v14 = [v12 initWithZoneName:v13];

  v15 = v8(v19);
  v17 = *(v16 + 32);
  *(v16 + 32) = v14;

  return v15(v19, 0);
}

void sub_10002CB74(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3;
  v9 = sub_100013A34(&qword_100066E80, &qword_1000483E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  sub_100034098(a1, a2, v5);
  if (!v4)
  {
    if (v12)
    {
      v13 = v12;
      sub_10003011C(a1, a2, v5, v12, v11);

      sub_100035F58(v11, a4, &qword_100066E80, &qword_1000483E0);
    }

    else
    {
      v14 = type metadata accessor for LaunchWarningDetails(0);
      (*(*(v14 - 8) + 56))(a4, 1, 1, v14);
    }
  }
}

void sub_10002CCC4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v132 = a3;
  v7 = sub_100013A34(&qword_100066ED0, &unk_1000484F0);
  v8 = __chkstk_darwin(v7 - 8);
  v131 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v134 = &v129 - v11;
  __chkstk_darwin(v10);
  v137 = &v129 - v12;
  v13 = sub_100013A34(&qword_100066ED8, &unk_100048D00);
  v14 = __chkstk_darwin(v13 - 8);
  v130 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v135 = &v129 - v17;
  __chkstk_darwin(v16);
  v143 = &v129 - v18;
  v19 = sub_1000431E4();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v146 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v148 = &v129 - v24;
  __chkstk_darwin(v23);
  v26 = &v129 - v25;
  v27 = swift_allocObject();
  v154 = v27;
  *(v27 + 16) = xmmword_100046ED0;
  v129 = v27 + 16;
  v28 = swift_allocObject();
  v155 = v28;
  *(v28 + 16) = 0;
  v136 = (v28 + 16);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v133 = (v29 + 16);
  v30 = swift_allocObject();
  v147 = v30;
  *(v30 + 16) = 0;
  v145 = (v30 + 16);
  v31 = [objc_allocWithZone(CKFetchRecordZoneChangesConfiguration) init];
  v32 = v31;
  v151 = v19;
  v152 = v4;
  v156 = v29;
  if (a2 >> 60 != 15)
  {
    v153 = v31;
    sub_100013104(a1, a2);
    v33 = sub_1000211D4();
    (*(v20 + 16))(v26, v33, v19);
    sub_100013104(a1, a2);
    v34 = sub_1000431C4();
    v35 = sub_100043494();
    sub_100013158(a1, a2);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      LODWORD(v150) = v35;
      v37 = v36;
      v149 = swift_slowAlloc();
      v159[0] = v149;
      *v37 = 136446210;
      v38 = sub_1000430A4(0);
      v40 = v20;
      v41 = sub_100015730(v38, v39, v159);
      v19 = v151;

      *(v37 + 4) = v41;
      v20 = v40;
      _os_log_impl(&_mh_execute_header, v34, v150, "Base asset sync with token: %{public}s", v37, 0xCu);
      sub_100013B7C(v149);
      v4 = v152;
    }

    (*(v20 + 8))(v26, v19);
    v42 = objc_allocWithZone(CKServerChangeToken);
    sub_100013104(a1, a2);
    isa = sub_100043094().super.isa;
    v44 = [v42 initWithData:isa];

    sub_100013158(a1, a2);
    v32 = v153;
    [(objc_class *)v153 setPreviousServerChangeToken:v44];

    sub_100013158(a1, a2);
    v29 = v156;
  }

  v45 = sub_100043544();
  v46 = *(*v4 + 104);
  v149 = (*v4 + 104);
  v150 = v46;
  (v46)(v160, v45);
  v47 = v32;
  v48 = v160[0];
  v49 = v160[2];

  v50 = v160[1];
  v171 = v160[3];
  sub_100029814(&v171, &qword_100066EE0, &qword_100048500);
  v170 = v160[4];
  sub_100029814(&v170, &qword_100066EE0, &qword_100048500);
  v51 = [v49 zoneID];

  v52 = &_swiftEmptyDictionarySingleton;
  v53 = v47;
  if (&_swiftEmptyDictionarySingleton >> 62)
  {
    v54 = sub_100043684();
    if (__OFADD__(v54, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v52 = sub_100035330(&_swiftEmptyDictionarySingleton, v54 + 1);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v159[0] = v52;
  sub_100035828(v53, v51, isUniquelyReferenced_nonNull_native);

  v153 = v159[0];
  v56 = sub_1000211D4();
  v57 = *(v20 + 16);
  v58 = v148;
  v139 = v56;
  v140 = v20 + 16;
  v138 = v57;
  v57(v148);

  v59 = v19;
  v60 = sub_1000431C4();
  v61 = sub_100043494();

  v62 = os_log_type_enabled(v60, v61);
  v141 = v20;
  v144 = v53;
  if (v62)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v159[0] = v64;
    *v63 = 136446210;
    v150(v161);
    v65 = v161[0];
    v66 = v161[2];

    v67 = v161[1];
    v169 = v161[3];
    sub_100029814(&v169, &qword_100066EE0, &qword_100048500);
    v168 = v161[4];
    sub_100029814(&v168, &qword_100066EE0, &qword_100048500);
    v68 = [v66 zoneID];

    v69 = [v68 zoneName];
    v70 = sub_100043314();
    v72 = v71;

    v73 = sub_100015730(v70, v72, v159);

    *(v63 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v60, v61, "Starting sync of zone: %{public}s", v63, 0xCu);
    sub_100013B7C(v64);
    v29 = v156;

    v74 = v150;
    v75 = v148;
    v148 = *(v20 + 8);
    (v148)(v75, v151);
  }

  else
  {

    v148 = *(v20 + 8);
    (v148)(v58, v59);
    v74 = v150;
  }

  sub_100036008(0, &qword_100066EE8, CKFetchRecordZoneChangesOperation_ptr);
  sub_100013A34(&unk_100066EF0, &qword_100048508);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1000484D0;
  v74(v162);
  v77 = v162[0];
  v78 = v162[2];

  v79 = v162[1];
  v167 = v162[3];
  sub_100029814(&v167, &qword_100066EE0, &qword_100048500);
  v166 = v162[4];
  sub_100029814(&v166, &qword_100066EE0, &qword_100048500);
  v80 = [v78 zoneID];

  *(v76 + 32) = v80;
  v81 = v153;

  v172.value._rawValue = v76;
  v172.is_nil = v81;
  v82 = sub_100043524(v172, v173).super.super.super.super.isa;
  v83 = swift_allocObject();
  v84 = v147;
  v85 = v155;
  v83[2] = v147;
  v83[3] = v85;
  v83[4] = v29;

  sub_100043534();
  v86 = swift_allocObject();
  *(v86 + 16) = v154;
  *(v86 + 24) = v84;

  sub_100043514();
  v87 = v82;
  v88 = [(objc_class *)v87 configuration];
  if (!v88)
  {
    goto LABEL_33;
  }

  v89 = v88;
  v90 = v74;
  [v88 setQualityOfService:25];

  v91 = [(objc_class *)v87 configuration];
  v92 = v146;
  if (!v91)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v93 = v91;
  [v91 setTimeoutIntervalForRequest:10.0];

  v94 = [(objc_class *)v87 configuration];
  if (!v94)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v95 = v87;
  v96 = v94;
  [v94 setTimeoutIntervalForResource:60.0];

  v97 = [(objc_class *)v95 configuration];
  if (!v97)
  {
LABEL_36:
    __break(1u);
    return;
  }

  [v97 setPreferAnonymousRequests:1];

  v90(v163);
  v98 = v163[1];

  v165 = v163[3];
  sub_100029814(&v165, &qword_100066EE0, &qword_100048500);
  v164 = v163[4];
  sub_100029814(&v164, &qword_100066EE0, &qword_100048500);
  [v98 addOperation:v95];

  v153 = v95;
  [(objc_class *)v95 waitUntilFinished];
  v99 = v145;
  swift_beginAccess();
  v100 = *v99;
  if (*v99)
  {
    v101 = v151;
    v138(v92, v139, v151);
    swift_errorRetain();
    swift_errorRetain();
    v102 = sub_1000431C4();
    v103 = sub_1000434A4();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v158[0] = v105;
      *v104 = 136446210;
      v157 = v100;
      swift_errorRetain();
      sub_100013A34(&qword_100066690, &qword_100048510);
      v106 = sub_100043364();
      v108 = sub_100015730(v106, v107, v158);

      *(v104 + 4) = v108;
      _os_log_impl(&_mh_execute_header, v102, v103, "Sync error: %{public}s", v104, 0xCu);
      sub_100013B7C(v105);

      v109 = v146;
      v110 = v151;
    }

    else
    {

      v109 = v92;
      v110 = v101;
    }

    (v148)(v109, v110);
    swift_willThrow();

    v116 = v153;
    goto LABEL_23;
  }

  v111 = type metadata accessor for BloomFilterRecord(0);
  (*(*(v111 - 8) + 56))(v143, 1, 1, v111);
  v112 = v136;
  swift_beginAccess();
  if (*v112)
  {
    v113 = *v112;
    v114 = v135;
    v115 = v142;
    sub_100030FBC(v113, v135);
    if (v115)
    {
      sub_100029814(v143, &qword_100066ED8, &unk_100048D00);

      v116 = v144;
LABEL_23:

      return;
    }

    v142 = 0;
    v117 = v143;
    sub_100029814(v143, &qword_100066ED8, &unk_100048D00);

    sub_100035F58(v114, v117, &qword_100066ED8, &unk_100048D00);
  }

  v118 = type metadata accessor for DocumentCheckerRecord(0);
  (*(*(v118 - 8) + 56))(v137, 1, 1, v118);
  v119 = v133;
  swift_beginAccess();
  v120 = v134;
  if (*v119)
  {
    v121 = *v119;
    v122 = v142;
    sub_100032B90(v121, v120);
    if (v122)
    {

      sub_100029814(v137, &qword_100066ED0, &unk_1000484F0);
      sub_100029814(v143, &qword_100066ED8, &unk_100048D00);

      return;
    }

    v142 = 0;
    v123 = v137;
    sub_100029814(v137, &qword_100066ED0, &unk_1000484F0);

    sub_100035F58(v120, v123, &qword_100066ED0, &unk_1000484F0);
  }

  else
  {
    v123 = v137;
  }

  v124 = v143;
  v125 = v130;
  sub_100029070(v143, v130, &qword_100066ED8, &unk_100048D00);
  v126 = v131;
  sub_100029070(v123, v131, &qword_100066ED0, &unk_1000484F0);
  swift_beginAccess();
  v127 = *(v154 + 16);
  v128 = *(v154 + 24);
  sub_1000130F0(v127, v128);
  sub_10003EF90(v125, v126, v127, v128, v132);

  sub_100029814(v123, &qword_100066ED0, &unk_1000484F0);
  sub_100029814(v124, &qword_100066ED8, &unk_100048D00);
}

void sub_10002DD24(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_1000431E4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v49 - v17;
  if ((a3 & 1) == 0)
  {
    v30 = sub_1000211D4();
    (*(v13 + 16))(v18, v30, v12);
    v31 = a2;
    v32 = sub_1000431C4();
    v33 = sub_1000434B4();
    sub_100035F4C(a2, 0);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v50 = a6;
      v36 = v35;
      *v34 = 138543362;
      *(v34 + 4) = v31;
      *v35 = a2;
      v37 = v31;
      _os_log_impl(&_mh_execute_header, v32, v33, "Base asset record changed: %{public}@", v34, 0xCu);
      sub_100029814(v36, &qword_100067060, &qword_100046E00);
      a6 = v50;
    }

    (*(v13 + 8))(v18, v12);
    if (sub_100043554() == 0xD00000000000001DLL && 0x800000010004CA60 == v38)
    {
    }

    else
    {
      v39 = sub_1000437F4();

      if ((v39 & 1) == 0)
      {
        if (sub_100043554() == 0xD000000000000013 && 0x800000010004CA80 == v44)
        {
        }

        else
        {
          v45 = sub_1000437F4();

          if ((v45 & 1) == 0)
          {
            return;
          }
        }

        swift_beginAccess();
        v46 = a6[2];
        v47 = v46;
        v48 = sub_10002C318(v31, v46);

        swift_beginAccess();
        v43 = a6[2];
        a6[2] = v48;
LABEL_12:

        return;
      }
    }

    swift_beginAccess();
    v40 = *(a5 + 16);
    v41 = v40;
    v42 = sub_10002C318(v31, v40);

    swift_beginAccess();
    v43 = *(a5 + 16);
    *(a5 + 16) = v42;
    goto LABEL_12;
  }

  swift_errorRetain();
  v19 = sub_1000211D4();
  (*(v13 + 16))(v16, v19, v12);
  sub_100035F40(a2, 1);
  v20 = a1;
  v21 = sub_1000431C4();
  v22 = sub_1000434B4();

  sub_100035F4C(a2, 1);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v49 = v24;
    v50 = swift_slowAlloc();
    v51 = a2;
    v52[0] = v50;
    *v23 = 138412546;
    *(v23 + 4) = v20;
    *v24 = v20;
    *(v23 + 12) = 2082;
    sub_100035F40(a2, 1);
    v25 = v20;
    sub_100013A34(&qword_100066690, &qword_100048510);
    v26 = sub_100043364();
    v28 = a4;
    v29 = sub_100015730(v26, v27, v52);

    *(v23 + 14) = v29;
    a4 = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Base asset record error: %@, %{public}s", v23, 0x16u);
    sub_100029814(v49, &qword_100067060, &qword_100046E00);

    sub_100013B7C(v50);
  }

  (*(v13 + 8))(v16, v12);
  swift_beginAccess();
  *(a4 + 16) = a2;
}

void sub_10002E260(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v90 = a3;
  v95 = a2;
  v94 = a1;
  v6 = sub_1000431E4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v97 = &v83 - v12;
  __chkstk_darwin(v11);
  v14 = &v83 - v13;
  v15 = swift_allocObject();
  v100 = v15;
  *(v15 + 16) = 0;
  v89 = v15 + 16;
  v16 = swift_allocObject();
  v98 = v16;
  *(v16 + 16) = xmmword_100046ED0;
  v88 = v16 + 16;
  v17 = swift_allocObject();
  v99 = v17;
  *(v17 + 16) = 0;
  v93 = (v17 + 16);
  v18 = *(*v4 + 104);
  v19 = *v4 + 104;
  v96 = v4;
  v92 = v18;
  v91 = v19;
  v18(v104);
  v20 = v104[0];
  v109 = v104[3];
  sub_100029070(&v109, v103, &qword_100066EE0, &qword_100048500);

  sub_100029814(&v109, &qword_100066EE0, &qword_100048500);
  v108 = v104[4];
  sub_100029814(&v108, &qword_100066EE0, &qword_100048500);
  v21 = v109;
  if (v109)
  {
    v22 = [objc_allocWithZone(CKFetchRecordZoneChangesConfiguration) init];
    v23 = v22;
    v24 = v6;
    if (a4 >> 60 != 15)
    {
      v86 = v22;
      v25 = v90;
      sub_100013104(v90, a4);
      v26 = sub_1000211D4();
      (*(v7 + 16))(v14, v26, v6);
      sub_100013104(v25, a4);
      v27 = sub_1000431C4();
      v28 = sub_100043494();
      sub_100013158(v25, a4);
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v85 = v28;
        v30 = v29;
        v84 = swift_slowAlloc();
        v103[0] = v84;
        *v30 = 136446210;
        v31 = sub_1000430A4(0);
        v33 = sub_100015730(v31, v32, v103);

        *(v30 + 4) = v33;
        v24 = v6;
        v25 = v90;
        _os_log_impl(&_mh_execute_header, v27, v85, "Update zone sync with token: %{public}s", v30, 0xCu);
        sub_100013B7C(v84);
      }

      (*(v7 + 8))(v14, v24);
      v34 = objc_allocWithZone(CKServerChangeToken);
      sub_100013104(v25, a4);
      isa = sub_100043094().super.isa;
      v36 = [v34 initWithData:isa];

      sub_100013158(v25, a4);
      v37 = v86;
      [v86 setPreviousServerChangeToken:v36];

      v38 = v25;
      v23 = v37;
      sub_100013158(v38, a4);
    }

    v87 = v7;
    sub_100043544();
    v39 = [v21 zoneID];
    v40 = &_swiftEmptyDictionarySingleton;
    v41 = v23;
    v42 = v99;
    v43 = v96;
    if (&_swiftEmptyDictionarySingleton >> 62)
    {
      v44 = sub_100043684();
      if (__OFADD__(v44, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      v40 = sub_100035330(&_swiftEmptyDictionarySingleton, v44 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v103[0] = v40;
    v90 = v41;
    sub_100035828(v41, v39, isUniquelyReferenced_nonNull_native);

    v46 = v103[0];
    sub_100036008(0, &qword_100066EE8, CKFetchRecordZoneChangesOperation_ptr);
    sub_100013A34(&unk_100066EF0, &qword_100048508);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1000484D0;
    *(v47 + 32) = [v21 zoneID];

    v110.value._rawValue = v47;
    v110.is_nil = v46;
    v48 = sub_100043524(v110, v111).super.super.super.super.isa;
    v49 = swift_allocObject();
    v50 = v100;
    v49[2] = v42;
    v49[3] = v50;
    v51 = v94;
    v49[4] = v43;
    v49[5] = v51;
    v49[6] = v95;

    sub_100043534();
    v52 = swift_allocObject();
    v53 = v98;
    *(v52 + 16) = v98;
    *(v52 + 24) = v42;

    sub_100043514();
    v54 = v48;
    v55 = [(objc_class *)v54 configuration];
    if (v55)
    {
      v56 = v55;
      [v55 setQualityOfService:25];

      v57 = [(objc_class *)v54 configuration];
      v58 = v97;
      if (v57)
      {
        v59 = v57;
        [v57 setTimeoutIntervalForRequest:10.0];

        v60 = [(objc_class *)v54 configuration];
        if (v60)
        {
          v61 = v60;
          [v60 setTimeoutIntervalForResource:60.0];

          v62 = [(objc_class *)v54 configuration];
          if (v62)
          {

            [v62 setPreferAnonymousRequests:1];

            v92(v105);
            v63 = v105[1];

            v107 = v105[3];
            sub_100029814(&v107, &qword_100066EE0, &qword_100048500);
            v106 = v105[4];
            sub_100029814(&v106, &qword_100066EE0, &qword_100048500);
            [v63 addOperation:v54];

            [(objc_class *)v54 waitUntilFinished];
            v64 = v93;
            swift_beginAccess();
            v65 = *v64;
            if (v65)
            {
              swift_errorRetain();
              v66 = sub_1000211D4();
              v67 = v87;
              (*(v87 + 16))(v58, v66, v24);
              swift_errorRetain();
              v68 = sub_1000431C4();
              v69 = sub_1000434A4();

              if (os_log_type_enabled(v68, v69))
              {
                v70 = swift_slowAlloc();
                v71 = swift_slowAlloc();
                v96 = v24;
                v72 = v71;
                v102[0] = v71;
                *v70 = 136446210;
                v101[0] = v65;
                swift_errorRetain();
                sub_100013A34(&qword_100066690, &qword_100048510);
                v73 = sub_100043364();
                v75 = sub_100015730(v73, v74, v102);

                *(v70 + 4) = v75;
                _os_log_impl(&_mh_execute_header, v68, v69, "Update sync error: %{public}s", v70, 0xCu);
                sub_100013B7C(v72);

                (*(v67 + 8))(v97, v96);
              }

              else
              {

                (*(v67 + 8))(v58, v24);
              }

              swift_willThrow();
              sub_100029814(&v109, &qword_100066EE0, &qword_100048500);
            }

            else
            {
              swift_beginAccess();
              v82 = *(v100 + 16);
              swift_beginAccess();
              sub_1000130F0(*(v53 + 16), *(v53 + 24));
              sub_10003F01C(v82);
              sub_100029814(&v109, &qword_100066EE0, &qword_100048500);
            }

            return;
          }

LABEL_26:
          __break(1u);
          return;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v76 = sub_1000211D4();
  v77 = v7;
  (*(v7 + 16))(v10, v76, v6);
  v78 = sub_1000431C4();
  v79 = sub_1000434B4();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&_mh_execute_header, v78, v79, "Update zone sync with no configured zone", v80, 2u);
  }

  (*(v77 + 8))(v10, v6);
  sub_100035A20();
  swift_allocError();
  *v81 = 3;
  swift_willThrow();
}

uint64_t sub_10002EE1C(void *a1, void *a2, char a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v50 = a6;
  v49 = a5;
  v14 = sub_1000431E4();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v46 - v19;
  if (a3)
  {
    swift_errorRetain();
    v21 = sub_1000211D4();
    (*(v15 + 16))(v18, v21, v14);
    sub_100035F40(a2, 1);
    v22 = a1;
    v23 = sub_1000431C4();
    v24 = sub_1000434B4();

    sub_100035F4C(a2, 1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v50 = a4;
      v26 = v25;
      v27 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v55[0] = v49;
      *v26 = 138412546;
      *(v26 + 4) = v22;
      *v27 = v22;
      *(v26 + 12) = 2082;
      *&v51[0] = a2;
      sub_100035F40(a2, 1);
      v28 = v22;
      sub_100013A34(&qword_100066690, &qword_100048510);
      v29 = sub_100043364();
      v31 = sub_100015730(v29, v30, v55);

      *(v26 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "Base asset record error: %@, %{public}s", v26, 0x16u);
      sub_100029814(v27, &qword_100067060, &qword_100046E00);

      sub_100013B7C(v49);

      a4 = v50;
    }

    (*(v15 + 8))(v18, v14);
    goto LABEL_5;
  }

  v48 = a8;
  v32 = sub_1000211D4();
  (*(v15 + 16))(v20, v32, v14);
  v33 = a2;
  v34 = sub_1000431C4();
  v35 = sub_1000434B4();
  sub_100035F4C(a2, 0);
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v47 = a7;
    v38 = a4;
    v39 = v37;
    *v36 = 138543362;
    *(v36 + 4) = v33;
    *v37 = a2;
    v40 = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "Update zone record changed: %{public}@", v36, 0xCu);
    sub_100029814(v39, &qword_100067060, &qword_100046E00);
    a4 = v38;
    a7 = v47;
  }

  (*(v15 + 8))(v20, v14);
  if (sub_100043554() == 0xD000000000000019 && 0x800000010004CA40 == v41)
  {
  }

  else
  {
    v42 = sub_1000437F4();

    if ((v42 & 1) == 0)
    {
      return result;
    }
  }

  v43 = v49;
  swift_beginAccess();
  *(v43 + 16) = 1;
  sub_10003342C(v33, v51);
  if (!v53)
  {
    sub_100035A20();
    a2 = swift_allocError();
    *v45 = 2;
LABEL_5:
    swift_beginAccess();
    *(a4 + 16) = a2;
  }

  v55[0] = v51[0];
  v55[1] = v51[1];
  v56 = v52;
  v57 = v53;
  v58 = v54;
  a7(v55);
  return sub_100029814(v51, &unk_1000670F0, &unk_100048630);
}

uint64_t sub_10002F35C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, char *a8)
{
  v59 = a8;
  v60 = a7;
  v14 = sub_1000431E4();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v55 - v19;
  if ((a4 & 0x100) != 0)
  {
    swift_errorRetain();
    v42 = sub_1000211D4();
    (*(v15 + 16))(v18, v42, v14);
    swift_errorRetain();
    v43 = sub_1000431C4();
    v44 = sub_1000434A4();
    sub_100035E84(a1, a2, a3, a4, 1);
    v45 = os_log_type_enabled(v43, v44);
    v58 = a2;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v57 = a3;
      v47 = v46;
      v48 = swift_slowAlloc();
      LODWORD(v60) = a4;
      v49 = v48;
      v61[0] = v48;
      *v47 = 136446210;
      v62 = a1;
      swift_errorRetain();
      sub_100013A34(&qword_100066690, &qword_100048510);
      v50 = sub_100043364();
      v56 = v14;
      v52 = sub_100015730(v50, v51, v61);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v43, v44, v59, v47, 0xCu);
      sub_100013B7C(v49);
      a4 = v60;

      a3 = v57;

      (*(v15 + 8))(v18, v56);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    v61[0] = a1;
    swift_errorRetain();
    sub_100013A34(&qword_100066690, &qword_100048510);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v53 = v62;
      v61[0] = v62;
      sub_100036134(&qword_1000670E0, type metadata accessor for CKError, &unk_1000487E0);
      sub_100042EF4();
      if (v62 == 21)
      {
        sub_100035EEC();
        v54 = swift_allocError();
        sub_100035E84(a1, v58, a3, a4, 1);

        swift_beginAccess();
        *(a6 + 16) = v54;
      }
    }

    swift_beginAccess();
    *(a6 + 16) = a1;
  }

  v21 = sub_1000211D4();
  (*(v15 + 16))(v20, v21, v14);
  v22 = a1;
  v23 = sub_1000431C4();
  v24 = sub_100043494();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    LODWORD(v58) = v24;
    v26 = v25;
    v57 = swift_slowAlloc();
    v61[0] = v57;
    *v26 = 136446210;
    v27 = [v22 data];
    v28 = sub_1000430B4();
    v59 = v22;
    v30 = v29;

    v31 = sub_1000430A4(0);
    v33 = v32;
    sub_10001316C(v28, v30);
    v34 = sub_100015730(v31, v33, v61);

    *(v26 + 4) = v34;
    v22 = v59;
    _os_log_impl(&_mh_execute_header, v23, v58, v60, v26, 0xCu);
    sub_100013B7C(v57);
  }

  (*(v15 + 8))(v20, v14);
  v35 = [v22 data];
  v36 = sub_1000430B4();
  v38 = v37;

  swift_beginAccess();
  v39 = *(a5 + 16);
  v40 = *(a5 + 24);
  *(a5 + 16) = v36;
  *(a5 + 24) = v38;
  return sub_100013158(v39, v40);
}

uint64_t sub_10002F8B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v60 = a3;
  v61 = sub_1000431E4();
  v62 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v59 - v14;
  result = (*(*v5 + 152))(v13);
  if ((result & 1) == 0)
  {
    if (a4 >> 60 == 15)
    {
      (*(*v5 + 128))(v66);
      if (v67)
      {
        sub_100029EB0(v66, v63);
        sub_100029814(v66, &unk_100066EC0, &unk_1000484E0);
        v17 = v64;
        v18 = v65;
        sub_100013B38(v63, v64);
        (*(*v5 + 104))(v69);
        (*(v18 + 40))(v69, a5, 0, v17, v18);

        v73 = v69[3];
        sub_100029814(&v73, &qword_100066EE0, &qword_100048500);
        v72[0] = v69[4];
        sub_100029814(v72, &qword_100066EE0, &qword_100048500);
        sub_100013B7C(v63);
      }

      else
      {
        sub_100029814(v66, &unk_100066EC0, &unk_1000484E0);
      }

      v25 = v61;
      v26 = sub_1000211D4();
      v27 = v62;
      (*(v62 + 16))(v12, v26, v25);
      v28 = a5;
      v29 = sub_1000431C4();
      v30 = sub_1000434A4();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v66[0] = swift_slowAlloc();
        *v31 = 136446466;
        v32 = sub_100043554();
        v34 = sub_100015730(v32, v33, v66);

        *(v31 + 4) = v34;
        *(v31 + 12) = 2082;
        v35 = [v28 recordID];
        v36 = [v35 recordName];

        v37 = sub_100043314();
        v39 = v38;

        v40 = sub_100015730(v37, v39, v66);

        *(v31 + 14) = v40;
        _os_log_impl(&_mh_execute_header, v29, v30, "Missing signature for %{public}s record %{public}s", v31, 0x16u);
        swift_arrayDestroy();

        (*(v62 + 8))(v12, v25);
      }

      else
      {

        (*(v27 + 8))(v12, v25);
      }

      sub_100035A20();
      swift_allocError();
      *v41 = 4;
      return swift_willThrow();
    }

    else
    {
      type metadata accessor for DataValidator();
      v19 = v60;
      sub_100013104(v60, a4);
      v20 = sub_100015538();
      v21 = (*(*v20 + 80))(v19, a4, a1, a2);

      LOBYTE(v66[0]) = v21 & 1;
      LOBYTE(v63[0]) = 0;
      sub_10001F224();
      if (sub_1000432D4())
      {
        v22 = v19;
      }

      else
      {
        (*(*v5 + 128))(v66);
        if (v67)
        {
          sub_100029EB0(v66, v63);
          sub_100029814(v66, &unk_100066EC0, &unk_1000484E0);
          v23 = v64;
          v24 = v65;
          sub_100013B38(v63, v64);
          (*(*v5 + 104))(v68);
          (*(v24 + 40))(v68, a5, 1, v23, v24);

          v71 = v68[3];
          sub_100029814(&v71, &qword_100066EE0, &qword_100048500);
          v70 = v68[4];
          sub_100029814(&v70, &qword_100066EE0, &qword_100048500);
          sub_100013B7C(v63);
        }

        else
        {
          sub_100029814(v66, &unk_100066EC0, &unk_1000484E0);
        }

        v42 = v61;
        v43 = sub_1000211D4();
        v44 = v62;
        (*(v62 + 16))(v15, v43, v42);
        v45 = a5;
        v46 = sub_1000431C4();
        v47 = sub_1000434A4();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v66[0] = v59;
          *v48 = 136446466;
          v49 = sub_100043554();
          v51 = sub_100015730(v49, v50, v66);

          *(v48 + 4) = v51;
          *(v48 + 12) = 2082;
          v52 = [v45 recordID];
          v53 = [v52 recordName];

          v54 = sub_100043314();
          v56 = v55;

          v57 = sub_100015730(v54, v56, v66);

          *(v48 + 14) = v57;
          _os_log_impl(&_mh_execute_header, v46, v47, "Invalid signature for %{public}s record %{public}s", v48, 0x16u);
          swift_arrayDestroy();

          (*(v44 + 8))(v15, v61);
        }

        else
        {

          (*(v44 + 8))(v15, v42);
        }

        sub_100035A20();
        swift_allocError();
        *v58 = 5;
        swift_willThrow();
        v22 = v60;
      }

      return sub_100013158(v22, a4);
    }
  }

  return result;
}

uint64_t sub_10003011C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v138 = a3;
  v139 = a1;
  v140 = a2;
  v143 = a5;
  v6 = sub_100013A34(&qword_100066838, &qword_1000473E0);
  v7 = __chkstk_darwin(v6 - 8);
  v137 = &v128[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v141 = &v128[-v9];
  v156 = sub_1000431E4();
  v10 = *(v156 - 8);
  v11 = __chkstk_darwin(v156);
  v13 = &v128[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v11);
  v142 = &v128[-v15];
  __chkstk_darwin(v14);
  v135 = &v128[-v16];
  v17 = sub_100013A34(&qword_100067120, &qword_100048650);
  __chkstk_darwin(v17 - 8);
  v19 = &v128[-v18];
  v20 = sub_100043174();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v128[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v26 = &v128[-v25];
  v27 = [a4 creationDate];
  v144 = v21;
  v145 = v26;
  v146 = v20;
  v136 = v24;
  if (v27)
  {
    v28 = v27;
    sub_100043154();

    v29 = v24;
    v30 = a4;
    v31 = *(v21 + 32);
    v31(v19, v29, v20);
    (*(v21 + 56))(v19, 0, 1, v20);
    v31(v26, v19, v20);
    a4 = v30;
  }

  else
  {
    (*(v21 + 56))(v19, 1, 1, v20);
    sub_100043164();
    if ((*(v21 + 48))(v19, 1, v20) != 1)
    {
      sub_100029814(v19, &qword_100067120, &qword_100048650);
    }
  }

  v32 = sub_100043564();
  if (!v32 || (v148 = v32, sub_100013A34(&qword_1000670C8, &qword_100048628), (swift_dynamicCast() & 1) == 0))
  {
    v51 = sub_1000211D4();
    (*(v10 + 16))(v13, v51, v156);
    v52 = a4;
    v53 = sub_1000431C4();
    v54 = sub_1000434A4();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = v10;
      v57 = swift_slowAlloc();
      v148 = v57;
      *v55 = 136315138;
      v154 = sub_100043564();
      sub_100013A34(&qword_100067128, &qword_100048658);
      v58 = sub_100043364();
      v60 = sub_100015730(v58, v59, &v148);

      *(v55 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v53, v54, "CloudKit record has invalid flags field: %s", v55, 0xCu);
      sub_100013B7C(v57);

      (*(v56 + 8))(v13, v156);
    }

    else
    {

      (*(v10 + 8))(v13, v156);
    }

    goto LABEL_19;
  }

  v33 = v154;
  nullsub_1();
  v35 = v34;
  v36 = sub_100043564();
  if (!v36 || (v148 = v36, (swift_dynamicCast() & 1) == 0))
  {
    v61 = sub_1000211D4();
    v42 = v142;
    (*(v10 + 16))(v142, v61, v156);
    v62 = a4;
    v43 = sub_1000431C4();
    v63 = sub_1000434A4();

    if (os_log_type_enabled(v43, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v148 = v65;
      *v64 = 136315138;
      v154 = sub_100043564();
      sub_100013A34(&qword_100067128, &qword_100048658);
      v66 = sub_100043364();
      v68 = sub_100015730(v66, v67, &v148);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v43, v63, "CloudKit record has invalid reason field: %s", v64, 0xCu);
      sub_100013B7C(v65);
    }

    goto LABEL_18;
  }

  v133 = v33;
  v134 = v154;
  v37 = sub_10001B3F4(v154);
  if (v37 == 2)
  {
    v148 = *sub_10001B510();
    v154 = v35;
    sub_10001B96C();
    v38 = sub_1000435D4();
    v40 = v139;
    v39 = v140;
    if (v38)
    {
      v41 = sub_1000211D4();
      v42 = v135;
      (*(v10 + 16))(v135, v41, v156);
      sub_100013104(v40, v39);
      v43 = sub_1000431C4();
      v44 = sub_1000434B4();
      sub_10001316C(v40, v39);
      if (os_log_type_enabled(v43, v44))
      {
        v45 = v39;
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v148 = v47;
        *v46 = 67109378;
        *(v46 + 4) = v138;
        *(v46 + 8) = 2082;
        v48 = sub_1000137B0(v40, v45);
        v50 = sub_100015730(v48, v49, &v148);

        *(v46 + 10) = v50;
        _os_log_impl(&_mh_execute_header, v43, v44, "Launch warning has unknown reason and flags indicate to ignore: %u, %{public}s", v46, 0x12u);
        sub_100013B7C(v47);

        (*(v10 + 8))(v42, v156);
LABEL_19:
        (*(v144 + 8))(v145, v146);
        v69 = 1;
        v70 = v143;
LABEL_20:
        v71 = type metadata accessor for LaunchWarningDetails(0);
        return (*(*(v71 - 8) + 56))(v70, v69, 1, v71);
      }

LABEL_18:

      (*(v10 + 8))(v42, v156);
      goto LABEL_19;
    }

    v129 = 1;
  }

  else
  {
    v129 = v37;
    v40 = v139;
    v39 = v140;
  }

  v73 = sub_100043004();
  (*(*(v73 - 8) + 56))(v141, 1, 1, v73);
  v74 = sub_100043564();
  if (v74 && (v154 = v74, (swift_dynamicCast() & 1) != 0))
  {
    v76 = v148;
    v75 = v149;

    v77 = v137;
    v131 = v76;
    sub_100042FD4();
    v135 = v75;

    v78 = v141;
    sub_100029814(v141, &qword_100066838, &qword_1000473E0);
    sub_100035F58(v77, v78, &qword_100066838, &qword_1000473E0);
  }

  else
  {
    v131 = 0;
    v135 = 0;
  }

  v79 = sub_100043564();
  v80 = 0xF000000000000000;
  v130 = v35;
  v132 = a4;
  if (v79)
  {
    v154 = v79;
    v81 = swift_dynamicCast();
    v82 = v148;
    if (!v81)
    {
      v82 = 0;
    }

    v156 = v82;
    if (v81)
    {
      v80 = v149;
    }
  }

  else
  {
    v156 = 0;
  }

  LODWORD(v148) = v138;
  sub_100035BFC();
  v83 = sub_1000170EC(&v148, &type metadata for UInt32);
  v85 = v84;
  v86 = sub_100017418(v40, v39);
  v88 = v87;
  v152 = v83;
  v153 = v85;
  v150 = &type metadata for Data;
  v151 = &protocol witness table for Data;
  v148 = v86;
  v149 = v87;
  v89 = sub_100013B38(&v148, &type metadata for Data);
  v90 = *v89;
  v91 = v89[1];
  sub_100013104(v83, v85);
  sub_100013104(v86, v88);
  v92 = v147;
  sub_100018620(v90, v91, &v152);
  sub_10001316C(v86, v88);
  sub_10001316C(v83, v85);
  result = sub_100013B7C(&v148);
  if ((v134 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v142 = v80;
  if (HIDWORD(v134))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v93 = v152;
  v94 = v153;
  LODWORD(v148) = v134;
  v95 = sub_1000170EC(&v148, &type metadata for UInt32);
  v97 = v96;
  v154 = v93;
  v155 = v94;
  v150 = &type metadata for Data;
  v151 = &protocol witness table for Data;
  v148 = v95;
  v149 = v96;
  v98 = sub_100013B38(&v148, &type metadata for Data);
  v100 = *v98;
  v99 = v98[1];
  sub_100013104(v93, v94);
  sub_100013104(v95, v97);
  sub_100018620(v100, v99, &v154);
  sub_10001316C(v95, v97);
  sub_10001316C(v93, v94);
  result = sub_100013B7C(&v148);
  if ((v133 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (HIDWORD(v133))
  {
LABEL_44:
    __break(1u);
    return result;
  }

  v101 = v154;
  v102 = v155;
  LODWORD(v148) = v133;
  v103 = sub_1000170EC(&v148, &type metadata for UInt32);
  v105 = v104;
  v152 = v101;
  v153 = v102;
  v150 = &type metadata for Data;
  v151 = &protocol witness table for Data;
  v148 = v103;
  v149 = v104;
  v106 = sub_100013B38(&v148, &type metadata for Data);
  v107 = *v106;
  v108 = v106[1];
  sub_100013104(v101, v102);
  sub_100013104(v103, v105);
  sub_100018620(v107, v108, &v152);
  sub_10001316C(v103, v105);
  sub_10001316C(v101, v102);
  sub_100013B7C(&v148);
  v109 = v152;
  v110 = v153;
  v111 = sub_10001721C(v131, v135);
  v113 = v112;

  v154 = v109;
  v155 = v110;
  v150 = &type metadata for Data;
  v151 = &protocol witness table for Data;
  v148 = v111;
  v149 = v113;
  v114 = sub_100013B38(&v148, &type metadata for Data);
  v115 = *v114;
  v116 = v114[1];
  sub_100013104(v109, v110);
  sub_100013104(v111, v113);
  sub_100018620(v115, v116, &v154);
  sub_10001316C(v111, v113);
  sub_10001316C(v109, v110);
  sub_100013B7C(&v148);
  v117 = v154;
  v118 = v155;
  v119 = v156;
  v120 = v142;
  sub_10002F8B4(v154, v155, v156, v142, v132);
  if (!v92)
  {
    v121 = v144;
    v122 = *(v144 + 16);
    v123 = v136;
    v156 = v119;
    v124 = v140;
    v122(v136, v145, v146);
    v147 = 0;
    v125 = v141;
    v126 = v137;
    sub_100029070(v141, v137, &qword_100066838, &qword_1000473E0);
    v127 = v139;
    sub_100013104(v139, v124);
    v70 = v143;
    sub_10001B77C(v138, v127, v124, v123, v129 & 1, v130, v126, v143);
    sub_100013158(v156, v142);
    sub_10001316C(v117, v118);
    sub_100029814(v125, &qword_100066838, &qword_1000473E0);
    (*(v121 + 8))(v145, v146);
    v69 = 0;
    goto LABEL_20;
  }

  sub_100013158(v119, v120);
  sub_10001316C(v117, v118);
  sub_100029814(v141, &qword_100066838, &qword_1000473E0);
  return (*(v144 + 8))(v145, v146);
}